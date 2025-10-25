
_t_waitpid:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	eb000205 	bl	828 <fork>
      10:	e50b0008 	str	r0, [fp, #-8]
      14:	e51b3008 	ldr	r3, [fp, #-8]
      18:	e3530000 	cmp	r3, #0
      1c:	1a000002 	bne	2c <main+0x2c>
      20:	e3a0000a 	mov	r0, #10
      24:	eb0002aa 	bl	ad4 <sleep>
      28:	eb000207 	bl	84c <exit>
      2c:	e51b3008 	ldr	r3, [fp, #-8]
      30:	e2833001 	add	r3, r3, #1
      34:	e1a00003 	mov	r0, r3
      38:	eb0002ff 	bl	c3c <waitpid>
      3c:	e50b000c 	str	r0, [fp, #-12]
      40:	e51b200c 	ldr	r2, [fp, #-12]
      44:	e59f1048 	ldr	r1, [pc, #72]	@ 94 <main+0x94>
      48:	e3a00001 	mov	r0, #1
      4c:	eb000395 	bl	ea8 <printf>
      50:	e51b0008 	ldr	r0, [fp, #-8]
      54:	eb0002f8 	bl	c3c <waitpid>
      58:	e50b000c 	str	r0, [fp, #-12]
      5c:	e51b200c 	ldr	r2, [fp, #-12]
      60:	e59f1030 	ldr	r1, [pc, #48]	@ 98 <main+0x98>
      64:	e3a00001 	mov	r0, #1
      68:	eb00038e 	bl	ea8 <printf>
      6c:	eb0001ff 	bl	870 <wait>
      70:	e50b000c 	str	r0, [fp, #-12]
      74:	e51b200c 	ldr	r2, [fp, #-12]
      78:	e59f101c 	ldr	r1, [pc, #28]	@ 9c <main+0x9c>
      7c:	e3a00001 	mov	r0, #1
      80:	eb000388 	bl	ea8 <printf>
      84:	e59f1014 	ldr	r1, [pc, #20]	@ a0 <main+0xa0>
      88:	e3a00001 	mov	r0, #1
      8c:	eb000385 	bl	ea8 <printf>
      90:	eb0001ed 	bl	84c <exit>
      94:	00001564 	.word	0x00001564
      98:	00001588 	.word	0x00001588
      9c:	000015ac 	.word	0x000015ac
      a0:	000015c8 	.word	0x000015c8

000000a4 <strcpy>:
      a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      a8:	e28db000 	add	fp, sp, #0
      ac:	e24dd014 	sub	sp, sp, #20
      b0:	e50b0010 	str	r0, [fp, #-16]
      b4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      b8:	e51b3010 	ldr	r3, [fp, #-16]
      bc:	e50b3008 	str	r3, [fp, #-8]
      c0:	e1a00000 	nop			@ (mov r0, r0)
      c4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      c8:	e2823001 	add	r3, r2, #1
      cc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      d0:	e51b3010 	ldr	r3, [fp, #-16]
      d4:	e2831001 	add	r1, r3, #1
      d8:	e50b1010 	str	r1, [fp, #-16]
      dc:	e5d22000 	ldrb	r2, [r2]
      e0:	e5c32000 	strb	r2, [r3]
      e4:	e5d33000 	ldrb	r3, [r3]
      e8:	e3530000 	cmp	r3, #0
      ec:	1afffff4 	bne	c4 <strcpy+0x20>
      f0:	e51b3008 	ldr	r3, [fp, #-8]
      f4:	e1a00003 	mov	r0, r3
      f8:	e28bd000 	add	sp, fp, #0
      fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     100:	e12fff1e 	bx	lr

00000104 <strcmp>:
     104:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     108:	e28db000 	add	fp, sp, #0
     10c:	e24dd00c 	sub	sp, sp, #12
     110:	e50b0008 	str	r0, [fp, #-8]
     114:	e50b100c 	str	r1, [fp, #-12]
     118:	ea000005 	b	134 <strcmp+0x30>
     11c:	e51b3008 	ldr	r3, [fp, #-8]
     120:	e2833001 	add	r3, r3, #1
     124:	e50b3008 	str	r3, [fp, #-8]
     128:	e51b300c 	ldr	r3, [fp, #-12]
     12c:	e2833001 	add	r3, r3, #1
     130:	e50b300c 	str	r3, [fp, #-12]
     134:	e51b3008 	ldr	r3, [fp, #-8]
     138:	e5d33000 	ldrb	r3, [r3]
     13c:	e3530000 	cmp	r3, #0
     140:	0a000005 	beq	15c <strcmp+0x58>
     144:	e51b3008 	ldr	r3, [fp, #-8]
     148:	e5d32000 	ldrb	r2, [r3]
     14c:	e51b300c 	ldr	r3, [fp, #-12]
     150:	e5d33000 	ldrb	r3, [r3]
     154:	e1520003 	cmp	r2, r3
     158:	0affffef 	beq	11c <strcmp+0x18>
     15c:	e51b3008 	ldr	r3, [fp, #-8]
     160:	e5d33000 	ldrb	r3, [r3]
     164:	e1a02003 	mov	r2, r3
     168:	e51b300c 	ldr	r3, [fp, #-12]
     16c:	e5d33000 	ldrb	r3, [r3]
     170:	e0423003 	sub	r3, r2, r3
     174:	e1a00003 	mov	r0, r3
     178:	e28bd000 	add	sp, fp, #0
     17c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     180:	e12fff1e 	bx	lr

00000184 <strlen>:
     184:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     188:	e28db000 	add	fp, sp, #0
     18c:	e24dd014 	sub	sp, sp, #20
     190:	e50b0010 	str	r0, [fp, #-16]
     194:	e3a03000 	mov	r3, #0
     198:	e50b3008 	str	r3, [fp, #-8]
     19c:	ea000002 	b	1ac <strlen+0x28>
     1a0:	e51b3008 	ldr	r3, [fp, #-8]
     1a4:	e2833001 	add	r3, r3, #1
     1a8:	e50b3008 	str	r3, [fp, #-8]
     1ac:	e51b3008 	ldr	r3, [fp, #-8]
     1b0:	e51b2010 	ldr	r2, [fp, #-16]
     1b4:	e0823003 	add	r3, r2, r3
     1b8:	e5d33000 	ldrb	r3, [r3]
     1bc:	e3530000 	cmp	r3, #0
     1c0:	1afffff6 	bne	1a0 <strlen+0x1c>
     1c4:	e51b3008 	ldr	r3, [fp, #-8]
     1c8:	e1a00003 	mov	r0, r3
     1cc:	e28bd000 	add	sp, fp, #0
     1d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1d4:	e12fff1e 	bx	lr

000001d8 <memset>:
     1d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1dc:	e28db000 	add	fp, sp, #0
     1e0:	e24dd024 	sub	sp, sp, #36	@ 0x24
     1e4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     1e8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     1ec:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     1f0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     1f4:	e50b3008 	str	r3, [fp, #-8]
     1f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1fc:	e54b300d 	strb	r3, [fp, #-13]
     200:	e55b200d 	ldrb	r2, [fp, #-13]
     204:	e1a03002 	mov	r3, r2
     208:	e1a03403 	lsl	r3, r3, #8
     20c:	e0833002 	add	r3, r3, r2
     210:	e1a03803 	lsl	r3, r3, #16
     214:	e1a02003 	mov	r2, r3
     218:	e55b300d 	ldrb	r3, [fp, #-13]
     21c:	e1a03403 	lsl	r3, r3, #8
     220:	e1822003 	orr	r2, r2, r3
     224:	e55b300d 	ldrb	r3, [fp, #-13]
     228:	e1823003 	orr	r3, r2, r3
     22c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     230:	ea000008 	b	258 <memset+0x80>
     234:	e51b3008 	ldr	r3, [fp, #-8]
     238:	e55b200d 	ldrb	r2, [fp, #-13]
     23c:	e5c32000 	strb	r2, [r3]
     240:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     244:	e2433001 	sub	r3, r3, #1
     248:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     24c:	e51b3008 	ldr	r3, [fp, #-8]
     250:	e2833001 	add	r3, r3, #1
     254:	e50b3008 	str	r3, [fp, #-8]
     258:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     25c:	e3530000 	cmp	r3, #0
     260:	0a000003 	beq	274 <memset+0x9c>
     264:	e51b3008 	ldr	r3, [fp, #-8]
     268:	e2033003 	and	r3, r3, #3
     26c:	e3530000 	cmp	r3, #0
     270:	1affffef 	bne	234 <memset+0x5c>
     274:	e51b3008 	ldr	r3, [fp, #-8]
     278:	e50b300c 	str	r3, [fp, #-12]
     27c:	ea000008 	b	2a4 <memset+0xcc>
     280:	e51b300c 	ldr	r3, [fp, #-12]
     284:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     288:	e5832000 	str	r2, [r3]
     28c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     290:	e2433004 	sub	r3, r3, #4
     294:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     298:	e51b300c 	ldr	r3, [fp, #-12]
     29c:	e2833004 	add	r3, r3, #4
     2a0:	e50b300c 	str	r3, [fp, #-12]
     2a4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2a8:	e3530003 	cmp	r3, #3
     2ac:	8afffff3 	bhi	280 <memset+0xa8>
     2b0:	e51b300c 	ldr	r3, [fp, #-12]
     2b4:	e50b3008 	str	r3, [fp, #-8]
     2b8:	ea000008 	b	2e0 <memset+0x108>
     2bc:	e51b3008 	ldr	r3, [fp, #-8]
     2c0:	e55b200d 	ldrb	r2, [fp, #-13]
     2c4:	e5c32000 	strb	r2, [r3]
     2c8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2cc:	e2433001 	sub	r3, r3, #1
     2d0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2d4:	e51b3008 	ldr	r3, [fp, #-8]
     2d8:	e2833001 	add	r3, r3, #1
     2dc:	e50b3008 	str	r3, [fp, #-8]
     2e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2e4:	e3530000 	cmp	r3, #0
     2e8:	1afffff3 	bne	2bc <memset+0xe4>
     2ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2f0:	e1a00003 	mov	r0, r3
     2f4:	e28bd000 	add	sp, fp, #0
     2f8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2fc:	e12fff1e 	bx	lr

00000300 <strchr>:
     300:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     304:	e28db000 	add	fp, sp, #0
     308:	e24dd00c 	sub	sp, sp, #12
     30c:	e50b0008 	str	r0, [fp, #-8]
     310:	e1a03001 	mov	r3, r1
     314:	e54b3009 	strb	r3, [fp, #-9]
     318:	ea000009 	b	344 <strchr+0x44>
     31c:	e51b3008 	ldr	r3, [fp, #-8]
     320:	e5d33000 	ldrb	r3, [r3]
     324:	e55b2009 	ldrb	r2, [fp, #-9]
     328:	e1520003 	cmp	r2, r3
     32c:	1a000001 	bne	338 <strchr+0x38>
     330:	e51b3008 	ldr	r3, [fp, #-8]
     334:	ea000007 	b	358 <strchr+0x58>
     338:	e51b3008 	ldr	r3, [fp, #-8]
     33c:	e2833001 	add	r3, r3, #1
     340:	e50b3008 	str	r3, [fp, #-8]
     344:	e51b3008 	ldr	r3, [fp, #-8]
     348:	e5d33000 	ldrb	r3, [r3]
     34c:	e3530000 	cmp	r3, #0
     350:	1afffff1 	bne	31c <strchr+0x1c>
     354:	e3a03000 	mov	r3, #0
     358:	e1a00003 	mov	r0, r3
     35c:	e28bd000 	add	sp, fp, #0
     360:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     364:	e12fff1e 	bx	lr

00000368 <gets>:
     368:	e92d4800 	push	{fp, lr}
     36c:	e28db004 	add	fp, sp, #4
     370:	e24dd018 	sub	sp, sp, #24
     374:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     378:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     37c:	e3a03000 	mov	r3, #0
     380:	e50b3008 	str	r3, [fp, #-8]
     384:	ea000016 	b	3e4 <gets+0x7c>
     388:	e24b300d 	sub	r3, fp, #13
     38c:	e3a02001 	mov	r2, #1
     390:	e1a01003 	mov	r1, r3
     394:	e3a00000 	mov	r0, #0
     398:	eb000146 	bl	8b8 <read>
     39c:	e50b000c 	str	r0, [fp, #-12]
     3a0:	e51b300c 	ldr	r3, [fp, #-12]
     3a4:	e3530000 	cmp	r3, #0
     3a8:	da000013 	ble	3fc <gets+0x94>
     3ac:	e51b3008 	ldr	r3, [fp, #-8]
     3b0:	e2832001 	add	r2, r3, #1
     3b4:	e50b2008 	str	r2, [fp, #-8]
     3b8:	e1a02003 	mov	r2, r3
     3bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3c0:	e0833002 	add	r3, r3, r2
     3c4:	e55b200d 	ldrb	r2, [fp, #-13]
     3c8:	e5c32000 	strb	r2, [r3]
     3cc:	e55b300d 	ldrb	r3, [fp, #-13]
     3d0:	e353000a 	cmp	r3, #10
     3d4:	0a000009 	beq	400 <gets+0x98>
     3d8:	e55b300d 	ldrb	r3, [fp, #-13]
     3dc:	e353000d 	cmp	r3, #13
     3e0:	0a000006 	beq	400 <gets+0x98>
     3e4:	e51b3008 	ldr	r3, [fp, #-8]
     3e8:	e2833001 	add	r3, r3, #1
     3ec:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     3f0:	e1520003 	cmp	r2, r3
     3f4:	caffffe3 	bgt	388 <gets+0x20>
     3f8:	ea000000 	b	400 <gets+0x98>
     3fc:	e1a00000 	nop			@ (mov r0, r0)
     400:	e51b3008 	ldr	r3, [fp, #-8]
     404:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     408:	e0823003 	add	r3, r2, r3
     40c:	e3a02000 	mov	r2, #0
     410:	e5c32000 	strb	r2, [r3]
     414:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     418:	e1a00003 	mov	r0, r3
     41c:	e24bd004 	sub	sp, fp, #4
     420:	e8bd8800 	pop	{fp, pc}

00000424 <stat>:
     424:	e92d4800 	push	{fp, lr}
     428:	e28db004 	add	fp, sp, #4
     42c:	e24dd010 	sub	sp, sp, #16
     430:	e50b0010 	str	r0, [fp, #-16]
     434:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     438:	e3a01000 	mov	r1, #0
     43c:	e51b0010 	ldr	r0, [fp, #-16]
     440:	eb000149 	bl	96c <open>
     444:	e50b0008 	str	r0, [fp, #-8]
     448:	e51b3008 	ldr	r3, [fp, #-8]
     44c:	e3530000 	cmp	r3, #0
     450:	aa000001 	bge	45c <stat+0x38>
     454:	e3e03000 	mvn	r3, #0
     458:	ea000006 	b	478 <stat+0x54>
     45c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     460:	e51b0008 	ldr	r0, [fp, #-8]
     464:	eb00015b 	bl	9d8 <fstat>
     468:	e50b000c 	str	r0, [fp, #-12]
     46c:	e51b0008 	ldr	r0, [fp, #-8]
     470:	eb000122 	bl	900 <close>
     474:	e51b300c 	ldr	r3, [fp, #-12]
     478:	e1a00003 	mov	r0, r3
     47c:	e24bd004 	sub	sp, fp, #4
     480:	e8bd8800 	pop	{fp, pc}

00000484 <atoi>:
     484:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     488:	e28db000 	add	fp, sp, #0
     48c:	e24dd014 	sub	sp, sp, #20
     490:	e50b0010 	str	r0, [fp, #-16]
     494:	e3a03000 	mov	r3, #0
     498:	e50b3008 	str	r3, [fp, #-8]
     49c:	ea00000c 	b	4d4 <atoi+0x50>
     4a0:	e51b2008 	ldr	r2, [fp, #-8]
     4a4:	e1a03002 	mov	r3, r2
     4a8:	e1a03103 	lsl	r3, r3, #2
     4ac:	e0833002 	add	r3, r3, r2
     4b0:	e1a03083 	lsl	r3, r3, #1
     4b4:	e1a01003 	mov	r1, r3
     4b8:	e51b3010 	ldr	r3, [fp, #-16]
     4bc:	e2832001 	add	r2, r3, #1
     4c0:	e50b2010 	str	r2, [fp, #-16]
     4c4:	e5d33000 	ldrb	r3, [r3]
     4c8:	e0813003 	add	r3, r1, r3
     4cc:	e2433030 	sub	r3, r3, #48	@ 0x30
     4d0:	e50b3008 	str	r3, [fp, #-8]
     4d4:	e51b3010 	ldr	r3, [fp, #-16]
     4d8:	e5d33000 	ldrb	r3, [r3]
     4dc:	e353002f 	cmp	r3, #47	@ 0x2f
     4e0:	9a000003 	bls	4f4 <atoi+0x70>
     4e4:	e51b3010 	ldr	r3, [fp, #-16]
     4e8:	e5d33000 	ldrb	r3, [r3]
     4ec:	e3530039 	cmp	r3, #57	@ 0x39
     4f0:	9affffea 	bls	4a0 <atoi+0x1c>
     4f4:	e51b3010 	ldr	r3, [fp, #-16]
     4f8:	e5d33000 	ldrb	r3, [r3]
     4fc:	e3530000 	cmp	r3, #0
     500:	1a000001 	bne	50c <atoi+0x88>
     504:	e51b3008 	ldr	r3, [fp, #-8]
     508:	ea000000 	b	510 <atoi+0x8c>
     50c:	e3e03000 	mvn	r3, #0
     510:	e1a00003 	mov	r0, r3
     514:	e28bd000 	add	sp, fp, #0
     518:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     51c:	e12fff1e 	bx	lr

00000520 <memmove>:
     520:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     524:	e28db000 	add	fp, sp, #0
     528:	e24dd01c 	sub	sp, sp, #28
     52c:	e50b0010 	str	r0, [fp, #-16]
     530:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     534:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     538:	e51b3010 	ldr	r3, [fp, #-16]
     53c:	e50b3008 	str	r3, [fp, #-8]
     540:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     544:	e50b300c 	str	r3, [fp, #-12]
     548:	ea000007 	b	56c <memmove+0x4c>
     54c:	e51b200c 	ldr	r2, [fp, #-12]
     550:	e2823001 	add	r3, r2, #1
     554:	e50b300c 	str	r3, [fp, #-12]
     558:	e51b3008 	ldr	r3, [fp, #-8]
     55c:	e2831001 	add	r1, r3, #1
     560:	e50b1008 	str	r1, [fp, #-8]
     564:	e5d22000 	ldrb	r2, [r2]
     568:	e5c32000 	strb	r2, [r3]
     56c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     570:	e2432001 	sub	r2, r3, #1
     574:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     578:	e3530000 	cmp	r3, #0
     57c:	cafffff2 	bgt	54c <memmove+0x2c>
     580:	e51b3010 	ldr	r3, [fp, #-16]
     584:	e1a00003 	mov	r0, r3
     588:	e28bd000 	add	sp, fp, #0
     58c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     590:	e12fff1e 	bx	lr

00000594 <initiateLock>:
     594:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     598:	e28db000 	add	fp, sp, #0
     59c:	e24dd00c 	sub	sp, sp, #12
     5a0:	e50b0008 	str	r0, [fp, #-8]
     5a4:	e51b3008 	ldr	r3, [fp, #-8]
     5a8:	e3a02000 	mov	r2, #0
     5ac:	e5832000 	str	r2, [r3]
     5b0:	e51b3008 	ldr	r3, [fp, #-8]
     5b4:	e3a02001 	mov	r2, #1
     5b8:	e5832004 	str	r2, [r3, #4]
     5bc:	e1a00000 	nop			@ (mov r0, r0)
     5c0:	e28bd000 	add	sp, fp, #0
     5c4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5c8:	e12fff1e 	bx	lr

000005cc <acquireLock>:
     5cc:	e92d4800 	push	{fp, lr}
     5d0:	e28db004 	add	fp, sp, #4
     5d4:	e24dd008 	sub	sp, sp, #8
     5d8:	e50b0008 	str	r0, [fp, #-8]
     5dc:	ea000001 	b	5e8 <acquireLock+0x1c>
     5e0:	e3a00001 	mov	r0, #1
     5e4:	eb00013a 	bl	ad4 <sleep>
     5e8:	e51b2008 	ldr	r2, [fp, #-8]
     5ec:	e3a01001 	mov	r1, #1
     5f0:	e1923f9f 	ldrex	r3, [r2]
     5f4:	e1820f91 	strex	r0, r1, [r2]
     5f8:	e3500000 	cmp	r0, #0
     5fc:	1afffffb 	bne	5f0 <acquireLock+0x24>
     600:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     604:	e3530001 	cmp	r3, #1
     608:	0afffff4 	beq	5e0 <acquireLock+0x14>
     60c:	e1a00000 	nop			@ (mov r0, r0)
     610:	e1a00000 	nop			@ (mov r0, r0)
     614:	e24bd004 	sub	sp, fp, #4
     618:	e8bd8800 	pop	{fp, pc}

0000061c <releaseLock>:
     61c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     620:	e28db000 	add	fp, sp, #0
     624:	e24dd00c 	sub	sp, sp, #12
     628:	e50b0008 	str	r0, [fp, #-8]
     62c:	e51b3008 	ldr	r3, [fp, #-8]
     630:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     634:	e3a02000 	mov	r2, #0
     638:	e5832000 	str	r2, [r3]
     63c:	e1a00000 	nop			@ (mov r0, r0)
     640:	e28bd000 	add	sp, fp, #0
     644:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     648:	e12fff1e 	bx	lr

0000064c <initiateCondVar>:
     64c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     650:	e28db000 	add	fp, sp, #0
     654:	e24dd00c 	sub	sp, sp, #12
     658:	e50b0008 	str	r0, [fp, #-8]
     65c:	e51b3008 	ldr	r3, [fp, #-8]
     660:	e3a02000 	mov	r2, #0
     664:	e5832000 	str	r2, [r3]
     668:	e51b3008 	ldr	r3, [fp, #-8]
     66c:	e3a02001 	mov	r2, #1
     670:	e5832004 	str	r2, [r3, #4]
     674:	e1a00000 	nop			@ (mov r0, r0)
     678:	e28bd000 	add	sp, fp, #0
     67c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     680:	e12fff1e 	bx	lr

00000684 <condWait>:
     684:	e92d4800 	push	{fp, lr}
     688:	e28db004 	add	fp, sp, #4
     68c:	e24dd008 	sub	sp, sp, #8
     690:	e50b0008 	str	r0, [fp, #-8]
     694:	e50b100c 	str	r1, [fp, #-12]
     698:	e51b000c 	ldr	r0, [fp, #-12]
     69c:	ebffffde 	bl	61c <releaseLock>
     6a0:	e51b3008 	ldr	r3, [fp, #-8]
     6a4:	e5933000 	ldr	r3, [r3]
     6a8:	e1a00003 	mov	r0, r3
     6ac:	eb00017d 	bl	ca8 <sleepChan>
     6b0:	e51b000c 	ldr	r0, [fp, #-12]
     6b4:	ebffffc4 	bl	5cc <acquireLock>
     6b8:	e1a00000 	nop			@ (mov r0, r0)
     6bc:	e24bd004 	sub	sp, fp, #4
     6c0:	e8bd8800 	pop	{fp, pc}

000006c4 <broadcast>:
     6c4:	e92d4800 	push	{fp, lr}
     6c8:	e28db004 	add	fp, sp, #4
     6cc:	e24dd008 	sub	sp, sp, #8
     6d0:	e50b0008 	str	r0, [fp, #-8]
     6d4:	e51b3008 	ldr	r3, [fp, #-8]
     6d8:	e5933000 	ldr	r3, [r3]
     6dc:	e1a00003 	mov	r0, r3
     6e0:	eb000182 	bl	cf0 <sigChan>
     6e4:	e1a00000 	nop			@ (mov r0, r0)
     6e8:	e24bd004 	sub	sp, fp, #4
     6ec:	e8bd8800 	pop	{fp, pc}

000006f0 <semInit>:
     6f0:	e92d4800 	push	{fp, lr}
     6f4:	e28db004 	add	fp, sp, #4
     6f8:	e24dd008 	sub	sp, sp, #8
     6fc:	e50b0008 	str	r0, [fp, #-8]
     700:	e50b100c 	str	r1, [fp, #-12]
     704:	e51b3008 	ldr	r3, [fp, #-8]
     708:	e51b200c 	ldr	r2, [fp, #-12]
     70c:	e5832000 	str	r2, [r3]
     710:	e51b3008 	ldr	r3, [fp, #-8]
     714:	e2833004 	add	r3, r3, #4
     718:	e1a00003 	mov	r0, r3
     71c:	ebffff9c 	bl	594 <initiateLock>
     720:	e51b3008 	ldr	r3, [fp, #-8]
     724:	e283300c 	add	r3, r3, #12
     728:	e1a00003 	mov	r0, r3
     72c:	ebffffc6 	bl	64c <initiateCondVar>
     730:	e51b3008 	ldr	r3, [fp, #-8]
     734:	e3a02001 	mov	r2, #1
     738:	e5832014 	str	r2, [r3, #20]
     73c:	e1a00000 	nop			@ (mov r0, r0)
     740:	e24bd004 	sub	sp, fp, #4
     744:	e8bd8800 	pop	{fp, pc}

00000748 <semUp>:
     748:	e92d4800 	push	{fp, lr}
     74c:	e28db004 	add	fp, sp, #4
     750:	e24dd008 	sub	sp, sp, #8
     754:	e50b0008 	str	r0, [fp, #-8]
     758:	e51b3008 	ldr	r3, [fp, #-8]
     75c:	e2833004 	add	r3, r3, #4
     760:	e1a00003 	mov	r0, r3
     764:	ebffff98 	bl	5cc <acquireLock>
     768:	e51b3008 	ldr	r3, [fp, #-8]
     76c:	e5933000 	ldr	r3, [r3]
     770:	e2832001 	add	r2, r3, #1
     774:	e51b3008 	ldr	r3, [fp, #-8]
     778:	e5832000 	str	r2, [r3]
     77c:	e51b3008 	ldr	r3, [fp, #-8]
     780:	e283300c 	add	r3, r3, #12
     784:	e1a00003 	mov	r0, r3
     788:	ebffffcd 	bl	6c4 <broadcast>
     78c:	e51b3008 	ldr	r3, [fp, #-8]
     790:	e2833004 	add	r3, r3, #4
     794:	e1a00003 	mov	r0, r3
     798:	ebffff9f 	bl	61c <releaseLock>
     79c:	e1a00000 	nop			@ (mov r0, r0)
     7a0:	e24bd004 	sub	sp, fp, #4
     7a4:	e8bd8800 	pop	{fp, pc}

000007a8 <semDown>:
     7a8:	e92d4800 	push	{fp, lr}
     7ac:	e28db004 	add	fp, sp, #4
     7b0:	e24dd008 	sub	sp, sp, #8
     7b4:	e50b0008 	str	r0, [fp, #-8]
     7b8:	e51b3008 	ldr	r3, [fp, #-8]
     7bc:	e2833004 	add	r3, r3, #4
     7c0:	e1a00003 	mov	r0, r3
     7c4:	ebffff80 	bl	5cc <acquireLock>
     7c8:	ea000006 	b	7e8 <semDown+0x40>
     7cc:	e51b3008 	ldr	r3, [fp, #-8]
     7d0:	e283200c 	add	r2, r3, #12
     7d4:	e51b3008 	ldr	r3, [fp, #-8]
     7d8:	e2833004 	add	r3, r3, #4
     7dc:	e1a01003 	mov	r1, r3
     7e0:	e1a00002 	mov	r0, r2
     7e4:	ebffffa6 	bl	684 <condWait>
     7e8:	e51b3008 	ldr	r3, [fp, #-8]
     7ec:	e5933000 	ldr	r3, [r3]
     7f0:	e3530000 	cmp	r3, #0
     7f4:	dafffff4 	ble	7cc <semDown+0x24>
     7f8:	e51b3008 	ldr	r3, [fp, #-8]
     7fc:	e5933000 	ldr	r3, [r3]
     800:	e2432001 	sub	r2, r3, #1
     804:	e51b3008 	ldr	r3, [fp, #-8]
     808:	e5832000 	str	r2, [r3]
     80c:	e51b3008 	ldr	r3, [fp, #-8]
     810:	e2833004 	add	r3, r3, #4
     814:	e1a00003 	mov	r0, r3
     818:	ebffff7f 	bl	61c <releaseLock>
     81c:	e1a00000 	nop			@ (mov r0, r0)
     820:	e24bd004 	sub	sp, fp, #4
     824:	e8bd8800 	pop	{fp, pc}

00000828 <fork>:
     828:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     82c:	e1a04003 	mov	r4, r3
     830:	e1a03002 	mov	r3, r2
     834:	e1a02001 	mov	r2, r1
     838:	e1a01000 	mov	r1, r0
     83c:	e3a00001 	mov	r0, #1
     840:	ef000000 	svc	0x00000000
     844:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     848:	e12fff1e 	bx	lr

0000084c <exit>:
     84c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     850:	e1a04003 	mov	r4, r3
     854:	e1a03002 	mov	r3, r2
     858:	e1a02001 	mov	r2, r1
     85c:	e1a01000 	mov	r1, r0
     860:	e3a00002 	mov	r0, #2
     864:	ef000000 	svc	0x00000000
     868:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     86c:	e12fff1e 	bx	lr

00000870 <wait>:
     870:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     874:	e1a04003 	mov	r4, r3
     878:	e1a03002 	mov	r3, r2
     87c:	e1a02001 	mov	r2, r1
     880:	e1a01000 	mov	r1, r0
     884:	e3a00003 	mov	r0, #3
     888:	ef000000 	svc	0x00000000
     88c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     890:	e12fff1e 	bx	lr

00000894 <pipe>:
     894:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     898:	e1a04003 	mov	r4, r3
     89c:	e1a03002 	mov	r3, r2
     8a0:	e1a02001 	mov	r2, r1
     8a4:	e1a01000 	mov	r1, r0
     8a8:	e3a00004 	mov	r0, #4
     8ac:	ef000000 	svc	0x00000000
     8b0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8b4:	e12fff1e 	bx	lr

000008b8 <read>:
     8b8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8bc:	e1a04003 	mov	r4, r3
     8c0:	e1a03002 	mov	r3, r2
     8c4:	e1a02001 	mov	r2, r1
     8c8:	e1a01000 	mov	r1, r0
     8cc:	e3a00005 	mov	r0, #5
     8d0:	ef000000 	svc	0x00000000
     8d4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8d8:	e12fff1e 	bx	lr

000008dc <write>:
     8dc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8e0:	e1a04003 	mov	r4, r3
     8e4:	e1a03002 	mov	r3, r2
     8e8:	e1a02001 	mov	r2, r1
     8ec:	e1a01000 	mov	r1, r0
     8f0:	e3a00010 	mov	r0, #16
     8f4:	ef000000 	svc	0x00000000
     8f8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8fc:	e12fff1e 	bx	lr

00000900 <close>:
     900:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     904:	e1a04003 	mov	r4, r3
     908:	e1a03002 	mov	r3, r2
     90c:	e1a02001 	mov	r2, r1
     910:	e1a01000 	mov	r1, r0
     914:	e3a00015 	mov	r0, #21
     918:	ef000000 	svc	0x00000000
     91c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     920:	e12fff1e 	bx	lr

00000924 <kill>:
     924:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     928:	e1a04003 	mov	r4, r3
     92c:	e1a03002 	mov	r3, r2
     930:	e1a02001 	mov	r2, r1
     934:	e1a01000 	mov	r1, r0
     938:	e3a00006 	mov	r0, #6
     93c:	ef000000 	svc	0x00000000
     940:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     944:	e12fff1e 	bx	lr

00000948 <exec>:
     948:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     94c:	e1a04003 	mov	r4, r3
     950:	e1a03002 	mov	r3, r2
     954:	e1a02001 	mov	r2, r1
     958:	e1a01000 	mov	r1, r0
     95c:	e3a00007 	mov	r0, #7
     960:	ef000000 	svc	0x00000000
     964:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     968:	e12fff1e 	bx	lr

0000096c <open>:
     96c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     970:	e1a04003 	mov	r4, r3
     974:	e1a03002 	mov	r3, r2
     978:	e1a02001 	mov	r2, r1
     97c:	e1a01000 	mov	r1, r0
     980:	e3a0000f 	mov	r0, #15
     984:	ef000000 	svc	0x00000000
     988:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     98c:	e12fff1e 	bx	lr

00000990 <mknod>:
     990:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     994:	e1a04003 	mov	r4, r3
     998:	e1a03002 	mov	r3, r2
     99c:	e1a02001 	mov	r2, r1
     9a0:	e1a01000 	mov	r1, r0
     9a4:	e3a00011 	mov	r0, #17
     9a8:	ef000000 	svc	0x00000000
     9ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9b0:	e12fff1e 	bx	lr

000009b4 <unlink>:
     9b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9b8:	e1a04003 	mov	r4, r3
     9bc:	e1a03002 	mov	r3, r2
     9c0:	e1a02001 	mov	r2, r1
     9c4:	e1a01000 	mov	r1, r0
     9c8:	e3a00012 	mov	r0, #18
     9cc:	ef000000 	svc	0x00000000
     9d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9d4:	e12fff1e 	bx	lr

000009d8 <fstat>:
     9d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9dc:	e1a04003 	mov	r4, r3
     9e0:	e1a03002 	mov	r3, r2
     9e4:	e1a02001 	mov	r2, r1
     9e8:	e1a01000 	mov	r1, r0
     9ec:	e3a00008 	mov	r0, #8
     9f0:	ef000000 	svc	0x00000000
     9f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9f8:	e12fff1e 	bx	lr

000009fc <link>:
     9fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a00:	e1a04003 	mov	r4, r3
     a04:	e1a03002 	mov	r3, r2
     a08:	e1a02001 	mov	r2, r1
     a0c:	e1a01000 	mov	r1, r0
     a10:	e3a00013 	mov	r0, #19
     a14:	ef000000 	svc	0x00000000
     a18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a1c:	e12fff1e 	bx	lr

00000a20 <mkdir>:
     a20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a24:	e1a04003 	mov	r4, r3
     a28:	e1a03002 	mov	r3, r2
     a2c:	e1a02001 	mov	r2, r1
     a30:	e1a01000 	mov	r1, r0
     a34:	e3a00014 	mov	r0, #20
     a38:	ef000000 	svc	0x00000000
     a3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a40:	e12fff1e 	bx	lr

00000a44 <chdir>:
     a44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a48:	e1a04003 	mov	r4, r3
     a4c:	e1a03002 	mov	r3, r2
     a50:	e1a02001 	mov	r2, r1
     a54:	e1a01000 	mov	r1, r0
     a58:	e3a00009 	mov	r0, #9
     a5c:	ef000000 	svc	0x00000000
     a60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a64:	e12fff1e 	bx	lr

00000a68 <dup>:
     a68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a6c:	e1a04003 	mov	r4, r3
     a70:	e1a03002 	mov	r3, r2
     a74:	e1a02001 	mov	r2, r1
     a78:	e1a01000 	mov	r1, r0
     a7c:	e3a0000a 	mov	r0, #10
     a80:	ef000000 	svc	0x00000000
     a84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a88:	e12fff1e 	bx	lr

00000a8c <getpid>:
     a8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a90:	e1a04003 	mov	r4, r3
     a94:	e1a03002 	mov	r3, r2
     a98:	e1a02001 	mov	r2, r1
     a9c:	e1a01000 	mov	r1, r0
     aa0:	e3a0000b 	mov	r0, #11
     aa4:	ef000000 	svc	0x00000000
     aa8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aac:	e12fff1e 	bx	lr

00000ab0 <sbrk>:
     ab0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ab4:	e1a04003 	mov	r4, r3
     ab8:	e1a03002 	mov	r3, r2
     abc:	e1a02001 	mov	r2, r1
     ac0:	e1a01000 	mov	r1, r0
     ac4:	e3a0000c 	mov	r0, #12
     ac8:	ef000000 	svc	0x00000000
     acc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ad0:	e12fff1e 	bx	lr

00000ad4 <sleep>:
     ad4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad8:	e1a04003 	mov	r4, r3
     adc:	e1a03002 	mov	r3, r2
     ae0:	e1a02001 	mov	r2, r1
     ae4:	e1a01000 	mov	r1, r0
     ae8:	e3a0000d 	mov	r0, #13
     aec:	ef000000 	svc	0x00000000
     af0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     af4:	e12fff1e 	bx	lr

00000af8 <uptime>:
     af8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     afc:	e1a04003 	mov	r4, r3
     b00:	e1a03002 	mov	r3, r2
     b04:	e1a02001 	mov	r2, r1
     b08:	e1a01000 	mov	r1, r0
     b0c:	e3a0000e 	mov	r0, #14
     b10:	ef000000 	svc	0x00000000
     b14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b18:	e12fff1e 	bx	lr

00000b1c <getprocs>:
     b1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b20:	e1a04003 	mov	r4, r3
     b24:	e1a03002 	mov	r3, r2
     b28:	e1a02001 	mov	r2, r1
     b2c:	e1a01000 	mov	r1, r0
     b30:	e3a00016 	mov	r0, #22
     b34:	ef000000 	svc	0x00000000
     b38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b3c:	e12fff1e 	bx	lr

00000b40 <settickets>:
     b40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b44:	e1a04003 	mov	r4, r3
     b48:	e1a03002 	mov	r3, r2
     b4c:	e1a02001 	mov	r2, r1
     b50:	e1a01000 	mov	r1, r0
     b54:	e3a00017 	mov	r0, #23
     b58:	ef000000 	svc	0x00000000
     b5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b60:	e12fff1e 	bx	lr

00000b64 <srand>:
     b64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b68:	e1a04003 	mov	r4, r3
     b6c:	e1a03002 	mov	r3, r2
     b70:	e1a02001 	mov	r2, r1
     b74:	e1a01000 	mov	r1, r0
     b78:	e3a00018 	mov	r0, #24
     b7c:	ef000000 	svc	0x00000000
     b80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b84:	e12fff1e 	bx	lr

00000b88 <getpinfo>:
     b88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b8c:	e1a04003 	mov	r4, r3
     b90:	e1a03002 	mov	r3, r2
     b94:	e1a02001 	mov	r2, r1
     b98:	e1a01000 	mov	r1, r0
     b9c:	e3a00019 	mov	r0, #25
     ba0:	ef000000 	svc	0x00000000
     ba4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba8:	e12fff1e 	bx	lr

00000bac <dumppagetable>:
     bac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bb0:	e1a04003 	mov	r4, r3
     bb4:	e1a03002 	mov	r3, r2
     bb8:	e1a02001 	mov	r2, r1
     bbc:	e1a01000 	mov	r1, r0
     bc0:	e3a0001a 	mov	r0, #26
     bc4:	ef000000 	svc	0x00000000
     bc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bcc:	e12fff1e 	bx	lr

00000bd0 <thread_create>:
     bd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bd4:	e1a04003 	mov	r4, r3
     bd8:	e1a03002 	mov	r3, r2
     bdc:	e1a02001 	mov	r2, r1
     be0:	e1a01000 	mov	r1, r0
     be4:	e3a0001b 	mov	r0, #27
     be8:	ef000000 	svc	0x00000000
     bec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bf0:	e12fff1e 	bx	lr

00000bf4 <thread_exit>:
     bf4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf8:	e1a04003 	mov	r4, r3
     bfc:	e1a03002 	mov	r3, r2
     c00:	e1a02001 	mov	r2, r1
     c04:	e1a01000 	mov	r1, r0
     c08:	e3a0001c 	mov	r0, #28
     c0c:	ef000000 	svc	0x00000000
     c10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c14:	e12fff1e 	bx	lr

00000c18 <thread_join>:
     c18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c1c:	e1a04003 	mov	r4, r3
     c20:	e1a03002 	mov	r3, r2
     c24:	e1a02001 	mov	r2, r1
     c28:	e1a01000 	mov	r1, r0
     c2c:	e3a0001d 	mov	r0, #29
     c30:	ef000000 	svc	0x00000000
     c34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c38:	e12fff1e 	bx	lr

00000c3c <waitpid>:
     c3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c40:	e1a04003 	mov	r4, r3
     c44:	e1a03002 	mov	r3, r2
     c48:	e1a02001 	mov	r2, r1
     c4c:	e1a01000 	mov	r1, r0
     c50:	e3a0001e 	mov	r0, #30
     c54:	ef000000 	svc	0x00000000
     c58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c5c:	e12fff1e 	bx	lr

00000c60 <barrier_init>:
     c60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c64:	e1a04003 	mov	r4, r3
     c68:	e1a03002 	mov	r3, r2
     c6c:	e1a02001 	mov	r2, r1
     c70:	e1a01000 	mov	r1, r0
     c74:	e3a0001f 	mov	r0, #31
     c78:	ef000000 	svc	0x00000000
     c7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c80:	e12fff1e 	bx	lr

00000c84 <barrier_check>:
     c84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c88:	e1a04003 	mov	r4, r3
     c8c:	e1a03002 	mov	r3, r2
     c90:	e1a02001 	mov	r2, r1
     c94:	e1a01000 	mov	r1, r0
     c98:	e3a00020 	mov	r0, #32
     c9c:	ef000000 	svc	0x00000000
     ca0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ca4:	e12fff1e 	bx	lr

00000ca8 <sleepChan>:
     ca8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cac:	e1a04003 	mov	r4, r3
     cb0:	e1a03002 	mov	r3, r2
     cb4:	e1a02001 	mov	r2, r1
     cb8:	e1a01000 	mov	r1, r0
     cbc:	e3a00024 	mov	r0, #36	@ 0x24
     cc0:	ef000000 	svc	0x00000000
     cc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc8:	e12fff1e 	bx	lr

00000ccc <getChannel>:
     ccc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cd0:	e1a04003 	mov	r4, r3
     cd4:	e1a03002 	mov	r3, r2
     cd8:	e1a02001 	mov	r2, r1
     cdc:	e1a01000 	mov	r1, r0
     ce0:	e3a00025 	mov	r0, #37	@ 0x25
     ce4:	ef000000 	svc	0x00000000
     ce8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cec:	e12fff1e 	bx	lr

00000cf0 <sigChan>:
     cf0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cf4:	e1a04003 	mov	r4, r3
     cf8:	e1a03002 	mov	r3, r2
     cfc:	e1a02001 	mov	r2, r1
     d00:	e1a01000 	mov	r1, r0
     d04:	e3a00026 	mov	r0, #38	@ 0x26
     d08:	ef000000 	svc	0x00000000
     d0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d10:	e12fff1e 	bx	lr

00000d14 <sigOneChan>:
     d14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d18:	e1a04003 	mov	r4, r3
     d1c:	e1a03002 	mov	r3, r2
     d20:	e1a02001 	mov	r2, r1
     d24:	e1a01000 	mov	r1, r0
     d28:	e3a00027 	mov	r0, #39	@ 0x27
     d2c:	ef000000 	svc	0x00000000
     d30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d34:	e12fff1e 	bx	lr

00000d38 <putc>:
     d38:	e92d4800 	push	{fp, lr}
     d3c:	e28db004 	add	fp, sp, #4
     d40:	e24dd008 	sub	sp, sp, #8
     d44:	e50b0008 	str	r0, [fp, #-8]
     d48:	e1a03001 	mov	r3, r1
     d4c:	e54b3009 	strb	r3, [fp, #-9]
     d50:	e24b3009 	sub	r3, fp, #9
     d54:	e3a02001 	mov	r2, #1
     d58:	e1a01003 	mov	r1, r3
     d5c:	e51b0008 	ldr	r0, [fp, #-8]
     d60:	ebfffedd 	bl	8dc <write>
     d64:	e1a00000 	nop			@ (mov r0, r0)
     d68:	e24bd004 	sub	sp, fp, #4
     d6c:	e8bd8800 	pop	{fp, pc}

00000d70 <printint>:
     d70:	e92d4800 	push	{fp, lr}
     d74:	e28db004 	add	fp, sp, #4
     d78:	e24dd030 	sub	sp, sp, #48	@ 0x30
     d7c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     d80:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     d84:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     d88:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     d8c:	e3a03000 	mov	r3, #0
     d90:	e50b300c 	str	r3, [fp, #-12]
     d94:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     d98:	e3530000 	cmp	r3, #0
     d9c:	0a000008 	beq	dc4 <printint+0x54>
     da0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     da4:	e3530000 	cmp	r3, #0
     da8:	aa000005 	bge	dc4 <printint+0x54>
     dac:	e3a03001 	mov	r3, #1
     db0:	e50b300c 	str	r3, [fp, #-12]
     db4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     db8:	e2633000 	rsb	r3, r3, #0
     dbc:	e50b3010 	str	r3, [fp, #-16]
     dc0:	ea000001 	b	dcc <printint+0x5c>
     dc4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     dc8:	e50b3010 	str	r3, [fp, #-16]
     dcc:	e3a03000 	mov	r3, #0
     dd0:	e50b3008 	str	r3, [fp, #-8]
     dd4:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     dd8:	e51b3010 	ldr	r3, [fp, #-16]
     ddc:	e1a01002 	mov	r1, r2
     de0:	e1a00003 	mov	r0, r3
     de4:	eb0001d5 	bl	1540 <__aeabi_uidivmod>
     de8:	e1a03001 	mov	r3, r1
     dec:	e1a01003 	mov	r1, r3
     df0:	e51b3008 	ldr	r3, [fp, #-8]
     df4:	e2832001 	add	r2, r3, #1
     df8:	e50b2008 	str	r2, [fp, #-8]
     dfc:	e59f20a0 	ldr	r2, [pc, #160]	@ ea4 <printint+0x134>
     e00:	e7d22001 	ldrb	r2, [r2, r1]
     e04:	e2433004 	sub	r3, r3, #4
     e08:	e083300b 	add	r3, r3, fp
     e0c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     e10:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     e14:	e1a01003 	mov	r1, r3
     e18:	e51b0010 	ldr	r0, [fp, #-16]
     e1c:	eb00018a 	bl	144c <__udivsi3>
     e20:	e1a03000 	mov	r3, r0
     e24:	e50b3010 	str	r3, [fp, #-16]
     e28:	e51b3010 	ldr	r3, [fp, #-16]
     e2c:	e3530000 	cmp	r3, #0
     e30:	1affffe7 	bne	dd4 <printint+0x64>
     e34:	e51b300c 	ldr	r3, [fp, #-12]
     e38:	e3530000 	cmp	r3, #0
     e3c:	0a00000e 	beq	e7c <printint+0x10c>
     e40:	e51b3008 	ldr	r3, [fp, #-8]
     e44:	e2832001 	add	r2, r3, #1
     e48:	e50b2008 	str	r2, [fp, #-8]
     e4c:	e2433004 	sub	r3, r3, #4
     e50:	e083300b 	add	r3, r3, fp
     e54:	e3a0202d 	mov	r2, #45	@ 0x2d
     e58:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     e5c:	ea000006 	b	e7c <printint+0x10c>
     e60:	e24b2020 	sub	r2, fp, #32
     e64:	e51b3008 	ldr	r3, [fp, #-8]
     e68:	e0823003 	add	r3, r2, r3
     e6c:	e5d33000 	ldrb	r3, [r3]
     e70:	e1a01003 	mov	r1, r3
     e74:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     e78:	ebffffae 	bl	d38 <putc>
     e7c:	e51b3008 	ldr	r3, [fp, #-8]
     e80:	e2433001 	sub	r3, r3, #1
     e84:	e50b3008 	str	r3, [fp, #-8]
     e88:	e51b3008 	ldr	r3, [fp, #-8]
     e8c:	e3530000 	cmp	r3, #0
     e90:	aafffff2 	bge	e60 <printint+0xf0>
     e94:	e1a00000 	nop			@ (mov r0, r0)
     e98:	e1a00000 	nop			@ (mov r0, r0)
     e9c:	e24bd004 	sub	sp, fp, #4
     ea0:	e8bd8800 	pop	{fp, pc}
     ea4:	000015e0 	.word	0x000015e0

00000ea8 <printf>:
     ea8:	e92d000e 	push	{r1, r2, r3}
     eac:	e92d4800 	push	{fp, lr}
     eb0:	e28db004 	add	fp, sp, #4
     eb4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     eb8:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     ebc:	e3a03000 	mov	r3, #0
     ec0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ec4:	e28b3008 	add	r3, fp, #8
     ec8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ecc:	e3a03000 	mov	r3, #0
     ed0:	e50b3010 	str	r3, [fp, #-16]
     ed4:	ea000074 	b	10ac <printf+0x204>
     ed8:	e59b2004 	ldr	r2, [fp, #4]
     edc:	e51b3010 	ldr	r3, [fp, #-16]
     ee0:	e0823003 	add	r3, r2, r3
     ee4:	e5d33000 	ldrb	r3, [r3]
     ee8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     eec:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ef0:	e3530000 	cmp	r3, #0
     ef4:	1a00000b 	bne	f28 <printf+0x80>
     ef8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     efc:	e3530025 	cmp	r3, #37	@ 0x25
     f00:	1a000002 	bne	f10 <printf+0x68>
     f04:	e3a03025 	mov	r3, #37	@ 0x25
     f08:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f0c:	ea000063 	b	10a0 <printf+0x1f8>
     f10:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f14:	e6ef3073 	uxtb	r3, r3
     f18:	e1a01003 	mov	r1, r3
     f1c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f20:	ebffff84 	bl	d38 <putc>
     f24:	ea00005d 	b	10a0 <printf+0x1f8>
     f28:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     f2c:	e3530025 	cmp	r3, #37	@ 0x25
     f30:	1a00005a 	bne	10a0 <printf+0x1f8>
     f34:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f38:	e3530064 	cmp	r3, #100	@ 0x64
     f3c:	1a00000a 	bne	f6c <printf+0xc4>
     f40:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f44:	e5933000 	ldr	r3, [r3]
     f48:	e1a01003 	mov	r1, r3
     f4c:	e3a03001 	mov	r3, #1
     f50:	e3a0200a 	mov	r2, #10
     f54:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f58:	ebffff84 	bl	d70 <printint>
     f5c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f60:	e2833004 	add	r3, r3, #4
     f64:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f68:	ea00004a 	b	1098 <printf+0x1f0>
     f6c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f70:	e3530078 	cmp	r3, #120	@ 0x78
     f74:	0a000002 	beq	f84 <printf+0xdc>
     f78:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f7c:	e3530070 	cmp	r3, #112	@ 0x70
     f80:	1a00000a 	bne	fb0 <printf+0x108>
     f84:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f88:	e5933000 	ldr	r3, [r3]
     f8c:	e1a01003 	mov	r1, r3
     f90:	e3a03000 	mov	r3, #0
     f94:	e3a02010 	mov	r2, #16
     f98:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f9c:	ebffff73 	bl	d70 <printint>
     fa0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fa4:	e2833004 	add	r3, r3, #4
     fa8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fac:	ea000039 	b	1098 <printf+0x1f0>
     fb0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fb4:	e3530073 	cmp	r3, #115	@ 0x73
     fb8:	1a000018 	bne	1020 <printf+0x178>
     fbc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fc0:	e5933000 	ldr	r3, [r3]
     fc4:	e50b300c 	str	r3, [fp, #-12]
     fc8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fcc:	e2833004 	add	r3, r3, #4
     fd0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fd4:	e51b300c 	ldr	r3, [fp, #-12]
     fd8:	e3530000 	cmp	r3, #0
     fdc:	1a00000a 	bne	100c <printf+0x164>
     fe0:	e59f30f4 	ldr	r3, [pc, #244]	@ 10dc <printf+0x234>
     fe4:	e50b300c 	str	r3, [fp, #-12]
     fe8:	ea000007 	b	100c <printf+0x164>
     fec:	e51b300c 	ldr	r3, [fp, #-12]
     ff0:	e5d33000 	ldrb	r3, [r3]
     ff4:	e1a01003 	mov	r1, r3
     ff8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ffc:	ebffff4d 	bl	d38 <putc>
    1000:	e51b300c 	ldr	r3, [fp, #-12]
    1004:	e2833001 	add	r3, r3, #1
    1008:	e50b300c 	str	r3, [fp, #-12]
    100c:	e51b300c 	ldr	r3, [fp, #-12]
    1010:	e5d33000 	ldrb	r3, [r3]
    1014:	e3530000 	cmp	r3, #0
    1018:	1afffff3 	bne	fec <printf+0x144>
    101c:	ea00001d 	b	1098 <printf+0x1f0>
    1020:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1024:	e3530063 	cmp	r3, #99	@ 0x63
    1028:	1a000009 	bne	1054 <printf+0x1ac>
    102c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1030:	e5933000 	ldr	r3, [r3]
    1034:	e6ef3073 	uxtb	r3, r3
    1038:	e1a01003 	mov	r1, r3
    103c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1040:	ebffff3c 	bl	d38 <putc>
    1044:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1048:	e2833004 	add	r3, r3, #4
    104c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1050:	ea000010 	b	1098 <printf+0x1f0>
    1054:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1058:	e3530025 	cmp	r3, #37	@ 0x25
    105c:	1a000005 	bne	1078 <printf+0x1d0>
    1060:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1064:	e6ef3073 	uxtb	r3, r3
    1068:	e1a01003 	mov	r1, r3
    106c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1070:	ebffff30 	bl	d38 <putc>
    1074:	ea000007 	b	1098 <printf+0x1f0>
    1078:	e3a01025 	mov	r1, #37	@ 0x25
    107c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1080:	ebffff2c 	bl	d38 <putc>
    1084:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1088:	e6ef3073 	uxtb	r3, r3
    108c:	e1a01003 	mov	r1, r3
    1090:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1094:	ebffff27 	bl	d38 <putc>
    1098:	e3a03000 	mov	r3, #0
    109c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    10a0:	e51b3010 	ldr	r3, [fp, #-16]
    10a4:	e2833001 	add	r3, r3, #1
    10a8:	e50b3010 	str	r3, [fp, #-16]
    10ac:	e59b2004 	ldr	r2, [fp, #4]
    10b0:	e51b3010 	ldr	r3, [fp, #-16]
    10b4:	e0823003 	add	r3, r2, r3
    10b8:	e5d33000 	ldrb	r3, [r3]
    10bc:	e3530000 	cmp	r3, #0
    10c0:	1affff84 	bne	ed8 <printf+0x30>
    10c4:	e1a00000 	nop			@ (mov r0, r0)
    10c8:	e1a00000 	nop			@ (mov r0, r0)
    10cc:	e24bd004 	sub	sp, fp, #4
    10d0:	e8bd4800 	pop	{fp, lr}
    10d4:	e28dd00c 	add	sp, sp, #12
    10d8:	e12fff1e 	bx	lr
    10dc:	000015d8 	.word	0x000015d8

000010e0 <free>:
    10e0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    10e4:	e28db000 	add	fp, sp, #0
    10e8:	e24dd014 	sub	sp, sp, #20
    10ec:	e50b0010 	str	r0, [fp, #-16]
    10f0:	e51b3010 	ldr	r3, [fp, #-16]
    10f4:	e2433008 	sub	r3, r3, #8
    10f8:	e50b300c 	str	r3, [fp, #-12]
    10fc:	e59f3154 	ldr	r3, [pc, #340]	@ 1258 <free+0x178>
    1100:	e5933000 	ldr	r3, [r3]
    1104:	e50b3008 	str	r3, [fp, #-8]
    1108:	ea000010 	b	1150 <free+0x70>
    110c:	e51b3008 	ldr	r3, [fp, #-8]
    1110:	e5933000 	ldr	r3, [r3]
    1114:	e51b2008 	ldr	r2, [fp, #-8]
    1118:	e1520003 	cmp	r2, r3
    111c:	3a000008 	bcc	1144 <free+0x64>
    1120:	e51b200c 	ldr	r2, [fp, #-12]
    1124:	e51b3008 	ldr	r3, [fp, #-8]
    1128:	e1520003 	cmp	r2, r3
    112c:	8a000010 	bhi	1174 <free+0x94>
    1130:	e51b3008 	ldr	r3, [fp, #-8]
    1134:	e5933000 	ldr	r3, [r3]
    1138:	e51b200c 	ldr	r2, [fp, #-12]
    113c:	e1520003 	cmp	r2, r3
    1140:	3a00000b 	bcc	1174 <free+0x94>
    1144:	e51b3008 	ldr	r3, [fp, #-8]
    1148:	e5933000 	ldr	r3, [r3]
    114c:	e50b3008 	str	r3, [fp, #-8]
    1150:	e51b200c 	ldr	r2, [fp, #-12]
    1154:	e51b3008 	ldr	r3, [fp, #-8]
    1158:	e1520003 	cmp	r2, r3
    115c:	9affffea 	bls	110c <free+0x2c>
    1160:	e51b3008 	ldr	r3, [fp, #-8]
    1164:	e5933000 	ldr	r3, [r3]
    1168:	e51b200c 	ldr	r2, [fp, #-12]
    116c:	e1520003 	cmp	r2, r3
    1170:	2affffe5 	bcs	110c <free+0x2c>
    1174:	e51b300c 	ldr	r3, [fp, #-12]
    1178:	e5933004 	ldr	r3, [r3, #4]
    117c:	e1a03183 	lsl	r3, r3, #3
    1180:	e51b200c 	ldr	r2, [fp, #-12]
    1184:	e0822003 	add	r2, r2, r3
    1188:	e51b3008 	ldr	r3, [fp, #-8]
    118c:	e5933000 	ldr	r3, [r3]
    1190:	e1520003 	cmp	r2, r3
    1194:	1a00000d 	bne	11d0 <free+0xf0>
    1198:	e51b300c 	ldr	r3, [fp, #-12]
    119c:	e5932004 	ldr	r2, [r3, #4]
    11a0:	e51b3008 	ldr	r3, [fp, #-8]
    11a4:	e5933000 	ldr	r3, [r3]
    11a8:	e5933004 	ldr	r3, [r3, #4]
    11ac:	e0822003 	add	r2, r2, r3
    11b0:	e51b300c 	ldr	r3, [fp, #-12]
    11b4:	e5832004 	str	r2, [r3, #4]
    11b8:	e51b3008 	ldr	r3, [fp, #-8]
    11bc:	e5933000 	ldr	r3, [r3]
    11c0:	e5932000 	ldr	r2, [r3]
    11c4:	e51b300c 	ldr	r3, [fp, #-12]
    11c8:	e5832000 	str	r2, [r3]
    11cc:	ea000003 	b	11e0 <free+0x100>
    11d0:	e51b3008 	ldr	r3, [fp, #-8]
    11d4:	e5932000 	ldr	r2, [r3]
    11d8:	e51b300c 	ldr	r3, [fp, #-12]
    11dc:	e5832000 	str	r2, [r3]
    11e0:	e51b3008 	ldr	r3, [fp, #-8]
    11e4:	e5933004 	ldr	r3, [r3, #4]
    11e8:	e1a03183 	lsl	r3, r3, #3
    11ec:	e51b2008 	ldr	r2, [fp, #-8]
    11f0:	e0823003 	add	r3, r2, r3
    11f4:	e51b200c 	ldr	r2, [fp, #-12]
    11f8:	e1520003 	cmp	r2, r3
    11fc:	1a00000b 	bne	1230 <free+0x150>
    1200:	e51b3008 	ldr	r3, [fp, #-8]
    1204:	e5932004 	ldr	r2, [r3, #4]
    1208:	e51b300c 	ldr	r3, [fp, #-12]
    120c:	e5933004 	ldr	r3, [r3, #4]
    1210:	e0822003 	add	r2, r2, r3
    1214:	e51b3008 	ldr	r3, [fp, #-8]
    1218:	e5832004 	str	r2, [r3, #4]
    121c:	e51b300c 	ldr	r3, [fp, #-12]
    1220:	e5932000 	ldr	r2, [r3]
    1224:	e51b3008 	ldr	r3, [fp, #-8]
    1228:	e5832000 	str	r2, [r3]
    122c:	ea000002 	b	123c <free+0x15c>
    1230:	e51b3008 	ldr	r3, [fp, #-8]
    1234:	e51b200c 	ldr	r2, [fp, #-12]
    1238:	e5832000 	str	r2, [r3]
    123c:	e59f2014 	ldr	r2, [pc, #20]	@ 1258 <free+0x178>
    1240:	e51b3008 	ldr	r3, [fp, #-8]
    1244:	e5823000 	str	r3, [r2]
    1248:	e1a00000 	nop			@ (mov r0, r0)
    124c:	e28bd000 	add	sp, fp, #0
    1250:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1254:	e12fff1e 	bx	lr
    1258:	000015fc 	.word	0x000015fc

0000125c <morecore>:
    125c:	e92d4800 	push	{fp, lr}
    1260:	e28db004 	add	fp, sp, #4
    1264:	e24dd010 	sub	sp, sp, #16
    1268:	e50b0010 	str	r0, [fp, #-16]
    126c:	e51b3010 	ldr	r3, [fp, #-16]
    1270:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1274:	2a000001 	bcs	1280 <morecore+0x24>
    1278:	e3a03a01 	mov	r3, #4096	@ 0x1000
    127c:	e50b3010 	str	r3, [fp, #-16]
    1280:	e51b3010 	ldr	r3, [fp, #-16]
    1284:	e1a03183 	lsl	r3, r3, #3
    1288:	e1a00003 	mov	r0, r3
    128c:	ebfffe07 	bl	ab0 <sbrk>
    1290:	e50b0008 	str	r0, [fp, #-8]
    1294:	e51b3008 	ldr	r3, [fp, #-8]
    1298:	e3730001 	cmn	r3, #1
    129c:	1a000001 	bne	12a8 <morecore+0x4c>
    12a0:	e3a03000 	mov	r3, #0
    12a4:	ea00000a 	b	12d4 <morecore+0x78>
    12a8:	e51b3008 	ldr	r3, [fp, #-8]
    12ac:	e50b300c 	str	r3, [fp, #-12]
    12b0:	e51b300c 	ldr	r3, [fp, #-12]
    12b4:	e51b2010 	ldr	r2, [fp, #-16]
    12b8:	e5832004 	str	r2, [r3, #4]
    12bc:	e51b300c 	ldr	r3, [fp, #-12]
    12c0:	e2833008 	add	r3, r3, #8
    12c4:	e1a00003 	mov	r0, r3
    12c8:	ebffff84 	bl	10e0 <free>
    12cc:	e59f300c 	ldr	r3, [pc, #12]	@ 12e0 <morecore+0x84>
    12d0:	e5933000 	ldr	r3, [r3]
    12d4:	e1a00003 	mov	r0, r3
    12d8:	e24bd004 	sub	sp, fp, #4
    12dc:	e8bd8800 	pop	{fp, pc}
    12e0:	000015fc 	.word	0x000015fc

000012e4 <malloc>:
    12e4:	e92d4800 	push	{fp, lr}
    12e8:	e28db004 	add	fp, sp, #4
    12ec:	e24dd018 	sub	sp, sp, #24
    12f0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    12f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12f8:	e2833007 	add	r3, r3, #7
    12fc:	e1a031a3 	lsr	r3, r3, #3
    1300:	e2833001 	add	r3, r3, #1
    1304:	e50b3010 	str	r3, [fp, #-16]
    1308:	e59f3134 	ldr	r3, [pc, #308]	@ 1444 <malloc+0x160>
    130c:	e5933000 	ldr	r3, [r3]
    1310:	e50b300c 	str	r3, [fp, #-12]
    1314:	e51b300c 	ldr	r3, [fp, #-12]
    1318:	e3530000 	cmp	r3, #0
    131c:	1a00000b 	bne	1350 <malloc+0x6c>
    1320:	e59f3120 	ldr	r3, [pc, #288]	@ 1448 <malloc+0x164>
    1324:	e50b300c 	str	r3, [fp, #-12]
    1328:	e59f2114 	ldr	r2, [pc, #276]	@ 1444 <malloc+0x160>
    132c:	e51b300c 	ldr	r3, [fp, #-12]
    1330:	e5823000 	str	r3, [r2]
    1334:	e59f3108 	ldr	r3, [pc, #264]	@ 1444 <malloc+0x160>
    1338:	e5933000 	ldr	r3, [r3]
    133c:	e59f2104 	ldr	r2, [pc, #260]	@ 1448 <malloc+0x164>
    1340:	e5823000 	str	r3, [r2]
    1344:	e59f30fc 	ldr	r3, [pc, #252]	@ 1448 <malloc+0x164>
    1348:	e3a02000 	mov	r2, #0
    134c:	e5832004 	str	r2, [r3, #4]
    1350:	e51b300c 	ldr	r3, [fp, #-12]
    1354:	e5933000 	ldr	r3, [r3]
    1358:	e50b3008 	str	r3, [fp, #-8]
    135c:	e51b3008 	ldr	r3, [fp, #-8]
    1360:	e5933004 	ldr	r3, [r3, #4]
    1364:	e51b2010 	ldr	r2, [fp, #-16]
    1368:	e1520003 	cmp	r2, r3
    136c:	8a00001e 	bhi	13ec <malloc+0x108>
    1370:	e51b3008 	ldr	r3, [fp, #-8]
    1374:	e5933004 	ldr	r3, [r3, #4]
    1378:	e51b2010 	ldr	r2, [fp, #-16]
    137c:	e1520003 	cmp	r2, r3
    1380:	1a000004 	bne	1398 <malloc+0xb4>
    1384:	e51b3008 	ldr	r3, [fp, #-8]
    1388:	e5932000 	ldr	r2, [r3]
    138c:	e51b300c 	ldr	r3, [fp, #-12]
    1390:	e5832000 	str	r2, [r3]
    1394:	ea00000e 	b	13d4 <malloc+0xf0>
    1398:	e51b3008 	ldr	r3, [fp, #-8]
    139c:	e5932004 	ldr	r2, [r3, #4]
    13a0:	e51b3010 	ldr	r3, [fp, #-16]
    13a4:	e0422003 	sub	r2, r2, r3
    13a8:	e51b3008 	ldr	r3, [fp, #-8]
    13ac:	e5832004 	str	r2, [r3, #4]
    13b0:	e51b3008 	ldr	r3, [fp, #-8]
    13b4:	e5933004 	ldr	r3, [r3, #4]
    13b8:	e1a03183 	lsl	r3, r3, #3
    13bc:	e51b2008 	ldr	r2, [fp, #-8]
    13c0:	e0823003 	add	r3, r2, r3
    13c4:	e50b3008 	str	r3, [fp, #-8]
    13c8:	e51b3008 	ldr	r3, [fp, #-8]
    13cc:	e51b2010 	ldr	r2, [fp, #-16]
    13d0:	e5832004 	str	r2, [r3, #4]
    13d4:	e59f2068 	ldr	r2, [pc, #104]	@ 1444 <malloc+0x160>
    13d8:	e51b300c 	ldr	r3, [fp, #-12]
    13dc:	e5823000 	str	r3, [r2]
    13e0:	e51b3008 	ldr	r3, [fp, #-8]
    13e4:	e2833008 	add	r3, r3, #8
    13e8:	ea000012 	b	1438 <malloc+0x154>
    13ec:	e59f3050 	ldr	r3, [pc, #80]	@ 1444 <malloc+0x160>
    13f0:	e5933000 	ldr	r3, [r3]
    13f4:	e51b2008 	ldr	r2, [fp, #-8]
    13f8:	e1520003 	cmp	r2, r3
    13fc:	1a000007 	bne	1420 <malloc+0x13c>
    1400:	e51b0010 	ldr	r0, [fp, #-16]
    1404:	ebffff94 	bl	125c <morecore>
    1408:	e50b0008 	str	r0, [fp, #-8]
    140c:	e51b3008 	ldr	r3, [fp, #-8]
    1410:	e3530000 	cmp	r3, #0
    1414:	1a000001 	bne	1420 <malloc+0x13c>
    1418:	e3a03000 	mov	r3, #0
    141c:	ea000005 	b	1438 <malloc+0x154>
    1420:	e51b3008 	ldr	r3, [fp, #-8]
    1424:	e50b300c 	str	r3, [fp, #-12]
    1428:	e51b3008 	ldr	r3, [fp, #-8]
    142c:	e5933000 	ldr	r3, [r3]
    1430:	e50b3008 	str	r3, [fp, #-8]
    1434:	eaffffc8 	b	135c <malloc+0x78>
    1438:	e1a00003 	mov	r0, r3
    143c:	e24bd004 	sub	sp, fp, #4
    1440:	e8bd8800 	pop	{fp, pc}
    1444:	000015fc 	.word	0x000015fc
    1448:	000015f4 	.word	0x000015f4

0000144c <__udivsi3>:
    144c:	e2512001 	subs	r2, r1, #1
    1450:	012fff1e 	bxeq	lr
    1454:	3a000036 	bcc	1534 <__udivsi3+0xe8>
    1458:	e1500001 	cmp	r0, r1
    145c:	9a000022 	bls	14ec <__udivsi3+0xa0>
    1460:	e1110002 	tst	r1, r2
    1464:	0a000023 	beq	14f8 <__udivsi3+0xac>
    1468:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    146c:	01a01181 	lsleq	r1, r1, #3
    1470:	03a03008 	moveq	r3, #8
    1474:	13a03001 	movne	r3, #1
    1478:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    147c:	31510000 	cmpcc	r1, r0
    1480:	31a01201 	lslcc	r1, r1, #4
    1484:	31a03203 	lslcc	r3, r3, #4
    1488:	3afffffa 	bcc	1478 <__udivsi3+0x2c>
    148c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1490:	31510000 	cmpcc	r1, r0
    1494:	31a01081 	lslcc	r1, r1, #1
    1498:	31a03083 	lslcc	r3, r3, #1
    149c:	3afffffa 	bcc	148c <__udivsi3+0x40>
    14a0:	e3a02000 	mov	r2, #0
    14a4:	e1500001 	cmp	r0, r1
    14a8:	20400001 	subcs	r0, r0, r1
    14ac:	21822003 	orrcs	r2, r2, r3
    14b0:	e15000a1 	cmp	r0, r1, lsr #1
    14b4:	204000a1 	subcs	r0, r0, r1, lsr #1
    14b8:	218220a3 	orrcs	r2, r2, r3, lsr #1
    14bc:	e1500121 	cmp	r0, r1, lsr #2
    14c0:	20400121 	subcs	r0, r0, r1, lsr #2
    14c4:	21822123 	orrcs	r2, r2, r3, lsr #2
    14c8:	e15001a1 	cmp	r0, r1, lsr #3
    14cc:	204001a1 	subcs	r0, r0, r1, lsr #3
    14d0:	218221a3 	orrcs	r2, r2, r3, lsr #3
    14d4:	e3500000 	cmp	r0, #0
    14d8:	11b03223 	lsrsne	r3, r3, #4
    14dc:	11a01221 	lsrne	r1, r1, #4
    14e0:	1affffef 	bne	14a4 <__udivsi3+0x58>
    14e4:	e1a00002 	mov	r0, r2
    14e8:	e12fff1e 	bx	lr
    14ec:	03a00001 	moveq	r0, #1
    14f0:	13a00000 	movne	r0, #0
    14f4:	e12fff1e 	bx	lr
    14f8:	e3510801 	cmp	r1, #65536	@ 0x10000
    14fc:	21a01821 	lsrcs	r1, r1, #16
    1500:	23a02010 	movcs	r2, #16
    1504:	33a02000 	movcc	r2, #0
    1508:	e3510c01 	cmp	r1, #256	@ 0x100
    150c:	21a01421 	lsrcs	r1, r1, #8
    1510:	22822008 	addcs	r2, r2, #8
    1514:	e3510010 	cmp	r1, #16
    1518:	21a01221 	lsrcs	r1, r1, #4
    151c:	22822004 	addcs	r2, r2, #4
    1520:	e3510004 	cmp	r1, #4
    1524:	82822003 	addhi	r2, r2, #3
    1528:	908220a1 	addls	r2, r2, r1, lsr #1
    152c:	e1a00230 	lsr	r0, r0, r2
    1530:	e12fff1e 	bx	lr
    1534:	e3500000 	cmp	r0, #0
    1538:	13e00000 	mvnne	r0, #0
    153c:	ea000007 	b	1560 <__aeabi_idiv0>

00001540 <__aeabi_uidivmod>:
    1540:	e3510000 	cmp	r1, #0
    1544:	0afffffa 	beq	1534 <__udivsi3+0xe8>
    1548:	e92d4003 	push	{r0, r1, lr}
    154c:	ebffffbe 	bl	144c <__udivsi3>
    1550:	e8bd4006 	pop	{r1, r2, lr}
    1554:	e0030092 	mul	r3, r2, r0
    1558:	e0411003 	sub	r1, r1, r3
    155c:	e12fff1e 	bx	lr

00001560 <__aeabi_idiv0>:
    1560:	e12fff1e 	bx	lr
