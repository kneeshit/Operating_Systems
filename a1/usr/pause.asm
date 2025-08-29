
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
      90:	eb000298 	bl	af8 <printf>
      94:	eb00017e 	bl	694 <exit>
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
      c4:	eb00028b 	bl	af8 <printf>
      c8:	eb000171 	bl	694 <exit>
      cc:	e3a03000 	mov	r3, #0
      d0:	e50b3008 	str	r3, [fp, #-8]
      d4:	ea00001c 	b	14c <main+0xe4>
      d8:	e51b3008 	ldr	r3, [fp, #-8]
      dc:	e2833001 	add	r3, r3, #1
      e0:	e1a02003 	mov	r2, r3
      e4:	e59f107c 	ldr	r1, [pc, #124]	@ 168 <main+0x100>
      e8:	e3a00001 	mov	r0, #1
      ec:	eb000281 	bl	af8 <printf>
      f0:	e3a0000a 	mov	r0, #10
      f4:	eb000208 	bl	91c <sleep>
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
     120:	eb000274 	bl	af8 <printf>
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
     15c:	eb00014c 	bl	694 <exit>
     160:	000011b4 	.word	0x000011b4
     164:	000011d4 	.word	0x000011d4
     168:	000011f8 	.word	0x000011f8
     16c:	000011fc 	.word	0x000011fc

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
     464:	eb0000a5 	bl	700 <read>
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
     50c:	eb0000a8 	bl	7b4 <open>
     510:	e50b0008 	str	r0, [fp, #-8]
     514:	e51b3008 	ldr	r3, [fp, #-8]
     518:	e3530000 	cmp	r3, #0
     51c:	aa000001 	bge	528 <stat+0x38>
     520:	e3e03000 	mvn	r3, #0
     524:	ea000006 	b	544 <stat+0x54>
     528:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     52c:	e51b0008 	ldr	r0, [fp, #-8]
     530:	eb0000ba 	bl	820 <fstat>
     534:	e50b000c 	str	r0, [fp, #-12]
     538:	e51b0008 	ldr	r0, [fp, #-8]
     53c:	eb000081 	bl	748 <close>
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
     5c8:	e353002f 	cmp	r3, #47	@ 0x2f
     5cc:	9a000003 	bls	5e0 <atoi+0x90>
     5d0:	e51b3010 	ldr	r3, [fp, #-16]
     5d4:	e5d33000 	ldrb	r3, [r3]
     5d8:	e3530039 	cmp	r3, #57	@ 0x39
     5dc:	9a000001 	bls	5e8 <atoi+0x98>
     5e0:	e3e03000 	mvn	r3, #0
     5e4:	ea000000 	b	5ec <atoi+0x9c>
     5e8:	e51b3008 	ldr	r3, [fp, #-8]
     5ec:	e1a00003 	mov	r0, r3
     5f0:	e28bd000 	add	sp, fp, #0
     5f4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5f8:	e12fff1e 	bx	lr

000005fc <memmove>:
     5fc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     600:	e28db000 	add	fp, sp, #0
     604:	e24dd01c 	sub	sp, sp, #28
     608:	e50b0010 	str	r0, [fp, #-16]
     60c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     610:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     614:	e51b3010 	ldr	r3, [fp, #-16]
     618:	e50b3008 	str	r3, [fp, #-8]
     61c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     620:	e50b300c 	str	r3, [fp, #-12]
     624:	ea000007 	b	648 <memmove+0x4c>
     628:	e51b200c 	ldr	r2, [fp, #-12]
     62c:	e2823001 	add	r3, r2, #1
     630:	e50b300c 	str	r3, [fp, #-12]
     634:	e51b3008 	ldr	r3, [fp, #-8]
     638:	e2831001 	add	r1, r3, #1
     63c:	e50b1008 	str	r1, [fp, #-8]
     640:	e5d22000 	ldrb	r2, [r2]
     644:	e5c32000 	strb	r2, [r3]
     648:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     64c:	e2432001 	sub	r2, r3, #1
     650:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     654:	e3530000 	cmp	r3, #0
     658:	cafffff2 	bgt	628 <memmove+0x2c>
     65c:	e51b3010 	ldr	r3, [fp, #-16]
     660:	e1a00003 	mov	r0, r3
     664:	e28bd000 	add	sp, fp, #0
     668:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     66c:	e12fff1e 	bx	lr

00000670 <fork>:
     670:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     674:	e1a04003 	mov	r4, r3
     678:	e1a03002 	mov	r3, r2
     67c:	e1a02001 	mov	r2, r1
     680:	e1a01000 	mov	r1, r0
     684:	e3a00001 	mov	r0, #1
     688:	ef000000 	svc	0x00000000
     68c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     690:	e12fff1e 	bx	lr

00000694 <exit>:
     694:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     698:	e1a04003 	mov	r4, r3
     69c:	e1a03002 	mov	r3, r2
     6a0:	e1a02001 	mov	r2, r1
     6a4:	e1a01000 	mov	r1, r0
     6a8:	e3a00002 	mov	r0, #2
     6ac:	ef000000 	svc	0x00000000
     6b0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6b4:	e12fff1e 	bx	lr

000006b8 <wait>:
     6b8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6bc:	e1a04003 	mov	r4, r3
     6c0:	e1a03002 	mov	r3, r2
     6c4:	e1a02001 	mov	r2, r1
     6c8:	e1a01000 	mov	r1, r0
     6cc:	e3a00003 	mov	r0, #3
     6d0:	ef000000 	svc	0x00000000
     6d4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6d8:	e12fff1e 	bx	lr

000006dc <pipe>:
     6dc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6e0:	e1a04003 	mov	r4, r3
     6e4:	e1a03002 	mov	r3, r2
     6e8:	e1a02001 	mov	r2, r1
     6ec:	e1a01000 	mov	r1, r0
     6f0:	e3a00004 	mov	r0, #4
     6f4:	ef000000 	svc	0x00000000
     6f8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6fc:	e12fff1e 	bx	lr

00000700 <read>:
     700:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     704:	e1a04003 	mov	r4, r3
     708:	e1a03002 	mov	r3, r2
     70c:	e1a02001 	mov	r2, r1
     710:	e1a01000 	mov	r1, r0
     714:	e3a00005 	mov	r0, #5
     718:	ef000000 	svc	0x00000000
     71c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     720:	e12fff1e 	bx	lr

00000724 <write>:
     724:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     728:	e1a04003 	mov	r4, r3
     72c:	e1a03002 	mov	r3, r2
     730:	e1a02001 	mov	r2, r1
     734:	e1a01000 	mov	r1, r0
     738:	e3a00010 	mov	r0, #16
     73c:	ef000000 	svc	0x00000000
     740:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     744:	e12fff1e 	bx	lr

00000748 <close>:
     748:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     74c:	e1a04003 	mov	r4, r3
     750:	e1a03002 	mov	r3, r2
     754:	e1a02001 	mov	r2, r1
     758:	e1a01000 	mov	r1, r0
     75c:	e3a00015 	mov	r0, #21
     760:	ef000000 	svc	0x00000000
     764:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     768:	e12fff1e 	bx	lr

0000076c <kill>:
     76c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     770:	e1a04003 	mov	r4, r3
     774:	e1a03002 	mov	r3, r2
     778:	e1a02001 	mov	r2, r1
     77c:	e1a01000 	mov	r1, r0
     780:	e3a00006 	mov	r0, #6
     784:	ef000000 	svc	0x00000000
     788:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     78c:	e12fff1e 	bx	lr

00000790 <exec>:
     790:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     794:	e1a04003 	mov	r4, r3
     798:	e1a03002 	mov	r3, r2
     79c:	e1a02001 	mov	r2, r1
     7a0:	e1a01000 	mov	r1, r0
     7a4:	e3a00007 	mov	r0, #7
     7a8:	ef000000 	svc	0x00000000
     7ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7b0:	e12fff1e 	bx	lr

000007b4 <open>:
     7b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7b8:	e1a04003 	mov	r4, r3
     7bc:	e1a03002 	mov	r3, r2
     7c0:	e1a02001 	mov	r2, r1
     7c4:	e1a01000 	mov	r1, r0
     7c8:	e3a0000f 	mov	r0, #15
     7cc:	ef000000 	svc	0x00000000
     7d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7d4:	e12fff1e 	bx	lr

000007d8 <mknod>:
     7d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7dc:	e1a04003 	mov	r4, r3
     7e0:	e1a03002 	mov	r3, r2
     7e4:	e1a02001 	mov	r2, r1
     7e8:	e1a01000 	mov	r1, r0
     7ec:	e3a00011 	mov	r0, #17
     7f0:	ef000000 	svc	0x00000000
     7f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7f8:	e12fff1e 	bx	lr

000007fc <unlink>:
     7fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     800:	e1a04003 	mov	r4, r3
     804:	e1a03002 	mov	r3, r2
     808:	e1a02001 	mov	r2, r1
     80c:	e1a01000 	mov	r1, r0
     810:	e3a00012 	mov	r0, #18
     814:	ef000000 	svc	0x00000000
     818:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     81c:	e12fff1e 	bx	lr

00000820 <fstat>:
     820:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     824:	e1a04003 	mov	r4, r3
     828:	e1a03002 	mov	r3, r2
     82c:	e1a02001 	mov	r2, r1
     830:	e1a01000 	mov	r1, r0
     834:	e3a00008 	mov	r0, #8
     838:	ef000000 	svc	0x00000000
     83c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     840:	e12fff1e 	bx	lr

00000844 <link>:
     844:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     848:	e1a04003 	mov	r4, r3
     84c:	e1a03002 	mov	r3, r2
     850:	e1a02001 	mov	r2, r1
     854:	e1a01000 	mov	r1, r0
     858:	e3a00013 	mov	r0, #19
     85c:	ef000000 	svc	0x00000000
     860:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     864:	e12fff1e 	bx	lr

00000868 <mkdir>:
     868:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     86c:	e1a04003 	mov	r4, r3
     870:	e1a03002 	mov	r3, r2
     874:	e1a02001 	mov	r2, r1
     878:	e1a01000 	mov	r1, r0
     87c:	e3a00014 	mov	r0, #20
     880:	ef000000 	svc	0x00000000
     884:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     888:	e12fff1e 	bx	lr

0000088c <chdir>:
     88c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     890:	e1a04003 	mov	r4, r3
     894:	e1a03002 	mov	r3, r2
     898:	e1a02001 	mov	r2, r1
     89c:	e1a01000 	mov	r1, r0
     8a0:	e3a00009 	mov	r0, #9
     8a4:	ef000000 	svc	0x00000000
     8a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8ac:	e12fff1e 	bx	lr

000008b0 <dup>:
     8b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8b4:	e1a04003 	mov	r4, r3
     8b8:	e1a03002 	mov	r3, r2
     8bc:	e1a02001 	mov	r2, r1
     8c0:	e1a01000 	mov	r1, r0
     8c4:	e3a0000a 	mov	r0, #10
     8c8:	ef000000 	svc	0x00000000
     8cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8d0:	e12fff1e 	bx	lr

000008d4 <getpid>:
     8d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8d8:	e1a04003 	mov	r4, r3
     8dc:	e1a03002 	mov	r3, r2
     8e0:	e1a02001 	mov	r2, r1
     8e4:	e1a01000 	mov	r1, r0
     8e8:	e3a0000b 	mov	r0, #11
     8ec:	ef000000 	svc	0x00000000
     8f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8f4:	e12fff1e 	bx	lr

000008f8 <sbrk>:
     8f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8fc:	e1a04003 	mov	r4, r3
     900:	e1a03002 	mov	r3, r2
     904:	e1a02001 	mov	r2, r1
     908:	e1a01000 	mov	r1, r0
     90c:	e3a0000c 	mov	r0, #12
     910:	ef000000 	svc	0x00000000
     914:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     918:	e12fff1e 	bx	lr

0000091c <sleep>:
     91c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     920:	e1a04003 	mov	r4, r3
     924:	e1a03002 	mov	r3, r2
     928:	e1a02001 	mov	r2, r1
     92c:	e1a01000 	mov	r1, r0
     930:	e3a0000d 	mov	r0, #13
     934:	ef000000 	svc	0x00000000
     938:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     93c:	e12fff1e 	bx	lr

00000940 <uptime>:
     940:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     944:	e1a04003 	mov	r4, r3
     948:	e1a03002 	mov	r3, r2
     94c:	e1a02001 	mov	r2, r1
     950:	e1a01000 	mov	r1, r0
     954:	e3a0000e 	mov	r0, #14
     958:	ef000000 	svc	0x00000000
     95c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     960:	e12fff1e 	bx	lr

00000964 <getprocs>:
     964:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     968:	e1a04003 	mov	r4, r3
     96c:	e1a03002 	mov	r3, r2
     970:	e1a02001 	mov	r2, r1
     974:	e1a01000 	mov	r1, r0
     978:	e3a00016 	mov	r0, #22
     97c:	ef000000 	svc	0x00000000
     980:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     984:	e12fff1e 	bx	lr

00000988 <putc>:
     988:	e92d4800 	push	{fp, lr}
     98c:	e28db004 	add	fp, sp, #4
     990:	e24dd008 	sub	sp, sp, #8
     994:	e50b0008 	str	r0, [fp, #-8]
     998:	e1a03001 	mov	r3, r1
     99c:	e54b3009 	strb	r3, [fp, #-9]
     9a0:	e24b3009 	sub	r3, fp, #9
     9a4:	e3a02001 	mov	r2, #1
     9a8:	e1a01003 	mov	r1, r3
     9ac:	e51b0008 	ldr	r0, [fp, #-8]
     9b0:	ebffff5b 	bl	724 <write>
     9b4:	e1a00000 	nop			@ (mov r0, r0)
     9b8:	e24bd004 	sub	sp, fp, #4
     9bc:	e8bd8800 	pop	{fp, pc}

000009c0 <printint>:
     9c0:	e92d4800 	push	{fp, lr}
     9c4:	e28db004 	add	fp, sp, #4
     9c8:	e24dd030 	sub	sp, sp, #48	@ 0x30
     9cc:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     9d0:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     9d4:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     9d8:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     9dc:	e3a03000 	mov	r3, #0
     9e0:	e50b300c 	str	r3, [fp, #-12]
     9e4:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     9e8:	e3530000 	cmp	r3, #0
     9ec:	0a000008 	beq	a14 <printint+0x54>
     9f0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9f4:	e3530000 	cmp	r3, #0
     9f8:	aa000005 	bge	a14 <printint+0x54>
     9fc:	e3a03001 	mov	r3, #1
     a00:	e50b300c 	str	r3, [fp, #-12]
     a04:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a08:	e2633000 	rsb	r3, r3, #0
     a0c:	e50b3010 	str	r3, [fp, #-16]
     a10:	ea000001 	b	a1c <printint+0x5c>
     a14:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a18:	e50b3010 	str	r3, [fp, #-16]
     a1c:	e3a03000 	mov	r3, #0
     a20:	e50b3008 	str	r3, [fp, #-8]
     a24:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     a28:	e51b3010 	ldr	r3, [fp, #-16]
     a2c:	e1a01002 	mov	r1, r2
     a30:	e1a00003 	mov	r0, r3
     a34:	eb0001d5 	bl	1190 <__aeabi_uidivmod>
     a38:	e1a03001 	mov	r3, r1
     a3c:	e1a01003 	mov	r1, r3
     a40:	e51b3008 	ldr	r3, [fp, #-8]
     a44:	e2832001 	add	r2, r3, #1
     a48:	e50b2008 	str	r2, [fp, #-8]
     a4c:	e59f20a0 	ldr	r2, [pc, #160]	@ af4 <printint+0x134>
     a50:	e7d22001 	ldrb	r2, [r2, r1]
     a54:	e2433004 	sub	r3, r3, #4
     a58:	e083300b 	add	r3, r3, fp
     a5c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a60:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     a64:	e1a01003 	mov	r1, r3
     a68:	e51b0010 	ldr	r0, [fp, #-16]
     a6c:	eb00018a 	bl	109c <__udivsi3>
     a70:	e1a03000 	mov	r3, r0
     a74:	e50b3010 	str	r3, [fp, #-16]
     a78:	e51b3010 	ldr	r3, [fp, #-16]
     a7c:	e3530000 	cmp	r3, #0
     a80:	1affffe7 	bne	a24 <printint+0x64>
     a84:	e51b300c 	ldr	r3, [fp, #-12]
     a88:	e3530000 	cmp	r3, #0
     a8c:	0a00000e 	beq	acc <printint+0x10c>
     a90:	e51b3008 	ldr	r3, [fp, #-8]
     a94:	e2832001 	add	r2, r3, #1
     a98:	e50b2008 	str	r2, [fp, #-8]
     a9c:	e2433004 	sub	r3, r3, #4
     aa0:	e083300b 	add	r3, r3, fp
     aa4:	e3a0202d 	mov	r2, #45	@ 0x2d
     aa8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     aac:	ea000006 	b	acc <printint+0x10c>
     ab0:	e24b2020 	sub	r2, fp, #32
     ab4:	e51b3008 	ldr	r3, [fp, #-8]
     ab8:	e0823003 	add	r3, r2, r3
     abc:	e5d33000 	ldrb	r3, [r3]
     ac0:	e1a01003 	mov	r1, r3
     ac4:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     ac8:	ebffffae 	bl	988 <putc>
     acc:	e51b3008 	ldr	r3, [fp, #-8]
     ad0:	e2433001 	sub	r3, r3, #1
     ad4:	e50b3008 	str	r3, [fp, #-8]
     ad8:	e51b3008 	ldr	r3, [fp, #-8]
     adc:	e3530000 	cmp	r3, #0
     ae0:	aafffff2 	bge	ab0 <printint+0xf0>
     ae4:	e1a00000 	nop			@ (mov r0, r0)
     ae8:	e1a00000 	nop			@ (mov r0, r0)
     aec:	e24bd004 	sub	sp, fp, #4
     af0:	e8bd8800 	pop	{fp, pc}
     af4:	00001208 	.word	0x00001208

00000af8 <printf>:
     af8:	e92d000e 	push	{r1, r2, r3}
     afc:	e92d4800 	push	{fp, lr}
     b00:	e28db004 	add	fp, sp, #4
     b04:	e24dd024 	sub	sp, sp, #36	@ 0x24
     b08:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     b0c:	e3a03000 	mov	r3, #0
     b10:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b14:	e28b3008 	add	r3, fp, #8
     b18:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b1c:	e3a03000 	mov	r3, #0
     b20:	e50b3010 	str	r3, [fp, #-16]
     b24:	ea000074 	b	cfc <printf+0x204>
     b28:	e59b2004 	ldr	r2, [fp, #4]
     b2c:	e51b3010 	ldr	r3, [fp, #-16]
     b30:	e0823003 	add	r3, r2, r3
     b34:	e5d33000 	ldrb	r3, [r3]
     b38:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     b3c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b40:	e3530000 	cmp	r3, #0
     b44:	1a00000b 	bne	b78 <printf+0x80>
     b48:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b4c:	e3530025 	cmp	r3, #37	@ 0x25
     b50:	1a000002 	bne	b60 <printf+0x68>
     b54:	e3a03025 	mov	r3, #37	@ 0x25
     b58:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b5c:	ea000063 	b	cf0 <printf+0x1f8>
     b60:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b64:	e6ef3073 	uxtb	r3, r3
     b68:	e1a01003 	mov	r1, r3
     b6c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b70:	ebffff84 	bl	988 <putc>
     b74:	ea00005d 	b	cf0 <printf+0x1f8>
     b78:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b7c:	e3530025 	cmp	r3, #37	@ 0x25
     b80:	1a00005a 	bne	cf0 <printf+0x1f8>
     b84:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b88:	e3530064 	cmp	r3, #100	@ 0x64
     b8c:	1a00000a 	bne	bbc <printf+0xc4>
     b90:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b94:	e5933000 	ldr	r3, [r3]
     b98:	e1a01003 	mov	r1, r3
     b9c:	e3a03001 	mov	r3, #1
     ba0:	e3a0200a 	mov	r2, #10
     ba4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ba8:	ebffff84 	bl	9c0 <printint>
     bac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bb0:	e2833004 	add	r3, r3, #4
     bb4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bb8:	ea00004a 	b	ce8 <printf+0x1f0>
     bbc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bc0:	e3530078 	cmp	r3, #120	@ 0x78
     bc4:	0a000002 	beq	bd4 <printf+0xdc>
     bc8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bcc:	e3530070 	cmp	r3, #112	@ 0x70
     bd0:	1a00000a 	bne	c00 <printf+0x108>
     bd4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bd8:	e5933000 	ldr	r3, [r3]
     bdc:	e1a01003 	mov	r1, r3
     be0:	e3a03000 	mov	r3, #0
     be4:	e3a02010 	mov	r2, #16
     be8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bec:	ebffff73 	bl	9c0 <printint>
     bf0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bf4:	e2833004 	add	r3, r3, #4
     bf8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bfc:	ea000039 	b	ce8 <printf+0x1f0>
     c00:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c04:	e3530073 	cmp	r3, #115	@ 0x73
     c08:	1a000018 	bne	c70 <printf+0x178>
     c0c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c10:	e5933000 	ldr	r3, [r3]
     c14:	e50b300c 	str	r3, [fp, #-12]
     c18:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c1c:	e2833004 	add	r3, r3, #4
     c20:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c24:	e51b300c 	ldr	r3, [fp, #-12]
     c28:	e3530000 	cmp	r3, #0
     c2c:	1a00000a 	bne	c5c <printf+0x164>
     c30:	e59f30f4 	ldr	r3, [pc, #244]	@ d2c <printf+0x234>
     c34:	e50b300c 	str	r3, [fp, #-12]
     c38:	ea000007 	b	c5c <printf+0x164>
     c3c:	e51b300c 	ldr	r3, [fp, #-12]
     c40:	e5d33000 	ldrb	r3, [r3]
     c44:	e1a01003 	mov	r1, r3
     c48:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c4c:	ebffff4d 	bl	988 <putc>
     c50:	e51b300c 	ldr	r3, [fp, #-12]
     c54:	e2833001 	add	r3, r3, #1
     c58:	e50b300c 	str	r3, [fp, #-12]
     c5c:	e51b300c 	ldr	r3, [fp, #-12]
     c60:	e5d33000 	ldrb	r3, [r3]
     c64:	e3530000 	cmp	r3, #0
     c68:	1afffff3 	bne	c3c <printf+0x144>
     c6c:	ea00001d 	b	ce8 <printf+0x1f0>
     c70:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c74:	e3530063 	cmp	r3, #99	@ 0x63
     c78:	1a000009 	bne	ca4 <printf+0x1ac>
     c7c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c80:	e5933000 	ldr	r3, [r3]
     c84:	e6ef3073 	uxtb	r3, r3
     c88:	e1a01003 	mov	r1, r3
     c8c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c90:	ebffff3c 	bl	988 <putc>
     c94:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c98:	e2833004 	add	r3, r3, #4
     c9c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ca0:	ea000010 	b	ce8 <printf+0x1f0>
     ca4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ca8:	e3530025 	cmp	r3, #37	@ 0x25
     cac:	1a000005 	bne	cc8 <printf+0x1d0>
     cb0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cb4:	e6ef3073 	uxtb	r3, r3
     cb8:	e1a01003 	mov	r1, r3
     cbc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cc0:	ebffff30 	bl	988 <putc>
     cc4:	ea000007 	b	ce8 <printf+0x1f0>
     cc8:	e3a01025 	mov	r1, #37	@ 0x25
     ccc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cd0:	ebffff2c 	bl	988 <putc>
     cd4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cd8:	e6ef3073 	uxtb	r3, r3
     cdc:	e1a01003 	mov	r1, r3
     ce0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ce4:	ebffff27 	bl	988 <putc>
     ce8:	e3a03000 	mov	r3, #0
     cec:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     cf0:	e51b3010 	ldr	r3, [fp, #-16]
     cf4:	e2833001 	add	r3, r3, #1
     cf8:	e50b3010 	str	r3, [fp, #-16]
     cfc:	e59b2004 	ldr	r2, [fp, #4]
     d00:	e51b3010 	ldr	r3, [fp, #-16]
     d04:	e0823003 	add	r3, r2, r3
     d08:	e5d33000 	ldrb	r3, [r3]
     d0c:	e3530000 	cmp	r3, #0
     d10:	1affff84 	bne	b28 <printf+0x30>
     d14:	e1a00000 	nop			@ (mov r0, r0)
     d18:	e1a00000 	nop			@ (mov r0, r0)
     d1c:	e24bd004 	sub	sp, fp, #4
     d20:	e8bd4800 	pop	{fp, lr}
     d24:	e28dd00c 	add	sp, sp, #12
     d28:	e12fff1e 	bx	lr
     d2c:	00001200 	.word	0x00001200

00000d30 <free>:
     d30:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     d34:	e28db000 	add	fp, sp, #0
     d38:	e24dd014 	sub	sp, sp, #20
     d3c:	e50b0010 	str	r0, [fp, #-16]
     d40:	e51b3010 	ldr	r3, [fp, #-16]
     d44:	e2433008 	sub	r3, r3, #8
     d48:	e50b300c 	str	r3, [fp, #-12]
     d4c:	e59f3154 	ldr	r3, [pc, #340]	@ ea8 <free+0x178>
     d50:	e5933000 	ldr	r3, [r3]
     d54:	e50b3008 	str	r3, [fp, #-8]
     d58:	ea000010 	b	da0 <free+0x70>
     d5c:	e51b3008 	ldr	r3, [fp, #-8]
     d60:	e5933000 	ldr	r3, [r3]
     d64:	e51b2008 	ldr	r2, [fp, #-8]
     d68:	e1520003 	cmp	r2, r3
     d6c:	3a000008 	bcc	d94 <free+0x64>
     d70:	e51b200c 	ldr	r2, [fp, #-12]
     d74:	e51b3008 	ldr	r3, [fp, #-8]
     d78:	e1520003 	cmp	r2, r3
     d7c:	8a000010 	bhi	dc4 <free+0x94>
     d80:	e51b3008 	ldr	r3, [fp, #-8]
     d84:	e5933000 	ldr	r3, [r3]
     d88:	e51b200c 	ldr	r2, [fp, #-12]
     d8c:	e1520003 	cmp	r2, r3
     d90:	3a00000b 	bcc	dc4 <free+0x94>
     d94:	e51b3008 	ldr	r3, [fp, #-8]
     d98:	e5933000 	ldr	r3, [r3]
     d9c:	e50b3008 	str	r3, [fp, #-8]
     da0:	e51b200c 	ldr	r2, [fp, #-12]
     da4:	e51b3008 	ldr	r3, [fp, #-8]
     da8:	e1520003 	cmp	r2, r3
     dac:	9affffea 	bls	d5c <free+0x2c>
     db0:	e51b3008 	ldr	r3, [fp, #-8]
     db4:	e5933000 	ldr	r3, [r3]
     db8:	e51b200c 	ldr	r2, [fp, #-12]
     dbc:	e1520003 	cmp	r2, r3
     dc0:	2affffe5 	bcs	d5c <free+0x2c>
     dc4:	e51b300c 	ldr	r3, [fp, #-12]
     dc8:	e5933004 	ldr	r3, [r3, #4]
     dcc:	e1a03183 	lsl	r3, r3, #3
     dd0:	e51b200c 	ldr	r2, [fp, #-12]
     dd4:	e0822003 	add	r2, r2, r3
     dd8:	e51b3008 	ldr	r3, [fp, #-8]
     ddc:	e5933000 	ldr	r3, [r3]
     de0:	e1520003 	cmp	r2, r3
     de4:	1a00000d 	bne	e20 <free+0xf0>
     de8:	e51b300c 	ldr	r3, [fp, #-12]
     dec:	e5932004 	ldr	r2, [r3, #4]
     df0:	e51b3008 	ldr	r3, [fp, #-8]
     df4:	e5933000 	ldr	r3, [r3]
     df8:	e5933004 	ldr	r3, [r3, #4]
     dfc:	e0822003 	add	r2, r2, r3
     e00:	e51b300c 	ldr	r3, [fp, #-12]
     e04:	e5832004 	str	r2, [r3, #4]
     e08:	e51b3008 	ldr	r3, [fp, #-8]
     e0c:	e5933000 	ldr	r3, [r3]
     e10:	e5932000 	ldr	r2, [r3]
     e14:	e51b300c 	ldr	r3, [fp, #-12]
     e18:	e5832000 	str	r2, [r3]
     e1c:	ea000003 	b	e30 <free+0x100>
     e20:	e51b3008 	ldr	r3, [fp, #-8]
     e24:	e5932000 	ldr	r2, [r3]
     e28:	e51b300c 	ldr	r3, [fp, #-12]
     e2c:	e5832000 	str	r2, [r3]
     e30:	e51b3008 	ldr	r3, [fp, #-8]
     e34:	e5933004 	ldr	r3, [r3, #4]
     e38:	e1a03183 	lsl	r3, r3, #3
     e3c:	e51b2008 	ldr	r2, [fp, #-8]
     e40:	e0823003 	add	r3, r2, r3
     e44:	e51b200c 	ldr	r2, [fp, #-12]
     e48:	e1520003 	cmp	r2, r3
     e4c:	1a00000b 	bne	e80 <free+0x150>
     e50:	e51b3008 	ldr	r3, [fp, #-8]
     e54:	e5932004 	ldr	r2, [r3, #4]
     e58:	e51b300c 	ldr	r3, [fp, #-12]
     e5c:	e5933004 	ldr	r3, [r3, #4]
     e60:	e0822003 	add	r2, r2, r3
     e64:	e51b3008 	ldr	r3, [fp, #-8]
     e68:	e5832004 	str	r2, [r3, #4]
     e6c:	e51b300c 	ldr	r3, [fp, #-12]
     e70:	e5932000 	ldr	r2, [r3]
     e74:	e51b3008 	ldr	r3, [fp, #-8]
     e78:	e5832000 	str	r2, [r3]
     e7c:	ea000002 	b	e8c <free+0x15c>
     e80:	e51b3008 	ldr	r3, [fp, #-8]
     e84:	e51b200c 	ldr	r2, [fp, #-12]
     e88:	e5832000 	str	r2, [r3]
     e8c:	e59f2014 	ldr	r2, [pc, #20]	@ ea8 <free+0x178>
     e90:	e51b3008 	ldr	r3, [fp, #-8]
     e94:	e5823000 	str	r3, [r2]
     e98:	e1a00000 	nop			@ (mov r0, r0)
     e9c:	e28bd000 	add	sp, fp, #0
     ea0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     ea4:	e12fff1e 	bx	lr
     ea8:	00001224 	.word	0x00001224

00000eac <morecore>:
     eac:	e92d4800 	push	{fp, lr}
     eb0:	e28db004 	add	fp, sp, #4
     eb4:	e24dd010 	sub	sp, sp, #16
     eb8:	e50b0010 	str	r0, [fp, #-16]
     ebc:	e51b3010 	ldr	r3, [fp, #-16]
     ec0:	e3530a01 	cmp	r3, #4096	@ 0x1000
     ec4:	2a000001 	bcs	ed0 <morecore+0x24>
     ec8:	e3a03a01 	mov	r3, #4096	@ 0x1000
     ecc:	e50b3010 	str	r3, [fp, #-16]
     ed0:	e51b3010 	ldr	r3, [fp, #-16]
     ed4:	e1a03183 	lsl	r3, r3, #3
     ed8:	e1a00003 	mov	r0, r3
     edc:	ebfffe85 	bl	8f8 <sbrk>
     ee0:	e50b0008 	str	r0, [fp, #-8]
     ee4:	e51b3008 	ldr	r3, [fp, #-8]
     ee8:	e3730001 	cmn	r3, #1
     eec:	1a000001 	bne	ef8 <morecore+0x4c>
     ef0:	e3a03000 	mov	r3, #0
     ef4:	ea00000a 	b	f24 <morecore+0x78>
     ef8:	e51b3008 	ldr	r3, [fp, #-8]
     efc:	e50b300c 	str	r3, [fp, #-12]
     f00:	e51b300c 	ldr	r3, [fp, #-12]
     f04:	e51b2010 	ldr	r2, [fp, #-16]
     f08:	e5832004 	str	r2, [r3, #4]
     f0c:	e51b300c 	ldr	r3, [fp, #-12]
     f10:	e2833008 	add	r3, r3, #8
     f14:	e1a00003 	mov	r0, r3
     f18:	ebffff84 	bl	d30 <free>
     f1c:	e59f300c 	ldr	r3, [pc, #12]	@ f30 <morecore+0x84>
     f20:	e5933000 	ldr	r3, [r3]
     f24:	e1a00003 	mov	r0, r3
     f28:	e24bd004 	sub	sp, fp, #4
     f2c:	e8bd8800 	pop	{fp, pc}
     f30:	00001224 	.word	0x00001224

00000f34 <malloc>:
     f34:	e92d4800 	push	{fp, lr}
     f38:	e28db004 	add	fp, sp, #4
     f3c:	e24dd018 	sub	sp, sp, #24
     f40:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     f44:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f48:	e2833007 	add	r3, r3, #7
     f4c:	e1a031a3 	lsr	r3, r3, #3
     f50:	e2833001 	add	r3, r3, #1
     f54:	e50b3010 	str	r3, [fp, #-16]
     f58:	e59f3134 	ldr	r3, [pc, #308]	@ 1094 <malloc+0x160>
     f5c:	e5933000 	ldr	r3, [r3]
     f60:	e50b300c 	str	r3, [fp, #-12]
     f64:	e51b300c 	ldr	r3, [fp, #-12]
     f68:	e3530000 	cmp	r3, #0
     f6c:	1a00000b 	bne	fa0 <malloc+0x6c>
     f70:	e59f3120 	ldr	r3, [pc, #288]	@ 1098 <malloc+0x164>
     f74:	e50b300c 	str	r3, [fp, #-12]
     f78:	e59f2114 	ldr	r2, [pc, #276]	@ 1094 <malloc+0x160>
     f7c:	e51b300c 	ldr	r3, [fp, #-12]
     f80:	e5823000 	str	r3, [r2]
     f84:	e59f3108 	ldr	r3, [pc, #264]	@ 1094 <malloc+0x160>
     f88:	e5933000 	ldr	r3, [r3]
     f8c:	e59f2104 	ldr	r2, [pc, #260]	@ 1098 <malloc+0x164>
     f90:	e5823000 	str	r3, [r2]
     f94:	e59f30fc 	ldr	r3, [pc, #252]	@ 1098 <malloc+0x164>
     f98:	e3a02000 	mov	r2, #0
     f9c:	e5832004 	str	r2, [r3, #4]
     fa0:	e51b300c 	ldr	r3, [fp, #-12]
     fa4:	e5933000 	ldr	r3, [r3]
     fa8:	e50b3008 	str	r3, [fp, #-8]
     fac:	e51b3008 	ldr	r3, [fp, #-8]
     fb0:	e5933004 	ldr	r3, [r3, #4]
     fb4:	e51b2010 	ldr	r2, [fp, #-16]
     fb8:	e1520003 	cmp	r2, r3
     fbc:	8a00001e 	bhi	103c <malloc+0x108>
     fc0:	e51b3008 	ldr	r3, [fp, #-8]
     fc4:	e5933004 	ldr	r3, [r3, #4]
     fc8:	e51b2010 	ldr	r2, [fp, #-16]
     fcc:	e1520003 	cmp	r2, r3
     fd0:	1a000004 	bne	fe8 <malloc+0xb4>
     fd4:	e51b3008 	ldr	r3, [fp, #-8]
     fd8:	e5932000 	ldr	r2, [r3]
     fdc:	e51b300c 	ldr	r3, [fp, #-12]
     fe0:	e5832000 	str	r2, [r3]
     fe4:	ea00000e 	b	1024 <malloc+0xf0>
     fe8:	e51b3008 	ldr	r3, [fp, #-8]
     fec:	e5932004 	ldr	r2, [r3, #4]
     ff0:	e51b3010 	ldr	r3, [fp, #-16]
     ff4:	e0422003 	sub	r2, r2, r3
     ff8:	e51b3008 	ldr	r3, [fp, #-8]
     ffc:	e5832004 	str	r2, [r3, #4]
    1000:	e51b3008 	ldr	r3, [fp, #-8]
    1004:	e5933004 	ldr	r3, [r3, #4]
    1008:	e1a03183 	lsl	r3, r3, #3
    100c:	e51b2008 	ldr	r2, [fp, #-8]
    1010:	e0823003 	add	r3, r2, r3
    1014:	e50b3008 	str	r3, [fp, #-8]
    1018:	e51b3008 	ldr	r3, [fp, #-8]
    101c:	e51b2010 	ldr	r2, [fp, #-16]
    1020:	e5832004 	str	r2, [r3, #4]
    1024:	e59f2068 	ldr	r2, [pc, #104]	@ 1094 <malloc+0x160>
    1028:	e51b300c 	ldr	r3, [fp, #-12]
    102c:	e5823000 	str	r3, [r2]
    1030:	e51b3008 	ldr	r3, [fp, #-8]
    1034:	e2833008 	add	r3, r3, #8
    1038:	ea000012 	b	1088 <malloc+0x154>
    103c:	e59f3050 	ldr	r3, [pc, #80]	@ 1094 <malloc+0x160>
    1040:	e5933000 	ldr	r3, [r3]
    1044:	e51b2008 	ldr	r2, [fp, #-8]
    1048:	e1520003 	cmp	r2, r3
    104c:	1a000007 	bne	1070 <malloc+0x13c>
    1050:	e51b0010 	ldr	r0, [fp, #-16]
    1054:	ebffff94 	bl	eac <morecore>
    1058:	e50b0008 	str	r0, [fp, #-8]
    105c:	e51b3008 	ldr	r3, [fp, #-8]
    1060:	e3530000 	cmp	r3, #0
    1064:	1a000001 	bne	1070 <malloc+0x13c>
    1068:	e3a03000 	mov	r3, #0
    106c:	ea000005 	b	1088 <malloc+0x154>
    1070:	e51b3008 	ldr	r3, [fp, #-8]
    1074:	e50b300c 	str	r3, [fp, #-12]
    1078:	e51b3008 	ldr	r3, [fp, #-8]
    107c:	e5933000 	ldr	r3, [r3]
    1080:	e50b3008 	str	r3, [fp, #-8]
    1084:	eaffffc8 	b	fac <malloc+0x78>
    1088:	e1a00003 	mov	r0, r3
    108c:	e24bd004 	sub	sp, fp, #4
    1090:	e8bd8800 	pop	{fp, pc}
    1094:	00001224 	.word	0x00001224
    1098:	0000121c 	.word	0x0000121c

0000109c <__udivsi3>:
    109c:	e2512001 	subs	r2, r1, #1
    10a0:	012fff1e 	bxeq	lr
    10a4:	3a000036 	bcc	1184 <__udivsi3+0xe8>
    10a8:	e1500001 	cmp	r0, r1
    10ac:	9a000022 	bls	113c <__udivsi3+0xa0>
    10b0:	e1110002 	tst	r1, r2
    10b4:	0a000023 	beq	1148 <__udivsi3+0xac>
    10b8:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    10bc:	01a01181 	lsleq	r1, r1, #3
    10c0:	03a03008 	moveq	r3, #8
    10c4:	13a03001 	movne	r3, #1
    10c8:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    10cc:	31510000 	cmpcc	r1, r0
    10d0:	31a01201 	lslcc	r1, r1, #4
    10d4:	31a03203 	lslcc	r3, r3, #4
    10d8:	3afffffa 	bcc	10c8 <__udivsi3+0x2c>
    10dc:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    10e0:	31510000 	cmpcc	r1, r0
    10e4:	31a01081 	lslcc	r1, r1, #1
    10e8:	31a03083 	lslcc	r3, r3, #1
    10ec:	3afffffa 	bcc	10dc <__udivsi3+0x40>
    10f0:	e3a02000 	mov	r2, #0
    10f4:	e1500001 	cmp	r0, r1
    10f8:	20400001 	subcs	r0, r0, r1
    10fc:	21822003 	orrcs	r2, r2, r3
    1100:	e15000a1 	cmp	r0, r1, lsr #1
    1104:	204000a1 	subcs	r0, r0, r1, lsr #1
    1108:	218220a3 	orrcs	r2, r2, r3, lsr #1
    110c:	e1500121 	cmp	r0, r1, lsr #2
    1110:	20400121 	subcs	r0, r0, r1, lsr #2
    1114:	21822123 	orrcs	r2, r2, r3, lsr #2
    1118:	e15001a1 	cmp	r0, r1, lsr #3
    111c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1120:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1124:	e3500000 	cmp	r0, #0
    1128:	11b03223 	lsrsne	r3, r3, #4
    112c:	11a01221 	lsrne	r1, r1, #4
    1130:	1affffef 	bne	10f4 <__udivsi3+0x58>
    1134:	e1a00002 	mov	r0, r2
    1138:	e12fff1e 	bx	lr
    113c:	03a00001 	moveq	r0, #1
    1140:	13a00000 	movne	r0, #0
    1144:	e12fff1e 	bx	lr
    1148:	e3510801 	cmp	r1, #65536	@ 0x10000
    114c:	21a01821 	lsrcs	r1, r1, #16
    1150:	23a02010 	movcs	r2, #16
    1154:	33a02000 	movcc	r2, #0
    1158:	e3510c01 	cmp	r1, #256	@ 0x100
    115c:	21a01421 	lsrcs	r1, r1, #8
    1160:	22822008 	addcs	r2, r2, #8
    1164:	e3510010 	cmp	r1, #16
    1168:	21a01221 	lsrcs	r1, r1, #4
    116c:	22822004 	addcs	r2, r2, #4
    1170:	e3510004 	cmp	r1, #4
    1174:	82822003 	addhi	r2, r2, #3
    1178:	908220a1 	addls	r2, r2, r1, lsr #1
    117c:	e1a00230 	lsr	r0, r0, r2
    1180:	e12fff1e 	bx	lr
    1184:	e3500000 	cmp	r0, #0
    1188:	13e00000 	mvnne	r0, #0
    118c:	ea000007 	b	11b0 <__aeabi_idiv0>

00001190 <__aeabi_uidivmod>:
    1190:	e3510000 	cmp	r1, #0
    1194:	0afffffa 	beq	1184 <__udivsi3+0xe8>
    1198:	e92d4003 	push	{r0, r1, lr}
    119c:	ebffffbe 	bl	109c <__udivsi3>
    11a0:	e8bd4006 	pop	{r1, r2, lr}
    11a4:	e0030092 	mul	r3, r2, r0
    11a8:	e0411003 	sub	r1, r1, r3
    11ac:	e12fff1e 	bx	lr

000011b0 <__aeabi_idiv0>:
    11b0:	e12fff1e 	bx	lr
