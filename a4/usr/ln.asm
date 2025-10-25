
_ln:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e50b0008 	str	r0, [fp, #-8]
      10:	e50b100c 	str	r1, [fp, #-12]
      14:	e51b3008 	ldr	r3, [fp, #-8]
      18:	e3530003 	cmp	r3, #3
      1c:	0a000003 	beq	30 <main+0x30>
      20:	e59f1060 	ldr	r1, [pc, #96]	@ 88 <main+0x88>
      24:	e3a00002 	mov	r0, #2
      28:	eb000399 	bl	e94 <printf>
      2c:	eb000201 	bl	838 <exit>
      30:	e51b300c 	ldr	r3, [fp, #-12]
      34:	e2833004 	add	r3, r3, #4
      38:	e5932000 	ldr	r2, [r3]
      3c:	e51b300c 	ldr	r3, [fp, #-12]
      40:	e2833008 	add	r3, r3, #8
      44:	e5933000 	ldr	r3, [r3]
      48:	e1a01003 	mov	r1, r3
      4c:	e1a00002 	mov	r0, r2
      50:	eb000264 	bl	9e8 <link>
      54:	e1a03000 	mov	r3, r0
      58:	e3530000 	cmp	r3, #0
      5c:	aa000008 	bge	84 <main+0x84>
      60:	e51b300c 	ldr	r3, [fp, #-12]
      64:	e2833004 	add	r3, r3, #4
      68:	e5932000 	ldr	r2, [r3]
      6c:	e51b300c 	ldr	r3, [fp, #-12]
      70:	e2833008 	add	r3, r3, #8
      74:	e5933000 	ldr	r3, [r3]
      78:	e59f100c 	ldr	r1, [pc, #12]	@ 8c <main+0x8c>
      7c:	e3a00002 	mov	r0, #2
      80:	eb000383 	bl	e94 <printf>
      84:	eb0001eb 	bl	838 <exit>
      88:	00001550 	.word	0x00001550
      8c:	00001564 	.word	0x00001564

00000090 <strcpy>:
      90:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      94:	e28db000 	add	fp, sp, #0
      98:	e24dd014 	sub	sp, sp, #20
      9c:	e50b0010 	str	r0, [fp, #-16]
      a0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      a4:	e51b3010 	ldr	r3, [fp, #-16]
      a8:	e50b3008 	str	r3, [fp, #-8]
      ac:	e1a00000 	nop			@ (mov r0, r0)
      b0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      b4:	e2823001 	add	r3, r2, #1
      b8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      bc:	e51b3010 	ldr	r3, [fp, #-16]
      c0:	e2831001 	add	r1, r3, #1
      c4:	e50b1010 	str	r1, [fp, #-16]
      c8:	e5d22000 	ldrb	r2, [r2]
      cc:	e5c32000 	strb	r2, [r3]
      d0:	e5d33000 	ldrb	r3, [r3]
      d4:	e3530000 	cmp	r3, #0
      d8:	1afffff4 	bne	b0 <strcpy+0x20>
      dc:	e51b3008 	ldr	r3, [fp, #-8]
      e0:	e1a00003 	mov	r0, r3
      e4:	e28bd000 	add	sp, fp, #0
      e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      ec:	e12fff1e 	bx	lr

000000f0 <strcmp>:
      f0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      f4:	e28db000 	add	fp, sp, #0
      f8:	e24dd00c 	sub	sp, sp, #12
      fc:	e50b0008 	str	r0, [fp, #-8]
     100:	e50b100c 	str	r1, [fp, #-12]
     104:	ea000005 	b	120 <strcmp+0x30>
     108:	e51b3008 	ldr	r3, [fp, #-8]
     10c:	e2833001 	add	r3, r3, #1
     110:	e50b3008 	str	r3, [fp, #-8]
     114:	e51b300c 	ldr	r3, [fp, #-12]
     118:	e2833001 	add	r3, r3, #1
     11c:	e50b300c 	str	r3, [fp, #-12]
     120:	e51b3008 	ldr	r3, [fp, #-8]
     124:	e5d33000 	ldrb	r3, [r3]
     128:	e3530000 	cmp	r3, #0
     12c:	0a000005 	beq	148 <strcmp+0x58>
     130:	e51b3008 	ldr	r3, [fp, #-8]
     134:	e5d32000 	ldrb	r2, [r3]
     138:	e51b300c 	ldr	r3, [fp, #-12]
     13c:	e5d33000 	ldrb	r3, [r3]
     140:	e1520003 	cmp	r2, r3
     144:	0affffef 	beq	108 <strcmp+0x18>
     148:	e51b3008 	ldr	r3, [fp, #-8]
     14c:	e5d33000 	ldrb	r3, [r3]
     150:	e1a02003 	mov	r2, r3
     154:	e51b300c 	ldr	r3, [fp, #-12]
     158:	e5d33000 	ldrb	r3, [r3]
     15c:	e0423003 	sub	r3, r2, r3
     160:	e1a00003 	mov	r0, r3
     164:	e28bd000 	add	sp, fp, #0
     168:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     16c:	e12fff1e 	bx	lr

00000170 <strlen>:
     170:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     174:	e28db000 	add	fp, sp, #0
     178:	e24dd014 	sub	sp, sp, #20
     17c:	e50b0010 	str	r0, [fp, #-16]
     180:	e3a03000 	mov	r3, #0
     184:	e50b3008 	str	r3, [fp, #-8]
     188:	ea000002 	b	198 <strlen+0x28>
     18c:	e51b3008 	ldr	r3, [fp, #-8]
     190:	e2833001 	add	r3, r3, #1
     194:	e50b3008 	str	r3, [fp, #-8]
     198:	e51b3008 	ldr	r3, [fp, #-8]
     19c:	e51b2010 	ldr	r2, [fp, #-16]
     1a0:	e0823003 	add	r3, r2, r3
     1a4:	e5d33000 	ldrb	r3, [r3]
     1a8:	e3530000 	cmp	r3, #0
     1ac:	1afffff6 	bne	18c <strlen+0x1c>
     1b0:	e51b3008 	ldr	r3, [fp, #-8]
     1b4:	e1a00003 	mov	r0, r3
     1b8:	e28bd000 	add	sp, fp, #0
     1bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1c0:	e12fff1e 	bx	lr

000001c4 <memset>:
     1c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1c8:	e28db000 	add	fp, sp, #0
     1cc:	e24dd024 	sub	sp, sp, #36	@ 0x24
     1d0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     1d4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     1d8:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     1dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     1e0:	e50b3008 	str	r3, [fp, #-8]
     1e4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1e8:	e54b300d 	strb	r3, [fp, #-13]
     1ec:	e55b200d 	ldrb	r2, [fp, #-13]
     1f0:	e1a03002 	mov	r3, r2
     1f4:	e1a03403 	lsl	r3, r3, #8
     1f8:	e0833002 	add	r3, r3, r2
     1fc:	e1a03803 	lsl	r3, r3, #16
     200:	e1a02003 	mov	r2, r3
     204:	e55b300d 	ldrb	r3, [fp, #-13]
     208:	e1a03403 	lsl	r3, r3, #8
     20c:	e1822003 	orr	r2, r2, r3
     210:	e55b300d 	ldrb	r3, [fp, #-13]
     214:	e1823003 	orr	r3, r2, r3
     218:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     21c:	ea000008 	b	244 <memset+0x80>
     220:	e51b3008 	ldr	r3, [fp, #-8]
     224:	e55b200d 	ldrb	r2, [fp, #-13]
     228:	e5c32000 	strb	r2, [r3]
     22c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     230:	e2433001 	sub	r3, r3, #1
     234:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     238:	e51b3008 	ldr	r3, [fp, #-8]
     23c:	e2833001 	add	r3, r3, #1
     240:	e50b3008 	str	r3, [fp, #-8]
     244:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     248:	e3530000 	cmp	r3, #0
     24c:	0a000003 	beq	260 <memset+0x9c>
     250:	e51b3008 	ldr	r3, [fp, #-8]
     254:	e2033003 	and	r3, r3, #3
     258:	e3530000 	cmp	r3, #0
     25c:	1affffef 	bne	220 <memset+0x5c>
     260:	e51b3008 	ldr	r3, [fp, #-8]
     264:	e50b300c 	str	r3, [fp, #-12]
     268:	ea000008 	b	290 <memset+0xcc>
     26c:	e51b300c 	ldr	r3, [fp, #-12]
     270:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     274:	e5832000 	str	r2, [r3]
     278:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     27c:	e2433004 	sub	r3, r3, #4
     280:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     284:	e51b300c 	ldr	r3, [fp, #-12]
     288:	e2833004 	add	r3, r3, #4
     28c:	e50b300c 	str	r3, [fp, #-12]
     290:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     294:	e3530003 	cmp	r3, #3
     298:	8afffff3 	bhi	26c <memset+0xa8>
     29c:	e51b300c 	ldr	r3, [fp, #-12]
     2a0:	e50b3008 	str	r3, [fp, #-8]
     2a4:	ea000008 	b	2cc <memset+0x108>
     2a8:	e51b3008 	ldr	r3, [fp, #-8]
     2ac:	e55b200d 	ldrb	r2, [fp, #-13]
     2b0:	e5c32000 	strb	r2, [r3]
     2b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2b8:	e2433001 	sub	r3, r3, #1
     2bc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2c0:	e51b3008 	ldr	r3, [fp, #-8]
     2c4:	e2833001 	add	r3, r3, #1
     2c8:	e50b3008 	str	r3, [fp, #-8]
     2cc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2d0:	e3530000 	cmp	r3, #0
     2d4:	1afffff3 	bne	2a8 <memset+0xe4>
     2d8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2dc:	e1a00003 	mov	r0, r3
     2e0:	e28bd000 	add	sp, fp, #0
     2e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2e8:	e12fff1e 	bx	lr

000002ec <strchr>:
     2ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2f0:	e28db000 	add	fp, sp, #0
     2f4:	e24dd00c 	sub	sp, sp, #12
     2f8:	e50b0008 	str	r0, [fp, #-8]
     2fc:	e1a03001 	mov	r3, r1
     300:	e54b3009 	strb	r3, [fp, #-9]
     304:	ea000009 	b	330 <strchr+0x44>
     308:	e51b3008 	ldr	r3, [fp, #-8]
     30c:	e5d33000 	ldrb	r3, [r3]
     310:	e55b2009 	ldrb	r2, [fp, #-9]
     314:	e1520003 	cmp	r2, r3
     318:	1a000001 	bne	324 <strchr+0x38>
     31c:	e51b3008 	ldr	r3, [fp, #-8]
     320:	ea000007 	b	344 <strchr+0x58>
     324:	e51b3008 	ldr	r3, [fp, #-8]
     328:	e2833001 	add	r3, r3, #1
     32c:	e50b3008 	str	r3, [fp, #-8]
     330:	e51b3008 	ldr	r3, [fp, #-8]
     334:	e5d33000 	ldrb	r3, [r3]
     338:	e3530000 	cmp	r3, #0
     33c:	1afffff1 	bne	308 <strchr+0x1c>
     340:	e3a03000 	mov	r3, #0
     344:	e1a00003 	mov	r0, r3
     348:	e28bd000 	add	sp, fp, #0
     34c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     350:	e12fff1e 	bx	lr

00000354 <gets>:
     354:	e92d4800 	push	{fp, lr}
     358:	e28db004 	add	fp, sp, #4
     35c:	e24dd018 	sub	sp, sp, #24
     360:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     364:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     368:	e3a03000 	mov	r3, #0
     36c:	e50b3008 	str	r3, [fp, #-8]
     370:	ea000016 	b	3d0 <gets+0x7c>
     374:	e24b300d 	sub	r3, fp, #13
     378:	e3a02001 	mov	r2, #1
     37c:	e1a01003 	mov	r1, r3
     380:	e3a00000 	mov	r0, #0
     384:	eb000146 	bl	8a4 <read>
     388:	e50b000c 	str	r0, [fp, #-12]
     38c:	e51b300c 	ldr	r3, [fp, #-12]
     390:	e3530000 	cmp	r3, #0
     394:	da000013 	ble	3e8 <gets+0x94>
     398:	e51b3008 	ldr	r3, [fp, #-8]
     39c:	e2832001 	add	r2, r3, #1
     3a0:	e50b2008 	str	r2, [fp, #-8]
     3a4:	e1a02003 	mov	r2, r3
     3a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3ac:	e0833002 	add	r3, r3, r2
     3b0:	e55b200d 	ldrb	r2, [fp, #-13]
     3b4:	e5c32000 	strb	r2, [r3]
     3b8:	e55b300d 	ldrb	r3, [fp, #-13]
     3bc:	e353000a 	cmp	r3, #10
     3c0:	0a000009 	beq	3ec <gets+0x98>
     3c4:	e55b300d 	ldrb	r3, [fp, #-13]
     3c8:	e353000d 	cmp	r3, #13
     3cc:	0a000006 	beq	3ec <gets+0x98>
     3d0:	e51b3008 	ldr	r3, [fp, #-8]
     3d4:	e2833001 	add	r3, r3, #1
     3d8:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     3dc:	e1520003 	cmp	r2, r3
     3e0:	caffffe3 	bgt	374 <gets+0x20>
     3e4:	ea000000 	b	3ec <gets+0x98>
     3e8:	e1a00000 	nop			@ (mov r0, r0)
     3ec:	e51b3008 	ldr	r3, [fp, #-8]
     3f0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     3f4:	e0823003 	add	r3, r2, r3
     3f8:	e3a02000 	mov	r2, #0
     3fc:	e5c32000 	strb	r2, [r3]
     400:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     404:	e1a00003 	mov	r0, r3
     408:	e24bd004 	sub	sp, fp, #4
     40c:	e8bd8800 	pop	{fp, pc}

00000410 <stat>:
     410:	e92d4800 	push	{fp, lr}
     414:	e28db004 	add	fp, sp, #4
     418:	e24dd010 	sub	sp, sp, #16
     41c:	e50b0010 	str	r0, [fp, #-16]
     420:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     424:	e3a01000 	mov	r1, #0
     428:	e51b0010 	ldr	r0, [fp, #-16]
     42c:	eb000149 	bl	958 <open>
     430:	e50b0008 	str	r0, [fp, #-8]
     434:	e51b3008 	ldr	r3, [fp, #-8]
     438:	e3530000 	cmp	r3, #0
     43c:	aa000001 	bge	448 <stat+0x38>
     440:	e3e03000 	mvn	r3, #0
     444:	ea000006 	b	464 <stat+0x54>
     448:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     44c:	e51b0008 	ldr	r0, [fp, #-8]
     450:	eb00015b 	bl	9c4 <fstat>
     454:	e50b000c 	str	r0, [fp, #-12]
     458:	e51b0008 	ldr	r0, [fp, #-8]
     45c:	eb000122 	bl	8ec <close>
     460:	e51b300c 	ldr	r3, [fp, #-12]
     464:	e1a00003 	mov	r0, r3
     468:	e24bd004 	sub	sp, fp, #4
     46c:	e8bd8800 	pop	{fp, pc}

00000470 <atoi>:
     470:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     474:	e28db000 	add	fp, sp, #0
     478:	e24dd014 	sub	sp, sp, #20
     47c:	e50b0010 	str	r0, [fp, #-16]
     480:	e3a03000 	mov	r3, #0
     484:	e50b3008 	str	r3, [fp, #-8]
     488:	ea00000c 	b	4c0 <atoi+0x50>
     48c:	e51b2008 	ldr	r2, [fp, #-8]
     490:	e1a03002 	mov	r3, r2
     494:	e1a03103 	lsl	r3, r3, #2
     498:	e0833002 	add	r3, r3, r2
     49c:	e1a03083 	lsl	r3, r3, #1
     4a0:	e1a01003 	mov	r1, r3
     4a4:	e51b3010 	ldr	r3, [fp, #-16]
     4a8:	e2832001 	add	r2, r3, #1
     4ac:	e50b2010 	str	r2, [fp, #-16]
     4b0:	e5d33000 	ldrb	r3, [r3]
     4b4:	e0813003 	add	r3, r1, r3
     4b8:	e2433030 	sub	r3, r3, #48	@ 0x30
     4bc:	e50b3008 	str	r3, [fp, #-8]
     4c0:	e51b3010 	ldr	r3, [fp, #-16]
     4c4:	e5d33000 	ldrb	r3, [r3]
     4c8:	e353002f 	cmp	r3, #47	@ 0x2f
     4cc:	9a000003 	bls	4e0 <atoi+0x70>
     4d0:	e51b3010 	ldr	r3, [fp, #-16]
     4d4:	e5d33000 	ldrb	r3, [r3]
     4d8:	e3530039 	cmp	r3, #57	@ 0x39
     4dc:	9affffea 	bls	48c <atoi+0x1c>
     4e0:	e51b3010 	ldr	r3, [fp, #-16]
     4e4:	e5d33000 	ldrb	r3, [r3]
     4e8:	e3530000 	cmp	r3, #0
     4ec:	1a000001 	bne	4f8 <atoi+0x88>
     4f0:	e51b3008 	ldr	r3, [fp, #-8]
     4f4:	ea000000 	b	4fc <atoi+0x8c>
     4f8:	e3e03000 	mvn	r3, #0
     4fc:	e1a00003 	mov	r0, r3
     500:	e28bd000 	add	sp, fp, #0
     504:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     508:	e12fff1e 	bx	lr

0000050c <memmove>:
     50c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     510:	e28db000 	add	fp, sp, #0
     514:	e24dd01c 	sub	sp, sp, #28
     518:	e50b0010 	str	r0, [fp, #-16]
     51c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     520:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     524:	e51b3010 	ldr	r3, [fp, #-16]
     528:	e50b3008 	str	r3, [fp, #-8]
     52c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     530:	e50b300c 	str	r3, [fp, #-12]
     534:	ea000007 	b	558 <memmove+0x4c>
     538:	e51b200c 	ldr	r2, [fp, #-12]
     53c:	e2823001 	add	r3, r2, #1
     540:	e50b300c 	str	r3, [fp, #-12]
     544:	e51b3008 	ldr	r3, [fp, #-8]
     548:	e2831001 	add	r1, r3, #1
     54c:	e50b1008 	str	r1, [fp, #-8]
     550:	e5d22000 	ldrb	r2, [r2]
     554:	e5c32000 	strb	r2, [r3]
     558:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     55c:	e2432001 	sub	r2, r3, #1
     560:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     564:	e3530000 	cmp	r3, #0
     568:	cafffff2 	bgt	538 <memmove+0x2c>
     56c:	e51b3010 	ldr	r3, [fp, #-16]
     570:	e1a00003 	mov	r0, r3
     574:	e28bd000 	add	sp, fp, #0
     578:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     57c:	e12fff1e 	bx	lr

00000580 <initiateLock>:
     580:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     584:	e28db000 	add	fp, sp, #0
     588:	e24dd00c 	sub	sp, sp, #12
     58c:	e50b0008 	str	r0, [fp, #-8]
     590:	e51b3008 	ldr	r3, [fp, #-8]
     594:	e3a02000 	mov	r2, #0
     598:	e5832000 	str	r2, [r3]
     59c:	e51b3008 	ldr	r3, [fp, #-8]
     5a0:	e3a02001 	mov	r2, #1
     5a4:	e5832004 	str	r2, [r3, #4]
     5a8:	e1a00000 	nop			@ (mov r0, r0)
     5ac:	e28bd000 	add	sp, fp, #0
     5b0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5b4:	e12fff1e 	bx	lr

000005b8 <acquireLock>:
     5b8:	e92d4800 	push	{fp, lr}
     5bc:	e28db004 	add	fp, sp, #4
     5c0:	e24dd008 	sub	sp, sp, #8
     5c4:	e50b0008 	str	r0, [fp, #-8]
     5c8:	ea000001 	b	5d4 <acquireLock+0x1c>
     5cc:	e3a00001 	mov	r0, #1
     5d0:	eb00013a 	bl	ac0 <sleep>
     5d4:	e51b2008 	ldr	r2, [fp, #-8]
     5d8:	e3a01001 	mov	r1, #1
     5dc:	e1923f9f 	ldrex	r3, [r2]
     5e0:	e1820f91 	strex	r0, r1, [r2]
     5e4:	e3500000 	cmp	r0, #0
     5e8:	1afffffb 	bne	5dc <acquireLock+0x24>
     5ec:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     5f0:	e3530001 	cmp	r3, #1
     5f4:	0afffff4 	beq	5cc <acquireLock+0x14>
     5f8:	e1a00000 	nop			@ (mov r0, r0)
     5fc:	e1a00000 	nop			@ (mov r0, r0)
     600:	e24bd004 	sub	sp, fp, #4
     604:	e8bd8800 	pop	{fp, pc}

00000608 <releaseLock>:
     608:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     60c:	e28db000 	add	fp, sp, #0
     610:	e24dd00c 	sub	sp, sp, #12
     614:	e50b0008 	str	r0, [fp, #-8]
     618:	e51b3008 	ldr	r3, [fp, #-8]
     61c:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     620:	e3a02000 	mov	r2, #0
     624:	e5832000 	str	r2, [r3]
     628:	e1a00000 	nop			@ (mov r0, r0)
     62c:	e28bd000 	add	sp, fp, #0
     630:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     634:	e12fff1e 	bx	lr

00000638 <initiateCondVar>:
     638:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     63c:	e28db000 	add	fp, sp, #0
     640:	e24dd00c 	sub	sp, sp, #12
     644:	e50b0008 	str	r0, [fp, #-8]
     648:	e51b3008 	ldr	r3, [fp, #-8]
     64c:	e3a02000 	mov	r2, #0
     650:	e5832000 	str	r2, [r3]
     654:	e51b3008 	ldr	r3, [fp, #-8]
     658:	e3a02001 	mov	r2, #1
     65c:	e5832004 	str	r2, [r3, #4]
     660:	e1a00000 	nop			@ (mov r0, r0)
     664:	e28bd000 	add	sp, fp, #0
     668:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     66c:	e12fff1e 	bx	lr

00000670 <condWait>:
     670:	e92d4800 	push	{fp, lr}
     674:	e28db004 	add	fp, sp, #4
     678:	e24dd008 	sub	sp, sp, #8
     67c:	e50b0008 	str	r0, [fp, #-8]
     680:	e50b100c 	str	r1, [fp, #-12]
     684:	e51b000c 	ldr	r0, [fp, #-12]
     688:	ebffffde 	bl	608 <releaseLock>
     68c:	e51b3008 	ldr	r3, [fp, #-8]
     690:	e5933000 	ldr	r3, [r3]
     694:	e1a00003 	mov	r0, r3
     698:	eb00017d 	bl	c94 <sleepChan>
     69c:	e51b000c 	ldr	r0, [fp, #-12]
     6a0:	ebffffc4 	bl	5b8 <acquireLock>
     6a4:	e1a00000 	nop			@ (mov r0, r0)
     6a8:	e24bd004 	sub	sp, fp, #4
     6ac:	e8bd8800 	pop	{fp, pc}

000006b0 <broadcast>:
     6b0:	e92d4800 	push	{fp, lr}
     6b4:	e28db004 	add	fp, sp, #4
     6b8:	e24dd008 	sub	sp, sp, #8
     6bc:	e50b0008 	str	r0, [fp, #-8]
     6c0:	e51b3008 	ldr	r3, [fp, #-8]
     6c4:	e5933000 	ldr	r3, [r3]
     6c8:	e1a00003 	mov	r0, r3
     6cc:	eb000182 	bl	cdc <sigChan>
     6d0:	e1a00000 	nop			@ (mov r0, r0)
     6d4:	e24bd004 	sub	sp, fp, #4
     6d8:	e8bd8800 	pop	{fp, pc}

000006dc <semInit>:
     6dc:	e92d4800 	push	{fp, lr}
     6e0:	e28db004 	add	fp, sp, #4
     6e4:	e24dd008 	sub	sp, sp, #8
     6e8:	e50b0008 	str	r0, [fp, #-8]
     6ec:	e50b100c 	str	r1, [fp, #-12]
     6f0:	e51b3008 	ldr	r3, [fp, #-8]
     6f4:	e51b200c 	ldr	r2, [fp, #-12]
     6f8:	e5832000 	str	r2, [r3]
     6fc:	e51b3008 	ldr	r3, [fp, #-8]
     700:	e2833004 	add	r3, r3, #4
     704:	e1a00003 	mov	r0, r3
     708:	ebffff9c 	bl	580 <initiateLock>
     70c:	e51b3008 	ldr	r3, [fp, #-8]
     710:	e283300c 	add	r3, r3, #12
     714:	e1a00003 	mov	r0, r3
     718:	ebffffc6 	bl	638 <initiateCondVar>
     71c:	e51b3008 	ldr	r3, [fp, #-8]
     720:	e3a02001 	mov	r2, #1
     724:	e5832014 	str	r2, [r3, #20]
     728:	e1a00000 	nop			@ (mov r0, r0)
     72c:	e24bd004 	sub	sp, fp, #4
     730:	e8bd8800 	pop	{fp, pc}

00000734 <semUp>:
     734:	e92d4800 	push	{fp, lr}
     738:	e28db004 	add	fp, sp, #4
     73c:	e24dd008 	sub	sp, sp, #8
     740:	e50b0008 	str	r0, [fp, #-8]
     744:	e51b3008 	ldr	r3, [fp, #-8]
     748:	e2833004 	add	r3, r3, #4
     74c:	e1a00003 	mov	r0, r3
     750:	ebffff98 	bl	5b8 <acquireLock>
     754:	e51b3008 	ldr	r3, [fp, #-8]
     758:	e5933000 	ldr	r3, [r3]
     75c:	e2832001 	add	r2, r3, #1
     760:	e51b3008 	ldr	r3, [fp, #-8]
     764:	e5832000 	str	r2, [r3]
     768:	e51b3008 	ldr	r3, [fp, #-8]
     76c:	e283300c 	add	r3, r3, #12
     770:	e1a00003 	mov	r0, r3
     774:	ebffffcd 	bl	6b0 <broadcast>
     778:	e51b3008 	ldr	r3, [fp, #-8]
     77c:	e2833004 	add	r3, r3, #4
     780:	e1a00003 	mov	r0, r3
     784:	ebffff9f 	bl	608 <releaseLock>
     788:	e1a00000 	nop			@ (mov r0, r0)
     78c:	e24bd004 	sub	sp, fp, #4
     790:	e8bd8800 	pop	{fp, pc}

00000794 <semDown>:
     794:	e92d4800 	push	{fp, lr}
     798:	e28db004 	add	fp, sp, #4
     79c:	e24dd008 	sub	sp, sp, #8
     7a0:	e50b0008 	str	r0, [fp, #-8]
     7a4:	e51b3008 	ldr	r3, [fp, #-8]
     7a8:	e2833004 	add	r3, r3, #4
     7ac:	e1a00003 	mov	r0, r3
     7b0:	ebffff80 	bl	5b8 <acquireLock>
     7b4:	ea000006 	b	7d4 <semDown+0x40>
     7b8:	e51b3008 	ldr	r3, [fp, #-8]
     7bc:	e283200c 	add	r2, r3, #12
     7c0:	e51b3008 	ldr	r3, [fp, #-8]
     7c4:	e2833004 	add	r3, r3, #4
     7c8:	e1a01003 	mov	r1, r3
     7cc:	e1a00002 	mov	r0, r2
     7d0:	ebffffa6 	bl	670 <condWait>
     7d4:	e51b3008 	ldr	r3, [fp, #-8]
     7d8:	e5933000 	ldr	r3, [r3]
     7dc:	e3530000 	cmp	r3, #0
     7e0:	dafffff4 	ble	7b8 <semDown+0x24>
     7e4:	e51b3008 	ldr	r3, [fp, #-8]
     7e8:	e5933000 	ldr	r3, [r3]
     7ec:	e2432001 	sub	r2, r3, #1
     7f0:	e51b3008 	ldr	r3, [fp, #-8]
     7f4:	e5832000 	str	r2, [r3]
     7f8:	e51b3008 	ldr	r3, [fp, #-8]
     7fc:	e2833004 	add	r3, r3, #4
     800:	e1a00003 	mov	r0, r3
     804:	ebffff7f 	bl	608 <releaseLock>
     808:	e1a00000 	nop			@ (mov r0, r0)
     80c:	e24bd004 	sub	sp, fp, #4
     810:	e8bd8800 	pop	{fp, pc}

00000814 <fork>:
     814:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     818:	e1a04003 	mov	r4, r3
     81c:	e1a03002 	mov	r3, r2
     820:	e1a02001 	mov	r2, r1
     824:	e1a01000 	mov	r1, r0
     828:	e3a00001 	mov	r0, #1
     82c:	ef000000 	svc	0x00000000
     830:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     834:	e12fff1e 	bx	lr

00000838 <exit>:
     838:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     83c:	e1a04003 	mov	r4, r3
     840:	e1a03002 	mov	r3, r2
     844:	e1a02001 	mov	r2, r1
     848:	e1a01000 	mov	r1, r0
     84c:	e3a00002 	mov	r0, #2
     850:	ef000000 	svc	0x00000000
     854:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     858:	e12fff1e 	bx	lr

0000085c <wait>:
     85c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     860:	e1a04003 	mov	r4, r3
     864:	e1a03002 	mov	r3, r2
     868:	e1a02001 	mov	r2, r1
     86c:	e1a01000 	mov	r1, r0
     870:	e3a00003 	mov	r0, #3
     874:	ef000000 	svc	0x00000000
     878:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     87c:	e12fff1e 	bx	lr

00000880 <pipe>:
     880:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     884:	e1a04003 	mov	r4, r3
     888:	e1a03002 	mov	r3, r2
     88c:	e1a02001 	mov	r2, r1
     890:	e1a01000 	mov	r1, r0
     894:	e3a00004 	mov	r0, #4
     898:	ef000000 	svc	0x00000000
     89c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a0:	e12fff1e 	bx	lr

000008a4 <read>:
     8a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a8:	e1a04003 	mov	r4, r3
     8ac:	e1a03002 	mov	r3, r2
     8b0:	e1a02001 	mov	r2, r1
     8b4:	e1a01000 	mov	r1, r0
     8b8:	e3a00005 	mov	r0, #5
     8bc:	ef000000 	svc	0x00000000
     8c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c4:	e12fff1e 	bx	lr

000008c8 <write>:
     8c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8cc:	e1a04003 	mov	r4, r3
     8d0:	e1a03002 	mov	r3, r2
     8d4:	e1a02001 	mov	r2, r1
     8d8:	e1a01000 	mov	r1, r0
     8dc:	e3a00010 	mov	r0, #16
     8e0:	ef000000 	svc	0x00000000
     8e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e8:	e12fff1e 	bx	lr

000008ec <close>:
     8ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8f0:	e1a04003 	mov	r4, r3
     8f4:	e1a03002 	mov	r3, r2
     8f8:	e1a02001 	mov	r2, r1
     8fc:	e1a01000 	mov	r1, r0
     900:	e3a00015 	mov	r0, #21
     904:	ef000000 	svc	0x00000000
     908:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     90c:	e12fff1e 	bx	lr

00000910 <kill>:
     910:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     914:	e1a04003 	mov	r4, r3
     918:	e1a03002 	mov	r3, r2
     91c:	e1a02001 	mov	r2, r1
     920:	e1a01000 	mov	r1, r0
     924:	e3a00006 	mov	r0, #6
     928:	ef000000 	svc	0x00000000
     92c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     930:	e12fff1e 	bx	lr

00000934 <exec>:
     934:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     938:	e1a04003 	mov	r4, r3
     93c:	e1a03002 	mov	r3, r2
     940:	e1a02001 	mov	r2, r1
     944:	e1a01000 	mov	r1, r0
     948:	e3a00007 	mov	r0, #7
     94c:	ef000000 	svc	0x00000000
     950:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     954:	e12fff1e 	bx	lr

00000958 <open>:
     958:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     95c:	e1a04003 	mov	r4, r3
     960:	e1a03002 	mov	r3, r2
     964:	e1a02001 	mov	r2, r1
     968:	e1a01000 	mov	r1, r0
     96c:	e3a0000f 	mov	r0, #15
     970:	ef000000 	svc	0x00000000
     974:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     978:	e12fff1e 	bx	lr

0000097c <mknod>:
     97c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     980:	e1a04003 	mov	r4, r3
     984:	e1a03002 	mov	r3, r2
     988:	e1a02001 	mov	r2, r1
     98c:	e1a01000 	mov	r1, r0
     990:	e3a00011 	mov	r0, #17
     994:	ef000000 	svc	0x00000000
     998:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     99c:	e12fff1e 	bx	lr

000009a0 <unlink>:
     9a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a4:	e1a04003 	mov	r4, r3
     9a8:	e1a03002 	mov	r3, r2
     9ac:	e1a02001 	mov	r2, r1
     9b0:	e1a01000 	mov	r1, r0
     9b4:	e3a00012 	mov	r0, #18
     9b8:	ef000000 	svc	0x00000000
     9bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c0:	e12fff1e 	bx	lr

000009c4 <fstat>:
     9c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c8:	e1a04003 	mov	r4, r3
     9cc:	e1a03002 	mov	r3, r2
     9d0:	e1a02001 	mov	r2, r1
     9d4:	e1a01000 	mov	r1, r0
     9d8:	e3a00008 	mov	r0, #8
     9dc:	ef000000 	svc	0x00000000
     9e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e4:	e12fff1e 	bx	lr

000009e8 <link>:
     9e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9ec:	e1a04003 	mov	r4, r3
     9f0:	e1a03002 	mov	r3, r2
     9f4:	e1a02001 	mov	r2, r1
     9f8:	e1a01000 	mov	r1, r0
     9fc:	e3a00013 	mov	r0, #19
     a00:	ef000000 	svc	0x00000000
     a04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a08:	e12fff1e 	bx	lr

00000a0c <mkdir>:
     a0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a10:	e1a04003 	mov	r4, r3
     a14:	e1a03002 	mov	r3, r2
     a18:	e1a02001 	mov	r2, r1
     a1c:	e1a01000 	mov	r1, r0
     a20:	e3a00014 	mov	r0, #20
     a24:	ef000000 	svc	0x00000000
     a28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a2c:	e12fff1e 	bx	lr

00000a30 <chdir>:
     a30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a34:	e1a04003 	mov	r4, r3
     a38:	e1a03002 	mov	r3, r2
     a3c:	e1a02001 	mov	r2, r1
     a40:	e1a01000 	mov	r1, r0
     a44:	e3a00009 	mov	r0, #9
     a48:	ef000000 	svc	0x00000000
     a4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a50:	e12fff1e 	bx	lr

00000a54 <dup>:
     a54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a58:	e1a04003 	mov	r4, r3
     a5c:	e1a03002 	mov	r3, r2
     a60:	e1a02001 	mov	r2, r1
     a64:	e1a01000 	mov	r1, r0
     a68:	e3a0000a 	mov	r0, #10
     a6c:	ef000000 	svc	0x00000000
     a70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a74:	e12fff1e 	bx	lr

00000a78 <getpid>:
     a78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a7c:	e1a04003 	mov	r4, r3
     a80:	e1a03002 	mov	r3, r2
     a84:	e1a02001 	mov	r2, r1
     a88:	e1a01000 	mov	r1, r0
     a8c:	e3a0000b 	mov	r0, #11
     a90:	ef000000 	svc	0x00000000
     a94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a98:	e12fff1e 	bx	lr

00000a9c <sbrk>:
     a9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa0:	e1a04003 	mov	r4, r3
     aa4:	e1a03002 	mov	r3, r2
     aa8:	e1a02001 	mov	r2, r1
     aac:	e1a01000 	mov	r1, r0
     ab0:	e3a0000c 	mov	r0, #12
     ab4:	ef000000 	svc	0x00000000
     ab8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     abc:	e12fff1e 	bx	lr

00000ac0 <sleep>:
     ac0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac4:	e1a04003 	mov	r4, r3
     ac8:	e1a03002 	mov	r3, r2
     acc:	e1a02001 	mov	r2, r1
     ad0:	e1a01000 	mov	r1, r0
     ad4:	e3a0000d 	mov	r0, #13
     ad8:	ef000000 	svc	0x00000000
     adc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae0:	e12fff1e 	bx	lr

00000ae4 <uptime>:
     ae4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae8:	e1a04003 	mov	r4, r3
     aec:	e1a03002 	mov	r3, r2
     af0:	e1a02001 	mov	r2, r1
     af4:	e1a01000 	mov	r1, r0
     af8:	e3a0000e 	mov	r0, #14
     afc:	ef000000 	svc	0x00000000
     b00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b04:	e12fff1e 	bx	lr

00000b08 <getprocs>:
     b08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b0c:	e1a04003 	mov	r4, r3
     b10:	e1a03002 	mov	r3, r2
     b14:	e1a02001 	mov	r2, r1
     b18:	e1a01000 	mov	r1, r0
     b1c:	e3a00016 	mov	r0, #22
     b20:	ef000000 	svc	0x00000000
     b24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b28:	e12fff1e 	bx	lr

00000b2c <settickets>:
     b2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b30:	e1a04003 	mov	r4, r3
     b34:	e1a03002 	mov	r3, r2
     b38:	e1a02001 	mov	r2, r1
     b3c:	e1a01000 	mov	r1, r0
     b40:	e3a00017 	mov	r0, #23
     b44:	ef000000 	svc	0x00000000
     b48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b4c:	e12fff1e 	bx	lr

00000b50 <srand>:
     b50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b54:	e1a04003 	mov	r4, r3
     b58:	e1a03002 	mov	r3, r2
     b5c:	e1a02001 	mov	r2, r1
     b60:	e1a01000 	mov	r1, r0
     b64:	e3a00018 	mov	r0, #24
     b68:	ef000000 	svc	0x00000000
     b6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b70:	e12fff1e 	bx	lr

00000b74 <getpinfo>:
     b74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b78:	e1a04003 	mov	r4, r3
     b7c:	e1a03002 	mov	r3, r2
     b80:	e1a02001 	mov	r2, r1
     b84:	e1a01000 	mov	r1, r0
     b88:	e3a00019 	mov	r0, #25
     b8c:	ef000000 	svc	0x00000000
     b90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b94:	e12fff1e 	bx	lr

00000b98 <dumppagetable>:
     b98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b9c:	e1a04003 	mov	r4, r3
     ba0:	e1a03002 	mov	r3, r2
     ba4:	e1a02001 	mov	r2, r1
     ba8:	e1a01000 	mov	r1, r0
     bac:	e3a0001a 	mov	r0, #26
     bb0:	ef000000 	svc	0x00000000
     bb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb8:	e12fff1e 	bx	lr

00000bbc <thread_create>:
     bbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc0:	e1a04003 	mov	r4, r3
     bc4:	e1a03002 	mov	r3, r2
     bc8:	e1a02001 	mov	r2, r1
     bcc:	e1a01000 	mov	r1, r0
     bd0:	e3a0001b 	mov	r0, #27
     bd4:	ef000000 	svc	0x00000000
     bd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bdc:	e12fff1e 	bx	lr

00000be0 <thread_exit>:
     be0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be4:	e1a04003 	mov	r4, r3
     be8:	e1a03002 	mov	r3, r2
     bec:	e1a02001 	mov	r2, r1
     bf0:	e1a01000 	mov	r1, r0
     bf4:	e3a0001c 	mov	r0, #28
     bf8:	ef000000 	svc	0x00000000
     bfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c00:	e12fff1e 	bx	lr

00000c04 <thread_join>:
     c04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c08:	e1a04003 	mov	r4, r3
     c0c:	e1a03002 	mov	r3, r2
     c10:	e1a02001 	mov	r2, r1
     c14:	e1a01000 	mov	r1, r0
     c18:	e3a0001d 	mov	r0, #29
     c1c:	ef000000 	svc	0x00000000
     c20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c24:	e12fff1e 	bx	lr

00000c28 <waitpid>:
     c28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c2c:	e1a04003 	mov	r4, r3
     c30:	e1a03002 	mov	r3, r2
     c34:	e1a02001 	mov	r2, r1
     c38:	e1a01000 	mov	r1, r0
     c3c:	e3a0001e 	mov	r0, #30
     c40:	ef000000 	svc	0x00000000
     c44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c48:	e12fff1e 	bx	lr

00000c4c <barrier_init>:
     c4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c50:	e1a04003 	mov	r4, r3
     c54:	e1a03002 	mov	r3, r2
     c58:	e1a02001 	mov	r2, r1
     c5c:	e1a01000 	mov	r1, r0
     c60:	e3a0001f 	mov	r0, #31
     c64:	ef000000 	svc	0x00000000
     c68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c6c:	e12fff1e 	bx	lr

00000c70 <barrier_check>:
     c70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c74:	e1a04003 	mov	r4, r3
     c78:	e1a03002 	mov	r3, r2
     c7c:	e1a02001 	mov	r2, r1
     c80:	e1a01000 	mov	r1, r0
     c84:	e3a00020 	mov	r0, #32
     c88:	ef000000 	svc	0x00000000
     c8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c90:	e12fff1e 	bx	lr

00000c94 <sleepChan>:
     c94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c98:	e1a04003 	mov	r4, r3
     c9c:	e1a03002 	mov	r3, r2
     ca0:	e1a02001 	mov	r2, r1
     ca4:	e1a01000 	mov	r1, r0
     ca8:	e3a00024 	mov	r0, #36	@ 0x24
     cac:	ef000000 	svc	0x00000000
     cb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb4:	e12fff1e 	bx	lr

00000cb8 <getChannel>:
     cb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cbc:	e1a04003 	mov	r4, r3
     cc0:	e1a03002 	mov	r3, r2
     cc4:	e1a02001 	mov	r2, r1
     cc8:	e1a01000 	mov	r1, r0
     ccc:	e3a00025 	mov	r0, #37	@ 0x25
     cd0:	ef000000 	svc	0x00000000
     cd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd8:	e12fff1e 	bx	lr

00000cdc <sigChan>:
     cdc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce0:	e1a04003 	mov	r4, r3
     ce4:	e1a03002 	mov	r3, r2
     ce8:	e1a02001 	mov	r2, r1
     cec:	e1a01000 	mov	r1, r0
     cf0:	e3a00026 	mov	r0, #38	@ 0x26
     cf4:	ef000000 	svc	0x00000000
     cf8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cfc:	e12fff1e 	bx	lr

00000d00 <sigOneChan>:
     d00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d04:	e1a04003 	mov	r4, r3
     d08:	e1a03002 	mov	r3, r2
     d0c:	e1a02001 	mov	r2, r1
     d10:	e1a01000 	mov	r1, r0
     d14:	e3a00027 	mov	r0, #39	@ 0x27
     d18:	ef000000 	svc	0x00000000
     d1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d20:	e12fff1e 	bx	lr

00000d24 <putc>:
     d24:	e92d4800 	push	{fp, lr}
     d28:	e28db004 	add	fp, sp, #4
     d2c:	e24dd008 	sub	sp, sp, #8
     d30:	e50b0008 	str	r0, [fp, #-8]
     d34:	e1a03001 	mov	r3, r1
     d38:	e54b3009 	strb	r3, [fp, #-9]
     d3c:	e24b3009 	sub	r3, fp, #9
     d40:	e3a02001 	mov	r2, #1
     d44:	e1a01003 	mov	r1, r3
     d48:	e51b0008 	ldr	r0, [fp, #-8]
     d4c:	ebfffedd 	bl	8c8 <write>
     d50:	e1a00000 	nop			@ (mov r0, r0)
     d54:	e24bd004 	sub	sp, fp, #4
     d58:	e8bd8800 	pop	{fp, pc}

00000d5c <printint>:
     d5c:	e92d4800 	push	{fp, lr}
     d60:	e28db004 	add	fp, sp, #4
     d64:	e24dd030 	sub	sp, sp, #48	@ 0x30
     d68:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     d6c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     d70:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     d74:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     d78:	e3a03000 	mov	r3, #0
     d7c:	e50b300c 	str	r3, [fp, #-12]
     d80:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     d84:	e3530000 	cmp	r3, #0
     d88:	0a000008 	beq	db0 <printint+0x54>
     d8c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d90:	e3530000 	cmp	r3, #0
     d94:	aa000005 	bge	db0 <printint+0x54>
     d98:	e3a03001 	mov	r3, #1
     d9c:	e50b300c 	str	r3, [fp, #-12]
     da0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     da4:	e2633000 	rsb	r3, r3, #0
     da8:	e50b3010 	str	r3, [fp, #-16]
     dac:	ea000001 	b	db8 <printint+0x5c>
     db0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     db4:	e50b3010 	str	r3, [fp, #-16]
     db8:	e3a03000 	mov	r3, #0
     dbc:	e50b3008 	str	r3, [fp, #-8]
     dc0:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     dc4:	e51b3010 	ldr	r3, [fp, #-16]
     dc8:	e1a01002 	mov	r1, r2
     dcc:	e1a00003 	mov	r0, r3
     dd0:	eb0001d5 	bl	152c <__aeabi_uidivmod>
     dd4:	e1a03001 	mov	r3, r1
     dd8:	e1a01003 	mov	r1, r3
     ddc:	e51b3008 	ldr	r3, [fp, #-8]
     de0:	e2832001 	add	r2, r3, #1
     de4:	e50b2008 	str	r2, [fp, #-8]
     de8:	e59f20a0 	ldr	r2, [pc, #160]	@ e90 <printint+0x134>
     dec:	e7d22001 	ldrb	r2, [r2, r1]
     df0:	e2433004 	sub	r3, r3, #4
     df4:	e083300b 	add	r3, r3, fp
     df8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     dfc:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     e00:	e1a01003 	mov	r1, r3
     e04:	e51b0010 	ldr	r0, [fp, #-16]
     e08:	eb00018a 	bl	1438 <__udivsi3>
     e0c:	e1a03000 	mov	r3, r0
     e10:	e50b3010 	str	r3, [fp, #-16]
     e14:	e51b3010 	ldr	r3, [fp, #-16]
     e18:	e3530000 	cmp	r3, #0
     e1c:	1affffe7 	bne	dc0 <printint+0x64>
     e20:	e51b300c 	ldr	r3, [fp, #-12]
     e24:	e3530000 	cmp	r3, #0
     e28:	0a00000e 	beq	e68 <printint+0x10c>
     e2c:	e51b3008 	ldr	r3, [fp, #-8]
     e30:	e2832001 	add	r2, r3, #1
     e34:	e50b2008 	str	r2, [fp, #-8]
     e38:	e2433004 	sub	r3, r3, #4
     e3c:	e083300b 	add	r3, r3, fp
     e40:	e3a0202d 	mov	r2, #45	@ 0x2d
     e44:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     e48:	ea000006 	b	e68 <printint+0x10c>
     e4c:	e24b2020 	sub	r2, fp, #32
     e50:	e51b3008 	ldr	r3, [fp, #-8]
     e54:	e0823003 	add	r3, r2, r3
     e58:	e5d33000 	ldrb	r3, [r3]
     e5c:	e1a01003 	mov	r1, r3
     e60:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     e64:	ebffffae 	bl	d24 <putc>
     e68:	e51b3008 	ldr	r3, [fp, #-8]
     e6c:	e2433001 	sub	r3, r3, #1
     e70:	e50b3008 	str	r3, [fp, #-8]
     e74:	e51b3008 	ldr	r3, [fp, #-8]
     e78:	e3530000 	cmp	r3, #0
     e7c:	aafffff2 	bge	e4c <printint+0xf0>
     e80:	e1a00000 	nop			@ (mov r0, r0)
     e84:	e1a00000 	nop			@ (mov r0, r0)
     e88:	e24bd004 	sub	sp, fp, #4
     e8c:	e8bd8800 	pop	{fp, pc}
     e90:	00001580 	.word	0x00001580

00000e94 <printf>:
     e94:	e92d000e 	push	{r1, r2, r3}
     e98:	e92d4800 	push	{fp, lr}
     e9c:	e28db004 	add	fp, sp, #4
     ea0:	e24dd024 	sub	sp, sp, #36	@ 0x24
     ea4:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     ea8:	e3a03000 	mov	r3, #0
     eac:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     eb0:	e28b3008 	add	r3, fp, #8
     eb4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     eb8:	e3a03000 	mov	r3, #0
     ebc:	e50b3010 	str	r3, [fp, #-16]
     ec0:	ea000074 	b	1098 <printf+0x204>
     ec4:	e59b2004 	ldr	r2, [fp, #4]
     ec8:	e51b3010 	ldr	r3, [fp, #-16]
     ecc:	e0823003 	add	r3, r2, r3
     ed0:	e5d33000 	ldrb	r3, [r3]
     ed4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     ed8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     edc:	e3530000 	cmp	r3, #0
     ee0:	1a00000b 	bne	f14 <printf+0x80>
     ee4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ee8:	e3530025 	cmp	r3, #37	@ 0x25
     eec:	1a000002 	bne	efc <printf+0x68>
     ef0:	e3a03025 	mov	r3, #37	@ 0x25
     ef4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ef8:	ea000063 	b	108c <printf+0x1f8>
     efc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f00:	e6ef3073 	uxtb	r3, r3
     f04:	e1a01003 	mov	r1, r3
     f08:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f0c:	ebffff84 	bl	d24 <putc>
     f10:	ea00005d 	b	108c <printf+0x1f8>
     f14:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     f18:	e3530025 	cmp	r3, #37	@ 0x25
     f1c:	1a00005a 	bne	108c <printf+0x1f8>
     f20:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f24:	e3530064 	cmp	r3, #100	@ 0x64
     f28:	1a00000a 	bne	f58 <printf+0xc4>
     f2c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f30:	e5933000 	ldr	r3, [r3]
     f34:	e1a01003 	mov	r1, r3
     f38:	e3a03001 	mov	r3, #1
     f3c:	e3a0200a 	mov	r2, #10
     f40:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f44:	ebffff84 	bl	d5c <printint>
     f48:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f4c:	e2833004 	add	r3, r3, #4
     f50:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f54:	ea00004a 	b	1084 <printf+0x1f0>
     f58:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f5c:	e3530078 	cmp	r3, #120	@ 0x78
     f60:	0a000002 	beq	f70 <printf+0xdc>
     f64:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f68:	e3530070 	cmp	r3, #112	@ 0x70
     f6c:	1a00000a 	bne	f9c <printf+0x108>
     f70:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f74:	e5933000 	ldr	r3, [r3]
     f78:	e1a01003 	mov	r1, r3
     f7c:	e3a03000 	mov	r3, #0
     f80:	e3a02010 	mov	r2, #16
     f84:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f88:	ebffff73 	bl	d5c <printint>
     f8c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f90:	e2833004 	add	r3, r3, #4
     f94:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f98:	ea000039 	b	1084 <printf+0x1f0>
     f9c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fa0:	e3530073 	cmp	r3, #115	@ 0x73
     fa4:	1a000018 	bne	100c <printf+0x178>
     fa8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fac:	e5933000 	ldr	r3, [r3]
     fb0:	e50b300c 	str	r3, [fp, #-12]
     fb4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fb8:	e2833004 	add	r3, r3, #4
     fbc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fc0:	e51b300c 	ldr	r3, [fp, #-12]
     fc4:	e3530000 	cmp	r3, #0
     fc8:	1a00000a 	bne	ff8 <printf+0x164>
     fcc:	e59f30f4 	ldr	r3, [pc, #244]	@ 10c8 <printf+0x234>
     fd0:	e50b300c 	str	r3, [fp, #-12]
     fd4:	ea000007 	b	ff8 <printf+0x164>
     fd8:	e51b300c 	ldr	r3, [fp, #-12]
     fdc:	e5d33000 	ldrb	r3, [r3]
     fe0:	e1a01003 	mov	r1, r3
     fe4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fe8:	ebffff4d 	bl	d24 <putc>
     fec:	e51b300c 	ldr	r3, [fp, #-12]
     ff0:	e2833001 	add	r3, r3, #1
     ff4:	e50b300c 	str	r3, [fp, #-12]
     ff8:	e51b300c 	ldr	r3, [fp, #-12]
     ffc:	e5d33000 	ldrb	r3, [r3]
    1000:	e3530000 	cmp	r3, #0
    1004:	1afffff3 	bne	fd8 <printf+0x144>
    1008:	ea00001d 	b	1084 <printf+0x1f0>
    100c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1010:	e3530063 	cmp	r3, #99	@ 0x63
    1014:	1a000009 	bne	1040 <printf+0x1ac>
    1018:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    101c:	e5933000 	ldr	r3, [r3]
    1020:	e6ef3073 	uxtb	r3, r3
    1024:	e1a01003 	mov	r1, r3
    1028:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    102c:	ebffff3c 	bl	d24 <putc>
    1030:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1034:	e2833004 	add	r3, r3, #4
    1038:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    103c:	ea000010 	b	1084 <printf+0x1f0>
    1040:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1044:	e3530025 	cmp	r3, #37	@ 0x25
    1048:	1a000005 	bne	1064 <printf+0x1d0>
    104c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1050:	e6ef3073 	uxtb	r3, r3
    1054:	e1a01003 	mov	r1, r3
    1058:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    105c:	ebffff30 	bl	d24 <putc>
    1060:	ea000007 	b	1084 <printf+0x1f0>
    1064:	e3a01025 	mov	r1, #37	@ 0x25
    1068:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    106c:	ebffff2c 	bl	d24 <putc>
    1070:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1074:	e6ef3073 	uxtb	r3, r3
    1078:	e1a01003 	mov	r1, r3
    107c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1080:	ebffff27 	bl	d24 <putc>
    1084:	e3a03000 	mov	r3, #0
    1088:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    108c:	e51b3010 	ldr	r3, [fp, #-16]
    1090:	e2833001 	add	r3, r3, #1
    1094:	e50b3010 	str	r3, [fp, #-16]
    1098:	e59b2004 	ldr	r2, [fp, #4]
    109c:	e51b3010 	ldr	r3, [fp, #-16]
    10a0:	e0823003 	add	r3, r2, r3
    10a4:	e5d33000 	ldrb	r3, [r3]
    10a8:	e3530000 	cmp	r3, #0
    10ac:	1affff84 	bne	ec4 <printf+0x30>
    10b0:	e1a00000 	nop			@ (mov r0, r0)
    10b4:	e1a00000 	nop			@ (mov r0, r0)
    10b8:	e24bd004 	sub	sp, fp, #4
    10bc:	e8bd4800 	pop	{fp, lr}
    10c0:	e28dd00c 	add	sp, sp, #12
    10c4:	e12fff1e 	bx	lr
    10c8:	00001578 	.word	0x00001578

000010cc <free>:
    10cc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    10d0:	e28db000 	add	fp, sp, #0
    10d4:	e24dd014 	sub	sp, sp, #20
    10d8:	e50b0010 	str	r0, [fp, #-16]
    10dc:	e51b3010 	ldr	r3, [fp, #-16]
    10e0:	e2433008 	sub	r3, r3, #8
    10e4:	e50b300c 	str	r3, [fp, #-12]
    10e8:	e59f3154 	ldr	r3, [pc, #340]	@ 1244 <free+0x178>
    10ec:	e5933000 	ldr	r3, [r3]
    10f0:	e50b3008 	str	r3, [fp, #-8]
    10f4:	ea000010 	b	113c <free+0x70>
    10f8:	e51b3008 	ldr	r3, [fp, #-8]
    10fc:	e5933000 	ldr	r3, [r3]
    1100:	e51b2008 	ldr	r2, [fp, #-8]
    1104:	e1520003 	cmp	r2, r3
    1108:	3a000008 	bcc	1130 <free+0x64>
    110c:	e51b200c 	ldr	r2, [fp, #-12]
    1110:	e51b3008 	ldr	r3, [fp, #-8]
    1114:	e1520003 	cmp	r2, r3
    1118:	8a000010 	bhi	1160 <free+0x94>
    111c:	e51b3008 	ldr	r3, [fp, #-8]
    1120:	e5933000 	ldr	r3, [r3]
    1124:	e51b200c 	ldr	r2, [fp, #-12]
    1128:	e1520003 	cmp	r2, r3
    112c:	3a00000b 	bcc	1160 <free+0x94>
    1130:	e51b3008 	ldr	r3, [fp, #-8]
    1134:	e5933000 	ldr	r3, [r3]
    1138:	e50b3008 	str	r3, [fp, #-8]
    113c:	e51b200c 	ldr	r2, [fp, #-12]
    1140:	e51b3008 	ldr	r3, [fp, #-8]
    1144:	e1520003 	cmp	r2, r3
    1148:	9affffea 	bls	10f8 <free+0x2c>
    114c:	e51b3008 	ldr	r3, [fp, #-8]
    1150:	e5933000 	ldr	r3, [r3]
    1154:	e51b200c 	ldr	r2, [fp, #-12]
    1158:	e1520003 	cmp	r2, r3
    115c:	2affffe5 	bcs	10f8 <free+0x2c>
    1160:	e51b300c 	ldr	r3, [fp, #-12]
    1164:	e5933004 	ldr	r3, [r3, #4]
    1168:	e1a03183 	lsl	r3, r3, #3
    116c:	e51b200c 	ldr	r2, [fp, #-12]
    1170:	e0822003 	add	r2, r2, r3
    1174:	e51b3008 	ldr	r3, [fp, #-8]
    1178:	e5933000 	ldr	r3, [r3]
    117c:	e1520003 	cmp	r2, r3
    1180:	1a00000d 	bne	11bc <free+0xf0>
    1184:	e51b300c 	ldr	r3, [fp, #-12]
    1188:	e5932004 	ldr	r2, [r3, #4]
    118c:	e51b3008 	ldr	r3, [fp, #-8]
    1190:	e5933000 	ldr	r3, [r3]
    1194:	e5933004 	ldr	r3, [r3, #4]
    1198:	e0822003 	add	r2, r2, r3
    119c:	e51b300c 	ldr	r3, [fp, #-12]
    11a0:	e5832004 	str	r2, [r3, #4]
    11a4:	e51b3008 	ldr	r3, [fp, #-8]
    11a8:	e5933000 	ldr	r3, [r3]
    11ac:	e5932000 	ldr	r2, [r3]
    11b0:	e51b300c 	ldr	r3, [fp, #-12]
    11b4:	e5832000 	str	r2, [r3]
    11b8:	ea000003 	b	11cc <free+0x100>
    11bc:	e51b3008 	ldr	r3, [fp, #-8]
    11c0:	e5932000 	ldr	r2, [r3]
    11c4:	e51b300c 	ldr	r3, [fp, #-12]
    11c8:	e5832000 	str	r2, [r3]
    11cc:	e51b3008 	ldr	r3, [fp, #-8]
    11d0:	e5933004 	ldr	r3, [r3, #4]
    11d4:	e1a03183 	lsl	r3, r3, #3
    11d8:	e51b2008 	ldr	r2, [fp, #-8]
    11dc:	e0823003 	add	r3, r2, r3
    11e0:	e51b200c 	ldr	r2, [fp, #-12]
    11e4:	e1520003 	cmp	r2, r3
    11e8:	1a00000b 	bne	121c <free+0x150>
    11ec:	e51b3008 	ldr	r3, [fp, #-8]
    11f0:	e5932004 	ldr	r2, [r3, #4]
    11f4:	e51b300c 	ldr	r3, [fp, #-12]
    11f8:	e5933004 	ldr	r3, [r3, #4]
    11fc:	e0822003 	add	r2, r2, r3
    1200:	e51b3008 	ldr	r3, [fp, #-8]
    1204:	e5832004 	str	r2, [r3, #4]
    1208:	e51b300c 	ldr	r3, [fp, #-12]
    120c:	e5932000 	ldr	r2, [r3]
    1210:	e51b3008 	ldr	r3, [fp, #-8]
    1214:	e5832000 	str	r2, [r3]
    1218:	ea000002 	b	1228 <free+0x15c>
    121c:	e51b3008 	ldr	r3, [fp, #-8]
    1220:	e51b200c 	ldr	r2, [fp, #-12]
    1224:	e5832000 	str	r2, [r3]
    1228:	e59f2014 	ldr	r2, [pc, #20]	@ 1244 <free+0x178>
    122c:	e51b3008 	ldr	r3, [fp, #-8]
    1230:	e5823000 	str	r3, [r2]
    1234:	e1a00000 	nop			@ (mov r0, r0)
    1238:	e28bd000 	add	sp, fp, #0
    123c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1240:	e12fff1e 	bx	lr
    1244:	0000159c 	.word	0x0000159c

00001248 <morecore>:
    1248:	e92d4800 	push	{fp, lr}
    124c:	e28db004 	add	fp, sp, #4
    1250:	e24dd010 	sub	sp, sp, #16
    1254:	e50b0010 	str	r0, [fp, #-16]
    1258:	e51b3010 	ldr	r3, [fp, #-16]
    125c:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1260:	2a000001 	bcs	126c <morecore+0x24>
    1264:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1268:	e50b3010 	str	r3, [fp, #-16]
    126c:	e51b3010 	ldr	r3, [fp, #-16]
    1270:	e1a03183 	lsl	r3, r3, #3
    1274:	e1a00003 	mov	r0, r3
    1278:	ebfffe07 	bl	a9c <sbrk>
    127c:	e50b0008 	str	r0, [fp, #-8]
    1280:	e51b3008 	ldr	r3, [fp, #-8]
    1284:	e3730001 	cmn	r3, #1
    1288:	1a000001 	bne	1294 <morecore+0x4c>
    128c:	e3a03000 	mov	r3, #0
    1290:	ea00000a 	b	12c0 <morecore+0x78>
    1294:	e51b3008 	ldr	r3, [fp, #-8]
    1298:	e50b300c 	str	r3, [fp, #-12]
    129c:	e51b300c 	ldr	r3, [fp, #-12]
    12a0:	e51b2010 	ldr	r2, [fp, #-16]
    12a4:	e5832004 	str	r2, [r3, #4]
    12a8:	e51b300c 	ldr	r3, [fp, #-12]
    12ac:	e2833008 	add	r3, r3, #8
    12b0:	e1a00003 	mov	r0, r3
    12b4:	ebffff84 	bl	10cc <free>
    12b8:	e59f300c 	ldr	r3, [pc, #12]	@ 12cc <morecore+0x84>
    12bc:	e5933000 	ldr	r3, [r3]
    12c0:	e1a00003 	mov	r0, r3
    12c4:	e24bd004 	sub	sp, fp, #4
    12c8:	e8bd8800 	pop	{fp, pc}
    12cc:	0000159c 	.word	0x0000159c

000012d0 <malloc>:
    12d0:	e92d4800 	push	{fp, lr}
    12d4:	e28db004 	add	fp, sp, #4
    12d8:	e24dd018 	sub	sp, sp, #24
    12dc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    12e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12e4:	e2833007 	add	r3, r3, #7
    12e8:	e1a031a3 	lsr	r3, r3, #3
    12ec:	e2833001 	add	r3, r3, #1
    12f0:	e50b3010 	str	r3, [fp, #-16]
    12f4:	e59f3134 	ldr	r3, [pc, #308]	@ 1430 <malloc+0x160>
    12f8:	e5933000 	ldr	r3, [r3]
    12fc:	e50b300c 	str	r3, [fp, #-12]
    1300:	e51b300c 	ldr	r3, [fp, #-12]
    1304:	e3530000 	cmp	r3, #0
    1308:	1a00000b 	bne	133c <malloc+0x6c>
    130c:	e59f3120 	ldr	r3, [pc, #288]	@ 1434 <malloc+0x164>
    1310:	e50b300c 	str	r3, [fp, #-12]
    1314:	e59f2114 	ldr	r2, [pc, #276]	@ 1430 <malloc+0x160>
    1318:	e51b300c 	ldr	r3, [fp, #-12]
    131c:	e5823000 	str	r3, [r2]
    1320:	e59f3108 	ldr	r3, [pc, #264]	@ 1430 <malloc+0x160>
    1324:	e5933000 	ldr	r3, [r3]
    1328:	e59f2104 	ldr	r2, [pc, #260]	@ 1434 <malloc+0x164>
    132c:	e5823000 	str	r3, [r2]
    1330:	e59f30fc 	ldr	r3, [pc, #252]	@ 1434 <malloc+0x164>
    1334:	e3a02000 	mov	r2, #0
    1338:	e5832004 	str	r2, [r3, #4]
    133c:	e51b300c 	ldr	r3, [fp, #-12]
    1340:	e5933000 	ldr	r3, [r3]
    1344:	e50b3008 	str	r3, [fp, #-8]
    1348:	e51b3008 	ldr	r3, [fp, #-8]
    134c:	e5933004 	ldr	r3, [r3, #4]
    1350:	e51b2010 	ldr	r2, [fp, #-16]
    1354:	e1520003 	cmp	r2, r3
    1358:	8a00001e 	bhi	13d8 <malloc+0x108>
    135c:	e51b3008 	ldr	r3, [fp, #-8]
    1360:	e5933004 	ldr	r3, [r3, #4]
    1364:	e51b2010 	ldr	r2, [fp, #-16]
    1368:	e1520003 	cmp	r2, r3
    136c:	1a000004 	bne	1384 <malloc+0xb4>
    1370:	e51b3008 	ldr	r3, [fp, #-8]
    1374:	e5932000 	ldr	r2, [r3]
    1378:	e51b300c 	ldr	r3, [fp, #-12]
    137c:	e5832000 	str	r2, [r3]
    1380:	ea00000e 	b	13c0 <malloc+0xf0>
    1384:	e51b3008 	ldr	r3, [fp, #-8]
    1388:	e5932004 	ldr	r2, [r3, #4]
    138c:	e51b3010 	ldr	r3, [fp, #-16]
    1390:	e0422003 	sub	r2, r2, r3
    1394:	e51b3008 	ldr	r3, [fp, #-8]
    1398:	e5832004 	str	r2, [r3, #4]
    139c:	e51b3008 	ldr	r3, [fp, #-8]
    13a0:	e5933004 	ldr	r3, [r3, #4]
    13a4:	e1a03183 	lsl	r3, r3, #3
    13a8:	e51b2008 	ldr	r2, [fp, #-8]
    13ac:	e0823003 	add	r3, r2, r3
    13b0:	e50b3008 	str	r3, [fp, #-8]
    13b4:	e51b3008 	ldr	r3, [fp, #-8]
    13b8:	e51b2010 	ldr	r2, [fp, #-16]
    13bc:	e5832004 	str	r2, [r3, #4]
    13c0:	e59f2068 	ldr	r2, [pc, #104]	@ 1430 <malloc+0x160>
    13c4:	e51b300c 	ldr	r3, [fp, #-12]
    13c8:	e5823000 	str	r3, [r2]
    13cc:	e51b3008 	ldr	r3, [fp, #-8]
    13d0:	e2833008 	add	r3, r3, #8
    13d4:	ea000012 	b	1424 <malloc+0x154>
    13d8:	e59f3050 	ldr	r3, [pc, #80]	@ 1430 <malloc+0x160>
    13dc:	e5933000 	ldr	r3, [r3]
    13e0:	e51b2008 	ldr	r2, [fp, #-8]
    13e4:	e1520003 	cmp	r2, r3
    13e8:	1a000007 	bne	140c <malloc+0x13c>
    13ec:	e51b0010 	ldr	r0, [fp, #-16]
    13f0:	ebffff94 	bl	1248 <morecore>
    13f4:	e50b0008 	str	r0, [fp, #-8]
    13f8:	e51b3008 	ldr	r3, [fp, #-8]
    13fc:	e3530000 	cmp	r3, #0
    1400:	1a000001 	bne	140c <malloc+0x13c>
    1404:	e3a03000 	mov	r3, #0
    1408:	ea000005 	b	1424 <malloc+0x154>
    140c:	e51b3008 	ldr	r3, [fp, #-8]
    1410:	e50b300c 	str	r3, [fp, #-12]
    1414:	e51b3008 	ldr	r3, [fp, #-8]
    1418:	e5933000 	ldr	r3, [r3]
    141c:	e50b3008 	str	r3, [fp, #-8]
    1420:	eaffffc8 	b	1348 <malloc+0x78>
    1424:	e1a00003 	mov	r0, r3
    1428:	e24bd004 	sub	sp, fp, #4
    142c:	e8bd8800 	pop	{fp, pc}
    1430:	0000159c 	.word	0x0000159c
    1434:	00001594 	.word	0x00001594

00001438 <__udivsi3>:
    1438:	e2512001 	subs	r2, r1, #1
    143c:	012fff1e 	bxeq	lr
    1440:	3a000036 	bcc	1520 <__udivsi3+0xe8>
    1444:	e1500001 	cmp	r0, r1
    1448:	9a000022 	bls	14d8 <__udivsi3+0xa0>
    144c:	e1110002 	tst	r1, r2
    1450:	0a000023 	beq	14e4 <__udivsi3+0xac>
    1454:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1458:	01a01181 	lsleq	r1, r1, #3
    145c:	03a03008 	moveq	r3, #8
    1460:	13a03001 	movne	r3, #1
    1464:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1468:	31510000 	cmpcc	r1, r0
    146c:	31a01201 	lslcc	r1, r1, #4
    1470:	31a03203 	lslcc	r3, r3, #4
    1474:	3afffffa 	bcc	1464 <__udivsi3+0x2c>
    1478:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    147c:	31510000 	cmpcc	r1, r0
    1480:	31a01081 	lslcc	r1, r1, #1
    1484:	31a03083 	lslcc	r3, r3, #1
    1488:	3afffffa 	bcc	1478 <__udivsi3+0x40>
    148c:	e3a02000 	mov	r2, #0
    1490:	e1500001 	cmp	r0, r1
    1494:	20400001 	subcs	r0, r0, r1
    1498:	21822003 	orrcs	r2, r2, r3
    149c:	e15000a1 	cmp	r0, r1, lsr #1
    14a0:	204000a1 	subcs	r0, r0, r1, lsr #1
    14a4:	218220a3 	orrcs	r2, r2, r3, lsr #1
    14a8:	e1500121 	cmp	r0, r1, lsr #2
    14ac:	20400121 	subcs	r0, r0, r1, lsr #2
    14b0:	21822123 	orrcs	r2, r2, r3, lsr #2
    14b4:	e15001a1 	cmp	r0, r1, lsr #3
    14b8:	204001a1 	subcs	r0, r0, r1, lsr #3
    14bc:	218221a3 	orrcs	r2, r2, r3, lsr #3
    14c0:	e3500000 	cmp	r0, #0
    14c4:	11b03223 	lsrsne	r3, r3, #4
    14c8:	11a01221 	lsrne	r1, r1, #4
    14cc:	1affffef 	bne	1490 <__udivsi3+0x58>
    14d0:	e1a00002 	mov	r0, r2
    14d4:	e12fff1e 	bx	lr
    14d8:	03a00001 	moveq	r0, #1
    14dc:	13a00000 	movne	r0, #0
    14e0:	e12fff1e 	bx	lr
    14e4:	e3510801 	cmp	r1, #65536	@ 0x10000
    14e8:	21a01821 	lsrcs	r1, r1, #16
    14ec:	23a02010 	movcs	r2, #16
    14f0:	33a02000 	movcc	r2, #0
    14f4:	e3510c01 	cmp	r1, #256	@ 0x100
    14f8:	21a01421 	lsrcs	r1, r1, #8
    14fc:	22822008 	addcs	r2, r2, #8
    1500:	e3510010 	cmp	r1, #16
    1504:	21a01221 	lsrcs	r1, r1, #4
    1508:	22822004 	addcs	r2, r2, #4
    150c:	e3510004 	cmp	r1, #4
    1510:	82822003 	addhi	r2, r2, #3
    1514:	908220a1 	addls	r2, r2, r1, lsr #1
    1518:	e1a00230 	lsr	r0, r0, r2
    151c:	e12fff1e 	bx	lr
    1520:	e3500000 	cmp	r0, #0
    1524:	13e00000 	mvnne	r0, #0
    1528:	ea000007 	b	154c <__aeabi_idiv0>

0000152c <__aeabi_uidivmod>:
    152c:	e3510000 	cmp	r1, #0
    1530:	0afffffa 	beq	1520 <__udivsi3+0xe8>
    1534:	e92d4003 	push	{r0, r1, lr}
    1538:	ebffffbe 	bl	1438 <__udivsi3>
    153c:	e8bd4006 	pop	{r1, r2, lr}
    1540:	e0030092 	mul	r3, r2, r0
    1544:	e0411003 	sub	r1, r1, r3
    1548:	e12fff1e 	bx	lr

0000154c <__aeabi_idiv0>:
    154c:	e12fff1e 	bx	lr
