
_stressfs:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dde22 	sub	sp, sp, #544	@ 0x220
       c:	e50b0220 	str	r0, [fp, #-544]	@ 0xfffffde0
      10:	e50b1224 	str	r1, [fp, #-548]	@ 0xfffffddc
      14:	e59f214c 	ldr	r2, [pc, #332]	@ 168 <main+0x168>
      18:	e24b3018 	sub	r3, fp, #24
      1c:	e8920007 	ldm	r2, {r0, r1, r2}
      20:	e8a30003 	stmia	r3!, {r0, r1}
      24:	e1c320b0 	strh	r2, [r3]
      28:	e59f113c 	ldr	r1, [pc, #316]	@ 16c <main+0x16c>
      2c:	e3a00001 	mov	r0, #1
      30:	eb0003d2 	bl	f80 <printf>
      34:	e24b3f86 	sub	r3, fp, #536	@ 0x218
      38:	e3a02c02 	mov	r2, #512	@ 0x200
      3c:	e3a01061 	mov	r1, #97	@ 0x61
      40:	e1a00003 	mov	r0, r3
      44:	eb000099 	bl	2b0 <memset>
      48:	e3a03000 	mov	r3, #0
      4c:	e50b3008 	str	r3, [fp, #-8]
      50:	ea000006 	b	70 <main+0x70>
      54:	eb000229 	bl	900 <fork>
      58:	e1a03000 	mov	r3, r0
      5c:	e3530000 	cmp	r3, #0
      60:	ca000006 	bgt	80 <main+0x80>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e2833001 	add	r3, r3, #1
      6c:	e50b3008 	str	r3, [fp, #-8]
      70:	e51b3008 	ldr	r3, [fp, #-8]
      74:	e3530003 	cmp	r3, #3
      78:	dafffff5 	ble	54 <main+0x54>
      7c:	ea000000 	b	84 <main+0x84>
      80:	e1a00000 	nop			@ (mov r0, r0)
      84:	e51b2008 	ldr	r2, [fp, #-8]
      88:	e59f10e0 	ldr	r1, [pc, #224]	@ 170 <main+0x170>
      8c:	e3a00001 	mov	r0, #1
      90:	eb0003ba 	bl	f80 <printf>
      94:	e55b2010 	ldrb	r2, [fp, #-16]
      98:	e51b3008 	ldr	r3, [fp, #-8]
      9c:	e6ef3073 	uxtb	r3, r3
      a0:	e0823003 	add	r3, r2, r3
      a4:	e6ef3073 	uxtb	r3, r3
      a8:	e54b3010 	strb	r3, [fp, #-16]
      ac:	e24b3018 	sub	r3, fp, #24
      b0:	e59f10bc 	ldr	r1, [pc, #188]	@ 174 <main+0x174>
      b4:	e1a00003 	mov	r0, r3
      b8:	eb000261 	bl	a44 <open>
      bc:	e50b000c 	str	r0, [fp, #-12]
      c0:	e3a03000 	mov	r3, #0
      c4:	e50b3008 	str	r3, [fp, #-8]
      c8:	ea000007 	b	ec <main+0xec>
      cc:	e24b3f86 	sub	r3, fp, #536	@ 0x218
      d0:	e3a02c02 	mov	r2, #512	@ 0x200
      d4:	e1a01003 	mov	r1, r3
      d8:	e51b000c 	ldr	r0, [fp, #-12]
      dc:	eb000234 	bl	9b4 <write>
      e0:	e51b3008 	ldr	r3, [fp, #-8]
      e4:	e2833001 	add	r3, r3, #1
      e8:	e50b3008 	str	r3, [fp, #-8]
      ec:	e51b3008 	ldr	r3, [fp, #-8]
      f0:	e3530013 	cmp	r3, #19
      f4:	dafffff4 	ble	cc <main+0xcc>
      f8:	e51b000c 	ldr	r0, [fp, #-12]
      fc:	eb000235 	bl	9d8 <close>
     100:	e59f1070 	ldr	r1, [pc, #112]	@ 178 <main+0x178>
     104:	e3a00001 	mov	r0, #1
     108:	eb00039c 	bl	f80 <printf>
     10c:	e24b3018 	sub	r3, fp, #24
     110:	e3a01000 	mov	r1, #0
     114:	e1a00003 	mov	r0, r3
     118:	eb000249 	bl	a44 <open>
     11c:	e50b000c 	str	r0, [fp, #-12]
     120:	e3a03000 	mov	r3, #0
     124:	e50b3008 	str	r3, [fp, #-8]
     128:	ea000007 	b	14c <main+0x14c>
     12c:	e24b3f86 	sub	r3, fp, #536	@ 0x218
     130:	e3a02c02 	mov	r2, #512	@ 0x200
     134:	e1a01003 	mov	r1, r3
     138:	e51b000c 	ldr	r0, [fp, #-12]
     13c:	eb000213 	bl	990 <read>
     140:	e51b3008 	ldr	r3, [fp, #-8]
     144:	e2833001 	add	r3, r3, #1
     148:	e50b3008 	str	r3, [fp, #-8]
     14c:	e51b3008 	ldr	r3, [fp, #-8]
     150:	e3530013 	cmp	r3, #19
     154:	dafffff4 	ble	12c <main+0x12c>
     158:	e51b000c 	ldr	r0, [fp, #-12]
     15c:	eb00021d 	bl	9d8 <close>
     160:	eb0001f8 	bl	948 <wait>
     164:	eb0001ee 	bl	924 <exit>
     168:	00001664 	.word	0x00001664
     16c:	0000163c 	.word	0x0000163c
     170:	00001650 	.word	0x00001650
     174:	00000202 	.word	0x00000202
     178:	0000165c 	.word	0x0000165c

0000017c <strcpy>:
     17c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     180:	e28db000 	add	fp, sp, #0
     184:	e24dd014 	sub	sp, sp, #20
     188:	e50b0010 	str	r0, [fp, #-16]
     18c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     190:	e51b3010 	ldr	r3, [fp, #-16]
     194:	e50b3008 	str	r3, [fp, #-8]
     198:	e1a00000 	nop			@ (mov r0, r0)
     19c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1a0:	e2823001 	add	r3, r2, #1
     1a4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1a8:	e51b3010 	ldr	r3, [fp, #-16]
     1ac:	e2831001 	add	r1, r3, #1
     1b0:	e50b1010 	str	r1, [fp, #-16]
     1b4:	e5d22000 	ldrb	r2, [r2]
     1b8:	e5c32000 	strb	r2, [r3]
     1bc:	e5d33000 	ldrb	r3, [r3]
     1c0:	e3530000 	cmp	r3, #0
     1c4:	1afffff4 	bne	19c <strcpy+0x20>
     1c8:	e51b3008 	ldr	r3, [fp, #-8]
     1cc:	e1a00003 	mov	r0, r3
     1d0:	e28bd000 	add	sp, fp, #0
     1d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1d8:	e12fff1e 	bx	lr

000001dc <strcmp>:
     1dc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1e0:	e28db000 	add	fp, sp, #0
     1e4:	e24dd00c 	sub	sp, sp, #12
     1e8:	e50b0008 	str	r0, [fp, #-8]
     1ec:	e50b100c 	str	r1, [fp, #-12]
     1f0:	ea000005 	b	20c <strcmp+0x30>
     1f4:	e51b3008 	ldr	r3, [fp, #-8]
     1f8:	e2833001 	add	r3, r3, #1
     1fc:	e50b3008 	str	r3, [fp, #-8]
     200:	e51b300c 	ldr	r3, [fp, #-12]
     204:	e2833001 	add	r3, r3, #1
     208:	e50b300c 	str	r3, [fp, #-12]
     20c:	e51b3008 	ldr	r3, [fp, #-8]
     210:	e5d33000 	ldrb	r3, [r3]
     214:	e3530000 	cmp	r3, #0
     218:	0a000005 	beq	234 <strcmp+0x58>
     21c:	e51b3008 	ldr	r3, [fp, #-8]
     220:	e5d32000 	ldrb	r2, [r3]
     224:	e51b300c 	ldr	r3, [fp, #-12]
     228:	e5d33000 	ldrb	r3, [r3]
     22c:	e1520003 	cmp	r2, r3
     230:	0affffef 	beq	1f4 <strcmp+0x18>
     234:	e51b3008 	ldr	r3, [fp, #-8]
     238:	e5d33000 	ldrb	r3, [r3]
     23c:	e1a02003 	mov	r2, r3
     240:	e51b300c 	ldr	r3, [fp, #-12]
     244:	e5d33000 	ldrb	r3, [r3]
     248:	e0423003 	sub	r3, r2, r3
     24c:	e1a00003 	mov	r0, r3
     250:	e28bd000 	add	sp, fp, #0
     254:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     258:	e12fff1e 	bx	lr

0000025c <strlen>:
     25c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     260:	e28db000 	add	fp, sp, #0
     264:	e24dd014 	sub	sp, sp, #20
     268:	e50b0010 	str	r0, [fp, #-16]
     26c:	e3a03000 	mov	r3, #0
     270:	e50b3008 	str	r3, [fp, #-8]
     274:	ea000002 	b	284 <strlen+0x28>
     278:	e51b3008 	ldr	r3, [fp, #-8]
     27c:	e2833001 	add	r3, r3, #1
     280:	e50b3008 	str	r3, [fp, #-8]
     284:	e51b3008 	ldr	r3, [fp, #-8]
     288:	e51b2010 	ldr	r2, [fp, #-16]
     28c:	e0823003 	add	r3, r2, r3
     290:	e5d33000 	ldrb	r3, [r3]
     294:	e3530000 	cmp	r3, #0
     298:	1afffff6 	bne	278 <strlen+0x1c>
     29c:	e51b3008 	ldr	r3, [fp, #-8]
     2a0:	e1a00003 	mov	r0, r3
     2a4:	e28bd000 	add	sp, fp, #0
     2a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2ac:	e12fff1e 	bx	lr

000002b0 <memset>:
     2b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2b4:	e28db000 	add	fp, sp, #0
     2b8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     2bc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     2c0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     2c4:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     2c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2cc:	e50b3008 	str	r3, [fp, #-8]
     2d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     2d4:	e54b300d 	strb	r3, [fp, #-13]
     2d8:	e55b200d 	ldrb	r2, [fp, #-13]
     2dc:	e1a03002 	mov	r3, r2
     2e0:	e1a03403 	lsl	r3, r3, #8
     2e4:	e0833002 	add	r3, r3, r2
     2e8:	e1a03803 	lsl	r3, r3, #16
     2ec:	e1a02003 	mov	r2, r3
     2f0:	e55b300d 	ldrb	r3, [fp, #-13]
     2f4:	e1a03403 	lsl	r3, r3, #8
     2f8:	e1822003 	orr	r2, r2, r3
     2fc:	e55b300d 	ldrb	r3, [fp, #-13]
     300:	e1823003 	orr	r3, r2, r3
     304:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     308:	ea000008 	b	330 <memset+0x80>
     30c:	e51b3008 	ldr	r3, [fp, #-8]
     310:	e55b200d 	ldrb	r2, [fp, #-13]
     314:	e5c32000 	strb	r2, [r3]
     318:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     31c:	e2433001 	sub	r3, r3, #1
     320:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     324:	e51b3008 	ldr	r3, [fp, #-8]
     328:	e2833001 	add	r3, r3, #1
     32c:	e50b3008 	str	r3, [fp, #-8]
     330:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     334:	e3530000 	cmp	r3, #0
     338:	0a000003 	beq	34c <memset+0x9c>
     33c:	e51b3008 	ldr	r3, [fp, #-8]
     340:	e2033003 	and	r3, r3, #3
     344:	e3530000 	cmp	r3, #0
     348:	1affffef 	bne	30c <memset+0x5c>
     34c:	e51b3008 	ldr	r3, [fp, #-8]
     350:	e50b300c 	str	r3, [fp, #-12]
     354:	ea000008 	b	37c <memset+0xcc>
     358:	e51b300c 	ldr	r3, [fp, #-12]
     35c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     360:	e5832000 	str	r2, [r3]
     364:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     368:	e2433004 	sub	r3, r3, #4
     36c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     370:	e51b300c 	ldr	r3, [fp, #-12]
     374:	e2833004 	add	r3, r3, #4
     378:	e50b300c 	str	r3, [fp, #-12]
     37c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     380:	e3530003 	cmp	r3, #3
     384:	8afffff3 	bhi	358 <memset+0xa8>
     388:	e51b300c 	ldr	r3, [fp, #-12]
     38c:	e50b3008 	str	r3, [fp, #-8]
     390:	ea000008 	b	3b8 <memset+0x108>
     394:	e51b3008 	ldr	r3, [fp, #-8]
     398:	e55b200d 	ldrb	r2, [fp, #-13]
     39c:	e5c32000 	strb	r2, [r3]
     3a0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3a4:	e2433001 	sub	r3, r3, #1
     3a8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3ac:	e51b3008 	ldr	r3, [fp, #-8]
     3b0:	e2833001 	add	r3, r3, #1
     3b4:	e50b3008 	str	r3, [fp, #-8]
     3b8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3bc:	e3530000 	cmp	r3, #0
     3c0:	1afffff3 	bne	394 <memset+0xe4>
     3c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3c8:	e1a00003 	mov	r0, r3
     3cc:	e28bd000 	add	sp, fp, #0
     3d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3d4:	e12fff1e 	bx	lr

000003d8 <strchr>:
     3d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3dc:	e28db000 	add	fp, sp, #0
     3e0:	e24dd00c 	sub	sp, sp, #12
     3e4:	e50b0008 	str	r0, [fp, #-8]
     3e8:	e1a03001 	mov	r3, r1
     3ec:	e54b3009 	strb	r3, [fp, #-9]
     3f0:	ea000009 	b	41c <strchr+0x44>
     3f4:	e51b3008 	ldr	r3, [fp, #-8]
     3f8:	e5d33000 	ldrb	r3, [r3]
     3fc:	e55b2009 	ldrb	r2, [fp, #-9]
     400:	e1520003 	cmp	r2, r3
     404:	1a000001 	bne	410 <strchr+0x38>
     408:	e51b3008 	ldr	r3, [fp, #-8]
     40c:	ea000007 	b	430 <strchr+0x58>
     410:	e51b3008 	ldr	r3, [fp, #-8]
     414:	e2833001 	add	r3, r3, #1
     418:	e50b3008 	str	r3, [fp, #-8]
     41c:	e51b3008 	ldr	r3, [fp, #-8]
     420:	e5d33000 	ldrb	r3, [r3]
     424:	e3530000 	cmp	r3, #0
     428:	1afffff1 	bne	3f4 <strchr+0x1c>
     42c:	e3a03000 	mov	r3, #0
     430:	e1a00003 	mov	r0, r3
     434:	e28bd000 	add	sp, fp, #0
     438:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     43c:	e12fff1e 	bx	lr

00000440 <gets>:
     440:	e92d4800 	push	{fp, lr}
     444:	e28db004 	add	fp, sp, #4
     448:	e24dd018 	sub	sp, sp, #24
     44c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     450:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     454:	e3a03000 	mov	r3, #0
     458:	e50b3008 	str	r3, [fp, #-8]
     45c:	ea000016 	b	4bc <gets+0x7c>
     460:	e24b300d 	sub	r3, fp, #13
     464:	e3a02001 	mov	r2, #1
     468:	e1a01003 	mov	r1, r3
     46c:	e3a00000 	mov	r0, #0
     470:	eb000146 	bl	990 <read>
     474:	e50b000c 	str	r0, [fp, #-12]
     478:	e51b300c 	ldr	r3, [fp, #-12]
     47c:	e3530000 	cmp	r3, #0
     480:	da000013 	ble	4d4 <gets+0x94>
     484:	e51b3008 	ldr	r3, [fp, #-8]
     488:	e2832001 	add	r2, r3, #1
     48c:	e50b2008 	str	r2, [fp, #-8]
     490:	e1a02003 	mov	r2, r3
     494:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     498:	e0833002 	add	r3, r3, r2
     49c:	e55b200d 	ldrb	r2, [fp, #-13]
     4a0:	e5c32000 	strb	r2, [r3]
     4a4:	e55b300d 	ldrb	r3, [fp, #-13]
     4a8:	e353000a 	cmp	r3, #10
     4ac:	0a000009 	beq	4d8 <gets+0x98>
     4b0:	e55b300d 	ldrb	r3, [fp, #-13]
     4b4:	e353000d 	cmp	r3, #13
     4b8:	0a000006 	beq	4d8 <gets+0x98>
     4bc:	e51b3008 	ldr	r3, [fp, #-8]
     4c0:	e2833001 	add	r3, r3, #1
     4c4:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     4c8:	e1520003 	cmp	r2, r3
     4cc:	caffffe3 	bgt	460 <gets+0x20>
     4d0:	ea000000 	b	4d8 <gets+0x98>
     4d4:	e1a00000 	nop			@ (mov r0, r0)
     4d8:	e51b3008 	ldr	r3, [fp, #-8]
     4dc:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     4e0:	e0823003 	add	r3, r2, r3
     4e4:	e3a02000 	mov	r2, #0
     4e8:	e5c32000 	strb	r2, [r3]
     4ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4f0:	e1a00003 	mov	r0, r3
     4f4:	e24bd004 	sub	sp, fp, #4
     4f8:	e8bd8800 	pop	{fp, pc}

000004fc <stat>:
     4fc:	e92d4800 	push	{fp, lr}
     500:	e28db004 	add	fp, sp, #4
     504:	e24dd010 	sub	sp, sp, #16
     508:	e50b0010 	str	r0, [fp, #-16]
     50c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     510:	e3a01000 	mov	r1, #0
     514:	e51b0010 	ldr	r0, [fp, #-16]
     518:	eb000149 	bl	a44 <open>
     51c:	e50b0008 	str	r0, [fp, #-8]
     520:	e51b3008 	ldr	r3, [fp, #-8]
     524:	e3530000 	cmp	r3, #0
     528:	aa000001 	bge	534 <stat+0x38>
     52c:	e3e03000 	mvn	r3, #0
     530:	ea000006 	b	550 <stat+0x54>
     534:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     538:	e51b0008 	ldr	r0, [fp, #-8]
     53c:	eb00015b 	bl	ab0 <fstat>
     540:	e50b000c 	str	r0, [fp, #-12]
     544:	e51b0008 	ldr	r0, [fp, #-8]
     548:	eb000122 	bl	9d8 <close>
     54c:	e51b300c 	ldr	r3, [fp, #-12]
     550:	e1a00003 	mov	r0, r3
     554:	e24bd004 	sub	sp, fp, #4
     558:	e8bd8800 	pop	{fp, pc}

0000055c <atoi>:
     55c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     560:	e28db000 	add	fp, sp, #0
     564:	e24dd014 	sub	sp, sp, #20
     568:	e50b0010 	str	r0, [fp, #-16]
     56c:	e3a03000 	mov	r3, #0
     570:	e50b3008 	str	r3, [fp, #-8]
     574:	ea00000c 	b	5ac <atoi+0x50>
     578:	e51b2008 	ldr	r2, [fp, #-8]
     57c:	e1a03002 	mov	r3, r2
     580:	e1a03103 	lsl	r3, r3, #2
     584:	e0833002 	add	r3, r3, r2
     588:	e1a03083 	lsl	r3, r3, #1
     58c:	e1a01003 	mov	r1, r3
     590:	e51b3010 	ldr	r3, [fp, #-16]
     594:	e2832001 	add	r2, r3, #1
     598:	e50b2010 	str	r2, [fp, #-16]
     59c:	e5d33000 	ldrb	r3, [r3]
     5a0:	e0813003 	add	r3, r1, r3
     5a4:	e2433030 	sub	r3, r3, #48	@ 0x30
     5a8:	e50b3008 	str	r3, [fp, #-8]
     5ac:	e51b3010 	ldr	r3, [fp, #-16]
     5b0:	e5d33000 	ldrb	r3, [r3]
     5b4:	e353002f 	cmp	r3, #47	@ 0x2f
     5b8:	9a000003 	bls	5cc <atoi+0x70>
     5bc:	e51b3010 	ldr	r3, [fp, #-16]
     5c0:	e5d33000 	ldrb	r3, [r3]
     5c4:	e3530039 	cmp	r3, #57	@ 0x39
     5c8:	9affffea 	bls	578 <atoi+0x1c>
     5cc:	e51b3010 	ldr	r3, [fp, #-16]
     5d0:	e5d33000 	ldrb	r3, [r3]
     5d4:	e3530000 	cmp	r3, #0
     5d8:	1a000001 	bne	5e4 <atoi+0x88>
     5dc:	e51b3008 	ldr	r3, [fp, #-8]
     5e0:	ea000000 	b	5e8 <atoi+0x8c>
     5e4:	e3e03000 	mvn	r3, #0
     5e8:	e1a00003 	mov	r0, r3
     5ec:	e28bd000 	add	sp, fp, #0
     5f0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5f4:	e12fff1e 	bx	lr

000005f8 <memmove>:
     5f8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5fc:	e28db000 	add	fp, sp, #0
     600:	e24dd01c 	sub	sp, sp, #28
     604:	e50b0010 	str	r0, [fp, #-16]
     608:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     60c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     610:	e51b3010 	ldr	r3, [fp, #-16]
     614:	e50b3008 	str	r3, [fp, #-8]
     618:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     61c:	e50b300c 	str	r3, [fp, #-12]
     620:	ea000007 	b	644 <memmove+0x4c>
     624:	e51b200c 	ldr	r2, [fp, #-12]
     628:	e2823001 	add	r3, r2, #1
     62c:	e50b300c 	str	r3, [fp, #-12]
     630:	e51b3008 	ldr	r3, [fp, #-8]
     634:	e2831001 	add	r1, r3, #1
     638:	e50b1008 	str	r1, [fp, #-8]
     63c:	e5d22000 	ldrb	r2, [r2]
     640:	e5c32000 	strb	r2, [r3]
     644:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     648:	e2432001 	sub	r2, r3, #1
     64c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     650:	e3530000 	cmp	r3, #0
     654:	cafffff2 	bgt	624 <memmove+0x2c>
     658:	e51b3010 	ldr	r3, [fp, #-16]
     65c:	e1a00003 	mov	r0, r3
     660:	e28bd000 	add	sp, fp, #0
     664:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     668:	e12fff1e 	bx	lr

0000066c <initiateLock>:
     66c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     670:	e28db000 	add	fp, sp, #0
     674:	e24dd00c 	sub	sp, sp, #12
     678:	e50b0008 	str	r0, [fp, #-8]
     67c:	e51b3008 	ldr	r3, [fp, #-8]
     680:	e3a02000 	mov	r2, #0
     684:	e5832000 	str	r2, [r3]
     688:	e51b3008 	ldr	r3, [fp, #-8]
     68c:	e3a02001 	mov	r2, #1
     690:	e5832004 	str	r2, [r3, #4]
     694:	e1a00000 	nop			@ (mov r0, r0)
     698:	e28bd000 	add	sp, fp, #0
     69c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6a0:	e12fff1e 	bx	lr

000006a4 <acquireLock>:
     6a4:	e92d4800 	push	{fp, lr}
     6a8:	e28db004 	add	fp, sp, #4
     6ac:	e24dd008 	sub	sp, sp, #8
     6b0:	e50b0008 	str	r0, [fp, #-8]
     6b4:	ea000001 	b	6c0 <acquireLock+0x1c>
     6b8:	e3a00001 	mov	r0, #1
     6bc:	eb00013a 	bl	bac <sleep>
     6c0:	e51b2008 	ldr	r2, [fp, #-8]
     6c4:	e3a01001 	mov	r1, #1
     6c8:	e1923f9f 	ldrex	r3, [r2]
     6cc:	e1820f91 	strex	r0, r1, [r2]
     6d0:	e3500000 	cmp	r0, #0
     6d4:	1afffffb 	bne	6c8 <acquireLock+0x24>
     6d8:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     6dc:	e3530001 	cmp	r3, #1
     6e0:	0afffff4 	beq	6b8 <acquireLock+0x14>
     6e4:	e1a00000 	nop			@ (mov r0, r0)
     6e8:	e1a00000 	nop			@ (mov r0, r0)
     6ec:	e24bd004 	sub	sp, fp, #4
     6f0:	e8bd8800 	pop	{fp, pc}

000006f4 <releaseLock>:
     6f4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6f8:	e28db000 	add	fp, sp, #0
     6fc:	e24dd00c 	sub	sp, sp, #12
     700:	e50b0008 	str	r0, [fp, #-8]
     704:	e51b3008 	ldr	r3, [fp, #-8]
     708:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     70c:	e3a02000 	mov	r2, #0
     710:	e5832000 	str	r2, [r3]
     714:	e1a00000 	nop			@ (mov r0, r0)
     718:	e28bd000 	add	sp, fp, #0
     71c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     720:	e12fff1e 	bx	lr

00000724 <initiateCondVar>:
     724:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     728:	e28db000 	add	fp, sp, #0
     72c:	e24dd00c 	sub	sp, sp, #12
     730:	e50b0008 	str	r0, [fp, #-8]
     734:	e51b3008 	ldr	r3, [fp, #-8]
     738:	e3a02000 	mov	r2, #0
     73c:	e5832000 	str	r2, [r3]
     740:	e51b3008 	ldr	r3, [fp, #-8]
     744:	e3a02001 	mov	r2, #1
     748:	e5832004 	str	r2, [r3, #4]
     74c:	e1a00000 	nop			@ (mov r0, r0)
     750:	e28bd000 	add	sp, fp, #0
     754:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     758:	e12fff1e 	bx	lr

0000075c <condWait>:
     75c:	e92d4800 	push	{fp, lr}
     760:	e28db004 	add	fp, sp, #4
     764:	e24dd008 	sub	sp, sp, #8
     768:	e50b0008 	str	r0, [fp, #-8]
     76c:	e50b100c 	str	r1, [fp, #-12]
     770:	e51b000c 	ldr	r0, [fp, #-12]
     774:	ebffffde 	bl	6f4 <releaseLock>
     778:	e51b3008 	ldr	r3, [fp, #-8]
     77c:	e5933000 	ldr	r3, [r3]
     780:	e1a00003 	mov	r0, r3
     784:	eb00017d 	bl	d80 <sleepChan>
     788:	e51b000c 	ldr	r0, [fp, #-12]
     78c:	ebffffc4 	bl	6a4 <acquireLock>
     790:	e1a00000 	nop			@ (mov r0, r0)
     794:	e24bd004 	sub	sp, fp, #4
     798:	e8bd8800 	pop	{fp, pc}

0000079c <broadcast>:
     79c:	e92d4800 	push	{fp, lr}
     7a0:	e28db004 	add	fp, sp, #4
     7a4:	e24dd008 	sub	sp, sp, #8
     7a8:	e50b0008 	str	r0, [fp, #-8]
     7ac:	e51b3008 	ldr	r3, [fp, #-8]
     7b0:	e5933000 	ldr	r3, [r3]
     7b4:	e1a00003 	mov	r0, r3
     7b8:	eb000182 	bl	dc8 <sigChan>
     7bc:	e1a00000 	nop			@ (mov r0, r0)
     7c0:	e24bd004 	sub	sp, fp, #4
     7c4:	e8bd8800 	pop	{fp, pc}

000007c8 <semInit>:
     7c8:	e92d4800 	push	{fp, lr}
     7cc:	e28db004 	add	fp, sp, #4
     7d0:	e24dd008 	sub	sp, sp, #8
     7d4:	e50b0008 	str	r0, [fp, #-8]
     7d8:	e50b100c 	str	r1, [fp, #-12]
     7dc:	e51b3008 	ldr	r3, [fp, #-8]
     7e0:	e51b200c 	ldr	r2, [fp, #-12]
     7e4:	e5832000 	str	r2, [r3]
     7e8:	e51b3008 	ldr	r3, [fp, #-8]
     7ec:	e2833004 	add	r3, r3, #4
     7f0:	e1a00003 	mov	r0, r3
     7f4:	ebffff9c 	bl	66c <initiateLock>
     7f8:	e51b3008 	ldr	r3, [fp, #-8]
     7fc:	e283300c 	add	r3, r3, #12
     800:	e1a00003 	mov	r0, r3
     804:	ebffffc6 	bl	724 <initiateCondVar>
     808:	e51b3008 	ldr	r3, [fp, #-8]
     80c:	e3a02001 	mov	r2, #1
     810:	e5832014 	str	r2, [r3, #20]
     814:	e1a00000 	nop			@ (mov r0, r0)
     818:	e24bd004 	sub	sp, fp, #4
     81c:	e8bd8800 	pop	{fp, pc}

00000820 <semUp>:
     820:	e92d4800 	push	{fp, lr}
     824:	e28db004 	add	fp, sp, #4
     828:	e24dd008 	sub	sp, sp, #8
     82c:	e50b0008 	str	r0, [fp, #-8]
     830:	e51b3008 	ldr	r3, [fp, #-8]
     834:	e2833004 	add	r3, r3, #4
     838:	e1a00003 	mov	r0, r3
     83c:	ebffff98 	bl	6a4 <acquireLock>
     840:	e51b3008 	ldr	r3, [fp, #-8]
     844:	e5933000 	ldr	r3, [r3]
     848:	e2832001 	add	r2, r3, #1
     84c:	e51b3008 	ldr	r3, [fp, #-8]
     850:	e5832000 	str	r2, [r3]
     854:	e51b3008 	ldr	r3, [fp, #-8]
     858:	e283300c 	add	r3, r3, #12
     85c:	e1a00003 	mov	r0, r3
     860:	ebffffcd 	bl	79c <broadcast>
     864:	e51b3008 	ldr	r3, [fp, #-8]
     868:	e2833004 	add	r3, r3, #4
     86c:	e1a00003 	mov	r0, r3
     870:	ebffff9f 	bl	6f4 <releaseLock>
     874:	e1a00000 	nop			@ (mov r0, r0)
     878:	e24bd004 	sub	sp, fp, #4
     87c:	e8bd8800 	pop	{fp, pc}

00000880 <semDown>:
     880:	e92d4800 	push	{fp, lr}
     884:	e28db004 	add	fp, sp, #4
     888:	e24dd008 	sub	sp, sp, #8
     88c:	e50b0008 	str	r0, [fp, #-8]
     890:	e51b3008 	ldr	r3, [fp, #-8]
     894:	e2833004 	add	r3, r3, #4
     898:	e1a00003 	mov	r0, r3
     89c:	ebffff80 	bl	6a4 <acquireLock>
     8a0:	ea000006 	b	8c0 <semDown+0x40>
     8a4:	e51b3008 	ldr	r3, [fp, #-8]
     8a8:	e283200c 	add	r2, r3, #12
     8ac:	e51b3008 	ldr	r3, [fp, #-8]
     8b0:	e2833004 	add	r3, r3, #4
     8b4:	e1a01003 	mov	r1, r3
     8b8:	e1a00002 	mov	r0, r2
     8bc:	ebffffa6 	bl	75c <condWait>
     8c0:	e51b3008 	ldr	r3, [fp, #-8]
     8c4:	e5933000 	ldr	r3, [r3]
     8c8:	e3530000 	cmp	r3, #0
     8cc:	dafffff4 	ble	8a4 <semDown+0x24>
     8d0:	e51b3008 	ldr	r3, [fp, #-8]
     8d4:	e5933000 	ldr	r3, [r3]
     8d8:	e2432001 	sub	r2, r3, #1
     8dc:	e51b3008 	ldr	r3, [fp, #-8]
     8e0:	e5832000 	str	r2, [r3]
     8e4:	e51b3008 	ldr	r3, [fp, #-8]
     8e8:	e2833004 	add	r3, r3, #4
     8ec:	e1a00003 	mov	r0, r3
     8f0:	ebffff7f 	bl	6f4 <releaseLock>
     8f4:	e1a00000 	nop			@ (mov r0, r0)
     8f8:	e24bd004 	sub	sp, fp, #4
     8fc:	e8bd8800 	pop	{fp, pc}

00000900 <fork>:
     900:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     904:	e1a04003 	mov	r4, r3
     908:	e1a03002 	mov	r3, r2
     90c:	e1a02001 	mov	r2, r1
     910:	e1a01000 	mov	r1, r0
     914:	e3a00001 	mov	r0, #1
     918:	ef000000 	svc	0x00000000
     91c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     920:	e12fff1e 	bx	lr

00000924 <exit>:
     924:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     928:	e1a04003 	mov	r4, r3
     92c:	e1a03002 	mov	r3, r2
     930:	e1a02001 	mov	r2, r1
     934:	e1a01000 	mov	r1, r0
     938:	e3a00002 	mov	r0, #2
     93c:	ef000000 	svc	0x00000000
     940:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     944:	e12fff1e 	bx	lr

00000948 <wait>:
     948:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     94c:	e1a04003 	mov	r4, r3
     950:	e1a03002 	mov	r3, r2
     954:	e1a02001 	mov	r2, r1
     958:	e1a01000 	mov	r1, r0
     95c:	e3a00003 	mov	r0, #3
     960:	ef000000 	svc	0x00000000
     964:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     968:	e12fff1e 	bx	lr

0000096c <pipe>:
     96c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     970:	e1a04003 	mov	r4, r3
     974:	e1a03002 	mov	r3, r2
     978:	e1a02001 	mov	r2, r1
     97c:	e1a01000 	mov	r1, r0
     980:	e3a00004 	mov	r0, #4
     984:	ef000000 	svc	0x00000000
     988:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     98c:	e12fff1e 	bx	lr

00000990 <read>:
     990:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     994:	e1a04003 	mov	r4, r3
     998:	e1a03002 	mov	r3, r2
     99c:	e1a02001 	mov	r2, r1
     9a0:	e1a01000 	mov	r1, r0
     9a4:	e3a00005 	mov	r0, #5
     9a8:	ef000000 	svc	0x00000000
     9ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9b0:	e12fff1e 	bx	lr

000009b4 <write>:
     9b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9b8:	e1a04003 	mov	r4, r3
     9bc:	e1a03002 	mov	r3, r2
     9c0:	e1a02001 	mov	r2, r1
     9c4:	e1a01000 	mov	r1, r0
     9c8:	e3a00010 	mov	r0, #16
     9cc:	ef000000 	svc	0x00000000
     9d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9d4:	e12fff1e 	bx	lr

000009d8 <close>:
     9d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9dc:	e1a04003 	mov	r4, r3
     9e0:	e1a03002 	mov	r3, r2
     9e4:	e1a02001 	mov	r2, r1
     9e8:	e1a01000 	mov	r1, r0
     9ec:	e3a00015 	mov	r0, #21
     9f0:	ef000000 	svc	0x00000000
     9f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9f8:	e12fff1e 	bx	lr

000009fc <kill>:
     9fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a00:	e1a04003 	mov	r4, r3
     a04:	e1a03002 	mov	r3, r2
     a08:	e1a02001 	mov	r2, r1
     a0c:	e1a01000 	mov	r1, r0
     a10:	e3a00006 	mov	r0, #6
     a14:	ef000000 	svc	0x00000000
     a18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a1c:	e12fff1e 	bx	lr

00000a20 <exec>:
     a20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a24:	e1a04003 	mov	r4, r3
     a28:	e1a03002 	mov	r3, r2
     a2c:	e1a02001 	mov	r2, r1
     a30:	e1a01000 	mov	r1, r0
     a34:	e3a00007 	mov	r0, #7
     a38:	ef000000 	svc	0x00000000
     a3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a40:	e12fff1e 	bx	lr

00000a44 <open>:
     a44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a48:	e1a04003 	mov	r4, r3
     a4c:	e1a03002 	mov	r3, r2
     a50:	e1a02001 	mov	r2, r1
     a54:	e1a01000 	mov	r1, r0
     a58:	e3a0000f 	mov	r0, #15
     a5c:	ef000000 	svc	0x00000000
     a60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a64:	e12fff1e 	bx	lr

00000a68 <mknod>:
     a68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a6c:	e1a04003 	mov	r4, r3
     a70:	e1a03002 	mov	r3, r2
     a74:	e1a02001 	mov	r2, r1
     a78:	e1a01000 	mov	r1, r0
     a7c:	e3a00011 	mov	r0, #17
     a80:	ef000000 	svc	0x00000000
     a84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a88:	e12fff1e 	bx	lr

00000a8c <unlink>:
     a8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a90:	e1a04003 	mov	r4, r3
     a94:	e1a03002 	mov	r3, r2
     a98:	e1a02001 	mov	r2, r1
     a9c:	e1a01000 	mov	r1, r0
     aa0:	e3a00012 	mov	r0, #18
     aa4:	ef000000 	svc	0x00000000
     aa8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aac:	e12fff1e 	bx	lr

00000ab0 <fstat>:
     ab0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ab4:	e1a04003 	mov	r4, r3
     ab8:	e1a03002 	mov	r3, r2
     abc:	e1a02001 	mov	r2, r1
     ac0:	e1a01000 	mov	r1, r0
     ac4:	e3a00008 	mov	r0, #8
     ac8:	ef000000 	svc	0x00000000
     acc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ad0:	e12fff1e 	bx	lr

00000ad4 <link>:
     ad4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad8:	e1a04003 	mov	r4, r3
     adc:	e1a03002 	mov	r3, r2
     ae0:	e1a02001 	mov	r2, r1
     ae4:	e1a01000 	mov	r1, r0
     ae8:	e3a00013 	mov	r0, #19
     aec:	ef000000 	svc	0x00000000
     af0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     af4:	e12fff1e 	bx	lr

00000af8 <mkdir>:
     af8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     afc:	e1a04003 	mov	r4, r3
     b00:	e1a03002 	mov	r3, r2
     b04:	e1a02001 	mov	r2, r1
     b08:	e1a01000 	mov	r1, r0
     b0c:	e3a00014 	mov	r0, #20
     b10:	ef000000 	svc	0x00000000
     b14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b18:	e12fff1e 	bx	lr

00000b1c <chdir>:
     b1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b20:	e1a04003 	mov	r4, r3
     b24:	e1a03002 	mov	r3, r2
     b28:	e1a02001 	mov	r2, r1
     b2c:	e1a01000 	mov	r1, r0
     b30:	e3a00009 	mov	r0, #9
     b34:	ef000000 	svc	0x00000000
     b38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b3c:	e12fff1e 	bx	lr

00000b40 <dup>:
     b40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b44:	e1a04003 	mov	r4, r3
     b48:	e1a03002 	mov	r3, r2
     b4c:	e1a02001 	mov	r2, r1
     b50:	e1a01000 	mov	r1, r0
     b54:	e3a0000a 	mov	r0, #10
     b58:	ef000000 	svc	0x00000000
     b5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b60:	e12fff1e 	bx	lr

00000b64 <getpid>:
     b64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b68:	e1a04003 	mov	r4, r3
     b6c:	e1a03002 	mov	r3, r2
     b70:	e1a02001 	mov	r2, r1
     b74:	e1a01000 	mov	r1, r0
     b78:	e3a0000b 	mov	r0, #11
     b7c:	ef000000 	svc	0x00000000
     b80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b84:	e12fff1e 	bx	lr

00000b88 <sbrk>:
     b88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b8c:	e1a04003 	mov	r4, r3
     b90:	e1a03002 	mov	r3, r2
     b94:	e1a02001 	mov	r2, r1
     b98:	e1a01000 	mov	r1, r0
     b9c:	e3a0000c 	mov	r0, #12
     ba0:	ef000000 	svc	0x00000000
     ba4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba8:	e12fff1e 	bx	lr

00000bac <sleep>:
     bac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bb0:	e1a04003 	mov	r4, r3
     bb4:	e1a03002 	mov	r3, r2
     bb8:	e1a02001 	mov	r2, r1
     bbc:	e1a01000 	mov	r1, r0
     bc0:	e3a0000d 	mov	r0, #13
     bc4:	ef000000 	svc	0x00000000
     bc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bcc:	e12fff1e 	bx	lr

00000bd0 <uptime>:
     bd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bd4:	e1a04003 	mov	r4, r3
     bd8:	e1a03002 	mov	r3, r2
     bdc:	e1a02001 	mov	r2, r1
     be0:	e1a01000 	mov	r1, r0
     be4:	e3a0000e 	mov	r0, #14
     be8:	ef000000 	svc	0x00000000
     bec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bf0:	e12fff1e 	bx	lr

00000bf4 <getprocs>:
     bf4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf8:	e1a04003 	mov	r4, r3
     bfc:	e1a03002 	mov	r3, r2
     c00:	e1a02001 	mov	r2, r1
     c04:	e1a01000 	mov	r1, r0
     c08:	e3a00016 	mov	r0, #22
     c0c:	ef000000 	svc	0x00000000
     c10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c14:	e12fff1e 	bx	lr

00000c18 <settickets>:
     c18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c1c:	e1a04003 	mov	r4, r3
     c20:	e1a03002 	mov	r3, r2
     c24:	e1a02001 	mov	r2, r1
     c28:	e1a01000 	mov	r1, r0
     c2c:	e3a00017 	mov	r0, #23
     c30:	ef000000 	svc	0x00000000
     c34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c38:	e12fff1e 	bx	lr

00000c3c <srand>:
     c3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c40:	e1a04003 	mov	r4, r3
     c44:	e1a03002 	mov	r3, r2
     c48:	e1a02001 	mov	r2, r1
     c4c:	e1a01000 	mov	r1, r0
     c50:	e3a00018 	mov	r0, #24
     c54:	ef000000 	svc	0x00000000
     c58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c5c:	e12fff1e 	bx	lr

00000c60 <getpinfo>:
     c60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c64:	e1a04003 	mov	r4, r3
     c68:	e1a03002 	mov	r3, r2
     c6c:	e1a02001 	mov	r2, r1
     c70:	e1a01000 	mov	r1, r0
     c74:	e3a00019 	mov	r0, #25
     c78:	ef000000 	svc	0x00000000
     c7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c80:	e12fff1e 	bx	lr

00000c84 <dumppagetable>:
     c84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c88:	e1a04003 	mov	r4, r3
     c8c:	e1a03002 	mov	r3, r2
     c90:	e1a02001 	mov	r2, r1
     c94:	e1a01000 	mov	r1, r0
     c98:	e3a0001a 	mov	r0, #26
     c9c:	ef000000 	svc	0x00000000
     ca0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ca4:	e12fff1e 	bx	lr

00000ca8 <thread_create>:
     ca8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cac:	e1a04003 	mov	r4, r3
     cb0:	e1a03002 	mov	r3, r2
     cb4:	e1a02001 	mov	r2, r1
     cb8:	e1a01000 	mov	r1, r0
     cbc:	e3a0001b 	mov	r0, #27
     cc0:	ef000000 	svc	0x00000000
     cc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc8:	e12fff1e 	bx	lr

00000ccc <thread_exit>:
     ccc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cd0:	e1a04003 	mov	r4, r3
     cd4:	e1a03002 	mov	r3, r2
     cd8:	e1a02001 	mov	r2, r1
     cdc:	e1a01000 	mov	r1, r0
     ce0:	e3a0001c 	mov	r0, #28
     ce4:	ef000000 	svc	0x00000000
     ce8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cec:	e12fff1e 	bx	lr

00000cf0 <thread_join>:
     cf0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cf4:	e1a04003 	mov	r4, r3
     cf8:	e1a03002 	mov	r3, r2
     cfc:	e1a02001 	mov	r2, r1
     d00:	e1a01000 	mov	r1, r0
     d04:	e3a0001d 	mov	r0, #29
     d08:	ef000000 	svc	0x00000000
     d0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d10:	e12fff1e 	bx	lr

00000d14 <waitpid>:
     d14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d18:	e1a04003 	mov	r4, r3
     d1c:	e1a03002 	mov	r3, r2
     d20:	e1a02001 	mov	r2, r1
     d24:	e1a01000 	mov	r1, r0
     d28:	e3a0001e 	mov	r0, #30
     d2c:	ef000000 	svc	0x00000000
     d30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d34:	e12fff1e 	bx	lr

00000d38 <barrier_init>:
     d38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d3c:	e1a04003 	mov	r4, r3
     d40:	e1a03002 	mov	r3, r2
     d44:	e1a02001 	mov	r2, r1
     d48:	e1a01000 	mov	r1, r0
     d4c:	e3a0001f 	mov	r0, #31
     d50:	ef000000 	svc	0x00000000
     d54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d58:	e12fff1e 	bx	lr

00000d5c <barrier_check>:
     d5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d60:	e1a04003 	mov	r4, r3
     d64:	e1a03002 	mov	r3, r2
     d68:	e1a02001 	mov	r2, r1
     d6c:	e1a01000 	mov	r1, r0
     d70:	e3a00020 	mov	r0, #32
     d74:	ef000000 	svc	0x00000000
     d78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d7c:	e12fff1e 	bx	lr

00000d80 <sleepChan>:
     d80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d84:	e1a04003 	mov	r4, r3
     d88:	e1a03002 	mov	r3, r2
     d8c:	e1a02001 	mov	r2, r1
     d90:	e1a01000 	mov	r1, r0
     d94:	e3a00024 	mov	r0, #36	@ 0x24
     d98:	ef000000 	svc	0x00000000
     d9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     da0:	e12fff1e 	bx	lr

00000da4 <getChannel>:
     da4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da8:	e1a04003 	mov	r4, r3
     dac:	e1a03002 	mov	r3, r2
     db0:	e1a02001 	mov	r2, r1
     db4:	e1a01000 	mov	r1, r0
     db8:	e3a00025 	mov	r0, #37	@ 0x25
     dbc:	ef000000 	svc	0x00000000
     dc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dc4:	e12fff1e 	bx	lr

00000dc8 <sigChan>:
     dc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dcc:	e1a04003 	mov	r4, r3
     dd0:	e1a03002 	mov	r3, r2
     dd4:	e1a02001 	mov	r2, r1
     dd8:	e1a01000 	mov	r1, r0
     ddc:	e3a00026 	mov	r0, #38	@ 0x26
     de0:	ef000000 	svc	0x00000000
     de4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     de8:	e12fff1e 	bx	lr

00000dec <sigOneChan>:
     dec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     df0:	e1a04003 	mov	r4, r3
     df4:	e1a03002 	mov	r3, r2
     df8:	e1a02001 	mov	r2, r1
     dfc:	e1a01000 	mov	r1, r0
     e00:	e3a00027 	mov	r0, #39	@ 0x27
     e04:	ef000000 	svc	0x00000000
     e08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e0c:	e12fff1e 	bx	lr

00000e10 <putc>:
     e10:	e92d4800 	push	{fp, lr}
     e14:	e28db004 	add	fp, sp, #4
     e18:	e24dd008 	sub	sp, sp, #8
     e1c:	e50b0008 	str	r0, [fp, #-8]
     e20:	e1a03001 	mov	r3, r1
     e24:	e54b3009 	strb	r3, [fp, #-9]
     e28:	e24b3009 	sub	r3, fp, #9
     e2c:	e3a02001 	mov	r2, #1
     e30:	e1a01003 	mov	r1, r3
     e34:	e51b0008 	ldr	r0, [fp, #-8]
     e38:	ebfffedd 	bl	9b4 <write>
     e3c:	e1a00000 	nop			@ (mov r0, r0)
     e40:	e24bd004 	sub	sp, fp, #4
     e44:	e8bd8800 	pop	{fp, pc}

00000e48 <printint>:
     e48:	e92d4800 	push	{fp, lr}
     e4c:	e28db004 	add	fp, sp, #4
     e50:	e24dd030 	sub	sp, sp, #48	@ 0x30
     e54:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     e58:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     e5c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     e60:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     e64:	e3a03000 	mov	r3, #0
     e68:	e50b300c 	str	r3, [fp, #-12]
     e6c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     e70:	e3530000 	cmp	r3, #0
     e74:	0a000008 	beq	e9c <printint+0x54>
     e78:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e7c:	e3530000 	cmp	r3, #0
     e80:	aa000005 	bge	e9c <printint+0x54>
     e84:	e3a03001 	mov	r3, #1
     e88:	e50b300c 	str	r3, [fp, #-12]
     e8c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e90:	e2633000 	rsb	r3, r3, #0
     e94:	e50b3010 	str	r3, [fp, #-16]
     e98:	ea000001 	b	ea4 <printint+0x5c>
     e9c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ea0:	e50b3010 	str	r3, [fp, #-16]
     ea4:	e3a03000 	mov	r3, #0
     ea8:	e50b3008 	str	r3, [fp, #-8]
     eac:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     eb0:	e51b3010 	ldr	r3, [fp, #-16]
     eb4:	e1a01002 	mov	r1, r2
     eb8:	e1a00003 	mov	r0, r3
     ebc:	eb0001d5 	bl	1618 <__aeabi_uidivmod>
     ec0:	e1a03001 	mov	r3, r1
     ec4:	e1a01003 	mov	r1, r3
     ec8:	e51b3008 	ldr	r3, [fp, #-8]
     ecc:	e2832001 	add	r2, r3, #1
     ed0:	e50b2008 	str	r2, [fp, #-8]
     ed4:	e59f20a0 	ldr	r2, [pc, #160]	@ f7c <printint+0x134>
     ed8:	e7d22001 	ldrb	r2, [r2, r1]
     edc:	e2433004 	sub	r3, r3, #4
     ee0:	e083300b 	add	r3, r3, fp
     ee4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ee8:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     eec:	e1a01003 	mov	r1, r3
     ef0:	e51b0010 	ldr	r0, [fp, #-16]
     ef4:	eb00018a 	bl	1524 <__udivsi3>
     ef8:	e1a03000 	mov	r3, r0
     efc:	e50b3010 	str	r3, [fp, #-16]
     f00:	e51b3010 	ldr	r3, [fp, #-16]
     f04:	e3530000 	cmp	r3, #0
     f08:	1affffe7 	bne	eac <printint+0x64>
     f0c:	e51b300c 	ldr	r3, [fp, #-12]
     f10:	e3530000 	cmp	r3, #0
     f14:	0a00000e 	beq	f54 <printint+0x10c>
     f18:	e51b3008 	ldr	r3, [fp, #-8]
     f1c:	e2832001 	add	r2, r3, #1
     f20:	e50b2008 	str	r2, [fp, #-8]
     f24:	e2433004 	sub	r3, r3, #4
     f28:	e083300b 	add	r3, r3, fp
     f2c:	e3a0202d 	mov	r2, #45	@ 0x2d
     f30:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f34:	ea000006 	b	f54 <printint+0x10c>
     f38:	e24b2020 	sub	r2, fp, #32
     f3c:	e51b3008 	ldr	r3, [fp, #-8]
     f40:	e0823003 	add	r3, r2, r3
     f44:	e5d33000 	ldrb	r3, [r3]
     f48:	e1a01003 	mov	r1, r3
     f4c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     f50:	ebffffae 	bl	e10 <putc>
     f54:	e51b3008 	ldr	r3, [fp, #-8]
     f58:	e2433001 	sub	r3, r3, #1
     f5c:	e50b3008 	str	r3, [fp, #-8]
     f60:	e51b3008 	ldr	r3, [fp, #-8]
     f64:	e3530000 	cmp	r3, #0
     f68:	aafffff2 	bge	f38 <printint+0xf0>
     f6c:	e1a00000 	nop			@ (mov r0, r0)
     f70:	e1a00000 	nop			@ (mov r0, r0)
     f74:	e24bd004 	sub	sp, fp, #4
     f78:	e8bd8800 	pop	{fp, pc}
     f7c:	00001678 	.word	0x00001678

00000f80 <printf>:
     f80:	e92d000e 	push	{r1, r2, r3}
     f84:	e92d4800 	push	{fp, lr}
     f88:	e28db004 	add	fp, sp, #4
     f8c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     f90:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     f94:	e3a03000 	mov	r3, #0
     f98:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f9c:	e28b3008 	add	r3, fp, #8
     fa0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fa4:	e3a03000 	mov	r3, #0
     fa8:	e50b3010 	str	r3, [fp, #-16]
     fac:	ea000074 	b	1184 <printf+0x204>
     fb0:	e59b2004 	ldr	r2, [fp, #4]
     fb4:	e51b3010 	ldr	r3, [fp, #-16]
     fb8:	e0823003 	add	r3, r2, r3
     fbc:	e5d33000 	ldrb	r3, [r3]
     fc0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     fc4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     fc8:	e3530000 	cmp	r3, #0
     fcc:	1a00000b 	bne	1000 <printf+0x80>
     fd0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fd4:	e3530025 	cmp	r3, #37	@ 0x25
     fd8:	1a000002 	bne	fe8 <printf+0x68>
     fdc:	e3a03025 	mov	r3, #37	@ 0x25
     fe0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     fe4:	ea000063 	b	1178 <printf+0x1f8>
     fe8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fec:	e6ef3073 	uxtb	r3, r3
     ff0:	e1a01003 	mov	r1, r3
     ff4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ff8:	ebffff84 	bl	e10 <putc>
     ffc:	ea00005d 	b	1178 <printf+0x1f8>
    1000:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1004:	e3530025 	cmp	r3, #37	@ 0x25
    1008:	1a00005a 	bne	1178 <printf+0x1f8>
    100c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1010:	e3530064 	cmp	r3, #100	@ 0x64
    1014:	1a00000a 	bne	1044 <printf+0xc4>
    1018:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    101c:	e5933000 	ldr	r3, [r3]
    1020:	e1a01003 	mov	r1, r3
    1024:	e3a03001 	mov	r3, #1
    1028:	e3a0200a 	mov	r2, #10
    102c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1030:	ebffff84 	bl	e48 <printint>
    1034:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1038:	e2833004 	add	r3, r3, #4
    103c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1040:	ea00004a 	b	1170 <printf+0x1f0>
    1044:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1048:	e3530078 	cmp	r3, #120	@ 0x78
    104c:	0a000002 	beq	105c <printf+0xdc>
    1050:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1054:	e3530070 	cmp	r3, #112	@ 0x70
    1058:	1a00000a 	bne	1088 <printf+0x108>
    105c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1060:	e5933000 	ldr	r3, [r3]
    1064:	e1a01003 	mov	r1, r3
    1068:	e3a03000 	mov	r3, #0
    106c:	e3a02010 	mov	r2, #16
    1070:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1074:	ebffff73 	bl	e48 <printint>
    1078:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    107c:	e2833004 	add	r3, r3, #4
    1080:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1084:	ea000039 	b	1170 <printf+0x1f0>
    1088:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    108c:	e3530073 	cmp	r3, #115	@ 0x73
    1090:	1a000018 	bne	10f8 <printf+0x178>
    1094:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1098:	e5933000 	ldr	r3, [r3]
    109c:	e50b300c 	str	r3, [fp, #-12]
    10a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10a4:	e2833004 	add	r3, r3, #4
    10a8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10ac:	e51b300c 	ldr	r3, [fp, #-12]
    10b0:	e3530000 	cmp	r3, #0
    10b4:	1a00000a 	bne	10e4 <printf+0x164>
    10b8:	e59f30f4 	ldr	r3, [pc, #244]	@ 11b4 <printf+0x234>
    10bc:	e50b300c 	str	r3, [fp, #-12]
    10c0:	ea000007 	b	10e4 <printf+0x164>
    10c4:	e51b300c 	ldr	r3, [fp, #-12]
    10c8:	e5d33000 	ldrb	r3, [r3]
    10cc:	e1a01003 	mov	r1, r3
    10d0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10d4:	ebffff4d 	bl	e10 <putc>
    10d8:	e51b300c 	ldr	r3, [fp, #-12]
    10dc:	e2833001 	add	r3, r3, #1
    10e0:	e50b300c 	str	r3, [fp, #-12]
    10e4:	e51b300c 	ldr	r3, [fp, #-12]
    10e8:	e5d33000 	ldrb	r3, [r3]
    10ec:	e3530000 	cmp	r3, #0
    10f0:	1afffff3 	bne	10c4 <printf+0x144>
    10f4:	ea00001d 	b	1170 <printf+0x1f0>
    10f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10fc:	e3530063 	cmp	r3, #99	@ 0x63
    1100:	1a000009 	bne	112c <printf+0x1ac>
    1104:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1108:	e5933000 	ldr	r3, [r3]
    110c:	e6ef3073 	uxtb	r3, r3
    1110:	e1a01003 	mov	r1, r3
    1114:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1118:	ebffff3c 	bl	e10 <putc>
    111c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1120:	e2833004 	add	r3, r3, #4
    1124:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1128:	ea000010 	b	1170 <printf+0x1f0>
    112c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1130:	e3530025 	cmp	r3, #37	@ 0x25
    1134:	1a000005 	bne	1150 <printf+0x1d0>
    1138:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    113c:	e6ef3073 	uxtb	r3, r3
    1140:	e1a01003 	mov	r1, r3
    1144:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1148:	ebffff30 	bl	e10 <putc>
    114c:	ea000007 	b	1170 <printf+0x1f0>
    1150:	e3a01025 	mov	r1, #37	@ 0x25
    1154:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1158:	ebffff2c 	bl	e10 <putc>
    115c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1160:	e6ef3073 	uxtb	r3, r3
    1164:	e1a01003 	mov	r1, r3
    1168:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    116c:	ebffff27 	bl	e10 <putc>
    1170:	e3a03000 	mov	r3, #0
    1174:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1178:	e51b3010 	ldr	r3, [fp, #-16]
    117c:	e2833001 	add	r3, r3, #1
    1180:	e50b3010 	str	r3, [fp, #-16]
    1184:	e59b2004 	ldr	r2, [fp, #4]
    1188:	e51b3010 	ldr	r3, [fp, #-16]
    118c:	e0823003 	add	r3, r2, r3
    1190:	e5d33000 	ldrb	r3, [r3]
    1194:	e3530000 	cmp	r3, #0
    1198:	1affff84 	bne	fb0 <printf+0x30>
    119c:	e1a00000 	nop			@ (mov r0, r0)
    11a0:	e1a00000 	nop			@ (mov r0, r0)
    11a4:	e24bd004 	sub	sp, fp, #4
    11a8:	e8bd4800 	pop	{fp, lr}
    11ac:	e28dd00c 	add	sp, sp, #12
    11b0:	e12fff1e 	bx	lr
    11b4:	00001670 	.word	0x00001670

000011b8 <free>:
    11b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    11bc:	e28db000 	add	fp, sp, #0
    11c0:	e24dd014 	sub	sp, sp, #20
    11c4:	e50b0010 	str	r0, [fp, #-16]
    11c8:	e51b3010 	ldr	r3, [fp, #-16]
    11cc:	e2433008 	sub	r3, r3, #8
    11d0:	e50b300c 	str	r3, [fp, #-12]
    11d4:	e59f3154 	ldr	r3, [pc, #340]	@ 1330 <free+0x178>
    11d8:	e5933000 	ldr	r3, [r3]
    11dc:	e50b3008 	str	r3, [fp, #-8]
    11e0:	ea000010 	b	1228 <free+0x70>
    11e4:	e51b3008 	ldr	r3, [fp, #-8]
    11e8:	e5933000 	ldr	r3, [r3]
    11ec:	e51b2008 	ldr	r2, [fp, #-8]
    11f0:	e1520003 	cmp	r2, r3
    11f4:	3a000008 	bcc	121c <free+0x64>
    11f8:	e51b200c 	ldr	r2, [fp, #-12]
    11fc:	e51b3008 	ldr	r3, [fp, #-8]
    1200:	e1520003 	cmp	r2, r3
    1204:	8a000010 	bhi	124c <free+0x94>
    1208:	e51b3008 	ldr	r3, [fp, #-8]
    120c:	e5933000 	ldr	r3, [r3]
    1210:	e51b200c 	ldr	r2, [fp, #-12]
    1214:	e1520003 	cmp	r2, r3
    1218:	3a00000b 	bcc	124c <free+0x94>
    121c:	e51b3008 	ldr	r3, [fp, #-8]
    1220:	e5933000 	ldr	r3, [r3]
    1224:	e50b3008 	str	r3, [fp, #-8]
    1228:	e51b200c 	ldr	r2, [fp, #-12]
    122c:	e51b3008 	ldr	r3, [fp, #-8]
    1230:	e1520003 	cmp	r2, r3
    1234:	9affffea 	bls	11e4 <free+0x2c>
    1238:	e51b3008 	ldr	r3, [fp, #-8]
    123c:	e5933000 	ldr	r3, [r3]
    1240:	e51b200c 	ldr	r2, [fp, #-12]
    1244:	e1520003 	cmp	r2, r3
    1248:	2affffe5 	bcs	11e4 <free+0x2c>
    124c:	e51b300c 	ldr	r3, [fp, #-12]
    1250:	e5933004 	ldr	r3, [r3, #4]
    1254:	e1a03183 	lsl	r3, r3, #3
    1258:	e51b200c 	ldr	r2, [fp, #-12]
    125c:	e0822003 	add	r2, r2, r3
    1260:	e51b3008 	ldr	r3, [fp, #-8]
    1264:	e5933000 	ldr	r3, [r3]
    1268:	e1520003 	cmp	r2, r3
    126c:	1a00000d 	bne	12a8 <free+0xf0>
    1270:	e51b300c 	ldr	r3, [fp, #-12]
    1274:	e5932004 	ldr	r2, [r3, #4]
    1278:	e51b3008 	ldr	r3, [fp, #-8]
    127c:	e5933000 	ldr	r3, [r3]
    1280:	e5933004 	ldr	r3, [r3, #4]
    1284:	e0822003 	add	r2, r2, r3
    1288:	e51b300c 	ldr	r3, [fp, #-12]
    128c:	e5832004 	str	r2, [r3, #4]
    1290:	e51b3008 	ldr	r3, [fp, #-8]
    1294:	e5933000 	ldr	r3, [r3]
    1298:	e5932000 	ldr	r2, [r3]
    129c:	e51b300c 	ldr	r3, [fp, #-12]
    12a0:	e5832000 	str	r2, [r3]
    12a4:	ea000003 	b	12b8 <free+0x100>
    12a8:	e51b3008 	ldr	r3, [fp, #-8]
    12ac:	e5932000 	ldr	r2, [r3]
    12b0:	e51b300c 	ldr	r3, [fp, #-12]
    12b4:	e5832000 	str	r2, [r3]
    12b8:	e51b3008 	ldr	r3, [fp, #-8]
    12bc:	e5933004 	ldr	r3, [r3, #4]
    12c0:	e1a03183 	lsl	r3, r3, #3
    12c4:	e51b2008 	ldr	r2, [fp, #-8]
    12c8:	e0823003 	add	r3, r2, r3
    12cc:	e51b200c 	ldr	r2, [fp, #-12]
    12d0:	e1520003 	cmp	r2, r3
    12d4:	1a00000b 	bne	1308 <free+0x150>
    12d8:	e51b3008 	ldr	r3, [fp, #-8]
    12dc:	e5932004 	ldr	r2, [r3, #4]
    12e0:	e51b300c 	ldr	r3, [fp, #-12]
    12e4:	e5933004 	ldr	r3, [r3, #4]
    12e8:	e0822003 	add	r2, r2, r3
    12ec:	e51b3008 	ldr	r3, [fp, #-8]
    12f0:	e5832004 	str	r2, [r3, #4]
    12f4:	e51b300c 	ldr	r3, [fp, #-12]
    12f8:	e5932000 	ldr	r2, [r3]
    12fc:	e51b3008 	ldr	r3, [fp, #-8]
    1300:	e5832000 	str	r2, [r3]
    1304:	ea000002 	b	1314 <free+0x15c>
    1308:	e51b3008 	ldr	r3, [fp, #-8]
    130c:	e51b200c 	ldr	r2, [fp, #-12]
    1310:	e5832000 	str	r2, [r3]
    1314:	e59f2014 	ldr	r2, [pc, #20]	@ 1330 <free+0x178>
    1318:	e51b3008 	ldr	r3, [fp, #-8]
    131c:	e5823000 	str	r3, [r2]
    1320:	e1a00000 	nop			@ (mov r0, r0)
    1324:	e28bd000 	add	sp, fp, #0
    1328:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    132c:	e12fff1e 	bx	lr
    1330:	00001694 	.word	0x00001694

00001334 <morecore>:
    1334:	e92d4800 	push	{fp, lr}
    1338:	e28db004 	add	fp, sp, #4
    133c:	e24dd010 	sub	sp, sp, #16
    1340:	e50b0010 	str	r0, [fp, #-16]
    1344:	e51b3010 	ldr	r3, [fp, #-16]
    1348:	e3530a01 	cmp	r3, #4096	@ 0x1000
    134c:	2a000001 	bcs	1358 <morecore+0x24>
    1350:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1354:	e50b3010 	str	r3, [fp, #-16]
    1358:	e51b3010 	ldr	r3, [fp, #-16]
    135c:	e1a03183 	lsl	r3, r3, #3
    1360:	e1a00003 	mov	r0, r3
    1364:	ebfffe07 	bl	b88 <sbrk>
    1368:	e50b0008 	str	r0, [fp, #-8]
    136c:	e51b3008 	ldr	r3, [fp, #-8]
    1370:	e3730001 	cmn	r3, #1
    1374:	1a000001 	bne	1380 <morecore+0x4c>
    1378:	e3a03000 	mov	r3, #0
    137c:	ea00000a 	b	13ac <morecore+0x78>
    1380:	e51b3008 	ldr	r3, [fp, #-8]
    1384:	e50b300c 	str	r3, [fp, #-12]
    1388:	e51b300c 	ldr	r3, [fp, #-12]
    138c:	e51b2010 	ldr	r2, [fp, #-16]
    1390:	e5832004 	str	r2, [r3, #4]
    1394:	e51b300c 	ldr	r3, [fp, #-12]
    1398:	e2833008 	add	r3, r3, #8
    139c:	e1a00003 	mov	r0, r3
    13a0:	ebffff84 	bl	11b8 <free>
    13a4:	e59f300c 	ldr	r3, [pc, #12]	@ 13b8 <morecore+0x84>
    13a8:	e5933000 	ldr	r3, [r3]
    13ac:	e1a00003 	mov	r0, r3
    13b0:	e24bd004 	sub	sp, fp, #4
    13b4:	e8bd8800 	pop	{fp, pc}
    13b8:	00001694 	.word	0x00001694

000013bc <malloc>:
    13bc:	e92d4800 	push	{fp, lr}
    13c0:	e28db004 	add	fp, sp, #4
    13c4:	e24dd018 	sub	sp, sp, #24
    13c8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    13cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13d0:	e2833007 	add	r3, r3, #7
    13d4:	e1a031a3 	lsr	r3, r3, #3
    13d8:	e2833001 	add	r3, r3, #1
    13dc:	e50b3010 	str	r3, [fp, #-16]
    13e0:	e59f3134 	ldr	r3, [pc, #308]	@ 151c <malloc+0x160>
    13e4:	e5933000 	ldr	r3, [r3]
    13e8:	e50b300c 	str	r3, [fp, #-12]
    13ec:	e51b300c 	ldr	r3, [fp, #-12]
    13f0:	e3530000 	cmp	r3, #0
    13f4:	1a00000b 	bne	1428 <malloc+0x6c>
    13f8:	e59f3120 	ldr	r3, [pc, #288]	@ 1520 <malloc+0x164>
    13fc:	e50b300c 	str	r3, [fp, #-12]
    1400:	e59f2114 	ldr	r2, [pc, #276]	@ 151c <malloc+0x160>
    1404:	e51b300c 	ldr	r3, [fp, #-12]
    1408:	e5823000 	str	r3, [r2]
    140c:	e59f3108 	ldr	r3, [pc, #264]	@ 151c <malloc+0x160>
    1410:	e5933000 	ldr	r3, [r3]
    1414:	e59f2104 	ldr	r2, [pc, #260]	@ 1520 <malloc+0x164>
    1418:	e5823000 	str	r3, [r2]
    141c:	e59f30fc 	ldr	r3, [pc, #252]	@ 1520 <malloc+0x164>
    1420:	e3a02000 	mov	r2, #0
    1424:	e5832004 	str	r2, [r3, #4]
    1428:	e51b300c 	ldr	r3, [fp, #-12]
    142c:	e5933000 	ldr	r3, [r3]
    1430:	e50b3008 	str	r3, [fp, #-8]
    1434:	e51b3008 	ldr	r3, [fp, #-8]
    1438:	e5933004 	ldr	r3, [r3, #4]
    143c:	e51b2010 	ldr	r2, [fp, #-16]
    1440:	e1520003 	cmp	r2, r3
    1444:	8a00001e 	bhi	14c4 <malloc+0x108>
    1448:	e51b3008 	ldr	r3, [fp, #-8]
    144c:	e5933004 	ldr	r3, [r3, #4]
    1450:	e51b2010 	ldr	r2, [fp, #-16]
    1454:	e1520003 	cmp	r2, r3
    1458:	1a000004 	bne	1470 <malloc+0xb4>
    145c:	e51b3008 	ldr	r3, [fp, #-8]
    1460:	e5932000 	ldr	r2, [r3]
    1464:	e51b300c 	ldr	r3, [fp, #-12]
    1468:	e5832000 	str	r2, [r3]
    146c:	ea00000e 	b	14ac <malloc+0xf0>
    1470:	e51b3008 	ldr	r3, [fp, #-8]
    1474:	e5932004 	ldr	r2, [r3, #4]
    1478:	e51b3010 	ldr	r3, [fp, #-16]
    147c:	e0422003 	sub	r2, r2, r3
    1480:	e51b3008 	ldr	r3, [fp, #-8]
    1484:	e5832004 	str	r2, [r3, #4]
    1488:	e51b3008 	ldr	r3, [fp, #-8]
    148c:	e5933004 	ldr	r3, [r3, #4]
    1490:	e1a03183 	lsl	r3, r3, #3
    1494:	e51b2008 	ldr	r2, [fp, #-8]
    1498:	e0823003 	add	r3, r2, r3
    149c:	e50b3008 	str	r3, [fp, #-8]
    14a0:	e51b3008 	ldr	r3, [fp, #-8]
    14a4:	e51b2010 	ldr	r2, [fp, #-16]
    14a8:	e5832004 	str	r2, [r3, #4]
    14ac:	e59f2068 	ldr	r2, [pc, #104]	@ 151c <malloc+0x160>
    14b0:	e51b300c 	ldr	r3, [fp, #-12]
    14b4:	e5823000 	str	r3, [r2]
    14b8:	e51b3008 	ldr	r3, [fp, #-8]
    14bc:	e2833008 	add	r3, r3, #8
    14c0:	ea000012 	b	1510 <malloc+0x154>
    14c4:	e59f3050 	ldr	r3, [pc, #80]	@ 151c <malloc+0x160>
    14c8:	e5933000 	ldr	r3, [r3]
    14cc:	e51b2008 	ldr	r2, [fp, #-8]
    14d0:	e1520003 	cmp	r2, r3
    14d4:	1a000007 	bne	14f8 <malloc+0x13c>
    14d8:	e51b0010 	ldr	r0, [fp, #-16]
    14dc:	ebffff94 	bl	1334 <morecore>
    14e0:	e50b0008 	str	r0, [fp, #-8]
    14e4:	e51b3008 	ldr	r3, [fp, #-8]
    14e8:	e3530000 	cmp	r3, #0
    14ec:	1a000001 	bne	14f8 <malloc+0x13c>
    14f0:	e3a03000 	mov	r3, #0
    14f4:	ea000005 	b	1510 <malloc+0x154>
    14f8:	e51b3008 	ldr	r3, [fp, #-8]
    14fc:	e50b300c 	str	r3, [fp, #-12]
    1500:	e51b3008 	ldr	r3, [fp, #-8]
    1504:	e5933000 	ldr	r3, [r3]
    1508:	e50b3008 	str	r3, [fp, #-8]
    150c:	eaffffc8 	b	1434 <malloc+0x78>
    1510:	e1a00003 	mov	r0, r3
    1514:	e24bd004 	sub	sp, fp, #4
    1518:	e8bd8800 	pop	{fp, pc}
    151c:	00001694 	.word	0x00001694
    1520:	0000168c 	.word	0x0000168c

00001524 <__udivsi3>:
    1524:	e2512001 	subs	r2, r1, #1
    1528:	012fff1e 	bxeq	lr
    152c:	3a000036 	bcc	160c <__udivsi3+0xe8>
    1530:	e1500001 	cmp	r0, r1
    1534:	9a000022 	bls	15c4 <__udivsi3+0xa0>
    1538:	e1110002 	tst	r1, r2
    153c:	0a000023 	beq	15d0 <__udivsi3+0xac>
    1540:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1544:	01a01181 	lsleq	r1, r1, #3
    1548:	03a03008 	moveq	r3, #8
    154c:	13a03001 	movne	r3, #1
    1550:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1554:	31510000 	cmpcc	r1, r0
    1558:	31a01201 	lslcc	r1, r1, #4
    155c:	31a03203 	lslcc	r3, r3, #4
    1560:	3afffffa 	bcc	1550 <__udivsi3+0x2c>
    1564:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1568:	31510000 	cmpcc	r1, r0
    156c:	31a01081 	lslcc	r1, r1, #1
    1570:	31a03083 	lslcc	r3, r3, #1
    1574:	3afffffa 	bcc	1564 <__udivsi3+0x40>
    1578:	e3a02000 	mov	r2, #0
    157c:	e1500001 	cmp	r0, r1
    1580:	20400001 	subcs	r0, r0, r1
    1584:	21822003 	orrcs	r2, r2, r3
    1588:	e15000a1 	cmp	r0, r1, lsr #1
    158c:	204000a1 	subcs	r0, r0, r1, lsr #1
    1590:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1594:	e1500121 	cmp	r0, r1, lsr #2
    1598:	20400121 	subcs	r0, r0, r1, lsr #2
    159c:	21822123 	orrcs	r2, r2, r3, lsr #2
    15a0:	e15001a1 	cmp	r0, r1, lsr #3
    15a4:	204001a1 	subcs	r0, r0, r1, lsr #3
    15a8:	218221a3 	orrcs	r2, r2, r3, lsr #3
    15ac:	e3500000 	cmp	r0, #0
    15b0:	11b03223 	lsrsne	r3, r3, #4
    15b4:	11a01221 	lsrne	r1, r1, #4
    15b8:	1affffef 	bne	157c <__udivsi3+0x58>
    15bc:	e1a00002 	mov	r0, r2
    15c0:	e12fff1e 	bx	lr
    15c4:	03a00001 	moveq	r0, #1
    15c8:	13a00000 	movne	r0, #0
    15cc:	e12fff1e 	bx	lr
    15d0:	e3510801 	cmp	r1, #65536	@ 0x10000
    15d4:	21a01821 	lsrcs	r1, r1, #16
    15d8:	23a02010 	movcs	r2, #16
    15dc:	33a02000 	movcc	r2, #0
    15e0:	e3510c01 	cmp	r1, #256	@ 0x100
    15e4:	21a01421 	lsrcs	r1, r1, #8
    15e8:	22822008 	addcs	r2, r2, #8
    15ec:	e3510010 	cmp	r1, #16
    15f0:	21a01221 	lsrcs	r1, r1, #4
    15f4:	22822004 	addcs	r2, r2, #4
    15f8:	e3510004 	cmp	r1, #4
    15fc:	82822003 	addhi	r2, r2, #3
    1600:	908220a1 	addls	r2, r2, r1, lsr #1
    1604:	e1a00230 	lsr	r0, r0, r2
    1608:	e12fff1e 	bx	lr
    160c:	e3500000 	cmp	r0, #0
    1610:	13e00000 	mvnne	r0, #0
    1614:	ea000007 	b	1638 <__aeabi_idiv0>

00001618 <__aeabi_uidivmod>:
    1618:	e3510000 	cmp	r1, #0
    161c:	0afffffa 	beq	160c <__udivsi3+0xe8>
    1620:	e92d4003 	push	{r0, r1, lr}
    1624:	ebffffbe 	bl	1524 <__udivsi3>
    1628:	e8bd4006 	pop	{r1, r2, lr}
    162c:	e0030092 	mul	r3, r2, r0
    1630:	e0411003 	sub	r1, r1, r3
    1634:	e12fff1e 	bx	lr

00001638 <__aeabi_idiv0>:
    1638:	e12fff1e 	bx	lr
