
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
      90:	eb0003b7 	bl	f74 <printf>
      94:	eb00021f 	bl	918 <exit>
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
      c4:	eb0003aa 	bl	f74 <printf>
      c8:	eb000212 	bl	918 <exit>
      cc:	e3a03000 	mov	r3, #0
      d0:	e50b3008 	str	r3, [fp, #-8]
      d4:	ea00001c 	b	14c <main+0xe4>
      d8:	e51b3008 	ldr	r3, [fp, #-8]
      dc:	e2833001 	add	r3, r3, #1
      e0:	e1a02003 	mov	r2, r3
      e4:	e59f107c 	ldr	r1, [pc, #124]	@ 168 <main+0x100>
      e8:	e3a00001 	mov	r0, #1
      ec:	eb0003a0 	bl	f74 <printf>
      f0:	e3a0000a 	mov	r0, #10
      f4:	eb0002a9 	bl	ba0 <sleep>
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
     120:	eb000393 	bl	f74 <printf>
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
     15c:	eb0001ed 	bl	918 <exit>
     160:	00001630 	.word	0x00001630
     164:	00001650 	.word	0x00001650
     168:	00001674 	.word	0x00001674
     16c:	00001678 	.word	0x00001678

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
     464:	eb000146 	bl	984 <read>
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
     50c:	eb000149 	bl	a38 <open>
     510:	e50b0008 	str	r0, [fp, #-8]
     514:	e51b3008 	ldr	r3, [fp, #-8]
     518:	e3530000 	cmp	r3, #0
     51c:	aa000001 	bge	528 <stat+0x38>
     520:	e3e03000 	mvn	r3, #0
     524:	ea000006 	b	544 <stat+0x54>
     528:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     52c:	e51b0008 	ldr	r0, [fp, #-8]
     530:	eb00015b 	bl	aa4 <fstat>
     534:	e50b000c 	str	r0, [fp, #-12]
     538:	e51b0008 	ldr	r0, [fp, #-8]
     53c:	eb000122 	bl	9cc <close>
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

00000698 <acquireLock>:
     698:	e92d4800 	push	{fp, lr}
     69c:	e28db004 	add	fp, sp, #4
     6a0:	e24dd008 	sub	sp, sp, #8
     6a4:	e50b0008 	str	r0, [fp, #-8]
     6a8:	ea000001 	b	6b4 <acquireLock+0x1c>
     6ac:	e3a00001 	mov	r0, #1
     6b0:	eb00013a 	bl	ba0 <sleep>
     6b4:	e51b2008 	ldr	r2, [fp, #-8]
     6b8:	e3a01001 	mov	r1, #1
     6bc:	e1923f9f 	ldrex	r3, [r2]
     6c0:	e1820f91 	strex	r0, r1, [r2]
     6c4:	e3500000 	cmp	r0, #0
     6c8:	1afffffb 	bne	6bc <acquireLock+0x24>
     6cc:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     6d0:	e3530001 	cmp	r3, #1
     6d4:	0afffff4 	beq	6ac <acquireLock+0x14>
     6d8:	e1a00000 	nop			@ (mov r0, r0)
     6dc:	e1a00000 	nop			@ (mov r0, r0)
     6e0:	e24bd004 	sub	sp, fp, #4
     6e4:	e8bd8800 	pop	{fp, pc}

000006e8 <releaseLock>:
     6e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6ec:	e28db000 	add	fp, sp, #0
     6f0:	e24dd00c 	sub	sp, sp, #12
     6f4:	e50b0008 	str	r0, [fp, #-8]
     6f8:	e51b3008 	ldr	r3, [fp, #-8]
     6fc:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     700:	e3a02000 	mov	r2, #0
     704:	e5832000 	str	r2, [r3]
     708:	e1a00000 	nop			@ (mov r0, r0)
     70c:	e28bd000 	add	sp, fp, #0
     710:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     714:	e12fff1e 	bx	lr

00000718 <initiateCondVar>:
     718:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     71c:	e28db000 	add	fp, sp, #0
     720:	e24dd00c 	sub	sp, sp, #12
     724:	e50b0008 	str	r0, [fp, #-8]
     728:	e51b3008 	ldr	r3, [fp, #-8]
     72c:	e3a02000 	mov	r2, #0
     730:	e5832000 	str	r2, [r3]
     734:	e51b3008 	ldr	r3, [fp, #-8]
     738:	e3a02001 	mov	r2, #1
     73c:	e5832004 	str	r2, [r3, #4]
     740:	e1a00000 	nop			@ (mov r0, r0)
     744:	e28bd000 	add	sp, fp, #0
     748:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     74c:	e12fff1e 	bx	lr

00000750 <condWait>:
     750:	e92d4800 	push	{fp, lr}
     754:	e28db004 	add	fp, sp, #4
     758:	e24dd008 	sub	sp, sp, #8
     75c:	e50b0008 	str	r0, [fp, #-8]
     760:	e50b100c 	str	r1, [fp, #-12]
     764:	e51b000c 	ldr	r0, [fp, #-12]
     768:	ebffffde 	bl	6e8 <releaseLock>
     76c:	e51b3008 	ldr	r3, [fp, #-8]
     770:	e5933000 	ldr	r3, [r3]
     774:	e1a00003 	mov	r0, r3
     778:	eb00017d 	bl	d74 <sleepChan>
     77c:	e51b000c 	ldr	r0, [fp, #-12]
     780:	ebffffc4 	bl	698 <acquireLock>
     784:	e1a00000 	nop			@ (mov r0, r0)
     788:	e24bd004 	sub	sp, fp, #4
     78c:	e8bd8800 	pop	{fp, pc}

00000790 <broadcast>:
     790:	e92d4800 	push	{fp, lr}
     794:	e28db004 	add	fp, sp, #4
     798:	e24dd008 	sub	sp, sp, #8
     79c:	e50b0008 	str	r0, [fp, #-8]
     7a0:	e51b3008 	ldr	r3, [fp, #-8]
     7a4:	e5933000 	ldr	r3, [r3]
     7a8:	e1a00003 	mov	r0, r3
     7ac:	eb000182 	bl	dbc <sigChan>
     7b0:	e1a00000 	nop			@ (mov r0, r0)
     7b4:	e24bd004 	sub	sp, fp, #4
     7b8:	e8bd8800 	pop	{fp, pc}

000007bc <semInit>:
     7bc:	e92d4800 	push	{fp, lr}
     7c0:	e28db004 	add	fp, sp, #4
     7c4:	e24dd008 	sub	sp, sp, #8
     7c8:	e50b0008 	str	r0, [fp, #-8]
     7cc:	e50b100c 	str	r1, [fp, #-12]
     7d0:	e51b3008 	ldr	r3, [fp, #-8]
     7d4:	e51b200c 	ldr	r2, [fp, #-12]
     7d8:	e5832000 	str	r2, [r3]
     7dc:	e51b3008 	ldr	r3, [fp, #-8]
     7e0:	e2833004 	add	r3, r3, #4
     7e4:	e1a00003 	mov	r0, r3
     7e8:	ebffff9c 	bl	660 <initiateLock>
     7ec:	e51b3008 	ldr	r3, [fp, #-8]
     7f0:	e283300c 	add	r3, r3, #12
     7f4:	e1a00003 	mov	r0, r3
     7f8:	ebffffc6 	bl	718 <initiateCondVar>
     7fc:	e51b3008 	ldr	r3, [fp, #-8]
     800:	e3a02001 	mov	r2, #1
     804:	e5832014 	str	r2, [r3, #20]
     808:	e1a00000 	nop			@ (mov r0, r0)
     80c:	e24bd004 	sub	sp, fp, #4
     810:	e8bd8800 	pop	{fp, pc}

00000814 <semUp>:
     814:	e92d4800 	push	{fp, lr}
     818:	e28db004 	add	fp, sp, #4
     81c:	e24dd008 	sub	sp, sp, #8
     820:	e50b0008 	str	r0, [fp, #-8]
     824:	e51b3008 	ldr	r3, [fp, #-8]
     828:	e2833004 	add	r3, r3, #4
     82c:	e1a00003 	mov	r0, r3
     830:	ebffff98 	bl	698 <acquireLock>
     834:	e51b3008 	ldr	r3, [fp, #-8]
     838:	e5933000 	ldr	r3, [r3]
     83c:	e2832001 	add	r2, r3, #1
     840:	e51b3008 	ldr	r3, [fp, #-8]
     844:	e5832000 	str	r2, [r3]
     848:	e51b3008 	ldr	r3, [fp, #-8]
     84c:	e283300c 	add	r3, r3, #12
     850:	e1a00003 	mov	r0, r3
     854:	ebffffcd 	bl	790 <broadcast>
     858:	e51b3008 	ldr	r3, [fp, #-8]
     85c:	e2833004 	add	r3, r3, #4
     860:	e1a00003 	mov	r0, r3
     864:	ebffff9f 	bl	6e8 <releaseLock>
     868:	e1a00000 	nop			@ (mov r0, r0)
     86c:	e24bd004 	sub	sp, fp, #4
     870:	e8bd8800 	pop	{fp, pc}

00000874 <semDown>:
     874:	e92d4800 	push	{fp, lr}
     878:	e28db004 	add	fp, sp, #4
     87c:	e24dd008 	sub	sp, sp, #8
     880:	e50b0008 	str	r0, [fp, #-8]
     884:	e51b3008 	ldr	r3, [fp, #-8]
     888:	e2833004 	add	r3, r3, #4
     88c:	e1a00003 	mov	r0, r3
     890:	ebffff80 	bl	698 <acquireLock>
     894:	ea000006 	b	8b4 <semDown+0x40>
     898:	e51b3008 	ldr	r3, [fp, #-8]
     89c:	e283200c 	add	r2, r3, #12
     8a0:	e51b3008 	ldr	r3, [fp, #-8]
     8a4:	e2833004 	add	r3, r3, #4
     8a8:	e1a01003 	mov	r1, r3
     8ac:	e1a00002 	mov	r0, r2
     8b0:	ebffffa6 	bl	750 <condWait>
     8b4:	e51b3008 	ldr	r3, [fp, #-8]
     8b8:	e5933000 	ldr	r3, [r3]
     8bc:	e3530000 	cmp	r3, #0
     8c0:	dafffff4 	ble	898 <semDown+0x24>
     8c4:	e51b3008 	ldr	r3, [fp, #-8]
     8c8:	e5933000 	ldr	r3, [r3]
     8cc:	e2432001 	sub	r2, r3, #1
     8d0:	e51b3008 	ldr	r3, [fp, #-8]
     8d4:	e5832000 	str	r2, [r3]
     8d8:	e51b3008 	ldr	r3, [fp, #-8]
     8dc:	e2833004 	add	r3, r3, #4
     8e0:	e1a00003 	mov	r0, r3
     8e4:	ebffff7f 	bl	6e8 <releaseLock>
     8e8:	e1a00000 	nop			@ (mov r0, r0)
     8ec:	e24bd004 	sub	sp, fp, #4
     8f0:	e8bd8800 	pop	{fp, pc}

000008f4 <fork>:
     8f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8f8:	e1a04003 	mov	r4, r3
     8fc:	e1a03002 	mov	r3, r2
     900:	e1a02001 	mov	r2, r1
     904:	e1a01000 	mov	r1, r0
     908:	e3a00001 	mov	r0, #1
     90c:	ef000000 	svc	0x00000000
     910:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     914:	e12fff1e 	bx	lr

00000918 <exit>:
     918:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     91c:	e1a04003 	mov	r4, r3
     920:	e1a03002 	mov	r3, r2
     924:	e1a02001 	mov	r2, r1
     928:	e1a01000 	mov	r1, r0
     92c:	e3a00002 	mov	r0, #2
     930:	ef000000 	svc	0x00000000
     934:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     938:	e12fff1e 	bx	lr

0000093c <wait>:
     93c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     940:	e1a04003 	mov	r4, r3
     944:	e1a03002 	mov	r3, r2
     948:	e1a02001 	mov	r2, r1
     94c:	e1a01000 	mov	r1, r0
     950:	e3a00003 	mov	r0, #3
     954:	ef000000 	svc	0x00000000
     958:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     95c:	e12fff1e 	bx	lr

00000960 <pipe>:
     960:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     964:	e1a04003 	mov	r4, r3
     968:	e1a03002 	mov	r3, r2
     96c:	e1a02001 	mov	r2, r1
     970:	e1a01000 	mov	r1, r0
     974:	e3a00004 	mov	r0, #4
     978:	ef000000 	svc	0x00000000
     97c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     980:	e12fff1e 	bx	lr

00000984 <read>:
     984:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     988:	e1a04003 	mov	r4, r3
     98c:	e1a03002 	mov	r3, r2
     990:	e1a02001 	mov	r2, r1
     994:	e1a01000 	mov	r1, r0
     998:	e3a00005 	mov	r0, #5
     99c:	ef000000 	svc	0x00000000
     9a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a4:	e12fff1e 	bx	lr

000009a8 <write>:
     9a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9ac:	e1a04003 	mov	r4, r3
     9b0:	e1a03002 	mov	r3, r2
     9b4:	e1a02001 	mov	r2, r1
     9b8:	e1a01000 	mov	r1, r0
     9bc:	e3a00010 	mov	r0, #16
     9c0:	ef000000 	svc	0x00000000
     9c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c8:	e12fff1e 	bx	lr

000009cc <close>:
     9cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9d0:	e1a04003 	mov	r4, r3
     9d4:	e1a03002 	mov	r3, r2
     9d8:	e1a02001 	mov	r2, r1
     9dc:	e1a01000 	mov	r1, r0
     9e0:	e3a00015 	mov	r0, #21
     9e4:	ef000000 	svc	0x00000000
     9e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9ec:	e12fff1e 	bx	lr

000009f0 <kill>:
     9f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f4:	e1a04003 	mov	r4, r3
     9f8:	e1a03002 	mov	r3, r2
     9fc:	e1a02001 	mov	r2, r1
     a00:	e1a01000 	mov	r1, r0
     a04:	e3a00006 	mov	r0, #6
     a08:	ef000000 	svc	0x00000000
     a0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a10:	e12fff1e 	bx	lr

00000a14 <exec>:
     a14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a18:	e1a04003 	mov	r4, r3
     a1c:	e1a03002 	mov	r3, r2
     a20:	e1a02001 	mov	r2, r1
     a24:	e1a01000 	mov	r1, r0
     a28:	e3a00007 	mov	r0, #7
     a2c:	ef000000 	svc	0x00000000
     a30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a34:	e12fff1e 	bx	lr

00000a38 <open>:
     a38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a3c:	e1a04003 	mov	r4, r3
     a40:	e1a03002 	mov	r3, r2
     a44:	e1a02001 	mov	r2, r1
     a48:	e1a01000 	mov	r1, r0
     a4c:	e3a0000f 	mov	r0, #15
     a50:	ef000000 	svc	0x00000000
     a54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a58:	e12fff1e 	bx	lr

00000a5c <mknod>:
     a5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a60:	e1a04003 	mov	r4, r3
     a64:	e1a03002 	mov	r3, r2
     a68:	e1a02001 	mov	r2, r1
     a6c:	e1a01000 	mov	r1, r0
     a70:	e3a00011 	mov	r0, #17
     a74:	ef000000 	svc	0x00000000
     a78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a7c:	e12fff1e 	bx	lr

00000a80 <unlink>:
     a80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a84:	e1a04003 	mov	r4, r3
     a88:	e1a03002 	mov	r3, r2
     a8c:	e1a02001 	mov	r2, r1
     a90:	e1a01000 	mov	r1, r0
     a94:	e3a00012 	mov	r0, #18
     a98:	ef000000 	svc	0x00000000
     a9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aa0:	e12fff1e 	bx	lr

00000aa4 <fstat>:
     aa4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa8:	e1a04003 	mov	r4, r3
     aac:	e1a03002 	mov	r3, r2
     ab0:	e1a02001 	mov	r2, r1
     ab4:	e1a01000 	mov	r1, r0
     ab8:	e3a00008 	mov	r0, #8
     abc:	ef000000 	svc	0x00000000
     ac0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac4:	e12fff1e 	bx	lr

00000ac8 <link>:
     ac8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     acc:	e1a04003 	mov	r4, r3
     ad0:	e1a03002 	mov	r3, r2
     ad4:	e1a02001 	mov	r2, r1
     ad8:	e1a01000 	mov	r1, r0
     adc:	e3a00013 	mov	r0, #19
     ae0:	ef000000 	svc	0x00000000
     ae4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae8:	e12fff1e 	bx	lr

00000aec <mkdir>:
     aec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     af0:	e1a04003 	mov	r4, r3
     af4:	e1a03002 	mov	r3, r2
     af8:	e1a02001 	mov	r2, r1
     afc:	e1a01000 	mov	r1, r0
     b00:	e3a00014 	mov	r0, #20
     b04:	ef000000 	svc	0x00000000
     b08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b0c:	e12fff1e 	bx	lr

00000b10 <chdir>:
     b10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b14:	e1a04003 	mov	r4, r3
     b18:	e1a03002 	mov	r3, r2
     b1c:	e1a02001 	mov	r2, r1
     b20:	e1a01000 	mov	r1, r0
     b24:	e3a00009 	mov	r0, #9
     b28:	ef000000 	svc	0x00000000
     b2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b30:	e12fff1e 	bx	lr

00000b34 <dup>:
     b34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b38:	e1a04003 	mov	r4, r3
     b3c:	e1a03002 	mov	r3, r2
     b40:	e1a02001 	mov	r2, r1
     b44:	e1a01000 	mov	r1, r0
     b48:	e3a0000a 	mov	r0, #10
     b4c:	ef000000 	svc	0x00000000
     b50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b54:	e12fff1e 	bx	lr

00000b58 <getpid>:
     b58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b5c:	e1a04003 	mov	r4, r3
     b60:	e1a03002 	mov	r3, r2
     b64:	e1a02001 	mov	r2, r1
     b68:	e1a01000 	mov	r1, r0
     b6c:	e3a0000b 	mov	r0, #11
     b70:	ef000000 	svc	0x00000000
     b74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b78:	e12fff1e 	bx	lr

00000b7c <sbrk>:
     b7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b80:	e1a04003 	mov	r4, r3
     b84:	e1a03002 	mov	r3, r2
     b88:	e1a02001 	mov	r2, r1
     b8c:	e1a01000 	mov	r1, r0
     b90:	e3a0000c 	mov	r0, #12
     b94:	ef000000 	svc	0x00000000
     b98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b9c:	e12fff1e 	bx	lr

00000ba0 <sleep>:
     ba0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba4:	e1a04003 	mov	r4, r3
     ba8:	e1a03002 	mov	r3, r2
     bac:	e1a02001 	mov	r2, r1
     bb0:	e1a01000 	mov	r1, r0
     bb4:	e3a0000d 	mov	r0, #13
     bb8:	ef000000 	svc	0x00000000
     bbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc0:	e12fff1e 	bx	lr

00000bc4 <uptime>:
     bc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc8:	e1a04003 	mov	r4, r3
     bcc:	e1a03002 	mov	r3, r2
     bd0:	e1a02001 	mov	r2, r1
     bd4:	e1a01000 	mov	r1, r0
     bd8:	e3a0000e 	mov	r0, #14
     bdc:	ef000000 	svc	0x00000000
     be0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be4:	e12fff1e 	bx	lr

00000be8 <getprocs>:
     be8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bec:	e1a04003 	mov	r4, r3
     bf0:	e1a03002 	mov	r3, r2
     bf4:	e1a02001 	mov	r2, r1
     bf8:	e1a01000 	mov	r1, r0
     bfc:	e3a00016 	mov	r0, #22
     c00:	ef000000 	svc	0x00000000
     c04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c08:	e12fff1e 	bx	lr

00000c0c <settickets>:
     c0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c10:	e1a04003 	mov	r4, r3
     c14:	e1a03002 	mov	r3, r2
     c18:	e1a02001 	mov	r2, r1
     c1c:	e1a01000 	mov	r1, r0
     c20:	e3a00017 	mov	r0, #23
     c24:	ef000000 	svc	0x00000000
     c28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c2c:	e12fff1e 	bx	lr

00000c30 <srand>:
     c30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c34:	e1a04003 	mov	r4, r3
     c38:	e1a03002 	mov	r3, r2
     c3c:	e1a02001 	mov	r2, r1
     c40:	e1a01000 	mov	r1, r0
     c44:	e3a00018 	mov	r0, #24
     c48:	ef000000 	svc	0x00000000
     c4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c50:	e12fff1e 	bx	lr

00000c54 <getpinfo>:
     c54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c58:	e1a04003 	mov	r4, r3
     c5c:	e1a03002 	mov	r3, r2
     c60:	e1a02001 	mov	r2, r1
     c64:	e1a01000 	mov	r1, r0
     c68:	e3a00019 	mov	r0, #25
     c6c:	ef000000 	svc	0x00000000
     c70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c74:	e12fff1e 	bx	lr

00000c78 <dumppagetable>:
     c78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c7c:	e1a04003 	mov	r4, r3
     c80:	e1a03002 	mov	r3, r2
     c84:	e1a02001 	mov	r2, r1
     c88:	e1a01000 	mov	r1, r0
     c8c:	e3a0001a 	mov	r0, #26
     c90:	ef000000 	svc	0x00000000
     c94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c98:	e12fff1e 	bx	lr

00000c9c <thread_create>:
     c9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca0:	e1a04003 	mov	r4, r3
     ca4:	e1a03002 	mov	r3, r2
     ca8:	e1a02001 	mov	r2, r1
     cac:	e1a01000 	mov	r1, r0
     cb0:	e3a0001b 	mov	r0, #27
     cb4:	ef000000 	svc	0x00000000
     cb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cbc:	e12fff1e 	bx	lr

00000cc0 <thread_exit>:
     cc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc4:	e1a04003 	mov	r4, r3
     cc8:	e1a03002 	mov	r3, r2
     ccc:	e1a02001 	mov	r2, r1
     cd0:	e1a01000 	mov	r1, r0
     cd4:	e3a0001c 	mov	r0, #28
     cd8:	ef000000 	svc	0x00000000
     cdc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce0:	e12fff1e 	bx	lr

00000ce4 <thread_join>:
     ce4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce8:	e1a04003 	mov	r4, r3
     cec:	e1a03002 	mov	r3, r2
     cf0:	e1a02001 	mov	r2, r1
     cf4:	e1a01000 	mov	r1, r0
     cf8:	e3a0001d 	mov	r0, #29
     cfc:	ef000000 	svc	0x00000000
     d00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d04:	e12fff1e 	bx	lr

00000d08 <waitpid>:
     d08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d0c:	e1a04003 	mov	r4, r3
     d10:	e1a03002 	mov	r3, r2
     d14:	e1a02001 	mov	r2, r1
     d18:	e1a01000 	mov	r1, r0
     d1c:	e3a0001e 	mov	r0, #30
     d20:	ef000000 	svc	0x00000000
     d24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d28:	e12fff1e 	bx	lr

00000d2c <barrier_init>:
     d2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d30:	e1a04003 	mov	r4, r3
     d34:	e1a03002 	mov	r3, r2
     d38:	e1a02001 	mov	r2, r1
     d3c:	e1a01000 	mov	r1, r0
     d40:	e3a0001f 	mov	r0, #31
     d44:	ef000000 	svc	0x00000000
     d48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d4c:	e12fff1e 	bx	lr

00000d50 <barrier_check>:
     d50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d54:	e1a04003 	mov	r4, r3
     d58:	e1a03002 	mov	r3, r2
     d5c:	e1a02001 	mov	r2, r1
     d60:	e1a01000 	mov	r1, r0
     d64:	e3a00020 	mov	r0, #32
     d68:	ef000000 	svc	0x00000000
     d6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d70:	e12fff1e 	bx	lr

00000d74 <sleepChan>:
     d74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d78:	e1a04003 	mov	r4, r3
     d7c:	e1a03002 	mov	r3, r2
     d80:	e1a02001 	mov	r2, r1
     d84:	e1a01000 	mov	r1, r0
     d88:	e3a00024 	mov	r0, #36	@ 0x24
     d8c:	ef000000 	svc	0x00000000
     d90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d94:	e12fff1e 	bx	lr

00000d98 <getChannel>:
     d98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d9c:	e1a04003 	mov	r4, r3
     da0:	e1a03002 	mov	r3, r2
     da4:	e1a02001 	mov	r2, r1
     da8:	e1a01000 	mov	r1, r0
     dac:	e3a00025 	mov	r0, #37	@ 0x25
     db0:	ef000000 	svc	0x00000000
     db4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     db8:	e12fff1e 	bx	lr

00000dbc <sigChan>:
     dbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dc0:	e1a04003 	mov	r4, r3
     dc4:	e1a03002 	mov	r3, r2
     dc8:	e1a02001 	mov	r2, r1
     dcc:	e1a01000 	mov	r1, r0
     dd0:	e3a00026 	mov	r0, #38	@ 0x26
     dd4:	ef000000 	svc	0x00000000
     dd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ddc:	e12fff1e 	bx	lr

00000de0 <sigOneChan>:
     de0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     de4:	e1a04003 	mov	r4, r3
     de8:	e1a03002 	mov	r3, r2
     dec:	e1a02001 	mov	r2, r1
     df0:	e1a01000 	mov	r1, r0
     df4:	e3a00027 	mov	r0, #39	@ 0x27
     df8:	ef000000 	svc	0x00000000
     dfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e00:	e12fff1e 	bx	lr

00000e04 <putc>:
     e04:	e92d4800 	push	{fp, lr}
     e08:	e28db004 	add	fp, sp, #4
     e0c:	e24dd008 	sub	sp, sp, #8
     e10:	e50b0008 	str	r0, [fp, #-8]
     e14:	e1a03001 	mov	r3, r1
     e18:	e54b3009 	strb	r3, [fp, #-9]
     e1c:	e24b3009 	sub	r3, fp, #9
     e20:	e3a02001 	mov	r2, #1
     e24:	e1a01003 	mov	r1, r3
     e28:	e51b0008 	ldr	r0, [fp, #-8]
     e2c:	ebfffedd 	bl	9a8 <write>
     e30:	e1a00000 	nop			@ (mov r0, r0)
     e34:	e24bd004 	sub	sp, fp, #4
     e38:	e8bd8800 	pop	{fp, pc}

00000e3c <printint>:
     e3c:	e92d4800 	push	{fp, lr}
     e40:	e28db004 	add	fp, sp, #4
     e44:	e24dd030 	sub	sp, sp, #48	@ 0x30
     e48:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     e4c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     e50:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     e54:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     e58:	e3a03000 	mov	r3, #0
     e5c:	e50b300c 	str	r3, [fp, #-12]
     e60:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     e64:	e3530000 	cmp	r3, #0
     e68:	0a000008 	beq	e90 <printint+0x54>
     e6c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e70:	e3530000 	cmp	r3, #0
     e74:	aa000005 	bge	e90 <printint+0x54>
     e78:	e3a03001 	mov	r3, #1
     e7c:	e50b300c 	str	r3, [fp, #-12]
     e80:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e84:	e2633000 	rsb	r3, r3, #0
     e88:	e50b3010 	str	r3, [fp, #-16]
     e8c:	ea000001 	b	e98 <printint+0x5c>
     e90:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e94:	e50b3010 	str	r3, [fp, #-16]
     e98:	e3a03000 	mov	r3, #0
     e9c:	e50b3008 	str	r3, [fp, #-8]
     ea0:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     ea4:	e51b3010 	ldr	r3, [fp, #-16]
     ea8:	e1a01002 	mov	r1, r2
     eac:	e1a00003 	mov	r0, r3
     eb0:	eb0001d5 	bl	160c <__aeabi_uidivmod>
     eb4:	e1a03001 	mov	r3, r1
     eb8:	e1a01003 	mov	r1, r3
     ebc:	e51b3008 	ldr	r3, [fp, #-8]
     ec0:	e2832001 	add	r2, r3, #1
     ec4:	e50b2008 	str	r2, [fp, #-8]
     ec8:	e59f20a0 	ldr	r2, [pc, #160]	@ f70 <printint+0x134>
     ecc:	e7d22001 	ldrb	r2, [r2, r1]
     ed0:	e2433004 	sub	r3, r3, #4
     ed4:	e083300b 	add	r3, r3, fp
     ed8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     edc:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     ee0:	e1a01003 	mov	r1, r3
     ee4:	e51b0010 	ldr	r0, [fp, #-16]
     ee8:	eb00018a 	bl	1518 <__udivsi3>
     eec:	e1a03000 	mov	r3, r0
     ef0:	e50b3010 	str	r3, [fp, #-16]
     ef4:	e51b3010 	ldr	r3, [fp, #-16]
     ef8:	e3530000 	cmp	r3, #0
     efc:	1affffe7 	bne	ea0 <printint+0x64>
     f00:	e51b300c 	ldr	r3, [fp, #-12]
     f04:	e3530000 	cmp	r3, #0
     f08:	0a00000e 	beq	f48 <printint+0x10c>
     f0c:	e51b3008 	ldr	r3, [fp, #-8]
     f10:	e2832001 	add	r2, r3, #1
     f14:	e50b2008 	str	r2, [fp, #-8]
     f18:	e2433004 	sub	r3, r3, #4
     f1c:	e083300b 	add	r3, r3, fp
     f20:	e3a0202d 	mov	r2, #45	@ 0x2d
     f24:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f28:	ea000006 	b	f48 <printint+0x10c>
     f2c:	e24b2020 	sub	r2, fp, #32
     f30:	e51b3008 	ldr	r3, [fp, #-8]
     f34:	e0823003 	add	r3, r2, r3
     f38:	e5d33000 	ldrb	r3, [r3]
     f3c:	e1a01003 	mov	r1, r3
     f40:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     f44:	ebffffae 	bl	e04 <putc>
     f48:	e51b3008 	ldr	r3, [fp, #-8]
     f4c:	e2433001 	sub	r3, r3, #1
     f50:	e50b3008 	str	r3, [fp, #-8]
     f54:	e51b3008 	ldr	r3, [fp, #-8]
     f58:	e3530000 	cmp	r3, #0
     f5c:	aafffff2 	bge	f2c <printint+0xf0>
     f60:	e1a00000 	nop			@ (mov r0, r0)
     f64:	e1a00000 	nop			@ (mov r0, r0)
     f68:	e24bd004 	sub	sp, fp, #4
     f6c:	e8bd8800 	pop	{fp, pc}
     f70:	00001684 	.word	0x00001684

00000f74 <printf>:
     f74:	e92d000e 	push	{r1, r2, r3}
     f78:	e92d4800 	push	{fp, lr}
     f7c:	e28db004 	add	fp, sp, #4
     f80:	e24dd024 	sub	sp, sp, #36	@ 0x24
     f84:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     f88:	e3a03000 	mov	r3, #0
     f8c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f90:	e28b3008 	add	r3, fp, #8
     f94:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f98:	e3a03000 	mov	r3, #0
     f9c:	e50b3010 	str	r3, [fp, #-16]
     fa0:	ea000074 	b	1178 <printf+0x204>
     fa4:	e59b2004 	ldr	r2, [fp, #4]
     fa8:	e51b3010 	ldr	r3, [fp, #-16]
     fac:	e0823003 	add	r3, r2, r3
     fb0:	e5d33000 	ldrb	r3, [r3]
     fb4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     fb8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     fbc:	e3530000 	cmp	r3, #0
     fc0:	1a00000b 	bne	ff4 <printf+0x80>
     fc4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fc8:	e3530025 	cmp	r3, #37	@ 0x25
     fcc:	1a000002 	bne	fdc <printf+0x68>
     fd0:	e3a03025 	mov	r3, #37	@ 0x25
     fd4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     fd8:	ea000063 	b	116c <printf+0x1f8>
     fdc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fe0:	e6ef3073 	uxtb	r3, r3
     fe4:	e1a01003 	mov	r1, r3
     fe8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fec:	ebffff84 	bl	e04 <putc>
     ff0:	ea00005d 	b	116c <printf+0x1f8>
     ff4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ff8:	e3530025 	cmp	r3, #37	@ 0x25
     ffc:	1a00005a 	bne	116c <printf+0x1f8>
    1000:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1004:	e3530064 	cmp	r3, #100	@ 0x64
    1008:	1a00000a 	bne	1038 <printf+0xc4>
    100c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1010:	e5933000 	ldr	r3, [r3]
    1014:	e1a01003 	mov	r1, r3
    1018:	e3a03001 	mov	r3, #1
    101c:	e3a0200a 	mov	r2, #10
    1020:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1024:	ebffff84 	bl	e3c <printint>
    1028:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    102c:	e2833004 	add	r3, r3, #4
    1030:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1034:	ea00004a 	b	1164 <printf+0x1f0>
    1038:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    103c:	e3530078 	cmp	r3, #120	@ 0x78
    1040:	0a000002 	beq	1050 <printf+0xdc>
    1044:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1048:	e3530070 	cmp	r3, #112	@ 0x70
    104c:	1a00000a 	bne	107c <printf+0x108>
    1050:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1054:	e5933000 	ldr	r3, [r3]
    1058:	e1a01003 	mov	r1, r3
    105c:	e3a03000 	mov	r3, #0
    1060:	e3a02010 	mov	r2, #16
    1064:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1068:	ebffff73 	bl	e3c <printint>
    106c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1070:	e2833004 	add	r3, r3, #4
    1074:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1078:	ea000039 	b	1164 <printf+0x1f0>
    107c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1080:	e3530073 	cmp	r3, #115	@ 0x73
    1084:	1a000018 	bne	10ec <printf+0x178>
    1088:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    108c:	e5933000 	ldr	r3, [r3]
    1090:	e50b300c 	str	r3, [fp, #-12]
    1094:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1098:	e2833004 	add	r3, r3, #4
    109c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10a0:	e51b300c 	ldr	r3, [fp, #-12]
    10a4:	e3530000 	cmp	r3, #0
    10a8:	1a00000a 	bne	10d8 <printf+0x164>
    10ac:	e59f30f4 	ldr	r3, [pc, #244]	@ 11a8 <printf+0x234>
    10b0:	e50b300c 	str	r3, [fp, #-12]
    10b4:	ea000007 	b	10d8 <printf+0x164>
    10b8:	e51b300c 	ldr	r3, [fp, #-12]
    10bc:	e5d33000 	ldrb	r3, [r3]
    10c0:	e1a01003 	mov	r1, r3
    10c4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10c8:	ebffff4d 	bl	e04 <putc>
    10cc:	e51b300c 	ldr	r3, [fp, #-12]
    10d0:	e2833001 	add	r3, r3, #1
    10d4:	e50b300c 	str	r3, [fp, #-12]
    10d8:	e51b300c 	ldr	r3, [fp, #-12]
    10dc:	e5d33000 	ldrb	r3, [r3]
    10e0:	e3530000 	cmp	r3, #0
    10e4:	1afffff3 	bne	10b8 <printf+0x144>
    10e8:	ea00001d 	b	1164 <printf+0x1f0>
    10ec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10f0:	e3530063 	cmp	r3, #99	@ 0x63
    10f4:	1a000009 	bne	1120 <printf+0x1ac>
    10f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10fc:	e5933000 	ldr	r3, [r3]
    1100:	e6ef3073 	uxtb	r3, r3
    1104:	e1a01003 	mov	r1, r3
    1108:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    110c:	ebffff3c 	bl	e04 <putc>
    1110:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1114:	e2833004 	add	r3, r3, #4
    1118:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    111c:	ea000010 	b	1164 <printf+0x1f0>
    1120:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1124:	e3530025 	cmp	r3, #37	@ 0x25
    1128:	1a000005 	bne	1144 <printf+0x1d0>
    112c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1130:	e6ef3073 	uxtb	r3, r3
    1134:	e1a01003 	mov	r1, r3
    1138:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    113c:	ebffff30 	bl	e04 <putc>
    1140:	ea000007 	b	1164 <printf+0x1f0>
    1144:	e3a01025 	mov	r1, #37	@ 0x25
    1148:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    114c:	ebffff2c 	bl	e04 <putc>
    1150:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1154:	e6ef3073 	uxtb	r3, r3
    1158:	e1a01003 	mov	r1, r3
    115c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1160:	ebffff27 	bl	e04 <putc>
    1164:	e3a03000 	mov	r3, #0
    1168:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    116c:	e51b3010 	ldr	r3, [fp, #-16]
    1170:	e2833001 	add	r3, r3, #1
    1174:	e50b3010 	str	r3, [fp, #-16]
    1178:	e59b2004 	ldr	r2, [fp, #4]
    117c:	e51b3010 	ldr	r3, [fp, #-16]
    1180:	e0823003 	add	r3, r2, r3
    1184:	e5d33000 	ldrb	r3, [r3]
    1188:	e3530000 	cmp	r3, #0
    118c:	1affff84 	bne	fa4 <printf+0x30>
    1190:	e1a00000 	nop			@ (mov r0, r0)
    1194:	e1a00000 	nop			@ (mov r0, r0)
    1198:	e24bd004 	sub	sp, fp, #4
    119c:	e8bd4800 	pop	{fp, lr}
    11a0:	e28dd00c 	add	sp, sp, #12
    11a4:	e12fff1e 	bx	lr
    11a8:	0000167c 	.word	0x0000167c

000011ac <free>:
    11ac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    11b0:	e28db000 	add	fp, sp, #0
    11b4:	e24dd014 	sub	sp, sp, #20
    11b8:	e50b0010 	str	r0, [fp, #-16]
    11bc:	e51b3010 	ldr	r3, [fp, #-16]
    11c0:	e2433008 	sub	r3, r3, #8
    11c4:	e50b300c 	str	r3, [fp, #-12]
    11c8:	e59f3154 	ldr	r3, [pc, #340]	@ 1324 <free+0x178>
    11cc:	e5933000 	ldr	r3, [r3]
    11d0:	e50b3008 	str	r3, [fp, #-8]
    11d4:	ea000010 	b	121c <free+0x70>
    11d8:	e51b3008 	ldr	r3, [fp, #-8]
    11dc:	e5933000 	ldr	r3, [r3]
    11e0:	e51b2008 	ldr	r2, [fp, #-8]
    11e4:	e1520003 	cmp	r2, r3
    11e8:	3a000008 	bcc	1210 <free+0x64>
    11ec:	e51b200c 	ldr	r2, [fp, #-12]
    11f0:	e51b3008 	ldr	r3, [fp, #-8]
    11f4:	e1520003 	cmp	r2, r3
    11f8:	8a000010 	bhi	1240 <free+0x94>
    11fc:	e51b3008 	ldr	r3, [fp, #-8]
    1200:	e5933000 	ldr	r3, [r3]
    1204:	e51b200c 	ldr	r2, [fp, #-12]
    1208:	e1520003 	cmp	r2, r3
    120c:	3a00000b 	bcc	1240 <free+0x94>
    1210:	e51b3008 	ldr	r3, [fp, #-8]
    1214:	e5933000 	ldr	r3, [r3]
    1218:	e50b3008 	str	r3, [fp, #-8]
    121c:	e51b200c 	ldr	r2, [fp, #-12]
    1220:	e51b3008 	ldr	r3, [fp, #-8]
    1224:	e1520003 	cmp	r2, r3
    1228:	9affffea 	bls	11d8 <free+0x2c>
    122c:	e51b3008 	ldr	r3, [fp, #-8]
    1230:	e5933000 	ldr	r3, [r3]
    1234:	e51b200c 	ldr	r2, [fp, #-12]
    1238:	e1520003 	cmp	r2, r3
    123c:	2affffe5 	bcs	11d8 <free+0x2c>
    1240:	e51b300c 	ldr	r3, [fp, #-12]
    1244:	e5933004 	ldr	r3, [r3, #4]
    1248:	e1a03183 	lsl	r3, r3, #3
    124c:	e51b200c 	ldr	r2, [fp, #-12]
    1250:	e0822003 	add	r2, r2, r3
    1254:	e51b3008 	ldr	r3, [fp, #-8]
    1258:	e5933000 	ldr	r3, [r3]
    125c:	e1520003 	cmp	r2, r3
    1260:	1a00000d 	bne	129c <free+0xf0>
    1264:	e51b300c 	ldr	r3, [fp, #-12]
    1268:	e5932004 	ldr	r2, [r3, #4]
    126c:	e51b3008 	ldr	r3, [fp, #-8]
    1270:	e5933000 	ldr	r3, [r3]
    1274:	e5933004 	ldr	r3, [r3, #4]
    1278:	e0822003 	add	r2, r2, r3
    127c:	e51b300c 	ldr	r3, [fp, #-12]
    1280:	e5832004 	str	r2, [r3, #4]
    1284:	e51b3008 	ldr	r3, [fp, #-8]
    1288:	e5933000 	ldr	r3, [r3]
    128c:	e5932000 	ldr	r2, [r3]
    1290:	e51b300c 	ldr	r3, [fp, #-12]
    1294:	e5832000 	str	r2, [r3]
    1298:	ea000003 	b	12ac <free+0x100>
    129c:	e51b3008 	ldr	r3, [fp, #-8]
    12a0:	e5932000 	ldr	r2, [r3]
    12a4:	e51b300c 	ldr	r3, [fp, #-12]
    12a8:	e5832000 	str	r2, [r3]
    12ac:	e51b3008 	ldr	r3, [fp, #-8]
    12b0:	e5933004 	ldr	r3, [r3, #4]
    12b4:	e1a03183 	lsl	r3, r3, #3
    12b8:	e51b2008 	ldr	r2, [fp, #-8]
    12bc:	e0823003 	add	r3, r2, r3
    12c0:	e51b200c 	ldr	r2, [fp, #-12]
    12c4:	e1520003 	cmp	r2, r3
    12c8:	1a00000b 	bne	12fc <free+0x150>
    12cc:	e51b3008 	ldr	r3, [fp, #-8]
    12d0:	e5932004 	ldr	r2, [r3, #4]
    12d4:	e51b300c 	ldr	r3, [fp, #-12]
    12d8:	e5933004 	ldr	r3, [r3, #4]
    12dc:	e0822003 	add	r2, r2, r3
    12e0:	e51b3008 	ldr	r3, [fp, #-8]
    12e4:	e5832004 	str	r2, [r3, #4]
    12e8:	e51b300c 	ldr	r3, [fp, #-12]
    12ec:	e5932000 	ldr	r2, [r3]
    12f0:	e51b3008 	ldr	r3, [fp, #-8]
    12f4:	e5832000 	str	r2, [r3]
    12f8:	ea000002 	b	1308 <free+0x15c>
    12fc:	e51b3008 	ldr	r3, [fp, #-8]
    1300:	e51b200c 	ldr	r2, [fp, #-12]
    1304:	e5832000 	str	r2, [r3]
    1308:	e59f2014 	ldr	r2, [pc, #20]	@ 1324 <free+0x178>
    130c:	e51b3008 	ldr	r3, [fp, #-8]
    1310:	e5823000 	str	r3, [r2]
    1314:	e1a00000 	nop			@ (mov r0, r0)
    1318:	e28bd000 	add	sp, fp, #0
    131c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1320:	e12fff1e 	bx	lr
    1324:	000016a0 	.word	0x000016a0

00001328 <morecore>:
    1328:	e92d4800 	push	{fp, lr}
    132c:	e28db004 	add	fp, sp, #4
    1330:	e24dd010 	sub	sp, sp, #16
    1334:	e50b0010 	str	r0, [fp, #-16]
    1338:	e51b3010 	ldr	r3, [fp, #-16]
    133c:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1340:	2a000001 	bcs	134c <morecore+0x24>
    1344:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1348:	e50b3010 	str	r3, [fp, #-16]
    134c:	e51b3010 	ldr	r3, [fp, #-16]
    1350:	e1a03183 	lsl	r3, r3, #3
    1354:	e1a00003 	mov	r0, r3
    1358:	ebfffe07 	bl	b7c <sbrk>
    135c:	e50b0008 	str	r0, [fp, #-8]
    1360:	e51b3008 	ldr	r3, [fp, #-8]
    1364:	e3730001 	cmn	r3, #1
    1368:	1a000001 	bne	1374 <morecore+0x4c>
    136c:	e3a03000 	mov	r3, #0
    1370:	ea00000a 	b	13a0 <morecore+0x78>
    1374:	e51b3008 	ldr	r3, [fp, #-8]
    1378:	e50b300c 	str	r3, [fp, #-12]
    137c:	e51b300c 	ldr	r3, [fp, #-12]
    1380:	e51b2010 	ldr	r2, [fp, #-16]
    1384:	e5832004 	str	r2, [r3, #4]
    1388:	e51b300c 	ldr	r3, [fp, #-12]
    138c:	e2833008 	add	r3, r3, #8
    1390:	e1a00003 	mov	r0, r3
    1394:	ebffff84 	bl	11ac <free>
    1398:	e59f300c 	ldr	r3, [pc, #12]	@ 13ac <morecore+0x84>
    139c:	e5933000 	ldr	r3, [r3]
    13a0:	e1a00003 	mov	r0, r3
    13a4:	e24bd004 	sub	sp, fp, #4
    13a8:	e8bd8800 	pop	{fp, pc}
    13ac:	000016a0 	.word	0x000016a0

000013b0 <malloc>:
    13b0:	e92d4800 	push	{fp, lr}
    13b4:	e28db004 	add	fp, sp, #4
    13b8:	e24dd018 	sub	sp, sp, #24
    13bc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    13c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13c4:	e2833007 	add	r3, r3, #7
    13c8:	e1a031a3 	lsr	r3, r3, #3
    13cc:	e2833001 	add	r3, r3, #1
    13d0:	e50b3010 	str	r3, [fp, #-16]
    13d4:	e59f3134 	ldr	r3, [pc, #308]	@ 1510 <malloc+0x160>
    13d8:	e5933000 	ldr	r3, [r3]
    13dc:	e50b300c 	str	r3, [fp, #-12]
    13e0:	e51b300c 	ldr	r3, [fp, #-12]
    13e4:	e3530000 	cmp	r3, #0
    13e8:	1a00000b 	bne	141c <malloc+0x6c>
    13ec:	e59f3120 	ldr	r3, [pc, #288]	@ 1514 <malloc+0x164>
    13f0:	e50b300c 	str	r3, [fp, #-12]
    13f4:	e59f2114 	ldr	r2, [pc, #276]	@ 1510 <malloc+0x160>
    13f8:	e51b300c 	ldr	r3, [fp, #-12]
    13fc:	e5823000 	str	r3, [r2]
    1400:	e59f3108 	ldr	r3, [pc, #264]	@ 1510 <malloc+0x160>
    1404:	e5933000 	ldr	r3, [r3]
    1408:	e59f2104 	ldr	r2, [pc, #260]	@ 1514 <malloc+0x164>
    140c:	e5823000 	str	r3, [r2]
    1410:	e59f30fc 	ldr	r3, [pc, #252]	@ 1514 <malloc+0x164>
    1414:	e3a02000 	mov	r2, #0
    1418:	e5832004 	str	r2, [r3, #4]
    141c:	e51b300c 	ldr	r3, [fp, #-12]
    1420:	e5933000 	ldr	r3, [r3]
    1424:	e50b3008 	str	r3, [fp, #-8]
    1428:	e51b3008 	ldr	r3, [fp, #-8]
    142c:	e5933004 	ldr	r3, [r3, #4]
    1430:	e51b2010 	ldr	r2, [fp, #-16]
    1434:	e1520003 	cmp	r2, r3
    1438:	8a00001e 	bhi	14b8 <malloc+0x108>
    143c:	e51b3008 	ldr	r3, [fp, #-8]
    1440:	e5933004 	ldr	r3, [r3, #4]
    1444:	e51b2010 	ldr	r2, [fp, #-16]
    1448:	e1520003 	cmp	r2, r3
    144c:	1a000004 	bne	1464 <malloc+0xb4>
    1450:	e51b3008 	ldr	r3, [fp, #-8]
    1454:	e5932000 	ldr	r2, [r3]
    1458:	e51b300c 	ldr	r3, [fp, #-12]
    145c:	e5832000 	str	r2, [r3]
    1460:	ea00000e 	b	14a0 <malloc+0xf0>
    1464:	e51b3008 	ldr	r3, [fp, #-8]
    1468:	e5932004 	ldr	r2, [r3, #4]
    146c:	e51b3010 	ldr	r3, [fp, #-16]
    1470:	e0422003 	sub	r2, r2, r3
    1474:	e51b3008 	ldr	r3, [fp, #-8]
    1478:	e5832004 	str	r2, [r3, #4]
    147c:	e51b3008 	ldr	r3, [fp, #-8]
    1480:	e5933004 	ldr	r3, [r3, #4]
    1484:	e1a03183 	lsl	r3, r3, #3
    1488:	e51b2008 	ldr	r2, [fp, #-8]
    148c:	e0823003 	add	r3, r2, r3
    1490:	e50b3008 	str	r3, [fp, #-8]
    1494:	e51b3008 	ldr	r3, [fp, #-8]
    1498:	e51b2010 	ldr	r2, [fp, #-16]
    149c:	e5832004 	str	r2, [r3, #4]
    14a0:	e59f2068 	ldr	r2, [pc, #104]	@ 1510 <malloc+0x160>
    14a4:	e51b300c 	ldr	r3, [fp, #-12]
    14a8:	e5823000 	str	r3, [r2]
    14ac:	e51b3008 	ldr	r3, [fp, #-8]
    14b0:	e2833008 	add	r3, r3, #8
    14b4:	ea000012 	b	1504 <malloc+0x154>
    14b8:	e59f3050 	ldr	r3, [pc, #80]	@ 1510 <malloc+0x160>
    14bc:	e5933000 	ldr	r3, [r3]
    14c0:	e51b2008 	ldr	r2, [fp, #-8]
    14c4:	e1520003 	cmp	r2, r3
    14c8:	1a000007 	bne	14ec <malloc+0x13c>
    14cc:	e51b0010 	ldr	r0, [fp, #-16]
    14d0:	ebffff94 	bl	1328 <morecore>
    14d4:	e50b0008 	str	r0, [fp, #-8]
    14d8:	e51b3008 	ldr	r3, [fp, #-8]
    14dc:	e3530000 	cmp	r3, #0
    14e0:	1a000001 	bne	14ec <malloc+0x13c>
    14e4:	e3a03000 	mov	r3, #0
    14e8:	ea000005 	b	1504 <malloc+0x154>
    14ec:	e51b3008 	ldr	r3, [fp, #-8]
    14f0:	e50b300c 	str	r3, [fp, #-12]
    14f4:	e51b3008 	ldr	r3, [fp, #-8]
    14f8:	e5933000 	ldr	r3, [r3]
    14fc:	e50b3008 	str	r3, [fp, #-8]
    1500:	eaffffc8 	b	1428 <malloc+0x78>
    1504:	e1a00003 	mov	r0, r3
    1508:	e24bd004 	sub	sp, fp, #4
    150c:	e8bd8800 	pop	{fp, pc}
    1510:	000016a0 	.word	0x000016a0
    1514:	00001698 	.word	0x00001698

00001518 <__udivsi3>:
    1518:	e2512001 	subs	r2, r1, #1
    151c:	012fff1e 	bxeq	lr
    1520:	3a000036 	bcc	1600 <__udivsi3+0xe8>
    1524:	e1500001 	cmp	r0, r1
    1528:	9a000022 	bls	15b8 <__udivsi3+0xa0>
    152c:	e1110002 	tst	r1, r2
    1530:	0a000023 	beq	15c4 <__udivsi3+0xac>
    1534:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1538:	01a01181 	lsleq	r1, r1, #3
    153c:	03a03008 	moveq	r3, #8
    1540:	13a03001 	movne	r3, #1
    1544:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1548:	31510000 	cmpcc	r1, r0
    154c:	31a01201 	lslcc	r1, r1, #4
    1550:	31a03203 	lslcc	r3, r3, #4
    1554:	3afffffa 	bcc	1544 <__udivsi3+0x2c>
    1558:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    155c:	31510000 	cmpcc	r1, r0
    1560:	31a01081 	lslcc	r1, r1, #1
    1564:	31a03083 	lslcc	r3, r3, #1
    1568:	3afffffa 	bcc	1558 <__udivsi3+0x40>
    156c:	e3a02000 	mov	r2, #0
    1570:	e1500001 	cmp	r0, r1
    1574:	20400001 	subcs	r0, r0, r1
    1578:	21822003 	orrcs	r2, r2, r3
    157c:	e15000a1 	cmp	r0, r1, lsr #1
    1580:	204000a1 	subcs	r0, r0, r1, lsr #1
    1584:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1588:	e1500121 	cmp	r0, r1, lsr #2
    158c:	20400121 	subcs	r0, r0, r1, lsr #2
    1590:	21822123 	orrcs	r2, r2, r3, lsr #2
    1594:	e15001a1 	cmp	r0, r1, lsr #3
    1598:	204001a1 	subcs	r0, r0, r1, lsr #3
    159c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    15a0:	e3500000 	cmp	r0, #0
    15a4:	11b03223 	lsrsne	r3, r3, #4
    15a8:	11a01221 	lsrne	r1, r1, #4
    15ac:	1affffef 	bne	1570 <__udivsi3+0x58>
    15b0:	e1a00002 	mov	r0, r2
    15b4:	e12fff1e 	bx	lr
    15b8:	03a00001 	moveq	r0, #1
    15bc:	13a00000 	movne	r0, #0
    15c0:	e12fff1e 	bx	lr
    15c4:	e3510801 	cmp	r1, #65536	@ 0x10000
    15c8:	21a01821 	lsrcs	r1, r1, #16
    15cc:	23a02010 	movcs	r2, #16
    15d0:	33a02000 	movcc	r2, #0
    15d4:	e3510c01 	cmp	r1, #256	@ 0x100
    15d8:	21a01421 	lsrcs	r1, r1, #8
    15dc:	22822008 	addcs	r2, r2, #8
    15e0:	e3510010 	cmp	r1, #16
    15e4:	21a01221 	lsrcs	r1, r1, #4
    15e8:	22822004 	addcs	r2, r2, #4
    15ec:	e3510004 	cmp	r1, #4
    15f0:	82822003 	addhi	r2, r2, #3
    15f4:	908220a1 	addls	r2, r2, r1, lsr #1
    15f8:	e1a00230 	lsr	r0, r0, r2
    15fc:	e12fff1e 	bx	lr
    1600:	e3500000 	cmp	r0, #0
    1604:	13e00000 	mvnne	r0, #0
    1608:	ea000007 	b	162c <__aeabi_idiv0>

0000160c <__aeabi_uidivmod>:
    160c:	e3510000 	cmp	r1, #0
    1610:	0afffffa 	beq	1600 <__udivsi3+0xe8>
    1614:	e92d4003 	push	{r0, r1, lr}
    1618:	ebffffbe 	bl	1518 <__udivsi3>
    161c:	e8bd4006 	pop	{r1, r2, lr}
    1620:	e0030092 	mul	r3, r2, r0
    1624:	e0411003 	sub	r1, r1, r3
    1628:	e12fff1e 	bx	lr

0000162c <__aeabi_idiv0>:
    162c:	e12fff1e 	bx	lr
