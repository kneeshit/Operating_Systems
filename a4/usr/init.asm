
_init:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e3a01002 	mov	r1, #2
      10:	e59f00c4 	ldr	r0, [pc, #196]	@ dc <main+0xdc>
      14:	eb000269 	bl	9c0 <open>
      18:	e1a03000 	mov	r3, r0
      1c:	e3530000 	cmp	r3, #0
      20:	aa000006 	bge	40 <main+0x40>
      24:	e3a02001 	mov	r2, #1
      28:	e3a01001 	mov	r1, #1
      2c:	e59f00a8 	ldr	r0, [pc, #168]	@ dc <main+0xdc>
      30:	eb00026b 	bl	9e4 <mknod>
      34:	e3a01002 	mov	r1, #2
      38:	e59f009c 	ldr	r0, [pc, #156]	@ dc <main+0xdc>
      3c:	eb00025f 	bl	9c0 <open>
      40:	e3a00000 	mov	r0, #0
      44:	eb00029c 	bl	abc <dup>
      48:	e3a00000 	mov	r0, #0
      4c:	eb00029a 	bl	abc <dup>
      50:	e59f1088 	ldr	r1, [pc, #136]	@ e0 <main+0xe0>
      54:	e3a00001 	mov	r0, #1
      58:	eb0003a7 	bl	efc <printf>
      5c:	eb000206 	bl	87c <fork>
      60:	e50b0008 	str	r0, [fp, #-8]
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e3530000 	cmp	r3, #0
      6c:	aa000003 	bge	80 <main+0x80>
      70:	e59f106c 	ldr	r1, [pc, #108]	@ e4 <main+0xe4>
      74:	e3a00001 	mov	r0, #1
      78:	eb00039f 	bl	efc <printf>
      7c:	eb000207 	bl	8a0 <exit>
      80:	e51b3008 	ldr	r3, [fp, #-8]
      84:	e3530000 	cmp	r3, #0
      88:	1a000009 	bne	b4 <main+0xb4>
      8c:	e59f1054 	ldr	r1, [pc, #84]	@ e8 <main+0xe8>
      90:	e59f0054 	ldr	r0, [pc, #84]	@ ec <main+0xec>
      94:	eb000240 	bl	99c <exec>
      98:	e59f1050 	ldr	r1, [pc, #80]	@ f0 <main+0xf0>
      9c:	e3a00001 	mov	r0, #1
      a0:	eb000395 	bl	efc <printf>
      a4:	eb0001fd 	bl	8a0 <exit>
      a8:	e59f1044 	ldr	r1, [pc, #68]	@ f4 <main+0xf4>
      ac:	e3a00001 	mov	r0, #1
      b0:	eb000391 	bl	efc <printf>
      b4:	eb000202 	bl	8c4 <wait>
      b8:	e50b000c 	str	r0, [fp, #-12]
      bc:	e51b300c 	ldr	r3, [fp, #-12]
      c0:	e3530000 	cmp	r3, #0
      c4:	baffffe1 	blt	50 <main+0x50>
      c8:	e51b200c 	ldr	r2, [fp, #-12]
      cc:	e51b3008 	ldr	r3, [fp, #-8]
      d0:	e1520003 	cmp	r2, r3
      d4:	1afffff3 	bne	a8 <main+0xa8>
      d8:	eaffffdc 	b	50 <main+0x50>
      dc:	000015bc 	.word	0x000015bc
      e0:	000015c4 	.word	0x000015c4
      e4:	000015d8 	.word	0x000015d8
      e8:	00001618 	.word	0x00001618
      ec:	000015b8 	.word	0x000015b8
      f0:	000015ec 	.word	0x000015ec
      f4:	00001604 	.word	0x00001604

000000f8 <strcpy>:
      f8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      fc:	e28db000 	add	fp, sp, #0
     100:	e24dd014 	sub	sp, sp, #20
     104:	e50b0010 	str	r0, [fp, #-16]
     108:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     10c:	e51b3010 	ldr	r3, [fp, #-16]
     110:	e50b3008 	str	r3, [fp, #-8]
     114:	e1a00000 	nop			@ (mov r0, r0)
     118:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     11c:	e2823001 	add	r3, r2, #1
     120:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e2831001 	add	r1, r3, #1
     12c:	e50b1010 	str	r1, [fp, #-16]
     130:	e5d22000 	ldrb	r2, [r2]
     134:	e5c32000 	strb	r2, [r3]
     138:	e5d33000 	ldrb	r3, [r3]
     13c:	e3530000 	cmp	r3, #0
     140:	1afffff4 	bne	118 <strcpy+0x20>
     144:	e51b3008 	ldr	r3, [fp, #-8]
     148:	e1a00003 	mov	r0, r3
     14c:	e28bd000 	add	sp, fp, #0
     150:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     154:	e12fff1e 	bx	lr

00000158 <strcmp>:
     158:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     15c:	e28db000 	add	fp, sp, #0
     160:	e24dd00c 	sub	sp, sp, #12
     164:	e50b0008 	str	r0, [fp, #-8]
     168:	e50b100c 	str	r1, [fp, #-12]
     16c:	ea000005 	b	188 <strcmp+0x30>
     170:	e51b3008 	ldr	r3, [fp, #-8]
     174:	e2833001 	add	r3, r3, #1
     178:	e50b3008 	str	r3, [fp, #-8]
     17c:	e51b300c 	ldr	r3, [fp, #-12]
     180:	e2833001 	add	r3, r3, #1
     184:	e50b300c 	str	r3, [fp, #-12]
     188:	e51b3008 	ldr	r3, [fp, #-8]
     18c:	e5d33000 	ldrb	r3, [r3]
     190:	e3530000 	cmp	r3, #0
     194:	0a000005 	beq	1b0 <strcmp+0x58>
     198:	e51b3008 	ldr	r3, [fp, #-8]
     19c:	e5d32000 	ldrb	r2, [r3]
     1a0:	e51b300c 	ldr	r3, [fp, #-12]
     1a4:	e5d33000 	ldrb	r3, [r3]
     1a8:	e1520003 	cmp	r2, r3
     1ac:	0affffef 	beq	170 <strcmp+0x18>
     1b0:	e51b3008 	ldr	r3, [fp, #-8]
     1b4:	e5d33000 	ldrb	r3, [r3]
     1b8:	e1a02003 	mov	r2, r3
     1bc:	e51b300c 	ldr	r3, [fp, #-12]
     1c0:	e5d33000 	ldrb	r3, [r3]
     1c4:	e0423003 	sub	r3, r2, r3
     1c8:	e1a00003 	mov	r0, r3
     1cc:	e28bd000 	add	sp, fp, #0
     1d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1d4:	e12fff1e 	bx	lr

000001d8 <strlen>:
     1d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1dc:	e28db000 	add	fp, sp, #0
     1e0:	e24dd014 	sub	sp, sp, #20
     1e4:	e50b0010 	str	r0, [fp, #-16]
     1e8:	e3a03000 	mov	r3, #0
     1ec:	e50b3008 	str	r3, [fp, #-8]
     1f0:	ea000002 	b	200 <strlen+0x28>
     1f4:	e51b3008 	ldr	r3, [fp, #-8]
     1f8:	e2833001 	add	r3, r3, #1
     1fc:	e50b3008 	str	r3, [fp, #-8]
     200:	e51b3008 	ldr	r3, [fp, #-8]
     204:	e51b2010 	ldr	r2, [fp, #-16]
     208:	e0823003 	add	r3, r2, r3
     20c:	e5d33000 	ldrb	r3, [r3]
     210:	e3530000 	cmp	r3, #0
     214:	1afffff6 	bne	1f4 <strlen+0x1c>
     218:	e51b3008 	ldr	r3, [fp, #-8]
     21c:	e1a00003 	mov	r0, r3
     220:	e28bd000 	add	sp, fp, #0
     224:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     228:	e12fff1e 	bx	lr

0000022c <memset>:
     22c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     230:	e28db000 	add	fp, sp, #0
     234:	e24dd024 	sub	sp, sp, #36	@ 0x24
     238:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     23c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     240:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     244:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     248:	e50b3008 	str	r3, [fp, #-8]
     24c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     250:	e54b300d 	strb	r3, [fp, #-13]
     254:	e55b200d 	ldrb	r2, [fp, #-13]
     258:	e1a03002 	mov	r3, r2
     25c:	e1a03403 	lsl	r3, r3, #8
     260:	e0833002 	add	r3, r3, r2
     264:	e1a03803 	lsl	r3, r3, #16
     268:	e1a02003 	mov	r2, r3
     26c:	e55b300d 	ldrb	r3, [fp, #-13]
     270:	e1a03403 	lsl	r3, r3, #8
     274:	e1822003 	orr	r2, r2, r3
     278:	e55b300d 	ldrb	r3, [fp, #-13]
     27c:	e1823003 	orr	r3, r2, r3
     280:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     284:	ea000008 	b	2ac <memset+0x80>
     288:	e51b3008 	ldr	r3, [fp, #-8]
     28c:	e55b200d 	ldrb	r2, [fp, #-13]
     290:	e5c32000 	strb	r2, [r3]
     294:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     298:	e2433001 	sub	r3, r3, #1
     29c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2a0:	e51b3008 	ldr	r3, [fp, #-8]
     2a4:	e2833001 	add	r3, r3, #1
     2a8:	e50b3008 	str	r3, [fp, #-8]
     2ac:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2b0:	e3530000 	cmp	r3, #0
     2b4:	0a000003 	beq	2c8 <memset+0x9c>
     2b8:	e51b3008 	ldr	r3, [fp, #-8]
     2bc:	e2033003 	and	r3, r3, #3
     2c0:	e3530000 	cmp	r3, #0
     2c4:	1affffef 	bne	288 <memset+0x5c>
     2c8:	e51b3008 	ldr	r3, [fp, #-8]
     2cc:	e50b300c 	str	r3, [fp, #-12]
     2d0:	ea000008 	b	2f8 <memset+0xcc>
     2d4:	e51b300c 	ldr	r3, [fp, #-12]
     2d8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     2dc:	e5832000 	str	r2, [r3]
     2e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2e4:	e2433004 	sub	r3, r3, #4
     2e8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2ec:	e51b300c 	ldr	r3, [fp, #-12]
     2f0:	e2833004 	add	r3, r3, #4
     2f4:	e50b300c 	str	r3, [fp, #-12]
     2f8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2fc:	e3530003 	cmp	r3, #3
     300:	8afffff3 	bhi	2d4 <memset+0xa8>
     304:	e51b300c 	ldr	r3, [fp, #-12]
     308:	e50b3008 	str	r3, [fp, #-8]
     30c:	ea000008 	b	334 <memset+0x108>
     310:	e51b3008 	ldr	r3, [fp, #-8]
     314:	e55b200d 	ldrb	r2, [fp, #-13]
     318:	e5c32000 	strb	r2, [r3]
     31c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     320:	e2433001 	sub	r3, r3, #1
     324:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     328:	e51b3008 	ldr	r3, [fp, #-8]
     32c:	e2833001 	add	r3, r3, #1
     330:	e50b3008 	str	r3, [fp, #-8]
     334:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     338:	e3530000 	cmp	r3, #0
     33c:	1afffff3 	bne	310 <memset+0xe4>
     340:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     344:	e1a00003 	mov	r0, r3
     348:	e28bd000 	add	sp, fp, #0
     34c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     350:	e12fff1e 	bx	lr

00000354 <strchr>:
     354:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     358:	e28db000 	add	fp, sp, #0
     35c:	e24dd00c 	sub	sp, sp, #12
     360:	e50b0008 	str	r0, [fp, #-8]
     364:	e1a03001 	mov	r3, r1
     368:	e54b3009 	strb	r3, [fp, #-9]
     36c:	ea000009 	b	398 <strchr+0x44>
     370:	e51b3008 	ldr	r3, [fp, #-8]
     374:	e5d33000 	ldrb	r3, [r3]
     378:	e55b2009 	ldrb	r2, [fp, #-9]
     37c:	e1520003 	cmp	r2, r3
     380:	1a000001 	bne	38c <strchr+0x38>
     384:	e51b3008 	ldr	r3, [fp, #-8]
     388:	ea000007 	b	3ac <strchr+0x58>
     38c:	e51b3008 	ldr	r3, [fp, #-8]
     390:	e2833001 	add	r3, r3, #1
     394:	e50b3008 	str	r3, [fp, #-8]
     398:	e51b3008 	ldr	r3, [fp, #-8]
     39c:	e5d33000 	ldrb	r3, [r3]
     3a0:	e3530000 	cmp	r3, #0
     3a4:	1afffff1 	bne	370 <strchr+0x1c>
     3a8:	e3a03000 	mov	r3, #0
     3ac:	e1a00003 	mov	r0, r3
     3b0:	e28bd000 	add	sp, fp, #0
     3b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3b8:	e12fff1e 	bx	lr

000003bc <gets>:
     3bc:	e92d4800 	push	{fp, lr}
     3c0:	e28db004 	add	fp, sp, #4
     3c4:	e24dd018 	sub	sp, sp, #24
     3c8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     3cc:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     3d0:	e3a03000 	mov	r3, #0
     3d4:	e50b3008 	str	r3, [fp, #-8]
     3d8:	ea000016 	b	438 <gets+0x7c>
     3dc:	e24b300d 	sub	r3, fp, #13
     3e0:	e3a02001 	mov	r2, #1
     3e4:	e1a01003 	mov	r1, r3
     3e8:	e3a00000 	mov	r0, #0
     3ec:	eb000146 	bl	90c <read>
     3f0:	e50b000c 	str	r0, [fp, #-12]
     3f4:	e51b300c 	ldr	r3, [fp, #-12]
     3f8:	e3530000 	cmp	r3, #0
     3fc:	da000013 	ble	450 <gets+0x94>
     400:	e51b3008 	ldr	r3, [fp, #-8]
     404:	e2832001 	add	r2, r3, #1
     408:	e50b2008 	str	r2, [fp, #-8]
     40c:	e1a02003 	mov	r2, r3
     410:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     414:	e0833002 	add	r3, r3, r2
     418:	e55b200d 	ldrb	r2, [fp, #-13]
     41c:	e5c32000 	strb	r2, [r3]
     420:	e55b300d 	ldrb	r3, [fp, #-13]
     424:	e353000a 	cmp	r3, #10
     428:	0a000009 	beq	454 <gets+0x98>
     42c:	e55b300d 	ldrb	r3, [fp, #-13]
     430:	e353000d 	cmp	r3, #13
     434:	0a000006 	beq	454 <gets+0x98>
     438:	e51b3008 	ldr	r3, [fp, #-8]
     43c:	e2833001 	add	r3, r3, #1
     440:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     444:	e1520003 	cmp	r2, r3
     448:	caffffe3 	bgt	3dc <gets+0x20>
     44c:	ea000000 	b	454 <gets+0x98>
     450:	e1a00000 	nop			@ (mov r0, r0)
     454:	e51b3008 	ldr	r3, [fp, #-8]
     458:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     45c:	e0823003 	add	r3, r2, r3
     460:	e3a02000 	mov	r2, #0
     464:	e5c32000 	strb	r2, [r3]
     468:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     46c:	e1a00003 	mov	r0, r3
     470:	e24bd004 	sub	sp, fp, #4
     474:	e8bd8800 	pop	{fp, pc}

00000478 <stat>:
     478:	e92d4800 	push	{fp, lr}
     47c:	e28db004 	add	fp, sp, #4
     480:	e24dd010 	sub	sp, sp, #16
     484:	e50b0010 	str	r0, [fp, #-16]
     488:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     48c:	e3a01000 	mov	r1, #0
     490:	e51b0010 	ldr	r0, [fp, #-16]
     494:	eb000149 	bl	9c0 <open>
     498:	e50b0008 	str	r0, [fp, #-8]
     49c:	e51b3008 	ldr	r3, [fp, #-8]
     4a0:	e3530000 	cmp	r3, #0
     4a4:	aa000001 	bge	4b0 <stat+0x38>
     4a8:	e3e03000 	mvn	r3, #0
     4ac:	ea000006 	b	4cc <stat+0x54>
     4b0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     4b4:	e51b0008 	ldr	r0, [fp, #-8]
     4b8:	eb00015b 	bl	a2c <fstat>
     4bc:	e50b000c 	str	r0, [fp, #-12]
     4c0:	e51b0008 	ldr	r0, [fp, #-8]
     4c4:	eb000122 	bl	954 <close>
     4c8:	e51b300c 	ldr	r3, [fp, #-12]
     4cc:	e1a00003 	mov	r0, r3
     4d0:	e24bd004 	sub	sp, fp, #4
     4d4:	e8bd8800 	pop	{fp, pc}

000004d8 <atoi>:
     4d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4dc:	e28db000 	add	fp, sp, #0
     4e0:	e24dd014 	sub	sp, sp, #20
     4e4:	e50b0010 	str	r0, [fp, #-16]
     4e8:	e3a03000 	mov	r3, #0
     4ec:	e50b3008 	str	r3, [fp, #-8]
     4f0:	ea00000c 	b	528 <atoi+0x50>
     4f4:	e51b2008 	ldr	r2, [fp, #-8]
     4f8:	e1a03002 	mov	r3, r2
     4fc:	e1a03103 	lsl	r3, r3, #2
     500:	e0833002 	add	r3, r3, r2
     504:	e1a03083 	lsl	r3, r3, #1
     508:	e1a01003 	mov	r1, r3
     50c:	e51b3010 	ldr	r3, [fp, #-16]
     510:	e2832001 	add	r2, r3, #1
     514:	e50b2010 	str	r2, [fp, #-16]
     518:	e5d33000 	ldrb	r3, [r3]
     51c:	e0813003 	add	r3, r1, r3
     520:	e2433030 	sub	r3, r3, #48	@ 0x30
     524:	e50b3008 	str	r3, [fp, #-8]
     528:	e51b3010 	ldr	r3, [fp, #-16]
     52c:	e5d33000 	ldrb	r3, [r3]
     530:	e353002f 	cmp	r3, #47	@ 0x2f
     534:	9a000003 	bls	548 <atoi+0x70>
     538:	e51b3010 	ldr	r3, [fp, #-16]
     53c:	e5d33000 	ldrb	r3, [r3]
     540:	e3530039 	cmp	r3, #57	@ 0x39
     544:	9affffea 	bls	4f4 <atoi+0x1c>
     548:	e51b3010 	ldr	r3, [fp, #-16]
     54c:	e5d33000 	ldrb	r3, [r3]
     550:	e3530000 	cmp	r3, #0
     554:	1a000001 	bne	560 <atoi+0x88>
     558:	e51b3008 	ldr	r3, [fp, #-8]
     55c:	ea000000 	b	564 <atoi+0x8c>
     560:	e3e03000 	mvn	r3, #0
     564:	e1a00003 	mov	r0, r3
     568:	e28bd000 	add	sp, fp, #0
     56c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     570:	e12fff1e 	bx	lr

00000574 <memmove>:
     574:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     578:	e28db000 	add	fp, sp, #0
     57c:	e24dd01c 	sub	sp, sp, #28
     580:	e50b0010 	str	r0, [fp, #-16]
     584:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     588:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     58c:	e51b3010 	ldr	r3, [fp, #-16]
     590:	e50b3008 	str	r3, [fp, #-8]
     594:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     598:	e50b300c 	str	r3, [fp, #-12]
     59c:	ea000007 	b	5c0 <memmove+0x4c>
     5a0:	e51b200c 	ldr	r2, [fp, #-12]
     5a4:	e2823001 	add	r3, r2, #1
     5a8:	e50b300c 	str	r3, [fp, #-12]
     5ac:	e51b3008 	ldr	r3, [fp, #-8]
     5b0:	e2831001 	add	r1, r3, #1
     5b4:	e50b1008 	str	r1, [fp, #-8]
     5b8:	e5d22000 	ldrb	r2, [r2]
     5bc:	e5c32000 	strb	r2, [r3]
     5c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5c4:	e2432001 	sub	r2, r3, #1
     5c8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5cc:	e3530000 	cmp	r3, #0
     5d0:	cafffff2 	bgt	5a0 <memmove+0x2c>
     5d4:	e51b3010 	ldr	r3, [fp, #-16]
     5d8:	e1a00003 	mov	r0, r3
     5dc:	e28bd000 	add	sp, fp, #0
     5e0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5e4:	e12fff1e 	bx	lr

000005e8 <initiateLock>:
     5e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5ec:	e28db000 	add	fp, sp, #0
     5f0:	e24dd00c 	sub	sp, sp, #12
     5f4:	e50b0008 	str	r0, [fp, #-8]
     5f8:	e51b3008 	ldr	r3, [fp, #-8]
     5fc:	e3a02000 	mov	r2, #0
     600:	e5832000 	str	r2, [r3]
     604:	e51b3008 	ldr	r3, [fp, #-8]
     608:	e3a02001 	mov	r2, #1
     60c:	e5832004 	str	r2, [r3, #4]
     610:	e1a00000 	nop			@ (mov r0, r0)
     614:	e28bd000 	add	sp, fp, #0
     618:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     61c:	e12fff1e 	bx	lr

00000620 <acquireLock>:
     620:	e92d4800 	push	{fp, lr}
     624:	e28db004 	add	fp, sp, #4
     628:	e24dd008 	sub	sp, sp, #8
     62c:	e50b0008 	str	r0, [fp, #-8]
     630:	ea000001 	b	63c <acquireLock+0x1c>
     634:	e3a00001 	mov	r0, #1
     638:	eb00013a 	bl	b28 <sleep>
     63c:	e51b2008 	ldr	r2, [fp, #-8]
     640:	e3a01001 	mov	r1, #1
     644:	e1923f9f 	ldrex	r3, [r2]
     648:	e1820f91 	strex	r0, r1, [r2]
     64c:	e3500000 	cmp	r0, #0
     650:	1afffffb 	bne	644 <acquireLock+0x24>
     654:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     658:	e3530001 	cmp	r3, #1
     65c:	0afffff4 	beq	634 <acquireLock+0x14>
     660:	e1a00000 	nop			@ (mov r0, r0)
     664:	e1a00000 	nop			@ (mov r0, r0)
     668:	e24bd004 	sub	sp, fp, #4
     66c:	e8bd8800 	pop	{fp, pc}

00000670 <releaseLock>:
     670:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     674:	e28db000 	add	fp, sp, #0
     678:	e24dd00c 	sub	sp, sp, #12
     67c:	e50b0008 	str	r0, [fp, #-8]
     680:	e51b3008 	ldr	r3, [fp, #-8]
     684:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     688:	e3a02000 	mov	r2, #0
     68c:	e5832000 	str	r2, [r3]
     690:	e1a00000 	nop			@ (mov r0, r0)
     694:	e28bd000 	add	sp, fp, #0
     698:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     69c:	e12fff1e 	bx	lr

000006a0 <initiateCondVar>:
     6a0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6a4:	e28db000 	add	fp, sp, #0
     6a8:	e24dd00c 	sub	sp, sp, #12
     6ac:	e50b0008 	str	r0, [fp, #-8]
     6b0:	e51b3008 	ldr	r3, [fp, #-8]
     6b4:	e3a02000 	mov	r2, #0
     6b8:	e5832000 	str	r2, [r3]
     6bc:	e51b3008 	ldr	r3, [fp, #-8]
     6c0:	e3a02001 	mov	r2, #1
     6c4:	e5832004 	str	r2, [r3, #4]
     6c8:	e1a00000 	nop			@ (mov r0, r0)
     6cc:	e28bd000 	add	sp, fp, #0
     6d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6d4:	e12fff1e 	bx	lr

000006d8 <condWait>:
     6d8:	e92d4800 	push	{fp, lr}
     6dc:	e28db004 	add	fp, sp, #4
     6e0:	e24dd008 	sub	sp, sp, #8
     6e4:	e50b0008 	str	r0, [fp, #-8]
     6e8:	e50b100c 	str	r1, [fp, #-12]
     6ec:	e51b000c 	ldr	r0, [fp, #-12]
     6f0:	ebffffde 	bl	670 <releaseLock>
     6f4:	e51b3008 	ldr	r3, [fp, #-8]
     6f8:	e5933000 	ldr	r3, [r3]
     6fc:	e1a00003 	mov	r0, r3
     700:	eb00017d 	bl	cfc <sleepChan>
     704:	e51b000c 	ldr	r0, [fp, #-12]
     708:	ebffffc4 	bl	620 <acquireLock>
     70c:	e1a00000 	nop			@ (mov r0, r0)
     710:	e24bd004 	sub	sp, fp, #4
     714:	e8bd8800 	pop	{fp, pc}

00000718 <broadcast>:
     718:	e92d4800 	push	{fp, lr}
     71c:	e28db004 	add	fp, sp, #4
     720:	e24dd008 	sub	sp, sp, #8
     724:	e50b0008 	str	r0, [fp, #-8]
     728:	e51b3008 	ldr	r3, [fp, #-8]
     72c:	e5933000 	ldr	r3, [r3]
     730:	e1a00003 	mov	r0, r3
     734:	eb000182 	bl	d44 <sigChan>
     738:	e1a00000 	nop			@ (mov r0, r0)
     73c:	e24bd004 	sub	sp, fp, #4
     740:	e8bd8800 	pop	{fp, pc}

00000744 <semInit>:
     744:	e92d4800 	push	{fp, lr}
     748:	e28db004 	add	fp, sp, #4
     74c:	e24dd008 	sub	sp, sp, #8
     750:	e50b0008 	str	r0, [fp, #-8]
     754:	e50b100c 	str	r1, [fp, #-12]
     758:	e51b3008 	ldr	r3, [fp, #-8]
     75c:	e51b200c 	ldr	r2, [fp, #-12]
     760:	e5832000 	str	r2, [r3]
     764:	e51b3008 	ldr	r3, [fp, #-8]
     768:	e2833004 	add	r3, r3, #4
     76c:	e1a00003 	mov	r0, r3
     770:	ebffff9c 	bl	5e8 <initiateLock>
     774:	e51b3008 	ldr	r3, [fp, #-8]
     778:	e283300c 	add	r3, r3, #12
     77c:	e1a00003 	mov	r0, r3
     780:	ebffffc6 	bl	6a0 <initiateCondVar>
     784:	e51b3008 	ldr	r3, [fp, #-8]
     788:	e3a02001 	mov	r2, #1
     78c:	e5832014 	str	r2, [r3, #20]
     790:	e1a00000 	nop			@ (mov r0, r0)
     794:	e24bd004 	sub	sp, fp, #4
     798:	e8bd8800 	pop	{fp, pc}

0000079c <semUp>:
     79c:	e92d4800 	push	{fp, lr}
     7a0:	e28db004 	add	fp, sp, #4
     7a4:	e24dd008 	sub	sp, sp, #8
     7a8:	e50b0008 	str	r0, [fp, #-8]
     7ac:	e51b3008 	ldr	r3, [fp, #-8]
     7b0:	e2833004 	add	r3, r3, #4
     7b4:	e1a00003 	mov	r0, r3
     7b8:	ebffff98 	bl	620 <acquireLock>
     7bc:	e51b3008 	ldr	r3, [fp, #-8]
     7c0:	e5933000 	ldr	r3, [r3]
     7c4:	e2832001 	add	r2, r3, #1
     7c8:	e51b3008 	ldr	r3, [fp, #-8]
     7cc:	e5832000 	str	r2, [r3]
     7d0:	e51b3008 	ldr	r3, [fp, #-8]
     7d4:	e283300c 	add	r3, r3, #12
     7d8:	e1a00003 	mov	r0, r3
     7dc:	ebffffcd 	bl	718 <broadcast>
     7e0:	e51b3008 	ldr	r3, [fp, #-8]
     7e4:	e2833004 	add	r3, r3, #4
     7e8:	e1a00003 	mov	r0, r3
     7ec:	ebffff9f 	bl	670 <releaseLock>
     7f0:	e1a00000 	nop			@ (mov r0, r0)
     7f4:	e24bd004 	sub	sp, fp, #4
     7f8:	e8bd8800 	pop	{fp, pc}

000007fc <semDown>:
     7fc:	e92d4800 	push	{fp, lr}
     800:	e28db004 	add	fp, sp, #4
     804:	e24dd008 	sub	sp, sp, #8
     808:	e50b0008 	str	r0, [fp, #-8]
     80c:	e51b3008 	ldr	r3, [fp, #-8]
     810:	e2833004 	add	r3, r3, #4
     814:	e1a00003 	mov	r0, r3
     818:	ebffff80 	bl	620 <acquireLock>
     81c:	ea000006 	b	83c <semDown+0x40>
     820:	e51b3008 	ldr	r3, [fp, #-8]
     824:	e283200c 	add	r2, r3, #12
     828:	e51b3008 	ldr	r3, [fp, #-8]
     82c:	e2833004 	add	r3, r3, #4
     830:	e1a01003 	mov	r1, r3
     834:	e1a00002 	mov	r0, r2
     838:	ebffffa6 	bl	6d8 <condWait>
     83c:	e51b3008 	ldr	r3, [fp, #-8]
     840:	e5933000 	ldr	r3, [r3]
     844:	e3530000 	cmp	r3, #0
     848:	dafffff4 	ble	820 <semDown+0x24>
     84c:	e51b3008 	ldr	r3, [fp, #-8]
     850:	e5933000 	ldr	r3, [r3]
     854:	e2432001 	sub	r2, r3, #1
     858:	e51b3008 	ldr	r3, [fp, #-8]
     85c:	e5832000 	str	r2, [r3]
     860:	e51b3008 	ldr	r3, [fp, #-8]
     864:	e2833004 	add	r3, r3, #4
     868:	e1a00003 	mov	r0, r3
     86c:	ebffff7f 	bl	670 <releaseLock>
     870:	e1a00000 	nop			@ (mov r0, r0)
     874:	e24bd004 	sub	sp, fp, #4
     878:	e8bd8800 	pop	{fp, pc}

0000087c <fork>:
     87c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     880:	e1a04003 	mov	r4, r3
     884:	e1a03002 	mov	r3, r2
     888:	e1a02001 	mov	r2, r1
     88c:	e1a01000 	mov	r1, r0
     890:	e3a00001 	mov	r0, #1
     894:	ef000000 	svc	0x00000000
     898:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     89c:	e12fff1e 	bx	lr

000008a0 <exit>:
     8a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a4:	e1a04003 	mov	r4, r3
     8a8:	e1a03002 	mov	r3, r2
     8ac:	e1a02001 	mov	r2, r1
     8b0:	e1a01000 	mov	r1, r0
     8b4:	e3a00002 	mov	r0, #2
     8b8:	ef000000 	svc	0x00000000
     8bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c0:	e12fff1e 	bx	lr

000008c4 <wait>:
     8c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8c8:	e1a04003 	mov	r4, r3
     8cc:	e1a03002 	mov	r3, r2
     8d0:	e1a02001 	mov	r2, r1
     8d4:	e1a01000 	mov	r1, r0
     8d8:	e3a00003 	mov	r0, #3
     8dc:	ef000000 	svc	0x00000000
     8e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e4:	e12fff1e 	bx	lr

000008e8 <pipe>:
     8e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8ec:	e1a04003 	mov	r4, r3
     8f0:	e1a03002 	mov	r3, r2
     8f4:	e1a02001 	mov	r2, r1
     8f8:	e1a01000 	mov	r1, r0
     8fc:	e3a00004 	mov	r0, #4
     900:	ef000000 	svc	0x00000000
     904:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     908:	e12fff1e 	bx	lr

0000090c <read>:
     90c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     910:	e1a04003 	mov	r4, r3
     914:	e1a03002 	mov	r3, r2
     918:	e1a02001 	mov	r2, r1
     91c:	e1a01000 	mov	r1, r0
     920:	e3a00005 	mov	r0, #5
     924:	ef000000 	svc	0x00000000
     928:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     92c:	e12fff1e 	bx	lr

00000930 <write>:
     930:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     934:	e1a04003 	mov	r4, r3
     938:	e1a03002 	mov	r3, r2
     93c:	e1a02001 	mov	r2, r1
     940:	e1a01000 	mov	r1, r0
     944:	e3a00010 	mov	r0, #16
     948:	ef000000 	svc	0x00000000
     94c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     950:	e12fff1e 	bx	lr

00000954 <close>:
     954:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     958:	e1a04003 	mov	r4, r3
     95c:	e1a03002 	mov	r3, r2
     960:	e1a02001 	mov	r2, r1
     964:	e1a01000 	mov	r1, r0
     968:	e3a00015 	mov	r0, #21
     96c:	ef000000 	svc	0x00000000
     970:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     974:	e12fff1e 	bx	lr

00000978 <kill>:
     978:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     97c:	e1a04003 	mov	r4, r3
     980:	e1a03002 	mov	r3, r2
     984:	e1a02001 	mov	r2, r1
     988:	e1a01000 	mov	r1, r0
     98c:	e3a00006 	mov	r0, #6
     990:	ef000000 	svc	0x00000000
     994:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     998:	e12fff1e 	bx	lr

0000099c <exec>:
     99c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a0:	e1a04003 	mov	r4, r3
     9a4:	e1a03002 	mov	r3, r2
     9a8:	e1a02001 	mov	r2, r1
     9ac:	e1a01000 	mov	r1, r0
     9b0:	e3a00007 	mov	r0, #7
     9b4:	ef000000 	svc	0x00000000
     9b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9bc:	e12fff1e 	bx	lr

000009c0 <open>:
     9c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c4:	e1a04003 	mov	r4, r3
     9c8:	e1a03002 	mov	r3, r2
     9cc:	e1a02001 	mov	r2, r1
     9d0:	e1a01000 	mov	r1, r0
     9d4:	e3a0000f 	mov	r0, #15
     9d8:	ef000000 	svc	0x00000000
     9dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e0:	e12fff1e 	bx	lr

000009e4 <mknod>:
     9e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9e8:	e1a04003 	mov	r4, r3
     9ec:	e1a03002 	mov	r3, r2
     9f0:	e1a02001 	mov	r2, r1
     9f4:	e1a01000 	mov	r1, r0
     9f8:	e3a00011 	mov	r0, #17
     9fc:	ef000000 	svc	0x00000000
     a00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a04:	e12fff1e 	bx	lr

00000a08 <unlink>:
     a08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a0c:	e1a04003 	mov	r4, r3
     a10:	e1a03002 	mov	r3, r2
     a14:	e1a02001 	mov	r2, r1
     a18:	e1a01000 	mov	r1, r0
     a1c:	e3a00012 	mov	r0, #18
     a20:	ef000000 	svc	0x00000000
     a24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a28:	e12fff1e 	bx	lr

00000a2c <fstat>:
     a2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a30:	e1a04003 	mov	r4, r3
     a34:	e1a03002 	mov	r3, r2
     a38:	e1a02001 	mov	r2, r1
     a3c:	e1a01000 	mov	r1, r0
     a40:	e3a00008 	mov	r0, #8
     a44:	ef000000 	svc	0x00000000
     a48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a4c:	e12fff1e 	bx	lr

00000a50 <link>:
     a50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a54:	e1a04003 	mov	r4, r3
     a58:	e1a03002 	mov	r3, r2
     a5c:	e1a02001 	mov	r2, r1
     a60:	e1a01000 	mov	r1, r0
     a64:	e3a00013 	mov	r0, #19
     a68:	ef000000 	svc	0x00000000
     a6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a70:	e12fff1e 	bx	lr

00000a74 <mkdir>:
     a74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a78:	e1a04003 	mov	r4, r3
     a7c:	e1a03002 	mov	r3, r2
     a80:	e1a02001 	mov	r2, r1
     a84:	e1a01000 	mov	r1, r0
     a88:	e3a00014 	mov	r0, #20
     a8c:	ef000000 	svc	0x00000000
     a90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a94:	e12fff1e 	bx	lr

00000a98 <chdir>:
     a98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a9c:	e1a04003 	mov	r4, r3
     aa0:	e1a03002 	mov	r3, r2
     aa4:	e1a02001 	mov	r2, r1
     aa8:	e1a01000 	mov	r1, r0
     aac:	e3a00009 	mov	r0, #9
     ab0:	ef000000 	svc	0x00000000
     ab4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ab8:	e12fff1e 	bx	lr

00000abc <dup>:
     abc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac0:	e1a04003 	mov	r4, r3
     ac4:	e1a03002 	mov	r3, r2
     ac8:	e1a02001 	mov	r2, r1
     acc:	e1a01000 	mov	r1, r0
     ad0:	e3a0000a 	mov	r0, #10
     ad4:	ef000000 	svc	0x00000000
     ad8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     adc:	e12fff1e 	bx	lr

00000ae0 <getpid>:
     ae0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae4:	e1a04003 	mov	r4, r3
     ae8:	e1a03002 	mov	r3, r2
     aec:	e1a02001 	mov	r2, r1
     af0:	e1a01000 	mov	r1, r0
     af4:	e3a0000b 	mov	r0, #11
     af8:	ef000000 	svc	0x00000000
     afc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b00:	e12fff1e 	bx	lr

00000b04 <sbrk>:
     b04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b08:	e1a04003 	mov	r4, r3
     b0c:	e1a03002 	mov	r3, r2
     b10:	e1a02001 	mov	r2, r1
     b14:	e1a01000 	mov	r1, r0
     b18:	e3a0000c 	mov	r0, #12
     b1c:	ef000000 	svc	0x00000000
     b20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b24:	e12fff1e 	bx	lr

00000b28 <sleep>:
     b28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b2c:	e1a04003 	mov	r4, r3
     b30:	e1a03002 	mov	r3, r2
     b34:	e1a02001 	mov	r2, r1
     b38:	e1a01000 	mov	r1, r0
     b3c:	e3a0000d 	mov	r0, #13
     b40:	ef000000 	svc	0x00000000
     b44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b48:	e12fff1e 	bx	lr

00000b4c <uptime>:
     b4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b50:	e1a04003 	mov	r4, r3
     b54:	e1a03002 	mov	r3, r2
     b58:	e1a02001 	mov	r2, r1
     b5c:	e1a01000 	mov	r1, r0
     b60:	e3a0000e 	mov	r0, #14
     b64:	ef000000 	svc	0x00000000
     b68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b6c:	e12fff1e 	bx	lr

00000b70 <getprocs>:
     b70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b74:	e1a04003 	mov	r4, r3
     b78:	e1a03002 	mov	r3, r2
     b7c:	e1a02001 	mov	r2, r1
     b80:	e1a01000 	mov	r1, r0
     b84:	e3a00016 	mov	r0, #22
     b88:	ef000000 	svc	0x00000000
     b8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b90:	e12fff1e 	bx	lr

00000b94 <settickets>:
     b94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b98:	e1a04003 	mov	r4, r3
     b9c:	e1a03002 	mov	r3, r2
     ba0:	e1a02001 	mov	r2, r1
     ba4:	e1a01000 	mov	r1, r0
     ba8:	e3a00017 	mov	r0, #23
     bac:	ef000000 	svc	0x00000000
     bb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb4:	e12fff1e 	bx	lr

00000bb8 <srand>:
     bb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bbc:	e1a04003 	mov	r4, r3
     bc0:	e1a03002 	mov	r3, r2
     bc4:	e1a02001 	mov	r2, r1
     bc8:	e1a01000 	mov	r1, r0
     bcc:	e3a00018 	mov	r0, #24
     bd0:	ef000000 	svc	0x00000000
     bd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bd8:	e12fff1e 	bx	lr

00000bdc <getpinfo>:
     bdc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be0:	e1a04003 	mov	r4, r3
     be4:	e1a03002 	mov	r3, r2
     be8:	e1a02001 	mov	r2, r1
     bec:	e1a01000 	mov	r1, r0
     bf0:	e3a00019 	mov	r0, #25
     bf4:	ef000000 	svc	0x00000000
     bf8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bfc:	e12fff1e 	bx	lr

00000c00 <dumppagetable>:
     c00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c04:	e1a04003 	mov	r4, r3
     c08:	e1a03002 	mov	r3, r2
     c0c:	e1a02001 	mov	r2, r1
     c10:	e1a01000 	mov	r1, r0
     c14:	e3a0001a 	mov	r0, #26
     c18:	ef000000 	svc	0x00000000
     c1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c20:	e12fff1e 	bx	lr

00000c24 <thread_create>:
     c24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c28:	e1a04003 	mov	r4, r3
     c2c:	e1a03002 	mov	r3, r2
     c30:	e1a02001 	mov	r2, r1
     c34:	e1a01000 	mov	r1, r0
     c38:	e3a0001b 	mov	r0, #27
     c3c:	ef000000 	svc	0x00000000
     c40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c44:	e12fff1e 	bx	lr

00000c48 <thread_exit>:
     c48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c4c:	e1a04003 	mov	r4, r3
     c50:	e1a03002 	mov	r3, r2
     c54:	e1a02001 	mov	r2, r1
     c58:	e1a01000 	mov	r1, r0
     c5c:	e3a0001c 	mov	r0, #28
     c60:	ef000000 	svc	0x00000000
     c64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c68:	e12fff1e 	bx	lr

00000c6c <thread_join>:
     c6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c70:	e1a04003 	mov	r4, r3
     c74:	e1a03002 	mov	r3, r2
     c78:	e1a02001 	mov	r2, r1
     c7c:	e1a01000 	mov	r1, r0
     c80:	e3a0001d 	mov	r0, #29
     c84:	ef000000 	svc	0x00000000
     c88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c8c:	e12fff1e 	bx	lr

00000c90 <waitpid>:
     c90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c94:	e1a04003 	mov	r4, r3
     c98:	e1a03002 	mov	r3, r2
     c9c:	e1a02001 	mov	r2, r1
     ca0:	e1a01000 	mov	r1, r0
     ca4:	e3a0001e 	mov	r0, #30
     ca8:	ef000000 	svc	0x00000000
     cac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb0:	e12fff1e 	bx	lr

00000cb4 <barrier_init>:
     cb4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cb8:	e1a04003 	mov	r4, r3
     cbc:	e1a03002 	mov	r3, r2
     cc0:	e1a02001 	mov	r2, r1
     cc4:	e1a01000 	mov	r1, r0
     cc8:	e3a0001f 	mov	r0, #31
     ccc:	ef000000 	svc	0x00000000
     cd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd4:	e12fff1e 	bx	lr

00000cd8 <barrier_check>:
     cd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cdc:	e1a04003 	mov	r4, r3
     ce0:	e1a03002 	mov	r3, r2
     ce4:	e1a02001 	mov	r2, r1
     ce8:	e1a01000 	mov	r1, r0
     cec:	e3a00020 	mov	r0, #32
     cf0:	ef000000 	svc	0x00000000
     cf4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cf8:	e12fff1e 	bx	lr

00000cfc <sleepChan>:
     cfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d00:	e1a04003 	mov	r4, r3
     d04:	e1a03002 	mov	r3, r2
     d08:	e1a02001 	mov	r2, r1
     d0c:	e1a01000 	mov	r1, r0
     d10:	e3a00024 	mov	r0, #36	@ 0x24
     d14:	ef000000 	svc	0x00000000
     d18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d1c:	e12fff1e 	bx	lr

00000d20 <getChannel>:
     d20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d24:	e1a04003 	mov	r4, r3
     d28:	e1a03002 	mov	r3, r2
     d2c:	e1a02001 	mov	r2, r1
     d30:	e1a01000 	mov	r1, r0
     d34:	e3a00025 	mov	r0, #37	@ 0x25
     d38:	ef000000 	svc	0x00000000
     d3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d40:	e12fff1e 	bx	lr

00000d44 <sigChan>:
     d44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d48:	e1a04003 	mov	r4, r3
     d4c:	e1a03002 	mov	r3, r2
     d50:	e1a02001 	mov	r2, r1
     d54:	e1a01000 	mov	r1, r0
     d58:	e3a00026 	mov	r0, #38	@ 0x26
     d5c:	ef000000 	svc	0x00000000
     d60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d64:	e12fff1e 	bx	lr

00000d68 <sigOneChan>:
     d68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d6c:	e1a04003 	mov	r4, r3
     d70:	e1a03002 	mov	r3, r2
     d74:	e1a02001 	mov	r2, r1
     d78:	e1a01000 	mov	r1, r0
     d7c:	e3a00027 	mov	r0, #39	@ 0x27
     d80:	ef000000 	svc	0x00000000
     d84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d88:	e12fff1e 	bx	lr

00000d8c <putc>:
     d8c:	e92d4800 	push	{fp, lr}
     d90:	e28db004 	add	fp, sp, #4
     d94:	e24dd008 	sub	sp, sp, #8
     d98:	e50b0008 	str	r0, [fp, #-8]
     d9c:	e1a03001 	mov	r3, r1
     da0:	e54b3009 	strb	r3, [fp, #-9]
     da4:	e24b3009 	sub	r3, fp, #9
     da8:	e3a02001 	mov	r2, #1
     dac:	e1a01003 	mov	r1, r3
     db0:	e51b0008 	ldr	r0, [fp, #-8]
     db4:	ebfffedd 	bl	930 <write>
     db8:	e1a00000 	nop			@ (mov r0, r0)
     dbc:	e24bd004 	sub	sp, fp, #4
     dc0:	e8bd8800 	pop	{fp, pc}

00000dc4 <printint>:
     dc4:	e92d4800 	push	{fp, lr}
     dc8:	e28db004 	add	fp, sp, #4
     dcc:	e24dd030 	sub	sp, sp, #48	@ 0x30
     dd0:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     dd4:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     dd8:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     ddc:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     de0:	e3a03000 	mov	r3, #0
     de4:	e50b300c 	str	r3, [fp, #-12]
     de8:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     dec:	e3530000 	cmp	r3, #0
     df0:	0a000008 	beq	e18 <printint+0x54>
     df4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     df8:	e3530000 	cmp	r3, #0
     dfc:	aa000005 	bge	e18 <printint+0x54>
     e00:	e3a03001 	mov	r3, #1
     e04:	e50b300c 	str	r3, [fp, #-12]
     e08:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e0c:	e2633000 	rsb	r3, r3, #0
     e10:	e50b3010 	str	r3, [fp, #-16]
     e14:	ea000001 	b	e20 <printint+0x5c>
     e18:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e1c:	e50b3010 	str	r3, [fp, #-16]
     e20:	e3a03000 	mov	r3, #0
     e24:	e50b3008 	str	r3, [fp, #-8]
     e28:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     e2c:	e51b3010 	ldr	r3, [fp, #-16]
     e30:	e1a01002 	mov	r1, r2
     e34:	e1a00003 	mov	r0, r3
     e38:	eb0001d5 	bl	1594 <__aeabi_uidivmod>
     e3c:	e1a03001 	mov	r3, r1
     e40:	e1a01003 	mov	r1, r3
     e44:	e51b3008 	ldr	r3, [fp, #-8]
     e48:	e2832001 	add	r2, r3, #1
     e4c:	e50b2008 	str	r2, [fp, #-8]
     e50:	e59f20a0 	ldr	r2, [pc, #160]	@ ef8 <printint+0x134>
     e54:	e7d22001 	ldrb	r2, [r2, r1]
     e58:	e2433004 	sub	r3, r3, #4
     e5c:	e083300b 	add	r3, r3, fp
     e60:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     e64:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     e68:	e1a01003 	mov	r1, r3
     e6c:	e51b0010 	ldr	r0, [fp, #-16]
     e70:	eb00018a 	bl	14a0 <__udivsi3>
     e74:	e1a03000 	mov	r3, r0
     e78:	e50b3010 	str	r3, [fp, #-16]
     e7c:	e51b3010 	ldr	r3, [fp, #-16]
     e80:	e3530000 	cmp	r3, #0
     e84:	1affffe7 	bne	e28 <printint+0x64>
     e88:	e51b300c 	ldr	r3, [fp, #-12]
     e8c:	e3530000 	cmp	r3, #0
     e90:	0a00000e 	beq	ed0 <printint+0x10c>
     e94:	e51b3008 	ldr	r3, [fp, #-8]
     e98:	e2832001 	add	r2, r3, #1
     e9c:	e50b2008 	str	r2, [fp, #-8]
     ea0:	e2433004 	sub	r3, r3, #4
     ea4:	e083300b 	add	r3, r3, fp
     ea8:	e3a0202d 	mov	r2, #45	@ 0x2d
     eac:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     eb0:	ea000006 	b	ed0 <printint+0x10c>
     eb4:	e24b2020 	sub	r2, fp, #32
     eb8:	e51b3008 	ldr	r3, [fp, #-8]
     ebc:	e0823003 	add	r3, r2, r3
     ec0:	e5d33000 	ldrb	r3, [r3]
     ec4:	e1a01003 	mov	r1, r3
     ec8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     ecc:	ebffffae 	bl	d8c <putc>
     ed0:	e51b3008 	ldr	r3, [fp, #-8]
     ed4:	e2433001 	sub	r3, r3, #1
     ed8:	e50b3008 	str	r3, [fp, #-8]
     edc:	e51b3008 	ldr	r3, [fp, #-8]
     ee0:	e3530000 	cmp	r3, #0
     ee4:	aafffff2 	bge	eb4 <printint+0xf0>
     ee8:	e1a00000 	nop			@ (mov r0, r0)
     eec:	e1a00000 	nop			@ (mov r0, r0)
     ef0:	e24bd004 	sub	sp, fp, #4
     ef4:	e8bd8800 	pop	{fp, pc}
     ef8:	00001620 	.word	0x00001620

00000efc <printf>:
     efc:	e92d000e 	push	{r1, r2, r3}
     f00:	e92d4800 	push	{fp, lr}
     f04:	e28db004 	add	fp, sp, #4
     f08:	e24dd024 	sub	sp, sp, #36	@ 0x24
     f0c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     f10:	e3a03000 	mov	r3, #0
     f14:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f18:	e28b3008 	add	r3, fp, #8
     f1c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f20:	e3a03000 	mov	r3, #0
     f24:	e50b3010 	str	r3, [fp, #-16]
     f28:	ea000074 	b	1100 <printf+0x204>
     f2c:	e59b2004 	ldr	r2, [fp, #4]
     f30:	e51b3010 	ldr	r3, [fp, #-16]
     f34:	e0823003 	add	r3, r2, r3
     f38:	e5d33000 	ldrb	r3, [r3]
     f3c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     f40:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     f44:	e3530000 	cmp	r3, #0
     f48:	1a00000b 	bne	f7c <printf+0x80>
     f4c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f50:	e3530025 	cmp	r3, #37	@ 0x25
     f54:	1a000002 	bne	f64 <printf+0x68>
     f58:	e3a03025 	mov	r3, #37	@ 0x25
     f5c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f60:	ea000063 	b	10f4 <printf+0x1f8>
     f64:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f68:	e6ef3073 	uxtb	r3, r3
     f6c:	e1a01003 	mov	r1, r3
     f70:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f74:	ebffff84 	bl	d8c <putc>
     f78:	ea00005d 	b	10f4 <printf+0x1f8>
     f7c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     f80:	e3530025 	cmp	r3, #37	@ 0x25
     f84:	1a00005a 	bne	10f4 <printf+0x1f8>
     f88:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f8c:	e3530064 	cmp	r3, #100	@ 0x64
     f90:	1a00000a 	bne	fc0 <printf+0xc4>
     f94:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f98:	e5933000 	ldr	r3, [r3]
     f9c:	e1a01003 	mov	r1, r3
     fa0:	e3a03001 	mov	r3, #1
     fa4:	e3a0200a 	mov	r2, #10
     fa8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fac:	ebffff84 	bl	dc4 <printint>
     fb0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fb4:	e2833004 	add	r3, r3, #4
     fb8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fbc:	ea00004a 	b	10ec <printf+0x1f0>
     fc0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fc4:	e3530078 	cmp	r3, #120	@ 0x78
     fc8:	0a000002 	beq	fd8 <printf+0xdc>
     fcc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fd0:	e3530070 	cmp	r3, #112	@ 0x70
     fd4:	1a00000a 	bne	1004 <printf+0x108>
     fd8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fdc:	e5933000 	ldr	r3, [r3]
     fe0:	e1a01003 	mov	r1, r3
     fe4:	e3a03000 	mov	r3, #0
     fe8:	e3a02010 	mov	r2, #16
     fec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ff0:	ebffff73 	bl	dc4 <printint>
     ff4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ff8:	e2833004 	add	r3, r3, #4
     ffc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1000:	ea000039 	b	10ec <printf+0x1f0>
    1004:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1008:	e3530073 	cmp	r3, #115	@ 0x73
    100c:	1a000018 	bne	1074 <printf+0x178>
    1010:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1014:	e5933000 	ldr	r3, [r3]
    1018:	e50b300c 	str	r3, [fp, #-12]
    101c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1020:	e2833004 	add	r3, r3, #4
    1024:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1028:	e51b300c 	ldr	r3, [fp, #-12]
    102c:	e3530000 	cmp	r3, #0
    1030:	1a00000a 	bne	1060 <printf+0x164>
    1034:	e59f30f4 	ldr	r3, [pc, #244]	@ 1130 <printf+0x234>
    1038:	e50b300c 	str	r3, [fp, #-12]
    103c:	ea000007 	b	1060 <printf+0x164>
    1040:	e51b300c 	ldr	r3, [fp, #-12]
    1044:	e5d33000 	ldrb	r3, [r3]
    1048:	e1a01003 	mov	r1, r3
    104c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1050:	ebffff4d 	bl	d8c <putc>
    1054:	e51b300c 	ldr	r3, [fp, #-12]
    1058:	e2833001 	add	r3, r3, #1
    105c:	e50b300c 	str	r3, [fp, #-12]
    1060:	e51b300c 	ldr	r3, [fp, #-12]
    1064:	e5d33000 	ldrb	r3, [r3]
    1068:	e3530000 	cmp	r3, #0
    106c:	1afffff3 	bne	1040 <printf+0x144>
    1070:	ea00001d 	b	10ec <printf+0x1f0>
    1074:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1078:	e3530063 	cmp	r3, #99	@ 0x63
    107c:	1a000009 	bne	10a8 <printf+0x1ac>
    1080:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1084:	e5933000 	ldr	r3, [r3]
    1088:	e6ef3073 	uxtb	r3, r3
    108c:	e1a01003 	mov	r1, r3
    1090:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1094:	ebffff3c 	bl	d8c <putc>
    1098:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    109c:	e2833004 	add	r3, r3, #4
    10a0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10a4:	ea000010 	b	10ec <printf+0x1f0>
    10a8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10ac:	e3530025 	cmp	r3, #37	@ 0x25
    10b0:	1a000005 	bne	10cc <printf+0x1d0>
    10b4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10b8:	e6ef3073 	uxtb	r3, r3
    10bc:	e1a01003 	mov	r1, r3
    10c0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10c4:	ebffff30 	bl	d8c <putc>
    10c8:	ea000007 	b	10ec <printf+0x1f0>
    10cc:	e3a01025 	mov	r1, #37	@ 0x25
    10d0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10d4:	ebffff2c 	bl	d8c <putc>
    10d8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10dc:	e6ef3073 	uxtb	r3, r3
    10e0:	e1a01003 	mov	r1, r3
    10e4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10e8:	ebffff27 	bl	d8c <putc>
    10ec:	e3a03000 	mov	r3, #0
    10f0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    10f4:	e51b3010 	ldr	r3, [fp, #-16]
    10f8:	e2833001 	add	r3, r3, #1
    10fc:	e50b3010 	str	r3, [fp, #-16]
    1100:	e59b2004 	ldr	r2, [fp, #4]
    1104:	e51b3010 	ldr	r3, [fp, #-16]
    1108:	e0823003 	add	r3, r2, r3
    110c:	e5d33000 	ldrb	r3, [r3]
    1110:	e3530000 	cmp	r3, #0
    1114:	1affff84 	bne	f2c <printf+0x30>
    1118:	e1a00000 	nop			@ (mov r0, r0)
    111c:	e1a00000 	nop			@ (mov r0, r0)
    1120:	e24bd004 	sub	sp, fp, #4
    1124:	e8bd4800 	pop	{fp, lr}
    1128:	e28dd00c 	add	sp, sp, #12
    112c:	e12fff1e 	bx	lr
    1130:	00001610 	.word	0x00001610

00001134 <free>:
    1134:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1138:	e28db000 	add	fp, sp, #0
    113c:	e24dd014 	sub	sp, sp, #20
    1140:	e50b0010 	str	r0, [fp, #-16]
    1144:	e51b3010 	ldr	r3, [fp, #-16]
    1148:	e2433008 	sub	r3, r3, #8
    114c:	e50b300c 	str	r3, [fp, #-12]
    1150:	e59f3154 	ldr	r3, [pc, #340]	@ 12ac <free+0x178>
    1154:	e5933000 	ldr	r3, [r3]
    1158:	e50b3008 	str	r3, [fp, #-8]
    115c:	ea000010 	b	11a4 <free+0x70>
    1160:	e51b3008 	ldr	r3, [fp, #-8]
    1164:	e5933000 	ldr	r3, [r3]
    1168:	e51b2008 	ldr	r2, [fp, #-8]
    116c:	e1520003 	cmp	r2, r3
    1170:	3a000008 	bcc	1198 <free+0x64>
    1174:	e51b200c 	ldr	r2, [fp, #-12]
    1178:	e51b3008 	ldr	r3, [fp, #-8]
    117c:	e1520003 	cmp	r2, r3
    1180:	8a000010 	bhi	11c8 <free+0x94>
    1184:	e51b3008 	ldr	r3, [fp, #-8]
    1188:	e5933000 	ldr	r3, [r3]
    118c:	e51b200c 	ldr	r2, [fp, #-12]
    1190:	e1520003 	cmp	r2, r3
    1194:	3a00000b 	bcc	11c8 <free+0x94>
    1198:	e51b3008 	ldr	r3, [fp, #-8]
    119c:	e5933000 	ldr	r3, [r3]
    11a0:	e50b3008 	str	r3, [fp, #-8]
    11a4:	e51b200c 	ldr	r2, [fp, #-12]
    11a8:	e51b3008 	ldr	r3, [fp, #-8]
    11ac:	e1520003 	cmp	r2, r3
    11b0:	9affffea 	bls	1160 <free+0x2c>
    11b4:	e51b3008 	ldr	r3, [fp, #-8]
    11b8:	e5933000 	ldr	r3, [r3]
    11bc:	e51b200c 	ldr	r2, [fp, #-12]
    11c0:	e1520003 	cmp	r2, r3
    11c4:	2affffe5 	bcs	1160 <free+0x2c>
    11c8:	e51b300c 	ldr	r3, [fp, #-12]
    11cc:	e5933004 	ldr	r3, [r3, #4]
    11d0:	e1a03183 	lsl	r3, r3, #3
    11d4:	e51b200c 	ldr	r2, [fp, #-12]
    11d8:	e0822003 	add	r2, r2, r3
    11dc:	e51b3008 	ldr	r3, [fp, #-8]
    11e0:	e5933000 	ldr	r3, [r3]
    11e4:	e1520003 	cmp	r2, r3
    11e8:	1a00000d 	bne	1224 <free+0xf0>
    11ec:	e51b300c 	ldr	r3, [fp, #-12]
    11f0:	e5932004 	ldr	r2, [r3, #4]
    11f4:	e51b3008 	ldr	r3, [fp, #-8]
    11f8:	e5933000 	ldr	r3, [r3]
    11fc:	e5933004 	ldr	r3, [r3, #4]
    1200:	e0822003 	add	r2, r2, r3
    1204:	e51b300c 	ldr	r3, [fp, #-12]
    1208:	e5832004 	str	r2, [r3, #4]
    120c:	e51b3008 	ldr	r3, [fp, #-8]
    1210:	e5933000 	ldr	r3, [r3]
    1214:	e5932000 	ldr	r2, [r3]
    1218:	e51b300c 	ldr	r3, [fp, #-12]
    121c:	e5832000 	str	r2, [r3]
    1220:	ea000003 	b	1234 <free+0x100>
    1224:	e51b3008 	ldr	r3, [fp, #-8]
    1228:	e5932000 	ldr	r2, [r3]
    122c:	e51b300c 	ldr	r3, [fp, #-12]
    1230:	e5832000 	str	r2, [r3]
    1234:	e51b3008 	ldr	r3, [fp, #-8]
    1238:	e5933004 	ldr	r3, [r3, #4]
    123c:	e1a03183 	lsl	r3, r3, #3
    1240:	e51b2008 	ldr	r2, [fp, #-8]
    1244:	e0823003 	add	r3, r2, r3
    1248:	e51b200c 	ldr	r2, [fp, #-12]
    124c:	e1520003 	cmp	r2, r3
    1250:	1a00000b 	bne	1284 <free+0x150>
    1254:	e51b3008 	ldr	r3, [fp, #-8]
    1258:	e5932004 	ldr	r2, [r3, #4]
    125c:	e51b300c 	ldr	r3, [fp, #-12]
    1260:	e5933004 	ldr	r3, [r3, #4]
    1264:	e0822003 	add	r2, r2, r3
    1268:	e51b3008 	ldr	r3, [fp, #-8]
    126c:	e5832004 	str	r2, [r3, #4]
    1270:	e51b300c 	ldr	r3, [fp, #-12]
    1274:	e5932000 	ldr	r2, [r3]
    1278:	e51b3008 	ldr	r3, [fp, #-8]
    127c:	e5832000 	str	r2, [r3]
    1280:	ea000002 	b	1290 <free+0x15c>
    1284:	e51b3008 	ldr	r3, [fp, #-8]
    1288:	e51b200c 	ldr	r2, [fp, #-12]
    128c:	e5832000 	str	r2, [r3]
    1290:	e59f2014 	ldr	r2, [pc, #20]	@ 12ac <free+0x178>
    1294:	e51b3008 	ldr	r3, [fp, #-8]
    1298:	e5823000 	str	r3, [r2]
    129c:	e1a00000 	nop			@ (mov r0, r0)
    12a0:	e28bd000 	add	sp, fp, #0
    12a4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    12a8:	e12fff1e 	bx	lr
    12ac:	0000163c 	.word	0x0000163c

000012b0 <morecore>:
    12b0:	e92d4800 	push	{fp, lr}
    12b4:	e28db004 	add	fp, sp, #4
    12b8:	e24dd010 	sub	sp, sp, #16
    12bc:	e50b0010 	str	r0, [fp, #-16]
    12c0:	e51b3010 	ldr	r3, [fp, #-16]
    12c4:	e3530a01 	cmp	r3, #4096	@ 0x1000
    12c8:	2a000001 	bcs	12d4 <morecore+0x24>
    12cc:	e3a03a01 	mov	r3, #4096	@ 0x1000
    12d0:	e50b3010 	str	r3, [fp, #-16]
    12d4:	e51b3010 	ldr	r3, [fp, #-16]
    12d8:	e1a03183 	lsl	r3, r3, #3
    12dc:	e1a00003 	mov	r0, r3
    12e0:	ebfffe07 	bl	b04 <sbrk>
    12e4:	e50b0008 	str	r0, [fp, #-8]
    12e8:	e51b3008 	ldr	r3, [fp, #-8]
    12ec:	e3730001 	cmn	r3, #1
    12f0:	1a000001 	bne	12fc <morecore+0x4c>
    12f4:	e3a03000 	mov	r3, #0
    12f8:	ea00000a 	b	1328 <morecore+0x78>
    12fc:	e51b3008 	ldr	r3, [fp, #-8]
    1300:	e50b300c 	str	r3, [fp, #-12]
    1304:	e51b300c 	ldr	r3, [fp, #-12]
    1308:	e51b2010 	ldr	r2, [fp, #-16]
    130c:	e5832004 	str	r2, [r3, #4]
    1310:	e51b300c 	ldr	r3, [fp, #-12]
    1314:	e2833008 	add	r3, r3, #8
    1318:	e1a00003 	mov	r0, r3
    131c:	ebffff84 	bl	1134 <free>
    1320:	e59f300c 	ldr	r3, [pc, #12]	@ 1334 <morecore+0x84>
    1324:	e5933000 	ldr	r3, [r3]
    1328:	e1a00003 	mov	r0, r3
    132c:	e24bd004 	sub	sp, fp, #4
    1330:	e8bd8800 	pop	{fp, pc}
    1334:	0000163c 	.word	0x0000163c

00001338 <malloc>:
    1338:	e92d4800 	push	{fp, lr}
    133c:	e28db004 	add	fp, sp, #4
    1340:	e24dd018 	sub	sp, sp, #24
    1344:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1348:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    134c:	e2833007 	add	r3, r3, #7
    1350:	e1a031a3 	lsr	r3, r3, #3
    1354:	e2833001 	add	r3, r3, #1
    1358:	e50b3010 	str	r3, [fp, #-16]
    135c:	e59f3134 	ldr	r3, [pc, #308]	@ 1498 <malloc+0x160>
    1360:	e5933000 	ldr	r3, [r3]
    1364:	e50b300c 	str	r3, [fp, #-12]
    1368:	e51b300c 	ldr	r3, [fp, #-12]
    136c:	e3530000 	cmp	r3, #0
    1370:	1a00000b 	bne	13a4 <malloc+0x6c>
    1374:	e59f3120 	ldr	r3, [pc, #288]	@ 149c <malloc+0x164>
    1378:	e50b300c 	str	r3, [fp, #-12]
    137c:	e59f2114 	ldr	r2, [pc, #276]	@ 1498 <malloc+0x160>
    1380:	e51b300c 	ldr	r3, [fp, #-12]
    1384:	e5823000 	str	r3, [r2]
    1388:	e59f3108 	ldr	r3, [pc, #264]	@ 1498 <malloc+0x160>
    138c:	e5933000 	ldr	r3, [r3]
    1390:	e59f2104 	ldr	r2, [pc, #260]	@ 149c <malloc+0x164>
    1394:	e5823000 	str	r3, [r2]
    1398:	e59f30fc 	ldr	r3, [pc, #252]	@ 149c <malloc+0x164>
    139c:	e3a02000 	mov	r2, #0
    13a0:	e5832004 	str	r2, [r3, #4]
    13a4:	e51b300c 	ldr	r3, [fp, #-12]
    13a8:	e5933000 	ldr	r3, [r3]
    13ac:	e50b3008 	str	r3, [fp, #-8]
    13b0:	e51b3008 	ldr	r3, [fp, #-8]
    13b4:	e5933004 	ldr	r3, [r3, #4]
    13b8:	e51b2010 	ldr	r2, [fp, #-16]
    13bc:	e1520003 	cmp	r2, r3
    13c0:	8a00001e 	bhi	1440 <malloc+0x108>
    13c4:	e51b3008 	ldr	r3, [fp, #-8]
    13c8:	e5933004 	ldr	r3, [r3, #4]
    13cc:	e51b2010 	ldr	r2, [fp, #-16]
    13d0:	e1520003 	cmp	r2, r3
    13d4:	1a000004 	bne	13ec <malloc+0xb4>
    13d8:	e51b3008 	ldr	r3, [fp, #-8]
    13dc:	e5932000 	ldr	r2, [r3]
    13e0:	e51b300c 	ldr	r3, [fp, #-12]
    13e4:	e5832000 	str	r2, [r3]
    13e8:	ea00000e 	b	1428 <malloc+0xf0>
    13ec:	e51b3008 	ldr	r3, [fp, #-8]
    13f0:	e5932004 	ldr	r2, [r3, #4]
    13f4:	e51b3010 	ldr	r3, [fp, #-16]
    13f8:	e0422003 	sub	r2, r2, r3
    13fc:	e51b3008 	ldr	r3, [fp, #-8]
    1400:	e5832004 	str	r2, [r3, #4]
    1404:	e51b3008 	ldr	r3, [fp, #-8]
    1408:	e5933004 	ldr	r3, [r3, #4]
    140c:	e1a03183 	lsl	r3, r3, #3
    1410:	e51b2008 	ldr	r2, [fp, #-8]
    1414:	e0823003 	add	r3, r2, r3
    1418:	e50b3008 	str	r3, [fp, #-8]
    141c:	e51b3008 	ldr	r3, [fp, #-8]
    1420:	e51b2010 	ldr	r2, [fp, #-16]
    1424:	e5832004 	str	r2, [r3, #4]
    1428:	e59f2068 	ldr	r2, [pc, #104]	@ 1498 <malloc+0x160>
    142c:	e51b300c 	ldr	r3, [fp, #-12]
    1430:	e5823000 	str	r3, [r2]
    1434:	e51b3008 	ldr	r3, [fp, #-8]
    1438:	e2833008 	add	r3, r3, #8
    143c:	ea000012 	b	148c <malloc+0x154>
    1440:	e59f3050 	ldr	r3, [pc, #80]	@ 1498 <malloc+0x160>
    1444:	e5933000 	ldr	r3, [r3]
    1448:	e51b2008 	ldr	r2, [fp, #-8]
    144c:	e1520003 	cmp	r2, r3
    1450:	1a000007 	bne	1474 <malloc+0x13c>
    1454:	e51b0010 	ldr	r0, [fp, #-16]
    1458:	ebffff94 	bl	12b0 <morecore>
    145c:	e50b0008 	str	r0, [fp, #-8]
    1460:	e51b3008 	ldr	r3, [fp, #-8]
    1464:	e3530000 	cmp	r3, #0
    1468:	1a000001 	bne	1474 <malloc+0x13c>
    146c:	e3a03000 	mov	r3, #0
    1470:	ea000005 	b	148c <malloc+0x154>
    1474:	e51b3008 	ldr	r3, [fp, #-8]
    1478:	e50b300c 	str	r3, [fp, #-12]
    147c:	e51b3008 	ldr	r3, [fp, #-8]
    1480:	e5933000 	ldr	r3, [r3]
    1484:	e50b3008 	str	r3, [fp, #-8]
    1488:	eaffffc8 	b	13b0 <malloc+0x78>
    148c:	e1a00003 	mov	r0, r3
    1490:	e24bd004 	sub	sp, fp, #4
    1494:	e8bd8800 	pop	{fp, pc}
    1498:	0000163c 	.word	0x0000163c
    149c:	00001634 	.word	0x00001634

000014a0 <__udivsi3>:
    14a0:	e2512001 	subs	r2, r1, #1
    14a4:	012fff1e 	bxeq	lr
    14a8:	3a000036 	bcc	1588 <__udivsi3+0xe8>
    14ac:	e1500001 	cmp	r0, r1
    14b0:	9a000022 	bls	1540 <__udivsi3+0xa0>
    14b4:	e1110002 	tst	r1, r2
    14b8:	0a000023 	beq	154c <__udivsi3+0xac>
    14bc:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    14c0:	01a01181 	lsleq	r1, r1, #3
    14c4:	03a03008 	moveq	r3, #8
    14c8:	13a03001 	movne	r3, #1
    14cc:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    14d0:	31510000 	cmpcc	r1, r0
    14d4:	31a01201 	lslcc	r1, r1, #4
    14d8:	31a03203 	lslcc	r3, r3, #4
    14dc:	3afffffa 	bcc	14cc <__udivsi3+0x2c>
    14e0:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    14e4:	31510000 	cmpcc	r1, r0
    14e8:	31a01081 	lslcc	r1, r1, #1
    14ec:	31a03083 	lslcc	r3, r3, #1
    14f0:	3afffffa 	bcc	14e0 <__udivsi3+0x40>
    14f4:	e3a02000 	mov	r2, #0
    14f8:	e1500001 	cmp	r0, r1
    14fc:	20400001 	subcs	r0, r0, r1
    1500:	21822003 	orrcs	r2, r2, r3
    1504:	e15000a1 	cmp	r0, r1, lsr #1
    1508:	204000a1 	subcs	r0, r0, r1, lsr #1
    150c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1510:	e1500121 	cmp	r0, r1, lsr #2
    1514:	20400121 	subcs	r0, r0, r1, lsr #2
    1518:	21822123 	orrcs	r2, r2, r3, lsr #2
    151c:	e15001a1 	cmp	r0, r1, lsr #3
    1520:	204001a1 	subcs	r0, r0, r1, lsr #3
    1524:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1528:	e3500000 	cmp	r0, #0
    152c:	11b03223 	lsrsne	r3, r3, #4
    1530:	11a01221 	lsrne	r1, r1, #4
    1534:	1affffef 	bne	14f8 <__udivsi3+0x58>
    1538:	e1a00002 	mov	r0, r2
    153c:	e12fff1e 	bx	lr
    1540:	03a00001 	moveq	r0, #1
    1544:	13a00000 	movne	r0, #0
    1548:	e12fff1e 	bx	lr
    154c:	e3510801 	cmp	r1, #65536	@ 0x10000
    1550:	21a01821 	lsrcs	r1, r1, #16
    1554:	23a02010 	movcs	r2, #16
    1558:	33a02000 	movcc	r2, #0
    155c:	e3510c01 	cmp	r1, #256	@ 0x100
    1560:	21a01421 	lsrcs	r1, r1, #8
    1564:	22822008 	addcs	r2, r2, #8
    1568:	e3510010 	cmp	r1, #16
    156c:	21a01221 	lsrcs	r1, r1, #4
    1570:	22822004 	addcs	r2, r2, #4
    1574:	e3510004 	cmp	r1, #4
    1578:	82822003 	addhi	r2, r2, #3
    157c:	908220a1 	addls	r2, r2, r1, lsr #1
    1580:	e1a00230 	lsr	r0, r0, r2
    1584:	e12fff1e 	bx	lr
    1588:	e3500000 	cmp	r0, #0
    158c:	13e00000 	mvnne	r0, #0
    1590:	ea000007 	b	15b4 <__aeabi_idiv0>

00001594 <__aeabi_uidivmod>:
    1594:	e3510000 	cmp	r1, #0
    1598:	0afffffa 	beq	1588 <__udivsi3+0xe8>
    159c:	e92d4003 	push	{r0, r1, lr}
    15a0:	ebffffbe 	bl	14a0 <__udivsi3>
    15a4:	e8bd4006 	pop	{r1, r2, lr}
    15a8:	e0030092 	mul	r3, r2, r0
    15ac:	e0411003 	sub	r1, r1, r3
    15b0:	e12fff1e 	bx	lr

000015b4 <__aeabi_idiv0>:
    15b4:	e12fff1e 	bx	lr
