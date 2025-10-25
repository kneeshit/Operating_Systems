
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
      20:	eb000409 	bl	104c <printf>
      24:	e51b3008 	ldr	r3, [fp, #-8]
      28:	e5933004 	ldr	r3, [r3, #4]
      2c:	e1a00003 	mov	r0, r3
      30:	eb0001a6 	bl	6d0 <acquireLock>
      34:	e59f105c 	ldr	r1, [pc, #92]	@ 98 <thread2+0x98>
      38:	e3a00001 	mov	r0, #1
      3c:	eb000402 	bl	104c <printf>
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
      6c:	eb0001e8 	bl	814 <broadcast>
      70:	e51b3008 	ldr	r3, [fp, #-8]
      74:	e5933004 	ldr	r3, [r3, #4]
      78:	e1a00003 	mov	r0, r3
      7c:	eb0001a7 	bl	720 <releaseLock>
      80:	eb000344 	bl	d98 <thread_exit>
      84:	e3a03000 	mov	r3, #0
      88:	e1a00003 	mov	r0, r3
      8c:	e24bd004 	sub	sp, fp, #4
      90:	e8bd8800 	pop	{fp, pc}
      94:	00001708 	.word	0x00001708
      98:	0000171c 	.word	0x0000171c

0000009c <main>:
      9c:	e92d4800 	push	{fp, lr}
      a0:	e28db004 	add	fp, sp, #4
      a4:	e24dd028 	sub	sp, sp, #40	@ 0x28
      a8:	e59f10a8 	ldr	r1, [pc, #168]	@ 158 <main+0xbc>
      ac:	e3a00001 	mov	r0, #1
      b0:	eb0003e5 	bl	104c <printf>
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
      e8:	eb0001a2 	bl	778 <initiateCondVar>
      ec:	e24b300c 	sub	r3, fp, #12
      f0:	e1a00003 	mov	r0, r3
      f4:	eb000175 	bl	6d0 <acquireLock>
      f8:	e24b2024 	sub	r2, fp, #36	@ 0x24
      fc:	e24b3028 	sub	r3, fp, #40	@ 0x28
     100:	e59f1054 	ldr	r1, [pc, #84]	@ 15c <main+0xc0>
     104:	e1a00003 	mov	r0, r3
     108:	eb000319 	bl	d74 <thread_create>
     10c:	e3a000c8 	mov	r0, #200	@ 0xc8
     110:	eb0002d8 	bl	c78 <sleep>
     114:	e24b200c 	sub	r2, fp, #12
     118:	e24b3014 	sub	r3, fp, #20
     11c:	e1a01002 	mov	r1, r2
     120:	e1a00003 	mov	r0, r3
     124:	eb0001a1 	bl	7b0 <condWait>
     128:	e24b300c 	sub	r3, fp, #12
     12c:	e1a00003 	mov	r0, r3
     130:	eb00017a 	bl	720 <releaseLock>
     134:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     138:	e1a00003 	mov	r0, r3
     13c:	eb00031e 	bl	dbc <thread_join>
     140:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     144:	e1a02003 	mov	r2, r3
     148:	e59f1010 	ldr	r1, [pc, #16]	@ 160 <main+0xc4>
     14c:	e3a00001 	mov	r0, #1
     150:	eb0003bd 	bl	104c <printf>
     154:	eb000225 	bl	9f0 <exit>
     158:	00001738 	.word	0x00001738
     15c:	00000000 	.word	0x00000000
     160:	00001748 	.word	0x00001748

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
     458:	eb00017f 	bl	a5c <read>
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
     500:	eb000182 	bl	b10 <open>
     504:	e50b0008 	str	r0, [fp, #-8]
     508:	e51b3008 	ldr	r3, [fp, #-8]
     50c:	e3530000 	cmp	r3, #0
     510:	aa000001 	bge	51c <stat+0x38>
     514:	e3e03000 	mvn	r3, #0
     518:	ea000006 	b	538 <stat+0x54>
     51c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     520:	e51b0008 	ldr	r0, [fp, #-8]
     524:	eb000194 	bl	b7c <fstat>
     528:	e50b000c 	str	r0, [fp, #-12]
     52c:	e51b0008 	ldr	r0, [fp, #-8]
     530:	eb00015b 	bl	aa4 <close>
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

0000068c <xchg>:
     68c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     690:	e28db000 	add	fp, sp, #0
     694:	e24dd00c 	sub	sp, sp, #12
     698:	e50b0008 	str	r0, [fp, #-8]
     69c:	e50b100c 	str	r1, [fp, #-12]
     6a0:	e51b200c 	ldr	r2, [fp, #-12]
     6a4:	e51b3008 	ldr	r3, [fp, #-8]
     6a8:	e1931f9f 	ldrex	r1, [r3]
     6ac:	e1830f92 	strex	r0, r2, [r3]
     6b0:	e3500000 	cmp	r0, #0
     6b4:	1afffffb 	bne	6a8 <xchg+0x1c>
     6b8:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     6bc:	e1a03001 	mov	r3, r1
     6c0:	e1a00003 	mov	r0, r3
     6c4:	e28bd000 	add	sp, fp, #0
     6c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6cc:	e12fff1e 	bx	lr

000006d0 <acquireLock>:
     6d0:	e92d4800 	push	{fp, lr}
     6d4:	e28db004 	add	fp, sp, #4
     6d8:	e24dd008 	sub	sp, sp, #8
     6dc:	e50b0008 	str	r0, [fp, #-8]
     6e0:	e51b3008 	ldr	r3, [fp, #-8]
     6e4:	e5933004 	ldr	r3, [r3, #4]
     6e8:	e3530000 	cmp	r3, #0
     6ec:	0a000008 	beq	714 <acquireLock+0x44>
     6f0:	e1a00000 	nop			@ (mov r0, r0)
     6f4:	e51b3008 	ldr	r3, [fp, #-8]
     6f8:	e3a01001 	mov	r1, #1
     6fc:	e1a00003 	mov	r0, r3
     700:	ebffffe1 	bl	68c <xchg>
     704:	e1a03000 	mov	r3, r0
     708:	e3530000 	cmp	r3, #0
     70c:	1afffff8 	bne	6f4 <acquireLock+0x24>
     710:	ea000000 	b	718 <acquireLock+0x48>
     714:	e1a00000 	nop			@ (mov r0, r0)
     718:	e24bd004 	sub	sp, fp, #4
     71c:	e8bd8800 	pop	{fp, pc}

00000720 <releaseLock>:
     720:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     724:	e28db000 	add	fp, sp, #0
     728:	e24dd00c 	sub	sp, sp, #12
     72c:	e50b0008 	str	r0, [fp, #-8]
     730:	e51b3008 	ldr	r3, [fp, #-8]
     734:	e5933004 	ldr	r3, [r3, #4]
     738:	e3530000 	cmp	r3, #0
     73c:	0a000007 	beq	760 <releaseLock+0x40>
     740:	e51b3008 	ldr	r3, [fp, #-8]
     744:	e5933000 	ldr	r3, [r3]
     748:	e3530001 	cmp	r3, #1
     74c:	1a000005 	bne	768 <releaseLock+0x48>
     750:	e51b3008 	ldr	r3, [fp, #-8]
     754:	e3a02000 	mov	r2, #0
     758:	e5832000 	str	r2, [r3]
     75c:	ea000002 	b	76c <releaseLock+0x4c>
     760:	e1a00000 	nop			@ (mov r0, r0)
     764:	ea000000 	b	76c <releaseLock+0x4c>
     768:	e1a00000 	nop			@ (mov r0, r0)
     76c:	e28bd000 	add	sp, fp, #0
     770:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     774:	e12fff1e 	bx	lr

00000778 <initiateCondVar>:
     778:	e92d4800 	push	{fp, lr}
     77c:	e28db004 	add	fp, sp, #4
     780:	e24dd008 	sub	sp, sp, #8
     784:	e50b0008 	str	r0, [fp, #-8]
     788:	eb0001b8 	bl	e70 <getChannel>
     78c:	e1a02000 	mov	r2, r0
     790:	e51b3008 	ldr	r3, [fp, #-8]
     794:	e5832000 	str	r2, [r3]
     798:	e51b3008 	ldr	r3, [fp, #-8]
     79c:	e3a02001 	mov	r2, #1
     7a0:	e5832004 	str	r2, [r3, #4]
     7a4:	e1a00000 	nop			@ (mov r0, r0)
     7a8:	e24bd004 	sub	sp, fp, #4
     7ac:	e8bd8800 	pop	{fp, pc}

000007b0 <condWait>:
     7b0:	e92d4800 	push	{fp, lr}
     7b4:	e28db004 	add	fp, sp, #4
     7b8:	e24dd008 	sub	sp, sp, #8
     7bc:	e50b0008 	str	r0, [fp, #-8]
     7c0:	e50b100c 	str	r1, [fp, #-12]
     7c4:	e51b3008 	ldr	r3, [fp, #-8]
     7c8:	e5933004 	ldr	r3, [r3, #4]
     7cc:	e3530000 	cmp	r3, #0
     7d0:	0a00000c 	beq	808 <condWait+0x58>
     7d4:	e51b300c 	ldr	r3, [fp, #-12]
     7d8:	e5933004 	ldr	r3, [r3, #4]
     7dc:	e3530000 	cmp	r3, #0
     7e0:	0a000008 	beq	808 <condWait+0x58>
     7e4:	e51b000c 	ldr	r0, [fp, #-12]
     7e8:	ebffffcc 	bl	720 <releaseLock>
     7ec:	e51b3008 	ldr	r3, [fp, #-8]
     7f0:	e5933000 	ldr	r3, [r3]
     7f4:	e1a00003 	mov	r0, r3
     7f8:	eb000193 	bl	e4c <sleepChan>
     7fc:	e51b000c 	ldr	r0, [fp, #-12]
     800:	ebffffb2 	bl	6d0 <acquireLock>
     804:	ea000000 	b	80c <condWait+0x5c>
     808:	e1a00000 	nop			@ (mov r0, r0)
     80c:	e24bd004 	sub	sp, fp, #4
     810:	e8bd8800 	pop	{fp, pc}

00000814 <broadcast>:
     814:	e92d4800 	push	{fp, lr}
     818:	e28db004 	add	fp, sp, #4
     81c:	e24dd008 	sub	sp, sp, #8
     820:	e50b0008 	str	r0, [fp, #-8]
     824:	e51b3008 	ldr	r3, [fp, #-8]
     828:	e5933004 	ldr	r3, [r3, #4]
     82c:	e3530000 	cmp	r3, #0
     830:	0a000004 	beq	848 <broadcast+0x34>
     834:	e51b3008 	ldr	r3, [fp, #-8]
     838:	e5933000 	ldr	r3, [r3]
     83c:	e1a00003 	mov	r0, r3
     840:	eb000193 	bl	e94 <sigChan>
     844:	ea000000 	b	84c <broadcast+0x38>
     848:	e1a00000 	nop			@ (mov r0, r0)
     84c:	e24bd004 	sub	sp, fp, #4
     850:	e8bd8800 	pop	{fp, pc}

00000854 <signal>:
     854:	e92d4800 	push	{fp, lr}
     858:	e28db004 	add	fp, sp, #4
     85c:	e24dd008 	sub	sp, sp, #8
     860:	e50b0008 	str	r0, [fp, #-8]
     864:	e51b3008 	ldr	r3, [fp, #-8]
     868:	e5933004 	ldr	r3, [r3, #4]
     86c:	e3530000 	cmp	r3, #0
     870:	0a000004 	beq	888 <signal+0x34>
     874:	e51b3008 	ldr	r3, [fp, #-8]
     878:	e5933000 	ldr	r3, [r3]
     87c:	e1a00003 	mov	r0, r3
     880:	eb00018c 	bl	eb8 <sigOneChan>
     884:	ea000000 	b	88c <signal+0x38>
     888:	e1a00000 	nop			@ (mov r0, r0)
     88c:	e24bd004 	sub	sp, fp, #4
     890:	e8bd8800 	pop	{fp, pc}

00000894 <semInit>:
     894:	e92d4800 	push	{fp, lr}
     898:	e28db004 	add	fp, sp, #4
     89c:	e24dd008 	sub	sp, sp, #8
     8a0:	e50b0008 	str	r0, [fp, #-8]
     8a4:	e50b100c 	str	r1, [fp, #-12]
     8a8:	e51b3008 	ldr	r3, [fp, #-8]
     8ac:	e51b200c 	ldr	r2, [fp, #-12]
     8b0:	e5832000 	str	r2, [r3]
     8b4:	e51b3008 	ldr	r3, [fp, #-8]
     8b8:	e2833004 	add	r3, r3, #4
     8bc:	e1a00003 	mov	r0, r3
     8c0:	ebffff63 	bl	654 <initiateLock>
     8c4:	e51b3008 	ldr	r3, [fp, #-8]
     8c8:	e283300c 	add	r3, r3, #12
     8cc:	e1a00003 	mov	r0, r3
     8d0:	ebffffa8 	bl	778 <initiateCondVar>
     8d4:	e51b3008 	ldr	r3, [fp, #-8]
     8d8:	e3a02001 	mov	r2, #1
     8dc:	e5832014 	str	r2, [r3, #20]
     8e0:	e1a00000 	nop			@ (mov r0, r0)
     8e4:	e24bd004 	sub	sp, fp, #4
     8e8:	e8bd8800 	pop	{fp, pc}

000008ec <semUp>:
     8ec:	e92d4800 	push	{fp, lr}
     8f0:	e28db004 	add	fp, sp, #4
     8f4:	e24dd008 	sub	sp, sp, #8
     8f8:	e50b0008 	str	r0, [fp, #-8]
     8fc:	e51b3008 	ldr	r3, [fp, #-8]
     900:	e2833004 	add	r3, r3, #4
     904:	e1a00003 	mov	r0, r3
     908:	ebffff70 	bl	6d0 <acquireLock>
     90c:	e51b3008 	ldr	r3, [fp, #-8]
     910:	e5933000 	ldr	r3, [r3]
     914:	e2832001 	add	r2, r3, #1
     918:	e51b3008 	ldr	r3, [fp, #-8]
     91c:	e5832000 	str	r2, [r3]
     920:	e51b3008 	ldr	r3, [fp, #-8]
     924:	e283300c 	add	r3, r3, #12
     928:	e1a00003 	mov	r0, r3
     92c:	ebffffc8 	bl	854 <signal>
     930:	e51b3008 	ldr	r3, [fp, #-8]
     934:	e2833004 	add	r3, r3, #4
     938:	e1a00003 	mov	r0, r3
     93c:	ebffff77 	bl	720 <releaseLock>
     940:	e1a00000 	nop			@ (mov r0, r0)
     944:	e24bd004 	sub	sp, fp, #4
     948:	e8bd8800 	pop	{fp, pc}

0000094c <semDown>:
     94c:	e92d4800 	push	{fp, lr}
     950:	e28db004 	add	fp, sp, #4
     954:	e24dd008 	sub	sp, sp, #8
     958:	e50b0008 	str	r0, [fp, #-8]
     95c:	e51b3008 	ldr	r3, [fp, #-8]
     960:	e2833004 	add	r3, r3, #4
     964:	e1a00003 	mov	r0, r3
     968:	ebffff58 	bl	6d0 <acquireLock>
     96c:	ea000006 	b	98c <semDown+0x40>
     970:	e51b3008 	ldr	r3, [fp, #-8]
     974:	e283200c 	add	r2, r3, #12
     978:	e51b3008 	ldr	r3, [fp, #-8]
     97c:	e2833004 	add	r3, r3, #4
     980:	e1a01003 	mov	r1, r3
     984:	e1a00002 	mov	r0, r2
     988:	ebffff88 	bl	7b0 <condWait>
     98c:	e51b3008 	ldr	r3, [fp, #-8]
     990:	e5933000 	ldr	r3, [r3]
     994:	e3530000 	cmp	r3, #0
     998:	dafffff4 	ble	970 <semDown+0x24>
     99c:	e51b3008 	ldr	r3, [fp, #-8]
     9a0:	e5933000 	ldr	r3, [r3]
     9a4:	e2432001 	sub	r2, r3, #1
     9a8:	e51b3008 	ldr	r3, [fp, #-8]
     9ac:	e5832000 	str	r2, [r3]
     9b0:	e51b3008 	ldr	r3, [fp, #-8]
     9b4:	e2833004 	add	r3, r3, #4
     9b8:	e1a00003 	mov	r0, r3
     9bc:	ebffff57 	bl	720 <releaseLock>
     9c0:	e1a00000 	nop			@ (mov r0, r0)
     9c4:	e24bd004 	sub	sp, fp, #4
     9c8:	e8bd8800 	pop	{fp, pc}

000009cc <fork>:
     9cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9d0:	e1a04003 	mov	r4, r3
     9d4:	e1a03002 	mov	r3, r2
     9d8:	e1a02001 	mov	r2, r1
     9dc:	e1a01000 	mov	r1, r0
     9e0:	e3a00001 	mov	r0, #1
     9e4:	ef000000 	svc	0x00000000
     9e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9ec:	e12fff1e 	bx	lr

000009f0 <exit>:
     9f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f4:	e1a04003 	mov	r4, r3
     9f8:	e1a03002 	mov	r3, r2
     9fc:	e1a02001 	mov	r2, r1
     a00:	e1a01000 	mov	r1, r0
     a04:	e3a00002 	mov	r0, #2
     a08:	ef000000 	svc	0x00000000
     a0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a10:	e12fff1e 	bx	lr

00000a14 <wait>:
     a14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a18:	e1a04003 	mov	r4, r3
     a1c:	e1a03002 	mov	r3, r2
     a20:	e1a02001 	mov	r2, r1
     a24:	e1a01000 	mov	r1, r0
     a28:	e3a00003 	mov	r0, #3
     a2c:	ef000000 	svc	0x00000000
     a30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a34:	e12fff1e 	bx	lr

00000a38 <pipe>:
     a38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a3c:	e1a04003 	mov	r4, r3
     a40:	e1a03002 	mov	r3, r2
     a44:	e1a02001 	mov	r2, r1
     a48:	e1a01000 	mov	r1, r0
     a4c:	e3a00004 	mov	r0, #4
     a50:	ef000000 	svc	0x00000000
     a54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a58:	e12fff1e 	bx	lr

00000a5c <read>:
     a5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a60:	e1a04003 	mov	r4, r3
     a64:	e1a03002 	mov	r3, r2
     a68:	e1a02001 	mov	r2, r1
     a6c:	e1a01000 	mov	r1, r0
     a70:	e3a00005 	mov	r0, #5
     a74:	ef000000 	svc	0x00000000
     a78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a7c:	e12fff1e 	bx	lr

00000a80 <write>:
     a80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a84:	e1a04003 	mov	r4, r3
     a88:	e1a03002 	mov	r3, r2
     a8c:	e1a02001 	mov	r2, r1
     a90:	e1a01000 	mov	r1, r0
     a94:	e3a00010 	mov	r0, #16
     a98:	ef000000 	svc	0x00000000
     a9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aa0:	e12fff1e 	bx	lr

00000aa4 <close>:
     aa4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa8:	e1a04003 	mov	r4, r3
     aac:	e1a03002 	mov	r3, r2
     ab0:	e1a02001 	mov	r2, r1
     ab4:	e1a01000 	mov	r1, r0
     ab8:	e3a00015 	mov	r0, #21
     abc:	ef000000 	svc	0x00000000
     ac0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac4:	e12fff1e 	bx	lr

00000ac8 <kill>:
     ac8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     acc:	e1a04003 	mov	r4, r3
     ad0:	e1a03002 	mov	r3, r2
     ad4:	e1a02001 	mov	r2, r1
     ad8:	e1a01000 	mov	r1, r0
     adc:	e3a00006 	mov	r0, #6
     ae0:	ef000000 	svc	0x00000000
     ae4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae8:	e12fff1e 	bx	lr

00000aec <exec>:
     aec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     af0:	e1a04003 	mov	r4, r3
     af4:	e1a03002 	mov	r3, r2
     af8:	e1a02001 	mov	r2, r1
     afc:	e1a01000 	mov	r1, r0
     b00:	e3a00007 	mov	r0, #7
     b04:	ef000000 	svc	0x00000000
     b08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b0c:	e12fff1e 	bx	lr

00000b10 <open>:
     b10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b14:	e1a04003 	mov	r4, r3
     b18:	e1a03002 	mov	r3, r2
     b1c:	e1a02001 	mov	r2, r1
     b20:	e1a01000 	mov	r1, r0
     b24:	e3a0000f 	mov	r0, #15
     b28:	ef000000 	svc	0x00000000
     b2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b30:	e12fff1e 	bx	lr

00000b34 <mknod>:
     b34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b38:	e1a04003 	mov	r4, r3
     b3c:	e1a03002 	mov	r3, r2
     b40:	e1a02001 	mov	r2, r1
     b44:	e1a01000 	mov	r1, r0
     b48:	e3a00011 	mov	r0, #17
     b4c:	ef000000 	svc	0x00000000
     b50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b54:	e12fff1e 	bx	lr

00000b58 <unlink>:
     b58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b5c:	e1a04003 	mov	r4, r3
     b60:	e1a03002 	mov	r3, r2
     b64:	e1a02001 	mov	r2, r1
     b68:	e1a01000 	mov	r1, r0
     b6c:	e3a00012 	mov	r0, #18
     b70:	ef000000 	svc	0x00000000
     b74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b78:	e12fff1e 	bx	lr

00000b7c <fstat>:
     b7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b80:	e1a04003 	mov	r4, r3
     b84:	e1a03002 	mov	r3, r2
     b88:	e1a02001 	mov	r2, r1
     b8c:	e1a01000 	mov	r1, r0
     b90:	e3a00008 	mov	r0, #8
     b94:	ef000000 	svc	0x00000000
     b98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b9c:	e12fff1e 	bx	lr

00000ba0 <link>:
     ba0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba4:	e1a04003 	mov	r4, r3
     ba8:	e1a03002 	mov	r3, r2
     bac:	e1a02001 	mov	r2, r1
     bb0:	e1a01000 	mov	r1, r0
     bb4:	e3a00013 	mov	r0, #19
     bb8:	ef000000 	svc	0x00000000
     bbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc0:	e12fff1e 	bx	lr

00000bc4 <mkdir>:
     bc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc8:	e1a04003 	mov	r4, r3
     bcc:	e1a03002 	mov	r3, r2
     bd0:	e1a02001 	mov	r2, r1
     bd4:	e1a01000 	mov	r1, r0
     bd8:	e3a00014 	mov	r0, #20
     bdc:	ef000000 	svc	0x00000000
     be0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be4:	e12fff1e 	bx	lr

00000be8 <chdir>:
     be8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bec:	e1a04003 	mov	r4, r3
     bf0:	e1a03002 	mov	r3, r2
     bf4:	e1a02001 	mov	r2, r1
     bf8:	e1a01000 	mov	r1, r0
     bfc:	e3a00009 	mov	r0, #9
     c00:	ef000000 	svc	0x00000000
     c04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c08:	e12fff1e 	bx	lr

00000c0c <dup>:
     c0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c10:	e1a04003 	mov	r4, r3
     c14:	e1a03002 	mov	r3, r2
     c18:	e1a02001 	mov	r2, r1
     c1c:	e1a01000 	mov	r1, r0
     c20:	e3a0000a 	mov	r0, #10
     c24:	ef000000 	svc	0x00000000
     c28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c2c:	e12fff1e 	bx	lr

00000c30 <getpid>:
     c30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c34:	e1a04003 	mov	r4, r3
     c38:	e1a03002 	mov	r3, r2
     c3c:	e1a02001 	mov	r2, r1
     c40:	e1a01000 	mov	r1, r0
     c44:	e3a0000b 	mov	r0, #11
     c48:	ef000000 	svc	0x00000000
     c4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c50:	e12fff1e 	bx	lr

00000c54 <sbrk>:
     c54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c58:	e1a04003 	mov	r4, r3
     c5c:	e1a03002 	mov	r3, r2
     c60:	e1a02001 	mov	r2, r1
     c64:	e1a01000 	mov	r1, r0
     c68:	e3a0000c 	mov	r0, #12
     c6c:	ef000000 	svc	0x00000000
     c70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c74:	e12fff1e 	bx	lr

00000c78 <sleep>:
     c78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c7c:	e1a04003 	mov	r4, r3
     c80:	e1a03002 	mov	r3, r2
     c84:	e1a02001 	mov	r2, r1
     c88:	e1a01000 	mov	r1, r0
     c8c:	e3a0000d 	mov	r0, #13
     c90:	ef000000 	svc	0x00000000
     c94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c98:	e12fff1e 	bx	lr

00000c9c <uptime>:
     c9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca0:	e1a04003 	mov	r4, r3
     ca4:	e1a03002 	mov	r3, r2
     ca8:	e1a02001 	mov	r2, r1
     cac:	e1a01000 	mov	r1, r0
     cb0:	e3a0000e 	mov	r0, #14
     cb4:	ef000000 	svc	0x00000000
     cb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cbc:	e12fff1e 	bx	lr

00000cc0 <getprocs>:
     cc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc4:	e1a04003 	mov	r4, r3
     cc8:	e1a03002 	mov	r3, r2
     ccc:	e1a02001 	mov	r2, r1
     cd0:	e1a01000 	mov	r1, r0
     cd4:	e3a00016 	mov	r0, #22
     cd8:	ef000000 	svc	0x00000000
     cdc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce0:	e12fff1e 	bx	lr

00000ce4 <settickets>:
     ce4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce8:	e1a04003 	mov	r4, r3
     cec:	e1a03002 	mov	r3, r2
     cf0:	e1a02001 	mov	r2, r1
     cf4:	e1a01000 	mov	r1, r0
     cf8:	e3a00017 	mov	r0, #23
     cfc:	ef000000 	svc	0x00000000
     d00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d04:	e12fff1e 	bx	lr

00000d08 <srand>:
     d08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d0c:	e1a04003 	mov	r4, r3
     d10:	e1a03002 	mov	r3, r2
     d14:	e1a02001 	mov	r2, r1
     d18:	e1a01000 	mov	r1, r0
     d1c:	e3a00018 	mov	r0, #24
     d20:	ef000000 	svc	0x00000000
     d24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d28:	e12fff1e 	bx	lr

00000d2c <getpinfo>:
     d2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d30:	e1a04003 	mov	r4, r3
     d34:	e1a03002 	mov	r3, r2
     d38:	e1a02001 	mov	r2, r1
     d3c:	e1a01000 	mov	r1, r0
     d40:	e3a00019 	mov	r0, #25
     d44:	ef000000 	svc	0x00000000
     d48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d4c:	e12fff1e 	bx	lr

00000d50 <dumppagetable>:
     d50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d54:	e1a04003 	mov	r4, r3
     d58:	e1a03002 	mov	r3, r2
     d5c:	e1a02001 	mov	r2, r1
     d60:	e1a01000 	mov	r1, r0
     d64:	e3a0001a 	mov	r0, #26
     d68:	ef000000 	svc	0x00000000
     d6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d70:	e12fff1e 	bx	lr

00000d74 <thread_create>:
     d74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d78:	e1a04003 	mov	r4, r3
     d7c:	e1a03002 	mov	r3, r2
     d80:	e1a02001 	mov	r2, r1
     d84:	e1a01000 	mov	r1, r0
     d88:	e3a0001b 	mov	r0, #27
     d8c:	ef000000 	svc	0x00000000
     d90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d94:	e12fff1e 	bx	lr

00000d98 <thread_exit>:
     d98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d9c:	e1a04003 	mov	r4, r3
     da0:	e1a03002 	mov	r3, r2
     da4:	e1a02001 	mov	r2, r1
     da8:	e1a01000 	mov	r1, r0
     dac:	e3a0001c 	mov	r0, #28
     db0:	ef000000 	svc	0x00000000
     db4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     db8:	e12fff1e 	bx	lr

00000dbc <thread_join>:
     dbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dc0:	e1a04003 	mov	r4, r3
     dc4:	e1a03002 	mov	r3, r2
     dc8:	e1a02001 	mov	r2, r1
     dcc:	e1a01000 	mov	r1, r0
     dd0:	e3a0001d 	mov	r0, #29
     dd4:	ef000000 	svc	0x00000000
     dd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ddc:	e12fff1e 	bx	lr

00000de0 <waitpid>:
     de0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     de4:	e1a04003 	mov	r4, r3
     de8:	e1a03002 	mov	r3, r2
     dec:	e1a02001 	mov	r2, r1
     df0:	e1a01000 	mov	r1, r0
     df4:	e3a0001e 	mov	r0, #30
     df8:	ef000000 	svc	0x00000000
     dfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e00:	e12fff1e 	bx	lr

00000e04 <barrier_init>:
     e04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e08:	e1a04003 	mov	r4, r3
     e0c:	e1a03002 	mov	r3, r2
     e10:	e1a02001 	mov	r2, r1
     e14:	e1a01000 	mov	r1, r0
     e18:	e3a0001f 	mov	r0, #31
     e1c:	ef000000 	svc	0x00000000
     e20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e24:	e12fff1e 	bx	lr

00000e28 <barrier_check>:
     e28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e2c:	e1a04003 	mov	r4, r3
     e30:	e1a03002 	mov	r3, r2
     e34:	e1a02001 	mov	r2, r1
     e38:	e1a01000 	mov	r1, r0
     e3c:	e3a00020 	mov	r0, #32
     e40:	ef000000 	svc	0x00000000
     e44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e48:	e12fff1e 	bx	lr

00000e4c <sleepChan>:
     e4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e50:	e1a04003 	mov	r4, r3
     e54:	e1a03002 	mov	r3, r2
     e58:	e1a02001 	mov	r2, r1
     e5c:	e1a01000 	mov	r1, r0
     e60:	e3a00024 	mov	r0, #36	@ 0x24
     e64:	ef000000 	svc	0x00000000
     e68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e6c:	e12fff1e 	bx	lr

00000e70 <getChannel>:
     e70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e74:	e1a04003 	mov	r4, r3
     e78:	e1a03002 	mov	r3, r2
     e7c:	e1a02001 	mov	r2, r1
     e80:	e1a01000 	mov	r1, r0
     e84:	e3a00025 	mov	r0, #37	@ 0x25
     e88:	ef000000 	svc	0x00000000
     e8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e90:	e12fff1e 	bx	lr

00000e94 <sigChan>:
     e94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e98:	e1a04003 	mov	r4, r3
     e9c:	e1a03002 	mov	r3, r2
     ea0:	e1a02001 	mov	r2, r1
     ea4:	e1a01000 	mov	r1, r0
     ea8:	e3a00026 	mov	r0, #38	@ 0x26
     eac:	ef000000 	svc	0x00000000
     eb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eb4:	e12fff1e 	bx	lr

00000eb8 <sigOneChan>:
     eb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ebc:	e1a04003 	mov	r4, r3
     ec0:	e1a03002 	mov	r3, r2
     ec4:	e1a02001 	mov	r2, r1
     ec8:	e1a01000 	mov	r1, r0
     ecc:	e3a00027 	mov	r0, #39	@ 0x27
     ed0:	ef000000 	svc	0x00000000
     ed4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ed8:	e12fff1e 	bx	lr

00000edc <putc>:
     edc:	e92d4800 	push	{fp, lr}
     ee0:	e28db004 	add	fp, sp, #4
     ee4:	e24dd008 	sub	sp, sp, #8
     ee8:	e50b0008 	str	r0, [fp, #-8]
     eec:	e1a03001 	mov	r3, r1
     ef0:	e54b3009 	strb	r3, [fp, #-9]
     ef4:	e24b3009 	sub	r3, fp, #9
     ef8:	e3a02001 	mov	r2, #1
     efc:	e1a01003 	mov	r1, r3
     f00:	e51b0008 	ldr	r0, [fp, #-8]
     f04:	ebfffedd 	bl	a80 <write>
     f08:	e1a00000 	nop			@ (mov r0, r0)
     f0c:	e24bd004 	sub	sp, fp, #4
     f10:	e8bd8800 	pop	{fp, pc}

00000f14 <printint>:
     f14:	e92d4800 	push	{fp, lr}
     f18:	e28db004 	add	fp, sp, #4
     f1c:	e24dd030 	sub	sp, sp, #48	@ 0x30
     f20:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     f24:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     f28:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     f2c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     f30:	e3a03000 	mov	r3, #0
     f34:	e50b300c 	str	r3, [fp, #-12]
     f38:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     f3c:	e3530000 	cmp	r3, #0
     f40:	0a000008 	beq	f68 <printint+0x54>
     f44:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f48:	e3530000 	cmp	r3, #0
     f4c:	aa000005 	bge	f68 <printint+0x54>
     f50:	e3a03001 	mov	r3, #1
     f54:	e50b300c 	str	r3, [fp, #-12]
     f58:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f5c:	e2633000 	rsb	r3, r3, #0
     f60:	e50b3010 	str	r3, [fp, #-16]
     f64:	ea000001 	b	f70 <printint+0x5c>
     f68:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f6c:	e50b3010 	str	r3, [fp, #-16]
     f70:	e3a03000 	mov	r3, #0
     f74:	e50b3008 	str	r3, [fp, #-8]
     f78:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     f7c:	e51b3010 	ldr	r3, [fp, #-16]
     f80:	e1a01002 	mov	r1, r2
     f84:	e1a00003 	mov	r0, r3
     f88:	eb0001d5 	bl	16e4 <__aeabi_uidivmod>
     f8c:	e1a03001 	mov	r3, r1
     f90:	e1a01003 	mov	r1, r3
     f94:	e51b3008 	ldr	r3, [fp, #-8]
     f98:	e2832001 	add	r2, r3, #1
     f9c:	e50b2008 	str	r2, [fp, #-8]
     fa0:	e59f20a0 	ldr	r2, [pc, #160]	@ 1048 <printint+0x134>
     fa4:	e7d22001 	ldrb	r2, [r2, r1]
     fa8:	e2433004 	sub	r3, r3, #4
     fac:	e083300b 	add	r3, r3, fp
     fb0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     fb4:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     fb8:	e1a01003 	mov	r1, r3
     fbc:	e51b0010 	ldr	r0, [fp, #-16]
     fc0:	eb00018a 	bl	15f0 <__udivsi3>
     fc4:	e1a03000 	mov	r3, r0
     fc8:	e50b3010 	str	r3, [fp, #-16]
     fcc:	e51b3010 	ldr	r3, [fp, #-16]
     fd0:	e3530000 	cmp	r3, #0
     fd4:	1affffe7 	bne	f78 <printint+0x64>
     fd8:	e51b300c 	ldr	r3, [fp, #-12]
     fdc:	e3530000 	cmp	r3, #0
     fe0:	0a00000e 	beq	1020 <printint+0x10c>
     fe4:	e51b3008 	ldr	r3, [fp, #-8]
     fe8:	e2832001 	add	r2, r3, #1
     fec:	e50b2008 	str	r2, [fp, #-8]
     ff0:	e2433004 	sub	r3, r3, #4
     ff4:	e083300b 	add	r3, r3, fp
     ff8:	e3a0202d 	mov	r2, #45	@ 0x2d
     ffc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1000:	ea000006 	b	1020 <printint+0x10c>
    1004:	e24b2020 	sub	r2, fp, #32
    1008:	e51b3008 	ldr	r3, [fp, #-8]
    100c:	e0823003 	add	r3, r2, r3
    1010:	e5d33000 	ldrb	r3, [r3]
    1014:	e1a01003 	mov	r1, r3
    1018:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    101c:	ebffffae 	bl	edc <putc>
    1020:	e51b3008 	ldr	r3, [fp, #-8]
    1024:	e2433001 	sub	r3, r3, #1
    1028:	e50b3008 	str	r3, [fp, #-8]
    102c:	e51b3008 	ldr	r3, [fp, #-8]
    1030:	e3530000 	cmp	r3, #0
    1034:	aafffff2 	bge	1004 <printint+0xf0>
    1038:	e1a00000 	nop			@ (mov r0, r0)
    103c:	e1a00000 	nop			@ (mov r0, r0)
    1040:	e24bd004 	sub	sp, fp, #4
    1044:	e8bd8800 	pop	{fp, pc}
    1048:	00001764 	.word	0x00001764

0000104c <printf>:
    104c:	e92d000e 	push	{r1, r2, r3}
    1050:	e92d4800 	push	{fp, lr}
    1054:	e28db004 	add	fp, sp, #4
    1058:	e24dd024 	sub	sp, sp, #36	@ 0x24
    105c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1060:	e3a03000 	mov	r3, #0
    1064:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1068:	e28b3008 	add	r3, fp, #8
    106c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1070:	e3a03000 	mov	r3, #0
    1074:	e50b3010 	str	r3, [fp, #-16]
    1078:	ea000074 	b	1250 <printf+0x204>
    107c:	e59b2004 	ldr	r2, [fp, #4]
    1080:	e51b3010 	ldr	r3, [fp, #-16]
    1084:	e0823003 	add	r3, r2, r3
    1088:	e5d33000 	ldrb	r3, [r3]
    108c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1090:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1094:	e3530000 	cmp	r3, #0
    1098:	1a00000b 	bne	10cc <printf+0x80>
    109c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10a0:	e3530025 	cmp	r3, #37	@ 0x25
    10a4:	1a000002 	bne	10b4 <printf+0x68>
    10a8:	e3a03025 	mov	r3, #37	@ 0x25
    10ac:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    10b0:	ea000063 	b	1244 <printf+0x1f8>
    10b4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10b8:	e6ef3073 	uxtb	r3, r3
    10bc:	e1a01003 	mov	r1, r3
    10c0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10c4:	ebffff84 	bl	edc <putc>
    10c8:	ea00005d 	b	1244 <printf+0x1f8>
    10cc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    10d0:	e3530025 	cmp	r3, #37	@ 0x25
    10d4:	1a00005a 	bne	1244 <printf+0x1f8>
    10d8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10dc:	e3530064 	cmp	r3, #100	@ 0x64
    10e0:	1a00000a 	bne	1110 <printf+0xc4>
    10e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10e8:	e5933000 	ldr	r3, [r3]
    10ec:	e1a01003 	mov	r1, r3
    10f0:	e3a03001 	mov	r3, #1
    10f4:	e3a0200a 	mov	r2, #10
    10f8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10fc:	ebffff84 	bl	f14 <printint>
    1100:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1104:	e2833004 	add	r3, r3, #4
    1108:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    110c:	ea00004a 	b	123c <printf+0x1f0>
    1110:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1114:	e3530078 	cmp	r3, #120	@ 0x78
    1118:	0a000002 	beq	1128 <printf+0xdc>
    111c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1120:	e3530070 	cmp	r3, #112	@ 0x70
    1124:	1a00000a 	bne	1154 <printf+0x108>
    1128:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    112c:	e5933000 	ldr	r3, [r3]
    1130:	e1a01003 	mov	r1, r3
    1134:	e3a03000 	mov	r3, #0
    1138:	e3a02010 	mov	r2, #16
    113c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1140:	ebffff73 	bl	f14 <printint>
    1144:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1148:	e2833004 	add	r3, r3, #4
    114c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1150:	ea000039 	b	123c <printf+0x1f0>
    1154:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1158:	e3530073 	cmp	r3, #115	@ 0x73
    115c:	1a000018 	bne	11c4 <printf+0x178>
    1160:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1164:	e5933000 	ldr	r3, [r3]
    1168:	e50b300c 	str	r3, [fp, #-12]
    116c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1170:	e2833004 	add	r3, r3, #4
    1174:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1178:	e51b300c 	ldr	r3, [fp, #-12]
    117c:	e3530000 	cmp	r3, #0
    1180:	1a00000a 	bne	11b0 <printf+0x164>
    1184:	e59f30f4 	ldr	r3, [pc, #244]	@ 1280 <printf+0x234>
    1188:	e50b300c 	str	r3, [fp, #-12]
    118c:	ea000007 	b	11b0 <printf+0x164>
    1190:	e51b300c 	ldr	r3, [fp, #-12]
    1194:	e5d33000 	ldrb	r3, [r3]
    1198:	e1a01003 	mov	r1, r3
    119c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11a0:	ebffff4d 	bl	edc <putc>
    11a4:	e51b300c 	ldr	r3, [fp, #-12]
    11a8:	e2833001 	add	r3, r3, #1
    11ac:	e50b300c 	str	r3, [fp, #-12]
    11b0:	e51b300c 	ldr	r3, [fp, #-12]
    11b4:	e5d33000 	ldrb	r3, [r3]
    11b8:	e3530000 	cmp	r3, #0
    11bc:	1afffff3 	bne	1190 <printf+0x144>
    11c0:	ea00001d 	b	123c <printf+0x1f0>
    11c4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11c8:	e3530063 	cmp	r3, #99	@ 0x63
    11cc:	1a000009 	bne	11f8 <printf+0x1ac>
    11d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11d4:	e5933000 	ldr	r3, [r3]
    11d8:	e6ef3073 	uxtb	r3, r3
    11dc:	e1a01003 	mov	r1, r3
    11e0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11e4:	ebffff3c 	bl	edc <putc>
    11e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11ec:	e2833004 	add	r3, r3, #4
    11f0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11f4:	ea000010 	b	123c <printf+0x1f0>
    11f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11fc:	e3530025 	cmp	r3, #37	@ 0x25
    1200:	1a000005 	bne	121c <printf+0x1d0>
    1204:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1208:	e6ef3073 	uxtb	r3, r3
    120c:	e1a01003 	mov	r1, r3
    1210:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1214:	ebffff30 	bl	edc <putc>
    1218:	ea000007 	b	123c <printf+0x1f0>
    121c:	e3a01025 	mov	r1, #37	@ 0x25
    1220:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1224:	ebffff2c 	bl	edc <putc>
    1228:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    122c:	e6ef3073 	uxtb	r3, r3
    1230:	e1a01003 	mov	r1, r3
    1234:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1238:	ebffff27 	bl	edc <putc>
    123c:	e3a03000 	mov	r3, #0
    1240:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1244:	e51b3010 	ldr	r3, [fp, #-16]
    1248:	e2833001 	add	r3, r3, #1
    124c:	e50b3010 	str	r3, [fp, #-16]
    1250:	e59b2004 	ldr	r2, [fp, #4]
    1254:	e51b3010 	ldr	r3, [fp, #-16]
    1258:	e0823003 	add	r3, r2, r3
    125c:	e5d33000 	ldrb	r3, [r3]
    1260:	e3530000 	cmp	r3, #0
    1264:	1affff84 	bne	107c <printf+0x30>
    1268:	e1a00000 	nop			@ (mov r0, r0)
    126c:	e1a00000 	nop			@ (mov r0, r0)
    1270:	e24bd004 	sub	sp, fp, #4
    1274:	e8bd4800 	pop	{fp, lr}
    1278:	e28dd00c 	add	sp, sp, #12
    127c:	e12fff1e 	bx	lr
    1280:	0000175c 	.word	0x0000175c

00001284 <free>:
    1284:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1288:	e28db000 	add	fp, sp, #0
    128c:	e24dd014 	sub	sp, sp, #20
    1290:	e50b0010 	str	r0, [fp, #-16]
    1294:	e51b3010 	ldr	r3, [fp, #-16]
    1298:	e2433008 	sub	r3, r3, #8
    129c:	e50b300c 	str	r3, [fp, #-12]
    12a0:	e59f3154 	ldr	r3, [pc, #340]	@ 13fc <free+0x178>
    12a4:	e5933000 	ldr	r3, [r3]
    12a8:	e50b3008 	str	r3, [fp, #-8]
    12ac:	ea000010 	b	12f4 <free+0x70>
    12b0:	e51b3008 	ldr	r3, [fp, #-8]
    12b4:	e5933000 	ldr	r3, [r3]
    12b8:	e51b2008 	ldr	r2, [fp, #-8]
    12bc:	e1520003 	cmp	r2, r3
    12c0:	3a000008 	bcc	12e8 <free+0x64>
    12c4:	e51b200c 	ldr	r2, [fp, #-12]
    12c8:	e51b3008 	ldr	r3, [fp, #-8]
    12cc:	e1520003 	cmp	r2, r3
    12d0:	8a000010 	bhi	1318 <free+0x94>
    12d4:	e51b3008 	ldr	r3, [fp, #-8]
    12d8:	e5933000 	ldr	r3, [r3]
    12dc:	e51b200c 	ldr	r2, [fp, #-12]
    12e0:	e1520003 	cmp	r2, r3
    12e4:	3a00000b 	bcc	1318 <free+0x94>
    12e8:	e51b3008 	ldr	r3, [fp, #-8]
    12ec:	e5933000 	ldr	r3, [r3]
    12f0:	e50b3008 	str	r3, [fp, #-8]
    12f4:	e51b200c 	ldr	r2, [fp, #-12]
    12f8:	e51b3008 	ldr	r3, [fp, #-8]
    12fc:	e1520003 	cmp	r2, r3
    1300:	9affffea 	bls	12b0 <free+0x2c>
    1304:	e51b3008 	ldr	r3, [fp, #-8]
    1308:	e5933000 	ldr	r3, [r3]
    130c:	e51b200c 	ldr	r2, [fp, #-12]
    1310:	e1520003 	cmp	r2, r3
    1314:	2affffe5 	bcs	12b0 <free+0x2c>
    1318:	e51b300c 	ldr	r3, [fp, #-12]
    131c:	e5933004 	ldr	r3, [r3, #4]
    1320:	e1a03183 	lsl	r3, r3, #3
    1324:	e51b200c 	ldr	r2, [fp, #-12]
    1328:	e0822003 	add	r2, r2, r3
    132c:	e51b3008 	ldr	r3, [fp, #-8]
    1330:	e5933000 	ldr	r3, [r3]
    1334:	e1520003 	cmp	r2, r3
    1338:	1a00000d 	bne	1374 <free+0xf0>
    133c:	e51b300c 	ldr	r3, [fp, #-12]
    1340:	e5932004 	ldr	r2, [r3, #4]
    1344:	e51b3008 	ldr	r3, [fp, #-8]
    1348:	e5933000 	ldr	r3, [r3]
    134c:	e5933004 	ldr	r3, [r3, #4]
    1350:	e0822003 	add	r2, r2, r3
    1354:	e51b300c 	ldr	r3, [fp, #-12]
    1358:	e5832004 	str	r2, [r3, #4]
    135c:	e51b3008 	ldr	r3, [fp, #-8]
    1360:	e5933000 	ldr	r3, [r3]
    1364:	e5932000 	ldr	r2, [r3]
    1368:	e51b300c 	ldr	r3, [fp, #-12]
    136c:	e5832000 	str	r2, [r3]
    1370:	ea000003 	b	1384 <free+0x100>
    1374:	e51b3008 	ldr	r3, [fp, #-8]
    1378:	e5932000 	ldr	r2, [r3]
    137c:	e51b300c 	ldr	r3, [fp, #-12]
    1380:	e5832000 	str	r2, [r3]
    1384:	e51b3008 	ldr	r3, [fp, #-8]
    1388:	e5933004 	ldr	r3, [r3, #4]
    138c:	e1a03183 	lsl	r3, r3, #3
    1390:	e51b2008 	ldr	r2, [fp, #-8]
    1394:	e0823003 	add	r3, r2, r3
    1398:	e51b200c 	ldr	r2, [fp, #-12]
    139c:	e1520003 	cmp	r2, r3
    13a0:	1a00000b 	bne	13d4 <free+0x150>
    13a4:	e51b3008 	ldr	r3, [fp, #-8]
    13a8:	e5932004 	ldr	r2, [r3, #4]
    13ac:	e51b300c 	ldr	r3, [fp, #-12]
    13b0:	e5933004 	ldr	r3, [r3, #4]
    13b4:	e0822003 	add	r2, r2, r3
    13b8:	e51b3008 	ldr	r3, [fp, #-8]
    13bc:	e5832004 	str	r2, [r3, #4]
    13c0:	e51b300c 	ldr	r3, [fp, #-12]
    13c4:	e5932000 	ldr	r2, [r3]
    13c8:	e51b3008 	ldr	r3, [fp, #-8]
    13cc:	e5832000 	str	r2, [r3]
    13d0:	ea000002 	b	13e0 <free+0x15c>
    13d4:	e51b3008 	ldr	r3, [fp, #-8]
    13d8:	e51b200c 	ldr	r2, [fp, #-12]
    13dc:	e5832000 	str	r2, [r3]
    13e0:	e59f2014 	ldr	r2, [pc, #20]	@ 13fc <free+0x178>
    13e4:	e51b3008 	ldr	r3, [fp, #-8]
    13e8:	e5823000 	str	r3, [r2]
    13ec:	e1a00000 	nop			@ (mov r0, r0)
    13f0:	e28bd000 	add	sp, fp, #0
    13f4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    13f8:	e12fff1e 	bx	lr
    13fc:	00001780 	.word	0x00001780

00001400 <morecore>:
    1400:	e92d4800 	push	{fp, lr}
    1404:	e28db004 	add	fp, sp, #4
    1408:	e24dd010 	sub	sp, sp, #16
    140c:	e50b0010 	str	r0, [fp, #-16]
    1410:	e51b3010 	ldr	r3, [fp, #-16]
    1414:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1418:	2a000001 	bcs	1424 <morecore+0x24>
    141c:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1420:	e50b3010 	str	r3, [fp, #-16]
    1424:	e51b3010 	ldr	r3, [fp, #-16]
    1428:	e1a03183 	lsl	r3, r3, #3
    142c:	e1a00003 	mov	r0, r3
    1430:	ebfffe07 	bl	c54 <sbrk>
    1434:	e50b0008 	str	r0, [fp, #-8]
    1438:	e51b3008 	ldr	r3, [fp, #-8]
    143c:	e3730001 	cmn	r3, #1
    1440:	1a000001 	bne	144c <morecore+0x4c>
    1444:	e3a03000 	mov	r3, #0
    1448:	ea00000a 	b	1478 <morecore+0x78>
    144c:	e51b3008 	ldr	r3, [fp, #-8]
    1450:	e50b300c 	str	r3, [fp, #-12]
    1454:	e51b300c 	ldr	r3, [fp, #-12]
    1458:	e51b2010 	ldr	r2, [fp, #-16]
    145c:	e5832004 	str	r2, [r3, #4]
    1460:	e51b300c 	ldr	r3, [fp, #-12]
    1464:	e2833008 	add	r3, r3, #8
    1468:	e1a00003 	mov	r0, r3
    146c:	ebffff84 	bl	1284 <free>
    1470:	e59f300c 	ldr	r3, [pc, #12]	@ 1484 <morecore+0x84>
    1474:	e5933000 	ldr	r3, [r3]
    1478:	e1a00003 	mov	r0, r3
    147c:	e24bd004 	sub	sp, fp, #4
    1480:	e8bd8800 	pop	{fp, pc}
    1484:	00001780 	.word	0x00001780

00001488 <malloc>:
    1488:	e92d4800 	push	{fp, lr}
    148c:	e28db004 	add	fp, sp, #4
    1490:	e24dd018 	sub	sp, sp, #24
    1494:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1498:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    149c:	e2833007 	add	r3, r3, #7
    14a0:	e1a031a3 	lsr	r3, r3, #3
    14a4:	e2833001 	add	r3, r3, #1
    14a8:	e50b3010 	str	r3, [fp, #-16]
    14ac:	e59f3134 	ldr	r3, [pc, #308]	@ 15e8 <malloc+0x160>
    14b0:	e5933000 	ldr	r3, [r3]
    14b4:	e50b300c 	str	r3, [fp, #-12]
    14b8:	e51b300c 	ldr	r3, [fp, #-12]
    14bc:	e3530000 	cmp	r3, #0
    14c0:	1a00000b 	bne	14f4 <malloc+0x6c>
    14c4:	e59f3120 	ldr	r3, [pc, #288]	@ 15ec <malloc+0x164>
    14c8:	e50b300c 	str	r3, [fp, #-12]
    14cc:	e59f2114 	ldr	r2, [pc, #276]	@ 15e8 <malloc+0x160>
    14d0:	e51b300c 	ldr	r3, [fp, #-12]
    14d4:	e5823000 	str	r3, [r2]
    14d8:	e59f3108 	ldr	r3, [pc, #264]	@ 15e8 <malloc+0x160>
    14dc:	e5933000 	ldr	r3, [r3]
    14e0:	e59f2104 	ldr	r2, [pc, #260]	@ 15ec <malloc+0x164>
    14e4:	e5823000 	str	r3, [r2]
    14e8:	e59f30fc 	ldr	r3, [pc, #252]	@ 15ec <malloc+0x164>
    14ec:	e3a02000 	mov	r2, #0
    14f0:	e5832004 	str	r2, [r3, #4]
    14f4:	e51b300c 	ldr	r3, [fp, #-12]
    14f8:	e5933000 	ldr	r3, [r3]
    14fc:	e50b3008 	str	r3, [fp, #-8]
    1500:	e51b3008 	ldr	r3, [fp, #-8]
    1504:	e5933004 	ldr	r3, [r3, #4]
    1508:	e51b2010 	ldr	r2, [fp, #-16]
    150c:	e1520003 	cmp	r2, r3
    1510:	8a00001e 	bhi	1590 <malloc+0x108>
    1514:	e51b3008 	ldr	r3, [fp, #-8]
    1518:	e5933004 	ldr	r3, [r3, #4]
    151c:	e51b2010 	ldr	r2, [fp, #-16]
    1520:	e1520003 	cmp	r2, r3
    1524:	1a000004 	bne	153c <malloc+0xb4>
    1528:	e51b3008 	ldr	r3, [fp, #-8]
    152c:	e5932000 	ldr	r2, [r3]
    1530:	e51b300c 	ldr	r3, [fp, #-12]
    1534:	e5832000 	str	r2, [r3]
    1538:	ea00000e 	b	1578 <malloc+0xf0>
    153c:	e51b3008 	ldr	r3, [fp, #-8]
    1540:	e5932004 	ldr	r2, [r3, #4]
    1544:	e51b3010 	ldr	r3, [fp, #-16]
    1548:	e0422003 	sub	r2, r2, r3
    154c:	e51b3008 	ldr	r3, [fp, #-8]
    1550:	e5832004 	str	r2, [r3, #4]
    1554:	e51b3008 	ldr	r3, [fp, #-8]
    1558:	e5933004 	ldr	r3, [r3, #4]
    155c:	e1a03183 	lsl	r3, r3, #3
    1560:	e51b2008 	ldr	r2, [fp, #-8]
    1564:	e0823003 	add	r3, r2, r3
    1568:	e50b3008 	str	r3, [fp, #-8]
    156c:	e51b3008 	ldr	r3, [fp, #-8]
    1570:	e51b2010 	ldr	r2, [fp, #-16]
    1574:	e5832004 	str	r2, [r3, #4]
    1578:	e59f2068 	ldr	r2, [pc, #104]	@ 15e8 <malloc+0x160>
    157c:	e51b300c 	ldr	r3, [fp, #-12]
    1580:	e5823000 	str	r3, [r2]
    1584:	e51b3008 	ldr	r3, [fp, #-8]
    1588:	e2833008 	add	r3, r3, #8
    158c:	ea000012 	b	15dc <malloc+0x154>
    1590:	e59f3050 	ldr	r3, [pc, #80]	@ 15e8 <malloc+0x160>
    1594:	e5933000 	ldr	r3, [r3]
    1598:	e51b2008 	ldr	r2, [fp, #-8]
    159c:	e1520003 	cmp	r2, r3
    15a0:	1a000007 	bne	15c4 <malloc+0x13c>
    15a4:	e51b0010 	ldr	r0, [fp, #-16]
    15a8:	ebffff94 	bl	1400 <morecore>
    15ac:	e50b0008 	str	r0, [fp, #-8]
    15b0:	e51b3008 	ldr	r3, [fp, #-8]
    15b4:	e3530000 	cmp	r3, #0
    15b8:	1a000001 	bne	15c4 <malloc+0x13c>
    15bc:	e3a03000 	mov	r3, #0
    15c0:	ea000005 	b	15dc <malloc+0x154>
    15c4:	e51b3008 	ldr	r3, [fp, #-8]
    15c8:	e50b300c 	str	r3, [fp, #-12]
    15cc:	e51b3008 	ldr	r3, [fp, #-8]
    15d0:	e5933000 	ldr	r3, [r3]
    15d4:	e50b3008 	str	r3, [fp, #-8]
    15d8:	eaffffc8 	b	1500 <malloc+0x78>
    15dc:	e1a00003 	mov	r0, r3
    15e0:	e24bd004 	sub	sp, fp, #4
    15e4:	e8bd8800 	pop	{fp, pc}
    15e8:	00001780 	.word	0x00001780
    15ec:	00001778 	.word	0x00001778

000015f0 <__udivsi3>:
    15f0:	e2512001 	subs	r2, r1, #1
    15f4:	012fff1e 	bxeq	lr
    15f8:	3a000036 	bcc	16d8 <__udivsi3+0xe8>
    15fc:	e1500001 	cmp	r0, r1
    1600:	9a000022 	bls	1690 <__udivsi3+0xa0>
    1604:	e1110002 	tst	r1, r2
    1608:	0a000023 	beq	169c <__udivsi3+0xac>
    160c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1610:	01a01181 	lsleq	r1, r1, #3
    1614:	03a03008 	moveq	r3, #8
    1618:	13a03001 	movne	r3, #1
    161c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1620:	31510000 	cmpcc	r1, r0
    1624:	31a01201 	lslcc	r1, r1, #4
    1628:	31a03203 	lslcc	r3, r3, #4
    162c:	3afffffa 	bcc	161c <__udivsi3+0x2c>
    1630:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1634:	31510000 	cmpcc	r1, r0
    1638:	31a01081 	lslcc	r1, r1, #1
    163c:	31a03083 	lslcc	r3, r3, #1
    1640:	3afffffa 	bcc	1630 <__udivsi3+0x40>
    1644:	e3a02000 	mov	r2, #0
    1648:	e1500001 	cmp	r0, r1
    164c:	20400001 	subcs	r0, r0, r1
    1650:	21822003 	orrcs	r2, r2, r3
    1654:	e15000a1 	cmp	r0, r1, lsr #1
    1658:	204000a1 	subcs	r0, r0, r1, lsr #1
    165c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1660:	e1500121 	cmp	r0, r1, lsr #2
    1664:	20400121 	subcs	r0, r0, r1, lsr #2
    1668:	21822123 	orrcs	r2, r2, r3, lsr #2
    166c:	e15001a1 	cmp	r0, r1, lsr #3
    1670:	204001a1 	subcs	r0, r0, r1, lsr #3
    1674:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1678:	e3500000 	cmp	r0, #0
    167c:	11b03223 	lsrsne	r3, r3, #4
    1680:	11a01221 	lsrne	r1, r1, #4
    1684:	1affffef 	bne	1648 <__udivsi3+0x58>
    1688:	e1a00002 	mov	r0, r2
    168c:	e12fff1e 	bx	lr
    1690:	03a00001 	moveq	r0, #1
    1694:	13a00000 	movne	r0, #0
    1698:	e12fff1e 	bx	lr
    169c:	e3510801 	cmp	r1, #65536	@ 0x10000
    16a0:	21a01821 	lsrcs	r1, r1, #16
    16a4:	23a02010 	movcs	r2, #16
    16a8:	33a02000 	movcc	r2, #0
    16ac:	e3510c01 	cmp	r1, #256	@ 0x100
    16b0:	21a01421 	lsrcs	r1, r1, #8
    16b4:	22822008 	addcs	r2, r2, #8
    16b8:	e3510010 	cmp	r1, #16
    16bc:	21a01221 	lsrcs	r1, r1, #4
    16c0:	22822004 	addcs	r2, r2, #4
    16c4:	e3510004 	cmp	r1, #4
    16c8:	82822003 	addhi	r2, r2, #3
    16cc:	908220a1 	addls	r2, r2, r1, lsr #1
    16d0:	e1a00230 	lsr	r0, r0, r2
    16d4:	e12fff1e 	bx	lr
    16d8:	e3500000 	cmp	r0, #0
    16dc:	13e00000 	mvnne	r0, #0
    16e0:	ea000007 	b	1704 <__aeabi_idiv0>

000016e4 <__aeabi_uidivmod>:
    16e4:	e3510000 	cmp	r1, #0
    16e8:	0afffffa 	beq	16d8 <__udivsi3+0xe8>
    16ec:	e92d4003 	push	{r0, r1, lr}
    16f0:	ebffffbe 	bl	15f0 <__udivsi3>
    16f4:	e8bd4006 	pop	{r1, r2, lr}
    16f8:	e0030092 	mul	r3, r2, r0
    16fc:	e0411003 	sub	r1, r1, r3
    1700:	e12fff1e 	bx	lr

00001704 <__aeabi_idiv0>:
    1704:	e12fff1e 	bx	lr
