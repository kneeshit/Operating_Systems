
_uptime:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	eb0002e9 	bl	bb8 <uptime>
      10:	e50b0008 	str	r0, [fp, #-8]
      14:	e51b3008 	ldr	r3, [fp, #-8]
      18:	e59f2058 	ldr	r2, [pc, #88]	@ 78 <main+0x78>
      1c:	e0c21392 	smull	r1, r2, r2, r3
      20:	e1a02142 	asr	r2, r2, #2
      24:	e1a03fc3 	asr	r3, r3, #31
      28:	e0423003 	sub	r3, r2, r3
      2c:	e50b300c 	str	r3, [fp, #-12]
      30:	e51b2008 	ldr	r2, [fp, #-8]
      34:	e59f303c 	ldr	r3, [pc, #60]	@ 78 <main+0x78>
      38:	e0c31293 	smull	r1, r3, r3, r2
      3c:	e1a01143 	asr	r1, r3, #2
      40:	e1a03fc2 	asr	r3, r2, #31
      44:	e0411003 	sub	r1, r1, r3
      48:	e1a03001 	mov	r3, r1
      4c:	e1a03103 	lsl	r3, r3, #2
      50:	e0833001 	add	r3, r3, r1
      54:	e1a03083 	lsl	r3, r3, #1
      58:	e0423003 	sub	r3, r2, r3
      5c:	e50b3010 	str	r3, [fp, #-16]
      60:	e51b3010 	ldr	r3, [fp, #-16]
      64:	e51b200c 	ldr	r2, [fp, #-12]
      68:	e59f100c 	ldr	r1, [pc, #12]	@ 7c <main+0x7c>
      6c:	e3a00001 	mov	r0, #1
      70:	eb0003bc 	bl	f68 <printf>
      74:	eb000224 	bl	90c <exit>
      78:	66666667 	.word	0x66666667
      7c:	00001624 	.word	0x00001624

00000080 <strcpy>:
      80:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      84:	e28db000 	add	fp, sp, #0
      88:	e24dd014 	sub	sp, sp, #20
      8c:	e50b0010 	str	r0, [fp, #-16]
      90:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      94:	e51b3010 	ldr	r3, [fp, #-16]
      98:	e50b3008 	str	r3, [fp, #-8]
      9c:	e1a00000 	nop			@ (mov r0, r0)
      a0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      a4:	e2823001 	add	r3, r2, #1
      a8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      ac:	e51b3010 	ldr	r3, [fp, #-16]
      b0:	e2831001 	add	r1, r3, #1
      b4:	e50b1010 	str	r1, [fp, #-16]
      b8:	e5d22000 	ldrb	r2, [r2]
      bc:	e5c32000 	strb	r2, [r3]
      c0:	e5d33000 	ldrb	r3, [r3]
      c4:	e3530000 	cmp	r3, #0
      c8:	1afffff4 	bne	a0 <strcpy+0x20>
      cc:	e51b3008 	ldr	r3, [fp, #-8]
      d0:	e1a00003 	mov	r0, r3
      d4:	e28bd000 	add	sp, fp, #0
      d8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      dc:	e12fff1e 	bx	lr

000000e0 <strcmp>:
      e0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      e4:	e28db000 	add	fp, sp, #0
      e8:	e24dd00c 	sub	sp, sp, #12
      ec:	e50b0008 	str	r0, [fp, #-8]
      f0:	e50b100c 	str	r1, [fp, #-12]
      f4:	ea000005 	b	110 <strcmp+0x30>
      f8:	e51b3008 	ldr	r3, [fp, #-8]
      fc:	e2833001 	add	r3, r3, #1
     100:	e50b3008 	str	r3, [fp, #-8]
     104:	e51b300c 	ldr	r3, [fp, #-12]
     108:	e2833001 	add	r3, r3, #1
     10c:	e50b300c 	str	r3, [fp, #-12]
     110:	e51b3008 	ldr	r3, [fp, #-8]
     114:	e5d33000 	ldrb	r3, [r3]
     118:	e3530000 	cmp	r3, #0
     11c:	0a000005 	beq	138 <strcmp+0x58>
     120:	e51b3008 	ldr	r3, [fp, #-8]
     124:	e5d32000 	ldrb	r2, [r3]
     128:	e51b300c 	ldr	r3, [fp, #-12]
     12c:	e5d33000 	ldrb	r3, [r3]
     130:	e1520003 	cmp	r2, r3
     134:	0affffef 	beq	f8 <strcmp+0x18>
     138:	e51b3008 	ldr	r3, [fp, #-8]
     13c:	e5d33000 	ldrb	r3, [r3]
     140:	e1a02003 	mov	r2, r3
     144:	e51b300c 	ldr	r3, [fp, #-12]
     148:	e5d33000 	ldrb	r3, [r3]
     14c:	e0423003 	sub	r3, r2, r3
     150:	e1a00003 	mov	r0, r3
     154:	e28bd000 	add	sp, fp, #0
     158:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     15c:	e12fff1e 	bx	lr

00000160 <strlen>:
     160:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     164:	e28db000 	add	fp, sp, #0
     168:	e24dd014 	sub	sp, sp, #20
     16c:	e50b0010 	str	r0, [fp, #-16]
     170:	e3a03000 	mov	r3, #0
     174:	e50b3008 	str	r3, [fp, #-8]
     178:	ea000002 	b	188 <strlen+0x28>
     17c:	e51b3008 	ldr	r3, [fp, #-8]
     180:	e2833001 	add	r3, r3, #1
     184:	e50b3008 	str	r3, [fp, #-8]
     188:	e51b3008 	ldr	r3, [fp, #-8]
     18c:	e51b2010 	ldr	r2, [fp, #-16]
     190:	e0823003 	add	r3, r2, r3
     194:	e5d33000 	ldrb	r3, [r3]
     198:	e3530000 	cmp	r3, #0
     19c:	1afffff6 	bne	17c <strlen+0x1c>
     1a0:	e51b3008 	ldr	r3, [fp, #-8]
     1a4:	e1a00003 	mov	r0, r3
     1a8:	e28bd000 	add	sp, fp, #0
     1ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1b0:	e12fff1e 	bx	lr

000001b4 <memset>:
     1b4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1b8:	e28db000 	add	fp, sp, #0
     1bc:	e24dd024 	sub	sp, sp, #36	@ 0x24
     1c0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     1c4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     1c8:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     1cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     1d0:	e50b3008 	str	r3, [fp, #-8]
     1d4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1d8:	e54b300d 	strb	r3, [fp, #-13]
     1dc:	e55b200d 	ldrb	r2, [fp, #-13]
     1e0:	e1a03002 	mov	r3, r2
     1e4:	e1a03403 	lsl	r3, r3, #8
     1e8:	e0833002 	add	r3, r3, r2
     1ec:	e1a03803 	lsl	r3, r3, #16
     1f0:	e1a02003 	mov	r2, r3
     1f4:	e55b300d 	ldrb	r3, [fp, #-13]
     1f8:	e1a03403 	lsl	r3, r3, #8
     1fc:	e1822003 	orr	r2, r2, r3
     200:	e55b300d 	ldrb	r3, [fp, #-13]
     204:	e1823003 	orr	r3, r2, r3
     208:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     20c:	ea000008 	b	234 <memset+0x80>
     210:	e51b3008 	ldr	r3, [fp, #-8]
     214:	e55b200d 	ldrb	r2, [fp, #-13]
     218:	e5c32000 	strb	r2, [r3]
     21c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     220:	e2433001 	sub	r3, r3, #1
     224:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     228:	e51b3008 	ldr	r3, [fp, #-8]
     22c:	e2833001 	add	r3, r3, #1
     230:	e50b3008 	str	r3, [fp, #-8]
     234:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     238:	e3530000 	cmp	r3, #0
     23c:	0a000003 	beq	250 <memset+0x9c>
     240:	e51b3008 	ldr	r3, [fp, #-8]
     244:	e2033003 	and	r3, r3, #3
     248:	e3530000 	cmp	r3, #0
     24c:	1affffef 	bne	210 <memset+0x5c>
     250:	e51b3008 	ldr	r3, [fp, #-8]
     254:	e50b300c 	str	r3, [fp, #-12]
     258:	ea000008 	b	280 <memset+0xcc>
     25c:	e51b300c 	ldr	r3, [fp, #-12]
     260:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     264:	e5832000 	str	r2, [r3]
     268:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     26c:	e2433004 	sub	r3, r3, #4
     270:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     274:	e51b300c 	ldr	r3, [fp, #-12]
     278:	e2833004 	add	r3, r3, #4
     27c:	e50b300c 	str	r3, [fp, #-12]
     280:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     284:	e3530003 	cmp	r3, #3
     288:	8afffff3 	bhi	25c <memset+0xa8>
     28c:	e51b300c 	ldr	r3, [fp, #-12]
     290:	e50b3008 	str	r3, [fp, #-8]
     294:	ea000008 	b	2bc <memset+0x108>
     298:	e51b3008 	ldr	r3, [fp, #-8]
     29c:	e55b200d 	ldrb	r2, [fp, #-13]
     2a0:	e5c32000 	strb	r2, [r3]
     2a4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2a8:	e2433001 	sub	r3, r3, #1
     2ac:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2b0:	e51b3008 	ldr	r3, [fp, #-8]
     2b4:	e2833001 	add	r3, r3, #1
     2b8:	e50b3008 	str	r3, [fp, #-8]
     2bc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2c0:	e3530000 	cmp	r3, #0
     2c4:	1afffff3 	bne	298 <memset+0xe4>
     2c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2cc:	e1a00003 	mov	r0, r3
     2d0:	e28bd000 	add	sp, fp, #0
     2d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2d8:	e12fff1e 	bx	lr

000002dc <strchr>:
     2dc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2e0:	e28db000 	add	fp, sp, #0
     2e4:	e24dd00c 	sub	sp, sp, #12
     2e8:	e50b0008 	str	r0, [fp, #-8]
     2ec:	e1a03001 	mov	r3, r1
     2f0:	e54b3009 	strb	r3, [fp, #-9]
     2f4:	ea000009 	b	320 <strchr+0x44>
     2f8:	e51b3008 	ldr	r3, [fp, #-8]
     2fc:	e5d33000 	ldrb	r3, [r3]
     300:	e55b2009 	ldrb	r2, [fp, #-9]
     304:	e1520003 	cmp	r2, r3
     308:	1a000001 	bne	314 <strchr+0x38>
     30c:	e51b3008 	ldr	r3, [fp, #-8]
     310:	ea000007 	b	334 <strchr+0x58>
     314:	e51b3008 	ldr	r3, [fp, #-8]
     318:	e2833001 	add	r3, r3, #1
     31c:	e50b3008 	str	r3, [fp, #-8]
     320:	e51b3008 	ldr	r3, [fp, #-8]
     324:	e5d33000 	ldrb	r3, [r3]
     328:	e3530000 	cmp	r3, #0
     32c:	1afffff1 	bne	2f8 <strchr+0x1c>
     330:	e3a03000 	mov	r3, #0
     334:	e1a00003 	mov	r0, r3
     338:	e28bd000 	add	sp, fp, #0
     33c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     340:	e12fff1e 	bx	lr

00000344 <gets>:
     344:	e92d4800 	push	{fp, lr}
     348:	e28db004 	add	fp, sp, #4
     34c:	e24dd018 	sub	sp, sp, #24
     350:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     354:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     358:	e3a03000 	mov	r3, #0
     35c:	e50b3008 	str	r3, [fp, #-8]
     360:	ea000016 	b	3c0 <gets+0x7c>
     364:	e24b300d 	sub	r3, fp, #13
     368:	e3a02001 	mov	r2, #1
     36c:	e1a01003 	mov	r1, r3
     370:	e3a00000 	mov	r0, #0
     374:	eb00017f 	bl	978 <read>
     378:	e50b000c 	str	r0, [fp, #-12]
     37c:	e51b300c 	ldr	r3, [fp, #-12]
     380:	e3530000 	cmp	r3, #0
     384:	da000013 	ble	3d8 <gets+0x94>
     388:	e51b3008 	ldr	r3, [fp, #-8]
     38c:	e2832001 	add	r2, r3, #1
     390:	e50b2008 	str	r2, [fp, #-8]
     394:	e1a02003 	mov	r2, r3
     398:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     39c:	e0833002 	add	r3, r3, r2
     3a0:	e55b200d 	ldrb	r2, [fp, #-13]
     3a4:	e5c32000 	strb	r2, [r3]
     3a8:	e55b300d 	ldrb	r3, [fp, #-13]
     3ac:	e353000a 	cmp	r3, #10
     3b0:	0a000009 	beq	3dc <gets+0x98>
     3b4:	e55b300d 	ldrb	r3, [fp, #-13]
     3b8:	e353000d 	cmp	r3, #13
     3bc:	0a000006 	beq	3dc <gets+0x98>
     3c0:	e51b3008 	ldr	r3, [fp, #-8]
     3c4:	e2833001 	add	r3, r3, #1
     3c8:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     3cc:	e1520003 	cmp	r2, r3
     3d0:	caffffe3 	bgt	364 <gets+0x20>
     3d4:	ea000000 	b	3dc <gets+0x98>
     3d8:	e1a00000 	nop			@ (mov r0, r0)
     3dc:	e51b3008 	ldr	r3, [fp, #-8]
     3e0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     3e4:	e0823003 	add	r3, r2, r3
     3e8:	e3a02000 	mov	r2, #0
     3ec:	e5c32000 	strb	r2, [r3]
     3f0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3f4:	e1a00003 	mov	r0, r3
     3f8:	e24bd004 	sub	sp, fp, #4
     3fc:	e8bd8800 	pop	{fp, pc}

00000400 <stat>:
     400:	e92d4800 	push	{fp, lr}
     404:	e28db004 	add	fp, sp, #4
     408:	e24dd010 	sub	sp, sp, #16
     40c:	e50b0010 	str	r0, [fp, #-16]
     410:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     414:	e3a01000 	mov	r1, #0
     418:	e51b0010 	ldr	r0, [fp, #-16]
     41c:	eb000182 	bl	a2c <open>
     420:	e50b0008 	str	r0, [fp, #-8]
     424:	e51b3008 	ldr	r3, [fp, #-8]
     428:	e3530000 	cmp	r3, #0
     42c:	aa000001 	bge	438 <stat+0x38>
     430:	e3e03000 	mvn	r3, #0
     434:	ea000006 	b	454 <stat+0x54>
     438:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     43c:	e51b0008 	ldr	r0, [fp, #-8]
     440:	eb000194 	bl	a98 <fstat>
     444:	e50b000c 	str	r0, [fp, #-12]
     448:	e51b0008 	ldr	r0, [fp, #-8]
     44c:	eb00015b 	bl	9c0 <close>
     450:	e51b300c 	ldr	r3, [fp, #-12]
     454:	e1a00003 	mov	r0, r3
     458:	e24bd004 	sub	sp, fp, #4
     45c:	e8bd8800 	pop	{fp, pc}

00000460 <atoi>:
     460:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     464:	e28db000 	add	fp, sp, #0
     468:	e24dd014 	sub	sp, sp, #20
     46c:	e50b0010 	str	r0, [fp, #-16]
     470:	e3a03000 	mov	r3, #0
     474:	e50b3008 	str	r3, [fp, #-8]
     478:	ea00000c 	b	4b0 <atoi+0x50>
     47c:	e51b2008 	ldr	r2, [fp, #-8]
     480:	e1a03002 	mov	r3, r2
     484:	e1a03103 	lsl	r3, r3, #2
     488:	e0833002 	add	r3, r3, r2
     48c:	e1a03083 	lsl	r3, r3, #1
     490:	e1a01003 	mov	r1, r3
     494:	e51b3010 	ldr	r3, [fp, #-16]
     498:	e2832001 	add	r2, r3, #1
     49c:	e50b2010 	str	r2, [fp, #-16]
     4a0:	e5d33000 	ldrb	r3, [r3]
     4a4:	e0813003 	add	r3, r1, r3
     4a8:	e2433030 	sub	r3, r3, #48	@ 0x30
     4ac:	e50b3008 	str	r3, [fp, #-8]
     4b0:	e51b3010 	ldr	r3, [fp, #-16]
     4b4:	e5d33000 	ldrb	r3, [r3]
     4b8:	e353002f 	cmp	r3, #47	@ 0x2f
     4bc:	9a000003 	bls	4d0 <atoi+0x70>
     4c0:	e51b3010 	ldr	r3, [fp, #-16]
     4c4:	e5d33000 	ldrb	r3, [r3]
     4c8:	e3530039 	cmp	r3, #57	@ 0x39
     4cc:	9affffea 	bls	47c <atoi+0x1c>
     4d0:	e51b3010 	ldr	r3, [fp, #-16]
     4d4:	e5d33000 	ldrb	r3, [r3]
     4d8:	e3530000 	cmp	r3, #0
     4dc:	1a000001 	bne	4e8 <atoi+0x88>
     4e0:	e51b3008 	ldr	r3, [fp, #-8]
     4e4:	ea000000 	b	4ec <atoi+0x8c>
     4e8:	e3e03000 	mvn	r3, #0
     4ec:	e1a00003 	mov	r0, r3
     4f0:	e28bd000 	add	sp, fp, #0
     4f4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4f8:	e12fff1e 	bx	lr

000004fc <memmove>:
     4fc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     500:	e28db000 	add	fp, sp, #0
     504:	e24dd01c 	sub	sp, sp, #28
     508:	e50b0010 	str	r0, [fp, #-16]
     50c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     510:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     514:	e51b3010 	ldr	r3, [fp, #-16]
     518:	e50b3008 	str	r3, [fp, #-8]
     51c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     520:	e50b300c 	str	r3, [fp, #-12]
     524:	ea000007 	b	548 <memmove+0x4c>
     528:	e51b200c 	ldr	r2, [fp, #-12]
     52c:	e2823001 	add	r3, r2, #1
     530:	e50b300c 	str	r3, [fp, #-12]
     534:	e51b3008 	ldr	r3, [fp, #-8]
     538:	e2831001 	add	r1, r3, #1
     53c:	e50b1008 	str	r1, [fp, #-8]
     540:	e5d22000 	ldrb	r2, [r2]
     544:	e5c32000 	strb	r2, [r3]
     548:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     54c:	e2432001 	sub	r2, r3, #1
     550:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     554:	e3530000 	cmp	r3, #0
     558:	cafffff2 	bgt	528 <memmove+0x2c>
     55c:	e51b3010 	ldr	r3, [fp, #-16]
     560:	e1a00003 	mov	r0, r3
     564:	e28bd000 	add	sp, fp, #0
     568:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     56c:	e12fff1e 	bx	lr

00000570 <initiateLock>:
     570:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     574:	e28db000 	add	fp, sp, #0
     578:	e24dd00c 	sub	sp, sp, #12
     57c:	e50b0008 	str	r0, [fp, #-8]
     580:	e51b3008 	ldr	r3, [fp, #-8]
     584:	e3a02000 	mov	r2, #0
     588:	e5832000 	str	r2, [r3]
     58c:	e51b3008 	ldr	r3, [fp, #-8]
     590:	e3a02001 	mov	r2, #1
     594:	e5832004 	str	r2, [r3, #4]
     598:	e1a00000 	nop			@ (mov r0, r0)
     59c:	e28bd000 	add	sp, fp, #0
     5a0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5a4:	e12fff1e 	bx	lr

000005a8 <xchg>:
     5a8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5ac:	e28db000 	add	fp, sp, #0
     5b0:	e24dd00c 	sub	sp, sp, #12
     5b4:	e50b0008 	str	r0, [fp, #-8]
     5b8:	e50b100c 	str	r1, [fp, #-12]
     5bc:	e51b200c 	ldr	r2, [fp, #-12]
     5c0:	e51b3008 	ldr	r3, [fp, #-8]
     5c4:	e1931f9f 	ldrex	r1, [r3]
     5c8:	e1830f92 	strex	r0, r2, [r3]
     5cc:	e3500000 	cmp	r0, #0
     5d0:	1afffffb 	bne	5c4 <xchg+0x1c>
     5d4:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     5d8:	e1a03001 	mov	r3, r1
     5dc:	e1a00003 	mov	r0, r3
     5e0:	e28bd000 	add	sp, fp, #0
     5e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5e8:	e12fff1e 	bx	lr

000005ec <acquireLock>:
     5ec:	e92d4800 	push	{fp, lr}
     5f0:	e28db004 	add	fp, sp, #4
     5f4:	e24dd008 	sub	sp, sp, #8
     5f8:	e50b0008 	str	r0, [fp, #-8]
     5fc:	e51b3008 	ldr	r3, [fp, #-8]
     600:	e5933004 	ldr	r3, [r3, #4]
     604:	e3530000 	cmp	r3, #0
     608:	0a000008 	beq	630 <acquireLock+0x44>
     60c:	e1a00000 	nop			@ (mov r0, r0)
     610:	e51b3008 	ldr	r3, [fp, #-8]
     614:	e3a01001 	mov	r1, #1
     618:	e1a00003 	mov	r0, r3
     61c:	ebffffe1 	bl	5a8 <xchg>
     620:	e1a03000 	mov	r3, r0
     624:	e3530000 	cmp	r3, #0
     628:	1afffff8 	bne	610 <acquireLock+0x24>
     62c:	ea000000 	b	634 <acquireLock+0x48>
     630:	e1a00000 	nop			@ (mov r0, r0)
     634:	e24bd004 	sub	sp, fp, #4
     638:	e8bd8800 	pop	{fp, pc}

0000063c <releaseLock>:
     63c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     640:	e28db000 	add	fp, sp, #0
     644:	e24dd00c 	sub	sp, sp, #12
     648:	e50b0008 	str	r0, [fp, #-8]
     64c:	e51b3008 	ldr	r3, [fp, #-8]
     650:	e5933004 	ldr	r3, [r3, #4]
     654:	e3530000 	cmp	r3, #0
     658:	0a000007 	beq	67c <releaseLock+0x40>
     65c:	e51b3008 	ldr	r3, [fp, #-8]
     660:	e5933000 	ldr	r3, [r3]
     664:	e3530001 	cmp	r3, #1
     668:	1a000005 	bne	684 <releaseLock+0x48>
     66c:	e51b3008 	ldr	r3, [fp, #-8]
     670:	e3a02000 	mov	r2, #0
     674:	e5832000 	str	r2, [r3]
     678:	ea000002 	b	688 <releaseLock+0x4c>
     67c:	e1a00000 	nop			@ (mov r0, r0)
     680:	ea000000 	b	688 <releaseLock+0x4c>
     684:	e1a00000 	nop			@ (mov r0, r0)
     688:	e28bd000 	add	sp, fp, #0
     68c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     690:	e12fff1e 	bx	lr

00000694 <initiateCondVar>:
     694:	e92d4800 	push	{fp, lr}
     698:	e28db004 	add	fp, sp, #4
     69c:	e24dd008 	sub	sp, sp, #8
     6a0:	e50b0008 	str	r0, [fp, #-8]
     6a4:	eb0001b8 	bl	d8c <getChannel>
     6a8:	e1a02000 	mov	r2, r0
     6ac:	e51b3008 	ldr	r3, [fp, #-8]
     6b0:	e5832000 	str	r2, [r3]
     6b4:	e51b3008 	ldr	r3, [fp, #-8]
     6b8:	e3a02001 	mov	r2, #1
     6bc:	e5832004 	str	r2, [r3, #4]
     6c0:	e1a00000 	nop			@ (mov r0, r0)
     6c4:	e24bd004 	sub	sp, fp, #4
     6c8:	e8bd8800 	pop	{fp, pc}

000006cc <condWait>:
     6cc:	e92d4800 	push	{fp, lr}
     6d0:	e28db004 	add	fp, sp, #4
     6d4:	e24dd008 	sub	sp, sp, #8
     6d8:	e50b0008 	str	r0, [fp, #-8]
     6dc:	e50b100c 	str	r1, [fp, #-12]
     6e0:	e51b3008 	ldr	r3, [fp, #-8]
     6e4:	e5933004 	ldr	r3, [r3, #4]
     6e8:	e3530000 	cmp	r3, #0
     6ec:	0a00000c 	beq	724 <condWait+0x58>
     6f0:	e51b300c 	ldr	r3, [fp, #-12]
     6f4:	e5933004 	ldr	r3, [r3, #4]
     6f8:	e3530000 	cmp	r3, #0
     6fc:	0a000008 	beq	724 <condWait+0x58>
     700:	e51b000c 	ldr	r0, [fp, #-12]
     704:	ebffffcc 	bl	63c <releaseLock>
     708:	e51b3008 	ldr	r3, [fp, #-8]
     70c:	e5933000 	ldr	r3, [r3]
     710:	e1a00003 	mov	r0, r3
     714:	eb000193 	bl	d68 <sleepChan>
     718:	e51b000c 	ldr	r0, [fp, #-12]
     71c:	ebffffb2 	bl	5ec <acquireLock>
     720:	ea000000 	b	728 <condWait+0x5c>
     724:	e1a00000 	nop			@ (mov r0, r0)
     728:	e24bd004 	sub	sp, fp, #4
     72c:	e8bd8800 	pop	{fp, pc}

00000730 <broadcast>:
     730:	e92d4800 	push	{fp, lr}
     734:	e28db004 	add	fp, sp, #4
     738:	e24dd008 	sub	sp, sp, #8
     73c:	e50b0008 	str	r0, [fp, #-8]
     740:	e51b3008 	ldr	r3, [fp, #-8]
     744:	e5933004 	ldr	r3, [r3, #4]
     748:	e3530000 	cmp	r3, #0
     74c:	0a000004 	beq	764 <broadcast+0x34>
     750:	e51b3008 	ldr	r3, [fp, #-8]
     754:	e5933000 	ldr	r3, [r3]
     758:	e1a00003 	mov	r0, r3
     75c:	eb000193 	bl	db0 <sigChan>
     760:	ea000000 	b	768 <broadcast+0x38>
     764:	e1a00000 	nop			@ (mov r0, r0)
     768:	e24bd004 	sub	sp, fp, #4
     76c:	e8bd8800 	pop	{fp, pc}

00000770 <signal>:
     770:	e92d4800 	push	{fp, lr}
     774:	e28db004 	add	fp, sp, #4
     778:	e24dd008 	sub	sp, sp, #8
     77c:	e50b0008 	str	r0, [fp, #-8]
     780:	e51b3008 	ldr	r3, [fp, #-8]
     784:	e5933004 	ldr	r3, [r3, #4]
     788:	e3530000 	cmp	r3, #0
     78c:	0a000004 	beq	7a4 <signal+0x34>
     790:	e51b3008 	ldr	r3, [fp, #-8]
     794:	e5933000 	ldr	r3, [r3]
     798:	e1a00003 	mov	r0, r3
     79c:	eb00018c 	bl	dd4 <sigOneChan>
     7a0:	ea000000 	b	7a8 <signal+0x38>
     7a4:	e1a00000 	nop			@ (mov r0, r0)
     7a8:	e24bd004 	sub	sp, fp, #4
     7ac:	e8bd8800 	pop	{fp, pc}

000007b0 <semInit>:
     7b0:	e92d4800 	push	{fp, lr}
     7b4:	e28db004 	add	fp, sp, #4
     7b8:	e24dd008 	sub	sp, sp, #8
     7bc:	e50b0008 	str	r0, [fp, #-8]
     7c0:	e50b100c 	str	r1, [fp, #-12]
     7c4:	e51b3008 	ldr	r3, [fp, #-8]
     7c8:	e51b200c 	ldr	r2, [fp, #-12]
     7cc:	e5832000 	str	r2, [r3]
     7d0:	e51b3008 	ldr	r3, [fp, #-8]
     7d4:	e2833004 	add	r3, r3, #4
     7d8:	e1a00003 	mov	r0, r3
     7dc:	ebffff63 	bl	570 <initiateLock>
     7e0:	e51b3008 	ldr	r3, [fp, #-8]
     7e4:	e283300c 	add	r3, r3, #12
     7e8:	e1a00003 	mov	r0, r3
     7ec:	ebffffa8 	bl	694 <initiateCondVar>
     7f0:	e51b3008 	ldr	r3, [fp, #-8]
     7f4:	e3a02001 	mov	r2, #1
     7f8:	e5832014 	str	r2, [r3, #20]
     7fc:	e1a00000 	nop			@ (mov r0, r0)
     800:	e24bd004 	sub	sp, fp, #4
     804:	e8bd8800 	pop	{fp, pc}

00000808 <semUp>:
     808:	e92d4800 	push	{fp, lr}
     80c:	e28db004 	add	fp, sp, #4
     810:	e24dd008 	sub	sp, sp, #8
     814:	e50b0008 	str	r0, [fp, #-8]
     818:	e51b3008 	ldr	r3, [fp, #-8]
     81c:	e2833004 	add	r3, r3, #4
     820:	e1a00003 	mov	r0, r3
     824:	ebffff70 	bl	5ec <acquireLock>
     828:	e51b3008 	ldr	r3, [fp, #-8]
     82c:	e5933000 	ldr	r3, [r3]
     830:	e2832001 	add	r2, r3, #1
     834:	e51b3008 	ldr	r3, [fp, #-8]
     838:	e5832000 	str	r2, [r3]
     83c:	e51b3008 	ldr	r3, [fp, #-8]
     840:	e283300c 	add	r3, r3, #12
     844:	e1a00003 	mov	r0, r3
     848:	ebffffc8 	bl	770 <signal>
     84c:	e51b3008 	ldr	r3, [fp, #-8]
     850:	e2833004 	add	r3, r3, #4
     854:	e1a00003 	mov	r0, r3
     858:	ebffff77 	bl	63c <releaseLock>
     85c:	e1a00000 	nop			@ (mov r0, r0)
     860:	e24bd004 	sub	sp, fp, #4
     864:	e8bd8800 	pop	{fp, pc}

00000868 <semDown>:
     868:	e92d4800 	push	{fp, lr}
     86c:	e28db004 	add	fp, sp, #4
     870:	e24dd008 	sub	sp, sp, #8
     874:	e50b0008 	str	r0, [fp, #-8]
     878:	e51b3008 	ldr	r3, [fp, #-8]
     87c:	e2833004 	add	r3, r3, #4
     880:	e1a00003 	mov	r0, r3
     884:	ebffff58 	bl	5ec <acquireLock>
     888:	ea000006 	b	8a8 <semDown+0x40>
     88c:	e51b3008 	ldr	r3, [fp, #-8]
     890:	e283200c 	add	r2, r3, #12
     894:	e51b3008 	ldr	r3, [fp, #-8]
     898:	e2833004 	add	r3, r3, #4
     89c:	e1a01003 	mov	r1, r3
     8a0:	e1a00002 	mov	r0, r2
     8a4:	ebffff88 	bl	6cc <condWait>
     8a8:	e51b3008 	ldr	r3, [fp, #-8]
     8ac:	e5933000 	ldr	r3, [r3]
     8b0:	e3530000 	cmp	r3, #0
     8b4:	dafffff4 	ble	88c <semDown+0x24>
     8b8:	e51b3008 	ldr	r3, [fp, #-8]
     8bc:	e5933000 	ldr	r3, [r3]
     8c0:	e2432001 	sub	r2, r3, #1
     8c4:	e51b3008 	ldr	r3, [fp, #-8]
     8c8:	e5832000 	str	r2, [r3]
     8cc:	e51b3008 	ldr	r3, [fp, #-8]
     8d0:	e2833004 	add	r3, r3, #4
     8d4:	e1a00003 	mov	r0, r3
     8d8:	ebffff57 	bl	63c <releaseLock>
     8dc:	e1a00000 	nop			@ (mov r0, r0)
     8e0:	e24bd004 	sub	sp, fp, #4
     8e4:	e8bd8800 	pop	{fp, pc}

000008e8 <fork>:
     8e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8ec:	e1a04003 	mov	r4, r3
     8f0:	e1a03002 	mov	r3, r2
     8f4:	e1a02001 	mov	r2, r1
     8f8:	e1a01000 	mov	r1, r0
     8fc:	e3a00001 	mov	r0, #1
     900:	ef000000 	svc	0x00000000
     904:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     908:	e12fff1e 	bx	lr

0000090c <exit>:
     90c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     910:	e1a04003 	mov	r4, r3
     914:	e1a03002 	mov	r3, r2
     918:	e1a02001 	mov	r2, r1
     91c:	e1a01000 	mov	r1, r0
     920:	e3a00002 	mov	r0, #2
     924:	ef000000 	svc	0x00000000
     928:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     92c:	e12fff1e 	bx	lr

00000930 <wait>:
     930:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     934:	e1a04003 	mov	r4, r3
     938:	e1a03002 	mov	r3, r2
     93c:	e1a02001 	mov	r2, r1
     940:	e1a01000 	mov	r1, r0
     944:	e3a00003 	mov	r0, #3
     948:	ef000000 	svc	0x00000000
     94c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     950:	e12fff1e 	bx	lr

00000954 <pipe>:
     954:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     958:	e1a04003 	mov	r4, r3
     95c:	e1a03002 	mov	r3, r2
     960:	e1a02001 	mov	r2, r1
     964:	e1a01000 	mov	r1, r0
     968:	e3a00004 	mov	r0, #4
     96c:	ef000000 	svc	0x00000000
     970:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     974:	e12fff1e 	bx	lr

00000978 <read>:
     978:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     97c:	e1a04003 	mov	r4, r3
     980:	e1a03002 	mov	r3, r2
     984:	e1a02001 	mov	r2, r1
     988:	e1a01000 	mov	r1, r0
     98c:	e3a00005 	mov	r0, #5
     990:	ef000000 	svc	0x00000000
     994:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     998:	e12fff1e 	bx	lr

0000099c <write>:
     99c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a0:	e1a04003 	mov	r4, r3
     9a4:	e1a03002 	mov	r3, r2
     9a8:	e1a02001 	mov	r2, r1
     9ac:	e1a01000 	mov	r1, r0
     9b0:	e3a00010 	mov	r0, #16
     9b4:	ef000000 	svc	0x00000000
     9b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9bc:	e12fff1e 	bx	lr

000009c0 <close>:
     9c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c4:	e1a04003 	mov	r4, r3
     9c8:	e1a03002 	mov	r3, r2
     9cc:	e1a02001 	mov	r2, r1
     9d0:	e1a01000 	mov	r1, r0
     9d4:	e3a00015 	mov	r0, #21
     9d8:	ef000000 	svc	0x00000000
     9dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e0:	e12fff1e 	bx	lr

000009e4 <kill>:
     9e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9e8:	e1a04003 	mov	r4, r3
     9ec:	e1a03002 	mov	r3, r2
     9f0:	e1a02001 	mov	r2, r1
     9f4:	e1a01000 	mov	r1, r0
     9f8:	e3a00006 	mov	r0, #6
     9fc:	ef000000 	svc	0x00000000
     a00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a04:	e12fff1e 	bx	lr

00000a08 <exec>:
     a08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a0c:	e1a04003 	mov	r4, r3
     a10:	e1a03002 	mov	r3, r2
     a14:	e1a02001 	mov	r2, r1
     a18:	e1a01000 	mov	r1, r0
     a1c:	e3a00007 	mov	r0, #7
     a20:	ef000000 	svc	0x00000000
     a24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a28:	e12fff1e 	bx	lr

00000a2c <open>:
     a2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a30:	e1a04003 	mov	r4, r3
     a34:	e1a03002 	mov	r3, r2
     a38:	e1a02001 	mov	r2, r1
     a3c:	e1a01000 	mov	r1, r0
     a40:	e3a0000f 	mov	r0, #15
     a44:	ef000000 	svc	0x00000000
     a48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a4c:	e12fff1e 	bx	lr

00000a50 <mknod>:
     a50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a54:	e1a04003 	mov	r4, r3
     a58:	e1a03002 	mov	r3, r2
     a5c:	e1a02001 	mov	r2, r1
     a60:	e1a01000 	mov	r1, r0
     a64:	e3a00011 	mov	r0, #17
     a68:	ef000000 	svc	0x00000000
     a6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a70:	e12fff1e 	bx	lr

00000a74 <unlink>:
     a74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a78:	e1a04003 	mov	r4, r3
     a7c:	e1a03002 	mov	r3, r2
     a80:	e1a02001 	mov	r2, r1
     a84:	e1a01000 	mov	r1, r0
     a88:	e3a00012 	mov	r0, #18
     a8c:	ef000000 	svc	0x00000000
     a90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a94:	e12fff1e 	bx	lr

00000a98 <fstat>:
     a98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a9c:	e1a04003 	mov	r4, r3
     aa0:	e1a03002 	mov	r3, r2
     aa4:	e1a02001 	mov	r2, r1
     aa8:	e1a01000 	mov	r1, r0
     aac:	e3a00008 	mov	r0, #8
     ab0:	ef000000 	svc	0x00000000
     ab4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ab8:	e12fff1e 	bx	lr

00000abc <link>:
     abc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac0:	e1a04003 	mov	r4, r3
     ac4:	e1a03002 	mov	r3, r2
     ac8:	e1a02001 	mov	r2, r1
     acc:	e1a01000 	mov	r1, r0
     ad0:	e3a00013 	mov	r0, #19
     ad4:	ef000000 	svc	0x00000000
     ad8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     adc:	e12fff1e 	bx	lr

00000ae0 <mkdir>:
     ae0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae4:	e1a04003 	mov	r4, r3
     ae8:	e1a03002 	mov	r3, r2
     aec:	e1a02001 	mov	r2, r1
     af0:	e1a01000 	mov	r1, r0
     af4:	e3a00014 	mov	r0, #20
     af8:	ef000000 	svc	0x00000000
     afc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b00:	e12fff1e 	bx	lr

00000b04 <chdir>:
     b04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b08:	e1a04003 	mov	r4, r3
     b0c:	e1a03002 	mov	r3, r2
     b10:	e1a02001 	mov	r2, r1
     b14:	e1a01000 	mov	r1, r0
     b18:	e3a00009 	mov	r0, #9
     b1c:	ef000000 	svc	0x00000000
     b20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b24:	e12fff1e 	bx	lr

00000b28 <dup>:
     b28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b2c:	e1a04003 	mov	r4, r3
     b30:	e1a03002 	mov	r3, r2
     b34:	e1a02001 	mov	r2, r1
     b38:	e1a01000 	mov	r1, r0
     b3c:	e3a0000a 	mov	r0, #10
     b40:	ef000000 	svc	0x00000000
     b44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b48:	e12fff1e 	bx	lr

00000b4c <getpid>:
     b4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b50:	e1a04003 	mov	r4, r3
     b54:	e1a03002 	mov	r3, r2
     b58:	e1a02001 	mov	r2, r1
     b5c:	e1a01000 	mov	r1, r0
     b60:	e3a0000b 	mov	r0, #11
     b64:	ef000000 	svc	0x00000000
     b68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b6c:	e12fff1e 	bx	lr

00000b70 <sbrk>:
     b70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b74:	e1a04003 	mov	r4, r3
     b78:	e1a03002 	mov	r3, r2
     b7c:	e1a02001 	mov	r2, r1
     b80:	e1a01000 	mov	r1, r0
     b84:	e3a0000c 	mov	r0, #12
     b88:	ef000000 	svc	0x00000000
     b8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b90:	e12fff1e 	bx	lr

00000b94 <sleep>:
     b94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b98:	e1a04003 	mov	r4, r3
     b9c:	e1a03002 	mov	r3, r2
     ba0:	e1a02001 	mov	r2, r1
     ba4:	e1a01000 	mov	r1, r0
     ba8:	e3a0000d 	mov	r0, #13
     bac:	ef000000 	svc	0x00000000
     bb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb4:	e12fff1e 	bx	lr

00000bb8 <uptime>:
     bb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bbc:	e1a04003 	mov	r4, r3
     bc0:	e1a03002 	mov	r3, r2
     bc4:	e1a02001 	mov	r2, r1
     bc8:	e1a01000 	mov	r1, r0
     bcc:	e3a0000e 	mov	r0, #14
     bd0:	ef000000 	svc	0x00000000
     bd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bd8:	e12fff1e 	bx	lr

00000bdc <getprocs>:
     bdc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be0:	e1a04003 	mov	r4, r3
     be4:	e1a03002 	mov	r3, r2
     be8:	e1a02001 	mov	r2, r1
     bec:	e1a01000 	mov	r1, r0
     bf0:	e3a00016 	mov	r0, #22
     bf4:	ef000000 	svc	0x00000000
     bf8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bfc:	e12fff1e 	bx	lr

00000c00 <settickets>:
     c00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c04:	e1a04003 	mov	r4, r3
     c08:	e1a03002 	mov	r3, r2
     c0c:	e1a02001 	mov	r2, r1
     c10:	e1a01000 	mov	r1, r0
     c14:	e3a00017 	mov	r0, #23
     c18:	ef000000 	svc	0x00000000
     c1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c20:	e12fff1e 	bx	lr

00000c24 <srand>:
     c24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c28:	e1a04003 	mov	r4, r3
     c2c:	e1a03002 	mov	r3, r2
     c30:	e1a02001 	mov	r2, r1
     c34:	e1a01000 	mov	r1, r0
     c38:	e3a00018 	mov	r0, #24
     c3c:	ef000000 	svc	0x00000000
     c40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c44:	e12fff1e 	bx	lr

00000c48 <getpinfo>:
     c48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c4c:	e1a04003 	mov	r4, r3
     c50:	e1a03002 	mov	r3, r2
     c54:	e1a02001 	mov	r2, r1
     c58:	e1a01000 	mov	r1, r0
     c5c:	e3a00019 	mov	r0, #25
     c60:	ef000000 	svc	0x00000000
     c64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c68:	e12fff1e 	bx	lr

00000c6c <dumppagetable>:
     c6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c70:	e1a04003 	mov	r4, r3
     c74:	e1a03002 	mov	r3, r2
     c78:	e1a02001 	mov	r2, r1
     c7c:	e1a01000 	mov	r1, r0
     c80:	e3a0001a 	mov	r0, #26
     c84:	ef000000 	svc	0x00000000
     c88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c8c:	e12fff1e 	bx	lr

00000c90 <thread_create>:
     c90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c94:	e1a04003 	mov	r4, r3
     c98:	e1a03002 	mov	r3, r2
     c9c:	e1a02001 	mov	r2, r1
     ca0:	e1a01000 	mov	r1, r0
     ca4:	e3a0001b 	mov	r0, #27
     ca8:	ef000000 	svc	0x00000000
     cac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb0:	e12fff1e 	bx	lr

00000cb4 <thread_exit>:
     cb4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cb8:	e1a04003 	mov	r4, r3
     cbc:	e1a03002 	mov	r3, r2
     cc0:	e1a02001 	mov	r2, r1
     cc4:	e1a01000 	mov	r1, r0
     cc8:	e3a0001c 	mov	r0, #28
     ccc:	ef000000 	svc	0x00000000
     cd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd4:	e12fff1e 	bx	lr

00000cd8 <thread_join>:
     cd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cdc:	e1a04003 	mov	r4, r3
     ce0:	e1a03002 	mov	r3, r2
     ce4:	e1a02001 	mov	r2, r1
     ce8:	e1a01000 	mov	r1, r0
     cec:	e3a0001d 	mov	r0, #29
     cf0:	ef000000 	svc	0x00000000
     cf4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cf8:	e12fff1e 	bx	lr

00000cfc <waitpid>:
     cfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d00:	e1a04003 	mov	r4, r3
     d04:	e1a03002 	mov	r3, r2
     d08:	e1a02001 	mov	r2, r1
     d0c:	e1a01000 	mov	r1, r0
     d10:	e3a0001e 	mov	r0, #30
     d14:	ef000000 	svc	0x00000000
     d18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d1c:	e12fff1e 	bx	lr

00000d20 <barrier_init>:
     d20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d24:	e1a04003 	mov	r4, r3
     d28:	e1a03002 	mov	r3, r2
     d2c:	e1a02001 	mov	r2, r1
     d30:	e1a01000 	mov	r1, r0
     d34:	e3a0001f 	mov	r0, #31
     d38:	ef000000 	svc	0x00000000
     d3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d40:	e12fff1e 	bx	lr

00000d44 <barrier_check>:
     d44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d48:	e1a04003 	mov	r4, r3
     d4c:	e1a03002 	mov	r3, r2
     d50:	e1a02001 	mov	r2, r1
     d54:	e1a01000 	mov	r1, r0
     d58:	e3a00020 	mov	r0, #32
     d5c:	ef000000 	svc	0x00000000
     d60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d64:	e12fff1e 	bx	lr

00000d68 <sleepChan>:
     d68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d6c:	e1a04003 	mov	r4, r3
     d70:	e1a03002 	mov	r3, r2
     d74:	e1a02001 	mov	r2, r1
     d78:	e1a01000 	mov	r1, r0
     d7c:	e3a00024 	mov	r0, #36	@ 0x24
     d80:	ef000000 	svc	0x00000000
     d84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d88:	e12fff1e 	bx	lr

00000d8c <getChannel>:
     d8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d90:	e1a04003 	mov	r4, r3
     d94:	e1a03002 	mov	r3, r2
     d98:	e1a02001 	mov	r2, r1
     d9c:	e1a01000 	mov	r1, r0
     da0:	e3a00025 	mov	r0, #37	@ 0x25
     da4:	ef000000 	svc	0x00000000
     da8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dac:	e12fff1e 	bx	lr

00000db0 <sigChan>:
     db0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     db4:	e1a04003 	mov	r4, r3
     db8:	e1a03002 	mov	r3, r2
     dbc:	e1a02001 	mov	r2, r1
     dc0:	e1a01000 	mov	r1, r0
     dc4:	e3a00026 	mov	r0, #38	@ 0x26
     dc8:	ef000000 	svc	0x00000000
     dcc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd0:	e12fff1e 	bx	lr

00000dd4 <sigOneChan>:
     dd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dd8:	e1a04003 	mov	r4, r3
     ddc:	e1a03002 	mov	r3, r2
     de0:	e1a02001 	mov	r2, r1
     de4:	e1a01000 	mov	r1, r0
     de8:	e3a00027 	mov	r0, #39	@ 0x27
     dec:	ef000000 	svc	0x00000000
     df0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     df4:	e12fff1e 	bx	lr

00000df8 <putc>:
     df8:	e92d4800 	push	{fp, lr}
     dfc:	e28db004 	add	fp, sp, #4
     e00:	e24dd008 	sub	sp, sp, #8
     e04:	e50b0008 	str	r0, [fp, #-8]
     e08:	e1a03001 	mov	r3, r1
     e0c:	e54b3009 	strb	r3, [fp, #-9]
     e10:	e24b3009 	sub	r3, fp, #9
     e14:	e3a02001 	mov	r2, #1
     e18:	e1a01003 	mov	r1, r3
     e1c:	e51b0008 	ldr	r0, [fp, #-8]
     e20:	ebfffedd 	bl	99c <write>
     e24:	e1a00000 	nop			@ (mov r0, r0)
     e28:	e24bd004 	sub	sp, fp, #4
     e2c:	e8bd8800 	pop	{fp, pc}

00000e30 <printint>:
     e30:	e92d4800 	push	{fp, lr}
     e34:	e28db004 	add	fp, sp, #4
     e38:	e24dd030 	sub	sp, sp, #48	@ 0x30
     e3c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     e40:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     e44:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     e48:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     e4c:	e3a03000 	mov	r3, #0
     e50:	e50b300c 	str	r3, [fp, #-12]
     e54:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     e58:	e3530000 	cmp	r3, #0
     e5c:	0a000008 	beq	e84 <printint+0x54>
     e60:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e64:	e3530000 	cmp	r3, #0
     e68:	aa000005 	bge	e84 <printint+0x54>
     e6c:	e3a03001 	mov	r3, #1
     e70:	e50b300c 	str	r3, [fp, #-12]
     e74:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e78:	e2633000 	rsb	r3, r3, #0
     e7c:	e50b3010 	str	r3, [fp, #-16]
     e80:	ea000001 	b	e8c <printint+0x5c>
     e84:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e88:	e50b3010 	str	r3, [fp, #-16]
     e8c:	e3a03000 	mov	r3, #0
     e90:	e50b3008 	str	r3, [fp, #-8]
     e94:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     e98:	e51b3010 	ldr	r3, [fp, #-16]
     e9c:	e1a01002 	mov	r1, r2
     ea0:	e1a00003 	mov	r0, r3
     ea4:	eb0001d5 	bl	1600 <__aeabi_uidivmod>
     ea8:	e1a03001 	mov	r3, r1
     eac:	e1a01003 	mov	r1, r3
     eb0:	e51b3008 	ldr	r3, [fp, #-8]
     eb4:	e2832001 	add	r2, r3, #1
     eb8:	e50b2008 	str	r2, [fp, #-8]
     ebc:	e59f20a0 	ldr	r2, [pc, #160]	@ f64 <printint+0x134>
     ec0:	e7d22001 	ldrb	r2, [r2, r1]
     ec4:	e2433004 	sub	r3, r3, #4
     ec8:	e083300b 	add	r3, r3, fp
     ecc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ed0:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     ed4:	e1a01003 	mov	r1, r3
     ed8:	e51b0010 	ldr	r0, [fp, #-16]
     edc:	eb00018a 	bl	150c <__udivsi3>
     ee0:	e1a03000 	mov	r3, r0
     ee4:	e50b3010 	str	r3, [fp, #-16]
     ee8:	e51b3010 	ldr	r3, [fp, #-16]
     eec:	e3530000 	cmp	r3, #0
     ef0:	1affffe7 	bne	e94 <printint+0x64>
     ef4:	e51b300c 	ldr	r3, [fp, #-12]
     ef8:	e3530000 	cmp	r3, #0
     efc:	0a00000e 	beq	f3c <printint+0x10c>
     f00:	e51b3008 	ldr	r3, [fp, #-8]
     f04:	e2832001 	add	r2, r3, #1
     f08:	e50b2008 	str	r2, [fp, #-8]
     f0c:	e2433004 	sub	r3, r3, #4
     f10:	e083300b 	add	r3, r3, fp
     f14:	e3a0202d 	mov	r2, #45	@ 0x2d
     f18:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f1c:	ea000006 	b	f3c <printint+0x10c>
     f20:	e24b2020 	sub	r2, fp, #32
     f24:	e51b3008 	ldr	r3, [fp, #-8]
     f28:	e0823003 	add	r3, r2, r3
     f2c:	e5d33000 	ldrb	r3, [r3]
     f30:	e1a01003 	mov	r1, r3
     f34:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     f38:	ebffffae 	bl	df8 <putc>
     f3c:	e51b3008 	ldr	r3, [fp, #-8]
     f40:	e2433001 	sub	r3, r3, #1
     f44:	e50b3008 	str	r3, [fp, #-8]
     f48:	e51b3008 	ldr	r3, [fp, #-8]
     f4c:	e3530000 	cmp	r3, #0
     f50:	aafffff2 	bge	f20 <printint+0xf0>
     f54:	e1a00000 	nop			@ (mov r0, r0)
     f58:	e1a00000 	nop			@ (mov r0, r0)
     f5c:	e24bd004 	sub	sp, fp, #4
     f60:	e8bd8800 	pop	{fp, pc}
     f64:	00001644 	.word	0x00001644

00000f68 <printf>:
     f68:	e92d000e 	push	{r1, r2, r3}
     f6c:	e92d4800 	push	{fp, lr}
     f70:	e28db004 	add	fp, sp, #4
     f74:	e24dd024 	sub	sp, sp, #36	@ 0x24
     f78:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     f7c:	e3a03000 	mov	r3, #0
     f80:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f84:	e28b3008 	add	r3, fp, #8
     f88:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f8c:	e3a03000 	mov	r3, #0
     f90:	e50b3010 	str	r3, [fp, #-16]
     f94:	ea000074 	b	116c <printf+0x204>
     f98:	e59b2004 	ldr	r2, [fp, #4]
     f9c:	e51b3010 	ldr	r3, [fp, #-16]
     fa0:	e0823003 	add	r3, r2, r3
     fa4:	e5d33000 	ldrb	r3, [r3]
     fa8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     fac:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     fb0:	e3530000 	cmp	r3, #0
     fb4:	1a00000b 	bne	fe8 <printf+0x80>
     fb8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fbc:	e3530025 	cmp	r3, #37	@ 0x25
     fc0:	1a000002 	bne	fd0 <printf+0x68>
     fc4:	e3a03025 	mov	r3, #37	@ 0x25
     fc8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     fcc:	ea000063 	b	1160 <printf+0x1f8>
     fd0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fd4:	e6ef3073 	uxtb	r3, r3
     fd8:	e1a01003 	mov	r1, r3
     fdc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fe0:	ebffff84 	bl	df8 <putc>
     fe4:	ea00005d 	b	1160 <printf+0x1f8>
     fe8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     fec:	e3530025 	cmp	r3, #37	@ 0x25
     ff0:	1a00005a 	bne	1160 <printf+0x1f8>
     ff4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ff8:	e3530064 	cmp	r3, #100	@ 0x64
     ffc:	1a00000a 	bne	102c <printf+0xc4>
    1000:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1004:	e5933000 	ldr	r3, [r3]
    1008:	e1a01003 	mov	r1, r3
    100c:	e3a03001 	mov	r3, #1
    1010:	e3a0200a 	mov	r2, #10
    1014:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1018:	ebffff84 	bl	e30 <printint>
    101c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1020:	e2833004 	add	r3, r3, #4
    1024:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1028:	ea00004a 	b	1158 <printf+0x1f0>
    102c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1030:	e3530078 	cmp	r3, #120	@ 0x78
    1034:	0a000002 	beq	1044 <printf+0xdc>
    1038:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    103c:	e3530070 	cmp	r3, #112	@ 0x70
    1040:	1a00000a 	bne	1070 <printf+0x108>
    1044:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1048:	e5933000 	ldr	r3, [r3]
    104c:	e1a01003 	mov	r1, r3
    1050:	e3a03000 	mov	r3, #0
    1054:	e3a02010 	mov	r2, #16
    1058:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    105c:	ebffff73 	bl	e30 <printint>
    1060:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1064:	e2833004 	add	r3, r3, #4
    1068:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    106c:	ea000039 	b	1158 <printf+0x1f0>
    1070:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1074:	e3530073 	cmp	r3, #115	@ 0x73
    1078:	1a000018 	bne	10e0 <printf+0x178>
    107c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1080:	e5933000 	ldr	r3, [r3]
    1084:	e50b300c 	str	r3, [fp, #-12]
    1088:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    108c:	e2833004 	add	r3, r3, #4
    1090:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1094:	e51b300c 	ldr	r3, [fp, #-12]
    1098:	e3530000 	cmp	r3, #0
    109c:	1a00000a 	bne	10cc <printf+0x164>
    10a0:	e59f30f4 	ldr	r3, [pc, #244]	@ 119c <printf+0x234>
    10a4:	e50b300c 	str	r3, [fp, #-12]
    10a8:	ea000007 	b	10cc <printf+0x164>
    10ac:	e51b300c 	ldr	r3, [fp, #-12]
    10b0:	e5d33000 	ldrb	r3, [r3]
    10b4:	e1a01003 	mov	r1, r3
    10b8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10bc:	ebffff4d 	bl	df8 <putc>
    10c0:	e51b300c 	ldr	r3, [fp, #-12]
    10c4:	e2833001 	add	r3, r3, #1
    10c8:	e50b300c 	str	r3, [fp, #-12]
    10cc:	e51b300c 	ldr	r3, [fp, #-12]
    10d0:	e5d33000 	ldrb	r3, [r3]
    10d4:	e3530000 	cmp	r3, #0
    10d8:	1afffff3 	bne	10ac <printf+0x144>
    10dc:	ea00001d 	b	1158 <printf+0x1f0>
    10e0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10e4:	e3530063 	cmp	r3, #99	@ 0x63
    10e8:	1a000009 	bne	1114 <printf+0x1ac>
    10ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10f0:	e5933000 	ldr	r3, [r3]
    10f4:	e6ef3073 	uxtb	r3, r3
    10f8:	e1a01003 	mov	r1, r3
    10fc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1100:	ebffff3c 	bl	df8 <putc>
    1104:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1108:	e2833004 	add	r3, r3, #4
    110c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1110:	ea000010 	b	1158 <printf+0x1f0>
    1114:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1118:	e3530025 	cmp	r3, #37	@ 0x25
    111c:	1a000005 	bne	1138 <printf+0x1d0>
    1120:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1124:	e6ef3073 	uxtb	r3, r3
    1128:	e1a01003 	mov	r1, r3
    112c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1130:	ebffff30 	bl	df8 <putc>
    1134:	ea000007 	b	1158 <printf+0x1f0>
    1138:	e3a01025 	mov	r1, #37	@ 0x25
    113c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1140:	ebffff2c 	bl	df8 <putc>
    1144:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1148:	e6ef3073 	uxtb	r3, r3
    114c:	e1a01003 	mov	r1, r3
    1150:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1154:	ebffff27 	bl	df8 <putc>
    1158:	e3a03000 	mov	r3, #0
    115c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1160:	e51b3010 	ldr	r3, [fp, #-16]
    1164:	e2833001 	add	r3, r3, #1
    1168:	e50b3010 	str	r3, [fp, #-16]
    116c:	e59b2004 	ldr	r2, [fp, #4]
    1170:	e51b3010 	ldr	r3, [fp, #-16]
    1174:	e0823003 	add	r3, r2, r3
    1178:	e5d33000 	ldrb	r3, [r3]
    117c:	e3530000 	cmp	r3, #0
    1180:	1affff84 	bne	f98 <printf+0x30>
    1184:	e1a00000 	nop			@ (mov r0, r0)
    1188:	e1a00000 	nop			@ (mov r0, r0)
    118c:	e24bd004 	sub	sp, fp, #4
    1190:	e8bd4800 	pop	{fp, lr}
    1194:	e28dd00c 	add	sp, sp, #12
    1198:	e12fff1e 	bx	lr
    119c:	0000163c 	.word	0x0000163c

000011a0 <free>:
    11a0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    11a4:	e28db000 	add	fp, sp, #0
    11a8:	e24dd014 	sub	sp, sp, #20
    11ac:	e50b0010 	str	r0, [fp, #-16]
    11b0:	e51b3010 	ldr	r3, [fp, #-16]
    11b4:	e2433008 	sub	r3, r3, #8
    11b8:	e50b300c 	str	r3, [fp, #-12]
    11bc:	e59f3154 	ldr	r3, [pc, #340]	@ 1318 <free+0x178>
    11c0:	e5933000 	ldr	r3, [r3]
    11c4:	e50b3008 	str	r3, [fp, #-8]
    11c8:	ea000010 	b	1210 <free+0x70>
    11cc:	e51b3008 	ldr	r3, [fp, #-8]
    11d0:	e5933000 	ldr	r3, [r3]
    11d4:	e51b2008 	ldr	r2, [fp, #-8]
    11d8:	e1520003 	cmp	r2, r3
    11dc:	3a000008 	bcc	1204 <free+0x64>
    11e0:	e51b200c 	ldr	r2, [fp, #-12]
    11e4:	e51b3008 	ldr	r3, [fp, #-8]
    11e8:	e1520003 	cmp	r2, r3
    11ec:	8a000010 	bhi	1234 <free+0x94>
    11f0:	e51b3008 	ldr	r3, [fp, #-8]
    11f4:	e5933000 	ldr	r3, [r3]
    11f8:	e51b200c 	ldr	r2, [fp, #-12]
    11fc:	e1520003 	cmp	r2, r3
    1200:	3a00000b 	bcc	1234 <free+0x94>
    1204:	e51b3008 	ldr	r3, [fp, #-8]
    1208:	e5933000 	ldr	r3, [r3]
    120c:	e50b3008 	str	r3, [fp, #-8]
    1210:	e51b200c 	ldr	r2, [fp, #-12]
    1214:	e51b3008 	ldr	r3, [fp, #-8]
    1218:	e1520003 	cmp	r2, r3
    121c:	9affffea 	bls	11cc <free+0x2c>
    1220:	e51b3008 	ldr	r3, [fp, #-8]
    1224:	e5933000 	ldr	r3, [r3]
    1228:	e51b200c 	ldr	r2, [fp, #-12]
    122c:	e1520003 	cmp	r2, r3
    1230:	2affffe5 	bcs	11cc <free+0x2c>
    1234:	e51b300c 	ldr	r3, [fp, #-12]
    1238:	e5933004 	ldr	r3, [r3, #4]
    123c:	e1a03183 	lsl	r3, r3, #3
    1240:	e51b200c 	ldr	r2, [fp, #-12]
    1244:	e0822003 	add	r2, r2, r3
    1248:	e51b3008 	ldr	r3, [fp, #-8]
    124c:	e5933000 	ldr	r3, [r3]
    1250:	e1520003 	cmp	r2, r3
    1254:	1a00000d 	bne	1290 <free+0xf0>
    1258:	e51b300c 	ldr	r3, [fp, #-12]
    125c:	e5932004 	ldr	r2, [r3, #4]
    1260:	e51b3008 	ldr	r3, [fp, #-8]
    1264:	e5933000 	ldr	r3, [r3]
    1268:	e5933004 	ldr	r3, [r3, #4]
    126c:	e0822003 	add	r2, r2, r3
    1270:	e51b300c 	ldr	r3, [fp, #-12]
    1274:	e5832004 	str	r2, [r3, #4]
    1278:	e51b3008 	ldr	r3, [fp, #-8]
    127c:	e5933000 	ldr	r3, [r3]
    1280:	e5932000 	ldr	r2, [r3]
    1284:	e51b300c 	ldr	r3, [fp, #-12]
    1288:	e5832000 	str	r2, [r3]
    128c:	ea000003 	b	12a0 <free+0x100>
    1290:	e51b3008 	ldr	r3, [fp, #-8]
    1294:	e5932000 	ldr	r2, [r3]
    1298:	e51b300c 	ldr	r3, [fp, #-12]
    129c:	e5832000 	str	r2, [r3]
    12a0:	e51b3008 	ldr	r3, [fp, #-8]
    12a4:	e5933004 	ldr	r3, [r3, #4]
    12a8:	e1a03183 	lsl	r3, r3, #3
    12ac:	e51b2008 	ldr	r2, [fp, #-8]
    12b0:	e0823003 	add	r3, r2, r3
    12b4:	e51b200c 	ldr	r2, [fp, #-12]
    12b8:	e1520003 	cmp	r2, r3
    12bc:	1a00000b 	bne	12f0 <free+0x150>
    12c0:	e51b3008 	ldr	r3, [fp, #-8]
    12c4:	e5932004 	ldr	r2, [r3, #4]
    12c8:	e51b300c 	ldr	r3, [fp, #-12]
    12cc:	e5933004 	ldr	r3, [r3, #4]
    12d0:	e0822003 	add	r2, r2, r3
    12d4:	e51b3008 	ldr	r3, [fp, #-8]
    12d8:	e5832004 	str	r2, [r3, #4]
    12dc:	e51b300c 	ldr	r3, [fp, #-12]
    12e0:	e5932000 	ldr	r2, [r3]
    12e4:	e51b3008 	ldr	r3, [fp, #-8]
    12e8:	e5832000 	str	r2, [r3]
    12ec:	ea000002 	b	12fc <free+0x15c>
    12f0:	e51b3008 	ldr	r3, [fp, #-8]
    12f4:	e51b200c 	ldr	r2, [fp, #-12]
    12f8:	e5832000 	str	r2, [r3]
    12fc:	e59f2014 	ldr	r2, [pc, #20]	@ 1318 <free+0x178>
    1300:	e51b3008 	ldr	r3, [fp, #-8]
    1304:	e5823000 	str	r3, [r2]
    1308:	e1a00000 	nop			@ (mov r0, r0)
    130c:	e28bd000 	add	sp, fp, #0
    1310:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1314:	e12fff1e 	bx	lr
    1318:	00001660 	.word	0x00001660

0000131c <morecore>:
    131c:	e92d4800 	push	{fp, lr}
    1320:	e28db004 	add	fp, sp, #4
    1324:	e24dd010 	sub	sp, sp, #16
    1328:	e50b0010 	str	r0, [fp, #-16]
    132c:	e51b3010 	ldr	r3, [fp, #-16]
    1330:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1334:	2a000001 	bcs	1340 <morecore+0x24>
    1338:	e3a03a01 	mov	r3, #4096	@ 0x1000
    133c:	e50b3010 	str	r3, [fp, #-16]
    1340:	e51b3010 	ldr	r3, [fp, #-16]
    1344:	e1a03183 	lsl	r3, r3, #3
    1348:	e1a00003 	mov	r0, r3
    134c:	ebfffe07 	bl	b70 <sbrk>
    1350:	e50b0008 	str	r0, [fp, #-8]
    1354:	e51b3008 	ldr	r3, [fp, #-8]
    1358:	e3730001 	cmn	r3, #1
    135c:	1a000001 	bne	1368 <morecore+0x4c>
    1360:	e3a03000 	mov	r3, #0
    1364:	ea00000a 	b	1394 <morecore+0x78>
    1368:	e51b3008 	ldr	r3, [fp, #-8]
    136c:	e50b300c 	str	r3, [fp, #-12]
    1370:	e51b300c 	ldr	r3, [fp, #-12]
    1374:	e51b2010 	ldr	r2, [fp, #-16]
    1378:	e5832004 	str	r2, [r3, #4]
    137c:	e51b300c 	ldr	r3, [fp, #-12]
    1380:	e2833008 	add	r3, r3, #8
    1384:	e1a00003 	mov	r0, r3
    1388:	ebffff84 	bl	11a0 <free>
    138c:	e59f300c 	ldr	r3, [pc, #12]	@ 13a0 <morecore+0x84>
    1390:	e5933000 	ldr	r3, [r3]
    1394:	e1a00003 	mov	r0, r3
    1398:	e24bd004 	sub	sp, fp, #4
    139c:	e8bd8800 	pop	{fp, pc}
    13a0:	00001660 	.word	0x00001660

000013a4 <malloc>:
    13a4:	e92d4800 	push	{fp, lr}
    13a8:	e28db004 	add	fp, sp, #4
    13ac:	e24dd018 	sub	sp, sp, #24
    13b0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    13b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13b8:	e2833007 	add	r3, r3, #7
    13bc:	e1a031a3 	lsr	r3, r3, #3
    13c0:	e2833001 	add	r3, r3, #1
    13c4:	e50b3010 	str	r3, [fp, #-16]
    13c8:	e59f3134 	ldr	r3, [pc, #308]	@ 1504 <malloc+0x160>
    13cc:	e5933000 	ldr	r3, [r3]
    13d0:	e50b300c 	str	r3, [fp, #-12]
    13d4:	e51b300c 	ldr	r3, [fp, #-12]
    13d8:	e3530000 	cmp	r3, #0
    13dc:	1a00000b 	bne	1410 <malloc+0x6c>
    13e0:	e59f3120 	ldr	r3, [pc, #288]	@ 1508 <malloc+0x164>
    13e4:	e50b300c 	str	r3, [fp, #-12]
    13e8:	e59f2114 	ldr	r2, [pc, #276]	@ 1504 <malloc+0x160>
    13ec:	e51b300c 	ldr	r3, [fp, #-12]
    13f0:	e5823000 	str	r3, [r2]
    13f4:	e59f3108 	ldr	r3, [pc, #264]	@ 1504 <malloc+0x160>
    13f8:	e5933000 	ldr	r3, [r3]
    13fc:	e59f2104 	ldr	r2, [pc, #260]	@ 1508 <malloc+0x164>
    1400:	e5823000 	str	r3, [r2]
    1404:	e59f30fc 	ldr	r3, [pc, #252]	@ 1508 <malloc+0x164>
    1408:	e3a02000 	mov	r2, #0
    140c:	e5832004 	str	r2, [r3, #4]
    1410:	e51b300c 	ldr	r3, [fp, #-12]
    1414:	e5933000 	ldr	r3, [r3]
    1418:	e50b3008 	str	r3, [fp, #-8]
    141c:	e51b3008 	ldr	r3, [fp, #-8]
    1420:	e5933004 	ldr	r3, [r3, #4]
    1424:	e51b2010 	ldr	r2, [fp, #-16]
    1428:	e1520003 	cmp	r2, r3
    142c:	8a00001e 	bhi	14ac <malloc+0x108>
    1430:	e51b3008 	ldr	r3, [fp, #-8]
    1434:	e5933004 	ldr	r3, [r3, #4]
    1438:	e51b2010 	ldr	r2, [fp, #-16]
    143c:	e1520003 	cmp	r2, r3
    1440:	1a000004 	bne	1458 <malloc+0xb4>
    1444:	e51b3008 	ldr	r3, [fp, #-8]
    1448:	e5932000 	ldr	r2, [r3]
    144c:	e51b300c 	ldr	r3, [fp, #-12]
    1450:	e5832000 	str	r2, [r3]
    1454:	ea00000e 	b	1494 <malloc+0xf0>
    1458:	e51b3008 	ldr	r3, [fp, #-8]
    145c:	e5932004 	ldr	r2, [r3, #4]
    1460:	e51b3010 	ldr	r3, [fp, #-16]
    1464:	e0422003 	sub	r2, r2, r3
    1468:	e51b3008 	ldr	r3, [fp, #-8]
    146c:	e5832004 	str	r2, [r3, #4]
    1470:	e51b3008 	ldr	r3, [fp, #-8]
    1474:	e5933004 	ldr	r3, [r3, #4]
    1478:	e1a03183 	lsl	r3, r3, #3
    147c:	e51b2008 	ldr	r2, [fp, #-8]
    1480:	e0823003 	add	r3, r2, r3
    1484:	e50b3008 	str	r3, [fp, #-8]
    1488:	e51b3008 	ldr	r3, [fp, #-8]
    148c:	e51b2010 	ldr	r2, [fp, #-16]
    1490:	e5832004 	str	r2, [r3, #4]
    1494:	e59f2068 	ldr	r2, [pc, #104]	@ 1504 <malloc+0x160>
    1498:	e51b300c 	ldr	r3, [fp, #-12]
    149c:	e5823000 	str	r3, [r2]
    14a0:	e51b3008 	ldr	r3, [fp, #-8]
    14a4:	e2833008 	add	r3, r3, #8
    14a8:	ea000012 	b	14f8 <malloc+0x154>
    14ac:	e59f3050 	ldr	r3, [pc, #80]	@ 1504 <malloc+0x160>
    14b0:	e5933000 	ldr	r3, [r3]
    14b4:	e51b2008 	ldr	r2, [fp, #-8]
    14b8:	e1520003 	cmp	r2, r3
    14bc:	1a000007 	bne	14e0 <malloc+0x13c>
    14c0:	e51b0010 	ldr	r0, [fp, #-16]
    14c4:	ebffff94 	bl	131c <morecore>
    14c8:	e50b0008 	str	r0, [fp, #-8]
    14cc:	e51b3008 	ldr	r3, [fp, #-8]
    14d0:	e3530000 	cmp	r3, #0
    14d4:	1a000001 	bne	14e0 <malloc+0x13c>
    14d8:	e3a03000 	mov	r3, #0
    14dc:	ea000005 	b	14f8 <malloc+0x154>
    14e0:	e51b3008 	ldr	r3, [fp, #-8]
    14e4:	e50b300c 	str	r3, [fp, #-12]
    14e8:	e51b3008 	ldr	r3, [fp, #-8]
    14ec:	e5933000 	ldr	r3, [r3]
    14f0:	e50b3008 	str	r3, [fp, #-8]
    14f4:	eaffffc8 	b	141c <malloc+0x78>
    14f8:	e1a00003 	mov	r0, r3
    14fc:	e24bd004 	sub	sp, fp, #4
    1500:	e8bd8800 	pop	{fp, pc}
    1504:	00001660 	.word	0x00001660
    1508:	00001658 	.word	0x00001658

0000150c <__udivsi3>:
    150c:	e2512001 	subs	r2, r1, #1
    1510:	012fff1e 	bxeq	lr
    1514:	3a000036 	bcc	15f4 <__udivsi3+0xe8>
    1518:	e1500001 	cmp	r0, r1
    151c:	9a000022 	bls	15ac <__udivsi3+0xa0>
    1520:	e1110002 	tst	r1, r2
    1524:	0a000023 	beq	15b8 <__udivsi3+0xac>
    1528:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    152c:	01a01181 	lsleq	r1, r1, #3
    1530:	03a03008 	moveq	r3, #8
    1534:	13a03001 	movne	r3, #1
    1538:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    153c:	31510000 	cmpcc	r1, r0
    1540:	31a01201 	lslcc	r1, r1, #4
    1544:	31a03203 	lslcc	r3, r3, #4
    1548:	3afffffa 	bcc	1538 <__udivsi3+0x2c>
    154c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1550:	31510000 	cmpcc	r1, r0
    1554:	31a01081 	lslcc	r1, r1, #1
    1558:	31a03083 	lslcc	r3, r3, #1
    155c:	3afffffa 	bcc	154c <__udivsi3+0x40>
    1560:	e3a02000 	mov	r2, #0
    1564:	e1500001 	cmp	r0, r1
    1568:	20400001 	subcs	r0, r0, r1
    156c:	21822003 	orrcs	r2, r2, r3
    1570:	e15000a1 	cmp	r0, r1, lsr #1
    1574:	204000a1 	subcs	r0, r0, r1, lsr #1
    1578:	218220a3 	orrcs	r2, r2, r3, lsr #1
    157c:	e1500121 	cmp	r0, r1, lsr #2
    1580:	20400121 	subcs	r0, r0, r1, lsr #2
    1584:	21822123 	orrcs	r2, r2, r3, lsr #2
    1588:	e15001a1 	cmp	r0, r1, lsr #3
    158c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1590:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1594:	e3500000 	cmp	r0, #0
    1598:	11b03223 	lsrsne	r3, r3, #4
    159c:	11a01221 	lsrne	r1, r1, #4
    15a0:	1affffef 	bne	1564 <__udivsi3+0x58>
    15a4:	e1a00002 	mov	r0, r2
    15a8:	e12fff1e 	bx	lr
    15ac:	03a00001 	moveq	r0, #1
    15b0:	13a00000 	movne	r0, #0
    15b4:	e12fff1e 	bx	lr
    15b8:	e3510801 	cmp	r1, #65536	@ 0x10000
    15bc:	21a01821 	lsrcs	r1, r1, #16
    15c0:	23a02010 	movcs	r2, #16
    15c4:	33a02000 	movcc	r2, #0
    15c8:	e3510c01 	cmp	r1, #256	@ 0x100
    15cc:	21a01421 	lsrcs	r1, r1, #8
    15d0:	22822008 	addcs	r2, r2, #8
    15d4:	e3510010 	cmp	r1, #16
    15d8:	21a01221 	lsrcs	r1, r1, #4
    15dc:	22822004 	addcs	r2, r2, #4
    15e0:	e3510004 	cmp	r1, #4
    15e4:	82822003 	addhi	r2, r2, #3
    15e8:	908220a1 	addls	r2, r2, r1, lsr #1
    15ec:	e1a00230 	lsr	r0, r0, r2
    15f0:	e12fff1e 	bx	lr
    15f4:	e3500000 	cmp	r0, #0
    15f8:	13e00000 	mvnne	r0, #0
    15fc:	ea000007 	b	1620 <__aeabi_idiv0>

00001600 <__aeabi_uidivmod>:
    1600:	e3510000 	cmp	r1, #0
    1604:	0afffffa 	beq	15f4 <__udivsi3+0xe8>
    1608:	e92d4003 	push	{r0, r1, lr}
    160c:	ebffffbe 	bl	150c <__udivsi3>
    1610:	e8bd4006 	pop	{r1, r2, lr}
    1614:	e0030092 	mul	r3, r2, r0
    1618:	e0411003 	sub	r1, r1, r3
    161c:	e12fff1e 	bx	lr

00001620 <__aeabi_idiv0>:
    1620:	e12fff1e 	bx	lr
