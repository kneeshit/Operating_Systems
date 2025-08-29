
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
      28:	eb000283 	bl	a3c <printf>
      2c:	eb000169 	bl	5d8 <exit>
      30:	e3a03001 	mov	r3, #1
      34:	e50b3008 	str	r3, [fp, #-8]
      38:	ea000016 	b	98 <main+0x98>
      3c:	e51b3008 	ldr	r3, [fp, #-8]
      40:	e1a03103 	lsl	r3, r3, #2
      44:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      48:	e0823003 	add	r3, r2, r3
      4c:	e5933000 	ldr	r3, [r3]
      50:	e1a00003 	mov	r0, r3
      54:	eb0001b9 	bl	740 <unlink>
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
      84:	eb00026c 	bl	a3c <printf>
      88:	ea000006 	b	a8 <main+0xa8>
      8c:	e51b3008 	ldr	r3, [fp, #-8]
      90:	e2833001 	add	r3, r3, #1
      94:	e50b3008 	str	r3, [fp, #-8]
      98:	e51b2008 	ldr	r2, [fp, #-8]
      9c:	e51b3010 	ldr	r3, [fp, #-16]
      a0:	e1520003 	cmp	r2, r3
      a4:	baffffe4 	blt	3c <main+0x3c>
      a8:	eb00014a 	bl	5d8 <exit>
      ac:	000010f8 	.word	0x000010f8
      b0:	0000110c 	.word	0x0000110c

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
     3a8:	eb0000a5 	bl	644 <read>
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
     450:	eb0000a8 	bl	6f8 <open>
     454:	e50b0008 	str	r0, [fp, #-8]
     458:	e51b3008 	ldr	r3, [fp, #-8]
     45c:	e3530000 	cmp	r3, #0
     460:	aa000001 	bge	46c <stat+0x38>
     464:	e3e03000 	mvn	r3, #0
     468:	ea000006 	b	488 <stat+0x54>
     46c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     470:	e51b0008 	ldr	r0, [fp, #-8]
     474:	eb0000ba 	bl	764 <fstat>
     478:	e50b000c 	str	r0, [fp, #-12]
     47c:	e51b0008 	ldr	r0, [fp, #-8]
     480:	eb000081 	bl	68c <close>
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
     50c:	e353002f 	cmp	r3, #47	@ 0x2f
     510:	9a000003 	bls	524 <atoi+0x90>
     514:	e51b3010 	ldr	r3, [fp, #-16]
     518:	e5d33000 	ldrb	r3, [r3]
     51c:	e3530039 	cmp	r3, #57	@ 0x39
     520:	9a000001 	bls	52c <atoi+0x98>
     524:	e3e03000 	mvn	r3, #0
     528:	ea000000 	b	530 <atoi+0x9c>
     52c:	e51b3008 	ldr	r3, [fp, #-8]
     530:	e1a00003 	mov	r0, r3
     534:	e28bd000 	add	sp, fp, #0
     538:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     53c:	e12fff1e 	bx	lr

00000540 <memmove>:
     540:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     544:	e28db000 	add	fp, sp, #0
     548:	e24dd01c 	sub	sp, sp, #28
     54c:	e50b0010 	str	r0, [fp, #-16]
     550:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     554:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     558:	e51b3010 	ldr	r3, [fp, #-16]
     55c:	e50b3008 	str	r3, [fp, #-8]
     560:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     564:	e50b300c 	str	r3, [fp, #-12]
     568:	ea000007 	b	58c <memmove+0x4c>
     56c:	e51b200c 	ldr	r2, [fp, #-12]
     570:	e2823001 	add	r3, r2, #1
     574:	e50b300c 	str	r3, [fp, #-12]
     578:	e51b3008 	ldr	r3, [fp, #-8]
     57c:	e2831001 	add	r1, r3, #1
     580:	e50b1008 	str	r1, [fp, #-8]
     584:	e5d22000 	ldrb	r2, [r2]
     588:	e5c32000 	strb	r2, [r3]
     58c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     590:	e2432001 	sub	r2, r3, #1
     594:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     598:	e3530000 	cmp	r3, #0
     59c:	cafffff2 	bgt	56c <memmove+0x2c>
     5a0:	e51b3010 	ldr	r3, [fp, #-16]
     5a4:	e1a00003 	mov	r0, r3
     5a8:	e28bd000 	add	sp, fp, #0
     5ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5b0:	e12fff1e 	bx	lr

000005b4 <fork>:
     5b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5b8:	e1a04003 	mov	r4, r3
     5bc:	e1a03002 	mov	r3, r2
     5c0:	e1a02001 	mov	r2, r1
     5c4:	e1a01000 	mov	r1, r0
     5c8:	e3a00001 	mov	r0, #1
     5cc:	ef000000 	svc	0x00000000
     5d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5d4:	e12fff1e 	bx	lr

000005d8 <exit>:
     5d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5dc:	e1a04003 	mov	r4, r3
     5e0:	e1a03002 	mov	r3, r2
     5e4:	e1a02001 	mov	r2, r1
     5e8:	e1a01000 	mov	r1, r0
     5ec:	e3a00002 	mov	r0, #2
     5f0:	ef000000 	svc	0x00000000
     5f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5f8:	e12fff1e 	bx	lr

000005fc <wait>:
     5fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     600:	e1a04003 	mov	r4, r3
     604:	e1a03002 	mov	r3, r2
     608:	e1a02001 	mov	r2, r1
     60c:	e1a01000 	mov	r1, r0
     610:	e3a00003 	mov	r0, #3
     614:	ef000000 	svc	0x00000000
     618:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     61c:	e12fff1e 	bx	lr

00000620 <pipe>:
     620:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     624:	e1a04003 	mov	r4, r3
     628:	e1a03002 	mov	r3, r2
     62c:	e1a02001 	mov	r2, r1
     630:	e1a01000 	mov	r1, r0
     634:	e3a00004 	mov	r0, #4
     638:	ef000000 	svc	0x00000000
     63c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     640:	e12fff1e 	bx	lr

00000644 <read>:
     644:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     648:	e1a04003 	mov	r4, r3
     64c:	e1a03002 	mov	r3, r2
     650:	e1a02001 	mov	r2, r1
     654:	e1a01000 	mov	r1, r0
     658:	e3a00005 	mov	r0, #5
     65c:	ef000000 	svc	0x00000000
     660:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     664:	e12fff1e 	bx	lr

00000668 <write>:
     668:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     66c:	e1a04003 	mov	r4, r3
     670:	e1a03002 	mov	r3, r2
     674:	e1a02001 	mov	r2, r1
     678:	e1a01000 	mov	r1, r0
     67c:	e3a00010 	mov	r0, #16
     680:	ef000000 	svc	0x00000000
     684:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     688:	e12fff1e 	bx	lr

0000068c <close>:
     68c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     690:	e1a04003 	mov	r4, r3
     694:	e1a03002 	mov	r3, r2
     698:	e1a02001 	mov	r2, r1
     69c:	e1a01000 	mov	r1, r0
     6a0:	e3a00015 	mov	r0, #21
     6a4:	ef000000 	svc	0x00000000
     6a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6ac:	e12fff1e 	bx	lr

000006b0 <kill>:
     6b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6b4:	e1a04003 	mov	r4, r3
     6b8:	e1a03002 	mov	r3, r2
     6bc:	e1a02001 	mov	r2, r1
     6c0:	e1a01000 	mov	r1, r0
     6c4:	e3a00006 	mov	r0, #6
     6c8:	ef000000 	svc	0x00000000
     6cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6d0:	e12fff1e 	bx	lr

000006d4 <exec>:
     6d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6d8:	e1a04003 	mov	r4, r3
     6dc:	e1a03002 	mov	r3, r2
     6e0:	e1a02001 	mov	r2, r1
     6e4:	e1a01000 	mov	r1, r0
     6e8:	e3a00007 	mov	r0, #7
     6ec:	ef000000 	svc	0x00000000
     6f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6f4:	e12fff1e 	bx	lr

000006f8 <open>:
     6f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6fc:	e1a04003 	mov	r4, r3
     700:	e1a03002 	mov	r3, r2
     704:	e1a02001 	mov	r2, r1
     708:	e1a01000 	mov	r1, r0
     70c:	e3a0000f 	mov	r0, #15
     710:	ef000000 	svc	0x00000000
     714:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     718:	e12fff1e 	bx	lr

0000071c <mknod>:
     71c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     720:	e1a04003 	mov	r4, r3
     724:	e1a03002 	mov	r3, r2
     728:	e1a02001 	mov	r2, r1
     72c:	e1a01000 	mov	r1, r0
     730:	e3a00011 	mov	r0, #17
     734:	ef000000 	svc	0x00000000
     738:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     73c:	e12fff1e 	bx	lr

00000740 <unlink>:
     740:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     744:	e1a04003 	mov	r4, r3
     748:	e1a03002 	mov	r3, r2
     74c:	e1a02001 	mov	r2, r1
     750:	e1a01000 	mov	r1, r0
     754:	e3a00012 	mov	r0, #18
     758:	ef000000 	svc	0x00000000
     75c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     760:	e12fff1e 	bx	lr

00000764 <fstat>:
     764:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     768:	e1a04003 	mov	r4, r3
     76c:	e1a03002 	mov	r3, r2
     770:	e1a02001 	mov	r2, r1
     774:	e1a01000 	mov	r1, r0
     778:	e3a00008 	mov	r0, #8
     77c:	ef000000 	svc	0x00000000
     780:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     784:	e12fff1e 	bx	lr

00000788 <link>:
     788:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     78c:	e1a04003 	mov	r4, r3
     790:	e1a03002 	mov	r3, r2
     794:	e1a02001 	mov	r2, r1
     798:	e1a01000 	mov	r1, r0
     79c:	e3a00013 	mov	r0, #19
     7a0:	ef000000 	svc	0x00000000
     7a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7a8:	e12fff1e 	bx	lr

000007ac <mkdir>:
     7ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7b0:	e1a04003 	mov	r4, r3
     7b4:	e1a03002 	mov	r3, r2
     7b8:	e1a02001 	mov	r2, r1
     7bc:	e1a01000 	mov	r1, r0
     7c0:	e3a00014 	mov	r0, #20
     7c4:	ef000000 	svc	0x00000000
     7c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7cc:	e12fff1e 	bx	lr

000007d0 <chdir>:
     7d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7d4:	e1a04003 	mov	r4, r3
     7d8:	e1a03002 	mov	r3, r2
     7dc:	e1a02001 	mov	r2, r1
     7e0:	e1a01000 	mov	r1, r0
     7e4:	e3a00009 	mov	r0, #9
     7e8:	ef000000 	svc	0x00000000
     7ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7f0:	e12fff1e 	bx	lr

000007f4 <dup>:
     7f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f8:	e1a04003 	mov	r4, r3
     7fc:	e1a03002 	mov	r3, r2
     800:	e1a02001 	mov	r2, r1
     804:	e1a01000 	mov	r1, r0
     808:	e3a0000a 	mov	r0, #10
     80c:	ef000000 	svc	0x00000000
     810:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     814:	e12fff1e 	bx	lr

00000818 <getpid>:
     818:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     81c:	e1a04003 	mov	r4, r3
     820:	e1a03002 	mov	r3, r2
     824:	e1a02001 	mov	r2, r1
     828:	e1a01000 	mov	r1, r0
     82c:	e3a0000b 	mov	r0, #11
     830:	ef000000 	svc	0x00000000
     834:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     838:	e12fff1e 	bx	lr

0000083c <sbrk>:
     83c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     840:	e1a04003 	mov	r4, r3
     844:	e1a03002 	mov	r3, r2
     848:	e1a02001 	mov	r2, r1
     84c:	e1a01000 	mov	r1, r0
     850:	e3a0000c 	mov	r0, #12
     854:	ef000000 	svc	0x00000000
     858:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     85c:	e12fff1e 	bx	lr

00000860 <sleep>:
     860:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     864:	e1a04003 	mov	r4, r3
     868:	e1a03002 	mov	r3, r2
     86c:	e1a02001 	mov	r2, r1
     870:	e1a01000 	mov	r1, r0
     874:	e3a0000d 	mov	r0, #13
     878:	ef000000 	svc	0x00000000
     87c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     880:	e12fff1e 	bx	lr

00000884 <uptime>:
     884:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     888:	e1a04003 	mov	r4, r3
     88c:	e1a03002 	mov	r3, r2
     890:	e1a02001 	mov	r2, r1
     894:	e1a01000 	mov	r1, r0
     898:	e3a0000e 	mov	r0, #14
     89c:	ef000000 	svc	0x00000000
     8a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a4:	e12fff1e 	bx	lr

000008a8 <getprocs>:
     8a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8ac:	e1a04003 	mov	r4, r3
     8b0:	e1a03002 	mov	r3, r2
     8b4:	e1a02001 	mov	r2, r1
     8b8:	e1a01000 	mov	r1, r0
     8bc:	e3a00016 	mov	r0, #22
     8c0:	ef000000 	svc	0x00000000
     8c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c8:	e12fff1e 	bx	lr

000008cc <putc>:
     8cc:	e92d4800 	push	{fp, lr}
     8d0:	e28db004 	add	fp, sp, #4
     8d4:	e24dd008 	sub	sp, sp, #8
     8d8:	e50b0008 	str	r0, [fp, #-8]
     8dc:	e1a03001 	mov	r3, r1
     8e0:	e54b3009 	strb	r3, [fp, #-9]
     8e4:	e24b3009 	sub	r3, fp, #9
     8e8:	e3a02001 	mov	r2, #1
     8ec:	e1a01003 	mov	r1, r3
     8f0:	e51b0008 	ldr	r0, [fp, #-8]
     8f4:	ebffff5b 	bl	668 <write>
     8f8:	e1a00000 	nop			@ (mov r0, r0)
     8fc:	e24bd004 	sub	sp, fp, #4
     900:	e8bd8800 	pop	{fp, pc}

00000904 <printint>:
     904:	e92d4800 	push	{fp, lr}
     908:	e28db004 	add	fp, sp, #4
     90c:	e24dd030 	sub	sp, sp, #48	@ 0x30
     910:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     914:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     918:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     91c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     920:	e3a03000 	mov	r3, #0
     924:	e50b300c 	str	r3, [fp, #-12]
     928:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     92c:	e3530000 	cmp	r3, #0
     930:	0a000008 	beq	958 <printint+0x54>
     934:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     938:	e3530000 	cmp	r3, #0
     93c:	aa000005 	bge	958 <printint+0x54>
     940:	e3a03001 	mov	r3, #1
     944:	e50b300c 	str	r3, [fp, #-12]
     948:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     94c:	e2633000 	rsb	r3, r3, #0
     950:	e50b3010 	str	r3, [fp, #-16]
     954:	ea000001 	b	960 <printint+0x5c>
     958:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     95c:	e50b3010 	str	r3, [fp, #-16]
     960:	e3a03000 	mov	r3, #0
     964:	e50b3008 	str	r3, [fp, #-8]
     968:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     96c:	e51b3010 	ldr	r3, [fp, #-16]
     970:	e1a01002 	mov	r1, r2
     974:	e1a00003 	mov	r0, r3
     978:	eb0001d5 	bl	10d4 <__aeabi_uidivmod>
     97c:	e1a03001 	mov	r3, r1
     980:	e1a01003 	mov	r1, r3
     984:	e51b3008 	ldr	r3, [fp, #-8]
     988:	e2832001 	add	r2, r3, #1
     98c:	e50b2008 	str	r2, [fp, #-8]
     990:	e59f20a0 	ldr	r2, [pc, #160]	@ a38 <printint+0x134>
     994:	e7d22001 	ldrb	r2, [r2, r1]
     998:	e2433004 	sub	r3, r3, #4
     99c:	e083300b 	add	r3, r3, fp
     9a0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     9a4:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     9a8:	e1a01003 	mov	r1, r3
     9ac:	e51b0010 	ldr	r0, [fp, #-16]
     9b0:	eb00018a 	bl	fe0 <__udivsi3>
     9b4:	e1a03000 	mov	r3, r0
     9b8:	e50b3010 	str	r3, [fp, #-16]
     9bc:	e51b3010 	ldr	r3, [fp, #-16]
     9c0:	e3530000 	cmp	r3, #0
     9c4:	1affffe7 	bne	968 <printint+0x64>
     9c8:	e51b300c 	ldr	r3, [fp, #-12]
     9cc:	e3530000 	cmp	r3, #0
     9d0:	0a00000e 	beq	a10 <printint+0x10c>
     9d4:	e51b3008 	ldr	r3, [fp, #-8]
     9d8:	e2832001 	add	r2, r3, #1
     9dc:	e50b2008 	str	r2, [fp, #-8]
     9e0:	e2433004 	sub	r3, r3, #4
     9e4:	e083300b 	add	r3, r3, fp
     9e8:	e3a0202d 	mov	r2, #45	@ 0x2d
     9ec:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     9f0:	ea000006 	b	a10 <printint+0x10c>
     9f4:	e24b2020 	sub	r2, fp, #32
     9f8:	e51b3008 	ldr	r3, [fp, #-8]
     9fc:	e0823003 	add	r3, r2, r3
     a00:	e5d33000 	ldrb	r3, [r3]
     a04:	e1a01003 	mov	r1, r3
     a08:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     a0c:	ebffffae 	bl	8cc <putc>
     a10:	e51b3008 	ldr	r3, [fp, #-8]
     a14:	e2433001 	sub	r3, r3, #1
     a18:	e50b3008 	str	r3, [fp, #-8]
     a1c:	e51b3008 	ldr	r3, [fp, #-8]
     a20:	e3530000 	cmp	r3, #0
     a24:	aafffff2 	bge	9f4 <printint+0xf0>
     a28:	e1a00000 	nop			@ (mov r0, r0)
     a2c:	e1a00000 	nop			@ (mov r0, r0)
     a30:	e24bd004 	sub	sp, fp, #4
     a34:	e8bd8800 	pop	{fp, pc}
     a38:	00001130 	.word	0x00001130

00000a3c <printf>:
     a3c:	e92d000e 	push	{r1, r2, r3}
     a40:	e92d4800 	push	{fp, lr}
     a44:	e28db004 	add	fp, sp, #4
     a48:	e24dd024 	sub	sp, sp, #36	@ 0x24
     a4c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     a50:	e3a03000 	mov	r3, #0
     a54:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a58:	e28b3008 	add	r3, fp, #8
     a5c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a60:	e3a03000 	mov	r3, #0
     a64:	e50b3010 	str	r3, [fp, #-16]
     a68:	ea000074 	b	c40 <printf+0x204>
     a6c:	e59b2004 	ldr	r2, [fp, #4]
     a70:	e51b3010 	ldr	r3, [fp, #-16]
     a74:	e0823003 	add	r3, r2, r3
     a78:	e5d33000 	ldrb	r3, [r3]
     a7c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     a80:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a84:	e3530000 	cmp	r3, #0
     a88:	1a00000b 	bne	abc <printf+0x80>
     a8c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a90:	e3530025 	cmp	r3, #37	@ 0x25
     a94:	1a000002 	bne	aa4 <printf+0x68>
     a98:	e3a03025 	mov	r3, #37	@ 0x25
     a9c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     aa0:	ea000063 	b	c34 <printf+0x1f8>
     aa4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     aa8:	e6ef3073 	uxtb	r3, r3
     aac:	e1a01003 	mov	r1, r3
     ab0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ab4:	ebffff84 	bl	8cc <putc>
     ab8:	ea00005d 	b	c34 <printf+0x1f8>
     abc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ac0:	e3530025 	cmp	r3, #37	@ 0x25
     ac4:	1a00005a 	bne	c34 <printf+0x1f8>
     ac8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     acc:	e3530064 	cmp	r3, #100	@ 0x64
     ad0:	1a00000a 	bne	b00 <printf+0xc4>
     ad4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ad8:	e5933000 	ldr	r3, [r3]
     adc:	e1a01003 	mov	r1, r3
     ae0:	e3a03001 	mov	r3, #1
     ae4:	e3a0200a 	mov	r2, #10
     ae8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     aec:	ebffff84 	bl	904 <printint>
     af0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     af4:	e2833004 	add	r3, r3, #4
     af8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     afc:	ea00004a 	b	c2c <printf+0x1f0>
     b00:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b04:	e3530078 	cmp	r3, #120	@ 0x78
     b08:	0a000002 	beq	b18 <printf+0xdc>
     b0c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b10:	e3530070 	cmp	r3, #112	@ 0x70
     b14:	1a00000a 	bne	b44 <printf+0x108>
     b18:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b1c:	e5933000 	ldr	r3, [r3]
     b20:	e1a01003 	mov	r1, r3
     b24:	e3a03000 	mov	r3, #0
     b28:	e3a02010 	mov	r2, #16
     b2c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b30:	ebffff73 	bl	904 <printint>
     b34:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b38:	e2833004 	add	r3, r3, #4
     b3c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b40:	ea000039 	b	c2c <printf+0x1f0>
     b44:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b48:	e3530073 	cmp	r3, #115	@ 0x73
     b4c:	1a000018 	bne	bb4 <printf+0x178>
     b50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b54:	e5933000 	ldr	r3, [r3]
     b58:	e50b300c 	str	r3, [fp, #-12]
     b5c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b60:	e2833004 	add	r3, r3, #4
     b64:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b68:	e51b300c 	ldr	r3, [fp, #-12]
     b6c:	e3530000 	cmp	r3, #0
     b70:	1a00000a 	bne	ba0 <printf+0x164>
     b74:	e59f30f4 	ldr	r3, [pc, #244]	@ c70 <printf+0x234>
     b78:	e50b300c 	str	r3, [fp, #-12]
     b7c:	ea000007 	b	ba0 <printf+0x164>
     b80:	e51b300c 	ldr	r3, [fp, #-12]
     b84:	e5d33000 	ldrb	r3, [r3]
     b88:	e1a01003 	mov	r1, r3
     b8c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b90:	ebffff4d 	bl	8cc <putc>
     b94:	e51b300c 	ldr	r3, [fp, #-12]
     b98:	e2833001 	add	r3, r3, #1
     b9c:	e50b300c 	str	r3, [fp, #-12]
     ba0:	e51b300c 	ldr	r3, [fp, #-12]
     ba4:	e5d33000 	ldrb	r3, [r3]
     ba8:	e3530000 	cmp	r3, #0
     bac:	1afffff3 	bne	b80 <printf+0x144>
     bb0:	ea00001d 	b	c2c <printf+0x1f0>
     bb4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bb8:	e3530063 	cmp	r3, #99	@ 0x63
     bbc:	1a000009 	bne	be8 <printf+0x1ac>
     bc0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bc4:	e5933000 	ldr	r3, [r3]
     bc8:	e6ef3073 	uxtb	r3, r3
     bcc:	e1a01003 	mov	r1, r3
     bd0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bd4:	ebffff3c 	bl	8cc <putc>
     bd8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bdc:	e2833004 	add	r3, r3, #4
     be0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     be4:	ea000010 	b	c2c <printf+0x1f0>
     be8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bec:	e3530025 	cmp	r3, #37	@ 0x25
     bf0:	1a000005 	bne	c0c <printf+0x1d0>
     bf4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bf8:	e6ef3073 	uxtb	r3, r3
     bfc:	e1a01003 	mov	r1, r3
     c00:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c04:	ebffff30 	bl	8cc <putc>
     c08:	ea000007 	b	c2c <printf+0x1f0>
     c0c:	e3a01025 	mov	r1, #37	@ 0x25
     c10:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c14:	ebffff2c 	bl	8cc <putc>
     c18:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c1c:	e6ef3073 	uxtb	r3, r3
     c20:	e1a01003 	mov	r1, r3
     c24:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c28:	ebffff27 	bl	8cc <putc>
     c2c:	e3a03000 	mov	r3, #0
     c30:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c34:	e51b3010 	ldr	r3, [fp, #-16]
     c38:	e2833001 	add	r3, r3, #1
     c3c:	e50b3010 	str	r3, [fp, #-16]
     c40:	e59b2004 	ldr	r2, [fp, #4]
     c44:	e51b3010 	ldr	r3, [fp, #-16]
     c48:	e0823003 	add	r3, r2, r3
     c4c:	e5d33000 	ldrb	r3, [r3]
     c50:	e3530000 	cmp	r3, #0
     c54:	1affff84 	bne	a6c <printf+0x30>
     c58:	e1a00000 	nop			@ (mov r0, r0)
     c5c:	e1a00000 	nop			@ (mov r0, r0)
     c60:	e24bd004 	sub	sp, fp, #4
     c64:	e8bd4800 	pop	{fp, lr}
     c68:	e28dd00c 	add	sp, sp, #12
     c6c:	e12fff1e 	bx	lr
     c70:	00001128 	.word	0x00001128

00000c74 <free>:
     c74:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     c78:	e28db000 	add	fp, sp, #0
     c7c:	e24dd014 	sub	sp, sp, #20
     c80:	e50b0010 	str	r0, [fp, #-16]
     c84:	e51b3010 	ldr	r3, [fp, #-16]
     c88:	e2433008 	sub	r3, r3, #8
     c8c:	e50b300c 	str	r3, [fp, #-12]
     c90:	e59f3154 	ldr	r3, [pc, #340]	@ dec <free+0x178>
     c94:	e5933000 	ldr	r3, [r3]
     c98:	e50b3008 	str	r3, [fp, #-8]
     c9c:	ea000010 	b	ce4 <free+0x70>
     ca0:	e51b3008 	ldr	r3, [fp, #-8]
     ca4:	e5933000 	ldr	r3, [r3]
     ca8:	e51b2008 	ldr	r2, [fp, #-8]
     cac:	e1520003 	cmp	r2, r3
     cb0:	3a000008 	bcc	cd8 <free+0x64>
     cb4:	e51b200c 	ldr	r2, [fp, #-12]
     cb8:	e51b3008 	ldr	r3, [fp, #-8]
     cbc:	e1520003 	cmp	r2, r3
     cc0:	8a000010 	bhi	d08 <free+0x94>
     cc4:	e51b3008 	ldr	r3, [fp, #-8]
     cc8:	e5933000 	ldr	r3, [r3]
     ccc:	e51b200c 	ldr	r2, [fp, #-12]
     cd0:	e1520003 	cmp	r2, r3
     cd4:	3a00000b 	bcc	d08 <free+0x94>
     cd8:	e51b3008 	ldr	r3, [fp, #-8]
     cdc:	e5933000 	ldr	r3, [r3]
     ce0:	e50b3008 	str	r3, [fp, #-8]
     ce4:	e51b200c 	ldr	r2, [fp, #-12]
     ce8:	e51b3008 	ldr	r3, [fp, #-8]
     cec:	e1520003 	cmp	r2, r3
     cf0:	9affffea 	bls	ca0 <free+0x2c>
     cf4:	e51b3008 	ldr	r3, [fp, #-8]
     cf8:	e5933000 	ldr	r3, [r3]
     cfc:	e51b200c 	ldr	r2, [fp, #-12]
     d00:	e1520003 	cmp	r2, r3
     d04:	2affffe5 	bcs	ca0 <free+0x2c>
     d08:	e51b300c 	ldr	r3, [fp, #-12]
     d0c:	e5933004 	ldr	r3, [r3, #4]
     d10:	e1a03183 	lsl	r3, r3, #3
     d14:	e51b200c 	ldr	r2, [fp, #-12]
     d18:	e0822003 	add	r2, r2, r3
     d1c:	e51b3008 	ldr	r3, [fp, #-8]
     d20:	e5933000 	ldr	r3, [r3]
     d24:	e1520003 	cmp	r2, r3
     d28:	1a00000d 	bne	d64 <free+0xf0>
     d2c:	e51b300c 	ldr	r3, [fp, #-12]
     d30:	e5932004 	ldr	r2, [r3, #4]
     d34:	e51b3008 	ldr	r3, [fp, #-8]
     d38:	e5933000 	ldr	r3, [r3]
     d3c:	e5933004 	ldr	r3, [r3, #4]
     d40:	e0822003 	add	r2, r2, r3
     d44:	e51b300c 	ldr	r3, [fp, #-12]
     d48:	e5832004 	str	r2, [r3, #4]
     d4c:	e51b3008 	ldr	r3, [fp, #-8]
     d50:	e5933000 	ldr	r3, [r3]
     d54:	e5932000 	ldr	r2, [r3]
     d58:	e51b300c 	ldr	r3, [fp, #-12]
     d5c:	e5832000 	str	r2, [r3]
     d60:	ea000003 	b	d74 <free+0x100>
     d64:	e51b3008 	ldr	r3, [fp, #-8]
     d68:	e5932000 	ldr	r2, [r3]
     d6c:	e51b300c 	ldr	r3, [fp, #-12]
     d70:	e5832000 	str	r2, [r3]
     d74:	e51b3008 	ldr	r3, [fp, #-8]
     d78:	e5933004 	ldr	r3, [r3, #4]
     d7c:	e1a03183 	lsl	r3, r3, #3
     d80:	e51b2008 	ldr	r2, [fp, #-8]
     d84:	e0823003 	add	r3, r2, r3
     d88:	e51b200c 	ldr	r2, [fp, #-12]
     d8c:	e1520003 	cmp	r2, r3
     d90:	1a00000b 	bne	dc4 <free+0x150>
     d94:	e51b3008 	ldr	r3, [fp, #-8]
     d98:	e5932004 	ldr	r2, [r3, #4]
     d9c:	e51b300c 	ldr	r3, [fp, #-12]
     da0:	e5933004 	ldr	r3, [r3, #4]
     da4:	e0822003 	add	r2, r2, r3
     da8:	e51b3008 	ldr	r3, [fp, #-8]
     dac:	e5832004 	str	r2, [r3, #4]
     db0:	e51b300c 	ldr	r3, [fp, #-12]
     db4:	e5932000 	ldr	r2, [r3]
     db8:	e51b3008 	ldr	r3, [fp, #-8]
     dbc:	e5832000 	str	r2, [r3]
     dc0:	ea000002 	b	dd0 <free+0x15c>
     dc4:	e51b3008 	ldr	r3, [fp, #-8]
     dc8:	e51b200c 	ldr	r2, [fp, #-12]
     dcc:	e5832000 	str	r2, [r3]
     dd0:	e59f2014 	ldr	r2, [pc, #20]	@ dec <free+0x178>
     dd4:	e51b3008 	ldr	r3, [fp, #-8]
     dd8:	e5823000 	str	r3, [r2]
     ddc:	e1a00000 	nop			@ (mov r0, r0)
     de0:	e28bd000 	add	sp, fp, #0
     de4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     de8:	e12fff1e 	bx	lr
     dec:	0000114c 	.word	0x0000114c

00000df0 <morecore>:
     df0:	e92d4800 	push	{fp, lr}
     df4:	e28db004 	add	fp, sp, #4
     df8:	e24dd010 	sub	sp, sp, #16
     dfc:	e50b0010 	str	r0, [fp, #-16]
     e00:	e51b3010 	ldr	r3, [fp, #-16]
     e04:	e3530a01 	cmp	r3, #4096	@ 0x1000
     e08:	2a000001 	bcs	e14 <morecore+0x24>
     e0c:	e3a03a01 	mov	r3, #4096	@ 0x1000
     e10:	e50b3010 	str	r3, [fp, #-16]
     e14:	e51b3010 	ldr	r3, [fp, #-16]
     e18:	e1a03183 	lsl	r3, r3, #3
     e1c:	e1a00003 	mov	r0, r3
     e20:	ebfffe85 	bl	83c <sbrk>
     e24:	e50b0008 	str	r0, [fp, #-8]
     e28:	e51b3008 	ldr	r3, [fp, #-8]
     e2c:	e3730001 	cmn	r3, #1
     e30:	1a000001 	bne	e3c <morecore+0x4c>
     e34:	e3a03000 	mov	r3, #0
     e38:	ea00000a 	b	e68 <morecore+0x78>
     e3c:	e51b3008 	ldr	r3, [fp, #-8]
     e40:	e50b300c 	str	r3, [fp, #-12]
     e44:	e51b300c 	ldr	r3, [fp, #-12]
     e48:	e51b2010 	ldr	r2, [fp, #-16]
     e4c:	e5832004 	str	r2, [r3, #4]
     e50:	e51b300c 	ldr	r3, [fp, #-12]
     e54:	e2833008 	add	r3, r3, #8
     e58:	e1a00003 	mov	r0, r3
     e5c:	ebffff84 	bl	c74 <free>
     e60:	e59f300c 	ldr	r3, [pc, #12]	@ e74 <morecore+0x84>
     e64:	e5933000 	ldr	r3, [r3]
     e68:	e1a00003 	mov	r0, r3
     e6c:	e24bd004 	sub	sp, fp, #4
     e70:	e8bd8800 	pop	{fp, pc}
     e74:	0000114c 	.word	0x0000114c

00000e78 <malloc>:
     e78:	e92d4800 	push	{fp, lr}
     e7c:	e28db004 	add	fp, sp, #4
     e80:	e24dd018 	sub	sp, sp, #24
     e84:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     e88:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e8c:	e2833007 	add	r3, r3, #7
     e90:	e1a031a3 	lsr	r3, r3, #3
     e94:	e2833001 	add	r3, r3, #1
     e98:	e50b3010 	str	r3, [fp, #-16]
     e9c:	e59f3134 	ldr	r3, [pc, #308]	@ fd8 <malloc+0x160>
     ea0:	e5933000 	ldr	r3, [r3]
     ea4:	e50b300c 	str	r3, [fp, #-12]
     ea8:	e51b300c 	ldr	r3, [fp, #-12]
     eac:	e3530000 	cmp	r3, #0
     eb0:	1a00000b 	bne	ee4 <malloc+0x6c>
     eb4:	e59f3120 	ldr	r3, [pc, #288]	@ fdc <malloc+0x164>
     eb8:	e50b300c 	str	r3, [fp, #-12]
     ebc:	e59f2114 	ldr	r2, [pc, #276]	@ fd8 <malloc+0x160>
     ec0:	e51b300c 	ldr	r3, [fp, #-12]
     ec4:	e5823000 	str	r3, [r2]
     ec8:	e59f3108 	ldr	r3, [pc, #264]	@ fd8 <malloc+0x160>
     ecc:	e5933000 	ldr	r3, [r3]
     ed0:	e59f2104 	ldr	r2, [pc, #260]	@ fdc <malloc+0x164>
     ed4:	e5823000 	str	r3, [r2]
     ed8:	e59f30fc 	ldr	r3, [pc, #252]	@ fdc <malloc+0x164>
     edc:	e3a02000 	mov	r2, #0
     ee0:	e5832004 	str	r2, [r3, #4]
     ee4:	e51b300c 	ldr	r3, [fp, #-12]
     ee8:	e5933000 	ldr	r3, [r3]
     eec:	e50b3008 	str	r3, [fp, #-8]
     ef0:	e51b3008 	ldr	r3, [fp, #-8]
     ef4:	e5933004 	ldr	r3, [r3, #4]
     ef8:	e51b2010 	ldr	r2, [fp, #-16]
     efc:	e1520003 	cmp	r2, r3
     f00:	8a00001e 	bhi	f80 <malloc+0x108>
     f04:	e51b3008 	ldr	r3, [fp, #-8]
     f08:	e5933004 	ldr	r3, [r3, #4]
     f0c:	e51b2010 	ldr	r2, [fp, #-16]
     f10:	e1520003 	cmp	r2, r3
     f14:	1a000004 	bne	f2c <malloc+0xb4>
     f18:	e51b3008 	ldr	r3, [fp, #-8]
     f1c:	e5932000 	ldr	r2, [r3]
     f20:	e51b300c 	ldr	r3, [fp, #-12]
     f24:	e5832000 	str	r2, [r3]
     f28:	ea00000e 	b	f68 <malloc+0xf0>
     f2c:	e51b3008 	ldr	r3, [fp, #-8]
     f30:	e5932004 	ldr	r2, [r3, #4]
     f34:	e51b3010 	ldr	r3, [fp, #-16]
     f38:	e0422003 	sub	r2, r2, r3
     f3c:	e51b3008 	ldr	r3, [fp, #-8]
     f40:	e5832004 	str	r2, [r3, #4]
     f44:	e51b3008 	ldr	r3, [fp, #-8]
     f48:	e5933004 	ldr	r3, [r3, #4]
     f4c:	e1a03183 	lsl	r3, r3, #3
     f50:	e51b2008 	ldr	r2, [fp, #-8]
     f54:	e0823003 	add	r3, r2, r3
     f58:	e50b3008 	str	r3, [fp, #-8]
     f5c:	e51b3008 	ldr	r3, [fp, #-8]
     f60:	e51b2010 	ldr	r2, [fp, #-16]
     f64:	e5832004 	str	r2, [r3, #4]
     f68:	e59f2068 	ldr	r2, [pc, #104]	@ fd8 <malloc+0x160>
     f6c:	e51b300c 	ldr	r3, [fp, #-12]
     f70:	e5823000 	str	r3, [r2]
     f74:	e51b3008 	ldr	r3, [fp, #-8]
     f78:	e2833008 	add	r3, r3, #8
     f7c:	ea000012 	b	fcc <malloc+0x154>
     f80:	e59f3050 	ldr	r3, [pc, #80]	@ fd8 <malloc+0x160>
     f84:	e5933000 	ldr	r3, [r3]
     f88:	e51b2008 	ldr	r2, [fp, #-8]
     f8c:	e1520003 	cmp	r2, r3
     f90:	1a000007 	bne	fb4 <malloc+0x13c>
     f94:	e51b0010 	ldr	r0, [fp, #-16]
     f98:	ebffff94 	bl	df0 <morecore>
     f9c:	e50b0008 	str	r0, [fp, #-8]
     fa0:	e51b3008 	ldr	r3, [fp, #-8]
     fa4:	e3530000 	cmp	r3, #0
     fa8:	1a000001 	bne	fb4 <malloc+0x13c>
     fac:	e3a03000 	mov	r3, #0
     fb0:	ea000005 	b	fcc <malloc+0x154>
     fb4:	e51b3008 	ldr	r3, [fp, #-8]
     fb8:	e50b300c 	str	r3, [fp, #-12]
     fbc:	e51b3008 	ldr	r3, [fp, #-8]
     fc0:	e5933000 	ldr	r3, [r3]
     fc4:	e50b3008 	str	r3, [fp, #-8]
     fc8:	eaffffc8 	b	ef0 <malloc+0x78>
     fcc:	e1a00003 	mov	r0, r3
     fd0:	e24bd004 	sub	sp, fp, #4
     fd4:	e8bd8800 	pop	{fp, pc}
     fd8:	0000114c 	.word	0x0000114c
     fdc:	00001144 	.word	0x00001144

00000fe0 <__udivsi3>:
     fe0:	e2512001 	subs	r2, r1, #1
     fe4:	012fff1e 	bxeq	lr
     fe8:	3a000036 	bcc	10c8 <__udivsi3+0xe8>
     fec:	e1500001 	cmp	r0, r1
     ff0:	9a000022 	bls	1080 <__udivsi3+0xa0>
     ff4:	e1110002 	tst	r1, r2
     ff8:	0a000023 	beq	108c <__udivsi3+0xac>
     ffc:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1000:	01a01181 	lsleq	r1, r1, #3
    1004:	03a03008 	moveq	r3, #8
    1008:	13a03001 	movne	r3, #1
    100c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1010:	31510000 	cmpcc	r1, r0
    1014:	31a01201 	lslcc	r1, r1, #4
    1018:	31a03203 	lslcc	r3, r3, #4
    101c:	3afffffa 	bcc	100c <__udivsi3+0x2c>
    1020:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1024:	31510000 	cmpcc	r1, r0
    1028:	31a01081 	lslcc	r1, r1, #1
    102c:	31a03083 	lslcc	r3, r3, #1
    1030:	3afffffa 	bcc	1020 <__udivsi3+0x40>
    1034:	e3a02000 	mov	r2, #0
    1038:	e1500001 	cmp	r0, r1
    103c:	20400001 	subcs	r0, r0, r1
    1040:	21822003 	orrcs	r2, r2, r3
    1044:	e15000a1 	cmp	r0, r1, lsr #1
    1048:	204000a1 	subcs	r0, r0, r1, lsr #1
    104c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1050:	e1500121 	cmp	r0, r1, lsr #2
    1054:	20400121 	subcs	r0, r0, r1, lsr #2
    1058:	21822123 	orrcs	r2, r2, r3, lsr #2
    105c:	e15001a1 	cmp	r0, r1, lsr #3
    1060:	204001a1 	subcs	r0, r0, r1, lsr #3
    1064:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1068:	e3500000 	cmp	r0, #0
    106c:	11b03223 	lsrsne	r3, r3, #4
    1070:	11a01221 	lsrne	r1, r1, #4
    1074:	1affffef 	bne	1038 <__udivsi3+0x58>
    1078:	e1a00002 	mov	r0, r2
    107c:	e12fff1e 	bx	lr
    1080:	03a00001 	moveq	r0, #1
    1084:	13a00000 	movne	r0, #0
    1088:	e12fff1e 	bx	lr
    108c:	e3510801 	cmp	r1, #65536	@ 0x10000
    1090:	21a01821 	lsrcs	r1, r1, #16
    1094:	23a02010 	movcs	r2, #16
    1098:	33a02000 	movcc	r2, #0
    109c:	e3510c01 	cmp	r1, #256	@ 0x100
    10a0:	21a01421 	lsrcs	r1, r1, #8
    10a4:	22822008 	addcs	r2, r2, #8
    10a8:	e3510010 	cmp	r1, #16
    10ac:	21a01221 	lsrcs	r1, r1, #4
    10b0:	22822004 	addcs	r2, r2, #4
    10b4:	e3510004 	cmp	r1, #4
    10b8:	82822003 	addhi	r2, r2, #3
    10bc:	908220a1 	addls	r2, r2, r1, lsr #1
    10c0:	e1a00230 	lsr	r0, r0, r2
    10c4:	e12fff1e 	bx	lr
    10c8:	e3500000 	cmp	r0, #0
    10cc:	13e00000 	mvnne	r0, #0
    10d0:	ea000007 	b	10f4 <__aeabi_idiv0>

000010d4 <__aeabi_uidivmod>:
    10d4:	e3510000 	cmp	r1, #0
    10d8:	0afffffa 	beq	10c8 <__udivsi3+0xe8>
    10dc:	e92d4003 	push	{r0, r1, lr}
    10e0:	ebffffbe 	bl	fe0 <__udivsi3>
    10e4:	e8bd4006 	pop	{r1, r2, lr}
    10e8:	e0030092 	mul	r3, r2, r0
    10ec:	e0411003 	sub	r1, r1, r3
    10f0:	e12fff1e 	bx	lr

000010f4 <__aeabi_idiv0>:
    10f4:	e12fff1e 	bx	lr
