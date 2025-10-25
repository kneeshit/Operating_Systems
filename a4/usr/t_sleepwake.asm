
_t_sleepwake:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	eb000321 	bl	c98 <getChannel>
      10:	e50b0008 	str	r0, [fp, #-8]
      14:	eb0001f6 	bl	7f4 <fork>
      18:	e50b000c 	str	r0, [fp, #-12]
      1c:	e51b300c 	ldr	r3, [fp, #-12]
      20:	e3530000 	cmp	r3, #0
      24:	1a000004 	bne	3c <main+0x3c>
      28:	e3a000c8 	mov	r0, #200	@ 0xc8
      2c:	eb00029b 	bl	aa0 <sleep>
      30:	e51b0008 	ldr	r0, [fp, #-8]
      34:	eb000320 	bl	cbc <sigChan>
      38:	eb0001f6 	bl	818 <exit>
      3c:	e51b2008 	ldr	r2, [fp, #-8]
      40:	e59f1020 	ldr	r1, [pc, #32]	@ 68 <main+0x68>
      44:	e3a00001 	mov	r0, #1
      48:	eb000389 	bl	e74 <printf>
      4c:	e51b0008 	ldr	r0, [fp, #-8]
      50:	eb000307 	bl	c74 <sleepChan>
      54:	e59f1010 	ldr	r1, [pc, #16]	@ 6c <main+0x6c>
      58:	e3a00001 	mov	r0, #1
      5c:	eb000384 	bl	e74 <printf>
      60:	eb0001f5 	bl	83c <wait>
      64:	eb0001eb 	bl	818 <exit>
      68:	00001530 	.word	0x00001530
      6c:	00001550 	.word	0x00001550

00000070 <strcpy>:
      70:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      74:	e28db000 	add	fp, sp, #0
      78:	e24dd014 	sub	sp, sp, #20
      7c:	e50b0010 	str	r0, [fp, #-16]
      80:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      84:	e51b3010 	ldr	r3, [fp, #-16]
      88:	e50b3008 	str	r3, [fp, #-8]
      8c:	e1a00000 	nop			@ (mov r0, r0)
      90:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      94:	e2823001 	add	r3, r2, #1
      98:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      9c:	e51b3010 	ldr	r3, [fp, #-16]
      a0:	e2831001 	add	r1, r3, #1
      a4:	e50b1010 	str	r1, [fp, #-16]
      a8:	e5d22000 	ldrb	r2, [r2]
      ac:	e5c32000 	strb	r2, [r3]
      b0:	e5d33000 	ldrb	r3, [r3]
      b4:	e3530000 	cmp	r3, #0
      b8:	1afffff4 	bne	90 <strcpy+0x20>
      bc:	e51b3008 	ldr	r3, [fp, #-8]
      c0:	e1a00003 	mov	r0, r3
      c4:	e28bd000 	add	sp, fp, #0
      c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      cc:	e12fff1e 	bx	lr

000000d0 <strcmp>:
      d0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      d4:	e28db000 	add	fp, sp, #0
      d8:	e24dd00c 	sub	sp, sp, #12
      dc:	e50b0008 	str	r0, [fp, #-8]
      e0:	e50b100c 	str	r1, [fp, #-12]
      e4:	ea000005 	b	100 <strcmp+0x30>
      e8:	e51b3008 	ldr	r3, [fp, #-8]
      ec:	e2833001 	add	r3, r3, #1
      f0:	e50b3008 	str	r3, [fp, #-8]
      f4:	e51b300c 	ldr	r3, [fp, #-12]
      f8:	e2833001 	add	r3, r3, #1
      fc:	e50b300c 	str	r3, [fp, #-12]
     100:	e51b3008 	ldr	r3, [fp, #-8]
     104:	e5d33000 	ldrb	r3, [r3]
     108:	e3530000 	cmp	r3, #0
     10c:	0a000005 	beq	128 <strcmp+0x58>
     110:	e51b3008 	ldr	r3, [fp, #-8]
     114:	e5d32000 	ldrb	r2, [r3]
     118:	e51b300c 	ldr	r3, [fp, #-12]
     11c:	e5d33000 	ldrb	r3, [r3]
     120:	e1520003 	cmp	r2, r3
     124:	0affffef 	beq	e8 <strcmp+0x18>
     128:	e51b3008 	ldr	r3, [fp, #-8]
     12c:	e5d33000 	ldrb	r3, [r3]
     130:	e1a02003 	mov	r2, r3
     134:	e51b300c 	ldr	r3, [fp, #-12]
     138:	e5d33000 	ldrb	r3, [r3]
     13c:	e0423003 	sub	r3, r2, r3
     140:	e1a00003 	mov	r0, r3
     144:	e28bd000 	add	sp, fp, #0
     148:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     14c:	e12fff1e 	bx	lr

00000150 <strlen>:
     150:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     154:	e28db000 	add	fp, sp, #0
     158:	e24dd014 	sub	sp, sp, #20
     15c:	e50b0010 	str	r0, [fp, #-16]
     160:	e3a03000 	mov	r3, #0
     164:	e50b3008 	str	r3, [fp, #-8]
     168:	ea000002 	b	178 <strlen+0x28>
     16c:	e51b3008 	ldr	r3, [fp, #-8]
     170:	e2833001 	add	r3, r3, #1
     174:	e50b3008 	str	r3, [fp, #-8]
     178:	e51b3008 	ldr	r3, [fp, #-8]
     17c:	e51b2010 	ldr	r2, [fp, #-16]
     180:	e0823003 	add	r3, r2, r3
     184:	e5d33000 	ldrb	r3, [r3]
     188:	e3530000 	cmp	r3, #0
     18c:	1afffff6 	bne	16c <strlen+0x1c>
     190:	e51b3008 	ldr	r3, [fp, #-8]
     194:	e1a00003 	mov	r0, r3
     198:	e28bd000 	add	sp, fp, #0
     19c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1a0:	e12fff1e 	bx	lr

000001a4 <memset>:
     1a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1a8:	e28db000 	add	fp, sp, #0
     1ac:	e24dd024 	sub	sp, sp, #36	@ 0x24
     1b0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     1b4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     1b8:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     1bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     1c0:	e50b3008 	str	r3, [fp, #-8]
     1c4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1c8:	e54b300d 	strb	r3, [fp, #-13]
     1cc:	e55b200d 	ldrb	r2, [fp, #-13]
     1d0:	e1a03002 	mov	r3, r2
     1d4:	e1a03403 	lsl	r3, r3, #8
     1d8:	e0833002 	add	r3, r3, r2
     1dc:	e1a03803 	lsl	r3, r3, #16
     1e0:	e1a02003 	mov	r2, r3
     1e4:	e55b300d 	ldrb	r3, [fp, #-13]
     1e8:	e1a03403 	lsl	r3, r3, #8
     1ec:	e1822003 	orr	r2, r2, r3
     1f0:	e55b300d 	ldrb	r3, [fp, #-13]
     1f4:	e1823003 	orr	r3, r2, r3
     1f8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1fc:	ea000008 	b	224 <memset+0x80>
     200:	e51b3008 	ldr	r3, [fp, #-8]
     204:	e55b200d 	ldrb	r2, [fp, #-13]
     208:	e5c32000 	strb	r2, [r3]
     20c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     210:	e2433001 	sub	r3, r3, #1
     214:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     218:	e51b3008 	ldr	r3, [fp, #-8]
     21c:	e2833001 	add	r3, r3, #1
     220:	e50b3008 	str	r3, [fp, #-8]
     224:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     228:	e3530000 	cmp	r3, #0
     22c:	0a000003 	beq	240 <memset+0x9c>
     230:	e51b3008 	ldr	r3, [fp, #-8]
     234:	e2033003 	and	r3, r3, #3
     238:	e3530000 	cmp	r3, #0
     23c:	1affffef 	bne	200 <memset+0x5c>
     240:	e51b3008 	ldr	r3, [fp, #-8]
     244:	e50b300c 	str	r3, [fp, #-12]
     248:	ea000008 	b	270 <memset+0xcc>
     24c:	e51b300c 	ldr	r3, [fp, #-12]
     250:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     254:	e5832000 	str	r2, [r3]
     258:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     25c:	e2433004 	sub	r3, r3, #4
     260:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     264:	e51b300c 	ldr	r3, [fp, #-12]
     268:	e2833004 	add	r3, r3, #4
     26c:	e50b300c 	str	r3, [fp, #-12]
     270:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     274:	e3530003 	cmp	r3, #3
     278:	8afffff3 	bhi	24c <memset+0xa8>
     27c:	e51b300c 	ldr	r3, [fp, #-12]
     280:	e50b3008 	str	r3, [fp, #-8]
     284:	ea000008 	b	2ac <memset+0x108>
     288:	e51b3008 	ldr	r3, [fp, #-8]
     28c:	e55b200d 	ldrb	r2, [fp, #-13]
     290:	e5c32000 	strb	r2, [r3]
     294:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     298:	e2433001 	sub	r3, r3, #1
     29c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2a0:	e51b3008 	ldr	r3, [fp, #-8]
     2a4:	e2833001 	add	r3, r3, #1
     2a8:	e50b3008 	str	r3, [fp, #-8]
     2ac:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2b0:	e3530000 	cmp	r3, #0
     2b4:	1afffff3 	bne	288 <memset+0xe4>
     2b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2bc:	e1a00003 	mov	r0, r3
     2c0:	e28bd000 	add	sp, fp, #0
     2c4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2c8:	e12fff1e 	bx	lr

000002cc <strchr>:
     2cc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2d0:	e28db000 	add	fp, sp, #0
     2d4:	e24dd00c 	sub	sp, sp, #12
     2d8:	e50b0008 	str	r0, [fp, #-8]
     2dc:	e1a03001 	mov	r3, r1
     2e0:	e54b3009 	strb	r3, [fp, #-9]
     2e4:	ea000009 	b	310 <strchr+0x44>
     2e8:	e51b3008 	ldr	r3, [fp, #-8]
     2ec:	e5d33000 	ldrb	r3, [r3]
     2f0:	e55b2009 	ldrb	r2, [fp, #-9]
     2f4:	e1520003 	cmp	r2, r3
     2f8:	1a000001 	bne	304 <strchr+0x38>
     2fc:	e51b3008 	ldr	r3, [fp, #-8]
     300:	ea000007 	b	324 <strchr+0x58>
     304:	e51b3008 	ldr	r3, [fp, #-8]
     308:	e2833001 	add	r3, r3, #1
     30c:	e50b3008 	str	r3, [fp, #-8]
     310:	e51b3008 	ldr	r3, [fp, #-8]
     314:	e5d33000 	ldrb	r3, [r3]
     318:	e3530000 	cmp	r3, #0
     31c:	1afffff1 	bne	2e8 <strchr+0x1c>
     320:	e3a03000 	mov	r3, #0
     324:	e1a00003 	mov	r0, r3
     328:	e28bd000 	add	sp, fp, #0
     32c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     330:	e12fff1e 	bx	lr

00000334 <gets>:
     334:	e92d4800 	push	{fp, lr}
     338:	e28db004 	add	fp, sp, #4
     33c:	e24dd018 	sub	sp, sp, #24
     340:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     344:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     348:	e3a03000 	mov	r3, #0
     34c:	e50b3008 	str	r3, [fp, #-8]
     350:	ea000016 	b	3b0 <gets+0x7c>
     354:	e24b300d 	sub	r3, fp, #13
     358:	e3a02001 	mov	r2, #1
     35c:	e1a01003 	mov	r1, r3
     360:	e3a00000 	mov	r0, #0
     364:	eb000146 	bl	884 <read>
     368:	e50b000c 	str	r0, [fp, #-12]
     36c:	e51b300c 	ldr	r3, [fp, #-12]
     370:	e3530000 	cmp	r3, #0
     374:	da000013 	ble	3c8 <gets+0x94>
     378:	e51b3008 	ldr	r3, [fp, #-8]
     37c:	e2832001 	add	r2, r3, #1
     380:	e50b2008 	str	r2, [fp, #-8]
     384:	e1a02003 	mov	r2, r3
     388:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     38c:	e0833002 	add	r3, r3, r2
     390:	e55b200d 	ldrb	r2, [fp, #-13]
     394:	e5c32000 	strb	r2, [r3]
     398:	e55b300d 	ldrb	r3, [fp, #-13]
     39c:	e353000a 	cmp	r3, #10
     3a0:	0a000009 	beq	3cc <gets+0x98>
     3a4:	e55b300d 	ldrb	r3, [fp, #-13]
     3a8:	e353000d 	cmp	r3, #13
     3ac:	0a000006 	beq	3cc <gets+0x98>
     3b0:	e51b3008 	ldr	r3, [fp, #-8]
     3b4:	e2833001 	add	r3, r3, #1
     3b8:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     3bc:	e1520003 	cmp	r2, r3
     3c0:	caffffe3 	bgt	354 <gets+0x20>
     3c4:	ea000000 	b	3cc <gets+0x98>
     3c8:	e1a00000 	nop			@ (mov r0, r0)
     3cc:	e51b3008 	ldr	r3, [fp, #-8]
     3d0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     3d4:	e0823003 	add	r3, r2, r3
     3d8:	e3a02000 	mov	r2, #0
     3dc:	e5c32000 	strb	r2, [r3]
     3e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3e4:	e1a00003 	mov	r0, r3
     3e8:	e24bd004 	sub	sp, fp, #4
     3ec:	e8bd8800 	pop	{fp, pc}

000003f0 <stat>:
     3f0:	e92d4800 	push	{fp, lr}
     3f4:	e28db004 	add	fp, sp, #4
     3f8:	e24dd010 	sub	sp, sp, #16
     3fc:	e50b0010 	str	r0, [fp, #-16]
     400:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     404:	e3a01000 	mov	r1, #0
     408:	e51b0010 	ldr	r0, [fp, #-16]
     40c:	eb000149 	bl	938 <open>
     410:	e50b0008 	str	r0, [fp, #-8]
     414:	e51b3008 	ldr	r3, [fp, #-8]
     418:	e3530000 	cmp	r3, #0
     41c:	aa000001 	bge	428 <stat+0x38>
     420:	e3e03000 	mvn	r3, #0
     424:	ea000006 	b	444 <stat+0x54>
     428:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     42c:	e51b0008 	ldr	r0, [fp, #-8]
     430:	eb00015b 	bl	9a4 <fstat>
     434:	e50b000c 	str	r0, [fp, #-12]
     438:	e51b0008 	ldr	r0, [fp, #-8]
     43c:	eb000122 	bl	8cc <close>
     440:	e51b300c 	ldr	r3, [fp, #-12]
     444:	e1a00003 	mov	r0, r3
     448:	e24bd004 	sub	sp, fp, #4
     44c:	e8bd8800 	pop	{fp, pc}

00000450 <atoi>:
     450:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     454:	e28db000 	add	fp, sp, #0
     458:	e24dd014 	sub	sp, sp, #20
     45c:	e50b0010 	str	r0, [fp, #-16]
     460:	e3a03000 	mov	r3, #0
     464:	e50b3008 	str	r3, [fp, #-8]
     468:	ea00000c 	b	4a0 <atoi+0x50>
     46c:	e51b2008 	ldr	r2, [fp, #-8]
     470:	e1a03002 	mov	r3, r2
     474:	e1a03103 	lsl	r3, r3, #2
     478:	e0833002 	add	r3, r3, r2
     47c:	e1a03083 	lsl	r3, r3, #1
     480:	e1a01003 	mov	r1, r3
     484:	e51b3010 	ldr	r3, [fp, #-16]
     488:	e2832001 	add	r2, r3, #1
     48c:	e50b2010 	str	r2, [fp, #-16]
     490:	e5d33000 	ldrb	r3, [r3]
     494:	e0813003 	add	r3, r1, r3
     498:	e2433030 	sub	r3, r3, #48	@ 0x30
     49c:	e50b3008 	str	r3, [fp, #-8]
     4a0:	e51b3010 	ldr	r3, [fp, #-16]
     4a4:	e5d33000 	ldrb	r3, [r3]
     4a8:	e353002f 	cmp	r3, #47	@ 0x2f
     4ac:	9a000003 	bls	4c0 <atoi+0x70>
     4b0:	e51b3010 	ldr	r3, [fp, #-16]
     4b4:	e5d33000 	ldrb	r3, [r3]
     4b8:	e3530039 	cmp	r3, #57	@ 0x39
     4bc:	9affffea 	bls	46c <atoi+0x1c>
     4c0:	e51b3010 	ldr	r3, [fp, #-16]
     4c4:	e5d33000 	ldrb	r3, [r3]
     4c8:	e3530000 	cmp	r3, #0
     4cc:	1a000001 	bne	4d8 <atoi+0x88>
     4d0:	e51b3008 	ldr	r3, [fp, #-8]
     4d4:	ea000000 	b	4dc <atoi+0x8c>
     4d8:	e3e03000 	mvn	r3, #0
     4dc:	e1a00003 	mov	r0, r3
     4e0:	e28bd000 	add	sp, fp, #0
     4e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4e8:	e12fff1e 	bx	lr

000004ec <memmove>:
     4ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4f0:	e28db000 	add	fp, sp, #0
     4f4:	e24dd01c 	sub	sp, sp, #28
     4f8:	e50b0010 	str	r0, [fp, #-16]
     4fc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     500:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     504:	e51b3010 	ldr	r3, [fp, #-16]
     508:	e50b3008 	str	r3, [fp, #-8]
     50c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     510:	e50b300c 	str	r3, [fp, #-12]
     514:	ea000007 	b	538 <memmove+0x4c>
     518:	e51b200c 	ldr	r2, [fp, #-12]
     51c:	e2823001 	add	r3, r2, #1
     520:	e50b300c 	str	r3, [fp, #-12]
     524:	e51b3008 	ldr	r3, [fp, #-8]
     528:	e2831001 	add	r1, r3, #1
     52c:	e50b1008 	str	r1, [fp, #-8]
     530:	e5d22000 	ldrb	r2, [r2]
     534:	e5c32000 	strb	r2, [r3]
     538:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     53c:	e2432001 	sub	r2, r3, #1
     540:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     544:	e3530000 	cmp	r3, #0
     548:	cafffff2 	bgt	518 <memmove+0x2c>
     54c:	e51b3010 	ldr	r3, [fp, #-16]
     550:	e1a00003 	mov	r0, r3
     554:	e28bd000 	add	sp, fp, #0
     558:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     55c:	e12fff1e 	bx	lr

00000560 <initiateLock>:
     560:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     564:	e28db000 	add	fp, sp, #0
     568:	e24dd00c 	sub	sp, sp, #12
     56c:	e50b0008 	str	r0, [fp, #-8]
     570:	e51b3008 	ldr	r3, [fp, #-8]
     574:	e3a02000 	mov	r2, #0
     578:	e5832000 	str	r2, [r3]
     57c:	e51b3008 	ldr	r3, [fp, #-8]
     580:	e3a02001 	mov	r2, #1
     584:	e5832004 	str	r2, [r3, #4]
     588:	e1a00000 	nop			@ (mov r0, r0)
     58c:	e28bd000 	add	sp, fp, #0
     590:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     594:	e12fff1e 	bx	lr

00000598 <acquireLock>:
     598:	e92d4800 	push	{fp, lr}
     59c:	e28db004 	add	fp, sp, #4
     5a0:	e24dd008 	sub	sp, sp, #8
     5a4:	e50b0008 	str	r0, [fp, #-8]
     5a8:	ea000001 	b	5b4 <acquireLock+0x1c>
     5ac:	e3a00001 	mov	r0, #1
     5b0:	eb00013a 	bl	aa0 <sleep>
     5b4:	e51b2008 	ldr	r2, [fp, #-8]
     5b8:	e3a01001 	mov	r1, #1
     5bc:	e1923f9f 	ldrex	r3, [r2]
     5c0:	e1820f91 	strex	r0, r1, [r2]
     5c4:	e3500000 	cmp	r0, #0
     5c8:	1afffffb 	bne	5bc <acquireLock+0x24>
     5cc:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     5d0:	e3530001 	cmp	r3, #1
     5d4:	0afffff4 	beq	5ac <acquireLock+0x14>
     5d8:	e1a00000 	nop			@ (mov r0, r0)
     5dc:	e1a00000 	nop			@ (mov r0, r0)
     5e0:	e24bd004 	sub	sp, fp, #4
     5e4:	e8bd8800 	pop	{fp, pc}

000005e8 <releaseLock>:
     5e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5ec:	e28db000 	add	fp, sp, #0
     5f0:	e24dd00c 	sub	sp, sp, #12
     5f4:	e50b0008 	str	r0, [fp, #-8]
     5f8:	e51b3008 	ldr	r3, [fp, #-8]
     5fc:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     600:	e3a02000 	mov	r2, #0
     604:	e5832000 	str	r2, [r3]
     608:	e1a00000 	nop			@ (mov r0, r0)
     60c:	e28bd000 	add	sp, fp, #0
     610:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     614:	e12fff1e 	bx	lr

00000618 <initiateCondVar>:
     618:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     61c:	e28db000 	add	fp, sp, #0
     620:	e24dd00c 	sub	sp, sp, #12
     624:	e50b0008 	str	r0, [fp, #-8]
     628:	e51b3008 	ldr	r3, [fp, #-8]
     62c:	e3a02000 	mov	r2, #0
     630:	e5832000 	str	r2, [r3]
     634:	e51b3008 	ldr	r3, [fp, #-8]
     638:	e3a02001 	mov	r2, #1
     63c:	e5832004 	str	r2, [r3, #4]
     640:	e1a00000 	nop			@ (mov r0, r0)
     644:	e28bd000 	add	sp, fp, #0
     648:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     64c:	e12fff1e 	bx	lr

00000650 <condWait>:
     650:	e92d4800 	push	{fp, lr}
     654:	e28db004 	add	fp, sp, #4
     658:	e24dd008 	sub	sp, sp, #8
     65c:	e50b0008 	str	r0, [fp, #-8]
     660:	e50b100c 	str	r1, [fp, #-12]
     664:	e51b000c 	ldr	r0, [fp, #-12]
     668:	ebffffde 	bl	5e8 <releaseLock>
     66c:	e51b3008 	ldr	r3, [fp, #-8]
     670:	e5933000 	ldr	r3, [r3]
     674:	e1a00003 	mov	r0, r3
     678:	eb00017d 	bl	c74 <sleepChan>
     67c:	e51b000c 	ldr	r0, [fp, #-12]
     680:	ebffffc4 	bl	598 <acquireLock>
     684:	e1a00000 	nop			@ (mov r0, r0)
     688:	e24bd004 	sub	sp, fp, #4
     68c:	e8bd8800 	pop	{fp, pc}

00000690 <broadcast>:
     690:	e92d4800 	push	{fp, lr}
     694:	e28db004 	add	fp, sp, #4
     698:	e24dd008 	sub	sp, sp, #8
     69c:	e50b0008 	str	r0, [fp, #-8]
     6a0:	e51b3008 	ldr	r3, [fp, #-8]
     6a4:	e5933000 	ldr	r3, [r3]
     6a8:	e1a00003 	mov	r0, r3
     6ac:	eb000182 	bl	cbc <sigChan>
     6b0:	e1a00000 	nop			@ (mov r0, r0)
     6b4:	e24bd004 	sub	sp, fp, #4
     6b8:	e8bd8800 	pop	{fp, pc}

000006bc <semInit>:
     6bc:	e92d4800 	push	{fp, lr}
     6c0:	e28db004 	add	fp, sp, #4
     6c4:	e24dd008 	sub	sp, sp, #8
     6c8:	e50b0008 	str	r0, [fp, #-8]
     6cc:	e50b100c 	str	r1, [fp, #-12]
     6d0:	e51b3008 	ldr	r3, [fp, #-8]
     6d4:	e51b200c 	ldr	r2, [fp, #-12]
     6d8:	e5832000 	str	r2, [r3]
     6dc:	e51b3008 	ldr	r3, [fp, #-8]
     6e0:	e2833004 	add	r3, r3, #4
     6e4:	e1a00003 	mov	r0, r3
     6e8:	ebffff9c 	bl	560 <initiateLock>
     6ec:	e51b3008 	ldr	r3, [fp, #-8]
     6f0:	e283300c 	add	r3, r3, #12
     6f4:	e1a00003 	mov	r0, r3
     6f8:	ebffffc6 	bl	618 <initiateCondVar>
     6fc:	e51b3008 	ldr	r3, [fp, #-8]
     700:	e3a02001 	mov	r2, #1
     704:	e5832014 	str	r2, [r3, #20]
     708:	e1a00000 	nop			@ (mov r0, r0)
     70c:	e24bd004 	sub	sp, fp, #4
     710:	e8bd8800 	pop	{fp, pc}

00000714 <semUp>:
     714:	e92d4800 	push	{fp, lr}
     718:	e28db004 	add	fp, sp, #4
     71c:	e24dd008 	sub	sp, sp, #8
     720:	e50b0008 	str	r0, [fp, #-8]
     724:	e51b3008 	ldr	r3, [fp, #-8]
     728:	e2833004 	add	r3, r3, #4
     72c:	e1a00003 	mov	r0, r3
     730:	ebffff98 	bl	598 <acquireLock>
     734:	e51b3008 	ldr	r3, [fp, #-8]
     738:	e5933000 	ldr	r3, [r3]
     73c:	e2832001 	add	r2, r3, #1
     740:	e51b3008 	ldr	r3, [fp, #-8]
     744:	e5832000 	str	r2, [r3]
     748:	e51b3008 	ldr	r3, [fp, #-8]
     74c:	e283300c 	add	r3, r3, #12
     750:	e1a00003 	mov	r0, r3
     754:	ebffffcd 	bl	690 <broadcast>
     758:	e51b3008 	ldr	r3, [fp, #-8]
     75c:	e2833004 	add	r3, r3, #4
     760:	e1a00003 	mov	r0, r3
     764:	ebffff9f 	bl	5e8 <releaseLock>
     768:	e1a00000 	nop			@ (mov r0, r0)
     76c:	e24bd004 	sub	sp, fp, #4
     770:	e8bd8800 	pop	{fp, pc}

00000774 <semDown>:
     774:	e92d4800 	push	{fp, lr}
     778:	e28db004 	add	fp, sp, #4
     77c:	e24dd008 	sub	sp, sp, #8
     780:	e50b0008 	str	r0, [fp, #-8]
     784:	e51b3008 	ldr	r3, [fp, #-8]
     788:	e2833004 	add	r3, r3, #4
     78c:	e1a00003 	mov	r0, r3
     790:	ebffff80 	bl	598 <acquireLock>
     794:	ea000006 	b	7b4 <semDown+0x40>
     798:	e51b3008 	ldr	r3, [fp, #-8]
     79c:	e283200c 	add	r2, r3, #12
     7a0:	e51b3008 	ldr	r3, [fp, #-8]
     7a4:	e2833004 	add	r3, r3, #4
     7a8:	e1a01003 	mov	r1, r3
     7ac:	e1a00002 	mov	r0, r2
     7b0:	ebffffa6 	bl	650 <condWait>
     7b4:	e51b3008 	ldr	r3, [fp, #-8]
     7b8:	e5933000 	ldr	r3, [r3]
     7bc:	e3530000 	cmp	r3, #0
     7c0:	dafffff4 	ble	798 <semDown+0x24>
     7c4:	e51b3008 	ldr	r3, [fp, #-8]
     7c8:	e5933000 	ldr	r3, [r3]
     7cc:	e2432001 	sub	r2, r3, #1
     7d0:	e51b3008 	ldr	r3, [fp, #-8]
     7d4:	e5832000 	str	r2, [r3]
     7d8:	e51b3008 	ldr	r3, [fp, #-8]
     7dc:	e2833004 	add	r3, r3, #4
     7e0:	e1a00003 	mov	r0, r3
     7e4:	ebffff7f 	bl	5e8 <releaseLock>
     7e8:	e1a00000 	nop			@ (mov r0, r0)
     7ec:	e24bd004 	sub	sp, fp, #4
     7f0:	e8bd8800 	pop	{fp, pc}

000007f4 <fork>:
     7f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f8:	e1a04003 	mov	r4, r3
     7fc:	e1a03002 	mov	r3, r2
     800:	e1a02001 	mov	r2, r1
     804:	e1a01000 	mov	r1, r0
     808:	e3a00001 	mov	r0, #1
     80c:	ef000000 	svc	0x00000000
     810:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     814:	e12fff1e 	bx	lr

00000818 <exit>:
     818:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     81c:	e1a04003 	mov	r4, r3
     820:	e1a03002 	mov	r3, r2
     824:	e1a02001 	mov	r2, r1
     828:	e1a01000 	mov	r1, r0
     82c:	e3a00002 	mov	r0, #2
     830:	ef000000 	svc	0x00000000
     834:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     838:	e12fff1e 	bx	lr

0000083c <wait>:
     83c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     840:	e1a04003 	mov	r4, r3
     844:	e1a03002 	mov	r3, r2
     848:	e1a02001 	mov	r2, r1
     84c:	e1a01000 	mov	r1, r0
     850:	e3a00003 	mov	r0, #3
     854:	ef000000 	svc	0x00000000
     858:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     85c:	e12fff1e 	bx	lr

00000860 <pipe>:
     860:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     864:	e1a04003 	mov	r4, r3
     868:	e1a03002 	mov	r3, r2
     86c:	e1a02001 	mov	r2, r1
     870:	e1a01000 	mov	r1, r0
     874:	e3a00004 	mov	r0, #4
     878:	ef000000 	svc	0x00000000
     87c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     880:	e12fff1e 	bx	lr

00000884 <read>:
     884:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     888:	e1a04003 	mov	r4, r3
     88c:	e1a03002 	mov	r3, r2
     890:	e1a02001 	mov	r2, r1
     894:	e1a01000 	mov	r1, r0
     898:	e3a00005 	mov	r0, #5
     89c:	ef000000 	svc	0x00000000
     8a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a4:	e12fff1e 	bx	lr

000008a8 <write>:
     8a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8ac:	e1a04003 	mov	r4, r3
     8b0:	e1a03002 	mov	r3, r2
     8b4:	e1a02001 	mov	r2, r1
     8b8:	e1a01000 	mov	r1, r0
     8bc:	e3a00010 	mov	r0, #16
     8c0:	ef000000 	svc	0x00000000
     8c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c8:	e12fff1e 	bx	lr

000008cc <close>:
     8cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8d0:	e1a04003 	mov	r4, r3
     8d4:	e1a03002 	mov	r3, r2
     8d8:	e1a02001 	mov	r2, r1
     8dc:	e1a01000 	mov	r1, r0
     8e0:	e3a00015 	mov	r0, #21
     8e4:	ef000000 	svc	0x00000000
     8e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8ec:	e12fff1e 	bx	lr

000008f0 <kill>:
     8f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8f4:	e1a04003 	mov	r4, r3
     8f8:	e1a03002 	mov	r3, r2
     8fc:	e1a02001 	mov	r2, r1
     900:	e1a01000 	mov	r1, r0
     904:	e3a00006 	mov	r0, #6
     908:	ef000000 	svc	0x00000000
     90c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     910:	e12fff1e 	bx	lr

00000914 <exec>:
     914:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     918:	e1a04003 	mov	r4, r3
     91c:	e1a03002 	mov	r3, r2
     920:	e1a02001 	mov	r2, r1
     924:	e1a01000 	mov	r1, r0
     928:	e3a00007 	mov	r0, #7
     92c:	ef000000 	svc	0x00000000
     930:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     934:	e12fff1e 	bx	lr

00000938 <open>:
     938:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     93c:	e1a04003 	mov	r4, r3
     940:	e1a03002 	mov	r3, r2
     944:	e1a02001 	mov	r2, r1
     948:	e1a01000 	mov	r1, r0
     94c:	e3a0000f 	mov	r0, #15
     950:	ef000000 	svc	0x00000000
     954:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     958:	e12fff1e 	bx	lr

0000095c <mknod>:
     95c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     960:	e1a04003 	mov	r4, r3
     964:	e1a03002 	mov	r3, r2
     968:	e1a02001 	mov	r2, r1
     96c:	e1a01000 	mov	r1, r0
     970:	e3a00011 	mov	r0, #17
     974:	ef000000 	svc	0x00000000
     978:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     97c:	e12fff1e 	bx	lr

00000980 <unlink>:
     980:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     984:	e1a04003 	mov	r4, r3
     988:	e1a03002 	mov	r3, r2
     98c:	e1a02001 	mov	r2, r1
     990:	e1a01000 	mov	r1, r0
     994:	e3a00012 	mov	r0, #18
     998:	ef000000 	svc	0x00000000
     99c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a0:	e12fff1e 	bx	lr

000009a4 <fstat>:
     9a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a8:	e1a04003 	mov	r4, r3
     9ac:	e1a03002 	mov	r3, r2
     9b0:	e1a02001 	mov	r2, r1
     9b4:	e1a01000 	mov	r1, r0
     9b8:	e3a00008 	mov	r0, #8
     9bc:	ef000000 	svc	0x00000000
     9c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c4:	e12fff1e 	bx	lr

000009c8 <link>:
     9c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9cc:	e1a04003 	mov	r4, r3
     9d0:	e1a03002 	mov	r3, r2
     9d4:	e1a02001 	mov	r2, r1
     9d8:	e1a01000 	mov	r1, r0
     9dc:	e3a00013 	mov	r0, #19
     9e0:	ef000000 	svc	0x00000000
     9e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e8:	e12fff1e 	bx	lr

000009ec <mkdir>:
     9ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f0:	e1a04003 	mov	r4, r3
     9f4:	e1a03002 	mov	r3, r2
     9f8:	e1a02001 	mov	r2, r1
     9fc:	e1a01000 	mov	r1, r0
     a00:	e3a00014 	mov	r0, #20
     a04:	ef000000 	svc	0x00000000
     a08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a0c:	e12fff1e 	bx	lr

00000a10 <chdir>:
     a10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a14:	e1a04003 	mov	r4, r3
     a18:	e1a03002 	mov	r3, r2
     a1c:	e1a02001 	mov	r2, r1
     a20:	e1a01000 	mov	r1, r0
     a24:	e3a00009 	mov	r0, #9
     a28:	ef000000 	svc	0x00000000
     a2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a30:	e12fff1e 	bx	lr

00000a34 <dup>:
     a34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a38:	e1a04003 	mov	r4, r3
     a3c:	e1a03002 	mov	r3, r2
     a40:	e1a02001 	mov	r2, r1
     a44:	e1a01000 	mov	r1, r0
     a48:	e3a0000a 	mov	r0, #10
     a4c:	ef000000 	svc	0x00000000
     a50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a54:	e12fff1e 	bx	lr

00000a58 <getpid>:
     a58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a5c:	e1a04003 	mov	r4, r3
     a60:	e1a03002 	mov	r3, r2
     a64:	e1a02001 	mov	r2, r1
     a68:	e1a01000 	mov	r1, r0
     a6c:	e3a0000b 	mov	r0, #11
     a70:	ef000000 	svc	0x00000000
     a74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a78:	e12fff1e 	bx	lr

00000a7c <sbrk>:
     a7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a80:	e1a04003 	mov	r4, r3
     a84:	e1a03002 	mov	r3, r2
     a88:	e1a02001 	mov	r2, r1
     a8c:	e1a01000 	mov	r1, r0
     a90:	e3a0000c 	mov	r0, #12
     a94:	ef000000 	svc	0x00000000
     a98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a9c:	e12fff1e 	bx	lr

00000aa0 <sleep>:
     aa0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa4:	e1a04003 	mov	r4, r3
     aa8:	e1a03002 	mov	r3, r2
     aac:	e1a02001 	mov	r2, r1
     ab0:	e1a01000 	mov	r1, r0
     ab4:	e3a0000d 	mov	r0, #13
     ab8:	ef000000 	svc	0x00000000
     abc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac0:	e12fff1e 	bx	lr

00000ac4 <uptime>:
     ac4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac8:	e1a04003 	mov	r4, r3
     acc:	e1a03002 	mov	r3, r2
     ad0:	e1a02001 	mov	r2, r1
     ad4:	e1a01000 	mov	r1, r0
     ad8:	e3a0000e 	mov	r0, #14
     adc:	ef000000 	svc	0x00000000
     ae0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae4:	e12fff1e 	bx	lr

00000ae8 <getprocs>:
     ae8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aec:	e1a04003 	mov	r4, r3
     af0:	e1a03002 	mov	r3, r2
     af4:	e1a02001 	mov	r2, r1
     af8:	e1a01000 	mov	r1, r0
     afc:	e3a00016 	mov	r0, #22
     b00:	ef000000 	svc	0x00000000
     b04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b08:	e12fff1e 	bx	lr

00000b0c <settickets>:
     b0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b10:	e1a04003 	mov	r4, r3
     b14:	e1a03002 	mov	r3, r2
     b18:	e1a02001 	mov	r2, r1
     b1c:	e1a01000 	mov	r1, r0
     b20:	e3a00017 	mov	r0, #23
     b24:	ef000000 	svc	0x00000000
     b28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b2c:	e12fff1e 	bx	lr

00000b30 <srand>:
     b30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b34:	e1a04003 	mov	r4, r3
     b38:	e1a03002 	mov	r3, r2
     b3c:	e1a02001 	mov	r2, r1
     b40:	e1a01000 	mov	r1, r0
     b44:	e3a00018 	mov	r0, #24
     b48:	ef000000 	svc	0x00000000
     b4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b50:	e12fff1e 	bx	lr

00000b54 <getpinfo>:
     b54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b58:	e1a04003 	mov	r4, r3
     b5c:	e1a03002 	mov	r3, r2
     b60:	e1a02001 	mov	r2, r1
     b64:	e1a01000 	mov	r1, r0
     b68:	e3a00019 	mov	r0, #25
     b6c:	ef000000 	svc	0x00000000
     b70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b74:	e12fff1e 	bx	lr

00000b78 <dumppagetable>:
     b78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b7c:	e1a04003 	mov	r4, r3
     b80:	e1a03002 	mov	r3, r2
     b84:	e1a02001 	mov	r2, r1
     b88:	e1a01000 	mov	r1, r0
     b8c:	e3a0001a 	mov	r0, #26
     b90:	ef000000 	svc	0x00000000
     b94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b98:	e12fff1e 	bx	lr

00000b9c <thread_create>:
     b9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba0:	e1a04003 	mov	r4, r3
     ba4:	e1a03002 	mov	r3, r2
     ba8:	e1a02001 	mov	r2, r1
     bac:	e1a01000 	mov	r1, r0
     bb0:	e3a0001b 	mov	r0, #27
     bb4:	ef000000 	svc	0x00000000
     bb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bbc:	e12fff1e 	bx	lr

00000bc0 <thread_exit>:
     bc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc4:	e1a04003 	mov	r4, r3
     bc8:	e1a03002 	mov	r3, r2
     bcc:	e1a02001 	mov	r2, r1
     bd0:	e1a01000 	mov	r1, r0
     bd4:	e3a0001c 	mov	r0, #28
     bd8:	ef000000 	svc	0x00000000
     bdc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be0:	e12fff1e 	bx	lr

00000be4 <thread_join>:
     be4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be8:	e1a04003 	mov	r4, r3
     bec:	e1a03002 	mov	r3, r2
     bf0:	e1a02001 	mov	r2, r1
     bf4:	e1a01000 	mov	r1, r0
     bf8:	e3a0001d 	mov	r0, #29
     bfc:	ef000000 	svc	0x00000000
     c00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c04:	e12fff1e 	bx	lr

00000c08 <waitpid>:
     c08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c0c:	e1a04003 	mov	r4, r3
     c10:	e1a03002 	mov	r3, r2
     c14:	e1a02001 	mov	r2, r1
     c18:	e1a01000 	mov	r1, r0
     c1c:	e3a0001e 	mov	r0, #30
     c20:	ef000000 	svc	0x00000000
     c24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c28:	e12fff1e 	bx	lr

00000c2c <barrier_init>:
     c2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c30:	e1a04003 	mov	r4, r3
     c34:	e1a03002 	mov	r3, r2
     c38:	e1a02001 	mov	r2, r1
     c3c:	e1a01000 	mov	r1, r0
     c40:	e3a0001f 	mov	r0, #31
     c44:	ef000000 	svc	0x00000000
     c48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c4c:	e12fff1e 	bx	lr

00000c50 <barrier_check>:
     c50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c54:	e1a04003 	mov	r4, r3
     c58:	e1a03002 	mov	r3, r2
     c5c:	e1a02001 	mov	r2, r1
     c60:	e1a01000 	mov	r1, r0
     c64:	e3a00020 	mov	r0, #32
     c68:	ef000000 	svc	0x00000000
     c6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c70:	e12fff1e 	bx	lr

00000c74 <sleepChan>:
     c74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c78:	e1a04003 	mov	r4, r3
     c7c:	e1a03002 	mov	r3, r2
     c80:	e1a02001 	mov	r2, r1
     c84:	e1a01000 	mov	r1, r0
     c88:	e3a00024 	mov	r0, #36	@ 0x24
     c8c:	ef000000 	svc	0x00000000
     c90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c94:	e12fff1e 	bx	lr

00000c98 <getChannel>:
     c98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c9c:	e1a04003 	mov	r4, r3
     ca0:	e1a03002 	mov	r3, r2
     ca4:	e1a02001 	mov	r2, r1
     ca8:	e1a01000 	mov	r1, r0
     cac:	e3a00025 	mov	r0, #37	@ 0x25
     cb0:	ef000000 	svc	0x00000000
     cb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb8:	e12fff1e 	bx	lr

00000cbc <sigChan>:
     cbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc0:	e1a04003 	mov	r4, r3
     cc4:	e1a03002 	mov	r3, r2
     cc8:	e1a02001 	mov	r2, r1
     ccc:	e1a01000 	mov	r1, r0
     cd0:	e3a00026 	mov	r0, #38	@ 0x26
     cd4:	ef000000 	svc	0x00000000
     cd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cdc:	e12fff1e 	bx	lr

00000ce0 <sigOneChan>:
     ce0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce4:	e1a04003 	mov	r4, r3
     ce8:	e1a03002 	mov	r3, r2
     cec:	e1a02001 	mov	r2, r1
     cf0:	e1a01000 	mov	r1, r0
     cf4:	e3a00027 	mov	r0, #39	@ 0x27
     cf8:	ef000000 	svc	0x00000000
     cfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d00:	e12fff1e 	bx	lr

00000d04 <putc>:
     d04:	e92d4800 	push	{fp, lr}
     d08:	e28db004 	add	fp, sp, #4
     d0c:	e24dd008 	sub	sp, sp, #8
     d10:	e50b0008 	str	r0, [fp, #-8]
     d14:	e1a03001 	mov	r3, r1
     d18:	e54b3009 	strb	r3, [fp, #-9]
     d1c:	e24b3009 	sub	r3, fp, #9
     d20:	e3a02001 	mov	r2, #1
     d24:	e1a01003 	mov	r1, r3
     d28:	e51b0008 	ldr	r0, [fp, #-8]
     d2c:	ebfffedd 	bl	8a8 <write>
     d30:	e1a00000 	nop			@ (mov r0, r0)
     d34:	e24bd004 	sub	sp, fp, #4
     d38:	e8bd8800 	pop	{fp, pc}

00000d3c <printint>:
     d3c:	e92d4800 	push	{fp, lr}
     d40:	e28db004 	add	fp, sp, #4
     d44:	e24dd030 	sub	sp, sp, #48	@ 0x30
     d48:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     d4c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     d50:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     d54:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     d58:	e3a03000 	mov	r3, #0
     d5c:	e50b300c 	str	r3, [fp, #-12]
     d60:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     d64:	e3530000 	cmp	r3, #0
     d68:	0a000008 	beq	d90 <printint+0x54>
     d6c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d70:	e3530000 	cmp	r3, #0
     d74:	aa000005 	bge	d90 <printint+0x54>
     d78:	e3a03001 	mov	r3, #1
     d7c:	e50b300c 	str	r3, [fp, #-12]
     d80:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d84:	e2633000 	rsb	r3, r3, #0
     d88:	e50b3010 	str	r3, [fp, #-16]
     d8c:	ea000001 	b	d98 <printint+0x5c>
     d90:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d94:	e50b3010 	str	r3, [fp, #-16]
     d98:	e3a03000 	mov	r3, #0
     d9c:	e50b3008 	str	r3, [fp, #-8]
     da0:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     da4:	e51b3010 	ldr	r3, [fp, #-16]
     da8:	e1a01002 	mov	r1, r2
     dac:	e1a00003 	mov	r0, r3
     db0:	eb0001d5 	bl	150c <__aeabi_uidivmod>
     db4:	e1a03001 	mov	r3, r1
     db8:	e1a01003 	mov	r1, r3
     dbc:	e51b3008 	ldr	r3, [fp, #-8]
     dc0:	e2832001 	add	r2, r3, #1
     dc4:	e50b2008 	str	r2, [fp, #-8]
     dc8:	e59f20a0 	ldr	r2, [pc, #160]	@ e70 <printint+0x134>
     dcc:	e7d22001 	ldrb	r2, [r2, r1]
     dd0:	e2433004 	sub	r3, r3, #4
     dd4:	e083300b 	add	r3, r3, fp
     dd8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ddc:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     de0:	e1a01003 	mov	r1, r3
     de4:	e51b0010 	ldr	r0, [fp, #-16]
     de8:	eb00018a 	bl	1418 <__udivsi3>
     dec:	e1a03000 	mov	r3, r0
     df0:	e50b3010 	str	r3, [fp, #-16]
     df4:	e51b3010 	ldr	r3, [fp, #-16]
     df8:	e3530000 	cmp	r3, #0
     dfc:	1affffe7 	bne	da0 <printint+0x64>
     e00:	e51b300c 	ldr	r3, [fp, #-12]
     e04:	e3530000 	cmp	r3, #0
     e08:	0a00000e 	beq	e48 <printint+0x10c>
     e0c:	e51b3008 	ldr	r3, [fp, #-8]
     e10:	e2832001 	add	r2, r3, #1
     e14:	e50b2008 	str	r2, [fp, #-8]
     e18:	e2433004 	sub	r3, r3, #4
     e1c:	e083300b 	add	r3, r3, fp
     e20:	e3a0202d 	mov	r2, #45	@ 0x2d
     e24:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     e28:	ea000006 	b	e48 <printint+0x10c>
     e2c:	e24b2020 	sub	r2, fp, #32
     e30:	e51b3008 	ldr	r3, [fp, #-8]
     e34:	e0823003 	add	r3, r2, r3
     e38:	e5d33000 	ldrb	r3, [r3]
     e3c:	e1a01003 	mov	r1, r3
     e40:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     e44:	ebffffae 	bl	d04 <putc>
     e48:	e51b3008 	ldr	r3, [fp, #-8]
     e4c:	e2433001 	sub	r3, r3, #1
     e50:	e50b3008 	str	r3, [fp, #-8]
     e54:	e51b3008 	ldr	r3, [fp, #-8]
     e58:	e3530000 	cmp	r3, #0
     e5c:	aafffff2 	bge	e2c <printint+0xf0>
     e60:	e1a00000 	nop			@ (mov r0, r0)
     e64:	e1a00000 	nop			@ (mov r0, r0)
     e68:	e24bd004 	sub	sp, fp, #4
     e6c:	e8bd8800 	pop	{fp, pc}
     e70:	0000156c 	.word	0x0000156c

00000e74 <printf>:
     e74:	e92d000e 	push	{r1, r2, r3}
     e78:	e92d4800 	push	{fp, lr}
     e7c:	e28db004 	add	fp, sp, #4
     e80:	e24dd024 	sub	sp, sp, #36	@ 0x24
     e84:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     e88:	e3a03000 	mov	r3, #0
     e8c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     e90:	e28b3008 	add	r3, fp, #8
     e94:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e98:	e3a03000 	mov	r3, #0
     e9c:	e50b3010 	str	r3, [fp, #-16]
     ea0:	ea000074 	b	1078 <printf+0x204>
     ea4:	e59b2004 	ldr	r2, [fp, #4]
     ea8:	e51b3010 	ldr	r3, [fp, #-16]
     eac:	e0823003 	add	r3, r2, r3
     eb0:	e5d33000 	ldrb	r3, [r3]
     eb4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     eb8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ebc:	e3530000 	cmp	r3, #0
     ec0:	1a00000b 	bne	ef4 <printf+0x80>
     ec4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ec8:	e3530025 	cmp	r3, #37	@ 0x25
     ecc:	1a000002 	bne	edc <printf+0x68>
     ed0:	e3a03025 	mov	r3, #37	@ 0x25
     ed4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ed8:	ea000063 	b	106c <printf+0x1f8>
     edc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ee0:	e6ef3073 	uxtb	r3, r3
     ee4:	e1a01003 	mov	r1, r3
     ee8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     eec:	ebffff84 	bl	d04 <putc>
     ef0:	ea00005d 	b	106c <printf+0x1f8>
     ef4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ef8:	e3530025 	cmp	r3, #37	@ 0x25
     efc:	1a00005a 	bne	106c <printf+0x1f8>
     f00:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f04:	e3530064 	cmp	r3, #100	@ 0x64
     f08:	1a00000a 	bne	f38 <printf+0xc4>
     f0c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f10:	e5933000 	ldr	r3, [r3]
     f14:	e1a01003 	mov	r1, r3
     f18:	e3a03001 	mov	r3, #1
     f1c:	e3a0200a 	mov	r2, #10
     f20:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f24:	ebffff84 	bl	d3c <printint>
     f28:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f2c:	e2833004 	add	r3, r3, #4
     f30:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f34:	ea00004a 	b	1064 <printf+0x1f0>
     f38:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f3c:	e3530078 	cmp	r3, #120	@ 0x78
     f40:	0a000002 	beq	f50 <printf+0xdc>
     f44:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f48:	e3530070 	cmp	r3, #112	@ 0x70
     f4c:	1a00000a 	bne	f7c <printf+0x108>
     f50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f54:	e5933000 	ldr	r3, [r3]
     f58:	e1a01003 	mov	r1, r3
     f5c:	e3a03000 	mov	r3, #0
     f60:	e3a02010 	mov	r2, #16
     f64:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f68:	ebffff73 	bl	d3c <printint>
     f6c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f70:	e2833004 	add	r3, r3, #4
     f74:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f78:	ea000039 	b	1064 <printf+0x1f0>
     f7c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f80:	e3530073 	cmp	r3, #115	@ 0x73
     f84:	1a000018 	bne	fec <printf+0x178>
     f88:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f8c:	e5933000 	ldr	r3, [r3]
     f90:	e50b300c 	str	r3, [fp, #-12]
     f94:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f98:	e2833004 	add	r3, r3, #4
     f9c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fa0:	e51b300c 	ldr	r3, [fp, #-12]
     fa4:	e3530000 	cmp	r3, #0
     fa8:	1a00000a 	bne	fd8 <printf+0x164>
     fac:	e59f30f4 	ldr	r3, [pc, #244]	@ 10a8 <printf+0x234>
     fb0:	e50b300c 	str	r3, [fp, #-12]
     fb4:	ea000007 	b	fd8 <printf+0x164>
     fb8:	e51b300c 	ldr	r3, [fp, #-12]
     fbc:	e5d33000 	ldrb	r3, [r3]
     fc0:	e1a01003 	mov	r1, r3
     fc4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fc8:	ebffff4d 	bl	d04 <putc>
     fcc:	e51b300c 	ldr	r3, [fp, #-12]
     fd0:	e2833001 	add	r3, r3, #1
     fd4:	e50b300c 	str	r3, [fp, #-12]
     fd8:	e51b300c 	ldr	r3, [fp, #-12]
     fdc:	e5d33000 	ldrb	r3, [r3]
     fe0:	e3530000 	cmp	r3, #0
     fe4:	1afffff3 	bne	fb8 <printf+0x144>
     fe8:	ea00001d 	b	1064 <printf+0x1f0>
     fec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ff0:	e3530063 	cmp	r3, #99	@ 0x63
     ff4:	1a000009 	bne	1020 <printf+0x1ac>
     ff8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ffc:	e5933000 	ldr	r3, [r3]
    1000:	e6ef3073 	uxtb	r3, r3
    1004:	e1a01003 	mov	r1, r3
    1008:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    100c:	ebffff3c 	bl	d04 <putc>
    1010:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1014:	e2833004 	add	r3, r3, #4
    1018:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    101c:	ea000010 	b	1064 <printf+0x1f0>
    1020:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1024:	e3530025 	cmp	r3, #37	@ 0x25
    1028:	1a000005 	bne	1044 <printf+0x1d0>
    102c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1030:	e6ef3073 	uxtb	r3, r3
    1034:	e1a01003 	mov	r1, r3
    1038:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    103c:	ebffff30 	bl	d04 <putc>
    1040:	ea000007 	b	1064 <printf+0x1f0>
    1044:	e3a01025 	mov	r1, #37	@ 0x25
    1048:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    104c:	ebffff2c 	bl	d04 <putc>
    1050:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1054:	e6ef3073 	uxtb	r3, r3
    1058:	e1a01003 	mov	r1, r3
    105c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1060:	ebffff27 	bl	d04 <putc>
    1064:	e3a03000 	mov	r3, #0
    1068:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    106c:	e51b3010 	ldr	r3, [fp, #-16]
    1070:	e2833001 	add	r3, r3, #1
    1074:	e50b3010 	str	r3, [fp, #-16]
    1078:	e59b2004 	ldr	r2, [fp, #4]
    107c:	e51b3010 	ldr	r3, [fp, #-16]
    1080:	e0823003 	add	r3, r2, r3
    1084:	e5d33000 	ldrb	r3, [r3]
    1088:	e3530000 	cmp	r3, #0
    108c:	1affff84 	bne	ea4 <printf+0x30>
    1090:	e1a00000 	nop			@ (mov r0, r0)
    1094:	e1a00000 	nop			@ (mov r0, r0)
    1098:	e24bd004 	sub	sp, fp, #4
    109c:	e8bd4800 	pop	{fp, lr}
    10a0:	e28dd00c 	add	sp, sp, #12
    10a4:	e12fff1e 	bx	lr
    10a8:	00001564 	.word	0x00001564

000010ac <free>:
    10ac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    10b0:	e28db000 	add	fp, sp, #0
    10b4:	e24dd014 	sub	sp, sp, #20
    10b8:	e50b0010 	str	r0, [fp, #-16]
    10bc:	e51b3010 	ldr	r3, [fp, #-16]
    10c0:	e2433008 	sub	r3, r3, #8
    10c4:	e50b300c 	str	r3, [fp, #-12]
    10c8:	e59f3154 	ldr	r3, [pc, #340]	@ 1224 <free+0x178>
    10cc:	e5933000 	ldr	r3, [r3]
    10d0:	e50b3008 	str	r3, [fp, #-8]
    10d4:	ea000010 	b	111c <free+0x70>
    10d8:	e51b3008 	ldr	r3, [fp, #-8]
    10dc:	e5933000 	ldr	r3, [r3]
    10e0:	e51b2008 	ldr	r2, [fp, #-8]
    10e4:	e1520003 	cmp	r2, r3
    10e8:	3a000008 	bcc	1110 <free+0x64>
    10ec:	e51b200c 	ldr	r2, [fp, #-12]
    10f0:	e51b3008 	ldr	r3, [fp, #-8]
    10f4:	e1520003 	cmp	r2, r3
    10f8:	8a000010 	bhi	1140 <free+0x94>
    10fc:	e51b3008 	ldr	r3, [fp, #-8]
    1100:	e5933000 	ldr	r3, [r3]
    1104:	e51b200c 	ldr	r2, [fp, #-12]
    1108:	e1520003 	cmp	r2, r3
    110c:	3a00000b 	bcc	1140 <free+0x94>
    1110:	e51b3008 	ldr	r3, [fp, #-8]
    1114:	e5933000 	ldr	r3, [r3]
    1118:	e50b3008 	str	r3, [fp, #-8]
    111c:	e51b200c 	ldr	r2, [fp, #-12]
    1120:	e51b3008 	ldr	r3, [fp, #-8]
    1124:	e1520003 	cmp	r2, r3
    1128:	9affffea 	bls	10d8 <free+0x2c>
    112c:	e51b3008 	ldr	r3, [fp, #-8]
    1130:	e5933000 	ldr	r3, [r3]
    1134:	e51b200c 	ldr	r2, [fp, #-12]
    1138:	e1520003 	cmp	r2, r3
    113c:	2affffe5 	bcs	10d8 <free+0x2c>
    1140:	e51b300c 	ldr	r3, [fp, #-12]
    1144:	e5933004 	ldr	r3, [r3, #4]
    1148:	e1a03183 	lsl	r3, r3, #3
    114c:	e51b200c 	ldr	r2, [fp, #-12]
    1150:	e0822003 	add	r2, r2, r3
    1154:	e51b3008 	ldr	r3, [fp, #-8]
    1158:	e5933000 	ldr	r3, [r3]
    115c:	e1520003 	cmp	r2, r3
    1160:	1a00000d 	bne	119c <free+0xf0>
    1164:	e51b300c 	ldr	r3, [fp, #-12]
    1168:	e5932004 	ldr	r2, [r3, #4]
    116c:	e51b3008 	ldr	r3, [fp, #-8]
    1170:	e5933000 	ldr	r3, [r3]
    1174:	e5933004 	ldr	r3, [r3, #4]
    1178:	e0822003 	add	r2, r2, r3
    117c:	e51b300c 	ldr	r3, [fp, #-12]
    1180:	e5832004 	str	r2, [r3, #4]
    1184:	e51b3008 	ldr	r3, [fp, #-8]
    1188:	e5933000 	ldr	r3, [r3]
    118c:	e5932000 	ldr	r2, [r3]
    1190:	e51b300c 	ldr	r3, [fp, #-12]
    1194:	e5832000 	str	r2, [r3]
    1198:	ea000003 	b	11ac <free+0x100>
    119c:	e51b3008 	ldr	r3, [fp, #-8]
    11a0:	e5932000 	ldr	r2, [r3]
    11a4:	e51b300c 	ldr	r3, [fp, #-12]
    11a8:	e5832000 	str	r2, [r3]
    11ac:	e51b3008 	ldr	r3, [fp, #-8]
    11b0:	e5933004 	ldr	r3, [r3, #4]
    11b4:	e1a03183 	lsl	r3, r3, #3
    11b8:	e51b2008 	ldr	r2, [fp, #-8]
    11bc:	e0823003 	add	r3, r2, r3
    11c0:	e51b200c 	ldr	r2, [fp, #-12]
    11c4:	e1520003 	cmp	r2, r3
    11c8:	1a00000b 	bne	11fc <free+0x150>
    11cc:	e51b3008 	ldr	r3, [fp, #-8]
    11d0:	e5932004 	ldr	r2, [r3, #4]
    11d4:	e51b300c 	ldr	r3, [fp, #-12]
    11d8:	e5933004 	ldr	r3, [r3, #4]
    11dc:	e0822003 	add	r2, r2, r3
    11e0:	e51b3008 	ldr	r3, [fp, #-8]
    11e4:	e5832004 	str	r2, [r3, #4]
    11e8:	e51b300c 	ldr	r3, [fp, #-12]
    11ec:	e5932000 	ldr	r2, [r3]
    11f0:	e51b3008 	ldr	r3, [fp, #-8]
    11f4:	e5832000 	str	r2, [r3]
    11f8:	ea000002 	b	1208 <free+0x15c>
    11fc:	e51b3008 	ldr	r3, [fp, #-8]
    1200:	e51b200c 	ldr	r2, [fp, #-12]
    1204:	e5832000 	str	r2, [r3]
    1208:	e59f2014 	ldr	r2, [pc, #20]	@ 1224 <free+0x178>
    120c:	e51b3008 	ldr	r3, [fp, #-8]
    1210:	e5823000 	str	r3, [r2]
    1214:	e1a00000 	nop			@ (mov r0, r0)
    1218:	e28bd000 	add	sp, fp, #0
    121c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1220:	e12fff1e 	bx	lr
    1224:	00001588 	.word	0x00001588

00001228 <morecore>:
    1228:	e92d4800 	push	{fp, lr}
    122c:	e28db004 	add	fp, sp, #4
    1230:	e24dd010 	sub	sp, sp, #16
    1234:	e50b0010 	str	r0, [fp, #-16]
    1238:	e51b3010 	ldr	r3, [fp, #-16]
    123c:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1240:	2a000001 	bcs	124c <morecore+0x24>
    1244:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1248:	e50b3010 	str	r3, [fp, #-16]
    124c:	e51b3010 	ldr	r3, [fp, #-16]
    1250:	e1a03183 	lsl	r3, r3, #3
    1254:	e1a00003 	mov	r0, r3
    1258:	ebfffe07 	bl	a7c <sbrk>
    125c:	e50b0008 	str	r0, [fp, #-8]
    1260:	e51b3008 	ldr	r3, [fp, #-8]
    1264:	e3730001 	cmn	r3, #1
    1268:	1a000001 	bne	1274 <morecore+0x4c>
    126c:	e3a03000 	mov	r3, #0
    1270:	ea00000a 	b	12a0 <morecore+0x78>
    1274:	e51b3008 	ldr	r3, [fp, #-8]
    1278:	e50b300c 	str	r3, [fp, #-12]
    127c:	e51b300c 	ldr	r3, [fp, #-12]
    1280:	e51b2010 	ldr	r2, [fp, #-16]
    1284:	e5832004 	str	r2, [r3, #4]
    1288:	e51b300c 	ldr	r3, [fp, #-12]
    128c:	e2833008 	add	r3, r3, #8
    1290:	e1a00003 	mov	r0, r3
    1294:	ebffff84 	bl	10ac <free>
    1298:	e59f300c 	ldr	r3, [pc, #12]	@ 12ac <morecore+0x84>
    129c:	e5933000 	ldr	r3, [r3]
    12a0:	e1a00003 	mov	r0, r3
    12a4:	e24bd004 	sub	sp, fp, #4
    12a8:	e8bd8800 	pop	{fp, pc}
    12ac:	00001588 	.word	0x00001588

000012b0 <malloc>:
    12b0:	e92d4800 	push	{fp, lr}
    12b4:	e28db004 	add	fp, sp, #4
    12b8:	e24dd018 	sub	sp, sp, #24
    12bc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    12c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12c4:	e2833007 	add	r3, r3, #7
    12c8:	e1a031a3 	lsr	r3, r3, #3
    12cc:	e2833001 	add	r3, r3, #1
    12d0:	e50b3010 	str	r3, [fp, #-16]
    12d4:	e59f3134 	ldr	r3, [pc, #308]	@ 1410 <malloc+0x160>
    12d8:	e5933000 	ldr	r3, [r3]
    12dc:	e50b300c 	str	r3, [fp, #-12]
    12e0:	e51b300c 	ldr	r3, [fp, #-12]
    12e4:	e3530000 	cmp	r3, #0
    12e8:	1a00000b 	bne	131c <malloc+0x6c>
    12ec:	e59f3120 	ldr	r3, [pc, #288]	@ 1414 <malloc+0x164>
    12f0:	e50b300c 	str	r3, [fp, #-12]
    12f4:	e59f2114 	ldr	r2, [pc, #276]	@ 1410 <malloc+0x160>
    12f8:	e51b300c 	ldr	r3, [fp, #-12]
    12fc:	e5823000 	str	r3, [r2]
    1300:	e59f3108 	ldr	r3, [pc, #264]	@ 1410 <malloc+0x160>
    1304:	e5933000 	ldr	r3, [r3]
    1308:	e59f2104 	ldr	r2, [pc, #260]	@ 1414 <malloc+0x164>
    130c:	e5823000 	str	r3, [r2]
    1310:	e59f30fc 	ldr	r3, [pc, #252]	@ 1414 <malloc+0x164>
    1314:	e3a02000 	mov	r2, #0
    1318:	e5832004 	str	r2, [r3, #4]
    131c:	e51b300c 	ldr	r3, [fp, #-12]
    1320:	e5933000 	ldr	r3, [r3]
    1324:	e50b3008 	str	r3, [fp, #-8]
    1328:	e51b3008 	ldr	r3, [fp, #-8]
    132c:	e5933004 	ldr	r3, [r3, #4]
    1330:	e51b2010 	ldr	r2, [fp, #-16]
    1334:	e1520003 	cmp	r2, r3
    1338:	8a00001e 	bhi	13b8 <malloc+0x108>
    133c:	e51b3008 	ldr	r3, [fp, #-8]
    1340:	e5933004 	ldr	r3, [r3, #4]
    1344:	e51b2010 	ldr	r2, [fp, #-16]
    1348:	e1520003 	cmp	r2, r3
    134c:	1a000004 	bne	1364 <malloc+0xb4>
    1350:	e51b3008 	ldr	r3, [fp, #-8]
    1354:	e5932000 	ldr	r2, [r3]
    1358:	e51b300c 	ldr	r3, [fp, #-12]
    135c:	e5832000 	str	r2, [r3]
    1360:	ea00000e 	b	13a0 <malloc+0xf0>
    1364:	e51b3008 	ldr	r3, [fp, #-8]
    1368:	e5932004 	ldr	r2, [r3, #4]
    136c:	e51b3010 	ldr	r3, [fp, #-16]
    1370:	e0422003 	sub	r2, r2, r3
    1374:	e51b3008 	ldr	r3, [fp, #-8]
    1378:	e5832004 	str	r2, [r3, #4]
    137c:	e51b3008 	ldr	r3, [fp, #-8]
    1380:	e5933004 	ldr	r3, [r3, #4]
    1384:	e1a03183 	lsl	r3, r3, #3
    1388:	e51b2008 	ldr	r2, [fp, #-8]
    138c:	e0823003 	add	r3, r2, r3
    1390:	e50b3008 	str	r3, [fp, #-8]
    1394:	e51b3008 	ldr	r3, [fp, #-8]
    1398:	e51b2010 	ldr	r2, [fp, #-16]
    139c:	e5832004 	str	r2, [r3, #4]
    13a0:	e59f2068 	ldr	r2, [pc, #104]	@ 1410 <malloc+0x160>
    13a4:	e51b300c 	ldr	r3, [fp, #-12]
    13a8:	e5823000 	str	r3, [r2]
    13ac:	e51b3008 	ldr	r3, [fp, #-8]
    13b0:	e2833008 	add	r3, r3, #8
    13b4:	ea000012 	b	1404 <malloc+0x154>
    13b8:	e59f3050 	ldr	r3, [pc, #80]	@ 1410 <malloc+0x160>
    13bc:	e5933000 	ldr	r3, [r3]
    13c0:	e51b2008 	ldr	r2, [fp, #-8]
    13c4:	e1520003 	cmp	r2, r3
    13c8:	1a000007 	bne	13ec <malloc+0x13c>
    13cc:	e51b0010 	ldr	r0, [fp, #-16]
    13d0:	ebffff94 	bl	1228 <morecore>
    13d4:	e50b0008 	str	r0, [fp, #-8]
    13d8:	e51b3008 	ldr	r3, [fp, #-8]
    13dc:	e3530000 	cmp	r3, #0
    13e0:	1a000001 	bne	13ec <malloc+0x13c>
    13e4:	e3a03000 	mov	r3, #0
    13e8:	ea000005 	b	1404 <malloc+0x154>
    13ec:	e51b3008 	ldr	r3, [fp, #-8]
    13f0:	e50b300c 	str	r3, [fp, #-12]
    13f4:	e51b3008 	ldr	r3, [fp, #-8]
    13f8:	e5933000 	ldr	r3, [r3]
    13fc:	e50b3008 	str	r3, [fp, #-8]
    1400:	eaffffc8 	b	1328 <malloc+0x78>
    1404:	e1a00003 	mov	r0, r3
    1408:	e24bd004 	sub	sp, fp, #4
    140c:	e8bd8800 	pop	{fp, pc}
    1410:	00001588 	.word	0x00001588
    1414:	00001580 	.word	0x00001580

00001418 <__udivsi3>:
    1418:	e2512001 	subs	r2, r1, #1
    141c:	012fff1e 	bxeq	lr
    1420:	3a000036 	bcc	1500 <__udivsi3+0xe8>
    1424:	e1500001 	cmp	r0, r1
    1428:	9a000022 	bls	14b8 <__udivsi3+0xa0>
    142c:	e1110002 	tst	r1, r2
    1430:	0a000023 	beq	14c4 <__udivsi3+0xac>
    1434:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1438:	01a01181 	lsleq	r1, r1, #3
    143c:	03a03008 	moveq	r3, #8
    1440:	13a03001 	movne	r3, #1
    1444:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1448:	31510000 	cmpcc	r1, r0
    144c:	31a01201 	lslcc	r1, r1, #4
    1450:	31a03203 	lslcc	r3, r3, #4
    1454:	3afffffa 	bcc	1444 <__udivsi3+0x2c>
    1458:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    145c:	31510000 	cmpcc	r1, r0
    1460:	31a01081 	lslcc	r1, r1, #1
    1464:	31a03083 	lslcc	r3, r3, #1
    1468:	3afffffa 	bcc	1458 <__udivsi3+0x40>
    146c:	e3a02000 	mov	r2, #0
    1470:	e1500001 	cmp	r0, r1
    1474:	20400001 	subcs	r0, r0, r1
    1478:	21822003 	orrcs	r2, r2, r3
    147c:	e15000a1 	cmp	r0, r1, lsr #1
    1480:	204000a1 	subcs	r0, r0, r1, lsr #1
    1484:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1488:	e1500121 	cmp	r0, r1, lsr #2
    148c:	20400121 	subcs	r0, r0, r1, lsr #2
    1490:	21822123 	orrcs	r2, r2, r3, lsr #2
    1494:	e15001a1 	cmp	r0, r1, lsr #3
    1498:	204001a1 	subcs	r0, r0, r1, lsr #3
    149c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    14a0:	e3500000 	cmp	r0, #0
    14a4:	11b03223 	lsrsne	r3, r3, #4
    14a8:	11a01221 	lsrne	r1, r1, #4
    14ac:	1affffef 	bne	1470 <__udivsi3+0x58>
    14b0:	e1a00002 	mov	r0, r2
    14b4:	e12fff1e 	bx	lr
    14b8:	03a00001 	moveq	r0, #1
    14bc:	13a00000 	movne	r0, #0
    14c0:	e12fff1e 	bx	lr
    14c4:	e3510801 	cmp	r1, #65536	@ 0x10000
    14c8:	21a01821 	lsrcs	r1, r1, #16
    14cc:	23a02010 	movcs	r2, #16
    14d0:	33a02000 	movcc	r2, #0
    14d4:	e3510c01 	cmp	r1, #256	@ 0x100
    14d8:	21a01421 	lsrcs	r1, r1, #8
    14dc:	22822008 	addcs	r2, r2, #8
    14e0:	e3510010 	cmp	r1, #16
    14e4:	21a01221 	lsrcs	r1, r1, #4
    14e8:	22822004 	addcs	r2, r2, #4
    14ec:	e3510004 	cmp	r1, #4
    14f0:	82822003 	addhi	r2, r2, #3
    14f4:	908220a1 	addls	r2, r2, r1, lsr #1
    14f8:	e1a00230 	lsr	r0, r0, r2
    14fc:	e12fff1e 	bx	lr
    1500:	e3500000 	cmp	r0, #0
    1504:	13e00000 	mvnne	r0, #0
    1508:	ea000007 	b	152c <__aeabi_idiv0>

0000150c <__aeabi_uidivmod>:
    150c:	e3510000 	cmp	r1, #0
    1510:	0afffffa 	beq	1500 <__udivsi3+0xe8>
    1514:	e92d4003 	push	{r0, r1, lr}
    1518:	ebffffbe 	bl	1418 <__udivsi3>
    151c:	e8bd4006 	pop	{r1, r2, lr}
    1520:	e0030092 	mul	r3, r2, r0
    1524:	e0411003 	sub	r1, r1, r3
    1528:	e12fff1e 	bx	lr

0000152c <__aeabi_idiv0>:
    152c:	e12fff1e 	bx	lr
