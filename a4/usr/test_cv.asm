
_test_cv:     file format elf32-littlearm


Disassembly of section .text:

00000000 <producer>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e50b0008 	str	r0, [fp, #-8]
      10:	e59f003c 	ldr	r0, [pc, #60]	@ 54 <producer+0x54>
      14:	eb0001b6 	bl	6f4 <acquireLock>
      18:	e59f1038 	ldr	r1, [pc, #56]	@ 58 <producer+0x58>
      1c:	e3a00001 	mov	r0, #1
      20:	eb000412 	bl	1070 <printf>
      24:	e59f3030 	ldr	r3, [pc, #48]	@ 5c <producer+0x5c>
      28:	e3a02001 	mov	r2, #1
      2c:	e5832000 	str	r2, [r3]
      30:	e59f0028 	ldr	r0, [pc, #40]	@ 60 <producer+0x60>
      34:	eb0001ff 	bl	838 <broadcast>
      38:	e59f0014 	ldr	r0, [pc, #20]	@ 54 <producer+0x54>
      3c:	eb0001c0 	bl	744 <releaseLock>
      40:	eb00035d 	bl	dbc <thread_exit>
      44:	e3a03000 	mov	r3, #0
      48:	e1a00003 	mov	r0, r3
      4c:	e24bd004 	sub	sp, fp, #4
      50:	e8bd8800 	pop	{fp, pc}
      54:	000017e8 	.word	0x000017e8
      58:	0000172c 	.word	0x0000172c
      5c:	000017f8 	.word	0x000017f8
      60:	000017f0 	.word	0x000017f0

00000064 <consumer>:
      64:	e92d4800 	push	{fp, lr}
      68:	e28db004 	add	fp, sp, #4
      6c:	e24dd008 	sub	sp, sp, #8
      70:	e50b0008 	str	r0, [fp, #-8]
      74:	e59f0060 	ldr	r0, [pc, #96]	@ dc <consumer+0x78>
      78:	eb00019d 	bl	6f4 <acquireLock>
      7c:	ea000005 	b	98 <consumer+0x34>
      80:	e59f1058 	ldr	r1, [pc, #88]	@ e0 <consumer+0x7c>
      84:	e3a00001 	mov	r0, #1
      88:	eb0003f8 	bl	1070 <printf>
      8c:	e59f1048 	ldr	r1, [pc, #72]	@ dc <consumer+0x78>
      90:	e59f004c 	ldr	r0, [pc, #76]	@ e4 <consumer+0x80>
      94:	eb0001ce 	bl	7d4 <condWait>
      98:	e59f3048 	ldr	r3, [pc, #72]	@ e8 <consumer+0x84>
      9c:	e5933000 	ldr	r3, [r3]
      a0:	e3530000 	cmp	r3, #0
      a4:	0afffff5 	beq	80 <consumer+0x1c>
      a8:	e59f3038 	ldr	r3, [pc, #56]	@ e8 <consumer+0x84>
      ac:	e5933000 	ldr	r3, [r3]
      b0:	e1a02003 	mov	r2, r3
      b4:	e59f1030 	ldr	r1, [pc, #48]	@ ec <consumer+0x88>
      b8:	e3a00001 	mov	r0, #1
      bc:	eb0003eb 	bl	1070 <printf>
      c0:	e59f0014 	ldr	r0, [pc, #20]	@ dc <consumer+0x78>
      c4:	eb00019e 	bl	744 <releaseLock>
      c8:	eb00033b 	bl	dbc <thread_exit>
      cc:	e3a03000 	mov	r3, #0
      d0:	e1a00003 	mov	r0, r3
      d4:	e24bd004 	sub	sp, fp, #4
      d8:	e8bd8800 	pop	{fp, pc}
      dc:	000017e8 	.word	0x000017e8
      e0:	0000174c 	.word	0x0000174c
      e4:	000017f0 	.word	0x000017f0
      e8:	000017f8 	.word	0x000017f8
      ec:	0000176c 	.word	0x0000176c

000000f0 <main>:
      f0:	e92d4800 	push	{fp, lr}
      f4:	e28db004 	add	fp, sp, #4
      f8:	e24dd008 	sub	sp, sp, #8
      fc:	e59f106c 	ldr	r1, [pc, #108]	@ 170 <main+0x80>
     100:	e3a00001 	mov	r0, #1
     104:	eb0003d9 	bl	1070 <printf>
     108:	e59f0064 	ldr	r0, [pc, #100]	@ 174 <main+0x84>
     10c:	eb000159 	bl	678 <initiateLock>
     110:	e59f0060 	ldr	r0, [pc, #96]	@ 178 <main+0x88>
     114:	eb0001a0 	bl	79c <initiateCondVar>
     118:	e24b3008 	sub	r3, fp, #8
     11c:	e3a02000 	mov	r2, #0
     120:	e59f1054 	ldr	r1, [pc, #84]	@ 17c <main+0x8c>
     124:	e1a00003 	mov	r0, r3
     128:	eb00031a 	bl	d98 <thread_create>
     12c:	e3a00001 	mov	r0, #1
     130:	eb0002d9 	bl	c9c <sleep>
     134:	e24b300c 	sub	r3, fp, #12
     138:	e3a02000 	mov	r2, #0
     13c:	e59f103c 	ldr	r1, [pc, #60]	@ 180 <main+0x90>
     140:	e1a00003 	mov	r0, r3
     144:	eb000313 	bl	d98 <thread_create>
     148:	e51b3008 	ldr	r3, [fp, #-8]
     14c:	e1a00003 	mov	r0, r3
     150:	eb000322 	bl	de0 <thread_join>
     154:	e51b300c 	ldr	r3, [fp, #-12]
     158:	e1a00003 	mov	r0, r3
     15c:	eb00031f 	bl	de0 <thread_join>
     160:	e59f101c 	ldr	r1, [pc, #28]	@ 184 <main+0x94>
     164:	e3a00001 	mov	r0, #1
     168:	eb0003c0 	bl	1070 <printf>
     16c:	eb000228 	bl	a14 <exit>
     170:	00001788 	.word	0x00001788
     174:	000017e8 	.word	0x000017e8
     178:	000017f0 	.word	0x000017f0
     17c:	00000064 	.word	0x00000064
     180:	00000000 	.word	0x00000000
     184:	000017a8 	.word	0x000017a8

00000188 <strcpy>:
     188:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     18c:	e28db000 	add	fp, sp, #0
     190:	e24dd014 	sub	sp, sp, #20
     194:	e50b0010 	str	r0, [fp, #-16]
     198:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     19c:	e51b3010 	ldr	r3, [fp, #-16]
     1a0:	e50b3008 	str	r3, [fp, #-8]
     1a4:	e1a00000 	nop			@ (mov r0, r0)
     1a8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1ac:	e2823001 	add	r3, r2, #1
     1b0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1b4:	e51b3010 	ldr	r3, [fp, #-16]
     1b8:	e2831001 	add	r1, r3, #1
     1bc:	e50b1010 	str	r1, [fp, #-16]
     1c0:	e5d22000 	ldrb	r2, [r2]
     1c4:	e5c32000 	strb	r2, [r3]
     1c8:	e5d33000 	ldrb	r3, [r3]
     1cc:	e3530000 	cmp	r3, #0
     1d0:	1afffff4 	bne	1a8 <strcpy+0x20>
     1d4:	e51b3008 	ldr	r3, [fp, #-8]
     1d8:	e1a00003 	mov	r0, r3
     1dc:	e28bd000 	add	sp, fp, #0
     1e0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1e4:	e12fff1e 	bx	lr

000001e8 <strcmp>:
     1e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1ec:	e28db000 	add	fp, sp, #0
     1f0:	e24dd00c 	sub	sp, sp, #12
     1f4:	e50b0008 	str	r0, [fp, #-8]
     1f8:	e50b100c 	str	r1, [fp, #-12]
     1fc:	ea000005 	b	218 <strcmp+0x30>
     200:	e51b3008 	ldr	r3, [fp, #-8]
     204:	e2833001 	add	r3, r3, #1
     208:	e50b3008 	str	r3, [fp, #-8]
     20c:	e51b300c 	ldr	r3, [fp, #-12]
     210:	e2833001 	add	r3, r3, #1
     214:	e50b300c 	str	r3, [fp, #-12]
     218:	e51b3008 	ldr	r3, [fp, #-8]
     21c:	e5d33000 	ldrb	r3, [r3]
     220:	e3530000 	cmp	r3, #0
     224:	0a000005 	beq	240 <strcmp+0x58>
     228:	e51b3008 	ldr	r3, [fp, #-8]
     22c:	e5d32000 	ldrb	r2, [r3]
     230:	e51b300c 	ldr	r3, [fp, #-12]
     234:	e5d33000 	ldrb	r3, [r3]
     238:	e1520003 	cmp	r2, r3
     23c:	0affffef 	beq	200 <strcmp+0x18>
     240:	e51b3008 	ldr	r3, [fp, #-8]
     244:	e5d33000 	ldrb	r3, [r3]
     248:	e1a02003 	mov	r2, r3
     24c:	e51b300c 	ldr	r3, [fp, #-12]
     250:	e5d33000 	ldrb	r3, [r3]
     254:	e0423003 	sub	r3, r2, r3
     258:	e1a00003 	mov	r0, r3
     25c:	e28bd000 	add	sp, fp, #0
     260:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     264:	e12fff1e 	bx	lr

00000268 <strlen>:
     268:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     26c:	e28db000 	add	fp, sp, #0
     270:	e24dd014 	sub	sp, sp, #20
     274:	e50b0010 	str	r0, [fp, #-16]
     278:	e3a03000 	mov	r3, #0
     27c:	e50b3008 	str	r3, [fp, #-8]
     280:	ea000002 	b	290 <strlen+0x28>
     284:	e51b3008 	ldr	r3, [fp, #-8]
     288:	e2833001 	add	r3, r3, #1
     28c:	e50b3008 	str	r3, [fp, #-8]
     290:	e51b3008 	ldr	r3, [fp, #-8]
     294:	e51b2010 	ldr	r2, [fp, #-16]
     298:	e0823003 	add	r3, r2, r3
     29c:	e5d33000 	ldrb	r3, [r3]
     2a0:	e3530000 	cmp	r3, #0
     2a4:	1afffff6 	bne	284 <strlen+0x1c>
     2a8:	e51b3008 	ldr	r3, [fp, #-8]
     2ac:	e1a00003 	mov	r0, r3
     2b0:	e28bd000 	add	sp, fp, #0
     2b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2b8:	e12fff1e 	bx	lr

000002bc <memset>:
     2bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2c0:	e28db000 	add	fp, sp, #0
     2c4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     2c8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     2cc:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     2d0:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     2d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2d8:	e50b3008 	str	r3, [fp, #-8]
     2dc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     2e0:	e54b300d 	strb	r3, [fp, #-13]
     2e4:	e55b200d 	ldrb	r2, [fp, #-13]
     2e8:	e1a03002 	mov	r3, r2
     2ec:	e1a03403 	lsl	r3, r3, #8
     2f0:	e0833002 	add	r3, r3, r2
     2f4:	e1a03803 	lsl	r3, r3, #16
     2f8:	e1a02003 	mov	r2, r3
     2fc:	e55b300d 	ldrb	r3, [fp, #-13]
     300:	e1a03403 	lsl	r3, r3, #8
     304:	e1822003 	orr	r2, r2, r3
     308:	e55b300d 	ldrb	r3, [fp, #-13]
     30c:	e1823003 	orr	r3, r2, r3
     310:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     314:	ea000008 	b	33c <memset+0x80>
     318:	e51b3008 	ldr	r3, [fp, #-8]
     31c:	e55b200d 	ldrb	r2, [fp, #-13]
     320:	e5c32000 	strb	r2, [r3]
     324:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     328:	e2433001 	sub	r3, r3, #1
     32c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     330:	e51b3008 	ldr	r3, [fp, #-8]
     334:	e2833001 	add	r3, r3, #1
     338:	e50b3008 	str	r3, [fp, #-8]
     33c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     340:	e3530000 	cmp	r3, #0
     344:	0a000003 	beq	358 <memset+0x9c>
     348:	e51b3008 	ldr	r3, [fp, #-8]
     34c:	e2033003 	and	r3, r3, #3
     350:	e3530000 	cmp	r3, #0
     354:	1affffef 	bne	318 <memset+0x5c>
     358:	e51b3008 	ldr	r3, [fp, #-8]
     35c:	e50b300c 	str	r3, [fp, #-12]
     360:	ea000008 	b	388 <memset+0xcc>
     364:	e51b300c 	ldr	r3, [fp, #-12]
     368:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     36c:	e5832000 	str	r2, [r3]
     370:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     374:	e2433004 	sub	r3, r3, #4
     378:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     37c:	e51b300c 	ldr	r3, [fp, #-12]
     380:	e2833004 	add	r3, r3, #4
     384:	e50b300c 	str	r3, [fp, #-12]
     388:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     38c:	e3530003 	cmp	r3, #3
     390:	8afffff3 	bhi	364 <memset+0xa8>
     394:	e51b300c 	ldr	r3, [fp, #-12]
     398:	e50b3008 	str	r3, [fp, #-8]
     39c:	ea000008 	b	3c4 <memset+0x108>
     3a0:	e51b3008 	ldr	r3, [fp, #-8]
     3a4:	e55b200d 	ldrb	r2, [fp, #-13]
     3a8:	e5c32000 	strb	r2, [r3]
     3ac:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3b0:	e2433001 	sub	r3, r3, #1
     3b4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3b8:	e51b3008 	ldr	r3, [fp, #-8]
     3bc:	e2833001 	add	r3, r3, #1
     3c0:	e50b3008 	str	r3, [fp, #-8]
     3c4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3c8:	e3530000 	cmp	r3, #0
     3cc:	1afffff3 	bne	3a0 <memset+0xe4>
     3d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3d4:	e1a00003 	mov	r0, r3
     3d8:	e28bd000 	add	sp, fp, #0
     3dc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3e0:	e12fff1e 	bx	lr

000003e4 <strchr>:
     3e4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3e8:	e28db000 	add	fp, sp, #0
     3ec:	e24dd00c 	sub	sp, sp, #12
     3f0:	e50b0008 	str	r0, [fp, #-8]
     3f4:	e1a03001 	mov	r3, r1
     3f8:	e54b3009 	strb	r3, [fp, #-9]
     3fc:	ea000009 	b	428 <strchr+0x44>
     400:	e51b3008 	ldr	r3, [fp, #-8]
     404:	e5d33000 	ldrb	r3, [r3]
     408:	e55b2009 	ldrb	r2, [fp, #-9]
     40c:	e1520003 	cmp	r2, r3
     410:	1a000001 	bne	41c <strchr+0x38>
     414:	e51b3008 	ldr	r3, [fp, #-8]
     418:	ea000007 	b	43c <strchr+0x58>
     41c:	e51b3008 	ldr	r3, [fp, #-8]
     420:	e2833001 	add	r3, r3, #1
     424:	e50b3008 	str	r3, [fp, #-8]
     428:	e51b3008 	ldr	r3, [fp, #-8]
     42c:	e5d33000 	ldrb	r3, [r3]
     430:	e3530000 	cmp	r3, #0
     434:	1afffff1 	bne	400 <strchr+0x1c>
     438:	e3a03000 	mov	r3, #0
     43c:	e1a00003 	mov	r0, r3
     440:	e28bd000 	add	sp, fp, #0
     444:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     448:	e12fff1e 	bx	lr

0000044c <gets>:
     44c:	e92d4800 	push	{fp, lr}
     450:	e28db004 	add	fp, sp, #4
     454:	e24dd018 	sub	sp, sp, #24
     458:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     45c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     460:	e3a03000 	mov	r3, #0
     464:	e50b3008 	str	r3, [fp, #-8]
     468:	ea000016 	b	4c8 <gets+0x7c>
     46c:	e24b300d 	sub	r3, fp, #13
     470:	e3a02001 	mov	r2, #1
     474:	e1a01003 	mov	r1, r3
     478:	e3a00000 	mov	r0, #0
     47c:	eb00017f 	bl	a80 <read>
     480:	e50b000c 	str	r0, [fp, #-12]
     484:	e51b300c 	ldr	r3, [fp, #-12]
     488:	e3530000 	cmp	r3, #0
     48c:	da000013 	ble	4e0 <gets+0x94>
     490:	e51b3008 	ldr	r3, [fp, #-8]
     494:	e2832001 	add	r2, r3, #1
     498:	e50b2008 	str	r2, [fp, #-8]
     49c:	e1a02003 	mov	r2, r3
     4a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4a4:	e0833002 	add	r3, r3, r2
     4a8:	e55b200d 	ldrb	r2, [fp, #-13]
     4ac:	e5c32000 	strb	r2, [r3]
     4b0:	e55b300d 	ldrb	r3, [fp, #-13]
     4b4:	e353000a 	cmp	r3, #10
     4b8:	0a000009 	beq	4e4 <gets+0x98>
     4bc:	e55b300d 	ldrb	r3, [fp, #-13]
     4c0:	e353000d 	cmp	r3, #13
     4c4:	0a000006 	beq	4e4 <gets+0x98>
     4c8:	e51b3008 	ldr	r3, [fp, #-8]
     4cc:	e2833001 	add	r3, r3, #1
     4d0:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     4d4:	e1520003 	cmp	r2, r3
     4d8:	caffffe3 	bgt	46c <gets+0x20>
     4dc:	ea000000 	b	4e4 <gets+0x98>
     4e0:	e1a00000 	nop			@ (mov r0, r0)
     4e4:	e51b3008 	ldr	r3, [fp, #-8]
     4e8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     4ec:	e0823003 	add	r3, r2, r3
     4f0:	e3a02000 	mov	r2, #0
     4f4:	e5c32000 	strb	r2, [r3]
     4f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4fc:	e1a00003 	mov	r0, r3
     500:	e24bd004 	sub	sp, fp, #4
     504:	e8bd8800 	pop	{fp, pc}

00000508 <stat>:
     508:	e92d4800 	push	{fp, lr}
     50c:	e28db004 	add	fp, sp, #4
     510:	e24dd010 	sub	sp, sp, #16
     514:	e50b0010 	str	r0, [fp, #-16]
     518:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     51c:	e3a01000 	mov	r1, #0
     520:	e51b0010 	ldr	r0, [fp, #-16]
     524:	eb000182 	bl	b34 <open>
     528:	e50b0008 	str	r0, [fp, #-8]
     52c:	e51b3008 	ldr	r3, [fp, #-8]
     530:	e3530000 	cmp	r3, #0
     534:	aa000001 	bge	540 <stat+0x38>
     538:	e3e03000 	mvn	r3, #0
     53c:	ea000006 	b	55c <stat+0x54>
     540:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     544:	e51b0008 	ldr	r0, [fp, #-8]
     548:	eb000194 	bl	ba0 <fstat>
     54c:	e50b000c 	str	r0, [fp, #-12]
     550:	e51b0008 	ldr	r0, [fp, #-8]
     554:	eb00015b 	bl	ac8 <close>
     558:	e51b300c 	ldr	r3, [fp, #-12]
     55c:	e1a00003 	mov	r0, r3
     560:	e24bd004 	sub	sp, fp, #4
     564:	e8bd8800 	pop	{fp, pc}

00000568 <atoi>:
     568:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     56c:	e28db000 	add	fp, sp, #0
     570:	e24dd014 	sub	sp, sp, #20
     574:	e50b0010 	str	r0, [fp, #-16]
     578:	e3a03000 	mov	r3, #0
     57c:	e50b3008 	str	r3, [fp, #-8]
     580:	ea00000c 	b	5b8 <atoi+0x50>
     584:	e51b2008 	ldr	r2, [fp, #-8]
     588:	e1a03002 	mov	r3, r2
     58c:	e1a03103 	lsl	r3, r3, #2
     590:	e0833002 	add	r3, r3, r2
     594:	e1a03083 	lsl	r3, r3, #1
     598:	e1a01003 	mov	r1, r3
     59c:	e51b3010 	ldr	r3, [fp, #-16]
     5a0:	e2832001 	add	r2, r3, #1
     5a4:	e50b2010 	str	r2, [fp, #-16]
     5a8:	e5d33000 	ldrb	r3, [r3]
     5ac:	e0813003 	add	r3, r1, r3
     5b0:	e2433030 	sub	r3, r3, #48	@ 0x30
     5b4:	e50b3008 	str	r3, [fp, #-8]
     5b8:	e51b3010 	ldr	r3, [fp, #-16]
     5bc:	e5d33000 	ldrb	r3, [r3]
     5c0:	e353002f 	cmp	r3, #47	@ 0x2f
     5c4:	9a000003 	bls	5d8 <atoi+0x70>
     5c8:	e51b3010 	ldr	r3, [fp, #-16]
     5cc:	e5d33000 	ldrb	r3, [r3]
     5d0:	e3530039 	cmp	r3, #57	@ 0x39
     5d4:	9affffea 	bls	584 <atoi+0x1c>
     5d8:	e51b3010 	ldr	r3, [fp, #-16]
     5dc:	e5d33000 	ldrb	r3, [r3]
     5e0:	e3530000 	cmp	r3, #0
     5e4:	1a000001 	bne	5f0 <atoi+0x88>
     5e8:	e51b3008 	ldr	r3, [fp, #-8]
     5ec:	ea000000 	b	5f4 <atoi+0x8c>
     5f0:	e3e03000 	mvn	r3, #0
     5f4:	e1a00003 	mov	r0, r3
     5f8:	e28bd000 	add	sp, fp, #0
     5fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     600:	e12fff1e 	bx	lr

00000604 <memmove>:
     604:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     608:	e28db000 	add	fp, sp, #0
     60c:	e24dd01c 	sub	sp, sp, #28
     610:	e50b0010 	str	r0, [fp, #-16]
     614:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     618:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     61c:	e51b3010 	ldr	r3, [fp, #-16]
     620:	e50b3008 	str	r3, [fp, #-8]
     624:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     628:	e50b300c 	str	r3, [fp, #-12]
     62c:	ea000007 	b	650 <memmove+0x4c>
     630:	e51b200c 	ldr	r2, [fp, #-12]
     634:	e2823001 	add	r3, r2, #1
     638:	e50b300c 	str	r3, [fp, #-12]
     63c:	e51b3008 	ldr	r3, [fp, #-8]
     640:	e2831001 	add	r1, r3, #1
     644:	e50b1008 	str	r1, [fp, #-8]
     648:	e5d22000 	ldrb	r2, [r2]
     64c:	e5c32000 	strb	r2, [r3]
     650:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     654:	e2432001 	sub	r2, r3, #1
     658:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     65c:	e3530000 	cmp	r3, #0
     660:	cafffff2 	bgt	630 <memmove+0x2c>
     664:	e51b3010 	ldr	r3, [fp, #-16]
     668:	e1a00003 	mov	r0, r3
     66c:	e28bd000 	add	sp, fp, #0
     670:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     674:	e12fff1e 	bx	lr

00000678 <initiateLock>:
     678:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     67c:	e28db000 	add	fp, sp, #0
     680:	e24dd00c 	sub	sp, sp, #12
     684:	e50b0008 	str	r0, [fp, #-8]
     688:	e51b3008 	ldr	r3, [fp, #-8]
     68c:	e3a02000 	mov	r2, #0
     690:	e5832000 	str	r2, [r3]
     694:	e51b3008 	ldr	r3, [fp, #-8]
     698:	e3a02001 	mov	r2, #1
     69c:	e5832004 	str	r2, [r3, #4]
     6a0:	e1a00000 	nop			@ (mov r0, r0)
     6a4:	e28bd000 	add	sp, fp, #0
     6a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6ac:	e12fff1e 	bx	lr

000006b0 <xchg>:
     6b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6b4:	e28db000 	add	fp, sp, #0
     6b8:	e24dd00c 	sub	sp, sp, #12
     6bc:	e50b0008 	str	r0, [fp, #-8]
     6c0:	e50b100c 	str	r1, [fp, #-12]
     6c4:	e51b200c 	ldr	r2, [fp, #-12]
     6c8:	e51b3008 	ldr	r3, [fp, #-8]
     6cc:	e1931f9f 	ldrex	r1, [r3]
     6d0:	e1830f92 	strex	r0, r2, [r3]
     6d4:	e3500000 	cmp	r0, #0
     6d8:	1afffffb 	bne	6cc <xchg+0x1c>
     6dc:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     6e0:	e1a03001 	mov	r3, r1
     6e4:	e1a00003 	mov	r0, r3
     6e8:	e28bd000 	add	sp, fp, #0
     6ec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6f0:	e12fff1e 	bx	lr

000006f4 <acquireLock>:
     6f4:	e92d4800 	push	{fp, lr}
     6f8:	e28db004 	add	fp, sp, #4
     6fc:	e24dd008 	sub	sp, sp, #8
     700:	e50b0008 	str	r0, [fp, #-8]
     704:	e51b3008 	ldr	r3, [fp, #-8]
     708:	e5933004 	ldr	r3, [r3, #4]
     70c:	e3530000 	cmp	r3, #0
     710:	0a000008 	beq	738 <acquireLock+0x44>
     714:	e1a00000 	nop			@ (mov r0, r0)
     718:	e51b3008 	ldr	r3, [fp, #-8]
     71c:	e3a01001 	mov	r1, #1
     720:	e1a00003 	mov	r0, r3
     724:	ebffffe1 	bl	6b0 <xchg>
     728:	e1a03000 	mov	r3, r0
     72c:	e3530000 	cmp	r3, #0
     730:	1afffff8 	bne	718 <acquireLock+0x24>
     734:	ea000000 	b	73c <acquireLock+0x48>
     738:	e1a00000 	nop			@ (mov r0, r0)
     73c:	e24bd004 	sub	sp, fp, #4
     740:	e8bd8800 	pop	{fp, pc}

00000744 <releaseLock>:
     744:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     748:	e28db000 	add	fp, sp, #0
     74c:	e24dd00c 	sub	sp, sp, #12
     750:	e50b0008 	str	r0, [fp, #-8]
     754:	e51b3008 	ldr	r3, [fp, #-8]
     758:	e5933004 	ldr	r3, [r3, #4]
     75c:	e3530000 	cmp	r3, #0
     760:	0a000007 	beq	784 <releaseLock+0x40>
     764:	e51b3008 	ldr	r3, [fp, #-8]
     768:	e5933000 	ldr	r3, [r3]
     76c:	e3530001 	cmp	r3, #1
     770:	1a000005 	bne	78c <releaseLock+0x48>
     774:	e51b3008 	ldr	r3, [fp, #-8]
     778:	e3a02000 	mov	r2, #0
     77c:	e5832000 	str	r2, [r3]
     780:	ea000002 	b	790 <releaseLock+0x4c>
     784:	e1a00000 	nop			@ (mov r0, r0)
     788:	ea000000 	b	790 <releaseLock+0x4c>
     78c:	e1a00000 	nop			@ (mov r0, r0)
     790:	e28bd000 	add	sp, fp, #0
     794:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     798:	e12fff1e 	bx	lr

0000079c <initiateCondVar>:
     79c:	e92d4800 	push	{fp, lr}
     7a0:	e28db004 	add	fp, sp, #4
     7a4:	e24dd008 	sub	sp, sp, #8
     7a8:	e50b0008 	str	r0, [fp, #-8]
     7ac:	eb0001b8 	bl	e94 <getChannel>
     7b0:	e1a02000 	mov	r2, r0
     7b4:	e51b3008 	ldr	r3, [fp, #-8]
     7b8:	e5832000 	str	r2, [r3]
     7bc:	e51b3008 	ldr	r3, [fp, #-8]
     7c0:	e3a02001 	mov	r2, #1
     7c4:	e5832004 	str	r2, [r3, #4]
     7c8:	e1a00000 	nop			@ (mov r0, r0)
     7cc:	e24bd004 	sub	sp, fp, #4
     7d0:	e8bd8800 	pop	{fp, pc}

000007d4 <condWait>:
     7d4:	e92d4800 	push	{fp, lr}
     7d8:	e28db004 	add	fp, sp, #4
     7dc:	e24dd008 	sub	sp, sp, #8
     7e0:	e50b0008 	str	r0, [fp, #-8]
     7e4:	e50b100c 	str	r1, [fp, #-12]
     7e8:	e51b3008 	ldr	r3, [fp, #-8]
     7ec:	e5933004 	ldr	r3, [r3, #4]
     7f0:	e3530000 	cmp	r3, #0
     7f4:	0a00000c 	beq	82c <condWait+0x58>
     7f8:	e51b300c 	ldr	r3, [fp, #-12]
     7fc:	e5933004 	ldr	r3, [r3, #4]
     800:	e3530000 	cmp	r3, #0
     804:	0a000008 	beq	82c <condWait+0x58>
     808:	e51b000c 	ldr	r0, [fp, #-12]
     80c:	ebffffcc 	bl	744 <releaseLock>
     810:	e51b3008 	ldr	r3, [fp, #-8]
     814:	e5933000 	ldr	r3, [r3]
     818:	e1a00003 	mov	r0, r3
     81c:	eb000193 	bl	e70 <sleepChan>
     820:	e51b000c 	ldr	r0, [fp, #-12]
     824:	ebffffb2 	bl	6f4 <acquireLock>
     828:	ea000000 	b	830 <condWait+0x5c>
     82c:	e1a00000 	nop			@ (mov r0, r0)
     830:	e24bd004 	sub	sp, fp, #4
     834:	e8bd8800 	pop	{fp, pc}

00000838 <broadcast>:
     838:	e92d4800 	push	{fp, lr}
     83c:	e28db004 	add	fp, sp, #4
     840:	e24dd008 	sub	sp, sp, #8
     844:	e50b0008 	str	r0, [fp, #-8]
     848:	e51b3008 	ldr	r3, [fp, #-8]
     84c:	e5933004 	ldr	r3, [r3, #4]
     850:	e3530000 	cmp	r3, #0
     854:	0a000004 	beq	86c <broadcast+0x34>
     858:	e51b3008 	ldr	r3, [fp, #-8]
     85c:	e5933000 	ldr	r3, [r3]
     860:	e1a00003 	mov	r0, r3
     864:	eb000193 	bl	eb8 <sigChan>
     868:	ea000000 	b	870 <broadcast+0x38>
     86c:	e1a00000 	nop			@ (mov r0, r0)
     870:	e24bd004 	sub	sp, fp, #4
     874:	e8bd8800 	pop	{fp, pc}

00000878 <signal>:
     878:	e92d4800 	push	{fp, lr}
     87c:	e28db004 	add	fp, sp, #4
     880:	e24dd008 	sub	sp, sp, #8
     884:	e50b0008 	str	r0, [fp, #-8]
     888:	e51b3008 	ldr	r3, [fp, #-8]
     88c:	e5933004 	ldr	r3, [r3, #4]
     890:	e3530000 	cmp	r3, #0
     894:	0a000004 	beq	8ac <signal+0x34>
     898:	e51b3008 	ldr	r3, [fp, #-8]
     89c:	e5933000 	ldr	r3, [r3]
     8a0:	e1a00003 	mov	r0, r3
     8a4:	eb00018c 	bl	edc <sigOneChan>
     8a8:	ea000000 	b	8b0 <signal+0x38>
     8ac:	e1a00000 	nop			@ (mov r0, r0)
     8b0:	e24bd004 	sub	sp, fp, #4
     8b4:	e8bd8800 	pop	{fp, pc}

000008b8 <semInit>:
     8b8:	e92d4800 	push	{fp, lr}
     8bc:	e28db004 	add	fp, sp, #4
     8c0:	e24dd008 	sub	sp, sp, #8
     8c4:	e50b0008 	str	r0, [fp, #-8]
     8c8:	e50b100c 	str	r1, [fp, #-12]
     8cc:	e51b3008 	ldr	r3, [fp, #-8]
     8d0:	e51b200c 	ldr	r2, [fp, #-12]
     8d4:	e5832000 	str	r2, [r3]
     8d8:	e51b3008 	ldr	r3, [fp, #-8]
     8dc:	e2833004 	add	r3, r3, #4
     8e0:	e1a00003 	mov	r0, r3
     8e4:	ebffff63 	bl	678 <initiateLock>
     8e8:	e51b3008 	ldr	r3, [fp, #-8]
     8ec:	e283300c 	add	r3, r3, #12
     8f0:	e1a00003 	mov	r0, r3
     8f4:	ebffffa8 	bl	79c <initiateCondVar>
     8f8:	e51b3008 	ldr	r3, [fp, #-8]
     8fc:	e3a02001 	mov	r2, #1
     900:	e5832014 	str	r2, [r3, #20]
     904:	e1a00000 	nop			@ (mov r0, r0)
     908:	e24bd004 	sub	sp, fp, #4
     90c:	e8bd8800 	pop	{fp, pc}

00000910 <semUp>:
     910:	e92d4800 	push	{fp, lr}
     914:	e28db004 	add	fp, sp, #4
     918:	e24dd008 	sub	sp, sp, #8
     91c:	e50b0008 	str	r0, [fp, #-8]
     920:	e51b3008 	ldr	r3, [fp, #-8]
     924:	e2833004 	add	r3, r3, #4
     928:	e1a00003 	mov	r0, r3
     92c:	ebffff70 	bl	6f4 <acquireLock>
     930:	e51b3008 	ldr	r3, [fp, #-8]
     934:	e5933000 	ldr	r3, [r3]
     938:	e2832001 	add	r2, r3, #1
     93c:	e51b3008 	ldr	r3, [fp, #-8]
     940:	e5832000 	str	r2, [r3]
     944:	e51b3008 	ldr	r3, [fp, #-8]
     948:	e283300c 	add	r3, r3, #12
     94c:	e1a00003 	mov	r0, r3
     950:	ebffffc8 	bl	878 <signal>
     954:	e51b3008 	ldr	r3, [fp, #-8]
     958:	e2833004 	add	r3, r3, #4
     95c:	e1a00003 	mov	r0, r3
     960:	ebffff77 	bl	744 <releaseLock>
     964:	e1a00000 	nop			@ (mov r0, r0)
     968:	e24bd004 	sub	sp, fp, #4
     96c:	e8bd8800 	pop	{fp, pc}

00000970 <semDown>:
     970:	e92d4800 	push	{fp, lr}
     974:	e28db004 	add	fp, sp, #4
     978:	e24dd008 	sub	sp, sp, #8
     97c:	e50b0008 	str	r0, [fp, #-8]
     980:	e51b3008 	ldr	r3, [fp, #-8]
     984:	e2833004 	add	r3, r3, #4
     988:	e1a00003 	mov	r0, r3
     98c:	ebffff58 	bl	6f4 <acquireLock>
     990:	ea000006 	b	9b0 <semDown+0x40>
     994:	e51b3008 	ldr	r3, [fp, #-8]
     998:	e283200c 	add	r2, r3, #12
     99c:	e51b3008 	ldr	r3, [fp, #-8]
     9a0:	e2833004 	add	r3, r3, #4
     9a4:	e1a01003 	mov	r1, r3
     9a8:	e1a00002 	mov	r0, r2
     9ac:	ebffff88 	bl	7d4 <condWait>
     9b0:	e51b3008 	ldr	r3, [fp, #-8]
     9b4:	e5933000 	ldr	r3, [r3]
     9b8:	e3530000 	cmp	r3, #0
     9bc:	dafffff4 	ble	994 <semDown+0x24>
     9c0:	e51b3008 	ldr	r3, [fp, #-8]
     9c4:	e5933000 	ldr	r3, [r3]
     9c8:	e2432001 	sub	r2, r3, #1
     9cc:	e51b3008 	ldr	r3, [fp, #-8]
     9d0:	e5832000 	str	r2, [r3]
     9d4:	e51b3008 	ldr	r3, [fp, #-8]
     9d8:	e2833004 	add	r3, r3, #4
     9dc:	e1a00003 	mov	r0, r3
     9e0:	ebffff57 	bl	744 <releaseLock>
     9e4:	e1a00000 	nop			@ (mov r0, r0)
     9e8:	e24bd004 	sub	sp, fp, #4
     9ec:	e8bd8800 	pop	{fp, pc}

000009f0 <fork>:
     9f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f4:	e1a04003 	mov	r4, r3
     9f8:	e1a03002 	mov	r3, r2
     9fc:	e1a02001 	mov	r2, r1
     a00:	e1a01000 	mov	r1, r0
     a04:	e3a00001 	mov	r0, #1
     a08:	ef000000 	svc	0x00000000
     a0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a10:	e12fff1e 	bx	lr

00000a14 <exit>:
     a14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a18:	e1a04003 	mov	r4, r3
     a1c:	e1a03002 	mov	r3, r2
     a20:	e1a02001 	mov	r2, r1
     a24:	e1a01000 	mov	r1, r0
     a28:	e3a00002 	mov	r0, #2
     a2c:	ef000000 	svc	0x00000000
     a30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a34:	e12fff1e 	bx	lr

00000a38 <wait>:
     a38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a3c:	e1a04003 	mov	r4, r3
     a40:	e1a03002 	mov	r3, r2
     a44:	e1a02001 	mov	r2, r1
     a48:	e1a01000 	mov	r1, r0
     a4c:	e3a00003 	mov	r0, #3
     a50:	ef000000 	svc	0x00000000
     a54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a58:	e12fff1e 	bx	lr

00000a5c <pipe>:
     a5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a60:	e1a04003 	mov	r4, r3
     a64:	e1a03002 	mov	r3, r2
     a68:	e1a02001 	mov	r2, r1
     a6c:	e1a01000 	mov	r1, r0
     a70:	e3a00004 	mov	r0, #4
     a74:	ef000000 	svc	0x00000000
     a78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a7c:	e12fff1e 	bx	lr

00000a80 <read>:
     a80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a84:	e1a04003 	mov	r4, r3
     a88:	e1a03002 	mov	r3, r2
     a8c:	e1a02001 	mov	r2, r1
     a90:	e1a01000 	mov	r1, r0
     a94:	e3a00005 	mov	r0, #5
     a98:	ef000000 	svc	0x00000000
     a9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aa0:	e12fff1e 	bx	lr

00000aa4 <write>:
     aa4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa8:	e1a04003 	mov	r4, r3
     aac:	e1a03002 	mov	r3, r2
     ab0:	e1a02001 	mov	r2, r1
     ab4:	e1a01000 	mov	r1, r0
     ab8:	e3a00010 	mov	r0, #16
     abc:	ef000000 	svc	0x00000000
     ac0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac4:	e12fff1e 	bx	lr

00000ac8 <close>:
     ac8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     acc:	e1a04003 	mov	r4, r3
     ad0:	e1a03002 	mov	r3, r2
     ad4:	e1a02001 	mov	r2, r1
     ad8:	e1a01000 	mov	r1, r0
     adc:	e3a00015 	mov	r0, #21
     ae0:	ef000000 	svc	0x00000000
     ae4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae8:	e12fff1e 	bx	lr

00000aec <kill>:
     aec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     af0:	e1a04003 	mov	r4, r3
     af4:	e1a03002 	mov	r3, r2
     af8:	e1a02001 	mov	r2, r1
     afc:	e1a01000 	mov	r1, r0
     b00:	e3a00006 	mov	r0, #6
     b04:	ef000000 	svc	0x00000000
     b08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b0c:	e12fff1e 	bx	lr

00000b10 <exec>:
     b10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b14:	e1a04003 	mov	r4, r3
     b18:	e1a03002 	mov	r3, r2
     b1c:	e1a02001 	mov	r2, r1
     b20:	e1a01000 	mov	r1, r0
     b24:	e3a00007 	mov	r0, #7
     b28:	ef000000 	svc	0x00000000
     b2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b30:	e12fff1e 	bx	lr

00000b34 <open>:
     b34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b38:	e1a04003 	mov	r4, r3
     b3c:	e1a03002 	mov	r3, r2
     b40:	e1a02001 	mov	r2, r1
     b44:	e1a01000 	mov	r1, r0
     b48:	e3a0000f 	mov	r0, #15
     b4c:	ef000000 	svc	0x00000000
     b50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b54:	e12fff1e 	bx	lr

00000b58 <mknod>:
     b58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b5c:	e1a04003 	mov	r4, r3
     b60:	e1a03002 	mov	r3, r2
     b64:	e1a02001 	mov	r2, r1
     b68:	e1a01000 	mov	r1, r0
     b6c:	e3a00011 	mov	r0, #17
     b70:	ef000000 	svc	0x00000000
     b74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b78:	e12fff1e 	bx	lr

00000b7c <unlink>:
     b7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b80:	e1a04003 	mov	r4, r3
     b84:	e1a03002 	mov	r3, r2
     b88:	e1a02001 	mov	r2, r1
     b8c:	e1a01000 	mov	r1, r0
     b90:	e3a00012 	mov	r0, #18
     b94:	ef000000 	svc	0x00000000
     b98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b9c:	e12fff1e 	bx	lr

00000ba0 <fstat>:
     ba0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba4:	e1a04003 	mov	r4, r3
     ba8:	e1a03002 	mov	r3, r2
     bac:	e1a02001 	mov	r2, r1
     bb0:	e1a01000 	mov	r1, r0
     bb4:	e3a00008 	mov	r0, #8
     bb8:	ef000000 	svc	0x00000000
     bbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc0:	e12fff1e 	bx	lr

00000bc4 <link>:
     bc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc8:	e1a04003 	mov	r4, r3
     bcc:	e1a03002 	mov	r3, r2
     bd0:	e1a02001 	mov	r2, r1
     bd4:	e1a01000 	mov	r1, r0
     bd8:	e3a00013 	mov	r0, #19
     bdc:	ef000000 	svc	0x00000000
     be0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be4:	e12fff1e 	bx	lr

00000be8 <mkdir>:
     be8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bec:	e1a04003 	mov	r4, r3
     bf0:	e1a03002 	mov	r3, r2
     bf4:	e1a02001 	mov	r2, r1
     bf8:	e1a01000 	mov	r1, r0
     bfc:	e3a00014 	mov	r0, #20
     c00:	ef000000 	svc	0x00000000
     c04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c08:	e12fff1e 	bx	lr

00000c0c <chdir>:
     c0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c10:	e1a04003 	mov	r4, r3
     c14:	e1a03002 	mov	r3, r2
     c18:	e1a02001 	mov	r2, r1
     c1c:	e1a01000 	mov	r1, r0
     c20:	e3a00009 	mov	r0, #9
     c24:	ef000000 	svc	0x00000000
     c28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c2c:	e12fff1e 	bx	lr

00000c30 <dup>:
     c30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c34:	e1a04003 	mov	r4, r3
     c38:	e1a03002 	mov	r3, r2
     c3c:	e1a02001 	mov	r2, r1
     c40:	e1a01000 	mov	r1, r0
     c44:	e3a0000a 	mov	r0, #10
     c48:	ef000000 	svc	0x00000000
     c4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c50:	e12fff1e 	bx	lr

00000c54 <getpid>:
     c54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c58:	e1a04003 	mov	r4, r3
     c5c:	e1a03002 	mov	r3, r2
     c60:	e1a02001 	mov	r2, r1
     c64:	e1a01000 	mov	r1, r0
     c68:	e3a0000b 	mov	r0, #11
     c6c:	ef000000 	svc	0x00000000
     c70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c74:	e12fff1e 	bx	lr

00000c78 <sbrk>:
     c78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c7c:	e1a04003 	mov	r4, r3
     c80:	e1a03002 	mov	r3, r2
     c84:	e1a02001 	mov	r2, r1
     c88:	e1a01000 	mov	r1, r0
     c8c:	e3a0000c 	mov	r0, #12
     c90:	ef000000 	svc	0x00000000
     c94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c98:	e12fff1e 	bx	lr

00000c9c <sleep>:
     c9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca0:	e1a04003 	mov	r4, r3
     ca4:	e1a03002 	mov	r3, r2
     ca8:	e1a02001 	mov	r2, r1
     cac:	e1a01000 	mov	r1, r0
     cb0:	e3a0000d 	mov	r0, #13
     cb4:	ef000000 	svc	0x00000000
     cb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cbc:	e12fff1e 	bx	lr

00000cc0 <uptime>:
     cc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc4:	e1a04003 	mov	r4, r3
     cc8:	e1a03002 	mov	r3, r2
     ccc:	e1a02001 	mov	r2, r1
     cd0:	e1a01000 	mov	r1, r0
     cd4:	e3a0000e 	mov	r0, #14
     cd8:	ef000000 	svc	0x00000000
     cdc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce0:	e12fff1e 	bx	lr

00000ce4 <getprocs>:
     ce4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce8:	e1a04003 	mov	r4, r3
     cec:	e1a03002 	mov	r3, r2
     cf0:	e1a02001 	mov	r2, r1
     cf4:	e1a01000 	mov	r1, r0
     cf8:	e3a00016 	mov	r0, #22
     cfc:	ef000000 	svc	0x00000000
     d00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d04:	e12fff1e 	bx	lr

00000d08 <settickets>:
     d08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d0c:	e1a04003 	mov	r4, r3
     d10:	e1a03002 	mov	r3, r2
     d14:	e1a02001 	mov	r2, r1
     d18:	e1a01000 	mov	r1, r0
     d1c:	e3a00017 	mov	r0, #23
     d20:	ef000000 	svc	0x00000000
     d24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d28:	e12fff1e 	bx	lr

00000d2c <srand>:
     d2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d30:	e1a04003 	mov	r4, r3
     d34:	e1a03002 	mov	r3, r2
     d38:	e1a02001 	mov	r2, r1
     d3c:	e1a01000 	mov	r1, r0
     d40:	e3a00018 	mov	r0, #24
     d44:	ef000000 	svc	0x00000000
     d48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d4c:	e12fff1e 	bx	lr

00000d50 <getpinfo>:
     d50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d54:	e1a04003 	mov	r4, r3
     d58:	e1a03002 	mov	r3, r2
     d5c:	e1a02001 	mov	r2, r1
     d60:	e1a01000 	mov	r1, r0
     d64:	e3a00019 	mov	r0, #25
     d68:	ef000000 	svc	0x00000000
     d6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d70:	e12fff1e 	bx	lr

00000d74 <dumppagetable>:
     d74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d78:	e1a04003 	mov	r4, r3
     d7c:	e1a03002 	mov	r3, r2
     d80:	e1a02001 	mov	r2, r1
     d84:	e1a01000 	mov	r1, r0
     d88:	e3a0001a 	mov	r0, #26
     d8c:	ef000000 	svc	0x00000000
     d90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d94:	e12fff1e 	bx	lr

00000d98 <thread_create>:
     d98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d9c:	e1a04003 	mov	r4, r3
     da0:	e1a03002 	mov	r3, r2
     da4:	e1a02001 	mov	r2, r1
     da8:	e1a01000 	mov	r1, r0
     dac:	e3a0001b 	mov	r0, #27
     db0:	ef000000 	svc	0x00000000
     db4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     db8:	e12fff1e 	bx	lr

00000dbc <thread_exit>:
     dbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dc0:	e1a04003 	mov	r4, r3
     dc4:	e1a03002 	mov	r3, r2
     dc8:	e1a02001 	mov	r2, r1
     dcc:	e1a01000 	mov	r1, r0
     dd0:	e3a0001c 	mov	r0, #28
     dd4:	ef000000 	svc	0x00000000
     dd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ddc:	e12fff1e 	bx	lr

00000de0 <thread_join>:
     de0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     de4:	e1a04003 	mov	r4, r3
     de8:	e1a03002 	mov	r3, r2
     dec:	e1a02001 	mov	r2, r1
     df0:	e1a01000 	mov	r1, r0
     df4:	e3a0001d 	mov	r0, #29
     df8:	ef000000 	svc	0x00000000
     dfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e00:	e12fff1e 	bx	lr

00000e04 <waitpid>:
     e04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e08:	e1a04003 	mov	r4, r3
     e0c:	e1a03002 	mov	r3, r2
     e10:	e1a02001 	mov	r2, r1
     e14:	e1a01000 	mov	r1, r0
     e18:	e3a0001e 	mov	r0, #30
     e1c:	ef000000 	svc	0x00000000
     e20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e24:	e12fff1e 	bx	lr

00000e28 <barrier_init>:
     e28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e2c:	e1a04003 	mov	r4, r3
     e30:	e1a03002 	mov	r3, r2
     e34:	e1a02001 	mov	r2, r1
     e38:	e1a01000 	mov	r1, r0
     e3c:	e3a0001f 	mov	r0, #31
     e40:	ef000000 	svc	0x00000000
     e44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e48:	e12fff1e 	bx	lr

00000e4c <barrier_check>:
     e4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e50:	e1a04003 	mov	r4, r3
     e54:	e1a03002 	mov	r3, r2
     e58:	e1a02001 	mov	r2, r1
     e5c:	e1a01000 	mov	r1, r0
     e60:	e3a00020 	mov	r0, #32
     e64:	ef000000 	svc	0x00000000
     e68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e6c:	e12fff1e 	bx	lr

00000e70 <sleepChan>:
     e70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e74:	e1a04003 	mov	r4, r3
     e78:	e1a03002 	mov	r3, r2
     e7c:	e1a02001 	mov	r2, r1
     e80:	e1a01000 	mov	r1, r0
     e84:	e3a00024 	mov	r0, #36	@ 0x24
     e88:	ef000000 	svc	0x00000000
     e8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e90:	e12fff1e 	bx	lr

00000e94 <getChannel>:
     e94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e98:	e1a04003 	mov	r4, r3
     e9c:	e1a03002 	mov	r3, r2
     ea0:	e1a02001 	mov	r2, r1
     ea4:	e1a01000 	mov	r1, r0
     ea8:	e3a00025 	mov	r0, #37	@ 0x25
     eac:	ef000000 	svc	0x00000000
     eb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eb4:	e12fff1e 	bx	lr

00000eb8 <sigChan>:
     eb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ebc:	e1a04003 	mov	r4, r3
     ec0:	e1a03002 	mov	r3, r2
     ec4:	e1a02001 	mov	r2, r1
     ec8:	e1a01000 	mov	r1, r0
     ecc:	e3a00026 	mov	r0, #38	@ 0x26
     ed0:	ef000000 	svc	0x00000000
     ed4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ed8:	e12fff1e 	bx	lr

00000edc <sigOneChan>:
     edc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ee0:	e1a04003 	mov	r4, r3
     ee4:	e1a03002 	mov	r3, r2
     ee8:	e1a02001 	mov	r2, r1
     eec:	e1a01000 	mov	r1, r0
     ef0:	e3a00027 	mov	r0, #39	@ 0x27
     ef4:	ef000000 	svc	0x00000000
     ef8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     efc:	e12fff1e 	bx	lr

00000f00 <putc>:
     f00:	e92d4800 	push	{fp, lr}
     f04:	e28db004 	add	fp, sp, #4
     f08:	e24dd008 	sub	sp, sp, #8
     f0c:	e50b0008 	str	r0, [fp, #-8]
     f10:	e1a03001 	mov	r3, r1
     f14:	e54b3009 	strb	r3, [fp, #-9]
     f18:	e24b3009 	sub	r3, fp, #9
     f1c:	e3a02001 	mov	r2, #1
     f20:	e1a01003 	mov	r1, r3
     f24:	e51b0008 	ldr	r0, [fp, #-8]
     f28:	ebfffedd 	bl	aa4 <write>
     f2c:	e1a00000 	nop			@ (mov r0, r0)
     f30:	e24bd004 	sub	sp, fp, #4
     f34:	e8bd8800 	pop	{fp, pc}

00000f38 <printint>:
     f38:	e92d4800 	push	{fp, lr}
     f3c:	e28db004 	add	fp, sp, #4
     f40:	e24dd030 	sub	sp, sp, #48	@ 0x30
     f44:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     f48:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     f4c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     f50:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     f54:	e3a03000 	mov	r3, #0
     f58:	e50b300c 	str	r3, [fp, #-12]
     f5c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     f60:	e3530000 	cmp	r3, #0
     f64:	0a000008 	beq	f8c <printint+0x54>
     f68:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f6c:	e3530000 	cmp	r3, #0
     f70:	aa000005 	bge	f8c <printint+0x54>
     f74:	e3a03001 	mov	r3, #1
     f78:	e50b300c 	str	r3, [fp, #-12]
     f7c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f80:	e2633000 	rsb	r3, r3, #0
     f84:	e50b3010 	str	r3, [fp, #-16]
     f88:	ea000001 	b	f94 <printint+0x5c>
     f8c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f90:	e50b3010 	str	r3, [fp, #-16]
     f94:	e3a03000 	mov	r3, #0
     f98:	e50b3008 	str	r3, [fp, #-8]
     f9c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     fa0:	e51b3010 	ldr	r3, [fp, #-16]
     fa4:	e1a01002 	mov	r1, r2
     fa8:	e1a00003 	mov	r0, r3
     fac:	eb0001d5 	bl	1708 <__aeabi_uidivmod>
     fb0:	e1a03001 	mov	r3, r1
     fb4:	e1a01003 	mov	r1, r3
     fb8:	e51b3008 	ldr	r3, [fp, #-8]
     fbc:	e2832001 	add	r2, r3, #1
     fc0:	e50b2008 	str	r2, [fp, #-8]
     fc4:	e59f20a0 	ldr	r2, [pc, #160]	@ 106c <printint+0x134>
     fc8:	e7d22001 	ldrb	r2, [r2, r1]
     fcc:	e2433004 	sub	r3, r3, #4
     fd0:	e083300b 	add	r3, r3, fp
     fd4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     fd8:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     fdc:	e1a01003 	mov	r1, r3
     fe0:	e51b0010 	ldr	r0, [fp, #-16]
     fe4:	eb00018a 	bl	1614 <__udivsi3>
     fe8:	e1a03000 	mov	r3, r0
     fec:	e50b3010 	str	r3, [fp, #-16]
     ff0:	e51b3010 	ldr	r3, [fp, #-16]
     ff4:	e3530000 	cmp	r3, #0
     ff8:	1affffe7 	bne	f9c <printint+0x64>
     ffc:	e51b300c 	ldr	r3, [fp, #-12]
    1000:	e3530000 	cmp	r3, #0
    1004:	0a00000e 	beq	1044 <printint+0x10c>
    1008:	e51b3008 	ldr	r3, [fp, #-8]
    100c:	e2832001 	add	r2, r3, #1
    1010:	e50b2008 	str	r2, [fp, #-8]
    1014:	e2433004 	sub	r3, r3, #4
    1018:	e083300b 	add	r3, r3, fp
    101c:	e3a0202d 	mov	r2, #45	@ 0x2d
    1020:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1024:	ea000006 	b	1044 <printint+0x10c>
    1028:	e24b2020 	sub	r2, fp, #32
    102c:	e51b3008 	ldr	r3, [fp, #-8]
    1030:	e0823003 	add	r3, r2, r3
    1034:	e5d33000 	ldrb	r3, [r3]
    1038:	e1a01003 	mov	r1, r3
    103c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1040:	ebffffae 	bl	f00 <putc>
    1044:	e51b3008 	ldr	r3, [fp, #-8]
    1048:	e2433001 	sub	r3, r3, #1
    104c:	e50b3008 	str	r3, [fp, #-8]
    1050:	e51b3008 	ldr	r3, [fp, #-8]
    1054:	e3530000 	cmp	r3, #0
    1058:	aafffff2 	bge	1028 <printint+0xf0>
    105c:	e1a00000 	nop			@ (mov r0, r0)
    1060:	e1a00000 	nop			@ (mov r0, r0)
    1064:	e24bd004 	sub	sp, fp, #4
    1068:	e8bd8800 	pop	{fp, pc}
    106c:	000017d4 	.word	0x000017d4

00001070 <printf>:
    1070:	e92d000e 	push	{r1, r2, r3}
    1074:	e92d4800 	push	{fp, lr}
    1078:	e28db004 	add	fp, sp, #4
    107c:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1080:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1084:	e3a03000 	mov	r3, #0
    1088:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    108c:	e28b3008 	add	r3, fp, #8
    1090:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1094:	e3a03000 	mov	r3, #0
    1098:	e50b3010 	str	r3, [fp, #-16]
    109c:	ea000074 	b	1274 <printf+0x204>
    10a0:	e59b2004 	ldr	r2, [fp, #4]
    10a4:	e51b3010 	ldr	r3, [fp, #-16]
    10a8:	e0823003 	add	r3, r2, r3
    10ac:	e5d33000 	ldrb	r3, [r3]
    10b0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    10b4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    10b8:	e3530000 	cmp	r3, #0
    10bc:	1a00000b 	bne	10f0 <printf+0x80>
    10c0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10c4:	e3530025 	cmp	r3, #37	@ 0x25
    10c8:	1a000002 	bne	10d8 <printf+0x68>
    10cc:	e3a03025 	mov	r3, #37	@ 0x25
    10d0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    10d4:	ea000063 	b	1268 <printf+0x1f8>
    10d8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10dc:	e6ef3073 	uxtb	r3, r3
    10e0:	e1a01003 	mov	r1, r3
    10e4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10e8:	ebffff84 	bl	f00 <putc>
    10ec:	ea00005d 	b	1268 <printf+0x1f8>
    10f0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    10f4:	e3530025 	cmp	r3, #37	@ 0x25
    10f8:	1a00005a 	bne	1268 <printf+0x1f8>
    10fc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1100:	e3530064 	cmp	r3, #100	@ 0x64
    1104:	1a00000a 	bne	1134 <printf+0xc4>
    1108:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    110c:	e5933000 	ldr	r3, [r3]
    1110:	e1a01003 	mov	r1, r3
    1114:	e3a03001 	mov	r3, #1
    1118:	e3a0200a 	mov	r2, #10
    111c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1120:	ebffff84 	bl	f38 <printint>
    1124:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1128:	e2833004 	add	r3, r3, #4
    112c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1130:	ea00004a 	b	1260 <printf+0x1f0>
    1134:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1138:	e3530078 	cmp	r3, #120	@ 0x78
    113c:	0a000002 	beq	114c <printf+0xdc>
    1140:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1144:	e3530070 	cmp	r3, #112	@ 0x70
    1148:	1a00000a 	bne	1178 <printf+0x108>
    114c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1150:	e5933000 	ldr	r3, [r3]
    1154:	e1a01003 	mov	r1, r3
    1158:	e3a03000 	mov	r3, #0
    115c:	e3a02010 	mov	r2, #16
    1160:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1164:	ebffff73 	bl	f38 <printint>
    1168:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    116c:	e2833004 	add	r3, r3, #4
    1170:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1174:	ea000039 	b	1260 <printf+0x1f0>
    1178:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    117c:	e3530073 	cmp	r3, #115	@ 0x73
    1180:	1a000018 	bne	11e8 <printf+0x178>
    1184:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1188:	e5933000 	ldr	r3, [r3]
    118c:	e50b300c 	str	r3, [fp, #-12]
    1190:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1194:	e2833004 	add	r3, r3, #4
    1198:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    119c:	e51b300c 	ldr	r3, [fp, #-12]
    11a0:	e3530000 	cmp	r3, #0
    11a4:	1a00000a 	bne	11d4 <printf+0x164>
    11a8:	e59f30f4 	ldr	r3, [pc, #244]	@ 12a4 <printf+0x234>
    11ac:	e50b300c 	str	r3, [fp, #-12]
    11b0:	ea000007 	b	11d4 <printf+0x164>
    11b4:	e51b300c 	ldr	r3, [fp, #-12]
    11b8:	e5d33000 	ldrb	r3, [r3]
    11bc:	e1a01003 	mov	r1, r3
    11c0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11c4:	ebffff4d 	bl	f00 <putc>
    11c8:	e51b300c 	ldr	r3, [fp, #-12]
    11cc:	e2833001 	add	r3, r3, #1
    11d0:	e50b300c 	str	r3, [fp, #-12]
    11d4:	e51b300c 	ldr	r3, [fp, #-12]
    11d8:	e5d33000 	ldrb	r3, [r3]
    11dc:	e3530000 	cmp	r3, #0
    11e0:	1afffff3 	bne	11b4 <printf+0x144>
    11e4:	ea00001d 	b	1260 <printf+0x1f0>
    11e8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11ec:	e3530063 	cmp	r3, #99	@ 0x63
    11f0:	1a000009 	bne	121c <printf+0x1ac>
    11f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11f8:	e5933000 	ldr	r3, [r3]
    11fc:	e6ef3073 	uxtb	r3, r3
    1200:	e1a01003 	mov	r1, r3
    1204:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1208:	ebffff3c 	bl	f00 <putc>
    120c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1210:	e2833004 	add	r3, r3, #4
    1214:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1218:	ea000010 	b	1260 <printf+0x1f0>
    121c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1220:	e3530025 	cmp	r3, #37	@ 0x25
    1224:	1a000005 	bne	1240 <printf+0x1d0>
    1228:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    122c:	e6ef3073 	uxtb	r3, r3
    1230:	e1a01003 	mov	r1, r3
    1234:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1238:	ebffff30 	bl	f00 <putc>
    123c:	ea000007 	b	1260 <printf+0x1f0>
    1240:	e3a01025 	mov	r1, #37	@ 0x25
    1244:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1248:	ebffff2c 	bl	f00 <putc>
    124c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1250:	e6ef3073 	uxtb	r3, r3
    1254:	e1a01003 	mov	r1, r3
    1258:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    125c:	ebffff27 	bl	f00 <putc>
    1260:	e3a03000 	mov	r3, #0
    1264:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1268:	e51b3010 	ldr	r3, [fp, #-16]
    126c:	e2833001 	add	r3, r3, #1
    1270:	e50b3010 	str	r3, [fp, #-16]
    1274:	e59b2004 	ldr	r2, [fp, #4]
    1278:	e51b3010 	ldr	r3, [fp, #-16]
    127c:	e0823003 	add	r3, r2, r3
    1280:	e5d33000 	ldrb	r3, [r3]
    1284:	e3530000 	cmp	r3, #0
    1288:	1affff84 	bne	10a0 <printf+0x30>
    128c:	e1a00000 	nop			@ (mov r0, r0)
    1290:	e1a00000 	nop			@ (mov r0, r0)
    1294:	e24bd004 	sub	sp, fp, #4
    1298:	e8bd4800 	pop	{fp, lr}
    129c:	e28dd00c 	add	sp, sp, #12
    12a0:	e12fff1e 	bx	lr
    12a4:	000017cc 	.word	0x000017cc

000012a8 <free>:
    12a8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    12ac:	e28db000 	add	fp, sp, #0
    12b0:	e24dd014 	sub	sp, sp, #20
    12b4:	e50b0010 	str	r0, [fp, #-16]
    12b8:	e51b3010 	ldr	r3, [fp, #-16]
    12bc:	e2433008 	sub	r3, r3, #8
    12c0:	e50b300c 	str	r3, [fp, #-12]
    12c4:	e59f3154 	ldr	r3, [pc, #340]	@ 1420 <free+0x178>
    12c8:	e5933000 	ldr	r3, [r3]
    12cc:	e50b3008 	str	r3, [fp, #-8]
    12d0:	ea000010 	b	1318 <free+0x70>
    12d4:	e51b3008 	ldr	r3, [fp, #-8]
    12d8:	e5933000 	ldr	r3, [r3]
    12dc:	e51b2008 	ldr	r2, [fp, #-8]
    12e0:	e1520003 	cmp	r2, r3
    12e4:	3a000008 	bcc	130c <free+0x64>
    12e8:	e51b200c 	ldr	r2, [fp, #-12]
    12ec:	e51b3008 	ldr	r3, [fp, #-8]
    12f0:	e1520003 	cmp	r2, r3
    12f4:	8a000010 	bhi	133c <free+0x94>
    12f8:	e51b3008 	ldr	r3, [fp, #-8]
    12fc:	e5933000 	ldr	r3, [r3]
    1300:	e51b200c 	ldr	r2, [fp, #-12]
    1304:	e1520003 	cmp	r2, r3
    1308:	3a00000b 	bcc	133c <free+0x94>
    130c:	e51b3008 	ldr	r3, [fp, #-8]
    1310:	e5933000 	ldr	r3, [r3]
    1314:	e50b3008 	str	r3, [fp, #-8]
    1318:	e51b200c 	ldr	r2, [fp, #-12]
    131c:	e51b3008 	ldr	r3, [fp, #-8]
    1320:	e1520003 	cmp	r2, r3
    1324:	9affffea 	bls	12d4 <free+0x2c>
    1328:	e51b3008 	ldr	r3, [fp, #-8]
    132c:	e5933000 	ldr	r3, [r3]
    1330:	e51b200c 	ldr	r2, [fp, #-12]
    1334:	e1520003 	cmp	r2, r3
    1338:	2affffe5 	bcs	12d4 <free+0x2c>
    133c:	e51b300c 	ldr	r3, [fp, #-12]
    1340:	e5933004 	ldr	r3, [r3, #4]
    1344:	e1a03183 	lsl	r3, r3, #3
    1348:	e51b200c 	ldr	r2, [fp, #-12]
    134c:	e0822003 	add	r2, r2, r3
    1350:	e51b3008 	ldr	r3, [fp, #-8]
    1354:	e5933000 	ldr	r3, [r3]
    1358:	e1520003 	cmp	r2, r3
    135c:	1a00000d 	bne	1398 <free+0xf0>
    1360:	e51b300c 	ldr	r3, [fp, #-12]
    1364:	e5932004 	ldr	r2, [r3, #4]
    1368:	e51b3008 	ldr	r3, [fp, #-8]
    136c:	e5933000 	ldr	r3, [r3]
    1370:	e5933004 	ldr	r3, [r3, #4]
    1374:	e0822003 	add	r2, r2, r3
    1378:	e51b300c 	ldr	r3, [fp, #-12]
    137c:	e5832004 	str	r2, [r3, #4]
    1380:	e51b3008 	ldr	r3, [fp, #-8]
    1384:	e5933000 	ldr	r3, [r3]
    1388:	e5932000 	ldr	r2, [r3]
    138c:	e51b300c 	ldr	r3, [fp, #-12]
    1390:	e5832000 	str	r2, [r3]
    1394:	ea000003 	b	13a8 <free+0x100>
    1398:	e51b3008 	ldr	r3, [fp, #-8]
    139c:	e5932000 	ldr	r2, [r3]
    13a0:	e51b300c 	ldr	r3, [fp, #-12]
    13a4:	e5832000 	str	r2, [r3]
    13a8:	e51b3008 	ldr	r3, [fp, #-8]
    13ac:	e5933004 	ldr	r3, [r3, #4]
    13b0:	e1a03183 	lsl	r3, r3, #3
    13b4:	e51b2008 	ldr	r2, [fp, #-8]
    13b8:	e0823003 	add	r3, r2, r3
    13bc:	e51b200c 	ldr	r2, [fp, #-12]
    13c0:	e1520003 	cmp	r2, r3
    13c4:	1a00000b 	bne	13f8 <free+0x150>
    13c8:	e51b3008 	ldr	r3, [fp, #-8]
    13cc:	e5932004 	ldr	r2, [r3, #4]
    13d0:	e51b300c 	ldr	r3, [fp, #-12]
    13d4:	e5933004 	ldr	r3, [r3, #4]
    13d8:	e0822003 	add	r2, r2, r3
    13dc:	e51b3008 	ldr	r3, [fp, #-8]
    13e0:	e5832004 	str	r2, [r3, #4]
    13e4:	e51b300c 	ldr	r3, [fp, #-12]
    13e8:	e5932000 	ldr	r2, [r3]
    13ec:	e51b3008 	ldr	r3, [fp, #-8]
    13f0:	e5832000 	str	r2, [r3]
    13f4:	ea000002 	b	1404 <free+0x15c>
    13f8:	e51b3008 	ldr	r3, [fp, #-8]
    13fc:	e51b200c 	ldr	r2, [fp, #-12]
    1400:	e5832000 	str	r2, [r3]
    1404:	e59f2014 	ldr	r2, [pc, #20]	@ 1420 <free+0x178>
    1408:	e51b3008 	ldr	r3, [fp, #-8]
    140c:	e5823000 	str	r3, [r2]
    1410:	e1a00000 	nop			@ (mov r0, r0)
    1414:	e28bd000 	add	sp, fp, #0
    1418:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    141c:	e12fff1e 	bx	lr
    1420:	00001804 	.word	0x00001804

00001424 <morecore>:
    1424:	e92d4800 	push	{fp, lr}
    1428:	e28db004 	add	fp, sp, #4
    142c:	e24dd010 	sub	sp, sp, #16
    1430:	e50b0010 	str	r0, [fp, #-16]
    1434:	e51b3010 	ldr	r3, [fp, #-16]
    1438:	e3530a01 	cmp	r3, #4096	@ 0x1000
    143c:	2a000001 	bcs	1448 <morecore+0x24>
    1440:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1444:	e50b3010 	str	r3, [fp, #-16]
    1448:	e51b3010 	ldr	r3, [fp, #-16]
    144c:	e1a03183 	lsl	r3, r3, #3
    1450:	e1a00003 	mov	r0, r3
    1454:	ebfffe07 	bl	c78 <sbrk>
    1458:	e50b0008 	str	r0, [fp, #-8]
    145c:	e51b3008 	ldr	r3, [fp, #-8]
    1460:	e3730001 	cmn	r3, #1
    1464:	1a000001 	bne	1470 <morecore+0x4c>
    1468:	e3a03000 	mov	r3, #0
    146c:	ea00000a 	b	149c <morecore+0x78>
    1470:	e51b3008 	ldr	r3, [fp, #-8]
    1474:	e50b300c 	str	r3, [fp, #-12]
    1478:	e51b300c 	ldr	r3, [fp, #-12]
    147c:	e51b2010 	ldr	r2, [fp, #-16]
    1480:	e5832004 	str	r2, [r3, #4]
    1484:	e51b300c 	ldr	r3, [fp, #-12]
    1488:	e2833008 	add	r3, r3, #8
    148c:	e1a00003 	mov	r0, r3
    1490:	ebffff84 	bl	12a8 <free>
    1494:	e59f300c 	ldr	r3, [pc, #12]	@ 14a8 <morecore+0x84>
    1498:	e5933000 	ldr	r3, [r3]
    149c:	e1a00003 	mov	r0, r3
    14a0:	e24bd004 	sub	sp, fp, #4
    14a4:	e8bd8800 	pop	{fp, pc}
    14a8:	00001804 	.word	0x00001804

000014ac <malloc>:
    14ac:	e92d4800 	push	{fp, lr}
    14b0:	e28db004 	add	fp, sp, #4
    14b4:	e24dd018 	sub	sp, sp, #24
    14b8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    14bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    14c0:	e2833007 	add	r3, r3, #7
    14c4:	e1a031a3 	lsr	r3, r3, #3
    14c8:	e2833001 	add	r3, r3, #1
    14cc:	e50b3010 	str	r3, [fp, #-16]
    14d0:	e59f3134 	ldr	r3, [pc, #308]	@ 160c <malloc+0x160>
    14d4:	e5933000 	ldr	r3, [r3]
    14d8:	e50b300c 	str	r3, [fp, #-12]
    14dc:	e51b300c 	ldr	r3, [fp, #-12]
    14e0:	e3530000 	cmp	r3, #0
    14e4:	1a00000b 	bne	1518 <malloc+0x6c>
    14e8:	e59f3120 	ldr	r3, [pc, #288]	@ 1610 <malloc+0x164>
    14ec:	e50b300c 	str	r3, [fp, #-12]
    14f0:	e59f2114 	ldr	r2, [pc, #276]	@ 160c <malloc+0x160>
    14f4:	e51b300c 	ldr	r3, [fp, #-12]
    14f8:	e5823000 	str	r3, [r2]
    14fc:	e59f3108 	ldr	r3, [pc, #264]	@ 160c <malloc+0x160>
    1500:	e5933000 	ldr	r3, [r3]
    1504:	e59f2104 	ldr	r2, [pc, #260]	@ 1610 <malloc+0x164>
    1508:	e5823000 	str	r3, [r2]
    150c:	e59f30fc 	ldr	r3, [pc, #252]	@ 1610 <malloc+0x164>
    1510:	e3a02000 	mov	r2, #0
    1514:	e5832004 	str	r2, [r3, #4]
    1518:	e51b300c 	ldr	r3, [fp, #-12]
    151c:	e5933000 	ldr	r3, [r3]
    1520:	e50b3008 	str	r3, [fp, #-8]
    1524:	e51b3008 	ldr	r3, [fp, #-8]
    1528:	e5933004 	ldr	r3, [r3, #4]
    152c:	e51b2010 	ldr	r2, [fp, #-16]
    1530:	e1520003 	cmp	r2, r3
    1534:	8a00001e 	bhi	15b4 <malloc+0x108>
    1538:	e51b3008 	ldr	r3, [fp, #-8]
    153c:	e5933004 	ldr	r3, [r3, #4]
    1540:	e51b2010 	ldr	r2, [fp, #-16]
    1544:	e1520003 	cmp	r2, r3
    1548:	1a000004 	bne	1560 <malloc+0xb4>
    154c:	e51b3008 	ldr	r3, [fp, #-8]
    1550:	e5932000 	ldr	r2, [r3]
    1554:	e51b300c 	ldr	r3, [fp, #-12]
    1558:	e5832000 	str	r2, [r3]
    155c:	ea00000e 	b	159c <malloc+0xf0>
    1560:	e51b3008 	ldr	r3, [fp, #-8]
    1564:	e5932004 	ldr	r2, [r3, #4]
    1568:	e51b3010 	ldr	r3, [fp, #-16]
    156c:	e0422003 	sub	r2, r2, r3
    1570:	e51b3008 	ldr	r3, [fp, #-8]
    1574:	e5832004 	str	r2, [r3, #4]
    1578:	e51b3008 	ldr	r3, [fp, #-8]
    157c:	e5933004 	ldr	r3, [r3, #4]
    1580:	e1a03183 	lsl	r3, r3, #3
    1584:	e51b2008 	ldr	r2, [fp, #-8]
    1588:	e0823003 	add	r3, r2, r3
    158c:	e50b3008 	str	r3, [fp, #-8]
    1590:	e51b3008 	ldr	r3, [fp, #-8]
    1594:	e51b2010 	ldr	r2, [fp, #-16]
    1598:	e5832004 	str	r2, [r3, #4]
    159c:	e59f2068 	ldr	r2, [pc, #104]	@ 160c <malloc+0x160>
    15a0:	e51b300c 	ldr	r3, [fp, #-12]
    15a4:	e5823000 	str	r3, [r2]
    15a8:	e51b3008 	ldr	r3, [fp, #-8]
    15ac:	e2833008 	add	r3, r3, #8
    15b0:	ea000012 	b	1600 <malloc+0x154>
    15b4:	e59f3050 	ldr	r3, [pc, #80]	@ 160c <malloc+0x160>
    15b8:	e5933000 	ldr	r3, [r3]
    15bc:	e51b2008 	ldr	r2, [fp, #-8]
    15c0:	e1520003 	cmp	r2, r3
    15c4:	1a000007 	bne	15e8 <malloc+0x13c>
    15c8:	e51b0010 	ldr	r0, [fp, #-16]
    15cc:	ebffff94 	bl	1424 <morecore>
    15d0:	e50b0008 	str	r0, [fp, #-8]
    15d4:	e51b3008 	ldr	r3, [fp, #-8]
    15d8:	e3530000 	cmp	r3, #0
    15dc:	1a000001 	bne	15e8 <malloc+0x13c>
    15e0:	e3a03000 	mov	r3, #0
    15e4:	ea000005 	b	1600 <malloc+0x154>
    15e8:	e51b3008 	ldr	r3, [fp, #-8]
    15ec:	e50b300c 	str	r3, [fp, #-12]
    15f0:	e51b3008 	ldr	r3, [fp, #-8]
    15f4:	e5933000 	ldr	r3, [r3]
    15f8:	e50b3008 	str	r3, [fp, #-8]
    15fc:	eaffffc8 	b	1524 <malloc+0x78>
    1600:	e1a00003 	mov	r0, r3
    1604:	e24bd004 	sub	sp, fp, #4
    1608:	e8bd8800 	pop	{fp, pc}
    160c:	00001804 	.word	0x00001804
    1610:	000017fc 	.word	0x000017fc

00001614 <__udivsi3>:
    1614:	e2512001 	subs	r2, r1, #1
    1618:	012fff1e 	bxeq	lr
    161c:	3a000036 	bcc	16fc <__udivsi3+0xe8>
    1620:	e1500001 	cmp	r0, r1
    1624:	9a000022 	bls	16b4 <__udivsi3+0xa0>
    1628:	e1110002 	tst	r1, r2
    162c:	0a000023 	beq	16c0 <__udivsi3+0xac>
    1630:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1634:	01a01181 	lsleq	r1, r1, #3
    1638:	03a03008 	moveq	r3, #8
    163c:	13a03001 	movne	r3, #1
    1640:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1644:	31510000 	cmpcc	r1, r0
    1648:	31a01201 	lslcc	r1, r1, #4
    164c:	31a03203 	lslcc	r3, r3, #4
    1650:	3afffffa 	bcc	1640 <__udivsi3+0x2c>
    1654:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1658:	31510000 	cmpcc	r1, r0
    165c:	31a01081 	lslcc	r1, r1, #1
    1660:	31a03083 	lslcc	r3, r3, #1
    1664:	3afffffa 	bcc	1654 <__udivsi3+0x40>
    1668:	e3a02000 	mov	r2, #0
    166c:	e1500001 	cmp	r0, r1
    1670:	20400001 	subcs	r0, r0, r1
    1674:	21822003 	orrcs	r2, r2, r3
    1678:	e15000a1 	cmp	r0, r1, lsr #1
    167c:	204000a1 	subcs	r0, r0, r1, lsr #1
    1680:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1684:	e1500121 	cmp	r0, r1, lsr #2
    1688:	20400121 	subcs	r0, r0, r1, lsr #2
    168c:	21822123 	orrcs	r2, r2, r3, lsr #2
    1690:	e15001a1 	cmp	r0, r1, lsr #3
    1694:	204001a1 	subcs	r0, r0, r1, lsr #3
    1698:	218221a3 	orrcs	r2, r2, r3, lsr #3
    169c:	e3500000 	cmp	r0, #0
    16a0:	11b03223 	lsrsne	r3, r3, #4
    16a4:	11a01221 	lsrne	r1, r1, #4
    16a8:	1affffef 	bne	166c <__udivsi3+0x58>
    16ac:	e1a00002 	mov	r0, r2
    16b0:	e12fff1e 	bx	lr
    16b4:	03a00001 	moveq	r0, #1
    16b8:	13a00000 	movne	r0, #0
    16bc:	e12fff1e 	bx	lr
    16c0:	e3510801 	cmp	r1, #65536	@ 0x10000
    16c4:	21a01821 	lsrcs	r1, r1, #16
    16c8:	23a02010 	movcs	r2, #16
    16cc:	33a02000 	movcc	r2, #0
    16d0:	e3510c01 	cmp	r1, #256	@ 0x100
    16d4:	21a01421 	lsrcs	r1, r1, #8
    16d8:	22822008 	addcs	r2, r2, #8
    16dc:	e3510010 	cmp	r1, #16
    16e0:	21a01221 	lsrcs	r1, r1, #4
    16e4:	22822004 	addcs	r2, r2, #4
    16e8:	e3510004 	cmp	r1, #4
    16ec:	82822003 	addhi	r2, r2, #3
    16f0:	908220a1 	addls	r2, r2, r1, lsr #1
    16f4:	e1a00230 	lsr	r0, r0, r2
    16f8:	e12fff1e 	bx	lr
    16fc:	e3500000 	cmp	r0, #0
    1700:	13e00000 	mvnne	r0, #0
    1704:	ea000007 	b	1728 <__aeabi_idiv0>

00001708 <__aeabi_uidivmod>:
    1708:	e3510000 	cmp	r1, #0
    170c:	0afffffa 	beq	16fc <__udivsi3+0xe8>
    1710:	e92d4003 	push	{r0, r1, lr}
    1714:	ebffffbe 	bl	1614 <__udivsi3>
    1718:	e8bd4006 	pop	{r1, r2, lr}
    171c:	e0030092 	mul	r3, r2, r0
    1720:	e0411003 	sub	r1, r1, r3
    1724:	e12fff1e 	bx	lr

00001728 <__aeabi_idiv0>:
    1728:	e12fff1e 	bx	lr
