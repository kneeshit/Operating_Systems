
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
      24:	eb0003bb 	bl	f18 <printf>
      28:	e51b3010 	ldr	r3, [fp, #-16]
      2c:	e50b3008 	str	r3, [fp, #-8]
      30:	e51b3008 	ldr	r3, [fp, #-8]
      34:	e5933000 	ldr	r3, [r3]
      38:	e2832001 	add	r2, r3, #1
      3c:	e51b3008 	ldr	r3, [fp, #-8]
      40:	e5832000 	str	r2, [r3]
      44:	eb00021c 	bl	8bc <exit>
      48:	000015d4 	.word	0x000015d4

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
      70:	eb0003a8 	bl	f18 <printf>
      74:	eb0002fa 	bl	c64 <thread_exit>
      78:	e3a03000 	mov	r3, #0
      7c:	e1a00003 	mov	r0, r3
      80:	e24bd004 	sub	sp, fp, #4
      84:	e8bd8800 	pop	{fp, pc}
      88:	000015ec 	.word	0x000015ec

0000008c <main>:
      8c:	e92d4800 	push	{fp, lr}
      90:	e28db004 	add	fp, sp, #4
      94:	e24dd010 	sub	sp, sp, #16
      98:	e59f1064 	ldr	r1, [pc, #100]	@ 104 <main+0x78>
      9c:	e3a00001 	mov	r0, #1
      a0:	eb00039c 	bl	f18 <printf>
      a4:	e3a0300a 	mov	r3, #10
      a8:	e50b3008 	str	r3, [fp, #-8]
      ac:	e24b2008 	sub	r2, fp, #8
      b0:	e24b300c 	sub	r3, fp, #12
      b4:	e59f104c 	ldr	r1, [pc, #76]	@ 108 <main+0x7c>
      b8:	e1a00003 	mov	r0, r3
      bc:	eb0002df 	bl	c40 <thread_create>
      c0:	e24b2008 	sub	r2, fp, #8
      c4:	e24b3010 	sub	r3, fp, #16
      c8:	e59f103c 	ldr	r1, [pc, #60]	@ 10c <main+0x80>
      cc:	e1a00003 	mov	r0, r3
      d0:	eb0002da 	bl	c40 <thread_create>
      d4:	e51b3010 	ldr	r3, [fp, #-16]
      d8:	e1a00003 	mov	r0, r3
      dc:	eb0002e9 	bl	c88 <thread_join>
      e0:	e51b300c 	ldr	r3, [fp, #-12]
      e4:	e1a00003 	mov	r0, r3
      e8:	eb0002e6 	bl	c88 <thread_join>
      ec:	e51b3008 	ldr	r3, [fp, #-8]
      f0:	e1a02003 	mov	r2, r3
      f4:	e59f1014 	ldr	r1, [pc, #20]	@ 110 <main+0x84>
      f8:	e3a00001 	mov	r0, #1
      fc:	eb000385 	bl	f18 <printf>
     100:	eb0001ed 	bl	8bc <exit>
     104:	00001604 	.word	0x00001604
     108:	00000000 	.word	0x00000000
     10c:	0000004c 	.word	0x0000004c
     110:	00001614 	.word	0x00001614

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
     408:	eb000146 	bl	928 <read>
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
     4b0:	eb000149 	bl	9dc <open>
     4b4:	e50b0008 	str	r0, [fp, #-8]
     4b8:	e51b3008 	ldr	r3, [fp, #-8]
     4bc:	e3530000 	cmp	r3, #0
     4c0:	aa000001 	bge	4cc <stat+0x38>
     4c4:	e3e03000 	mvn	r3, #0
     4c8:	ea000006 	b	4e8 <stat+0x54>
     4cc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     4d0:	e51b0008 	ldr	r0, [fp, #-8]
     4d4:	eb00015b 	bl	a48 <fstat>
     4d8:	e50b000c 	str	r0, [fp, #-12]
     4dc:	e51b0008 	ldr	r0, [fp, #-8]
     4e0:	eb000122 	bl	970 <close>
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

0000063c <acquireLock>:
     63c:	e92d4800 	push	{fp, lr}
     640:	e28db004 	add	fp, sp, #4
     644:	e24dd008 	sub	sp, sp, #8
     648:	e50b0008 	str	r0, [fp, #-8]
     64c:	ea000001 	b	658 <acquireLock+0x1c>
     650:	e3a00001 	mov	r0, #1
     654:	eb00013a 	bl	b44 <sleep>
     658:	e51b2008 	ldr	r2, [fp, #-8]
     65c:	e3a01001 	mov	r1, #1
     660:	e1923f9f 	ldrex	r3, [r2]
     664:	e1820f91 	strex	r0, r1, [r2]
     668:	e3500000 	cmp	r0, #0
     66c:	1afffffb 	bne	660 <acquireLock+0x24>
     670:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     674:	e3530001 	cmp	r3, #1
     678:	0afffff4 	beq	650 <acquireLock+0x14>
     67c:	e1a00000 	nop			@ (mov r0, r0)
     680:	e1a00000 	nop			@ (mov r0, r0)
     684:	e24bd004 	sub	sp, fp, #4
     688:	e8bd8800 	pop	{fp, pc}

0000068c <releaseLock>:
     68c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     690:	e28db000 	add	fp, sp, #0
     694:	e24dd00c 	sub	sp, sp, #12
     698:	e50b0008 	str	r0, [fp, #-8]
     69c:	e51b3008 	ldr	r3, [fp, #-8]
     6a0:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     6a4:	e3a02000 	mov	r2, #0
     6a8:	e5832000 	str	r2, [r3]
     6ac:	e1a00000 	nop			@ (mov r0, r0)
     6b0:	e28bd000 	add	sp, fp, #0
     6b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6b8:	e12fff1e 	bx	lr

000006bc <initiateCondVar>:
     6bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6c0:	e28db000 	add	fp, sp, #0
     6c4:	e24dd00c 	sub	sp, sp, #12
     6c8:	e50b0008 	str	r0, [fp, #-8]
     6cc:	e51b3008 	ldr	r3, [fp, #-8]
     6d0:	e3a02000 	mov	r2, #0
     6d4:	e5832000 	str	r2, [r3]
     6d8:	e51b3008 	ldr	r3, [fp, #-8]
     6dc:	e3a02001 	mov	r2, #1
     6e0:	e5832004 	str	r2, [r3, #4]
     6e4:	e1a00000 	nop			@ (mov r0, r0)
     6e8:	e28bd000 	add	sp, fp, #0
     6ec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6f0:	e12fff1e 	bx	lr

000006f4 <condWait>:
     6f4:	e92d4800 	push	{fp, lr}
     6f8:	e28db004 	add	fp, sp, #4
     6fc:	e24dd008 	sub	sp, sp, #8
     700:	e50b0008 	str	r0, [fp, #-8]
     704:	e50b100c 	str	r1, [fp, #-12]
     708:	e51b000c 	ldr	r0, [fp, #-12]
     70c:	ebffffde 	bl	68c <releaseLock>
     710:	e51b3008 	ldr	r3, [fp, #-8]
     714:	e5933000 	ldr	r3, [r3]
     718:	e1a00003 	mov	r0, r3
     71c:	eb00017d 	bl	d18 <sleepChan>
     720:	e51b000c 	ldr	r0, [fp, #-12]
     724:	ebffffc4 	bl	63c <acquireLock>
     728:	e1a00000 	nop			@ (mov r0, r0)
     72c:	e24bd004 	sub	sp, fp, #4
     730:	e8bd8800 	pop	{fp, pc}

00000734 <broadcast>:
     734:	e92d4800 	push	{fp, lr}
     738:	e28db004 	add	fp, sp, #4
     73c:	e24dd008 	sub	sp, sp, #8
     740:	e50b0008 	str	r0, [fp, #-8]
     744:	e51b3008 	ldr	r3, [fp, #-8]
     748:	e5933000 	ldr	r3, [r3]
     74c:	e1a00003 	mov	r0, r3
     750:	eb000182 	bl	d60 <sigChan>
     754:	e1a00000 	nop			@ (mov r0, r0)
     758:	e24bd004 	sub	sp, fp, #4
     75c:	e8bd8800 	pop	{fp, pc}

00000760 <semInit>:
     760:	e92d4800 	push	{fp, lr}
     764:	e28db004 	add	fp, sp, #4
     768:	e24dd008 	sub	sp, sp, #8
     76c:	e50b0008 	str	r0, [fp, #-8]
     770:	e50b100c 	str	r1, [fp, #-12]
     774:	e51b3008 	ldr	r3, [fp, #-8]
     778:	e51b200c 	ldr	r2, [fp, #-12]
     77c:	e5832000 	str	r2, [r3]
     780:	e51b3008 	ldr	r3, [fp, #-8]
     784:	e2833004 	add	r3, r3, #4
     788:	e1a00003 	mov	r0, r3
     78c:	ebffff9c 	bl	604 <initiateLock>
     790:	e51b3008 	ldr	r3, [fp, #-8]
     794:	e283300c 	add	r3, r3, #12
     798:	e1a00003 	mov	r0, r3
     79c:	ebffffc6 	bl	6bc <initiateCondVar>
     7a0:	e51b3008 	ldr	r3, [fp, #-8]
     7a4:	e3a02001 	mov	r2, #1
     7a8:	e5832014 	str	r2, [r3, #20]
     7ac:	e1a00000 	nop			@ (mov r0, r0)
     7b0:	e24bd004 	sub	sp, fp, #4
     7b4:	e8bd8800 	pop	{fp, pc}

000007b8 <semUp>:
     7b8:	e92d4800 	push	{fp, lr}
     7bc:	e28db004 	add	fp, sp, #4
     7c0:	e24dd008 	sub	sp, sp, #8
     7c4:	e50b0008 	str	r0, [fp, #-8]
     7c8:	e51b3008 	ldr	r3, [fp, #-8]
     7cc:	e2833004 	add	r3, r3, #4
     7d0:	e1a00003 	mov	r0, r3
     7d4:	ebffff98 	bl	63c <acquireLock>
     7d8:	e51b3008 	ldr	r3, [fp, #-8]
     7dc:	e5933000 	ldr	r3, [r3]
     7e0:	e2832001 	add	r2, r3, #1
     7e4:	e51b3008 	ldr	r3, [fp, #-8]
     7e8:	e5832000 	str	r2, [r3]
     7ec:	e51b3008 	ldr	r3, [fp, #-8]
     7f0:	e283300c 	add	r3, r3, #12
     7f4:	e1a00003 	mov	r0, r3
     7f8:	ebffffcd 	bl	734 <broadcast>
     7fc:	e51b3008 	ldr	r3, [fp, #-8]
     800:	e2833004 	add	r3, r3, #4
     804:	e1a00003 	mov	r0, r3
     808:	ebffff9f 	bl	68c <releaseLock>
     80c:	e1a00000 	nop			@ (mov r0, r0)
     810:	e24bd004 	sub	sp, fp, #4
     814:	e8bd8800 	pop	{fp, pc}

00000818 <semDown>:
     818:	e92d4800 	push	{fp, lr}
     81c:	e28db004 	add	fp, sp, #4
     820:	e24dd008 	sub	sp, sp, #8
     824:	e50b0008 	str	r0, [fp, #-8]
     828:	e51b3008 	ldr	r3, [fp, #-8]
     82c:	e2833004 	add	r3, r3, #4
     830:	e1a00003 	mov	r0, r3
     834:	ebffff80 	bl	63c <acquireLock>
     838:	ea000006 	b	858 <semDown+0x40>
     83c:	e51b3008 	ldr	r3, [fp, #-8]
     840:	e283200c 	add	r2, r3, #12
     844:	e51b3008 	ldr	r3, [fp, #-8]
     848:	e2833004 	add	r3, r3, #4
     84c:	e1a01003 	mov	r1, r3
     850:	e1a00002 	mov	r0, r2
     854:	ebffffa6 	bl	6f4 <condWait>
     858:	e51b3008 	ldr	r3, [fp, #-8]
     85c:	e5933000 	ldr	r3, [r3]
     860:	e3530000 	cmp	r3, #0
     864:	dafffff4 	ble	83c <semDown+0x24>
     868:	e51b3008 	ldr	r3, [fp, #-8]
     86c:	e5933000 	ldr	r3, [r3]
     870:	e2432001 	sub	r2, r3, #1
     874:	e51b3008 	ldr	r3, [fp, #-8]
     878:	e5832000 	str	r2, [r3]
     87c:	e51b3008 	ldr	r3, [fp, #-8]
     880:	e2833004 	add	r3, r3, #4
     884:	e1a00003 	mov	r0, r3
     888:	ebffff7f 	bl	68c <releaseLock>
     88c:	e1a00000 	nop			@ (mov r0, r0)
     890:	e24bd004 	sub	sp, fp, #4
     894:	e8bd8800 	pop	{fp, pc}

00000898 <fork>:
     898:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     89c:	e1a04003 	mov	r4, r3
     8a0:	e1a03002 	mov	r3, r2
     8a4:	e1a02001 	mov	r2, r1
     8a8:	e1a01000 	mov	r1, r0
     8ac:	e3a00001 	mov	r0, #1
     8b0:	ef000000 	svc	0x00000000
     8b4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8b8:	e12fff1e 	bx	lr

000008bc <exit>:
     8bc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8c0:	e1a04003 	mov	r4, r3
     8c4:	e1a03002 	mov	r3, r2
     8c8:	e1a02001 	mov	r2, r1
     8cc:	e1a01000 	mov	r1, r0
     8d0:	e3a00002 	mov	r0, #2
     8d4:	ef000000 	svc	0x00000000
     8d8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8dc:	e12fff1e 	bx	lr

000008e0 <wait>:
     8e0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8e4:	e1a04003 	mov	r4, r3
     8e8:	e1a03002 	mov	r3, r2
     8ec:	e1a02001 	mov	r2, r1
     8f0:	e1a01000 	mov	r1, r0
     8f4:	e3a00003 	mov	r0, #3
     8f8:	ef000000 	svc	0x00000000
     8fc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     900:	e12fff1e 	bx	lr

00000904 <pipe>:
     904:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     908:	e1a04003 	mov	r4, r3
     90c:	e1a03002 	mov	r3, r2
     910:	e1a02001 	mov	r2, r1
     914:	e1a01000 	mov	r1, r0
     918:	e3a00004 	mov	r0, #4
     91c:	ef000000 	svc	0x00000000
     920:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     924:	e12fff1e 	bx	lr

00000928 <read>:
     928:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     92c:	e1a04003 	mov	r4, r3
     930:	e1a03002 	mov	r3, r2
     934:	e1a02001 	mov	r2, r1
     938:	e1a01000 	mov	r1, r0
     93c:	e3a00005 	mov	r0, #5
     940:	ef000000 	svc	0x00000000
     944:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     948:	e12fff1e 	bx	lr

0000094c <write>:
     94c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     950:	e1a04003 	mov	r4, r3
     954:	e1a03002 	mov	r3, r2
     958:	e1a02001 	mov	r2, r1
     95c:	e1a01000 	mov	r1, r0
     960:	e3a00010 	mov	r0, #16
     964:	ef000000 	svc	0x00000000
     968:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     96c:	e12fff1e 	bx	lr

00000970 <close>:
     970:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     974:	e1a04003 	mov	r4, r3
     978:	e1a03002 	mov	r3, r2
     97c:	e1a02001 	mov	r2, r1
     980:	e1a01000 	mov	r1, r0
     984:	e3a00015 	mov	r0, #21
     988:	ef000000 	svc	0x00000000
     98c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     990:	e12fff1e 	bx	lr

00000994 <kill>:
     994:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     998:	e1a04003 	mov	r4, r3
     99c:	e1a03002 	mov	r3, r2
     9a0:	e1a02001 	mov	r2, r1
     9a4:	e1a01000 	mov	r1, r0
     9a8:	e3a00006 	mov	r0, #6
     9ac:	ef000000 	svc	0x00000000
     9b0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9b4:	e12fff1e 	bx	lr

000009b8 <exec>:
     9b8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9bc:	e1a04003 	mov	r4, r3
     9c0:	e1a03002 	mov	r3, r2
     9c4:	e1a02001 	mov	r2, r1
     9c8:	e1a01000 	mov	r1, r0
     9cc:	e3a00007 	mov	r0, #7
     9d0:	ef000000 	svc	0x00000000
     9d4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9d8:	e12fff1e 	bx	lr

000009dc <open>:
     9dc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9e0:	e1a04003 	mov	r4, r3
     9e4:	e1a03002 	mov	r3, r2
     9e8:	e1a02001 	mov	r2, r1
     9ec:	e1a01000 	mov	r1, r0
     9f0:	e3a0000f 	mov	r0, #15
     9f4:	ef000000 	svc	0x00000000
     9f8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9fc:	e12fff1e 	bx	lr

00000a00 <mknod>:
     a00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a04:	e1a04003 	mov	r4, r3
     a08:	e1a03002 	mov	r3, r2
     a0c:	e1a02001 	mov	r2, r1
     a10:	e1a01000 	mov	r1, r0
     a14:	e3a00011 	mov	r0, #17
     a18:	ef000000 	svc	0x00000000
     a1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a20:	e12fff1e 	bx	lr

00000a24 <unlink>:
     a24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a28:	e1a04003 	mov	r4, r3
     a2c:	e1a03002 	mov	r3, r2
     a30:	e1a02001 	mov	r2, r1
     a34:	e1a01000 	mov	r1, r0
     a38:	e3a00012 	mov	r0, #18
     a3c:	ef000000 	svc	0x00000000
     a40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a44:	e12fff1e 	bx	lr

00000a48 <fstat>:
     a48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a4c:	e1a04003 	mov	r4, r3
     a50:	e1a03002 	mov	r3, r2
     a54:	e1a02001 	mov	r2, r1
     a58:	e1a01000 	mov	r1, r0
     a5c:	e3a00008 	mov	r0, #8
     a60:	ef000000 	svc	0x00000000
     a64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a68:	e12fff1e 	bx	lr

00000a6c <link>:
     a6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a70:	e1a04003 	mov	r4, r3
     a74:	e1a03002 	mov	r3, r2
     a78:	e1a02001 	mov	r2, r1
     a7c:	e1a01000 	mov	r1, r0
     a80:	e3a00013 	mov	r0, #19
     a84:	ef000000 	svc	0x00000000
     a88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a8c:	e12fff1e 	bx	lr

00000a90 <mkdir>:
     a90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a94:	e1a04003 	mov	r4, r3
     a98:	e1a03002 	mov	r3, r2
     a9c:	e1a02001 	mov	r2, r1
     aa0:	e1a01000 	mov	r1, r0
     aa4:	e3a00014 	mov	r0, #20
     aa8:	ef000000 	svc	0x00000000
     aac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ab0:	e12fff1e 	bx	lr

00000ab4 <chdir>:
     ab4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ab8:	e1a04003 	mov	r4, r3
     abc:	e1a03002 	mov	r3, r2
     ac0:	e1a02001 	mov	r2, r1
     ac4:	e1a01000 	mov	r1, r0
     ac8:	e3a00009 	mov	r0, #9
     acc:	ef000000 	svc	0x00000000
     ad0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ad4:	e12fff1e 	bx	lr

00000ad8 <dup>:
     ad8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     adc:	e1a04003 	mov	r4, r3
     ae0:	e1a03002 	mov	r3, r2
     ae4:	e1a02001 	mov	r2, r1
     ae8:	e1a01000 	mov	r1, r0
     aec:	e3a0000a 	mov	r0, #10
     af0:	ef000000 	svc	0x00000000
     af4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     af8:	e12fff1e 	bx	lr

00000afc <getpid>:
     afc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b00:	e1a04003 	mov	r4, r3
     b04:	e1a03002 	mov	r3, r2
     b08:	e1a02001 	mov	r2, r1
     b0c:	e1a01000 	mov	r1, r0
     b10:	e3a0000b 	mov	r0, #11
     b14:	ef000000 	svc	0x00000000
     b18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b1c:	e12fff1e 	bx	lr

00000b20 <sbrk>:
     b20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b24:	e1a04003 	mov	r4, r3
     b28:	e1a03002 	mov	r3, r2
     b2c:	e1a02001 	mov	r2, r1
     b30:	e1a01000 	mov	r1, r0
     b34:	e3a0000c 	mov	r0, #12
     b38:	ef000000 	svc	0x00000000
     b3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b40:	e12fff1e 	bx	lr

00000b44 <sleep>:
     b44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b48:	e1a04003 	mov	r4, r3
     b4c:	e1a03002 	mov	r3, r2
     b50:	e1a02001 	mov	r2, r1
     b54:	e1a01000 	mov	r1, r0
     b58:	e3a0000d 	mov	r0, #13
     b5c:	ef000000 	svc	0x00000000
     b60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b64:	e12fff1e 	bx	lr

00000b68 <uptime>:
     b68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b6c:	e1a04003 	mov	r4, r3
     b70:	e1a03002 	mov	r3, r2
     b74:	e1a02001 	mov	r2, r1
     b78:	e1a01000 	mov	r1, r0
     b7c:	e3a0000e 	mov	r0, #14
     b80:	ef000000 	svc	0x00000000
     b84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b88:	e12fff1e 	bx	lr

00000b8c <getprocs>:
     b8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b90:	e1a04003 	mov	r4, r3
     b94:	e1a03002 	mov	r3, r2
     b98:	e1a02001 	mov	r2, r1
     b9c:	e1a01000 	mov	r1, r0
     ba0:	e3a00016 	mov	r0, #22
     ba4:	ef000000 	svc	0x00000000
     ba8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bac:	e12fff1e 	bx	lr

00000bb0 <settickets>:
     bb0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bb4:	e1a04003 	mov	r4, r3
     bb8:	e1a03002 	mov	r3, r2
     bbc:	e1a02001 	mov	r2, r1
     bc0:	e1a01000 	mov	r1, r0
     bc4:	e3a00017 	mov	r0, #23
     bc8:	ef000000 	svc	0x00000000
     bcc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bd0:	e12fff1e 	bx	lr

00000bd4 <srand>:
     bd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bd8:	e1a04003 	mov	r4, r3
     bdc:	e1a03002 	mov	r3, r2
     be0:	e1a02001 	mov	r2, r1
     be4:	e1a01000 	mov	r1, r0
     be8:	e3a00018 	mov	r0, #24
     bec:	ef000000 	svc	0x00000000
     bf0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bf4:	e12fff1e 	bx	lr

00000bf8 <getpinfo>:
     bf8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bfc:	e1a04003 	mov	r4, r3
     c00:	e1a03002 	mov	r3, r2
     c04:	e1a02001 	mov	r2, r1
     c08:	e1a01000 	mov	r1, r0
     c0c:	e3a00019 	mov	r0, #25
     c10:	ef000000 	svc	0x00000000
     c14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c18:	e12fff1e 	bx	lr

00000c1c <dumppagetable>:
     c1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c20:	e1a04003 	mov	r4, r3
     c24:	e1a03002 	mov	r3, r2
     c28:	e1a02001 	mov	r2, r1
     c2c:	e1a01000 	mov	r1, r0
     c30:	e3a0001a 	mov	r0, #26
     c34:	ef000000 	svc	0x00000000
     c38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c3c:	e12fff1e 	bx	lr

00000c40 <thread_create>:
     c40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c44:	e1a04003 	mov	r4, r3
     c48:	e1a03002 	mov	r3, r2
     c4c:	e1a02001 	mov	r2, r1
     c50:	e1a01000 	mov	r1, r0
     c54:	e3a0001b 	mov	r0, #27
     c58:	ef000000 	svc	0x00000000
     c5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c60:	e12fff1e 	bx	lr

00000c64 <thread_exit>:
     c64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c68:	e1a04003 	mov	r4, r3
     c6c:	e1a03002 	mov	r3, r2
     c70:	e1a02001 	mov	r2, r1
     c74:	e1a01000 	mov	r1, r0
     c78:	e3a0001c 	mov	r0, #28
     c7c:	ef000000 	svc	0x00000000
     c80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c84:	e12fff1e 	bx	lr

00000c88 <thread_join>:
     c88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c8c:	e1a04003 	mov	r4, r3
     c90:	e1a03002 	mov	r3, r2
     c94:	e1a02001 	mov	r2, r1
     c98:	e1a01000 	mov	r1, r0
     c9c:	e3a0001d 	mov	r0, #29
     ca0:	ef000000 	svc	0x00000000
     ca4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ca8:	e12fff1e 	bx	lr

00000cac <waitpid>:
     cac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cb0:	e1a04003 	mov	r4, r3
     cb4:	e1a03002 	mov	r3, r2
     cb8:	e1a02001 	mov	r2, r1
     cbc:	e1a01000 	mov	r1, r0
     cc0:	e3a0001e 	mov	r0, #30
     cc4:	ef000000 	svc	0x00000000
     cc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ccc:	e12fff1e 	bx	lr

00000cd0 <barrier_init>:
     cd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cd4:	e1a04003 	mov	r4, r3
     cd8:	e1a03002 	mov	r3, r2
     cdc:	e1a02001 	mov	r2, r1
     ce0:	e1a01000 	mov	r1, r0
     ce4:	e3a0001f 	mov	r0, #31
     ce8:	ef000000 	svc	0x00000000
     cec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cf0:	e12fff1e 	bx	lr

00000cf4 <barrier_check>:
     cf4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cf8:	e1a04003 	mov	r4, r3
     cfc:	e1a03002 	mov	r3, r2
     d00:	e1a02001 	mov	r2, r1
     d04:	e1a01000 	mov	r1, r0
     d08:	e3a00020 	mov	r0, #32
     d0c:	ef000000 	svc	0x00000000
     d10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d14:	e12fff1e 	bx	lr

00000d18 <sleepChan>:
     d18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d1c:	e1a04003 	mov	r4, r3
     d20:	e1a03002 	mov	r3, r2
     d24:	e1a02001 	mov	r2, r1
     d28:	e1a01000 	mov	r1, r0
     d2c:	e3a00024 	mov	r0, #36	@ 0x24
     d30:	ef000000 	svc	0x00000000
     d34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d38:	e12fff1e 	bx	lr

00000d3c <getChannel>:
     d3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d40:	e1a04003 	mov	r4, r3
     d44:	e1a03002 	mov	r3, r2
     d48:	e1a02001 	mov	r2, r1
     d4c:	e1a01000 	mov	r1, r0
     d50:	e3a00025 	mov	r0, #37	@ 0x25
     d54:	ef000000 	svc	0x00000000
     d58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d5c:	e12fff1e 	bx	lr

00000d60 <sigChan>:
     d60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d64:	e1a04003 	mov	r4, r3
     d68:	e1a03002 	mov	r3, r2
     d6c:	e1a02001 	mov	r2, r1
     d70:	e1a01000 	mov	r1, r0
     d74:	e3a00026 	mov	r0, #38	@ 0x26
     d78:	ef000000 	svc	0x00000000
     d7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d80:	e12fff1e 	bx	lr

00000d84 <sigOneChan>:
     d84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d88:	e1a04003 	mov	r4, r3
     d8c:	e1a03002 	mov	r3, r2
     d90:	e1a02001 	mov	r2, r1
     d94:	e1a01000 	mov	r1, r0
     d98:	e3a00027 	mov	r0, #39	@ 0x27
     d9c:	ef000000 	svc	0x00000000
     da0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     da4:	e12fff1e 	bx	lr

00000da8 <putc>:
     da8:	e92d4800 	push	{fp, lr}
     dac:	e28db004 	add	fp, sp, #4
     db0:	e24dd008 	sub	sp, sp, #8
     db4:	e50b0008 	str	r0, [fp, #-8]
     db8:	e1a03001 	mov	r3, r1
     dbc:	e54b3009 	strb	r3, [fp, #-9]
     dc0:	e24b3009 	sub	r3, fp, #9
     dc4:	e3a02001 	mov	r2, #1
     dc8:	e1a01003 	mov	r1, r3
     dcc:	e51b0008 	ldr	r0, [fp, #-8]
     dd0:	ebfffedd 	bl	94c <write>
     dd4:	e1a00000 	nop			@ (mov r0, r0)
     dd8:	e24bd004 	sub	sp, fp, #4
     ddc:	e8bd8800 	pop	{fp, pc}

00000de0 <printint>:
     de0:	e92d4800 	push	{fp, lr}
     de4:	e28db004 	add	fp, sp, #4
     de8:	e24dd030 	sub	sp, sp, #48	@ 0x30
     dec:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     df0:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     df4:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     df8:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     dfc:	e3a03000 	mov	r3, #0
     e00:	e50b300c 	str	r3, [fp, #-12]
     e04:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     e08:	e3530000 	cmp	r3, #0
     e0c:	0a000008 	beq	e34 <printint+0x54>
     e10:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e14:	e3530000 	cmp	r3, #0
     e18:	aa000005 	bge	e34 <printint+0x54>
     e1c:	e3a03001 	mov	r3, #1
     e20:	e50b300c 	str	r3, [fp, #-12]
     e24:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e28:	e2633000 	rsb	r3, r3, #0
     e2c:	e50b3010 	str	r3, [fp, #-16]
     e30:	ea000001 	b	e3c <printint+0x5c>
     e34:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e38:	e50b3010 	str	r3, [fp, #-16]
     e3c:	e3a03000 	mov	r3, #0
     e40:	e50b3008 	str	r3, [fp, #-8]
     e44:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     e48:	e51b3010 	ldr	r3, [fp, #-16]
     e4c:	e1a01002 	mov	r1, r2
     e50:	e1a00003 	mov	r0, r3
     e54:	eb0001d5 	bl	15b0 <__aeabi_uidivmod>
     e58:	e1a03001 	mov	r3, r1
     e5c:	e1a01003 	mov	r1, r3
     e60:	e51b3008 	ldr	r3, [fp, #-8]
     e64:	e2832001 	add	r2, r3, #1
     e68:	e50b2008 	str	r2, [fp, #-8]
     e6c:	e59f20a0 	ldr	r2, [pc, #160]	@ f14 <printint+0x134>
     e70:	e7d22001 	ldrb	r2, [r2, r1]
     e74:	e2433004 	sub	r3, r3, #4
     e78:	e083300b 	add	r3, r3, fp
     e7c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     e80:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     e84:	e1a01003 	mov	r1, r3
     e88:	e51b0010 	ldr	r0, [fp, #-16]
     e8c:	eb00018a 	bl	14bc <__udivsi3>
     e90:	e1a03000 	mov	r3, r0
     e94:	e50b3010 	str	r3, [fp, #-16]
     e98:	e51b3010 	ldr	r3, [fp, #-16]
     e9c:	e3530000 	cmp	r3, #0
     ea0:	1affffe7 	bne	e44 <printint+0x64>
     ea4:	e51b300c 	ldr	r3, [fp, #-12]
     ea8:	e3530000 	cmp	r3, #0
     eac:	0a00000e 	beq	eec <printint+0x10c>
     eb0:	e51b3008 	ldr	r3, [fp, #-8]
     eb4:	e2832001 	add	r2, r3, #1
     eb8:	e50b2008 	str	r2, [fp, #-8]
     ebc:	e2433004 	sub	r3, r3, #4
     ec0:	e083300b 	add	r3, r3, fp
     ec4:	e3a0202d 	mov	r2, #45	@ 0x2d
     ec8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ecc:	ea000006 	b	eec <printint+0x10c>
     ed0:	e24b2020 	sub	r2, fp, #32
     ed4:	e51b3008 	ldr	r3, [fp, #-8]
     ed8:	e0823003 	add	r3, r2, r3
     edc:	e5d33000 	ldrb	r3, [r3]
     ee0:	e1a01003 	mov	r1, r3
     ee4:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     ee8:	ebffffae 	bl	da8 <putc>
     eec:	e51b3008 	ldr	r3, [fp, #-8]
     ef0:	e2433001 	sub	r3, r3, #1
     ef4:	e50b3008 	str	r3, [fp, #-8]
     ef8:	e51b3008 	ldr	r3, [fp, #-8]
     efc:	e3530000 	cmp	r3, #0
     f00:	aafffff2 	bge	ed0 <printint+0xf0>
     f04:	e1a00000 	nop			@ (mov r0, r0)
     f08:	e1a00000 	nop			@ (mov r0, r0)
     f0c:	e24bd004 	sub	sp, fp, #4
     f10:	e8bd8800 	pop	{fp, pc}
     f14:	00001630 	.word	0x00001630

00000f18 <printf>:
     f18:	e92d000e 	push	{r1, r2, r3}
     f1c:	e92d4800 	push	{fp, lr}
     f20:	e28db004 	add	fp, sp, #4
     f24:	e24dd024 	sub	sp, sp, #36	@ 0x24
     f28:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     f2c:	e3a03000 	mov	r3, #0
     f30:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f34:	e28b3008 	add	r3, fp, #8
     f38:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f3c:	e3a03000 	mov	r3, #0
     f40:	e50b3010 	str	r3, [fp, #-16]
     f44:	ea000074 	b	111c <printf+0x204>
     f48:	e59b2004 	ldr	r2, [fp, #4]
     f4c:	e51b3010 	ldr	r3, [fp, #-16]
     f50:	e0823003 	add	r3, r2, r3
     f54:	e5d33000 	ldrb	r3, [r3]
     f58:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     f5c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     f60:	e3530000 	cmp	r3, #0
     f64:	1a00000b 	bne	f98 <printf+0x80>
     f68:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f6c:	e3530025 	cmp	r3, #37	@ 0x25
     f70:	1a000002 	bne	f80 <printf+0x68>
     f74:	e3a03025 	mov	r3, #37	@ 0x25
     f78:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f7c:	ea000063 	b	1110 <printf+0x1f8>
     f80:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f84:	e6ef3073 	uxtb	r3, r3
     f88:	e1a01003 	mov	r1, r3
     f8c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f90:	ebffff84 	bl	da8 <putc>
     f94:	ea00005d 	b	1110 <printf+0x1f8>
     f98:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     f9c:	e3530025 	cmp	r3, #37	@ 0x25
     fa0:	1a00005a 	bne	1110 <printf+0x1f8>
     fa4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fa8:	e3530064 	cmp	r3, #100	@ 0x64
     fac:	1a00000a 	bne	fdc <printf+0xc4>
     fb0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fb4:	e5933000 	ldr	r3, [r3]
     fb8:	e1a01003 	mov	r1, r3
     fbc:	e3a03001 	mov	r3, #1
     fc0:	e3a0200a 	mov	r2, #10
     fc4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fc8:	ebffff84 	bl	de0 <printint>
     fcc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fd0:	e2833004 	add	r3, r3, #4
     fd4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fd8:	ea00004a 	b	1108 <printf+0x1f0>
     fdc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fe0:	e3530078 	cmp	r3, #120	@ 0x78
     fe4:	0a000002 	beq	ff4 <printf+0xdc>
     fe8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fec:	e3530070 	cmp	r3, #112	@ 0x70
     ff0:	1a00000a 	bne	1020 <printf+0x108>
     ff4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ff8:	e5933000 	ldr	r3, [r3]
     ffc:	e1a01003 	mov	r1, r3
    1000:	e3a03000 	mov	r3, #0
    1004:	e3a02010 	mov	r2, #16
    1008:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    100c:	ebffff73 	bl	de0 <printint>
    1010:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1014:	e2833004 	add	r3, r3, #4
    1018:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    101c:	ea000039 	b	1108 <printf+0x1f0>
    1020:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1024:	e3530073 	cmp	r3, #115	@ 0x73
    1028:	1a000018 	bne	1090 <printf+0x178>
    102c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1030:	e5933000 	ldr	r3, [r3]
    1034:	e50b300c 	str	r3, [fp, #-12]
    1038:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    103c:	e2833004 	add	r3, r3, #4
    1040:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1044:	e51b300c 	ldr	r3, [fp, #-12]
    1048:	e3530000 	cmp	r3, #0
    104c:	1a00000a 	bne	107c <printf+0x164>
    1050:	e59f30f4 	ldr	r3, [pc, #244]	@ 114c <printf+0x234>
    1054:	e50b300c 	str	r3, [fp, #-12]
    1058:	ea000007 	b	107c <printf+0x164>
    105c:	e51b300c 	ldr	r3, [fp, #-12]
    1060:	e5d33000 	ldrb	r3, [r3]
    1064:	e1a01003 	mov	r1, r3
    1068:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    106c:	ebffff4d 	bl	da8 <putc>
    1070:	e51b300c 	ldr	r3, [fp, #-12]
    1074:	e2833001 	add	r3, r3, #1
    1078:	e50b300c 	str	r3, [fp, #-12]
    107c:	e51b300c 	ldr	r3, [fp, #-12]
    1080:	e5d33000 	ldrb	r3, [r3]
    1084:	e3530000 	cmp	r3, #0
    1088:	1afffff3 	bne	105c <printf+0x144>
    108c:	ea00001d 	b	1108 <printf+0x1f0>
    1090:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1094:	e3530063 	cmp	r3, #99	@ 0x63
    1098:	1a000009 	bne	10c4 <printf+0x1ac>
    109c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10a0:	e5933000 	ldr	r3, [r3]
    10a4:	e6ef3073 	uxtb	r3, r3
    10a8:	e1a01003 	mov	r1, r3
    10ac:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10b0:	ebffff3c 	bl	da8 <putc>
    10b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10b8:	e2833004 	add	r3, r3, #4
    10bc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10c0:	ea000010 	b	1108 <printf+0x1f0>
    10c4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10c8:	e3530025 	cmp	r3, #37	@ 0x25
    10cc:	1a000005 	bne	10e8 <printf+0x1d0>
    10d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10d4:	e6ef3073 	uxtb	r3, r3
    10d8:	e1a01003 	mov	r1, r3
    10dc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10e0:	ebffff30 	bl	da8 <putc>
    10e4:	ea000007 	b	1108 <printf+0x1f0>
    10e8:	e3a01025 	mov	r1, #37	@ 0x25
    10ec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10f0:	ebffff2c 	bl	da8 <putc>
    10f4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10f8:	e6ef3073 	uxtb	r3, r3
    10fc:	e1a01003 	mov	r1, r3
    1100:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1104:	ebffff27 	bl	da8 <putc>
    1108:	e3a03000 	mov	r3, #0
    110c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1110:	e51b3010 	ldr	r3, [fp, #-16]
    1114:	e2833001 	add	r3, r3, #1
    1118:	e50b3010 	str	r3, [fp, #-16]
    111c:	e59b2004 	ldr	r2, [fp, #4]
    1120:	e51b3010 	ldr	r3, [fp, #-16]
    1124:	e0823003 	add	r3, r2, r3
    1128:	e5d33000 	ldrb	r3, [r3]
    112c:	e3530000 	cmp	r3, #0
    1130:	1affff84 	bne	f48 <printf+0x30>
    1134:	e1a00000 	nop			@ (mov r0, r0)
    1138:	e1a00000 	nop			@ (mov r0, r0)
    113c:	e24bd004 	sub	sp, fp, #4
    1140:	e8bd4800 	pop	{fp, lr}
    1144:	e28dd00c 	add	sp, sp, #12
    1148:	e12fff1e 	bx	lr
    114c:	00001628 	.word	0x00001628

00001150 <free>:
    1150:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1154:	e28db000 	add	fp, sp, #0
    1158:	e24dd014 	sub	sp, sp, #20
    115c:	e50b0010 	str	r0, [fp, #-16]
    1160:	e51b3010 	ldr	r3, [fp, #-16]
    1164:	e2433008 	sub	r3, r3, #8
    1168:	e50b300c 	str	r3, [fp, #-12]
    116c:	e59f3154 	ldr	r3, [pc, #340]	@ 12c8 <free+0x178>
    1170:	e5933000 	ldr	r3, [r3]
    1174:	e50b3008 	str	r3, [fp, #-8]
    1178:	ea000010 	b	11c0 <free+0x70>
    117c:	e51b3008 	ldr	r3, [fp, #-8]
    1180:	e5933000 	ldr	r3, [r3]
    1184:	e51b2008 	ldr	r2, [fp, #-8]
    1188:	e1520003 	cmp	r2, r3
    118c:	3a000008 	bcc	11b4 <free+0x64>
    1190:	e51b200c 	ldr	r2, [fp, #-12]
    1194:	e51b3008 	ldr	r3, [fp, #-8]
    1198:	e1520003 	cmp	r2, r3
    119c:	8a000010 	bhi	11e4 <free+0x94>
    11a0:	e51b3008 	ldr	r3, [fp, #-8]
    11a4:	e5933000 	ldr	r3, [r3]
    11a8:	e51b200c 	ldr	r2, [fp, #-12]
    11ac:	e1520003 	cmp	r2, r3
    11b0:	3a00000b 	bcc	11e4 <free+0x94>
    11b4:	e51b3008 	ldr	r3, [fp, #-8]
    11b8:	e5933000 	ldr	r3, [r3]
    11bc:	e50b3008 	str	r3, [fp, #-8]
    11c0:	e51b200c 	ldr	r2, [fp, #-12]
    11c4:	e51b3008 	ldr	r3, [fp, #-8]
    11c8:	e1520003 	cmp	r2, r3
    11cc:	9affffea 	bls	117c <free+0x2c>
    11d0:	e51b3008 	ldr	r3, [fp, #-8]
    11d4:	e5933000 	ldr	r3, [r3]
    11d8:	e51b200c 	ldr	r2, [fp, #-12]
    11dc:	e1520003 	cmp	r2, r3
    11e0:	2affffe5 	bcs	117c <free+0x2c>
    11e4:	e51b300c 	ldr	r3, [fp, #-12]
    11e8:	e5933004 	ldr	r3, [r3, #4]
    11ec:	e1a03183 	lsl	r3, r3, #3
    11f0:	e51b200c 	ldr	r2, [fp, #-12]
    11f4:	e0822003 	add	r2, r2, r3
    11f8:	e51b3008 	ldr	r3, [fp, #-8]
    11fc:	e5933000 	ldr	r3, [r3]
    1200:	e1520003 	cmp	r2, r3
    1204:	1a00000d 	bne	1240 <free+0xf0>
    1208:	e51b300c 	ldr	r3, [fp, #-12]
    120c:	e5932004 	ldr	r2, [r3, #4]
    1210:	e51b3008 	ldr	r3, [fp, #-8]
    1214:	e5933000 	ldr	r3, [r3]
    1218:	e5933004 	ldr	r3, [r3, #4]
    121c:	e0822003 	add	r2, r2, r3
    1220:	e51b300c 	ldr	r3, [fp, #-12]
    1224:	e5832004 	str	r2, [r3, #4]
    1228:	e51b3008 	ldr	r3, [fp, #-8]
    122c:	e5933000 	ldr	r3, [r3]
    1230:	e5932000 	ldr	r2, [r3]
    1234:	e51b300c 	ldr	r3, [fp, #-12]
    1238:	e5832000 	str	r2, [r3]
    123c:	ea000003 	b	1250 <free+0x100>
    1240:	e51b3008 	ldr	r3, [fp, #-8]
    1244:	e5932000 	ldr	r2, [r3]
    1248:	e51b300c 	ldr	r3, [fp, #-12]
    124c:	e5832000 	str	r2, [r3]
    1250:	e51b3008 	ldr	r3, [fp, #-8]
    1254:	e5933004 	ldr	r3, [r3, #4]
    1258:	e1a03183 	lsl	r3, r3, #3
    125c:	e51b2008 	ldr	r2, [fp, #-8]
    1260:	e0823003 	add	r3, r2, r3
    1264:	e51b200c 	ldr	r2, [fp, #-12]
    1268:	e1520003 	cmp	r2, r3
    126c:	1a00000b 	bne	12a0 <free+0x150>
    1270:	e51b3008 	ldr	r3, [fp, #-8]
    1274:	e5932004 	ldr	r2, [r3, #4]
    1278:	e51b300c 	ldr	r3, [fp, #-12]
    127c:	e5933004 	ldr	r3, [r3, #4]
    1280:	e0822003 	add	r2, r2, r3
    1284:	e51b3008 	ldr	r3, [fp, #-8]
    1288:	e5832004 	str	r2, [r3, #4]
    128c:	e51b300c 	ldr	r3, [fp, #-12]
    1290:	e5932000 	ldr	r2, [r3]
    1294:	e51b3008 	ldr	r3, [fp, #-8]
    1298:	e5832000 	str	r2, [r3]
    129c:	ea000002 	b	12ac <free+0x15c>
    12a0:	e51b3008 	ldr	r3, [fp, #-8]
    12a4:	e51b200c 	ldr	r2, [fp, #-12]
    12a8:	e5832000 	str	r2, [r3]
    12ac:	e59f2014 	ldr	r2, [pc, #20]	@ 12c8 <free+0x178>
    12b0:	e51b3008 	ldr	r3, [fp, #-8]
    12b4:	e5823000 	str	r3, [r2]
    12b8:	e1a00000 	nop			@ (mov r0, r0)
    12bc:	e28bd000 	add	sp, fp, #0
    12c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    12c4:	e12fff1e 	bx	lr
    12c8:	0000164c 	.word	0x0000164c

000012cc <morecore>:
    12cc:	e92d4800 	push	{fp, lr}
    12d0:	e28db004 	add	fp, sp, #4
    12d4:	e24dd010 	sub	sp, sp, #16
    12d8:	e50b0010 	str	r0, [fp, #-16]
    12dc:	e51b3010 	ldr	r3, [fp, #-16]
    12e0:	e3530a01 	cmp	r3, #4096	@ 0x1000
    12e4:	2a000001 	bcs	12f0 <morecore+0x24>
    12e8:	e3a03a01 	mov	r3, #4096	@ 0x1000
    12ec:	e50b3010 	str	r3, [fp, #-16]
    12f0:	e51b3010 	ldr	r3, [fp, #-16]
    12f4:	e1a03183 	lsl	r3, r3, #3
    12f8:	e1a00003 	mov	r0, r3
    12fc:	ebfffe07 	bl	b20 <sbrk>
    1300:	e50b0008 	str	r0, [fp, #-8]
    1304:	e51b3008 	ldr	r3, [fp, #-8]
    1308:	e3730001 	cmn	r3, #1
    130c:	1a000001 	bne	1318 <morecore+0x4c>
    1310:	e3a03000 	mov	r3, #0
    1314:	ea00000a 	b	1344 <morecore+0x78>
    1318:	e51b3008 	ldr	r3, [fp, #-8]
    131c:	e50b300c 	str	r3, [fp, #-12]
    1320:	e51b300c 	ldr	r3, [fp, #-12]
    1324:	e51b2010 	ldr	r2, [fp, #-16]
    1328:	e5832004 	str	r2, [r3, #4]
    132c:	e51b300c 	ldr	r3, [fp, #-12]
    1330:	e2833008 	add	r3, r3, #8
    1334:	e1a00003 	mov	r0, r3
    1338:	ebffff84 	bl	1150 <free>
    133c:	e59f300c 	ldr	r3, [pc, #12]	@ 1350 <morecore+0x84>
    1340:	e5933000 	ldr	r3, [r3]
    1344:	e1a00003 	mov	r0, r3
    1348:	e24bd004 	sub	sp, fp, #4
    134c:	e8bd8800 	pop	{fp, pc}
    1350:	0000164c 	.word	0x0000164c

00001354 <malloc>:
    1354:	e92d4800 	push	{fp, lr}
    1358:	e28db004 	add	fp, sp, #4
    135c:	e24dd018 	sub	sp, sp, #24
    1360:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1364:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1368:	e2833007 	add	r3, r3, #7
    136c:	e1a031a3 	lsr	r3, r3, #3
    1370:	e2833001 	add	r3, r3, #1
    1374:	e50b3010 	str	r3, [fp, #-16]
    1378:	e59f3134 	ldr	r3, [pc, #308]	@ 14b4 <malloc+0x160>
    137c:	e5933000 	ldr	r3, [r3]
    1380:	e50b300c 	str	r3, [fp, #-12]
    1384:	e51b300c 	ldr	r3, [fp, #-12]
    1388:	e3530000 	cmp	r3, #0
    138c:	1a00000b 	bne	13c0 <malloc+0x6c>
    1390:	e59f3120 	ldr	r3, [pc, #288]	@ 14b8 <malloc+0x164>
    1394:	e50b300c 	str	r3, [fp, #-12]
    1398:	e59f2114 	ldr	r2, [pc, #276]	@ 14b4 <malloc+0x160>
    139c:	e51b300c 	ldr	r3, [fp, #-12]
    13a0:	e5823000 	str	r3, [r2]
    13a4:	e59f3108 	ldr	r3, [pc, #264]	@ 14b4 <malloc+0x160>
    13a8:	e5933000 	ldr	r3, [r3]
    13ac:	e59f2104 	ldr	r2, [pc, #260]	@ 14b8 <malloc+0x164>
    13b0:	e5823000 	str	r3, [r2]
    13b4:	e59f30fc 	ldr	r3, [pc, #252]	@ 14b8 <malloc+0x164>
    13b8:	e3a02000 	mov	r2, #0
    13bc:	e5832004 	str	r2, [r3, #4]
    13c0:	e51b300c 	ldr	r3, [fp, #-12]
    13c4:	e5933000 	ldr	r3, [r3]
    13c8:	e50b3008 	str	r3, [fp, #-8]
    13cc:	e51b3008 	ldr	r3, [fp, #-8]
    13d0:	e5933004 	ldr	r3, [r3, #4]
    13d4:	e51b2010 	ldr	r2, [fp, #-16]
    13d8:	e1520003 	cmp	r2, r3
    13dc:	8a00001e 	bhi	145c <malloc+0x108>
    13e0:	e51b3008 	ldr	r3, [fp, #-8]
    13e4:	e5933004 	ldr	r3, [r3, #4]
    13e8:	e51b2010 	ldr	r2, [fp, #-16]
    13ec:	e1520003 	cmp	r2, r3
    13f0:	1a000004 	bne	1408 <malloc+0xb4>
    13f4:	e51b3008 	ldr	r3, [fp, #-8]
    13f8:	e5932000 	ldr	r2, [r3]
    13fc:	e51b300c 	ldr	r3, [fp, #-12]
    1400:	e5832000 	str	r2, [r3]
    1404:	ea00000e 	b	1444 <malloc+0xf0>
    1408:	e51b3008 	ldr	r3, [fp, #-8]
    140c:	e5932004 	ldr	r2, [r3, #4]
    1410:	e51b3010 	ldr	r3, [fp, #-16]
    1414:	e0422003 	sub	r2, r2, r3
    1418:	e51b3008 	ldr	r3, [fp, #-8]
    141c:	e5832004 	str	r2, [r3, #4]
    1420:	e51b3008 	ldr	r3, [fp, #-8]
    1424:	e5933004 	ldr	r3, [r3, #4]
    1428:	e1a03183 	lsl	r3, r3, #3
    142c:	e51b2008 	ldr	r2, [fp, #-8]
    1430:	e0823003 	add	r3, r2, r3
    1434:	e50b3008 	str	r3, [fp, #-8]
    1438:	e51b3008 	ldr	r3, [fp, #-8]
    143c:	e51b2010 	ldr	r2, [fp, #-16]
    1440:	e5832004 	str	r2, [r3, #4]
    1444:	e59f2068 	ldr	r2, [pc, #104]	@ 14b4 <malloc+0x160>
    1448:	e51b300c 	ldr	r3, [fp, #-12]
    144c:	e5823000 	str	r3, [r2]
    1450:	e51b3008 	ldr	r3, [fp, #-8]
    1454:	e2833008 	add	r3, r3, #8
    1458:	ea000012 	b	14a8 <malloc+0x154>
    145c:	e59f3050 	ldr	r3, [pc, #80]	@ 14b4 <malloc+0x160>
    1460:	e5933000 	ldr	r3, [r3]
    1464:	e51b2008 	ldr	r2, [fp, #-8]
    1468:	e1520003 	cmp	r2, r3
    146c:	1a000007 	bne	1490 <malloc+0x13c>
    1470:	e51b0010 	ldr	r0, [fp, #-16]
    1474:	ebffff94 	bl	12cc <morecore>
    1478:	e50b0008 	str	r0, [fp, #-8]
    147c:	e51b3008 	ldr	r3, [fp, #-8]
    1480:	e3530000 	cmp	r3, #0
    1484:	1a000001 	bne	1490 <malloc+0x13c>
    1488:	e3a03000 	mov	r3, #0
    148c:	ea000005 	b	14a8 <malloc+0x154>
    1490:	e51b3008 	ldr	r3, [fp, #-8]
    1494:	e50b300c 	str	r3, [fp, #-12]
    1498:	e51b3008 	ldr	r3, [fp, #-8]
    149c:	e5933000 	ldr	r3, [r3]
    14a0:	e50b3008 	str	r3, [fp, #-8]
    14a4:	eaffffc8 	b	13cc <malloc+0x78>
    14a8:	e1a00003 	mov	r0, r3
    14ac:	e24bd004 	sub	sp, fp, #4
    14b0:	e8bd8800 	pop	{fp, pc}
    14b4:	0000164c 	.word	0x0000164c
    14b8:	00001644 	.word	0x00001644

000014bc <__udivsi3>:
    14bc:	e2512001 	subs	r2, r1, #1
    14c0:	012fff1e 	bxeq	lr
    14c4:	3a000036 	bcc	15a4 <__udivsi3+0xe8>
    14c8:	e1500001 	cmp	r0, r1
    14cc:	9a000022 	bls	155c <__udivsi3+0xa0>
    14d0:	e1110002 	tst	r1, r2
    14d4:	0a000023 	beq	1568 <__udivsi3+0xac>
    14d8:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    14dc:	01a01181 	lsleq	r1, r1, #3
    14e0:	03a03008 	moveq	r3, #8
    14e4:	13a03001 	movne	r3, #1
    14e8:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    14ec:	31510000 	cmpcc	r1, r0
    14f0:	31a01201 	lslcc	r1, r1, #4
    14f4:	31a03203 	lslcc	r3, r3, #4
    14f8:	3afffffa 	bcc	14e8 <__udivsi3+0x2c>
    14fc:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1500:	31510000 	cmpcc	r1, r0
    1504:	31a01081 	lslcc	r1, r1, #1
    1508:	31a03083 	lslcc	r3, r3, #1
    150c:	3afffffa 	bcc	14fc <__udivsi3+0x40>
    1510:	e3a02000 	mov	r2, #0
    1514:	e1500001 	cmp	r0, r1
    1518:	20400001 	subcs	r0, r0, r1
    151c:	21822003 	orrcs	r2, r2, r3
    1520:	e15000a1 	cmp	r0, r1, lsr #1
    1524:	204000a1 	subcs	r0, r0, r1, lsr #1
    1528:	218220a3 	orrcs	r2, r2, r3, lsr #1
    152c:	e1500121 	cmp	r0, r1, lsr #2
    1530:	20400121 	subcs	r0, r0, r1, lsr #2
    1534:	21822123 	orrcs	r2, r2, r3, lsr #2
    1538:	e15001a1 	cmp	r0, r1, lsr #3
    153c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1540:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1544:	e3500000 	cmp	r0, #0
    1548:	11b03223 	lsrsne	r3, r3, #4
    154c:	11a01221 	lsrne	r1, r1, #4
    1550:	1affffef 	bne	1514 <__udivsi3+0x58>
    1554:	e1a00002 	mov	r0, r2
    1558:	e12fff1e 	bx	lr
    155c:	03a00001 	moveq	r0, #1
    1560:	13a00000 	movne	r0, #0
    1564:	e12fff1e 	bx	lr
    1568:	e3510801 	cmp	r1, #65536	@ 0x10000
    156c:	21a01821 	lsrcs	r1, r1, #16
    1570:	23a02010 	movcs	r2, #16
    1574:	33a02000 	movcc	r2, #0
    1578:	e3510c01 	cmp	r1, #256	@ 0x100
    157c:	21a01421 	lsrcs	r1, r1, #8
    1580:	22822008 	addcs	r2, r2, #8
    1584:	e3510010 	cmp	r1, #16
    1588:	21a01221 	lsrcs	r1, r1, #4
    158c:	22822004 	addcs	r2, r2, #4
    1590:	e3510004 	cmp	r1, #4
    1594:	82822003 	addhi	r2, r2, #3
    1598:	908220a1 	addls	r2, r2, r1, lsr #1
    159c:	e1a00230 	lsr	r0, r0, r2
    15a0:	e12fff1e 	bx	lr
    15a4:	e3500000 	cmp	r0, #0
    15a8:	13e00000 	mvnne	r0, #0
    15ac:	ea000007 	b	15d0 <__aeabi_idiv0>

000015b0 <__aeabi_uidivmod>:
    15b0:	e3510000 	cmp	r1, #0
    15b4:	0afffffa 	beq	15a4 <__udivsi3+0xe8>
    15b8:	e92d4003 	push	{r0, r1, lr}
    15bc:	ebffffbe 	bl	14bc <__udivsi3>
    15c0:	e8bd4006 	pop	{r1, r2, lr}
    15c4:	e0030092 	mul	r3, r2, r0
    15c8:	e0411003 	sub	r1, r1, r3
    15cc:	e12fff1e 	bx	lr

000015d0 <__aeabi_idiv0>:
    15d0:	e12fff1e 	bx	lr
