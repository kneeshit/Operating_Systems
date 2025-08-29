
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
      28:	eb00027a 	bl	a18 <printf>
      2c:	eb000160 	bl	5b4 <exit>
      30:	e51b300c 	ldr	r3, [fp, #-12]
      34:	e2833004 	add	r3, r3, #4
      38:	e5932000 	ldr	r2, [r3]
      3c:	e51b300c 	ldr	r3, [fp, #-12]
      40:	e2833008 	add	r3, r3, #8
      44:	e5933000 	ldr	r3, [r3]
      48:	e1a01003 	mov	r1, r3
      4c:	e1a00002 	mov	r0, r2
      50:	eb0001c3 	bl	764 <link>
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
      80:	eb000264 	bl	a18 <printf>
      84:	eb00014a 	bl	5b4 <exit>
      88:	000010d4 	.word	0x000010d4
      8c:	000010e8 	.word	0x000010e8

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
     384:	eb0000a5 	bl	620 <read>
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
     42c:	eb0000a8 	bl	6d4 <open>
     430:	e50b0008 	str	r0, [fp, #-8]
     434:	e51b3008 	ldr	r3, [fp, #-8]
     438:	e3530000 	cmp	r3, #0
     43c:	aa000001 	bge	448 <stat+0x38>
     440:	e3e03000 	mvn	r3, #0
     444:	ea000006 	b	464 <stat+0x54>
     448:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     44c:	e51b0008 	ldr	r0, [fp, #-8]
     450:	eb0000ba 	bl	740 <fstat>
     454:	e50b000c 	str	r0, [fp, #-12]
     458:	e51b0008 	ldr	r0, [fp, #-8]
     45c:	eb000081 	bl	668 <close>
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
     4e8:	e353002f 	cmp	r3, #47	@ 0x2f
     4ec:	9a000003 	bls	500 <atoi+0x90>
     4f0:	e51b3010 	ldr	r3, [fp, #-16]
     4f4:	e5d33000 	ldrb	r3, [r3]
     4f8:	e3530039 	cmp	r3, #57	@ 0x39
     4fc:	9a000001 	bls	508 <atoi+0x98>
     500:	e3e03000 	mvn	r3, #0
     504:	ea000000 	b	50c <atoi+0x9c>
     508:	e51b3008 	ldr	r3, [fp, #-8]
     50c:	e1a00003 	mov	r0, r3
     510:	e28bd000 	add	sp, fp, #0
     514:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     518:	e12fff1e 	bx	lr

0000051c <memmove>:
     51c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     520:	e28db000 	add	fp, sp, #0
     524:	e24dd01c 	sub	sp, sp, #28
     528:	e50b0010 	str	r0, [fp, #-16]
     52c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     530:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     534:	e51b3010 	ldr	r3, [fp, #-16]
     538:	e50b3008 	str	r3, [fp, #-8]
     53c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     540:	e50b300c 	str	r3, [fp, #-12]
     544:	ea000007 	b	568 <memmove+0x4c>
     548:	e51b200c 	ldr	r2, [fp, #-12]
     54c:	e2823001 	add	r3, r2, #1
     550:	e50b300c 	str	r3, [fp, #-12]
     554:	e51b3008 	ldr	r3, [fp, #-8]
     558:	e2831001 	add	r1, r3, #1
     55c:	e50b1008 	str	r1, [fp, #-8]
     560:	e5d22000 	ldrb	r2, [r2]
     564:	e5c32000 	strb	r2, [r3]
     568:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     56c:	e2432001 	sub	r2, r3, #1
     570:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     574:	e3530000 	cmp	r3, #0
     578:	cafffff2 	bgt	548 <memmove+0x2c>
     57c:	e51b3010 	ldr	r3, [fp, #-16]
     580:	e1a00003 	mov	r0, r3
     584:	e28bd000 	add	sp, fp, #0
     588:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     58c:	e12fff1e 	bx	lr

00000590 <fork>:
     590:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     594:	e1a04003 	mov	r4, r3
     598:	e1a03002 	mov	r3, r2
     59c:	e1a02001 	mov	r2, r1
     5a0:	e1a01000 	mov	r1, r0
     5a4:	e3a00001 	mov	r0, #1
     5a8:	ef000000 	svc	0x00000000
     5ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5b0:	e12fff1e 	bx	lr

000005b4 <exit>:
     5b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5b8:	e1a04003 	mov	r4, r3
     5bc:	e1a03002 	mov	r3, r2
     5c0:	e1a02001 	mov	r2, r1
     5c4:	e1a01000 	mov	r1, r0
     5c8:	e3a00002 	mov	r0, #2
     5cc:	ef000000 	svc	0x00000000
     5d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5d4:	e12fff1e 	bx	lr

000005d8 <wait>:
     5d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5dc:	e1a04003 	mov	r4, r3
     5e0:	e1a03002 	mov	r3, r2
     5e4:	e1a02001 	mov	r2, r1
     5e8:	e1a01000 	mov	r1, r0
     5ec:	e3a00003 	mov	r0, #3
     5f0:	ef000000 	svc	0x00000000
     5f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5f8:	e12fff1e 	bx	lr

000005fc <pipe>:
     5fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     600:	e1a04003 	mov	r4, r3
     604:	e1a03002 	mov	r3, r2
     608:	e1a02001 	mov	r2, r1
     60c:	e1a01000 	mov	r1, r0
     610:	e3a00004 	mov	r0, #4
     614:	ef000000 	svc	0x00000000
     618:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     61c:	e12fff1e 	bx	lr

00000620 <read>:
     620:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     624:	e1a04003 	mov	r4, r3
     628:	e1a03002 	mov	r3, r2
     62c:	e1a02001 	mov	r2, r1
     630:	e1a01000 	mov	r1, r0
     634:	e3a00005 	mov	r0, #5
     638:	ef000000 	svc	0x00000000
     63c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     640:	e12fff1e 	bx	lr

00000644 <write>:
     644:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     648:	e1a04003 	mov	r4, r3
     64c:	e1a03002 	mov	r3, r2
     650:	e1a02001 	mov	r2, r1
     654:	e1a01000 	mov	r1, r0
     658:	e3a00010 	mov	r0, #16
     65c:	ef000000 	svc	0x00000000
     660:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     664:	e12fff1e 	bx	lr

00000668 <close>:
     668:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     66c:	e1a04003 	mov	r4, r3
     670:	e1a03002 	mov	r3, r2
     674:	e1a02001 	mov	r2, r1
     678:	e1a01000 	mov	r1, r0
     67c:	e3a00015 	mov	r0, #21
     680:	ef000000 	svc	0x00000000
     684:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     688:	e12fff1e 	bx	lr

0000068c <kill>:
     68c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     690:	e1a04003 	mov	r4, r3
     694:	e1a03002 	mov	r3, r2
     698:	e1a02001 	mov	r2, r1
     69c:	e1a01000 	mov	r1, r0
     6a0:	e3a00006 	mov	r0, #6
     6a4:	ef000000 	svc	0x00000000
     6a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6ac:	e12fff1e 	bx	lr

000006b0 <exec>:
     6b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6b4:	e1a04003 	mov	r4, r3
     6b8:	e1a03002 	mov	r3, r2
     6bc:	e1a02001 	mov	r2, r1
     6c0:	e1a01000 	mov	r1, r0
     6c4:	e3a00007 	mov	r0, #7
     6c8:	ef000000 	svc	0x00000000
     6cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6d0:	e12fff1e 	bx	lr

000006d4 <open>:
     6d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6d8:	e1a04003 	mov	r4, r3
     6dc:	e1a03002 	mov	r3, r2
     6e0:	e1a02001 	mov	r2, r1
     6e4:	e1a01000 	mov	r1, r0
     6e8:	e3a0000f 	mov	r0, #15
     6ec:	ef000000 	svc	0x00000000
     6f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6f4:	e12fff1e 	bx	lr

000006f8 <mknod>:
     6f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6fc:	e1a04003 	mov	r4, r3
     700:	e1a03002 	mov	r3, r2
     704:	e1a02001 	mov	r2, r1
     708:	e1a01000 	mov	r1, r0
     70c:	e3a00011 	mov	r0, #17
     710:	ef000000 	svc	0x00000000
     714:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     718:	e12fff1e 	bx	lr

0000071c <unlink>:
     71c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     720:	e1a04003 	mov	r4, r3
     724:	e1a03002 	mov	r3, r2
     728:	e1a02001 	mov	r2, r1
     72c:	e1a01000 	mov	r1, r0
     730:	e3a00012 	mov	r0, #18
     734:	ef000000 	svc	0x00000000
     738:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     73c:	e12fff1e 	bx	lr

00000740 <fstat>:
     740:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     744:	e1a04003 	mov	r4, r3
     748:	e1a03002 	mov	r3, r2
     74c:	e1a02001 	mov	r2, r1
     750:	e1a01000 	mov	r1, r0
     754:	e3a00008 	mov	r0, #8
     758:	ef000000 	svc	0x00000000
     75c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     760:	e12fff1e 	bx	lr

00000764 <link>:
     764:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     768:	e1a04003 	mov	r4, r3
     76c:	e1a03002 	mov	r3, r2
     770:	e1a02001 	mov	r2, r1
     774:	e1a01000 	mov	r1, r0
     778:	e3a00013 	mov	r0, #19
     77c:	ef000000 	svc	0x00000000
     780:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     784:	e12fff1e 	bx	lr

00000788 <mkdir>:
     788:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     78c:	e1a04003 	mov	r4, r3
     790:	e1a03002 	mov	r3, r2
     794:	e1a02001 	mov	r2, r1
     798:	e1a01000 	mov	r1, r0
     79c:	e3a00014 	mov	r0, #20
     7a0:	ef000000 	svc	0x00000000
     7a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7a8:	e12fff1e 	bx	lr

000007ac <chdir>:
     7ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7b0:	e1a04003 	mov	r4, r3
     7b4:	e1a03002 	mov	r3, r2
     7b8:	e1a02001 	mov	r2, r1
     7bc:	e1a01000 	mov	r1, r0
     7c0:	e3a00009 	mov	r0, #9
     7c4:	ef000000 	svc	0x00000000
     7c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7cc:	e12fff1e 	bx	lr

000007d0 <dup>:
     7d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7d4:	e1a04003 	mov	r4, r3
     7d8:	e1a03002 	mov	r3, r2
     7dc:	e1a02001 	mov	r2, r1
     7e0:	e1a01000 	mov	r1, r0
     7e4:	e3a0000a 	mov	r0, #10
     7e8:	ef000000 	svc	0x00000000
     7ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7f0:	e12fff1e 	bx	lr

000007f4 <getpid>:
     7f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f8:	e1a04003 	mov	r4, r3
     7fc:	e1a03002 	mov	r3, r2
     800:	e1a02001 	mov	r2, r1
     804:	e1a01000 	mov	r1, r0
     808:	e3a0000b 	mov	r0, #11
     80c:	ef000000 	svc	0x00000000
     810:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     814:	e12fff1e 	bx	lr

00000818 <sbrk>:
     818:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     81c:	e1a04003 	mov	r4, r3
     820:	e1a03002 	mov	r3, r2
     824:	e1a02001 	mov	r2, r1
     828:	e1a01000 	mov	r1, r0
     82c:	e3a0000c 	mov	r0, #12
     830:	ef000000 	svc	0x00000000
     834:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     838:	e12fff1e 	bx	lr

0000083c <sleep>:
     83c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     840:	e1a04003 	mov	r4, r3
     844:	e1a03002 	mov	r3, r2
     848:	e1a02001 	mov	r2, r1
     84c:	e1a01000 	mov	r1, r0
     850:	e3a0000d 	mov	r0, #13
     854:	ef000000 	svc	0x00000000
     858:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     85c:	e12fff1e 	bx	lr

00000860 <uptime>:
     860:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     864:	e1a04003 	mov	r4, r3
     868:	e1a03002 	mov	r3, r2
     86c:	e1a02001 	mov	r2, r1
     870:	e1a01000 	mov	r1, r0
     874:	e3a0000e 	mov	r0, #14
     878:	ef000000 	svc	0x00000000
     87c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     880:	e12fff1e 	bx	lr

00000884 <getprocs>:
     884:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     888:	e1a04003 	mov	r4, r3
     88c:	e1a03002 	mov	r3, r2
     890:	e1a02001 	mov	r2, r1
     894:	e1a01000 	mov	r1, r0
     898:	e3a00016 	mov	r0, #22
     89c:	ef000000 	svc	0x00000000
     8a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a4:	e12fff1e 	bx	lr

000008a8 <putc>:
     8a8:	e92d4800 	push	{fp, lr}
     8ac:	e28db004 	add	fp, sp, #4
     8b0:	e24dd008 	sub	sp, sp, #8
     8b4:	e50b0008 	str	r0, [fp, #-8]
     8b8:	e1a03001 	mov	r3, r1
     8bc:	e54b3009 	strb	r3, [fp, #-9]
     8c0:	e24b3009 	sub	r3, fp, #9
     8c4:	e3a02001 	mov	r2, #1
     8c8:	e1a01003 	mov	r1, r3
     8cc:	e51b0008 	ldr	r0, [fp, #-8]
     8d0:	ebffff5b 	bl	644 <write>
     8d4:	e1a00000 	nop			@ (mov r0, r0)
     8d8:	e24bd004 	sub	sp, fp, #4
     8dc:	e8bd8800 	pop	{fp, pc}

000008e0 <printint>:
     8e0:	e92d4800 	push	{fp, lr}
     8e4:	e28db004 	add	fp, sp, #4
     8e8:	e24dd030 	sub	sp, sp, #48	@ 0x30
     8ec:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     8f0:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     8f4:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     8f8:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     8fc:	e3a03000 	mov	r3, #0
     900:	e50b300c 	str	r3, [fp, #-12]
     904:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     908:	e3530000 	cmp	r3, #0
     90c:	0a000008 	beq	934 <printint+0x54>
     910:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     914:	e3530000 	cmp	r3, #0
     918:	aa000005 	bge	934 <printint+0x54>
     91c:	e3a03001 	mov	r3, #1
     920:	e50b300c 	str	r3, [fp, #-12]
     924:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     928:	e2633000 	rsb	r3, r3, #0
     92c:	e50b3010 	str	r3, [fp, #-16]
     930:	ea000001 	b	93c <printint+0x5c>
     934:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     938:	e50b3010 	str	r3, [fp, #-16]
     93c:	e3a03000 	mov	r3, #0
     940:	e50b3008 	str	r3, [fp, #-8]
     944:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     948:	e51b3010 	ldr	r3, [fp, #-16]
     94c:	e1a01002 	mov	r1, r2
     950:	e1a00003 	mov	r0, r3
     954:	eb0001d5 	bl	10b0 <__aeabi_uidivmod>
     958:	e1a03001 	mov	r3, r1
     95c:	e1a01003 	mov	r1, r3
     960:	e51b3008 	ldr	r3, [fp, #-8]
     964:	e2832001 	add	r2, r3, #1
     968:	e50b2008 	str	r2, [fp, #-8]
     96c:	e59f20a0 	ldr	r2, [pc, #160]	@ a14 <printint+0x134>
     970:	e7d22001 	ldrb	r2, [r2, r1]
     974:	e2433004 	sub	r3, r3, #4
     978:	e083300b 	add	r3, r3, fp
     97c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     980:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     984:	e1a01003 	mov	r1, r3
     988:	e51b0010 	ldr	r0, [fp, #-16]
     98c:	eb00018a 	bl	fbc <__udivsi3>
     990:	e1a03000 	mov	r3, r0
     994:	e50b3010 	str	r3, [fp, #-16]
     998:	e51b3010 	ldr	r3, [fp, #-16]
     99c:	e3530000 	cmp	r3, #0
     9a0:	1affffe7 	bne	944 <printint+0x64>
     9a4:	e51b300c 	ldr	r3, [fp, #-12]
     9a8:	e3530000 	cmp	r3, #0
     9ac:	0a00000e 	beq	9ec <printint+0x10c>
     9b0:	e51b3008 	ldr	r3, [fp, #-8]
     9b4:	e2832001 	add	r2, r3, #1
     9b8:	e50b2008 	str	r2, [fp, #-8]
     9bc:	e2433004 	sub	r3, r3, #4
     9c0:	e083300b 	add	r3, r3, fp
     9c4:	e3a0202d 	mov	r2, #45	@ 0x2d
     9c8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     9cc:	ea000006 	b	9ec <printint+0x10c>
     9d0:	e24b2020 	sub	r2, fp, #32
     9d4:	e51b3008 	ldr	r3, [fp, #-8]
     9d8:	e0823003 	add	r3, r2, r3
     9dc:	e5d33000 	ldrb	r3, [r3]
     9e0:	e1a01003 	mov	r1, r3
     9e4:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     9e8:	ebffffae 	bl	8a8 <putc>
     9ec:	e51b3008 	ldr	r3, [fp, #-8]
     9f0:	e2433001 	sub	r3, r3, #1
     9f4:	e50b3008 	str	r3, [fp, #-8]
     9f8:	e51b3008 	ldr	r3, [fp, #-8]
     9fc:	e3530000 	cmp	r3, #0
     a00:	aafffff2 	bge	9d0 <printint+0xf0>
     a04:	e1a00000 	nop			@ (mov r0, r0)
     a08:	e1a00000 	nop			@ (mov r0, r0)
     a0c:	e24bd004 	sub	sp, fp, #4
     a10:	e8bd8800 	pop	{fp, pc}
     a14:	00001104 	.word	0x00001104

00000a18 <printf>:
     a18:	e92d000e 	push	{r1, r2, r3}
     a1c:	e92d4800 	push	{fp, lr}
     a20:	e28db004 	add	fp, sp, #4
     a24:	e24dd024 	sub	sp, sp, #36	@ 0x24
     a28:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     a2c:	e3a03000 	mov	r3, #0
     a30:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a34:	e28b3008 	add	r3, fp, #8
     a38:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a3c:	e3a03000 	mov	r3, #0
     a40:	e50b3010 	str	r3, [fp, #-16]
     a44:	ea000074 	b	c1c <printf+0x204>
     a48:	e59b2004 	ldr	r2, [fp, #4]
     a4c:	e51b3010 	ldr	r3, [fp, #-16]
     a50:	e0823003 	add	r3, r2, r3
     a54:	e5d33000 	ldrb	r3, [r3]
     a58:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     a5c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a60:	e3530000 	cmp	r3, #0
     a64:	1a00000b 	bne	a98 <printf+0x80>
     a68:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a6c:	e3530025 	cmp	r3, #37	@ 0x25
     a70:	1a000002 	bne	a80 <printf+0x68>
     a74:	e3a03025 	mov	r3, #37	@ 0x25
     a78:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a7c:	ea000063 	b	c10 <printf+0x1f8>
     a80:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a84:	e6ef3073 	uxtb	r3, r3
     a88:	e1a01003 	mov	r1, r3
     a8c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     a90:	ebffff84 	bl	8a8 <putc>
     a94:	ea00005d 	b	c10 <printf+0x1f8>
     a98:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a9c:	e3530025 	cmp	r3, #37	@ 0x25
     aa0:	1a00005a 	bne	c10 <printf+0x1f8>
     aa4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     aa8:	e3530064 	cmp	r3, #100	@ 0x64
     aac:	1a00000a 	bne	adc <printf+0xc4>
     ab0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ab4:	e5933000 	ldr	r3, [r3]
     ab8:	e1a01003 	mov	r1, r3
     abc:	e3a03001 	mov	r3, #1
     ac0:	e3a0200a 	mov	r2, #10
     ac4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ac8:	ebffff84 	bl	8e0 <printint>
     acc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ad0:	e2833004 	add	r3, r3, #4
     ad4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ad8:	ea00004a 	b	c08 <printf+0x1f0>
     adc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ae0:	e3530078 	cmp	r3, #120	@ 0x78
     ae4:	0a000002 	beq	af4 <printf+0xdc>
     ae8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     aec:	e3530070 	cmp	r3, #112	@ 0x70
     af0:	1a00000a 	bne	b20 <printf+0x108>
     af4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     af8:	e5933000 	ldr	r3, [r3]
     afc:	e1a01003 	mov	r1, r3
     b00:	e3a03000 	mov	r3, #0
     b04:	e3a02010 	mov	r2, #16
     b08:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b0c:	ebffff73 	bl	8e0 <printint>
     b10:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b14:	e2833004 	add	r3, r3, #4
     b18:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b1c:	ea000039 	b	c08 <printf+0x1f0>
     b20:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b24:	e3530073 	cmp	r3, #115	@ 0x73
     b28:	1a000018 	bne	b90 <printf+0x178>
     b2c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b30:	e5933000 	ldr	r3, [r3]
     b34:	e50b300c 	str	r3, [fp, #-12]
     b38:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b3c:	e2833004 	add	r3, r3, #4
     b40:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b44:	e51b300c 	ldr	r3, [fp, #-12]
     b48:	e3530000 	cmp	r3, #0
     b4c:	1a00000a 	bne	b7c <printf+0x164>
     b50:	e59f30f4 	ldr	r3, [pc, #244]	@ c4c <printf+0x234>
     b54:	e50b300c 	str	r3, [fp, #-12]
     b58:	ea000007 	b	b7c <printf+0x164>
     b5c:	e51b300c 	ldr	r3, [fp, #-12]
     b60:	e5d33000 	ldrb	r3, [r3]
     b64:	e1a01003 	mov	r1, r3
     b68:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b6c:	ebffff4d 	bl	8a8 <putc>
     b70:	e51b300c 	ldr	r3, [fp, #-12]
     b74:	e2833001 	add	r3, r3, #1
     b78:	e50b300c 	str	r3, [fp, #-12]
     b7c:	e51b300c 	ldr	r3, [fp, #-12]
     b80:	e5d33000 	ldrb	r3, [r3]
     b84:	e3530000 	cmp	r3, #0
     b88:	1afffff3 	bne	b5c <printf+0x144>
     b8c:	ea00001d 	b	c08 <printf+0x1f0>
     b90:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b94:	e3530063 	cmp	r3, #99	@ 0x63
     b98:	1a000009 	bne	bc4 <printf+0x1ac>
     b9c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ba0:	e5933000 	ldr	r3, [r3]
     ba4:	e6ef3073 	uxtb	r3, r3
     ba8:	e1a01003 	mov	r1, r3
     bac:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bb0:	ebffff3c 	bl	8a8 <putc>
     bb4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bb8:	e2833004 	add	r3, r3, #4
     bbc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bc0:	ea000010 	b	c08 <printf+0x1f0>
     bc4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bc8:	e3530025 	cmp	r3, #37	@ 0x25
     bcc:	1a000005 	bne	be8 <printf+0x1d0>
     bd0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bd4:	e6ef3073 	uxtb	r3, r3
     bd8:	e1a01003 	mov	r1, r3
     bdc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     be0:	ebffff30 	bl	8a8 <putc>
     be4:	ea000007 	b	c08 <printf+0x1f0>
     be8:	e3a01025 	mov	r1, #37	@ 0x25
     bec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bf0:	ebffff2c 	bl	8a8 <putc>
     bf4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bf8:	e6ef3073 	uxtb	r3, r3
     bfc:	e1a01003 	mov	r1, r3
     c00:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c04:	ebffff27 	bl	8a8 <putc>
     c08:	e3a03000 	mov	r3, #0
     c0c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c10:	e51b3010 	ldr	r3, [fp, #-16]
     c14:	e2833001 	add	r3, r3, #1
     c18:	e50b3010 	str	r3, [fp, #-16]
     c1c:	e59b2004 	ldr	r2, [fp, #4]
     c20:	e51b3010 	ldr	r3, [fp, #-16]
     c24:	e0823003 	add	r3, r2, r3
     c28:	e5d33000 	ldrb	r3, [r3]
     c2c:	e3530000 	cmp	r3, #0
     c30:	1affff84 	bne	a48 <printf+0x30>
     c34:	e1a00000 	nop			@ (mov r0, r0)
     c38:	e1a00000 	nop			@ (mov r0, r0)
     c3c:	e24bd004 	sub	sp, fp, #4
     c40:	e8bd4800 	pop	{fp, lr}
     c44:	e28dd00c 	add	sp, sp, #12
     c48:	e12fff1e 	bx	lr
     c4c:	000010fc 	.word	0x000010fc

00000c50 <free>:
     c50:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     c54:	e28db000 	add	fp, sp, #0
     c58:	e24dd014 	sub	sp, sp, #20
     c5c:	e50b0010 	str	r0, [fp, #-16]
     c60:	e51b3010 	ldr	r3, [fp, #-16]
     c64:	e2433008 	sub	r3, r3, #8
     c68:	e50b300c 	str	r3, [fp, #-12]
     c6c:	e59f3154 	ldr	r3, [pc, #340]	@ dc8 <free+0x178>
     c70:	e5933000 	ldr	r3, [r3]
     c74:	e50b3008 	str	r3, [fp, #-8]
     c78:	ea000010 	b	cc0 <free+0x70>
     c7c:	e51b3008 	ldr	r3, [fp, #-8]
     c80:	e5933000 	ldr	r3, [r3]
     c84:	e51b2008 	ldr	r2, [fp, #-8]
     c88:	e1520003 	cmp	r2, r3
     c8c:	3a000008 	bcc	cb4 <free+0x64>
     c90:	e51b200c 	ldr	r2, [fp, #-12]
     c94:	e51b3008 	ldr	r3, [fp, #-8]
     c98:	e1520003 	cmp	r2, r3
     c9c:	8a000010 	bhi	ce4 <free+0x94>
     ca0:	e51b3008 	ldr	r3, [fp, #-8]
     ca4:	e5933000 	ldr	r3, [r3]
     ca8:	e51b200c 	ldr	r2, [fp, #-12]
     cac:	e1520003 	cmp	r2, r3
     cb0:	3a00000b 	bcc	ce4 <free+0x94>
     cb4:	e51b3008 	ldr	r3, [fp, #-8]
     cb8:	e5933000 	ldr	r3, [r3]
     cbc:	e50b3008 	str	r3, [fp, #-8]
     cc0:	e51b200c 	ldr	r2, [fp, #-12]
     cc4:	e51b3008 	ldr	r3, [fp, #-8]
     cc8:	e1520003 	cmp	r2, r3
     ccc:	9affffea 	bls	c7c <free+0x2c>
     cd0:	e51b3008 	ldr	r3, [fp, #-8]
     cd4:	e5933000 	ldr	r3, [r3]
     cd8:	e51b200c 	ldr	r2, [fp, #-12]
     cdc:	e1520003 	cmp	r2, r3
     ce0:	2affffe5 	bcs	c7c <free+0x2c>
     ce4:	e51b300c 	ldr	r3, [fp, #-12]
     ce8:	e5933004 	ldr	r3, [r3, #4]
     cec:	e1a03183 	lsl	r3, r3, #3
     cf0:	e51b200c 	ldr	r2, [fp, #-12]
     cf4:	e0822003 	add	r2, r2, r3
     cf8:	e51b3008 	ldr	r3, [fp, #-8]
     cfc:	e5933000 	ldr	r3, [r3]
     d00:	e1520003 	cmp	r2, r3
     d04:	1a00000d 	bne	d40 <free+0xf0>
     d08:	e51b300c 	ldr	r3, [fp, #-12]
     d0c:	e5932004 	ldr	r2, [r3, #4]
     d10:	e51b3008 	ldr	r3, [fp, #-8]
     d14:	e5933000 	ldr	r3, [r3]
     d18:	e5933004 	ldr	r3, [r3, #4]
     d1c:	e0822003 	add	r2, r2, r3
     d20:	e51b300c 	ldr	r3, [fp, #-12]
     d24:	e5832004 	str	r2, [r3, #4]
     d28:	e51b3008 	ldr	r3, [fp, #-8]
     d2c:	e5933000 	ldr	r3, [r3]
     d30:	e5932000 	ldr	r2, [r3]
     d34:	e51b300c 	ldr	r3, [fp, #-12]
     d38:	e5832000 	str	r2, [r3]
     d3c:	ea000003 	b	d50 <free+0x100>
     d40:	e51b3008 	ldr	r3, [fp, #-8]
     d44:	e5932000 	ldr	r2, [r3]
     d48:	e51b300c 	ldr	r3, [fp, #-12]
     d4c:	e5832000 	str	r2, [r3]
     d50:	e51b3008 	ldr	r3, [fp, #-8]
     d54:	e5933004 	ldr	r3, [r3, #4]
     d58:	e1a03183 	lsl	r3, r3, #3
     d5c:	e51b2008 	ldr	r2, [fp, #-8]
     d60:	e0823003 	add	r3, r2, r3
     d64:	e51b200c 	ldr	r2, [fp, #-12]
     d68:	e1520003 	cmp	r2, r3
     d6c:	1a00000b 	bne	da0 <free+0x150>
     d70:	e51b3008 	ldr	r3, [fp, #-8]
     d74:	e5932004 	ldr	r2, [r3, #4]
     d78:	e51b300c 	ldr	r3, [fp, #-12]
     d7c:	e5933004 	ldr	r3, [r3, #4]
     d80:	e0822003 	add	r2, r2, r3
     d84:	e51b3008 	ldr	r3, [fp, #-8]
     d88:	e5832004 	str	r2, [r3, #4]
     d8c:	e51b300c 	ldr	r3, [fp, #-12]
     d90:	e5932000 	ldr	r2, [r3]
     d94:	e51b3008 	ldr	r3, [fp, #-8]
     d98:	e5832000 	str	r2, [r3]
     d9c:	ea000002 	b	dac <free+0x15c>
     da0:	e51b3008 	ldr	r3, [fp, #-8]
     da4:	e51b200c 	ldr	r2, [fp, #-12]
     da8:	e5832000 	str	r2, [r3]
     dac:	e59f2014 	ldr	r2, [pc, #20]	@ dc8 <free+0x178>
     db0:	e51b3008 	ldr	r3, [fp, #-8]
     db4:	e5823000 	str	r3, [r2]
     db8:	e1a00000 	nop			@ (mov r0, r0)
     dbc:	e28bd000 	add	sp, fp, #0
     dc0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     dc4:	e12fff1e 	bx	lr
     dc8:	00001120 	.word	0x00001120

00000dcc <morecore>:
     dcc:	e92d4800 	push	{fp, lr}
     dd0:	e28db004 	add	fp, sp, #4
     dd4:	e24dd010 	sub	sp, sp, #16
     dd8:	e50b0010 	str	r0, [fp, #-16]
     ddc:	e51b3010 	ldr	r3, [fp, #-16]
     de0:	e3530a01 	cmp	r3, #4096	@ 0x1000
     de4:	2a000001 	bcs	df0 <morecore+0x24>
     de8:	e3a03a01 	mov	r3, #4096	@ 0x1000
     dec:	e50b3010 	str	r3, [fp, #-16]
     df0:	e51b3010 	ldr	r3, [fp, #-16]
     df4:	e1a03183 	lsl	r3, r3, #3
     df8:	e1a00003 	mov	r0, r3
     dfc:	ebfffe85 	bl	818 <sbrk>
     e00:	e50b0008 	str	r0, [fp, #-8]
     e04:	e51b3008 	ldr	r3, [fp, #-8]
     e08:	e3730001 	cmn	r3, #1
     e0c:	1a000001 	bne	e18 <morecore+0x4c>
     e10:	e3a03000 	mov	r3, #0
     e14:	ea00000a 	b	e44 <morecore+0x78>
     e18:	e51b3008 	ldr	r3, [fp, #-8]
     e1c:	e50b300c 	str	r3, [fp, #-12]
     e20:	e51b300c 	ldr	r3, [fp, #-12]
     e24:	e51b2010 	ldr	r2, [fp, #-16]
     e28:	e5832004 	str	r2, [r3, #4]
     e2c:	e51b300c 	ldr	r3, [fp, #-12]
     e30:	e2833008 	add	r3, r3, #8
     e34:	e1a00003 	mov	r0, r3
     e38:	ebffff84 	bl	c50 <free>
     e3c:	e59f300c 	ldr	r3, [pc, #12]	@ e50 <morecore+0x84>
     e40:	e5933000 	ldr	r3, [r3]
     e44:	e1a00003 	mov	r0, r3
     e48:	e24bd004 	sub	sp, fp, #4
     e4c:	e8bd8800 	pop	{fp, pc}
     e50:	00001120 	.word	0x00001120

00000e54 <malloc>:
     e54:	e92d4800 	push	{fp, lr}
     e58:	e28db004 	add	fp, sp, #4
     e5c:	e24dd018 	sub	sp, sp, #24
     e60:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     e64:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e68:	e2833007 	add	r3, r3, #7
     e6c:	e1a031a3 	lsr	r3, r3, #3
     e70:	e2833001 	add	r3, r3, #1
     e74:	e50b3010 	str	r3, [fp, #-16]
     e78:	e59f3134 	ldr	r3, [pc, #308]	@ fb4 <malloc+0x160>
     e7c:	e5933000 	ldr	r3, [r3]
     e80:	e50b300c 	str	r3, [fp, #-12]
     e84:	e51b300c 	ldr	r3, [fp, #-12]
     e88:	e3530000 	cmp	r3, #0
     e8c:	1a00000b 	bne	ec0 <malloc+0x6c>
     e90:	e59f3120 	ldr	r3, [pc, #288]	@ fb8 <malloc+0x164>
     e94:	e50b300c 	str	r3, [fp, #-12]
     e98:	e59f2114 	ldr	r2, [pc, #276]	@ fb4 <malloc+0x160>
     e9c:	e51b300c 	ldr	r3, [fp, #-12]
     ea0:	e5823000 	str	r3, [r2]
     ea4:	e59f3108 	ldr	r3, [pc, #264]	@ fb4 <malloc+0x160>
     ea8:	e5933000 	ldr	r3, [r3]
     eac:	e59f2104 	ldr	r2, [pc, #260]	@ fb8 <malloc+0x164>
     eb0:	e5823000 	str	r3, [r2]
     eb4:	e59f30fc 	ldr	r3, [pc, #252]	@ fb8 <malloc+0x164>
     eb8:	e3a02000 	mov	r2, #0
     ebc:	e5832004 	str	r2, [r3, #4]
     ec0:	e51b300c 	ldr	r3, [fp, #-12]
     ec4:	e5933000 	ldr	r3, [r3]
     ec8:	e50b3008 	str	r3, [fp, #-8]
     ecc:	e51b3008 	ldr	r3, [fp, #-8]
     ed0:	e5933004 	ldr	r3, [r3, #4]
     ed4:	e51b2010 	ldr	r2, [fp, #-16]
     ed8:	e1520003 	cmp	r2, r3
     edc:	8a00001e 	bhi	f5c <malloc+0x108>
     ee0:	e51b3008 	ldr	r3, [fp, #-8]
     ee4:	e5933004 	ldr	r3, [r3, #4]
     ee8:	e51b2010 	ldr	r2, [fp, #-16]
     eec:	e1520003 	cmp	r2, r3
     ef0:	1a000004 	bne	f08 <malloc+0xb4>
     ef4:	e51b3008 	ldr	r3, [fp, #-8]
     ef8:	e5932000 	ldr	r2, [r3]
     efc:	e51b300c 	ldr	r3, [fp, #-12]
     f00:	e5832000 	str	r2, [r3]
     f04:	ea00000e 	b	f44 <malloc+0xf0>
     f08:	e51b3008 	ldr	r3, [fp, #-8]
     f0c:	e5932004 	ldr	r2, [r3, #4]
     f10:	e51b3010 	ldr	r3, [fp, #-16]
     f14:	e0422003 	sub	r2, r2, r3
     f18:	e51b3008 	ldr	r3, [fp, #-8]
     f1c:	e5832004 	str	r2, [r3, #4]
     f20:	e51b3008 	ldr	r3, [fp, #-8]
     f24:	e5933004 	ldr	r3, [r3, #4]
     f28:	e1a03183 	lsl	r3, r3, #3
     f2c:	e51b2008 	ldr	r2, [fp, #-8]
     f30:	e0823003 	add	r3, r2, r3
     f34:	e50b3008 	str	r3, [fp, #-8]
     f38:	e51b3008 	ldr	r3, [fp, #-8]
     f3c:	e51b2010 	ldr	r2, [fp, #-16]
     f40:	e5832004 	str	r2, [r3, #4]
     f44:	e59f2068 	ldr	r2, [pc, #104]	@ fb4 <malloc+0x160>
     f48:	e51b300c 	ldr	r3, [fp, #-12]
     f4c:	e5823000 	str	r3, [r2]
     f50:	e51b3008 	ldr	r3, [fp, #-8]
     f54:	e2833008 	add	r3, r3, #8
     f58:	ea000012 	b	fa8 <malloc+0x154>
     f5c:	e59f3050 	ldr	r3, [pc, #80]	@ fb4 <malloc+0x160>
     f60:	e5933000 	ldr	r3, [r3]
     f64:	e51b2008 	ldr	r2, [fp, #-8]
     f68:	e1520003 	cmp	r2, r3
     f6c:	1a000007 	bne	f90 <malloc+0x13c>
     f70:	e51b0010 	ldr	r0, [fp, #-16]
     f74:	ebffff94 	bl	dcc <morecore>
     f78:	e50b0008 	str	r0, [fp, #-8]
     f7c:	e51b3008 	ldr	r3, [fp, #-8]
     f80:	e3530000 	cmp	r3, #0
     f84:	1a000001 	bne	f90 <malloc+0x13c>
     f88:	e3a03000 	mov	r3, #0
     f8c:	ea000005 	b	fa8 <malloc+0x154>
     f90:	e51b3008 	ldr	r3, [fp, #-8]
     f94:	e50b300c 	str	r3, [fp, #-12]
     f98:	e51b3008 	ldr	r3, [fp, #-8]
     f9c:	e5933000 	ldr	r3, [r3]
     fa0:	e50b3008 	str	r3, [fp, #-8]
     fa4:	eaffffc8 	b	ecc <malloc+0x78>
     fa8:	e1a00003 	mov	r0, r3
     fac:	e24bd004 	sub	sp, fp, #4
     fb0:	e8bd8800 	pop	{fp, pc}
     fb4:	00001120 	.word	0x00001120
     fb8:	00001118 	.word	0x00001118

00000fbc <__udivsi3>:
     fbc:	e2512001 	subs	r2, r1, #1
     fc0:	012fff1e 	bxeq	lr
     fc4:	3a000036 	bcc	10a4 <__udivsi3+0xe8>
     fc8:	e1500001 	cmp	r0, r1
     fcc:	9a000022 	bls	105c <__udivsi3+0xa0>
     fd0:	e1110002 	tst	r1, r2
     fd4:	0a000023 	beq	1068 <__udivsi3+0xac>
     fd8:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
     fdc:	01a01181 	lsleq	r1, r1, #3
     fe0:	03a03008 	moveq	r3, #8
     fe4:	13a03001 	movne	r3, #1
     fe8:	e3510201 	cmp	r1, #268435456	@ 0x10000000
     fec:	31510000 	cmpcc	r1, r0
     ff0:	31a01201 	lslcc	r1, r1, #4
     ff4:	31a03203 	lslcc	r3, r3, #4
     ff8:	3afffffa 	bcc	fe8 <__udivsi3+0x2c>
     ffc:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1000:	31510000 	cmpcc	r1, r0
    1004:	31a01081 	lslcc	r1, r1, #1
    1008:	31a03083 	lslcc	r3, r3, #1
    100c:	3afffffa 	bcc	ffc <__udivsi3+0x40>
    1010:	e3a02000 	mov	r2, #0
    1014:	e1500001 	cmp	r0, r1
    1018:	20400001 	subcs	r0, r0, r1
    101c:	21822003 	orrcs	r2, r2, r3
    1020:	e15000a1 	cmp	r0, r1, lsr #1
    1024:	204000a1 	subcs	r0, r0, r1, lsr #1
    1028:	218220a3 	orrcs	r2, r2, r3, lsr #1
    102c:	e1500121 	cmp	r0, r1, lsr #2
    1030:	20400121 	subcs	r0, r0, r1, lsr #2
    1034:	21822123 	orrcs	r2, r2, r3, lsr #2
    1038:	e15001a1 	cmp	r0, r1, lsr #3
    103c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1040:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1044:	e3500000 	cmp	r0, #0
    1048:	11b03223 	lsrsne	r3, r3, #4
    104c:	11a01221 	lsrne	r1, r1, #4
    1050:	1affffef 	bne	1014 <__udivsi3+0x58>
    1054:	e1a00002 	mov	r0, r2
    1058:	e12fff1e 	bx	lr
    105c:	03a00001 	moveq	r0, #1
    1060:	13a00000 	movne	r0, #0
    1064:	e12fff1e 	bx	lr
    1068:	e3510801 	cmp	r1, #65536	@ 0x10000
    106c:	21a01821 	lsrcs	r1, r1, #16
    1070:	23a02010 	movcs	r2, #16
    1074:	33a02000 	movcc	r2, #0
    1078:	e3510c01 	cmp	r1, #256	@ 0x100
    107c:	21a01421 	lsrcs	r1, r1, #8
    1080:	22822008 	addcs	r2, r2, #8
    1084:	e3510010 	cmp	r1, #16
    1088:	21a01221 	lsrcs	r1, r1, #4
    108c:	22822004 	addcs	r2, r2, #4
    1090:	e3510004 	cmp	r1, #4
    1094:	82822003 	addhi	r2, r2, #3
    1098:	908220a1 	addls	r2, r2, r1, lsr #1
    109c:	e1a00230 	lsr	r0, r0, r2
    10a0:	e12fff1e 	bx	lr
    10a4:	e3500000 	cmp	r0, #0
    10a8:	13e00000 	mvnne	r0, #0
    10ac:	ea000007 	b	10d0 <__aeabi_idiv0>

000010b0 <__aeabi_uidivmod>:
    10b0:	e3510000 	cmp	r1, #0
    10b4:	0afffffa 	beq	10a4 <__udivsi3+0xe8>
    10b8:	e92d4003 	push	{r0, r1, lr}
    10bc:	ebffffbe 	bl	fbc <__udivsi3>
    10c0:	e8bd4006 	pop	{r1, r2, lr}
    10c4:	e0030092 	mul	r3, r2, r0
    10c8:	e0411003 	sub	r1, r1, r3
    10cc:	e12fff1e 	bx	lr

000010d0 <__aeabi_idiv0>:
    10d0:	e12fff1e 	bx	lr
