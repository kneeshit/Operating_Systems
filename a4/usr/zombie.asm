
_zombie:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	eb00021f 	bl	88c <fork>
       c:	e1a03000 	mov	r3, r0
      10:	e3530000 	cmp	r3, #0
      14:	da000001 	ble	20 <main+0x20>
      18:	e3a00005 	mov	r0, #5
      1c:	eb0002c5 	bl	b38 <sleep>
      20:	eb000222 	bl	8b0 <exit>

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
     318:	eb00017f 	bl	91c <read>
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
     3c0:	eb000182 	bl	9d0 <open>
     3c4:	e50b0008 	str	r0, [fp, #-8]
     3c8:	e51b3008 	ldr	r3, [fp, #-8]
     3cc:	e3530000 	cmp	r3, #0
     3d0:	aa000001 	bge	3dc <stat+0x38>
     3d4:	e3e03000 	mvn	r3, #0
     3d8:	ea000006 	b	3f8 <stat+0x54>
     3dc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     3e0:	e51b0008 	ldr	r0, [fp, #-8]
     3e4:	eb000194 	bl	a3c <fstat>
     3e8:	e50b000c 	str	r0, [fp, #-12]
     3ec:	e51b0008 	ldr	r0, [fp, #-8]
     3f0:	eb00015b 	bl	964 <close>
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

0000054c <xchg>:
     54c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     550:	e28db000 	add	fp, sp, #0
     554:	e24dd00c 	sub	sp, sp, #12
     558:	e50b0008 	str	r0, [fp, #-8]
     55c:	e50b100c 	str	r1, [fp, #-12]
     560:	e51b200c 	ldr	r2, [fp, #-12]
     564:	e51b3008 	ldr	r3, [fp, #-8]
     568:	e1931f9f 	ldrex	r1, [r3]
     56c:	e1830f92 	strex	r0, r2, [r3]
     570:	e3500000 	cmp	r0, #0
     574:	1afffffb 	bne	568 <xchg+0x1c>
     578:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     57c:	e1a03001 	mov	r3, r1
     580:	e1a00003 	mov	r0, r3
     584:	e28bd000 	add	sp, fp, #0
     588:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     58c:	e12fff1e 	bx	lr

00000590 <acquireLock>:
     590:	e92d4800 	push	{fp, lr}
     594:	e28db004 	add	fp, sp, #4
     598:	e24dd008 	sub	sp, sp, #8
     59c:	e50b0008 	str	r0, [fp, #-8]
     5a0:	e51b3008 	ldr	r3, [fp, #-8]
     5a4:	e5933004 	ldr	r3, [r3, #4]
     5a8:	e3530000 	cmp	r3, #0
     5ac:	0a000008 	beq	5d4 <acquireLock+0x44>
     5b0:	e1a00000 	nop			@ (mov r0, r0)
     5b4:	e51b3008 	ldr	r3, [fp, #-8]
     5b8:	e3a01001 	mov	r1, #1
     5bc:	e1a00003 	mov	r0, r3
     5c0:	ebffffe1 	bl	54c <xchg>
     5c4:	e1a03000 	mov	r3, r0
     5c8:	e3530000 	cmp	r3, #0
     5cc:	1afffff8 	bne	5b4 <acquireLock+0x24>
     5d0:	ea000000 	b	5d8 <acquireLock+0x48>
     5d4:	e1a00000 	nop			@ (mov r0, r0)
     5d8:	e24bd004 	sub	sp, fp, #4
     5dc:	e8bd8800 	pop	{fp, pc}

000005e0 <releaseLock>:
     5e0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5e4:	e28db000 	add	fp, sp, #0
     5e8:	e24dd00c 	sub	sp, sp, #12
     5ec:	e50b0008 	str	r0, [fp, #-8]
     5f0:	e51b3008 	ldr	r3, [fp, #-8]
     5f4:	e5933004 	ldr	r3, [r3, #4]
     5f8:	e3530000 	cmp	r3, #0
     5fc:	0a000007 	beq	620 <releaseLock+0x40>
     600:	e51b3008 	ldr	r3, [fp, #-8]
     604:	e5933000 	ldr	r3, [r3]
     608:	e3530001 	cmp	r3, #1
     60c:	1a000005 	bne	628 <releaseLock+0x48>
     610:	e51b3008 	ldr	r3, [fp, #-8]
     614:	e3a02000 	mov	r2, #0
     618:	e5832000 	str	r2, [r3]
     61c:	ea000002 	b	62c <releaseLock+0x4c>
     620:	e1a00000 	nop			@ (mov r0, r0)
     624:	ea000000 	b	62c <releaseLock+0x4c>
     628:	e1a00000 	nop			@ (mov r0, r0)
     62c:	e28bd000 	add	sp, fp, #0
     630:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     634:	e12fff1e 	bx	lr

00000638 <initiateCondVar>:
     638:	e92d4800 	push	{fp, lr}
     63c:	e28db004 	add	fp, sp, #4
     640:	e24dd008 	sub	sp, sp, #8
     644:	e50b0008 	str	r0, [fp, #-8]
     648:	eb0001b8 	bl	d30 <getChannel>
     64c:	e1a02000 	mov	r2, r0
     650:	e51b3008 	ldr	r3, [fp, #-8]
     654:	e5832000 	str	r2, [r3]
     658:	e51b3008 	ldr	r3, [fp, #-8]
     65c:	e3a02001 	mov	r2, #1
     660:	e5832004 	str	r2, [r3, #4]
     664:	e1a00000 	nop			@ (mov r0, r0)
     668:	e24bd004 	sub	sp, fp, #4
     66c:	e8bd8800 	pop	{fp, pc}

00000670 <condWait>:
     670:	e92d4800 	push	{fp, lr}
     674:	e28db004 	add	fp, sp, #4
     678:	e24dd008 	sub	sp, sp, #8
     67c:	e50b0008 	str	r0, [fp, #-8]
     680:	e50b100c 	str	r1, [fp, #-12]
     684:	e51b3008 	ldr	r3, [fp, #-8]
     688:	e5933004 	ldr	r3, [r3, #4]
     68c:	e3530000 	cmp	r3, #0
     690:	0a00000c 	beq	6c8 <condWait+0x58>
     694:	e51b300c 	ldr	r3, [fp, #-12]
     698:	e5933004 	ldr	r3, [r3, #4]
     69c:	e3530000 	cmp	r3, #0
     6a0:	0a000008 	beq	6c8 <condWait+0x58>
     6a4:	e51b000c 	ldr	r0, [fp, #-12]
     6a8:	ebffffcc 	bl	5e0 <releaseLock>
     6ac:	e51b3008 	ldr	r3, [fp, #-8]
     6b0:	e5933000 	ldr	r3, [r3]
     6b4:	e1a00003 	mov	r0, r3
     6b8:	eb000193 	bl	d0c <sleepChan>
     6bc:	e51b000c 	ldr	r0, [fp, #-12]
     6c0:	ebffffb2 	bl	590 <acquireLock>
     6c4:	ea000000 	b	6cc <condWait+0x5c>
     6c8:	e1a00000 	nop			@ (mov r0, r0)
     6cc:	e24bd004 	sub	sp, fp, #4
     6d0:	e8bd8800 	pop	{fp, pc}

000006d4 <broadcast>:
     6d4:	e92d4800 	push	{fp, lr}
     6d8:	e28db004 	add	fp, sp, #4
     6dc:	e24dd008 	sub	sp, sp, #8
     6e0:	e50b0008 	str	r0, [fp, #-8]
     6e4:	e51b3008 	ldr	r3, [fp, #-8]
     6e8:	e5933004 	ldr	r3, [r3, #4]
     6ec:	e3530000 	cmp	r3, #0
     6f0:	0a000004 	beq	708 <broadcast+0x34>
     6f4:	e51b3008 	ldr	r3, [fp, #-8]
     6f8:	e5933000 	ldr	r3, [r3]
     6fc:	e1a00003 	mov	r0, r3
     700:	eb000193 	bl	d54 <sigChan>
     704:	ea000000 	b	70c <broadcast+0x38>
     708:	e1a00000 	nop			@ (mov r0, r0)
     70c:	e24bd004 	sub	sp, fp, #4
     710:	e8bd8800 	pop	{fp, pc}

00000714 <signal>:
     714:	e92d4800 	push	{fp, lr}
     718:	e28db004 	add	fp, sp, #4
     71c:	e24dd008 	sub	sp, sp, #8
     720:	e50b0008 	str	r0, [fp, #-8]
     724:	e51b3008 	ldr	r3, [fp, #-8]
     728:	e5933004 	ldr	r3, [r3, #4]
     72c:	e3530000 	cmp	r3, #0
     730:	0a000004 	beq	748 <signal+0x34>
     734:	e51b3008 	ldr	r3, [fp, #-8]
     738:	e5933000 	ldr	r3, [r3]
     73c:	e1a00003 	mov	r0, r3
     740:	eb00018c 	bl	d78 <sigOneChan>
     744:	ea000000 	b	74c <signal+0x38>
     748:	e1a00000 	nop			@ (mov r0, r0)
     74c:	e24bd004 	sub	sp, fp, #4
     750:	e8bd8800 	pop	{fp, pc}

00000754 <semInit>:
     754:	e92d4800 	push	{fp, lr}
     758:	e28db004 	add	fp, sp, #4
     75c:	e24dd008 	sub	sp, sp, #8
     760:	e50b0008 	str	r0, [fp, #-8]
     764:	e50b100c 	str	r1, [fp, #-12]
     768:	e51b3008 	ldr	r3, [fp, #-8]
     76c:	e51b200c 	ldr	r2, [fp, #-12]
     770:	e5832000 	str	r2, [r3]
     774:	e51b3008 	ldr	r3, [fp, #-8]
     778:	e2833004 	add	r3, r3, #4
     77c:	e1a00003 	mov	r0, r3
     780:	ebffff63 	bl	514 <initiateLock>
     784:	e51b3008 	ldr	r3, [fp, #-8]
     788:	e283300c 	add	r3, r3, #12
     78c:	e1a00003 	mov	r0, r3
     790:	ebffffa8 	bl	638 <initiateCondVar>
     794:	e51b3008 	ldr	r3, [fp, #-8]
     798:	e3a02001 	mov	r2, #1
     79c:	e5832014 	str	r2, [r3, #20]
     7a0:	e1a00000 	nop			@ (mov r0, r0)
     7a4:	e24bd004 	sub	sp, fp, #4
     7a8:	e8bd8800 	pop	{fp, pc}

000007ac <semUp>:
     7ac:	e92d4800 	push	{fp, lr}
     7b0:	e28db004 	add	fp, sp, #4
     7b4:	e24dd008 	sub	sp, sp, #8
     7b8:	e50b0008 	str	r0, [fp, #-8]
     7bc:	e51b3008 	ldr	r3, [fp, #-8]
     7c0:	e2833004 	add	r3, r3, #4
     7c4:	e1a00003 	mov	r0, r3
     7c8:	ebffff70 	bl	590 <acquireLock>
     7cc:	e51b3008 	ldr	r3, [fp, #-8]
     7d0:	e5933000 	ldr	r3, [r3]
     7d4:	e2832001 	add	r2, r3, #1
     7d8:	e51b3008 	ldr	r3, [fp, #-8]
     7dc:	e5832000 	str	r2, [r3]
     7e0:	e51b3008 	ldr	r3, [fp, #-8]
     7e4:	e283300c 	add	r3, r3, #12
     7e8:	e1a00003 	mov	r0, r3
     7ec:	ebffffc8 	bl	714 <signal>
     7f0:	e51b3008 	ldr	r3, [fp, #-8]
     7f4:	e2833004 	add	r3, r3, #4
     7f8:	e1a00003 	mov	r0, r3
     7fc:	ebffff77 	bl	5e0 <releaseLock>
     800:	e1a00000 	nop			@ (mov r0, r0)
     804:	e24bd004 	sub	sp, fp, #4
     808:	e8bd8800 	pop	{fp, pc}

0000080c <semDown>:
     80c:	e92d4800 	push	{fp, lr}
     810:	e28db004 	add	fp, sp, #4
     814:	e24dd008 	sub	sp, sp, #8
     818:	e50b0008 	str	r0, [fp, #-8]
     81c:	e51b3008 	ldr	r3, [fp, #-8]
     820:	e2833004 	add	r3, r3, #4
     824:	e1a00003 	mov	r0, r3
     828:	ebffff58 	bl	590 <acquireLock>
     82c:	ea000006 	b	84c <semDown+0x40>
     830:	e51b3008 	ldr	r3, [fp, #-8]
     834:	e283200c 	add	r2, r3, #12
     838:	e51b3008 	ldr	r3, [fp, #-8]
     83c:	e2833004 	add	r3, r3, #4
     840:	e1a01003 	mov	r1, r3
     844:	e1a00002 	mov	r0, r2
     848:	ebffff88 	bl	670 <condWait>
     84c:	e51b3008 	ldr	r3, [fp, #-8]
     850:	e5933000 	ldr	r3, [r3]
     854:	e3530000 	cmp	r3, #0
     858:	dafffff4 	ble	830 <semDown+0x24>
     85c:	e51b3008 	ldr	r3, [fp, #-8]
     860:	e5933000 	ldr	r3, [r3]
     864:	e2432001 	sub	r2, r3, #1
     868:	e51b3008 	ldr	r3, [fp, #-8]
     86c:	e5832000 	str	r2, [r3]
     870:	e51b3008 	ldr	r3, [fp, #-8]
     874:	e2833004 	add	r3, r3, #4
     878:	e1a00003 	mov	r0, r3
     87c:	ebffff57 	bl	5e0 <releaseLock>
     880:	e1a00000 	nop			@ (mov r0, r0)
     884:	e24bd004 	sub	sp, fp, #4
     888:	e8bd8800 	pop	{fp, pc}

0000088c <fork>:
     88c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     890:	e1a04003 	mov	r4, r3
     894:	e1a03002 	mov	r3, r2
     898:	e1a02001 	mov	r2, r1
     89c:	e1a01000 	mov	r1, r0
     8a0:	e3a00001 	mov	r0, #1
     8a4:	ef000000 	svc	0x00000000
     8a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8ac:	e12fff1e 	bx	lr

000008b0 <exit>:
     8b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8b4:	e1a04003 	mov	r4, r3
     8b8:	e1a03002 	mov	r3, r2
     8bc:	e1a02001 	mov	r2, r1
     8c0:	e1a01000 	mov	r1, r0
     8c4:	e3a00002 	mov	r0, #2
     8c8:	ef000000 	svc	0x00000000
     8cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8d0:	e12fff1e 	bx	lr

000008d4 <wait>:
     8d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8d8:	e1a04003 	mov	r4, r3
     8dc:	e1a03002 	mov	r3, r2
     8e0:	e1a02001 	mov	r2, r1
     8e4:	e1a01000 	mov	r1, r0
     8e8:	e3a00003 	mov	r0, #3
     8ec:	ef000000 	svc	0x00000000
     8f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8f4:	e12fff1e 	bx	lr

000008f8 <pipe>:
     8f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8fc:	e1a04003 	mov	r4, r3
     900:	e1a03002 	mov	r3, r2
     904:	e1a02001 	mov	r2, r1
     908:	e1a01000 	mov	r1, r0
     90c:	e3a00004 	mov	r0, #4
     910:	ef000000 	svc	0x00000000
     914:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     918:	e12fff1e 	bx	lr

0000091c <read>:
     91c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     920:	e1a04003 	mov	r4, r3
     924:	e1a03002 	mov	r3, r2
     928:	e1a02001 	mov	r2, r1
     92c:	e1a01000 	mov	r1, r0
     930:	e3a00005 	mov	r0, #5
     934:	ef000000 	svc	0x00000000
     938:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     93c:	e12fff1e 	bx	lr

00000940 <write>:
     940:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     944:	e1a04003 	mov	r4, r3
     948:	e1a03002 	mov	r3, r2
     94c:	e1a02001 	mov	r2, r1
     950:	e1a01000 	mov	r1, r0
     954:	e3a00010 	mov	r0, #16
     958:	ef000000 	svc	0x00000000
     95c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     960:	e12fff1e 	bx	lr

00000964 <close>:
     964:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     968:	e1a04003 	mov	r4, r3
     96c:	e1a03002 	mov	r3, r2
     970:	e1a02001 	mov	r2, r1
     974:	e1a01000 	mov	r1, r0
     978:	e3a00015 	mov	r0, #21
     97c:	ef000000 	svc	0x00000000
     980:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     984:	e12fff1e 	bx	lr

00000988 <kill>:
     988:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     98c:	e1a04003 	mov	r4, r3
     990:	e1a03002 	mov	r3, r2
     994:	e1a02001 	mov	r2, r1
     998:	e1a01000 	mov	r1, r0
     99c:	e3a00006 	mov	r0, #6
     9a0:	ef000000 	svc	0x00000000
     9a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a8:	e12fff1e 	bx	lr

000009ac <exec>:
     9ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9b0:	e1a04003 	mov	r4, r3
     9b4:	e1a03002 	mov	r3, r2
     9b8:	e1a02001 	mov	r2, r1
     9bc:	e1a01000 	mov	r1, r0
     9c0:	e3a00007 	mov	r0, #7
     9c4:	ef000000 	svc	0x00000000
     9c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9cc:	e12fff1e 	bx	lr

000009d0 <open>:
     9d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9d4:	e1a04003 	mov	r4, r3
     9d8:	e1a03002 	mov	r3, r2
     9dc:	e1a02001 	mov	r2, r1
     9e0:	e1a01000 	mov	r1, r0
     9e4:	e3a0000f 	mov	r0, #15
     9e8:	ef000000 	svc	0x00000000
     9ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9f0:	e12fff1e 	bx	lr

000009f4 <mknod>:
     9f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f8:	e1a04003 	mov	r4, r3
     9fc:	e1a03002 	mov	r3, r2
     a00:	e1a02001 	mov	r2, r1
     a04:	e1a01000 	mov	r1, r0
     a08:	e3a00011 	mov	r0, #17
     a0c:	ef000000 	svc	0x00000000
     a10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a14:	e12fff1e 	bx	lr

00000a18 <unlink>:
     a18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a1c:	e1a04003 	mov	r4, r3
     a20:	e1a03002 	mov	r3, r2
     a24:	e1a02001 	mov	r2, r1
     a28:	e1a01000 	mov	r1, r0
     a2c:	e3a00012 	mov	r0, #18
     a30:	ef000000 	svc	0x00000000
     a34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a38:	e12fff1e 	bx	lr

00000a3c <fstat>:
     a3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a40:	e1a04003 	mov	r4, r3
     a44:	e1a03002 	mov	r3, r2
     a48:	e1a02001 	mov	r2, r1
     a4c:	e1a01000 	mov	r1, r0
     a50:	e3a00008 	mov	r0, #8
     a54:	ef000000 	svc	0x00000000
     a58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a5c:	e12fff1e 	bx	lr

00000a60 <link>:
     a60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a64:	e1a04003 	mov	r4, r3
     a68:	e1a03002 	mov	r3, r2
     a6c:	e1a02001 	mov	r2, r1
     a70:	e1a01000 	mov	r1, r0
     a74:	e3a00013 	mov	r0, #19
     a78:	ef000000 	svc	0x00000000
     a7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a80:	e12fff1e 	bx	lr

00000a84 <mkdir>:
     a84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a88:	e1a04003 	mov	r4, r3
     a8c:	e1a03002 	mov	r3, r2
     a90:	e1a02001 	mov	r2, r1
     a94:	e1a01000 	mov	r1, r0
     a98:	e3a00014 	mov	r0, #20
     a9c:	ef000000 	svc	0x00000000
     aa0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aa4:	e12fff1e 	bx	lr

00000aa8 <chdir>:
     aa8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aac:	e1a04003 	mov	r4, r3
     ab0:	e1a03002 	mov	r3, r2
     ab4:	e1a02001 	mov	r2, r1
     ab8:	e1a01000 	mov	r1, r0
     abc:	e3a00009 	mov	r0, #9
     ac0:	ef000000 	svc	0x00000000
     ac4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac8:	e12fff1e 	bx	lr

00000acc <dup>:
     acc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad0:	e1a04003 	mov	r4, r3
     ad4:	e1a03002 	mov	r3, r2
     ad8:	e1a02001 	mov	r2, r1
     adc:	e1a01000 	mov	r1, r0
     ae0:	e3a0000a 	mov	r0, #10
     ae4:	ef000000 	svc	0x00000000
     ae8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aec:	e12fff1e 	bx	lr

00000af0 <getpid>:
     af0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     af4:	e1a04003 	mov	r4, r3
     af8:	e1a03002 	mov	r3, r2
     afc:	e1a02001 	mov	r2, r1
     b00:	e1a01000 	mov	r1, r0
     b04:	e3a0000b 	mov	r0, #11
     b08:	ef000000 	svc	0x00000000
     b0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b10:	e12fff1e 	bx	lr

00000b14 <sbrk>:
     b14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b18:	e1a04003 	mov	r4, r3
     b1c:	e1a03002 	mov	r3, r2
     b20:	e1a02001 	mov	r2, r1
     b24:	e1a01000 	mov	r1, r0
     b28:	e3a0000c 	mov	r0, #12
     b2c:	ef000000 	svc	0x00000000
     b30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b34:	e12fff1e 	bx	lr

00000b38 <sleep>:
     b38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b3c:	e1a04003 	mov	r4, r3
     b40:	e1a03002 	mov	r3, r2
     b44:	e1a02001 	mov	r2, r1
     b48:	e1a01000 	mov	r1, r0
     b4c:	e3a0000d 	mov	r0, #13
     b50:	ef000000 	svc	0x00000000
     b54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b58:	e12fff1e 	bx	lr

00000b5c <uptime>:
     b5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b60:	e1a04003 	mov	r4, r3
     b64:	e1a03002 	mov	r3, r2
     b68:	e1a02001 	mov	r2, r1
     b6c:	e1a01000 	mov	r1, r0
     b70:	e3a0000e 	mov	r0, #14
     b74:	ef000000 	svc	0x00000000
     b78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b7c:	e12fff1e 	bx	lr

00000b80 <getprocs>:
     b80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b84:	e1a04003 	mov	r4, r3
     b88:	e1a03002 	mov	r3, r2
     b8c:	e1a02001 	mov	r2, r1
     b90:	e1a01000 	mov	r1, r0
     b94:	e3a00016 	mov	r0, #22
     b98:	ef000000 	svc	0x00000000
     b9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba0:	e12fff1e 	bx	lr

00000ba4 <settickets>:
     ba4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba8:	e1a04003 	mov	r4, r3
     bac:	e1a03002 	mov	r3, r2
     bb0:	e1a02001 	mov	r2, r1
     bb4:	e1a01000 	mov	r1, r0
     bb8:	e3a00017 	mov	r0, #23
     bbc:	ef000000 	svc	0x00000000
     bc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc4:	e12fff1e 	bx	lr

00000bc8 <srand>:
     bc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bcc:	e1a04003 	mov	r4, r3
     bd0:	e1a03002 	mov	r3, r2
     bd4:	e1a02001 	mov	r2, r1
     bd8:	e1a01000 	mov	r1, r0
     bdc:	e3a00018 	mov	r0, #24
     be0:	ef000000 	svc	0x00000000
     be4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be8:	e12fff1e 	bx	lr

00000bec <getpinfo>:
     bec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf0:	e1a04003 	mov	r4, r3
     bf4:	e1a03002 	mov	r3, r2
     bf8:	e1a02001 	mov	r2, r1
     bfc:	e1a01000 	mov	r1, r0
     c00:	e3a00019 	mov	r0, #25
     c04:	ef000000 	svc	0x00000000
     c08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c0c:	e12fff1e 	bx	lr

00000c10 <dumppagetable>:
     c10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c14:	e1a04003 	mov	r4, r3
     c18:	e1a03002 	mov	r3, r2
     c1c:	e1a02001 	mov	r2, r1
     c20:	e1a01000 	mov	r1, r0
     c24:	e3a0001a 	mov	r0, #26
     c28:	ef000000 	svc	0x00000000
     c2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c30:	e12fff1e 	bx	lr

00000c34 <thread_create>:
     c34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c38:	e1a04003 	mov	r4, r3
     c3c:	e1a03002 	mov	r3, r2
     c40:	e1a02001 	mov	r2, r1
     c44:	e1a01000 	mov	r1, r0
     c48:	e3a0001b 	mov	r0, #27
     c4c:	ef000000 	svc	0x00000000
     c50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c54:	e12fff1e 	bx	lr

00000c58 <thread_exit>:
     c58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c5c:	e1a04003 	mov	r4, r3
     c60:	e1a03002 	mov	r3, r2
     c64:	e1a02001 	mov	r2, r1
     c68:	e1a01000 	mov	r1, r0
     c6c:	e3a0001c 	mov	r0, #28
     c70:	ef000000 	svc	0x00000000
     c74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c78:	e12fff1e 	bx	lr

00000c7c <thread_join>:
     c7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c80:	e1a04003 	mov	r4, r3
     c84:	e1a03002 	mov	r3, r2
     c88:	e1a02001 	mov	r2, r1
     c8c:	e1a01000 	mov	r1, r0
     c90:	e3a0001d 	mov	r0, #29
     c94:	ef000000 	svc	0x00000000
     c98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c9c:	e12fff1e 	bx	lr

00000ca0 <waitpid>:
     ca0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca4:	e1a04003 	mov	r4, r3
     ca8:	e1a03002 	mov	r3, r2
     cac:	e1a02001 	mov	r2, r1
     cb0:	e1a01000 	mov	r1, r0
     cb4:	e3a0001e 	mov	r0, #30
     cb8:	ef000000 	svc	0x00000000
     cbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc0:	e12fff1e 	bx	lr

00000cc4 <barrier_init>:
     cc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc8:	e1a04003 	mov	r4, r3
     ccc:	e1a03002 	mov	r3, r2
     cd0:	e1a02001 	mov	r2, r1
     cd4:	e1a01000 	mov	r1, r0
     cd8:	e3a0001f 	mov	r0, #31
     cdc:	ef000000 	svc	0x00000000
     ce0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce4:	e12fff1e 	bx	lr

00000ce8 <barrier_check>:
     ce8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cec:	e1a04003 	mov	r4, r3
     cf0:	e1a03002 	mov	r3, r2
     cf4:	e1a02001 	mov	r2, r1
     cf8:	e1a01000 	mov	r1, r0
     cfc:	e3a00020 	mov	r0, #32
     d00:	ef000000 	svc	0x00000000
     d04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d08:	e12fff1e 	bx	lr

00000d0c <sleepChan>:
     d0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d10:	e1a04003 	mov	r4, r3
     d14:	e1a03002 	mov	r3, r2
     d18:	e1a02001 	mov	r2, r1
     d1c:	e1a01000 	mov	r1, r0
     d20:	e3a00024 	mov	r0, #36	@ 0x24
     d24:	ef000000 	svc	0x00000000
     d28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d2c:	e12fff1e 	bx	lr

00000d30 <getChannel>:
     d30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d34:	e1a04003 	mov	r4, r3
     d38:	e1a03002 	mov	r3, r2
     d3c:	e1a02001 	mov	r2, r1
     d40:	e1a01000 	mov	r1, r0
     d44:	e3a00025 	mov	r0, #37	@ 0x25
     d48:	ef000000 	svc	0x00000000
     d4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d50:	e12fff1e 	bx	lr

00000d54 <sigChan>:
     d54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d58:	e1a04003 	mov	r4, r3
     d5c:	e1a03002 	mov	r3, r2
     d60:	e1a02001 	mov	r2, r1
     d64:	e1a01000 	mov	r1, r0
     d68:	e3a00026 	mov	r0, #38	@ 0x26
     d6c:	ef000000 	svc	0x00000000
     d70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d74:	e12fff1e 	bx	lr

00000d78 <sigOneChan>:
     d78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d7c:	e1a04003 	mov	r4, r3
     d80:	e1a03002 	mov	r3, r2
     d84:	e1a02001 	mov	r2, r1
     d88:	e1a01000 	mov	r1, r0
     d8c:	e3a00027 	mov	r0, #39	@ 0x27
     d90:	ef000000 	svc	0x00000000
     d94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d98:	e12fff1e 	bx	lr

00000d9c <putc>:
     d9c:	e92d4800 	push	{fp, lr}
     da0:	e28db004 	add	fp, sp, #4
     da4:	e24dd008 	sub	sp, sp, #8
     da8:	e50b0008 	str	r0, [fp, #-8]
     dac:	e1a03001 	mov	r3, r1
     db0:	e54b3009 	strb	r3, [fp, #-9]
     db4:	e24b3009 	sub	r3, fp, #9
     db8:	e3a02001 	mov	r2, #1
     dbc:	e1a01003 	mov	r1, r3
     dc0:	e51b0008 	ldr	r0, [fp, #-8]
     dc4:	ebfffedd 	bl	940 <write>
     dc8:	e1a00000 	nop			@ (mov r0, r0)
     dcc:	e24bd004 	sub	sp, fp, #4
     dd0:	e8bd8800 	pop	{fp, pc}

00000dd4 <printint>:
     dd4:	e92d4800 	push	{fp, lr}
     dd8:	e28db004 	add	fp, sp, #4
     ddc:	e24dd030 	sub	sp, sp, #48	@ 0x30
     de0:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     de4:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     de8:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     dec:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     df0:	e3a03000 	mov	r3, #0
     df4:	e50b300c 	str	r3, [fp, #-12]
     df8:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     dfc:	e3530000 	cmp	r3, #0
     e00:	0a000008 	beq	e28 <printint+0x54>
     e04:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e08:	e3530000 	cmp	r3, #0
     e0c:	aa000005 	bge	e28 <printint+0x54>
     e10:	e3a03001 	mov	r3, #1
     e14:	e50b300c 	str	r3, [fp, #-12]
     e18:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e1c:	e2633000 	rsb	r3, r3, #0
     e20:	e50b3010 	str	r3, [fp, #-16]
     e24:	ea000001 	b	e30 <printint+0x5c>
     e28:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e2c:	e50b3010 	str	r3, [fp, #-16]
     e30:	e3a03000 	mov	r3, #0
     e34:	e50b3008 	str	r3, [fp, #-8]
     e38:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     e3c:	e51b3010 	ldr	r3, [fp, #-16]
     e40:	e1a01002 	mov	r1, r2
     e44:	e1a00003 	mov	r0, r3
     e48:	eb0001d5 	bl	15a4 <__aeabi_uidivmod>
     e4c:	e1a03001 	mov	r3, r1
     e50:	e1a01003 	mov	r1, r3
     e54:	e51b3008 	ldr	r3, [fp, #-8]
     e58:	e2832001 	add	r2, r3, #1
     e5c:	e50b2008 	str	r2, [fp, #-8]
     e60:	e59f20a0 	ldr	r2, [pc, #160]	@ f08 <printint+0x134>
     e64:	e7d22001 	ldrb	r2, [r2, r1]
     e68:	e2433004 	sub	r3, r3, #4
     e6c:	e083300b 	add	r3, r3, fp
     e70:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     e74:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     e78:	e1a01003 	mov	r1, r3
     e7c:	e51b0010 	ldr	r0, [fp, #-16]
     e80:	eb00018a 	bl	14b0 <__udivsi3>
     e84:	e1a03000 	mov	r3, r0
     e88:	e50b3010 	str	r3, [fp, #-16]
     e8c:	e51b3010 	ldr	r3, [fp, #-16]
     e90:	e3530000 	cmp	r3, #0
     e94:	1affffe7 	bne	e38 <printint+0x64>
     e98:	e51b300c 	ldr	r3, [fp, #-12]
     e9c:	e3530000 	cmp	r3, #0
     ea0:	0a00000e 	beq	ee0 <printint+0x10c>
     ea4:	e51b3008 	ldr	r3, [fp, #-8]
     ea8:	e2832001 	add	r2, r3, #1
     eac:	e50b2008 	str	r2, [fp, #-8]
     eb0:	e2433004 	sub	r3, r3, #4
     eb4:	e083300b 	add	r3, r3, fp
     eb8:	e3a0202d 	mov	r2, #45	@ 0x2d
     ebc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ec0:	ea000006 	b	ee0 <printint+0x10c>
     ec4:	e24b2020 	sub	r2, fp, #32
     ec8:	e51b3008 	ldr	r3, [fp, #-8]
     ecc:	e0823003 	add	r3, r2, r3
     ed0:	e5d33000 	ldrb	r3, [r3]
     ed4:	e1a01003 	mov	r1, r3
     ed8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     edc:	ebffffae 	bl	d9c <putc>
     ee0:	e51b3008 	ldr	r3, [fp, #-8]
     ee4:	e2433001 	sub	r3, r3, #1
     ee8:	e50b3008 	str	r3, [fp, #-8]
     eec:	e51b3008 	ldr	r3, [fp, #-8]
     ef0:	e3530000 	cmp	r3, #0
     ef4:	aafffff2 	bge	ec4 <printint+0xf0>
     ef8:	e1a00000 	nop			@ (mov r0, r0)
     efc:	e1a00000 	nop			@ (mov r0, r0)
     f00:	e24bd004 	sub	sp, fp, #4
     f04:	e8bd8800 	pop	{fp, pc}
     f08:	000015d0 	.word	0x000015d0

00000f0c <printf>:
     f0c:	e92d000e 	push	{r1, r2, r3}
     f10:	e92d4800 	push	{fp, lr}
     f14:	e28db004 	add	fp, sp, #4
     f18:	e24dd024 	sub	sp, sp, #36	@ 0x24
     f1c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     f20:	e3a03000 	mov	r3, #0
     f24:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f28:	e28b3008 	add	r3, fp, #8
     f2c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f30:	e3a03000 	mov	r3, #0
     f34:	e50b3010 	str	r3, [fp, #-16]
     f38:	ea000074 	b	1110 <printf+0x204>
     f3c:	e59b2004 	ldr	r2, [fp, #4]
     f40:	e51b3010 	ldr	r3, [fp, #-16]
     f44:	e0823003 	add	r3, r2, r3
     f48:	e5d33000 	ldrb	r3, [r3]
     f4c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     f50:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     f54:	e3530000 	cmp	r3, #0
     f58:	1a00000b 	bne	f8c <printf+0x80>
     f5c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f60:	e3530025 	cmp	r3, #37	@ 0x25
     f64:	1a000002 	bne	f74 <printf+0x68>
     f68:	e3a03025 	mov	r3, #37	@ 0x25
     f6c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f70:	ea000063 	b	1104 <printf+0x1f8>
     f74:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f78:	e6ef3073 	uxtb	r3, r3
     f7c:	e1a01003 	mov	r1, r3
     f80:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f84:	ebffff84 	bl	d9c <putc>
     f88:	ea00005d 	b	1104 <printf+0x1f8>
     f8c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     f90:	e3530025 	cmp	r3, #37	@ 0x25
     f94:	1a00005a 	bne	1104 <printf+0x1f8>
     f98:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f9c:	e3530064 	cmp	r3, #100	@ 0x64
     fa0:	1a00000a 	bne	fd0 <printf+0xc4>
     fa4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fa8:	e5933000 	ldr	r3, [r3]
     fac:	e1a01003 	mov	r1, r3
     fb0:	e3a03001 	mov	r3, #1
     fb4:	e3a0200a 	mov	r2, #10
     fb8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fbc:	ebffff84 	bl	dd4 <printint>
     fc0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fc4:	e2833004 	add	r3, r3, #4
     fc8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fcc:	ea00004a 	b	10fc <printf+0x1f0>
     fd0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fd4:	e3530078 	cmp	r3, #120	@ 0x78
     fd8:	0a000002 	beq	fe8 <printf+0xdc>
     fdc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fe0:	e3530070 	cmp	r3, #112	@ 0x70
     fe4:	1a00000a 	bne	1014 <printf+0x108>
     fe8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fec:	e5933000 	ldr	r3, [r3]
     ff0:	e1a01003 	mov	r1, r3
     ff4:	e3a03000 	mov	r3, #0
     ff8:	e3a02010 	mov	r2, #16
     ffc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1000:	ebffff73 	bl	dd4 <printint>
    1004:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1008:	e2833004 	add	r3, r3, #4
    100c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1010:	ea000039 	b	10fc <printf+0x1f0>
    1014:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1018:	e3530073 	cmp	r3, #115	@ 0x73
    101c:	1a000018 	bne	1084 <printf+0x178>
    1020:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1024:	e5933000 	ldr	r3, [r3]
    1028:	e50b300c 	str	r3, [fp, #-12]
    102c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1030:	e2833004 	add	r3, r3, #4
    1034:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1038:	e51b300c 	ldr	r3, [fp, #-12]
    103c:	e3530000 	cmp	r3, #0
    1040:	1a00000a 	bne	1070 <printf+0x164>
    1044:	e59f30f4 	ldr	r3, [pc, #244]	@ 1140 <printf+0x234>
    1048:	e50b300c 	str	r3, [fp, #-12]
    104c:	ea000007 	b	1070 <printf+0x164>
    1050:	e51b300c 	ldr	r3, [fp, #-12]
    1054:	e5d33000 	ldrb	r3, [r3]
    1058:	e1a01003 	mov	r1, r3
    105c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1060:	ebffff4d 	bl	d9c <putc>
    1064:	e51b300c 	ldr	r3, [fp, #-12]
    1068:	e2833001 	add	r3, r3, #1
    106c:	e50b300c 	str	r3, [fp, #-12]
    1070:	e51b300c 	ldr	r3, [fp, #-12]
    1074:	e5d33000 	ldrb	r3, [r3]
    1078:	e3530000 	cmp	r3, #0
    107c:	1afffff3 	bne	1050 <printf+0x144>
    1080:	ea00001d 	b	10fc <printf+0x1f0>
    1084:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1088:	e3530063 	cmp	r3, #99	@ 0x63
    108c:	1a000009 	bne	10b8 <printf+0x1ac>
    1090:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1094:	e5933000 	ldr	r3, [r3]
    1098:	e6ef3073 	uxtb	r3, r3
    109c:	e1a01003 	mov	r1, r3
    10a0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10a4:	ebffff3c 	bl	d9c <putc>
    10a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10ac:	e2833004 	add	r3, r3, #4
    10b0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10b4:	ea000010 	b	10fc <printf+0x1f0>
    10b8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10bc:	e3530025 	cmp	r3, #37	@ 0x25
    10c0:	1a000005 	bne	10dc <printf+0x1d0>
    10c4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10c8:	e6ef3073 	uxtb	r3, r3
    10cc:	e1a01003 	mov	r1, r3
    10d0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10d4:	ebffff30 	bl	d9c <putc>
    10d8:	ea000007 	b	10fc <printf+0x1f0>
    10dc:	e3a01025 	mov	r1, #37	@ 0x25
    10e0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10e4:	ebffff2c 	bl	d9c <putc>
    10e8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10ec:	e6ef3073 	uxtb	r3, r3
    10f0:	e1a01003 	mov	r1, r3
    10f4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10f8:	ebffff27 	bl	d9c <putc>
    10fc:	e3a03000 	mov	r3, #0
    1100:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1104:	e51b3010 	ldr	r3, [fp, #-16]
    1108:	e2833001 	add	r3, r3, #1
    110c:	e50b3010 	str	r3, [fp, #-16]
    1110:	e59b2004 	ldr	r2, [fp, #4]
    1114:	e51b3010 	ldr	r3, [fp, #-16]
    1118:	e0823003 	add	r3, r2, r3
    111c:	e5d33000 	ldrb	r3, [r3]
    1120:	e3530000 	cmp	r3, #0
    1124:	1affff84 	bne	f3c <printf+0x30>
    1128:	e1a00000 	nop			@ (mov r0, r0)
    112c:	e1a00000 	nop			@ (mov r0, r0)
    1130:	e24bd004 	sub	sp, fp, #4
    1134:	e8bd4800 	pop	{fp, lr}
    1138:	e28dd00c 	add	sp, sp, #12
    113c:	e12fff1e 	bx	lr
    1140:	000015c8 	.word	0x000015c8

00001144 <free>:
    1144:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1148:	e28db000 	add	fp, sp, #0
    114c:	e24dd014 	sub	sp, sp, #20
    1150:	e50b0010 	str	r0, [fp, #-16]
    1154:	e51b3010 	ldr	r3, [fp, #-16]
    1158:	e2433008 	sub	r3, r3, #8
    115c:	e50b300c 	str	r3, [fp, #-12]
    1160:	e59f3154 	ldr	r3, [pc, #340]	@ 12bc <free+0x178>
    1164:	e5933000 	ldr	r3, [r3]
    1168:	e50b3008 	str	r3, [fp, #-8]
    116c:	ea000010 	b	11b4 <free+0x70>
    1170:	e51b3008 	ldr	r3, [fp, #-8]
    1174:	e5933000 	ldr	r3, [r3]
    1178:	e51b2008 	ldr	r2, [fp, #-8]
    117c:	e1520003 	cmp	r2, r3
    1180:	3a000008 	bcc	11a8 <free+0x64>
    1184:	e51b200c 	ldr	r2, [fp, #-12]
    1188:	e51b3008 	ldr	r3, [fp, #-8]
    118c:	e1520003 	cmp	r2, r3
    1190:	8a000010 	bhi	11d8 <free+0x94>
    1194:	e51b3008 	ldr	r3, [fp, #-8]
    1198:	e5933000 	ldr	r3, [r3]
    119c:	e51b200c 	ldr	r2, [fp, #-12]
    11a0:	e1520003 	cmp	r2, r3
    11a4:	3a00000b 	bcc	11d8 <free+0x94>
    11a8:	e51b3008 	ldr	r3, [fp, #-8]
    11ac:	e5933000 	ldr	r3, [r3]
    11b0:	e50b3008 	str	r3, [fp, #-8]
    11b4:	e51b200c 	ldr	r2, [fp, #-12]
    11b8:	e51b3008 	ldr	r3, [fp, #-8]
    11bc:	e1520003 	cmp	r2, r3
    11c0:	9affffea 	bls	1170 <free+0x2c>
    11c4:	e51b3008 	ldr	r3, [fp, #-8]
    11c8:	e5933000 	ldr	r3, [r3]
    11cc:	e51b200c 	ldr	r2, [fp, #-12]
    11d0:	e1520003 	cmp	r2, r3
    11d4:	2affffe5 	bcs	1170 <free+0x2c>
    11d8:	e51b300c 	ldr	r3, [fp, #-12]
    11dc:	e5933004 	ldr	r3, [r3, #4]
    11e0:	e1a03183 	lsl	r3, r3, #3
    11e4:	e51b200c 	ldr	r2, [fp, #-12]
    11e8:	e0822003 	add	r2, r2, r3
    11ec:	e51b3008 	ldr	r3, [fp, #-8]
    11f0:	e5933000 	ldr	r3, [r3]
    11f4:	e1520003 	cmp	r2, r3
    11f8:	1a00000d 	bne	1234 <free+0xf0>
    11fc:	e51b300c 	ldr	r3, [fp, #-12]
    1200:	e5932004 	ldr	r2, [r3, #4]
    1204:	e51b3008 	ldr	r3, [fp, #-8]
    1208:	e5933000 	ldr	r3, [r3]
    120c:	e5933004 	ldr	r3, [r3, #4]
    1210:	e0822003 	add	r2, r2, r3
    1214:	e51b300c 	ldr	r3, [fp, #-12]
    1218:	e5832004 	str	r2, [r3, #4]
    121c:	e51b3008 	ldr	r3, [fp, #-8]
    1220:	e5933000 	ldr	r3, [r3]
    1224:	e5932000 	ldr	r2, [r3]
    1228:	e51b300c 	ldr	r3, [fp, #-12]
    122c:	e5832000 	str	r2, [r3]
    1230:	ea000003 	b	1244 <free+0x100>
    1234:	e51b3008 	ldr	r3, [fp, #-8]
    1238:	e5932000 	ldr	r2, [r3]
    123c:	e51b300c 	ldr	r3, [fp, #-12]
    1240:	e5832000 	str	r2, [r3]
    1244:	e51b3008 	ldr	r3, [fp, #-8]
    1248:	e5933004 	ldr	r3, [r3, #4]
    124c:	e1a03183 	lsl	r3, r3, #3
    1250:	e51b2008 	ldr	r2, [fp, #-8]
    1254:	e0823003 	add	r3, r2, r3
    1258:	e51b200c 	ldr	r2, [fp, #-12]
    125c:	e1520003 	cmp	r2, r3
    1260:	1a00000b 	bne	1294 <free+0x150>
    1264:	e51b3008 	ldr	r3, [fp, #-8]
    1268:	e5932004 	ldr	r2, [r3, #4]
    126c:	e51b300c 	ldr	r3, [fp, #-12]
    1270:	e5933004 	ldr	r3, [r3, #4]
    1274:	e0822003 	add	r2, r2, r3
    1278:	e51b3008 	ldr	r3, [fp, #-8]
    127c:	e5832004 	str	r2, [r3, #4]
    1280:	e51b300c 	ldr	r3, [fp, #-12]
    1284:	e5932000 	ldr	r2, [r3]
    1288:	e51b3008 	ldr	r3, [fp, #-8]
    128c:	e5832000 	str	r2, [r3]
    1290:	ea000002 	b	12a0 <free+0x15c>
    1294:	e51b3008 	ldr	r3, [fp, #-8]
    1298:	e51b200c 	ldr	r2, [fp, #-12]
    129c:	e5832000 	str	r2, [r3]
    12a0:	e59f2014 	ldr	r2, [pc, #20]	@ 12bc <free+0x178>
    12a4:	e51b3008 	ldr	r3, [fp, #-8]
    12a8:	e5823000 	str	r3, [r2]
    12ac:	e1a00000 	nop			@ (mov r0, r0)
    12b0:	e28bd000 	add	sp, fp, #0
    12b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    12b8:	e12fff1e 	bx	lr
    12bc:	000015ec 	.word	0x000015ec

000012c0 <morecore>:
    12c0:	e92d4800 	push	{fp, lr}
    12c4:	e28db004 	add	fp, sp, #4
    12c8:	e24dd010 	sub	sp, sp, #16
    12cc:	e50b0010 	str	r0, [fp, #-16]
    12d0:	e51b3010 	ldr	r3, [fp, #-16]
    12d4:	e3530a01 	cmp	r3, #4096	@ 0x1000
    12d8:	2a000001 	bcs	12e4 <morecore+0x24>
    12dc:	e3a03a01 	mov	r3, #4096	@ 0x1000
    12e0:	e50b3010 	str	r3, [fp, #-16]
    12e4:	e51b3010 	ldr	r3, [fp, #-16]
    12e8:	e1a03183 	lsl	r3, r3, #3
    12ec:	e1a00003 	mov	r0, r3
    12f0:	ebfffe07 	bl	b14 <sbrk>
    12f4:	e50b0008 	str	r0, [fp, #-8]
    12f8:	e51b3008 	ldr	r3, [fp, #-8]
    12fc:	e3730001 	cmn	r3, #1
    1300:	1a000001 	bne	130c <morecore+0x4c>
    1304:	e3a03000 	mov	r3, #0
    1308:	ea00000a 	b	1338 <morecore+0x78>
    130c:	e51b3008 	ldr	r3, [fp, #-8]
    1310:	e50b300c 	str	r3, [fp, #-12]
    1314:	e51b300c 	ldr	r3, [fp, #-12]
    1318:	e51b2010 	ldr	r2, [fp, #-16]
    131c:	e5832004 	str	r2, [r3, #4]
    1320:	e51b300c 	ldr	r3, [fp, #-12]
    1324:	e2833008 	add	r3, r3, #8
    1328:	e1a00003 	mov	r0, r3
    132c:	ebffff84 	bl	1144 <free>
    1330:	e59f300c 	ldr	r3, [pc, #12]	@ 1344 <morecore+0x84>
    1334:	e5933000 	ldr	r3, [r3]
    1338:	e1a00003 	mov	r0, r3
    133c:	e24bd004 	sub	sp, fp, #4
    1340:	e8bd8800 	pop	{fp, pc}
    1344:	000015ec 	.word	0x000015ec

00001348 <malloc>:
    1348:	e92d4800 	push	{fp, lr}
    134c:	e28db004 	add	fp, sp, #4
    1350:	e24dd018 	sub	sp, sp, #24
    1354:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1358:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    135c:	e2833007 	add	r3, r3, #7
    1360:	e1a031a3 	lsr	r3, r3, #3
    1364:	e2833001 	add	r3, r3, #1
    1368:	e50b3010 	str	r3, [fp, #-16]
    136c:	e59f3134 	ldr	r3, [pc, #308]	@ 14a8 <malloc+0x160>
    1370:	e5933000 	ldr	r3, [r3]
    1374:	e50b300c 	str	r3, [fp, #-12]
    1378:	e51b300c 	ldr	r3, [fp, #-12]
    137c:	e3530000 	cmp	r3, #0
    1380:	1a00000b 	bne	13b4 <malloc+0x6c>
    1384:	e59f3120 	ldr	r3, [pc, #288]	@ 14ac <malloc+0x164>
    1388:	e50b300c 	str	r3, [fp, #-12]
    138c:	e59f2114 	ldr	r2, [pc, #276]	@ 14a8 <malloc+0x160>
    1390:	e51b300c 	ldr	r3, [fp, #-12]
    1394:	e5823000 	str	r3, [r2]
    1398:	e59f3108 	ldr	r3, [pc, #264]	@ 14a8 <malloc+0x160>
    139c:	e5933000 	ldr	r3, [r3]
    13a0:	e59f2104 	ldr	r2, [pc, #260]	@ 14ac <malloc+0x164>
    13a4:	e5823000 	str	r3, [r2]
    13a8:	e59f30fc 	ldr	r3, [pc, #252]	@ 14ac <malloc+0x164>
    13ac:	e3a02000 	mov	r2, #0
    13b0:	e5832004 	str	r2, [r3, #4]
    13b4:	e51b300c 	ldr	r3, [fp, #-12]
    13b8:	e5933000 	ldr	r3, [r3]
    13bc:	e50b3008 	str	r3, [fp, #-8]
    13c0:	e51b3008 	ldr	r3, [fp, #-8]
    13c4:	e5933004 	ldr	r3, [r3, #4]
    13c8:	e51b2010 	ldr	r2, [fp, #-16]
    13cc:	e1520003 	cmp	r2, r3
    13d0:	8a00001e 	bhi	1450 <malloc+0x108>
    13d4:	e51b3008 	ldr	r3, [fp, #-8]
    13d8:	e5933004 	ldr	r3, [r3, #4]
    13dc:	e51b2010 	ldr	r2, [fp, #-16]
    13e0:	e1520003 	cmp	r2, r3
    13e4:	1a000004 	bne	13fc <malloc+0xb4>
    13e8:	e51b3008 	ldr	r3, [fp, #-8]
    13ec:	e5932000 	ldr	r2, [r3]
    13f0:	e51b300c 	ldr	r3, [fp, #-12]
    13f4:	e5832000 	str	r2, [r3]
    13f8:	ea00000e 	b	1438 <malloc+0xf0>
    13fc:	e51b3008 	ldr	r3, [fp, #-8]
    1400:	e5932004 	ldr	r2, [r3, #4]
    1404:	e51b3010 	ldr	r3, [fp, #-16]
    1408:	e0422003 	sub	r2, r2, r3
    140c:	e51b3008 	ldr	r3, [fp, #-8]
    1410:	e5832004 	str	r2, [r3, #4]
    1414:	e51b3008 	ldr	r3, [fp, #-8]
    1418:	e5933004 	ldr	r3, [r3, #4]
    141c:	e1a03183 	lsl	r3, r3, #3
    1420:	e51b2008 	ldr	r2, [fp, #-8]
    1424:	e0823003 	add	r3, r2, r3
    1428:	e50b3008 	str	r3, [fp, #-8]
    142c:	e51b3008 	ldr	r3, [fp, #-8]
    1430:	e51b2010 	ldr	r2, [fp, #-16]
    1434:	e5832004 	str	r2, [r3, #4]
    1438:	e59f2068 	ldr	r2, [pc, #104]	@ 14a8 <malloc+0x160>
    143c:	e51b300c 	ldr	r3, [fp, #-12]
    1440:	e5823000 	str	r3, [r2]
    1444:	e51b3008 	ldr	r3, [fp, #-8]
    1448:	e2833008 	add	r3, r3, #8
    144c:	ea000012 	b	149c <malloc+0x154>
    1450:	e59f3050 	ldr	r3, [pc, #80]	@ 14a8 <malloc+0x160>
    1454:	e5933000 	ldr	r3, [r3]
    1458:	e51b2008 	ldr	r2, [fp, #-8]
    145c:	e1520003 	cmp	r2, r3
    1460:	1a000007 	bne	1484 <malloc+0x13c>
    1464:	e51b0010 	ldr	r0, [fp, #-16]
    1468:	ebffff94 	bl	12c0 <morecore>
    146c:	e50b0008 	str	r0, [fp, #-8]
    1470:	e51b3008 	ldr	r3, [fp, #-8]
    1474:	e3530000 	cmp	r3, #0
    1478:	1a000001 	bne	1484 <malloc+0x13c>
    147c:	e3a03000 	mov	r3, #0
    1480:	ea000005 	b	149c <malloc+0x154>
    1484:	e51b3008 	ldr	r3, [fp, #-8]
    1488:	e50b300c 	str	r3, [fp, #-12]
    148c:	e51b3008 	ldr	r3, [fp, #-8]
    1490:	e5933000 	ldr	r3, [r3]
    1494:	e50b3008 	str	r3, [fp, #-8]
    1498:	eaffffc8 	b	13c0 <malloc+0x78>
    149c:	e1a00003 	mov	r0, r3
    14a0:	e24bd004 	sub	sp, fp, #4
    14a4:	e8bd8800 	pop	{fp, pc}
    14a8:	000015ec 	.word	0x000015ec
    14ac:	000015e4 	.word	0x000015e4

000014b0 <__udivsi3>:
    14b0:	e2512001 	subs	r2, r1, #1
    14b4:	012fff1e 	bxeq	lr
    14b8:	3a000036 	bcc	1598 <__udivsi3+0xe8>
    14bc:	e1500001 	cmp	r0, r1
    14c0:	9a000022 	bls	1550 <__udivsi3+0xa0>
    14c4:	e1110002 	tst	r1, r2
    14c8:	0a000023 	beq	155c <__udivsi3+0xac>
    14cc:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    14d0:	01a01181 	lsleq	r1, r1, #3
    14d4:	03a03008 	moveq	r3, #8
    14d8:	13a03001 	movne	r3, #1
    14dc:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    14e0:	31510000 	cmpcc	r1, r0
    14e4:	31a01201 	lslcc	r1, r1, #4
    14e8:	31a03203 	lslcc	r3, r3, #4
    14ec:	3afffffa 	bcc	14dc <__udivsi3+0x2c>
    14f0:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    14f4:	31510000 	cmpcc	r1, r0
    14f8:	31a01081 	lslcc	r1, r1, #1
    14fc:	31a03083 	lslcc	r3, r3, #1
    1500:	3afffffa 	bcc	14f0 <__udivsi3+0x40>
    1504:	e3a02000 	mov	r2, #0
    1508:	e1500001 	cmp	r0, r1
    150c:	20400001 	subcs	r0, r0, r1
    1510:	21822003 	orrcs	r2, r2, r3
    1514:	e15000a1 	cmp	r0, r1, lsr #1
    1518:	204000a1 	subcs	r0, r0, r1, lsr #1
    151c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1520:	e1500121 	cmp	r0, r1, lsr #2
    1524:	20400121 	subcs	r0, r0, r1, lsr #2
    1528:	21822123 	orrcs	r2, r2, r3, lsr #2
    152c:	e15001a1 	cmp	r0, r1, lsr #3
    1530:	204001a1 	subcs	r0, r0, r1, lsr #3
    1534:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1538:	e3500000 	cmp	r0, #0
    153c:	11b03223 	lsrsne	r3, r3, #4
    1540:	11a01221 	lsrne	r1, r1, #4
    1544:	1affffef 	bne	1508 <__udivsi3+0x58>
    1548:	e1a00002 	mov	r0, r2
    154c:	e12fff1e 	bx	lr
    1550:	03a00001 	moveq	r0, #1
    1554:	13a00000 	movne	r0, #0
    1558:	e12fff1e 	bx	lr
    155c:	e3510801 	cmp	r1, #65536	@ 0x10000
    1560:	21a01821 	lsrcs	r1, r1, #16
    1564:	23a02010 	movcs	r2, #16
    1568:	33a02000 	movcc	r2, #0
    156c:	e3510c01 	cmp	r1, #256	@ 0x100
    1570:	21a01421 	lsrcs	r1, r1, #8
    1574:	22822008 	addcs	r2, r2, #8
    1578:	e3510010 	cmp	r1, #16
    157c:	21a01221 	lsrcs	r1, r1, #4
    1580:	22822004 	addcs	r2, r2, #4
    1584:	e3510004 	cmp	r1, #4
    1588:	82822003 	addhi	r2, r2, #3
    158c:	908220a1 	addls	r2, r2, r1, lsr #1
    1590:	e1a00230 	lsr	r0, r0, r2
    1594:	e12fff1e 	bx	lr
    1598:	e3500000 	cmp	r0, #0
    159c:	13e00000 	mvnne	r0, #0
    15a0:	ea000007 	b	15c4 <__aeabi_idiv0>

000015a4 <__aeabi_uidivmod>:
    15a4:	e3510000 	cmp	r1, #0
    15a8:	0afffffa 	beq	1598 <__udivsi3+0xe8>
    15ac:	e92d4003 	push	{r0, r1, lr}
    15b0:	ebffffbe 	bl	14b0 <__udivsi3>
    15b4:	e8bd4006 	pop	{r1, r2, lr}
    15b8:	e0030092 	mul	r3, r2, r0
    15bc:	e0411003 	sub	r1, r1, r3
    15c0:	e12fff1e 	bx	lr

000015c4 <__aeabi_idiv0>:
    15c4:	e12fff1e 	bx	lr
