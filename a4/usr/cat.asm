
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
      20:	eb000252 	bl	970 <write>
      24:	e3a02c02 	mov	r2, #512	@ 0x200
      28:	e59f103c 	ldr	r1, [pc, #60]	@ 6c <cat+0x6c>
      2c:	e51b0010 	ldr	r0, [fp, #-16]
      30:	eb000245 	bl	94c <read>
      34:	e50b0008 	str	r0, [fp, #-8]
      38:	e51b3008 	ldr	r3, [fp, #-8]
      3c:	e3530000 	cmp	r3, #0
      40:	cafffff3 	bgt	14 <cat+0x14>
      44:	e51b3008 	ldr	r3, [fp, #-8]
      48:	e3530000 	cmp	r3, #0
      4c:	aa000003 	bge	60 <cat+0x60>
      50:	e59f1018 	ldr	r1, [pc, #24]	@ 70 <cat+0x70>
      54:	e3a00001 	mov	r0, #1
      58:	eb0003b7 	bl	f3c <printf>
      5c:	eb00021f 	bl	8e0 <exit>
      60:	e1a00000 	nop			@ (mov r0, r0)
      64:	e24bd004 	sub	sp, fp, #4
      68:	e8bd8800 	pop	{fp, pc}
      6c:	00001640 	.word	0x00001640
      70:	000015f8 	.word	0x000015f8

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
      9c:	eb00020f 	bl	8e0 <exit>
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
      c8:	eb00024c 	bl	a00 <open>
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
      fc:	eb00038e 	bl	f3c <printf>
     100:	eb0001f6 	bl	8e0 <exit>
     104:	e51b000c 	ldr	r0, [fp, #-12]
     108:	ebffffbc 	bl	0 <cat>
     10c:	e51b000c 	ldr	r0, [fp, #-12]
     110:	eb00021f 	bl	994 <close>
     114:	e51b3008 	ldr	r3, [fp, #-8]
     118:	e2833001 	add	r3, r3, #1
     11c:	e50b3008 	str	r3, [fp, #-8]
     120:	e51b2008 	ldr	r2, [fp, #-8]
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e1520003 	cmp	r2, r3
     12c:	baffffde 	blt	ac <main+0x38>
     130:	eb0001ea 	bl	8e0 <exit>
     134:	0000160c 	.word	0x0000160c

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
     42c:	eb000146 	bl	94c <read>
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
     4d4:	eb000149 	bl	a00 <open>
     4d8:	e50b0008 	str	r0, [fp, #-8]
     4dc:	e51b3008 	ldr	r3, [fp, #-8]
     4e0:	e3530000 	cmp	r3, #0
     4e4:	aa000001 	bge	4f0 <stat+0x38>
     4e8:	e3e03000 	mvn	r3, #0
     4ec:	ea000006 	b	50c <stat+0x54>
     4f0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     4f4:	e51b0008 	ldr	r0, [fp, #-8]
     4f8:	eb00015b 	bl	a6c <fstat>
     4fc:	e50b000c 	str	r0, [fp, #-12]
     500:	e51b0008 	ldr	r0, [fp, #-8]
     504:	eb000122 	bl	994 <close>
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

00000660 <acquireLock>:
     660:	e92d4800 	push	{fp, lr}
     664:	e28db004 	add	fp, sp, #4
     668:	e24dd008 	sub	sp, sp, #8
     66c:	e50b0008 	str	r0, [fp, #-8]
     670:	ea000001 	b	67c <acquireLock+0x1c>
     674:	e3a00001 	mov	r0, #1
     678:	eb00013a 	bl	b68 <sleep>
     67c:	e51b2008 	ldr	r2, [fp, #-8]
     680:	e3a01001 	mov	r1, #1
     684:	e1923f9f 	ldrex	r3, [r2]
     688:	e1820f91 	strex	r0, r1, [r2]
     68c:	e3500000 	cmp	r0, #0
     690:	1afffffb 	bne	684 <acquireLock+0x24>
     694:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     698:	e3530001 	cmp	r3, #1
     69c:	0afffff4 	beq	674 <acquireLock+0x14>
     6a0:	e1a00000 	nop			@ (mov r0, r0)
     6a4:	e1a00000 	nop			@ (mov r0, r0)
     6a8:	e24bd004 	sub	sp, fp, #4
     6ac:	e8bd8800 	pop	{fp, pc}

000006b0 <releaseLock>:
     6b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6b4:	e28db000 	add	fp, sp, #0
     6b8:	e24dd00c 	sub	sp, sp, #12
     6bc:	e50b0008 	str	r0, [fp, #-8]
     6c0:	e51b3008 	ldr	r3, [fp, #-8]
     6c4:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     6c8:	e3a02000 	mov	r2, #0
     6cc:	e5832000 	str	r2, [r3]
     6d0:	e1a00000 	nop			@ (mov r0, r0)
     6d4:	e28bd000 	add	sp, fp, #0
     6d8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6dc:	e12fff1e 	bx	lr

000006e0 <initiateCondVar>:
     6e0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6e4:	e28db000 	add	fp, sp, #0
     6e8:	e24dd00c 	sub	sp, sp, #12
     6ec:	e50b0008 	str	r0, [fp, #-8]
     6f0:	e51b3008 	ldr	r3, [fp, #-8]
     6f4:	e3a02000 	mov	r2, #0
     6f8:	e5832000 	str	r2, [r3]
     6fc:	e51b3008 	ldr	r3, [fp, #-8]
     700:	e3a02001 	mov	r2, #1
     704:	e5832004 	str	r2, [r3, #4]
     708:	e1a00000 	nop			@ (mov r0, r0)
     70c:	e28bd000 	add	sp, fp, #0
     710:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     714:	e12fff1e 	bx	lr

00000718 <condWait>:
     718:	e92d4800 	push	{fp, lr}
     71c:	e28db004 	add	fp, sp, #4
     720:	e24dd008 	sub	sp, sp, #8
     724:	e50b0008 	str	r0, [fp, #-8]
     728:	e50b100c 	str	r1, [fp, #-12]
     72c:	e51b000c 	ldr	r0, [fp, #-12]
     730:	ebffffde 	bl	6b0 <releaseLock>
     734:	e51b3008 	ldr	r3, [fp, #-8]
     738:	e5933000 	ldr	r3, [r3]
     73c:	e1a00003 	mov	r0, r3
     740:	eb00017d 	bl	d3c <sleepChan>
     744:	e51b000c 	ldr	r0, [fp, #-12]
     748:	ebffffc4 	bl	660 <acquireLock>
     74c:	e1a00000 	nop			@ (mov r0, r0)
     750:	e24bd004 	sub	sp, fp, #4
     754:	e8bd8800 	pop	{fp, pc}

00000758 <broadcast>:
     758:	e92d4800 	push	{fp, lr}
     75c:	e28db004 	add	fp, sp, #4
     760:	e24dd008 	sub	sp, sp, #8
     764:	e50b0008 	str	r0, [fp, #-8]
     768:	e51b3008 	ldr	r3, [fp, #-8]
     76c:	e5933000 	ldr	r3, [r3]
     770:	e1a00003 	mov	r0, r3
     774:	eb000182 	bl	d84 <sigChan>
     778:	e1a00000 	nop			@ (mov r0, r0)
     77c:	e24bd004 	sub	sp, fp, #4
     780:	e8bd8800 	pop	{fp, pc}

00000784 <semInit>:
     784:	e92d4800 	push	{fp, lr}
     788:	e28db004 	add	fp, sp, #4
     78c:	e24dd008 	sub	sp, sp, #8
     790:	e50b0008 	str	r0, [fp, #-8]
     794:	e50b100c 	str	r1, [fp, #-12]
     798:	e51b3008 	ldr	r3, [fp, #-8]
     79c:	e51b200c 	ldr	r2, [fp, #-12]
     7a0:	e5832000 	str	r2, [r3]
     7a4:	e51b3008 	ldr	r3, [fp, #-8]
     7a8:	e2833004 	add	r3, r3, #4
     7ac:	e1a00003 	mov	r0, r3
     7b0:	ebffff9c 	bl	628 <initiateLock>
     7b4:	e51b3008 	ldr	r3, [fp, #-8]
     7b8:	e283300c 	add	r3, r3, #12
     7bc:	e1a00003 	mov	r0, r3
     7c0:	ebffffc6 	bl	6e0 <initiateCondVar>
     7c4:	e51b3008 	ldr	r3, [fp, #-8]
     7c8:	e3a02001 	mov	r2, #1
     7cc:	e5832014 	str	r2, [r3, #20]
     7d0:	e1a00000 	nop			@ (mov r0, r0)
     7d4:	e24bd004 	sub	sp, fp, #4
     7d8:	e8bd8800 	pop	{fp, pc}

000007dc <semUp>:
     7dc:	e92d4800 	push	{fp, lr}
     7e0:	e28db004 	add	fp, sp, #4
     7e4:	e24dd008 	sub	sp, sp, #8
     7e8:	e50b0008 	str	r0, [fp, #-8]
     7ec:	e51b3008 	ldr	r3, [fp, #-8]
     7f0:	e2833004 	add	r3, r3, #4
     7f4:	e1a00003 	mov	r0, r3
     7f8:	ebffff98 	bl	660 <acquireLock>
     7fc:	e51b3008 	ldr	r3, [fp, #-8]
     800:	e5933000 	ldr	r3, [r3]
     804:	e2832001 	add	r2, r3, #1
     808:	e51b3008 	ldr	r3, [fp, #-8]
     80c:	e5832000 	str	r2, [r3]
     810:	e51b3008 	ldr	r3, [fp, #-8]
     814:	e283300c 	add	r3, r3, #12
     818:	e1a00003 	mov	r0, r3
     81c:	ebffffcd 	bl	758 <broadcast>
     820:	e51b3008 	ldr	r3, [fp, #-8]
     824:	e2833004 	add	r3, r3, #4
     828:	e1a00003 	mov	r0, r3
     82c:	ebffff9f 	bl	6b0 <releaseLock>
     830:	e1a00000 	nop			@ (mov r0, r0)
     834:	e24bd004 	sub	sp, fp, #4
     838:	e8bd8800 	pop	{fp, pc}

0000083c <semDown>:
     83c:	e92d4800 	push	{fp, lr}
     840:	e28db004 	add	fp, sp, #4
     844:	e24dd008 	sub	sp, sp, #8
     848:	e50b0008 	str	r0, [fp, #-8]
     84c:	e51b3008 	ldr	r3, [fp, #-8]
     850:	e2833004 	add	r3, r3, #4
     854:	e1a00003 	mov	r0, r3
     858:	ebffff80 	bl	660 <acquireLock>
     85c:	ea000006 	b	87c <semDown+0x40>
     860:	e51b3008 	ldr	r3, [fp, #-8]
     864:	e283200c 	add	r2, r3, #12
     868:	e51b3008 	ldr	r3, [fp, #-8]
     86c:	e2833004 	add	r3, r3, #4
     870:	e1a01003 	mov	r1, r3
     874:	e1a00002 	mov	r0, r2
     878:	ebffffa6 	bl	718 <condWait>
     87c:	e51b3008 	ldr	r3, [fp, #-8]
     880:	e5933000 	ldr	r3, [r3]
     884:	e3530000 	cmp	r3, #0
     888:	dafffff4 	ble	860 <semDown+0x24>
     88c:	e51b3008 	ldr	r3, [fp, #-8]
     890:	e5933000 	ldr	r3, [r3]
     894:	e2432001 	sub	r2, r3, #1
     898:	e51b3008 	ldr	r3, [fp, #-8]
     89c:	e5832000 	str	r2, [r3]
     8a0:	e51b3008 	ldr	r3, [fp, #-8]
     8a4:	e2833004 	add	r3, r3, #4
     8a8:	e1a00003 	mov	r0, r3
     8ac:	ebffff7f 	bl	6b0 <releaseLock>
     8b0:	e1a00000 	nop			@ (mov r0, r0)
     8b4:	e24bd004 	sub	sp, fp, #4
     8b8:	e8bd8800 	pop	{fp, pc}

000008bc <fork>:
     8bc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8c0:	e1a04003 	mov	r4, r3
     8c4:	e1a03002 	mov	r3, r2
     8c8:	e1a02001 	mov	r2, r1
     8cc:	e1a01000 	mov	r1, r0
     8d0:	e3a00001 	mov	r0, #1
     8d4:	ef000000 	svc	0x00000000
     8d8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8dc:	e12fff1e 	bx	lr

000008e0 <exit>:
     8e0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8e4:	e1a04003 	mov	r4, r3
     8e8:	e1a03002 	mov	r3, r2
     8ec:	e1a02001 	mov	r2, r1
     8f0:	e1a01000 	mov	r1, r0
     8f4:	e3a00002 	mov	r0, #2
     8f8:	ef000000 	svc	0x00000000
     8fc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     900:	e12fff1e 	bx	lr

00000904 <wait>:
     904:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     908:	e1a04003 	mov	r4, r3
     90c:	e1a03002 	mov	r3, r2
     910:	e1a02001 	mov	r2, r1
     914:	e1a01000 	mov	r1, r0
     918:	e3a00003 	mov	r0, #3
     91c:	ef000000 	svc	0x00000000
     920:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     924:	e12fff1e 	bx	lr

00000928 <pipe>:
     928:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     92c:	e1a04003 	mov	r4, r3
     930:	e1a03002 	mov	r3, r2
     934:	e1a02001 	mov	r2, r1
     938:	e1a01000 	mov	r1, r0
     93c:	e3a00004 	mov	r0, #4
     940:	ef000000 	svc	0x00000000
     944:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     948:	e12fff1e 	bx	lr

0000094c <read>:
     94c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     950:	e1a04003 	mov	r4, r3
     954:	e1a03002 	mov	r3, r2
     958:	e1a02001 	mov	r2, r1
     95c:	e1a01000 	mov	r1, r0
     960:	e3a00005 	mov	r0, #5
     964:	ef000000 	svc	0x00000000
     968:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     96c:	e12fff1e 	bx	lr

00000970 <write>:
     970:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     974:	e1a04003 	mov	r4, r3
     978:	e1a03002 	mov	r3, r2
     97c:	e1a02001 	mov	r2, r1
     980:	e1a01000 	mov	r1, r0
     984:	e3a00010 	mov	r0, #16
     988:	ef000000 	svc	0x00000000
     98c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     990:	e12fff1e 	bx	lr

00000994 <close>:
     994:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     998:	e1a04003 	mov	r4, r3
     99c:	e1a03002 	mov	r3, r2
     9a0:	e1a02001 	mov	r2, r1
     9a4:	e1a01000 	mov	r1, r0
     9a8:	e3a00015 	mov	r0, #21
     9ac:	ef000000 	svc	0x00000000
     9b0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9b4:	e12fff1e 	bx	lr

000009b8 <kill>:
     9b8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9bc:	e1a04003 	mov	r4, r3
     9c0:	e1a03002 	mov	r3, r2
     9c4:	e1a02001 	mov	r2, r1
     9c8:	e1a01000 	mov	r1, r0
     9cc:	e3a00006 	mov	r0, #6
     9d0:	ef000000 	svc	0x00000000
     9d4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9d8:	e12fff1e 	bx	lr

000009dc <exec>:
     9dc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9e0:	e1a04003 	mov	r4, r3
     9e4:	e1a03002 	mov	r3, r2
     9e8:	e1a02001 	mov	r2, r1
     9ec:	e1a01000 	mov	r1, r0
     9f0:	e3a00007 	mov	r0, #7
     9f4:	ef000000 	svc	0x00000000
     9f8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9fc:	e12fff1e 	bx	lr

00000a00 <open>:
     a00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a04:	e1a04003 	mov	r4, r3
     a08:	e1a03002 	mov	r3, r2
     a0c:	e1a02001 	mov	r2, r1
     a10:	e1a01000 	mov	r1, r0
     a14:	e3a0000f 	mov	r0, #15
     a18:	ef000000 	svc	0x00000000
     a1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a20:	e12fff1e 	bx	lr

00000a24 <mknod>:
     a24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a28:	e1a04003 	mov	r4, r3
     a2c:	e1a03002 	mov	r3, r2
     a30:	e1a02001 	mov	r2, r1
     a34:	e1a01000 	mov	r1, r0
     a38:	e3a00011 	mov	r0, #17
     a3c:	ef000000 	svc	0x00000000
     a40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a44:	e12fff1e 	bx	lr

00000a48 <unlink>:
     a48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a4c:	e1a04003 	mov	r4, r3
     a50:	e1a03002 	mov	r3, r2
     a54:	e1a02001 	mov	r2, r1
     a58:	e1a01000 	mov	r1, r0
     a5c:	e3a00012 	mov	r0, #18
     a60:	ef000000 	svc	0x00000000
     a64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a68:	e12fff1e 	bx	lr

00000a6c <fstat>:
     a6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a70:	e1a04003 	mov	r4, r3
     a74:	e1a03002 	mov	r3, r2
     a78:	e1a02001 	mov	r2, r1
     a7c:	e1a01000 	mov	r1, r0
     a80:	e3a00008 	mov	r0, #8
     a84:	ef000000 	svc	0x00000000
     a88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a8c:	e12fff1e 	bx	lr

00000a90 <link>:
     a90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a94:	e1a04003 	mov	r4, r3
     a98:	e1a03002 	mov	r3, r2
     a9c:	e1a02001 	mov	r2, r1
     aa0:	e1a01000 	mov	r1, r0
     aa4:	e3a00013 	mov	r0, #19
     aa8:	ef000000 	svc	0x00000000
     aac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ab0:	e12fff1e 	bx	lr

00000ab4 <mkdir>:
     ab4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ab8:	e1a04003 	mov	r4, r3
     abc:	e1a03002 	mov	r3, r2
     ac0:	e1a02001 	mov	r2, r1
     ac4:	e1a01000 	mov	r1, r0
     ac8:	e3a00014 	mov	r0, #20
     acc:	ef000000 	svc	0x00000000
     ad0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ad4:	e12fff1e 	bx	lr

00000ad8 <chdir>:
     ad8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     adc:	e1a04003 	mov	r4, r3
     ae0:	e1a03002 	mov	r3, r2
     ae4:	e1a02001 	mov	r2, r1
     ae8:	e1a01000 	mov	r1, r0
     aec:	e3a00009 	mov	r0, #9
     af0:	ef000000 	svc	0x00000000
     af4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     af8:	e12fff1e 	bx	lr

00000afc <dup>:
     afc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b00:	e1a04003 	mov	r4, r3
     b04:	e1a03002 	mov	r3, r2
     b08:	e1a02001 	mov	r2, r1
     b0c:	e1a01000 	mov	r1, r0
     b10:	e3a0000a 	mov	r0, #10
     b14:	ef000000 	svc	0x00000000
     b18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b1c:	e12fff1e 	bx	lr

00000b20 <getpid>:
     b20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b24:	e1a04003 	mov	r4, r3
     b28:	e1a03002 	mov	r3, r2
     b2c:	e1a02001 	mov	r2, r1
     b30:	e1a01000 	mov	r1, r0
     b34:	e3a0000b 	mov	r0, #11
     b38:	ef000000 	svc	0x00000000
     b3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b40:	e12fff1e 	bx	lr

00000b44 <sbrk>:
     b44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b48:	e1a04003 	mov	r4, r3
     b4c:	e1a03002 	mov	r3, r2
     b50:	e1a02001 	mov	r2, r1
     b54:	e1a01000 	mov	r1, r0
     b58:	e3a0000c 	mov	r0, #12
     b5c:	ef000000 	svc	0x00000000
     b60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b64:	e12fff1e 	bx	lr

00000b68 <sleep>:
     b68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b6c:	e1a04003 	mov	r4, r3
     b70:	e1a03002 	mov	r3, r2
     b74:	e1a02001 	mov	r2, r1
     b78:	e1a01000 	mov	r1, r0
     b7c:	e3a0000d 	mov	r0, #13
     b80:	ef000000 	svc	0x00000000
     b84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b88:	e12fff1e 	bx	lr

00000b8c <uptime>:
     b8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b90:	e1a04003 	mov	r4, r3
     b94:	e1a03002 	mov	r3, r2
     b98:	e1a02001 	mov	r2, r1
     b9c:	e1a01000 	mov	r1, r0
     ba0:	e3a0000e 	mov	r0, #14
     ba4:	ef000000 	svc	0x00000000
     ba8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bac:	e12fff1e 	bx	lr

00000bb0 <getprocs>:
     bb0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bb4:	e1a04003 	mov	r4, r3
     bb8:	e1a03002 	mov	r3, r2
     bbc:	e1a02001 	mov	r2, r1
     bc0:	e1a01000 	mov	r1, r0
     bc4:	e3a00016 	mov	r0, #22
     bc8:	ef000000 	svc	0x00000000
     bcc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bd0:	e12fff1e 	bx	lr

00000bd4 <settickets>:
     bd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bd8:	e1a04003 	mov	r4, r3
     bdc:	e1a03002 	mov	r3, r2
     be0:	e1a02001 	mov	r2, r1
     be4:	e1a01000 	mov	r1, r0
     be8:	e3a00017 	mov	r0, #23
     bec:	ef000000 	svc	0x00000000
     bf0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bf4:	e12fff1e 	bx	lr

00000bf8 <srand>:
     bf8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bfc:	e1a04003 	mov	r4, r3
     c00:	e1a03002 	mov	r3, r2
     c04:	e1a02001 	mov	r2, r1
     c08:	e1a01000 	mov	r1, r0
     c0c:	e3a00018 	mov	r0, #24
     c10:	ef000000 	svc	0x00000000
     c14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c18:	e12fff1e 	bx	lr

00000c1c <getpinfo>:
     c1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c20:	e1a04003 	mov	r4, r3
     c24:	e1a03002 	mov	r3, r2
     c28:	e1a02001 	mov	r2, r1
     c2c:	e1a01000 	mov	r1, r0
     c30:	e3a00019 	mov	r0, #25
     c34:	ef000000 	svc	0x00000000
     c38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c3c:	e12fff1e 	bx	lr

00000c40 <dumppagetable>:
     c40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c44:	e1a04003 	mov	r4, r3
     c48:	e1a03002 	mov	r3, r2
     c4c:	e1a02001 	mov	r2, r1
     c50:	e1a01000 	mov	r1, r0
     c54:	e3a0001a 	mov	r0, #26
     c58:	ef000000 	svc	0x00000000
     c5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c60:	e12fff1e 	bx	lr

00000c64 <thread_create>:
     c64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c68:	e1a04003 	mov	r4, r3
     c6c:	e1a03002 	mov	r3, r2
     c70:	e1a02001 	mov	r2, r1
     c74:	e1a01000 	mov	r1, r0
     c78:	e3a0001b 	mov	r0, #27
     c7c:	ef000000 	svc	0x00000000
     c80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c84:	e12fff1e 	bx	lr

00000c88 <thread_exit>:
     c88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c8c:	e1a04003 	mov	r4, r3
     c90:	e1a03002 	mov	r3, r2
     c94:	e1a02001 	mov	r2, r1
     c98:	e1a01000 	mov	r1, r0
     c9c:	e3a0001c 	mov	r0, #28
     ca0:	ef000000 	svc	0x00000000
     ca4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ca8:	e12fff1e 	bx	lr

00000cac <thread_join>:
     cac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cb0:	e1a04003 	mov	r4, r3
     cb4:	e1a03002 	mov	r3, r2
     cb8:	e1a02001 	mov	r2, r1
     cbc:	e1a01000 	mov	r1, r0
     cc0:	e3a0001d 	mov	r0, #29
     cc4:	ef000000 	svc	0x00000000
     cc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ccc:	e12fff1e 	bx	lr

00000cd0 <waitpid>:
     cd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cd4:	e1a04003 	mov	r4, r3
     cd8:	e1a03002 	mov	r3, r2
     cdc:	e1a02001 	mov	r2, r1
     ce0:	e1a01000 	mov	r1, r0
     ce4:	e3a0001e 	mov	r0, #30
     ce8:	ef000000 	svc	0x00000000
     cec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cf0:	e12fff1e 	bx	lr

00000cf4 <barrier_init>:
     cf4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cf8:	e1a04003 	mov	r4, r3
     cfc:	e1a03002 	mov	r3, r2
     d00:	e1a02001 	mov	r2, r1
     d04:	e1a01000 	mov	r1, r0
     d08:	e3a0001f 	mov	r0, #31
     d0c:	ef000000 	svc	0x00000000
     d10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d14:	e12fff1e 	bx	lr

00000d18 <barrier_check>:
     d18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d1c:	e1a04003 	mov	r4, r3
     d20:	e1a03002 	mov	r3, r2
     d24:	e1a02001 	mov	r2, r1
     d28:	e1a01000 	mov	r1, r0
     d2c:	e3a00020 	mov	r0, #32
     d30:	ef000000 	svc	0x00000000
     d34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d38:	e12fff1e 	bx	lr

00000d3c <sleepChan>:
     d3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d40:	e1a04003 	mov	r4, r3
     d44:	e1a03002 	mov	r3, r2
     d48:	e1a02001 	mov	r2, r1
     d4c:	e1a01000 	mov	r1, r0
     d50:	e3a00024 	mov	r0, #36	@ 0x24
     d54:	ef000000 	svc	0x00000000
     d58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d5c:	e12fff1e 	bx	lr

00000d60 <getChannel>:
     d60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d64:	e1a04003 	mov	r4, r3
     d68:	e1a03002 	mov	r3, r2
     d6c:	e1a02001 	mov	r2, r1
     d70:	e1a01000 	mov	r1, r0
     d74:	e3a00025 	mov	r0, #37	@ 0x25
     d78:	ef000000 	svc	0x00000000
     d7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d80:	e12fff1e 	bx	lr

00000d84 <sigChan>:
     d84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d88:	e1a04003 	mov	r4, r3
     d8c:	e1a03002 	mov	r3, r2
     d90:	e1a02001 	mov	r2, r1
     d94:	e1a01000 	mov	r1, r0
     d98:	e3a00026 	mov	r0, #38	@ 0x26
     d9c:	ef000000 	svc	0x00000000
     da0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     da4:	e12fff1e 	bx	lr

00000da8 <sigOneChan>:
     da8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dac:	e1a04003 	mov	r4, r3
     db0:	e1a03002 	mov	r3, r2
     db4:	e1a02001 	mov	r2, r1
     db8:	e1a01000 	mov	r1, r0
     dbc:	e3a00027 	mov	r0, #39	@ 0x27
     dc0:	ef000000 	svc	0x00000000
     dc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dc8:	e12fff1e 	bx	lr

00000dcc <putc>:
     dcc:	e92d4800 	push	{fp, lr}
     dd0:	e28db004 	add	fp, sp, #4
     dd4:	e24dd008 	sub	sp, sp, #8
     dd8:	e50b0008 	str	r0, [fp, #-8]
     ddc:	e1a03001 	mov	r3, r1
     de0:	e54b3009 	strb	r3, [fp, #-9]
     de4:	e24b3009 	sub	r3, fp, #9
     de8:	e3a02001 	mov	r2, #1
     dec:	e1a01003 	mov	r1, r3
     df0:	e51b0008 	ldr	r0, [fp, #-8]
     df4:	ebfffedd 	bl	970 <write>
     df8:	e1a00000 	nop			@ (mov r0, r0)
     dfc:	e24bd004 	sub	sp, fp, #4
     e00:	e8bd8800 	pop	{fp, pc}

00000e04 <printint>:
     e04:	e92d4800 	push	{fp, lr}
     e08:	e28db004 	add	fp, sp, #4
     e0c:	e24dd030 	sub	sp, sp, #48	@ 0x30
     e10:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     e14:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     e18:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     e1c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     e20:	e3a03000 	mov	r3, #0
     e24:	e50b300c 	str	r3, [fp, #-12]
     e28:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     e2c:	e3530000 	cmp	r3, #0
     e30:	0a000008 	beq	e58 <printint+0x54>
     e34:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e38:	e3530000 	cmp	r3, #0
     e3c:	aa000005 	bge	e58 <printint+0x54>
     e40:	e3a03001 	mov	r3, #1
     e44:	e50b300c 	str	r3, [fp, #-12]
     e48:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e4c:	e2633000 	rsb	r3, r3, #0
     e50:	e50b3010 	str	r3, [fp, #-16]
     e54:	ea000001 	b	e60 <printint+0x5c>
     e58:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e5c:	e50b3010 	str	r3, [fp, #-16]
     e60:	e3a03000 	mov	r3, #0
     e64:	e50b3008 	str	r3, [fp, #-8]
     e68:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     e6c:	e51b3010 	ldr	r3, [fp, #-16]
     e70:	e1a01002 	mov	r1, r2
     e74:	e1a00003 	mov	r0, r3
     e78:	eb0001d5 	bl	15d4 <__aeabi_uidivmod>
     e7c:	e1a03001 	mov	r3, r1
     e80:	e1a01003 	mov	r1, r3
     e84:	e51b3008 	ldr	r3, [fp, #-8]
     e88:	e2832001 	add	r2, r3, #1
     e8c:	e50b2008 	str	r2, [fp, #-8]
     e90:	e59f20a0 	ldr	r2, [pc, #160]	@ f38 <printint+0x134>
     e94:	e7d22001 	ldrb	r2, [r2, r1]
     e98:	e2433004 	sub	r3, r3, #4
     e9c:	e083300b 	add	r3, r3, fp
     ea0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ea4:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     ea8:	e1a01003 	mov	r1, r3
     eac:	e51b0010 	ldr	r0, [fp, #-16]
     eb0:	eb00018a 	bl	14e0 <__udivsi3>
     eb4:	e1a03000 	mov	r3, r0
     eb8:	e50b3010 	str	r3, [fp, #-16]
     ebc:	e51b3010 	ldr	r3, [fp, #-16]
     ec0:	e3530000 	cmp	r3, #0
     ec4:	1affffe7 	bne	e68 <printint+0x64>
     ec8:	e51b300c 	ldr	r3, [fp, #-12]
     ecc:	e3530000 	cmp	r3, #0
     ed0:	0a00000e 	beq	f10 <printint+0x10c>
     ed4:	e51b3008 	ldr	r3, [fp, #-8]
     ed8:	e2832001 	add	r2, r3, #1
     edc:	e50b2008 	str	r2, [fp, #-8]
     ee0:	e2433004 	sub	r3, r3, #4
     ee4:	e083300b 	add	r3, r3, fp
     ee8:	e3a0202d 	mov	r2, #45	@ 0x2d
     eec:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ef0:	ea000006 	b	f10 <printint+0x10c>
     ef4:	e24b2020 	sub	r2, fp, #32
     ef8:	e51b3008 	ldr	r3, [fp, #-8]
     efc:	e0823003 	add	r3, r2, r3
     f00:	e5d33000 	ldrb	r3, [r3]
     f04:	e1a01003 	mov	r1, r3
     f08:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     f0c:	ebffffae 	bl	dcc <putc>
     f10:	e51b3008 	ldr	r3, [fp, #-8]
     f14:	e2433001 	sub	r3, r3, #1
     f18:	e50b3008 	str	r3, [fp, #-8]
     f1c:	e51b3008 	ldr	r3, [fp, #-8]
     f20:	e3530000 	cmp	r3, #0
     f24:	aafffff2 	bge	ef4 <printint+0xf0>
     f28:	e1a00000 	nop			@ (mov r0, r0)
     f2c:	e1a00000 	nop			@ (mov r0, r0)
     f30:	e24bd004 	sub	sp, fp, #4
     f34:	e8bd8800 	pop	{fp, pc}
     f38:	0000162c 	.word	0x0000162c

00000f3c <printf>:
     f3c:	e92d000e 	push	{r1, r2, r3}
     f40:	e92d4800 	push	{fp, lr}
     f44:	e28db004 	add	fp, sp, #4
     f48:	e24dd024 	sub	sp, sp, #36	@ 0x24
     f4c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     f50:	e3a03000 	mov	r3, #0
     f54:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f58:	e28b3008 	add	r3, fp, #8
     f5c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f60:	e3a03000 	mov	r3, #0
     f64:	e50b3010 	str	r3, [fp, #-16]
     f68:	ea000074 	b	1140 <printf+0x204>
     f6c:	e59b2004 	ldr	r2, [fp, #4]
     f70:	e51b3010 	ldr	r3, [fp, #-16]
     f74:	e0823003 	add	r3, r2, r3
     f78:	e5d33000 	ldrb	r3, [r3]
     f7c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     f80:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     f84:	e3530000 	cmp	r3, #0
     f88:	1a00000b 	bne	fbc <printf+0x80>
     f8c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f90:	e3530025 	cmp	r3, #37	@ 0x25
     f94:	1a000002 	bne	fa4 <printf+0x68>
     f98:	e3a03025 	mov	r3, #37	@ 0x25
     f9c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     fa0:	ea000063 	b	1134 <printf+0x1f8>
     fa4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fa8:	e6ef3073 	uxtb	r3, r3
     fac:	e1a01003 	mov	r1, r3
     fb0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fb4:	ebffff84 	bl	dcc <putc>
     fb8:	ea00005d 	b	1134 <printf+0x1f8>
     fbc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     fc0:	e3530025 	cmp	r3, #37	@ 0x25
     fc4:	1a00005a 	bne	1134 <printf+0x1f8>
     fc8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fcc:	e3530064 	cmp	r3, #100	@ 0x64
     fd0:	1a00000a 	bne	1000 <printf+0xc4>
     fd4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fd8:	e5933000 	ldr	r3, [r3]
     fdc:	e1a01003 	mov	r1, r3
     fe0:	e3a03001 	mov	r3, #1
     fe4:	e3a0200a 	mov	r2, #10
     fe8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fec:	ebffff84 	bl	e04 <printint>
     ff0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ff4:	e2833004 	add	r3, r3, #4
     ff8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ffc:	ea00004a 	b	112c <printf+0x1f0>
    1000:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1004:	e3530078 	cmp	r3, #120	@ 0x78
    1008:	0a000002 	beq	1018 <printf+0xdc>
    100c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1010:	e3530070 	cmp	r3, #112	@ 0x70
    1014:	1a00000a 	bne	1044 <printf+0x108>
    1018:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    101c:	e5933000 	ldr	r3, [r3]
    1020:	e1a01003 	mov	r1, r3
    1024:	e3a03000 	mov	r3, #0
    1028:	e3a02010 	mov	r2, #16
    102c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1030:	ebffff73 	bl	e04 <printint>
    1034:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1038:	e2833004 	add	r3, r3, #4
    103c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1040:	ea000039 	b	112c <printf+0x1f0>
    1044:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1048:	e3530073 	cmp	r3, #115	@ 0x73
    104c:	1a000018 	bne	10b4 <printf+0x178>
    1050:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1054:	e5933000 	ldr	r3, [r3]
    1058:	e50b300c 	str	r3, [fp, #-12]
    105c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1060:	e2833004 	add	r3, r3, #4
    1064:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1068:	e51b300c 	ldr	r3, [fp, #-12]
    106c:	e3530000 	cmp	r3, #0
    1070:	1a00000a 	bne	10a0 <printf+0x164>
    1074:	e59f30f4 	ldr	r3, [pc, #244]	@ 1170 <printf+0x234>
    1078:	e50b300c 	str	r3, [fp, #-12]
    107c:	ea000007 	b	10a0 <printf+0x164>
    1080:	e51b300c 	ldr	r3, [fp, #-12]
    1084:	e5d33000 	ldrb	r3, [r3]
    1088:	e1a01003 	mov	r1, r3
    108c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1090:	ebffff4d 	bl	dcc <putc>
    1094:	e51b300c 	ldr	r3, [fp, #-12]
    1098:	e2833001 	add	r3, r3, #1
    109c:	e50b300c 	str	r3, [fp, #-12]
    10a0:	e51b300c 	ldr	r3, [fp, #-12]
    10a4:	e5d33000 	ldrb	r3, [r3]
    10a8:	e3530000 	cmp	r3, #0
    10ac:	1afffff3 	bne	1080 <printf+0x144>
    10b0:	ea00001d 	b	112c <printf+0x1f0>
    10b4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10b8:	e3530063 	cmp	r3, #99	@ 0x63
    10bc:	1a000009 	bne	10e8 <printf+0x1ac>
    10c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10c4:	e5933000 	ldr	r3, [r3]
    10c8:	e6ef3073 	uxtb	r3, r3
    10cc:	e1a01003 	mov	r1, r3
    10d0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10d4:	ebffff3c 	bl	dcc <putc>
    10d8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10dc:	e2833004 	add	r3, r3, #4
    10e0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10e4:	ea000010 	b	112c <printf+0x1f0>
    10e8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10ec:	e3530025 	cmp	r3, #37	@ 0x25
    10f0:	1a000005 	bne	110c <printf+0x1d0>
    10f4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10f8:	e6ef3073 	uxtb	r3, r3
    10fc:	e1a01003 	mov	r1, r3
    1100:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1104:	ebffff30 	bl	dcc <putc>
    1108:	ea000007 	b	112c <printf+0x1f0>
    110c:	e3a01025 	mov	r1, #37	@ 0x25
    1110:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1114:	ebffff2c 	bl	dcc <putc>
    1118:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    111c:	e6ef3073 	uxtb	r3, r3
    1120:	e1a01003 	mov	r1, r3
    1124:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1128:	ebffff27 	bl	dcc <putc>
    112c:	e3a03000 	mov	r3, #0
    1130:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1134:	e51b3010 	ldr	r3, [fp, #-16]
    1138:	e2833001 	add	r3, r3, #1
    113c:	e50b3010 	str	r3, [fp, #-16]
    1140:	e59b2004 	ldr	r2, [fp, #4]
    1144:	e51b3010 	ldr	r3, [fp, #-16]
    1148:	e0823003 	add	r3, r2, r3
    114c:	e5d33000 	ldrb	r3, [r3]
    1150:	e3530000 	cmp	r3, #0
    1154:	1affff84 	bne	f6c <printf+0x30>
    1158:	e1a00000 	nop			@ (mov r0, r0)
    115c:	e1a00000 	nop			@ (mov r0, r0)
    1160:	e24bd004 	sub	sp, fp, #4
    1164:	e8bd4800 	pop	{fp, lr}
    1168:	e28dd00c 	add	sp, sp, #12
    116c:	e12fff1e 	bx	lr
    1170:	00001624 	.word	0x00001624

00001174 <free>:
    1174:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1178:	e28db000 	add	fp, sp, #0
    117c:	e24dd014 	sub	sp, sp, #20
    1180:	e50b0010 	str	r0, [fp, #-16]
    1184:	e51b3010 	ldr	r3, [fp, #-16]
    1188:	e2433008 	sub	r3, r3, #8
    118c:	e50b300c 	str	r3, [fp, #-12]
    1190:	e59f3154 	ldr	r3, [pc, #340]	@ 12ec <free+0x178>
    1194:	e5933000 	ldr	r3, [r3]
    1198:	e50b3008 	str	r3, [fp, #-8]
    119c:	ea000010 	b	11e4 <free+0x70>
    11a0:	e51b3008 	ldr	r3, [fp, #-8]
    11a4:	e5933000 	ldr	r3, [r3]
    11a8:	e51b2008 	ldr	r2, [fp, #-8]
    11ac:	e1520003 	cmp	r2, r3
    11b0:	3a000008 	bcc	11d8 <free+0x64>
    11b4:	e51b200c 	ldr	r2, [fp, #-12]
    11b8:	e51b3008 	ldr	r3, [fp, #-8]
    11bc:	e1520003 	cmp	r2, r3
    11c0:	8a000010 	bhi	1208 <free+0x94>
    11c4:	e51b3008 	ldr	r3, [fp, #-8]
    11c8:	e5933000 	ldr	r3, [r3]
    11cc:	e51b200c 	ldr	r2, [fp, #-12]
    11d0:	e1520003 	cmp	r2, r3
    11d4:	3a00000b 	bcc	1208 <free+0x94>
    11d8:	e51b3008 	ldr	r3, [fp, #-8]
    11dc:	e5933000 	ldr	r3, [r3]
    11e0:	e50b3008 	str	r3, [fp, #-8]
    11e4:	e51b200c 	ldr	r2, [fp, #-12]
    11e8:	e51b3008 	ldr	r3, [fp, #-8]
    11ec:	e1520003 	cmp	r2, r3
    11f0:	9affffea 	bls	11a0 <free+0x2c>
    11f4:	e51b3008 	ldr	r3, [fp, #-8]
    11f8:	e5933000 	ldr	r3, [r3]
    11fc:	e51b200c 	ldr	r2, [fp, #-12]
    1200:	e1520003 	cmp	r2, r3
    1204:	2affffe5 	bcs	11a0 <free+0x2c>
    1208:	e51b300c 	ldr	r3, [fp, #-12]
    120c:	e5933004 	ldr	r3, [r3, #4]
    1210:	e1a03183 	lsl	r3, r3, #3
    1214:	e51b200c 	ldr	r2, [fp, #-12]
    1218:	e0822003 	add	r2, r2, r3
    121c:	e51b3008 	ldr	r3, [fp, #-8]
    1220:	e5933000 	ldr	r3, [r3]
    1224:	e1520003 	cmp	r2, r3
    1228:	1a00000d 	bne	1264 <free+0xf0>
    122c:	e51b300c 	ldr	r3, [fp, #-12]
    1230:	e5932004 	ldr	r2, [r3, #4]
    1234:	e51b3008 	ldr	r3, [fp, #-8]
    1238:	e5933000 	ldr	r3, [r3]
    123c:	e5933004 	ldr	r3, [r3, #4]
    1240:	e0822003 	add	r2, r2, r3
    1244:	e51b300c 	ldr	r3, [fp, #-12]
    1248:	e5832004 	str	r2, [r3, #4]
    124c:	e51b3008 	ldr	r3, [fp, #-8]
    1250:	e5933000 	ldr	r3, [r3]
    1254:	e5932000 	ldr	r2, [r3]
    1258:	e51b300c 	ldr	r3, [fp, #-12]
    125c:	e5832000 	str	r2, [r3]
    1260:	ea000003 	b	1274 <free+0x100>
    1264:	e51b3008 	ldr	r3, [fp, #-8]
    1268:	e5932000 	ldr	r2, [r3]
    126c:	e51b300c 	ldr	r3, [fp, #-12]
    1270:	e5832000 	str	r2, [r3]
    1274:	e51b3008 	ldr	r3, [fp, #-8]
    1278:	e5933004 	ldr	r3, [r3, #4]
    127c:	e1a03183 	lsl	r3, r3, #3
    1280:	e51b2008 	ldr	r2, [fp, #-8]
    1284:	e0823003 	add	r3, r2, r3
    1288:	e51b200c 	ldr	r2, [fp, #-12]
    128c:	e1520003 	cmp	r2, r3
    1290:	1a00000b 	bne	12c4 <free+0x150>
    1294:	e51b3008 	ldr	r3, [fp, #-8]
    1298:	e5932004 	ldr	r2, [r3, #4]
    129c:	e51b300c 	ldr	r3, [fp, #-12]
    12a0:	e5933004 	ldr	r3, [r3, #4]
    12a4:	e0822003 	add	r2, r2, r3
    12a8:	e51b3008 	ldr	r3, [fp, #-8]
    12ac:	e5832004 	str	r2, [r3, #4]
    12b0:	e51b300c 	ldr	r3, [fp, #-12]
    12b4:	e5932000 	ldr	r2, [r3]
    12b8:	e51b3008 	ldr	r3, [fp, #-8]
    12bc:	e5832000 	str	r2, [r3]
    12c0:	ea000002 	b	12d0 <free+0x15c>
    12c4:	e51b3008 	ldr	r3, [fp, #-8]
    12c8:	e51b200c 	ldr	r2, [fp, #-12]
    12cc:	e5832000 	str	r2, [r3]
    12d0:	e59f2014 	ldr	r2, [pc, #20]	@ 12ec <free+0x178>
    12d4:	e51b3008 	ldr	r3, [fp, #-8]
    12d8:	e5823000 	str	r3, [r2]
    12dc:	e1a00000 	nop			@ (mov r0, r0)
    12e0:	e28bd000 	add	sp, fp, #0
    12e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    12e8:	e12fff1e 	bx	lr
    12ec:	00001848 	.word	0x00001848

000012f0 <morecore>:
    12f0:	e92d4800 	push	{fp, lr}
    12f4:	e28db004 	add	fp, sp, #4
    12f8:	e24dd010 	sub	sp, sp, #16
    12fc:	e50b0010 	str	r0, [fp, #-16]
    1300:	e51b3010 	ldr	r3, [fp, #-16]
    1304:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1308:	2a000001 	bcs	1314 <morecore+0x24>
    130c:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1310:	e50b3010 	str	r3, [fp, #-16]
    1314:	e51b3010 	ldr	r3, [fp, #-16]
    1318:	e1a03183 	lsl	r3, r3, #3
    131c:	e1a00003 	mov	r0, r3
    1320:	ebfffe07 	bl	b44 <sbrk>
    1324:	e50b0008 	str	r0, [fp, #-8]
    1328:	e51b3008 	ldr	r3, [fp, #-8]
    132c:	e3730001 	cmn	r3, #1
    1330:	1a000001 	bne	133c <morecore+0x4c>
    1334:	e3a03000 	mov	r3, #0
    1338:	ea00000a 	b	1368 <morecore+0x78>
    133c:	e51b3008 	ldr	r3, [fp, #-8]
    1340:	e50b300c 	str	r3, [fp, #-12]
    1344:	e51b300c 	ldr	r3, [fp, #-12]
    1348:	e51b2010 	ldr	r2, [fp, #-16]
    134c:	e5832004 	str	r2, [r3, #4]
    1350:	e51b300c 	ldr	r3, [fp, #-12]
    1354:	e2833008 	add	r3, r3, #8
    1358:	e1a00003 	mov	r0, r3
    135c:	ebffff84 	bl	1174 <free>
    1360:	e59f300c 	ldr	r3, [pc, #12]	@ 1374 <morecore+0x84>
    1364:	e5933000 	ldr	r3, [r3]
    1368:	e1a00003 	mov	r0, r3
    136c:	e24bd004 	sub	sp, fp, #4
    1370:	e8bd8800 	pop	{fp, pc}
    1374:	00001848 	.word	0x00001848

00001378 <malloc>:
    1378:	e92d4800 	push	{fp, lr}
    137c:	e28db004 	add	fp, sp, #4
    1380:	e24dd018 	sub	sp, sp, #24
    1384:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1388:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    138c:	e2833007 	add	r3, r3, #7
    1390:	e1a031a3 	lsr	r3, r3, #3
    1394:	e2833001 	add	r3, r3, #1
    1398:	e50b3010 	str	r3, [fp, #-16]
    139c:	e59f3134 	ldr	r3, [pc, #308]	@ 14d8 <malloc+0x160>
    13a0:	e5933000 	ldr	r3, [r3]
    13a4:	e50b300c 	str	r3, [fp, #-12]
    13a8:	e51b300c 	ldr	r3, [fp, #-12]
    13ac:	e3530000 	cmp	r3, #0
    13b0:	1a00000b 	bne	13e4 <malloc+0x6c>
    13b4:	e59f3120 	ldr	r3, [pc, #288]	@ 14dc <malloc+0x164>
    13b8:	e50b300c 	str	r3, [fp, #-12]
    13bc:	e59f2114 	ldr	r2, [pc, #276]	@ 14d8 <malloc+0x160>
    13c0:	e51b300c 	ldr	r3, [fp, #-12]
    13c4:	e5823000 	str	r3, [r2]
    13c8:	e59f3108 	ldr	r3, [pc, #264]	@ 14d8 <malloc+0x160>
    13cc:	e5933000 	ldr	r3, [r3]
    13d0:	e59f2104 	ldr	r2, [pc, #260]	@ 14dc <malloc+0x164>
    13d4:	e5823000 	str	r3, [r2]
    13d8:	e59f30fc 	ldr	r3, [pc, #252]	@ 14dc <malloc+0x164>
    13dc:	e3a02000 	mov	r2, #0
    13e0:	e5832004 	str	r2, [r3, #4]
    13e4:	e51b300c 	ldr	r3, [fp, #-12]
    13e8:	e5933000 	ldr	r3, [r3]
    13ec:	e50b3008 	str	r3, [fp, #-8]
    13f0:	e51b3008 	ldr	r3, [fp, #-8]
    13f4:	e5933004 	ldr	r3, [r3, #4]
    13f8:	e51b2010 	ldr	r2, [fp, #-16]
    13fc:	e1520003 	cmp	r2, r3
    1400:	8a00001e 	bhi	1480 <malloc+0x108>
    1404:	e51b3008 	ldr	r3, [fp, #-8]
    1408:	e5933004 	ldr	r3, [r3, #4]
    140c:	e51b2010 	ldr	r2, [fp, #-16]
    1410:	e1520003 	cmp	r2, r3
    1414:	1a000004 	bne	142c <malloc+0xb4>
    1418:	e51b3008 	ldr	r3, [fp, #-8]
    141c:	e5932000 	ldr	r2, [r3]
    1420:	e51b300c 	ldr	r3, [fp, #-12]
    1424:	e5832000 	str	r2, [r3]
    1428:	ea00000e 	b	1468 <malloc+0xf0>
    142c:	e51b3008 	ldr	r3, [fp, #-8]
    1430:	e5932004 	ldr	r2, [r3, #4]
    1434:	e51b3010 	ldr	r3, [fp, #-16]
    1438:	e0422003 	sub	r2, r2, r3
    143c:	e51b3008 	ldr	r3, [fp, #-8]
    1440:	e5832004 	str	r2, [r3, #4]
    1444:	e51b3008 	ldr	r3, [fp, #-8]
    1448:	e5933004 	ldr	r3, [r3, #4]
    144c:	e1a03183 	lsl	r3, r3, #3
    1450:	e51b2008 	ldr	r2, [fp, #-8]
    1454:	e0823003 	add	r3, r2, r3
    1458:	e50b3008 	str	r3, [fp, #-8]
    145c:	e51b3008 	ldr	r3, [fp, #-8]
    1460:	e51b2010 	ldr	r2, [fp, #-16]
    1464:	e5832004 	str	r2, [r3, #4]
    1468:	e59f2068 	ldr	r2, [pc, #104]	@ 14d8 <malloc+0x160>
    146c:	e51b300c 	ldr	r3, [fp, #-12]
    1470:	e5823000 	str	r3, [r2]
    1474:	e51b3008 	ldr	r3, [fp, #-8]
    1478:	e2833008 	add	r3, r3, #8
    147c:	ea000012 	b	14cc <malloc+0x154>
    1480:	e59f3050 	ldr	r3, [pc, #80]	@ 14d8 <malloc+0x160>
    1484:	e5933000 	ldr	r3, [r3]
    1488:	e51b2008 	ldr	r2, [fp, #-8]
    148c:	e1520003 	cmp	r2, r3
    1490:	1a000007 	bne	14b4 <malloc+0x13c>
    1494:	e51b0010 	ldr	r0, [fp, #-16]
    1498:	ebffff94 	bl	12f0 <morecore>
    149c:	e50b0008 	str	r0, [fp, #-8]
    14a0:	e51b3008 	ldr	r3, [fp, #-8]
    14a4:	e3530000 	cmp	r3, #0
    14a8:	1a000001 	bne	14b4 <malloc+0x13c>
    14ac:	e3a03000 	mov	r3, #0
    14b0:	ea000005 	b	14cc <malloc+0x154>
    14b4:	e51b3008 	ldr	r3, [fp, #-8]
    14b8:	e50b300c 	str	r3, [fp, #-12]
    14bc:	e51b3008 	ldr	r3, [fp, #-8]
    14c0:	e5933000 	ldr	r3, [r3]
    14c4:	e50b3008 	str	r3, [fp, #-8]
    14c8:	eaffffc8 	b	13f0 <malloc+0x78>
    14cc:	e1a00003 	mov	r0, r3
    14d0:	e24bd004 	sub	sp, fp, #4
    14d4:	e8bd8800 	pop	{fp, pc}
    14d8:	00001848 	.word	0x00001848
    14dc:	00001840 	.word	0x00001840

000014e0 <__udivsi3>:
    14e0:	e2512001 	subs	r2, r1, #1
    14e4:	012fff1e 	bxeq	lr
    14e8:	3a000036 	bcc	15c8 <__udivsi3+0xe8>
    14ec:	e1500001 	cmp	r0, r1
    14f0:	9a000022 	bls	1580 <__udivsi3+0xa0>
    14f4:	e1110002 	tst	r1, r2
    14f8:	0a000023 	beq	158c <__udivsi3+0xac>
    14fc:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1500:	01a01181 	lsleq	r1, r1, #3
    1504:	03a03008 	moveq	r3, #8
    1508:	13a03001 	movne	r3, #1
    150c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1510:	31510000 	cmpcc	r1, r0
    1514:	31a01201 	lslcc	r1, r1, #4
    1518:	31a03203 	lslcc	r3, r3, #4
    151c:	3afffffa 	bcc	150c <__udivsi3+0x2c>
    1520:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1524:	31510000 	cmpcc	r1, r0
    1528:	31a01081 	lslcc	r1, r1, #1
    152c:	31a03083 	lslcc	r3, r3, #1
    1530:	3afffffa 	bcc	1520 <__udivsi3+0x40>
    1534:	e3a02000 	mov	r2, #0
    1538:	e1500001 	cmp	r0, r1
    153c:	20400001 	subcs	r0, r0, r1
    1540:	21822003 	orrcs	r2, r2, r3
    1544:	e15000a1 	cmp	r0, r1, lsr #1
    1548:	204000a1 	subcs	r0, r0, r1, lsr #1
    154c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1550:	e1500121 	cmp	r0, r1, lsr #2
    1554:	20400121 	subcs	r0, r0, r1, lsr #2
    1558:	21822123 	orrcs	r2, r2, r3, lsr #2
    155c:	e15001a1 	cmp	r0, r1, lsr #3
    1560:	204001a1 	subcs	r0, r0, r1, lsr #3
    1564:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1568:	e3500000 	cmp	r0, #0
    156c:	11b03223 	lsrsne	r3, r3, #4
    1570:	11a01221 	lsrne	r1, r1, #4
    1574:	1affffef 	bne	1538 <__udivsi3+0x58>
    1578:	e1a00002 	mov	r0, r2
    157c:	e12fff1e 	bx	lr
    1580:	03a00001 	moveq	r0, #1
    1584:	13a00000 	movne	r0, #0
    1588:	e12fff1e 	bx	lr
    158c:	e3510801 	cmp	r1, #65536	@ 0x10000
    1590:	21a01821 	lsrcs	r1, r1, #16
    1594:	23a02010 	movcs	r2, #16
    1598:	33a02000 	movcc	r2, #0
    159c:	e3510c01 	cmp	r1, #256	@ 0x100
    15a0:	21a01421 	lsrcs	r1, r1, #8
    15a4:	22822008 	addcs	r2, r2, #8
    15a8:	e3510010 	cmp	r1, #16
    15ac:	21a01221 	lsrcs	r1, r1, #4
    15b0:	22822004 	addcs	r2, r2, #4
    15b4:	e3510004 	cmp	r1, #4
    15b8:	82822003 	addhi	r2, r2, #3
    15bc:	908220a1 	addls	r2, r2, r1, lsr #1
    15c0:	e1a00230 	lsr	r0, r0, r2
    15c4:	e12fff1e 	bx	lr
    15c8:	e3500000 	cmp	r0, #0
    15cc:	13e00000 	mvnne	r0, #0
    15d0:	ea000007 	b	15f4 <__aeabi_idiv0>

000015d4 <__aeabi_uidivmod>:
    15d4:	e3510000 	cmp	r1, #0
    15d8:	0afffffa 	beq	15c8 <__udivsi3+0xe8>
    15dc:	e92d4003 	push	{r0, r1, lr}
    15e0:	ebffffbe 	bl	14e0 <__udivsi3>
    15e4:	e8bd4006 	pop	{r1, r2, lr}
    15e8:	e0030092 	mul	r3, r2, r0
    15ec:	e0411003 	sub	r1, r1, r3
    15f0:	e12fff1e 	bx	lr

000015f4 <__aeabi_idiv0>:
    15f4:	e12fff1e 	bx	lr
