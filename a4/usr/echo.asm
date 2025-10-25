
_echo:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      14:	e3a03001 	mov	r3, #1
      18:	e50b3008 	str	r3, [fp, #-8]
      1c:	ea000013 	b	70 <main+0x70>
      20:	e51b3008 	ldr	r3, [fp, #-8]
      24:	e1a03103 	lsl	r3, r3, #2
      28:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      2c:	e0823003 	add	r3, r2, r3
      30:	e5931000 	ldr	r1, [r3]
      34:	e51b3008 	ldr	r3, [fp, #-8]
      38:	e2833001 	add	r3, r3, #1
      3c:	e51b2010 	ldr	r2, [fp, #-16]
      40:	e1520003 	cmp	r2, r3
      44:	da000001 	ble	50 <main+0x50>
      48:	e59f3034 	ldr	r3, [pc, #52]	@ 84 <main+0x84>
      4c:	ea000000 	b	54 <main+0x54>
      50:	e59f3030 	ldr	r3, [pc, #48]	@ 88 <main+0x88>
      54:	e1a02001 	mov	r2, r1
      58:	e59f102c 	ldr	r1, [pc, #44]	@ 8c <main+0x8c>
      5c:	e3a00001 	mov	r0, #1
      60:	eb0003c4 	bl	f78 <printf>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e2833001 	add	r3, r3, #1
      6c:	e50b3008 	str	r3, [fp, #-8]
      70:	e51b2008 	ldr	r2, [fp, #-8]
      74:	e51b3010 	ldr	r3, [fp, #-16]
      78:	e1520003 	cmp	r2, r3
      7c:	baffffe7 	blt	20 <main+0x20>
      80:	eb000225 	bl	91c <exit>
      84:	00001634 	.word	0x00001634
      88:	00001638 	.word	0x00001638
      8c:	0000163c 	.word	0x0000163c

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
     384:	eb00017f 	bl	988 <read>
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
     42c:	eb000182 	bl	a3c <open>
     430:	e50b0008 	str	r0, [fp, #-8]
     434:	e51b3008 	ldr	r3, [fp, #-8]
     438:	e3530000 	cmp	r3, #0
     43c:	aa000001 	bge	448 <stat+0x38>
     440:	e3e03000 	mvn	r3, #0
     444:	ea000006 	b	464 <stat+0x54>
     448:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     44c:	e51b0008 	ldr	r0, [fp, #-8]
     450:	eb000194 	bl	aa8 <fstat>
     454:	e50b000c 	str	r0, [fp, #-12]
     458:	e51b0008 	ldr	r0, [fp, #-8]
     45c:	eb00015b 	bl	9d0 <close>
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

000005b8 <xchg>:
     5b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5bc:	e28db000 	add	fp, sp, #0
     5c0:	e24dd00c 	sub	sp, sp, #12
     5c4:	e50b0008 	str	r0, [fp, #-8]
     5c8:	e50b100c 	str	r1, [fp, #-12]
     5cc:	e51b200c 	ldr	r2, [fp, #-12]
     5d0:	e51b3008 	ldr	r3, [fp, #-8]
     5d4:	e1931f9f 	ldrex	r1, [r3]
     5d8:	e1830f92 	strex	r0, r2, [r3]
     5dc:	e3500000 	cmp	r0, #0
     5e0:	1afffffb 	bne	5d4 <xchg+0x1c>
     5e4:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     5e8:	e1a03001 	mov	r3, r1
     5ec:	e1a00003 	mov	r0, r3
     5f0:	e28bd000 	add	sp, fp, #0
     5f4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5f8:	e12fff1e 	bx	lr

000005fc <acquireLock>:
     5fc:	e92d4800 	push	{fp, lr}
     600:	e28db004 	add	fp, sp, #4
     604:	e24dd008 	sub	sp, sp, #8
     608:	e50b0008 	str	r0, [fp, #-8]
     60c:	e51b3008 	ldr	r3, [fp, #-8]
     610:	e5933004 	ldr	r3, [r3, #4]
     614:	e3530000 	cmp	r3, #0
     618:	0a000008 	beq	640 <acquireLock+0x44>
     61c:	e1a00000 	nop			@ (mov r0, r0)
     620:	e51b3008 	ldr	r3, [fp, #-8]
     624:	e3a01001 	mov	r1, #1
     628:	e1a00003 	mov	r0, r3
     62c:	ebffffe1 	bl	5b8 <xchg>
     630:	e1a03000 	mov	r3, r0
     634:	e3530000 	cmp	r3, #0
     638:	1afffff8 	bne	620 <acquireLock+0x24>
     63c:	ea000000 	b	644 <acquireLock+0x48>
     640:	e1a00000 	nop			@ (mov r0, r0)
     644:	e24bd004 	sub	sp, fp, #4
     648:	e8bd8800 	pop	{fp, pc}

0000064c <releaseLock>:
     64c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     650:	e28db000 	add	fp, sp, #0
     654:	e24dd00c 	sub	sp, sp, #12
     658:	e50b0008 	str	r0, [fp, #-8]
     65c:	e51b3008 	ldr	r3, [fp, #-8]
     660:	e5933004 	ldr	r3, [r3, #4]
     664:	e3530000 	cmp	r3, #0
     668:	0a000007 	beq	68c <releaseLock+0x40>
     66c:	e51b3008 	ldr	r3, [fp, #-8]
     670:	e5933000 	ldr	r3, [r3]
     674:	e3530001 	cmp	r3, #1
     678:	1a000005 	bne	694 <releaseLock+0x48>
     67c:	e51b3008 	ldr	r3, [fp, #-8]
     680:	e3a02000 	mov	r2, #0
     684:	e5832000 	str	r2, [r3]
     688:	ea000002 	b	698 <releaseLock+0x4c>
     68c:	e1a00000 	nop			@ (mov r0, r0)
     690:	ea000000 	b	698 <releaseLock+0x4c>
     694:	e1a00000 	nop			@ (mov r0, r0)
     698:	e28bd000 	add	sp, fp, #0
     69c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6a0:	e12fff1e 	bx	lr

000006a4 <initiateCondVar>:
     6a4:	e92d4800 	push	{fp, lr}
     6a8:	e28db004 	add	fp, sp, #4
     6ac:	e24dd008 	sub	sp, sp, #8
     6b0:	e50b0008 	str	r0, [fp, #-8]
     6b4:	eb0001b8 	bl	d9c <getChannel>
     6b8:	e1a02000 	mov	r2, r0
     6bc:	e51b3008 	ldr	r3, [fp, #-8]
     6c0:	e5832000 	str	r2, [r3]
     6c4:	e51b3008 	ldr	r3, [fp, #-8]
     6c8:	e3a02001 	mov	r2, #1
     6cc:	e5832004 	str	r2, [r3, #4]
     6d0:	e1a00000 	nop			@ (mov r0, r0)
     6d4:	e24bd004 	sub	sp, fp, #4
     6d8:	e8bd8800 	pop	{fp, pc}

000006dc <condWait>:
     6dc:	e92d4800 	push	{fp, lr}
     6e0:	e28db004 	add	fp, sp, #4
     6e4:	e24dd008 	sub	sp, sp, #8
     6e8:	e50b0008 	str	r0, [fp, #-8]
     6ec:	e50b100c 	str	r1, [fp, #-12]
     6f0:	e51b3008 	ldr	r3, [fp, #-8]
     6f4:	e5933004 	ldr	r3, [r3, #4]
     6f8:	e3530000 	cmp	r3, #0
     6fc:	0a00000c 	beq	734 <condWait+0x58>
     700:	e51b300c 	ldr	r3, [fp, #-12]
     704:	e5933004 	ldr	r3, [r3, #4]
     708:	e3530000 	cmp	r3, #0
     70c:	0a000008 	beq	734 <condWait+0x58>
     710:	e51b000c 	ldr	r0, [fp, #-12]
     714:	ebffffcc 	bl	64c <releaseLock>
     718:	e51b3008 	ldr	r3, [fp, #-8]
     71c:	e5933000 	ldr	r3, [r3]
     720:	e1a00003 	mov	r0, r3
     724:	eb000193 	bl	d78 <sleepChan>
     728:	e51b000c 	ldr	r0, [fp, #-12]
     72c:	ebffffb2 	bl	5fc <acquireLock>
     730:	ea000000 	b	738 <condWait+0x5c>
     734:	e1a00000 	nop			@ (mov r0, r0)
     738:	e24bd004 	sub	sp, fp, #4
     73c:	e8bd8800 	pop	{fp, pc}

00000740 <broadcast>:
     740:	e92d4800 	push	{fp, lr}
     744:	e28db004 	add	fp, sp, #4
     748:	e24dd008 	sub	sp, sp, #8
     74c:	e50b0008 	str	r0, [fp, #-8]
     750:	e51b3008 	ldr	r3, [fp, #-8]
     754:	e5933004 	ldr	r3, [r3, #4]
     758:	e3530000 	cmp	r3, #0
     75c:	0a000004 	beq	774 <broadcast+0x34>
     760:	e51b3008 	ldr	r3, [fp, #-8]
     764:	e5933000 	ldr	r3, [r3]
     768:	e1a00003 	mov	r0, r3
     76c:	eb000193 	bl	dc0 <sigChan>
     770:	ea000000 	b	778 <broadcast+0x38>
     774:	e1a00000 	nop			@ (mov r0, r0)
     778:	e24bd004 	sub	sp, fp, #4
     77c:	e8bd8800 	pop	{fp, pc}

00000780 <signal>:
     780:	e92d4800 	push	{fp, lr}
     784:	e28db004 	add	fp, sp, #4
     788:	e24dd008 	sub	sp, sp, #8
     78c:	e50b0008 	str	r0, [fp, #-8]
     790:	e51b3008 	ldr	r3, [fp, #-8]
     794:	e5933004 	ldr	r3, [r3, #4]
     798:	e3530000 	cmp	r3, #0
     79c:	0a000004 	beq	7b4 <signal+0x34>
     7a0:	e51b3008 	ldr	r3, [fp, #-8]
     7a4:	e5933000 	ldr	r3, [r3]
     7a8:	e1a00003 	mov	r0, r3
     7ac:	eb00018c 	bl	de4 <sigOneChan>
     7b0:	ea000000 	b	7b8 <signal+0x38>
     7b4:	e1a00000 	nop			@ (mov r0, r0)
     7b8:	e24bd004 	sub	sp, fp, #4
     7bc:	e8bd8800 	pop	{fp, pc}

000007c0 <semInit>:
     7c0:	e92d4800 	push	{fp, lr}
     7c4:	e28db004 	add	fp, sp, #4
     7c8:	e24dd008 	sub	sp, sp, #8
     7cc:	e50b0008 	str	r0, [fp, #-8]
     7d0:	e50b100c 	str	r1, [fp, #-12]
     7d4:	e51b3008 	ldr	r3, [fp, #-8]
     7d8:	e51b200c 	ldr	r2, [fp, #-12]
     7dc:	e5832000 	str	r2, [r3]
     7e0:	e51b3008 	ldr	r3, [fp, #-8]
     7e4:	e2833004 	add	r3, r3, #4
     7e8:	e1a00003 	mov	r0, r3
     7ec:	ebffff63 	bl	580 <initiateLock>
     7f0:	e51b3008 	ldr	r3, [fp, #-8]
     7f4:	e283300c 	add	r3, r3, #12
     7f8:	e1a00003 	mov	r0, r3
     7fc:	ebffffa8 	bl	6a4 <initiateCondVar>
     800:	e51b3008 	ldr	r3, [fp, #-8]
     804:	e3a02001 	mov	r2, #1
     808:	e5832014 	str	r2, [r3, #20]
     80c:	e1a00000 	nop			@ (mov r0, r0)
     810:	e24bd004 	sub	sp, fp, #4
     814:	e8bd8800 	pop	{fp, pc}

00000818 <semUp>:
     818:	e92d4800 	push	{fp, lr}
     81c:	e28db004 	add	fp, sp, #4
     820:	e24dd008 	sub	sp, sp, #8
     824:	e50b0008 	str	r0, [fp, #-8]
     828:	e51b3008 	ldr	r3, [fp, #-8]
     82c:	e2833004 	add	r3, r3, #4
     830:	e1a00003 	mov	r0, r3
     834:	ebffff70 	bl	5fc <acquireLock>
     838:	e51b3008 	ldr	r3, [fp, #-8]
     83c:	e5933000 	ldr	r3, [r3]
     840:	e2832001 	add	r2, r3, #1
     844:	e51b3008 	ldr	r3, [fp, #-8]
     848:	e5832000 	str	r2, [r3]
     84c:	e51b3008 	ldr	r3, [fp, #-8]
     850:	e283300c 	add	r3, r3, #12
     854:	e1a00003 	mov	r0, r3
     858:	ebffffc8 	bl	780 <signal>
     85c:	e51b3008 	ldr	r3, [fp, #-8]
     860:	e2833004 	add	r3, r3, #4
     864:	e1a00003 	mov	r0, r3
     868:	ebffff77 	bl	64c <releaseLock>
     86c:	e1a00000 	nop			@ (mov r0, r0)
     870:	e24bd004 	sub	sp, fp, #4
     874:	e8bd8800 	pop	{fp, pc}

00000878 <semDown>:
     878:	e92d4800 	push	{fp, lr}
     87c:	e28db004 	add	fp, sp, #4
     880:	e24dd008 	sub	sp, sp, #8
     884:	e50b0008 	str	r0, [fp, #-8]
     888:	e51b3008 	ldr	r3, [fp, #-8]
     88c:	e2833004 	add	r3, r3, #4
     890:	e1a00003 	mov	r0, r3
     894:	ebffff58 	bl	5fc <acquireLock>
     898:	ea000006 	b	8b8 <semDown+0x40>
     89c:	e51b3008 	ldr	r3, [fp, #-8]
     8a0:	e283200c 	add	r2, r3, #12
     8a4:	e51b3008 	ldr	r3, [fp, #-8]
     8a8:	e2833004 	add	r3, r3, #4
     8ac:	e1a01003 	mov	r1, r3
     8b0:	e1a00002 	mov	r0, r2
     8b4:	ebffff88 	bl	6dc <condWait>
     8b8:	e51b3008 	ldr	r3, [fp, #-8]
     8bc:	e5933000 	ldr	r3, [r3]
     8c0:	e3530000 	cmp	r3, #0
     8c4:	dafffff4 	ble	89c <semDown+0x24>
     8c8:	e51b3008 	ldr	r3, [fp, #-8]
     8cc:	e5933000 	ldr	r3, [r3]
     8d0:	e2432001 	sub	r2, r3, #1
     8d4:	e51b3008 	ldr	r3, [fp, #-8]
     8d8:	e5832000 	str	r2, [r3]
     8dc:	e51b3008 	ldr	r3, [fp, #-8]
     8e0:	e2833004 	add	r3, r3, #4
     8e4:	e1a00003 	mov	r0, r3
     8e8:	ebffff57 	bl	64c <releaseLock>
     8ec:	e1a00000 	nop			@ (mov r0, r0)
     8f0:	e24bd004 	sub	sp, fp, #4
     8f4:	e8bd8800 	pop	{fp, pc}

000008f8 <fork>:
     8f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8fc:	e1a04003 	mov	r4, r3
     900:	e1a03002 	mov	r3, r2
     904:	e1a02001 	mov	r2, r1
     908:	e1a01000 	mov	r1, r0
     90c:	e3a00001 	mov	r0, #1
     910:	ef000000 	svc	0x00000000
     914:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     918:	e12fff1e 	bx	lr

0000091c <exit>:
     91c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     920:	e1a04003 	mov	r4, r3
     924:	e1a03002 	mov	r3, r2
     928:	e1a02001 	mov	r2, r1
     92c:	e1a01000 	mov	r1, r0
     930:	e3a00002 	mov	r0, #2
     934:	ef000000 	svc	0x00000000
     938:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     93c:	e12fff1e 	bx	lr

00000940 <wait>:
     940:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     944:	e1a04003 	mov	r4, r3
     948:	e1a03002 	mov	r3, r2
     94c:	e1a02001 	mov	r2, r1
     950:	e1a01000 	mov	r1, r0
     954:	e3a00003 	mov	r0, #3
     958:	ef000000 	svc	0x00000000
     95c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     960:	e12fff1e 	bx	lr

00000964 <pipe>:
     964:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     968:	e1a04003 	mov	r4, r3
     96c:	e1a03002 	mov	r3, r2
     970:	e1a02001 	mov	r2, r1
     974:	e1a01000 	mov	r1, r0
     978:	e3a00004 	mov	r0, #4
     97c:	ef000000 	svc	0x00000000
     980:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     984:	e12fff1e 	bx	lr

00000988 <read>:
     988:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     98c:	e1a04003 	mov	r4, r3
     990:	e1a03002 	mov	r3, r2
     994:	e1a02001 	mov	r2, r1
     998:	e1a01000 	mov	r1, r0
     99c:	e3a00005 	mov	r0, #5
     9a0:	ef000000 	svc	0x00000000
     9a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a8:	e12fff1e 	bx	lr

000009ac <write>:
     9ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9b0:	e1a04003 	mov	r4, r3
     9b4:	e1a03002 	mov	r3, r2
     9b8:	e1a02001 	mov	r2, r1
     9bc:	e1a01000 	mov	r1, r0
     9c0:	e3a00010 	mov	r0, #16
     9c4:	ef000000 	svc	0x00000000
     9c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9cc:	e12fff1e 	bx	lr

000009d0 <close>:
     9d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9d4:	e1a04003 	mov	r4, r3
     9d8:	e1a03002 	mov	r3, r2
     9dc:	e1a02001 	mov	r2, r1
     9e0:	e1a01000 	mov	r1, r0
     9e4:	e3a00015 	mov	r0, #21
     9e8:	ef000000 	svc	0x00000000
     9ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9f0:	e12fff1e 	bx	lr

000009f4 <kill>:
     9f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f8:	e1a04003 	mov	r4, r3
     9fc:	e1a03002 	mov	r3, r2
     a00:	e1a02001 	mov	r2, r1
     a04:	e1a01000 	mov	r1, r0
     a08:	e3a00006 	mov	r0, #6
     a0c:	ef000000 	svc	0x00000000
     a10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a14:	e12fff1e 	bx	lr

00000a18 <exec>:
     a18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a1c:	e1a04003 	mov	r4, r3
     a20:	e1a03002 	mov	r3, r2
     a24:	e1a02001 	mov	r2, r1
     a28:	e1a01000 	mov	r1, r0
     a2c:	e3a00007 	mov	r0, #7
     a30:	ef000000 	svc	0x00000000
     a34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a38:	e12fff1e 	bx	lr

00000a3c <open>:
     a3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a40:	e1a04003 	mov	r4, r3
     a44:	e1a03002 	mov	r3, r2
     a48:	e1a02001 	mov	r2, r1
     a4c:	e1a01000 	mov	r1, r0
     a50:	e3a0000f 	mov	r0, #15
     a54:	ef000000 	svc	0x00000000
     a58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a5c:	e12fff1e 	bx	lr

00000a60 <mknod>:
     a60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a64:	e1a04003 	mov	r4, r3
     a68:	e1a03002 	mov	r3, r2
     a6c:	e1a02001 	mov	r2, r1
     a70:	e1a01000 	mov	r1, r0
     a74:	e3a00011 	mov	r0, #17
     a78:	ef000000 	svc	0x00000000
     a7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a80:	e12fff1e 	bx	lr

00000a84 <unlink>:
     a84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a88:	e1a04003 	mov	r4, r3
     a8c:	e1a03002 	mov	r3, r2
     a90:	e1a02001 	mov	r2, r1
     a94:	e1a01000 	mov	r1, r0
     a98:	e3a00012 	mov	r0, #18
     a9c:	ef000000 	svc	0x00000000
     aa0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aa4:	e12fff1e 	bx	lr

00000aa8 <fstat>:
     aa8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aac:	e1a04003 	mov	r4, r3
     ab0:	e1a03002 	mov	r3, r2
     ab4:	e1a02001 	mov	r2, r1
     ab8:	e1a01000 	mov	r1, r0
     abc:	e3a00008 	mov	r0, #8
     ac0:	ef000000 	svc	0x00000000
     ac4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac8:	e12fff1e 	bx	lr

00000acc <link>:
     acc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad0:	e1a04003 	mov	r4, r3
     ad4:	e1a03002 	mov	r3, r2
     ad8:	e1a02001 	mov	r2, r1
     adc:	e1a01000 	mov	r1, r0
     ae0:	e3a00013 	mov	r0, #19
     ae4:	ef000000 	svc	0x00000000
     ae8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aec:	e12fff1e 	bx	lr

00000af0 <mkdir>:
     af0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     af4:	e1a04003 	mov	r4, r3
     af8:	e1a03002 	mov	r3, r2
     afc:	e1a02001 	mov	r2, r1
     b00:	e1a01000 	mov	r1, r0
     b04:	e3a00014 	mov	r0, #20
     b08:	ef000000 	svc	0x00000000
     b0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b10:	e12fff1e 	bx	lr

00000b14 <chdir>:
     b14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b18:	e1a04003 	mov	r4, r3
     b1c:	e1a03002 	mov	r3, r2
     b20:	e1a02001 	mov	r2, r1
     b24:	e1a01000 	mov	r1, r0
     b28:	e3a00009 	mov	r0, #9
     b2c:	ef000000 	svc	0x00000000
     b30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b34:	e12fff1e 	bx	lr

00000b38 <dup>:
     b38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b3c:	e1a04003 	mov	r4, r3
     b40:	e1a03002 	mov	r3, r2
     b44:	e1a02001 	mov	r2, r1
     b48:	e1a01000 	mov	r1, r0
     b4c:	e3a0000a 	mov	r0, #10
     b50:	ef000000 	svc	0x00000000
     b54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b58:	e12fff1e 	bx	lr

00000b5c <getpid>:
     b5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b60:	e1a04003 	mov	r4, r3
     b64:	e1a03002 	mov	r3, r2
     b68:	e1a02001 	mov	r2, r1
     b6c:	e1a01000 	mov	r1, r0
     b70:	e3a0000b 	mov	r0, #11
     b74:	ef000000 	svc	0x00000000
     b78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b7c:	e12fff1e 	bx	lr

00000b80 <sbrk>:
     b80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b84:	e1a04003 	mov	r4, r3
     b88:	e1a03002 	mov	r3, r2
     b8c:	e1a02001 	mov	r2, r1
     b90:	e1a01000 	mov	r1, r0
     b94:	e3a0000c 	mov	r0, #12
     b98:	ef000000 	svc	0x00000000
     b9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba0:	e12fff1e 	bx	lr

00000ba4 <sleep>:
     ba4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba8:	e1a04003 	mov	r4, r3
     bac:	e1a03002 	mov	r3, r2
     bb0:	e1a02001 	mov	r2, r1
     bb4:	e1a01000 	mov	r1, r0
     bb8:	e3a0000d 	mov	r0, #13
     bbc:	ef000000 	svc	0x00000000
     bc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc4:	e12fff1e 	bx	lr

00000bc8 <uptime>:
     bc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bcc:	e1a04003 	mov	r4, r3
     bd0:	e1a03002 	mov	r3, r2
     bd4:	e1a02001 	mov	r2, r1
     bd8:	e1a01000 	mov	r1, r0
     bdc:	e3a0000e 	mov	r0, #14
     be0:	ef000000 	svc	0x00000000
     be4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be8:	e12fff1e 	bx	lr

00000bec <getprocs>:
     bec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf0:	e1a04003 	mov	r4, r3
     bf4:	e1a03002 	mov	r3, r2
     bf8:	e1a02001 	mov	r2, r1
     bfc:	e1a01000 	mov	r1, r0
     c00:	e3a00016 	mov	r0, #22
     c04:	ef000000 	svc	0x00000000
     c08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c0c:	e12fff1e 	bx	lr

00000c10 <settickets>:
     c10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c14:	e1a04003 	mov	r4, r3
     c18:	e1a03002 	mov	r3, r2
     c1c:	e1a02001 	mov	r2, r1
     c20:	e1a01000 	mov	r1, r0
     c24:	e3a00017 	mov	r0, #23
     c28:	ef000000 	svc	0x00000000
     c2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c30:	e12fff1e 	bx	lr

00000c34 <srand>:
     c34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c38:	e1a04003 	mov	r4, r3
     c3c:	e1a03002 	mov	r3, r2
     c40:	e1a02001 	mov	r2, r1
     c44:	e1a01000 	mov	r1, r0
     c48:	e3a00018 	mov	r0, #24
     c4c:	ef000000 	svc	0x00000000
     c50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c54:	e12fff1e 	bx	lr

00000c58 <getpinfo>:
     c58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c5c:	e1a04003 	mov	r4, r3
     c60:	e1a03002 	mov	r3, r2
     c64:	e1a02001 	mov	r2, r1
     c68:	e1a01000 	mov	r1, r0
     c6c:	e3a00019 	mov	r0, #25
     c70:	ef000000 	svc	0x00000000
     c74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c78:	e12fff1e 	bx	lr

00000c7c <dumppagetable>:
     c7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c80:	e1a04003 	mov	r4, r3
     c84:	e1a03002 	mov	r3, r2
     c88:	e1a02001 	mov	r2, r1
     c8c:	e1a01000 	mov	r1, r0
     c90:	e3a0001a 	mov	r0, #26
     c94:	ef000000 	svc	0x00000000
     c98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c9c:	e12fff1e 	bx	lr

00000ca0 <thread_create>:
     ca0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca4:	e1a04003 	mov	r4, r3
     ca8:	e1a03002 	mov	r3, r2
     cac:	e1a02001 	mov	r2, r1
     cb0:	e1a01000 	mov	r1, r0
     cb4:	e3a0001b 	mov	r0, #27
     cb8:	ef000000 	svc	0x00000000
     cbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc0:	e12fff1e 	bx	lr

00000cc4 <thread_exit>:
     cc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc8:	e1a04003 	mov	r4, r3
     ccc:	e1a03002 	mov	r3, r2
     cd0:	e1a02001 	mov	r2, r1
     cd4:	e1a01000 	mov	r1, r0
     cd8:	e3a0001c 	mov	r0, #28
     cdc:	ef000000 	svc	0x00000000
     ce0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce4:	e12fff1e 	bx	lr

00000ce8 <thread_join>:
     ce8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cec:	e1a04003 	mov	r4, r3
     cf0:	e1a03002 	mov	r3, r2
     cf4:	e1a02001 	mov	r2, r1
     cf8:	e1a01000 	mov	r1, r0
     cfc:	e3a0001d 	mov	r0, #29
     d00:	ef000000 	svc	0x00000000
     d04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d08:	e12fff1e 	bx	lr

00000d0c <waitpid>:
     d0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d10:	e1a04003 	mov	r4, r3
     d14:	e1a03002 	mov	r3, r2
     d18:	e1a02001 	mov	r2, r1
     d1c:	e1a01000 	mov	r1, r0
     d20:	e3a0001e 	mov	r0, #30
     d24:	ef000000 	svc	0x00000000
     d28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d2c:	e12fff1e 	bx	lr

00000d30 <barrier_init>:
     d30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d34:	e1a04003 	mov	r4, r3
     d38:	e1a03002 	mov	r3, r2
     d3c:	e1a02001 	mov	r2, r1
     d40:	e1a01000 	mov	r1, r0
     d44:	e3a0001f 	mov	r0, #31
     d48:	ef000000 	svc	0x00000000
     d4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d50:	e12fff1e 	bx	lr

00000d54 <barrier_check>:
     d54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d58:	e1a04003 	mov	r4, r3
     d5c:	e1a03002 	mov	r3, r2
     d60:	e1a02001 	mov	r2, r1
     d64:	e1a01000 	mov	r1, r0
     d68:	e3a00020 	mov	r0, #32
     d6c:	ef000000 	svc	0x00000000
     d70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d74:	e12fff1e 	bx	lr

00000d78 <sleepChan>:
     d78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d7c:	e1a04003 	mov	r4, r3
     d80:	e1a03002 	mov	r3, r2
     d84:	e1a02001 	mov	r2, r1
     d88:	e1a01000 	mov	r1, r0
     d8c:	e3a00024 	mov	r0, #36	@ 0x24
     d90:	ef000000 	svc	0x00000000
     d94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d98:	e12fff1e 	bx	lr

00000d9c <getChannel>:
     d9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da0:	e1a04003 	mov	r4, r3
     da4:	e1a03002 	mov	r3, r2
     da8:	e1a02001 	mov	r2, r1
     dac:	e1a01000 	mov	r1, r0
     db0:	e3a00025 	mov	r0, #37	@ 0x25
     db4:	ef000000 	svc	0x00000000
     db8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dbc:	e12fff1e 	bx	lr

00000dc0 <sigChan>:
     dc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dc4:	e1a04003 	mov	r4, r3
     dc8:	e1a03002 	mov	r3, r2
     dcc:	e1a02001 	mov	r2, r1
     dd0:	e1a01000 	mov	r1, r0
     dd4:	e3a00026 	mov	r0, #38	@ 0x26
     dd8:	ef000000 	svc	0x00000000
     ddc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     de0:	e12fff1e 	bx	lr

00000de4 <sigOneChan>:
     de4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     de8:	e1a04003 	mov	r4, r3
     dec:	e1a03002 	mov	r3, r2
     df0:	e1a02001 	mov	r2, r1
     df4:	e1a01000 	mov	r1, r0
     df8:	e3a00027 	mov	r0, #39	@ 0x27
     dfc:	ef000000 	svc	0x00000000
     e00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e04:	e12fff1e 	bx	lr

00000e08 <putc>:
     e08:	e92d4800 	push	{fp, lr}
     e0c:	e28db004 	add	fp, sp, #4
     e10:	e24dd008 	sub	sp, sp, #8
     e14:	e50b0008 	str	r0, [fp, #-8]
     e18:	e1a03001 	mov	r3, r1
     e1c:	e54b3009 	strb	r3, [fp, #-9]
     e20:	e24b3009 	sub	r3, fp, #9
     e24:	e3a02001 	mov	r2, #1
     e28:	e1a01003 	mov	r1, r3
     e2c:	e51b0008 	ldr	r0, [fp, #-8]
     e30:	ebfffedd 	bl	9ac <write>
     e34:	e1a00000 	nop			@ (mov r0, r0)
     e38:	e24bd004 	sub	sp, fp, #4
     e3c:	e8bd8800 	pop	{fp, pc}

00000e40 <printint>:
     e40:	e92d4800 	push	{fp, lr}
     e44:	e28db004 	add	fp, sp, #4
     e48:	e24dd030 	sub	sp, sp, #48	@ 0x30
     e4c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     e50:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     e54:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     e58:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     e5c:	e3a03000 	mov	r3, #0
     e60:	e50b300c 	str	r3, [fp, #-12]
     e64:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     e68:	e3530000 	cmp	r3, #0
     e6c:	0a000008 	beq	e94 <printint+0x54>
     e70:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e74:	e3530000 	cmp	r3, #0
     e78:	aa000005 	bge	e94 <printint+0x54>
     e7c:	e3a03001 	mov	r3, #1
     e80:	e50b300c 	str	r3, [fp, #-12]
     e84:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e88:	e2633000 	rsb	r3, r3, #0
     e8c:	e50b3010 	str	r3, [fp, #-16]
     e90:	ea000001 	b	e9c <printint+0x5c>
     e94:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e98:	e50b3010 	str	r3, [fp, #-16]
     e9c:	e3a03000 	mov	r3, #0
     ea0:	e50b3008 	str	r3, [fp, #-8]
     ea4:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     ea8:	e51b3010 	ldr	r3, [fp, #-16]
     eac:	e1a01002 	mov	r1, r2
     eb0:	e1a00003 	mov	r0, r3
     eb4:	eb0001d5 	bl	1610 <__aeabi_uidivmod>
     eb8:	e1a03001 	mov	r3, r1
     ebc:	e1a01003 	mov	r1, r3
     ec0:	e51b3008 	ldr	r3, [fp, #-8]
     ec4:	e2832001 	add	r2, r3, #1
     ec8:	e50b2008 	str	r2, [fp, #-8]
     ecc:	e59f20a0 	ldr	r2, [pc, #160]	@ f74 <printint+0x134>
     ed0:	e7d22001 	ldrb	r2, [r2, r1]
     ed4:	e2433004 	sub	r3, r3, #4
     ed8:	e083300b 	add	r3, r3, fp
     edc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ee0:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     ee4:	e1a01003 	mov	r1, r3
     ee8:	e51b0010 	ldr	r0, [fp, #-16]
     eec:	eb00018a 	bl	151c <__udivsi3>
     ef0:	e1a03000 	mov	r3, r0
     ef4:	e50b3010 	str	r3, [fp, #-16]
     ef8:	e51b3010 	ldr	r3, [fp, #-16]
     efc:	e3530000 	cmp	r3, #0
     f00:	1affffe7 	bne	ea4 <printint+0x64>
     f04:	e51b300c 	ldr	r3, [fp, #-12]
     f08:	e3530000 	cmp	r3, #0
     f0c:	0a00000e 	beq	f4c <printint+0x10c>
     f10:	e51b3008 	ldr	r3, [fp, #-8]
     f14:	e2832001 	add	r2, r3, #1
     f18:	e50b2008 	str	r2, [fp, #-8]
     f1c:	e2433004 	sub	r3, r3, #4
     f20:	e083300b 	add	r3, r3, fp
     f24:	e3a0202d 	mov	r2, #45	@ 0x2d
     f28:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f2c:	ea000006 	b	f4c <printint+0x10c>
     f30:	e24b2020 	sub	r2, fp, #32
     f34:	e51b3008 	ldr	r3, [fp, #-8]
     f38:	e0823003 	add	r3, r2, r3
     f3c:	e5d33000 	ldrb	r3, [r3]
     f40:	e1a01003 	mov	r1, r3
     f44:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     f48:	ebffffae 	bl	e08 <putc>
     f4c:	e51b3008 	ldr	r3, [fp, #-8]
     f50:	e2433001 	sub	r3, r3, #1
     f54:	e50b3008 	str	r3, [fp, #-8]
     f58:	e51b3008 	ldr	r3, [fp, #-8]
     f5c:	e3530000 	cmp	r3, #0
     f60:	aafffff2 	bge	f30 <printint+0xf0>
     f64:	e1a00000 	nop			@ (mov r0, r0)
     f68:	e1a00000 	nop			@ (mov r0, r0)
     f6c:	e24bd004 	sub	sp, fp, #4
     f70:	e8bd8800 	pop	{fp, pc}
     f74:	0000164c 	.word	0x0000164c

00000f78 <printf>:
     f78:	e92d000e 	push	{r1, r2, r3}
     f7c:	e92d4800 	push	{fp, lr}
     f80:	e28db004 	add	fp, sp, #4
     f84:	e24dd024 	sub	sp, sp, #36	@ 0x24
     f88:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     f8c:	e3a03000 	mov	r3, #0
     f90:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f94:	e28b3008 	add	r3, fp, #8
     f98:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f9c:	e3a03000 	mov	r3, #0
     fa0:	e50b3010 	str	r3, [fp, #-16]
     fa4:	ea000074 	b	117c <printf+0x204>
     fa8:	e59b2004 	ldr	r2, [fp, #4]
     fac:	e51b3010 	ldr	r3, [fp, #-16]
     fb0:	e0823003 	add	r3, r2, r3
     fb4:	e5d33000 	ldrb	r3, [r3]
     fb8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     fbc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     fc0:	e3530000 	cmp	r3, #0
     fc4:	1a00000b 	bne	ff8 <printf+0x80>
     fc8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fcc:	e3530025 	cmp	r3, #37	@ 0x25
     fd0:	1a000002 	bne	fe0 <printf+0x68>
     fd4:	e3a03025 	mov	r3, #37	@ 0x25
     fd8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     fdc:	ea000063 	b	1170 <printf+0x1f8>
     fe0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fe4:	e6ef3073 	uxtb	r3, r3
     fe8:	e1a01003 	mov	r1, r3
     fec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ff0:	ebffff84 	bl	e08 <putc>
     ff4:	ea00005d 	b	1170 <printf+0x1f8>
     ff8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ffc:	e3530025 	cmp	r3, #37	@ 0x25
    1000:	1a00005a 	bne	1170 <printf+0x1f8>
    1004:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1008:	e3530064 	cmp	r3, #100	@ 0x64
    100c:	1a00000a 	bne	103c <printf+0xc4>
    1010:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1014:	e5933000 	ldr	r3, [r3]
    1018:	e1a01003 	mov	r1, r3
    101c:	e3a03001 	mov	r3, #1
    1020:	e3a0200a 	mov	r2, #10
    1024:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1028:	ebffff84 	bl	e40 <printint>
    102c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1030:	e2833004 	add	r3, r3, #4
    1034:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1038:	ea00004a 	b	1168 <printf+0x1f0>
    103c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1040:	e3530078 	cmp	r3, #120	@ 0x78
    1044:	0a000002 	beq	1054 <printf+0xdc>
    1048:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    104c:	e3530070 	cmp	r3, #112	@ 0x70
    1050:	1a00000a 	bne	1080 <printf+0x108>
    1054:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1058:	e5933000 	ldr	r3, [r3]
    105c:	e1a01003 	mov	r1, r3
    1060:	e3a03000 	mov	r3, #0
    1064:	e3a02010 	mov	r2, #16
    1068:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    106c:	ebffff73 	bl	e40 <printint>
    1070:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1074:	e2833004 	add	r3, r3, #4
    1078:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    107c:	ea000039 	b	1168 <printf+0x1f0>
    1080:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1084:	e3530073 	cmp	r3, #115	@ 0x73
    1088:	1a000018 	bne	10f0 <printf+0x178>
    108c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1090:	e5933000 	ldr	r3, [r3]
    1094:	e50b300c 	str	r3, [fp, #-12]
    1098:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    109c:	e2833004 	add	r3, r3, #4
    10a0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10a4:	e51b300c 	ldr	r3, [fp, #-12]
    10a8:	e3530000 	cmp	r3, #0
    10ac:	1a00000a 	bne	10dc <printf+0x164>
    10b0:	e59f30f4 	ldr	r3, [pc, #244]	@ 11ac <printf+0x234>
    10b4:	e50b300c 	str	r3, [fp, #-12]
    10b8:	ea000007 	b	10dc <printf+0x164>
    10bc:	e51b300c 	ldr	r3, [fp, #-12]
    10c0:	e5d33000 	ldrb	r3, [r3]
    10c4:	e1a01003 	mov	r1, r3
    10c8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10cc:	ebffff4d 	bl	e08 <putc>
    10d0:	e51b300c 	ldr	r3, [fp, #-12]
    10d4:	e2833001 	add	r3, r3, #1
    10d8:	e50b300c 	str	r3, [fp, #-12]
    10dc:	e51b300c 	ldr	r3, [fp, #-12]
    10e0:	e5d33000 	ldrb	r3, [r3]
    10e4:	e3530000 	cmp	r3, #0
    10e8:	1afffff3 	bne	10bc <printf+0x144>
    10ec:	ea00001d 	b	1168 <printf+0x1f0>
    10f0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10f4:	e3530063 	cmp	r3, #99	@ 0x63
    10f8:	1a000009 	bne	1124 <printf+0x1ac>
    10fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1100:	e5933000 	ldr	r3, [r3]
    1104:	e6ef3073 	uxtb	r3, r3
    1108:	e1a01003 	mov	r1, r3
    110c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1110:	ebffff3c 	bl	e08 <putc>
    1114:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1118:	e2833004 	add	r3, r3, #4
    111c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1120:	ea000010 	b	1168 <printf+0x1f0>
    1124:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1128:	e3530025 	cmp	r3, #37	@ 0x25
    112c:	1a000005 	bne	1148 <printf+0x1d0>
    1130:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1134:	e6ef3073 	uxtb	r3, r3
    1138:	e1a01003 	mov	r1, r3
    113c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1140:	ebffff30 	bl	e08 <putc>
    1144:	ea000007 	b	1168 <printf+0x1f0>
    1148:	e3a01025 	mov	r1, #37	@ 0x25
    114c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1150:	ebffff2c 	bl	e08 <putc>
    1154:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1158:	e6ef3073 	uxtb	r3, r3
    115c:	e1a01003 	mov	r1, r3
    1160:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1164:	ebffff27 	bl	e08 <putc>
    1168:	e3a03000 	mov	r3, #0
    116c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1170:	e51b3010 	ldr	r3, [fp, #-16]
    1174:	e2833001 	add	r3, r3, #1
    1178:	e50b3010 	str	r3, [fp, #-16]
    117c:	e59b2004 	ldr	r2, [fp, #4]
    1180:	e51b3010 	ldr	r3, [fp, #-16]
    1184:	e0823003 	add	r3, r2, r3
    1188:	e5d33000 	ldrb	r3, [r3]
    118c:	e3530000 	cmp	r3, #0
    1190:	1affff84 	bne	fa8 <printf+0x30>
    1194:	e1a00000 	nop			@ (mov r0, r0)
    1198:	e1a00000 	nop			@ (mov r0, r0)
    119c:	e24bd004 	sub	sp, fp, #4
    11a0:	e8bd4800 	pop	{fp, lr}
    11a4:	e28dd00c 	add	sp, sp, #12
    11a8:	e12fff1e 	bx	lr
    11ac:	00001644 	.word	0x00001644

000011b0 <free>:
    11b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    11b4:	e28db000 	add	fp, sp, #0
    11b8:	e24dd014 	sub	sp, sp, #20
    11bc:	e50b0010 	str	r0, [fp, #-16]
    11c0:	e51b3010 	ldr	r3, [fp, #-16]
    11c4:	e2433008 	sub	r3, r3, #8
    11c8:	e50b300c 	str	r3, [fp, #-12]
    11cc:	e59f3154 	ldr	r3, [pc, #340]	@ 1328 <free+0x178>
    11d0:	e5933000 	ldr	r3, [r3]
    11d4:	e50b3008 	str	r3, [fp, #-8]
    11d8:	ea000010 	b	1220 <free+0x70>
    11dc:	e51b3008 	ldr	r3, [fp, #-8]
    11e0:	e5933000 	ldr	r3, [r3]
    11e4:	e51b2008 	ldr	r2, [fp, #-8]
    11e8:	e1520003 	cmp	r2, r3
    11ec:	3a000008 	bcc	1214 <free+0x64>
    11f0:	e51b200c 	ldr	r2, [fp, #-12]
    11f4:	e51b3008 	ldr	r3, [fp, #-8]
    11f8:	e1520003 	cmp	r2, r3
    11fc:	8a000010 	bhi	1244 <free+0x94>
    1200:	e51b3008 	ldr	r3, [fp, #-8]
    1204:	e5933000 	ldr	r3, [r3]
    1208:	e51b200c 	ldr	r2, [fp, #-12]
    120c:	e1520003 	cmp	r2, r3
    1210:	3a00000b 	bcc	1244 <free+0x94>
    1214:	e51b3008 	ldr	r3, [fp, #-8]
    1218:	e5933000 	ldr	r3, [r3]
    121c:	e50b3008 	str	r3, [fp, #-8]
    1220:	e51b200c 	ldr	r2, [fp, #-12]
    1224:	e51b3008 	ldr	r3, [fp, #-8]
    1228:	e1520003 	cmp	r2, r3
    122c:	9affffea 	bls	11dc <free+0x2c>
    1230:	e51b3008 	ldr	r3, [fp, #-8]
    1234:	e5933000 	ldr	r3, [r3]
    1238:	e51b200c 	ldr	r2, [fp, #-12]
    123c:	e1520003 	cmp	r2, r3
    1240:	2affffe5 	bcs	11dc <free+0x2c>
    1244:	e51b300c 	ldr	r3, [fp, #-12]
    1248:	e5933004 	ldr	r3, [r3, #4]
    124c:	e1a03183 	lsl	r3, r3, #3
    1250:	e51b200c 	ldr	r2, [fp, #-12]
    1254:	e0822003 	add	r2, r2, r3
    1258:	e51b3008 	ldr	r3, [fp, #-8]
    125c:	e5933000 	ldr	r3, [r3]
    1260:	e1520003 	cmp	r2, r3
    1264:	1a00000d 	bne	12a0 <free+0xf0>
    1268:	e51b300c 	ldr	r3, [fp, #-12]
    126c:	e5932004 	ldr	r2, [r3, #4]
    1270:	e51b3008 	ldr	r3, [fp, #-8]
    1274:	e5933000 	ldr	r3, [r3]
    1278:	e5933004 	ldr	r3, [r3, #4]
    127c:	e0822003 	add	r2, r2, r3
    1280:	e51b300c 	ldr	r3, [fp, #-12]
    1284:	e5832004 	str	r2, [r3, #4]
    1288:	e51b3008 	ldr	r3, [fp, #-8]
    128c:	e5933000 	ldr	r3, [r3]
    1290:	e5932000 	ldr	r2, [r3]
    1294:	e51b300c 	ldr	r3, [fp, #-12]
    1298:	e5832000 	str	r2, [r3]
    129c:	ea000003 	b	12b0 <free+0x100>
    12a0:	e51b3008 	ldr	r3, [fp, #-8]
    12a4:	e5932000 	ldr	r2, [r3]
    12a8:	e51b300c 	ldr	r3, [fp, #-12]
    12ac:	e5832000 	str	r2, [r3]
    12b0:	e51b3008 	ldr	r3, [fp, #-8]
    12b4:	e5933004 	ldr	r3, [r3, #4]
    12b8:	e1a03183 	lsl	r3, r3, #3
    12bc:	e51b2008 	ldr	r2, [fp, #-8]
    12c0:	e0823003 	add	r3, r2, r3
    12c4:	e51b200c 	ldr	r2, [fp, #-12]
    12c8:	e1520003 	cmp	r2, r3
    12cc:	1a00000b 	bne	1300 <free+0x150>
    12d0:	e51b3008 	ldr	r3, [fp, #-8]
    12d4:	e5932004 	ldr	r2, [r3, #4]
    12d8:	e51b300c 	ldr	r3, [fp, #-12]
    12dc:	e5933004 	ldr	r3, [r3, #4]
    12e0:	e0822003 	add	r2, r2, r3
    12e4:	e51b3008 	ldr	r3, [fp, #-8]
    12e8:	e5832004 	str	r2, [r3, #4]
    12ec:	e51b300c 	ldr	r3, [fp, #-12]
    12f0:	e5932000 	ldr	r2, [r3]
    12f4:	e51b3008 	ldr	r3, [fp, #-8]
    12f8:	e5832000 	str	r2, [r3]
    12fc:	ea000002 	b	130c <free+0x15c>
    1300:	e51b3008 	ldr	r3, [fp, #-8]
    1304:	e51b200c 	ldr	r2, [fp, #-12]
    1308:	e5832000 	str	r2, [r3]
    130c:	e59f2014 	ldr	r2, [pc, #20]	@ 1328 <free+0x178>
    1310:	e51b3008 	ldr	r3, [fp, #-8]
    1314:	e5823000 	str	r3, [r2]
    1318:	e1a00000 	nop			@ (mov r0, r0)
    131c:	e28bd000 	add	sp, fp, #0
    1320:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1324:	e12fff1e 	bx	lr
    1328:	00001668 	.word	0x00001668

0000132c <morecore>:
    132c:	e92d4800 	push	{fp, lr}
    1330:	e28db004 	add	fp, sp, #4
    1334:	e24dd010 	sub	sp, sp, #16
    1338:	e50b0010 	str	r0, [fp, #-16]
    133c:	e51b3010 	ldr	r3, [fp, #-16]
    1340:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1344:	2a000001 	bcs	1350 <morecore+0x24>
    1348:	e3a03a01 	mov	r3, #4096	@ 0x1000
    134c:	e50b3010 	str	r3, [fp, #-16]
    1350:	e51b3010 	ldr	r3, [fp, #-16]
    1354:	e1a03183 	lsl	r3, r3, #3
    1358:	e1a00003 	mov	r0, r3
    135c:	ebfffe07 	bl	b80 <sbrk>
    1360:	e50b0008 	str	r0, [fp, #-8]
    1364:	e51b3008 	ldr	r3, [fp, #-8]
    1368:	e3730001 	cmn	r3, #1
    136c:	1a000001 	bne	1378 <morecore+0x4c>
    1370:	e3a03000 	mov	r3, #0
    1374:	ea00000a 	b	13a4 <morecore+0x78>
    1378:	e51b3008 	ldr	r3, [fp, #-8]
    137c:	e50b300c 	str	r3, [fp, #-12]
    1380:	e51b300c 	ldr	r3, [fp, #-12]
    1384:	e51b2010 	ldr	r2, [fp, #-16]
    1388:	e5832004 	str	r2, [r3, #4]
    138c:	e51b300c 	ldr	r3, [fp, #-12]
    1390:	e2833008 	add	r3, r3, #8
    1394:	e1a00003 	mov	r0, r3
    1398:	ebffff84 	bl	11b0 <free>
    139c:	e59f300c 	ldr	r3, [pc, #12]	@ 13b0 <morecore+0x84>
    13a0:	e5933000 	ldr	r3, [r3]
    13a4:	e1a00003 	mov	r0, r3
    13a8:	e24bd004 	sub	sp, fp, #4
    13ac:	e8bd8800 	pop	{fp, pc}
    13b0:	00001668 	.word	0x00001668

000013b4 <malloc>:
    13b4:	e92d4800 	push	{fp, lr}
    13b8:	e28db004 	add	fp, sp, #4
    13bc:	e24dd018 	sub	sp, sp, #24
    13c0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    13c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13c8:	e2833007 	add	r3, r3, #7
    13cc:	e1a031a3 	lsr	r3, r3, #3
    13d0:	e2833001 	add	r3, r3, #1
    13d4:	e50b3010 	str	r3, [fp, #-16]
    13d8:	e59f3134 	ldr	r3, [pc, #308]	@ 1514 <malloc+0x160>
    13dc:	e5933000 	ldr	r3, [r3]
    13e0:	e50b300c 	str	r3, [fp, #-12]
    13e4:	e51b300c 	ldr	r3, [fp, #-12]
    13e8:	e3530000 	cmp	r3, #0
    13ec:	1a00000b 	bne	1420 <malloc+0x6c>
    13f0:	e59f3120 	ldr	r3, [pc, #288]	@ 1518 <malloc+0x164>
    13f4:	e50b300c 	str	r3, [fp, #-12]
    13f8:	e59f2114 	ldr	r2, [pc, #276]	@ 1514 <malloc+0x160>
    13fc:	e51b300c 	ldr	r3, [fp, #-12]
    1400:	e5823000 	str	r3, [r2]
    1404:	e59f3108 	ldr	r3, [pc, #264]	@ 1514 <malloc+0x160>
    1408:	e5933000 	ldr	r3, [r3]
    140c:	e59f2104 	ldr	r2, [pc, #260]	@ 1518 <malloc+0x164>
    1410:	e5823000 	str	r3, [r2]
    1414:	e59f30fc 	ldr	r3, [pc, #252]	@ 1518 <malloc+0x164>
    1418:	e3a02000 	mov	r2, #0
    141c:	e5832004 	str	r2, [r3, #4]
    1420:	e51b300c 	ldr	r3, [fp, #-12]
    1424:	e5933000 	ldr	r3, [r3]
    1428:	e50b3008 	str	r3, [fp, #-8]
    142c:	e51b3008 	ldr	r3, [fp, #-8]
    1430:	e5933004 	ldr	r3, [r3, #4]
    1434:	e51b2010 	ldr	r2, [fp, #-16]
    1438:	e1520003 	cmp	r2, r3
    143c:	8a00001e 	bhi	14bc <malloc+0x108>
    1440:	e51b3008 	ldr	r3, [fp, #-8]
    1444:	e5933004 	ldr	r3, [r3, #4]
    1448:	e51b2010 	ldr	r2, [fp, #-16]
    144c:	e1520003 	cmp	r2, r3
    1450:	1a000004 	bne	1468 <malloc+0xb4>
    1454:	e51b3008 	ldr	r3, [fp, #-8]
    1458:	e5932000 	ldr	r2, [r3]
    145c:	e51b300c 	ldr	r3, [fp, #-12]
    1460:	e5832000 	str	r2, [r3]
    1464:	ea00000e 	b	14a4 <malloc+0xf0>
    1468:	e51b3008 	ldr	r3, [fp, #-8]
    146c:	e5932004 	ldr	r2, [r3, #4]
    1470:	e51b3010 	ldr	r3, [fp, #-16]
    1474:	e0422003 	sub	r2, r2, r3
    1478:	e51b3008 	ldr	r3, [fp, #-8]
    147c:	e5832004 	str	r2, [r3, #4]
    1480:	e51b3008 	ldr	r3, [fp, #-8]
    1484:	e5933004 	ldr	r3, [r3, #4]
    1488:	e1a03183 	lsl	r3, r3, #3
    148c:	e51b2008 	ldr	r2, [fp, #-8]
    1490:	e0823003 	add	r3, r2, r3
    1494:	e50b3008 	str	r3, [fp, #-8]
    1498:	e51b3008 	ldr	r3, [fp, #-8]
    149c:	e51b2010 	ldr	r2, [fp, #-16]
    14a0:	e5832004 	str	r2, [r3, #4]
    14a4:	e59f2068 	ldr	r2, [pc, #104]	@ 1514 <malloc+0x160>
    14a8:	e51b300c 	ldr	r3, [fp, #-12]
    14ac:	e5823000 	str	r3, [r2]
    14b0:	e51b3008 	ldr	r3, [fp, #-8]
    14b4:	e2833008 	add	r3, r3, #8
    14b8:	ea000012 	b	1508 <malloc+0x154>
    14bc:	e59f3050 	ldr	r3, [pc, #80]	@ 1514 <malloc+0x160>
    14c0:	e5933000 	ldr	r3, [r3]
    14c4:	e51b2008 	ldr	r2, [fp, #-8]
    14c8:	e1520003 	cmp	r2, r3
    14cc:	1a000007 	bne	14f0 <malloc+0x13c>
    14d0:	e51b0010 	ldr	r0, [fp, #-16]
    14d4:	ebffff94 	bl	132c <morecore>
    14d8:	e50b0008 	str	r0, [fp, #-8]
    14dc:	e51b3008 	ldr	r3, [fp, #-8]
    14e0:	e3530000 	cmp	r3, #0
    14e4:	1a000001 	bne	14f0 <malloc+0x13c>
    14e8:	e3a03000 	mov	r3, #0
    14ec:	ea000005 	b	1508 <malloc+0x154>
    14f0:	e51b3008 	ldr	r3, [fp, #-8]
    14f4:	e50b300c 	str	r3, [fp, #-12]
    14f8:	e51b3008 	ldr	r3, [fp, #-8]
    14fc:	e5933000 	ldr	r3, [r3]
    1500:	e50b3008 	str	r3, [fp, #-8]
    1504:	eaffffc8 	b	142c <malloc+0x78>
    1508:	e1a00003 	mov	r0, r3
    150c:	e24bd004 	sub	sp, fp, #4
    1510:	e8bd8800 	pop	{fp, pc}
    1514:	00001668 	.word	0x00001668
    1518:	00001660 	.word	0x00001660

0000151c <__udivsi3>:
    151c:	e2512001 	subs	r2, r1, #1
    1520:	012fff1e 	bxeq	lr
    1524:	3a000036 	bcc	1604 <__udivsi3+0xe8>
    1528:	e1500001 	cmp	r0, r1
    152c:	9a000022 	bls	15bc <__udivsi3+0xa0>
    1530:	e1110002 	tst	r1, r2
    1534:	0a000023 	beq	15c8 <__udivsi3+0xac>
    1538:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    153c:	01a01181 	lsleq	r1, r1, #3
    1540:	03a03008 	moveq	r3, #8
    1544:	13a03001 	movne	r3, #1
    1548:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    154c:	31510000 	cmpcc	r1, r0
    1550:	31a01201 	lslcc	r1, r1, #4
    1554:	31a03203 	lslcc	r3, r3, #4
    1558:	3afffffa 	bcc	1548 <__udivsi3+0x2c>
    155c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1560:	31510000 	cmpcc	r1, r0
    1564:	31a01081 	lslcc	r1, r1, #1
    1568:	31a03083 	lslcc	r3, r3, #1
    156c:	3afffffa 	bcc	155c <__udivsi3+0x40>
    1570:	e3a02000 	mov	r2, #0
    1574:	e1500001 	cmp	r0, r1
    1578:	20400001 	subcs	r0, r0, r1
    157c:	21822003 	orrcs	r2, r2, r3
    1580:	e15000a1 	cmp	r0, r1, lsr #1
    1584:	204000a1 	subcs	r0, r0, r1, lsr #1
    1588:	218220a3 	orrcs	r2, r2, r3, lsr #1
    158c:	e1500121 	cmp	r0, r1, lsr #2
    1590:	20400121 	subcs	r0, r0, r1, lsr #2
    1594:	21822123 	orrcs	r2, r2, r3, lsr #2
    1598:	e15001a1 	cmp	r0, r1, lsr #3
    159c:	204001a1 	subcs	r0, r0, r1, lsr #3
    15a0:	218221a3 	orrcs	r2, r2, r3, lsr #3
    15a4:	e3500000 	cmp	r0, #0
    15a8:	11b03223 	lsrsne	r3, r3, #4
    15ac:	11a01221 	lsrne	r1, r1, #4
    15b0:	1affffef 	bne	1574 <__udivsi3+0x58>
    15b4:	e1a00002 	mov	r0, r2
    15b8:	e12fff1e 	bx	lr
    15bc:	03a00001 	moveq	r0, #1
    15c0:	13a00000 	movne	r0, #0
    15c4:	e12fff1e 	bx	lr
    15c8:	e3510801 	cmp	r1, #65536	@ 0x10000
    15cc:	21a01821 	lsrcs	r1, r1, #16
    15d0:	23a02010 	movcs	r2, #16
    15d4:	33a02000 	movcc	r2, #0
    15d8:	e3510c01 	cmp	r1, #256	@ 0x100
    15dc:	21a01421 	lsrcs	r1, r1, #8
    15e0:	22822008 	addcs	r2, r2, #8
    15e4:	e3510010 	cmp	r1, #16
    15e8:	21a01221 	lsrcs	r1, r1, #4
    15ec:	22822004 	addcs	r2, r2, #4
    15f0:	e3510004 	cmp	r1, #4
    15f4:	82822003 	addhi	r2, r2, #3
    15f8:	908220a1 	addls	r2, r2, r1, lsr #1
    15fc:	e1a00230 	lsr	r0, r0, r2
    1600:	e12fff1e 	bx	lr
    1604:	e3500000 	cmp	r0, #0
    1608:	13e00000 	mvnne	r0, #0
    160c:	ea000007 	b	1630 <__aeabi_idiv0>

00001610 <__aeabi_uidivmod>:
    1610:	e3510000 	cmp	r1, #0
    1614:	0afffffa 	beq	1604 <__udivsi3+0xe8>
    1618:	e92d4003 	push	{r0, r1, lr}
    161c:	ebffffbe 	bl	151c <__udivsi3>
    1620:	e8bd4006 	pop	{r1, r2, lr}
    1624:	e0030092 	mul	r3, r2, r0
    1628:	e0411003 	sub	r1, r1, r3
    162c:	e12fff1e 	bx	lr

00001630 <__aeabi_idiv0>:
    1630:	e12fff1e 	bx	lr
