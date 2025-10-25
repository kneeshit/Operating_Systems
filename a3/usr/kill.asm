
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
      28:	eb000298 	bl	a90 <printf>
      2c:	eb00015a 	bl	59c <exit>
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
      60:	eb000183 	bl	674 <kill>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e2833001 	add	r3, r3, #1
      6c:	e50b3008 	str	r3, [fp, #-8]
      70:	e51b2008 	ldr	r2, [fp, #-8]
      74:	e51b3010 	ldr	r3, [fp, #-16]
      78:	e1520003 	cmp	r2, r3
      7c:	baffffee 	blt	3c <main+0x3c>
      80:	eb000145 	bl	59c <exit>
      84:	0000114c 	.word	0x0000114c

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
     37c:	eb0000a1 	bl	608 <read>
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
     424:	eb0000a4 	bl	6bc <open>
     428:	e50b0008 	str	r0, [fp, #-8]
     42c:	e51b3008 	ldr	r3, [fp, #-8]
     430:	e3530000 	cmp	r3, #0
     434:	aa000001 	bge	440 <stat+0x38>
     438:	e3e03000 	mvn	r3, #0
     43c:	ea000006 	b	45c <stat+0x54>
     440:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     444:	e51b0008 	ldr	r0, [fp, #-8]
     448:	eb0000b6 	bl	728 <fstat>
     44c:	e50b000c 	str	r0, [fp, #-12]
     450:	e51b0008 	ldr	r0, [fp, #-8]
     454:	eb00007d 	bl	650 <close>
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

00000578 <fork>:
     578:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     57c:	e1a04003 	mov	r4, r3
     580:	e1a03002 	mov	r3, r2
     584:	e1a02001 	mov	r2, r1
     588:	e1a01000 	mov	r1, r0
     58c:	e3a00001 	mov	r0, #1
     590:	ef000000 	svc	0x00000000
     594:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     598:	e12fff1e 	bx	lr

0000059c <exit>:
     59c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5a0:	e1a04003 	mov	r4, r3
     5a4:	e1a03002 	mov	r3, r2
     5a8:	e1a02001 	mov	r2, r1
     5ac:	e1a01000 	mov	r1, r0
     5b0:	e3a00002 	mov	r0, #2
     5b4:	ef000000 	svc	0x00000000
     5b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5bc:	e12fff1e 	bx	lr

000005c0 <wait>:
     5c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5c4:	e1a04003 	mov	r4, r3
     5c8:	e1a03002 	mov	r3, r2
     5cc:	e1a02001 	mov	r2, r1
     5d0:	e1a01000 	mov	r1, r0
     5d4:	e3a00003 	mov	r0, #3
     5d8:	ef000000 	svc	0x00000000
     5dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5e0:	e12fff1e 	bx	lr

000005e4 <pipe>:
     5e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5e8:	e1a04003 	mov	r4, r3
     5ec:	e1a03002 	mov	r3, r2
     5f0:	e1a02001 	mov	r2, r1
     5f4:	e1a01000 	mov	r1, r0
     5f8:	e3a00004 	mov	r0, #4
     5fc:	ef000000 	svc	0x00000000
     600:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     604:	e12fff1e 	bx	lr

00000608 <read>:
     608:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     60c:	e1a04003 	mov	r4, r3
     610:	e1a03002 	mov	r3, r2
     614:	e1a02001 	mov	r2, r1
     618:	e1a01000 	mov	r1, r0
     61c:	e3a00005 	mov	r0, #5
     620:	ef000000 	svc	0x00000000
     624:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     628:	e12fff1e 	bx	lr

0000062c <write>:
     62c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     630:	e1a04003 	mov	r4, r3
     634:	e1a03002 	mov	r3, r2
     638:	e1a02001 	mov	r2, r1
     63c:	e1a01000 	mov	r1, r0
     640:	e3a00010 	mov	r0, #16
     644:	ef000000 	svc	0x00000000
     648:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     64c:	e12fff1e 	bx	lr

00000650 <close>:
     650:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     654:	e1a04003 	mov	r4, r3
     658:	e1a03002 	mov	r3, r2
     65c:	e1a02001 	mov	r2, r1
     660:	e1a01000 	mov	r1, r0
     664:	e3a00015 	mov	r0, #21
     668:	ef000000 	svc	0x00000000
     66c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     670:	e12fff1e 	bx	lr

00000674 <kill>:
     674:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     678:	e1a04003 	mov	r4, r3
     67c:	e1a03002 	mov	r3, r2
     680:	e1a02001 	mov	r2, r1
     684:	e1a01000 	mov	r1, r0
     688:	e3a00006 	mov	r0, #6
     68c:	ef000000 	svc	0x00000000
     690:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     694:	e12fff1e 	bx	lr

00000698 <exec>:
     698:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     69c:	e1a04003 	mov	r4, r3
     6a0:	e1a03002 	mov	r3, r2
     6a4:	e1a02001 	mov	r2, r1
     6a8:	e1a01000 	mov	r1, r0
     6ac:	e3a00007 	mov	r0, #7
     6b0:	ef000000 	svc	0x00000000
     6b4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6b8:	e12fff1e 	bx	lr

000006bc <open>:
     6bc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6c0:	e1a04003 	mov	r4, r3
     6c4:	e1a03002 	mov	r3, r2
     6c8:	e1a02001 	mov	r2, r1
     6cc:	e1a01000 	mov	r1, r0
     6d0:	e3a0000f 	mov	r0, #15
     6d4:	ef000000 	svc	0x00000000
     6d8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6dc:	e12fff1e 	bx	lr

000006e0 <mknod>:
     6e0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6e4:	e1a04003 	mov	r4, r3
     6e8:	e1a03002 	mov	r3, r2
     6ec:	e1a02001 	mov	r2, r1
     6f0:	e1a01000 	mov	r1, r0
     6f4:	e3a00011 	mov	r0, #17
     6f8:	ef000000 	svc	0x00000000
     6fc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     700:	e12fff1e 	bx	lr

00000704 <unlink>:
     704:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     708:	e1a04003 	mov	r4, r3
     70c:	e1a03002 	mov	r3, r2
     710:	e1a02001 	mov	r2, r1
     714:	e1a01000 	mov	r1, r0
     718:	e3a00012 	mov	r0, #18
     71c:	ef000000 	svc	0x00000000
     720:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     724:	e12fff1e 	bx	lr

00000728 <fstat>:
     728:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     72c:	e1a04003 	mov	r4, r3
     730:	e1a03002 	mov	r3, r2
     734:	e1a02001 	mov	r2, r1
     738:	e1a01000 	mov	r1, r0
     73c:	e3a00008 	mov	r0, #8
     740:	ef000000 	svc	0x00000000
     744:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     748:	e12fff1e 	bx	lr

0000074c <link>:
     74c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     750:	e1a04003 	mov	r4, r3
     754:	e1a03002 	mov	r3, r2
     758:	e1a02001 	mov	r2, r1
     75c:	e1a01000 	mov	r1, r0
     760:	e3a00013 	mov	r0, #19
     764:	ef000000 	svc	0x00000000
     768:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     76c:	e12fff1e 	bx	lr

00000770 <mkdir>:
     770:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     774:	e1a04003 	mov	r4, r3
     778:	e1a03002 	mov	r3, r2
     77c:	e1a02001 	mov	r2, r1
     780:	e1a01000 	mov	r1, r0
     784:	e3a00014 	mov	r0, #20
     788:	ef000000 	svc	0x00000000
     78c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     790:	e12fff1e 	bx	lr

00000794 <chdir>:
     794:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     798:	e1a04003 	mov	r4, r3
     79c:	e1a03002 	mov	r3, r2
     7a0:	e1a02001 	mov	r2, r1
     7a4:	e1a01000 	mov	r1, r0
     7a8:	e3a00009 	mov	r0, #9
     7ac:	ef000000 	svc	0x00000000
     7b0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7b4:	e12fff1e 	bx	lr

000007b8 <dup>:
     7b8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7bc:	e1a04003 	mov	r4, r3
     7c0:	e1a03002 	mov	r3, r2
     7c4:	e1a02001 	mov	r2, r1
     7c8:	e1a01000 	mov	r1, r0
     7cc:	e3a0000a 	mov	r0, #10
     7d0:	ef000000 	svc	0x00000000
     7d4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7d8:	e12fff1e 	bx	lr

000007dc <getpid>:
     7dc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7e0:	e1a04003 	mov	r4, r3
     7e4:	e1a03002 	mov	r3, r2
     7e8:	e1a02001 	mov	r2, r1
     7ec:	e1a01000 	mov	r1, r0
     7f0:	e3a0000b 	mov	r0, #11
     7f4:	ef000000 	svc	0x00000000
     7f8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7fc:	e12fff1e 	bx	lr

00000800 <sbrk>:
     800:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     804:	e1a04003 	mov	r4, r3
     808:	e1a03002 	mov	r3, r2
     80c:	e1a02001 	mov	r2, r1
     810:	e1a01000 	mov	r1, r0
     814:	e3a0000c 	mov	r0, #12
     818:	ef000000 	svc	0x00000000
     81c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     820:	e12fff1e 	bx	lr

00000824 <sleep>:
     824:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     828:	e1a04003 	mov	r4, r3
     82c:	e1a03002 	mov	r3, r2
     830:	e1a02001 	mov	r2, r1
     834:	e1a01000 	mov	r1, r0
     838:	e3a0000d 	mov	r0, #13
     83c:	ef000000 	svc	0x00000000
     840:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     844:	e12fff1e 	bx	lr

00000848 <uptime>:
     848:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     84c:	e1a04003 	mov	r4, r3
     850:	e1a03002 	mov	r3, r2
     854:	e1a02001 	mov	r2, r1
     858:	e1a01000 	mov	r1, r0
     85c:	e3a0000e 	mov	r0, #14
     860:	ef000000 	svc	0x00000000
     864:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     868:	e12fff1e 	bx	lr

0000086c <getprocs>:
     86c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     870:	e1a04003 	mov	r4, r3
     874:	e1a03002 	mov	r3, r2
     878:	e1a02001 	mov	r2, r1
     87c:	e1a01000 	mov	r1, r0
     880:	e3a00016 	mov	r0, #22
     884:	ef000000 	svc	0x00000000
     888:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     88c:	e12fff1e 	bx	lr

00000890 <settickets>:
     890:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     894:	e1a04003 	mov	r4, r3
     898:	e1a03002 	mov	r3, r2
     89c:	e1a02001 	mov	r2, r1
     8a0:	e1a01000 	mov	r1, r0
     8a4:	e3a00017 	mov	r0, #23
     8a8:	ef000000 	svc	0x00000000
     8ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8b0:	e12fff1e 	bx	lr

000008b4 <srand>:
     8b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8b8:	e1a04003 	mov	r4, r3
     8bc:	e1a03002 	mov	r3, r2
     8c0:	e1a02001 	mov	r2, r1
     8c4:	e1a01000 	mov	r1, r0
     8c8:	e3a00018 	mov	r0, #24
     8cc:	ef000000 	svc	0x00000000
     8d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8d4:	e12fff1e 	bx	lr

000008d8 <getpinfo>:
     8d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8dc:	e1a04003 	mov	r4, r3
     8e0:	e1a03002 	mov	r3, r2
     8e4:	e1a02001 	mov	r2, r1
     8e8:	e1a01000 	mov	r1, r0
     8ec:	e3a00019 	mov	r0, #25
     8f0:	ef000000 	svc	0x00000000
     8f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8f8:	e12fff1e 	bx	lr

000008fc <dumppagetable>:
     8fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     900:	e1a04003 	mov	r4, r3
     904:	e1a03002 	mov	r3, r2
     908:	e1a02001 	mov	r2, r1
     90c:	e1a01000 	mov	r1, r0
     910:	e3a0001a 	mov	r0, #26
     914:	ef000000 	svc	0x00000000
     918:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     91c:	e12fff1e 	bx	lr

00000920 <putc>:
     920:	e92d4800 	push	{fp, lr}
     924:	e28db004 	add	fp, sp, #4
     928:	e24dd008 	sub	sp, sp, #8
     92c:	e50b0008 	str	r0, [fp, #-8]
     930:	e1a03001 	mov	r3, r1
     934:	e54b3009 	strb	r3, [fp, #-9]
     938:	e24b3009 	sub	r3, fp, #9
     93c:	e3a02001 	mov	r2, #1
     940:	e1a01003 	mov	r1, r3
     944:	e51b0008 	ldr	r0, [fp, #-8]
     948:	ebffff37 	bl	62c <write>
     94c:	e1a00000 	nop			@ (mov r0, r0)
     950:	e24bd004 	sub	sp, fp, #4
     954:	e8bd8800 	pop	{fp, pc}

00000958 <printint>:
     958:	e92d4800 	push	{fp, lr}
     95c:	e28db004 	add	fp, sp, #4
     960:	e24dd030 	sub	sp, sp, #48	@ 0x30
     964:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     968:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     96c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     970:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     974:	e3a03000 	mov	r3, #0
     978:	e50b300c 	str	r3, [fp, #-12]
     97c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     980:	e3530000 	cmp	r3, #0
     984:	0a000008 	beq	9ac <printint+0x54>
     988:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     98c:	e3530000 	cmp	r3, #0
     990:	aa000005 	bge	9ac <printint+0x54>
     994:	e3a03001 	mov	r3, #1
     998:	e50b300c 	str	r3, [fp, #-12]
     99c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9a0:	e2633000 	rsb	r3, r3, #0
     9a4:	e50b3010 	str	r3, [fp, #-16]
     9a8:	ea000001 	b	9b4 <printint+0x5c>
     9ac:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9b0:	e50b3010 	str	r3, [fp, #-16]
     9b4:	e3a03000 	mov	r3, #0
     9b8:	e50b3008 	str	r3, [fp, #-8]
     9bc:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     9c0:	e51b3010 	ldr	r3, [fp, #-16]
     9c4:	e1a01002 	mov	r1, r2
     9c8:	e1a00003 	mov	r0, r3
     9cc:	eb0001d5 	bl	1128 <__aeabi_uidivmod>
     9d0:	e1a03001 	mov	r3, r1
     9d4:	e1a01003 	mov	r1, r3
     9d8:	e51b3008 	ldr	r3, [fp, #-8]
     9dc:	e2832001 	add	r2, r3, #1
     9e0:	e50b2008 	str	r2, [fp, #-8]
     9e4:	e59f20a0 	ldr	r2, [pc, #160]	@ a8c <printint+0x134>
     9e8:	e7d22001 	ldrb	r2, [r2, r1]
     9ec:	e2433004 	sub	r3, r3, #4
     9f0:	e083300b 	add	r3, r3, fp
     9f4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     9f8:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     9fc:	e1a01003 	mov	r1, r3
     a00:	e51b0010 	ldr	r0, [fp, #-16]
     a04:	eb00018a 	bl	1034 <__udivsi3>
     a08:	e1a03000 	mov	r3, r0
     a0c:	e50b3010 	str	r3, [fp, #-16]
     a10:	e51b3010 	ldr	r3, [fp, #-16]
     a14:	e3530000 	cmp	r3, #0
     a18:	1affffe7 	bne	9bc <printint+0x64>
     a1c:	e51b300c 	ldr	r3, [fp, #-12]
     a20:	e3530000 	cmp	r3, #0
     a24:	0a00000e 	beq	a64 <printint+0x10c>
     a28:	e51b3008 	ldr	r3, [fp, #-8]
     a2c:	e2832001 	add	r2, r3, #1
     a30:	e50b2008 	str	r2, [fp, #-8]
     a34:	e2433004 	sub	r3, r3, #4
     a38:	e083300b 	add	r3, r3, fp
     a3c:	e3a0202d 	mov	r2, #45	@ 0x2d
     a40:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a44:	ea000006 	b	a64 <printint+0x10c>
     a48:	e24b2020 	sub	r2, fp, #32
     a4c:	e51b3008 	ldr	r3, [fp, #-8]
     a50:	e0823003 	add	r3, r2, r3
     a54:	e5d33000 	ldrb	r3, [r3]
     a58:	e1a01003 	mov	r1, r3
     a5c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     a60:	ebffffae 	bl	920 <putc>
     a64:	e51b3008 	ldr	r3, [fp, #-8]
     a68:	e2433001 	sub	r3, r3, #1
     a6c:	e50b3008 	str	r3, [fp, #-8]
     a70:	e51b3008 	ldr	r3, [fp, #-8]
     a74:	e3530000 	cmp	r3, #0
     a78:	aafffff2 	bge	a48 <printint+0xf0>
     a7c:	e1a00000 	nop			@ (mov r0, r0)
     a80:	e1a00000 	nop			@ (mov r0, r0)
     a84:	e24bd004 	sub	sp, fp, #4
     a88:	e8bd8800 	pop	{fp, pc}
     a8c:	00001168 	.word	0x00001168

00000a90 <printf>:
     a90:	e92d000e 	push	{r1, r2, r3}
     a94:	e92d4800 	push	{fp, lr}
     a98:	e28db004 	add	fp, sp, #4
     a9c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     aa0:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     aa4:	e3a03000 	mov	r3, #0
     aa8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     aac:	e28b3008 	add	r3, fp, #8
     ab0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ab4:	e3a03000 	mov	r3, #0
     ab8:	e50b3010 	str	r3, [fp, #-16]
     abc:	ea000074 	b	c94 <printf+0x204>
     ac0:	e59b2004 	ldr	r2, [fp, #4]
     ac4:	e51b3010 	ldr	r3, [fp, #-16]
     ac8:	e0823003 	add	r3, r2, r3
     acc:	e5d33000 	ldrb	r3, [r3]
     ad0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     ad4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ad8:	e3530000 	cmp	r3, #0
     adc:	1a00000b 	bne	b10 <printf+0x80>
     ae0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ae4:	e3530025 	cmp	r3, #37	@ 0x25
     ae8:	1a000002 	bne	af8 <printf+0x68>
     aec:	e3a03025 	mov	r3, #37	@ 0x25
     af0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     af4:	ea000063 	b	c88 <printf+0x1f8>
     af8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     afc:	e6ef3073 	uxtb	r3, r3
     b00:	e1a01003 	mov	r1, r3
     b04:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b08:	ebffff84 	bl	920 <putc>
     b0c:	ea00005d 	b	c88 <printf+0x1f8>
     b10:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b14:	e3530025 	cmp	r3, #37	@ 0x25
     b18:	1a00005a 	bne	c88 <printf+0x1f8>
     b1c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b20:	e3530064 	cmp	r3, #100	@ 0x64
     b24:	1a00000a 	bne	b54 <printf+0xc4>
     b28:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b2c:	e5933000 	ldr	r3, [r3]
     b30:	e1a01003 	mov	r1, r3
     b34:	e3a03001 	mov	r3, #1
     b38:	e3a0200a 	mov	r2, #10
     b3c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b40:	ebffff84 	bl	958 <printint>
     b44:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b48:	e2833004 	add	r3, r3, #4
     b4c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b50:	ea00004a 	b	c80 <printf+0x1f0>
     b54:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b58:	e3530078 	cmp	r3, #120	@ 0x78
     b5c:	0a000002 	beq	b6c <printf+0xdc>
     b60:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b64:	e3530070 	cmp	r3, #112	@ 0x70
     b68:	1a00000a 	bne	b98 <printf+0x108>
     b6c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b70:	e5933000 	ldr	r3, [r3]
     b74:	e1a01003 	mov	r1, r3
     b78:	e3a03000 	mov	r3, #0
     b7c:	e3a02010 	mov	r2, #16
     b80:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b84:	ebffff73 	bl	958 <printint>
     b88:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b8c:	e2833004 	add	r3, r3, #4
     b90:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b94:	ea000039 	b	c80 <printf+0x1f0>
     b98:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b9c:	e3530073 	cmp	r3, #115	@ 0x73
     ba0:	1a000018 	bne	c08 <printf+0x178>
     ba4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ba8:	e5933000 	ldr	r3, [r3]
     bac:	e50b300c 	str	r3, [fp, #-12]
     bb0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bb4:	e2833004 	add	r3, r3, #4
     bb8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bbc:	e51b300c 	ldr	r3, [fp, #-12]
     bc0:	e3530000 	cmp	r3, #0
     bc4:	1a00000a 	bne	bf4 <printf+0x164>
     bc8:	e59f30f4 	ldr	r3, [pc, #244]	@ cc4 <printf+0x234>
     bcc:	e50b300c 	str	r3, [fp, #-12]
     bd0:	ea000007 	b	bf4 <printf+0x164>
     bd4:	e51b300c 	ldr	r3, [fp, #-12]
     bd8:	e5d33000 	ldrb	r3, [r3]
     bdc:	e1a01003 	mov	r1, r3
     be0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     be4:	ebffff4d 	bl	920 <putc>
     be8:	e51b300c 	ldr	r3, [fp, #-12]
     bec:	e2833001 	add	r3, r3, #1
     bf0:	e50b300c 	str	r3, [fp, #-12]
     bf4:	e51b300c 	ldr	r3, [fp, #-12]
     bf8:	e5d33000 	ldrb	r3, [r3]
     bfc:	e3530000 	cmp	r3, #0
     c00:	1afffff3 	bne	bd4 <printf+0x144>
     c04:	ea00001d 	b	c80 <printf+0x1f0>
     c08:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c0c:	e3530063 	cmp	r3, #99	@ 0x63
     c10:	1a000009 	bne	c3c <printf+0x1ac>
     c14:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c18:	e5933000 	ldr	r3, [r3]
     c1c:	e6ef3073 	uxtb	r3, r3
     c20:	e1a01003 	mov	r1, r3
     c24:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c28:	ebffff3c 	bl	920 <putc>
     c2c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c30:	e2833004 	add	r3, r3, #4
     c34:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c38:	ea000010 	b	c80 <printf+0x1f0>
     c3c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c40:	e3530025 	cmp	r3, #37	@ 0x25
     c44:	1a000005 	bne	c60 <printf+0x1d0>
     c48:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c4c:	e6ef3073 	uxtb	r3, r3
     c50:	e1a01003 	mov	r1, r3
     c54:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c58:	ebffff30 	bl	920 <putc>
     c5c:	ea000007 	b	c80 <printf+0x1f0>
     c60:	e3a01025 	mov	r1, #37	@ 0x25
     c64:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c68:	ebffff2c 	bl	920 <putc>
     c6c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c70:	e6ef3073 	uxtb	r3, r3
     c74:	e1a01003 	mov	r1, r3
     c78:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c7c:	ebffff27 	bl	920 <putc>
     c80:	e3a03000 	mov	r3, #0
     c84:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c88:	e51b3010 	ldr	r3, [fp, #-16]
     c8c:	e2833001 	add	r3, r3, #1
     c90:	e50b3010 	str	r3, [fp, #-16]
     c94:	e59b2004 	ldr	r2, [fp, #4]
     c98:	e51b3010 	ldr	r3, [fp, #-16]
     c9c:	e0823003 	add	r3, r2, r3
     ca0:	e5d33000 	ldrb	r3, [r3]
     ca4:	e3530000 	cmp	r3, #0
     ca8:	1affff84 	bne	ac0 <printf+0x30>
     cac:	e1a00000 	nop			@ (mov r0, r0)
     cb0:	e1a00000 	nop			@ (mov r0, r0)
     cb4:	e24bd004 	sub	sp, fp, #4
     cb8:	e8bd4800 	pop	{fp, lr}
     cbc:	e28dd00c 	add	sp, sp, #12
     cc0:	e12fff1e 	bx	lr
     cc4:	00001160 	.word	0x00001160

00000cc8 <free>:
     cc8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     ccc:	e28db000 	add	fp, sp, #0
     cd0:	e24dd014 	sub	sp, sp, #20
     cd4:	e50b0010 	str	r0, [fp, #-16]
     cd8:	e51b3010 	ldr	r3, [fp, #-16]
     cdc:	e2433008 	sub	r3, r3, #8
     ce0:	e50b300c 	str	r3, [fp, #-12]
     ce4:	e59f3154 	ldr	r3, [pc, #340]	@ e40 <free+0x178>
     ce8:	e5933000 	ldr	r3, [r3]
     cec:	e50b3008 	str	r3, [fp, #-8]
     cf0:	ea000010 	b	d38 <free+0x70>
     cf4:	e51b3008 	ldr	r3, [fp, #-8]
     cf8:	e5933000 	ldr	r3, [r3]
     cfc:	e51b2008 	ldr	r2, [fp, #-8]
     d00:	e1520003 	cmp	r2, r3
     d04:	3a000008 	bcc	d2c <free+0x64>
     d08:	e51b200c 	ldr	r2, [fp, #-12]
     d0c:	e51b3008 	ldr	r3, [fp, #-8]
     d10:	e1520003 	cmp	r2, r3
     d14:	8a000010 	bhi	d5c <free+0x94>
     d18:	e51b3008 	ldr	r3, [fp, #-8]
     d1c:	e5933000 	ldr	r3, [r3]
     d20:	e51b200c 	ldr	r2, [fp, #-12]
     d24:	e1520003 	cmp	r2, r3
     d28:	3a00000b 	bcc	d5c <free+0x94>
     d2c:	e51b3008 	ldr	r3, [fp, #-8]
     d30:	e5933000 	ldr	r3, [r3]
     d34:	e50b3008 	str	r3, [fp, #-8]
     d38:	e51b200c 	ldr	r2, [fp, #-12]
     d3c:	e51b3008 	ldr	r3, [fp, #-8]
     d40:	e1520003 	cmp	r2, r3
     d44:	9affffea 	bls	cf4 <free+0x2c>
     d48:	e51b3008 	ldr	r3, [fp, #-8]
     d4c:	e5933000 	ldr	r3, [r3]
     d50:	e51b200c 	ldr	r2, [fp, #-12]
     d54:	e1520003 	cmp	r2, r3
     d58:	2affffe5 	bcs	cf4 <free+0x2c>
     d5c:	e51b300c 	ldr	r3, [fp, #-12]
     d60:	e5933004 	ldr	r3, [r3, #4]
     d64:	e1a03183 	lsl	r3, r3, #3
     d68:	e51b200c 	ldr	r2, [fp, #-12]
     d6c:	e0822003 	add	r2, r2, r3
     d70:	e51b3008 	ldr	r3, [fp, #-8]
     d74:	e5933000 	ldr	r3, [r3]
     d78:	e1520003 	cmp	r2, r3
     d7c:	1a00000d 	bne	db8 <free+0xf0>
     d80:	e51b300c 	ldr	r3, [fp, #-12]
     d84:	e5932004 	ldr	r2, [r3, #4]
     d88:	e51b3008 	ldr	r3, [fp, #-8]
     d8c:	e5933000 	ldr	r3, [r3]
     d90:	e5933004 	ldr	r3, [r3, #4]
     d94:	e0822003 	add	r2, r2, r3
     d98:	e51b300c 	ldr	r3, [fp, #-12]
     d9c:	e5832004 	str	r2, [r3, #4]
     da0:	e51b3008 	ldr	r3, [fp, #-8]
     da4:	e5933000 	ldr	r3, [r3]
     da8:	e5932000 	ldr	r2, [r3]
     dac:	e51b300c 	ldr	r3, [fp, #-12]
     db0:	e5832000 	str	r2, [r3]
     db4:	ea000003 	b	dc8 <free+0x100>
     db8:	e51b3008 	ldr	r3, [fp, #-8]
     dbc:	e5932000 	ldr	r2, [r3]
     dc0:	e51b300c 	ldr	r3, [fp, #-12]
     dc4:	e5832000 	str	r2, [r3]
     dc8:	e51b3008 	ldr	r3, [fp, #-8]
     dcc:	e5933004 	ldr	r3, [r3, #4]
     dd0:	e1a03183 	lsl	r3, r3, #3
     dd4:	e51b2008 	ldr	r2, [fp, #-8]
     dd8:	e0823003 	add	r3, r2, r3
     ddc:	e51b200c 	ldr	r2, [fp, #-12]
     de0:	e1520003 	cmp	r2, r3
     de4:	1a00000b 	bne	e18 <free+0x150>
     de8:	e51b3008 	ldr	r3, [fp, #-8]
     dec:	e5932004 	ldr	r2, [r3, #4]
     df0:	e51b300c 	ldr	r3, [fp, #-12]
     df4:	e5933004 	ldr	r3, [r3, #4]
     df8:	e0822003 	add	r2, r2, r3
     dfc:	e51b3008 	ldr	r3, [fp, #-8]
     e00:	e5832004 	str	r2, [r3, #4]
     e04:	e51b300c 	ldr	r3, [fp, #-12]
     e08:	e5932000 	ldr	r2, [r3]
     e0c:	e51b3008 	ldr	r3, [fp, #-8]
     e10:	e5832000 	str	r2, [r3]
     e14:	ea000002 	b	e24 <free+0x15c>
     e18:	e51b3008 	ldr	r3, [fp, #-8]
     e1c:	e51b200c 	ldr	r2, [fp, #-12]
     e20:	e5832000 	str	r2, [r3]
     e24:	e59f2014 	ldr	r2, [pc, #20]	@ e40 <free+0x178>
     e28:	e51b3008 	ldr	r3, [fp, #-8]
     e2c:	e5823000 	str	r3, [r2]
     e30:	e1a00000 	nop			@ (mov r0, r0)
     e34:	e28bd000 	add	sp, fp, #0
     e38:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     e3c:	e12fff1e 	bx	lr
     e40:	00001184 	.word	0x00001184

00000e44 <morecore>:
     e44:	e92d4800 	push	{fp, lr}
     e48:	e28db004 	add	fp, sp, #4
     e4c:	e24dd010 	sub	sp, sp, #16
     e50:	e50b0010 	str	r0, [fp, #-16]
     e54:	e51b3010 	ldr	r3, [fp, #-16]
     e58:	e3530a01 	cmp	r3, #4096	@ 0x1000
     e5c:	2a000001 	bcs	e68 <morecore+0x24>
     e60:	e3a03a01 	mov	r3, #4096	@ 0x1000
     e64:	e50b3010 	str	r3, [fp, #-16]
     e68:	e51b3010 	ldr	r3, [fp, #-16]
     e6c:	e1a03183 	lsl	r3, r3, #3
     e70:	e1a00003 	mov	r0, r3
     e74:	ebfffe61 	bl	800 <sbrk>
     e78:	e50b0008 	str	r0, [fp, #-8]
     e7c:	e51b3008 	ldr	r3, [fp, #-8]
     e80:	e3730001 	cmn	r3, #1
     e84:	1a000001 	bne	e90 <morecore+0x4c>
     e88:	e3a03000 	mov	r3, #0
     e8c:	ea00000a 	b	ebc <morecore+0x78>
     e90:	e51b3008 	ldr	r3, [fp, #-8]
     e94:	e50b300c 	str	r3, [fp, #-12]
     e98:	e51b300c 	ldr	r3, [fp, #-12]
     e9c:	e51b2010 	ldr	r2, [fp, #-16]
     ea0:	e5832004 	str	r2, [r3, #4]
     ea4:	e51b300c 	ldr	r3, [fp, #-12]
     ea8:	e2833008 	add	r3, r3, #8
     eac:	e1a00003 	mov	r0, r3
     eb0:	ebffff84 	bl	cc8 <free>
     eb4:	e59f300c 	ldr	r3, [pc, #12]	@ ec8 <morecore+0x84>
     eb8:	e5933000 	ldr	r3, [r3]
     ebc:	e1a00003 	mov	r0, r3
     ec0:	e24bd004 	sub	sp, fp, #4
     ec4:	e8bd8800 	pop	{fp, pc}
     ec8:	00001184 	.word	0x00001184

00000ecc <malloc>:
     ecc:	e92d4800 	push	{fp, lr}
     ed0:	e28db004 	add	fp, sp, #4
     ed4:	e24dd018 	sub	sp, sp, #24
     ed8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     edc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ee0:	e2833007 	add	r3, r3, #7
     ee4:	e1a031a3 	lsr	r3, r3, #3
     ee8:	e2833001 	add	r3, r3, #1
     eec:	e50b3010 	str	r3, [fp, #-16]
     ef0:	e59f3134 	ldr	r3, [pc, #308]	@ 102c <malloc+0x160>
     ef4:	e5933000 	ldr	r3, [r3]
     ef8:	e50b300c 	str	r3, [fp, #-12]
     efc:	e51b300c 	ldr	r3, [fp, #-12]
     f00:	e3530000 	cmp	r3, #0
     f04:	1a00000b 	bne	f38 <malloc+0x6c>
     f08:	e59f3120 	ldr	r3, [pc, #288]	@ 1030 <malloc+0x164>
     f0c:	e50b300c 	str	r3, [fp, #-12]
     f10:	e59f2114 	ldr	r2, [pc, #276]	@ 102c <malloc+0x160>
     f14:	e51b300c 	ldr	r3, [fp, #-12]
     f18:	e5823000 	str	r3, [r2]
     f1c:	e59f3108 	ldr	r3, [pc, #264]	@ 102c <malloc+0x160>
     f20:	e5933000 	ldr	r3, [r3]
     f24:	e59f2104 	ldr	r2, [pc, #260]	@ 1030 <malloc+0x164>
     f28:	e5823000 	str	r3, [r2]
     f2c:	e59f30fc 	ldr	r3, [pc, #252]	@ 1030 <malloc+0x164>
     f30:	e3a02000 	mov	r2, #0
     f34:	e5832004 	str	r2, [r3, #4]
     f38:	e51b300c 	ldr	r3, [fp, #-12]
     f3c:	e5933000 	ldr	r3, [r3]
     f40:	e50b3008 	str	r3, [fp, #-8]
     f44:	e51b3008 	ldr	r3, [fp, #-8]
     f48:	e5933004 	ldr	r3, [r3, #4]
     f4c:	e51b2010 	ldr	r2, [fp, #-16]
     f50:	e1520003 	cmp	r2, r3
     f54:	8a00001e 	bhi	fd4 <malloc+0x108>
     f58:	e51b3008 	ldr	r3, [fp, #-8]
     f5c:	e5933004 	ldr	r3, [r3, #4]
     f60:	e51b2010 	ldr	r2, [fp, #-16]
     f64:	e1520003 	cmp	r2, r3
     f68:	1a000004 	bne	f80 <malloc+0xb4>
     f6c:	e51b3008 	ldr	r3, [fp, #-8]
     f70:	e5932000 	ldr	r2, [r3]
     f74:	e51b300c 	ldr	r3, [fp, #-12]
     f78:	e5832000 	str	r2, [r3]
     f7c:	ea00000e 	b	fbc <malloc+0xf0>
     f80:	e51b3008 	ldr	r3, [fp, #-8]
     f84:	e5932004 	ldr	r2, [r3, #4]
     f88:	e51b3010 	ldr	r3, [fp, #-16]
     f8c:	e0422003 	sub	r2, r2, r3
     f90:	e51b3008 	ldr	r3, [fp, #-8]
     f94:	e5832004 	str	r2, [r3, #4]
     f98:	e51b3008 	ldr	r3, [fp, #-8]
     f9c:	e5933004 	ldr	r3, [r3, #4]
     fa0:	e1a03183 	lsl	r3, r3, #3
     fa4:	e51b2008 	ldr	r2, [fp, #-8]
     fa8:	e0823003 	add	r3, r2, r3
     fac:	e50b3008 	str	r3, [fp, #-8]
     fb0:	e51b3008 	ldr	r3, [fp, #-8]
     fb4:	e51b2010 	ldr	r2, [fp, #-16]
     fb8:	e5832004 	str	r2, [r3, #4]
     fbc:	e59f2068 	ldr	r2, [pc, #104]	@ 102c <malloc+0x160>
     fc0:	e51b300c 	ldr	r3, [fp, #-12]
     fc4:	e5823000 	str	r3, [r2]
     fc8:	e51b3008 	ldr	r3, [fp, #-8]
     fcc:	e2833008 	add	r3, r3, #8
     fd0:	ea000012 	b	1020 <malloc+0x154>
     fd4:	e59f3050 	ldr	r3, [pc, #80]	@ 102c <malloc+0x160>
     fd8:	e5933000 	ldr	r3, [r3]
     fdc:	e51b2008 	ldr	r2, [fp, #-8]
     fe0:	e1520003 	cmp	r2, r3
     fe4:	1a000007 	bne	1008 <malloc+0x13c>
     fe8:	e51b0010 	ldr	r0, [fp, #-16]
     fec:	ebffff94 	bl	e44 <morecore>
     ff0:	e50b0008 	str	r0, [fp, #-8]
     ff4:	e51b3008 	ldr	r3, [fp, #-8]
     ff8:	e3530000 	cmp	r3, #0
     ffc:	1a000001 	bne	1008 <malloc+0x13c>
    1000:	e3a03000 	mov	r3, #0
    1004:	ea000005 	b	1020 <malloc+0x154>
    1008:	e51b3008 	ldr	r3, [fp, #-8]
    100c:	e50b300c 	str	r3, [fp, #-12]
    1010:	e51b3008 	ldr	r3, [fp, #-8]
    1014:	e5933000 	ldr	r3, [r3]
    1018:	e50b3008 	str	r3, [fp, #-8]
    101c:	eaffffc8 	b	f44 <malloc+0x78>
    1020:	e1a00003 	mov	r0, r3
    1024:	e24bd004 	sub	sp, fp, #4
    1028:	e8bd8800 	pop	{fp, pc}
    102c:	00001184 	.word	0x00001184
    1030:	0000117c 	.word	0x0000117c

00001034 <__udivsi3>:
    1034:	e2512001 	subs	r2, r1, #1
    1038:	012fff1e 	bxeq	lr
    103c:	3a000036 	bcc	111c <__udivsi3+0xe8>
    1040:	e1500001 	cmp	r0, r1
    1044:	9a000022 	bls	10d4 <__udivsi3+0xa0>
    1048:	e1110002 	tst	r1, r2
    104c:	0a000023 	beq	10e0 <__udivsi3+0xac>
    1050:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1054:	01a01181 	lsleq	r1, r1, #3
    1058:	03a03008 	moveq	r3, #8
    105c:	13a03001 	movne	r3, #1
    1060:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1064:	31510000 	cmpcc	r1, r0
    1068:	31a01201 	lslcc	r1, r1, #4
    106c:	31a03203 	lslcc	r3, r3, #4
    1070:	3afffffa 	bcc	1060 <__udivsi3+0x2c>
    1074:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1078:	31510000 	cmpcc	r1, r0
    107c:	31a01081 	lslcc	r1, r1, #1
    1080:	31a03083 	lslcc	r3, r3, #1
    1084:	3afffffa 	bcc	1074 <__udivsi3+0x40>
    1088:	e3a02000 	mov	r2, #0
    108c:	e1500001 	cmp	r0, r1
    1090:	20400001 	subcs	r0, r0, r1
    1094:	21822003 	orrcs	r2, r2, r3
    1098:	e15000a1 	cmp	r0, r1, lsr #1
    109c:	204000a1 	subcs	r0, r0, r1, lsr #1
    10a0:	218220a3 	orrcs	r2, r2, r3, lsr #1
    10a4:	e1500121 	cmp	r0, r1, lsr #2
    10a8:	20400121 	subcs	r0, r0, r1, lsr #2
    10ac:	21822123 	orrcs	r2, r2, r3, lsr #2
    10b0:	e15001a1 	cmp	r0, r1, lsr #3
    10b4:	204001a1 	subcs	r0, r0, r1, lsr #3
    10b8:	218221a3 	orrcs	r2, r2, r3, lsr #3
    10bc:	e3500000 	cmp	r0, #0
    10c0:	11b03223 	lsrsne	r3, r3, #4
    10c4:	11a01221 	lsrne	r1, r1, #4
    10c8:	1affffef 	bne	108c <__udivsi3+0x58>
    10cc:	e1a00002 	mov	r0, r2
    10d0:	e12fff1e 	bx	lr
    10d4:	03a00001 	moveq	r0, #1
    10d8:	13a00000 	movne	r0, #0
    10dc:	e12fff1e 	bx	lr
    10e0:	e3510801 	cmp	r1, #65536	@ 0x10000
    10e4:	21a01821 	lsrcs	r1, r1, #16
    10e8:	23a02010 	movcs	r2, #16
    10ec:	33a02000 	movcc	r2, #0
    10f0:	e3510c01 	cmp	r1, #256	@ 0x100
    10f4:	21a01421 	lsrcs	r1, r1, #8
    10f8:	22822008 	addcs	r2, r2, #8
    10fc:	e3510010 	cmp	r1, #16
    1100:	21a01221 	lsrcs	r1, r1, #4
    1104:	22822004 	addcs	r2, r2, #4
    1108:	e3510004 	cmp	r1, #4
    110c:	82822003 	addhi	r2, r2, #3
    1110:	908220a1 	addls	r2, r2, r1, lsr #1
    1114:	e1a00230 	lsr	r0, r0, r2
    1118:	e12fff1e 	bx	lr
    111c:	e3500000 	cmp	r0, #0
    1120:	13e00000 	mvnne	r0, #0
    1124:	ea000007 	b	1148 <__aeabi_idiv0>

00001128 <__aeabi_uidivmod>:
    1128:	e3510000 	cmp	r1, #0
    112c:	0afffffa 	beq	111c <__udivsi3+0xe8>
    1130:	e92d4003 	push	{r0, r1, lr}
    1134:	ebffffbe 	bl	1034 <__udivsi3>
    1138:	e8bd4006 	pop	{r1, r2, lr}
    113c:	e0030092 	mul	r3, r2, r0
    1140:	e0411003 	sub	r1, r1, r3
    1144:	e12fff1e 	bx	lr

00001148 <__aeabi_idiv0>:
    1148:	e12fff1e 	bx	lr
