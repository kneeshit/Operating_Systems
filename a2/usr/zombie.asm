
_zombie:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	eb000141 	bl	514 <fork>
       c:	e1a03000 	mov	r3, r0
      10:	e3530000 	cmp	r3, #0
      14:	da000001 	ble	20 <main+0x20>
      18:	e3a00005 	mov	r0, #5
      1c:	eb0001e7 	bl	7c0 <sleep>
      20:	eb000144 	bl	538 <exit>

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
     318:	eb0000a1 	bl	5a4 <read>
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
     3c0:	eb0000a4 	bl	658 <open>
     3c4:	e50b0008 	str	r0, [fp, #-8]
     3c8:	e51b3008 	ldr	r3, [fp, #-8]
     3cc:	e3530000 	cmp	r3, #0
     3d0:	aa000001 	bge	3dc <stat+0x38>
     3d4:	e3e03000 	mvn	r3, #0
     3d8:	ea000006 	b	3f8 <stat+0x54>
     3dc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     3e0:	e51b0008 	ldr	r0, [fp, #-8]
     3e4:	eb0000b6 	bl	6c4 <fstat>
     3e8:	e50b000c 	str	r0, [fp, #-12]
     3ec:	e51b0008 	ldr	r0, [fp, #-8]
     3f0:	eb00007d 	bl	5ec <close>
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

00000514 <fork>:
     514:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     518:	e1a04003 	mov	r4, r3
     51c:	e1a03002 	mov	r3, r2
     520:	e1a02001 	mov	r2, r1
     524:	e1a01000 	mov	r1, r0
     528:	e3a00001 	mov	r0, #1
     52c:	ef000000 	svc	0x00000000
     530:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     534:	e12fff1e 	bx	lr

00000538 <exit>:
     538:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     53c:	e1a04003 	mov	r4, r3
     540:	e1a03002 	mov	r3, r2
     544:	e1a02001 	mov	r2, r1
     548:	e1a01000 	mov	r1, r0
     54c:	e3a00002 	mov	r0, #2
     550:	ef000000 	svc	0x00000000
     554:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     558:	e12fff1e 	bx	lr

0000055c <wait>:
     55c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     560:	e1a04003 	mov	r4, r3
     564:	e1a03002 	mov	r3, r2
     568:	e1a02001 	mov	r2, r1
     56c:	e1a01000 	mov	r1, r0
     570:	e3a00003 	mov	r0, #3
     574:	ef000000 	svc	0x00000000
     578:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     57c:	e12fff1e 	bx	lr

00000580 <pipe>:
     580:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     584:	e1a04003 	mov	r4, r3
     588:	e1a03002 	mov	r3, r2
     58c:	e1a02001 	mov	r2, r1
     590:	e1a01000 	mov	r1, r0
     594:	e3a00004 	mov	r0, #4
     598:	ef000000 	svc	0x00000000
     59c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5a0:	e12fff1e 	bx	lr

000005a4 <read>:
     5a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5a8:	e1a04003 	mov	r4, r3
     5ac:	e1a03002 	mov	r3, r2
     5b0:	e1a02001 	mov	r2, r1
     5b4:	e1a01000 	mov	r1, r0
     5b8:	e3a00005 	mov	r0, #5
     5bc:	ef000000 	svc	0x00000000
     5c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5c4:	e12fff1e 	bx	lr

000005c8 <write>:
     5c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5cc:	e1a04003 	mov	r4, r3
     5d0:	e1a03002 	mov	r3, r2
     5d4:	e1a02001 	mov	r2, r1
     5d8:	e1a01000 	mov	r1, r0
     5dc:	e3a00010 	mov	r0, #16
     5e0:	ef000000 	svc	0x00000000
     5e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5e8:	e12fff1e 	bx	lr

000005ec <close>:
     5ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5f0:	e1a04003 	mov	r4, r3
     5f4:	e1a03002 	mov	r3, r2
     5f8:	e1a02001 	mov	r2, r1
     5fc:	e1a01000 	mov	r1, r0
     600:	e3a00015 	mov	r0, #21
     604:	ef000000 	svc	0x00000000
     608:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     60c:	e12fff1e 	bx	lr

00000610 <kill>:
     610:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     614:	e1a04003 	mov	r4, r3
     618:	e1a03002 	mov	r3, r2
     61c:	e1a02001 	mov	r2, r1
     620:	e1a01000 	mov	r1, r0
     624:	e3a00006 	mov	r0, #6
     628:	ef000000 	svc	0x00000000
     62c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     630:	e12fff1e 	bx	lr

00000634 <exec>:
     634:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     638:	e1a04003 	mov	r4, r3
     63c:	e1a03002 	mov	r3, r2
     640:	e1a02001 	mov	r2, r1
     644:	e1a01000 	mov	r1, r0
     648:	e3a00007 	mov	r0, #7
     64c:	ef000000 	svc	0x00000000
     650:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     654:	e12fff1e 	bx	lr

00000658 <open>:
     658:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     65c:	e1a04003 	mov	r4, r3
     660:	e1a03002 	mov	r3, r2
     664:	e1a02001 	mov	r2, r1
     668:	e1a01000 	mov	r1, r0
     66c:	e3a0000f 	mov	r0, #15
     670:	ef000000 	svc	0x00000000
     674:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     678:	e12fff1e 	bx	lr

0000067c <mknod>:
     67c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     680:	e1a04003 	mov	r4, r3
     684:	e1a03002 	mov	r3, r2
     688:	e1a02001 	mov	r2, r1
     68c:	e1a01000 	mov	r1, r0
     690:	e3a00011 	mov	r0, #17
     694:	ef000000 	svc	0x00000000
     698:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     69c:	e12fff1e 	bx	lr

000006a0 <unlink>:
     6a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6a4:	e1a04003 	mov	r4, r3
     6a8:	e1a03002 	mov	r3, r2
     6ac:	e1a02001 	mov	r2, r1
     6b0:	e1a01000 	mov	r1, r0
     6b4:	e3a00012 	mov	r0, #18
     6b8:	ef000000 	svc	0x00000000
     6bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6c0:	e12fff1e 	bx	lr

000006c4 <fstat>:
     6c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6c8:	e1a04003 	mov	r4, r3
     6cc:	e1a03002 	mov	r3, r2
     6d0:	e1a02001 	mov	r2, r1
     6d4:	e1a01000 	mov	r1, r0
     6d8:	e3a00008 	mov	r0, #8
     6dc:	ef000000 	svc	0x00000000
     6e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6e4:	e12fff1e 	bx	lr

000006e8 <link>:
     6e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6ec:	e1a04003 	mov	r4, r3
     6f0:	e1a03002 	mov	r3, r2
     6f4:	e1a02001 	mov	r2, r1
     6f8:	e1a01000 	mov	r1, r0
     6fc:	e3a00013 	mov	r0, #19
     700:	ef000000 	svc	0x00000000
     704:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     708:	e12fff1e 	bx	lr

0000070c <mkdir>:
     70c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     710:	e1a04003 	mov	r4, r3
     714:	e1a03002 	mov	r3, r2
     718:	e1a02001 	mov	r2, r1
     71c:	e1a01000 	mov	r1, r0
     720:	e3a00014 	mov	r0, #20
     724:	ef000000 	svc	0x00000000
     728:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     72c:	e12fff1e 	bx	lr

00000730 <chdir>:
     730:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     734:	e1a04003 	mov	r4, r3
     738:	e1a03002 	mov	r3, r2
     73c:	e1a02001 	mov	r2, r1
     740:	e1a01000 	mov	r1, r0
     744:	e3a00009 	mov	r0, #9
     748:	ef000000 	svc	0x00000000
     74c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     750:	e12fff1e 	bx	lr

00000754 <dup>:
     754:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     758:	e1a04003 	mov	r4, r3
     75c:	e1a03002 	mov	r3, r2
     760:	e1a02001 	mov	r2, r1
     764:	e1a01000 	mov	r1, r0
     768:	e3a0000a 	mov	r0, #10
     76c:	ef000000 	svc	0x00000000
     770:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     774:	e12fff1e 	bx	lr

00000778 <getpid>:
     778:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     77c:	e1a04003 	mov	r4, r3
     780:	e1a03002 	mov	r3, r2
     784:	e1a02001 	mov	r2, r1
     788:	e1a01000 	mov	r1, r0
     78c:	e3a0000b 	mov	r0, #11
     790:	ef000000 	svc	0x00000000
     794:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     798:	e12fff1e 	bx	lr

0000079c <sbrk>:
     79c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7a0:	e1a04003 	mov	r4, r3
     7a4:	e1a03002 	mov	r3, r2
     7a8:	e1a02001 	mov	r2, r1
     7ac:	e1a01000 	mov	r1, r0
     7b0:	e3a0000c 	mov	r0, #12
     7b4:	ef000000 	svc	0x00000000
     7b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7bc:	e12fff1e 	bx	lr

000007c0 <sleep>:
     7c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7c4:	e1a04003 	mov	r4, r3
     7c8:	e1a03002 	mov	r3, r2
     7cc:	e1a02001 	mov	r2, r1
     7d0:	e1a01000 	mov	r1, r0
     7d4:	e3a0000d 	mov	r0, #13
     7d8:	ef000000 	svc	0x00000000
     7dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7e0:	e12fff1e 	bx	lr

000007e4 <uptime>:
     7e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7e8:	e1a04003 	mov	r4, r3
     7ec:	e1a03002 	mov	r3, r2
     7f0:	e1a02001 	mov	r2, r1
     7f4:	e1a01000 	mov	r1, r0
     7f8:	e3a0000e 	mov	r0, #14
     7fc:	ef000000 	svc	0x00000000
     800:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     804:	e12fff1e 	bx	lr

00000808 <getprocs>:
     808:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     80c:	e1a04003 	mov	r4, r3
     810:	e1a03002 	mov	r3, r2
     814:	e1a02001 	mov	r2, r1
     818:	e1a01000 	mov	r1, r0
     81c:	e3a00016 	mov	r0, #22
     820:	ef000000 	svc	0x00000000
     824:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     828:	e12fff1e 	bx	lr

0000082c <settickets>:
     82c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     830:	e1a04003 	mov	r4, r3
     834:	e1a03002 	mov	r3, r2
     838:	e1a02001 	mov	r2, r1
     83c:	e1a01000 	mov	r1, r0
     840:	e3a00017 	mov	r0, #23
     844:	ef000000 	svc	0x00000000
     848:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     84c:	e12fff1e 	bx	lr

00000850 <srand>:
     850:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     854:	e1a04003 	mov	r4, r3
     858:	e1a03002 	mov	r3, r2
     85c:	e1a02001 	mov	r2, r1
     860:	e1a01000 	mov	r1, r0
     864:	e3a00018 	mov	r0, #24
     868:	ef000000 	svc	0x00000000
     86c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     870:	e12fff1e 	bx	lr

00000874 <getpinfo>:
     874:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     878:	e1a04003 	mov	r4, r3
     87c:	e1a03002 	mov	r3, r2
     880:	e1a02001 	mov	r2, r1
     884:	e1a01000 	mov	r1, r0
     888:	e3a00019 	mov	r0, #25
     88c:	ef000000 	svc	0x00000000
     890:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     894:	e12fff1e 	bx	lr

00000898 <putc>:
     898:	e92d4800 	push	{fp, lr}
     89c:	e28db004 	add	fp, sp, #4
     8a0:	e24dd008 	sub	sp, sp, #8
     8a4:	e50b0008 	str	r0, [fp, #-8]
     8a8:	e1a03001 	mov	r3, r1
     8ac:	e54b3009 	strb	r3, [fp, #-9]
     8b0:	e24b3009 	sub	r3, fp, #9
     8b4:	e3a02001 	mov	r2, #1
     8b8:	e1a01003 	mov	r1, r3
     8bc:	e51b0008 	ldr	r0, [fp, #-8]
     8c0:	ebffff40 	bl	5c8 <write>
     8c4:	e1a00000 	nop			@ (mov r0, r0)
     8c8:	e24bd004 	sub	sp, fp, #4
     8cc:	e8bd8800 	pop	{fp, pc}

000008d0 <printint>:
     8d0:	e92d4800 	push	{fp, lr}
     8d4:	e28db004 	add	fp, sp, #4
     8d8:	e24dd030 	sub	sp, sp, #48	@ 0x30
     8dc:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     8e0:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     8e4:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     8e8:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     8ec:	e3a03000 	mov	r3, #0
     8f0:	e50b300c 	str	r3, [fp, #-12]
     8f4:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     8f8:	e3530000 	cmp	r3, #0
     8fc:	0a000008 	beq	924 <printint+0x54>
     900:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     904:	e3530000 	cmp	r3, #0
     908:	aa000005 	bge	924 <printint+0x54>
     90c:	e3a03001 	mov	r3, #1
     910:	e50b300c 	str	r3, [fp, #-12]
     914:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     918:	e2633000 	rsb	r3, r3, #0
     91c:	e50b3010 	str	r3, [fp, #-16]
     920:	ea000001 	b	92c <printint+0x5c>
     924:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     928:	e50b3010 	str	r3, [fp, #-16]
     92c:	e3a03000 	mov	r3, #0
     930:	e50b3008 	str	r3, [fp, #-8]
     934:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     938:	e51b3010 	ldr	r3, [fp, #-16]
     93c:	e1a01002 	mov	r1, r2
     940:	e1a00003 	mov	r0, r3
     944:	eb0001d5 	bl	10a0 <__aeabi_uidivmod>
     948:	e1a03001 	mov	r3, r1
     94c:	e1a01003 	mov	r1, r3
     950:	e51b3008 	ldr	r3, [fp, #-8]
     954:	e2832001 	add	r2, r3, #1
     958:	e50b2008 	str	r2, [fp, #-8]
     95c:	e59f20a0 	ldr	r2, [pc, #160]	@ a04 <printint+0x134>
     960:	e7d22001 	ldrb	r2, [r2, r1]
     964:	e2433004 	sub	r3, r3, #4
     968:	e083300b 	add	r3, r3, fp
     96c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     970:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     974:	e1a01003 	mov	r1, r3
     978:	e51b0010 	ldr	r0, [fp, #-16]
     97c:	eb00018a 	bl	fac <__udivsi3>
     980:	e1a03000 	mov	r3, r0
     984:	e50b3010 	str	r3, [fp, #-16]
     988:	e51b3010 	ldr	r3, [fp, #-16]
     98c:	e3530000 	cmp	r3, #0
     990:	1affffe7 	bne	934 <printint+0x64>
     994:	e51b300c 	ldr	r3, [fp, #-12]
     998:	e3530000 	cmp	r3, #0
     99c:	0a00000e 	beq	9dc <printint+0x10c>
     9a0:	e51b3008 	ldr	r3, [fp, #-8]
     9a4:	e2832001 	add	r2, r3, #1
     9a8:	e50b2008 	str	r2, [fp, #-8]
     9ac:	e2433004 	sub	r3, r3, #4
     9b0:	e083300b 	add	r3, r3, fp
     9b4:	e3a0202d 	mov	r2, #45	@ 0x2d
     9b8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     9bc:	ea000006 	b	9dc <printint+0x10c>
     9c0:	e24b2020 	sub	r2, fp, #32
     9c4:	e51b3008 	ldr	r3, [fp, #-8]
     9c8:	e0823003 	add	r3, r2, r3
     9cc:	e5d33000 	ldrb	r3, [r3]
     9d0:	e1a01003 	mov	r1, r3
     9d4:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     9d8:	ebffffae 	bl	898 <putc>
     9dc:	e51b3008 	ldr	r3, [fp, #-8]
     9e0:	e2433001 	sub	r3, r3, #1
     9e4:	e50b3008 	str	r3, [fp, #-8]
     9e8:	e51b3008 	ldr	r3, [fp, #-8]
     9ec:	e3530000 	cmp	r3, #0
     9f0:	aafffff2 	bge	9c0 <printint+0xf0>
     9f4:	e1a00000 	nop			@ (mov r0, r0)
     9f8:	e1a00000 	nop			@ (mov r0, r0)
     9fc:	e24bd004 	sub	sp, fp, #4
     a00:	e8bd8800 	pop	{fp, pc}
     a04:	000010cc 	.word	0x000010cc

00000a08 <printf>:
     a08:	e92d000e 	push	{r1, r2, r3}
     a0c:	e92d4800 	push	{fp, lr}
     a10:	e28db004 	add	fp, sp, #4
     a14:	e24dd024 	sub	sp, sp, #36	@ 0x24
     a18:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     a1c:	e3a03000 	mov	r3, #0
     a20:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a24:	e28b3008 	add	r3, fp, #8
     a28:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a2c:	e3a03000 	mov	r3, #0
     a30:	e50b3010 	str	r3, [fp, #-16]
     a34:	ea000074 	b	c0c <printf+0x204>
     a38:	e59b2004 	ldr	r2, [fp, #4]
     a3c:	e51b3010 	ldr	r3, [fp, #-16]
     a40:	e0823003 	add	r3, r2, r3
     a44:	e5d33000 	ldrb	r3, [r3]
     a48:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     a4c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a50:	e3530000 	cmp	r3, #0
     a54:	1a00000b 	bne	a88 <printf+0x80>
     a58:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a5c:	e3530025 	cmp	r3, #37	@ 0x25
     a60:	1a000002 	bne	a70 <printf+0x68>
     a64:	e3a03025 	mov	r3, #37	@ 0x25
     a68:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a6c:	ea000063 	b	c00 <printf+0x1f8>
     a70:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a74:	e6ef3073 	uxtb	r3, r3
     a78:	e1a01003 	mov	r1, r3
     a7c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     a80:	ebffff84 	bl	898 <putc>
     a84:	ea00005d 	b	c00 <printf+0x1f8>
     a88:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a8c:	e3530025 	cmp	r3, #37	@ 0x25
     a90:	1a00005a 	bne	c00 <printf+0x1f8>
     a94:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a98:	e3530064 	cmp	r3, #100	@ 0x64
     a9c:	1a00000a 	bne	acc <printf+0xc4>
     aa0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     aa4:	e5933000 	ldr	r3, [r3]
     aa8:	e1a01003 	mov	r1, r3
     aac:	e3a03001 	mov	r3, #1
     ab0:	e3a0200a 	mov	r2, #10
     ab4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ab8:	ebffff84 	bl	8d0 <printint>
     abc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ac0:	e2833004 	add	r3, r3, #4
     ac4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ac8:	ea00004a 	b	bf8 <printf+0x1f0>
     acc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ad0:	e3530078 	cmp	r3, #120	@ 0x78
     ad4:	0a000002 	beq	ae4 <printf+0xdc>
     ad8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     adc:	e3530070 	cmp	r3, #112	@ 0x70
     ae0:	1a00000a 	bne	b10 <printf+0x108>
     ae4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ae8:	e5933000 	ldr	r3, [r3]
     aec:	e1a01003 	mov	r1, r3
     af0:	e3a03000 	mov	r3, #0
     af4:	e3a02010 	mov	r2, #16
     af8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     afc:	ebffff73 	bl	8d0 <printint>
     b00:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b04:	e2833004 	add	r3, r3, #4
     b08:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b0c:	ea000039 	b	bf8 <printf+0x1f0>
     b10:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b14:	e3530073 	cmp	r3, #115	@ 0x73
     b18:	1a000018 	bne	b80 <printf+0x178>
     b1c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b20:	e5933000 	ldr	r3, [r3]
     b24:	e50b300c 	str	r3, [fp, #-12]
     b28:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b2c:	e2833004 	add	r3, r3, #4
     b30:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b34:	e51b300c 	ldr	r3, [fp, #-12]
     b38:	e3530000 	cmp	r3, #0
     b3c:	1a00000a 	bne	b6c <printf+0x164>
     b40:	e59f30f4 	ldr	r3, [pc, #244]	@ c3c <printf+0x234>
     b44:	e50b300c 	str	r3, [fp, #-12]
     b48:	ea000007 	b	b6c <printf+0x164>
     b4c:	e51b300c 	ldr	r3, [fp, #-12]
     b50:	e5d33000 	ldrb	r3, [r3]
     b54:	e1a01003 	mov	r1, r3
     b58:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b5c:	ebffff4d 	bl	898 <putc>
     b60:	e51b300c 	ldr	r3, [fp, #-12]
     b64:	e2833001 	add	r3, r3, #1
     b68:	e50b300c 	str	r3, [fp, #-12]
     b6c:	e51b300c 	ldr	r3, [fp, #-12]
     b70:	e5d33000 	ldrb	r3, [r3]
     b74:	e3530000 	cmp	r3, #0
     b78:	1afffff3 	bne	b4c <printf+0x144>
     b7c:	ea00001d 	b	bf8 <printf+0x1f0>
     b80:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b84:	e3530063 	cmp	r3, #99	@ 0x63
     b88:	1a000009 	bne	bb4 <printf+0x1ac>
     b8c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b90:	e5933000 	ldr	r3, [r3]
     b94:	e6ef3073 	uxtb	r3, r3
     b98:	e1a01003 	mov	r1, r3
     b9c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ba0:	ebffff3c 	bl	898 <putc>
     ba4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ba8:	e2833004 	add	r3, r3, #4
     bac:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bb0:	ea000010 	b	bf8 <printf+0x1f0>
     bb4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bb8:	e3530025 	cmp	r3, #37	@ 0x25
     bbc:	1a000005 	bne	bd8 <printf+0x1d0>
     bc0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bc4:	e6ef3073 	uxtb	r3, r3
     bc8:	e1a01003 	mov	r1, r3
     bcc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bd0:	ebffff30 	bl	898 <putc>
     bd4:	ea000007 	b	bf8 <printf+0x1f0>
     bd8:	e3a01025 	mov	r1, #37	@ 0x25
     bdc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     be0:	ebffff2c 	bl	898 <putc>
     be4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     be8:	e6ef3073 	uxtb	r3, r3
     bec:	e1a01003 	mov	r1, r3
     bf0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bf4:	ebffff27 	bl	898 <putc>
     bf8:	e3a03000 	mov	r3, #0
     bfc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c00:	e51b3010 	ldr	r3, [fp, #-16]
     c04:	e2833001 	add	r3, r3, #1
     c08:	e50b3010 	str	r3, [fp, #-16]
     c0c:	e59b2004 	ldr	r2, [fp, #4]
     c10:	e51b3010 	ldr	r3, [fp, #-16]
     c14:	e0823003 	add	r3, r2, r3
     c18:	e5d33000 	ldrb	r3, [r3]
     c1c:	e3530000 	cmp	r3, #0
     c20:	1affff84 	bne	a38 <printf+0x30>
     c24:	e1a00000 	nop			@ (mov r0, r0)
     c28:	e1a00000 	nop			@ (mov r0, r0)
     c2c:	e24bd004 	sub	sp, fp, #4
     c30:	e8bd4800 	pop	{fp, lr}
     c34:	e28dd00c 	add	sp, sp, #12
     c38:	e12fff1e 	bx	lr
     c3c:	000010c4 	.word	0x000010c4

00000c40 <free>:
     c40:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     c44:	e28db000 	add	fp, sp, #0
     c48:	e24dd014 	sub	sp, sp, #20
     c4c:	e50b0010 	str	r0, [fp, #-16]
     c50:	e51b3010 	ldr	r3, [fp, #-16]
     c54:	e2433008 	sub	r3, r3, #8
     c58:	e50b300c 	str	r3, [fp, #-12]
     c5c:	e59f3154 	ldr	r3, [pc, #340]	@ db8 <free+0x178>
     c60:	e5933000 	ldr	r3, [r3]
     c64:	e50b3008 	str	r3, [fp, #-8]
     c68:	ea000010 	b	cb0 <free+0x70>
     c6c:	e51b3008 	ldr	r3, [fp, #-8]
     c70:	e5933000 	ldr	r3, [r3]
     c74:	e51b2008 	ldr	r2, [fp, #-8]
     c78:	e1520003 	cmp	r2, r3
     c7c:	3a000008 	bcc	ca4 <free+0x64>
     c80:	e51b200c 	ldr	r2, [fp, #-12]
     c84:	e51b3008 	ldr	r3, [fp, #-8]
     c88:	e1520003 	cmp	r2, r3
     c8c:	8a000010 	bhi	cd4 <free+0x94>
     c90:	e51b3008 	ldr	r3, [fp, #-8]
     c94:	e5933000 	ldr	r3, [r3]
     c98:	e51b200c 	ldr	r2, [fp, #-12]
     c9c:	e1520003 	cmp	r2, r3
     ca0:	3a00000b 	bcc	cd4 <free+0x94>
     ca4:	e51b3008 	ldr	r3, [fp, #-8]
     ca8:	e5933000 	ldr	r3, [r3]
     cac:	e50b3008 	str	r3, [fp, #-8]
     cb0:	e51b200c 	ldr	r2, [fp, #-12]
     cb4:	e51b3008 	ldr	r3, [fp, #-8]
     cb8:	e1520003 	cmp	r2, r3
     cbc:	9affffea 	bls	c6c <free+0x2c>
     cc0:	e51b3008 	ldr	r3, [fp, #-8]
     cc4:	e5933000 	ldr	r3, [r3]
     cc8:	e51b200c 	ldr	r2, [fp, #-12]
     ccc:	e1520003 	cmp	r2, r3
     cd0:	2affffe5 	bcs	c6c <free+0x2c>
     cd4:	e51b300c 	ldr	r3, [fp, #-12]
     cd8:	e5933004 	ldr	r3, [r3, #4]
     cdc:	e1a03183 	lsl	r3, r3, #3
     ce0:	e51b200c 	ldr	r2, [fp, #-12]
     ce4:	e0822003 	add	r2, r2, r3
     ce8:	e51b3008 	ldr	r3, [fp, #-8]
     cec:	e5933000 	ldr	r3, [r3]
     cf0:	e1520003 	cmp	r2, r3
     cf4:	1a00000d 	bne	d30 <free+0xf0>
     cf8:	e51b300c 	ldr	r3, [fp, #-12]
     cfc:	e5932004 	ldr	r2, [r3, #4]
     d00:	e51b3008 	ldr	r3, [fp, #-8]
     d04:	e5933000 	ldr	r3, [r3]
     d08:	e5933004 	ldr	r3, [r3, #4]
     d0c:	e0822003 	add	r2, r2, r3
     d10:	e51b300c 	ldr	r3, [fp, #-12]
     d14:	e5832004 	str	r2, [r3, #4]
     d18:	e51b3008 	ldr	r3, [fp, #-8]
     d1c:	e5933000 	ldr	r3, [r3]
     d20:	e5932000 	ldr	r2, [r3]
     d24:	e51b300c 	ldr	r3, [fp, #-12]
     d28:	e5832000 	str	r2, [r3]
     d2c:	ea000003 	b	d40 <free+0x100>
     d30:	e51b3008 	ldr	r3, [fp, #-8]
     d34:	e5932000 	ldr	r2, [r3]
     d38:	e51b300c 	ldr	r3, [fp, #-12]
     d3c:	e5832000 	str	r2, [r3]
     d40:	e51b3008 	ldr	r3, [fp, #-8]
     d44:	e5933004 	ldr	r3, [r3, #4]
     d48:	e1a03183 	lsl	r3, r3, #3
     d4c:	e51b2008 	ldr	r2, [fp, #-8]
     d50:	e0823003 	add	r3, r2, r3
     d54:	e51b200c 	ldr	r2, [fp, #-12]
     d58:	e1520003 	cmp	r2, r3
     d5c:	1a00000b 	bne	d90 <free+0x150>
     d60:	e51b3008 	ldr	r3, [fp, #-8]
     d64:	e5932004 	ldr	r2, [r3, #4]
     d68:	e51b300c 	ldr	r3, [fp, #-12]
     d6c:	e5933004 	ldr	r3, [r3, #4]
     d70:	e0822003 	add	r2, r2, r3
     d74:	e51b3008 	ldr	r3, [fp, #-8]
     d78:	e5832004 	str	r2, [r3, #4]
     d7c:	e51b300c 	ldr	r3, [fp, #-12]
     d80:	e5932000 	ldr	r2, [r3]
     d84:	e51b3008 	ldr	r3, [fp, #-8]
     d88:	e5832000 	str	r2, [r3]
     d8c:	ea000002 	b	d9c <free+0x15c>
     d90:	e51b3008 	ldr	r3, [fp, #-8]
     d94:	e51b200c 	ldr	r2, [fp, #-12]
     d98:	e5832000 	str	r2, [r3]
     d9c:	e59f2014 	ldr	r2, [pc, #20]	@ db8 <free+0x178>
     da0:	e51b3008 	ldr	r3, [fp, #-8]
     da4:	e5823000 	str	r3, [r2]
     da8:	e1a00000 	nop			@ (mov r0, r0)
     dac:	e28bd000 	add	sp, fp, #0
     db0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     db4:	e12fff1e 	bx	lr
     db8:	000010e8 	.word	0x000010e8

00000dbc <morecore>:
     dbc:	e92d4800 	push	{fp, lr}
     dc0:	e28db004 	add	fp, sp, #4
     dc4:	e24dd010 	sub	sp, sp, #16
     dc8:	e50b0010 	str	r0, [fp, #-16]
     dcc:	e51b3010 	ldr	r3, [fp, #-16]
     dd0:	e3530a01 	cmp	r3, #4096	@ 0x1000
     dd4:	2a000001 	bcs	de0 <morecore+0x24>
     dd8:	e3a03a01 	mov	r3, #4096	@ 0x1000
     ddc:	e50b3010 	str	r3, [fp, #-16]
     de0:	e51b3010 	ldr	r3, [fp, #-16]
     de4:	e1a03183 	lsl	r3, r3, #3
     de8:	e1a00003 	mov	r0, r3
     dec:	ebfffe6a 	bl	79c <sbrk>
     df0:	e50b0008 	str	r0, [fp, #-8]
     df4:	e51b3008 	ldr	r3, [fp, #-8]
     df8:	e3730001 	cmn	r3, #1
     dfc:	1a000001 	bne	e08 <morecore+0x4c>
     e00:	e3a03000 	mov	r3, #0
     e04:	ea00000a 	b	e34 <morecore+0x78>
     e08:	e51b3008 	ldr	r3, [fp, #-8]
     e0c:	e50b300c 	str	r3, [fp, #-12]
     e10:	e51b300c 	ldr	r3, [fp, #-12]
     e14:	e51b2010 	ldr	r2, [fp, #-16]
     e18:	e5832004 	str	r2, [r3, #4]
     e1c:	e51b300c 	ldr	r3, [fp, #-12]
     e20:	e2833008 	add	r3, r3, #8
     e24:	e1a00003 	mov	r0, r3
     e28:	ebffff84 	bl	c40 <free>
     e2c:	e59f300c 	ldr	r3, [pc, #12]	@ e40 <morecore+0x84>
     e30:	e5933000 	ldr	r3, [r3]
     e34:	e1a00003 	mov	r0, r3
     e38:	e24bd004 	sub	sp, fp, #4
     e3c:	e8bd8800 	pop	{fp, pc}
     e40:	000010e8 	.word	0x000010e8

00000e44 <malloc>:
     e44:	e92d4800 	push	{fp, lr}
     e48:	e28db004 	add	fp, sp, #4
     e4c:	e24dd018 	sub	sp, sp, #24
     e50:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     e54:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e58:	e2833007 	add	r3, r3, #7
     e5c:	e1a031a3 	lsr	r3, r3, #3
     e60:	e2833001 	add	r3, r3, #1
     e64:	e50b3010 	str	r3, [fp, #-16]
     e68:	e59f3134 	ldr	r3, [pc, #308]	@ fa4 <malloc+0x160>
     e6c:	e5933000 	ldr	r3, [r3]
     e70:	e50b300c 	str	r3, [fp, #-12]
     e74:	e51b300c 	ldr	r3, [fp, #-12]
     e78:	e3530000 	cmp	r3, #0
     e7c:	1a00000b 	bne	eb0 <malloc+0x6c>
     e80:	e59f3120 	ldr	r3, [pc, #288]	@ fa8 <malloc+0x164>
     e84:	e50b300c 	str	r3, [fp, #-12]
     e88:	e59f2114 	ldr	r2, [pc, #276]	@ fa4 <malloc+0x160>
     e8c:	e51b300c 	ldr	r3, [fp, #-12]
     e90:	e5823000 	str	r3, [r2]
     e94:	e59f3108 	ldr	r3, [pc, #264]	@ fa4 <malloc+0x160>
     e98:	e5933000 	ldr	r3, [r3]
     e9c:	e59f2104 	ldr	r2, [pc, #260]	@ fa8 <malloc+0x164>
     ea0:	e5823000 	str	r3, [r2]
     ea4:	e59f30fc 	ldr	r3, [pc, #252]	@ fa8 <malloc+0x164>
     ea8:	e3a02000 	mov	r2, #0
     eac:	e5832004 	str	r2, [r3, #4]
     eb0:	e51b300c 	ldr	r3, [fp, #-12]
     eb4:	e5933000 	ldr	r3, [r3]
     eb8:	e50b3008 	str	r3, [fp, #-8]
     ebc:	e51b3008 	ldr	r3, [fp, #-8]
     ec0:	e5933004 	ldr	r3, [r3, #4]
     ec4:	e51b2010 	ldr	r2, [fp, #-16]
     ec8:	e1520003 	cmp	r2, r3
     ecc:	8a00001e 	bhi	f4c <malloc+0x108>
     ed0:	e51b3008 	ldr	r3, [fp, #-8]
     ed4:	e5933004 	ldr	r3, [r3, #4]
     ed8:	e51b2010 	ldr	r2, [fp, #-16]
     edc:	e1520003 	cmp	r2, r3
     ee0:	1a000004 	bne	ef8 <malloc+0xb4>
     ee4:	e51b3008 	ldr	r3, [fp, #-8]
     ee8:	e5932000 	ldr	r2, [r3]
     eec:	e51b300c 	ldr	r3, [fp, #-12]
     ef0:	e5832000 	str	r2, [r3]
     ef4:	ea00000e 	b	f34 <malloc+0xf0>
     ef8:	e51b3008 	ldr	r3, [fp, #-8]
     efc:	e5932004 	ldr	r2, [r3, #4]
     f00:	e51b3010 	ldr	r3, [fp, #-16]
     f04:	e0422003 	sub	r2, r2, r3
     f08:	e51b3008 	ldr	r3, [fp, #-8]
     f0c:	e5832004 	str	r2, [r3, #4]
     f10:	e51b3008 	ldr	r3, [fp, #-8]
     f14:	e5933004 	ldr	r3, [r3, #4]
     f18:	e1a03183 	lsl	r3, r3, #3
     f1c:	e51b2008 	ldr	r2, [fp, #-8]
     f20:	e0823003 	add	r3, r2, r3
     f24:	e50b3008 	str	r3, [fp, #-8]
     f28:	e51b3008 	ldr	r3, [fp, #-8]
     f2c:	e51b2010 	ldr	r2, [fp, #-16]
     f30:	e5832004 	str	r2, [r3, #4]
     f34:	e59f2068 	ldr	r2, [pc, #104]	@ fa4 <malloc+0x160>
     f38:	e51b300c 	ldr	r3, [fp, #-12]
     f3c:	e5823000 	str	r3, [r2]
     f40:	e51b3008 	ldr	r3, [fp, #-8]
     f44:	e2833008 	add	r3, r3, #8
     f48:	ea000012 	b	f98 <malloc+0x154>
     f4c:	e59f3050 	ldr	r3, [pc, #80]	@ fa4 <malloc+0x160>
     f50:	e5933000 	ldr	r3, [r3]
     f54:	e51b2008 	ldr	r2, [fp, #-8]
     f58:	e1520003 	cmp	r2, r3
     f5c:	1a000007 	bne	f80 <malloc+0x13c>
     f60:	e51b0010 	ldr	r0, [fp, #-16]
     f64:	ebffff94 	bl	dbc <morecore>
     f68:	e50b0008 	str	r0, [fp, #-8]
     f6c:	e51b3008 	ldr	r3, [fp, #-8]
     f70:	e3530000 	cmp	r3, #0
     f74:	1a000001 	bne	f80 <malloc+0x13c>
     f78:	e3a03000 	mov	r3, #0
     f7c:	ea000005 	b	f98 <malloc+0x154>
     f80:	e51b3008 	ldr	r3, [fp, #-8]
     f84:	e50b300c 	str	r3, [fp, #-12]
     f88:	e51b3008 	ldr	r3, [fp, #-8]
     f8c:	e5933000 	ldr	r3, [r3]
     f90:	e50b3008 	str	r3, [fp, #-8]
     f94:	eaffffc8 	b	ebc <malloc+0x78>
     f98:	e1a00003 	mov	r0, r3
     f9c:	e24bd004 	sub	sp, fp, #4
     fa0:	e8bd8800 	pop	{fp, pc}
     fa4:	000010e8 	.word	0x000010e8
     fa8:	000010e0 	.word	0x000010e0

00000fac <__udivsi3>:
     fac:	e2512001 	subs	r2, r1, #1
     fb0:	012fff1e 	bxeq	lr
     fb4:	3a000036 	bcc	1094 <__udivsi3+0xe8>
     fb8:	e1500001 	cmp	r0, r1
     fbc:	9a000022 	bls	104c <__udivsi3+0xa0>
     fc0:	e1110002 	tst	r1, r2
     fc4:	0a000023 	beq	1058 <__udivsi3+0xac>
     fc8:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
     fcc:	01a01181 	lsleq	r1, r1, #3
     fd0:	03a03008 	moveq	r3, #8
     fd4:	13a03001 	movne	r3, #1
     fd8:	e3510201 	cmp	r1, #268435456	@ 0x10000000
     fdc:	31510000 	cmpcc	r1, r0
     fe0:	31a01201 	lslcc	r1, r1, #4
     fe4:	31a03203 	lslcc	r3, r3, #4
     fe8:	3afffffa 	bcc	fd8 <__udivsi3+0x2c>
     fec:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
     ff0:	31510000 	cmpcc	r1, r0
     ff4:	31a01081 	lslcc	r1, r1, #1
     ff8:	31a03083 	lslcc	r3, r3, #1
     ffc:	3afffffa 	bcc	fec <__udivsi3+0x40>
    1000:	e3a02000 	mov	r2, #0
    1004:	e1500001 	cmp	r0, r1
    1008:	20400001 	subcs	r0, r0, r1
    100c:	21822003 	orrcs	r2, r2, r3
    1010:	e15000a1 	cmp	r0, r1, lsr #1
    1014:	204000a1 	subcs	r0, r0, r1, lsr #1
    1018:	218220a3 	orrcs	r2, r2, r3, lsr #1
    101c:	e1500121 	cmp	r0, r1, lsr #2
    1020:	20400121 	subcs	r0, r0, r1, lsr #2
    1024:	21822123 	orrcs	r2, r2, r3, lsr #2
    1028:	e15001a1 	cmp	r0, r1, lsr #3
    102c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1030:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1034:	e3500000 	cmp	r0, #0
    1038:	11b03223 	lsrsne	r3, r3, #4
    103c:	11a01221 	lsrne	r1, r1, #4
    1040:	1affffef 	bne	1004 <__udivsi3+0x58>
    1044:	e1a00002 	mov	r0, r2
    1048:	e12fff1e 	bx	lr
    104c:	03a00001 	moveq	r0, #1
    1050:	13a00000 	movne	r0, #0
    1054:	e12fff1e 	bx	lr
    1058:	e3510801 	cmp	r1, #65536	@ 0x10000
    105c:	21a01821 	lsrcs	r1, r1, #16
    1060:	23a02010 	movcs	r2, #16
    1064:	33a02000 	movcc	r2, #0
    1068:	e3510c01 	cmp	r1, #256	@ 0x100
    106c:	21a01421 	lsrcs	r1, r1, #8
    1070:	22822008 	addcs	r2, r2, #8
    1074:	e3510010 	cmp	r1, #16
    1078:	21a01221 	lsrcs	r1, r1, #4
    107c:	22822004 	addcs	r2, r2, #4
    1080:	e3510004 	cmp	r1, #4
    1084:	82822003 	addhi	r2, r2, #3
    1088:	908220a1 	addls	r2, r2, r1, lsr #1
    108c:	e1a00230 	lsr	r0, r0, r2
    1090:	e12fff1e 	bx	lr
    1094:	e3500000 	cmp	r0, #0
    1098:	13e00000 	mvnne	r0, #0
    109c:	ea000007 	b	10c0 <__aeabi_idiv0>

000010a0 <__aeabi_uidivmod>:
    10a0:	e3510000 	cmp	r1, #0
    10a4:	0afffffa 	beq	1094 <__udivsi3+0xe8>
    10a8:	e92d4003 	push	{r0, r1, lr}
    10ac:	ebffffbe 	bl	fac <__udivsi3>
    10b0:	e8bd4006 	pop	{r1, r2, lr}
    10b4:	e0030092 	mul	r3, r2, r0
    10b8:	e0411003 	sub	r1, r1, r3
    10bc:	e12fff1e 	bx	lr

000010c0 <__aeabi_idiv0>:
    10c0:	e12fff1e 	bx	lr
