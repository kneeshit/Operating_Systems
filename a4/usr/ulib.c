#include "types.h"
#include "stat.h"
#include "fcntl.h"
#include "user.h"

char*
strcpy(char *s, char *t)
{
    char *os;
    
    os = s;
    while((*s++ = *t++) != 0)
        ;
    return os;
}

int
strcmp(const char *p, const char *q)
{
    while(*p && *p == *q)
        p++, q++;
    return (uchar)*p - (uchar)*q;
}

uint
strlen(char *s)
{
    int n;
    
    for(n = 0; s[n]; n++)
        ;
    return n;
}

void*
memset(void *dst, int v, uint n)
{
	uint8	*p;
	uint8	c;
	uint32	val;
	uint32	*p4;

	p   = dst;
	c   = v & 0xff;
	val = (c << 24) | (c << 16) | (c << 8) | c;

	// set bytes before whole uint32
	for (; (n > 0) && ((uint)p % 4); n--, p++){
		*p = c;
	}

	// set memory 4 bytes a time
	p4 = (uint*)p;

	for (; n >= 4; n -= 4, p4++) {
		*p4 = val;
	}

	// set leftover one byte a time
	p = (uint8*)p4;

	for (; n > 0; n--, p++) {
		*p = c;
	}

	return dst;
}

char*
strchr(const char *s, char c)
{
    for(; *s; s++)
        if(*s == c)
            return (char*)s;
    return 0;
}

char*
gets(char *buf, int max)
{
    int i, cc;
    char c;
    
    for(i=0; i+1 < max; ){
        cc = read(0, &c, 1);
        if(cc < 1)
            break;
        buf[i++] = c;
        if(c == '\n' || c == '\r')
            break;
    }
    buf[i] = '\0';
    return buf;
}

int
stat(char *n, struct stat *st)
{
    int fd;
    int r;
    
    fd = open(n, O_RDONLY);
    if(fd < 0)
        return -1;
    r = fstat(fd, st);
    close(fd);
    return r;
}

int
atoi(const char *s)
{
    int n;
    
    n = 0;
    while('0' <= *s && *s <= '9')
        n = n*10 + *s++ - '0';
    if(*s == '\0')
        return n;
    return -1;
}

void*
memmove(void *vdst, void *vsrc, int n)
{
    char *dst, *src;
    
    dst = vdst;
    src = vsrc;
    while(n-- > 0)
        *dst++ = *src++;
    return vdst;
}

// Synchronization primitives
void initiateLock(struct lock* l) {
    l->lockvar = 0;
    l->isInitiated = 1;
}

// Atomic exchange function for ARM
static int
xchg(volatile int *addr, int newval)
{
    // Use GCC built-in atomic operation
    return __sync_lock_test_and_set(addr, newval);
}

void acquireLock(struct lock* l) {
    if (!l->isInitiated) {
        return; // Lock not initialized
    }
    
    // Spin until we can acquire the lock
    while (xchg(&l->lockvar, 1) != 0) {
        // Busy wait - spin
    }
}

void releaseLock(struct lock* l) {
    if (!l->isInitiated) {
        return; // Lock not initialized
    }
    
    if (l->lockvar != 1) {
        return; // Lock not acquired
    }
    
    // Release the lock
    l->lockvar = 0;
}

void initiateCondVar(struct condvar* cv) {
    cv->var = getChannel();  // Get a unique channel
    cv->isInitiated = 1;
}

void condWait(struct condvar* cv, struct lock* l) {
    if (!cv->isInitiated || !l->isInitiated) {
        return;  // Not initialized
    }
    
    // Release the lock, sleep on the channel, then reacquire the lock
    releaseLock(l);
    sleepChan(cv->var);
    acquireLock(l);
}

void broadcast(struct condvar* cv) {
    if (!cv->isInitiated) {
        return;  // Not initialized
    }
    
    sigChan(cv->var);  // Wake up all threads waiting on this condition variable
}

// Signal (wake up one thread) - this function was missing
void signal(struct condvar* cv) {
    if (!cv->isInitiated) {
        return;  // Not initialized
    }
    
    sigOneChan(cv->var);  // Wake up one thread waiting on this condition variable
}

void semInit(struct semaphore* s, int initVal) {
    s->ctr = initVal;
    initiateLock(&s->l);
    initiateCondVar(&s->cv);
    s->isInitiated = 1;
}

void semUp(struct semaphore* s) {
    acquireLock(&s->l);
    s->ctr++;
    signal(&s->cv);  // Wake up exactly one process
    releaseLock(&s->l);
}

void semDown(struct semaphore* s) {
    acquireLock(&s->l);
    while (s->ctr <= 0) {
        condWait(&s->cv, &s->l);  // This releases and reacquires the lock
    }
    s->ctr--;
    releaseLock(&s->l);
}
