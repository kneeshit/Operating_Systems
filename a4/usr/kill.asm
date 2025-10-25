
_kill:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      14:	e51b3010 	ldr	r3, [fp, #-16]
      18:	e3530000 	cmp	r3, #0
      1c:	ca000003 	bgt	30 <main+0x30>
      20:	e59f105c 	ldr	r1, [pc, #92]	@ 84 <main+0x84>
      24:	e3a00002 	mov	r0, #2
      28:	eb000397 	bl	e8c <printf>
      2c:	eb0001ff 	bl	830 <exit>
      30:	e3a03001 	mov	r3, #1
      34:	e50b3008 	str	r3, [fp, #-8]
      38:	ea00000c 	b	70 <main+0x70>
      3c:	e51b3008 	ldr	r3, [fp, #-8]
      40:	e1a03103 	lsl	r3, r3, #2
      44:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      48:	e0823003 	add	r3, r2, r3
      4c:	e5933000 	ldr	r3, [r3]
      50:	e1a00003 	mov	r0, r3
      54:	eb000103 	bl	468 <atoi>
      58:	e1a03000 	mov	r3, r0
      5c:	e1a00003 	mov	r0, r3
      60:	eb000228 	bl	908 <kill>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e2833001 	add	r3, r3, #1
      6c:	e50b3008 	str	r3, [fp, #-8]
      70:	e51b2008 	ldr	r2, [fp, #-8]
      74:	e51b3010 	ldr	r3, [fp, #-16]
      78:	e1520003 	cmp	r2, r3
      7c:	baffffee 	blt	3c <main+0x3c>
      80:	eb0001ea 	bl	830 <exit>
      84:	00001548 	.word	0x00001548

00000088 <strcpy>:
      88:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      8c:	e28db000 	add	fp, sp, #0
      90:	e24dd014 	sub	sp, sp, #20
      94:	e50b0010 	str	r0, [fp, #-16]
      98:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      9c:	e51b3010 	ldr	r3, [fp, #-16]
      a0:	e50b3008 	str	r3, [fp, #-8]
      a4:	e1a00000 	nop			@ (mov r0, r0)
      a8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      ac:	e2823001 	add	r3, r2, #1
      b0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      b4:	e51b3010 	ldr	r3, [fp, #-16]
      b8:	e2831001 	add	r1, r3, #1
      bc:	e50b1010 	str	r1, [fp, #-16]
      c0:	e5d22000 	ldrb	r2, [r2]
      c4:	e5c32000 	strb	r2, [r3]
      c8:	e5d33000 	ldrb	r3, [r3]
      cc:	e3530000 	cmp	r3, #0
      d0:	1afffff4 	bne	a8 <strcpy+0x20>
      d4:	e51b3008 	ldr	r3, [fp, #-8]
      d8:	e1a00003 	mov	r0, r3
      dc:	e28bd000 	add	sp, fp, #0
      e0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      e4:	e12fff1e 	bx	lr

000000e8 <strcmp>:
      e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      ec:	e28db000 	add	fp, sp, #0
      f0:	e24dd00c 	sub	sp, sp, #12
      f4:	e50b0008 	str	r0, [fp, #-8]
      f8:	e50b100c 	str	r1, [fp, #-12]
      fc:	ea000005 	b	118 <strcmp+0x30>
     100:	e51b3008 	ldr	r3, [fp, #-8]
     104:	e2833001 	add	r3, r3, #1
     108:	e50b3008 	str	r3, [fp, #-8]
     10c:	e51b300c 	ldr	r3, [fp, #-12]
     110:	e2833001 	add	r3, r3, #1
     114:	e50b300c 	str	r3, [fp, #-12]
     118:	e51b3008 	ldr	r3, [fp, #-8]
     11c:	e5d33000 	ldrb	r3, [r3]
     120:	e3530000 	cmp	r3, #0
     124:	0a000005 	beq	140 <strcmp+0x58>
     128:	e51b3008 	ldr	r3, [fp, #-8]
     12c:	e5d32000 	ldrb	r2, [r3]
     130:	e51b300c 	ldr	r3, [fp, #-12]
     134:	e5d33000 	ldrb	r3, [r3]
     138:	e1520003 	cmp	r2, r3
     13c:	0affffef 	beq	100 <strcmp+0x18>
     140:	e51b3008 	ldr	r3, [fp, #-8]
     144:	e5d33000 	ldrb	r3, [r3]
     148:	e1a02003 	mov	r2, r3
     14c:	e51b300c 	ldr	r3, [fp, #-12]
     150:	e5d33000 	ldrb	r3, [r3]
     154:	e0423003 	sub	r3, r2, r3
     158:	e1a00003 	mov	r0, r3
     15c:	e28bd000 	add	sp, fp, #0
     160:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     164:	e12fff1e 	bx	lr

00000168 <strlen>:
     168:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     16c:	e28db000 	add	fp, sp, #0
     170:	e24dd014 	sub	sp, sp, #20
     174:	e50b0010 	str	r0, [fp, #-16]
     178:	e3a03000 	mov	r3, #0
     17c:	e50b3008 	str	r3, [fp, #-8]
     180:	ea000002 	b	190 <strlen+0x28>
     184:	e51b3008 	ldr	r3, [fp, #-8]
     188:	e2833001 	add	r3, r3, #1
     18c:	e50b3008 	str	r3, [fp, #-8]
     190:	e51b3008 	ldr	r3, [fp, #-8]
     194:	e51b2010 	ldr	r2, [fp, #-16]
     198:	e0823003 	add	r3, r2, r3
     19c:	e5d33000 	ldrb	r3, [r3]
     1a0:	e3530000 	cmp	r3, #0
     1a4:	1afffff6 	bne	184 <strlen+0x1c>
     1a8:	e51b3008 	ldr	r3, [fp, #-8]
     1ac:	e1a00003 	mov	r0, r3
     1b0:	e28bd000 	add	sp, fp, #0
     1b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1b8:	e12fff1e 	bx	lr

000001bc <memset>:
     1bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1c0:	e28db000 	add	fp, sp, #0
     1c4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     1c8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     1cc:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     1d0:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     1d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     1d8:	e50b3008 	str	r3, [fp, #-8]
     1dc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1e0:	e54b300d 	strb	r3, [fp, #-13]
     1e4:	e55b200d 	ldrb	r2, [fp, #-13]
     1e8:	e1a03002 	mov	r3, r2
     1ec:	e1a03403 	lsl	r3, r3, #8
     1f0:	e0833002 	add	r3, r3, r2
     1f4:	e1a03803 	lsl	r3, r3, #16
     1f8:	e1a02003 	mov	r2, r3
     1fc:	e55b300d 	ldrb	r3, [fp, #-13]
     200:	e1a03403 	lsl	r3, r3, #8
     204:	e1822003 	orr	r2, r2, r3
     208:	e55b300d 	ldrb	r3, [fp, #-13]
     20c:	e1823003 	orr	r3, r2, r3
     210:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     214:	ea000008 	b	23c <memset+0x80>
     218:	e51b3008 	ldr	r3, [fp, #-8]
     21c:	e55b200d 	ldrb	r2, [fp, #-13]
     220:	e5c32000 	strb	r2, [r3]
     224:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     228:	e2433001 	sub	r3, r3, #1
     22c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     230:	e51b3008 	ldr	r3, [fp, #-8]
     234:	e2833001 	add	r3, r3, #1
     238:	e50b3008 	str	r3, [fp, #-8]
     23c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     240:	e3530000 	cmp	r3, #0
     244:	0a000003 	beq	258 <memset+0x9c>
     248:	e51b3008 	ldr	r3, [fp, #-8]
     24c:	e2033003 	and	r3, r3, #3
     250:	e3530000 	cmp	r3, #0
     254:	1affffef 	bne	218 <memset+0x5c>
     258:	e51b3008 	ldr	r3, [fp, #-8]
     25c:	e50b300c 	str	r3, [fp, #-12]
     260:	ea000008 	b	288 <memset+0xcc>
     264:	e51b300c 	ldr	r3, [fp, #-12]
     268:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     26c:	e5832000 	str	r2, [r3]
     270:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     274:	e2433004 	sub	r3, r3, #4
     278:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     27c:	e51b300c 	ldr	r3, [fp, #-12]
     280:	e2833004 	add	r3, r3, #4
     284:	e50b300c 	str	r3, [fp, #-12]
     288:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     28c:	e3530003 	cmp	r3, #3
     290:	8afffff3 	bhi	264 <memset+0xa8>
     294:	e51b300c 	ldr	r3, [fp, #-12]
     298:	e50b3008 	str	r3, [fp, #-8]
     29c:	ea000008 	b	2c4 <memset+0x108>
     2a0:	e51b3008 	ldr	r3, [fp, #-8]
     2a4:	e55b200d 	ldrb	r2, [fp, #-13]
     2a8:	e5c32000 	strb	r2, [r3]
     2ac:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2b0:	e2433001 	sub	r3, r3, #1
     2b4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2b8:	e51b3008 	ldr	r3, [fp, #-8]
     2bc:	e2833001 	add	r3, r3, #1
     2c0:	e50b3008 	str	r3, [fp, #-8]
     2c4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2c8:	e3530000 	cmp	r3, #0
     2cc:	1afffff3 	bne	2a0 <memset+0xe4>
     2d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2d4:	e1a00003 	mov	r0, r3
     2d8:	e28bd000 	add	sp, fp, #0
     2dc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2e0:	e12fff1e 	bx	lr

000002e4 <strchr>:
     2e4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2e8:	e28db000 	add	fp, sp, #0
     2ec:	e24dd00c 	sub	sp, sp, #12
     2f0:	e50b0008 	str	r0, [fp, #-8]
     2f4:	e1a03001 	mov	r3, r1
     2f8:	e54b3009 	strb	r3, [fp, #-9]
     2fc:	ea000009 	b	328 <strchr+0x44>
     300:	e51b3008 	ldr	r3, [fp, #-8]
     304:	e5d33000 	ldrb	r3, [r3]
     308:	e55b2009 	ldrb	r2, [fp, #-9]
     30c:	e1520003 	cmp	r2, r3
     310:	1a000001 	bne	31c <strchr+0x38>
     314:	e51b3008 	ldr	r3, [fp, #-8]
     318:	ea000007 	b	33c <strchr+0x58>
     31c:	e51b3008 	ldr	r3, [fp, #-8]
     320:	e2833001 	add	r3, r3, #1
     324:	e50b3008 	str	r3, [fp, #-8]
     328:	e51b3008 	ldr	r3, [fp, #-8]
     32c:	e5d33000 	ldrb	r3, [r3]
     330:	e3530000 	cmp	r3, #0
     334:	1afffff1 	bne	300 <strchr+0x1c>
     338:	e3a03000 	mov	r3, #0
     33c:	e1a00003 	mov	r0, r3
     340:	e28bd000 	add	sp, fp, #0
     344:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     348:	e12fff1e 	bx	lr

0000034c <gets>:
     34c:	e92d4800 	push	{fp, lr}
     350:	e28db004 	add	fp, sp, #4
     354:	e24dd018 	sub	sp, sp, #24
     358:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     35c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     360:	e3a03000 	mov	r3, #0
     364:	e50b3008 	str	r3, [fp, #-8]
     368:	ea000016 	b	3c8 <gets+0x7c>
     36c:	e24b300d 	sub	r3, fp, #13
     370:	e3a02001 	mov	r2, #1
     374:	e1a01003 	mov	r1, r3
     378:	e3a00000 	mov	r0, #0
     37c:	eb000146 	bl	89c <read>
     380:	e50b000c 	str	r0, [fp, #-12]
     384:	e51b300c 	ldr	r3, [fp, #-12]
     388:	e3530000 	cmp	r3, #0
     38c:	da000013 	ble	3e0 <gets+0x94>
     390:	e51b3008 	ldr	r3, [fp, #-8]
     394:	e2832001 	add	r2, r3, #1
     398:	e50b2008 	str	r2, [fp, #-8]
     39c:	e1a02003 	mov	r2, r3
     3a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3a4:	e0833002 	add	r3, r3, r2
     3a8:	e55b200d 	ldrb	r2, [fp, #-13]
     3ac:	e5c32000 	strb	r2, [r3]
     3b0:	e55b300d 	ldrb	r3, [fp, #-13]
     3b4:	e353000a 	cmp	r3, #10
     3b8:	0a000009 	beq	3e4 <gets+0x98>
     3bc:	e55b300d 	ldrb	r3, [fp, #-13]
     3c0:	e353000d 	cmp	r3, #13
     3c4:	0a000006 	beq	3e4 <gets+0x98>
     3c8:	e51b3008 	ldr	r3, [fp, #-8]
     3cc:	e2833001 	add	r3, r3, #1
     3d0:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     3d4:	e1520003 	cmp	r2, r3
     3d8:	caffffe3 	bgt	36c <gets+0x20>
     3dc:	ea000000 	b	3e4 <gets+0x98>
     3e0:	e1a00000 	nop			@ (mov r0, r0)
     3e4:	e51b3008 	ldr	r3, [fp, #-8]
     3e8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     3ec:	e0823003 	add	r3, r2, r3
     3f0:	e3a02000 	mov	r2, #0
     3f4:	e5c32000 	strb	r2, [r3]
     3f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3fc:	e1a00003 	mov	r0, r3
     400:	e24bd004 	sub	sp, fp, #4
     404:	e8bd8800 	pop	{fp, pc}

00000408 <stat>:
     408:	e92d4800 	push	{fp, lr}
     40c:	e28db004 	add	fp, sp, #4
     410:	e24dd010 	sub	sp, sp, #16
     414:	e50b0010 	str	r0, [fp, #-16]
     418:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     41c:	e3a01000 	mov	r1, #0
     420:	e51b0010 	ldr	r0, [fp, #-16]
     424:	eb000149 	bl	950 <open>
     428:	e50b0008 	str	r0, [fp, #-8]
     42c:	e51b3008 	ldr	r3, [fp, #-8]
     430:	e3530000 	cmp	r3, #0
     434:	aa000001 	bge	440 <stat+0x38>
     438:	e3e03000 	mvn	r3, #0
     43c:	ea000006 	b	45c <stat+0x54>
     440:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     444:	e51b0008 	ldr	r0, [fp, #-8]
     448:	eb00015b 	bl	9bc <fstat>
     44c:	e50b000c 	str	r0, [fp, #-12]
     450:	e51b0008 	ldr	r0, [fp, #-8]
     454:	eb000122 	bl	8e4 <close>
     458:	e51b300c 	ldr	r3, [fp, #-12]
     45c:	e1a00003 	mov	r0, r3
     460:	e24bd004 	sub	sp, fp, #4
     464:	e8bd8800 	pop	{fp, pc}

00000468 <atoi>:
     468:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     46c:	e28db000 	add	fp, sp, #0
     470:	e24dd014 	sub	sp, sp, #20
     474:	e50b0010 	str	r0, [fp, #-16]
     478:	e3a03000 	mov	r3, #0
     47c:	e50b3008 	str	r3, [fp, #-8]
     480:	ea00000c 	b	4b8 <atoi+0x50>
     484:	e51b2008 	ldr	r2, [fp, #-8]
     488:	e1a03002 	mov	r3, r2
     48c:	e1a03103 	lsl	r3, r3, #2
     490:	e0833002 	add	r3, r3, r2
     494:	e1a03083 	lsl	r3, r3, #1
     498:	e1a01003 	mov	r1, r3
     49c:	e51b3010 	ldr	r3, [fp, #-16]
     4a0:	e2832001 	add	r2, r3, #1
     4a4:	e50b2010 	str	r2, [fp, #-16]
     4a8:	e5d33000 	ldrb	r3, [r3]
     4ac:	e0813003 	add	r3, r1, r3
     4b0:	e2433030 	sub	r3, r3, #48	@ 0x30
     4b4:	e50b3008 	str	r3, [fp, #-8]
     4b8:	e51b3010 	ldr	r3, [fp, #-16]
     4bc:	e5d33000 	ldrb	r3, [r3]
     4c0:	e353002f 	cmp	r3, #47	@ 0x2f
     4c4:	9a000003 	bls	4d8 <atoi+0x70>
     4c8:	e51b3010 	ldr	r3, [fp, #-16]
     4cc:	e5d33000 	ldrb	r3, [r3]
     4d0:	e3530039 	cmp	r3, #57	@ 0x39
     4d4:	9affffea 	bls	484 <atoi+0x1c>
     4d8:	e51b3010 	ldr	r3, [fp, #-16]
     4dc:	e5d33000 	ldrb	r3, [r3]
     4e0:	e3530000 	cmp	r3, #0
     4e4:	1a000001 	bne	4f0 <atoi+0x88>
     4e8:	e51b3008 	ldr	r3, [fp, #-8]
     4ec:	ea000000 	b	4f4 <atoi+0x8c>
     4f0:	e3e03000 	mvn	r3, #0
     4f4:	e1a00003 	mov	r0, r3
     4f8:	e28bd000 	add	sp, fp, #0
     4fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     500:	e12fff1e 	bx	lr

00000504 <memmove>:
     504:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     508:	e28db000 	add	fp, sp, #0
     50c:	e24dd01c 	sub	sp, sp, #28
     510:	e50b0010 	str	r0, [fp, #-16]
     514:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     518:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     51c:	e51b3010 	ldr	r3, [fp, #-16]
     520:	e50b3008 	str	r3, [fp, #-8]
     524:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     528:	e50b300c 	str	r3, [fp, #-12]
     52c:	ea000007 	b	550 <memmove+0x4c>
     530:	e51b200c 	ldr	r2, [fp, #-12]
     534:	e2823001 	add	r3, r2, #1
     538:	e50b300c 	str	r3, [fp, #-12]
     53c:	e51b3008 	ldr	r3, [fp, #-8]
     540:	e2831001 	add	r1, r3, #1
     544:	e50b1008 	str	r1, [fp, #-8]
     548:	e5d22000 	ldrb	r2, [r2]
     54c:	e5c32000 	strb	r2, [r3]
     550:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     554:	e2432001 	sub	r2, r3, #1
     558:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     55c:	e3530000 	cmp	r3, #0
     560:	cafffff2 	bgt	530 <memmove+0x2c>
     564:	e51b3010 	ldr	r3, [fp, #-16]
     568:	e1a00003 	mov	r0, r3
     56c:	e28bd000 	add	sp, fp, #0
     570:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     574:	e12fff1e 	bx	lr

00000578 <initiateLock>:
     578:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     57c:	e28db000 	add	fp, sp, #0
     580:	e24dd00c 	sub	sp, sp, #12
     584:	e50b0008 	str	r0, [fp, #-8]
     588:	e51b3008 	ldr	r3, [fp, #-8]
     58c:	e3a02000 	mov	r2, #0
     590:	e5832000 	str	r2, [r3]
     594:	e51b3008 	ldr	r3, [fp, #-8]
     598:	e3a02001 	mov	r2, #1
     59c:	e5832004 	str	r2, [r3, #4]
     5a0:	e1a00000 	nop			@ (mov r0, r0)
     5a4:	e28bd000 	add	sp, fp, #0
     5a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5ac:	e12fff1e 	bx	lr

000005b0 <acquireLock>:
     5b0:	e92d4800 	push	{fp, lr}
     5b4:	e28db004 	add	fp, sp, #4
     5b8:	e24dd008 	sub	sp, sp, #8
     5bc:	e50b0008 	str	r0, [fp, #-8]
     5c0:	ea000001 	b	5cc <acquireLock+0x1c>
     5c4:	e3a00001 	mov	r0, #1
     5c8:	eb00013a 	bl	ab8 <sleep>
     5cc:	e51b2008 	ldr	r2, [fp, #-8]
     5d0:	e3a01001 	mov	r1, #1
     5d4:	e1923f9f 	ldrex	r3, [r2]
     5d8:	e1820f91 	strex	r0, r1, [r2]
     5dc:	e3500000 	cmp	r0, #0
     5e0:	1afffffb 	bne	5d4 <acquireLock+0x24>
     5e4:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     5e8:	e3530001 	cmp	r3, #1
     5ec:	0afffff4 	beq	5c4 <acquireLock+0x14>
     5f0:	e1a00000 	nop			@ (mov r0, r0)
     5f4:	e1a00000 	nop			@ (mov r0, r0)
     5f8:	e24bd004 	sub	sp, fp, #4
     5fc:	e8bd8800 	pop	{fp, pc}

00000600 <releaseLock>:
     600:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     604:	e28db000 	add	fp, sp, #0
     608:	e24dd00c 	sub	sp, sp, #12
     60c:	e50b0008 	str	r0, [fp, #-8]
     610:	e51b3008 	ldr	r3, [fp, #-8]
     614:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     618:	e3a02000 	mov	r2, #0
     61c:	e5832000 	str	r2, [r3]
     620:	e1a00000 	nop			@ (mov r0, r0)
     624:	e28bd000 	add	sp, fp, #0
     628:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     62c:	e12fff1e 	bx	lr

00000630 <initiateCondVar>:
     630:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     634:	e28db000 	add	fp, sp, #0
     638:	e24dd00c 	sub	sp, sp, #12
     63c:	e50b0008 	str	r0, [fp, #-8]
     640:	e51b3008 	ldr	r3, [fp, #-8]
     644:	e3a02000 	mov	r2, #0
     648:	e5832000 	str	r2, [r3]
     64c:	e51b3008 	ldr	r3, [fp, #-8]
     650:	e3a02001 	mov	r2, #1
     654:	e5832004 	str	r2, [r3, #4]
     658:	e1a00000 	nop			@ (mov r0, r0)
     65c:	e28bd000 	add	sp, fp, #0
     660:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     664:	e12fff1e 	bx	lr

00000668 <condWait>:
     668:	e92d4800 	push	{fp, lr}
     66c:	e28db004 	add	fp, sp, #4
     670:	e24dd008 	sub	sp, sp, #8
     674:	e50b0008 	str	r0, [fp, #-8]
     678:	e50b100c 	str	r1, [fp, #-12]
     67c:	e51b000c 	ldr	r0, [fp, #-12]
     680:	ebffffde 	bl	600 <releaseLock>
     684:	e51b3008 	ldr	r3, [fp, #-8]
     688:	e5933000 	ldr	r3, [r3]
     68c:	e1a00003 	mov	r0, r3
     690:	eb00017d 	bl	c8c <sleepChan>
     694:	e51b000c 	ldr	r0, [fp, #-12]
     698:	ebffffc4 	bl	5b0 <acquireLock>
     69c:	e1a00000 	nop			@ (mov r0, r0)
     6a0:	e24bd004 	sub	sp, fp, #4
     6a4:	e8bd8800 	pop	{fp, pc}

000006a8 <broadcast>:
     6a8:	e92d4800 	push	{fp, lr}
     6ac:	e28db004 	add	fp, sp, #4
     6b0:	e24dd008 	sub	sp, sp, #8
     6b4:	e50b0008 	str	r0, [fp, #-8]
     6b8:	e51b3008 	ldr	r3, [fp, #-8]
     6bc:	e5933000 	ldr	r3, [r3]
     6c0:	e1a00003 	mov	r0, r3
     6c4:	eb000182 	bl	cd4 <sigChan>
     6c8:	e1a00000 	nop			@ (mov r0, r0)
     6cc:	e24bd004 	sub	sp, fp, #4
     6d0:	e8bd8800 	pop	{fp, pc}

000006d4 <semInit>:
     6d4:	e92d4800 	push	{fp, lr}
     6d8:	e28db004 	add	fp, sp, #4
     6dc:	e24dd008 	sub	sp, sp, #8
     6e0:	e50b0008 	str	r0, [fp, #-8]
     6e4:	e50b100c 	str	r1, [fp, #-12]
     6e8:	e51b3008 	ldr	r3, [fp, #-8]
     6ec:	e51b200c 	ldr	r2, [fp, #-12]
     6f0:	e5832000 	str	r2, [r3]
     6f4:	e51b3008 	ldr	r3, [fp, #-8]
     6f8:	e2833004 	add	r3, r3, #4
     6fc:	e1a00003 	mov	r0, r3
     700:	ebffff9c 	bl	578 <initiateLock>
     704:	e51b3008 	ldr	r3, [fp, #-8]
     708:	e283300c 	add	r3, r3, #12
     70c:	e1a00003 	mov	r0, r3
     710:	ebffffc6 	bl	630 <initiateCondVar>
     714:	e51b3008 	ldr	r3, [fp, #-8]
     718:	e3a02001 	mov	r2, #1
     71c:	e5832014 	str	r2, [r3, #20]
     720:	e1a00000 	nop			@ (mov r0, r0)
     724:	e24bd004 	sub	sp, fp, #4
     728:	e8bd8800 	pop	{fp, pc}

0000072c <semUp>:
     72c:	e92d4800 	push	{fp, lr}
     730:	e28db004 	add	fp, sp, #4
     734:	e24dd008 	sub	sp, sp, #8
     738:	e50b0008 	str	r0, [fp, #-8]
     73c:	e51b3008 	ldr	r3, [fp, #-8]
     740:	e2833004 	add	r3, r3, #4
     744:	e1a00003 	mov	r0, r3
     748:	ebffff98 	bl	5b0 <acquireLock>
     74c:	e51b3008 	ldr	r3, [fp, #-8]
     750:	e5933000 	ldr	r3, [r3]
     754:	e2832001 	add	r2, r3, #1
     758:	e51b3008 	ldr	r3, [fp, #-8]
     75c:	e5832000 	str	r2, [r3]
     760:	e51b3008 	ldr	r3, [fp, #-8]
     764:	e283300c 	add	r3, r3, #12
     768:	e1a00003 	mov	r0, r3
     76c:	ebffffcd 	bl	6a8 <broadcast>
     770:	e51b3008 	ldr	r3, [fp, #-8]
     774:	e2833004 	add	r3, r3, #4
     778:	e1a00003 	mov	r0, r3
     77c:	ebffff9f 	bl	600 <releaseLock>
     780:	e1a00000 	nop			@ (mov r0, r0)
     784:	e24bd004 	sub	sp, fp, #4
     788:	e8bd8800 	pop	{fp, pc}

0000078c <semDown>:
     78c:	e92d4800 	push	{fp, lr}
     790:	e28db004 	add	fp, sp, #4
     794:	e24dd008 	sub	sp, sp, #8
     798:	e50b0008 	str	r0, [fp, #-8]
     79c:	e51b3008 	ldr	r3, [fp, #-8]
     7a0:	e2833004 	add	r3, r3, #4
     7a4:	e1a00003 	mov	r0, r3
     7a8:	ebffff80 	bl	5b0 <acquireLock>
     7ac:	ea000006 	b	7cc <semDown+0x40>
     7b0:	e51b3008 	ldr	r3, [fp, #-8]
     7b4:	e283200c 	add	r2, r3, #12
     7b8:	e51b3008 	ldr	r3, [fp, #-8]
     7bc:	e2833004 	add	r3, r3, #4
     7c0:	e1a01003 	mov	r1, r3
     7c4:	e1a00002 	mov	r0, r2
     7c8:	ebffffa6 	bl	668 <condWait>
     7cc:	e51b3008 	ldr	r3, [fp, #-8]
     7d0:	e5933000 	ldr	r3, [r3]
     7d4:	e3530000 	cmp	r3, #0
     7d8:	dafffff4 	ble	7b0 <semDown+0x24>
     7dc:	e51b3008 	ldr	r3, [fp, #-8]
     7e0:	e5933000 	ldr	r3, [r3]
     7e4:	e2432001 	sub	r2, r3, #1
     7e8:	e51b3008 	ldr	r3, [fp, #-8]
     7ec:	e5832000 	str	r2, [r3]
     7f0:	e51b3008 	ldr	r3, [fp, #-8]
     7f4:	e2833004 	add	r3, r3, #4
     7f8:	e1a00003 	mov	r0, r3
     7fc:	ebffff7f 	bl	600 <releaseLock>
     800:	e1a00000 	nop			@ (mov r0, r0)
     804:	e24bd004 	sub	sp, fp, #4
     808:	e8bd8800 	pop	{fp, pc}

0000080c <fork>:
     80c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     810:	e1a04003 	mov	r4, r3
     814:	e1a03002 	mov	r3, r2
     818:	e1a02001 	mov	r2, r1
     81c:	e1a01000 	mov	r1, r0
     820:	e3a00001 	mov	r0, #1
     824:	ef000000 	svc	0x00000000
     828:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     82c:	e12fff1e 	bx	lr

00000830 <exit>:
     830:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     834:	e1a04003 	mov	r4, r3
     838:	e1a03002 	mov	r3, r2
     83c:	e1a02001 	mov	r2, r1
     840:	e1a01000 	mov	r1, r0
     844:	e3a00002 	mov	r0, #2
     848:	ef000000 	svc	0x00000000
     84c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     850:	e12fff1e 	bx	lr

00000854 <wait>:
     854:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     858:	e1a04003 	mov	r4, r3
     85c:	e1a03002 	mov	r3, r2
     860:	e1a02001 	mov	r2, r1
     864:	e1a01000 	mov	r1, r0
     868:	e3a00003 	mov	r0, #3
     86c:	ef000000 	svc	0x00000000
     870:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     874:	e12fff1e 	bx	lr

00000878 <pipe>:
     878:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     87c:	e1a04003 	mov	r4, r3
     880:	e1a03002 	mov	r3, r2
     884:	e1a02001 	mov	r2, r1
     888:	e1a01000 	mov	r1, r0
     88c:	e3a00004 	mov	r0, #4
     890:	ef000000 	svc	0x00000000
     894:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     898:	e12fff1e 	bx	lr

0000089c <read>:
     89c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a0:	e1a04003 	mov	r4, r3
     8a4:	e1a03002 	mov	r3, r2
     8a8:	e1a02001 	mov	r2, r1
     8ac:	e1a01000 	mov	r1, r0
     8b0:	e3a00005 	mov	r0, #5
     8b4:	ef000000 	svc	0x00000000
     8b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8bc:	e12fff1e 	bx	lr

000008c0 <write>:
     8c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8c4:	e1a04003 	mov	r4, r3
     8c8:	e1a03002 	mov	r3, r2
     8cc:	e1a02001 	mov	r2, r1
     8d0:	e1a01000 	mov	r1, r0
     8d4:	e3a00010 	mov	r0, #16
     8d8:	ef000000 	svc	0x00000000
     8dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e0:	e12fff1e 	bx	lr

000008e4 <close>:
     8e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8e8:	e1a04003 	mov	r4, r3
     8ec:	e1a03002 	mov	r3, r2
     8f0:	e1a02001 	mov	r2, r1
     8f4:	e1a01000 	mov	r1, r0
     8f8:	e3a00015 	mov	r0, #21
     8fc:	ef000000 	svc	0x00000000
     900:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     904:	e12fff1e 	bx	lr

00000908 <kill>:
     908:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     90c:	e1a04003 	mov	r4, r3
     910:	e1a03002 	mov	r3, r2
     914:	e1a02001 	mov	r2, r1
     918:	e1a01000 	mov	r1, r0
     91c:	e3a00006 	mov	r0, #6
     920:	ef000000 	svc	0x00000000
     924:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     928:	e12fff1e 	bx	lr

0000092c <exec>:
     92c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     930:	e1a04003 	mov	r4, r3
     934:	e1a03002 	mov	r3, r2
     938:	e1a02001 	mov	r2, r1
     93c:	e1a01000 	mov	r1, r0
     940:	e3a00007 	mov	r0, #7
     944:	ef000000 	svc	0x00000000
     948:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     94c:	e12fff1e 	bx	lr

00000950 <open>:
     950:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     954:	e1a04003 	mov	r4, r3
     958:	e1a03002 	mov	r3, r2
     95c:	e1a02001 	mov	r2, r1
     960:	e1a01000 	mov	r1, r0
     964:	e3a0000f 	mov	r0, #15
     968:	ef000000 	svc	0x00000000
     96c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     970:	e12fff1e 	bx	lr

00000974 <mknod>:
     974:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     978:	e1a04003 	mov	r4, r3
     97c:	e1a03002 	mov	r3, r2
     980:	e1a02001 	mov	r2, r1
     984:	e1a01000 	mov	r1, r0
     988:	e3a00011 	mov	r0, #17
     98c:	ef000000 	svc	0x00000000
     990:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     994:	e12fff1e 	bx	lr

00000998 <unlink>:
     998:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     99c:	e1a04003 	mov	r4, r3
     9a0:	e1a03002 	mov	r3, r2
     9a4:	e1a02001 	mov	r2, r1
     9a8:	e1a01000 	mov	r1, r0
     9ac:	e3a00012 	mov	r0, #18
     9b0:	ef000000 	svc	0x00000000
     9b4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9b8:	e12fff1e 	bx	lr

000009bc <fstat>:
     9bc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c0:	e1a04003 	mov	r4, r3
     9c4:	e1a03002 	mov	r3, r2
     9c8:	e1a02001 	mov	r2, r1
     9cc:	e1a01000 	mov	r1, r0
     9d0:	e3a00008 	mov	r0, #8
     9d4:	ef000000 	svc	0x00000000
     9d8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9dc:	e12fff1e 	bx	lr

000009e0 <link>:
     9e0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9e4:	e1a04003 	mov	r4, r3
     9e8:	e1a03002 	mov	r3, r2
     9ec:	e1a02001 	mov	r2, r1
     9f0:	e1a01000 	mov	r1, r0
     9f4:	e3a00013 	mov	r0, #19
     9f8:	ef000000 	svc	0x00000000
     9fc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a00:	e12fff1e 	bx	lr

00000a04 <mkdir>:
     a04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a08:	e1a04003 	mov	r4, r3
     a0c:	e1a03002 	mov	r3, r2
     a10:	e1a02001 	mov	r2, r1
     a14:	e1a01000 	mov	r1, r0
     a18:	e3a00014 	mov	r0, #20
     a1c:	ef000000 	svc	0x00000000
     a20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a24:	e12fff1e 	bx	lr

00000a28 <chdir>:
     a28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a2c:	e1a04003 	mov	r4, r3
     a30:	e1a03002 	mov	r3, r2
     a34:	e1a02001 	mov	r2, r1
     a38:	e1a01000 	mov	r1, r0
     a3c:	e3a00009 	mov	r0, #9
     a40:	ef000000 	svc	0x00000000
     a44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a48:	e12fff1e 	bx	lr

00000a4c <dup>:
     a4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a50:	e1a04003 	mov	r4, r3
     a54:	e1a03002 	mov	r3, r2
     a58:	e1a02001 	mov	r2, r1
     a5c:	e1a01000 	mov	r1, r0
     a60:	e3a0000a 	mov	r0, #10
     a64:	ef000000 	svc	0x00000000
     a68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a6c:	e12fff1e 	bx	lr

00000a70 <getpid>:
     a70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a74:	e1a04003 	mov	r4, r3
     a78:	e1a03002 	mov	r3, r2
     a7c:	e1a02001 	mov	r2, r1
     a80:	e1a01000 	mov	r1, r0
     a84:	e3a0000b 	mov	r0, #11
     a88:	ef000000 	svc	0x00000000
     a8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a90:	e12fff1e 	bx	lr

00000a94 <sbrk>:
     a94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a98:	e1a04003 	mov	r4, r3
     a9c:	e1a03002 	mov	r3, r2
     aa0:	e1a02001 	mov	r2, r1
     aa4:	e1a01000 	mov	r1, r0
     aa8:	e3a0000c 	mov	r0, #12
     aac:	ef000000 	svc	0x00000000
     ab0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ab4:	e12fff1e 	bx	lr

00000ab8 <sleep>:
     ab8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     abc:	e1a04003 	mov	r4, r3
     ac0:	e1a03002 	mov	r3, r2
     ac4:	e1a02001 	mov	r2, r1
     ac8:	e1a01000 	mov	r1, r0
     acc:	e3a0000d 	mov	r0, #13
     ad0:	ef000000 	svc	0x00000000
     ad4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ad8:	e12fff1e 	bx	lr

00000adc <uptime>:
     adc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae0:	e1a04003 	mov	r4, r3
     ae4:	e1a03002 	mov	r3, r2
     ae8:	e1a02001 	mov	r2, r1
     aec:	e1a01000 	mov	r1, r0
     af0:	e3a0000e 	mov	r0, #14
     af4:	ef000000 	svc	0x00000000
     af8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     afc:	e12fff1e 	bx	lr

00000b00 <getprocs>:
     b00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b04:	e1a04003 	mov	r4, r3
     b08:	e1a03002 	mov	r3, r2
     b0c:	e1a02001 	mov	r2, r1
     b10:	e1a01000 	mov	r1, r0
     b14:	e3a00016 	mov	r0, #22
     b18:	ef000000 	svc	0x00000000
     b1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b20:	e12fff1e 	bx	lr

00000b24 <settickets>:
     b24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b28:	e1a04003 	mov	r4, r3
     b2c:	e1a03002 	mov	r3, r2
     b30:	e1a02001 	mov	r2, r1
     b34:	e1a01000 	mov	r1, r0
     b38:	e3a00017 	mov	r0, #23
     b3c:	ef000000 	svc	0x00000000
     b40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b44:	e12fff1e 	bx	lr

00000b48 <srand>:
     b48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b4c:	e1a04003 	mov	r4, r3
     b50:	e1a03002 	mov	r3, r2
     b54:	e1a02001 	mov	r2, r1
     b58:	e1a01000 	mov	r1, r0
     b5c:	e3a00018 	mov	r0, #24
     b60:	ef000000 	svc	0x00000000
     b64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b68:	e12fff1e 	bx	lr

00000b6c <getpinfo>:
     b6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b70:	e1a04003 	mov	r4, r3
     b74:	e1a03002 	mov	r3, r2
     b78:	e1a02001 	mov	r2, r1
     b7c:	e1a01000 	mov	r1, r0
     b80:	e3a00019 	mov	r0, #25
     b84:	ef000000 	svc	0x00000000
     b88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b8c:	e12fff1e 	bx	lr

00000b90 <dumppagetable>:
     b90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b94:	e1a04003 	mov	r4, r3
     b98:	e1a03002 	mov	r3, r2
     b9c:	e1a02001 	mov	r2, r1
     ba0:	e1a01000 	mov	r1, r0
     ba4:	e3a0001a 	mov	r0, #26
     ba8:	ef000000 	svc	0x00000000
     bac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb0:	e12fff1e 	bx	lr

00000bb4 <thread_create>:
     bb4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bb8:	e1a04003 	mov	r4, r3
     bbc:	e1a03002 	mov	r3, r2
     bc0:	e1a02001 	mov	r2, r1
     bc4:	e1a01000 	mov	r1, r0
     bc8:	e3a0001b 	mov	r0, #27
     bcc:	ef000000 	svc	0x00000000
     bd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bd4:	e12fff1e 	bx	lr

00000bd8 <thread_exit>:
     bd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bdc:	e1a04003 	mov	r4, r3
     be0:	e1a03002 	mov	r3, r2
     be4:	e1a02001 	mov	r2, r1
     be8:	e1a01000 	mov	r1, r0
     bec:	e3a0001c 	mov	r0, #28
     bf0:	ef000000 	svc	0x00000000
     bf4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bf8:	e12fff1e 	bx	lr

00000bfc <thread_join>:
     bfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c00:	e1a04003 	mov	r4, r3
     c04:	e1a03002 	mov	r3, r2
     c08:	e1a02001 	mov	r2, r1
     c0c:	e1a01000 	mov	r1, r0
     c10:	e3a0001d 	mov	r0, #29
     c14:	ef000000 	svc	0x00000000
     c18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c1c:	e12fff1e 	bx	lr

00000c20 <waitpid>:
     c20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c24:	e1a04003 	mov	r4, r3
     c28:	e1a03002 	mov	r3, r2
     c2c:	e1a02001 	mov	r2, r1
     c30:	e1a01000 	mov	r1, r0
     c34:	e3a0001e 	mov	r0, #30
     c38:	ef000000 	svc	0x00000000
     c3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c40:	e12fff1e 	bx	lr

00000c44 <barrier_init>:
     c44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c48:	e1a04003 	mov	r4, r3
     c4c:	e1a03002 	mov	r3, r2
     c50:	e1a02001 	mov	r2, r1
     c54:	e1a01000 	mov	r1, r0
     c58:	e3a0001f 	mov	r0, #31
     c5c:	ef000000 	svc	0x00000000
     c60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c64:	e12fff1e 	bx	lr

00000c68 <barrier_check>:
     c68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c6c:	e1a04003 	mov	r4, r3
     c70:	e1a03002 	mov	r3, r2
     c74:	e1a02001 	mov	r2, r1
     c78:	e1a01000 	mov	r1, r0
     c7c:	e3a00020 	mov	r0, #32
     c80:	ef000000 	svc	0x00000000
     c84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c88:	e12fff1e 	bx	lr

00000c8c <sleepChan>:
     c8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c90:	e1a04003 	mov	r4, r3
     c94:	e1a03002 	mov	r3, r2
     c98:	e1a02001 	mov	r2, r1
     c9c:	e1a01000 	mov	r1, r0
     ca0:	e3a00024 	mov	r0, #36	@ 0x24
     ca4:	ef000000 	svc	0x00000000
     ca8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cac:	e12fff1e 	bx	lr

00000cb0 <getChannel>:
     cb0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cb4:	e1a04003 	mov	r4, r3
     cb8:	e1a03002 	mov	r3, r2
     cbc:	e1a02001 	mov	r2, r1
     cc0:	e1a01000 	mov	r1, r0
     cc4:	e3a00025 	mov	r0, #37	@ 0x25
     cc8:	ef000000 	svc	0x00000000
     ccc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd0:	e12fff1e 	bx	lr

00000cd4 <sigChan>:
     cd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cd8:	e1a04003 	mov	r4, r3
     cdc:	e1a03002 	mov	r3, r2
     ce0:	e1a02001 	mov	r2, r1
     ce4:	e1a01000 	mov	r1, r0
     ce8:	e3a00026 	mov	r0, #38	@ 0x26
     cec:	ef000000 	svc	0x00000000
     cf0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cf4:	e12fff1e 	bx	lr

00000cf8 <sigOneChan>:
     cf8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cfc:	e1a04003 	mov	r4, r3
     d00:	e1a03002 	mov	r3, r2
     d04:	e1a02001 	mov	r2, r1
     d08:	e1a01000 	mov	r1, r0
     d0c:	e3a00027 	mov	r0, #39	@ 0x27
     d10:	ef000000 	svc	0x00000000
     d14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d18:	e12fff1e 	bx	lr

00000d1c <putc>:
     d1c:	e92d4800 	push	{fp, lr}
     d20:	e28db004 	add	fp, sp, #4
     d24:	e24dd008 	sub	sp, sp, #8
     d28:	e50b0008 	str	r0, [fp, #-8]
     d2c:	e1a03001 	mov	r3, r1
     d30:	e54b3009 	strb	r3, [fp, #-9]
     d34:	e24b3009 	sub	r3, fp, #9
     d38:	e3a02001 	mov	r2, #1
     d3c:	e1a01003 	mov	r1, r3
     d40:	e51b0008 	ldr	r0, [fp, #-8]
     d44:	ebfffedd 	bl	8c0 <write>
     d48:	e1a00000 	nop			@ (mov r0, r0)
     d4c:	e24bd004 	sub	sp, fp, #4
     d50:	e8bd8800 	pop	{fp, pc}

00000d54 <printint>:
     d54:	e92d4800 	push	{fp, lr}
     d58:	e28db004 	add	fp, sp, #4
     d5c:	e24dd030 	sub	sp, sp, #48	@ 0x30
     d60:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     d64:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     d68:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     d6c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     d70:	e3a03000 	mov	r3, #0
     d74:	e50b300c 	str	r3, [fp, #-12]
     d78:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     d7c:	e3530000 	cmp	r3, #0
     d80:	0a000008 	beq	da8 <printint+0x54>
     d84:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d88:	e3530000 	cmp	r3, #0
     d8c:	aa000005 	bge	da8 <printint+0x54>
     d90:	e3a03001 	mov	r3, #1
     d94:	e50b300c 	str	r3, [fp, #-12]
     d98:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d9c:	e2633000 	rsb	r3, r3, #0
     da0:	e50b3010 	str	r3, [fp, #-16]
     da4:	ea000001 	b	db0 <printint+0x5c>
     da8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     dac:	e50b3010 	str	r3, [fp, #-16]
     db0:	e3a03000 	mov	r3, #0
     db4:	e50b3008 	str	r3, [fp, #-8]
     db8:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     dbc:	e51b3010 	ldr	r3, [fp, #-16]
     dc0:	e1a01002 	mov	r1, r2
     dc4:	e1a00003 	mov	r0, r3
     dc8:	eb0001d5 	bl	1524 <__aeabi_uidivmod>
     dcc:	e1a03001 	mov	r3, r1
     dd0:	e1a01003 	mov	r1, r3
     dd4:	e51b3008 	ldr	r3, [fp, #-8]
     dd8:	e2832001 	add	r2, r3, #1
     ddc:	e50b2008 	str	r2, [fp, #-8]
     de0:	e59f20a0 	ldr	r2, [pc, #160]	@ e88 <printint+0x134>
     de4:	e7d22001 	ldrb	r2, [r2, r1]
     de8:	e2433004 	sub	r3, r3, #4
     dec:	e083300b 	add	r3, r3, fp
     df0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     df4:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     df8:	e1a01003 	mov	r1, r3
     dfc:	e51b0010 	ldr	r0, [fp, #-16]
     e00:	eb00018a 	bl	1430 <__udivsi3>
     e04:	e1a03000 	mov	r3, r0
     e08:	e50b3010 	str	r3, [fp, #-16]
     e0c:	e51b3010 	ldr	r3, [fp, #-16]
     e10:	e3530000 	cmp	r3, #0
     e14:	1affffe7 	bne	db8 <printint+0x64>
     e18:	e51b300c 	ldr	r3, [fp, #-12]
     e1c:	e3530000 	cmp	r3, #0
     e20:	0a00000e 	beq	e60 <printint+0x10c>
     e24:	e51b3008 	ldr	r3, [fp, #-8]
     e28:	e2832001 	add	r2, r3, #1
     e2c:	e50b2008 	str	r2, [fp, #-8]
     e30:	e2433004 	sub	r3, r3, #4
     e34:	e083300b 	add	r3, r3, fp
     e38:	e3a0202d 	mov	r2, #45	@ 0x2d
     e3c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     e40:	ea000006 	b	e60 <printint+0x10c>
     e44:	e24b2020 	sub	r2, fp, #32
     e48:	e51b3008 	ldr	r3, [fp, #-8]
     e4c:	e0823003 	add	r3, r2, r3
     e50:	e5d33000 	ldrb	r3, [r3]
     e54:	e1a01003 	mov	r1, r3
     e58:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     e5c:	ebffffae 	bl	d1c <putc>
     e60:	e51b3008 	ldr	r3, [fp, #-8]
     e64:	e2433001 	sub	r3, r3, #1
     e68:	e50b3008 	str	r3, [fp, #-8]
     e6c:	e51b3008 	ldr	r3, [fp, #-8]
     e70:	e3530000 	cmp	r3, #0
     e74:	aafffff2 	bge	e44 <printint+0xf0>
     e78:	e1a00000 	nop			@ (mov r0, r0)
     e7c:	e1a00000 	nop			@ (mov r0, r0)
     e80:	e24bd004 	sub	sp, fp, #4
     e84:	e8bd8800 	pop	{fp, pc}
     e88:	00001564 	.word	0x00001564

00000e8c <printf>:
     e8c:	e92d000e 	push	{r1, r2, r3}
     e90:	e92d4800 	push	{fp, lr}
     e94:	e28db004 	add	fp, sp, #4
     e98:	e24dd024 	sub	sp, sp, #36	@ 0x24
     e9c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     ea0:	e3a03000 	mov	r3, #0
     ea4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ea8:	e28b3008 	add	r3, fp, #8
     eac:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     eb0:	e3a03000 	mov	r3, #0
     eb4:	e50b3010 	str	r3, [fp, #-16]
     eb8:	ea000074 	b	1090 <printf+0x204>
     ebc:	e59b2004 	ldr	r2, [fp, #4]
     ec0:	e51b3010 	ldr	r3, [fp, #-16]
     ec4:	e0823003 	add	r3, r2, r3
     ec8:	e5d33000 	ldrb	r3, [r3]
     ecc:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     ed0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ed4:	e3530000 	cmp	r3, #0
     ed8:	1a00000b 	bne	f0c <printf+0x80>
     edc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ee0:	e3530025 	cmp	r3, #37	@ 0x25
     ee4:	1a000002 	bne	ef4 <printf+0x68>
     ee8:	e3a03025 	mov	r3, #37	@ 0x25
     eec:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ef0:	ea000063 	b	1084 <printf+0x1f8>
     ef4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ef8:	e6ef3073 	uxtb	r3, r3
     efc:	e1a01003 	mov	r1, r3
     f00:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f04:	ebffff84 	bl	d1c <putc>
     f08:	ea00005d 	b	1084 <printf+0x1f8>
     f0c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     f10:	e3530025 	cmp	r3, #37	@ 0x25
     f14:	1a00005a 	bne	1084 <printf+0x1f8>
     f18:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f1c:	e3530064 	cmp	r3, #100	@ 0x64
     f20:	1a00000a 	bne	f50 <printf+0xc4>
     f24:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f28:	e5933000 	ldr	r3, [r3]
     f2c:	e1a01003 	mov	r1, r3
     f30:	e3a03001 	mov	r3, #1
     f34:	e3a0200a 	mov	r2, #10
     f38:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f3c:	ebffff84 	bl	d54 <printint>
     f40:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f44:	e2833004 	add	r3, r3, #4
     f48:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f4c:	ea00004a 	b	107c <printf+0x1f0>
     f50:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f54:	e3530078 	cmp	r3, #120	@ 0x78
     f58:	0a000002 	beq	f68 <printf+0xdc>
     f5c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f60:	e3530070 	cmp	r3, #112	@ 0x70
     f64:	1a00000a 	bne	f94 <printf+0x108>
     f68:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f6c:	e5933000 	ldr	r3, [r3]
     f70:	e1a01003 	mov	r1, r3
     f74:	e3a03000 	mov	r3, #0
     f78:	e3a02010 	mov	r2, #16
     f7c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f80:	ebffff73 	bl	d54 <printint>
     f84:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f88:	e2833004 	add	r3, r3, #4
     f8c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f90:	ea000039 	b	107c <printf+0x1f0>
     f94:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f98:	e3530073 	cmp	r3, #115	@ 0x73
     f9c:	1a000018 	bne	1004 <printf+0x178>
     fa0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fa4:	e5933000 	ldr	r3, [r3]
     fa8:	e50b300c 	str	r3, [fp, #-12]
     fac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fb0:	e2833004 	add	r3, r3, #4
     fb4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fb8:	e51b300c 	ldr	r3, [fp, #-12]
     fbc:	e3530000 	cmp	r3, #0
     fc0:	1a00000a 	bne	ff0 <printf+0x164>
     fc4:	e59f30f4 	ldr	r3, [pc, #244]	@ 10c0 <printf+0x234>
     fc8:	e50b300c 	str	r3, [fp, #-12]
     fcc:	ea000007 	b	ff0 <printf+0x164>
     fd0:	e51b300c 	ldr	r3, [fp, #-12]
     fd4:	e5d33000 	ldrb	r3, [r3]
     fd8:	e1a01003 	mov	r1, r3
     fdc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fe0:	ebffff4d 	bl	d1c <putc>
     fe4:	e51b300c 	ldr	r3, [fp, #-12]
     fe8:	e2833001 	add	r3, r3, #1
     fec:	e50b300c 	str	r3, [fp, #-12]
     ff0:	e51b300c 	ldr	r3, [fp, #-12]
     ff4:	e5d33000 	ldrb	r3, [r3]
     ff8:	e3530000 	cmp	r3, #0
     ffc:	1afffff3 	bne	fd0 <printf+0x144>
    1000:	ea00001d 	b	107c <printf+0x1f0>
    1004:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1008:	e3530063 	cmp	r3, #99	@ 0x63
    100c:	1a000009 	bne	1038 <printf+0x1ac>
    1010:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1014:	e5933000 	ldr	r3, [r3]
    1018:	e6ef3073 	uxtb	r3, r3
    101c:	e1a01003 	mov	r1, r3
    1020:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1024:	ebffff3c 	bl	d1c <putc>
    1028:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    102c:	e2833004 	add	r3, r3, #4
    1030:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1034:	ea000010 	b	107c <printf+0x1f0>
    1038:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    103c:	e3530025 	cmp	r3, #37	@ 0x25
    1040:	1a000005 	bne	105c <printf+0x1d0>
    1044:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1048:	e6ef3073 	uxtb	r3, r3
    104c:	e1a01003 	mov	r1, r3
    1050:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1054:	ebffff30 	bl	d1c <putc>
    1058:	ea000007 	b	107c <printf+0x1f0>
    105c:	e3a01025 	mov	r1, #37	@ 0x25
    1060:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1064:	ebffff2c 	bl	d1c <putc>
    1068:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    106c:	e6ef3073 	uxtb	r3, r3
    1070:	e1a01003 	mov	r1, r3
    1074:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1078:	ebffff27 	bl	d1c <putc>
    107c:	e3a03000 	mov	r3, #0
    1080:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1084:	e51b3010 	ldr	r3, [fp, #-16]
    1088:	e2833001 	add	r3, r3, #1
    108c:	e50b3010 	str	r3, [fp, #-16]
    1090:	e59b2004 	ldr	r2, [fp, #4]
    1094:	e51b3010 	ldr	r3, [fp, #-16]
    1098:	e0823003 	add	r3, r2, r3
    109c:	e5d33000 	ldrb	r3, [r3]
    10a0:	e3530000 	cmp	r3, #0
    10a4:	1affff84 	bne	ebc <printf+0x30>
    10a8:	e1a00000 	nop			@ (mov r0, r0)
    10ac:	e1a00000 	nop			@ (mov r0, r0)
    10b0:	e24bd004 	sub	sp, fp, #4
    10b4:	e8bd4800 	pop	{fp, lr}
    10b8:	e28dd00c 	add	sp, sp, #12
    10bc:	e12fff1e 	bx	lr
    10c0:	0000155c 	.word	0x0000155c

000010c4 <free>:
    10c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    10c8:	e28db000 	add	fp, sp, #0
    10cc:	e24dd014 	sub	sp, sp, #20
    10d0:	e50b0010 	str	r0, [fp, #-16]
    10d4:	e51b3010 	ldr	r3, [fp, #-16]
    10d8:	e2433008 	sub	r3, r3, #8
    10dc:	e50b300c 	str	r3, [fp, #-12]
    10e0:	e59f3154 	ldr	r3, [pc, #340]	@ 123c <free+0x178>
    10e4:	e5933000 	ldr	r3, [r3]
    10e8:	e50b3008 	str	r3, [fp, #-8]
    10ec:	ea000010 	b	1134 <free+0x70>
    10f0:	e51b3008 	ldr	r3, [fp, #-8]
    10f4:	e5933000 	ldr	r3, [r3]
    10f8:	e51b2008 	ldr	r2, [fp, #-8]
    10fc:	e1520003 	cmp	r2, r3
    1100:	3a000008 	bcc	1128 <free+0x64>
    1104:	e51b200c 	ldr	r2, [fp, #-12]
    1108:	e51b3008 	ldr	r3, [fp, #-8]
    110c:	e1520003 	cmp	r2, r3
    1110:	8a000010 	bhi	1158 <free+0x94>
    1114:	e51b3008 	ldr	r3, [fp, #-8]
    1118:	e5933000 	ldr	r3, [r3]
    111c:	e51b200c 	ldr	r2, [fp, #-12]
    1120:	e1520003 	cmp	r2, r3
    1124:	3a00000b 	bcc	1158 <free+0x94>
    1128:	e51b3008 	ldr	r3, [fp, #-8]
    112c:	e5933000 	ldr	r3, [r3]
    1130:	e50b3008 	str	r3, [fp, #-8]
    1134:	e51b200c 	ldr	r2, [fp, #-12]
    1138:	e51b3008 	ldr	r3, [fp, #-8]
    113c:	e1520003 	cmp	r2, r3
    1140:	9affffea 	bls	10f0 <free+0x2c>
    1144:	e51b3008 	ldr	r3, [fp, #-8]
    1148:	e5933000 	ldr	r3, [r3]
    114c:	e51b200c 	ldr	r2, [fp, #-12]
    1150:	e1520003 	cmp	r2, r3
    1154:	2affffe5 	bcs	10f0 <free+0x2c>
    1158:	e51b300c 	ldr	r3, [fp, #-12]
    115c:	e5933004 	ldr	r3, [r3, #4]
    1160:	e1a03183 	lsl	r3, r3, #3
    1164:	e51b200c 	ldr	r2, [fp, #-12]
    1168:	e0822003 	add	r2, r2, r3
    116c:	e51b3008 	ldr	r3, [fp, #-8]
    1170:	e5933000 	ldr	r3, [r3]
    1174:	e1520003 	cmp	r2, r3
    1178:	1a00000d 	bne	11b4 <free+0xf0>
    117c:	e51b300c 	ldr	r3, [fp, #-12]
    1180:	e5932004 	ldr	r2, [r3, #4]
    1184:	e51b3008 	ldr	r3, [fp, #-8]
    1188:	e5933000 	ldr	r3, [r3]
    118c:	e5933004 	ldr	r3, [r3, #4]
    1190:	e0822003 	add	r2, r2, r3
    1194:	e51b300c 	ldr	r3, [fp, #-12]
    1198:	e5832004 	str	r2, [r3, #4]
    119c:	e51b3008 	ldr	r3, [fp, #-8]
    11a0:	e5933000 	ldr	r3, [r3]
    11a4:	e5932000 	ldr	r2, [r3]
    11a8:	e51b300c 	ldr	r3, [fp, #-12]
    11ac:	e5832000 	str	r2, [r3]
    11b0:	ea000003 	b	11c4 <free+0x100>
    11b4:	e51b3008 	ldr	r3, [fp, #-8]
    11b8:	e5932000 	ldr	r2, [r3]
    11bc:	e51b300c 	ldr	r3, [fp, #-12]
    11c0:	e5832000 	str	r2, [r3]
    11c4:	e51b3008 	ldr	r3, [fp, #-8]
    11c8:	e5933004 	ldr	r3, [r3, #4]
    11cc:	e1a03183 	lsl	r3, r3, #3
    11d0:	e51b2008 	ldr	r2, [fp, #-8]
    11d4:	e0823003 	add	r3, r2, r3
    11d8:	e51b200c 	ldr	r2, [fp, #-12]
    11dc:	e1520003 	cmp	r2, r3
    11e0:	1a00000b 	bne	1214 <free+0x150>
    11e4:	e51b3008 	ldr	r3, [fp, #-8]
    11e8:	e5932004 	ldr	r2, [r3, #4]
    11ec:	e51b300c 	ldr	r3, [fp, #-12]
    11f0:	e5933004 	ldr	r3, [r3, #4]
    11f4:	e0822003 	add	r2, r2, r3
    11f8:	e51b3008 	ldr	r3, [fp, #-8]
    11fc:	e5832004 	str	r2, [r3, #4]
    1200:	e51b300c 	ldr	r3, [fp, #-12]
    1204:	e5932000 	ldr	r2, [r3]
    1208:	e51b3008 	ldr	r3, [fp, #-8]
    120c:	e5832000 	str	r2, [r3]
    1210:	ea000002 	b	1220 <free+0x15c>
    1214:	e51b3008 	ldr	r3, [fp, #-8]
    1218:	e51b200c 	ldr	r2, [fp, #-12]
    121c:	e5832000 	str	r2, [r3]
    1220:	e59f2014 	ldr	r2, [pc, #20]	@ 123c <free+0x178>
    1224:	e51b3008 	ldr	r3, [fp, #-8]
    1228:	e5823000 	str	r3, [r2]
    122c:	e1a00000 	nop			@ (mov r0, r0)
    1230:	e28bd000 	add	sp, fp, #0
    1234:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1238:	e12fff1e 	bx	lr
    123c:	00001580 	.word	0x00001580

00001240 <morecore>:
    1240:	e92d4800 	push	{fp, lr}
    1244:	e28db004 	add	fp, sp, #4
    1248:	e24dd010 	sub	sp, sp, #16
    124c:	e50b0010 	str	r0, [fp, #-16]
    1250:	e51b3010 	ldr	r3, [fp, #-16]
    1254:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1258:	2a000001 	bcs	1264 <morecore+0x24>
    125c:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1260:	e50b3010 	str	r3, [fp, #-16]
    1264:	e51b3010 	ldr	r3, [fp, #-16]
    1268:	e1a03183 	lsl	r3, r3, #3
    126c:	e1a00003 	mov	r0, r3
    1270:	ebfffe07 	bl	a94 <sbrk>
    1274:	e50b0008 	str	r0, [fp, #-8]
    1278:	e51b3008 	ldr	r3, [fp, #-8]
    127c:	e3730001 	cmn	r3, #1
    1280:	1a000001 	bne	128c <morecore+0x4c>
    1284:	e3a03000 	mov	r3, #0
    1288:	ea00000a 	b	12b8 <morecore+0x78>
    128c:	e51b3008 	ldr	r3, [fp, #-8]
    1290:	e50b300c 	str	r3, [fp, #-12]
    1294:	e51b300c 	ldr	r3, [fp, #-12]
    1298:	e51b2010 	ldr	r2, [fp, #-16]
    129c:	e5832004 	str	r2, [r3, #4]
    12a0:	e51b300c 	ldr	r3, [fp, #-12]
    12a4:	e2833008 	add	r3, r3, #8
    12a8:	e1a00003 	mov	r0, r3
    12ac:	ebffff84 	bl	10c4 <free>
    12b0:	e59f300c 	ldr	r3, [pc, #12]	@ 12c4 <morecore+0x84>
    12b4:	e5933000 	ldr	r3, [r3]
    12b8:	e1a00003 	mov	r0, r3
    12bc:	e24bd004 	sub	sp, fp, #4
    12c0:	e8bd8800 	pop	{fp, pc}
    12c4:	00001580 	.word	0x00001580

000012c8 <malloc>:
    12c8:	e92d4800 	push	{fp, lr}
    12cc:	e28db004 	add	fp, sp, #4
    12d0:	e24dd018 	sub	sp, sp, #24
    12d4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    12d8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12dc:	e2833007 	add	r3, r3, #7
    12e0:	e1a031a3 	lsr	r3, r3, #3
    12e4:	e2833001 	add	r3, r3, #1
    12e8:	e50b3010 	str	r3, [fp, #-16]
    12ec:	e59f3134 	ldr	r3, [pc, #308]	@ 1428 <malloc+0x160>
    12f0:	e5933000 	ldr	r3, [r3]
    12f4:	e50b300c 	str	r3, [fp, #-12]
    12f8:	e51b300c 	ldr	r3, [fp, #-12]
    12fc:	e3530000 	cmp	r3, #0
    1300:	1a00000b 	bne	1334 <malloc+0x6c>
    1304:	e59f3120 	ldr	r3, [pc, #288]	@ 142c <malloc+0x164>
    1308:	e50b300c 	str	r3, [fp, #-12]
    130c:	e59f2114 	ldr	r2, [pc, #276]	@ 1428 <malloc+0x160>
    1310:	e51b300c 	ldr	r3, [fp, #-12]
    1314:	e5823000 	str	r3, [r2]
    1318:	e59f3108 	ldr	r3, [pc, #264]	@ 1428 <malloc+0x160>
    131c:	e5933000 	ldr	r3, [r3]
    1320:	e59f2104 	ldr	r2, [pc, #260]	@ 142c <malloc+0x164>
    1324:	e5823000 	str	r3, [r2]
    1328:	e59f30fc 	ldr	r3, [pc, #252]	@ 142c <malloc+0x164>
    132c:	e3a02000 	mov	r2, #0
    1330:	e5832004 	str	r2, [r3, #4]
    1334:	e51b300c 	ldr	r3, [fp, #-12]
    1338:	e5933000 	ldr	r3, [r3]
    133c:	e50b3008 	str	r3, [fp, #-8]
    1340:	e51b3008 	ldr	r3, [fp, #-8]
    1344:	e5933004 	ldr	r3, [r3, #4]
    1348:	e51b2010 	ldr	r2, [fp, #-16]
    134c:	e1520003 	cmp	r2, r3
    1350:	8a00001e 	bhi	13d0 <malloc+0x108>
    1354:	e51b3008 	ldr	r3, [fp, #-8]
    1358:	e5933004 	ldr	r3, [r3, #4]
    135c:	e51b2010 	ldr	r2, [fp, #-16]
    1360:	e1520003 	cmp	r2, r3
    1364:	1a000004 	bne	137c <malloc+0xb4>
    1368:	e51b3008 	ldr	r3, [fp, #-8]
    136c:	e5932000 	ldr	r2, [r3]
    1370:	e51b300c 	ldr	r3, [fp, #-12]
    1374:	e5832000 	str	r2, [r3]
    1378:	ea00000e 	b	13b8 <malloc+0xf0>
    137c:	e51b3008 	ldr	r3, [fp, #-8]
    1380:	e5932004 	ldr	r2, [r3, #4]
    1384:	e51b3010 	ldr	r3, [fp, #-16]
    1388:	e0422003 	sub	r2, r2, r3
    138c:	e51b3008 	ldr	r3, [fp, #-8]
    1390:	e5832004 	str	r2, [r3, #4]
    1394:	e51b3008 	ldr	r3, [fp, #-8]
    1398:	e5933004 	ldr	r3, [r3, #4]
    139c:	e1a03183 	lsl	r3, r3, #3
    13a0:	e51b2008 	ldr	r2, [fp, #-8]
    13a4:	e0823003 	add	r3, r2, r3
    13a8:	e50b3008 	str	r3, [fp, #-8]
    13ac:	e51b3008 	ldr	r3, [fp, #-8]
    13b0:	e51b2010 	ldr	r2, [fp, #-16]
    13b4:	e5832004 	str	r2, [r3, #4]
    13b8:	e59f2068 	ldr	r2, [pc, #104]	@ 1428 <malloc+0x160>
    13bc:	e51b300c 	ldr	r3, [fp, #-12]
    13c0:	e5823000 	str	r3, [r2]
    13c4:	e51b3008 	ldr	r3, [fp, #-8]
    13c8:	e2833008 	add	r3, r3, #8
    13cc:	ea000012 	b	141c <malloc+0x154>
    13d0:	e59f3050 	ldr	r3, [pc, #80]	@ 1428 <malloc+0x160>
    13d4:	e5933000 	ldr	r3, [r3]
    13d8:	e51b2008 	ldr	r2, [fp, #-8]
    13dc:	e1520003 	cmp	r2, r3
    13e0:	1a000007 	bne	1404 <malloc+0x13c>
    13e4:	e51b0010 	ldr	r0, [fp, #-16]
    13e8:	ebffff94 	bl	1240 <morecore>
    13ec:	e50b0008 	str	r0, [fp, #-8]
    13f0:	e51b3008 	ldr	r3, [fp, #-8]
    13f4:	e3530000 	cmp	r3, #0
    13f8:	1a000001 	bne	1404 <malloc+0x13c>
    13fc:	e3a03000 	mov	r3, #0
    1400:	ea000005 	b	141c <malloc+0x154>
    1404:	e51b3008 	ldr	r3, [fp, #-8]
    1408:	e50b300c 	str	r3, [fp, #-12]
    140c:	e51b3008 	ldr	r3, [fp, #-8]
    1410:	e5933000 	ldr	r3, [r3]
    1414:	e50b3008 	str	r3, [fp, #-8]
    1418:	eaffffc8 	b	1340 <malloc+0x78>
    141c:	e1a00003 	mov	r0, r3
    1420:	e24bd004 	sub	sp, fp, #4
    1424:	e8bd8800 	pop	{fp, pc}
    1428:	00001580 	.word	0x00001580
    142c:	00001578 	.word	0x00001578

00001430 <__udivsi3>:
    1430:	e2512001 	subs	r2, r1, #1
    1434:	012fff1e 	bxeq	lr
    1438:	3a000036 	bcc	1518 <__udivsi3+0xe8>
    143c:	e1500001 	cmp	r0, r1
    1440:	9a000022 	bls	14d0 <__udivsi3+0xa0>
    1444:	e1110002 	tst	r1, r2
    1448:	0a000023 	beq	14dc <__udivsi3+0xac>
    144c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1450:	01a01181 	lsleq	r1, r1, #3
    1454:	03a03008 	moveq	r3, #8
    1458:	13a03001 	movne	r3, #1
    145c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1460:	31510000 	cmpcc	r1, r0
    1464:	31a01201 	lslcc	r1, r1, #4
    1468:	31a03203 	lslcc	r3, r3, #4
    146c:	3afffffa 	bcc	145c <__udivsi3+0x2c>
    1470:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1474:	31510000 	cmpcc	r1, r0
    1478:	31a01081 	lslcc	r1, r1, #1
    147c:	31a03083 	lslcc	r3, r3, #1
    1480:	3afffffa 	bcc	1470 <__udivsi3+0x40>
    1484:	e3a02000 	mov	r2, #0
    1488:	e1500001 	cmp	r0, r1
    148c:	20400001 	subcs	r0, r0, r1
    1490:	21822003 	orrcs	r2, r2, r3
    1494:	e15000a1 	cmp	r0, r1, lsr #1
    1498:	204000a1 	subcs	r0, r0, r1, lsr #1
    149c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    14a0:	e1500121 	cmp	r0, r1, lsr #2
    14a4:	20400121 	subcs	r0, r0, r1, lsr #2
    14a8:	21822123 	orrcs	r2, r2, r3, lsr #2
    14ac:	e15001a1 	cmp	r0, r1, lsr #3
    14b0:	204001a1 	subcs	r0, r0, r1, lsr #3
    14b4:	218221a3 	orrcs	r2, r2, r3, lsr #3
    14b8:	e3500000 	cmp	r0, #0
    14bc:	11b03223 	lsrsne	r3, r3, #4
    14c0:	11a01221 	lsrne	r1, r1, #4
    14c4:	1affffef 	bne	1488 <__udivsi3+0x58>
    14c8:	e1a00002 	mov	r0, r2
    14cc:	e12fff1e 	bx	lr
    14d0:	03a00001 	moveq	r0, #1
    14d4:	13a00000 	movne	r0, #0
    14d8:	e12fff1e 	bx	lr
    14dc:	e3510801 	cmp	r1, #65536	@ 0x10000
    14e0:	21a01821 	lsrcs	r1, r1, #16
    14e4:	23a02010 	movcs	r2, #16
    14e8:	33a02000 	movcc	r2, #0
    14ec:	e3510c01 	cmp	r1, #256	@ 0x100
    14f0:	21a01421 	lsrcs	r1, r1, #8
    14f4:	22822008 	addcs	r2, r2, #8
    14f8:	e3510010 	cmp	r1, #16
    14fc:	21a01221 	lsrcs	r1, r1, #4
    1500:	22822004 	addcs	r2, r2, #4
    1504:	e3510004 	cmp	r1, #4
    1508:	82822003 	addhi	r2, r2, #3
    150c:	908220a1 	addls	r2, r2, r1, lsr #1
    1510:	e1a00230 	lsr	r0, r0, r2
    1514:	e12fff1e 	bx	lr
    1518:	e3500000 	cmp	r0, #0
    151c:	13e00000 	mvnne	r0, #0
    1520:	ea000007 	b	1544 <__aeabi_idiv0>

00001524 <__aeabi_uidivmod>:
    1524:	e3510000 	cmp	r1, #0
    1528:	0afffffa 	beq	1518 <__udivsi3+0xe8>
    152c:	e92d4003 	push	{r0, r1, lr}
    1530:	ebffffbe 	bl	1430 <__udivsi3>
    1534:	e8bd4006 	pop	{r1, r2, lr}
    1538:	e0030092 	mul	r3, r2, r0
    153c:	e0411003 	sub	r1, r1, r3
    1540:	e12fff1e 	bx	lr

00001544 <__aeabi_idiv0>:
    1544:	e12fff1e 	bx	lr
