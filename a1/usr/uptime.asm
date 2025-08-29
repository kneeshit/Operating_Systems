
_uptime:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	eb00020f 	bl	850 <uptime>
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
      70:	eb000264 	bl	a08 <printf>
      74:	eb00014a 	bl	5a4 <exit>
      78:	66666667 	.word	0x66666667
      7c:	000010c4 	.word	0x000010c4

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
     374:	eb0000a5 	bl	610 <read>
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
     41c:	eb0000a8 	bl	6c4 <open>
     420:	e50b0008 	str	r0, [fp, #-8]
     424:	e51b3008 	ldr	r3, [fp, #-8]
     428:	e3530000 	cmp	r3, #0
     42c:	aa000001 	bge	438 <stat+0x38>
     430:	e3e03000 	mvn	r3, #0
     434:	ea000006 	b	454 <stat+0x54>
     438:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     43c:	e51b0008 	ldr	r0, [fp, #-8]
     440:	eb0000ba 	bl	730 <fstat>
     444:	e50b000c 	str	r0, [fp, #-12]
     448:	e51b0008 	ldr	r0, [fp, #-8]
     44c:	eb000081 	bl	658 <close>
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
     4d8:	e353002f 	cmp	r3, #47	@ 0x2f
     4dc:	9a000003 	bls	4f0 <atoi+0x90>
     4e0:	e51b3010 	ldr	r3, [fp, #-16]
     4e4:	e5d33000 	ldrb	r3, [r3]
     4e8:	e3530039 	cmp	r3, #57	@ 0x39
     4ec:	9a000001 	bls	4f8 <atoi+0x98>
     4f0:	e3e03000 	mvn	r3, #0
     4f4:	ea000000 	b	4fc <atoi+0x9c>
     4f8:	e51b3008 	ldr	r3, [fp, #-8]
     4fc:	e1a00003 	mov	r0, r3
     500:	e28bd000 	add	sp, fp, #0
     504:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     508:	e12fff1e 	bx	lr

0000050c <memmove>:
     50c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     510:	e28db000 	add	fp, sp, #0
     514:	e24dd01c 	sub	sp, sp, #28
     518:	e50b0010 	str	r0, [fp, #-16]
     51c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     520:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     524:	e51b3010 	ldr	r3, [fp, #-16]
     528:	e50b3008 	str	r3, [fp, #-8]
     52c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     530:	e50b300c 	str	r3, [fp, #-12]
     534:	ea000007 	b	558 <memmove+0x4c>
     538:	e51b200c 	ldr	r2, [fp, #-12]
     53c:	e2823001 	add	r3, r2, #1
     540:	e50b300c 	str	r3, [fp, #-12]
     544:	e51b3008 	ldr	r3, [fp, #-8]
     548:	e2831001 	add	r1, r3, #1
     54c:	e50b1008 	str	r1, [fp, #-8]
     550:	e5d22000 	ldrb	r2, [r2]
     554:	e5c32000 	strb	r2, [r3]
     558:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     55c:	e2432001 	sub	r2, r3, #1
     560:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     564:	e3530000 	cmp	r3, #0
     568:	cafffff2 	bgt	538 <memmove+0x2c>
     56c:	e51b3010 	ldr	r3, [fp, #-16]
     570:	e1a00003 	mov	r0, r3
     574:	e28bd000 	add	sp, fp, #0
     578:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     57c:	e12fff1e 	bx	lr

00000580 <fork>:
     580:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     584:	e1a04003 	mov	r4, r3
     588:	e1a03002 	mov	r3, r2
     58c:	e1a02001 	mov	r2, r1
     590:	e1a01000 	mov	r1, r0
     594:	e3a00001 	mov	r0, #1
     598:	ef000000 	svc	0x00000000
     59c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5a0:	e12fff1e 	bx	lr

000005a4 <exit>:
     5a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5a8:	e1a04003 	mov	r4, r3
     5ac:	e1a03002 	mov	r3, r2
     5b0:	e1a02001 	mov	r2, r1
     5b4:	e1a01000 	mov	r1, r0
     5b8:	e3a00002 	mov	r0, #2
     5bc:	ef000000 	svc	0x00000000
     5c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5c4:	e12fff1e 	bx	lr

000005c8 <wait>:
     5c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5cc:	e1a04003 	mov	r4, r3
     5d0:	e1a03002 	mov	r3, r2
     5d4:	e1a02001 	mov	r2, r1
     5d8:	e1a01000 	mov	r1, r0
     5dc:	e3a00003 	mov	r0, #3
     5e0:	ef000000 	svc	0x00000000
     5e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5e8:	e12fff1e 	bx	lr

000005ec <pipe>:
     5ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5f0:	e1a04003 	mov	r4, r3
     5f4:	e1a03002 	mov	r3, r2
     5f8:	e1a02001 	mov	r2, r1
     5fc:	e1a01000 	mov	r1, r0
     600:	e3a00004 	mov	r0, #4
     604:	ef000000 	svc	0x00000000
     608:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     60c:	e12fff1e 	bx	lr

00000610 <read>:
     610:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     614:	e1a04003 	mov	r4, r3
     618:	e1a03002 	mov	r3, r2
     61c:	e1a02001 	mov	r2, r1
     620:	e1a01000 	mov	r1, r0
     624:	e3a00005 	mov	r0, #5
     628:	ef000000 	svc	0x00000000
     62c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     630:	e12fff1e 	bx	lr

00000634 <write>:
     634:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     638:	e1a04003 	mov	r4, r3
     63c:	e1a03002 	mov	r3, r2
     640:	e1a02001 	mov	r2, r1
     644:	e1a01000 	mov	r1, r0
     648:	e3a00010 	mov	r0, #16
     64c:	ef000000 	svc	0x00000000
     650:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     654:	e12fff1e 	bx	lr

00000658 <close>:
     658:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     65c:	e1a04003 	mov	r4, r3
     660:	e1a03002 	mov	r3, r2
     664:	e1a02001 	mov	r2, r1
     668:	e1a01000 	mov	r1, r0
     66c:	e3a00015 	mov	r0, #21
     670:	ef000000 	svc	0x00000000
     674:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     678:	e12fff1e 	bx	lr

0000067c <kill>:
     67c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     680:	e1a04003 	mov	r4, r3
     684:	e1a03002 	mov	r3, r2
     688:	e1a02001 	mov	r2, r1
     68c:	e1a01000 	mov	r1, r0
     690:	e3a00006 	mov	r0, #6
     694:	ef000000 	svc	0x00000000
     698:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     69c:	e12fff1e 	bx	lr

000006a0 <exec>:
     6a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6a4:	e1a04003 	mov	r4, r3
     6a8:	e1a03002 	mov	r3, r2
     6ac:	e1a02001 	mov	r2, r1
     6b0:	e1a01000 	mov	r1, r0
     6b4:	e3a00007 	mov	r0, #7
     6b8:	ef000000 	svc	0x00000000
     6bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6c0:	e12fff1e 	bx	lr

000006c4 <open>:
     6c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6c8:	e1a04003 	mov	r4, r3
     6cc:	e1a03002 	mov	r3, r2
     6d0:	e1a02001 	mov	r2, r1
     6d4:	e1a01000 	mov	r1, r0
     6d8:	e3a0000f 	mov	r0, #15
     6dc:	ef000000 	svc	0x00000000
     6e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6e4:	e12fff1e 	bx	lr

000006e8 <mknod>:
     6e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6ec:	e1a04003 	mov	r4, r3
     6f0:	e1a03002 	mov	r3, r2
     6f4:	e1a02001 	mov	r2, r1
     6f8:	e1a01000 	mov	r1, r0
     6fc:	e3a00011 	mov	r0, #17
     700:	ef000000 	svc	0x00000000
     704:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     708:	e12fff1e 	bx	lr

0000070c <unlink>:
     70c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     710:	e1a04003 	mov	r4, r3
     714:	e1a03002 	mov	r3, r2
     718:	e1a02001 	mov	r2, r1
     71c:	e1a01000 	mov	r1, r0
     720:	e3a00012 	mov	r0, #18
     724:	ef000000 	svc	0x00000000
     728:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     72c:	e12fff1e 	bx	lr

00000730 <fstat>:
     730:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     734:	e1a04003 	mov	r4, r3
     738:	e1a03002 	mov	r3, r2
     73c:	e1a02001 	mov	r2, r1
     740:	e1a01000 	mov	r1, r0
     744:	e3a00008 	mov	r0, #8
     748:	ef000000 	svc	0x00000000
     74c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     750:	e12fff1e 	bx	lr

00000754 <link>:
     754:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     758:	e1a04003 	mov	r4, r3
     75c:	e1a03002 	mov	r3, r2
     760:	e1a02001 	mov	r2, r1
     764:	e1a01000 	mov	r1, r0
     768:	e3a00013 	mov	r0, #19
     76c:	ef000000 	svc	0x00000000
     770:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     774:	e12fff1e 	bx	lr

00000778 <mkdir>:
     778:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     77c:	e1a04003 	mov	r4, r3
     780:	e1a03002 	mov	r3, r2
     784:	e1a02001 	mov	r2, r1
     788:	e1a01000 	mov	r1, r0
     78c:	e3a00014 	mov	r0, #20
     790:	ef000000 	svc	0x00000000
     794:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     798:	e12fff1e 	bx	lr

0000079c <chdir>:
     79c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7a0:	e1a04003 	mov	r4, r3
     7a4:	e1a03002 	mov	r3, r2
     7a8:	e1a02001 	mov	r2, r1
     7ac:	e1a01000 	mov	r1, r0
     7b0:	e3a00009 	mov	r0, #9
     7b4:	ef000000 	svc	0x00000000
     7b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7bc:	e12fff1e 	bx	lr

000007c0 <dup>:
     7c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7c4:	e1a04003 	mov	r4, r3
     7c8:	e1a03002 	mov	r3, r2
     7cc:	e1a02001 	mov	r2, r1
     7d0:	e1a01000 	mov	r1, r0
     7d4:	e3a0000a 	mov	r0, #10
     7d8:	ef000000 	svc	0x00000000
     7dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7e0:	e12fff1e 	bx	lr

000007e4 <getpid>:
     7e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7e8:	e1a04003 	mov	r4, r3
     7ec:	e1a03002 	mov	r3, r2
     7f0:	e1a02001 	mov	r2, r1
     7f4:	e1a01000 	mov	r1, r0
     7f8:	e3a0000b 	mov	r0, #11
     7fc:	ef000000 	svc	0x00000000
     800:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     804:	e12fff1e 	bx	lr

00000808 <sbrk>:
     808:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     80c:	e1a04003 	mov	r4, r3
     810:	e1a03002 	mov	r3, r2
     814:	e1a02001 	mov	r2, r1
     818:	e1a01000 	mov	r1, r0
     81c:	e3a0000c 	mov	r0, #12
     820:	ef000000 	svc	0x00000000
     824:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     828:	e12fff1e 	bx	lr

0000082c <sleep>:
     82c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     830:	e1a04003 	mov	r4, r3
     834:	e1a03002 	mov	r3, r2
     838:	e1a02001 	mov	r2, r1
     83c:	e1a01000 	mov	r1, r0
     840:	e3a0000d 	mov	r0, #13
     844:	ef000000 	svc	0x00000000
     848:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     84c:	e12fff1e 	bx	lr

00000850 <uptime>:
     850:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     854:	e1a04003 	mov	r4, r3
     858:	e1a03002 	mov	r3, r2
     85c:	e1a02001 	mov	r2, r1
     860:	e1a01000 	mov	r1, r0
     864:	e3a0000e 	mov	r0, #14
     868:	ef000000 	svc	0x00000000
     86c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     870:	e12fff1e 	bx	lr

00000874 <getprocs>:
     874:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     878:	e1a04003 	mov	r4, r3
     87c:	e1a03002 	mov	r3, r2
     880:	e1a02001 	mov	r2, r1
     884:	e1a01000 	mov	r1, r0
     888:	e3a00016 	mov	r0, #22
     88c:	ef000000 	svc	0x00000000
     890:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     894:	e12fff1e 	bx	lr

00000898 <putc>:
     898:	e92d4800 	push	{fp, lr}
     89c:	e28db004 	add	fp, sp, #4
     8a0:	e24dd008 	sub	sp, sp, #8
     8a4:	e50b0008 	str	r0, [fp, #-8]
     8a8:	e1a03001 	mov	r3, r1
     8ac:	e54b3009 	strb	r3, [fp, #-9]
     8b0:	e24b3009 	sub	r3, fp, #9
     8b4:	e3a02001 	mov	r2, #1
     8b8:	e1a01003 	mov	r1, r3
     8bc:	e51b0008 	ldr	r0, [fp, #-8]
     8c0:	ebffff5b 	bl	634 <write>
     8c4:	e1a00000 	nop			@ (mov r0, r0)
     8c8:	e24bd004 	sub	sp, fp, #4
     8cc:	e8bd8800 	pop	{fp, pc}

000008d0 <printint>:
     8d0:	e92d4800 	push	{fp, lr}
     8d4:	e28db004 	add	fp, sp, #4
     8d8:	e24dd030 	sub	sp, sp, #48	@ 0x30
     8dc:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     8e0:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     8e4:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     8e8:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     8ec:	e3a03000 	mov	r3, #0
     8f0:	e50b300c 	str	r3, [fp, #-12]
     8f4:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     8f8:	e3530000 	cmp	r3, #0
     8fc:	0a000008 	beq	924 <printint+0x54>
     900:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     904:	e3530000 	cmp	r3, #0
     908:	aa000005 	bge	924 <printint+0x54>
     90c:	e3a03001 	mov	r3, #1
     910:	e50b300c 	str	r3, [fp, #-12]
     914:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     918:	e2633000 	rsb	r3, r3, #0
     91c:	e50b3010 	str	r3, [fp, #-16]
     920:	ea000001 	b	92c <printint+0x5c>
     924:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     928:	e50b3010 	str	r3, [fp, #-16]
     92c:	e3a03000 	mov	r3, #0
     930:	e50b3008 	str	r3, [fp, #-8]
     934:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     938:	e51b3010 	ldr	r3, [fp, #-16]
     93c:	e1a01002 	mov	r1, r2
     940:	e1a00003 	mov	r0, r3
     944:	eb0001d5 	bl	10a0 <__aeabi_uidivmod>
     948:	e1a03001 	mov	r3, r1
     94c:	e1a01003 	mov	r1, r3
     950:	e51b3008 	ldr	r3, [fp, #-8]
     954:	e2832001 	add	r2, r3, #1
     958:	e50b2008 	str	r2, [fp, #-8]
     95c:	e59f20a0 	ldr	r2, [pc, #160]	@ a04 <printint+0x134>
     960:	e7d22001 	ldrb	r2, [r2, r1]
     964:	e2433004 	sub	r3, r3, #4
     968:	e083300b 	add	r3, r3, fp
     96c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     970:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     974:	e1a01003 	mov	r1, r3
     978:	e51b0010 	ldr	r0, [fp, #-16]
     97c:	eb00018a 	bl	fac <__udivsi3>
     980:	e1a03000 	mov	r3, r0
     984:	e50b3010 	str	r3, [fp, #-16]
     988:	e51b3010 	ldr	r3, [fp, #-16]
     98c:	e3530000 	cmp	r3, #0
     990:	1affffe7 	bne	934 <printint+0x64>
     994:	e51b300c 	ldr	r3, [fp, #-12]
     998:	e3530000 	cmp	r3, #0
     99c:	0a00000e 	beq	9dc <printint+0x10c>
     9a0:	e51b3008 	ldr	r3, [fp, #-8]
     9a4:	e2832001 	add	r2, r3, #1
     9a8:	e50b2008 	str	r2, [fp, #-8]
     9ac:	e2433004 	sub	r3, r3, #4
     9b0:	e083300b 	add	r3, r3, fp
     9b4:	e3a0202d 	mov	r2, #45	@ 0x2d
     9b8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     9bc:	ea000006 	b	9dc <printint+0x10c>
     9c0:	e24b2020 	sub	r2, fp, #32
     9c4:	e51b3008 	ldr	r3, [fp, #-8]
     9c8:	e0823003 	add	r3, r2, r3
     9cc:	e5d33000 	ldrb	r3, [r3]
     9d0:	e1a01003 	mov	r1, r3
     9d4:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     9d8:	ebffffae 	bl	898 <putc>
     9dc:	e51b3008 	ldr	r3, [fp, #-8]
     9e0:	e2433001 	sub	r3, r3, #1
     9e4:	e50b3008 	str	r3, [fp, #-8]
     9e8:	e51b3008 	ldr	r3, [fp, #-8]
     9ec:	e3530000 	cmp	r3, #0
     9f0:	aafffff2 	bge	9c0 <printint+0xf0>
     9f4:	e1a00000 	nop			@ (mov r0, r0)
     9f8:	e1a00000 	nop			@ (mov r0, r0)
     9fc:	e24bd004 	sub	sp, fp, #4
     a00:	e8bd8800 	pop	{fp, pc}
     a04:	000010e4 	.word	0x000010e4

00000a08 <printf>:
     a08:	e92d000e 	push	{r1, r2, r3}
     a0c:	e92d4800 	push	{fp, lr}
     a10:	e28db004 	add	fp, sp, #4
     a14:	e24dd024 	sub	sp, sp, #36	@ 0x24
     a18:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     a1c:	e3a03000 	mov	r3, #0
     a20:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a24:	e28b3008 	add	r3, fp, #8
     a28:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a2c:	e3a03000 	mov	r3, #0
     a30:	e50b3010 	str	r3, [fp, #-16]
     a34:	ea000074 	b	c0c <printf+0x204>
     a38:	e59b2004 	ldr	r2, [fp, #4]
     a3c:	e51b3010 	ldr	r3, [fp, #-16]
     a40:	e0823003 	add	r3, r2, r3
     a44:	e5d33000 	ldrb	r3, [r3]
     a48:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     a4c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a50:	e3530000 	cmp	r3, #0
     a54:	1a00000b 	bne	a88 <printf+0x80>
     a58:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a5c:	e3530025 	cmp	r3, #37	@ 0x25
     a60:	1a000002 	bne	a70 <printf+0x68>
     a64:	e3a03025 	mov	r3, #37	@ 0x25
     a68:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a6c:	ea000063 	b	c00 <printf+0x1f8>
     a70:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a74:	e6ef3073 	uxtb	r3, r3
     a78:	e1a01003 	mov	r1, r3
     a7c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     a80:	ebffff84 	bl	898 <putc>
     a84:	ea00005d 	b	c00 <printf+0x1f8>
     a88:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a8c:	e3530025 	cmp	r3, #37	@ 0x25
     a90:	1a00005a 	bne	c00 <printf+0x1f8>
     a94:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a98:	e3530064 	cmp	r3, #100	@ 0x64
     a9c:	1a00000a 	bne	acc <printf+0xc4>
     aa0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     aa4:	e5933000 	ldr	r3, [r3]
     aa8:	e1a01003 	mov	r1, r3
     aac:	e3a03001 	mov	r3, #1
     ab0:	e3a0200a 	mov	r2, #10
     ab4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ab8:	ebffff84 	bl	8d0 <printint>
     abc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ac0:	e2833004 	add	r3, r3, #4
     ac4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ac8:	ea00004a 	b	bf8 <printf+0x1f0>
     acc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ad0:	e3530078 	cmp	r3, #120	@ 0x78
     ad4:	0a000002 	beq	ae4 <printf+0xdc>
     ad8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     adc:	e3530070 	cmp	r3, #112	@ 0x70
     ae0:	1a00000a 	bne	b10 <printf+0x108>
     ae4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ae8:	e5933000 	ldr	r3, [r3]
     aec:	e1a01003 	mov	r1, r3
     af0:	e3a03000 	mov	r3, #0
     af4:	e3a02010 	mov	r2, #16
     af8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     afc:	ebffff73 	bl	8d0 <printint>
     b00:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b04:	e2833004 	add	r3, r3, #4
     b08:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b0c:	ea000039 	b	bf8 <printf+0x1f0>
     b10:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b14:	e3530073 	cmp	r3, #115	@ 0x73
     b18:	1a000018 	bne	b80 <printf+0x178>
     b1c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b20:	e5933000 	ldr	r3, [r3]
     b24:	e50b300c 	str	r3, [fp, #-12]
     b28:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b2c:	e2833004 	add	r3, r3, #4
     b30:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b34:	e51b300c 	ldr	r3, [fp, #-12]
     b38:	e3530000 	cmp	r3, #0
     b3c:	1a00000a 	bne	b6c <printf+0x164>
     b40:	e59f30f4 	ldr	r3, [pc, #244]	@ c3c <printf+0x234>
     b44:	e50b300c 	str	r3, [fp, #-12]
     b48:	ea000007 	b	b6c <printf+0x164>
     b4c:	e51b300c 	ldr	r3, [fp, #-12]
     b50:	e5d33000 	ldrb	r3, [r3]
     b54:	e1a01003 	mov	r1, r3
     b58:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b5c:	ebffff4d 	bl	898 <putc>
     b60:	e51b300c 	ldr	r3, [fp, #-12]
     b64:	e2833001 	add	r3, r3, #1
     b68:	e50b300c 	str	r3, [fp, #-12]
     b6c:	e51b300c 	ldr	r3, [fp, #-12]
     b70:	e5d33000 	ldrb	r3, [r3]
     b74:	e3530000 	cmp	r3, #0
     b78:	1afffff3 	bne	b4c <printf+0x144>
     b7c:	ea00001d 	b	bf8 <printf+0x1f0>
     b80:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b84:	e3530063 	cmp	r3, #99	@ 0x63
     b88:	1a000009 	bne	bb4 <printf+0x1ac>
     b8c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b90:	e5933000 	ldr	r3, [r3]
     b94:	e6ef3073 	uxtb	r3, r3
     b98:	e1a01003 	mov	r1, r3
     b9c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ba0:	ebffff3c 	bl	898 <putc>
     ba4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ba8:	e2833004 	add	r3, r3, #4
     bac:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bb0:	ea000010 	b	bf8 <printf+0x1f0>
     bb4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bb8:	e3530025 	cmp	r3, #37	@ 0x25
     bbc:	1a000005 	bne	bd8 <printf+0x1d0>
     bc0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bc4:	e6ef3073 	uxtb	r3, r3
     bc8:	e1a01003 	mov	r1, r3
     bcc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bd0:	ebffff30 	bl	898 <putc>
     bd4:	ea000007 	b	bf8 <printf+0x1f0>
     bd8:	e3a01025 	mov	r1, #37	@ 0x25
     bdc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     be0:	ebffff2c 	bl	898 <putc>
     be4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     be8:	e6ef3073 	uxtb	r3, r3
     bec:	e1a01003 	mov	r1, r3
     bf0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bf4:	ebffff27 	bl	898 <putc>
     bf8:	e3a03000 	mov	r3, #0
     bfc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c00:	e51b3010 	ldr	r3, [fp, #-16]
     c04:	e2833001 	add	r3, r3, #1
     c08:	e50b3010 	str	r3, [fp, #-16]
     c0c:	e59b2004 	ldr	r2, [fp, #4]
     c10:	e51b3010 	ldr	r3, [fp, #-16]
     c14:	e0823003 	add	r3, r2, r3
     c18:	e5d33000 	ldrb	r3, [r3]
     c1c:	e3530000 	cmp	r3, #0
     c20:	1affff84 	bne	a38 <printf+0x30>
     c24:	e1a00000 	nop			@ (mov r0, r0)
     c28:	e1a00000 	nop			@ (mov r0, r0)
     c2c:	e24bd004 	sub	sp, fp, #4
     c30:	e8bd4800 	pop	{fp, lr}
     c34:	e28dd00c 	add	sp, sp, #12
     c38:	e12fff1e 	bx	lr
     c3c:	000010dc 	.word	0x000010dc

00000c40 <free>:
     c40:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     c44:	e28db000 	add	fp, sp, #0
     c48:	e24dd014 	sub	sp, sp, #20
     c4c:	e50b0010 	str	r0, [fp, #-16]
     c50:	e51b3010 	ldr	r3, [fp, #-16]
     c54:	e2433008 	sub	r3, r3, #8
     c58:	e50b300c 	str	r3, [fp, #-12]
     c5c:	e59f3154 	ldr	r3, [pc, #340]	@ db8 <free+0x178>
     c60:	e5933000 	ldr	r3, [r3]
     c64:	e50b3008 	str	r3, [fp, #-8]
     c68:	ea000010 	b	cb0 <free+0x70>
     c6c:	e51b3008 	ldr	r3, [fp, #-8]
     c70:	e5933000 	ldr	r3, [r3]
     c74:	e51b2008 	ldr	r2, [fp, #-8]
     c78:	e1520003 	cmp	r2, r3
     c7c:	3a000008 	bcc	ca4 <free+0x64>
     c80:	e51b200c 	ldr	r2, [fp, #-12]
     c84:	e51b3008 	ldr	r3, [fp, #-8]
     c88:	e1520003 	cmp	r2, r3
     c8c:	8a000010 	bhi	cd4 <free+0x94>
     c90:	e51b3008 	ldr	r3, [fp, #-8]
     c94:	e5933000 	ldr	r3, [r3]
     c98:	e51b200c 	ldr	r2, [fp, #-12]
     c9c:	e1520003 	cmp	r2, r3
     ca0:	3a00000b 	bcc	cd4 <free+0x94>
     ca4:	e51b3008 	ldr	r3, [fp, #-8]
     ca8:	e5933000 	ldr	r3, [r3]
     cac:	e50b3008 	str	r3, [fp, #-8]
     cb0:	e51b200c 	ldr	r2, [fp, #-12]
     cb4:	e51b3008 	ldr	r3, [fp, #-8]
     cb8:	e1520003 	cmp	r2, r3
     cbc:	9affffea 	bls	c6c <free+0x2c>
     cc0:	e51b3008 	ldr	r3, [fp, #-8]
     cc4:	e5933000 	ldr	r3, [r3]
     cc8:	e51b200c 	ldr	r2, [fp, #-12]
     ccc:	e1520003 	cmp	r2, r3
     cd0:	2affffe5 	bcs	c6c <free+0x2c>
     cd4:	e51b300c 	ldr	r3, [fp, #-12]
     cd8:	e5933004 	ldr	r3, [r3, #4]
     cdc:	e1a03183 	lsl	r3, r3, #3
     ce0:	e51b200c 	ldr	r2, [fp, #-12]
     ce4:	e0822003 	add	r2, r2, r3
     ce8:	e51b3008 	ldr	r3, [fp, #-8]
     cec:	e5933000 	ldr	r3, [r3]
     cf0:	e1520003 	cmp	r2, r3
     cf4:	1a00000d 	bne	d30 <free+0xf0>
     cf8:	e51b300c 	ldr	r3, [fp, #-12]
     cfc:	e5932004 	ldr	r2, [r3, #4]
     d00:	e51b3008 	ldr	r3, [fp, #-8]
     d04:	e5933000 	ldr	r3, [r3]
     d08:	e5933004 	ldr	r3, [r3, #4]
     d0c:	e0822003 	add	r2, r2, r3
     d10:	e51b300c 	ldr	r3, [fp, #-12]
     d14:	e5832004 	str	r2, [r3, #4]
     d18:	e51b3008 	ldr	r3, [fp, #-8]
     d1c:	e5933000 	ldr	r3, [r3]
     d20:	e5932000 	ldr	r2, [r3]
     d24:	e51b300c 	ldr	r3, [fp, #-12]
     d28:	e5832000 	str	r2, [r3]
     d2c:	ea000003 	b	d40 <free+0x100>
     d30:	e51b3008 	ldr	r3, [fp, #-8]
     d34:	e5932000 	ldr	r2, [r3]
     d38:	e51b300c 	ldr	r3, [fp, #-12]
     d3c:	e5832000 	str	r2, [r3]
     d40:	e51b3008 	ldr	r3, [fp, #-8]
     d44:	e5933004 	ldr	r3, [r3, #4]
     d48:	e1a03183 	lsl	r3, r3, #3
     d4c:	e51b2008 	ldr	r2, [fp, #-8]
     d50:	e0823003 	add	r3, r2, r3
     d54:	e51b200c 	ldr	r2, [fp, #-12]
     d58:	e1520003 	cmp	r2, r3
     d5c:	1a00000b 	bne	d90 <free+0x150>
     d60:	e51b3008 	ldr	r3, [fp, #-8]
     d64:	e5932004 	ldr	r2, [r3, #4]
     d68:	e51b300c 	ldr	r3, [fp, #-12]
     d6c:	e5933004 	ldr	r3, [r3, #4]
     d70:	e0822003 	add	r2, r2, r3
     d74:	e51b3008 	ldr	r3, [fp, #-8]
     d78:	e5832004 	str	r2, [r3, #4]
     d7c:	e51b300c 	ldr	r3, [fp, #-12]
     d80:	e5932000 	ldr	r2, [r3]
     d84:	e51b3008 	ldr	r3, [fp, #-8]
     d88:	e5832000 	str	r2, [r3]
     d8c:	ea000002 	b	d9c <free+0x15c>
     d90:	e51b3008 	ldr	r3, [fp, #-8]
     d94:	e51b200c 	ldr	r2, [fp, #-12]
     d98:	e5832000 	str	r2, [r3]
     d9c:	e59f2014 	ldr	r2, [pc, #20]	@ db8 <free+0x178>
     da0:	e51b3008 	ldr	r3, [fp, #-8]
     da4:	e5823000 	str	r3, [r2]
     da8:	e1a00000 	nop			@ (mov r0, r0)
     dac:	e28bd000 	add	sp, fp, #0
     db0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     db4:	e12fff1e 	bx	lr
     db8:	00001100 	.word	0x00001100

00000dbc <morecore>:
     dbc:	e92d4800 	push	{fp, lr}
     dc0:	e28db004 	add	fp, sp, #4
     dc4:	e24dd010 	sub	sp, sp, #16
     dc8:	e50b0010 	str	r0, [fp, #-16]
     dcc:	e51b3010 	ldr	r3, [fp, #-16]
     dd0:	e3530a01 	cmp	r3, #4096	@ 0x1000
     dd4:	2a000001 	bcs	de0 <morecore+0x24>
     dd8:	e3a03a01 	mov	r3, #4096	@ 0x1000
     ddc:	e50b3010 	str	r3, [fp, #-16]
     de0:	e51b3010 	ldr	r3, [fp, #-16]
     de4:	e1a03183 	lsl	r3, r3, #3
     de8:	e1a00003 	mov	r0, r3
     dec:	ebfffe85 	bl	808 <sbrk>
     df0:	e50b0008 	str	r0, [fp, #-8]
     df4:	e51b3008 	ldr	r3, [fp, #-8]
     df8:	e3730001 	cmn	r3, #1
     dfc:	1a000001 	bne	e08 <morecore+0x4c>
     e00:	e3a03000 	mov	r3, #0
     e04:	ea00000a 	b	e34 <morecore+0x78>
     e08:	e51b3008 	ldr	r3, [fp, #-8]
     e0c:	e50b300c 	str	r3, [fp, #-12]
     e10:	e51b300c 	ldr	r3, [fp, #-12]
     e14:	e51b2010 	ldr	r2, [fp, #-16]
     e18:	e5832004 	str	r2, [r3, #4]
     e1c:	e51b300c 	ldr	r3, [fp, #-12]
     e20:	e2833008 	add	r3, r3, #8
     e24:	e1a00003 	mov	r0, r3
     e28:	ebffff84 	bl	c40 <free>
     e2c:	e59f300c 	ldr	r3, [pc, #12]	@ e40 <morecore+0x84>
     e30:	e5933000 	ldr	r3, [r3]
     e34:	e1a00003 	mov	r0, r3
     e38:	e24bd004 	sub	sp, fp, #4
     e3c:	e8bd8800 	pop	{fp, pc}
     e40:	00001100 	.word	0x00001100

00000e44 <malloc>:
     e44:	e92d4800 	push	{fp, lr}
     e48:	e28db004 	add	fp, sp, #4
     e4c:	e24dd018 	sub	sp, sp, #24
     e50:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     e54:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e58:	e2833007 	add	r3, r3, #7
     e5c:	e1a031a3 	lsr	r3, r3, #3
     e60:	e2833001 	add	r3, r3, #1
     e64:	e50b3010 	str	r3, [fp, #-16]
     e68:	e59f3134 	ldr	r3, [pc, #308]	@ fa4 <malloc+0x160>
     e6c:	e5933000 	ldr	r3, [r3]
     e70:	e50b300c 	str	r3, [fp, #-12]
     e74:	e51b300c 	ldr	r3, [fp, #-12]
     e78:	e3530000 	cmp	r3, #0
     e7c:	1a00000b 	bne	eb0 <malloc+0x6c>
     e80:	e59f3120 	ldr	r3, [pc, #288]	@ fa8 <malloc+0x164>
     e84:	e50b300c 	str	r3, [fp, #-12]
     e88:	e59f2114 	ldr	r2, [pc, #276]	@ fa4 <malloc+0x160>
     e8c:	e51b300c 	ldr	r3, [fp, #-12]
     e90:	e5823000 	str	r3, [r2]
     e94:	e59f3108 	ldr	r3, [pc, #264]	@ fa4 <malloc+0x160>
     e98:	e5933000 	ldr	r3, [r3]
     e9c:	e59f2104 	ldr	r2, [pc, #260]	@ fa8 <malloc+0x164>
     ea0:	e5823000 	str	r3, [r2]
     ea4:	e59f30fc 	ldr	r3, [pc, #252]	@ fa8 <malloc+0x164>
     ea8:	e3a02000 	mov	r2, #0
     eac:	e5832004 	str	r2, [r3, #4]
     eb0:	e51b300c 	ldr	r3, [fp, #-12]
     eb4:	e5933000 	ldr	r3, [r3]
     eb8:	e50b3008 	str	r3, [fp, #-8]
     ebc:	e51b3008 	ldr	r3, [fp, #-8]
     ec0:	e5933004 	ldr	r3, [r3, #4]
     ec4:	e51b2010 	ldr	r2, [fp, #-16]
     ec8:	e1520003 	cmp	r2, r3
     ecc:	8a00001e 	bhi	f4c <malloc+0x108>
     ed0:	e51b3008 	ldr	r3, [fp, #-8]
     ed4:	e5933004 	ldr	r3, [r3, #4]
     ed8:	e51b2010 	ldr	r2, [fp, #-16]
     edc:	e1520003 	cmp	r2, r3
     ee0:	1a000004 	bne	ef8 <malloc+0xb4>
     ee4:	e51b3008 	ldr	r3, [fp, #-8]
     ee8:	e5932000 	ldr	r2, [r3]
     eec:	e51b300c 	ldr	r3, [fp, #-12]
     ef0:	e5832000 	str	r2, [r3]
     ef4:	ea00000e 	b	f34 <malloc+0xf0>
     ef8:	e51b3008 	ldr	r3, [fp, #-8]
     efc:	e5932004 	ldr	r2, [r3, #4]
     f00:	e51b3010 	ldr	r3, [fp, #-16]
     f04:	e0422003 	sub	r2, r2, r3
     f08:	e51b3008 	ldr	r3, [fp, #-8]
     f0c:	e5832004 	str	r2, [r3, #4]
     f10:	e51b3008 	ldr	r3, [fp, #-8]
     f14:	e5933004 	ldr	r3, [r3, #4]
     f18:	e1a03183 	lsl	r3, r3, #3
     f1c:	e51b2008 	ldr	r2, [fp, #-8]
     f20:	e0823003 	add	r3, r2, r3
     f24:	e50b3008 	str	r3, [fp, #-8]
     f28:	e51b3008 	ldr	r3, [fp, #-8]
     f2c:	e51b2010 	ldr	r2, [fp, #-16]
     f30:	e5832004 	str	r2, [r3, #4]
     f34:	e59f2068 	ldr	r2, [pc, #104]	@ fa4 <malloc+0x160>
     f38:	e51b300c 	ldr	r3, [fp, #-12]
     f3c:	e5823000 	str	r3, [r2]
     f40:	e51b3008 	ldr	r3, [fp, #-8]
     f44:	e2833008 	add	r3, r3, #8
     f48:	ea000012 	b	f98 <malloc+0x154>
     f4c:	e59f3050 	ldr	r3, [pc, #80]	@ fa4 <malloc+0x160>
     f50:	e5933000 	ldr	r3, [r3]
     f54:	e51b2008 	ldr	r2, [fp, #-8]
     f58:	e1520003 	cmp	r2, r3
     f5c:	1a000007 	bne	f80 <malloc+0x13c>
     f60:	e51b0010 	ldr	r0, [fp, #-16]
     f64:	ebffff94 	bl	dbc <morecore>
     f68:	e50b0008 	str	r0, [fp, #-8]
     f6c:	e51b3008 	ldr	r3, [fp, #-8]
     f70:	e3530000 	cmp	r3, #0
     f74:	1a000001 	bne	f80 <malloc+0x13c>
     f78:	e3a03000 	mov	r3, #0
     f7c:	ea000005 	b	f98 <malloc+0x154>
     f80:	e51b3008 	ldr	r3, [fp, #-8]
     f84:	e50b300c 	str	r3, [fp, #-12]
     f88:	e51b3008 	ldr	r3, [fp, #-8]
     f8c:	e5933000 	ldr	r3, [r3]
     f90:	e50b3008 	str	r3, [fp, #-8]
     f94:	eaffffc8 	b	ebc <malloc+0x78>
     f98:	e1a00003 	mov	r0, r3
     f9c:	e24bd004 	sub	sp, fp, #4
     fa0:	e8bd8800 	pop	{fp, pc}
     fa4:	00001100 	.word	0x00001100
     fa8:	000010f8 	.word	0x000010f8

00000fac <__udivsi3>:
     fac:	e2512001 	subs	r2, r1, #1
     fb0:	012fff1e 	bxeq	lr
     fb4:	3a000036 	bcc	1094 <__udivsi3+0xe8>
     fb8:	e1500001 	cmp	r0, r1
     fbc:	9a000022 	bls	104c <__udivsi3+0xa0>
     fc0:	e1110002 	tst	r1, r2
     fc4:	0a000023 	beq	1058 <__udivsi3+0xac>
     fc8:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
     fcc:	01a01181 	lsleq	r1, r1, #3
     fd0:	03a03008 	moveq	r3, #8
     fd4:	13a03001 	movne	r3, #1
     fd8:	e3510201 	cmp	r1, #268435456	@ 0x10000000
     fdc:	31510000 	cmpcc	r1, r0
     fe0:	31a01201 	lslcc	r1, r1, #4
     fe4:	31a03203 	lslcc	r3, r3, #4
     fe8:	3afffffa 	bcc	fd8 <__udivsi3+0x2c>
     fec:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
     ff0:	31510000 	cmpcc	r1, r0
     ff4:	31a01081 	lslcc	r1, r1, #1
     ff8:	31a03083 	lslcc	r3, r3, #1
     ffc:	3afffffa 	bcc	fec <__udivsi3+0x40>
    1000:	e3a02000 	mov	r2, #0
    1004:	e1500001 	cmp	r0, r1
    1008:	20400001 	subcs	r0, r0, r1
    100c:	21822003 	orrcs	r2, r2, r3
    1010:	e15000a1 	cmp	r0, r1, lsr #1
    1014:	204000a1 	subcs	r0, r0, r1, lsr #1
    1018:	218220a3 	orrcs	r2, r2, r3, lsr #1
    101c:	e1500121 	cmp	r0, r1, lsr #2
    1020:	20400121 	subcs	r0, r0, r1, lsr #2
    1024:	21822123 	orrcs	r2, r2, r3, lsr #2
    1028:	e15001a1 	cmp	r0, r1, lsr #3
    102c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1030:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1034:	e3500000 	cmp	r0, #0
    1038:	11b03223 	lsrsne	r3, r3, #4
    103c:	11a01221 	lsrne	r1, r1, #4
    1040:	1affffef 	bne	1004 <__udivsi3+0x58>
    1044:	e1a00002 	mov	r0, r2
    1048:	e12fff1e 	bx	lr
    104c:	03a00001 	moveq	r0, #1
    1050:	13a00000 	movne	r0, #0
    1054:	e12fff1e 	bx	lr
    1058:	e3510801 	cmp	r1, #65536	@ 0x10000
    105c:	21a01821 	lsrcs	r1, r1, #16
    1060:	23a02010 	movcs	r2, #16
    1064:	33a02000 	movcc	r2, #0
    1068:	e3510c01 	cmp	r1, #256	@ 0x100
    106c:	21a01421 	lsrcs	r1, r1, #8
    1070:	22822008 	addcs	r2, r2, #8
    1074:	e3510010 	cmp	r1, #16
    1078:	21a01221 	lsrcs	r1, r1, #4
    107c:	22822004 	addcs	r2, r2, #4
    1080:	e3510004 	cmp	r1, #4
    1084:	82822003 	addhi	r2, r2, #3
    1088:	908220a1 	addls	r2, r2, r1, lsr #1
    108c:	e1a00230 	lsr	r0, r0, r2
    1090:	e12fff1e 	bx	lr
    1094:	e3500000 	cmp	r0, #0
    1098:	13e00000 	mvnne	r0, #0
    109c:	ea000007 	b	10c0 <__aeabi_idiv0>

000010a0 <__aeabi_uidivmod>:
    10a0:	e3510000 	cmp	r1, #0
    10a4:	0afffffa 	beq	1094 <__udivsi3+0xe8>
    10a8:	e92d4003 	push	{r0, r1, lr}
    10ac:	ebffffbe 	bl	fac <__udivsi3>
    10b0:	e8bd4006 	pop	{r1, r2, lr}
    10b4:	e0030092 	mul	r3, r2, r0
    10b8:	e0411003 	sub	r1, r1, r3
    10bc:	e12fff1e 	bx	lr

000010c0 <__aeabi_idiv0>:
    10c0:	e12fff1e 	bx	lr
