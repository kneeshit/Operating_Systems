
_init:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e3a01002 	mov	r1, #2
      10:	e59f00c4 	ldr	r0, [pc, #196]	@ dc <main+0xdc>
      14:	eb0001c4 	bl	72c <open>
      18:	e1a03000 	mov	r3, r0
      1c:	e3530000 	cmp	r3, #0
      20:	aa000006 	bge	40 <main+0x40>
      24:	e3a02001 	mov	r2, #1
      28:	e3a01001 	mov	r1, #1
      2c:	e59f00a8 	ldr	r0, [pc, #168]	@ dc <main+0xdc>
      30:	eb0001c6 	bl	750 <mknod>
      34:	e3a01002 	mov	r1, #2
      38:	e59f009c 	ldr	r0, [pc, #156]	@ dc <main+0xdc>
      3c:	eb0001ba 	bl	72c <open>
      40:	e3a00000 	mov	r0, #0
      44:	eb0001f7 	bl	828 <dup>
      48:	e3a00000 	mov	r0, #0
      4c:	eb0001f5 	bl	828 <dup>
      50:	e59f1088 	ldr	r1, [pc, #136]	@ e0 <main+0xe0>
      54:	e3a00001 	mov	r0, #1
      58:	eb00029f 	bl	adc <printf>
      5c:	eb000161 	bl	5e8 <fork>
      60:	e50b0008 	str	r0, [fp, #-8]
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e3530000 	cmp	r3, #0
      6c:	aa000003 	bge	80 <main+0x80>
      70:	e59f106c 	ldr	r1, [pc, #108]	@ e4 <main+0xe4>
      74:	e3a00001 	mov	r0, #1
      78:	eb000297 	bl	adc <printf>
      7c:	eb000162 	bl	60c <exit>
      80:	e51b3008 	ldr	r3, [fp, #-8]
      84:	e3530000 	cmp	r3, #0
      88:	1a000009 	bne	b4 <main+0xb4>
      8c:	e59f1054 	ldr	r1, [pc, #84]	@ e8 <main+0xe8>
      90:	e59f0054 	ldr	r0, [pc, #84]	@ ec <main+0xec>
      94:	eb00019b 	bl	708 <exec>
      98:	e59f1050 	ldr	r1, [pc, #80]	@ f0 <main+0xf0>
      9c:	e3a00001 	mov	r0, #1
      a0:	eb00028d 	bl	adc <printf>
      a4:	eb000158 	bl	60c <exit>
      a8:	e59f1044 	ldr	r1, [pc, #68]	@ f4 <main+0xf4>
      ac:	e3a00001 	mov	r0, #1
      b0:	eb000289 	bl	adc <printf>
      b4:	eb00015d 	bl	630 <wait>
      b8:	e50b000c 	str	r0, [fp, #-12]
      bc:	e51b300c 	ldr	r3, [fp, #-12]
      c0:	e3530000 	cmp	r3, #0
      c4:	baffffe1 	blt	50 <main+0x50>
      c8:	e51b200c 	ldr	r2, [fp, #-12]
      cc:	e51b3008 	ldr	r3, [fp, #-8]
      d0:	e1520003 	cmp	r2, r3
      d4:	1afffff3 	bne	a8 <main+0xa8>
      d8:	eaffffdc 	b	50 <main+0x50>
      dc:	0000119c 	.word	0x0000119c
      e0:	000011a4 	.word	0x000011a4
      e4:	000011b8 	.word	0x000011b8
      e8:	000011f8 	.word	0x000011f8
      ec:	00001198 	.word	0x00001198
      f0:	000011cc 	.word	0x000011cc
      f4:	000011e4 	.word	0x000011e4

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
     3ec:	eb0000a1 	bl	678 <read>
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
     494:	eb0000a4 	bl	72c <open>
     498:	e50b0008 	str	r0, [fp, #-8]
     49c:	e51b3008 	ldr	r3, [fp, #-8]
     4a0:	e3530000 	cmp	r3, #0
     4a4:	aa000001 	bge	4b0 <stat+0x38>
     4a8:	e3e03000 	mvn	r3, #0
     4ac:	ea000006 	b	4cc <stat+0x54>
     4b0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     4b4:	e51b0008 	ldr	r0, [fp, #-8]
     4b8:	eb0000b6 	bl	798 <fstat>
     4bc:	e50b000c 	str	r0, [fp, #-12]
     4c0:	e51b0008 	ldr	r0, [fp, #-8]
     4c4:	eb00007d 	bl	6c0 <close>
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

000005e8 <fork>:
     5e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5ec:	e1a04003 	mov	r4, r3
     5f0:	e1a03002 	mov	r3, r2
     5f4:	e1a02001 	mov	r2, r1
     5f8:	e1a01000 	mov	r1, r0
     5fc:	e3a00001 	mov	r0, #1
     600:	ef000000 	svc	0x00000000
     604:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     608:	e12fff1e 	bx	lr

0000060c <exit>:
     60c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     610:	e1a04003 	mov	r4, r3
     614:	e1a03002 	mov	r3, r2
     618:	e1a02001 	mov	r2, r1
     61c:	e1a01000 	mov	r1, r0
     620:	e3a00002 	mov	r0, #2
     624:	ef000000 	svc	0x00000000
     628:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     62c:	e12fff1e 	bx	lr

00000630 <wait>:
     630:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     634:	e1a04003 	mov	r4, r3
     638:	e1a03002 	mov	r3, r2
     63c:	e1a02001 	mov	r2, r1
     640:	e1a01000 	mov	r1, r0
     644:	e3a00003 	mov	r0, #3
     648:	ef000000 	svc	0x00000000
     64c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     650:	e12fff1e 	bx	lr

00000654 <pipe>:
     654:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     658:	e1a04003 	mov	r4, r3
     65c:	e1a03002 	mov	r3, r2
     660:	e1a02001 	mov	r2, r1
     664:	e1a01000 	mov	r1, r0
     668:	e3a00004 	mov	r0, #4
     66c:	ef000000 	svc	0x00000000
     670:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     674:	e12fff1e 	bx	lr

00000678 <read>:
     678:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     67c:	e1a04003 	mov	r4, r3
     680:	e1a03002 	mov	r3, r2
     684:	e1a02001 	mov	r2, r1
     688:	e1a01000 	mov	r1, r0
     68c:	e3a00005 	mov	r0, #5
     690:	ef000000 	svc	0x00000000
     694:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     698:	e12fff1e 	bx	lr

0000069c <write>:
     69c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6a0:	e1a04003 	mov	r4, r3
     6a4:	e1a03002 	mov	r3, r2
     6a8:	e1a02001 	mov	r2, r1
     6ac:	e1a01000 	mov	r1, r0
     6b0:	e3a00010 	mov	r0, #16
     6b4:	ef000000 	svc	0x00000000
     6b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6bc:	e12fff1e 	bx	lr

000006c0 <close>:
     6c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6c4:	e1a04003 	mov	r4, r3
     6c8:	e1a03002 	mov	r3, r2
     6cc:	e1a02001 	mov	r2, r1
     6d0:	e1a01000 	mov	r1, r0
     6d4:	e3a00015 	mov	r0, #21
     6d8:	ef000000 	svc	0x00000000
     6dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6e0:	e12fff1e 	bx	lr

000006e4 <kill>:
     6e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6e8:	e1a04003 	mov	r4, r3
     6ec:	e1a03002 	mov	r3, r2
     6f0:	e1a02001 	mov	r2, r1
     6f4:	e1a01000 	mov	r1, r0
     6f8:	e3a00006 	mov	r0, #6
     6fc:	ef000000 	svc	0x00000000
     700:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     704:	e12fff1e 	bx	lr

00000708 <exec>:
     708:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     70c:	e1a04003 	mov	r4, r3
     710:	e1a03002 	mov	r3, r2
     714:	e1a02001 	mov	r2, r1
     718:	e1a01000 	mov	r1, r0
     71c:	e3a00007 	mov	r0, #7
     720:	ef000000 	svc	0x00000000
     724:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     728:	e12fff1e 	bx	lr

0000072c <open>:
     72c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     730:	e1a04003 	mov	r4, r3
     734:	e1a03002 	mov	r3, r2
     738:	e1a02001 	mov	r2, r1
     73c:	e1a01000 	mov	r1, r0
     740:	e3a0000f 	mov	r0, #15
     744:	ef000000 	svc	0x00000000
     748:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     74c:	e12fff1e 	bx	lr

00000750 <mknod>:
     750:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     754:	e1a04003 	mov	r4, r3
     758:	e1a03002 	mov	r3, r2
     75c:	e1a02001 	mov	r2, r1
     760:	e1a01000 	mov	r1, r0
     764:	e3a00011 	mov	r0, #17
     768:	ef000000 	svc	0x00000000
     76c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     770:	e12fff1e 	bx	lr

00000774 <unlink>:
     774:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     778:	e1a04003 	mov	r4, r3
     77c:	e1a03002 	mov	r3, r2
     780:	e1a02001 	mov	r2, r1
     784:	e1a01000 	mov	r1, r0
     788:	e3a00012 	mov	r0, #18
     78c:	ef000000 	svc	0x00000000
     790:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     794:	e12fff1e 	bx	lr

00000798 <fstat>:
     798:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     79c:	e1a04003 	mov	r4, r3
     7a0:	e1a03002 	mov	r3, r2
     7a4:	e1a02001 	mov	r2, r1
     7a8:	e1a01000 	mov	r1, r0
     7ac:	e3a00008 	mov	r0, #8
     7b0:	ef000000 	svc	0x00000000
     7b4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7b8:	e12fff1e 	bx	lr

000007bc <link>:
     7bc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7c0:	e1a04003 	mov	r4, r3
     7c4:	e1a03002 	mov	r3, r2
     7c8:	e1a02001 	mov	r2, r1
     7cc:	e1a01000 	mov	r1, r0
     7d0:	e3a00013 	mov	r0, #19
     7d4:	ef000000 	svc	0x00000000
     7d8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7dc:	e12fff1e 	bx	lr

000007e0 <mkdir>:
     7e0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7e4:	e1a04003 	mov	r4, r3
     7e8:	e1a03002 	mov	r3, r2
     7ec:	e1a02001 	mov	r2, r1
     7f0:	e1a01000 	mov	r1, r0
     7f4:	e3a00014 	mov	r0, #20
     7f8:	ef000000 	svc	0x00000000
     7fc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     800:	e12fff1e 	bx	lr

00000804 <chdir>:
     804:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     808:	e1a04003 	mov	r4, r3
     80c:	e1a03002 	mov	r3, r2
     810:	e1a02001 	mov	r2, r1
     814:	e1a01000 	mov	r1, r0
     818:	e3a00009 	mov	r0, #9
     81c:	ef000000 	svc	0x00000000
     820:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     824:	e12fff1e 	bx	lr

00000828 <dup>:
     828:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     82c:	e1a04003 	mov	r4, r3
     830:	e1a03002 	mov	r3, r2
     834:	e1a02001 	mov	r2, r1
     838:	e1a01000 	mov	r1, r0
     83c:	e3a0000a 	mov	r0, #10
     840:	ef000000 	svc	0x00000000
     844:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     848:	e12fff1e 	bx	lr

0000084c <getpid>:
     84c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     850:	e1a04003 	mov	r4, r3
     854:	e1a03002 	mov	r3, r2
     858:	e1a02001 	mov	r2, r1
     85c:	e1a01000 	mov	r1, r0
     860:	e3a0000b 	mov	r0, #11
     864:	ef000000 	svc	0x00000000
     868:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     86c:	e12fff1e 	bx	lr

00000870 <sbrk>:
     870:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     874:	e1a04003 	mov	r4, r3
     878:	e1a03002 	mov	r3, r2
     87c:	e1a02001 	mov	r2, r1
     880:	e1a01000 	mov	r1, r0
     884:	e3a0000c 	mov	r0, #12
     888:	ef000000 	svc	0x00000000
     88c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     890:	e12fff1e 	bx	lr

00000894 <sleep>:
     894:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     898:	e1a04003 	mov	r4, r3
     89c:	e1a03002 	mov	r3, r2
     8a0:	e1a02001 	mov	r2, r1
     8a4:	e1a01000 	mov	r1, r0
     8a8:	e3a0000d 	mov	r0, #13
     8ac:	ef000000 	svc	0x00000000
     8b0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8b4:	e12fff1e 	bx	lr

000008b8 <uptime>:
     8b8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8bc:	e1a04003 	mov	r4, r3
     8c0:	e1a03002 	mov	r3, r2
     8c4:	e1a02001 	mov	r2, r1
     8c8:	e1a01000 	mov	r1, r0
     8cc:	e3a0000e 	mov	r0, #14
     8d0:	ef000000 	svc	0x00000000
     8d4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8d8:	e12fff1e 	bx	lr

000008dc <getprocs>:
     8dc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8e0:	e1a04003 	mov	r4, r3
     8e4:	e1a03002 	mov	r3, r2
     8e8:	e1a02001 	mov	r2, r1
     8ec:	e1a01000 	mov	r1, r0
     8f0:	e3a00016 	mov	r0, #22
     8f4:	ef000000 	svc	0x00000000
     8f8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8fc:	e12fff1e 	bx	lr

00000900 <settickets>:
     900:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     904:	e1a04003 	mov	r4, r3
     908:	e1a03002 	mov	r3, r2
     90c:	e1a02001 	mov	r2, r1
     910:	e1a01000 	mov	r1, r0
     914:	e3a00017 	mov	r0, #23
     918:	ef000000 	svc	0x00000000
     91c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     920:	e12fff1e 	bx	lr

00000924 <srand>:
     924:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     928:	e1a04003 	mov	r4, r3
     92c:	e1a03002 	mov	r3, r2
     930:	e1a02001 	mov	r2, r1
     934:	e1a01000 	mov	r1, r0
     938:	e3a00018 	mov	r0, #24
     93c:	ef000000 	svc	0x00000000
     940:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     944:	e12fff1e 	bx	lr

00000948 <getpinfo>:
     948:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     94c:	e1a04003 	mov	r4, r3
     950:	e1a03002 	mov	r3, r2
     954:	e1a02001 	mov	r2, r1
     958:	e1a01000 	mov	r1, r0
     95c:	e3a00019 	mov	r0, #25
     960:	ef000000 	svc	0x00000000
     964:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     968:	e12fff1e 	bx	lr

0000096c <putc>:
     96c:	e92d4800 	push	{fp, lr}
     970:	e28db004 	add	fp, sp, #4
     974:	e24dd008 	sub	sp, sp, #8
     978:	e50b0008 	str	r0, [fp, #-8]
     97c:	e1a03001 	mov	r3, r1
     980:	e54b3009 	strb	r3, [fp, #-9]
     984:	e24b3009 	sub	r3, fp, #9
     988:	e3a02001 	mov	r2, #1
     98c:	e1a01003 	mov	r1, r3
     990:	e51b0008 	ldr	r0, [fp, #-8]
     994:	ebffff40 	bl	69c <write>
     998:	e1a00000 	nop			@ (mov r0, r0)
     99c:	e24bd004 	sub	sp, fp, #4
     9a0:	e8bd8800 	pop	{fp, pc}

000009a4 <printint>:
     9a4:	e92d4800 	push	{fp, lr}
     9a8:	e28db004 	add	fp, sp, #4
     9ac:	e24dd030 	sub	sp, sp, #48	@ 0x30
     9b0:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     9b4:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     9b8:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     9bc:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     9c0:	e3a03000 	mov	r3, #0
     9c4:	e50b300c 	str	r3, [fp, #-12]
     9c8:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     9cc:	e3530000 	cmp	r3, #0
     9d0:	0a000008 	beq	9f8 <printint+0x54>
     9d4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9d8:	e3530000 	cmp	r3, #0
     9dc:	aa000005 	bge	9f8 <printint+0x54>
     9e0:	e3a03001 	mov	r3, #1
     9e4:	e50b300c 	str	r3, [fp, #-12]
     9e8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9ec:	e2633000 	rsb	r3, r3, #0
     9f0:	e50b3010 	str	r3, [fp, #-16]
     9f4:	ea000001 	b	a00 <printint+0x5c>
     9f8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9fc:	e50b3010 	str	r3, [fp, #-16]
     a00:	e3a03000 	mov	r3, #0
     a04:	e50b3008 	str	r3, [fp, #-8]
     a08:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     a0c:	e51b3010 	ldr	r3, [fp, #-16]
     a10:	e1a01002 	mov	r1, r2
     a14:	e1a00003 	mov	r0, r3
     a18:	eb0001d5 	bl	1174 <__aeabi_uidivmod>
     a1c:	e1a03001 	mov	r3, r1
     a20:	e1a01003 	mov	r1, r3
     a24:	e51b3008 	ldr	r3, [fp, #-8]
     a28:	e2832001 	add	r2, r3, #1
     a2c:	e50b2008 	str	r2, [fp, #-8]
     a30:	e59f20a0 	ldr	r2, [pc, #160]	@ ad8 <printint+0x134>
     a34:	e7d22001 	ldrb	r2, [r2, r1]
     a38:	e2433004 	sub	r3, r3, #4
     a3c:	e083300b 	add	r3, r3, fp
     a40:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a44:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     a48:	e1a01003 	mov	r1, r3
     a4c:	e51b0010 	ldr	r0, [fp, #-16]
     a50:	eb00018a 	bl	1080 <__udivsi3>
     a54:	e1a03000 	mov	r3, r0
     a58:	e50b3010 	str	r3, [fp, #-16]
     a5c:	e51b3010 	ldr	r3, [fp, #-16]
     a60:	e3530000 	cmp	r3, #0
     a64:	1affffe7 	bne	a08 <printint+0x64>
     a68:	e51b300c 	ldr	r3, [fp, #-12]
     a6c:	e3530000 	cmp	r3, #0
     a70:	0a00000e 	beq	ab0 <printint+0x10c>
     a74:	e51b3008 	ldr	r3, [fp, #-8]
     a78:	e2832001 	add	r2, r3, #1
     a7c:	e50b2008 	str	r2, [fp, #-8]
     a80:	e2433004 	sub	r3, r3, #4
     a84:	e083300b 	add	r3, r3, fp
     a88:	e3a0202d 	mov	r2, #45	@ 0x2d
     a8c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a90:	ea000006 	b	ab0 <printint+0x10c>
     a94:	e24b2020 	sub	r2, fp, #32
     a98:	e51b3008 	ldr	r3, [fp, #-8]
     a9c:	e0823003 	add	r3, r2, r3
     aa0:	e5d33000 	ldrb	r3, [r3]
     aa4:	e1a01003 	mov	r1, r3
     aa8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     aac:	ebffffae 	bl	96c <putc>
     ab0:	e51b3008 	ldr	r3, [fp, #-8]
     ab4:	e2433001 	sub	r3, r3, #1
     ab8:	e50b3008 	str	r3, [fp, #-8]
     abc:	e51b3008 	ldr	r3, [fp, #-8]
     ac0:	e3530000 	cmp	r3, #0
     ac4:	aafffff2 	bge	a94 <printint+0xf0>
     ac8:	e1a00000 	nop			@ (mov r0, r0)
     acc:	e1a00000 	nop			@ (mov r0, r0)
     ad0:	e24bd004 	sub	sp, fp, #4
     ad4:	e8bd8800 	pop	{fp, pc}
     ad8:	00001200 	.word	0x00001200

00000adc <printf>:
     adc:	e92d000e 	push	{r1, r2, r3}
     ae0:	e92d4800 	push	{fp, lr}
     ae4:	e28db004 	add	fp, sp, #4
     ae8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     aec:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     af0:	e3a03000 	mov	r3, #0
     af4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     af8:	e28b3008 	add	r3, fp, #8
     afc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b00:	e3a03000 	mov	r3, #0
     b04:	e50b3010 	str	r3, [fp, #-16]
     b08:	ea000074 	b	ce0 <printf+0x204>
     b0c:	e59b2004 	ldr	r2, [fp, #4]
     b10:	e51b3010 	ldr	r3, [fp, #-16]
     b14:	e0823003 	add	r3, r2, r3
     b18:	e5d33000 	ldrb	r3, [r3]
     b1c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     b20:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b24:	e3530000 	cmp	r3, #0
     b28:	1a00000b 	bne	b5c <printf+0x80>
     b2c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b30:	e3530025 	cmp	r3, #37	@ 0x25
     b34:	1a000002 	bne	b44 <printf+0x68>
     b38:	e3a03025 	mov	r3, #37	@ 0x25
     b3c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b40:	ea000063 	b	cd4 <printf+0x1f8>
     b44:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b48:	e6ef3073 	uxtb	r3, r3
     b4c:	e1a01003 	mov	r1, r3
     b50:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b54:	ebffff84 	bl	96c <putc>
     b58:	ea00005d 	b	cd4 <printf+0x1f8>
     b5c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b60:	e3530025 	cmp	r3, #37	@ 0x25
     b64:	1a00005a 	bne	cd4 <printf+0x1f8>
     b68:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b6c:	e3530064 	cmp	r3, #100	@ 0x64
     b70:	1a00000a 	bne	ba0 <printf+0xc4>
     b74:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b78:	e5933000 	ldr	r3, [r3]
     b7c:	e1a01003 	mov	r1, r3
     b80:	e3a03001 	mov	r3, #1
     b84:	e3a0200a 	mov	r2, #10
     b88:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b8c:	ebffff84 	bl	9a4 <printint>
     b90:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b94:	e2833004 	add	r3, r3, #4
     b98:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b9c:	ea00004a 	b	ccc <printf+0x1f0>
     ba0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ba4:	e3530078 	cmp	r3, #120	@ 0x78
     ba8:	0a000002 	beq	bb8 <printf+0xdc>
     bac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bb0:	e3530070 	cmp	r3, #112	@ 0x70
     bb4:	1a00000a 	bne	be4 <printf+0x108>
     bb8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bbc:	e5933000 	ldr	r3, [r3]
     bc0:	e1a01003 	mov	r1, r3
     bc4:	e3a03000 	mov	r3, #0
     bc8:	e3a02010 	mov	r2, #16
     bcc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bd0:	ebffff73 	bl	9a4 <printint>
     bd4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bd8:	e2833004 	add	r3, r3, #4
     bdc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     be0:	ea000039 	b	ccc <printf+0x1f0>
     be4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     be8:	e3530073 	cmp	r3, #115	@ 0x73
     bec:	1a000018 	bne	c54 <printf+0x178>
     bf0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bf4:	e5933000 	ldr	r3, [r3]
     bf8:	e50b300c 	str	r3, [fp, #-12]
     bfc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c00:	e2833004 	add	r3, r3, #4
     c04:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c08:	e51b300c 	ldr	r3, [fp, #-12]
     c0c:	e3530000 	cmp	r3, #0
     c10:	1a00000a 	bne	c40 <printf+0x164>
     c14:	e59f30f4 	ldr	r3, [pc, #244]	@ d10 <printf+0x234>
     c18:	e50b300c 	str	r3, [fp, #-12]
     c1c:	ea000007 	b	c40 <printf+0x164>
     c20:	e51b300c 	ldr	r3, [fp, #-12]
     c24:	e5d33000 	ldrb	r3, [r3]
     c28:	e1a01003 	mov	r1, r3
     c2c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c30:	ebffff4d 	bl	96c <putc>
     c34:	e51b300c 	ldr	r3, [fp, #-12]
     c38:	e2833001 	add	r3, r3, #1
     c3c:	e50b300c 	str	r3, [fp, #-12]
     c40:	e51b300c 	ldr	r3, [fp, #-12]
     c44:	e5d33000 	ldrb	r3, [r3]
     c48:	e3530000 	cmp	r3, #0
     c4c:	1afffff3 	bne	c20 <printf+0x144>
     c50:	ea00001d 	b	ccc <printf+0x1f0>
     c54:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c58:	e3530063 	cmp	r3, #99	@ 0x63
     c5c:	1a000009 	bne	c88 <printf+0x1ac>
     c60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c64:	e5933000 	ldr	r3, [r3]
     c68:	e6ef3073 	uxtb	r3, r3
     c6c:	e1a01003 	mov	r1, r3
     c70:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c74:	ebffff3c 	bl	96c <putc>
     c78:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c7c:	e2833004 	add	r3, r3, #4
     c80:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c84:	ea000010 	b	ccc <printf+0x1f0>
     c88:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c8c:	e3530025 	cmp	r3, #37	@ 0x25
     c90:	1a000005 	bne	cac <printf+0x1d0>
     c94:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c98:	e6ef3073 	uxtb	r3, r3
     c9c:	e1a01003 	mov	r1, r3
     ca0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ca4:	ebffff30 	bl	96c <putc>
     ca8:	ea000007 	b	ccc <printf+0x1f0>
     cac:	e3a01025 	mov	r1, #37	@ 0x25
     cb0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cb4:	ebffff2c 	bl	96c <putc>
     cb8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cbc:	e6ef3073 	uxtb	r3, r3
     cc0:	e1a01003 	mov	r1, r3
     cc4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cc8:	ebffff27 	bl	96c <putc>
     ccc:	e3a03000 	mov	r3, #0
     cd0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     cd4:	e51b3010 	ldr	r3, [fp, #-16]
     cd8:	e2833001 	add	r3, r3, #1
     cdc:	e50b3010 	str	r3, [fp, #-16]
     ce0:	e59b2004 	ldr	r2, [fp, #4]
     ce4:	e51b3010 	ldr	r3, [fp, #-16]
     ce8:	e0823003 	add	r3, r2, r3
     cec:	e5d33000 	ldrb	r3, [r3]
     cf0:	e3530000 	cmp	r3, #0
     cf4:	1affff84 	bne	b0c <printf+0x30>
     cf8:	e1a00000 	nop			@ (mov r0, r0)
     cfc:	e1a00000 	nop			@ (mov r0, r0)
     d00:	e24bd004 	sub	sp, fp, #4
     d04:	e8bd4800 	pop	{fp, lr}
     d08:	e28dd00c 	add	sp, sp, #12
     d0c:	e12fff1e 	bx	lr
     d10:	000011f0 	.word	0x000011f0

00000d14 <free>:
     d14:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     d18:	e28db000 	add	fp, sp, #0
     d1c:	e24dd014 	sub	sp, sp, #20
     d20:	e50b0010 	str	r0, [fp, #-16]
     d24:	e51b3010 	ldr	r3, [fp, #-16]
     d28:	e2433008 	sub	r3, r3, #8
     d2c:	e50b300c 	str	r3, [fp, #-12]
     d30:	e59f3154 	ldr	r3, [pc, #340]	@ e8c <free+0x178>
     d34:	e5933000 	ldr	r3, [r3]
     d38:	e50b3008 	str	r3, [fp, #-8]
     d3c:	ea000010 	b	d84 <free+0x70>
     d40:	e51b3008 	ldr	r3, [fp, #-8]
     d44:	e5933000 	ldr	r3, [r3]
     d48:	e51b2008 	ldr	r2, [fp, #-8]
     d4c:	e1520003 	cmp	r2, r3
     d50:	3a000008 	bcc	d78 <free+0x64>
     d54:	e51b200c 	ldr	r2, [fp, #-12]
     d58:	e51b3008 	ldr	r3, [fp, #-8]
     d5c:	e1520003 	cmp	r2, r3
     d60:	8a000010 	bhi	da8 <free+0x94>
     d64:	e51b3008 	ldr	r3, [fp, #-8]
     d68:	e5933000 	ldr	r3, [r3]
     d6c:	e51b200c 	ldr	r2, [fp, #-12]
     d70:	e1520003 	cmp	r2, r3
     d74:	3a00000b 	bcc	da8 <free+0x94>
     d78:	e51b3008 	ldr	r3, [fp, #-8]
     d7c:	e5933000 	ldr	r3, [r3]
     d80:	e50b3008 	str	r3, [fp, #-8]
     d84:	e51b200c 	ldr	r2, [fp, #-12]
     d88:	e51b3008 	ldr	r3, [fp, #-8]
     d8c:	e1520003 	cmp	r2, r3
     d90:	9affffea 	bls	d40 <free+0x2c>
     d94:	e51b3008 	ldr	r3, [fp, #-8]
     d98:	e5933000 	ldr	r3, [r3]
     d9c:	e51b200c 	ldr	r2, [fp, #-12]
     da0:	e1520003 	cmp	r2, r3
     da4:	2affffe5 	bcs	d40 <free+0x2c>
     da8:	e51b300c 	ldr	r3, [fp, #-12]
     dac:	e5933004 	ldr	r3, [r3, #4]
     db0:	e1a03183 	lsl	r3, r3, #3
     db4:	e51b200c 	ldr	r2, [fp, #-12]
     db8:	e0822003 	add	r2, r2, r3
     dbc:	e51b3008 	ldr	r3, [fp, #-8]
     dc0:	e5933000 	ldr	r3, [r3]
     dc4:	e1520003 	cmp	r2, r3
     dc8:	1a00000d 	bne	e04 <free+0xf0>
     dcc:	e51b300c 	ldr	r3, [fp, #-12]
     dd0:	e5932004 	ldr	r2, [r3, #4]
     dd4:	e51b3008 	ldr	r3, [fp, #-8]
     dd8:	e5933000 	ldr	r3, [r3]
     ddc:	e5933004 	ldr	r3, [r3, #4]
     de0:	e0822003 	add	r2, r2, r3
     de4:	e51b300c 	ldr	r3, [fp, #-12]
     de8:	e5832004 	str	r2, [r3, #4]
     dec:	e51b3008 	ldr	r3, [fp, #-8]
     df0:	e5933000 	ldr	r3, [r3]
     df4:	e5932000 	ldr	r2, [r3]
     df8:	e51b300c 	ldr	r3, [fp, #-12]
     dfc:	e5832000 	str	r2, [r3]
     e00:	ea000003 	b	e14 <free+0x100>
     e04:	e51b3008 	ldr	r3, [fp, #-8]
     e08:	e5932000 	ldr	r2, [r3]
     e0c:	e51b300c 	ldr	r3, [fp, #-12]
     e10:	e5832000 	str	r2, [r3]
     e14:	e51b3008 	ldr	r3, [fp, #-8]
     e18:	e5933004 	ldr	r3, [r3, #4]
     e1c:	e1a03183 	lsl	r3, r3, #3
     e20:	e51b2008 	ldr	r2, [fp, #-8]
     e24:	e0823003 	add	r3, r2, r3
     e28:	e51b200c 	ldr	r2, [fp, #-12]
     e2c:	e1520003 	cmp	r2, r3
     e30:	1a00000b 	bne	e64 <free+0x150>
     e34:	e51b3008 	ldr	r3, [fp, #-8]
     e38:	e5932004 	ldr	r2, [r3, #4]
     e3c:	e51b300c 	ldr	r3, [fp, #-12]
     e40:	e5933004 	ldr	r3, [r3, #4]
     e44:	e0822003 	add	r2, r2, r3
     e48:	e51b3008 	ldr	r3, [fp, #-8]
     e4c:	e5832004 	str	r2, [r3, #4]
     e50:	e51b300c 	ldr	r3, [fp, #-12]
     e54:	e5932000 	ldr	r2, [r3]
     e58:	e51b3008 	ldr	r3, [fp, #-8]
     e5c:	e5832000 	str	r2, [r3]
     e60:	ea000002 	b	e70 <free+0x15c>
     e64:	e51b3008 	ldr	r3, [fp, #-8]
     e68:	e51b200c 	ldr	r2, [fp, #-12]
     e6c:	e5832000 	str	r2, [r3]
     e70:	e59f2014 	ldr	r2, [pc, #20]	@ e8c <free+0x178>
     e74:	e51b3008 	ldr	r3, [fp, #-8]
     e78:	e5823000 	str	r3, [r2]
     e7c:	e1a00000 	nop			@ (mov r0, r0)
     e80:	e28bd000 	add	sp, fp, #0
     e84:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     e88:	e12fff1e 	bx	lr
     e8c:	0000121c 	.word	0x0000121c

00000e90 <morecore>:
     e90:	e92d4800 	push	{fp, lr}
     e94:	e28db004 	add	fp, sp, #4
     e98:	e24dd010 	sub	sp, sp, #16
     e9c:	e50b0010 	str	r0, [fp, #-16]
     ea0:	e51b3010 	ldr	r3, [fp, #-16]
     ea4:	e3530a01 	cmp	r3, #4096	@ 0x1000
     ea8:	2a000001 	bcs	eb4 <morecore+0x24>
     eac:	e3a03a01 	mov	r3, #4096	@ 0x1000
     eb0:	e50b3010 	str	r3, [fp, #-16]
     eb4:	e51b3010 	ldr	r3, [fp, #-16]
     eb8:	e1a03183 	lsl	r3, r3, #3
     ebc:	e1a00003 	mov	r0, r3
     ec0:	ebfffe6a 	bl	870 <sbrk>
     ec4:	e50b0008 	str	r0, [fp, #-8]
     ec8:	e51b3008 	ldr	r3, [fp, #-8]
     ecc:	e3730001 	cmn	r3, #1
     ed0:	1a000001 	bne	edc <morecore+0x4c>
     ed4:	e3a03000 	mov	r3, #0
     ed8:	ea00000a 	b	f08 <morecore+0x78>
     edc:	e51b3008 	ldr	r3, [fp, #-8]
     ee0:	e50b300c 	str	r3, [fp, #-12]
     ee4:	e51b300c 	ldr	r3, [fp, #-12]
     ee8:	e51b2010 	ldr	r2, [fp, #-16]
     eec:	e5832004 	str	r2, [r3, #4]
     ef0:	e51b300c 	ldr	r3, [fp, #-12]
     ef4:	e2833008 	add	r3, r3, #8
     ef8:	e1a00003 	mov	r0, r3
     efc:	ebffff84 	bl	d14 <free>
     f00:	e59f300c 	ldr	r3, [pc, #12]	@ f14 <morecore+0x84>
     f04:	e5933000 	ldr	r3, [r3]
     f08:	e1a00003 	mov	r0, r3
     f0c:	e24bd004 	sub	sp, fp, #4
     f10:	e8bd8800 	pop	{fp, pc}
     f14:	0000121c 	.word	0x0000121c

00000f18 <malloc>:
     f18:	e92d4800 	push	{fp, lr}
     f1c:	e28db004 	add	fp, sp, #4
     f20:	e24dd018 	sub	sp, sp, #24
     f24:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     f28:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f2c:	e2833007 	add	r3, r3, #7
     f30:	e1a031a3 	lsr	r3, r3, #3
     f34:	e2833001 	add	r3, r3, #1
     f38:	e50b3010 	str	r3, [fp, #-16]
     f3c:	e59f3134 	ldr	r3, [pc, #308]	@ 1078 <malloc+0x160>
     f40:	e5933000 	ldr	r3, [r3]
     f44:	e50b300c 	str	r3, [fp, #-12]
     f48:	e51b300c 	ldr	r3, [fp, #-12]
     f4c:	e3530000 	cmp	r3, #0
     f50:	1a00000b 	bne	f84 <malloc+0x6c>
     f54:	e59f3120 	ldr	r3, [pc, #288]	@ 107c <malloc+0x164>
     f58:	e50b300c 	str	r3, [fp, #-12]
     f5c:	e59f2114 	ldr	r2, [pc, #276]	@ 1078 <malloc+0x160>
     f60:	e51b300c 	ldr	r3, [fp, #-12]
     f64:	e5823000 	str	r3, [r2]
     f68:	e59f3108 	ldr	r3, [pc, #264]	@ 1078 <malloc+0x160>
     f6c:	e5933000 	ldr	r3, [r3]
     f70:	e59f2104 	ldr	r2, [pc, #260]	@ 107c <malloc+0x164>
     f74:	e5823000 	str	r3, [r2]
     f78:	e59f30fc 	ldr	r3, [pc, #252]	@ 107c <malloc+0x164>
     f7c:	e3a02000 	mov	r2, #0
     f80:	e5832004 	str	r2, [r3, #4]
     f84:	e51b300c 	ldr	r3, [fp, #-12]
     f88:	e5933000 	ldr	r3, [r3]
     f8c:	e50b3008 	str	r3, [fp, #-8]
     f90:	e51b3008 	ldr	r3, [fp, #-8]
     f94:	e5933004 	ldr	r3, [r3, #4]
     f98:	e51b2010 	ldr	r2, [fp, #-16]
     f9c:	e1520003 	cmp	r2, r3
     fa0:	8a00001e 	bhi	1020 <malloc+0x108>
     fa4:	e51b3008 	ldr	r3, [fp, #-8]
     fa8:	e5933004 	ldr	r3, [r3, #4]
     fac:	e51b2010 	ldr	r2, [fp, #-16]
     fb0:	e1520003 	cmp	r2, r3
     fb4:	1a000004 	bne	fcc <malloc+0xb4>
     fb8:	e51b3008 	ldr	r3, [fp, #-8]
     fbc:	e5932000 	ldr	r2, [r3]
     fc0:	e51b300c 	ldr	r3, [fp, #-12]
     fc4:	e5832000 	str	r2, [r3]
     fc8:	ea00000e 	b	1008 <malloc+0xf0>
     fcc:	e51b3008 	ldr	r3, [fp, #-8]
     fd0:	e5932004 	ldr	r2, [r3, #4]
     fd4:	e51b3010 	ldr	r3, [fp, #-16]
     fd8:	e0422003 	sub	r2, r2, r3
     fdc:	e51b3008 	ldr	r3, [fp, #-8]
     fe0:	e5832004 	str	r2, [r3, #4]
     fe4:	e51b3008 	ldr	r3, [fp, #-8]
     fe8:	e5933004 	ldr	r3, [r3, #4]
     fec:	e1a03183 	lsl	r3, r3, #3
     ff0:	e51b2008 	ldr	r2, [fp, #-8]
     ff4:	e0823003 	add	r3, r2, r3
     ff8:	e50b3008 	str	r3, [fp, #-8]
     ffc:	e51b3008 	ldr	r3, [fp, #-8]
    1000:	e51b2010 	ldr	r2, [fp, #-16]
    1004:	e5832004 	str	r2, [r3, #4]
    1008:	e59f2068 	ldr	r2, [pc, #104]	@ 1078 <malloc+0x160>
    100c:	e51b300c 	ldr	r3, [fp, #-12]
    1010:	e5823000 	str	r3, [r2]
    1014:	e51b3008 	ldr	r3, [fp, #-8]
    1018:	e2833008 	add	r3, r3, #8
    101c:	ea000012 	b	106c <malloc+0x154>
    1020:	e59f3050 	ldr	r3, [pc, #80]	@ 1078 <malloc+0x160>
    1024:	e5933000 	ldr	r3, [r3]
    1028:	e51b2008 	ldr	r2, [fp, #-8]
    102c:	e1520003 	cmp	r2, r3
    1030:	1a000007 	bne	1054 <malloc+0x13c>
    1034:	e51b0010 	ldr	r0, [fp, #-16]
    1038:	ebffff94 	bl	e90 <morecore>
    103c:	e50b0008 	str	r0, [fp, #-8]
    1040:	e51b3008 	ldr	r3, [fp, #-8]
    1044:	e3530000 	cmp	r3, #0
    1048:	1a000001 	bne	1054 <malloc+0x13c>
    104c:	e3a03000 	mov	r3, #0
    1050:	ea000005 	b	106c <malloc+0x154>
    1054:	e51b3008 	ldr	r3, [fp, #-8]
    1058:	e50b300c 	str	r3, [fp, #-12]
    105c:	e51b3008 	ldr	r3, [fp, #-8]
    1060:	e5933000 	ldr	r3, [r3]
    1064:	e50b3008 	str	r3, [fp, #-8]
    1068:	eaffffc8 	b	f90 <malloc+0x78>
    106c:	e1a00003 	mov	r0, r3
    1070:	e24bd004 	sub	sp, fp, #4
    1074:	e8bd8800 	pop	{fp, pc}
    1078:	0000121c 	.word	0x0000121c
    107c:	00001214 	.word	0x00001214

00001080 <__udivsi3>:
    1080:	e2512001 	subs	r2, r1, #1
    1084:	012fff1e 	bxeq	lr
    1088:	3a000036 	bcc	1168 <__udivsi3+0xe8>
    108c:	e1500001 	cmp	r0, r1
    1090:	9a000022 	bls	1120 <__udivsi3+0xa0>
    1094:	e1110002 	tst	r1, r2
    1098:	0a000023 	beq	112c <__udivsi3+0xac>
    109c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    10a0:	01a01181 	lsleq	r1, r1, #3
    10a4:	03a03008 	moveq	r3, #8
    10a8:	13a03001 	movne	r3, #1
    10ac:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    10b0:	31510000 	cmpcc	r1, r0
    10b4:	31a01201 	lslcc	r1, r1, #4
    10b8:	31a03203 	lslcc	r3, r3, #4
    10bc:	3afffffa 	bcc	10ac <__udivsi3+0x2c>
    10c0:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    10c4:	31510000 	cmpcc	r1, r0
    10c8:	31a01081 	lslcc	r1, r1, #1
    10cc:	31a03083 	lslcc	r3, r3, #1
    10d0:	3afffffa 	bcc	10c0 <__udivsi3+0x40>
    10d4:	e3a02000 	mov	r2, #0
    10d8:	e1500001 	cmp	r0, r1
    10dc:	20400001 	subcs	r0, r0, r1
    10e0:	21822003 	orrcs	r2, r2, r3
    10e4:	e15000a1 	cmp	r0, r1, lsr #1
    10e8:	204000a1 	subcs	r0, r0, r1, lsr #1
    10ec:	218220a3 	orrcs	r2, r2, r3, lsr #1
    10f0:	e1500121 	cmp	r0, r1, lsr #2
    10f4:	20400121 	subcs	r0, r0, r1, lsr #2
    10f8:	21822123 	orrcs	r2, r2, r3, lsr #2
    10fc:	e15001a1 	cmp	r0, r1, lsr #3
    1100:	204001a1 	subcs	r0, r0, r1, lsr #3
    1104:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1108:	e3500000 	cmp	r0, #0
    110c:	11b03223 	lsrsne	r3, r3, #4
    1110:	11a01221 	lsrne	r1, r1, #4
    1114:	1affffef 	bne	10d8 <__udivsi3+0x58>
    1118:	e1a00002 	mov	r0, r2
    111c:	e12fff1e 	bx	lr
    1120:	03a00001 	moveq	r0, #1
    1124:	13a00000 	movne	r0, #0
    1128:	e12fff1e 	bx	lr
    112c:	e3510801 	cmp	r1, #65536	@ 0x10000
    1130:	21a01821 	lsrcs	r1, r1, #16
    1134:	23a02010 	movcs	r2, #16
    1138:	33a02000 	movcc	r2, #0
    113c:	e3510c01 	cmp	r1, #256	@ 0x100
    1140:	21a01421 	lsrcs	r1, r1, #8
    1144:	22822008 	addcs	r2, r2, #8
    1148:	e3510010 	cmp	r1, #16
    114c:	21a01221 	lsrcs	r1, r1, #4
    1150:	22822004 	addcs	r2, r2, #4
    1154:	e3510004 	cmp	r1, #4
    1158:	82822003 	addhi	r2, r2, #3
    115c:	908220a1 	addls	r2, r2, r1, lsr #1
    1160:	e1a00230 	lsr	r0, r0, r2
    1164:	e12fff1e 	bx	lr
    1168:	e3500000 	cmp	r0, #0
    116c:	13e00000 	mvnne	r0, #0
    1170:	ea000007 	b	1194 <__aeabi_idiv0>

00001174 <__aeabi_uidivmod>:
    1174:	e3510000 	cmp	r1, #0
    1178:	0afffffa 	beq	1168 <__udivsi3+0xe8>
    117c:	e92d4003 	push	{r0, r1, lr}
    1180:	ebffffbe 	bl	1080 <__udivsi3>
    1184:	e8bd4006 	pop	{r1, r2, lr}
    1188:	e0030092 	mul	r3, r2, r0
    118c:	e0411003 	sub	r1, r1, r3
    1190:	e12fff1e 	bx	lr

00001194 <__aeabi_idiv0>:
    1194:	e12fff1e 	bx	lr
