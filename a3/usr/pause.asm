
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
      90:	eb0002b8 	bl	b78 <printf>
      94:	eb00017a 	bl	684 <exit>
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
      c4:	eb0002ab 	bl	b78 <printf>
      c8:	eb00016d 	bl	684 <exit>
      cc:	e3a03000 	mov	r3, #0
      d0:	e50b3008 	str	r3, [fp, #-8]
      d4:	ea00001c 	b	14c <main+0xe4>
      d8:	e51b3008 	ldr	r3, [fp, #-8]
      dc:	e2833001 	add	r3, r3, #1
      e0:	e1a02003 	mov	r2, r3
      e4:	e59f107c 	ldr	r1, [pc, #124]	@ 168 <main+0x100>
      e8:	e3a00001 	mov	r0, #1
      ec:	eb0002a1 	bl	b78 <printf>
      f0:	e3a0000a 	mov	r0, #10
      f4:	eb000204 	bl	90c <sleep>
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
     120:	eb000294 	bl	b78 <printf>
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
     15c:	eb000148 	bl	684 <exit>
     160:	00001234 	.word	0x00001234
     164:	00001254 	.word	0x00001254
     168:	00001278 	.word	0x00001278
     16c:	0000127c 	.word	0x0000127c

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
     464:	eb0000a1 	bl	6f0 <read>
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
     50c:	eb0000a4 	bl	7a4 <open>
     510:	e50b0008 	str	r0, [fp, #-8]
     514:	e51b3008 	ldr	r3, [fp, #-8]
     518:	e3530000 	cmp	r3, #0
     51c:	aa000001 	bge	528 <stat+0x38>
     520:	e3e03000 	mvn	r3, #0
     524:	ea000006 	b	544 <stat+0x54>
     528:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     52c:	e51b0008 	ldr	r0, [fp, #-8]
     530:	eb0000b6 	bl	810 <fstat>
     534:	e50b000c 	str	r0, [fp, #-12]
     538:	e51b0008 	ldr	r0, [fp, #-8]
     53c:	eb00007d 	bl	738 <close>
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

00000660 <fork>:
     660:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     664:	e1a04003 	mov	r4, r3
     668:	e1a03002 	mov	r3, r2
     66c:	e1a02001 	mov	r2, r1
     670:	e1a01000 	mov	r1, r0
     674:	e3a00001 	mov	r0, #1
     678:	ef000000 	svc	0x00000000
     67c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     680:	e12fff1e 	bx	lr

00000684 <exit>:
     684:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     688:	e1a04003 	mov	r4, r3
     68c:	e1a03002 	mov	r3, r2
     690:	e1a02001 	mov	r2, r1
     694:	e1a01000 	mov	r1, r0
     698:	e3a00002 	mov	r0, #2
     69c:	ef000000 	svc	0x00000000
     6a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6a4:	e12fff1e 	bx	lr

000006a8 <wait>:
     6a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6ac:	e1a04003 	mov	r4, r3
     6b0:	e1a03002 	mov	r3, r2
     6b4:	e1a02001 	mov	r2, r1
     6b8:	e1a01000 	mov	r1, r0
     6bc:	e3a00003 	mov	r0, #3
     6c0:	ef000000 	svc	0x00000000
     6c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6c8:	e12fff1e 	bx	lr

000006cc <pipe>:
     6cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6d0:	e1a04003 	mov	r4, r3
     6d4:	e1a03002 	mov	r3, r2
     6d8:	e1a02001 	mov	r2, r1
     6dc:	e1a01000 	mov	r1, r0
     6e0:	e3a00004 	mov	r0, #4
     6e4:	ef000000 	svc	0x00000000
     6e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6ec:	e12fff1e 	bx	lr

000006f0 <read>:
     6f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6f4:	e1a04003 	mov	r4, r3
     6f8:	e1a03002 	mov	r3, r2
     6fc:	e1a02001 	mov	r2, r1
     700:	e1a01000 	mov	r1, r0
     704:	e3a00005 	mov	r0, #5
     708:	ef000000 	svc	0x00000000
     70c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     710:	e12fff1e 	bx	lr

00000714 <write>:
     714:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     718:	e1a04003 	mov	r4, r3
     71c:	e1a03002 	mov	r3, r2
     720:	e1a02001 	mov	r2, r1
     724:	e1a01000 	mov	r1, r0
     728:	e3a00010 	mov	r0, #16
     72c:	ef000000 	svc	0x00000000
     730:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     734:	e12fff1e 	bx	lr

00000738 <close>:
     738:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     73c:	e1a04003 	mov	r4, r3
     740:	e1a03002 	mov	r3, r2
     744:	e1a02001 	mov	r2, r1
     748:	e1a01000 	mov	r1, r0
     74c:	e3a00015 	mov	r0, #21
     750:	ef000000 	svc	0x00000000
     754:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     758:	e12fff1e 	bx	lr

0000075c <kill>:
     75c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     760:	e1a04003 	mov	r4, r3
     764:	e1a03002 	mov	r3, r2
     768:	e1a02001 	mov	r2, r1
     76c:	e1a01000 	mov	r1, r0
     770:	e3a00006 	mov	r0, #6
     774:	ef000000 	svc	0x00000000
     778:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     77c:	e12fff1e 	bx	lr

00000780 <exec>:
     780:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     784:	e1a04003 	mov	r4, r3
     788:	e1a03002 	mov	r3, r2
     78c:	e1a02001 	mov	r2, r1
     790:	e1a01000 	mov	r1, r0
     794:	e3a00007 	mov	r0, #7
     798:	ef000000 	svc	0x00000000
     79c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7a0:	e12fff1e 	bx	lr

000007a4 <open>:
     7a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7a8:	e1a04003 	mov	r4, r3
     7ac:	e1a03002 	mov	r3, r2
     7b0:	e1a02001 	mov	r2, r1
     7b4:	e1a01000 	mov	r1, r0
     7b8:	e3a0000f 	mov	r0, #15
     7bc:	ef000000 	svc	0x00000000
     7c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c4:	e12fff1e 	bx	lr

000007c8 <mknod>:
     7c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7cc:	e1a04003 	mov	r4, r3
     7d0:	e1a03002 	mov	r3, r2
     7d4:	e1a02001 	mov	r2, r1
     7d8:	e1a01000 	mov	r1, r0
     7dc:	e3a00011 	mov	r0, #17
     7e0:	ef000000 	svc	0x00000000
     7e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7e8:	e12fff1e 	bx	lr

000007ec <unlink>:
     7ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f0:	e1a04003 	mov	r4, r3
     7f4:	e1a03002 	mov	r3, r2
     7f8:	e1a02001 	mov	r2, r1
     7fc:	e1a01000 	mov	r1, r0
     800:	e3a00012 	mov	r0, #18
     804:	ef000000 	svc	0x00000000
     808:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     80c:	e12fff1e 	bx	lr

00000810 <fstat>:
     810:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     814:	e1a04003 	mov	r4, r3
     818:	e1a03002 	mov	r3, r2
     81c:	e1a02001 	mov	r2, r1
     820:	e1a01000 	mov	r1, r0
     824:	e3a00008 	mov	r0, #8
     828:	ef000000 	svc	0x00000000
     82c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     830:	e12fff1e 	bx	lr

00000834 <link>:
     834:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     838:	e1a04003 	mov	r4, r3
     83c:	e1a03002 	mov	r3, r2
     840:	e1a02001 	mov	r2, r1
     844:	e1a01000 	mov	r1, r0
     848:	e3a00013 	mov	r0, #19
     84c:	ef000000 	svc	0x00000000
     850:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     854:	e12fff1e 	bx	lr

00000858 <mkdir>:
     858:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     85c:	e1a04003 	mov	r4, r3
     860:	e1a03002 	mov	r3, r2
     864:	e1a02001 	mov	r2, r1
     868:	e1a01000 	mov	r1, r0
     86c:	e3a00014 	mov	r0, #20
     870:	ef000000 	svc	0x00000000
     874:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     878:	e12fff1e 	bx	lr

0000087c <chdir>:
     87c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     880:	e1a04003 	mov	r4, r3
     884:	e1a03002 	mov	r3, r2
     888:	e1a02001 	mov	r2, r1
     88c:	e1a01000 	mov	r1, r0
     890:	e3a00009 	mov	r0, #9
     894:	ef000000 	svc	0x00000000
     898:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     89c:	e12fff1e 	bx	lr

000008a0 <dup>:
     8a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a4:	e1a04003 	mov	r4, r3
     8a8:	e1a03002 	mov	r3, r2
     8ac:	e1a02001 	mov	r2, r1
     8b0:	e1a01000 	mov	r1, r0
     8b4:	e3a0000a 	mov	r0, #10
     8b8:	ef000000 	svc	0x00000000
     8bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c0:	e12fff1e 	bx	lr

000008c4 <getpid>:
     8c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8c8:	e1a04003 	mov	r4, r3
     8cc:	e1a03002 	mov	r3, r2
     8d0:	e1a02001 	mov	r2, r1
     8d4:	e1a01000 	mov	r1, r0
     8d8:	e3a0000b 	mov	r0, #11
     8dc:	ef000000 	svc	0x00000000
     8e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e4:	e12fff1e 	bx	lr

000008e8 <sbrk>:
     8e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8ec:	e1a04003 	mov	r4, r3
     8f0:	e1a03002 	mov	r3, r2
     8f4:	e1a02001 	mov	r2, r1
     8f8:	e1a01000 	mov	r1, r0
     8fc:	e3a0000c 	mov	r0, #12
     900:	ef000000 	svc	0x00000000
     904:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     908:	e12fff1e 	bx	lr

0000090c <sleep>:
     90c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     910:	e1a04003 	mov	r4, r3
     914:	e1a03002 	mov	r3, r2
     918:	e1a02001 	mov	r2, r1
     91c:	e1a01000 	mov	r1, r0
     920:	e3a0000d 	mov	r0, #13
     924:	ef000000 	svc	0x00000000
     928:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     92c:	e12fff1e 	bx	lr

00000930 <uptime>:
     930:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     934:	e1a04003 	mov	r4, r3
     938:	e1a03002 	mov	r3, r2
     93c:	e1a02001 	mov	r2, r1
     940:	e1a01000 	mov	r1, r0
     944:	e3a0000e 	mov	r0, #14
     948:	ef000000 	svc	0x00000000
     94c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     950:	e12fff1e 	bx	lr

00000954 <getprocs>:
     954:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     958:	e1a04003 	mov	r4, r3
     95c:	e1a03002 	mov	r3, r2
     960:	e1a02001 	mov	r2, r1
     964:	e1a01000 	mov	r1, r0
     968:	e3a00016 	mov	r0, #22
     96c:	ef000000 	svc	0x00000000
     970:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     974:	e12fff1e 	bx	lr

00000978 <settickets>:
     978:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     97c:	e1a04003 	mov	r4, r3
     980:	e1a03002 	mov	r3, r2
     984:	e1a02001 	mov	r2, r1
     988:	e1a01000 	mov	r1, r0
     98c:	e3a00017 	mov	r0, #23
     990:	ef000000 	svc	0x00000000
     994:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     998:	e12fff1e 	bx	lr

0000099c <srand>:
     99c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a0:	e1a04003 	mov	r4, r3
     9a4:	e1a03002 	mov	r3, r2
     9a8:	e1a02001 	mov	r2, r1
     9ac:	e1a01000 	mov	r1, r0
     9b0:	e3a00018 	mov	r0, #24
     9b4:	ef000000 	svc	0x00000000
     9b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9bc:	e12fff1e 	bx	lr

000009c0 <getpinfo>:
     9c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c4:	e1a04003 	mov	r4, r3
     9c8:	e1a03002 	mov	r3, r2
     9cc:	e1a02001 	mov	r2, r1
     9d0:	e1a01000 	mov	r1, r0
     9d4:	e3a00019 	mov	r0, #25
     9d8:	ef000000 	svc	0x00000000
     9dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e0:	e12fff1e 	bx	lr

000009e4 <dumppagetable>:
     9e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9e8:	e1a04003 	mov	r4, r3
     9ec:	e1a03002 	mov	r3, r2
     9f0:	e1a02001 	mov	r2, r1
     9f4:	e1a01000 	mov	r1, r0
     9f8:	e3a0001a 	mov	r0, #26
     9fc:	ef000000 	svc	0x00000000
     a00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a04:	e12fff1e 	bx	lr

00000a08 <putc>:
     a08:	e92d4800 	push	{fp, lr}
     a0c:	e28db004 	add	fp, sp, #4
     a10:	e24dd008 	sub	sp, sp, #8
     a14:	e50b0008 	str	r0, [fp, #-8]
     a18:	e1a03001 	mov	r3, r1
     a1c:	e54b3009 	strb	r3, [fp, #-9]
     a20:	e24b3009 	sub	r3, fp, #9
     a24:	e3a02001 	mov	r2, #1
     a28:	e1a01003 	mov	r1, r3
     a2c:	e51b0008 	ldr	r0, [fp, #-8]
     a30:	ebffff37 	bl	714 <write>
     a34:	e1a00000 	nop			@ (mov r0, r0)
     a38:	e24bd004 	sub	sp, fp, #4
     a3c:	e8bd8800 	pop	{fp, pc}

00000a40 <printint>:
     a40:	e92d4800 	push	{fp, lr}
     a44:	e28db004 	add	fp, sp, #4
     a48:	e24dd030 	sub	sp, sp, #48	@ 0x30
     a4c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     a50:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     a54:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     a58:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     a5c:	e3a03000 	mov	r3, #0
     a60:	e50b300c 	str	r3, [fp, #-12]
     a64:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     a68:	e3530000 	cmp	r3, #0
     a6c:	0a000008 	beq	a94 <printint+0x54>
     a70:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a74:	e3530000 	cmp	r3, #0
     a78:	aa000005 	bge	a94 <printint+0x54>
     a7c:	e3a03001 	mov	r3, #1
     a80:	e50b300c 	str	r3, [fp, #-12]
     a84:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a88:	e2633000 	rsb	r3, r3, #0
     a8c:	e50b3010 	str	r3, [fp, #-16]
     a90:	ea000001 	b	a9c <printint+0x5c>
     a94:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a98:	e50b3010 	str	r3, [fp, #-16]
     a9c:	e3a03000 	mov	r3, #0
     aa0:	e50b3008 	str	r3, [fp, #-8]
     aa4:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     aa8:	e51b3010 	ldr	r3, [fp, #-16]
     aac:	e1a01002 	mov	r1, r2
     ab0:	e1a00003 	mov	r0, r3
     ab4:	eb0001d5 	bl	1210 <__aeabi_uidivmod>
     ab8:	e1a03001 	mov	r3, r1
     abc:	e1a01003 	mov	r1, r3
     ac0:	e51b3008 	ldr	r3, [fp, #-8]
     ac4:	e2832001 	add	r2, r3, #1
     ac8:	e50b2008 	str	r2, [fp, #-8]
     acc:	e59f20a0 	ldr	r2, [pc, #160]	@ b74 <printint+0x134>
     ad0:	e7d22001 	ldrb	r2, [r2, r1]
     ad4:	e2433004 	sub	r3, r3, #4
     ad8:	e083300b 	add	r3, r3, fp
     adc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ae0:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     ae4:	e1a01003 	mov	r1, r3
     ae8:	e51b0010 	ldr	r0, [fp, #-16]
     aec:	eb00018a 	bl	111c <__udivsi3>
     af0:	e1a03000 	mov	r3, r0
     af4:	e50b3010 	str	r3, [fp, #-16]
     af8:	e51b3010 	ldr	r3, [fp, #-16]
     afc:	e3530000 	cmp	r3, #0
     b00:	1affffe7 	bne	aa4 <printint+0x64>
     b04:	e51b300c 	ldr	r3, [fp, #-12]
     b08:	e3530000 	cmp	r3, #0
     b0c:	0a00000e 	beq	b4c <printint+0x10c>
     b10:	e51b3008 	ldr	r3, [fp, #-8]
     b14:	e2832001 	add	r2, r3, #1
     b18:	e50b2008 	str	r2, [fp, #-8]
     b1c:	e2433004 	sub	r3, r3, #4
     b20:	e083300b 	add	r3, r3, fp
     b24:	e3a0202d 	mov	r2, #45	@ 0x2d
     b28:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     b2c:	ea000006 	b	b4c <printint+0x10c>
     b30:	e24b2020 	sub	r2, fp, #32
     b34:	e51b3008 	ldr	r3, [fp, #-8]
     b38:	e0823003 	add	r3, r2, r3
     b3c:	e5d33000 	ldrb	r3, [r3]
     b40:	e1a01003 	mov	r1, r3
     b44:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     b48:	ebffffae 	bl	a08 <putc>
     b4c:	e51b3008 	ldr	r3, [fp, #-8]
     b50:	e2433001 	sub	r3, r3, #1
     b54:	e50b3008 	str	r3, [fp, #-8]
     b58:	e51b3008 	ldr	r3, [fp, #-8]
     b5c:	e3530000 	cmp	r3, #0
     b60:	aafffff2 	bge	b30 <printint+0xf0>
     b64:	e1a00000 	nop			@ (mov r0, r0)
     b68:	e1a00000 	nop			@ (mov r0, r0)
     b6c:	e24bd004 	sub	sp, fp, #4
     b70:	e8bd8800 	pop	{fp, pc}
     b74:	00001288 	.word	0x00001288

00000b78 <printf>:
     b78:	e92d000e 	push	{r1, r2, r3}
     b7c:	e92d4800 	push	{fp, lr}
     b80:	e28db004 	add	fp, sp, #4
     b84:	e24dd024 	sub	sp, sp, #36	@ 0x24
     b88:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     b8c:	e3a03000 	mov	r3, #0
     b90:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b94:	e28b3008 	add	r3, fp, #8
     b98:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b9c:	e3a03000 	mov	r3, #0
     ba0:	e50b3010 	str	r3, [fp, #-16]
     ba4:	ea000074 	b	d7c <printf+0x204>
     ba8:	e59b2004 	ldr	r2, [fp, #4]
     bac:	e51b3010 	ldr	r3, [fp, #-16]
     bb0:	e0823003 	add	r3, r2, r3
     bb4:	e5d33000 	ldrb	r3, [r3]
     bb8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     bbc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     bc0:	e3530000 	cmp	r3, #0
     bc4:	1a00000b 	bne	bf8 <printf+0x80>
     bc8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bcc:	e3530025 	cmp	r3, #37	@ 0x25
     bd0:	1a000002 	bne	be0 <printf+0x68>
     bd4:	e3a03025 	mov	r3, #37	@ 0x25
     bd8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     bdc:	ea000063 	b	d70 <printf+0x1f8>
     be0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     be4:	e6ef3073 	uxtb	r3, r3
     be8:	e1a01003 	mov	r1, r3
     bec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bf0:	ebffff84 	bl	a08 <putc>
     bf4:	ea00005d 	b	d70 <printf+0x1f8>
     bf8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     bfc:	e3530025 	cmp	r3, #37	@ 0x25
     c00:	1a00005a 	bne	d70 <printf+0x1f8>
     c04:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c08:	e3530064 	cmp	r3, #100	@ 0x64
     c0c:	1a00000a 	bne	c3c <printf+0xc4>
     c10:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c14:	e5933000 	ldr	r3, [r3]
     c18:	e1a01003 	mov	r1, r3
     c1c:	e3a03001 	mov	r3, #1
     c20:	e3a0200a 	mov	r2, #10
     c24:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c28:	ebffff84 	bl	a40 <printint>
     c2c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c30:	e2833004 	add	r3, r3, #4
     c34:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c38:	ea00004a 	b	d68 <printf+0x1f0>
     c3c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c40:	e3530078 	cmp	r3, #120	@ 0x78
     c44:	0a000002 	beq	c54 <printf+0xdc>
     c48:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c4c:	e3530070 	cmp	r3, #112	@ 0x70
     c50:	1a00000a 	bne	c80 <printf+0x108>
     c54:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c58:	e5933000 	ldr	r3, [r3]
     c5c:	e1a01003 	mov	r1, r3
     c60:	e3a03000 	mov	r3, #0
     c64:	e3a02010 	mov	r2, #16
     c68:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c6c:	ebffff73 	bl	a40 <printint>
     c70:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c74:	e2833004 	add	r3, r3, #4
     c78:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c7c:	ea000039 	b	d68 <printf+0x1f0>
     c80:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c84:	e3530073 	cmp	r3, #115	@ 0x73
     c88:	1a000018 	bne	cf0 <printf+0x178>
     c8c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c90:	e5933000 	ldr	r3, [r3]
     c94:	e50b300c 	str	r3, [fp, #-12]
     c98:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c9c:	e2833004 	add	r3, r3, #4
     ca0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ca4:	e51b300c 	ldr	r3, [fp, #-12]
     ca8:	e3530000 	cmp	r3, #0
     cac:	1a00000a 	bne	cdc <printf+0x164>
     cb0:	e59f30f4 	ldr	r3, [pc, #244]	@ dac <printf+0x234>
     cb4:	e50b300c 	str	r3, [fp, #-12]
     cb8:	ea000007 	b	cdc <printf+0x164>
     cbc:	e51b300c 	ldr	r3, [fp, #-12]
     cc0:	e5d33000 	ldrb	r3, [r3]
     cc4:	e1a01003 	mov	r1, r3
     cc8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ccc:	ebffff4d 	bl	a08 <putc>
     cd0:	e51b300c 	ldr	r3, [fp, #-12]
     cd4:	e2833001 	add	r3, r3, #1
     cd8:	e50b300c 	str	r3, [fp, #-12]
     cdc:	e51b300c 	ldr	r3, [fp, #-12]
     ce0:	e5d33000 	ldrb	r3, [r3]
     ce4:	e3530000 	cmp	r3, #0
     ce8:	1afffff3 	bne	cbc <printf+0x144>
     cec:	ea00001d 	b	d68 <printf+0x1f0>
     cf0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cf4:	e3530063 	cmp	r3, #99	@ 0x63
     cf8:	1a000009 	bne	d24 <printf+0x1ac>
     cfc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d00:	e5933000 	ldr	r3, [r3]
     d04:	e6ef3073 	uxtb	r3, r3
     d08:	e1a01003 	mov	r1, r3
     d0c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d10:	ebffff3c 	bl	a08 <putc>
     d14:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d18:	e2833004 	add	r3, r3, #4
     d1c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d20:	ea000010 	b	d68 <printf+0x1f0>
     d24:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d28:	e3530025 	cmp	r3, #37	@ 0x25
     d2c:	1a000005 	bne	d48 <printf+0x1d0>
     d30:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d34:	e6ef3073 	uxtb	r3, r3
     d38:	e1a01003 	mov	r1, r3
     d3c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d40:	ebffff30 	bl	a08 <putc>
     d44:	ea000007 	b	d68 <printf+0x1f0>
     d48:	e3a01025 	mov	r1, #37	@ 0x25
     d4c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d50:	ebffff2c 	bl	a08 <putc>
     d54:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d58:	e6ef3073 	uxtb	r3, r3
     d5c:	e1a01003 	mov	r1, r3
     d60:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d64:	ebffff27 	bl	a08 <putc>
     d68:	e3a03000 	mov	r3, #0
     d6c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d70:	e51b3010 	ldr	r3, [fp, #-16]
     d74:	e2833001 	add	r3, r3, #1
     d78:	e50b3010 	str	r3, [fp, #-16]
     d7c:	e59b2004 	ldr	r2, [fp, #4]
     d80:	e51b3010 	ldr	r3, [fp, #-16]
     d84:	e0823003 	add	r3, r2, r3
     d88:	e5d33000 	ldrb	r3, [r3]
     d8c:	e3530000 	cmp	r3, #0
     d90:	1affff84 	bne	ba8 <printf+0x30>
     d94:	e1a00000 	nop			@ (mov r0, r0)
     d98:	e1a00000 	nop			@ (mov r0, r0)
     d9c:	e24bd004 	sub	sp, fp, #4
     da0:	e8bd4800 	pop	{fp, lr}
     da4:	e28dd00c 	add	sp, sp, #12
     da8:	e12fff1e 	bx	lr
     dac:	00001280 	.word	0x00001280

00000db0 <free>:
     db0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     db4:	e28db000 	add	fp, sp, #0
     db8:	e24dd014 	sub	sp, sp, #20
     dbc:	e50b0010 	str	r0, [fp, #-16]
     dc0:	e51b3010 	ldr	r3, [fp, #-16]
     dc4:	e2433008 	sub	r3, r3, #8
     dc8:	e50b300c 	str	r3, [fp, #-12]
     dcc:	e59f3154 	ldr	r3, [pc, #340]	@ f28 <free+0x178>
     dd0:	e5933000 	ldr	r3, [r3]
     dd4:	e50b3008 	str	r3, [fp, #-8]
     dd8:	ea000010 	b	e20 <free+0x70>
     ddc:	e51b3008 	ldr	r3, [fp, #-8]
     de0:	e5933000 	ldr	r3, [r3]
     de4:	e51b2008 	ldr	r2, [fp, #-8]
     de8:	e1520003 	cmp	r2, r3
     dec:	3a000008 	bcc	e14 <free+0x64>
     df0:	e51b200c 	ldr	r2, [fp, #-12]
     df4:	e51b3008 	ldr	r3, [fp, #-8]
     df8:	e1520003 	cmp	r2, r3
     dfc:	8a000010 	bhi	e44 <free+0x94>
     e00:	e51b3008 	ldr	r3, [fp, #-8]
     e04:	e5933000 	ldr	r3, [r3]
     e08:	e51b200c 	ldr	r2, [fp, #-12]
     e0c:	e1520003 	cmp	r2, r3
     e10:	3a00000b 	bcc	e44 <free+0x94>
     e14:	e51b3008 	ldr	r3, [fp, #-8]
     e18:	e5933000 	ldr	r3, [r3]
     e1c:	e50b3008 	str	r3, [fp, #-8]
     e20:	e51b200c 	ldr	r2, [fp, #-12]
     e24:	e51b3008 	ldr	r3, [fp, #-8]
     e28:	e1520003 	cmp	r2, r3
     e2c:	9affffea 	bls	ddc <free+0x2c>
     e30:	e51b3008 	ldr	r3, [fp, #-8]
     e34:	e5933000 	ldr	r3, [r3]
     e38:	e51b200c 	ldr	r2, [fp, #-12]
     e3c:	e1520003 	cmp	r2, r3
     e40:	2affffe5 	bcs	ddc <free+0x2c>
     e44:	e51b300c 	ldr	r3, [fp, #-12]
     e48:	e5933004 	ldr	r3, [r3, #4]
     e4c:	e1a03183 	lsl	r3, r3, #3
     e50:	e51b200c 	ldr	r2, [fp, #-12]
     e54:	e0822003 	add	r2, r2, r3
     e58:	e51b3008 	ldr	r3, [fp, #-8]
     e5c:	e5933000 	ldr	r3, [r3]
     e60:	e1520003 	cmp	r2, r3
     e64:	1a00000d 	bne	ea0 <free+0xf0>
     e68:	e51b300c 	ldr	r3, [fp, #-12]
     e6c:	e5932004 	ldr	r2, [r3, #4]
     e70:	e51b3008 	ldr	r3, [fp, #-8]
     e74:	e5933000 	ldr	r3, [r3]
     e78:	e5933004 	ldr	r3, [r3, #4]
     e7c:	e0822003 	add	r2, r2, r3
     e80:	e51b300c 	ldr	r3, [fp, #-12]
     e84:	e5832004 	str	r2, [r3, #4]
     e88:	e51b3008 	ldr	r3, [fp, #-8]
     e8c:	e5933000 	ldr	r3, [r3]
     e90:	e5932000 	ldr	r2, [r3]
     e94:	e51b300c 	ldr	r3, [fp, #-12]
     e98:	e5832000 	str	r2, [r3]
     e9c:	ea000003 	b	eb0 <free+0x100>
     ea0:	e51b3008 	ldr	r3, [fp, #-8]
     ea4:	e5932000 	ldr	r2, [r3]
     ea8:	e51b300c 	ldr	r3, [fp, #-12]
     eac:	e5832000 	str	r2, [r3]
     eb0:	e51b3008 	ldr	r3, [fp, #-8]
     eb4:	e5933004 	ldr	r3, [r3, #4]
     eb8:	e1a03183 	lsl	r3, r3, #3
     ebc:	e51b2008 	ldr	r2, [fp, #-8]
     ec0:	e0823003 	add	r3, r2, r3
     ec4:	e51b200c 	ldr	r2, [fp, #-12]
     ec8:	e1520003 	cmp	r2, r3
     ecc:	1a00000b 	bne	f00 <free+0x150>
     ed0:	e51b3008 	ldr	r3, [fp, #-8]
     ed4:	e5932004 	ldr	r2, [r3, #4]
     ed8:	e51b300c 	ldr	r3, [fp, #-12]
     edc:	e5933004 	ldr	r3, [r3, #4]
     ee0:	e0822003 	add	r2, r2, r3
     ee4:	e51b3008 	ldr	r3, [fp, #-8]
     ee8:	e5832004 	str	r2, [r3, #4]
     eec:	e51b300c 	ldr	r3, [fp, #-12]
     ef0:	e5932000 	ldr	r2, [r3]
     ef4:	e51b3008 	ldr	r3, [fp, #-8]
     ef8:	e5832000 	str	r2, [r3]
     efc:	ea000002 	b	f0c <free+0x15c>
     f00:	e51b3008 	ldr	r3, [fp, #-8]
     f04:	e51b200c 	ldr	r2, [fp, #-12]
     f08:	e5832000 	str	r2, [r3]
     f0c:	e59f2014 	ldr	r2, [pc, #20]	@ f28 <free+0x178>
     f10:	e51b3008 	ldr	r3, [fp, #-8]
     f14:	e5823000 	str	r3, [r2]
     f18:	e1a00000 	nop			@ (mov r0, r0)
     f1c:	e28bd000 	add	sp, fp, #0
     f20:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     f24:	e12fff1e 	bx	lr
     f28:	000012a4 	.word	0x000012a4

00000f2c <morecore>:
     f2c:	e92d4800 	push	{fp, lr}
     f30:	e28db004 	add	fp, sp, #4
     f34:	e24dd010 	sub	sp, sp, #16
     f38:	e50b0010 	str	r0, [fp, #-16]
     f3c:	e51b3010 	ldr	r3, [fp, #-16]
     f40:	e3530a01 	cmp	r3, #4096	@ 0x1000
     f44:	2a000001 	bcs	f50 <morecore+0x24>
     f48:	e3a03a01 	mov	r3, #4096	@ 0x1000
     f4c:	e50b3010 	str	r3, [fp, #-16]
     f50:	e51b3010 	ldr	r3, [fp, #-16]
     f54:	e1a03183 	lsl	r3, r3, #3
     f58:	e1a00003 	mov	r0, r3
     f5c:	ebfffe61 	bl	8e8 <sbrk>
     f60:	e50b0008 	str	r0, [fp, #-8]
     f64:	e51b3008 	ldr	r3, [fp, #-8]
     f68:	e3730001 	cmn	r3, #1
     f6c:	1a000001 	bne	f78 <morecore+0x4c>
     f70:	e3a03000 	mov	r3, #0
     f74:	ea00000a 	b	fa4 <morecore+0x78>
     f78:	e51b3008 	ldr	r3, [fp, #-8]
     f7c:	e50b300c 	str	r3, [fp, #-12]
     f80:	e51b300c 	ldr	r3, [fp, #-12]
     f84:	e51b2010 	ldr	r2, [fp, #-16]
     f88:	e5832004 	str	r2, [r3, #4]
     f8c:	e51b300c 	ldr	r3, [fp, #-12]
     f90:	e2833008 	add	r3, r3, #8
     f94:	e1a00003 	mov	r0, r3
     f98:	ebffff84 	bl	db0 <free>
     f9c:	e59f300c 	ldr	r3, [pc, #12]	@ fb0 <morecore+0x84>
     fa0:	e5933000 	ldr	r3, [r3]
     fa4:	e1a00003 	mov	r0, r3
     fa8:	e24bd004 	sub	sp, fp, #4
     fac:	e8bd8800 	pop	{fp, pc}
     fb0:	000012a4 	.word	0x000012a4

00000fb4 <malloc>:
     fb4:	e92d4800 	push	{fp, lr}
     fb8:	e28db004 	add	fp, sp, #4
     fbc:	e24dd018 	sub	sp, sp, #24
     fc0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     fc4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fc8:	e2833007 	add	r3, r3, #7
     fcc:	e1a031a3 	lsr	r3, r3, #3
     fd0:	e2833001 	add	r3, r3, #1
     fd4:	e50b3010 	str	r3, [fp, #-16]
     fd8:	e59f3134 	ldr	r3, [pc, #308]	@ 1114 <malloc+0x160>
     fdc:	e5933000 	ldr	r3, [r3]
     fe0:	e50b300c 	str	r3, [fp, #-12]
     fe4:	e51b300c 	ldr	r3, [fp, #-12]
     fe8:	e3530000 	cmp	r3, #0
     fec:	1a00000b 	bne	1020 <malloc+0x6c>
     ff0:	e59f3120 	ldr	r3, [pc, #288]	@ 1118 <malloc+0x164>
     ff4:	e50b300c 	str	r3, [fp, #-12]
     ff8:	e59f2114 	ldr	r2, [pc, #276]	@ 1114 <malloc+0x160>
     ffc:	e51b300c 	ldr	r3, [fp, #-12]
    1000:	e5823000 	str	r3, [r2]
    1004:	e59f3108 	ldr	r3, [pc, #264]	@ 1114 <malloc+0x160>
    1008:	e5933000 	ldr	r3, [r3]
    100c:	e59f2104 	ldr	r2, [pc, #260]	@ 1118 <malloc+0x164>
    1010:	e5823000 	str	r3, [r2]
    1014:	e59f30fc 	ldr	r3, [pc, #252]	@ 1118 <malloc+0x164>
    1018:	e3a02000 	mov	r2, #0
    101c:	e5832004 	str	r2, [r3, #4]
    1020:	e51b300c 	ldr	r3, [fp, #-12]
    1024:	e5933000 	ldr	r3, [r3]
    1028:	e50b3008 	str	r3, [fp, #-8]
    102c:	e51b3008 	ldr	r3, [fp, #-8]
    1030:	e5933004 	ldr	r3, [r3, #4]
    1034:	e51b2010 	ldr	r2, [fp, #-16]
    1038:	e1520003 	cmp	r2, r3
    103c:	8a00001e 	bhi	10bc <malloc+0x108>
    1040:	e51b3008 	ldr	r3, [fp, #-8]
    1044:	e5933004 	ldr	r3, [r3, #4]
    1048:	e51b2010 	ldr	r2, [fp, #-16]
    104c:	e1520003 	cmp	r2, r3
    1050:	1a000004 	bne	1068 <malloc+0xb4>
    1054:	e51b3008 	ldr	r3, [fp, #-8]
    1058:	e5932000 	ldr	r2, [r3]
    105c:	e51b300c 	ldr	r3, [fp, #-12]
    1060:	e5832000 	str	r2, [r3]
    1064:	ea00000e 	b	10a4 <malloc+0xf0>
    1068:	e51b3008 	ldr	r3, [fp, #-8]
    106c:	e5932004 	ldr	r2, [r3, #4]
    1070:	e51b3010 	ldr	r3, [fp, #-16]
    1074:	e0422003 	sub	r2, r2, r3
    1078:	e51b3008 	ldr	r3, [fp, #-8]
    107c:	e5832004 	str	r2, [r3, #4]
    1080:	e51b3008 	ldr	r3, [fp, #-8]
    1084:	e5933004 	ldr	r3, [r3, #4]
    1088:	e1a03183 	lsl	r3, r3, #3
    108c:	e51b2008 	ldr	r2, [fp, #-8]
    1090:	e0823003 	add	r3, r2, r3
    1094:	e50b3008 	str	r3, [fp, #-8]
    1098:	e51b3008 	ldr	r3, [fp, #-8]
    109c:	e51b2010 	ldr	r2, [fp, #-16]
    10a0:	e5832004 	str	r2, [r3, #4]
    10a4:	e59f2068 	ldr	r2, [pc, #104]	@ 1114 <malloc+0x160>
    10a8:	e51b300c 	ldr	r3, [fp, #-12]
    10ac:	e5823000 	str	r3, [r2]
    10b0:	e51b3008 	ldr	r3, [fp, #-8]
    10b4:	e2833008 	add	r3, r3, #8
    10b8:	ea000012 	b	1108 <malloc+0x154>
    10bc:	e59f3050 	ldr	r3, [pc, #80]	@ 1114 <malloc+0x160>
    10c0:	e5933000 	ldr	r3, [r3]
    10c4:	e51b2008 	ldr	r2, [fp, #-8]
    10c8:	e1520003 	cmp	r2, r3
    10cc:	1a000007 	bne	10f0 <malloc+0x13c>
    10d0:	e51b0010 	ldr	r0, [fp, #-16]
    10d4:	ebffff94 	bl	f2c <morecore>
    10d8:	e50b0008 	str	r0, [fp, #-8]
    10dc:	e51b3008 	ldr	r3, [fp, #-8]
    10e0:	e3530000 	cmp	r3, #0
    10e4:	1a000001 	bne	10f0 <malloc+0x13c>
    10e8:	e3a03000 	mov	r3, #0
    10ec:	ea000005 	b	1108 <malloc+0x154>
    10f0:	e51b3008 	ldr	r3, [fp, #-8]
    10f4:	e50b300c 	str	r3, [fp, #-12]
    10f8:	e51b3008 	ldr	r3, [fp, #-8]
    10fc:	e5933000 	ldr	r3, [r3]
    1100:	e50b3008 	str	r3, [fp, #-8]
    1104:	eaffffc8 	b	102c <malloc+0x78>
    1108:	e1a00003 	mov	r0, r3
    110c:	e24bd004 	sub	sp, fp, #4
    1110:	e8bd8800 	pop	{fp, pc}
    1114:	000012a4 	.word	0x000012a4
    1118:	0000129c 	.word	0x0000129c

0000111c <__udivsi3>:
    111c:	e2512001 	subs	r2, r1, #1
    1120:	012fff1e 	bxeq	lr
    1124:	3a000036 	bcc	1204 <__udivsi3+0xe8>
    1128:	e1500001 	cmp	r0, r1
    112c:	9a000022 	bls	11bc <__udivsi3+0xa0>
    1130:	e1110002 	tst	r1, r2
    1134:	0a000023 	beq	11c8 <__udivsi3+0xac>
    1138:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    113c:	01a01181 	lsleq	r1, r1, #3
    1140:	03a03008 	moveq	r3, #8
    1144:	13a03001 	movne	r3, #1
    1148:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    114c:	31510000 	cmpcc	r1, r0
    1150:	31a01201 	lslcc	r1, r1, #4
    1154:	31a03203 	lslcc	r3, r3, #4
    1158:	3afffffa 	bcc	1148 <__udivsi3+0x2c>
    115c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1160:	31510000 	cmpcc	r1, r0
    1164:	31a01081 	lslcc	r1, r1, #1
    1168:	31a03083 	lslcc	r3, r3, #1
    116c:	3afffffa 	bcc	115c <__udivsi3+0x40>
    1170:	e3a02000 	mov	r2, #0
    1174:	e1500001 	cmp	r0, r1
    1178:	20400001 	subcs	r0, r0, r1
    117c:	21822003 	orrcs	r2, r2, r3
    1180:	e15000a1 	cmp	r0, r1, lsr #1
    1184:	204000a1 	subcs	r0, r0, r1, lsr #1
    1188:	218220a3 	orrcs	r2, r2, r3, lsr #1
    118c:	e1500121 	cmp	r0, r1, lsr #2
    1190:	20400121 	subcs	r0, r0, r1, lsr #2
    1194:	21822123 	orrcs	r2, r2, r3, lsr #2
    1198:	e15001a1 	cmp	r0, r1, lsr #3
    119c:	204001a1 	subcs	r0, r0, r1, lsr #3
    11a0:	218221a3 	orrcs	r2, r2, r3, lsr #3
    11a4:	e3500000 	cmp	r0, #0
    11a8:	11b03223 	lsrsne	r3, r3, #4
    11ac:	11a01221 	lsrne	r1, r1, #4
    11b0:	1affffef 	bne	1174 <__udivsi3+0x58>
    11b4:	e1a00002 	mov	r0, r2
    11b8:	e12fff1e 	bx	lr
    11bc:	03a00001 	moveq	r0, #1
    11c0:	13a00000 	movne	r0, #0
    11c4:	e12fff1e 	bx	lr
    11c8:	e3510801 	cmp	r1, #65536	@ 0x10000
    11cc:	21a01821 	lsrcs	r1, r1, #16
    11d0:	23a02010 	movcs	r2, #16
    11d4:	33a02000 	movcc	r2, #0
    11d8:	e3510c01 	cmp	r1, #256	@ 0x100
    11dc:	21a01421 	lsrcs	r1, r1, #8
    11e0:	22822008 	addcs	r2, r2, #8
    11e4:	e3510010 	cmp	r1, #16
    11e8:	21a01221 	lsrcs	r1, r1, #4
    11ec:	22822004 	addcs	r2, r2, #4
    11f0:	e3510004 	cmp	r1, #4
    11f4:	82822003 	addhi	r2, r2, #3
    11f8:	908220a1 	addls	r2, r2, r1, lsr #1
    11fc:	e1a00230 	lsr	r0, r0, r2
    1200:	e12fff1e 	bx	lr
    1204:	e3500000 	cmp	r0, #0
    1208:	13e00000 	mvnne	r0, #0
    120c:	ea000007 	b	1230 <__aeabi_idiv0>

00001210 <__aeabi_uidivmod>:
    1210:	e3510000 	cmp	r1, #0
    1214:	0afffffa 	beq	1204 <__udivsi3+0xe8>
    1218:	e92d4003 	push	{r0, r1, lr}
    121c:	ebffffbe 	bl	111c <__udivsi3>
    1220:	e8bd4006 	pop	{r1, r2, lr}
    1224:	e0030092 	mul	r3, r2, r0
    1228:	e0411003 	sub	r1, r1, r3
    122c:	e12fff1e 	bx	lr

00001230 <__aeabi_idiv0>:
    1230:	e12fff1e 	bx	lr
