
_t_waitpid:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	eb00023e 	bl	90c <fork>
      10:	e50b0008 	str	r0, [fp, #-8]
      14:	e51b3008 	ldr	r3, [fp, #-8]
      18:	e3530000 	cmp	r3, #0
      1c:	1a000002 	bne	2c <main+0x2c>
      20:	e3a0000a 	mov	r0, #10
      24:	eb0002e3 	bl	bb8 <sleep>
      28:	eb000240 	bl	930 <exit>
      2c:	e51b3008 	ldr	r3, [fp, #-8]
      30:	e2833001 	add	r3, r3, #1
      34:	e1a00003 	mov	r0, r3
      38:	eb000338 	bl	d20 <waitpid>
      3c:	e50b000c 	str	r0, [fp, #-12]
      40:	e51b200c 	ldr	r2, [fp, #-12]
      44:	e59f1048 	ldr	r1, [pc, #72]	@ 94 <main+0x94>
      48:	e3a00001 	mov	r0, #1
      4c:	eb0003ce 	bl	f8c <printf>
      50:	e51b0008 	ldr	r0, [fp, #-8]
      54:	eb000331 	bl	d20 <waitpid>
      58:	e50b000c 	str	r0, [fp, #-12]
      5c:	e51b200c 	ldr	r2, [fp, #-12]
      60:	e59f1030 	ldr	r1, [pc, #48]	@ 98 <main+0x98>
      64:	e3a00001 	mov	r0, #1
      68:	eb0003c7 	bl	f8c <printf>
      6c:	eb000238 	bl	954 <wait>
      70:	e50b000c 	str	r0, [fp, #-12]
      74:	e51b200c 	ldr	r2, [fp, #-12]
      78:	e59f101c 	ldr	r1, [pc, #28]	@ 9c <main+0x9c>
      7c:	e3a00001 	mov	r0, #1
      80:	eb0003c1 	bl	f8c <printf>
      84:	e59f1014 	ldr	r1, [pc, #20]	@ a0 <main+0xa0>
      88:	e3a00001 	mov	r0, #1
      8c:	eb0003be 	bl	f8c <printf>
      90:	eb000226 	bl	930 <exit>
      94:	00001648 	.word	0x00001648
      98:	0000166c 	.word	0x0000166c
      9c:	00001690 	.word	0x00001690
      a0:	000016ac 	.word	0x000016ac

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
     398:	eb00017f 	bl	99c <read>
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
     440:	eb000182 	bl	a50 <open>
     444:	e50b0008 	str	r0, [fp, #-8]
     448:	e51b3008 	ldr	r3, [fp, #-8]
     44c:	e3530000 	cmp	r3, #0
     450:	aa000001 	bge	45c <stat+0x38>
     454:	e3e03000 	mvn	r3, #0
     458:	ea000006 	b	478 <stat+0x54>
     45c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     460:	e51b0008 	ldr	r0, [fp, #-8]
     464:	eb000194 	bl	abc <fstat>
     468:	e50b000c 	str	r0, [fp, #-12]
     46c:	e51b0008 	ldr	r0, [fp, #-8]
     470:	eb00015b 	bl	9e4 <close>
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

000005cc <xchg>:
     5cc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5d0:	e28db000 	add	fp, sp, #0
     5d4:	e24dd00c 	sub	sp, sp, #12
     5d8:	e50b0008 	str	r0, [fp, #-8]
     5dc:	e50b100c 	str	r1, [fp, #-12]
     5e0:	e51b200c 	ldr	r2, [fp, #-12]
     5e4:	e51b3008 	ldr	r3, [fp, #-8]
     5e8:	e1931f9f 	ldrex	r1, [r3]
     5ec:	e1830f92 	strex	r0, r2, [r3]
     5f0:	e3500000 	cmp	r0, #0
     5f4:	1afffffb 	bne	5e8 <xchg+0x1c>
     5f8:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     5fc:	e1a03001 	mov	r3, r1
     600:	e1a00003 	mov	r0, r3
     604:	e28bd000 	add	sp, fp, #0
     608:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     60c:	e12fff1e 	bx	lr

00000610 <acquireLock>:
     610:	e92d4800 	push	{fp, lr}
     614:	e28db004 	add	fp, sp, #4
     618:	e24dd008 	sub	sp, sp, #8
     61c:	e50b0008 	str	r0, [fp, #-8]
     620:	e51b3008 	ldr	r3, [fp, #-8]
     624:	e5933004 	ldr	r3, [r3, #4]
     628:	e3530000 	cmp	r3, #0
     62c:	0a000008 	beq	654 <acquireLock+0x44>
     630:	e1a00000 	nop			@ (mov r0, r0)
     634:	e51b3008 	ldr	r3, [fp, #-8]
     638:	e3a01001 	mov	r1, #1
     63c:	e1a00003 	mov	r0, r3
     640:	ebffffe1 	bl	5cc <xchg>
     644:	e1a03000 	mov	r3, r0
     648:	e3530000 	cmp	r3, #0
     64c:	1afffff8 	bne	634 <acquireLock+0x24>
     650:	ea000000 	b	658 <acquireLock+0x48>
     654:	e1a00000 	nop			@ (mov r0, r0)
     658:	e24bd004 	sub	sp, fp, #4
     65c:	e8bd8800 	pop	{fp, pc}

00000660 <releaseLock>:
     660:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     664:	e28db000 	add	fp, sp, #0
     668:	e24dd00c 	sub	sp, sp, #12
     66c:	e50b0008 	str	r0, [fp, #-8]
     670:	e51b3008 	ldr	r3, [fp, #-8]
     674:	e5933004 	ldr	r3, [r3, #4]
     678:	e3530000 	cmp	r3, #0
     67c:	0a000007 	beq	6a0 <releaseLock+0x40>
     680:	e51b3008 	ldr	r3, [fp, #-8]
     684:	e5933000 	ldr	r3, [r3]
     688:	e3530001 	cmp	r3, #1
     68c:	1a000005 	bne	6a8 <releaseLock+0x48>
     690:	e51b3008 	ldr	r3, [fp, #-8]
     694:	e3a02000 	mov	r2, #0
     698:	e5832000 	str	r2, [r3]
     69c:	ea000002 	b	6ac <releaseLock+0x4c>
     6a0:	e1a00000 	nop			@ (mov r0, r0)
     6a4:	ea000000 	b	6ac <releaseLock+0x4c>
     6a8:	e1a00000 	nop			@ (mov r0, r0)
     6ac:	e28bd000 	add	sp, fp, #0
     6b0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6b4:	e12fff1e 	bx	lr

000006b8 <initiateCondVar>:
     6b8:	e92d4800 	push	{fp, lr}
     6bc:	e28db004 	add	fp, sp, #4
     6c0:	e24dd008 	sub	sp, sp, #8
     6c4:	e50b0008 	str	r0, [fp, #-8]
     6c8:	eb0001b8 	bl	db0 <getChannel>
     6cc:	e1a02000 	mov	r2, r0
     6d0:	e51b3008 	ldr	r3, [fp, #-8]
     6d4:	e5832000 	str	r2, [r3]
     6d8:	e51b3008 	ldr	r3, [fp, #-8]
     6dc:	e3a02001 	mov	r2, #1
     6e0:	e5832004 	str	r2, [r3, #4]
     6e4:	e1a00000 	nop			@ (mov r0, r0)
     6e8:	e24bd004 	sub	sp, fp, #4
     6ec:	e8bd8800 	pop	{fp, pc}

000006f0 <condWait>:
     6f0:	e92d4800 	push	{fp, lr}
     6f4:	e28db004 	add	fp, sp, #4
     6f8:	e24dd008 	sub	sp, sp, #8
     6fc:	e50b0008 	str	r0, [fp, #-8]
     700:	e50b100c 	str	r1, [fp, #-12]
     704:	e51b3008 	ldr	r3, [fp, #-8]
     708:	e5933004 	ldr	r3, [r3, #4]
     70c:	e3530000 	cmp	r3, #0
     710:	0a00000c 	beq	748 <condWait+0x58>
     714:	e51b300c 	ldr	r3, [fp, #-12]
     718:	e5933004 	ldr	r3, [r3, #4]
     71c:	e3530000 	cmp	r3, #0
     720:	0a000008 	beq	748 <condWait+0x58>
     724:	e51b000c 	ldr	r0, [fp, #-12]
     728:	ebffffcc 	bl	660 <releaseLock>
     72c:	e51b3008 	ldr	r3, [fp, #-8]
     730:	e5933000 	ldr	r3, [r3]
     734:	e1a00003 	mov	r0, r3
     738:	eb000193 	bl	d8c <sleepChan>
     73c:	e51b000c 	ldr	r0, [fp, #-12]
     740:	ebffffb2 	bl	610 <acquireLock>
     744:	ea000000 	b	74c <condWait+0x5c>
     748:	e1a00000 	nop			@ (mov r0, r0)
     74c:	e24bd004 	sub	sp, fp, #4
     750:	e8bd8800 	pop	{fp, pc}

00000754 <broadcast>:
     754:	e92d4800 	push	{fp, lr}
     758:	e28db004 	add	fp, sp, #4
     75c:	e24dd008 	sub	sp, sp, #8
     760:	e50b0008 	str	r0, [fp, #-8]
     764:	e51b3008 	ldr	r3, [fp, #-8]
     768:	e5933004 	ldr	r3, [r3, #4]
     76c:	e3530000 	cmp	r3, #0
     770:	0a000004 	beq	788 <broadcast+0x34>
     774:	e51b3008 	ldr	r3, [fp, #-8]
     778:	e5933000 	ldr	r3, [r3]
     77c:	e1a00003 	mov	r0, r3
     780:	eb000193 	bl	dd4 <sigChan>
     784:	ea000000 	b	78c <broadcast+0x38>
     788:	e1a00000 	nop			@ (mov r0, r0)
     78c:	e24bd004 	sub	sp, fp, #4
     790:	e8bd8800 	pop	{fp, pc}

00000794 <signal>:
     794:	e92d4800 	push	{fp, lr}
     798:	e28db004 	add	fp, sp, #4
     79c:	e24dd008 	sub	sp, sp, #8
     7a0:	e50b0008 	str	r0, [fp, #-8]
     7a4:	e51b3008 	ldr	r3, [fp, #-8]
     7a8:	e5933004 	ldr	r3, [r3, #4]
     7ac:	e3530000 	cmp	r3, #0
     7b0:	0a000004 	beq	7c8 <signal+0x34>
     7b4:	e51b3008 	ldr	r3, [fp, #-8]
     7b8:	e5933000 	ldr	r3, [r3]
     7bc:	e1a00003 	mov	r0, r3
     7c0:	eb00018c 	bl	df8 <sigOneChan>
     7c4:	ea000000 	b	7cc <signal+0x38>
     7c8:	e1a00000 	nop			@ (mov r0, r0)
     7cc:	e24bd004 	sub	sp, fp, #4
     7d0:	e8bd8800 	pop	{fp, pc}

000007d4 <semInit>:
     7d4:	e92d4800 	push	{fp, lr}
     7d8:	e28db004 	add	fp, sp, #4
     7dc:	e24dd008 	sub	sp, sp, #8
     7e0:	e50b0008 	str	r0, [fp, #-8]
     7e4:	e50b100c 	str	r1, [fp, #-12]
     7e8:	e51b3008 	ldr	r3, [fp, #-8]
     7ec:	e51b200c 	ldr	r2, [fp, #-12]
     7f0:	e5832000 	str	r2, [r3]
     7f4:	e51b3008 	ldr	r3, [fp, #-8]
     7f8:	e2833004 	add	r3, r3, #4
     7fc:	e1a00003 	mov	r0, r3
     800:	ebffff63 	bl	594 <initiateLock>
     804:	e51b3008 	ldr	r3, [fp, #-8]
     808:	e283300c 	add	r3, r3, #12
     80c:	e1a00003 	mov	r0, r3
     810:	ebffffa8 	bl	6b8 <initiateCondVar>
     814:	e51b3008 	ldr	r3, [fp, #-8]
     818:	e3a02001 	mov	r2, #1
     81c:	e5832014 	str	r2, [r3, #20]
     820:	e1a00000 	nop			@ (mov r0, r0)
     824:	e24bd004 	sub	sp, fp, #4
     828:	e8bd8800 	pop	{fp, pc}

0000082c <semUp>:
     82c:	e92d4800 	push	{fp, lr}
     830:	e28db004 	add	fp, sp, #4
     834:	e24dd008 	sub	sp, sp, #8
     838:	e50b0008 	str	r0, [fp, #-8]
     83c:	e51b3008 	ldr	r3, [fp, #-8]
     840:	e2833004 	add	r3, r3, #4
     844:	e1a00003 	mov	r0, r3
     848:	ebffff70 	bl	610 <acquireLock>
     84c:	e51b3008 	ldr	r3, [fp, #-8]
     850:	e5933000 	ldr	r3, [r3]
     854:	e2832001 	add	r2, r3, #1
     858:	e51b3008 	ldr	r3, [fp, #-8]
     85c:	e5832000 	str	r2, [r3]
     860:	e51b3008 	ldr	r3, [fp, #-8]
     864:	e283300c 	add	r3, r3, #12
     868:	e1a00003 	mov	r0, r3
     86c:	ebffffc8 	bl	794 <signal>
     870:	e51b3008 	ldr	r3, [fp, #-8]
     874:	e2833004 	add	r3, r3, #4
     878:	e1a00003 	mov	r0, r3
     87c:	ebffff77 	bl	660 <releaseLock>
     880:	e1a00000 	nop			@ (mov r0, r0)
     884:	e24bd004 	sub	sp, fp, #4
     888:	e8bd8800 	pop	{fp, pc}

0000088c <semDown>:
     88c:	e92d4800 	push	{fp, lr}
     890:	e28db004 	add	fp, sp, #4
     894:	e24dd008 	sub	sp, sp, #8
     898:	e50b0008 	str	r0, [fp, #-8]
     89c:	e51b3008 	ldr	r3, [fp, #-8]
     8a0:	e2833004 	add	r3, r3, #4
     8a4:	e1a00003 	mov	r0, r3
     8a8:	ebffff58 	bl	610 <acquireLock>
     8ac:	ea000006 	b	8cc <semDown+0x40>
     8b0:	e51b3008 	ldr	r3, [fp, #-8]
     8b4:	e283200c 	add	r2, r3, #12
     8b8:	e51b3008 	ldr	r3, [fp, #-8]
     8bc:	e2833004 	add	r3, r3, #4
     8c0:	e1a01003 	mov	r1, r3
     8c4:	e1a00002 	mov	r0, r2
     8c8:	ebffff88 	bl	6f0 <condWait>
     8cc:	e51b3008 	ldr	r3, [fp, #-8]
     8d0:	e5933000 	ldr	r3, [r3]
     8d4:	e3530000 	cmp	r3, #0
     8d8:	dafffff4 	ble	8b0 <semDown+0x24>
     8dc:	e51b3008 	ldr	r3, [fp, #-8]
     8e0:	e5933000 	ldr	r3, [r3]
     8e4:	e2432001 	sub	r2, r3, #1
     8e8:	e51b3008 	ldr	r3, [fp, #-8]
     8ec:	e5832000 	str	r2, [r3]
     8f0:	e51b3008 	ldr	r3, [fp, #-8]
     8f4:	e2833004 	add	r3, r3, #4
     8f8:	e1a00003 	mov	r0, r3
     8fc:	ebffff57 	bl	660 <releaseLock>
     900:	e1a00000 	nop			@ (mov r0, r0)
     904:	e24bd004 	sub	sp, fp, #4
     908:	e8bd8800 	pop	{fp, pc}

0000090c <fork>:
     90c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     910:	e1a04003 	mov	r4, r3
     914:	e1a03002 	mov	r3, r2
     918:	e1a02001 	mov	r2, r1
     91c:	e1a01000 	mov	r1, r0
     920:	e3a00001 	mov	r0, #1
     924:	ef000000 	svc	0x00000000
     928:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     92c:	e12fff1e 	bx	lr

00000930 <exit>:
     930:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     934:	e1a04003 	mov	r4, r3
     938:	e1a03002 	mov	r3, r2
     93c:	e1a02001 	mov	r2, r1
     940:	e1a01000 	mov	r1, r0
     944:	e3a00002 	mov	r0, #2
     948:	ef000000 	svc	0x00000000
     94c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     950:	e12fff1e 	bx	lr

00000954 <wait>:
     954:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     958:	e1a04003 	mov	r4, r3
     95c:	e1a03002 	mov	r3, r2
     960:	e1a02001 	mov	r2, r1
     964:	e1a01000 	mov	r1, r0
     968:	e3a00003 	mov	r0, #3
     96c:	ef000000 	svc	0x00000000
     970:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     974:	e12fff1e 	bx	lr

00000978 <pipe>:
     978:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     97c:	e1a04003 	mov	r4, r3
     980:	e1a03002 	mov	r3, r2
     984:	e1a02001 	mov	r2, r1
     988:	e1a01000 	mov	r1, r0
     98c:	e3a00004 	mov	r0, #4
     990:	ef000000 	svc	0x00000000
     994:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     998:	e12fff1e 	bx	lr

0000099c <read>:
     99c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a0:	e1a04003 	mov	r4, r3
     9a4:	e1a03002 	mov	r3, r2
     9a8:	e1a02001 	mov	r2, r1
     9ac:	e1a01000 	mov	r1, r0
     9b0:	e3a00005 	mov	r0, #5
     9b4:	ef000000 	svc	0x00000000
     9b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9bc:	e12fff1e 	bx	lr

000009c0 <write>:
     9c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c4:	e1a04003 	mov	r4, r3
     9c8:	e1a03002 	mov	r3, r2
     9cc:	e1a02001 	mov	r2, r1
     9d0:	e1a01000 	mov	r1, r0
     9d4:	e3a00010 	mov	r0, #16
     9d8:	ef000000 	svc	0x00000000
     9dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e0:	e12fff1e 	bx	lr

000009e4 <close>:
     9e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9e8:	e1a04003 	mov	r4, r3
     9ec:	e1a03002 	mov	r3, r2
     9f0:	e1a02001 	mov	r2, r1
     9f4:	e1a01000 	mov	r1, r0
     9f8:	e3a00015 	mov	r0, #21
     9fc:	ef000000 	svc	0x00000000
     a00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a04:	e12fff1e 	bx	lr

00000a08 <kill>:
     a08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a0c:	e1a04003 	mov	r4, r3
     a10:	e1a03002 	mov	r3, r2
     a14:	e1a02001 	mov	r2, r1
     a18:	e1a01000 	mov	r1, r0
     a1c:	e3a00006 	mov	r0, #6
     a20:	ef000000 	svc	0x00000000
     a24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a28:	e12fff1e 	bx	lr

00000a2c <exec>:
     a2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a30:	e1a04003 	mov	r4, r3
     a34:	e1a03002 	mov	r3, r2
     a38:	e1a02001 	mov	r2, r1
     a3c:	e1a01000 	mov	r1, r0
     a40:	e3a00007 	mov	r0, #7
     a44:	ef000000 	svc	0x00000000
     a48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a4c:	e12fff1e 	bx	lr

00000a50 <open>:
     a50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a54:	e1a04003 	mov	r4, r3
     a58:	e1a03002 	mov	r3, r2
     a5c:	e1a02001 	mov	r2, r1
     a60:	e1a01000 	mov	r1, r0
     a64:	e3a0000f 	mov	r0, #15
     a68:	ef000000 	svc	0x00000000
     a6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a70:	e12fff1e 	bx	lr

00000a74 <mknod>:
     a74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a78:	e1a04003 	mov	r4, r3
     a7c:	e1a03002 	mov	r3, r2
     a80:	e1a02001 	mov	r2, r1
     a84:	e1a01000 	mov	r1, r0
     a88:	e3a00011 	mov	r0, #17
     a8c:	ef000000 	svc	0x00000000
     a90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a94:	e12fff1e 	bx	lr

00000a98 <unlink>:
     a98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a9c:	e1a04003 	mov	r4, r3
     aa0:	e1a03002 	mov	r3, r2
     aa4:	e1a02001 	mov	r2, r1
     aa8:	e1a01000 	mov	r1, r0
     aac:	e3a00012 	mov	r0, #18
     ab0:	ef000000 	svc	0x00000000
     ab4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ab8:	e12fff1e 	bx	lr

00000abc <fstat>:
     abc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac0:	e1a04003 	mov	r4, r3
     ac4:	e1a03002 	mov	r3, r2
     ac8:	e1a02001 	mov	r2, r1
     acc:	e1a01000 	mov	r1, r0
     ad0:	e3a00008 	mov	r0, #8
     ad4:	ef000000 	svc	0x00000000
     ad8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     adc:	e12fff1e 	bx	lr

00000ae0 <link>:
     ae0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae4:	e1a04003 	mov	r4, r3
     ae8:	e1a03002 	mov	r3, r2
     aec:	e1a02001 	mov	r2, r1
     af0:	e1a01000 	mov	r1, r0
     af4:	e3a00013 	mov	r0, #19
     af8:	ef000000 	svc	0x00000000
     afc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b00:	e12fff1e 	bx	lr

00000b04 <mkdir>:
     b04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b08:	e1a04003 	mov	r4, r3
     b0c:	e1a03002 	mov	r3, r2
     b10:	e1a02001 	mov	r2, r1
     b14:	e1a01000 	mov	r1, r0
     b18:	e3a00014 	mov	r0, #20
     b1c:	ef000000 	svc	0x00000000
     b20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b24:	e12fff1e 	bx	lr

00000b28 <chdir>:
     b28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b2c:	e1a04003 	mov	r4, r3
     b30:	e1a03002 	mov	r3, r2
     b34:	e1a02001 	mov	r2, r1
     b38:	e1a01000 	mov	r1, r0
     b3c:	e3a00009 	mov	r0, #9
     b40:	ef000000 	svc	0x00000000
     b44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b48:	e12fff1e 	bx	lr

00000b4c <dup>:
     b4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b50:	e1a04003 	mov	r4, r3
     b54:	e1a03002 	mov	r3, r2
     b58:	e1a02001 	mov	r2, r1
     b5c:	e1a01000 	mov	r1, r0
     b60:	e3a0000a 	mov	r0, #10
     b64:	ef000000 	svc	0x00000000
     b68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b6c:	e12fff1e 	bx	lr

00000b70 <getpid>:
     b70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b74:	e1a04003 	mov	r4, r3
     b78:	e1a03002 	mov	r3, r2
     b7c:	e1a02001 	mov	r2, r1
     b80:	e1a01000 	mov	r1, r0
     b84:	e3a0000b 	mov	r0, #11
     b88:	ef000000 	svc	0x00000000
     b8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b90:	e12fff1e 	bx	lr

00000b94 <sbrk>:
     b94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b98:	e1a04003 	mov	r4, r3
     b9c:	e1a03002 	mov	r3, r2
     ba0:	e1a02001 	mov	r2, r1
     ba4:	e1a01000 	mov	r1, r0
     ba8:	e3a0000c 	mov	r0, #12
     bac:	ef000000 	svc	0x00000000
     bb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb4:	e12fff1e 	bx	lr

00000bb8 <sleep>:
     bb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bbc:	e1a04003 	mov	r4, r3
     bc0:	e1a03002 	mov	r3, r2
     bc4:	e1a02001 	mov	r2, r1
     bc8:	e1a01000 	mov	r1, r0
     bcc:	e3a0000d 	mov	r0, #13
     bd0:	ef000000 	svc	0x00000000
     bd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bd8:	e12fff1e 	bx	lr

00000bdc <uptime>:
     bdc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be0:	e1a04003 	mov	r4, r3
     be4:	e1a03002 	mov	r3, r2
     be8:	e1a02001 	mov	r2, r1
     bec:	e1a01000 	mov	r1, r0
     bf0:	e3a0000e 	mov	r0, #14
     bf4:	ef000000 	svc	0x00000000
     bf8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bfc:	e12fff1e 	bx	lr

00000c00 <getprocs>:
     c00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c04:	e1a04003 	mov	r4, r3
     c08:	e1a03002 	mov	r3, r2
     c0c:	e1a02001 	mov	r2, r1
     c10:	e1a01000 	mov	r1, r0
     c14:	e3a00016 	mov	r0, #22
     c18:	ef000000 	svc	0x00000000
     c1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c20:	e12fff1e 	bx	lr

00000c24 <settickets>:
     c24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c28:	e1a04003 	mov	r4, r3
     c2c:	e1a03002 	mov	r3, r2
     c30:	e1a02001 	mov	r2, r1
     c34:	e1a01000 	mov	r1, r0
     c38:	e3a00017 	mov	r0, #23
     c3c:	ef000000 	svc	0x00000000
     c40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c44:	e12fff1e 	bx	lr

00000c48 <srand>:
     c48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c4c:	e1a04003 	mov	r4, r3
     c50:	e1a03002 	mov	r3, r2
     c54:	e1a02001 	mov	r2, r1
     c58:	e1a01000 	mov	r1, r0
     c5c:	e3a00018 	mov	r0, #24
     c60:	ef000000 	svc	0x00000000
     c64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c68:	e12fff1e 	bx	lr

00000c6c <getpinfo>:
     c6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c70:	e1a04003 	mov	r4, r3
     c74:	e1a03002 	mov	r3, r2
     c78:	e1a02001 	mov	r2, r1
     c7c:	e1a01000 	mov	r1, r0
     c80:	e3a00019 	mov	r0, #25
     c84:	ef000000 	svc	0x00000000
     c88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c8c:	e12fff1e 	bx	lr

00000c90 <dumppagetable>:
     c90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c94:	e1a04003 	mov	r4, r3
     c98:	e1a03002 	mov	r3, r2
     c9c:	e1a02001 	mov	r2, r1
     ca0:	e1a01000 	mov	r1, r0
     ca4:	e3a0001a 	mov	r0, #26
     ca8:	ef000000 	svc	0x00000000
     cac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb0:	e12fff1e 	bx	lr

00000cb4 <thread_create>:
     cb4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cb8:	e1a04003 	mov	r4, r3
     cbc:	e1a03002 	mov	r3, r2
     cc0:	e1a02001 	mov	r2, r1
     cc4:	e1a01000 	mov	r1, r0
     cc8:	e3a0001b 	mov	r0, #27
     ccc:	ef000000 	svc	0x00000000
     cd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd4:	e12fff1e 	bx	lr

00000cd8 <thread_exit>:
     cd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cdc:	e1a04003 	mov	r4, r3
     ce0:	e1a03002 	mov	r3, r2
     ce4:	e1a02001 	mov	r2, r1
     ce8:	e1a01000 	mov	r1, r0
     cec:	e3a0001c 	mov	r0, #28
     cf0:	ef000000 	svc	0x00000000
     cf4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cf8:	e12fff1e 	bx	lr

00000cfc <thread_join>:
     cfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d00:	e1a04003 	mov	r4, r3
     d04:	e1a03002 	mov	r3, r2
     d08:	e1a02001 	mov	r2, r1
     d0c:	e1a01000 	mov	r1, r0
     d10:	e3a0001d 	mov	r0, #29
     d14:	ef000000 	svc	0x00000000
     d18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d1c:	e12fff1e 	bx	lr

00000d20 <waitpid>:
     d20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d24:	e1a04003 	mov	r4, r3
     d28:	e1a03002 	mov	r3, r2
     d2c:	e1a02001 	mov	r2, r1
     d30:	e1a01000 	mov	r1, r0
     d34:	e3a0001e 	mov	r0, #30
     d38:	ef000000 	svc	0x00000000
     d3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d40:	e12fff1e 	bx	lr

00000d44 <barrier_init>:
     d44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d48:	e1a04003 	mov	r4, r3
     d4c:	e1a03002 	mov	r3, r2
     d50:	e1a02001 	mov	r2, r1
     d54:	e1a01000 	mov	r1, r0
     d58:	e3a0001f 	mov	r0, #31
     d5c:	ef000000 	svc	0x00000000
     d60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d64:	e12fff1e 	bx	lr

00000d68 <barrier_check>:
     d68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d6c:	e1a04003 	mov	r4, r3
     d70:	e1a03002 	mov	r3, r2
     d74:	e1a02001 	mov	r2, r1
     d78:	e1a01000 	mov	r1, r0
     d7c:	e3a00020 	mov	r0, #32
     d80:	ef000000 	svc	0x00000000
     d84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d88:	e12fff1e 	bx	lr

00000d8c <sleepChan>:
     d8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d90:	e1a04003 	mov	r4, r3
     d94:	e1a03002 	mov	r3, r2
     d98:	e1a02001 	mov	r2, r1
     d9c:	e1a01000 	mov	r1, r0
     da0:	e3a00024 	mov	r0, #36	@ 0x24
     da4:	ef000000 	svc	0x00000000
     da8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dac:	e12fff1e 	bx	lr

00000db0 <getChannel>:
     db0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     db4:	e1a04003 	mov	r4, r3
     db8:	e1a03002 	mov	r3, r2
     dbc:	e1a02001 	mov	r2, r1
     dc0:	e1a01000 	mov	r1, r0
     dc4:	e3a00025 	mov	r0, #37	@ 0x25
     dc8:	ef000000 	svc	0x00000000
     dcc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd0:	e12fff1e 	bx	lr

00000dd4 <sigChan>:
     dd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dd8:	e1a04003 	mov	r4, r3
     ddc:	e1a03002 	mov	r3, r2
     de0:	e1a02001 	mov	r2, r1
     de4:	e1a01000 	mov	r1, r0
     de8:	e3a00026 	mov	r0, #38	@ 0x26
     dec:	ef000000 	svc	0x00000000
     df0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     df4:	e12fff1e 	bx	lr

00000df8 <sigOneChan>:
     df8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dfc:	e1a04003 	mov	r4, r3
     e00:	e1a03002 	mov	r3, r2
     e04:	e1a02001 	mov	r2, r1
     e08:	e1a01000 	mov	r1, r0
     e0c:	e3a00027 	mov	r0, #39	@ 0x27
     e10:	ef000000 	svc	0x00000000
     e14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e18:	e12fff1e 	bx	lr

00000e1c <putc>:
     e1c:	e92d4800 	push	{fp, lr}
     e20:	e28db004 	add	fp, sp, #4
     e24:	e24dd008 	sub	sp, sp, #8
     e28:	e50b0008 	str	r0, [fp, #-8]
     e2c:	e1a03001 	mov	r3, r1
     e30:	e54b3009 	strb	r3, [fp, #-9]
     e34:	e24b3009 	sub	r3, fp, #9
     e38:	e3a02001 	mov	r2, #1
     e3c:	e1a01003 	mov	r1, r3
     e40:	e51b0008 	ldr	r0, [fp, #-8]
     e44:	ebfffedd 	bl	9c0 <write>
     e48:	e1a00000 	nop			@ (mov r0, r0)
     e4c:	e24bd004 	sub	sp, fp, #4
     e50:	e8bd8800 	pop	{fp, pc}

00000e54 <printint>:
     e54:	e92d4800 	push	{fp, lr}
     e58:	e28db004 	add	fp, sp, #4
     e5c:	e24dd030 	sub	sp, sp, #48	@ 0x30
     e60:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     e64:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     e68:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     e6c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     e70:	e3a03000 	mov	r3, #0
     e74:	e50b300c 	str	r3, [fp, #-12]
     e78:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     e7c:	e3530000 	cmp	r3, #0
     e80:	0a000008 	beq	ea8 <printint+0x54>
     e84:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e88:	e3530000 	cmp	r3, #0
     e8c:	aa000005 	bge	ea8 <printint+0x54>
     e90:	e3a03001 	mov	r3, #1
     e94:	e50b300c 	str	r3, [fp, #-12]
     e98:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e9c:	e2633000 	rsb	r3, r3, #0
     ea0:	e50b3010 	str	r3, [fp, #-16]
     ea4:	ea000001 	b	eb0 <printint+0x5c>
     ea8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     eac:	e50b3010 	str	r3, [fp, #-16]
     eb0:	e3a03000 	mov	r3, #0
     eb4:	e50b3008 	str	r3, [fp, #-8]
     eb8:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     ebc:	e51b3010 	ldr	r3, [fp, #-16]
     ec0:	e1a01002 	mov	r1, r2
     ec4:	e1a00003 	mov	r0, r3
     ec8:	eb0001d5 	bl	1624 <__aeabi_uidivmod>
     ecc:	e1a03001 	mov	r3, r1
     ed0:	e1a01003 	mov	r1, r3
     ed4:	e51b3008 	ldr	r3, [fp, #-8]
     ed8:	e2832001 	add	r2, r3, #1
     edc:	e50b2008 	str	r2, [fp, #-8]
     ee0:	e59f20a0 	ldr	r2, [pc, #160]	@ f88 <printint+0x134>
     ee4:	e7d22001 	ldrb	r2, [r2, r1]
     ee8:	e2433004 	sub	r3, r3, #4
     eec:	e083300b 	add	r3, r3, fp
     ef0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ef4:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     ef8:	e1a01003 	mov	r1, r3
     efc:	e51b0010 	ldr	r0, [fp, #-16]
     f00:	eb00018a 	bl	1530 <__udivsi3>
     f04:	e1a03000 	mov	r3, r0
     f08:	e50b3010 	str	r3, [fp, #-16]
     f0c:	e51b3010 	ldr	r3, [fp, #-16]
     f10:	e3530000 	cmp	r3, #0
     f14:	1affffe7 	bne	eb8 <printint+0x64>
     f18:	e51b300c 	ldr	r3, [fp, #-12]
     f1c:	e3530000 	cmp	r3, #0
     f20:	0a00000e 	beq	f60 <printint+0x10c>
     f24:	e51b3008 	ldr	r3, [fp, #-8]
     f28:	e2832001 	add	r2, r3, #1
     f2c:	e50b2008 	str	r2, [fp, #-8]
     f30:	e2433004 	sub	r3, r3, #4
     f34:	e083300b 	add	r3, r3, fp
     f38:	e3a0202d 	mov	r2, #45	@ 0x2d
     f3c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f40:	ea000006 	b	f60 <printint+0x10c>
     f44:	e24b2020 	sub	r2, fp, #32
     f48:	e51b3008 	ldr	r3, [fp, #-8]
     f4c:	e0823003 	add	r3, r2, r3
     f50:	e5d33000 	ldrb	r3, [r3]
     f54:	e1a01003 	mov	r1, r3
     f58:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     f5c:	ebffffae 	bl	e1c <putc>
     f60:	e51b3008 	ldr	r3, [fp, #-8]
     f64:	e2433001 	sub	r3, r3, #1
     f68:	e50b3008 	str	r3, [fp, #-8]
     f6c:	e51b3008 	ldr	r3, [fp, #-8]
     f70:	e3530000 	cmp	r3, #0
     f74:	aafffff2 	bge	f44 <printint+0xf0>
     f78:	e1a00000 	nop			@ (mov r0, r0)
     f7c:	e1a00000 	nop			@ (mov r0, r0)
     f80:	e24bd004 	sub	sp, fp, #4
     f84:	e8bd8800 	pop	{fp, pc}
     f88:	000016c4 	.word	0x000016c4

00000f8c <printf>:
     f8c:	e92d000e 	push	{r1, r2, r3}
     f90:	e92d4800 	push	{fp, lr}
     f94:	e28db004 	add	fp, sp, #4
     f98:	e24dd024 	sub	sp, sp, #36	@ 0x24
     f9c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     fa0:	e3a03000 	mov	r3, #0
     fa4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     fa8:	e28b3008 	add	r3, fp, #8
     fac:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fb0:	e3a03000 	mov	r3, #0
     fb4:	e50b3010 	str	r3, [fp, #-16]
     fb8:	ea000074 	b	1190 <printf+0x204>
     fbc:	e59b2004 	ldr	r2, [fp, #4]
     fc0:	e51b3010 	ldr	r3, [fp, #-16]
     fc4:	e0823003 	add	r3, r2, r3
     fc8:	e5d33000 	ldrb	r3, [r3]
     fcc:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     fd0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     fd4:	e3530000 	cmp	r3, #0
     fd8:	1a00000b 	bne	100c <printf+0x80>
     fdc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fe0:	e3530025 	cmp	r3, #37	@ 0x25
     fe4:	1a000002 	bne	ff4 <printf+0x68>
     fe8:	e3a03025 	mov	r3, #37	@ 0x25
     fec:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ff0:	ea000063 	b	1184 <printf+0x1f8>
     ff4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ff8:	e6ef3073 	uxtb	r3, r3
     ffc:	e1a01003 	mov	r1, r3
    1000:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1004:	ebffff84 	bl	e1c <putc>
    1008:	ea00005d 	b	1184 <printf+0x1f8>
    100c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1010:	e3530025 	cmp	r3, #37	@ 0x25
    1014:	1a00005a 	bne	1184 <printf+0x1f8>
    1018:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    101c:	e3530064 	cmp	r3, #100	@ 0x64
    1020:	1a00000a 	bne	1050 <printf+0xc4>
    1024:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1028:	e5933000 	ldr	r3, [r3]
    102c:	e1a01003 	mov	r1, r3
    1030:	e3a03001 	mov	r3, #1
    1034:	e3a0200a 	mov	r2, #10
    1038:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    103c:	ebffff84 	bl	e54 <printint>
    1040:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1044:	e2833004 	add	r3, r3, #4
    1048:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    104c:	ea00004a 	b	117c <printf+0x1f0>
    1050:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1054:	e3530078 	cmp	r3, #120	@ 0x78
    1058:	0a000002 	beq	1068 <printf+0xdc>
    105c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1060:	e3530070 	cmp	r3, #112	@ 0x70
    1064:	1a00000a 	bne	1094 <printf+0x108>
    1068:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    106c:	e5933000 	ldr	r3, [r3]
    1070:	e1a01003 	mov	r1, r3
    1074:	e3a03000 	mov	r3, #0
    1078:	e3a02010 	mov	r2, #16
    107c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1080:	ebffff73 	bl	e54 <printint>
    1084:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1088:	e2833004 	add	r3, r3, #4
    108c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1090:	ea000039 	b	117c <printf+0x1f0>
    1094:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1098:	e3530073 	cmp	r3, #115	@ 0x73
    109c:	1a000018 	bne	1104 <printf+0x178>
    10a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10a4:	e5933000 	ldr	r3, [r3]
    10a8:	e50b300c 	str	r3, [fp, #-12]
    10ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10b0:	e2833004 	add	r3, r3, #4
    10b4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10b8:	e51b300c 	ldr	r3, [fp, #-12]
    10bc:	e3530000 	cmp	r3, #0
    10c0:	1a00000a 	bne	10f0 <printf+0x164>
    10c4:	e59f30f4 	ldr	r3, [pc, #244]	@ 11c0 <printf+0x234>
    10c8:	e50b300c 	str	r3, [fp, #-12]
    10cc:	ea000007 	b	10f0 <printf+0x164>
    10d0:	e51b300c 	ldr	r3, [fp, #-12]
    10d4:	e5d33000 	ldrb	r3, [r3]
    10d8:	e1a01003 	mov	r1, r3
    10dc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10e0:	ebffff4d 	bl	e1c <putc>
    10e4:	e51b300c 	ldr	r3, [fp, #-12]
    10e8:	e2833001 	add	r3, r3, #1
    10ec:	e50b300c 	str	r3, [fp, #-12]
    10f0:	e51b300c 	ldr	r3, [fp, #-12]
    10f4:	e5d33000 	ldrb	r3, [r3]
    10f8:	e3530000 	cmp	r3, #0
    10fc:	1afffff3 	bne	10d0 <printf+0x144>
    1100:	ea00001d 	b	117c <printf+0x1f0>
    1104:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1108:	e3530063 	cmp	r3, #99	@ 0x63
    110c:	1a000009 	bne	1138 <printf+0x1ac>
    1110:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1114:	e5933000 	ldr	r3, [r3]
    1118:	e6ef3073 	uxtb	r3, r3
    111c:	e1a01003 	mov	r1, r3
    1120:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1124:	ebffff3c 	bl	e1c <putc>
    1128:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    112c:	e2833004 	add	r3, r3, #4
    1130:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1134:	ea000010 	b	117c <printf+0x1f0>
    1138:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    113c:	e3530025 	cmp	r3, #37	@ 0x25
    1140:	1a000005 	bne	115c <printf+0x1d0>
    1144:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1148:	e6ef3073 	uxtb	r3, r3
    114c:	e1a01003 	mov	r1, r3
    1150:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1154:	ebffff30 	bl	e1c <putc>
    1158:	ea000007 	b	117c <printf+0x1f0>
    115c:	e3a01025 	mov	r1, #37	@ 0x25
    1160:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1164:	ebffff2c 	bl	e1c <putc>
    1168:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    116c:	e6ef3073 	uxtb	r3, r3
    1170:	e1a01003 	mov	r1, r3
    1174:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1178:	ebffff27 	bl	e1c <putc>
    117c:	e3a03000 	mov	r3, #0
    1180:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1184:	e51b3010 	ldr	r3, [fp, #-16]
    1188:	e2833001 	add	r3, r3, #1
    118c:	e50b3010 	str	r3, [fp, #-16]
    1190:	e59b2004 	ldr	r2, [fp, #4]
    1194:	e51b3010 	ldr	r3, [fp, #-16]
    1198:	e0823003 	add	r3, r2, r3
    119c:	e5d33000 	ldrb	r3, [r3]
    11a0:	e3530000 	cmp	r3, #0
    11a4:	1affff84 	bne	fbc <printf+0x30>
    11a8:	e1a00000 	nop			@ (mov r0, r0)
    11ac:	e1a00000 	nop			@ (mov r0, r0)
    11b0:	e24bd004 	sub	sp, fp, #4
    11b4:	e8bd4800 	pop	{fp, lr}
    11b8:	e28dd00c 	add	sp, sp, #12
    11bc:	e12fff1e 	bx	lr
    11c0:	000016bc 	.word	0x000016bc

000011c4 <free>:
    11c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    11c8:	e28db000 	add	fp, sp, #0
    11cc:	e24dd014 	sub	sp, sp, #20
    11d0:	e50b0010 	str	r0, [fp, #-16]
    11d4:	e51b3010 	ldr	r3, [fp, #-16]
    11d8:	e2433008 	sub	r3, r3, #8
    11dc:	e50b300c 	str	r3, [fp, #-12]
    11e0:	e59f3154 	ldr	r3, [pc, #340]	@ 133c <free+0x178>
    11e4:	e5933000 	ldr	r3, [r3]
    11e8:	e50b3008 	str	r3, [fp, #-8]
    11ec:	ea000010 	b	1234 <free+0x70>
    11f0:	e51b3008 	ldr	r3, [fp, #-8]
    11f4:	e5933000 	ldr	r3, [r3]
    11f8:	e51b2008 	ldr	r2, [fp, #-8]
    11fc:	e1520003 	cmp	r2, r3
    1200:	3a000008 	bcc	1228 <free+0x64>
    1204:	e51b200c 	ldr	r2, [fp, #-12]
    1208:	e51b3008 	ldr	r3, [fp, #-8]
    120c:	e1520003 	cmp	r2, r3
    1210:	8a000010 	bhi	1258 <free+0x94>
    1214:	e51b3008 	ldr	r3, [fp, #-8]
    1218:	e5933000 	ldr	r3, [r3]
    121c:	e51b200c 	ldr	r2, [fp, #-12]
    1220:	e1520003 	cmp	r2, r3
    1224:	3a00000b 	bcc	1258 <free+0x94>
    1228:	e51b3008 	ldr	r3, [fp, #-8]
    122c:	e5933000 	ldr	r3, [r3]
    1230:	e50b3008 	str	r3, [fp, #-8]
    1234:	e51b200c 	ldr	r2, [fp, #-12]
    1238:	e51b3008 	ldr	r3, [fp, #-8]
    123c:	e1520003 	cmp	r2, r3
    1240:	9affffea 	bls	11f0 <free+0x2c>
    1244:	e51b3008 	ldr	r3, [fp, #-8]
    1248:	e5933000 	ldr	r3, [r3]
    124c:	e51b200c 	ldr	r2, [fp, #-12]
    1250:	e1520003 	cmp	r2, r3
    1254:	2affffe5 	bcs	11f0 <free+0x2c>
    1258:	e51b300c 	ldr	r3, [fp, #-12]
    125c:	e5933004 	ldr	r3, [r3, #4]
    1260:	e1a03183 	lsl	r3, r3, #3
    1264:	e51b200c 	ldr	r2, [fp, #-12]
    1268:	e0822003 	add	r2, r2, r3
    126c:	e51b3008 	ldr	r3, [fp, #-8]
    1270:	e5933000 	ldr	r3, [r3]
    1274:	e1520003 	cmp	r2, r3
    1278:	1a00000d 	bne	12b4 <free+0xf0>
    127c:	e51b300c 	ldr	r3, [fp, #-12]
    1280:	e5932004 	ldr	r2, [r3, #4]
    1284:	e51b3008 	ldr	r3, [fp, #-8]
    1288:	e5933000 	ldr	r3, [r3]
    128c:	e5933004 	ldr	r3, [r3, #4]
    1290:	e0822003 	add	r2, r2, r3
    1294:	e51b300c 	ldr	r3, [fp, #-12]
    1298:	e5832004 	str	r2, [r3, #4]
    129c:	e51b3008 	ldr	r3, [fp, #-8]
    12a0:	e5933000 	ldr	r3, [r3]
    12a4:	e5932000 	ldr	r2, [r3]
    12a8:	e51b300c 	ldr	r3, [fp, #-12]
    12ac:	e5832000 	str	r2, [r3]
    12b0:	ea000003 	b	12c4 <free+0x100>
    12b4:	e51b3008 	ldr	r3, [fp, #-8]
    12b8:	e5932000 	ldr	r2, [r3]
    12bc:	e51b300c 	ldr	r3, [fp, #-12]
    12c0:	e5832000 	str	r2, [r3]
    12c4:	e51b3008 	ldr	r3, [fp, #-8]
    12c8:	e5933004 	ldr	r3, [r3, #4]
    12cc:	e1a03183 	lsl	r3, r3, #3
    12d0:	e51b2008 	ldr	r2, [fp, #-8]
    12d4:	e0823003 	add	r3, r2, r3
    12d8:	e51b200c 	ldr	r2, [fp, #-12]
    12dc:	e1520003 	cmp	r2, r3
    12e0:	1a00000b 	bne	1314 <free+0x150>
    12e4:	e51b3008 	ldr	r3, [fp, #-8]
    12e8:	e5932004 	ldr	r2, [r3, #4]
    12ec:	e51b300c 	ldr	r3, [fp, #-12]
    12f0:	e5933004 	ldr	r3, [r3, #4]
    12f4:	e0822003 	add	r2, r2, r3
    12f8:	e51b3008 	ldr	r3, [fp, #-8]
    12fc:	e5832004 	str	r2, [r3, #4]
    1300:	e51b300c 	ldr	r3, [fp, #-12]
    1304:	e5932000 	ldr	r2, [r3]
    1308:	e51b3008 	ldr	r3, [fp, #-8]
    130c:	e5832000 	str	r2, [r3]
    1310:	ea000002 	b	1320 <free+0x15c>
    1314:	e51b3008 	ldr	r3, [fp, #-8]
    1318:	e51b200c 	ldr	r2, [fp, #-12]
    131c:	e5832000 	str	r2, [r3]
    1320:	e59f2014 	ldr	r2, [pc, #20]	@ 133c <free+0x178>
    1324:	e51b3008 	ldr	r3, [fp, #-8]
    1328:	e5823000 	str	r3, [r2]
    132c:	e1a00000 	nop			@ (mov r0, r0)
    1330:	e28bd000 	add	sp, fp, #0
    1334:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1338:	e12fff1e 	bx	lr
    133c:	000016e0 	.word	0x000016e0

00001340 <morecore>:
    1340:	e92d4800 	push	{fp, lr}
    1344:	e28db004 	add	fp, sp, #4
    1348:	e24dd010 	sub	sp, sp, #16
    134c:	e50b0010 	str	r0, [fp, #-16]
    1350:	e51b3010 	ldr	r3, [fp, #-16]
    1354:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1358:	2a000001 	bcs	1364 <morecore+0x24>
    135c:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1360:	e50b3010 	str	r3, [fp, #-16]
    1364:	e51b3010 	ldr	r3, [fp, #-16]
    1368:	e1a03183 	lsl	r3, r3, #3
    136c:	e1a00003 	mov	r0, r3
    1370:	ebfffe07 	bl	b94 <sbrk>
    1374:	e50b0008 	str	r0, [fp, #-8]
    1378:	e51b3008 	ldr	r3, [fp, #-8]
    137c:	e3730001 	cmn	r3, #1
    1380:	1a000001 	bne	138c <morecore+0x4c>
    1384:	e3a03000 	mov	r3, #0
    1388:	ea00000a 	b	13b8 <morecore+0x78>
    138c:	e51b3008 	ldr	r3, [fp, #-8]
    1390:	e50b300c 	str	r3, [fp, #-12]
    1394:	e51b300c 	ldr	r3, [fp, #-12]
    1398:	e51b2010 	ldr	r2, [fp, #-16]
    139c:	e5832004 	str	r2, [r3, #4]
    13a0:	e51b300c 	ldr	r3, [fp, #-12]
    13a4:	e2833008 	add	r3, r3, #8
    13a8:	e1a00003 	mov	r0, r3
    13ac:	ebffff84 	bl	11c4 <free>
    13b0:	e59f300c 	ldr	r3, [pc, #12]	@ 13c4 <morecore+0x84>
    13b4:	e5933000 	ldr	r3, [r3]
    13b8:	e1a00003 	mov	r0, r3
    13bc:	e24bd004 	sub	sp, fp, #4
    13c0:	e8bd8800 	pop	{fp, pc}
    13c4:	000016e0 	.word	0x000016e0

000013c8 <malloc>:
    13c8:	e92d4800 	push	{fp, lr}
    13cc:	e28db004 	add	fp, sp, #4
    13d0:	e24dd018 	sub	sp, sp, #24
    13d4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    13d8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13dc:	e2833007 	add	r3, r3, #7
    13e0:	e1a031a3 	lsr	r3, r3, #3
    13e4:	e2833001 	add	r3, r3, #1
    13e8:	e50b3010 	str	r3, [fp, #-16]
    13ec:	e59f3134 	ldr	r3, [pc, #308]	@ 1528 <malloc+0x160>
    13f0:	e5933000 	ldr	r3, [r3]
    13f4:	e50b300c 	str	r3, [fp, #-12]
    13f8:	e51b300c 	ldr	r3, [fp, #-12]
    13fc:	e3530000 	cmp	r3, #0
    1400:	1a00000b 	bne	1434 <malloc+0x6c>
    1404:	e59f3120 	ldr	r3, [pc, #288]	@ 152c <malloc+0x164>
    1408:	e50b300c 	str	r3, [fp, #-12]
    140c:	e59f2114 	ldr	r2, [pc, #276]	@ 1528 <malloc+0x160>
    1410:	e51b300c 	ldr	r3, [fp, #-12]
    1414:	e5823000 	str	r3, [r2]
    1418:	e59f3108 	ldr	r3, [pc, #264]	@ 1528 <malloc+0x160>
    141c:	e5933000 	ldr	r3, [r3]
    1420:	e59f2104 	ldr	r2, [pc, #260]	@ 152c <malloc+0x164>
    1424:	e5823000 	str	r3, [r2]
    1428:	e59f30fc 	ldr	r3, [pc, #252]	@ 152c <malloc+0x164>
    142c:	e3a02000 	mov	r2, #0
    1430:	e5832004 	str	r2, [r3, #4]
    1434:	e51b300c 	ldr	r3, [fp, #-12]
    1438:	e5933000 	ldr	r3, [r3]
    143c:	e50b3008 	str	r3, [fp, #-8]
    1440:	e51b3008 	ldr	r3, [fp, #-8]
    1444:	e5933004 	ldr	r3, [r3, #4]
    1448:	e51b2010 	ldr	r2, [fp, #-16]
    144c:	e1520003 	cmp	r2, r3
    1450:	8a00001e 	bhi	14d0 <malloc+0x108>
    1454:	e51b3008 	ldr	r3, [fp, #-8]
    1458:	e5933004 	ldr	r3, [r3, #4]
    145c:	e51b2010 	ldr	r2, [fp, #-16]
    1460:	e1520003 	cmp	r2, r3
    1464:	1a000004 	bne	147c <malloc+0xb4>
    1468:	e51b3008 	ldr	r3, [fp, #-8]
    146c:	e5932000 	ldr	r2, [r3]
    1470:	e51b300c 	ldr	r3, [fp, #-12]
    1474:	e5832000 	str	r2, [r3]
    1478:	ea00000e 	b	14b8 <malloc+0xf0>
    147c:	e51b3008 	ldr	r3, [fp, #-8]
    1480:	e5932004 	ldr	r2, [r3, #4]
    1484:	e51b3010 	ldr	r3, [fp, #-16]
    1488:	e0422003 	sub	r2, r2, r3
    148c:	e51b3008 	ldr	r3, [fp, #-8]
    1490:	e5832004 	str	r2, [r3, #4]
    1494:	e51b3008 	ldr	r3, [fp, #-8]
    1498:	e5933004 	ldr	r3, [r3, #4]
    149c:	e1a03183 	lsl	r3, r3, #3
    14a0:	e51b2008 	ldr	r2, [fp, #-8]
    14a4:	e0823003 	add	r3, r2, r3
    14a8:	e50b3008 	str	r3, [fp, #-8]
    14ac:	e51b3008 	ldr	r3, [fp, #-8]
    14b0:	e51b2010 	ldr	r2, [fp, #-16]
    14b4:	e5832004 	str	r2, [r3, #4]
    14b8:	e59f2068 	ldr	r2, [pc, #104]	@ 1528 <malloc+0x160>
    14bc:	e51b300c 	ldr	r3, [fp, #-12]
    14c0:	e5823000 	str	r3, [r2]
    14c4:	e51b3008 	ldr	r3, [fp, #-8]
    14c8:	e2833008 	add	r3, r3, #8
    14cc:	ea000012 	b	151c <malloc+0x154>
    14d0:	e59f3050 	ldr	r3, [pc, #80]	@ 1528 <malloc+0x160>
    14d4:	e5933000 	ldr	r3, [r3]
    14d8:	e51b2008 	ldr	r2, [fp, #-8]
    14dc:	e1520003 	cmp	r2, r3
    14e0:	1a000007 	bne	1504 <malloc+0x13c>
    14e4:	e51b0010 	ldr	r0, [fp, #-16]
    14e8:	ebffff94 	bl	1340 <morecore>
    14ec:	e50b0008 	str	r0, [fp, #-8]
    14f0:	e51b3008 	ldr	r3, [fp, #-8]
    14f4:	e3530000 	cmp	r3, #0
    14f8:	1a000001 	bne	1504 <malloc+0x13c>
    14fc:	e3a03000 	mov	r3, #0
    1500:	ea000005 	b	151c <malloc+0x154>
    1504:	e51b3008 	ldr	r3, [fp, #-8]
    1508:	e50b300c 	str	r3, [fp, #-12]
    150c:	e51b3008 	ldr	r3, [fp, #-8]
    1510:	e5933000 	ldr	r3, [r3]
    1514:	e50b3008 	str	r3, [fp, #-8]
    1518:	eaffffc8 	b	1440 <malloc+0x78>
    151c:	e1a00003 	mov	r0, r3
    1520:	e24bd004 	sub	sp, fp, #4
    1524:	e8bd8800 	pop	{fp, pc}
    1528:	000016e0 	.word	0x000016e0
    152c:	000016d8 	.word	0x000016d8

00001530 <__udivsi3>:
    1530:	e2512001 	subs	r2, r1, #1
    1534:	012fff1e 	bxeq	lr
    1538:	3a000036 	bcc	1618 <__udivsi3+0xe8>
    153c:	e1500001 	cmp	r0, r1
    1540:	9a000022 	bls	15d0 <__udivsi3+0xa0>
    1544:	e1110002 	tst	r1, r2
    1548:	0a000023 	beq	15dc <__udivsi3+0xac>
    154c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1550:	01a01181 	lsleq	r1, r1, #3
    1554:	03a03008 	moveq	r3, #8
    1558:	13a03001 	movne	r3, #1
    155c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1560:	31510000 	cmpcc	r1, r0
    1564:	31a01201 	lslcc	r1, r1, #4
    1568:	31a03203 	lslcc	r3, r3, #4
    156c:	3afffffa 	bcc	155c <__udivsi3+0x2c>
    1570:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1574:	31510000 	cmpcc	r1, r0
    1578:	31a01081 	lslcc	r1, r1, #1
    157c:	31a03083 	lslcc	r3, r3, #1
    1580:	3afffffa 	bcc	1570 <__udivsi3+0x40>
    1584:	e3a02000 	mov	r2, #0
    1588:	e1500001 	cmp	r0, r1
    158c:	20400001 	subcs	r0, r0, r1
    1590:	21822003 	orrcs	r2, r2, r3
    1594:	e15000a1 	cmp	r0, r1, lsr #1
    1598:	204000a1 	subcs	r0, r0, r1, lsr #1
    159c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    15a0:	e1500121 	cmp	r0, r1, lsr #2
    15a4:	20400121 	subcs	r0, r0, r1, lsr #2
    15a8:	21822123 	orrcs	r2, r2, r3, lsr #2
    15ac:	e15001a1 	cmp	r0, r1, lsr #3
    15b0:	204001a1 	subcs	r0, r0, r1, lsr #3
    15b4:	218221a3 	orrcs	r2, r2, r3, lsr #3
    15b8:	e3500000 	cmp	r0, #0
    15bc:	11b03223 	lsrsne	r3, r3, #4
    15c0:	11a01221 	lsrne	r1, r1, #4
    15c4:	1affffef 	bne	1588 <__udivsi3+0x58>
    15c8:	e1a00002 	mov	r0, r2
    15cc:	e12fff1e 	bx	lr
    15d0:	03a00001 	moveq	r0, #1
    15d4:	13a00000 	movne	r0, #0
    15d8:	e12fff1e 	bx	lr
    15dc:	e3510801 	cmp	r1, #65536	@ 0x10000
    15e0:	21a01821 	lsrcs	r1, r1, #16
    15e4:	23a02010 	movcs	r2, #16
    15e8:	33a02000 	movcc	r2, #0
    15ec:	e3510c01 	cmp	r1, #256	@ 0x100
    15f0:	21a01421 	lsrcs	r1, r1, #8
    15f4:	22822008 	addcs	r2, r2, #8
    15f8:	e3510010 	cmp	r1, #16
    15fc:	21a01221 	lsrcs	r1, r1, #4
    1600:	22822004 	addcs	r2, r2, #4
    1604:	e3510004 	cmp	r1, #4
    1608:	82822003 	addhi	r2, r2, #3
    160c:	908220a1 	addls	r2, r2, r1, lsr #1
    1610:	e1a00230 	lsr	r0, r0, r2
    1614:	e12fff1e 	bx	lr
    1618:	e3500000 	cmp	r0, #0
    161c:	13e00000 	mvnne	r0, #0
    1620:	ea000007 	b	1644 <__aeabi_idiv0>

00001624 <__aeabi_uidivmod>:
    1624:	e3510000 	cmp	r1, #0
    1628:	0afffffa 	beq	1618 <__udivsi3+0xe8>
    162c:	e92d4003 	push	{r0, r1, lr}
    1630:	ebffffbe 	bl	1530 <__udivsi3>
    1634:	e8bd4006 	pop	{r1, r2, lr}
    1638:	e0030092 	mul	r3, r2, r0
    163c:	e0411003 	sub	r1, r1, r3
    1640:	e12fff1e 	bx	lr

00001644 <__aeabi_idiv0>:
    1644:	e12fff1e 	bx	lr
