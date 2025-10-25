
_cat:     file format elf32-littlearm


Disassembly of section .text:

00000000 <cat>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	ea000003 	b	24 <cat+0x24>
      14:	e51b2008 	ldr	r2, [fp, #-8]
      18:	e59f104c 	ldr	r1, [pc, #76]	@ 6c <cat+0x6c>
      1c:	e3a00001 	mov	r0, #1
      20:	eb00028b 	bl	a54 <write>
      24:	e3a02c02 	mov	r2, #512	@ 0x200
      28:	e59f103c 	ldr	r1, [pc, #60]	@ 6c <cat+0x6c>
      2c:	e51b0010 	ldr	r0, [fp, #-16]
      30:	eb00027e 	bl	a30 <read>
      34:	e50b0008 	str	r0, [fp, #-8]
      38:	e51b3008 	ldr	r3, [fp, #-8]
      3c:	e3530000 	cmp	r3, #0
      40:	cafffff3 	bgt	14 <cat+0x14>
      44:	e51b3008 	ldr	r3, [fp, #-8]
      48:	e3530000 	cmp	r3, #0
      4c:	aa000003 	bge	60 <cat+0x60>
      50:	e59f1018 	ldr	r1, [pc, #24]	@ 70 <cat+0x70>
      54:	e3a00001 	mov	r0, #1
      58:	eb0003f0 	bl	1020 <printf>
      5c:	eb000258 	bl	9c4 <exit>
      60:	e1a00000 	nop			@ (mov r0, r0)
      64:	e24bd004 	sub	sp, fp, #4
      68:	e8bd8800 	pop	{fp, pc}
      6c:	00001724 	.word	0x00001724
      70:	000016dc 	.word	0x000016dc

00000074 <main>:
      74:	e92d4800 	push	{fp, lr}
      78:	e28db004 	add	fp, sp, #4
      7c:	e24dd010 	sub	sp, sp, #16
      80:	e50b0010 	str	r0, [fp, #-16]
      84:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      88:	e51b3010 	ldr	r3, [fp, #-16]
      8c:	e3530001 	cmp	r3, #1
      90:	ca000002 	bgt	a0 <main+0x2c>
      94:	e3a00000 	mov	r0, #0
      98:	ebffffd8 	bl	0 <cat>
      9c:	eb000248 	bl	9c4 <exit>
      a0:	e3a03001 	mov	r3, #1
      a4:	e50b3008 	str	r3, [fp, #-8]
      a8:	ea00001c 	b	120 <main+0xac>
      ac:	e51b3008 	ldr	r3, [fp, #-8]
      b0:	e1a03103 	lsl	r3, r3, #2
      b4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      b8:	e0823003 	add	r3, r2, r3
      bc:	e5933000 	ldr	r3, [r3]
      c0:	e3a01000 	mov	r1, #0
      c4:	e1a00003 	mov	r0, r3
      c8:	eb000285 	bl	ae4 <open>
      cc:	e50b000c 	str	r0, [fp, #-12]
      d0:	e51b300c 	ldr	r3, [fp, #-12]
      d4:	e3530000 	cmp	r3, #0
      d8:	aa000009 	bge	104 <main+0x90>
      dc:	e51b3008 	ldr	r3, [fp, #-8]
      e0:	e1a03103 	lsl	r3, r3, #2
      e4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      e8:	e0823003 	add	r3, r2, r3
      ec:	e5933000 	ldr	r3, [r3]
      f0:	e1a02003 	mov	r2, r3
      f4:	e59f1038 	ldr	r1, [pc, #56]	@ 134 <main+0xc0>
      f8:	e3a00001 	mov	r0, #1
      fc:	eb0003c7 	bl	1020 <printf>
     100:	eb00022f 	bl	9c4 <exit>
     104:	e51b000c 	ldr	r0, [fp, #-12]
     108:	ebffffbc 	bl	0 <cat>
     10c:	e51b000c 	ldr	r0, [fp, #-12]
     110:	eb000258 	bl	a78 <close>
     114:	e51b3008 	ldr	r3, [fp, #-8]
     118:	e2833001 	add	r3, r3, #1
     11c:	e50b3008 	str	r3, [fp, #-8]
     120:	e51b2008 	ldr	r2, [fp, #-8]
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e1520003 	cmp	r2, r3
     12c:	baffffde 	blt	ac <main+0x38>
     130:	eb000223 	bl	9c4 <exit>
     134:	000016f0 	.word	0x000016f0

00000138 <strcpy>:
     138:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     13c:	e28db000 	add	fp, sp, #0
     140:	e24dd014 	sub	sp, sp, #20
     144:	e50b0010 	str	r0, [fp, #-16]
     148:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     14c:	e51b3010 	ldr	r3, [fp, #-16]
     150:	e50b3008 	str	r3, [fp, #-8]
     154:	e1a00000 	nop			@ (mov r0, r0)
     158:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     15c:	e2823001 	add	r3, r2, #1
     160:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     164:	e51b3010 	ldr	r3, [fp, #-16]
     168:	e2831001 	add	r1, r3, #1
     16c:	e50b1010 	str	r1, [fp, #-16]
     170:	e5d22000 	ldrb	r2, [r2]
     174:	e5c32000 	strb	r2, [r3]
     178:	e5d33000 	ldrb	r3, [r3]
     17c:	e3530000 	cmp	r3, #0
     180:	1afffff4 	bne	158 <strcpy+0x20>
     184:	e51b3008 	ldr	r3, [fp, #-8]
     188:	e1a00003 	mov	r0, r3
     18c:	e28bd000 	add	sp, fp, #0
     190:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     194:	e12fff1e 	bx	lr

00000198 <strcmp>:
     198:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     19c:	e28db000 	add	fp, sp, #0
     1a0:	e24dd00c 	sub	sp, sp, #12
     1a4:	e50b0008 	str	r0, [fp, #-8]
     1a8:	e50b100c 	str	r1, [fp, #-12]
     1ac:	ea000005 	b	1c8 <strcmp+0x30>
     1b0:	e51b3008 	ldr	r3, [fp, #-8]
     1b4:	e2833001 	add	r3, r3, #1
     1b8:	e50b3008 	str	r3, [fp, #-8]
     1bc:	e51b300c 	ldr	r3, [fp, #-12]
     1c0:	e2833001 	add	r3, r3, #1
     1c4:	e50b300c 	str	r3, [fp, #-12]
     1c8:	e51b3008 	ldr	r3, [fp, #-8]
     1cc:	e5d33000 	ldrb	r3, [r3]
     1d0:	e3530000 	cmp	r3, #0
     1d4:	0a000005 	beq	1f0 <strcmp+0x58>
     1d8:	e51b3008 	ldr	r3, [fp, #-8]
     1dc:	e5d32000 	ldrb	r2, [r3]
     1e0:	e51b300c 	ldr	r3, [fp, #-12]
     1e4:	e5d33000 	ldrb	r3, [r3]
     1e8:	e1520003 	cmp	r2, r3
     1ec:	0affffef 	beq	1b0 <strcmp+0x18>
     1f0:	e51b3008 	ldr	r3, [fp, #-8]
     1f4:	e5d33000 	ldrb	r3, [r3]
     1f8:	e1a02003 	mov	r2, r3
     1fc:	e51b300c 	ldr	r3, [fp, #-12]
     200:	e5d33000 	ldrb	r3, [r3]
     204:	e0423003 	sub	r3, r2, r3
     208:	e1a00003 	mov	r0, r3
     20c:	e28bd000 	add	sp, fp, #0
     210:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     214:	e12fff1e 	bx	lr

00000218 <strlen>:
     218:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     21c:	e28db000 	add	fp, sp, #0
     220:	e24dd014 	sub	sp, sp, #20
     224:	e50b0010 	str	r0, [fp, #-16]
     228:	e3a03000 	mov	r3, #0
     22c:	e50b3008 	str	r3, [fp, #-8]
     230:	ea000002 	b	240 <strlen+0x28>
     234:	e51b3008 	ldr	r3, [fp, #-8]
     238:	e2833001 	add	r3, r3, #1
     23c:	e50b3008 	str	r3, [fp, #-8]
     240:	e51b3008 	ldr	r3, [fp, #-8]
     244:	e51b2010 	ldr	r2, [fp, #-16]
     248:	e0823003 	add	r3, r2, r3
     24c:	e5d33000 	ldrb	r3, [r3]
     250:	e3530000 	cmp	r3, #0
     254:	1afffff6 	bne	234 <strlen+0x1c>
     258:	e51b3008 	ldr	r3, [fp, #-8]
     25c:	e1a00003 	mov	r0, r3
     260:	e28bd000 	add	sp, fp, #0
     264:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     268:	e12fff1e 	bx	lr

0000026c <memset>:
     26c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     270:	e28db000 	add	fp, sp, #0
     274:	e24dd024 	sub	sp, sp, #36	@ 0x24
     278:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     27c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     280:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     284:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     288:	e50b3008 	str	r3, [fp, #-8]
     28c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     290:	e54b300d 	strb	r3, [fp, #-13]
     294:	e55b200d 	ldrb	r2, [fp, #-13]
     298:	e1a03002 	mov	r3, r2
     29c:	e1a03403 	lsl	r3, r3, #8
     2a0:	e0833002 	add	r3, r3, r2
     2a4:	e1a03803 	lsl	r3, r3, #16
     2a8:	e1a02003 	mov	r2, r3
     2ac:	e55b300d 	ldrb	r3, [fp, #-13]
     2b0:	e1a03403 	lsl	r3, r3, #8
     2b4:	e1822003 	orr	r2, r2, r3
     2b8:	e55b300d 	ldrb	r3, [fp, #-13]
     2bc:	e1823003 	orr	r3, r2, r3
     2c0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     2c4:	ea000008 	b	2ec <memset+0x80>
     2c8:	e51b3008 	ldr	r3, [fp, #-8]
     2cc:	e55b200d 	ldrb	r2, [fp, #-13]
     2d0:	e5c32000 	strb	r2, [r3]
     2d4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2d8:	e2433001 	sub	r3, r3, #1
     2dc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2e0:	e51b3008 	ldr	r3, [fp, #-8]
     2e4:	e2833001 	add	r3, r3, #1
     2e8:	e50b3008 	str	r3, [fp, #-8]
     2ec:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2f0:	e3530000 	cmp	r3, #0
     2f4:	0a000003 	beq	308 <memset+0x9c>
     2f8:	e51b3008 	ldr	r3, [fp, #-8]
     2fc:	e2033003 	and	r3, r3, #3
     300:	e3530000 	cmp	r3, #0
     304:	1affffef 	bne	2c8 <memset+0x5c>
     308:	e51b3008 	ldr	r3, [fp, #-8]
     30c:	e50b300c 	str	r3, [fp, #-12]
     310:	ea000008 	b	338 <memset+0xcc>
     314:	e51b300c 	ldr	r3, [fp, #-12]
     318:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     31c:	e5832000 	str	r2, [r3]
     320:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     324:	e2433004 	sub	r3, r3, #4
     328:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     32c:	e51b300c 	ldr	r3, [fp, #-12]
     330:	e2833004 	add	r3, r3, #4
     334:	e50b300c 	str	r3, [fp, #-12]
     338:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     33c:	e3530003 	cmp	r3, #3
     340:	8afffff3 	bhi	314 <memset+0xa8>
     344:	e51b300c 	ldr	r3, [fp, #-12]
     348:	e50b3008 	str	r3, [fp, #-8]
     34c:	ea000008 	b	374 <memset+0x108>
     350:	e51b3008 	ldr	r3, [fp, #-8]
     354:	e55b200d 	ldrb	r2, [fp, #-13]
     358:	e5c32000 	strb	r2, [r3]
     35c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     360:	e2433001 	sub	r3, r3, #1
     364:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     368:	e51b3008 	ldr	r3, [fp, #-8]
     36c:	e2833001 	add	r3, r3, #1
     370:	e50b3008 	str	r3, [fp, #-8]
     374:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     378:	e3530000 	cmp	r3, #0
     37c:	1afffff3 	bne	350 <memset+0xe4>
     380:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     384:	e1a00003 	mov	r0, r3
     388:	e28bd000 	add	sp, fp, #0
     38c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     390:	e12fff1e 	bx	lr

00000394 <strchr>:
     394:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     398:	e28db000 	add	fp, sp, #0
     39c:	e24dd00c 	sub	sp, sp, #12
     3a0:	e50b0008 	str	r0, [fp, #-8]
     3a4:	e1a03001 	mov	r3, r1
     3a8:	e54b3009 	strb	r3, [fp, #-9]
     3ac:	ea000009 	b	3d8 <strchr+0x44>
     3b0:	e51b3008 	ldr	r3, [fp, #-8]
     3b4:	e5d33000 	ldrb	r3, [r3]
     3b8:	e55b2009 	ldrb	r2, [fp, #-9]
     3bc:	e1520003 	cmp	r2, r3
     3c0:	1a000001 	bne	3cc <strchr+0x38>
     3c4:	e51b3008 	ldr	r3, [fp, #-8]
     3c8:	ea000007 	b	3ec <strchr+0x58>
     3cc:	e51b3008 	ldr	r3, [fp, #-8]
     3d0:	e2833001 	add	r3, r3, #1
     3d4:	e50b3008 	str	r3, [fp, #-8]
     3d8:	e51b3008 	ldr	r3, [fp, #-8]
     3dc:	e5d33000 	ldrb	r3, [r3]
     3e0:	e3530000 	cmp	r3, #0
     3e4:	1afffff1 	bne	3b0 <strchr+0x1c>
     3e8:	e3a03000 	mov	r3, #0
     3ec:	e1a00003 	mov	r0, r3
     3f0:	e28bd000 	add	sp, fp, #0
     3f4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3f8:	e12fff1e 	bx	lr

000003fc <gets>:
     3fc:	e92d4800 	push	{fp, lr}
     400:	e28db004 	add	fp, sp, #4
     404:	e24dd018 	sub	sp, sp, #24
     408:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     40c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     410:	e3a03000 	mov	r3, #0
     414:	e50b3008 	str	r3, [fp, #-8]
     418:	ea000016 	b	478 <gets+0x7c>
     41c:	e24b300d 	sub	r3, fp, #13
     420:	e3a02001 	mov	r2, #1
     424:	e1a01003 	mov	r1, r3
     428:	e3a00000 	mov	r0, #0
     42c:	eb00017f 	bl	a30 <read>
     430:	e50b000c 	str	r0, [fp, #-12]
     434:	e51b300c 	ldr	r3, [fp, #-12]
     438:	e3530000 	cmp	r3, #0
     43c:	da000013 	ble	490 <gets+0x94>
     440:	e51b3008 	ldr	r3, [fp, #-8]
     444:	e2832001 	add	r2, r3, #1
     448:	e50b2008 	str	r2, [fp, #-8]
     44c:	e1a02003 	mov	r2, r3
     450:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     454:	e0833002 	add	r3, r3, r2
     458:	e55b200d 	ldrb	r2, [fp, #-13]
     45c:	e5c32000 	strb	r2, [r3]
     460:	e55b300d 	ldrb	r3, [fp, #-13]
     464:	e353000a 	cmp	r3, #10
     468:	0a000009 	beq	494 <gets+0x98>
     46c:	e55b300d 	ldrb	r3, [fp, #-13]
     470:	e353000d 	cmp	r3, #13
     474:	0a000006 	beq	494 <gets+0x98>
     478:	e51b3008 	ldr	r3, [fp, #-8]
     47c:	e2833001 	add	r3, r3, #1
     480:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     484:	e1520003 	cmp	r2, r3
     488:	caffffe3 	bgt	41c <gets+0x20>
     48c:	ea000000 	b	494 <gets+0x98>
     490:	e1a00000 	nop			@ (mov r0, r0)
     494:	e51b3008 	ldr	r3, [fp, #-8]
     498:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     49c:	e0823003 	add	r3, r2, r3
     4a0:	e3a02000 	mov	r2, #0
     4a4:	e5c32000 	strb	r2, [r3]
     4a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4ac:	e1a00003 	mov	r0, r3
     4b0:	e24bd004 	sub	sp, fp, #4
     4b4:	e8bd8800 	pop	{fp, pc}

000004b8 <stat>:
     4b8:	e92d4800 	push	{fp, lr}
     4bc:	e28db004 	add	fp, sp, #4
     4c0:	e24dd010 	sub	sp, sp, #16
     4c4:	e50b0010 	str	r0, [fp, #-16]
     4c8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4cc:	e3a01000 	mov	r1, #0
     4d0:	e51b0010 	ldr	r0, [fp, #-16]
     4d4:	eb000182 	bl	ae4 <open>
     4d8:	e50b0008 	str	r0, [fp, #-8]
     4dc:	e51b3008 	ldr	r3, [fp, #-8]
     4e0:	e3530000 	cmp	r3, #0
     4e4:	aa000001 	bge	4f0 <stat+0x38>
     4e8:	e3e03000 	mvn	r3, #0
     4ec:	ea000006 	b	50c <stat+0x54>
     4f0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     4f4:	e51b0008 	ldr	r0, [fp, #-8]
     4f8:	eb000194 	bl	b50 <fstat>
     4fc:	e50b000c 	str	r0, [fp, #-12]
     500:	e51b0008 	ldr	r0, [fp, #-8]
     504:	eb00015b 	bl	a78 <close>
     508:	e51b300c 	ldr	r3, [fp, #-12]
     50c:	e1a00003 	mov	r0, r3
     510:	e24bd004 	sub	sp, fp, #4
     514:	e8bd8800 	pop	{fp, pc}

00000518 <atoi>:
     518:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     51c:	e28db000 	add	fp, sp, #0
     520:	e24dd014 	sub	sp, sp, #20
     524:	e50b0010 	str	r0, [fp, #-16]
     528:	e3a03000 	mov	r3, #0
     52c:	e50b3008 	str	r3, [fp, #-8]
     530:	ea00000c 	b	568 <atoi+0x50>
     534:	e51b2008 	ldr	r2, [fp, #-8]
     538:	e1a03002 	mov	r3, r2
     53c:	e1a03103 	lsl	r3, r3, #2
     540:	e0833002 	add	r3, r3, r2
     544:	e1a03083 	lsl	r3, r3, #1
     548:	e1a01003 	mov	r1, r3
     54c:	e51b3010 	ldr	r3, [fp, #-16]
     550:	e2832001 	add	r2, r3, #1
     554:	e50b2010 	str	r2, [fp, #-16]
     558:	e5d33000 	ldrb	r3, [r3]
     55c:	e0813003 	add	r3, r1, r3
     560:	e2433030 	sub	r3, r3, #48	@ 0x30
     564:	e50b3008 	str	r3, [fp, #-8]
     568:	e51b3010 	ldr	r3, [fp, #-16]
     56c:	e5d33000 	ldrb	r3, [r3]
     570:	e353002f 	cmp	r3, #47	@ 0x2f
     574:	9a000003 	bls	588 <atoi+0x70>
     578:	e51b3010 	ldr	r3, [fp, #-16]
     57c:	e5d33000 	ldrb	r3, [r3]
     580:	e3530039 	cmp	r3, #57	@ 0x39
     584:	9affffea 	bls	534 <atoi+0x1c>
     588:	e51b3010 	ldr	r3, [fp, #-16]
     58c:	e5d33000 	ldrb	r3, [r3]
     590:	e3530000 	cmp	r3, #0
     594:	1a000001 	bne	5a0 <atoi+0x88>
     598:	e51b3008 	ldr	r3, [fp, #-8]
     59c:	ea000000 	b	5a4 <atoi+0x8c>
     5a0:	e3e03000 	mvn	r3, #0
     5a4:	e1a00003 	mov	r0, r3
     5a8:	e28bd000 	add	sp, fp, #0
     5ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5b0:	e12fff1e 	bx	lr

000005b4 <memmove>:
     5b4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5b8:	e28db000 	add	fp, sp, #0
     5bc:	e24dd01c 	sub	sp, sp, #28
     5c0:	e50b0010 	str	r0, [fp, #-16]
     5c4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5c8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5cc:	e51b3010 	ldr	r3, [fp, #-16]
     5d0:	e50b3008 	str	r3, [fp, #-8]
     5d4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     5d8:	e50b300c 	str	r3, [fp, #-12]
     5dc:	ea000007 	b	600 <memmove+0x4c>
     5e0:	e51b200c 	ldr	r2, [fp, #-12]
     5e4:	e2823001 	add	r3, r2, #1
     5e8:	e50b300c 	str	r3, [fp, #-12]
     5ec:	e51b3008 	ldr	r3, [fp, #-8]
     5f0:	e2831001 	add	r1, r3, #1
     5f4:	e50b1008 	str	r1, [fp, #-8]
     5f8:	e5d22000 	ldrb	r2, [r2]
     5fc:	e5c32000 	strb	r2, [r3]
     600:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     604:	e2432001 	sub	r2, r3, #1
     608:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     60c:	e3530000 	cmp	r3, #0
     610:	cafffff2 	bgt	5e0 <memmove+0x2c>
     614:	e51b3010 	ldr	r3, [fp, #-16]
     618:	e1a00003 	mov	r0, r3
     61c:	e28bd000 	add	sp, fp, #0
     620:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     624:	e12fff1e 	bx	lr

00000628 <initiateLock>:
     628:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     62c:	e28db000 	add	fp, sp, #0
     630:	e24dd00c 	sub	sp, sp, #12
     634:	e50b0008 	str	r0, [fp, #-8]
     638:	e51b3008 	ldr	r3, [fp, #-8]
     63c:	e3a02000 	mov	r2, #0
     640:	e5832000 	str	r2, [r3]
     644:	e51b3008 	ldr	r3, [fp, #-8]
     648:	e3a02001 	mov	r2, #1
     64c:	e5832004 	str	r2, [r3, #4]
     650:	e1a00000 	nop			@ (mov r0, r0)
     654:	e28bd000 	add	sp, fp, #0
     658:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     65c:	e12fff1e 	bx	lr

00000660 <xchg>:
     660:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     664:	e28db000 	add	fp, sp, #0
     668:	e24dd00c 	sub	sp, sp, #12
     66c:	e50b0008 	str	r0, [fp, #-8]
     670:	e50b100c 	str	r1, [fp, #-12]
     674:	e51b200c 	ldr	r2, [fp, #-12]
     678:	e51b3008 	ldr	r3, [fp, #-8]
     67c:	e1931f9f 	ldrex	r1, [r3]
     680:	e1830f92 	strex	r0, r2, [r3]
     684:	e3500000 	cmp	r0, #0
     688:	1afffffb 	bne	67c <xchg+0x1c>
     68c:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     690:	e1a03001 	mov	r3, r1
     694:	e1a00003 	mov	r0, r3
     698:	e28bd000 	add	sp, fp, #0
     69c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6a0:	e12fff1e 	bx	lr

000006a4 <acquireLock>:
     6a4:	e92d4800 	push	{fp, lr}
     6a8:	e28db004 	add	fp, sp, #4
     6ac:	e24dd008 	sub	sp, sp, #8
     6b0:	e50b0008 	str	r0, [fp, #-8]
     6b4:	e51b3008 	ldr	r3, [fp, #-8]
     6b8:	e5933004 	ldr	r3, [r3, #4]
     6bc:	e3530000 	cmp	r3, #0
     6c0:	0a000008 	beq	6e8 <acquireLock+0x44>
     6c4:	e1a00000 	nop			@ (mov r0, r0)
     6c8:	e51b3008 	ldr	r3, [fp, #-8]
     6cc:	e3a01001 	mov	r1, #1
     6d0:	e1a00003 	mov	r0, r3
     6d4:	ebffffe1 	bl	660 <xchg>
     6d8:	e1a03000 	mov	r3, r0
     6dc:	e3530000 	cmp	r3, #0
     6e0:	1afffff8 	bne	6c8 <acquireLock+0x24>
     6e4:	ea000000 	b	6ec <acquireLock+0x48>
     6e8:	e1a00000 	nop			@ (mov r0, r0)
     6ec:	e24bd004 	sub	sp, fp, #4
     6f0:	e8bd8800 	pop	{fp, pc}

000006f4 <releaseLock>:
     6f4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6f8:	e28db000 	add	fp, sp, #0
     6fc:	e24dd00c 	sub	sp, sp, #12
     700:	e50b0008 	str	r0, [fp, #-8]
     704:	e51b3008 	ldr	r3, [fp, #-8]
     708:	e5933004 	ldr	r3, [r3, #4]
     70c:	e3530000 	cmp	r3, #0
     710:	0a000007 	beq	734 <releaseLock+0x40>
     714:	e51b3008 	ldr	r3, [fp, #-8]
     718:	e5933000 	ldr	r3, [r3]
     71c:	e3530001 	cmp	r3, #1
     720:	1a000005 	bne	73c <releaseLock+0x48>
     724:	e51b3008 	ldr	r3, [fp, #-8]
     728:	e3a02000 	mov	r2, #0
     72c:	e5832000 	str	r2, [r3]
     730:	ea000002 	b	740 <releaseLock+0x4c>
     734:	e1a00000 	nop			@ (mov r0, r0)
     738:	ea000000 	b	740 <releaseLock+0x4c>
     73c:	e1a00000 	nop			@ (mov r0, r0)
     740:	e28bd000 	add	sp, fp, #0
     744:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     748:	e12fff1e 	bx	lr

0000074c <initiateCondVar>:
     74c:	e92d4800 	push	{fp, lr}
     750:	e28db004 	add	fp, sp, #4
     754:	e24dd008 	sub	sp, sp, #8
     758:	e50b0008 	str	r0, [fp, #-8]
     75c:	eb0001b8 	bl	e44 <getChannel>
     760:	e1a02000 	mov	r2, r0
     764:	e51b3008 	ldr	r3, [fp, #-8]
     768:	e5832000 	str	r2, [r3]
     76c:	e51b3008 	ldr	r3, [fp, #-8]
     770:	e3a02001 	mov	r2, #1
     774:	e5832004 	str	r2, [r3, #4]
     778:	e1a00000 	nop			@ (mov r0, r0)
     77c:	e24bd004 	sub	sp, fp, #4
     780:	e8bd8800 	pop	{fp, pc}

00000784 <condWait>:
     784:	e92d4800 	push	{fp, lr}
     788:	e28db004 	add	fp, sp, #4
     78c:	e24dd008 	sub	sp, sp, #8
     790:	e50b0008 	str	r0, [fp, #-8]
     794:	e50b100c 	str	r1, [fp, #-12]
     798:	e51b3008 	ldr	r3, [fp, #-8]
     79c:	e5933004 	ldr	r3, [r3, #4]
     7a0:	e3530000 	cmp	r3, #0
     7a4:	0a00000c 	beq	7dc <condWait+0x58>
     7a8:	e51b300c 	ldr	r3, [fp, #-12]
     7ac:	e5933004 	ldr	r3, [r3, #4]
     7b0:	e3530000 	cmp	r3, #0
     7b4:	0a000008 	beq	7dc <condWait+0x58>
     7b8:	e51b000c 	ldr	r0, [fp, #-12]
     7bc:	ebffffcc 	bl	6f4 <releaseLock>
     7c0:	e51b3008 	ldr	r3, [fp, #-8]
     7c4:	e5933000 	ldr	r3, [r3]
     7c8:	e1a00003 	mov	r0, r3
     7cc:	eb000193 	bl	e20 <sleepChan>
     7d0:	e51b000c 	ldr	r0, [fp, #-12]
     7d4:	ebffffb2 	bl	6a4 <acquireLock>
     7d8:	ea000000 	b	7e0 <condWait+0x5c>
     7dc:	e1a00000 	nop			@ (mov r0, r0)
     7e0:	e24bd004 	sub	sp, fp, #4
     7e4:	e8bd8800 	pop	{fp, pc}

000007e8 <broadcast>:
     7e8:	e92d4800 	push	{fp, lr}
     7ec:	e28db004 	add	fp, sp, #4
     7f0:	e24dd008 	sub	sp, sp, #8
     7f4:	e50b0008 	str	r0, [fp, #-8]
     7f8:	e51b3008 	ldr	r3, [fp, #-8]
     7fc:	e5933004 	ldr	r3, [r3, #4]
     800:	e3530000 	cmp	r3, #0
     804:	0a000004 	beq	81c <broadcast+0x34>
     808:	e51b3008 	ldr	r3, [fp, #-8]
     80c:	e5933000 	ldr	r3, [r3]
     810:	e1a00003 	mov	r0, r3
     814:	eb000193 	bl	e68 <sigChan>
     818:	ea000000 	b	820 <broadcast+0x38>
     81c:	e1a00000 	nop			@ (mov r0, r0)
     820:	e24bd004 	sub	sp, fp, #4
     824:	e8bd8800 	pop	{fp, pc}

00000828 <signal>:
     828:	e92d4800 	push	{fp, lr}
     82c:	e28db004 	add	fp, sp, #4
     830:	e24dd008 	sub	sp, sp, #8
     834:	e50b0008 	str	r0, [fp, #-8]
     838:	e51b3008 	ldr	r3, [fp, #-8]
     83c:	e5933004 	ldr	r3, [r3, #4]
     840:	e3530000 	cmp	r3, #0
     844:	0a000004 	beq	85c <signal+0x34>
     848:	e51b3008 	ldr	r3, [fp, #-8]
     84c:	e5933000 	ldr	r3, [r3]
     850:	e1a00003 	mov	r0, r3
     854:	eb00018c 	bl	e8c <sigOneChan>
     858:	ea000000 	b	860 <signal+0x38>
     85c:	e1a00000 	nop			@ (mov r0, r0)
     860:	e24bd004 	sub	sp, fp, #4
     864:	e8bd8800 	pop	{fp, pc}

00000868 <semInit>:
     868:	e92d4800 	push	{fp, lr}
     86c:	e28db004 	add	fp, sp, #4
     870:	e24dd008 	sub	sp, sp, #8
     874:	e50b0008 	str	r0, [fp, #-8]
     878:	e50b100c 	str	r1, [fp, #-12]
     87c:	e51b3008 	ldr	r3, [fp, #-8]
     880:	e51b200c 	ldr	r2, [fp, #-12]
     884:	e5832000 	str	r2, [r3]
     888:	e51b3008 	ldr	r3, [fp, #-8]
     88c:	e2833004 	add	r3, r3, #4
     890:	e1a00003 	mov	r0, r3
     894:	ebffff63 	bl	628 <initiateLock>
     898:	e51b3008 	ldr	r3, [fp, #-8]
     89c:	e283300c 	add	r3, r3, #12
     8a0:	e1a00003 	mov	r0, r3
     8a4:	ebffffa8 	bl	74c <initiateCondVar>
     8a8:	e51b3008 	ldr	r3, [fp, #-8]
     8ac:	e3a02001 	mov	r2, #1
     8b0:	e5832014 	str	r2, [r3, #20]
     8b4:	e1a00000 	nop			@ (mov r0, r0)
     8b8:	e24bd004 	sub	sp, fp, #4
     8bc:	e8bd8800 	pop	{fp, pc}

000008c0 <semUp>:
     8c0:	e92d4800 	push	{fp, lr}
     8c4:	e28db004 	add	fp, sp, #4
     8c8:	e24dd008 	sub	sp, sp, #8
     8cc:	e50b0008 	str	r0, [fp, #-8]
     8d0:	e51b3008 	ldr	r3, [fp, #-8]
     8d4:	e2833004 	add	r3, r3, #4
     8d8:	e1a00003 	mov	r0, r3
     8dc:	ebffff70 	bl	6a4 <acquireLock>
     8e0:	e51b3008 	ldr	r3, [fp, #-8]
     8e4:	e5933000 	ldr	r3, [r3]
     8e8:	e2832001 	add	r2, r3, #1
     8ec:	e51b3008 	ldr	r3, [fp, #-8]
     8f0:	e5832000 	str	r2, [r3]
     8f4:	e51b3008 	ldr	r3, [fp, #-8]
     8f8:	e283300c 	add	r3, r3, #12
     8fc:	e1a00003 	mov	r0, r3
     900:	ebffffc8 	bl	828 <signal>
     904:	e51b3008 	ldr	r3, [fp, #-8]
     908:	e2833004 	add	r3, r3, #4
     90c:	e1a00003 	mov	r0, r3
     910:	ebffff77 	bl	6f4 <releaseLock>
     914:	e1a00000 	nop			@ (mov r0, r0)
     918:	e24bd004 	sub	sp, fp, #4
     91c:	e8bd8800 	pop	{fp, pc}

00000920 <semDown>:
     920:	e92d4800 	push	{fp, lr}
     924:	e28db004 	add	fp, sp, #4
     928:	e24dd008 	sub	sp, sp, #8
     92c:	e50b0008 	str	r0, [fp, #-8]
     930:	e51b3008 	ldr	r3, [fp, #-8]
     934:	e2833004 	add	r3, r3, #4
     938:	e1a00003 	mov	r0, r3
     93c:	ebffff58 	bl	6a4 <acquireLock>
     940:	ea000006 	b	960 <semDown+0x40>
     944:	e51b3008 	ldr	r3, [fp, #-8]
     948:	e283200c 	add	r2, r3, #12
     94c:	e51b3008 	ldr	r3, [fp, #-8]
     950:	e2833004 	add	r3, r3, #4
     954:	e1a01003 	mov	r1, r3
     958:	e1a00002 	mov	r0, r2
     95c:	ebffff88 	bl	784 <condWait>
     960:	e51b3008 	ldr	r3, [fp, #-8]
     964:	e5933000 	ldr	r3, [r3]
     968:	e3530000 	cmp	r3, #0
     96c:	dafffff4 	ble	944 <semDown+0x24>
     970:	e51b3008 	ldr	r3, [fp, #-8]
     974:	e5933000 	ldr	r3, [r3]
     978:	e2432001 	sub	r2, r3, #1
     97c:	e51b3008 	ldr	r3, [fp, #-8]
     980:	e5832000 	str	r2, [r3]
     984:	e51b3008 	ldr	r3, [fp, #-8]
     988:	e2833004 	add	r3, r3, #4
     98c:	e1a00003 	mov	r0, r3
     990:	ebffff57 	bl	6f4 <releaseLock>
     994:	e1a00000 	nop			@ (mov r0, r0)
     998:	e24bd004 	sub	sp, fp, #4
     99c:	e8bd8800 	pop	{fp, pc}

000009a0 <fork>:
     9a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a4:	e1a04003 	mov	r4, r3
     9a8:	e1a03002 	mov	r3, r2
     9ac:	e1a02001 	mov	r2, r1
     9b0:	e1a01000 	mov	r1, r0
     9b4:	e3a00001 	mov	r0, #1
     9b8:	ef000000 	svc	0x00000000
     9bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c0:	e12fff1e 	bx	lr

000009c4 <exit>:
     9c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c8:	e1a04003 	mov	r4, r3
     9cc:	e1a03002 	mov	r3, r2
     9d0:	e1a02001 	mov	r2, r1
     9d4:	e1a01000 	mov	r1, r0
     9d8:	e3a00002 	mov	r0, #2
     9dc:	ef000000 	svc	0x00000000
     9e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e4:	e12fff1e 	bx	lr

000009e8 <wait>:
     9e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9ec:	e1a04003 	mov	r4, r3
     9f0:	e1a03002 	mov	r3, r2
     9f4:	e1a02001 	mov	r2, r1
     9f8:	e1a01000 	mov	r1, r0
     9fc:	e3a00003 	mov	r0, #3
     a00:	ef000000 	svc	0x00000000
     a04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a08:	e12fff1e 	bx	lr

00000a0c <pipe>:
     a0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a10:	e1a04003 	mov	r4, r3
     a14:	e1a03002 	mov	r3, r2
     a18:	e1a02001 	mov	r2, r1
     a1c:	e1a01000 	mov	r1, r0
     a20:	e3a00004 	mov	r0, #4
     a24:	ef000000 	svc	0x00000000
     a28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a2c:	e12fff1e 	bx	lr

00000a30 <read>:
     a30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a34:	e1a04003 	mov	r4, r3
     a38:	e1a03002 	mov	r3, r2
     a3c:	e1a02001 	mov	r2, r1
     a40:	e1a01000 	mov	r1, r0
     a44:	e3a00005 	mov	r0, #5
     a48:	ef000000 	svc	0x00000000
     a4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a50:	e12fff1e 	bx	lr

00000a54 <write>:
     a54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a58:	e1a04003 	mov	r4, r3
     a5c:	e1a03002 	mov	r3, r2
     a60:	e1a02001 	mov	r2, r1
     a64:	e1a01000 	mov	r1, r0
     a68:	e3a00010 	mov	r0, #16
     a6c:	ef000000 	svc	0x00000000
     a70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a74:	e12fff1e 	bx	lr

00000a78 <close>:
     a78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a7c:	e1a04003 	mov	r4, r3
     a80:	e1a03002 	mov	r3, r2
     a84:	e1a02001 	mov	r2, r1
     a88:	e1a01000 	mov	r1, r0
     a8c:	e3a00015 	mov	r0, #21
     a90:	ef000000 	svc	0x00000000
     a94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a98:	e12fff1e 	bx	lr

00000a9c <kill>:
     a9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa0:	e1a04003 	mov	r4, r3
     aa4:	e1a03002 	mov	r3, r2
     aa8:	e1a02001 	mov	r2, r1
     aac:	e1a01000 	mov	r1, r0
     ab0:	e3a00006 	mov	r0, #6
     ab4:	ef000000 	svc	0x00000000
     ab8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     abc:	e12fff1e 	bx	lr

00000ac0 <exec>:
     ac0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac4:	e1a04003 	mov	r4, r3
     ac8:	e1a03002 	mov	r3, r2
     acc:	e1a02001 	mov	r2, r1
     ad0:	e1a01000 	mov	r1, r0
     ad4:	e3a00007 	mov	r0, #7
     ad8:	ef000000 	svc	0x00000000
     adc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae0:	e12fff1e 	bx	lr

00000ae4 <open>:
     ae4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae8:	e1a04003 	mov	r4, r3
     aec:	e1a03002 	mov	r3, r2
     af0:	e1a02001 	mov	r2, r1
     af4:	e1a01000 	mov	r1, r0
     af8:	e3a0000f 	mov	r0, #15
     afc:	ef000000 	svc	0x00000000
     b00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b04:	e12fff1e 	bx	lr

00000b08 <mknod>:
     b08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b0c:	e1a04003 	mov	r4, r3
     b10:	e1a03002 	mov	r3, r2
     b14:	e1a02001 	mov	r2, r1
     b18:	e1a01000 	mov	r1, r0
     b1c:	e3a00011 	mov	r0, #17
     b20:	ef000000 	svc	0x00000000
     b24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b28:	e12fff1e 	bx	lr

00000b2c <unlink>:
     b2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b30:	e1a04003 	mov	r4, r3
     b34:	e1a03002 	mov	r3, r2
     b38:	e1a02001 	mov	r2, r1
     b3c:	e1a01000 	mov	r1, r0
     b40:	e3a00012 	mov	r0, #18
     b44:	ef000000 	svc	0x00000000
     b48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b4c:	e12fff1e 	bx	lr

00000b50 <fstat>:
     b50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b54:	e1a04003 	mov	r4, r3
     b58:	e1a03002 	mov	r3, r2
     b5c:	e1a02001 	mov	r2, r1
     b60:	e1a01000 	mov	r1, r0
     b64:	e3a00008 	mov	r0, #8
     b68:	ef000000 	svc	0x00000000
     b6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b70:	e12fff1e 	bx	lr

00000b74 <link>:
     b74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b78:	e1a04003 	mov	r4, r3
     b7c:	e1a03002 	mov	r3, r2
     b80:	e1a02001 	mov	r2, r1
     b84:	e1a01000 	mov	r1, r0
     b88:	e3a00013 	mov	r0, #19
     b8c:	ef000000 	svc	0x00000000
     b90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b94:	e12fff1e 	bx	lr

00000b98 <mkdir>:
     b98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b9c:	e1a04003 	mov	r4, r3
     ba0:	e1a03002 	mov	r3, r2
     ba4:	e1a02001 	mov	r2, r1
     ba8:	e1a01000 	mov	r1, r0
     bac:	e3a00014 	mov	r0, #20
     bb0:	ef000000 	svc	0x00000000
     bb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb8:	e12fff1e 	bx	lr

00000bbc <chdir>:
     bbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc0:	e1a04003 	mov	r4, r3
     bc4:	e1a03002 	mov	r3, r2
     bc8:	e1a02001 	mov	r2, r1
     bcc:	e1a01000 	mov	r1, r0
     bd0:	e3a00009 	mov	r0, #9
     bd4:	ef000000 	svc	0x00000000
     bd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bdc:	e12fff1e 	bx	lr

00000be0 <dup>:
     be0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be4:	e1a04003 	mov	r4, r3
     be8:	e1a03002 	mov	r3, r2
     bec:	e1a02001 	mov	r2, r1
     bf0:	e1a01000 	mov	r1, r0
     bf4:	e3a0000a 	mov	r0, #10
     bf8:	ef000000 	svc	0x00000000
     bfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c00:	e12fff1e 	bx	lr

00000c04 <getpid>:
     c04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c08:	e1a04003 	mov	r4, r3
     c0c:	e1a03002 	mov	r3, r2
     c10:	e1a02001 	mov	r2, r1
     c14:	e1a01000 	mov	r1, r0
     c18:	e3a0000b 	mov	r0, #11
     c1c:	ef000000 	svc	0x00000000
     c20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c24:	e12fff1e 	bx	lr

00000c28 <sbrk>:
     c28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c2c:	e1a04003 	mov	r4, r3
     c30:	e1a03002 	mov	r3, r2
     c34:	e1a02001 	mov	r2, r1
     c38:	e1a01000 	mov	r1, r0
     c3c:	e3a0000c 	mov	r0, #12
     c40:	ef000000 	svc	0x00000000
     c44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c48:	e12fff1e 	bx	lr

00000c4c <sleep>:
     c4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c50:	e1a04003 	mov	r4, r3
     c54:	e1a03002 	mov	r3, r2
     c58:	e1a02001 	mov	r2, r1
     c5c:	e1a01000 	mov	r1, r0
     c60:	e3a0000d 	mov	r0, #13
     c64:	ef000000 	svc	0x00000000
     c68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c6c:	e12fff1e 	bx	lr

00000c70 <uptime>:
     c70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c74:	e1a04003 	mov	r4, r3
     c78:	e1a03002 	mov	r3, r2
     c7c:	e1a02001 	mov	r2, r1
     c80:	e1a01000 	mov	r1, r0
     c84:	e3a0000e 	mov	r0, #14
     c88:	ef000000 	svc	0x00000000
     c8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c90:	e12fff1e 	bx	lr

00000c94 <getprocs>:
     c94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c98:	e1a04003 	mov	r4, r3
     c9c:	e1a03002 	mov	r3, r2
     ca0:	e1a02001 	mov	r2, r1
     ca4:	e1a01000 	mov	r1, r0
     ca8:	e3a00016 	mov	r0, #22
     cac:	ef000000 	svc	0x00000000
     cb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb4:	e12fff1e 	bx	lr

00000cb8 <settickets>:
     cb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cbc:	e1a04003 	mov	r4, r3
     cc0:	e1a03002 	mov	r3, r2
     cc4:	e1a02001 	mov	r2, r1
     cc8:	e1a01000 	mov	r1, r0
     ccc:	e3a00017 	mov	r0, #23
     cd0:	ef000000 	svc	0x00000000
     cd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd8:	e12fff1e 	bx	lr

00000cdc <srand>:
     cdc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce0:	e1a04003 	mov	r4, r3
     ce4:	e1a03002 	mov	r3, r2
     ce8:	e1a02001 	mov	r2, r1
     cec:	e1a01000 	mov	r1, r0
     cf0:	e3a00018 	mov	r0, #24
     cf4:	ef000000 	svc	0x00000000
     cf8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cfc:	e12fff1e 	bx	lr

00000d00 <getpinfo>:
     d00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d04:	e1a04003 	mov	r4, r3
     d08:	e1a03002 	mov	r3, r2
     d0c:	e1a02001 	mov	r2, r1
     d10:	e1a01000 	mov	r1, r0
     d14:	e3a00019 	mov	r0, #25
     d18:	ef000000 	svc	0x00000000
     d1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d20:	e12fff1e 	bx	lr

00000d24 <dumppagetable>:
     d24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d28:	e1a04003 	mov	r4, r3
     d2c:	e1a03002 	mov	r3, r2
     d30:	e1a02001 	mov	r2, r1
     d34:	e1a01000 	mov	r1, r0
     d38:	e3a0001a 	mov	r0, #26
     d3c:	ef000000 	svc	0x00000000
     d40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d44:	e12fff1e 	bx	lr

00000d48 <thread_create>:
     d48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d4c:	e1a04003 	mov	r4, r3
     d50:	e1a03002 	mov	r3, r2
     d54:	e1a02001 	mov	r2, r1
     d58:	e1a01000 	mov	r1, r0
     d5c:	e3a0001b 	mov	r0, #27
     d60:	ef000000 	svc	0x00000000
     d64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d68:	e12fff1e 	bx	lr

00000d6c <thread_exit>:
     d6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d70:	e1a04003 	mov	r4, r3
     d74:	e1a03002 	mov	r3, r2
     d78:	e1a02001 	mov	r2, r1
     d7c:	e1a01000 	mov	r1, r0
     d80:	e3a0001c 	mov	r0, #28
     d84:	ef000000 	svc	0x00000000
     d88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d8c:	e12fff1e 	bx	lr

00000d90 <thread_join>:
     d90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d94:	e1a04003 	mov	r4, r3
     d98:	e1a03002 	mov	r3, r2
     d9c:	e1a02001 	mov	r2, r1
     da0:	e1a01000 	mov	r1, r0
     da4:	e3a0001d 	mov	r0, #29
     da8:	ef000000 	svc	0x00000000
     dac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     db0:	e12fff1e 	bx	lr

00000db4 <waitpid>:
     db4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     db8:	e1a04003 	mov	r4, r3
     dbc:	e1a03002 	mov	r3, r2
     dc0:	e1a02001 	mov	r2, r1
     dc4:	e1a01000 	mov	r1, r0
     dc8:	e3a0001e 	mov	r0, #30
     dcc:	ef000000 	svc	0x00000000
     dd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd4:	e12fff1e 	bx	lr

00000dd8 <barrier_init>:
     dd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ddc:	e1a04003 	mov	r4, r3
     de0:	e1a03002 	mov	r3, r2
     de4:	e1a02001 	mov	r2, r1
     de8:	e1a01000 	mov	r1, r0
     dec:	e3a0001f 	mov	r0, #31
     df0:	ef000000 	svc	0x00000000
     df4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     df8:	e12fff1e 	bx	lr

00000dfc <barrier_check>:
     dfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e00:	e1a04003 	mov	r4, r3
     e04:	e1a03002 	mov	r3, r2
     e08:	e1a02001 	mov	r2, r1
     e0c:	e1a01000 	mov	r1, r0
     e10:	e3a00020 	mov	r0, #32
     e14:	ef000000 	svc	0x00000000
     e18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e1c:	e12fff1e 	bx	lr

00000e20 <sleepChan>:
     e20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e24:	e1a04003 	mov	r4, r3
     e28:	e1a03002 	mov	r3, r2
     e2c:	e1a02001 	mov	r2, r1
     e30:	e1a01000 	mov	r1, r0
     e34:	e3a00024 	mov	r0, #36	@ 0x24
     e38:	ef000000 	svc	0x00000000
     e3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e40:	e12fff1e 	bx	lr

00000e44 <getChannel>:
     e44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e48:	e1a04003 	mov	r4, r3
     e4c:	e1a03002 	mov	r3, r2
     e50:	e1a02001 	mov	r2, r1
     e54:	e1a01000 	mov	r1, r0
     e58:	e3a00025 	mov	r0, #37	@ 0x25
     e5c:	ef000000 	svc	0x00000000
     e60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e64:	e12fff1e 	bx	lr

00000e68 <sigChan>:
     e68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e6c:	e1a04003 	mov	r4, r3
     e70:	e1a03002 	mov	r3, r2
     e74:	e1a02001 	mov	r2, r1
     e78:	e1a01000 	mov	r1, r0
     e7c:	e3a00026 	mov	r0, #38	@ 0x26
     e80:	ef000000 	svc	0x00000000
     e84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e88:	e12fff1e 	bx	lr

00000e8c <sigOneChan>:
     e8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e90:	e1a04003 	mov	r4, r3
     e94:	e1a03002 	mov	r3, r2
     e98:	e1a02001 	mov	r2, r1
     e9c:	e1a01000 	mov	r1, r0
     ea0:	e3a00027 	mov	r0, #39	@ 0x27
     ea4:	ef000000 	svc	0x00000000
     ea8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eac:	e12fff1e 	bx	lr

00000eb0 <putc>:
     eb0:	e92d4800 	push	{fp, lr}
     eb4:	e28db004 	add	fp, sp, #4
     eb8:	e24dd008 	sub	sp, sp, #8
     ebc:	e50b0008 	str	r0, [fp, #-8]
     ec0:	e1a03001 	mov	r3, r1
     ec4:	e54b3009 	strb	r3, [fp, #-9]
     ec8:	e24b3009 	sub	r3, fp, #9
     ecc:	e3a02001 	mov	r2, #1
     ed0:	e1a01003 	mov	r1, r3
     ed4:	e51b0008 	ldr	r0, [fp, #-8]
     ed8:	ebfffedd 	bl	a54 <write>
     edc:	e1a00000 	nop			@ (mov r0, r0)
     ee0:	e24bd004 	sub	sp, fp, #4
     ee4:	e8bd8800 	pop	{fp, pc}

00000ee8 <printint>:
     ee8:	e92d4800 	push	{fp, lr}
     eec:	e28db004 	add	fp, sp, #4
     ef0:	e24dd030 	sub	sp, sp, #48	@ 0x30
     ef4:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     ef8:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     efc:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     f00:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     f04:	e3a03000 	mov	r3, #0
     f08:	e50b300c 	str	r3, [fp, #-12]
     f0c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     f10:	e3530000 	cmp	r3, #0
     f14:	0a000008 	beq	f3c <printint+0x54>
     f18:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f1c:	e3530000 	cmp	r3, #0
     f20:	aa000005 	bge	f3c <printint+0x54>
     f24:	e3a03001 	mov	r3, #1
     f28:	e50b300c 	str	r3, [fp, #-12]
     f2c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f30:	e2633000 	rsb	r3, r3, #0
     f34:	e50b3010 	str	r3, [fp, #-16]
     f38:	ea000001 	b	f44 <printint+0x5c>
     f3c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f40:	e50b3010 	str	r3, [fp, #-16]
     f44:	e3a03000 	mov	r3, #0
     f48:	e50b3008 	str	r3, [fp, #-8]
     f4c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     f50:	e51b3010 	ldr	r3, [fp, #-16]
     f54:	e1a01002 	mov	r1, r2
     f58:	e1a00003 	mov	r0, r3
     f5c:	eb0001d5 	bl	16b8 <__aeabi_uidivmod>
     f60:	e1a03001 	mov	r3, r1
     f64:	e1a01003 	mov	r1, r3
     f68:	e51b3008 	ldr	r3, [fp, #-8]
     f6c:	e2832001 	add	r2, r3, #1
     f70:	e50b2008 	str	r2, [fp, #-8]
     f74:	e59f20a0 	ldr	r2, [pc, #160]	@ 101c <printint+0x134>
     f78:	e7d22001 	ldrb	r2, [r2, r1]
     f7c:	e2433004 	sub	r3, r3, #4
     f80:	e083300b 	add	r3, r3, fp
     f84:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f88:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     f8c:	e1a01003 	mov	r1, r3
     f90:	e51b0010 	ldr	r0, [fp, #-16]
     f94:	eb00018a 	bl	15c4 <__udivsi3>
     f98:	e1a03000 	mov	r3, r0
     f9c:	e50b3010 	str	r3, [fp, #-16]
     fa0:	e51b3010 	ldr	r3, [fp, #-16]
     fa4:	e3530000 	cmp	r3, #0
     fa8:	1affffe7 	bne	f4c <printint+0x64>
     fac:	e51b300c 	ldr	r3, [fp, #-12]
     fb0:	e3530000 	cmp	r3, #0
     fb4:	0a00000e 	beq	ff4 <printint+0x10c>
     fb8:	e51b3008 	ldr	r3, [fp, #-8]
     fbc:	e2832001 	add	r2, r3, #1
     fc0:	e50b2008 	str	r2, [fp, #-8]
     fc4:	e2433004 	sub	r3, r3, #4
     fc8:	e083300b 	add	r3, r3, fp
     fcc:	e3a0202d 	mov	r2, #45	@ 0x2d
     fd0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     fd4:	ea000006 	b	ff4 <printint+0x10c>
     fd8:	e24b2020 	sub	r2, fp, #32
     fdc:	e51b3008 	ldr	r3, [fp, #-8]
     fe0:	e0823003 	add	r3, r2, r3
     fe4:	e5d33000 	ldrb	r3, [r3]
     fe8:	e1a01003 	mov	r1, r3
     fec:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     ff0:	ebffffae 	bl	eb0 <putc>
     ff4:	e51b3008 	ldr	r3, [fp, #-8]
     ff8:	e2433001 	sub	r3, r3, #1
     ffc:	e50b3008 	str	r3, [fp, #-8]
    1000:	e51b3008 	ldr	r3, [fp, #-8]
    1004:	e3530000 	cmp	r3, #0
    1008:	aafffff2 	bge	fd8 <printint+0xf0>
    100c:	e1a00000 	nop			@ (mov r0, r0)
    1010:	e1a00000 	nop			@ (mov r0, r0)
    1014:	e24bd004 	sub	sp, fp, #4
    1018:	e8bd8800 	pop	{fp, pc}
    101c:	00001710 	.word	0x00001710

00001020 <printf>:
    1020:	e92d000e 	push	{r1, r2, r3}
    1024:	e92d4800 	push	{fp, lr}
    1028:	e28db004 	add	fp, sp, #4
    102c:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1030:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1034:	e3a03000 	mov	r3, #0
    1038:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    103c:	e28b3008 	add	r3, fp, #8
    1040:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1044:	e3a03000 	mov	r3, #0
    1048:	e50b3010 	str	r3, [fp, #-16]
    104c:	ea000074 	b	1224 <printf+0x204>
    1050:	e59b2004 	ldr	r2, [fp, #4]
    1054:	e51b3010 	ldr	r3, [fp, #-16]
    1058:	e0823003 	add	r3, r2, r3
    105c:	e5d33000 	ldrb	r3, [r3]
    1060:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1064:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1068:	e3530000 	cmp	r3, #0
    106c:	1a00000b 	bne	10a0 <printf+0x80>
    1070:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1074:	e3530025 	cmp	r3, #37	@ 0x25
    1078:	1a000002 	bne	1088 <printf+0x68>
    107c:	e3a03025 	mov	r3, #37	@ 0x25
    1080:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1084:	ea000063 	b	1218 <printf+0x1f8>
    1088:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    108c:	e6ef3073 	uxtb	r3, r3
    1090:	e1a01003 	mov	r1, r3
    1094:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1098:	ebffff84 	bl	eb0 <putc>
    109c:	ea00005d 	b	1218 <printf+0x1f8>
    10a0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    10a4:	e3530025 	cmp	r3, #37	@ 0x25
    10a8:	1a00005a 	bne	1218 <printf+0x1f8>
    10ac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10b0:	e3530064 	cmp	r3, #100	@ 0x64
    10b4:	1a00000a 	bne	10e4 <printf+0xc4>
    10b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10bc:	e5933000 	ldr	r3, [r3]
    10c0:	e1a01003 	mov	r1, r3
    10c4:	e3a03001 	mov	r3, #1
    10c8:	e3a0200a 	mov	r2, #10
    10cc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10d0:	ebffff84 	bl	ee8 <printint>
    10d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10d8:	e2833004 	add	r3, r3, #4
    10dc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10e0:	ea00004a 	b	1210 <printf+0x1f0>
    10e4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10e8:	e3530078 	cmp	r3, #120	@ 0x78
    10ec:	0a000002 	beq	10fc <printf+0xdc>
    10f0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10f4:	e3530070 	cmp	r3, #112	@ 0x70
    10f8:	1a00000a 	bne	1128 <printf+0x108>
    10fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1100:	e5933000 	ldr	r3, [r3]
    1104:	e1a01003 	mov	r1, r3
    1108:	e3a03000 	mov	r3, #0
    110c:	e3a02010 	mov	r2, #16
    1110:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1114:	ebffff73 	bl	ee8 <printint>
    1118:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    111c:	e2833004 	add	r3, r3, #4
    1120:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1124:	ea000039 	b	1210 <printf+0x1f0>
    1128:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    112c:	e3530073 	cmp	r3, #115	@ 0x73
    1130:	1a000018 	bne	1198 <printf+0x178>
    1134:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1138:	e5933000 	ldr	r3, [r3]
    113c:	e50b300c 	str	r3, [fp, #-12]
    1140:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1144:	e2833004 	add	r3, r3, #4
    1148:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    114c:	e51b300c 	ldr	r3, [fp, #-12]
    1150:	e3530000 	cmp	r3, #0
    1154:	1a00000a 	bne	1184 <printf+0x164>
    1158:	e59f30f4 	ldr	r3, [pc, #244]	@ 1254 <printf+0x234>
    115c:	e50b300c 	str	r3, [fp, #-12]
    1160:	ea000007 	b	1184 <printf+0x164>
    1164:	e51b300c 	ldr	r3, [fp, #-12]
    1168:	e5d33000 	ldrb	r3, [r3]
    116c:	e1a01003 	mov	r1, r3
    1170:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1174:	ebffff4d 	bl	eb0 <putc>
    1178:	e51b300c 	ldr	r3, [fp, #-12]
    117c:	e2833001 	add	r3, r3, #1
    1180:	e50b300c 	str	r3, [fp, #-12]
    1184:	e51b300c 	ldr	r3, [fp, #-12]
    1188:	e5d33000 	ldrb	r3, [r3]
    118c:	e3530000 	cmp	r3, #0
    1190:	1afffff3 	bne	1164 <printf+0x144>
    1194:	ea00001d 	b	1210 <printf+0x1f0>
    1198:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    119c:	e3530063 	cmp	r3, #99	@ 0x63
    11a0:	1a000009 	bne	11cc <printf+0x1ac>
    11a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11a8:	e5933000 	ldr	r3, [r3]
    11ac:	e6ef3073 	uxtb	r3, r3
    11b0:	e1a01003 	mov	r1, r3
    11b4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11b8:	ebffff3c 	bl	eb0 <putc>
    11bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11c0:	e2833004 	add	r3, r3, #4
    11c4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11c8:	ea000010 	b	1210 <printf+0x1f0>
    11cc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11d0:	e3530025 	cmp	r3, #37	@ 0x25
    11d4:	1a000005 	bne	11f0 <printf+0x1d0>
    11d8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11dc:	e6ef3073 	uxtb	r3, r3
    11e0:	e1a01003 	mov	r1, r3
    11e4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11e8:	ebffff30 	bl	eb0 <putc>
    11ec:	ea000007 	b	1210 <printf+0x1f0>
    11f0:	e3a01025 	mov	r1, #37	@ 0x25
    11f4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11f8:	ebffff2c 	bl	eb0 <putc>
    11fc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1200:	e6ef3073 	uxtb	r3, r3
    1204:	e1a01003 	mov	r1, r3
    1208:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    120c:	ebffff27 	bl	eb0 <putc>
    1210:	e3a03000 	mov	r3, #0
    1214:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1218:	e51b3010 	ldr	r3, [fp, #-16]
    121c:	e2833001 	add	r3, r3, #1
    1220:	e50b3010 	str	r3, [fp, #-16]
    1224:	e59b2004 	ldr	r2, [fp, #4]
    1228:	e51b3010 	ldr	r3, [fp, #-16]
    122c:	e0823003 	add	r3, r2, r3
    1230:	e5d33000 	ldrb	r3, [r3]
    1234:	e3530000 	cmp	r3, #0
    1238:	1affff84 	bne	1050 <printf+0x30>
    123c:	e1a00000 	nop			@ (mov r0, r0)
    1240:	e1a00000 	nop			@ (mov r0, r0)
    1244:	e24bd004 	sub	sp, fp, #4
    1248:	e8bd4800 	pop	{fp, lr}
    124c:	e28dd00c 	add	sp, sp, #12
    1250:	e12fff1e 	bx	lr
    1254:	00001708 	.word	0x00001708

00001258 <free>:
    1258:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    125c:	e28db000 	add	fp, sp, #0
    1260:	e24dd014 	sub	sp, sp, #20
    1264:	e50b0010 	str	r0, [fp, #-16]
    1268:	e51b3010 	ldr	r3, [fp, #-16]
    126c:	e2433008 	sub	r3, r3, #8
    1270:	e50b300c 	str	r3, [fp, #-12]
    1274:	e59f3154 	ldr	r3, [pc, #340]	@ 13d0 <free+0x178>
    1278:	e5933000 	ldr	r3, [r3]
    127c:	e50b3008 	str	r3, [fp, #-8]
    1280:	ea000010 	b	12c8 <free+0x70>
    1284:	e51b3008 	ldr	r3, [fp, #-8]
    1288:	e5933000 	ldr	r3, [r3]
    128c:	e51b2008 	ldr	r2, [fp, #-8]
    1290:	e1520003 	cmp	r2, r3
    1294:	3a000008 	bcc	12bc <free+0x64>
    1298:	e51b200c 	ldr	r2, [fp, #-12]
    129c:	e51b3008 	ldr	r3, [fp, #-8]
    12a0:	e1520003 	cmp	r2, r3
    12a4:	8a000010 	bhi	12ec <free+0x94>
    12a8:	e51b3008 	ldr	r3, [fp, #-8]
    12ac:	e5933000 	ldr	r3, [r3]
    12b0:	e51b200c 	ldr	r2, [fp, #-12]
    12b4:	e1520003 	cmp	r2, r3
    12b8:	3a00000b 	bcc	12ec <free+0x94>
    12bc:	e51b3008 	ldr	r3, [fp, #-8]
    12c0:	e5933000 	ldr	r3, [r3]
    12c4:	e50b3008 	str	r3, [fp, #-8]
    12c8:	e51b200c 	ldr	r2, [fp, #-12]
    12cc:	e51b3008 	ldr	r3, [fp, #-8]
    12d0:	e1520003 	cmp	r2, r3
    12d4:	9affffea 	bls	1284 <free+0x2c>
    12d8:	e51b3008 	ldr	r3, [fp, #-8]
    12dc:	e5933000 	ldr	r3, [r3]
    12e0:	e51b200c 	ldr	r2, [fp, #-12]
    12e4:	e1520003 	cmp	r2, r3
    12e8:	2affffe5 	bcs	1284 <free+0x2c>
    12ec:	e51b300c 	ldr	r3, [fp, #-12]
    12f0:	e5933004 	ldr	r3, [r3, #4]
    12f4:	e1a03183 	lsl	r3, r3, #3
    12f8:	e51b200c 	ldr	r2, [fp, #-12]
    12fc:	e0822003 	add	r2, r2, r3
    1300:	e51b3008 	ldr	r3, [fp, #-8]
    1304:	e5933000 	ldr	r3, [r3]
    1308:	e1520003 	cmp	r2, r3
    130c:	1a00000d 	bne	1348 <free+0xf0>
    1310:	e51b300c 	ldr	r3, [fp, #-12]
    1314:	e5932004 	ldr	r2, [r3, #4]
    1318:	e51b3008 	ldr	r3, [fp, #-8]
    131c:	e5933000 	ldr	r3, [r3]
    1320:	e5933004 	ldr	r3, [r3, #4]
    1324:	e0822003 	add	r2, r2, r3
    1328:	e51b300c 	ldr	r3, [fp, #-12]
    132c:	e5832004 	str	r2, [r3, #4]
    1330:	e51b3008 	ldr	r3, [fp, #-8]
    1334:	e5933000 	ldr	r3, [r3]
    1338:	e5932000 	ldr	r2, [r3]
    133c:	e51b300c 	ldr	r3, [fp, #-12]
    1340:	e5832000 	str	r2, [r3]
    1344:	ea000003 	b	1358 <free+0x100>
    1348:	e51b3008 	ldr	r3, [fp, #-8]
    134c:	e5932000 	ldr	r2, [r3]
    1350:	e51b300c 	ldr	r3, [fp, #-12]
    1354:	e5832000 	str	r2, [r3]
    1358:	e51b3008 	ldr	r3, [fp, #-8]
    135c:	e5933004 	ldr	r3, [r3, #4]
    1360:	e1a03183 	lsl	r3, r3, #3
    1364:	e51b2008 	ldr	r2, [fp, #-8]
    1368:	e0823003 	add	r3, r2, r3
    136c:	e51b200c 	ldr	r2, [fp, #-12]
    1370:	e1520003 	cmp	r2, r3
    1374:	1a00000b 	bne	13a8 <free+0x150>
    1378:	e51b3008 	ldr	r3, [fp, #-8]
    137c:	e5932004 	ldr	r2, [r3, #4]
    1380:	e51b300c 	ldr	r3, [fp, #-12]
    1384:	e5933004 	ldr	r3, [r3, #4]
    1388:	e0822003 	add	r2, r2, r3
    138c:	e51b3008 	ldr	r3, [fp, #-8]
    1390:	e5832004 	str	r2, [r3, #4]
    1394:	e51b300c 	ldr	r3, [fp, #-12]
    1398:	e5932000 	ldr	r2, [r3]
    139c:	e51b3008 	ldr	r3, [fp, #-8]
    13a0:	e5832000 	str	r2, [r3]
    13a4:	ea000002 	b	13b4 <free+0x15c>
    13a8:	e51b3008 	ldr	r3, [fp, #-8]
    13ac:	e51b200c 	ldr	r2, [fp, #-12]
    13b0:	e5832000 	str	r2, [r3]
    13b4:	e59f2014 	ldr	r2, [pc, #20]	@ 13d0 <free+0x178>
    13b8:	e51b3008 	ldr	r3, [fp, #-8]
    13bc:	e5823000 	str	r3, [r2]
    13c0:	e1a00000 	nop			@ (mov r0, r0)
    13c4:	e28bd000 	add	sp, fp, #0
    13c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    13cc:	e12fff1e 	bx	lr
    13d0:	0000192c 	.word	0x0000192c

000013d4 <morecore>:
    13d4:	e92d4800 	push	{fp, lr}
    13d8:	e28db004 	add	fp, sp, #4
    13dc:	e24dd010 	sub	sp, sp, #16
    13e0:	e50b0010 	str	r0, [fp, #-16]
    13e4:	e51b3010 	ldr	r3, [fp, #-16]
    13e8:	e3530a01 	cmp	r3, #4096	@ 0x1000
    13ec:	2a000001 	bcs	13f8 <morecore+0x24>
    13f0:	e3a03a01 	mov	r3, #4096	@ 0x1000
    13f4:	e50b3010 	str	r3, [fp, #-16]
    13f8:	e51b3010 	ldr	r3, [fp, #-16]
    13fc:	e1a03183 	lsl	r3, r3, #3
    1400:	e1a00003 	mov	r0, r3
    1404:	ebfffe07 	bl	c28 <sbrk>
    1408:	e50b0008 	str	r0, [fp, #-8]
    140c:	e51b3008 	ldr	r3, [fp, #-8]
    1410:	e3730001 	cmn	r3, #1
    1414:	1a000001 	bne	1420 <morecore+0x4c>
    1418:	e3a03000 	mov	r3, #0
    141c:	ea00000a 	b	144c <morecore+0x78>
    1420:	e51b3008 	ldr	r3, [fp, #-8]
    1424:	e50b300c 	str	r3, [fp, #-12]
    1428:	e51b300c 	ldr	r3, [fp, #-12]
    142c:	e51b2010 	ldr	r2, [fp, #-16]
    1430:	e5832004 	str	r2, [r3, #4]
    1434:	e51b300c 	ldr	r3, [fp, #-12]
    1438:	e2833008 	add	r3, r3, #8
    143c:	e1a00003 	mov	r0, r3
    1440:	ebffff84 	bl	1258 <free>
    1444:	e59f300c 	ldr	r3, [pc, #12]	@ 1458 <morecore+0x84>
    1448:	e5933000 	ldr	r3, [r3]
    144c:	e1a00003 	mov	r0, r3
    1450:	e24bd004 	sub	sp, fp, #4
    1454:	e8bd8800 	pop	{fp, pc}
    1458:	0000192c 	.word	0x0000192c

0000145c <malloc>:
    145c:	e92d4800 	push	{fp, lr}
    1460:	e28db004 	add	fp, sp, #4
    1464:	e24dd018 	sub	sp, sp, #24
    1468:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    146c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1470:	e2833007 	add	r3, r3, #7
    1474:	e1a031a3 	lsr	r3, r3, #3
    1478:	e2833001 	add	r3, r3, #1
    147c:	e50b3010 	str	r3, [fp, #-16]
    1480:	e59f3134 	ldr	r3, [pc, #308]	@ 15bc <malloc+0x160>
    1484:	e5933000 	ldr	r3, [r3]
    1488:	e50b300c 	str	r3, [fp, #-12]
    148c:	e51b300c 	ldr	r3, [fp, #-12]
    1490:	e3530000 	cmp	r3, #0
    1494:	1a00000b 	bne	14c8 <malloc+0x6c>
    1498:	e59f3120 	ldr	r3, [pc, #288]	@ 15c0 <malloc+0x164>
    149c:	e50b300c 	str	r3, [fp, #-12]
    14a0:	e59f2114 	ldr	r2, [pc, #276]	@ 15bc <malloc+0x160>
    14a4:	e51b300c 	ldr	r3, [fp, #-12]
    14a8:	e5823000 	str	r3, [r2]
    14ac:	e59f3108 	ldr	r3, [pc, #264]	@ 15bc <malloc+0x160>
    14b0:	e5933000 	ldr	r3, [r3]
    14b4:	e59f2104 	ldr	r2, [pc, #260]	@ 15c0 <malloc+0x164>
    14b8:	e5823000 	str	r3, [r2]
    14bc:	e59f30fc 	ldr	r3, [pc, #252]	@ 15c0 <malloc+0x164>
    14c0:	e3a02000 	mov	r2, #0
    14c4:	e5832004 	str	r2, [r3, #4]
    14c8:	e51b300c 	ldr	r3, [fp, #-12]
    14cc:	e5933000 	ldr	r3, [r3]
    14d0:	e50b3008 	str	r3, [fp, #-8]
    14d4:	e51b3008 	ldr	r3, [fp, #-8]
    14d8:	e5933004 	ldr	r3, [r3, #4]
    14dc:	e51b2010 	ldr	r2, [fp, #-16]
    14e0:	e1520003 	cmp	r2, r3
    14e4:	8a00001e 	bhi	1564 <malloc+0x108>
    14e8:	e51b3008 	ldr	r3, [fp, #-8]
    14ec:	e5933004 	ldr	r3, [r3, #4]
    14f0:	e51b2010 	ldr	r2, [fp, #-16]
    14f4:	e1520003 	cmp	r2, r3
    14f8:	1a000004 	bne	1510 <malloc+0xb4>
    14fc:	e51b3008 	ldr	r3, [fp, #-8]
    1500:	e5932000 	ldr	r2, [r3]
    1504:	e51b300c 	ldr	r3, [fp, #-12]
    1508:	e5832000 	str	r2, [r3]
    150c:	ea00000e 	b	154c <malloc+0xf0>
    1510:	e51b3008 	ldr	r3, [fp, #-8]
    1514:	e5932004 	ldr	r2, [r3, #4]
    1518:	e51b3010 	ldr	r3, [fp, #-16]
    151c:	e0422003 	sub	r2, r2, r3
    1520:	e51b3008 	ldr	r3, [fp, #-8]
    1524:	e5832004 	str	r2, [r3, #4]
    1528:	e51b3008 	ldr	r3, [fp, #-8]
    152c:	e5933004 	ldr	r3, [r3, #4]
    1530:	e1a03183 	lsl	r3, r3, #3
    1534:	e51b2008 	ldr	r2, [fp, #-8]
    1538:	e0823003 	add	r3, r2, r3
    153c:	e50b3008 	str	r3, [fp, #-8]
    1540:	e51b3008 	ldr	r3, [fp, #-8]
    1544:	e51b2010 	ldr	r2, [fp, #-16]
    1548:	e5832004 	str	r2, [r3, #4]
    154c:	e59f2068 	ldr	r2, [pc, #104]	@ 15bc <malloc+0x160>
    1550:	e51b300c 	ldr	r3, [fp, #-12]
    1554:	e5823000 	str	r3, [r2]
    1558:	e51b3008 	ldr	r3, [fp, #-8]
    155c:	e2833008 	add	r3, r3, #8
    1560:	ea000012 	b	15b0 <malloc+0x154>
    1564:	e59f3050 	ldr	r3, [pc, #80]	@ 15bc <malloc+0x160>
    1568:	e5933000 	ldr	r3, [r3]
    156c:	e51b2008 	ldr	r2, [fp, #-8]
    1570:	e1520003 	cmp	r2, r3
    1574:	1a000007 	bne	1598 <malloc+0x13c>
    1578:	e51b0010 	ldr	r0, [fp, #-16]
    157c:	ebffff94 	bl	13d4 <morecore>
    1580:	e50b0008 	str	r0, [fp, #-8]
    1584:	e51b3008 	ldr	r3, [fp, #-8]
    1588:	e3530000 	cmp	r3, #0
    158c:	1a000001 	bne	1598 <malloc+0x13c>
    1590:	e3a03000 	mov	r3, #0
    1594:	ea000005 	b	15b0 <malloc+0x154>
    1598:	e51b3008 	ldr	r3, [fp, #-8]
    159c:	e50b300c 	str	r3, [fp, #-12]
    15a0:	e51b3008 	ldr	r3, [fp, #-8]
    15a4:	e5933000 	ldr	r3, [r3]
    15a8:	e50b3008 	str	r3, [fp, #-8]
    15ac:	eaffffc8 	b	14d4 <malloc+0x78>
    15b0:	e1a00003 	mov	r0, r3
    15b4:	e24bd004 	sub	sp, fp, #4
    15b8:	e8bd8800 	pop	{fp, pc}
    15bc:	0000192c 	.word	0x0000192c
    15c0:	00001924 	.word	0x00001924

000015c4 <__udivsi3>:
    15c4:	e2512001 	subs	r2, r1, #1
    15c8:	012fff1e 	bxeq	lr
    15cc:	3a000036 	bcc	16ac <__udivsi3+0xe8>
    15d0:	e1500001 	cmp	r0, r1
    15d4:	9a000022 	bls	1664 <__udivsi3+0xa0>
    15d8:	e1110002 	tst	r1, r2
    15dc:	0a000023 	beq	1670 <__udivsi3+0xac>
    15e0:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    15e4:	01a01181 	lsleq	r1, r1, #3
    15e8:	03a03008 	moveq	r3, #8
    15ec:	13a03001 	movne	r3, #1
    15f0:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    15f4:	31510000 	cmpcc	r1, r0
    15f8:	31a01201 	lslcc	r1, r1, #4
    15fc:	31a03203 	lslcc	r3, r3, #4
    1600:	3afffffa 	bcc	15f0 <__udivsi3+0x2c>
    1604:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1608:	31510000 	cmpcc	r1, r0
    160c:	31a01081 	lslcc	r1, r1, #1
    1610:	31a03083 	lslcc	r3, r3, #1
    1614:	3afffffa 	bcc	1604 <__udivsi3+0x40>
    1618:	e3a02000 	mov	r2, #0
    161c:	e1500001 	cmp	r0, r1
    1620:	20400001 	subcs	r0, r0, r1
    1624:	21822003 	orrcs	r2, r2, r3
    1628:	e15000a1 	cmp	r0, r1, lsr #1
    162c:	204000a1 	subcs	r0, r0, r1, lsr #1
    1630:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1634:	e1500121 	cmp	r0, r1, lsr #2
    1638:	20400121 	subcs	r0, r0, r1, lsr #2
    163c:	21822123 	orrcs	r2, r2, r3, lsr #2
    1640:	e15001a1 	cmp	r0, r1, lsr #3
    1644:	204001a1 	subcs	r0, r0, r1, lsr #3
    1648:	218221a3 	orrcs	r2, r2, r3, lsr #3
    164c:	e3500000 	cmp	r0, #0
    1650:	11b03223 	lsrsne	r3, r3, #4
    1654:	11a01221 	lsrne	r1, r1, #4
    1658:	1affffef 	bne	161c <__udivsi3+0x58>
    165c:	e1a00002 	mov	r0, r2
    1660:	e12fff1e 	bx	lr
    1664:	03a00001 	moveq	r0, #1
    1668:	13a00000 	movne	r0, #0
    166c:	e12fff1e 	bx	lr
    1670:	e3510801 	cmp	r1, #65536	@ 0x10000
    1674:	21a01821 	lsrcs	r1, r1, #16
    1678:	23a02010 	movcs	r2, #16
    167c:	33a02000 	movcc	r2, #0
    1680:	e3510c01 	cmp	r1, #256	@ 0x100
    1684:	21a01421 	lsrcs	r1, r1, #8
    1688:	22822008 	addcs	r2, r2, #8
    168c:	e3510010 	cmp	r1, #16
    1690:	21a01221 	lsrcs	r1, r1, #4
    1694:	22822004 	addcs	r2, r2, #4
    1698:	e3510004 	cmp	r1, #4
    169c:	82822003 	addhi	r2, r2, #3
    16a0:	908220a1 	addls	r2, r2, r1, lsr #1
    16a4:	e1a00230 	lsr	r0, r0, r2
    16a8:	e12fff1e 	bx	lr
    16ac:	e3500000 	cmp	r0, #0
    16b0:	13e00000 	mvnne	r0, #0
    16b4:	ea000007 	b	16d8 <__aeabi_idiv0>

000016b8 <__aeabi_uidivmod>:
    16b8:	e3510000 	cmp	r1, #0
    16bc:	0afffffa 	beq	16ac <__udivsi3+0xe8>
    16c0:	e92d4003 	push	{r0, r1, lr}
    16c4:	ebffffbe 	bl	15c4 <__udivsi3>
    16c8:	e8bd4006 	pop	{r1, r2, lr}
    16cc:	e0030092 	mul	r3, r2, r0
    16d0:	e0411003 	sub	r1, r1, r3
    16d4:	e12fff1e 	bx	lr

000016d8 <__aeabi_idiv0>:
    16d8:	e12fff1e 	bx	lr
