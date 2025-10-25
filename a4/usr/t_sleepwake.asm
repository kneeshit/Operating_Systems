
_t_sleepwake:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	eb00035a 	bl	d7c <getChannel>
      10:	e50b0008 	str	r0, [fp, #-8]
      14:	eb00022f 	bl	8d8 <fork>
      18:	e50b000c 	str	r0, [fp, #-12]
      1c:	e51b300c 	ldr	r3, [fp, #-12]
      20:	e3530000 	cmp	r3, #0
      24:	1a000004 	bne	3c <main+0x3c>
      28:	e3a000c8 	mov	r0, #200	@ 0xc8
      2c:	eb0002d4 	bl	b84 <sleep>
      30:	e51b0008 	ldr	r0, [fp, #-8]
      34:	eb000359 	bl	da0 <sigChan>
      38:	eb00022f 	bl	8fc <exit>
      3c:	e51b2008 	ldr	r2, [fp, #-8]
      40:	e59f1020 	ldr	r1, [pc, #32]	@ 68 <main+0x68>
      44:	e3a00001 	mov	r0, #1
      48:	eb0003c2 	bl	f58 <printf>
      4c:	e51b0008 	ldr	r0, [fp, #-8]
      50:	eb000340 	bl	d58 <sleepChan>
      54:	e59f1010 	ldr	r1, [pc, #16]	@ 6c <main+0x6c>
      58:	e3a00001 	mov	r0, #1
      5c:	eb0003bd 	bl	f58 <printf>
      60:	eb00022e 	bl	920 <wait>
      64:	eb000224 	bl	8fc <exit>
      68:	00001614 	.word	0x00001614
      6c:	00001634 	.word	0x00001634

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
     364:	eb00017f 	bl	968 <read>
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
     40c:	eb000182 	bl	a1c <open>
     410:	e50b0008 	str	r0, [fp, #-8]
     414:	e51b3008 	ldr	r3, [fp, #-8]
     418:	e3530000 	cmp	r3, #0
     41c:	aa000001 	bge	428 <stat+0x38>
     420:	e3e03000 	mvn	r3, #0
     424:	ea000006 	b	444 <stat+0x54>
     428:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     42c:	e51b0008 	ldr	r0, [fp, #-8]
     430:	eb000194 	bl	a88 <fstat>
     434:	e50b000c 	str	r0, [fp, #-12]
     438:	e51b0008 	ldr	r0, [fp, #-8]
     43c:	eb00015b 	bl	9b0 <close>
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

00000598 <xchg>:
     598:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     59c:	e28db000 	add	fp, sp, #0
     5a0:	e24dd00c 	sub	sp, sp, #12
     5a4:	e50b0008 	str	r0, [fp, #-8]
     5a8:	e50b100c 	str	r1, [fp, #-12]
     5ac:	e51b200c 	ldr	r2, [fp, #-12]
     5b0:	e51b3008 	ldr	r3, [fp, #-8]
     5b4:	e1931f9f 	ldrex	r1, [r3]
     5b8:	e1830f92 	strex	r0, r2, [r3]
     5bc:	e3500000 	cmp	r0, #0
     5c0:	1afffffb 	bne	5b4 <xchg+0x1c>
     5c4:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     5c8:	e1a03001 	mov	r3, r1
     5cc:	e1a00003 	mov	r0, r3
     5d0:	e28bd000 	add	sp, fp, #0
     5d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5d8:	e12fff1e 	bx	lr

000005dc <acquireLock>:
     5dc:	e92d4800 	push	{fp, lr}
     5e0:	e28db004 	add	fp, sp, #4
     5e4:	e24dd008 	sub	sp, sp, #8
     5e8:	e50b0008 	str	r0, [fp, #-8]
     5ec:	e51b3008 	ldr	r3, [fp, #-8]
     5f0:	e5933004 	ldr	r3, [r3, #4]
     5f4:	e3530000 	cmp	r3, #0
     5f8:	0a000008 	beq	620 <acquireLock+0x44>
     5fc:	e1a00000 	nop			@ (mov r0, r0)
     600:	e51b3008 	ldr	r3, [fp, #-8]
     604:	e3a01001 	mov	r1, #1
     608:	e1a00003 	mov	r0, r3
     60c:	ebffffe1 	bl	598 <xchg>
     610:	e1a03000 	mov	r3, r0
     614:	e3530000 	cmp	r3, #0
     618:	1afffff8 	bne	600 <acquireLock+0x24>
     61c:	ea000000 	b	624 <acquireLock+0x48>
     620:	e1a00000 	nop			@ (mov r0, r0)
     624:	e24bd004 	sub	sp, fp, #4
     628:	e8bd8800 	pop	{fp, pc}

0000062c <releaseLock>:
     62c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     630:	e28db000 	add	fp, sp, #0
     634:	e24dd00c 	sub	sp, sp, #12
     638:	e50b0008 	str	r0, [fp, #-8]
     63c:	e51b3008 	ldr	r3, [fp, #-8]
     640:	e5933004 	ldr	r3, [r3, #4]
     644:	e3530000 	cmp	r3, #0
     648:	0a000007 	beq	66c <releaseLock+0x40>
     64c:	e51b3008 	ldr	r3, [fp, #-8]
     650:	e5933000 	ldr	r3, [r3]
     654:	e3530001 	cmp	r3, #1
     658:	1a000005 	bne	674 <releaseLock+0x48>
     65c:	e51b3008 	ldr	r3, [fp, #-8]
     660:	e3a02000 	mov	r2, #0
     664:	e5832000 	str	r2, [r3]
     668:	ea000002 	b	678 <releaseLock+0x4c>
     66c:	e1a00000 	nop			@ (mov r0, r0)
     670:	ea000000 	b	678 <releaseLock+0x4c>
     674:	e1a00000 	nop			@ (mov r0, r0)
     678:	e28bd000 	add	sp, fp, #0
     67c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     680:	e12fff1e 	bx	lr

00000684 <initiateCondVar>:
     684:	e92d4800 	push	{fp, lr}
     688:	e28db004 	add	fp, sp, #4
     68c:	e24dd008 	sub	sp, sp, #8
     690:	e50b0008 	str	r0, [fp, #-8]
     694:	eb0001b8 	bl	d7c <getChannel>
     698:	e1a02000 	mov	r2, r0
     69c:	e51b3008 	ldr	r3, [fp, #-8]
     6a0:	e5832000 	str	r2, [r3]
     6a4:	e51b3008 	ldr	r3, [fp, #-8]
     6a8:	e3a02001 	mov	r2, #1
     6ac:	e5832004 	str	r2, [r3, #4]
     6b0:	e1a00000 	nop			@ (mov r0, r0)
     6b4:	e24bd004 	sub	sp, fp, #4
     6b8:	e8bd8800 	pop	{fp, pc}

000006bc <condWait>:
     6bc:	e92d4800 	push	{fp, lr}
     6c0:	e28db004 	add	fp, sp, #4
     6c4:	e24dd008 	sub	sp, sp, #8
     6c8:	e50b0008 	str	r0, [fp, #-8]
     6cc:	e50b100c 	str	r1, [fp, #-12]
     6d0:	e51b3008 	ldr	r3, [fp, #-8]
     6d4:	e5933004 	ldr	r3, [r3, #4]
     6d8:	e3530000 	cmp	r3, #0
     6dc:	0a00000c 	beq	714 <condWait+0x58>
     6e0:	e51b300c 	ldr	r3, [fp, #-12]
     6e4:	e5933004 	ldr	r3, [r3, #4]
     6e8:	e3530000 	cmp	r3, #0
     6ec:	0a000008 	beq	714 <condWait+0x58>
     6f0:	e51b000c 	ldr	r0, [fp, #-12]
     6f4:	ebffffcc 	bl	62c <releaseLock>
     6f8:	e51b3008 	ldr	r3, [fp, #-8]
     6fc:	e5933000 	ldr	r3, [r3]
     700:	e1a00003 	mov	r0, r3
     704:	eb000193 	bl	d58 <sleepChan>
     708:	e51b000c 	ldr	r0, [fp, #-12]
     70c:	ebffffb2 	bl	5dc <acquireLock>
     710:	ea000000 	b	718 <condWait+0x5c>
     714:	e1a00000 	nop			@ (mov r0, r0)
     718:	e24bd004 	sub	sp, fp, #4
     71c:	e8bd8800 	pop	{fp, pc}

00000720 <broadcast>:
     720:	e92d4800 	push	{fp, lr}
     724:	e28db004 	add	fp, sp, #4
     728:	e24dd008 	sub	sp, sp, #8
     72c:	e50b0008 	str	r0, [fp, #-8]
     730:	e51b3008 	ldr	r3, [fp, #-8]
     734:	e5933004 	ldr	r3, [r3, #4]
     738:	e3530000 	cmp	r3, #0
     73c:	0a000004 	beq	754 <broadcast+0x34>
     740:	e51b3008 	ldr	r3, [fp, #-8]
     744:	e5933000 	ldr	r3, [r3]
     748:	e1a00003 	mov	r0, r3
     74c:	eb000193 	bl	da0 <sigChan>
     750:	ea000000 	b	758 <broadcast+0x38>
     754:	e1a00000 	nop			@ (mov r0, r0)
     758:	e24bd004 	sub	sp, fp, #4
     75c:	e8bd8800 	pop	{fp, pc}

00000760 <signal>:
     760:	e92d4800 	push	{fp, lr}
     764:	e28db004 	add	fp, sp, #4
     768:	e24dd008 	sub	sp, sp, #8
     76c:	e50b0008 	str	r0, [fp, #-8]
     770:	e51b3008 	ldr	r3, [fp, #-8]
     774:	e5933004 	ldr	r3, [r3, #4]
     778:	e3530000 	cmp	r3, #0
     77c:	0a000004 	beq	794 <signal+0x34>
     780:	e51b3008 	ldr	r3, [fp, #-8]
     784:	e5933000 	ldr	r3, [r3]
     788:	e1a00003 	mov	r0, r3
     78c:	eb00018c 	bl	dc4 <sigOneChan>
     790:	ea000000 	b	798 <signal+0x38>
     794:	e1a00000 	nop			@ (mov r0, r0)
     798:	e24bd004 	sub	sp, fp, #4
     79c:	e8bd8800 	pop	{fp, pc}

000007a0 <semInit>:
     7a0:	e92d4800 	push	{fp, lr}
     7a4:	e28db004 	add	fp, sp, #4
     7a8:	e24dd008 	sub	sp, sp, #8
     7ac:	e50b0008 	str	r0, [fp, #-8]
     7b0:	e50b100c 	str	r1, [fp, #-12]
     7b4:	e51b3008 	ldr	r3, [fp, #-8]
     7b8:	e51b200c 	ldr	r2, [fp, #-12]
     7bc:	e5832000 	str	r2, [r3]
     7c0:	e51b3008 	ldr	r3, [fp, #-8]
     7c4:	e2833004 	add	r3, r3, #4
     7c8:	e1a00003 	mov	r0, r3
     7cc:	ebffff63 	bl	560 <initiateLock>
     7d0:	e51b3008 	ldr	r3, [fp, #-8]
     7d4:	e283300c 	add	r3, r3, #12
     7d8:	e1a00003 	mov	r0, r3
     7dc:	ebffffa8 	bl	684 <initiateCondVar>
     7e0:	e51b3008 	ldr	r3, [fp, #-8]
     7e4:	e3a02001 	mov	r2, #1
     7e8:	e5832014 	str	r2, [r3, #20]
     7ec:	e1a00000 	nop			@ (mov r0, r0)
     7f0:	e24bd004 	sub	sp, fp, #4
     7f4:	e8bd8800 	pop	{fp, pc}

000007f8 <semUp>:
     7f8:	e92d4800 	push	{fp, lr}
     7fc:	e28db004 	add	fp, sp, #4
     800:	e24dd008 	sub	sp, sp, #8
     804:	e50b0008 	str	r0, [fp, #-8]
     808:	e51b3008 	ldr	r3, [fp, #-8]
     80c:	e2833004 	add	r3, r3, #4
     810:	e1a00003 	mov	r0, r3
     814:	ebffff70 	bl	5dc <acquireLock>
     818:	e51b3008 	ldr	r3, [fp, #-8]
     81c:	e5933000 	ldr	r3, [r3]
     820:	e2832001 	add	r2, r3, #1
     824:	e51b3008 	ldr	r3, [fp, #-8]
     828:	e5832000 	str	r2, [r3]
     82c:	e51b3008 	ldr	r3, [fp, #-8]
     830:	e283300c 	add	r3, r3, #12
     834:	e1a00003 	mov	r0, r3
     838:	ebffffc8 	bl	760 <signal>
     83c:	e51b3008 	ldr	r3, [fp, #-8]
     840:	e2833004 	add	r3, r3, #4
     844:	e1a00003 	mov	r0, r3
     848:	ebffff77 	bl	62c <releaseLock>
     84c:	e1a00000 	nop			@ (mov r0, r0)
     850:	e24bd004 	sub	sp, fp, #4
     854:	e8bd8800 	pop	{fp, pc}

00000858 <semDown>:
     858:	e92d4800 	push	{fp, lr}
     85c:	e28db004 	add	fp, sp, #4
     860:	e24dd008 	sub	sp, sp, #8
     864:	e50b0008 	str	r0, [fp, #-8]
     868:	e51b3008 	ldr	r3, [fp, #-8]
     86c:	e2833004 	add	r3, r3, #4
     870:	e1a00003 	mov	r0, r3
     874:	ebffff58 	bl	5dc <acquireLock>
     878:	ea000006 	b	898 <semDown+0x40>
     87c:	e51b3008 	ldr	r3, [fp, #-8]
     880:	e283200c 	add	r2, r3, #12
     884:	e51b3008 	ldr	r3, [fp, #-8]
     888:	e2833004 	add	r3, r3, #4
     88c:	e1a01003 	mov	r1, r3
     890:	e1a00002 	mov	r0, r2
     894:	ebffff88 	bl	6bc <condWait>
     898:	e51b3008 	ldr	r3, [fp, #-8]
     89c:	e5933000 	ldr	r3, [r3]
     8a0:	e3530000 	cmp	r3, #0
     8a4:	dafffff4 	ble	87c <semDown+0x24>
     8a8:	e51b3008 	ldr	r3, [fp, #-8]
     8ac:	e5933000 	ldr	r3, [r3]
     8b0:	e2432001 	sub	r2, r3, #1
     8b4:	e51b3008 	ldr	r3, [fp, #-8]
     8b8:	e5832000 	str	r2, [r3]
     8bc:	e51b3008 	ldr	r3, [fp, #-8]
     8c0:	e2833004 	add	r3, r3, #4
     8c4:	e1a00003 	mov	r0, r3
     8c8:	ebffff57 	bl	62c <releaseLock>
     8cc:	e1a00000 	nop			@ (mov r0, r0)
     8d0:	e24bd004 	sub	sp, fp, #4
     8d4:	e8bd8800 	pop	{fp, pc}

000008d8 <fork>:
     8d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8dc:	e1a04003 	mov	r4, r3
     8e0:	e1a03002 	mov	r3, r2
     8e4:	e1a02001 	mov	r2, r1
     8e8:	e1a01000 	mov	r1, r0
     8ec:	e3a00001 	mov	r0, #1
     8f0:	ef000000 	svc	0x00000000
     8f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8f8:	e12fff1e 	bx	lr

000008fc <exit>:
     8fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     900:	e1a04003 	mov	r4, r3
     904:	e1a03002 	mov	r3, r2
     908:	e1a02001 	mov	r2, r1
     90c:	e1a01000 	mov	r1, r0
     910:	e3a00002 	mov	r0, #2
     914:	ef000000 	svc	0x00000000
     918:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     91c:	e12fff1e 	bx	lr

00000920 <wait>:
     920:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     924:	e1a04003 	mov	r4, r3
     928:	e1a03002 	mov	r3, r2
     92c:	e1a02001 	mov	r2, r1
     930:	e1a01000 	mov	r1, r0
     934:	e3a00003 	mov	r0, #3
     938:	ef000000 	svc	0x00000000
     93c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     940:	e12fff1e 	bx	lr

00000944 <pipe>:
     944:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     948:	e1a04003 	mov	r4, r3
     94c:	e1a03002 	mov	r3, r2
     950:	e1a02001 	mov	r2, r1
     954:	e1a01000 	mov	r1, r0
     958:	e3a00004 	mov	r0, #4
     95c:	ef000000 	svc	0x00000000
     960:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     964:	e12fff1e 	bx	lr

00000968 <read>:
     968:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     96c:	e1a04003 	mov	r4, r3
     970:	e1a03002 	mov	r3, r2
     974:	e1a02001 	mov	r2, r1
     978:	e1a01000 	mov	r1, r0
     97c:	e3a00005 	mov	r0, #5
     980:	ef000000 	svc	0x00000000
     984:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     988:	e12fff1e 	bx	lr

0000098c <write>:
     98c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     990:	e1a04003 	mov	r4, r3
     994:	e1a03002 	mov	r3, r2
     998:	e1a02001 	mov	r2, r1
     99c:	e1a01000 	mov	r1, r0
     9a0:	e3a00010 	mov	r0, #16
     9a4:	ef000000 	svc	0x00000000
     9a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9ac:	e12fff1e 	bx	lr

000009b0 <close>:
     9b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9b4:	e1a04003 	mov	r4, r3
     9b8:	e1a03002 	mov	r3, r2
     9bc:	e1a02001 	mov	r2, r1
     9c0:	e1a01000 	mov	r1, r0
     9c4:	e3a00015 	mov	r0, #21
     9c8:	ef000000 	svc	0x00000000
     9cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9d0:	e12fff1e 	bx	lr

000009d4 <kill>:
     9d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9d8:	e1a04003 	mov	r4, r3
     9dc:	e1a03002 	mov	r3, r2
     9e0:	e1a02001 	mov	r2, r1
     9e4:	e1a01000 	mov	r1, r0
     9e8:	e3a00006 	mov	r0, #6
     9ec:	ef000000 	svc	0x00000000
     9f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9f4:	e12fff1e 	bx	lr

000009f8 <exec>:
     9f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9fc:	e1a04003 	mov	r4, r3
     a00:	e1a03002 	mov	r3, r2
     a04:	e1a02001 	mov	r2, r1
     a08:	e1a01000 	mov	r1, r0
     a0c:	e3a00007 	mov	r0, #7
     a10:	ef000000 	svc	0x00000000
     a14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a18:	e12fff1e 	bx	lr

00000a1c <open>:
     a1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a20:	e1a04003 	mov	r4, r3
     a24:	e1a03002 	mov	r3, r2
     a28:	e1a02001 	mov	r2, r1
     a2c:	e1a01000 	mov	r1, r0
     a30:	e3a0000f 	mov	r0, #15
     a34:	ef000000 	svc	0x00000000
     a38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a3c:	e12fff1e 	bx	lr

00000a40 <mknod>:
     a40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a44:	e1a04003 	mov	r4, r3
     a48:	e1a03002 	mov	r3, r2
     a4c:	e1a02001 	mov	r2, r1
     a50:	e1a01000 	mov	r1, r0
     a54:	e3a00011 	mov	r0, #17
     a58:	ef000000 	svc	0x00000000
     a5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a60:	e12fff1e 	bx	lr

00000a64 <unlink>:
     a64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a68:	e1a04003 	mov	r4, r3
     a6c:	e1a03002 	mov	r3, r2
     a70:	e1a02001 	mov	r2, r1
     a74:	e1a01000 	mov	r1, r0
     a78:	e3a00012 	mov	r0, #18
     a7c:	ef000000 	svc	0x00000000
     a80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a84:	e12fff1e 	bx	lr

00000a88 <fstat>:
     a88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a8c:	e1a04003 	mov	r4, r3
     a90:	e1a03002 	mov	r3, r2
     a94:	e1a02001 	mov	r2, r1
     a98:	e1a01000 	mov	r1, r0
     a9c:	e3a00008 	mov	r0, #8
     aa0:	ef000000 	svc	0x00000000
     aa4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aa8:	e12fff1e 	bx	lr

00000aac <link>:
     aac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ab0:	e1a04003 	mov	r4, r3
     ab4:	e1a03002 	mov	r3, r2
     ab8:	e1a02001 	mov	r2, r1
     abc:	e1a01000 	mov	r1, r0
     ac0:	e3a00013 	mov	r0, #19
     ac4:	ef000000 	svc	0x00000000
     ac8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     acc:	e12fff1e 	bx	lr

00000ad0 <mkdir>:
     ad0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad4:	e1a04003 	mov	r4, r3
     ad8:	e1a03002 	mov	r3, r2
     adc:	e1a02001 	mov	r2, r1
     ae0:	e1a01000 	mov	r1, r0
     ae4:	e3a00014 	mov	r0, #20
     ae8:	ef000000 	svc	0x00000000
     aec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     af0:	e12fff1e 	bx	lr

00000af4 <chdir>:
     af4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     af8:	e1a04003 	mov	r4, r3
     afc:	e1a03002 	mov	r3, r2
     b00:	e1a02001 	mov	r2, r1
     b04:	e1a01000 	mov	r1, r0
     b08:	e3a00009 	mov	r0, #9
     b0c:	ef000000 	svc	0x00000000
     b10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b14:	e12fff1e 	bx	lr

00000b18 <dup>:
     b18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b1c:	e1a04003 	mov	r4, r3
     b20:	e1a03002 	mov	r3, r2
     b24:	e1a02001 	mov	r2, r1
     b28:	e1a01000 	mov	r1, r0
     b2c:	e3a0000a 	mov	r0, #10
     b30:	ef000000 	svc	0x00000000
     b34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b38:	e12fff1e 	bx	lr

00000b3c <getpid>:
     b3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b40:	e1a04003 	mov	r4, r3
     b44:	e1a03002 	mov	r3, r2
     b48:	e1a02001 	mov	r2, r1
     b4c:	e1a01000 	mov	r1, r0
     b50:	e3a0000b 	mov	r0, #11
     b54:	ef000000 	svc	0x00000000
     b58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b5c:	e12fff1e 	bx	lr

00000b60 <sbrk>:
     b60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b64:	e1a04003 	mov	r4, r3
     b68:	e1a03002 	mov	r3, r2
     b6c:	e1a02001 	mov	r2, r1
     b70:	e1a01000 	mov	r1, r0
     b74:	e3a0000c 	mov	r0, #12
     b78:	ef000000 	svc	0x00000000
     b7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b80:	e12fff1e 	bx	lr

00000b84 <sleep>:
     b84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b88:	e1a04003 	mov	r4, r3
     b8c:	e1a03002 	mov	r3, r2
     b90:	e1a02001 	mov	r2, r1
     b94:	e1a01000 	mov	r1, r0
     b98:	e3a0000d 	mov	r0, #13
     b9c:	ef000000 	svc	0x00000000
     ba0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba4:	e12fff1e 	bx	lr

00000ba8 <uptime>:
     ba8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bac:	e1a04003 	mov	r4, r3
     bb0:	e1a03002 	mov	r3, r2
     bb4:	e1a02001 	mov	r2, r1
     bb8:	e1a01000 	mov	r1, r0
     bbc:	e3a0000e 	mov	r0, #14
     bc0:	ef000000 	svc	0x00000000
     bc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc8:	e12fff1e 	bx	lr

00000bcc <getprocs>:
     bcc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bd0:	e1a04003 	mov	r4, r3
     bd4:	e1a03002 	mov	r3, r2
     bd8:	e1a02001 	mov	r2, r1
     bdc:	e1a01000 	mov	r1, r0
     be0:	e3a00016 	mov	r0, #22
     be4:	ef000000 	svc	0x00000000
     be8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bec:	e12fff1e 	bx	lr

00000bf0 <settickets>:
     bf0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf4:	e1a04003 	mov	r4, r3
     bf8:	e1a03002 	mov	r3, r2
     bfc:	e1a02001 	mov	r2, r1
     c00:	e1a01000 	mov	r1, r0
     c04:	e3a00017 	mov	r0, #23
     c08:	ef000000 	svc	0x00000000
     c0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c10:	e12fff1e 	bx	lr

00000c14 <srand>:
     c14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c18:	e1a04003 	mov	r4, r3
     c1c:	e1a03002 	mov	r3, r2
     c20:	e1a02001 	mov	r2, r1
     c24:	e1a01000 	mov	r1, r0
     c28:	e3a00018 	mov	r0, #24
     c2c:	ef000000 	svc	0x00000000
     c30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c34:	e12fff1e 	bx	lr

00000c38 <getpinfo>:
     c38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c3c:	e1a04003 	mov	r4, r3
     c40:	e1a03002 	mov	r3, r2
     c44:	e1a02001 	mov	r2, r1
     c48:	e1a01000 	mov	r1, r0
     c4c:	e3a00019 	mov	r0, #25
     c50:	ef000000 	svc	0x00000000
     c54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c58:	e12fff1e 	bx	lr

00000c5c <dumppagetable>:
     c5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c60:	e1a04003 	mov	r4, r3
     c64:	e1a03002 	mov	r3, r2
     c68:	e1a02001 	mov	r2, r1
     c6c:	e1a01000 	mov	r1, r0
     c70:	e3a0001a 	mov	r0, #26
     c74:	ef000000 	svc	0x00000000
     c78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c7c:	e12fff1e 	bx	lr

00000c80 <thread_create>:
     c80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c84:	e1a04003 	mov	r4, r3
     c88:	e1a03002 	mov	r3, r2
     c8c:	e1a02001 	mov	r2, r1
     c90:	e1a01000 	mov	r1, r0
     c94:	e3a0001b 	mov	r0, #27
     c98:	ef000000 	svc	0x00000000
     c9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ca0:	e12fff1e 	bx	lr

00000ca4 <thread_exit>:
     ca4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca8:	e1a04003 	mov	r4, r3
     cac:	e1a03002 	mov	r3, r2
     cb0:	e1a02001 	mov	r2, r1
     cb4:	e1a01000 	mov	r1, r0
     cb8:	e3a0001c 	mov	r0, #28
     cbc:	ef000000 	svc	0x00000000
     cc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc4:	e12fff1e 	bx	lr

00000cc8 <thread_join>:
     cc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ccc:	e1a04003 	mov	r4, r3
     cd0:	e1a03002 	mov	r3, r2
     cd4:	e1a02001 	mov	r2, r1
     cd8:	e1a01000 	mov	r1, r0
     cdc:	e3a0001d 	mov	r0, #29
     ce0:	ef000000 	svc	0x00000000
     ce4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce8:	e12fff1e 	bx	lr

00000cec <waitpid>:
     cec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cf0:	e1a04003 	mov	r4, r3
     cf4:	e1a03002 	mov	r3, r2
     cf8:	e1a02001 	mov	r2, r1
     cfc:	e1a01000 	mov	r1, r0
     d00:	e3a0001e 	mov	r0, #30
     d04:	ef000000 	svc	0x00000000
     d08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d0c:	e12fff1e 	bx	lr

00000d10 <barrier_init>:
     d10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d14:	e1a04003 	mov	r4, r3
     d18:	e1a03002 	mov	r3, r2
     d1c:	e1a02001 	mov	r2, r1
     d20:	e1a01000 	mov	r1, r0
     d24:	e3a0001f 	mov	r0, #31
     d28:	ef000000 	svc	0x00000000
     d2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d30:	e12fff1e 	bx	lr

00000d34 <barrier_check>:
     d34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d38:	e1a04003 	mov	r4, r3
     d3c:	e1a03002 	mov	r3, r2
     d40:	e1a02001 	mov	r2, r1
     d44:	e1a01000 	mov	r1, r0
     d48:	e3a00020 	mov	r0, #32
     d4c:	ef000000 	svc	0x00000000
     d50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d54:	e12fff1e 	bx	lr

00000d58 <sleepChan>:
     d58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d5c:	e1a04003 	mov	r4, r3
     d60:	e1a03002 	mov	r3, r2
     d64:	e1a02001 	mov	r2, r1
     d68:	e1a01000 	mov	r1, r0
     d6c:	e3a00024 	mov	r0, #36	@ 0x24
     d70:	ef000000 	svc	0x00000000
     d74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d78:	e12fff1e 	bx	lr

00000d7c <getChannel>:
     d7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d80:	e1a04003 	mov	r4, r3
     d84:	e1a03002 	mov	r3, r2
     d88:	e1a02001 	mov	r2, r1
     d8c:	e1a01000 	mov	r1, r0
     d90:	e3a00025 	mov	r0, #37	@ 0x25
     d94:	ef000000 	svc	0x00000000
     d98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d9c:	e12fff1e 	bx	lr

00000da0 <sigChan>:
     da0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da4:	e1a04003 	mov	r4, r3
     da8:	e1a03002 	mov	r3, r2
     dac:	e1a02001 	mov	r2, r1
     db0:	e1a01000 	mov	r1, r0
     db4:	e3a00026 	mov	r0, #38	@ 0x26
     db8:	ef000000 	svc	0x00000000
     dbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dc0:	e12fff1e 	bx	lr

00000dc4 <sigOneChan>:
     dc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dc8:	e1a04003 	mov	r4, r3
     dcc:	e1a03002 	mov	r3, r2
     dd0:	e1a02001 	mov	r2, r1
     dd4:	e1a01000 	mov	r1, r0
     dd8:	e3a00027 	mov	r0, #39	@ 0x27
     ddc:	ef000000 	svc	0x00000000
     de0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     de4:	e12fff1e 	bx	lr

00000de8 <putc>:
     de8:	e92d4800 	push	{fp, lr}
     dec:	e28db004 	add	fp, sp, #4
     df0:	e24dd008 	sub	sp, sp, #8
     df4:	e50b0008 	str	r0, [fp, #-8]
     df8:	e1a03001 	mov	r3, r1
     dfc:	e54b3009 	strb	r3, [fp, #-9]
     e00:	e24b3009 	sub	r3, fp, #9
     e04:	e3a02001 	mov	r2, #1
     e08:	e1a01003 	mov	r1, r3
     e0c:	e51b0008 	ldr	r0, [fp, #-8]
     e10:	ebfffedd 	bl	98c <write>
     e14:	e1a00000 	nop			@ (mov r0, r0)
     e18:	e24bd004 	sub	sp, fp, #4
     e1c:	e8bd8800 	pop	{fp, pc}

00000e20 <printint>:
     e20:	e92d4800 	push	{fp, lr}
     e24:	e28db004 	add	fp, sp, #4
     e28:	e24dd030 	sub	sp, sp, #48	@ 0x30
     e2c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     e30:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     e34:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     e38:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     e3c:	e3a03000 	mov	r3, #0
     e40:	e50b300c 	str	r3, [fp, #-12]
     e44:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     e48:	e3530000 	cmp	r3, #0
     e4c:	0a000008 	beq	e74 <printint+0x54>
     e50:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e54:	e3530000 	cmp	r3, #0
     e58:	aa000005 	bge	e74 <printint+0x54>
     e5c:	e3a03001 	mov	r3, #1
     e60:	e50b300c 	str	r3, [fp, #-12]
     e64:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e68:	e2633000 	rsb	r3, r3, #0
     e6c:	e50b3010 	str	r3, [fp, #-16]
     e70:	ea000001 	b	e7c <printint+0x5c>
     e74:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e78:	e50b3010 	str	r3, [fp, #-16]
     e7c:	e3a03000 	mov	r3, #0
     e80:	e50b3008 	str	r3, [fp, #-8]
     e84:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     e88:	e51b3010 	ldr	r3, [fp, #-16]
     e8c:	e1a01002 	mov	r1, r2
     e90:	e1a00003 	mov	r0, r3
     e94:	eb0001d5 	bl	15f0 <__aeabi_uidivmod>
     e98:	e1a03001 	mov	r3, r1
     e9c:	e1a01003 	mov	r1, r3
     ea0:	e51b3008 	ldr	r3, [fp, #-8]
     ea4:	e2832001 	add	r2, r3, #1
     ea8:	e50b2008 	str	r2, [fp, #-8]
     eac:	e59f20a0 	ldr	r2, [pc, #160]	@ f54 <printint+0x134>
     eb0:	e7d22001 	ldrb	r2, [r2, r1]
     eb4:	e2433004 	sub	r3, r3, #4
     eb8:	e083300b 	add	r3, r3, fp
     ebc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ec0:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     ec4:	e1a01003 	mov	r1, r3
     ec8:	e51b0010 	ldr	r0, [fp, #-16]
     ecc:	eb00018a 	bl	14fc <__udivsi3>
     ed0:	e1a03000 	mov	r3, r0
     ed4:	e50b3010 	str	r3, [fp, #-16]
     ed8:	e51b3010 	ldr	r3, [fp, #-16]
     edc:	e3530000 	cmp	r3, #0
     ee0:	1affffe7 	bne	e84 <printint+0x64>
     ee4:	e51b300c 	ldr	r3, [fp, #-12]
     ee8:	e3530000 	cmp	r3, #0
     eec:	0a00000e 	beq	f2c <printint+0x10c>
     ef0:	e51b3008 	ldr	r3, [fp, #-8]
     ef4:	e2832001 	add	r2, r3, #1
     ef8:	e50b2008 	str	r2, [fp, #-8]
     efc:	e2433004 	sub	r3, r3, #4
     f00:	e083300b 	add	r3, r3, fp
     f04:	e3a0202d 	mov	r2, #45	@ 0x2d
     f08:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f0c:	ea000006 	b	f2c <printint+0x10c>
     f10:	e24b2020 	sub	r2, fp, #32
     f14:	e51b3008 	ldr	r3, [fp, #-8]
     f18:	e0823003 	add	r3, r2, r3
     f1c:	e5d33000 	ldrb	r3, [r3]
     f20:	e1a01003 	mov	r1, r3
     f24:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     f28:	ebffffae 	bl	de8 <putc>
     f2c:	e51b3008 	ldr	r3, [fp, #-8]
     f30:	e2433001 	sub	r3, r3, #1
     f34:	e50b3008 	str	r3, [fp, #-8]
     f38:	e51b3008 	ldr	r3, [fp, #-8]
     f3c:	e3530000 	cmp	r3, #0
     f40:	aafffff2 	bge	f10 <printint+0xf0>
     f44:	e1a00000 	nop			@ (mov r0, r0)
     f48:	e1a00000 	nop			@ (mov r0, r0)
     f4c:	e24bd004 	sub	sp, fp, #4
     f50:	e8bd8800 	pop	{fp, pc}
     f54:	00001650 	.word	0x00001650

00000f58 <printf>:
     f58:	e92d000e 	push	{r1, r2, r3}
     f5c:	e92d4800 	push	{fp, lr}
     f60:	e28db004 	add	fp, sp, #4
     f64:	e24dd024 	sub	sp, sp, #36	@ 0x24
     f68:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     f6c:	e3a03000 	mov	r3, #0
     f70:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f74:	e28b3008 	add	r3, fp, #8
     f78:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f7c:	e3a03000 	mov	r3, #0
     f80:	e50b3010 	str	r3, [fp, #-16]
     f84:	ea000074 	b	115c <printf+0x204>
     f88:	e59b2004 	ldr	r2, [fp, #4]
     f8c:	e51b3010 	ldr	r3, [fp, #-16]
     f90:	e0823003 	add	r3, r2, r3
     f94:	e5d33000 	ldrb	r3, [r3]
     f98:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     f9c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     fa0:	e3530000 	cmp	r3, #0
     fa4:	1a00000b 	bne	fd8 <printf+0x80>
     fa8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fac:	e3530025 	cmp	r3, #37	@ 0x25
     fb0:	1a000002 	bne	fc0 <printf+0x68>
     fb4:	e3a03025 	mov	r3, #37	@ 0x25
     fb8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     fbc:	ea000063 	b	1150 <printf+0x1f8>
     fc0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fc4:	e6ef3073 	uxtb	r3, r3
     fc8:	e1a01003 	mov	r1, r3
     fcc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fd0:	ebffff84 	bl	de8 <putc>
     fd4:	ea00005d 	b	1150 <printf+0x1f8>
     fd8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     fdc:	e3530025 	cmp	r3, #37	@ 0x25
     fe0:	1a00005a 	bne	1150 <printf+0x1f8>
     fe4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fe8:	e3530064 	cmp	r3, #100	@ 0x64
     fec:	1a00000a 	bne	101c <printf+0xc4>
     ff0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ff4:	e5933000 	ldr	r3, [r3]
     ff8:	e1a01003 	mov	r1, r3
     ffc:	e3a03001 	mov	r3, #1
    1000:	e3a0200a 	mov	r2, #10
    1004:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1008:	ebffff84 	bl	e20 <printint>
    100c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1010:	e2833004 	add	r3, r3, #4
    1014:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1018:	ea00004a 	b	1148 <printf+0x1f0>
    101c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1020:	e3530078 	cmp	r3, #120	@ 0x78
    1024:	0a000002 	beq	1034 <printf+0xdc>
    1028:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    102c:	e3530070 	cmp	r3, #112	@ 0x70
    1030:	1a00000a 	bne	1060 <printf+0x108>
    1034:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1038:	e5933000 	ldr	r3, [r3]
    103c:	e1a01003 	mov	r1, r3
    1040:	e3a03000 	mov	r3, #0
    1044:	e3a02010 	mov	r2, #16
    1048:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    104c:	ebffff73 	bl	e20 <printint>
    1050:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1054:	e2833004 	add	r3, r3, #4
    1058:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    105c:	ea000039 	b	1148 <printf+0x1f0>
    1060:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1064:	e3530073 	cmp	r3, #115	@ 0x73
    1068:	1a000018 	bne	10d0 <printf+0x178>
    106c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1070:	e5933000 	ldr	r3, [r3]
    1074:	e50b300c 	str	r3, [fp, #-12]
    1078:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    107c:	e2833004 	add	r3, r3, #4
    1080:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1084:	e51b300c 	ldr	r3, [fp, #-12]
    1088:	e3530000 	cmp	r3, #0
    108c:	1a00000a 	bne	10bc <printf+0x164>
    1090:	e59f30f4 	ldr	r3, [pc, #244]	@ 118c <printf+0x234>
    1094:	e50b300c 	str	r3, [fp, #-12]
    1098:	ea000007 	b	10bc <printf+0x164>
    109c:	e51b300c 	ldr	r3, [fp, #-12]
    10a0:	e5d33000 	ldrb	r3, [r3]
    10a4:	e1a01003 	mov	r1, r3
    10a8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10ac:	ebffff4d 	bl	de8 <putc>
    10b0:	e51b300c 	ldr	r3, [fp, #-12]
    10b4:	e2833001 	add	r3, r3, #1
    10b8:	e50b300c 	str	r3, [fp, #-12]
    10bc:	e51b300c 	ldr	r3, [fp, #-12]
    10c0:	e5d33000 	ldrb	r3, [r3]
    10c4:	e3530000 	cmp	r3, #0
    10c8:	1afffff3 	bne	109c <printf+0x144>
    10cc:	ea00001d 	b	1148 <printf+0x1f0>
    10d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10d4:	e3530063 	cmp	r3, #99	@ 0x63
    10d8:	1a000009 	bne	1104 <printf+0x1ac>
    10dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10e0:	e5933000 	ldr	r3, [r3]
    10e4:	e6ef3073 	uxtb	r3, r3
    10e8:	e1a01003 	mov	r1, r3
    10ec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10f0:	ebffff3c 	bl	de8 <putc>
    10f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10f8:	e2833004 	add	r3, r3, #4
    10fc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1100:	ea000010 	b	1148 <printf+0x1f0>
    1104:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1108:	e3530025 	cmp	r3, #37	@ 0x25
    110c:	1a000005 	bne	1128 <printf+0x1d0>
    1110:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1114:	e6ef3073 	uxtb	r3, r3
    1118:	e1a01003 	mov	r1, r3
    111c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1120:	ebffff30 	bl	de8 <putc>
    1124:	ea000007 	b	1148 <printf+0x1f0>
    1128:	e3a01025 	mov	r1, #37	@ 0x25
    112c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1130:	ebffff2c 	bl	de8 <putc>
    1134:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1138:	e6ef3073 	uxtb	r3, r3
    113c:	e1a01003 	mov	r1, r3
    1140:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1144:	ebffff27 	bl	de8 <putc>
    1148:	e3a03000 	mov	r3, #0
    114c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1150:	e51b3010 	ldr	r3, [fp, #-16]
    1154:	e2833001 	add	r3, r3, #1
    1158:	e50b3010 	str	r3, [fp, #-16]
    115c:	e59b2004 	ldr	r2, [fp, #4]
    1160:	e51b3010 	ldr	r3, [fp, #-16]
    1164:	e0823003 	add	r3, r2, r3
    1168:	e5d33000 	ldrb	r3, [r3]
    116c:	e3530000 	cmp	r3, #0
    1170:	1affff84 	bne	f88 <printf+0x30>
    1174:	e1a00000 	nop			@ (mov r0, r0)
    1178:	e1a00000 	nop			@ (mov r0, r0)
    117c:	e24bd004 	sub	sp, fp, #4
    1180:	e8bd4800 	pop	{fp, lr}
    1184:	e28dd00c 	add	sp, sp, #12
    1188:	e12fff1e 	bx	lr
    118c:	00001648 	.word	0x00001648

00001190 <free>:
    1190:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1194:	e28db000 	add	fp, sp, #0
    1198:	e24dd014 	sub	sp, sp, #20
    119c:	e50b0010 	str	r0, [fp, #-16]
    11a0:	e51b3010 	ldr	r3, [fp, #-16]
    11a4:	e2433008 	sub	r3, r3, #8
    11a8:	e50b300c 	str	r3, [fp, #-12]
    11ac:	e59f3154 	ldr	r3, [pc, #340]	@ 1308 <free+0x178>
    11b0:	e5933000 	ldr	r3, [r3]
    11b4:	e50b3008 	str	r3, [fp, #-8]
    11b8:	ea000010 	b	1200 <free+0x70>
    11bc:	e51b3008 	ldr	r3, [fp, #-8]
    11c0:	e5933000 	ldr	r3, [r3]
    11c4:	e51b2008 	ldr	r2, [fp, #-8]
    11c8:	e1520003 	cmp	r2, r3
    11cc:	3a000008 	bcc	11f4 <free+0x64>
    11d0:	e51b200c 	ldr	r2, [fp, #-12]
    11d4:	e51b3008 	ldr	r3, [fp, #-8]
    11d8:	e1520003 	cmp	r2, r3
    11dc:	8a000010 	bhi	1224 <free+0x94>
    11e0:	e51b3008 	ldr	r3, [fp, #-8]
    11e4:	e5933000 	ldr	r3, [r3]
    11e8:	e51b200c 	ldr	r2, [fp, #-12]
    11ec:	e1520003 	cmp	r2, r3
    11f0:	3a00000b 	bcc	1224 <free+0x94>
    11f4:	e51b3008 	ldr	r3, [fp, #-8]
    11f8:	e5933000 	ldr	r3, [r3]
    11fc:	e50b3008 	str	r3, [fp, #-8]
    1200:	e51b200c 	ldr	r2, [fp, #-12]
    1204:	e51b3008 	ldr	r3, [fp, #-8]
    1208:	e1520003 	cmp	r2, r3
    120c:	9affffea 	bls	11bc <free+0x2c>
    1210:	e51b3008 	ldr	r3, [fp, #-8]
    1214:	e5933000 	ldr	r3, [r3]
    1218:	e51b200c 	ldr	r2, [fp, #-12]
    121c:	e1520003 	cmp	r2, r3
    1220:	2affffe5 	bcs	11bc <free+0x2c>
    1224:	e51b300c 	ldr	r3, [fp, #-12]
    1228:	e5933004 	ldr	r3, [r3, #4]
    122c:	e1a03183 	lsl	r3, r3, #3
    1230:	e51b200c 	ldr	r2, [fp, #-12]
    1234:	e0822003 	add	r2, r2, r3
    1238:	e51b3008 	ldr	r3, [fp, #-8]
    123c:	e5933000 	ldr	r3, [r3]
    1240:	e1520003 	cmp	r2, r3
    1244:	1a00000d 	bne	1280 <free+0xf0>
    1248:	e51b300c 	ldr	r3, [fp, #-12]
    124c:	e5932004 	ldr	r2, [r3, #4]
    1250:	e51b3008 	ldr	r3, [fp, #-8]
    1254:	e5933000 	ldr	r3, [r3]
    1258:	e5933004 	ldr	r3, [r3, #4]
    125c:	e0822003 	add	r2, r2, r3
    1260:	e51b300c 	ldr	r3, [fp, #-12]
    1264:	e5832004 	str	r2, [r3, #4]
    1268:	e51b3008 	ldr	r3, [fp, #-8]
    126c:	e5933000 	ldr	r3, [r3]
    1270:	e5932000 	ldr	r2, [r3]
    1274:	e51b300c 	ldr	r3, [fp, #-12]
    1278:	e5832000 	str	r2, [r3]
    127c:	ea000003 	b	1290 <free+0x100>
    1280:	e51b3008 	ldr	r3, [fp, #-8]
    1284:	e5932000 	ldr	r2, [r3]
    1288:	e51b300c 	ldr	r3, [fp, #-12]
    128c:	e5832000 	str	r2, [r3]
    1290:	e51b3008 	ldr	r3, [fp, #-8]
    1294:	e5933004 	ldr	r3, [r3, #4]
    1298:	e1a03183 	lsl	r3, r3, #3
    129c:	e51b2008 	ldr	r2, [fp, #-8]
    12a0:	e0823003 	add	r3, r2, r3
    12a4:	e51b200c 	ldr	r2, [fp, #-12]
    12a8:	e1520003 	cmp	r2, r3
    12ac:	1a00000b 	bne	12e0 <free+0x150>
    12b0:	e51b3008 	ldr	r3, [fp, #-8]
    12b4:	e5932004 	ldr	r2, [r3, #4]
    12b8:	e51b300c 	ldr	r3, [fp, #-12]
    12bc:	e5933004 	ldr	r3, [r3, #4]
    12c0:	e0822003 	add	r2, r2, r3
    12c4:	e51b3008 	ldr	r3, [fp, #-8]
    12c8:	e5832004 	str	r2, [r3, #4]
    12cc:	e51b300c 	ldr	r3, [fp, #-12]
    12d0:	e5932000 	ldr	r2, [r3]
    12d4:	e51b3008 	ldr	r3, [fp, #-8]
    12d8:	e5832000 	str	r2, [r3]
    12dc:	ea000002 	b	12ec <free+0x15c>
    12e0:	e51b3008 	ldr	r3, [fp, #-8]
    12e4:	e51b200c 	ldr	r2, [fp, #-12]
    12e8:	e5832000 	str	r2, [r3]
    12ec:	e59f2014 	ldr	r2, [pc, #20]	@ 1308 <free+0x178>
    12f0:	e51b3008 	ldr	r3, [fp, #-8]
    12f4:	e5823000 	str	r3, [r2]
    12f8:	e1a00000 	nop			@ (mov r0, r0)
    12fc:	e28bd000 	add	sp, fp, #0
    1300:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1304:	e12fff1e 	bx	lr
    1308:	0000166c 	.word	0x0000166c

0000130c <morecore>:
    130c:	e92d4800 	push	{fp, lr}
    1310:	e28db004 	add	fp, sp, #4
    1314:	e24dd010 	sub	sp, sp, #16
    1318:	e50b0010 	str	r0, [fp, #-16]
    131c:	e51b3010 	ldr	r3, [fp, #-16]
    1320:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1324:	2a000001 	bcs	1330 <morecore+0x24>
    1328:	e3a03a01 	mov	r3, #4096	@ 0x1000
    132c:	e50b3010 	str	r3, [fp, #-16]
    1330:	e51b3010 	ldr	r3, [fp, #-16]
    1334:	e1a03183 	lsl	r3, r3, #3
    1338:	e1a00003 	mov	r0, r3
    133c:	ebfffe07 	bl	b60 <sbrk>
    1340:	e50b0008 	str	r0, [fp, #-8]
    1344:	e51b3008 	ldr	r3, [fp, #-8]
    1348:	e3730001 	cmn	r3, #1
    134c:	1a000001 	bne	1358 <morecore+0x4c>
    1350:	e3a03000 	mov	r3, #0
    1354:	ea00000a 	b	1384 <morecore+0x78>
    1358:	e51b3008 	ldr	r3, [fp, #-8]
    135c:	e50b300c 	str	r3, [fp, #-12]
    1360:	e51b300c 	ldr	r3, [fp, #-12]
    1364:	e51b2010 	ldr	r2, [fp, #-16]
    1368:	e5832004 	str	r2, [r3, #4]
    136c:	e51b300c 	ldr	r3, [fp, #-12]
    1370:	e2833008 	add	r3, r3, #8
    1374:	e1a00003 	mov	r0, r3
    1378:	ebffff84 	bl	1190 <free>
    137c:	e59f300c 	ldr	r3, [pc, #12]	@ 1390 <morecore+0x84>
    1380:	e5933000 	ldr	r3, [r3]
    1384:	e1a00003 	mov	r0, r3
    1388:	e24bd004 	sub	sp, fp, #4
    138c:	e8bd8800 	pop	{fp, pc}
    1390:	0000166c 	.word	0x0000166c

00001394 <malloc>:
    1394:	e92d4800 	push	{fp, lr}
    1398:	e28db004 	add	fp, sp, #4
    139c:	e24dd018 	sub	sp, sp, #24
    13a0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    13a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13a8:	e2833007 	add	r3, r3, #7
    13ac:	e1a031a3 	lsr	r3, r3, #3
    13b0:	e2833001 	add	r3, r3, #1
    13b4:	e50b3010 	str	r3, [fp, #-16]
    13b8:	e59f3134 	ldr	r3, [pc, #308]	@ 14f4 <malloc+0x160>
    13bc:	e5933000 	ldr	r3, [r3]
    13c0:	e50b300c 	str	r3, [fp, #-12]
    13c4:	e51b300c 	ldr	r3, [fp, #-12]
    13c8:	e3530000 	cmp	r3, #0
    13cc:	1a00000b 	bne	1400 <malloc+0x6c>
    13d0:	e59f3120 	ldr	r3, [pc, #288]	@ 14f8 <malloc+0x164>
    13d4:	e50b300c 	str	r3, [fp, #-12]
    13d8:	e59f2114 	ldr	r2, [pc, #276]	@ 14f4 <malloc+0x160>
    13dc:	e51b300c 	ldr	r3, [fp, #-12]
    13e0:	e5823000 	str	r3, [r2]
    13e4:	e59f3108 	ldr	r3, [pc, #264]	@ 14f4 <malloc+0x160>
    13e8:	e5933000 	ldr	r3, [r3]
    13ec:	e59f2104 	ldr	r2, [pc, #260]	@ 14f8 <malloc+0x164>
    13f0:	e5823000 	str	r3, [r2]
    13f4:	e59f30fc 	ldr	r3, [pc, #252]	@ 14f8 <malloc+0x164>
    13f8:	e3a02000 	mov	r2, #0
    13fc:	e5832004 	str	r2, [r3, #4]
    1400:	e51b300c 	ldr	r3, [fp, #-12]
    1404:	e5933000 	ldr	r3, [r3]
    1408:	e50b3008 	str	r3, [fp, #-8]
    140c:	e51b3008 	ldr	r3, [fp, #-8]
    1410:	e5933004 	ldr	r3, [r3, #4]
    1414:	e51b2010 	ldr	r2, [fp, #-16]
    1418:	e1520003 	cmp	r2, r3
    141c:	8a00001e 	bhi	149c <malloc+0x108>
    1420:	e51b3008 	ldr	r3, [fp, #-8]
    1424:	e5933004 	ldr	r3, [r3, #4]
    1428:	e51b2010 	ldr	r2, [fp, #-16]
    142c:	e1520003 	cmp	r2, r3
    1430:	1a000004 	bne	1448 <malloc+0xb4>
    1434:	e51b3008 	ldr	r3, [fp, #-8]
    1438:	e5932000 	ldr	r2, [r3]
    143c:	e51b300c 	ldr	r3, [fp, #-12]
    1440:	e5832000 	str	r2, [r3]
    1444:	ea00000e 	b	1484 <malloc+0xf0>
    1448:	e51b3008 	ldr	r3, [fp, #-8]
    144c:	e5932004 	ldr	r2, [r3, #4]
    1450:	e51b3010 	ldr	r3, [fp, #-16]
    1454:	e0422003 	sub	r2, r2, r3
    1458:	e51b3008 	ldr	r3, [fp, #-8]
    145c:	e5832004 	str	r2, [r3, #4]
    1460:	e51b3008 	ldr	r3, [fp, #-8]
    1464:	e5933004 	ldr	r3, [r3, #4]
    1468:	e1a03183 	lsl	r3, r3, #3
    146c:	e51b2008 	ldr	r2, [fp, #-8]
    1470:	e0823003 	add	r3, r2, r3
    1474:	e50b3008 	str	r3, [fp, #-8]
    1478:	e51b3008 	ldr	r3, [fp, #-8]
    147c:	e51b2010 	ldr	r2, [fp, #-16]
    1480:	e5832004 	str	r2, [r3, #4]
    1484:	e59f2068 	ldr	r2, [pc, #104]	@ 14f4 <malloc+0x160>
    1488:	e51b300c 	ldr	r3, [fp, #-12]
    148c:	e5823000 	str	r3, [r2]
    1490:	e51b3008 	ldr	r3, [fp, #-8]
    1494:	e2833008 	add	r3, r3, #8
    1498:	ea000012 	b	14e8 <malloc+0x154>
    149c:	e59f3050 	ldr	r3, [pc, #80]	@ 14f4 <malloc+0x160>
    14a0:	e5933000 	ldr	r3, [r3]
    14a4:	e51b2008 	ldr	r2, [fp, #-8]
    14a8:	e1520003 	cmp	r2, r3
    14ac:	1a000007 	bne	14d0 <malloc+0x13c>
    14b0:	e51b0010 	ldr	r0, [fp, #-16]
    14b4:	ebffff94 	bl	130c <morecore>
    14b8:	e50b0008 	str	r0, [fp, #-8]
    14bc:	e51b3008 	ldr	r3, [fp, #-8]
    14c0:	e3530000 	cmp	r3, #0
    14c4:	1a000001 	bne	14d0 <malloc+0x13c>
    14c8:	e3a03000 	mov	r3, #0
    14cc:	ea000005 	b	14e8 <malloc+0x154>
    14d0:	e51b3008 	ldr	r3, [fp, #-8]
    14d4:	e50b300c 	str	r3, [fp, #-12]
    14d8:	e51b3008 	ldr	r3, [fp, #-8]
    14dc:	e5933000 	ldr	r3, [r3]
    14e0:	e50b3008 	str	r3, [fp, #-8]
    14e4:	eaffffc8 	b	140c <malloc+0x78>
    14e8:	e1a00003 	mov	r0, r3
    14ec:	e24bd004 	sub	sp, fp, #4
    14f0:	e8bd8800 	pop	{fp, pc}
    14f4:	0000166c 	.word	0x0000166c
    14f8:	00001664 	.word	0x00001664

000014fc <__udivsi3>:
    14fc:	e2512001 	subs	r2, r1, #1
    1500:	012fff1e 	bxeq	lr
    1504:	3a000036 	bcc	15e4 <__udivsi3+0xe8>
    1508:	e1500001 	cmp	r0, r1
    150c:	9a000022 	bls	159c <__udivsi3+0xa0>
    1510:	e1110002 	tst	r1, r2
    1514:	0a000023 	beq	15a8 <__udivsi3+0xac>
    1518:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    151c:	01a01181 	lsleq	r1, r1, #3
    1520:	03a03008 	moveq	r3, #8
    1524:	13a03001 	movne	r3, #1
    1528:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    152c:	31510000 	cmpcc	r1, r0
    1530:	31a01201 	lslcc	r1, r1, #4
    1534:	31a03203 	lslcc	r3, r3, #4
    1538:	3afffffa 	bcc	1528 <__udivsi3+0x2c>
    153c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1540:	31510000 	cmpcc	r1, r0
    1544:	31a01081 	lslcc	r1, r1, #1
    1548:	31a03083 	lslcc	r3, r3, #1
    154c:	3afffffa 	bcc	153c <__udivsi3+0x40>
    1550:	e3a02000 	mov	r2, #0
    1554:	e1500001 	cmp	r0, r1
    1558:	20400001 	subcs	r0, r0, r1
    155c:	21822003 	orrcs	r2, r2, r3
    1560:	e15000a1 	cmp	r0, r1, lsr #1
    1564:	204000a1 	subcs	r0, r0, r1, lsr #1
    1568:	218220a3 	orrcs	r2, r2, r3, lsr #1
    156c:	e1500121 	cmp	r0, r1, lsr #2
    1570:	20400121 	subcs	r0, r0, r1, lsr #2
    1574:	21822123 	orrcs	r2, r2, r3, lsr #2
    1578:	e15001a1 	cmp	r0, r1, lsr #3
    157c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1580:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1584:	e3500000 	cmp	r0, #0
    1588:	11b03223 	lsrsne	r3, r3, #4
    158c:	11a01221 	lsrne	r1, r1, #4
    1590:	1affffef 	bne	1554 <__udivsi3+0x58>
    1594:	e1a00002 	mov	r0, r2
    1598:	e12fff1e 	bx	lr
    159c:	03a00001 	moveq	r0, #1
    15a0:	13a00000 	movne	r0, #0
    15a4:	e12fff1e 	bx	lr
    15a8:	e3510801 	cmp	r1, #65536	@ 0x10000
    15ac:	21a01821 	lsrcs	r1, r1, #16
    15b0:	23a02010 	movcs	r2, #16
    15b4:	33a02000 	movcc	r2, #0
    15b8:	e3510c01 	cmp	r1, #256	@ 0x100
    15bc:	21a01421 	lsrcs	r1, r1, #8
    15c0:	22822008 	addcs	r2, r2, #8
    15c4:	e3510010 	cmp	r1, #16
    15c8:	21a01221 	lsrcs	r1, r1, #4
    15cc:	22822004 	addcs	r2, r2, #4
    15d0:	e3510004 	cmp	r1, #4
    15d4:	82822003 	addhi	r2, r2, #3
    15d8:	908220a1 	addls	r2, r2, r1, lsr #1
    15dc:	e1a00230 	lsr	r0, r0, r2
    15e0:	e12fff1e 	bx	lr
    15e4:	e3500000 	cmp	r0, #0
    15e8:	13e00000 	mvnne	r0, #0
    15ec:	ea000007 	b	1610 <__aeabi_idiv0>

000015f0 <__aeabi_uidivmod>:
    15f0:	e3510000 	cmp	r1, #0
    15f4:	0afffffa 	beq	15e4 <__udivsi3+0xe8>
    15f8:	e92d4003 	push	{r0, r1, lr}
    15fc:	ebffffbe 	bl	14fc <__udivsi3>
    1600:	e8bd4006 	pop	{r1, r2, lr}
    1604:	e0030092 	mul	r3, r2, r0
    1608:	e0411003 	sub	r1, r1, r3
    160c:	e12fff1e 	bx	lr

00001610 <__aeabi_idiv0>:
    1610:	e12fff1e 	bx	lr
