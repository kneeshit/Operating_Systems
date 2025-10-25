
_t_barrier:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e3a00003 	mov	r0, #3
      10:	eb00031c 	bl	c88 <barrier_init>
      14:	eb00020d 	bl	850 <fork>
      18:	e50b0008 	str	r0, [fp, #-8]
      1c:	e51b3008 	ldr	r3, [fp, #-8]
      20:	e3530000 	cmp	r3, #0
      24:	1a000009 	bne	50 <main+0x50>
      28:	e3a0000a 	mov	r0, #10
      2c:	eb0002b2 	bl	afc <sleep>
      30:	e59f107c 	ldr	r1, [pc, #124]	@ b4 <main+0xb4>
      34:	e3a00001 	mov	r0, #1
      38:	eb0003a4 	bl	ed0 <printf>
      3c:	eb00031a 	bl	cac <barrier_check>
      40:	e59f1070 	ldr	r1, [pc, #112]	@ b8 <main+0xb8>
      44:	e3a00001 	mov	r0, #1
      48:	eb0003a0 	bl	ed0 <printf>
      4c:	eb000208 	bl	874 <exit>
      50:	eb0001fe 	bl	850 <fork>
      54:	e50b000c 	str	r0, [fp, #-12]
      58:	e51b300c 	ldr	r3, [fp, #-12]
      5c:	e3530000 	cmp	r3, #0
      60:	1a000009 	bne	8c <main+0x8c>
      64:	e3a00014 	mov	r0, #20
      68:	eb0002a3 	bl	afc <sleep>
      6c:	e59f1048 	ldr	r1, [pc, #72]	@ bc <main+0xbc>
      70:	e3a00001 	mov	r0, #1
      74:	eb000395 	bl	ed0 <printf>
      78:	eb00030b 	bl	cac <barrier_check>
      7c:	e59f103c 	ldr	r1, [pc, #60]	@ c0 <main+0xc0>
      80:	e3a00001 	mov	r0, #1
      84:	eb000391 	bl	ed0 <printf>
      88:	eb0001f9 	bl	874 <exit>
      8c:	e59f1030 	ldr	r1, [pc, #48]	@ c4 <main+0xc4>
      90:	e3a00001 	mov	r0, #1
      94:	eb00038d 	bl	ed0 <printf>
      98:	eb000303 	bl	cac <barrier_check>
      9c:	e59f1024 	ldr	r1, [pc, #36]	@ c8 <main+0xc8>
      a0:	e3a00001 	mov	r0, #1
      a4:	eb000389 	bl	ed0 <printf>
      a8:	eb0001fa 	bl	898 <wait>
      ac:	eb0001f9 	bl	898 <wait>
      b0:	eb0001ef 	bl	874 <exit>
      b4:	0000158c 	.word	0x0000158c
      b8:	000015a0 	.word	0x000015a0
      bc:	000015bc 	.word	0x000015bc
      c0:	000015d0 	.word	0x000015d0
      c4:	000015ec 	.word	0x000015ec
      c8:	00001600 	.word	0x00001600

000000cc <strcpy>:
      cc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      d0:	e28db000 	add	fp, sp, #0
      d4:	e24dd014 	sub	sp, sp, #20
      d8:	e50b0010 	str	r0, [fp, #-16]
      dc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      e0:	e51b3010 	ldr	r3, [fp, #-16]
      e4:	e50b3008 	str	r3, [fp, #-8]
      e8:	e1a00000 	nop			@ (mov r0, r0)
      ec:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      f0:	e2823001 	add	r3, r2, #1
      f4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      f8:	e51b3010 	ldr	r3, [fp, #-16]
      fc:	e2831001 	add	r1, r3, #1
     100:	e50b1010 	str	r1, [fp, #-16]
     104:	e5d22000 	ldrb	r2, [r2]
     108:	e5c32000 	strb	r2, [r3]
     10c:	e5d33000 	ldrb	r3, [r3]
     110:	e3530000 	cmp	r3, #0
     114:	1afffff4 	bne	ec <strcpy+0x20>
     118:	e51b3008 	ldr	r3, [fp, #-8]
     11c:	e1a00003 	mov	r0, r3
     120:	e28bd000 	add	sp, fp, #0
     124:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     128:	e12fff1e 	bx	lr

0000012c <strcmp>:
     12c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     130:	e28db000 	add	fp, sp, #0
     134:	e24dd00c 	sub	sp, sp, #12
     138:	e50b0008 	str	r0, [fp, #-8]
     13c:	e50b100c 	str	r1, [fp, #-12]
     140:	ea000005 	b	15c <strcmp+0x30>
     144:	e51b3008 	ldr	r3, [fp, #-8]
     148:	e2833001 	add	r3, r3, #1
     14c:	e50b3008 	str	r3, [fp, #-8]
     150:	e51b300c 	ldr	r3, [fp, #-12]
     154:	e2833001 	add	r3, r3, #1
     158:	e50b300c 	str	r3, [fp, #-12]
     15c:	e51b3008 	ldr	r3, [fp, #-8]
     160:	e5d33000 	ldrb	r3, [r3]
     164:	e3530000 	cmp	r3, #0
     168:	0a000005 	beq	184 <strcmp+0x58>
     16c:	e51b3008 	ldr	r3, [fp, #-8]
     170:	e5d32000 	ldrb	r2, [r3]
     174:	e51b300c 	ldr	r3, [fp, #-12]
     178:	e5d33000 	ldrb	r3, [r3]
     17c:	e1520003 	cmp	r2, r3
     180:	0affffef 	beq	144 <strcmp+0x18>
     184:	e51b3008 	ldr	r3, [fp, #-8]
     188:	e5d33000 	ldrb	r3, [r3]
     18c:	e1a02003 	mov	r2, r3
     190:	e51b300c 	ldr	r3, [fp, #-12]
     194:	e5d33000 	ldrb	r3, [r3]
     198:	e0423003 	sub	r3, r2, r3
     19c:	e1a00003 	mov	r0, r3
     1a0:	e28bd000 	add	sp, fp, #0
     1a4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1a8:	e12fff1e 	bx	lr

000001ac <strlen>:
     1ac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1b0:	e28db000 	add	fp, sp, #0
     1b4:	e24dd014 	sub	sp, sp, #20
     1b8:	e50b0010 	str	r0, [fp, #-16]
     1bc:	e3a03000 	mov	r3, #0
     1c0:	e50b3008 	str	r3, [fp, #-8]
     1c4:	ea000002 	b	1d4 <strlen+0x28>
     1c8:	e51b3008 	ldr	r3, [fp, #-8]
     1cc:	e2833001 	add	r3, r3, #1
     1d0:	e50b3008 	str	r3, [fp, #-8]
     1d4:	e51b3008 	ldr	r3, [fp, #-8]
     1d8:	e51b2010 	ldr	r2, [fp, #-16]
     1dc:	e0823003 	add	r3, r2, r3
     1e0:	e5d33000 	ldrb	r3, [r3]
     1e4:	e3530000 	cmp	r3, #0
     1e8:	1afffff6 	bne	1c8 <strlen+0x1c>
     1ec:	e51b3008 	ldr	r3, [fp, #-8]
     1f0:	e1a00003 	mov	r0, r3
     1f4:	e28bd000 	add	sp, fp, #0
     1f8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1fc:	e12fff1e 	bx	lr

00000200 <memset>:
     200:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     204:	e28db000 	add	fp, sp, #0
     208:	e24dd024 	sub	sp, sp, #36	@ 0x24
     20c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     210:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     214:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     218:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     21c:	e50b3008 	str	r3, [fp, #-8]
     220:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     224:	e54b300d 	strb	r3, [fp, #-13]
     228:	e55b200d 	ldrb	r2, [fp, #-13]
     22c:	e1a03002 	mov	r3, r2
     230:	e1a03403 	lsl	r3, r3, #8
     234:	e0833002 	add	r3, r3, r2
     238:	e1a03803 	lsl	r3, r3, #16
     23c:	e1a02003 	mov	r2, r3
     240:	e55b300d 	ldrb	r3, [fp, #-13]
     244:	e1a03403 	lsl	r3, r3, #8
     248:	e1822003 	orr	r2, r2, r3
     24c:	e55b300d 	ldrb	r3, [fp, #-13]
     250:	e1823003 	orr	r3, r2, r3
     254:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     258:	ea000008 	b	280 <memset+0x80>
     25c:	e51b3008 	ldr	r3, [fp, #-8]
     260:	e55b200d 	ldrb	r2, [fp, #-13]
     264:	e5c32000 	strb	r2, [r3]
     268:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     26c:	e2433001 	sub	r3, r3, #1
     270:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     274:	e51b3008 	ldr	r3, [fp, #-8]
     278:	e2833001 	add	r3, r3, #1
     27c:	e50b3008 	str	r3, [fp, #-8]
     280:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     284:	e3530000 	cmp	r3, #0
     288:	0a000003 	beq	29c <memset+0x9c>
     28c:	e51b3008 	ldr	r3, [fp, #-8]
     290:	e2033003 	and	r3, r3, #3
     294:	e3530000 	cmp	r3, #0
     298:	1affffef 	bne	25c <memset+0x5c>
     29c:	e51b3008 	ldr	r3, [fp, #-8]
     2a0:	e50b300c 	str	r3, [fp, #-12]
     2a4:	ea000008 	b	2cc <memset+0xcc>
     2a8:	e51b300c 	ldr	r3, [fp, #-12]
     2ac:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     2b0:	e5832000 	str	r2, [r3]
     2b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2b8:	e2433004 	sub	r3, r3, #4
     2bc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2c0:	e51b300c 	ldr	r3, [fp, #-12]
     2c4:	e2833004 	add	r3, r3, #4
     2c8:	e50b300c 	str	r3, [fp, #-12]
     2cc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2d0:	e3530003 	cmp	r3, #3
     2d4:	8afffff3 	bhi	2a8 <memset+0xa8>
     2d8:	e51b300c 	ldr	r3, [fp, #-12]
     2dc:	e50b3008 	str	r3, [fp, #-8]
     2e0:	ea000008 	b	308 <memset+0x108>
     2e4:	e51b3008 	ldr	r3, [fp, #-8]
     2e8:	e55b200d 	ldrb	r2, [fp, #-13]
     2ec:	e5c32000 	strb	r2, [r3]
     2f0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2f4:	e2433001 	sub	r3, r3, #1
     2f8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2fc:	e51b3008 	ldr	r3, [fp, #-8]
     300:	e2833001 	add	r3, r3, #1
     304:	e50b3008 	str	r3, [fp, #-8]
     308:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     30c:	e3530000 	cmp	r3, #0
     310:	1afffff3 	bne	2e4 <memset+0xe4>
     314:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     318:	e1a00003 	mov	r0, r3
     31c:	e28bd000 	add	sp, fp, #0
     320:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     324:	e12fff1e 	bx	lr

00000328 <strchr>:
     328:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     32c:	e28db000 	add	fp, sp, #0
     330:	e24dd00c 	sub	sp, sp, #12
     334:	e50b0008 	str	r0, [fp, #-8]
     338:	e1a03001 	mov	r3, r1
     33c:	e54b3009 	strb	r3, [fp, #-9]
     340:	ea000009 	b	36c <strchr+0x44>
     344:	e51b3008 	ldr	r3, [fp, #-8]
     348:	e5d33000 	ldrb	r3, [r3]
     34c:	e55b2009 	ldrb	r2, [fp, #-9]
     350:	e1520003 	cmp	r2, r3
     354:	1a000001 	bne	360 <strchr+0x38>
     358:	e51b3008 	ldr	r3, [fp, #-8]
     35c:	ea000007 	b	380 <strchr+0x58>
     360:	e51b3008 	ldr	r3, [fp, #-8]
     364:	e2833001 	add	r3, r3, #1
     368:	e50b3008 	str	r3, [fp, #-8]
     36c:	e51b3008 	ldr	r3, [fp, #-8]
     370:	e5d33000 	ldrb	r3, [r3]
     374:	e3530000 	cmp	r3, #0
     378:	1afffff1 	bne	344 <strchr+0x1c>
     37c:	e3a03000 	mov	r3, #0
     380:	e1a00003 	mov	r0, r3
     384:	e28bd000 	add	sp, fp, #0
     388:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     38c:	e12fff1e 	bx	lr

00000390 <gets>:
     390:	e92d4800 	push	{fp, lr}
     394:	e28db004 	add	fp, sp, #4
     398:	e24dd018 	sub	sp, sp, #24
     39c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     3a0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     3a4:	e3a03000 	mov	r3, #0
     3a8:	e50b3008 	str	r3, [fp, #-8]
     3ac:	ea000016 	b	40c <gets+0x7c>
     3b0:	e24b300d 	sub	r3, fp, #13
     3b4:	e3a02001 	mov	r2, #1
     3b8:	e1a01003 	mov	r1, r3
     3bc:	e3a00000 	mov	r0, #0
     3c0:	eb000146 	bl	8e0 <read>
     3c4:	e50b000c 	str	r0, [fp, #-12]
     3c8:	e51b300c 	ldr	r3, [fp, #-12]
     3cc:	e3530000 	cmp	r3, #0
     3d0:	da000013 	ble	424 <gets+0x94>
     3d4:	e51b3008 	ldr	r3, [fp, #-8]
     3d8:	e2832001 	add	r2, r3, #1
     3dc:	e50b2008 	str	r2, [fp, #-8]
     3e0:	e1a02003 	mov	r2, r3
     3e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3e8:	e0833002 	add	r3, r3, r2
     3ec:	e55b200d 	ldrb	r2, [fp, #-13]
     3f0:	e5c32000 	strb	r2, [r3]
     3f4:	e55b300d 	ldrb	r3, [fp, #-13]
     3f8:	e353000a 	cmp	r3, #10
     3fc:	0a000009 	beq	428 <gets+0x98>
     400:	e55b300d 	ldrb	r3, [fp, #-13]
     404:	e353000d 	cmp	r3, #13
     408:	0a000006 	beq	428 <gets+0x98>
     40c:	e51b3008 	ldr	r3, [fp, #-8]
     410:	e2833001 	add	r3, r3, #1
     414:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     418:	e1520003 	cmp	r2, r3
     41c:	caffffe3 	bgt	3b0 <gets+0x20>
     420:	ea000000 	b	428 <gets+0x98>
     424:	e1a00000 	nop			@ (mov r0, r0)
     428:	e51b3008 	ldr	r3, [fp, #-8]
     42c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     430:	e0823003 	add	r3, r2, r3
     434:	e3a02000 	mov	r2, #0
     438:	e5c32000 	strb	r2, [r3]
     43c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     440:	e1a00003 	mov	r0, r3
     444:	e24bd004 	sub	sp, fp, #4
     448:	e8bd8800 	pop	{fp, pc}

0000044c <stat>:
     44c:	e92d4800 	push	{fp, lr}
     450:	e28db004 	add	fp, sp, #4
     454:	e24dd010 	sub	sp, sp, #16
     458:	e50b0010 	str	r0, [fp, #-16]
     45c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     460:	e3a01000 	mov	r1, #0
     464:	e51b0010 	ldr	r0, [fp, #-16]
     468:	eb000149 	bl	994 <open>
     46c:	e50b0008 	str	r0, [fp, #-8]
     470:	e51b3008 	ldr	r3, [fp, #-8]
     474:	e3530000 	cmp	r3, #0
     478:	aa000001 	bge	484 <stat+0x38>
     47c:	e3e03000 	mvn	r3, #0
     480:	ea000006 	b	4a0 <stat+0x54>
     484:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     488:	e51b0008 	ldr	r0, [fp, #-8]
     48c:	eb00015b 	bl	a00 <fstat>
     490:	e50b000c 	str	r0, [fp, #-12]
     494:	e51b0008 	ldr	r0, [fp, #-8]
     498:	eb000122 	bl	928 <close>
     49c:	e51b300c 	ldr	r3, [fp, #-12]
     4a0:	e1a00003 	mov	r0, r3
     4a4:	e24bd004 	sub	sp, fp, #4
     4a8:	e8bd8800 	pop	{fp, pc}

000004ac <atoi>:
     4ac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4b0:	e28db000 	add	fp, sp, #0
     4b4:	e24dd014 	sub	sp, sp, #20
     4b8:	e50b0010 	str	r0, [fp, #-16]
     4bc:	e3a03000 	mov	r3, #0
     4c0:	e50b3008 	str	r3, [fp, #-8]
     4c4:	ea00000c 	b	4fc <atoi+0x50>
     4c8:	e51b2008 	ldr	r2, [fp, #-8]
     4cc:	e1a03002 	mov	r3, r2
     4d0:	e1a03103 	lsl	r3, r3, #2
     4d4:	e0833002 	add	r3, r3, r2
     4d8:	e1a03083 	lsl	r3, r3, #1
     4dc:	e1a01003 	mov	r1, r3
     4e0:	e51b3010 	ldr	r3, [fp, #-16]
     4e4:	e2832001 	add	r2, r3, #1
     4e8:	e50b2010 	str	r2, [fp, #-16]
     4ec:	e5d33000 	ldrb	r3, [r3]
     4f0:	e0813003 	add	r3, r1, r3
     4f4:	e2433030 	sub	r3, r3, #48	@ 0x30
     4f8:	e50b3008 	str	r3, [fp, #-8]
     4fc:	e51b3010 	ldr	r3, [fp, #-16]
     500:	e5d33000 	ldrb	r3, [r3]
     504:	e353002f 	cmp	r3, #47	@ 0x2f
     508:	9a000003 	bls	51c <atoi+0x70>
     50c:	e51b3010 	ldr	r3, [fp, #-16]
     510:	e5d33000 	ldrb	r3, [r3]
     514:	e3530039 	cmp	r3, #57	@ 0x39
     518:	9affffea 	bls	4c8 <atoi+0x1c>
     51c:	e51b3010 	ldr	r3, [fp, #-16]
     520:	e5d33000 	ldrb	r3, [r3]
     524:	e3530000 	cmp	r3, #0
     528:	1a000001 	bne	534 <atoi+0x88>
     52c:	e51b3008 	ldr	r3, [fp, #-8]
     530:	ea000000 	b	538 <atoi+0x8c>
     534:	e3e03000 	mvn	r3, #0
     538:	e1a00003 	mov	r0, r3
     53c:	e28bd000 	add	sp, fp, #0
     540:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     544:	e12fff1e 	bx	lr

00000548 <memmove>:
     548:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     54c:	e28db000 	add	fp, sp, #0
     550:	e24dd01c 	sub	sp, sp, #28
     554:	e50b0010 	str	r0, [fp, #-16]
     558:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     55c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     560:	e51b3010 	ldr	r3, [fp, #-16]
     564:	e50b3008 	str	r3, [fp, #-8]
     568:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     56c:	e50b300c 	str	r3, [fp, #-12]
     570:	ea000007 	b	594 <memmove+0x4c>
     574:	e51b200c 	ldr	r2, [fp, #-12]
     578:	e2823001 	add	r3, r2, #1
     57c:	e50b300c 	str	r3, [fp, #-12]
     580:	e51b3008 	ldr	r3, [fp, #-8]
     584:	e2831001 	add	r1, r3, #1
     588:	e50b1008 	str	r1, [fp, #-8]
     58c:	e5d22000 	ldrb	r2, [r2]
     590:	e5c32000 	strb	r2, [r3]
     594:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     598:	e2432001 	sub	r2, r3, #1
     59c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5a0:	e3530000 	cmp	r3, #0
     5a4:	cafffff2 	bgt	574 <memmove+0x2c>
     5a8:	e51b3010 	ldr	r3, [fp, #-16]
     5ac:	e1a00003 	mov	r0, r3
     5b0:	e28bd000 	add	sp, fp, #0
     5b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5b8:	e12fff1e 	bx	lr

000005bc <initiateLock>:
     5bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5c0:	e28db000 	add	fp, sp, #0
     5c4:	e24dd00c 	sub	sp, sp, #12
     5c8:	e50b0008 	str	r0, [fp, #-8]
     5cc:	e51b3008 	ldr	r3, [fp, #-8]
     5d0:	e3a02000 	mov	r2, #0
     5d4:	e5832000 	str	r2, [r3]
     5d8:	e51b3008 	ldr	r3, [fp, #-8]
     5dc:	e3a02001 	mov	r2, #1
     5e0:	e5832004 	str	r2, [r3, #4]
     5e4:	e1a00000 	nop			@ (mov r0, r0)
     5e8:	e28bd000 	add	sp, fp, #0
     5ec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5f0:	e12fff1e 	bx	lr

000005f4 <acquireLock>:
     5f4:	e92d4800 	push	{fp, lr}
     5f8:	e28db004 	add	fp, sp, #4
     5fc:	e24dd008 	sub	sp, sp, #8
     600:	e50b0008 	str	r0, [fp, #-8]
     604:	ea000001 	b	610 <acquireLock+0x1c>
     608:	e3a00001 	mov	r0, #1
     60c:	eb00013a 	bl	afc <sleep>
     610:	e51b2008 	ldr	r2, [fp, #-8]
     614:	e3a01001 	mov	r1, #1
     618:	e1923f9f 	ldrex	r3, [r2]
     61c:	e1820f91 	strex	r0, r1, [r2]
     620:	e3500000 	cmp	r0, #0
     624:	1afffffb 	bne	618 <acquireLock+0x24>
     628:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     62c:	e3530001 	cmp	r3, #1
     630:	0afffff4 	beq	608 <acquireLock+0x14>
     634:	e1a00000 	nop			@ (mov r0, r0)
     638:	e1a00000 	nop			@ (mov r0, r0)
     63c:	e24bd004 	sub	sp, fp, #4
     640:	e8bd8800 	pop	{fp, pc}

00000644 <releaseLock>:
     644:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     648:	e28db000 	add	fp, sp, #0
     64c:	e24dd00c 	sub	sp, sp, #12
     650:	e50b0008 	str	r0, [fp, #-8]
     654:	e51b3008 	ldr	r3, [fp, #-8]
     658:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     65c:	e3a02000 	mov	r2, #0
     660:	e5832000 	str	r2, [r3]
     664:	e1a00000 	nop			@ (mov r0, r0)
     668:	e28bd000 	add	sp, fp, #0
     66c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     670:	e12fff1e 	bx	lr

00000674 <initiateCondVar>:
     674:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     678:	e28db000 	add	fp, sp, #0
     67c:	e24dd00c 	sub	sp, sp, #12
     680:	e50b0008 	str	r0, [fp, #-8]
     684:	e51b3008 	ldr	r3, [fp, #-8]
     688:	e3a02000 	mov	r2, #0
     68c:	e5832000 	str	r2, [r3]
     690:	e51b3008 	ldr	r3, [fp, #-8]
     694:	e3a02001 	mov	r2, #1
     698:	e5832004 	str	r2, [r3, #4]
     69c:	e1a00000 	nop			@ (mov r0, r0)
     6a0:	e28bd000 	add	sp, fp, #0
     6a4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6a8:	e12fff1e 	bx	lr

000006ac <condWait>:
     6ac:	e92d4800 	push	{fp, lr}
     6b0:	e28db004 	add	fp, sp, #4
     6b4:	e24dd008 	sub	sp, sp, #8
     6b8:	e50b0008 	str	r0, [fp, #-8]
     6bc:	e50b100c 	str	r1, [fp, #-12]
     6c0:	e51b000c 	ldr	r0, [fp, #-12]
     6c4:	ebffffde 	bl	644 <releaseLock>
     6c8:	e51b3008 	ldr	r3, [fp, #-8]
     6cc:	e5933000 	ldr	r3, [r3]
     6d0:	e1a00003 	mov	r0, r3
     6d4:	eb00017d 	bl	cd0 <sleepChan>
     6d8:	e51b000c 	ldr	r0, [fp, #-12]
     6dc:	ebffffc4 	bl	5f4 <acquireLock>
     6e0:	e1a00000 	nop			@ (mov r0, r0)
     6e4:	e24bd004 	sub	sp, fp, #4
     6e8:	e8bd8800 	pop	{fp, pc}

000006ec <broadcast>:
     6ec:	e92d4800 	push	{fp, lr}
     6f0:	e28db004 	add	fp, sp, #4
     6f4:	e24dd008 	sub	sp, sp, #8
     6f8:	e50b0008 	str	r0, [fp, #-8]
     6fc:	e51b3008 	ldr	r3, [fp, #-8]
     700:	e5933000 	ldr	r3, [r3]
     704:	e1a00003 	mov	r0, r3
     708:	eb000182 	bl	d18 <sigChan>
     70c:	e1a00000 	nop			@ (mov r0, r0)
     710:	e24bd004 	sub	sp, fp, #4
     714:	e8bd8800 	pop	{fp, pc}

00000718 <semInit>:
     718:	e92d4800 	push	{fp, lr}
     71c:	e28db004 	add	fp, sp, #4
     720:	e24dd008 	sub	sp, sp, #8
     724:	e50b0008 	str	r0, [fp, #-8]
     728:	e50b100c 	str	r1, [fp, #-12]
     72c:	e51b3008 	ldr	r3, [fp, #-8]
     730:	e51b200c 	ldr	r2, [fp, #-12]
     734:	e5832000 	str	r2, [r3]
     738:	e51b3008 	ldr	r3, [fp, #-8]
     73c:	e2833004 	add	r3, r3, #4
     740:	e1a00003 	mov	r0, r3
     744:	ebffff9c 	bl	5bc <initiateLock>
     748:	e51b3008 	ldr	r3, [fp, #-8]
     74c:	e283300c 	add	r3, r3, #12
     750:	e1a00003 	mov	r0, r3
     754:	ebffffc6 	bl	674 <initiateCondVar>
     758:	e51b3008 	ldr	r3, [fp, #-8]
     75c:	e3a02001 	mov	r2, #1
     760:	e5832014 	str	r2, [r3, #20]
     764:	e1a00000 	nop			@ (mov r0, r0)
     768:	e24bd004 	sub	sp, fp, #4
     76c:	e8bd8800 	pop	{fp, pc}

00000770 <semUp>:
     770:	e92d4800 	push	{fp, lr}
     774:	e28db004 	add	fp, sp, #4
     778:	e24dd008 	sub	sp, sp, #8
     77c:	e50b0008 	str	r0, [fp, #-8]
     780:	e51b3008 	ldr	r3, [fp, #-8]
     784:	e2833004 	add	r3, r3, #4
     788:	e1a00003 	mov	r0, r3
     78c:	ebffff98 	bl	5f4 <acquireLock>
     790:	e51b3008 	ldr	r3, [fp, #-8]
     794:	e5933000 	ldr	r3, [r3]
     798:	e2832001 	add	r2, r3, #1
     79c:	e51b3008 	ldr	r3, [fp, #-8]
     7a0:	e5832000 	str	r2, [r3]
     7a4:	e51b3008 	ldr	r3, [fp, #-8]
     7a8:	e283300c 	add	r3, r3, #12
     7ac:	e1a00003 	mov	r0, r3
     7b0:	ebffffcd 	bl	6ec <broadcast>
     7b4:	e51b3008 	ldr	r3, [fp, #-8]
     7b8:	e2833004 	add	r3, r3, #4
     7bc:	e1a00003 	mov	r0, r3
     7c0:	ebffff9f 	bl	644 <releaseLock>
     7c4:	e1a00000 	nop			@ (mov r0, r0)
     7c8:	e24bd004 	sub	sp, fp, #4
     7cc:	e8bd8800 	pop	{fp, pc}

000007d0 <semDown>:
     7d0:	e92d4800 	push	{fp, lr}
     7d4:	e28db004 	add	fp, sp, #4
     7d8:	e24dd008 	sub	sp, sp, #8
     7dc:	e50b0008 	str	r0, [fp, #-8]
     7e0:	e51b3008 	ldr	r3, [fp, #-8]
     7e4:	e2833004 	add	r3, r3, #4
     7e8:	e1a00003 	mov	r0, r3
     7ec:	ebffff80 	bl	5f4 <acquireLock>
     7f0:	ea000006 	b	810 <semDown+0x40>
     7f4:	e51b3008 	ldr	r3, [fp, #-8]
     7f8:	e283200c 	add	r2, r3, #12
     7fc:	e51b3008 	ldr	r3, [fp, #-8]
     800:	e2833004 	add	r3, r3, #4
     804:	e1a01003 	mov	r1, r3
     808:	e1a00002 	mov	r0, r2
     80c:	ebffffa6 	bl	6ac <condWait>
     810:	e51b3008 	ldr	r3, [fp, #-8]
     814:	e5933000 	ldr	r3, [r3]
     818:	e3530000 	cmp	r3, #0
     81c:	dafffff4 	ble	7f4 <semDown+0x24>
     820:	e51b3008 	ldr	r3, [fp, #-8]
     824:	e5933000 	ldr	r3, [r3]
     828:	e2432001 	sub	r2, r3, #1
     82c:	e51b3008 	ldr	r3, [fp, #-8]
     830:	e5832000 	str	r2, [r3]
     834:	e51b3008 	ldr	r3, [fp, #-8]
     838:	e2833004 	add	r3, r3, #4
     83c:	e1a00003 	mov	r0, r3
     840:	ebffff7f 	bl	644 <releaseLock>
     844:	e1a00000 	nop			@ (mov r0, r0)
     848:	e24bd004 	sub	sp, fp, #4
     84c:	e8bd8800 	pop	{fp, pc}

00000850 <fork>:
     850:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     854:	e1a04003 	mov	r4, r3
     858:	e1a03002 	mov	r3, r2
     85c:	e1a02001 	mov	r2, r1
     860:	e1a01000 	mov	r1, r0
     864:	e3a00001 	mov	r0, #1
     868:	ef000000 	svc	0x00000000
     86c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     870:	e12fff1e 	bx	lr

00000874 <exit>:
     874:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     878:	e1a04003 	mov	r4, r3
     87c:	e1a03002 	mov	r3, r2
     880:	e1a02001 	mov	r2, r1
     884:	e1a01000 	mov	r1, r0
     888:	e3a00002 	mov	r0, #2
     88c:	ef000000 	svc	0x00000000
     890:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     894:	e12fff1e 	bx	lr

00000898 <wait>:
     898:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     89c:	e1a04003 	mov	r4, r3
     8a0:	e1a03002 	mov	r3, r2
     8a4:	e1a02001 	mov	r2, r1
     8a8:	e1a01000 	mov	r1, r0
     8ac:	e3a00003 	mov	r0, #3
     8b0:	ef000000 	svc	0x00000000
     8b4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8b8:	e12fff1e 	bx	lr

000008bc <pipe>:
     8bc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8c0:	e1a04003 	mov	r4, r3
     8c4:	e1a03002 	mov	r3, r2
     8c8:	e1a02001 	mov	r2, r1
     8cc:	e1a01000 	mov	r1, r0
     8d0:	e3a00004 	mov	r0, #4
     8d4:	ef000000 	svc	0x00000000
     8d8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8dc:	e12fff1e 	bx	lr

000008e0 <read>:
     8e0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8e4:	e1a04003 	mov	r4, r3
     8e8:	e1a03002 	mov	r3, r2
     8ec:	e1a02001 	mov	r2, r1
     8f0:	e1a01000 	mov	r1, r0
     8f4:	e3a00005 	mov	r0, #5
     8f8:	ef000000 	svc	0x00000000
     8fc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     900:	e12fff1e 	bx	lr

00000904 <write>:
     904:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     908:	e1a04003 	mov	r4, r3
     90c:	e1a03002 	mov	r3, r2
     910:	e1a02001 	mov	r2, r1
     914:	e1a01000 	mov	r1, r0
     918:	e3a00010 	mov	r0, #16
     91c:	ef000000 	svc	0x00000000
     920:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     924:	e12fff1e 	bx	lr

00000928 <close>:
     928:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     92c:	e1a04003 	mov	r4, r3
     930:	e1a03002 	mov	r3, r2
     934:	e1a02001 	mov	r2, r1
     938:	e1a01000 	mov	r1, r0
     93c:	e3a00015 	mov	r0, #21
     940:	ef000000 	svc	0x00000000
     944:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     948:	e12fff1e 	bx	lr

0000094c <kill>:
     94c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     950:	e1a04003 	mov	r4, r3
     954:	e1a03002 	mov	r3, r2
     958:	e1a02001 	mov	r2, r1
     95c:	e1a01000 	mov	r1, r0
     960:	e3a00006 	mov	r0, #6
     964:	ef000000 	svc	0x00000000
     968:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     96c:	e12fff1e 	bx	lr

00000970 <exec>:
     970:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     974:	e1a04003 	mov	r4, r3
     978:	e1a03002 	mov	r3, r2
     97c:	e1a02001 	mov	r2, r1
     980:	e1a01000 	mov	r1, r0
     984:	e3a00007 	mov	r0, #7
     988:	ef000000 	svc	0x00000000
     98c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     990:	e12fff1e 	bx	lr

00000994 <open>:
     994:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     998:	e1a04003 	mov	r4, r3
     99c:	e1a03002 	mov	r3, r2
     9a0:	e1a02001 	mov	r2, r1
     9a4:	e1a01000 	mov	r1, r0
     9a8:	e3a0000f 	mov	r0, #15
     9ac:	ef000000 	svc	0x00000000
     9b0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9b4:	e12fff1e 	bx	lr

000009b8 <mknod>:
     9b8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9bc:	e1a04003 	mov	r4, r3
     9c0:	e1a03002 	mov	r3, r2
     9c4:	e1a02001 	mov	r2, r1
     9c8:	e1a01000 	mov	r1, r0
     9cc:	e3a00011 	mov	r0, #17
     9d0:	ef000000 	svc	0x00000000
     9d4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9d8:	e12fff1e 	bx	lr

000009dc <unlink>:
     9dc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9e0:	e1a04003 	mov	r4, r3
     9e4:	e1a03002 	mov	r3, r2
     9e8:	e1a02001 	mov	r2, r1
     9ec:	e1a01000 	mov	r1, r0
     9f0:	e3a00012 	mov	r0, #18
     9f4:	ef000000 	svc	0x00000000
     9f8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9fc:	e12fff1e 	bx	lr

00000a00 <fstat>:
     a00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a04:	e1a04003 	mov	r4, r3
     a08:	e1a03002 	mov	r3, r2
     a0c:	e1a02001 	mov	r2, r1
     a10:	e1a01000 	mov	r1, r0
     a14:	e3a00008 	mov	r0, #8
     a18:	ef000000 	svc	0x00000000
     a1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a20:	e12fff1e 	bx	lr

00000a24 <link>:
     a24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a28:	e1a04003 	mov	r4, r3
     a2c:	e1a03002 	mov	r3, r2
     a30:	e1a02001 	mov	r2, r1
     a34:	e1a01000 	mov	r1, r0
     a38:	e3a00013 	mov	r0, #19
     a3c:	ef000000 	svc	0x00000000
     a40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a44:	e12fff1e 	bx	lr

00000a48 <mkdir>:
     a48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a4c:	e1a04003 	mov	r4, r3
     a50:	e1a03002 	mov	r3, r2
     a54:	e1a02001 	mov	r2, r1
     a58:	e1a01000 	mov	r1, r0
     a5c:	e3a00014 	mov	r0, #20
     a60:	ef000000 	svc	0x00000000
     a64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a68:	e12fff1e 	bx	lr

00000a6c <chdir>:
     a6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a70:	e1a04003 	mov	r4, r3
     a74:	e1a03002 	mov	r3, r2
     a78:	e1a02001 	mov	r2, r1
     a7c:	e1a01000 	mov	r1, r0
     a80:	e3a00009 	mov	r0, #9
     a84:	ef000000 	svc	0x00000000
     a88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a8c:	e12fff1e 	bx	lr

00000a90 <dup>:
     a90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a94:	e1a04003 	mov	r4, r3
     a98:	e1a03002 	mov	r3, r2
     a9c:	e1a02001 	mov	r2, r1
     aa0:	e1a01000 	mov	r1, r0
     aa4:	e3a0000a 	mov	r0, #10
     aa8:	ef000000 	svc	0x00000000
     aac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ab0:	e12fff1e 	bx	lr

00000ab4 <getpid>:
     ab4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ab8:	e1a04003 	mov	r4, r3
     abc:	e1a03002 	mov	r3, r2
     ac0:	e1a02001 	mov	r2, r1
     ac4:	e1a01000 	mov	r1, r0
     ac8:	e3a0000b 	mov	r0, #11
     acc:	ef000000 	svc	0x00000000
     ad0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ad4:	e12fff1e 	bx	lr

00000ad8 <sbrk>:
     ad8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     adc:	e1a04003 	mov	r4, r3
     ae0:	e1a03002 	mov	r3, r2
     ae4:	e1a02001 	mov	r2, r1
     ae8:	e1a01000 	mov	r1, r0
     aec:	e3a0000c 	mov	r0, #12
     af0:	ef000000 	svc	0x00000000
     af4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     af8:	e12fff1e 	bx	lr

00000afc <sleep>:
     afc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b00:	e1a04003 	mov	r4, r3
     b04:	e1a03002 	mov	r3, r2
     b08:	e1a02001 	mov	r2, r1
     b0c:	e1a01000 	mov	r1, r0
     b10:	e3a0000d 	mov	r0, #13
     b14:	ef000000 	svc	0x00000000
     b18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b1c:	e12fff1e 	bx	lr

00000b20 <uptime>:
     b20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b24:	e1a04003 	mov	r4, r3
     b28:	e1a03002 	mov	r3, r2
     b2c:	e1a02001 	mov	r2, r1
     b30:	e1a01000 	mov	r1, r0
     b34:	e3a0000e 	mov	r0, #14
     b38:	ef000000 	svc	0x00000000
     b3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b40:	e12fff1e 	bx	lr

00000b44 <getprocs>:
     b44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b48:	e1a04003 	mov	r4, r3
     b4c:	e1a03002 	mov	r3, r2
     b50:	e1a02001 	mov	r2, r1
     b54:	e1a01000 	mov	r1, r0
     b58:	e3a00016 	mov	r0, #22
     b5c:	ef000000 	svc	0x00000000
     b60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b64:	e12fff1e 	bx	lr

00000b68 <settickets>:
     b68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b6c:	e1a04003 	mov	r4, r3
     b70:	e1a03002 	mov	r3, r2
     b74:	e1a02001 	mov	r2, r1
     b78:	e1a01000 	mov	r1, r0
     b7c:	e3a00017 	mov	r0, #23
     b80:	ef000000 	svc	0x00000000
     b84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b88:	e12fff1e 	bx	lr

00000b8c <srand>:
     b8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b90:	e1a04003 	mov	r4, r3
     b94:	e1a03002 	mov	r3, r2
     b98:	e1a02001 	mov	r2, r1
     b9c:	e1a01000 	mov	r1, r0
     ba0:	e3a00018 	mov	r0, #24
     ba4:	ef000000 	svc	0x00000000
     ba8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bac:	e12fff1e 	bx	lr

00000bb0 <getpinfo>:
     bb0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bb4:	e1a04003 	mov	r4, r3
     bb8:	e1a03002 	mov	r3, r2
     bbc:	e1a02001 	mov	r2, r1
     bc0:	e1a01000 	mov	r1, r0
     bc4:	e3a00019 	mov	r0, #25
     bc8:	ef000000 	svc	0x00000000
     bcc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bd0:	e12fff1e 	bx	lr

00000bd4 <dumppagetable>:
     bd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bd8:	e1a04003 	mov	r4, r3
     bdc:	e1a03002 	mov	r3, r2
     be0:	e1a02001 	mov	r2, r1
     be4:	e1a01000 	mov	r1, r0
     be8:	e3a0001a 	mov	r0, #26
     bec:	ef000000 	svc	0x00000000
     bf0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bf4:	e12fff1e 	bx	lr

00000bf8 <thread_create>:
     bf8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bfc:	e1a04003 	mov	r4, r3
     c00:	e1a03002 	mov	r3, r2
     c04:	e1a02001 	mov	r2, r1
     c08:	e1a01000 	mov	r1, r0
     c0c:	e3a0001b 	mov	r0, #27
     c10:	ef000000 	svc	0x00000000
     c14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c18:	e12fff1e 	bx	lr

00000c1c <thread_exit>:
     c1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c20:	e1a04003 	mov	r4, r3
     c24:	e1a03002 	mov	r3, r2
     c28:	e1a02001 	mov	r2, r1
     c2c:	e1a01000 	mov	r1, r0
     c30:	e3a0001c 	mov	r0, #28
     c34:	ef000000 	svc	0x00000000
     c38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c3c:	e12fff1e 	bx	lr

00000c40 <thread_join>:
     c40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c44:	e1a04003 	mov	r4, r3
     c48:	e1a03002 	mov	r3, r2
     c4c:	e1a02001 	mov	r2, r1
     c50:	e1a01000 	mov	r1, r0
     c54:	e3a0001d 	mov	r0, #29
     c58:	ef000000 	svc	0x00000000
     c5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c60:	e12fff1e 	bx	lr

00000c64 <waitpid>:
     c64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c68:	e1a04003 	mov	r4, r3
     c6c:	e1a03002 	mov	r3, r2
     c70:	e1a02001 	mov	r2, r1
     c74:	e1a01000 	mov	r1, r0
     c78:	e3a0001e 	mov	r0, #30
     c7c:	ef000000 	svc	0x00000000
     c80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c84:	e12fff1e 	bx	lr

00000c88 <barrier_init>:
     c88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c8c:	e1a04003 	mov	r4, r3
     c90:	e1a03002 	mov	r3, r2
     c94:	e1a02001 	mov	r2, r1
     c98:	e1a01000 	mov	r1, r0
     c9c:	e3a0001f 	mov	r0, #31
     ca0:	ef000000 	svc	0x00000000
     ca4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ca8:	e12fff1e 	bx	lr

00000cac <barrier_check>:
     cac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cb0:	e1a04003 	mov	r4, r3
     cb4:	e1a03002 	mov	r3, r2
     cb8:	e1a02001 	mov	r2, r1
     cbc:	e1a01000 	mov	r1, r0
     cc0:	e3a00020 	mov	r0, #32
     cc4:	ef000000 	svc	0x00000000
     cc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ccc:	e12fff1e 	bx	lr

00000cd0 <sleepChan>:
     cd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cd4:	e1a04003 	mov	r4, r3
     cd8:	e1a03002 	mov	r3, r2
     cdc:	e1a02001 	mov	r2, r1
     ce0:	e1a01000 	mov	r1, r0
     ce4:	e3a00024 	mov	r0, #36	@ 0x24
     ce8:	ef000000 	svc	0x00000000
     cec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cf0:	e12fff1e 	bx	lr

00000cf4 <getChannel>:
     cf4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cf8:	e1a04003 	mov	r4, r3
     cfc:	e1a03002 	mov	r3, r2
     d00:	e1a02001 	mov	r2, r1
     d04:	e1a01000 	mov	r1, r0
     d08:	e3a00025 	mov	r0, #37	@ 0x25
     d0c:	ef000000 	svc	0x00000000
     d10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d14:	e12fff1e 	bx	lr

00000d18 <sigChan>:
     d18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d1c:	e1a04003 	mov	r4, r3
     d20:	e1a03002 	mov	r3, r2
     d24:	e1a02001 	mov	r2, r1
     d28:	e1a01000 	mov	r1, r0
     d2c:	e3a00026 	mov	r0, #38	@ 0x26
     d30:	ef000000 	svc	0x00000000
     d34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d38:	e12fff1e 	bx	lr

00000d3c <sigOneChan>:
     d3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d40:	e1a04003 	mov	r4, r3
     d44:	e1a03002 	mov	r3, r2
     d48:	e1a02001 	mov	r2, r1
     d4c:	e1a01000 	mov	r1, r0
     d50:	e3a00027 	mov	r0, #39	@ 0x27
     d54:	ef000000 	svc	0x00000000
     d58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d5c:	e12fff1e 	bx	lr

00000d60 <putc>:
     d60:	e92d4800 	push	{fp, lr}
     d64:	e28db004 	add	fp, sp, #4
     d68:	e24dd008 	sub	sp, sp, #8
     d6c:	e50b0008 	str	r0, [fp, #-8]
     d70:	e1a03001 	mov	r3, r1
     d74:	e54b3009 	strb	r3, [fp, #-9]
     d78:	e24b3009 	sub	r3, fp, #9
     d7c:	e3a02001 	mov	r2, #1
     d80:	e1a01003 	mov	r1, r3
     d84:	e51b0008 	ldr	r0, [fp, #-8]
     d88:	ebfffedd 	bl	904 <write>
     d8c:	e1a00000 	nop			@ (mov r0, r0)
     d90:	e24bd004 	sub	sp, fp, #4
     d94:	e8bd8800 	pop	{fp, pc}

00000d98 <printint>:
     d98:	e92d4800 	push	{fp, lr}
     d9c:	e28db004 	add	fp, sp, #4
     da0:	e24dd030 	sub	sp, sp, #48	@ 0x30
     da4:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     da8:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     dac:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     db0:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     db4:	e3a03000 	mov	r3, #0
     db8:	e50b300c 	str	r3, [fp, #-12]
     dbc:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     dc0:	e3530000 	cmp	r3, #0
     dc4:	0a000008 	beq	dec <printint+0x54>
     dc8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     dcc:	e3530000 	cmp	r3, #0
     dd0:	aa000005 	bge	dec <printint+0x54>
     dd4:	e3a03001 	mov	r3, #1
     dd8:	e50b300c 	str	r3, [fp, #-12]
     ddc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     de0:	e2633000 	rsb	r3, r3, #0
     de4:	e50b3010 	str	r3, [fp, #-16]
     de8:	ea000001 	b	df4 <printint+0x5c>
     dec:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     df0:	e50b3010 	str	r3, [fp, #-16]
     df4:	e3a03000 	mov	r3, #0
     df8:	e50b3008 	str	r3, [fp, #-8]
     dfc:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     e00:	e51b3010 	ldr	r3, [fp, #-16]
     e04:	e1a01002 	mov	r1, r2
     e08:	e1a00003 	mov	r0, r3
     e0c:	eb0001d5 	bl	1568 <__aeabi_uidivmod>
     e10:	e1a03001 	mov	r3, r1
     e14:	e1a01003 	mov	r1, r3
     e18:	e51b3008 	ldr	r3, [fp, #-8]
     e1c:	e2832001 	add	r2, r3, #1
     e20:	e50b2008 	str	r2, [fp, #-8]
     e24:	e59f20a0 	ldr	r2, [pc, #160]	@ ecc <printint+0x134>
     e28:	e7d22001 	ldrb	r2, [r2, r1]
     e2c:	e2433004 	sub	r3, r3, #4
     e30:	e083300b 	add	r3, r3, fp
     e34:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     e38:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     e3c:	e1a01003 	mov	r1, r3
     e40:	e51b0010 	ldr	r0, [fp, #-16]
     e44:	eb00018a 	bl	1474 <__udivsi3>
     e48:	e1a03000 	mov	r3, r0
     e4c:	e50b3010 	str	r3, [fp, #-16]
     e50:	e51b3010 	ldr	r3, [fp, #-16]
     e54:	e3530000 	cmp	r3, #0
     e58:	1affffe7 	bne	dfc <printint+0x64>
     e5c:	e51b300c 	ldr	r3, [fp, #-12]
     e60:	e3530000 	cmp	r3, #0
     e64:	0a00000e 	beq	ea4 <printint+0x10c>
     e68:	e51b3008 	ldr	r3, [fp, #-8]
     e6c:	e2832001 	add	r2, r3, #1
     e70:	e50b2008 	str	r2, [fp, #-8]
     e74:	e2433004 	sub	r3, r3, #4
     e78:	e083300b 	add	r3, r3, fp
     e7c:	e3a0202d 	mov	r2, #45	@ 0x2d
     e80:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     e84:	ea000006 	b	ea4 <printint+0x10c>
     e88:	e24b2020 	sub	r2, fp, #32
     e8c:	e51b3008 	ldr	r3, [fp, #-8]
     e90:	e0823003 	add	r3, r2, r3
     e94:	e5d33000 	ldrb	r3, [r3]
     e98:	e1a01003 	mov	r1, r3
     e9c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     ea0:	ebffffae 	bl	d60 <putc>
     ea4:	e51b3008 	ldr	r3, [fp, #-8]
     ea8:	e2433001 	sub	r3, r3, #1
     eac:	e50b3008 	str	r3, [fp, #-8]
     eb0:	e51b3008 	ldr	r3, [fp, #-8]
     eb4:	e3530000 	cmp	r3, #0
     eb8:	aafffff2 	bge	e88 <printint+0xf0>
     ebc:	e1a00000 	nop			@ (mov r0, r0)
     ec0:	e1a00000 	nop			@ (mov r0, r0)
     ec4:	e24bd004 	sub	sp, fp, #4
     ec8:	e8bd8800 	pop	{fp, pc}
     ecc:	00001620 	.word	0x00001620

00000ed0 <printf>:
     ed0:	e92d000e 	push	{r1, r2, r3}
     ed4:	e92d4800 	push	{fp, lr}
     ed8:	e28db004 	add	fp, sp, #4
     edc:	e24dd024 	sub	sp, sp, #36	@ 0x24
     ee0:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     ee4:	e3a03000 	mov	r3, #0
     ee8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     eec:	e28b3008 	add	r3, fp, #8
     ef0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ef4:	e3a03000 	mov	r3, #0
     ef8:	e50b3010 	str	r3, [fp, #-16]
     efc:	ea000074 	b	10d4 <printf+0x204>
     f00:	e59b2004 	ldr	r2, [fp, #4]
     f04:	e51b3010 	ldr	r3, [fp, #-16]
     f08:	e0823003 	add	r3, r2, r3
     f0c:	e5d33000 	ldrb	r3, [r3]
     f10:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     f14:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     f18:	e3530000 	cmp	r3, #0
     f1c:	1a00000b 	bne	f50 <printf+0x80>
     f20:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f24:	e3530025 	cmp	r3, #37	@ 0x25
     f28:	1a000002 	bne	f38 <printf+0x68>
     f2c:	e3a03025 	mov	r3, #37	@ 0x25
     f30:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f34:	ea000063 	b	10c8 <printf+0x1f8>
     f38:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f3c:	e6ef3073 	uxtb	r3, r3
     f40:	e1a01003 	mov	r1, r3
     f44:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f48:	ebffff84 	bl	d60 <putc>
     f4c:	ea00005d 	b	10c8 <printf+0x1f8>
     f50:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     f54:	e3530025 	cmp	r3, #37	@ 0x25
     f58:	1a00005a 	bne	10c8 <printf+0x1f8>
     f5c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f60:	e3530064 	cmp	r3, #100	@ 0x64
     f64:	1a00000a 	bne	f94 <printf+0xc4>
     f68:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f6c:	e5933000 	ldr	r3, [r3]
     f70:	e1a01003 	mov	r1, r3
     f74:	e3a03001 	mov	r3, #1
     f78:	e3a0200a 	mov	r2, #10
     f7c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f80:	ebffff84 	bl	d98 <printint>
     f84:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f88:	e2833004 	add	r3, r3, #4
     f8c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f90:	ea00004a 	b	10c0 <printf+0x1f0>
     f94:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f98:	e3530078 	cmp	r3, #120	@ 0x78
     f9c:	0a000002 	beq	fac <printf+0xdc>
     fa0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fa4:	e3530070 	cmp	r3, #112	@ 0x70
     fa8:	1a00000a 	bne	fd8 <printf+0x108>
     fac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fb0:	e5933000 	ldr	r3, [r3]
     fb4:	e1a01003 	mov	r1, r3
     fb8:	e3a03000 	mov	r3, #0
     fbc:	e3a02010 	mov	r2, #16
     fc0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fc4:	ebffff73 	bl	d98 <printint>
     fc8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fcc:	e2833004 	add	r3, r3, #4
     fd0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fd4:	ea000039 	b	10c0 <printf+0x1f0>
     fd8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fdc:	e3530073 	cmp	r3, #115	@ 0x73
     fe0:	1a000018 	bne	1048 <printf+0x178>
     fe4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fe8:	e5933000 	ldr	r3, [r3]
     fec:	e50b300c 	str	r3, [fp, #-12]
     ff0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ff4:	e2833004 	add	r3, r3, #4
     ff8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ffc:	e51b300c 	ldr	r3, [fp, #-12]
    1000:	e3530000 	cmp	r3, #0
    1004:	1a00000a 	bne	1034 <printf+0x164>
    1008:	e59f30f4 	ldr	r3, [pc, #244]	@ 1104 <printf+0x234>
    100c:	e50b300c 	str	r3, [fp, #-12]
    1010:	ea000007 	b	1034 <printf+0x164>
    1014:	e51b300c 	ldr	r3, [fp, #-12]
    1018:	e5d33000 	ldrb	r3, [r3]
    101c:	e1a01003 	mov	r1, r3
    1020:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1024:	ebffff4d 	bl	d60 <putc>
    1028:	e51b300c 	ldr	r3, [fp, #-12]
    102c:	e2833001 	add	r3, r3, #1
    1030:	e50b300c 	str	r3, [fp, #-12]
    1034:	e51b300c 	ldr	r3, [fp, #-12]
    1038:	e5d33000 	ldrb	r3, [r3]
    103c:	e3530000 	cmp	r3, #0
    1040:	1afffff3 	bne	1014 <printf+0x144>
    1044:	ea00001d 	b	10c0 <printf+0x1f0>
    1048:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    104c:	e3530063 	cmp	r3, #99	@ 0x63
    1050:	1a000009 	bne	107c <printf+0x1ac>
    1054:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1058:	e5933000 	ldr	r3, [r3]
    105c:	e6ef3073 	uxtb	r3, r3
    1060:	e1a01003 	mov	r1, r3
    1064:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1068:	ebffff3c 	bl	d60 <putc>
    106c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1070:	e2833004 	add	r3, r3, #4
    1074:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1078:	ea000010 	b	10c0 <printf+0x1f0>
    107c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1080:	e3530025 	cmp	r3, #37	@ 0x25
    1084:	1a000005 	bne	10a0 <printf+0x1d0>
    1088:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    108c:	e6ef3073 	uxtb	r3, r3
    1090:	e1a01003 	mov	r1, r3
    1094:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1098:	ebffff30 	bl	d60 <putc>
    109c:	ea000007 	b	10c0 <printf+0x1f0>
    10a0:	e3a01025 	mov	r1, #37	@ 0x25
    10a4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10a8:	ebffff2c 	bl	d60 <putc>
    10ac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10b0:	e6ef3073 	uxtb	r3, r3
    10b4:	e1a01003 	mov	r1, r3
    10b8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10bc:	ebffff27 	bl	d60 <putc>
    10c0:	e3a03000 	mov	r3, #0
    10c4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    10c8:	e51b3010 	ldr	r3, [fp, #-16]
    10cc:	e2833001 	add	r3, r3, #1
    10d0:	e50b3010 	str	r3, [fp, #-16]
    10d4:	e59b2004 	ldr	r2, [fp, #4]
    10d8:	e51b3010 	ldr	r3, [fp, #-16]
    10dc:	e0823003 	add	r3, r2, r3
    10e0:	e5d33000 	ldrb	r3, [r3]
    10e4:	e3530000 	cmp	r3, #0
    10e8:	1affff84 	bne	f00 <printf+0x30>
    10ec:	e1a00000 	nop			@ (mov r0, r0)
    10f0:	e1a00000 	nop			@ (mov r0, r0)
    10f4:	e24bd004 	sub	sp, fp, #4
    10f8:	e8bd4800 	pop	{fp, lr}
    10fc:	e28dd00c 	add	sp, sp, #12
    1100:	e12fff1e 	bx	lr
    1104:	00001618 	.word	0x00001618

00001108 <free>:
    1108:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    110c:	e28db000 	add	fp, sp, #0
    1110:	e24dd014 	sub	sp, sp, #20
    1114:	e50b0010 	str	r0, [fp, #-16]
    1118:	e51b3010 	ldr	r3, [fp, #-16]
    111c:	e2433008 	sub	r3, r3, #8
    1120:	e50b300c 	str	r3, [fp, #-12]
    1124:	e59f3154 	ldr	r3, [pc, #340]	@ 1280 <free+0x178>
    1128:	e5933000 	ldr	r3, [r3]
    112c:	e50b3008 	str	r3, [fp, #-8]
    1130:	ea000010 	b	1178 <free+0x70>
    1134:	e51b3008 	ldr	r3, [fp, #-8]
    1138:	e5933000 	ldr	r3, [r3]
    113c:	e51b2008 	ldr	r2, [fp, #-8]
    1140:	e1520003 	cmp	r2, r3
    1144:	3a000008 	bcc	116c <free+0x64>
    1148:	e51b200c 	ldr	r2, [fp, #-12]
    114c:	e51b3008 	ldr	r3, [fp, #-8]
    1150:	e1520003 	cmp	r2, r3
    1154:	8a000010 	bhi	119c <free+0x94>
    1158:	e51b3008 	ldr	r3, [fp, #-8]
    115c:	e5933000 	ldr	r3, [r3]
    1160:	e51b200c 	ldr	r2, [fp, #-12]
    1164:	e1520003 	cmp	r2, r3
    1168:	3a00000b 	bcc	119c <free+0x94>
    116c:	e51b3008 	ldr	r3, [fp, #-8]
    1170:	e5933000 	ldr	r3, [r3]
    1174:	e50b3008 	str	r3, [fp, #-8]
    1178:	e51b200c 	ldr	r2, [fp, #-12]
    117c:	e51b3008 	ldr	r3, [fp, #-8]
    1180:	e1520003 	cmp	r2, r3
    1184:	9affffea 	bls	1134 <free+0x2c>
    1188:	e51b3008 	ldr	r3, [fp, #-8]
    118c:	e5933000 	ldr	r3, [r3]
    1190:	e51b200c 	ldr	r2, [fp, #-12]
    1194:	e1520003 	cmp	r2, r3
    1198:	2affffe5 	bcs	1134 <free+0x2c>
    119c:	e51b300c 	ldr	r3, [fp, #-12]
    11a0:	e5933004 	ldr	r3, [r3, #4]
    11a4:	e1a03183 	lsl	r3, r3, #3
    11a8:	e51b200c 	ldr	r2, [fp, #-12]
    11ac:	e0822003 	add	r2, r2, r3
    11b0:	e51b3008 	ldr	r3, [fp, #-8]
    11b4:	e5933000 	ldr	r3, [r3]
    11b8:	e1520003 	cmp	r2, r3
    11bc:	1a00000d 	bne	11f8 <free+0xf0>
    11c0:	e51b300c 	ldr	r3, [fp, #-12]
    11c4:	e5932004 	ldr	r2, [r3, #4]
    11c8:	e51b3008 	ldr	r3, [fp, #-8]
    11cc:	e5933000 	ldr	r3, [r3]
    11d0:	e5933004 	ldr	r3, [r3, #4]
    11d4:	e0822003 	add	r2, r2, r3
    11d8:	e51b300c 	ldr	r3, [fp, #-12]
    11dc:	e5832004 	str	r2, [r3, #4]
    11e0:	e51b3008 	ldr	r3, [fp, #-8]
    11e4:	e5933000 	ldr	r3, [r3]
    11e8:	e5932000 	ldr	r2, [r3]
    11ec:	e51b300c 	ldr	r3, [fp, #-12]
    11f0:	e5832000 	str	r2, [r3]
    11f4:	ea000003 	b	1208 <free+0x100>
    11f8:	e51b3008 	ldr	r3, [fp, #-8]
    11fc:	e5932000 	ldr	r2, [r3]
    1200:	e51b300c 	ldr	r3, [fp, #-12]
    1204:	e5832000 	str	r2, [r3]
    1208:	e51b3008 	ldr	r3, [fp, #-8]
    120c:	e5933004 	ldr	r3, [r3, #4]
    1210:	e1a03183 	lsl	r3, r3, #3
    1214:	e51b2008 	ldr	r2, [fp, #-8]
    1218:	e0823003 	add	r3, r2, r3
    121c:	e51b200c 	ldr	r2, [fp, #-12]
    1220:	e1520003 	cmp	r2, r3
    1224:	1a00000b 	bne	1258 <free+0x150>
    1228:	e51b3008 	ldr	r3, [fp, #-8]
    122c:	e5932004 	ldr	r2, [r3, #4]
    1230:	e51b300c 	ldr	r3, [fp, #-12]
    1234:	e5933004 	ldr	r3, [r3, #4]
    1238:	e0822003 	add	r2, r2, r3
    123c:	e51b3008 	ldr	r3, [fp, #-8]
    1240:	e5832004 	str	r2, [r3, #4]
    1244:	e51b300c 	ldr	r3, [fp, #-12]
    1248:	e5932000 	ldr	r2, [r3]
    124c:	e51b3008 	ldr	r3, [fp, #-8]
    1250:	e5832000 	str	r2, [r3]
    1254:	ea000002 	b	1264 <free+0x15c>
    1258:	e51b3008 	ldr	r3, [fp, #-8]
    125c:	e51b200c 	ldr	r2, [fp, #-12]
    1260:	e5832000 	str	r2, [r3]
    1264:	e59f2014 	ldr	r2, [pc, #20]	@ 1280 <free+0x178>
    1268:	e51b3008 	ldr	r3, [fp, #-8]
    126c:	e5823000 	str	r3, [r2]
    1270:	e1a00000 	nop			@ (mov r0, r0)
    1274:	e28bd000 	add	sp, fp, #0
    1278:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    127c:	e12fff1e 	bx	lr
    1280:	0000163c 	.word	0x0000163c

00001284 <morecore>:
    1284:	e92d4800 	push	{fp, lr}
    1288:	e28db004 	add	fp, sp, #4
    128c:	e24dd010 	sub	sp, sp, #16
    1290:	e50b0010 	str	r0, [fp, #-16]
    1294:	e51b3010 	ldr	r3, [fp, #-16]
    1298:	e3530a01 	cmp	r3, #4096	@ 0x1000
    129c:	2a000001 	bcs	12a8 <morecore+0x24>
    12a0:	e3a03a01 	mov	r3, #4096	@ 0x1000
    12a4:	e50b3010 	str	r3, [fp, #-16]
    12a8:	e51b3010 	ldr	r3, [fp, #-16]
    12ac:	e1a03183 	lsl	r3, r3, #3
    12b0:	e1a00003 	mov	r0, r3
    12b4:	ebfffe07 	bl	ad8 <sbrk>
    12b8:	e50b0008 	str	r0, [fp, #-8]
    12bc:	e51b3008 	ldr	r3, [fp, #-8]
    12c0:	e3730001 	cmn	r3, #1
    12c4:	1a000001 	bne	12d0 <morecore+0x4c>
    12c8:	e3a03000 	mov	r3, #0
    12cc:	ea00000a 	b	12fc <morecore+0x78>
    12d0:	e51b3008 	ldr	r3, [fp, #-8]
    12d4:	e50b300c 	str	r3, [fp, #-12]
    12d8:	e51b300c 	ldr	r3, [fp, #-12]
    12dc:	e51b2010 	ldr	r2, [fp, #-16]
    12e0:	e5832004 	str	r2, [r3, #4]
    12e4:	e51b300c 	ldr	r3, [fp, #-12]
    12e8:	e2833008 	add	r3, r3, #8
    12ec:	e1a00003 	mov	r0, r3
    12f0:	ebffff84 	bl	1108 <free>
    12f4:	e59f300c 	ldr	r3, [pc, #12]	@ 1308 <morecore+0x84>
    12f8:	e5933000 	ldr	r3, [r3]
    12fc:	e1a00003 	mov	r0, r3
    1300:	e24bd004 	sub	sp, fp, #4
    1304:	e8bd8800 	pop	{fp, pc}
    1308:	0000163c 	.word	0x0000163c

0000130c <malloc>:
    130c:	e92d4800 	push	{fp, lr}
    1310:	e28db004 	add	fp, sp, #4
    1314:	e24dd018 	sub	sp, sp, #24
    1318:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    131c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1320:	e2833007 	add	r3, r3, #7
    1324:	e1a031a3 	lsr	r3, r3, #3
    1328:	e2833001 	add	r3, r3, #1
    132c:	e50b3010 	str	r3, [fp, #-16]
    1330:	e59f3134 	ldr	r3, [pc, #308]	@ 146c <malloc+0x160>
    1334:	e5933000 	ldr	r3, [r3]
    1338:	e50b300c 	str	r3, [fp, #-12]
    133c:	e51b300c 	ldr	r3, [fp, #-12]
    1340:	e3530000 	cmp	r3, #0
    1344:	1a00000b 	bne	1378 <malloc+0x6c>
    1348:	e59f3120 	ldr	r3, [pc, #288]	@ 1470 <malloc+0x164>
    134c:	e50b300c 	str	r3, [fp, #-12]
    1350:	e59f2114 	ldr	r2, [pc, #276]	@ 146c <malloc+0x160>
    1354:	e51b300c 	ldr	r3, [fp, #-12]
    1358:	e5823000 	str	r3, [r2]
    135c:	e59f3108 	ldr	r3, [pc, #264]	@ 146c <malloc+0x160>
    1360:	e5933000 	ldr	r3, [r3]
    1364:	e59f2104 	ldr	r2, [pc, #260]	@ 1470 <malloc+0x164>
    1368:	e5823000 	str	r3, [r2]
    136c:	e59f30fc 	ldr	r3, [pc, #252]	@ 1470 <malloc+0x164>
    1370:	e3a02000 	mov	r2, #0
    1374:	e5832004 	str	r2, [r3, #4]
    1378:	e51b300c 	ldr	r3, [fp, #-12]
    137c:	e5933000 	ldr	r3, [r3]
    1380:	e50b3008 	str	r3, [fp, #-8]
    1384:	e51b3008 	ldr	r3, [fp, #-8]
    1388:	e5933004 	ldr	r3, [r3, #4]
    138c:	e51b2010 	ldr	r2, [fp, #-16]
    1390:	e1520003 	cmp	r2, r3
    1394:	8a00001e 	bhi	1414 <malloc+0x108>
    1398:	e51b3008 	ldr	r3, [fp, #-8]
    139c:	e5933004 	ldr	r3, [r3, #4]
    13a0:	e51b2010 	ldr	r2, [fp, #-16]
    13a4:	e1520003 	cmp	r2, r3
    13a8:	1a000004 	bne	13c0 <malloc+0xb4>
    13ac:	e51b3008 	ldr	r3, [fp, #-8]
    13b0:	e5932000 	ldr	r2, [r3]
    13b4:	e51b300c 	ldr	r3, [fp, #-12]
    13b8:	e5832000 	str	r2, [r3]
    13bc:	ea00000e 	b	13fc <malloc+0xf0>
    13c0:	e51b3008 	ldr	r3, [fp, #-8]
    13c4:	e5932004 	ldr	r2, [r3, #4]
    13c8:	e51b3010 	ldr	r3, [fp, #-16]
    13cc:	e0422003 	sub	r2, r2, r3
    13d0:	e51b3008 	ldr	r3, [fp, #-8]
    13d4:	e5832004 	str	r2, [r3, #4]
    13d8:	e51b3008 	ldr	r3, [fp, #-8]
    13dc:	e5933004 	ldr	r3, [r3, #4]
    13e0:	e1a03183 	lsl	r3, r3, #3
    13e4:	e51b2008 	ldr	r2, [fp, #-8]
    13e8:	e0823003 	add	r3, r2, r3
    13ec:	e50b3008 	str	r3, [fp, #-8]
    13f0:	e51b3008 	ldr	r3, [fp, #-8]
    13f4:	e51b2010 	ldr	r2, [fp, #-16]
    13f8:	e5832004 	str	r2, [r3, #4]
    13fc:	e59f2068 	ldr	r2, [pc, #104]	@ 146c <malloc+0x160>
    1400:	e51b300c 	ldr	r3, [fp, #-12]
    1404:	e5823000 	str	r3, [r2]
    1408:	e51b3008 	ldr	r3, [fp, #-8]
    140c:	e2833008 	add	r3, r3, #8
    1410:	ea000012 	b	1460 <malloc+0x154>
    1414:	e59f3050 	ldr	r3, [pc, #80]	@ 146c <malloc+0x160>
    1418:	e5933000 	ldr	r3, [r3]
    141c:	e51b2008 	ldr	r2, [fp, #-8]
    1420:	e1520003 	cmp	r2, r3
    1424:	1a000007 	bne	1448 <malloc+0x13c>
    1428:	e51b0010 	ldr	r0, [fp, #-16]
    142c:	ebffff94 	bl	1284 <morecore>
    1430:	e50b0008 	str	r0, [fp, #-8]
    1434:	e51b3008 	ldr	r3, [fp, #-8]
    1438:	e3530000 	cmp	r3, #0
    143c:	1a000001 	bne	1448 <malloc+0x13c>
    1440:	e3a03000 	mov	r3, #0
    1444:	ea000005 	b	1460 <malloc+0x154>
    1448:	e51b3008 	ldr	r3, [fp, #-8]
    144c:	e50b300c 	str	r3, [fp, #-12]
    1450:	e51b3008 	ldr	r3, [fp, #-8]
    1454:	e5933000 	ldr	r3, [r3]
    1458:	e50b3008 	str	r3, [fp, #-8]
    145c:	eaffffc8 	b	1384 <malloc+0x78>
    1460:	e1a00003 	mov	r0, r3
    1464:	e24bd004 	sub	sp, fp, #4
    1468:	e8bd8800 	pop	{fp, pc}
    146c:	0000163c 	.word	0x0000163c
    1470:	00001634 	.word	0x00001634

00001474 <__udivsi3>:
    1474:	e2512001 	subs	r2, r1, #1
    1478:	012fff1e 	bxeq	lr
    147c:	3a000036 	bcc	155c <__udivsi3+0xe8>
    1480:	e1500001 	cmp	r0, r1
    1484:	9a000022 	bls	1514 <__udivsi3+0xa0>
    1488:	e1110002 	tst	r1, r2
    148c:	0a000023 	beq	1520 <__udivsi3+0xac>
    1490:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1494:	01a01181 	lsleq	r1, r1, #3
    1498:	03a03008 	moveq	r3, #8
    149c:	13a03001 	movne	r3, #1
    14a0:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    14a4:	31510000 	cmpcc	r1, r0
    14a8:	31a01201 	lslcc	r1, r1, #4
    14ac:	31a03203 	lslcc	r3, r3, #4
    14b0:	3afffffa 	bcc	14a0 <__udivsi3+0x2c>
    14b4:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    14b8:	31510000 	cmpcc	r1, r0
    14bc:	31a01081 	lslcc	r1, r1, #1
    14c0:	31a03083 	lslcc	r3, r3, #1
    14c4:	3afffffa 	bcc	14b4 <__udivsi3+0x40>
    14c8:	e3a02000 	mov	r2, #0
    14cc:	e1500001 	cmp	r0, r1
    14d0:	20400001 	subcs	r0, r0, r1
    14d4:	21822003 	orrcs	r2, r2, r3
    14d8:	e15000a1 	cmp	r0, r1, lsr #1
    14dc:	204000a1 	subcs	r0, r0, r1, lsr #1
    14e0:	218220a3 	orrcs	r2, r2, r3, lsr #1
    14e4:	e1500121 	cmp	r0, r1, lsr #2
    14e8:	20400121 	subcs	r0, r0, r1, lsr #2
    14ec:	21822123 	orrcs	r2, r2, r3, lsr #2
    14f0:	e15001a1 	cmp	r0, r1, lsr #3
    14f4:	204001a1 	subcs	r0, r0, r1, lsr #3
    14f8:	218221a3 	orrcs	r2, r2, r3, lsr #3
    14fc:	e3500000 	cmp	r0, #0
    1500:	11b03223 	lsrsne	r3, r3, #4
    1504:	11a01221 	lsrne	r1, r1, #4
    1508:	1affffef 	bne	14cc <__udivsi3+0x58>
    150c:	e1a00002 	mov	r0, r2
    1510:	e12fff1e 	bx	lr
    1514:	03a00001 	moveq	r0, #1
    1518:	13a00000 	movne	r0, #0
    151c:	e12fff1e 	bx	lr
    1520:	e3510801 	cmp	r1, #65536	@ 0x10000
    1524:	21a01821 	lsrcs	r1, r1, #16
    1528:	23a02010 	movcs	r2, #16
    152c:	33a02000 	movcc	r2, #0
    1530:	e3510c01 	cmp	r1, #256	@ 0x100
    1534:	21a01421 	lsrcs	r1, r1, #8
    1538:	22822008 	addcs	r2, r2, #8
    153c:	e3510010 	cmp	r1, #16
    1540:	21a01221 	lsrcs	r1, r1, #4
    1544:	22822004 	addcs	r2, r2, #4
    1548:	e3510004 	cmp	r1, #4
    154c:	82822003 	addhi	r2, r2, #3
    1550:	908220a1 	addls	r2, r2, r1, lsr #1
    1554:	e1a00230 	lsr	r0, r0, r2
    1558:	e12fff1e 	bx	lr
    155c:	e3500000 	cmp	r0, #0
    1560:	13e00000 	mvnne	r0, #0
    1564:	ea000007 	b	1588 <__aeabi_idiv0>

00001568 <__aeabi_uidivmod>:
    1568:	e3510000 	cmp	r1, #0
    156c:	0afffffa 	beq	155c <__udivsi3+0xe8>
    1570:	e92d4003 	push	{r0, r1, lr}
    1574:	ebffffbe 	bl	1474 <__udivsi3>
    1578:	e8bd4006 	pop	{r1, r2, lr}
    157c:	e0030092 	mul	r3, r2, r0
    1580:	e0411003 	sub	r1, r1, r3
    1584:	e12fff1e 	bx	lr

00001588 <__aeabi_idiv0>:
    1588:	e12fff1e 	bx	lr
