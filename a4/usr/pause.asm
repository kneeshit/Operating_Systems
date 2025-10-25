
_pause:     file format elf32-littlearm


Disassembly of section .text:

00000000 <digs>:
       0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
       4:	e28db000 	add	fp, sp, #0
       8:	e24dd014 	sub	sp, sp, #20
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e3a03000 	mov	r3, #0
      14:	e50b3008 	str	r3, [fp, #-8]
      18:	ea000009 	b	44 <digs+0x44>
      1c:	e51b3010 	ldr	r3, [fp, #-16]
      20:	e59f203c 	ldr	r2, [pc, #60]	@ 64 <digs+0x64>
      24:	e0c21392 	smull	r1, r2, r2, r3
      28:	e1a02142 	asr	r2, r2, #2
      2c:	e1a03fc3 	asr	r3, r3, #31
      30:	e0423003 	sub	r3, r2, r3
      34:	e50b3010 	str	r3, [fp, #-16]
      38:	e51b3008 	ldr	r3, [fp, #-8]
      3c:	e2833001 	add	r3, r3, #1
      40:	e50b3008 	str	r3, [fp, #-8]
      44:	e51b3010 	ldr	r3, [fp, #-16]
      48:	e3530000 	cmp	r3, #0
      4c:	1afffff2 	bne	1c <digs+0x1c>
      50:	e51b3008 	ldr	r3, [fp, #-8]
      54:	e1a00003 	mov	r0, r3
      58:	e28bd000 	add	sp, fp, #0
      5c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      60:	e12fff1e 	bx	lr
      64:	66666667 	.word	0x66666667

00000068 <main>:
      68:	e92d4800 	push	{fp, lr}
      6c:	e28db004 	add	fp, sp, #4
      70:	e24dd018 	sub	sp, sp, #24
      74:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
      78:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
      7c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      80:	e3530001 	cmp	r3, #1
      84:	ca000003 	bgt	98 <main+0x30>
      88:	e59f10d0 	ldr	r1, [pc, #208]	@ 160 <main+0xf8>
      8c:	e3a00001 	mov	r0, #1
      90:	eb0003f0 	bl	1058 <printf>
      94:	eb000258 	bl	9fc <exit>
      98:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
      9c:	e2833004 	add	r3, r3, #4
      a0:	e5933000 	ldr	r3, [r3]
      a4:	e1a00003 	mov	r0, r3
      a8:	eb000128 	bl	550 <atoi>
      ac:	e50b0010 	str	r0, [fp, #-16]
      b0:	e51b3010 	ldr	r3, [fp, #-16]
      b4:	e3530000 	cmp	r3, #0
      b8:	ca000003 	bgt	cc <main+0x64>
      bc:	e59f10a0 	ldr	r1, [pc, #160]	@ 164 <main+0xfc>
      c0:	e3a00001 	mov	r0, #1
      c4:	eb0003e3 	bl	1058 <printf>
      c8:	eb00024b 	bl	9fc <exit>
      cc:	e3a03000 	mov	r3, #0
      d0:	e50b3008 	str	r3, [fp, #-8]
      d4:	ea00001c 	b	14c <main+0xe4>
      d8:	e51b3008 	ldr	r3, [fp, #-8]
      dc:	e2833001 	add	r3, r3, #1
      e0:	e1a02003 	mov	r2, r3
      e4:	e59f107c 	ldr	r1, [pc, #124]	@ 168 <main+0x100>
      e8:	e3a00001 	mov	r0, #1
      ec:	eb0003d9 	bl	1058 <printf>
      f0:	e3a0000a 	mov	r0, #10
      f4:	eb0002e2 	bl	c84 <sleep>
      f8:	e51b3008 	ldr	r3, [fp, #-8]
      fc:	e2833001 	add	r3, r3, #1
     100:	e1a00003 	mov	r0, r3
     104:	ebffffbd 	bl	0 <digs>
     108:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
     10c:	e3a03000 	mov	r3, #0
     110:	e50b300c 	str	r3, [fp, #-12]
     114:	ea000005 	b	130 <main+0xc8>
     118:	e59f104c 	ldr	r1, [pc, #76]	@ 16c <main+0x104>
     11c:	e3a00002 	mov	r0, #2
     120:	eb0003cc 	bl	1058 <printf>
     124:	e51b300c 	ldr	r3, [fp, #-12]
     128:	e2833001 	add	r3, r3, #1
     12c:	e50b300c 	str	r3, [fp, #-12]
     130:	e51b200c 	ldr	r2, [fp, #-12]
     134:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     138:	e1520003 	cmp	r2, r3
     13c:	bafffff5 	blt	118 <main+0xb0>
     140:	e51b3008 	ldr	r3, [fp, #-8]
     144:	e2833001 	add	r3, r3, #1
     148:	e50b3008 	str	r3, [fp, #-8]
     14c:	e51b2008 	ldr	r2, [fp, #-8]
     150:	e51b3010 	ldr	r3, [fp, #-16]
     154:	e1520003 	cmp	r2, r3
     158:	baffffde 	blt	d8 <main+0x70>
     15c:	eb000226 	bl	9fc <exit>
     160:	00001714 	.word	0x00001714
     164:	00001734 	.word	0x00001734
     168:	00001758 	.word	0x00001758
     16c:	0000175c 	.word	0x0000175c

00000170 <strcpy>:
     170:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     174:	e28db000 	add	fp, sp, #0
     178:	e24dd014 	sub	sp, sp, #20
     17c:	e50b0010 	str	r0, [fp, #-16]
     180:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     184:	e51b3010 	ldr	r3, [fp, #-16]
     188:	e50b3008 	str	r3, [fp, #-8]
     18c:	e1a00000 	nop			@ (mov r0, r0)
     190:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     194:	e2823001 	add	r3, r2, #1
     198:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     19c:	e51b3010 	ldr	r3, [fp, #-16]
     1a0:	e2831001 	add	r1, r3, #1
     1a4:	e50b1010 	str	r1, [fp, #-16]
     1a8:	e5d22000 	ldrb	r2, [r2]
     1ac:	e5c32000 	strb	r2, [r3]
     1b0:	e5d33000 	ldrb	r3, [r3]
     1b4:	e3530000 	cmp	r3, #0
     1b8:	1afffff4 	bne	190 <strcpy+0x20>
     1bc:	e51b3008 	ldr	r3, [fp, #-8]
     1c0:	e1a00003 	mov	r0, r3
     1c4:	e28bd000 	add	sp, fp, #0
     1c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1cc:	e12fff1e 	bx	lr

000001d0 <strcmp>:
     1d0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1d4:	e28db000 	add	fp, sp, #0
     1d8:	e24dd00c 	sub	sp, sp, #12
     1dc:	e50b0008 	str	r0, [fp, #-8]
     1e0:	e50b100c 	str	r1, [fp, #-12]
     1e4:	ea000005 	b	200 <strcmp+0x30>
     1e8:	e51b3008 	ldr	r3, [fp, #-8]
     1ec:	e2833001 	add	r3, r3, #1
     1f0:	e50b3008 	str	r3, [fp, #-8]
     1f4:	e51b300c 	ldr	r3, [fp, #-12]
     1f8:	e2833001 	add	r3, r3, #1
     1fc:	e50b300c 	str	r3, [fp, #-12]
     200:	e51b3008 	ldr	r3, [fp, #-8]
     204:	e5d33000 	ldrb	r3, [r3]
     208:	e3530000 	cmp	r3, #0
     20c:	0a000005 	beq	228 <strcmp+0x58>
     210:	e51b3008 	ldr	r3, [fp, #-8]
     214:	e5d32000 	ldrb	r2, [r3]
     218:	e51b300c 	ldr	r3, [fp, #-12]
     21c:	e5d33000 	ldrb	r3, [r3]
     220:	e1520003 	cmp	r2, r3
     224:	0affffef 	beq	1e8 <strcmp+0x18>
     228:	e51b3008 	ldr	r3, [fp, #-8]
     22c:	e5d33000 	ldrb	r3, [r3]
     230:	e1a02003 	mov	r2, r3
     234:	e51b300c 	ldr	r3, [fp, #-12]
     238:	e5d33000 	ldrb	r3, [r3]
     23c:	e0423003 	sub	r3, r2, r3
     240:	e1a00003 	mov	r0, r3
     244:	e28bd000 	add	sp, fp, #0
     248:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     24c:	e12fff1e 	bx	lr

00000250 <strlen>:
     250:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     254:	e28db000 	add	fp, sp, #0
     258:	e24dd014 	sub	sp, sp, #20
     25c:	e50b0010 	str	r0, [fp, #-16]
     260:	e3a03000 	mov	r3, #0
     264:	e50b3008 	str	r3, [fp, #-8]
     268:	ea000002 	b	278 <strlen+0x28>
     26c:	e51b3008 	ldr	r3, [fp, #-8]
     270:	e2833001 	add	r3, r3, #1
     274:	e50b3008 	str	r3, [fp, #-8]
     278:	e51b3008 	ldr	r3, [fp, #-8]
     27c:	e51b2010 	ldr	r2, [fp, #-16]
     280:	e0823003 	add	r3, r2, r3
     284:	e5d33000 	ldrb	r3, [r3]
     288:	e3530000 	cmp	r3, #0
     28c:	1afffff6 	bne	26c <strlen+0x1c>
     290:	e51b3008 	ldr	r3, [fp, #-8]
     294:	e1a00003 	mov	r0, r3
     298:	e28bd000 	add	sp, fp, #0
     29c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2a0:	e12fff1e 	bx	lr

000002a4 <memset>:
     2a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2a8:	e28db000 	add	fp, sp, #0
     2ac:	e24dd024 	sub	sp, sp, #36	@ 0x24
     2b0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     2b4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     2b8:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     2bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2c0:	e50b3008 	str	r3, [fp, #-8]
     2c4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     2c8:	e54b300d 	strb	r3, [fp, #-13]
     2cc:	e55b200d 	ldrb	r2, [fp, #-13]
     2d0:	e1a03002 	mov	r3, r2
     2d4:	e1a03403 	lsl	r3, r3, #8
     2d8:	e0833002 	add	r3, r3, r2
     2dc:	e1a03803 	lsl	r3, r3, #16
     2e0:	e1a02003 	mov	r2, r3
     2e4:	e55b300d 	ldrb	r3, [fp, #-13]
     2e8:	e1a03403 	lsl	r3, r3, #8
     2ec:	e1822003 	orr	r2, r2, r3
     2f0:	e55b300d 	ldrb	r3, [fp, #-13]
     2f4:	e1823003 	orr	r3, r2, r3
     2f8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     2fc:	ea000008 	b	324 <memset+0x80>
     300:	e51b3008 	ldr	r3, [fp, #-8]
     304:	e55b200d 	ldrb	r2, [fp, #-13]
     308:	e5c32000 	strb	r2, [r3]
     30c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     310:	e2433001 	sub	r3, r3, #1
     314:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     318:	e51b3008 	ldr	r3, [fp, #-8]
     31c:	e2833001 	add	r3, r3, #1
     320:	e50b3008 	str	r3, [fp, #-8]
     324:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     328:	e3530000 	cmp	r3, #0
     32c:	0a000003 	beq	340 <memset+0x9c>
     330:	e51b3008 	ldr	r3, [fp, #-8]
     334:	e2033003 	and	r3, r3, #3
     338:	e3530000 	cmp	r3, #0
     33c:	1affffef 	bne	300 <memset+0x5c>
     340:	e51b3008 	ldr	r3, [fp, #-8]
     344:	e50b300c 	str	r3, [fp, #-12]
     348:	ea000008 	b	370 <memset+0xcc>
     34c:	e51b300c 	ldr	r3, [fp, #-12]
     350:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     354:	e5832000 	str	r2, [r3]
     358:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     35c:	e2433004 	sub	r3, r3, #4
     360:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     364:	e51b300c 	ldr	r3, [fp, #-12]
     368:	e2833004 	add	r3, r3, #4
     36c:	e50b300c 	str	r3, [fp, #-12]
     370:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     374:	e3530003 	cmp	r3, #3
     378:	8afffff3 	bhi	34c <memset+0xa8>
     37c:	e51b300c 	ldr	r3, [fp, #-12]
     380:	e50b3008 	str	r3, [fp, #-8]
     384:	ea000008 	b	3ac <memset+0x108>
     388:	e51b3008 	ldr	r3, [fp, #-8]
     38c:	e55b200d 	ldrb	r2, [fp, #-13]
     390:	e5c32000 	strb	r2, [r3]
     394:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     398:	e2433001 	sub	r3, r3, #1
     39c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3a0:	e51b3008 	ldr	r3, [fp, #-8]
     3a4:	e2833001 	add	r3, r3, #1
     3a8:	e50b3008 	str	r3, [fp, #-8]
     3ac:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3b0:	e3530000 	cmp	r3, #0
     3b4:	1afffff3 	bne	388 <memset+0xe4>
     3b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3bc:	e1a00003 	mov	r0, r3
     3c0:	e28bd000 	add	sp, fp, #0
     3c4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3c8:	e12fff1e 	bx	lr

000003cc <strchr>:
     3cc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3d0:	e28db000 	add	fp, sp, #0
     3d4:	e24dd00c 	sub	sp, sp, #12
     3d8:	e50b0008 	str	r0, [fp, #-8]
     3dc:	e1a03001 	mov	r3, r1
     3e0:	e54b3009 	strb	r3, [fp, #-9]
     3e4:	ea000009 	b	410 <strchr+0x44>
     3e8:	e51b3008 	ldr	r3, [fp, #-8]
     3ec:	e5d33000 	ldrb	r3, [r3]
     3f0:	e55b2009 	ldrb	r2, [fp, #-9]
     3f4:	e1520003 	cmp	r2, r3
     3f8:	1a000001 	bne	404 <strchr+0x38>
     3fc:	e51b3008 	ldr	r3, [fp, #-8]
     400:	ea000007 	b	424 <strchr+0x58>
     404:	e51b3008 	ldr	r3, [fp, #-8]
     408:	e2833001 	add	r3, r3, #1
     40c:	e50b3008 	str	r3, [fp, #-8]
     410:	e51b3008 	ldr	r3, [fp, #-8]
     414:	e5d33000 	ldrb	r3, [r3]
     418:	e3530000 	cmp	r3, #0
     41c:	1afffff1 	bne	3e8 <strchr+0x1c>
     420:	e3a03000 	mov	r3, #0
     424:	e1a00003 	mov	r0, r3
     428:	e28bd000 	add	sp, fp, #0
     42c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     430:	e12fff1e 	bx	lr

00000434 <gets>:
     434:	e92d4800 	push	{fp, lr}
     438:	e28db004 	add	fp, sp, #4
     43c:	e24dd018 	sub	sp, sp, #24
     440:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     444:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     448:	e3a03000 	mov	r3, #0
     44c:	e50b3008 	str	r3, [fp, #-8]
     450:	ea000016 	b	4b0 <gets+0x7c>
     454:	e24b300d 	sub	r3, fp, #13
     458:	e3a02001 	mov	r2, #1
     45c:	e1a01003 	mov	r1, r3
     460:	e3a00000 	mov	r0, #0
     464:	eb00017f 	bl	a68 <read>
     468:	e50b000c 	str	r0, [fp, #-12]
     46c:	e51b300c 	ldr	r3, [fp, #-12]
     470:	e3530000 	cmp	r3, #0
     474:	da000013 	ble	4c8 <gets+0x94>
     478:	e51b3008 	ldr	r3, [fp, #-8]
     47c:	e2832001 	add	r2, r3, #1
     480:	e50b2008 	str	r2, [fp, #-8]
     484:	e1a02003 	mov	r2, r3
     488:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     48c:	e0833002 	add	r3, r3, r2
     490:	e55b200d 	ldrb	r2, [fp, #-13]
     494:	e5c32000 	strb	r2, [r3]
     498:	e55b300d 	ldrb	r3, [fp, #-13]
     49c:	e353000a 	cmp	r3, #10
     4a0:	0a000009 	beq	4cc <gets+0x98>
     4a4:	e55b300d 	ldrb	r3, [fp, #-13]
     4a8:	e353000d 	cmp	r3, #13
     4ac:	0a000006 	beq	4cc <gets+0x98>
     4b0:	e51b3008 	ldr	r3, [fp, #-8]
     4b4:	e2833001 	add	r3, r3, #1
     4b8:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     4bc:	e1520003 	cmp	r2, r3
     4c0:	caffffe3 	bgt	454 <gets+0x20>
     4c4:	ea000000 	b	4cc <gets+0x98>
     4c8:	e1a00000 	nop			@ (mov r0, r0)
     4cc:	e51b3008 	ldr	r3, [fp, #-8]
     4d0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     4d4:	e0823003 	add	r3, r2, r3
     4d8:	e3a02000 	mov	r2, #0
     4dc:	e5c32000 	strb	r2, [r3]
     4e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4e4:	e1a00003 	mov	r0, r3
     4e8:	e24bd004 	sub	sp, fp, #4
     4ec:	e8bd8800 	pop	{fp, pc}

000004f0 <stat>:
     4f0:	e92d4800 	push	{fp, lr}
     4f4:	e28db004 	add	fp, sp, #4
     4f8:	e24dd010 	sub	sp, sp, #16
     4fc:	e50b0010 	str	r0, [fp, #-16]
     500:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     504:	e3a01000 	mov	r1, #0
     508:	e51b0010 	ldr	r0, [fp, #-16]
     50c:	eb000182 	bl	b1c <open>
     510:	e50b0008 	str	r0, [fp, #-8]
     514:	e51b3008 	ldr	r3, [fp, #-8]
     518:	e3530000 	cmp	r3, #0
     51c:	aa000001 	bge	528 <stat+0x38>
     520:	e3e03000 	mvn	r3, #0
     524:	ea000006 	b	544 <stat+0x54>
     528:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     52c:	e51b0008 	ldr	r0, [fp, #-8]
     530:	eb000194 	bl	b88 <fstat>
     534:	e50b000c 	str	r0, [fp, #-12]
     538:	e51b0008 	ldr	r0, [fp, #-8]
     53c:	eb00015b 	bl	ab0 <close>
     540:	e51b300c 	ldr	r3, [fp, #-12]
     544:	e1a00003 	mov	r0, r3
     548:	e24bd004 	sub	sp, fp, #4
     54c:	e8bd8800 	pop	{fp, pc}

00000550 <atoi>:
     550:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     554:	e28db000 	add	fp, sp, #0
     558:	e24dd014 	sub	sp, sp, #20
     55c:	e50b0010 	str	r0, [fp, #-16]
     560:	e3a03000 	mov	r3, #0
     564:	e50b3008 	str	r3, [fp, #-8]
     568:	ea00000c 	b	5a0 <atoi+0x50>
     56c:	e51b2008 	ldr	r2, [fp, #-8]
     570:	e1a03002 	mov	r3, r2
     574:	e1a03103 	lsl	r3, r3, #2
     578:	e0833002 	add	r3, r3, r2
     57c:	e1a03083 	lsl	r3, r3, #1
     580:	e1a01003 	mov	r1, r3
     584:	e51b3010 	ldr	r3, [fp, #-16]
     588:	e2832001 	add	r2, r3, #1
     58c:	e50b2010 	str	r2, [fp, #-16]
     590:	e5d33000 	ldrb	r3, [r3]
     594:	e0813003 	add	r3, r1, r3
     598:	e2433030 	sub	r3, r3, #48	@ 0x30
     59c:	e50b3008 	str	r3, [fp, #-8]
     5a0:	e51b3010 	ldr	r3, [fp, #-16]
     5a4:	e5d33000 	ldrb	r3, [r3]
     5a8:	e353002f 	cmp	r3, #47	@ 0x2f
     5ac:	9a000003 	bls	5c0 <atoi+0x70>
     5b0:	e51b3010 	ldr	r3, [fp, #-16]
     5b4:	e5d33000 	ldrb	r3, [r3]
     5b8:	e3530039 	cmp	r3, #57	@ 0x39
     5bc:	9affffea 	bls	56c <atoi+0x1c>
     5c0:	e51b3010 	ldr	r3, [fp, #-16]
     5c4:	e5d33000 	ldrb	r3, [r3]
     5c8:	e3530000 	cmp	r3, #0
     5cc:	1a000001 	bne	5d8 <atoi+0x88>
     5d0:	e51b3008 	ldr	r3, [fp, #-8]
     5d4:	ea000000 	b	5dc <atoi+0x8c>
     5d8:	e3e03000 	mvn	r3, #0
     5dc:	e1a00003 	mov	r0, r3
     5e0:	e28bd000 	add	sp, fp, #0
     5e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5e8:	e12fff1e 	bx	lr

000005ec <memmove>:
     5ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5f0:	e28db000 	add	fp, sp, #0
     5f4:	e24dd01c 	sub	sp, sp, #28
     5f8:	e50b0010 	str	r0, [fp, #-16]
     5fc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     600:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     604:	e51b3010 	ldr	r3, [fp, #-16]
     608:	e50b3008 	str	r3, [fp, #-8]
     60c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     610:	e50b300c 	str	r3, [fp, #-12]
     614:	ea000007 	b	638 <memmove+0x4c>
     618:	e51b200c 	ldr	r2, [fp, #-12]
     61c:	e2823001 	add	r3, r2, #1
     620:	e50b300c 	str	r3, [fp, #-12]
     624:	e51b3008 	ldr	r3, [fp, #-8]
     628:	e2831001 	add	r1, r3, #1
     62c:	e50b1008 	str	r1, [fp, #-8]
     630:	e5d22000 	ldrb	r2, [r2]
     634:	e5c32000 	strb	r2, [r3]
     638:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     63c:	e2432001 	sub	r2, r3, #1
     640:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     644:	e3530000 	cmp	r3, #0
     648:	cafffff2 	bgt	618 <memmove+0x2c>
     64c:	e51b3010 	ldr	r3, [fp, #-16]
     650:	e1a00003 	mov	r0, r3
     654:	e28bd000 	add	sp, fp, #0
     658:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     65c:	e12fff1e 	bx	lr

00000660 <initiateLock>:
     660:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     664:	e28db000 	add	fp, sp, #0
     668:	e24dd00c 	sub	sp, sp, #12
     66c:	e50b0008 	str	r0, [fp, #-8]
     670:	e51b3008 	ldr	r3, [fp, #-8]
     674:	e3a02000 	mov	r2, #0
     678:	e5832000 	str	r2, [r3]
     67c:	e51b3008 	ldr	r3, [fp, #-8]
     680:	e3a02001 	mov	r2, #1
     684:	e5832004 	str	r2, [r3, #4]
     688:	e1a00000 	nop			@ (mov r0, r0)
     68c:	e28bd000 	add	sp, fp, #0
     690:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     694:	e12fff1e 	bx	lr

00000698 <xchg>:
     698:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     69c:	e28db000 	add	fp, sp, #0
     6a0:	e24dd00c 	sub	sp, sp, #12
     6a4:	e50b0008 	str	r0, [fp, #-8]
     6a8:	e50b100c 	str	r1, [fp, #-12]
     6ac:	e51b200c 	ldr	r2, [fp, #-12]
     6b0:	e51b3008 	ldr	r3, [fp, #-8]
     6b4:	e1931f9f 	ldrex	r1, [r3]
     6b8:	e1830f92 	strex	r0, r2, [r3]
     6bc:	e3500000 	cmp	r0, #0
     6c0:	1afffffb 	bne	6b4 <xchg+0x1c>
     6c4:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     6c8:	e1a03001 	mov	r3, r1
     6cc:	e1a00003 	mov	r0, r3
     6d0:	e28bd000 	add	sp, fp, #0
     6d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6d8:	e12fff1e 	bx	lr

000006dc <acquireLock>:
     6dc:	e92d4800 	push	{fp, lr}
     6e0:	e28db004 	add	fp, sp, #4
     6e4:	e24dd008 	sub	sp, sp, #8
     6e8:	e50b0008 	str	r0, [fp, #-8]
     6ec:	e51b3008 	ldr	r3, [fp, #-8]
     6f0:	e5933004 	ldr	r3, [r3, #4]
     6f4:	e3530000 	cmp	r3, #0
     6f8:	0a000008 	beq	720 <acquireLock+0x44>
     6fc:	e1a00000 	nop			@ (mov r0, r0)
     700:	e51b3008 	ldr	r3, [fp, #-8]
     704:	e3a01001 	mov	r1, #1
     708:	e1a00003 	mov	r0, r3
     70c:	ebffffe1 	bl	698 <xchg>
     710:	e1a03000 	mov	r3, r0
     714:	e3530000 	cmp	r3, #0
     718:	1afffff8 	bne	700 <acquireLock+0x24>
     71c:	ea000000 	b	724 <acquireLock+0x48>
     720:	e1a00000 	nop			@ (mov r0, r0)
     724:	e24bd004 	sub	sp, fp, #4
     728:	e8bd8800 	pop	{fp, pc}

0000072c <releaseLock>:
     72c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     730:	e28db000 	add	fp, sp, #0
     734:	e24dd00c 	sub	sp, sp, #12
     738:	e50b0008 	str	r0, [fp, #-8]
     73c:	e51b3008 	ldr	r3, [fp, #-8]
     740:	e5933004 	ldr	r3, [r3, #4]
     744:	e3530000 	cmp	r3, #0
     748:	0a000007 	beq	76c <releaseLock+0x40>
     74c:	e51b3008 	ldr	r3, [fp, #-8]
     750:	e5933000 	ldr	r3, [r3]
     754:	e3530001 	cmp	r3, #1
     758:	1a000005 	bne	774 <releaseLock+0x48>
     75c:	e51b3008 	ldr	r3, [fp, #-8]
     760:	e3a02000 	mov	r2, #0
     764:	e5832000 	str	r2, [r3]
     768:	ea000002 	b	778 <releaseLock+0x4c>
     76c:	e1a00000 	nop			@ (mov r0, r0)
     770:	ea000000 	b	778 <releaseLock+0x4c>
     774:	e1a00000 	nop			@ (mov r0, r0)
     778:	e28bd000 	add	sp, fp, #0
     77c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     780:	e12fff1e 	bx	lr

00000784 <initiateCondVar>:
     784:	e92d4800 	push	{fp, lr}
     788:	e28db004 	add	fp, sp, #4
     78c:	e24dd008 	sub	sp, sp, #8
     790:	e50b0008 	str	r0, [fp, #-8]
     794:	eb0001b8 	bl	e7c <getChannel>
     798:	e1a02000 	mov	r2, r0
     79c:	e51b3008 	ldr	r3, [fp, #-8]
     7a0:	e5832000 	str	r2, [r3]
     7a4:	e51b3008 	ldr	r3, [fp, #-8]
     7a8:	e3a02001 	mov	r2, #1
     7ac:	e5832004 	str	r2, [r3, #4]
     7b0:	e1a00000 	nop			@ (mov r0, r0)
     7b4:	e24bd004 	sub	sp, fp, #4
     7b8:	e8bd8800 	pop	{fp, pc}

000007bc <condWait>:
     7bc:	e92d4800 	push	{fp, lr}
     7c0:	e28db004 	add	fp, sp, #4
     7c4:	e24dd008 	sub	sp, sp, #8
     7c8:	e50b0008 	str	r0, [fp, #-8]
     7cc:	e50b100c 	str	r1, [fp, #-12]
     7d0:	e51b3008 	ldr	r3, [fp, #-8]
     7d4:	e5933004 	ldr	r3, [r3, #4]
     7d8:	e3530000 	cmp	r3, #0
     7dc:	0a00000c 	beq	814 <condWait+0x58>
     7e0:	e51b300c 	ldr	r3, [fp, #-12]
     7e4:	e5933004 	ldr	r3, [r3, #4]
     7e8:	e3530000 	cmp	r3, #0
     7ec:	0a000008 	beq	814 <condWait+0x58>
     7f0:	e51b000c 	ldr	r0, [fp, #-12]
     7f4:	ebffffcc 	bl	72c <releaseLock>
     7f8:	e51b3008 	ldr	r3, [fp, #-8]
     7fc:	e5933000 	ldr	r3, [r3]
     800:	e1a00003 	mov	r0, r3
     804:	eb000193 	bl	e58 <sleepChan>
     808:	e51b000c 	ldr	r0, [fp, #-12]
     80c:	ebffffb2 	bl	6dc <acquireLock>
     810:	ea000000 	b	818 <condWait+0x5c>
     814:	e1a00000 	nop			@ (mov r0, r0)
     818:	e24bd004 	sub	sp, fp, #4
     81c:	e8bd8800 	pop	{fp, pc}

00000820 <broadcast>:
     820:	e92d4800 	push	{fp, lr}
     824:	e28db004 	add	fp, sp, #4
     828:	e24dd008 	sub	sp, sp, #8
     82c:	e50b0008 	str	r0, [fp, #-8]
     830:	e51b3008 	ldr	r3, [fp, #-8]
     834:	e5933004 	ldr	r3, [r3, #4]
     838:	e3530000 	cmp	r3, #0
     83c:	0a000004 	beq	854 <broadcast+0x34>
     840:	e51b3008 	ldr	r3, [fp, #-8]
     844:	e5933000 	ldr	r3, [r3]
     848:	e1a00003 	mov	r0, r3
     84c:	eb000193 	bl	ea0 <sigChan>
     850:	ea000000 	b	858 <broadcast+0x38>
     854:	e1a00000 	nop			@ (mov r0, r0)
     858:	e24bd004 	sub	sp, fp, #4
     85c:	e8bd8800 	pop	{fp, pc}

00000860 <signal>:
     860:	e92d4800 	push	{fp, lr}
     864:	e28db004 	add	fp, sp, #4
     868:	e24dd008 	sub	sp, sp, #8
     86c:	e50b0008 	str	r0, [fp, #-8]
     870:	e51b3008 	ldr	r3, [fp, #-8]
     874:	e5933004 	ldr	r3, [r3, #4]
     878:	e3530000 	cmp	r3, #0
     87c:	0a000004 	beq	894 <signal+0x34>
     880:	e51b3008 	ldr	r3, [fp, #-8]
     884:	e5933000 	ldr	r3, [r3]
     888:	e1a00003 	mov	r0, r3
     88c:	eb00018c 	bl	ec4 <sigOneChan>
     890:	ea000000 	b	898 <signal+0x38>
     894:	e1a00000 	nop			@ (mov r0, r0)
     898:	e24bd004 	sub	sp, fp, #4
     89c:	e8bd8800 	pop	{fp, pc}

000008a0 <semInit>:
     8a0:	e92d4800 	push	{fp, lr}
     8a4:	e28db004 	add	fp, sp, #4
     8a8:	e24dd008 	sub	sp, sp, #8
     8ac:	e50b0008 	str	r0, [fp, #-8]
     8b0:	e50b100c 	str	r1, [fp, #-12]
     8b4:	e51b3008 	ldr	r3, [fp, #-8]
     8b8:	e51b200c 	ldr	r2, [fp, #-12]
     8bc:	e5832000 	str	r2, [r3]
     8c0:	e51b3008 	ldr	r3, [fp, #-8]
     8c4:	e2833004 	add	r3, r3, #4
     8c8:	e1a00003 	mov	r0, r3
     8cc:	ebffff63 	bl	660 <initiateLock>
     8d0:	e51b3008 	ldr	r3, [fp, #-8]
     8d4:	e283300c 	add	r3, r3, #12
     8d8:	e1a00003 	mov	r0, r3
     8dc:	ebffffa8 	bl	784 <initiateCondVar>
     8e0:	e51b3008 	ldr	r3, [fp, #-8]
     8e4:	e3a02001 	mov	r2, #1
     8e8:	e5832014 	str	r2, [r3, #20]
     8ec:	e1a00000 	nop			@ (mov r0, r0)
     8f0:	e24bd004 	sub	sp, fp, #4
     8f4:	e8bd8800 	pop	{fp, pc}

000008f8 <semUp>:
     8f8:	e92d4800 	push	{fp, lr}
     8fc:	e28db004 	add	fp, sp, #4
     900:	e24dd008 	sub	sp, sp, #8
     904:	e50b0008 	str	r0, [fp, #-8]
     908:	e51b3008 	ldr	r3, [fp, #-8]
     90c:	e2833004 	add	r3, r3, #4
     910:	e1a00003 	mov	r0, r3
     914:	ebffff70 	bl	6dc <acquireLock>
     918:	e51b3008 	ldr	r3, [fp, #-8]
     91c:	e5933000 	ldr	r3, [r3]
     920:	e2832001 	add	r2, r3, #1
     924:	e51b3008 	ldr	r3, [fp, #-8]
     928:	e5832000 	str	r2, [r3]
     92c:	e51b3008 	ldr	r3, [fp, #-8]
     930:	e283300c 	add	r3, r3, #12
     934:	e1a00003 	mov	r0, r3
     938:	ebffffc8 	bl	860 <signal>
     93c:	e51b3008 	ldr	r3, [fp, #-8]
     940:	e2833004 	add	r3, r3, #4
     944:	e1a00003 	mov	r0, r3
     948:	ebffff77 	bl	72c <releaseLock>
     94c:	e1a00000 	nop			@ (mov r0, r0)
     950:	e24bd004 	sub	sp, fp, #4
     954:	e8bd8800 	pop	{fp, pc}

00000958 <semDown>:
     958:	e92d4800 	push	{fp, lr}
     95c:	e28db004 	add	fp, sp, #4
     960:	e24dd008 	sub	sp, sp, #8
     964:	e50b0008 	str	r0, [fp, #-8]
     968:	e51b3008 	ldr	r3, [fp, #-8]
     96c:	e2833004 	add	r3, r3, #4
     970:	e1a00003 	mov	r0, r3
     974:	ebffff58 	bl	6dc <acquireLock>
     978:	ea000006 	b	998 <semDown+0x40>
     97c:	e51b3008 	ldr	r3, [fp, #-8]
     980:	e283200c 	add	r2, r3, #12
     984:	e51b3008 	ldr	r3, [fp, #-8]
     988:	e2833004 	add	r3, r3, #4
     98c:	e1a01003 	mov	r1, r3
     990:	e1a00002 	mov	r0, r2
     994:	ebffff88 	bl	7bc <condWait>
     998:	e51b3008 	ldr	r3, [fp, #-8]
     99c:	e5933000 	ldr	r3, [r3]
     9a0:	e3530000 	cmp	r3, #0
     9a4:	dafffff4 	ble	97c <semDown+0x24>
     9a8:	e51b3008 	ldr	r3, [fp, #-8]
     9ac:	e5933000 	ldr	r3, [r3]
     9b0:	e2432001 	sub	r2, r3, #1
     9b4:	e51b3008 	ldr	r3, [fp, #-8]
     9b8:	e5832000 	str	r2, [r3]
     9bc:	e51b3008 	ldr	r3, [fp, #-8]
     9c0:	e2833004 	add	r3, r3, #4
     9c4:	e1a00003 	mov	r0, r3
     9c8:	ebffff57 	bl	72c <releaseLock>
     9cc:	e1a00000 	nop			@ (mov r0, r0)
     9d0:	e24bd004 	sub	sp, fp, #4
     9d4:	e8bd8800 	pop	{fp, pc}

000009d8 <fork>:
     9d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9dc:	e1a04003 	mov	r4, r3
     9e0:	e1a03002 	mov	r3, r2
     9e4:	e1a02001 	mov	r2, r1
     9e8:	e1a01000 	mov	r1, r0
     9ec:	e3a00001 	mov	r0, #1
     9f0:	ef000000 	svc	0x00000000
     9f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9f8:	e12fff1e 	bx	lr

000009fc <exit>:
     9fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a00:	e1a04003 	mov	r4, r3
     a04:	e1a03002 	mov	r3, r2
     a08:	e1a02001 	mov	r2, r1
     a0c:	e1a01000 	mov	r1, r0
     a10:	e3a00002 	mov	r0, #2
     a14:	ef000000 	svc	0x00000000
     a18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a1c:	e12fff1e 	bx	lr

00000a20 <wait>:
     a20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a24:	e1a04003 	mov	r4, r3
     a28:	e1a03002 	mov	r3, r2
     a2c:	e1a02001 	mov	r2, r1
     a30:	e1a01000 	mov	r1, r0
     a34:	e3a00003 	mov	r0, #3
     a38:	ef000000 	svc	0x00000000
     a3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a40:	e12fff1e 	bx	lr

00000a44 <pipe>:
     a44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a48:	e1a04003 	mov	r4, r3
     a4c:	e1a03002 	mov	r3, r2
     a50:	e1a02001 	mov	r2, r1
     a54:	e1a01000 	mov	r1, r0
     a58:	e3a00004 	mov	r0, #4
     a5c:	ef000000 	svc	0x00000000
     a60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a64:	e12fff1e 	bx	lr

00000a68 <read>:
     a68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a6c:	e1a04003 	mov	r4, r3
     a70:	e1a03002 	mov	r3, r2
     a74:	e1a02001 	mov	r2, r1
     a78:	e1a01000 	mov	r1, r0
     a7c:	e3a00005 	mov	r0, #5
     a80:	ef000000 	svc	0x00000000
     a84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a88:	e12fff1e 	bx	lr

00000a8c <write>:
     a8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a90:	e1a04003 	mov	r4, r3
     a94:	e1a03002 	mov	r3, r2
     a98:	e1a02001 	mov	r2, r1
     a9c:	e1a01000 	mov	r1, r0
     aa0:	e3a00010 	mov	r0, #16
     aa4:	ef000000 	svc	0x00000000
     aa8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aac:	e12fff1e 	bx	lr

00000ab0 <close>:
     ab0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ab4:	e1a04003 	mov	r4, r3
     ab8:	e1a03002 	mov	r3, r2
     abc:	e1a02001 	mov	r2, r1
     ac0:	e1a01000 	mov	r1, r0
     ac4:	e3a00015 	mov	r0, #21
     ac8:	ef000000 	svc	0x00000000
     acc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ad0:	e12fff1e 	bx	lr

00000ad4 <kill>:
     ad4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad8:	e1a04003 	mov	r4, r3
     adc:	e1a03002 	mov	r3, r2
     ae0:	e1a02001 	mov	r2, r1
     ae4:	e1a01000 	mov	r1, r0
     ae8:	e3a00006 	mov	r0, #6
     aec:	ef000000 	svc	0x00000000
     af0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     af4:	e12fff1e 	bx	lr

00000af8 <exec>:
     af8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     afc:	e1a04003 	mov	r4, r3
     b00:	e1a03002 	mov	r3, r2
     b04:	e1a02001 	mov	r2, r1
     b08:	e1a01000 	mov	r1, r0
     b0c:	e3a00007 	mov	r0, #7
     b10:	ef000000 	svc	0x00000000
     b14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b18:	e12fff1e 	bx	lr

00000b1c <open>:
     b1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b20:	e1a04003 	mov	r4, r3
     b24:	e1a03002 	mov	r3, r2
     b28:	e1a02001 	mov	r2, r1
     b2c:	e1a01000 	mov	r1, r0
     b30:	e3a0000f 	mov	r0, #15
     b34:	ef000000 	svc	0x00000000
     b38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b3c:	e12fff1e 	bx	lr

00000b40 <mknod>:
     b40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b44:	e1a04003 	mov	r4, r3
     b48:	e1a03002 	mov	r3, r2
     b4c:	e1a02001 	mov	r2, r1
     b50:	e1a01000 	mov	r1, r0
     b54:	e3a00011 	mov	r0, #17
     b58:	ef000000 	svc	0x00000000
     b5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b60:	e12fff1e 	bx	lr

00000b64 <unlink>:
     b64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b68:	e1a04003 	mov	r4, r3
     b6c:	e1a03002 	mov	r3, r2
     b70:	e1a02001 	mov	r2, r1
     b74:	e1a01000 	mov	r1, r0
     b78:	e3a00012 	mov	r0, #18
     b7c:	ef000000 	svc	0x00000000
     b80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b84:	e12fff1e 	bx	lr

00000b88 <fstat>:
     b88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b8c:	e1a04003 	mov	r4, r3
     b90:	e1a03002 	mov	r3, r2
     b94:	e1a02001 	mov	r2, r1
     b98:	e1a01000 	mov	r1, r0
     b9c:	e3a00008 	mov	r0, #8
     ba0:	ef000000 	svc	0x00000000
     ba4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba8:	e12fff1e 	bx	lr

00000bac <link>:
     bac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bb0:	e1a04003 	mov	r4, r3
     bb4:	e1a03002 	mov	r3, r2
     bb8:	e1a02001 	mov	r2, r1
     bbc:	e1a01000 	mov	r1, r0
     bc0:	e3a00013 	mov	r0, #19
     bc4:	ef000000 	svc	0x00000000
     bc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bcc:	e12fff1e 	bx	lr

00000bd0 <mkdir>:
     bd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bd4:	e1a04003 	mov	r4, r3
     bd8:	e1a03002 	mov	r3, r2
     bdc:	e1a02001 	mov	r2, r1
     be0:	e1a01000 	mov	r1, r0
     be4:	e3a00014 	mov	r0, #20
     be8:	ef000000 	svc	0x00000000
     bec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bf0:	e12fff1e 	bx	lr

00000bf4 <chdir>:
     bf4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf8:	e1a04003 	mov	r4, r3
     bfc:	e1a03002 	mov	r3, r2
     c00:	e1a02001 	mov	r2, r1
     c04:	e1a01000 	mov	r1, r0
     c08:	e3a00009 	mov	r0, #9
     c0c:	ef000000 	svc	0x00000000
     c10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c14:	e12fff1e 	bx	lr

00000c18 <dup>:
     c18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c1c:	e1a04003 	mov	r4, r3
     c20:	e1a03002 	mov	r3, r2
     c24:	e1a02001 	mov	r2, r1
     c28:	e1a01000 	mov	r1, r0
     c2c:	e3a0000a 	mov	r0, #10
     c30:	ef000000 	svc	0x00000000
     c34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c38:	e12fff1e 	bx	lr

00000c3c <getpid>:
     c3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c40:	e1a04003 	mov	r4, r3
     c44:	e1a03002 	mov	r3, r2
     c48:	e1a02001 	mov	r2, r1
     c4c:	e1a01000 	mov	r1, r0
     c50:	e3a0000b 	mov	r0, #11
     c54:	ef000000 	svc	0x00000000
     c58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c5c:	e12fff1e 	bx	lr

00000c60 <sbrk>:
     c60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c64:	e1a04003 	mov	r4, r3
     c68:	e1a03002 	mov	r3, r2
     c6c:	e1a02001 	mov	r2, r1
     c70:	e1a01000 	mov	r1, r0
     c74:	e3a0000c 	mov	r0, #12
     c78:	ef000000 	svc	0x00000000
     c7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c80:	e12fff1e 	bx	lr

00000c84 <sleep>:
     c84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c88:	e1a04003 	mov	r4, r3
     c8c:	e1a03002 	mov	r3, r2
     c90:	e1a02001 	mov	r2, r1
     c94:	e1a01000 	mov	r1, r0
     c98:	e3a0000d 	mov	r0, #13
     c9c:	ef000000 	svc	0x00000000
     ca0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ca4:	e12fff1e 	bx	lr

00000ca8 <uptime>:
     ca8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cac:	e1a04003 	mov	r4, r3
     cb0:	e1a03002 	mov	r3, r2
     cb4:	e1a02001 	mov	r2, r1
     cb8:	e1a01000 	mov	r1, r0
     cbc:	e3a0000e 	mov	r0, #14
     cc0:	ef000000 	svc	0x00000000
     cc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc8:	e12fff1e 	bx	lr

00000ccc <getprocs>:
     ccc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cd0:	e1a04003 	mov	r4, r3
     cd4:	e1a03002 	mov	r3, r2
     cd8:	e1a02001 	mov	r2, r1
     cdc:	e1a01000 	mov	r1, r0
     ce0:	e3a00016 	mov	r0, #22
     ce4:	ef000000 	svc	0x00000000
     ce8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cec:	e12fff1e 	bx	lr

00000cf0 <settickets>:
     cf0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cf4:	e1a04003 	mov	r4, r3
     cf8:	e1a03002 	mov	r3, r2
     cfc:	e1a02001 	mov	r2, r1
     d00:	e1a01000 	mov	r1, r0
     d04:	e3a00017 	mov	r0, #23
     d08:	ef000000 	svc	0x00000000
     d0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d10:	e12fff1e 	bx	lr

00000d14 <srand>:
     d14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d18:	e1a04003 	mov	r4, r3
     d1c:	e1a03002 	mov	r3, r2
     d20:	e1a02001 	mov	r2, r1
     d24:	e1a01000 	mov	r1, r0
     d28:	e3a00018 	mov	r0, #24
     d2c:	ef000000 	svc	0x00000000
     d30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d34:	e12fff1e 	bx	lr

00000d38 <getpinfo>:
     d38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d3c:	e1a04003 	mov	r4, r3
     d40:	e1a03002 	mov	r3, r2
     d44:	e1a02001 	mov	r2, r1
     d48:	e1a01000 	mov	r1, r0
     d4c:	e3a00019 	mov	r0, #25
     d50:	ef000000 	svc	0x00000000
     d54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d58:	e12fff1e 	bx	lr

00000d5c <dumppagetable>:
     d5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d60:	e1a04003 	mov	r4, r3
     d64:	e1a03002 	mov	r3, r2
     d68:	e1a02001 	mov	r2, r1
     d6c:	e1a01000 	mov	r1, r0
     d70:	e3a0001a 	mov	r0, #26
     d74:	ef000000 	svc	0x00000000
     d78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d7c:	e12fff1e 	bx	lr

00000d80 <thread_create>:
     d80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d84:	e1a04003 	mov	r4, r3
     d88:	e1a03002 	mov	r3, r2
     d8c:	e1a02001 	mov	r2, r1
     d90:	e1a01000 	mov	r1, r0
     d94:	e3a0001b 	mov	r0, #27
     d98:	ef000000 	svc	0x00000000
     d9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     da0:	e12fff1e 	bx	lr

00000da4 <thread_exit>:
     da4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da8:	e1a04003 	mov	r4, r3
     dac:	e1a03002 	mov	r3, r2
     db0:	e1a02001 	mov	r2, r1
     db4:	e1a01000 	mov	r1, r0
     db8:	e3a0001c 	mov	r0, #28
     dbc:	ef000000 	svc	0x00000000
     dc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dc4:	e12fff1e 	bx	lr

00000dc8 <thread_join>:
     dc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dcc:	e1a04003 	mov	r4, r3
     dd0:	e1a03002 	mov	r3, r2
     dd4:	e1a02001 	mov	r2, r1
     dd8:	e1a01000 	mov	r1, r0
     ddc:	e3a0001d 	mov	r0, #29
     de0:	ef000000 	svc	0x00000000
     de4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     de8:	e12fff1e 	bx	lr

00000dec <waitpid>:
     dec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     df0:	e1a04003 	mov	r4, r3
     df4:	e1a03002 	mov	r3, r2
     df8:	e1a02001 	mov	r2, r1
     dfc:	e1a01000 	mov	r1, r0
     e00:	e3a0001e 	mov	r0, #30
     e04:	ef000000 	svc	0x00000000
     e08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e0c:	e12fff1e 	bx	lr

00000e10 <barrier_init>:
     e10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e14:	e1a04003 	mov	r4, r3
     e18:	e1a03002 	mov	r3, r2
     e1c:	e1a02001 	mov	r2, r1
     e20:	e1a01000 	mov	r1, r0
     e24:	e3a0001f 	mov	r0, #31
     e28:	ef000000 	svc	0x00000000
     e2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e30:	e12fff1e 	bx	lr

00000e34 <barrier_check>:
     e34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e38:	e1a04003 	mov	r4, r3
     e3c:	e1a03002 	mov	r3, r2
     e40:	e1a02001 	mov	r2, r1
     e44:	e1a01000 	mov	r1, r0
     e48:	e3a00020 	mov	r0, #32
     e4c:	ef000000 	svc	0x00000000
     e50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e54:	e12fff1e 	bx	lr

00000e58 <sleepChan>:
     e58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e5c:	e1a04003 	mov	r4, r3
     e60:	e1a03002 	mov	r3, r2
     e64:	e1a02001 	mov	r2, r1
     e68:	e1a01000 	mov	r1, r0
     e6c:	e3a00024 	mov	r0, #36	@ 0x24
     e70:	ef000000 	svc	0x00000000
     e74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e78:	e12fff1e 	bx	lr

00000e7c <getChannel>:
     e7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e80:	e1a04003 	mov	r4, r3
     e84:	e1a03002 	mov	r3, r2
     e88:	e1a02001 	mov	r2, r1
     e8c:	e1a01000 	mov	r1, r0
     e90:	e3a00025 	mov	r0, #37	@ 0x25
     e94:	ef000000 	svc	0x00000000
     e98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e9c:	e12fff1e 	bx	lr

00000ea0 <sigChan>:
     ea0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ea4:	e1a04003 	mov	r4, r3
     ea8:	e1a03002 	mov	r3, r2
     eac:	e1a02001 	mov	r2, r1
     eb0:	e1a01000 	mov	r1, r0
     eb4:	e3a00026 	mov	r0, #38	@ 0x26
     eb8:	ef000000 	svc	0x00000000
     ebc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ec0:	e12fff1e 	bx	lr

00000ec4 <sigOneChan>:
     ec4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ec8:	e1a04003 	mov	r4, r3
     ecc:	e1a03002 	mov	r3, r2
     ed0:	e1a02001 	mov	r2, r1
     ed4:	e1a01000 	mov	r1, r0
     ed8:	e3a00027 	mov	r0, #39	@ 0x27
     edc:	ef000000 	svc	0x00000000
     ee0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ee4:	e12fff1e 	bx	lr

00000ee8 <putc>:
     ee8:	e92d4800 	push	{fp, lr}
     eec:	e28db004 	add	fp, sp, #4
     ef0:	e24dd008 	sub	sp, sp, #8
     ef4:	e50b0008 	str	r0, [fp, #-8]
     ef8:	e1a03001 	mov	r3, r1
     efc:	e54b3009 	strb	r3, [fp, #-9]
     f00:	e24b3009 	sub	r3, fp, #9
     f04:	e3a02001 	mov	r2, #1
     f08:	e1a01003 	mov	r1, r3
     f0c:	e51b0008 	ldr	r0, [fp, #-8]
     f10:	ebfffedd 	bl	a8c <write>
     f14:	e1a00000 	nop			@ (mov r0, r0)
     f18:	e24bd004 	sub	sp, fp, #4
     f1c:	e8bd8800 	pop	{fp, pc}

00000f20 <printint>:
     f20:	e92d4800 	push	{fp, lr}
     f24:	e28db004 	add	fp, sp, #4
     f28:	e24dd030 	sub	sp, sp, #48	@ 0x30
     f2c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     f30:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     f34:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     f38:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     f3c:	e3a03000 	mov	r3, #0
     f40:	e50b300c 	str	r3, [fp, #-12]
     f44:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     f48:	e3530000 	cmp	r3, #0
     f4c:	0a000008 	beq	f74 <printint+0x54>
     f50:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f54:	e3530000 	cmp	r3, #0
     f58:	aa000005 	bge	f74 <printint+0x54>
     f5c:	e3a03001 	mov	r3, #1
     f60:	e50b300c 	str	r3, [fp, #-12]
     f64:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f68:	e2633000 	rsb	r3, r3, #0
     f6c:	e50b3010 	str	r3, [fp, #-16]
     f70:	ea000001 	b	f7c <printint+0x5c>
     f74:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f78:	e50b3010 	str	r3, [fp, #-16]
     f7c:	e3a03000 	mov	r3, #0
     f80:	e50b3008 	str	r3, [fp, #-8]
     f84:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     f88:	e51b3010 	ldr	r3, [fp, #-16]
     f8c:	e1a01002 	mov	r1, r2
     f90:	e1a00003 	mov	r0, r3
     f94:	eb0001d5 	bl	16f0 <__aeabi_uidivmod>
     f98:	e1a03001 	mov	r3, r1
     f9c:	e1a01003 	mov	r1, r3
     fa0:	e51b3008 	ldr	r3, [fp, #-8]
     fa4:	e2832001 	add	r2, r3, #1
     fa8:	e50b2008 	str	r2, [fp, #-8]
     fac:	e59f20a0 	ldr	r2, [pc, #160]	@ 1054 <printint+0x134>
     fb0:	e7d22001 	ldrb	r2, [r2, r1]
     fb4:	e2433004 	sub	r3, r3, #4
     fb8:	e083300b 	add	r3, r3, fp
     fbc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     fc0:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     fc4:	e1a01003 	mov	r1, r3
     fc8:	e51b0010 	ldr	r0, [fp, #-16]
     fcc:	eb00018a 	bl	15fc <__udivsi3>
     fd0:	e1a03000 	mov	r3, r0
     fd4:	e50b3010 	str	r3, [fp, #-16]
     fd8:	e51b3010 	ldr	r3, [fp, #-16]
     fdc:	e3530000 	cmp	r3, #0
     fe0:	1affffe7 	bne	f84 <printint+0x64>
     fe4:	e51b300c 	ldr	r3, [fp, #-12]
     fe8:	e3530000 	cmp	r3, #0
     fec:	0a00000e 	beq	102c <printint+0x10c>
     ff0:	e51b3008 	ldr	r3, [fp, #-8]
     ff4:	e2832001 	add	r2, r3, #1
     ff8:	e50b2008 	str	r2, [fp, #-8]
     ffc:	e2433004 	sub	r3, r3, #4
    1000:	e083300b 	add	r3, r3, fp
    1004:	e3a0202d 	mov	r2, #45	@ 0x2d
    1008:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    100c:	ea000006 	b	102c <printint+0x10c>
    1010:	e24b2020 	sub	r2, fp, #32
    1014:	e51b3008 	ldr	r3, [fp, #-8]
    1018:	e0823003 	add	r3, r2, r3
    101c:	e5d33000 	ldrb	r3, [r3]
    1020:	e1a01003 	mov	r1, r3
    1024:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1028:	ebffffae 	bl	ee8 <putc>
    102c:	e51b3008 	ldr	r3, [fp, #-8]
    1030:	e2433001 	sub	r3, r3, #1
    1034:	e50b3008 	str	r3, [fp, #-8]
    1038:	e51b3008 	ldr	r3, [fp, #-8]
    103c:	e3530000 	cmp	r3, #0
    1040:	aafffff2 	bge	1010 <printint+0xf0>
    1044:	e1a00000 	nop			@ (mov r0, r0)
    1048:	e1a00000 	nop			@ (mov r0, r0)
    104c:	e24bd004 	sub	sp, fp, #4
    1050:	e8bd8800 	pop	{fp, pc}
    1054:	00001768 	.word	0x00001768

00001058 <printf>:
    1058:	e92d000e 	push	{r1, r2, r3}
    105c:	e92d4800 	push	{fp, lr}
    1060:	e28db004 	add	fp, sp, #4
    1064:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1068:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    106c:	e3a03000 	mov	r3, #0
    1070:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1074:	e28b3008 	add	r3, fp, #8
    1078:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    107c:	e3a03000 	mov	r3, #0
    1080:	e50b3010 	str	r3, [fp, #-16]
    1084:	ea000074 	b	125c <printf+0x204>
    1088:	e59b2004 	ldr	r2, [fp, #4]
    108c:	e51b3010 	ldr	r3, [fp, #-16]
    1090:	e0823003 	add	r3, r2, r3
    1094:	e5d33000 	ldrb	r3, [r3]
    1098:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    109c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    10a0:	e3530000 	cmp	r3, #0
    10a4:	1a00000b 	bne	10d8 <printf+0x80>
    10a8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10ac:	e3530025 	cmp	r3, #37	@ 0x25
    10b0:	1a000002 	bne	10c0 <printf+0x68>
    10b4:	e3a03025 	mov	r3, #37	@ 0x25
    10b8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    10bc:	ea000063 	b	1250 <printf+0x1f8>
    10c0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10c4:	e6ef3073 	uxtb	r3, r3
    10c8:	e1a01003 	mov	r1, r3
    10cc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10d0:	ebffff84 	bl	ee8 <putc>
    10d4:	ea00005d 	b	1250 <printf+0x1f8>
    10d8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    10dc:	e3530025 	cmp	r3, #37	@ 0x25
    10e0:	1a00005a 	bne	1250 <printf+0x1f8>
    10e4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10e8:	e3530064 	cmp	r3, #100	@ 0x64
    10ec:	1a00000a 	bne	111c <printf+0xc4>
    10f0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10f4:	e5933000 	ldr	r3, [r3]
    10f8:	e1a01003 	mov	r1, r3
    10fc:	e3a03001 	mov	r3, #1
    1100:	e3a0200a 	mov	r2, #10
    1104:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1108:	ebffff84 	bl	f20 <printint>
    110c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1110:	e2833004 	add	r3, r3, #4
    1114:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1118:	ea00004a 	b	1248 <printf+0x1f0>
    111c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1120:	e3530078 	cmp	r3, #120	@ 0x78
    1124:	0a000002 	beq	1134 <printf+0xdc>
    1128:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    112c:	e3530070 	cmp	r3, #112	@ 0x70
    1130:	1a00000a 	bne	1160 <printf+0x108>
    1134:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1138:	e5933000 	ldr	r3, [r3]
    113c:	e1a01003 	mov	r1, r3
    1140:	e3a03000 	mov	r3, #0
    1144:	e3a02010 	mov	r2, #16
    1148:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    114c:	ebffff73 	bl	f20 <printint>
    1150:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1154:	e2833004 	add	r3, r3, #4
    1158:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    115c:	ea000039 	b	1248 <printf+0x1f0>
    1160:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1164:	e3530073 	cmp	r3, #115	@ 0x73
    1168:	1a000018 	bne	11d0 <printf+0x178>
    116c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1170:	e5933000 	ldr	r3, [r3]
    1174:	e50b300c 	str	r3, [fp, #-12]
    1178:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    117c:	e2833004 	add	r3, r3, #4
    1180:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1184:	e51b300c 	ldr	r3, [fp, #-12]
    1188:	e3530000 	cmp	r3, #0
    118c:	1a00000a 	bne	11bc <printf+0x164>
    1190:	e59f30f4 	ldr	r3, [pc, #244]	@ 128c <printf+0x234>
    1194:	e50b300c 	str	r3, [fp, #-12]
    1198:	ea000007 	b	11bc <printf+0x164>
    119c:	e51b300c 	ldr	r3, [fp, #-12]
    11a0:	e5d33000 	ldrb	r3, [r3]
    11a4:	e1a01003 	mov	r1, r3
    11a8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11ac:	ebffff4d 	bl	ee8 <putc>
    11b0:	e51b300c 	ldr	r3, [fp, #-12]
    11b4:	e2833001 	add	r3, r3, #1
    11b8:	e50b300c 	str	r3, [fp, #-12]
    11bc:	e51b300c 	ldr	r3, [fp, #-12]
    11c0:	e5d33000 	ldrb	r3, [r3]
    11c4:	e3530000 	cmp	r3, #0
    11c8:	1afffff3 	bne	119c <printf+0x144>
    11cc:	ea00001d 	b	1248 <printf+0x1f0>
    11d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11d4:	e3530063 	cmp	r3, #99	@ 0x63
    11d8:	1a000009 	bne	1204 <printf+0x1ac>
    11dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11e0:	e5933000 	ldr	r3, [r3]
    11e4:	e6ef3073 	uxtb	r3, r3
    11e8:	e1a01003 	mov	r1, r3
    11ec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11f0:	ebffff3c 	bl	ee8 <putc>
    11f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11f8:	e2833004 	add	r3, r3, #4
    11fc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1200:	ea000010 	b	1248 <printf+0x1f0>
    1204:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1208:	e3530025 	cmp	r3, #37	@ 0x25
    120c:	1a000005 	bne	1228 <printf+0x1d0>
    1210:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1214:	e6ef3073 	uxtb	r3, r3
    1218:	e1a01003 	mov	r1, r3
    121c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1220:	ebffff30 	bl	ee8 <putc>
    1224:	ea000007 	b	1248 <printf+0x1f0>
    1228:	e3a01025 	mov	r1, #37	@ 0x25
    122c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1230:	ebffff2c 	bl	ee8 <putc>
    1234:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1238:	e6ef3073 	uxtb	r3, r3
    123c:	e1a01003 	mov	r1, r3
    1240:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1244:	ebffff27 	bl	ee8 <putc>
    1248:	e3a03000 	mov	r3, #0
    124c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1250:	e51b3010 	ldr	r3, [fp, #-16]
    1254:	e2833001 	add	r3, r3, #1
    1258:	e50b3010 	str	r3, [fp, #-16]
    125c:	e59b2004 	ldr	r2, [fp, #4]
    1260:	e51b3010 	ldr	r3, [fp, #-16]
    1264:	e0823003 	add	r3, r2, r3
    1268:	e5d33000 	ldrb	r3, [r3]
    126c:	e3530000 	cmp	r3, #0
    1270:	1affff84 	bne	1088 <printf+0x30>
    1274:	e1a00000 	nop			@ (mov r0, r0)
    1278:	e1a00000 	nop			@ (mov r0, r0)
    127c:	e24bd004 	sub	sp, fp, #4
    1280:	e8bd4800 	pop	{fp, lr}
    1284:	e28dd00c 	add	sp, sp, #12
    1288:	e12fff1e 	bx	lr
    128c:	00001760 	.word	0x00001760

00001290 <free>:
    1290:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1294:	e28db000 	add	fp, sp, #0
    1298:	e24dd014 	sub	sp, sp, #20
    129c:	e50b0010 	str	r0, [fp, #-16]
    12a0:	e51b3010 	ldr	r3, [fp, #-16]
    12a4:	e2433008 	sub	r3, r3, #8
    12a8:	e50b300c 	str	r3, [fp, #-12]
    12ac:	e59f3154 	ldr	r3, [pc, #340]	@ 1408 <free+0x178>
    12b0:	e5933000 	ldr	r3, [r3]
    12b4:	e50b3008 	str	r3, [fp, #-8]
    12b8:	ea000010 	b	1300 <free+0x70>
    12bc:	e51b3008 	ldr	r3, [fp, #-8]
    12c0:	e5933000 	ldr	r3, [r3]
    12c4:	e51b2008 	ldr	r2, [fp, #-8]
    12c8:	e1520003 	cmp	r2, r3
    12cc:	3a000008 	bcc	12f4 <free+0x64>
    12d0:	e51b200c 	ldr	r2, [fp, #-12]
    12d4:	e51b3008 	ldr	r3, [fp, #-8]
    12d8:	e1520003 	cmp	r2, r3
    12dc:	8a000010 	bhi	1324 <free+0x94>
    12e0:	e51b3008 	ldr	r3, [fp, #-8]
    12e4:	e5933000 	ldr	r3, [r3]
    12e8:	e51b200c 	ldr	r2, [fp, #-12]
    12ec:	e1520003 	cmp	r2, r3
    12f0:	3a00000b 	bcc	1324 <free+0x94>
    12f4:	e51b3008 	ldr	r3, [fp, #-8]
    12f8:	e5933000 	ldr	r3, [r3]
    12fc:	e50b3008 	str	r3, [fp, #-8]
    1300:	e51b200c 	ldr	r2, [fp, #-12]
    1304:	e51b3008 	ldr	r3, [fp, #-8]
    1308:	e1520003 	cmp	r2, r3
    130c:	9affffea 	bls	12bc <free+0x2c>
    1310:	e51b3008 	ldr	r3, [fp, #-8]
    1314:	e5933000 	ldr	r3, [r3]
    1318:	e51b200c 	ldr	r2, [fp, #-12]
    131c:	e1520003 	cmp	r2, r3
    1320:	2affffe5 	bcs	12bc <free+0x2c>
    1324:	e51b300c 	ldr	r3, [fp, #-12]
    1328:	e5933004 	ldr	r3, [r3, #4]
    132c:	e1a03183 	lsl	r3, r3, #3
    1330:	e51b200c 	ldr	r2, [fp, #-12]
    1334:	e0822003 	add	r2, r2, r3
    1338:	e51b3008 	ldr	r3, [fp, #-8]
    133c:	e5933000 	ldr	r3, [r3]
    1340:	e1520003 	cmp	r2, r3
    1344:	1a00000d 	bne	1380 <free+0xf0>
    1348:	e51b300c 	ldr	r3, [fp, #-12]
    134c:	e5932004 	ldr	r2, [r3, #4]
    1350:	e51b3008 	ldr	r3, [fp, #-8]
    1354:	e5933000 	ldr	r3, [r3]
    1358:	e5933004 	ldr	r3, [r3, #4]
    135c:	e0822003 	add	r2, r2, r3
    1360:	e51b300c 	ldr	r3, [fp, #-12]
    1364:	e5832004 	str	r2, [r3, #4]
    1368:	e51b3008 	ldr	r3, [fp, #-8]
    136c:	e5933000 	ldr	r3, [r3]
    1370:	e5932000 	ldr	r2, [r3]
    1374:	e51b300c 	ldr	r3, [fp, #-12]
    1378:	e5832000 	str	r2, [r3]
    137c:	ea000003 	b	1390 <free+0x100>
    1380:	e51b3008 	ldr	r3, [fp, #-8]
    1384:	e5932000 	ldr	r2, [r3]
    1388:	e51b300c 	ldr	r3, [fp, #-12]
    138c:	e5832000 	str	r2, [r3]
    1390:	e51b3008 	ldr	r3, [fp, #-8]
    1394:	e5933004 	ldr	r3, [r3, #4]
    1398:	e1a03183 	lsl	r3, r3, #3
    139c:	e51b2008 	ldr	r2, [fp, #-8]
    13a0:	e0823003 	add	r3, r2, r3
    13a4:	e51b200c 	ldr	r2, [fp, #-12]
    13a8:	e1520003 	cmp	r2, r3
    13ac:	1a00000b 	bne	13e0 <free+0x150>
    13b0:	e51b3008 	ldr	r3, [fp, #-8]
    13b4:	e5932004 	ldr	r2, [r3, #4]
    13b8:	e51b300c 	ldr	r3, [fp, #-12]
    13bc:	e5933004 	ldr	r3, [r3, #4]
    13c0:	e0822003 	add	r2, r2, r3
    13c4:	e51b3008 	ldr	r3, [fp, #-8]
    13c8:	e5832004 	str	r2, [r3, #4]
    13cc:	e51b300c 	ldr	r3, [fp, #-12]
    13d0:	e5932000 	ldr	r2, [r3]
    13d4:	e51b3008 	ldr	r3, [fp, #-8]
    13d8:	e5832000 	str	r2, [r3]
    13dc:	ea000002 	b	13ec <free+0x15c>
    13e0:	e51b3008 	ldr	r3, [fp, #-8]
    13e4:	e51b200c 	ldr	r2, [fp, #-12]
    13e8:	e5832000 	str	r2, [r3]
    13ec:	e59f2014 	ldr	r2, [pc, #20]	@ 1408 <free+0x178>
    13f0:	e51b3008 	ldr	r3, [fp, #-8]
    13f4:	e5823000 	str	r3, [r2]
    13f8:	e1a00000 	nop			@ (mov r0, r0)
    13fc:	e28bd000 	add	sp, fp, #0
    1400:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1404:	e12fff1e 	bx	lr
    1408:	00001784 	.word	0x00001784

0000140c <morecore>:
    140c:	e92d4800 	push	{fp, lr}
    1410:	e28db004 	add	fp, sp, #4
    1414:	e24dd010 	sub	sp, sp, #16
    1418:	e50b0010 	str	r0, [fp, #-16]
    141c:	e51b3010 	ldr	r3, [fp, #-16]
    1420:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1424:	2a000001 	bcs	1430 <morecore+0x24>
    1428:	e3a03a01 	mov	r3, #4096	@ 0x1000
    142c:	e50b3010 	str	r3, [fp, #-16]
    1430:	e51b3010 	ldr	r3, [fp, #-16]
    1434:	e1a03183 	lsl	r3, r3, #3
    1438:	e1a00003 	mov	r0, r3
    143c:	ebfffe07 	bl	c60 <sbrk>
    1440:	e50b0008 	str	r0, [fp, #-8]
    1444:	e51b3008 	ldr	r3, [fp, #-8]
    1448:	e3730001 	cmn	r3, #1
    144c:	1a000001 	bne	1458 <morecore+0x4c>
    1450:	e3a03000 	mov	r3, #0
    1454:	ea00000a 	b	1484 <morecore+0x78>
    1458:	e51b3008 	ldr	r3, [fp, #-8]
    145c:	e50b300c 	str	r3, [fp, #-12]
    1460:	e51b300c 	ldr	r3, [fp, #-12]
    1464:	e51b2010 	ldr	r2, [fp, #-16]
    1468:	e5832004 	str	r2, [r3, #4]
    146c:	e51b300c 	ldr	r3, [fp, #-12]
    1470:	e2833008 	add	r3, r3, #8
    1474:	e1a00003 	mov	r0, r3
    1478:	ebffff84 	bl	1290 <free>
    147c:	e59f300c 	ldr	r3, [pc, #12]	@ 1490 <morecore+0x84>
    1480:	e5933000 	ldr	r3, [r3]
    1484:	e1a00003 	mov	r0, r3
    1488:	e24bd004 	sub	sp, fp, #4
    148c:	e8bd8800 	pop	{fp, pc}
    1490:	00001784 	.word	0x00001784

00001494 <malloc>:
    1494:	e92d4800 	push	{fp, lr}
    1498:	e28db004 	add	fp, sp, #4
    149c:	e24dd018 	sub	sp, sp, #24
    14a0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    14a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    14a8:	e2833007 	add	r3, r3, #7
    14ac:	e1a031a3 	lsr	r3, r3, #3
    14b0:	e2833001 	add	r3, r3, #1
    14b4:	e50b3010 	str	r3, [fp, #-16]
    14b8:	e59f3134 	ldr	r3, [pc, #308]	@ 15f4 <malloc+0x160>
    14bc:	e5933000 	ldr	r3, [r3]
    14c0:	e50b300c 	str	r3, [fp, #-12]
    14c4:	e51b300c 	ldr	r3, [fp, #-12]
    14c8:	e3530000 	cmp	r3, #0
    14cc:	1a00000b 	bne	1500 <malloc+0x6c>
    14d0:	e59f3120 	ldr	r3, [pc, #288]	@ 15f8 <malloc+0x164>
    14d4:	e50b300c 	str	r3, [fp, #-12]
    14d8:	e59f2114 	ldr	r2, [pc, #276]	@ 15f4 <malloc+0x160>
    14dc:	e51b300c 	ldr	r3, [fp, #-12]
    14e0:	e5823000 	str	r3, [r2]
    14e4:	e59f3108 	ldr	r3, [pc, #264]	@ 15f4 <malloc+0x160>
    14e8:	e5933000 	ldr	r3, [r3]
    14ec:	e59f2104 	ldr	r2, [pc, #260]	@ 15f8 <malloc+0x164>
    14f0:	e5823000 	str	r3, [r2]
    14f4:	e59f30fc 	ldr	r3, [pc, #252]	@ 15f8 <malloc+0x164>
    14f8:	e3a02000 	mov	r2, #0
    14fc:	e5832004 	str	r2, [r3, #4]
    1500:	e51b300c 	ldr	r3, [fp, #-12]
    1504:	e5933000 	ldr	r3, [r3]
    1508:	e50b3008 	str	r3, [fp, #-8]
    150c:	e51b3008 	ldr	r3, [fp, #-8]
    1510:	e5933004 	ldr	r3, [r3, #4]
    1514:	e51b2010 	ldr	r2, [fp, #-16]
    1518:	e1520003 	cmp	r2, r3
    151c:	8a00001e 	bhi	159c <malloc+0x108>
    1520:	e51b3008 	ldr	r3, [fp, #-8]
    1524:	e5933004 	ldr	r3, [r3, #4]
    1528:	e51b2010 	ldr	r2, [fp, #-16]
    152c:	e1520003 	cmp	r2, r3
    1530:	1a000004 	bne	1548 <malloc+0xb4>
    1534:	e51b3008 	ldr	r3, [fp, #-8]
    1538:	e5932000 	ldr	r2, [r3]
    153c:	e51b300c 	ldr	r3, [fp, #-12]
    1540:	e5832000 	str	r2, [r3]
    1544:	ea00000e 	b	1584 <malloc+0xf0>
    1548:	e51b3008 	ldr	r3, [fp, #-8]
    154c:	e5932004 	ldr	r2, [r3, #4]
    1550:	e51b3010 	ldr	r3, [fp, #-16]
    1554:	e0422003 	sub	r2, r2, r3
    1558:	e51b3008 	ldr	r3, [fp, #-8]
    155c:	e5832004 	str	r2, [r3, #4]
    1560:	e51b3008 	ldr	r3, [fp, #-8]
    1564:	e5933004 	ldr	r3, [r3, #4]
    1568:	e1a03183 	lsl	r3, r3, #3
    156c:	e51b2008 	ldr	r2, [fp, #-8]
    1570:	e0823003 	add	r3, r2, r3
    1574:	e50b3008 	str	r3, [fp, #-8]
    1578:	e51b3008 	ldr	r3, [fp, #-8]
    157c:	e51b2010 	ldr	r2, [fp, #-16]
    1580:	e5832004 	str	r2, [r3, #4]
    1584:	e59f2068 	ldr	r2, [pc, #104]	@ 15f4 <malloc+0x160>
    1588:	e51b300c 	ldr	r3, [fp, #-12]
    158c:	e5823000 	str	r3, [r2]
    1590:	e51b3008 	ldr	r3, [fp, #-8]
    1594:	e2833008 	add	r3, r3, #8
    1598:	ea000012 	b	15e8 <malloc+0x154>
    159c:	e59f3050 	ldr	r3, [pc, #80]	@ 15f4 <malloc+0x160>
    15a0:	e5933000 	ldr	r3, [r3]
    15a4:	e51b2008 	ldr	r2, [fp, #-8]
    15a8:	e1520003 	cmp	r2, r3
    15ac:	1a000007 	bne	15d0 <malloc+0x13c>
    15b0:	e51b0010 	ldr	r0, [fp, #-16]
    15b4:	ebffff94 	bl	140c <morecore>
    15b8:	e50b0008 	str	r0, [fp, #-8]
    15bc:	e51b3008 	ldr	r3, [fp, #-8]
    15c0:	e3530000 	cmp	r3, #0
    15c4:	1a000001 	bne	15d0 <malloc+0x13c>
    15c8:	e3a03000 	mov	r3, #0
    15cc:	ea000005 	b	15e8 <malloc+0x154>
    15d0:	e51b3008 	ldr	r3, [fp, #-8]
    15d4:	e50b300c 	str	r3, [fp, #-12]
    15d8:	e51b3008 	ldr	r3, [fp, #-8]
    15dc:	e5933000 	ldr	r3, [r3]
    15e0:	e50b3008 	str	r3, [fp, #-8]
    15e4:	eaffffc8 	b	150c <malloc+0x78>
    15e8:	e1a00003 	mov	r0, r3
    15ec:	e24bd004 	sub	sp, fp, #4
    15f0:	e8bd8800 	pop	{fp, pc}
    15f4:	00001784 	.word	0x00001784
    15f8:	0000177c 	.word	0x0000177c

000015fc <__udivsi3>:
    15fc:	e2512001 	subs	r2, r1, #1
    1600:	012fff1e 	bxeq	lr
    1604:	3a000036 	bcc	16e4 <__udivsi3+0xe8>
    1608:	e1500001 	cmp	r0, r1
    160c:	9a000022 	bls	169c <__udivsi3+0xa0>
    1610:	e1110002 	tst	r1, r2
    1614:	0a000023 	beq	16a8 <__udivsi3+0xac>
    1618:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    161c:	01a01181 	lsleq	r1, r1, #3
    1620:	03a03008 	moveq	r3, #8
    1624:	13a03001 	movne	r3, #1
    1628:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    162c:	31510000 	cmpcc	r1, r0
    1630:	31a01201 	lslcc	r1, r1, #4
    1634:	31a03203 	lslcc	r3, r3, #4
    1638:	3afffffa 	bcc	1628 <__udivsi3+0x2c>
    163c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1640:	31510000 	cmpcc	r1, r0
    1644:	31a01081 	lslcc	r1, r1, #1
    1648:	31a03083 	lslcc	r3, r3, #1
    164c:	3afffffa 	bcc	163c <__udivsi3+0x40>
    1650:	e3a02000 	mov	r2, #0
    1654:	e1500001 	cmp	r0, r1
    1658:	20400001 	subcs	r0, r0, r1
    165c:	21822003 	orrcs	r2, r2, r3
    1660:	e15000a1 	cmp	r0, r1, lsr #1
    1664:	204000a1 	subcs	r0, r0, r1, lsr #1
    1668:	218220a3 	orrcs	r2, r2, r3, lsr #1
    166c:	e1500121 	cmp	r0, r1, lsr #2
    1670:	20400121 	subcs	r0, r0, r1, lsr #2
    1674:	21822123 	orrcs	r2, r2, r3, lsr #2
    1678:	e15001a1 	cmp	r0, r1, lsr #3
    167c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1680:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1684:	e3500000 	cmp	r0, #0
    1688:	11b03223 	lsrsne	r3, r3, #4
    168c:	11a01221 	lsrne	r1, r1, #4
    1690:	1affffef 	bne	1654 <__udivsi3+0x58>
    1694:	e1a00002 	mov	r0, r2
    1698:	e12fff1e 	bx	lr
    169c:	03a00001 	moveq	r0, #1
    16a0:	13a00000 	movne	r0, #0
    16a4:	e12fff1e 	bx	lr
    16a8:	e3510801 	cmp	r1, #65536	@ 0x10000
    16ac:	21a01821 	lsrcs	r1, r1, #16
    16b0:	23a02010 	movcs	r2, #16
    16b4:	33a02000 	movcc	r2, #0
    16b8:	e3510c01 	cmp	r1, #256	@ 0x100
    16bc:	21a01421 	lsrcs	r1, r1, #8
    16c0:	22822008 	addcs	r2, r2, #8
    16c4:	e3510010 	cmp	r1, #16
    16c8:	21a01221 	lsrcs	r1, r1, #4
    16cc:	22822004 	addcs	r2, r2, #4
    16d0:	e3510004 	cmp	r1, #4
    16d4:	82822003 	addhi	r2, r2, #3
    16d8:	908220a1 	addls	r2, r2, r1, lsr #1
    16dc:	e1a00230 	lsr	r0, r0, r2
    16e0:	e12fff1e 	bx	lr
    16e4:	e3500000 	cmp	r0, #0
    16e8:	13e00000 	mvnne	r0, #0
    16ec:	ea000007 	b	1710 <__aeabi_idiv0>

000016f0 <__aeabi_uidivmod>:
    16f0:	e3510000 	cmp	r1, #0
    16f4:	0afffffa 	beq	16e4 <__udivsi3+0xe8>
    16f8:	e92d4003 	push	{r0, r1, lr}
    16fc:	ebffffbe 	bl	15fc <__udivsi3>
    1700:	e8bd4006 	pop	{r1, r2, lr}
    1704:	e0030092 	mul	r3, r2, r0
    1708:	e0411003 	sub	r1, r1, r3
    170c:	e12fff1e 	bx	lr

00001710 <__aeabi_idiv0>:
    1710:	e12fff1e 	bx	lr
