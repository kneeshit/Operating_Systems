
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
      90:	eb0002af 	bl	b54 <printf>
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
      c4:	eb0002a2 	bl	b54 <printf>
      c8:	eb00016d 	bl	684 <exit>
      cc:	e3a03000 	mov	r3, #0
      d0:	e50b3008 	str	r3, [fp, #-8]
      d4:	ea00001c 	b	14c <main+0xe4>
      d8:	e51b3008 	ldr	r3, [fp, #-8]
      dc:	e2833001 	add	r3, r3, #1
      e0:	e1a02003 	mov	r2, r3
      e4:	e59f107c 	ldr	r1, [pc, #124]	@ 168 <main+0x100>
      e8:	e3a00001 	mov	r0, #1
      ec:	eb000298 	bl	b54 <printf>
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
     120:	eb00028b 	bl	b54 <printf>
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
     160:	00001210 	.word	0x00001210
     164:	00001230 	.word	0x00001230
     168:	00001254 	.word	0x00001254
     16c:	00001258 	.word	0x00001258

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

000009e4 <putc>:
     9e4:	e92d4800 	push	{fp, lr}
     9e8:	e28db004 	add	fp, sp, #4
     9ec:	e24dd008 	sub	sp, sp, #8
     9f0:	e50b0008 	str	r0, [fp, #-8]
     9f4:	e1a03001 	mov	r3, r1
     9f8:	e54b3009 	strb	r3, [fp, #-9]
     9fc:	e24b3009 	sub	r3, fp, #9
     a00:	e3a02001 	mov	r2, #1
     a04:	e1a01003 	mov	r1, r3
     a08:	e51b0008 	ldr	r0, [fp, #-8]
     a0c:	ebffff40 	bl	714 <write>
     a10:	e1a00000 	nop			@ (mov r0, r0)
     a14:	e24bd004 	sub	sp, fp, #4
     a18:	e8bd8800 	pop	{fp, pc}

00000a1c <printint>:
     a1c:	e92d4800 	push	{fp, lr}
     a20:	e28db004 	add	fp, sp, #4
     a24:	e24dd030 	sub	sp, sp, #48	@ 0x30
     a28:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     a2c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     a30:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     a34:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     a38:	e3a03000 	mov	r3, #0
     a3c:	e50b300c 	str	r3, [fp, #-12]
     a40:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     a44:	e3530000 	cmp	r3, #0
     a48:	0a000008 	beq	a70 <printint+0x54>
     a4c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a50:	e3530000 	cmp	r3, #0
     a54:	aa000005 	bge	a70 <printint+0x54>
     a58:	e3a03001 	mov	r3, #1
     a5c:	e50b300c 	str	r3, [fp, #-12]
     a60:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a64:	e2633000 	rsb	r3, r3, #0
     a68:	e50b3010 	str	r3, [fp, #-16]
     a6c:	ea000001 	b	a78 <printint+0x5c>
     a70:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a74:	e50b3010 	str	r3, [fp, #-16]
     a78:	e3a03000 	mov	r3, #0
     a7c:	e50b3008 	str	r3, [fp, #-8]
     a80:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     a84:	e51b3010 	ldr	r3, [fp, #-16]
     a88:	e1a01002 	mov	r1, r2
     a8c:	e1a00003 	mov	r0, r3
     a90:	eb0001d5 	bl	11ec <__aeabi_uidivmod>
     a94:	e1a03001 	mov	r3, r1
     a98:	e1a01003 	mov	r1, r3
     a9c:	e51b3008 	ldr	r3, [fp, #-8]
     aa0:	e2832001 	add	r2, r3, #1
     aa4:	e50b2008 	str	r2, [fp, #-8]
     aa8:	e59f20a0 	ldr	r2, [pc, #160]	@ b50 <printint+0x134>
     aac:	e7d22001 	ldrb	r2, [r2, r1]
     ab0:	e2433004 	sub	r3, r3, #4
     ab4:	e083300b 	add	r3, r3, fp
     ab8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     abc:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     ac0:	e1a01003 	mov	r1, r3
     ac4:	e51b0010 	ldr	r0, [fp, #-16]
     ac8:	eb00018a 	bl	10f8 <__udivsi3>
     acc:	e1a03000 	mov	r3, r0
     ad0:	e50b3010 	str	r3, [fp, #-16]
     ad4:	e51b3010 	ldr	r3, [fp, #-16]
     ad8:	e3530000 	cmp	r3, #0
     adc:	1affffe7 	bne	a80 <printint+0x64>
     ae0:	e51b300c 	ldr	r3, [fp, #-12]
     ae4:	e3530000 	cmp	r3, #0
     ae8:	0a00000e 	beq	b28 <printint+0x10c>
     aec:	e51b3008 	ldr	r3, [fp, #-8]
     af0:	e2832001 	add	r2, r3, #1
     af4:	e50b2008 	str	r2, [fp, #-8]
     af8:	e2433004 	sub	r3, r3, #4
     afc:	e083300b 	add	r3, r3, fp
     b00:	e3a0202d 	mov	r2, #45	@ 0x2d
     b04:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     b08:	ea000006 	b	b28 <printint+0x10c>
     b0c:	e24b2020 	sub	r2, fp, #32
     b10:	e51b3008 	ldr	r3, [fp, #-8]
     b14:	e0823003 	add	r3, r2, r3
     b18:	e5d33000 	ldrb	r3, [r3]
     b1c:	e1a01003 	mov	r1, r3
     b20:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     b24:	ebffffae 	bl	9e4 <putc>
     b28:	e51b3008 	ldr	r3, [fp, #-8]
     b2c:	e2433001 	sub	r3, r3, #1
     b30:	e50b3008 	str	r3, [fp, #-8]
     b34:	e51b3008 	ldr	r3, [fp, #-8]
     b38:	e3530000 	cmp	r3, #0
     b3c:	aafffff2 	bge	b0c <printint+0xf0>
     b40:	e1a00000 	nop			@ (mov r0, r0)
     b44:	e1a00000 	nop			@ (mov r0, r0)
     b48:	e24bd004 	sub	sp, fp, #4
     b4c:	e8bd8800 	pop	{fp, pc}
     b50:	00001264 	.word	0x00001264

00000b54 <printf>:
     b54:	e92d000e 	push	{r1, r2, r3}
     b58:	e92d4800 	push	{fp, lr}
     b5c:	e28db004 	add	fp, sp, #4
     b60:	e24dd024 	sub	sp, sp, #36	@ 0x24
     b64:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     b68:	e3a03000 	mov	r3, #0
     b6c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b70:	e28b3008 	add	r3, fp, #8
     b74:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b78:	e3a03000 	mov	r3, #0
     b7c:	e50b3010 	str	r3, [fp, #-16]
     b80:	ea000074 	b	d58 <printf+0x204>
     b84:	e59b2004 	ldr	r2, [fp, #4]
     b88:	e51b3010 	ldr	r3, [fp, #-16]
     b8c:	e0823003 	add	r3, r2, r3
     b90:	e5d33000 	ldrb	r3, [r3]
     b94:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     b98:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b9c:	e3530000 	cmp	r3, #0
     ba0:	1a00000b 	bne	bd4 <printf+0x80>
     ba4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ba8:	e3530025 	cmp	r3, #37	@ 0x25
     bac:	1a000002 	bne	bbc <printf+0x68>
     bb0:	e3a03025 	mov	r3, #37	@ 0x25
     bb4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     bb8:	ea000063 	b	d4c <printf+0x1f8>
     bbc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bc0:	e6ef3073 	uxtb	r3, r3
     bc4:	e1a01003 	mov	r1, r3
     bc8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bcc:	ebffff84 	bl	9e4 <putc>
     bd0:	ea00005d 	b	d4c <printf+0x1f8>
     bd4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     bd8:	e3530025 	cmp	r3, #37	@ 0x25
     bdc:	1a00005a 	bne	d4c <printf+0x1f8>
     be0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     be4:	e3530064 	cmp	r3, #100	@ 0x64
     be8:	1a00000a 	bne	c18 <printf+0xc4>
     bec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bf0:	e5933000 	ldr	r3, [r3]
     bf4:	e1a01003 	mov	r1, r3
     bf8:	e3a03001 	mov	r3, #1
     bfc:	e3a0200a 	mov	r2, #10
     c00:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c04:	ebffff84 	bl	a1c <printint>
     c08:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c0c:	e2833004 	add	r3, r3, #4
     c10:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c14:	ea00004a 	b	d44 <printf+0x1f0>
     c18:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c1c:	e3530078 	cmp	r3, #120	@ 0x78
     c20:	0a000002 	beq	c30 <printf+0xdc>
     c24:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c28:	e3530070 	cmp	r3, #112	@ 0x70
     c2c:	1a00000a 	bne	c5c <printf+0x108>
     c30:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c34:	e5933000 	ldr	r3, [r3]
     c38:	e1a01003 	mov	r1, r3
     c3c:	e3a03000 	mov	r3, #0
     c40:	e3a02010 	mov	r2, #16
     c44:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c48:	ebffff73 	bl	a1c <printint>
     c4c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c50:	e2833004 	add	r3, r3, #4
     c54:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c58:	ea000039 	b	d44 <printf+0x1f0>
     c5c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c60:	e3530073 	cmp	r3, #115	@ 0x73
     c64:	1a000018 	bne	ccc <printf+0x178>
     c68:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c6c:	e5933000 	ldr	r3, [r3]
     c70:	e50b300c 	str	r3, [fp, #-12]
     c74:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c78:	e2833004 	add	r3, r3, #4
     c7c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c80:	e51b300c 	ldr	r3, [fp, #-12]
     c84:	e3530000 	cmp	r3, #0
     c88:	1a00000a 	bne	cb8 <printf+0x164>
     c8c:	e59f30f4 	ldr	r3, [pc, #244]	@ d88 <printf+0x234>
     c90:	e50b300c 	str	r3, [fp, #-12]
     c94:	ea000007 	b	cb8 <printf+0x164>
     c98:	e51b300c 	ldr	r3, [fp, #-12]
     c9c:	e5d33000 	ldrb	r3, [r3]
     ca0:	e1a01003 	mov	r1, r3
     ca4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ca8:	ebffff4d 	bl	9e4 <putc>
     cac:	e51b300c 	ldr	r3, [fp, #-12]
     cb0:	e2833001 	add	r3, r3, #1
     cb4:	e50b300c 	str	r3, [fp, #-12]
     cb8:	e51b300c 	ldr	r3, [fp, #-12]
     cbc:	e5d33000 	ldrb	r3, [r3]
     cc0:	e3530000 	cmp	r3, #0
     cc4:	1afffff3 	bne	c98 <printf+0x144>
     cc8:	ea00001d 	b	d44 <printf+0x1f0>
     ccc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cd0:	e3530063 	cmp	r3, #99	@ 0x63
     cd4:	1a000009 	bne	d00 <printf+0x1ac>
     cd8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cdc:	e5933000 	ldr	r3, [r3]
     ce0:	e6ef3073 	uxtb	r3, r3
     ce4:	e1a01003 	mov	r1, r3
     ce8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cec:	ebffff3c 	bl	9e4 <putc>
     cf0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cf4:	e2833004 	add	r3, r3, #4
     cf8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     cfc:	ea000010 	b	d44 <printf+0x1f0>
     d00:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d04:	e3530025 	cmp	r3, #37	@ 0x25
     d08:	1a000005 	bne	d24 <printf+0x1d0>
     d0c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d10:	e6ef3073 	uxtb	r3, r3
     d14:	e1a01003 	mov	r1, r3
     d18:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d1c:	ebffff30 	bl	9e4 <putc>
     d20:	ea000007 	b	d44 <printf+0x1f0>
     d24:	e3a01025 	mov	r1, #37	@ 0x25
     d28:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d2c:	ebffff2c 	bl	9e4 <putc>
     d30:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d34:	e6ef3073 	uxtb	r3, r3
     d38:	e1a01003 	mov	r1, r3
     d3c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d40:	ebffff27 	bl	9e4 <putc>
     d44:	e3a03000 	mov	r3, #0
     d48:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d4c:	e51b3010 	ldr	r3, [fp, #-16]
     d50:	e2833001 	add	r3, r3, #1
     d54:	e50b3010 	str	r3, [fp, #-16]
     d58:	e59b2004 	ldr	r2, [fp, #4]
     d5c:	e51b3010 	ldr	r3, [fp, #-16]
     d60:	e0823003 	add	r3, r2, r3
     d64:	e5d33000 	ldrb	r3, [r3]
     d68:	e3530000 	cmp	r3, #0
     d6c:	1affff84 	bne	b84 <printf+0x30>
     d70:	e1a00000 	nop			@ (mov r0, r0)
     d74:	e1a00000 	nop			@ (mov r0, r0)
     d78:	e24bd004 	sub	sp, fp, #4
     d7c:	e8bd4800 	pop	{fp, lr}
     d80:	e28dd00c 	add	sp, sp, #12
     d84:	e12fff1e 	bx	lr
     d88:	0000125c 	.word	0x0000125c

00000d8c <free>:
     d8c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     d90:	e28db000 	add	fp, sp, #0
     d94:	e24dd014 	sub	sp, sp, #20
     d98:	e50b0010 	str	r0, [fp, #-16]
     d9c:	e51b3010 	ldr	r3, [fp, #-16]
     da0:	e2433008 	sub	r3, r3, #8
     da4:	e50b300c 	str	r3, [fp, #-12]
     da8:	e59f3154 	ldr	r3, [pc, #340]	@ f04 <free+0x178>
     dac:	e5933000 	ldr	r3, [r3]
     db0:	e50b3008 	str	r3, [fp, #-8]
     db4:	ea000010 	b	dfc <free+0x70>
     db8:	e51b3008 	ldr	r3, [fp, #-8]
     dbc:	e5933000 	ldr	r3, [r3]
     dc0:	e51b2008 	ldr	r2, [fp, #-8]
     dc4:	e1520003 	cmp	r2, r3
     dc8:	3a000008 	bcc	df0 <free+0x64>
     dcc:	e51b200c 	ldr	r2, [fp, #-12]
     dd0:	e51b3008 	ldr	r3, [fp, #-8]
     dd4:	e1520003 	cmp	r2, r3
     dd8:	8a000010 	bhi	e20 <free+0x94>
     ddc:	e51b3008 	ldr	r3, [fp, #-8]
     de0:	e5933000 	ldr	r3, [r3]
     de4:	e51b200c 	ldr	r2, [fp, #-12]
     de8:	e1520003 	cmp	r2, r3
     dec:	3a00000b 	bcc	e20 <free+0x94>
     df0:	e51b3008 	ldr	r3, [fp, #-8]
     df4:	e5933000 	ldr	r3, [r3]
     df8:	e50b3008 	str	r3, [fp, #-8]
     dfc:	e51b200c 	ldr	r2, [fp, #-12]
     e00:	e51b3008 	ldr	r3, [fp, #-8]
     e04:	e1520003 	cmp	r2, r3
     e08:	9affffea 	bls	db8 <free+0x2c>
     e0c:	e51b3008 	ldr	r3, [fp, #-8]
     e10:	e5933000 	ldr	r3, [r3]
     e14:	e51b200c 	ldr	r2, [fp, #-12]
     e18:	e1520003 	cmp	r2, r3
     e1c:	2affffe5 	bcs	db8 <free+0x2c>
     e20:	e51b300c 	ldr	r3, [fp, #-12]
     e24:	e5933004 	ldr	r3, [r3, #4]
     e28:	e1a03183 	lsl	r3, r3, #3
     e2c:	e51b200c 	ldr	r2, [fp, #-12]
     e30:	e0822003 	add	r2, r2, r3
     e34:	e51b3008 	ldr	r3, [fp, #-8]
     e38:	e5933000 	ldr	r3, [r3]
     e3c:	e1520003 	cmp	r2, r3
     e40:	1a00000d 	bne	e7c <free+0xf0>
     e44:	e51b300c 	ldr	r3, [fp, #-12]
     e48:	e5932004 	ldr	r2, [r3, #4]
     e4c:	e51b3008 	ldr	r3, [fp, #-8]
     e50:	e5933000 	ldr	r3, [r3]
     e54:	e5933004 	ldr	r3, [r3, #4]
     e58:	e0822003 	add	r2, r2, r3
     e5c:	e51b300c 	ldr	r3, [fp, #-12]
     e60:	e5832004 	str	r2, [r3, #4]
     e64:	e51b3008 	ldr	r3, [fp, #-8]
     e68:	e5933000 	ldr	r3, [r3]
     e6c:	e5932000 	ldr	r2, [r3]
     e70:	e51b300c 	ldr	r3, [fp, #-12]
     e74:	e5832000 	str	r2, [r3]
     e78:	ea000003 	b	e8c <free+0x100>
     e7c:	e51b3008 	ldr	r3, [fp, #-8]
     e80:	e5932000 	ldr	r2, [r3]
     e84:	e51b300c 	ldr	r3, [fp, #-12]
     e88:	e5832000 	str	r2, [r3]
     e8c:	e51b3008 	ldr	r3, [fp, #-8]
     e90:	e5933004 	ldr	r3, [r3, #4]
     e94:	e1a03183 	lsl	r3, r3, #3
     e98:	e51b2008 	ldr	r2, [fp, #-8]
     e9c:	e0823003 	add	r3, r2, r3
     ea0:	e51b200c 	ldr	r2, [fp, #-12]
     ea4:	e1520003 	cmp	r2, r3
     ea8:	1a00000b 	bne	edc <free+0x150>
     eac:	e51b3008 	ldr	r3, [fp, #-8]
     eb0:	e5932004 	ldr	r2, [r3, #4]
     eb4:	e51b300c 	ldr	r3, [fp, #-12]
     eb8:	e5933004 	ldr	r3, [r3, #4]
     ebc:	e0822003 	add	r2, r2, r3
     ec0:	e51b3008 	ldr	r3, [fp, #-8]
     ec4:	e5832004 	str	r2, [r3, #4]
     ec8:	e51b300c 	ldr	r3, [fp, #-12]
     ecc:	e5932000 	ldr	r2, [r3]
     ed0:	e51b3008 	ldr	r3, [fp, #-8]
     ed4:	e5832000 	str	r2, [r3]
     ed8:	ea000002 	b	ee8 <free+0x15c>
     edc:	e51b3008 	ldr	r3, [fp, #-8]
     ee0:	e51b200c 	ldr	r2, [fp, #-12]
     ee4:	e5832000 	str	r2, [r3]
     ee8:	e59f2014 	ldr	r2, [pc, #20]	@ f04 <free+0x178>
     eec:	e51b3008 	ldr	r3, [fp, #-8]
     ef0:	e5823000 	str	r3, [r2]
     ef4:	e1a00000 	nop			@ (mov r0, r0)
     ef8:	e28bd000 	add	sp, fp, #0
     efc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     f00:	e12fff1e 	bx	lr
     f04:	00001280 	.word	0x00001280

00000f08 <morecore>:
     f08:	e92d4800 	push	{fp, lr}
     f0c:	e28db004 	add	fp, sp, #4
     f10:	e24dd010 	sub	sp, sp, #16
     f14:	e50b0010 	str	r0, [fp, #-16]
     f18:	e51b3010 	ldr	r3, [fp, #-16]
     f1c:	e3530a01 	cmp	r3, #4096	@ 0x1000
     f20:	2a000001 	bcs	f2c <morecore+0x24>
     f24:	e3a03a01 	mov	r3, #4096	@ 0x1000
     f28:	e50b3010 	str	r3, [fp, #-16]
     f2c:	e51b3010 	ldr	r3, [fp, #-16]
     f30:	e1a03183 	lsl	r3, r3, #3
     f34:	e1a00003 	mov	r0, r3
     f38:	ebfffe6a 	bl	8e8 <sbrk>
     f3c:	e50b0008 	str	r0, [fp, #-8]
     f40:	e51b3008 	ldr	r3, [fp, #-8]
     f44:	e3730001 	cmn	r3, #1
     f48:	1a000001 	bne	f54 <morecore+0x4c>
     f4c:	e3a03000 	mov	r3, #0
     f50:	ea00000a 	b	f80 <morecore+0x78>
     f54:	e51b3008 	ldr	r3, [fp, #-8]
     f58:	e50b300c 	str	r3, [fp, #-12]
     f5c:	e51b300c 	ldr	r3, [fp, #-12]
     f60:	e51b2010 	ldr	r2, [fp, #-16]
     f64:	e5832004 	str	r2, [r3, #4]
     f68:	e51b300c 	ldr	r3, [fp, #-12]
     f6c:	e2833008 	add	r3, r3, #8
     f70:	e1a00003 	mov	r0, r3
     f74:	ebffff84 	bl	d8c <free>
     f78:	e59f300c 	ldr	r3, [pc, #12]	@ f8c <morecore+0x84>
     f7c:	e5933000 	ldr	r3, [r3]
     f80:	e1a00003 	mov	r0, r3
     f84:	e24bd004 	sub	sp, fp, #4
     f88:	e8bd8800 	pop	{fp, pc}
     f8c:	00001280 	.word	0x00001280

00000f90 <malloc>:
     f90:	e92d4800 	push	{fp, lr}
     f94:	e28db004 	add	fp, sp, #4
     f98:	e24dd018 	sub	sp, sp, #24
     f9c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     fa0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fa4:	e2833007 	add	r3, r3, #7
     fa8:	e1a031a3 	lsr	r3, r3, #3
     fac:	e2833001 	add	r3, r3, #1
     fb0:	e50b3010 	str	r3, [fp, #-16]
     fb4:	e59f3134 	ldr	r3, [pc, #308]	@ 10f0 <malloc+0x160>
     fb8:	e5933000 	ldr	r3, [r3]
     fbc:	e50b300c 	str	r3, [fp, #-12]
     fc0:	e51b300c 	ldr	r3, [fp, #-12]
     fc4:	e3530000 	cmp	r3, #0
     fc8:	1a00000b 	bne	ffc <malloc+0x6c>
     fcc:	e59f3120 	ldr	r3, [pc, #288]	@ 10f4 <malloc+0x164>
     fd0:	e50b300c 	str	r3, [fp, #-12]
     fd4:	e59f2114 	ldr	r2, [pc, #276]	@ 10f0 <malloc+0x160>
     fd8:	e51b300c 	ldr	r3, [fp, #-12]
     fdc:	e5823000 	str	r3, [r2]
     fe0:	e59f3108 	ldr	r3, [pc, #264]	@ 10f0 <malloc+0x160>
     fe4:	e5933000 	ldr	r3, [r3]
     fe8:	e59f2104 	ldr	r2, [pc, #260]	@ 10f4 <malloc+0x164>
     fec:	e5823000 	str	r3, [r2]
     ff0:	e59f30fc 	ldr	r3, [pc, #252]	@ 10f4 <malloc+0x164>
     ff4:	e3a02000 	mov	r2, #0
     ff8:	e5832004 	str	r2, [r3, #4]
     ffc:	e51b300c 	ldr	r3, [fp, #-12]
    1000:	e5933000 	ldr	r3, [r3]
    1004:	e50b3008 	str	r3, [fp, #-8]
    1008:	e51b3008 	ldr	r3, [fp, #-8]
    100c:	e5933004 	ldr	r3, [r3, #4]
    1010:	e51b2010 	ldr	r2, [fp, #-16]
    1014:	e1520003 	cmp	r2, r3
    1018:	8a00001e 	bhi	1098 <malloc+0x108>
    101c:	e51b3008 	ldr	r3, [fp, #-8]
    1020:	e5933004 	ldr	r3, [r3, #4]
    1024:	e51b2010 	ldr	r2, [fp, #-16]
    1028:	e1520003 	cmp	r2, r3
    102c:	1a000004 	bne	1044 <malloc+0xb4>
    1030:	e51b3008 	ldr	r3, [fp, #-8]
    1034:	e5932000 	ldr	r2, [r3]
    1038:	e51b300c 	ldr	r3, [fp, #-12]
    103c:	e5832000 	str	r2, [r3]
    1040:	ea00000e 	b	1080 <malloc+0xf0>
    1044:	e51b3008 	ldr	r3, [fp, #-8]
    1048:	e5932004 	ldr	r2, [r3, #4]
    104c:	e51b3010 	ldr	r3, [fp, #-16]
    1050:	e0422003 	sub	r2, r2, r3
    1054:	e51b3008 	ldr	r3, [fp, #-8]
    1058:	e5832004 	str	r2, [r3, #4]
    105c:	e51b3008 	ldr	r3, [fp, #-8]
    1060:	e5933004 	ldr	r3, [r3, #4]
    1064:	e1a03183 	lsl	r3, r3, #3
    1068:	e51b2008 	ldr	r2, [fp, #-8]
    106c:	e0823003 	add	r3, r2, r3
    1070:	e50b3008 	str	r3, [fp, #-8]
    1074:	e51b3008 	ldr	r3, [fp, #-8]
    1078:	e51b2010 	ldr	r2, [fp, #-16]
    107c:	e5832004 	str	r2, [r3, #4]
    1080:	e59f2068 	ldr	r2, [pc, #104]	@ 10f0 <malloc+0x160>
    1084:	e51b300c 	ldr	r3, [fp, #-12]
    1088:	e5823000 	str	r3, [r2]
    108c:	e51b3008 	ldr	r3, [fp, #-8]
    1090:	e2833008 	add	r3, r3, #8
    1094:	ea000012 	b	10e4 <malloc+0x154>
    1098:	e59f3050 	ldr	r3, [pc, #80]	@ 10f0 <malloc+0x160>
    109c:	e5933000 	ldr	r3, [r3]
    10a0:	e51b2008 	ldr	r2, [fp, #-8]
    10a4:	e1520003 	cmp	r2, r3
    10a8:	1a000007 	bne	10cc <malloc+0x13c>
    10ac:	e51b0010 	ldr	r0, [fp, #-16]
    10b0:	ebffff94 	bl	f08 <morecore>
    10b4:	e50b0008 	str	r0, [fp, #-8]
    10b8:	e51b3008 	ldr	r3, [fp, #-8]
    10bc:	e3530000 	cmp	r3, #0
    10c0:	1a000001 	bne	10cc <malloc+0x13c>
    10c4:	e3a03000 	mov	r3, #0
    10c8:	ea000005 	b	10e4 <malloc+0x154>
    10cc:	e51b3008 	ldr	r3, [fp, #-8]
    10d0:	e50b300c 	str	r3, [fp, #-12]
    10d4:	e51b3008 	ldr	r3, [fp, #-8]
    10d8:	e5933000 	ldr	r3, [r3]
    10dc:	e50b3008 	str	r3, [fp, #-8]
    10e0:	eaffffc8 	b	1008 <malloc+0x78>
    10e4:	e1a00003 	mov	r0, r3
    10e8:	e24bd004 	sub	sp, fp, #4
    10ec:	e8bd8800 	pop	{fp, pc}
    10f0:	00001280 	.word	0x00001280
    10f4:	00001278 	.word	0x00001278

000010f8 <__udivsi3>:
    10f8:	e2512001 	subs	r2, r1, #1
    10fc:	012fff1e 	bxeq	lr
    1100:	3a000036 	bcc	11e0 <__udivsi3+0xe8>
    1104:	e1500001 	cmp	r0, r1
    1108:	9a000022 	bls	1198 <__udivsi3+0xa0>
    110c:	e1110002 	tst	r1, r2
    1110:	0a000023 	beq	11a4 <__udivsi3+0xac>
    1114:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1118:	01a01181 	lsleq	r1, r1, #3
    111c:	03a03008 	moveq	r3, #8
    1120:	13a03001 	movne	r3, #1
    1124:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1128:	31510000 	cmpcc	r1, r0
    112c:	31a01201 	lslcc	r1, r1, #4
    1130:	31a03203 	lslcc	r3, r3, #4
    1134:	3afffffa 	bcc	1124 <__udivsi3+0x2c>
    1138:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    113c:	31510000 	cmpcc	r1, r0
    1140:	31a01081 	lslcc	r1, r1, #1
    1144:	31a03083 	lslcc	r3, r3, #1
    1148:	3afffffa 	bcc	1138 <__udivsi3+0x40>
    114c:	e3a02000 	mov	r2, #0
    1150:	e1500001 	cmp	r0, r1
    1154:	20400001 	subcs	r0, r0, r1
    1158:	21822003 	orrcs	r2, r2, r3
    115c:	e15000a1 	cmp	r0, r1, lsr #1
    1160:	204000a1 	subcs	r0, r0, r1, lsr #1
    1164:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1168:	e1500121 	cmp	r0, r1, lsr #2
    116c:	20400121 	subcs	r0, r0, r1, lsr #2
    1170:	21822123 	orrcs	r2, r2, r3, lsr #2
    1174:	e15001a1 	cmp	r0, r1, lsr #3
    1178:	204001a1 	subcs	r0, r0, r1, lsr #3
    117c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1180:	e3500000 	cmp	r0, #0
    1184:	11b03223 	lsrsne	r3, r3, #4
    1188:	11a01221 	lsrne	r1, r1, #4
    118c:	1affffef 	bne	1150 <__udivsi3+0x58>
    1190:	e1a00002 	mov	r0, r2
    1194:	e12fff1e 	bx	lr
    1198:	03a00001 	moveq	r0, #1
    119c:	13a00000 	movne	r0, #0
    11a0:	e12fff1e 	bx	lr
    11a4:	e3510801 	cmp	r1, #65536	@ 0x10000
    11a8:	21a01821 	lsrcs	r1, r1, #16
    11ac:	23a02010 	movcs	r2, #16
    11b0:	33a02000 	movcc	r2, #0
    11b4:	e3510c01 	cmp	r1, #256	@ 0x100
    11b8:	21a01421 	lsrcs	r1, r1, #8
    11bc:	22822008 	addcs	r2, r2, #8
    11c0:	e3510010 	cmp	r1, #16
    11c4:	21a01221 	lsrcs	r1, r1, #4
    11c8:	22822004 	addcs	r2, r2, #4
    11cc:	e3510004 	cmp	r1, #4
    11d0:	82822003 	addhi	r2, r2, #3
    11d4:	908220a1 	addls	r2, r2, r1, lsr #1
    11d8:	e1a00230 	lsr	r0, r0, r2
    11dc:	e12fff1e 	bx	lr
    11e0:	e3500000 	cmp	r0, #0
    11e4:	13e00000 	mvnne	r0, #0
    11e8:	ea000007 	b	120c <__aeabi_idiv0>

000011ec <__aeabi_uidivmod>:
    11ec:	e3510000 	cmp	r1, #0
    11f0:	0afffffa 	beq	11e0 <__udivsi3+0xe8>
    11f4:	e92d4003 	push	{r0, r1, lr}
    11f8:	ebffffbe 	bl	10f8 <__udivsi3>
    11fc:	e8bd4006 	pop	{r1, r2, lr}
    1200:	e0030092 	mul	r3, r2, r0
    1204:	e0411003 	sub	r1, r1, r3
    1208:	e12fff1e 	bx	lr

0000120c <__aeabi_idiv0>:
    120c:	e12fff1e 	bx	lr
