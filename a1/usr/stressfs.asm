
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
      30:	eb0002b3 	bl	b04 <printf>
      34:	e24b3f86 	sub	r3, fp, #536	@ 0x218
      38:	e3a02c02 	mov	r2, #512	@ 0x200
      3c:	e3a01061 	mov	r1, #97	@ 0x61
      40:	e1a00003 	mov	r0, r3
      44:	eb000099 	bl	2b0 <memset>
      48:	e3a03000 	mov	r3, #0
      4c:	e50b3008 	str	r3, [fp, #-8]
      50:	ea000006 	b	70 <main+0x70>
      54:	eb000188 	bl	67c <fork>
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
      90:	eb00029b 	bl	b04 <printf>
      94:	e55b2010 	ldrb	r2, [fp, #-16]
      98:	e51b3008 	ldr	r3, [fp, #-8]
      9c:	e6ef3073 	uxtb	r3, r3
      a0:	e0823003 	add	r3, r2, r3
      a4:	e6ef3073 	uxtb	r3, r3
      a8:	e54b3010 	strb	r3, [fp, #-16]
      ac:	e24b3018 	sub	r3, fp, #24
      b0:	e59f10bc 	ldr	r1, [pc, #188]	@ 174 <main+0x174>
      b4:	e1a00003 	mov	r0, r3
      b8:	eb0001c0 	bl	7c0 <open>
      bc:	e50b000c 	str	r0, [fp, #-12]
      c0:	e3a03000 	mov	r3, #0
      c4:	e50b3008 	str	r3, [fp, #-8]
      c8:	ea000007 	b	ec <main+0xec>
      cc:	e24b3f86 	sub	r3, fp, #536	@ 0x218
      d0:	e3a02c02 	mov	r2, #512	@ 0x200
      d4:	e1a01003 	mov	r1, r3
      d8:	e51b000c 	ldr	r0, [fp, #-12]
      dc:	eb000193 	bl	730 <write>
      e0:	e51b3008 	ldr	r3, [fp, #-8]
      e4:	e2833001 	add	r3, r3, #1
      e8:	e50b3008 	str	r3, [fp, #-8]
      ec:	e51b3008 	ldr	r3, [fp, #-8]
      f0:	e3530013 	cmp	r3, #19
      f4:	dafffff4 	ble	cc <main+0xcc>
      f8:	e51b000c 	ldr	r0, [fp, #-12]
      fc:	eb000194 	bl	754 <close>
     100:	e59f1070 	ldr	r1, [pc, #112]	@ 178 <main+0x178>
     104:	e3a00001 	mov	r0, #1
     108:	eb00027d 	bl	b04 <printf>
     10c:	e24b3018 	sub	r3, fp, #24
     110:	e3a01000 	mov	r1, #0
     114:	e1a00003 	mov	r0, r3
     118:	eb0001a8 	bl	7c0 <open>
     11c:	e50b000c 	str	r0, [fp, #-12]
     120:	e3a03000 	mov	r3, #0
     124:	e50b3008 	str	r3, [fp, #-8]
     128:	ea000007 	b	14c <main+0x14c>
     12c:	e24b3f86 	sub	r3, fp, #536	@ 0x218
     130:	e3a02c02 	mov	r2, #512	@ 0x200
     134:	e1a01003 	mov	r1, r3
     138:	e51b000c 	ldr	r0, [fp, #-12]
     13c:	eb000172 	bl	70c <read>
     140:	e51b3008 	ldr	r3, [fp, #-8]
     144:	e2833001 	add	r3, r3, #1
     148:	e50b3008 	str	r3, [fp, #-8]
     14c:	e51b3008 	ldr	r3, [fp, #-8]
     150:	e3530013 	cmp	r3, #19
     154:	dafffff4 	ble	12c <main+0x12c>
     158:	e51b000c 	ldr	r0, [fp, #-12]
     15c:	eb00017c 	bl	754 <close>
     160:	eb000157 	bl	6c4 <wait>
     164:	eb00014d 	bl	6a0 <exit>
     168:	000011e8 	.word	0x000011e8
     16c:	000011c0 	.word	0x000011c0
     170:	000011d4 	.word	0x000011d4
     174:	00000202 	.word	0x00000202
     178:	000011e0 	.word	0x000011e0

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
     470:	eb0000a5 	bl	70c <read>
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
     518:	eb0000a8 	bl	7c0 <open>
     51c:	e50b0008 	str	r0, [fp, #-8]
     520:	e51b3008 	ldr	r3, [fp, #-8]
     524:	e3530000 	cmp	r3, #0
     528:	aa000001 	bge	534 <stat+0x38>
     52c:	e3e03000 	mvn	r3, #0
     530:	ea000006 	b	550 <stat+0x54>
     534:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     538:	e51b0008 	ldr	r0, [fp, #-8]
     53c:	eb0000ba 	bl	82c <fstat>
     540:	e50b000c 	str	r0, [fp, #-12]
     544:	e51b0008 	ldr	r0, [fp, #-8]
     548:	eb000081 	bl	754 <close>
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
     5d4:	e353002f 	cmp	r3, #47	@ 0x2f
     5d8:	9a000003 	bls	5ec <atoi+0x90>
     5dc:	e51b3010 	ldr	r3, [fp, #-16]
     5e0:	e5d33000 	ldrb	r3, [r3]
     5e4:	e3530039 	cmp	r3, #57	@ 0x39
     5e8:	9a000001 	bls	5f4 <atoi+0x98>
     5ec:	e3e03000 	mvn	r3, #0
     5f0:	ea000000 	b	5f8 <atoi+0x9c>
     5f4:	e51b3008 	ldr	r3, [fp, #-8]
     5f8:	e1a00003 	mov	r0, r3
     5fc:	e28bd000 	add	sp, fp, #0
     600:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     604:	e12fff1e 	bx	lr

00000608 <memmove>:
     608:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     60c:	e28db000 	add	fp, sp, #0
     610:	e24dd01c 	sub	sp, sp, #28
     614:	e50b0010 	str	r0, [fp, #-16]
     618:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     61c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     620:	e51b3010 	ldr	r3, [fp, #-16]
     624:	e50b3008 	str	r3, [fp, #-8]
     628:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     62c:	e50b300c 	str	r3, [fp, #-12]
     630:	ea000007 	b	654 <memmove+0x4c>
     634:	e51b200c 	ldr	r2, [fp, #-12]
     638:	e2823001 	add	r3, r2, #1
     63c:	e50b300c 	str	r3, [fp, #-12]
     640:	e51b3008 	ldr	r3, [fp, #-8]
     644:	e2831001 	add	r1, r3, #1
     648:	e50b1008 	str	r1, [fp, #-8]
     64c:	e5d22000 	ldrb	r2, [r2]
     650:	e5c32000 	strb	r2, [r3]
     654:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     658:	e2432001 	sub	r2, r3, #1
     65c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     660:	e3530000 	cmp	r3, #0
     664:	cafffff2 	bgt	634 <memmove+0x2c>
     668:	e51b3010 	ldr	r3, [fp, #-16]
     66c:	e1a00003 	mov	r0, r3
     670:	e28bd000 	add	sp, fp, #0
     674:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     678:	e12fff1e 	bx	lr

0000067c <fork>:
     67c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     680:	e1a04003 	mov	r4, r3
     684:	e1a03002 	mov	r3, r2
     688:	e1a02001 	mov	r2, r1
     68c:	e1a01000 	mov	r1, r0
     690:	e3a00001 	mov	r0, #1
     694:	ef000000 	svc	0x00000000
     698:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     69c:	e12fff1e 	bx	lr

000006a0 <exit>:
     6a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6a4:	e1a04003 	mov	r4, r3
     6a8:	e1a03002 	mov	r3, r2
     6ac:	e1a02001 	mov	r2, r1
     6b0:	e1a01000 	mov	r1, r0
     6b4:	e3a00002 	mov	r0, #2
     6b8:	ef000000 	svc	0x00000000
     6bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6c0:	e12fff1e 	bx	lr

000006c4 <wait>:
     6c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6c8:	e1a04003 	mov	r4, r3
     6cc:	e1a03002 	mov	r3, r2
     6d0:	e1a02001 	mov	r2, r1
     6d4:	e1a01000 	mov	r1, r0
     6d8:	e3a00003 	mov	r0, #3
     6dc:	ef000000 	svc	0x00000000
     6e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6e4:	e12fff1e 	bx	lr

000006e8 <pipe>:
     6e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6ec:	e1a04003 	mov	r4, r3
     6f0:	e1a03002 	mov	r3, r2
     6f4:	e1a02001 	mov	r2, r1
     6f8:	e1a01000 	mov	r1, r0
     6fc:	e3a00004 	mov	r0, #4
     700:	ef000000 	svc	0x00000000
     704:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     708:	e12fff1e 	bx	lr

0000070c <read>:
     70c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     710:	e1a04003 	mov	r4, r3
     714:	e1a03002 	mov	r3, r2
     718:	e1a02001 	mov	r2, r1
     71c:	e1a01000 	mov	r1, r0
     720:	e3a00005 	mov	r0, #5
     724:	ef000000 	svc	0x00000000
     728:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     72c:	e12fff1e 	bx	lr

00000730 <write>:
     730:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     734:	e1a04003 	mov	r4, r3
     738:	e1a03002 	mov	r3, r2
     73c:	e1a02001 	mov	r2, r1
     740:	e1a01000 	mov	r1, r0
     744:	e3a00010 	mov	r0, #16
     748:	ef000000 	svc	0x00000000
     74c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     750:	e12fff1e 	bx	lr

00000754 <close>:
     754:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     758:	e1a04003 	mov	r4, r3
     75c:	e1a03002 	mov	r3, r2
     760:	e1a02001 	mov	r2, r1
     764:	e1a01000 	mov	r1, r0
     768:	e3a00015 	mov	r0, #21
     76c:	ef000000 	svc	0x00000000
     770:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     774:	e12fff1e 	bx	lr

00000778 <kill>:
     778:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     77c:	e1a04003 	mov	r4, r3
     780:	e1a03002 	mov	r3, r2
     784:	e1a02001 	mov	r2, r1
     788:	e1a01000 	mov	r1, r0
     78c:	e3a00006 	mov	r0, #6
     790:	ef000000 	svc	0x00000000
     794:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     798:	e12fff1e 	bx	lr

0000079c <exec>:
     79c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7a0:	e1a04003 	mov	r4, r3
     7a4:	e1a03002 	mov	r3, r2
     7a8:	e1a02001 	mov	r2, r1
     7ac:	e1a01000 	mov	r1, r0
     7b0:	e3a00007 	mov	r0, #7
     7b4:	ef000000 	svc	0x00000000
     7b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7bc:	e12fff1e 	bx	lr

000007c0 <open>:
     7c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7c4:	e1a04003 	mov	r4, r3
     7c8:	e1a03002 	mov	r3, r2
     7cc:	e1a02001 	mov	r2, r1
     7d0:	e1a01000 	mov	r1, r0
     7d4:	e3a0000f 	mov	r0, #15
     7d8:	ef000000 	svc	0x00000000
     7dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7e0:	e12fff1e 	bx	lr

000007e4 <mknod>:
     7e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7e8:	e1a04003 	mov	r4, r3
     7ec:	e1a03002 	mov	r3, r2
     7f0:	e1a02001 	mov	r2, r1
     7f4:	e1a01000 	mov	r1, r0
     7f8:	e3a00011 	mov	r0, #17
     7fc:	ef000000 	svc	0x00000000
     800:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     804:	e12fff1e 	bx	lr

00000808 <unlink>:
     808:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     80c:	e1a04003 	mov	r4, r3
     810:	e1a03002 	mov	r3, r2
     814:	e1a02001 	mov	r2, r1
     818:	e1a01000 	mov	r1, r0
     81c:	e3a00012 	mov	r0, #18
     820:	ef000000 	svc	0x00000000
     824:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     828:	e12fff1e 	bx	lr

0000082c <fstat>:
     82c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     830:	e1a04003 	mov	r4, r3
     834:	e1a03002 	mov	r3, r2
     838:	e1a02001 	mov	r2, r1
     83c:	e1a01000 	mov	r1, r0
     840:	e3a00008 	mov	r0, #8
     844:	ef000000 	svc	0x00000000
     848:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     84c:	e12fff1e 	bx	lr

00000850 <link>:
     850:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     854:	e1a04003 	mov	r4, r3
     858:	e1a03002 	mov	r3, r2
     85c:	e1a02001 	mov	r2, r1
     860:	e1a01000 	mov	r1, r0
     864:	e3a00013 	mov	r0, #19
     868:	ef000000 	svc	0x00000000
     86c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     870:	e12fff1e 	bx	lr

00000874 <mkdir>:
     874:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     878:	e1a04003 	mov	r4, r3
     87c:	e1a03002 	mov	r3, r2
     880:	e1a02001 	mov	r2, r1
     884:	e1a01000 	mov	r1, r0
     888:	e3a00014 	mov	r0, #20
     88c:	ef000000 	svc	0x00000000
     890:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     894:	e12fff1e 	bx	lr

00000898 <chdir>:
     898:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     89c:	e1a04003 	mov	r4, r3
     8a0:	e1a03002 	mov	r3, r2
     8a4:	e1a02001 	mov	r2, r1
     8a8:	e1a01000 	mov	r1, r0
     8ac:	e3a00009 	mov	r0, #9
     8b0:	ef000000 	svc	0x00000000
     8b4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8b8:	e12fff1e 	bx	lr

000008bc <dup>:
     8bc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8c0:	e1a04003 	mov	r4, r3
     8c4:	e1a03002 	mov	r3, r2
     8c8:	e1a02001 	mov	r2, r1
     8cc:	e1a01000 	mov	r1, r0
     8d0:	e3a0000a 	mov	r0, #10
     8d4:	ef000000 	svc	0x00000000
     8d8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8dc:	e12fff1e 	bx	lr

000008e0 <getpid>:
     8e0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8e4:	e1a04003 	mov	r4, r3
     8e8:	e1a03002 	mov	r3, r2
     8ec:	e1a02001 	mov	r2, r1
     8f0:	e1a01000 	mov	r1, r0
     8f4:	e3a0000b 	mov	r0, #11
     8f8:	ef000000 	svc	0x00000000
     8fc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     900:	e12fff1e 	bx	lr

00000904 <sbrk>:
     904:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     908:	e1a04003 	mov	r4, r3
     90c:	e1a03002 	mov	r3, r2
     910:	e1a02001 	mov	r2, r1
     914:	e1a01000 	mov	r1, r0
     918:	e3a0000c 	mov	r0, #12
     91c:	ef000000 	svc	0x00000000
     920:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     924:	e12fff1e 	bx	lr

00000928 <sleep>:
     928:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     92c:	e1a04003 	mov	r4, r3
     930:	e1a03002 	mov	r3, r2
     934:	e1a02001 	mov	r2, r1
     938:	e1a01000 	mov	r1, r0
     93c:	e3a0000d 	mov	r0, #13
     940:	ef000000 	svc	0x00000000
     944:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     948:	e12fff1e 	bx	lr

0000094c <uptime>:
     94c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     950:	e1a04003 	mov	r4, r3
     954:	e1a03002 	mov	r3, r2
     958:	e1a02001 	mov	r2, r1
     95c:	e1a01000 	mov	r1, r0
     960:	e3a0000e 	mov	r0, #14
     964:	ef000000 	svc	0x00000000
     968:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     96c:	e12fff1e 	bx	lr

00000970 <getprocs>:
     970:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     974:	e1a04003 	mov	r4, r3
     978:	e1a03002 	mov	r3, r2
     97c:	e1a02001 	mov	r2, r1
     980:	e1a01000 	mov	r1, r0
     984:	e3a00016 	mov	r0, #22
     988:	ef000000 	svc	0x00000000
     98c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     990:	e12fff1e 	bx	lr

00000994 <putc>:
     994:	e92d4800 	push	{fp, lr}
     998:	e28db004 	add	fp, sp, #4
     99c:	e24dd008 	sub	sp, sp, #8
     9a0:	e50b0008 	str	r0, [fp, #-8]
     9a4:	e1a03001 	mov	r3, r1
     9a8:	e54b3009 	strb	r3, [fp, #-9]
     9ac:	e24b3009 	sub	r3, fp, #9
     9b0:	e3a02001 	mov	r2, #1
     9b4:	e1a01003 	mov	r1, r3
     9b8:	e51b0008 	ldr	r0, [fp, #-8]
     9bc:	ebffff5b 	bl	730 <write>
     9c0:	e1a00000 	nop			@ (mov r0, r0)
     9c4:	e24bd004 	sub	sp, fp, #4
     9c8:	e8bd8800 	pop	{fp, pc}

000009cc <printint>:
     9cc:	e92d4800 	push	{fp, lr}
     9d0:	e28db004 	add	fp, sp, #4
     9d4:	e24dd030 	sub	sp, sp, #48	@ 0x30
     9d8:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     9dc:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     9e0:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     9e4:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     9e8:	e3a03000 	mov	r3, #0
     9ec:	e50b300c 	str	r3, [fp, #-12]
     9f0:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     9f4:	e3530000 	cmp	r3, #0
     9f8:	0a000008 	beq	a20 <printint+0x54>
     9fc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a00:	e3530000 	cmp	r3, #0
     a04:	aa000005 	bge	a20 <printint+0x54>
     a08:	e3a03001 	mov	r3, #1
     a0c:	e50b300c 	str	r3, [fp, #-12]
     a10:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a14:	e2633000 	rsb	r3, r3, #0
     a18:	e50b3010 	str	r3, [fp, #-16]
     a1c:	ea000001 	b	a28 <printint+0x5c>
     a20:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a24:	e50b3010 	str	r3, [fp, #-16]
     a28:	e3a03000 	mov	r3, #0
     a2c:	e50b3008 	str	r3, [fp, #-8]
     a30:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     a34:	e51b3010 	ldr	r3, [fp, #-16]
     a38:	e1a01002 	mov	r1, r2
     a3c:	e1a00003 	mov	r0, r3
     a40:	eb0001d5 	bl	119c <__aeabi_uidivmod>
     a44:	e1a03001 	mov	r3, r1
     a48:	e1a01003 	mov	r1, r3
     a4c:	e51b3008 	ldr	r3, [fp, #-8]
     a50:	e2832001 	add	r2, r3, #1
     a54:	e50b2008 	str	r2, [fp, #-8]
     a58:	e59f20a0 	ldr	r2, [pc, #160]	@ b00 <printint+0x134>
     a5c:	e7d22001 	ldrb	r2, [r2, r1]
     a60:	e2433004 	sub	r3, r3, #4
     a64:	e083300b 	add	r3, r3, fp
     a68:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a6c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     a70:	e1a01003 	mov	r1, r3
     a74:	e51b0010 	ldr	r0, [fp, #-16]
     a78:	eb00018a 	bl	10a8 <__udivsi3>
     a7c:	e1a03000 	mov	r3, r0
     a80:	e50b3010 	str	r3, [fp, #-16]
     a84:	e51b3010 	ldr	r3, [fp, #-16]
     a88:	e3530000 	cmp	r3, #0
     a8c:	1affffe7 	bne	a30 <printint+0x64>
     a90:	e51b300c 	ldr	r3, [fp, #-12]
     a94:	e3530000 	cmp	r3, #0
     a98:	0a00000e 	beq	ad8 <printint+0x10c>
     a9c:	e51b3008 	ldr	r3, [fp, #-8]
     aa0:	e2832001 	add	r2, r3, #1
     aa4:	e50b2008 	str	r2, [fp, #-8]
     aa8:	e2433004 	sub	r3, r3, #4
     aac:	e083300b 	add	r3, r3, fp
     ab0:	e3a0202d 	mov	r2, #45	@ 0x2d
     ab4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ab8:	ea000006 	b	ad8 <printint+0x10c>
     abc:	e24b2020 	sub	r2, fp, #32
     ac0:	e51b3008 	ldr	r3, [fp, #-8]
     ac4:	e0823003 	add	r3, r2, r3
     ac8:	e5d33000 	ldrb	r3, [r3]
     acc:	e1a01003 	mov	r1, r3
     ad0:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     ad4:	ebffffae 	bl	994 <putc>
     ad8:	e51b3008 	ldr	r3, [fp, #-8]
     adc:	e2433001 	sub	r3, r3, #1
     ae0:	e50b3008 	str	r3, [fp, #-8]
     ae4:	e51b3008 	ldr	r3, [fp, #-8]
     ae8:	e3530000 	cmp	r3, #0
     aec:	aafffff2 	bge	abc <printint+0xf0>
     af0:	e1a00000 	nop			@ (mov r0, r0)
     af4:	e1a00000 	nop			@ (mov r0, r0)
     af8:	e24bd004 	sub	sp, fp, #4
     afc:	e8bd8800 	pop	{fp, pc}
     b00:	000011fc 	.word	0x000011fc

00000b04 <printf>:
     b04:	e92d000e 	push	{r1, r2, r3}
     b08:	e92d4800 	push	{fp, lr}
     b0c:	e28db004 	add	fp, sp, #4
     b10:	e24dd024 	sub	sp, sp, #36	@ 0x24
     b14:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     b18:	e3a03000 	mov	r3, #0
     b1c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b20:	e28b3008 	add	r3, fp, #8
     b24:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b28:	e3a03000 	mov	r3, #0
     b2c:	e50b3010 	str	r3, [fp, #-16]
     b30:	ea000074 	b	d08 <printf+0x204>
     b34:	e59b2004 	ldr	r2, [fp, #4]
     b38:	e51b3010 	ldr	r3, [fp, #-16]
     b3c:	e0823003 	add	r3, r2, r3
     b40:	e5d33000 	ldrb	r3, [r3]
     b44:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     b48:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b4c:	e3530000 	cmp	r3, #0
     b50:	1a00000b 	bne	b84 <printf+0x80>
     b54:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b58:	e3530025 	cmp	r3, #37	@ 0x25
     b5c:	1a000002 	bne	b6c <printf+0x68>
     b60:	e3a03025 	mov	r3, #37	@ 0x25
     b64:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b68:	ea000063 	b	cfc <printf+0x1f8>
     b6c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b70:	e6ef3073 	uxtb	r3, r3
     b74:	e1a01003 	mov	r1, r3
     b78:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b7c:	ebffff84 	bl	994 <putc>
     b80:	ea00005d 	b	cfc <printf+0x1f8>
     b84:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b88:	e3530025 	cmp	r3, #37	@ 0x25
     b8c:	1a00005a 	bne	cfc <printf+0x1f8>
     b90:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b94:	e3530064 	cmp	r3, #100	@ 0x64
     b98:	1a00000a 	bne	bc8 <printf+0xc4>
     b9c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ba0:	e5933000 	ldr	r3, [r3]
     ba4:	e1a01003 	mov	r1, r3
     ba8:	e3a03001 	mov	r3, #1
     bac:	e3a0200a 	mov	r2, #10
     bb0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bb4:	ebffff84 	bl	9cc <printint>
     bb8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bbc:	e2833004 	add	r3, r3, #4
     bc0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bc4:	ea00004a 	b	cf4 <printf+0x1f0>
     bc8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bcc:	e3530078 	cmp	r3, #120	@ 0x78
     bd0:	0a000002 	beq	be0 <printf+0xdc>
     bd4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bd8:	e3530070 	cmp	r3, #112	@ 0x70
     bdc:	1a00000a 	bne	c0c <printf+0x108>
     be0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     be4:	e5933000 	ldr	r3, [r3]
     be8:	e1a01003 	mov	r1, r3
     bec:	e3a03000 	mov	r3, #0
     bf0:	e3a02010 	mov	r2, #16
     bf4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bf8:	ebffff73 	bl	9cc <printint>
     bfc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c00:	e2833004 	add	r3, r3, #4
     c04:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c08:	ea000039 	b	cf4 <printf+0x1f0>
     c0c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c10:	e3530073 	cmp	r3, #115	@ 0x73
     c14:	1a000018 	bne	c7c <printf+0x178>
     c18:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c1c:	e5933000 	ldr	r3, [r3]
     c20:	e50b300c 	str	r3, [fp, #-12]
     c24:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c28:	e2833004 	add	r3, r3, #4
     c2c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c30:	e51b300c 	ldr	r3, [fp, #-12]
     c34:	e3530000 	cmp	r3, #0
     c38:	1a00000a 	bne	c68 <printf+0x164>
     c3c:	e59f30f4 	ldr	r3, [pc, #244]	@ d38 <printf+0x234>
     c40:	e50b300c 	str	r3, [fp, #-12]
     c44:	ea000007 	b	c68 <printf+0x164>
     c48:	e51b300c 	ldr	r3, [fp, #-12]
     c4c:	e5d33000 	ldrb	r3, [r3]
     c50:	e1a01003 	mov	r1, r3
     c54:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c58:	ebffff4d 	bl	994 <putc>
     c5c:	e51b300c 	ldr	r3, [fp, #-12]
     c60:	e2833001 	add	r3, r3, #1
     c64:	e50b300c 	str	r3, [fp, #-12]
     c68:	e51b300c 	ldr	r3, [fp, #-12]
     c6c:	e5d33000 	ldrb	r3, [r3]
     c70:	e3530000 	cmp	r3, #0
     c74:	1afffff3 	bne	c48 <printf+0x144>
     c78:	ea00001d 	b	cf4 <printf+0x1f0>
     c7c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c80:	e3530063 	cmp	r3, #99	@ 0x63
     c84:	1a000009 	bne	cb0 <printf+0x1ac>
     c88:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c8c:	e5933000 	ldr	r3, [r3]
     c90:	e6ef3073 	uxtb	r3, r3
     c94:	e1a01003 	mov	r1, r3
     c98:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c9c:	ebffff3c 	bl	994 <putc>
     ca0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ca4:	e2833004 	add	r3, r3, #4
     ca8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     cac:	ea000010 	b	cf4 <printf+0x1f0>
     cb0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cb4:	e3530025 	cmp	r3, #37	@ 0x25
     cb8:	1a000005 	bne	cd4 <printf+0x1d0>
     cbc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cc0:	e6ef3073 	uxtb	r3, r3
     cc4:	e1a01003 	mov	r1, r3
     cc8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ccc:	ebffff30 	bl	994 <putc>
     cd0:	ea000007 	b	cf4 <printf+0x1f0>
     cd4:	e3a01025 	mov	r1, #37	@ 0x25
     cd8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cdc:	ebffff2c 	bl	994 <putc>
     ce0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ce4:	e6ef3073 	uxtb	r3, r3
     ce8:	e1a01003 	mov	r1, r3
     cec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cf0:	ebffff27 	bl	994 <putc>
     cf4:	e3a03000 	mov	r3, #0
     cf8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     cfc:	e51b3010 	ldr	r3, [fp, #-16]
     d00:	e2833001 	add	r3, r3, #1
     d04:	e50b3010 	str	r3, [fp, #-16]
     d08:	e59b2004 	ldr	r2, [fp, #4]
     d0c:	e51b3010 	ldr	r3, [fp, #-16]
     d10:	e0823003 	add	r3, r2, r3
     d14:	e5d33000 	ldrb	r3, [r3]
     d18:	e3530000 	cmp	r3, #0
     d1c:	1affff84 	bne	b34 <printf+0x30>
     d20:	e1a00000 	nop			@ (mov r0, r0)
     d24:	e1a00000 	nop			@ (mov r0, r0)
     d28:	e24bd004 	sub	sp, fp, #4
     d2c:	e8bd4800 	pop	{fp, lr}
     d30:	e28dd00c 	add	sp, sp, #12
     d34:	e12fff1e 	bx	lr
     d38:	000011f4 	.word	0x000011f4

00000d3c <free>:
     d3c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     d40:	e28db000 	add	fp, sp, #0
     d44:	e24dd014 	sub	sp, sp, #20
     d48:	e50b0010 	str	r0, [fp, #-16]
     d4c:	e51b3010 	ldr	r3, [fp, #-16]
     d50:	e2433008 	sub	r3, r3, #8
     d54:	e50b300c 	str	r3, [fp, #-12]
     d58:	e59f3154 	ldr	r3, [pc, #340]	@ eb4 <free+0x178>
     d5c:	e5933000 	ldr	r3, [r3]
     d60:	e50b3008 	str	r3, [fp, #-8]
     d64:	ea000010 	b	dac <free+0x70>
     d68:	e51b3008 	ldr	r3, [fp, #-8]
     d6c:	e5933000 	ldr	r3, [r3]
     d70:	e51b2008 	ldr	r2, [fp, #-8]
     d74:	e1520003 	cmp	r2, r3
     d78:	3a000008 	bcc	da0 <free+0x64>
     d7c:	e51b200c 	ldr	r2, [fp, #-12]
     d80:	e51b3008 	ldr	r3, [fp, #-8]
     d84:	e1520003 	cmp	r2, r3
     d88:	8a000010 	bhi	dd0 <free+0x94>
     d8c:	e51b3008 	ldr	r3, [fp, #-8]
     d90:	e5933000 	ldr	r3, [r3]
     d94:	e51b200c 	ldr	r2, [fp, #-12]
     d98:	e1520003 	cmp	r2, r3
     d9c:	3a00000b 	bcc	dd0 <free+0x94>
     da0:	e51b3008 	ldr	r3, [fp, #-8]
     da4:	e5933000 	ldr	r3, [r3]
     da8:	e50b3008 	str	r3, [fp, #-8]
     dac:	e51b200c 	ldr	r2, [fp, #-12]
     db0:	e51b3008 	ldr	r3, [fp, #-8]
     db4:	e1520003 	cmp	r2, r3
     db8:	9affffea 	bls	d68 <free+0x2c>
     dbc:	e51b3008 	ldr	r3, [fp, #-8]
     dc0:	e5933000 	ldr	r3, [r3]
     dc4:	e51b200c 	ldr	r2, [fp, #-12]
     dc8:	e1520003 	cmp	r2, r3
     dcc:	2affffe5 	bcs	d68 <free+0x2c>
     dd0:	e51b300c 	ldr	r3, [fp, #-12]
     dd4:	e5933004 	ldr	r3, [r3, #4]
     dd8:	e1a03183 	lsl	r3, r3, #3
     ddc:	e51b200c 	ldr	r2, [fp, #-12]
     de0:	e0822003 	add	r2, r2, r3
     de4:	e51b3008 	ldr	r3, [fp, #-8]
     de8:	e5933000 	ldr	r3, [r3]
     dec:	e1520003 	cmp	r2, r3
     df0:	1a00000d 	bne	e2c <free+0xf0>
     df4:	e51b300c 	ldr	r3, [fp, #-12]
     df8:	e5932004 	ldr	r2, [r3, #4]
     dfc:	e51b3008 	ldr	r3, [fp, #-8]
     e00:	e5933000 	ldr	r3, [r3]
     e04:	e5933004 	ldr	r3, [r3, #4]
     e08:	e0822003 	add	r2, r2, r3
     e0c:	e51b300c 	ldr	r3, [fp, #-12]
     e10:	e5832004 	str	r2, [r3, #4]
     e14:	e51b3008 	ldr	r3, [fp, #-8]
     e18:	e5933000 	ldr	r3, [r3]
     e1c:	e5932000 	ldr	r2, [r3]
     e20:	e51b300c 	ldr	r3, [fp, #-12]
     e24:	e5832000 	str	r2, [r3]
     e28:	ea000003 	b	e3c <free+0x100>
     e2c:	e51b3008 	ldr	r3, [fp, #-8]
     e30:	e5932000 	ldr	r2, [r3]
     e34:	e51b300c 	ldr	r3, [fp, #-12]
     e38:	e5832000 	str	r2, [r3]
     e3c:	e51b3008 	ldr	r3, [fp, #-8]
     e40:	e5933004 	ldr	r3, [r3, #4]
     e44:	e1a03183 	lsl	r3, r3, #3
     e48:	e51b2008 	ldr	r2, [fp, #-8]
     e4c:	e0823003 	add	r3, r2, r3
     e50:	e51b200c 	ldr	r2, [fp, #-12]
     e54:	e1520003 	cmp	r2, r3
     e58:	1a00000b 	bne	e8c <free+0x150>
     e5c:	e51b3008 	ldr	r3, [fp, #-8]
     e60:	e5932004 	ldr	r2, [r3, #4]
     e64:	e51b300c 	ldr	r3, [fp, #-12]
     e68:	e5933004 	ldr	r3, [r3, #4]
     e6c:	e0822003 	add	r2, r2, r3
     e70:	e51b3008 	ldr	r3, [fp, #-8]
     e74:	e5832004 	str	r2, [r3, #4]
     e78:	e51b300c 	ldr	r3, [fp, #-12]
     e7c:	e5932000 	ldr	r2, [r3]
     e80:	e51b3008 	ldr	r3, [fp, #-8]
     e84:	e5832000 	str	r2, [r3]
     e88:	ea000002 	b	e98 <free+0x15c>
     e8c:	e51b3008 	ldr	r3, [fp, #-8]
     e90:	e51b200c 	ldr	r2, [fp, #-12]
     e94:	e5832000 	str	r2, [r3]
     e98:	e59f2014 	ldr	r2, [pc, #20]	@ eb4 <free+0x178>
     e9c:	e51b3008 	ldr	r3, [fp, #-8]
     ea0:	e5823000 	str	r3, [r2]
     ea4:	e1a00000 	nop			@ (mov r0, r0)
     ea8:	e28bd000 	add	sp, fp, #0
     eac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     eb0:	e12fff1e 	bx	lr
     eb4:	00001218 	.word	0x00001218

00000eb8 <morecore>:
     eb8:	e92d4800 	push	{fp, lr}
     ebc:	e28db004 	add	fp, sp, #4
     ec0:	e24dd010 	sub	sp, sp, #16
     ec4:	e50b0010 	str	r0, [fp, #-16]
     ec8:	e51b3010 	ldr	r3, [fp, #-16]
     ecc:	e3530a01 	cmp	r3, #4096	@ 0x1000
     ed0:	2a000001 	bcs	edc <morecore+0x24>
     ed4:	e3a03a01 	mov	r3, #4096	@ 0x1000
     ed8:	e50b3010 	str	r3, [fp, #-16]
     edc:	e51b3010 	ldr	r3, [fp, #-16]
     ee0:	e1a03183 	lsl	r3, r3, #3
     ee4:	e1a00003 	mov	r0, r3
     ee8:	ebfffe85 	bl	904 <sbrk>
     eec:	e50b0008 	str	r0, [fp, #-8]
     ef0:	e51b3008 	ldr	r3, [fp, #-8]
     ef4:	e3730001 	cmn	r3, #1
     ef8:	1a000001 	bne	f04 <morecore+0x4c>
     efc:	e3a03000 	mov	r3, #0
     f00:	ea00000a 	b	f30 <morecore+0x78>
     f04:	e51b3008 	ldr	r3, [fp, #-8]
     f08:	e50b300c 	str	r3, [fp, #-12]
     f0c:	e51b300c 	ldr	r3, [fp, #-12]
     f10:	e51b2010 	ldr	r2, [fp, #-16]
     f14:	e5832004 	str	r2, [r3, #4]
     f18:	e51b300c 	ldr	r3, [fp, #-12]
     f1c:	e2833008 	add	r3, r3, #8
     f20:	e1a00003 	mov	r0, r3
     f24:	ebffff84 	bl	d3c <free>
     f28:	e59f300c 	ldr	r3, [pc, #12]	@ f3c <morecore+0x84>
     f2c:	e5933000 	ldr	r3, [r3]
     f30:	e1a00003 	mov	r0, r3
     f34:	e24bd004 	sub	sp, fp, #4
     f38:	e8bd8800 	pop	{fp, pc}
     f3c:	00001218 	.word	0x00001218

00000f40 <malloc>:
     f40:	e92d4800 	push	{fp, lr}
     f44:	e28db004 	add	fp, sp, #4
     f48:	e24dd018 	sub	sp, sp, #24
     f4c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     f50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f54:	e2833007 	add	r3, r3, #7
     f58:	e1a031a3 	lsr	r3, r3, #3
     f5c:	e2833001 	add	r3, r3, #1
     f60:	e50b3010 	str	r3, [fp, #-16]
     f64:	e59f3134 	ldr	r3, [pc, #308]	@ 10a0 <malloc+0x160>
     f68:	e5933000 	ldr	r3, [r3]
     f6c:	e50b300c 	str	r3, [fp, #-12]
     f70:	e51b300c 	ldr	r3, [fp, #-12]
     f74:	e3530000 	cmp	r3, #0
     f78:	1a00000b 	bne	fac <malloc+0x6c>
     f7c:	e59f3120 	ldr	r3, [pc, #288]	@ 10a4 <malloc+0x164>
     f80:	e50b300c 	str	r3, [fp, #-12]
     f84:	e59f2114 	ldr	r2, [pc, #276]	@ 10a0 <malloc+0x160>
     f88:	e51b300c 	ldr	r3, [fp, #-12]
     f8c:	e5823000 	str	r3, [r2]
     f90:	e59f3108 	ldr	r3, [pc, #264]	@ 10a0 <malloc+0x160>
     f94:	e5933000 	ldr	r3, [r3]
     f98:	e59f2104 	ldr	r2, [pc, #260]	@ 10a4 <malloc+0x164>
     f9c:	e5823000 	str	r3, [r2]
     fa0:	e59f30fc 	ldr	r3, [pc, #252]	@ 10a4 <malloc+0x164>
     fa4:	e3a02000 	mov	r2, #0
     fa8:	e5832004 	str	r2, [r3, #4]
     fac:	e51b300c 	ldr	r3, [fp, #-12]
     fb0:	e5933000 	ldr	r3, [r3]
     fb4:	e50b3008 	str	r3, [fp, #-8]
     fb8:	e51b3008 	ldr	r3, [fp, #-8]
     fbc:	e5933004 	ldr	r3, [r3, #4]
     fc0:	e51b2010 	ldr	r2, [fp, #-16]
     fc4:	e1520003 	cmp	r2, r3
     fc8:	8a00001e 	bhi	1048 <malloc+0x108>
     fcc:	e51b3008 	ldr	r3, [fp, #-8]
     fd0:	e5933004 	ldr	r3, [r3, #4]
     fd4:	e51b2010 	ldr	r2, [fp, #-16]
     fd8:	e1520003 	cmp	r2, r3
     fdc:	1a000004 	bne	ff4 <malloc+0xb4>
     fe0:	e51b3008 	ldr	r3, [fp, #-8]
     fe4:	e5932000 	ldr	r2, [r3]
     fe8:	e51b300c 	ldr	r3, [fp, #-12]
     fec:	e5832000 	str	r2, [r3]
     ff0:	ea00000e 	b	1030 <malloc+0xf0>
     ff4:	e51b3008 	ldr	r3, [fp, #-8]
     ff8:	e5932004 	ldr	r2, [r3, #4]
     ffc:	e51b3010 	ldr	r3, [fp, #-16]
    1000:	e0422003 	sub	r2, r2, r3
    1004:	e51b3008 	ldr	r3, [fp, #-8]
    1008:	e5832004 	str	r2, [r3, #4]
    100c:	e51b3008 	ldr	r3, [fp, #-8]
    1010:	e5933004 	ldr	r3, [r3, #4]
    1014:	e1a03183 	lsl	r3, r3, #3
    1018:	e51b2008 	ldr	r2, [fp, #-8]
    101c:	e0823003 	add	r3, r2, r3
    1020:	e50b3008 	str	r3, [fp, #-8]
    1024:	e51b3008 	ldr	r3, [fp, #-8]
    1028:	e51b2010 	ldr	r2, [fp, #-16]
    102c:	e5832004 	str	r2, [r3, #4]
    1030:	e59f2068 	ldr	r2, [pc, #104]	@ 10a0 <malloc+0x160>
    1034:	e51b300c 	ldr	r3, [fp, #-12]
    1038:	e5823000 	str	r3, [r2]
    103c:	e51b3008 	ldr	r3, [fp, #-8]
    1040:	e2833008 	add	r3, r3, #8
    1044:	ea000012 	b	1094 <malloc+0x154>
    1048:	e59f3050 	ldr	r3, [pc, #80]	@ 10a0 <malloc+0x160>
    104c:	e5933000 	ldr	r3, [r3]
    1050:	e51b2008 	ldr	r2, [fp, #-8]
    1054:	e1520003 	cmp	r2, r3
    1058:	1a000007 	bne	107c <malloc+0x13c>
    105c:	e51b0010 	ldr	r0, [fp, #-16]
    1060:	ebffff94 	bl	eb8 <morecore>
    1064:	e50b0008 	str	r0, [fp, #-8]
    1068:	e51b3008 	ldr	r3, [fp, #-8]
    106c:	e3530000 	cmp	r3, #0
    1070:	1a000001 	bne	107c <malloc+0x13c>
    1074:	e3a03000 	mov	r3, #0
    1078:	ea000005 	b	1094 <malloc+0x154>
    107c:	e51b3008 	ldr	r3, [fp, #-8]
    1080:	e50b300c 	str	r3, [fp, #-12]
    1084:	e51b3008 	ldr	r3, [fp, #-8]
    1088:	e5933000 	ldr	r3, [r3]
    108c:	e50b3008 	str	r3, [fp, #-8]
    1090:	eaffffc8 	b	fb8 <malloc+0x78>
    1094:	e1a00003 	mov	r0, r3
    1098:	e24bd004 	sub	sp, fp, #4
    109c:	e8bd8800 	pop	{fp, pc}
    10a0:	00001218 	.word	0x00001218
    10a4:	00001210 	.word	0x00001210

000010a8 <__udivsi3>:
    10a8:	e2512001 	subs	r2, r1, #1
    10ac:	012fff1e 	bxeq	lr
    10b0:	3a000036 	bcc	1190 <__udivsi3+0xe8>
    10b4:	e1500001 	cmp	r0, r1
    10b8:	9a000022 	bls	1148 <__udivsi3+0xa0>
    10bc:	e1110002 	tst	r1, r2
    10c0:	0a000023 	beq	1154 <__udivsi3+0xac>
    10c4:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    10c8:	01a01181 	lsleq	r1, r1, #3
    10cc:	03a03008 	moveq	r3, #8
    10d0:	13a03001 	movne	r3, #1
    10d4:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    10d8:	31510000 	cmpcc	r1, r0
    10dc:	31a01201 	lslcc	r1, r1, #4
    10e0:	31a03203 	lslcc	r3, r3, #4
    10e4:	3afffffa 	bcc	10d4 <__udivsi3+0x2c>
    10e8:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    10ec:	31510000 	cmpcc	r1, r0
    10f0:	31a01081 	lslcc	r1, r1, #1
    10f4:	31a03083 	lslcc	r3, r3, #1
    10f8:	3afffffa 	bcc	10e8 <__udivsi3+0x40>
    10fc:	e3a02000 	mov	r2, #0
    1100:	e1500001 	cmp	r0, r1
    1104:	20400001 	subcs	r0, r0, r1
    1108:	21822003 	orrcs	r2, r2, r3
    110c:	e15000a1 	cmp	r0, r1, lsr #1
    1110:	204000a1 	subcs	r0, r0, r1, lsr #1
    1114:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1118:	e1500121 	cmp	r0, r1, lsr #2
    111c:	20400121 	subcs	r0, r0, r1, lsr #2
    1120:	21822123 	orrcs	r2, r2, r3, lsr #2
    1124:	e15001a1 	cmp	r0, r1, lsr #3
    1128:	204001a1 	subcs	r0, r0, r1, lsr #3
    112c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1130:	e3500000 	cmp	r0, #0
    1134:	11b03223 	lsrsne	r3, r3, #4
    1138:	11a01221 	lsrne	r1, r1, #4
    113c:	1affffef 	bne	1100 <__udivsi3+0x58>
    1140:	e1a00002 	mov	r0, r2
    1144:	e12fff1e 	bx	lr
    1148:	03a00001 	moveq	r0, #1
    114c:	13a00000 	movne	r0, #0
    1150:	e12fff1e 	bx	lr
    1154:	e3510801 	cmp	r1, #65536	@ 0x10000
    1158:	21a01821 	lsrcs	r1, r1, #16
    115c:	23a02010 	movcs	r2, #16
    1160:	33a02000 	movcc	r2, #0
    1164:	e3510c01 	cmp	r1, #256	@ 0x100
    1168:	21a01421 	lsrcs	r1, r1, #8
    116c:	22822008 	addcs	r2, r2, #8
    1170:	e3510010 	cmp	r1, #16
    1174:	21a01221 	lsrcs	r1, r1, #4
    1178:	22822004 	addcs	r2, r2, #4
    117c:	e3510004 	cmp	r1, #4
    1180:	82822003 	addhi	r2, r2, #3
    1184:	908220a1 	addls	r2, r2, r1, lsr #1
    1188:	e1a00230 	lsr	r0, r0, r2
    118c:	e12fff1e 	bx	lr
    1190:	e3500000 	cmp	r0, #0
    1194:	13e00000 	mvnne	r0, #0
    1198:	ea000007 	b	11bc <__aeabi_idiv0>

0000119c <__aeabi_uidivmod>:
    119c:	e3510000 	cmp	r1, #0
    11a0:	0afffffa 	beq	1190 <__udivsi3+0xe8>
    11a4:	e92d4003 	push	{r0, r1, lr}
    11a8:	ebffffbe 	bl	10a8 <__udivsi3>
    11ac:	e8bd4006 	pop	{r1, r2, lr}
    11b0:	e0030092 	mul	r3, r2, r0
    11b4:	e0411003 	sub	r1, r1, r3
    11b8:	e12fff1e 	bx	lr

000011bc <__aeabi_idiv0>:
    11bc:	e12fff1e 	bx	lr
