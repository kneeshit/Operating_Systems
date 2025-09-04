
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
      30:	eb0002ca 	bl	b60 <printf>
      34:	e24b3f86 	sub	r3, fp, #536	@ 0x218
      38:	e3a02c02 	mov	r2, #512	@ 0x200
      3c:	e3a01061 	mov	r1, #97	@ 0x61
      40:	e1a00003 	mov	r0, r3
      44:	eb000099 	bl	2b0 <memset>
      48:	e3a03000 	mov	r3, #0
      4c:	e50b3008 	str	r3, [fp, #-8]
      50:	ea000006 	b	70 <main+0x70>
      54:	eb000184 	bl	66c <fork>
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
      90:	eb0002b2 	bl	b60 <printf>
      94:	e55b2010 	ldrb	r2, [fp, #-16]
      98:	e51b3008 	ldr	r3, [fp, #-8]
      9c:	e6ef3073 	uxtb	r3, r3
      a0:	e0823003 	add	r3, r2, r3
      a4:	e6ef3073 	uxtb	r3, r3
      a8:	e54b3010 	strb	r3, [fp, #-16]
      ac:	e24b3018 	sub	r3, fp, #24
      b0:	e59f10bc 	ldr	r1, [pc, #188]	@ 174 <main+0x174>
      b4:	e1a00003 	mov	r0, r3
      b8:	eb0001bc 	bl	7b0 <open>
      bc:	e50b000c 	str	r0, [fp, #-12]
      c0:	e3a03000 	mov	r3, #0
      c4:	e50b3008 	str	r3, [fp, #-8]
      c8:	ea000007 	b	ec <main+0xec>
      cc:	e24b3f86 	sub	r3, fp, #536	@ 0x218
      d0:	e3a02c02 	mov	r2, #512	@ 0x200
      d4:	e1a01003 	mov	r1, r3
      d8:	e51b000c 	ldr	r0, [fp, #-12]
      dc:	eb00018f 	bl	720 <write>
      e0:	e51b3008 	ldr	r3, [fp, #-8]
      e4:	e2833001 	add	r3, r3, #1
      e8:	e50b3008 	str	r3, [fp, #-8]
      ec:	e51b3008 	ldr	r3, [fp, #-8]
      f0:	e3530013 	cmp	r3, #19
      f4:	dafffff4 	ble	cc <main+0xcc>
      f8:	e51b000c 	ldr	r0, [fp, #-12]
      fc:	eb000190 	bl	744 <close>
     100:	e59f1070 	ldr	r1, [pc, #112]	@ 178 <main+0x178>
     104:	e3a00001 	mov	r0, #1
     108:	eb000294 	bl	b60 <printf>
     10c:	e24b3018 	sub	r3, fp, #24
     110:	e3a01000 	mov	r1, #0
     114:	e1a00003 	mov	r0, r3
     118:	eb0001a4 	bl	7b0 <open>
     11c:	e50b000c 	str	r0, [fp, #-12]
     120:	e3a03000 	mov	r3, #0
     124:	e50b3008 	str	r3, [fp, #-8]
     128:	ea000007 	b	14c <main+0x14c>
     12c:	e24b3f86 	sub	r3, fp, #536	@ 0x218
     130:	e3a02c02 	mov	r2, #512	@ 0x200
     134:	e1a01003 	mov	r1, r3
     138:	e51b000c 	ldr	r0, [fp, #-12]
     13c:	eb00016e 	bl	6fc <read>
     140:	e51b3008 	ldr	r3, [fp, #-8]
     144:	e2833001 	add	r3, r3, #1
     148:	e50b3008 	str	r3, [fp, #-8]
     14c:	e51b3008 	ldr	r3, [fp, #-8]
     150:	e3530013 	cmp	r3, #19
     154:	dafffff4 	ble	12c <main+0x12c>
     158:	e51b000c 	ldr	r0, [fp, #-12]
     15c:	eb000178 	bl	744 <close>
     160:	eb000153 	bl	6b4 <wait>
     164:	eb000149 	bl	690 <exit>
     168:	00001244 	.word	0x00001244
     16c:	0000121c 	.word	0x0000121c
     170:	00001230 	.word	0x00001230
     174:	00000202 	.word	0x00000202
     178:	0000123c 	.word	0x0000123c

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
     470:	eb0000a1 	bl	6fc <read>
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
     518:	eb0000a4 	bl	7b0 <open>
     51c:	e50b0008 	str	r0, [fp, #-8]
     520:	e51b3008 	ldr	r3, [fp, #-8]
     524:	e3530000 	cmp	r3, #0
     528:	aa000001 	bge	534 <stat+0x38>
     52c:	e3e03000 	mvn	r3, #0
     530:	ea000006 	b	550 <stat+0x54>
     534:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     538:	e51b0008 	ldr	r0, [fp, #-8]
     53c:	eb0000b6 	bl	81c <fstat>
     540:	e50b000c 	str	r0, [fp, #-12]
     544:	e51b0008 	ldr	r0, [fp, #-8]
     548:	eb00007d 	bl	744 <close>
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

0000066c <fork>:
     66c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     670:	e1a04003 	mov	r4, r3
     674:	e1a03002 	mov	r3, r2
     678:	e1a02001 	mov	r2, r1
     67c:	e1a01000 	mov	r1, r0
     680:	e3a00001 	mov	r0, #1
     684:	ef000000 	svc	0x00000000
     688:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     68c:	e12fff1e 	bx	lr

00000690 <exit>:
     690:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     694:	e1a04003 	mov	r4, r3
     698:	e1a03002 	mov	r3, r2
     69c:	e1a02001 	mov	r2, r1
     6a0:	e1a01000 	mov	r1, r0
     6a4:	e3a00002 	mov	r0, #2
     6a8:	ef000000 	svc	0x00000000
     6ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6b0:	e12fff1e 	bx	lr

000006b4 <wait>:
     6b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6b8:	e1a04003 	mov	r4, r3
     6bc:	e1a03002 	mov	r3, r2
     6c0:	e1a02001 	mov	r2, r1
     6c4:	e1a01000 	mov	r1, r0
     6c8:	e3a00003 	mov	r0, #3
     6cc:	ef000000 	svc	0x00000000
     6d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6d4:	e12fff1e 	bx	lr

000006d8 <pipe>:
     6d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6dc:	e1a04003 	mov	r4, r3
     6e0:	e1a03002 	mov	r3, r2
     6e4:	e1a02001 	mov	r2, r1
     6e8:	e1a01000 	mov	r1, r0
     6ec:	e3a00004 	mov	r0, #4
     6f0:	ef000000 	svc	0x00000000
     6f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6f8:	e12fff1e 	bx	lr

000006fc <read>:
     6fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     700:	e1a04003 	mov	r4, r3
     704:	e1a03002 	mov	r3, r2
     708:	e1a02001 	mov	r2, r1
     70c:	e1a01000 	mov	r1, r0
     710:	e3a00005 	mov	r0, #5
     714:	ef000000 	svc	0x00000000
     718:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     71c:	e12fff1e 	bx	lr

00000720 <write>:
     720:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     724:	e1a04003 	mov	r4, r3
     728:	e1a03002 	mov	r3, r2
     72c:	e1a02001 	mov	r2, r1
     730:	e1a01000 	mov	r1, r0
     734:	e3a00010 	mov	r0, #16
     738:	ef000000 	svc	0x00000000
     73c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     740:	e12fff1e 	bx	lr

00000744 <close>:
     744:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     748:	e1a04003 	mov	r4, r3
     74c:	e1a03002 	mov	r3, r2
     750:	e1a02001 	mov	r2, r1
     754:	e1a01000 	mov	r1, r0
     758:	e3a00015 	mov	r0, #21
     75c:	ef000000 	svc	0x00000000
     760:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     764:	e12fff1e 	bx	lr

00000768 <kill>:
     768:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     76c:	e1a04003 	mov	r4, r3
     770:	e1a03002 	mov	r3, r2
     774:	e1a02001 	mov	r2, r1
     778:	e1a01000 	mov	r1, r0
     77c:	e3a00006 	mov	r0, #6
     780:	ef000000 	svc	0x00000000
     784:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     788:	e12fff1e 	bx	lr

0000078c <exec>:
     78c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     790:	e1a04003 	mov	r4, r3
     794:	e1a03002 	mov	r3, r2
     798:	e1a02001 	mov	r2, r1
     79c:	e1a01000 	mov	r1, r0
     7a0:	e3a00007 	mov	r0, #7
     7a4:	ef000000 	svc	0x00000000
     7a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7ac:	e12fff1e 	bx	lr

000007b0 <open>:
     7b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7b4:	e1a04003 	mov	r4, r3
     7b8:	e1a03002 	mov	r3, r2
     7bc:	e1a02001 	mov	r2, r1
     7c0:	e1a01000 	mov	r1, r0
     7c4:	e3a0000f 	mov	r0, #15
     7c8:	ef000000 	svc	0x00000000
     7cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7d0:	e12fff1e 	bx	lr

000007d4 <mknod>:
     7d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7d8:	e1a04003 	mov	r4, r3
     7dc:	e1a03002 	mov	r3, r2
     7e0:	e1a02001 	mov	r2, r1
     7e4:	e1a01000 	mov	r1, r0
     7e8:	e3a00011 	mov	r0, #17
     7ec:	ef000000 	svc	0x00000000
     7f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7f4:	e12fff1e 	bx	lr

000007f8 <unlink>:
     7f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7fc:	e1a04003 	mov	r4, r3
     800:	e1a03002 	mov	r3, r2
     804:	e1a02001 	mov	r2, r1
     808:	e1a01000 	mov	r1, r0
     80c:	e3a00012 	mov	r0, #18
     810:	ef000000 	svc	0x00000000
     814:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     818:	e12fff1e 	bx	lr

0000081c <fstat>:
     81c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     820:	e1a04003 	mov	r4, r3
     824:	e1a03002 	mov	r3, r2
     828:	e1a02001 	mov	r2, r1
     82c:	e1a01000 	mov	r1, r0
     830:	e3a00008 	mov	r0, #8
     834:	ef000000 	svc	0x00000000
     838:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     83c:	e12fff1e 	bx	lr

00000840 <link>:
     840:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     844:	e1a04003 	mov	r4, r3
     848:	e1a03002 	mov	r3, r2
     84c:	e1a02001 	mov	r2, r1
     850:	e1a01000 	mov	r1, r0
     854:	e3a00013 	mov	r0, #19
     858:	ef000000 	svc	0x00000000
     85c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     860:	e12fff1e 	bx	lr

00000864 <mkdir>:
     864:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     868:	e1a04003 	mov	r4, r3
     86c:	e1a03002 	mov	r3, r2
     870:	e1a02001 	mov	r2, r1
     874:	e1a01000 	mov	r1, r0
     878:	e3a00014 	mov	r0, #20
     87c:	ef000000 	svc	0x00000000
     880:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     884:	e12fff1e 	bx	lr

00000888 <chdir>:
     888:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     88c:	e1a04003 	mov	r4, r3
     890:	e1a03002 	mov	r3, r2
     894:	e1a02001 	mov	r2, r1
     898:	e1a01000 	mov	r1, r0
     89c:	e3a00009 	mov	r0, #9
     8a0:	ef000000 	svc	0x00000000
     8a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a8:	e12fff1e 	bx	lr

000008ac <dup>:
     8ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8b0:	e1a04003 	mov	r4, r3
     8b4:	e1a03002 	mov	r3, r2
     8b8:	e1a02001 	mov	r2, r1
     8bc:	e1a01000 	mov	r1, r0
     8c0:	e3a0000a 	mov	r0, #10
     8c4:	ef000000 	svc	0x00000000
     8c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8cc:	e12fff1e 	bx	lr

000008d0 <getpid>:
     8d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8d4:	e1a04003 	mov	r4, r3
     8d8:	e1a03002 	mov	r3, r2
     8dc:	e1a02001 	mov	r2, r1
     8e0:	e1a01000 	mov	r1, r0
     8e4:	e3a0000b 	mov	r0, #11
     8e8:	ef000000 	svc	0x00000000
     8ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8f0:	e12fff1e 	bx	lr

000008f4 <sbrk>:
     8f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8f8:	e1a04003 	mov	r4, r3
     8fc:	e1a03002 	mov	r3, r2
     900:	e1a02001 	mov	r2, r1
     904:	e1a01000 	mov	r1, r0
     908:	e3a0000c 	mov	r0, #12
     90c:	ef000000 	svc	0x00000000
     910:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     914:	e12fff1e 	bx	lr

00000918 <sleep>:
     918:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     91c:	e1a04003 	mov	r4, r3
     920:	e1a03002 	mov	r3, r2
     924:	e1a02001 	mov	r2, r1
     928:	e1a01000 	mov	r1, r0
     92c:	e3a0000d 	mov	r0, #13
     930:	ef000000 	svc	0x00000000
     934:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     938:	e12fff1e 	bx	lr

0000093c <uptime>:
     93c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     940:	e1a04003 	mov	r4, r3
     944:	e1a03002 	mov	r3, r2
     948:	e1a02001 	mov	r2, r1
     94c:	e1a01000 	mov	r1, r0
     950:	e3a0000e 	mov	r0, #14
     954:	ef000000 	svc	0x00000000
     958:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     95c:	e12fff1e 	bx	lr

00000960 <getprocs>:
     960:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     964:	e1a04003 	mov	r4, r3
     968:	e1a03002 	mov	r3, r2
     96c:	e1a02001 	mov	r2, r1
     970:	e1a01000 	mov	r1, r0
     974:	e3a00016 	mov	r0, #22
     978:	ef000000 	svc	0x00000000
     97c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     980:	e12fff1e 	bx	lr

00000984 <settickets>:
     984:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     988:	e1a04003 	mov	r4, r3
     98c:	e1a03002 	mov	r3, r2
     990:	e1a02001 	mov	r2, r1
     994:	e1a01000 	mov	r1, r0
     998:	e3a00017 	mov	r0, #23
     99c:	ef000000 	svc	0x00000000
     9a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a4:	e12fff1e 	bx	lr

000009a8 <srand>:
     9a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9ac:	e1a04003 	mov	r4, r3
     9b0:	e1a03002 	mov	r3, r2
     9b4:	e1a02001 	mov	r2, r1
     9b8:	e1a01000 	mov	r1, r0
     9bc:	e3a00018 	mov	r0, #24
     9c0:	ef000000 	svc	0x00000000
     9c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c8:	e12fff1e 	bx	lr

000009cc <getpinfo>:
     9cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9d0:	e1a04003 	mov	r4, r3
     9d4:	e1a03002 	mov	r3, r2
     9d8:	e1a02001 	mov	r2, r1
     9dc:	e1a01000 	mov	r1, r0
     9e0:	e3a00019 	mov	r0, #25
     9e4:	ef000000 	svc	0x00000000
     9e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9ec:	e12fff1e 	bx	lr

000009f0 <putc>:
     9f0:	e92d4800 	push	{fp, lr}
     9f4:	e28db004 	add	fp, sp, #4
     9f8:	e24dd008 	sub	sp, sp, #8
     9fc:	e50b0008 	str	r0, [fp, #-8]
     a00:	e1a03001 	mov	r3, r1
     a04:	e54b3009 	strb	r3, [fp, #-9]
     a08:	e24b3009 	sub	r3, fp, #9
     a0c:	e3a02001 	mov	r2, #1
     a10:	e1a01003 	mov	r1, r3
     a14:	e51b0008 	ldr	r0, [fp, #-8]
     a18:	ebffff40 	bl	720 <write>
     a1c:	e1a00000 	nop			@ (mov r0, r0)
     a20:	e24bd004 	sub	sp, fp, #4
     a24:	e8bd8800 	pop	{fp, pc}

00000a28 <printint>:
     a28:	e92d4800 	push	{fp, lr}
     a2c:	e28db004 	add	fp, sp, #4
     a30:	e24dd030 	sub	sp, sp, #48	@ 0x30
     a34:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     a38:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     a3c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     a40:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     a44:	e3a03000 	mov	r3, #0
     a48:	e50b300c 	str	r3, [fp, #-12]
     a4c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     a50:	e3530000 	cmp	r3, #0
     a54:	0a000008 	beq	a7c <printint+0x54>
     a58:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a5c:	e3530000 	cmp	r3, #0
     a60:	aa000005 	bge	a7c <printint+0x54>
     a64:	e3a03001 	mov	r3, #1
     a68:	e50b300c 	str	r3, [fp, #-12]
     a6c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a70:	e2633000 	rsb	r3, r3, #0
     a74:	e50b3010 	str	r3, [fp, #-16]
     a78:	ea000001 	b	a84 <printint+0x5c>
     a7c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a80:	e50b3010 	str	r3, [fp, #-16]
     a84:	e3a03000 	mov	r3, #0
     a88:	e50b3008 	str	r3, [fp, #-8]
     a8c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     a90:	e51b3010 	ldr	r3, [fp, #-16]
     a94:	e1a01002 	mov	r1, r2
     a98:	e1a00003 	mov	r0, r3
     a9c:	eb0001d5 	bl	11f8 <__aeabi_uidivmod>
     aa0:	e1a03001 	mov	r3, r1
     aa4:	e1a01003 	mov	r1, r3
     aa8:	e51b3008 	ldr	r3, [fp, #-8]
     aac:	e2832001 	add	r2, r3, #1
     ab0:	e50b2008 	str	r2, [fp, #-8]
     ab4:	e59f20a0 	ldr	r2, [pc, #160]	@ b5c <printint+0x134>
     ab8:	e7d22001 	ldrb	r2, [r2, r1]
     abc:	e2433004 	sub	r3, r3, #4
     ac0:	e083300b 	add	r3, r3, fp
     ac4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ac8:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     acc:	e1a01003 	mov	r1, r3
     ad0:	e51b0010 	ldr	r0, [fp, #-16]
     ad4:	eb00018a 	bl	1104 <__udivsi3>
     ad8:	e1a03000 	mov	r3, r0
     adc:	e50b3010 	str	r3, [fp, #-16]
     ae0:	e51b3010 	ldr	r3, [fp, #-16]
     ae4:	e3530000 	cmp	r3, #0
     ae8:	1affffe7 	bne	a8c <printint+0x64>
     aec:	e51b300c 	ldr	r3, [fp, #-12]
     af0:	e3530000 	cmp	r3, #0
     af4:	0a00000e 	beq	b34 <printint+0x10c>
     af8:	e51b3008 	ldr	r3, [fp, #-8]
     afc:	e2832001 	add	r2, r3, #1
     b00:	e50b2008 	str	r2, [fp, #-8]
     b04:	e2433004 	sub	r3, r3, #4
     b08:	e083300b 	add	r3, r3, fp
     b0c:	e3a0202d 	mov	r2, #45	@ 0x2d
     b10:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     b14:	ea000006 	b	b34 <printint+0x10c>
     b18:	e24b2020 	sub	r2, fp, #32
     b1c:	e51b3008 	ldr	r3, [fp, #-8]
     b20:	e0823003 	add	r3, r2, r3
     b24:	e5d33000 	ldrb	r3, [r3]
     b28:	e1a01003 	mov	r1, r3
     b2c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     b30:	ebffffae 	bl	9f0 <putc>
     b34:	e51b3008 	ldr	r3, [fp, #-8]
     b38:	e2433001 	sub	r3, r3, #1
     b3c:	e50b3008 	str	r3, [fp, #-8]
     b40:	e51b3008 	ldr	r3, [fp, #-8]
     b44:	e3530000 	cmp	r3, #0
     b48:	aafffff2 	bge	b18 <printint+0xf0>
     b4c:	e1a00000 	nop			@ (mov r0, r0)
     b50:	e1a00000 	nop			@ (mov r0, r0)
     b54:	e24bd004 	sub	sp, fp, #4
     b58:	e8bd8800 	pop	{fp, pc}
     b5c:	00001258 	.word	0x00001258

00000b60 <printf>:
     b60:	e92d000e 	push	{r1, r2, r3}
     b64:	e92d4800 	push	{fp, lr}
     b68:	e28db004 	add	fp, sp, #4
     b6c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     b70:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     b74:	e3a03000 	mov	r3, #0
     b78:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b7c:	e28b3008 	add	r3, fp, #8
     b80:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b84:	e3a03000 	mov	r3, #0
     b88:	e50b3010 	str	r3, [fp, #-16]
     b8c:	ea000074 	b	d64 <printf+0x204>
     b90:	e59b2004 	ldr	r2, [fp, #4]
     b94:	e51b3010 	ldr	r3, [fp, #-16]
     b98:	e0823003 	add	r3, r2, r3
     b9c:	e5d33000 	ldrb	r3, [r3]
     ba0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     ba4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ba8:	e3530000 	cmp	r3, #0
     bac:	1a00000b 	bne	be0 <printf+0x80>
     bb0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bb4:	e3530025 	cmp	r3, #37	@ 0x25
     bb8:	1a000002 	bne	bc8 <printf+0x68>
     bbc:	e3a03025 	mov	r3, #37	@ 0x25
     bc0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     bc4:	ea000063 	b	d58 <printf+0x1f8>
     bc8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bcc:	e6ef3073 	uxtb	r3, r3
     bd0:	e1a01003 	mov	r1, r3
     bd4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bd8:	ebffff84 	bl	9f0 <putc>
     bdc:	ea00005d 	b	d58 <printf+0x1f8>
     be0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     be4:	e3530025 	cmp	r3, #37	@ 0x25
     be8:	1a00005a 	bne	d58 <printf+0x1f8>
     bec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bf0:	e3530064 	cmp	r3, #100	@ 0x64
     bf4:	1a00000a 	bne	c24 <printf+0xc4>
     bf8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bfc:	e5933000 	ldr	r3, [r3]
     c00:	e1a01003 	mov	r1, r3
     c04:	e3a03001 	mov	r3, #1
     c08:	e3a0200a 	mov	r2, #10
     c0c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c10:	ebffff84 	bl	a28 <printint>
     c14:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c18:	e2833004 	add	r3, r3, #4
     c1c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c20:	ea00004a 	b	d50 <printf+0x1f0>
     c24:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c28:	e3530078 	cmp	r3, #120	@ 0x78
     c2c:	0a000002 	beq	c3c <printf+0xdc>
     c30:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c34:	e3530070 	cmp	r3, #112	@ 0x70
     c38:	1a00000a 	bne	c68 <printf+0x108>
     c3c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c40:	e5933000 	ldr	r3, [r3]
     c44:	e1a01003 	mov	r1, r3
     c48:	e3a03000 	mov	r3, #0
     c4c:	e3a02010 	mov	r2, #16
     c50:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c54:	ebffff73 	bl	a28 <printint>
     c58:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c5c:	e2833004 	add	r3, r3, #4
     c60:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c64:	ea000039 	b	d50 <printf+0x1f0>
     c68:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c6c:	e3530073 	cmp	r3, #115	@ 0x73
     c70:	1a000018 	bne	cd8 <printf+0x178>
     c74:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c78:	e5933000 	ldr	r3, [r3]
     c7c:	e50b300c 	str	r3, [fp, #-12]
     c80:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c84:	e2833004 	add	r3, r3, #4
     c88:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c8c:	e51b300c 	ldr	r3, [fp, #-12]
     c90:	e3530000 	cmp	r3, #0
     c94:	1a00000a 	bne	cc4 <printf+0x164>
     c98:	e59f30f4 	ldr	r3, [pc, #244]	@ d94 <printf+0x234>
     c9c:	e50b300c 	str	r3, [fp, #-12]
     ca0:	ea000007 	b	cc4 <printf+0x164>
     ca4:	e51b300c 	ldr	r3, [fp, #-12]
     ca8:	e5d33000 	ldrb	r3, [r3]
     cac:	e1a01003 	mov	r1, r3
     cb0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cb4:	ebffff4d 	bl	9f0 <putc>
     cb8:	e51b300c 	ldr	r3, [fp, #-12]
     cbc:	e2833001 	add	r3, r3, #1
     cc0:	e50b300c 	str	r3, [fp, #-12]
     cc4:	e51b300c 	ldr	r3, [fp, #-12]
     cc8:	e5d33000 	ldrb	r3, [r3]
     ccc:	e3530000 	cmp	r3, #0
     cd0:	1afffff3 	bne	ca4 <printf+0x144>
     cd4:	ea00001d 	b	d50 <printf+0x1f0>
     cd8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cdc:	e3530063 	cmp	r3, #99	@ 0x63
     ce0:	1a000009 	bne	d0c <printf+0x1ac>
     ce4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ce8:	e5933000 	ldr	r3, [r3]
     cec:	e6ef3073 	uxtb	r3, r3
     cf0:	e1a01003 	mov	r1, r3
     cf4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cf8:	ebffff3c 	bl	9f0 <putc>
     cfc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d00:	e2833004 	add	r3, r3, #4
     d04:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d08:	ea000010 	b	d50 <printf+0x1f0>
     d0c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d10:	e3530025 	cmp	r3, #37	@ 0x25
     d14:	1a000005 	bne	d30 <printf+0x1d0>
     d18:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d1c:	e6ef3073 	uxtb	r3, r3
     d20:	e1a01003 	mov	r1, r3
     d24:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d28:	ebffff30 	bl	9f0 <putc>
     d2c:	ea000007 	b	d50 <printf+0x1f0>
     d30:	e3a01025 	mov	r1, #37	@ 0x25
     d34:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d38:	ebffff2c 	bl	9f0 <putc>
     d3c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d40:	e6ef3073 	uxtb	r3, r3
     d44:	e1a01003 	mov	r1, r3
     d48:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d4c:	ebffff27 	bl	9f0 <putc>
     d50:	e3a03000 	mov	r3, #0
     d54:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d58:	e51b3010 	ldr	r3, [fp, #-16]
     d5c:	e2833001 	add	r3, r3, #1
     d60:	e50b3010 	str	r3, [fp, #-16]
     d64:	e59b2004 	ldr	r2, [fp, #4]
     d68:	e51b3010 	ldr	r3, [fp, #-16]
     d6c:	e0823003 	add	r3, r2, r3
     d70:	e5d33000 	ldrb	r3, [r3]
     d74:	e3530000 	cmp	r3, #0
     d78:	1affff84 	bne	b90 <printf+0x30>
     d7c:	e1a00000 	nop			@ (mov r0, r0)
     d80:	e1a00000 	nop			@ (mov r0, r0)
     d84:	e24bd004 	sub	sp, fp, #4
     d88:	e8bd4800 	pop	{fp, lr}
     d8c:	e28dd00c 	add	sp, sp, #12
     d90:	e12fff1e 	bx	lr
     d94:	00001250 	.word	0x00001250

00000d98 <free>:
     d98:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     d9c:	e28db000 	add	fp, sp, #0
     da0:	e24dd014 	sub	sp, sp, #20
     da4:	e50b0010 	str	r0, [fp, #-16]
     da8:	e51b3010 	ldr	r3, [fp, #-16]
     dac:	e2433008 	sub	r3, r3, #8
     db0:	e50b300c 	str	r3, [fp, #-12]
     db4:	e59f3154 	ldr	r3, [pc, #340]	@ f10 <free+0x178>
     db8:	e5933000 	ldr	r3, [r3]
     dbc:	e50b3008 	str	r3, [fp, #-8]
     dc0:	ea000010 	b	e08 <free+0x70>
     dc4:	e51b3008 	ldr	r3, [fp, #-8]
     dc8:	e5933000 	ldr	r3, [r3]
     dcc:	e51b2008 	ldr	r2, [fp, #-8]
     dd0:	e1520003 	cmp	r2, r3
     dd4:	3a000008 	bcc	dfc <free+0x64>
     dd8:	e51b200c 	ldr	r2, [fp, #-12]
     ddc:	e51b3008 	ldr	r3, [fp, #-8]
     de0:	e1520003 	cmp	r2, r3
     de4:	8a000010 	bhi	e2c <free+0x94>
     de8:	e51b3008 	ldr	r3, [fp, #-8]
     dec:	e5933000 	ldr	r3, [r3]
     df0:	e51b200c 	ldr	r2, [fp, #-12]
     df4:	e1520003 	cmp	r2, r3
     df8:	3a00000b 	bcc	e2c <free+0x94>
     dfc:	e51b3008 	ldr	r3, [fp, #-8]
     e00:	e5933000 	ldr	r3, [r3]
     e04:	e50b3008 	str	r3, [fp, #-8]
     e08:	e51b200c 	ldr	r2, [fp, #-12]
     e0c:	e51b3008 	ldr	r3, [fp, #-8]
     e10:	e1520003 	cmp	r2, r3
     e14:	9affffea 	bls	dc4 <free+0x2c>
     e18:	e51b3008 	ldr	r3, [fp, #-8]
     e1c:	e5933000 	ldr	r3, [r3]
     e20:	e51b200c 	ldr	r2, [fp, #-12]
     e24:	e1520003 	cmp	r2, r3
     e28:	2affffe5 	bcs	dc4 <free+0x2c>
     e2c:	e51b300c 	ldr	r3, [fp, #-12]
     e30:	e5933004 	ldr	r3, [r3, #4]
     e34:	e1a03183 	lsl	r3, r3, #3
     e38:	e51b200c 	ldr	r2, [fp, #-12]
     e3c:	e0822003 	add	r2, r2, r3
     e40:	e51b3008 	ldr	r3, [fp, #-8]
     e44:	e5933000 	ldr	r3, [r3]
     e48:	e1520003 	cmp	r2, r3
     e4c:	1a00000d 	bne	e88 <free+0xf0>
     e50:	e51b300c 	ldr	r3, [fp, #-12]
     e54:	e5932004 	ldr	r2, [r3, #4]
     e58:	e51b3008 	ldr	r3, [fp, #-8]
     e5c:	e5933000 	ldr	r3, [r3]
     e60:	e5933004 	ldr	r3, [r3, #4]
     e64:	e0822003 	add	r2, r2, r3
     e68:	e51b300c 	ldr	r3, [fp, #-12]
     e6c:	e5832004 	str	r2, [r3, #4]
     e70:	e51b3008 	ldr	r3, [fp, #-8]
     e74:	e5933000 	ldr	r3, [r3]
     e78:	e5932000 	ldr	r2, [r3]
     e7c:	e51b300c 	ldr	r3, [fp, #-12]
     e80:	e5832000 	str	r2, [r3]
     e84:	ea000003 	b	e98 <free+0x100>
     e88:	e51b3008 	ldr	r3, [fp, #-8]
     e8c:	e5932000 	ldr	r2, [r3]
     e90:	e51b300c 	ldr	r3, [fp, #-12]
     e94:	e5832000 	str	r2, [r3]
     e98:	e51b3008 	ldr	r3, [fp, #-8]
     e9c:	e5933004 	ldr	r3, [r3, #4]
     ea0:	e1a03183 	lsl	r3, r3, #3
     ea4:	e51b2008 	ldr	r2, [fp, #-8]
     ea8:	e0823003 	add	r3, r2, r3
     eac:	e51b200c 	ldr	r2, [fp, #-12]
     eb0:	e1520003 	cmp	r2, r3
     eb4:	1a00000b 	bne	ee8 <free+0x150>
     eb8:	e51b3008 	ldr	r3, [fp, #-8]
     ebc:	e5932004 	ldr	r2, [r3, #4]
     ec0:	e51b300c 	ldr	r3, [fp, #-12]
     ec4:	e5933004 	ldr	r3, [r3, #4]
     ec8:	e0822003 	add	r2, r2, r3
     ecc:	e51b3008 	ldr	r3, [fp, #-8]
     ed0:	e5832004 	str	r2, [r3, #4]
     ed4:	e51b300c 	ldr	r3, [fp, #-12]
     ed8:	e5932000 	ldr	r2, [r3]
     edc:	e51b3008 	ldr	r3, [fp, #-8]
     ee0:	e5832000 	str	r2, [r3]
     ee4:	ea000002 	b	ef4 <free+0x15c>
     ee8:	e51b3008 	ldr	r3, [fp, #-8]
     eec:	e51b200c 	ldr	r2, [fp, #-12]
     ef0:	e5832000 	str	r2, [r3]
     ef4:	e59f2014 	ldr	r2, [pc, #20]	@ f10 <free+0x178>
     ef8:	e51b3008 	ldr	r3, [fp, #-8]
     efc:	e5823000 	str	r3, [r2]
     f00:	e1a00000 	nop			@ (mov r0, r0)
     f04:	e28bd000 	add	sp, fp, #0
     f08:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     f0c:	e12fff1e 	bx	lr
     f10:	00001274 	.word	0x00001274

00000f14 <morecore>:
     f14:	e92d4800 	push	{fp, lr}
     f18:	e28db004 	add	fp, sp, #4
     f1c:	e24dd010 	sub	sp, sp, #16
     f20:	e50b0010 	str	r0, [fp, #-16]
     f24:	e51b3010 	ldr	r3, [fp, #-16]
     f28:	e3530a01 	cmp	r3, #4096	@ 0x1000
     f2c:	2a000001 	bcs	f38 <morecore+0x24>
     f30:	e3a03a01 	mov	r3, #4096	@ 0x1000
     f34:	e50b3010 	str	r3, [fp, #-16]
     f38:	e51b3010 	ldr	r3, [fp, #-16]
     f3c:	e1a03183 	lsl	r3, r3, #3
     f40:	e1a00003 	mov	r0, r3
     f44:	ebfffe6a 	bl	8f4 <sbrk>
     f48:	e50b0008 	str	r0, [fp, #-8]
     f4c:	e51b3008 	ldr	r3, [fp, #-8]
     f50:	e3730001 	cmn	r3, #1
     f54:	1a000001 	bne	f60 <morecore+0x4c>
     f58:	e3a03000 	mov	r3, #0
     f5c:	ea00000a 	b	f8c <morecore+0x78>
     f60:	e51b3008 	ldr	r3, [fp, #-8]
     f64:	e50b300c 	str	r3, [fp, #-12]
     f68:	e51b300c 	ldr	r3, [fp, #-12]
     f6c:	e51b2010 	ldr	r2, [fp, #-16]
     f70:	e5832004 	str	r2, [r3, #4]
     f74:	e51b300c 	ldr	r3, [fp, #-12]
     f78:	e2833008 	add	r3, r3, #8
     f7c:	e1a00003 	mov	r0, r3
     f80:	ebffff84 	bl	d98 <free>
     f84:	e59f300c 	ldr	r3, [pc, #12]	@ f98 <morecore+0x84>
     f88:	e5933000 	ldr	r3, [r3]
     f8c:	e1a00003 	mov	r0, r3
     f90:	e24bd004 	sub	sp, fp, #4
     f94:	e8bd8800 	pop	{fp, pc}
     f98:	00001274 	.word	0x00001274

00000f9c <malloc>:
     f9c:	e92d4800 	push	{fp, lr}
     fa0:	e28db004 	add	fp, sp, #4
     fa4:	e24dd018 	sub	sp, sp, #24
     fa8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     fac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fb0:	e2833007 	add	r3, r3, #7
     fb4:	e1a031a3 	lsr	r3, r3, #3
     fb8:	e2833001 	add	r3, r3, #1
     fbc:	e50b3010 	str	r3, [fp, #-16]
     fc0:	e59f3134 	ldr	r3, [pc, #308]	@ 10fc <malloc+0x160>
     fc4:	e5933000 	ldr	r3, [r3]
     fc8:	e50b300c 	str	r3, [fp, #-12]
     fcc:	e51b300c 	ldr	r3, [fp, #-12]
     fd0:	e3530000 	cmp	r3, #0
     fd4:	1a00000b 	bne	1008 <malloc+0x6c>
     fd8:	e59f3120 	ldr	r3, [pc, #288]	@ 1100 <malloc+0x164>
     fdc:	e50b300c 	str	r3, [fp, #-12]
     fe0:	e59f2114 	ldr	r2, [pc, #276]	@ 10fc <malloc+0x160>
     fe4:	e51b300c 	ldr	r3, [fp, #-12]
     fe8:	e5823000 	str	r3, [r2]
     fec:	e59f3108 	ldr	r3, [pc, #264]	@ 10fc <malloc+0x160>
     ff0:	e5933000 	ldr	r3, [r3]
     ff4:	e59f2104 	ldr	r2, [pc, #260]	@ 1100 <malloc+0x164>
     ff8:	e5823000 	str	r3, [r2]
     ffc:	e59f30fc 	ldr	r3, [pc, #252]	@ 1100 <malloc+0x164>
    1000:	e3a02000 	mov	r2, #0
    1004:	e5832004 	str	r2, [r3, #4]
    1008:	e51b300c 	ldr	r3, [fp, #-12]
    100c:	e5933000 	ldr	r3, [r3]
    1010:	e50b3008 	str	r3, [fp, #-8]
    1014:	e51b3008 	ldr	r3, [fp, #-8]
    1018:	e5933004 	ldr	r3, [r3, #4]
    101c:	e51b2010 	ldr	r2, [fp, #-16]
    1020:	e1520003 	cmp	r2, r3
    1024:	8a00001e 	bhi	10a4 <malloc+0x108>
    1028:	e51b3008 	ldr	r3, [fp, #-8]
    102c:	e5933004 	ldr	r3, [r3, #4]
    1030:	e51b2010 	ldr	r2, [fp, #-16]
    1034:	e1520003 	cmp	r2, r3
    1038:	1a000004 	bne	1050 <malloc+0xb4>
    103c:	e51b3008 	ldr	r3, [fp, #-8]
    1040:	e5932000 	ldr	r2, [r3]
    1044:	e51b300c 	ldr	r3, [fp, #-12]
    1048:	e5832000 	str	r2, [r3]
    104c:	ea00000e 	b	108c <malloc+0xf0>
    1050:	e51b3008 	ldr	r3, [fp, #-8]
    1054:	e5932004 	ldr	r2, [r3, #4]
    1058:	e51b3010 	ldr	r3, [fp, #-16]
    105c:	e0422003 	sub	r2, r2, r3
    1060:	e51b3008 	ldr	r3, [fp, #-8]
    1064:	e5832004 	str	r2, [r3, #4]
    1068:	e51b3008 	ldr	r3, [fp, #-8]
    106c:	e5933004 	ldr	r3, [r3, #4]
    1070:	e1a03183 	lsl	r3, r3, #3
    1074:	e51b2008 	ldr	r2, [fp, #-8]
    1078:	e0823003 	add	r3, r2, r3
    107c:	e50b3008 	str	r3, [fp, #-8]
    1080:	e51b3008 	ldr	r3, [fp, #-8]
    1084:	e51b2010 	ldr	r2, [fp, #-16]
    1088:	e5832004 	str	r2, [r3, #4]
    108c:	e59f2068 	ldr	r2, [pc, #104]	@ 10fc <malloc+0x160>
    1090:	e51b300c 	ldr	r3, [fp, #-12]
    1094:	e5823000 	str	r3, [r2]
    1098:	e51b3008 	ldr	r3, [fp, #-8]
    109c:	e2833008 	add	r3, r3, #8
    10a0:	ea000012 	b	10f0 <malloc+0x154>
    10a4:	e59f3050 	ldr	r3, [pc, #80]	@ 10fc <malloc+0x160>
    10a8:	e5933000 	ldr	r3, [r3]
    10ac:	e51b2008 	ldr	r2, [fp, #-8]
    10b0:	e1520003 	cmp	r2, r3
    10b4:	1a000007 	bne	10d8 <malloc+0x13c>
    10b8:	e51b0010 	ldr	r0, [fp, #-16]
    10bc:	ebffff94 	bl	f14 <morecore>
    10c0:	e50b0008 	str	r0, [fp, #-8]
    10c4:	e51b3008 	ldr	r3, [fp, #-8]
    10c8:	e3530000 	cmp	r3, #0
    10cc:	1a000001 	bne	10d8 <malloc+0x13c>
    10d0:	e3a03000 	mov	r3, #0
    10d4:	ea000005 	b	10f0 <malloc+0x154>
    10d8:	e51b3008 	ldr	r3, [fp, #-8]
    10dc:	e50b300c 	str	r3, [fp, #-12]
    10e0:	e51b3008 	ldr	r3, [fp, #-8]
    10e4:	e5933000 	ldr	r3, [r3]
    10e8:	e50b3008 	str	r3, [fp, #-8]
    10ec:	eaffffc8 	b	1014 <malloc+0x78>
    10f0:	e1a00003 	mov	r0, r3
    10f4:	e24bd004 	sub	sp, fp, #4
    10f8:	e8bd8800 	pop	{fp, pc}
    10fc:	00001274 	.word	0x00001274
    1100:	0000126c 	.word	0x0000126c

00001104 <__udivsi3>:
    1104:	e2512001 	subs	r2, r1, #1
    1108:	012fff1e 	bxeq	lr
    110c:	3a000036 	bcc	11ec <__udivsi3+0xe8>
    1110:	e1500001 	cmp	r0, r1
    1114:	9a000022 	bls	11a4 <__udivsi3+0xa0>
    1118:	e1110002 	tst	r1, r2
    111c:	0a000023 	beq	11b0 <__udivsi3+0xac>
    1120:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1124:	01a01181 	lsleq	r1, r1, #3
    1128:	03a03008 	moveq	r3, #8
    112c:	13a03001 	movne	r3, #1
    1130:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1134:	31510000 	cmpcc	r1, r0
    1138:	31a01201 	lslcc	r1, r1, #4
    113c:	31a03203 	lslcc	r3, r3, #4
    1140:	3afffffa 	bcc	1130 <__udivsi3+0x2c>
    1144:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1148:	31510000 	cmpcc	r1, r0
    114c:	31a01081 	lslcc	r1, r1, #1
    1150:	31a03083 	lslcc	r3, r3, #1
    1154:	3afffffa 	bcc	1144 <__udivsi3+0x40>
    1158:	e3a02000 	mov	r2, #0
    115c:	e1500001 	cmp	r0, r1
    1160:	20400001 	subcs	r0, r0, r1
    1164:	21822003 	orrcs	r2, r2, r3
    1168:	e15000a1 	cmp	r0, r1, lsr #1
    116c:	204000a1 	subcs	r0, r0, r1, lsr #1
    1170:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1174:	e1500121 	cmp	r0, r1, lsr #2
    1178:	20400121 	subcs	r0, r0, r1, lsr #2
    117c:	21822123 	orrcs	r2, r2, r3, lsr #2
    1180:	e15001a1 	cmp	r0, r1, lsr #3
    1184:	204001a1 	subcs	r0, r0, r1, lsr #3
    1188:	218221a3 	orrcs	r2, r2, r3, lsr #3
    118c:	e3500000 	cmp	r0, #0
    1190:	11b03223 	lsrsne	r3, r3, #4
    1194:	11a01221 	lsrne	r1, r1, #4
    1198:	1affffef 	bne	115c <__udivsi3+0x58>
    119c:	e1a00002 	mov	r0, r2
    11a0:	e12fff1e 	bx	lr
    11a4:	03a00001 	moveq	r0, #1
    11a8:	13a00000 	movne	r0, #0
    11ac:	e12fff1e 	bx	lr
    11b0:	e3510801 	cmp	r1, #65536	@ 0x10000
    11b4:	21a01821 	lsrcs	r1, r1, #16
    11b8:	23a02010 	movcs	r2, #16
    11bc:	33a02000 	movcc	r2, #0
    11c0:	e3510c01 	cmp	r1, #256	@ 0x100
    11c4:	21a01421 	lsrcs	r1, r1, #8
    11c8:	22822008 	addcs	r2, r2, #8
    11cc:	e3510010 	cmp	r1, #16
    11d0:	21a01221 	lsrcs	r1, r1, #4
    11d4:	22822004 	addcs	r2, r2, #4
    11d8:	e3510004 	cmp	r1, #4
    11dc:	82822003 	addhi	r2, r2, #3
    11e0:	908220a1 	addls	r2, r2, r1, lsr #1
    11e4:	e1a00230 	lsr	r0, r0, r2
    11e8:	e12fff1e 	bx	lr
    11ec:	e3500000 	cmp	r0, #0
    11f0:	13e00000 	mvnne	r0, #0
    11f4:	ea000007 	b	1218 <__aeabi_idiv0>

000011f8 <__aeabi_uidivmod>:
    11f8:	e3510000 	cmp	r1, #0
    11fc:	0afffffa 	beq	11ec <__udivsi3+0xe8>
    1200:	e92d4003 	push	{r0, r1, lr}
    1204:	ebffffbe 	bl	1104 <__udivsi3>
    1208:	e8bd4006 	pop	{r1, r2, lr}
    120c:	e0030092 	mul	r3, r2, r0
    1210:	e0411003 	sub	r1, r1, r3
    1214:	e12fff1e 	bx	lr

00001218 <__aeabi_idiv0>:
    1218:	e12fff1e 	bx	lr
