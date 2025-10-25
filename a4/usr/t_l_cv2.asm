
_t_l_cv2:     file format elf32-littlearm


Disassembly of section .text:

00000000 <toggle1>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e59f007c 	ldr	r0, [pc, #124]	@ 94 <toggle1+0x94>
      14:	eb0001c2 	bl	724 <acquireLock>
      18:	e3a03000 	mov	r3, #0
      1c:	e50b3008 	str	r3, [fp, #-8]
      20:	ea000011 	b	6c <toggle1+0x6c>
      24:	e59f1068 	ldr	r1, [pc, #104]	@ 94 <toggle1+0x94>
      28:	e59f0068 	ldr	r0, [pc, #104]	@ 98 <toggle1+0x98>
      2c:	eb0001f4 	bl	804 <condWait>
      30:	e51b3010 	ldr	r3, [fp, #-16]
      34:	e5933000 	ldr	r3, [r3]
      38:	e3530001 	cmp	r3, #1
      3c:	0afffff8 	beq	24 <toggle1+0x24>
      40:	e59f1054 	ldr	r1, [pc, #84]	@ 9c <toggle1+0x9c>
      44:	e3a00001 	mov	r0, #1
      48:	eb000414 	bl	10a0 <printf>
      4c:	e51b3010 	ldr	r3, [fp, #-16]
      50:	e3a02001 	mov	r2, #1
      54:	e5832000 	str	r2, [r3]
      58:	e59f0038 	ldr	r0, [pc, #56]	@ 98 <toggle1+0x98>
      5c:	eb000201 	bl	868 <broadcast>
      60:	e51b3008 	ldr	r3, [fp, #-8]
      64:	e2833001 	add	r3, r3, #1
      68:	e50b3008 	str	r3, [fp, #-8]
      6c:	e51b3008 	ldr	r3, [fp, #-8]
      70:	e3530009 	cmp	r3, #9
      74:	daffffed 	ble	30 <toggle1+0x30>
      78:	e59f0014 	ldr	r0, [pc, #20]	@ 94 <toggle1+0x94>
      7c:	eb0001bc 	bl	774 <releaseLock>
      80:	eb000359 	bl	dec <thread_exit>
      84:	e3a03000 	mov	r3, #0
      88:	e1a00003 	mov	r0, r3
      8c:	e24bd004 	sub	sp, fp, #4
      90:	e8bd8800 	pop	{fp, pc}
      94:	00001798 	.word	0x00001798
      98:	000017a0 	.word	0x000017a0
      9c:	0000175c 	.word	0x0000175c

000000a0 <toggle2>:
      a0:	e92d4800 	push	{fp, lr}
      a4:	e28db004 	add	fp, sp, #4
      a8:	e24dd010 	sub	sp, sp, #16
      ac:	e50b0010 	str	r0, [fp, #-16]
      b0:	e59f007c 	ldr	r0, [pc, #124]	@ 134 <toggle2+0x94>
      b4:	eb00019a 	bl	724 <acquireLock>
      b8:	e3a03000 	mov	r3, #0
      bc:	e50b3008 	str	r3, [fp, #-8]
      c0:	ea000011 	b	10c <toggle2+0x6c>
      c4:	e59f1068 	ldr	r1, [pc, #104]	@ 134 <toggle2+0x94>
      c8:	e59f0068 	ldr	r0, [pc, #104]	@ 138 <toggle2+0x98>
      cc:	eb0001cc 	bl	804 <condWait>
      d0:	e51b3010 	ldr	r3, [fp, #-16]
      d4:	e5933000 	ldr	r3, [r3]
      d8:	e3530000 	cmp	r3, #0
      dc:	0afffff8 	beq	c4 <toggle2+0x24>
      e0:	e59f1054 	ldr	r1, [pc, #84]	@ 13c <toggle2+0x9c>
      e4:	e3a00001 	mov	r0, #1
      e8:	eb0003ec 	bl	10a0 <printf>
      ec:	e51b3010 	ldr	r3, [fp, #-16]
      f0:	e3a02000 	mov	r2, #0
      f4:	e5832000 	str	r2, [r3]
      f8:	e59f0038 	ldr	r0, [pc, #56]	@ 138 <toggle2+0x98>
      fc:	eb0001d9 	bl	868 <broadcast>
     100:	e51b3008 	ldr	r3, [fp, #-8]
     104:	e2833001 	add	r3, r3, #1
     108:	e50b3008 	str	r3, [fp, #-8]
     10c:	e51b3008 	ldr	r3, [fp, #-8]
     110:	e3530009 	cmp	r3, #9
     114:	daffffed 	ble	d0 <toggle2+0x30>
     118:	e59f0014 	ldr	r0, [pc, #20]	@ 134 <toggle2+0x94>
     11c:	eb000194 	bl	774 <releaseLock>
     120:	eb000331 	bl	dec <thread_exit>
     124:	e3a03000 	mov	r3, #0
     128:	e1a00003 	mov	r0, r3
     12c:	e24bd004 	sub	sp, fp, #4
     130:	e8bd8800 	pop	{fp, pc}
     134:	00001798 	.word	0x00001798
     138:	000017a0 	.word	0x000017a0
     13c:	0000176c 	.word	0x0000176c

00000140 <main>:
     140:	e92d4800 	push	{fp, lr}
     144:	e28db004 	add	fp, sp, #4
     148:	e24dd010 	sub	sp, sp, #16
     14c:	e59f0054 	ldr	r0, [pc, #84]	@ 1a8 <main+0x68>
     150:	eb000154 	bl	6a8 <initiateLock>
     154:	e59f0050 	ldr	r0, [pc, #80]	@ 1ac <main+0x6c>
     158:	eb00019b 	bl	7cc <initiateCondVar>
     15c:	e3a03000 	mov	r3, #0
     160:	e50b3008 	str	r3, [fp, #-8]
     164:	e24b2008 	sub	r2, fp, #8
     168:	e24b300c 	sub	r3, fp, #12
     16c:	e59f103c 	ldr	r1, [pc, #60]	@ 1b0 <main+0x70>
     170:	e1a00003 	mov	r0, r3
     174:	eb000313 	bl	dc8 <thread_create>
     178:	e24b2008 	sub	r2, fp, #8
     17c:	e24b3010 	sub	r3, fp, #16
     180:	e59f102c 	ldr	r1, [pc, #44]	@ 1b4 <main+0x74>
     184:	e1a00003 	mov	r0, r3
     188:	eb00030e 	bl	dc8 <thread_create>
     18c:	e51b300c 	ldr	r3, [fp, #-12]
     190:	e1a00003 	mov	r0, r3
     194:	eb00031d 	bl	e10 <thread_join>
     198:	e51b3010 	ldr	r3, [fp, #-16]
     19c:	e1a00003 	mov	r0, r3
     1a0:	eb00031a 	bl	e10 <thread_join>
     1a4:	eb000226 	bl	a44 <exit>
     1a8:	00001798 	.word	0x00001798
     1ac:	000017a0 	.word	0x000017a0
     1b0:	00000000 	.word	0x00000000
     1b4:	000000a0 	.word	0x000000a0

000001b8 <strcpy>:
     1b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1bc:	e28db000 	add	fp, sp, #0
     1c0:	e24dd014 	sub	sp, sp, #20
     1c4:	e50b0010 	str	r0, [fp, #-16]
     1c8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     1cc:	e51b3010 	ldr	r3, [fp, #-16]
     1d0:	e50b3008 	str	r3, [fp, #-8]
     1d4:	e1a00000 	nop			@ (mov r0, r0)
     1d8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1dc:	e2823001 	add	r3, r2, #1
     1e0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1e4:	e51b3010 	ldr	r3, [fp, #-16]
     1e8:	e2831001 	add	r1, r3, #1
     1ec:	e50b1010 	str	r1, [fp, #-16]
     1f0:	e5d22000 	ldrb	r2, [r2]
     1f4:	e5c32000 	strb	r2, [r3]
     1f8:	e5d33000 	ldrb	r3, [r3]
     1fc:	e3530000 	cmp	r3, #0
     200:	1afffff4 	bne	1d8 <strcpy+0x20>
     204:	e51b3008 	ldr	r3, [fp, #-8]
     208:	e1a00003 	mov	r0, r3
     20c:	e28bd000 	add	sp, fp, #0
     210:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     214:	e12fff1e 	bx	lr

00000218 <strcmp>:
     218:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     21c:	e28db000 	add	fp, sp, #0
     220:	e24dd00c 	sub	sp, sp, #12
     224:	e50b0008 	str	r0, [fp, #-8]
     228:	e50b100c 	str	r1, [fp, #-12]
     22c:	ea000005 	b	248 <strcmp+0x30>
     230:	e51b3008 	ldr	r3, [fp, #-8]
     234:	e2833001 	add	r3, r3, #1
     238:	e50b3008 	str	r3, [fp, #-8]
     23c:	e51b300c 	ldr	r3, [fp, #-12]
     240:	e2833001 	add	r3, r3, #1
     244:	e50b300c 	str	r3, [fp, #-12]
     248:	e51b3008 	ldr	r3, [fp, #-8]
     24c:	e5d33000 	ldrb	r3, [r3]
     250:	e3530000 	cmp	r3, #0
     254:	0a000005 	beq	270 <strcmp+0x58>
     258:	e51b3008 	ldr	r3, [fp, #-8]
     25c:	e5d32000 	ldrb	r2, [r3]
     260:	e51b300c 	ldr	r3, [fp, #-12]
     264:	e5d33000 	ldrb	r3, [r3]
     268:	e1520003 	cmp	r2, r3
     26c:	0affffef 	beq	230 <strcmp+0x18>
     270:	e51b3008 	ldr	r3, [fp, #-8]
     274:	e5d33000 	ldrb	r3, [r3]
     278:	e1a02003 	mov	r2, r3
     27c:	e51b300c 	ldr	r3, [fp, #-12]
     280:	e5d33000 	ldrb	r3, [r3]
     284:	e0423003 	sub	r3, r2, r3
     288:	e1a00003 	mov	r0, r3
     28c:	e28bd000 	add	sp, fp, #0
     290:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     294:	e12fff1e 	bx	lr

00000298 <strlen>:
     298:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     29c:	e28db000 	add	fp, sp, #0
     2a0:	e24dd014 	sub	sp, sp, #20
     2a4:	e50b0010 	str	r0, [fp, #-16]
     2a8:	e3a03000 	mov	r3, #0
     2ac:	e50b3008 	str	r3, [fp, #-8]
     2b0:	ea000002 	b	2c0 <strlen+0x28>
     2b4:	e51b3008 	ldr	r3, [fp, #-8]
     2b8:	e2833001 	add	r3, r3, #1
     2bc:	e50b3008 	str	r3, [fp, #-8]
     2c0:	e51b3008 	ldr	r3, [fp, #-8]
     2c4:	e51b2010 	ldr	r2, [fp, #-16]
     2c8:	e0823003 	add	r3, r2, r3
     2cc:	e5d33000 	ldrb	r3, [r3]
     2d0:	e3530000 	cmp	r3, #0
     2d4:	1afffff6 	bne	2b4 <strlen+0x1c>
     2d8:	e51b3008 	ldr	r3, [fp, #-8]
     2dc:	e1a00003 	mov	r0, r3
     2e0:	e28bd000 	add	sp, fp, #0
     2e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2e8:	e12fff1e 	bx	lr

000002ec <memset>:
     2ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2f0:	e28db000 	add	fp, sp, #0
     2f4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     2f8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     2fc:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     300:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     304:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     308:	e50b3008 	str	r3, [fp, #-8]
     30c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     310:	e54b300d 	strb	r3, [fp, #-13]
     314:	e55b200d 	ldrb	r2, [fp, #-13]
     318:	e1a03002 	mov	r3, r2
     31c:	e1a03403 	lsl	r3, r3, #8
     320:	e0833002 	add	r3, r3, r2
     324:	e1a03803 	lsl	r3, r3, #16
     328:	e1a02003 	mov	r2, r3
     32c:	e55b300d 	ldrb	r3, [fp, #-13]
     330:	e1a03403 	lsl	r3, r3, #8
     334:	e1822003 	orr	r2, r2, r3
     338:	e55b300d 	ldrb	r3, [fp, #-13]
     33c:	e1823003 	orr	r3, r2, r3
     340:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     344:	ea000008 	b	36c <memset+0x80>
     348:	e51b3008 	ldr	r3, [fp, #-8]
     34c:	e55b200d 	ldrb	r2, [fp, #-13]
     350:	e5c32000 	strb	r2, [r3]
     354:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     358:	e2433001 	sub	r3, r3, #1
     35c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     360:	e51b3008 	ldr	r3, [fp, #-8]
     364:	e2833001 	add	r3, r3, #1
     368:	e50b3008 	str	r3, [fp, #-8]
     36c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     370:	e3530000 	cmp	r3, #0
     374:	0a000003 	beq	388 <memset+0x9c>
     378:	e51b3008 	ldr	r3, [fp, #-8]
     37c:	e2033003 	and	r3, r3, #3
     380:	e3530000 	cmp	r3, #0
     384:	1affffef 	bne	348 <memset+0x5c>
     388:	e51b3008 	ldr	r3, [fp, #-8]
     38c:	e50b300c 	str	r3, [fp, #-12]
     390:	ea000008 	b	3b8 <memset+0xcc>
     394:	e51b300c 	ldr	r3, [fp, #-12]
     398:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     39c:	e5832000 	str	r2, [r3]
     3a0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3a4:	e2433004 	sub	r3, r3, #4
     3a8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3ac:	e51b300c 	ldr	r3, [fp, #-12]
     3b0:	e2833004 	add	r3, r3, #4
     3b4:	e50b300c 	str	r3, [fp, #-12]
     3b8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3bc:	e3530003 	cmp	r3, #3
     3c0:	8afffff3 	bhi	394 <memset+0xa8>
     3c4:	e51b300c 	ldr	r3, [fp, #-12]
     3c8:	e50b3008 	str	r3, [fp, #-8]
     3cc:	ea000008 	b	3f4 <memset+0x108>
     3d0:	e51b3008 	ldr	r3, [fp, #-8]
     3d4:	e55b200d 	ldrb	r2, [fp, #-13]
     3d8:	e5c32000 	strb	r2, [r3]
     3dc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3e0:	e2433001 	sub	r3, r3, #1
     3e4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3e8:	e51b3008 	ldr	r3, [fp, #-8]
     3ec:	e2833001 	add	r3, r3, #1
     3f0:	e50b3008 	str	r3, [fp, #-8]
     3f4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3f8:	e3530000 	cmp	r3, #0
     3fc:	1afffff3 	bne	3d0 <memset+0xe4>
     400:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     404:	e1a00003 	mov	r0, r3
     408:	e28bd000 	add	sp, fp, #0
     40c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     410:	e12fff1e 	bx	lr

00000414 <strchr>:
     414:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     418:	e28db000 	add	fp, sp, #0
     41c:	e24dd00c 	sub	sp, sp, #12
     420:	e50b0008 	str	r0, [fp, #-8]
     424:	e1a03001 	mov	r3, r1
     428:	e54b3009 	strb	r3, [fp, #-9]
     42c:	ea000009 	b	458 <strchr+0x44>
     430:	e51b3008 	ldr	r3, [fp, #-8]
     434:	e5d33000 	ldrb	r3, [r3]
     438:	e55b2009 	ldrb	r2, [fp, #-9]
     43c:	e1520003 	cmp	r2, r3
     440:	1a000001 	bne	44c <strchr+0x38>
     444:	e51b3008 	ldr	r3, [fp, #-8]
     448:	ea000007 	b	46c <strchr+0x58>
     44c:	e51b3008 	ldr	r3, [fp, #-8]
     450:	e2833001 	add	r3, r3, #1
     454:	e50b3008 	str	r3, [fp, #-8]
     458:	e51b3008 	ldr	r3, [fp, #-8]
     45c:	e5d33000 	ldrb	r3, [r3]
     460:	e3530000 	cmp	r3, #0
     464:	1afffff1 	bne	430 <strchr+0x1c>
     468:	e3a03000 	mov	r3, #0
     46c:	e1a00003 	mov	r0, r3
     470:	e28bd000 	add	sp, fp, #0
     474:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     478:	e12fff1e 	bx	lr

0000047c <gets>:
     47c:	e92d4800 	push	{fp, lr}
     480:	e28db004 	add	fp, sp, #4
     484:	e24dd018 	sub	sp, sp, #24
     488:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     48c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     490:	e3a03000 	mov	r3, #0
     494:	e50b3008 	str	r3, [fp, #-8]
     498:	ea000016 	b	4f8 <gets+0x7c>
     49c:	e24b300d 	sub	r3, fp, #13
     4a0:	e3a02001 	mov	r2, #1
     4a4:	e1a01003 	mov	r1, r3
     4a8:	e3a00000 	mov	r0, #0
     4ac:	eb00017f 	bl	ab0 <read>
     4b0:	e50b000c 	str	r0, [fp, #-12]
     4b4:	e51b300c 	ldr	r3, [fp, #-12]
     4b8:	e3530000 	cmp	r3, #0
     4bc:	da000013 	ble	510 <gets+0x94>
     4c0:	e51b3008 	ldr	r3, [fp, #-8]
     4c4:	e2832001 	add	r2, r3, #1
     4c8:	e50b2008 	str	r2, [fp, #-8]
     4cc:	e1a02003 	mov	r2, r3
     4d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4d4:	e0833002 	add	r3, r3, r2
     4d8:	e55b200d 	ldrb	r2, [fp, #-13]
     4dc:	e5c32000 	strb	r2, [r3]
     4e0:	e55b300d 	ldrb	r3, [fp, #-13]
     4e4:	e353000a 	cmp	r3, #10
     4e8:	0a000009 	beq	514 <gets+0x98>
     4ec:	e55b300d 	ldrb	r3, [fp, #-13]
     4f0:	e353000d 	cmp	r3, #13
     4f4:	0a000006 	beq	514 <gets+0x98>
     4f8:	e51b3008 	ldr	r3, [fp, #-8]
     4fc:	e2833001 	add	r3, r3, #1
     500:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     504:	e1520003 	cmp	r2, r3
     508:	caffffe3 	bgt	49c <gets+0x20>
     50c:	ea000000 	b	514 <gets+0x98>
     510:	e1a00000 	nop			@ (mov r0, r0)
     514:	e51b3008 	ldr	r3, [fp, #-8]
     518:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     51c:	e0823003 	add	r3, r2, r3
     520:	e3a02000 	mov	r2, #0
     524:	e5c32000 	strb	r2, [r3]
     528:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     52c:	e1a00003 	mov	r0, r3
     530:	e24bd004 	sub	sp, fp, #4
     534:	e8bd8800 	pop	{fp, pc}

00000538 <stat>:
     538:	e92d4800 	push	{fp, lr}
     53c:	e28db004 	add	fp, sp, #4
     540:	e24dd010 	sub	sp, sp, #16
     544:	e50b0010 	str	r0, [fp, #-16]
     548:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     54c:	e3a01000 	mov	r1, #0
     550:	e51b0010 	ldr	r0, [fp, #-16]
     554:	eb000182 	bl	b64 <open>
     558:	e50b0008 	str	r0, [fp, #-8]
     55c:	e51b3008 	ldr	r3, [fp, #-8]
     560:	e3530000 	cmp	r3, #0
     564:	aa000001 	bge	570 <stat+0x38>
     568:	e3e03000 	mvn	r3, #0
     56c:	ea000006 	b	58c <stat+0x54>
     570:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     574:	e51b0008 	ldr	r0, [fp, #-8]
     578:	eb000194 	bl	bd0 <fstat>
     57c:	e50b000c 	str	r0, [fp, #-12]
     580:	e51b0008 	ldr	r0, [fp, #-8]
     584:	eb00015b 	bl	af8 <close>
     588:	e51b300c 	ldr	r3, [fp, #-12]
     58c:	e1a00003 	mov	r0, r3
     590:	e24bd004 	sub	sp, fp, #4
     594:	e8bd8800 	pop	{fp, pc}

00000598 <atoi>:
     598:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     59c:	e28db000 	add	fp, sp, #0
     5a0:	e24dd014 	sub	sp, sp, #20
     5a4:	e50b0010 	str	r0, [fp, #-16]
     5a8:	e3a03000 	mov	r3, #0
     5ac:	e50b3008 	str	r3, [fp, #-8]
     5b0:	ea00000c 	b	5e8 <atoi+0x50>
     5b4:	e51b2008 	ldr	r2, [fp, #-8]
     5b8:	e1a03002 	mov	r3, r2
     5bc:	e1a03103 	lsl	r3, r3, #2
     5c0:	e0833002 	add	r3, r3, r2
     5c4:	e1a03083 	lsl	r3, r3, #1
     5c8:	e1a01003 	mov	r1, r3
     5cc:	e51b3010 	ldr	r3, [fp, #-16]
     5d0:	e2832001 	add	r2, r3, #1
     5d4:	e50b2010 	str	r2, [fp, #-16]
     5d8:	e5d33000 	ldrb	r3, [r3]
     5dc:	e0813003 	add	r3, r1, r3
     5e0:	e2433030 	sub	r3, r3, #48	@ 0x30
     5e4:	e50b3008 	str	r3, [fp, #-8]
     5e8:	e51b3010 	ldr	r3, [fp, #-16]
     5ec:	e5d33000 	ldrb	r3, [r3]
     5f0:	e353002f 	cmp	r3, #47	@ 0x2f
     5f4:	9a000003 	bls	608 <atoi+0x70>
     5f8:	e51b3010 	ldr	r3, [fp, #-16]
     5fc:	e5d33000 	ldrb	r3, [r3]
     600:	e3530039 	cmp	r3, #57	@ 0x39
     604:	9affffea 	bls	5b4 <atoi+0x1c>
     608:	e51b3010 	ldr	r3, [fp, #-16]
     60c:	e5d33000 	ldrb	r3, [r3]
     610:	e3530000 	cmp	r3, #0
     614:	1a000001 	bne	620 <atoi+0x88>
     618:	e51b3008 	ldr	r3, [fp, #-8]
     61c:	ea000000 	b	624 <atoi+0x8c>
     620:	e3e03000 	mvn	r3, #0
     624:	e1a00003 	mov	r0, r3
     628:	e28bd000 	add	sp, fp, #0
     62c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     630:	e12fff1e 	bx	lr

00000634 <memmove>:
     634:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     638:	e28db000 	add	fp, sp, #0
     63c:	e24dd01c 	sub	sp, sp, #28
     640:	e50b0010 	str	r0, [fp, #-16]
     644:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     648:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     64c:	e51b3010 	ldr	r3, [fp, #-16]
     650:	e50b3008 	str	r3, [fp, #-8]
     654:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     658:	e50b300c 	str	r3, [fp, #-12]
     65c:	ea000007 	b	680 <memmove+0x4c>
     660:	e51b200c 	ldr	r2, [fp, #-12]
     664:	e2823001 	add	r3, r2, #1
     668:	e50b300c 	str	r3, [fp, #-12]
     66c:	e51b3008 	ldr	r3, [fp, #-8]
     670:	e2831001 	add	r1, r3, #1
     674:	e50b1008 	str	r1, [fp, #-8]
     678:	e5d22000 	ldrb	r2, [r2]
     67c:	e5c32000 	strb	r2, [r3]
     680:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     684:	e2432001 	sub	r2, r3, #1
     688:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     68c:	e3530000 	cmp	r3, #0
     690:	cafffff2 	bgt	660 <memmove+0x2c>
     694:	e51b3010 	ldr	r3, [fp, #-16]
     698:	e1a00003 	mov	r0, r3
     69c:	e28bd000 	add	sp, fp, #0
     6a0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6a4:	e12fff1e 	bx	lr

000006a8 <initiateLock>:
     6a8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6ac:	e28db000 	add	fp, sp, #0
     6b0:	e24dd00c 	sub	sp, sp, #12
     6b4:	e50b0008 	str	r0, [fp, #-8]
     6b8:	e51b3008 	ldr	r3, [fp, #-8]
     6bc:	e3a02000 	mov	r2, #0
     6c0:	e5832000 	str	r2, [r3]
     6c4:	e51b3008 	ldr	r3, [fp, #-8]
     6c8:	e3a02001 	mov	r2, #1
     6cc:	e5832004 	str	r2, [r3, #4]
     6d0:	e1a00000 	nop			@ (mov r0, r0)
     6d4:	e28bd000 	add	sp, fp, #0
     6d8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6dc:	e12fff1e 	bx	lr

000006e0 <xchg>:
     6e0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6e4:	e28db000 	add	fp, sp, #0
     6e8:	e24dd00c 	sub	sp, sp, #12
     6ec:	e50b0008 	str	r0, [fp, #-8]
     6f0:	e50b100c 	str	r1, [fp, #-12]
     6f4:	e51b200c 	ldr	r2, [fp, #-12]
     6f8:	e51b3008 	ldr	r3, [fp, #-8]
     6fc:	e1931f9f 	ldrex	r1, [r3]
     700:	e1830f92 	strex	r0, r2, [r3]
     704:	e3500000 	cmp	r0, #0
     708:	1afffffb 	bne	6fc <xchg+0x1c>
     70c:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     710:	e1a03001 	mov	r3, r1
     714:	e1a00003 	mov	r0, r3
     718:	e28bd000 	add	sp, fp, #0
     71c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     720:	e12fff1e 	bx	lr

00000724 <acquireLock>:
     724:	e92d4800 	push	{fp, lr}
     728:	e28db004 	add	fp, sp, #4
     72c:	e24dd008 	sub	sp, sp, #8
     730:	e50b0008 	str	r0, [fp, #-8]
     734:	e51b3008 	ldr	r3, [fp, #-8]
     738:	e5933004 	ldr	r3, [r3, #4]
     73c:	e3530000 	cmp	r3, #0
     740:	0a000008 	beq	768 <acquireLock+0x44>
     744:	e1a00000 	nop			@ (mov r0, r0)
     748:	e51b3008 	ldr	r3, [fp, #-8]
     74c:	e3a01001 	mov	r1, #1
     750:	e1a00003 	mov	r0, r3
     754:	ebffffe1 	bl	6e0 <xchg>
     758:	e1a03000 	mov	r3, r0
     75c:	e3530000 	cmp	r3, #0
     760:	1afffff8 	bne	748 <acquireLock+0x24>
     764:	ea000000 	b	76c <acquireLock+0x48>
     768:	e1a00000 	nop			@ (mov r0, r0)
     76c:	e24bd004 	sub	sp, fp, #4
     770:	e8bd8800 	pop	{fp, pc}

00000774 <releaseLock>:
     774:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     778:	e28db000 	add	fp, sp, #0
     77c:	e24dd00c 	sub	sp, sp, #12
     780:	e50b0008 	str	r0, [fp, #-8]
     784:	e51b3008 	ldr	r3, [fp, #-8]
     788:	e5933004 	ldr	r3, [r3, #4]
     78c:	e3530000 	cmp	r3, #0
     790:	0a000007 	beq	7b4 <releaseLock+0x40>
     794:	e51b3008 	ldr	r3, [fp, #-8]
     798:	e5933000 	ldr	r3, [r3]
     79c:	e3530001 	cmp	r3, #1
     7a0:	1a000005 	bne	7bc <releaseLock+0x48>
     7a4:	e51b3008 	ldr	r3, [fp, #-8]
     7a8:	e3a02000 	mov	r2, #0
     7ac:	e5832000 	str	r2, [r3]
     7b0:	ea000002 	b	7c0 <releaseLock+0x4c>
     7b4:	e1a00000 	nop			@ (mov r0, r0)
     7b8:	ea000000 	b	7c0 <releaseLock+0x4c>
     7bc:	e1a00000 	nop			@ (mov r0, r0)
     7c0:	e28bd000 	add	sp, fp, #0
     7c4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7c8:	e12fff1e 	bx	lr

000007cc <initiateCondVar>:
     7cc:	e92d4800 	push	{fp, lr}
     7d0:	e28db004 	add	fp, sp, #4
     7d4:	e24dd008 	sub	sp, sp, #8
     7d8:	e50b0008 	str	r0, [fp, #-8]
     7dc:	eb0001b8 	bl	ec4 <getChannel>
     7e0:	e1a02000 	mov	r2, r0
     7e4:	e51b3008 	ldr	r3, [fp, #-8]
     7e8:	e5832000 	str	r2, [r3]
     7ec:	e51b3008 	ldr	r3, [fp, #-8]
     7f0:	e3a02001 	mov	r2, #1
     7f4:	e5832004 	str	r2, [r3, #4]
     7f8:	e1a00000 	nop			@ (mov r0, r0)
     7fc:	e24bd004 	sub	sp, fp, #4
     800:	e8bd8800 	pop	{fp, pc}

00000804 <condWait>:
     804:	e92d4800 	push	{fp, lr}
     808:	e28db004 	add	fp, sp, #4
     80c:	e24dd008 	sub	sp, sp, #8
     810:	e50b0008 	str	r0, [fp, #-8]
     814:	e50b100c 	str	r1, [fp, #-12]
     818:	e51b3008 	ldr	r3, [fp, #-8]
     81c:	e5933004 	ldr	r3, [r3, #4]
     820:	e3530000 	cmp	r3, #0
     824:	0a00000c 	beq	85c <condWait+0x58>
     828:	e51b300c 	ldr	r3, [fp, #-12]
     82c:	e5933004 	ldr	r3, [r3, #4]
     830:	e3530000 	cmp	r3, #0
     834:	0a000008 	beq	85c <condWait+0x58>
     838:	e51b000c 	ldr	r0, [fp, #-12]
     83c:	ebffffcc 	bl	774 <releaseLock>
     840:	e51b3008 	ldr	r3, [fp, #-8]
     844:	e5933000 	ldr	r3, [r3]
     848:	e1a00003 	mov	r0, r3
     84c:	eb000193 	bl	ea0 <sleepChan>
     850:	e51b000c 	ldr	r0, [fp, #-12]
     854:	ebffffb2 	bl	724 <acquireLock>
     858:	ea000000 	b	860 <condWait+0x5c>
     85c:	e1a00000 	nop			@ (mov r0, r0)
     860:	e24bd004 	sub	sp, fp, #4
     864:	e8bd8800 	pop	{fp, pc}

00000868 <broadcast>:
     868:	e92d4800 	push	{fp, lr}
     86c:	e28db004 	add	fp, sp, #4
     870:	e24dd008 	sub	sp, sp, #8
     874:	e50b0008 	str	r0, [fp, #-8]
     878:	e51b3008 	ldr	r3, [fp, #-8]
     87c:	e5933004 	ldr	r3, [r3, #4]
     880:	e3530000 	cmp	r3, #0
     884:	0a000004 	beq	89c <broadcast+0x34>
     888:	e51b3008 	ldr	r3, [fp, #-8]
     88c:	e5933000 	ldr	r3, [r3]
     890:	e1a00003 	mov	r0, r3
     894:	eb000193 	bl	ee8 <sigChan>
     898:	ea000000 	b	8a0 <broadcast+0x38>
     89c:	e1a00000 	nop			@ (mov r0, r0)
     8a0:	e24bd004 	sub	sp, fp, #4
     8a4:	e8bd8800 	pop	{fp, pc}

000008a8 <signal>:
     8a8:	e92d4800 	push	{fp, lr}
     8ac:	e28db004 	add	fp, sp, #4
     8b0:	e24dd008 	sub	sp, sp, #8
     8b4:	e50b0008 	str	r0, [fp, #-8]
     8b8:	e51b3008 	ldr	r3, [fp, #-8]
     8bc:	e5933004 	ldr	r3, [r3, #4]
     8c0:	e3530000 	cmp	r3, #0
     8c4:	0a000004 	beq	8dc <signal+0x34>
     8c8:	e51b3008 	ldr	r3, [fp, #-8]
     8cc:	e5933000 	ldr	r3, [r3]
     8d0:	e1a00003 	mov	r0, r3
     8d4:	eb00018c 	bl	f0c <sigOneChan>
     8d8:	ea000000 	b	8e0 <signal+0x38>
     8dc:	e1a00000 	nop			@ (mov r0, r0)
     8e0:	e24bd004 	sub	sp, fp, #4
     8e4:	e8bd8800 	pop	{fp, pc}

000008e8 <semInit>:
     8e8:	e92d4800 	push	{fp, lr}
     8ec:	e28db004 	add	fp, sp, #4
     8f0:	e24dd008 	sub	sp, sp, #8
     8f4:	e50b0008 	str	r0, [fp, #-8]
     8f8:	e50b100c 	str	r1, [fp, #-12]
     8fc:	e51b3008 	ldr	r3, [fp, #-8]
     900:	e51b200c 	ldr	r2, [fp, #-12]
     904:	e5832000 	str	r2, [r3]
     908:	e51b3008 	ldr	r3, [fp, #-8]
     90c:	e2833004 	add	r3, r3, #4
     910:	e1a00003 	mov	r0, r3
     914:	ebffff63 	bl	6a8 <initiateLock>
     918:	e51b3008 	ldr	r3, [fp, #-8]
     91c:	e283300c 	add	r3, r3, #12
     920:	e1a00003 	mov	r0, r3
     924:	ebffffa8 	bl	7cc <initiateCondVar>
     928:	e51b3008 	ldr	r3, [fp, #-8]
     92c:	e3a02001 	mov	r2, #1
     930:	e5832014 	str	r2, [r3, #20]
     934:	e1a00000 	nop			@ (mov r0, r0)
     938:	e24bd004 	sub	sp, fp, #4
     93c:	e8bd8800 	pop	{fp, pc}

00000940 <semUp>:
     940:	e92d4800 	push	{fp, lr}
     944:	e28db004 	add	fp, sp, #4
     948:	e24dd008 	sub	sp, sp, #8
     94c:	e50b0008 	str	r0, [fp, #-8]
     950:	e51b3008 	ldr	r3, [fp, #-8]
     954:	e2833004 	add	r3, r3, #4
     958:	e1a00003 	mov	r0, r3
     95c:	ebffff70 	bl	724 <acquireLock>
     960:	e51b3008 	ldr	r3, [fp, #-8]
     964:	e5933000 	ldr	r3, [r3]
     968:	e2832001 	add	r2, r3, #1
     96c:	e51b3008 	ldr	r3, [fp, #-8]
     970:	e5832000 	str	r2, [r3]
     974:	e51b3008 	ldr	r3, [fp, #-8]
     978:	e283300c 	add	r3, r3, #12
     97c:	e1a00003 	mov	r0, r3
     980:	ebffffc8 	bl	8a8 <signal>
     984:	e51b3008 	ldr	r3, [fp, #-8]
     988:	e2833004 	add	r3, r3, #4
     98c:	e1a00003 	mov	r0, r3
     990:	ebffff77 	bl	774 <releaseLock>
     994:	e1a00000 	nop			@ (mov r0, r0)
     998:	e24bd004 	sub	sp, fp, #4
     99c:	e8bd8800 	pop	{fp, pc}

000009a0 <semDown>:
     9a0:	e92d4800 	push	{fp, lr}
     9a4:	e28db004 	add	fp, sp, #4
     9a8:	e24dd008 	sub	sp, sp, #8
     9ac:	e50b0008 	str	r0, [fp, #-8]
     9b0:	e51b3008 	ldr	r3, [fp, #-8]
     9b4:	e2833004 	add	r3, r3, #4
     9b8:	e1a00003 	mov	r0, r3
     9bc:	ebffff58 	bl	724 <acquireLock>
     9c0:	ea000006 	b	9e0 <semDown+0x40>
     9c4:	e51b3008 	ldr	r3, [fp, #-8]
     9c8:	e283200c 	add	r2, r3, #12
     9cc:	e51b3008 	ldr	r3, [fp, #-8]
     9d0:	e2833004 	add	r3, r3, #4
     9d4:	e1a01003 	mov	r1, r3
     9d8:	e1a00002 	mov	r0, r2
     9dc:	ebffff88 	bl	804 <condWait>
     9e0:	e51b3008 	ldr	r3, [fp, #-8]
     9e4:	e5933000 	ldr	r3, [r3]
     9e8:	e3530000 	cmp	r3, #0
     9ec:	dafffff4 	ble	9c4 <semDown+0x24>
     9f0:	e51b3008 	ldr	r3, [fp, #-8]
     9f4:	e5933000 	ldr	r3, [r3]
     9f8:	e2432001 	sub	r2, r3, #1
     9fc:	e51b3008 	ldr	r3, [fp, #-8]
     a00:	e5832000 	str	r2, [r3]
     a04:	e51b3008 	ldr	r3, [fp, #-8]
     a08:	e2833004 	add	r3, r3, #4
     a0c:	e1a00003 	mov	r0, r3
     a10:	ebffff57 	bl	774 <releaseLock>
     a14:	e1a00000 	nop			@ (mov r0, r0)
     a18:	e24bd004 	sub	sp, fp, #4
     a1c:	e8bd8800 	pop	{fp, pc}

00000a20 <fork>:
     a20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a24:	e1a04003 	mov	r4, r3
     a28:	e1a03002 	mov	r3, r2
     a2c:	e1a02001 	mov	r2, r1
     a30:	e1a01000 	mov	r1, r0
     a34:	e3a00001 	mov	r0, #1
     a38:	ef000000 	svc	0x00000000
     a3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a40:	e12fff1e 	bx	lr

00000a44 <exit>:
     a44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a48:	e1a04003 	mov	r4, r3
     a4c:	e1a03002 	mov	r3, r2
     a50:	e1a02001 	mov	r2, r1
     a54:	e1a01000 	mov	r1, r0
     a58:	e3a00002 	mov	r0, #2
     a5c:	ef000000 	svc	0x00000000
     a60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a64:	e12fff1e 	bx	lr

00000a68 <wait>:
     a68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a6c:	e1a04003 	mov	r4, r3
     a70:	e1a03002 	mov	r3, r2
     a74:	e1a02001 	mov	r2, r1
     a78:	e1a01000 	mov	r1, r0
     a7c:	e3a00003 	mov	r0, #3
     a80:	ef000000 	svc	0x00000000
     a84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a88:	e12fff1e 	bx	lr

00000a8c <pipe>:
     a8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a90:	e1a04003 	mov	r4, r3
     a94:	e1a03002 	mov	r3, r2
     a98:	e1a02001 	mov	r2, r1
     a9c:	e1a01000 	mov	r1, r0
     aa0:	e3a00004 	mov	r0, #4
     aa4:	ef000000 	svc	0x00000000
     aa8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aac:	e12fff1e 	bx	lr

00000ab0 <read>:
     ab0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ab4:	e1a04003 	mov	r4, r3
     ab8:	e1a03002 	mov	r3, r2
     abc:	e1a02001 	mov	r2, r1
     ac0:	e1a01000 	mov	r1, r0
     ac4:	e3a00005 	mov	r0, #5
     ac8:	ef000000 	svc	0x00000000
     acc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ad0:	e12fff1e 	bx	lr

00000ad4 <write>:
     ad4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad8:	e1a04003 	mov	r4, r3
     adc:	e1a03002 	mov	r3, r2
     ae0:	e1a02001 	mov	r2, r1
     ae4:	e1a01000 	mov	r1, r0
     ae8:	e3a00010 	mov	r0, #16
     aec:	ef000000 	svc	0x00000000
     af0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     af4:	e12fff1e 	bx	lr

00000af8 <close>:
     af8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     afc:	e1a04003 	mov	r4, r3
     b00:	e1a03002 	mov	r3, r2
     b04:	e1a02001 	mov	r2, r1
     b08:	e1a01000 	mov	r1, r0
     b0c:	e3a00015 	mov	r0, #21
     b10:	ef000000 	svc	0x00000000
     b14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b18:	e12fff1e 	bx	lr

00000b1c <kill>:
     b1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b20:	e1a04003 	mov	r4, r3
     b24:	e1a03002 	mov	r3, r2
     b28:	e1a02001 	mov	r2, r1
     b2c:	e1a01000 	mov	r1, r0
     b30:	e3a00006 	mov	r0, #6
     b34:	ef000000 	svc	0x00000000
     b38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b3c:	e12fff1e 	bx	lr

00000b40 <exec>:
     b40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b44:	e1a04003 	mov	r4, r3
     b48:	e1a03002 	mov	r3, r2
     b4c:	e1a02001 	mov	r2, r1
     b50:	e1a01000 	mov	r1, r0
     b54:	e3a00007 	mov	r0, #7
     b58:	ef000000 	svc	0x00000000
     b5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b60:	e12fff1e 	bx	lr

00000b64 <open>:
     b64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b68:	e1a04003 	mov	r4, r3
     b6c:	e1a03002 	mov	r3, r2
     b70:	e1a02001 	mov	r2, r1
     b74:	e1a01000 	mov	r1, r0
     b78:	e3a0000f 	mov	r0, #15
     b7c:	ef000000 	svc	0x00000000
     b80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b84:	e12fff1e 	bx	lr

00000b88 <mknod>:
     b88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b8c:	e1a04003 	mov	r4, r3
     b90:	e1a03002 	mov	r3, r2
     b94:	e1a02001 	mov	r2, r1
     b98:	e1a01000 	mov	r1, r0
     b9c:	e3a00011 	mov	r0, #17
     ba0:	ef000000 	svc	0x00000000
     ba4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba8:	e12fff1e 	bx	lr

00000bac <unlink>:
     bac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bb0:	e1a04003 	mov	r4, r3
     bb4:	e1a03002 	mov	r3, r2
     bb8:	e1a02001 	mov	r2, r1
     bbc:	e1a01000 	mov	r1, r0
     bc0:	e3a00012 	mov	r0, #18
     bc4:	ef000000 	svc	0x00000000
     bc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bcc:	e12fff1e 	bx	lr

00000bd0 <fstat>:
     bd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bd4:	e1a04003 	mov	r4, r3
     bd8:	e1a03002 	mov	r3, r2
     bdc:	e1a02001 	mov	r2, r1
     be0:	e1a01000 	mov	r1, r0
     be4:	e3a00008 	mov	r0, #8
     be8:	ef000000 	svc	0x00000000
     bec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bf0:	e12fff1e 	bx	lr

00000bf4 <link>:
     bf4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf8:	e1a04003 	mov	r4, r3
     bfc:	e1a03002 	mov	r3, r2
     c00:	e1a02001 	mov	r2, r1
     c04:	e1a01000 	mov	r1, r0
     c08:	e3a00013 	mov	r0, #19
     c0c:	ef000000 	svc	0x00000000
     c10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c14:	e12fff1e 	bx	lr

00000c18 <mkdir>:
     c18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c1c:	e1a04003 	mov	r4, r3
     c20:	e1a03002 	mov	r3, r2
     c24:	e1a02001 	mov	r2, r1
     c28:	e1a01000 	mov	r1, r0
     c2c:	e3a00014 	mov	r0, #20
     c30:	ef000000 	svc	0x00000000
     c34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c38:	e12fff1e 	bx	lr

00000c3c <chdir>:
     c3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c40:	e1a04003 	mov	r4, r3
     c44:	e1a03002 	mov	r3, r2
     c48:	e1a02001 	mov	r2, r1
     c4c:	e1a01000 	mov	r1, r0
     c50:	e3a00009 	mov	r0, #9
     c54:	ef000000 	svc	0x00000000
     c58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c5c:	e12fff1e 	bx	lr

00000c60 <dup>:
     c60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c64:	e1a04003 	mov	r4, r3
     c68:	e1a03002 	mov	r3, r2
     c6c:	e1a02001 	mov	r2, r1
     c70:	e1a01000 	mov	r1, r0
     c74:	e3a0000a 	mov	r0, #10
     c78:	ef000000 	svc	0x00000000
     c7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c80:	e12fff1e 	bx	lr

00000c84 <getpid>:
     c84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c88:	e1a04003 	mov	r4, r3
     c8c:	e1a03002 	mov	r3, r2
     c90:	e1a02001 	mov	r2, r1
     c94:	e1a01000 	mov	r1, r0
     c98:	e3a0000b 	mov	r0, #11
     c9c:	ef000000 	svc	0x00000000
     ca0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ca4:	e12fff1e 	bx	lr

00000ca8 <sbrk>:
     ca8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cac:	e1a04003 	mov	r4, r3
     cb0:	e1a03002 	mov	r3, r2
     cb4:	e1a02001 	mov	r2, r1
     cb8:	e1a01000 	mov	r1, r0
     cbc:	e3a0000c 	mov	r0, #12
     cc0:	ef000000 	svc	0x00000000
     cc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc8:	e12fff1e 	bx	lr

00000ccc <sleep>:
     ccc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cd0:	e1a04003 	mov	r4, r3
     cd4:	e1a03002 	mov	r3, r2
     cd8:	e1a02001 	mov	r2, r1
     cdc:	e1a01000 	mov	r1, r0
     ce0:	e3a0000d 	mov	r0, #13
     ce4:	ef000000 	svc	0x00000000
     ce8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cec:	e12fff1e 	bx	lr

00000cf0 <uptime>:
     cf0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cf4:	e1a04003 	mov	r4, r3
     cf8:	e1a03002 	mov	r3, r2
     cfc:	e1a02001 	mov	r2, r1
     d00:	e1a01000 	mov	r1, r0
     d04:	e3a0000e 	mov	r0, #14
     d08:	ef000000 	svc	0x00000000
     d0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d10:	e12fff1e 	bx	lr

00000d14 <getprocs>:
     d14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d18:	e1a04003 	mov	r4, r3
     d1c:	e1a03002 	mov	r3, r2
     d20:	e1a02001 	mov	r2, r1
     d24:	e1a01000 	mov	r1, r0
     d28:	e3a00016 	mov	r0, #22
     d2c:	ef000000 	svc	0x00000000
     d30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d34:	e12fff1e 	bx	lr

00000d38 <settickets>:
     d38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d3c:	e1a04003 	mov	r4, r3
     d40:	e1a03002 	mov	r3, r2
     d44:	e1a02001 	mov	r2, r1
     d48:	e1a01000 	mov	r1, r0
     d4c:	e3a00017 	mov	r0, #23
     d50:	ef000000 	svc	0x00000000
     d54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d58:	e12fff1e 	bx	lr

00000d5c <srand>:
     d5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d60:	e1a04003 	mov	r4, r3
     d64:	e1a03002 	mov	r3, r2
     d68:	e1a02001 	mov	r2, r1
     d6c:	e1a01000 	mov	r1, r0
     d70:	e3a00018 	mov	r0, #24
     d74:	ef000000 	svc	0x00000000
     d78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d7c:	e12fff1e 	bx	lr

00000d80 <getpinfo>:
     d80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d84:	e1a04003 	mov	r4, r3
     d88:	e1a03002 	mov	r3, r2
     d8c:	e1a02001 	mov	r2, r1
     d90:	e1a01000 	mov	r1, r0
     d94:	e3a00019 	mov	r0, #25
     d98:	ef000000 	svc	0x00000000
     d9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     da0:	e12fff1e 	bx	lr

00000da4 <dumppagetable>:
     da4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da8:	e1a04003 	mov	r4, r3
     dac:	e1a03002 	mov	r3, r2
     db0:	e1a02001 	mov	r2, r1
     db4:	e1a01000 	mov	r1, r0
     db8:	e3a0001a 	mov	r0, #26
     dbc:	ef000000 	svc	0x00000000
     dc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dc4:	e12fff1e 	bx	lr

00000dc8 <thread_create>:
     dc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dcc:	e1a04003 	mov	r4, r3
     dd0:	e1a03002 	mov	r3, r2
     dd4:	e1a02001 	mov	r2, r1
     dd8:	e1a01000 	mov	r1, r0
     ddc:	e3a0001b 	mov	r0, #27
     de0:	ef000000 	svc	0x00000000
     de4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     de8:	e12fff1e 	bx	lr

00000dec <thread_exit>:
     dec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     df0:	e1a04003 	mov	r4, r3
     df4:	e1a03002 	mov	r3, r2
     df8:	e1a02001 	mov	r2, r1
     dfc:	e1a01000 	mov	r1, r0
     e00:	e3a0001c 	mov	r0, #28
     e04:	ef000000 	svc	0x00000000
     e08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e0c:	e12fff1e 	bx	lr

00000e10 <thread_join>:
     e10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e14:	e1a04003 	mov	r4, r3
     e18:	e1a03002 	mov	r3, r2
     e1c:	e1a02001 	mov	r2, r1
     e20:	e1a01000 	mov	r1, r0
     e24:	e3a0001d 	mov	r0, #29
     e28:	ef000000 	svc	0x00000000
     e2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e30:	e12fff1e 	bx	lr

00000e34 <waitpid>:
     e34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e38:	e1a04003 	mov	r4, r3
     e3c:	e1a03002 	mov	r3, r2
     e40:	e1a02001 	mov	r2, r1
     e44:	e1a01000 	mov	r1, r0
     e48:	e3a0001e 	mov	r0, #30
     e4c:	ef000000 	svc	0x00000000
     e50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e54:	e12fff1e 	bx	lr

00000e58 <barrier_init>:
     e58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e5c:	e1a04003 	mov	r4, r3
     e60:	e1a03002 	mov	r3, r2
     e64:	e1a02001 	mov	r2, r1
     e68:	e1a01000 	mov	r1, r0
     e6c:	e3a0001f 	mov	r0, #31
     e70:	ef000000 	svc	0x00000000
     e74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e78:	e12fff1e 	bx	lr

00000e7c <barrier_check>:
     e7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e80:	e1a04003 	mov	r4, r3
     e84:	e1a03002 	mov	r3, r2
     e88:	e1a02001 	mov	r2, r1
     e8c:	e1a01000 	mov	r1, r0
     e90:	e3a00020 	mov	r0, #32
     e94:	ef000000 	svc	0x00000000
     e98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e9c:	e12fff1e 	bx	lr

00000ea0 <sleepChan>:
     ea0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ea4:	e1a04003 	mov	r4, r3
     ea8:	e1a03002 	mov	r3, r2
     eac:	e1a02001 	mov	r2, r1
     eb0:	e1a01000 	mov	r1, r0
     eb4:	e3a00024 	mov	r0, #36	@ 0x24
     eb8:	ef000000 	svc	0x00000000
     ebc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ec0:	e12fff1e 	bx	lr

00000ec4 <getChannel>:
     ec4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ec8:	e1a04003 	mov	r4, r3
     ecc:	e1a03002 	mov	r3, r2
     ed0:	e1a02001 	mov	r2, r1
     ed4:	e1a01000 	mov	r1, r0
     ed8:	e3a00025 	mov	r0, #37	@ 0x25
     edc:	ef000000 	svc	0x00000000
     ee0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ee4:	e12fff1e 	bx	lr

00000ee8 <sigChan>:
     ee8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eec:	e1a04003 	mov	r4, r3
     ef0:	e1a03002 	mov	r3, r2
     ef4:	e1a02001 	mov	r2, r1
     ef8:	e1a01000 	mov	r1, r0
     efc:	e3a00026 	mov	r0, #38	@ 0x26
     f00:	ef000000 	svc	0x00000000
     f04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f08:	e12fff1e 	bx	lr

00000f0c <sigOneChan>:
     f0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f10:	e1a04003 	mov	r4, r3
     f14:	e1a03002 	mov	r3, r2
     f18:	e1a02001 	mov	r2, r1
     f1c:	e1a01000 	mov	r1, r0
     f20:	e3a00027 	mov	r0, #39	@ 0x27
     f24:	ef000000 	svc	0x00000000
     f28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f2c:	e12fff1e 	bx	lr

00000f30 <putc>:
     f30:	e92d4800 	push	{fp, lr}
     f34:	e28db004 	add	fp, sp, #4
     f38:	e24dd008 	sub	sp, sp, #8
     f3c:	e50b0008 	str	r0, [fp, #-8]
     f40:	e1a03001 	mov	r3, r1
     f44:	e54b3009 	strb	r3, [fp, #-9]
     f48:	e24b3009 	sub	r3, fp, #9
     f4c:	e3a02001 	mov	r2, #1
     f50:	e1a01003 	mov	r1, r3
     f54:	e51b0008 	ldr	r0, [fp, #-8]
     f58:	ebfffedd 	bl	ad4 <write>
     f5c:	e1a00000 	nop			@ (mov r0, r0)
     f60:	e24bd004 	sub	sp, fp, #4
     f64:	e8bd8800 	pop	{fp, pc}

00000f68 <printint>:
     f68:	e92d4800 	push	{fp, lr}
     f6c:	e28db004 	add	fp, sp, #4
     f70:	e24dd030 	sub	sp, sp, #48	@ 0x30
     f74:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     f78:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     f7c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     f80:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     f84:	e3a03000 	mov	r3, #0
     f88:	e50b300c 	str	r3, [fp, #-12]
     f8c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     f90:	e3530000 	cmp	r3, #0
     f94:	0a000008 	beq	fbc <printint+0x54>
     f98:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f9c:	e3530000 	cmp	r3, #0
     fa0:	aa000005 	bge	fbc <printint+0x54>
     fa4:	e3a03001 	mov	r3, #1
     fa8:	e50b300c 	str	r3, [fp, #-12]
     fac:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     fb0:	e2633000 	rsb	r3, r3, #0
     fb4:	e50b3010 	str	r3, [fp, #-16]
     fb8:	ea000001 	b	fc4 <printint+0x5c>
     fbc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     fc0:	e50b3010 	str	r3, [fp, #-16]
     fc4:	e3a03000 	mov	r3, #0
     fc8:	e50b3008 	str	r3, [fp, #-8]
     fcc:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     fd0:	e51b3010 	ldr	r3, [fp, #-16]
     fd4:	e1a01002 	mov	r1, r2
     fd8:	e1a00003 	mov	r0, r3
     fdc:	eb0001d5 	bl	1738 <__aeabi_uidivmod>
     fe0:	e1a03001 	mov	r3, r1
     fe4:	e1a01003 	mov	r1, r3
     fe8:	e51b3008 	ldr	r3, [fp, #-8]
     fec:	e2832001 	add	r2, r3, #1
     ff0:	e50b2008 	str	r2, [fp, #-8]
     ff4:	e59f20a0 	ldr	r2, [pc, #160]	@ 109c <printint+0x134>
     ff8:	e7d22001 	ldrb	r2, [r2, r1]
     ffc:	e2433004 	sub	r3, r3, #4
    1000:	e083300b 	add	r3, r3, fp
    1004:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1008:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    100c:	e1a01003 	mov	r1, r3
    1010:	e51b0010 	ldr	r0, [fp, #-16]
    1014:	eb00018a 	bl	1644 <__udivsi3>
    1018:	e1a03000 	mov	r3, r0
    101c:	e50b3010 	str	r3, [fp, #-16]
    1020:	e51b3010 	ldr	r3, [fp, #-16]
    1024:	e3530000 	cmp	r3, #0
    1028:	1affffe7 	bne	fcc <printint+0x64>
    102c:	e51b300c 	ldr	r3, [fp, #-12]
    1030:	e3530000 	cmp	r3, #0
    1034:	0a00000e 	beq	1074 <printint+0x10c>
    1038:	e51b3008 	ldr	r3, [fp, #-8]
    103c:	e2832001 	add	r2, r3, #1
    1040:	e50b2008 	str	r2, [fp, #-8]
    1044:	e2433004 	sub	r3, r3, #4
    1048:	e083300b 	add	r3, r3, fp
    104c:	e3a0202d 	mov	r2, #45	@ 0x2d
    1050:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1054:	ea000006 	b	1074 <printint+0x10c>
    1058:	e24b2020 	sub	r2, fp, #32
    105c:	e51b3008 	ldr	r3, [fp, #-8]
    1060:	e0823003 	add	r3, r2, r3
    1064:	e5d33000 	ldrb	r3, [r3]
    1068:	e1a01003 	mov	r1, r3
    106c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1070:	ebffffae 	bl	f30 <putc>
    1074:	e51b3008 	ldr	r3, [fp, #-8]
    1078:	e2433001 	sub	r3, r3, #1
    107c:	e50b3008 	str	r3, [fp, #-8]
    1080:	e51b3008 	ldr	r3, [fp, #-8]
    1084:	e3530000 	cmp	r3, #0
    1088:	aafffff2 	bge	1058 <printint+0xf0>
    108c:	e1a00000 	nop			@ (mov r0, r0)
    1090:	e1a00000 	nop			@ (mov r0, r0)
    1094:	e24bd004 	sub	sp, fp, #4
    1098:	e8bd8800 	pop	{fp, pc}
    109c:	00001784 	.word	0x00001784

000010a0 <printf>:
    10a0:	e92d000e 	push	{r1, r2, r3}
    10a4:	e92d4800 	push	{fp, lr}
    10a8:	e28db004 	add	fp, sp, #4
    10ac:	e24dd024 	sub	sp, sp, #36	@ 0x24
    10b0:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    10b4:	e3a03000 	mov	r3, #0
    10b8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    10bc:	e28b3008 	add	r3, fp, #8
    10c0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10c4:	e3a03000 	mov	r3, #0
    10c8:	e50b3010 	str	r3, [fp, #-16]
    10cc:	ea000074 	b	12a4 <printf+0x204>
    10d0:	e59b2004 	ldr	r2, [fp, #4]
    10d4:	e51b3010 	ldr	r3, [fp, #-16]
    10d8:	e0823003 	add	r3, r2, r3
    10dc:	e5d33000 	ldrb	r3, [r3]
    10e0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    10e4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    10e8:	e3530000 	cmp	r3, #0
    10ec:	1a00000b 	bne	1120 <printf+0x80>
    10f0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10f4:	e3530025 	cmp	r3, #37	@ 0x25
    10f8:	1a000002 	bne	1108 <printf+0x68>
    10fc:	e3a03025 	mov	r3, #37	@ 0x25
    1100:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1104:	ea000063 	b	1298 <printf+0x1f8>
    1108:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    110c:	e6ef3073 	uxtb	r3, r3
    1110:	e1a01003 	mov	r1, r3
    1114:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1118:	ebffff84 	bl	f30 <putc>
    111c:	ea00005d 	b	1298 <printf+0x1f8>
    1120:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1124:	e3530025 	cmp	r3, #37	@ 0x25
    1128:	1a00005a 	bne	1298 <printf+0x1f8>
    112c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1130:	e3530064 	cmp	r3, #100	@ 0x64
    1134:	1a00000a 	bne	1164 <printf+0xc4>
    1138:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    113c:	e5933000 	ldr	r3, [r3]
    1140:	e1a01003 	mov	r1, r3
    1144:	e3a03001 	mov	r3, #1
    1148:	e3a0200a 	mov	r2, #10
    114c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1150:	ebffff84 	bl	f68 <printint>
    1154:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1158:	e2833004 	add	r3, r3, #4
    115c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1160:	ea00004a 	b	1290 <printf+0x1f0>
    1164:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1168:	e3530078 	cmp	r3, #120	@ 0x78
    116c:	0a000002 	beq	117c <printf+0xdc>
    1170:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1174:	e3530070 	cmp	r3, #112	@ 0x70
    1178:	1a00000a 	bne	11a8 <printf+0x108>
    117c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1180:	e5933000 	ldr	r3, [r3]
    1184:	e1a01003 	mov	r1, r3
    1188:	e3a03000 	mov	r3, #0
    118c:	e3a02010 	mov	r2, #16
    1190:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1194:	ebffff73 	bl	f68 <printint>
    1198:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    119c:	e2833004 	add	r3, r3, #4
    11a0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11a4:	ea000039 	b	1290 <printf+0x1f0>
    11a8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11ac:	e3530073 	cmp	r3, #115	@ 0x73
    11b0:	1a000018 	bne	1218 <printf+0x178>
    11b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11b8:	e5933000 	ldr	r3, [r3]
    11bc:	e50b300c 	str	r3, [fp, #-12]
    11c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11c4:	e2833004 	add	r3, r3, #4
    11c8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11cc:	e51b300c 	ldr	r3, [fp, #-12]
    11d0:	e3530000 	cmp	r3, #0
    11d4:	1a00000a 	bne	1204 <printf+0x164>
    11d8:	e59f30f4 	ldr	r3, [pc, #244]	@ 12d4 <printf+0x234>
    11dc:	e50b300c 	str	r3, [fp, #-12]
    11e0:	ea000007 	b	1204 <printf+0x164>
    11e4:	e51b300c 	ldr	r3, [fp, #-12]
    11e8:	e5d33000 	ldrb	r3, [r3]
    11ec:	e1a01003 	mov	r1, r3
    11f0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11f4:	ebffff4d 	bl	f30 <putc>
    11f8:	e51b300c 	ldr	r3, [fp, #-12]
    11fc:	e2833001 	add	r3, r3, #1
    1200:	e50b300c 	str	r3, [fp, #-12]
    1204:	e51b300c 	ldr	r3, [fp, #-12]
    1208:	e5d33000 	ldrb	r3, [r3]
    120c:	e3530000 	cmp	r3, #0
    1210:	1afffff3 	bne	11e4 <printf+0x144>
    1214:	ea00001d 	b	1290 <printf+0x1f0>
    1218:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    121c:	e3530063 	cmp	r3, #99	@ 0x63
    1220:	1a000009 	bne	124c <printf+0x1ac>
    1224:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1228:	e5933000 	ldr	r3, [r3]
    122c:	e6ef3073 	uxtb	r3, r3
    1230:	e1a01003 	mov	r1, r3
    1234:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1238:	ebffff3c 	bl	f30 <putc>
    123c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1240:	e2833004 	add	r3, r3, #4
    1244:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1248:	ea000010 	b	1290 <printf+0x1f0>
    124c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1250:	e3530025 	cmp	r3, #37	@ 0x25
    1254:	1a000005 	bne	1270 <printf+0x1d0>
    1258:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    125c:	e6ef3073 	uxtb	r3, r3
    1260:	e1a01003 	mov	r1, r3
    1264:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1268:	ebffff30 	bl	f30 <putc>
    126c:	ea000007 	b	1290 <printf+0x1f0>
    1270:	e3a01025 	mov	r1, #37	@ 0x25
    1274:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1278:	ebffff2c 	bl	f30 <putc>
    127c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1280:	e6ef3073 	uxtb	r3, r3
    1284:	e1a01003 	mov	r1, r3
    1288:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    128c:	ebffff27 	bl	f30 <putc>
    1290:	e3a03000 	mov	r3, #0
    1294:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1298:	e51b3010 	ldr	r3, [fp, #-16]
    129c:	e2833001 	add	r3, r3, #1
    12a0:	e50b3010 	str	r3, [fp, #-16]
    12a4:	e59b2004 	ldr	r2, [fp, #4]
    12a8:	e51b3010 	ldr	r3, [fp, #-16]
    12ac:	e0823003 	add	r3, r2, r3
    12b0:	e5d33000 	ldrb	r3, [r3]
    12b4:	e3530000 	cmp	r3, #0
    12b8:	1affff84 	bne	10d0 <printf+0x30>
    12bc:	e1a00000 	nop			@ (mov r0, r0)
    12c0:	e1a00000 	nop			@ (mov r0, r0)
    12c4:	e24bd004 	sub	sp, fp, #4
    12c8:	e8bd4800 	pop	{fp, lr}
    12cc:	e28dd00c 	add	sp, sp, #12
    12d0:	e12fff1e 	bx	lr
    12d4:	0000177c 	.word	0x0000177c

000012d8 <free>:
    12d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    12dc:	e28db000 	add	fp, sp, #0
    12e0:	e24dd014 	sub	sp, sp, #20
    12e4:	e50b0010 	str	r0, [fp, #-16]
    12e8:	e51b3010 	ldr	r3, [fp, #-16]
    12ec:	e2433008 	sub	r3, r3, #8
    12f0:	e50b300c 	str	r3, [fp, #-12]
    12f4:	e59f3154 	ldr	r3, [pc, #340]	@ 1450 <free+0x178>
    12f8:	e5933000 	ldr	r3, [r3]
    12fc:	e50b3008 	str	r3, [fp, #-8]
    1300:	ea000010 	b	1348 <free+0x70>
    1304:	e51b3008 	ldr	r3, [fp, #-8]
    1308:	e5933000 	ldr	r3, [r3]
    130c:	e51b2008 	ldr	r2, [fp, #-8]
    1310:	e1520003 	cmp	r2, r3
    1314:	3a000008 	bcc	133c <free+0x64>
    1318:	e51b200c 	ldr	r2, [fp, #-12]
    131c:	e51b3008 	ldr	r3, [fp, #-8]
    1320:	e1520003 	cmp	r2, r3
    1324:	8a000010 	bhi	136c <free+0x94>
    1328:	e51b3008 	ldr	r3, [fp, #-8]
    132c:	e5933000 	ldr	r3, [r3]
    1330:	e51b200c 	ldr	r2, [fp, #-12]
    1334:	e1520003 	cmp	r2, r3
    1338:	3a00000b 	bcc	136c <free+0x94>
    133c:	e51b3008 	ldr	r3, [fp, #-8]
    1340:	e5933000 	ldr	r3, [r3]
    1344:	e50b3008 	str	r3, [fp, #-8]
    1348:	e51b200c 	ldr	r2, [fp, #-12]
    134c:	e51b3008 	ldr	r3, [fp, #-8]
    1350:	e1520003 	cmp	r2, r3
    1354:	9affffea 	bls	1304 <free+0x2c>
    1358:	e51b3008 	ldr	r3, [fp, #-8]
    135c:	e5933000 	ldr	r3, [r3]
    1360:	e51b200c 	ldr	r2, [fp, #-12]
    1364:	e1520003 	cmp	r2, r3
    1368:	2affffe5 	bcs	1304 <free+0x2c>
    136c:	e51b300c 	ldr	r3, [fp, #-12]
    1370:	e5933004 	ldr	r3, [r3, #4]
    1374:	e1a03183 	lsl	r3, r3, #3
    1378:	e51b200c 	ldr	r2, [fp, #-12]
    137c:	e0822003 	add	r2, r2, r3
    1380:	e51b3008 	ldr	r3, [fp, #-8]
    1384:	e5933000 	ldr	r3, [r3]
    1388:	e1520003 	cmp	r2, r3
    138c:	1a00000d 	bne	13c8 <free+0xf0>
    1390:	e51b300c 	ldr	r3, [fp, #-12]
    1394:	e5932004 	ldr	r2, [r3, #4]
    1398:	e51b3008 	ldr	r3, [fp, #-8]
    139c:	e5933000 	ldr	r3, [r3]
    13a0:	e5933004 	ldr	r3, [r3, #4]
    13a4:	e0822003 	add	r2, r2, r3
    13a8:	e51b300c 	ldr	r3, [fp, #-12]
    13ac:	e5832004 	str	r2, [r3, #4]
    13b0:	e51b3008 	ldr	r3, [fp, #-8]
    13b4:	e5933000 	ldr	r3, [r3]
    13b8:	e5932000 	ldr	r2, [r3]
    13bc:	e51b300c 	ldr	r3, [fp, #-12]
    13c0:	e5832000 	str	r2, [r3]
    13c4:	ea000003 	b	13d8 <free+0x100>
    13c8:	e51b3008 	ldr	r3, [fp, #-8]
    13cc:	e5932000 	ldr	r2, [r3]
    13d0:	e51b300c 	ldr	r3, [fp, #-12]
    13d4:	e5832000 	str	r2, [r3]
    13d8:	e51b3008 	ldr	r3, [fp, #-8]
    13dc:	e5933004 	ldr	r3, [r3, #4]
    13e0:	e1a03183 	lsl	r3, r3, #3
    13e4:	e51b2008 	ldr	r2, [fp, #-8]
    13e8:	e0823003 	add	r3, r2, r3
    13ec:	e51b200c 	ldr	r2, [fp, #-12]
    13f0:	e1520003 	cmp	r2, r3
    13f4:	1a00000b 	bne	1428 <free+0x150>
    13f8:	e51b3008 	ldr	r3, [fp, #-8]
    13fc:	e5932004 	ldr	r2, [r3, #4]
    1400:	e51b300c 	ldr	r3, [fp, #-12]
    1404:	e5933004 	ldr	r3, [r3, #4]
    1408:	e0822003 	add	r2, r2, r3
    140c:	e51b3008 	ldr	r3, [fp, #-8]
    1410:	e5832004 	str	r2, [r3, #4]
    1414:	e51b300c 	ldr	r3, [fp, #-12]
    1418:	e5932000 	ldr	r2, [r3]
    141c:	e51b3008 	ldr	r3, [fp, #-8]
    1420:	e5832000 	str	r2, [r3]
    1424:	ea000002 	b	1434 <free+0x15c>
    1428:	e51b3008 	ldr	r3, [fp, #-8]
    142c:	e51b200c 	ldr	r2, [fp, #-12]
    1430:	e5832000 	str	r2, [r3]
    1434:	e59f2014 	ldr	r2, [pc, #20]	@ 1450 <free+0x178>
    1438:	e51b3008 	ldr	r3, [fp, #-8]
    143c:	e5823000 	str	r3, [r2]
    1440:	e1a00000 	nop			@ (mov r0, r0)
    1444:	e28bd000 	add	sp, fp, #0
    1448:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    144c:	e12fff1e 	bx	lr
    1450:	000017b0 	.word	0x000017b0

00001454 <morecore>:
    1454:	e92d4800 	push	{fp, lr}
    1458:	e28db004 	add	fp, sp, #4
    145c:	e24dd010 	sub	sp, sp, #16
    1460:	e50b0010 	str	r0, [fp, #-16]
    1464:	e51b3010 	ldr	r3, [fp, #-16]
    1468:	e3530a01 	cmp	r3, #4096	@ 0x1000
    146c:	2a000001 	bcs	1478 <morecore+0x24>
    1470:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1474:	e50b3010 	str	r3, [fp, #-16]
    1478:	e51b3010 	ldr	r3, [fp, #-16]
    147c:	e1a03183 	lsl	r3, r3, #3
    1480:	e1a00003 	mov	r0, r3
    1484:	ebfffe07 	bl	ca8 <sbrk>
    1488:	e50b0008 	str	r0, [fp, #-8]
    148c:	e51b3008 	ldr	r3, [fp, #-8]
    1490:	e3730001 	cmn	r3, #1
    1494:	1a000001 	bne	14a0 <morecore+0x4c>
    1498:	e3a03000 	mov	r3, #0
    149c:	ea00000a 	b	14cc <morecore+0x78>
    14a0:	e51b3008 	ldr	r3, [fp, #-8]
    14a4:	e50b300c 	str	r3, [fp, #-12]
    14a8:	e51b300c 	ldr	r3, [fp, #-12]
    14ac:	e51b2010 	ldr	r2, [fp, #-16]
    14b0:	e5832004 	str	r2, [r3, #4]
    14b4:	e51b300c 	ldr	r3, [fp, #-12]
    14b8:	e2833008 	add	r3, r3, #8
    14bc:	e1a00003 	mov	r0, r3
    14c0:	ebffff84 	bl	12d8 <free>
    14c4:	e59f300c 	ldr	r3, [pc, #12]	@ 14d8 <morecore+0x84>
    14c8:	e5933000 	ldr	r3, [r3]
    14cc:	e1a00003 	mov	r0, r3
    14d0:	e24bd004 	sub	sp, fp, #4
    14d4:	e8bd8800 	pop	{fp, pc}
    14d8:	000017b0 	.word	0x000017b0

000014dc <malloc>:
    14dc:	e92d4800 	push	{fp, lr}
    14e0:	e28db004 	add	fp, sp, #4
    14e4:	e24dd018 	sub	sp, sp, #24
    14e8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    14ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    14f0:	e2833007 	add	r3, r3, #7
    14f4:	e1a031a3 	lsr	r3, r3, #3
    14f8:	e2833001 	add	r3, r3, #1
    14fc:	e50b3010 	str	r3, [fp, #-16]
    1500:	e59f3134 	ldr	r3, [pc, #308]	@ 163c <malloc+0x160>
    1504:	e5933000 	ldr	r3, [r3]
    1508:	e50b300c 	str	r3, [fp, #-12]
    150c:	e51b300c 	ldr	r3, [fp, #-12]
    1510:	e3530000 	cmp	r3, #0
    1514:	1a00000b 	bne	1548 <malloc+0x6c>
    1518:	e59f3120 	ldr	r3, [pc, #288]	@ 1640 <malloc+0x164>
    151c:	e50b300c 	str	r3, [fp, #-12]
    1520:	e59f2114 	ldr	r2, [pc, #276]	@ 163c <malloc+0x160>
    1524:	e51b300c 	ldr	r3, [fp, #-12]
    1528:	e5823000 	str	r3, [r2]
    152c:	e59f3108 	ldr	r3, [pc, #264]	@ 163c <malloc+0x160>
    1530:	e5933000 	ldr	r3, [r3]
    1534:	e59f2104 	ldr	r2, [pc, #260]	@ 1640 <malloc+0x164>
    1538:	e5823000 	str	r3, [r2]
    153c:	e59f30fc 	ldr	r3, [pc, #252]	@ 1640 <malloc+0x164>
    1540:	e3a02000 	mov	r2, #0
    1544:	e5832004 	str	r2, [r3, #4]
    1548:	e51b300c 	ldr	r3, [fp, #-12]
    154c:	e5933000 	ldr	r3, [r3]
    1550:	e50b3008 	str	r3, [fp, #-8]
    1554:	e51b3008 	ldr	r3, [fp, #-8]
    1558:	e5933004 	ldr	r3, [r3, #4]
    155c:	e51b2010 	ldr	r2, [fp, #-16]
    1560:	e1520003 	cmp	r2, r3
    1564:	8a00001e 	bhi	15e4 <malloc+0x108>
    1568:	e51b3008 	ldr	r3, [fp, #-8]
    156c:	e5933004 	ldr	r3, [r3, #4]
    1570:	e51b2010 	ldr	r2, [fp, #-16]
    1574:	e1520003 	cmp	r2, r3
    1578:	1a000004 	bne	1590 <malloc+0xb4>
    157c:	e51b3008 	ldr	r3, [fp, #-8]
    1580:	e5932000 	ldr	r2, [r3]
    1584:	e51b300c 	ldr	r3, [fp, #-12]
    1588:	e5832000 	str	r2, [r3]
    158c:	ea00000e 	b	15cc <malloc+0xf0>
    1590:	e51b3008 	ldr	r3, [fp, #-8]
    1594:	e5932004 	ldr	r2, [r3, #4]
    1598:	e51b3010 	ldr	r3, [fp, #-16]
    159c:	e0422003 	sub	r2, r2, r3
    15a0:	e51b3008 	ldr	r3, [fp, #-8]
    15a4:	e5832004 	str	r2, [r3, #4]
    15a8:	e51b3008 	ldr	r3, [fp, #-8]
    15ac:	e5933004 	ldr	r3, [r3, #4]
    15b0:	e1a03183 	lsl	r3, r3, #3
    15b4:	e51b2008 	ldr	r2, [fp, #-8]
    15b8:	e0823003 	add	r3, r2, r3
    15bc:	e50b3008 	str	r3, [fp, #-8]
    15c0:	e51b3008 	ldr	r3, [fp, #-8]
    15c4:	e51b2010 	ldr	r2, [fp, #-16]
    15c8:	e5832004 	str	r2, [r3, #4]
    15cc:	e59f2068 	ldr	r2, [pc, #104]	@ 163c <malloc+0x160>
    15d0:	e51b300c 	ldr	r3, [fp, #-12]
    15d4:	e5823000 	str	r3, [r2]
    15d8:	e51b3008 	ldr	r3, [fp, #-8]
    15dc:	e2833008 	add	r3, r3, #8
    15e0:	ea000012 	b	1630 <malloc+0x154>
    15e4:	e59f3050 	ldr	r3, [pc, #80]	@ 163c <malloc+0x160>
    15e8:	e5933000 	ldr	r3, [r3]
    15ec:	e51b2008 	ldr	r2, [fp, #-8]
    15f0:	e1520003 	cmp	r2, r3
    15f4:	1a000007 	bne	1618 <malloc+0x13c>
    15f8:	e51b0010 	ldr	r0, [fp, #-16]
    15fc:	ebffff94 	bl	1454 <morecore>
    1600:	e50b0008 	str	r0, [fp, #-8]
    1604:	e51b3008 	ldr	r3, [fp, #-8]
    1608:	e3530000 	cmp	r3, #0
    160c:	1a000001 	bne	1618 <malloc+0x13c>
    1610:	e3a03000 	mov	r3, #0
    1614:	ea000005 	b	1630 <malloc+0x154>
    1618:	e51b3008 	ldr	r3, [fp, #-8]
    161c:	e50b300c 	str	r3, [fp, #-12]
    1620:	e51b3008 	ldr	r3, [fp, #-8]
    1624:	e5933000 	ldr	r3, [r3]
    1628:	e50b3008 	str	r3, [fp, #-8]
    162c:	eaffffc8 	b	1554 <malloc+0x78>
    1630:	e1a00003 	mov	r0, r3
    1634:	e24bd004 	sub	sp, fp, #4
    1638:	e8bd8800 	pop	{fp, pc}
    163c:	000017b0 	.word	0x000017b0
    1640:	000017a8 	.word	0x000017a8

00001644 <__udivsi3>:
    1644:	e2512001 	subs	r2, r1, #1
    1648:	012fff1e 	bxeq	lr
    164c:	3a000036 	bcc	172c <__udivsi3+0xe8>
    1650:	e1500001 	cmp	r0, r1
    1654:	9a000022 	bls	16e4 <__udivsi3+0xa0>
    1658:	e1110002 	tst	r1, r2
    165c:	0a000023 	beq	16f0 <__udivsi3+0xac>
    1660:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1664:	01a01181 	lsleq	r1, r1, #3
    1668:	03a03008 	moveq	r3, #8
    166c:	13a03001 	movne	r3, #1
    1670:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1674:	31510000 	cmpcc	r1, r0
    1678:	31a01201 	lslcc	r1, r1, #4
    167c:	31a03203 	lslcc	r3, r3, #4
    1680:	3afffffa 	bcc	1670 <__udivsi3+0x2c>
    1684:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1688:	31510000 	cmpcc	r1, r0
    168c:	31a01081 	lslcc	r1, r1, #1
    1690:	31a03083 	lslcc	r3, r3, #1
    1694:	3afffffa 	bcc	1684 <__udivsi3+0x40>
    1698:	e3a02000 	mov	r2, #0
    169c:	e1500001 	cmp	r0, r1
    16a0:	20400001 	subcs	r0, r0, r1
    16a4:	21822003 	orrcs	r2, r2, r3
    16a8:	e15000a1 	cmp	r0, r1, lsr #1
    16ac:	204000a1 	subcs	r0, r0, r1, lsr #1
    16b0:	218220a3 	orrcs	r2, r2, r3, lsr #1
    16b4:	e1500121 	cmp	r0, r1, lsr #2
    16b8:	20400121 	subcs	r0, r0, r1, lsr #2
    16bc:	21822123 	orrcs	r2, r2, r3, lsr #2
    16c0:	e15001a1 	cmp	r0, r1, lsr #3
    16c4:	204001a1 	subcs	r0, r0, r1, lsr #3
    16c8:	218221a3 	orrcs	r2, r2, r3, lsr #3
    16cc:	e3500000 	cmp	r0, #0
    16d0:	11b03223 	lsrsne	r3, r3, #4
    16d4:	11a01221 	lsrne	r1, r1, #4
    16d8:	1affffef 	bne	169c <__udivsi3+0x58>
    16dc:	e1a00002 	mov	r0, r2
    16e0:	e12fff1e 	bx	lr
    16e4:	03a00001 	moveq	r0, #1
    16e8:	13a00000 	movne	r0, #0
    16ec:	e12fff1e 	bx	lr
    16f0:	e3510801 	cmp	r1, #65536	@ 0x10000
    16f4:	21a01821 	lsrcs	r1, r1, #16
    16f8:	23a02010 	movcs	r2, #16
    16fc:	33a02000 	movcc	r2, #0
    1700:	e3510c01 	cmp	r1, #256	@ 0x100
    1704:	21a01421 	lsrcs	r1, r1, #8
    1708:	22822008 	addcs	r2, r2, #8
    170c:	e3510010 	cmp	r1, #16
    1710:	21a01221 	lsrcs	r1, r1, #4
    1714:	22822004 	addcs	r2, r2, #4
    1718:	e3510004 	cmp	r1, #4
    171c:	82822003 	addhi	r2, r2, #3
    1720:	908220a1 	addls	r2, r2, r1, lsr #1
    1724:	e1a00230 	lsr	r0, r0, r2
    1728:	e12fff1e 	bx	lr
    172c:	e3500000 	cmp	r0, #0
    1730:	13e00000 	mvnne	r0, #0
    1734:	ea000007 	b	1758 <__aeabi_idiv0>

00001738 <__aeabi_uidivmod>:
    1738:	e3510000 	cmp	r1, #0
    173c:	0afffffa 	beq	172c <__udivsi3+0xe8>
    1740:	e92d4003 	push	{r0, r1, lr}
    1744:	ebffffbe 	bl	1644 <__udivsi3>
    1748:	e8bd4006 	pop	{r1, r2, lr}
    174c:	e0030092 	mul	r3, r2, r0
    1750:	e0411003 	sub	r1, r1, r3
    1754:	e12fff1e 	bx	lr

00001758 <__aeabi_idiv0>:
    1758:	e12fff1e 	bx	lr
