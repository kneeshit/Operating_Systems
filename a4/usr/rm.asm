
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
      28:	eb0003db 	bl	f9c <printf>
      2c:	eb000243 	bl	940 <exit>
      30:	e3a03001 	mov	r3, #1
      34:	e50b3008 	str	r3, [fp, #-8]
      38:	ea000016 	b	98 <main+0x98>
      3c:	e51b3008 	ldr	r3, [fp, #-8]
      40:	e1a03103 	lsl	r3, r3, #2
      44:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      48:	e0823003 	add	r3, r2, r3
      4c:	e5933000 	ldr	r3, [r3]
      50:	e1a00003 	mov	r0, r3
      54:	eb000293 	bl	aa8 <unlink>
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
      84:	eb0003c4 	bl	f9c <printf>
      88:	ea000006 	b	a8 <main+0xa8>
      8c:	e51b3008 	ldr	r3, [fp, #-8]
      90:	e2833001 	add	r3, r3, #1
      94:	e50b3008 	str	r3, [fp, #-8]
      98:	e51b2008 	ldr	r2, [fp, #-8]
      9c:	e51b3010 	ldr	r3, [fp, #-16]
      a0:	e1520003 	cmp	r2, r3
      a4:	baffffe4 	blt	3c <main+0x3c>
      a8:	eb000224 	bl	940 <exit>
      ac:	00001658 	.word	0x00001658
      b0:	0000166c 	.word	0x0000166c

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
     3a8:	eb00017f 	bl	9ac <read>
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
     450:	eb000182 	bl	a60 <open>
     454:	e50b0008 	str	r0, [fp, #-8]
     458:	e51b3008 	ldr	r3, [fp, #-8]
     45c:	e3530000 	cmp	r3, #0
     460:	aa000001 	bge	46c <stat+0x38>
     464:	e3e03000 	mvn	r3, #0
     468:	ea000006 	b	488 <stat+0x54>
     46c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     470:	e51b0008 	ldr	r0, [fp, #-8]
     474:	eb000194 	bl	acc <fstat>
     478:	e50b000c 	str	r0, [fp, #-12]
     47c:	e51b0008 	ldr	r0, [fp, #-8]
     480:	eb00015b 	bl	9f4 <close>
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

000005dc <xchg>:
     5dc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5e0:	e28db000 	add	fp, sp, #0
     5e4:	e24dd00c 	sub	sp, sp, #12
     5e8:	e50b0008 	str	r0, [fp, #-8]
     5ec:	e50b100c 	str	r1, [fp, #-12]
     5f0:	e51b200c 	ldr	r2, [fp, #-12]
     5f4:	e51b3008 	ldr	r3, [fp, #-8]
     5f8:	e1931f9f 	ldrex	r1, [r3]
     5fc:	e1830f92 	strex	r0, r2, [r3]
     600:	e3500000 	cmp	r0, #0
     604:	1afffffb 	bne	5f8 <xchg+0x1c>
     608:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     60c:	e1a03001 	mov	r3, r1
     610:	e1a00003 	mov	r0, r3
     614:	e28bd000 	add	sp, fp, #0
     618:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     61c:	e12fff1e 	bx	lr

00000620 <acquireLock>:
     620:	e92d4800 	push	{fp, lr}
     624:	e28db004 	add	fp, sp, #4
     628:	e24dd008 	sub	sp, sp, #8
     62c:	e50b0008 	str	r0, [fp, #-8]
     630:	e51b3008 	ldr	r3, [fp, #-8]
     634:	e5933004 	ldr	r3, [r3, #4]
     638:	e3530000 	cmp	r3, #0
     63c:	0a000008 	beq	664 <acquireLock+0x44>
     640:	e1a00000 	nop			@ (mov r0, r0)
     644:	e51b3008 	ldr	r3, [fp, #-8]
     648:	e3a01001 	mov	r1, #1
     64c:	e1a00003 	mov	r0, r3
     650:	ebffffe1 	bl	5dc <xchg>
     654:	e1a03000 	mov	r3, r0
     658:	e3530000 	cmp	r3, #0
     65c:	1afffff8 	bne	644 <acquireLock+0x24>
     660:	ea000000 	b	668 <acquireLock+0x48>
     664:	e1a00000 	nop			@ (mov r0, r0)
     668:	e24bd004 	sub	sp, fp, #4
     66c:	e8bd8800 	pop	{fp, pc}

00000670 <releaseLock>:
     670:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     674:	e28db000 	add	fp, sp, #0
     678:	e24dd00c 	sub	sp, sp, #12
     67c:	e50b0008 	str	r0, [fp, #-8]
     680:	e51b3008 	ldr	r3, [fp, #-8]
     684:	e5933004 	ldr	r3, [r3, #4]
     688:	e3530000 	cmp	r3, #0
     68c:	0a000007 	beq	6b0 <releaseLock+0x40>
     690:	e51b3008 	ldr	r3, [fp, #-8]
     694:	e5933000 	ldr	r3, [r3]
     698:	e3530001 	cmp	r3, #1
     69c:	1a000005 	bne	6b8 <releaseLock+0x48>
     6a0:	e51b3008 	ldr	r3, [fp, #-8]
     6a4:	e3a02000 	mov	r2, #0
     6a8:	e5832000 	str	r2, [r3]
     6ac:	ea000002 	b	6bc <releaseLock+0x4c>
     6b0:	e1a00000 	nop			@ (mov r0, r0)
     6b4:	ea000000 	b	6bc <releaseLock+0x4c>
     6b8:	e1a00000 	nop			@ (mov r0, r0)
     6bc:	e28bd000 	add	sp, fp, #0
     6c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6c4:	e12fff1e 	bx	lr

000006c8 <initiateCondVar>:
     6c8:	e92d4800 	push	{fp, lr}
     6cc:	e28db004 	add	fp, sp, #4
     6d0:	e24dd008 	sub	sp, sp, #8
     6d4:	e50b0008 	str	r0, [fp, #-8]
     6d8:	eb0001b8 	bl	dc0 <getChannel>
     6dc:	e1a02000 	mov	r2, r0
     6e0:	e51b3008 	ldr	r3, [fp, #-8]
     6e4:	e5832000 	str	r2, [r3]
     6e8:	e51b3008 	ldr	r3, [fp, #-8]
     6ec:	e3a02001 	mov	r2, #1
     6f0:	e5832004 	str	r2, [r3, #4]
     6f4:	e1a00000 	nop			@ (mov r0, r0)
     6f8:	e24bd004 	sub	sp, fp, #4
     6fc:	e8bd8800 	pop	{fp, pc}

00000700 <condWait>:
     700:	e92d4800 	push	{fp, lr}
     704:	e28db004 	add	fp, sp, #4
     708:	e24dd008 	sub	sp, sp, #8
     70c:	e50b0008 	str	r0, [fp, #-8]
     710:	e50b100c 	str	r1, [fp, #-12]
     714:	e51b3008 	ldr	r3, [fp, #-8]
     718:	e5933004 	ldr	r3, [r3, #4]
     71c:	e3530000 	cmp	r3, #0
     720:	0a00000c 	beq	758 <condWait+0x58>
     724:	e51b300c 	ldr	r3, [fp, #-12]
     728:	e5933004 	ldr	r3, [r3, #4]
     72c:	e3530000 	cmp	r3, #0
     730:	0a000008 	beq	758 <condWait+0x58>
     734:	e51b000c 	ldr	r0, [fp, #-12]
     738:	ebffffcc 	bl	670 <releaseLock>
     73c:	e51b3008 	ldr	r3, [fp, #-8]
     740:	e5933000 	ldr	r3, [r3]
     744:	e1a00003 	mov	r0, r3
     748:	eb000193 	bl	d9c <sleepChan>
     74c:	e51b000c 	ldr	r0, [fp, #-12]
     750:	ebffffb2 	bl	620 <acquireLock>
     754:	ea000000 	b	75c <condWait+0x5c>
     758:	e1a00000 	nop			@ (mov r0, r0)
     75c:	e24bd004 	sub	sp, fp, #4
     760:	e8bd8800 	pop	{fp, pc}

00000764 <broadcast>:
     764:	e92d4800 	push	{fp, lr}
     768:	e28db004 	add	fp, sp, #4
     76c:	e24dd008 	sub	sp, sp, #8
     770:	e50b0008 	str	r0, [fp, #-8]
     774:	e51b3008 	ldr	r3, [fp, #-8]
     778:	e5933004 	ldr	r3, [r3, #4]
     77c:	e3530000 	cmp	r3, #0
     780:	0a000004 	beq	798 <broadcast+0x34>
     784:	e51b3008 	ldr	r3, [fp, #-8]
     788:	e5933000 	ldr	r3, [r3]
     78c:	e1a00003 	mov	r0, r3
     790:	eb000193 	bl	de4 <sigChan>
     794:	ea000000 	b	79c <broadcast+0x38>
     798:	e1a00000 	nop			@ (mov r0, r0)
     79c:	e24bd004 	sub	sp, fp, #4
     7a0:	e8bd8800 	pop	{fp, pc}

000007a4 <signal>:
     7a4:	e92d4800 	push	{fp, lr}
     7a8:	e28db004 	add	fp, sp, #4
     7ac:	e24dd008 	sub	sp, sp, #8
     7b0:	e50b0008 	str	r0, [fp, #-8]
     7b4:	e51b3008 	ldr	r3, [fp, #-8]
     7b8:	e5933004 	ldr	r3, [r3, #4]
     7bc:	e3530000 	cmp	r3, #0
     7c0:	0a000004 	beq	7d8 <signal+0x34>
     7c4:	e51b3008 	ldr	r3, [fp, #-8]
     7c8:	e5933000 	ldr	r3, [r3]
     7cc:	e1a00003 	mov	r0, r3
     7d0:	eb00018c 	bl	e08 <sigOneChan>
     7d4:	ea000000 	b	7dc <signal+0x38>
     7d8:	e1a00000 	nop			@ (mov r0, r0)
     7dc:	e24bd004 	sub	sp, fp, #4
     7e0:	e8bd8800 	pop	{fp, pc}

000007e4 <semInit>:
     7e4:	e92d4800 	push	{fp, lr}
     7e8:	e28db004 	add	fp, sp, #4
     7ec:	e24dd008 	sub	sp, sp, #8
     7f0:	e50b0008 	str	r0, [fp, #-8]
     7f4:	e50b100c 	str	r1, [fp, #-12]
     7f8:	e51b3008 	ldr	r3, [fp, #-8]
     7fc:	e51b200c 	ldr	r2, [fp, #-12]
     800:	e5832000 	str	r2, [r3]
     804:	e51b3008 	ldr	r3, [fp, #-8]
     808:	e2833004 	add	r3, r3, #4
     80c:	e1a00003 	mov	r0, r3
     810:	ebffff63 	bl	5a4 <initiateLock>
     814:	e51b3008 	ldr	r3, [fp, #-8]
     818:	e283300c 	add	r3, r3, #12
     81c:	e1a00003 	mov	r0, r3
     820:	ebffffa8 	bl	6c8 <initiateCondVar>
     824:	e51b3008 	ldr	r3, [fp, #-8]
     828:	e3a02001 	mov	r2, #1
     82c:	e5832014 	str	r2, [r3, #20]
     830:	e1a00000 	nop			@ (mov r0, r0)
     834:	e24bd004 	sub	sp, fp, #4
     838:	e8bd8800 	pop	{fp, pc}

0000083c <semUp>:
     83c:	e92d4800 	push	{fp, lr}
     840:	e28db004 	add	fp, sp, #4
     844:	e24dd008 	sub	sp, sp, #8
     848:	e50b0008 	str	r0, [fp, #-8]
     84c:	e51b3008 	ldr	r3, [fp, #-8]
     850:	e2833004 	add	r3, r3, #4
     854:	e1a00003 	mov	r0, r3
     858:	ebffff70 	bl	620 <acquireLock>
     85c:	e51b3008 	ldr	r3, [fp, #-8]
     860:	e5933000 	ldr	r3, [r3]
     864:	e2832001 	add	r2, r3, #1
     868:	e51b3008 	ldr	r3, [fp, #-8]
     86c:	e5832000 	str	r2, [r3]
     870:	e51b3008 	ldr	r3, [fp, #-8]
     874:	e283300c 	add	r3, r3, #12
     878:	e1a00003 	mov	r0, r3
     87c:	ebffffc8 	bl	7a4 <signal>
     880:	e51b3008 	ldr	r3, [fp, #-8]
     884:	e2833004 	add	r3, r3, #4
     888:	e1a00003 	mov	r0, r3
     88c:	ebffff77 	bl	670 <releaseLock>
     890:	e1a00000 	nop			@ (mov r0, r0)
     894:	e24bd004 	sub	sp, fp, #4
     898:	e8bd8800 	pop	{fp, pc}

0000089c <semDown>:
     89c:	e92d4800 	push	{fp, lr}
     8a0:	e28db004 	add	fp, sp, #4
     8a4:	e24dd008 	sub	sp, sp, #8
     8a8:	e50b0008 	str	r0, [fp, #-8]
     8ac:	e51b3008 	ldr	r3, [fp, #-8]
     8b0:	e2833004 	add	r3, r3, #4
     8b4:	e1a00003 	mov	r0, r3
     8b8:	ebffff58 	bl	620 <acquireLock>
     8bc:	ea000006 	b	8dc <semDown+0x40>
     8c0:	e51b3008 	ldr	r3, [fp, #-8]
     8c4:	e283200c 	add	r2, r3, #12
     8c8:	e51b3008 	ldr	r3, [fp, #-8]
     8cc:	e2833004 	add	r3, r3, #4
     8d0:	e1a01003 	mov	r1, r3
     8d4:	e1a00002 	mov	r0, r2
     8d8:	ebffff88 	bl	700 <condWait>
     8dc:	e51b3008 	ldr	r3, [fp, #-8]
     8e0:	e5933000 	ldr	r3, [r3]
     8e4:	e3530000 	cmp	r3, #0
     8e8:	dafffff4 	ble	8c0 <semDown+0x24>
     8ec:	e51b3008 	ldr	r3, [fp, #-8]
     8f0:	e5933000 	ldr	r3, [r3]
     8f4:	e2432001 	sub	r2, r3, #1
     8f8:	e51b3008 	ldr	r3, [fp, #-8]
     8fc:	e5832000 	str	r2, [r3]
     900:	e51b3008 	ldr	r3, [fp, #-8]
     904:	e2833004 	add	r3, r3, #4
     908:	e1a00003 	mov	r0, r3
     90c:	ebffff57 	bl	670 <releaseLock>
     910:	e1a00000 	nop			@ (mov r0, r0)
     914:	e24bd004 	sub	sp, fp, #4
     918:	e8bd8800 	pop	{fp, pc}

0000091c <fork>:
     91c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     920:	e1a04003 	mov	r4, r3
     924:	e1a03002 	mov	r3, r2
     928:	e1a02001 	mov	r2, r1
     92c:	e1a01000 	mov	r1, r0
     930:	e3a00001 	mov	r0, #1
     934:	ef000000 	svc	0x00000000
     938:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     93c:	e12fff1e 	bx	lr

00000940 <exit>:
     940:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     944:	e1a04003 	mov	r4, r3
     948:	e1a03002 	mov	r3, r2
     94c:	e1a02001 	mov	r2, r1
     950:	e1a01000 	mov	r1, r0
     954:	e3a00002 	mov	r0, #2
     958:	ef000000 	svc	0x00000000
     95c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     960:	e12fff1e 	bx	lr

00000964 <wait>:
     964:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     968:	e1a04003 	mov	r4, r3
     96c:	e1a03002 	mov	r3, r2
     970:	e1a02001 	mov	r2, r1
     974:	e1a01000 	mov	r1, r0
     978:	e3a00003 	mov	r0, #3
     97c:	ef000000 	svc	0x00000000
     980:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     984:	e12fff1e 	bx	lr

00000988 <pipe>:
     988:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     98c:	e1a04003 	mov	r4, r3
     990:	e1a03002 	mov	r3, r2
     994:	e1a02001 	mov	r2, r1
     998:	e1a01000 	mov	r1, r0
     99c:	e3a00004 	mov	r0, #4
     9a0:	ef000000 	svc	0x00000000
     9a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a8:	e12fff1e 	bx	lr

000009ac <read>:
     9ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9b0:	e1a04003 	mov	r4, r3
     9b4:	e1a03002 	mov	r3, r2
     9b8:	e1a02001 	mov	r2, r1
     9bc:	e1a01000 	mov	r1, r0
     9c0:	e3a00005 	mov	r0, #5
     9c4:	ef000000 	svc	0x00000000
     9c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9cc:	e12fff1e 	bx	lr

000009d0 <write>:
     9d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9d4:	e1a04003 	mov	r4, r3
     9d8:	e1a03002 	mov	r3, r2
     9dc:	e1a02001 	mov	r2, r1
     9e0:	e1a01000 	mov	r1, r0
     9e4:	e3a00010 	mov	r0, #16
     9e8:	ef000000 	svc	0x00000000
     9ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9f0:	e12fff1e 	bx	lr

000009f4 <close>:
     9f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f8:	e1a04003 	mov	r4, r3
     9fc:	e1a03002 	mov	r3, r2
     a00:	e1a02001 	mov	r2, r1
     a04:	e1a01000 	mov	r1, r0
     a08:	e3a00015 	mov	r0, #21
     a0c:	ef000000 	svc	0x00000000
     a10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a14:	e12fff1e 	bx	lr

00000a18 <kill>:
     a18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a1c:	e1a04003 	mov	r4, r3
     a20:	e1a03002 	mov	r3, r2
     a24:	e1a02001 	mov	r2, r1
     a28:	e1a01000 	mov	r1, r0
     a2c:	e3a00006 	mov	r0, #6
     a30:	ef000000 	svc	0x00000000
     a34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a38:	e12fff1e 	bx	lr

00000a3c <exec>:
     a3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a40:	e1a04003 	mov	r4, r3
     a44:	e1a03002 	mov	r3, r2
     a48:	e1a02001 	mov	r2, r1
     a4c:	e1a01000 	mov	r1, r0
     a50:	e3a00007 	mov	r0, #7
     a54:	ef000000 	svc	0x00000000
     a58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a5c:	e12fff1e 	bx	lr

00000a60 <open>:
     a60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a64:	e1a04003 	mov	r4, r3
     a68:	e1a03002 	mov	r3, r2
     a6c:	e1a02001 	mov	r2, r1
     a70:	e1a01000 	mov	r1, r0
     a74:	e3a0000f 	mov	r0, #15
     a78:	ef000000 	svc	0x00000000
     a7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a80:	e12fff1e 	bx	lr

00000a84 <mknod>:
     a84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a88:	e1a04003 	mov	r4, r3
     a8c:	e1a03002 	mov	r3, r2
     a90:	e1a02001 	mov	r2, r1
     a94:	e1a01000 	mov	r1, r0
     a98:	e3a00011 	mov	r0, #17
     a9c:	ef000000 	svc	0x00000000
     aa0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aa4:	e12fff1e 	bx	lr

00000aa8 <unlink>:
     aa8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aac:	e1a04003 	mov	r4, r3
     ab0:	e1a03002 	mov	r3, r2
     ab4:	e1a02001 	mov	r2, r1
     ab8:	e1a01000 	mov	r1, r0
     abc:	e3a00012 	mov	r0, #18
     ac0:	ef000000 	svc	0x00000000
     ac4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac8:	e12fff1e 	bx	lr

00000acc <fstat>:
     acc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad0:	e1a04003 	mov	r4, r3
     ad4:	e1a03002 	mov	r3, r2
     ad8:	e1a02001 	mov	r2, r1
     adc:	e1a01000 	mov	r1, r0
     ae0:	e3a00008 	mov	r0, #8
     ae4:	ef000000 	svc	0x00000000
     ae8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aec:	e12fff1e 	bx	lr

00000af0 <link>:
     af0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     af4:	e1a04003 	mov	r4, r3
     af8:	e1a03002 	mov	r3, r2
     afc:	e1a02001 	mov	r2, r1
     b00:	e1a01000 	mov	r1, r0
     b04:	e3a00013 	mov	r0, #19
     b08:	ef000000 	svc	0x00000000
     b0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b10:	e12fff1e 	bx	lr

00000b14 <mkdir>:
     b14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b18:	e1a04003 	mov	r4, r3
     b1c:	e1a03002 	mov	r3, r2
     b20:	e1a02001 	mov	r2, r1
     b24:	e1a01000 	mov	r1, r0
     b28:	e3a00014 	mov	r0, #20
     b2c:	ef000000 	svc	0x00000000
     b30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b34:	e12fff1e 	bx	lr

00000b38 <chdir>:
     b38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b3c:	e1a04003 	mov	r4, r3
     b40:	e1a03002 	mov	r3, r2
     b44:	e1a02001 	mov	r2, r1
     b48:	e1a01000 	mov	r1, r0
     b4c:	e3a00009 	mov	r0, #9
     b50:	ef000000 	svc	0x00000000
     b54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b58:	e12fff1e 	bx	lr

00000b5c <dup>:
     b5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b60:	e1a04003 	mov	r4, r3
     b64:	e1a03002 	mov	r3, r2
     b68:	e1a02001 	mov	r2, r1
     b6c:	e1a01000 	mov	r1, r0
     b70:	e3a0000a 	mov	r0, #10
     b74:	ef000000 	svc	0x00000000
     b78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b7c:	e12fff1e 	bx	lr

00000b80 <getpid>:
     b80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b84:	e1a04003 	mov	r4, r3
     b88:	e1a03002 	mov	r3, r2
     b8c:	e1a02001 	mov	r2, r1
     b90:	e1a01000 	mov	r1, r0
     b94:	e3a0000b 	mov	r0, #11
     b98:	ef000000 	svc	0x00000000
     b9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba0:	e12fff1e 	bx	lr

00000ba4 <sbrk>:
     ba4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba8:	e1a04003 	mov	r4, r3
     bac:	e1a03002 	mov	r3, r2
     bb0:	e1a02001 	mov	r2, r1
     bb4:	e1a01000 	mov	r1, r0
     bb8:	e3a0000c 	mov	r0, #12
     bbc:	ef000000 	svc	0x00000000
     bc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc4:	e12fff1e 	bx	lr

00000bc8 <sleep>:
     bc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bcc:	e1a04003 	mov	r4, r3
     bd0:	e1a03002 	mov	r3, r2
     bd4:	e1a02001 	mov	r2, r1
     bd8:	e1a01000 	mov	r1, r0
     bdc:	e3a0000d 	mov	r0, #13
     be0:	ef000000 	svc	0x00000000
     be4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be8:	e12fff1e 	bx	lr

00000bec <uptime>:
     bec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf0:	e1a04003 	mov	r4, r3
     bf4:	e1a03002 	mov	r3, r2
     bf8:	e1a02001 	mov	r2, r1
     bfc:	e1a01000 	mov	r1, r0
     c00:	e3a0000e 	mov	r0, #14
     c04:	ef000000 	svc	0x00000000
     c08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c0c:	e12fff1e 	bx	lr

00000c10 <getprocs>:
     c10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c14:	e1a04003 	mov	r4, r3
     c18:	e1a03002 	mov	r3, r2
     c1c:	e1a02001 	mov	r2, r1
     c20:	e1a01000 	mov	r1, r0
     c24:	e3a00016 	mov	r0, #22
     c28:	ef000000 	svc	0x00000000
     c2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c30:	e12fff1e 	bx	lr

00000c34 <settickets>:
     c34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c38:	e1a04003 	mov	r4, r3
     c3c:	e1a03002 	mov	r3, r2
     c40:	e1a02001 	mov	r2, r1
     c44:	e1a01000 	mov	r1, r0
     c48:	e3a00017 	mov	r0, #23
     c4c:	ef000000 	svc	0x00000000
     c50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c54:	e12fff1e 	bx	lr

00000c58 <srand>:
     c58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c5c:	e1a04003 	mov	r4, r3
     c60:	e1a03002 	mov	r3, r2
     c64:	e1a02001 	mov	r2, r1
     c68:	e1a01000 	mov	r1, r0
     c6c:	e3a00018 	mov	r0, #24
     c70:	ef000000 	svc	0x00000000
     c74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c78:	e12fff1e 	bx	lr

00000c7c <getpinfo>:
     c7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c80:	e1a04003 	mov	r4, r3
     c84:	e1a03002 	mov	r3, r2
     c88:	e1a02001 	mov	r2, r1
     c8c:	e1a01000 	mov	r1, r0
     c90:	e3a00019 	mov	r0, #25
     c94:	ef000000 	svc	0x00000000
     c98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c9c:	e12fff1e 	bx	lr

00000ca0 <dumppagetable>:
     ca0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca4:	e1a04003 	mov	r4, r3
     ca8:	e1a03002 	mov	r3, r2
     cac:	e1a02001 	mov	r2, r1
     cb0:	e1a01000 	mov	r1, r0
     cb4:	e3a0001a 	mov	r0, #26
     cb8:	ef000000 	svc	0x00000000
     cbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc0:	e12fff1e 	bx	lr

00000cc4 <thread_create>:
     cc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc8:	e1a04003 	mov	r4, r3
     ccc:	e1a03002 	mov	r3, r2
     cd0:	e1a02001 	mov	r2, r1
     cd4:	e1a01000 	mov	r1, r0
     cd8:	e3a0001b 	mov	r0, #27
     cdc:	ef000000 	svc	0x00000000
     ce0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce4:	e12fff1e 	bx	lr

00000ce8 <thread_exit>:
     ce8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cec:	e1a04003 	mov	r4, r3
     cf0:	e1a03002 	mov	r3, r2
     cf4:	e1a02001 	mov	r2, r1
     cf8:	e1a01000 	mov	r1, r0
     cfc:	e3a0001c 	mov	r0, #28
     d00:	ef000000 	svc	0x00000000
     d04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d08:	e12fff1e 	bx	lr

00000d0c <thread_join>:
     d0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d10:	e1a04003 	mov	r4, r3
     d14:	e1a03002 	mov	r3, r2
     d18:	e1a02001 	mov	r2, r1
     d1c:	e1a01000 	mov	r1, r0
     d20:	e3a0001d 	mov	r0, #29
     d24:	ef000000 	svc	0x00000000
     d28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d2c:	e12fff1e 	bx	lr

00000d30 <waitpid>:
     d30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d34:	e1a04003 	mov	r4, r3
     d38:	e1a03002 	mov	r3, r2
     d3c:	e1a02001 	mov	r2, r1
     d40:	e1a01000 	mov	r1, r0
     d44:	e3a0001e 	mov	r0, #30
     d48:	ef000000 	svc	0x00000000
     d4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d50:	e12fff1e 	bx	lr

00000d54 <barrier_init>:
     d54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d58:	e1a04003 	mov	r4, r3
     d5c:	e1a03002 	mov	r3, r2
     d60:	e1a02001 	mov	r2, r1
     d64:	e1a01000 	mov	r1, r0
     d68:	e3a0001f 	mov	r0, #31
     d6c:	ef000000 	svc	0x00000000
     d70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d74:	e12fff1e 	bx	lr

00000d78 <barrier_check>:
     d78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d7c:	e1a04003 	mov	r4, r3
     d80:	e1a03002 	mov	r3, r2
     d84:	e1a02001 	mov	r2, r1
     d88:	e1a01000 	mov	r1, r0
     d8c:	e3a00020 	mov	r0, #32
     d90:	ef000000 	svc	0x00000000
     d94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d98:	e12fff1e 	bx	lr

00000d9c <sleepChan>:
     d9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da0:	e1a04003 	mov	r4, r3
     da4:	e1a03002 	mov	r3, r2
     da8:	e1a02001 	mov	r2, r1
     dac:	e1a01000 	mov	r1, r0
     db0:	e3a00024 	mov	r0, #36	@ 0x24
     db4:	ef000000 	svc	0x00000000
     db8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dbc:	e12fff1e 	bx	lr

00000dc0 <getChannel>:
     dc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dc4:	e1a04003 	mov	r4, r3
     dc8:	e1a03002 	mov	r3, r2
     dcc:	e1a02001 	mov	r2, r1
     dd0:	e1a01000 	mov	r1, r0
     dd4:	e3a00025 	mov	r0, #37	@ 0x25
     dd8:	ef000000 	svc	0x00000000
     ddc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     de0:	e12fff1e 	bx	lr

00000de4 <sigChan>:
     de4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     de8:	e1a04003 	mov	r4, r3
     dec:	e1a03002 	mov	r3, r2
     df0:	e1a02001 	mov	r2, r1
     df4:	e1a01000 	mov	r1, r0
     df8:	e3a00026 	mov	r0, #38	@ 0x26
     dfc:	ef000000 	svc	0x00000000
     e00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e04:	e12fff1e 	bx	lr

00000e08 <sigOneChan>:
     e08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e0c:	e1a04003 	mov	r4, r3
     e10:	e1a03002 	mov	r3, r2
     e14:	e1a02001 	mov	r2, r1
     e18:	e1a01000 	mov	r1, r0
     e1c:	e3a00027 	mov	r0, #39	@ 0x27
     e20:	ef000000 	svc	0x00000000
     e24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e28:	e12fff1e 	bx	lr

00000e2c <putc>:
     e2c:	e92d4800 	push	{fp, lr}
     e30:	e28db004 	add	fp, sp, #4
     e34:	e24dd008 	sub	sp, sp, #8
     e38:	e50b0008 	str	r0, [fp, #-8]
     e3c:	e1a03001 	mov	r3, r1
     e40:	e54b3009 	strb	r3, [fp, #-9]
     e44:	e24b3009 	sub	r3, fp, #9
     e48:	e3a02001 	mov	r2, #1
     e4c:	e1a01003 	mov	r1, r3
     e50:	e51b0008 	ldr	r0, [fp, #-8]
     e54:	ebfffedd 	bl	9d0 <write>
     e58:	e1a00000 	nop			@ (mov r0, r0)
     e5c:	e24bd004 	sub	sp, fp, #4
     e60:	e8bd8800 	pop	{fp, pc}

00000e64 <printint>:
     e64:	e92d4800 	push	{fp, lr}
     e68:	e28db004 	add	fp, sp, #4
     e6c:	e24dd030 	sub	sp, sp, #48	@ 0x30
     e70:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     e74:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     e78:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     e7c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     e80:	e3a03000 	mov	r3, #0
     e84:	e50b300c 	str	r3, [fp, #-12]
     e88:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     e8c:	e3530000 	cmp	r3, #0
     e90:	0a000008 	beq	eb8 <printint+0x54>
     e94:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e98:	e3530000 	cmp	r3, #0
     e9c:	aa000005 	bge	eb8 <printint+0x54>
     ea0:	e3a03001 	mov	r3, #1
     ea4:	e50b300c 	str	r3, [fp, #-12]
     ea8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     eac:	e2633000 	rsb	r3, r3, #0
     eb0:	e50b3010 	str	r3, [fp, #-16]
     eb4:	ea000001 	b	ec0 <printint+0x5c>
     eb8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ebc:	e50b3010 	str	r3, [fp, #-16]
     ec0:	e3a03000 	mov	r3, #0
     ec4:	e50b3008 	str	r3, [fp, #-8]
     ec8:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     ecc:	e51b3010 	ldr	r3, [fp, #-16]
     ed0:	e1a01002 	mov	r1, r2
     ed4:	e1a00003 	mov	r0, r3
     ed8:	eb0001d5 	bl	1634 <__aeabi_uidivmod>
     edc:	e1a03001 	mov	r3, r1
     ee0:	e1a01003 	mov	r1, r3
     ee4:	e51b3008 	ldr	r3, [fp, #-8]
     ee8:	e2832001 	add	r2, r3, #1
     eec:	e50b2008 	str	r2, [fp, #-8]
     ef0:	e59f20a0 	ldr	r2, [pc, #160]	@ f98 <printint+0x134>
     ef4:	e7d22001 	ldrb	r2, [r2, r1]
     ef8:	e2433004 	sub	r3, r3, #4
     efc:	e083300b 	add	r3, r3, fp
     f00:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f04:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     f08:	e1a01003 	mov	r1, r3
     f0c:	e51b0010 	ldr	r0, [fp, #-16]
     f10:	eb00018a 	bl	1540 <__udivsi3>
     f14:	e1a03000 	mov	r3, r0
     f18:	e50b3010 	str	r3, [fp, #-16]
     f1c:	e51b3010 	ldr	r3, [fp, #-16]
     f20:	e3530000 	cmp	r3, #0
     f24:	1affffe7 	bne	ec8 <printint+0x64>
     f28:	e51b300c 	ldr	r3, [fp, #-12]
     f2c:	e3530000 	cmp	r3, #0
     f30:	0a00000e 	beq	f70 <printint+0x10c>
     f34:	e51b3008 	ldr	r3, [fp, #-8]
     f38:	e2832001 	add	r2, r3, #1
     f3c:	e50b2008 	str	r2, [fp, #-8]
     f40:	e2433004 	sub	r3, r3, #4
     f44:	e083300b 	add	r3, r3, fp
     f48:	e3a0202d 	mov	r2, #45	@ 0x2d
     f4c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f50:	ea000006 	b	f70 <printint+0x10c>
     f54:	e24b2020 	sub	r2, fp, #32
     f58:	e51b3008 	ldr	r3, [fp, #-8]
     f5c:	e0823003 	add	r3, r2, r3
     f60:	e5d33000 	ldrb	r3, [r3]
     f64:	e1a01003 	mov	r1, r3
     f68:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     f6c:	ebffffae 	bl	e2c <putc>
     f70:	e51b3008 	ldr	r3, [fp, #-8]
     f74:	e2433001 	sub	r3, r3, #1
     f78:	e50b3008 	str	r3, [fp, #-8]
     f7c:	e51b3008 	ldr	r3, [fp, #-8]
     f80:	e3530000 	cmp	r3, #0
     f84:	aafffff2 	bge	f54 <printint+0xf0>
     f88:	e1a00000 	nop			@ (mov r0, r0)
     f8c:	e1a00000 	nop			@ (mov r0, r0)
     f90:	e24bd004 	sub	sp, fp, #4
     f94:	e8bd8800 	pop	{fp, pc}
     f98:	00001690 	.word	0x00001690

00000f9c <printf>:
     f9c:	e92d000e 	push	{r1, r2, r3}
     fa0:	e92d4800 	push	{fp, lr}
     fa4:	e28db004 	add	fp, sp, #4
     fa8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     fac:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     fb0:	e3a03000 	mov	r3, #0
     fb4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     fb8:	e28b3008 	add	r3, fp, #8
     fbc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fc0:	e3a03000 	mov	r3, #0
     fc4:	e50b3010 	str	r3, [fp, #-16]
     fc8:	ea000074 	b	11a0 <printf+0x204>
     fcc:	e59b2004 	ldr	r2, [fp, #4]
     fd0:	e51b3010 	ldr	r3, [fp, #-16]
     fd4:	e0823003 	add	r3, r2, r3
     fd8:	e5d33000 	ldrb	r3, [r3]
     fdc:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     fe0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     fe4:	e3530000 	cmp	r3, #0
     fe8:	1a00000b 	bne	101c <printf+0x80>
     fec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ff0:	e3530025 	cmp	r3, #37	@ 0x25
     ff4:	1a000002 	bne	1004 <printf+0x68>
     ff8:	e3a03025 	mov	r3, #37	@ 0x25
     ffc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1000:	ea000063 	b	1194 <printf+0x1f8>
    1004:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1008:	e6ef3073 	uxtb	r3, r3
    100c:	e1a01003 	mov	r1, r3
    1010:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1014:	ebffff84 	bl	e2c <putc>
    1018:	ea00005d 	b	1194 <printf+0x1f8>
    101c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1020:	e3530025 	cmp	r3, #37	@ 0x25
    1024:	1a00005a 	bne	1194 <printf+0x1f8>
    1028:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    102c:	e3530064 	cmp	r3, #100	@ 0x64
    1030:	1a00000a 	bne	1060 <printf+0xc4>
    1034:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1038:	e5933000 	ldr	r3, [r3]
    103c:	e1a01003 	mov	r1, r3
    1040:	e3a03001 	mov	r3, #1
    1044:	e3a0200a 	mov	r2, #10
    1048:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    104c:	ebffff84 	bl	e64 <printint>
    1050:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1054:	e2833004 	add	r3, r3, #4
    1058:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    105c:	ea00004a 	b	118c <printf+0x1f0>
    1060:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1064:	e3530078 	cmp	r3, #120	@ 0x78
    1068:	0a000002 	beq	1078 <printf+0xdc>
    106c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1070:	e3530070 	cmp	r3, #112	@ 0x70
    1074:	1a00000a 	bne	10a4 <printf+0x108>
    1078:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    107c:	e5933000 	ldr	r3, [r3]
    1080:	e1a01003 	mov	r1, r3
    1084:	e3a03000 	mov	r3, #0
    1088:	e3a02010 	mov	r2, #16
    108c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1090:	ebffff73 	bl	e64 <printint>
    1094:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1098:	e2833004 	add	r3, r3, #4
    109c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10a0:	ea000039 	b	118c <printf+0x1f0>
    10a4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10a8:	e3530073 	cmp	r3, #115	@ 0x73
    10ac:	1a000018 	bne	1114 <printf+0x178>
    10b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10b4:	e5933000 	ldr	r3, [r3]
    10b8:	e50b300c 	str	r3, [fp, #-12]
    10bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10c0:	e2833004 	add	r3, r3, #4
    10c4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10c8:	e51b300c 	ldr	r3, [fp, #-12]
    10cc:	e3530000 	cmp	r3, #0
    10d0:	1a00000a 	bne	1100 <printf+0x164>
    10d4:	e59f30f4 	ldr	r3, [pc, #244]	@ 11d0 <printf+0x234>
    10d8:	e50b300c 	str	r3, [fp, #-12]
    10dc:	ea000007 	b	1100 <printf+0x164>
    10e0:	e51b300c 	ldr	r3, [fp, #-12]
    10e4:	e5d33000 	ldrb	r3, [r3]
    10e8:	e1a01003 	mov	r1, r3
    10ec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10f0:	ebffff4d 	bl	e2c <putc>
    10f4:	e51b300c 	ldr	r3, [fp, #-12]
    10f8:	e2833001 	add	r3, r3, #1
    10fc:	e50b300c 	str	r3, [fp, #-12]
    1100:	e51b300c 	ldr	r3, [fp, #-12]
    1104:	e5d33000 	ldrb	r3, [r3]
    1108:	e3530000 	cmp	r3, #0
    110c:	1afffff3 	bne	10e0 <printf+0x144>
    1110:	ea00001d 	b	118c <printf+0x1f0>
    1114:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1118:	e3530063 	cmp	r3, #99	@ 0x63
    111c:	1a000009 	bne	1148 <printf+0x1ac>
    1120:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1124:	e5933000 	ldr	r3, [r3]
    1128:	e6ef3073 	uxtb	r3, r3
    112c:	e1a01003 	mov	r1, r3
    1130:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1134:	ebffff3c 	bl	e2c <putc>
    1138:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    113c:	e2833004 	add	r3, r3, #4
    1140:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1144:	ea000010 	b	118c <printf+0x1f0>
    1148:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    114c:	e3530025 	cmp	r3, #37	@ 0x25
    1150:	1a000005 	bne	116c <printf+0x1d0>
    1154:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1158:	e6ef3073 	uxtb	r3, r3
    115c:	e1a01003 	mov	r1, r3
    1160:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1164:	ebffff30 	bl	e2c <putc>
    1168:	ea000007 	b	118c <printf+0x1f0>
    116c:	e3a01025 	mov	r1, #37	@ 0x25
    1170:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1174:	ebffff2c 	bl	e2c <putc>
    1178:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    117c:	e6ef3073 	uxtb	r3, r3
    1180:	e1a01003 	mov	r1, r3
    1184:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1188:	ebffff27 	bl	e2c <putc>
    118c:	e3a03000 	mov	r3, #0
    1190:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1194:	e51b3010 	ldr	r3, [fp, #-16]
    1198:	e2833001 	add	r3, r3, #1
    119c:	e50b3010 	str	r3, [fp, #-16]
    11a0:	e59b2004 	ldr	r2, [fp, #4]
    11a4:	e51b3010 	ldr	r3, [fp, #-16]
    11a8:	e0823003 	add	r3, r2, r3
    11ac:	e5d33000 	ldrb	r3, [r3]
    11b0:	e3530000 	cmp	r3, #0
    11b4:	1affff84 	bne	fcc <printf+0x30>
    11b8:	e1a00000 	nop			@ (mov r0, r0)
    11bc:	e1a00000 	nop			@ (mov r0, r0)
    11c0:	e24bd004 	sub	sp, fp, #4
    11c4:	e8bd4800 	pop	{fp, lr}
    11c8:	e28dd00c 	add	sp, sp, #12
    11cc:	e12fff1e 	bx	lr
    11d0:	00001688 	.word	0x00001688

000011d4 <free>:
    11d4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    11d8:	e28db000 	add	fp, sp, #0
    11dc:	e24dd014 	sub	sp, sp, #20
    11e0:	e50b0010 	str	r0, [fp, #-16]
    11e4:	e51b3010 	ldr	r3, [fp, #-16]
    11e8:	e2433008 	sub	r3, r3, #8
    11ec:	e50b300c 	str	r3, [fp, #-12]
    11f0:	e59f3154 	ldr	r3, [pc, #340]	@ 134c <free+0x178>
    11f4:	e5933000 	ldr	r3, [r3]
    11f8:	e50b3008 	str	r3, [fp, #-8]
    11fc:	ea000010 	b	1244 <free+0x70>
    1200:	e51b3008 	ldr	r3, [fp, #-8]
    1204:	e5933000 	ldr	r3, [r3]
    1208:	e51b2008 	ldr	r2, [fp, #-8]
    120c:	e1520003 	cmp	r2, r3
    1210:	3a000008 	bcc	1238 <free+0x64>
    1214:	e51b200c 	ldr	r2, [fp, #-12]
    1218:	e51b3008 	ldr	r3, [fp, #-8]
    121c:	e1520003 	cmp	r2, r3
    1220:	8a000010 	bhi	1268 <free+0x94>
    1224:	e51b3008 	ldr	r3, [fp, #-8]
    1228:	e5933000 	ldr	r3, [r3]
    122c:	e51b200c 	ldr	r2, [fp, #-12]
    1230:	e1520003 	cmp	r2, r3
    1234:	3a00000b 	bcc	1268 <free+0x94>
    1238:	e51b3008 	ldr	r3, [fp, #-8]
    123c:	e5933000 	ldr	r3, [r3]
    1240:	e50b3008 	str	r3, [fp, #-8]
    1244:	e51b200c 	ldr	r2, [fp, #-12]
    1248:	e51b3008 	ldr	r3, [fp, #-8]
    124c:	e1520003 	cmp	r2, r3
    1250:	9affffea 	bls	1200 <free+0x2c>
    1254:	e51b3008 	ldr	r3, [fp, #-8]
    1258:	e5933000 	ldr	r3, [r3]
    125c:	e51b200c 	ldr	r2, [fp, #-12]
    1260:	e1520003 	cmp	r2, r3
    1264:	2affffe5 	bcs	1200 <free+0x2c>
    1268:	e51b300c 	ldr	r3, [fp, #-12]
    126c:	e5933004 	ldr	r3, [r3, #4]
    1270:	e1a03183 	lsl	r3, r3, #3
    1274:	e51b200c 	ldr	r2, [fp, #-12]
    1278:	e0822003 	add	r2, r2, r3
    127c:	e51b3008 	ldr	r3, [fp, #-8]
    1280:	e5933000 	ldr	r3, [r3]
    1284:	e1520003 	cmp	r2, r3
    1288:	1a00000d 	bne	12c4 <free+0xf0>
    128c:	e51b300c 	ldr	r3, [fp, #-12]
    1290:	e5932004 	ldr	r2, [r3, #4]
    1294:	e51b3008 	ldr	r3, [fp, #-8]
    1298:	e5933000 	ldr	r3, [r3]
    129c:	e5933004 	ldr	r3, [r3, #4]
    12a0:	e0822003 	add	r2, r2, r3
    12a4:	e51b300c 	ldr	r3, [fp, #-12]
    12a8:	e5832004 	str	r2, [r3, #4]
    12ac:	e51b3008 	ldr	r3, [fp, #-8]
    12b0:	e5933000 	ldr	r3, [r3]
    12b4:	e5932000 	ldr	r2, [r3]
    12b8:	e51b300c 	ldr	r3, [fp, #-12]
    12bc:	e5832000 	str	r2, [r3]
    12c0:	ea000003 	b	12d4 <free+0x100>
    12c4:	e51b3008 	ldr	r3, [fp, #-8]
    12c8:	e5932000 	ldr	r2, [r3]
    12cc:	e51b300c 	ldr	r3, [fp, #-12]
    12d0:	e5832000 	str	r2, [r3]
    12d4:	e51b3008 	ldr	r3, [fp, #-8]
    12d8:	e5933004 	ldr	r3, [r3, #4]
    12dc:	e1a03183 	lsl	r3, r3, #3
    12e0:	e51b2008 	ldr	r2, [fp, #-8]
    12e4:	e0823003 	add	r3, r2, r3
    12e8:	e51b200c 	ldr	r2, [fp, #-12]
    12ec:	e1520003 	cmp	r2, r3
    12f0:	1a00000b 	bne	1324 <free+0x150>
    12f4:	e51b3008 	ldr	r3, [fp, #-8]
    12f8:	e5932004 	ldr	r2, [r3, #4]
    12fc:	e51b300c 	ldr	r3, [fp, #-12]
    1300:	e5933004 	ldr	r3, [r3, #4]
    1304:	e0822003 	add	r2, r2, r3
    1308:	e51b3008 	ldr	r3, [fp, #-8]
    130c:	e5832004 	str	r2, [r3, #4]
    1310:	e51b300c 	ldr	r3, [fp, #-12]
    1314:	e5932000 	ldr	r2, [r3]
    1318:	e51b3008 	ldr	r3, [fp, #-8]
    131c:	e5832000 	str	r2, [r3]
    1320:	ea000002 	b	1330 <free+0x15c>
    1324:	e51b3008 	ldr	r3, [fp, #-8]
    1328:	e51b200c 	ldr	r2, [fp, #-12]
    132c:	e5832000 	str	r2, [r3]
    1330:	e59f2014 	ldr	r2, [pc, #20]	@ 134c <free+0x178>
    1334:	e51b3008 	ldr	r3, [fp, #-8]
    1338:	e5823000 	str	r3, [r2]
    133c:	e1a00000 	nop			@ (mov r0, r0)
    1340:	e28bd000 	add	sp, fp, #0
    1344:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1348:	e12fff1e 	bx	lr
    134c:	000016ac 	.word	0x000016ac

00001350 <morecore>:
    1350:	e92d4800 	push	{fp, lr}
    1354:	e28db004 	add	fp, sp, #4
    1358:	e24dd010 	sub	sp, sp, #16
    135c:	e50b0010 	str	r0, [fp, #-16]
    1360:	e51b3010 	ldr	r3, [fp, #-16]
    1364:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1368:	2a000001 	bcs	1374 <morecore+0x24>
    136c:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1370:	e50b3010 	str	r3, [fp, #-16]
    1374:	e51b3010 	ldr	r3, [fp, #-16]
    1378:	e1a03183 	lsl	r3, r3, #3
    137c:	e1a00003 	mov	r0, r3
    1380:	ebfffe07 	bl	ba4 <sbrk>
    1384:	e50b0008 	str	r0, [fp, #-8]
    1388:	e51b3008 	ldr	r3, [fp, #-8]
    138c:	e3730001 	cmn	r3, #1
    1390:	1a000001 	bne	139c <morecore+0x4c>
    1394:	e3a03000 	mov	r3, #0
    1398:	ea00000a 	b	13c8 <morecore+0x78>
    139c:	e51b3008 	ldr	r3, [fp, #-8]
    13a0:	e50b300c 	str	r3, [fp, #-12]
    13a4:	e51b300c 	ldr	r3, [fp, #-12]
    13a8:	e51b2010 	ldr	r2, [fp, #-16]
    13ac:	e5832004 	str	r2, [r3, #4]
    13b0:	e51b300c 	ldr	r3, [fp, #-12]
    13b4:	e2833008 	add	r3, r3, #8
    13b8:	e1a00003 	mov	r0, r3
    13bc:	ebffff84 	bl	11d4 <free>
    13c0:	e59f300c 	ldr	r3, [pc, #12]	@ 13d4 <morecore+0x84>
    13c4:	e5933000 	ldr	r3, [r3]
    13c8:	e1a00003 	mov	r0, r3
    13cc:	e24bd004 	sub	sp, fp, #4
    13d0:	e8bd8800 	pop	{fp, pc}
    13d4:	000016ac 	.word	0x000016ac

000013d8 <malloc>:
    13d8:	e92d4800 	push	{fp, lr}
    13dc:	e28db004 	add	fp, sp, #4
    13e0:	e24dd018 	sub	sp, sp, #24
    13e4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    13e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13ec:	e2833007 	add	r3, r3, #7
    13f0:	e1a031a3 	lsr	r3, r3, #3
    13f4:	e2833001 	add	r3, r3, #1
    13f8:	e50b3010 	str	r3, [fp, #-16]
    13fc:	e59f3134 	ldr	r3, [pc, #308]	@ 1538 <malloc+0x160>
    1400:	e5933000 	ldr	r3, [r3]
    1404:	e50b300c 	str	r3, [fp, #-12]
    1408:	e51b300c 	ldr	r3, [fp, #-12]
    140c:	e3530000 	cmp	r3, #0
    1410:	1a00000b 	bne	1444 <malloc+0x6c>
    1414:	e59f3120 	ldr	r3, [pc, #288]	@ 153c <malloc+0x164>
    1418:	e50b300c 	str	r3, [fp, #-12]
    141c:	e59f2114 	ldr	r2, [pc, #276]	@ 1538 <malloc+0x160>
    1420:	e51b300c 	ldr	r3, [fp, #-12]
    1424:	e5823000 	str	r3, [r2]
    1428:	e59f3108 	ldr	r3, [pc, #264]	@ 1538 <malloc+0x160>
    142c:	e5933000 	ldr	r3, [r3]
    1430:	e59f2104 	ldr	r2, [pc, #260]	@ 153c <malloc+0x164>
    1434:	e5823000 	str	r3, [r2]
    1438:	e59f30fc 	ldr	r3, [pc, #252]	@ 153c <malloc+0x164>
    143c:	e3a02000 	mov	r2, #0
    1440:	e5832004 	str	r2, [r3, #4]
    1444:	e51b300c 	ldr	r3, [fp, #-12]
    1448:	e5933000 	ldr	r3, [r3]
    144c:	e50b3008 	str	r3, [fp, #-8]
    1450:	e51b3008 	ldr	r3, [fp, #-8]
    1454:	e5933004 	ldr	r3, [r3, #4]
    1458:	e51b2010 	ldr	r2, [fp, #-16]
    145c:	e1520003 	cmp	r2, r3
    1460:	8a00001e 	bhi	14e0 <malloc+0x108>
    1464:	e51b3008 	ldr	r3, [fp, #-8]
    1468:	e5933004 	ldr	r3, [r3, #4]
    146c:	e51b2010 	ldr	r2, [fp, #-16]
    1470:	e1520003 	cmp	r2, r3
    1474:	1a000004 	bne	148c <malloc+0xb4>
    1478:	e51b3008 	ldr	r3, [fp, #-8]
    147c:	e5932000 	ldr	r2, [r3]
    1480:	e51b300c 	ldr	r3, [fp, #-12]
    1484:	e5832000 	str	r2, [r3]
    1488:	ea00000e 	b	14c8 <malloc+0xf0>
    148c:	e51b3008 	ldr	r3, [fp, #-8]
    1490:	e5932004 	ldr	r2, [r3, #4]
    1494:	e51b3010 	ldr	r3, [fp, #-16]
    1498:	e0422003 	sub	r2, r2, r3
    149c:	e51b3008 	ldr	r3, [fp, #-8]
    14a0:	e5832004 	str	r2, [r3, #4]
    14a4:	e51b3008 	ldr	r3, [fp, #-8]
    14a8:	e5933004 	ldr	r3, [r3, #4]
    14ac:	e1a03183 	lsl	r3, r3, #3
    14b0:	e51b2008 	ldr	r2, [fp, #-8]
    14b4:	e0823003 	add	r3, r2, r3
    14b8:	e50b3008 	str	r3, [fp, #-8]
    14bc:	e51b3008 	ldr	r3, [fp, #-8]
    14c0:	e51b2010 	ldr	r2, [fp, #-16]
    14c4:	e5832004 	str	r2, [r3, #4]
    14c8:	e59f2068 	ldr	r2, [pc, #104]	@ 1538 <malloc+0x160>
    14cc:	e51b300c 	ldr	r3, [fp, #-12]
    14d0:	e5823000 	str	r3, [r2]
    14d4:	e51b3008 	ldr	r3, [fp, #-8]
    14d8:	e2833008 	add	r3, r3, #8
    14dc:	ea000012 	b	152c <malloc+0x154>
    14e0:	e59f3050 	ldr	r3, [pc, #80]	@ 1538 <malloc+0x160>
    14e4:	e5933000 	ldr	r3, [r3]
    14e8:	e51b2008 	ldr	r2, [fp, #-8]
    14ec:	e1520003 	cmp	r2, r3
    14f0:	1a000007 	bne	1514 <malloc+0x13c>
    14f4:	e51b0010 	ldr	r0, [fp, #-16]
    14f8:	ebffff94 	bl	1350 <morecore>
    14fc:	e50b0008 	str	r0, [fp, #-8]
    1500:	e51b3008 	ldr	r3, [fp, #-8]
    1504:	e3530000 	cmp	r3, #0
    1508:	1a000001 	bne	1514 <malloc+0x13c>
    150c:	e3a03000 	mov	r3, #0
    1510:	ea000005 	b	152c <malloc+0x154>
    1514:	e51b3008 	ldr	r3, [fp, #-8]
    1518:	e50b300c 	str	r3, [fp, #-12]
    151c:	e51b3008 	ldr	r3, [fp, #-8]
    1520:	e5933000 	ldr	r3, [r3]
    1524:	e50b3008 	str	r3, [fp, #-8]
    1528:	eaffffc8 	b	1450 <malloc+0x78>
    152c:	e1a00003 	mov	r0, r3
    1530:	e24bd004 	sub	sp, fp, #4
    1534:	e8bd8800 	pop	{fp, pc}
    1538:	000016ac 	.word	0x000016ac
    153c:	000016a4 	.word	0x000016a4

00001540 <__udivsi3>:
    1540:	e2512001 	subs	r2, r1, #1
    1544:	012fff1e 	bxeq	lr
    1548:	3a000036 	bcc	1628 <__udivsi3+0xe8>
    154c:	e1500001 	cmp	r0, r1
    1550:	9a000022 	bls	15e0 <__udivsi3+0xa0>
    1554:	e1110002 	tst	r1, r2
    1558:	0a000023 	beq	15ec <__udivsi3+0xac>
    155c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1560:	01a01181 	lsleq	r1, r1, #3
    1564:	03a03008 	moveq	r3, #8
    1568:	13a03001 	movne	r3, #1
    156c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1570:	31510000 	cmpcc	r1, r0
    1574:	31a01201 	lslcc	r1, r1, #4
    1578:	31a03203 	lslcc	r3, r3, #4
    157c:	3afffffa 	bcc	156c <__udivsi3+0x2c>
    1580:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1584:	31510000 	cmpcc	r1, r0
    1588:	31a01081 	lslcc	r1, r1, #1
    158c:	31a03083 	lslcc	r3, r3, #1
    1590:	3afffffa 	bcc	1580 <__udivsi3+0x40>
    1594:	e3a02000 	mov	r2, #0
    1598:	e1500001 	cmp	r0, r1
    159c:	20400001 	subcs	r0, r0, r1
    15a0:	21822003 	orrcs	r2, r2, r3
    15a4:	e15000a1 	cmp	r0, r1, lsr #1
    15a8:	204000a1 	subcs	r0, r0, r1, lsr #1
    15ac:	218220a3 	orrcs	r2, r2, r3, lsr #1
    15b0:	e1500121 	cmp	r0, r1, lsr #2
    15b4:	20400121 	subcs	r0, r0, r1, lsr #2
    15b8:	21822123 	orrcs	r2, r2, r3, lsr #2
    15bc:	e15001a1 	cmp	r0, r1, lsr #3
    15c0:	204001a1 	subcs	r0, r0, r1, lsr #3
    15c4:	218221a3 	orrcs	r2, r2, r3, lsr #3
    15c8:	e3500000 	cmp	r0, #0
    15cc:	11b03223 	lsrsne	r3, r3, #4
    15d0:	11a01221 	lsrne	r1, r1, #4
    15d4:	1affffef 	bne	1598 <__udivsi3+0x58>
    15d8:	e1a00002 	mov	r0, r2
    15dc:	e12fff1e 	bx	lr
    15e0:	03a00001 	moveq	r0, #1
    15e4:	13a00000 	movne	r0, #0
    15e8:	e12fff1e 	bx	lr
    15ec:	e3510801 	cmp	r1, #65536	@ 0x10000
    15f0:	21a01821 	lsrcs	r1, r1, #16
    15f4:	23a02010 	movcs	r2, #16
    15f8:	33a02000 	movcc	r2, #0
    15fc:	e3510c01 	cmp	r1, #256	@ 0x100
    1600:	21a01421 	lsrcs	r1, r1, #8
    1604:	22822008 	addcs	r2, r2, #8
    1608:	e3510010 	cmp	r1, #16
    160c:	21a01221 	lsrcs	r1, r1, #4
    1610:	22822004 	addcs	r2, r2, #4
    1614:	e3510004 	cmp	r1, #4
    1618:	82822003 	addhi	r2, r2, #3
    161c:	908220a1 	addls	r2, r2, r1, lsr #1
    1620:	e1a00230 	lsr	r0, r0, r2
    1624:	e12fff1e 	bx	lr
    1628:	e3500000 	cmp	r0, #0
    162c:	13e00000 	mvnne	r0, #0
    1630:	ea000007 	b	1654 <__aeabi_idiv0>

00001634 <__aeabi_uidivmod>:
    1634:	e3510000 	cmp	r1, #0
    1638:	0afffffa 	beq	1628 <__udivsi3+0xe8>
    163c:	e92d4003 	push	{r0, r1, lr}
    1640:	ebffffbe 	bl	1540 <__udivsi3>
    1644:	e8bd4006 	pop	{r1, r2, lr}
    1648:	e0030092 	mul	r3, r2, r0
    164c:	e0411003 	sub	r1, r1, r3
    1650:	e12fff1e 	bx	lr

00001654 <__aeabi_idiv0>:
    1654:	e12fff1e 	bx	lr
