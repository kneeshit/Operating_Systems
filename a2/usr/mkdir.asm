
_mkdir:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      14:	e51b3010 	ldr	r3, [fp, #-16]
      18:	e3530001 	cmp	r3, #1
      1c:	ca000003 	bgt	30 <main+0x30>
      20:	e59f1084 	ldr	r1, [pc, #132]	@ ac <main+0xac>
      24:	e3a00002 	mov	r0, #2
      28:	eb00029a 	bl	a98 <printf>
      2c:	eb000165 	bl	5c8 <exit>
      30:	e3a03001 	mov	r3, #1
      34:	e50b3008 	str	r3, [fp, #-8]
      38:	ea000016 	b	98 <main+0x98>
      3c:	e51b3008 	ldr	r3, [fp, #-8]
      40:	e1a03103 	lsl	r3, r3, #2
      44:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      48:	e0823003 	add	r3, r2, r3
      4c:	e5933000 	ldr	r3, [r3]
      50:	e1a00003 	mov	r0, r3
      54:	eb0001d0 	bl	79c <mkdir>
      58:	e1a03000 	mov	r3, r0
      5c:	e3530000 	cmp	r3, #0
      60:	aa000009 	bge	8c <main+0x8c>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e1a03103 	lsl	r3, r3, #2
      6c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      70:	e0823003 	add	r3, r2, r3
      74:	e5933000 	ldr	r3, [r3]
      78:	e1a02003 	mov	r2, r3
      7c:	e59f102c 	ldr	r1, [pc, #44]	@ b0 <main+0xb0>
      80:	e3a00002 	mov	r0, #2
      84:	eb000283 	bl	a98 <printf>
      88:	ea000006 	b	a8 <main+0xa8>
      8c:	e51b3008 	ldr	r3, [fp, #-8]
      90:	e2833001 	add	r3, r3, #1
      94:	e50b3008 	str	r3, [fp, #-8]
      98:	e51b2008 	ldr	r2, [fp, #-8]
      9c:	e51b3010 	ldr	r3, [fp, #-16]
      a0:	e1520003 	cmp	r2, r3
      a4:	baffffe4 	blt	3c <main+0x3c>
      a8:	eb000146 	bl	5c8 <exit>
      ac:	00001154 	.word	0x00001154
      b0:	0000116c 	.word	0x0000116c

000000b4 <strcpy>:
      b4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      b8:	e28db000 	add	fp, sp, #0
      bc:	e24dd014 	sub	sp, sp, #20
      c0:	e50b0010 	str	r0, [fp, #-16]
      c4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      c8:	e51b3010 	ldr	r3, [fp, #-16]
      cc:	e50b3008 	str	r3, [fp, #-8]
      d0:	e1a00000 	nop			@ (mov r0, r0)
      d4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      d8:	e2823001 	add	r3, r2, #1
      dc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      e0:	e51b3010 	ldr	r3, [fp, #-16]
      e4:	e2831001 	add	r1, r3, #1
      e8:	e50b1010 	str	r1, [fp, #-16]
      ec:	e5d22000 	ldrb	r2, [r2]
      f0:	e5c32000 	strb	r2, [r3]
      f4:	e5d33000 	ldrb	r3, [r3]
      f8:	e3530000 	cmp	r3, #0
      fc:	1afffff4 	bne	d4 <strcpy+0x20>
     100:	e51b3008 	ldr	r3, [fp, #-8]
     104:	e1a00003 	mov	r0, r3
     108:	e28bd000 	add	sp, fp, #0
     10c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     110:	e12fff1e 	bx	lr

00000114 <strcmp>:
     114:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     118:	e28db000 	add	fp, sp, #0
     11c:	e24dd00c 	sub	sp, sp, #12
     120:	e50b0008 	str	r0, [fp, #-8]
     124:	e50b100c 	str	r1, [fp, #-12]
     128:	ea000005 	b	144 <strcmp+0x30>
     12c:	e51b3008 	ldr	r3, [fp, #-8]
     130:	e2833001 	add	r3, r3, #1
     134:	e50b3008 	str	r3, [fp, #-8]
     138:	e51b300c 	ldr	r3, [fp, #-12]
     13c:	e2833001 	add	r3, r3, #1
     140:	e50b300c 	str	r3, [fp, #-12]
     144:	e51b3008 	ldr	r3, [fp, #-8]
     148:	e5d33000 	ldrb	r3, [r3]
     14c:	e3530000 	cmp	r3, #0
     150:	0a000005 	beq	16c <strcmp+0x58>
     154:	e51b3008 	ldr	r3, [fp, #-8]
     158:	e5d32000 	ldrb	r2, [r3]
     15c:	e51b300c 	ldr	r3, [fp, #-12]
     160:	e5d33000 	ldrb	r3, [r3]
     164:	e1520003 	cmp	r2, r3
     168:	0affffef 	beq	12c <strcmp+0x18>
     16c:	e51b3008 	ldr	r3, [fp, #-8]
     170:	e5d33000 	ldrb	r3, [r3]
     174:	e1a02003 	mov	r2, r3
     178:	e51b300c 	ldr	r3, [fp, #-12]
     17c:	e5d33000 	ldrb	r3, [r3]
     180:	e0423003 	sub	r3, r2, r3
     184:	e1a00003 	mov	r0, r3
     188:	e28bd000 	add	sp, fp, #0
     18c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     190:	e12fff1e 	bx	lr

00000194 <strlen>:
     194:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     198:	e28db000 	add	fp, sp, #0
     19c:	e24dd014 	sub	sp, sp, #20
     1a0:	e50b0010 	str	r0, [fp, #-16]
     1a4:	e3a03000 	mov	r3, #0
     1a8:	e50b3008 	str	r3, [fp, #-8]
     1ac:	ea000002 	b	1bc <strlen+0x28>
     1b0:	e51b3008 	ldr	r3, [fp, #-8]
     1b4:	e2833001 	add	r3, r3, #1
     1b8:	e50b3008 	str	r3, [fp, #-8]
     1bc:	e51b3008 	ldr	r3, [fp, #-8]
     1c0:	e51b2010 	ldr	r2, [fp, #-16]
     1c4:	e0823003 	add	r3, r2, r3
     1c8:	e5d33000 	ldrb	r3, [r3]
     1cc:	e3530000 	cmp	r3, #0
     1d0:	1afffff6 	bne	1b0 <strlen+0x1c>
     1d4:	e51b3008 	ldr	r3, [fp, #-8]
     1d8:	e1a00003 	mov	r0, r3
     1dc:	e28bd000 	add	sp, fp, #0
     1e0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1e4:	e12fff1e 	bx	lr

000001e8 <memset>:
     1e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1ec:	e28db000 	add	fp, sp, #0
     1f0:	e24dd024 	sub	sp, sp, #36	@ 0x24
     1f4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     1f8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     1fc:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     200:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     204:	e50b3008 	str	r3, [fp, #-8]
     208:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     20c:	e54b300d 	strb	r3, [fp, #-13]
     210:	e55b200d 	ldrb	r2, [fp, #-13]
     214:	e1a03002 	mov	r3, r2
     218:	e1a03403 	lsl	r3, r3, #8
     21c:	e0833002 	add	r3, r3, r2
     220:	e1a03803 	lsl	r3, r3, #16
     224:	e1a02003 	mov	r2, r3
     228:	e55b300d 	ldrb	r3, [fp, #-13]
     22c:	e1a03403 	lsl	r3, r3, #8
     230:	e1822003 	orr	r2, r2, r3
     234:	e55b300d 	ldrb	r3, [fp, #-13]
     238:	e1823003 	orr	r3, r2, r3
     23c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     240:	ea000008 	b	268 <memset+0x80>
     244:	e51b3008 	ldr	r3, [fp, #-8]
     248:	e55b200d 	ldrb	r2, [fp, #-13]
     24c:	e5c32000 	strb	r2, [r3]
     250:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     254:	e2433001 	sub	r3, r3, #1
     258:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     25c:	e51b3008 	ldr	r3, [fp, #-8]
     260:	e2833001 	add	r3, r3, #1
     264:	e50b3008 	str	r3, [fp, #-8]
     268:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     26c:	e3530000 	cmp	r3, #0
     270:	0a000003 	beq	284 <memset+0x9c>
     274:	e51b3008 	ldr	r3, [fp, #-8]
     278:	e2033003 	and	r3, r3, #3
     27c:	e3530000 	cmp	r3, #0
     280:	1affffef 	bne	244 <memset+0x5c>
     284:	e51b3008 	ldr	r3, [fp, #-8]
     288:	e50b300c 	str	r3, [fp, #-12]
     28c:	ea000008 	b	2b4 <memset+0xcc>
     290:	e51b300c 	ldr	r3, [fp, #-12]
     294:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     298:	e5832000 	str	r2, [r3]
     29c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2a0:	e2433004 	sub	r3, r3, #4
     2a4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2a8:	e51b300c 	ldr	r3, [fp, #-12]
     2ac:	e2833004 	add	r3, r3, #4
     2b0:	e50b300c 	str	r3, [fp, #-12]
     2b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2b8:	e3530003 	cmp	r3, #3
     2bc:	8afffff3 	bhi	290 <memset+0xa8>
     2c0:	e51b300c 	ldr	r3, [fp, #-12]
     2c4:	e50b3008 	str	r3, [fp, #-8]
     2c8:	ea000008 	b	2f0 <memset+0x108>
     2cc:	e51b3008 	ldr	r3, [fp, #-8]
     2d0:	e55b200d 	ldrb	r2, [fp, #-13]
     2d4:	e5c32000 	strb	r2, [r3]
     2d8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2dc:	e2433001 	sub	r3, r3, #1
     2e0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2e4:	e51b3008 	ldr	r3, [fp, #-8]
     2e8:	e2833001 	add	r3, r3, #1
     2ec:	e50b3008 	str	r3, [fp, #-8]
     2f0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2f4:	e3530000 	cmp	r3, #0
     2f8:	1afffff3 	bne	2cc <memset+0xe4>
     2fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     300:	e1a00003 	mov	r0, r3
     304:	e28bd000 	add	sp, fp, #0
     308:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     30c:	e12fff1e 	bx	lr

00000310 <strchr>:
     310:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     314:	e28db000 	add	fp, sp, #0
     318:	e24dd00c 	sub	sp, sp, #12
     31c:	e50b0008 	str	r0, [fp, #-8]
     320:	e1a03001 	mov	r3, r1
     324:	e54b3009 	strb	r3, [fp, #-9]
     328:	ea000009 	b	354 <strchr+0x44>
     32c:	e51b3008 	ldr	r3, [fp, #-8]
     330:	e5d33000 	ldrb	r3, [r3]
     334:	e55b2009 	ldrb	r2, [fp, #-9]
     338:	e1520003 	cmp	r2, r3
     33c:	1a000001 	bne	348 <strchr+0x38>
     340:	e51b3008 	ldr	r3, [fp, #-8]
     344:	ea000007 	b	368 <strchr+0x58>
     348:	e51b3008 	ldr	r3, [fp, #-8]
     34c:	e2833001 	add	r3, r3, #1
     350:	e50b3008 	str	r3, [fp, #-8]
     354:	e51b3008 	ldr	r3, [fp, #-8]
     358:	e5d33000 	ldrb	r3, [r3]
     35c:	e3530000 	cmp	r3, #0
     360:	1afffff1 	bne	32c <strchr+0x1c>
     364:	e3a03000 	mov	r3, #0
     368:	e1a00003 	mov	r0, r3
     36c:	e28bd000 	add	sp, fp, #0
     370:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     374:	e12fff1e 	bx	lr

00000378 <gets>:
     378:	e92d4800 	push	{fp, lr}
     37c:	e28db004 	add	fp, sp, #4
     380:	e24dd018 	sub	sp, sp, #24
     384:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     388:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     38c:	e3a03000 	mov	r3, #0
     390:	e50b3008 	str	r3, [fp, #-8]
     394:	ea000016 	b	3f4 <gets+0x7c>
     398:	e24b300d 	sub	r3, fp, #13
     39c:	e3a02001 	mov	r2, #1
     3a0:	e1a01003 	mov	r1, r3
     3a4:	e3a00000 	mov	r0, #0
     3a8:	eb0000a1 	bl	634 <read>
     3ac:	e50b000c 	str	r0, [fp, #-12]
     3b0:	e51b300c 	ldr	r3, [fp, #-12]
     3b4:	e3530000 	cmp	r3, #0
     3b8:	da000013 	ble	40c <gets+0x94>
     3bc:	e51b3008 	ldr	r3, [fp, #-8]
     3c0:	e2832001 	add	r2, r3, #1
     3c4:	e50b2008 	str	r2, [fp, #-8]
     3c8:	e1a02003 	mov	r2, r3
     3cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3d0:	e0833002 	add	r3, r3, r2
     3d4:	e55b200d 	ldrb	r2, [fp, #-13]
     3d8:	e5c32000 	strb	r2, [r3]
     3dc:	e55b300d 	ldrb	r3, [fp, #-13]
     3e0:	e353000a 	cmp	r3, #10
     3e4:	0a000009 	beq	410 <gets+0x98>
     3e8:	e55b300d 	ldrb	r3, [fp, #-13]
     3ec:	e353000d 	cmp	r3, #13
     3f0:	0a000006 	beq	410 <gets+0x98>
     3f4:	e51b3008 	ldr	r3, [fp, #-8]
     3f8:	e2833001 	add	r3, r3, #1
     3fc:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     400:	e1520003 	cmp	r2, r3
     404:	caffffe3 	bgt	398 <gets+0x20>
     408:	ea000000 	b	410 <gets+0x98>
     40c:	e1a00000 	nop			@ (mov r0, r0)
     410:	e51b3008 	ldr	r3, [fp, #-8]
     414:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     418:	e0823003 	add	r3, r2, r3
     41c:	e3a02000 	mov	r2, #0
     420:	e5c32000 	strb	r2, [r3]
     424:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     428:	e1a00003 	mov	r0, r3
     42c:	e24bd004 	sub	sp, fp, #4
     430:	e8bd8800 	pop	{fp, pc}

00000434 <stat>:
     434:	e92d4800 	push	{fp, lr}
     438:	e28db004 	add	fp, sp, #4
     43c:	e24dd010 	sub	sp, sp, #16
     440:	e50b0010 	str	r0, [fp, #-16]
     444:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     448:	e3a01000 	mov	r1, #0
     44c:	e51b0010 	ldr	r0, [fp, #-16]
     450:	eb0000a4 	bl	6e8 <open>
     454:	e50b0008 	str	r0, [fp, #-8]
     458:	e51b3008 	ldr	r3, [fp, #-8]
     45c:	e3530000 	cmp	r3, #0
     460:	aa000001 	bge	46c <stat+0x38>
     464:	e3e03000 	mvn	r3, #0
     468:	ea000006 	b	488 <stat+0x54>
     46c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     470:	e51b0008 	ldr	r0, [fp, #-8]
     474:	eb0000b6 	bl	754 <fstat>
     478:	e50b000c 	str	r0, [fp, #-12]
     47c:	e51b0008 	ldr	r0, [fp, #-8]
     480:	eb00007d 	bl	67c <close>
     484:	e51b300c 	ldr	r3, [fp, #-12]
     488:	e1a00003 	mov	r0, r3
     48c:	e24bd004 	sub	sp, fp, #4
     490:	e8bd8800 	pop	{fp, pc}

00000494 <atoi>:
     494:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     498:	e28db000 	add	fp, sp, #0
     49c:	e24dd014 	sub	sp, sp, #20
     4a0:	e50b0010 	str	r0, [fp, #-16]
     4a4:	e3a03000 	mov	r3, #0
     4a8:	e50b3008 	str	r3, [fp, #-8]
     4ac:	ea00000c 	b	4e4 <atoi+0x50>
     4b0:	e51b2008 	ldr	r2, [fp, #-8]
     4b4:	e1a03002 	mov	r3, r2
     4b8:	e1a03103 	lsl	r3, r3, #2
     4bc:	e0833002 	add	r3, r3, r2
     4c0:	e1a03083 	lsl	r3, r3, #1
     4c4:	e1a01003 	mov	r1, r3
     4c8:	e51b3010 	ldr	r3, [fp, #-16]
     4cc:	e2832001 	add	r2, r3, #1
     4d0:	e50b2010 	str	r2, [fp, #-16]
     4d4:	e5d33000 	ldrb	r3, [r3]
     4d8:	e0813003 	add	r3, r1, r3
     4dc:	e2433030 	sub	r3, r3, #48	@ 0x30
     4e0:	e50b3008 	str	r3, [fp, #-8]
     4e4:	e51b3010 	ldr	r3, [fp, #-16]
     4e8:	e5d33000 	ldrb	r3, [r3]
     4ec:	e353002f 	cmp	r3, #47	@ 0x2f
     4f0:	9a000003 	bls	504 <atoi+0x70>
     4f4:	e51b3010 	ldr	r3, [fp, #-16]
     4f8:	e5d33000 	ldrb	r3, [r3]
     4fc:	e3530039 	cmp	r3, #57	@ 0x39
     500:	9affffea 	bls	4b0 <atoi+0x1c>
     504:	e51b3010 	ldr	r3, [fp, #-16]
     508:	e5d33000 	ldrb	r3, [r3]
     50c:	e3530000 	cmp	r3, #0
     510:	1a000001 	bne	51c <atoi+0x88>
     514:	e51b3008 	ldr	r3, [fp, #-8]
     518:	ea000000 	b	520 <atoi+0x8c>
     51c:	e3e03000 	mvn	r3, #0
     520:	e1a00003 	mov	r0, r3
     524:	e28bd000 	add	sp, fp, #0
     528:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     52c:	e12fff1e 	bx	lr

00000530 <memmove>:
     530:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     534:	e28db000 	add	fp, sp, #0
     538:	e24dd01c 	sub	sp, sp, #28
     53c:	e50b0010 	str	r0, [fp, #-16]
     540:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     544:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     548:	e51b3010 	ldr	r3, [fp, #-16]
     54c:	e50b3008 	str	r3, [fp, #-8]
     550:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     554:	e50b300c 	str	r3, [fp, #-12]
     558:	ea000007 	b	57c <memmove+0x4c>
     55c:	e51b200c 	ldr	r2, [fp, #-12]
     560:	e2823001 	add	r3, r2, #1
     564:	e50b300c 	str	r3, [fp, #-12]
     568:	e51b3008 	ldr	r3, [fp, #-8]
     56c:	e2831001 	add	r1, r3, #1
     570:	e50b1008 	str	r1, [fp, #-8]
     574:	e5d22000 	ldrb	r2, [r2]
     578:	e5c32000 	strb	r2, [r3]
     57c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     580:	e2432001 	sub	r2, r3, #1
     584:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     588:	e3530000 	cmp	r3, #0
     58c:	cafffff2 	bgt	55c <memmove+0x2c>
     590:	e51b3010 	ldr	r3, [fp, #-16]
     594:	e1a00003 	mov	r0, r3
     598:	e28bd000 	add	sp, fp, #0
     59c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5a0:	e12fff1e 	bx	lr

000005a4 <fork>:
     5a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5a8:	e1a04003 	mov	r4, r3
     5ac:	e1a03002 	mov	r3, r2
     5b0:	e1a02001 	mov	r2, r1
     5b4:	e1a01000 	mov	r1, r0
     5b8:	e3a00001 	mov	r0, #1
     5bc:	ef000000 	svc	0x00000000
     5c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5c4:	e12fff1e 	bx	lr

000005c8 <exit>:
     5c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5cc:	e1a04003 	mov	r4, r3
     5d0:	e1a03002 	mov	r3, r2
     5d4:	e1a02001 	mov	r2, r1
     5d8:	e1a01000 	mov	r1, r0
     5dc:	e3a00002 	mov	r0, #2
     5e0:	ef000000 	svc	0x00000000
     5e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5e8:	e12fff1e 	bx	lr

000005ec <wait>:
     5ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5f0:	e1a04003 	mov	r4, r3
     5f4:	e1a03002 	mov	r3, r2
     5f8:	e1a02001 	mov	r2, r1
     5fc:	e1a01000 	mov	r1, r0
     600:	e3a00003 	mov	r0, #3
     604:	ef000000 	svc	0x00000000
     608:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     60c:	e12fff1e 	bx	lr

00000610 <pipe>:
     610:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     614:	e1a04003 	mov	r4, r3
     618:	e1a03002 	mov	r3, r2
     61c:	e1a02001 	mov	r2, r1
     620:	e1a01000 	mov	r1, r0
     624:	e3a00004 	mov	r0, #4
     628:	ef000000 	svc	0x00000000
     62c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     630:	e12fff1e 	bx	lr

00000634 <read>:
     634:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     638:	e1a04003 	mov	r4, r3
     63c:	e1a03002 	mov	r3, r2
     640:	e1a02001 	mov	r2, r1
     644:	e1a01000 	mov	r1, r0
     648:	e3a00005 	mov	r0, #5
     64c:	ef000000 	svc	0x00000000
     650:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     654:	e12fff1e 	bx	lr

00000658 <write>:
     658:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     65c:	e1a04003 	mov	r4, r3
     660:	e1a03002 	mov	r3, r2
     664:	e1a02001 	mov	r2, r1
     668:	e1a01000 	mov	r1, r0
     66c:	e3a00010 	mov	r0, #16
     670:	ef000000 	svc	0x00000000
     674:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     678:	e12fff1e 	bx	lr

0000067c <close>:
     67c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     680:	e1a04003 	mov	r4, r3
     684:	e1a03002 	mov	r3, r2
     688:	e1a02001 	mov	r2, r1
     68c:	e1a01000 	mov	r1, r0
     690:	e3a00015 	mov	r0, #21
     694:	ef000000 	svc	0x00000000
     698:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     69c:	e12fff1e 	bx	lr

000006a0 <kill>:
     6a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6a4:	e1a04003 	mov	r4, r3
     6a8:	e1a03002 	mov	r3, r2
     6ac:	e1a02001 	mov	r2, r1
     6b0:	e1a01000 	mov	r1, r0
     6b4:	e3a00006 	mov	r0, #6
     6b8:	ef000000 	svc	0x00000000
     6bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6c0:	e12fff1e 	bx	lr

000006c4 <exec>:
     6c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6c8:	e1a04003 	mov	r4, r3
     6cc:	e1a03002 	mov	r3, r2
     6d0:	e1a02001 	mov	r2, r1
     6d4:	e1a01000 	mov	r1, r0
     6d8:	e3a00007 	mov	r0, #7
     6dc:	ef000000 	svc	0x00000000
     6e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6e4:	e12fff1e 	bx	lr

000006e8 <open>:
     6e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6ec:	e1a04003 	mov	r4, r3
     6f0:	e1a03002 	mov	r3, r2
     6f4:	e1a02001 	mov	r2, r1
     6f8:	e1a01000 	mov	r1, r0
     6fc:	e3a0000f 	mov	r0, #15
     700:	ef000000 	svc	0x00000000
     704:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     708:	e12fff1e 	bx	lr

0000070c <mknod>:
     70c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     710:	e1a04003 	mov	r4, r3
     714:	e1a03002 	mov	r3, r2
     718:	e1a02001 	mov	r2, r1
     71c:	e1a01000 	mov	r1, r0
     720:	e3a00011 	mov	r0, #17
     724:	ef000000 	svc	0x00000000
     728:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     72c:	e12fff1e 	bx	lr

00000730 <unlink>:
     730:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     734:	e1a04003 	mov	r4, r3
     738:	e1a03002 	mov	r3, r2
     73c:	e1a02001 	mov	r2, r1
     740:	e1a01000 	mov	r1, r0
     744:	e3a00012 	mov	r0, #18
     748:	ef000000 	svc	0x00000000
     74c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     750:	e12fff1e 	bx	lr

00000754 <fstat>:
     754:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     758:	e1a04003 	mov	r4, r3
     75c:	e1a03002 	mov	r3, r2
     760:	e1a02001 	mov	r2, r1
     764:	e1a01000 	mov	r1, r0
     768:	e3a00008 	mov	r0, #8
     76c:	ef000000 	svc	0x00000000
     770:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     774:	e12fff1e 	bx	lr

00000778 <link>:
     778:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     77c:	e1a04003 	mov	r4, r3
     780:	e1a03002 	mov	r3, r2
     784:	e1a02001 	mov	r2, r1
     788:	e1a01000 	mov	r1, r0
     78c:	e3a00013 	mov	r0, #19
     790:	ef000000 	svc	0x00000000
     794:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     798:	e12fff1e 	bx	lr

0000079c <mkdir>:
     79c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7a0:	e1a04003 	mov	r4, r3
     7a4:	e1a03002 	mov	r3, r2
     7a8:	e1a02001 	mov	r2, r1
     7ac:	e1a01000 	mov	r1, r0
     7b0:	e3a00014 	mov	r0, #20
     7b4:	ef000000 	svc	0x00000000
     7b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7bc:	e12fff1e 	bx	lr

000007c0 <chdir>:
     7c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7c4:	e1a04003 	mov	r4, r3
     7c8:	e1a03002 	mov	r3, r2
     7cc:	e1a02001 	mov	r2, r1
     7d0:	e1a01000 	mov	r1, r0
     7d4:	e3a00009 	mov	r0, #9
     7d8:	ef000000 	svc	0x00000000
     7dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7e0:	e12fff1e 	bx	lr

000007e4 <dup>:
     7e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7e8:	e1a04003 	mov	r4, r3
     7ec:	e1a03002 	mov	r3, r2
     7f0:	e1a02001 	mov	r2, r1
     7f4:	e1a01000 	mov	r1, r0
     7f8:	e3a0000a 	mov	r0, #10
     7fc:	ef000000 	svc	0x00000000
     800:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     804:	e12fff1e 	bx	lr

00000808 <getpid>:
     808:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     80c:	e1a04003 	mov	r4, r3
     810:	e1a03002 	mov	r3, r2
     814:	e1a02001 	mov	r2, r1
     818:	e1a01000 	mov	r1, r0
     81c:	e3a0000b 	mov	r0, #11
     820:	ef000000 	svc	0x00000000
     824:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     828:	e12fff1e 	bx	lr

0000082c <sbrk>:
     82c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     830:	e1a04003 	mov	r4, r3
     834:	e1a03002 	mov	r3, r2
     838:	e1a02001 	mov	r2, r1
     83c:	e1a01000 	mov	r1, r0
     840:	e3a0000c 	mov	r0, #12
     844:	ef000000 	svc	0x00000000
     848:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     84c:	e12fff1e 	bx	lr

00000850 <sleep>:
     850:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     854:	e1a04003 	mov	r4, r3
     858:	e1a03002 	mov	r3, r2
     85c:	e1a02001 	mov	r2, r1
     860:	e1a01000 	mov	r1, r0
     864:	e3a0000d 	mov	r0, #13
     868:	ef000000 	svc	0x00000000
     86c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     870:	e12fff1e 	bx	lr

00000874 <uptime>:
     874:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     878:	e1a04003 	mov	r4, r3
     87c:	e1a03002 	mov	r3, r2
     880:	e1a02001 	mov	r2, r1
     884:	e1a01000 	mov	r1, r0
     888:	e3a0000e 	mov	r0, #14
     88c:	ef000000 	svc	0x00000000
     890:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     894:	e12fff1e 	bx	lr

00000898 <getprocs>:
     898:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     89c:	e1a04003 	mov	r4, r3
     8a0:	e1a03002 	mov	r3, r2
     8a4:	e1a02001 	mov	r2, r1
     8a8:	e1a01000 	mov	r1, r0
     8ac:	e3a00016 	mov	r0, #22
     8b0:	ef000000 	svc	0x00000000
     8b4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8b8:	e12fff1e 	bx	lr

000008bc <settickets>:
     8bc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8c0:	e1a04003 	mov	r4, r3
     8c4:	e1a03002 	mov	r3, r2
     8c8:	e1a02001 	mov	r2, r1
     8cc:	e1a01000 	mov	r1, r0
     8d0:	e3a00017 	mov	r0, #23
     8d4:	ef000000 	svc	0x00000000
     8d8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8dc:	e12fff1e 	bx	lr

000008e0 <srand>:
     8e0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8e4:	e1a04003 	mov	r4, r3
     8e8:	e1a03002 	mov	r3, r2
     8ec:	e1a02001 	mov	r2, r1
     8f0:	e1a01000 	mov	r1, r0
     8f4:	e3a00018 	mov	r0, #24
     8f8:	ef000000 	svc	0x00000000
     8fc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     900:	e12fff1e 	bx	lr

00000904 <getpinfo>:
     904:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     908:	e1a04003 	mov	r4, r3
     90c:	e1a03002 	mov	r3, r2
     910:	e1a02001 	mov	r2, r1
     914:	e1a01000 	mov	r1, r0
     918:	e3a00019 	mov	r0, #25
     91c:	ef000000 	svc	0x00000000
     920:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     924:	e12fff1e 	bx	lr

00000928 <putc>:
     928:	e92d4800 	push	{fp, lr}
     92c:	e28db004 	add	fp, sp, #4
     930:	e24dd008 	sub	sp, sp, #8
     934:	e50b0008 	str	r0, [fp, #-8]
     938:	e1a03001 	mov	r3, r1
     93c:	e54b3009 	strb	r3, [fp, #-9]
     940:	e24b3009 	sub	r3, fp, #9
     944:	e3a02001 	mov	r2, #1
     948:	e1a01003 	mov	r1, r3
     94c:	e51b0008 	ldr	r0, [fp, #-8]
     950:	ebffff40 	bl	658 <write>
     954:	e1a00000 	nop			@ (mov r0, r0)
     958:	e24bd004 	sub	sp, fp, #4
     95c:	e8bd8800 	pop	{fp, pc}

00000960 <printint>:
     960:	e92d4800 	push	{fp, lr}
     964:	e28db004 	add	fp, sp, #4
     968:	e24dd030 	sub	sp, sp, #48	@ 0x30
     96c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     970:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     974:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     978:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     97c:	e3a03000 	mov	r3, #0
     980:	e50b300c 	str	r3, [fp, #-12]
     984:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     988:	e3530000 	cmp	r3, #0
     98c:	0a000008 	beq	9b4 <printint+0x54>
     990:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     994:	e3530000 	cmp	r3, #0
     998:	aa000005 	bge	9b4 <printint+0x54>
     99c:	e3a03001 	mov	r3, #1
     9a0:	e50b300c 	str	r3, [fp, #-12]
     9a4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9a8:	e2633000 	rsb	r3, r3, #0
     9ac:	e50b3010 	str	r3, [fp, #-16]
     9b0:	ea000001 	b	9bc <printint+0x5c>
     9b4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9b8:	e50b3010 	str	r3, [fp, #-16]
     9bc:	e3a03000 	mov	r3, #0
     9c0:	e50b3008 	str	r3, [fp, #-8]
     9c4:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     9c8:	e51b3010 	ldr	r3, [fp, #-16]
     9cc:	e1a01002 	mov	r1, r2
     9d0:	e1a00003 	mov	r0, r3
     9d4:	eb0001d5 	bl	1130 <__aeabi_uidivmod>
     9d8:	e1a03001 	mov	r3, r1
     9dc:	e1a01003 	mov	r1, r3
     9e0:	e51b3008 	ldr	r3, [fp, #-8]
     9e4:	e2832001 	add	r2, r3, #1
     9e8:	e50b2008 	str	r2, [fp, #-8]
     9ec:	e59f20a0 	ldr	r2, [pc, #160]	@ a94 <printint+0x134>
     9f0:	e7d22001 	ldrb	r2, [r2, r1]
     9f4:	e2433004 	sub	r3, r3, #4
     9f8:	e083300b 	add	r3, r3, fp
     9fc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a00:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     a04:	e1a01003 	mov	r1, r3
     a08:	e51b0010 	ldr	r0, [fp, #-16]
     a0c:	eb00018a 	bl	103c <__udivsi3>
     a10:	e1a03000 	mov	r3, r0
     a14:	e50b3010 	str	r3, [fp, #-16]
     a18:	e51b3010 	ldr	r3, [fp, #-16]
     a1c:	e3530000 	cmp	r3, #0
     a20:	1affffe7 	bne	9c4 <printint+0x64>
     a24:	e51b300c 	ldr	r3, [fp, #-12]
     a28:	e3530000 	cmp	r3, #0
     a2c:	0a00000e 	beq	a6c <printint+0x10c>
     a30:	e51b3008 	ldr	r3, [fp, #-8]
     a34:	e2832001 	add	r2, r3, #1
     a38:	e50b2008 	str	r2, [fp, #-8]
     a3c:	e2433004 	sub	r3, r3, #4
     a40:	e083300b 	add	r3, r3, fp
     a44:	e3a0202d 	mov	r2, #45	@ 0x2d
     a48:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a4c:	ea000006 	b	a6c <printint+0x10c>
     a50:	e24b2020 	sub	r2, fp, #32
     a54:	e51b3008 	ldr	r3, [fp, #-8]
     a58:	e0823003 	add	r3, r2, r3
     a5c:	e5d33000 	ldrb	r3, [r3]
     a60:	e1a01003 	mov	r1, r3
     a64:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     a68:	ebffffae 	bl	928 <putc>
     a6c:	e51b3008 	ldr	r3, [fp, #-8]
     a70:	e2433001 	sub	r3, r3, #1
     a74:	e50b3008 	str	r3, [fp, #-8]
     a78:	e51b3008 	ldr	r3, [fp, #-8]
     a7c:	e3530000 	cmp	r3, #0
     a80:	aafffff2 	bge	a50 <printint+0xf0>
     a84:	e1a00000 	nop			@ (mov r0, r0)
     a88:	e1a00000 	nop			@ (mov r0, r0)
     a8c:	e24bd004 	sub	sp, fp, #4
     a90:	e8bd8800 	pop	{fp, pc}
     a94:	00001190 	.word	0x00001190

00000a98 <printf>:
     a98:	e92d000e 	push	{r1, r2, r3}
     a9c:	e92d4800 	push	{fp, lr}
     aa0:	e28db004 	add	fp, sp, #4
     aa4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     aa8:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     aac:	e3a03000 	mov	r3, #0
     ab0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ab4:	e28b3008 	add	r3, fp, #8
     ab8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     abc:	e3a03000 	mov	r3, #0
     ac0:	e50b3010 	str	r3, [fp, #-16]
     ac4:	ea000074 	b	c9c <printf+0x204>
     ac8:	e59b2004 	ldr	r2, [fp, #4]
     acc:	e51b3010 	ldr	r3, [fp, #-16]
     ad0:	e0823003 	add	r3, r2, r3
     ad4:	e5d33000 	ldrb	r3, [r3]
     ad8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     adc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ae0:	e3530000 	cmp	r3, #0
     ae4:	1a00000b 	bne	b18 <printf+0x80>
     ae8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     aec:	e3530025 	cmp	r3, #37	@ 0x25
     af0:	1a000002 	bne	b00 <printf+0x68>
     af4:	e3a03025 	mov	r3, #37	@ 0x25
     af8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     afc:	ea000063 	b	c90 <printf+0x1f8>
     b00:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b04:	e6ef3073 	uxtb	r3, r3
     b08:	e1a01003 	mov	r1, r3
     b0c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b10:	ebffff84 	bl	928 <putc>
     b14:	ea00005d 	b	c90 <printf+0x1f8>
     b18:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b1c:	e3530025 	cmp	r3, #37	@ 0x25
     b20:	1a00005a 	bne	c90 <printf+0x1f8>
     b24:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b28:	e3530064 	cmp	r3, #100	@ 0x64
     b2c:	1a00000a 	bne	b5c <printf+0xc4>
     b30:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b34:	e5933000 	ldr	r3, [r3]
     b38:	e1a01003 	mov	r1, r3
     b3c:	e3a03001 	mov	r3, #1
     b40:	e3a0200a 	mov	r2, #10
     b44:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b48:	ebffff84 	bl	960 <printint>
     b4c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b50:	e2833004 	add	r3, r3, #4
     b54:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b58:	ea00004a 	b	c88 <printf+0x1f0>
     b5c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b60:	e3530078 	cmp	r3, #120	@ 0x78
     b64:	0a000002 	beq	b74 <printf+0xdc>
     b68:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b6c:	e3530070 	cmp	r3, #112	@ 0x70
     b70:	1a00000a 	bne	ba0 <printf+0x108>
     b74:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b78:	e5933000 	ldr	r3, [r3]
     b7c:	e1a01003 	mov	r1, r3
     b80:	e3a03000 	mov	r3, #0
     b84:	e3a02010 	mov	r2, #16
     b88:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b8c:	ebffff73 	bl	960 <printint>
     b90:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b94:	e2833004 	add	r3, r3, #4
     b98:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b9c:	ea000039 	b	c88 <printf+0x1f0>
     ba0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ba4:	e3530073 	cmp	r3, #115	@ 0x73
     ba8:	1a000018 	bne	c10 <printf+0x178>
     bac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bb0:	e5933000 	ldr	r3, [r3]
     bb4:	e50b300c 	str	r3, [fp, #-12]
     bb8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bbc:	e2833004 	add	r3, r3, #4
     bc0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bc4:	e51b300c 	ldr	r3, [fp, #-12]
     bc8:	e3530000 	cmp	r3, #0
     bcc:	1a00000a 	bne	bfc <printf+0x164>
     bd0:	e59f30f4 	ldr	r3, [pc, #244]	@ ccc <printf+0x234>
     bd4:	e50b300c 	str	r3, [fp, #-12]
     bd8:	ea000007 	b	bfc <printf+0x164>
     bdc:	e51b300c 	ldr	r3, [fp, #-12]
     be0:	e5d33000 	ldrb	r3, [r3]
     be4:	e1a01003 	mov	r1, r3
     be8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bec:	ebffff4d 	bl	928 <putc>
     bf0:	e51b300c 	ldr	r3, [fp, #-12]
     bf4:	e2833001 	add	r3, r3, #1
     bf8:	e50b300c 	str	r3, [fp, #-12]
     bfc:	e51b300c 	ldr	r3, [fp, #-12]
     c00:	e5d33000 	ldrb	r3, [r3]
     c04:	e3530000 	cmp	r3, #0
     c08:	1afffff3 	bne	bdc <printf+0x144>
     c0c:	ea00001d 	b	c88 <printf+0x1f0>
     c10:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c14:	e3530063 	cmp	r3, #99	@ 0x63
     c18:	1a000009 	bne	c44 <printf+0x1ac>
     c1c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c20:	e5933000 	ldr	r3, [r3]
     c24:	e6ef3073 	uxtb	r3, r3
     c28:	e1a01003 	mov	r1, r3
     c2c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c30:	ebffff3c 	bl	928 <putc>
     c34:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c38:	e2833004 	add	r3, r3, #4
     c3c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c40:	ea000010 	b	c88 <printf+0x1f0>
     c44:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c48:	e3530025 	cmp	r3, #37	@ 0x25
     c4c:	1a000005 	bne	c68 <printf+0x1d0>
     c50:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c54:	e6ef3073 	uxtb	r3, r3
     c58:	e1a01003 	mov	r1, r3
     c5c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c60:	ebffff30 	bl	928 <putc>
     c64:	ea000007 	b	c88 <printf+0x1f0>
     c68:	e3a01025 	mov	r1, #37	@ 0x25
     c6c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c70:	ebffff2c 	bl	928 <putc>
     c74:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c78:	e6ef3073 	uxtb	r3, r3
     c7c:	e1a01003 	mov	r1, r3
     c80:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c84:	ebffff27 	bl	928 <putc>
     c88:	e3a03000 	mov	r3, #0
     c8c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c90:	e51b3010 	ldr	r3, [fp, #-16]
     c94:	e2833001 	add	r3, r3, #1
     c98:	e50b3010 	str	r3, [fp, #-16]
     c9c:	e59b2004 	ldr	r2, [fp, #4]
     ca0:	e51b3010 	ldr	r3, [fp, #-16]
     ca4:	e0823003 	add	r3, r2, r3
     ca8:	e5d33000 	ldrb	r3, [r3]
     cac:	e3530000 	cmp	r3, #0
     cb0:	1affff84 	bne	ac8 <printf+0x30>
     cb4:	e1a00000 	nop			@ (mov r0, r0)
     cb8:	e1a00000 	nop			@ (mov r0, r0)
     cbc:	e24bd004 	sub	sp, fp, #4
     cc0:	e8bd4800 	pop	{fp, lr}
     cc4:	e28dd00c 	add	sp, sp, #12
     cc8:	e12fff1e 	bx	lr
     ccc:	00001188 	.word	0x00001188

00000cd0 <free>:
     cd0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     cd4:	e28db000 	add	fp, sp, #0
     cd8:	e24dd014 	sub	sp, sp, #20
     cdc:	e50b0010 	str	r0, [fp, #-16]
     ce0:	e51b3010 	ldr	r3, [fp, #-16]
     ce4:	e2433008 	sub	r3, r3, #8
     ce8:	e50b300c 	str	r3, [fp, #-12]
     cec:	e59f3154 	ldr	r3, [pc, #340]	@ e48 <free+0x178>
     cf0:	e5933000 	ldr	r3, [r3]
     cf4:	e50b3008 	str	r3, [fp, #-8]
     cf8:	ea000010 	b	d40 <free+0x70>
     cfc:	e51b3008 	ldr	r3, [fp, #-8]
     d00:	e5933000 	ldr	r3, [r3]
     d04:	e51b2008 	ldr	r2, [fp, #-8]
     d08:	e1520003 	cmp	r2, r3
     d0c:	3a000008 	bcc	d34 <free+0x64>
     d10:	e51b200c 	ldr	r2, [fp, #-12]
     d14:	e51b3008 	ldr	r3, [fp, #-8]
     d18:	e1520003 	cmp	r2, r3
     d1c:	8a000010 	bhi	d64 <free+0x94>
     d20:	e51b3008 	ldr	r3, [fp, #-8]
     d24:	e5933000 	ldr	r3, [r3]
     d28:	e51b200c 	ldr	r2, [fp, #-12]
     d2c:	e1520003 	cmp	r2, r3
     d30:	3a00000b 	bcc	d64 <free+0x94>
     d34:	e51b3008 	ldr	r3, [fp, #-8]
     d38:	e5933000 	ldr	r3, [r3]
     d3c:	e50b3008 	str	r3, [fp, #-8]
     d40:	e51b200c 	ldr	r2, [fp, #-12]
     d44:	e51b3008 	ldr	r3, [fp, #-8]
     d48:	e1520003 	cmp	r2, r3
     d4c:	9affffea 	bls	cfc <free+0x2c>
     d50:	e51b3008 	ldr	r3, [fp, #-8]
     d54:	e5933000 	ldr	r3, [r3]
     d58:	e51b200c 	ldr	r2, [fp, #-12]
     d5c:	e1520003 	cmp	r2, r3
     d60:	2affffe5 	bcs	cfc <free+0x2c>
     d64:	e51b300c 	ldr	r3, [fp, #-12]
     d68:	e5933004 	ldr	r3, [r3, #4]
     d6c:	e1a03183 	lsl	r3, r3, #3
     d70:	e51b200c 	ldr	r2, [fp, #-12]
     d74:	e0822003 	add	r2, r2, r3
     d78:	e51b3008 	ldr	r3, [fp, #-8]
     d7c:	e5933000 	ldr	r3, [r3]
     d80:	e1520003 	cmp	r2, r3
     d84:	1a00000d 	bne	dc0 <free+0xf0>
     d88:	e51b300c 	ldr	r3, [fp, #-12]
     d8c:	e5932004 	ldr	r2, [r3, #4]
     d90:	e51b3008 	ldr	r3, [fp, #-8]
     d94:	e5933000 	ldr	r3, [r3]
     d98:	e5933004 	ldr	r3, [r3, #4]
     d9c:	e0822003 	add	r2, r2, r3
     da0:	e51b300c 	ldr	r3, [fp, #-12]
     da4:	e5832004 	str	r2, [r3, #4]
     da8:	e51b3008 	ldr	r3, [fp, #-8]
     dac:	e5933000 	ldr	r3, [r3]
     db0:	e5932000 	ldr	r2, [r3]
     db4:	e51b300c 	ldr	r3, [fp, #-12]
     db8:	e5832000 	str	r2, [r3]
     dbc:	ea000003 	b	dd0 <free+0x100>
     dc0:	e51b3008 	ldr	r3, [fp, #-8]
     dc4:	e5932000 	ldr	r2, [r3]
     dc8:	e51b300c 	ldr	r3, [fp, #-12]
     dcc:	e5832000 	str	r2, [r3]
     dd0:	e51b3008 	ldr	r3, [fp, #-8]
     dd4:	e5933004 	ldr	r3, [r3, #4]
     dd8:	e1a03183 	lsl	r3, r3, #3
     ddc:	e51b2008 	ldr	r2, [fp, #-8]
     de0:	e0823003 	add	r3, r2, r3
     de4:	e51b200c 	ldr	r2, [fp, #-12]
     de8:	e1520003 	cmp	r2, r3
     dec:	1a00000b 	bne	e20 <free+0x150>
     df0:	e51b3008 	ldr	r3, [fp, #-8]
     df4:	e5932004 	ldr	r2, [r3, #4]
     df8:	e51b300c 	ldr	r3, [fp, #-12]
     dfc:	e5933004 	ldr	r3, [r3, #4]
     e00:	e0822003 	add	r2, r2, r3
     e04:	e51b3008 	ldr	r3, [fp, #-8]
     e08:	e5832004 	str	r2, [r3, #4]
     e0c:	e51b300c 	ldr	r3, [fp, #-12]
     e10:	e5932000 	ldr	r2, [r3]
     e14:	e51b3008 	ldr	r3, [fp, #-8]
     e18:	e5832000 	str	r2, [r3]
     e1c:	ea000002 	b	e2c <free+0x15c>
     e20:	e51b3008 	ldr	r3, [fp, #-8]
     e24:	e51b200c 	ldr	r2, [fp, #-12]
     e28:	e5832000 	str	r2, [r3]
     e2c:	e59f2014 	ldr	r2, [pc, #20]	@ e48 <free+0x178>
     e30:	e51b3008 	ldr	r3, [fp, #-8]
     e34:	e5823000 	str	r3, [r2]
     e38:	e1a00000 	nop			@ (mov r0, r0)
     e3c:	e28bd000 	add	sp, fp, #0
     e40:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     e44:	e12fff1e 	bx	lr
     e48:	000011ac 	.word	0x000011ac

00000e4c <morecore>:
     e4c:	e92d4800 	push	{fp, lr}
     e50:	e28db004 	add	fp, sp, #4
     e54:	e24dd010 	sub	sp, sp, #16
     e58:	e50b0010 	str	r0, [fp, #-16]
     e5c:	e51b3010 	ldr	r3, [fp, #-16]
     e60:	e3530a01 	cmp	r3, #4096	@ 0x1000
     e64:	2a000001 	bcs	e70 <morecore+0x24>
     e68:	e3a03a01 	mov	r3, #4096	@ 0x1000
     e6c:	e50b3010 	str	r3, [fp, #-16]
     e70:	e51b3010 	ldr	r3, [fp, #-16]
     e74:	e1a03183 	lsl	r3, r3, #3
     e78:	e1a00003 	mov	r0, r3
     e7c:	ebfffe6a 	bl	82c <sbrk>
     e80:	e50b0008 	str	r0, [fp, #-8]
     e84:	e51b3008 	ldr	r3, [fp, #-8]
     e88:	e3730001 	cmn	r3, #1
     e8c:	1a000001 	bne	e98 <morecore+0x4c>
     e90:	e3a03000 	mov	r3, #0
     e94:	ea00000a 	b	ec4 <morecore+0x78>
     e98:	e51b3008 	ldr	r3, [fp, #-8]
     e9c:	e50b300c 	str	r3, [fp, #-12]
     ea0:	e51b300c 	ldr	r3, [fp, #-12]
     ea4:	e51b2010 	ldr	r2, [fp, #-16]
     ea8:	e5832004 	str	r2, [r3, #4]
     eac:	e51b300c 	ldr	r3, [fp, #-12]
     eb0:	e2833008 	add	r3, r3, #8
     eb4:	e1a00003 	mov	r0, r3
     eb8:	ebffff84 	bl	cd0 <free>
     ebc:	e59f300c 	ldr	r3, [pc, #12]	@ ed0 <morecore+0x84>
     ec0:	e5933000 	ldr	r3, [r3]
     ec4:	e1a00003 	mov	r0, r3
     ec8:	e24bd004 	sub	sp, fp, #4
     ecc:	e8bd8800 	pop	{fp, pc}
     ed0:	000011ac 	.word	0x000011ac

00000ed4 <malloc>:
     ed4:	e92d4800 	push	{fp, lr}
     ed8:	e28db004 	add	fp, sp, #4
     edc:	e24dd018 	sub	sp, sp, #24
     ee0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     ee4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ee8:	e2833007 	add	r3, r3, #7
     eec:	e1a031a3 	lsr	r3, r3, #3
     ef0:	e2833001 	add	r3, r3, #1
     ef4:	e50b3010 	str	r3, [fp, #-16]
     ef8:	e59f3134 	ldr	r3, [pc, #308]	@ 1034 <malloc+0x160>
     efc:	e5933000 	ldr	r3, [r3]
     f00:	e50b300c 	str	r3, [fp, #-12]
     f04:	e51b300c 	ldr	r3, [fp, #-12]
     f08:	e3530000 	cmp	r3, #0
     f0c:	1a00000b 	bne	f40 <malloc+0x6c>
     f10:	e59f3120 	ldr	r3, [pc, #288]	@ 1038 <malloc+0x164>
     f14:	e50b300c 	str	r3, [fp, #-12]
     f18:	e59f2114 	ldr	r2, [pc, #276]	@ 1034 <malloc+0x160>
     f1c:	e51b300c 	ldr	r3, [fp, #-12]
     f20:	e5823000 	str	r3, [r2]
     f24:	e59f3108 	ldr	r3, [pc, #264]	@ 1034 <malloc+0x160>
     f28:	e5933000 	ldr	r3, [r3]
     f2c:	e59f2104 	ldr	r2, [pc, #260]	@ 1038 <malloc+0x164>
     f30:	e5823000 	str	r3, [r2]
     f34:	e59f30fc 	ldr	r3, [pc, #252]	@ 1038 <malloc+0x164>
     f38:	e3a02000 	mov	r2, #0
     f3c:	e5832004 	str	r2, [r3, #4]
     f40:	e51b300c 	ldr	r3, [fp, #-12]
     f44:	e5933000 	ldr	r3, [r3]
     f48:	e50b3008 	str	r3, [fp, #-8]
     f4c:	e51b3008 	ldr	r3, [fp, #-8]
     f50:	e5933004 	ldr	r3, [r3, #4]
     f54:	e51b2010 	ldr	r2, [fp, #-16]
     f58:	e1520003 	cmp	r2, r3
     f5c:	8a00001e 	bhi	fdc <malloc+0x108>
     f60:	e51b3008 	ldr	r3, [fp, #-8]
     f64:	e5933004 	ldr	r3, [r3, #4]
     f68:	e51b2010 	ldr	r2, [fp, #-16]
     f6c:	e1520003 	cmp	r2, r3
     f70:	1a000004 	bne	f88 <malloc+0xb4>
     f74:	e51b3008 	ldr	r3, [fp, #-8]
     f78:	e5932000 	ldr	r2, [r3]
     f7c:	e51b300c 	ldr	r3, [fp, #-12]
     f80:	e5832000 	str	r2, [r3]
     f84:	ea00000e 	b	fc4 <malloc+0xf0>
     f88:	e51b3008 	ldr	r3, [fp, #-8]
     f8c:	e5932004 	ldr	r2, [r3, #4]
     f90:	e51b3010 	ldr	r3, [fp, #-16]
     f94:	e0422003 	sub	r2, r2, r3
     f98:	e51b3008 	ldr	r3, [fp, #-8]
     f9c:	e5832004 	str	r2, [r3, #4]
     fa0:	e51b3008 	ldr	r3, [fp, #-8]
     fa4:	e5933004 	ldr	r3, [r3, #4]
     fa8:	e1a03183 	lsl	r3, r3, #3
     fac:	e51b2008 	ldr	r2, [fp, #-8]
     fb0:	e0823003 	add	r3, r2, r3
     fb4:	e50b3008 	str	r3, [fp, #-8]
     fb8:	e51b3008 	ldr	r3, [fp, #-8]
     fbc:	e51b2010 	ldr	r2, [fp, #-16]
     fc0:	e5832004 	str	r2, [r3, #4]
     fc4:	e59f2068 	ldr	r2, [pc, #104]	@ 1034 <malloc+0x160>
     fc8:	e51b300c 	ldr	r3, [fp, #-12]
     fcc:	e5823000 	str	r3, [r2]
     fd0:	e51b3008 	ldr	r3, [fp, #-8]
     fd4:	e2833008 	add	r3, r3, #8
     fd8:	ea000012 	b	1028 <malloc+0x154>
     fdc:	e59f3050 	ldr	r3, [pc, #80]	@ 1034 <malloc+0x160>
     fe0:	e5933000 	ldr	r3, [r3]
     fe4:	e51b2008 	ldr	r2, [fp, #-8]
     fe8:	e1520003 	cmp	r2, r3
     fec:	1a000007 	bne	1010 <malloc+0x13c>
     ff0:	e51b0010 	ldr	r0, [fp, #-16]
     ff4:	ebffff94 	bl	e4c <morecore>
     ff8:	e50b0008 	str	r0, [fp, #-8]
     ffc:	e51b3008 	ldr	r3, [fp, #-8]
    1000:	e3530000 	cmp	r3, #0
    1004:	1a000001 	bne	1010 <malloc+0x13c>
    1008:	e3a03000 	mov	r3, #0
    100c:	ea000005 	b	1028 <malloc+0x154>
    1010:	e51b3008 	ldr	r3, [fp, #-8]
    1014:	e50b300c 	str	r3, [fp, #-12]
    1018:	e51b3008 	ldr	r3, [fp, #-8]
    101c:	e5933000 	ldr	r3, [r3]
    1020:	e50b3008 	str	r3, [fp, #-8]
    1024:	eaffffc8 	b	f4c <malloc+0x78>
    1028:	e1a00003 	mov	r0, r3
    102c:	e24bd004 	sub	sp, fp, #4
    1030:	e8bd8800 	pop	{fp, pc}
    1034:	000011ac 	.word	0x000011ac
    1038:	000011a4 	.word	0x000011a4

0000103c <__udivsi3>:
    103c:	e2512001 	subs	r2, r1, #1
    1040:	012fff1e 	bxeq	lr
    1044:	3a000036 	bcc	1124 <__udivsi3+0xe8>
    1048:	e1500001 	cmp	r0, r1
    104c:	9a000022 	bls	10dc <__udivsi3+0xa0>
    1050:	e1110002 	tst	r1, r2
    1054:	0a000023 	beq	10e8 <__udivsi3+0xac>
    1058:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    105c:	01a01181 	lsleq	r1, r1, #3
    1060:	03a03008 	moveq	r3, #8
    1064:	13a03001 	movne	r3, #1
    1068:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    106c:	31510000 	cmpcc	r1, r0
    1070:	31a01201 	lslcc	r1, r1, #4
    1074:	31a03203 	lslcc	r3, r3, #4
    1078:	3afffffa 	bcc	1068 <__udivsi3+0x2c>
    107c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1080:	31510000 	cmpcc	r1, r0
    1084:	31a01081 	lslcc	r1, r1, #1
    1088:	31a03083 	lslcc	r3, r3, #1
    108c:	3afffffa 	bcc	107c <__udivsi3+0x40>
    1090:	e3a02000 	mov	r2, #0
    1094:	e1500001 	cmp	r0, r1
    1098:	20400001 	subcs	r0, r0, r1
    109c:	21822003 	orrcs	r2, r2, r3
    10a0:	e15000a1 	cmp	r0, r1, lsr #1
    10a4:	204000a1 	subcs	r0, r0, r1, lsr #1
    10a8:	218220a3 	orrcs	r2, r2, r3, lsr #1
    10ac:	e1500121 	cmp	r0, r1, lsr #2
    10b0:	20400121 	subcs	r0, r0, r1, lsr #2
    10b4:	21822123 	orrcs	r2, r2, r3, lsr #2
    10b8:	e15001a1 	cmp	r0, r1, lsr #3
    10bc:	204001a1 	subcs	r0, r0, r1, lsr #3
    10c0:	218221a3 	orrcs	r2, r2, r3, lsr #3
    10c4:	e3500000 	cmp	r0, #0
    10c8:	11b03223 	lsrsne	r3, r3, #4
    10cc:	11a01221 	lsrne	r1, r1, #4
    10d0:	1affffef 	bne	1094 <__udivsi3+0x58>
    10d4:	e1a00002 	mov	r0, r2
    10d8:	e12fff1e 	bx	lr
    10dc:	03a00001 	moveq	r0, #1
    10e0:	13a00000 	movne	r0, #0
    10e4:	e12fff1e 	bx	lr
    10e8:	e3510801 	cmp	r1, #65536	@ 0x10000
    10ec:	21a01821 	lsrcs	r1, r1, #16
    10f0:	23a02010 	movcs	r2, #16
    10f4:	33a02000 	movcc	r2, #0
    10f8:	e3510c01 	cmp	r1, #256	@ 0x100
    10fc:	21a01421 	lsrcs	r1, r1, #8
    1100:	22822008 	addcs	r2, r2, #8
    1104:	e3510010 	cmp	r1, #16
    1108:	21a01221 	lsrcs	r1, r1, #4
    110c:	22822004 	addcs	r2, r2, #4
    1110:	e3510004 	cmp	r1, #4
    1114:	82822003 	addhi	r2, r2, #3
    1118:	908220a1 	addls	r2, r2, r1, lsr #1
    111c:	e1a00230 	lsr	r0, r0, r2
    1120:	e12fff1e 	bx	lr
    1124:	e3500000 	cmp	r0, #0
    1128:	13e00000 	mvnne	r0, #0
    112c:	ea000007 	b	1150 <__aeabi_idiv0>

00001130 <__aeabi_uidivmod>:
    1130:	e3510000 	cmp	r1, #0
    1134:	0afffffa 	beq	1124 <__udivsi3+0xe8>
    1138:	e92d4003 	push	{r0, r1, lr}
    113c:	ebffffbe 	bl	103c <__udivsi3>
    1140:	e8bd4006 	pop	{r1, r2, lr}
    1144:	e0030092 	mul	r3, r2, r0
    1148:	e0411003 	sub	r1, r1, r3
    114c:	e12fff1e 	bx	lr

00001150 <__aeabi_idiv0>:
    1150:	e12fff1e 	bx	lr
