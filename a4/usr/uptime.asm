
_uptime:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	eb0002b0 	bl	ad4 <uptime>
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
      70:	eb000383 	bl	e84 <printf>
      74:	eb0001eb 	bl	828 <exit>
      78:	66666667 	.word	0x66666667
      7c:	00001540 	.word	0x00001540

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
     374:	eb000146 	bl	894 <read>
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
     41c:	eb000149 	bl	948 <open>
     420:	e50b0008 	str	r0, [fp, #-8]
     424:	e51b3008 	ldr	r3, [fp, #-8]
     428:	e3530000 	cmp	r3, #0
     42c:	aa000001 	bge	438 <stat+0x38>
     430:	e3e03000 	mvn	r3, #0
     434:	ea000006 	b	454 <stat+0x54>
     438:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     43c:	e51b0008 	ldr	r0, [fp, #-8]
     440:	eb00015b 	bl	9b4 <fstat>
     444:	e50b000c 	str	r0, [fp, #-12]
     448:	e51b0008 	ldr	r0, [fp, #-8]
     44c:	eb000122 	bl	8dc <close>
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

00000570 <initiateLock>:
     570:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     574:	e28db000 	add	fp, sp, #0
     578:	e24dd00c 	sub	sp, sp, #12
     57c:	e50b0008 	str	r0, [fp, #-8]
     580:	e51b3008 	ldr	r3, [fp, #-8]
     584:	e3a02000 	mov	r2, #0
     588:	e5832000 	str	r2, [r3]
     58c:	e51b3008 	ldr	r3, [fp, #-8]
     590:	e3a02001 	mov	r2, #1
     594:	e5832004 	str	r2, [r3, #4]
     598:	e1a00000 	nop			@ (mov r0, r0)
     59c:	e28bd000 	add	sp, fp, #0
     5a0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5a4:	e12fff1e 	bx	lr

000005a8 <acquireLock>:
     5a8:	e92d4800 	push	{fp, lr}
     5ac:	e28db004 	add	fp, sp, #4
     5b0:	e24dd008 	sub	sp, sp, #8
     5b4:	e50b0008 	str	r0, [fp, #-8]
     5b8:	ea000001 	b	5c4 <acquireLock+0x1c>
     5bc:	e3a00001 	mov	r0, #1
     5c0:	eb00013a 	bl	ab0 <sleep>
     5c4:	e51b2008 	ldr	r2, [fp, #-8]
     5c8:	e3a01001 	mov	r1, #1
     5cc:	e1923f9f 	ldrex	r3, [r2]
     5d0:	e1820f91 	strex	r0, r1, [r2]
     5d4:	e3500000 	cmp	r0, #0
     5d8:	1afffffb 	bne	5cc <acquireLock+0x24>
     5dc:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     5e0:	e3530001 	cmp	r3, #1
     5e4:	0afffff4 	beq	5bc <acquireLock+0x14>
     5e8:	e1a00000 	nop			@ (mov r0, r0)
     5ec:	e1a00000 	nop			@ (mov r0, r0)
     5f0:	e24bd004 	sub	sp, fp, #4
     5f4:	e8bd8800 	pop	{fp, pc}

000005f8 <releaseLock>:
     5f8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5fc:	e28db000 	add	fp, sp, #0
     600:	e24dd00c 	sub	sp, sp, #12
     604:	e50b0008 	str	r0, [fp, #-8]
     608:	e51b3008 	ldr	r3, [fp, #-8]
     60c:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     610:	e3a02000 	mov	r2, #0
     614:	e5832000 	str	r2, [r3]
     618:	e1a00000 	nop			@ (mov r0, r0)
     61c:	e28bd000 	add	sp, fp, #0
     620:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     624:	e12fff1e 	bx	lr

00000628 <initiateCondVar>:
     628:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     62c:	e28db000 	add	fp, sp, #0
     630:	e24dd00c 	sub	sp, sp, #12
     634:	e50b0008 	str	r0, [fp, #-8]
     638:	e51b3008 	ldr	r3, [fp, #-8]
     63c:	e3a02000 	mov	r2, #0
     640:	e5832000 	str	r2, [r3]
     644:	e51b3008 	ldr	r3, [fp, #-8]
     648:	e3a02001 	mov	r2, #1
     64c:	e5832004 	str	r2, [r3, #4]
     650:	e1a00000 	nop			@ (mov r0, r0)
     654:	e28bd000 	add	sp, fp, #0
     658:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     65c:	e12fff1e 	bx	lr

00000660 <condWait>:
     660:	e92d4800 	push	{fp, lr}
     664:	e28db004 	add	fp, sp, #4
     668:	e24dd008 	sub	sp, sp, #8
     66c:	e50b0008 	str	r0, [fp, #-8]
     670:	e50b100c 	str	r1, [fp, #-12]
     674:	e51b000c 	ldr	r0, [fp, #-12]
     678:	ebffffde 	bl	5f8 <releaseLock>
     67c:	e51b3008 	ldr	r3, [fp, #-8]
     680:	e5933000 	ldr	r3, [r3]
     684:	e1a00003 	mov	r0, r3
     688:	eb00017d 	bl	c84 <sleepChan>
     68c:	e51b000c 	ldr	r0, [fp, #-12]
     690:	ebffffc4 	bl	5a8 <acquireLock>
     694:	e1a00000 	nop			@ (mov r0, r0)
     698:	e24bd004 	sub	sp, fp, #4
     69c:	e8bd8800 	pop	{fp, pc}

000006a0 <broadcast>:
     6a0:	e92d4800 	push	{fp, lr}
     6a4:	e28db004 	add	fp, sp, #4
     6a8:	e24dd008 	sub	sp, sp, #8
     6ac:	e50b0008 	str	r0, [fp, #-8]
     6b0:	e51b3008 	ldr	r3, [fp, #-8]
     6b4:	e5933000 	ldr	r3, [r3]
     6b8:	e1a00003 	mov	r0, r3
     6bc:	eb000182 	bl	ccc <sigChan>
     6c0:	e1a00000 	nop			@ (mov r0, r0)
     6c4:	e24bd004 	sub	sp, fp, #4
     6c8:	e8bd8800 	pop	{fp, pc}

000006cc <semInit>:
     6cc:	e92d4800 	push	{fp, lr}
     6d0:	e28db004 	add	fp, sp, #4
     6d4:	e24dd008 	sub	sp, sp, #8
     6d8:	e50b0008 	str	r0, [fp, #-8]
     6dc:	e50b100c 	str	r1, [fp, #-12]
     6e0:	e51b3008 	ldr	r3, [fp, #-8]
     6e4:	e51b200c 	ldr	r2, [fp, #-12]
     6e8:	e5832000 	str	r2, [r3]
     6ec:	e51b3008 	ldr	r3, [fp, #-8]
     6f0:	e2833004 	add	r3, r3, #4
     6f4:	e1a00003 	mov	r0, r3
     6f8:	ebffff9c 	bl	570 <initiateLock>
     6fc:	e51b3008 	ldr	r3, [fp, #-8]
     700:	e283300c 	add	r3, r3, #12
     704:	e1a00003 	mov	r0, r3
     708:	ebffffc6 	bl	628 <initiateCondVar>
     70c:	e51b3008 	ldr	r3, [fp, #-8]
     710:	e3a02001 	mov	r2, #1
     714:	e5832014 	str	r2, [r3, #20]
     718:	e1a00000 	nop			@ (mov r0, r0)
     71c:	e24bd004 	sub	sp, fp, #4
     720:	e8bd8800 	pop	{fp, pc}

00000724 <semUp>:
     724:	e92d4800 	push	{fp, lr}
     728:	e28db004 	add	fp, sp, #4
     72c:	e24dd008 	sub	sp, sp, #8
     730:	e50b0008 	str	r0, [fp, #-8]
     734:	e51b3008 	ldr	r3, [fp, #-8]
     738:	e2833004 	add	r3, r3, #4
     73c:	e1a00003 	mov	r0, r3
     740:	ebffff98 	bl	5a8 <acquireLock>
     744:	e51b3008 	ldr	r3, [fp, #-8]
     748:	e5933000 	ldr	r3, [r3]
     74c:	e2832001 	add	r2, r3, #1
     750:	e51b3008 	ldr	r3, [fp, #-8]
     754:	e5832000 	str	r2, [r3]
     758:	e51b3008 	ldr	r3, [fp, #-8]
     75c:	e283300c 	add	r3, r3, #12
     760:	e1a00003 	mov	r0, r3
     764:	ebffffcd 	bl	6a0 <broadcast>
     768:	e51b3008 	ldr	r3, [fp, #-8]
     76c:	e2833004 	add	r3, r3, #4
     770:	e1a00003 	mov	r0, r3
     774:	ebffff9f 	bl	5f8 <releaseLock>
     778:	e1a00000 	nop			@ (mov r0, r0)
     77c:	e24bd004 	sub	sp, fp, #4
     780:	e8bd8800 	pop	{fp, pc}

00000784 <semDown>:
     784:	e92d4800 	push	{fp, lr}
     788:	e28db004 	add	fp, sp, #4
     78c:	e24dd008 	sub	sp, sp, #8
     790:	e50b0008 	str	r0, [fp, #-8]
     794:	e51b3008 	ldr	r3, [fp, #-8]
     798:	e2833004 	add	r3, r3, #4
     79c:	e1a00003 	mov	r0, r3
     7a0:	ebffff80 	bl	5a8 <acquireLock>
     7a4:	ea000006 	b	7c4 <semDown+0x40>
     7a8:	e51b3008 	ldr	r3, [fp, #-8]
     7ac:	e283200c 	add	r2, r3, #12
     7b0:	e51b3008 	ldr	r3, [fp, #-8]
     7b4:	e2833004 	add	r3, r3, #4
     7b8:	e1a01003 	mov	r1, r3
     7bc:	e1a00002 	mov	r0, r2
     7c0:	ebffffa6 	bl	660 <condWait>
     7c4:	e51b3008 	ldr	r3, [fp, #-8]
     7c8:	e5933000 	ldr	r3, [r3]
     7cc:	e3530000 	cmp	r3, #0
     7d0:	dafffff4 	ble	7a8 <semDown+0x24>
     7d4:	e51b3008 	ldr	r3, [fp, #-8]
     7d8:	e5933000 	ldr	r3, [r3]
     7dc:	e2432001 	sub	r2, r3, #1
     7e0:	e51b3008 	ldr	r3, [fp, #-8]
     7e4:	e5832000 	str	r2, [r3]
     7e8:	e51b3008 	ldr	r3, [fp, #-8]
     7ec:	e2833004 	add	r3, r3, #4
     7f0:	e1a00003 	mov	r0, r3
     7f4:	ebffff7f 	bl	5f8 <releaseLock>
     7f8:	e1a00000 	nop			@ (mov r0, r0)
     7fc:	e24bd004 	sub	sp, fp, #4
     800:	e8bd8800 	pop	{fp, pc}

00000804 <fork>:
     804:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     808:	e1a04003 	mov	r4, r3
     80c:	e1a03002 	mov	r3, r2
     810:	e1a02001 	mov	r2, r1
     814:	e1a01000 	mov	r1, r0
     818:	e3a00001 	mov	r0, #1
     81c:	ef000000 	svc	0x00000000
     820:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     824:	e12fff1e 	bx	lr

00000828 <exit>:
     828:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     82c:	e1a04003 	mov	r4, r3
     830:	e1a03002 	mov	r3, r2
     834:	e1a02001 	mov	r2, r1
     838:	e1a01000 	mov	r1, r0
     83c:	e3a00002 	mov	r0, #2
     840:	ef000000 	svc	0x00000000
     844:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     848:	e12fff1e 	bx	lr

0000084c <wait>:
     84c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     850:	e1a04003 	mov	r4, r3
     854:	e1a03002 	mov	r3, r2
     858:	e1a02001 	mov	r2, r1
     85c:	e1a01000 	mov	r1, r0
     860:	e3a00003 	mov	r0, #3
     864:	ef000000 	svc	0x00000000
     868:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     86c:	e12fff1e 	bx	lr

00000870 <pipe>:
     870:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     874:	e1a04003 	mov	r4, r3
     878:	e1a03002 	mov	r3, r2
     87c:	e1a02001 	mov	r2, r1
     880:	e1a01000 	mov	r1, r0
     884:	e3a00004 	mov	r0, #4
     888:	ef000000 	svc	0x00000000
     88c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     890:	e12fff1e 	bx	lr

00000894 <read>:
     894:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     898:	e1a04003 	mov	r4, r3
     89c:	e1a03002 	mov	r3, r2
     8a0:	e1a02001 	mov	r2, r1
     8a4:	e1a01000 	mov	r1, r0
     8a8:	e3a00005 	mov	r0, #5
     8ac:	ef000000 	svc	0x00000000
     8b0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8b4:	e12fff1e 	bx	lr

000008b8 <write>:
     8b8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8bc:	e1a04003 	mov	r4, r3
     8c0:	e1a03002 	mov	r3, r2
     8c4:	e1a02001 	mov	r2, r1
     8c8:	e1a01000 	mov	r1, r0
     8cc:	e3a00010 	mov	r0, #16
     8d0:	ef000000 	svc	0x00000000
     8d4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8d8:	e12fff1e 	bx	lr

000008dc <close>:
     8dc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8e0:	e1a04003 	mov	r4, r3
     8e4:	e1a03002 	mov	r3, r2
     8e8:	e1a02001 	mov	r2, r1
     8ec:	e1a01000 	mov	r1, r0
     8f0:	e3a00015 	mov	r0, #21
     8f4:	ef000000 	svc	0x00000000
     8f8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8fc:	e12fff1e 	bx	lr

00000900 <kill>:
     900:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     904:	e1a04003 	mov	r4, r3
     908:	e1a03002 	mov	r3, r2
     90c:	e1a02001 	mov	r2, r1
     910:	e1a01000 	mov	r1, r0
     914:	e3a00006 	mov	r0, #6
     918:	ef000000 	svc	0x00000000
     91c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     920:	e12fff1e 	bx	lr

00000924 <exec>:
     924:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     928:	e1a04003 	mov	r4, r3
     92c:	e1a03002 	mov	r3, r2
     930:	e1a02001 	mov	r2, r1
     934:	e1a01000 	mov	r1, r0
     938:	e3a00007 	mov	r0, #7
     93c:	ef000000 	svc	0x00000000
     940:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     944:	e12fff1e 	bx	lr

00000948 <open>:
     948:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     94c:	e1a04003 	mov	r4, r3
     950:	e1a03002 	mov	r3, r2
     954:	e1a02001 	mov	r2, r1
     958:	e1a01000 	mov	r1, r0
     95c:	e3a0000f 	mov	r0, #15
     960:	ef000000 	svc	0x00000000
     964:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     968:	e12fff1e 	bx	lr

0000096c <mknod>:
     96c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     970:	e1a04003 	mov	r4, r3
     974:	e1a03002 	mov	r3, r2
     978:	e1a02001 	mov	r2, r1
     97c:	e1a01000 	mov	r1, r0
     980:	e3a00011 	mov	r0, #17
     984:	ef000000 	svc	0x00000000
     988:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     98c:	e12fff1e 	bx	lr

00000990 <unlink>:
     990:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     994:	e1a04003 	mov	r4, r3
     998:	e1a03002 	mov	r3, r2
     99c:	e1a02001 	mov	r2, r1
     9a0:	e1a01000 	mov	r1, r0
     9a4:	e3a00012 	mov	r0, #18
     9a8:	ef000000 	svc	0x00000000
     9ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9b0:	e12fff1e 	bx	lr

000009b4 <fstat>:
     9b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9b8:	e1a04003 	mov	r4, r3
     9bc:	e1a03002 	mov	r3, r2
     9c0:	e1a02001 	mov	r2, r1
     9c4:	e1a01000 	mov	r1, r0
     9c8:	e3a00008 	mov	r0, #8
     9cc:	ef000000 	svc	0x00000000
     9d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9d4:	e12fff1e 	bx	lr

000009d8 <link>:
     9d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9dc:	e1a04003 	mov	r4, r3
     9e0:	e1a03002 	mov	r3, r2
     9e4:	e1a02001 	mov	r2, r1
     9e8:	e1a01000 	mov	r1, r0
     9ec:	e3a00013 	mov	r0, #19
     9f0:	ef000000 	svc	0x00000000
     9f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9f8:	e12fff1e 	bx	lr

000009fc <mkdir>:
     9fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a00:	e1a04003 	mov	r4, r3
     a04:	e1a03002 	mov	r3, r2
     a08:	e1a02001 	mov	r2, r1
     a0c:	e1a01000 	mov	r1, r0
     a10:	e3a00014 	mov	r0, #20
     a14:	ef000000 	svc	0x00000000
     a18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a1c:	e12fff1e 	bx	lr

00000a20 <chdir>:
     a20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a24:	e1a04003 	mov	r4, r3
     a28:	e1a03002 	mov	r3, r2
     a2c:	e1a02001 	mov	r2, r1
     a30:	e1a01000 	mov	r1, r0
     a34:	e3a00009 	mov	r0, #9
     a38:	ef000000 	svc	0x00000000
     a3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a40:	e12fff1e 	bx	lr

00000a44 <dup>:
     a44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a48:	e1a04003 	mov	r4, r3
     a4c:	e1a03002 	mov	r3, r2
     a50:	e1a02001 	mov	r2, r1
     a54:	e1a01000 	mov	r1, r0
     a58:	e3a0000a 	mov	r0, #10
     a5c:	ef000000 	svc	0x00000000
     a60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a64:	e12fff1e 	bx	lr

00000a68 <getpid>:
     a68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a6c:	e1a04003 	mov	r4, r3
     a70:	e1a03002 	mov	r3, r2
     a74:	e1a02001 	mov	r2, r1
     a78:	e1a01000 	mov	r1, r0
     a7c:	e3a0000b 	mov	r0, #11
     a80:	ef000000 	svc	0x00000000
     a84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a88:	e12fff1e 	bx	lr

00000a8c <sbrk>:
     a8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a90:	e1a04003 	mov	r4, r3
     a94:	e1a03002 	mov	r3, r2
     a98:	e1a02001 	mov	r2, r1
     a9c:	e1a01000 	mov	r1, r0
     aa0:	e3a0000c 	mov	r0, #12
     aa4:	ef000000 	svc	0x00000000
     aa8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aac:	e12fff1e 	bx	lr

00000ab0 <sleep>:
     ab0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ab4:	e1a04003 	mov	r4, r3
     ab8:	e1a03002 	mov	r3, r2
     abc:	e1a02001 	mov	r2, r1
     ac0:	e1a01000 	mov	r1, r0
     ac4:	e3a0000d 	mov	r0, #13
     ac8:	ef000000 	svc	0x00000000
     acc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ad0:	e12fff1e 	bx	lr

00000ad4 <uptime>:
     ad4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad8:	e1a04003 	mov	r4, r3
     adc:	e1a03002 	mov	r3, r2
     ae0:	e1a02001 	mov	r2, r1
     ae4:	e1a01000 	mov	r1, r0
     ae8:	e3a0000e 	mov	r0, #14
     aec:	ef000000 	svc	0x00000000
     af0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     af4:	e12fff1e 	bx	lr

00000af8 <getprocs>:
     af8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     afc:	e1a04003 	mov	r4, r3
     b00:	e1a03002 	mov	r3, r2
     b04:	e1a02001 	mov	r2, r1
     b08:	e1a01000 	mov	r1, r0
     b0c:	e3a00016 	mov	r0, #22
     b10:	ef000000 	svc	0x00000000
     b14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b18:	e12fff1e 	bx	lr

00000b1c <settickets>:
     b1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b20:	e1a04003 	mov	r4, r3
     b24:	e1a03002 	mov	r3, r2
     b28:	e1a02001 	mov	r2, r1
     b2c:	e1a01000 	mov	r1, r0
     b30:	e3a00017 	mov	r0, #23
     b34:	ef000000 	svc	0x00000000
     b38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b3c:	e12fff1e 	bx	lr

00000b40 <srand>:
     b40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b44:	e1a04003 	mov	r4, r3
     b48:	e1a03002 	mov	r3, r2
     b4c:	e1a02001 	mov	r2, r1
     b50:	e1a01000 	mov	r1, r0
     b54:	e3a00018 	mov	r0, #24
     b58:	ef000000 	svc	0x00000000
     b5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b60:	e12fff1e 	bx	lr

00000b64 <getpinfo>:
     b64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b68:	e1a04003 	mov	r4, r3
     b6c:	e1a03002 	mov	r3, r2
     b70:	e1a02001 	mov	r2, r1
     b74:	e1a01000 	mov	r1, r0
     b78:	e3a00019 	mov	r0, #25
     b7c:	ef000000 	svc	0x00000000
     b80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b84:	e12fff1e 	bx	lr

00000b88 <dumppagetable>:
     b88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b8c:	e1a04003 	mov	r4, r3
     b90:	e1a03002 	mov	r3, r2
     b94:	e1a02001 	mov	r2, r1
     b98:	e1a01000 	mov	r1, r0
     b9c:	e3a0001a 	mov	r0, #26
     ba0:	ef000000 	svc	0x00000000
     ba4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba8:	e12fff1e 	bx	lr

00000bac <thread_create>:
     bac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bb0:	e1a04003 	mov	r4, r3
     bb4:	e1a03002 	mov	r3, r2
     bb8:	e1a02001 	mov	r2, r1
     bbc:	e1a01000 	mov	r1, r0
     bc0:	e3a0001b 	mov	r0, #27
     bc4:	ef000000 	svc	0x00000000
     bc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bcc:	e12fff1e 	bx	lr

00000bd0 <thread_exit>:
     bd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bd4:	e1a04003 	mov	r4, r3
     bd8:	e1a03002 	mov	r3, r2
     bdc:	e1a02001 	mov	r2, r1
     be0:	e1a01000 	mov	r1, r0
     be4:	e3a0001c 	mov	r0, #28
     be8:	ef000000 	svc	0x00000000
     bec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bf0:	e12fff1e 	bx	lr

00000bf4 <thread_join>:
     bf4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf8:	e1a04003 	mov	r4, r3
     bfc:	e1a03002 	mov	r3, r2
     c00:	e1a02001 	mov	r2, r1
     c04:	e1a01000 	mov	r1, r0
     c08:	e3a0001d 	mov	r0, #29
     c0c:	ef000000 	svc	0x00000000
     c10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c14:	e12fff1e 	bx	lr

00000c18 <waitpid>:
     c18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c1c:	e1a04003 	mov	r4, r3
     c20:	e1a03002 	mov	r3, r2
     c24:	e1a02001 	mov	r2, r1
     c28:	e1a01000 	mov	r1, r0
     c2c:	e3a0001e 	mov	r0, #30
     c30:	ef000000 	svc	0x00000000
     c34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c38:	e12fff1e 	bx	lr

00000c3c <barrier_init>:
     c3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c40:	e1a04003 	mov	r4, r3
     c44:	e1a03002 	mov	r3, r2
     c48:	e1a02001 	mov	r2, r1
     c4c:	e1a01000 	mov	r1, r0
     c50:	e3a0001f 	mov	r0, #31
     c54:	ef000000 	svc	0x00000000
     c58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c5c:	e12fff1e 	bx	lr

00000c60 <barrier_check>:
     c60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c64:	e1a04003 	mov	r4, r3
     c68:	e1a03002 	mov	r3, r2
     c6c:	e1a02001 	mov	r2, r1
     c70:	e1a01000 	mov	r1, r0
     c74:	e3a00020 	mov	r0, #32
     c78:	ef000000 	svc	0x00000000
     c7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c80:	e12fff1e 	bx	lr

00000c84 <sleepChan>:
     c84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c88:	e1a04003 	mov	r4, r3
     c8c:	e1a03002 	mov	r3, r2
     c90:	e1a02001 	mov	r2, r1
     c94:	e1a01000 	mov	r1, r0
     c98:	e3a00024 	mov	r0, #36	@ 0x24
     c9c:	ef000000 	svc	0x00000000
     ca0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ca4:	e12fff1e 	bx	lr

00000ca8 <getChannel>:
     ca8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cac:	e1a04003 	mov	r4, r3
     cb0:	e1a03002 	mov	r3, r2
     cb4:	e1a02001 	mov	r2, r1
     cb8:	e1a01000 	mov	r1, r0
     cbc:	e3a00025 	mov	r0, #37	@ 0x25
     cc0:	ef000000 	svc	0x00000000
     cc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc8:	e12fff1e 	bx	lr

00000ccc <sigChan>:
     ccc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cd0:	e1a04003 	mov	r4, r3
     cd4:	e1a03002 	mov	r3, r2
     cd8:	e1a02001 	mov	r2, r1
     cdc:	e1a01000 	mov	r1, r0
     ce0:	e3a00026 	mov	r0, #38	@ 0x26
     ce4:	ef000000 	svc	0x00000000
     ce8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cec:	e12fff1e 	bx	lr

00000cf0 <sigOneChan>:
     cf0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cf4:	e1a04003 	mov	r4, r3
     cf8:	e1a03002 	mov	r3, r2
     cfc:	e1a02001 	mov	r2, r1
     d00:	e1a01000 	mov	r1, r0
     d04:	e3a00027 	mov	r0, #39	@ 0x27
     d08:	ef000000 	svc	0x00000000
     d0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d10:	e12fff1e 	bx	lr

00000d14 <putc>:
     d14:	e92d4800 	push	{fp, lr}
     d18:	e28db004 	add	fp, sp, #4
     d1c:	e24dd008 	sub	sp, sp, #8
     d20:	e50b0008 	str	r0, [fp, #-8]
     d24:	e1a03001 	mov	r3, r1
     d28:	e54b3009 	strb	r3, [fp, #-9]
     d2c:	e24b3009 	sub	r3, fp, #9
     d30:	e3a02001 	mov	r2, #1
     d34:	e1a01003 	mov	r1, r3
     d38:	e51b0008 	ldr	r0, [fp, #-8]
     d3c:	ebfffedd 	bl	8b8 <write>
     d40:	e1a00000 	nop			@ (mov r0, r0)
     d44:	e24bd004 	sub	sp, fp, #4
     d48:	e8bd8800 	pop	{fp, pc}

00000d4c <printint>:
     d4c:	e92d4800 	push	{fp, lr}
     d50:	e28db004 	add	fp, sp, #4
     d54:	e24dd030 	sub	sp, sp, #48	@ 0x30
     d58:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     d5c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     d60:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     d64:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     d68:	e3a03000 	mov	r3, #0
     d6c:	e50b300c 	str	r3, [fp, #-12]
     d70:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     d74:	e3530000 	cmp	r3, #0
     d78:	0a000008 	beq	da0 <printint+0x54>
     d7c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d80:	e3530000 	cmp	r3, #0
     d84:	aa000005 	bge	da0 <printint+0x54>
     d88:	e3a03001 	mov	r3, #1
     d8c:	e50b300c 	str	r3, [fp, #-12]
     d90:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d94:	e2633000 	rsb	r3, r3, #0
     d98:	e50b3010 	str	r3, [fp, #-16]
     d9c:	ea000001 	b	da8 <printint+0x5c>
     da0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     da4:	e50b3010 	str	r3, [fp, #-16]
     da8:	e3a03000 	mov	r3, #0
     dac:	e50b3008 	str	r3, [fp, #-8]
     db0:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     db4:	e51b3010 	ldr	r3, [fp, #-16]
     db8:	e1a01002 	mov	r1, r2
     dbc:	e1a00003 	mov	r0, r3
     dc0:	eb0001d5 	bl	151c <__aeabi_uidivmod>
     dc4:	e1a03001 	mov	r3, r1
     dc8:	e1a01003 	mov	r1, r3
     dcc:	e51b3008 	ldr	r3, [fp, #-8]
     dd0:	e2832001 	add	r2, r3, #1
     dd4:	e50b2008 	str	r2, [fp, #-8]
     dd8:	e59f20a0 	ldr	r2, [pc, #160]	@ e80 <printint+0x134>
     ddc:	e7d22001 	ldrb	r2, [r2, r1]
     de0:	e2433004 	sub	r3, r3, #4
     de4:	e083300b 	add	r3, r3, fp
     de8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     dec:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     df0:	e1a01003 	mov	r1, r3
     df4:	e51b0010 	ldr	r0, [fp, #-16]
     df8:	eb00018a 	bl	1428 <__udivsi3>
     dfc:	e1a03000 	mov	r3, r0
     e00:	e50b3010 	str	r3, [fp, #-16]
     e04:	e51b3010 	ldr	r3, [fp, #-16]
     e08:	e3530000 	cmp	r3, #0
     e0c:	1affffe7 	bne	db0 <printint+0x64>
     e10:	e51b300c 	ldr	r3, [fp, #-12]
     e14:	e3530000 	cmp	r3, #0
     e18:	0a00000e 	beq	e58 <printint+0x10c>
     e1c:	e51b3008 	ldr	r3, [fp, #-8]
     e20:	e2832001 	add	r2, r3, #1
     e24:	e50b2008 	str	r2, [fp, #-8]
     e28:	e2433004 	sub	r3, r3, #4
     e2c:	e083300b 	add	r3, r3, fp
     e30:	e3a0202d 	mov	r2, #45	@ 0x2d
     e34:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     e38:	ea000006 	b	e58 <printint+0x10c>
     e3c:	e24b2020 	sub	r2, fp, #32
     e40:	e51b3008 	ldr	r3, [fp, #-8]
     e44:	e0823003 	add	r3, r2, r3
     e48:	e5d33000 	ldrb	r3, [r3]
     e4c:	e1a01003 	mov	r1, r3
     e50:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     e54:	ebffffae 	bl	d14 <putc>
     e58:	e51b3008 	ldr	r3, [fp, #-8]
     e5c:	e2433001 	sub	r3, r3, #1
     e60:	e50b3008 	str	r3, [fp, #-8]
     e64:	e51b3008 	ldr	r3, [fp, #-8]
     e68:	e3530000 	cmp	r3, #0
     e6c:	aafffff2 	bge	e3c <printint+0xf0>
     e70:	e1a00000 	nop			@ (mov r0, r0)
     e74:	e1a00000 	nop			@ (mov r0, r0)
     e78:	e24bd004 	sub	sp, fp, #4
     e7c:	e8bd8800 	pop	{fp, pc}
     e80:	00001560 	.word	0x00001560

00000e84 <printf>:
     e84:	e92d000e 	push	{r1, r2, r3}
     e88:	e92d4800 	push	{fp, lr}
     e8c:	e28db004 	add	fp, sp, #4
     e90:	e24dd024 	sub	sp, sp, #36	@ 0x24
     e94:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     e98:	e3a03000 	mov	r3, #0
     e9c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ea0:	e28b3008 	add	r3, fp, #8
     ea4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ea8:	e3a03000 	mov	r3, #0
     eac:	e50b3010 	str	r3, [fp, #-16]
     eb0:	ea000074 	b	1088 <printf+0x204>
     eb4:	e59b2004 	ldr	r2, [fp, #4]
     eb8:	e51b3010 	ldr	r3, [fp, #-16]
     ebc:	e0823003 	add	r3, r2, r3
     ec0:	e5d33000 	ldrb	r3, [r3]
     ec4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     ec8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ecc:	e3530000 	cmp	r3, #0
     ed0:	1a00000b 	bne	f04 <printf+0x80>
     ed4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ed8:	e3530025 	cmp	r3, #37	@ 0x25
     edc:	1a000002 	bne	eec <printf+0x68>
     ee0:	e3a03025 	mov	r3, #37	@ 0x25
     ee4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ee8:	ea000063 	b	107c <printf+0x1f8>
     eec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ef0:	e6ef3073 	uxtb	r3, r3
     ef4:	e1a01003 	mov	r1, r3
     ef8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     efc:	ebffff84 	bl	d14 <putc>
     f00:	ea00005d 	b	107c <printf+0x1f8>
     f04:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     f08:	e3530025 	cmp	r3, #37	@ 0x25
     f0c:	1a00005a 	bne	107c <printf+0x1f8>
     f10:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f14:	e3530064 	cmp	r3, #100	@ 0x64
     f18:	1a00000a 	bne	f48 <printf+0xc4>
     f1c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f20:	e5933000 	ldr	r3, [r3]
     f24:	e1a01003 	mov	r1, r3
     f28:	e3a03001 	mov	r3, #1
     f2c:	e3a0200a 	mov	r2, #10
     f30:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f34:	ebffff84 	bl	d4c <printint>
     f38:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f3c:	e2833004 	add	r3, r3, #4
     f40:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f44:	ea00004a 	b	1074 <printf+0x1f0>
     f48:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f4c:	e3530078 	cmp	r3, #120	@ 0x78
     f50:	0a000002 	beq	f60 <printf+0xdc>
     f54:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f58:	e3530070 	cmp	r3, #112	@ 0x70
     f5c:	1a00000a 	bne	f8c <printf+0x108>
     f60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f64:	e5933000 	ldr	r3, [r3]
     f68:	e1a01003 	mov	r1, r3
     f6c:	e3a03000 	mov	r3, #0
     f70:	e3a02010 	mov	r2, #16
     f74:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f78:	ebffff73 	bl	d4c <printint>
     f7c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f80:	e2833004 	add	r3, r3, #4
     f84:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f88:	ea000039 	b	1074 <printf+0x1f0>
     f8c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f90:	e3530073 	cmp	r3, #115	@ 0x73
     f94:	1a000018 	bne	ffc <printf+0x178>
     f98:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f9c:	e5933000 	ldr	r3, [r3]
     fa0:	e50b300c 	str	r3, [fp, #-12]
     fa4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fa8:	e2833004 	add	r3, r3, #4
     fac:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fb0:	e51b300c 	ldr	r3, [fp, #-12]
     fb4:	e3530000 	cmp	r3, #0
     fb8:	1a00000a 	bne	fe8 <printf+0x164>
     fbc:	e59f30f4 	ldr	r3, [pc, #244]	@ 10b8 <printf+0x234>
     fc0:	e50b300c 	str	r3, [fp, #-12]
     fc4:	ea000007 	b	fe8 <printf+0x164>
     fc8:	e51b300c 	ldr	r3, [fp, #-12]
     fcc:	e5d33000 	ldrb	r3, [r3]
     fd0:	e1a01003 	mov	r1, r3
     fd4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fd8:	ebffff4d 	bl	d14 <putc>
     fdc:	e51b300c 	ldr	r3, [fp, #-12]
     fe0:	e2833001 	add	r3, r3, #1
     fe4:	e50b300c 	str	r3, [fp, #-12]
     fe8:	e51b300c 	ldr	r3, [fp, #-12]
     fec:	e5d33000 	ldrb	r3, [r3]
     ff0:	e3530000 	cmp	r3, #0
     ff4:	1afffff3 	bne	fc8 <printf+0x144>
     ff8:	ea00001d 	b	1074 <printf+0x1f0>
     ffc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1000:	e3530063 	cmp	r3, #99	@ 0x63
    1004:	1a000009 	bne	1030 <printf+0x1ac>
    1008:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    100c:	e5933000 	ldr	r3, [r3]
    1010:	e6ef3073 	uxtb	r3, r3
    1014:	e1a01003 	mov	r1, r3
    1018:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    101c:	ebffff3c 	bl	d14 <putc>
    1020:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1024:	e2833004 	add	r3, r3, #4
    1028:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    102c:	ea000010 	b	1074 <printf+0x1f0>
    1030:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1034:	e3530025 	cmp	r3, #37	@ 0x25
    1038:	1a000005 	bne	1054 <printf+0x1d0>
    103c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1040:	e6ef3073 	uxtb	r3, r3
    1044:	e1a01003 	mov	r1, r3
    1048:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    104c:	ebffff30 	bl	d14 <putc>
    1050:	ea000007 	b	1074 <printf+0x1f0>
    1054:	e3a01025 	mov	r1, #37	@ 0x25
    1058:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    105c:	ebffff2c 	bl	d14 <putc>
    1060:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1064:	e6ef3073 	uxtb	r3, r3
    1068:	e1a01003 	mov	r1, r3
    106c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1070:	ebffff27 	bl	d14 <putc>
    1074:	e3a03000 	mov	r3, #0
    1078:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    107c:	e51b3010 	ldr	r3, [fp, #-16]
    1080:	e2833001 	add	r3, r3, #1
    1084:	e50b3010 	str	r3, [fp, #-16]
    1088:	e59b2004 	ldr	r2, [fp, #4]
    108c:	e51b3010 	ldr	r3, [fp, #-16]
    1090:	e0823003 	add	r3, r2, r3
    1094:	e5d33000 	ldrb	r3, [r3]
    1098:	e3530000 	cmp	r3, #0
    109c:	1affff84 	bne	eb4 <printf+0x30>
    10a0:	e1a00000 	nop			@ (mov r0, r0)
    10a4:	e1a00000 	nop			@ (mov r0, r0)
    10a8:	e24bd004 	sub	sp, fp, #4
    10ac:	e8bd4800 	pop	{fp, lr}
    10b0:	e28dd00c 	add	sp, sp, #12
    10b4:	e12fff1e 	bx	lr
    10b8:	00001558 	.word	0x00001558

000010bc <free>:
    10bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    10c0:	e28db000 	add	fp, sp, #0
    10c4:	e24dd014 	sub	sp, sp, #20
    10c8:	e50b0010 	str	r0, [fp, #-16]
    10cc:	e51b3010 	ldr	r3, [fp, #-16]
    10d0:	e2433008 	sub	r3, r3, #8
    10d4:	e50b300c 	str	r3, [fp, #-12]
    10d8:	e59f3154 	ldr	r3, [pc, #340]	@ 1234 <free+0x178>
    10dc:	e5933000 	ldr	r3, [r3]
    10e0:	e50b3008 	str	r3, [fp, #-8]
    10e4:	ea000010 	b	112c <free+0x70>
    10e8:	e51b3008 	ldr	r3, [fp, #-8]
    10ec:	e5933000 	ldr	r3, [r3]
    10f0:	e51b2008 	ldr	r2, [fp, #-8]
    10f4:	e1520003 	cmp	r2, r3
    10f8:	3a000008 	bcc	1120 <free+0x64>
    10fc:	e51b200c 	ldr	r2, [fp, #-12]
    1100:	e51b3008 	ldr	r3, [fp, #-8]
    1104:	e1520003 	cmp	r2, r3
    1108:	8a000010 	bhi	1150 <free+0x94>
    110c:	e51b3008 	ldr	r3, [fp, #-8]
    1110:	e5933000 	ldr	r3, [r3]
    1114:	e51b200c 	ldr	r2, [fp, #-12]
    1118:	e1520003 	cmp	r2, r3
    111c:	3a00000b 	bcc	1150 <free+0x94>
    1120:	e51b3008 	ldr	r3, [fp, #-8]
    1124:	e5933000 	ldr	r3, [r3]
    1128:	e50b3008 	str	r3, [fp, #-8]
    112c:	e51b200c 	ldr	r2, [fp, #-12]
    1130:	e51b3008 	ldr	r3, [fp, #-8]
    1134:	e1520003 	cmp	r2, r3
    1138:	9affffea 	bls	10e8 <free+0x2c>
    113c:	e51b3008 	ldr	r3, [fp, #-8]
    1140:	e5933000 	ldr	r3, [r3]
    1144:	e51b200c 	ldr	r2, [fp, #-12]
    1148:	e1520003 	cmp	r2, r3
    114c:	2affffe5 	bcs	10e8 <free+0x2c>
    1150:	e51b300c 	ldr	r3, [fp, #-12]
    1154:	e5933004 	ldr	r3, [r3, #4]
    1158:	e1a03183 	lsl	r3, r3, #3
    115c:	e51b200c 	ldr	r2, [fp, #-12]
    1160:	e0822003 	add	r2, r2, r3
    1164:	e51b3008 	ldr	r3, [fp, #-8]
    1168:	e5933000 	ldr	r3, [r3]
    116c:	e1520003 	cmp	r2, r3
    1170:	1a00000d 	bne	11ac <free+0xf0>
    1174:	e51b300c 	ldr	r3, [fp, #-12]
    1178:	e5932004 	ldr	r2, [r3, #4]
    117c:	e51b3008 	ldr	r3, [fp, #-8]
    1180:	e5933000 	ldr	r3, [r3]
    1184:	e5933004 	ldr	r3, [r3, #4]
    1188:	e0822003 	add	r2, r2, r3
    118c:	e51b300c 	ldr	r3, [fp, #-12]
    1190:	e5832004 	str	r2, [r3, #4]
    1194:	e51b3008 	ldr	r3, [fp, #-8]
    1198:	e5933000 	ldr	r3, [r3]
    119c:	e5932000 	ldr	r2, [r3]
    11a0:	e51b300c 	ldr	r3, [fp, #-12]
    11a4:	e5832000 	str	r2, [r3]
    11a8:	ea000003 	b	11bc <free+0x100>
    11ac:	e51b3008 	ldr	r3, [fp, #-8]
    11b0:	e5932000 	ldr	r2, [r3]
    11b4:	e51b300c 	ldr	r3, [fp, #-12]
    11b8:	e5832000 	str	r2, [r3]
    11bc:	e51b3008 	ldr	r3, [fp, #-8]
    11c0:	e5933004 	ldr	r3, [r3, #4]
    11c4:	e1a03183 	lsl	r3, r3, #3
    11c8:	e51b2008 	ldr	r2, [fp, #-8]
    11cc:	e0823003 	add	r3, r2, r3
    11d0:	e51b200c 	ldr	r2, [fp, #-12]
    11d4:	e1520003 	cmp	r2, r3
    11d8:	1a00000b 	bne	120c <free+0x150>
    11dc:	e51b3008 	ldr	r3, [fp, #-8]
    11e0:	e5932004 	ldr	r2, [r3, #4]
    11e4:	e51b300c 	ldr	r3, [fp, #-12]
    11e8:	e5933004 	ldr	r3, [r3, #4]
    11ec:	e0822003 	add	r2, r2, r3
    11f0:	e51b3008 	ldr	r3, [fp, #-8]
    11f4:	e5832004 	str	r2, [r3, #4]
    11f8:	e51b300c 	ldr	r3, [fp, #-12]
    11fc:	e5932000 	ldr	r2, [r3]
    1200:	e51b3008 	ldr	r3, [fp, #-8]
    1204:	e5832000 	str	r2, [r3]
    1208:	ea000002 	b	1218 <free+0x15c>
    120c:	e51b3008 	ldr	r3, [fp, #-8]
    1210:	e51b200c 	ldr	r2, [fp, #-12]
    1214:	e5832000 	str	r2, [r3]
    1218:	e59f2014 	ldr	r2, [pc, #20]	@ 1234 <free+0x178>
    121c:	e51b3008 	ldr	r3, [fp, #-8]
    1220:	e5823000 	str	r3, [r2]
    1224:	e1a00000 	nop			@ (mov r0, r0)
    1228:	e28bd000 	add	sp, fp, #0
    122c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1230:	e12fff1e 	bx	lr
    1234:	0000157c 	.word	0x0000157c

00001238 <morecore>:
    1238:	e92d4800 	push	{fp, lr}
    123c:	e28db004 	add	fp, sp, #4
    1240:	e24dd010 	sub	sp, sp, #16
    1244:	e50b0010 	str	r0, [fp, #-16]
    1248:	e51b3010 	ldr	r3, [fp, #-16]
    124c:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1250:	2a000001 	bcs	125c <morecore+0x24>
    1254:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1258:	e50b3010 	str	r3, [fp, #-16]
    125c:	e51b3010 	ldr	r3, [fp, #-16]
    1260:	e1a03183 	lsl	r3, r3, #3
    1264:	e1a00003 	mov	r0, r3
    1268:	ebfffe07 	bl	a8c <sbrk>
    126c:	e50b0008 	str	r0, [fp, #-8]
    1270:	e51b3008 	ldr	r3, [fp, #-8]
    1274:	e3730001 	cmn	r3, #1
    1278:	1a000001 	bne	1284 <morecore+0x4c>
    127c:	e3a03000 	mov	r3, #0
    1280:	ea00000a 	b	12b0 <morecore+0x78>
    1284:	e51b3008 	ldr	r3, [fp, #-8]
    1288:	e50b300c 	str	r3, [fp, #-12]
    128c:	e51b300c 	ldr	r3, [fp, #-12]
    1290:	e51b2010 	ldr	r2, [fp, #-16]
    1294:	e5832004 	str	r2, [r3, #4]
    1298:	e51b300c 	ldr	r3, [fp, #-12]
    129c:	e2833008 	add	r3, r3, #8
    12a0:	e1a00003 	mov	r0, r3
    12a4:	ebffff84 	bl	10bc <free>
    12a8:	e59f300c 	ldr	r3, [pc, #12]	@ 12bc <morecore+0x84>
    12ac:	e5933000 	ldr	r3, [r3]
    12b0:	e1a00003 	mov	r0, r3
    12b4:	e24bd004 	sub	sp, fp, #4
    12b8:	e8bd8800 	pop	{fp, pc}
    12bc:	0000157c 	.word	0x0000157c

000012c0 <malloc>:
    12c0:	e92d4800 	push	{fp, lr}
    12c4:	e28db004 	add	fp, sp, #4
    12c8:	e24dd018 	sub	sp, sp, #24
    12cc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    12d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12d4:	e2833007 	add	r3, r3, #7
    12d8:	e1a031a3 	lsr	r3, r3, #3
    12dc:	e2833001 	add	r3, r3, #1
    12e0:	e50b3010 	str	r3, [fp, #-16]
    12e4:	e59f3134 	ldr	r3, [pc, #308]	@ 1420 <malloc+0x160>
    12e8:	e5933000 	ldr	r3, [r3]
    12ec:	e50b300c 	str	r3, [fp, #-12]
    12f0:	e51b300c 	ldr	r3, [fp, #-12]
    12f4:	e3530000 	cmp	r3, #0
    12f8:	1a00000b 	bne	132c <malloc+0x6c>
    12fc:	e59f3120 	ldr	r3, [pc, #288]	@ 1424 <malloc+0x164>
    1300:	e50b300c 	str	r3, [fp, #-12]
    1304:	e59f2114 	ldr	r2, [pc, #276]	@ 1420 <malloc+0x160>
    1308:	e51b300c 	ldr	r3, [fp, #-12]
    130c:	e5823000 	str	r3, [r2]
    1310:	e59f3108 	ldr	r3, [pc, #264]	@ 1420 <malloc+0x160>
    1314:	e5933000 	ldr	r3, [r3]
    1318:	e59f2104 	ldr	r2, [pc, #260]	@ 1424 <malloc+0x164>
    131c:	e5823000 	str	r3, [r2]
    1320:	e59f30fc 	ldr	r3, [pc, #252]	@ 1424 <malloc+0x164>
    1324:	e3a02000 	mov	r2, #0
    1328:	e5832004 	str	r2, [r3, #4]
    132c:	e51b300c 	ldr	r3, [fp, #-12]
    1330:	e5933000 	ldr	r3, [r3]
    1334:	e50b3008 	str	r3, [fp, #-8]
    1338:	e51b3008 	ldr	r3, [fp, #-8]
    133c:	e5933004 	ldr	r3, [r3, #4]
    1340:	e51b2010 	ldr	r2, [fp, #-16]
    1344:	e1520003 	cmp	r2, r3
    1348:	8a00001e 	bhi	13c8 <malloc+0x108>
    134c:	e51b3008 	ldr	r3, [fp, #-8]
    1350:	e5933004 	ldr	r3, [r3, #4]
    1354:	e51b2010 	ldr	r2, [fp, #-16]
    1358:	e1520003 	cmp	r2, r3
    135c:	1a000004 	bne	1374 <malloc+0xb4>
    1360:	e51b3008 	ldr	r3, [fp, #-8]
    1364:	e5932000 	ldr	r2, [r3]
    1368:	e51b300c 	ldr	r3, [fp, #-12]
    136c:	e5832000 	str	r2, [r3]
    1370:	ea00000e 	b	13b0 <malloc+0xf0>
    1374:	e51b3008 	ldr	r3, [fp, #-8]
    1378:	e5932004 	ldr	r2, [r3, #4]
    137c:	e51b3010 	ldr	r3, [fp, #-16]
    1380:	e0422003 	sub	r2, r2, r3
    1384:	e51b3008 	ldr	r3, [fp, #-8]
    1388:	e5832004 	str	r2, [r3, #4]
    138c:	e51b3008 	ldr	r3, [fp, #-8]
    1390:	e5933004 	ldr	r3, [r3, #4]
    1394:	e1a03183 	lsl	r3, r3, #3
    1398:	e51b2008 	ldr	r2, [fp, #-8]
    139c:	e0823003 	add	r3, r2, r3
    13a0:	e50b3008 	str	r3, [fp, #-8]
    13a4:	e51b3008 	ldr	r3, [fp, #-8]
    13a8:	e51b2010 	ldr	r2, [fp, #-16]
    13ac:	e5832004 	str	r2, [r3, #4]
    13b0:	e59f2068 	ldr	r2, [pc, #104]	@ 1420 <malloc+0x160>
    13b4:	e51b300c 	ldr	r3, [fp, #-12]
    13b8:	e5823000 	str	r3, [r2]
    13bc:	e51b3008 	ldr	r3, [fp, #-8]
    13c0:	e2833008 	add	r3, r3, #8
    13c4:	ea000012 	b	1414 <malloc+0x154>
    13c8:	e59f3050 	ldr	r3, [pc, #80]	@ 1420 <malloc+0x160>
    13cc:	e5933000 	ldr	r3, [r3]
    13d0:	e51b2008 	ldr	r2, [fp, #-8]
    13d4:	e1520003 	cmp	r2, r3
    13d8:	1a000007 	bne	13fc <malloc+0x13c>
    13dc:	e51b0010 	ldr	r0, [fp, #-16]
    13e0:	ebffff94 	bl	1238 <morecore>
    13e4:	e50b0008 	str	r0, [fp, #-8]
    13e8:	e51b3008 	ldr	r3, [fp, #-8]
    13ec:	e3530000 	cmp	r3, #0
    13f0:	1a000001 	bne	13fc <malloc+0x13c>
    13f4:	e3a03000 	mov	r3, #0
    13f8:	ea000005 	b	1414 <malloc+0x154>
    13fc:	e51b3008 	ldr	r3, [fp, #-8]
    1400:	e50b300c 	str	r3, [fp, #-12]
    1404:	e51b3008 	ldr	r3, [fp, #-8]
    1408:	e5933000 	ldr	r3, [r3]
    140c:	e50b3008 	str	r3, [fp, #-8]
    1410:	eaffffc8 	b	1338 <malloc+0x78>
    1414:	e1a00003 	mov	r0, r3
    1418:	e24bd004 	sub	sp, fp, #4
    141c:	e8bd8800 	pop	{fp, pc}
    1420:	0000157c 	.word	0x0000157c
    1424:	00001574 	.word	0x00001574

00001428 <__udivsi3>:
    1428:	e2512001 	subs	r2, r1, #1
    142c:	012fff1e 	bxeq	lr
    1430:	3a000036 	bcc	1510 <__udivsi3+0xe8>
    1434:	e1500001 	cmp	r0, r1
    1438:	9a000022 	bls	14c8 <__udivsi3+0xa0>
    143c:	e1110002 	tst	r1, r2
    1440:	0a000023 	beq	14d4 <__udivsi3+0xac>
    1444:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1448:	01a01181 	lsleq	r1, r1, #3
    144c:	03a03008 	moveq	r3, #8
    1450:	13a03001 	movne	r3, #1
    1454:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1458:	31510000 	cmpcc	r1, r0
    145c:	31a01201 	lslcc	r1, r1, #4
    1460:	31a03203 	lslcc	r3, r3, #4
    1464:	3afffffa 	bcc	1454 <__udivsi3+0x2c>
    1468:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    146c:	31510000 	cmpcc	r1, r0
    1470:	31a01081 	lslcc	r1, r1, #1
    1474:	31a03083 	lslcc	r3, r3, #1
    1478:	3afffffa 	bcc	1468 <__udivsi3+0x40>
    147c:	e3a02000 	mov	r2, #0
    1480:	e1500001 	cmp	r0, r1
    1484:	20400001 	subcs	r0, r0, r1
    1488:	21822003 	orrcs	r2, r2, r3
    148c:	e15000a1 	cmp	r0, r1, lsr #1
    1490:	204000a1 	subcs	r0, r0, r1, lsr #1
    1494:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1498:	e1500121 	cmp	r0, r1, lsr #2
    149c:	20400121 	subcs	r0, r0, r1, lsr #2
    14a0:	21822123 	orrcs	r2, r2, r3, lsr #2
    14a4:	e15001a1 	cmp	r0, r1, lsr #3
    14a8:	204001a1 	subcs	r0, r0, r1, lsr #3
    14ac:	218221a3 	orrcs	r2, r2, r3, lsr #3
    14b0:	e3500000 	cmp	r0, #0
    14b4:	11b03223 	lsrsne	r3, r3, #4
    14b8:	11a01221 	lsrne	r1, r1, #4
    14bc:	1affffef 	bne	1480 <__udivsi3+0x58>
    14c0:	e1a00002 	mov	r0, r2
    14c4:	e12fff1e 	bx	lr
    14c8:	03a00001 	moveq	r0, #1
    14cc:	13a00000 	movne	r0, #0
    14d0:	e12fff1e 	bx	lr
    14d4:	e3510801 	cmp	r1, #65536	@ 0x10000
    14d8:	21a01821 	lsrcs	r1, r1, #16
    14dc:	23a02010 	movcs	r2, #16
    14e0:	33a02000 	movcc	r2, #0
    14e4:	e3510c01 	cmp	r1, #256	@ 0x100
    14e8:	21a01421 	lsrcs	r1, r1, #8
    14ec:	22822008 	addcs	r2, r2, #8
    14f0:	e3510010 	cmp	r1, #16
    14f4:	21a01221 	lsrcs	r1, r1, #4
    14f8:	22822004 	addcs	r2, r2, #4
    14fc:	e3510004 	cmp	r1, #4
    1500:	82822003 	addhi	r2, r2, #3
    1504:	908220a1 	addls	r2, r2, r1, lsr #1
    1508:	e1a00230 	lsr	r0, r0, r2
    150c:	e12fff1e 	bx	lr
    1510:	e3500000 	cmp	r0, #0
    1514:	13e00000 	mvnne	r0, #0
    1518:	ea000007 	b	153c <__aeabi_idiv0>

0000151c <__aeabi_uidivmod>:
    151c:	e3510000 	cmp	r1, #0
    1520:	0afffffa 	beq	1510 <__udivsi3+0xe8>
    1524:	e92d4003 	push	{r0, r1, lr}
    1528:	ebffffbe 	bl	1428 <__udivsi3>
    152c:	e8bd4006 	pop	{r1, r2, lr}
    1530:	e0030092 	mul	r3, r2, r0
    1534:	e0411003 	sub	r1, r1, r3
    1538:	e12fff1e 	bx	lr

0000153c <__aeabi_idiv0>:
    153c:	e12fff1e 	bx	lr
