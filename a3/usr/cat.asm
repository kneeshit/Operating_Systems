
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
      20:	eb0001ad 	bl	6dc <write>
      24:	e3a02c02 	mov	r2, #512	@ 0x200
      28:	e59f103c 	ldr	r1, [pc, #60]	@ 6c <cat+0x6c>
      2c:	e51b0010 	ldr	r0, [fp, #-16]
      30:	eb0001a0 	bl	6b8 <read>
      34:	e50b0008 	str	r0, [fp, #-8]
      38:	e51b3008 	ldr	r3, [fp, #-8]
      3c:	e3530000 	cmp	r3, #0
      40:	cafffff3 	bgt	14 <cat+0x14>
      44:	e51b3008 	ldr	r3, [fp, #-8]
      48:	e3530000 	cmp	r3, #0
      4c:	aa000003 	bge	60 <cat+0x60>
      50:	e59f1018 	ldr	r1, [pc, #24]	@ 70 <cat+0x70>
      54:	e3a00001 	mov	r0, #1
      58:	eb0002b8 	bl	b40 <printf>
      5c:	eb00017a 	bl	64c <exit>
      60:	e1a00000 	nop			@ (mov r0, r0)
      64:	e24bd004 	sub	sp, fp, #4
      68:	e8bd8800 	pop	{fp, pc}
      6c:	00001244 	.word	0x00001244
      70:	000011fc 	.word	0x000011fc

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
      9c:	eb00016a 	bl	64c <exit>
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
      c8:	eb0001a7 	bl	76c <open>
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
      fc:	eb00028f 	bl	b40 <printf>
     100:	eb000151 	bl	64c <exit>
     104:	e51b000c 	ldr	r0, [fp, #-12]
     108:	ebffffbc 	bl	0 <cat>
     10c:	e51b000c 	ldr	r0, [fp, #-12]
     110:	eb00017a 	bl	700 <close>
     114:	e51b3008 	ldr	r3, [fp, #-8]
     118:	e2833001 	add	r3, r3, #1
     11c:	e50b3008 	str	r3, [fp, #-8]
     120:	e51b2008 	ldr	r2, [fp, #-8]
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e1520003 	cmp	r2, r3
     12c:	baffffde 	blt	ac <main+0x38>
     130:	eb000145 	bl	64c <exit>
     134:	00001210 	.word	0x00001210

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
     42c:	eb0000a1 	bl	6b8 <read>
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
     4d4:	eb0000a4 	bl	76c <open>
     4d8:	e50b0008 	str	r0, [fp, #-8]
     4dc:	e51b3008 	ldr	r3, [fp, #-8]
     4e0:	e3530000 	cmp	r3, #0
     4e4:	aa000001 	bge	4f0 <stat+0x38>
     4e8:	e3e03000 	mvn	r3, #0
     4ec:	ea000006 	b	50c <stat+0x54>
     4f0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     4f4:	e51b0008 	ldr	r0, [fp, #-8]
     4f8:	eb0000b6 	bl	7d8 <fstat>
     4fc:	e50b000c 	str	r0, [fp, #-12]
     500:	e51b0008 	ldr	r0, [fp, #-8]
     504:	eb00007d 	bl	700 <close>
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

00000628 <fork>:
     628:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     62c:	e1a04003 	mov	r4, r3
     630:	e1a03002 	mov	r3, r2
     634:	e1a02001 	mov	r2, r1
     638:	e1a01000 	mov	r1, r0
     63c:	e3a00001 	mov	r0, #1
     640:	ef000000 	svc	0x00000000
     644:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     648:	e12fff1e 	bx	lr

0000064c <exit>:
     64c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     650:	e1a04003 	mov	r4, r3
     654:	e1a03002 	mov	r3, r2
     658:	e1a02001 	mov	r2, r1
     65c:	e1a01000 	mov	r1, r0
     660:	e3a00002 	mov	r0, #2
     664:	ef000000 	svc	0x00000000
     668:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     66c:	e12fff1e 	bx	lr

00000670 <wait>:
     670:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     674:	e1a04003 	mov	r4, r3
     678:	e1a03002 	mov	r3, r2
     67c:	e1a02001 	mov	r2, r1
     680:	e1a01000 	mov	r1, r0
     684:	e3a00003 	mov	r0, #3
     688:	ef000000 	svc	0x00000000
     68c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     690:	e12fff1e 	bx	lr

00000694 <pipe>:
     694:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     698:	e1a04003 	mov	r4, r3
     69c:	e1a03002 	mov	r3, r2
     6a0:	e1a02001 	mov	r2, r1
     6a4:	e1a01000 	mov	r1, r0
     6a8:	e3a00004 	mov	r0, #4
     6ac:	ef000000 	svc	0x00000000
     6b0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6b4:	e12fff1e 	bx	lr

000006b8 <read>:
     6b8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6bc:	e1a04003 	mov	r4, r3
     6c0:	e1a03002 	mov	r3, r2
     6c4:	e1a02001 	mov	r2, r1
     6c8:	e1a01000 	mov	r1, r0
     6cc:	e3a00005 	mov	r0, #5
     6d0:	ef000000 	svc	0x00000000
     6d4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6d8:	e12fff1e 	bx	lr

000006dc <write>:
     6dc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6e0:	e1a04003 	mov	r4, r3
     6e4:	e1a03002 	mov	r3, r2
     6e8:	e1a02001 	mov	r2, r1
     6ec:	e1a01000 	mov	r1, r0
     6f0:	e3a00010 	mov	r0, #16
     6f4:	ef000000 	svc	0x00000000
     6f8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6fc:	e12fff1e 	bx	lr

00000700 <close>:
     700:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     704:	e1a04003 	mov	r4, r3
     708:	e1a03002 	mov	r3, r2
     70c:	e1a02001 	mov	r2, r1
     710:	e1a01000 	mov	r1, r0
     714:	e3a00015 	mov	r0, #21
     718:	ef000000 	svc	0x00000000
     71c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     720:	e12fff1e 	bx	lr

00000724 <kill>:
     724:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     728:	e1a04003 	mov	r4, r3
     72c:	e1a03002 	mov	r3, r2
     730:	e1a02001 	mov	r2, r1
     734:	e1a01000 	mov	r1, r0
     738:	e3a00006 	mov	r0, #6
     73c:	ef000000 	svc	0x00000000
     740:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     744:	e12fff1e 	bx	lr

00000748 <exec>:
     748:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     74c:	e1a04003 	mov	r4, r3
     750:	e1a03002 	mov	r3, r2
     754:	e1a02001 	mov	r2, r1
     758:	e1a01000 	mov	r1, r0
     75c:	e3a00007 	mov	r0, #7
     760:	ef000000 	svc	0x00000000
     764:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     768:	e12fff1e 	bx	lr

0000076c <open>:
     76c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     770:	e1a04003 	mov	r4, r3
     774:	e1a03002 	mov	r3, r2
     778:	e1a02001 	mov	r2, r1
     77c:	e1a01000 	mov	r1, r0
     780:	e3a0000f 	mov	r0, #15
     784:	ef000000 	svc	0x00000000
     788:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     78c:	e12fff1e 	bx	lr

00000790 <mknod>:
     790:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     794:	e1a04003 	mov	r4, r3
     798:	e1a03002 	mov	r3, r2
     79c:	e1a02001 	mov	r2, r1
     7a0:	e1a01000 	mov	r1, r0
     7a4:	e3a00011 	mov	r0, #17
     7a8:	ef000000 	svc	0x00000000
     7ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7b0:	e12fff1e 	bx	lr

000007b4 <unlink>:
     7b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7b8:	e1a04003 	mov	r4, r3
     7bc:	e1a03002 	mov	r3, r2
     7c0:	e1a02001 	mov	r2, r1
     7c4:	e1a01000 	mov	r1, r0
     7c8:	e3a00012 	mov	r0, #18
     7cc:	ef000000 	svc	0x00000000
     7d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7d4:	e12fff1e 	bx	lr

000007d8 <fstat>:
     7d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7dc:	e1a04003 	mov	r4, r3
     7e0:	e1a03002 	mov	r3, r2
     7e4:	e1a02001 	mov	r2, r1
     7e8:	e1a01000 	mov	r1, r0
     7ec:	e3a00008 	mov	r0, #8
     7f0:	ef000000 	svc	0x00000000
     7f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7f8:	e12fff1e 	bx	lr

000007fc <link>:
     7fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     800:	e1a04003 	mov	r4, r3
     804:	e1a03002 	mov	r3, r2
     808:	e1a02001 	mov	r2, r1
     80c:	e1a01000 	mov	r1, r0
     810:	e3a00013 	mov	r0, #19
     814:	ef000000 	svc	0x00000000
     818:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     81c:	e12fff1e 	bx	lr

00000820 <mkdir>:
     820:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     824:	e1a04003 	mov	r4, r3
     828:	e1a03002 	mov	r3, r2
     82c:	e1a02001 	mov	r2, r1
     830:	e1a01000 	mov	r1, r0
     834:	e3a00014 	mov	r0, #20
     838:	ef000000 	svc	0x00000000
     83c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     840:	e12fff1e 	bx	lr

00000844 <chdir>:
     844:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     848:	e1a04003 	mov	r4, r3
     84c:	e1a03002 	mov	r3, r2
     850:	e1a02001 	mov	r2, r1
     854:	e1a01000 	mov	r1, r0
     858:	e3a00009 	mov	r0, #9
     85c:	ef000000 	svc	0x00000000
     860:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     864:	e12fff1e 	bx	lr

00000868 <dup>:
     868:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     86c:	e1a04003 	mov	r4, r3
     870:	e1a03002 	mov	r3, r2
     874:	e1a02001 	mov	r2, r1
     878:	e1a01000 	mov	r1, r0
     87c:	e3a0000a 	mov	r0, #10
     880:	ef000000 	svc	0x00000000
     884:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     888:	e12fff1e 	bx	lr

0000088c <getpid>:
     88c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     890:	e1a04003 	mov	r4, r3
     894:	e1a03002 	mov	r3, r2
     898:	e1a02001 	mov	r2, r1
     89c:	e1a01000 	mov	r1, r0
     8a0:	e3a0000b 	mov	r0, #11
     8a4:	ef000000 	svc	0x00000000
     8a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8ac:	e12fff1e 	bx	lr

000008b0 <sbrk>:
     8b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8b4:	e1a04003 	mov	r4, r3
     8b8:	e1a03002 	mov	r3, r2
     8bc:	e1a02001 	mov	r2, r1
     8c0:	e1a01000 	mov	r1, r0
     8c4:	e3a0000c 	mov	r0, #12
     8c8:	ef000000 	svc	0x00000000
     8cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8d0:	e12fff1e 	bx	lr

000008d4 <sleep>:
     8d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8d8:	e1a04003 	mov	r4, r3
     8dc:	e1a03002 	mov	r3, r2
     8e0:	e1a02001 	mov	r2, r1
     8e4:	e1a01000 	mov	r1, r0
     8e8:	e3a0000d 	mov	r0, #13
     8ec:	ef000000 	svc	0x00000000
     8f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8f4:	e12fff1e 	bx	lr

000008f8 <uptime>:
     8f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8fc:	e1a04003 	mov	r4, r3
     900:	e1a03002 	mov	r3, r2
     904:	e1a02001 	mov	r2, r1
     908:	e1a01000 	mov	r1, r0
     90c:	e3a0000e 	mov	r0, #14
     910:	ef000000 	svc	0x00000000
     914:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     918:	e12fff1e 	bx	lr

0000091c <getprocs>:
     91c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     920:	e1a04003 	mov	r4, r3
     924:	e1a03002 	mov	r3, r2
     928:	e1a02001 	mov	r2, r1
     92c:	e1a01000 	mov	r1, r0
     930:	e3a00016 	mov	r0, #22
     934:	ef000000 	svc	0x00000000
     938:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     93c:	e12fff1e 	bx	lr

00000940 <settickets>:
     940:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     944:	e1a04003 	mov	r4, r3
     948:	e1a03002 	mov	r3, r2
     94c:	e1a02001 	mov	r2, r1
     950:	e1a01000 	mov	r1, r0
     954:	e3a00017 	mov	r0, #23
     958:	ef000000 	svc	0x00000000
     95c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     960:	e12fff1e 	bx	lr

00000964 <srand>:
     964:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     968:	e1a04003 	mov	r4, r3
     96c:	e1a03002 	mov	r3, r2
     970:	e1a02001 	mov	r2, r1
     974:	e1a01000 	mov	r1, r0
     978:	e3a00018 	mov	r0, #24
     97c:	ef000000 	svc	0x00000000
     980:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     984:	e12fff1e 	bx	lr

00000988 <getpinfo>:
     988:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     98c:	e1a04003 	mov	r4, r3
     990:	e1a03002 	mov	r3, r2
     994:	e1a02001 	mov	r2, r1
     998:	e1a01000 	mov	r1, r0
     99c:	e3a00019 	mov	r0, #25
     9a0:	ef000000 	svc	0x00000000
     9a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a8:	e12fff1e 	bx	lr

000009ac <dumppagetable>:
     9ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9b0:	e1a04003 	mov	r4, r3
     9b4:	e1a03002 	mov	r3, r2
     9b8:	e1a02001 	mov	r2, r1
     9bc:	e1a01000 	mov	r1, r0
     9c0:	e3a0001a 	mov	r0, #26
     9c4:	ef000000 	svc	0x00000000
     9c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9cc:	e12fff1e 	bx	lr

000009d0 <putc>:
     9d0:	e92d4800 	push	{fp, lr}
     9d4:	e28db004 	add	fp, sp, #4
     9d8:	e24dd008 	sub	sp, sp, #8
     9dc:	e50b0008 	str	r0, [fp, #-8]
     9e0:	e1a03001 	mov	r3, r1
     9e4:	e54b3009 	strb	r3, [fp, #-9]
     9e8:	e24b3009 	sub	r3, fp, #9
     9ec:	e3a02001 	mov	r2, #1
     9f0:	e1a01003 	mov	r1, r3
     9f4:	e51b0008 	ldr	r0, [fp, #-8]
     9f8:	ebffff37 	bl	6dc <write>
     9fc:	e1a00000 	nop			@ (mov r0, r0)
     a00:	e24bd004 	sub	sp, fp, #4
     a04:	e8bd8800 	pop	{fp, pc}

00000a08 <printint>:
     a08:	e92d4800 	push	{fp, lr}
     a0c:	e28db004 	add	fp, sp, #4
     a10:	e24dd030 	sub	sp, sp, #48	@ 0x30
     a14:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     a18:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     a1c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     a20:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     a24:	e3a03000 	mov	r3, #0
     a28:	e50b300c 	str	r3, [fp, #-12]
     a2c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     a30:	e3530000 	cmp	r3, #0
     a34:	0a000008 	beq	a5c <printint+0x54>
     a38:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a3c:	e3530000 	cmp	r3, #0
     a40:	aa000005 	bge	a5c <printint+0x54>
     a44:	e3a03001 	mov	r3, #1
     a48:	e50b300c 	str	r3, [fp, #-12]
     a4c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a50:	e2633000 	rsb	r3, r3, #0
     a54:	e50b3010 	str	r3, [fp, #-16]
     a58:	ea000001 	b	a64 <printint+0x5c>
     a5c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a60:	e50b3010 	str	r3, [fp, #-16]
     a64:	e3a03000 	mov	r3, #0
     a68:	e50b3008 	str	r3, [fp, #-8]
     a6c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     a70:	e51b3010 	ldr	r3, [fp, #-16]
     a74:	e1a01002 	mov	r1, r2
     a78:	e1a00003 	mov	r0, r3
     a7c:	eb0001d5 	bl	11d8 <__aeabi_uidivmod>
     a80:	e1a03001 	mov	r3, r1
     a84:	e1a01003 	mov	r1, r3
     a88:	e51b3008 	ldr	r3, [fp, #-8]
     a8c:	e2832001 	add	r2, r3, #1
     a90:	e50b2008 	str	r2, [fp, #-8]
     a94:	e59f20a0 	ldr	r2, [pc, #160]	@ b3c <printint+0x134>
     a98:	e7d22001 	ldrb	r2, [r2, r1]
     a9c:	e2433004 	sub	r3, r3, #4
     aa0:	e083300b 	add	r3, r3, fp
     aa4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     aa8:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     aac:	e1a01003 	mov	r1, r3
     ab0:	e51b0010 	ldr	r0, [fp, #-16]
     ab4:	eb00018a 	bl	10e4 <__udivsi3>
     ab8:	e1a03000 	mov	r3, r0
     abc:	e50b3010 	str	r3, [fp, #-16]
     ac0:	e51b3010 	ldr	r3, [fp, #-16]
     ac4:	e3530000 	cmp	r3, #0
     ac8:	1affffe7 	bne	a6c <printint+0x64>
     acc:	e51b300c 	ldr	r3, [fp, #-12]
     ad0:	e3530000 	cmp	r3, #0
     ad4:	0a00000e 	beq	b14 <printint+0x10c>
     ad8:	e51b3008 	ldr	r3, [fp, #-8]
     adc:	e2832001 	add	r2, r3, #1
     ae0:	e50b2008 	str	r2, [fp, #-8]
     ae4:	e2433004 	sub	r3, r3, #4
     ae8:	e083300b 	add	r3, r3, fp
     aec:	e3a0202d 	mov	r2, #45	@ 0x2d
     af0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     af4:	ea000006 	b	b14 <printint+0x10c>
     af8:	e24b2020 	sub	r2, fp, #32
     afc:	e51b3008 	ldr	r3, [fp, #-8]
     b00:	e0823003 	add	r3, r2, r3
     b04:	e5d33000 	ldrb	r3, [r3]
     b08:	e1a01003 	mov	r1, r3
     b0c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     b10:	ebffffae 	bl	9d0 <putc>
     b14:	e51b3008 	ldr	r3, [fp, #-8]
     b18:	e2433001 	sub	r3, r3, #1
     b1c:	e50b3008 	str	r3, [fp, #-8]
     b20:	e51b3008 	ldr	r3, [fp, #-8]
     b24:	e3530000 	cmp	r3, #0
     b28:	aafffff2 	bge	af8 <printint+0xf0>
     b2c:	e1a00000 	nop			@ (mov r0, r0)
     b30:	e1a00000 	nop			@ (mov r0, r0)
     b34:	e24bd004 	sub	sp, fp, #4
     b38:	e8bd8800 	pop	{fp, pc}
     b3c:	00001230 	.word	0x00001230

00000b40 <printf>:
     b40:	e92d000e 	push	{r1, r2, r3}
     b44:	e92d4800 	push	{fp, lr}
     b48:	e28db004 	add	fp, sp, #4
     b4c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     b50:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     b54:	e3a03000 	mov	r3, #0
     b58:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b5c:	e28b3008 	add	r3, fp, #8
     b60:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b64:	e3a03000 	mov	r3, #0
     b68:	e50b3010 	str	r3, [fp, #-16]
     b6c:	ea000074 	b	d44 <printf+0x204>
     b70:	e59b2004 	ldr	r2, [fp, #4]
     b74:	e51b3010 	ldr	r3, [fp, #-16]
     b78:	e0823003 	add	r3, r2, r3
     b7c:	e5d33000 	ldrb	r3, [r3]
     b80:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     b84:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b88:	e3530000 	cmp	r3, #0
     b8c:	1a00000b 	bne	bc0 <printf+0x80>
     b90:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b94:	e3530025 	cmp	r3, #37	@ 0x25
     b98:	1a000002 	bne	ba8 <printf+0x68>
     b9c:	e3a03025 	mov	r3, #37	@ 0x25
     ba0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ba4:	ea000063 	b	d38 <printf+0x1f8>
     ba8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bac:	e6ef3073 	uxtb	r3, r3
     bb0:	e1a01003 	mov	r1, r3
     bb4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bb8:	ebffff84 	bl	9d0 <putc>
     bbc:	ea00005d 	b	d38 <printf+0x1f8>
     bc0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     bc4:	e3530025 	cmp	r3, #37	@ 0x25
     bc8:	1a00005a 	bne	d38 <printf+0x1f8>
     bcc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bd0:	e3530064 	cmp	r3, #100	@ 0x64
     bd4:	1a00000a 	bne	c04 <printf+0xc4>
     bd8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bdc:	e5933000 	ldr	r3, [r3]
     be0:	e1a01003 	mov	r1, r3
     be4:	e3a03001 	mov	r3, #1
     be8:	e3a0200a 	mov	r2, #10
     bec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bf0:	ebffff84 	bl	a08 <printint>
     bf4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bf8:	e2833004 	add	r3, r3, #4
     bfc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c00:	ea00004a 	b	d30 <printf+0x1f0>
     c04:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c08:	e3530078 	cmp	r3, #120	@ 0x78
     c0c:	0a000002 	beq	c1c <printf+0xdc>
     c10:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c14:	e3530070 	cmp	r3, #112	@ 0x70
     c18:	1a00000a 	bne	c48 <printf+0x108>
     c1c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c20:	e5933000 	ldr	r3, [r3]
     c24:	e1a01003 	mov	r1, r3
     c28:	e3a03000 	mov	r3, #0
     c2c:	e3a02010 	mov	r2, #16
     c30:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c34:	ebffff73 	bl	a08 <printint>
     c38:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c3c:	e2833004 	add	r3, r3, #4
     c40:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c44:	ea000039 	b	d30 <printf+0x1f0>
     c48:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c4c:	e3530073 	cmp	r3, #115	@ 0x73
     c50:	1a000018 	bne	cb8 <printf+0x178>
     c54:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c58:	e5933000 	ldr	r3, [r3]
     c5c:	e50b300c 	str	r3, [fp, #-12]
     c60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c64:	e2833004 	add	r3, r3, #4
     c68:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c6c:	e51b300c 	ldr	r3, [fp, #-12]
     c70:	e3530000 	cmp	r3, #0
     c74:	1a00000a 	bne	ca4 <printf+0x164>
     c78:	e59f30f4 	ldr	r3, [pc, #244]	@ d74 <printf+0x234>
     c7c:	e50b300c 	str	r3, [fp, #-12]
     c80:	ea000007 	b	ca4 <printf+0x164>
     c84:	e51b300c 	ldr	r3, [fp, #-12]
     c88:	e5d33000 	ldrb	r3, [r3]
     c8c:	e1a01003 	mov	r1, r3
     c90:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c94:	ebffff4d 	bl	9d0 <putc>
     c98:	e51b300c 	ldr	r3, [fp, #-12]
     c9c:	e2833001 	add	r3, r3, #1
     ca0:	e50b300c 	str	r3, [fp, #-12]
     ca4:	e51b300c 	ldr	r3, [fp, #-12]
     ca8:	e5d33000 	ldrb	r3, [r3]
     cac:	e3530000 	cmp	r3, #0
     cb0:	1afffff3 	bne	c84 <printf+0x144>
     cb4:	ea00001d 	b	d30 <printf+0x1f0>
     cb8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cbc:	e3530063 	cmp	r3, #99	@ 0x63
     cc0:	1a000009 	bne	cec <printf+0x1ac>
     cc4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cc8:	e5933000 	ldr	r3, [r3]
     ccc:	e6ef3073 	uxtb	r3, r3
     cd0:	e1a01003 	mov	r1, r3
     cd4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cd8:	ebffff3c 	bl	9d0 <putc>
     cdc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ce0:	e2833004 	add	r3, r3, #4
     ce4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ce8:	ea000010 	b	d30 <printf+0x1f0>
     cec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cf0:	e3530025 	cmp	r3, #37	@ 0x25
     cf4:	1a000005 	bne	d10 <printf+0x1d0>
     cf8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cfc:	e6ef3073 	uxtb	r3, r3
     d00:	e1a01003 	mov	r1, r3
     d04:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d08:	ebffff30 	bl	9d0 <putc>
     d0c:	ea000007 	b	d30 <printf+0x1f0>
     d10:	e3a01025 	mov	r1, #37	@ 0x25
     d14:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d18:	ebffff2c 	bl	9d0 <putc>
     d1c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d20:	e6ef3073 	uxtb	r3, r3
     d24:	e1a01003 	mov	r1, r3
     d28:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d2c:	ebffff27 	bl	9d0 <putc>
     d30:	e3a03000 	mov	r3, #0
     d34:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d38:	e51b3010 	ldr	r3, [fp, #-16]
     d3c:	e2833001 	add	r3, r3, #1
     d40:	e50b3010 	str	r3, [fp, #-16]
     d44:	e59b2004 	ldr	r2, [fp, #4]
     d48:	e51b3010 	ldr	r3, [fp, #-16]
     d4c:	e0823003 	add	r3, r2, r3
     d50:	e5d33000 	ldrb	r3, [r3]
     d54:	e3530000 	cmp	r3, #0
     d58:	1affff84 	bne	b70 <printf+0x30>
     d5c:	e1a00000 	nop			@ (mov r0, r0)
     d60:	e1a00000 	nop			@ (mov r0, r0)
     d64:	e24bd004 	sub	sp, fp, #4
     d68:	e8bd4800 	pop	{fp, lr}
     d6c:	e28dd00c 	add	sp, sp, #12
     d70:	e12fff1e 	bx	lr
     d74:	00001228 	.word	0x00001228

00000d78 <free>:
     d78:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     d7c:	e28db000 	add	fp, sp, #0
     d80:	e24dd014 	sub	sp, sp, #20
     d84:	e50b0010 	str	r0, [fp, #-16]
     d88:	e51b3010 	ldr	r3, [fp, #-16]
     d8c:	e2433008 	sub	r3, r3, #8
     d90:	e50b300c 	str	r3, [fp, #-12]
     d94:	e59f3154 	ldr	r3, [pc, #340]	@ ef0 <free+0x178>
     d98:	e5933000 	ldr	r3, [r3]
     d9c:	e50b3008 	str	r3, [fp, #-8]
     da0:	ea000010 	b	de8 <free+0x70>
     da4:	e51b3008 	ldr	r3, [fp, #-8]
     da8:	e5933000 	ldr	r3, [r3]
     dac:	e51b2008 	ldr	r2, [fp, #-8]
     db0:	e1520003 	cmp	r2, r3
     db4:	3a000008 	bcc	ddc <free+0x64>
     db8:	e51b200c 	ldr	r2, [fp, #-12]
     dbc:	e51b3008 	ldr	r3, [fp, #-8]
     dc0:	e1520003 	cmp	r2, r3
     dc4:	8a000010 	bhi	e0c <free+0x94>
     dc8:	e51b3008 	ldr	r3, [fp, #-8]
     dcc:	e5933000 	ldr	r3, [r3]
     dd0:	e51b200c 	ldr	r2, [fp, #-12]
     dd4:	e1520003 	cmp	r2, r3
     dd8:	3a00000b 	bcc	e0c <free+0x94>
     ddc:	e51b3008 	ldr	r3, [fp, #-8]
     de0:	e5933000 	ldr	r3, [r3]
     de4:	e50b3008 	str	r3, [fp, #-8]
     de8:	e51b200c 	ldr	r2, [fp, #-12]
     dec:	e51b3008 	ldr	r3, [fp, #-8]
     df0:	e1520003 	cmp	r2, r3
     df4:	9affffea 	bls	da4 <free+0x2c>
     df8:	e51b3008 	ldr	r3, [fp, #-8]
     dfc:	e5933000 	ldr	r3, [r3]
     e00:	e51b200c 	ldr	r2, [fp, #-12]
     e04:	e1520003 	cmp	r2, r3
     e08:	2affffe5 	bcs	da4 <free+0x2c>
     e0c:	e51b300c 	ldr	r3, [fp, #-12]
     e10:	e5933004 	ldr	r3, [r3, #4]
     e14:	e1a03183 	lsl	r3, r3, #3
     e18:	e51b200c 	ldr	r2, [fp, #-12]
     e1c:	e0822003 	add	r2, r2, r3
     e20:	e51b3008 	ldr	r3, [fp, #-8]
     e24:	e5933000 	ldr	r3, [r3]
     e28:	e1520003 	cmp	r2, r3
     e2c:	1a00000d 	bne	e68 <free+0xf0>
     e30:	e51b300c 	ldr	r3, [fp, #-12]
     e34:	e5932004 	ldr	r2, [r3, #4]
     e38:	e51b3008 	ldr	r3, [fp, #-8]
     e3c:	e5933000 	ldr	r3, [r3]
     e40:	e5933004 	ldr	r3, [r3, #4]
     e44:	e0822003 	add	r2, r2, r3
     e48:	e51b300c 	ldr	r3, [fp, #-12]
     e4c:	e5832004 	str	r2, [r3, #4]
     e50:	e51b3008 	ldr	r3, [fp, #-8]
     e54:	e5933000 	ldr	r3, [r3]
     e58:	e5932000 	ldr	r2, [r3]
     e5c:	e51b300c 	ldr	r3, [fp, #-12]
     e60:	e5832000 	str	r2, [r3]
     e64:	ea000003 	b	e78 <free+0x100>
     e68:	e51b3008 	ldr	r3, [fp, #-8]
     e6c:	e5932000 	ldr	r2, [r3]
     e70:	e51b300c 	ldr	r3, [fp, #-12]
     e74:	e5832000 	str	r2, [r3]
     e78:	e51b3008 	ldr	r3, [fp, #-8]
     e7c:	e5933004 	ldr	r3, [r3, #4]
     e80:	e1a03183 	lsl	r3, r3, #3
     e84:	e51b2008 	ldr	r2, [fp, #-8]
     e88:	e0823003 	add	r3, r2, r3
     e8c:	e51b200c 	ldr	r2, [fp, #-12]
     e90:	e1520003 	cmp	r2, r3
     e94:	1a00000b 	bne	ec8 <free+0x150>
     e98:	e51b3008 	ldr	r3, [fp, #-8]
     e9c:	e5932004 	ldr	r2, [r3, #4]
     ea0:	e51b300c 	ldr	r3, [fp, #-12]
     ea4:	e5933004 	ldr	r3, [r3, #4]
     ea8:	e0822003 	add	r2, r2, r3
     eac:	e51b3008 	ldr	r3, [fp, #-8]
     eb0:	e5832004 	str	r2, [r3, #4]
     eb4:	e51b300c 	ldr	r3, [fp, #-12]
     eb8:	e5932000 	ldr	r2, [r3]
     ebc:	e51b3008 	ldr	r3, [fp, #-8]
     ec0:	e5832000 	str	r2, [r3]
     ec4:	ea000002 	b	ed4 <free+0x15c>
     ec8:	e51b3008 	ldr	r3, [fp, #-8]
     ecc:	e51b200c 	ldr	r2, [fp, #-12]
     ed0:	e5832000 	str	r2, [r3]
     ed4:	e59f2014 	ldr	r2, [pc, #20]	@ ef0 <free+0x178>
     ed8:	e51b3008 	ldr	r3, [fp, #-8]
     edc:	e5823000 	str	r3, [r2]
     ee0:	e1a00000 	nop			@ (mov r0, r0)
     ee4:	e28bd000 	add	sp, fp, #0
     ee8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     eec:	e12fff1e 	bx	lr
     ef0:	0000144c 	.word	0x0000144c

00000ef4 <morecore>:
     ef4:	e92d4800 	push	{fp, lr}
     ef8:	e28db004 	add	fp, sp, #4
     efc:	e24dd010 	sub	sp, sp, #16
     f00:	e50b0010 	str	r0, [fp, #-16]
     f04:	e51b3010 	ldr	r3, [fp, #-16]
     f08:	e3530a01 	cmp	r3, #4096	@ 0x1000
     f0c:	2a000001 	bcs	f18 <morecore+0x24>
     f10:	e3a03a01 	mov	r3, #4096	@ 0x1000
     f14:	e50b3010 	str	r3, [fp, #-16]
     f18:	e51b3010 	ldr	r3, [fp, #-16]
     f1c:	e1a03183 	lsl	r3, r3, #3
     f20:	e1a00003 	mov	r0, r3
     f24:	ebfffe61 	bl	8b0 <sbrk>
     f28:	e50b0008 	str	r0, [fp, #-8]
     f2c:	e51b3008 	ldr	r3, [fp, #-8]
     f30:	e3730001 	cmn	r3, #1
     f34:	1a000001 	bne	f40 <morecore+0x4c>
     f38:	e3a03000 	mov	r3, #0
     f3c:	ea00000a 	b	f6c <morecore+0x78>
     f40:	e51b3008 	ldr	r3, [fp, #-8]
     f44:	e50b300c 	str	r3, [fp, #-12]
     f48:	e51b300c 	ldr	r3, [fp, #-12]
     f4c:	e51b2010 	ldr	r2, [fp, #-16]
     f50:	e5832004 	str	r2, [r3, #4]
     f54:	e51b300c 	ldr	r3, [fp, #-12]
     f58:	e2833008 	add	r3, r3, #8
     f5c:	e1a00003 	mov	r0, r3
     f60:	ebffff84 	bl	d78 <free>
     f64:	e59f300c 	ldr	r3, [pc, #12]	@ f78 <morecore+0x84>
     f68:	e5933000 	ldr	r3, [r3]
     f6c:	e1a00003 	mov	r0, r3
     f70:	e24bd004 	sub	sp, fp, #4
     f74:	e8bd8800 	pop	{fp, pc}
     f78:	0000144c 	.word	0x0000144c

00000f7c <malloc>:
     f7c:	e92d4800 	push	{fp, lr}
     f80:	e28db004 	add	fp, sp, #4
     f84:	e24dd018 	sub	sp, sp, #24
     f88:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     f8c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f90:	e2833007 	add	r3, r3, #7
     f94:	e1a031a3 	lsr	r3, r3, #3
     f98:	e2833001 	add	r3, r3, #1
     f9c:	e50b3010 	str	r3, [fp, #-16]
     fa0:	e59f3134 	ldr	r3, [pc, #308]	@ 10dc <malloc+0x160>
     fa4:	e5933000 	ldr	r3, [r3]
     fa8:	e50b300c 	str	r3, [fp, #-12]
     fac:	e51b300c 	ldr	r3, [fp, #-12]
     fb0:	e3530000 	cmp	r3, #0
     fb4:	1a00000b 	bne	fe8 <malloc+0x6c>
     fb8:	e59f3120 	ldr	r3, [pc, #288]	@ 10e0 <malloc+0x164>
     fbc:	e50b300c 	str	r3, [fp, #-12]
     fc0:	e59f2114 	ldr	r2, [pc, #276]	@ 10dc <malloc+0x160>
     fc4:	e51b300c 	ldr	r3, [fp, #-12]
     fc8:	e5823000 	str	r3, [r2]
     fcc:	e59f3108 	ldr	r3, [pc, #264]	@ 10dc <malloc+0x160>
     fd0:	e5933000 	ldr	r3, [r3]
     fd4:	e59f2104 	ldr	r2, [pc, #260]	@ 10e0 <malloc+0x164>
     fd8:	e5823000 	str	r3, [r2]
     fdc:	e59f30fc 	ldr	r3, [pc, #252]	@ 10e0 <malloc+0x164>
     fe0:	e3a02000 	mov	r2, #0
     fe4:	e5832004 	str	r2, [r3, #4]
     fe8:	e51b300c 	ldr	r3, [fp, #-12]
     fec:	e5933000 	ldr	r3, [r3]
     ff0:	e50b3008 	str	r3, [fp, #-8]
     ff4:	e51b3008 	ldr	r3, [fp, #-8]
     ff8:	e5933004 	ldr	r3, [r3, #4]
     ffc:	e51b2010 	ldr	r2, [fp, #-16]
    1000:	e1520003 	cmp	r2, r3
    1004:	8a00001e 	bhi	1084 <malloc+0x108>
    1008:	e51b3008 	ldr	r3, [fp, #-8]
    100c:	e5933004 	ldr	r3, [r3, #4]
    1010:	e51b2010 	ldr	r2, [fp, #-16]
    1014:	e1520003 	cmp	r2, r3
    1018:	1a000004 	bne	1030 <malloc+0xb4>
    101c:	e51b3008 	ldr	r3, [fp, #-8]
    1020:	e5932000 	ldr	r2, [r3]
    1024:	e51b300c 	ldr	r3, [fp, #-12]
    1028:	e5832000 	str	r2, [r3]
    102c:	ea00000e 	b	106c <malloc+0xf0>
    1030:	e51b3008 	ldr	r3, [fp, #-8]
    1034:	e5932004 	ldr	r2, [r3, #4]
    1038:	e51b3010 	ldr	r3, [fp, #-16]
    103c:	e0422003 	sub	r2, r2, r3
    1040:	e51b3008 	ldr	r3, [fp, #-8]
    1044:	e5832004 	str	r2, [r3, #4]
    1048:	e51b3008 	ldr	r3, [fp, #-8]
    104c:	e5933004 	ldr	r3, [r3, #4]
    1050:	e1a03183 	lsl	r3, r3, #3
    1054:	e51b2008 	ldr	r2, [fp, #-8]
    1058:	e0823003 	add	r3, r2, r3
    105c:	e50b3008 	str	r3, [fp, #-8]
    1060:	e51b3008 	ldr	r3, [fp, #-8]
    1064:	e51b2010 	ldr	r2, [fp, #-16]
    1068:	e5832004 	str	r2, [r3, #4]
    106c:	e59f2068 	ldr	r2, [pc, #104]	@ 10dc <malloc+0x160>
    1070:	e51b300c 	ldr	r3, [fp, #-12]
    1074:	e5823000 	str	r3, [r2]
    1078:	e51b3008 	ldr	r3, [fp, #-8]
    107c:	e2833008 	add	r3, r3, #8
    1080:	ea000012 	b	10d0 <malloc+0x154>
    1084:	e59f3050 	ldr	r3, [pc, #80]	@ 10dc <malloc+0x160>
    1088:	e5933000 	ldr	r3, [r3]
    108c:	e51b2008 	ldr	r2, [fp, #-8]
    1090:	e1520003 	cmp	r2, r3
    1094:	1a000007 	bne	10b8 <malloc+0x13c>
    1098:	e51b0010 	ldr	r0, [fp, #-16]
    109c:	ebffff94 	bl	ef4 <morecore>
    10a0:	e50b0008 	str	r0, [fp, #-8]
    10a4:	e51b3008 	ldr	r3, [fp, #-8]
    10a8:	e3530000 	cmp	r3, #0
    10ac:	1a000001 	bne	10b8 <malloc+0x13c>
    10b0:	e3a03000 	mov	r3, #0
    10b4:	ea000005 	b	10d0 <malloc+0x154>
    10b8:	e51b3008 	ldr	r3, [fp, #-8]
    10bc:	e50b300c 	str	r3, [fp, #-12]
    10c0:	e51b3008 	ldr	r3, [fp, #-8]
    10c4:	e5933000 	ldr	r3, [r3]
    10c8:	e50b3008 	str	r3, [fp, #-8]
    10cc:	eaffffc8 	b	ff4 <malloc+0x78>
    10d0:	e1a00003 	mov	r0, r3
    10d4:	e24bd004 	sub	sp, fp, #4
    10d8:	e8bd8800 	pop	{fp, pc}
    10dc:	0000144c 	.word	0x0000144c
    10e0:	00001444 	.word	0x00001444

000010e4 <__udivsi3>:
    10e4:	e2512001 	subs	r2, r1, #1
    10e8:	012fff1e 	bxeq	lr
    10ec:	3a000036 	bcc	11cc <__udivsi3+0xe8>
    10f0:	e1500001 	cmp	r0, r1
    10f4:	9a000022 	bls	1184 <__udivsi3+0xa0>
    10f8:	e1110002 	tst	r1, r2
    10fc:	0a000023 	beq	1190 <__udivsi3+0xac>
    1100:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1104:	01a01181 	lsleq	r1, r1, #3
    1108:	03a03008 	moveq	r3, #8
    110c:	13a03001 	movne	r3, #1
    1110:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1114:	31510000 	cmpcc	r1, r0
    1118:	31a01201 	lslcc	r1, r1, #4
    111c:	31a03203 	lslcc	r3, r3, #4
    1120:	3afffffa 	bcc	1110 <__udivsi3+0x2c>
    1124:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1128:	31510000 	cmpcc	r1, r0
    112c:	31a01081 	lslcc	r1, r1, #1
    1130:	31a03083 	lslcc	r3, r3, #1
    1134:	3afffffa 	bcc	1124 <__udivsi3+0x40>
    1138:	e3a02000 	mov	r2, #0
    113c:	e1500001 	cmp	r0, r1
    1140:	20400001 	subcs	r0, r0, r1
    1144:	21822003 	orrcs	r2, r2, r3
    1148:	e15000a1 	cmp	r0, r1, lsr #1
    114c:	204000a1 	subcs	r0, r0, r1, lsr #1
    1150:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1154:	e1500121 	cmp	r0, r1, lsr #2
    1158:	20400121 	subcs	r0, r0, r1, lsr #2
    115c:	21822123 	orrcs	r2, r2, r3, lsr #2
    1160:	e15001a1 	cmp	r0, r1, lsr #3
    1164:	204001a1 	subcs	r0, r0, r1, lsr #3
    1168:	218221a3 	orrcs	r2, r2, r3, lsr #3
    116c:	e3500000 	cmp	r0, #0
    1170:	11b03223 	lsrsne	r3, r3, #4
    1174:	11a01221 	lsrne	r1, r1, #4
    1178:	1affffef 	bne	113c <__udivsi3+0x58>
    117c:	e1a00002 	mov	r0, r2
    1180:	e12fff1e 	bx	lr
    1184:	03a00001 	moveq	r0, #1
    1188:	13a00000 	movne	r0, #0
    118c:	e12fff1e 	bx	lr
    1190:	e3510801 	cmp	r1, #65536	@ 0x10000
    1194:	21a01821 	lsrcs	r1, r1, #16
    1198:	23a02010 	movcs	r2, #16
    119c:	33a02000 	movcc	r2, #0
    11a0:	e3510c01 	cmp	r1, #256	@ 0x100
    11a4:	21a01421 	lsrcs	r1, r1, #8
    11a8:	22822008 	addcs	r2, r2, #8
    11ac:	e3510010 	cmp	r1, #16
    11b0:	21a01221 	lsrcs	r1, r1, #4
    11b4:	22822004 	addcs	r2, r2, #4
    11b8:	e3510004 	cmp	r1, #4
    11bc:	82822003 	addhi	r2, r2, #3
    11c0:	908220a1 	addls	r2, r2, r1, lsr #1
    11c4:	e1a00230 	lsr	r0, r0, r2
    11c8:	e12fff1e 	bx	lr
    11cc:	e3500000 	cmp	r0, #0
    11d0:	13e00000 	mvnne	r0, #0
    11d4:	ea000007 	b	11f8 <__aeabi_idiv0>

000011d8 <__aeabi_uidivmod>:
    11d8:	e3510000 	cmp	r1, #0
    11dc:	0afffffa 	beq	11cc <__udivsi3+0xe8>
    11e0:	e92d4003 	push	{r0, r1, lr}
    11e4:	ebffffbe 	bl	10e4 <__udivsi3>
    11e8:	e8bd4006 	pop	{r1, r2, lr}
    11ec:	e0030092 	mul	r3, r2, r0
    11f0:	e0411003 	sub	r1, r1, r3
    11f4:	e12fff1e 	bx	lr

000011f8 <__aeabi_idiv0>:
    11f8:	e12fff1e 	bx	lr
