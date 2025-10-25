
_zombie:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	eb0001e6 	bl	7a8 <fork>
       c:	e1a03000 	mov	r3, r0
      10:	e3530000 	cmp	r3, #0
      14:	da000001 	ble	20 <main+0x20>
      18:	e3a00005 	mov	r0, #5
      1c:	eb00028c 	bl	a54 <sleep>
      20:	eb0001e9 	bl	7cc <exit>

00000024 <strcpy>:
      24:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      28:	e28db000 	add	fp, sp, #0
      2c:	e24dd014 	sub	sp, sp, #20
      30:	e50b0010 	str	r0, [fp, #-16]
      34:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      38:	e51b3010 	ldr	r3, [fp, #-16]
      3c:	e50b3008 	str	r3, [fp, #-8]
      40:	e1a00000 	nop			@ (mov r0, r0)
      44:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      48:	e2823001 	add	r3, r2, #1
      4c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      50:	e51b3010 	ldr	r3, [fp, #-16]
      54:	e2831001 	add	r1, r3, #1
      58:	e50b1010 	str	r1, [fp, #-16]
      5c:	e5d22000 	ldrb	r2, [r2]
      60:	e5c32000 	strb	r2, [r3]
      64:	e5d33000 	ldrb	r3, [r3]
      68:	e3530000 	cmp	r3, #0
      6c:	1afffff4 	bne	44 <strcpy+0x20>
      70:	e51b3008 	ldr	r3, [fp, #-8]
      74:	e1a00003 	mov	r0, r3
      78:	e28bd000 	add	sp, fp, #0
      7c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      80:	e12fff1e 	bx	lr

00000084 <strcmp>:
      84:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      88:	e28db000 	add	fp, sp, #0
      8c:	e24dd00c 	sub	sp, sp, #12
      90:	e50b0008 	str	r0, [fp, #-8]
      94:	e50b100c 	str	r1, [fp, #-12]
      98:	ea000005 	b	b4 <strcmp+0x30>
      9c:	e51b3008 	ldr	r3, [fp, #-8]
      a0:	e2833001 	add	r3, r3, #1
      a4:	e50b3008 	str	r3, [fp, #-8]
      a8:	e51b300c 	ldr	r3, [fp, #-12]
      ac:	e2833001 	add	r3, r3, #1
      b0:	e50b300c 	str	r3, [fp, #-12]
      b4:	e51b3008 	ldr	r3, [fp, #-8]
      b8:	e5d33000 	ldrb	r3, [r3]
      bc:	e3530000 	cmp	r3, #0
      c0:	0a000005 	beq	dc <strcmp+0x58>
      c4:	e51b3008 	ldr	r3, [fp, #-8]
      c8:	e5d32000 	ldrb	r2, [r3]
      cc:	e51b300c 	ldr	r3, [fp, #-12]
      d0:	e5d33000 	ldrb	r3, [r3]
      d4:	e1520003 	cmp	r2, r3
      d8:	0affffef 	beq	9c <strcmp+0x18>
      dc:	e51b3008 	ldr	r3, [fp, #-8]
      e0:	e5d33000 	ldrb	r3, [r3]
      e4:	e1a02003 	mov	r2, r3
      e8:	e51b300c 	ldr	r3, [fp, #-12]
      ec:	e5d33000 	ldrb	r3, [r3]
      f0:	e0423003 	sub	r3, r2, r3
      f4:	e1a00003 	mov	r0, r3
      f8:	e28bd000 	add	sp, fp, #0
      fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     100:	e12fff1e 	bx	lr

00000104 <strlen>:
     104:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     108:	e28db000 	add	fp, sp, #0
     10c:	e24dd014 	sub	sp, sp, #20
     110:	e50b0010 	str	r0, [fp, #-16]
     114:	e3a03000 	mov	r3, #0
     118:	e50b3008 	str	r3, [fp, #-8]
     11c:	ea000002 	b	12c <strlen+0x28>
     120:	e51b3008 	ldr	r3, [fp, #-8]
     124:	e2833001 	add	r3, r3, #1
     128:	e50b3008 	str	r3, [fp, #-8]
     12c:	e51b3008 	ldr	r3, [fp, #-8]
     130:	e51b2010 	ldr	r2, [fp, #-16]
     134:	e0823003 	add	r3, r2, r3
     138:	e5d33000 	ldrb	r3, [r3]
     13c:	e3530000 	cmp	r3, #0
     140:	1afffff6 	bne	120 <strlen+0x1c>
     144:	e51b3008 	ldr	r3, [fp, #-8]
     148:	e1a00003 	mov	r0, r3
     14c:	e28bd000 	add	sp, fp, #0
     150:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     154:	e12fff1e 	bx	lr

00000158 <memset>:
     158:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     15c:	e28db000 	add	fp, sp, #0
     160:	e24dd024 	sub	sp, sp, #36	@ 0x24
     164:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     168:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     16c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     170:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     174:	e50b3008 	str	r3, [fp, #-8]
     178:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     17c:	e54b300d 	strb	r3, [fp, #-13]
     180:	e55b200d 	ldrb	r2, [fp, #-13]
     184:	e1a03002 	mov	r3, r2
     188:	e1a03403 	lsl	r3, r3, #8
     18c:	e0833002 	add	r3, r3, r2
     190:	e1a03803 	lsl	r3, r3, #16
     194:	e1a02003 	mov	r2, r3
     198:	e55b300d 	ldrb	r3, [fp, #-13]
     19c:	e1a03403 	lsl	r3, r3, #8
     1a0:	e1822003 	orr	r2, r2, r3
     1a4:	e55b300d 	ldrb	r3, [fp, #-13]
     1a8:	e1823003 	orr	r3, r2, r3
     1ac:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1b0:	ea000008 	b	1d8 <memset+0x80>
     1b4:	e51b3008 	ldr	r3, [fp, #-8]
     1b8:	e55b200d 	ldrb	r2, [fp, #-13]
     1bc:	e5c32000 	strb	r2, [r3]
     1c0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1c4:	e2433001 	sub	r3, r3, #1
     1c8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     1cc:	e51b3008 	ldr	r3, [fp, #-8]
     1d0:	e2833001 	add	r3, r3, #1
     1d4:	e50b3008 	str	r3, [fp, #-8]
     1d8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1dc:	e3530000 	cmp	r3, #0
     1e0:	0a000003 	beq	1f4 <memset+0x9c>
     1e4:	e51b3008 	ldr	r3, [fp, #-8]
     1e8:	e2033003 	and	r3, r3, #3
     1ec:	e3530000 	cmp	r3, #0
     1f0:	1affffef 	bne	1b4 <memset+0x5c>
     1f4:	e51b3008 	ldr	r3, [fp, #-8]
     1f8:	e50b300c 	str	r3, [fp, #-12]
     1fc:	ea000008 	b	224 <memset+0xcc>
     200:	e51b300c 	ldr	r3, [fp, #-12]
     204:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     208:	e5832000 	str	r2, [r3]
     20c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     210:	e2433004 	sub	r3, r3, #4
     214:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     218:	e51b300c 	ldr	r3, [fp, #-12]
     21c:	e2833004 	add	r3, r3, #4
     220:	e50b300c 	str	r3, [fp, #-12]
     224:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     228:	e3530003 	cmp	r3, #3
     22c:	8afffff3 	bhi	200 <memset+0xa8>
     230:	e51b300c 	ldr	r3, [fp, #-12]
     234:	e50b3008 	str	r3, [fp, #-8]
     238:	ea000008 	b	260 <memset+0x108>
     23c:	e51b3008 	ldr	r3, [fp, #-8]
     240:	e55b200d 	ldrb	r2, [fp, #-13]
     244:	e5c32000 	strb	r2, [r3]
     248:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     24c:	e2433001 	sub	r3, r3, #1
     250:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     254:	e51b3008 	ldr	r3, [fp, #-8]
     258:	e2833001 	add	r3, r3, #1
     25c:	e50b3008 	str	r3, [fp, #-8]
     260:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     264:	e3530000 	cmp	r3, #0
     268:	1afffff3 	bne	23c <memset+0xe4>
     26c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     270:	e1a00003 	mov	r0, r3
     274:	e28bd000 	add	sp, fp, #0
     278:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     27c:	e12fff1e 	bx	lr

00000280 <strchr>:
     280:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     284:	e28db000 	add	fp, sp, #0
     288:	e24dd00c 	sub	sp, sp, #12
     28c:	e50b0008 	str	r0, [fp, #-8]
     290:	e1a03001 	mov	r3, r1
     294:	e54b3009 	strb	r3, [fp, #-9]
     298:	ea000009 	b	2c4 <strchr+0x44>
     29c:	e51b3008 	ldr	r3, [fp, #-8]
     2a0:	e5d33000 	ldrb	r3, [r3]
     2a4:	e55b2009 	ldrb	r2, [fp, #-9]
     2a8:	e1520003 	cmp	r2, r3
     2ac:	1a000001 	bne	2b8 <strchr+0x38>
     2b0:	e51b3008 	ldr	r3, [fp, #-8]
     2b4:	ea000007 	b	2d8 <strchr+0x58>
     2b8:	e51b3008 	ldr	r3, [fp, #-8]
     2bc:	e2833001 	add	r3, r3, #1
     2c0:	e50b3008 	str	r3, [fp, #-8]
     2c4:	e51b3008 	ldr	r3, [fp, #-8]
     2c8:	e5d33000 	ldrb	r3, [r3]
     2cc:	e3530000 	cmp	r3, #0
     2d0:	1afffff1 	bne	29c <strchr+0x1c>
     2d4:	e3a03000 	mov	r3, #0
     2d8:	e1a00003 	mov	r0, r3
     2dc:	e28bd000 	add	sp, fp, #0
     2e0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2e4:	e12fff1e 	bx	lr

000002e8 <gets>:
     2e8:	e92d4800 	push	{fp, lr}
     2ec:	e28db004 	add	fp, sp, #4
     2f0:	e24dd018 	sub	sp, sp, #24
     2f4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     2f8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     2fc:	e3a03000 	mov	r3, #0
     300:	e50b3008 	str	r3, [fp, #-8]
     304:	ea000016 	b	364 <gets+0x7c>
     308:	e24b300d 	sub	r3, fp, #13
     30c:	e3a02001 	mov	r2, #1
     310:	e1a01003 	mov	r1, r3
     314:	e3a00000 	mov	r0, #0
     318:	eb000146 	bl	838 <read>
     31c:	e50b000c 	str	r0, [fp, #-12]
     320:	e51b300c 	ldr	r3, [fp, #-12]
     324:	e3530000 	cmp	r3, #0
     328:	da000013 	ble	37c <gets+0x94>
     32c:	e51b3008 	ldr	r3, [fp, #-8]
     330:	e2832001 	add	r2, r3, #1
     334:	e50b2008 	str	r2, [fp, #-8]
     338:	e1a02003 	mov	r2, r3
     33c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     340:	e0833002 	add	r3, r3, r2
     344:	e55b200d 	ldrb	r2, [fp, #-13]
     348:	e5c32000 	strb	r2, [r3]
     34c:	e55b300d 	ldrb	r3, [fp, #-13]
     350:	e353000a 	cmp	r3, #10
     354:	0a000009 	beq	380 <gets+0x98>
     358:	e55b300d 	ldrb	r3, [fp, #-13]
     35c:	e353000d 	cmp	r3, #13
     360:	0a000006 	beq	380 <gets+0x98>
     364:	e51b3008 	ldr	r3, [fp, #-8]
     368:	e2833001 	add	r3, r3, #1
     36c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     370:	e1520003 	cmp	r2, r3
     374:	caffffe3 	bgt	308 <gets+0x20>
     378:	ea000000 	b	380 <gets+0x98>
     37c:	e1a00000 	nop			@ (mov r0, r0)
     380:	e51b3008 	ldr	r3, [fp, #-8]
     384:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     388:	e0823003 	add	r3, r2, r3
     38c:	e3a02000 	mov	r2, #0
     390:	e5c32000 	strb	r2, [r3]
     394:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     398:	e1a00003 	mov	r0, r3
     39c:	e24bd004 	sub	sp, fp, #4
     3a0:	e8bd8800 	pop	{fp, pc}

000003a4 <stat>:
     3a4:	e92d4800 	push	{fp, lr}
     3a8:	e28db004 	add	fp, sp, #4
     3ac:	e24dd010 	sub	sp, sp, #16
     3b0:	e50b0010 	str	r0, [fp, #-16]
     3b4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     3b8:	e3a01000 	mov	r1, #0
     3bc:	e51b0010 	ldr	r0, [fp, #-16]
     3c0:	eb000149 	bl	8ec <open>
     3c4:	e50b0008 	str	r0, [fp, #-8]
     3c8:	e51b3008 	ldr	r3, [fp, #-8]
     3cc:	e3530000 	cmp	r3, #0
     3d0:	aa000001 	bge	3dc <stat+0x38>
     3d4:	e3e03000 	mvn	r3, #0
     3d8:	ea000006 	b	3f8 <stat+0x54>
     3dc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     3e0:	e51b0008 	ldr	r0, [fp, #-8]
     3e4:	eb00015b 	bl	958 <fstat>
     3e8:	e50b000c 	str	r0, [fp, #-12]
     3ec:	e51b0008 	ldr	r0, [fp, #-8]
     3f0:	eb000122 	bl	880 <close>
     3f4:	e51b300c 	ldr	r3, [fp, #-12]
     3f8:	e1a00003 	mov	r0, r3
     3fc:	e24bd004 	sub	sp, fp, #4
     400:	e8bd8800 	pop	{fp, pc}

00000404 <atoi>:
     404:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     408:	e28db000 	add	fp, sp, #0
     40c:	e24dd014 	sub	sp, sp, #20
     410:	e50b0010 	str	r0, [fp, #-16]
     414:	e3a03000 	mov	r3, #0
     418:	e50b3008 	str	r3, [fp, #-8]
     41c:	ea00000c 	b	454 <atoi+0x50>
     420:	e51b2008 	ldr	r2, [fp, #-8]
     424:	e1a03002 	mov	r3, r2
     428:	e1a03103 	lsl	r3, r3, #2
     42c:	e0833002 	add	r3, r3, r2
     430:	e1a03083 	lsl	r3, r3, #1
     434:	e1a01003 	mov	r1, r3
     438:	e51b3010 	ldr	r3, [fp, #-16]
     43c:	e2832001 	add	r2, r3, #1
     440:	e50b2010 	str	r2, [fp, #-16]
     444:	e5d33000 	ldrb	r3, [r3]
     448:	e0813003 	add	r3, r1, r3
     44c:	e2433030 	sub	r3, r3, #48	@ 0x30
     450:	e50b3008 	str	r3, [fp, #-8]
     454:	e51b3010 	ldr	r3, [fp, #-16]
     458:	e5d33000 	ldrb	r3, [r3]
     45c:	e353002f 	cmp	r3, #47	@ 0x2f
     460:	9a000003 	bls	474 <atoi+0x70>
     464:	e51b3010 	ldr	r3, [fp, #-16]
     468:	e5d33000 	ldrb	r3, [r3]
     46c:	e3530039 	cmp	r3, #57	@ 0x39
     470:	9affffea 	bls	420 <atoi+0x1c>
     474:	e51b3010 	ldr	r3, [fp, #-16]
     478:	e5d33000 	ldrb	r3, [r3]
     47c:	e3530000 	cmp	r3, #0
     480:	1a000001 	bne	48c <atoi+0x88>
     484:	e51b3008 	ldr	r3, [fp, #-8]
     488:	ea000000 	b	490 <atoi+0x8c>
     48c:	e3e03000 	mvn	r3, #0
     490:	e1a00003 	mov	r0, r3
     494:	e28bd000 	add	sp, fp, #0
     498:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     49c:	e12fff1e 	bx	lr

000004a0 <memmove>:
     4a0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4a4:	e28db000 	add	fp, sp, #0
     4a8:	e24dd01c 	sub	sp, sp, #28
     4ac:	e50b0010 	str	r0, [fp, #-16]
     4b0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4b4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     4b8:	e51b3010 	ldr	r3, [fp, #-16]
     4bc:	e50b3008 	str	r3, [fp, #-8]
     4c0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     4c4:	e50b300c 	str	r3, [fp, #-12]
     4c8:	ea000007 	b	4ec <memmove+0x4c>
     4cc:	e51b200c 	ldr	r2, [fp, #-12]
     4d0:	e2823001 	add	r3, r2, #1
     4d4:	e50b300c 	str	r3, [fp, #-12]
     4d8:	e51b3008 	ldr	r3, [fp, #-8]
     4dc:	e2831001 	add	r1, r3, #1
     4e0:	e50b1008 	str	r1, [fp, #-8]
     4e4:	e5d22000 	ldrb	r2, [r2]
     4e8:	e5c32000 	strb	r2, [r3]
     4ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4f0:	e2432001 	sub	r2, r3, #1
     4f4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     4f8:	e3530000 	cmp	r3, #0
     4fc:	cafffff2 	bgt	4cc <memmove+0x2c>
     500:	e51b3010 	ldr	r3, [fp, #-16]
     504:	e1a00003 	mov	r0, r3
     508:	e28bd000 	add	sp, fp, #0
     50c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     510:	e12fff1e 	bx	lr

00000514 <initiateLock>:
     514:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     518:	e28db000 	add	fp, sp, #0
     51c:	e24dd00c 	sub	sp, sp, #12
     520:	e50b0008 	str	r0, [fp, #-8]
     524:	e51b3008 	ldr	r3, [fp, #-8]
     528:	e3a02000 	mov	r2, #0
     52c:	e5832000 	str	r2, [r3]
     530:	e51b3008 	ldr	r3, [fp, #-8]
     534:	e3a02001 	mov	r2, #1
     538:	e5832004 	str	r2, [r3, #4]
     53c:	e1a00000 	nop			@ (mov r0, r0)
     540:	e28bd000 	add	sp, fp, #0
     544:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     548:	e12fff1e 	bx	lr

0000054c <acquireLock>:
     54c:	e92d4800 	push	{fp, lr}
     550:	e28db004 	add	fp, sp, #4
     554:	e24dd008 	sub	sp, sp, #8
     558:	e50b0008 	str	r0, [fp, #-8]
     55c:	ea000001 	b	568 <acquireLock+0x1c>
     560:	e3a00001 	mov	r0, #1
     564:	eb00013a 	bl	a54 <sleep>
     568:	e51b2008 	ldr	r2, [fp, #-8]
     56c:	e3a01001 	mov	r1, #1
     570:	e1923f9f 	ldrex	r3, [r2]
     574:	e1820f91 	strex	r0, r1, [r2]
     578:	e3500000 	cmp	r0, #0
     57c:	1afffffb 	bne	570 <acquireLock+0x24>
     580:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     584:	e3530001 	cmp	r3, #1
     588:	0afffff4 	beq	560 <acquireLock+0x14>
     58c:	e1a00000 	nop			@ (mov r0, r0)
     590:	e1a00000 	nop			@ (mov r0, r0)
     594:	e24bd004 	sub	sp, fp, #4
     598:	e8bd8800 	pop	{fp, pc}

0000059c <releaseLock>:
     59c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5a0:	e28db000 	add	fp, sp, #0
     5a4:	e24dd00c 	sub	sp, sp, #12
     5a8:	e50b0008 	str	r0, [fp, #-8]
     5ac:	e51b3008 	ldr	r3, [fp, #-8]
     5b0:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     5b4:	e3a02000 	mov	r2, #0
     5b8:	e5832000 	str	r2, [r3]
     5bc:	e1a00000 	nop			@ (mov r0, r0)
     5c0:	e28bd000 	add	sp, fp, #0
     5c4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5c8:	e12fff1e 	bx	lr

000005cc <initiateCondVar>:
     5cc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5d0:	e28db000 	add	fp, sp, #0
     5d4:	e24dd00c 	sub	sp, sp, #12
     5d8:	e50b0008 	str	r0, [fp, #-8]
     5dc:	e51b3008 	ldr	r3, [fp, #-8]
     5e0:	e3a02000 	mov	r2, #0
     5e4:	e5832000 	str	r2, [r3]
     5e8:	e51b3008 	ldr	r3, [fp, #-8]
     5ec:	e3a02001 	mov	r2, #1
     5f0:	e5832004 	str	r2, [r3, #4]
     5f4:	e1a00000 	nop			@ (mov r0, r0)
     5f8:	e28bd000 	add	sp, fp, #0
     5fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     600:	e12fff1e 	bx	lr

00000604 <condWait>:
     604:	e92d4800 	push	{fp, lr}
     608:	e28db004 	add	fp, sp, #4
     60c:	e24dd008 	sub	sp, sp, #8
     610:	e50b0008 	str	r0, [fp, #-8]
     614:	e50b100c 	str	r1, [fp, #-12]
     618:	e51b000c 	ldr	r0, [fp, #-12]
     61c:	ebffffde 	bl	59c <releaseLock>
     620:	e51b3008 	ldr	r3, [fp, #-8]
     624:	e5933000 	ldr	r3, [r3]
     628:	e1a00003 	mov	r0, r3
     62c:	eb00017d 	bl	c28 <sleepChan>
     630:	e51b000c 	ldr	r0, [fp, #-12]
     634:	ebffffc4 	bl	54c <acquireLock>
     638:	e1a00000 	nop			@ (mov r0, r0)
     63c:	e24bd004 	sub	sp, fp, #4
     640:	e8bd8800 	pop	{fp, pc}

00000644 <broadcast>:
     644:	e92d4800 	push	{fp, lr}
     648:	e28db004 	add	fp, sp, #4
     64c:	e24dd008 	sub	sp, sp, #8
     650:	e50b0008 	str	r0, [fp, #-8]
     654:	e51b3008 	ldr	r3, [fp, #-8]
     658:	e5933000 	ldr	r3, [r3]
     65c:	e1a00003 	mov	r0, r3
     660:	eb000182 	bl	c70 <sigChan>
     664:	e1a00000 	nop			@ (mov r0, r0)
     668:	e24bd004 	sub	sp, fp, #4
     66c:	e8bd8800 	pop	{fp, pc}

00000670 <semInit>:
     670:	e92d4800 	push	{fp, lr}
     674:	e28db004 	add	fp, sp, #4
     678:	e24dd008 	sub	sp, sp, #8
     67c:	e50b0008 	str	r0, [fp, #-8]
     680:	e50b100c 	str	r1, [fp, #-12]
     684:	e51b3008 	ldr	r3, [fp, #-8]
     688:	e51b200c 	ldr	r2, [fp, #-12]
     68c:	e5832000 	str	r2, [r3]
     690:	e51b3008 	ldr	r3, [fp, #-8]
     694:	e2833004 	add	r3, r3, #4
     698:	e1a00003 	mov	r0, r3
     69c:	ebffff9c 	bl	514 <initiateLock>
     6a0:	e51b3008 	ldr	r3, [fp, #-8]
     6a4:	e283300c 	add	r3, r3, #12
     6a8:	e1a00003 	mov	r0, r3
     6ac:	ebffffc6 	bl	5cc <initiateCondVar>
     6b0:	e51b3008 	ldr	r3, [fp, #-8]
     6b4:	e3a02001 	mov	r2, #1
     6b8:	e5832014 	str	r2, [r3, #20]
     6bc:	e1a00000 	nop			@ (mov r0, r0)
     6c0:	e24bd004 	sub	sp, fp, #4
     6c4:	e8bd8800 	pop	{fp, pc}

000006c8 <semUp>:
     6c8:	e92d4800 	push	{fp, lr}
     6cc:	e28db004 	add	fp, sp, #4
     6d0:	e24dd008 	sub	sp, sp, #8
     6d4:	e50b0008 	str	r0, [fp, #-8]
     6d8:	e51b3008 	ldr	r3, [fp, #-8]
     6dc:	e2833004 	add	r3, r3, #4
     6e0:	e1a00003 	mov	r0, r3
     6e4:	ebffff98 	bl	54c <acquireLock>
     6e8:	e51b3008 	ldr	r3, [fp, #-8]
     6ec:	e5933000 	ldr	r3, [r3]
     6f0:	e2832001 	add	r2, r3, #1
     6f4:	e51b3008 	ldr	r3, [fp, #-8]
     6f8:	e5832000 	str	r2, [r3]
     6fc:	e51b3008 	ldr	r3, [fp, #-8]
     700:	e283300c 	add	r3, r3, #12
     704:	e1a00003 	mov	r0, r3
     708:	ebffffcd 	bl	644 <broadcast>
     70c:	e51b3008 	ldr	r3, [fp, #-8]
     710:	e2833004 	add	r3, r3, #4
     714:	e1a00003 	mov	r0, r3
     718:	ebffff9f 	bl	59c <releaseLock>
     71c:	e1a00000 	nop			@ (mov r0, r0)
     720:	e24bd004 	sub	sp, fp, #4
     724:	e8bd8800 	pop	{fp, pc}

00000728 <semDown>:
     728:	e92d4800 	push	{fp, lr}
     72c:	e28db004 	add	fp, sp, #4
     730:	e24dd008 	sub	sp, sp, #8
     734:	e50b0008 	str	r0, [fp, #-8]
     738:	e51b3008 	ldr	r3, [fp, #-8]
     73c:	e2833004 	add	r3, r3, #4
     740:	e1a00003 	mov	r0, r3
     744:	ebffff80 	bl	54c <acquireLock>
     748:	ea000006 	b	768 <semDown+0x40>
     74c:	e51b3008 	ldr	r3, [fp, #-8]
     750:	e283200c 	add	r2, r3, #12
     754:	e51b3008 	ldr	r3, [fp, #-8]
     758:	e2833004 	add	r3, r3, #4
     75c:	e1a01003 	mov	r1, r3
     760:	e1a00002 	mov	r0, r2
     764:	ebffffa6 	bl	604 <condWait>
     768:	e51b3008 	ldr	r3, [fp, #-8]
     76c:	e5933000 	ldr	r3, [r3]
     770:	e3530000 	cmp	r3, #0
     774:	dafffff4 	ble	74c <semDown+0x24>
     778:	e51b3008 	ldr	r3, [fp, #-8]
     77c:	e5933000 	ldr	r3, [r3]
     780:	e2432001 	sub	r2, r3, #1
     784:	e51b3008 	ldr	r3, [fp, #-8]
     788:	e5832000 	str	r2, [r3]
     78c:	e51b3008 	ldr	r3, [fp, #-8]
     790:	e2833004 	add	r3, r3, #4
     794:	e1a00003 	mov	r0, r3
     798:	ebffff7f 	bl	59c <releaseLock>
     79c:	e1a00000 	nop			@ (mov r0, r0)
     7a0:	e24bd004 	sub	sp, fp, #4
     7a4:	e8bd8800 	pop	{fp, pc}

000007a8 <fork>:
     7a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7ac:	e1a04003 	mov	r4, r3
     7b0:	e1a03002 	mov	r3, r2
     7b4:	e1a02001 	mov	r2, r1
     7b8:	e1a01000 	mov	r1, r0
     7bc:	e3a00001 	mov	r0, #1
     7c0:	ef000000 	svc	0x00000000
     7c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c8:	e12fff1e 	bx	lr

000007cc <exit>:
     7cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7d0:	e1a04003 	mov	r4, r3
     7d4:	e1a03002 	mov	r3, r2
     7d8:	e1a02001 	mov	r2, r1
     7dc:	e1a01000 	mov	r1, r0
     7e0:	e3a00002 	mov	r0, #2
     7e4:	ef000000 	svc	0x00000000
     7e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7ec:	e12fff1e 	bx	lr

000007f0 <wait>:
     7f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f4:	e1a04003 	mov	r4, r3
     7f8:	e1a03002 	mov	r3, r2
     7fc:	e1a02001 	mov	r2, r1
     800:	e1a01000 	mov	r1, r0
     804:	e3a00003 	mov	r0, #3
     808:	ef000000 	svc	0x00000000
     80c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     810:	e12fff1e 	bx	lr

00000814 <pipe>:
     814:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     818:	e1a04003 	mov	r4, r3
     81c:	e1a03002 	mov	r3, r2
     820:	e1a02001 	mov	r2, r1
     824:	e1a01000 	mov	r1, r0
     828:	e3a00004 	mov	r0, #4
     82c:	ef000000 	svc	0x00000000
     830:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     834:	e12fff1e 	bx	lr

00000838 <read>:
     838:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     83c:	e1a04003 	mov	r4, r3
     840:	e1a03002 	mov	r3, r2
     844:	e1a02001 	mov	r2, r1
     848:	e1a01000 	mov	r1, r0
     84c:	e3a00005 	mov	r0, #5
     850:	ef000000 	svc	0x00000000
     854:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     858:	e12fff1e 	bx	lr

0000085c <write>:
     85c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     860:	e1a04003 	mov	r4, r3
     864:	e1a03002 	mov	r3, r2
     868:	e1a02001 	mov	r2, r1
     86c:	e1a01000 	mov	r1, r0
     870:	e3a00010 	mov	r0, #16
     874:	ef000000 	svc	0x00000000
     878:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     87c:	e12fff1e 	bx	lr

00000880 <close>:
     880:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     884:	e1a04003 	mov	r4, r3
     888:	e1a03002 	mov	r3, r2
     88c:	e1a02001 	mov	r2, r1
     890:	e1a01000 	mov	r1, r0
     894:	e3a00015 	mov	r0, #21
     898:	ef000000 	svc	0x00000000
     89c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a0:	e12fff1e 	bx	lr

000008a4 <kill>:
     8a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a8:	e1a04003 	mov	r4, r3
     8ac:	e1a03002 	mov	r3, r2
     8b0:	e1a02001 	mov	r2, r1
     8b4:	e1a01000 	mov	r1, r0
     8b8:	e3a00006 	mov	r0, #6
     8bc:	ef000000 	svc	0x00000000
     8c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c4:	e12fff1e 	bx	lr

000008c8 <exec>:
     8c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8cc:	e1a04003 	mov	r4, r3
     8d0:	e1a03002 	mov	r3, r2
     8d4:	e1a02001 	mov	r2, r1
     8d8:	e1a01000 	mov	r1, r0
     8dc:	e3a00007 	mov	r0, #7
     8e0:	ef000000 	svc	0x00000000
     8e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e8:	e12fff1e 	bx	lr

000008ec <open>:
     8ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8f0:	e1a04003 	mov	r4, r3
     8f4:	e1a03002 	mov	r3, r2
     8f8:	e1a02001 	mov	r2, r1
     8fc:	e1a01000 	mov	r1, r0
     900:	e3a0000f 	mov	r0, #15
     904:	ef000000 	svc	0x00000000
     908:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     90c:	e12fff1e 	bx	lr

00000910 <mknod>:
     910:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     914:	e1a04003 	mov	r4, r3
     918:	e1a03002 	mov	r3, r2
     91c:	e1a02001 	mov	r2, r1
     920:	e1a01000 	mov	r1, r0
     924:	e3a00011 	mov	r0, #17
     928:	ef000000 	svc	0x00000000
     92c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     930:	e12fff1e 	bx	lr

00000934 <unlink>:
     934:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     938:	e1a04003 	mov	r4, r3
     93c:	e1a03002 	mov	r3, r2
     940:	e1a02001 	mov	r2, r1
     944:	e1a01000 	mov	r1, r0
     948:	e3a00012 	mov	r0, #18
     94c:	ef000000 	svc	0x00000000
     950:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     954:	e12fff1e 	bx	lr

00000958 <fstat>:
     958:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     95c:	e1a04003 	mov	r4, r3
     960:	e1a03002 	mov	r3, r2
     964:	e1a02001 	mov	r2, r1
     968:	e1a01000 	mov	r1, r0
     96c:	e3a00008 	mov	r0, #8
     970:	ef000000 	svc	0x00000000
     974:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     978:	e12fff1e 	bx	lr

0000097c <link>:
     97c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     980:	e1a04003 	mov	r4, r3
     984:	e1a03002 	mov	r3, r2
     988:	e1a02001 	mov	r2, r1
     98c:	e1a01000 	mov	r1, r0
     990:	e3a00013 	mov	r0, #19
     994:	ef000000 	svc	0x00000000
     998:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     99c:	e12fff1e 	bx	lr

000009a0 <mkdir>:
     9a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a4:	e1a04003 	mov	r4, r3
     9a8:	e1a03002 	mov	r3, r2
     9ac:	e1a02001 	mov	r2, r1
     9b0:	e1a01000 	mov	r1, r0
     9b4:	e3a00014 	mov	r0, #20
     9b8:	ef000000 	svc	0x00000000
     9bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c0:	e12fff1e 	bx	lr

000009c4 <chdir>:
     9c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c8:	e1a04003 	mov	r4, r3
     9cc:	e1a03002 	mov	r3, r2
     9d0:	e1a02001 	mov	r2, r1
     9d4:	e1a01000 	mov	r1, r0
     9d8:	e3a00009 	mov	r0, #9
     9dc:	ef000000 	svc	0x00000000
     9e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e4:	e12fff1e 	bx	lr

000009e8 <dup>:
     9e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9ec:	e1a04003 	mov	r4, r3
     9f0:	e1a03002 	mov	r3, r2
     9f4:	e1a02001 	mov	r2, r1
     9f8:	e1a01000 	mov	r1, r0
     9fc:	e3a0000a 	mov	r0, #10
     a00:	ef000000 	svc	0x00000000
     a04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a08:	e12fff1e 	bx	lr

00000a0c <getpid>:
     a0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a10:	e1a04003 	mov	r4, r3
     a14:	e1a03002 	mov	r3, r2
     a18:	e1a02001 	mov	r2, r1
     a1c:	e1a01000 	mov	r1, r0
     a20:	e3a0000b 	mov	r0, #11
     a24:	ef000000 	svc	0x00000000
     a28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a2c:	e12fff1e 	bx	lr

00000a30 <sbrk>:
     a30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a34:	e1a04003 	mov	r4, r3
     a38:	e1a03002 	mov	r3, r2
     a3c:	e1a02001 	mov	r2, r1
     a40:	e1a01000 	mov	r1, r0
     a44:	e3a0000c 	mov	r0, #12
     a48:	ef000000 	svc	0x00000000
     a4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a50:	e12fff1e 	bx	lr

00000a54 <sleep>:
     a54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a58:	e1a04003 	mov	r4, r3
     a5c:	e1a03002 	mov	r3, r2
     a60:	e1a02001 	mov	r2, r1
     a64:	e1a01000 	mov	r1, r0
     a68:	e3a0000d 	mov	r0, #13
     a6c:	ef000000 	svc	0x00000000
     a70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a74:	e12fff1e 	bx	lr

00000a78 <uptime>:
     a78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a7c:	e1a04003 	mov	r4, r3
     a80:	e1a03002 	mov	r3, r2
     a84:	e1a02001 	mov	r2, r1
     a88:	e1a01000 	mov	r1, r0
     a8c:	e3a0000e 	mov	r0, #14
     a90:	ef000000 	svc	0x00000000
     a94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a98:	e12fff1e 	bx	lr

00000a9c <getprocs>:
     a9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa0:	e1a04003 	mov	r4, r3
     aa4:	e1a03002 	mov	r3, r2
     aa8:	e1a02001 	mov	r2, r1
     aac:	e1a01000 	mov	r1, r0
     ab0:	e3a00016 	mov	r0, #22
     ab4:	ef000000 	svc	0x00000000
     ab8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     abc:	e12fff1e 	bx	lr

00000ac0 <settickets>:
     ac0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac4:	e1a04003 	mov	r4, r3
     ac8:	e1a03002 	mov	r3, r2
     acc:	e1a02001 	mov	r2, r1
     ad0:	e1a01000 	mov	r1, r0
     ad4:	e3a00017 	mov	r0, #23
     ad8:	ef000000 	svc	0x00000000
     adc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae0:	e12fff1e 	bx	lr

00000ae4 <srand>:
     ae4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae8:	e1a04003 	mov	r4, r3
     aec:	e1a03002 	mov	r3, r2
     af0:	e1a02001 	mov	r2, r1
     af4:	e1a01000 	mov	r1, r0
     af8:	e3a00018 	mov	r0, #24
     afc:	ef000000 	svc	0x00000000
     b00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b04:	e12fff1e 	bx	lr

00000b08 <getpinfo>:
     b08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b0c:	e1a04003 	mov	r4, r3
     b10:	e1a03002 	mov	r3, r2
     b14:	e1a02001 	mov	r2, r1
     b18:	e1a01000 	mov	r1, r0
     b1c:	e3a00019 	mov	r0, #25
     b20:	ef000000 	svc	0x00000000
     b24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b28:	e12fff1e 	bx	lr

00000b2c <dumppagetable>:
     b2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b30:	e1a04003 	mov	r4, r3
     b34:	e1a03002 	mov	r3, r2
     b38:	e1a02001 	mov	r2, r1
     b3c:	e1a01000 	mov	r1, r0
     b40:	e3a0001a 	mov	r0, #26
     b44:	ef000000 	svc	0x00000000
     b48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b4c:	e12fff1e 	bx	lr

00000b50 <thread_create>:
     b50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b54:	e1a04003 	mov	r4, r3
     b58:	e1a03002 	mov	r3, r2
     b5c:	e1a02001 	mov	r2, r1
     b60:	e1a01000 	mov	r1, r0
     b64:	e3a0001b 	mov	r0, #27
     b68:	ef000000 	svc	0x00000000
     b6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b70:	e12fff1e 	bx	lr

00000b74 <thread_exit>:
     b74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b78:	e1a04003 	mov	r4, r3
     b7c:	e1a03002 	mov	r3, r2
     b80:	e1a02001 	mov	r2, r1
     b84:	e1a01000 	mov	r1, r0
     b88:	e3a0001c 	mov	r0, #28
     b8c:	ef000000 	svc	0x00000000
     b90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b94:	e12fff1e 	bx	lr

00000b98 <thread_join>:
     b98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b9c:	e1a04003 	mov	r4, r3
     ba0:	e1a03002 	mov	r3, r2
     ba4:	e1a02001 	mov	r2, r1
     ba8:	e1a01000 	mov	r1, r0
     bac:	e3a0001d 	mov	r0, #29
     bb0:	ef000000 	svc	0x00000000
     bb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb8:	e12fff1e 	bx	lr

00000bbc <waitpid>:
     bbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc0:	e1a04003 	mov	r4, r3
     bc4:	e1a03002 	mov	r3, r2
     bc8:	e1a02001 	mov	r2, r1
     bcc:	e1a01000 	mov	r1, r0
     bd0:	e3a0001e 	mov	r0, #30
     bd4:	ef000000 	svc	0x00000000
     bd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bdc:	e12fff1e 	bx	lr

00000be0 <barrier_init>:
     be0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be4:	e1a04003 	mov	r4, r3
     be8:	e1a03002 	mov	r3, r2
     bec:	e1a02001 	mov	r2, r1
     bf0:	e1a01000 	mov	r1, r0
     bf4:	e3a0001f 	mov	r0, #31
     bf8:	ef000000 	svc	0x00000000
     bfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c00:	e12fff1e 	bx	lr

00000c04 <barrier_check>:
     c04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c08:	e1a04003 	mov	r4, r3
     c0c:	e1a03002 	mov	r3, r2
     c10:	e1a02001 	mov	r2, r1
     c14:	e1a01000 	mov	r1, r0
     c18:	e3a00020 	mov	r0, #32
     c1c:	ef000000 	svc	0x00000000
     c20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c24:	e12fff1e 	bx	lr

00000c28 <sleepChan>:
     c28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c2c:	e1a04003 	mov	r4, r3
     c30:	e1a03002 	mov	r3, r2
     c34:	e1a02001 	mov	r2, r1
     c38:	e1a01000 	mov	r1, r0
     c3c:	e3a00024 	mov	r0, #36	@ 0x24
     c40:	ef000000 	svc	0x00000000
     c44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c48:	e12fff1e 	bx	lr

00000c4c <getChannel>:
     c4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c50:	e1a04003 	mov	r4, r3
     c54:	e1a03002 	mov	r3, r2
     c58:	e1a02001 	mov	r2, r1
     c5c:	e1a01000 	mov	r1, r0
     c60:	e3a00025 	mov	r0, #37	@ 0x25
     c64:	ef000000 	svc	0x00000000
     c68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c6c:	e12fff1e 	bx	lr

00000c70 <sigChan>:
     c70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c74:	e1a04003 	mov	r4, r3
     c78:	e1a03002 	mov	r3, r2
     c7c:	e1a02001 	mov	r2, r1
     c80:	e1a01000 	mov	r1, r0
     c84:	e3a00026 	mov	r0, #38	@ 0x26
     c88:	ef000000 	svc	0x00000000
     c8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c90:	e12fff1e 	bx	lr

00000c94 <sigOneChan>:
     c94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c98:	e1a04003 	mov	r4, r3
     c9c:	e1a03002 	mov	r3, r2
     ca0:	e1a02001 	mov	r2, r1
     ca4:	e1a01000 	mov	r1, r0
     ca8:	e3a00027 	mov	r0, #39	@ 0x27
     cac:	ef000000 	svc	0x00000000
     cb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb4:	e12fff1e 	bx	lr

00000cb8 <putc>:
     cb8:	e92d4800 	push	{fp, lr}
     cbc:	e28db004 	add	fp, sp, #4
     cc0:	e24dd008 	sub	sp, sp, #8
     cc4:	e50b0008 	str	r0, [fp, #-8]
     cc8:	e1a03001 	mov	r3, r1
     ccc:	e54b3009 	strb	r3, [fp, #-9]
     cd0:	e24b3009 	sub	r3, fp, #9
     cd4:	e3a02001 	mov	r2, #1
     cd8:	e1a01003 	mov	r1, r3
     cdc:	e51b0008 	ldr	r0, [fp, #-8]
     ce0:	ebfffedd 	bl	85c <write>
     ce4:	e1a00000 	nop			@ (mov r0, r0)
     ce8:	e24bd004 	sub	sp, fp, #4
     cec:	e8bd8800 	pop	{fp, pc}

00000cf0 <printint>:
     cf0:	e92d4800 	push	{fp, lr}
     cf4:	e28db004 	add	fp, sp, #4
     cf8:	e24dd030 	sub	sp, sp, #48	@ 0x30
     cfc:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     d00:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     d04:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     d08:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     d0c:	e3a03000 	mov	r3, #0
     d10:	e50b300c 	str	r3, [fp, #-12]
     d14:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     d18:	e3530000 	cmp	r3, #0
     d1c:	0a000008 	beq	d44 <printint+0x54>
     d20:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d24:	e3530000 	cmp	r3, #0
     d28:	aa000005 	bge	d44 <printint+0x54>
     d2c:	e3a03001 	mov	r3, #1
     d30:	e50b300c 	str	r3, [fp, #-12]
     d34:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d38:	e2633000 	rsb	r3, r3, #0
     d3c:	e50b3010 	str	r3, [fp, #-16]
     d40:	ea000001 	b	d4c <printint+0x5c>
     d44:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d48:	e50b3010 	str	r3, [fp, #-16]
     d4c:	e3a03000 	mov	r3, #0
     d50:	e50b3008 	str	r3, [fp, #-8]
     d54:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     d58:	e51b3010 	ldr	r3, [fp, #-16]
     d5c:	e1a01002 	mov	r1, r2
     d60:	e1a00003 	mov	r0, r3
     d64:	eb0001d5 	bl	14c0 <__aeabi_uidivmod>
     d68:	e1a03001 	mov	r3, r1
     d6c:	e1a01003 	mov	r1, r3
     d70:	e51b3008 	ldr	r3, [fp, #-8]
     d74:	e2832001 	add	r2, r3, #1
     d78:	e50b2008 	str	r2, [fp, #-8]
     d7c:	e59f20a0 	ldr	r2, [pc, #160]	@ e24 <printint+0x134>
     d80:	e7d22001 	ldrb	r2, [r2, r1]
     d84:	e2433004 	sub	r3, r3, #4
     d88:	e083300b 	add	r3, r3, fp
     d8c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     d90:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     d94:	e1a01003 	mov	r1, r3
     d98:	e51b0010 	ldr	r0, [fp, #-16]
     d9c:	eb00018a 	bl	13cc <__udivsi3>
     da0:	e1a03000 	mov	r3, r0
     da4:	e50b3010 	str	r3, [fp, #-16]
     da8:	e51b3010 	ldr	r3, [fp, #-16]
     dac:	e3530000 	cmp	r3, #0
     db0:	1affffe7 	bne	d54 <printint+0x64>
     db4:	e51b300c 	ldr	r3, [fp, #-12]
     db8:	e3530000 	cmp	r3, #0
     dbc:	0a00000e 	beq	dfc <printint+0x10c>
     dc0:	e51b3008 	ldr	r3, [fp, #-8]
     dc4:	e2832001 	add	r2, r3, #1
     dc8:	e50b2008 	str	r2, [fp, #-8]
     dcc:	e2433004 	sub	r3, r3, #4
     dd0:	e083300b 	add	r3, r3, fp
     dd4:	e3a0202d 	mov	r2, #45	@ 0x2d
     dd8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ddc:	ea000006 	b	dfc <printint+0x10c>
     de0:	e24b2020 	sub	r2, fp, #32
     de4:	e51b3008 	ldr	r3, [fp, #-8]
     de8:	e0823003 	add	r3, r2, r3
     dec:	e5d33000 	ldrb	r3, [r3]
     df0:	e1a01003 	mov	r1, r3
     df4:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     df8:	ebffffae 	bl	cb8 <putc>
     dfc:	e51b3008 	ldr	r3, [fp, #-8]
     e00:	e2433001 	sub	r3, r3, #1
     e04:	e50b3008 	str	r3, [fp, #-8]
     e08:	e51b3008 	ldr	r3, [fp, #-8]
     e0c:	e3530000 	cmp	r3, #0
     e10:	aafffff2 	bge	de0 <printint+0xf0>
     e14:	e1a00000 	nop			@ (mov r0, r0)
     e18:	e1a00000 	nop			@ (mov r0, r0)
     e1c:	e24bd004 	sub	sp, fp, #4
     e20:	e8bd8800 	pop	{fp, pc}
     e24:	000014ec 	.word	0x000014ec

00000e28 <printf>:
     e28:	e92d000e 	push	{r1, r2, r3}
     e2c:	e92d4800 	push	{fp, lr}
     e30:	e28db004 	add	fp, sp, #4
     e34:	e24dd024 	sub	sp, sp, #36	@ 0x24
     e38:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     e3c:	e3a03000 	mov	r3, #0
     e40:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     e44:	e28b3008 	add	r3, fp, #8
     e48:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e4c:	e3a03000 	mov	r3, #0
     e50:	e50b3010 	str	r3, [fp, #-16]
     e54:	ea000074 	b	102c <printf+0x204>
     e58:	e59b2004 	ldr	r2, [fp, #4]
     e5c:	e51b3010 	ldr	r3, [fp, #-16]
     e60:	e0823003 	add	r3, r2, r3
     e64:	e5d33000 	ldrb	r3, [r3]
     e68:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     e6c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     e70:	e3530000 	cmp	r3, #0
     e74:	1a00000b 	bne	ea8 <printf+0x80>
     e78:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e7c:	e3530025 	cmp	r3, #37	@ 0x25
     e80:	1a000002 	bne	e90 <printf+0x68>
     e84:	e3a03025 	mov	r3, #37	@ 0x25
     e88:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     e8c:	ea000063 	b	1020 <printf+0x1f8>
     e90:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e94:	e6ef3073 	uxtb	r3, r3
     e98:	e1a01003 	mov	r1, r3
     e9c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ea0:	ebffff84 	bl	cb8 <putc>
     ea4:	ea00005d 	b	1020 <printf+0x1f8>
     ea8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     eac:	e3530025 	cmp	r3, #37	@ 0x25
     eb0:	1a00005a 	bne	1020 <printf+0x1f8>
     eb4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     eb8:	e3530064 	cmp	r3, #100	@ 0x64
     ebc:	1a00000a 	bne	eec <printf+0xc4>
     ec0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ec4:	e5933000 	ldr	r3, [r3]
     ec8:	e1a01003 	mov	r1, r3
     ecc:	e3a03001 	mov	r3, #1
     ed0:	e3a0200a 	mov	r2, #10
     ed4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ed8:	ebffff84 	bl	cf0 <printint>
     edc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ee0:	e2833004 	add	r3, r3, #4
     ee4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ee8:	ea00004a 	b	1018 <printf+0x1f0>
     eec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ef0:	e3530078 	cmp	r3, #120	@ 0x78
     ef4:	0a000002 	beq	f04 <printf+0xdc>
     ef8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     efc:	e3530070 	cmp	r3, #112	@ 0x70
     f00:	1a00000a 	bne	f30 <printf+0x108>
     f04:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f08:	e5933000 	ldr	r3, [r3]
     f0c:	e1a01003 	mov	r1, r3
     f10:	e3a03000 	mov	r3, #0
     f14:	e3a02010 	mov	r2, #16
     f18:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f1c:	ebffff73 	bl	cf0 <printint>
     f20:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f24:	e2833004 	add	r3, r3, #4
     f28:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f2c:	ea000039 	b	1018 <printf+0x1f0>
     f30:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f34:	e3530073 	cmp	r3, #115	@ 0x73
     f38:	1a000018 	bne	fa0 <printf+0x178>
     f3c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f40:	e5933000 	ldr	r3, [r3]
     f44:	e50b300c 	str	r3, [fp, #-12]
     f48:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f4c:	e2833004 	add	r3, r3, #4
     f50:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f54:	e51b300c 	ldr	r3, [fp, #-12]
     f58:	e3530000 	cmp	r3, #0
     f5c:	1a00000a 	bne	f8c <printf+0x164>
     f60:	e59f30f4 	ldr	r3, [pc, #244]	@ 105c <printf+0x234>
     f64:	e50b300c 	str	r3, [fp, #-12]
     f68:	ea000007 	b	f8c <printf+0x164>
     f6c:	e51b300c 	ldr	r3, [fp, #-12]
     f70:	e5d33000 	ldrb	r3, [r3]
     f74:	e1a01003 	mov	r1, r3
     f78:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f7c:	ebffff4d 	bl	cb8 <putc>
     f80:	e51b300c 	ldr	r3, [fp, #-12]
     f84:	e2833001 	add	r3, r3, #1
     f88:	e50b300c 	str	r3, [fp, #-12]
     f8c:	e51b300c 	ldr	r3, [fp, #-12]
     f90:	e5d33000 	ldrb	r3, [r3]
     f94:	e3530000 	cmp	r3, #0
     f98:	1afffff3 	bne	f6c <printf+0x144>
     f9c:	ea00001d 	b	1018 <printf+0x1f0>
     fa0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fa4:	e3530063 	cmp	r3, #99	@ 0x63
     fa8:	1a000009 	bne	fd4 <printf+0x1ac>
     fac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fb0:	e5933000 	ldr	r3, [r3]
     fb4:	e6ef3073 	uxtb	r3, r3
     fb8:	e1a01003 	mov	r1, r3
     fbc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fc0:	ebffff3c 	bl	cb8 <putc>
     fc4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fc8:	e2833004 	add	r3, r3, #4
     fcc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fd0:	ea000010 	b	1018 <printf+0x1f0>
     fd4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fd8:	e3530025 	cmp	r3, #37	@ 0x25
     fdc:	1a000005 	bne	ff8 <printf+0x1d0>
     fe0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fe4:	e6ef3073 	uxtb	r3, r3
     fe8:	e1a01003 	mov	r1, r3
     fec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ff0:	ebffff30 	bl	cb8 <putc>
     ff4:	ea000007 	b	1018 <printf+0x1f0>
     ff8:	e3a01025 	mov	r1, #37	@ 0x25
     ffc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1000:	ebffff2c 	bl	cb8 <putc>
    1004:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1008:	e6ef3073 	uxtb	r3, r3
    100c:	e1a01003 	mov	r1, r3
    1010:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1014:	ebffff27 	bl	cb8 <putc>
    1018:	e3a03000 	mov	r3, #0
    101c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1020:	e51b3010 	ldr	r3, [fp, #-16]
    1024:	e2833001 	add	r3, r3, #1
    1028:	e50b3010 	str	r3, [fp, #-16]
    102c:	e59b2004 	ldr	r2, [fp, #4]
    1030:	e51b3010 	ldr	r3, [fp, #-16]
    1034:	e0823003 	add	r3, r2, r3
    1038:	e5d33000 	ldrb	r3, [r3]
    103c:	e3530000 	cmp	r3, #0
    1040:	1affff84 	bne	e58 <printf+0x30>
    1044:	e1a00000 	nop			@ (mov r0, r0)
    1048:	e1a00000 	nop			@ (mov r0, r0)
    104c:	e24bd004 	sub	sp, fp, #4
    1050:	e8bd4800 	pop	{fp, lr}
    1054:	e28dd00c 	add	sp, sp, #12
    1058:	e12fff1e 	bx	lr
    105c:	000014e4 	.word	0x000014e4

00001060 <free>:
    1060:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1064:	e28db000 	add	fp, sp, #0
    1068:	e24dd014 	sub	sp, sp, #20
    106c:	e50b0010 	str	r0, [fp, #-16]
    1070:	e51b3010 	ldr	r3, [fp, #-16]
    1074:	e2433008 	sub	r3, r3, #8
    1078:	e50b300c 	str	r3, [fp, #-12]
    107c:	e59f3154 	ldr	r3, [pc, #340]	@ 11d8 <free+0x178>
    1080:	e5933000 	ldr	r3, [r3]
    1084:	e50b3008 	str	r3, [fp, #-8]
    1088:	ea000010 	b	10d0 <free+0x70>
    108c:	e51b3008 	ldr	r3, [fp, #-8]
    1090:	e5933000 	ldr	r3, [r3]
    1094:	e51b2008 	ldr	r2, [fp, #-8]
    1098:	e1520003 	cmp	r2, r3
    109c:	3a000008 	bcc	10c4 <free+0x64>
    10a0:	e51b200c 	ldr	r2, [fp, #-12]
    10a4:	e51b3008 	ldr	r3, [fp, #-8]
    10a8:	e1520003 	cmp	r2, r3
    10ac:	8a000010 	bhi	10f4 <free+0x94>
    10b0:	e51b3008 	ldr	r3, [fp, #-8]
    10b4:	e5933000 	ldr	r3, [r3]
    10b8:	e51b200c 	ldr	r2, [fp, #-12]
    10bc:	e1520003 	cmp	r2, r3
    10c0:	3a00000b 	bcc	10f4 <free+0x94>
    10c4:	e51b3008 	ldr	r3, [fp, #-8]
    10c8:	e5933000 	ldr	r3, [r3]
    10cc:	e50b3008 	str	r3, [fp, #-8]
    10d0:	e51b200c 	ldr	r2, [fp, #-12]
    10d4:	e51b3008 	ldr	r3, [fp, #-8]
    10d8:	e1520003 	cmp	r2, r3
    10dc:	9affffea 	bls	108c <free+0x2c>
    10e0:	e51b3008 	ldr	r3, [fp, #-8]
    10e4:	e5933000 	ldr	r3, [r3]
    10e8:	e51b200c 	ldr	r2, [fp, #-12]
    10ec:	e1520003 	cmp	r2, r3
    10f0:	2affffe5 	bcs	108c <free+0x2c>
    10f4:	e51b300c 	ldr	r3, [fp, #-12]
    10f8:	e5933004 	ldr	r3, [r3, #4]
    10fc:	e1a03183 	lsl	r3, r3, #3
    1100:	e51b200c 	ldr	r2, [fp, #-12]
    1104:	e0822003 	add	r2, r2, r3
    1108:	e51b3008 	ldr	r3, [fp, #-8]
    110c:	e5933000 	ldr	r3, [r3]
    1110:	e1520003 	cmp	r2, r3
    1114:	1a00000d 	bne	1150 <free+0xf0>
    1118:	e51b300c 	ldr	r3, [fp, #-12]
    111c:	e5932004 	ldr	r2, [r3, #4]
    1120:	e51b3008 	ldr	r3, [fp, #-8]
    1124:	e5933000 	ldr	r3, [r3]
    1128:	e5933004 	ldr	r3, [r3, #4]
    112c:	e0822003 	add	r2, r2, r3
    1130:	e51b300c 	ldr	r3, [fp, #-12]
    1134:	e5832004 	str	r2, [r3, #4]
    1138:	e51b3008 	ldr	r3, [fp, #-8]
    113c:	e5933000 	ldr	r3, [r3]
    1140:	e5932000 	ldr	r2, [r3]
    1144:	e51b300c 	ldr	r3, [fp, #-12]
    1148:	e5832000 	str	r2, [r3]
    114c:	ea000003 	b	1160 <free+0x100>
    1150:	e51b3008 	ldr	r3, [fp, #-8]
    1154:	e5932000 	ldr	r2, [r3]
    1158:	e51b300c 	ldr	r3, [fp, #-12]
    115c:	e5832000 	str	r2, [r3]
    1160:	e51b3008 	ldr	r3, [fp, #-8]
    1164:	e5933004 	ldr	r3, [r3, #4]
    1168:	e1a03183 	lsl	r3, r3, #3
    116c:	e51b2008 	ldr	r2, [fp, #-8]
    1170:	e0823003 	add	r3, r2, r3
    1174:	e51b200c 	ldr	r2, [fp, #-12]
    1178:	e1520003 	cmp	r2, r3
    117c:	1a00000b 	bne	11b0 <free+0x150>
    1180:	e51b3008 	ldr	r3, [fp, #-8]
    1184:	e5932004 	ldr	r2, [r3, #4]
    1188:	e51b300c 	ldr	r3, [fp, #-12]
    118c:	e5933004 	ldr	r3, [r3, #4]
    1190:	e0822003 	add	r2, r2, r3
    1194:	e51b3008 	ldr	r3, [fp, #-8]
    1198:	e5832004 	str	r2, [r3, #4]
    119c:	e51b300c 	ldr	r3, [fp, #-12]
    11a0:	e5932000 	ldr	r2, [r3]
    11a4:	e51b3008 	ldr	r3, [fp, #-8]
    11a8:	e5832000 	str	r2, [r3]
    11ac:	ea000002 	b	11bc <free+0x15c>
    11b0:	e51b3008 	ldr	r3, [fp, #-8]
    11b4:	e51b200c 	ldr	r2, [fp, #-12]
    11b8:	e5832000 	str	r2, [r3]
    11bc:	e59f2014 	ldr	r2, [pc, #20]	@ 11d8 <free+0x178>
    11c0:	e51b3008 	ldr	r3, [fp, #-8]
    11c4:	e5823000 	str	r3, [r2]
    11c8:	e1a00000 	nop			@ (mov r0, r0)
    11cc:	e28bd000 	add	sp, fp, #0
    11d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    11d4:	e12fff1e 	bx	lr
    11d8:	00001508 	.word	0x00001508

000011dc <morecore>:
    11dc:	e92d4800 	push	{fp, lr}
    11e0:	e28db004 	add	fp, sp, #4
    11e4:	e24dd010 	sub	sp, sp, #16
    11e8:	e50b0010 	str	r0, [fp, #-16]
    11ec:	e51b3010 	ldr	r3, [fp, #-16]
    11f0:	e3530a01 	cmp	r3, #4096	@ 0x1000
    11f4:	2a000001 	bcs	1200 <morecore+0x24>
    11f8:	e3a03a01 	mov	r3, #4096	@ 0x1000
    11fc:	e50b3010 	str	r3, [fp, #-16]
    1200:	e51b3010 	ldr	r3, [fp, #-16]
    1204:	e1a03183 	lsl	r3, r3, #3
    1208:	e1a00003 	mov	r0, r3
    120c:	ebfffe07 	bl	a30 <sbrk>
    1210:	e50b0008 	str	r0, [fp, #-8]
    1214:	e51b3008 	ldr	r3, [fp, #-8]
    1218:	e3730001 	cmn	r3, #1
    121c:	1a000001 	bne	1228 <morecore+0x4c>
    1220:	e3a03000 	mov	r3, #0
    1224:	ea00000a 	b	1254 <morecore+0x78>
    1228:	e51b3008 	ldr	r3, [fp, #-8]
    122c:	e50b300c 	str	r3, [fp, #-12]
    1230:	e51b300c 	ldr	r3, [fp, #-12]
    1234:	e51b2010 	ldr	r2, [fp, #-16]
    1238:	e5832004 	str	r2, [r3, #4]
    123c:	e51b300c 	ldr	r3, [fp, #-12]
    1240:	e2833008 	add	r3, r3, #8
    1244:	e1a00003 	mov	r0, r3
    1248:	ebffff84 	bl	1060 <free>
    124c:	e59f300c 	ldr	r3, [pc, #12]	@ 1260 <morecore+0x84>
    1250:	e5933000 	ldr	r3, [r3]
    1254:	e1a00003 	mov	r0, r3
    1258:	e24bd004 	sub	sp, fp, #4
    125c:	e8bd8800 	pop	{fp, pc}
    1260:	00001508 	.word	0x00001508

00001264 <malloc>:
    1264:	e92d4800 	push	{fp, lr}
    1268:	e28db004 	add	fp, sp, #4
    126c:	e24dd018 	sub	sp, sp, #24
    1270:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1274:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1278:	e2833007 	add	r3, r3, #7
    127c:	e1a031a3 	lsr	r3, r3, #3
    1280:	e2833001 	add	r3, r3, #1
    1284:	e50b3010 	str	r3, [fp, #-16]
    1288:	e59f3134 	ldr	r3, [pc, #308]	@ 13c4 <malloc+0x160>
    128c:	e5933000 	ldr	r3, [r3]
    1290:	e50b300c 	str	r3, [fp, #-12]
    1294:	e51b300c 	ldr	r3, [fp, #-12]
    1298:	e3530000 	cmp	r3, #0
    129c:	1a00000b 	bne	12d0 <malloc+0x6c>
    12a0:	e59f3120 	ldr	r3, [pc, #288]	@ 13c8 <malloc+0x164>
    12a4:	e50b300c 	str	r3, [fp, #-12]
    12a8:	e59f2114 	ldr	r2, [pc, #276]	@ 13c4 <malloc+0x160>
    12ac:	e51b300c 	ldr	r3, [fp, #-12]
    12b0:	e5823000 	str	r3, [r2]
    12b4:	e59f3108 	ldr	r3, [pc, #264]	@ 13c4 <malloc+0x160>
    12b8:	e5933000 	ldr	r3, [r3]
    12bc:	e59f2104 	ldr	r2, [pc, #260]	@ 13c8 <malloc+0x164>
    12c0:	e5823000 	str	r3, [r2]
    12c4:	e59f30fc 	ldr	r3, [pc, #252]	@ 13c8 <malloc+0x164>
    12c8:	e3a02000 	mov	r2, #0
    12cc:	e5832004 	str	r2, [r3, #4]
    12d0:	e51b300c 	ldr	r3, [fp, #-12]
    12d4:	e5933000 	ldr	r3, [r3]
    12d8:	e50b3008 	str	r3, [fp, #-8]
    12dc:	e51b3008 	ldr	r3, [fp, #-8]
    12e0:	e5933004 	ldr	r3, [r3, #4]
    12e4:	e51b2010 	ldr	r2, [fp, #-16]
    12e8:	e1520003 	cmp	r2, r3
    12ec:	8a00001e 	bhi	136c <malloc+0x108>
    12f0:	e51b3008 	ldr	r3, [fp, #-8]
    12f4:	e5933004 	ldr	r3, [r3, #4]
    12f8:	e51b2010 	ldr	r2, [fp, #-16]
    12fc:	e1520003 	cmp	r2, r3
    1300:	1a000004 	bne	1318 <malloc+0xb4>
    1304:	e51b3008 	ldr	r3, [fp, #-8]
    1308:	e5932000 	ldr	r2, [r3]
    130c:	e51b300c 	ldr	r3, [fp, #-12]
    1310:	e5832000 	str	r2, [r3]
    1314:	ea00000e 	b	1354 <malloc+0xf0>
    1318:	e51b3008 	ldr	r3, [fp, #-8]
    131c:	e5932004 	ldr	r2, [r3, #4]
    1320:	e51b3010 	ldr	r3, [fp, #-16]
    1324:	e0422003 	sub	r2, r2, r3
    1328:	e51b3008 	ldr	r3, [fp, #-8]
    132c:	e5832004 	str	r2, [r3, #4]
    1330:	e51b3008 	ldr	r3, [fp, #-8]
    1334:	e5933004 	ldr	r3, [r3, #4]
    1338:	e1a03183 	lsl	r3, r3, #3
    133c:	e51b2008 	ldr	r2, [fp, #-8]
    1340:	e0823003 	add	r3, r2, r3
    1344:	e50b3008 	str	r3, [fp, #-8]
    1348:	e51b3008 	ldr	r3, [fp, #-8]
    134c:	e51b2010 	ldr	r2, [fp, #-16]
    1350:	e5832004 	str	r2, [r3, #4]
    1354:	e59f2068 	ldr	r2, [pc, #104]	@ 13c4 <malloc+0x160>
    1358:	e51b300c 	ldr	r3, [fp, #-12]
    135c:	e5823000 	str	r3, [r2]
    1360:	e51b3008 	ldr	r3, [fp, #-8]
    1364:	e2833008 	add	r3, r3, #8
    1368:	ea000012 	b	13b8 <malloc+0x154>
    136c:	e59f3050 	ldr	r3, [pc, #80]	@ 13c4 <malloc+0x160>
    1370:	e5933000 	ldr	r3, [r3]
    1374:	e51b2008 	ldr	r2, [fp, #-8]
    1378:	e1520003 	cmp	r2, r3
    137c:	1a000007 	bne	13a0 <malloc+0x13c>
    1380:	e51b0010 	ldr	r0, [fp, #-16]
    1384:	ebffff94 	bl	11dc <morecore>
    1388:	e50b0008 	str	r0, [fp, #-8]
    138c:	e51b3008 	ldr	r3, [fp, #-8]
    1390:	e3530000 	cmp	r3, #0
    1394:	1a000001 	bne	13a0 <malloc+0x13c>
    1398:	e3a03000 	mov	r3, #0
    139c:	ea000005 	b	13b8 <malloc+0x154>
    13a0:	e51b3008 	ldr	r3, [fp, #-8]
    13a4:	e50b300c 	str	r3, [fp, #-12]
    13a8:	e51b3008 	ldr	r3, [fp, #-8]
    13ac:	e5933000 	ldr	r3, [r3]
    13b0:	e50b3008 	str	r3, [fp, #-8]
    13b4:	eaffffc8 	b	12dc <malloc+0x78>
    13b8:	e1a00003 	mov	r0, r3
    13bc:	e24bd004 	sub	sp, fp, #4
    13c0:	e8bd8800 	pop	{fp, pc}
    13c4:	00001508 	.word	0x00001508
    13c8:	00001500 	.word	0x00001500

000013cc <__udivsi3>:
    13cc:	e2512001 	subs	r2, r1, #1
    13d0:	012fff1e 	bxeq	lr
    13d4:	3a000036 	bcc	14b4 <__udivsi3+0xe8>
    13d8:	e1500001 	cmp	r0, r1
    13dc:	9a000022 	bls	146c <__udivsi3+0xa0>
    13e0:	e1110002 	tst	r1, r2
    13e4:	0a000023 	beq	1478 <__udivsi3+0xac>
    13e8:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    13ec:	01a01181 	lsleq	r1, r1, #3
    13f0:	03a03008 	moveq	r3, #8
    13f4:	13a03001 	movne	r3, #1
    13f8:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    13fc:	31510000 	cmpcc	r1, r0
    1400:	31a01201 	lslcc	r1, r1, #4
    1404:	31a03203 	lslcc	r3, r3, #4
    1408:	3afffffa 	bcc	13f8 <__udivsi3+0x2c>
    140c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1410:	31510000 	cmpcc	r1, r0
    1414:	31a01081 	lslcc	r1, r1, #1
    1418:	31a03083 	lslcc	r3, r3, #1
    141c:	3afffffa 	bcc	140c <__udivsi3+0x40>
    1420:	e3a02000 	mov	r2, #0
    1424:	e1500001 	cmp	r0, r1
    1428:	20400001 	subcs	r0, r0, r1
    142c:	21822003 	orrcs	r2, r2, r3
    1430:	e15000a1 	cmp	r0, r1, lsr #1
    1434:	204000a1 	subcs	r0, r0, r1, lsr #1
    1438:	218220a3 	orrcs	r2, r2, r3, lsr #1
    143c:	e1500121 	cmp	r0, r1, lsr #2
    1440:	20400121 	subcs	r0, r0, r1, lsr #2
    1444:	21822123 	orrcs	r2, r2, r3, lsr #2
    1448:	e15001a1 	cmp	r0, r1, lsr #3
    144c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1450:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1454:	e3500000 	cmp	r0, #0
    1458:	11b03223 	lsrsne	r3, r3, #4
    145c:	11a01221 	lsrne	r1, r1, #4
    1460:	1affffef 	bne	1424 <__udivsi3+0x58>
    1464:	e1a00002 	mov	r0, r2
    1468:	e12fff1e 	bx	lr
    146c:	03a00001 	moveq	r0, #1
    1470:	13a00000 	movne	r0, #0
    1474:	e12fff1e 	bx	lr
    1478:	e3510801 	cmp	r1, #65536	@ 0x10000
    147c:	21a01821 	lsrcs	r1, r1, #16
    1480:	23a02010 	movcs	r2, #16
    1484:	33a02000 	movcc	r2, #0
    1488:	e3510c01 	cmp	r1, #256	@ 0x100
    148c:	21a01421 	lsrcs	r1, r1, #8
    1490:	22822008 	addcs	r2, r2, #8
    1494:	e3510010 	cmp	r1, #16
    1498:	21a01221 	lsrcs	r1, r1, #4
    149c:	22822004 	addcs	r2, r2, #4
    14a0:	e3510004 	cmp	r1, #4
    14a4:	82822003 	addhi	r2, r2, #3
    14a8:	908220a1 	addls	r2, r2, r1, lsr #1
    14ac:	e1a00230 	lsr	r0, r0, r2
    14b0:	e12fff1e 	bx	lr
    14b4:	e3500000 	cmp	r0, #0
    14b8:	13e00000 	mvnne	r0, #0
    14bc:	ea000007 	b	14e0 <__aeabi_idiv0>

000014c0 <__aeabi_uidivmod>:
    14c0:	e3510000 	cmp	r1, #0
    14c4:	0afffffa 	beq	14b4 <__udivsi3+0xe8>
    14c8:	e92d4003 	push	{r0, r1, lr}
    14cc:	ebffffbe 	bl	13cc <__udivsi3>
    14d0:	e8bd4006 	pop	{r1, r2, lr}
    14d4:	e0030092 	mul	r3, r2, r0
    14d8:	e0411003 	sub	r1, r1, r3
    14dc:	e12fff1e 	bx	lr

000014e0 <__aeabi_idiv0>:
    14e0:	e12fff1e 	bx	lr
