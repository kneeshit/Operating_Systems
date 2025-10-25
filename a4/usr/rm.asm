
_rm:     file format elf32-littlearm


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
      28:	eb0003a2 	bl	eb8 <printf>
      2c:	eb00020a 	bl	85c <exit>
      30:	e3a03001 	mov	r3, #1
      34:	e50b3008 	str	r3, [fp, #-8]
      38:	ea000016 	b	98 <main+0x98>
      3c:	e51b3008 	ldr	r3, [fp, #-8]
      40:	e1a03103 	lsl	r3, r3, #2
      44:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      48:	e0823003 	add	r3, r2, r3
      4c:	e5933000 	ldr	r3, [r3]
      50:	e1a00003 	mov	r0, r3
      54:	eb00025a 	bl	9c4 <unlink>
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
      84:	eb00038b 	bl	eb8 <printf>
      88:	ea000006 	b	a8 <main+0xa8>
      8c:	e51b3008 	ldr	r3, [fp, #-8]
      90:	e2833001 	add	r3, r3, #1
      94:	e50b3008 	str	r3, [fp, #-8]
      98:	e51b2008 	ldr	r2, [fp, #-8]
      9c:	e51b3010 	ldr	r3, [fp, #-16]
      a0:	e1520003 	cmp	r2, r3
      a4:	baffffe4 	blt	3c <main+0x3c>
      a8:	eb0001eb 	bl	85c <exit>
      ac:	00001574 	.word	0x00001574
      b0:	00001588 	.word	0x00001588

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
     3a8:	eb000146 	bl	8c8 <read>
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
     450:	eb000149 	bl	97c <open>
     454:	e50b0008 	str	r0, [fp, #-8]
     458:	e51b3008 	ldr	r3, [fp, #-8]
     45c:	e3530000 	cmp	r3, #0
     460:	aa000001 	bge	46c <stat+0x38>
     464:	e3e03000 	mvn	r3, #0
     468:	ea000006 	b	488 <stat+0x54>
     46c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     470:	e51b0008 	ldr	r0, [fp, #-8]
     474:	eb00015b 	bl	9e8 <fstat>
     478:	e50b000c 	str	r0, [fp, #-12]
     47c:	e51b0008 	ldr	r0, [fp, #-8]
     480:	eb000122 	bl	910 <close>
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

000005a4 <initiateLock>:
     5a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5a8:	e28db000 	add	fp, sp, #0
     5ac:	e24dd00c 	sub	sp, sp, #12
     5b0:	e50b0008 	str	r0, [fp, #-8]
     5b4:	e51b3008 	ldr	r3, [fp, #-8]
     5b8:	e3a02000 	mov	r2, #0
     5bc:	e5832000 	str	r2, [r3]
     5c0:	e51b3008 	ldr	r3, [fp, #-8]
     5c4:	e3a02001 	mov	r2, #1
     5c8:	e5832004 	str	r2, [r3, #4]
     5cc:	e1a00000 	nop			@ (mov r0, r0)
     5d0:	e28bd000 	add	sp, fp, #0
     5d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5d8:	e12fff1e 	bx	lr

000005dc <acquireLock>:
     5dc:	e92d4800 	push	{fp, lr}
     5e0:	e28db004 	add	fp, sp, #4
     5e4:	e24dd008 	sub	sp, sp, #8
     5e8:	e50b0008 	str	r0, [fp, #-8]
     5ec:	ea000001 	b	5f8 <acquireLock+0x1c>
     5f0:	e3a00001 	mov	r0, #1
     5f4:	eb00013a 	bl	ae4 <sleep>
     5f8:	e51b2008 	ldr	r2, [fp, #-8]
     5fc:	e3a01001 	mov	r1, #1
     600:	e1923f9f 	ldrex	r3, [r2]
     604:	e1820f91 	strex	r0, r1, [r2]
     608:	e3500000 	cmp	r0, #0
     60c:	1afffffb 	bne	600 <acquireLock+0x24>
     610:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     614:	e3530001 	cmp	r3, #1
     618:	0afffff4 	beq	5f0 <acquireLock+0x14>
     61c:	e1a00000 	nop			@ (mov r0, r0)
     620:	e1a00000 	nop			@ (mov r0, r0)
     624:	e24bd004 	sub	sp, fp, #4
     628:	e8bd8800 	pop	{fp, pc}

0000062c <releaseLock>:
     62c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     630:	e28db000 	add	fp, sp, #0
     634:	e24dd00c 	sub	sp, sp, #12
     638:	e50b0008 	str	r0, [fp, #-8]
     63c:	e51b3008 	ldr	r3, [fp, #-8]
     640:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     644:	e3a02000 	mov	r2, #0
     648:	e5832000 	str	r2, [r3]
     64c:	e1a00000 	nop			@ (mov r0, r0)
     650:	e28bd000 	add	sp, fp, #0
     654:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     658:	e12fff1e 	bx	lr

0000065c <initiateCondVar>:
     65c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     660:	e28db000 	add	fp, sp, #0
     664:	e24dd00c 	sub	sp, sp, #12
     668:	e50b0008 	str	r0, [fp, #-8]
     66c:	e51b3008 	ldr	r3, [fp, #-8]
     670:	e3a02000 	mov	r2, #0
     674:	e5832000 	str	r2, [r3]
     678:	e51b3008 	ldr	r3, [fp, #-8]
     67c:	e3a02001 	mov	r2, #1
     680:	e5832004 	str	r2, [r3, #4]
     684:	e1a00000 	nop			@ (mov r0, r0)
     688:	e28bd000 	add	sp, fp, #0
     68c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     690:	e12fff1e 	bx	lr

00000694 <condWait>:
     694:	e92d4800 	push	{fp, lr}
     698:	e28db004 	add	fp, sp, #4
     69c:	e24dd008 	sub	sp, sp, #8
     6a0:	e50b0008 	str	r0, [fp, #-8]
     6a4:	e50b100c 	str	r1, [fp, #-12]
     6a8:	e51b000c 	ldr	r0, [fp, #-12]
     6ac:	ebffffde 	bl	62c <releaseLock>
     6b0:	e51b3008 	ldr	r3, [fp, #-8]
     6b4:	e5933000 	ldr	r3, [r3]
     6b8:	e1a00003 	mov	r0, r3
     6bc:	eb00017d 	bl	cb8 <sleepChan>
     6c0:	e51b000c 	ldr	r0, [fp, #-12]
     6c4:	ebffffc4 	bl	5dc <acquireLock>
     6c8:	e1a00000 	nop			@ (mov r0, r0)
     6cc:	e24bd004 	sub	sp, fp, #4
     6d0:	e8bd8800 	pop	{fp, pc}

000006d4 <broadcast>:
     6d4:	e92d4800 	push	{fp, lr}
     6d8:	e28db004 	add	fp, sp, #4
     6dc:	e24dd008 	sub	sp, sp, #8
     6e0:	e50b0008 	str	r0, [fp, #-8]
     6e4:	e51b3008 	ldr	r3, [fp, #-8]
     6e8:	e5933000 	ldr	r3, [r3]
     6ec:	e1a00003 	mov	r0, r3
     6f0:	eb000182 	bl	d00 <sigChan>
     6f4:	e1a00000 	nop			@ (mov r0, r0)
     6f8:	e24bd004 	sub	sp, fp, #4
     6fc:	e8bd8800 	pop	{fp, pc}

00000700 <semInit>:
     700:	e92d4800 	push	{fp, lr}
     704:	e28db004 	add	fp, sp, #4
     708:	e24dd008 	sub	sp, sp, #8
     70c:	e50b0008 	str	r0, [fp, #-8]
     710:	e50b100c 	str	r1, [fp, #-12]
     714:	e51b3008 	ldr	r3, [fp, #-8]
     718:	e51b200c 	ldr	r2, [fp, #-12]
     71c:	e5832000 	str	r2, [r3]
     720:	e51b3008 	ldr	r3, [fp, #-8]
     724:	e2833004 	add	r3, r3, #4
     728:	e1a00003 	mov	r0, r3
     72c:	ebffff9c 	bl	5a4 <initiateLock>
     730:	e51b3008 	ldr	r3, [fp, #-8]
     734:	e283300c 	add	r3, r3, #12
     738:	e1a00003 	mov	r0, r3
     73c:	ebffffc6 	bl	65c <initiateCondVar>
     740:	e51b3008 	ldr	r3, [fp, #-8]
     744:	e3a02001 	mov	r2, #1
     748:	e5832014 	str	r2, [r3, #20]
     74c:	e1a00000 	nop			@ (mov r0, r0)
     750:	e24bd004 	sub	sp, fp, #4
     754:	e8bd8800 	pop	{fp, pc}

00000758 <semUp>:
     758:	e92d4800 	push	{fp, lr}
     75c:	e28db004 	add	fp, sp, #4
     760:	e24dd008 	sub	sp, sp, #8
     764:	e50b0008 	str	r0, [fp, #-8]
     768:	e51b3008 	ldr	r3, [fp, #-8]
     76c:	e2833004 	add	r3, r3, #4
     770:	e1a00003 	mov	r0, r3
     774:	ebffff98 	bl	5dc <acquireLock>
     778:	e51b3008 	ldr	r3, [fp, #-8]
     77c:	e5933000 	ldr	r3, [r3]
     780:	e2832001 	add	r2, r3, #1
     784:	e51b3008 	ldr	r3, [fp, #-8]
     788:	e5832000 	str	r2, [r3]
     78c:	e51b3008 	ldr	r3, [fp, #-8]
     790:	e283300c 	add	r3, r3, #12
     794:	e1a00003 	mov	r0, r3
     798:	ebffffcd 	bl	6d4 <broadcast>
     79c:	e51b3008 	ldr	r3, [fp, #-8]
     7a0:	e2833004 	add	r3, r3, #4
     7a4:	e1a00003 	mov	r0, r3
     7a8:	ebffff9f 	bl	62c <releaseLock>
     7ac:	e1a00000 	nop			@ (mov r0, r0)
     7b0:	e24bd004 	sub	sp, fp, #4
     7b4:	e8bd8800 	pop	{fp, pc}

000007b8 <semDown>:
     7b8:	e92d4800 	push	{fp, lr}
     7bc:	e28db004 	add	fp, sp, #4
     7c0:	e24dd008 	sub	sp, sp, #8
     7c4:	e50b0008 	str	r0, [fp, #-8]
     7c8:	e51b3008 	ldr	r3, [fp, #-8]
     7cc:	e2833004 	add	r3, r3, #4
     7d0:	e1a00003 	mov	r0, r3
     7d4:	ebffff80 	bl	5dc <acquireLock>
     7d8:	ea000006 	b	7f8 <semDown+0x40>
     7dc:	e51b3008 	ldr	r3, [fp, #-8]
     7e0:	e283200c 	add	r2, r3, #12
     7e4:	e51b3008 	ldr	r3, [fp, #-8]
     7e8:	e2833004 	add	r3, r3, #4
     7ec:	e1a01003 	mov	r1, r3
     7f0:	e1a00002 	mov	r0, r2
     7f4:	ebffffa6 	bl	694 <condWait>
     7f8:	e51b3008 	ldr	r3, [fp, #-8]
     7fc:	e5933000 	ldr	r3, [r3]
     800:	e3530000 	cmp	r3, #0
     804:	dafffff4 	ble	7dc <semDown+0x24>
     808:	e51b3008 	ldr	r3, [fp, #-8]
     80c:	e5933000 	ldr	r3, [r3]
     810:	e2432001 	sub	r2, r3, #1
     814:	e51b3008 	ldr	r3, [fp, #-8]
     818:	e5832000 	str	r2, [r3]
     81c:	e51b3008 	ldr	r3, [fp, #-8]
     820:	e2833004 	add	r3, r3, #4
     824:	e1a00003 	mov	r0, r3
     828:	ebffff7f 	bl	62c <releaseLock>
     82c:	e1a00000 	nop			@ (mov r0, r0)
     830:	e24bd004 	sub	sp, fp, #4
     834:	e8bd8800 	pop	{fp, pc}

00000838 <fork>:
     838:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     83c:	e1a04003 	mov	r4, r3
     840:	e1a03002 	mov	r3, r2
     844:	e1a02001 	mov	r2, r1
     848:	e1a01000 	mov	r1, r0
     84c:	e3a00001 	mov	r0, #1
     850:	ef000000 	svc	0x00000000
     854:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     858:	e12fff1e 	bx	lr

0000085c <exit>:
     85c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     860:	e1a04003 	mov	r4, r3
     864:	e1a03002 	mov	r3, r2
     868:	e1a02001 	mov	r2, r1
     86c:	e1a01000 	mov	r1, r0
     870:	e3a00002 	mov	r0, #2
     874:	ef000000 	svc	0x00000000
     878:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     87c:	e12fff1e 	bx	lr

00000880 <wait>:
     880:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     884:	e1a04003 	mov	r4, r3
     888:	e1a03002 	mov	r3, r2
     88c:	e1a02001 	mov	r2, r1
     890:	e1a01000 	mov	r1, r0
     894:	e3a00003 	mov	r0, #3
     898:	ef000000 	svc	0x00000000
     89c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a0:	e12fff1e 	bx	lr

000008a4 <pipe>:
     8a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a8:	e1a04003 	mov	r4, r3
     8ac:	e1a03002 	mov	r3, r2
     8b0:	e1a02001 	mov	r2, r1
     8b4:	e1a01000 	mov	r1, r0
     8b8:	e3a00004 	mov	r0, #4
     8bc:	ef000000 	svc	0x00000000
     8c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c4:	e12fff1e 	bx	lr

000008c8 <read>:
     8c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8cc:	e1a04003 	mov	r4, r3
     8d0:	e1a03002 	mov	r3, r2
     8d4:	e1a02001 	mov	r2, r1
     8d8:	e1a01000 	mov	r1, r0
     8dc:	e3a00005 	mov	r0, #5
     8e0:	ef000000 	svc	0x00000000
     8e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e8:	e12fff1e 	bx	lr

000008ec <write>:
     8ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8f0:	e1a04003 	mov	r4, r3
     8f4:	e1a03002 	mov	r3, r2
     8f8:	e1a02001 	mov	r2, r1
     8fc:	e1a01000 	mov	r1, r0
     900:	e3a00010 	mov	r0, #16
     904:	ef000000 	svc	0x00000000
     908:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     90c:	e12fff1e 	bx	lr

00000910 <close>:
     910:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     914:	e1a04003 	mov	r4, r3
     918:	e1a03002 	mov	r3, r2
     91c:	e1a02001 	mov	r2, r1
     920:	e1a01000 	mov	r1, r0
     924:	e3a00015 	mov	r0, #21
     928:	ef000000 	svc	0x00000000
     92c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     930:	e12fff1e 	bx	lr

00000934 <kill>:
     934:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     938:	e1a04003 	mov	r4, r3
     93c:	e1a03002 	mov	r3, r2
     940:	e1a02001 	mov	r2, r1
     944:	e1a01000 	mov	r1, r0
     948:	e3a00006 	mov	r0, #6
     94c:	ef000000 	svc	0x00000000
     950:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     954:	e12fff1e 	bx	lr

00000958 <exec>:
     958:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     95c:	e1a04003 	mov	r4, r3
     960:	e1a03002 	mov	r3, r2
     964:	e1a02001 	mov	r2, r1
     968:	e1a01000 	mov	r1, r0
     96c:	e3a00007 	mov	r0, #7
     970:	ef000000 	svc	0x00000000
     974:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     978:	e12fff1e 	bx	lr

0000097c <open>:
     97c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     980:	e1a04003 	mov	r4, r3
     984:	e1a03002 	mov	r3, r2
     988:	e1a02001 	mov	r2, r1
     98c:	e1a01000 	mov	r1, r0
     990:	e3a0000f 	mov	r0, #15
     994:	ef000000 	svc	0x00000000
     998:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     99c:	e12fff1e 	bx	lr

000009a0 <mknod>:
     9a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a4:	e1a04003 	mov	r4, r3
     9a8:	e1a03002 	mov	r3, r2
     9ac:	e1a02001 	mov	r2, r1
     9b0:	e1a01000 	mov	r1, r0
     9b4:	e3a00011 	mov	r0, #17
     9b8:	ef000000 	svc	0x00000000
     9bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c0:	e12fff1e 	bx	lr

000009c4 <unlink>:
     9c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c8:	e1a04003 	mov	r4, r3
     9cc:	e1a03002 	mov	r3, r2
     9d0:	e1a02001 	mov	r2, r1
     9d4:	e1a01000 	mov	r1, r0
     9d8:	e3a00012 	mov	r0, #18
     9dc:	ef000000 	svc	0x00000000
     9e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e4:	e12fff1e 	bx	lr

000009e8 <fstat>:
     9e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9ec:	e1a04003 	mov	r4, r3
     9f0:	e1a03002 	mov	r3, r2
     9f4:	e1a02001 	mov	r2, r1
     9f8:	e1a01000 	mov	r1, r0
     9fc:	e3a00008 	mov	r0, #8
     a00:	ef000000 	svc	0x00000000
     a04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a08:	e12fff1e 	bx	lr

00000a0c <link>:
     a0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a10:	e1a04003 	mov	r4, r3
     a14:	e1a03002 	mov	r3, r2
     a18:	e1a02001 	mov	r2, r1
     a1c:	e1a01000 	mov	r1, r0
     a20:	e3a00013 	mov	r0, #19
     a24:	ef000000 	svc	0x00000000
     a28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a2c:	e12fff1e 	bx	lr

00000a30 <mkdir>:
     a30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a34:	e1a04003 	mov	r4, r3
     a38:	e1a03002 	mov	r3, r2
     a3c:	e1a02001 	mov	r2, r1
     a40:	e1a01000 	mov	r1, r0
     a44:	e3a00014 	mov	r0, #20
     a48:	ef000000 	svc	0x00000000
     a4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a50:	e12fff1e 	bx	lr

00000a54 <chdir>:
     a54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a58:	e1a04003 	mov	r4, r3
     a5c:	e1a03002 	mov	r3, r2
     a60:	e1a02001 	mov	r2, r1
     a64:	e1a01000 	mov	r1, r0
     a68:	e3a00009 	mov	r0, #9
     a6c:	ef000000 	svc	0x00000000
     a70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a74:	e12fff1e 	bx	lr

00000a78 <dup>:
     a78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a7c:	e1a04003 	mov	r4, r3
     a80:	e1a03002 	mov	r3, r2
     a84:	e1a02001 	mov	r2, r1
     a88:	e1a01000 	mov	r1, r0
     a8c:	e3a0000a 	mov	r0, #10
     a90:	ef000000 	svc	0x00000000
     a94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a98:	e12fff1e 	bx	lr

00000a9c <getpid>:
     a9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa0:	e1a04003 	mov	r4, r3
     aa4:	e1a03002 	mov	r3, r2
     aa8:	e1a02001 	mov	r2, r1
     aac:	e1a01000 	mov	r1, r0
     ab0:	e3a0000b 	mov	r0, #11
     ab4:	ef000000 	svc	0x00000000
     ab8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     abc:	e12fff1e 	bx	lr

00000ac0 <sbrk>:
     ac0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac4:	e1a04003 	mov	r4, r3
     ac8:	e1a03002 	mov	r3, r2
     acc:	e1a02001 	mov	r2, r1
     ad0:	e1a01000 	mov	r1, r0
     ad4:	e3a0000c 	mov	r0, #12
     ad8:	ef000000 	svc	0x00000000
     adc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae0:	e12fff1e 	bx	lr

00000ae4 <sleep>:
     ae4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae8:	e1a04003 	mov	r4, r3
     aec:	e1a03002 	mov	r3, r2
     af0:	e1a02001 	mov	r2, r1
     af4:	e1a01000 	mov	r1, r0
     af8:	e3a0000d 	mov	r0, #13
     afc:	ef000000 	svc	0x00000000
     b00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b04:	e12fff1e 	bx	lr

00000b08 <uptime>:
     b08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b0c:	e1a04003 	mov	r4, r3
     b10:	e1a03002 	mov	r3, r2
     b14:	e1a02001 	mov	r2, r1
     b18:	e1a01000 	mov	r1, r0
     b1c:	e3a0000e 	mov	r0, #14
     b20:	ef000000 	svc	0x00000000
     b24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b28:	e12fff1e 	bx	lr

00000b2c <getprocs>:
     b2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b30:	e1a04003 	mov	r4, r3
     b34:	e1a03002 	mov	r3, r2
     b38:	e1a02001 	mov	r2, r1
     b3c:	e1a01000 	mov	r1, r0
     b40:	e3a00016 	mov	r0, #22
     b44:	ef000000 	svc	0x00000000
     b48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b4c:	e12fff1e 	bx	lr

00000b50 <settickets>:
     b50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b54:	e1a04003 	mov	r4, r3
     b58:	e1a03002 	mov	r3, r2
     b5c:	e1a02001 	mov	r2, r1
     b60:	e1a01000 	mov	r1, r0
     b64:	e3a00017 	mov	r0, #23
     b68:	ef000000 	svc	0x00000000
     b6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b70:	e12fff1e 	bx	lr

00000b74 <srand>:
     b74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b78:	e1a04003 	mov	r4, r3
     b7c:	e1a03002 	mov	r3, r2
     b80:	e1a02001 	mov	r2, r1
     b84:	e1a01000 	mov	r1, r0
     b88:	e3a00018 	mov	r0, #24
     b8c:	ef000000 	svc	0x00000000
     b90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b94:	e12fff1e 	bx	lr

00000b98 <getpinfo>:
     b98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b9c:	e1a04003 	mov	r4, r3
     ba0:	e1a03002 	mov	r3, r2
     ba4:	e1a02001 	mov	r2, r1
     ba8:	e1a01000 	mov	r1, r0
     bac:	e3a00019 	mov	r0, #25
     bb0:	ef000000 	svc	0x00000000
     bb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb8:	e12fff1e 	bx	lr

00000bbc <dumppagetable>:
     bbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc0:	e1a04003 	mov	r4, r3
     bc4:	e1a03002 	mov	r3, r2
     bc8:	e1a02001 	mov	r2, r1
     bcc:	e1a01000 	mov	r1, r0
     bd0:	e3a0001a 	mov	r0, #26
     bd4:	ef000000 	svc	0x00000000
     bd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bdc:	e12fff1e 	bx	lr

00000be0 <thread_create>:
     be0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be4:	e1a04003 	mov	r4, r3
     be8:	e1a03002 	mov	r3, r2
     bec:	e1a02001 	mov	r2, r1
     bf0:	e1a01000 	mov	r1, r0
     bf4:	e3a0001b 	mov	r0, #27
     bf8:	ef000000 	svc	0x00000000
     bfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c00:	e12fff1e 	bx	lr

00000c04 <thread_exit>:
     c04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c08:	e1a04003 	mov	r4, r3
     c0c:	e1a03002 	mov	r3, r2
     c10:	e1a02001 	mov	r2, r1
     c14:	e1a01000 	mov	r1, r0
     c18:	e3a0001c 	mov	r0, #28
     c1c:	ef000000 	svc	0x00000000
     c20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c24:	e12fff1e 	bx	lr

00000c28 <thread_join>:
     c28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c2c:	e1a04003 	mov	r4, r3
     c30:	e1a03002 	mov	r3, r2
     c34:	e1a02001 	mov	r2, r1
     c38:	e1a01000 	mov	r1, r0
     c3c:	e3a0001d 	mov	r0, #29
     c40:	ef000000 	svc	0x00000000
     c44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c48:	e12fff1e 	bx	lr

00000c4c <waitpid>:
     c4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c50:	e1a04003 	mov	r4, r3
     c54:	e1a03002 	mov	r3, r2
     c58:	e1a02001 	mov	r2, r1
     c5c:	e1a01000 	mov	r1, r0
     c60:	e3a0001e 	mov	r0, #30
     c64:	ef000000 	svc	0x00000000
     c68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c6c:	e12fff1e 	bx	lr

00000c70 <barrier_init>:
     c70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c74:	e1a04003 	mov	r4, r3
     c78:	e1a03002 	mov	r3, r2
     c7c:	e1a02001 	mov	r2, r1
     c80:	e1a01000 	mov	r1, r0
     c84:	e3a0001f 	mov	r0, #31
     c88:	ef000000 	svc	0x00000000
     c8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c90:	e12fff1e 	bx	lr

00000c94 <barrier_check>:
     c94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c98:	e1a04003 	mov	r4, r3
     c9c:	e1a03002 	mov	r3, r2
     ca0:	e1a02001 	mov	r2, r1
     ca4:	e1a01000 	mov	r1, r0
     ca8:	e3a00020 	mov	r0, #32
     cac:	ef000000 	svc	0x00000000
     cb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb4:	e12fff1e 	bx	lr

00000cb8 <sleepChan>:
     cb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cbc:	e1a04003 	mov	r4, r3
     cc0:	e1a03002 	mov	r3, r2
     cc4:	e1a02001 	mov	r2, r1
     cc8:	e1a01000 	mov	r1, r0
     ccc:	e3a00024 	mov	r0, #36	@ 0x24
     cd0:	ef000000 	svc	0x00000000
     cd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd8:	e12fff1e 	bx	lr

00000cdc <getChannel>:
     cdc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce0:	e1a04003 	mov	r4, r3
     ce4:	e1a03002 	mov	r3, r2
     ce8:	e1a02001 	mov	r2, r1
     cec:	e1a01000 	mov	r1, r0
     cf0:	e3a00025 	mov	r0, #37	@ 0x25
     cf4:	ef000000 	svc	0x00000000
     cf8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cfc:	e12fff1e 	bx	lr

00000d00 <sigChan>:
     d00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d04:	e1a04003 	mov	r4, r3
     d08:	e1a03002 	mov	r3, r2
     d0c:	e1a02001 	mov	r2, r1
     d10:	e1a01000 	mov	r1, r0
     d14:	e3a00026 	mov	r0, #38	@ 0x26
     d18:	ef000000 	svc	0x00000000
     d1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d20:	e12fff1e 	bx	lr

00000d24 <sigOneChan>:
     d24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d28:	e1a04003 	mov	r4, r3
     d2c:	e1a03002 	mov	r3, r2
     d30:	e1a02001 	mov	r2, r1
     d34:	e1a01000 	mov	r1, r0
     d38:	e3a00027 	mov	r0, #39	@ 0x27
     d3c:	ef000000 	svc	0x00000000
     d40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d44:	e12fff1e 	bx	lr

00000d48 <putc>:
     d48:	e92d4800 	push	{fp, lr}
     d4c:	e28db004 	add	fp, sp, #4
     d50:	e24dd008 	sub	sp, sp, #8
     d54:	e50b0008 	str	r0, [fp, #-8]
     d58:	e1a03001 	mov	r3, r1
     d5c:	e54b3009 	strb	r3, [fp, #-9]
     d60:	e24b3009 	sub	r3, fp, #9
     d64:	e3a02001 	mov	r2, #1
     d68:	e1a01003 	mov	r1, r3
     d6c:	e51b0008 	ldr	r0, [fp, #-8]
     d70:	ebfffedd 	bl	8ec <write>
     d74:	e1a00000 	nop			@ (mov r0, r0)
     d78:	e24bd004 	sub	sp, fp, #4
     d7c:	e8bd8800 	pop	{fp, pc}

00000d80 <printint>:
     d80:	e92d4800 	push	{fp, lr}
     d84:	e28db004 	add	fp, sp, #4
     d88:	e24dd030 	sub	sp, sp, #48	@ 0x30
     d8c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     d90:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     d94:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     d98:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     d9c:	e3a03000 	mov	r3, #0
     da0:	e50b300c 	str	r3, [fp, #-12]
     da4:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     da8:	e3530000 	cmp	r3, #0
     dac:	0a000008 	beq	dd4 <printint+0x54>
     db0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     db4:	e3530000 	cmp	r3, #0
     db8:	aa000005 	bge	dd4 <printint+0x54>
     dbc:	e3a03001 	mov	r3, #1
     dc0:	e50b300c 	str	r3, [fp, #-12]
     dc4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     dc8:	e2633000 	rsb	r3, r3, #0
     dcc:	e50b3010 	str	r3, [fp, #-16]
     dd0:	ea000001 	b	ddc <printint+0x5c>
     dd4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     dd8:	e50b3010 	str	r3, [fp, #-16]
     ddc:	e3a03000 	mov	r3, #0
     de0:	e50b3008 	str	r3, [fp, #-8]
     de4:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     de8:	e51b3010 	ldr	r3, [fp, #-16]
     dec:	e1a01002 	mov	r1, r2
     df0:	e1a00003 	mov	r0, r3
     df4:	eb0001d5 	bl	1550 <__aeabi_uidivmod>
     df8:	e1a03001 	mov	r3, r1
     dfc:	e1a01003 	mov	r1, r3
     e00:	e51b3008 	ldr	r3, [fp, #-8]
     e04:	e2832001 	add	r2, r3, #1
     e08:	e50b2008 	str	r2, [fp, #-8]
     e0c:	e59f20a0 	ldr	r2, [pc, #160]	@ eb4 <printint+0x134>
     e10:	e7d22001 	ldrb	r2, [r2, r1]
     e14:	e2433004 	sub	r3, r3, #4
     e18:	e083300b 	add	r3, r3, fp
     e1c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     e20:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     e24:	e1a01003 	mov	r1, r3
     e28:	e51b0010 	ldr	r0, [fp, #-16]
     e2c:	eb00018a 	bl	145c <__udivsi3>
     e30:	e1a03000 	mov	r3, r0
     e34:	e50b3010 	str	r3, [fp, #-16]
     e38:	e51b3010 	ldr	r3, [fp, #-16]
     e3c:	e3530000 	cmp	r3, #0
     e40:	1affffe7 	bne	de4 <printint+0x64>
     e44:	e51b300c 	ldr	r3, [fp, #-12]
     e48:	e3530000 	cmp	r3, #0
     e4c:	0a00000e 	beq	e8c <printint+0x10c>
     e50:	e51b3008 	ldr	r3, [fp, #-8]
     e54:	e2832001 	add	r2, r3, #1
     e58:	e50b2008 	str	r2, [fp, #-8]
     e5c:	e2433004 	sub	r3, r3, #4
     e60:	e083300b 	add	r3, r3, fp
     e64:	e3a0202d 	mov	r2, #45	@ 0x2d
     e68:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     e6c:	ea000006 	b	e8c <printint+0x10c>
     e70:	e24b2020 	sub	r2, fp, #32
     e74:	e51b3008 	ldr	r3, [fp, #-8]
     e78:	e0823003 	add	r3, r2, r3
     e7c:	e5d33000 	ldrb	r3, [r3]
     e80:	e1a01003 	mov	r1, r3
     e84:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     e88:	ebffffae 	bl	d48 <putc>
     e8c:	e51b3008 	ldr	r3, [fp, #-8]
     e90:	e2433001 	sub	r3, r3, #1
     e94:	e50b3008 	str	r3, [fp, #-8]
     e98:	e51b3008 	ldr	r3, [fp, #-8]
     e9c:	e3530000 	cmp	r3, #0
     ea0:	aafffff2 	bge	e70 <printint+0xf0>
     ea4:	e1a00000 	nop			@ (mov r0, r0)
     ea8:	e1a00000 	nop			@ (mov r0, r0)
     eac:	e24bd004 	sub	sp, fp, #4
     eb0:	e8bd8800 	pop	{fp, pc}
     eb4:	000015ac 	.word	0x000015ac

00000eb8 <printf>:
     eb8:	e92d000e 	push	{r1, r2, r3}
     ebc:	e92d4800 	push	{fp, lr}
     ec0:	e28db004 	add	fp, sp, #4
     ec4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     ec8:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     ecc:	e3a03000 	mov	r3, #0
     ed0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ed4:	e28b3008 	add	r3, fp, #8
     ed8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     edc:	e3a03000 	mov	r3, #0
     ee0:	e50b3010 	str	r3, [fp, #-16]
     ee4:	ea000074 	b	10bc <printf+0x204>
     ee8:	e59b2004 	ldr	r2, [fp, #4]
     eec:	e51b3010 	ldr	r3, [fp, #-16]
     ef0:	e0823003 	add	r3, r2, r3
     ef4:	e5d33000 	ldrb	r3, [r3]
     ef8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     efc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     f00:	e3530000 	cmp	r3, #0
     f04:	1a00000b 	bne	f38 <printf+0x80>
     f08:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f0c:	e3530025 	cmp	r3, #37	@ 0x25
     f10:	1a000002 	bne	f20 <printf+0x68>
     f14:	e3a03025 	mov	r3, #37	@ 0x25
     f18:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f1c:	ea000063 	b	10b0 <printf+0x1f8>
     f20:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f24:	e6ef3073 	uxtb	r3, r3
     f28:	e1a01003 	mov	r1, r3
     f2c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f30:	ebffff84 	bl	d48 <putc>
     f34:	ea00005d 	b	10b0 <printf+0x1f8>
     f38:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     f3c:	e3530025 	cmp	r3, #37	@ 0x25
     f40:	1a00005a 	bne	10b0 <printf+0x1f8>
     f44:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f48:	e3530064 	cmp	r3, #100	@ 0x64
     f4c:	1a00000a 	bne	f7c <printf+0xc4>
     f50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f54:	e5933000 	ldr	r3, [r3]
     f58:	e1a01003 	mov	r1, r3
     f5c:	e3a03001 	mov	r3, #1
     f60:	e3a0200a 	mov	r2, #10
     f64:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f68:	ebffff84 	bl	d80 <printint>
     f6c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f70:	e2833004 	add	r3, r3, #4
     f74:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f78:	ea00004a 	b	10a8 <printf+0x1f0>
     f7c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f80:	e3530078 	cmp	r3, #120	@ 0x78
     f84:	0a000002 	beq	f94 <printf+0xdc>
     f88:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f8c:	e3530070 	cmp	r3, #112	@ 0x70
     f90:	1a00000a 	bne	fc0 <printf+0x108>
     f94:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f98:	e5933000 	ldr	r3, [r3]
     f9c:	e1a01003 	mov	r1, r3
     fa0:	e3a03000 	mov	r3, #0
     fa4:	e3a02010 	mov	r2, #16
     fa8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fac:	ebffff73 	bl	d80 <printint>
     fb0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fb4:	e2833004 	add	r3, r3, #4
     fb8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fbc:	ea000039 	b	10a8 <printf+0x1f0>
     fc0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fc4:	e3530073 	cmp	r3, #115	@ 0x73
     fc8:	1a000018 	bne	1030 <printf+0x178>
     fcc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fd0:	e5933000 	ldr	r3, [r3]
     fd4:	e50b300c 	str	r3, [fp, #-12]
     fd8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fdc:	e2833004 	add	r3, r3, #4
     fe0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fe4:	e51b300c 	ldr	r3, [fp, #-12]
     fe8:	e3530000 	cmp	r3, #0
     fec:	1a00000a 	bne	101c <printf+0x164>
     ff0:	e59f30f4 	ldr	r3, [pc, #244]	@ 10ec <printf+0x234>
     ff4:	e50b300c 	str	r3, [fp, #-12]
     ff8:	ea000007 	b	101c <printf+0x164>
     ffc:	e51b300c 	ldr	r3, [fp, #-12]
    1000:	e5d33000 	ldrb	r3, [r3]
    1004:	e1a01003 	mov	r1, r3
    1008:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    100c:	ebffff4d 	bl	d48 <putc>
    1010:	e51b300c 	ldr	r3, [fp, #-12]
    1014:	e2833001 	add	r3, r3, #1
    1018:	e50b300c 	str	r3, [fp, #-12]
    101c:	e51b300c 	ldr	r3, [fp, #-12]
    1020:	e5d33000 	ldrb	r3, [r3]
    1024:	e3530000 	cmp	r3, #0
    1028:	1afffff3 	bne	ffc <printf+0x144>
    102c:	ea00001d 	b	10a8 <printf+0x1f0>
    1030:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1034:	e3530063 	cmp	r3, #99	@ 0x63
    1038:	1a000009 	bne	1064 <printf+0x1ac>
    103c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1040:	e5933000 	ldr	r3, [r3]
    1044:	e6ef3073 	uxtb	r3, r3
    1048:	e1a01003 	mov	r1, r3
    104c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1050:	ebffff3c 	bl	d48 <putc>
    1054:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1058:	e2833004 	add	r3, r3, #4
    105c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1060:	ea000010 	b	10a8 <printf+0x1f0>
    1064:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1068:	e3530025 	cmp	r3, #37	@ 0x25
    106c:	1a000005 	bne	1088 <printf+0x1d0>
    1070:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1074:	e6ef3073 	uxtb	r3, r3
    1078:	e1a01003 	mov	r1, r3
    107c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1080:	ebffff30 	bl	d48 <putc>
    1084:	ea000007 	b	10a8 <printf+0x1f0>
    1088:	e3a01025 	mov	r1, #37	@ 0x25
    108c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1090:	ebffff2c 	bl	d48 <putc>
    1094:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1098:	e6ef3073 	uxtb	r3, r3
    109c:	e1a01003 	mov	r1, r3
    10a0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10a4:	ebffff27 	bl	d48 <putc>
    10a8:	e3a03000 	mov	r3, #0
    10ac:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    10b0:	e51b3010 	ldr	r3, [fp, #-16]
    10b4:	e2833001 	add	r3, r3, #1
    10b8:	e50b3010 	str	r3, [fp, #-16]
    10bc:	e59b2004 	ldr	r2, [fp, #4]
    10c0:	e51b3010 	ldr	r3, [fp, #-16]
    10c4:	e0823003 	add	r3, r2, r3
    10c8:	e5d33000 	ldrb	r3, [r3]
    10cc:	e3530000 	cmp	r3, #0
    10d0:	1affff84 	bne	ee8 <printf+0x30>
    10d4:	e1a00000 	nop			@ (mov r0, r0)
    10d8:	e1a00000 	nop			@ (mov r0, r0)
    10dc:	e24bd004 	sub	sp, fp, #4
    10e0:	e8bd4800 	pop	{fp, lr}
    10e4:	e28dd00c 	add	sp, sp, #12
    10e8:	e12fff1e 	bx	lr
    10ec:	000015a4 	.word	0x000015a4

000010f0 <free>:
    10f0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    10f4:	e28db000 	add	fp, sp, #0
    10f8:	e24dd014 	sub	sp, sp, #20
    10fc:	e50b0010 	str	r0, [fp, #-16]
    1100:	e51b3010 	ldr	r3, [fp, #-16]
    1104:	e2433008 	sub	r3, r3, #8
    1108:	e50b300c 	str	r3, [fp, #-12]
    110c:	e59f3154 	ldr	r3, [pc, #340]	@ 1268 <free+0x178>
    1110:	e5933000 	ldr	r3, [r3]
    1114:	e50b3008 	str	r3, [fp, #-8]
    1118:	ea000010 	b	1160 <free+0x70>
    111c:	e51b3008 	ldr	r3, [fp, #-8]
    1120:	e5933000 	ldr	r3, [r3]
    1124:	e51b2008 	ldr	r2, [fp, #-8]
    1128:	e1520003 	cmp	r2, r3
    112c:	3a000008 	bcc	1154 <free+0x64>
    1130:	e51b200c 	ldr	r2, [fp, #-12]
    1134:	e51b3008 	ldr	r3, [fp, #-8]
    1138:	e1520003 	cmp	r2, r3
    113c:	8a000010 	bhi	1184 <free+0x94>
    1140:	e51b3008 	ldr	r3, [fp, #-8]
    1144:	e5933000 	ldr	r3, [r3]
    1148:	e51b200c 	ldr	r2, [fp, #-12]
    114c:	e1520003 	cmp	r2, r3
    1150:	3a00000b 	bcc	1184 <free+0x94>
    1154:	e51b3008 	ldr	r3, [fp, #-8]
    1158:	e5933000 	ldr	r3, [r3]
    115c:	e50b3008 	str	r3, [fp, #-8]
    1160:	e51b200c 	ldr	r2, [fp, #-12]
    1164:	e51b3008 	ldr	r3, [fp, #-8]
    1168:	e1520003 	cmp	r2, r3
    116c:	9affffea 	bls	111c <free+0x2c>
    1170:	e51b3008 	ldr	r3, [fp, #-8]
    1174:	e5933000 	ldr	r3, [r3]
    1178:	e51b200c 	ldr	r2, [fp, #-12]
    117c:	e1520003 	cmp	r2, r3
    1180:	2affffe5 	bcs	111c <free+0x2c>
    1184:	e51b300c 	ldr	r3, [fp, #-12]
    1188:	e5933004 	ldr	r3, [r3, #4]
    118c:	e1a03183 	lsl	r3, r3, #3
    1190:	e51b200c 	ldr	r2, [fp, #-12]
    1194:	e0822003 	add	r2, r2, r3
    1198:	e51b3008 	ldr	r3, [fp, #-8]
    119c:	e5933000 	ldr	r3, [r3]
    11a0:	e1520003 	cmp	r2, r3
    11a4:	1a00000d 	bne	11e0 <free+0xf0>
    11a8:	e51b300c 	ldr	r3, [fp, #-12]
    11ac:	e5932004 	ldr	r2, [r3, #4]
    11b0:	e51b3008 	ldr	r3, [fp, #-8]
    11b4:	e5933000 	ldr	r3, [r3]
    11b8:	e5933004 	ldr	r3, [r3, #4]
    11bc:	e0822003 	add	r2, r2, r3
    11c0:	e51b300c 	ldr	r3, [fp, #-12]
    11c4:	e5832004 	str	r2, [r3, #4]
    11c8:	e51b3008 	ldr	r3, [fp, #-8]
    11cc:	e5933000 	ldr	r3, [r3]
    11d0:	e5932000 	ldr	r2, [r3]
    11d4:	e51b300c 	ldr	r3, [fp, #-12]
    11d8:	e5832000 	str	r2, [r3]
    11dc:	ea000003 	b	11f0 <free+0x100>
    11e0:	e51b3008 	ldr	r3, [fp, #-8]
    11e4:	e5932000 	ldr	r2, [r3]
    11e8:	e51b300c 	ldr	r3, [fp, #-12]
    11ec:	e5832000 	str	r2, [r3]
    11f0:	e51b3008 	ldr	r3, [fp, #-8]
    11f4:	e5933004 	ldr	r3, [r3, #4]
    11f8:	e1a03183 	lsl	r3, r3, #3
    11fc:	e51b2008 	ldr	r2, [fp, #-8]
    1200:	e0823003 	add	r3, r2, r3
    1204:	e51b200c 	ldr	r2, [fp, #-12]
    1208:	e1520003 	cmp	r2, r3
    120c:	1a00000b 	bne	1240 <free+0x150>
    1210:	e51b3008 	ldr	r3, [fp, #-8]
    1214:	e5932004 	ldr	r2, [r3, #4]
    1218:	e51b300c 	ldr	r3, [fp, #-12]
    121c:	e5933004 	ldr	r3, [r3, #4]
    1220:	e0822003 	add	r2, r2, r3
    1224:	e51b3008 	ldr	r3, [fp, #-8]
    1228:	e5832004 	str	r2, [r3, #4]
    122c:	e51b300c 	ldr	r3, [fp, #-12]
    1230:	e5932000 	ldr	r2, [r3]
    1234:	e51b3008 	ldr	r3, [fp, #-8]
    1238:	e5832000 	str	r2, [r3]
    123c:	ea000002 	b	124c <free+0x15c>
    1240:	e51b3008 	ldr	r3, [fp, #-8]
    1244:	e51b200c 	ldr	r2, [fp, #-12]
    1248:	e5832000 	str	r2, [r3]
    124c:	e59f2014 	ldr	r2, [pc, #20]	@ 1268 <free+0x178>
    1250:	e51b3008 	ldr	r3, [fp, #-8]
    1254:	e5823000 	str	r3, [r2]
    1258:	e1a00000 	nop			@ (mov r0, r0)
    125c:	e28bd000 	add	sp, fp, #0
    1260:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1264:	e12fff1e 	bx	lr
    1268:	000015c8 	.word	0x000015c8

0000126c <morecore>:
    126c:	e92d4800 	push	{fp, lr}
    1270:	e28db004 	add	fp, sp, #4
    1274:	e24dd010 	sub	sp, sp, #16
    1278:	e50b0010 	str	r0, [fp, #-16]
    127c:	e51b3010 	ldr	r3, [fp, #-16]
    1280:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1284:	2a000001 	bcs	1290 <morecore+0x24>
    1288:	e3a03a01 	mov	r3, #4096	@ 0x1000
    128c:	e50b3010 	str	r3, [fp, #-16]
    1290:	e51b3010 	ldr	r3, [fp, #-16]
    1294:	e1a03183 	lsl	r3, r3, #3
    1298:	e1a00003 	mov	r0, r3
    129c:	ebfffe07 	bl	ac0 <sbrk>
    12a0:	e50b0008 	str	r0, [fp, #-8]
    12a4:	e51b3008 	ldr	r3, [fp, #-8]
    12a8:	e3730001 	cmn	r3, #1
    12ac:	1a000001 	bne	12b8 <morecore+0x4c>
    12b0:	e3a03000 	mov	r3, #0
    12b4:	ea00000a 	b	12e4 <morecore+0x78>
    12b8:	e51b3008 	ldr	r3, [fp, #-8]
    12bc:	e50b300c 	str	r3, [fp, #-12]
    12c0:	e51b300c 	ldr	r3, [fp, #-12]
    12c4:	e51b2010 	ldr	r2, [fp, #-16]
    12c8:	e5832004 	str	r2, [r3, #4]
    12cc:	e51b300c 	ldr	r3, [fp, #-12]
    12d0:	e2833008 	add	r3, r3, #8
    12d4:	e1a00003 	mov	r0, r3
    12d8:	ebffff84 	bl	10f0 <free>
    12dc:	e59f300c 	ldr	r3, [pc, #12]	@ 12f0 <morecore+0x84>
    12e0:	e5933000 	ldr	r3, [r3]
    12e4:	e1a00003 	mov	r0, r3
    12e8:	e24bd004 	sub	sp, fp, #4
    12ec:	e8bd8800 	pop	{fp, pc}
    12f0:	000015c8 	.word	0x000015c8

000012f4 <malloc>:
    12f4:	e92d4800 	push	{fp, lr}
    12f8:	e28db004 	add	fp, sp, #4
    12fc:	e24dd018 	sub	sp, sp, #24
    1300:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1304:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1308:	e2833007 	add	r3, r3, #7
    130c:	e1a031a3 	lsr	r3, r3, #3
    1310:	e2833001 	add	r3, r3, #1
    1314:	e50b3010 	str	r3, [fp, #-16]
    1318:	e59f3134 	ldr	r3, [pc, #308]	@ 1454 <malloc+0x160>
    131c:	e5933000 	ldr	r3, [r3]
    1320:	e50b300c 	str	r3, [fp, #-12]
    1324:	e51b300c 	ldr	r3, [fp, #-12]
    1328:	e3530000 	cmp	r3, #0
    132c:	1a00000b 	bne	1360 <malloc+0x6c>
    1330:	e59f3120 	ldr	r3, [pc, #288]	@ 1458 <malloc+0x164>
    1334:	e50b300c 	str	r3, [fp, #-12]
    1338:	e59f2114 	ldr	r2, [pc, #276]	@ 1454 <malloc+0x160>
    133c:	e51b300c 	ldr	r3, [fp, #-12]
    1340:	e5823000 	str	r3, [r2]
    1344:	e59f3108 	ldr	r3, [pc, #264]	@ 1454 <malloc+0x160>
    1348:	e5933000 	ldr	r3, [r3]
    134c:	e59f2104 	ldr	r2, [pc, #260]	@ 1458 <malloc+0x164>
    1350:	e5823000 	str	r3, [r2]
    1354:	e59f30fc 	ldr	r3, [pc, #252]	@ 1458 <malloc+0x164>
    1358:	e3a02000 	mov	r2, #0
    135c:	e5832004 	str	r2, [r3, #4]
    1360:	e51b300c 	ldr	r3, [fp, #-12]
    1364:	e5933000 	ldr	r3, [r3]
    1368:	e50b3008 	str	r3, [fp, #-8]
    136c:	e51b3008 	ldr	r3, [fp, #-8]
    1370:	e5933004 	ldr	r3, [r3, #4]
    1374:	e51b2010 	ldr	r2, [fp, #-16]
    1378:	e1520003 	cmp	r2, r3
    137c:	8a00001e 	bhi	13fc <malloc+0x108>
    1380:	e51b3008 	ldr	r3, [fp, #-8]
    1384:	e5933004 	ldr	r3, [r3, #4]
    1388:	e51b2010 	ldr	r2, [fp, #-16]
    138c:	e1520003 	cmp	r2, r3
    1390:	1a000004 	bne	13a8 <malloc+0xb4>
    1394:	e51b3008 	ldr	r3, [fp, #-8]
    1398:	e5932000 	ldr	r2, [r3]
    139c:	e51b300c 	ldr	r3, [fp, #-12]
    13a0:	e5832000 	str	r2, [r3]
    13a4:	ea00000e 	b	13e4 <malloc+0xf0>
    13a8:	e51b3008 	ldr	r3, [fp, #-8]
    13ac:	e5932004 	ldr	r2, [r3, #4]
    13b0:	e51b3010 	ldr	r3, [fp, #-16]
    13b4:	e0422003 	sub	r2, r2, r3
    13b8:	e51b3008 	ldr	r3, [fp, #-8]
    13bc:	e5832004 	str	r2, [r3, #4]
    13c0:	e51b3008 	ldr	r3, [fp, #-8]
    13c4:	e5933004 	ldr	r3, [r3, #4]
    13c8:	e1a03183 	lsl	r3, r3, #3
    13cc:	e51b2008 	ldr	r2, [fp, #-8]
    13d0:	e0823003 	add	r3, r2, r3
    13d4:	e50b3008 	str	r3, [fp, #-8]
    13d8:	e51b3008 	ldr	r3, [fp, #-8]
    13dc:	e51b2010 	ldr	r2, [fp, #-16]
    13e0:	e5832004 	str	r2, [r3, #4]
    13e4:	e59f2068 	ldr	r2, [pc, #104]	@ 1454 <malloc+0x160>
    13e8:	e51b300c 	ldr	r3, [fp, #-12]
    13ec:	e5823000 	str	r3, [r2]
    13f0:	e51b3008 	ldr	r3, [fp, #-8]
    13f4:	e2833008 	add	r3, r3, #8
    13f8:	ea000012 	b	1448 <malloc+0x154>
    13fc:	e59f3050 	ldr	r3, [pc, #80]	@ 1454 <malloc+0x160>
    1400:	e5933000 	ldr	r3, [r3]
    1404:	e51b2008 	ldr	r2, [fp, #-8]
    1408:	e1520003 	cmp	r2, r3
    140c:	1a000007 	bne	1430 <malloc+0x13c>
    1410:	e51b0010 	ldr	r0, [fp, #-16]
    1414:	ebffff94 	bl	126c <morecore>
    1418:	e50b0008 	str	r0, [fp, #-8]
    141c:	e51b3008 	ldr	r3, [fp, #-8]
    1420:	e3530000 	cmp	r3, #0
    1424:	1a000001 	bne	1430 <malloc+0x13c>
    1428:	e3a03000 	mov	r3, #0
    142c:	ea000005 	b	1448 <malloc+0x154>
    1430:	e51b3008 	ldr	r3, [fp, #-8]
    1434:	e50b300c 	str	r3, [fp, #-12]
    1438:	e51b3008 	ldr	r3, [fp, #-8]
    143c:	e5933000 	ldr	r3, [r3]
    1440:	e50b3008 	str	r3, [fp, #-8]
    1444:	eaffffc8 	b	136c <malloc+0x78>
    1448:	e1a00003 	mov	r0, r3
    144c:	e24bd004 	sub	sp, fp, #4
    1450:	e8bd8800 	pop	{fp, pc}
    1454:	000015c8 	.word	0x000015c8
    1458:	000015c0 	.word	0x000015c0

0000145c <__udivsi3>:
    145c:	e2512001 	subs	r2, r1, #1
    1460:	012fff1e 	bxeq	lr
    1464:	3a000036 	bcc	1544 <__udivsi3+0xe8>
    1468:	e1500001 	cmp	r0, r1
    146c:	9a000022 	bls	14fc <__udivsi3+0xa0>
    1470:	e1110002 	tst	r1, r2
    1474:	0a000023 	beq	1508 <__udivsi3+0xac>
    1478:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    147c:	01a01181 	lsleq	r1, r1, #3
    1480:	03a03008 	moveq	r3, #8
    1484:	13a03001 	movne	r3, #1
    1488:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    148c:	31510000 	cmpcc	r1, r0
    1490:	31a01201 	lslcc	r1, r1, #4
    1494:	31a03203 	lslcc	r3, r3, #4
    1498:	3afffffa 	bcc	1488 <__udivsi3+0x2c>
    149c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    14a0:	31510000 	cmpcc	r1, r0
    14a4:	31a01081 	lslcc	r1, r1, #1
    14a8:	31a03083 	lslcc	r3, r3, #1
    14ac:	3afffffa 	bcc	149c <__udivsi3+0x40>
    14b0:	e3a02000 	mov	r2, #0
    14b4:	e1500001 	cmp	r0, r1
    14b8:	20400001 	subcs	r0, r0, r1
    14bc:	21822003 	orrcs	r2, r2, r3
    14c0:	e15000a1 	cmp	r0, r1, lsr #1
    14c4:	204000a1 	subcs	r0, r0, r1, lsr #1
    14c8:	218220a3 	orrcs	r2, r2, r3, lsr #1
    14cc:	e1500121 	cmp	r0, r1, lsr #2
    14d0:	20400121 	subcs	r0, r0, r1, lsr #2
    14d4:	21822123 	orrcs	r2, r2, r3, lsr #2
    14d8:	e15001a1 	cmp	r0, r1, lsr #3
    14dc:	204001a1 	subcs	r0, r0, r1, lsr #3
    14e0:	218221a3 	orrcs	r2, r2, r3, lsr #3
    14e4:	e3500000 	cmp	r0, #0
    14e8:	11b03223 	lsrsne	r3, r3, #4
    14ec:	11a01221 	lsrne	r1, r1, #4
    14f0:	1affffef 	bne	14b4 <__udivsi3+0x58>
    14f4:	e1a00002 	mov	r0, r2
    14f8:	e12fff1e 	bx	lr
    14fc:	03a00001 	moveq	r0, #1
    1500:	13a00000 	movne	r0, #0
    1504:	e12fff1e 	bx	lr
    1508:	e3510801 	cmp	r1, #65536	@ 0x10000
    150c:	21a01821 	lsrcs	r1, r1, #16
    1510:	23a02010 	movcs	r2, #16
    1514:	33a02000 	movcc	r2, #0
    1518:	e3510c01 	cmp	r1, #256	@ 0x100
    151c:	21a01421 	lsrcs	r1, r1, #8
    1520:	22822008 	addcs	r2, r2, #8
    1524:	e3510010 	cmp	r1, #16
    1528:	21a01221 	lsrcs	r1, r1, #4
    152c:	22822004 	addcs	r2, r2, #4
    1530:	e3510004 	cmp	r1, #4
    1534:	82822003 	addhi	r2, r2, #3
    1538:	908220a1 	addls	r2, r2, r1, lsr #1
    153c:	e1a00230 	lsr	r0, r0, r2
    1540:	e12fff1e 	bx	lr
    1544:	e3500000 	cmp	r0, #0
    1548:	13e00000 	mvnne	r0, #0
    154c:	ea000007 	b	1570 <__aeabi_idiv0>

00001550 <__aeabi_uidivmod>:
    1550:	e3510000 	cmp	r1, #0
    1554:	0afffffa 	beq	1544 <__udivsi3+0xe8>
    1558:	e92d4003 	push	{r0, r1, lr}
    155c:	ebffffbe 	bl	145c <__udivsi3>
    1560:	e8bd4006 	pop	{r1, r2, lr}
    1564:	e0030092 	mul	r3, r2, r0
    1568:	e0411003 	sub	r1, r1, r3
    156c:	e12fff1e 	bx	lr

00001570 <__aeabi_idiv0>:
    1570:	e12fff1e 	bx	lr
