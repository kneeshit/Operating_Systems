
_t_sem1:     file format elf32-littlearm


Disassembly of section .text:

00000000 <thread2>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e51b3010 	ldr	r3, [fp, #-16]
      14:	e50b3008 	str	r3, [fp, #-8]
      18:	e59f1064 	ldr	r1, [pc, #100]	@ 84 <thread2+0x84>
      1c:	e3a00001 	mov	r0, #1
      20:	eb0003c3 	bl	f34 <printf>
      24:	e51b3008 	ldr	r3, [fp, #-8]
      28:	e5933004 	ldr	r3, [r3, #4]
      2c:	e1a00003 	mov	r0, r3
      30:	eb0001ff 	bl	834 <semDown>
      34:	e59f104c 	ldr	r1, [pc, #76]	@ 88 <thread2+0x88>
      38:	e3a00001 	mov	r0, #1
      3c:	eb0003bc 	bl	f34 <printf>
      40:	e51b3008 	ldr	r3, [fp, #-8]
      44:	e5933000 	ldr	r3, [r3]
      48:	e50b300c 	str	r3, [fp, #-12]
      4c:	e51b300c 	ldr	r3, [fp, #-12]
      50:	e5933000 	ldr	r3, [r3]
      54:	e2832001 	add	r2, r3, #1
      58:	e51b300c 	ldr	r3, [fp, #-12]
      5c:	e5832000 	str	r2, [r3]
      60:	e51b3008 	ldr	r3, [fp, #-8]
      64:	e5933004 	ldr	r3, [r3, #4]
      68:	e1a00003 	mov	r0, r3
      6c:	eb0001d8 	bl	7d4 <semUp>
      70:	eb000302 	bl	c80 <thread_exit>
      74:	e3a03000 	mov	r3, #0
      78:	e1a00003 	mov	r0, r3
      7c:	e24bd004 	sub	sp, fp, #4
      80:	e8bd8800 	pop	{fp, pc}
      84:	000015f0 	.word	0x000015f0
      88:	0000160c 	.word	0x0000160c

0000008c <main>:
      8c:	e92d4800 	push	{fp, lr}
      90:	e28db004 	add	fp, sp, #4
      94:	e24dd028 	sub	sp, sp, #40	@ 0x28
      98:	e24b301c 	sub	r3, fp, #28
      9c:	e3a01001 	mov	r1, #1
      a0:	e1a00003 	mov	r0, r3
      a4:	eb0001b4 	bl	77c <semInit>
      a8:	e59f1074 	ldr	r1, [pc, #116]	@ 124 <main+0x98>
      ac:	e3a00001 	mov	r0, #1
      b0:	eb00039f 	bl	f34 <printf>
      b4:	e3a0300a 	mov	r3, #10
      b8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
      bc:	e24b3020 	sub	r3, fp, #32
      c0:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
      c4:	e24b301c 	sub	r3, fp, #28
      c8:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
      cc:	e24b301c 	sub	r3, fp, #28
      d0:	e1a00003 	mov	r0, r3
      d4:	eb0001d6 	bl	834 <semDown>
      d8:	e24b2028 	sub	r2, fp, #40	@ 0x28
      dc:	e24b302c 	sub	r3, fp, #44	@ 0x2c
      e0:	e59f1040 	ldr	r1, [pc, #64]	@ 128 <main+0x9c>
      e4:	e1a00003 	mov	r0, r3
      e8:	eb0002db 	bl	c5c <thread_create>
      ec:	e3a000c8 	mov	r0, #200	@ 0xc8
      f0:	eb00029a 	bl	b60 <sleep>
      f4:	e24b301c 	sub	r3, fp, #28
      f8:	e1a00003 	mov	r0, r3
      fc:	eb0001b4 	bl	7d4 <semUp>
     100:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     104:	e1a00003 	mov	r0, r3
     108:	eb0002e5 	bl	ca4 <thread_join>
     10c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     110:	e1a02003 	mov	r2, r3
     114:	e59f1010 	ldr	r1, [pc, #16]	@ 12c <main+0xa0>
     118:	e3a00001 	mov	r0, #1
     11c:	eb000384 	bl	f34 <printf>
     120:	eb0001ec 	bl	8d8 <exit>
     124:	00001630 	.word	0x00001630
     128:	00000000 	.word	0x00000000
     12c:	00001640 	.word	0x00001640

00000130 <strcpy>:
     130:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     134:	e28db000 	add	fp, sp, #0
     138:	e24dd014 	sub	sp, sp, #20
     13c:	e50b0010 	str	r0, [fp, #-16]
     140:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     144:	e51b3010 	ldr	r3, [fp, #-16]
     148:	e50b3008 	str	r3, [fp, #-8]
     14c:	e1a00000 	nop			@ (mov r0, r0)
     150:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     154:	e2823001 	add	r3, r2, #1
     158:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     15c:	e51b3010 	ldr	r3, [fp, #-16]
     160:	e2831001 	add	r1, r3, #1
     164:	e50b1010 	str	r1, [fp, #-16]
     168:	e5d22000 	ldrb	r2, [r2]
     16c:	e5c32000 	strb	r2, [r3]
     170:	e5d33000 	ldrb	r3, [r3]
     174:	e3530000 	cmp	r3, #0
     178:	1afffff4 	bne	150 <strcpy+0x20>
     17c:	e51b3008 	ldr	r3, [fp, #-8]
     180:	e1a00003 	mov	r0, r3
     184:	e28bd000 	add	sp, fp, #0
     188:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     18c:	e12fff1e 	bx	lr

00000190 <strcmp>:
     190:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     194:	e28db000 	add	fp, sp, #0
     198:	e24dd00c 	sub	sp, sp, #12
     19c:	e50b0008 	str	r0, [fp, #-8]
     1a0:	e50b100c 	str	r1, [fp, #-12]
     1a4:	ea000005 	b	1c0 <strcmp+0x30>
     1a8:	e51b3008 	ldr	r3, [fp, #-8]
     1ac:	e2833001 	add	r3, r3, #1
     1b0:	e50b3008 	str	r3, [fp, #-8]
     1b4:	e51b300c 	ldr	r3, [fp, #-12]
     1b8:	e2833001 	add	r3, r3, #1
     1bc:	e50b300c 	str	r3, [fp, #-12]
     1c0:	e51b3008 	ldr	r3, [fp, #-8]
     1c4:	e5d33000 	ldrb	r3, [r3]
     1c8:	e3530000 	cmp	r3, #0
     1cc:	0a000005 	beq	1e8 <strcmp+0x58>
     1d0:	e51b3008 	ldr	r3, [fp, #-8]
     1d4:	e5d32000 	ldrb	r2, [r3]
     1d8:	e51b300c 	ldr	r3, [fp, #-12]
     1dc:	e5d33000 	ldrb	r3, [r3]
     1e0:	e1520003 	cmp	r2, r3
     1e4:	0affffef 	beq	1a8 <strcmp+0x18>
     1e8:	e51b3008 	ldr	r3, [fp, #-8]
     1ec:	e5d33000 	ldrb	r3, [r3]
     1f0:	e1a02003 	mov	r2, r3
     1f4:	e51b300c 	ldr	r3, [fp, #-12]
     1f8:	e5d33000 	ldrb	r3, [r3]
     1fc:	e0423003 	sub	r3, r2, r3
     200:	e1a00003 	mov	r0, r3
     204:	e28bd000 	add	sp, fp, #0
     208:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     20c:	e12fff1e 	bx	lr

00000210 <strlen>:
     210:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     214:	e28db000 	add	fp, sp, #0
     218:	e24dd014 	sub	sp, sp, #20
     21c:	e50b0010 	str	r0, [fp, #-16]
     220:	e3a03000 	mov	r3, #0
     224:	e50b3008 	str	r3, [fp, #-8]
     228:	ea000002 	b	238 <strlen+0x28>
     22c:	e51b3008 	ldr	r3, [fp, #-8]
     230:	e2833001 	add	r3, r3, #1
     234:	e50b3008 	str	r3, [fp, #-8]
     238:	e51b3008 	ldr	r3, [fp, #-8]
     23c:	e51b2010 	ldr	r2, [fp, #-16]
     240:	e0823003 	add	r3, r2, r3
     244:	e5d33000 	ldrb	r3, [r3]
     248:	e3530000 	cmp	r3, #0
     24c:	1afffff6 	bne	22c <strlen+0x1c>
     250:	e51b3008 	ldr	r3, [fp, #-8]
     254:	e1a00003 	mov	r0, r3
     258:	e28bd000 	add	sp, fp, #0
     25c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     260:	e12fff1e 	bx	lr

00000264 <memset>:
     264:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     268:	e28db000 	add	fp, sp, #0
     26c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     270:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     274:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     278:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     27c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     280:	e50b3008 	str	r3, [fp, #-8]
     284:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     288:	e54b300d 	strb	r3, [fp, #-13]
     28c:	e55b200d 	ldrb	r2, [fp, #-13]
     290:	e1a03002 	mov	r3, r2
     294:	e1a03403 	lsl	r3, r3, #8
     298:	e0833002 	add	r3, r3, r2
     29c:	e1a03803 	lsl	r3, r3, #16
     2a0:	e1a02003 	mov	r2, r3
     2a4:	e55b300d 	ldrb	r3, [fp, #-13]
     2a8:	e1a03403 	lsl	r3, r3, #8
     2ac:	e1822003 	orr	r2, r2, r3
     2b0:	e55b300d 	ldrb	r3, [fp, #-13]
     2b4:	e1823003 	orr	r3, r2, r3
     2b8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     2bc:	ea000008 	b	2e4 <memset+0x80>
     2c0:	e51b3008 	ldr	r3, [fp, #-8]
     2c4:	e55b200d 	ldrb	r2, [fp, #-13]
     2c8:	e5c32000 	strb	r2, [r3]
     2cc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2d0:	e2433001 	sub	r3, r3, #1
     2d4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2d8:	e51b3008 	ldr	r3, [fp, #-8]
     2dc:	e2833001 	add	r3, r3, #1
     2e0:	e50b3008 	str	r3, [fp, #-8]
     2e4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2e8:	e3530000 	cmp	r3, #0
     2ec:	0a000003 	beq	300 <memset+0x9c>
     2f0:	e51b3008 	ldr	r3, [fp, #-8]
     2f4:	e2033003 	and	r3, r3, #3
     2f8:	e3530000 	cmp	r3, #0
     2fc:	1affffef 	bne	2c0 <memset+0x5c>
     300:	e51b3008 	ldr	r3, [fp, #-8]
     304:	e50b300c 	str	r3, [fp, #-12]
     308:	ea000008 	b	330 <memset+0xcc>
     30c:	e51b300c 	ldr	r3, [fp, #-12]
     310:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     314:	e5832000 	str	r2, [r3]
     318:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     31c:	e2433004 	sub	r3, r3, #4
     320:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     324:	e51b300c 	ldr	r3, [fp, #-12]
     328:	e2833004 	add	r3, r3, #4
     32c:	e50b300c 	str	r3, [fp, #-12]
     330:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     334:	e3530003 	cmp	r3, #3
     338:	8afffff3 	bhi	30c <memset+0xa8>
     33c:	e51b300c 	ldr	r3, [fp, #-12]
     340:	e50b3008 	str	r3, [fp, #-8]
     344:	ea000008 	b	36c <memset+0x108>
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
     374:	1afffff3 	bne	348 <memset+0xe4>
     378:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     37c:	e1a00003 	mov	r0, r3
     380:	e28bd000 	add	sp, fp, #0
     384:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     388:	e12fff1e 	bx	lr

0000038c <strchr>:
     38c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     390:	e28db000 	add	fp, sp, #0
     394:	e24dd00c 	sub	sp, sp, #12
     398:	e50b0008 	str	r0, [fp, #-8]
     39c:	e1a03001 	mov	r3, r1
     3a0:	e54b3009 	strb	r3, [fp, #-9]
     3a4:	ea000009 	b	3d0 <strchr+0x44>
     3a8:	e51b3008 	ldr	r3, [fp, #-8]
     3ac:	e5d33000 	ldrb	r3, [r3]
     3b0:	e55b2009 	ldrb	r2, [fp, #-9]
     3b4:	e1520003 	cmp	r2, r3
     3b8:	1a000001 	bne	3c4 <strchr+0x38>
     3bc:	e51b3008 	ldr	r3, [fp, #-8]
     3c0:	ea000007 	b	3e4 <strchr+0x58>
     3c4:	e51b3008 	ldr	r3, [fp, #-8]
     3c8:	e2833001 	add	r3, r3, #1
     3cc:	e50b3008 	str	r3, [fp, #-8]
     3d0:	e51b3008 	ldr	r3, [fp, #-8]
     3d4:	e5d33000 	ldrb	r3, [r3]
     3d8:	e3530000 	cmp	r3, #0
     3dc:	1afffff1 	bne	3a8 <strchr+0x1c>
     3e0:	e3a03000 	mov	r3, #0
     3e4:	e1a00003 	mov	r0, r3
     3e8:	e28bd000 	add	sp, fp, #0
     3ec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3f0:	e12fff1e 	bx	lr

000003f4 <gets>:
     3f4:	e92d4800 	push	{fp, lr}
     3f8:	e28db004 	add	fp, sp, #4
     3fc:	e24dd018 	sub	sp, sp, #24
     400:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     404:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     408:	e3a03000 	mov	r3, #0
     40c:	e50b3008 	str	r3, [fp, #-8]
     410:	ea000016 	b	470 <gets+0x7c>
     414:	e24b300d 	sub	r3, fp, #13
     418:	e3a02001 	mov	r2, #1
     41c:	e1a01003 	mov	r1, r3
     420:	e3a00000 	mov	r0, #0
     424:	eb000146 	bl	944 <read>
     428:	e50b000c 	str	r0, [fp, #-12]
     42c:	e51b300c 	ldr	r3, [fp, #-12]
     430:	e3530000 	cmp	r3, #0
     434:	da000013 	ble	488 <gets+0x94>
     438:	e51b3008 	ldr	r3, [fp, #-8]
     43c:	e2832001 	add	r2, r3, #1
     440:	e50b2008 	str	r2, [fp, #-8]
     444:	e1a02003 	mov	r2, r3
     448:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     44c:	e0833002 	add	r3, r3, r2
     450:	e55b200d 	ldrb	r2, [fp, #-13]
     454:	e5c32000 	strb	r2, [r3]
     458:	e55b300d 	ldrb	r3, [fp, #-13]
     45c:	e353000a 	cmp	r3, #10
     460:	0a000009 	beq	48c <gets+0x98>
     464:	e55b300d 	ldrb	r3, [fp, #-13]
     468:	e353000d 	cmp	r3, #13
     46c:	0a000006 	beq	48c <gets+0x98>
     470:	e51b3008 	ldr	r3, [fp, #-8]
     474:	e2833001 	add	r3, r3, #1
     478:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     47c:	e1520003 	cmp	r2, r3
     480:	caffffe3 	bgt	414 <gets+0x20>
     484:	ea000000 	b	48c <gets+0x98>
     488:	e1a00000 	nop			@ (mov r0, r0)
     48c:	e51b3008 	ldr	r3, [fp, #-8]
     490:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     494:	e0823003 	add	r3, r2, r3
     498:	e3a02000 	mov	r2, #0
     49c:	e5c32000 	strb	r2, [r3]
     4a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4a4:	e1a00003 	mov	r0, r3
     4a8:	e24bd004 	sub	sp, fp, #4
     4ac:	e8bd8800 	pop	{fp, pc}

000004b0 <stat>:
     4b0:	e92d4800 	push	{fp, lr}
     4b4:	e28db004 	add	fp, sp, #4
     4b8:	e24dd010 	sub	sp, sp, #16
     4bc:	e50b0010 	str	r0, [fp, #-16]
     4c0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4c4:	e3a01000 	mov	r1, #0
     4c8:	e51b0010 	ldr	r0, [fp, #-16]
     4cc:	eb000149 	bl	9f8 <open>
     4d0:	e50b0008 	str	r0, [fp, #-8]
     4d4:	e51b3008 	ldr	r3, [fp, #-8]
     4d8:	e3530000 	cmp	r3, #0
     4dc:	aa000001 	bge	4e8 <stat+0x38>
     4e0:	e3e03000 	mvn	r3, #0
     4e4:	ea000006 	b	504 <stat+0x54>
     4e8:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     4ec:	e51b0008 	ldr	r0, [fp, #-8]
     4f0:	eb00015b 	bl	a64 <fstat>
     4f4:	e50b000c 	str	r0, [fp, #-12]
     4f8:	e51b0008 	ldr	r0, [fp, #-8]
     4fc:	eb000122 	bl	98c <close>
     500:	e51b300c 	ldr	r3, [fp, #-12]
     504:	e1a00003 	mov	r0, r3
     508:	e24bd004 	sub	sp, fp, #4
     50c:	e8bd8800 	pop	{fp, pc}

00000510 <atoi>:
     510:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     514:	e28db000 	add	fp, sp, #0
     518:	e24dd014 	sub	sp, sp, #20
     51c:	e50b0010 	str	r0, [fp, #-16]
     520:	e3a03000 	mov	r3, #0
     524:	e50b3008 	str	r3, [fp, #-8]
     528:	ea00000c 	b	560 <atoi+0x50>
     52c:	e51b2008 	ldr	r2, [fp, #-8]
     530:	e1a03002 	mov	r3, r2
     534:	e1a03103 	lsl	r3, r3, #2
     538:	e0833002 	add	r3, r3, r2
     53c:	e1a03083 	lsl	r3, r3, #1
     540:	e1a01003 	mov	r1, r3
     544:	e51b3010 	ldr	r3, [fp, #-16]
     548:	e2832001 	add	r2, r3, #1
     54c:	e50b2010 	str	r2, [fp, #-16]
     550:	e5d33000 	ldrb	r3, [r3]
     554:	e0813003 	add	r3, r1, r3
     558:	e2433030 	sub	r3, r3, #48	@ 0x30
     55c:	e50b3008 	str	r3, [fp, #-8]
     560:	e51b3010 	ldr	r3, [fp, #-16]
     564:	e5d33000 	ldrb	r3, [r3]
     568:	e353002f 	cmp	r3, #47	@ 0x2f
     56c:	9a000003 	bls	580 <atoi+0x70>
     570:	e51b3010 	ldr	r3, [fp, #-16]
     574:	e5d33000 	ldrb	r3, [r3]
     578:	e3530039 	cmp	r3, #57	@ 0x39
     57c:	9affffea 	bls	52c <atoi+0x1c>
     580:	e51b3010 	ldr	r3, [fp, #-16]
     584:	e5d33000 	ldrb	r3, [r3]
     588:	e3530000 	cmp	r3, #0
     58c:	1a000001 	bne	598 <atoi+0x88>
     590:	e51b3008 	ldr	r3, [fp, #-8]
     594:	ea000000 	b	59c <atoi+0x8c>
     598:	e3e03000 	mvn	r3, #0
     59c:	e1a00003 	mov	r0, r3
     5a0:	e28bd000 	add	sp, fp, #0
     5a4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5a8:	e12fff1e 	bx	lr

000005ac <memmove>:
     5ac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5b0:	e28db000 	add	fp, sp, #0
     5b4:	e24dd01c 	sub	sp, sp, #28
     5b8:	e50b0010 	str	r0, [fp, #-16]
     5bc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5c0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5c4:	e51b3010 	ldr	r3, [fp, #-16]
     5c8:	e50b3008 	str	r3, [fp, #-8]
     5cc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     5d0:	e50b300c 	str	r3, [fp, #-12]
     5d4:	ea000007 	b	5f8 <memmove+0x4c>
     5d8:	e51b200c 	ldr	r2, [fp, #-12]
     5dc:	e2823001 	add	r3, r2, #1
     5e0:	e50b300c 	str	r3, [fp, #-12]
     5e4:	e51b3008 	ldr	r3, [fp, #-8]
     5e8:	e2831001 	add	r1, r3, #1
     5ec:	e50b1008 	str	r1, [fp, #-8]
     5f0:	e5d22000 	ldrb	r2, [r2]
     5f4:	e5c32000 	strb	r2, [r3]
     5f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5fc:	e2432001 	sub	r2, r3, #1
     600:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     604:	e3530000 	cmp	r3, #0
     608:	cafffff2 	bgt	5d8 <memmove+0x2c>
     60c:	e51b3010 	ldr	r3, [fp, #-16]
     610:	e1a00003 	mov	r0, r3
     614:	e28bd000 	add	sp, fp, #0
     618:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     61c:	e12fff1e 	bx	lr

00000620 <initiateLock>:
     620:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     624:	e28db000 	add	fp, sp, #0
     628:	e24dd00c 	sub	sp, sp, #12
     62c:	e50b0008 	str	r0, [fp, #-8]
     630:	e51b3008 	ldr	r3, [fp, #-8]
     634:	e3a02000 	mov	r2, #0
     638:	e5832000 	str	r2, [r3]
     63c:	e51b3008 	ldr	r3, [fp, #-8]
     640:	e3a02001 	mov	r2, #1
     644:	e5832004 	str	r2, [r3, #4]
     648:	e1a00000 	nop			@ (mov r0, r0)
     64c:	e28bd000 	add	sp, fp, #0
     650:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     654:	e12fff1e 	bx	lr

00000658 <acquireLock>:
     658:	e92d4800 	push	{fp, lr}
     65c:	e28db004 	add	fp, sp, #4
     660:	e24dd008 	sub	sp, sp, #8
     664:	e50b0008 	str	r0, [fp, #-8]
     668:	ea000001 	b	674 <acquireLock+0x1c>
     66c:	e3a00001 	mov	r0, #1
     670:	eb00013a 	bl	b60 <sleep>
     674:	e51b2008 	ldr	r2, [fp, #-8]
     678:	e3a01001 	mov	r1, #1
     67c:	e1923f9f 	ldrex	r3, [r2]
     680:	e1820f91 	strex	r0, r1, [r2]
     684:	e3500000 	cmp	r0, #0
     688:	1afffffb 	bne	67c <acquireLock+0x24>
     68c:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     690:	e3530001 	cmp	r3, #1
     694:	0afffff4 	beq	66c <acquireLock+0x14>
     698:	e1a00000 	nop			@ (mov r0, r0)
     69c:	e1a00000 	nop			@ (mov r0, r0)
     6a0:	e24bd004 	sub	sp, fp, #4
     6a4:	e8bd8800 	pop	{fp, pc}

000006a8 <releaseLock>:
     6a8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6ac:	e28db000 	add	fp, sp, #0
     6b0:	e24dd00c 	sub	sp, sp, #12
     6b4:	e50b0008 	str	r0, [fp, #-8]
     6b8:	e51b3008 	ldr	r3, [fp, #-8]
     6bc:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     6c0:	e3a02000 	mov	r2, #0
     6c4:	e5832000 	str	r2, [r3]
     6c8:	e1a00000 	nop			@ (mov r0, r0)
     6cc:	e28bd000 	add	sp, fp, #0
     6d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6d4:	e12fff1e 	bx	lr

000006d8 <initiateCondVar>:
     6d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6dc:	e28db000 	add	fp, sp, #0
     6e0:	e24dd00c 	sub	sp, sp, #12
     6e4:	e50b0008 	str	r0, [fp, #-8]
     6e8:	e51b3008 	ldr	r3, [fp, #-8]
     6ec:	e3a02000 	mov	r2, #0
     6f0:	e5832000 	str	r2, [r3]
     6f4:	e51b3008 	ldr	r3, [fp, #-8]
     6f8:	e3a02001 	mov	r2, #1
     6fc:	e5832004 	str	r2, [r3, #4]
     700:	e1a00000 	nop			@ (mov r0, r0)
     704:	e28bd000 	add	sp, fp, #0
     708:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     70c:	e12fff1e 	bx	lr

00000710 <condWait>:
     710:	e92d4800 	push	{fp, lr}
     714:	e28db004 	add	fp, sp, #4
     718:	e24dd008 	sub	sp, sp, #8
     71c:	e50b0008 	str	r0, [fp, #-8]
     720:	e50b100c 	str	r1, [fp, #-12]
     724:	e51b000c 	ldr	r0, [fp, #-12]
     728:	ebffffde 	bl	6a8 <releaseLock>
     72c:	e51b3008 	ldr	r3, [fp, #-8]
     730:	e5933000 	ldr	r3, [r3]
     734:	e1a00003 	mov	r0, r3
     738:	eb00017d 	bl	d34 <sleepChan>
     73c:	e51b000c 	ldr	r0, [fp, #-12]
     740:	ebffffc4 	bl	658 <acquireLock>
     744:	e1a00000 	nop			@ (mov r0, r0)
     748:	e24bd004 	sub	sp, fp, #4
     74c:	e8bd8800 	pop	{fp, pc}

00000750 <broadcast>:
     750:	e92d4800 	push	{fp, lr}
     754:	e28db004 	add	fp, sp, #4
     758:	e24dd008 	sub	sp, sp, #8
     75c:	e50b0008 	str	r0, [fp, #-8]
     760:	e51b3008 	ldr	r3, [fp, #-8]
     764:	e5933000 	ldr	r3, [r3]
     768:	e1a00003 	mov	r0, r3
     76c:	eb000182 	bl	d7c <sigChan>
     770:	e1a00000 	nop			@ (mov r0, r0)
     774:	e24bd004 	sub	sp, fp, #4
     778:	e8bd8800 	pop	{fp, pc}

0000077c <semInit>:
     77c:	e92d4800 	push	{fp, lr}
     780:	e28db004 	add	fp, sp, #4
     784:	e24dd008 	sub	sp, sp, #8
     788:	e50b0008 	str	r0, [fp, #-8]
     78c:	e50b100c 	str	r1, [fp, #-12]
     790:	e51b3008 	ldr	r3, [fp, #-8]
     794:	e51b200c 	ldr	r2, [fp, #-12]
     798:	e5832000 	str	r2, [r3]
     79c:	e51b3008 	ldr	r3, [fp, #-8]
     7a0:	e2833004 	add	r3, r3, #4
     7a4:	e1a00003 	mov	r0, r3
     7a8:	ebffff9c 	bl	620 <initiateLock>
     7ac:	e51b3008 	ldr	r3, [fp, #-8]
     7b0:	e283300c 	add	r3, r3, #12
     7b4:	e1a00003 	mov	r0, r3
     7b8:	ebffffc6 	bl	6d8 <initiateCondVar>
     7bc:	e51b3008 	ldr	r3, [fp, #-8]
     7c0:	e3a02001 	mov	r2, #1
     7c4:	e5832014 	str	r2, [r3, #20]
     7c8:	e1a00000 	nop			@ (mov r0, r0)
     7cc:	e24bd004 	sub	sp, fp, #4
     7d0:	e8bd8800 	pop	{fp, pc}

000007d4 <semUp>:
     7d4:	e92d4800 	push	{fp, lr}
     7d8:	e28db004 	add	fp, sp, #4
     7dc:	e24dd008 	sub	sp, sp, #8
     7e0:	e50b0008 	str	r0, [fp, #-8]
     7e4:	e51b3008 	ldr	r3, [fp, #-8]
     7e8:	e2833004 	add	r3, r3, #4
     7ec:	e1a00003 	mov	r0, r3
     7f0:	ebffff98 	bl	658 <acquireLock>
     7f4:	e51b3008 	ldr	r3, [fp, #-8]
     7f8:	e5933000 	ldr	r3, [r3]
     7fc:	e2832001 	add	r2, r3, #1
     800:	e51b3008 	ldr	r3, [fp, #-8]
     804:	e5832000 	str	r2, [r3]
     808:	e51b3008 	ldr	r3, [fp, #-8]
     80c:	e283300c 	add	r3, r3, #12
     810:	e1a00003 	mov	r0, r3
     814:	ebffffcd 	bl	750 <broadcast>
     818:	e51b3008 	ldr	r3, [fp, #-8]
     81c:	e2833004 	add	r3, r3, #4
     820:	e1a00003 	mov	r0, r3
     824:	ebffff9f 	bl	6a8 <releaseLock>
     828:	e1a00000 	nop			@ (mov r0, r0)
     82c:	e24bd004 	sub	sp, fp, #4
     830:	e8bd8800 	pop	{fp, pc}

00000834 <semDown>:
     834:	e92d4800 	push	{fp, lr}
     838:	e28db004 	add	fp, sp, #4
     83c:	e24dd008 	sub	sp, sp, #8
     840:	e50b0008 	str	r0, [fp, #-8]
     844:	e51b3008 	ldr	r3, [fp, #-8]
     848:	e2833004 	add	r3, r3, #4
     84c:	e1a00003 	mov	r0, r3
     850:	ebffff80 	bl	658 <acquireLock>
     854:	ea000006 	b	874 <semDown+0x40>
     858:	e51b3008 	ldr	r3, [fp, #-8]
     85c:	e283200c 	add	r2, r3, #12
     860:	e51b3008 	ldr	r3, [fp, #-8]
     864:	e2833004 	add	r3, r3, #4
     868:	e1a01003 	mov	r1, r3
     86c:	e1a00002 	mov	r0, r2
     870:	ebffffa6 	bl	710 <condWait>
     874:	e51b3008 	ldr	r3, [fp, #-8]
     878:	e5933000 	ldr	r3, [r3]
     87c:	e3530000 	cmp	r3, #0
     880:	dafffff4 	ble	858 <semDown+0x24>
     884:	e51b3008 	ldr	r3, [fp, #-8]
     888:	e5933000 	ldr	r3, [r3]
     88c:	e2432001 	sub	r2, r3, #1
     890:	e51b3008 	ldr	r3, [fp, #-8]
     894:	e5832000 	str	r2, [r3]
     898:	e51b3008 	ldr	r3, [fp, #-8]
     89c:	e2833004 	add	r3, r3, #4
     8a0:	e1a00003 	mov	r0, r3
     8a4:	ebffff7f 	bl	6a8 <releaseLock>
     8a8:	e1a00000 	nop			@ (mov r0, r0)
     8ac:	e24bd004 	sub	sp, fp, #4
     8b0:	e8bd8800 	pop	{fp, pc}

000008b4 <fork>:
     8b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8b8:	e1a04003 	mov	r4, r3
     8bc:	e1a03002 	mov	r3, r2
     8c0:	e1a02001 	mov	r2, r1
     8c4:	e1a01000 	mov	r1, r0
     8c8:	e3a00001 	mov	r0, #1
     8cc:	ef000000 	svc	0x00000000
     8d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8d4:	e12fff1e 	bx	lr

000008d8 <exit>:
     8d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8dc:	e1a04003 	mov	r4, r3
     8e0:	e1a03002 	mov	r3, r2
     8e4:	e1a02001 	mov	r2, r1
     8e8:	e1a01000 	mov	r1, r0
     8ec:	e3a00002 	mov	r0, #2
     8f0:	ef000000 	svc	0x00000000
     8f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8f8:	e12fff1e 	bx	lr

000008fc <wait>:
     8fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     900:	e1a04003 	mov	r4, r3
     904:	e1a03002 	mov	r3, r2
     908:	e1a02001 	mov	r2, r1
     90c:	e1a01000 	mov	r1, r0
     910:	e3a00003 	mov	r0, #3
     914:	ef000000 	svc	0x00000000
     918:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     91c:	e12fff1e 	bx	lr

00000920 <pipe>:
     920:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     924:	e1a04003 	mov	r4, r3
     928:	e1a03002 	mov	r3, r2
     92c:	e1a02001 	mov	r2, r1
     930:	e1a01000 	mov	r1, r0
     934:	e3a00004 	mov	r0, #4
     938:	ef000000 	svc	0x00000000
     93c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     940:	e12fff1e 	bx	lr

00000944 <read>:
     944:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     948:	e1a04003 	mov	r4, r3
     94c:	e1a03002 	mov	r3, r2
     950:	e1a02001 	mov	r2, r1
     954:	e1a01000 	mov	r1, r0
     958:	e3a00005 	mov	r0, #5
     95c:	ef000000 	svc	0x00000000
     960:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     964:	e12fff1e 	bx	lr

00000968 <write>:
     968:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     96c:	e1a04003 	mov	r4, r3
     970:	e1a03002 	mov	r3, r2
     974:	e1a02001 	mov	r2, r1
     978:	e1a01000 	mov	r1, r0
     97c:	e3a00010 	mov	r0, #16
     980:	ef000000 	svc	0x00000000
     984:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     988:	e12fff1e 	bx	lr

0000098c <close>:
     98c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     990:	e1a04003 	mov	r4, r3
     994:	e1a03002 	mov	r3, r2
     998:	e1a02001 	mov	r2, r1
     99c:	e1a01000 	mov	r1, r0
     9a0:	e3a00015 	mov	r0, #21
     9a4:	ef000000 	svc	0x00000000
     9a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9ac:	e12fff1e 	bx	lr

000009b0 <kill>:
     9b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9b4:	e1a04003 	mov	r4, r3
     9b8:	e1a03002 	mov	r3, r2
     9bc:	e1a02001 	mov	r2, r1
     9c0:	e1a01000 	mov	r1, r0
     9c4:	e3a00006 	mov	r0, #6
     9c8:	ef000000 	svc	0x00000000
     9cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9d0:	e12fff1e 	bx	lr

000009d4 <exec>:
     9d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9d8:	e1a04003 	mov	r4, r3
     9dc:	e1a03002 	mov	r3, r2
     9e0:	e1a02001 	mov	r2, r1
     9e4:	e1a01000 	mov	r1, r0
     9e8:	e3a00007 	mov	r0, #7
     9ec:	ef000000 	svc	0x00000000
     9f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9f4:	e12fff1e 	bx	lr

000009f8 <open>:
     9f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9fc:	e1a04003 	mov	r4, r3
     a00:	e1a03002 	mov	r3, r2
     a04:	e1a02001 	mov	r2, r1
     a08:	e1a01000 	mov	r1, r0
     a0c:	e3a0000f 	mov	r0, #15
     a10:	ef000000 	svc	0x00000000
     a14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a18:	e12fff1e 	bx	lr

00000a1c <mknod>:
     a1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a20:	e1a04003 	mov	r4, r3
     a24:	e1a03002 	mov	r3, r2
     a28:	e1a02001 	mov	r2, r1
     a2c:	e1a01000 	mov	r1, r0
     a30:	e3a00011 	mov	r0, #17
     a34:	ef000000 	svc	0x00000000
     a38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a3c:	e12fff1e 	bx	lr

00000a40 <unlink>:
     a40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a44:	e1a04003 	mov	r4, r3
     a48:	e1a03002 	mov	r3, r2
     a4c:	e1a02001 	mov	r2, r1
     a50:	e1a01000 	mov	r1, r0
     a54:	e3a00012 	mov	r0, #18
     a58:	ef000000 	svc	0x00000000
     a5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a60:	e12fff1e 	bx	lr

00000a64 <fstat>:
     a64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a68:	e1a04003 	mov	r4, r3
     a6c:	e1a03002 	mov	r3, r2
     a70:	e1a02001 	mov	r2, r1
     a74:	e1a01000 	mov	r1, r0
     a78:	e3a00008 	mov	r0, #8
     a7c:	ef000000 	svc	0x00000000
     a80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a84:	e12fff1e 	bx	lr

00000a88 <link>:
     a88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a8c:	e1a04003 	mov	r4, r3
     a90:	e1a03002 	mov	r3, r2
     a94:	e1a02001 	mov	r2, r1
     a98:	e1a01000 	mov	r1, r0
     a9c:	e3a00013 	mov	r0, #19
     aa0:	ef000000 	svc	0x00000000
     aa4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aa8:	e12fff1e 	bx	lr

00000aac <mkdir>:
     aac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ab0:	e1a04003 	mov	r4, r3
     ab4:	e1a03002 	mov	r3, r2
     ab8:	e1a02001 	mov	r2, r1
     abc:	e1a01000 	mov	r1, r0
     ac0:	e3a00014 	mov	r0, #20
     ac4:	ef000000 	svc	0x00000000
     ac8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     acc:	e12fff1e 	bx	lr

00000ad0 <chdir>:
     ad0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad4:	e1a04003 	mov	r4, r3
     ad8:	e1a03002 	mov	r3, r2
     adc:	e1a02001 	mov	r2, r1
     ae0:	e1a01000 	mov	r1, r0
     ae4:	e3a00009 	mov	r0, #9
     ae8:	ef000000 	svc	0x00000000
     aec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     af0:	e12fff1e 	bx	lr

00000af4 <dup>:
     af4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     af8:	e1a04003 	mov	r4, r3
     afc:	e1a03002 	mov	r3, r2
     b00:	e1a02001 	mov	r2, r1
     b04:	e1a01000 	mov	r1, r0
     b08:	e3a0000a 	mov	r0, #10
     b0c:	ef000000 	svc	0x00000000
     b10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b14:	e12fff1e 	bx	lr

00000b18 <getpid>:
     b18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b1c:	e1a04003 	mov	r4, r3
     b20:	e1a03002 	mov	r3, r2
     b24:	e1a02001 	mov	r2, r1
     b28:	e1a01000 	mov	r1, r0
     b2c:	e3a0000b 	mov	r0, #11
     b30:	ef000000 	svc	0x00000000
     b34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b38:	e12fff1e 	bx	lr

00000b3c <sbrk>:
     b3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b40:	e1a04003 	mov	r4, r3
     b44:	e1a03002 	mov	r3, r2
     b48:	e1a02001 	mov	r2, r1
     b4c:	e1a01000 	mov	r1, r0
     b50:	e3a0000c 	mov	r0, #12
     b54:	ef000000 	svc	0x00000000
     b58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b5c:	e12fff1e 	bx	lr

00000b60 <sleep>:
     b60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b64:	e1a04003 	mov	r4, r3
     b68:	e1a03002 	mov	r3, r2
     b6c:	e1a02001 	mov	r2, r1
     b70:	e1a01000 	mov	r1, r0
     b74:	e3a0000d 	mov	r0, #13
     b78:	ef000000 	svc	0x00000000
     b7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b80:	e12fff1e 	bx	lr

00000b84 <uptime>:
     b84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b88:	e1a04003 	mov	r4, r3
     b8c:	e1a03002 	mov	r3, r2
     b90:	e1a02001 	mov	r2, r1
     b94:	e1a01000 	mov	r1, r0
     b98:	e3a0000e 	mov	r0, #14
     b9c:	ef000000 	svc	0x00000000
     ba0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba4:	e12fff1e 	bx	lr

00000ba8 <getprocs>:
     ba8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bac:	e1a04003 	mov	r4, r3
     bb0:	e1a03002 	mov	r3, r2
     bb4:	e1a02001 	mov	r2, r1
     bb8:	e1a01000 	mov	r1, r0
     bbc:	e3a00016 	mov	r0, #22
     bc0:	ef000000 	svc	0x00000000
     bc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc8:	e12fff1e 	bx	lr

00000bcc <settickets>:
     bcc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bd0:	e1a04003 	mov	r4, r3
     bd4:	e1a03002 	mov	r3, r2
     bd8:	e1a02001 	mov	r2, r1
     bdc:	e1a01000 	mov	r1, r0
     be0:	e3a00017 	mov	r0, #23
     be4:	ef000000 	svc	0x00000000
     be8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bec:	e12fff1e 	bx	lr

00000bf0 <srand>:
     bf0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf4:	e1a04003 	mov	r4, r3
     bf8:	e1a03002 	mov	r3, r2
     bfc:	e1a02001 	mov	r2, r1
     c00:	e1a01000 	mov	r1, r0
     c04:	e3a00018 	mov	r0, #24
     c08:	ef000000 	svc	0x00000000
     c0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c10:	e12fff1e 	bx	lr

00000c14 <getpinfo>:
     c14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c18:	e1a04003 	mov	r4, r3
     c1c:	e1a03002 	mov	r3, r2
     c20:	e1a02001 	mov	r2, r1
     c24:	e1a01000 	mov	r1, r0
     c28:	e3a00019 	mov	r0, #25
     c2c:	ef000000 	svc	0x00000000
     c30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c34:	e12fff1e 	bx	lr

00000c38 <dumppagetable>:
     c38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c3c:	e1a04003 	mov	r4, r3
     c40:	e1a03002 	mov	r3, r2
     c44:	e1a02001 	mov	r2, r1
     c48:	e1a01000 	mov	r1, r0
     c4c:	e3a0001a 	mov	r0, #26
     c50:	ef000000 	svc	0x00000000
     c54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c58:	e12fff1e 	bx	lr

00000c5c <thread_create>:
     c5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c60:	e1a04003 	mov	r4, r3
     c64:	e1a03002 	mov	r3, r2
     c68:	e1a02001 	mov	r2, r1
     c6c:	e1a01000 	mov	r1, r0
     c70:	e3a0001b 	mov	r0, #27
     c74:	ef000000 	svc	0x00000000
     c78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c7c:	e12fff1e 	bx	lr

00000c80 <thread_exit>:
     c80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c84:	e1a04003 	mov	r4, r3
     c88:	e1a03002 	mov	r3, r2
     c8c:	e1a02001 	mov	r2, r1
     c90:	e1a01000 	mov	r1, r0
     c94:	e3a0001c 	mov	r0, #28
     c98:	ef000000 	svc	0x00000000
     c9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ca0:	e12fff1e 	bx	lr

00000ca4 <thread_join>:
     ca4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca8:	e1a04003 	mov	r4, r3
     cac:	e1a03002 	mov	r3, r2
     cb0:	e1a02001 	mov	r2, r1
     cb4:	e1a01000 	mov	r1, r0
     cb8:	e3a0001d 	mov	r0, #29
     cbc:	ef000000 	svc	0x00000000
     cc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc4:	e12fff1e 	bx	lr

00000cc8 <waitpid>:
     cc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ccc:	e1a04003 	mov	r4, r3
     cd0:	e1a03002 	mov	r3, r2
     cd4:	e1a02001 	mov	r2, r1
     cd8:	e1a01000 	mov	r1, r0
     cdc:	e3a0001e 	mov	r0, #30
     ce0:	ef000000 	svc	0x00000000
     ce4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce8:	e12fff1e 	bx	lr

00000cec <barrier_init>:
     cec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cf0:	e1a04003 	mov	r4, r3
     cf4:	e1a03002 	mov	r3, r2
     cf8:	e1a02001 	mov	r2, r1
     cfc:	e1a01000 	mov	r1, r0
     d00:	e3a0001f 	mov	r0, #31
     d04:	ef000000 	svc	0x00000000
     d08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d0c:	e12fff1e 	bx	lr

00000d10 <barrier_check>:
     d10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d14:	e1a04003 	mov	r4, r3
     d18:	e1a03002 	mov	r3, r2
     d1c:	e1a02001 	mov	r2, r1
     d20:	e1a01000 	mov	r1, r0
     d24:	e3a00020 	mov	r0, #32
     d28:	ef000000 	svc	0x00000000
     d2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d30:	e12fff1e 	bx	lr

00000d34 <sleepChan>:
     d34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d38:	e1a04003 	mov	r4, r3
     d3c:	e1a03002 	mov	r3, r2
     d40:	e1a02001 	mov	r2, r1
     d44:	e1a01000 	mov	r1, r0
     d48:	e3a00024 	mov	r0, #36	@ 0x24
     d4c:	ef000000 	svc	0x00000000
     d50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d54:	e12fff1e 	bx	lr

00000d58 <getChannel>:
     d58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d5c:	e1a04003 	mov	r4, r3
     d60:	e1a03002 	mov	r3, r2
     d64:	e1a02001 	mov	r2, r1
     d68:	e1a01000 	mov	r1, r0
     d6c:	e3a00025 	mov	r0, #37	@ 0x25
     d70:	ef000000 	svc	0x00000000
     d74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d78:	e12fff1e 	bx	lr

00000d7c <sigChan>:
     d7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d80:	e1a04003 	mov	r4, r3
     d84:	e1a03002 	mov	r3, r2
     d88:	e1a02001 	mov	r2, r1
     d8c:	e1a01000 	mov	r1, r0
     d90:	e3a00026 	mov	r0, #38	@ 0x26
     d94:	ef000000 	svc	0x00000000
     d98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d9c:	e12fff1e 	bx	lr

00000da0 <sigOneChan>:
     da0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da4:	e1a04003 	mov	r4, r3
     da8:	e1a03002 	mov	r3, r2
     dac:	e1a02001 	mov	r2, r1
     db0:	e1a01000 	mov	r1, r0
     db4:	e3a00027 	mov	r0, #39	@ 0x27
     db8:	ef000000 	svc	0x00000000
     dbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dc0:	e12fff1e 	bx	lr

00000dc4 <putc>:
     dc4:	e92d4800 	push	{fp, lr}
     dc8:	e28db004 	add	fp, sp, #4
     dcc:	e24dd008 	sub	sp, sp, #8
     dd0:	e50b0008 	str	r0, [fp, #-8]
     dd4:	e1a03001 	mov	r3, r1
     dd8:	e54b3009 	strb	r3, [fp, #-9]
     ddc:	e24b3009 	sub	r3, fp, #9
     de0:	e3a02001 	mov	r2, #1
     de4:	e1a01003 	mov	r1, r3
     de8:	e51b0008 	ldr	r0, [fp, #-8]
     dec:	ebfffedd 	bl	968 <write>
     df0:	e1a00000 	nop			@ (mov r0, r0)
     df4:	e24bd004 	sub	sp, fp, #4
     df8:	e8bd8800 	pop	{fp, pc}

00000dfc <printint>:
     dfc:	e92d4800 	push	{fp, lr}
     e00:	e28db004 	add	fp, sp, #4
     e04:	e24dd030 	sub	sp, sp, #48	@ 0x30
     e08:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     e0c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     e10:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     e14:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     e18:	e3a03000 	mov	r3, #0
     e1c:	e50b300c 	str	r3, [fp, #-12]
     e20:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     e24:	e3530000 	cmp	r3, #0
     e28:	0a000008 	beq	e50 <printint+0x54>
     e2c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e30:	e3530000 	cmp	r3, #0
     e34:	aa000005 	bge	e50 <printint+0x54>
     e38:	e3a03001 	mov	r3, #1
     e3c:	e50b300c 	str	r3, [fp, #-12]
     e40:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e44:	e2633000 	rsb	r3, r3, #0
     e48:	e50b3010 	str	r3, [fp, #-16]
     e4c:	ea000001 	b	e58 <printint+0x5c>
     e50:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e54:	e50b3010 	str	r3, [fp, #-16]
     e58:	e3a03000 	mov	r3, #0
     e5c:	e50b3008 	str	r3, [fp, #-8]
     e60:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     e64:	e51b3010 	ldr	r3, [fp, #-16]
     e68:	e1a01002 	mov	r1, r2
     e6c:	e1a00003 	mov	r0, r3
     e70:	eb0001d5 	bl	15cc <__aeabi_uidivmod>
     e74:	e1a03001 	mov	r3, r1
     e78:	e1a01003 	mov	r1, r3
     e7c:	e51b3008 	ldr	r3, [fp, #-8]
     e80:	e2832001 	add	r2, r3, #1
     e84:	e50b2008 	str	r2, [fp, #-8]
     e88:	e59f20a0 	ldr	r2, [pc, #160]	@ f30 <printint+0x134>
     e8c:	e7d22001 	ldrb	r2, [r2, r1]
     e90:	e2433004 	sub	r3, r3, #4
     e94:	e083300b 	add	r3, r3, fp
     e98:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     e9c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     ea0:	e1a01003 	mov	r1, r3
     ea4:	e51b0010 	ldr	r0, [fp, #-16]
     ea8:	eb00018a 	bl	14d8 <__udivsi3>
     eac:	e1a03000 	mov	r3, r0
     eb0:	e50b3010 	str	r3, [fp, #-16]
     eb4:	e51b3010 	ldr	r3, [fp, #-16]
     eb8:	e3530000 	cmp	r3, #0
     ebc:	1affffe7 	bne	e60 <printint+0x64>
     ec0:	e51b300c 	ldr	r3, [fp, #-12]
     ec4:	e3530000 	cmp	r3, #0
     ec8:	0a00000e 	beq	f08 <printint+0x10c>
     ecc:	e51b3008 	ldr	r3, [fp, #-8]
     ed0:	e2832001 	add	r2, r3, #1
     ed4:	e50b2008 	str	r2, [fp, #-8]
     ed8:	e2433004 	sub	r3, r3, #4
     edc:	e083300b 	add	r3, r3, fp
     ee0:	e3a0202d 	mov	r2, #45	@ 0x2d
     ee4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ee8:	ea000006 	b	f08 <printint+0x10c>
     eec:	e24b2020 	sub	r2, fp, #32
     ef0:	e51b3008 	ldr	r3, [fp, #-8]
     ef4:	e0823003 	add	r3, r2, r3
     ef8:	e5d33000 	ldrb	r3, [r3]
     efc:	e1a01003 	mov	r1, r3
     f00:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     f04:	ebffffae 	bl	dc4 <putc>
     f08:	e51b3008 	ldr	r3, [fp, #-8]
     f0c:	e2433001 	sub	r3, r3, #1
     f10:	e50b3008 	str	r3, [fp, #-8]
     f14:	e51b3008 	ldr	r3, [fp, #-8]
     f18:	e3530000 	cmp	r3, #0
     f1c:	aafffff2 	bge	eec <printint+0xf0>
     f20:	e1a00000 	nop			@ (mov r0, r0)
     f24:	e1a00000 	nop			@ (mov r0, r0)
     f28:	e24bd004 	sub	sp, fp, #4
     f2c:	e8bd8800 	pop	{fp, pc}
     f30:	0000165c 	.word	0x0000165c

00000f34 <printf>:
     f34:	e92d000e 	push	{r1, r2, r3}
     f38:	e92d4800 	push	{fp, lr}
     f3c:	e28db004 	add	fp, sp, #4
     f40:	e24dd024 	sub	sp, sp, #36	@ 0x24
     f44:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     f48:	e3a03000 	mov	r3, #0
     f4c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f50:	e28b3008 	add	r3, fp, #8
     f54:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f58:	e3a03000 	mov	r3, #0
     f5c:	e50b3010 	str	r3, [fp, #-16]
     f60:	ea000074 	b	1138 <printf+0x204>
     f64:	e59b2004 	ldr	r2, [fp, #4]
     f68:	e51b3010 	ldr	r3, [fp, #-16]
     f6c:	e0823003 	add	r3, r2, r3
     f70:	e5d33000 	ldrb	r3, [r3]
     f74:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     f78:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     f7c:	e3530000 	cmp	r3, #0
     f80:	1a00000b 	bne	fb4 <printf+0x80>
     f84:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f88:	e3530025 	cmp	r3, #37	@ 0x25
     f8c:	1a000002 	bne	f9c <printf+0x68>
     f90:	e3a03025 	mov	r3, #37	@ 0x25
     f94:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f98:	ea000063 	b	112c <printf+0x1f8>
     f9c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fa0:	e6ef3073 	uxtb	r3, r3
     fa4:	e1a01003 	mov	r1, r3
     fa8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fac:	ebffff84 	bl	dc4 <putc>
     fb0:	ea00005d 	b	112c <printf+0x1f8>
     fb4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     fb8:	e3530025 	cmp	r3, #37	@ 0x25
     fbc:	1a00005a 	bne	112c <printf+0x1f8>
     fc0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fc4:	e3530064 	cmp	r3, #100	@ 0x64
     fc8:	1a00000a 	bne	ff8 <printf+0xc4>
     fcc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fd0:	e5933000 	ldr	r3, [r3]
     fd4:	e1a01003 	mov	r1, r3
     fd8:	e3a03001 	mov	r3, #1
     fdc:	e3a0200a 	mov	r2, #10
     fe0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fe4:	ebffff84 	bl	dfc <printint>
     fe8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fec:	e2833004 	add	r3, r3, #4
     ff0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ff4:	ea00004a 	b	1124 <printf+0x1f0>
     ff8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ffc:	e3530078 	cmp	r3, #120	@ 0x78
    1000:	0a000002 	beq	1010 <printf+0xdc>
    1004:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1008:	e3530070 	cmp	r3, #112	@ 0x70
    100c:	1a00000a 	bne	103c <printf+0x108>
    1010:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1014:	e5933000 	ldr	r3, [r3]
    1018:	e1a01003 	mov	r1, r3
    101c:	e3a03000 	mov	r3, #0
    1020:	e3a02010 	mov	r2, #16
    1024:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1028:	ebffff73 	bl	dfc <printint>
    102c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1030:	e2833004 	add	r3, r3, #4
    1034:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1038:	ea000039 	b	1124 <printf+0x1f0>
    103c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1040:	e3530073 	cmp	r3, #115	@ 0x73
    1044:	1a000018 	bne	10ac <printf+0x178>
    1048:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    104c:	e5933000 	ldr	r3, [r3]
    1050:	e50b300c 	str	r3, [fp, #-12]
    1054:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1058:	e2833004 	add	r3, r3, #4
    105c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1060:	e51b300c 	ldr	r3, [fp, #-12]
    1064:	e3530000 	cmp	r3, #0
    1068:	1a00000a 	bne	1098 <printf+0x164>
    106c:	e59f30f4 	ldr	r3, [pc, #244]	@ 1168 <printf+0x234>
    1070:	e50b300c 	str	r3, [fp, #-12]
    1074:	ea000007 	b	1098 <printf+0x164>
    1078:	e51b300c 	ldr	r3, [fp, #-12]
    107c:	e5d33000 	ldrb	r3, [r3]
    1080:	e1a01003 	mov	r1, r3
    1084:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1088:	ebffff4d 	bl	dc4 <putc>
    108c:	e51b300c 	ldr	r3, [fp, #-12]
    1090:	e2833001 	add	r3, r3, #1
    1094:	e50b300c 	str	r3, [fp, #-12]
    1098:	e51b300c 	ldr	r3, [fp, #-12]
    109c:	e5d33000 	ldrb	r3, [r3]
    10a0:	e3530000 	cmp	r3, #0
    10a4:	1afffff3 	bne	1078 <printf+0x144>
    10a8:	ea00001d 	b	1124 <printf+0x1f0>
    10ac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10b0:	e3530063 	cmp	r3, #99	@ 0x63
    10b4:	1a000009 	bne	10e0 <printf+0x1ac>
    10b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10bc:	e5933000 	ldr	r3, [r3]
    10c0:	e6ef3073 	uxtb	r3, r3
    10c4:	e1a01003 	mov	r1, r3
    10c8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10cc:	ebffff3c 	bl	dc4 <putc>
    10d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10d4:	e2833004 	add	r3, r3, #4
    10d8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10dc:	ea000010 	b	1124 <printf+0x1f0>
    10e0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10e4:	e3530025 	cmp	r3, #37	@ 0x25
    10e8:	1a000005 	bne	1104 <printf+0x1d0>
    10ec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10f0:	e6ef3073 	uxtb	r3, r3
    10f4:	e1a01003 	mov	r1, r3
    10f8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10fc:	ebffff30 	bl	dc4 <putc>
    1100:	ea000007 	b	1124 <printf+0x1f0>
    1104:	e3a01025 	mov	r1, #37	@ 0x25
    1108:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    110c:	ebffff2c 	bl	dc4 <putc>
    1110:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1114:	e6ef3073 	uxtb	r3, r3
    1118:	e1a01003 	mov	r1, r3
    111c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1120:	ebffff27 	bl	dc4 <putc>
    1124:	e3a03000 	mov	r3, #0
    1128:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    112c:	e51b3010 	ldr	r3, [fp, #-16]
    1130:	e2833001 	add	r3, r3, #1
    1134:	e50b3010 	str	r3, [fp, #-16]
    1138:	e59b2004 	ldr	r2, [fp, #4]
    113c:	e51b3010 	ldr	r3, [fp, #-16]
    1140:	e0823003 	add	r3, r2, r3
    1144:	e5d33000 	ldrb	r3, [r3]
    1148:	e3530000 	cmp	r3, #0
    114c:	1affff84 	bne	f64 <printf+0x30>
    1150:	e1a00000 	nop			@ (mov r0, r0)
    1154:	e1a00000 	nop			@ (mov r0, r0)
    1158:	e24bd004 	sub	sp, fp, #4
    115c:	e8bd4800 	pop	{fp, lr}
    1160:	e28dd00c 	add	sp, sp, #12
    1164:	e12fff1e 	bx	lr
    1168:	00001654 	.word	0x00001654

0000116c <free>:
    116c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1170:	e28db000 	add	fp, sp, #0
    1174:	e24dd014 	sub	sp, sp, #20
    1178:	e50b0010 	str	r0, [fp, #-16]
    117c:	e51b3010 	ldr	r3, [fp, #-16]
    1180:	e2433008 	sub	r3, r3, #8
    1184:	e50b300c 	str	r3, [fp, #-12]
    1188:	e59f3154 	ldr	r3, [pc, #340]	@ 12e4 <free+0x178>
    118c:	e5933000 	ldr	r3, [r3]
    1190:	e50b3008 	str	r3, [fp, #-8]
    1194:	ea000010 	b	11dc <free+0x70>
    1198:	e51b3008 	ldr	r3, [fp, #-8]
    119c:	e5933000 	ldr	r3, [r3]
    11a0:	e51b2008 	ldr	r2, [fp, #-8]
    11a4:	e1520003 	cmp	r2, r3
    11a8:	3a000008 	bcc	11d0 <free+0x64>
    11ac:	e51b200c 	ldr	r2, [fp, #-12]
    11b0:	e51b3008 	ldr	r3, [fp, #-8]
    11b4:	e1520003 	cmp	r2, r3
    11b8:	8a000010 	bhi	1200 <free+0x94>
    11bc:	e51b3008 	ldr	r3, [fp, #-8]
    11c0:	e5933000 	ldr	r3, [r3]
    11c4:	e51b200c 	ldr	r2, [fp, #-12]
    11c8:	e1520003 	cmp	r2, r3
    11cc:	3a00000b 	bcc	1200 <free+0x94>
    11d0:	e51b3008 	ldr	r3, [fp, #-8]
    11d4:	e5933000 	ldr	r3, [r3]
    11d8:	e50b3008 	str	r3, [fp, #-8]
    11dc:	e51b200c 	ldr	r2, [fp, #-12]
    11e0:	e51b3008 	ldr	r3, [fp, #-8]
    11e4:	e1520003 	cmp	r2, r3
    11e8:	9affffea 	bls	1198 <free+0x2c>
    11ec:	e51b3008 	ldr	r3, [fp, #-8]
    11f0:	e5933000 	ldr	r3, [r3]
    11f4:	e51b200c 	ldr	r2, [fp, #-12]
    11f8:	e1520003 	cmp	r2, r3
    11fc:	2affffe5 	bcs	1198 <free+0x2c>
    1200:	e51b300c 	ldr	r3, [fp, #-12]
    1204:	e5933004 	ldr	r3, [r3, #4]
    1208:	e1a03183 	lsl	r3, r3, #3
    120c:	e51b200c 	ldr	r2, [fp, #-12]
    1210:	e0822003 	add	r2, r2, r3
    1214:	e51b3008 	ldr	r3, [fp, #-8]
    1218:	e5933000 	ldr	r3, [r3]
    121c:	e1520003 	cmp	r2, r3
    1220:	1a00000d 	bne	125c <free+0xf0>
    1224:	e51b300c 	ldr	r3, [fp, #-12]
    1228:	e5932004 	ldr	r2, [r3, #4]
    122c:	e51b3008 	ldr	r3, [fp, #-8]
    1230:	e5933000 	ldr	r3, [r3]
    1234:	e5933004 	ldr	r3, [r3, #4]
    1238:	e0822003 	add	r2, r2, r3
    123c:	e51b300c 	ldr	r3, [fp, #-12]
    1240:	e5832004 	str	r2, [r3, #4]
    1244:	e51b3008 	ldr	r3, [fp, #-8]
    1248:	e5933000 	ldr	r3, [r3]
    124c:	e5932000 	ldr	r2, [r3]
    1250:	e51b300c 	ldr	r3, [fp, #-12]
    1254:	e5832000 	str	r2, [r3]
    1258:	ea000003 	b	126c <free+0x100>
    125c:	e51b3008 	ldr	r3, [fp, #-8]
    1260:	e5932000 	ldr	r2, [r3]
    1264:	e51b300c 	ldr	r3, [fp, #-12]
    1268:	e5832000 	str	r2, [r3]
    126c:	e51b3008 	ldr	r3, [fp, #-8]
    1270:	e5933004 	ldr	r3, [r3, #4]
    1274:	e1a03183 	lsl	r3, r3, #3
    1278:	e51b2008 	ldr	r2, [fp, #-8]
    127c:	e0823003 	add	r3, r2, r3
    1280:	e51b200c 	ldr	r2, [fp, #-12]
    1284:	e1520003 	cmp	r2, r3
    1288:	1a00000b 	bne	12bc <free+0x150>
    128c:	e51b3008 	ldr	r3, [fp, #-8]
    1290:	e5932004 	ldr	r2, [r3, #4]
    1294:	e51b300c 	ldr	r3, [fp, #-12]
    1298:	e5933004 	ldr	r3, [r3, #4]
    129c:	e0822003 	add	r2, r2, r3
    12a0:	e51b3008 	ldr	r3, [fp, #-8]
    12a4:	e5832004 	str	r2, [r3, #4]
    12a8:	e51b300c 	ldr	r3, [fp, #-12]
    12ac:	e5932000 	ldr	r2, [r3]
    12b0:	e51b3008 	ldr	r3, [fp, #-8]
    12b4:	e5832000 	str	r2, [r3]
    12b8:	ea000002 	b	12c8 <free+0x15c>
    12bc:	e51b3008 	ldr	r3, [fp, #-8]
    12c0:	e51b200c 	ldr	r2, [fp, #-12]
    12c4:	e5832000 	str	r2, [r3]
    12c8:	e59f2014 	ldr	r2, [pc, #20]	@ 12e4 <free+0x178>
    12cc:	e51b3008 	ldr	r3, [fp, #-8]
    12d0:	e5823000 	str	r3, [r2]
    12d4:	e1a00000 	nop			@ (mov r0, r0)
    12d8:	e28bd000 	add	sp, fp, #0
    12dc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    12e0:	e12fff1e 	bx	lr
    12e4:	00001678 	.word	0x00001678

000012e8 <morecore>:
    12e8:	e92d4800 	push	{fp, lr}
    12ec:	e28db004 	add	fp, sp, #4
    12f0:	e24dd010 	sub	sp, sp, #16
    12f4:	e50b0010 	str	r0, [fp, #-16]
    12f8:	e51b3010 	ldr	r3, [fp, #-16]
    12fc:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1300:	2a000001 	bcs	130c <morecore+0x24>
    1304:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1308:	e50b3010 	str	r3, [fp, #-16]
    130c:	e51b3010 	ldr	r3, [fp, #-16]
    1310:	e1a03183 	lsl	r3, r3, #3
    1314:	e1a00003 	mov	r0, r3
    1318:	ebfffe07 	bl	b3c <sbrk>
    131c:	e50b0008 	str	r0, [fp, #-8]
    1320:	e51b3008 	ldr	r3, [fp, #-8]
    1324:	e3730001 	cmn	r3, #1
    1328:	1a000001 	bne	1334 <morecore+0x4c>
    132c:	e3a03000 	mov	r3, #0
    1330:	ea00000a 	b	1360 <morecore+0x78>
    1334:	e51b3008 	ldr	r3, [fp, #-8]
    1338:	e50b300c 	str	r3, [fp, #-12]
    133c:	e51b300c 	ldr	r3, [fp, #-12]
    1340:	e51b2010 	ldr	r2, [fp, #-16]
    1344:	e5832004 	str	r2, [r3, #4]
    1348:	e51b300c 	ldr	r3, [fp, #-12]
    134c:	e2833008 	add	r3, r3, #8
    1350:	e1a00003 	mov	r0, r3
    1354:	ebffff84 	bl	116c <free>
    1358:	e59f300c 	ldr	r3, [pc, #12]	@ 136c <morecore+0x84>
    135c:	e5933000 	ldr	r3, [r3]
    1360:	e1a00003 	mov	r0, r3
    1364:	e24bd004 	sub	sp, fp, #4
    1368:	e8bd8800 	pop	{fp, pc}
    136c:	00001678 	.word	0x00001678

00001370 <malloc>:
    1370:	e92d4800 	push	{fp, lr}
    1374:	e28db004 	add	fp, sp, #4
    1378:	e24dd018 	sub	sp, sp, #24
    137c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1380:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1384:	e2833007 	add	r3, r3, #7
    1388:	e1a031a3 	lsr	r3, r3, #3
    138c:	e2833001 	add	r3, r3, #1
    1390:	e50b3010 	str	r3, [fp, #-16]
    1394:	e59f3134 	ldr	r3, [pc, #308]	@ 14d0 <malloc+0x160>
    1398:	e5933000 	ldr	r3, [r3]
    139c:	e50b300c 	str	r3, [fp, #-12]
    13a0:	e51b300c 	ldr	r3, [fp, #-12]
    13a4:	e3530000 	cmp	r3, #0
    13a8:	1a00000b 	bne	13dc <malloc+0x6c>
    13ac:	e59f3120 	ldr	r3, [pc, #288]	@ 14d4 <malloc+0x164>
    13b0:	e50b300c 	str	r3, [fp, #-12]
    13b4:	e59f2114 	ldr	r2, [pc, #276]	@ 14d0 <malloc+0x160>
    13b8:	e51b300c 	ldr	r3, [fp, #-12]
    13bc:	e5823000 	str	r3, [r2]
    13c0:	e59f3108 	ldr	r3, [pc, #264]	@ 14d0 <malloc+0x160>
    13c4:	e5933000 	ldr	r3, [r3]
    13c8:	e59f2104 	ldr	r2, [pc, #260]	@ 14d4 <malloc+0x164>
    13cc:	e5823000 	str	r3, [r2]
    13d0:	e59f30fc 	ldr	r3, [pc, #252]	@ 14d4 <malloc+0x164>
    13d4:	e3a02000 	mov	r2, #0
    13d8:	e5832004 	str	r2, [r3, #4]
    13dc:	e51b300c 	ldr	r3, [fp, #-12]
    13e0:	e5933000 	ldr	r3, [r3]
    13e4:	e50b3008 	str	r3, [fp, #-8]
    13e8:	e51b3008 	ldr	r3, [fp, #-8]
    13ec:	e5933004 	ldr	r3, [r3, #4]
    13f0:	e51b2010 	ldr	r2, [fp, #-16]
    13f4:	e1520003 	cmp	r2, r3
    13f8:	8a00001e 	bhi	1478 <malloc+0x108>
    13fc:	e51b3008 	ldr	r3, [fp, #-8]
    1400:	e5933004 	ldr	r3, [r3, #4]
    1404:	e51b2010 	ldr	r2, [fp, #-16]
    1408:	e1520003 	cmp	r2, r3
    140c:	1a000004 	bne	1424 <malloc+0xb4>
    1410:	e51b3008 	ldr	r3, [fp, #-8]
    1414:	e5932000 	ldr	r2, [r3]
    1418:	e51b300c 	ldr	r3, [fp, #-12]
    141c:	e5832000 	str	r2, [r3]
    1420:	ea00000e 	b	1460 <malloc+0xf0>
    1424:	e51b3008 	ldr	r3, [fp, #-8]
    1428:	e5932004 	ldr	r2, [r3, #4]
    142c:	e51b3010 	ldr	r3, [fp, #-16]
    1430:	e0422003 	sub	r2, r2, r3
    1434:	e51b3008 	ldr	r3, [fp, #-8]
    1438:	e5832004 	str	r2, [r3, #4]
    143c:	e51b3008 	ldr	r3, [fp, #-8]
    1440:	e5933004 	ldr	r3, [r3, #4]
    1444:	e1a03183 	lsl	r3, r3, #3
    1448:	e51b2008 	ldr	r2, [fp, #-8]
    144c:	e0823003 	add	r3, r2, r3
    1450:	e50b3008 	str	r3, [fp, #-8]
    1454:	e51b3008 	ldr	r3, [fp, #-8]
    1458:	e51b2010 	ldr	r2, [fp, #-16]
    145c:	e5832004 	str	r2, [r3, #4]
    1460:	e59f2068 	ldr	r2, [pc, #104]	@ 14d0 <malloc+0x160>
    1464:	e51b300c 	ldr	r3, [fp, #-12]
    1468:	e5823000 	str	r3, [r2]
    146c:	e51b3008 	ldr	r3, [fp, #-8]
    1470:	e2833008 	add	r3, r3, #8
    1474:	ea000012 	b	14c4 <malloc+0x154>
    1478:	e59f3050 	ldr	r3, [pc, #80]	@ 14d0 <malloc+0x160>
    147c:	e5933000 	ldr	r3, [r3]
    1480:	e51b2008 	ldr	r2, [fp, #-8]
    1484:	e1520003 	cmp	r2, r3
    1488:	1a000007 	bne	14ac <malloc+0x13c>
    148c:	e51b0010 	ldr	r0, [fp, #-16]
    1490:	ebffff94 	bl	12e8 <morecore>
    1494:	e50b0008 	str	r0, [fp, #-8]
    1498:	e51b3008 	ldr	r3, [fp, #-8]
    149c:	e3530000 	cmp	r3, #0
    14a0:	1a000001 	bne	14ac <malloc+0x13c>
    14a4:	e3a03000 	mov	r3, #0
    14a8:	ea000005 	b	14c4 <malloc+0x154>
    14ac:	e51b3008 	ldr	r3, [fp, #-8]
    14b0:	e50b300c 	str	r3, [fp, #-12]
    14b4:	e51b3008 	ldr	r3, [fp, #-8]
    14b8:	e5933000 	ldr	r3, [r3]
    14bc:	e50b3008 	str	r3, [fp, #-8]
    14c0:	eaffffc8 	b	13e8 <malloc+0x78>
    14c4:	e1a00003 	mov	r0, r3
    14c8:	e24bd004 	sub	sp, fp, #4
    14cc:	e8bd8800 	pop	{fp, pc}
    14d0:	00001678 	.word	0x00001678
    14d4:	00001670 	.word	0x00001670

000014d8 <__udivsi3>:
    14d8:	e2512001 	subs	r2, r1, #1
    14dc:	012fff1e 	bxeq	lr
    14e0:	3a000036 	bcc	15c0 <__udivsi3+0xe8>
    14e4:	e1500001 	cmp	r0, r1
    14e8:	9a000022 	bls	1578 <__udivsi3+0xa0>
    14ec:	e1110002 	tst	r1, r2
    14f0:	0a000023 	beq	1584 <__udivsi3+0xac>
    14f4:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    14f8:	01a01181 	lsleq	r1, r1, #3
    14fc:	03a03008 	moveq	r3, #8
    1500:	13a03001 	movne	r3, #1
    1504:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1508:	31510000 	cmpcc	r1, r0
    150c:	31a01201 	lslcc	r1, r1, #4
    1510:	31a03203 	lslcc	r3, r3, #4
    1514:	3afffffa 	bcc	1504 <__udivsi3+0x2c>
    1518:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    151c:	31510000 	cmpcc	r1, r0
    1520:	31a01081 	lslcc	r1, r1, #1
    1524:	31a03083 	lslcc	r3, r3, #1
    1528:	3afffffa 	bcc	1518 <__udivsi3+0x40>
    152c:	e3a02000 	mov	r2, #0
    1530:	e1500001 	cmp	r0, r1
    1534:	20400001 	subcs	r0, r0, r1
    1538:	21822003 	orrcs	r2, r2, r3
    153c:	e15000a1 	cmp	r0, r1, lsr #1
    1540:	204000a1 	subcs	r0, r0, r1, lsr #1
    1544:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1548:	e1500121 	cmp	r0, r1, lsr #2
    154c:	20400121 	subcs	r0, r0, r1, lsr #2
    1550:	21822123 	orrcs	r2, r2, r3, lsr #2
    1554:	e15001a1 	cmp	r0, r1, lsr #3
    1558:	204001a1 	subcs	r0, r0, r1, lsr #3
    155c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1560:	e3500000 	cmp	r0, #0
    1564:	11b03223 	lsrsne	r3, r3, #4
    1568:	11a01221 	lsrne	r1, r1, #4
    156c:	1affffef 	bne	1530 <__udivsi3+0x58>
    1570:	e1a00002 	mov	r0, r2
    1574:	e12fff1e 	bx	lr
    1578:	03a00001 	moveq	r0, #1
    157c:	13a00000 	movne	r0, #0
    1580:	e12fff1e 	bx	lr
    1584:	e3510801 	cmp	r1, #65536	@ 0x10000
    1588:	21a01821 	lsrcs	r1, r1, #16
    158c:	23a02010 	movcs	r2, #16
    1590:	33a02000 	movcc	r2, #0
    1594:	e3510c01 	cmp	r1, #256	@ 0x100
    1598:	21a01421 	lsrcs	r1, r1, #8
    159c:	22822008 	addcs	r2, r2, #8
    15a0:	e3510010 	cmp	r1, #16
    15a4:	21a01221 	lsrcs	r1, r1, #4
    15a8:	22822004 	addcs	r2, r2, #4
    15ac:	e3510004 	cmp	r1, #4
    15b0:	82822003 	addhi	r2, r2, #3
    15b4:	908220a1 	addls	r2, r2, r1, lsr #1
    15b8:	e1a00230 	lsr	r0, r0, r2
    15bc:	e12fff1e 	bx	lr
    15c0:	e3500000 	cmp	r0, #0
    15c4:	13e00000 	mvnne	r0, #0
    15c8:	ea000007 	b	15ec <__aeabi_idiv0>

000015cc <__aeabi_uidivmod>:
    15cc:	e3510000 	cmp	r1, #0
    15d0:	0afffffa 	beq	15c0 <__udivsi3+0xe8>
    15d4:	e92d4003 	push	{r0, r1, lr}
    15d8:	ebffffbe 	bl	14d8 <__udivsi3>
    15dc:	e8bd4006 	pop	{r1, r2, lr}
    15e0:	e0030092 	mul	r3, r2, r0
    15e4:	e0411003 	sub	r1, r1, r3
    15e8:	e12fff1e 	bx	lr

000015ec <__aeabi_idiv0>:
    15ec:	e12fff1e 	bx	lr
