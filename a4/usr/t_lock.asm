
_t_lock:     file format elf32-littlearm


Disassembly of section .text:

00000000 <count>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e3a03000 	mov	r3, #0
      14:	e50b3008 	str	r3, [fp, #-8]
      18:	ea00000b 	b	4c <count+0x4c>
      1c:	e59f004c 	ldr	r0, [pc, #76]	@ 70 <count+0x70>
      20:	eb00018f 	bl	664 <acquireLock>
      24:	e51b3010 	ldr	r3, [fp, #-16]
      28:	e5933000 	ldr	r3, [r3]
      2c:	e2832001 	add	r2, r3, #1
      30:	e51b3010 	ldr	r3, [fp, #-16]
      34:	e5832000 	str	r2, [r3]
      38:	e59f0030 	ldr	r0, [pc, #48]	@ 70 <count+0x70>
      3c:	eb00019c 	bl	6b4 <releaseLock>
      40:	e51b3008 	ldr	r3, [fp, #-8]
      44:	e2833001 	add	r3, r3, #1
      48:	e50b3008 	str	r3, [fp, #-8]
      4c:	e51b3008 	ldr	r3, [fp, #-8]
      50:	e59f201c 	ldr	r2, [pc, #28]	@ 74 <count+0x74>
      54:	e1530002 	cmp	r3, r2
      58:	baffffef 	blt	1c <count+0x1c>
      5c:	eb000332 	bl	d2c <thread_exit>
      60:	e3a03000 	mov	r3, #0
      64:	e1a00003 	mov	r0, r3
      68:	e24bd004 	sub	sp, fp, #4
      6c:	e8bd8800 	pop	{fp, pc}
      70:	000016d0 	.word	0x000016d0
      74:	000f4240 	.word	0x000f4240

00000078 <main>:
      78:	e92d4800 	push	{fp, lr}
      7c:	e28db004 	add	fp, sp, #4
      80:	e24dd010 	sub	sp, sp, #16
      84:	e59f0060 	ldr	r0, [pc, #96]	@ ec <main+0x74>
      88:	eb000156 	bl	5e8 <initiateLock>
      8c:	e3a03000 	mov	r3, #0
      90:	e50b3008 	str	r3, [fp, #-8]
      94:	e24b2008 	sub	r2, fp, #8
      98:	e24b300c 	sub	r3, fp, #12
      9c:	e59f104c 	ldr	r1, [pc, #76]	@ f0 <main+0x78>
      a0:	e1a00003 	mov	r0, r3
      a4:	eb000317 	bl	d08 <thread_create>
      a8:	e24b2008 	sub	r2, fp, #8
      ac:	e24b3010 	sub	r3, fp, #16
      b0:	e59f1038 	ldr	r1, [pc, #56]	@ f0 <main+0x78>
      b4:	e1a00003 	mov	r0, r3
      b8:	eb000312 	bl	d08 <thread_create>
      bc:	e51b300c 	ldr	r3, [fp, #-12]
      c0:	e1a00003 	mov	r0, r3
      c4:	eb000321 	bl	d50 <thread_join>
      c8:	e51b3010 	ldr	r3, [fp, #-16]
      cc:	e1a00003 	mov	r0, r3
      d0:	eb00031e 	bl	d50 <thread_join>
      d4:	e51b3008 	ldr	r3, [fp, #-8]
      d8:	e1a02003 	mov	r2, r3
      dc:	e59f1010 	ldr	r1, [pc, #16]	@ f4 <main+0x7c>
      e0:	e3a00001 	mov	r0, #1
      e4:	eb0003bd 	bl	fe0 <printf>
      e8:	eb000225 	bl	984 <exit>
      ec:	000016d0 	.word	0x000016d0
      f0:	00000000 	.word	0x00000000
      f4:	0000169c 	.word	0x0000169c

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
     3ec:	eb00017f 	bl	9f0 <read>
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
     494:	eb000182 	bl	aa4 <open>
     498:	e50b0008 	str	r0, [fp, #-8]
     49c:	e51b3008 	ldr	r3, [fp, #-8]
     4a0:	e3530000 	cmp	r3, #0
     4a4:	aa000001 	bge	4b0 <stat+0x38>
     4a8:	e3e03000 	mvn	r3, #0
     4ac:	ea000006 	b	4cc <stat+0x54>
     4b0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     4b4:	e51b0008 	ldr	r0, [fp, #-8]
     4b8:	eb000194 	bl	b10 <fstat>
     4bc:	e50b000c 	str	r0, [fp, #-12]
     4c0:	e51b0008 	ldr	r0, [fp, #-8]
     4c4:	eb00015b 	bl	a38 <close>
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

000005e8 <initiateLock>:
     5e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5ec:	e28db000 	add	fp, sp, #0
     5f0:	e24dd00c 	sub	sp, sp, #12
     5f4:	e50b0008 	str	r0, [fp, #-8]
     5f8:	e51b3008 	ldr	r3, [fp, #-8]
     5fc:	e3a02000 	mov	r2, #0
     600:	e5832000 	str	r2, [r3]
     604:	e51b3008 	ldr	r3, [fp, #-8]
     608:	e3a02001 	mov	r2, #1
     60c:	e5832004 	str	r2, [r3, #4]
     610:	e1a00000 	nop			@ (mov r0, r0)
     614:	e28bd000 	add	sp, fp, #0
     618:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     61c:	e12fff1e 	bx	lr

00000620 <xchg>:
     620:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     624:	e28db000 	add	fp, sp, #0
     628:	e24dd00c 	sub	sp, sp, #12
     62c:	e50b0008 	str	r0, [fp, #-8]
     630:	e50b100c 	str	r1, [fp, #-12]
     634:	e51b200c 	ldr	r2, [fp, #-12]
     638:	e51b3008 	ldr	r3, [fp, #-8]
     63c:	e1931f9f 	ldrex	r1, [r3]
     640:	e1830f92 	strex	r0, r2, [r3]
     644:	e3500000 	cmp	r0, #0
     648:	1afffffb 	bne	63c <xchg+0x1c>
     64c:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     650:	e1a03001 	mov	r3, r1
     654:	e1a00003 	mov	r0, r3
     658:	e28bd000 	add	sp, fp, #0
     65c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     660:	e12fff1e 	bx	lr

00000664 <acquireLock>:
     664:	e92d4800 	push	{fp, lr}
     668:	e28db004 	add	fp, sp, #4
     66c:	e24dd008 	sub	sp, sp, #8
     670:	e50b0008 	str	r0, [fp, #-8]
     674:	e51b3008 	ldr	r3, [fp, #-8]
     678:	e5933004 	ldr	r3, [r3, #4]
     67c:	e3530000 	cmp	r3, #0
     680:	0a000008 	beq	6a8 <acquireLock+0x44>
     684:	e1a00000 	nop			@ (mov r0, r0)
     688:	e51b3008 	ldr	r3, [fp, #-8]
     68c:	e3a01001 	mov	r1, #1
     690:	e1a00003 	mov	r0, r3
     694:	ebffffe1 	bl	620 <xchg>
     698:	e1a03000 	mov	r3, r0
     69c:	e3530000 	cmp	r3, #0
     6a0:	1afffff8 	bne	688 <acquireLock+0x24>
     6a4:	ea000000 	b	6ac <acquireLock+0x48>
     6a8:	e1a00000 	nop			@ (mov r0, r0)
     6ac:	e24bd004 	sub	sp, fp, #4
     6b0:	e8bd8800 	pop	{fp, pc}

000006b4 <releaseLock>:
     6b4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6b8:	e28db000 	add	fp, sp, #0
     6bc:	e24dd00c 	sub	sp, sp, #12
     6c0:	e50b0008 	str	r0, [fp, #-8]
     6c4:	e51b3008 	ldr	r3, [fp, #-8]
     6c8:	e5933004 	ldr	r3, [r3, #4]
     6cc:	e3530000 	cmp	r3, #0
     6d0:	0a000007 	beq	6f4 <releaseLock+0x40>
     6d4:	e51b3008 	ldr	r3, [fp, #-8]
     6d8:	e5933000 	ldr	r3, [r3]
     6dc:	e3530001 	cmp	r3, #1
     6e0:	1a000005 	bne	6fc <releaseLock+0x48>
     6e4:	e51b3008 	ldr	r3, [fp, #-8]
     6e8:	e3a02000 	mov	r2, #0
     6ec:	e5832000 	str	r2, [r3]
     6f0:	ea000002 	b	700 <releaseLock+0x4c>
     6f4:	e1a00000 	nop			@ (mov r0, r0)
     6f8:	ea000000 	b	700 <releaseLock+0x4c>
     6fc:	e1a00000 	nop			@ (mov r0, r0)
     700:	e28bd000 	add	sp, fp, #0
     704:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     708:	e12fff1e 	bx	lr

0000070c <initiateCondVar>:
     70c:	e92d4800 	push	{fp, lr}
     710:	e28db004 	add	fp, sp, #4
     714:	e24dd008 	sub	sp, sp, #8
     718:	e50b0008 	str	r0, [fp, #-8]
     71c:	eb0001b8 	bl	e04 <getChannel>
     720:	e1a02000 	mov	r2, r0
     724:	e51b3008 	ldr	r3, [fp, #-8]
     728:	e5832000 	str	r2, [r3]
     72c:	e51b3008 	ldr	r3, [fp, #-8]
     730:	e3a02001 	mov	r2, #1
     734:	e5832004 	str	r2, [r3, #4]
     738:	e1a00000 	nop			@ (mov r0, r0)
     73c:	e24bd004 	sub	sp, fp, #4
     740:	e8bd8800 	pop	{fp, pc}

00000744 <condWait>:
     744:	e92d4800 	push	{fp, lr}
     748:	e28db004 	add	fp, sp, #4
     74c:	e24dd008 	sub	sp, sp, #8
     750:	e50b0008 	str	r0, [fp, #-8]
     754:	e50b100c 	str	r1, [fp, #-12]
     758:	e51b3008 	ldr	r3, [fp, #-8]
     75c:	e5933004 	ldr	r3, [r3, #4]
     760:	e3530000 	cmp	r3, #0
     764:	0a00000c 	beq	79c <condWait+0x58>
     768:	e51b300c 	ldr	r3, [fp, #-12]
     76c:	e5933004 	ldr	r3, [r3, #4]
     770:	e3530000 	cmp	r3, #0
     774:	0a000008 	beq	79c <condWait+0x58>
     778:	e51b000c 	ldr	r0, [fp, #-12]
     77c:	ebffffcc 	bl	6b4 <releaseLock>
     780:	e51b3008 	ldr	r3, [fp, #-8]
     784:	e5933000 	ldr	r3, [r3]
     788:	e1a00003 	mov	r0, r3
     78c:	eb000193 	bl	de0 <sleepChan>
     790:	e51b000c 	ldr	r0, [fp, #-12]
     794:	ebffffb2 	bl	664 <acquireLock>
     798:	ea000000 	b	7a0 <condWait+0x5c>
     79c:	e1a00000 	nop			@ (mov r0, r0)
     7a0:	e24bd004 	sub	sp, fp, #4
     7a4:	e8bd8800 	pop	{fp, pc}

000007a8 <broadcast>:
     7a8:	e92d4800 	push	{fp, lr}
     7ac:	e28db004 	add	fp, sp, #4
     7b0:	e24dd008 	sub	sp, sp, #8
     7b4:	e50b0008 	str	r0, [fp, #-8]
     7b8:	e51b3008 	ldr	r3, [fp, #-8]
     7bc:	e5933004 	ldr	r3, [r3, #4]
     7c0:	e3530000 	cmp	r3, #0
     7c4:	0a000004 	beq	7dc <broadcast+0x34>
     7c8:	e51b3008 	ldr	r3, [fp, #-8]
     7cc:	e5933000 	ldr	r3, [r3]
     7d0:	e1a00003 	mov	r0, r3
     7d4:	eb000193 	bl	e28 <sigChan>
     7d8:	ea000000 	b	7e0 <broadcast+0x38>
     7dc:	e1a00000 	nop			@ (mov r0, r0)
     7e0:	e24bd004 	sub	sp, fp, #4
     7e4:	e8bd8800 	pop	{fp, pc}

000007e8 <signal>:
     7e8:	e92d4800 	push	{fp, lr}
     7ec:	e28db004 	add	fp, sp, #4
     7f0:	e24dd008 	sub	sp, sp, #8
     7f4:	e50b0008 	str	r0, [fp, #-8]
     7f8:	e51b3008 	ldr	r3, [fp, #-8]
     7fc:	e5933004 	ldr	r3, [r3, #4]
     800:	e3530000 	cmp	r3, #0
     804:	0a000004 	beq	81c <signal+0x34>
     808:	e51b3008 	ldr	r3, [fp, #-8]
     80c:	e5933000 	ldr	r3, [r3]
     810:	e1a00003 	mov	r0, r3
     814:	eb00018c 	bl	e4c <sigOneChan>
     818:	ea000000 	b	820 <signal+0x38>
     81c:	e1a00000 	nop			@ (mov r0, r0)
     820:	e24bd004 	sub	sp, fp, #4
     824:	e8bd8800 	pop	{fp, pc}

00000828 <semInit>:
     828:	e92d4800 	push	{fp, lr}
     82c:	e28db004 	add	fp, sp, #4
     830:	e24dd008 	sub	sp, sp, #8
     834:	e50b0008 	str	r0, [fp, #-8]
     838:	e50b100c 	str	r1, [fp, #-12]
     83c:	e51b3008 	ldr	r3, [fp, #-8]
     840:	e51b200c 	ldr	r2, [fp, #-12]
     844:	e5832000 	str	r2, [r3]
     848:	e51b3008 	ldr	r3, [fp, #-8]
     84c:	e2833004 	add	r3, r3, #4
     850:	e1a00003 	mov	r0, r3
     854:	ebffff63 	bl	5e8 <initiateLock>
     858:	e51b3008 	ldr	r3, [fp, #-8]
     85c:	e283300c 	add	r3, r3, #12
     860:	e1a00003 	mov	r0, r3
     864:	ebffffa8 	bl	70c <initiateCondVar>
     868:	e51b3008 	ldr	r3, [fp, #-8]
     86c:	e3a02001 	mov	r2, #1
     870:	e5832014 	str	r2, [r3, #20]
     874:	e1a00000 	nop			@ (mov r0, r0)
     878:	e24bd004 	sub	sp, fp, #4
     87c:	e8bd8800 	pop	{fp, pc}

00000880 <semUp>:
     880:	e92d4800 	push	{fp, lr}
     884:	e28db004 	add	fp, sp, #4
     888:	e24dd008 	sub	sp, sp, #8
     88c:	e50b0008 	str	r0, [fp, #-8]
     890:	e51b3008 	ldr	r3, [fp, #-8]
     894:	e2833004 	add	r3, r3, #4
     898:	e1a00003 	mov	r0, r3
     89c:	ebffff70 	bl	664 <acquireLock>
     8a0:	e51b3008 	ldr	r3, [fp, #-8]
     8a4:	e5933000 	ldr	r3, [r3]
     8a8:	e2832001 	add	r2, r3, #1
     8ac:	e51b3008 	ldr	r3, [fp, #-8]
     8b0:	e5832000 	str	r2, [r3]
     8b4:	e51b3008 	ldr	r3, [fp, #-8]
     8b8:	e283300c 	add	r3, r3, #12
     8bc:	e1a00003 	mov	r0, r3
     8c0:	ebffffc8 	bl	7e8 <signal>
     8c4:	e51b3008 	ldr	r3, [fp, #-8]
     8c8:	e2833004 	add	r3, r3, #4
     8cc:	e1a00003 	mov	r0, r3
     8d0:	ebffff77 	bl	6b4 <releaseLock>
     8d4:	e1a00000 	nop			@ (mov r0, r0)
     8d8:	e24bd004 	sub	sp, fp, #4
     8dc:	e8bd8800 	pop	{fp, pc}

000008e0 <semDown>:
     8e0:	e92d4800 	push	{fp, lr}
     8e4:	e28db004 	add	fp, sp, #4
     8e8:	e24dd008 	sub	sp, sp, #8
     8ec:	e50b0008 	str	r0, [fp, #-8]
     8f0:	e51b3008 	ldr	r3, [fp, #-8]
     8f4:	e2833004 	add	r3, r3, #4
     8f8:	e1a00003 	mov	r0, r3
     8fc:	ebffff58 	bl	664 <acquireLock>
     900:	ea000006 	b	920 <semDown+0x40>
     904:	e51b3008 	ldr	r3, [fp, #-8]
     908:	e283200c 	add	r2, r3, #12
     90c:	e51b3008 	ldr	r3, [fp, #-8]
     910:	e2833004 	add	r3, r3, #4
     914:	e1a01003 	mov	r1, r3
     918:	e1a00002 	mov	r0, r2
     91c:	ebffff88 	bl	744 <condWait>
     920:	e51b3008 	ldr	r3, [fp, #-8]
     924:	e5933000 	ldr	r3, [r3]
     928:	e3530000 	cmp	r3, #0
     92c:	dafffff4 	ble	904 <semDown+0x24>
     930:	e51b3008 	ldr	r3, [fp, #-8]
     934:	e5933000 	ldr	r3, [r3]
     938:	e2432001 	sub	r2, r3, #1
     93c:	e51b3008 	ldr	r3, [fp, #-8]
     940:	e5832000 	str	r2, [r3]
     944:	e51b3008 	ldr	r3, [fp, #-8]
     948:	e2833004 	add	r3, r3, #4
     94c:	e1a00003 	mov	r0, r3
     950:	ebffff57 	bl	6b4 <releaseLock>
     954:	e1a00000 	nop			@ (mov r0, r0)
     958:	e24bd004 	sub	sp, fp, #4
     95c:	e8bd8800 	pop	{fp, pc}

00000960 <fork>:
     960:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     964:	e1a04003 	mov	r4, r3
     968:	e1a03002 	mov	r3, r2
     96c:	e1a02001 	mov	r2, r1
     970:	e1a01000 	mov	r1, r0
     974:	e3a00001 	mov	r0, #1
     978:	ef000000 	svc	0x00000000
     97c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     980:	e12fff1e 	bx	lr

00000984 <exit>:
     984:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     988:	e1a04003 	mov	r4, r3
     98c:	e1a03002 	mov	r3, r2
     990:	e1a02001 	mov	r2, r1
     994:	e1a01000 	mov	r1, r0
     998:	e3a00002 	mov	r0, #2
     99c:	ef000000 	svc	0x00000000
     9a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a4:	e12fff1e 	bx	lr

000009a8 <wait>:
     9a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9ac:	e1a04003 	mov	r4, r3
     9b0:	e1a03002 	mov	r3, r2
     9b4:	e1a02001 	mov	r2, r1
     9b8:	e1a01000 	mov	r1, r0
     9bc:	e3a00003 	mov	r0, #3
     9c0:	ef000000 	svc	0x00000000
     9c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c8:	e12fff1e 	bx	lr

000009cc <pipe>:
     9cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9d0:	e1a04003 	mov	r4, r3
     9d4:	e1a03002 	mov	r3, r2
     9d8:	e1a02001 	mov	r2, r1
     9dc:	e1a01000 	mov	r1, r0
     9e0:	e3a00004 	mov	r0, #4
     9e4:	ef000000 	svc	0x00000000
     9e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9ec:	e12fff1e 	bx	lr

000009f0 <read>:
     9f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f4:	e1a04003 	mov	r4, r3
     9f8:	e1a03002 	mov	r3, r2
     9fc:	e1a02001 	mov	r2, r1
     a00:	e1a01000 	mov	r1, r0
     a04:	e3a00005 	mov	r0, #5
     a08:	ef000000 	svc	0x00000000
     a0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a10:	e12fff1e 	bx	lr

00000a14 <write>:
     a14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a18:	e1a04003 	mov	r4, r3
     a1c:	e1a03002 	mov	r3, r2
     a20:	e1a02001 	mov	r2, r1
     a24:	e1a01000 	mov	r1, r0
     a28:	e3a00010 	mov	r0, #16
     a2c:	ef000000 	svc	0x00000000
     a30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a34:	e12fff1e 	bx	lr

00000a38 <close>:
     a38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a3c:	e1a04003 	mov	r4, r3
     a40:	e1a03002 	mov	r3, r2
     a44:	e1a02001 	mov	r2, r1
     a48:	e1a01000 	mov	r1, r0
     a4c:	e3a00015 	mov	r0, #21
     a50:	ef000000 	svc	0x00000000
     a54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a58:	e12fff1e 	bx	lr

00000a5c <kill>:
     a5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a60:	e1a04003 	mov	r4, r3
     a64:	e1a03002 	mov	r3, r2
     a68:	e1a02001 	mov	r2, r1
     a6c:	e1a01000 	mov	r1, r0
     a70:	e3a00006 	mov	r0, #6
     a74:	ef000000 	svc	0x00000000
     a78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a7c:	e12fff1e 	bx	lr

00000a80 <exec>:
     a80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a84:	e1a04003 	mov	r4, r3
     a88:	e1a03002 	mov	r3, r2
     a8c:	e1a02001 	mov	r2, r1
     a90:	e1a01000 	mov	r1, r0
     a94:	e3a00007 	mov	r0, #7
     a98:	ef000000 	svc	0x00000000
     a9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aa0:	e12fff1e 	bx	lr

00000aa4 <open>:
     aa4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa8:	e1a04003 	mov	r4, r3
     aac:	e1a03002 	mov	r3, r2
     ab0:	e1a02001 	mov	r2, r1
     ab4:	e1a01000 	mov	r1, r0
     ab8:	e3a0000f 	mov	r0, #15
     abc:	ef000000 	svc	0x00000000
     ac0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac4:	e12fff1e 	bx	lr

00000ac8 <mknod>:
     ac8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     acc:	e1a04003 	mov	r4, r3
     ad0:	e1a03002 	mov	r3, r2
     ad4:	e1a02001 	mov	r2, r1
     ad8:	e1a01000 	mov	r1, r0
     adc:	e3a00011 	mov	r0, #17
     ae0:	ef000000 	svc	0x00000000
     ae4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae8:	e12fff1e 	bx	lr

00000aec <unlink>:
     aec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     af0:	e1a04003 	mov	r4, r3
     af4:	e1a03002 	mov	r3, r2
     af8:	e1a02001 	mov	r2, r1
     afc:	e1a01000 	mov	r1, r0
     b00:	e3a00012 	mov	r0, #18
     b04:	ef000000 	svc	0x00000000
     b08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b0c:	e12fff1e 	bx	lr

00000b10 <fstat>:
     b10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b14:	e1a04003 	mov	r4, r3
     b18:	e1a03002 	mov	r3, r2
     b1c:	e1a02001 	mov	r2, r1
     b20:	e1a01000 	mov	r1, r0
     b24:	e3a00008 	mov	r0, #8
     b28:	ef000000 	svc	0x00000000
     b2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b30:	e12fff1e 	bx	lr

00000b34 <link>:
     b34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b38:	e1a04003 	mov	r4, r3
     b3c:	e1a03002 	mov	r3, r2
     b40:	e1a02001 	mov	r2, r1
     b44:	e1a01000 	mov	r1, r0
     b48:	e3a00013 	mov	r0, #19
     b4c:	ef000000 	svc	0x00000000
     b50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b54:	e12fff1e 	bx	lr

00000b58 <mkdir>:
     b58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b5c:	e1a04003 	mov	r4, r3
     b60:	e1a03002 	mov	r3, r2
     b64:	e1a02001 	mov	r2, r1
     b68:	e1a01000 	mov	r1, r0
     b6c:	e3a00014 	mov	r0, #20
     b70:	ef000000 	svc	0x00000000
     b74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b78:	e12fff1e 	bx	lr

00000b7c <chdir>:
     b7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b80:	e1a04003 	mov	r4, r3
     b84:	e1a03002 	mov	r3, r2
     b88:	e1a02001 	mov	r2, r1
     b8c:	e1a01000 	mov	r1, r0
     b90:	e3a00009 	mov	r0, #9
     b94:	ef000000 	svc	0x00000000
     b98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b9c:	e12fff1e 	bx	lr

00000ba0 <dup>:
     ba0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba4:	e1a04003 	mov	r4, r3
     ba8:	e1a03002 	mov	r3, r2
     bac:	e1a02001 	mov	r2, r1
     bb0:	e1a01000 	mov	r1, r0
     bb4:	e3a0000a 	mov	r0, #10
     bb8:	ef000000 	svc	0x00000000
     bbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc0:	e12fff1e 	bx	lr

00000bc4 <getpid>:
     bc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc8:	e1a04003 	mov	r4, r3
     bcc:	e1a03002 	mov	r3, r2
     bd0:	e1a02001 	mov	r2, r1
     bd4:	e1a01000 	mov	r1, r0
     bd8:	e3a0000b 	mov	r0, #11
     bdc:	ef000000 	svc	0x00000000
     be0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be4:	e12fff1e 	bx	lr

00000be8 <sbrk>:
     be8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bec:	e1a04003 	mov	r4, r3
     bf0:	e1a03002 	mov	r3, r2
     bf4:	e1a02001 	mov	r2, r1
     bf8:	e1a01000 	mov	r1, r0
     bfc:	e3a0000c 	mov	r0, #12
     c00:	ef000000 	svc	0x00000000
     c04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c08:	e12fff1e 	bx	lr

00000c0c <sleep>:
     c0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c10:	e1a04003 	mov	r4, r3
     c14:	e1a03002 	mov	r3, r2
     c18:	e1a02001 	mov	r2, r1
     c1c:	e1a01000 	mov	r1, r0
     c20:	e3a0000d 	mov	r0, #13
     c24:	ef000000 	svc	0x00000000
     c28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c2c:	e12fff1e 	bx	lr

00000c30 <uptime>:
     c30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c34:	e1a04003 	mov	r4, r3
     c38:	e1a03002 	mov	r3, r2
     c3c:	e1a02001 	mov	r2, r1
     c40:	e1a01000 	mov	r1, r0
     c44:	e3a0000e 	mov	r0, #14
     c48:	ef000000 	svc	0x00000000
     c4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c50:	e12fff1e 	bx	lr

00000c54 <getprocs>:
     c54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c58:	e1a04003 	mov	r4, r3
     c5c:	e1a03002 	mov	r3, r2
     c60:	e1a02001 	mov	r2, r1
     c64:	e1a01000 	mov	r1, r0
     c68:	e3a00016 	mov	r0, #22
     c6c:	ef000000 	svc	0x00000000
     c70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c74:	e12fff1e 	bx	lr

00000c78 <settickets>:
     c78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c7c:	e1a04003 	mov	r4, r3
     c80:	e1a03002 	mov	r3, r2
     c84:	e1a02001 	mov	r2, r1
     c88:	e1a01000 	mov	r1, r0
     c8c:	e3a00017 	mov	r0, #23
     c90:	ef000000 	svc	0x00000000
     c94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c98:	e12fff1e 	bx	lr

00000c9c <srand>:
     c9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca0:	e1a04003 	mov	r4, r3
     ca4:	e1a03002 	mov	r3, r2
     ca8:	e1a02001 	mov	r2, r1
     cac:	e1a01000 	mov	r1, r0
     cb0:	e3a00018 	mov	r0, #24
     cb4:	ef000000 	svc	0x00000000
     cb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cbc:	e12fff1e 	bx	lr

00000cc0 <getpinfo>:
     cc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc4:	e1a04003 	mov	r4, r3
     cc8:	e1a03002 	mov	r3, r2
     ccc:	e1a02001 	mov	r2, r1
     cd0:	e1a01000 	mov	r1, r0
     cd4:	e3a00019 	mov	r0, #25
     cd8:	ef000000 	svc	0x00000000
     cdc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce0:	e12fff1e 	bx	lr

00000ce4 <dumppagetable>:
     ce4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce8:	e1a04003 	mov	r4, r3
     cec:	e1a03002 	mov	r3, r2
     cf0:	e1a02001 	mov	r2, r1
     cf4:	e1a01000 	mov	r1, r0
     cf8:	e3a0001a 	mov	r0, #26
     cfc:	ef000000 	svc	0x00000000
     d00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d04:	e12fff1e 	bx	lr

00000d08 <thread_create>:
     d08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d0c:	e1a04003 	mov	r4, r3
     d10:	e1a03002 	mov	r3, r2
     d14:	e1a02001 	mov	r2, r1
     d18:	e1a01000 	mov	r1, r0
     d1c:	e3a0001b 	mov	r0, #27
     d20:	ef000000 	svc	0x00000000
     d24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d28:	e12fff1e 	bx	lr

00000d2c <thread_exit>:
     d2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d30:	e1a04003 	mov	r4, r3
     d34:	e1a03002 	mov	r3, r2
     d38:	e1a02001 	mov	r2, r1
     d3c:	e1a01000 	mov	r1, r0
     d40:	e3a0001c 	mov	r0, #28
     d44:	ef000000 	svc	0x00000000
     d48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d4c:	e12fff1e 	bx	lr

00000d50 <thread_join>:
     d50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d54:	e1a04003 	mov	r4, r3
     d58:	e1a03002 	mov	r3, r2
     d5c:	e1a02001 	mov	r2, r1
     d60:	e1a01000 	mov	r1, r0
     d64:	e3a0001d 	mov	r0, #29
     d68:	ef000000 	svc	0x00000000
     d6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d70:	e12fff1e 	bx	lr

00000d74 <waitpid>:
     d74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d78:	e1a04003 	mov	r4, r3
     d7c:	e1a03002 	mov	r3, r2
     d80:	e1a02001 	mov	r2, r1
     d84:	e1a01000 	mov	r1, r0
     d88:	e3a0001e 	mov	r0, #30
     d8c:	ef000000 	svc	0x00000000
     d90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d94:	e12fff1e 	bx	lr

00000d98 <barrier_init>:
     d98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d9c:	e1a04003 	mov	r4, r3
     da0:	e1a03002 	mov	r3, r2
     da4:	e1a02001 	mov	r2, r1
     da8:	e1a01000 	mov	r1, r0
     dac:	e3a0001f 	mov	r0, #31
     db0:	ef000000 	svc	0x00000000
     db4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     db8:	e12fff1e 	bx	lr

00000dbc <barrier_check>:
     dbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dc0:	e1a04003 	mov	r4, r3
     dc4:	e1a03002 	mov	r3, r2
     dc8:	e1a02001 	mov	r2, r1
     dcc:	e1a01000 	mov	r1, r0
     dd0:	e3a00020 	mov	r0, #32
     dd4:	ef000000 	svc	0x00000000
     dd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ddc:	e12fff1e 	bx	lr

00000de0 <sleepChan>:
     de0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     de4:	e1a04003 	mov	r4, r3
     de8:	e1a03002 	mov	r3, r2
     dec:	e1a02001 	mov	r2, r1
     df0:	e1a01000 	mov	r1, r0
     df4:	e3a00024 	mov	r0, #36	@ 0x24
     df8:	ef000000 	svc	0x00000000
     dfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e00:	e12fff1e 	bx	lr

00000e04 <getChannel>:
     e04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e08:	e1a04003 	mov	r4, r3
     e0c:	e1a03002 	mov	r3, r2
     e10:	e1a02001 	mov	r2, r1
     e14:	e1a01000 	mov	r1, r0
     e18:	e3a00025 	mov	r0, #37	@ 0x25
     e1c:	ef000000 	svc	0x00000000
     e20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e24:	e12fff1e 	bx	lr

00000e28 <sigChan>:
     e28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e2c:	e1a04003 	mov	r4, r3
     e30:	e1a03002 	mov	r3, r2
     e34:	e1a02001 	mov	r2, r1
     e38:	e1a01000 	mov	r1, r0
     e3c:	e3a00026 	mov	r0, #38	@ 0x26
     e40:	ef000000 	svc	0x00000000
     e44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e48:	e12fff1e 	bx	lr

00000e4c <sigOneChan>:
     e4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e50:	e1a04003 	mov	r4, r3
     e54:	e1a03002 	mov	r3, r2
     e58:	e1a02001 	mov	r2, r1
     e5c:	e1a01000 	mov	r1, r0
     e60:	e3a00027 	mov	r0, #39	@ 0x27
     e64:	ef000000 	svc	0x00000000
     e68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e6c:	e12fff1e 	bx	lr

00000e70 <putc>:
     e70:	e92d4800 	push	{fp, lr}
     e74:	e28db004 	add	fp, sp, #4
     e78:	e24dd008 	sub	sp, sp, #8
     e7c:	e50b0008 	str	r0, [fp, #-8]
     e80:	e1a03001 	mov	r3, r1
     e84:	e54b3009 	strb	r3, [fp, #-9]
     e88:	e24b3009 	sub	r3, fp, #9
     e8c:	e3a02001 	mov	r2, #1
     e90:	e1a01003 	mov	r1, r3
     e94:	e51b0008 	ldr	r0, [fp, #-8]
     e98:	ebfffedd 	bl	a14 <write>
     e9c:	e1a00000 	nop			@ (mov r0, r0)
     ea0:	e24bd004 	sub	sp, fp, #4
     ea4:	e8bd8800 	pop	{fp, pc}

00000ea8 <printint>:
     ea8:	e92d4800 	push	{fp, lr}
     eac:	e28db004 	add	fp, sp, #4
     eb0:	e24dd030 	sub	sp, sp, #48	@ 0x30
     eb4:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     eb8:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     ebc:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     ec0:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     ec4:	e3a03000 	mov	r3, #0
     ec8:	e50b300c 	str	r3, [fp, #-12]
     ecc:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     ed0:	e3530000 	cmp	r3, #0
     ed4:	0a000008 	beq	efc <printint+0x54>
     ed8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     edc:	e3530000 	cmp	r3, #0
     ee0:	aa000005 	bge	efc <printint+0x54>
     ee4:	e3a03001 	mov	r3, #1
     ee8:	e50b300c 	str	r3, [fp, #-12]
     eec:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ef0:	e2633000 	rsb	r3, r3, #0
     ef4:	e50b3010 	str	r3, [fp, #-16]
     ef8:	ea000001 	b	f04 <printint+0x5c>
     efc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f00:	e50b3010 	str	r3, [fp, #-16]
     f04:	e3a03000 	mov	r3, #0
     f08:	e50b3008 	str	r3, [fp, #-8]
     f0c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     f10:	e51b3010 	ldr	r3, [fp, #-16]
     f14:	e1a01002 	mov	r1, r2
     f18:	e1a00003 	mov	r0, r3
     f1c:	eb0001d5 	bl	1678 <__aeabi_uidivmod>
     f20:	e1a03001 	mov	r3, r1
     f24:	e1a01003 	mov	r1, r3
     f28:	e51b3008 	ldr	r3, [fp, #-8]
     f2c:	e2832001 	add	r2, r3, #1
     f30:	e50b2008 	str	r2, [fp, #-8]
     f34:	e59f20a0 	ldr	r2, [pc, #160]	@ fdc <printint+0x134>
     f38:	e7d22001 	ldrb	r2, [r2, r1]
     f3c:	e2433004 	sub	r3, r3, #4
     f40:	e083300b 	add	r3, r3, fp
     f44:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f48:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     f4c:	e1a01003 	mov	r1, r3
     f50:	e51b0010 	ldr	r0, [fp, #-16]
     f54:	eb00018a 	bl	1584 <__udivsi3>
     f58:	e1a03000 	mov	r3, r0
     f5c:	e50b3010 	str	r3, [fp, #-16]
     f60:	e51b3010 	ldr	r3, [fp, #-16]
     f64:	e3530000 	cmp	r3, #0
     f68:	1affffe7 	bne	f0c <printint+0x64>
     f6c:	e51b300c 	ldr	r3, [fp, #-12]
     f70:	e3530000 	cmp	r3, #0
     f74:	0a00000e 	beq	fb4 <printint+0x10c>
     f78:	e51b3008 	ldr	r3, [fp, #-8]
     f7c:	e2832001 	add	r2, r3, #1
     f80:	e50b2008 	str	r2, [fp, #-8]
     f84:	e2433004 	sub	r3, r3, #4
     f88:	e083300b 	add	r3, r3, fp
     f8c:	e3a0202d 	mov	r2, #45	@ 0x2d
     f90:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f94:	ea000006 	b	fb4 <printint+0x10c>
     f98:	e24b2020 	sub	r2, fp, #32
     f9c:	e51b3008 	ldr	r3, [fp, #-8]
     fa0:	e0823003 	add	r3, r2, r3
     fa4:	e5d33000 	ldrb	r3, [r3]
     fa8:	e1a01003 	mov	r1, r3
     fac:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     fb0:	ebffffae 	bl	e70 <putc>
     fb4:	e51b3008 	ldr	r3, [fp, #-8]
     fb8:	e2433001 	sub	r3, r3, #1
     fbc:	e50b3008 	str	r3, [fp, #-8]
     fc0:	e51b3008 	ldr	r3, [fp, #-8]
     fc4:	e3530000 	cmp	r3, #0
     fc8:	aafffff2 	bge	f98 <printint+0xf0>
     fcc:	e1a00000 	nop			@ (mov r0, r0)
     fd0:	e1a00000 	nop			@ (mov r0, r0)
     fd4:	e24bd004 	sub	sp, fp, #4
     fd8:	e8bd8800 	pop	{fp, pc}
     fdc:	000016bc 	.word	0x000016bc

00000fe0 <printf>:
     fe0:	e92d000e 	push	{r1, r2, r3}
     fe4:	e92d4800 	push	{fp, lr}
     fe8:	e28db004 	add	fp, sp, #4
     fec:	e24dd024 	sub	sp, sp, #36	@ 0x24
     ff0:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     ff4:	e3a03000 	mov	r3, #0
     ff8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ffc:	e28b3008 	add	r3, fp, #8
    1000:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1004:	e3a03000 	mov	r3, #0
    1008:	e50b3010 	str	r3, [fp, #-16]
    100c:	ea000074 	b	11e4 <printf+0x204>
    1010:	e59b2004 	ldr	r2, [fp, #4]
    1014:	e51b3010 	ldr	r3, [fp, #-16]
    1018:	e0823003 	add	r3, r2, r3
    101c:	e5d33000 	ldrb	r3, [r3]
    1020:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1024:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1028:	e3530000 	cmp	r3, #0
    102c:	1a00000b 	bne	1060 <printf+0x80>
    1030:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1034:	e3530025 	cmp	r3, #37	@ 0x25
    1038:	1a000002 	bne	1048 <printf+0x68>
    103c:	e3a03025 	mov	r3, #37	@ 0x25
    1040:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1044:	ea000063 	b	11d8 <printf+0x1f8>
    1048:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    104c:	e6ef3073 	uxtb	r3, r3
    1050:	e1a01003 	mov	r1, r3
    1054:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1058:	ebffff84 	bl	e70 <putc>
    105c:	ea00005d 	b	11d8 <printf+0x1f8>
    1060:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1064:	e3530025 	cmp	r3, #37	@ 0x25
    1068:	1a00005a 	bne	11d8 <printf+0x1f8>
    106c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1070:	e3530064 	cmp	r3, #100	@ 0x64
    1074:	1a00000a 	bne	10a4 <printf+0xc4>
    1078:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    107c:	e5933000 	ldr	r3, [r3]
    1080:	e1a01003 	mov	r1, r3
    1084:	e3a03001 	mov	r3, #1
    1088:	e3a0200a 	mov	r2, #10
    108c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1090:	ebffff84 	bl	ea8 <printint>
    1094:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1098:	e2833004 	add	r3, r3, #4
    109c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10a0:	ea00004a 	b	11d0 <printf+0x1f0>
    10a4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10a8:	e3530078 	cmp	r3, #120	@ 0x78
    10ac:	0a000002 	beq	10bc <printf+0xdc>
    10b0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10b4:	e3530070 	cmp	r3, #112	@ 0x70
    10b8:	1a00000a 	bne	10e8 <printf+0x108>
    10bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10c0:	e5933000 	ldr	r3, [r3]
    10c4:	e1a01003 	mov	r1, r3
    10c8:	e3a03000 	mov	r3, #0
    10cc:	e3a02010 	mov	r2, #16
    10d0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10d4:	ebffff73 	bl	ea8 <printint>
    10d8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10dc:	e2833004 	add	r3, r3, #4
    10e0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10e4:	ea000039 	b	11d0 <printf+0x1f0>
    10e8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10ec:	e3530073 	cmp	r3, #115	@ 0x73
    10f0:	1a000018 	bne	1158 <printf+0x178>
    10f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10f8:	e5933000 	ldr	r3, [r3]
    10fc:	e50b300c 	str	r3, [fp, #-12]
    1100:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1104:	e2833004 	add	r3, r3, #4
    1108:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    110c:	e51b300c 	ldr	r3, [fp, #-12]
    1110:	e3530000 	cmp	r3, #0
    1114:	1a00000a 	bne	1144 <printf+0x164>
    1118:	e59f30f4 	ldr	r3, [pc, #244]	@ 1214 <printf+0x234>
    111c:	e50b300c 	str	r3, [fp, #-12]
    1120:	ea000007 	b	1144 <printf+0x164>
    1124:	e51b300c 	ldr	r3, [fp, #-12]
    1128:	e5d33000 	ldrb	r3, [r3]
    112c:	e1a01003 	mov	r1, r3
    1130:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1134:	ebffff4d 	bl	e70 <putc>
    1138:	e51b300c 	ldr	r3, [fp, #-12]
    113c:	e2833001 	add	r3, r3, #1
    1140:	e50b300c 	str	r3, [fp, #-12]
    1144:	e51b300c 	ldr	r3, [fp, #-12]
    1148:	e5d33000 	ldrb	r3, [r3]
    114c:	e3530000 	cmp	r3, #0
    1150:	1afffff3 	bne	1124 <printf+0x144>
    1154:	ea00001d 	b	11d0 <printf+0x1f0>
    1158:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    115c:	e3530063 	cmp	r3, #99	@ 0x63
    1160:	1a000009 	bne	118c <printf+0x1ac>
    1164:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1168:	e5933000 	ldr	r3, [r3]
    116c:	e6ef3073 	uxtb	r3, r3
    1170:	e1a01003 	mov	r1, r3
    1174:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1178:	ebffff3c 	bl	e70 <putc>
    117c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1180:	e2833004 	add	r3, r3, #4
    1184:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1188:	ea000010 	b	11d0 <printf+0x1f0>
    118c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1190:	e3530025 	cmp	r3, #37	@ 0x25
    1194:	1a000005 	bne	11b0 <printf+0x1d0>
    1198:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    119c:	e6ef3073 	uxtb	r3, r3
    11a0:	e1a01003 	mov	r1, r3
    11a4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11a8:	ebffff30 	bl	e70 <putc>
    11ac:	ea000007 	b	11d0 <printf+0x1f0>
    11b0:	e3a01025 	mov	r1, #37	@ 0x25
    11b4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11b8:	ebffff2c 	bl	e70 <putc>
    11bc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11c0:	e6ef3073 	uxtb	r3, r3
    11c4:	e1a01003 	mov	r1, r3
    11c8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11cc:	ebffff27 	bl	e70 <putc>
    11d0:	e3a03000 	mov	r3, #0
    11d4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    11d8:	e51b3010 	ldr	r3, [fp, #-16]
    11dc:	e2833001 	add	r3, r3, #1
    11e0:	e50b3010 	str	r3, [fp, #-16]
    11e4:	e59b2004 	ldr	r2, [fp, #4]
    11e8:	e51b3010 	ldr	r3, [fp, #-16]
    11ec:	e0823003 	add	r3, r2, r3
    11f0:	e5d33000 	ldrb	r3, [r3]
    11f4:	e3530000 	cmp	r3, #0
    11f8:	1affff84 	bne	1010 <printf+0x30>
    11fc:	e1a00000 	nop			@ (mov r0, r0)
    1200:	e1a00000 	nop			@ (mov r0, r0)
    1204:	e24bd004 	sub	sp, fp, #4
    1208:	e8bd4800 	pop	{fp, lr}
    120c:	e28dd00c 	add	sp, sp, #12
    1210:	e12fff1e 	bx	lr
    1214:	000016b4 	.word	0x000016b4

00001218 <free>:
    1218:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    121c:	e28db000 	add	fp, sp, #0
    1220:	e24dd014 	sub	sp, sp, #20
    1224:	e50b0010 	str	r0, [fp, #-16]
    1228:	e51b3010 	ldr	r3, [fp, #-16]
    122c:	e2433008 	sub	r3, r3, #8
    1230:	e50b300c 	str	r3, [fp, #-12]
    1234:	e59f3154 	ldr	r3, [pc, #340]	@ 1390 <free+0x178>
    1238:	e5933000 	ldr	r3, [r3]
    123c:	e50b3008 	str	r3, [fp, #-8]
    1240:	ea000010 	b	1288 <free+0x70>
    1244:	e51b3008 	ldr	r3, [fp, #-8]
    1248:	e5933000 	ldr	r3, [r3]
    124c:	e51b2008 	ldr	r2, [fp, #-8]
    1250:	e1520003 	cmp	r2, r3
    1254:	3a000008 	bcc	127c <free+0x64>
    1258:	e51b200c 	ldr	r2, [fp, #-12]
    125c:	e51b3008 	ldr	r3, [fp, #-8]
    1260:	e1520003 	cmp	r2, r3
    1264:	8a000010 	bhi	12ac <free+0x94>
    1268:	e51b3008 	ldr	r3, [fp, #-8]
    126c:	e5933000 	ldr	r3, [r3]
    1270:	e51b200c 	ldr	r2, [fp, #-12]
    1274:	e1520003 	cmp	r2, r3
    1278:	3a00000b 	bcc	12ac <free+0x94>
    127c:	e51b3008 	ldr	r3, [fp, #-8]
    1280:	e5933000 	ldr	r3, [r3]
    1284:	e50b3008 	str	r3, [fp, #-8]
    1288:	e51b200c 	ldr	r2, [fp, #-12]
    128c:	e51b3008 	ldr	r3, [fp, #-8]
    1290:	e1520003 	cmp	r2, r3
    1294:	9affffea 	bls	1244 <free+0x2c>
    1298:	e51b3008 	ldr	r3, [fp, #-8]
    129c:	e5933000 	ldr	r3, [r3]
    12a0:	e51b200c 	ldr	r2, [fp, #-12]
    12a4:	e1520003 	cmp	r2, r3
    12a8:	2affffe5 	bcs	1244 <free+0x2c>
    12ac:	e51b300c 	ldr	r3, [fp, #-12]
    12b0:	e5933004 	ldr	r3, [r3, #4]
    12b4:	e1a03183 	lsl	r3, r3, #3
    12b8:	e51b200c 	ldr	r2, [fp, #-12]
    12bc:	e0822003 	add	r2, r2, r3
    12c0:	e51b3008 	ldr	r3, [fp, #-8]
    12c4:	e5933000 	ldr	r3, [r3]
    12c8:	e1520003 	cmp	r2, r3
    12cc:	1a00000d 	bne	1308 <free+0xf0>
    12d0:	e51b300c 	ldr	r3, [fp, #-12]
    12d4:	e5932004 	ldr	r2, [r3, #4]
    12d8:	e51b3008 	ldr	r3, [fp, #-8]
    12dc:	e5933000 	ldr	r3, [r3]
    12e0:	e5933004 	ldr	r3, [r3, #4]
    12e4:	e0822003 	add	r2, r2, r3
    12e8:	e51b300c 	ldr	r3, [fp, #-12]
    12ec:	e5832004 	str	r2, [r3, #4]
    12f0:	e51b3008 	ldr	r3, [fp, #-8]
    12f4:	e5933000 	ldr	r3, [r3]
    12f8:	e5932000 	ldr	r2, [r3]
    12fc:	e51b300c 	ldr	r3, [fp, #-12]
    1300:	e5832000 	str	r2, [r3]
    1304:	ea000003 	b	1318 <free+0x100>
    1308:	e51b3008 	ldr	r3, [fp, #-8]
    130c:	e5932000 	ldr	r2, [r3]
    1310:	e51b300c 	ldr	r3, [fp, #-12]
    1314:	e5832000 	str	r2, [r3]
    1318:	e51b3008 	ldr	r3, [fp, #-8]
    131c:	e5933004 	ldr	r3, [r3, #4]
    1320:	e1a03183 	lsl	r3, r3, #3
    1324:	e51b2008 	ldr	r2, [fp, #-8]
    1328:	e0823003 	add	r3, r2, r3
    132c:	e51b200c 	ldr	r2, [fp, #-12]
    1330:	e1520003 	cmp	r2, r3
    1334:	1a00000b 	bne	1368 <free+0x150>
    1338:	e51b3008 	ldr	r3, [fp, #-8]
    133c:	e5932004 	ldr	r2, [r3, #4]
    1340:	e51b300c 	ldr	r3, [fp, #-12]
    1344:	e5933004 	ldr	r3, [r3, #4]
    1348:	e0822003 	add	r2, r2, r3
    134c:	e51b3008 	ldr	r3, [fp, #-8]
    1350:	e5832004 	str	r2, [r3, #4]
    1354:	e51b300c 	ldr	r3, [fp, #-12]
    1358:	e5932000 	ldr	r2, [r3]
    135c:	e51b3008 	ldr	r3, [fp, #-8]
    1360:	e5832000 	str	r2, [r3]
    1364:	ea000002 	b	1374 <free+0x15c>
    1368:	e51b3008 	ldr	r3, [fp, #-8]
    136c:	e51b200c 	ldr	r2, [fp, #-12]
    1370:	e5832000 	str	r2, [r3]
    1374:	e59f2014 	ldr	r2, [pc, #20]	@ 1390 <free+0x178>
    1378:	e51b3008 	ldr	r3, [fp, #-8]
    137c:	e5823000 	str	r3, [r2]
    1380:	e1a00000 	nop			@ (mov r0, r0)
    1384:	e28bd000 	add	sp, fp, #0
    1388:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    138c:	e12fff1e 	bx	lr
    1390:	000016e0 	.word	0x000016e0

00001394 <morecore>:
    1394:	e92d4800 	push	{fp, lr}
    1398:	e28db004 	add	fp, sp, #4
    139c:	e24dd010 	sub	sp, sp, #16
    13a0:	e50b0010 	str	r0, [fp, #-16]
    13a4:	e51b3010 	ldr	r3, [fp, #-16]
    13a8:	e3530a01 	cmp	r3, #4096	@ 0x1000
    13ac:	2a000001 	bcs	13b8 <morecore+0x24>
    13b0:	e3a03a01 	mov	r3, #4096	@ 0x1000
    13b4:	e50b3010 	str	r3, [fp, #-16]
    13b8:	e51b3010 	ldr	r3, [fp, #-16]
    13bc:	e1a03183 	lsl	r3, r3, #3
    13c0:	e1a00003 	mov	r0, r3
    13c4:	ebfffe07 	bl	be8 <sbrk>
    13c8:	e50b0008 	str	r0, [fp, #-8]
    13cc:	e51b3008 	ldr	r3, [fp, #-8]
    13d0:	e3730001 	cmn	r3, #1
    13d4:	1a000001 	bne	13e0 <morecore+0x4c>
    13d8:	e3a03000 	mov	r3, #0
    13dc:	ea00000a 	b	140c <morecore+0x78>
    13e0:	e51b3008 	ldr	r3, [fp, #-8]
    13e4:	e50b300c 	str	r3, [fp, #-12]
    13e8:	e51b300c 	ldr	r3, [fp, #-12]
    13ec:	e51b2010 	ldr	r2, [fp, #-16]
    13f0:	e5832004 	str	r2, [r3, #4]
    13f4:	e51b300c 	ldr	r3, [fp, #-12]
    13f8:	e2833008 	add	r3, r3, #8
    13fc:	e1a00003 	mov	r0, r3
    1400:	ebffff84 	bl	1218 <free>
    1404:	e59f300c 	ldr	r3, [pc, #12]	@ 1418 <morecore+0x84>
    1408:	e5933000 	ldr	r3, [r3]
    140c:	e1a00003 	mov	r0, r3
    1410:	e24bd004 	sub	sp, fp, #4
    1414:	e8bd8800 	pop	{fp, pc}
    1418:	000016e0 	.word	0x000016e0

0000141c <malloc>:
    141c:	e92d4800 	push	{fp, lr}
    1420:	e28db004 	add	fp, sp, #4
    1424:	e24dd018 	sub	sp, sp, #24
    1428:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    142c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1430:	e2833007 	add	r3, r3, #7
    1434:	e1a031a3 	lsr	r3, r3, #3
    1438:	e2833001 	add	r3, r3, #1
    143c:	e50b3010 	str	r3, [fp, #-16]
    1440:	e59f3134 	ldr	r3, [pc, #308]	@ 157c <malloc+0x160>
    1444:	e5933000 	ldr	r3, [r3]
    1448:	e50b300c 	str	r3, [fp, #-12]
    144c:	e51b300c 	ldr	r3, [fp, #-12]
    1450:	e3530000 	cmp	r3, #0
    1454:	1a00000b 	bne	1488 <malloc+0x6c>
    1458:	e59f3120 	ldr	r3, [pc, #288]	@ 1580 <malloc+0x164>
    145c:	e50b300c 	str	r3, [fp, #-12]
    1460:	e59f2114 	ldr	r2, [pc, #276]	@ 157c <malloc+0x160>
    1464:	e51b300c 	ldr	r3, [fp, #-12]
    1468:	e5823000 	str	r3, [r2]
    146c:	e59f3108 	ldr	r3, [pc, #264]	@ 157c <malloc+0x160>
    1470:	e5933000 	ldr	r3, [r3]
    1474:	e59f2104 	ldr	r2, [pc, #260]	@ 1580 <malloc+0x164>
    1478:	e5823000 	str	r3, [r2]
    147c:	e59f30fc 	ldr	r3, [pc, #252]	@ 1580 <malloc+0x164>
    1480:	e3a02000 	mov	r2, #0
    1484:	e5832004 	str	r2, [r3, #4]
    1488:	e51b300c 	ldr	r3, [fp, #-12]
    148c:	e5933000 	ldr	r3, [r3]
    1490:	e50b3008 	str	r3, [fp, #-8]
    1494:	e51b3008 	ldr	r3, [fp, #-8]
    1498:	e5933004 	ldr	r3, [r3, #4]
    149c:	e51b2010 	ldr	r2, [fp, #-16]
    14a0:	e1520003 	cmp	r2, r3
    14a4:	8a00001e 	bhi	1524 <malloc+0x108>
    14a8:	e51b3008 	ldr	r3, [fp, #-8]
    14ac:	e5933004 	ldr	r3, [r3, #4]
    14b0:	e51b2010 	ldr	r2, [fp, #-16]
    14b4:	e1520003 	cmp	r2, r3
    14b8:	1a000004 	bne	14d0 <malloc+0xb4>
    14bc:	e51b3008 	ldr	r3, [fp, #-8]
    14c0:	e5932000 	ldr	r2, [r3]
    14c4:	e51b300c 	ldr	r3, [fp, #-12]
    14c8:	e5832000 	str	r2, [r3]
    14cc:	ea00000e 	b	150c <malloc+0xf0>
    14d0:	e51b3008 	ldr	r3, [fp, #-8]
    14d4:	e5932004 	ldr	r2, [r3, #4]
    14d8:	e51b3010 	ldr	r3, [fp, #-16]
    14dc:	e0422003 	sub	r2, r2, r3
    14e0:	e51b3008 	ldr	r3, [fp, #-8]
    14e4:	e5832004 	str	r2, [r3, #4]
    14e8:	e51b3008 	ldr	r3, [fp, #-8]
    14ec:	e5933004 	ldr	r3, [r3, #4]
    14f0:	e1a03183 	lsl	r3, r3, #3
    14f4:	e51b2008 	ldr	r2, [fp, #-8]
    14f8:	e0823003 	add	r3, r2, r3
    14fc:	e50b3008 	str	r3, [fp, #-8]
    1500:	e51b3008 	ldr	r3, [fp, #-8]
    1504:	e51b2010 	ldr	r2, [fp, #-16]
    1508:	e5832004 	str	r2, [r3, #4]
    150c:	e59f2068 	ldr	r2, [pc, #104]	@ 157c <malloc+0x160>
    1510:	e51b300c 	ldr	r3, [fp, #-12]
    1514:	e5823000 	str	r3, [r2]
    1518:	e51b3008 	ldr	r3, [fp, #-8]
    151c:	e2833008 	add	r3, r3, #8
    1520:	ea000012 	b	1570 <malloc+0x154>
    1524:	e59f3050 	ldr	r3, [pc, #80]	@ 157c <malloc+0x160>
    1528:	e5933000 	ldr	r3, [r3]
    152c:	e51b2008 	ldr	r2, [fp, #-8]
    1530:	e1520003 	cmp	r2, r3
    1534:	1a000007 	bne	1558 <malloc+0x13c>
    1538:	e51b0010 	ldr	r0, [fp, #-16]
    153c:	ebffff94 	bl	1394 <morecore>
    1540:	e50b0008 	str	r0, [fp, #-8]
    1544:	e51b3008 	ldr	r3, [fp, #-8]
    1548:	e3530000 	cmp	r3, #0
    154c:	1a000001 	bne	1558 <malloc+0x13c>
    1550:	e3a03000 	mov	r3, #0
    1554:	ea000005 	b	1570 <malloc+0x154>
    1558:	e51b3008 	ldr	r3, [fp, #-8]
    155c:	e50b300c 	str	r3, [fp, #-12]
    1560:	e51b3008 	ldr	r3, [fp, #-8]
    1564:	e5933000 	ldr	r3, [r3]
    1568:	e50b3008 	str	r3, [fp, #-8]
    156c:	eaffffc8 	b	1494 <malloc+0x78>
    1570:	e1a00003 	mov	r0, r3
    1574:	e24bd004 	sub	sp, fp, #4
    1578:	e8bd8800 	pop	{fp, pc}
    157c:	000016e0 	.word	0x000016e0
    1580:	000016d8 	.word	0x000016d8

00001584 <__udivsi3>:
    1584:	e2512001 	subs	r2, r1, #1
    1588:	012fff1e 	bxeq	lr
    158c:	3a000036 	bcc	166c <__udivsi3+0xe8>
    1590:	e1500001 	cmp	r0, r1
    1594:	9a000022 	bls	1624 <__udivsi3+0xa0>
    1598:	e1110002 	tst	r1, r2
    159c:	0a000023 	beq	1630 <__udivsi3+0xac>
    15a0:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    15a4:	01a01181 	lsleq	r1, r1, #3
    15a8:	03a03008 	moveq	r3, #8
    15ac:	13a03001 	movne	r3, #1
    15b0:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    15b4:	31510000 	cmpcc	r1, r0
    15b8:	31a01201 	lslcc	r1, r1, #4
    15bc:	31a03203 	lslcc	r3, r3, #4
    15c0:	3afffffa 	bcc	15b0 <__udivsi3+0x2c>
    15c4:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    15c8:	31510000 	cmpcc	r1, r0
    15cc:	31a01081 	lslcc	r1, r1, #1
    15d0:	31a03083 	lslcc	r3, r3, #1
    15d4:	3afffffa 	bcc	15c4 <__udivsi3+0x40>
    15d8:	e3a02000 	mov	r2, #0
    15dc:	e1500001 	cmp	r0, r1
    15e0:	20400001 	subcs	r0, r0, r1
    15e4:	21822003 	orrcs	r2, r2, r3
    15e8:	e15000a1 	cmp	r0, r1, lsr #1
    15ec:	204000a1 	subcs	r0, r0, r1, lsr #1
    15f0:	218220a3 	orrcs	r2, r2, r3, lsr #1
    15f4:	e1500121 	cmp	r0, r1, lsr #2
    15f8:	20400121 	subcs	r0, r0, r1, lsr #2
    15fc:	21822123 	orrcs	r2, r2, r3, lsr #2
    1600:	e15001a1 	cmp	r0, r1, lsr #3
    1604:	204001a1 	subcs	r0, r0, r1, lsr #3
    1608:	218221a3 	orrcs	r2, r2, r3, lsr #3
    160c:	e3500000 	cmp	r0, #0
    1610:	11b03223 	lsrsne	r3, r3, #4
    1614:	11a01221 	lsrne	r1, r1, #4
    1618:	1affffef 	bne	15dc <__udivsi3+0x58>
    161c:	e1a00002 	mov	r0, r2
    1620:	e12fff1e 	bx	lr
    1624:	03a00001 	moveq	r0, #1
    1628:	13a00000 	movne	r0, #0
    162c:	e12fff1e 	bx	lr
    1630:	e3510801 	cmp	r1, #65536	@ 0x10000
    1634:	21a01821 	lsrcs	r1, r1, #16
    1638:	23a02010 	movcs	r2, #16
    163c:	33a02000 	movcc	r2, #0
    1640:	e3510c01 	cmp	r1, #256	@ 0x100
    1644:	21a01421 	lsrcs	r1, r1, #8
    1648:	22822008 	addcs	r2, r2, #8
    164c:	e3510010 	cmp	r1, #16
    1650:	21a01221 	lsrcs	r1, r1, #4
    1654:	22822004 	addcs	r2, r2, #4
    1658:	e3510004 	cmp	r1, #4
    165c:	82822003 	addhi	r2, r2, #3
    1660:	908220a1 	addls	r2, r2, r1, lsr #1
    1664:	e1a00230 	lsr	r0, r0, r2
    1668:	e12fff1e 	bx	lr
    166c:	e3500000 	cmp	r0, #0
    1670:	13e00000 	mvnne	r0, #0
    1674:	ea000007 	b	1698 <__aeabi_idiv0>

00001678 <__aeabi_uidivmod>:
    1678:	e3510000 	cmp	r1, #0
    167c:	0afffffa 	beq	166c <__udivsi3+0xe8>
    1680:	e92d4003 	push	{r0, r1, lr}
    1684:	ebffffbe 	bl	1584 <__udivsi3>
    1688:	e8bd4006 	pop	{r1, r2, lr}
    168c:	e0030092 	mul	r3, r2, r0
    1690:	e0411003 	sub	r1, r1, r3
    1694:	e12fff1e 	bx	lr

00001698 <__aeabi_idiv0>:
    1698:	e12fff1e 	bx	lr
