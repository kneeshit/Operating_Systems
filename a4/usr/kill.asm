
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
      28:	eb0003d0 	bl	f70 <printf>
      2c:	eb000238 	bl	914 <exit>
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
      60:	eb000261 	bl	9ec <kill>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e2833001 	add	r3, r3, #1
      6c:	e50b3008 	str	r3, [fp, #-8]
      70:	e51b2008 	ldr	r2, [fp, #-8]
      74:	e51b3010 	ldr	r3, [fp, #-16]
      78:	e1520003 	cmp	r2, r3
      7c:	baffffee 	blt	3c <main+0x3c>
      80:	eb000223 	bl	914 <exit>
      84:	0000162c 	.word	0x0000162c

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
     37c:	eb00017f 	bl	980 <read>
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
     424:	eb000182 	bl	a34 <open>
     428:	e50b0008 	str	r0, [fp, #-8]
     42c:	e51b3008 	ldr	r3, [fp, #-8]
     430:	e3530000 	cmp	r3, #0
     434:	aa000001 	bge	440 <stat+0x38>
     438:	e3e03000 	mvn	r3, #0
     43c:	ea000006 	b	45c <stat+0x54>
     440:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     444:	e51b0008 	ldr	r0, [fp, #-8]
     448:	eb000194 	bl	aa0 <fstat>
     44c:	e50b000c 	str	r0, [fp, #-12]
     450:	e51b0008 	ldr	r0, [fp, #-8]
     454:	eb00015b 	bl	9c8 <close>
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

000005b0 <xchg>:
     5b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5b4:	e28db000 	add	fp, sp, #0
     5b8:	e24dd00c 	sub	sp, sp, #12
     5bc:	e50b0008 	str	r0, [fp, #-8]
     5c0:	e50b100c 	str	r1, [fp, #-12]
     5c4:	e51b200c 	ldr	r2, [fp, #-12]
     5c8:	e51b3008 	ldr	r3, [fp, #-8]
     5cc:	e1931f9f 	ldrex	r1, [r3]
     5d0:	e1830f92 	strex	r0, r2, [r3]
     5d4:	e3500000 	cmp	r0, #0
     5d8:	1afffffb 	bne	5cc <xchg+0x1c>
     5dc:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     5e0:	e1a03001 	mov	r3, r1
     5e4:	e1a00003 	mov	r0, r3
     5e8:	e28bd000 	add	sp, fp, #0
     5ec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5f0:	e12fff1e 	bx	lr

000005f4 <acquireLock>:
     5f4:	e92d4800 	push	{fp, lr}
     5f8:	e28db004 	add	fp, sp, #4
     5fc:	e24dd008 	sub	sp, sp, #8
     600:	e50b0008 	str	r0, [fp, #-8]
     604:	e51b3008 	ldr	r3, [fp, #-8]
     608:	e5933004 	ldr	r3, [r3, #4]
     60c:	e3530000 	cmp	r3, #0
     610:	0a000008 	beq	638 <acquireLock+0x44>
     614:	e1a00000 	nop			@ (mov r0, r0)
     618:	e51b3008 	ldr	r3, [fp, #-8]
     61c:	e3a01001 	mov	r1, #1
     620:	e1a00003 	mov	r0, r3
     624:	ebffffe1 	bl	5b0 <xchg>
     628:	e1a03000 	mov	r3, r0
     62c:	e3530000 	cmp	r3, #0
     630:	1afffff8 	bne	618 <acquireLock+0x24>
     634:	ea000000 	b	63c <acquireLock+0x48>
     638:	e1a00000 	nop			@ (mov r0, r0)
     63c:	e24bd004 	sub	sp, fp, #4
     640:	e8bd8800 	pop	{fp, pc}

00000644 <releaseLock>:
     644:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     648:	e28db000 	add	fp, sp, #0
     64c:	e24dd00c 	sub	sp, sp, #12
     650:	e50b0008 	str	r0, [fp, #-8]
     654:	e51b3008 	ldr	r3, [fp, #-8]
     658:	e5933004 	ldr	r3, [r3, #4]
     65c:	e3530000 	cmp	r3, #0
     660:	0a000007 	beq	684 <releaseLock+0x40>
     664:	e51b3008 	ldr	r3, [fp, #-8]
     668:	e5933000 	ldr	r3, [r3]
     66c:	e3530001 	cmp	r3, #1
     670:	1a000005 	bne	68c <releaseLock+0x48>
     674:	e51b3008 	ldr	r3, [fp, #-8]
     678:	e3a02000 	mov	r2, #0
     67c:	e5832000 	str	r2, [r3]
     680:	ea000002 	b	690 <releaseLock+0x4c>
     684:	e1a00000 	nop			@ (mov r0, r0)
     688:	ea000000 	b	690 <releaseLock+0x4c>
     68c:	e1a00000 	nop			@ (mov r0, r0)
     690:	e28bd000 	add	sp, fp, #0
     694:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     698:	e12fff1e 	bx	lr

0000069c <initiateCondVar>:
     69c:	e92d4800 	push	{fp, lr}
     6a0:	e28db004 	add	fp, sp, #4
     6a4:	e24dd008 	sub	sp, sp, #8
     6a8:	e50b0008 	str	r0, [fp, #-8]
     6ac:	eb0001b8 	bl	d94 <getChannel>
     6b0:	e1a02000 	mov	r2, r0
     6b4:	e51b3008 	ldr	r3, [fp, #-8]
     6b8:	e5832000 	str	r2, [r3]
     6bc:	e51b3008 	ldr	r3, [fp, #-8]
     6c0:	e3a02001 	mov	r2, #1
     6c4:	e5832004 	str	r2, [r3, #4]
     6c8:	e1a00000 	nop			@ (mov r0, r0)
     6cc:	e24bd004 	sub	sp, fp, #4
     6d0:	e8bd8800 	pop	{fp, pc}

000006d4 <condWait>:
     6d4:	e92d4800 	push	{fp, lr}
     6d8:	e28db004 	add	fp, sp, #4
     6dc:	e24dd008 	sub	sp, sp, #8
     6e0:	e50b0008 	str	r0, [fp, #-8]
     6e4:	e50b100c 	str	r1, [fp, #-12]
     6e8:	e51b3008 	ldr	r3, [fp, #-8]
     6ec:	e5933004 	ldr	r3, [r3, #4]
     6f0:	e3530000 	cmp	r3, #0
     6f4:	0a00000c 	beq	72c <condWait+0x58>
     6f8:	e51b300c 	ldr	r3, [fp, #-12]
     6fc:	e5933004 	ldr	r3, [r3, #4]
     700:	e3530000 	cmp	r3, #0
     704:	0a000008 	beq	72c <condWait+0x58>
     708:	e51b000c 	ldr	r0, [fp, #-12]
     70c:	ebffffcc 	bl	644 <releaseLock>
     710:	e51b3008 	ldr	r3, [fp, #-8]
     714:	e5933000 	ldr	r3, [r3]
     718:	e1a00003 	mov	r0, r3
     71c:	eb000193 	bl	d70 <sleepChan>
     720:	e51b000c 	ldr	r0, [fp, #-12]
     724:	ebffffb2 	bl	5f4 <acquireLock>
     728:	ea000000 	b	730 <condWait+0x5c>
     72c:	e1a00000 	nop			@ (mov r0, r0)
     730:	e24bd004 	sub	sp, fp, #4
     734:	e8bd8800 	pop	{fp, pc}

00000738 <broadcast>:
     738:	e92d4800 	push	{fp, lr}
     73c:	e28db004 	add	fp, sp, #4
     740:	e24dd008 	sub	sp, sp, #8
     744:	e50b0008 	str	r0, [fp, #-8]
     748:	e51b3008 	ldr	r3, [fp, #-8]
     74c:	e5933004 	ldr	r3, [r3, #4]
     750:	e3530000 	cmp	r3, #0
     754:	0a000004 	beq	76c <broadcast+0x34>
     758:	e51b3008 	ldr	r3, [fp, #-8]
     75c:	e5933000 	ldr	r3, [r3]
     760:	e1a00003 	mov	r0, r3
     764:	eb000193 	bl	db8 <sigChan>
     768:	ea000000 	b	770 <broadcast+0x38>
     76c:	e1a00000 	nop			@ (mov r0, r0)
     770:	e24bd004 	sub	sp, fp, #4
     774:	e8bd8800 	pop	{fp, pc}

00000778 <signal>:
     778:	e92d4800 	push	{fp, lr}
     77c:	e28db004 	add	fp, sp, #4
     780:	e24dd008 	sub	sp, sp, #8
     784:	e50b0008 	str	r0, [fp, #-8]
     788:	e51b3008 	ldr	r3, [fp, #-8]
     78c:	e5933004 	ldr	r3, [r3, #4]
     790:	e3530000 	cmp	r3, #0
     794:	0a000004 	beq	7ac <signal+0x34>
     798:	e51b3008 	ldr	r3, [fp, #-8]
     79c:	e5933000 	ldr	r3, [r3]
     7a0:	e1a00003 	mov	r0, r3
     7a4:	eb00018c 	bl	ddc <sigOneChan>
     7a8:	ea000000 	b	7b0 <signal+0x38>
     7ac:	e1a00000 	nop			@ (mov r0, r0)
     7b0:	e24bd004 	sub	sp, fp, #4
     7b4:	e8bd8800 	pop	{fp, pc}

000007b8 <semInit>:
     7b8:	e92d4800 	push	{fp, lr}
     7bc:	e28db004 	add	fp, sp, #4
     7c0:	e24dd008 	sub	sp, sp, #8
     7c4:	e50b0008 	str	r0, [fp, #-8]
     7c8:	e50b100c 	str	r1, [fp, #-12]
     7cc:	e51b3008 	ldr	r3, [fp, #-8]
     7d0:	e51b200c 	ldr	r2, [fp, #-12]
     7d4:	e5832000 	str	r2, [r3]
     7d8:	e51b3008 	ldr	r3, [fp, #-8]
     7dc:	e2833004 	add	r3, r3, #4
     7e0:	e1a00003 	mov	r0, r3
     7e4:	ebffff63 	bl	578 <initiateLock>
     7e8:	e51b3008 	ldr	r3, [fp, #-8]
     7ec:	e283300c 	add	r3, r3, #12
     7f0:	e1a00003 	mov	r0, r3
     7f4:	ebffffa8 	bl	69c <initiateCondVar>
     7f8:	e51b3008 	ldr	r3, [fp, #-8]
     7fc:	e3a02001 	mov	r2, #1
     800:	e5832014 	str	r2, [r3, #20]
     804:	e1a00000 	nop			@ (mov r0, r0)
     808:	e24bd004 	sub	sp, fp, #4
     80c:	e8bd8800 	pop	{fp, pc}

00000810 <semUp>:
     810:	e92d4800 	push	{fp, lr}
     814:	e28db004 	add	fp, sp, #4
     818:	e24dd008 	sub	sp, sp, #8
     81c:	e50b0008 	str	r0, [fp, #-8]
     820:	e51b3008 	ldr	r3, [fp, #-8]
     824:	e2833004 	add	r3, r3, #4
     828:	e1a00003 	mov	r0, r3
     82c:	ebffff70 	bl	5f4 <acquireLock>
     830:	e51b3008 	ldr	r3, [fp, #-8]
     834:	e5933000 	ldr	r3, [r3]
     838:	e2832001 	add	r2, r3, #1
     83c:	e51b3008 	ldr	r3, [fp, #-8]
     840:	e5832000 	str	r2, [r3]
     844:	e51b3008 	ldr	r3, [fp, #-8]
     848:	e283300c 	add	r3, r3, #12
     84c:	e1a00003 	mov	r0, r3
     850:	ebffffc8 	bl	778 <signal>
     854:	e51b3008 	ldr	r3, [fp, #-8]
     858:	e2833004 	add	r3, r3, #4
     85c:	e1a00003 	mov	r0, r3
     860:	ebffff77 	bl	644 <releaseLock>
     864:	e1a00000 	nop			@ (mov r0, r0)
     868:	e24bd004 	sub	sp, fp, #4
     86c:	e8bd8800 	pop	{fp, pc}

00000870 <semDown>:
     870:	e92d4800 	push	{fp, lr}
     874:	e28db004 	add	fp, sp, #4
     878:	e24dd008 	sub	sp, sp, #8
     87c:	e50b0008 	str	r0, [fp, #-8]
     880:	e51b3008 	ldr	r3, [fp, #-8]
     884:	e2833004 	add	r3, r3, #4
     888:	e1a00003 	mov	r0, r3
     88c:	ebffff58 	bl	5f4 <acquireLock>
     890:	ea000006 	b	8b0 <semDown+0x40>
     894:	e51b3008 	ldr	r3, [fp, #-8]
     898:	e283200c 	add	r2, r3, #12
     89c:	e51b3008 	ldr	r3, [fp, #-8]
     8a0:	e2833004 	add	r3, r3, #4
     8a4:	e1a01003 	mov	r1, r3
     8a8:	e1a00002 	mov	r0, r2
     8ac:	ebffff88 	bl	6d4 <condWait>
     8b0:	e51b3008 	ldr	r3, [fp, #-8]
     8b4:	e5933000 	ldr	r3, [r3]
     8b8:	e3530000 	cmp	r3, #0
     8bc:	dafffff4 	ble	894 <semDown+0x24>
     8c0:	e51b3008 	ldr	r3, [fp, #-8]
     8c4:	e5933000 	ldr	r3, [r3]
     8c8:	e2432001 	sub	r2, r3, #1
     8cc:	e51b3008 	ldr	r3, [fp, #-8]
     8d0:	e5832000 	str	r2, [r3]
     8d4:	e51b3008 	ldr	r3, [fp, #-8]
     8d8:	e2833004 	add	r3, r3, #4
     8dc:	e1a00003 	mov	r0, r3
     8e0:	ebffff57 	bl	644 <releaseLock>
     8e4:	e1a00000 	nop			@ (mov r0, r0)
     8e8:	e24bd004 	sub	sp, fp, #4
     8ec:	e8bd8800 	pop	{fp, pc}

000008f0 <fork>:
     8f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8f4:	e1a04003 	mov	r4, r3
     8f8:	e1a03002 	mov	r3, r2
     8fc:	e1a02001 	mov	r2, r1
     900:	e1a01000 	mov	r1, r0
     904:	e3a00001 	mov	r0, #1
     908:	ef000000 	svc	0x00000000
     90c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     910:	e12fff1e 	bx	lr

00000914 <exit>:
     914:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     918:	e1a04003 	mov	r4, r3
     91c:	e1a03002 	mov	r3, r2
     920:	e1a02001 	mov	r2, r1
     924:	e1a01000 	mov	r1, r0
     928:	e3a00002 	mov	r0, #2
     92c:	ef000000 	svc	0x00000000
     930:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     934:	e12fff1e 	bx	lr

00000938 <wait>:
     938:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     93c:	e1a04003 	mov	r4, r3
     940:	e1a03002 	mov	r3, r2
     944:	e1a02001 	mov	r2, r1
     948:	e1a01000 	mov	r1, r0
     94c:	e3a00003 	mov	r0, #3
     950:	ef000000 	svc	0x00000000
     954:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     958:	e12fff1e 	bx	lr

0000095c <pipe>:
     95c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     960:	e1a04003 	mov	r4, r3
     964:	e1a03002 	mov	r3, r2
     968:	e1a02001 	mov	r2, r1
     96c:	e1a01000 	mov	r1, r0
     970:	e3a00004 	mov	r0, #4
     974:	ef000000 	svc	0x00000000
     978:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     97c:	e12fff1e 	bx	lr

00000980 <read>:
     980:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     984:	e1a04003 	mov	r4, r3
     988:	e1a03002 	mov	r3, r2
     98c:	e1a02001 	mov	r2, r1
     990:	e1a01000 	mov	r1, r0
     994:	e3a00005 	mov	r0, #5
     998:	ef000000 	svc	0x00000000
     99c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a0:	e12fff1e 	bx	lr

000009a4 <write>:
     9a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a8:	e1a04003 	mov	r4, r3
     9ac:	e1a03002 	mov	r3, r2
     9b0:	e1a02001 	mov	r2, r1
     9b4:	e1a01000 	mov	r1, r0
     9b8:	e3a00010 	mov	r0, #16
     9bc:	ef000000 	svc	0x00000000
     9c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c4:	e12fff1e 	bx	lr

000009c8 <close>:
     9c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9cc:	e1a04003 	mov	r4, r3
     9d0:	e1a03002 	mov	r3, r2
     9d4:	e1a02001 	mov	r2, r1
     9d8:	e1a01000 	mov	r1, r0
     9dc:	e3a00015 	mov	r0, #21
     9e0:	ef000000 	svc	0x00000000
     9e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e8:	e12fff1e 	bx	lr

000009ec <kill>:
     9ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f0:	e1a04003 	mov	r4, r3
     9f4:	e1a03002 	mov	r3, r2
     9f8:	e1a02001 	mov	r2, r1
     9fc:	e1a01000 	mov	r1, r0
     a00:	e3a00006 	mov	r0, #6
     a04:	ef000000 	svc	0x00000000
     a08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a0c:	e12fff1e 	bx	lr

00000a10 <exec>:
     a10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a14:	e1a04003 	mov	r4, r3
     a18:	e1a03002 	mov	r3, r2
     a1c:	e1a02001 	mov	r2, r1
     a20:	e1a01000 	mov	r1, r0
     a24:	e3a00007 	mov	r0, #7
     a28:	ef000000 	svc	0x00000000
     a2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a30:	e12fff1e 	bx	lr

00000a34 <open>:
     a34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a38:	e1a04003 	mov	r4, r3
     a3c:	e1a03002 	mov	r3, r2
     a40:	e1a02001 	mov	r2, r1
     a44:	e1a01000 	mov	r1, r0
     a48:	e3a0000f 	mov	r0, #15
     a4c:	ef000000 	svc	0x00000000
     a50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a54:	e12fff1e 	bx	lr

00000a58 <mknod>:
     a58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a5c:	e1a04003 	mov	r4, r3
     a60:	e1a03002 	mov	r3, r2
     a64:	e1a02001 	mov	r2, r1
     a68:	e1a01000 	mov	r1, r0
     a6c:	e3a00011 	mov	r0, #17
     a70:	ef000000 	svc	0x00000000
     a74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a78:	e12fff1e 	bx	lr

00000a7c <unlink>:
     a7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a80:	e1a04003 	mov	r4, r3
     a84:	e1a03002 	mov	r3, r2
     a88:	e1a02001 	mov	r2, r1
     a8c:	e1a01000 	mov	r1, r0
     a90:	e3a00012 	mov	r0, #18
     a94:	ef000000 	svc	0x00000000
     a98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a9c:	e12fff1e 	bx	lr

00000aa0 <fstat>:
     aa0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa4:	e1a04003 	mov	r4, r3
     aa8:	e1a03002 	mov	r3, r2
     aac:	e1a02001 	mov	r2, r1
     ab0:	e1a01000 	mov	r1, r0
     ab4:	e3a00008 	mov	r0, #8
     ab8:	ef000000 	svc	0x00000000
     abc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac0:	e12fff1e 	bx	lr

00000ac4 <link>:
     ac4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac8:	e1a04003 	mov	r4, r3
     acc:	e1a03002 	mov	r3, r2
     ad0:	e1a02001 	mov	r2, r1
     ad4:	e1a01000 	mov	r1, r0
     ad8:	e3a00013 	mov	r0, #19
     adc:	ef000000 	svc	0x00000000
     ae0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae4:	e12fff1e 	bx	lr

00000ae8 <mkdir>:
     ae8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aec:	e1a04003 	mov	r4, r3
     af0:	e1a03002 	mov	r3, r2
     af4:	e1a02001 	mov	r2, r1
     af8:	e1a01000 	mov	r1, r0
     afc:	e3a00014 	mov	r0, #20
     b00:	ef000000 	svc	0x00000000
     b04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b08:	e12fff1e 	bx	lr

00000b0c <chdir>:
     b0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b10:	e1a04003 	mov	r4, r3
     b14:	e1a03002 	mov	r3, r2
     b18:	e1a02001 	mov	r2, r1
     b1c:	e1a01000 	mov	r1, r0
     b20:	e3a00009 	mov	r0, #9
     b24:	ef000000 	svc	0x00000000
     b28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b2c:	e12fff1e 	bx	lr

00000b30 <dup>:
     b30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b34:	e1a04003 	mov	r4, r3
     b38:	e1a03002 	mov	r3, r2
     b3c:	e1a02001 	mov	r2, r1
     b40:	e1a01000 	mov	r1, r0
     b44:	e3a0000a 	mov	r0, #10
     b48:	ef000000 	svc	0x00000000
     b4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b50:	e12fff1e 	bx	lr

00000b54 <getpid>:
     b54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b58:	e1a04003 	mov	r4, r3
     b5c:	e1a03002 	mov	r3, r2
     b60:	e1a02001 	mov	r2, r1
     b64:	e1a01000 	mov	r1, r0
     b68:	e3a0000b 	mov	r0, #11
     b6c:	ef000000 	svc	0x00000000
     b70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b74:	e12fff1e 	bx	lr

00000b78 <sbrk>:
     b78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b7c:	e1a04003 	mov	r4, r3
     b80:	e1a03002 	mov	r3, r2
     b84:	e1a02001 	mov	r2, r1
     b88:	e1a01000 	mov	r1, r0
     b8c:	e3a0000c 	mov	r0, #12
     b90:	ef000000 	svc	0x00000000
     b94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b98:	e12fff1e 	bx	lr

00000b9c <sleep>:
     b9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba0:	e1a04003 	mov	r4, r3
     ba4:	e1a03002 	mov	r3, r2
     ba8:	e1a02001 	mov	r2, r1
     bac:	e1a01000 	mov	r1, r0
     bb0:	e3a0000d 	mov	r0, #13
     bb4:	ef000000 	svc	0x00000000
     bb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bbc:	e12fff1e 	bx	lr

00000bc0 <uptime>:
     bc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc4:	e1a04003 	mov	r4, r3
     bc8:	e1a03002 	mov	r3, r2
     bcc:	e1a02001 	mov	r2, r1
     bd0:	e1a01000 	mov	r1, r0
     bd4:	e3a0000e 	mov	r0, #14
     bd8:	ef000000 	svc	0x00000000
     bdc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be0:	e12fff1e 	bx	lr

00000be4 <getprocs>:
     be4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be8:	e1a04003 	mov	r4, r3
     bec:	e1a03002 	mov	r3, r2
     bf0:	e1a02001 	mov	r2, r1
     bf4:	e1a01000 	mov	r1, r0
     bf8:	e3a00016 	mov	r0, #22
     bfc:	ef000000 	svc	0x00000000
     c00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c04:	e12fff1e 	bx	lr

00000c08 <settickets>:
     c08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c0c:	e1a04003 	mov	r4, r3
     c10:	e1a03002 	mov	r3, r2
     c14:	e1a02001 	mov	r2, r1
     c18:	e1a01000 	mov	r1, r0
     c1c:	e3a00017 	mov	r0, #23
     c20:	ef000000 	svc	0x00000000
     c24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c28:	e12fff1e 	bx	lr

00000c2c <srand>:
     c2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c30:	e1a04003 	mov	r4, r3
     c34:	e1a03002 	mov	r3, r2
     c38:	e1a02001 	mov	r2, r1
     c3c:	e1a01000 	mov	r1, r0
     c40:	e3a00018 	mov	r0, #24
     c44:	ef000000 	svc	0x00000000
     c48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c4c:	e12fff1e 	bx	lr

00000c50 <getpinfo>:
     c50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c54:	e1a04003 	mov	r4, r3
     c58:	e1a03002 	mov	r3, r2
     c5c:	e1a02001 	mov	r2, r1
     c60:	e1a01000 	mov	r1, r0
     c64:	e3a00019 	mov	r0, #25
     c68:	ef000000 	svc	0x00000000
     c6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c70:	e12fff1e 	bx	lr

00000c74 <dumppagetable>:
     c74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c78:	e1a04003 	mov	r4, r3
     c7c:	e1a03002 	mov	r3, r2
     c80:	e1a02001 	mov	r2, r1
     c84:	e1a01000 	mov	r1, r0
     c88:	e3a0001a 	mov	r0, #26
     c8c:	ef000000 	svc	0x00000000
     c90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c94:	e12fff1e 	bx	lr

00000c98 <thread_create>:
     c98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c9c:	e1a04003 	mov	r4, r3
     ca0:	e1a03002 	mov	r3, r2
     ca4:	e1a02001 	mov	r2, r1
     ca8:	e1a01000 	mov	r1, r0
     cac:	e3a0001b 	mov	r0, #27
     cb0:	ef000000 	svc	0x00000000
     cb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb8:	e12fff1e 	bx	lr

00000cbc <thread_exit>:
     cbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc0:	e1a04003 	mov	r4, r3
     cc4:	e1a03002 	mov	r3, r2
     cc8:	e1a02001 	mov	r2, r1
     ccc:	e1a01000 	mov	r1, r0
     cd0:	e3a0001c 	mov	r0, #28
     cd4:	ef000000 	svc	0x00000000
     cd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cdc:	e12fff1e 	bx	lr

00000ce0 <thread_join>:
     ce0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce4:	e1a04003 	mov	r4, r3
     ce8:	e1a03002 	mov	r3, r2
     cec:	e1a02001 	mov	r2, r1
     cf0:	e1a01000 	mov	r1, r0
     cf4:	e3a0001d 	mov	r0, #29
     cf8:	ef000000 	svc	0x00000000
     cfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d00:	e12fff1e 	bx	lr

00000d04 <waitpid>:
     d04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d08:	e1a04003 	mov	r4, r3
     d0c:	e1a03002 	mov	r3, r2
     d10:	e1a02001 	mov	r2, r1
     d14:	e1a01000 	mov	r1, r0
     d18:	e3a0001e 	mov	r0, #30
     d1c:	ef000000 	svc	0x00000000
     d20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d24:	e12fff1e 	bx	lr

00000d28 <barrier_init>:
     d28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d2c:	e1a04003 	mov	r4, r3
     d30:	e1a03002 	mov	r3, r2
     d34:	e1a02001 	mov	r2, r1
     d38:	e1a01000 	mov	r1, r0
     d3c:	e3a0001f 	mov	r0, #31
     d40:	ef000000 	svc	0x00000000
     d44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d48:	e12fff1e 	bx	lr

00000d4c <barrier_check>:
     d4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d50:	e1a04003 	mov	r4, r3
     d54:	e1a03002 	mov	r3, r2
     d58:	e1a02001 	mov	r2, r1
     d5c:	e1a01000 	mov	r1, r0
     d60:	e3a00020 	mov	r0, #32
     d64:	ef000000 	svc	0x00000000
     d68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d6c:	e12fff1e 	bx	lr

00000d70 <sleepChan>:
     d70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d74:	e1a04003 	mov	r4, r3
     d78:	e1a03002 	mov	r3, r2
     d7c:	e1a02001 	mov	r2, r1
     d80:	e1a01000 	mov	r1, r0
     d84:	e3a00024 	mov	r0, #36	@ 0x24
     d88:	ef000000 	svc	0x00000000
     d8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d90:	e12fff1e 	bx	lr

00000d94 <getChannel>:
     d94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d98:	e1a04003 	mov	r4, r3
     d9c:	e1a03002 	mov	r3, r2
     da0:	e1a02001 	mov	r2, r1
     da4:	e1a01000 	mov	r1, r0
     da8:	e3a00025 	mov	r0, #37	@ 0x25
     dac:	ef000000 	svc	0x00000000
     db0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     db4:	e12fff1e 	bx	lr

00000db8 <sigChan>:
     db8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dbc:	e1a04003 	mov	r4, r3
     dc0:	e1a03002 	mov	r3, r2
     dc4:	e1a02001 	mov	r2, r1
     dc8:	e1a01000 	mov	r1, r0
     dcc:	e3a00026 	mov	r0, #38	@ 0x26
     dd0:	ef000000 	svc	0x00000000
     dd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd8:	e12fff1e 	bx	lr

00000ddc <sigOneChan>:
     ddc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     de0:	e1a04003 	mov	r4, r3
     de4:	e1a03002 	mov	r3, r2
     de8:	e1a02001 	mov	r2, r1
     dec:	e1a01000 	mov	r1, r0
     df0:	e3a00027 	mov	r0, #39	@ 0x27
     df4:	ef000000 	svc	0x00000000
     df8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dfc:	e12fff1e 	bx	lr

00000e00 <putc>:
     e00:	e92d4800 	push	{fp, lr}
     e04:	e28db004 	add	fp, sp, #4
     e08:	e24dd008 	sub	sp, sp, #8
     e0c:	e50b0008 	str	r0, [fp, #-8]
     e10:	e1a03001 	mov	r3, r1
     e14:	e54b3009 	strb	r3, [fp, #-9]
     e18:	e24b3009 	sub	r3, fp, #9
     e1c:	e3a02001 	mov	r2, #1
     e20:	e1a01003 	mov	r1, r3
     e24:	e51b0008 	ldr	r0, [fp, #-8]
     e28:	ebfffedd 	bl	9a4 <write>
     e2c:	e1a00000 	nop			@ (mov r0, r0)
     e30:	e24bd004 	sub	sp, fp, #4
     e34:	e8bd8800 	pop	{fp, pc}

00000e38 <printint>:
     e38:	e92d4800 	push	{fp, lr}
     e3c:	e28db004 	add	fp, sp, #4
     e40:	e24dd030 	sub	sp, sp, #48	@ 0x30
     e44:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     e48:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     e4c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     e50:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     e54:	e3a03000 	mov	r3, #0
     e58:	e50b300c 	str	r3, [fp, #-12]
     e5c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     e60:	e3530000 	cmp	r3, #0
     e64:	0a000008 	beq	e8c <printint+0x54>
     e68:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e6c:	e3530000 	cmp	r3, #0
     e70:	aa000005 	bge	e8c <printint+0x54>
     e74:	e3a03001 	mov	r3, #1
     e78:	e50b300c 	str	r3, [fp, #-12]
     e7c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e80:	e2633000 	rsb	r3, r3, #0
     e84:	e50b3010 	str	r3, [fp, #-16]
     e88:	ea000001 	b	e94 <printint+0x5c>
     e8c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e90:	e50b3010 	str	r3, [fp, #-16]
     e94:	e3a03000 	mov	r3, #0
     e98:	e50b3008 	str	r3, [fp, #-8]
     e9c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     ea0:	e51b3010 	ldr	r3, [fp, #-16]
     ea4:	e1a01002 	mov	r1, r2
     ea8:	e1a00003 	mov	r0, r3
     eac:	eb0001d5 	bl	1608 <__aeabi_uidivmod>
     eb0:	e1a03001 	mov	r3, r1
     eb4:	e1a01003 	mov	r1, r3
     eb8:	e51b3008 	ldr	r3, [fp, #-8]
     ebc:	e2832001 	add	r2, r3, #1
     ec0:	e50b2008 	str	r2, [fp, #-8]
     ec4:	e59f20a0 	ldr	r2, [pc, #160]	@ f6c <printint+0x134>
     ec8:	e7d22001 	ldrb	r2, [r2, r1]
     ecc:	e2433004 	sub	r3, r3, #4
     ed0:	e083300b 	add	r3, r3, fp
     ed4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ed8:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     edc:	e1a01003 	mov	r1, r3
     ee0:	e51b0010 	ldr	r0, [fp, #-16]
     ee4:	eb00018a 	bl	1514 <__udivsi3>
     ee8:	e1a03000 	mov	r3, r0
     eec:	e50b3010 	str	r3, [fp, #-16]
     ef0:	e51b3010 	ldr	r3, [fp, #-16]
     ef4:	e3530000 	cmp	r3, #0
     ef8:	1affffe7 	bne	e9c <printint+0x64>
     efc:	e51b300c 	ldr	r3, [fp, #-12]
     f00:	e3530000 	cmp	r3, #0
     f04:	0a00000e 	beq	f44 <printint+0x10c>
     f08:	e51b3008 	ldr	r3, [fp, #-8]
     f0c:	e2832001 	add	r2, r3, #1
     f10:	e50b2008 	str	r2, [fp, #-8]
     f14:	e2433004 	sub	r3, r3, #4
     f18:	e083300b 	add	r3, r3, fp
     f1c:	e3a0202d 	mov	r2, #45	@ 0x2d
     f20:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f24:	ea000006 	b	f44 <printint+0x10c>
     f28:	e24b2020 	sub	r2, fp, #32
     f2c:	e51b3008 	ldr	r3, [fp, #-8]
     f30:	e0823003 	add	r3, r2, r3
     f34:	e5d33000 	ldrb	r3, [r3]
     f38:	e1a01003 	mov	r1, r3
     f3c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     f40:	ebffffae 	bl	e00 <putc>
     f44:	e51b3008 	ldr	r3, [fp, #-8]
     f48:	e2433001 	sub	r3, r3, #1
     f4c:	e50b3008 	str	r3, [fp, #-8]
     f50:	e51b3008 	ldr	r3, [fp, #-8]
     f54:	e3530000 	cmp	r3, #0
     f58:	aafffff2 	bge	f28 <printint+0xf0>
     f5c:	e1a00000 	nop			@ (mov r0, r0)
     f60:	e1a00000 	nop			@ (mov r0, r0)
     f64:	e24bd004 	sub	sp, fp, #4
     f68:	e8bd8800 	pop	{fp, pc}
     f6c:	00001648 	.word	0x00001648

00000f70 <printf>:
     f70:	e92d000e 	push	{r1, r2, r3}
     f74:	e92d4800 	push	{fp, lr}
     f78:	e28db004 	add	fp, sp, #4
     f7c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     f80:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     f84:	e3a03000 	mov	r3, #0
     f88:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f8c:	e28b3008 	add	r3, fp, #8
     f90:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f94:	e3a03000 	mov	r3, #0
     f98:	e50b3010 	str	r3, [fp, #-16]
     f9c:	ea000074 	b	1174 <printf+0x204>
     fa0:	e59b2004 	ldr	r2, [fp, #4]
     fa4:	e51b3010 	ldr	r3, [fp, #-16]
     fa8:	e0823003 	add	r3, r2, r3
     fac:	e5d33000 	ldrb	r3, [r3]
     fb0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     fb4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     fb8:	e3530000 	cmp	r3, #0
     fbc:	1a00000b 	bne	ff0 <printf+0x80>
     fc0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fc4:	e3530025 	cmp	r3, #37	@ 0x25
     fc8:	1a000002 	bne	fd8 <printf+0x68>
     fcc:	e3a03025 	mov	r3, #37	@ 0x25
     fd0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     fd4:	ea000063 	b	1168 <printf+0x1f8>
     fd8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fdc:	e6ef3073 	uxtb	r3, r3
     fe0:	e1a01003 	mov	r1, r3
     fe4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fe8:	ebffff84 	bl	e00 <putc>
     fec:	ea00005d 	b	1168 <printf+0x1f8>
     ff0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ff4:	e3530025 	cmp	r3, #37	@ 0x25
     ff8:	1a00005a 	bne	1168 <printf+0x1f8>
     ffc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1000:	e3530064 	cmp	r3, #100	@ 0x64
    1004:	1a00000a 	bne	1034 <printf+0xc4>
    1008:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    100c:	e5933000 	ldr	r3, [r3]
    1010:	e1a01003 	mov	r1, r3
    1014:	e3a03001 	mov	r3, #1
    1018:	e3a0200a 	mov	r2, #10
    101c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1020:	ebffff84 	bl	e38 <printint>
    1024:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1028:	e2833004 	add	r3, r3, #4
    102c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1030:	ea00004a 	b	1160 <printf+0x1f0>
    1034:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1038:	e3530078 	cmp	r3, #120	@ 0x78
    103c:	0a000002 	beq	104c <printf+0xdc>
    1040:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1044:	e3530070 	cmp	r3, #112	@ 0x70
    1048:	1a00000a 	bne	1078 <printf+0x108>
    104c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1050:	e5933000 	ldr	r3, [r3]
    1054:	e1a01003 	mov	r1, r3
    1058:	e3a03000 	mov	r3, #0
    105c:	e3a02010 	mov	r2, #16
    1060:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1064:	ebffff73 	bl	e38 <printint>
    1068:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    106c:	e2833004 	add	r3, r3, #4
    1070:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1074:	ea000039 	b	1160 <printf+0x1f0>
    1078:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    107c:	e3530073 	cmp	r3, #115	@ 0x73
    1080:	1a000018 	bne	10e8 <printf+0x178>
    1084:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1088:	e5933000 	ldr	r3, [r3]
    108c:	e50b300c 	str	r3, [fp, #-12]
    1090:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1094:	e2833004 	add	r3, r3, #4
    1098:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    109c:	e51b300c 	ldr	r3, [fp, #-12]
    10a0:	e3530000 	cmp	r3, #0
    10a4:	1a00000a 	bne	10d4 <printf+0x164>
    10a8:	e59f30f4 	ldr	r3, [pc, #244]	@ 11a4 <printf+0x234>
    10ac:	e50b300c 	str	r3, [fp, #-12]
    10b0:	ea000007 	b	10d4 <printf+0x164>
    10b4:	e51b300c 	ldr	r3, [fp, #-12]
    10b8:	e5d33000 	ldrb	r3, [r3]
    10bc:	e1a01003 	mov	r1, r3
    10c0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10c4:	ebffff4d 	bl	e00 <putc>
    10c8:	e51b300c 	ldr	r3, [fp, #-12]
    10cc:	e2833001 	add	r3, r3, #1
    10d0:	e50b300c 	str	r3, [fp, #-12]
    10d4:	e51b300c 	ldr	r3, [fp, #-12]
    10d8:	e5d33000 	ldrb	r3, [r3]
    10dc:	e3530000 	cmp	r3, #0
    10e0:	1afffff3 	bne	10b4 <printf+0x144>
    10e4:	ea00001d 	b	1160 <printf+0x1f0>
    10e8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10ec:	e3530063 	cmp	r3, #99	@ 0x63
    10f0:	1a000009 	bne	111c <printf+0x1ac>
    10f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10f8:	e5933000 	ldr	r3, [r3]
    10fc:	e6ef3073 	uxtb	r3, r3
    1100:	e1a01003 	mov	r1, r3
    1104:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1108:	ebffff3c 	bl	e00 <putc>
    110c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1110:	e2833004 	add	r3, r3, #4
    1114:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1118:	ea000010 	b	1160 <printf+0x1f0>
    111c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1120:	e3530025 	cmp	r3, #37	@ 0x25
    1124:	1a000005 	bne	1140 <printf+0x1d0>
    1128:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    112c:	e6ef3073 	uxtb	r3, r3
    1130:	e1a01003 	mov	r1, r3
    1134:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1138:	ebffff30 	bl	e00 <putc>
    113c:	ea000007 	b	1160 <printf+0x1f0>
    1140:	e3a01025 	mov	r1, #37	@ 0x25
    1144:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1148:	ebffff2c 	bl	e00 <putc>
    114c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1150:	e6ef3073 	uxtb	r3, r3
    1154:	e1a01003 	mov	r1, r3
    1158:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    115c:	ebffff27 	bl	e00 <putc>
    1160:	e3a03000 	mov	r3, #0
    1164:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1168:	e51b3010 	ldr	r3, [fp, #-16]
    116c:	e2833001 	add	r3, r3, #1
    1170:	e50b3010 	str	r3, [fp, #-16]
    1174:	e59b2004 	ldr	r2, [fp, #4]
    1178:	e51b3010 	ldr	r3, [fp, #-16]
    117c:	e0823003 	add	r3, r2, r3
    1180:	e5d33000 	ldrb	r3, [r3]
    1184:	e3530000 	cmp	r3, #0
    1188:	1affff84 	bne	fa0 <printf+0x30>
    118c:	e1a00000 	nop			@ (mov r0, r0)
    1190:	e1a00000 	nop			@ (mov r0, r0)
    1194:	e24bd004 	sub	sp, fp, #4
    1198:	e8bd4800 	pop	{fp, lr}
    119c:	e28dd00c 	add	sp, sp, #12
    11a0:	e12fff1e 	bx	lr
    11a4:	00001640 	.word	0x00001640

000011a8 <free>:
    11a8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    11ac:	e28db000 	add	fp, sp, #0
    11b0:	e24dd014 	sub	sp, sp, #20
    11b4:	e50b0010 	str	r0, [fp, #-16]
    11b8:	e51b3010 	ldr	r3, [fp, #-16]
    11bc:	e2433008 	sub	r3, r3, #8
    11c0:	e50b300c 	str	r3, [fp, #-12]
    11c4:	e59f3154 	ldr	r3, [pc, #340]	@ 1320 <free+0x178>
    11c8:	e5933000 	ldr	r3, [r3]
    11cc:	e50b3008 	str	r3, [fp, #-8]
    11d0:	ea000010 	b	1218 <free+0x70>
    11d4:	e51b3008 	ldr	r3, [fp, #-8]
    11d8:	e5933000 	ldr	r3, [r3]
    11dc:	e51b2008 	ldr	r2, [fp, #-8]
    11e0:	e1520003 	cmp	r2, r3
    11e4:	3a000008 	bcc	120c <free+0x64>
    11e8:	e51b200c 	ldr	r2, [fp, #-12]
    11ec:	e51b3008 	ldr	r3, [fp, #-8]
    11f0:	e1520003 	cmp	r2, r3
    11f4:	8a000010 	bhi	123c <free+0x94>
    11f8:	e51b3008 	ldr	r3, [fp, #-8]
    11fc:	e5933000 	ldr	r3, [r3]
    1200:	e51b200c 	ldr	r2, [fp, #-12]
    1204:	e1520003 	cmp	r2, r3
    1208:	3a00000b 	bcc	123c <free+0x94>
    120c:	e51b3008 	ldr	r3, [fp, #-8]
    1210:	e5933000 	ldr	r3, [r3]
    1214:	e50b3008 	str	r3, [fp, #-8]
    1218:	e51b200c 	ldr	r2, [fp, #-12]
    121c:	e51b3008 	ldr	r3, [fp, #-8]
    1220:	e1520003 	cmp	r2, r3
    1224:	9affffea 	bls	11d4 <free+0x2c>
    1228:	e51b3008 	ldr	r3, [fp, #-8]
    122c:	e5933000 	ldr	r3, [r3]
    1230:	e51b200c 	ldr	r2, [fp, #-12]
    1234:	e1520003 	cmp	r2, r3
    1238:	2affffe5 	bcs	11d4 <free+0x2c>
    123c:	e51b300c 	ldr	r3, [fp, #-12]
    1240:	e5933004 	ldr	r3, [r3, #4]
    1244:	e1a03183 	lsl	r3, r3, #3
    1248:	e51b200c 	ldr	r2, [fp, #-12]
    124c:	e0822003 	add	r2, r2, r3
    1250:	e51b3008 	ldr	r3, [fp, #-8]
    1254:	e5933000 	ldr	r3, [r3]
    1258:	e1520003 	cmp	r2, r3
    125c:	1a00000d 	bne	1298 <free+0xf0>
    1260:	e51b300c 	ldr	r3, [fp, #-12]
    1264:	e5932004 	ldr	r2, [r3, #4]
    1268:	e51b3008 	ldr	r3, [fp, #-8]
    126c:	e5933000 	ldr	r3, [r3]
    1270:	e5933004 	ldr	r3, [r3, #4]
    1274:	e0822003 	add	r2, r2, r3
    1278:	e51b300c 	ldr	r3, [fp, #-12]
    127c:	e5832004 	str	r2, [r3, #4]
    1280:	e51b3008 	ldr	r3, [fp, #-8]
    1284:	e5933000 	ldr	r3, [r3]
    1288:	e5932000 	ldr	r2, [r3]
    128c:	e51b300c 	ldr	r3, [fp, #-12]
    1290:	e5832000 	str	r2, [r3]
    1294:	ea000003 	b	12a8 <free+0x100>
    1298:	e51b3008 	ldr	r3, [fp, #-8]
    129c:	e5932000 	ldr	r2, [r3]
    12a0:	e51b300c 	ldr	r3, [fp, #-12]
    12a4:	e5832000 	str	r2, [r3]
    12a8:	e51b3008 	ldr	r3, [fp, #-8]
    12ac:	e5933004 	ldr	r3, [r3, #4]
    12b0:	e1a03183 	lsl	r3, r3, #3
    12b4:	e51b2008 	ldr	r2, [fp, #-8]
    12b8:	e0823003 	add	r3, r2, r3
    12bc:	e51b200c 	ldr	r2, [fp, #-12]
    12c0:	e1520003 	cmp	r2, r3
    12c4:	1a00000b 	bne	12f8 <free+0x150>
    12c8:	e51b3008 	ldr	r3, [fp, #-8]
    12cc:	e5932004 	ldr	r2, [r3, #4]
    12d0:	e51b300c 	ldr	r3, [fp, #-12]
    12d4:	e5933004 	ldr	r3, [r3, #4]
    12d8:	e0822003 	add	r2, r2, r3
    12dc:	e51b3008 	ldr	r3, [fp, #-8]
    12e0:	e5832004 	str	r2, [r3, #4]
    12e4:	e51b300c 	ldr	r3, [fp, #-12]
    12e8:	e5932000 	ldr	r2, [r3]
    12ec:	e51b3008 	ldr	r3, [fp, #-8]
    12f0:	e5832000 	str	r2, [r3]
    12f4:	ea000002 	b	1304 <free+0x15c>
    12f8:	e51b3008 	ldr	r3, [fp, #-8]
    12fc:	e51b200c 	ldr	r2, [fp, #-12]
    1300:	e5832000 	str	r2, [r3]
    1304:	e59f2014 	ldr	r2, [pc, #20]	@ 1320 <free+0x178>
    1308:	e51b3008 	ldr	r3, [fp, #-8]
    130c:	e5823000 	str	r3, [r2]
    1310:	e1a00000 	nop			@ (mov r0, r0)
    1314:	e28bd000 	add	sp, fp, #0
    1318:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    131c:	e12fff1e 	bx	lr
    1320:	00001664 	.word	0x00001664

00001324 <morecore>:
    1324:	e92d4800 	push	{fp, lr}
    1328:	e28db004 	add	fp, sp, #4
    132c:	e24dd010 	sub	sp, sp, #16
    1330:	e50b0010 	str	r0, [fp, #-16]
    1334:	e51b3010 	ldr	r3, [fp, #-16]
    1338:	e3530a01 	cmp	r3, #4096	@ 0x1000
    133c:	2a000001 	bcs	1348 <morecore+0x24>
    1340:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1344:	e50b3010 	str	r3, [fp, #-16]
    1348:	e51b3010 	ldr	r3, [fp, #-16]
    134c:	e1a03183 	lsl	r3, r3, #3
    1350:	e1a00003 	mov	r0, r3
    1354:	ebfffe07 	bl	b78 <sbrk>
    1358:	e50b0008 	str	r0, [fp, #-8]
    135c:	e51b3008 	ldr	r3, [fp, #-8]
    1360:	e3730001 	cmn	r3, #1
    1364:	1a000001 	bne	1370 <morecore+0x4c>
    1368:	e3a03000 	mov	r3, #0
    136c:	ea00000a 	b	139c <morecore+0x78>
    1370:	e51b3008 	ldr	r3, [fp, #-8]
    1374:	e50b300c 	str	r3, [fp, #-12]
    1378:	e51b300c 	ldr	r3, [fp, #-12]
    137c:	e51b2010 	ldr	r2, [fp, #-16]
    1380:	e5832004 	str	r2, [r3, #4]
    1384:	e51b300c 	ldr	r3, [fp, #-12]
    1388:	e2833008 	add	r3, r3, #8
    138c:	e1a00003 	mov	r0, r3
    1390:	ebffff84 	bl	11a8 <free>
    1394:	e59f300c 	ldr	r3, [pc, #12]	@ 13a8 <morecore+0x84>
    1398:	e5933000 	ldr	r3, [r3]
    139c:	e1a00003 	mov	r0, r3
    13a0:	e24bd004 	sub	sp, fp, #4
    13a4:	e8bd8800 	pop	{fp, pc}
    13a8:	00001664 	.word	0x00001664

000013ac <malloc>:
    13ac:	e92d4800 	push	{fp, lr}
    13b0:	e28db004 	add	fp, sp, #4
    13b4:	e24dd018 	sub	sp, sp, #24
    13b8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    13bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13c0:	e2833007 	add	r3, r3, #7
    13c4:	e1a031a3 	lsr	r3, r3, #3
    13c8:	e2833001 	add	r3, r3, #1
    13cc:	e50b3010 	str	r3, [fp, #-16]
    13d0:	e59f3134 	ldr	r3, [pc, #308]	@ 150c <malloc+0x160>
    13d4:	e5933000 	ldr	r3, [r3]
    13d8:	e50b300c 	str	r3, [fp, #-12]
    13dc:	e51b300c 	ldr	r3, [fp, #-12]
    13e0:	e3530000 	cmp	r3, #0
    13e4:	1a00000b 	bne	1418 <malloc+0x6c>
    13e8:	e59f3120 	ldr	r3, [pc, #288]	@ 1510 <malloc+0x164>
    13ec:	e50b300c 	str	r3, [fp, #-12]
    13f0:	e59f2114 	ldr	r2, [pc, #276]	@ 150c <malloc+0x160>
    13f4:	e51b300c 	ldr	r3, [fp, #-12]
    13f8:	e5823000 	str	r3, [r2]
    13fc:	e59f3108 	ldr	r3, [pc, #264]	@ 150c <malloc+0x160>
    1400:	e5933000 	ldr	r3, [r3]
    1404:	e59f2104 	ldr	r2, [pc, #260]	@ 1510 <malloc+0x164>
    1408:	e5823000 	str	r3, [r2]
    140c:	e59f30fc 	ldr	r3, [pc, #252]	@ 1510 <malloc+0x164>
    1410:	e3a02000 	mov	r2, #0
    1414:	e5832004 	str	r2, [r3, #4]
    1418:	e51b300c 	ldr	r3, [fp, #-12]
    141c:	e5933000 	ldr	r3, [r3]
    1420:	e50b3008 	str	r3, [fp, #-8]
    1424:	e51b3008 	ldr	r3, [fp, #-8]
    1428:	e5933004 	ldr	r3, [r3, #4]
    142c:	e51b2010 	ldr	r2, [fp, #-16]
    1430:	e1520003 	cmp	r2, r3
    1434:	8a00001e 	bhi	14b4 <malloc+0x108>
    1438:	e51b3008 	ldr	r3, [fp, #-8]
    143c:	e5933004 	ldr	r3, [r3, #4]
    1440:	e51b2010 	ldr	r2, [fp, #-16]
    1444:	e1520003 	cmp	r2, r3
    1448:	1a000004 	bne	1460 <malloc+0xb4>
    144c:	e51b3008 	ldr	r3, [fp, #-8]
    1450:	e5932000 	ldr	r2, [r3]
    1454:	e51b300c 	ldr	r3, [fp, #-12]
    1458:	e5832000 	str	r2, [r3]
    145c:	ea00000e 	b	149c <malloc+0xf0>
    1460:	e51b3008 	ldr	r3, [fp, #-8]
    1464:	e5932004 	ldr	r2, [r3, #4]
    1468:	e51b3010 	ldr	r3, [fp, #-16]
    146c:	e0422003 	sub	r2, r2, r3
    1470:	e51b3008 	ldr	r3, [fp, #-8]
    1474:	e5832004 	str	r2, [r3, #4]
    1478:	e51b3008 	ldr	r3, [fp, #-8]
    147c:	e5933004 	ldr	r3, [r3, #4]
    1480:	e1a03183 	lsl	r3, r3, #3
    1484:	e51b2008 	ldr	r2, [fp, #-8]
    1488:	e0823003 	add	r3, r2, r3
    148c:	e50b3008 	str	r3, [fp, #-8]
    1490:	e51b3008 	ldr	r3, [fp, #-8]
    1494:	e51b2010 	ldr	r2, [fp, #-16]
    1498:	e5832004 	str	r2, [r3, #4]
    149c:	e59f2068 	ldr	r2, [pc, #104]	@ 150c <malloc+0x160>
    14a0:	e51b300c 	ldr	r3, [fp, #-12]
    14a4:	e5823000 	str	r3, [r2]
    14a8:	e51b3008 	ldr	r3, [fp, #-8]
    14ac:	e2833008 	add	r3, r3, #8
    14b0:	ea000012 	b	1500 <malloc+0x154>
    14b4:	e59f3050 	ldr	r3, [pc, #80]	@ 150c <malloc+0x160>
    14b8:	e5933000 	ldr	r3, [r3]
    14bc:	e51b2008 	ldr	r2, [fp, #-8]
    14c0:	e1520003 	cmp	r2, r3
    14c4:	1a000007 	bne	14e8 <malloc+0x13c>
    14c8:	e51b0010 	ldr	r0, [fp, #-16]
    14cc:	ebffff94 	bl	1324 <morecore>
    14d0:	e50b0008 	str	r0, [fp, #-8]
    14d4:	e51b3008 	ldr	r3, [fp, #-8]
    14d8:	e3530000 	cmp	r3, #0
    14dc:	1a000001 	bne	14e8 <malloc+0x13c>
    14e0:	e3a03000 	mov	r3, #0
    14e4:	ea000005 	b	1500 <malloc+0x154>
    14e8:	e51b3008 	ldr	r3, [fp, #-8]
    14ec:	e50b300c 	str	r3, [fp, #-12]
    14f0:	e51b3008 	ldr	r3, [fp, #-8]
    14f4:	e5933000 	ldr	r3, [r3]
    14f8:	e50b3008 	str	r3, [fp, #-8]
    14fc:	eaffffc8 	b	1424 <malloc+0x78>
    1500:	e1a00003 	mov	r0, r3
    1504:	e24bd004 	sub	sp, fp, #4
    1508:	e8bd8800 	pop	{fp, pc}
    150c:	00001664 	.word	0x00001664
    1510:	0000165c 	.word	0x0000165c

00001514 <__udivsi3>:
    1514:	e2512001 	subs	r2, r1, #1
    1518:	012fff1e 	bxeq	lr
    151c:	3a000036 	bcc	15fc <__udivsi3+0xe8>
    1520:	e1500001 	cmp	r0, r1
    1524:	9a000022 	bls	15b4 <__udivsi3+0xa0>
    1528:	e1110002 	tst	r1, r2
    152c:	0a000023 	beq	15c0 <__udivsi3+0xac>
    1530:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1534:	01a01181 	lsleq	r1, r1, #3
    1538:	03a03008 	moveq	r3, #8
    153c:	13a03001 	movne	r3, #1
    1540:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1544:	31510000 	cmpcc	r1, r0
    1548:	31a01201 	lslcc	r1, r1, #4
    154c:	31a03203 	lslcc	r3, r3, #4
    1550:	3afffffa 	bcc	1540 <__udivsi3+0x2c>
    1554:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1558:	31510000 	cmpcc	r1, r0
    155c:	31a01081 	lslcc	r1, r1, #1
    1560:	31a03083 	lslcc	r3, r3, #1
    1564:	3afffffa 	bcc	1554 <__udivsi3+0x40>
    1568:	e3a02000 	mov	r2, #0
    156c:	e1500001 	cmp	r0, r1
    1570:	20400001 	subcs	r0, r0, r1
    1574:	21822003 	orrcs	r2, r2, r3
    1578:	e15000a1 	cmp	r0, r1, lsr #1
    157c:	204000a1 	subcs	r0, r0, r1, lsr #1
    1580:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1584:	e1500121 	cmp	r0, r1, lsr #2
    1588:	20400121 	subcs	r0, r0, r1, lsr #2
    158c:	21822123 	orrcs	r2, r2, r3, lsr #2
    1590:	e15001a1 	cmp	r0, r1, lsr #3
    1594:	204001a1 	subcs	r0, r0, r1, lsr #3
    1598:	218221a3 	orrcs	r2, r2, r3, lsr #3
    159c:	e3500000 	cmp	r0, #0
    15a0:	11b03223 	lsrsne	r3, r3, #4
    15a4:	11a01221 	lsrne	r1, r1, #4
    15a8:	1affffef 	bne	156c <__udivsi3+0x58>
    15ac:	e1a00002 	mov	r0, r2
    15b0:	e12fff1e 	bx	lr
    15b4:	03a00001 	moveq	r0, #1
    15b8:	13a00000 	movne	r0, #0
    15bc:	e12fff1e 	bx	lr
    15c0:	e3510801 	cmp	r1, #65536	@ 0x10000
    15c4:	21a01821 	lsrcs	r1, r1, #16
    15c8:	23a02010 	movcs	r2, #16
    15cc:	33a02000 	movcc	r2, #0
    15d0:	e3510c01 	cmp	r1, #256	@ 0x100
    15d4:	21a01421 	lsrcs	r1, r1, #8
    15d8:	22822008 	addcs	r2, r2, #8
    15dc:	e3510010 	cmp	r1, #16
    15e0:	21a01221 	lsrcs	r1, r1, #4
    15e4:	22822004 	addcs	r2, r2, #4
    15e8:	e3510004 	cmp	r1, #4
    15ec:	82822003 	addhi	r2, r2, #3
    15f0:	908220a1 	addls	r2, r2, r1, lsr #1
    15f4:	e1a00230 	lsr	r0, r0, r2
    15f8:	e12fff1e 	bx	lr
    15fc:	e3500000 	cmp	r0, #0
    1600:	13e00000 	mvnne	r0, #0
    1604:	ea000007 	b	1628 <__aeabi_idiv0>

00001608 <__aeabi_uidivmod>:
    1608:	e3510000 	cmp	r1, #0
    160c:	0afffffa 	beq	15fc <__udivsi3+0xe8>
    1610:	e92d4003 	push	{r0, r1, lr}
    1614:	ebffffbe 	bl	1514 <__udivsi3>
    1618:	e8bd4006 	pop	{r1, r2, lr}
    161c:	e0030092 	mul	r3, r2, r0
    1620:	e0411003 	sub	r1, r1, r3
    1624:	e12fff1e 	bx	lr

00001628 <__aeabi_idiv0>:
    1628:	e12fff1e 	bx	lr
