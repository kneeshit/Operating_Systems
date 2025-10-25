
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
      20:	eb0003fc 	bl	1018 <printf>
      24:	e51b3008 	ldr	r3, [fp, #-8]
      28:	e5933004 	ldr	r3, [r3, #4]
      2c:	e1a00003 	mov	r0, r3
      30:	eb000238 	bl	918 <semDown>
      34:	e59f104c 	ldr	r1, [pc, #76]	@ 88 <thread2+0x88>
      38:	e3a00001 	mov	r0, #1
      3c:	eb0003f5 	bl	1018 <printf>
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
      6c:	eb000211 	bl	8b8 <semUp>
      70:	eb00033b 	bl	d64 <thread_exit>
      74:	e3a03000 	mov	r3, #0
      78:	e1a00003 	mov	r0, r3
      7c:	e24bd004 	sub	sp, fp, #4
      80:	e8bd8800 	pop	{fp, pc}
      84:	000016d4 	.word	0x000016d4
      88:	000016f0 	.word	0x000016f0

0000008c <main>:
      8c:	e92d4800 	push	{fp, lr}
      90:	e28db004 	add	fp, sp, #4
      94:	e24dd028 	sub	sp, sp, #40	@ 0x28
      98:	e24b301c 	sub	r3, fp, #28
      9c:	e3a01001 	mov	r1, #1
      a0:	e1a00003 	mov	r0, r3
      a4:	eb0001ed 	bl	860 <semInit>
      a8:	e59f1074 	ldr	r1, [pc, #116]	@ 124 <main+0x98>
      ac:	e3a00001 	mov	r0, #1
      b0:	eb0003d8 	bl	1018 <printf>
      b4:	e3a0300a 	mov	r3, #10
      b8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
      bc:	e24b3020 	sub	r3, fp, #32
      c0:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
      c4:	e24b301c 	sub	r3, fp, #28
      c8:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
      cc:	e24b301c 	sub	r3, fp, #28
      d0:	e1a00003 	mov	r0, r3
      d4:	eb00020f 	bl	918 <semDown>
      d8:	e24b2028 	sub	r2, fp, #40	@ 0x28
      dc:	e24b302c 	sub	r3, fp, #44	@ 0x2c
      e0:	e59f1040 	ldr	r1, [pc, #64]	@ 128 <main+0x9c>
      e4:	e1a00003 	mov	r0, r3
      e8:	eb000314 	bl	d40 <thread_create>
      ec:	e3a000c8 	mov	r0, #200	@ 0xc8
      f0:	eb0002d3 	bl	c44 <sleep>
      f4:	e24b301c 	sub	r3, fp, #28
      f8:	e1a00003 	mov	r0, r3
      fc:	eb0001ed 	bl	8b8 <semUp>
     100:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     104:	e1a00003 	mov	r0, r3
     108:	eb00031e 	bl	d88 <thread_join>
     10c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     110:	e1a02003 	mov	r2, r3
     114:	e59f1010 	ldr	r1, [pc, #16]	@ 12c <main+0xa0>
     118:	e3a00001 	mov	r0, #1
     11c:	eb0003bd 	bl	1018 <printf>
     120:	eb000225 	bl	9bc <exit>
     124:	00001714 	.word	0x00001714
     128:	00000000 	.word	0x00000000
     12c:	00001724 	.word	0x00001724

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
     424:	eb00017f 	bl	a28 <read>
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
     4cc:	eb000182 	bl	adc <open>
     4d0:	e50b0008 	str	r0, [fp, #-8]
     4d4:	e51b3008 	ldr	r3, [fp, #-8]
     4d8:	e3530000 	cmp	r3, #0
     4dc:	aa000001 	bge	4e8 <stat+0x38>
     4e0:	e3e03000 	mvn	r3, #0
     4e4:	ea000006 	b	504 <stat+0x54>
     4e8:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     4ec:	e51b0008 	ldr	r0, [fp, #-8]
     4f0:	eb000194 	bl	b48 <fstat>
     4f4:	e50b000c 	str	r0, [fp, #-12]
     4f8:	e51b0008 	ldr	r0, [fp, #-8]
     4fc:	eb00015b 	bl	a70 <close>
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

00000658 <xchg>:
     658:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     65c:	e28db000 	add	fp, sp, #0
     660:	e24dd00c 	sub	sp, sp, #12
     664:	e50b0008 	str	r0, [fp, #-8]
     668:	e50b100c 	str	r1, [fp, #-12]
     66c:	e51b200c 	ldr	r2, [fp, #-12]
     670:	e51b3008 	ldr	r3, [fp, #-8]
     674:	e1931f9f 	ldrex	r1, [r3]
     678:	e1830f92 	strex	r0, r2, [r3]
     67c:	e3500000 	cmp	r0, #0
     680:	1afffffb 	bne	674 <xchg+0x1c>
     684:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     688:	e1a03001 	mov	r3, r1
     68c:	e1a00003 	mov	r0, r3
     690:	e28bd000 	add	sp, fp, #0
     694:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     698:	e12fff1e 	bx	lr

0000069c <acquireLock>:
     69c:	e92d4800 	push	{fp, lr}
     6a0:	e28db004 	add	fp, sp, #4
     6a4:	e24dd008 	sub	sp, sp, #8
     6a8:	e50b0008 	str	r0, [fp, #-8]
     6ac:	e51b3008 	ldr	r3, [fp, #-8]
     6b0:	e5933004 	ldr	r3, [r3, #4]
     6b4:	e3530000 	cmp	r3, #0
     6b8:	0a000008 	beq	6e0 <acquireLock+0x44>
     6bc:	e1a00000 	nop			@ (mov r0, r0)
     6c0:	e51b3008 	ldr	r3, [fp, #-8]
     6c4:	e3a01001 	mov	r1, #1
     6c8:	e1a00003 	mov	r0, r3
     6cc:	ebffffe1 	bl	658 <xchg>
     6d0:	e1a03000 	mov	r3, r0
     6d4:	e3530000 	cmp	r3, #0
     6d8:	1afffff8 	bne	6c0 <acquireLock+0x24>
     6dc:	ea000000 	b	6e4 <acquireLock+0x48>
     6e0:	e1a00000 	nop			@ (mov r0, r0)
     6e4:	e24bd004 	sub	sp, fp, #4
     6e8:	e8bd8800 	pop	{fp, pc}

000006ec <releaseLock>:
     6ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6f0:	e28db000 	add	fp, sp, #0
     6f4:	e24dd00c 	sub	sp, sp, #12
     6f8:	e50b0008 	str	r0, [fp, #-8]
     6fc:	e51b3008 	ldr	r3, [fp, #-8]
     700:	e5933004 	ldr	r3, [r3, #4]
     704:	e3530000 	cmp	r3, #0
     708:	0a000007 	beq	72c <releaseLock+0x40>
     70c:	e51b3008 	ldr	r3, [fp, #-8]
     710:	e5933000 	ldr	r3, [r3]
     714:	e3530001 	cmp	r3, #1
     718:	1a000005 	bne	734 <releaseLock+0x48>
     71c:	e51b3008 	ldr	r3, [fp, #-8]
     720:	e3a02000 	mov	r2, #0
     724:	e5832000 	str	r2, [r3]
     728:	ea000002 	b	738 <releaseLock+0x4c>
     72c:	e1a00000 	nop			@ (mov r0, r0)
     730:	ea000000 	b	738 <releaseLock+0x4c>
     734:	e1a00000 	nop			@ (mov r0, r0)
     738:	e28bd000 	add	sp, fp, #0
     73c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     740:	e12fff1e 	bx	lr

00000744 <initiateCondVar>:
     744:	e92d4800 	push	{fp, lr}
     748:	e28db004 	add	fp, sp, #4
     74c:	e24dd008 	sub	sp, sp, #8
     750:	e50b0008 	str	r0, [fp, #-8]
     754:	eb0001b8 	bl	e3c <getChannel>
     758:	e1a02000 	mov	r2, r0
     75c:	e51b3008 	ldr	r3, [fp, #-8]
     760:	e5832000 	str	r2, [r3]
     764:	e51b3008 	ldr	r3, [fp, #-8]
     768:	e3a02001 	mov	r2, #1
     76c:	e5832004 	str	r2, [r3, #4]
     770:	e1a00000 	nop			@ (mov r0, r0)
     774:	e24bd004 	sub	sp, fp, #4
     778:	e8bd8800 	pop	{fp, pc}

0000077c <condWait>:
     77c:	e92d4800 	push	{fp, lr}
     780:	e28db004 	add	fp, sp, #4
     784:	e24dd008 	sub	sp, sp, #8
     788:	e50b0008 	str	r0, [fp, #-8]
     78c:	e50b100c 	str	r1, [fp, #-12]
     790:	e51b3008 	ldr	r3, [fp, #-8]
     794:	e5933004 	ldr	r3, [r3, #4]
     798:	e3530000 	cmp	r3, #0
     79c:	0a00000c 	beq	7d4 <condWait+0x58>
     7a0:	e51b300c 	ldr	r3, [fp, #-12]
     7a4:	e5933004 	ldr	r3, [r3, #4]
     7a8:	e3530000 	cmp	r3, #0
     7ac:	0a000008 	beq	7d4 <condWait+0x58>
     7b0:	e51b000c 	ldr	r0, [fp, #-12]
     7b4:	ebffffcc 	bl	6ec <releaseLock>
     7b8:	e51b3008 	ldr	r3, [fp, #-8]
     7bc:	e5933000 	ldr	r3, [r3]
     7c0:	e1a00003 	mov	r0, r3
     7c4:	eb000193 	bl	e18 <sleepChan>
     7c8:	e51b000c 	ldr	r0, [fp, #-12]
     7cc:	ebffffb2 	bl	69c <acquireLock>
     7d0:	ea000000 	b	7d8 <condWait+0x5c>
     7d4:	e1a00000 	nop			@ (mov r0, r0)
     7d8:	e24bd004 	sub	sp, fp, #4
     7dc:	e8bd8800 	pop	{fp, pc}

000007e0 <broadcast>:
     7e0:	e92d4800 	push	{fp, lr}
     7e4:	e28db004 	add	fp, sp, #4
     7e8:	e24dd008 	sub	sp, sp, #8
     7ec:	e50b0008 	str	r0, [fp, #-8]
     7f0:	e51b3008 	ldr	r3, [fp, #-8]
     7f4:	e5933004 	ldr	r3, [r3, #4]
     7f8:	e3530000 	cmp	r3, #0
     7fc:	0a000004 	beq	814 <broadcast+0x34>
     800:	e51b3008 	ldr	r3, [fp, #-8]
     804:	e5933000 	ldr	r3, [r3]
     808:	e1a00003 	mov	r0, r3
     80c:	eb000193 	bl	e60 <sigChan>
     810:	ea000000 	b	818 <broadcast+0x38>
     814:	e1a00000 	nop			@ (mov r0, r0)
     818:	e24bd004 	sub	sp, fp, #4
     81c:	e8bd8800 	pop	{fp, pc}

00000820 <signal>:
     820:	e92d4800 	push	{fp, lr}
     824:	e28db004 	add	fp, sp, #4
     828:	e24dd008 	sub	sp, sp, #8
     82c:	e50b0008 	str	r0, [fp, #-8]
     830:	e51b3008 	ldr	r3, [fp, #-8]
     834:	e5933004 	ldr	r3, [r3, #4]
     838:	e3530000 	cmp	r3, #0
     83c:	0a000004 	beq	854 <signal+0x34>
     840:	e51b3008 	ldr	r3, [fp, #-8]
     844:	e5933000 	ldr	r3, [r3]
     848:	e1a00003 	mov	r0, r3
     84c:	eb00018c 	bl	e84 <sigOneChan>
     850:	ea000000 	b	858 <signal+0x38>
     854:	e1a00000 	nop			@ (mov r0, r0)
     858:	e24bd004 	sub	sp, fp, #4
     85c:	e8bd8800 	pop	{fp, pc}

00000860 <semInit>:
     860:	e92d4800 	push	{fp, lr}
     864:	e28db004 	add	fp, sp, #4
     868:	e24dd008 	sub	sp, sp, #8
     86c:	e50b0008 	str	r0, [fp, #-8]
     870:	e50b100c 	str	r1, [fp, #-12]
     874:	e51b3008 	ldr	r3, [fp, #-8]
     878:	e51b200c 	ldr	r2, [fp, #-12]
     87c:	e5832000 	str	r2, [r3]
     880:	e51b3008 	ldr	r3, [fp, #-8]
     884:	e2833004 	add	r3, r3, #4
     888:	e1a00003 	mov	r0, r3
     88c:	ebffff63 	bl	620 <initiateLock>
     890:	e51b3008 	ldr	r3, [fp, #-8]
     894:	e283300c 	add	r3, r3, #12
     898:	e1a00003 	mov	r0, r3
     89c:	ebffffa8 	bl	744 <initiateCondVar>
     8a0:	e51b3008 	ldr	r3, [fp, #-8]
     8a4:	e3a02001 	mov	r2, #1
     8a8:	e5832014 	str	r2, [r3, #20]
     8ac:	e1a00000 	nop			@ (mov r0, r0)
     8b0:	e24bd004 	sub	sp, fp, #4
     8b4:	e8bd8800 	pop	{fp, pc}

000008b8 <semUp>:
     8b8:	e92d4800 	push	{fp, lr}
     8bc:	e28db004 	add	fp, sp, #4
     8c0:	e24dd008 	sub	sp, sp, #8
     8c4:	e50b0008 	str	r0, [fp, #-8]
     8c8:	e51b3008 	ldr	r3, [fp, #-8]
     8cc:	e2833004 	add	r3, r3, #4
     8d0:	e1a00003 	mov	r0, r3
     8d4:	ebffff70 	bl	69c <acquireLock>
     8d8:	e51b3008 	ldr	r3, [fp, #-8]
     8dc:	e5933000 	ldr	r3, [r3]
     8e0:	e2832001 	add	r2, r3, #1
     8e4:	e51b3008 	ldr	r3, [fp, #-8]
     8e8:	e5832000 	str	r2, [r3]
     8ec:	e51b3008 	ldr	r3, [fp, #-8]
     8f0:	e283300c 	add	r3, r3, #12
     8f4:	e1a00003 	mov	r0, r3
     8f8:	ebffffc8 	bl	820 <signal>
     8fc:	e51b3008 	ldr	r3, [fp, #-8]
     900:	e2833004 	add	r3, r3, #4
     904:	e1a00003 	mov	r0, r3
     908:	ebffff77 	bl	6ec <releaseLock>
     90c:	e1a00000 	nop			@ (mov r0, r0)
     910:	e24bd004 	sub	sp, fp, #4
     914:	e8bd8800 	pop	{fp, pc}

00000918 <semDown>:
     918:	e92d4800 	push	{fp, lr}
     91c:	e28db004 	add	fp, sp, #4
     920:	e24dd008 	sub	sp, sp, #8
     924:	e50b0008 	str	r0, [fp, #-8]
     928:	e51b3008 	ldr	r3, [fp, #-8]
     92c:	e2833004 	add	r3, r3, #4
     930:	e1a00003 	mov	r0, r3
     934:	ebffff58 	bl	69c <acquireLock>
     938:	ea000006 	b	958 <semDown+0x40>
     93c:	e51b3008 	ldr	r3, [fp, #-8]
     940:	e283200c 	add	r2, r3, #12
     944:	e51b3008 	ldr	r3, [fp, #-8]
     948:	e2833004 	add	r3, r3, #4
     94c:	e1a01003 	mov	r1, r3
     950:	e1a00002 	mov	r0, r2
     954:	ebffff88 	bl	77c <condWait>
     958:	e51b3008 	ldr	r3, [fp, #-8]
     95c:	e5933000 	ldr	r3, [r3]
     960:	e3530000 	cmp	r3, #0
     964:	dafffff4 	ble	93c <semDown+0x24>
     968:	e51b3008 	ldr	r3, [fp, #-8]
     96c:	e5933000 	ldr	r3, [r3]
     970:	e2432001 	sub	r2, r3, #1
     974:	e51b3008 	ldr	r3, [fp, #-8]
     978:	e5832000 	str	r2, [r3]
     97c:	e51b3008 	ldr	r3, [fp, #-8]
     980:	e2833004 	add	r3, r3, #4
     984:	e1a00003 	mov	r0, r3
     988:	ebffff57 	bl	6ec <releaseLock>
     98c:	e1a00000 	nop			@ (mov r0, r0)
     990:	e24bd004 	sub	sp, fp, #4
     994:	e8bd8800 	pop	{fp, pc}

00000998 <fork>:
     998:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     99c:	e1a04003 	mov	r4, r3
     9a0:	e1a03002 	mov	r3, r2
     9a4:	e1a02001 	mov	r2, r1
     9a8:	e1a01000 	mov	r1, r0
     9ac:	e3a00001 	mov	r0, #1
     9b0:	ef000000 	svc	0x00000000
     9b4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9b8:	e12fff1e 	bx	lr

000009bc <exit>:
     9bc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c0:	e1a04003 	mov	r4, r3
     9c4:	e1a03002 	mov	r3, r2
     9c8:	e1a02001 	mov	r2, r1
     9cc:	e1a01000 	mov	r1, r0
     9d0:	e3a00002 	mov	r0, #2
     9d4:	ef000000 	svc	0x00000000
     9d8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9dc:	e12fff1e 	bx	lr

000009e0 <wait>:
     9e0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9e4:	e1a04003 	mov	r4, r3
     9e8:	e1a03002 	mov	r3, r2
     9ec:	e1a02001 	mov	r2, r1
     9f0:	e1a01000 	mov	r1, r0
     9f4:	e3a00003 	mov	r0, #3
     9f8:	ef000000 	svc	0x00000000
     9fc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a00:	e12fff1e 	bx	lr

00000a04 <pipe>:
     a04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a08:	e1a04003 	mov	r4, r3
     a0c:	e1a03002 	mov	r3, r2
     a10:	e1a02001 	mov	r2, r1
     a14:	e1a01000 	mov	r1, r0
     a18:	e3a00004 	mov	r0, #4
     a1c:	ef000000 	svc	0x00000000
     a20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a24:	e12fff1e 	bx	lr

00000a28 <read>:
     a28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a2c:	e1a04003 	mov	r4, r3
     a30:	e1a03002 	mov	r3, r2
     a34:	e1a02001 	mov	r2, r1
     a38:	e1a01000 	mov	r1, r0
     a3c:	e3a00005 	mov	r0, #5
     a40:	ef000000 	svc	0x00000000
     a44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a48:	e12fff1e 	bx	lr

00000a4c <write>:
     a4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a50:	e1a04003 	mov	r4, r3
     a54:	e1a03002 	mov	r3, r2
     a58:	e1a02001 	mov	r2, r1
     a5c:	e1a01000 	mov	r1, r0
     a60:	e3a00010 	mov	r0, #16
     a64:	ef000000 	svc	0x00000000
     a68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a6c:	e12fff1e 	bx	lr

00000a70 <close>:
     a70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a74:	e1a04003 	mov	r4, r3
     a78:	e1a03002 	mov	r3, r2
     a7c:	e1a02001 	mov	r2, r1
     a80:	e1a01000 	mov	r1, r0
     a84:	e3a00015 	mov	r0, #21
     a88:	ef000000 	svc	0x00000000
     a8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a90:	e12fff1e 	bx	lr

00000a94 <kill>:
     a94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a98:	e1a04003 	mov	r4, r3
     a9c:	e1a03002 	mov	r3, r2
     aa0:	e1a02001 	mov	r2, r1
     aa4:	e1a01000 	mov	r1, r0
     aa8:	e3a00006 	mov	r0, #6
     aac:	ef000000 	svc	0x00000000
     ab0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ab4:	e12fff1e 	bx	lr

00000ab8 <exec>:
     ab8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     abc:	e1a04003 	mov	r4, r3
     ac0:	e1a03002 	mov	r3, r2
     ac4:	e1a02001 	mov	r2, r1
     ac8:	e1a01000 	mov	r1, r0
     acc:	e3a00007 	mov	r0, #7
     ad0:	ef000000 	svc	0x00000000
     ad4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ad8:	e12fff1e 	bx	lr

00000adc <open>:
     adc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae0:	e1a04003 	mov	r4, r3
     ae4:	e1a03002 	mov	r3, r2
     ae8:	e1a02001 	mov	r2, r1
     aec:	e1a01000 	mov	r1, r0
     af0:	e3a0000f 	mov	r0, #15
     af4:	ef000000 	svc	0x00000000
     af8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     afc:	e12fff1e 	bx	lr

00000b00 <mknod>:
     b00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b04:	e1a04003 	mov	r4, r3
     b08:	e1a03002 	mov	r3, r2
     b0c:	e1a02001 	mov	r2, r1
     b10:	e1a01000 	mov	r1, r0
     b14:	e3a00011 	mov	r0, #17
     b18:	ef000000 	svc	0x00000000
     b1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b20:	e12fff1e 	bx	lr

00000b24 <unlink>:
     b24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b28:	e1a04003 	mov	r4, r3
     b2c:	e1a03002 	mov	r3, r2
     b30:	e1a02001 	mov	r2, r1
     b34:	e1a01000 	mov	r1, r0
     b38:	e3a00012 	mov	r0, #18
     b3c:	ef000000 	svc	0x00000000
     b40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b44:	e12fff1e 	bx	lr

00000b48 <fstat>:
     b48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b4c:	e1a04003 	mov	r4, r3
     b50:	e1a03002 	mov	r3, r2
     b54:	e1a02001 	mov	r2, r1
     b58:	e1a01000 	mov	r1, r0
     b5c:	e3a00008 	mov	r0, #8
     b60:	ef000000 	svc	0x00000000
     b64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b68:	e12fff1e 	bx	lr

00000b6c <link>:
     b6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b70:	e1a04003 	mov	r4, r3
     b74:	e1a03002 	mov	r3, r2
     b78:	e1a02001 	mov	r2, r1
     b7c:	e1a01000 	mov	r1, r0
     b80:	e3a00013 	mov	r0, #19
     b84:	ef000000 	svc	0x00000000
     b88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b8c:	e12fff1e 	bx	lr

00000b90 <mkdir>:
     b90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b94:	e1a04003 	mov	r4, r3
     b98:	e1a03002 	mov	r3, r2
     b9c:	e1a02001 	mov	r2, r1
     ba0:	e1a01000 	mov	r1, r0
     ba4:	e3a00014 	mov	r0, #20
     ba8:	ef000000 	svc	0x00000000
     bac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb0:	e12fff1e 	bx	lr

00000bb4 <chdir>:
     bb4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bb8:	e1a04003 	mov	r4, r3
     bbc:	e1a03002 	mov	r3, r2
     bc0:	e1a02001 	mov	r2, r1
     bc4:	e1a01000 	mov	r1, r0
     bc8:	e3a00009 	mov	r0, #9
     bcc:	ef000000 	svc	0x00000000
     bd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bd4:	e12fff1e 	bx	lr

00000bd8 <dup>:
     bd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bdc:	e1a04003 	mov	r4, r3
     be0:	e1a03002 	mov	r3, r2
     be4:	e1a02001 	mov	r2, r1
     be8:	e1a01000 	mov	r1, r0
     bec:	e3a0000a 	mov	r0, #10
     bf0:	ef000000 	svc	0x00000000
     bf4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bf8:	e12fff1e 	bx	lr

00000bfc <getpid>:
     bfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c00:	e1a04003 	mov	r4, r3
     c04:	e1a03002 	mov	r3, r2
     c08:	e1a02001 	mov	r2, r1
     c0c:	e1a01000 	mov	r1, r0
     c10:	e3a0000b 	mov	r0, #11
     c14:	ef000000 	svc	0x00000000
     c18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c1c:	e12fff1e 	bx	lr

00000c20 <sbrk>:
     c20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c24:	e1a04003 	mov	r4, r3
     c28:	e1a03002 	mov	r3, r2
     c2c:	e1a02001 	mov	r2, r1
     c30:	e1a01000 	mov	r1, r0
     c34:	e3a0000c 	mov	r0, #12
     c38:	ef000000 	svc	0x00000000
     c3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c40:	e12fff1e 	bx	lr

00000c44 <sleep>:
     c44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c48:	e1a04003 	mov	r4, r3
     c4c:	e1a03002 	mov	r3, r2
     c50:	e1a02001 	mov	r2, r1
     c54:	e1a01000 	mov	r1, r0
     c58:	e3a0000d 	mov	r0, #13
     c5c:	ef000000 	svc	0x00000000
     c60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c64:	e12fff1e 	bx	lr

00000c68 <uptime>:
     c68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c6c:	e1a04003 	mov	r4, r3
     c70:	e1a03002 	mov	r3, r2
     c74:	e1a02001 	mov	r2, r1
     c78:	e1a01000 	mov	r1, r0
     c7c:	e3a0000e 	mov	r0, #14
     c80:	ef000000 	svc	0x00000000
     c84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c88:	e12fff1e 	bx	lr

00000c8c <getprocs>:
     c8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c90:	e1a04003 	mov	r4, r3
     c94:	e1a03002 	mov	r3, r2
     c98:	e1a02001 	mov	r2, r1
     c9c:	e1a01000 	mov	r1, r0
     ca0:	e3a00016 	mov	r0, #22
     ca4:	ef000000 	svc	0x00000000
     ca8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cac:	e12fff1e 	bx	lr

00000cb0 <settickets>:
     cb0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cb4:	e1a04003 	mov	r4, r3
     cb8:	e1a03002 	mov	r3, r2
     cbc:	e1a02001 	mov	r2, r1
     cc0:	e1a01000 	mov	r1, r0
     cc4:	e3a00017 	mov	r0, #23
     cc8:	ef000000 	svc	0x00000000
     ccc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd0:	e12fff1e 	bx	lr

00000cd4 <srand>:
     cd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cd8:	e1a04003 	mov	r4, r3
     cdc:	e1a03002 	mov	r3, r2
     ce0:	e1a02001 	mov	r2, r1
     ce4:	e1a01000 	mov	r1, r0
     ce8:	e3a00018 	mov	r0, #24
     cec:	ef000000 	svc	0x00000000
     cf0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cf4:	e12fff1e 	bx	lr

00000cf8 <getpinfo>:
     cf8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cfc:	e1a04003 	mov	r4, r3
     d00:	e1a03002 	mov	r3, r2
     d04:	e1a02001 	mov	r2, r1
     d08:	e1a01000 	mov	r1, r0
     d0c:	e3a00019 	mov	r0, #25
     d10:	ef000000 	svc	0x00000000
     d14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d18:	e12fff1e 	bx	lr

00000d1c <dumppagetable>:
     d1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d20:	e1a04003 	mov	r4, r3
     d24:	e1a03002 	mov	r3, r2
     d28:	e1a02001 	mov	r2, r1
     d2c:	e1a01000 	mov	r1, r0
     d30:	e3a0001a 	mov	r0, #26
     d34:	ef000000 	svc	0x00000000
     d38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d3c:	e12fff1e 	bx	lr

00000d40 <thread_create>:
     d40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d44:	e1a04003 	mov	r4, r3
     d48:	e1a03002 	mov	r3, r2
     d4c:	e1a02001 	mov	r2, r1
     d50:	e1a01000 	mov	r1, r0
     d54:	e3a0001b 	mov	r0, #27
     d58:	ef000000 	svc	0x00000000
     d5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d60:	e12fff1e 	bx	lr

00000d64 <thread_exit>:
     d64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d68:	e1a04003 	mov	r4, r3
     d6c:	e1a03002 	mov	r3, r2
     d70:	e1a02001 	mov	r2, r1
     d74:	e1a01000 	mov	r1, r0
     d78:	e3a0001c 	mov	r0, #28
     d7c:	ef000000 	svc	0x00000000
     d80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d84:	e12fff1e 	bx	lr

00000d88 <thread_join>:
     d88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d8c:	e1a04003 	mov	r4, r3
     d90:	e1a03002 	mov	r3, r2
     d94:	e1a02001 	mov	r2, r1
     d98:	e1a01000 	mov	r1, r0
     d9c:	e3a0001d 	mov	r0, #29
     da0:	ef000000 	svc	0x00000000
     da4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     da8:	e12fff1e 	bx	lr

00000dac <waitpid>:
     dac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     db0:	e1a04003 	mov	r4, r3
     db4:	e1a03002 	mov	r3, r2
     db8:	e1a02001 	mov	r2, r1
     dbc:	e1a01000 	mov	r1, r0
     dc0:	e3a0001e 	mov	r0, #30
     dc4:	ef000000 	svc	0x00000000
     dc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dcc:	e12fff1e 	bx	lr

00000dd0 <barrier_init>:
     dd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dd4:	e1a04003 	mov	r4, r3
     dd8:	e1a03002 	mov	r3, r2
     ddc:	e1a02001 	mov	r2, r1
     de0:	e1a01000 	mov	r1, r0
     de4:	e3a0001f 	mov	r0, #31
     de8:	ef000000 	svc	0x00000000
     dec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     df0:	e12fff1e 	bx	lr

00000df4 <barrier_check>:
     df4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     df8:	e1a04003 	mov	r4, r3
     dfc:	e1a03002 	mov	r3, r2
     e00:	e1a02001 	mov	r2, r1
     e04:	e1a01000 	mov	r1, r0
     e08:	e3a00020 	mov	r0, #32
     e0c:	ef000000 	svc	0x00000000
     e10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e14:	e12fff1e 	bx	lr

00000e18 <sleepChan>:
     e18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e1c:	e1a04003 	mov	r4, r3
     e20:	e1a03002 	mov	r3, r2
     e24:	e1a02001 	mov	r2, r1
     e28:	e1a01000 	mov	r1, r0
     e2c:	e3a00024 	mov	r0, #36	@ 0x24
     e30:	ef000000 	svc	0x00000000
     e34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e38:	e12fff1e 	bx	lr

00000e3c <getChannel>:
     e3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e40:	e1a04003 	mov	r4, r3
     e44:	e1a03002 	mov	r3, r2
     e48:	e1a02001 	mov	r2, r1
     e4c:	e1a01000 	mov	r1, r0
     e50:	e3a00025 	mov	r0, #37	@ 0x25
     e54:	ef000000 	svc	0x00000000
     e58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e5c:	e12fff1e 	bx	lr

00000e60 <sigChan>:
     e60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e64:	e1a04003 	mov	r4, r3
     e68:	e1a03002 	mov	r3, r2
     e6c:	e1a02001 	mov	r2, r1
     e70:	e1a01000 	mov	r1, r0
     e74:	e3a00026 	mov	r0, #38	@ 0x26
     e78:	ef000000 	svc	0x00000000
     e7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e80:	e12fff1e 	bx	lr

00000e84 <sigOneChan>:
     e84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e88:	e1a04003 	mov	r4, r3
     e8c:	e1a03002 	mov	r3, r2
     e90:	e1a02001 	mov	r2, r1
     e94:	e1a01000 	mov	r1, r0
     e98:	e3a00027 	mov	r0, #39	@ 0x27
     e9c:	ef000000 	svc	0x00000000
     ea0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ea4:	e12fff1e 	bx	lr

00000ea8 <putc>:
     ea8:	e92d4800 	push	{fp, lr}
     eac:	e28db004 	add	fp, sp, #4
     eb0:	e24dd008 	sub	sp, sp, #8
     eb4:	e50b0008 	str	r0, [fp, #-8]
     eb8:	e1a03001 	mov	r3, r1
     ebc:	e54b3009 	strb	r3, [fp, #-9]
     ec0:	e24b3009 	sub	r3, fp, #9
     ec4:	e3a02001 	mov	r2, #1
     ec8:	e1a01003 	mov	r1, r3
     ecc:	e51b0008 	ldr	r0, [fp, #-8]
     ed0:	ebfffedd 	bl	a4c <write>
     ed4:	e1a00000 	nop			@ (mov r0, r0)
     ed8:	e24bd004 	sub	sp, fp, #4
     edc:	e8bd8800 	pop	{fp, pc}

00000ee0 <printint>:
     ee0:	e92d4800 	push	{fp, lr}
     ee4:	e28db004 	add	fp, sp, #4
     ee8:	e24dd030 	sub	sp, sp, #48	@ 0x30
     eec:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     ef0:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     ef4:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     ef8:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     efc:	e3a03000 	mov	r3, #0
     f00:	e50b300c 	str	r3, [fp, #-12]
     f04:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     f08:	e3530000 	cmp	r3, #0
     f0c:	0a000008 	beq	f34 <printint+0x54>
     f10:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f14:	e3530000 	cmp	r3, #0
     f18:	aa000005 	bge	f34 <printint+0x54>
     f1c:	e3a03001 	mov	r3, #1
     f20:	e50b300c 	str	r3, [fp, #-12]
     f24:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f28:	e2633000 	rsb	r3, r3, #0
     f2c:	e50b3010 	str	r3, [fp, #-16]
     f30:	ea000001 	b	f3c <printint+0x5c>
     f34:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f38:	e50b3010 	str	r3, [fp, #-16]
     f3c:	e3a03000 	mov	r3, #0
     f40:	e50b3008 	str	r3, [fp, #-8]
     f44:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     f48:	e51b3010 	ldr	r3, [fp, #-16]
     f4c:	e1a01002 	mov	r1, r2
     f50:	e1a00003 	mov	r0, r3
     f54:	eb0001d5 	bl	16b0 <__aeabi_uidivmod>
     f58:	e1a03001 	mov	r3, r1
     f5c:	e1a01003 	mov	r1, r3
     f60:	e51b3008 	ldr	r3, [fp, #-8]
     f64:	e2832001 	add	r2, r3, #1
     f68:	e50b2008 	str	r2, [fp, #-8]
     f6c:	e59f20a0 	ldr	r2, [pc, #160]	@ 1014 <printint+0x134>
     f70:	e7d22001 	ldrb	r2, [r2, r1]
     f74:	e2433004 	sub	r3, r3, #4
     f78:	e083300b 	add	r3, r3, fp
     f7c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f80:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     f84:	e1a01003 	mov	r1, r3
     f88:	e51b0010 	ldr	r0, [fp, #-16]
     f8c:	eb00018a 	bl	15bc <__udivsi3>
     f90:	e1a03000 	mov	r3, r0
     f94:	e50b3010 	str	r3, [fp, #-16]
     f98:	e51b3010 	ldr	r3, [fp, #-16]
     f9c:	e3530000 	cmp	r3, #0
     fa0:	1affffe7 	bne	f44 <printint+0x64>
     fa4:	e51b300c 	ldr	r3, [fp, #-12]
     fa8:	e3530000 	cmp	r3, #0
     fac:	0a00000e 	beq	fec <printint+0x10c>
     fb0:	e51b3008 	ldr	r3, [fp, #-8]
     fb4:	e2832001 	add	r2, r3, #1
     fb8:	e50b2008 	str	r2, [fp, #-8]
     fbc:	e2433004 	sub	r3, r3, #4
     fc0:	e083300b 	add	r3, r3, fp
     fc4:	e3a0202d 	mov	r2, #45	@ 0x2d
     fc8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     fcc:	ea000006 	b	fec <printint+0x10c>
     fd0:	e24b2020 	sub	r2, fp, #32
     fd4:	e51b3008 	ldr	r3, [fp, #-8]
     fd8:	e0823003 	add	r3, r2, r3
     fdc:	e5d33000 	ldrb	r3, [r3]
     fe0:	e1a01003 	mov	r1, r3
     fe4:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     fe8:	ebffffae 	bl	ea8 <putc>
     fec:	e51b3008 	ldr	r3, [fp, #-8]
     ff0:	e2433001 	sub	r3, r3, #1
     ff4:	e50b3008 	str	r3, [fp, #-8]
     ff8:	e51b3008 	ldr	r3, [fp, #-8]
     ffc:	e3530000 	cmp	r3, #0
    1000:	aafffff2 	bge	fd0 <printint+0xf0>
    1004:	e1a00000 	nop			@ (mov r0, r0)
    1008:	e1a00000 	nop			@ (mov r0, r0)
    100c:	e24bd004 	sub	sp, fp, #4
    1010:	e8bd8800 	pop	{fp, pc}
    1014:	00001740 	.word	0x00001740

00001018 <printf>:
    1018:	e92d000e 	push	{r1, r2, r3}
    101c:	e92d4800 	push	{fp, lr}
    1020:	e28db004 	add	fp, sp, #4
    1024:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1028:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    102c:	e3a03000 	mov	r3, #0
    1030:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1034:	e28b3008 	add	r3, fp, #8
    1038:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    103c:	e3a03000 	mov	r3, #0
    1040:	e50b3010 	str	r3, [fp, #-16]
    1044:	ea000074 	b	121c <printf+0x204>
    1048:	e59b2004 	ldr	r2, [fp, #4]
    104c:	e51b3010 	ldr	r3, [fp, #-16]
    1050:	e0823003 	add	r3, r2, r3
    1054:	e5d33000 	ldrb	r3, [r3]
    1058:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    105c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1060:	e3530000 	cmp	r3, #0
    1064:	1a00000b 	bne	1098 <printf+0x80>
    1068:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    106c:	e3530025 	cmp	r3, #37	@ 0x25
    1070:	1a000002 	bne	1080 <printf+0x68>
    1074:	e3a03025 	mov	r3, #37	@ 0x25
    1078:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    107c:	ea000063 	b	1210 <printf+0x1f8>
    1080:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1084:	e6ef3073 	uxtb	r3, r3
    1088:	e1a01003 	mov	r1, r3
    108c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1090:	ebffff84 	bl	ea8 <putc>
    1094:	ea00005d 	b	1210 <printf+0x1f8>
    1098:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    109c:	e3530025 	cmp	r3, #37	@ 0x25
    10a0:	1a00005a 	bne	1210 <printf+0x1f8>
    10a4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10a8:	e3530064 	cmp	r3, #100	@ 0x64
    10ac:	1a00000a 	bne	10dc <printf+0xc4>
    10b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10b4:	e5933000 	ldr	r3, [r3]
    10b8:	e1a01003 	mov	r1, r3
    10bc:	e3a03001 	mov	r3, #1
    10c0:	e3a0200a 	mov	r2, #10
    10c4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10c8:	ebffff84 	bl	ee0 <printint>
    10cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10d0:	e2833004 	add	r3, r3, #4
    10d4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10d8:	ea00004a 	b	1208 <printf+0x1f0>
    10dc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10e0:	e3530078 	cmp	r3, #120	@ 0x78
    10e4:	0a000002 	beq	10f4 <printf+0xdc>
    10e8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10ec:	e3530070 	cmp	r3, #112	@ 0x70
    10f0:	1a00000a 	bne	1120 <printf+0x108>
    10f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10f8:	e5933000 	ldr	r3, [r3]
    10fc:	e1a01003 	mov	r1, r3
    1100:	e3a03000 	mov	r3, #0
    1104:	e3a02010 	mov	r2, #16
    1108:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    110c:	ebffff73 	bl	ee0 <printint>
    1110:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1114:	e2833004 	add	r3, r3, #4
    1118:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    111c:	ea000039 	b	1208 <printf+0x1f0>
    1120:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1124:	e3530073 	cmp	r3, #115	@ 0x73
    1128:	1a000018 	bne	1190 <printf+0x178>
    112c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1130:	e5933000 	ldr	r3, [r3]
    1134:	e50b300c 	str	r3, [fp, #-12]
    1138:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    113c:	e2833004 	add	r3, r3, #4
    1140:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1144:	e51b300c 	ldr	r3, [fp, #-12]
    1148:	e3530000 	cmp	r3, #0
    114c:	1a00000a 	bne	117c <printf+0x164>
    1150:	e59f30f4 	ldr	r3, [pc, #244]	@ 124c <printf+0x234>
    1154:	e50b300c 	str	r3, [fp, #-12]
    1158:	ea000007 	b	117c <printf+0x164>
    115c:	e51b300c 	ldr	r3, [fp, #-12]
    1160:	e5d33000 	ldrb	r3, [r3]
    1164:	e1a01003 	mov	r1, r3
    1168:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    116c:	ebffff4d 	bl	ea8 <putc>
    1170:	e51b300c 	ldr	r3, [fp, #-12]
    1174:	e2833001 	add	r3, r3, #1
    1178:	e50b300c 	str	r3, [fp, #-12]
    117c:	e51b300c 	ldr	r3, [fp, #-12]
    1180:	e5d33000 	ldrb	r3, [r3]
    1184:	e3530000 	cmp	r3, #0
    1188:	1afffff3 	bne	115c <printf+0x144>
    118c:	ea00001d 	b	1208 <printf+0x1f0>
    1190:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1194:	e3530063 	cmp	r3, #99	@ 0x63
    1198:	1a000009 	bne	11c4 <printf+0x1ac>
    119c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11a0:	e5933000 	ldr	r3, [r3]
    11a4:	e6ef3073 	uxtb	r3, r3
    11a8:	e1a01003 	mov	r1, r3
    11ac:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11b0:	ebffff3c 	bl	ea8 <putc>
    11b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11b8:	e2833004 	add	r3, r3, #4
    11bc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11c0:	ea000010 	b	1208 <printf+0x1f0>
    11c4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11c8:	e3530025 	cmp	r3, #37	@ 0x25
    11cc:	1a000005 	bne	11e8 <printf+0x1d0>
    11d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11d4:	e6ef3073 	uxtb	r3, r3
    11d8:	e1a01003 	mov	r1, r3
    11dc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11e0:	ebffff30 	bl	ea8 <putc>
    11e4:	ea000007 	b	1208 <printf+0x1f0>
    11e8:	e3a01025 	mov	r1, #37	@ 0x25
    11ec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11f0:	ebffff2c 	bl	ea8 <putc>
    11f4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11f8:	e6ef3073 	uxtb	r3, r3
    11fc:	e1a01003 	mov	r1, r3
    1200:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1204:	ebffff27 	bl	ea8 <putc>
    1208:	e3a03000 	mov	r3, #0
    120c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1210:	e51b3010 	ldr	r3, [fp, #-16]
    1214:	e2833001 	add	r3, r3, #1
    1218:	e50b3010 	str	r3, [fp, #-16]
    121c:	e59b2004 	ldr	r2, [fp, #4]
    1220:	e51b3010 	ldr	r3, [fp, #-16]
    1224:	e0823003 	add	r3, r2, r3
    1228:	e5d33000 	ldrb	r3, [r3]
    122c:	e3530000 	cmp	r3, #0
    1230:	1affff84 	bne	1048 <printf+0x30>
    1234:	e1a00000 	nop			@ (mov r0, r0)
    1238:	e1a00000 	nop			@ (mov r0, r0)
    123c:	e24bd004 	sub	sp, fp, #4
    1240:	e8bd4800 	pop	{fp, lr}
    1244:	e28dd00c 	add	sp, sp, #12
    1248:	e12fff1e 	bx	lr
    124c:	00001738 	.word	0x00001738

00001250 <free>:
    1250:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1254:	e28db000 	add	fp, sp, #0
    1258:	e24dd014 	sub	sp, sp, #20
    125c:	e50b0010 	str	r0, [fp, #-16]
    1260:	e51b3010 	ldr	r3, [fp, #-16]
    1264:	e2433008 	sub	r3, r3, #8
    1268:	e50b300c 	str	r3, [fp, #-12]
    126c:	e59f3154 	ldr	r3, [pc, #340]	@ 13c8 <free+0x178>
    1270:	e5933000 	ldr	r3, [r3]
    1274:	e50b3008 	str	r3, [fp, #-8]
    1278:	ea000010 	b	12c0 <free+0x70>
    127c:	e51b3008 	ldr	r3, [fp, #-8]
    1280:	e5933000 	ldr	r3, [r3]
    1284:	e51b2008 	ldr	r2, [fp, #-8]
    1288:	e1520003 	cmp	r2, r3
    128c:	3a000008 	bcc	12b4 <free+0x64>
    1290:	e51b200c 	ldr	r2, [fp, #-12]
    1294:	e51b3008 	ldr	r3, [fp, #-8]
    1298:	e1520003 	cmp	r2, r3
    129c:	8a000010 	bhi	12e4 <free+0x94>
    12a0:	e51b3008 	ldr	r3, [fp, #-8]
    12a4:	e5933000 	ldr	r3, [r3]
    12a8:	e51b200c 	ldr	r2, [fp, #-12]
    12ac:	e1520003 	cmp	r2, r3
    12b0:	3a00000b 	bcc	12e4 <free+0x94>
    12b4:	e51b3008 	ldr	r3, [fp, #-8]
    12b8:	e5933000 	ldr	r3, [r3]
    12bc:	e50b3008 	str	r3, [fp, #-8]
    12c0:	e51b200c 	ldr	r2, [fp, #-12]
    12c4:	e51b3008 	ldr	r3, [fp, #-8]
    12c8:	e1520003 	cmp	r2, r3
    12cc:	9affffea 	bls	127c <free+0x2c>
    12d0:	e51b3008 	ldr	r3, [fp, #-8]
    12d4:	e5933000 	ldr	r3, [r3]
    12d8:	e51b200c 	ldr	r2, [fp, #-12]
    12dc:	e1520003 	cmp	r2, r3
    12e0:	2affffe5 	bcs	127c <free+0x2c>
    12e4:	e51b300c 	ldr	r3, [fp, #-12]
    12e8:	e5933004 	ldr	r3, [r3, #4]
    12ec:	e1a03183 	lsl	r3, r3, #3
    12f0:	e51b200c 	ldr	r2, [fp, #-12]
    12f4:	e0822003 	add	r2, r2, r3
    12f8:	e51b3008 	ldr	r3, [fp, #-8]
    12fc:	e5933000 	ldr	r3, [r3]
    1300:	e1520003 	cmp	r2, r3
    1304:	1a00000d 	bne	1340 <free+0xf0>
    1308:	e51b300c 	ldr	r3, [fp, #-12]
    130c:	e5932004 	ldr	r2, [r3, #4]
    1310:	e51b3008 	ldr	r3, [fp, #-8]
    1314:	e5933000 	ldr	r3, [r3]
    1318:	e5933004 	ldr	r3, [r3, #4]
    131c:	e0822003 	add	r2, r2, r3
    1320:	e51b300c 	ldr	r3, [fp, #-12]
    1324:	e5832004 	str	r2, [r3, #4]
    1328:	e51b3008 	ldr	r3, [fp, #-8]
    132c:	e5933000 	ldr	r3, [r3]
    1330:	e5932000 	ldr	r2, [r3]
    1334:	e51b300c 	ldr	r3, [fp, #-12]
    1338:	e5832000 	str	r2, [r3]
    133c:	ea000003 	b	1350 <free+0x100>
    1340:	e51b3008 	ldr	r3, [fp, #-8]
    1344:	e5932000 	ldr	r2, [r3]
    1348:	e51b300c 	ldr	r3, [fp, #-12]
    134c:	e5832000 	str	r2, [r3]
    1350:	e51b3008 	ldr	r3, [fp, #-8]
    1354:	e5933004 	ldr	r3, [r3, #4]
    1358:	e1a03183 	lsl	r3, r3, #3
    135c:	e51b2008 	ldr	r2, [fp, #-8]
    1360:	e0823003 	add	r3, r2, r3
    1364:	e51b200c 	ldr	r2, [fp, #-12]
    1368:	e1520003 	cmp	r2, r3
    136c:	1a00000b 	bne	13a0 <free+0x150>
    1370:	e51b3008 	ldr	r3, [fp, #-8]
    1374:	e5932004 	ldr	r2, [r3, #4]
    1378:	e51b300c 	ldr	r3, [fp, #-12]
    137c:	e5933004 	ldr	r3, [r3, #4]
    1380:	e0822003 	add	r2, r2, r3
    1384:	e51b3008 	ldr	r3, [fp, #-8]
    1388:	e5832004 	str	r2, [r3, #4]
    138c:	e51b300c 	ldr	r3, [fp, #-12]
    1390:	e5932000 	ldr	r2, [r3]
    1394:	e51b3008 	ldr	r3, [fp, #-8]
    1398:	e5832000 	str	r2, [r3]
    139c:	ea000002 	b	13ac <free+0x15c>
    13a0:	e51b3008 	ldr	r3, [fp, #-8]
    13a4:	e51b200c 	ldr	r2, [fp, #-12]
    13a8:	e5832000 	str	r2, [r3]
    13ac:	e59f2014 	ldr	r2, [pc, #20]	@ 13c8 <free+0x178>
    13b0:	e51b3008 	ldr	r3, [fp, #-8]
    13b4:	e5823000 	str	r3, [r2]
    13b8:	e1a00000 	nop			@ (mov r0, r0)
    13bc:	e28bd000 	add	sp, fp, #0
    13c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    13c4:	e12fff1e 	bx	lr
    13c8:	0000175c 	.word	0x0000175c

000013cc <morecore>:
    13cc:	e92d4800 	push	{fp, lr}
    13d0:	e28db004 	add	fp, sp, #4
    13d4:	e24dd010 	sub	sp, sp, #16
    13d8:	e50b0010 	str	r0, [fp, #-16]
    13dc:	e51b3010 	ldr	r3, [fp, #-16]
    13e0:	e3530a01 	cmp	r3, #4096	@ 0x1000
    13e4:	2a000001 	bcs	13f0 <morecore+0x24>
    13e8:	e3a03a01 	mov	r3, #4096	@ 0x1000
    13ec:	e50b3010 	str	r3, [fp, #-16]
    13f0:	e51b3010 	ldr	r3, [fp, #-16]
    13f4:	e1a03183 	lsl	r3, r3, #3
    13f8:	e1a00003 	mov	r0, r3
    13fc:	ebfffe07 	bl	c20 <sbrk>
    1400:	e50b0008 	str	r0, [fp, #-8]
    1404:	e51b3008 	ldr	r3, [fp, #-8]
    1408:	e3730001 	cmn	r3, #1
    140c:	1a000001 	bne	1418 <morecore+0x4c>
    1410:	e3a03000 	mov	r3, #0
    1414:	ea00000a 	b	1444 <morecore+0x78>
    1418:	e51b3008 	ldr	r3, [fp, #-8]
    141c:	e50b300c 	str	r3, [fp, #-12]
    1420:	e51b300c 	ldr	r3, [fp, #-12]
    1424:	e51b2010 	ldr	r2, [fp, #-16]
    1428:	e5832004 	str	r2, [r3, #4]
    142c:	e51b300c 	ldr	r3, [fp, #-12]
    1430:	e2833008 	add	r3, r3, #8
    1434:	e1a00003 	mov	r0, r3
    1438:	ebffff84 	bl	1250 <free>
    143c:	e59f300c 	ldr	r3, [pc, #12]	@ 1450 <morecore+0x84>
    1440:	e5933000 	ldr	r3, [r3]
    1444:	e1a00003 	mov	r0, r3
    1448:	e24bd004 	sub	sp, fp, #4
    144c:	e8bd8800 	pop	{fp, pc}
    1450:	0000175c 	.word	0x0000175c

00001454 <malloc>:
    1454:	e92d4800 	push	{fp, lr}
    1458:	e28db004 	add	fp, sp, #4
    145c:	e24dd018 	sub	sp, sp, #24
    1460:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1464:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1468:	e2833007 	add	r3, r3, #7
    146c:	e1a031a3 	lsr	r3, r3, #3
    1470:	e2833001 	add	r3, r3, #1
    1474:	e50b3010 	str	r3, [fp, #-16]
    1478:	e59f3134 	ldr	r3, [pc, #308]	@ 15b4 <malloc+0x160>
    147c:	e5933000 	ldr	r3, [r3]
    1480:	e50b300c 	str	r3, [fp, #-12]
    1484:	e51b300c 	ldr	r3, [fp, #-12]
    1488:	e3530000 	cmp	r3, #0
    148c:	1a00000b 	bne	14c0 <malloc+0x6c>
    1490:	e59f3120 	ldr	r3, [pc, #288]	@ 15b8 <malloc+0x164>
    1494:	e50b300c 	str	r3, [fp, #-12]
    1498:	e59f2114 	ldr	r2, [pc, #276]	@ 15b4 <malloc+0x160>
    149c:	e51b300c 	ldr	r3, [fp, #-12]
    14a0:	e5823000 	str	r3, [r2]
    14a4:	e59f3108 	ldr	r3, [pc, #264]	@ 15b4 <malloc+0x160>
    14a8:	e5933000 	ldr	r3, [r3]
    14ac:	e59f2104 	ldr	r2, [pc, #260]	@ 15b8 <malloc+0x164>
    14b0:	e5823000 	str	r3, [r2]
    14b4:	e59f30fc 	ldr	r3, [pc, #252]	@ 15b8 <malloc+0x164>
    14b8:	e3a02000 	mov	r2, #0
    14bc:	e5832004 	str	r2, [r3, #4]
    14c0:	e51b300c 	ldr	r3, [fp, #-12]
    14c4:	e5933000 	ldr	r3, [r3]
    14c8:	e50b3008 	str	r3, [fp, #-8]
    14cc:	e51b3008 	ldr	r3, [fp, #-8]
    14d0:	e5933004 	ldr	r3, [r3, #4]
    14d4:	e51b2010 	ldr	r2, [fp, #-16]
    14d8:	e1520003 	cmp	r2, r3
    14dc:	8a00001e 	bhi	155c <malloc+0x108>
    14e0:	e51b3008 	ldr	r3, [fp, #-8]
    14e4:	e5933004 	ldr	r3, [r3, #4]
    14e8:	e51b2010 	ldr	r2, [fp, #-16]
    14ec:	e1520003 	cmp	r2, r3
    14f0:	1a000004 	bne	1508 <malloc+0xb4>
    14f4:	e51b3008 	ldr	r3, [fp, #-8]
    14f8:	e5932000 	ldr	r2, [r3]
    14fc:	e51b300c 	ldr	r3, [fp, #-12]
    1500:	e5832000 	str	r2, [r3]
    1504:	ea00000e 	b	1544 <malloc+0xf0>
    1508:	e51b3008 	ldr	r3, [fp, #-8]
    150c:	e5932004 	ldr	r2, [r3, #4]
    1510:	e51b3010 	ldr	r3, [fp, #-16]
    1514:	e0422003 	sub	r2, r2, r3
    1518:	e51b3008 	ldr	r3, [fp, #-8]
    151c:	e5832004 	str	r2, [r3, #4]
    1520:	e51b3008 	ldr	r3, [fp, #-8]
    1524:	e5933004 	ldr	r3, [r3, #4]
    1528:	e1a03183 	lsl	r3, r3, #3
    152c:	e51b2008 	ldr	r2, [fp, #-8]
    1530:	e0823003 	add	r3, r2, r3
    1534:	e50b3008 	str	r3, [fp, #-8]
    1538:	e51b3008 	ldr	r3, [fp, #-8]
    153c:	e51b2010 	ldr	r2, [fp, #-16]
    1540:	e5832004 	str	r2, [r3, #4]
    1544:	e59f2068 	ldr	r2, [pc, #104]	@ 15b4 <malloc+0x160>
    1548:	e51b300c 	ldr	r3, [fp, #-12]
    154c:	e5823000 	str	r3, [r2]
    1550:	e51b3008 	ldr	r3, [fp, #-8]
    1554:	e2833008 	add	r3, r3, #8
    1558:	ea000012 	b	15a8 <malloc+0x154>
    155c:	e59f3050 	ldr	r3, [pc, #80]	@ 15b4 <malloc+0x160>
    1560:	e5933000 	ldr	r3, [r3]
    1564:	e51b2008 	ldr	r2, [fp, #-8]
    1568:	e1520003 	cmp	r2, r3
    156c:	1a000007 	bne	1590 <malloc+0x13c>
    1570:	e51b0010 	ldr	r0, [fp, #-16]
    1574:	ebffff94 	bl	13cc <morecore>
    1578:	e50b0008 	str	r0, [fp, #-8]
    157c:	e51b3008 	ldr	r3, [fp, #-8]
    1580:	e3530000 	cmp	r3, #0
    1584:	1a000001 	bne	1590 <malloc+0x13c>
    1588:	e3a03000 	mov	r3, #0
    158c:	ea000005 	b	15a8 <malloc+0x154>
    1590:	e51b3008 	ldr	r3, [fp, #-8]
    1594:	e50b300c 	str	r3, [fp, #-12]
    1598:	e51b3008 	ldr	r3, [fp, #-8]
    159c:	e5933000 	ldr	r3, [r3]
    15a0:	e50b3008 	str	r3, [fp, #-8]
    15a4:	eaffffc8 	b	14cc <malloc+0x78>
    15a8:	e1a00003 	mov	r0, r3
    15ac:	e24bd004 	sub	sp, fp, #4
    15b0:	e8bd8800 	pop	{fp, pc}
    15b4:	0000175c 	.word	0x0000175c
    15b8:	00001754 	.word	0x00001754

000015bc <__udivsi3>:
    15bc:	e2512001 	subs	r2, r1, #1
    15c0:	012fff1e 	bxeq	lr
    15c4:	3a000036 	bcc	16a4 <__udivsi3+0xe8>
    15c8:	e1500001 	cmp	r0, r1
    15cc:	9a000022 	bls	165c <__udivsi3+0xa0>
    15d0:	e1110002 	tst	r1, r2
    15d4:	0a000023 	beq	1668 <__udivsi3+0xac>
    15d8:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    15dc:	01a01181 	lsleq	r1, r1, #3
    15e0:	03a03008 	moveq	r3, #8
    15e4:	13a03001 	movne	r3, #1
    15e8:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    15ec:	31510000 	cmpcc	r1, r0
    15f0:	31a01201 	lslcc	r1, r1, #4
    15f4:	31a03203 	lslcc	r3, r3, #4
    15f8:	3afffffa 	bcc	15e8 <__udivsi3+0x2c>
    15fc:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1600:	31510000 	cmpcc	r1, r0
    1604:	31a01081 	lslcc	r1, r1, #1
    1608:	31a03083 	lslcc	r3, r3, #1
    160c:	3afffffa 	bcc	15fc <__udivsi3+0x40>
    1610:	e3a02000 	mov	r2, #0
    1614:	e1500001 	cmp	r0, r1
    1618:	20400001 	subcs	r0, r0, r1
    161c:	21822003 	orrcs	r2, r2, r3
    1620:	e15000a1 	cmp	r0, r1, lsr #1
    1624:	204000a1 	subcs	r0, r0, r1, lsr #1
    1628:	218220a3 	orrcs	r2, r2, r3, lsr #1
    162c:	e1500121 	cmp	r0, r1, lsr #2
    1630:	20400121 	subcs	r0, r0, r1, lsr #2
    1634:	21822123 	orrcs	r2, r2, r3, lsr #2
    1638:	e15001a1 	cmp	r0, r1, lsr #3
    163c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1640:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1644:	e3500000 	cmp	r0, #0
    1648:	11b03223 	lsrsne	r3, r3, #4
    164c:	11a01221 	lsrne	r1, r1, #4
    1650:	1affffef 	bne	1614 <__udivsi3+0x58>
    1654:	e1a00002 	mov	r0, r2
    1658:	e12fff1e 	bx	lr
    165c:	03a00001 	moveq	r0, #1
    1660:	13a00000 	movne	r0, #0
    1664:	e12fff1e 	bx	lr
    1668:	e3510801 	cmp	r1, #65536	@ 0x10000
    166c:	21a01821 	lsrcs	r1, r1, #16
    1670:	23a02010 	movcs	r2, #16
    1674:	33a02000 	movcc	r2, #0
    1678:	e3510c01 	cmp	r1, #256	@ 0x100
    167c:	21a01421 	lsrcs	r1, r1, #8
    1680:	22822008 	addcs	r2, r2, #8
    1684:	e3510010 	cmp	r1, #16
    1688:	21a01221 	lsrcs	r1, r1, #4
    168c:	22822004 	addcs	r2, r2, #4
    1690:	e3510004 	cmp	r1, #4
    1694:	82822003 	addhi	r2, r2, #3
    1698:	908220a1 	addls	r2, r2, r1, lsr #1
    169c:	e1a00230 	lsr	r0, r0, r2
    16a0:	e12fff1e 	bx	lr
    16a4:	e3500000 	cmp	r0, #0
    16a8:	13e00000 	mvnne	r0, #0
    16ac:	ea000007 	b	16d0 <__aeabi_idiv0>

000016b0 <__aeabi_uidivmod>:
    16b0:	e3510000 	cmp	r1, #0
    16b4:	0afffffa 	beq	16a4 <__udivsi3+0xe8>
    16b8:	e92d4003 	push	{r0, r1, lr}
    16bc:	ebffffbe 	bl	15bc <__udivsi3>
    16c0:	e8bd4006 	pop	{r1, r2, lr}
    16c4:	e0030092 	mul	r3, r2, r0
    16c8:	e0411003 	sub	r1, r1, r3
    16cc:	e12fff1e 	bx	lr

000016d0 <__aeabi_idiv0>:
    16d0:	e12fff1e 	bx	lr
