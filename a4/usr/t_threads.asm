
_t_threads:     file format elf32-littlearm


Disassembly of section .text:

00000000 <thread1>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e51b3010 	ldr	r3, [fp, #-16]
      14:	e5933000 	ldr	r3, [r3]
      18:	e1a02003 	mov	r2, r3
      1c:	e59f1024 	ldr	r1, [pc, #36]	@ 48 <thread1+0x48>
      20:	e3a00001 	mov	r0, #1
      24:	eb0003f4 	bl	ffc <printf>
      28:	e51b3010 	ldr	r3, [fp, #-16]
      2c:	e50b3008 	str	r3, [fp, #-8]
      30:	e51b3008 	ldr	r3, [fp, #-8]
      34:	e5933000 	ldr	r3, [r3]
      38:	e2832001 	add	r2, r3, #1
      3c:	e51b3008 	ldr	r3, [fp, #-8]
      40:	e5832000 	str	r2, [r3]
      44:	eb000255 	bl	9a0 <exit>
      48:	000016b8 	.word	0x000016b8

0000004c <thread2>:
      4c:	e92d4800 	push	{fp, lr}
      50:	e28db004 	add	fp, sp, #4
      54:	e24dd008 	sub	sp, sp, #8
      58:	e50b0008 	str	r0, [fp, #-8]
      5c:	e51b3008 	ldr	r3, [fp, #-8]
      60:	e5933000 	ldr	r3, [r3]
      64:	e1a02003 	mov	r2, r3
      68:	e59f1018 	ldr	r1, [pc, #24]	@ 88 <thread2+0x3c>
      6c:	e3a00001 	mov	r0, #1
      70:	eb0003e1 	bl	ffc <printf>
      74:	eb000333 	bl	d48 <thread_exit>
      78:	e3a03000 	mov	r3, #0
      7c:	e1a00003 	mov	r0, r3
      80:	e24bd004 	sub	sp, fp, #4
      84:	e8bd8800 	pop	{fp, pc}
      88:	000016d0 	.word	0x000016d0

0000008c <main>:
      8c:	e92d4800 	push	{fp, lr}
      90:	e28db004 	add	fp, sp, #4
      94:	e24dd010 	sub	sp, sp, #16
      98:	e59f1064 	ldr	r1, [pc, #100]	@ 104 <main+0x78>
      9c:	e3a00001 	mov	r0, #1
      a0:	eb0003d5 	bl	ffc <printf>
      a4:	e3a0300a 	mov	r3, #10
      a8:	e50b3008 	str	r3, [fp, #-8]
      ac:	e24b2008 	sub	r2, fp, #8
      b0:	e24b300c 	sub	r3, fp, #12
      b4:	e59f104c 	ldr	r1, [pc, #76]	@ 108 <main+0x7c>
      b8:	e1a00003 	mov	r0, r3
      bc:	eb000318 	bl	d24 <thread_create>
      c0:	e24b2008 	sub	r2, fp, #8
      c4:	e24b3010 	sub	r3, fp, #16
      c8:	e59f103c 	ldr	r1, [pc, #60]	@ 10c <main+0x80>
      cc:	e1a00003 	mov	r0, r3
      d0:	eb000313 	bl	d24 <thread_create>
      d4:	e51b3010 	ldr	r3, [fp, #-16]
      d8:	e1a00003 	mov	r0, r3
      dc:	eb000322 	bl	d6c <thread_join>
      e0:	e51b300c 	ldr	r3, [fp, #-12]
      e4:	e1a00003 	mov	r0, r3
      e8:	eb00031f 	bl	d6c <thread_join>
      ec:	e51b3008 	ldr	r3, [fp, #-8]
      f0:	e1a02003 	mov	r2, r3
      f4:	e59f1014 	ldr	r1, [pc, #20]	@ 110 <main+0x84>
      f8:	e3a00001 	mov	r0, #1
      fc:	eb0003be 	bl	ffc <printf>
     100:	eb000226 	bl	9a0 <exit>
     104:	000016e8 	.word	0x000016e8
     108:	00000000 	.word	0x00000000
     10c:	0000004c 	.word	0x0000004c
     110:	000016f8 	.word	0x000016f8

00000114 <strcpy>:
     114:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     118:	e28db000 	add	fp, sp, #0
     11c:	e24dd014 	sub	sp, sp, #20
     120:	e50b0010 	str	r0, [fp, #-16]
     124:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     128:	e51b3010 	ldr	r3, [fp, #-16]
     12c:	e50b3008 	str	r3, [fp, #-8]
     130:	e1a00000 	nop			@ (mov r0, r0)
     134:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     138:	e2823001 	add	r3, r2, #1
     13c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     140:	e51b3010 	ldr	r3, [fp, #-16]
     144:	e2831001 	add	r1, r3, #1
     148:	e50b1010 	str	r1, [fp, #-16]
     14c:	e5d22000 	ldrb	r2, [r2]
     150:	e5c32000 	strb	r2, [r3]
     154:	e5d33000 	ldrb	r3, [r3]
     158:	e3530000 	cmp	r3, #0
     15c:	1afffff4 	bne	134 <strcpy+0x20>
     160:	e51b3008 	ldr	r3, [fp, #-8]
     164:	e1a00003 	mov	r0, r3
     168:	e28bd000 	add	sp, fp, #0
     16c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     170:	e12fff1e 	bx	lr

00000174 <strcmp>:
     174:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     178:	e28db000 	add	fp, sp, #0
     17c:	e24dd00c 	sub	sp, sp, #12
     180:	e50b0008 	str	r0, [fp, #-8]
     184:	e50b100c 	str	r1, [fp, #-12]
     188:	ea000005 	b	1a4 <strcmp+0x30>
     18c:	e51b3008 	ldr	r3, [fp, #-8]
     190:	e2833001 	add	r3, r3, #1
     194:	e50b3008 	str	r3, [fp, #-8]
     198:	e51b300c 	ldr	r3, [fp, #-12]
     19c:	e2833001 	add	r3, r3, #1
     1a0:	e50b300c 	str	r3, [fp, #-12]
     1a4:	e51b3008 	ldr	r3, [fp, #-8]
     1a8:	e5d33000 	ldrb	r3, [r3]
     1ac:	e3530000 	cmp	r3, #0
     1b0:	0a000005 	beq	1cc <strcmp+0x58>
     1b4:	e51b3008 	ldr	r3, [fp, #-8]
     1b8:	e5d32000 	ldrb	r2, [r3]
     1bc:	e51b300c 	ldr	r3, [fp, #-12]
     1c0:	e5d33000 	ldrb	r3, [r3]
     1c4:	e1520003 	cmp	r2, r3
     1c8:	0affffef 	beq	18c <strcmp+0x18>
     1cc:	e51b3008 	ldr	r3, [fp, #-8]
     1d0:	e5d33000 	ldrb	r3, [r3]
     1d4:	e1a02003 	mov	r2, r3
     1d8:	e51b300c 	ldr	r3, [fp, #-12]
     1dc:	e5d33000 	ldrb	r3, [r3]
     1e0:	e0423003 	sub	r3, r2, r3
     1e4:	e1a00003 	mov	r0, r3
     1e8:	e28bd000 	add	sp, fp, #0
     1ec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1f0:	e12fff1e 	bx	lr

000001f4 <strlen>:
     1f4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1f8:	e28db000 	add	fp, sp, #0
     1fc:	e24dd014 	sub	sp, sp, #20
     200:	e50b0010 	str	r0, [fp, #-16]
     204:	e3a03000 	mov	r3, #0
     208:	e50b3008 	str	r3, [fp, #-8]
     20c:	ea000002 	b	21c <strlen+0x28>
     210:	e51b3008 	ldr	r3, [fp, #-8]
     214:	e2833001 	add	r3, r3, #1
     218:	e50b3008 	str	r3, [fp, #-8]
     21c:	e51b3008 	ldr	r3, [fp, #-8]
     220:	e51b2010 	ldr	r2, [fp, #-16]
     224:	e0823003 	add	r3, r2, r3
     228:	e5d33000 	ldrb	r3, [r3]
     22c:	e3530000 	cmp	r3, #0
     230:	1afffff6 	bne	210 <strlen+0x1c>
     234:	e51b3008 	ldr	r3, [fp, #-8]
     238:	e1a00003 	mov	r0, r3
     23c:	e28bd000 	add	sp, fp, #0
     240:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     244:	e12fff1e 	bx	lr

00000248 <memset>:
     248:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     24c:	e28db000 	add	fp, sp, #0
     250:	e24dd024 	sub	sp, sp, #36	@ 0x24
     254:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     258:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     25c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     260:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     264:	e50b3008 	str	r3, [fp, #-8]
     268:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     26c:	e54b300d 	strb	r3, [fp, #-13]
     270:	e55b200d 	ldrb	r2, [fp, #-13]
     274:	e1a03002 	mov	r3, r2
     278:	e1a03403 	lsl	r3, r3, #8
     27c:	e0833002 	add	r3, r3, r2
     280:	e1a03803 	lsl	r3, r3, #16
     284:	e1a02003 	mov	r2, r3
     288:	e55b300d 	ldrb	r3, [fp, #-13]
     28c:	e1a03403 	lsl	r3, r3, #8
     290:	e1822003 	orr	r2, r2, r3
     294:	e55b300d 	ldrb	r3, [fp, #-13]
     298:	e1823003 	orr	r3, r2, r3
     29c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     2a0:	ea000008 	b	2c8 <memset+0x80>
     2a4:	e51b3008 	ldr	r3, [fp, #-8]
     2a8:	e55b200d 	ldrb	r2, [fp, #-13]
     2ac:	e5c32000 	strb	r2, [r3]
     2b0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2b4:	e2433001 	sub	r3, r3, #1
     2b8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2bc:	e51b3008 	ldr	r3, [fp, #-8]
     2c0:	e2833001 	add	r3, r3, #1
     2c4:	e50b3008 	str	r3, [fp, #-8]
     2c8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2cc:	e3530000 	cmp	r3, #0
     2d0:	0a000003 	beq	2e4 <memset+0x9c>
     2d4:	e51b3008 	ldr	r3, [fp, #-8]
     2d8:	e2033003 	and	r3, r3, #3
     2dc:	e3530000 	cmp	r3, #0
     2e0:	1affffef 	bne	2a4 <memset+0x5c>
     2e4:	e51b3008 	ldr	r3, [fp, #-8]
     2e8:	e50b300c 	str	r3, [fp, #-12]
     2ec:	ea000008 	b	314 <memset+0xcc>
     2f0:	e51b300c 	ldr	r3, [fp, #-12]
     2f4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     2f8:	e5832000 	str	r2, [r3]
     2fc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     300:	e2433004 	sub	r3, r3, #4
     304:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     308:	e51b300c 	ldr	r3, [fp, #-12]
     30c:	e2833004 	add	r3, r3, #4
     310:	e50b300c 	str	r3, [fp, #-12]
     314:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     318:	e3530003 	cmp	r3, #3
     31c:	8afffff3 	bhi	2f0 <memset+0xa8>
     320:	e51b300c 	ldr	r3, [fp, #-12]
     324:	e50b3008 	str	r3, [fp, #-8]
     328:	ea000008 	b	350 <memset+0x108>
     32c:	e51b3008 	ldr	r3, [fp, #-8]
     330:	e55b200d 	ldrb	r2, [fp, #-13]
     334:	e5c32000 	strb	r2, [r3]
     338:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     33c:	e2433001 	sub	r3, r3, #1
     340:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     344:	e51b3008 	ldr	r3, [fp, #-8]
     348:	e2833001 	add	r3, r3, #1
     34c:	e50b3008 	str	r3, [fp, #-8]
     350:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     354:	e3530000 	cmp	r3, #0
     358:	1afffff3 	bne	32c <memset+0xe4>
     35c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     360:	e1a00003 	mov	r0, r3
     364:	e28bd000 	add	sp, fp, #0
     368:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     36c:	e12fff1e 	bx	lr

00000370 <strchr>:
     370:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     374:	e28db000 	add	fp, sp, #0
     378:	e24dd00c 	sub	sp, sp, #12
     37c:	e50b0008 	str	r0, [fp, #-8]
     380:	e1a03001 	mov	r3, r1
     384:	e54b3009 	strb	r3, [fp, #-9]
     388:	ea000009 	b	3b4 <strchr+0x44>
     38c:	e51b3008 	ldr	r3, [fp, #-8]
     390:	e5d33000 	ldrb	r3, [r3]
     394:	e55b2009 	ldrb	r2, [fp, #-9]
     398:	e1520003 	cmp	r2, r3
     39c:	1a000001 	bne	3a8 <strchr+0x38>
     3a0:	e51b3008 	ldr	r3, [fp, #-8]
     3a4:	ea000007 	b	3c8 <strchr+0x58>
     3a8:	e51b3008 	ldr	r3, [fp, #-8]
     3ac:	e2833001 	add	r3, r3, #1
     3b0:	e50b3008 	str	r3, [fp, #-8]
     3b4:	e51b3008 	ldr	r3, [fp, #-8]
     3b8:	e5d33000 	ldrb	r3, [r3]
     3bc:	e3530000 	cmp	r3, #0
     3c0:	1afffff1 	bne	38c <strchr+0x1c>
     3c4:	e3a03000 	mov	r3, #0
     3c8:	e1a00003 	mov	r0, r3
     3cc:	e28bd000 	add	sp, fp, #0
     3d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3d4:	e12fff1e 	bx	lr

000003d8 <gets>:
     3d8:	e92d4800 	push	{fp, lr}
     3dc:	e28db004 	add	fp, sp, #4
     3e0:	e24dd018 	sub	sp, sp, #24
     3e4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     3e8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     3ec:	e3a03000 	mov	r3, #0
     3f0:	e50b3008 	str	r3, [fp, #-8]
     3f4:	ea000016 	b	454 <gets+0x7c>
     3f8:	e24b300d 	sub	r3, fp, #13
     3fc:	e3a02001 	mov	r2, #1
     400:	e1a01003 	mov	r1, r3
     404:	e3a00000 	mov	r0, #0
     408:	eb00017f 	bl	a0c <read>
     40c:	e50b000c 	str	r0, [fp, #-12]
     410:	e51b300c 	ldr	r3, [fp, #-12]
     414:	e3530000 	cmp	r3, #0
     418:	da000013 	ble	46c <gets+0x94>
     41c:	e51b3008 	ldr	r3, [fp, #-8]
     420:	e2832001 	add	r2, r3, #1
     424:	e50b2008 	str	r2, [fp, #-8]
     428:	e1a02003 	mov	r2, r3
     42c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     430:	e0833002 	add	r3, r3, r2
     434:	e55b200d 	ldrb	r2, [fp, #-13]
     438:	e5c32000 	strb	r2, [r3]
     43c:	e55b300d 	ldrb	r3, [fp, #-13]
     440:	e353000a 	cmp	r3, #10
     444:	0a000009 	beq	470 <gets+0x98>
     448:	e55b300d 	ldrb	r3, [fp, #-13]
     44c:	e353000d 	cmp	r3, #13
     450:	0a000006 	beq	470 <gets+0x98>
     454:	e51b3008 	ldr	r3, [fp, #-8]
     458:	e2833001 	add	r3, r3, #1
     45c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     460:	e1520003 	cmp	r2, r3
     464:	caffffe3 	bgt	3f8 <gets+0x20>
     468:	ea000000 	b	470 <gets+0x98>
     46c:	e1a00000 	nop			@ (mov r0, r0)
     470:	e51b3008 	ldr	r3, [fp, #-8]
     474:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     478:	e0823003 	add	r3, r2, r3
     47c:	e3a02000 	mov	r2, #0
     480:	e5c32000 	strb	r2, [r3]
     484:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     488:	e1a00003 	mov	r0, r3
     48c:	e24bd004 	sub	sp, fp, #4
     490:	e8bd8800 	pop	{fp, pc}

00000494 <stat>:
     494:	e92d4800 	push	{fp, lr}
     498:	e28db004 	add	fp, sp, #4
     49c:	e24dd010 	sub	sp, sp, #16
     4a0:	e50b0010 	str	r0, [fp, #-16]
     4a4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4a8:	e3a01000 	mov	r1, #0
     4ac:	e51b0010 	ldr	r0, [fp, #-16]
     4b0:	eb000182 	bl	ac0 <open>
     4b4:	e50b0008 	str	r0, [fp, #-8]
     4b8:	e51b3008 	ldr	r3, [fp, #-8]
     4bc:	e3530000 	cmp	r3, #0
     4c0:	aa000001 	bge	4cc <stat+0x38>
     4c4:	e3e03000 	mvn	r3, #0
     4c8:	ea000006 	b	4e8 <stat+0x54>
     4cc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     4d0:	e51b0008 	ldr	r0, [fp, #-8]
     4d4:	eb000194 	bl	b2c <fstat>
     4d8:	e50b000c 	str	r0, [fp, #-12]
     4dc:	e51b0008 	ldr	r0, [fp, #-8]
     4e0:	eb00015b 	bl	a54 <close>
     4e4:	e51b300c 	ldr	r3, [fp, #-12]
     4e8:	e1a00003 	mov	r0, r3
     4ec:	e24bd004 	sub	sp, fp, #4
     4f0:	e8bd8800 	pop	{fp, pc}

000004f4 <atoi>:
     4f4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4f8:	e28db000 	add	fp, sp, #0
     4fc:	e24dd014 	sub	sp, sp, #20
     500:	e50b0010 	str	r0, [fp, #-16]
     504:	e3a03000 	mov	r3, #0
     508:	e50b3008 	str	r3, [fp, #-8]
     50c:	ea00000c 	b	544 <atoi+0x50>
     510:	e51b2008 	ldr	r2, [fp, #-8]
     514:	e1a03002 	mov	r3, r2
     518:	e1a03103 	lsl	r3, r3, #2
     51c:	e0833002 	add	r3, r3, r2
     520:	e1a03083 	lsl	r3, r3, #1
     524:	e1a01003 	mov	r1, r3
     528:	e51b3010 	ldr	r3, [fp, #-16]
     52c:	e2832001 	add	r2, r3, #1
     530:	e50b2010 	str	r2, [fp, #-16]
     534:	e5d33000 	ldrb	r3, [r3]
     538:	e0813003 	add	r3, r1, r3
     53c:	e2433030 	sub	r3, r3, #48	@ 0x30
     540:	e50b3008 	str	r3, [fp, #-8]
     544:	e51b3010 	ldr	r3, [fp, #-16]
     548:	e5d33000 	ldrb	r3, [r3]
     54c:	e353002f 	cmp	r3, #47	@ 0x2f
     550:	9a000003 	bls	564 <atoi+0x70>
     554:	e51b3010 	ldr	r3, [fp, #-16]
     558:	e5d33000 	ldrb	r3, [r3]
     55c:	e3530039 	cmp	r3, #57	@ 0x39
     560:	9affffea 	bls	510 <atoi+0x1c>
     564:	e51b3010 	ldr	r3, [fp, #-16]
     568:	e5d33000 	ldrb	r3, [r3]
     56c:	e3530000 	cmp	r3, #0
     570:	1a000001 	bne	57c <atoi+0x88>
     574:	e51b3008 	ldr	r3, [fp, #-8]
     578:	ea000000 	b	580 <atoi+0x8c>
     57c:	e3e03000 	mvn	r3, #0
     580:	e1a00003 	mov	r0, r3
     584:	e28bd000 	add	sp, fp, #0
     588:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     58c:	e12fff1e 	bx	lr

00000590 <memmove>:
     590:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     594:	e28db000 	add	fp, sp, #0
     598:	e24dd01c 	sub	sp, sp, #28
     59c:	e50b0010 	str	r0, [fp, #-16]
     5a0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5a4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5a8:	e51b3010 	ldr	r3, [fp, #-16]
     5ac:	e50b3008 	str	r3, [fp, #-8]
     5b0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     5b4:	e50b300c 	str	r3, [fp, #-12]
     5b8:	ea000007 	b	5dc <memmove+0x4c>
     5bc:	e51b200c 	ldr	r2, [fp, #-12]
     5c0:	e2823001 	add	r3, r2, #1
     5c4:	e50b300c 	str	r3, [fp, #-12]
     5c8:	e51b3008 	ldr	r3, [fp, #-8]
     5cc:	e2831001 	add	r1, r3, #1
     5d0:	e50b1008 	str	r1, [fp, #-8]
     5d4:	e5d22000 	ldrb	r2, [r2]
     5d8:	e5c32000 	strb	r2, [r3]
     5dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5e0:	e2432001 	sub	r2, r3, #1
     5e4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5e8:	e3530000 	cmp	r3, #0
     5ec:	cafffff2 	bgt	5bc <memmove+0x2c>
     5f0:	e51b3010 	ldr	r3, [fp, #-16]
     5f4:	e1a00003 	mov	r0, r3
     5f8:	e28bd000 	add	sp, fp, #0
     5fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     600:	e12fff1e 	bx	lr

00000604 <initiateLock>:
     604:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     608:	e28db000 	add	fp, sp, #0
     60c:	e24dd00c 	sub	sp, sp, #12
     610:	e50b0008 	str	r0, [fp, #-8]
     614:	e51b3008 	ldr	r3, [fp, #-8]
     618:	e3a02000 	mov	r2, #0
     61c:	e5832000 	str	r2, [r3]
     620:	e51b3008 	ldr	r3, [fp, #-8]
     624:	e3a02001 	mov	r2, #1
     628:	e5832004 	str	r2, [r3, #4]
     62c:	e1a00000 	nop			@ (mov r0, r0)
     630:	e28bd000 	add	sp, fp, #0
     634:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     638:	e12fff1e 	bx	lr

0000063c <xchg>:
     63c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     640:	e28db000 	add	fp, sp, #0
     644:	e24dd00c 	sub	sp, sp, #12
     648:	e50b0008 	str	r0, [fp, #-8]
     64c:	e50b100c 	str	r1, [fp, #-12]
     650:	e51b200c 	ldr	r2, [fp, #-12]
     654:	e51b3008 	ldr	r3, [fp, #-8]
     658:	e1931f9f 	ldrex	r1, [r3]
     65c:	e1830f92 	strex	r0, r2, [r3]
     660:	e3500000 	cmp	r0, #0
     664:	1afffffb 	bne	658 <xchg+0x1c>
     668:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     66c:	e1a03001 	mov	r3, r1
     670:	e1a00003 	mov	r0, r3
     674:	e28bd000 	add	sp, fp, #0
     678:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     67c:	e12fff1e 	bx	lr

00000680 <acquireLock>:
     680:	e92d4800 	push	{fp, lr}
     684:	e28db004 	add	fp, sp, #4
     688:	e24dd008 	sub	sp, sp, #8
     68c:	e50b0008 	str	r0, [fp, #-8]
     690:	e51b3008 	ldr	r3, [fp, #-8]
     694:	e5933004 	ldr	r3, [r3, #4]
     698:	e3530000 	cmp	r3, #0
     69c:	0a000008 	beq	6c4 <acquireLock+0x44>
     6a0:	e1a00000 	nop			@ (mov r0, r0)
     6a4:	e51b3008 	ldr	r3, [fp, #-8]
     6a8:	e3a01001 	mov	r1, #1
     6ac:	e1a00003 	mov	r0, r3
     6b0:	ebffffe1 	bl	63c <xchg>
     6b4:	e1a03000 	mov	r3, r0
     6b8:	e3530000 	cmp	r3, #0
     6bc:	1afffff8 	bne	6a4 <acquireLock+0x24>
     6c0:	ea000000 	b	6c8 <acquireLock+0x48>
     6c4:	e1a00000 	nop			@ (mov r0, r0)
     6c8:	e24bd004 	sub	sp, fp, #4
     6cc:	e8bd8800 	pop	{fp, pc}

000006d0 <releaseLock>:
     6d0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6d4:	e28db000 	add	fp, sp, #0
     6d8:	e24dd00c 	sub	sp, sp, #12
     6dc:	e50b0008 	str	r0, [fp, #-8]
     6e0:	e51b3008 	ldr	r3, [fp, #-8]
     6e4:	e5933004 	ldr	r3, [r3, #4]
     6e8:	e3530000 	cmp	r3, #0
     6ec:	0a000007 	beq	710 <releaseLock+0x40>
     6f0:	e51b3008 	ldr	r3, [fp, #-8]
     6f4:	e5933000 	ldr	r3, [r3]
     6f8:	e3530001 	cmp	r3, #1
     6fc:	1a000005 	bne	718 <releaseLock+0x48>
     700:	e51b3008 	ldr	r3, [fp, #-8]
     704:	e3a02000 	mov	r2, #0
     708:	e5832000 	str	r2, [r3]
     70c:	ea000002 	b	71c <releaseLock+0x4c>
     710:	e1a00000 	nop			@ (mov r0, r0)
     714:	ea000000 	b	71c <releaseLock+0x4c>
     718:	e1a00000 	nop			@ (mov r0, r0)
     71c:	e28bd000 	add	sp, fp, #0
     720:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     724:	e12fff1e 	bx	lr

00000728 <initiateCondVar>:
     728:	e92d4800 	push	{fp, lr}
     72c:	e28db004 	add	fp, sp, #4
     730:	e24dd008 	sub	sp, sp, #8
     734:	e50b0008 	str	r0, [fp, #-8]
     738:	eb0001b8 	bl	e20 <getChannel>
     73c:	e1a02000 	mov	r2, r0
     740:	e51b3008 	ldr	r3, [fp, #-8]
     744:	e5832000 	str	r2, [r3]
     748:	e51b3008 	ldr	r3, [fp, #-8]
     74c:	e3a02001 	mov	r2, #1
     750:	e5832004 	str	r2, [r3, #4]
     754:	e1a00000 	nop			@ (mov r0, r0)
     758:	e24bd004 	sub	sp, fp, #4
     75c:	e8bd8800 	pop	{fp, pc}

00000760 <condWait>:
     760:	e92d4800 	push	{fp, lr}
     764:	e28db004 	add	fp, sp, #4
     768:	e24dd008 	sub	sp, sp, #8
     76c:	e50b0008 	str	r0, [fp, #-8]
     770:	e50b100c 	str	r1, [fp, #-12]
     774:	e51b3008 	ldr	r3, [fp, #-8]
     778:	e5933004 	ldr	r3, [r3, #4]
     77c:	e3530000 	cmp	r3, #0
     780:	0a00000c 	beq	7b8 <condWait+0x58>
     784:	e51b300c 	ldr	r3, [fp, #-12]
     788:	e5933004 	ldr	r3, [r3, #4]
     78c:	e3530000 	cmp	r3, #0
     790:	0a000008 	beq	7b8 <condWait+0x58>
     794:	e51b000c 	ldr	r0, [fp, #-12]
     798:	ebffffcc 	bl	6d0 <releaseLock>
     79c:	e51b3008 	ldr	r3, [fp, #-8]
     7a0:	e5933000 	ldr	r3, [r3]
     7a4:	e1a00003 	mov	r0, r3
     7a8:	eb000193 	bl	dfc <sleepChan>
     7ac:	e51b000c 	ldr	r0, [fp, #-12]
     7b0:	ebffffb2 	bl	680 <acquireLock>
     7b4:	ea000000 	b	7bc <condWait+0x5c>
     7b8:	e1a00000 	nop			@ (mov r0, r0)
     7bc:	e24bd004 	sub	sp, fp, #4
     7c0:	e8bd8800 	pop	{fp, pc}

000007c4 <broadcast>:
     7c4:	e92d4800 	push	{fp, lr}
     7c8:	e28db004 	add	fp, sp, #4
     7cc:	e24dd008 	sub	sp, sp, #8
     7d0:	e50b0008 	str	r0, [fp, #-8]
     7d4:	e51b3008 	ldr	r3, [fp, #-8]
     7d8:	e5933004 	ldr	r3, [r3, #4]
     7dc:	e3530000 	cmp	r3, #0
     7e0:	0a000004 	beq	7f8 <broadcast+0x34>
     7e4:	e51b3008 	ldr	r3, [fp, #-8]
     7e8:	e5933000 	ldr	r3, [r3]
     7ec:	e1a00003 	mov	r0, r3
     7f0:	eb000193 	bl	e44 <sigChan>
     7f4:	ea000000 	b	7fc <broadcast+0x38>
     7f8:	e1a00000 	nop			@ (mov r0, r0)
     7fc:	e24bd004 	sub	sp, fp, #4
     800:	e8bd8800 	pop	{fp, pc}

00000804 <signal>:
     804:	e92d4800 	push	{fp, lr}
     808:	e28db004 	add	fp, sp, #4
     80c:	e24dd008 	sub	sp, sp, #8
     810:	e50b0008 	str	r0, [fp, #-8]
     814:	e51b3008 	ldr	r3, [fp, #-8]
     818:	e5933004 	ldr	r3, [r3, #4]
     81c:	e3530000 	cmp	r3, #0
     820:	0a000004 	beq	838 <signal+0x34>
     824:	e51b3008 	ldr	r3, [fp, #-8]
     828:	e5933000 	ldr	r3, [r3]
     82c:	e1a00003 	mov	r0, r3
     830:	eb00018c 	bl	e68 <sigOneChan>
     834:	ea000000 	b	83c <signal+0x38>
     838:	e1a00000 	nop			@ (mov r0, r0)
     83c:	e24bd004 	sub	sp, fp, #4
     840:	e8bd8800 	pop	{fp, pc}

00000844 <semInit>:
     844:	e92d4800 	push	{fp, lr}
     848:	e28db004 	add	fp, sp, #4
     84c:	e24dd008 	sub	sp, sp, #8
     850:	e50b0008 	str	r0, [fp, #-8]
     854:	e50b100c 	str	r1, [fp, #-12]
     858:	e51b3008 	ldr	r3, [fp, #-8]
     85c:	e51b200c 	ldr	r2, [fp, #-12]
     860:	e5832000 	str	r2, [r3]
     864:	e51b3008 	ldr	r3, [fp, #-8]
     868:	e2833004 	add	r3, r3, #4
     86c:	e1a00003 	mov	r0, r3
     870:	ebffff63 	bl	604 <initiateLock>
     874:	e51b3008 	ldr	r3, [fp, #-8]
     878:	e283300c 	add	r3, r3, #12
     87c:	e1a00003 	mov	r0, r3
     880:	ebffffa8 	bl	728 <initiateCondVar>
     884:	e51b3008 	ldr	r3, [fp, #-8]
     888:	e3a02001 	mov	r2, #1
     88c:	e5832014 	str	r2, [r3, #20]
     890:	e1a00000 	nop			@ (mov r0, r0)
     894:	e24bd004 	sub	sp, fp, #4
     898:	e8bd8800 	pop	{fp, pc}

0000089c <semUp>:
     89c:	e92d4800 	push	{fp, lr}
     8a0:	e28db004 	add	fp, sp, #4
     8a4:	e24dd008 	sub	sp, sp, #8
     8a8:	e50b0008 	str	r0, [fp, #-8]
     8ac:	e51b3008 	ldr	r3, [fp, #-8]
     8b0:	e2833004 	add	r3, r3, #4
     8b4:	e1a00003 	mov	r0, r3
     8b8:	ebffff70 	bl	680 <acquireLock>
     8bc:	e51b3008 	ldr	r3, [fp, #-8]
     8c0:	e5933000 	ldr	r3, [r3]
     8c4:	e2832001 	add	r2, r3, #1
     8c8:	e51b3008 	ldr	r3, [fp, #-8]
     8cc:	e5832000 	str	r2, [r3]
     8d0:	e51b3008 	ldr	r3, [fp, #-8]
     8d4:	e283300c 	add	r3, r3, #12
     8d8:	e1a00003 	mov	r0, r3
     8dc:	ebffffc8 	bl	804 <signal>
     8e0:	e51b3008 	ldr	r3, [fp, #-8]
     8e4:	e2833004 	add	r3, r3, #4
     8e8:	e1a00003 	mov	r0, r3
     8ec:	ebffff77 	bl	6d0 <releaseLock>
     8f0:	e1a00000 	nop			@ (mov r0, r0)
     8f4:	e24bd004 	sub	sp, fp, #4
     8f8:	e8bd8800 	pop	{fp, pc}

000008fc <semDown>:
     8fc:	e92d4800 	push	{fp, lr}
     900:	e28db004 	add	fp, sp, #4
     904:	e24dd008 	sub	sp, sp, #8
     908:	e50b0008 	str	r0, [fp, #-8]
     90c:	e51b3008 	ldr	r3, [fp, #-8]
     910:	e2833004 	add	r3, r3, #4
     914:	e1a00003 	mov	r0, r3
     918:	ebffff58 	bl	680 <acquireLock>
     91c:	ea000006 	b	93c <semDown+0x40>
     920:	e51b3008 	ldr	r3, [fp, #-8]
     924:	e283200c 	add	r2, r3, #12
     928:	e51b3008 	ldr	r3, [fp, #-8]
     92c:	e2833004 	add	r3, r3, #4
     930:	e1a01003 	mov	r1, r3
     934:	e1a00002 	mov	r0, r2
     938:	ebffff88 	bl	760 <condWait>
     93c:	e51b3008 	ldr	r3, [fp, #-8]
     940:	e5933000 	ldr	r3, [r3]
     944:	e3530000 	cmp	r3, #0
     948:	dafffff4 	ble	920 <semDown+0x24>
     94c:	e51b3008 	ldr	r3, [fp, #-8]
     950:	e5933000 	ldr	r3, [r3]
     954:	e2432001 	sub	r2, r3, #1
     958:	e51b3008 	ldr	r3, [fp, #-8]
     95c:	e5832000 	str	r2, [r3]
     960:	e51b3008 	ldr	r3, [fp, #-8]
     964:	e2833004 	add	r3, r3, #4
     968:	e1a00003 	mov	r0, r3
     96c:	ebffff57 	bl	6d0 <releaseLock>
     970:	e1a00000 	nop			@ (mov r0, r0)
     974:	e24bd004 	sub	sp, fp, #4
     978:	e8bd8800 	pop	{fp, pc}

0000097c <fork>:
     97c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     980:	e1a04003 	mov	r4, r3
     984:	e1a03002 	mov	r3, r2
     988:	e1a02001 	mov	r2, r1
     98c:	e1a01000 	mov	r1, r0
     990:	e3a00001 	mov	r0, #1
     994:	ef000000 	svc	0x00000000
     998:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     99c:	e12fff1e 	bx	lr

000009a0 <exit>:
     9a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a4:	e1a04003 	mov	r4, r3
     9a8:	e1a03002 	mov	r3, r2
     9ac:	e1a02001 	mov	r2, r1
     9b0:	e1a01000 	mov	r1, r0
     9b4:	e3a00002 	mov	r0, #2
     9b8:	ef000000 	svc	0x00000000
     9bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c0:	e12fff1e 	bx	lr

000009c4 <wait>:
     9c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c8:	e1a04003 	mov	r4, r3
     9cc:	e1a03002 	mov	r3, r2
     9d0:	e1a02001 	mov	r2, r1
     9d4:	e1a01000 	mov	r1, r0
     9d8:	e3a00003 	mov	r0, #3
     9dc:	ef000000 	svc	0x00000000
     9e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e4:	e12fff1e 	bx	lr

000009e8 <pipe>:
     9e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9ec:	e1a04003 	mov	r4, r3
     9f0:	e1a03002 	mov	r3, r2
     9f4:	e1a02001 	mov	r2, r1
     9f8:	e1a01000 	mov	r1, r0
     9fc:	e3a00004 	mov	r0, #4
     a00:	ef000000 	svc	0x00000000
     a04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a08:	e12fff1e 	bx	lr

00000a0c <read>:
     a0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a10:	e1a04003 	mov	r4, r3
     a14:	e1a03002 	mov	r3, r2
     a18:	e1a02001 	mov	r2, r1
     a1c:	e1a01000 	mov	r1, r0
     a20:	e3a00005 	mov	r0, #5
     a24:	ef000000 	svc	0x00000000
     a28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a2c:	e12fff1e 	bx	lr

00000a30 <write>:
     a30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a34:	e1a04003 	mov	r4, r3
     a38:	e1a03002 	mov	r3, r2
     a3c:	e1a02001 	mov	r2, r1
     a40:	e1a01000 	mov	r1, r0
     a44:	e3a00010 	mov	r0, #16
     a48:	ef000000 	svc	0x00000000
     a4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a50:	e12fff1e 	bx	lr

00000a54 <close>:
     a54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a58:	e1a04003 	mov	r4, r3
     a5c:	e1a03002 	mov	r3, r2
     a60:	e1a02001 	mov	r2, r1
     a64:	e1a01000 	mov	r1, r0
     a68:	e3a00015 	mov	r0, #21
     a6c:	ef000000 	svc	0x00000000
     a70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a74:	e12fff1e 	bx	lr

00000a78 <kill>:
     a78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a7c:	e1a04003 	mov	r4, r3
     a80:	e1a03002 	mov	r3, r2
     a84:	e1a02001 	mov	r2, r1
     a88:	e1a01000 	mov	r1, r0
     a8c:	e3a00006 	mov	r0, #6
     a90:	ef000000 	svc	0x00000000
     a94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a98:	e12fff1e 	bx	lr

00000a9c <exec>:
     a9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa0:	e1a04003 	mov	r4, r3
     aa4:	e1a03002 	mov	r3, r2
     aa8:	e1a02001 	mov	r2, r1
     aac:	e1a01000 	mov	r1, r0
     ab0:	e3a00007 	mov	r0, #7
     ab4:	ef000000 	svc	0x00000000
     ab8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     abc:	e12fff1e 	bx	lr

00000ac0 <open>:
     ac0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac4:	e1a04003 	mov	r4, r3
     ac8:	e1a03002 	mov	r3, r2
     acc:	e1a02001 	mov	r2, r1
     ad0:	e1a01000 	mov	r1, r0
     ad4:	e3a0000f 	mov	r0, #15
     ad8:	ef000000 	svc	0x00000000
     adc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae0:	e12fff1e 	bx	lr

00000ae4 <mknod>:
     ae4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae8:	e1a04003 	mov	r4, r3
     aec:	e1a03002 	mov	r3, r2
     af0:	e1a02001 	mov	r2, r1
     af4:	e1a01000 	mov	r1, r0
     af8:	e3a00011 	mov	r0, #17
     afc:	ef000000 	svc	0x00000000
     b00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b04:	e12fff1e 	bx	lr

00000b08 <unlink>:
     b08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b0c:	e1a04003 	mov	r4, r3
     b10:	e1a03002 	mov	r3, r2
     b14:	e1a02001 	mov	r2, r1
     b18:	e1a01000 	mov	r1, r0
     b1c:	e3a00012 	mov	r0, #18
     b20:	ef000000 	svc	0x00000000
     b24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b28:	e12fff1e 	bx	lr

00000b2c <fstat>:
     b2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b30:	e1a04003 	mov	r4, r3
     b34:	e1a03002 	mov	r3, r2
     b38:	e1a02001 	mov	r2, r1
     b3c:	e1a01000 	mov	r1, r0
     b40:	e3a00008 	mov	r0, #8
     b44:	ef000000 	svc	0x00000000
     b48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b4c:	e12fff1e 	bx	lr

00000b50 <link>:
     b50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b54:	e1a04003 	mov	r4, r3
     b58:	e1a03002 	mov	r3, r2
     b5c:	e1a02001 	mov	r2, r1
     b60:	e1a01000 	mov	r1, r0
     b64:	e3a00013 	mov	r0, #19
     b68:	ef000000 	svc	0x00000000
     b6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b70:	e12fff1e 	bx	lr

00000b74 <mkdir>:
     b74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b78:	e1a04003 	mov	r4, r3
     b7c:	e1a03002 	mov	r3, r2
     b80:	e1a02001 	mov	r2, r1
     b84:	e1a01000 	mov	r1, r0
     b88:	e3a00014 	mov	r0, #20
     b8c:	ef000000 	svc	0x00000000
     b90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b94:	e12fff1e 	bx	lr

00000b98 <chdir>:
     b98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b9c:	e1a04003 	mov	r4, r3
     ba0:	e1a03002 	mov	r3, r2
     ba4:	e1a02001 	mov	r2, r1
     ba8:	e1a01000 	mov	r1, r0
     bac:	e3a00009 	mov	r0, #9
     bb0:	ef000000 	svc	0x00000000
     bb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb8:	e12fff1e 	bx	lr

00000bbc <dup>:
     bbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc0:	e1a04003 	mov	r4, r3
     bc4:	e1a03002 	mov	r3, r2
     bc8:	e1a02001 	mov	r2, r1
     bcc:	e1a01000 	mov	r1, r0
     bd0:	e3a0000a 	mov	r0, #10
     bd4:	ef000000 	svc	0x00000000
     bd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bdc:	e12fff1e 	bx	lr

00000be0 <getpid>:
     be0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be4:	e1a04003 	mov	r4, r3
     be8:	e1a03002 	mov	r3, r2
     bec:	e1a02001 	mov	r2, r1
     bf0:	e1a01000 	mov	r1, r0
     bf4:	e3a0000b 	mov	r0, #11
     bf8:	ef000000 	svc	0x00000000
     bfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c00:	e12fff1e 	bx	lr

00000c04 <sbrk>:
     c04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c08:	e1a04003 	mov	r4, r3
     c0c:	e1a03002 	mov	r3, r2
     c10:	e1a02001 	mov	r2, r1
     c14:	e1a01000 	mov	r1, r0
     c18:	e3a0000c 	mov	r0, #12
     c1c:	ef000000 	svc	0x00000000
     c20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c24:	e12fff1e 	bx	lr

00000c28 <sleep>:
     c28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c2c:	e1a04003 	mov	r4, r3
     c30:	e1a03002 	mov	r3, r2
     c34:	e1a02001 	mov	r2, r1
     c38:	e1a01000 	mov	r1, r0
     c3c:	e3a0000d 	mov	r0, #13
     c40:	ef000000 	svc	0x00000000
     c44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c48:	e12fff1e 	bx	lr

00000c4c <uptime>:
     c4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c50:	e1a04003 	mov	r4, r3
     c54:	e1a03002 	mov	r3, r2
     c58:	e1a02001 	mov	r2, r1
     c5c:	e1a01000 	mov	r1, r0
     c60:	e3a0000e 	mov	r0, #14
     c64:	ef000000 	svc	0x00000000
     c68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c6c:	e12fff1e 	bx	lr

00000c70 <getprocs>:
     c70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c74:	e1a04003 	mov	r4, r3
     c78:	e1a03002 	mov	r3, r2
     c7c:	e1a02001 	mov	r2, r1
     c80:	e1a01000 	mov	r1, r0
     c84:	e3a00016 	mov	r0, #22
     c88:	ef000000 	svc	0x00000000
     c8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c90:	e12fff1e 	bx	lr

00000c94 <settickets>:
     c94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c98:	e1a04003 	mov	r4, r3
     c9c:	e1a03002 	mov	r3, r2
     ca0:	e1a02001 	mov	r2, r1
     ca4:	e1a01000 	mov	r1, r0
     ca8:	e3a00017 	mov	r0, #23
     cac:	ef000000 	svc	0x00000000
     cb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb4:	e12fff1e 	bx	lr

00000cb8 <srand>:
     cb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cbc:	e1a04003 	mov	r4, r3
     cc0:	e1a03002 	mov	r3, r2
     cc4:	e1a02001 	mov	r2, r1
     cc8:	e1a01000 	mov	r1, r0
     ccc:	e3a00018 	mov	r0, #24
     cd0:	ef000000 	svc	0x00000000
     cd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd8:	e12fff1e 	bx	lr

00000cdc <getpinfo>:
     cdc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce0:	e1a04003 	mov	r4, r3
     ce4:	e1a03002 	mov	r3, r2
     ce8:	e1a02001 	mov	r2, r1
     cec:	e1a01000 	mov	r1, r0
     cf0:	e3a00019 	mov	r0, #25
     cf4:	ef000000 	svc	0x00000000
     cf8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cfc:	e12fff1e 	bx	lr

00000d00 <dumppagetable>:
     d00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d04:	e1a04003 	mov	r4, r3
     d08:	e1a03002 	mov	r3, r2
     d0c:	e1a02001 	mov	r2, r1
     d10:	e1a01000 	mov	r1, r0
     d14:	e3a0001a 	mov	r0, #26
     d18:	ef000000 	svc	0x00000000
     d1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d20:	e12fff1e 	bx	lr

00000d24 <thread_create>:
     d24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d28:	e1a04003 	mov	r4, r3
     d2c:	e1a03002 	mov	r3, r2
     d30:	e1a02001 	mov	r2, r1
     d34:	e1a01000 	mov	r1, r0
     d38:	e3a0001b 	mov	r0, #27
     d3c:	ef000000 	svc	0x00000000
     d40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d44:	e12fff1e 	bx	lr

00000d48 <thread_exit>:
     d48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d4c:	e1a04003 	mov	r4, r3
     d50:	e1a03002 	mov	r3, r2
     d54:	e1a02001 	mov	r2, r1
     d58:	e1a01000 	mov	r1, r0
     d5c:	e3a0001c 	mov	r0, #28
     d60:	ef000000 	svc	0x00000000
     d64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d68:	e12fff1e 	bx	lr

00000d6c <thread_join>:
     d6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d70:	e1a04003 	mov	r4, r3
     d74:	e1a03002 	mov	r3, r2
     d78:	e1a02001 	mov	r2, r1
     d7c:	e1a01000 	mov	r1, r0
     d80:	e3a0001d 	mov	r0, #29
     d84:	ef000000 	svc	0x00000000
     d88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d8c:	e12fff1e 	bx	lr

00000d90 <waitpid>:
     d90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d94:	e1a04003 	mov	r4, r3
     d98:	e1a03002 	mov	r3, r2
     d9c:	e1a02001 	mov	r2, r1
     da0:	e1a01000 	mov	r1, r0
     da4:	e3a0001e 	mov	r0, #30
     da8:	ef000000 	svc	0x00000000
     dac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     db0:	e12fff1e 	bx	lr

00000db4 <barrier_init>:
     db4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     db8:	e1a04003 	mov	r4, r3
     dbc:	e1a03002 	mov	r3, r2
     dc0:	e1a02001 	mov	r2, r1
     dc4:	e1a01000 	mov	r1, r0
     dc8:	e3a0001f 	mov	r0, #31
     dcc:	ef000000 	svc	0x00000000
     dd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd4:	e12fff1e 	bx	lr

00000dd8 <barrier_check>:
     dd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ddc:	e1a04003 	mov	r4, r3
     de0:	e1a03002 	mov	r3, r2
     de4:	e1a02001 	mov	r2, r1
     de8:	e1a01000 	mov	r1, r0
     dec:	e3a00020 	mov	r0, #32
     df0:	ef000000 	svc	0x00000000
     df4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     df8:	e12fff1e 	bx	lr

00000dfc <sleepChan>:
     dfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e00:	e1a04003 	mov	r4, r3
     e04:	e1a03002 	mov	r3, r2
     e08:	e1a02001 	mov	r2, r1
     e0c:	e1a01000 	mov	r1, r0
     e10:	e3a00024 	mov	r0, #36	@ 0x24
     e14:	ef000000 	svc	0x00000000
     e18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e1c:	e12fff1e 	bx	lr

00000e20 <getChannel>:
     e20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e24:	e1a04003 	mov	r4, r3
     e28:	e1a03002 	mov	r3, r2
     e2c:	e1a02001 	mov	r2, r1
     e30:	e1a01000 	mov	r1, r0
     e34:	e3a00025 	mov	r0, #37	@ 0x25
     e38:	ef000000 	svc	0x00000000
     e3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e40:	e12fff1e 	bx	lr

00000e44 <sigChan>:
     e44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e48:	e1a04003 	mov	r4, r3
     e4c:	e1a03002 	mov	r3, r2
     e50:	e1a02001 	mov	r2, r1
     e54:	e1a01000 	mov	r1, r0
     e58:	e3a00026 	mov	r0, #38	@ 0x26
     e5c:	ef000000 	svc	0x00000000
     e60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e64:	e12fff1e 	bx	lr

00000e68 <sigOneChan>:
     e68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e6c:	e1a04003 	mov	r4, r3
     e70:	e1a03002 	mov	r3, r2
     e74:	e1a02001 	mov	r2, r1
     e78:	e1a01000 	mov	r1, r0
     e7c:	e3a00027 	mov	r0, #39	@ 0x27
     e80:	ef000000 	svc	0x00000000
     e84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e88:	e12fff1e 	bx	lr

00000e8c <putc>:
     e8c:	e92d4800 	push	{fp, lr}
     e90:	e28db004 	add	fp, sp, #4
     e94:	e24dd008 	sub	sp, sp, #8
     e98:	e50b0008 	str	r0, [fp, #-8]
     e9c:	e1a03001 	mov	r3, r1
     ea0:	e54b3009 	strb	r3, [fp, #-9]
     ea4:	e24b3009 	sub	r3, fp, #9
     ea8:	e3a02001 	mov	r2, #1
     eac:	e1a01003 	mov	r1, r3
     eb0:	e51b0008 	ldr	r0, [fp, #-8]
     eb4:	ebfffedd 	bl	a30 <write>
     eb8:	e1a00000 	nop			@ (mov r0, r0)
     ebc:	e24bd004 	sub	sp, fp, #4
     ec0:	e8bd8800 	pop	{fp, pc}

00000ec4 <printint>:
     ec4:	e92d4800 	push	{fp, lr}
     ec8:	e28db004 	add	fp, sp, #4
     ecc:	e24dd030 	sub	sp, sp, #48	@ 0x30
     ed0:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     ed4:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     ed8:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     edc:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     ee0:	e3a03000 	mov	r3, #0
     ee4:	e50b300c 	str	r3, [fp, #-12]
     ee8:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     eec:	e3530000 	cmp	r3, #0
     ef0:	0a000008 	beq	f18 <printint+0x54>
     ef4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ef8:	e3530000 	cmp	r3, #0
     efc:	aa000005 	bge	f18 <printint+0x54>
     f00:	e3a03001 	mov	r3, #1
     f04:	e50b300c 	str	r3, [fp, #-12]
     f08:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f0c:	e2633000 	rsb	r3, r3, #0
     f10:	e50b3010 	str	r3, [fp, #-16]
     f14:	ea000001 	b	f20 <printint+0x5c>
     f18:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f1c:	e50b3010 	str	r3, [fp, #-16]
     f20:	e3a03000 	mov	r3, #0
     f24:	e50b3008 	str	r3, [fp, #-8]
     f28:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     f2c:	e51b3010 	ldr	r3, [fp, #-16]
     f30:	e1a01002 	mov	r1, r2
     f34:	e1a00003 	mov	r0, r3
     f38:	eb0001d5 	bl	1694 <__aeabi_uidivmod>
     f3c:	e1a03001 	mov	r3, r1
     f40:	e1a01003 	mov	r1, r3
     f44:	e51b3008 	ldr	r3, [fp, #-8]
     f48:	e2832001 	add	r2, r3, #1
     f4c:	e50b2008 	str	r2, [fp, #-8]
     f50:	e59f20a0 	ldr	r2, [pc, #160]	@ ff8 <printint+0x134>
     f54:	e7d22001 	ldrb	r2, [r2, r1]
     f58:	e2433004 	sub	r3, r3, #4
     f5c:	e083300b 	add	r3, r3, fp
     f60:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f64:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     f68:	e1a01003 	mov	r1, r3
     f6c:	e51b0010 	ldr	r0, [fp, #-16]
     f70:	eb00018a 	bl	15a0 <__udivsi3>
     f74:	e1a03000 	mov	r3, r0
     f78:	e50b3010 	str	r3, [fp, #-16]
     f7c:	e51b3010 	ldr	r3, [fp, #-16]
     f80:	e3530000 	cmp	r3, #0
     f84:	1affffe7 	bne	f28 <printint+0x64>
     f88:	e51b300c 	ldr	r3, [fp, #-12]
     f8c:	e3530000 	cmp	r3, #0
     f90:	0a00000e 	beq	fd0 <printint+0x10c>
     f94:	e51b3008 	ldr	r3, [fp, #-8]
     f98:	e2832001 	add	r2, r3, #1
     f9c:	e50b2008 	str	r2, [fp, #-8]
     fa0:	e2433004 	sub	r3, r3, #4
     fa4:	e083300b 	add	r3, r3, fp
     fa8:	e3a0202d 	mov	r2, #45	@ 0x2d
     fac:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     fb0:	ea000006 	b	fd0 <printint+0x10c>
     fb4:	e24b2020 	sub	r2, fp, #32
     fb8:	e51b3008 	ldr	r3, [fp, #-8]
     fbc:	e0823003 	add	r3, r2, r3
     fc0:	e5d33000 	ldrb	r3, [r3]
     fc4:	e1a01003 	mov	r1, r3
     fc8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     fcc:	ebffffae 	bl	e8c <putc>
     fd0:	e51b3008 	ldr	r3, [fp, #-8]
     fd4:	e2433001 	sub	r3, r3, #1
     fd8:	e50b3008 	str	r3, [fp, #-8]
     fdc:	e51b3008 	ldr	r3, [fp, #-8]
     fe0:	e3530000 	cmp	r3, #0
     fe4:	aafffff2 	bge	fb4 <printint+0xf0>
     fe8:	e1a00000 	nop			@ (mov r0, r0)
     fec:	e1a00000 	nop			@ (mov r0, r0)
     ff0:	e24bd004 	sub	sp, fp, #4
     ff4:	e8bd8800 	pop	{fp, pc}
     ff8:	00001714 	.word	0x00001714

00000ffc <printf>:
     ffc:	e92d000e 	push	{r1, r2, r3}
    1000:	e92d4800 	push	{fp, lr}
    1004:	e28db004 	add	fp, sp, #4
    1008:	e24dd024 	sub	sp, sp, #36	@ 0x24
    100c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1010:	e3a03000 	mov	r3, #0
    1014:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1018:	e28b3008 	add	r3, fp, #8
    101c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1020:	e3a03000 	mov	r3, #0
    1024:	e50b3010 	str	r3, [fp, #-16]
    1028:	ea000074 	b	1200 <printf+0x204>
    102c:	e59b2004 	ldr	r2, [fp, #4]
    1030:	e51b3010 	ldr	r3, [fp, #-16]
    1034:	e0823003 	add	r3, r2, r3
    1038:	e5d33000 	ldrb	r3, [r3]
    103c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1040:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1044:	e3530000 	cmp	r3, #0
    1048:	1a00000b 	bne	107c <printf+0x80>
    104c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1050:	e3530025 	cmp	r3, #37	@ 0x25
    1054:	1a000002 	bne	1064 <printf+0x68>
    1058:	e3a03025 	mov	r3, #37	@ 0x25
    105c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1060:	ea000063 	b	11f4 <printf+0x1f8>
    1064:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1068:	e6ef3073 	uxtb	r3, r3
    106c:	e1a01003 	mov	r1, r3
    1070:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1074:	ebffff84 	bl	e8c <putc>
    1078:	ea00005d 	b	11f4 <printf+0x1f8>
    107c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1080:	e3530025 	cmp	r3, #37	@ 0x25
    1084:	1a00005a 	bne	11f4 <printf+0x1f8>
    1088:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    108c:	e3530064 	cmp	r3, #100	@ 0x64
    1090:	1a00000a 	bne	10c0 <printf+0xc4>
    1094:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1098:	e5933000 	ldr	r3, [r3]
    109c:	e1a01003 	mov	r1, r3
    10a0:	e3a03001 	mov	r3, #1
    10a4:	e3a0200a 	mov	r2, #10
    10a8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10ac:	ebffff84 	bl	ec4 <printint>
    10b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10b4:	e2833004 	add	r3, r3, #4
    10b8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10bc:	ea00004a 	b	11ec <printf+0x1f0>
    10c0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10c4:	e3530078 	cmp	r3, #120	@ 0x78
    10c8:	0a000002 	beq	10d8 <printf+0xdc>
    10cc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10d0:	e3530070 	cmp	r3, #112	@ 0x70
    10d4:	1a00000a 	bne	1104 <printf+0x108>
    10d8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10dc:	e5933000 	ldr	r3, [r3]
    10e0:	e1a01003 	mov	r1, r3
    10e4:	e3a03000 	mov	r3, #0
    10e8:	e3a02010 	mov	r2, #16
    10ec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10f0:	ebffff73 	bl	ec4 <printint>
    10f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10f8:	e2833004 	add	r3, r3, #4
    10fc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1100:	ea000039 	b	11ec <printf+0x1f0>
    1104:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1108:	e3530073 	cmp	r3, #115	@ 0x73
    110c:	1a000018 	bne	1174 <printf+0x178>
    1110:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1114:	e5933000 	ldr	r3, [r3]
    1118:	e50b300c 	str	r3, [fp, #-12]
    111c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1120:	e2833004 	add	r3, r3, #4
    1124:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1128:	e51b300c 	ldr	r3, [fp, #-12]
    112c:	e3530000 	cmp	r3, #0
    1130:	1a00000a 	bne	1160 <printf+0x164>
    1134:	e59f30f4 	ldr	r3, [pc, #244]	@ 1230 <printf+0x234>
    1138:	e50b300c 	str	r3, [fp, #-12]
    113c:	ea000007 	b	1160 <printf+0x164>
    1140:	e51b300c 	ldr	r3, [fp, #-12]
    1144:	e5d33000 	ldrb	r3, [r3]
    1148:	e1a01003 	mov	r1, r3
    114c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1150:	ebffff4d 	bl	e8c <putc>
    1154:	e51b300c 	ldr	r3, [fp, #-12]
    1158:	e2833001 	add	r3, r3, #1
    115c:	e50b300c 	str	r3, [fp, #-12]
    1160:	e51b300c 	ldr	r3, [fp, #-12]
    1164:	e5d33000 	ldrb	r3, [r3]
    1168:	e3530000 	cmp	r3, #0
    116c:	1afffff3 	bne	1140 <printf+0x144>
    1170:	ea00001d 	b	11ec <printf+0x1f0>
    1174:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1178:	e3530063 	cmp	r3, #99	@ 0x63
    117c:	1a000009 	bne	11a8 <printf+0x1ac>
    1180:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1184:	e5933000 	ldr	r3, [r3]
    1188:	e6ef3073 	uxtb	r3, r3
    118c:	e1a01003 	mov	r1, r3
    1190:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1194:	ebffff3c 	bl	e8c <putc>
    1198:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    119c:	e2833004 	add	r3, r3, #4
    11a0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11a4:	ea000010 	b	11ec <printf+0x1f0>
    11a8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11ac:	e3530025 	cmp	r3, #37	@ 0x25
    11b0:	1a000005 	bne	11cc <printf+0x1d0>
    11b4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11b8:	e6ef3073 	uxtb	r3, r3
    11bc:	e1a01003 	mov	r1, r3
    11c0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11c4:	ebffff30 	bl	e8c <putc>
    11c8:	ea000007 	b	11ec <printf+0x1f0>
    11cc:	e3a01025 	mov	r1, #37	@ 0x25
    11d0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11d4:	ebffff2c 	bl	e8c <putc>
    11d8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11dc:	e6ef3073 	uxtb	r3, r3
    11e0:	e1a01003 	mov	r1, r3
    11e4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11e8:	ebffff27 	bl	e8c <putc>
    11ec:	e3a03000 	mov	r3, #0
    11f0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    11f4:	e51b3010 	ldr	r3, [fp, #-16]
    11f8:	e2833001 	add	r3, r3, #1
    11fc:	e50b3010 	str	r3, [fp, #-16]
    1200:	e59b2004 	ldr	r2, [fp, #4]
    1204:	e51b3010 	ldr	r3, [fp, #-16]
    1208:	e0823003 	add	r3, r2, r3
    120c:	e5d33000 	ldrb	r3, [r3]
    1210:	e3530000 	cmp	r3, #0
    1214:	1affff84 	bne	102c <printf+0x30>
    1218:	e1a00000 	nop			@ (mov r0, r0)
    121c:	e1a00000 	nop			@ (mov r0, r0)
    1220:	e24bd004 	sub	sp, fp, #4
    1224:	e8bd4800 	pop	{fp, lr}
    1228:	e28dd00c 	add	sp, sp, #12
    122c:	e12fff1e 	bx	lr
    1230:	0000170c 	.word	0x0000170c

00001234 <free>:
    1234:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1238:	e28db000 	add	fp, sp, #0
    123c:	e24dd014 	sub	sp, sp, #20
    1240:	e50b0010 	str	r0, [fp, #-16]
    1244:	e51b3010 	ldr	r3, [fp, #-16]
    1248:	e2433008 	sub	r3, r3, #8
    124c:	e50b300c 	str	r3, [fp, #-12]
    1250:	e59f3154 	ldr	r3, [pc, #340]	@ 13ac <free+0x178>
    1254:	e5933000 	ldr	r3, [r3]
    1258:	e50b3008 	str	r3, [fp, #-8]
    125c:	ea000010 	b	12a4 <free+0x70>
    1260:	e51b3008 	ldr	r3, [fp, #-8]
    1264:	e5933000 	ldr	r3, [r3]
    1268:	e51b2008 	ldr	r2, [fp, #-8]
    126c:	e1520003 	cmp	r2, r3
    1270:	3a000008 	bcc	1298 <free+0x64>
    1274:	e51b200c 	ldr	r2, [fp, #-12]
    1278:	e51b3008 	ldr	r3, [fp, #-8]
    127c:	e1520003 	cmp	r2, r3
    1280:	8a000010 	bhi	12c8 <free+0x94>
    1284:	e51b3008 	ldr	r3, [fp, #-8]
    1288:	e5933000 	ldr	r3, [r3]
    128c:	e51b200c 	ldr	r2, [fp, #-12]
    1290:	e1520003 	cmp	r2, r3
    1294:	3a00000b 	bcc	12c8 <free+0x94>
    1298:	e51b3008 	ldr	r3, [fp, #-8]
    129c:	e5933000 	ldr	r3, [r3]
    12a0:	e50b3008 	str	r3, [fp, #-8]
    12a4:	e51b200c 	ldr	r2, [fp, #-12]
    12a8:	e51b3008 	ldr	r3, [fp, #-8]
    12ac:	e1520003 	cmp	r2, r3
    12b0:	9affffea 	bls	1260 <free+0x2c>
    12b4:	e51b3008 	ldr	r3, [fp, #-8]
    12b8:	e5933000 	ldr	r3, [r3]
    12bc:	e51b200c 	ldr	r2, [fp, #-12]
    12c0:	e1520003 	cmp	r2, r3
    12c4:	2affffe5 	bcs	1260 <free+0x2c>
    12c8:	e51b300c 	ldr	r3, [fp, #-12]
    12cc:	e5933004 	ldr	r3, [r3, #4]
    12d0:	e1a03183 	lsl	r3, r3, #3
    12d4:	e51b200c 	ldr	r2, [fp, #-12]
    12d8:	e0822003 	add	r2, r2, r3
    12dc:	e51b3008 	ldr	r3, [fp, #-8]
    12e0:	e5933000 	ldr	r3, [r3]
    12e4:	e1520003 	cmp	r2, r3
    12e8:	1a00000d 	bne	1324 <free+0xf0>
    12ec:	e51b300c 	ldr	r3, [fp, #-12]
    12f0:	e5932004 	ldr	r2, [r3, #4]
    12f4:	e51b3008 	ldr	r3, [fp, #-8]
    12f8:	e5933000 	ldr	r3, [r3]
    12fc:	e5933004 	ldr	r3, [r3, #4]
    1300:	e0822003 	add	r2, r2, r3
    1304:	e51b300c 	ldr	r3, [fp, #-12]
    1308:	e5832004 	str	r2, [r3, #4]
    130c:	e51b3008 	ldr	r3, [fp, #-8]
    1310:	e5933000 	ldr	r3, [r3]
    1314:	e5932000 	ldr	r2, [r3]
    1318:	e51b300c 	ldr	r3, [fp, #-12]
    131c:	e5832000 	str	r2, [r3]
    1320:	ea000003 	b	1334 <free+0x100>
    1324:	e51b3008 	ldr	r3, [fp, #-8]
    1328:	e5932000 	ldr	r2, [r3]
    132c:	e51b300c 	ldr	r3, [fp, #-12]
    1330:	e5832000 	str	r2, [r3]
    1334:	e51b3008 	ldr	r3, [fp, #-8]
    1338:	e5933004 	ldr	r3, [r3, #4]
    133c:	e1a03183 	lsl	r3, r3, #3
    1340:	e51b2008 	ldr	r2, [fp, #-8]
    1344:	e0823003 	add	r3, r2, r3
    1348:	e51b200c 	ldr	r2, [fp, #-12]
    134c:	e1520003 	cmp	r2, r3
    1350:	1a00000b 	bne	1384 <free+0x150>
    1354:	e51b3008 	ldr	r3, [fp, #-8]
    1358:	e5932004 	ldr	r2, [r3, #4]
    135c:	e51b300c 	ldr	r3, [fp, #-12]
    1360:	e5933004 	ldr	r3, [r3, #4]
    1364:	e0822003 	add	r2, r2, r3
    1368:	e51b3008 	ldr	r3, [fp, #-8]
    136c:	e5832004 	str	r2, [r3, #4]
    1370:	e51b300c 	ldr	r3, [fp, #-12]
    1374:	e5932000 	ldr	r2, [r3]
    1378:	e51b3008 	ldr	r3, [fp, #-8]
    137c:	e5832000 	str	r2, [r3]
    1380:	ea000002 	b	1390 <free+0x15c>
    1384:	e51b3008 	ldr	r3, [fp, #-8]
    1388:	e51b200c 	ldr	r2, [fp, #-12]
    138c:	e5832000 	str	r2, [r3]
    1390:	e59f2014 	ldr	r2, [pc, #20]	@ 13ac <free+0x178>
    1394:	e51b3008 	ldr	r3, [fp, #-8]
    1398:	e5823000 	str	r3, [r2]
    139c:	e1a00000 	nop			@ (mov r0, r0)
    13a0:	e28bd000 	add	sp, fp, #0
    13a4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    13a8:	e12fff1e 	bx	lr
    13ac:	00001730 	.word	0x00001730

000013b0 <morecore>:
    13b0:	e92d4800 	push	{fp, lr}
    13b4:	e28db004 	add	fp, sp, #4
    13b8:	e24dd010 	sub	sp, sp, #16
    13bc:	e50b0010 	str	r0, [fp, #-16]
    13c0:	e51b3010 	ldr	r3, [fp, #-16]
    13c4:	e3530a01 	cmp	r3, #4096	@ 0x1000
    13c8:	2a000001 	bcs	13d4 <morecore+0x24>
    13cc:	e3a03a01 	mov	r3, #4096	@ 0x1000
    13d0:	e50b3010 	str	r3, [fp, #-16]
    13d4:	e51b3010 	ldr	r3, [fp, #-16]
    13d8:	e1a03183 	lsl	r3, r3, #3
    13dc:	e1a00003 	mov	r0, r3
    13e0:	ebfffe07 	bl	c04 <sbrk>
    13e4:	e50b0008 	str	r0, [fp, #-8]
    13e8:	e51b3008 	ldr	r3, [fp, #-8]
    13ec:	e3730001 	cmn	r3, #1
    13f0:	1a000001 	bne	13fc <morecore+0x4c>
    13f4:	e3a03000 	mov	r3, #0
    13f8:	ea00000a 	b	1428 <morecore+0x78>
    13fc:	e51b3008 	ldr	r3, [fp, #-8]
    1400:	e50b300c 	str	r3, [fp, #-12]
    1404:	e51b300c 	ldr	r3, [fp, #-12]
    1408:	e51b2010 	ldr	r2, [fp, #-16]
    140c:	e5832004 	str	r2, [r3, #4]
    1410:	e51b300c 	ldr	r3, [fp, #-12]
    1414:	e2833008 	add	r3, r3, #8
    1418:	e1a00003 	mov	r0, r3
    141c:	ebffff84 	bl	1234 <free>
    1420:	e59f300c 	ldr	r3, [pc, #12]	@ 1434 <morecore+0x84>
    1424:	e5933000 	ldr	r3, [r3]
    1428:	e1a00003 	mov	r0, r3
    142c:	e24bd004 	sub	sp, fp, #4
    1430:	e8bd8800 	pop	{fp, pc}
    1434:	00001730 	.word	0x00001730

00001438 <malloc>:
    1438:	e92d4800 	push	{fp, lr}
    143c:	e28db004 	add	fp, sp, #4
    1440:	e24dd018 	sub	sp, sp, #24
    1444:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1448:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    144c:	e2833007 	add	r3, r3, #7
    1450:	e1a031a3 	lsr	r3, r3, #3
    1454:	e2833001 	add	r3, r3, #1
    1458:	e50b3010 	str	r3, [fp, #-16]
    145c:	e59f3134 	ldr	r3, [pc, #308]	@ 1598 <malloc+0x160>
    1460:	e5933000 	ldr	r3, [r3]
    1464:	e50b300c 	str	r3, [fp, #-12]
    1468:	e51b300c 	ldr	r3, [fp, #-12]
    146c:	e3530000 	cmp	r3, #0
    1470:	1a00000b 	bne	14a4 <malloc+0x6c>
    1474:	e59f3120 	ldr	r3, [pc, #288]	@ 159c <malloc+0x164>
    1478:	e50b300c 	str	r3, [fp, #-12]
    147c:	e59f2114 	ldr	r2, [pc, #276]	@ 1598 <malloc+0x160>
    1480:	e51b300c 	ldr	r3, [fp, #-12]
    1484:	e5823000 	str	r3, [r2]
    1488:	e59f3108 	ldr	r3, [pc, #264]	@ 1598 <malloc+0x160>
    148c:	e5933000 	ldr	r3, [r3]
    1490:	e59f2104 	ldr	r2, [pc, #260]	@ 159c <malloc+0x164>
    1494:	e5823000 	str	r3, [r2]
    1498:	e59f30fc 	ldr	r3, [pc, #252]	@ 159c <malloc+0x164>
    149c:	e3a02000 	mov	r2, #0
    14a0:	e5832004 	str	r2, [r3, #4]
    14a4:	e51b300c 	ldr	r3, [fp, #-12]
    14a8:	e5933000 	ldr	r3, [r3]
    14ac:	e50b3008 	str	r3, [fp, #-8]
    14b0:	e51b3008 	ldr	r3, [fp, #-8]
    14b4:	e5933004 	ldr	r3, [r3, #4]
    14b8:	e51b2010 	ldr	r2, [fp, #-16]
    14bc:	e1520003 	cmp	r2, r3
    14c0:	8a00001e 	bhi	1540 <malloc+0x108>
    14c4:	e51b3008 	ldr	r3, [fp, #-8]
    14c8:	e5933004 	ldr	r3, [r3, #4]
    14cc:	e51b2010 	ldr	r2, [fp, #-16]
    14d0:	e1520003 	cmp	r2, r3
    14d4:	1a000004 	bne	14ec <malloc+0xb4>
    14d8:	e51b3008 	ldr	r3, [fp, #-8]
    14dc:	e5932000 	ldr	r2, [r3]
    14e0:	e51b300c 	ldr	r3, [fp, #-12]
    14e4:	e5832000 	str	r2, [r3]
    14e8:	ea00000e 	b	1528 <malloc+0xf0>
    14ec:	e51b3008 	ldr	r3, [fp, #-8]
    14f0:	e5932004 	ldr	r2, [r3, #4]
    14f4:	e51b3010 	ldr	r3, [fp, #-16]
    14f8:	e0422003 	sub	r2, r2, r3
    14fc:	e51b3008 	ldr	r3, [fp, #-8]
    1500:	e5832004 	str	r2, [r3, #4]
    1504:	e51b3008 	ldr	r3, [fp, #-8]
    1508:	e5933004 	ldr	r3, [r3, #4]
    150c:	e1a03183 	lsl	r3, r3, #3
    1510:	e51b2008 	ldr	r2, [fp, #-8]
    1514:	e0823003 	add	r3, r2, r3
    1518:	e50b3008 	str	r3, [fp, #-8]
    151c:	e51b3008 	ldr	r3, [fp, #-8]
    1520:	e51b2010 	ldr	r2, [fp, #-16]
    1524:	e5832004 	str	r2, [r3, #4]
    1528:	e59f2068 	ldr	r2, [pc, #104]	@ 1598 <malloc+0x160>
    152c:	e51b300c 	ldr	r3, [fp, #-12]
    1530:	e5823000 	str	r3, [r2]
    1534:	e51b3008 	ldr	r3, [fp, #-8]
    1538:	e2833008 	add	r3, r3, #8
    153c:	ea000012 	b	158c <malloc+0x154>
    1540:	e59f3050 	ldr	r3, [pc, #80]	@ 1598 <malloc+0x160>
    1544:	e5933000 	ldr	r3, [r3]
    1548:	e51b2008 	ldr	r2, [fp, #-8]
    154c:	e1520003 	cmp	r2, r3
    1550:	1a000007 	bne	1574 <malloc+0x13c>
    1554:	e51b0010 	ldr	r0, [fp, #-16]
    1558:	ebffff94 	bl	13b0 <morecore>
    155c:	e50b0008 	str	r0, [fp, #-8]
    1560:	e51b3008 	ldr	r3, [fp, #-8]
    1564:	e3530000 	cmp	r3, #0
    1568:	1a000001 	bne	1574 <malloc+0x13c>
    156c:	e3a03000 	mov	r3, #0
    1570:	ea000005 	b	158c <malloc+0x154>
    1574:	e51b3008 	ldr	r3, [fp, #-8]
    1578:	e50b300c 	str	r3, [fp, #-12]
    157c:	e51b3008 	ldr	r3, [fp, #-8]
    1580:	e5933000 	ldr	r3, [r3]
    1584:	e50b3008 	str	r3, [fp, #-8]
    1588:	eaffffc8 	b	14b0 <malloc+0x78>
    158c:	e1a00003 	mov	r0, r3
    1590:	e24bd004 	sub	sp, fp, #4
    1594:	e8bd8800 	pop	{fp, pc}
    1598:	00001730 	.word	0x00001730
    159c:	00001728 	.word	0x00001728

000015a0 <__udivsi3>:
    15a0:	e2512001 	subs	r2, r1, #1
    15a4:	012fff1e 	bxeq	lr
    15a8:	3a000036 	bcc	1688 <__udivsi3+0xe8>
    15ac:	e1500001 	cmp	r0, r1
    15b0:	9a000022 	bls	1640 <__udivsi3+0xa0>
    15b4:	e1110002 	tst	r1, r2
    15b8:	0a000023 	beq	164c <__udivsi3+0xac>
    15bc:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    15c0:	01a01181 	lsleq	r1, r1, #3
    15c4:	03a03008 	moveq	r3, #8
    15c8:	13a03001 	movne	r3, #1
    15cc:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    15d0:	31510000 	cmpcc	r1, r0
    15d4:	31a01201 	lslcc	r1, r1, #4
    15d8:	31a03203 	lslcc	r3, r3, #4
    15dc:	3afffffa 	bcc	15cc <__udivsi3+0x2c>
    15e0:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    15e4:	31510000 	cmpcc	r1, r0
    15e8:	31a01081 	lslcc	r1, r1, #1
    15ec:	31a03083 	lslcc	r3, r3, #1
    15f0:	3afffffa 	bcc	15e0 <__udivsi3+0x40>
    15f4:	e3a02000 	mov	r2, #0
    15f8:	e1500001 	cmp	r0, r1
    15fc:	20400001 	subcs	r0, r0, r1
    1600:	21822003 	orrcs	r2, r2, r3
    1604:	e15000a1 	cmp	r0, r1, lsr #1
    1608:	204000a1 	subcs	r0, r0, r1, lsr #1
    160c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1610:	e1500121 	cmp	r0, r1, lsr #2
    1614:	20400121 	subcs	r0, r0, r1, lsr #2
    1618:	21822123 	orrcs	r2, r2, r3, lsr #2
    161c:	e15001a1 	cmp	r0, r1, lsr #3
    1620:	204001a1 	subcs	r0, r0, r1, lsr #3
    1624:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1628:	e3500000 	cmp	r0, #0
    162c:	11b03223 	lsrsne	r3, r3, #4
    1630:	11a01221 	lsrne	r1, r1, #4
    1634:	1affffef 	bne	15f8 <__udivsi3+0x58>
    1638:	e1a00002 	mov	r0, r2
    163c:	e12fff1e 	bx	lr
    1640:	03a00001 	moveq	r0, #1
    1644:	13a00000 	movne	r0, #0
    1648:	e12fff1e 	bx	lr
    164c:	e3510801 	cmp	r1, #65536	@ 0x10000
    1650:	21a01821 	lsrcs	r1, r1, #16
    1654:	23a02010 	movcs	r2, #16
    1658:	33a02000 	movcc	r2, #0
    165c:	e3510c01 	cmp	r1, #256	@ 0x100
    1660:	21a01421 	lsrcs	r1, r1, #8
    1664:	22822008 	addcs	r2, r2, #8
    1668:	e3510010 	cmp	r1, #16
    166c:	21a01221 	lsrcs	r1, r1, #4
    1670:	22822004 	addcs	r2, r2, #4
    1674:	e3510004 	cmp	r1, #4
    1678:	82822003 	addhi	r2, r2, #3
    167c:	908220a1 	addls	r2, r2, r1, lsr #1
    1680:	e1a00230 	lsr	r0, r0, r2
    1684:	e12fff1e 	bx	lr
    1688:	e3500000 	cmp	r0, #0
    168c:	13e00000 	mvnne	r0, #0
    1690:	ea000007 	b	16b4 <__aeabi_idiv0>

00001694 <__aeabi_uidivmod>:
    1694:	e3510000 	cmp	r1, #0
    1698:	0afffffa 	beq	1688 <__udivsi3+0xe8>
    169c:	e92d4003 	push	{r0, r1, lr}
    16a0:	ebffffbe 	bl	15a0 <__udivsi3>
    16a4:	e8bd4006 	pop	{r1, r2, lr}
    16a8:	e0030092 	mul	r3, r2, r0
    16ac:	e0411003 	sub	r1, r1, r3
    16b0:	e12fff1e 	bx	lr

000016b4 <__aeabi_idiv0>:
    16b4:	e12fff1e 	bx	lr
