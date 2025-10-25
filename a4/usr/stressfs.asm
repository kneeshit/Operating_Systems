
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
      30:	eb00040b 	bl	1064 <printf>
      34:	e24b3f86 	sub	r3, fp, #536	@ 0x218
      38:	e3a02c02 	mov	r2, #512	@ 0x200
      3c:	e3a01061 	mov	r1, #97	@ 0x61
      40:	e1a00003 	mov	r0, r3
      44:	eb000099 	bl	2b0 <memset>
      48:	e3a03000 	mov	r3, #0
      4c:	e50b3008 	str	r3, [fp, #-8]
      50:	ea000006 	b	70 <main+0x70>
      54:	eb000262 	bl	9e4 <fork>
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
      90:	eb0003f3 	bl	1064 <printf>
      94:	e55b2010 	ldrb	r2, [fp, #-16]
      98:	e51b3008 	ldr	r3, [fp, #-8]
      9c:	e6ef3073 	uxtb	r3, r3
      a0:	e0823003 	add	r3, r2, r3
      a4:	e6ef3073 	uxtb	r3, r3
      a8:	e54b3010 	strb	r3, [fp, #-16]
      ac:	e24b3018 	sub	r3, fp, #24
      b0:	e59f10bc 	ldr	r1, [pc, #188]	@ 174 <main+0x174>
      b4:	e1a00003 	mov	r0, r3
      b8:	eb00029a 	bl	b28 <open>
      bc:	e50b000c 	str	r0, [fp, #-12]
      c0:	e3a03000 	mov	r3, #0
      c4:	e50b3008 	str	r3, [fp, #-8]
      c8:	ea000007 	b	ec <main+0xec>
      cc:	e24b3f86 	sub	r3, fp, #536	@ 0x218
      d0:	e3a02c02 	mov	r2, #512	@ 0x200
      d4:	e1a01003 	mov	r1, r3
      d8:	e51b000c 	ldr	r0, [fp, #-12]
      dc:	eb00026d 	bl	a98 <write>
      e0:	e51b3008 	ldr	r3, [fp, #-8]
      e4:	e2833001 	add	r3, r3, #1
      e8:	e50b3008 	str	r3, [fp, #-8]
      ec:	e51b3008 	ldr	r3, [fp, #-8]
      f0:	e3530013 	cmp	r3, #19
      f4:	dafffff4 	ble	cc <main+0xcc>
      f8:	e51b000c 	ldr	r0, [fp, #-12]
      fc:	eb00026e 	bl	abc <close>
     100:	e59f1070 	ldr	r1, [pc, #112]	@ 178 <main+0x178>
     104:	e3a00001 	mov	r0, #1
     108:	eb0003d5 	bl	1064 <printf>
     10c:	e24b3018 	sub	r3, fp, #24
     110:	e3a01000 	mov	r1, #0
     114:	e1a00003 	mov	r0, r3
     118:	eb000282 	bl	b28 <open>
     11c:	e50b000c 	str	r0, [fp, #-12]
     120:	e3a03000 	mov	r3, #0
     124:	e50b3008 	str	r3, [fp, #-8]
     128:	ea000007 	b	14c <main+0x14c>
     12c:	e24b3f86 	sub	r3, fp, #536	@ 0x218
     130:	e3a02c02 	mov	r2, #512	@ 0x200
     134:	e1a01003 	mov	r1, r3
     138:	e51b000c 	ldr	r0, [fp, #-12]
     13c:	eb00024c 	bl	a74 <read>
     140:	e51b3008 	ldr	r3, [fp, #-8]
     144:	e2833001 	add	r3, r3, #1
     148:	e50b3008 	str	r3, [fp, #-8]
     14c:	e51b3008 	ldr	r3, [fp, #-8]
     150:	e3530013 	cmp	r3, #19
     154:	dafffff4 	ble	12c <main+0x12c>
     158:	e51b000c 	ldr	r0, [fp, #-12]
     15c:	eb000256 	bl	abc <close>
     160:	eb000231 	bl	a2c <wait>
     164:	eb000227 	bl	a08 <exit>
     168:	00001748 	.word	0x00001748
     16c:	00001720 	.word	0x00001720
     170:	00001734 	.word	0x00001734
     174:	00000202 	.word	0x00000202
     178:	00001740 	.word	0x00001740

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
     470:	eb00017f 	bl	a74 <read>
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
     518:	eb000182 	bl	b28 <open>
     51c:	e50b0008 	str	r0, [fp, #-8]
     520:	e51b3008 	ldr	r3, [fp, #-8]
     524:	e3530000 	cmp	r3, #0
     528:	aa000001 	bge	534 <stat+0x38>
     52c:	e3e03000 	mvn	r3, #0
     530:	ea000006 	b	550 <stat+0x54>
     534:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     538:	e51b0008 	ldr	r0, [fp, #-8]
     53c:	eb000194 	bl	b94 <fstat>
     540:	e50b000c 	str	r0, [fp, #-12]
     544:	e51b0008 	ldr	r0, [fp, #-8]
     548:	eb00015b 	bl	abc <close>
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

000006a4 <xchg>:
     6a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6a8:	e28db000 	add	fp, sp, #0
     6ac:	e24dd00c 	sub	sp, sp, #12
     6b0:	e50b0008 	str	r0, [fp, #-8]
     6b4:	e50b100c 	str	r1, [fp, #-12]
     6b8:	e51b200c 	ldr	r2, [fp, #-12]
     6bc:	e51b3008 	ldr	r3, [fp, #-8]
     6c0:	e1931f9f 	ldrex	r1, [r3]
     6c4:	e1830f92 	strex	r0, r2, [r3]
     6c8:	e3500000 	cmp	r0, #0
     6cc:	1afffffb 	bne	6c0 <xchg+0x1c>
     6d0:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     6d4:	e1a03001 	mov	r3, r1
     6d8:	e1a00003 	mov	r0, r3
     6dc:	e28bd000 	add	sp, fp, #0
     6e0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6e4:	e12fff1e 	bx	lr

000006e8 <acquireLock>:
     6e8:	e92d4800 	push	{fp, lr}
     6ec:	e28db004 	add	fp, sp, #4
     6f0:	e24dd008 	sub	sp, sp, #8
     6f4:	e50b0008 	str	r0, [fp, #-8]
     6f8:	e51b3008 	ldr	r3, [fp, #-8]
     6fc:	e5933004 	ldr	r3, [r3, #4]
     700:	e3530000 	cmp	r3, #0
     704:	0a000008 	beq	72c <acquireLock+0x44>
     708:	e1a00000 	nop			@ (mov r0, r0)
     70c:	e51b3008 	ldr	r3, [fp, #-8]
     710:	e3a01001 	mov	r1, #1
     714:	e1a00003 	mov	r0, r3
     718:	ebffffe1 	bl	6a4 <xchg>
     71c:	e1a03000 	mov	r3, r0
     720:	e3530000 	cmp	r3, #0
     724:	1afffff8 	bne	70c <acquireLock+0x24>
     728:	ea000000 	b	730 <acquireLock+0x48>
     72c:	e1a00000 	nop			@ (mov r0, r0)
     730:	e24bd004 	sub	sp, fp, #4
     734:	e8bd8800 	pop	{fp, pc}

00000738 <releaseLock>:
     738:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     73c:	e28db000 	add	fp, sp, #0
     740:	e24dd00c 	sub	sp, sp, #12
     744:	e50b0008 	str	r0, [fp, #-8]
     748:	e51b3008 	ldr	r3, [fp, #-8]
     74c:	e5933004 	ldr	r3, [r3, #4]
     750:	e3530000 	cmp	r3, #0
     754:	0a000007 	beq	778 <releaseLock+0x40>
     758:	e51b3008 	ldr	r3, [fp, #-8]
     75c:	e5933000 	ldr	r3, [r3]
     760:	e3530001 	cmp	r3, #1
     764:	1a000005 	bne	780 <releaseLock+0x48>
     768:	e51b3008 	ldr	r3, [fp, #-8]
     76c:	e3a02000 	mov	r2, #0
     770:	e5832000 	str	r2, [r3]
     774:	ea000002 	b	784 <releaseLock+0x4c>
     778:	e1a00000 	nop			@ (mov r0, r0)
     77c:	ea000000 	b	784 <releaseLock+0x4c>
     780:	e1a00000 	nop			@ (mov r0, r0)
     784:	e28bd000 	add	sp, fp, #0
     788:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     78c:	e12fff1e 	bx	lr

00000790 <initiateCondVar>:
     790:	e92d4800 	push	{fp, lr}
     794:	e28db004 	add	fp, sp, #4
     798:	e24dd008 	sub	sp, sp, #8
     79c:	e50b0008 	str	r0, [fp, #-8]
     7a0:	eb0001b8 	bl	e88 <getChannel>
     7a4:	e1a02000 	mov	r2, r0
     7a8:	e51b3008 	ldr	r3, [fp, #-8]
     7ac:	e5832000 	str	r2, [r3]
     7b0:	e51b3008 	ldr	r3, [fp, #-8]
     7b4:	e3a02001 	mov	r2, #1
     7b8:	e5832004 	str	r2, [r3, #4]
     7bc:	e1a00000 	nop			@ (mov r0, r0)
     7c0:	e24bd004 	sub	sp, fp, #4
     7c4:	e8bd8800 	pop	{fp, pc}

000007c8 <condWait>:
     7c8:	e92d4800 	push	{fp, lr}
     7cc:	e28db004 	add	fp, sp, #4
     7d0:	e24dd008 	sub	sp, sp, #8
     7d4:	e50b0008 	str	r0, [fp, #-8]
     7d8:	e50b100c 	str	r1, [fp, #-12]
     7dc:	e51b3008 	ldr	r3, [fp, #-8]
     7e0:	e5933004 	ldr	r3, [r3, #4]
     7e4:	e3530000 	cmp	r3, #0
     7e8:	0a00000c 	beq	820 <condWait+0x58>
     7ec:	e51b300c 	ldr	r3, [fp, #-12]
     7f0:	e5933004 	ldr	r3, [r3, #4]
     7f4:	e3530000 	cmp	r3, #0
     7f8:	0a000008 	beq	820 <condWait+0x58>
     7fc:	e51b000c 	ldr	r0, [fp, #-12]
     800:	ebffffcc 	bl	738 <releaseLock>
     804:	e51b3008 	ldr	r3, [fp, #-8]
     808:	e5933000 	ldr	r3, [r3]
     80c:	e1a00003 	mov	r0, r3
     810:	eb000193 	bl	e64 <sleepChan>
     814:	e51b000c 	ldr	r0, [fp, #-12]
     818:	ebffffb2 	bl	6e8 <acquireLock>
     81c:	ea000000 	b	824 <condWait+0x5c>
     820:	e1a00000 	nop			@ (mov r0, r0)
     824:	e24bd004 	sub	sp, fp, #4
     828:	e8bd8800 	pop	{fp, pc}

0000082c <broadcast>:
     82c:	e92d4800 	push	{fp, lr}
     830:	e28db004 	add	fp, sp, #4
     834:	e24dd008 	sub	sp, sp, #8
     838:	e50b0008 	str	r0, [fp, #-8]
     83c:	e51b3008 	ldr	r3, [fp, #-8]
     840:	e5933004 	ldr	r3, [r3, #4]
     844:	e3530000 	cmp	r3, #0
     848:	0a000004 	beq	860 <broadcast+0x34>
     84c:	e51b3008 	ldr	r3, [fp, #-8]
     850:	e5933000 	ldr	r3, [r3]
     854:	e1a00003 	mov	r0, r3
     858:	eb000193 	bl	eac <sigChan>
     85c:	ea000000 	b	864 <broadcast+0x38>
     860:	e1a00000 	nop			@ (mov r0, r0)
     864:	e24bd004 	sub	sp, fp, #4
     868:	e8bd8800 	pop	{fp, pc}

0000086c <signal>:
     86c:	e92d4800 	push	{fp, lr}
     870:	e28db004 	add	fp, sp, #4
     874:	e24dd008 	sub	sp, sp, #8
     878:	e50b0008 	str	r0, [fp, #-8]
     87c:	e51b3008 	ldr	r3, [fp, #-8]
     880:	e5933004 	ldr	r3, [r3, #4]
     884:	e3530000 	cmp	r3, #0
     888:	0a000004 	beq	8a0 <signal+0x34>
     88c:	e51b3008 	ldr	r3, [fp, #-8]
     890:	e5933000 	ldr	r3, [r3]
     894:	e1a00003 	mov	r0, r3
     898:	eb00018c 	bl	ed0 <sigOneChan>
     89c:	ea000000 	b	8a4 <signal+0x38>
     8a0:	e1a00000 	nop			@ (mov r0, r0)
     8a4:	e24bd004 	sub	sp, fp, #4
     8a8:	e8bd8800 	pop	{fp, pc}

000008ac <semInit>:
     8ac:	e92d4800 	push	{fp, lr}
     8b0:	e28db004 	add	fp, sp, #4
     8b4:	e24dd008 	sub	sp, sp, #8
     8b8:	e50b0008 	str	r0, [fp, #-8]
     8bc:	e50b100c 	str	r1, [fp, #-12]
     8c0:	e51b3008 	ldr	r3, [fp, #-8]
     8c4:	e51b200c 	ldr	r2, [fp, #-12]
     8c8:	e5832000 	str	r2, [r3]
     8cc:	e51b3008 	ldr	r3, [fp, #-8]
     8d0:	e2833004 	add	r3, r3, #4
     8d4:	e1a00003 	mov	r0, r3
     8d8:	ebffff63 	bl	66c <initiateLock>
     8dc:	e51b3008 	ldr	r3, [fp, #-8]
     8e0:	e283300c 	add	r3, r3, #12
     8e4:	e1a00003 	mov	r0, r3
     8e8:	ebffffa8 	bl	790 <initiateCondVar>
     8ec:	e51b3008 	ldr	r3, [fp, #-8]
     8f0:	e3a02001 	mov	r2, #1
     8f4:	e5832014 	str	r2, [r3, #20]
     8f8:	e1a00000 	nop			@ (mov r0, r0)
     8fc:	e24bd004 	sub	sp, fp, #4
     900:	e8bd8800 	pop	{fp, pc}

00000904 <semUp>:
     904:	e92d4800 	push	{fp, lr}
     908:	e28db004 	add	fp, sp, #4
     90c:	e24dd008 	sub	sp, sp, #8
     910:	e50b0008 	str	r0, [fp, #-8]
     914:	e51b3008 	ldr	r3, [fp, #-8]
     918:	e2833004 	add	r3, r3, #4
     91c:	e1a00003 	mov	r0, r3
     920:	ebffff70 	bl	6e8 <acquireLock>
     924:	e51b3008 	ldr	r3, [fp, #-8]
     928:	e5933000 	ldr	r3, [r3]
     92c:	e2832001 	add	r2, r3, #1
     930:	e51b3008 	ldr	r3, [fp, #-8]
     934:	e5832000 	str	r2, [r3]
     938:	e51b3008 	ldr	r3, [fp, #-8]
     93c:	e283300c 	add	r3, r3, #12
     940:	e1a00003 	mov	r0, r3
     944:	ebffffc8 	bl	86c <signal>
     948:	e51b3008 	ldr	r3, [fp, #-8]
     94c:	e2833004 	add	r3, r3, #4
     950:	e1a00003 	mov	r0, r3
     954:	ebffff77 	bl	738 <releaseLock>
     958:	e1a00000 	nop			@ (mov r0, r0)
     95c:	e24bd004 	sub	sp, fp, #4
     960:	e8bd8800 	pop	{fp, pc}

00000964 <semDown>:
     964:	e92d4800 	push	{fp, lr}
     968:	e28db004 	add	fp, sp, #4
     96c:	e24dd008 	sub	sp, sp, #8
     970:	e50b0008 	str	r0, [fp, #-8]
     974:	e51b3008 	ldr	r3, [fp, #-8]
     978:	e2833004 	add	r3, r3, #4
     97c:	e1a00003 	mov	r0, r3
     980:	ebffff58 	bl	6e8 <acquireLock>
     984:	ea000006 	b	9a4 <semDown+0x40>
     988:	e51b3008 	ldr	r3, [fp, #-8]
     98c:	e283200c 	add	r2, r3, #12
     990:	e51b3008 	ldr	r3, [fp, #-8]
     994:	e2833004 	add	r3, r3, #4
     998:	e1a01003 	mov	r1, r3
     99c:	e1a00002 	mov	r0, r2
     9a0:	ebffff88 	bl	7c8 <condWait>
     9a4:	e51b3008 	ldr	r3, [fp, #-8]
     9a8:	e5933000 	ldr	r3, [r3]
     9ac:	e3530000 	cmp	r3, #0
     9b0:	dafffff4 	ble	988 <semDown+0x24>
     9b4:	e51b3008 	ldr	r3, [fp, #-8]
     9b8:	e5933000 	ldr	r3, [r3]
     9bc:	e2432001 	sub	r2, r3, #1
     9c0:	e51b3008 	ldr	r3, [fp, #-8]
     9c4:	e5832000 	str	r2, [r3]
     9c8:	e51b3008 	ldr	r3, [fp, #-8]
     9cc:	e2833004 	add	r3, r3, #4
     9d0:	e1a00003 	mov	r0, r3
     9d4:	ebffff57 	bl	738 <releaseLock>
     9d8:	e1a00000 	nop			@ (mov r0, r0)
     9dc:	e24bd004 	sub	sp, fp, #4
     9e0:	e8bd8800 	pop	{fp, pc}

000009e4 <fork>:
     9e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9e8:	e1a04003 	mov	r4, r3
     9ec:	e1a03002 	mov	r3, r2
     9f0:	e1a02001 	mov	r2, r1
     9f4:	e1a01000 	mov	r1, r0
     9f8:	e3a00001 	mov	r0, #1
     9fc:	ef000000 	svc	0x00000000
     a00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a04:	e12fff1e 	bx	lr

00000a08 <exit>:
     a08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a0c:	e1a04003 	mov	r4, r3
     a10:	e1a03002 	mov	r3, r2
     a14:	e1a02001 	mov	r2, r1
     a18:	e1a01000 	mov	r1, r0
     a1c:	e3a00002 	mov	r0, #2
     a20:	ef000000 	svc	0x00000000
     a24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a28:	e12fff1e 	bx	lr

00000a2c <wait>:
     a2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a30:	e1a04003 	mov	r4, r3
     a34:	e1a03002 	mov	r3, r2
     a38:	e1a02001 	mov	r2, r1
     a3c:	e1a01000 	mov	r1, r0
     a40:	e3a00003 	mov	r0, #3
     a44:	ef000000 	svc	0x00000000
     a48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a4c:	e12fff1e 	bx	lr

00000a50 <pipe>:
     a50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a54:	e1a04003 	mov	r4, r3
     a58:	e1a03002 	mov	r3, r2
     a5c:	e1a02001 	mov	r2, r1
     a60:	e1a01000 	mov	r1, r0
     a64:	e3a00004 	mov	r0, #4
     a68:	ef000000 	svc	0x00000000
     a6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a70:	e12fff1e 	bx	lr

00000a74 <read>:
     a74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a78:	e1a04003 	mov	r4, r3
     a7c:	e1a03002 	mov	r3, r2
     a80:	e1a02001 	mov	r2, r1
     a84:	e1a01000 	mov	r1, r0
     a88:	e3a00005 	mov	r0, #5
     a8c:	ef000000 	svc	0x00000000
     a90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a94:	e12fff1e 	bx	lr

00000a98 <write>:
     a98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a9c:	e1a04003 	mov	r4, r3
     aa0:	e1a03002 	mov	r3, r2
     aa4:	e1a02001 	mov	r2, r1
     aa8:	e1a01000 	mov	r1, r0
     aac:	e3a00010 	mov	r0, #16
     ab0:	ef000000 	svc	0x00000000
     ab4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ab8:	e12fff1e 	bx	lr

00000abc <close>:
     abc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac0:	e1a04003 	mov	r4, r3
     ac4:	e1a03002 	mov	r3, r2
     ac8:	e1a02001 	mov	r2, r1
     acc:	e1a01000 	mov	r1, r0
     ad0:	e3a00015 	mov	r0, #21
     ad4:	ef000000 	svc	0x00000000
     ad8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     adc:	e12fff1e 	bx	lr

00000ae0 <kill>:
     ae0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae4:	e1a04003 	mov	r4, r3
     ae8:	e1a03002 	mov	r3, r2
     aec:	e1a02001 	mov	r2, r1
     af0:	e1a01000 	mov	r1, r0
     af4:	e3a00006 	mov	r0, #6
     af8:	ef000000 	svc	0x00000000
     afc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b00:	e12fff1e 	bx	lr

00000b04 <exec>:
     b04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b08:	e1a04003 	mov	r4, r3
     b0c:	e1a03002 	mov	r3, r2
     b10:	e1a02001 	mov	r2, r1
     b14:	e1a01000 	mov	r1, r0
     b18:	e3a00007 	mov	r0, #7
     b1c:	ef000000 	svc	0x00000000
     b20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b24:	e12fff1e 	bx	lr

00000b28 <open>:
     b28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b2c:	e1a04003 	mov	r4, r3
     b30:	e1a03002 	mov	r3, r2
     b34:	e1a02001 	mov	r2, r1
     b38:	e1a01000 	mov	r1, r0
     b3c:	e3a0000f 	mov	r0, #15
     b40:	ef000000 	svc	0x00000000
     b44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b48:	e12fff1e 	bx	lr

00000b4c <mknod>:
     b4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b50:	e1a04003 	mov	r4, r3
     b54:	e1a03002 	mov	r3, r2
     b58:	e1a02001 	mov	r2, r1
     b5c:	e1a01000 	mov	r1, r0
     b60:	e3a00011 	mov	r0, #17
     b64:	ef000000 	svc	0x00000000
     b68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b6c:	e12fff1e 	bx	lr

00000b70 <unlink>:
     b70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b74:	e1a04003 	mov	r4, r3
     b78:	e1a03002 	mov	r3, r2
     b7c:	e1a02001 	mov	r2, r1
     b80:	e1a01000 	mov	r1, r0
     b84:	e3a00012 	mov	r0, #18
     b88:	ef000000 	svc	0x00000000
     b8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b90:	e12fff1e 	bx	lr

00000b94 <fstat>:
     b94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b98:	e1a04003 	mov	r4, r3
     b9c:	e1a03002 	mov	r3, r2
     ba0:	e1a02001 	mov	r2, r1
     ba4:	e1a01000 	mov	r1, r0
     ba8:	e3a00008 	mov	r0, #8
     bac:	ef000000 	svc	0x00000000
     bb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb4:	e12fff1e 	bx	lr

00000bb8 <link>:
     bb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bbc:	e1a04003 	mov	r4, r3
     bc0:	e1a03002 	mov	r3, r2
     bc4:	e1a02001 	mov	r2, r1
     bc8:	e1a01000 	mov	r1, r0
     bcc:	e3a00013 	mov	r0, #19
     bd0:	ef000000 	svc	0x00000000
     bd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bd8:	e12fff1e 	bx	lr

00000bdc <mkdir>:
     bdc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be0:	e1a04003 	mov	r4, r3
     be4:	e1a03002 	mov	r3, r2
     be8:	e1a02001 	mov	r2, r1
     bec:	e1a01000 	mov	r1, r0
     bf0:	e3a00014 	mov	r0, #20
     bf4:	ef000000 	svc	0x00000000
     bf8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bfc:	e12fff1e 	bx	lr

00000c00 <chdir>:
     c00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c04:	e1a04003 	mov	r4, r3
     c08:	e1a03002 	mov	r3, r2
     c0c:	e1a02001 	mov	r2, r1
     c10:	e1a01000 	mov	r1, r0
     c14:	e3a00009 	mov	r0, #9
     c18:	ef000000 	svc	0x00000000
     c1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c20:	e12fff1e 	bx	lr

00000c24 <dup>:
     c24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c28:	e1a04003 	mov	r4, r3
     c2c:	e1a03002 	mov	r3, r2
     c30:	e1a02001 	mov	r2, r1
     c34:	e1a01000 	mov	r1, r0
     c38:	e3a0000a 	mov	r0, #10
     c3c:	ef000000 	svc	0x00000000
     c40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c44:	e12fff1e 	bx	lr

00000c48 <getpid>:
     c48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c4c:	e1a04003 	mov	r4, r3
     c50:	e1a03002 	mov	r3, r2
     c54:	e1a02001 	mov	r2, r1
     c58:	e1a01000 	mov	r1, r0
     c5c:	e3a0000b 	mov	r0, #11
     c60:	ef000000 	svc	0x00000000
     c64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c68:	e12fff1e 	bx	lr

00000c6c <sbrk>:
     c6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c70:	e1a04003 	mov	r4, r3
     c74:	e1a03002 	mov	r3, r2
     c78:	e1a02001 	mov	r2, r1
     c7c:	e1a01000 	mov	r1, r0
     c80:	e3a0000c 	mov	r0, #12
     c84:	ef000000 	svc	0x00000000
     c88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c8c:	e12fff1e 	bx	lr

00000c90 <sleep>:
     c90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c94:	e1a04003 	mov	r4, r3
     c98:	e1a03002 	mov	r3, r2
     c9c:	e1a02001 	mov	r2, r1
     ca0:	e1a01000 	mov	r1, r0
     ca4:	e3a0000d 	mov	r0, #13
     ca8:	ef000000 	svc	0x00000000
     cac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb0:	e12fff1e 	bx	lr

00000cb4 <uptime>:
     cb4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cb8:	e1a04003 	mov	r4, r3
     cbc:	e1a03002 	mov	r3, r2
     cc0:	e1a02001 	mov	r2, r1
     cc4:	e1a01000 	mov	r1, r0
     cc8:	e3a0000e 	mov	r0, #14
     ccc:	ef000000 	svc	0x00000000
     cd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd4:	e12fff1e 	bx	lr

00000cd8 <getprocs>:
     cd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cdc:	e1a04003 	mov	r4, r3
     ce0:	e1a03002 	mov	r3, r2
     ce4:	e1a02001 	mov	r2, r1
     ce8:	e1a01000 	mov	r1, r0
     cec:	e3a00016 	mov	r0, #22
     cf0:	ef000000 	svc	0x00000000
     cf4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cf8:	e12fff1e 	bx	lr

00000cfc <settickets>:
     cfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d00:	e1a04003 	mov	r4, r3
     d04:	e1a03002 	mov	r3, r2
     d08:	e1a02001 	mov	r2, r1
     d0c:	e1a01000 	mov	r1, r0
     d10:	e3a00017 	mov	r0, #23
     d14:	ef000000 	svc	0x00000000
     d18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d1c:	e12fff1e 	bx	lr

00000d20 <srand>:
     d20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d24:	e1a04003 	mov	r4, r3
     d28:	e1a03002 	mov	r3, r2
     d2c:	e1a02001 	mov	r2, r1
     d30:	e1a01000 	mov	r1, r0
     d34:	e3a00018 	mov	r0, #24
     d38:	ef000000 	svc	0x00000000
     d3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d40:	e12fff1e 	bx	lr

00000d44 <getpinfo>:
     d44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d48:	e1a04003 	mov	r4, r3
     d4c:	e1a03002 	mov	r3, r2
     d50:	e1a02001 	mov	r2, r1
     d54:	e1a01000 	mov	r1, r0
     d58:	e3a00019 	mov	r0, #25
     d5c:	ef000000 	svc	0x00000000
     d60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d64:	e12fff1e 	bx	lr

00000d68 <dumppagetable>:
     d68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d6c:	e1a04003 	mov	r4, r3
     d70:	e1a03002 	mov	r3, r2
     d74:	e1a02001 	mov	r2, r1
     d78:	e1a01000 	mov	r1, r0
     d7c:	e3a0001a 	mov	r0, #26
     d80:	ef000000 	svc	0x00000000
     d84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d88:	e12fff1e 	bx	lr

00000d8c <thread_create>:
     d8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d90:	e1a04003 	mov	r4, r3
     d94:	e1a03002 	mov	r3, r2
     d98:	e1a02001 	mov	r2, r1
     d9c:	e1a01000 	mov	r1, r0
     da0:	e3a0001b 	mov	r0, #27
     da4:	ef000000 	svc	0x00000000
     da8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dac:	e12fff1e 	bx	lr

00000db0 <thread_exit>:
     db0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     db4:	e1a04003 	mov	r4, r3
     db8:	e1a03002 	mov	r3, r2
     dbc:	e1a02001 	mov	r2, r1
     dc0:	e1a01000 	mov	r1, r0
     dc4:	e3a0001c 	mov	r0, #28
     dc8:	ef000000 	svc	0x00000000
     dcc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd0:	e12fff1e 	bx	lr

00000dd4 <thread_join>:
     dd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dd8:	e1a04003 	mov	r4, r3
     ddc:	e1a03002 	mov	r3, r2
     de0:	e1a02001 	mov	r2, r1
     de4:	e1a01000 	mov	r1, r0
     de8:	e3a0001d 	mov	r0, #29
     dec:	ef000000 	svc	0x00000000
     df0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     df4:	e12fff1e 	bx	lr

00000df8 <waitpid>:
     df8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dfc:	e1a04003 	mov	r4, r3
     e00:	e1a03002 	mov	r3, r2
     e04:	e1a02001 	mov	r2, r1
     e08:	e1a01000 	mov	r1, r0
     e0c:	e3a0001e 	mov	r0, #30
     e10:	ef000000 	svc	0x00000000
     e14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e18:	e12fff1e 	bx	lr

00000e1c <barrier_init>:
     e1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e20:	e1a04003 	mov	r4, r3
     e24:	e1a03002 	mov	r3, r2
     e28:	e1a02001 	mov	r2, r1
     e2c:	e1a01000 	mov	r1, r0
     e30:	e3a0001f 	mov	r0, #31
     e34:	ef000000 	svc	0x00000000
     e38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e3c:	e12fff1e 	bx	lr

00000e40 <barrier_check>:
     e40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e44:	e1a04003 	mov	r4, r3
     e48:	e1a03002 	mov	r3, r2
     e4c:	e1a02001 	mov	r2, r1
     e50:	e1a01000 	mov	r1, r0
     e54:	e3a00020 	mov	r0, #32
     e58:	ef000000 	svc	0x00000000
     e5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e60:	e12fff1e 	bx	lr

00000e64 <sleepChan>:
     e64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e68:	e1a04003 	mov	r4, r3
     e6c:	e1a03002 	mov	r3, r2
     e70:	e1a02001 	mov	r2, r1
     e74:	e1a01000 	mov	r1, r0
     e78:	e3a00024 	mov	r0, #36	@ 0x24
     e7c:	ef000000 	svc	0x00000000
     e80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e84:	e12fff1e 	bx	lr

00000e88 <getChannel>:
     e88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e8c:	e1a04003 	mov	r4, r3
     e90:	e1a03002 	mov	r3, r2
     e94:	e1a02001 	mov	r2, r1
     e98:	e1a01000 	mov	r1, r0
     e9c:	e3a00025 	mov	r0, #37	@ 0x25
     ea0:	ef000000 	svc	0x00000000
     ea4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ea8:	e12fff1e 	bx	lr

00000eac <sigChan>:
     eac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eb0:	e1a04003 	mov	r4, r3
     eb4:	e1a03002 	mov	r3, r2
     eb8:	e1a02001 	mov	r2, r1
     ebc:	e1a01000 	mov	r1, r0
     ec0:	e3a00026 	mov	r0, #38	@ 0x26
     ec4:	ef000000 	svc	0x00000000
     ec8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ecc:	e12fff1e 	bx	lr

00000ed0 <sigOneChan>:
     ed0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ed4:	e1a04003 	mov	r4, r3
     ed8:	e1a03002 	mov	r3, r2
     edc:	e1a02001 	mov	r2, r1
     ee0:	e1a01000 	mov	r1, r0
     ee4:	e3a00027 	mov	r0, #39	@ 0x27
     ee8:	ef000000 	svc	0x00000000
     eec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ef0:	e12fff1e 	bx	lr

00000ef4 <putc>:
     ef4:	e92d4800 	push	{fp, lr}
     ef8:	e28db004 	add	fp, sp, #4
     efc:	e24dd008 	sub	sp, sp, #8
     f00:	e50b0008 	str	r0, [fp, #-8]
     f04:	e1a03001 	mov	r3, r1
     f08:	e54b3009 	strb	r3, [fp, #-9]
     f0c:	e24b3009 	sub	r3, fp, #9
     f10:	e3a02001 	mov	r2, #1
     f14:	e1a01003 	mov	r1, r3
     f18:	e51b0008 	ldr	r0, [fp, #-8]
     f1c:	ebfffedd 	bl	a98 <write>
     f20:	e1a00000 	nop			@ (mov r0, r0)
     f24:	e24bd004 	sub	sp, fp, #4
     f28:	e8bd8800 	pop	{fp, pc}

00000f2c <printint>:
     f2c:	e92d4800 	push	{fp, lr}
     f30:	e28db004 	add	fp, sp, #4
     f34:	e24dd030 	sub	sp, sp, #48	@ 0x30
     f38:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     f3c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     f40:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     f44:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     f48:	e3a03000 	mov	r3, #0
     f4c:	e50b300c 	str	r3, [fp, #-12]
     f50:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     f54:	e3530000 	cmp	r3, #0
     f58:	0a000008 	beq	f80 <printint+0x54>
     f5c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f60:	e3530000 	cmp	r3, #0
     f64:	aa000005 	bge	f80 <printint+0x54>
     f68:	e3a03001 	mov	r3, #1
     f6c:	e50b300c 	str	r3, [fp, #-12]
     f70:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f74:	e2633000 	rsb	r3, r3, #0
     f78:	e50b3010 	str	r3, [fp, #-16]
     f7c:	ea000001 	b	f88 <printint+0x5c>
     f80:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f84:	e50b3010 	str	r3, [fp, #-16]
     f88:	e3a03000 	mov	r3, #0
     f8c:	e50b3008 	str	r3, [fp, #-8]
     f90:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     f94:	e51b3010 	ldr	r3, [fp, #-16]
     f98:	e1a01002 	mov	r1, r2
     f9c:	e1a00003 	mov	r0, r3
     fa0:	eb0001d5 	bl	16fc <__aeabi_uidivmod>
     fa4:	e1a03001 	mov	r3, r1
     fa8:	e1a01003 	mov	r1, r3
     fac:	e51b3008 	ldr	r3, [fp, #-8]
     fb0:	e2832001 	add	r2, r3, #1
     fb4:	e50b2008 	str	r2, [fp, #-8]
     fb8:	e59f20a0 	ldr	r2, [pc, #160]	@ 1060 <printint+0x134>
     fbc:	e7d22001 	ldrb	r2, [r2, r1]
     fc0:	e2433004 	sub	r3, r3, #4
     fc4:	e083300b 	add	r3, r3, fp
     fc8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     fcc:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     fd0:	e1a01003 	mov	r1, r3
     fd4:	e51b0010 	ldr	r0, [fp, #-16]
     fd8:	eb00018a 	bl	1608 <__udivsi3>
     fdc:	e1a03000 	mov	r3, r0
     fe0:	e50b3010 	str	r3, [fp, #-16]
     fe4:	e51b3010 	ldr	r3, [fp, #-16]
     fe8:	e3530000 	cmp	r3, #0
     fec:	1affffe7 	bne	f90 <printint+0x64>
     ff0:	e51b300c 	ldr	r3, [fp, #-12]
     ff4:	e3530000 	cmp	r3, #0
     ff8:	0a00000e 	beq	1038 <printint+0x10c>
     ffc:	e51b3008 	ldr	r3, [fp, #-8]
    1000:	e2832001 	add	r2, r3, #1
    1004:	e50b2008 	str	r2, [fp, #-8]
    1008:	e2433004 	sub	r3, r3, #4
    100c:	e083300b 	add	r3, r3, fp
    1010:	e3a0202d 	mov	r2, #45	@ 0x2d
    1014:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1018:	ea000006 	b	1038 <printint+0x10c>
    101c:	e24b2020 	sub	r2, fp, #32
    1020:	e51b3008 	ldr	r3, [fp, #-8]
    1024:	e0823003 	add	r3, r2, r3
    1028:	e5d33000 	ldrb	r3, [r3]
    102c:	e1a01003 	mov	r1, r3
    1030:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1034:	ebffffae 	bl	ef4 <putc>
    1038:	e51b3008 	ldr	r3, [fp, #-8]
    103c:	e2433001 	sub	r3, r3, #1
    1040:	e50b3008 	str	r3, [fp, #-8]
    1044:	e51b3008 	ldr	r3, [fp, #-8]
    1048:	e3530000 	cmp	r3, #0
    104c:	aafffff2 	bge	101c <printint+0xf0>
    1050:	e1a00000 	nop			@ (mov r0, r0)
    1054:	e1a00000 	nop			@ (mov r0, r0)
    1058:	e24bd004 	sub	sp, fp, #4
    105c:	e8bd8800 	pop	{fp, pc}
    1060:	0000175c 	.word	0x0000175c

00001064 <printf>:
    1064:	e92d000e 	push	{r1, r2, r3}
    1068:	e92d4800 	push	{fp, lr}
    106c:	e28db004 	add	fp, sp, #4
    1070:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1074:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1078:	e3a03000 	mov	r3, #0
    107c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1080:	e28b3008 	add	r3, fp, #8
    1084:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1088:	e3a03000 	mov	r3, #0
    108c:	e50b3010 	str	r3, [fp, #-16]
    1090:	ea000074 	b	1268 <printf+0x204>
    1094:	e59b2004 	ldr	r2, [fp, #4]
    1098:	e51b3010 	ldr	r3, [fp, #-16]
    109c:	e0823003 	add	r3, r2, r3
    10a0:	e5d33000 	ldrb	r3, [r3]
    10a4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    10a8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    10ac:	e3530000 	cmp	r3, #0
    10b0:	1a00000b 	bne	10e4 <printf+0x80>
    10b4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10b8:	e3530025 	cmp	r3, #37	@ 0x25
    10bc:	1a000002 	bne	10cc <printf+0x68>
    10c0:	e3a03025 	mov	r3, #37	@ 0x25
    10c4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    10c8:	ea000063 	b	125c <printf+0x1f8>
    10cc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10d0:	e6ef3073 	uxtb	r3, r3
    10d4:	e1a01003 	mov	r1, r3
    10d8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10dc:	ebffff84 	bl	ef4 <putc>
    10e0:	ea00005d 	b	125c <printf+0x1f8>
    10e4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    10e8:	e3530025 	cmp	r3, #37	@ 0x25
    10ec:	1a00005a 	bne	125c <printf+0x1f8>
    10f0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10f4:	e3530064 	cmp	r3, #100	@ 0x64
    10f8:	1a00000a 	bne	1128 <printf+0xc4>
    10fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1100:	e5933000 	ldr	r3, [r3]
    1104:	e1a01003 	mov	r1, r3
    1108:	e3a03001 	mov	r3, #1
    110c:	e3a0200a 	mov	r2, #10
    1110:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1114:	ebffff84 	bl	f2c <printint>
    1118:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    111c:	e2833004 	add	r3, r3, #4
    1120:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1124:	ea00004a 	b	1254 <printf+0x1f0>
    1128:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    112c:	e3530078 	cmp	r3, #120	@ 0x78
    1130:	0a000002 	beq	1140 <printf+0xdc>
    1134:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1138:	e3530070 	cmp	r3, #112	@ 0x70
    113c:	1a00000a 	bne	116c <printf+0x108>
    1140:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1144:	e5933000 	ldr	r3, [r3]
    1148:	e1a01003 	mov	r1, r3
    114c:	e3a03000 	mov	r3, #0
    1150:	e3a02010 	mov	r2, #16
    1154:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1158:	ebffff73 	bl	f2c <printint>
    115c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1160:	e2833004 	add	r3, r3, #4
    1164:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1168:	ea000039 	b	1254 <printf+0x1f0>
    116c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1170:	e3530073 	cmp	r3, #115	@ 0x73
    1174:	1a000018 	bne	11dc <printf+0x178>
    1178:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    117c:	e5933000 	ldr	r3, [r3]
    1180:	e50b300c 	str	r3, [fp, #-12]
    1184:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1188:	e2833004 	add	r3, r3, #4
    118c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1190:	e51b300c 	ldr	r3, [fp, #-12]
    1194:	e3530000 	cmp	r3, #0
    1198:	1a00000a 	bne	11c8 <printf+0x164>
    119c:	e59f30f4 	ldr	r3, [pc, #244]	@ 1298 <printf+0x234>
    11a0:	e50b300c 	str	r3, [fp, #-12]
    11a4:	ea000007 	b	11c8 <printf+0x164>
    11a8:	e51b300c 	ldr	r3, [fp, #-12]
    11ac:	e5d33000 	ldrb	r3, [r3]
    11b0:	e1a01003 	mov	r1, r3
    11b4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11b8:	ebffff4d 	bl	ef4 <putc>
    11bc:	e51b300c 	ldr	r3, [fp, #-12]
    11c0:	e2833001 	add	r3, r3, #1
    11c4:	e50b300c 	str	r3, [fp, #-12]
    11c8:	e51b300c 	ldr	r3, [fp, #-12]
    11cc:	e5d33000 	ldrb	r3, [r3]
    11d0:	e3530000 	cmp	r3, #0
    11d4:	1afffff3 	bne	11a8 <printf+0x144>
    11d8:	ea00001d 	b	1254 <printf+0x1f0>
    11dc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11e0:	e3530063 	cmp	r3, #99	@ 0x63
    11e4:	1a000009 	bne	1210 <printf+0x1ac>
    11e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11ec:	e5933000 	ldr	r3, [r3]
    11f0:	e6ef3073 	uxtb	r3, r3
    11f4:	e1a01003 	mov	r1, r3
    11f8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11fc:	ebffff3c 	bl	ef4 <putc>
    1200:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1204:	e2833004 	add	r3, r3, #4
    1208:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    120c:	ea000010 	b	1254 <printf+0x1f0>
    1210:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1214:	e3530025 	cmp	r3, #37	@ 0x25
    1218:	1a000005 	bne	1234 <printf+0x1d0>
    121c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1220:	e6ef3073 	uxtb	r3, r3
    1224:	e1a01003 	mov	r1, r3
    1228:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    122c:	ebffff30 	bl	ef4 <putc>
    1230:	ea000007 	b	1254 <printf+0x1f0>
    1234:	e3a01025 	mov	r1, #37	@ 0x25
    1238:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    123c:	ebffff2c 	bl	ef4 <putc>
    1240:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1244:	e6ef3073 	uxtb	r3, r3
    1248:	e1a01003 	mov	r1, r3
    124c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1250:	ebffff27 	bl	ef4 <putc>
    1254:	e3a03000 	mov	r3, #0
    1258:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    125c:	e51b3010 	ldr	r3, [fp, #-16]
    1260:	e2833001 	add	r3, r3, #1
    1264:	e50b3010 	str	r3, [fp, #-16]
    1268:	e59b2004 	ldr	r2, [fp, #4]
    126c:	e51b3010 	ldr	r3, [fp, #-16]
    1270:	e0823003 	add	r3, r2, r3
    1274:	e5d33000 	ldrb	r3, [r3]
    1278:	e3530000 	cmp	r3, #0
    127c:	1affff84 	bne	1094 <printf+0x30>
    1280:	e1a00000 	nop			@ (mov r0, r0)
    1284:	e1a00000 	nop			@ (mov r0, r0)
    1288:	e24bd004 	sub	sp, fp, #4
    128c:	e8bd4800 	pop	{fp, lr}
    1290:	e28dd00c 	add	sp, sp, #12
    1294:	e12fff1e 	bx	lr
    1298:	00001754 	.word	0x00001754

0000129c <free>:
    129c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    12a0:	e28db000 	add	fp, sp, #0
    12a4:	e24dd014 	sub	sp, sp, #20
    12a8:	e50b0010 	str	r0, [fp, #-16]
    12ac:	e51b3010 	ldr	r3, [fp, #-16]
    12b0:	e2433008 	sub	r3, r3, #8
    12b4:	e50b300c 	str	r3, [fp, #-12]
    12b8:	e59f3154 	ldr	r3, [pc, #340]	@ 1414 <free+0x178>
    12bc:	e5933000 	ldr	r3, [r3]
    12c0:	e50b3008 	str	r3, [fp, #-8]
    12c4:	ea000010 	b	130c <free+0x70>
    12c8:	e51b3008 	ldr	r3, [fp, #-8]
    12cc:	e5933000 	ldr	r3, [r3]
    12d0:	e51b2008 	ldr	r2, [fp, #-8]
    12d4:	e1520003 	cmp	r2, r3
    12d8:	3a000008 	bcc	1300 <free+0x64>
    12dc:	e51b200c 	ldr	r2, [fp, #-12]
    12e0:	e51b3008 	ldr	r3, [fp, #-8]
    12e4:	e1520003 	cmp	r2, r3
    12e8:	8a000010 	bhi	1330 <free+0x94>
    12ec:	e51b3008 	ldr	r3, [fp, #-8]
    12f0:	e5933000 	ldr	r3, [r3]
    12f4:	e51b200c 	ldr	r2, [fp, #-12]
    12f8:	e1520003 	cmp	r2, r3
    12fc:	3a00000b 	bcc	1330 <free+0x94>
    1300:	e51b3008 	ldr	r3, [fp, #-8]
    1304:	e5933000 	ldr	r3, [r3]
    1308:	e50b3008 	str	r3, [fp, #-8]
    130c:	e51b200c 	ldr	r2, [fp, #-12]
    1310:	e51b3008 	ldr	r3, [fp, #-8]
    1314:	e1520003 	cmp	r2, r3
    1318:	9affffea 	bls	12c8 <free+0x2c>
    131c:	e51b3008 	ldr	r3, [fp, #-8]
    1320:	e5933000 	ldr	r3, [r3]
    1324:	e51b200c 	ldr	r2, [fp, #-12]
    1328:	e1520003 	cmp	r2, r3
    132c:	2affffe5 	bcs	12c8 <free+0x2c>
    1330:	e51b300c 	ldr	r3, [fp, #-12]
    1334:	e5933004 	ldr	r3, [r3, #4]
    1338:	e1a03183 	lsl	r3, r3, #3
    133c:	e51b200c 	ldr	r2, [fp, #-12]
    1340:	e0822003 	add	r2, r2, r3
    1344:	e51b3008 	ldr	r3, [fp, #-8]
    1348:	e5933000 	ldr	r3, [r3]
    134c:	e1520003 	cmp	r2, r3
    1350:	1a00000d 	bne	138c <free+0xf0>
    1354:	e51b300c 	ldr	r3, [fp, #-12]
    1358:	e5932004 	ldr	r2, [r3, #4]
    135c:	e51b3008 	ldr	r3, [fp, #-8]
    1360:	e5933000 	ldr	r3, [r3]
    1364:	e5933004 	ldr	r3, [r3, #4]
    1368:	e0822003 	add	r2, r2, r3
    136c:	e51b300c 	ldr	r3, [fp, #-12]
    1370:	e5832004 	str	r2, [r3, #4]
    1374:	e51b3008 	ldr	r3, [fp, #-8]
    1378:	e5933000 	ldr	r3, [r3]
    137c:	e5932000 	ldr	r2, [r3]
    1380:	e51b300c 	ldr	r3, [fp, #-12]
    1384:	e5832000 	str	r2, [r3]
    1388:	ea000003 	b	139c <free+0x100>
    138c:	e51b3008 	ldr	r3, [fp, #-8]
    1390:	e5932000 	ldr	r2, [r3]
    1394:	e51b300c 	ldr	r3, [fp, #-12]
    1398:	e5832000 	str	r2, [r3]
    139c:	e51b3008 	ldr	r3, [fp, #-8]
    13a0:	e5933004 	ldr	r3, [r3, #4]
    13a4:	e1a03183 	lsl	r3, r3, #3
    13a8:	e51b2008 	ldr	r2, [fp, #-8]
    13ac:	e0823003 	add	r3, r2, r3
    13b0:	e51b200c 	ldr	r2, [fp, #-12]
    13b4:	e1520003 	cmp	r2, r3
    13b8:	1a00000b 	bne	13ec <free+0x150>
    13bc:	e51b3008 	ldr	r3, [fp, #-8]
    13c0:	e5932004 	ldr	r2, [r3, #4]
    13c4:	e51b300c 	ldr	r3, [fp, #-12]
    13c8:	e5933004 	ldr	r3, [r3, #4]
    13cc:	e0822003 	add	r2, r2, r3
    13d0:	e51b3008 	ldr	r3, [fp, #-8]
    13d4:	e5832004 	str	r2, [r3, #4]
    13d8:	e51b300c 	ldr	r3, [fp, #-12]
    13dc:	e5932000 	ldr	r2, [r3]
    13e0:	e51b3008 	ldr	r3, [fp, #-8]
    13e4:	e5832000 	str	r2, [r3]
    13e8:	ea000002 	b	13f8 <free+0x15c>
    13ec:	e51b3008 	ldr	r3, [fp, #-8]
    13f0:	e51b200c 	ldr	r2, [fp, #-12]
    13f4:	e5832000 	str	r2, [r3]
    13f8:	e59f2014 	ldr	r2, [pc, #20]	@ 1414 <free+0x178>
    13fc:	e51b3008 	ldr	r3, [fp, #-8]
    1400:	e5823000 	str	r3, [r2]
    1404:	e1a00000 	nop			@ (mov r0, r0)
    1408:	e28bd000 	add	sp, fp, #0
    140c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1410:	e12fff1e 	bx	lr
    1414:	00001778 	.word	0x00001778

00001418 <morecore>:
    1418:	e92d4800 	push	{fp, lr}
    141c:	e28db004 	add	fp, sp, #4
    1420:	e24dd010 	sub	sp, sp, #16
    1424:	e50b0010 	str	r0, [fp, #-16]
    1428:	e51b3010 	ldr	r3, [fp, #-16]
    142c:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1430:	2a000001 	bcs	143c <morecore+0x24>
    1434:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1438:	e50b3010 	str	r3, [fp, #-16]
    143c:	e51b3010 	ldr	r3, [fp, #-16]
    1440:	e1a03183 	lsl	r3, r3, #3
    1444:	e1a00003 	mov	r0, r3
    1448:	ebfffe07 	bl	c6c <sbrk>
    144c:	e50b0008 	str	r0, [fp, #-8]
    1450:	e51b3008 	ldr	r3, [fp, #-8]
    1454:	e3730001 	cmn	r3, #1
    1458:	1a000001 	bne	1464 <morecore+0x4c>
    145c:	e3a03000 	mov	r3, #0
    1460:	ea00000a 	b	1490 <morecore+0x78>
    1464:	e51b3008 	ldr	r3, [fp, #-8]
    1468:	e50b300c 	str	r3, [fp, #-12]
    146c:	e51b300c 	ldr	r3, [fp, #-12]
    1470:	e51b2010 	ldr	r2, [fp, #-16]
    1474:	e5832004 	str	r2, [r3, #4]
    1478:	e51b300c 	ldr	r3, [fp, #-12]
    147c:	e2833008 	add	r3, r3, #8
    1480:	e1a00003 	mov	r0, r3
    1484:	ebffff84 	bl	129c <free>
    1488:	e59f300c 	ldr	r3, [pc, #12]	@ 149c <morecore+0x84>
    148c:	e5933000 	ldr	r3, [r3]
    1490:	e1a00003 	mov	r0, r3
    1494:	e24bd004 	sub	sp, fp, #4
    1498:	e8bd8800 	pop	{fp, pc}
    149c:	00001778 	.word	0x00001778

000014a0 <malloc>:
    14a0:	e92d4800 	push	{fp, lr}
    14a4:	e28db004 	add	fp, sp, #4
    14a8:	e24dd018 	sub	sp, sp, #24
    14ac:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    14b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    14b4:	e2833007 	add	r3, r3, #7
    14b8:	e1a031a3 	lsr	r3, r3, #3
    14bc:	e2833001 	add	r3, r3, #1
    14c0:	e50b3010 	str	r3, [fp, #-16]
    14c4:	e59f3134 	ldr	r3, [pc, #308]	@ 1600 <malloc+0x160>
    14c8:	e5933000 	ldr	r3, [r3]
    14cc:	e50b300c 	str	r3, [fp, #-12]
    14d0:	e51b300c 	ldr	r3, [fp, #-12]
    14d4:	e3530000 	cmp	r3, #0
    14d8:	1a00000b 	bne	150c <malloc+0x6c>
    14dc:	e59f3120 	ldr	r3, [pc, #288]	@ 1604 <malloc+0x164>
    14e0:	e50b300c 	str	r3, [fp, #-12]
    14e4:	e59f2114 	ldr	r2, [pc, #276]	@ 1600 <malloc+0x160>
    14e8:	e51b300c 	ldr	r3, [fp, #-12]
    14ec:	e5823000 	str	r3, [r2]
    14f0:	e59f3108 	ldr	r3, [pc, #264]	@ 1600 <malloc+0x160>
    14f4:	e5933000 	ldr	r3, [r3]
    14f8:	e59f2104 	ldr	r2, [pc, #260]	@ 1604 <malloc+0x164>
    14fc:	e5823000 	str	r3, [r2]
    1500:	e59f30fc 	ldr	r3, [pc, #252]	@ 1604 <malloc+0x164>
    1504:	e3a02000 	mov	r2, #0
    1508:	e5832004 	str	r2, [r3, #4]
    150c:	e51b300c 	ldr	r3, [fp, #-12]
    1510:	e5933000 	ldr	r3, [r3]
    1514:	e50b3008 	str	r3, [fp, #-8]
    1518:	e51b3008 	ldr	r3, [fp, #-8]
    151c:	e5933004 	ldr	r3, [r3, #4]
    1520:	e51b2010 	ldr	r2, [fp, #-16]
    1524:	e1520003 	cmp	r2, r3
    1528:	8a00001e 	bhi	15a8 <malloc+0x108>
    152c:	e51b3008 	ldr	r3, [fp, #-8]
    1530:	e5933004 	ldr	r3, [r3, #4]
    1534:	e51b2010 	ldr	r2, [fp, #-16]
    1538:	e1520003 	cmp	r2, r3
    153c:	1a000004 	bne	1554 <malloc+0xb4>
    1540:	e51b3008 	ldr	r3, [fp, #-8]
    1544:	e5932000 	ldr	r2, [r3]
    1548:	e51b300c 	ldr	r3, [fp, #-12]
    154c:	e5832000 	str	r2, [r3]
    1550:	ea00000e 	b	1590 <malloc+0xf0>
    1554:	e51b3008 	ldr	r3, [fp, #-8]
    1558:	e5932004 	ldr	r2, [r3, #4]
    155c:	e51b3010 	ldr	r3, [fp, #-16]
    1560:	e0422003 	sub	r2, r2, r3
    1564:	e51b3008 	ldr	r3, [fp, #-8]
    1568:	e5832004 	str	r2, [r3, #4]
    156c:	e51b3008 	ldr	r3, [fp, #-8]
    1570:	e5933004 	ldr	r3, [r3, #4]
    1574:	e1a03183 	lsl	r3, r3, #3
    1578:	e51b2008 	ldr	r2, [fp, #-8]
    157c:	e0823003 	add	r3, r2, r3
    1580:	e50b3008 	str	r3, [fp, #-8]
    1584:	e51b3008 	ldr	r3, [fp, #-8]
    1588:	e51b2010 	ldr	r2, [fp, #-16]
    158c:	e5832004 	str	r2, [r3, #4]
    1590:	e59f2068 	ldr	r2, [pc, #104]	@ 1600 <malloc+0x160>
    1594:	e51b300c 	ldr	r3, [fp, #-12]
    1598:	e5823000 	str	r3, [r2]
    159c:	e51b3008 	ldr	r3, [fp, #-8]
    15a0:	e2833008 	add	r3, r3, #8
    15a4:	ea000012 	b	15f4 <malloc+0x154>
    15a8:	e59f3050 	ldr	r3, [pc, #80]	@ 1600 <malloc+0x160>
    15ac:	e5933000 	ldr	r3, [r3]
    15b0:	e51b2008 	ldr	r2, [fp, #-8]
    15b4:	e1520003 	cmp	r2, r3
    15b8:	1a000007 	bne	15dc <malloc+0x13c>
    15bc:	e51b0010 	ldr	r0, [fp, #-16]
    15c0:	ebffff94 	bl	1418 <morecore>
    15c4:	e50b0008 	str	r0, [fp, #-8]
    15c8:	e51b3008 	ldr	r3, [fp, #-8]
    15cc:	e3530000 	cmp	r3, #0
    15d0:	1a000001 	bne	15dc <malloc+0x13c>
    15d4:	e3a03000 	mov	r3, #0
    15d8:	ea000005 	b	15f4 <malloc+0x154>
    15dc:	e51b3008 	ldr	r3, [fp, #-8]
    15e0:	e50b300c 	str	r3, [fp, #-12]
    15e4:	e51b3008 	ldr	r3, [fp, #-8]
    15e8:	e5933000 	ldr	r3, [r3]
    15ec:	e50b3008 	str	r3, [fp, #-8]
    15f0:	eaffffc8 	b	1518 <malloc+0x78>
    15f4:	e1a00003 	mov	r0, r3
    15f8:	e24bd004 	sub	sp, fp, #4
    15fc:	e8bd8800 	pop	{fp, pc}
    1600:	00001778 	.word	0x00001778
    1604:	00001770 	.word	0x00001770

00001608 <__udivsi3>:
    1608:	e2512001 	subs	r2, r1, #1
    160c:	012fff1e 	bxeq	lr
    1610:	3a000036 	bcc	16f0 <__udivsi3+0xe8>
    1614:	e1500001 	cmp	r0, r1
    1618:	9a000022 	bls	16a8 <__udivsi3+0xa0>
    161c:	e1110002 	tst	r1, r2
    1620:	0a000023 	beq	16b4 <__udivsi3+0xac>
    1624:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1628:	01a01181 	lsleq	r1, r1, #3
    162c:	03a03008 	moveq	r3, #8
    1630:	13a03001 	movne	r3, #1
    1634:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1638:	31510000 	cmpcc	r1, r0
    163c:	31a01201 	lslcc	r1, r1, #4
    1640:	31a03203 	lslcc	r3, r3, #4
    1644:	3afffffa 	bcc	1634 <__udivsi3+0x2c>
    1648:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    164c:	31510000 	cmpcc	r1, r0
    1650:	31a01081 	lslcc	r1, r1, #1
    1654:	31a03083 	lslcc	r3, r3, #1
    1658:	3afffffa 	bcc	1648 <__udivsi3+0x40>
    165c:	e3a02000 	mov	r2, #0
    1660:	e1500001 	cmp	r0, r1
    1664:	20400001 	subcs	r0, r0, r1
    1668:	21822003 	orrcs	r2, r2, r3
    166c:	e15000a1 	cmp	r0, r1, lsr #1
    1670:	204000a1 	subcs	r0, r0, r1, lsr #1
    1674:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1678:	e1500121 	cmp	r0, r1, lsr #2
    167c:	20400121 	subcs	r0, r0, r1, lsr #2
    1680:	21822123 	orrcs	r2, r2, r3, lsr #2
    1684:	e15001a1 	cmp	r0, r1, lsr #3
    1688:	204001a1 	subcs	r0, r0, r1, lsr #3
    168c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1690:	e3500000 	cmp	r0, #0
    1694:	11b03223 	lsrsne	r3, r3, #4
    1698:	11a01221 	lsrne	r1, r1, #4
    169c:	1affffef 	bne	1660 <__udivsi3+0x58>
    16a0:	e1a00002 	mov	r0, r2
    16a4:	e12fff1e 	bx	lr
    16a8:	03a00001 	moveq	r0, #1
    16ac:	13a00000 	movne	r0, #0
    16b0:	e12fff1e 	bx	lr
    16b4:	e3510801 	cmp	r1, #65536	@ 0x10000
    16b8:	21a01821 	lsrcs	r1, r1, #16
    16bc:	23a02010 	movcs	r2, #16
    16c0:	33a02000 	movcc	r2, #0
    16c4:	e3510c01 	cmp	r1, #256	@ 0x100
    16c8:	21a01421 	lsrcs	r1, r1, #8
    16cc:	22822008 	addcs	r2, r2, #8
    16d0:	e3510010 	cmp	r1, #16
    16d4:	21a01221 	lsrcs	r1, r1, #4
    16d8:	22822004 	addcs	r2, r2, #4
    16dc:	e3510004 	cmp	r1, #4
    16e0:	82822003 	addhi	r2, r2, #3
    16e4:	908220a1 	addls	r2, r2, r1, lsr #1
    16e8:	e1a00230 	lsr	r0, r0, r2
    16ec:	e12fff1e 	bx	lr
    16f0:	e3500000 	cmp	r0, #0
    16f4:	13e00000 	mvnne	r0, #0
    16f8:	ea000007 	b	171c <__aeabi_idiv0>

000016fc <__aeabi_uidivmod>:
    16fc:	e3510000 	cmp	r1, #0
    1700:	0afffffa 	beq	16f0 <__udivsi3+0xe8>
    1704:	e92d4003 	push	{r0, r1, lr}
    1708:	ebffffbe 	bl	1608 <__udivsi3>
    170c:	e8bd4006 	pop	{r1, r2, lr}
    1710:	e0030092 	mul	r3, r2, r0
    1714:	e0411003 	sub	r1, r1, r3
    1718:	e12fff1e 	bx	lr

0000171c <__aeabi_idiv0>:
    171c:	e12fff1e 	bx	lr
