
_t_l_cv1:     file format elf32-littlearm


Disassembly of section .text:

00000000 <thread2>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e51b3010 	ldr	r3, [fp, #-16]
      14:	e50b3008 	str	r3, [fp, #-8]
      18:	e59f1074 	ldr	r1, [pc, #116]	@ 94 <thread2+0x94>
      1c:	e3a00001 	mov	r0, #1
      20:	eb0003d0 	bl	f68 <printf>
      24:	e51b3008 	ldr	r3, [fp, #-8]
      28:	e5933004 	ldr	r3, [r3, #4]
      2c:	e1a00003 	mov	r0, r3
      30:	eb000195 	bl	68c <acquireLock>
      34:	e59f105c 	ldr	r1, [pc, #92]	@ 98 <thread2+0x98>
      38:	e3a00001 	mov	r0, #1
      3c:	eb0003c9 	bl	f68 <printf>
      40:	e51b3008 	ldr	r3, [fp, #-8]
      44:	e5933000 	ldr	r3, [r3]
      48:	e50b300c 	str	r3, [fp, #-12]
      4c:	e51b300c 	ldr	r3, [fp, #-12]
      50:	e5933000 	ldr	r3, [r3]
      54:	e2832001 	add	r2, r3, #1
      58:	e51b300c 	ldr	r3, [fp, #-12]
      5c:	e5832000 	str	r2, [r3]
      60:	e51b3008 	ldr	r3, [fp, #-8]
      64:	e5933008 	ldr	r3, [r3, #8]
      68:	e1a00003 	mov	r0, r3
      6c:	eb0001c4 	bl	784 <broadcast>
      70:	e51b3008 	ldr	r3, [fp, #-8]
      74:	e5933004 	ldr	r3, [r3, #4]
      78:	e1a00003 	mov	r0, r3
      7c:	eb000196 	bl	6dc <releaseLock>
      80:	eb00030b 	bl	cb4 <thread_exit>
      84:	e3a03000 	mov	r3, #0
      88:	e1a00003 	mov	r0, r3
      8c:	e24bd004 	sub	sp, fp, #4
      90:	e8bd8800 	pop	{fp, pc}
      94:	00001624 	.word	0x00001624
      98:	00001638 	.word	0x00001638

0000009c <main>:
      9c:	e92d4800 	push	{fp, lr}
      a0:	e28db004 	add	fp, sp, #4
      a4:	e24dd028 	sub	sp, sp, #40	@ 0x28
      a8:	e59f10a8 	ldr	r1, [pc, #168]	@ 158 <main+0xbc>
      ac:	e3a00001 	mov	r0, #1
      b0:	eb0003ac 	bl	f68 <printf>
      b4:	e3a0300a 	mov	r3, #10
      b8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      bc:	e24b3018 	sub	r3, fp, #24
      c0:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
      c4:	e24b300c 	sub	r3, fp, #12
      c8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
      cc:	e24b3014 	sub	r3, fp, #20
      d0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
      d4:	e24b300c 	sub	r3, fp, #12
      d8:	e1a00003 	mov	r0, r3
      dc:	eb00015c 	bl	654 <initiateLock>
      e0:	e24b3014 	sub	r3, fp, #20
      e4:	e1a00003 	mov	r0, r3
      e8:	eb000187 	bl	70c <initiateCondVar>
      ec:	e24b300c 	sub	r3, fp, #12
      f0:	e1a00003 	mov	r0, r3
      f4:	eb000164 	bl	68c <acquireLock>
      f8:	e24b2024 	sub	r2, fp, #36	@ 0x24
      fc:	e24b3028 	sub	r3, fp, #40	@ 0x28
     100:	e59f1054 	ldr	r1, [pc, #84]	@ 15c <main+0xc0>
     104:	e1a00003 	mov	r0, r3
     108:	eb0002e0 	bl	c90 <thread_create>
     10c:	e3a000c8 	mov	r0, #200	@ 0xc8
     110:	eb00029f 	bl	b94 <sleep>
     114:	e24b200c 	sub	r2, fp, #12
     118:	e24b3014 	sub	r3, fp, #20
     11c:	e1a01002 	mov	r1, r2
     120:	e1a00003 	mov	r0, r3
     124:	eb000186 	bl	744 <condWait>
     128:	e24b300c 	sub	r3, fp, #12
     12c:	e1a00003 	mov	r0, r3
     130:	eb000169 	bl	6dc <releaseLock>
     134:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     138:	e1a00003 	mov	r0, r3
     13c:	eb0002e5 	bl	cd8 <thread_join>
     140:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     144:	e1a02003 	mov	r2, r3
     148:	e59f1010 	ldr	r1, [pc, #16]	@ 160 <main+0xc4>
     14c:	e3a00001 	mov	r0, #1
     150:	eb000384 	bl	f68 <printf>
     154:	eb0001ec 	bl	90c <exit>
     158:	00001654 	.word	0x00001654
     15c:	00000000 	.word	0x00000000
     160:	00001664 	.word	0x00001664

00000164 <strcpy>:
     164:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     168:	e28db000 	add	fp, sp, #0
     16c:	e24dd014 	sub	sp, sp, #20
     170:	e50b0010 	str	r0, [fp, #-16]
     174:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     178:	e51b3010 	ldr	r3, [fp, #-16]
     17c:	e50b3008 	str	r3, [fp, #-8]
     180:	e1a00000 	nop			@ (mov r0, r0)
     184:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     188:	e2823001 	add	r3, r2, #1
     18c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     190:	e51b3010 	ldr	r3, [fp, #-16]
     194:	e2831001 	add	r1, r3, #1
     198:	e50b1010 	str	r1, [fp, #-16]
     19c:	e5d22000 	ldrb	r2, [r2]
     1a0:	e5c32000 	strb	r2, [r3]
     1a4:	e5d33000 	ldrb	r3, [r3]
     1a8:	e3530000 	cmp	r3, #0
     1ac:	1afffff4 	bne	184 <strcpy+0x20>
     1b0:	e51b3008 	ldr	r3, [fp, #-8]
     1b4:	e1a00003 	mov	r0, r3
     1b8:	e28bd000 	add	sp, fp, #0
     1bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1c0:	e12fff1e 	bx	lr

000001c4 <strcmp>:
     1c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1c8:	e28db000 	add	fp, sp, #0
     1cc:	e24dd00c 	sub	sp, sp, #12
     1d0:	e50b0008 	str	r0, [fp, #-8]
     1d4:	e50b100c 	str	r1, [fp, #-12]
     1d8:	ea000005 	b	1f4 <strcmp+0x30>
     1dc:	e51b3008 	ldr	r3, [fp, #-8]
     1e0:	e2833001 	add	r3, r3, #1
     1e4:	e50b3008 	str	r3, [fp, #-8]
     1e8:	e51b300c 	ldr	r3, [fp, #-12]
     1ec:	e2833001 	add	r3, r3, #1
     1f0:	e50b300c 	str	r3, [fp, #-12]
     1f4:	e51b3008 	ldr	r3, [fp, #-8]
     1f8:	e5d33000 	ldrb	r3, [r3]
     1fc:	e3530000 	cmp	r3, #0
     200:	0a000005 	beq	21c <strcmp+0x58>
     204:	e51b3008 	ldr	r3, [fp, #-8]
     208:	e5d32000 	ldrb	r2, [r3]
     20c:	e51b300c 	ldr	r3, [fp, #-12]
     210:	e5d33000 	ldrb	r3, [r3]
     214:	e1520003 	cmp	r2, r3
     218:	0affffef 	beq	1dc <strcmp+0x18>
     21c:	e51b3008 	ldr	r3, [fp, #-8]
     220:	e5d33000 	ldrb	r3, [r3]
     224:	e1a02003 	mov	r2, r3
     228:	e51b300c 	ldr	r3, [fp, #-12]
     22c:	e5d33000 	ldrb	r3, [r3]
     230:	e0423003 	sub	r3, r2, r3
     234:	e1a00003 	mov	r0, r3
     238:	e28bd000 	add	sp, fp, #0
     23c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     240:	e12fff1e 	bx	lr

00000244 <strlen>:
     244:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     248:	e28db000 	add	fp, sp, #0
     24c:	e24dd014 	sub	sp, sp, #20
     250:	e50b0010 	str	r0, [fp, #-16]
     254:	e3a03000 	mov	r3, #0
     258:	e50b3008 	str	r3, [fp, #-8]
     25c:	ea000002 	b	26c <strlen+0x28>
     260:	e51b3008 	ldr	r3, [fp, #-8]
     264:	e2833001 	add	r3, r3, #1
     268:	e50b3008 	str	r3, [fp, #-8]
     26c:	e51b3008 	ldr	r3, [fp, #-8]
     270:	e51b2010 	ldr	r2, [fp, #-16]
     274:	e0823003 	add	r3, r2, r3
     278:	e5d33000 	ldrb	r3, [r3]
     27c:	e3530000 	cmp	r3, #0
     280:	1afffff6 	bne	260 <strlen+0x1c>
     284:	e51b3008 	ldr	r3, [fp, #-8]
     288:	e1a00003 	mov	r0, r3
     28c:	e28bd000 	add	sp, fp, #0
     290:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     294:	e12fff1e 	bx	lr

00000298 <memset>:
     298:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     29c:	e28db000 	add	fp, sp, #0
     2a0:	e24dd024 	sub	sp, sp, #36	@ 0x24
     2a4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     2a8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     2ac:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     2b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2b4:	e50b3008 	str	r3, [fp, #-8]
     2b8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     2bc:	e54b300d 	strb	r3, [fp, #-13]
     2c0:	e55b200d 	ldrb	r2, [fp, #-13]
     2c4:	e1a03002 	mov	r3, r2
     2c8:	e1a03403 	lsl	r3, r3, #8
     2cc:	e0833002 	add	r3, r3, r2
     2d0:	e1a03803 	lsl	r3, r3, #16
     2d4:	e1a02003 	mov	r2, r3
     2d8:	e55b300d 	ldrb	r3, [fp, #-13]
     2dc:	e1a03403 	lsl	r3, r3, #8
     2e0:	e1822003 	orr	r2, r2, r3
     2e4:	e55b300d 	ldrb	r3, [fp, #-13]
     2e8:	e1823003 	orr	r3, r2, r3
     2ec:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     2f0:	ea000008 	b	318 <memset+0x80>
     2f4:	e51b3008 	ldr	r3, [fp, #-8]
     2f8:	e55b200d 	ldrb	r2, [fp, #-13]
     2fc:	e5c32000 	strb	r2, [r3]
     300:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     304:	e2433001 	sub	r3, r3, #1
     308:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     30c:	e51b3008 	ldr	r3, [fp, #-8]
     310:	e2833001 	add	r3, r3, #1
     314:	e50b3008 	str	r3, [fp, #-8]
     318:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     31c:	e3530000 	cmp	r3, #0
     320:	0a000003 	beq	334 <memset+0x9c>
     324:	e51b3008 	ldr	r3, [fp, #-8]
     328:	e2033003 	and	r3, r3, #3
     32c:	e3530000 	cmp	r3, #0
     330:	1affffef 	bne	2f4 <memset+0x5c>
     334:	e51b3008 	ldr	r3, [fp, #-8]
     338:	e50b300c 	str	r3, [fp, #-12]
     33c:	ea000008 	b	364 <memset+0xcc>
     340:	e51b300c 	ldr	r3, [fp, #-12]
     344:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     348:	e5832000 	str	r2, [r3]
     34c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     350:	e2433004 	sub	r3, r3, #4
     354:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     358:	e51b300c 	ldr	r3, [fp, #-12]
     35c:	e2833004 	add	r3, r3, #4
     360:	e50b300c 	str	r3, [fp, #-12]
     364:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     368:	e3530003 	cmp	r3, #3
     36c:	8afffff3 	bhi	340 <memset+0xa8>
     370:	e51b300c 	ldr	r3, [fp, #-12]
     374:	e50b3008 	str	r3, [fp, #-8]
     378:	ea000008 	b	3a0 <memset+0x108>
     37c:	e51b3008 	ldr	r3, [fp, #-8]
     380:	e55b200d 	ldrb	r2, [fp, #-13]
     384:	e5c32000 	strb	r2, [r3]
     388:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     38c:	e2433001 	sub	r3, r3, #1
     390:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     394:	e51b3008 	ldr	r3, [fp, #-8]
     398:	e2833001 	add	r3, r3, #1
     39c:	e50b3008 	str	r3, [fp, #-8]
     3a0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3a4:	e3530000 	cmp	r3, #0
     3a8:	1afffff3 	bne	37c <memset+0xe4>
     3ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3b0:	e1a00003 	mov	r0, r3
     3b4:	e28bd000 	add	sp, fp, #0
     3b8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3bc:	e12fff1e 	bx	lr

000003c0 <strchr>:
     3c0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3c4:	e28db000 	add	fp, sp, #0
     3c8:	e24dd00c 	sub	sp, sp, #12
     3cc:	e50b0008 	str	r0, [fp, #-8]
     3d0:	e1a03001 	mov	r3, r1
     3d4:	e54b3009 	strb	r3, [fp, #-9]
     3d8:	ea000009 	b	404 <strchr+0x44>
     3dc:	e51b3008 	ldr	r3, [fp, #-8]
     3e0:	e5d33000 	ldrb	r3, [r3]
     3e4:	e55b2009 	ldrb	r2, [fp, #-9]
     3e8:	e1520003 	cmp	r2, r3
     3ec:	1a000001 	bne	3f8 <strchr+0x38>
     3f0:	e51b3008 	ldr	r3, [fp, #-8]
     3f4:	ea000007 	b	418 <strchr+0x58>
     3f8:	e51b3008 	ldr	r3, [fp, #-8]
     3fc:	e2833001 	add	r3, r3, #1
     400:	e50b3008 	str	r3, [fp, #-8]
     404:	e51b3008 	ldr	r3, [fp, #-8]
     408:	e5d33000 	ldrb	r3, [r3]
     40c:	e3530000 	cmp	r3, #0
     410:	1afffff1 	bne	3dc <strchr+0x1c>
     414:	e3a03000 	mov	r3, #0
     418:	e1a00003 	mov	r0, r3
     41c:	e28bd000 	add	sp, fp, #0
     420:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     424:	e12fff1e 	bx	lr

00000428 <gets>:
     428:	e92d4800 	push	{fp, lr}
     42c:	e28db004 	add	fp, sp, #4
     430:	e24dd018 	sub	sp, sp, #24
     434:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     438:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     43c:	e3a03000 	mov	r3, #0
     440:	e50b3008 	str	r3, [fp, #-8]
     444:	ea000016 	b	4a4 <gets+0x7c>
     448:	e24b300d 	sub	r3, fp, #13
     44c:	e3a02001 	mov	r2, #1
     450:	e1a01003 	mov	r1, r3
     454:	e3a00000 	mov	r0, #0
     458:	eb000146 	bl	978 <read>
     45c:	e50b000c 	str	r0, [fp, #-12]
     460:	e51b300c 	ldr	r3, [fp, #-12]
     464:	e3530000 	cmp	r3, #0
     468:	da000013 	ble	4bc <gets+0x94>
     46c:	e51b3008 	ldr	r3, [fp, #-8]
     470:	e2832001 	add	r2, r3, #1
     474:	e50b2008 	str	r2, [fp, #-8]
     478:	e1a02003 	mov	r2, r3
     47c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     480:	e0833002 	add	r3, r3, r2
     484:	e55b200d 	ldrb	r2, [fp, #-13]
     488:	e5c32000 	strb	r2, [r3]
     48c:	e55b300d 	ldrb	r3, [fp, #-13]
     490:	e353000a 	cmp	r3, #10
     494:	0a000009 	beq	4c0 <gets+0x98>
     498:	e55b300d 	ldrb	r3, [fp, #-13]
     49c:	e353000d 	cmp	r3, #13
     4a0:	0a000006 	beq	4c0 <gets+0x98>
     4a4:	e51b3008 	ldr	r3, [fp, #-8]
     4a8:	e2833001 	add	r3, r3, #1
     4ac:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     4b0:	e1520003 	cmp	r2, r3
     4b4:	caffffe3 	bgt	448 <gets+0x20>
     4b8:	ea000000 	b	4c0 <gets+0x98>
     4bc:	e1a00000 	nop			@ (mov r0, r0)
     4c0:	e51b3008 	ldr	r3, [fp, #-8]
     4c4:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     4c8:	e0823003 	add	r3, r2, r3
     4cc:	e3a02000 	mov	r2, #0
     4d0:	e5c32000 	strb	r2, [r3]
     4d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4d8:	e1a00003 	mov	r0, r3
     4dc:	e24bd004 	sub	sp, fp, #4
     4e0:	e8bd8800 	pop	{fp, pc}

000004e4 <stat>:
     4e4:	e92d4800 	push	{fp, lr}
     4e8:	e28db004 	add	fp, sp, #4
     4ec:	e24dd010 	sub	sp, sp, #16
     4f0:	e50b0010 	str	r0, [fp, #-16]
     4f4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4f8:	e3a01000 	mov	r1, #0
     4fc:	e51b0010 	ldr	r0, [fp, #-16]
     500:	eb000149 	bl	a2c <open>
     504:	e50b0008 	str	r0, [fp, #-8]
     508:	e51b3008 	ldr	r3, [fp, #-8]
     50c:	e3530000 	cmp	r3, #0
     510:	aa000001 	bge	51c <stat+0x38>
     514:	e3e03000 	mvn	r3, #0
     518:	ea000006 	b	538 <stat+0x54>
     51c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     520:	e51b0008 	ldr	r0, [fp, #-8]
     524:	eb00015b 	bl	a98 <fstat>
     528:	e50b000c 	str	r0, [fp, #-12]
     52c:	e51b0008 	ldr	r0, [fp, #-8]
     530:	eb000122 	bl	9c0 <close>
     534:	e51b300c 	ldr	r3, [fp, #-12]
     538:	e1a00003 	mov	r0, r3
     53c:	e24bd004 	sub	sp, fp, #4
     540:	e8bd8800 	pop	{fp, pc}

00000544 <atoi>:
     544:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     548:	e28db000 	add	fp, sp, #0
     54c:	e24dd014 	sub	sp, sp, #20
     550:	e50b0010 	str	r0, [fp, #-16]
     554:	e3a03000 	mov	r3, #0
     558:	e50b3008 	str	r3, [fp, #-8]
     55c:	ea00000c 	b	594 <atoi+0x50>
     560:	e51b2008 	ldr	r2, [fp, #-8]
     564:	e1a03002 	mov	r3, r2
     568:	e1a03103 	lsl	r3, r3, #2
     56c:	e0833002 	add	r3, r3, r2
     570:	e1a03083 	lsl	r3, r3, #1
     574:	e1a01003 	mov	r1, r3
     578:	e51b3010 	ldr	r3, [fp, #-16]
     57c:	e2832001 	add	r2, r3, #1
     580:	e50b2010 	str	r2, [fp, #-16]
     584:	e5d33000 	ldrb	r3, [r3]
     588:	e0813003 	add	r3, r1, r3
     58c:	e2433030 	sub	r3, r3, #48	@ 0x30
     590:	e50b3008 	str	r3, [fp, #-8]
     594:	e51b3010 	ldr	r3, [fp, #-16]
     598:	e5d33000 	ldrb	r3, [r3]
     59c:	e353002f 	cmp	r3, #47	@ 0x2f
     5a0:	9a000003 	bls	5b4 <atoi+0x70>
     5a4:	e51b3010 	ldr	r3, [fp, #-16]
     5a8:	e5d33000 	ldrb	r3, [r3]
     5ac:	e3530039 	cmp	r3, #57	@ 0x39
     5b0:	9affffea 	bls	560 <atoi+0x1c>
     5b4:	e51b3010 	ldr	r3, [fp, #-16]
     5b8:	e5d33000 	ldrb	r3, [r3]
     5bc:	e3530000 	cmp	r3, #0
     5c0:	1a000001 	bne	5cc <atoi+0x88>
     5c4:	e51b3008 	ldr	r3, [fp, #-8]
     5c8:	ea000000 	b	5d0 <atoi+0x8c>
     5cc:	e3e03000 	mvn	r3, #0
     5d0:	e1a00003 	mov	r0, r3
     5d4:	e28bd000 	add	sp, fp, #0
     5d8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5dc:	e12fff1e 	bx	lr

000005e0 <memmove>:
     5e0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5e4:	e28db000 	add	fp, sp, #0
     5e8:	e24dd01c 	sub	sp, sp, #28
     5ec:	e50b0010 	str	r0, [fp, #-16]
     5f0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5f4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5f8:	e51b3010 	ldr	r3, [fp, #-16]
     5fc:	e50b3008 	str	r3, [fp, #-8]
     600:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     604:	e50b300c 	str	r3, [fp, #-12]
     608:	ea000007 	b	62c <memmove+0x4c>
     60c:	e51b200c 	ldr	r2, [fp, #-12]
     610:	e2823001 	add	r3, r2, #1
     614:	e50b300c 	str	r3, [fp, #-12]
     618:	e51b3008 	ldr	r3, [fp, #-8]
     61c:	e2831001 	add	r1, r3, #1
     620:	e50b1008 	str	r1, [fp, #-8]
     624:	e5d22000 	ldrb	r2, [r2]
     628:	e5c32000 	strb	r2, [r3]
     62c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     630:	e2432001 	sub	r2, r3, #1
     634:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     638:	e3530000 	cmp	r3, #0
     63c:	cafffff2 	bgt	60c <memmove+0x2c>
     640:	e51b3010 	ldr	r3, [fp, #-16]
     644:	e1a00003 	mov	r0, r3
     648:	e28bd000 	add	sp, fp, #0
     64c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     650:	e12fff1e 	bx	lr

00000654 <initiateLock>:
     654:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     658:	e28db000 	add	fp, sp, #0
     65c:	e24dd00c 	sub	sp, sp, #12
     660:	e50b0008 	str	r0, [fp, #-8]
     664:	e51b3008 	ldr	r3, [fp, #-8]
     668:	e3a02000 	mov	r2, #0
     66c:	e5832000 	str	r2, [r3]
     670:	e51b3008 	ldr	r3, [fp, #-8]
     674:	e3a02001 	mov	r2, #1
     678:	e5832004 	str	r2, [r3, #4]
     67c:	e1a00000 	nop			@ (mov r0, r0)
     680:	e28bd000 	add	sp, fp, #0
     684:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     688:	e12fff1e 	bx	lr

0000068c <acquireLock>:
     68c:	e92d4800 	push	{fp, lr}
     690:	e28db004 	add	fp, sp, #4
     694:	e24dd008 	sub	sp, sp, #8
     698:	e50b0008 	str	r0, [fp, #-8]
     69c:	ea000001 	b	6a8 <acquireLock+0x1c>
     6a0:	e3a00001 	mov	r0, #1
     6a4:	eb00013a 	bl	b94 <sleep>
     6a8:	e51b2008 	ldr	r2, [fp, #-8]
     6ac:	e3a01001 	mov	r1, #1
     6b0:	e1923f9f 	ldrex	r3, [r2]
     6b4:	e1820f91 	strex	r0, r1, [r2]
     6b8:	e3500000 	cmp	r0, #0
     6bc:	1afffffb 	bne	6b0 <acquireLock+0x24>
     6c0:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     6c4:	e3530001 	cmp	r3, #1
     6c8:	0afffff4 	beq	6a0 <acquireLock+0x14>
     6cc:	e1a00000 	nop			@ (mov r0, r0)
     6d0:	e1a00000 	nop			@ (mov r0, r0)
     6d4:	e24bd004 	sub	sp, fp, #4
     6d8:	e8bd8800 	pop	{fp, pc}

000006dc <releaseLock>:
     6dc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6e0:	e28db000 	add	fp, sp, #0
     6e4:	e24dd00c 	sub	sp, sp, #12
     6e8:	e50b0008 	str	r0, [fp, #-8]
     6ec:	e51b3008 	ldr	r3, [fp, #-8]
     6f0:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     6f4:	e3a02000 	mov	r2, #0
     6f8:	e5832000 	str	r2, [r3]
     6fc:	e1a00000 	nop			@ (mov r0, r0)
     700:	e28bd000 	add	sp, fp, #0
     704:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     708:	e12fff1e 	bx	lr

0000070c <initiateCondVar>:
     70c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     710:	e28db000 	add	fp, sp, #0
     714:	e24dd00c 	sub	sp, sp, #12
     718:	e50b0008 	str	r0, [fp, #-8]
     71c:	e51b3008 	ldr	r3, [fp, #-8]
     720:	e3a02000 	mov	r2, #0
     724:	e5832000 	str	r2, [r3]
     728:	e51b3008 	ldr	r3, [fp, #-8]
     72c:	e3a02001 	mov	r2, #1
     730:	e5832004 	str	r2, [r3, #4]
     734:	e1a00000 	nop			@ (mov r0, r0)
     738:	e28bd000 	add	sp, fp, #0
     73c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     740:	e12fff1e 	bx	lr

00000744 <condWait>:
     744:	e92d4800 	push	{fp, lr}
     748:	e28db004 	add	fp, sp, #4
     74c:	e24dd008 	sub	sp, sp, #8
     750:	e50b0008 	str	r0, [fp, #-8]
     754:	e50b100c 	str	r1, [fp, #-12]
     758:	e51b000c 	ldr	r0, [fp, #-12]
     75c:	ebffffde 	bl	6dc <releaseLock>
     760:	e51b3008 	ldr	r3, [fp, #-8]
     764:	e5933000 	ldr	r3, [r3]
     768:	e1a00003 	mov	r0, r3
     76c:	eb00017d 	bl	d68 <sleepChan>
     770:	e51b000c 	ldr	r0, [fp, #-12]
     774:	ebffffc4 	bl	68c <acquireLock>
     778:	e1a00000 	nop			@ (mov r0, r0)
     77c:	e24bd004 	sub	sp, fp, #4
     780:	e8bd8800 	pop	{fp, pc}

00000784 <broadcast>:
     784:	e92d4800 	push	{fp, lr}
     788:	e28db004 	add	fp, sp, #4
     78c:	e24dd008 	sub	sp, sp, #8
     790:	e50b0008 	str	r0, [fp, #-8]
     794:	e51b3008 	ldr	r3, [fp, #-8]
     798:	e5933000 	ldr	r3, [r3]
     79c:	e1a00003 	mov	r0, r3
     7a0:	eb000182 	bl	db0 <sigChan>
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
     7dc:	ebffff9c 	bl	654 <initiateLock>
     7e0:	e51b3008 	ldr	r3, [fp, #-8]
     7e4:	e283300c 	add	r3, r3, #12
     7e8:	e1a00003 	mov	r0, r3
     7ec:	ebffffc6 	bl	70c <initiateCondVar>
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
     824:	ebffff98 	bl	68c <acquireLock>
     828:	e51b3008 	ldr	r3, [fp, #-8]
     82c:	e5933000 	ldr	r3, [r3]
     830:	e2832001 	add	r2, r3, #1
     834:	e51b3008 	ldr	r3, [fp, #-8]
     838:	e5832000 	str	r2, [r3]
     83c:	e51b3008 	ldr	r3, [fp, #-8]
     840:	e283300c 	add	r3, r3, #12
     844:	e1a00003 	mov	r0, r3
     848:	ebffffcd 	bl	784 <broadcast>
     84c:	e51b3008 	ldr	r3, [fp, #-8]
     850:	e2833004 	add	r3, r3, #4
     854:	e1a00003 	mov	r0, r3
     858:	ebffff9f 	bl	6dc <releaseLock>
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
     884:	ebffff80 	bl	68c <acquireLock>
     888:	ea000006 	b	8a8 <semDown+0x40>
     88c:	e51b3008 	ldr	r3, [fp, #-8]
     890:	e283200c 	add	r2, r3, #12
     894:	e51b3008 	ldr	r3, [fp, #-8]
     898:	e2833004 	add	r3, r3, #4
     89c:	e1a01003 	mov	r1, r3
     8a0:	e1a00002 	mov	r0, r2
     8a4:	ebffffa6 	bl	744 <condWait>
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
     8d8:	ebffff7f 	bl	6dc <releaseLock>
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
     f64:	00001680 	.word	0x00001680

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
    119c:	00001678 	.word	0x00001678

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
    1318:	0000169c 	.word	0x0000169c

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
    13a0:	0000169c 	.word	0x0000169c

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
    1504:	0000169c 	.word	0x0000169c
    1508:	00001694 	.word	0x00001694

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
