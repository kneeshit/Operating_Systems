
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
      70:	eb000284 	bl	a88 <printf>
      74:	eb000146 	bl	594 <exit>
      78:	66666667 	.word	0x66666667
      7c:	00001144 	.word	0x00001144

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

000008f4 <dumppagetable>:
     8f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8f8:	e1a04003 	mov	r4, r3
     8fc:	e1a03002 	mov	r3, r2
     900:	e1a02001 	mov	r2, r1
     904:	e1a01000 	mov	r1, r0
     908:	e3a0001a 	mov	r0, #26
     90c:	ef000000 	svc	0x00000000
     910:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     914:	e12fff1e 	bx	lr

00000918 <putc>:
     918:	e92d4800 	push	{fp, lr}
     91c:	e28db004 	add	fp, sp, #4
     920:	e24dd008 	sub	sp, sp, #8
     924:	e50b0008 	str	r0, [fp, #-8]
     928:	e1a03001 	mov	r3, r1
     92c:	e54b3009 	strb	r3, [fp, #-9]
     930:	e24b3009 	sub	r3, fp, #9
     934:	e3a02001 	mov	r2, #1
     938:	e1a01003 	mov	r1, r3
     93c:	e51b0008 	ldr	r0, [fp, #-8]
     940:	ebffff37 	bl	624 <write>
     944:	e1a00000 	nop			@ (mov r0, r0)
     948:	e24bd004 	sub	sp, fp, #4
     94c:	e8bd8800 	pop	{fp, pc}

00000950 <printint>:
     950:	e92d4800 	push	{fp, lr}
     954:	e28db004 	add	fp, sp, #4
     958:	e24dd030 	sub	sp, sp, #48	@ 0x30
     95c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     960:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     964:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     968:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     96c:	e3a03000 	mov	r3, #0
     970:	e50b300c 	str	r3, [fp, #-12]
     974:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     978:	e3530000 	cmp	r3, #0
     97c:	0a000008 	beq	9a4 <printint+0x54>
     980:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     984:	e3530000 	cmp	r3, #0
     988:	aa000005 	bge	9a4 <printint+0x54>
     98c:	e3a03001 	mov	r3, #1
     990:	e50b300c 	str	r3, [fp, #-12]
     994:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     998:	e2633000 	rsb	r3, r3, #0
     99c:	e50b3010 	str	r3, [fp, #-16]
     9a0:	ea000001 	b	9ac <printint+0x5c>
     9a4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9a8:	e50b3010 	str	r3, [fp, #-16]
     9ac:	e3a03000 	mov	r3, #0
     9b0:	e50b3008 	str	r3, [fp, #-8]
     9b4:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     9b8:	e51b3010 	ldr	r3, [fp, #-16]
     9bc:	e1a01002 	mov	r1, r2
     9c0:	e1a00003 	mov	r0, r3
     9c4:	eb0001d5 	bl	1120 <__aeabi_uidivmod>
     9c8:	e1a03001 	mov	r3, r1
     9cc:	e1a01003 	mov	r1, r3
     9d0:	e51b3008 	ldr	r3, [fp, #-8]
     9d4:	e2832001 	add	r2, r3, #1
     9d8:	e50b2008 	str	r2, [fp, #-8]
     9dc:	e59f20a0 	ldr	r2, [pc, #160]	@ a84 <printint+0x134>
     9e0:	e7d22001 	ldrb	r2, [r2, r1]
     9e4:	e2433004 	sub	r3, r3, #4
     9e8:	e083300b 	add	r3, r3, fp
     9ec:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     9f0:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     9f4:	e1a01003 	mov	r1, r3
     9f8:	e51b0010 	ldr	r0, [fp, #-16]
     9fc:	eb00018a 	bl	102c <__udivsi3>
     a00:	e1a03000 	mov	r3, r0
     a04:	e50b3010 	str	r3, [fp, #-16]
     a08:	e51b3010 	ldr	r3, [fp, #-16]
     a0c:	e3530000 	cmp	r3, #0
     a10:	1affffe7 	bne	9b4 <printint+0x64>
     a14:	e51b300c 	ldr	r3, [fp, #-12]
     a18:	e3530000 	cmp	r3, #0
     a1c:	0a00000e 	beq	a5c <printint+0x10c>
     a20:	e51b3008 	ldr	r3, [fp, #-8]
     a24:	e2832001 	add	r2, r3, #1
     a28:	e50b2008 	str	r2, [fp, #-8]
     a2c:	e2433004 	sub	r3, r3, #4
     a30:	e083300b 	add	r3, r3, fp
     a34:	e3a0202d 	mov	r2, #45	@ 0x2d
     a38:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a3c:	ea000006 	b	a5c <printint+0x10c>
     a40:	e24b2020 	sub	r2, fp, #32
     a44:	e51b3008 	ldr	r3, [fp, #-8]
     a48:	e0823003 	add	r3, r2, r3
     a4c:	e5d33000 	ldrb	r3, [r3]
     a50:	e1a01003 	mov	r1, r3
     a54:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     a58:	ebffffae 	bl	918 <putc>
     a5c:	e51b3008 	ldr	r3, [fp, #-8]
     a60:	e2433001 	sub	r3, r3, #1
     a64:	e50b3008 	str	r3, [fp, #-8]
     a68:	e51b3008 	ldr	r3, [fp, #-8]
     a6c:	e3530000 	cmp	r3, #0
     a70:	aafffff2 	bge	a40 <printint+0xf0>
     a74:	e1a00000 	nop			@ (mov r0, r0)
     a78:	e1a00000 	nop			@ (mov r0, r0)
     a7c:	e24bd004 	sub	sp, fp, #4
     a80:	e8bd8800 	pop	{fp, pc}
     a84:	00001164 	.word	0x00001164

00000a88 <printf>:
     a88:	e92d000e 	push	{r1, r2, r3}
     a8c:	e92d4800 	push	{fp, lr}
     a90:	e28db004 	add	fp, sp, #4
     a94:	e24dd024 	sub	sp, sp, #36	@ 0x24
     a98:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     a9c:	e3a03000 	mov	r3, #0
     aa0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     aa4:	e28b3008 	add	r3, fp, #8
     aa8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     aac:	e3a03000 	mov	r3, #0
     ab0:	e50b3010 	str	r3, [fp, #-16]
     ab4:	ea000074 	b	c8c <printf+0x204>
     ab8:	e59b2004 	ldr	r2, [fp, #4]
     abc:	e51b3010 	ldr	r3, [fp, #-16]
     ac0:	e0823003 	add	r3, r2, r3
     ac4:	e5d33000 	ldrb	r3, [r3]
     ac8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     acc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ad0:	e3530000 	cmp	r3, #0
     ad4:	1a00000b 	bne	b08 <printf+0x80>
     ad8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     adc:	e3530025 	cmp	r3, #37	@ 0x25
     ae0:	1a000002 	bne	af0 <printf+0x68>
     ae4:	e3a03025 	mov	r3, #37	@ 0x25
     ae8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     aec:	ea000063 	b	c80 <printf+0x1f8>
     af0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     af4:	e6ef3073 	uxtb	r3, r3
     af8:	e1a01003 	mov	r1, r3
     afc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b00:	ebffff84 	bl	918 <putc>
     b04:	ea00005d 	b	c80 <printf+0x1f8>
     b08:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b0c:	e3530025 	cmp	r3, #37	@ 0x25
     b10:	1a00005a 	bne	c80 <printf+0x1f8>
     b14:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b18:	e3530064 	cmp	r3, #100	@ 0x64
     b1c:	1a00000a 	bne	b4c <printf+0xc4>
     b20:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b24:	e5933000 	ldr	r3, [r3]
     b28:	e1a01003 	mov	r1, r3
     b2c:	e3a03001 	mov	r3, #1
     b30:	e3a0200a 	mov	r2, #10
     b34:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b38:	ebffff84 	bl	950 <printint>
     b3c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b40:	e2833004 	add	r3, r3, #4
     b44:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b48:	ea00004a 	b	c78 <printf+0x1f0>
     b4c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b50:	e3530078 	cmp	r3, #120	@ 0x78
     b54:	0a000002 	beq	b64 <printf+0xdc>
     b58:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b5c:	e3530070 	cmp	r3, #112	@ 0x70
     b60:	1a00000a 	bne	b90 <printf+0x108>
     b64:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b68:	e5933000 	ldr	r3, [r3]
     b6c:	e1a01003 	mov	r1, r3
     b70:	e3a03000 	mov	r3, #0
     b74:	e3a02010 	mov	r2, #16
     b78:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b7c:	ebffff73 	bl	950 <printint>
     b80:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b84:	e2833004 	add	r3, r3, #4
     b88:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b8c:	ea000039 	b	c78 <printf+0x1f0>
     b90:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b94:	e3530073 	cmp	r3, #115	@ 0x73
     b98:	1a000018 	bne	c00 <printf+0x178>
     b9c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ba0:	e5933000 	ldr	r3, [r3]
     ba4:	e50b300c 	str	r3, [fp, #-12]
     ba8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bac:	e2833004 	add	r3, r3, #4
     bb0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bb4:	e51b300c 	ldr	r3, [fp, #-12]
     bb8:	e3530000 	cmp	r3, #0
     bbc:	1a00000a 	bne	bec <printf+0x164>
     bc0:	e59f30f4 	ldr	r3, [pc, #244]	@ cbc <printf+0x234>
     bc4:	e50b300c 	str	r3, [fp, #-12]
     bc8:	ea000007 	b	bec <printf+0x164>
     bcc:	e51b300c 	ldr	r3, [fp, #-12]
     bd0:	e5d33000 	ldrb	r3, [r3]
     bd4:	e1a01003 	mov	r1, r3
     bd8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bdc:	ebffff4d 	bl	918 <putc>
     be0:	e51b300c 	ldr	r3, [fp, #-12]
     be4:	e2833001 	add	r3, r3, #1
     be8:	e50b300c 	str	r3, [fp, #-12]
     bec:	e51b300c 	ldr	r3, [fp, #-12]
     bf0:	e5d33000 	ldrb	r3, [r3]
     bf4:	e3530000 	cmp	r3, #0
     bf8:	1afffff3 	bne	bcc <printf+0x144>
     bfc:	ea00001d 	b	c78 <printf+0x1f0>
     c00:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c04:	e3530063 	cmp	r3, #99	@ 0x63
     c08:	1a000009 	bne	c34 <printf+0x1ac>
     c0c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c10:	e5933000 	ldr	r3, [r3]
     c14:	e6ef3073 	uxtb	r3, r3
     c18:	e1a01003 	mov	r1, r3
     c1c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c20:	ebffff3c 	bl	918 <putc>
     c24:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c28:	e2833004 	add	r3, r3, #4
     c2c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c30:	ea000010 	b	c78 <printf+0x1f0>
     c34:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c38:	e3530025 	cmp	r3, #37	@ 0x25
     c3c:	1a000005 	bne	c58 <printf+0x1d0>
     c40:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c44:	e6ef3073 	uxtb	r3, r3
     c48:	e1a01003 	mov	r1, r3
     c4c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c50:	ebffff30 	bl	918 <putc>
     c54:	ea000007 	b	c78 <printf+0x1f0>
     c58:	e3a01025 	mov	r1, #37	@ 0x25
     c5c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c60:	ebffff2c 	bl	918 <putc>
     c64:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c68:	e6ef3073 	uxtb	r3, r3
     c6c:	e1a01003 	mov	r1, r3
     c70:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c74:	ebffff27 	bl	918 <putc>
     c78:	e3a03000 	mov	r3, #0
     c7c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c80:	e51b3010 	ldr	r3, [fp, #-16]
     c84:	e2833001 	add	r3, r3, #1
     c88:	e50b3010 	str	r3, [fp, #-16]
     c8c:	e59b2004 	ldr	r2, [fp, #4]
     c90:	e51b3010 	ldr	r3, [fp, #-16]
     c94:	e0823003 	add	r3, r2, r3
     c98:	e5d33000 	ldrb	r3, [r3]
     c9c:	e3530000 	cmp	r3, #0
     ca0:	1affff84 	bne	ab8 <printf+0x30>
     ca4:	e1a00000 	nop			@ (mov r0, r0)
     ca8:	e1a00000 	nop			@ (mov r0, r0)
     cac:	e24bd004 	sub	sp, fp, #4
     cb0:	e8bd4800 	pop	{fp, lr}
     cb4:	e28dd00c 	add	sp, sp, #12
     cb8:	e12fff1e 	bx	lr
     cbc:	0000115c 	.word	0x0000115c

00000cc0 <free>:
     cc0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     cc4:	e28db000 	add	fp, sp, #0
     cc8:	e24dd014 	sub	sp, sp, #20
     ccc:	e50b0010 	str	r0, [fp, #-16]
     cd0:	e51b3010 	ldr	r3, [fp, #-16]
     cd4:	e2433008 	sub	r3, r3, #8
     cd8:	e50b300c 	str	r3, [fp, #-12]
     cdc:	e59f3154 	ldr	r3, [pc, #340]	@ e38 <free+0x178>
     ce0:	e5933000 	ldr	r3, [r3]
     ce4:	e50b3008 	str	r3, [fp, #-8]
     ce8:	ea000010 	b	d30 <free+0x70>
     cec:	e51b3008 	ldr	r3, [fp, #-8]
     cf0:	e5933000 	ldr	r3, [r3]
     cf4:	e51b2008 	ldr	r2, [fp, #-8]
     cf8:	e1520003 	cmp	r2, r3
     cfc:	3a000008 	bcc	d24 <free+0x64>
     d00:	e51b200c 	ldr	r2, [fp, #-12]
     d04:	e51b3008 	ldr	r3, [fp, #-8]
     d08:	e1520003 	cmp	r2, r3
     d0c:	8a000010 	bhi	d54 <free+0x94>
     d10:	e51b3008 	ldr	r3, [fp, #-8]
     d14:	e5933000 	ldr	r3, [r3]
     d18:	e51b200c 	ldr	r2, [fp, #-12]
     d1c:	e1520003 	cmp	r2, r3
     d20:	3a00000b 	bcc	d54 <free+0x94>
     d24:	e51b3008 	ldr	r3, [fp, #-8]
     d28:	e5933000 	ldr	r3, [r3]
     d2c:	e50b3008 	str	r3, [fp, #-8]
     d30:	e51b200c 	ldr	r2, [fp, #-12]
     d34:	e51b3008 	ldr	r3, [fp, #-8]
     d38:	e1520003 	cmp	r2, r3
     d3c:	9affffea 	bls	cec <free+0x2c>
     d40:	e51b3008 	ldr	r3, [fp, #-8]
     d44:	e5933000 	ldr	r3, [r3]
     d48:	e51b200c 	ldr	r2, [fp, #-12]
     d4c:	e1520003 	cmp	r2, r3
     d50:	2affffe5 	bcs	cec <free+0x2c>
     d54:	e51b300c 	ldr	r3, [fp, #-12]
     d58:	e5933004 	ldr	r3, [r3, #4]
     d5c:	e1a03183 	lsl	r3, r3, #3
     d60:	e51b200c 	ldr	r2, [fp, #-12]
     d64:	e0822003 	add	r2, r2, r3
     d68:	e51b3008 	ldr	r3, [fp, #-8]
     d6c:	e5933000 	ldr	r3, [r3]
     d70:	e1520003 	cmp	r2, r3
     d74:	1a00000d 	bne	db0 <free+0xf0>
     d78:	e51b300c 	ldr	r3, [fp, #-12]
     d7c:	e5932004 	ldr	r2, [r3, #4]
     d80:	e51b3008 	ldr	r3, [fp, #-8]
     d84:	e5933000 	ldr	r3, [r3]
     d88:	e5933004 	ldr	r3, [r3, #4]
     d8c:	e0822003 	add	r2, r2, r3
     d90:	e51b300c 	ldr	r3, [fp, #-12]
     d94:	e5832004 	str	r2, [r3, #4]
     d98:	e51b3008 	ldr	r3, [fp, #-8]
     d9c:	e5933000 	ldr	r3, [r3]
     da0:	e5932000 	ldr	r2, [r3]
     da4:	e51b300c 	ldr	r3, [fp, #-12]
     da8:	e5832000 	str	r2, [r3]
     dac:	ea000003 	b	dc0 <free+0x100>
     db0:	e51b3008 	ldr	r3, [fp, #-8]
     db4:	e5932000 	ldr	r2, [r3]
     db8:	e51b300c 	ldr	r3, [fp, #-12]
     dbc:	e5832000 	str	r2, [r3]
     dc0:	e51b3008 	ldr	r3, [fp, #-8]
     dc4:	e5933004 	ldr	r3, [r3, #4]
     dc8:	e1a03183 	lsl	r3, r3, #3
     dcc:	e51b2008 	ldr	r2, [fp, #-8]
     dd0:	e0823003 	add	r3, r2, r3
     dd4:	e51b200c 	ldr	r2, [fp, #-12]
     dd8:	e1520003 	cmp	r2, r3
     ddc:	1a00000b 	bne	e10 <free+0x150>
     de0:	e51b3008 	ldr	r3, [fp, #-8]
     de4:	e5932004 	ldr	r2, [r3, #4]
     de8:	e51b300c 	ldr	r3, [fp, #-12]
     dec:	e5933004 	ldr	r3, [r3, #4]
     df0:	e0822003 	add	r2, r2, r3
     df4:	e51b3008 	ldr	r3, [fp, #-8]
     df8:	e5832004 	str	r2, [r3, #4]
     dfc:	e51b300c 	ldr	r3, [fp, #-12]
     e00:	e5932000 	ldr	r2, [r3]
     e04:	e51b3008 	ldr	r3, [fp, #-8]
     e08:	e5832000 	str	r2, [r3]
     e0c:	ea000002 	b	e1c <free+0x15c>
     e10:	e51b3008 	ldr	r3, [fp, #-8]
     e14:	e51b200c 	ldr	r2, [fp, #-12]
     e18:	e5832000 	str	r2, [r3]
     e1c:	e59f2014 	ldr	r2, [pc, #20]	@ e38 <free+0x178>
     e20:	e51b3008 	ldr	r3, [fp, #-8]
     e24:	e5823000 	str	r3, [r2]
     e28:	e1a00000 	nop			@ (mov r0, r0)
     e2c:	e28bd000 	add	sp, fp, #0
     e30:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     e34:	e12fff1e 	bx	lr
     e38:	00001180 	.word	0x00001180

00000e3c <morecore>:
     e3c:	e92d4800 	push	{fp, lr}
     e40:	e28db004 	add	fp, sp, #4
     e44:	e24dd010 	sub	sp, sp, #16
     e48:	e50b0010 	str	r0, [fp, #-16]
     e4c:	e51b3010 	ldr	r3, [fp, #-16]
     e50:	e3530a01 	cmp	r3, #4096	@ 0x1000
     e54:	2a000001 	bcs	e60 <morecore+0x24>
     e58:	e3a03a01 	mov	r3, #4096	@ 0x1000
     e5c:	e50b3010 	str	r3, [fp, #-16]
     e60:	e51b3010 	ldr	r3, [fp, #-16]
     e64:	e1a03183 	lsl	r3, r3, #3
     e68:	e1a00003 	mov	r0, r3
     e6c:	ebfffe61 	bl	7f8 <sbrk>
     e70:	e50b0008 	str	r0, [fp, #-8]
     e74:	e51b3008 	ldr	r3, [fp, #-8]
     e78:	e3730001 	cmn	r3, #1
     e7c:	1a000001 	bne	e88 <morecore+0x4c>
     e80:	e3a03000 	mov	r3, #0
     e84:	ea00000a 	b	eb4 <morecore+0x78>
     e88:	e51b3008 	ldr	r3, [fp, #-8]
     e8c:	e50b300c 	str	r3, [fp, #-12]
     e90:	e51b300c 	ldr	r3, [fp, #-12]
     e94:	e51b2010 	ldr	r2, [fp, #-16]
     e98:	e5832004 	str	r2, [r3, #4]
     e9c:	e51b300c 	ldr	r3, [fp, #-12]
     ea0:	e2833008 	add	r3, r3, #8
     ea4:	e1a00003 	mov	r0, r3
     ea8:	ebffff84 	bl	cc0 <free>
     eac:	e59f300c 	ldr	r3, [pc, #12]	@ ec0 <morecore+0x84>
     eb0:	e5933000 	ldr	r3, [r3]
     eb4:	e1a00003 	mov	r0, r3
     eb8:	e24bd004 	sub	sp, fp, #4
     ebc:	e8bd8800 	pop	{fp, pc}
     ec0:	00001180 	.word	0x00001180

00000ec4 <malloc>:
     ec4:	e92d4800 	push	{fp, lr}
     ec8:	e28db004 	add	fp, sp, #4
     ecc:	e24dd018 	sub	sp, sp, #24
     ed0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     ed4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ed8:	e2833007 	add	r3, r3, #7
     edc:	e1a031a3 	lsr	r3, r3, #3
     ee0:	e2833001 	add	r3, r3, #1
     ee4:	e50b3010 	str	r3, [fp, #-16]
     ee8:	e59f3134 	ldr	r3, [pc, #308]	@ 1024 <malloc+0x160>
     eec:	e5933000 	ldr	r3, [r3]
     ef0:	e50b300c 	str	r3, [fp, #-12]
     ef4:	e51b300c 	ldr	r3, [fp, #-12]
     ef8:	e3530000 	cmp	r3, #0
     efc:	1a00000b 	bne	f30 <malloc+0x6c>
     f00:	e59f3120 	ldr	r3, [pc, #288]	@ 1028 <malloc+0x164>
     f04:	e50b300c 	str	r3, [fp, #-12]
     f08:	e59f2114 	ldr	r2, [pc, #276]	@ 1024 <malloc+0x160>
     f0c:	e51b300c 	ldr	r3, [fp, #-12]
     f10:	e5823000 	str	r3, [r2]
     f14:	e59f3108 	ldr	r3, [pc, #264]	@ 1024 <malloc+0x160>
     f18:	e5933000 	ldr	r3, [r3]
     f1c:	e59f2104 	ldr	r2, [pc, #260]	@ 1028 <malloc+0x164>
     f20:	e5823000 	str	r3, [r2]
     f24:	e59f30fc 	ldr	r3, [pc, #252]	@ 1028 <malloc+0x164>
     f28:	e3a02000 	mov	r2, #0
     f2c:	e5832004 	str	r2, [r3, #4]
     f30:	e51b300c 	ldr	r3, [fp, #-12]
     f34:	e5933000 	ldr	r3, [r3]
     f38:	e50b3008 	str	r3, [fp, #-8]
     f3c:	e51b3008 	ldr	r3, [fp, #-8]
     f40:	e5933004 	ldr	r3, [r3, #4]
     f44:	e51b2010 	ldr	r2, [fp, #-16]
     f48:	e1520003 	cmp	r2, r3
     f4c:	8a00001e 	bhi	fcc <malloc+0x108>
     f50:	e51b3008 	ldr	r3, [fp, #-8]
     f54:	e5933004 	ldr	r3, [r3, #4]
     f58:	e51b2010 	ldr	r2, [fp, #-16]
     f5c:	e1520003 	cmp	r2, r3
     f60:	1a000004 	bne	f78 <malloc+0xb4>
     f64:	e51b3008 	ldr	r3, [fp, #-8]
     f68:	e5932000 	ldr	r2, [r3]
     f6c:	e51b300c 	ldr	r3, [fp, #-12]
     f70:	e5832000 	str	r2, [r3]
     f74:	ea00000e 	b	fb4 <malloc+0xf0>
     f78:	e51b3008 	ldr	r3, [fp, #-8]
     f7c:	e5932004 	ldr	r2, [r3, #4]
     f80:	e51b3010 	ldr	r3, [fp, #-16]
     f84:	e0422003 	sub	r2, r2, r3
     f88:	e51b3008 	ldr	r3, [fp, #-8]
     f8c:	e5832004 	str	r2, [r3, #4]
     f90:	e51b3008 	ldr	r3, [fp, #-8]
     f94:	e5933004 	ldr	r3, [r3, #4]
     f98:	e1a03183 	lsl	r3, r3, #3
     f9c:	e51b2008 	ldr	r2, [fp, #-8]
     fa0:	e0823003 	add	r3, r2, r3
     fa4:	e50b3008 	str	r3, [fp, #-8]
     fa8:	e51b3008 	ldr	r3, [fp, #-8]
     fac:	e51b2010 	ldr	r2, [fp, #-16]
     fb0:	e5832004 	str	r2, [r3, #4]
     fb4:	e59f2068 	ldr	r2, [pc, #104]	@ 1024 <malloc+0x160>
     fb8:	e51b300c 	ldr	r3, [fp, #-12]
     fbc:	e5823000 	str	r3, [r2]
     fc0:	e51b3008 	ldr	r3, [fp, #-8]
     fc4:	e2833008 	add	r3, r3, #8
     fc8:	ea000012 	b	1018 <malloc+0x154>
     fcc:	e59f3050 	ldr	r3, [pc, #80]	@ 1024 <malloc+0x160>
     fd0:	e5933000 	ldr	r3, [r3]
     fd4:	e51b2008 	ldr	r2, [fp, #-8]
     fd8:	e1520003 	cmp	r2, r3
     fdc:	1a000007 	bne	1000 <malloc+0x13c>
     fe0:	e51b0010 	ldr	r0, [fp, #-16]
     fe4:	ebffff94 	bl	e3c <morecore>
     fe8:	e50b0008 	str	r0, [fp, #-8]
     fec:	e51b3008 	ldr	r3, [fp, #-8]
     ff0:	e3530000 	cmp	r3, #0
     ff4:	1a000001 	bne	1000 <malloc+0x13c>
     ff8:	e3a03000 	mov	r3, #0
     ffc:	ea000005 	b	1018 <malloc+0x154>
    1000:	e51b3008 	ldr	r3, [fp, #-8]
    1004:	e50b300c 	str	r3, [fp, #-12]
    1008:	e51b3008 	ldr	r3, [fp, #-8]
    100c:	e5933000 	ldr	r3, [r3]
    1010:	e50b3008 	str	r3, [fp, #-8]
    1014:	eaffffc8 	b	f3c <malloc+0x78>
    1018:	e1a00003 	mov	r0, r3
    101c:	e24bd004 	sub	sp, fp, #4
    1020:	e8bd8800 	pop	{fp, pc}
    1024:	00001180 	.word	0x00001180
    1028:	00001178 	.word	0x00001178

0000102c <__udivsi3>:
    102c:	e2512001 	subs	r2, r1, #1
    1030:	012fff1e 	bxeq	lr
    1034:	3a000036 	bcc	1114 <__udivsi3+0xe8>
    1038:	e1500001 	cmp	r0, r1
    103c:	9a000022 	bls	10cc <__udivsi3+0xa0>
    1040:	e1110002 	tst	r1, r2
    1044:	0a000023 	beq	10d8 <__udivsi3+0xac>
    1048:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    104c:	01a01181 	lsleq	r1, r1, #3
    1050:	03a03008 	moveq	r3, #8
    1054:	13a03001 	movne	r3, #1
    1058:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    105c:	31510000 	cmpcc	r1, r0
    1060:	31a01201 	lslcc	r1, r1, #4
    1064:	31a03203 	lslcc	r3, r3, #4
    1068:	3afffffa 	bcc	1058 <__udivsi3+0x2c>
    106c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1070:	31510000 	cmpcc	r1, r0
    1074:	31a01081 	lslcc	r1, r1, #1
    1078:	31a03083 	lslcc	r3, r3, #1
    107c:	3afffffa 	bcc	106c <__udivsi3+0x40>
    1080:	e3a02000 	mov	r2, #0
    1084:	e1500001 	cmp	r0, r1
    1088:	20400001 	subcs	r0, r0, r1
    108c:	21822003 	orrcs	r2, r2, r3
    1090:	e15000a1 	cmp	r0, r1, lsr #1
    1094:	204000a1 	subcs	r0, r0, r1, lsr #1
    1098:	218220a3 	orrcs	r2, r2, r3, lsr #1
    109c:	e1500121 	cmp	r0, r1, lsr #2
    10a0:	20400121 	subcs	r0, r0, r1, lsr #2
    10a4:	21822123 	orrcs	r2, r2, r3, lsr #2
    10a8:	e15001a1 	cmp	r0, r1, lsr #3
    10ac:	204001a1 	subcs	r0, r0, r1, lsr #3
    10b0:	218221a3 	orrcs	r2, r2, r3, lsr #3
    10b4:	e3500000 	cmp	r0, #0
    10b8:	11b03223 	lsrsne	r3, r3, #4
    10bc:	11a01221 	lsrne	r1, r1, #4
    10c0:	1affffef 	bne	1084 <__udivsi3+0x58>
    10c4:	e1a00002 	mov	r0, r2
    10c8:	e12fff1e 	bx	lr
    10cc:	03a00001 	moveq	r0, #1
    10d0:	13a00000 	movne	r0, #0
    10d4:	e12fff1e 	bx	lr
    10d8:	e3510801 	cmp	r1, #65536	@ 0x10000
    10dc:	21a01821 	lsrcs	r1, r1, #16
    10e0:	23a02010 	movcs	r2, #16
    10e4:	33a02000 	movcc	r2, #0
    10e8:	e3510c01 	cmp	r1, #256	@ 0x100
    10ec:	21a01421 	lsrcs	r1, r1, #8
    10f0:	22822008 	addcs	r2, r2, #8
    10f4:	e3510010 	cmp	r1, #16
    10f8:	21a01221 	lsrcs	r1, r1, #4
    10fc:	22822004 	addcs	r2, r2, #4
    1100:	e3510004 	cmp	r1, #4
    1104:	82822003 	addhi	r2, r2, #3
    1108:	908220a1 	addls	r2, r2, r1, lsr #1
    110c:	e1a00230 	lsr	r0, r0, r2
    1110:	e12fff1e 	bx	lr
    1114:	e3500000 	cmp	r0, #0
    1118:	13e00000 	mvnne	r0, #0
    111c:	ea000007 	b	1140 <__aeabi_idiv0>

00001120 <__aeabi_uidivmod>:
    1120:	e3510000 	cmp	r1, #0
    1124:	0afffffa 	beq	1114 <__udivsi3+0xe8>
    1128:	e92d4003 	push	{r0, r1, lr}
    112c:	ebffffbe 	bl	102c <__udivsi3>
    1130:	e8bd4006 	pop	{r1, r2, lr}
    1134:	e0030092 	mul	r3, r2, r0
    1138:	e0411003 	sub	r1, r1, r3
    113c:	e12fff1e 	bx	lr

00001140 <__aeabi_idiv0>:
    1140:	e12fff1e 	bx	lr
