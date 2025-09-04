
_uptime:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	eb00020b 	bl	840 <uptime>
      10:	e50b0008 	str	r0, [fp, #-8]
      14:	e51b3008 	ldr	r3, [fp, #-8]
      18:	e59f2058 	ldr	r2, [pc, #88]	@ 78 <main+0x78>
      1c:	e0c21392 	smull	r1, r2, r2, r3
      20:	e1a02142 	asr	r2, r2, #2
      24:	e1a03fc3 	asr	r3, r3, #31
      28:	e0423003 	sub	r3, r2, r3
      2c:	e50b300c 	str	r3, [fp, #-12]
      30:	e51b2008 	ldr	r2, [fp, #-8]
      34:	e59f303c 	ldr	r3, [pc, #60]	@ 78 <main+0x78>
      38:	e0c31293 	smull	r1, r3, r3, r2
      3c:	e1a01143 	asr	r1, r3, #2
      40:	e1a03fc2 	asr	r3, r2, #31
      44:	e0411003 	sub	r1, r1, r3
      48:	e1a03001 	mov	r3, r1
      4c:	e1a03103 	lsl	r3, r3, #2
      50:	e0833001 	add	r3, r3, r1
      54:	e1a03083 	lsl	r3, r3, #1
      58:	e0423003 	sub	r3, r2, r3
      5c:	e50b3010 	str	r3, [fp, #-16]
      60:	e51b3010 	ldr	r3, [fp, #-16]
      64:	e51b200c 	ldr	r2, [fp, #-12]
      68:	e59f100c 	ldr	r1, [pc, #12]	@ 7c <main+0x7c>
      6c:	e3a00001 	mov	r0, #1
      70:	eb00027b 	bl	a64 <printf>
      74:	eb000146 	bl	594 <exit>
      78:	66666667 	.word	0x66666667
      7c:	00001120 	.word	0x00001120

00000080 <strcpy>:
      80:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      84:	e28db000 	add	fp, sp, #0
      88:	e24dd014 	sub	sp, sp, #20
      8c:	e50b0010 	str	r0, [fp, #-16]
      90:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      94:	e51b3010 	ldr	r3, [fp, #-16]
      98:	e50b3008 	str	r3, [fp, #-8]
      9c:	e1a00000 	nop			@ (mov r0, r0)
      a0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      a4:	e2823001 	add	r3, r2, #1
      a8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      ac:	e51b3010 	ldr	r3, [fp, #-16]
      b0:	e2831001 	add	r1, r3, #1
      b4:	e50b1010 	str	r1, [fp, #-16]
      b8:	e5d22000 	ldrb	r2, [r2]
      bc:	e5c32000 	strb	r2, [r3]
      c0:	e5d33000 	ldrb	r3, [r3]
      c4:	e3530000 	cmp	r3, #0
      c8:	1afffff4 	bne	a0 <strcpy+0x20>
      cc:	e51b3008 	ldr	r3, [fp, #-8]
      d0:	e1a00003 	mov	r0, r3
      d4:	e28bd000 	add	sp, fp, #0
      d8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      dc:	e12fff1e 	bx	lr

000000e0 <strcmp>:
      e0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      e4:	e28db000 	add	fp, sp, #0
      e8:	e24dd00c 	sub	sp, sp, #12
      ec:	e50b0008 	str	r0, [fp, #-8]
      f0:	e50b100c 	str	r1, [fp, #-12]
      f4:	ea000005 	b	110 <strcmp+0x30>
      f8:	e51b3008 	ldr	r3, [fp, #-8]
      fc:	e2833001 	add	r3, r3, #1
     100:	e50b3008 	str	r3, [fp, #-8]
     104:	e51b300c 	ldr	r3, [fp, #-12]
     108:	e2833001 	add	r3, r3, #1
     10c:	e50b300c 	str	r3, [fp, #-12]
     110:	e51b3008 	ldr	r3, [fp, #-8]
     114:	e5d33000 	ldrb	r3, [r3]
     118:	e3530000 	cmp	r3, #0
     11c:	0a000005 	beq	138 <strcmp+0x58>
     120:	e51b3008 	ldr	r3, [fp, #-8]
     124:	e5d32000 	ldrb	r2, [r3]
     128:	e51b300c 	ldr	r3, [fp, #-12]
     12c:	e5d33000 	ldrb	r3, [r3]
     130:	e1520003 	cmp	r2, r3
     134:	0affffef 	beq	f8 <strcmp+0x18>
     138:	e51b3008 	ldr	r3, [fp, #-8]
     13c:	e5d33000 	ldrb	r3, [r3]
     140:	e1a02003 	mov	r2, r3
     144:	e51b300c 	ldr	r3, [fp, #-12]
     148:	e5d33000 	ldrb	r3, [r3]
     14c:	e0423003 	sub	r3, r2, r3
     150:	e1a00003 	mov	r0, r3
     154:	e28bd000 	add	sp, fp, #0
     158:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     15c:	e12fff1e 	bx	lr

00000160 <strlen>:
     160:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     164:	e28db000 	add	fp, sp, #0
     168:	e24dd014 	sub	sp, sp, #20
     16c:	e50b0010 	str	r0, [fp, #-16]
     170:	e3a03000 	mov	r3, #0
     174:	e50b3008 	str	r3, [fp, #-8]
     178:	ea000002 	b	188 <strlen+0x28>
     17c:	e51b3008 	ldr	r3, [fp, #-8]
     180:	e2833001 	add	r3, r3, #1
     184:	e50b3008 	str	r3, [fp, #-8]
     188:	e51b3008 	ldr	r3, [fp, #-8]
     18c:	e51b2010 	ldr	r2, [fp, #-16]
     190:	e0823003 	add	r3, r2, r3
     194:	e5d33000 	ldrb	r3, [r3]
     198:	e3530000 	cmp	r3, #0
     19c:	1afffff6 	bne	17c <strlen+0x1c>
     1a0:	e51b3008 	ldr	r3, [fp, #-8]
     1a4:	e1a00003 	mov	r0, r3
     1a8:	e28bd000 	add	sp, fp, #0
     1ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1b0:	e12fff1e 	bx	lr

000001b4 <memset>:
     1b4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1b8:	e28db000 	add	fp, sp, #0
     1bc:	e24dd024 	sub	sp, sp, #36	@ 0x24
     1c0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     1c4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     1c8:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     1cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     1d0:	e50b3008 	str	r3, [fp, #-8]
     1d4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1d8:	e54b300d 	strb	r3, [fp, #-13]
     1dc:	e55b200d 	ldrb	r2, [fp, #-13]
     1e0:	e1a03002 	mov	r3, r2
     1e4:	e1a03403 	lsl	r3, r3, #8
     1e8:	e0833002 	add	r3, r3, r2
     1ec:	e1a03803 	lsl	r3, r3, #16
     1f0:	e1a02003 	mov	r2, r3
     1f4:	e55b300d 	ldrb	r3, [fp, #-13]
     1f8:	e1a03403 	lsl	r3, r3, #8
     1fc:	e1822003 	orr	r2, r2, r3
     200:	e55b300d 	ldrb	r3, [fp, #-13]
     204:	e1823003 	orr	r3, r2, r3
     208:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     20c:	ea000008 	b	234 <memset+0x80>
     210:	e51b3008 	ldr	r3, [fp, #-8]
     214:	e55b200d 	ldrb	r2, [fp, #-13]
     218:	e5c32000 	strb	r2, [r3]
     21c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     220:	e2433001 	sub	r3, r3, #1
     224:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     228:	e51b3008 	ldr	r3, [fp, #-8]
     22c:	e2833001 	add	r3, r3, #1
     230:	e50b3008 	str	r3, [fp, #-8]
     234:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     238:	e3530000 	cmp	r3, #0
     23c:	0a000003 	beq	250 <memset+0x9c>
     240:	e51b3008 	ldr	r3, [fp, #-8]
     244:	e2033003 	and	r3, r3, #3
     248:	e3530000 	cmp	r3, #0
     24c:	1affffef 	bne	210 <memset+0x5c>
     250:	e51b3008 	ldr	r3, [fp, #-8]
     254:	e50b300c 	str	r3, [fp, #-12]
     258:	ea000008 	b	280 <memset+0xcc>
     25c:	e51b300c 	ldr	r3, [fp, #-12]
     260:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     264:	e5832000 	str	r2, [r3]
     268:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     26c:	e2433004 	sub	r3, r3, #4
     270:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     274:	e51b300c 	ldr	r3, [fp, #-12]
     278:	e2833004 	add	r3, r3, #4
     27c:	e50b300c 	str	r3, [fp, #-12]
     280:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     284:	e3530003 	cmp	r3, #3
     288:	8afffff3 	bhi	25c <memset+0xa8>
     28c:	e51b300c 	ldr	r3, [fp, #-12]
     290:	e50b3008 	str	r3, [fp, #-8]
     294:	ea000008 	b	2bc <memset+0x108>
     298:	e51b3008 	ldr	r3, [fp, #-8]
     29c:	e55b200d 	ldrb	r2, [fp, #-13]
     2a0:	e5c32000 	strb	r2, [r3]
     2a4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2a8:	e2433001 	sub	r3, r3, #1
     2ac:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2b0:	e51b3008 	ldr	r3, [fp, #-8]
     2b4:	e2833001 	add	r3, r3, #1
     2b8:	e50b3008 	str	r3, [fp, #-8]
     2bc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2c0:	e3530000 	cmp	r3, #0
     2c4:	1afffff3 	bne	298 <memset+0xe4>
     2c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2cc:	e1a00003 	mov	r0, r3
     2d0:	e28bd000 	add	sp, fp, #0
     2d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2d8:	e12fff1e 	bx	lr

000002dc <strchr>:
     2dc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2e0:	e28db000 	add	fp, sp, #0
     2e4:	e24dd00c 	sub	sp, sp, #12
     2e8:	e50b0008 	str	r0, [fp, #-8]
     2ec:	e1a03001 	mov	r3, r1
     2f0:	e54b3009 	strb	r3, [fp, #-9]
     2f4:	ea000009 	b	320 <strchr+0x44>
     2f8:	e51b3008 	ldr	r3, [fp, #-8]
     2fc:	e5d33000 	ldrb	r3, [r3]
     300:	e55b2009 	ldrb	r2, [fp, #-9]
     304:	e1520003 	cmp	r2, r3
     308:	1a000001 	bne	314 <strchr+0x38>
     30c:	e51b3008 	ldr	r3, [fp, #-8]
     310:	ea000007 	b	334 <strchr+0x58>
     314:	e51b3008 	ldr	r3, [fp, #-8]
     318:	e2833001 	add	r3, r3, #1
     31c:	e50b3008 	str	r3, [fp, #-8]
     320:	e51b3008 	ldr	r3, [fp, #-8]
     324:	e5d33000 	ldrb	r3, [r3]
     328:	e3530000 	cmp	r3, #0
     32c:	1afffff1 	bne	2f8 <strchr+0x1c>
     330:	e3a03000 	mov	r3, #0
     334:	e1a00003 	mov	r0, r3
     338:	e28bd000 	add	sp, fp, #0
     33c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     340:	e12fff1e 	bx	lr

00000344 <gets>:
     344:	e92d4800 	push	{fp, lr}
     348:	e28db004 	add	fp, sp, #4
     34c:	e24dd018 	sub	sp, sp, #24
     350:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     354:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     358:	e3a03000 	mov	r3, #0
     35c:	e50b3008 	str	r3, [fp, #-8]
     360:	ea000016 	b	3c0 <gets+0x7c>
     364:	e24b300d 	sub	r3, fp, #13
     368:	e3a02001 	mov	r2, #1
     36c:	e1a01003 	mov	r1, r3
     370:	e3a00000 	mov	r0, #0
     374:	eb0000a1 	bl	600 <read>
     378:	e50b000c 	str	r0, [fp, #-12]
     37c:	e51b300c 	ldr	r3, [fp, #-12]
     380:	e3530000 	cmp	r3, #0
     384:	da000013 	ble	3d8 <gets+0x94>
     388:	e51b3008 	ldr	r3, [fp, #-8]
     38c:	e2832001 	add	r2, r3, #1
     390:	e50b2008 	str	r2, [fp, #-8]
     394:	e1a02003 	mov	r2, r3
     398:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     39c:	e0833002 	add	r3, r3, r2
     3a0:	e55b200d 	ldrb	r2, [fp, #-13]
     3a4:	e5c32000 	strb	r2, [r3]
     3a8:	e55b300d 	ldrb	r3, [fp, #-13]
     3ac:	e353000a 	cmp	r3, #10
     3b0:	0a000009 	beq	3dc <gets+0x98>
     3b4:	e55b300d 	ldrb	r3, [fp, #-13]
     3b8:	e353000d 	cmp	r3, #13
     3bc:	0a000006 	beq	3dc <gets+0x98>
     3c0:	e51b3008 	ldr	r3, [fp, #-8]
     3c4:	e2833001 	add	r3, r3, #1
     3c8:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     3cc:	e1520003 	cmp	r2, r3
     3d0:	caffffe3 	bgt	364 <gets+0x20>
     3d4:	ea000000 	b	3dc <gets+0x98>
     3d8:	e1a00000 	nop			@ (mov r0, r0)
     3dc:	e51b3008 	ldr	r3, [fp, #-8]
     3e0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     3e4:	e0823003 	add	r3, r2, r3
     3e8:	e3a02000 	mov	r2, #0
     3ec:	e5c32000 	strb	r2, [r3]
     3f0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3f4:	e1a00003 	mov	r0, r3
     3f8:	e24bd004 	sub	sp, fp, #4
     3fc:	e8bd8800 	pop	{fp, pc}

00000400 <stat>:
     400:	e92d4800 	push	{fp, lr}
     404:	e28db004 	add	fp, sp, #4
     408:	e24dd010 	sub	sp, sp, #16
     40c:	e50b0010 	str	r0, [fp, #-16]
     410:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     414:	e3a01000 	mov	r1, #0
     418:	e51b0010 	ldr	r0, [fp, #-16]
     41c:	eb0000a4 	bl	6b4 <open>
     420:	e50b0008 	str	r0, [fp, #-8]
     424:	e51b3008 	ldr	r3, [fp, #-8]
     428:	e3530000 	cmp	r3, #0
     42c:	aa000001 	bge	438 <stat+0x38>
     430:	e3e03000 	mvn	r3, #0
     434:	ea000006 	b	454 <stat+0x54>
     438:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     43c:	e51b0008 	ldr	r0, [fp, #-8]
     440:	eb0000b6 	bl	720 <fstat>
     444:	e50b000c 	str	r0, [fp, #-12]
     448:	e51b0008 	ldr	r0, [fp, #-8]
     44c:	eb00007d 	bl	648 <close>
     450:	e51b300c 	ldr	r3, [fp, #-12]
     454:	e1a00003 	mov	r0, r3
     458:	e24bd004 	sub	sp, fp, #4
     45c:	e8bd8800 	pop	{fp, pc}

00000460 <atoi>:
     460:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     464:	e28db000 	add	fp, sp, #0
     468:	e24dd014 	sub	sp, sp, #20
     46c:	e50b0010 	str	r0, [fp, #-16]
     470:	e3a03000 	mov	r3, #0
     474:	e50b3008 	str	r3, [fp, #-8]
     478:	ea00000c 	b	4b0 <atoi+0x50>
     47c:	e51b2008 	ldr	r2, [fp, #-8]
     480:	e1a03002 	mov	r3, r2
     484:	e1a03103 	lsl	r3, r3, #2
     488:	e0833002 	add	r3, r3, r2
     48c:	e1a03083 	lsl	r3, r3, #1
     490:	e1a01003 	mov	r1, r3
     494:	e51b3010 	ldr	r3, [fp, #-16]
     498:	e2832001 	add	r2, r3, #1
     49c:	e50b2010 	str	r2, [fp, #-16]
     4a0:	e5d33000 	ldrb	r3, [r3]
     4a4:	e0813003 	add	r3, r1, r3
     4a8:	e2433030 	sub	r3, r3, #48	@ 0x30
     4ac:	e50b3008 	str	r3, [fp, #-8]
     4b0:	e51b3010 	ldr	r3, [fp, #-16]
     4b4:	e5d33000 	ldrb	r3, [r3]
     4b8:	e353002f 	cmp	r3, #47	@ 0x2f
     4bc:	9a000003 	bls	4d0 <atoi+0x70>
     4c0:	e51b3010 	ldr	r3, [fp, #-16]
     4c4:	e5d33000 	ldrb	r3, [r3]
     4c8:	e3530039 	cmp	r3, #57	@ 0x39
     4cc:	9affffea 	bls	47c <atoi+0x1c>
     4d0:	e51b3010 	ldr	r3, [fp, #-16]
     4d4:	e5d33000 	ldrb	r3, [r3]
     4d8:	e3530000 	cmp	r3, #0
     4dc:	1a000001 	bne	4e8 <atoi+0x88>
     4e0:	e51b3008 	ldr	r3, [fp, #-8]
     4e4:	ea000000 	b	4ec <atoi+0x8c>
     4e8:	e3e03000 	mvn	r3, #0
     4ec:	e1a00003 	mov	r0, r3
     4f0:	e28bd000 	add	sp, fp, #0
     4f4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4f8:	e12fff1e 	bx	lr

000004fc <memmove>:
     4fc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     500:	e28db000 	add	fp, sp, #0
     504:	e24dd01c 	sub	sp, sp, #28
     508:	e50b0010 	str	r0, [fp, #-16]
     50c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     510:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     514:	e51b3010 	ldr	r3, [fp, #-16]
     518:	e50b3008 	str	r3, [fp, #-8]
     51c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     520:	e50b300c 	str	r3, [fp, #-12]
     524:	ea000007 	b	548 <memmove+0x4c>
     528:	e51b200c 	ldr	r2, [fp, #-12]
     52c:	e2823001 	add	r3, r2, #1
     530:	e50b300c 	str	r3, [fp, #-12]
     534:	e51b3008 	ldr	r3, [fp, #-8]
     538:	e2831001 	add	r1, r3, #1
     53c:	e50b1008 	str	r1, [fp, #-8]
     540:	e5d22000 	ldrb	r2, [r2]
     544:	e5c32000 	strb	r2, [r3]
     548:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     54c:	e2432001 	sub	r2, r3, #1
     550:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     554:	e3530000 	cmp	r3, #0
     558:	cafffff2 	bgt	528 <memmove+0x2c>
     55c:	e51b3010 	ldr	r3, [fp, #-16]
     560:	e1a00003 	mov	r0, r3
     564:	e28bd000 	add	sp, fp, #0
     568:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     56c:	e12fff1e 	bx	lr

00000570 <fork>:
     570:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     574:	e1a04003 	mov	r4, r3
     578:	e1a03002 	mov	r3, r2
     57c:	e1a02001 	mov	r2, r1
     580:	e1a01000 	mov	r1, r0
     584:	e3a00001 	mov	r0, #1
     588:	ef000000 	svc	0x00000000
     58c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     590:	e12fff1e 	bx	lr

00000594 <exit>:
     594:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     598:	e1a04003 	mov	r4, r3
     59c:	e1a03002 	mov	r3, r2
     5a0:	e1a02001 	mov	r2, r1
     5a4:	e1a01000 	mov	r1, r0
     5a8:	e3a00002 	mov	r0, #2
     5ac:	ef000000 	svc	0x00000000
     5b0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5b4:	e12fff1e 	bx	lr

000005b8 <wait>:
     5b8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5bc:	e1a04003 	mov	r4, r3
     5c0:	e1a03002 	mov	r3, r2
     5c4:	e1a02001 	mov	r2, r1
     5c8:	e1a01000 	mov	r1, r0
     5cc:	e3a00003 	mov	r0, #3
     5d0:	ef000000 	svc	0x00000000
     5d4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5d8:	e12fff1e 	bx	lr

000005dc <pipe>:
     5dc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5e0:	e1a04003 	mov	r4, r3
     5e4:	e1a03002 	mov	r3, r2
     5e8:	e1a02001 	mov	r2, r1
     5ec:	e1a01000 	mov	r1, r0
     5f0:	e3a00004 	mov	r0, #4
     5f4:	ef000000 	svc	0x00000000
     5f8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5fc:	e12fff1e 	bx	lr

00000600 <read>:
     600:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     604:	e1a04003 	mov	r4, r3
     608:	e1a03002 	mov	r3, r2
     60c:	e1a02001 	mov	r2, r1
     610:	e1a01000 	mov	r1, r0
     614:	e3a00005 	mov	r0, #5
     618:	ef000000 	svc	0x00000000
     61c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     620:	e12fff1e 	bx	lr

00000624 <write>:
     624:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     628:	e1a04003 	mov	r4, r3
     62c:	e1a03002 	mov	r3, r2
     630:	e1a02001 	mov	r2, r1
     634:	e1a01000 	mov	r1, r0
     638:	e3a00010 	mov	r0, #16
     63c:	ef000000 	svc	0x00000000
     640:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     644:	e12fff1e 	bx	lr

00000648 <close>:
     648:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     64c:	e1a04003 	mov	r4, r3
     650:	e1a03002 	mov	r3, r2
     654:	e1a02001 	mov	r2, r1
     658:	e1a01000 	mov	r1, r0
     65c:	e3a00015 	mov	r0, #21
     660:	ef000000 	svc	0x00000000
     664:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     668:	e12fff1e 	bx	lr

0000066c <kill>:
     66c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     670:	e1a04003 	mov	r4, r3
     674:	e1a03002 	mov	r3, r2
     678:	e1a02001 	mov	r2, r1
     67c:	e1a01000 	mov	r1, r0
     680:	e3a00006 	mov	r0, #6
     684:	ef000000 	svc	0x00000000
     688:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     68c:	e12fff1e 	bx	lr

00000690 <exec>:
     690:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     694:	e1a04003 	mov	r4, r3
     698:	e1a03002 	mov	r3, r2
     69c:	e1a02001 	mov	r2, r1
     6a0:	e1a01000 	mov	r1, r0
     6a4:	e3a00007 	mov	r0, #7
     6a8:	ef000000 	svc	0x00000000
     6ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6b0:	e12fff1e 	bx	lr

000006b4 <open>:
     6b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6b8:	e1a04003 	mov	r4, r3
     6bc:	e1a03002 	mov	r3, r2
     6c0:	e1a02001 	mov	r2, r1
     6c4:	e1a01000 	mov	r1, r0
     6c8:	e3a0000f 	mov	r0, #15
     6cc:	ef000000 	svc	0x00000000
     6d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6d4:	e12fff1e 	bx	lr

000006d8 <mknod>:
     6d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6dc:	e1a04003 	mov	r4, r3
     6e0:	e1a03002 	mov	r3, r2
     6e4:	e1a02001 	mov	r2, r1
     6e8:	e1a01000 	mov	r1, r0
     6ec:	e3a00011 	mov	r0, #17
     6f0:	ef000000 	svc	0x00000000
     6f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6f8:	e12fff1e 	bx	lr

000006fc <unlink>:
     6fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     700:	e1a04003 	mov	r4, r3
     704:	e1a03002 	mov	r3, r2
     708:	e1a02001 	mov	r2, r1
     70c:	e1a01000 	mov	r1, r0
     710:	e3a00012 	mov	r0, #18
     714:	ef000000 	svc	0x00000000
     718:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     71c:	e12fff1e 	bx	lr

00000720 <fstat>:
     720:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     724:	e1a04003 	mov	r4, r3
     728:	e1a03002 	mov	r3, r2
     72c:	e1a02001 	mov	r2, r1
     730:	e1a01000 	mov	r1, r0
     734:	e3a00008 	mov	r0, #8
     738:	ef000000 	svc	0x00000000
     73c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     740:	e12fff1e 	bx	lr

00000744 <link>:
     744:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     748:	e1a04003 	mov	r4, r3
     74c:	e1a03002 	mov	r3, r2
     750:	e1a02001 	mov	r2, r1
     754:	e1a01000 	mov	r1, r0
     758:	e3a00013 	mov	r0, #19
     75c:	ef000000 	svc	0x00000000
     760:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     764:	e12fff1e 	bx	lr

00000768 <mkdir>:
     768:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     76c:	e1a04003 	mov	r4, r3
     770:	e1a03002 	mov	r3, r2
     774:	e1a02001 	mov	r2, r1
     778:	e1a01000 	mov	r1, r0
     77c:	e3a00014 	mov	r0, #20
     780:	ef000000 	svc	0x00000000
     784:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     788:	e12fff1e 	bx	lr

0000078c <chdir>:
     78c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     790:	e1a04003 	mov	r4, r3
     794:	e1a03002 	mov	r3, r2
     798:	e1a02001 	mov	r2, r1
     79c:	e1a01000 	mov	r1, r0
     7a0:	e3a00009 	mov	r0, #9
     7a4:	ef000000 	svc	0x00000000
     7a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7ac:	e12fff1e 	bx	lr

000007b0 <dup>:
     7b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7b4:	e1a04003 	mov	r4, r3
     7b8:	e1a03002 	mov	r3, r2
     7bc:	e1a02001 	mov	r2, r1
     7c0:	e1a01000 	mov	r1, r0
     7c4:	e3a0000a 	mov	r0, #10
     7c8:	ef000000 	svc	0x00000000
     7cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7d0:	e12fff1e 	bx	lr

000007d4 <getpid>:
     7d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7d8:	e1a04003 	mov	r4, r3
     7dc:	e1a03002 	mov	r3, r2
     7e0:	e1a02001 	mov	r2, r1
     7e4:	e1a01000 	mov	r1, r0
     7e8:	e3a0000b 	mov	r0, #11
     7ec:	ef000000 	svc	0x00000000
     7f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7f4:	e12fff1e 	bx	lr

000007f8 <sbrk>:
     7f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7fc:	e1a04003 	mov	r4, r3
     800:	e1a03002 	mov	r3, r2
     804:	e1a02001 	mov	r2, r1
     808:	e1a01000 	mov	r1, r0
     80c:	e3a0000c 	mov	r0, #12
     810:	ef000000 	svc	0x00000000
     814:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     818:	e12fff1e 	bx	lr

0000081c <sleep>:
     81c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     820:	e1a04003 	mov	r4, r3
     824:	e1a03002 	mov	r3, r2
     828:	e1a02001 	mov	r2, r1
     82c:	e1a01000 	mov	r1, r0
     830:	e3a0000d 	mov	r0, #13
     834:	ef000000 	svc	0x00000000
     838:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     83c:	e12fff1e 	bx	lr

00000840 <uptime>:
     840:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     844:	e1a04003 	mov	r4, r3
     848:	e1a03002 	mov	r3, r2
     84c:	e1a02001 	mov	r2, r1
     850:	e1a01000 	mov	r1, r0
     854:	e3a0000e 	mov	r0, #14
     858:	ef000000 	svc	0x00000000
     85c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     860:	e12fff1e 	bx	lr

00000864 <getprocs>:
     864:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     868:	e1a04003 	mov	r4, r3
     86c:	e1a03002 	mov	r3, r2
     870:	e1a02001 	mov	r2, r1
     874:	e1a01000 	mov	r1, r0
     878:	e3a00016 	mov	r0, #22
     87c:	ef000000 	svc	0x00000000
     880:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     884:	e12fff1e 	bx	lr

00000888 <settickets>:
     888:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     88c:	e1a04003 	mov	r4, r3
     890:	e1a03002 	mov	r3, r2
     894:	e1a02001 	mov	r2, r1
     898:	e1a01000 	mov	r1, r0
     89c:	e3a00017 	mov	r0, #23
     8a0:	ef000000 	svc	0x00000000
     8a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a8:	e12fff1e 	bx	lr

000008ac <srand>:
     8ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8b0:	e1a04003 	mov	r4, r3
     8b4:	e1a03002 	mov	r3, r2
     8b8:	e1a02001 	mov	r2, r1
     8bc:	e1a01000 	mov	r1, r0
     8c0:	e3a00018 	mov	r0, #24
     8c4:	ef000000 	svc	0x00000000
     8c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8cc:	e12fff1e 	bx	lr

000008d0 <getpinfo>:
     8d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8d4:	e1a04003 	mov	r4, r3
     8d8:	e1a03002 	mov	r3, r2
     8dc:	e1a02001 	mov	r2, r1
     8e0:	e1a01000 	mov	r1, r0
     8e4:	e3a00019 	mov	r0, #25
     8e8:	ef000000 	svc	0x00000000
     8ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8f0:	e12fff1e 	bx	lr

000008f4 <putc>:
     8f4:	e92d4800 	push	{fp, lr}
     8f8:	e28db004 	add	fp, sp, #4
     8fc:	e24dd008 	sub	sp, sp, #8
     900:	e50b0008 	str	r0, [fp, #-8]
     904:	e1a03001 	mov	r3, r1
     908:	e54b3009 	strb	r3, [fp, #-9]
     90c:	e24b3009 	sub	r3, fp, #9
     910:	e3a02001 	mov	r2, #1
     914:	e1a01003 	mov	r1, r3
     918:	e51b0008 	ldr	r0, [fp, #-8]
     91c:	ebffff40 	bl	624 <write>
     920:	e1a00000 	nop			@ (mov r0, r0)
     924:	e24bd004 	sub	sp, fp, #4
     928:	e8bd8800 	pop	{fp, pc}

0000092c <printint>:
     92c:	e92d4800 	push	{fp, lr}
     930:	e28db004 	add	fp, sp, #4
     934:	e24dd030 	sub	sp, sp, #48	@ 0x30
     938:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     93c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     940:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     944:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     948:	e3a03000 	mov	r3, #0
     94c:	e50b300c 	str	r3, [fp, #-12]
     950:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     954:	e3530000 	cmp	r3, #0
     958:	0a000008 	beq	980 <printint+0x54>
     95c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     960:	e3530000 	cmp	r3, #0
     964:	aa000005 	bge	980 <printint+0x54>
     968:	e3a03001 	mov	r3, #1
     96c:	e50b300c 	str	r3, [fp, #-12]
     970:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     974:	e2633000 	rsb	r3, r3, #0
     978:	e50b3010 	str	r3, [fp, #-16]
     97c:	ea000001 	b	988 <printint+0x5c>
     980:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     984:	e50b3010 	str	r3, [fp, #-16]
     988:	e3a03000 	mov	r3, #0
     98c:	e50b3008 	str	r3, [fp, #-8]
     990:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     994:	e51b3010 	ldr	r3, [fp, #-16]
     998:	e1a01002 	mov	r1, r2
     99c:	e1a00003 	mov	r0, r3
     9a0:	eb0001d5 	bl	10fc <__aeabi_uidivmod>
     9a4:	e1a03001 	mov	r3, r1
     9a8:	e1a01003 	mov	r1, r3
     9ac:	e51b3008 	ldr	r3, [fp, #-8]
     9b0:	e2832001 	add	r2, r3, #1
     9b4:	e50b2008 	str	r2, [fp, #-8]
     9b8:	e59f20a0 	ldr	r2, [pc, #160]	@ a60 <printint+0x134>
     9bc:	e7d22001 	ldrb	r2, [r2, r1]
     9c0:	e2433004 	sub	r3, r3, #4
     9c4:	e083300b 	add	r3, r3, fp
     9c8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     9cc:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     9d0:	e1a01003 	mov	r1, r3
     9d4:	e51b0010 	ldr	r0, [fp, #-16]
     9d8:	eb00018a 	bl	1008 <__udivsi3>
     9dc:	e1a03000 	mov	r3, r0
     9e0:	e50b3010 	str	r3, [fp, #-16]
     9e4:	e51b3010 	ldr	r3, [fp, #-16]
     9e8:	e3530000 	cmp	r3, #0
     9ec:	1affffe7 	bne	990 <printint+0x64>
     9f0:	e51b300c 	ldr	r3, [fp, #-12]
     9f4:	e3530000 	cmp	r3, #0
     9f8:	0a00000e 	beq	a38 <printint+0x10c>
     9fc:	e51b3008 	ldr	r3, [fp, #-8]
     a00:	e2832001 	add	r2, r3, #1
     a04:	e50b2008 	str	r2, [fp, #-8]
     a08:	e2433004 	sub	r3, r3, #4
     a0c:	e083300b 	add	r3, r3, fp
     a10:	e3a0202d 	mov	r2, #45	@ 0x2d
     a14:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a18:	ea000006 	b	a38 <printint+0x10c>
     a1c:	e24b2020 	sub	r2, fp, #32
     a20:	e51b3008 	ldr	r3, [fp, #-8]
     a24:	e0823003 	add	r3, r2, r3
     a28:	e5d33000 	ldrb	r3, [r3]
     a2c:	e1a01003 	mov	r1, r3
     a30:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     a34:	ebffffae 	bl	8f4 <putc>
     a38:	e51b3008 	ldr	r3, [fp, #-8]
     a3c:	e2433001 	sub	r3, r3, #1
     a40:	e50b3008 	str	r3, [fp, #-8]
     a44:	e51b3008 	ldr	r3, [fp, #-8]
     a48:	e3530000 	cmp	r3, #0
     a4c:	aafffff2 	bge	a1c <printint+0xf0>
     a50:	e1a00000 	nop			@ (mov r0, r0)
     a54:	e1a00000 	nop			@ (mov r0, r0)
     a58:	e24bd004 	sub	sp, fp, #4
     a5c:	e8bd8800 	pop	{fp, pc}
     a60:	00001140 	.word	0x00001140

00000a64 <printf>:
     a64:	e92d000e 	push	{r1, r2, r3}
     a68:	e92d4800 	push	{fp, lr}
     a6c:	e28db004 	add	fp, sp, #4
     a70:	e24dd024 	sub	sp, sp, #36	@ 0x24
     a74:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     a78:	e3a03000 	mov	r3, #0
     a7c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a80:	e28b3008 	add	r3, fp, #8
     a84:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a88:	e3a03000 	mov	r3, #0
     a8c:	e50b3010 	str	r3, [fp, #-16]
     a90:	ea000074 	b	c68 <printf+0x204>
     a94:	e59b2004 	ldr	r2, [fp, #4]
     a98:	e51b3010 	ldr	r3, [fp, #-16]
     a9c:	e0823003 	add	r3, r2, r3
     aa0:	e5d33000 	ldrb	r3, [r3]
     aa4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     aa8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     aac:	e3530000 	cmp	r3, #0
     ab0:	1a00000b 	bne	ae4 <printf+0x80>
     ab4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ab8:	e3530025 	cmp	r3, #37	@ 0x25
     abc:	1a000002 	bne	acc <printf+0x68>
     ac0:	e3a03025 	mov	r3, #37	@ 0x25
     ac4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ac8:	ea000063 	b	c5c <printf+0x1f8>
     acc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ad0:	e6ef3073 	uxtb	r3, r3
     ad4:	e1a01003 	mov	r1, r3
     ad8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     adc:	ebffff84 	bl	8f4 <putc>
     ae0:	ea00005d 	b	c5c <printf+0x1f8>
     ae4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ae8:	e3530025 	cmp	r3, #37	@ 0x25
     aec:	1a00005a 	bne	c5c <printf+0x1f8>
     af0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     af4:	e3530064 	cmp	r3, #100	@ 0x64
     af8:	1a00000a 	bne	b28 <printf+0xc4>
     afc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b00:	e5933000 	ldr	r3, [r3]
     b04:	e1a01003 	mov	r1, r3
     b08:	e3a03001 	mov	r3, #1
     b0c:	e3a0200a 	mov	r2, #10
     b10:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b14:	ebffff84 	bl	92c <printint>
     b18:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b1c:	e2833004 	add	r3, r3, #4
     b20:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b24:	ea00004a 	b	c54 <printf+0x1f0>
     b28:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b2c:	e3530078 	cmp	r3, #120	@ 0x78
     b30:	0a000002 	beq	b40 <printf+0xdc>
     b34:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b38:	e3530070 	cmp	r3, #112	@ 0x70
     b3c:	1a00000a 	bne	b6c <printf+0x108>
     b40:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b44:	e5933000 	ldr	r3, [r3]
     b48:	e1a01003 	mov	r1, r3
     b4c:	e3a03000 	mov	r3, #0
     b50:	e3a02010 	mov	r2, #16
     b54:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b58:	ebffff73 	bl	92c <printint>
     b5c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b60:	e2833004 	add	r3, r3, #4
     b64:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b68:	ea000039 	b	c54 <printf+0x1f0>
     b6c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b70:	e3530073 	cmp	r3, #115	@ 0x73
     b74:	1a000018 	bne	bdc <printf+0x178>
     b78:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b7c:	e5933000 	ldr	r3, [r3]
     b80:	e50b300c 	str	r3, [fp, #-12]
     b84:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b88:	e2833004 	add	r3, r3, #4
     b8c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b90:	e51b300c 	ldr	r3, [fp, #-12]
     b94:	e3530000 	cmp	r3, #0
     b98:	1a00000a 	bne	bc8 <printf+0x164>
     b9c:	e59f30f4 	ldr	r3, [pc, #244]	@ c98 <printf+0x234>
     ba0:	e50b300c 	str	r3, [fp, #-12]
     ba4:	ea000007 	b	bc8 <printf+0x164>
     ba8:	e51b300c 	ldr	r3, [fp, #-12]
     bac:	e5d33000 	ldrb	r3, [r3]
     bb0:	e1a01003 	mov	r1, r3
     bb4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bb8:	ebffff4d 	bl	8f4 <putc>
     bbc:	e51b300c 	ldr	r3, [fp, #-12]
     bc0:	e2833001 	add	r3, r3, #1
     bc4:	e50b300c 	str	r3, [fp, #-12]
     bc8:	e51b300c 	ldr	r3, [fp, #-12]
     bcc:	e5d33000 	ldrb	r3, [r3]
     bd0:	e3530000 	cmp	r3, #0
     bd4:	1afffff3 	bne	ba8 <printf+0x144>
     bd8:	ea00001d 	b	c54 <printf+0x1f0>
     bdc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     be0:	e3530063 	cmp	r3, #99	@ 0x63
     be4:	1a000009 	bne	c10 <printf+0x1ac>
     be8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bec:	e5933000 	ldr	r3, [r3]
     bf0:	e6ef3073 	uxtb	r3, r3
     bf4:	e1a01003 	mov	r1, r3
     bf8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bfc:	ebffff3c 	bl	8f4 <putc>
     c00:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c04:	e2833004 	add	r3, r3, #4
     c08:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c0c:	ea000010 	b	c54 <printf+0x1f0>
     c10:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c14:	e3530025 	cmp	r3, #37	@ 0x25
     c18:	1a000005 	bne	c34 <printf+0x1d0>
     c1c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c20:	e6ef3073 	uxtb	r3, r3
     c24:	e1a01003 	mov	r1, r3
     c28:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c2c:	ebffff30 	bl	8f4 <putc>
     c30:	ea000007 	b	c54 <printf+0x1f0>
     c34:	e3a01025 	mov	r1, #37	@ 0x25
     c38:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c3c:	ebffff2c 	bl	8f4 <putc>
     c40:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c44:	e6ef3073 	uxtb	r3, r3
     c48:	e1a01003 	mov	r1, r3
     c4c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c50:	ebffff27 	bl	8f4 <putc>
     c54:	e3a03000 	mov	r3, #0
     c58:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c5c:	e51b3010 	ldr	r3, [fp, #-16]
     c60:	e2833001 	add	r3, r3, #1
     c64:	e50b3010 	str	r3, [fp, #-16]
     c68:	e59b2004 	ldr	r2, [fp, #4]
     c6c:	e51b3010 	ldr	r3, [fp, #-16]
     c70:	e0823003 	add	r3, r2, r3
     c74:	e5d33000 	ldrb	r3, [r3]
     c78:	e3530000 	cmp	r3, #0
     c7c:	1affff84 	bne	a94 <printf+0x30>
     c80:	e1a00000 	nop			@ (mov r0, r0)
     c84:	e1a00000 	nop			@ (mov r0, r0)
     c88:	e24bd004 	sub	sp, fp, #4
     c8c:	e8bd4800 	pop	{fp, lr}
     c90:	e28dd00c 	add	sp, sp, #12
     c94:	e12fff1e 	bx	lr
     c98:	00001138 	.word	0x00001138

00000c9c <free>:
     c9c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     ca0:	e28db000 	add	fp, sp, #0
     ca4:	e24dd014 	sub	sp, sp, #20
     ca8:	e50b0010 	str	r0, [fp, #-16]
     cac:	e51b3010 	ldr	r3, [fp, #-16]
     cb0:	e2433008 	sub	r3, r3, #8
     cb4:	e50b300c 	str	r3, [fp, #-12]
     cb8:	e59f3154 	ldr	r3, [pc, #340]	@ e14 <free+0x178>
     cbc:	e5933000 	ldr	r3, [r3]
     cc0:	e50b3008 	str	r3, [fp, #-8]
     cc4:	ea000010 	b	d0c <free+0x70>
     cc8:	e51b3008 	ldr	r3, [fp, #-8]
     ccc:	e5933000 	ldr	r3, [r3]
     cd0:	e51b2008 	ldr	r2, [fp, #-8]
     cd4:	e1520003 	cmp	r2, r3
     cd8:	3a000008 	bcc	d00 <free+0x64>
     cdc:	e51b200c 	ldr	r2, [fp, #-12]
     ce0:	e51b3008 	ldr	r3, [fp, #-8]
     ce4:	e1520003 	cmp	r2, r3
     ce8:	8a000010 	bhi	d30 <free+0x94>
     cec:	e51b3008 	ldr	r3, [fp, #-8]
     cf0:	e5933000 	ldr	r3, [r3]
     cf4:	e51b200c 	ldr	r2, [fp, #-12]
     cf8:	e1520003 	cmp	r2, r3
     cfc:	3a00000b 	bcc	d30 <free+0x94>
     d00:	e51b3008 	ldr	r3, [fp, #-8]
     d04:	e5933000 	ldr	r3, [r3]
     d08:	e50b3008 	str	r3, [fp, #-8]
     d0c:	e51b200c 	ldr	r2, [fp, #-12]
     d10:	e51b3008 	ldr	r3, [fp, #-8]
     d14:	e1520003 	cmp	r2, r3
     d18:	9affffea 	bls	cc8 <free+0x2c>
     d1c:	e51b3008 	ldr	r3, [fp, #-8]
     d20:	e5933000 	ldr	r3, [r3]
     d24:	e51b200c 	ldr	r2, [fp, #-12]
     d28:	e1520003 	cmp	r2, r3
     d2c:	2affffe5 	bcs	cc8 <free+0x2c>
     d30:	e51b300c 	ldr	r3, [fp, #-12]
     d34:	e5933004 	ldr	r3, [r3, #4]
     d38:	e1a03183 	lsl	r3, r3, #3
     d3c:	e51b200c 	ldr	r2, [fp, #-12]
     d40:	e0822003 	add	r2, r2, r3
     d44:	e51b3008 	ldr	r3, [fp, #-8]
     d48:	e5933000 	ldr	r3, [r3]
     d4c:	e1520003 	cmp	r2, r3
     d50:	1a00000d 	bne	d8c <free+0xf0>
     d54:	e51b300c 	ldr	r3, [fp, #-12]
     d58:	e5932004 	ldr	r2, [r3, #4]
     d5c:	e51b3008 	ldr	r3, [fp, #-8]
     d60:	e5933000 	ldr	r3, [r3]
     d64:	e5933004 	ldr	r3, [r3, #4]
     d68:	e0822003 	add	r2, r2, r3
     d6c:	e51b300c 	ldr	r3, [fp, #-12]
     d70:	e5832004 	str	r2, [r3, #4]
     d74:	e51b3008 	ldr	r3, [fp, #-8]
     d78:	e5933000 	ldr	r3, [r3]
     d7c:	e5932000 	ldr	r2, [r3]
     d80:	e51b300c 	ldr	r3, [fp, #-12]
     d84:	e5832000 	str	r2, [r3]
     d88:	ea000003 	b	d9c <free+0x100>
     d8c:	e51b3008 	ldr	r3, [fp, #-8]
     d90:	e5932000 	ldr	r2, [r3]
     d94:	e51b300c 	ldr	r3, [fp, #-12]
     d98:	e5832000 	str	r2, [r3]
     d9c:	e51b3008 	ldr	r3, [fp, #-8]
     da0:	e5933004 	ldr	r3, [r3, #4]
     da4:	e1a03183 	lsl	r3, r3, #3
     da8:	e51b2008 	ldr	r2, [fp, #-8]
     dac:	e0823003 	add	r3, r2, r3
     db0:	e51b200c 	ldr	r2, [fp, #-12]
     db4:	e1520003 	cmp	r2, r3
     db8:	1a00000b 	bne	dec <free+0x150>
     dbc:	e51b3008 	ldr	r3, [fp, #-8]
     dc0:	e5932004 	ldr	r2, [r3, #4]
     dc4:	e51b300c 	ldr	r3, [fp, #-12]
     dc8:	e5933004 	ldr	r3, [r3, #4]
     dcc:	e0822003 	add	r2, r2, r3
     dd0:	e51b3008 	ldr	r3, [fp, #-8]
     dd4:	e5832004 	str	r2, [r3, #4]
     dd8:	e51b300c 	ldr	r3, [fp, #-12]
     ddc:	e5932000 	ldr	r2, [r3]
     de0:	e51b3008 	ldr	r3, [fp, #-8]
     de4:	e5832000 	str	r2, [r3]
     de8:	ea000002 	b	df8 <free+0x15c>
     dec:	e51b3008 	ldr	r3, [fp, #-8]
     df0:	e51b200c 	ldr	r2, [fp, #-12]
     df4:	e5832000 	str	r2, [r3]
     df8:	e59f2014 	ldr	r2, [pc, #20]	@ e14 <free+0x178>
     dfc:	e51b3008 	ldr	r3, [fp, #-8]
     e00:	e5823000 	str	r3, [r2]
     e04:	e1a00000 	nop			@ (mov r0, r0)
     e08:	e28bd000 	add	sp, fp, #0
     e0c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     e10:	e12fff1e 	bx	lr
     e14:	0000115c 	.word	0x0000115c

00000e18 <morecore>:
     e18:	e92d4800 	push	{fp, lr}
     e1c:	e28db004 	add	fp, sp, #4
     e20:	e24dd010 	sub	sp, sp, #16
     e24:	e50b0010 	str	r0, [fp, #-16]
     e28:	e51b3010 	ldr	r3, [fp, #-16]
     e2c:	e3530a01 	cmp	r3, #4096	@ 0x1000
     e30:	2a000001 	bcs	e3c <morecore+0x24>
     e34:	e3a03a01 	mov	r3, #4096	@ 0x1000
     e38:	e50b3010 	str	r3, [fp, #-16]
     e3c:	e51b3010 	ldr	r3, [fp, #-16]
     e40:	e1a03183 	lsl	r3, r3, #3
     e44:	e1a00003 	mov	r0, r3
     e48:	ebfffe6a 	bl	7f8 <sbrk>
     e4c:	e50b0008 	str	r0, [fp, #-8]
     e50:	e51b3008 	ldr	r3, [fp, #-8]
     e54:	e3730001 	cmn	r3, #1
     e58:	1a000001 	bne	e64 <morecore+0x4c>
     e5c:	e3a03000 	mov	r3, #0
     e60:	ea00000a 	b	e90 <morecore+0x78>
     e64:	e51b3008 	ldr	r3, [fp, #-8]
     e68:	e50b300c 	str	r3, [fp, #-12]
     e6c:	e51b300c 	ldr	r3, [fp, #-12]
     e70:	e51b2010 	ldr	r2, [fp, #-16]
     e74:	e5832004 	str	r2, [r3, #4]
     e78:	e51b300c 	ldr	r3, [fp, #-12]
     e7c:	e2833008 	add	r3, r3, #8
     e80:	e1a00003 	mov	r0, r3
     e84:	ebffff84 	bl	c9c <free>
     e88:	e59f300c 	ldr	r3, [pc, #12]	@ e9c <morecore+0x84>
     e8c:	e5933000 	ldr	r3, [r3]
     e90:	e1a00003 	mov	r0, r3
     e94:	e24bd004 	sub	sp, fp, #4
     e98:	e8bd8800 	pop	{fp, pc}
     e9c:	0000115c 	.word	0x0000115c

00000ea0 <malloc>:
     ea0:	e92d4800 	push	{fp, lr}
     ea4:	e28db004 	add	fp, sp, #4
     ea8:	e24dd018 	sub	sp, sp, #24
     eac:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     eb0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     eb4:	e2833007 	add	r3, r3, #7
     eb8:	e1a031a3 	lsr	r3, r3, #3
     ebc:	e2833001 	add	r3, r3, #1
     ec0:	e50b3010 	str	r3, [fp, #-16]
     ec4:	e59f3134 	ldr	r3, [pc, #308]	@ 1000 <malloc+0x160>
     ec8:	e5933000 	ldr	r3, [r3]
     ecc:	e50b300c 	str	r3, [fp, #-12]
     ed0:	e51b300c 	ldr	r3, [fp, #-12]
     ed4:	e3530000 	cmp	r3, #0
     ed8:	1a00000b 	bne	f0c <malloc+0x6c>
     edc:	e59f3120 	ldr	r3, [pc, #288]	@ 1004 <malloc+0x164>
     ee0:	e50b300c 	str	r3, [fp, #-12]
     ee4:	e59f2114 	ldr	r2, [pc, #276]	@ 1000 <malloc+0x160>
     ee8:	e51b300c 	ldr	r3, [fp, #-12]
     eec:	e5823000 	str	r3, [r2]
     ef0:	e59f3108 	ldr	r3, [pc, #264]	@ 1000 <malloc+0x160>
     ef4:	e5933000 	ldr	r3, [r3]
     ef8:	e59f2104 	ldr	r2, [pc, #260]	@ 1004 <malloc+0x164>
     efc:	e5823000 	str	r3, [r2]
     f00:	e59f30fc 	ldr	r3, [pc, #252]	@ 1004 <malloc+0x164>
     f04:	e3a02000 	mov	r2, #0
     f08:	e5832004 	str	r2, [r3, #4]
     f0c:	e51b300c 	ldr	r3, [fp, #-12]
     f10:	e5933000 	ldr	r3, [r3]
     f14:	e50b3008 	str	r3, [fp, #-8]
     f18:	e51b3008 	ldr	r3, [fp, #-8]
     f1c:	e5933004 	ldr	r3, [r3, #4]
     f20:	e51b2010 	ldr	r2, [fp, #-16]
     f24:	e1520003 	cmp	r2, r3
     f28:	8a00001e 	bhi	fa8 <malloc+0x108>
     f2c:	e51b3008 	ldr	r3, [fp, #-8]
     f30:	e5933004 	ldr	r3, [r3, #4]
     f34:	e51b2010 	ldr	r2, [fp, #-16]
     f38:	e1520003 	cmp	r2, r3
     f3c:	1a000004 	bne	f54 <malloc+0xb4>
     f40:	e51b3008 	ldr	r3, [fp, #-8]
     f44:	e5932000 	ldr	r2, [r3]
     f48:	e51b300c 	ldr	r3, [fp, #-12]
     f4c:	e5832000 	str	r2, [r3]
     f50:	ea00000e 	b	f90 <malloc+0xf0>
     f54:	e51b3008 	ldr	r3, [fp, #-8]
     f58:	e5932004 	ldr	r2, [r3, #4]
     f5c:	e51b3010 	ldr	r3, [fp, #-16]
     f60:	e0422003 	sub	r2, r2, r3
     f64:	e51b3008 	ldr	r3, [fp, #-8]
     f68:	e5832004 	str	r2, [r3, #4]
     f6c:	e51b3008 	ldr	r3, [fp, #-8]
     f70:	e5933004 	ldr	r3, [r3, #4]
     f74:	e1a03183 	lsl	r3, r3, #3
     f78:	e51b2008 	ldr	r2, [fp, #-8]
     f7c:	e0823003 	add	r3, r2, r3
     f80:	e50b3008 	str	r3, [fp, #-8]
     f84:	e51b3008 	ldr	r3, [fp, #-8]
     f88:	e51b2010 	ldr	r2, [fp, #-16]
     f8c:	e5832004 	str	r2, [r3, #4]
     f90:	e59f2068 	ldr	r2, [pc, #104]	@ 1000 <malloc+0x160>
     f94:	e51b300c 	ldr	r3, [fp, #-12]
     f98:	e5823000 	str	r3, [r2]
     f9c:	e51b3008 	ldr	r3, [fp, #-8]
     fa0:	e2833008 	add	r3, r3, #8
     fa4:	ea000012 	b	ff4 <malloc+0x154>
     fa8:	e59f3050 	ldr	r3, [pc, #80]	@ 1000 <malloc+0x160>
     fac:	e5933000 	ldr	r3, [r3]
     fb0:	e51b2008 	ldr	r2, [fp, #-8]
     fb4:	e1520003 	cmp	r2, r3
     fb8:	1a000007 	bne	fdc <malloc+0x13c>
     fbc:	e51b0010 	ldr	r0, [fp, #-16]
     fc0:	ebffff94 	bl	e18 <morecore>
     fc4:	e50b0008 	str	r0, [fp, #-8]
     fc8:	e51b3008 	ldr	r3, [fp, #-8]
     fcc:	e3530000 	cmp	r3, #0
     fd0:	1a000001 	bne	fdc <malloc+0x13c>
     fd4:	e3a03000 	mov	r3, #0
     fd8:	ea000005 	b	ff4 <malloc+0x154>
     fdc:	e51b3008 	ldr	r3, [fp, #-8]
     fe0:	e50b300c 	str	r3, [fp, #-12]
     fe4:	e51b3008 	ldr	r3, [fp, #-8]
     fe8:	e5933000 	ldr	r3, [r3]
     fec:	e50b3008 	str	r3, [fp, #-8]
     ff0:	eaffffc8 	b	f18 <malloc+0x78>
     ff4:	e1a00003 	mov	r0, r3
     ff8:	e24bd004 	sub	sp, fp, #4
     ffc:	e8bd8800 	pop	{fp, pc}
    1000:	0000115c 	.word	0x0000115c
    1004:	00001154 	.word	0x00001154

00001008 <__udivsi3>:
    1008:	e2512001 	subs	r2, r1, #1
    100c:	012fff1e 	bxeq	lr
    1010:	3a000036 	bcc	10f0 <__udivsi3+0xe8>
    1014:	e1500001 	cmp	r0, r1
    1018:	9a000022 	bls	10a8 <__udivsi3+0xa0>
    101c:	e1110002 	tst	r1, r2
    1020:	0a000023 	beq	10b4 <__udivsi3+0xac>
    1024:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1028:	01a01181 	lsleq	r1, r1, #3
    102c:	03a03008 	moveq	r3, #8
    1030:	13a03001 	movne	r3, #1
    1034:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1038:	31510000 	cmpcc	r1, r0
    103c:	31a01201 	lslcc	r1, r1, #4
    1040:	31a03203 	lslcc	r3, r3, #4
    1044:	3afffffa 	bcc	1034 <__udivsi3+0x2c>
    1048:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    104c:	31510000 	cmpcc	r1, r0
    1050:	31a01081 	lslcc	r1, r1, #1
    1054:	31a03083 	lslcc	r3, r3, #1
    1058:	3afffffa 	bcc	1048 <__udivsi3+0x40>
    105c:	e3a02000 	mov	r2, #0
    1060:	e1500001 	cmp	r0, r1
    1064:	20400001 	subcs	r0, r0, r1
    1068:	21822003 	orrcs	r2, r2, r3
    106c:	e15000a1 	cmp	r0, r1, lsr #1
    1070:	204000a1 	subcs	r0, r0, r1, lsr #1
    1074:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1078:	e1500121 	cmp	r0, r1, lsr #2
    107c:	20400121 	subcs	r0, r0, r1, lsr #2
    1080:	21822123 	orrcs	r2, r2, r3, lsr #2
    1084:	e15001a1 	cmp	r0, r1, lsr #3
    1088:	204001a1 	subcs	r0, r0, r1, lsr #3
    108c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1090:	e3500000 	cmp	r0, #0
    1094:	11b03223 	lsrsne	r3, r3, #4
    1098:	11a01221 	lsrne	r1, r1, #4
    109c:	1affffef 	bne	1060 <__udivsi3+0x58>
    10a0:	e1a00002 	mov	r0, r2
    10a4:	e12fff1e 	bx	lr
    10a8:	03a00001 	moveq	r0, #1
    10ac:	13a00000 	movne	r0, #0
    10b0:	e12fff1e 	bx	lr
    10b4:	e3510801 	cmp	r1, #65536	@ 0x10000
    10b8:	21a01821 	lsrcs	r1, r1, #16
    10bc:	23a02010 	movcs	r2, #16
    10c0:	33a02000 	movcc	r2, #0
    10c4:	e3510c01 	cmp	r1, #256	@ 0x100
    10c8:	21a01421 	lsrcs	r1, r1, #8
    10cc:	22822008 	addcs	r2, r2, #8
    10d0:	e3510010 	cmp	r1, #16
    10d4:	21a01221 	lsrcs	r1, r1, #4
    10d8:	22822004 	addcs	r2, r2, #4
    10dc:	e3510004 	cmp	r1, #4
    10e0:	82822003 	addhi	r2, r2, #3
    10e4:	908220a1 	addls	r2, r2, r1, lsr #1
    10e8:	e1a00230 	lsr	r0, r0, r2
    10ec:	e12fff1e 	bx	lr
    10f0:	e3500000 	cmp	r0, #0
    10f4:	13e00000 	mvnne	r0, #0
    10f8:	ea000007 	b	111c <__aeabi_idiv0>

000010fc <__aeabi_uidivmod>:
    10fc:	e3510000 	cmp	r1, #0
    1100:	0afffffa 	beq	10f0 <__udivsi3+0xe8>
    1104:	e92d4003 	push	{r0, r1, lr}
    1108:	ebffffbe 	bl	1008 <__udivsi3>
    110c:	e8bd4006 	pop	{r1, r2, lr}
    1110:	e0030092 	mul	r3, r2, r0
    1114:	e0411003 	sub	r1, r1, r3
    1118:	e12fff1e 	bx	lr

0000111c <__aeabi_idiv0>:
    111c:	e12fff1e 	bx	lr
