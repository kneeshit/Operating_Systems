
_t_barrier:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e3a00003 	mov	r0, #3
      10:	eb000355 	bl	d6c <barrier_init>
      14:	eb000246 	bl	934 <fork>
      18:	e50b0008 	str	r0, [fp, #-8]
      1c:	e51b3008 	ldr	r3, [fp, #-8]
      20:	e3530000 	cmp	r3, #0
      24:	1a000009 	bne	50 <main+0x50>
      28:	e3a0000a 	mov	r0, #10
      2c:	eb0002eb 	bl	be0 <sleep>
      30:	e59f107c 	ldr	r1, [pc, #124]	@ b4 <main+0xb4>
      34:	e3a00001 	mov	r0, #1
      38:	eb0003dd 	bl	fb4 <printf>
      3c:	eb000353 	bl	d90 <barrier_check>
      40:	e59f1070 	ldr	r1, [pc, #112]	@ b8 <main+0xb8>
      44:	e3a00001 	mov	r0, #1
      48:	eb0003d9 	bl	fb4 <printf>
      4c:	eb000241 	bl	958 <exit>
      50:	eb000237 	bl	934 <fork>
      54:	e50b000c 	str	r0, [fp, #-12]
      58:	e51b300c 	ldr	r3, [fp, #-12]
      5c:	e3530000 	cmp	r3, #0
      60:	1a000009 	bne	8c <main+0x8c>
      64:	e3a00014 	mov	r0, #20
      68:	eb0002dc 	bl	be0 <sleep>
      6c:	e59f1048 	ldr	r1, [pc, #72]	@ bc <main+0xbc>
      70:	e3a00001 	mov	r0, #1
      74:	eb0003ce 	bl	fb4 <printf>
      78:	eb000344 	bl	d90 <barrier_check>
      7c:	e59f103c 	ldr	r1, [pc, #60]	@ c0 <main+0xc0>
      80:	e3a00001 	mov	r0, #1
      84:	eb0003ca 	bl	fb4 <printf>
      88:	eb000232 	bl	958 <exit>
      8c:	e59f1030 	ldr	r1, [pc, #48]	@ c4 <main+0xc4>
      90:	e3a00001 	mov	r0, #1
      94:	eb0003c6 	bl	fb4 <printf>
      98:	eb00033c 	bl	d90 <barrier_check>
      9c:	e59f1024 	ldr	r1, [pc, #36]	@ c8 <main+0xc8>
      a0:	e3a00001 	mov	r0, #1
      a4:	eb0003c2 	bl	fb4 <printf>
      a8:	eb000233 	bl	97c <wait>
      ac:	eb000232 	bl	97c <wait>
      b0:	eb000228 	bl	958 <exit>
      b4:	00001670 	.word	0x00001670
      b8:	00001684 	.word	0x00001684
      bc:	000016a0 	.word	0x000016a0
      c0:	000016b4 	.word	0x000016b4
      c4:	000016d0 	.word	0x000016d0
      c8:	000016e4 	.word	0x000016e4

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
     3c0:	eb00017f 	bl	9c4 <read>
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
     468:	eb000182 	bl	a78 <open>
     46c:	e50b0008 	str	r0, [fp, #-8]
     470:	e51b3008 	ldr	r3, [fp, #-8]
     474:	e3530000 	cmp	r3, #0
     478:	aa000001 	bge	484 <stat+0x38>
     47c:	e3e03000 	mvn	r3, #0
     480:	ea000006 	b	4a0 <stat+0x54>
     484:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     488:	e51b0008 	ldr	r0, [fp, #-8]
     48c:	eb000194 	bl	ae4 <fstat>
     490:	e50b000c 	str	r0, [fp, #-12]
     494:	e51b0008 	ldr	r0, [fp, #-8]
     498:	eb00015b 	bl	a0c <close>
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

000005f4 <xchg>:
     5f4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5f8:	e28db000 	add	fp, sp, #0
     5fc:	e24dd00c 	sub	sp, sp, #12
     600:	e50b0008 	str	r0, [fp, #-8]
     604:	e50b100c 	str	r1, [fp, #-12]
     608:	e51b200c 	ldr	r2, [fp, #-12]
     60c:	e51b3008 	ldr	r3, [fp, #-8]
     610:	e1931f9f 	ldrex	r1, [r3]
     614:	e1830f92 	strex	r0, r2, [r3]
     618:	e3500000 	cmp	r0, #0
     61c:	1afffffb 	bne	610 <xchg+0x1c>
     620:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     624:	e1a03001 	mov	r3, r1
     628:	e1a00003 	mov	r0, r3
     62c:	e28bd000 	add	sp, fp, #0
     630:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     634:	e12fff1e 	bx	lr

00000638 <acquireLock>:
     638:	e92d4800 	push	{fp, lr}
     63c:	e28db004 	add	fp, sp, #4
     640:	e24dd008 	sub	sp, sp, #8
     644:	e50b0008 	str	r0, [fp, #-8]
     648:	e51b3008 	ldr	r3, [fp, #-8]
     64c:	e5933004 	ldr	r3, [r3, #4]
     650:	e3530000 	cmp	r3, #0
     654:	0a000008 	beq	67c <acquireLock+0x44>
     658:	e1a00000 	nop			@ (mov r0, r0)
     65c:	e51b3008 	ldr	r3, [fp, #-8]
     660:	e3a01001 	mov	r1, #1
     664:	e1a00003 	mov	r0, r3
     668:	ebffffe1 	bl	5f4 <xchg>
     66c:	e1a03000 	mov	r3, r0
     670:	e3530000 	cmp	r3, #0
     674:	1afffff8 	bne	65c <acquireLock+0x24>
     678:	ea000000 	b	680 <acquireLock+0x48>
     67c:	e1a00000 	nop			@ (mov r0, r0)
     680:	e24bd004 	sub	sp, fp, #4
     684:	e8bd8800 	pop	{fp, pc}

00000688 <releaseLock>:
     688:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     68c:	e28db000 	add	fp, sp, #0
     690:	e24dd00c 	sub	sp, sp, #12
     694:	e50b0008 	str	r0, [fp, #-8]
     698:	e51b3008 	ldr	r3, [fp, #-8]
     69c:	e5933004 	ldr	r3, [r3, #4]
     6a0:	e3530000 	cmp	r3, #0
     6a4:	0a000007 	beq	6c8 <releaseLock+0x40>
     6a8:	e51b3008 	ldr	r3, [fp, #-8]
     6ac:	e5933000 	ldr	r3, [r3]
     6b0:	e3530001 	cmp	r3, #1
     6b4:	1a000005 	bne	6d0 <releaseLock+0x48>
     6b8:	e51b3008 	ldr	r3, [fp, #-8]
     6bc:	e3a02000 	mov	r2, #0
     6c0:	e5832000 	str	r2, [r3]
     6c4:	ea000002 	b	6d4 <releaseLock+0x4c>
     6c8:	e1a00000 	nop			@ (mov r0, r0)
     6cc:	ea000000 	b	6d4 <releaseLock+0x4c>
     6d0:	e1a00000 	nop			@ (mov r0, r0)
     6d4:	e28bd000 	add	sp, fp, #0
     6d8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6dc:	e12fff1e 	bx	lr

000006e0 <initiateCondVar>:
     6e0:	e92d4800 	push	{fp, lr}
     6e4:	e28db004 	add	fp, sp, #4
     6e8:	e24dd008 	sub	sp, sp, #8
     6ec:	e50b0008 	str	r0, [fp, #-8]
     6f0:	eb0001b8 	bl	dd8 <getChannel>
     6f4:	e1a02000 	mov	r2, r0
     6f8:	e51b3008 	ldr	r3, [fp, #-8]
     6fc:	e5832000 	str	r2, [r3]
     700:	e51b3008 	ldr	r3, [fp, #-8]
     704:	e3a02001 	mov	r2, #1
     708:	e5832004 	str	r2, [r3, #4]
     70c:	e1a00000 	nop			@ (mov r0, r0)
     710:	e24bd004 	sub	sp, fp, #4
     714:	e8bd8800 	pop	{fp, pc}

00000718 <condWait>:
     718:	e92d4800 	push	{fp, lr}
     71c:	e28db004 	add	fp, sp, #4
     720:	e24dd008 	sub	sp, sp, #8
     724:	e50b0008 	str	r0, [fp, #-8]
     728:	e50b100c 	str	r1, [fp, #-12]
     72c:	e51b3008 	ldr	r3, [fp, #-8]
     730:	e5933004 	ldr	r3, [r3, #4]
     734:	e3530000 	cmp	r3, #0
     738:	0a00000c 	beq	770 <condWait+0x58>
     73c:	e51b300c 	ldr	r3, [fp, #-12]
     740:	e5933004 	ldr	r3, [r3, #4]
     744:	e3530000 	cmp	r3, #0
     748:	0a000008 	beq	770 <condWait+0x58>
     74c:	e51b000c 	ldr	r0, [fp, #-12]
     750:	ebffffcc 	bl	688 <releaseLock>
     754:	e51b3008 	ldr	r3, [fp, #-8]
     758:	e5933000 	ldr	r3, [r3]
     75c:	e1a00003 	mov	r0, r3
     760:	eb000193 	bl	db4 <sleepChan>
     764:	e51b000c 	ldr	r0, [fp, #-12]
     768:	ebffffb2 	bl	638 <acquireLock>
     76c:	ea000000 	b	774 <condWait+0x5c>
     770:	e1a00000 	nop			@ (mov r0, r0)
     774:	e24bd004 	sub	sp, fp, #4
     778:	e8bd8800 	pop	{fp, pc}

0000077c <broadcast>:
     77c:	e92d4800 	push	{fp, lr}
     780:	e28db004 	add	fp, sp, #4
     784:	e24dd008 	sub	sp, sp, #8
     788:	e50b0008 	str	r0, [fp, #-8]
     78c:	e51b3008 	ldr	r3, [fp, #-8]
     790:	e5933004 	ldr	r3, [r3, #4]
     794:	e3530000 	cmp	r3, #0
     798:	0a000004 	beq	7b0 <broadcast+0x34>
     79c:	e51b3008 	ldr	r3, [fp, #-8]
     7a0:	e5933000 	ldr	r3, [r3]
     7a4:	e1a00003 	mov	r0, r3
     7a8:	eb000193 	bl	dfc <sigChan>
     7ac:	ea000000 	b	7b4 <broadcast+0x38>
     7b0:	e1a00000 	nop			@ (mov r0, r0)
     7b4:	e24bd004 	sub	sp, fp, #4
     7b8:	e8bd8800 	pop	{fp, pc}

000007bc <signal>:
     7bc:	e92d4800 	push	{fp, lr}
     7c0:	e28db004 	add	fp, sp, #4
     7c4:	e24dd008 	sub	sp, sp, #8
     7c8:	e50b0008 	str	r0, [fp, #-8]
     7cc:	e51b3008 	ldr	r3, [fp, #-8]
     7d0:	e5933004 	ldr	r3, [r3, #4]
     7d4:	e3530000 	cmp	r3, #0
     7d8:	0a000004 	beq	7f0 <signal+0x34>
     7dc:	e51b3008 	ldr	r3, [fp, #-8]
     7e0:	e5933000 	ldr	r3, [r3]
     7e4:	e1a00003 	mov	r0, r3
     7e8:	eb00018c 	bl	e20 <sigOneChan>
     7ec:	ea000000 	b	7f4 <signal+0x38>
     7f0:	e1a00000 	nop			@ (mov r0, r0)
     7f4:	e24bd004 	sub	sp, fp, #4
     7f8:	e8bd8800 	pop	{fp, pc}

000007fc <semInit>:
     7fc:	e92d4800 	push	{fp, lr}
     800:	e28db004 	add	fp, sp, #4
     804:	e24dd008 	sub	sp, sp, #8
     808:	e50b0008 	str	r0, [fp, #-8]
     80c:	e50b100c 	str	r1, [fp, #-12]
     810:	e51b3008 	ldr	r3, [fp, #-8]
     814:	e51b200c 	ldr	r2, [fp, #-12]
     818:	e5832000 	str	r2, [r3]
     81c:	e51b3008 	ldr	r3, [fp, #-8]
     820:	e2833004 	add	r3, r3, #4
     824:	e1a00003 	mov	r0, r3
     828:	ebffff63 	bl	5bc <initiateLock>
     82c:	e51b3008 	ldr	r3, [fp, #-8]
     830:	e283300c 	add	r3, r3, #12
     834:	e1a00003 	mov	r0, r3
     838:	ebffffa8 	bl	6e0 <initiateCondVar>
     83c:	e51b3008 	ldr	r3, [fp, #-8]
     840:	e3a02001 	mov	r2, #1
     844:	e5832014 	str	r2, [r3, #20]
     848:	e1a00000 	nop			@ (mov r0, r0)
     84c:	e24bd004 	sub	sp, fp, #4
     850:	e8bd8800 	pop	{fp, pc}

00000854 <semUp>:
     854:	e92d4800 	push	{fp, lr}
     858:	e28db004 	add	fp, sp, #4
     85c:	e24dd008 	sub	sp, sp, #8
     860:	e50b0008 	str	r0, [fp, #-8]
     864:	e51b3008 	ldr	r3, [fp, #-8]
     868:	e2833004 	add	r3, r3, #4
     86c:	e1a00003 	mov	r0, r3
     870:	ebffff70 	bl	638 <acquireLock>
     874:	e51b3008 	ldr	r3, [fp, #-8]
     878:	e5933000 	ldr	r3, [r3]
     87c:	e2832001 	add	r2, r3, #1
     880:	e51b3008 	ldr	r3, [fp, #-8]
     884:	e5832000 	str	r2, [r3]
     888:	e51b3008 	ldr	r3, [fp, #-8]
     88c:	e283300c 	add	r3, r3, #12
     890:	e1a00003 	mov	r0, r3
     894:	ebffffc8 	bl	7bc <signal>
     898:	e51b3008 	ldr	r3, [fp, #-8]
     89c:	e2833004 	add	r3, r3, #4
     8a0:	e1a00003 	mov	r0, r3
     8a4:	ebffff77 	bl	688 <releaseLock>
     8a8:	e1a00000 	nop			@ (mov r0, r0)
     8ac:	e24bd004 	sub	sp, fp, #4
     8b0:	e8bd8800 	pop	{fp, pc}

000008b4 <semDown>:
     8b4:	e92d4800 	push	{fp, lr}
     8b8:	e28db004 	add	fp, sp, #4
     8bc:	e24dd008 	sub	sp, sp, #8
     8c0:	e50b0008 	str	r0, [fp, #-8]
     8c4:	e51b3008 	ldr	r3, [fp, #-8]
     8c8:	e2833004 	add	r3, r3, #4
     8cc:	e1a00003 	mov	r0, r3
     8d0:	ebffff58 	bl	638 <acquireLock>
     8d4:	ea000006 	b	8f4 <semDown+0x40>
     8d8:	e51b3008 	ldr	r3, [fp, #-8]
     8dc:	e283200c 	add	r2, r3, #12
     8e0:	e51b3008 	ldr	r3, [fp, #-8]
     8e4:	e2833004 	add	r3, r3, #4
     8e8:	e1a01003 	mov	r1, r3
     8ec:	e1a00002 	mov	r0, r2
     8f0:	ebffff88 	bl	718 <condWait>
     8f4:	e51b3008 	ldr	r3, [fp, #-8]
     8f8:	e5933000 	ldr	r3, [r3]
     8fc:	e3530000 	cmp	r3, #0
     900:	dafffff4 	ble	8d8 <semDown+0x24>
     904:	e51b3008 	ldr	r3, [fp, #-8]
     908:	e5933000 	ldr	r3, [r3]
     90c:	e2432001 	sub	r2, r3, #1
     910:	e51b3008 	ldr	r3, [fp, #-8]
     914:	e5832000 	str	r2, [r3]
     918:	e51b3008 	ldr	r3, [fp, #-8]
     91c:	e2833004 	add	r3, r3, #4
     920:	e1a00003 	mov	r0, r3
     924:	ebffff57 	bl	688 <releaseLock>
     928:	e1a00000 	nop			@ (mov r0, r0)
     92c:	e24bd004 	sub	sp, fp, #4
     930:	e8bd8800 	pop	{fp, pc}

00000934 <fork>:
     934:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     938:	e1a04003 	mov	r4, r3
     93c:	e1a03002 	mov	r3, r2
     940:	e1a02001 	mov	r2, r1
     944:	e1a01000 	mov	r1, r0
     948:	e3a00001 	mov	r0, #1
     94c:	ef000000 	svc	0x00000000
     950:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     954:	e12fff1e 	bx	lr

00000958 <exit>:
     958:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     95c:	e1a04003 	mov	r4, r3
     960:	e1a03002 	mov	r3, r2
     964:	e1a02001 	mov	r2, r1
     968:	e1a01000 	mov	r1, r0
     96c:	e3a00002 	mov	r0, #2
     970:	ef000000 	svc	0x00000000
     974:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     978:	e12fff1e 	bx	lr

0000097c <wait>:
     97c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     980:	e1a04003 	mov	r4, r3
     984:	e1a03002 	mov	r3, r2
     988:	e1a02001 	mov	r2, r1
     98c:	e1a01000 	mov	r1, r0
     990:	e3a00003 	mov	r0, #3
     994:	ef000000 	svc	0x00000000
     998:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     99c:	e12fff1e 	bx	lr

000009a0 <pipe>:
     9a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a4:	e1a04003 	mov	r4, r3
     9a8:	e1a03002 	mov	r3, r2
     9ac:	e1a02001 	mov	r2, r1
     9b0:	e1a01000 	mov	r1, r0
     9b4:	e3a00004 	mov	r0, #4
     9b8:	ef000000 	svc	0x00000000
     9bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c0:	e12fff1e 	bx	lr

000009c4 <read>:
     9c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c8:	e1a04003 	mov	r4, r3
     9cc:	e1a03002 	mov	r3, r2
     9d0:	e1a02001 	mov	r2, r1
     9d4:	e1a01000 	mov	r1, r0
     9d8:	e3a00005 	mov	r0, #5
     9dc:	ef000000 	svc	0x00000000
     9e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e4:	e12fff1e 	bx	lr

000009e8 <write>:
     9e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9ec:	e1a04003 	mov	r4, r3
     9f0:	e1a03002 	mov	r3, r2
     9f4:	e1a02001 	mov	r2, r1
     9f8:	e1a01000 	mov	r1, r0
     9fc:	e3a00010 	mov	r0, #16
     a00:	ef000000 	svc	0x00000000
     a04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a08:	e12fff1e 	bx	lr

00000a0c <close>:
     a0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a10:	e1a04003 	mov	r4, r3
     a14:	e1a03002 	mov	r3, r2
     a18:	e1a02001 	mov	r2, r1
     a1c:	e1a01000 	mov	r1, r0
     a20:	e3a00015 	mov	r0, #21
     a24:	ef000000 	svc	0x00000000
     a28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a2c:	e12fff1e 	bx	lr

00000a30 <kill>:
     a30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a34:	e1a04003 	mov	r4, r3
     a38:	e1a03002 	mov	r3, r2
     a3c:	e1a02001 	mov	r2, r1
     a40:	e1a01000 	mov	r1, r0
     a44:	e3a00006 	mov	r0, #6
     a48:	ef000000 	svc	0x00000000
     a4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a50:	e12fff1e 	bx	lr

00000a54 <exec>:
     a54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a58:	e1a04003 	mov	r4, r3
     a5c:	e1a03002 	mov	r3, r2
     a60:	e1a02001 	mov	r2, r1
     a64:	e1a01000 	mov	r1, r0
     a68:	e3a00007 	mov	r0, #7
     a6c:	ef000000 	svc	0x00000000
     a70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a74:	e12fff1e 	bx	lr

00000a78 <open>:
     a78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a7c:	e1a04003 	mov	r4, r3
     a80:	e1a03002 	mov	r3, r2
     a84:	e1a02001 	mov	r2, r1
     a88:	e1a01000 	mov	r1, r0
     a8c:	e3a0000f 	mov	r0, #15
     a90:	ef000000 	svc	0x00000000
     a94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a98:	e12fff1e 	bx	lr

00000a9c <mknod>:
     a9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa0:	e1a04003 	mov	r4, r3
     aa4:	e1a03002 	mov	r3, r2
     aa8:	e1a02001 	mov	r2, r1
     aac:	e1a01000 	mov	r1, r0
     ab0:	e3a00011 	mov	r0, #17
     ab4:	ef000000 	svc	0x00000000
     ab8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     abc:	e12fff1e 	bx	lr

00000ac0 <unlink>:
     ac0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac4:	e1a04003 	mov	r4, r3
     ac8:	e1a03002 	mov	r3, r2
     acc:	e1a02001 	mov	r2, r1
     ad0:	e1a01000 	mov	r1, r0
     ad4:	e3a00012 	mov	r0, #18
     ad8:	ef000000 	svc	0x00000000
     adc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae0:	e12fff1e 	bx	lr

00000ae4 <fstat>:
     ae4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae8:	e1a04003 	mov	r4, r3
     aec:	e1a03002 	mov	r3, r2
     af0:	e1a02001 	mov	r2, r1
     af4:	e1a01000 	mov	r1, r0
     af8:	e3a00008 	mov	r0, #8
     afc:	ef000000 	svc	0x00000000
     b00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b04:	e12fff1e 	bx	lr

00000b08 <link>:
     b08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b0c:	e1a04003 	mov	r4, r3
     b10:	e1a03002 	mov	r3, r2
     b14:	e1a02001 	mov	r2, r1
     b18:	e1a01000 	mov	r1, r0
     b1c:	e3a00013 	mov	r0, #19
     b20:	ef000000 	svc	0x00000000
     b24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b28:	e12fff1e 	bx	lr

00000b2c <mkdir>:
     b2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b30:	e1a04003 	mov	r4, r3
     b34:	e1a03002 	mov	r3, r2
     b38:	e1a02001 	mov	r2, r1
     b3c:	e1a01000 	mov	r1, r0
     b40:	e3a00014 	mov	r0, #20
     b44:	ef000000 	svc	0x00000000
     b48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b4c:	e12fff1e 	bx	lr

00000b50 <chdir>:
     b50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b54:	e1a04003 	mov	r4, r3
     b58:	e1a03002 	mov	r3, r2
     b5c:	e1a02001 	mov	r2, r1
     b60:	e1a01000 	mov	r1, r0
     b64:	e3a00009 	mov	r0, #9
     b68:	ef000000 	svc	0x00000000
     b6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b70:	e12fff1e 	bx	lr

00000b74 <dup>:
     b74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b78:	e1a04003 	mov	r4, r3
     b7c:	e1a03002 	mov	r3, r2
     b80:	e1a02001 	mov	r2, r1
     b84:	e1a01000 	mov	r1, r0
     b88:	e3a0000a 	mov	r0, #10
     b8c:	ef000000 	svc	0x00000000
     b90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b94:	e12fff1e 	bx	lr

00000b98 <getpid>:
     b98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b9c:	e1a04003 	mov	r4, r3
     ba0:	e1a03002 	mov	r3, r2
     ba4:	e1a02001 	mov	r2, r1
     ba8:	e1a01000 	mov	r1, r0
     bac:	e3a0000b 	mov	r0, #11
     bb0:	ef000000 	svc	0x00000000
     bb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb8:	e12fff1e 	bx	lr

00000bbc <sbrk>:
     bbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc0:	e1a04003 	mov	r4, r3
     bc4:	e1a03002 	mov	r3, r2
     bc8:	e1a02001 	mov	r2, r1
     bcc:	e1a01000 	mov	r1, r0
     bd0:	e3a0000c 	mov	r0, #12
     bd4:	ef000000 	svc	0x00000000
     bd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bdc:	e12fff1e 	bx	lr

00000be0 <sleep>:
     be0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be4:	e1a04003 	mov	r4, r3
     be8:	e1a03002 	mov	r3, r2
     bec:	e1a02001 	mov	r2, r1
     bf0:	e1a01000 	mov	r1, r0
     bf4:	e3a0000d 	mov	r0, #13
     bf8:	ef000000 	svc	0x00000000
     bfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c00:	e12fff1e 	bx	lr

00000c04 <uptime>:
     c04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c08:	e1a04003 	mov	r4, r3
     c0c:	e1a03002 	mov	r3, r2
     c10:	e1a02001 	mov	r2, r1
     c14:	e1a01000 	mov	r1, r0
     c18:	e3a0000e 	mov	r0, #14
     c1c:	ef000000 	svc	0x00000000
     c20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c24:	e12fff1e 	bx	lr

00000c28 <getprocs>:
     c28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c2c:	e1a04003 	mov	r4, r3
     c30:	e1a03002 	mov	r3, r2
     c34:	e1a02001 	mov	r2, r1
     c38:	e1a01000 	mov	r1, r0
     c3c:	e3a00016 	mov	r0, #22
     c40:	ef000000 	svc	0x00000000
     c44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c48:	e12fff1e 	bx	lr

00000c4c <settickets>:
     c4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c50:	e1a04003 	mov	r4, r3
     c54:	e1a03002 	mov	r3, r2
     c58:	e1a02001 	mov	r2, r1
     c5c:	e1a01000 	mov	r1, r0
     c60:	e3a00017 	mov	r0, #23
     c64:	ef000000 	svc	0x00000000
     c68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c6c:	e12fff1e 	bx	lr

00000c70 <srand>:
     c70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c74:	e1a04003 	mov	r4, r3
     c78:	e1a03002 	mov	r3, r2
     c7c:	e1a02001 	mov	r2, r1
     c80:	e1a01000 	mov	r1, r0
     c84:	e3a00018 	mov	r0, #24
     c88:	ef000000 	svc	0x00000000
     c8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c90:	e12fff1e 	bx	lr

00000c94 <getpinfo>:
     c94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c98:	e1a04003 	mov	r4, r3
     c9c:	e1a03002 	mov	r3, r2
     ca0:	e1a02001 	mov	r2, r1
     ca4:	e1a01000 	mov	r1, r0
     ca8:	e3a00019 	mov	r0, #25
     cac:	ef000000 	svc	0x00000000
     cb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb4:	e12fff1e 	bx	lr

00000cb8 <dumppagetable>:
     cb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cbc:	e1a04003 	mov	r4, r3
     cc0:	e1a03002 	mov	r3, r2
     cc4:	e1a02001 	mov	r2, r1
     cc8:	e1a01000 	mov	r1, r0
     ccc:	e3a0001a 	mov	r0, #26
     cd0:	ef000000 	svc	0x00000000
     cd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd8:	e12fff1e 	bx	lr

00000cdc <thread_create>:
     cdc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce0:	e1a04003 	mov	r4, r3
     ce4:	e1a03002 	mov	r3, r2
     ce8:	e1a02001 	mov	r2, r1
     cec:	e1a01000 	mov	r1, r0
     cf0:	e3a0001b 	mov	r0, #27
     cf4:	ef000000 	svc	0x00000000
     cf8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cfc:	e12fff1e 	bx	lr

00000d00 <thread_exit>:
     d00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d04:	e1a04003 	mov	r4, r3
     d08:	e1a03002 	mov	r3, r2
     d0c:	e1a02001 	mov	r2, r1
     d10:	e1a01000 	mov	r1, r0
     d14:	e3a0001c 	mov	r0, #28
     d18:	ef000000 	svc	0x00000000
     d1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d20:	e12fff1e 	bx	lr

00000d24 <thread_join>:
     d24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d28:	e1a04003 	mov	r4, r3
     d2c:	e1a03002 	mov	r3, r2
     d30:	e1a02001 	mov	r2, r1
     d34:	e1a01000 	mov	r1, r0
     d38:	e3a0001d 	mov	r0, #29
     d3c:	ef000000 	svc	0x00000000
     d40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d44:	e12fff1e 	bx	lr

00000d48 <waitpid>:
     d48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d4c:	e1a04003 	mov	r4, r3
     d50:	e1a03002 	mov	r3, r2
     d54:	e1a02001 	mov	r2, r1
     d58:	e1a01000 	mov	r1, r0
     d5c:	e3a0001e 	mov	r0, #30
     d60:	ef000000 	svc	0x00000000
     d64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d68:	e12fff1e 	bx	lr

00000d6c <barrier_init>:
     d6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d70:	e1a04003 	mov	r4, r3
     d74:	e1a03002 	mov	r3, r2
     d78:	e1a02001 	mov	r2, r1
     d7c:	e1a01000 	mov	r1, r0
     d80:	e3a0001f 	mov	r0, #31
     d84:	ef000000 	svc	0x00000000
     d88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d8c:	e12fff1e 	bx	lr

00000d90 <barrier_check>:
     d90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d94:	e1a04003 	mov	r4, r3
     d98:	e1a03002 	mov	r3, r2
     d9c:	e1a02001 	mov	r2, r1
     da0:	e1a01000 	mov	r1, r0
     da4:	e3a00020 	mov	r0, #32
     da8:	ef000000 	svc	0x00000000
     dac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     db0:	e12fff1e 	bx	lr

00000db4 <sleepChan>:
     db4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     db8:	e1a04003 	mov	r4, r3
     dbc:	e1a03002 	mov	r3, r2
     dc0:	e1a02001 	mov	r2, r1
     dc4:	e1a01000 	mov	r1, r0
     dc8:	e3a00024 	mov	r0, #36	@ 0x24
     dcc:	ef000000 	svc	0x00000000
     dd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd4:	e12fff1e 	bx	lr

00000dd8 <getChannel>:
     dd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ddc:	e1a04003 	mov	r4, r3
     de0:	e1a03002 	mov	r3, r2
     de4:	e1a02001 	mov	r2, r1
     de8:	e1a01000 	mov	r1, r0
     dec:	e3a00025 	mov	r0, #37	@ 0x25
     df0:	ef000000 	svc	0x00000000
     df4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     df8:	e12fff1e 	bx	lr

00000dfc <sigChan>:
     dfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e00:	e1a04003 	mov	r4, r3
     e04:	e1a03002 	mov	r3, r2
     e08:	e1a02001 	mov	r2, r1
     e0c:	e1a01000 	mov	r1, r0
     e10:	e3a00026 	mov	r0, #38	@ 0x26
     e14:	ef000000 	svc	0x00000000
     e18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e1c:	e12fff1e 	bx	lr

00000e20 <sigOneChan>:
     e20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e24:	e1a04003 	mov	r4, r3
     e28:	e1a03002 	mov	r3, r2
     e2c:	e1a02001 	mov	r2, r1
     e30:	e1a01000 	mov	r1, r0
     e34:	e3a00027 	mov	r0, #39	@ 0x27
     e38:	ef000000 	svc	0x00000000
     e3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e40:	e12fff1e 	bx	lr

00000e44 <putc>:
     e44:	e92d4800 	push	{fp, lr}
     e48:	e28db004 	add	fp, sp, #4
     e4c:	e24dd008 	sub	sp, sp, #8
     e50:	e50b0008 	str	r0, [fp, #-8]
     e54:	e1a03001 	mov	r3, r1
     e58:	e54b3009 	strb	r3, [fp, #-9]
     e5c:	e24b3009 	sub	r3, fp, #9
     e60:	e3a02001 	mov	r2, #1
     e64:	e1a01003 	mov	r1, r3
     e68:	e51b0008 	ldr	r0, [fp, #-8]
     e6c:	ebfffedd 	bl	9e8 <write>
     e70:	e1a00000 	nop			@ (mov r0, r0)
     e74:	e24bd004 	sub	sp, fp, #4
     e78:	e8bd8800 	pop	{fp, pc}

00000e7c <printint>:
     e7c:	e92d4800 	push	{fp, lr}
     e80:	e28db004 	add	fp, sp, #4
     e84:	e24dd030 	sub	sp, sp, #48	@ 0x30
     e88:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     e8c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     e90:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     e94:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     e98:	e3a03000 	mov	r3, #0
     e9c:	e50b300c 	str	r3, [fp, #-12]
     ea0:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     ea4:	e3530000 	cmp	r3, #0
     ea8:	0a000008 	beq	ed0 <printint+0x54>
     eac:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     eb0:	e3530000 	cmp	r3, #0
     eb4:	aa000005 	bge	ed0 <printint+0x54>
     eb8:	e3a03001 	mov	r3, #1
     ebc:	e50b300c 	str	r3, [fp, #-12]
     ec0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ec4:	e2633000 	rsb	r3, r3, #0
     ec8:	e50b3010 	str	r3, [fp, #-16]
     ecc:	ea000001 	b	ed8 <printint+0x5c>
     ed0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ed4:	e50b3010 	str	r3, [fp, #-16]
     ed8:	e3a03000 	mov	r3, #0
     edc:	e50b3008 	str	r3, [fp, #-8]
     ee0:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     ee4:	e51b3010 	ldr	r3, [fp, #-16]
     ee8:	e1a01002 	mov	r1, r2
     eec:	e1a00003 	mov	r0, r3
     ef0:	eb0001d5 	bl	164c <__aeabi_uidivmod>
     ef4:	e1a03001 	mov	r3, r1
     ef8:	e1a01003 	mov	r1, r3
     efc:	e51b3008 	ldr	r3, [fp, #-8]
     f00:	e2832001 	add	r2, r3, #1
     f04:	e50b2008 	str	r2, [fp, #-8]
     f08:	e59f20a0 	ldr	r2, [pc, #160]	@ fb0 <printint+0x134>
     f0c:	e7d22001 	ldrb	r2, [r2, r1]
     f10:	e2433004 	sub	r3, r3, #4
     f14:	e083300b 	add	r3, r3, fp
     f18:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f1c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     f20:	e1a01003 	mov	r1, r3
     f24:	e51b0010 	ldr	r0, [fp, #-16]
     f28:	eb00018a 	bl	1558 <__udivsi3>
     f2c:	e1a03000 	mov	r3, r0
     f30:	e50b3010 	str	r3, [fp, #-16]
     f34:	e51b3010 	ldr	r3, [fp, #-16]
     f38:	e3530000 	cmp	r3, #0
     f3c:	1affffe7 	bne	ee0 <printint+0x64>
     f40:	e51b300c 	ldr	r3, [fp, #-12]
     f44:	e3530000 	cmp	r3, #0
     f48:	0a00000e 	beq	f88 <printint+0x10c>
     f4c:	e51b3008 	ldr	r3, [fp, #-8]
     f50:	e2832001 	add	r2, r3, #1
     f54:	e50b2008 	str	r2, [fp, #-8]
     f58:	e2433004 	sub	r3, r3, #4
     f5c:	e083300b 	add	r3, r3, fp
     f60:	e3a0202d 	mov	r2, #45	@ 0x2d
     f64:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f68:	ea000006 	b	f88 <printint+0x10c>
     f6c:	e24b2020 	sub	r2, fp, #32
     f70:	e51b3008 	ldr	r3, [fp, #-8]
     f74:	e0823003 	add	r3, r2, r3
     f78:	e5d33000 	ldrb	r3, [r3]
     f7c:	e1a01003 	mov	r1, r3
     f80:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     f84:	ebffffae 	bl	e44 <putc>
     f88:	e51b3008 	ldr	r3, [fp, #-8]
     f8c:	e2433001 	sub	r3, r3, #1
     f90:	e50b3008 	str	r3, [fp, #-8]
     f94:	e51b3008 	ldr	r3, [fp, #-8]
     f98:	e3530000 	cmp	r3, #0
     f9c:	aafffff2 	bge	f6c <printint+0xf0>
     fa0:	e1a00000 	nop			@ (mov r0, r0)
     fa4:	e1a00000 	nop			@ (mov r0, r0)
     fa8:	e24bd004 	sub	sp, fp, #4
     fac:	e8bd8800 	pop	{fp, pc}
     fb0:	00001704 	.word	0x00001704

00000fb4 <printf>:
     fb4:	e92d000e 	push	{r1, r2, r3}
     fb8:	e92d4800 	push	{fp, lr}
     fbc:	e28db004 	add	fp, sp, #4
     fc0:	e24dd024 	sub	sp, sp, #36	@ 0x24
     fc4:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     fc8:	e3a03000 	mov	r3, #0
     fcc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     fd0:	e28b3008 	add	r3, fp, #8
     fd4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fd8:	e3a03000 	mov	r3, #0
     fdc:	e50b3010 	str	r3, [fp, #-16]
     fe0:	ea000074 	b	11b8 <printf+0x204>
     fe4:	e59b2004 	ldr	r2, [fp, #4]
     fe8:	e51b3010 	ldr	r3, [fp, #-16]
     fec:	e0823003 	add	r3, r2, r3
     ff0:	e5d33000 	ldrb	r3, [r3]
     ff4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     ff8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ffc:	e3530000 	cmp	r3, #0
    1000:	1a00000b 	bne	1034 <printf+0x80>
    1004:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1008:	e3530025 	cmp	r3, #37	@ 0x25
    100c:	1a000002 	bne	101c <printf+0x68>
    1010:	e3a03025 	mov	r3, #37	@ 0x25
    1014:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1018:	ea000063 	b	11ac <printf+0x1f8>
    101c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1020:	e6ef3073 	uxtb	r3, r3
    1024:	e1a01003 	mov	r1, r3
    1028:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    102c:	ebffff84 	bl	e44 <putc>
    1030:	ea00005d 	b	11ac <printf+0x1f8>
    1034:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1038:	e3530025 	cmp	r3, #37	@ 0x25
    103c:	1a00005a 	bne	11ac <printf+0x1f8>
    1040:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1044:	e3530064 	cmp	r3, #100	@ 0x64
    1048:	1a00000a 	bne	1078 <printf+0xc4>
    104c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1050:	e5933000 	ldr	r3, [r3]
    1054:	e1a01003 	mov	r1, r3
    1058:	e3a03001 	mov	r3, #1
    105c:	e3a0200a 	mov	r2, #10
    1060:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1064:	ebffff84 	bl	e7c <printint>
    1068:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    106c:	e2833004 	add	r3, r3, #4
    1070:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1074:	ea00004a 	b	11a4 <printf+0x1f0>
    1078:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    107c:	e3530078 	cmp	r3, #120	@ 0x78
    1080:	0a000002 	beq	1090 <printf+0xdc>
    1084:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1088:	e3530070 	cmp	r3, #112	@ 0x70
    108c:	1a00000a 	bne	10bc <printf+0x108>
    1090:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1094:	e5933000 	ldr	r3, [r3]
    1098:	e1a01003 	mov	r1, r3
    109c:	e3a03000 	mov	r3, #0
    10a0:	e3a02010 	mov	r2, #16
    10a4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10a8:	ebffff73 	bl	e7c <printint>
    10ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10b0:	e2833004 	add	r3, r3, #4
    10b4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10b8:	ea000039 	b	11a4 <printf+0x1f0>
    10bc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10c0:	e3530073 	cmp	r3, #115	@ 0x73
    10c4:	1a000018 	bne	112c <printf+0x178>
    10c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10cc:	e5933000 	ldr	r3, [r3]
    10d0:	e50b300c 	str	r3, [fp, #-12]
    10d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10d8:	e2833004 	add	r3, r3, #4
    10dc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10e0:	e51b300c 	ldr	r3, [fp, #-12]
    10e4:	e3530000 	cmp	r3, #0
    10e8:	1a00000a 	bne	1118 <printf+0x164>
    10ec:	e59f30f4 	ldr	r3, [pc, #244]	@ 11e8 <printf+0x234>
    10f0:	e50b300c 	str	r3, [fp, #-12]
    10f4:	ea000007 	b	1118 <printf+0x164>
    10f8:	e51b300c 	ldr	r3, [fp, #-12]
    10fc:	e5d33000 	ldrb	r3, [r3]
    1100:	e1a01003 	mov	r1, r3
    1104:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1108:	ebffff4d 	bl	e44 <putc>
    110c:	e51b300c 	ldr	r3, [fp, #-12]
    1110:	e2833001 	add	r3, r3, #1
    1114:	e50b300c 	str	r3, [fp, #-12]
    1118:	e51b300c 	ldr	r3, [fp, #-12]
    111c:	e5d33000 	ldrb	r3, [r3]
    1120:	e3530000 	cmp	r3, #0
    1124:	1afffff3 	bne	10f8 <printf+0x144>
    1128:	ea00001d 	b	11a4 <printf+0x1f0>
    112c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1130:	e3530063 	cmp	r3, #99	@ 0x63
    1134:	1a000009 	bne	1160 <printf+0x1ac>
    1138:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    113c:	e5933000 	ldr	r3, [r3]
    1140:	e6ef3073 	uxtb	r3, r3
    1144:	e1a01003 	mov	r1, r3
    1148:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    114c:	ebffff3c 	bl	e44 <putc>
    1150:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1154:	e2833004 	add	r3, r3, #4
    1158:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    115c:	ea000010 	b	11a4 <printf+0x1f0>
    1160:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1164:	e3530025 	cmp	r3, #37	@ 0x25
    1168:	1a000005 	bne	1184 <printf+0x1d0>
    116c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1170:	e6ef3073 	uxtb	r3, r3
    1174:	e1a01003 	mov	r1, r3
    1178:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    117c:	ebffff30 	bl	e44 <putc>
    1180:	ea000007 	b	11a4 <printf+0x1f0>
    1184:	e3a01025 	mov	r1, #37	@ 0x25
    1188:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    118c:	ebffff2c 	bl	e44 <putc>
    1190:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1194:	e6ef3073 	uxtb	r3, r3
    1198:	e1a01003 	mov	r1, r3
    119c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11a0:	ebffff27 	bl	e44 <putc>
    11a4:	e3a03000 	mov	r3, #0
    11a8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    11ac:	e51b3010 	ldr	r3, [fp, #-16]
    11b0:	e2833001 	add	r3, r3, #1
    11b4:	e50b3010 	str	r3, [fp, #-16]
    11b8:	e59b2004 	ldr	r2, [fp, #4]
    11bc:	e51b3010 	ldr	r3, [fp, #-16]
    11c0:	e0823003 	add	r3, r2, r3
    11c4:	e5d33000 	ldrb	r3, [r3]
    11c8:	e3530000 	cmp	r3, #0
    11cc:	1affff84 	bne	fe4 <printf+0x30>
    11d0:	e1a00000 	nop			@ (mov r0, r0)
    11d4:	e1a00000 	nop			@ (mov r0, r0)
    11d8:	e24bd004 	sub	sp, fp, #4
    11dc:	e8bd4800 	pop	{fp, lr}
    11e0:	e28dd00c 	add	sp, sp, #12
    11e4:	e12fff1e 	bx	lr
    11e8:	000016fc 	.word	0x000016fc

000011ec <free>:
    11ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    11f0:	e28db000 	add	fp, sp, #0
    11f4:	e24dd014 	sub	sp, sp, #20
    11f8:	e50b0010 	str	r0, [fp, #-16]
    11fc:	e51b3010 	ldr	r3, [fp, #-16]
    1200:	e2433008 	sub	r3, r3, #8
    1204:	e50b300c 	str	r3, [fp, #-12]
    1208:	e59f3154 	ldr	r3, [pc, #340]	@ 1364 <free+0x178>
    120c:	e5933000 	ldr	r3, [r3]
    1210:	e50b3008 	str	r3, [fp, #-8]
    1214:	ea000010 	b	125c <free+0x70>
    1218:	e51b3008 	ldr	r3, [fp, #-8]
    121c:	e5933000 	ldr	r3, [r3]
    1220:	e51b2008 	ldr	r2, [fp, #-8]
    1224:	e1520003 	cmp	r2, r3
    1228:	3a000008 	bcc	1250 <free+0x64>
    122c:	e51b200c 	ldr	r2, [fp, #-12]
    1230:	e51b3008 	ldr	r3, [fp, #-8]
    1234:	e1520003 	cmp	r2, r3
    1238:	8a000010 	bhi	1280 <free+0x94>
    123c:	e51b3008 	ldr	r3, [fp, #-8]
    1240:	e5933000 	ldr	r3, [r3]
    1244:	e51b200c 	ldr	r2, [fp, #-12]
    1248:	e1520003 	cmp	r2, r3
    124c:	3a00000b 	bcc	1280 <free+0x94>
    1250:	e51b3008 	ldr	r3, [fp, #-8]
    1254:	e5933000 	ldr	r3, [r3]
    1258:	e50b3008 	str	r3, [fp, #-8]
    125c:	e51b200c 	ldr	r2, [fp, #-12]
    1260:	e51b3008 	ldr	r3, [fp, #-8]
    1264:	e1520003 	cmp	r2, r3
    1268:	9affffea 	bls	1218 <free+0x2c>
    126c:	e51b3008 	ldr	r3, [fp, #-8]
    1270:	e5933000 	ldr	r3, [r3]
    1274:	e51b200c 	ldr	r2, [fp, #-12]
    1278:	e1520003 	cmp	r2, r3
    127c:	2affffe5 	bcs	1218 <free+0x2c>
    1280:	e51b300c 	ldr	r3, [fp, #-12]
    1284:	e5933004 	ldr	r3, [r3, #4]
    1288:	e1a03183 	lsl	r3, r3, #3
    128c:	e51b200c 	ldr	r2, [fp, #-12]
    1290:	e0822003 	add	r2, r2, r3
    1294:	e51b3008 	ldr	r3, [fp, #-8]
    1298:	e5933000 	ldr	r3, [r3]
    129c:	e1520003 	cmp	r2, r3
    12a0:	1a00000d 	bne	12dc <free+0xf0>
    12a4:	e51b300c 	ldr	r3, [fp, #-12]
    12a8:	e5932004 	ldr	r2, [r3, #4]
    12ac:	e51b3008 	ldr	r3, [fp, #-8]
    12b0:	e5933000 	ldr	r3, [r3]
    12b4:	e5933004 	ldr	r3, [r3, #4]
    12b8:	e0822003 	add	r2, r2, r3
    12bc:	e51b300c 	ldr	r3, [fp, #-12]
    12c0:	e5832004 	str	r2, [r3, #4]
    12c4:	e51b3008 	ldr	r3, [fp, #-8]
    12c8:	e5933000 	ldr	r3, [r3]
    12cc:	e5932000 	ldr	r2, [r3]
    12d0:	e51b300c 	ldr	r3, [fp, #-12]
    12d4:	e5832000 	str	r2, [r3]
    12d8:	ea000003 	b	12ec <free+0x100>
    12dc:	e51b3008 	ldr	r3, [fp, #-8]
    12e0:	e5932000 	ldr	r2, [r3]
    12e4:	e51b300c 	ldr	r3, [fp, #-12]
    12e8:	e5832000 	str	r2, [r3]
    12ec:	e51b3008 	ldr	r3, [fp, #-8]
    12f0:	e5933004 	ldr	r3, [r3, #4]
    12f4:	e1a03183 	lsl	r3, r3, #3
    12f8:	e51b2008 	ldr	r2, [fp, #-8]
    12fc:	e0823003 	add	r3, r2, r3
    1300:	e51b200c 	ldr	r2, [fp, #-12]
    1304:	e1520003 	cmp	r2, r3
    1308:	1a00000b 	bne	133c <free+0x150>
    130c:	e51b3008 	ldr	r3, [fp, #-8]
    1310:	e5932004 	ldr	r2, [r3, #4]
    1314:	e51b300c 	ldr	r3, [fp, #-12]
    1318:	e5933004 	ldr	r3, [r3, #4]
    131c:	e0822003 	add	r2, r2, r3
    1320:	e51b3008 	ldr	r3, [fp, #-8]
    1324:	e5832004 	str	r2, [r3, #4]
    1328:	e51b300c 	ldr	r3, [fp, #-12]
    132c:	e5932000 	ldr	r2, [r3]
    1330:	e51b3008 	ldr	r3, [fp, #-8]
    1334:	e5832000 	str	r2, [r3]
    1338:	ea000002 	b	1348 <free+0x15c>
    133c:	e51b3008 	ldr	r3, [fp, #-8]
    1340:	e51b200c 	ldr	r2, [fp, #-12]
    1344:	e5832000 	str	r2, [r3]
    1348:	e59f2014 	ldr	r2, [pc, #20]	@ 1364 <free+0x178>
    134c:	e51b3008 	ldr	r3, [fp, #-8]
    1350:	e5823000 	str	r3, [r2]
    1354:	e1a00000 	nop			@ (mov r0, r0)
    1358:	e28bd000 	add	sp, fp, #0
    135c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1360:	e12fff1e 	bx	lr
    1364:	00001720 	.word	0x00001720

00001368 <morecore>:
    1368:	e92d4800 	push	{fp, lr}
    136c:	e28db004 	add	fp, sp, #4
    1370:	e24dd010 	sub	sp, sp, #16
    1374:	e50b0010 	str	r0, [fp, #-16]
    1378:	e51b3010 	ldr	r3, [fp, #-16]
    137c:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1380:	2a000001 	bcs	138c <morecore+0x24>
    1384:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1388:	e50b3010 	str	r3, [fp, #-16]
    138c:	e51b3010 	ldr	r3, [fp, #-16]
    1390:	e1a03183 	lsl	r3, r3, #3
    1394:	e1a00003 	mov	r0, r3
    1398:	ebfffe07 	bl	bbc <sbrk>
    139c:	e50b0008 	str	r0, [fp, #-8]
    13a0:	e51b3008 	ldr	r3, [fp, #-8]
    13a4:	e3730001 	cmn	r3, #1
    13a8:	1a000001 	bne	13b4 <morecore+0x4c>
    13ac:	e3a03000 	mov	r3, #0
    13b0:	ea00000a 	b	13e0 <morecore+0x78>
    13b4:	e51b3008 	ldr	r3, [fp, #-8]
    13b8:	e50b300c 	str	r3, [fp, #-12]
    13bc:	e51b300c 	ldr	r3, [fp, #-12]
    13c0:	e51b2010 	ldr	r2, [fp, #-16]
    13c4:	e5832004 	str	r2, [r3, #4]
    13c8:	e51b300c 	ldr	r3, [fp, #-12]
    13cc:	e2833008 	add	r3, r3, #8
    13d0:	e1a00003 	mov	r0, r3
    13d4:	ebffff84 	bl	11ec <free>
    13d8:	e59f300c 	ldr	r3, [pc, #12]	@ 13ec <morecore+0x84>
    13dc:	e5933000 	ldr	r3, [r3]
    13e0:	e1a00003 	mov	r0, r3
    13e4:	e24bd004 	sub	sp, fp, #4
    13e8:	e8bd8800 	pop	{fp, pc}
    13ec:	00001720 	.word	0x00001720

000013f0 <malloc>:
    13f0:	e92d4800 	push	{fp, lr}
    13f4:	e28db004 	add	fp, sp, #4
    13f8:	e24dd018 	sub	sp, sp, #24
    13fc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1400:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1404:	e2833007 	add	r3, r3, #7
    1408:	e1a031a3 	lsr	r3, r3, #3
    140c:	e2833001 	add	r3, r3, #1
    1410:	e50b3010 	str	r3, [fp, #-16]
    1414:	e59f3134 	ldr	r3, [pc, #308]	@ 1550 <malloc+0x160>
    1418:	e5933000 	ldr	r3, [r3]
    141c:	e50b300c 	str	r3, [fp, #-12]
    1420:	e51b300c 	ldr	r3, [fp, #-12]
    1424:	e3530000 	cmp	r3, #0
    1428:	1a00000b 	bne	145c <malloc+0x6c>
    142c:	e59f3120 	ldr	r3, [pc, #288]	@ 1554 <malloc+0x164>
    1430:	e50b300c 	str	r3, [fp, #-12]
    1434:	e59f2114 	ldr	r2, [pc, #276]	@ 1550 <malloc+0x160>
    1438:	e51b300c 	ldr	r3, [fp, #-12]
    143c:	e5823000 	str	r3, [r2]
    1440:	e59f3108 	ldr	r3, [pc, #264]	@ 1550 <malloc+0x160>
    1444:	e5933000 	ldr	r3, [r3]
    1448:	e59f2104 	ldr	r2, [pc, #260]	@ 1554 <malloc+0x164>
    144c:	e5823000 	str	r3, [r2]
    1450:	e59f30fc 	ldr	r3, [pc, #252]	@ 1554 <malloc+0x164>
    1454:	e3a02000 	mov	r2, #0
    1458:	e5832004 	str	r2, [r3, #4]
    145c:	e51b300c 	ldr	r3, [fp, #-12]
    1460:	e5933000 	ldr	r3, [r3]
    1464:	e50b3008 	str	r3, [fp, #-8]
    1468:	e51b3008 	ldr	r3, [fp, #-8]
    146c:	e5933004 	ldr	r3, [r3, #4]
    1470:	e51b2010 	ldr	r2, [fp, #-16]
    1474:	e1520003 	cmp	r2, r3
    1478:	8a00001e 	bhi	14f8 <malloc+0x108>
    147c:	e51b3008 	ldr	r3, [fp, #-8]
    1480:	e5933004 	ldr	r3, [r3, #4]
    1484:	e51b2010 	ldr	r2, [fp, #-16]
    1488:	e1520003 	cmp	r2, r3
    148c:	1a000004 	bne	14a4 <malloc+0xb4>
    1490:	e51b3008 	ldr	r3, [fp, #-8]
    1494:	e5932000 	ldr	r2, [r3]
    1498:	e51b300c 	ldr	r3, [fp, #-12]
    149c:	e5832000 	str	r2, [r3]
    14a0:	ea00000e 	b	14e0 <malloc+0xf0>
    14a4:	e51b3008 	ldr	r3, [fp, #-8]
    14a8:	e5932004 	ldr	r2, [r3, #4]
    14ac:	e51b3010 	ldr	r3, [fp, #-16]
    14b0:	e0422003 	sub	r2, r2, r3
    14b4:	e51b3008 	ldr	r3, [fp, #-8]
    14b8:	e5832004 	str	r2, [r3, #4]
    14bc:	e51b3008 	ldr	r3, [fp, #-8]
    14c0:	e5933004 	ldr	r3, [r3, #4]
    14c4:	e1a03183 	lsl	r3, r3, #3
    14c8:	e51b2008 	ldr	r2, [fp, #-8]
    14cc:	e0823003 	add	r3, r2, r3
    14d0:	e50b3008 	str	r3, [fp, #-8]
    14d4:	e51b3008 	ldr	r3, [fp, #-8]
    14d8:	e51b2010 	ldr	r2, [fp, #-16]
    14dc:	e5832004 	str	r2, [r3, #4]
    14e0:	e59f2068 	ldr	r2, [pc, #104]	@ 1550 <malloc+0x160>
    14e4:	e51b300c 	ldr	r3, [fp, #-12]
    14e8:	e5823000 	str	r3, [r2]
    14ec:	e51b3008 	ldr	r3, [fp, #-8]
    14f0:	e2833008 	add	r3, r3, #8
    14f4:	ea000012 	b	1544 <malloc+0x154>
    14f8:	e59f3050 	ldr	r3, [pc, #80]	@ 1550 <malloc+0x160>
    14fc:	e5933000 	ldr	r3, [r3]
    1500:	e51b2008 	ldr	r2, [fp, #-8]
    1504:	e1520003 	cmp	r2, r3
    1508:	1a000007 	bne	152c <malloc+0x13c>
    150c:	e51b0010 	ldr	r0, [fp, #-16]
    1510:	ebffff94 	bl	1368 <morecore>
    1514:	e50b0008 	str	r0, [fp, #-8]
    1518:	e51b3008 	ldr	r3, [fp, #-8]
    151c:	e3530000 	cmp	r3, #0
    1520:	1a000001 	bne	152c <malloc+0x13c>
    1524:	e3a03000 	mov	r3, #0
    1528:	ea000005 	b	1544 <malloc+0x154>
    152c:	e51b3008 	ldr	r3, [fp, #-8]
    1530:	e50b300c 	str	r3, [fp, #-12]
    1534:	e51b3008 	ldr	r3, [fp, #-8]
    1538:	e5933000 	ldr	r3, [r3]
    153c:	e50b3008 	str	r3, [fp, #-8]
    1540:	eaffffc8 	b	1468 <malloc+0x78>
    1544:	e1a00003 	mov	r0, r3
    1548:	e24bd004 	sub	sp, fp, #4
    154c:	e8bd8800 	pop	{fp, pc}
    1550:	00001720 	.word	0x00001720
    1554:	00001718 	.word	0x00001718

00001558 <__udivsi3>:
    1558:	e2512001 	subs	r2, r1, #1
    155c:	012fff1e 	bxeq	lr
    1560:	3a000036 	bcc	1640 <__udivsi3+0xe8>
    1564:	e1500001 	cmp	r0, r1
    1568:	9a000022 	bls	15f8 <__udivsi3+0xa0>
    156c:	e1110002 	tst	r1, r2
    1570:	0a000023 	beq	1604 <__udivsi3+0xac>
    1574:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1578:	01a01181 	lsleq	r1, r1, #3
    157c:	03a03008 	moveq	r3, #8
    1580:	13a03001 	movne	r3, #1
    1584:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1588:	31510000 	cmpcc	r1, r0
    158c:	31a01201 	lslcc	r1, r1, #4
    1590:	31a03203 	lslcc	r3, r3, #4
    1594:	3afffffa 	bcc	1584 <__udivsi3+0x2c>
    1598:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    159c:	31510000 	cmpcc	r1, r0
    15a0:	31a01081 	lslcc	r1, r1, #1
    15a4:	31a03083 	lslcc	r3, r3, #1
    15a8:	3afffffa 	bcc	1598 <__udivsi3+0x40>
    15ac:	e3a02000 	mov	r2, #0
    15b0:	e1500001 	cmp	r0, r1
    15b4:	20400001 	subcs	r0, r0, r1
    15b8:	21822003 	orrcs	r2, r2, r3
    15bc:	e15000a1 	cmp	r0, r1, lsr #1
    15c0:	204000a1 	subcs	r0, r0, r1, lsr #1
    15c4:	218220a3 	orrcs	r2, r2, r3, lsr #1
    15c8:	e1500121 	cmp	r0, r1, lsr #2
    15cc:	20400121 	subcs	r0, r0, r1, lsr #2
    15d0:	21822123 	orrcs	r2, r2, r3, lsr #2
    15d4:	e15001a1 	cmp	r0, r1, lsr #3
    15d8:	204001a1 	subcs	r0, r0, r1, lsr #3
    15dc:	218221a3 	orrcs	r2, r2, r3, lsr #3
    15e0:	e3500000 	cmp	r0, #0
    15e4:	11b03223 	lsrsne	r3, r3, #4
    15e8:	11a01221 	lsrne	r1, r1, #4
    15ec:	1affffef 	bne	15b0 <__udivsi3+0x58>
    15f0:	e1a00002 	mov	r0, r2
    15f4:	e12fff1e 	bx	lr
    15f8:	03a00001 	moveq	r0, #1
    15fc:	13a00000 	movne	r0, #0
    1600:	e12fff1e 	bx	lr
    1604:	e3510801 	cmp	r1, #65536	@ 0x10000
    1608:	21a01821 	lsrcs	r1, r1, #16
    160c:	23a02010 	movcs	r2, #16
    1610:	33a02000 	movcc	r2, #0
    1614:	e3510c01 	cmp	r1, #256	@ 0x100
    1618:	21a01421 	lsrcs	r1, r1, #8
    161c:	22822008 	addcs	r2, r2, #8
    1620:	e3510010 	cmp	r1, #16
    1624:	21a01221 	lsrcs	r1, r1, #4
    1628:	22822004 	addcs	r2, r2, #4
    162c:	e3510004 	cmp	r1, #4
    1630:	82822003 	addhi	r2, r2, #3
    1634:	908220a1 	addls	r2, r2, r1, lsr #1
    1638:	e1a00230 	lsr	r0, r0, r2
    163c:	e12fff1e 	bx	lr
    1640:	e3500000 	cmp	r0, #0
    1644:	13e00000 	mvnne	r0, #0
    1648:	ea000007 	b	166c <__aeabi_idiv0>

0000164c <__aeabi_uidivmod>:
    164c:	e3510000 	cmp	r1, #0
    1650:	0afffffa 	beq	1640 <__udivsi3+0xe8>
    1654:	e92d4003 	push	{r0, r1, lr}
    1658:	ebffffbe 	bl	1558 <__udivsi3>
    165c:	e8bd4006 	pop	{r1, r2, lr}
    1660:	e0030092 	mul	r3, r2, r0
    1664:	e0411003 	sub	r1, r1, r3
    1668:	e12fff1e 	bx	lr

0000166c <__aeabi_idiv0>:
    166c:	e12fff1e 	bx	lr
