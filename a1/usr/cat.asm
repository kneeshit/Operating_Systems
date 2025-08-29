
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
      20:	eb0001b1 	bl	6ec <write>
      24:	e3a02c02 	mov	r2, #512	@ 0x200
      28:	e59f103c 	ldr	r1, [pc, #60]	@ 6c <cat+0x6c>
      2c:	e51b0010 	ldr	r0, [fp, #-16]
      30:	eb0001a4 	bl	6c8 <read>
      34:	e50b0008 	str	r0, [fp, #-8]
      38:	e51b3008 	ldr	r3, [fp, #-8]
      3c:	e3530000 	cmp	r3, #0
      40:	cafffff3 	bgt	14 <cat+0x14>
      44:	e51b3008 	ldr	r3, [fp, #-8]
      48:	e3530000 	cmp	r3, #0
      4c:	aa000003 	bge	60 <cat+0x60>
      50:	e59f1018 	ldr	r1, [pc, #24]	@ 70 <cat+0x70>
      54:	e3a00001 	mov	r0, #1
      58:	eb000298 	bl	ac0 <printf>
      5c:	eb00017e 	bl	65c <exit>
      60:	e1a00000 	nop			@ (mov r0, r0)
      64:	e24bd004 	sub	sp, fp, #4
      68:	e8bd8800 	pop	{fp, pc}
      6c:	000011c4 	.word	0x000011c4
      70:	0000117c 	.word	0x0000117c

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
      9c:	eb00016e 	bl	65c <exit>
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
      c8:	eb0001ab 	bl	77c <open>
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
      fc:	eb00026f 	bl	ac0 <printf>
     100:	eb000155 	bl	65c <exit>
     104:	e51b000c 	ldr	r0, [fp, #-12]
     108:	ebffffbc 	bl	0 <cat>
     10c:	e51b000c 	ldr	r0, [fp, #-12]
     110:	eb00017e 	bl	710 <close>
     114:	e51b3008 	ldr	r3, [fp, #-8]
     118:	e2833001 	add	r3, r3, #1
     11c:	e50b3008 	str	r3, [fp, #-8]
     120:	e51b2008 	ldr	r2, [fp, #-8]
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e1520003 	cmp	r2, r3
     12c:	baffffde 	blt	ac <main+0x38>
     130:	eb000149 	bl	65c <exit>
     134:	00001190 	.word	0x00001190

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
     42c:	eb0000a5 	bl	6c8 <read>
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
     4d4:	eb0000a8 	bl	77c <open>
     4d8:	e50b0008 	str	r0, [fp, #-8]
     4dc:	e51b3008 	ldr	r3, [fp, #-8]
     4e0:	e3530000 	cmp	r3, #0
     4e4:	aa000001 	bge	4f0 <stat+0x38>
     4e8:	e3e03000 	mvn	r3, #0
     4ec:	ea000006 	b	50c <stat+0x54>
     4f0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     4f4:	e51b0008 	ldr	r0, [fp, #-8]
     4f8:	eb0000ba 	bl	7e8 <fstat>
     4fc:	e50b000c 	str	r0, [fp, #-12]
     500:	e51b0008 	ldr	r0, [fp, #-8]
     504:	eb000081 	bl	710 <close>
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
     590:	e353002f 	cmp	r3, #47	@ 0x2f
     594:	9a000003 	bls	5a8 <atoi+0x90>
     598:	e51b3010 	ldr	r3, [fp, #-16]
     59c:	e5d33000 	ldrb	r3, [r3]
     5a0:	e3530039 	cmp	r3, #57	@ 0x39
     5a4:	9a000001 	bls	5b0 <atoi+0x98>
     5a8:	e3e03000 	mvn	r3, #0
     5ac:	ea000000 	b	5b4 <atoi+0x9c>
     5b0:	e51b3008 	ldr	r3, [fp, #-8]
     5b4:	e1a00003 	mov	r0, r3
     5b8:	e28bd000 	add	sp, fp, #0
     5bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5c0:	e12fff1e 	bx	lr

000005c4 <memmove>:
     5c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5c8:	e28db000 	add	fp, sp, #0
     5cc:	e24dd01c 	sub	sp, sp, #28
     5d0:	e50b0010 	str	r0, [fp, #-16]
     5d4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5d8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5dc:	e51b3010 	ldr	r3, [fp, #-16]
     5e0:	e50b3008 	str	r3, [fp, #-8]
     5e4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     5e8:	e50b300c 	str	r3, [fp, #-12]
     5ec:	ea000007 	b	610 <memmove+0x4c>
     5f0:	e51b200c 	ldr	r2, [fp, #-12]
     5f4:	e2823001 	add	r3, r2, #1
     5f8:	e50b300c 	str	r3, [fp, #-12]
     5fc:	e51b3008 	ldr	r3, [fp, #-8]
     600:	e2831001 	add	r1, r3, #1
     604:	e50b1008 	str	r1, [fp, #-8]
     608:	e5d22000 	ldrb	r2, [r2]
     60c:	e5c32000 	strb	r2, [r3]
     610:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     614:	e2432001 	sub	r2, r3, #1
     618:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     61c:	e3530000 	cmp	r3, #0
     620:	cafffff2 	bgt	5f0 <memmove+0x2c>
     624:	e51b3010 	ldr	r3, [fp, #-16]
     628:	e1a00003 	mov	r0, r3
     62c:	e28bd000 	add	sp, fp, #0
     630:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     634:	e12fff1e 	bx	lr

00000638 <fork>:
     638:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     63c:	e1a04003 	mov	r4, r3
     640:	e1a03002 	mov	r3, r2
     644:	e1a02001 	mov	r2, r1
     648:	e1a01000 	mov	r1, r0
     64c:	e3a00001 	mov	r0, #1
     650:	ef000000 	svc	0x00000000
     654:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     658:	e12fff1e 	bx	lr

0000065c <exit>:
     65c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     660:	e1a04003 	mov	r4, r3
     664:	e1a03002 	mov	r3, r2
     668:	e1a02001 	mov	r2, r1
     66c:	e1a01000 	mov	r1, r0
     670:	e3a00002 	mov	r0, #2
     674:	ef000000 	svc	0x00000000
     678:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     67c:	e12fff1e 	bx	lr

00000680 <wait>:
     680:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     684:	e1a04003 	mov	r4, r3
     688:	e1a03002 	mov	r3, r2
     68c:	e1a02001 	mov	r2, r1
     690:	e1a01000 	mov	r1, r0
     694:	e3a00003 	mov	r0, #3
     698:	ef000000 	svc	0x00000000
     69c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6a0:	e12fff1e 	bx	lr

000006a4 <pipe>:
     6a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6a8:	e1a04003 	mov	r4, r3
     6ac:	e1a03002 	mov	r3, r2
     6b0:	e1a02001 	mov	r2, r1
     6b4:	e1a01000 	mov	r1, r0
     6b8:	e3a00004 	mov	r0, #4
     6bc:	ef000000 	svc	0x00000000
     6c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6c4:	e12fff1e 	bx	lr

000006c8 <read>:
     6c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6cc:	e1a04003 	mov	r4, r3
     6d0:	e1a03002 	mov	r3, r2
     6d4:	e1a02001 	mov	r2, r1
     6d8:	e1a01000 	mov	r1, r0
     6dc:	e3a00005 	mov	r0, #5
     6e0:	ef000000 	svc	0x00000000
     6e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6e8:	e12fff1e 	bx	lr

000006ec <write>:
     6ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6f0:	e1a04003 	mov	r4, r3
     6f4:	e1a03002 	mov	r3, r2
     6f8:	e1a02001 	mov	r2, r1
     6fc:	e1a01000 	mov	r1, r0
     700:	e3a00010 	mov	r0, #16
     704:	ef000000 	svc	0x00000000
     708:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     70c:	e12fff1e 	bx	lr

00000710 <close>:
     710:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     714:	e1a04003 	mov	r4, r3
     718:	e1a03002 	mov	r3, r2
     71c:	e1a02001 	mov	r2, r1
     720:	e1a01000 	mov	r1, r0
     724:	e3a00015 	mov	r0, #21
     728:	ef000000 	svc	0x00000000
     72c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     730:	e12fff1e 	bx	lr

00000734 <kill>:
     734:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     738:	e1a04003 	mov	r4, r3
     73c:	e1a03002 	mov	r3, r2
     740:	e1a02001 	mov	r2, r1
     744:	e1a01000 	mov	r1, r0
     748:	e3a00006 	mov	r0, #6
     74c:	ef000000 	svc	0x00000000
     750:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     754:	e12fff1e 	bx	lr

00000758 <exec>:
     758:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     75c:	e1a04003 	mov	r4, r3
     760:	e1a03002 	mov	r3, r2
     764:	e1a02001 	mov	r2, r1
     768:	e1a01000 	mov	r1, r0
     76c:	e3a00007 	mov	r0, #7
     770:	ef000000 	svc	0x00000000
     774:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     778:	e12fff1e 	bx	lr

0000077c <open>:
     77c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     780:	e1a04003 	mov	r4, r3
     784:	e1a03002 	mov	r3, r2
     788:	e1a02001 	mov	r2, r1
     78c:	e1a01000 	mov	r1, r0
     790:	e3a0000f 	mov	r0, #15
     794:	ef000000 	svc	0x00000000
     798:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     79c:	e12fff1e 	bx	lr

000007a0 <mknod>:
     7a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7a4:	e1a04003 	mov	r4, r3
     7a8:	e1a03002 	mov	r3, r2
     7ac:	e1a02001 	mov	r2, r1
     7b0:	e1a01000 	mov	r1, r0
     7b4:	e3a00011 	mov	r0, #17
     7b8:	ef000000 	svc	0x00000000
     7bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c0:	e12fff1e 	bx	lr

000007c4 <unlink>:
     7c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7c8:	e1a04003 	mov	r4, r3
     7cc:	e1a03002 	mov	r3, r2
     7d0:	e1a02001 	mov	r2, r1
     7d4:	e1a01000 	mov	r1, r0
     7d8:	e3a00012 	mov	r0, #18
     7dc:	ef000000 	svc	0x00000000
     7e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7e4:	e12fff1e 	bx	lr

000007e8 <fstat>:
     7e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7ec:	e1a04003 	mov	r4, r3
     7f0:	e1a03002 	mov	r3, r2
     7f4:	e1a02001 	mov	r2, r1
     7f8:	e1a01000 	mov	r1, r0
     7fc:	e3a00008 	mov	r0, #8
     800:	ef000000 	svc	0x00000000
     804:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     808:	e12fff1e 	bx	lr

0000080c <link>:
     80c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     810:	e1a04003 	mov	r4, r3
     814:	e1a03002 	mov	r3, r2
     818:	e1a02001 	mov	r2, r1
     81c:	e1a01000 	mov	r1, r0
     820:	e3a00013 	mov	r0, #19
     824:	ef000000 	svc	0x00000000
     828:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     82c:	e12fff1e 	bx	lr

00000830 <mkdir>:
     830:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     834:	e1a04003 	mov	r4, r3
     838:	e1a03002 	mov	r3, r2
     83c:	e1a02001 	mov	r2, r1
     840:	e1a01000 	mov	r1, r0
     844:	e3a00014 	mov	r0, #20
     848:	ef000000 	svc	0x00000000
     84c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     850:	e12fff1e 	bx	lr

00000854 <chdir>:
     854:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     858:	e1a04003 	mov	r4, r3
     85c:	e1a03002 	mov	r3, r2
     860:	e1a02001 	mov	r2, r1
     864:	e1a01000 	mov	r1, r0
     868:	e3a00009 	mov	r0, #9
     86c:	ef000000 	svc	0x00000000
     870:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     874:	e12fff1e 	bx	lr

00000878 <dup>:
     878:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     87c:	e1a04003 	mov	r4, r3
     880:	e1a03002 	mov	r3, r2
     884:	e1a02001 	mov	r2, r1
     888:	e1a01000 	mov	r1, r0
     88c:	e3a0000a 	mov	r0, #10
     890:	ef000000 	svc	0x00000000
     894:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     898:	e12fff1e 	bx	lr

0000089c <getpid>:
     89c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a0:	e1a04003 	mov	r4, r3
     8a4:	e1a03002 	mov	r3, r2
     8a8:	e1a02001 	mov	r2, r1
     8ac:	e1a01000 	mov	r1, r0
     8b0:	e3a0000b 	mov	r0, #11
     8b4:	ef000000 	svc	0x00000000
     8b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8bc:	e12fff1e 	bx	lr

000008c0 <sbrk>:
     8c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8c4:	e1a04003 	mov	r4, r3
     8c8:	e1a03002 	mov	r3, r2
     8cc:	e1a02001 	mov	r2, r1
     8d0:	e1a01000 	mov	r1, r0
     8d4:	e3a0000c 	mov	r0, #12
     8d8:	ef000000 	svc	0x00000000
     8dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e0:	e12fff1e 	bx	lr

000008e4 <sleep>:
     8e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8e8:	e1a04003 	mov	r4, r3
     8ec:	e1a03002 	mov	r3, r2
     8f0:	e1a02001 	mov	r2, r1
     8f4:	e1a01000 	mov	r1, r0
     8f8:	e3a0000d 	mov	r0, #13
     8fc:	ef000000 	svc	0x00000000
     900:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     904:	e12fff1e 	bx	lr

00000908 <uptime>:
     908:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     90c:	e1a04003 	mov	r4, r3
     910:	e1a03002 	mov	r3, r2
     914:	e1a02001 	mov	r2, r1
     918:	e1a01000 	mov	r1, r0
     91c:	e3a0000e 	mov	r0, #14
     920:	ef000000 	svc	0x00000000
     924:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     928:	e12fff1e 	bx	lr

0000092c <getprocs>:
     92c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     930:	e1a04003 	mov	r4, r3
     934:	e1a03002 	mov	r3, r2
     938:	e1a02001 	mov	r2, r1
     93c:	e1a01000 	mov	r1, r0
     940:	e3a00016 	mov	r0, #22
     944:	ef000000 	svc	0x00000000
     948:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     94c:	e12fff1e 	bx	lr

00000950 <putc>:
     950:	e92d4800 	push	{fp, lr}
     954:	e28db004 	add	fp, sp, #4
     958:	e24dd008 	sub	sp, sp, #8
     95c:	e50b0008 	str	r0, [fp, #-8]
     960:	e1a03001 	mov	r3, r1
     964:	e54b3009 	strb	r3, [fp, #-9]
     968:	e24b3009 	sub	r3, fp, #9
     96c:	e3a02001 	mov	r2, #1
     970:	e1a01003 	mov	r1, r3
     974:	e51b0008 	ldr	r0, [fp, #-8]
     978:	ebffff5b 	bl	6ec <write>
     97c:	e1a00000 	nop			@ (mov r0, r0)
     980:	e24bd004 	sub	sp, fp, #4
     984:	e8bd8800 	pop	{fp, pc}

00000988 <printint>:
     988:	e92d4800 	push	{fp, lr}
     98c:	e28db004 	add	fp, sp, #4
     990:	e24dd030 	sub	sp, sp, #48	@ 0x30
     994:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     998:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     99c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     9a0:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     9a4:	e3a03000 	mov	r3, #0
     9a8:	e50b300c 	str	r3, [fp, #-12]
     9ac:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     9b0:	e3530000 	cmp	r3, #0
     9b4:	0a000008 	beq	9dc <printint+0x54>
     9b8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9bc:	e3530000 	cmp	r3, #0
     9c0:	aa000005 	bge	9dc <printint+0x54>
     9c4:	e3a03001 	mov	r3, #1
     9c8:	e50b300c 	str	r3, [fp, #-12]
     9cc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9d0:	e2633000 	rsb	r3, r3, #0
     9d4:	e50b3010 	str	r3, [fp, #-16]
     9d8:	ea000001 	b	9e4 <printint+0x5c>
     9dc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9e0:	e50b3010 	str	r3, [fp, #-16]
     9e4:	e3a03000 	mov	r3, #0
     9e8:	e50b3008 	str	r3, [fp, #-8]
     9ec:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     9f0:	e51b3010 	ldr	r3, [fp, #-16]
     9f4:	e1a01002 	mov	r1, r2
     9f8:	e1a00003 	mov	r0, r3
     9fc:	eb0001d5 	bl	1158 <__aeabi_uidivmod>
     a00:	e1a03001 	mov	r3, r1
     a04:	e1a01003 	mov	r1, r3
     a08:	e51b3008 	ldr	r3, [fp, #-8]
     a0c:	e2832001 	add	r2, r3, #1
     a10:	e50b2008 	str	r2, [fp, #-8]
     a14:	e59f20a0 	ldr	r2, [pc, #160]	@ abc <printint+0x134>
     a18:	e7d22001 	ldrb	r2, [r2, r1]
     a1c:	e2433004 	sub	r3, r3, #4
     a20:	e083300b 	add	r3, r3, fp
     a24:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a28:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     a2c:	e1a01003 	mov	r1, r3
     a30:	e51b0010 	ldr	r0, [fp, #-16]
     a34:	eb00018a 	bl	1064 <__udivsi3>
     a38:	e1a03000 	mov	r3, r0
     a3c:	e50b3010 	str	r3, [fp, #-16]
     a40:	e51b3010 	ldr	r3, [fp, #-16]
     a44:	e3530000 	cmp	r3, #0
     a48:	1affffe7 	bne	9ec <printint+0x64>
     a4c:	e51b300c 	ldr	r3, [fp, #-12]
     a50:	e3530000 	cmp	r3, #0
     a54:	0a00000e 	beq	a94 <printint+0x10c>
     a58:	e51b3008 	ldr	r3, [fp, #-8]
     a5c:	e2832001 	add	r2, r3, #1
     a60:	e50b2008 	str	r2, [fp, #-8]
     a64:	e2433004 	sub	r3, r3, #4
     a68:	e083300b 	add	r3, r3, fp
     a6c:	e3a0202d 	mov	r2, #45	@ 0x2d
     a70:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a74:	ea000006 	b	a94 <printint+0x10c>
     a78:	e24b2020 	sub	r2, fp, #32
     a7c:	e51b3008 	ldr	r3, [fp, #-8]
     a80:	e0823003 	add	r3, r2, r3
     a84:	e5d33000 	ldrb	r3, [r3]
     a88:	e1a01003 	mov	r1, r3
     a8c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     a90:	ebffffae 	bl	950 <putc>
     a94:	e51b3008 	ldr	r3, [fp, #-8]
     a98:	e2433001 	sub	r3, r3, #1
     a9c:	e50b3008 	str	r3, [fp, #-8]
     aa0:	e51b3008 	ldr	r3, [fp, #-8]
     aa4:	e3530000 	cmp	r3, #0
     aa8:	aafffff2 	bge	a78 <printint+0xf0>
     aac:	e1a00000 	nop			@ (mov r0, r0)
     ab0:	e1a00000 	nop			@ (mov r0, r0)
     ab4:	e24bd004 	sub	sp, fp, #4
     ab8:	e8bd8800 	pop	{fp, pc}
     abc:	000011b0 	.word	0x000011b0

00000ac0 <printf>:
     ac0:	e92d000e 	push	{r1, r2, r3}
     ac4:	e92d4800 	push	{fp, lr}
     ac8:	e28db004 	add	fp, sp, #4
     acc:	e24dd024 	sub	sp, sp, #36	@ 0x24
     ad0:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     ad4:	e3a03000 	mov	r3, #0
     ad8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     adc:	e28b3008 	add	r3, fp, #8
     ae0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ae4:	e3a03000 	mov	r3, #0
     ae8:	e50b3010 	str	r3, [fp, #-16]
     aec:	ea000074 	b	cc4 <printf+0x204>
     af0:	e59b2004 	ldr	r2, [fp, #4]
     af4:	e51b3010 	ldr	r3, [fp, #-16]
     af8:	e0823003 	add	r3, r2, r3
     afc:	e5d33000 	ldrb	r3, [r3]
     b00:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     b04:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b08:	e3530000 	cmp	r3, #0
     b0c:	1a00000b 	bne	b40 <printf+0x80>
     b10:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b14:	e3530025 	cmp	r3, #37	@ 0x25
     b18:	1a000002 	bne	b28 <printf+0x68>
     b1c:	e3a03025 	mov	r3, #37	@ 0x25
     b20:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b24:	ea000063 	b	cb8 <printf+0x1f8>
     b28:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b2c:	e6ef3073 	uxtb	r3, r3
     b30:	e1a01003 	mov	r1, r3
     b34:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b38:	ebffff84 	bl	950 <putc>
     b3c:	ea00005d 	b	cb8 <printf+0x1f8>
     b40:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b44:	e3530025 	cmp	r3, #37	@ 0x25
     b48:	1a00005a 	bne	cb8 <printf+0x1f8>
     b4c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b50:	e3530064 	cmp	r3, #100	@ 0x64
     b54:	1a00000a 	bne	b84 <printf+0xc4>
     b58:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b5c:	e5933000 	ldr	r3, [r3]
     b60:	e1a01003 	mov	r1, r3
     b64:	e3a03001 	mov	r3, #1
     b68:	e3a0200a 	mov	r2, #10
     b6c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b70:	ebffff84 	bl	988 <printint>
     b74:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b78:	e2833004 	add	r3, r3, #4
     b7c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b80:	ea00004a 	b	cb0 <printf+0x1f0>
     b84:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b88:	e3530078 	cmp	r3, #120	@ 0x78
     b8c:	0a000002 	beq	b9c <printf+0xdc>
     b90:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b94:	e3530070 	cmp	r3, #112	@ 0x70
     b98:	1a00000a 	bne	bc8 <printf+0x108>
     b9c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ba0:	e5933000 	ldr	r3, [r3]
     ba4:	e1a01003 	mov	r1, r3
     ba8:	e3a03000 	mov	r3, #0
     bac:	e3a02010 	mov	r2, #16
     bb0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bb4:	ebffff73 	bl	988 <printint>
     bb8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bbc:	e2833004 	add	r3, r3, #4
     bc0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bc4:	ea000039 	b	cb0 <printf+0x1f0>
     bc8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bcc:	e3530073 	cmp	r3, #115	@ 0x73
     bd0:	1a000018 	bne	c38 <printf+0x178>
     bd4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bd8:	e5933000 	ldr	r3, [r3]
     bdc:	e50b300c 	str	r3, [fp, #-12]
     be0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     be4:	e2833004 	add	r3, r3, #4
     be8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bec:	e51b300c 	ldr	r3, [fp, #-12]
     bf0:	e3530000 	cmp	r3, #0
     bf4:	1a00000a 	bne	c24 <printf+0x164>
     bf8:	e59f30f4 	ldr	r3, [pc, #244]	@ cf4 <printf+0x234>
     bfc:	e50b300c 	str	r3, [fp, #-12]
     c00:	ea000007 	b	c24 <printf+0x164>
     c04:	e51b300c 	ldr	r3, [fp, #-12]
     c08:	e5d33000 	ldrb	r3, [r3]
     c0c:	e1a01003 	mov	r1, r3
     c10:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c14:	ebffff4d 	bl	950 <putc>
     c18:	e51b300c 	ldr	r3, [fp, #-12]
     c1c:	e2833001 	add	r3, r3, #1
     c20:	e50b300c 	str	r3, [fp, #-12]
     c24:	e51b300c 	ldr	r3, [fp, #-12]
     c28:	e5d33000 	ldrb	r3, [r3]
     c2c:	e3530000 	cmp	r3, #0
     c30:	1afffff3 	bne	c04 <printf+0x144>
     c34:	ea00001d 	b	cb0 <printf+0x1f0>
     c38:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c3c:	e3530063 	cmp	r3, #99	@ 0x63
     c40:	1a000009 	bne	c6c <printf+0x1ac>
     c44:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c48:	e5933000 	ldr	r3, [r3]
     c4c:	e6ef3073 	uxtb	r3, r3
     c50:	e1a01003 	mov	r1, r3
     c54:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c58:	ebffff3c 	bl	950 <putc>
     c5c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c60:	e2833004 	add	r3, r3, #4
     c64:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c68:	ea000010 	b	cb0 <printf+0x1f0>
     c6c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c70:	e3530025 	cmp	r3, #37	@ 0x25
     c74:	1a000005 	bne	c90 <printf+0x1d0>
     c78:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c7c:	e6ef3073 	uxtb	r3, r3
     c80:	e1a01003 	mov	r1, r3
     c84:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c88:	ebffff30 	bl	950 <putc>
     c8c:	ea000007 	b	cb0 <printf+0x1f0>
     c90:	e3a01025 	mov	r1, #37	@ 0x25
     c94:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c98:	ebffff2c 	bl	950 <putc>
     c9c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ca0:	e6ef3073 	uxtb	r3, r3
     ca4:	e1a01003 	mov	r1, r3
     ca8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cac:	ebffff27 	bl	950 <putc>
     cb0:	e3a03000 	mov	r3, #0
     cb4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     cb8:	e51b3010 	ldr	r3, [fp, #-16]
     cbc:	e2833001 	add	r3, r3, #1
     cc0:	e50b3010 	str	r3, [fp, #-16]
     cc4:	e59b2004 	ldr	r2, [fp, #4]
     cc8:	e51b3010 	ldr	r3, [fp, #-16]
     ccc:	e0823003 	add	r3, r2, r3
     cd0:	e5d33000 	ldrb	r3, [r3]
     cd4:	e3530000 	cmp	r3, #0
     cd8:	1affff84 	bne	af0 <printf+0x30>
     cdc:	e1a00000 	nop			@ (mov r0, r0)
     ce0:	e1a00000 	nop			@ (mov r0, r0)
     ce4:	e24bd004 	sub	sp, fp, #4
     ce8:	e8bd4800 	pop	{fp, lr}
     cec:	e28dd00c 	add	sp, sp, #12
     cf0:	e12fff1e 	bx	lr
     cf4:	000011a8 	.word	0x000011a8

00000cf8 <free>:
     cf8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     cfc:	e28db000 	add	fp, sp, #0
     d00:	e24dd014 	sub	sp, sp, #20
     d04:	e50b0010 	str	r0, [fp, #-16]
     d08:	e51b3010 	ldr	r3, [fp, #-16]
     d0c:	e2433008 	sub	r3, r3, #8
     d10:	e50b300c 	str	r3, [fp, #-12]
     d14:	e59f3154 	ldr	r3, [pc, #340]	@ e70 <free+0x178>
     d18:	e5933000 	ldr	r3, [r3]
     d1c:	e50b3008 	str	r3, [fp, #-8]
     d20:	ea000010 	b	d68 <free+0x70>
     d24:	e51b3008 	ldr	r3, [fp, #-8]
     d28:	e5933000 	ldr	r3, [r3]
     d2c:	e51b2008 	ldr	r2, [fp, #-8]
     d30:	e1520003 	cmp	r2, r3
     d34:	3a000008 	bcc	d5c <free+0x64>
     d38:	e51b200c 	ldr	r2, [fp, #-12]
     d3c:	e51b3008 	ldr	r3, [fp, #-8]
     d40:	e1520003 	cmp	r2, r3
     d44:	8a000010 	bhi	d8c <free+0x94>
     d48:	e51b3008 	ldr	r3, [fp, #-8]
     d4c:	e5933000 	ldr	r3, [r3]
     d50:	e51b200c 	ldr	r2, [fp, #-12]
     d54:	e1520003 	cmp	r2, r3
     d58:	3a00000b 	bcc	d8c <free+0x94>
     d5c:	e51b3008 	ldr	r3, [fp, #-8]
     d60:	e5933000 	ldr	r3, [r3]
     d64:	e50b3008 	str	r3, [fp, #-8]
     d68:	e51b200c 	ldr	r2, [fp, #-12]
     d6c:	e51b3008 	ldr	r3, [fp, #-8]
     d70:	e1520003 	cmp	r2, r3
     d74:	9affffea 	bls	d24 <free+0x2c>
     d78:	e51b3008 	ldr	r3, [fp, #-8]
     d7c:	e5933000 	ldr	r3, [r3]
     d80:	e51b200c 	ldr	r2, [fp, #-12]
     d84:	e1520003 	cmp	r2, r3
     d88:	2affffe5 	bcs	d24 <free+0x2c>
     d8c:	e51b300c 	ldr	r3, [fp, #-12]
     d90:	e5933004 	ldr	r3, [r3, #4]
     d94:	e1a03183 	lsl	r3, r3, #3
     d98:	e51b200c 	ldr	r2, [fp, #-12]
     d9c:	e0822003 	add	r2, r2, r3
     da0:	e51b3008 	ldr	r3, [fp, #-8]
     da4:	e5933000 	ldr	r3, [r3]
     da8:	e1520003 	cmp	r2, r3
     dac:	1a00000d 	bne	de8 <free+0xf0>
     db0:	e51b300c 	ldr	r3, [fp, #-12]
     db4:	e5932004 	ldr	r2, [r3, #4]
     db8:	e51b3008 	ldr	r3, [fp, #-8]
     dbc:	e5933000 	ldr	r3, [r3]
     dc0:	e5933004 	ldr	r3, [r3, #4]
     dc4:	e0822003 	add	r2, r2, r3
     dc8:	e51b300c 	ldr	r3, [fp, #-12]
     dcc:	e5832004 	str	r2, [r3, #4]
     dd0:	e51b3008 	ldr	r3, [fp, #-8]
     dd4:	e5933000 	ldr	r3, [r3]
     dd8:	e5932000 	ldr	r2, [r3]
     ddc:	e51b300c 	ldr	r3, [fp, #-12]
     de0:	e5832000 	str	r2, [r3]
     de4:	ea000003 	b	df8 <free+0x100>
     de8:	e51b3008 	ldr	r3, [fp, #-8]
     dec:	e5932000 	ldr	r2, [r3]
     df0:	e51b300c 	ldr	r3, [fp, #-12]
     df4:	e5832000 	str	r2, [r3]
     df8:	e51b3008 	ldr	r3, [fp, #-8]
     dfc:	e5933004 	ldr	r3, [r3, #4]
     e00:	e1a03183 	lsl	r3, r3, #3
     e04:	e51b2008 	ldr	r2, [fp, #-8]
     e08:	e0823003 	add	r3, r2, r3
     e0c:	e51b200c 	ldr	r2, [fp, #-12]
     e10:	e1520003 	cmp	r2, r3
     e14:	1a00000b 	bne	e48 <free+0x150>
     e18:	e51b3008 	ldr	r3, [fp, #-8]
     e1c:	e5932004 	ldr	r2, [r3, #4]
     e20:	e51b300c 	ldr	r3, [fp, #-12]
     e24:	e5933004 	ldr	r3, [r3, #4]
     e28:	e0822003 	add	r2, r2, r3
     e2c:	e51b3008 	ldr	r3, [fp, #-8]
     e30:	e5832004 	str	r2, [r3, #4]
     e34:	e51b300c 	ldr	r3, [fp, #-12]
     e38:	e5932000 	ldr	r2, [r3]
     e3c:	e51b3008 	ldr	r3, [fp, #-8]
     e40:	e5832000 	str	r2, [r3]
     e44:	ea000002 	b	e54 <free+0x15c>
     e48:	e51b3008 	ldr	r3, [fp, #-8]
     e4c:	e51b200c 	ldr	r2, [fp, #-12]
     e50:	e5832000 	str	r2, [r3]
     e54:	e59f2014 	ldr	r2, [pc, #20]	@ e70 <free+0x178>
     e58:	e51b3008 	ldr	r3, [fp, #-8]
     e5c:	e5823000 	str	r3, [r2]
     e60:	e1a00000 	nop			@ (mov r0, r0)
     e64:	e28bd000 	add	sp, fp, #0
     e68:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     e6c:	e12fff1e 	bx	lr
     e70:	000013cc 	.word	0x000013cc

00000e74 <morecore>:
     e74:	e92d4800 	push	{fp, lr}
     e78:	e28db004 	add	fp, sp, #4
     e7c:	e24dd010 	sub	sp, sp, #16
     e80:	e50b0010 	str	r0, [fp, #-16]
     e84:	e51b3010 	ldr	r3, [fp, #-16]
     e88:	e3530a01 	cmp	r3, #4096	@ 0x1000
     e8c:	2a000001 	bcs	e98 <morecore+0x24>
     e90:	e3a03a01 	mov	r3, #4096	@ 0x1000
     e94:	e50b3010 	str	r3, [fp, #-16]
     e98:	e51b3010 	ldr	r3, [fp, #-16]
     e9c:	e1a03183 	lsl	r3, r3, #3
     ea0:	e1a00003 	mov	r0, r3
     ea4:	ebfffe85 	bl	8c0 <sbrk>
     ea8:	e50b0008 	str	r0, [fp, #-8]
     eac:	e51b3008 	ldr	r3, [fp, #-8]
     eb0:	e3730001 	cmn	r3, #1
     eb4:	1a000001 	bne	ec0 <morecore+0x4c>
     eb8:	e3a03000 	mov	r3, #0
     ebc:	ea00000a 	b	eec <morecore+0x78>
     ec0:	e51b3008 	ldr	r3, [fp, #-8]
     ec4:	e50b300c 	str	r3, [fp, #-12]
     ec8:	e51b300c 	ldr	r3, [fp, #-12]
     ecc:	e51b2010 	ldr	r2, [fp, #-16]
     ed0:	e5832004 	str	r2, [r3, #4]
     ed4:	e51b300c 	ldr	r3, [fp, #-12]
     ed8:	e2833008 	add	r3, r3, #8
     edc:	e1a00003 	mov	r0, r3
     ee0:	ebffff84 	bl	cf8 <free>
     ee4:	e59f300c 	ldr	r3, [pc, #12]	@ ef8 <morecore+0x84>
     ee8:	e5933000 	ldr	r3, [r3]
     eec:	e1a00003 	mov	r0, r3
     ef0:	e24bd004 	sub	sp, fp, #4
     ef4:	e8bd8800 	pop	{fp, pc}
     ef8:	000013cc 	.word	0x000013cc

00000efc <malloc>:
     efc:	e92d4800 	push	{fp, lr}
     f00:	e28db004 	add	fp, sp, #4
     f04:	e24dd018 	sub	sp, sp, #24
     f08:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     f0c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f10:	e2833007 	add	r3, r3, #7
     f14:	e1a031a3 	lsr	r3, r3, #3
     f18:	e2833001 	add	r3, r3, #1
     f1c:	e50b3010 	str	r3, [fp, #-16]
     f20:	e59f3134 	ldr	r3, [pc, #308]	@ 105c <malloc+0x160>
     f24:	e5933000 	ldr	r3, [r3]
     f28:	e50b300c 	str	r3, [fp, #-12]
     f2c:	e51b300c 	ldr	r3, [fp, #-12]
     f30:	e3530000 	cmp	r3, #0
     f34:	1a00000b 	bne	f68 <malloc+0x6c>
     f38:	e59f3120 	ldr	r3, [pc, #288]	@ 1060 <malloc+0x164>
     f3c:	e50b300c 	str	r3, [fp, #-12]
     f40:	e59f2114 	ldr	r2, [pc, #276]	@ 105c <malloc+0x160>
     f44:	e51b300c 	ldr	r3, [fp, #-12]
     f48:	e5823000 	str	r3, [r2]
     f4c:	e59f3108 	ldr	r3, [pc, #264]	@ 105c <malloc+0x160>
     f50:	e5933000 	ldr	r3, [r3]
     f54:	e59f2104 	ldr	r2, [pc, #260]	@ 1060 <malloc+0x164>
     f58:	e5823000 	str	r3, [r2]
     f5c:	e59f30fc 	ldr	r3, [pc, #252]	@ 1060 <malloc+0x164>
     f60:	e3a02000 	mov	r2, #0
     f64:	e5832004 	str	r2, [r3, #4]
     f68:	e51b300c 	ldr	r3, [fp, #-12]
     f6c:	e5933000 	ldr	r3, [r3]
     f70:	e50b3008 	str	r3, [fp, #-8]
     f74:	e51b3008 	ldr	r3, [fp, #-8]
     f78:	e5933004 	ldr	r3, [r3, #4]
     f7c:	e51b2010 	ldr	r2, [fp, #-16]
     f80:	e1520003 	cmp	r2, r3
     f84:	8a00001e 	bhi	1004 <malloc+0x108>
     f88:	e51b3008 	ldr	r3, [fp, #-8]
     f8c:	e5933004 	ldr	r3, [r3, #4]
     f90:	e51b2010 	ldr	r2, [fp, #-16]
     f94:	e1520003 	cmp	r2, r3
     f98:	1a000004 	bne	fb0 <malloc+0xb4>
     f9c:	e51b3008 	ldr	r3, [fp, #-8]
     fa0:	e5932000 	ldr	r2, [r3]
     fa4:	e51b300c 	ldr	r3, [fp, #-12]
     fa8:	e5832000 	str	r2, [r3]
     fac:	ea00000e 	b	fec <malloc+0xf0>
     fb0:	e51b3008 	ldr	r3, [fp, #-8]
     fb4:	e5932004 	ldr	r2, [r3, #4]
     fb8:	e51b3010 	ldr	r3, [fp, #-16]
     fbc:	e0422003 	sub	r2, r2, r3
     fc0:	e51b3008 	ldr	r3, [fp, #-8]
     fc4:	e5832004 	str	r2, [r3, #4]
     fc8:	e51b3008 	ldr	r3, [fp, #-8]
     fcc:	e5933004 	ldr	r3, [r3, #4]
     fd0:	e1a03183 	lsl	r3, r3, #3
     fd4:	e51b2008 	ldr	r2, [fp, #-8]
     fd8:	e0823003 	add	r3, r2, r3
     fdc:	e50b3008 	str	r3, [fp, #-8]
     fe0:	e51b3008 	ldr	r3, [fp, #-8]
     fe4:	e51b2010 	ldr	r2, [fp, #-16]
     fe8:	e5832004 	str	r2, [r3, #4]
     fec:	e59f2068 	ldr	r2, [pc, #104]	@ 105c <malloc+0x160>
     ff0:	e51b300c 	ldr	r3, [fp, #-12]
     ff4:	e5823000 	str	r3, [r2]
     ff8:	e51b3008 	ldr	r3, [fp, #-8]
     ffc:	e2833008 	add	r3, r3, #8
    1000:	ea000012 	b	1050 <malloc+0x154>
    1004:	e59f3050 	ldr	r3, [pc, #80]	@ 105c <malloc+0x160>
    1008:	e5933000 	ldr	r3, [r3]
    100c:	e51b2008 	ldr	r2, [fp, #-8]
    1010:	e1520003 	cmp	r2, r3
    1014:	1a000007 	bne	1038 <malloc+0x13c>
    1018:	e51b0010 	ldr	r0, [fp, #-16]
    101c:	ebffff94 	bl	e74 <morecore>
    1020:	e50b0008 	str	r0, [fp, #-8]
    1024:	e51b3008 	ldr	r3, [fp, #-8]
    1028:	e3530000 	cmp	r3, #0
    102c:	1a000001 	bne	1038 <malloc+0x13c>
    1030:	e3a03000 	mov	r3, #0
    1034:	ea000005 	b	1050 <malloc+0x154>
    1038:	e51b3008 	ldr	r3, [fp, #-8]
    103c:	e50b300c 	str	r3, [fp, #-12]
    1040:	e51b3008 	ldr	r3, [fp, #-8]
    1044:	e5933000 	ldr	r3, [r3]
    1048:	e50b3008 	str	r3, [fp, #-8]
    104c:	eaffffc8 	b	f74 <malloc+0x78>
    1050:	e1a00003 	mov	r0, r3
    1054:	e24bd004 	sub	sp, fp, #4
    1058:	e8bd8800 	pop	{fp, pc}
    105c:	000013cc 	.word	0x000013cc
    1060:	000013c4 	.word	0x000013c4

00001064 <__udivsi3>:
    1064:	e2512001 	subs	r2, r1, #1
    1068:	012fff1e 	bxeq	lr
    106c:	3a000036 	bcc	114c <__udivsi3+0xe8>
    1070:	e1500001 	cmp	r0, r1
    1074:	9a000022 	bls	1104 <__udivsi3+0xa0>
    1078:	e1110002 	tst	r1, r2
    107c:	0a000023 	beq	1110 <__udivsi3+0xac>
    1080:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1084:	01a01181 	lsleq	r1, r1, #3
    1088:	03a03008 	moveq	r3, #8
    108c:	13a03001 	movne	r3, #1
    1090:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1094:	31510000 	cmpcc	r1, r0
    1098:	31a01201 	lslcc	r1, r1, #4
    109c:	31a03203 	lslcc	r3, r3, #4
    10a0:	3afffffa 	bcc	1090 <__udivsi3+0x2c>
    10a4:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    10a8:	31510000 	cmpcc	r1, r0
    10ac:	31a01081 	lslcc	r1, r1, #1
    10b0:	31a03083 	lslcc	r3, r3, #1
    10b4:	3afffffa 	bcc	10a4 <__udivsi3+0x40>
    10b8:	e3a02000 	mov	r2, #0
    10bc:	e1500001 	cmp	r0, r1
    10c0:	20400001 	subcs	r0, r0, r1
    10c4:	21822003 	orrcs	r2, r2, r3
    10c8:	e15000a1 	cmp	r0, r1, lsr #1
    10cc:	204000a1 	subcs	r0, r0, r1, lsr #1
    10d0:	218220a3 	orrcs	r2, r2, r3, lsr #1
    10d4:	e1500121 	cmp	r0, r1, lsr #2
    10d8:	20400121 	subcs	r0, r0, r1, lsr #2
    10dc:	21822123 	orrcs	r2, r2, r3, lsr #2
    10e0:	e15001a1 	cmp	r0, r1, lsr #3
    10e4:	204001a1 	subcs	r0, r0, r1, lsr #3
    10e8:	218221a3 	orrcs	r2, r2, r3, lsr #3
    10ec:	e3500000 	cmp	r0, #0
    10f0:	11b03223 	lsrsne	r3, r3, #4
    10f4:	11a01221 	lsrne	r1, r1, #4
    10f8:	1affffef 	bne	10bc <__udivsi3+0x58>
    10fc:	e1a00002 	mov	r0, r2
    1100:	e12fff1e 	bx	lr
    1104:	03a00001 	moveq	r0, #1
    1108:	13a00000 	movne	r0, #0
    110c:	e12fff1e 	bx	lr
    1110:	e3510801 	cmp	r1, #65536	@ 0x10000
    1114:	21a01821 	lsrcs	r1, r1, #16
    1118:	23a02010 	movcs	r2, #16
    111c:	33a02000 	movcc	r2, #0
    1120:	e3510c01 	cmp	r1, #256	@ 0x100
    1124:	21a01421 	lsrcs	r1, r1, #8
    1128:	22822008 	addcs	r2, r2, #8
    112c:	e3510010 	cmp	r1, #16
    1130:	21a01221 	lsrcs	r1, r1, #4
    1134:	22822004 	addcs	r2, r2, #4
    1138:	e3510004 	cmp	r1, #4
    113c:	82822003 	addhi	r2, r2, #3
    1140:	908220a1 	addls	r2, r2, r1, lsr #1
    1144:	e1a00230 	lsr	r0, r0, r2
    1148:	e12fff1e 	bx	lr
    114c:	e3500000 	cmp	r0, #0
    1150:	13e00000 	mvnne	r0, #0
    1154:	ea000007 	b	1178 <__aeabi_idiv0>

00001158 <__aeabi_uidivmod>:
    1158:	e3510000 	cmp	r1, #0
    115c:	0afffffa 	beq	114c <__udivsi3+0xe8>
    1160:	e92d4003 	push	{r0, r1, lr}
    1164:	ebffffbe 	bl	1064 <__udivsi3>
    1168:	e8bd4006 	pop	{r1, r2, lr}
    116c:	e0030092 	mul	r3, r2, r0
    1170:	e0411003 	sub	r1, r1, r3
    1174:	e12fff1e 	bx	lr

00001178 <__aeabi_idiv0>:
    1178:	e12fff1e 	bx	lr
