
_kill:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      14:	e51b3010 	ldr	r3, [fp, #-16]
      18:	e3530000 	cmp	r3, #0
      1c:	ca000003 	bgt	30 <main+0x30>
      20:	e59f105c 	ldr	r1, [pc, #92]	@ 84 <main+0x84>
      24:	e3a00002 	mov	r0, #2
      28:	eb000278 	bl	a10 <printf>
      2c:	eb00015e 	bl	5ac <exit>
      30:	e3a03001 	mov	r3, #1
      34:	e50b3008 	str	r3, [fp, #-8]
      38:	ea00000c 	b	70 <main+0x70>
      3c:	e51b3008 	ldr	r3, [fp, #-8]
      40:	e1a03103 	lsl	r3, r3, #2
      44:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      48:	e0823003 	add	r3, r2, r3
      4c:	e5933000 	ldr	r3, [r3]
      50:	e1a00003 	mov	r0, r3
      54:	eb000103 	bl	468 <atoi>
      58:	e1a03000 	mov	r3, r0
      5c:	e1a00003 	mov	r0, r3
      60:	eb000187 	bl	684 <kill>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e2833001 	add	r3, r3, #1
      6c:	e50b3008 	str	r3, [fp, #-8]
      70:	e51b2008 	ldr	r2, [fp, #-8]
      74:	e51b3010 	ldr	r3, [fp, #-16]
      78:	e1520003 	cmp	r2, r3
      7c:	baffffee 	blt	3c <main+0x3c>
      80:	eb000149 	bl	5ac <exit>
      84:	000010cc 	.word	0x000010cc

00000088 <strcpy>:
      88:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      8c:	e28db000 	add	fp, sp, #0
      90:	e24dd014 	sub	sp, sp, #20
      94:	e50b0010 	str	r0, [fp, #-16]
      98:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      9c:	e51b3010 	ldr	r3, [fp, #-16]
      a0:	e50b3008 	str	r3, [fp, #-8]
      a4:	e1a00000 	nop			@ (mov r0, r0)
      a8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      ac:	e2823001 	add	r3, r2, #1
      b0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      b4:	e51b3010 	ldr	r3, [fp, #-16]
      b8:	e2831001 	add	r1, r3, #1
      bc:	e50b1010 	str	r1, [fp, #-16]
      c0:	e5d22000 	ldrb	r2, [r2]
      c4:	e5c32000 	strb	r2, [r3]
      c8:	e5d33000 	ldrb	r3, [r3]
      cc:	e3530000 	cmp	r3, #0
      d0:	1afffff4 	bne	a8 <strcpy+0x20>
      d4:	e51b3008 	ldr	r3, [fp, #-8]
      d8:	e1a00003 	mov	r0, r3
      dc:	e28bd000 	add	sp, fp, #0
      e0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      e4:	e12fff1e 	bx	lr

000000e8 <strcmp>:
      e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      ec:	e28db000 	add	fp, sp, #0
      f0:	e24dd00c 	sub	sp, sp, #12
      f4:	e50b0008 	str	r0, [fp, #-8]
      f8:	e50b100c 	str	r1, [fp, #-12]
      fc:	ea000005 	b	118 <strcmp+0x30>
     100:	e51b3008 	ldr	r3, [fp, #-8]
     104:	e2833001 	add	r3, r3, #1
     108:	e50b3008 	str	r3, [fp, #-8]
     10c:	e51b300c 	ldr	r3, [fp, #-12]
     110:	e2833001 	add	r3, r3, #1
     114:	e50b300c 	str	r3, [fp, #-12]
     118:	e51b3008 	ldr	r3, [fp, #-8]
     11c:	e5d33000 	ldrb	r3, [r3]
     120:	e3530000 	cmp	r3, #0
     124:	0a000005 	beq	140 <strcmp+0x58>
     128:	e51b3008 	ldr	r3, [fp, #-8]
     12c:	e5d32000 	ldrb	r2, [r3]
     130:	e51b300c 	ldr	r3, [fp, #-12]
     134:	e5d33000 	ldrb	r3, [r3]
     138:	e1520003 	cmp	r2, r3
     13c:	0affffef 	beq	100 <strcmp+0x18>
     140:	e51b3008 	ldr	r3, [fp, #-8]
     144:	e5d33000 	ldrb	r3, [r3]
     148:	e1a02003 	mov	r2, r3
     14c:	e51b300c 	ldr	r3, [fp, #-12]
     150:	e5d33000 	ldrb	r3, [r3]
     154:	e0423003 	sub	r3, r2, r3
     158:	e1a00003 	mov	r0, r3
     15c:	e28bd000 	add	sp, fp, #0
     160:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     164:	e12fff1e 	bx	lr

00000168 <strlen>:
     168:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     16c:	e28db000 	add	fp, sp, #0
     170:	e24dd014 	sub	sp, sp, #20
     174:	e50b0010 	str	r0, [fp, #-16]
     178:	e3a03000 	mov	r3, #0
     17c:	e50b3008 	str	r3, [fp, #-8]
     180:	ea000002 	b	190 <strlen+0x28>
     184:	e51b3008 	ldr	r3, [fp, #-8]
     188:	e2833001 	add	r3, r3, #1
     18c:	e50b3008 	str	r3, [fp, #-8]
     190:	e51b3008 	ldr	r3, [fp, #-8]
     194:	e51b2010 	ldr	r2, [fp, #-16]
     198:	e0823003 	add	r3, r2, r3
     19c:	e5d33000 	ldrb	r3, [r3]
     1a0:	e3530000 	cmp	r3, #0
     1a4:	1afffff6 	bne	184 <strlen+0x1c>
     1a8:	e51b3008 	ldr	r3, [fp, #-8]
     1ac:	e1a00003 	mov	r0, r3
     1b0:	e28bd000 	add	sp, fp, #0
     1b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1b8:	e12fff1e 	bx	lr

000001bc <memset>:
     1bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1c0:	e28db000 	add	fp, sp, #0
     1c4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     1c8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     1cc:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     1d0:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     1d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     1d8:	e50b3008 	str	r3, [fp, #-8]
     1dc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1e0:	e54b300d 	strb	r3, [fp, #-13]
     1e4:	e55b200d 	ldrb	r2, [fp, #-13]
     1e8:	e1a03002 	mov	r3, r2
     1ec:	e1a03403 	lsl	r3, r3, #8
     1f0:	e0833002 	add	r3, r3, r2
     1f4:	e1a03803 	lsl	r3, r3, #16
     1f8:	e1a02003 	mov	r2, r3
     1fc:	e55b300d 	ldrb	r3, [fp, #-13]
     200:	e1a03403 	lsl	r3, r3, #8
     204:	e1822003 	orr	r2, r2, r3
     208:	e55b300d 	ldrb	r3, [fp, #-13]
     20c:	e1823003 	orr	r3, r2, r3
     210:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     214:	ea000008 	b	23c <memset+0x80>
     218:	e51b3008 	ldr	r3, [fp, #-8]
     21c:	e55b200d 	ldrb	r2, [fp, #-13]
     220:	e5c32000 	strb	r2, [r3]
     224:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     228:	e2433001 	sub	r3, r3, #1
     22c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     230:	e51b3008 	ldr	r3, [fp, #-8]
     234:	e2833001 	add	r3, r3, #1
     238:	e50b3008 	str	r3, [fp, #-8]
     23c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     240:	e3530000 	cmp	r3, #0
     244:	0a000003 	beq	258 <memset+0x9c>
     248:	e51b3008 	ldr	r3, [fp, #-8]
     24c:	e2033003 	and	r3, r3, #3
     250:	e3530000 	cmp	r3, #0
     254:	1affffef 	bne	218 <memset+0x5c>
     258:	e51b3008 	ldr	r3, [fp, #-8]
     25c:	e50b300c 	str	r3, [fp, #-12]
     260:	ea000008 	b	288 <memset+0xcc>
     264:	e51b300c 	ldr	r3, [fp, #-12]
     268:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     26c:	e5832000 	str	r2, [r3]
     270:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     274:	e2433004 	sub	r3, r3, #4
     278:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     27c:	e51b300c 	ldr	r3, [fp, #-12]
     280:	e2833004 	add	r3, r3, #4
     284:	e50b300c 	str	r3, [fp, #-12]
     288:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     28c:	e3530003 	cmp	r3, #3
     290:	8afffff3 	bhi	264 <memset+0xa8>
     294:	e51b300c 	ldr	r3, [fp, #-12]
     298:	e50b3008 	str	r3, [fp, #-8]
     29c:	ea000008 	b	2c4 <memset+0x108>
     2a0:	e51b3008 	ldr	r3, [fp, #-8]
     2a4:	e55b200d 	ldrb	r2, [fp, #-13]
     2a8:	e5c32000 	strb	r2, [r3]
     2ac:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2b0:	e2433001 	sub	r3, r3, #1
     2b4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2b8:	e51b3008 	ldr	r3, [fp, #-8]
     2bc:	e2833001 	add	r3, r3, #1
     2c0:	e50b3008 	str	r3, [fp, #-8]
     2c4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2c8:	e3530000 	cmp	r3, #0
     2cc:	1afffff3 	bne	2a0 <memset+0xe4>
     2d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2d4:	e1a00003 	mov	r0, r3
     2d8:	e28bd000 	add	sp, fp, #0
     2dc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2e0:	e12fff1e 	bx	lr

000002e4 <strchr>:
     2e4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2e8:	e28db000 	add	fp, sp, #0
     2ec:	e24dd00c 	sub	sp, sp, #12
     2f0:	e50b0008 	str	r0, [fp, #-8]
     2f4:	e1a03001 	mov	r3, r1
     2f8:	e54b3009 	strb	r3, [fp, #-9]
     2fc:	ea000009 	b	328 <strchr+0x44>
     300:	e51b3008 	ldr	r3, [fp, #-8]
     304:	e5d33000 	ldrb	r3, [r3]
     308:	e55b2009 	ldrb	r2, [fp, #-9]
     30c:	e1520003 	cmp	r2, r3
     310:	1a000001 	bne	31c <strchr+0x38>
     314:	e51b3008 	ldr	r3, [fp, #-8]
     318:	ea000007 	b	33c <strchr+0x58>
     31c:	e51b3008 	ldr	r3, [fp, #-8]
     320:	e2833001 	add	r3, r3, #1
     324:	e50b3008 	str	r3, [fp, #-8]
     328:	e51b3008 	ldr	r3, [fp, #-8]
     32c:	e5d33000 	ldrb	r3, [r3]
     330:	e3530000 	cmp	r3, #0
     334:	1afffff1 	bne	300 <strchr+0x1c>
     338:	e3a03000 	mov	r3, #0
     33c:	e1a00003 	mov	r0, r3
     340:	e28bd000 	add	sp, fp, #0
     344:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     348:	e12fff1e 	bx	lr

0000034c <gets>:
     34c:	e92d4800 	push	{fp, lr}
     350:	e28db004 	add	fp, sp, #4
     354:	e24dd018 	sub	sp, sp, #24
     358:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     35c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     360:	e3a03000 	mov	r3, #0
     364:	e50b3008 	str	r3, [fp, #-8]
     368:	ea000016 	b	3c8 <gets+0x7c>
     36c:	e24b300d 	sub	r3, fp, #13
     370:	e3a02001 	mov	r2, #1
     374:	e1a01003 	mov	r1, r3
     378:	e3a00000 	mov	r0, #0
     37c:	eb0000a5 	bl	618 <read>
     380:	e50b000c 	str	r0, [fp, #-12]
     384:	e51b300c 	ldr	r3, [fp, #-12]
     388:	e3530000 	cmp	r3, #0
     38c:	da000013 	ble	3e0 <gets+0x94>
     390:	e51b3008 	ldr	r3, [fp, #-8]
     394:	e2832001 	add	r2, r3, #1
     398:	e50b2008 	str	r2, [fp, #-8]
     39c:	e1a02003 	mov	r2, r3
     3a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3a4:	e0833002 	add	r3, r3, r2
     3a8:	e55b200d 	ldrb	r2, [fp, #-13]
     3ac:	e5c32000 	strb	r2, [r3]
     3b0:	e55b300d 	ldrb	r3, [fp, #-13]
     3b4:	e353000a 	cmp	r3, #10
     3b8:	0a000009 	beq	3e4 <gets+0x98>
     3bc:	e55b300d 	ldrb	r3, [fp, #-13]
     3c0:	e353000d 	cmp	r3, #13
     3c4:	0a000006 	beq	3e4 <gets+0x98>
     3c8:	e51b3008 	ldr	r3, [fp, #-8]
     3cc:	e2833001 	add	r3, r3, #1
     3d0:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     3d4:	e1520003 	cmp	r2, r3
     3d8:	caffffe3 	bgt	36c <gets+0x20>
     3dc:	ea000000 	b	3e4 <gets+0x98>
     3e0:	e1a00000 	nop			@ (mov r0, r0)
     3e4:	e51b3008 	ldr	r3, [fp, #-8]
     3e8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     3ec:	e0823003 	add	r3, r2, r3
     3f0:	e3a02000 	mov	r2, #0
     3f4:	e5c32000 	strb	r2, [r3]
     3f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3fc:	e1a00003 	mov	r0, r3
     400:	e24bd004 	sub	sp, fp, #4
     404:	e8bd8800 	pop	{fp, pc}

00000408 <stat>:
     408:	e92d4800 	push	{fp, lr}
     40c:	e28db004 	add	fp, sp, #4
     410:	e24dd010 	sub	sp, sp, #16
     414:	e50b0010 	str	r0, [fp, #-16]
     418:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     41c:	e3a01000 	mov	r1, #0
     420:	e51b0010 	ldr	r0, [fp, #-16]
     424:	eb0000a8 	bl	6cc <open>
     428:	e50b0008 	str	r0, [fp, #-8]
     42c:	e51b3008 	ldr	r3, [fp, #-8]
     430:	e3530000 	cmp	r3, #0
     434:	aa000001 	bge	440 <stat+0x38>
     438:	e3e03000 	mvn	r3, #0
     43c:	ea000006 	b	45c <stat+0x54>
     440:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     444:	e51b0008 	ldr	r0, [fp, #-8]
     448:	eb0000ba 	bl	738 <fstat>
     44c:	e50b000c 	str	r0, [fp, #-12]
     450:	e51b0008 	ldr	r0, [fp, #-8]
     454:	eb000081 	bl	660 <close>
     458:	e51b300c 	ldr	r3, [fp, #-12]
     45c:	e1a00003 	mov	r0, r3
     460:	e24bd004 	sub	sp, fp, #4
     464:	e8bd8800 	pop	{fp, pc}

00000468 <atoi>:
     468:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     46c:	e28db000 	add	fp, sp, #0
     470:	e24dd014 	sub	sp, sp, #20
     474:	e50b0010 	str	r0, [fp, #-16]
     478:	e3a03000 	mov	r3, #0
     47c:	e50b3008 	str	r3, [fp, #-8]
     480:	ea00000c 	b	4b8 <atoi+0x50>
     484:	e51b2008 	ldr	r2, [fp, #-8]
     488:	e1a03002 	mov	r3, r2
     48c:	e1a03103 	lsl	r3, r3, #2
     490:	e0833002 	add	r3, r3, r2
     494:	e1a03083 	lsl	r3, r3, #1
     498:	e1a01003 	mov	r1, r3
     49c:	e51b3010 	ldr	r3, [fp, #-16]
     4a0:	e2832001 	add	r2, r3, #1
     4a4:	e50b2010 	str	r2, [fp, #-16]
     4a8:	e5d33000 	ldrb	r3, [r3]
     4ac:	e0813003 	add	r3, r1, r3
     4b0:	e2433030 	sub	r3, r3, #48	@ 0x30
     4b4:	e50b3008 	str	r3, [fp, #-8]
     4b8:	e51b3010 	ldr	r3, [fp, #-16]
     4bc:	e5d33000 	ldrb	r3, [r3]
     4c0:	e353002f 	cmp	r3, #47	@ 0x2f
     4c4:	9a000003 	bls	4d8 <atoi+0x70>
     4c8:	e51b3010 	ldr	r3, [fp, #-16]
     4cc:	e5d33000 	ldrb	r3, [r3]
     4d0:	e3530039 	cmp	r3, #57	@ 0x39
     4d4:	9affffea 	bls	484 <atoi+0x1c>
     4d8:	e51b3010 	ldr	r3, [fp, #-16]
     4dc:	e5d33000 	ldrb	r3, [r3]
     4e0:	e353002f 	cmp	r3, #47	@ 0x2f
     4e4:	9a000003 	bls	4f8 <atoi+0x90>
     4e8:	e51b3010 	ldr	r3, [fp, #-16]
     4ec:	e5d33000 	ldrb	r3, [r3]
     4f0:	e3530039 	cmp	r3, #57	@ 0x39
     4f4:	9a000001 	bls	500 <atoi+0x98>
     4f8:	e3e03000 	mvn	r3, #0
     4fc:	ea000000 	b	504 <atoi+0x9c>
     500:	e51b3008 	ldr	r3, [fp, #-8]
     504:	e1a00003 	mov	r0, r3
     508:	e28bd000 	add	sp, fp, #0
     50c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     510:	e12fff1e 	bx	lr

00000514 <memmove>:
     514:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     518:	e28db000 	add	fp, sp, #0
     51c:	e24dd01c 	sub	sp, sp, #28
     520:	e50b0010 	str	r0, [fp, #-16]
     524:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     528:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     52c:	e51b3010 	ldr	r3, [fp, #-16]
     530:	e50b3008 	str	r3, [fp, #-8]
     534:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     538:	e50b300c 	str	r3, [fp, #-12]
     53c:	ea000007 	b	560 <memmove+0x4c>
     540:	e51b200c 	ldr	r2, [fp, #-12]
     544:	e2823001 	add	r3, r2, #1
     548:	e50b300c 	str	r3, [fp, #-12]
     54c:	e51b3008 	ldr	r3, [fp, #-8]
     550:	e2831001 	add	r1, r3, #1
     554:	e50b1008 	str	r1, [fp, #-8]
     558:	e5d22000 	ldrb	r2, [r2]
     55c:	e5c32000 	strb	r2, [r3]
     560:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     564:	e2432001 	sub	r2, r3, #1
     568:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     56c:	e3530000 	cmp	r3, #0
     570:	cafffff2 	bgt	540 <memmove+0x2c>
     574:	e51b3010 	ldr	r3, [fp, #-16]
     578:	e1a00003 	mov	r0, r3
     57c:	e28bd000 	add	sp, fp, #0
     580:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     584:	e12fff1e 	bx	lr

00000588 <fork>:
     588:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     58c:	e1a04003 	mov	r4, r3
     590:	e1a03002 	mov	r3, r2
     594:	e1a02001 	mov	r2, r1
     598:	e1a01000 	mov	r1, r0
     59c:	e3a00001 	mov	r0, #1
     5a0:	ef000000 	svc	0x00000000
     5a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5a8:	e12fff1e 	bx	lr

000005ac <exit>:
     5ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5b0:	e1a04003 	mov	r4, r3
     5b4:	e1a03002 	mov	r3, r2
     5b8:	e1a02001 	mov	r2, r1
     5bc:	e1a01000 	mov	r1, r0
     5c0:	e3a00002 	mov	r0, #2
     5c4:	ef000000 	svc	0x00000000
     5c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5cc:	e12fff1e 	bx	lr

000005d0 <wait>:
     5d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5d4:	e1a04003 	mov	r4, r3
     5d8:	e1a03002 	mov	r3, r2
     5dc:	e1a02001 	mov	r2, r1
     5e0:	e1a01000 	mov	r1, r0
     5e4:	e3a00003 	mov	r0, #3
     5e8:	ef000000 	svc	0x00000000
     5ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5f0:	e12fff1e 	bx	lr

000005f4 <pipe>:
     5f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5f8:	e1a04003 	mov	r4, r3
     5fc:	e1a03002 	mov	r3, r2
     600:	e1a02001 	mov	r2, r1
     604:	e1a01000 	mov	r1, r0
     608:	e3a00004 	mov	r0, #4
     60c:	ef000000 	svc	0x00000000
     610:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     614:	e12fff1e 	bx	lr

00000618 <read>:
     618:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     61c:	e1a04003 	mov	r4, r3
     620:	e1a03002 	mov	r3, r2
     624:	e1a02001 	mov	r2, r1
     628:	e1a01000 	mov	r1, r0
     62c:	e3a00005 	mov	r0, #5
     630:	ef000000 	svc	0x00000000
     634:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     638:	e12fff1e 	bx	lr

0000063c <write>:
     63c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     640:	e1a04003 	mov	r4, r3
     644:	e1a03002 	mov	r3, r2
     648:	e1a02001 	mov	r2, r1
     64c:	e1a01000 	mov	r1, r0
     650:	e3a00010 	mov	r0, #16
     654:	ef000000 	svc	0x00000000
     658:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     65c:	e12fff1e 	bx	lr

00000660 <close>:
     660:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     664:	e1a04003 	mov	r4, r3
     668:	e1a03002 	mov	r3, r2
     66c:	e1a02001 	mov	r2, r1
     670:	e1a01000 	mov	r1, r0
     674:	e3a00015 	mov	r0, #21
     678:	ef000000 	svc	0x00000000
     67c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     680:	e12fff1e 	bx	lr

00000684 <kill>:
     684:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     688:	e1a04003 	mov	r4, r3
     68c:	e1a03002 	mov	r3, r2
     690:	e1a02001 	mov	r2, r1
     694:	e1a01000 	mov	r1, r0
     698:	e3a00006 	mov	r0, #6
     69c:	ef000000 	svc	0x00000000
     6a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6a4:	e12fff1e 	bx	lr

000006a8 <exec>:
     6a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6ac:	e1a04003 	mov	r4, r3
     6b0:	e1a03002 	mov	r3, r2
     6b4:	e1a02001 	mov	r2, r1
     6b8:	e1a01000 	mov	r1, r0
     6bc:	e3a00007 	mov	r0, #7
     6c0:	ef000000 	svc	0x00000000
     6c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6c8:	e12fff1e 	bx	lr

000006cc <open>:
     6cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6d0:	e1a04003 	mov	r4, r3
     6d4:	e1a03002 	mov	r3, r2
     6d8:	e1a02001 	mov	r2, r1
     6dc:	e1a01000 	mov	r1, r0
     6e0:	e3a0000f 	mov	r0, #15
     6e4:	ef000000 	svc	0x00000000
     6e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6ec:	e12fff1e 	bx	lr

000006f0 <mknod>:
     6f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6f4:	e1a04003 	mov	r4, r3
     6f8:	e1a03002 	mov	r3, r2
     6fc:	e1a02001 	mov	r2, r1
     700:	e1a01000 	mov	r1, r0
     704:	e3a00011 	mov	r0, #17
     708:	ef000000 	svc	0x00000000
     70c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     710:	e12fff1e 	bx	lr

00000714 <unlink>:
     714:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     718:	e1a04003 	mov	r4, r3
     71c:	e1a03002 	mov	r3, r2
     720:	e1a02001 	mov	r2, r1
     724:	e1a01000 	mov	r1, r0
     728:	e3a00012 	mov	r0, #18
     72c:	ef000000 	svc	0x00000000
     730:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     734:	e12fff1e 	bx	lr

00000738 <fstat>:
     738:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     73c:	e1a04003 	mov	r4, r3
     740:	e1a03002 	mov	r3, r2
     744:	e1a02001 	mov	r2, r1
     748:	e1a01000 	mov	r1, r0
     74c:	e3a00008 	mov	r0, #8
     750:	ef000000 	svc	0x00000000
     754:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     758:	e12fff1e 	bx	lr

0000075c <link>:
     75c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     760:	e1a04003 	mov	r4, r3
     764:	e1a03002 	mov	r3, r2
     768:	e1a02001 	mov	r2, r1
     76c:	e1a01000 	mov	r1, r0
     770:	e3a00013 	mov	r0, #19
     774:	ef000000 	svc	0x00000000
     778:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     77c:	e12fff1e 	bx	lr

00000780 <mkdir>:
     780:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     784:	e1a04003 	mov	r4, r3
     788:	e1a03002 	mov	r3, r2
     78c:	e1a02001 	mov	r2, r1
     790:	e1a01000 	mov	r1, r0
     794:	e3a00014 	mov	r0, #20
     798:	ef000000 	svc	0x00000000
     79c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7a0:	e12fff1e 	bx	lr

000007a4 <chdir>:
     7a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7a8:	e1a04003 	mov	r4, r3
     7ac:	e1a03002 	mov	r3, r2
     7b0:	e1a02001 	mov	r2, r1
     7b4:	e1a01000 	mov	r1, r0
     7b8:	e3a00009 	mov	r0, #9
     7bc:	ef000000 	svc	0x00000000
     7c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c4:	e12fff1e 	bx	lr

000007c8 <dup>:
     7c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7cc:	e1a04003 	mov	r4, r3
     7d0:	e1a03002 	mov	r3, r2
     7d4:	e1a02001 	mov	r2, r1
     7d8:	e1a01000 	mov	r1, r0
     7dc:	e3a0000a 	mov	r0, #10
     7e0:	ef000000 	svc	0x00000000
     7e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7e8:	e12fff1e 	bx	lr

000007ec <getpid>:
     7ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f0:	e1a04003 	mov	r4, r3
     7f4:	e1a03002 	mov	r3, r2
     7f8:	e1a02001 	mov	r2, r1
     7fc:	e1a01000 	mov	r1, r0
     800:	e3a0000b 	mov	r0, #11
     804:	ef000000 	svc	0x00000000
     808:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     80c:	e12fff1e 	bx	lr

00000810 <sbrk>:
     810:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     814:	e1a04003 	mov	r4, r3
     818:	e1a03002 	mov	r3, r2
     81c:	e1a02001 	mov	r2, r1
     820:	e1a01000 	mov	r1, r0
     824:	e3a0000c 	mov	r0, #12
     828:	ef000000 	svc	0x00000000
     82c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     830:	e12fff1e 	bx	lr

00000834 <sleep>:
     834:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     838:	e1a04003 	mov	r4, r3
     83c:	e1a03002 	mov	r3, r2
     840:	e1a02001 	mov	r2, r1
     844:	e1a01000 	mov	r1, r0
     848:	e3a0000d 	mov	r0, #13
     84c:	ef000000 	svc	0x00000000
     850:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     854:	e12fff1e 	bx	lr

00000858 <uptime>:
     858:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     85c:	e1a04003 	mov	r4, r3
     860:	e1a03002 	mov	r3, r2
     864:	e1a02001 	mov	r2, r1
     868:	e1a01000 	mov	r1, r0
     86c:	e3a0000e 	mov	r0, #14
     870:	ef000000 	svc	0x00000000
     874:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     878:	e12fff1e 	bx	lr

0000087c <getprocs>:
     87c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     880:	e1a04003 	mov	r4, r3
     884:	e1a03002 	mov	r3, r2
     888:	e1a02001 	mov	r2, r1
     88c:	e1a01000 	mov	r1, r0
     890:	e3a00016 	mov	r0, #22
     894:	ef000000 	svc	0x00000000
     898:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     89c:	e12fff1e 	bx	lr

000008a0 <putc>:
     8a0:	e92d4800 	push	{fp, lr}
     8a4:	e28db004 	add	fp, sp, #4
     8a8:	e24dd008 	sub	sp, sp, #8
     8ac:	e50b0008 	str	r0, [fp, #-8]
     8b0:	e1a03001 	mov	r3, r1
     8b4:	e54b3009 	strb	r3, [fp, #-9]
     8b8:	e24b3009 	sub	r3, fp, #9
     8bc:	e3a02001 	mov	r2, #1
     8c0:	e1a01003 	mov	r1, r3
     8c4:	e51b0008 	ldr	r0, [fp, #-8]
     8c8:	ebffff5b 	bl	63c <write>
     8cc:	e1a00000 	nop			@ (mov r0, r0)
     8d0:	e24bd004 	sub	sp, fp, #4
     8d4:	e8bd8800 	pop	{fp, pc}

000008d8 <printint>:
     8d8:	e92d4800 	push	{fp, lr}
     8dc:	e28db004 	add	fp, sp, #4
     8e0:	e24dd030 	sub	sp, sp, #48	@ 0x30
     8e4:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     8e8:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     8ec:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     8f0:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     8f4:	e3a03000 	mov	r3, #0
     8f8:	e50b300c 	str	r3, [fp, #-12]
     8fc:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     900:	e3530000 	cmp	r3, #0
     904:	0a000008 	beq	92c <printint+0x54>
     908:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     90c:	e3530000 	cmp	r3, #0
     910:	aa000005 	bge	92c <printint+0x54>
     914:	e3a03001 	mov	r3, #1
     918:	e50b300c 	str	r3, [fp, #-12]
     91c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     920:	e2633000 	rsb	r3, r3, #0
     924:	e50b3010 	str	r3, [fp, #-16]
     928:	ea000001 	b	934 <printint+0x5c>
     92c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     930:	e50b3010 	str	r3, [fp, #-16]
     934:	e3a03000 	mov	r3, #0
     938:	e50b3008 	str	r3, [fp, #-8]
     93c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     940:	e51b3010 	ldr	r3, [fp, #-16]
     944:	e1a01002 	mov	r1, r2
     948:	e1a00003 	mov	r0, r3
     94c:	eb0001d5 	bl	10a8 <__aeabi_uidivmod>
     950:	e1a03001 	mov	r3, r1
     954:	e1a01003 	mov	r1, r3
     958:	e51b3008 	ldr	r3, [fp, #-8]
     95c:	e2832001 	add	r2, r3, #1
     960:	e50b2008 	str	r2, [fp, #-8]
     964:	e59f20a0 	ldr	r2, [pc, #160]	@ a0c <printint+0x134>
     968:	e7d22001 	ldrb	r2, [r2, r1]
     96c:	e2433004 	sub	r3, r3, #4
     970:	e083300b 	add	r3, r3, fp
     974:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     978:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     97c:	e1a01003 	mov	r1, r3
     980:	e51b0010 	ldr	r0, [fp, #-16]
     984:	eb00018a 	bl	fb4 <__udivsi3>
     988:	e1a03000 	mov	r3, r0
     98c:	e50b3010 	str	r3, [fp, #-16]
     990:	e51b3010 	ldr	r3, [fp, #-16]
     994:	e3530000 	cmp	r3, #0
     998:	1affffe7 	bne	93c <printint+0x64>
     99c:	e51b300c 	ldr	r3, [fp, #-12]
     9a0:	e3530000 	cmp	r3, #0
     9a4:	0a00000e 	beq	9e4 <printint+0x10c>
     9a8:	e51b3008 	ldr	r3, [fp, #-8]
     9ac:	e2832001 	add	r2, r3, #1
     9b0:	e50b2008 	str	r2, [fp, #-8]
     9b4:	e2433004 	sub	r3, r3, #4
     9b8:	e083300b 	add	r3, r3, fp
     9bc:	e3a0202d 	mov	r2, #45	@ 0x2d
     9c0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     9c4:	ea000006 	b	9e4 <printint+0x10c>
     9c8:	e24b2020 	sub	r2, fp, #32
     9cc:	e51b3008 	ldr	r3, [fp, #-8]
     9d0:	e0823003 	add	r3, r2, r3
     9d4:	e5d33000 	ldrb	r3, [r3]
     9d8:	e1a01003 	mov	r1, r3
     9dc:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     9e0:	ebffffae 	bl	8a0 <putc>
     9e4:	e51b3008 	ldr	r3, [fp, #-8]
     9e8:	e2433001 	sub	r3, r3, #1
     9ec:	e50b3008 	str	r3, [fp, #-8]
     9f0:	e51b3008 	ldr	r3, [fp, #-8]
     9f4:	e3530000 	cmp	r3, #0
     9f8:	aafffff2 	bge	9c8 <printint+0xf0>
     9fc:	e1a00000 	nop			@ (mov r0, r0)
     a00:	e1a00000 	nop			@ (mov r0, r0)
     a04:	e24bd004 	sub	sp, fp, #4
     a08:	e8bd8800 	pop	{fp, pc}
     a0c:	000010e8 	.word	0x000010e8

00000a10 <printf>:
     a10:	e92d000e 	push	{r1, r2, r3}
     a14:	e92d4800 	push	{fp, lr}
     a18:	e28db004 	add	fp, sp, #4
     a1c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     a20:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     a24:	e3a03000 	mov	r3, #0
     a28:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a2c:	e28b3008 	add	r3, fp, #8
     a30:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a34:	e3a03000 	mov	r3, #0
     a38:	e50b3010 	str	r3, [fp, #-16]
     a3c:	ea000074 	b	c14 <printf+0x204>
     a40:	e59b2004 	ldr	r2, [fp, #4]
     a44:	e51b3010 	ldr	r3, [fp, #-16]
     a48:	e0823003 	add	r3, r2, r3
     a4c:	e5d33000 	ldrb	r3, [r3]
     a50:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     a54:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a58:	e3530000 	cmp	r3, #0
     a5c:	1a00000b 	bne	a90 <printf+0x80>
     a60:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a64:	e3530025 	cmp	r3, #37	@ 0x25
     a68:	1a000002 	bne	a78 <printf+0x68>
     a6c:	e3a03025 	mov	r3, #37	@ 0x25
     a70:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a74:	ea000063 	b	c08 <printf+0x1f8>
     a78:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a7c:	e6ef3073 	uxtb	r3, r3
     a80:	e1a01003 	mov	r1, r3
     a84:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     a88:	ebffff84 	bl	8a0 <putc>
     a8c:	ea00005d 	b	c08 <printf+0x1f8>
     a90:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a94:	e3530025 	cmp	r3, #37	@ 0x25
     a98:	1a00005a 	bne	c08 <printf+0x1f8>
     a9c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     aa0:	e3530064 	cmp	r3, #100	@ 0x64
     aa4:	1a00000a 	bne	ad4 <printf+0xc4>
     aa8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     aac:	e5933000 	ldr	r3, [r3]
     ab0:	e1a01003 	mov	r1, r3
     ab4:	e3a03001 	mov	r3, #1
     ab8:	e3a0200a 	mov	r2, #10
     abc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ac0:	ebffff84 	bl	8d8 <printint>
     ac4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ac8:	e2833004 	add	r3, r3, #4
     acc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ad0:	ea00004a 	b	c00 <printf+0x1f0>
     ad4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ad8:	e3530078 	cmp	r3, #120	@ 0x78
     adc:	0a000002 	beq	aec <printf+0xdc>
     ae0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ae4:	e3530070 	cmp	r3, #112	@ 0x70
     ae8:	1a00000a 	bne	b18 <printf+0x108>
     aec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     af0:	e5933000 	ldr	r3, [r3]
     af4:	e1a01003 	mov	r1, r3
     af8:	e3a03000 	mov	r3, #0
     afc:	e3a02010 	mov	r2, #16
     b00:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b04:	ebffff73 	bl	8d8 <printint>
     b08:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b0c:	e2833004 	add	r3, r3, #4
     b10:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b14:	ea000039 	b	c00 <printf+0x1f0>
     b18:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b1c:	e3530073 	cmp	r3, #115	@ 0x73
     b20:	1a000018 	bne	b88 <printf+0x178>
     b24:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b28:	e5933000 	ldr	r3, [r3]
     b2c:	e50b300c 	str	r3, [fp, #-12]
     b30:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b34:	e2833004 	add	r3, r3, #4
     b38:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b3c:	e51b300c 	ldr	r3, [fp, #-12]
     b40:	e3530000 	cmp	r3, #0
     b44:	1a00000a 	bne	b74 <printf+0x164>
     b48:	e59f30f4 	ldr	r3, [pc, #244]	@ c44 <printf+0x234>
     b4c:	e50b300c 	str	r3, [fp, #-12]
     b50:	ea000007 	b	b74 <printf+0x164>
     b54:	e51b300c 	ldr	r3, [fp, #-12]
     b58:	e5d33000 	ldrb	r3, [r3]
     b5c:	e1a01003 	mov	r1, r3
     b60:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b64:	ebffff4d 	bl	8a0 <putc>
     b68:	e51b300c 	ldr	r3, [fp, #-12]
     b6c:	e2833001 	add	r3, r3, #1
     b70:	e50b300c 	str	r3, [fp, #-12]
     b74:	e51b300c 	ldr	r3, [fp, #-12]
     b78:	e5d33000 	ldrb	r3, [r3]
     b7c:	e3530000 	cmp	r3, #0
     b80:	1afffff3 	bne	b54 <printf+0x144>
     b84:	ea00001d 	b	c00 <printf+0x1f0>
     b88:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b8c:	e3530063 	cmp	r3, #99	@ 0x63
     b90:	1a000009 	bne	bbc <printf+0x1ac>
     b94:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b98:	e5933000 	ldr	r3, [r3]
     b9c:	e6ef3073 	uxtb	r3, r3
     ba0:	e1a01003 	mov	r1, r3
     ba4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ba8:	ebffff3c 	bl	8a0 <putc>
     bac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bb0:	e2833004 	add	r3, r3, #4
     bb4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bb8:	ea000010 	b	c00 <printf+0x1f0>
     bbc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bc0:	e3530025 	cmp	r3, #37	@ 0x25
     bc4:	1a000005 	bne	be0 <printf+0x1d0>
     bc8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bcc:	e6ef3073 	uxtb	r3, r3
     bd0:	e1a01003 	mov	r1, r3
     bd4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bd8:	ebffff30 	bl	8a0 <putc>
     bdc:	ea000007 	b	c00 <printf+0x1f0>
     be0:	e3a01025 	mov	r1, #37	@ 0x25
     be4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     be8:	ebffff2c 	bl	8a0 <putc>
     bec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bf0:	e6ef3073 	uxtb	r3, r3
     bf4:	e1a01003 	mov	r1, r3
     bf8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bfc:	ebffff27 	bl	8a0 <putc>
     c00:	e3a03000 	mov	r3, #0
     c04:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c08:	e51b3010 	ldr	r3, [fp, #-16]
     c0c:	e2833001 	add	r3, r3, #1
     c10:	e50b3010 	str	r3, [fp, #-16]
     c14:	e59b2004 	ldr	r2, [fp, #4]
     c18:	e51b3010 	ldr	r3, [fp, #-16]
     c1c:	e0823003 	add	r3, r2, r3
     c20:	e5d33000 	ldrb	r3, [r3]
     c24:	e3530000 	cmp	r3, #0
     c28:	1affff84 	bne	a40 <printf+0x30>
     c2c:	e1a00000 	nop			@ (mov r0, r0)
     c30:	e1a00000 	nop			@ (mov r0, r0)
     c34:	e24bd004 	sub	sp, fp, #4
     c38:	e8bd4800 	pop	{fp, lr}
     c3c:	e28dd00c 	add	sp, sp, #12
     c40:	e12fff1e 	bx	lr
     c44:	000010e0 	.word	0x000010e0

00000c48 <free>:
     c48:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     c4c:	e28db000 	add	fp, sp, #0
     c50:	e24dd014 	sub	sp, sp, #20
     c54:	e50b0010 	str	r0, [fp, #-16]
     c58:	e51b3010 	ldr	r3, [fp, #-16]
     c5c:	e2433008 	sub	r3, r3, #8
     c60:	e50b300c 	str	r3, [fp, #-12]
     c64:	e59f3154 	ldr	r3, [pc, #340]	@ dc0 <free+0x178>
     c68:	e5933000 	ldr	r3, [r3]
     c6c:	e50b3008 	str	r3, [fp, #-8]
     c70:	ea000010 	b	cb8 <free+0x70>
     c74:	e51b3008 	ldr	r3, [fp, #-8]
     c78:	e5933000 	ldr	r3, [r3]
     c7c:	e51b2008 	ldr	r2, [fp, #-8]
     c80:	e1520003 	cmp	r2, r3
     c84:	3a000008 	bcc	cac <free+0x64>
     c88:	e51b200c 	ldr	r2, [fp, #-12]
     c8c:	e51b3008 	ldr	r3, [fp, #-8]
     c90:	e1520003 	cmp	r2, r3
     c94:	8a000010 	bhi	cdc <free+0x94>
     c98:	e51b3008 	ldr	r3, [fp, #-8]
     c9c:	e5933000 	ldr	r3, [r3]
     ca0:	e51b200c 	ldr	r2, [fp, #-12]
     ca4:	e1520003 	cmp	r2, r3
     ca8:	3a00000b 	bcc	cdc <free+0x94>
     cac:	e51b3008 	ldr	r3, [fp, #-8]
     cb0:	e5933000 	ldr	r3, [r3]
     cb4:	e50b3008 	str	r3, [fp, #-8]
     cb8:	e51b200c 	ldr	r2, [fp, #-12]
     cbc:	e51b3008 	ldr	r3, [fp, #-8]
     cc0:	e1520003 	cmp	r2, r3
     cc4:	9affffea 	bls	c74 <free+0x2c>
     cc8:	e51b3008 	ldr	r3, [fp, #-8]
     ccc:	e5933000 	ldr	r3, [r3]
     cd0:	e51b200c 	ldr	r2, [fp, #-12]
     cd4:	e1520003 	cmp	r2, r3
     cd8:	2affffe5 	bcs	c74 <free+0x2c>
     cdc:	e51b300c 	ldr	r3, [fp, #-12]
     ce0:	e5933004 	ldr	r3, [r3, #4]
     ce4:	e1a03183 	lsl	r3, r3, #3
     ce8:	e51b200c 	ldr	r2, [fp, #-12]
     cec:	e0822003 	add	r2, r2, r3
     cf0:	e51b3008 	ldr	r3, [fp, #-8]
     cf4:	e5933000 	ldr	r3, [r3]
     cf8:	e1520003 	cmp	r2, r3
     cfc:	1a00000d 	bne	d38 <free+0xf0>
     d00:	e51b300c 	ldr	r3, [fp, #-12]
     d04:	e5932004 	ldr	r2, [r3, #4]
     d08:	e51b3008 	ldr	r3, [fp, #-8]
     d0c:	e5933000 	ldr	r3, [r3]
     d10:	e5933004 	ldr	r3, [r3, #4]
     d14:	e0822003 	add	r2, r2, r3
     d18:	e51b300c 	ldr	r3, [fp, #-12]
     d1c:	e5832004 	str	r2, [r3, #4]
     d20:	e51b3008 	ldr	r3, [fp, #-8]
     d24:	e5933000 	ldr	r3, [r3]
     d28:	e5932000 	ldr	r2, [r3]
     d2c:	e51b300c 	ldr	r3, [fp, #-12]
     d30:	e5832000 	str	r2, [r3]
     d34:	ea000003 	b	d48 <free+0x100>
     d38:	e51b3008 	ldr	r3, [fp, #-8]
     d3c:	e5932000 	ldr	r2, [r3]
     d40:	e51b300c 	ldr	r3, [fp, #-12]
     d44:	e5832000 	str	r2, [r3]
     d48:	e51b3008 	ldr	r3, [fp, #-8]
     d4c:	e5933004 	ldr	r3, [r3, #4]
     d50:	e1a03183 	lsl	r3, r3, #3
     d54:	e51b2008 	ldr	r2, [fp, #-8]
     d58:	e0823003 	add	r3, r2, r3
     d5c:	e51b200c 	ldr	r2, [fp, #-12]
     d60:	e1520003 	cmp	r2, r3
     d64:	1a00000b 	bne	d98 <free+0x150>
     d68:	e51b3008 	ldr	r3, [fp, #-8]
     d6c:	e5932004 	ldr	r2, [r3, #4]
     d70:	e51b300c 	ldr	r3, [fp, #-12]
     d74:	e5933004 	ldr	r3, [r3, #4]
     d78:	e0822003 	add	r2, r2, r3
     d7c:	e51b3008 	ldr	r3, [fp, #-8]
     d80:	e5832004 	str	r2, [r3, #4]
     d84:	e51b300c 	ldr	r3, [fp, #-12]
     d88:	e5932000 	ldr	r2, [r3]
     d8c:	e51b3008 	ldr	r3, [fp, #-8]
     d90:	e5832000 	str	r2, [r3]
     d94:	ea000002 	b	da4 <free+0x15c>
     d98:	e51b3008 	ldr	r3, [fp, #-8]
     d9c:	e51b200c 	ldr	r2, [fp, #-12]
     da0:	e5832000 	str	r2, [r3]
     da4:	e59f2014 	ldr	r2, [pc, #20]	@ dc0 <free+0x178>
     da8:	e51b3008 	ldr	r3, [fp, #-8]
     dac:	e5823000 	str	r3, [r2]
     db0:	e1a00000 	nop			@ (mov r0, r0)
     db4:	e28bd000 	add	sp, fp, #0
     db8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     dbc:	e12fff1e 	bx	lr
     dc0:	00001104 	.word	0x00001104

00000dc4 <morecore>:
     dc4:	e92d4800 	push	{fp, lr}
     dc8:	e28db004 	add	fp, sp, #4
     dcc:	e24dd010 	sub	sp, sp, #16
     dd0:	e50b0010 	str	r0, [fp, #-16]
     dd4:	e51b3010 	ldr	r3, [fp, #-16]
     dd8:	e3530a01 	cmp	r3, #4096	@ 0x1000
     ddc:	2a000001 	bcs	de8 <morecore+0x24>
     de0:	e3a03a01 	mov	r3, #4096	@ 0x1000
     de4:	e50b3010 	str	r3, [fp, #-16]
     de8:	e51b3010 	ldr	r3, [fp, #-16]
     dec:	e1a03183 	lsl	r3, r3, #3
     df0:	e1a00003 	mov	r0, r3
     df4:	ebfffe85 	bl	810 <sbrk>
     df8:	e50b0008 	str	r0, [fp, #-8]
     dfc:	e51b3008 	ldr	r3, [fp, #-8]
     e00:	e3730001 	cmn	r3, #1
     e04:	1a000001 	bne	e10 <morecore+0x4c>
     e08:	e3a03000 	mov	r3, #0
     e0c:	ea00000a 	b	e3c <morecore+0x78>
     e10:	e51b3008 	ldr	r3, [fp, #-8]
     e14:	e50b300c 	str	r3, [fp, #-12]
     e18:	e51b300c 	ldr	r3, [fp, #-12]
     e1c:	e51b2010 	ldr	r2, [fp, #-16]
     e20:	e5832004 	str	r2, [r3, #4]
     e24:	e51b300c 	ldr	r3, [fp, #-12]
     e28:	e2833008 	add	r3, r3, #8
     e2c:	e1a00003 	mov	r0, r3
     e30:	ebffff84 	bl	c48 <free>
     e34:	e59f300c 	ldr	r3, [pc, #12]	@ e48 <morecore+0x84>
     e38:	e5933000 	ldr	r3, [r3]
     e3c:	e1a00003 	mov	r0, r3
     e40:	e24bd004 	sub	sp, fp, #4
     e44:	e8bd8800 	pop	{fp, pc}
     e48:	00001104 	.word	0x00001104

00000e4c <malloc>:
     e4c:	e92d4800 	push	{fp, lr}
     e50:	e28db004 	add	fp, sp, #4
     e54:	e24dd018 	sub	sp, sp, #24
     e58:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     e5c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e60:	e2833007 	add	r3, r3, #7
     e64:	e1a031a3 	lsr	r3, r3, #3
     e68:	e2833001 	add	r3, r3, #1
     e6c:	e50b3010 	str	r3, [fp, #-16]
     e70:	e59f3134 	ldr	r3, [pc, #308]	@ fac <malloc+0x160>
     e74:	e5933000 	ldr	r3, [r3]
     e78:	e50b300c 	str	r3, [fp, #-12]
     e7c:	e51b300c 	ldr	r3, [fp, #-12]
     e80:	e3530000 	cmp	r3, #0
     e84:	1a00000b 	bne	eb8 <malloc+0x6c>
     e88:	e59f3120 	ldr	r3, [pc, #288]	@ fb0 <malloc+0x164>
     e8c:	e50b300c 	str	r3, [fp, #-12]
     e90:	e59f2114 	ldr	r2, [pc, #276]	@ fac <malloc+0x160>
     e94:	e51b300c 	ldr	r3, [fp, #-12]
     e98:	e5823000 	str	r3, [r2]
     e9c:	e59f3108 	ldr	r3, [pc, #264]	@ fac <malloc+0x160>
     ea0:	e5933000 	ldr	r3, [r3]
     ea4:	e59f2104 	ldr	r2, [pc, #260]	@ fb0 <malloc+0x164>
     ea8:	e5823000 	str	r3, [r2]
     eac:	e59f30fc 	ldr	r3, [pc, #252]	@ fb0 <malloc+0x164>
     eb0:	e3a02000 	mov	r2, #0
     eb4:	e5832004 	str	r2, [r3, #4]
     eb8:	e51b300c 	ldr	r3, [fp, #-12]
     ebc:	e5933000 	ldr	r3, [r3]
     ec0:	e50b3008 	str	r3, [fp, #-8]
     ec4:	e51b3008 	ldr	r3, [fp, #-8]
     ec8:	e5933004 	ldr	r3, [r3, #4]
     ecc:	e51b2010 	ldr	r2, [fp, #-16]
     ed0:	e1520003 	cmp	r2, r3
     ed4:	8a00001e 	bhi	f54 <malloc+0x108>
     ed8:	e51b3008 	ldr	r3, [fp, #-8]
     edc:	e5933004 	ldr	r3, [r3, #4]
     ee0:	e51b2010 	ldr	r2, [fp, #-16]
     ee4:	e1520003 	cmp	r2, r3
     ee8:	1a000004 	bne	f00 <malloc+0xb4>
     eec:	e51b3008 	ldr	r3, [fp, #-8]
     ef0:	e5932000 	ldr	r2, [r3]
     ef4:	e51b300c 	ldr	r3, [fp, #-12]
     ef8:	e5832000 	str	r2, [r3]
     efc:	ea00000e 	b	f3c <malloc+0xf0>
     f00:	e51b3008 	ldr	r3, [fp, #-8]
     f04:	e5932004 	ldr	r2, [r3, #4]
     f08:	e51b3010 	ldr	r3, [fp, #-16]
     f0c:	e0422003 	sub	r2, r2, r3
     f10:	e51b3008 	ldr	r3, [fp, #-8]
     f14:	e5832004 	str	r2, [r3, #4]
     f18:	e51b3008 	ldr	r3, [fp, #-8]
     f1c:	e5933004 	ldr	r3, [r3, #4]
     f20:	e1a03183 	lsl	r3, r3, #3
     f24:	e51b2008 	ldr	r2, [fp, #-8]
     f28:	e0823003 	add	r3, r2, r3
     f2c:	e50b3008 	str	r3, [fp, #-8]
     f30:	e51b3008 	ldr	r3, [fp, #-8]
     f34:	e51b2010 	ldr	r2, [fp, #-16]
     f38:	e5832004 	str	r2, [r3, #4]
     f3c:	e59f2068 	ldr	r2, [pc, #104]	@ fac <malloc+0x160>
     f40:	e51b300c 	ldr	r3, [fp, #-12]
     f44:	e5823000 	str	r3, [r2]
     f48:	e51b3008 	ldr	r3, [fp, #-8]
     f4c:	e2833008 	add	r3, r3, #8
     f50:	ea000012 	b	fa0 <malloc+0x154>
     f54:	e59f3050 	ldr	r3, [pc, #80]	@ fac <malloc+0x160>
     f58:	e5933000 	ldr	r3, [r3]
     f5c:	e51b2008 	ldr	r2, [fp, #-8]
     f60:	e1520003 	cmp	r2, r3
     f64:	1a000007 	bne	f88 <malloc+0x13c>
     f68:	e51b0010 	ldr	r0, [fp, #-16]
     f6c:	ebffff94 	bl	dc4 <morecore>
     f70:	e50b0008 	str	r0, [fp, #-8]
     f74:	e51b3008 	ldr	r3, [fp, #-8]
     f78:	e3530000 	cmp	r3, #0
     f7c:	1a000001 	bne	f88 <malloc+0x13c>
     f80:	e3a03000 	mov	r3, #0
     f84:	ea000005 	b	fa0 <malloc+0x154>
     f88:	e51b3008 	ldr	r3, [fp, #-8]
     f8c:	e50b300c 	str	r3, [fp, #-12]
     f90:	e51b3008 	ldr	r3, [fp, #-8]
     f94:	e5933000 	ldr	r3, [r3]
     f98:	e50b3008 	str	r3, [fp, #-8]
     f9c:	eaffffc8 	b	ec4 <malloc+0x78>
     fa0:	e1a00003 	mov	r0, r3
     fa4:	e24bd004 	sub	sp, fp, #4
     fa8:	e8bd8800 	pop	{fp, pc}
     fac:	00001104 	.word	0x00001104
     fb0:	000010fc 	.word	0x000010fc

00000fb4 <__udivsi3>:
     fb4:	e2512001 	subs	r2, r1, #1
     fb8:	012fff1e 	bxeq	lr
     fbc:	3a000036 	bcc	109c <__udivsi3+0xe8>
     fc0:	e1500001 	cmp	r0, r1
     fc4:	9a000022 	bls	1054 <__udivsi3+0xa0>
     fc8:	e1110002 	tst	r1, r2
     fcc:	0a000023 	beq	1060 <__udivsi3+0xac>
     fd0:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
     fd4:	01a01181 	lsleq	r1, r1, #3
     fd8:	03a03008 	moveq	r3, #8
     fdc:	13a03001 	movne	r3, #1
     fe0:	e3510201 	cmp	r1, #268435456	@ 0x10000000
     fe4:	31510000 	cmpcc	r1, r0
     fe8:	31a01201 	lslcc	r1, r1, #4
     fec:	31a03203 	lslcc	r3, r3, #4
     ff0:	3afffffa 	bcc	fe0 <__udivsi3+0x2c>
     ff4:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
     ff8:	31510000 	cmpcc	r1, r0
     ffc:	31a01081 	lslcc	r1, r1, #1
    1000:	31a03083 	lslcc	r3, r3, #1
    1004:	3afffffa 	bcc	ff4 <__udivsi3+0x40>
    1008:	e3a02000 	mov	r2, #0
    100c:	e1500001 	cmp	r0, r1
    1010:	20400001 	subcs	r0, r0, r1
    1014:	21822003 	orrcs	r2, r2, r3
    1018:	e15000a1 	cmp	r0, r1, lsr #1
    101c:	204000a1 	subcs	r0, r0, r1, lsr #1
    1020:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1024:	e1500121 	cmp	r0, r1, lsr #2
    1028:	20400121 	subcs	r0, r0, r1, lsr #2
    102c:	21822123 	orrcs	r2, r2, r3, lsr #2
    1030:	e15001a1 	cmp	r0, r1, lsr #3
    1034:	204001a1 	subcs	r0, r0, r1, lsr #3
    1038:	218221a3 	orrcs	r2, r2, r3, lsr #3
    103c:	e3500000 	cmp	r0, #0
    1040:	11b03223 	lsrsne	r3, r3, #4
    1044:	11a01221 	lsrne	r1, r1, #4
    1048:	1affffef 	bne	100c <__udivsi3+0x58>
    104c:	e1a00002 	mov	r0, r2
    1050:	e12fff1e 	bx	lr
    1054:	03a00001 	moveq	r0, #1
    1058:	13a00000 	movne	r0, #0
    105c:	e12fff1e 	bx	lr
    1060:	e3510801 	cmp	r1, #65536	@ 0x10000
    1064:	21a01821 	lsrcs	r1, r1, #16
    1068:	23a02010 	movcs	r2, #16
    106c:	33a02000 	movcc	r2, #0
    1070:	e3510c01 	cmp	r1, #256	@ 0x100
    1074:	21a01421 	lsrcs	r1, r1, #8
    1078:	22822008 	addcs	r2, r2, #8
    107c:	e3510010 	cmp	r1, #16
    1080:	21a01221 	lsrcs	r1, r1, #4
    1084:	22822004 	addcs	r2, r2, #4
    1088:	e3510004 	cmp	r1, #4
    108c:	82822003 	addhi	r2, r2, #3
    1090:	908220a1 	addls	r2, r2, r1, lsr #1
    1094:	e1a00230 	lsr	r0, r0, r2
    1098:	e12fff1e 	bx	lr
    109c:	e3500000 	cmp	r0, #0
    10a0:	13e00000 	mvnne	r0, #0
    10a4:	ea000007 	b	10c8 <__aeabi_idiv0>

000010a8 <__aeabi_uidivmod>:
    10a8:	e3510000 	cmp	r1, #0
    10ac:	0afffffa 	beq	109c <__udivsi3+0xe8>
    10b0:	e92d4003 	push	{r0, r1, lr}
    10b4:	ebffffbe 	bl	fb4 <__udivsi3>
    10b8:	e8bd4006 	pop	{r1, r2, lr}
    10bc:	e0030092 	mul	r3, r2, r0
    10c0:	e0411003 	sub	r1, r1, r3
    10c4:	e12fff1e 	bx	lr

000010c8 <__aeabi_idiv0>:
    10c8:	e12fff1e 	bx	lr
