
_test_simple_thread:     file format elf32-littlearm


Disassembly of section .text:

00000000 <simple_thread>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e51b3010 	ldr	r3, [fp, #-16]
      14:	e50b3008 	str	r3, [fp, #-8]
      18:	e51b3008 	ldr	r3, [fp, #-8]
      1c:	e5933000 	ldr	r3, [r3]
      20:	e1a02003 	mov	r2, r3
      24:	e59f1044 	ldr	r1, [pc, #68]	@ 70 <simple_thread+0x70>
      28:	e3a00001 	mov	r0, #1
      2c:	eb000419 	bl	1098 <printf>
      30:	e51b3008 	ldr	r3, [fp, #-8]
      34:	e5933000 	ldr	r3, [r3]
      38:	e2833064 	add	r3, r3, #100	@ 0x64
      3c:	e59f2030 	ldr	r2, [pc, #48]	@ 74 <simple_thread+0x74>
      40:	e5823000 	str	r3, [r2]
      44:	e59f3028 	ldr	r3, [pc, #40]	@ 74 <simple_thread+0x74>
      48:	e5933000 	ldr	r3, [r3]
      4c:	e1a02003 	mov	r2, r3
      50:	e59f1020 	ldr	r1, [pc, #32]	@ 78 <simple_thread+0x78>
      54:	e3a00001 	mov	r0, #1
      58:	eb00040e 	bl	1098 <printf>
      5c:	eb000360 	bl	de4 <thread_exit>
      60:	e3a03000 	mov	r3, #0
      64:	e1a00003 	mov	r0, r3
      68:	e24bd004 	sub	sp, fp, #4
      6c:	e8bd8800 	pop	{fp, pc}
      70:	00001754 	.word	0x00001754
      74:	000018f4 	.word	0x000018f4
      78:	00001774 	.word	0x00001774

0000007c <main>:
      7c:	e92d4800 	push	{fp, lr}
      80:	e28db004 	add	fp, sp, #4
      84:	e24dd008 	sub	sp, sp, #8
      88:	e59f10f0 	ldr	r1, [pc, #240]	@ 180 <main+0x104>
      8c:	e3a00001 	mov	r0, #1
      90:	eb000400 	bl	1098 <printf>
      94:	e3a0302a 	mov	r3, #42	@ 0x2a
      98:	e50b3008 	str	r3, [fp, #-8]
      9c:	e59f10e0 	ldr	r1, [pc, #224]	@ 184 <main+0x108>
      a0:	e3a00001 	mov	r0, #1
      a4:	eb0003fb 	bl	1098 <printf>
      a8:	e24b2008 	sub	r2, fp, #8
      ac:	e24b300c 	sub	r3, fp, #12
      b0:	e59f10d0 	ldr	r1, [pc, #208]	@ 188 <main+0x10c>
      b4:	e1a00003 	mov	r0, r3
      b8:	eb000340 	bl	dc0 <thread_create>
      bc:	e1a03000 	mov	r3, r0
      c0:	e3530000 	cmp	r3, #0
      c4:	aa000003 	bge	d8 <main+0x5c>
      c8:	e59f10bc 	ldr	r1, [pc, #188]	@ 18c <main+0x110>
      cc:	e3a00001 	mov	r0, #1
      d0:	eb0003f0 	bl	1098 <printf>
      d4:	eb000258 	bl	a3c <exit>
      d8:	e51b300c 	ldr	r3, [fp, #-12]
      dc:	e1a02003 	mov	r2, r3
      e0:	e59f10a8 	ldr	r1, [pc, #168]	@ 190 <main+0x114>
      e4:	e3a00001 	mov	r0, #1
      e8:	eb0003ea 	bl	1098 <printf>
      ec:	e59f10a0 	ldr	r1, [pc, #160]	@ 194 <main+0x118>
      f0:	e3a00001 	mov	r0, #1
      f4:	eb0003e7 	bl	1098 <printf>
      f8:	e51b300c 	ldr	r3, [fp, #-12]
      fc:	e1a00003 	mov	r0, r3
     100:	eb000340 	bl	e08 <thread_join>
     104:	e1a03000 	mov	r3, r0
     108:	e3530000 	cmp	r3, #0
     10c:	aa000003 	bge	120 <main+0xa4>
     110:	e59f1080 	ldr	r1, [pc, #128]	@ 198 <main+0x11c>
     114:	e3a00001 	mov	r0, #1
     118:	eb0003de 	bl	1098 <printf>
     11c:	eb000246 	bl	a3c <exit>
     120:	e59f3074 	ldr	r3, [pc, #116]	@ 19c <main+0x120>
     124:	e5933000 	ldr	r3, [r3]
     128:	e1a02003 	mov	r2, r3
     12c:	e59f106c 	ldr	r1, [pc, #108]	@ 1a0 <main+0x124>
     130:	e3a00001 	mov	r0, #1
     134:	eb0003d7 	bl	1098 <printf>
     138:	e59f305c 	ldr	r3, [pc, #92]	@ 19c <main+0x120>
     13c:	e5933000 	ldr	r3, [r3]
     140:	e1a02003 	mov	r2, r3
     144:	e59f1058 	ldr	r1, [pc, #88]	@ 1a4 <main+0x128>
     148:	e3a00001 	mov	r0, #1
     14c:	eb0003d1 	bl	1098 <printf>
     150:	e59f3044 	ldr	r3, [pc, #68]	@ 19c <main+0x120>
     154:	e5933000 	ldr	r3, [r3]
     158:	e353008e 	cmp	r3, #142	@ 0x8e
     15c:	1a000003 	bne	170 <main+0xf4>
     160:	e59f1040 	ldr	r1, [pc, #64]	@ 1a8 <main+0x12c>
     164:	e3a00001 	mov	r0, #1
     168:	eb0003ca 	bl	1098 <printf>
     16c:	ea000002 	b	17c <main+0x100>
     170:	e59f1034 	ldr	r1, [pc, #52]	@ 1ac <main+0x130>
     174:	e3a00001 	mov	r0, #1
     178:	eb0003c6 	bl	1098 <printf>
     17c:	eb00022e 	bl	a3c <exit>
     180:	0000179c 	.word	0x0000179c
     184:	000017bc 	.word	0x000017bc
     188:	00000000 	.word	0x00000000
     18c:	000017d0 	.word	0x000017d0
     190:	000017f0 	.word	0x000017f0
     194:	0000180c 	.word	0x0000180c
     198:	00001830 	.word	0x00001830
     19c:	000018f4 	.word	0x000018f4
     1a0:	0000184c 	.word	0x0000184c
     1a4:	00001874 	.word	0x00001874
     1a8:	00001890 	.word	0x00001890
     1ac:	000018b4 	.word	0x000018b4

000001b0 <strcpy>:
     1b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1b4:	e28db000 	add	fp, sp, #0
     1b8:	e24dd014 	sub	sp, sp, #20
     1bc:	e50b0010 	str	r0, [fp, #-16]
     1c0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     1c4:	e51b3010 	ldr	r3, [fp, #-16]
     1c8:	e50b3008 	str	r3, [fp, #-8]
     1cc:	e1a00000 	nop			@ (mov r0, r0)
     1d0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1d4:	e2823001 	add	r3, r2, #1
     1d8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1dc:	e51b3010 	ldr	r3, [fp, #-16]
     1e0:	e2831001 	add	r1, r3, #1
     1e4:	e50b1010 	str	r1, [fp, #-16]
     1e8:	e5d22000 	ldrb	r2, [r2]
     1ec:	e5c32000 	strb	r2, [r3]
     1f0:	e5d33000 	ldrb	r3, [r3]
     1f4:	e3530000 	cmp	r3, #0
     1f8:	1afffff4 	bne	1d0 <strcpy+0x20>
     1fc:	e51b3008 	ldr	r3, [fp, #-8]
     200:	e1a00003 	mov	r0, r3
     204:	e28bd000 	add	sp, fp, #0
     208:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     20c:	e12fff1e 	bx	lr

00000210 <strcmp>:
     210:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     214:	e28db000 	add	fp, sp, #0
     218:	e24dd00c 	sub	sp, sp, #12
     21c:	e50b0008 	str	r0, [fp, #-8]
     220:	e50b100c 	str	r1, [fp, #-12]
     224:	ea000005 	b	240 <strcmp+0x30>
     228:	e51b3008 	ldr	r3, [fp, #-8]
     22c:	e2833001 	add	r3, r3, #1
     230:	e50b3008 	str	r3, [fp, #-8]
     234:	e51b300c 	ldr	r3, [fp, #-12]
     238:	e2833001 	add	r3, r3, #1
     23c:	e50b300c 	str	r3, [fp, #-12]
     240:	e51b3008 	ldr	r3, [fp, #-8]
     244:	e5d33000 	ldrb	r3, [r3]
     248:	e3530000 	cmp	r3, #0
     24c:	0a000005 	beq	268 <strcmp+0x58>
     250:	e51b3008 	ldr	r3, [fp, #-8]
     254:	e5d32000 	ldrb	r2, [r3]
     258:	e51b300c 	ldr	r3, [fp, #-12]
     25c:	e5d33000 	ldrb	r3, [r3]
     260:	e1520003 	cmp	r2, r3
     264:	0affffef 	beq	228 <strcmp+0x18>
     268:	e51b3008 	ldr	r3, [fp, #-8]
     26c:	e5d33000 	ldrb	r3, [r3]
     270:	e1a02003 	mov	r2, r3
     274:	e51b300c 	ldr	r3, [fp, #-12]
     278:	e5d33000 	ldrb	r3, [r3]
     27c:	e0423003 	sub	r3, r2, r3
     280:	e1a00003 	mov	r0, r3
     284:	e28bd000 	add	sp, fp, #0
     288:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     28c:	e12fff1e 	bx	lr

00000290 <strlen>:
     290:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     294:	e28db000 	add	fp, sp, #0
     298:	e24dd014 	sub	sp, sp, #20
     29c:	e50b0010 	str	r0, [fp, #-16]
     2a0:	e3a03000 	mov	r3, #0
     2a4:	e50b3008 	str	r3, [fp, #-8]
     2a8:	ea000002 	b	2b8 <strlen+0x28>
     2ac:	e51b3008 	ldr	r3, [fp, #-8]
     2b0:	e2833001 	add	r3, r3, #1
     2b4:	e50b3008 	str	r3, [fp, #-8]
     2b8:	e51b3008 	ldr	r3, [fp, #-8]
     2bc:	e51b2010 	ldr	r2, [fp, #-16]
     2c0:	e0823003 	add	r3, r2, r3
     2c4:	e5d33000 	ldrb	r3, [r3]
     2c8:	e3530000 	cmp	r3, #0
     2cc:	1afffff6 	bne	2ac <strlen+0x1c>
     2d0:	e51b3008 	ldr	r3, [fp, #-8]
     2d4:	e1a00003 	mov	r0, r3
     2d8:	e28bd000 	add	sp, fp, #0
     2dc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2e0:	e12fff1e 	bx	lr

000002e4 <memset>:
     2e4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2e8:	e28db000 	add	fp, sp, #0
     2ec:	e24dd024 	sub	sp, sp, #36	@ 0x24
     2f0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     2f4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     2f8:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     2fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     300:	e50b3008 	str	r3, [fp, #-8]
     304:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     308:	e54b300d 	strb	r3, [fp, #-13]
     30c:	e55b200d 	ldrb	r2, [fp, #-13]
     310:	e1a03002 	mov	r3, r2
     314:	e1a03403 	lsl	r3, r3, #8
     318:	e0833002 	add	r3, r3, r2
     31c:	e1a03803 	lsl	r3, r3, #16
     320:	e1a02003 	mov	r2, r3
     324:	e55b300d 	ldrb	r3, [fp, #-13]
     328:	e1a03403 	lsl	r3, r3, #8
     32c:	e1822003 	orr	r2, r2, r3
     330:	e55b300d 	ldrb	r3, [fp, #-13]
     334:	e1823003 	orr	r3, r2, r3
     338:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     33c:	ea000008 	b	364 <memset+0x80>
     340:	e51b3008 	ldr	r3, [fp, #-8]
     344:	e55b200d 	ldrb	r2, [fp, #-13]
     348:	e5c32000 	strb	r2, [r3]
     34c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     350:	e2433001 	sub	r3, r3, #1
     354:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     358:	e51b3008 	ldr	r3, [fp, #-8]
     35c:	e2833001 	add	r3, r3, #1
     360:	e50b3008 	str	r3, [fp, #-8]
     364:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     368:	e3530000 	cmp	r3, #0
     36c:	0a000003 	beq	380 <memset+0x9c>
     370:	e51b3008 	ldr	r3, [fp, #-8]
     374:	e2033003 	and	r3, r3, #3
     378:	e3530000 	cmp	r3, #0
     37c:	1affffef 	bne	340 <memset+0x5c>
     380:	e51b3008 	ldr	r3, [fp, #-8]
     384:	e50b300c 	str	r3, [fp, #-12]
     388:	ea000008 	b	3b0 <memset+0xcc>
     38c:	e51b300c 	ldr	r3, [fp, #-12]
     390:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     394:	e5832000 	str	r2, [r3]
     398:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     39c:	e2433004 	sub	r3, r3, #4
     3a0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3a4:	e51b300c 	ldr	r3, [fp, #-12]
     3a8:	e2833004 	add	r3, r3, #4
     3ac:	e50b300c 	str	r3, [fp, #-12]
     3b0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3b4:	e3530003 	cmp	r3, #3
     3b8:	8afffff3 	bhi	38c <memset+0xa8>
     3bc:	e51b300c 	ldr	r3, [fp, #-12]
     3c0:	e50b3008 	str	r3, [fp, #-8]
     3c4:	ea000008 	b	3ec <memset+0x108>
     3c8:	e51b3008 	ldr	r3, [fp, #-8]
     3cc:	e55b200d 	ldrb	r2, [fp, #-13]
     3d0:	e5c32000 	strb	r2, [r3]
     3d4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3d8:	e2433001 	sub	r3, r3, #1
     3dc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3e0:	e51b3008 	ldr	r3, [fp, #-8]
     3e4:	e2833001 	add	r3, r3, #1
     3e8:	e50b3008 	str	r3, [fp, #-8]
     3ec:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3f0:	e3530000 	cmp	r3, #0
     3f4:	1afffff3 	bne	3c8 <memset+0xe4>
     3f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3fc:	e1a00003 	mov	r0, r3
     400:	e28bd000 	add	sp, fp, #0
     404:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     408:	e12fff1e 	bx	lr

0000040c <strchr>:
     40c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     410:	e28db000 	add	fp, sp, #0
     414:	e24dd00c 	sub	sp, sp, #12
     418:	e50b0008 	str	r0, [fp, #-8]
     41c:	e1a03001 	mov	r3, r1
     420:	e54b3009 	strb	r3, [fp, #-9]
     424:	ea000009 	b	450 <strchr+0x44>
     428:	e51b3008 	ldr	r3, [fp, #-8]
     42c:	e5d33000 	ldrb	r3, [r3]
     430:	e55b2009 	ldrb	r2, [fp, #-9]
     434:	e1520003 	cmp	r2, r3
     438:	1a000001 	bne	444 <strchr+0x38>
     43c:	e51b3008 	ldr	r3, [fp, #-8]
     440:	ea000007 	b	464 <strchr+0x58>
     444:	e51b3008 	ldr	r3, [fp, #-8]
     448:	e2833001 	add	r3, r3, #1
     44c:	e50b3008 	str	r3, [fp, #-8]
     450:	e51b3008 	ldr	r3, [fp, #-8]
     454:	e5d33000 	ldrb	r3, [r3]
     458:	e3530000 	cmp	r3, #0
     45c:	1afffff1 	bne	428 <strchr+0x1c>
     460:	e3a03000 	mov	r3, #0
     464:	e1a00003 	mov	r0, r3
     468:	e28bd000 	add	sp, fp, #0
     46c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     470:	e12fff1e 	bx	lr

00000474 <gets>:
     474:	e92d4800 	push	{fp, lr}
     478:	e28db004 	add	fp, sp, #4
     47c:	e24dd018 	sub	sp, sp, #24
     480:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     484:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     488:	e3a03000 	mov	r3, #0
     48c:	e50b3008 	str	r3, [fp, #-8]
     490:	ea000016 	b	4f0 <gets+0x7c>
     494:	e24b300d 	sub	r3, fp, #13
     498:	e3a02001 	mov	r2, #1
     49c:	e1a01003 	mov	r1, r3
     4a0:	e3a00000 	mov	r0, #0
     4a4:	eb00017f 	bl	aa8 <read>
     4a8:	e50b000c 	str	r0, [fp, #-12]
     4ac:	e51b300c 	ldr	r3, [fp, #-12]
     4b0:	e3530000 	cmp	r3, #0
     4b4:	da000013 	ble	508 <gets+0x94>
     4b8:	e51b3008 	ldr	r3, [fp, #-8]
     4bc:	e2832001 	add	r2, r3, #1
     4c0:	e50b2008 	str	r2, [fp, #-8]
     4c4:	e1a02003 	mov	r2, r3
     4c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4cc:	e0833002 	add	r3, r3, r2
     4d0:	e55b200d 	ldrb	r2, [fp, #-13]
     4d4:	e5c32000 	strb	r2, [r3]
     4d8:	e55b300d 	ldrb	r3, [fp, #-13]
     4dc:	e353000a 	cmp	r3, #10
     4e0:	0a000009 	beq	50c <gets+0x98>
     4e4:	e55b300d 	ldrb	r3, [fp, #-13]
     4e8:	e353000d 	cmp	r3, #13
     4ec:	0a000006 	beq	50c <gets+0x98>
     4f0:	e51b3008 	ldr	r3, [fp, #-8]
     4f4:	e2833001 	add	r3, r3, #1
     4f8:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     4fc:	e1520003 	cmp	r2, r3
     500:	caffffe3 	bgt	494 <gets+0x20>
     504:	ea000000 	b	50c <gets+0x98>
     508:	e1a00000 	nop			@ (mov r0, r0)
     50c:	e51b3008 	ldr	r3, [fp, #-8]
     510:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     514:	e0823003 	add	r3, r2, r3
     518:	e3a02000 	mov	r2, #0
     51c:	e5c32000 	strb	r2, [r3]
     520:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     524:	e1a00003 	mov	r0, r3
     528:	e24bd004 	sub	sp, fp, #4
     52c:	e8bd8800 	pop	{fp, pc}

00000530 <stat>:
     530:	e92d4800 	push	{fp, lr}
     534:	e28db004 	add	fp, sp, #4
     538:	e24dd010 	sub	sp, sp, #16
     53c:	e50b0010 	str	r0, [fp, #-16]
     540:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     544:	e3a01000 	mov	r1, #0
     548:	e51b0010 	ldr	r0, [fp, #-16]
     54c:	eb000182 	bl	b5c <open>
     550:	e50b0008 	str	r0, [fp, #-8]
     554:	e51b3008 	ldr	r3, [fp, #-8]
     558:	e3530000 	cmp	r3, #0
     55c:	aa000001 	bge	568 <stat+0x38>
     560:	e3e03000 	mvn	r3, #0
     564:	ea000006 	b	584 <stat+0x54>
     568:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     56c:	e51b0008 	ldr	r0, [fp, #-8]
     570:	eb000194 	bl	bc8 <fstat>
     574:	e50b000c 	str	r0, [fp, #-12]
     578:	e51b0008 	ldr	r0, [fp, #-8]
     57c:	eb00015b 	bl	af0 <close>
     580:	e51b300c 	ldr	r3, [fp, #-12]
     584:	e1a00003 	mov	r0, r3
     588:	e24bd004 	sub	sp, fp, #4
     58c:	e8bd8800 	pop	{fp, pc}

00000590 <atoi>:
     590:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     594:	e28db000 	add	fp, sp, #0
     598:	e24dd014 	sub	sp, sp, #20
     59c:	e50b0010 	str	r0, [fp, #-16]
     5a0:	e3a03000 	mov	r3, #0
     5a4:	e50b3008 	str	r3, [fp, #-8]
     5a8:	ea00000c 	b	5e0 <atoi+0x50>
     5ac:	e51b2008 	ldr	r2, [fp, #-8]
     5b0:	e1a03002 	mov	r3, r2
     5b4:	e1a03103 	lsl	r3, r3, #2
     5b8:	e0833002 	add	r3, r3, r2
     5bc:	e1a03083 	lsl	r3, r3, #1
     5c0:	e1a01003 	mov	r1, r3
     5c4:	e51b3010 	ldr	r3, [fp, #-16]
     5c8:	e2832001 	add	r2, r3, #1
     5cc:	e50b2010 	str	r2, [fp, #-16]
     5d0:	e5d33000 	ldrb	r3, [r3]
     5d4:	e0813003 	add	r3, r1, r3
     5d8:	e2433030 	sub	r3, r3, #48	@ 0x30
     5dc:	e50b3008 	str	r3, [fp, #-8]
     5e0:	e51b3010 	ldr	r3, [fp, #-16]
     5e4:	e5d33000 	ldrb	r3, [r3]
     5e8:	e353002f 	cmp	r3, #47	@ 0x2f
     5ec:	9a000003 	bls	600 <atoi+0x70>
     5f0:	e51b3010 	ldr	r3, [fp, #-16]
     5f4:	e5d33000 	ldrb	r3, [r3]
     5f8:	e3530039 	cmp	r3, #57	@ 0x39
     5fc:	9affffea 	bls	5ac <atoi+0x1c>
     600:	e51b3010 	ldr	r3, [fp, #-16]
     604:	e5d33000 	ldrb	r3, [r3]
     608:	e3530000 	cmp	r3, #0
     60c:	1a000001 	bne	618 <atoi+0x88>
     610:	e51b3008 	ldr	r3, [fp, #-8]
     614:	ea000000 	b	61c <atoi+0x8c>
     618:	e3e03000 	mvn	r3, #0
     61c:	e1a00003 	mov	r0, r3
     620:	e28bd000 	add	sp, fp, #0
     624:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     628:	e12fff1e 	bx	lr

0000062c <memmove>:
     62c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     630:	e28db000 	add	fp, sp, #0
     634:	e24dd01c 	sub	sp, sp, #28
     638:	e50b0010 	str	r0, [fp, #-16]
     63c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     640:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     644:	e51b3010 	ldr	r3, [fp, #-16]
     648:	e50b3008 	str	r3, [fp, #-8]
     64c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     650:	e50b300c 	str	r3, [fp, #-12]
     654:	ea000007 	b	678 <memmove+0x4c>
     658:	e51b200c 	ldr	r2, [fp, #-12]
     65c:	e2823001 	add	r3, r2, #1
     660:	e50b300c 	str	r3, [fp, #-12]
     664:	e51b3008 	ldr	r3, [fp, #-8]
     668:	e2831001 	add	r1, r3, #1
     66c:	e50b1008 	str	r1, [fp, #-8]
     670:	e5d22000 	ldrb	r2, [r2]
     674:	e5c32000 	strb	r2, [r3]
     678:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     67c:	e2432001 	sub	r2, r3, #1
     680:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     684:	e3530000 	cmp	r3, #0
     688:	cafffff2 	bgt	658 <memmove+0x2c>
     68c:	e51b3010 	ldr	r3, [fp, #-16]
     690:	e1a00003 	mov	r0, r3
     694:	e28bd000 	add	sp, fp, #0
     698:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     69c:	e12fff1e 	bx	lr

000006a0 <initiateLock>:
     6a0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6a4:	e28db000 	add	fp, sp, #0
     6a8:	e24dd00c 	sub	sp, sp, #12
     6ac:	e50b0008 	str	r0, [fp, #-8]
     6b0:	e51b3008 	ldr	r3, [fp, #-8]
     6b4:	e3a02000 	mov	r2, #0
     6b8:	e5832000 	str	r2, [r3]
     6bc:	e51b3008 	ldr	r3, [fp, #-8]
     6c0:	e3a02001 	mov	r2, #1
     6c4:	e5832004 	str	r2, [r3, #4]
     6c8:	e1a00000 	nop			@ (mov r0, r0)
     6cc:	e28bd000 	add	sp, fp, #0
     6d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6d4:	e12fff1e 	bx	lr

000006d8 <xchg>:
     6d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6dc:	e28db000 	add	fp, sp, #0
     6e0:	e24dd00c 	sub	sp, sp, #12
     6e4:	e50b0008 	str	r0, [fp, #-8]
     6e8:	e50b100c 	str	r1, [fp, #-12]
     6ec:	e51b200c 	ldr	r2, [fp, #-12]
     6f0:	e51b3008 	ldr	r3, [fp, #-8]
     6f4:	e1931f9f 	ldrex	r1, [r3]
     6f8:	e1830f92 	strex	r0, r2, [r3]
     6fc:	e3500000 	cmp	r0, #0
     700:	1afffffb 	bne	6f4 <xchg+0x1c>
     704:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     708:	e1a03001 	mov	r3, r1
     70c:	e1a00003 	mov	r0, r3
     710:	e28bd000 	add	sp, fp, #0
     714:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     718:	e12fff1e 	bx	lr

0000071c <acquireLock>:
     71c:	e92d4800 	push	{fp, lr}
     720:	e28db004 	add	fp, sp, #4
     724:	e24dd008 	sub	sp, sp, #8
     728:	e50b0008 	str	r0, [fp, #-8]
     72c:	e51b3008 	ldr	r3, [fp, #-8]
     730:	e5933004 	ldr	r3, [r3, #4]
     734:	e3530000 	cmp	r3, #0
     738:	0a000008 	beq	760 <acquireLock+0x44>
     73c:	e1a00000 	nop			@ (mov r0, r0)
     740:	e51b3008 	ldr	r3, [fp, #-8]
     744:	e3a01001 	mov	r1, #1
     748:	e1a00003 	mov	r0, r3
     74c:	ebffffe1 	bl	6d8 <xchg>
     750:	e1a03000 	mov	r3, r0
     754:	e3530000 	cmp	r3, #0
     758:	1afffff8 	bne	740 <acquireLock+0x24>
     75c:	ea000000 	b	764 <acquireLock+0x48>
     760:	e1a00000 	nop			@ (mov r0, r0)
     764:	e24bd004 	sub	sp, fp, #4
     768:	e8bd8800 	pop	{fp, pc}

0000076c <releaseLock>:
     76c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     770:	e28db000 	add	fp, sp, #0
     774:	e24dd00c 	sub	sp, sp, #12
     778:	e50b0008 	str	r0, [fp, #-8]
     77c:	e51b3008 	ldr	r3, [fp, #-8]
     780:	e5933004 	ldr	r3, [r3, #4]
     784:	e3530000 	cmp	r3, #0
     788:	0a000007 	beq	7ac <releaseLock+0x40>
     78c:	e51b3008 	ldr	r3, [fp, #-8]
     790:	e5933000 	ldr	r3, [r3]
     794:	e3530001 	cmp	r3, #1
     798:	1a000005 	bne	7b4 <releaseLock+0x48>
     79c:	e51b3008 	ldr	r3, [fp, #-8]
     7a0:	e3a02000 	mov	r2, #0
     7a4:	e5832000 	str	r2, [r3]
     7a8:	ea000002 	b	7b8 <releaseLock+0x4c>
     7ac:	e1a00000 	nop			@ (mov r0, r0)
     7b0:	ea000000 	b	7b8 <releaseLock+0x4c>
     7b4:	e1a00000 	nop			@ (mov r0, r0)
     7b8:	e28bd000 	add	sp, fp, #0
     7bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7c0:	e12fff1e 	bx	lr

000007c4 <initiateCondVar>:
     7c4:	e92d4800 	push	{fp, lr}
     7c8:	e28db004 	add	fp, sp, #4
     7cc:	e24dd008 	sub	sp, sp, #8
     7d0:	e50b0008 	str	r0, [fp, #-8]
     7d4:	eb0001b8 	bl	ebc <getChannel>
     7d8:	e1a02000 	mov	r2, r0
     7dc:	e51b3008 	ldr	r3, [fp, #-8]
     7e0:	e5832000 	str	r2, [r3]
     7e4:	e51b3008 	ldr	r3, [fp, #-8]
     7e8:	e3a02001 	mov	r2, #1
     7ec:	e5832004 	str	r2, [r3, #4]
     7f0:	e1a00000 	nop			@ (mov r0, r0)
     7f4:	e24bd004 	sub	sp, fp, #4
     7f8:	e8bd8800 	pop	{fp, pc}

000007fc <condWait>:
     7fc:	e92d4800 	push	{fp, lr}
     800:	e28db004 	add	fp, sp, #4
     804:	e24dd008 	sub	sp, sp, #8
     808:	e50b0008 	str	r0, [fp, #-8]
     80c:	e50b100c 	str	r1, [fp, #-12]
     810:	e51b3008 	ldr	r3, [fp, #-8]
     814:	e5933004 	ldr	r3, [r3, #4]
     818:	e3530000 	cmp	r3, #0
     81c:	0a00000c 	beq	854 <condWait+0x58>
     820:	e51b300c 	ldr	r3, [fp, #-12]
     824:	e5933004 	ldr	r3, [r3, #4]
     828:	e3530000 	cmp	r3, #0
     82c:	0a000008 	beq	854 <condWait+0x58>
     830:	e51b000c 	ldr	r0, [fp, #-12]
     834:	ebffffcc 	bl	76c <releaseLock>
     838:	e51b3008 	ldr	r3, [fp, #-8]
     83c:	e5933000 	ldr	r3, [r3]
     840:	e1a00003 	mov	r0, r3
     844:	eb000193 	bl	e98 <sleepChan>
     848:	e51b000c 	ldr	r0, [fp, #-12]
     84c:	ebffffb2 	bl	71c <acquireLock>
     850:	ea000000 	b	858 <condWait+0x5c>
     854:	e1a00000 	nop			@ (mov r0, r0)
     858:	e24bd004 	sub	sp, fp, #4
     85c:	e8bd8800 	pop	{fp, pc}

00000860 <broadcast>:
     860:	e92d4800 	push	{fp, lr}
     864:	e28db004 	add	fp, sp, #4
     868:	e24dd008 	sub	sp, sp, #8
     86c:	e50b0008 	str	r0, [fp, #-8]
     870:	e51b3008 	ldr	r3, [fp, #-8]
     874:	e5933004 	ldr	r3, [r3, #4]
     878:	e3530000 	cmp	r3, #0
     87c:	0a000004 	beq	894 <broadcast+0x34>
     880:	e51b3008 	ldr	r3, [fp, #-8]
     884:	e5933000 	ldr	r3, [r3]
     888:	e1a00003 	mov	r0, r3
     88c:	eb000193 	bl	ee0 <sigChan>
     890:	ea000000 	b	898 <broadcast+0x38>
     894:	e1a00000 	nop			@ (mov r0, r0)
     898:	e24bd004 	sub	sp, fp, #4
     89c:	e8bd8800 	pop	{fp, pc}

000008a0 <signal>:
     8a0:	e92d4800 	push	{fp, lr}
     8a4:	e28db004 	add	fp, sp, #4
     8a8:	e24dd008 	sub	sp, sp, #8
     8ac:	e50b0008 	str	r0, [fp, #-8]
     8b0:	e51b3008 	ldr	r3, [fp, #-8]
     8b4:	e5933004 	ldr	r3, [r3, #4]
     8b8:	e3530000 	cmp	r3, #0
     8bc:	0a000004 	beq	8d4 <signal+0x34>
     8c0:	e51b3008 	ldr	r3, [fp, #-8]
     8c4:	e5933000 	ldr	r3, [r3]
     8c8:	e1a00003 	mov	r0, r3
     8cc:	eb00018c 	bl	f04 <sigOneChan>
     8d0:	ea000000 	b	8d8 <signal+0x38>
     8d4:	e1a00000 	nop			@ (mov r0, r0)
     8d8:	e24bd004 	sub	sp, fp, #4
     8dc:	e8bd8800 	pop	{fp, pc}

000008e0 <semInit>:
     8e0:	e92d4800 	push	{fp, lr}
     8e4:	e28db004 	add	fp, sp, #4
     8e8:	e24dd008 	sub	sp, sp, #8
     8ec:	e50b0008 	str	r0, [fp, #-8]
     8f0:	e50b100c 	str	r1, [fp, #-12]
     8f4:	e51b3008 	ldr	r3, [fp, #-8]
     8f8:	e51b200c 	ldr	r2, [fp, #-12]
     8fc:	e5832000 	str	r2, [r3]
     900:	e51b3008 	ldr	r3, [fp, #-8]
     904:	e2833004 	add	r3, r3, #4
     908:	e1a00003 	mov	r0, r3
     90c:	ebffff63 	bl	6a0 <initiateLock>
     910:	e51b3008 	ldr	r3, [fp, #-8]
     914:	e283300c 	add	r3, r3, #12
     918:	e1a00003 	mov	r0, r3
     91c:	ebffffa8 	bl	7c4 <initiateCondVar>
     920:	e51b3008 	ldr	r3, [fp, #-8]
     924:	e3a02001 	mov	r2, #1
     928:	e5832014 	str	r2, [r3, #20]
     92c:	e1a00000 	nop			@ (mov r0, r0)
     930:	e24bd004 	sub	sp, fp, #4
     934:	e8bd8800 	pop	{fp, pc}

00000938 <semUp>:
     938:	e92d4800 	push	{fp, lr}
     93c:	e28db004 	add	fp, sp, #4
     940:	e24dd008 	sub	sp, sp, #8
     944:	e50b0008 	str	r0, [fp, #-8]
     948:	e51b3008 	ldr	r3, [fp, #-8]
     94c:	e2833004 	add	r3, r3, #4
     950:	e1a00003 	mov	r0, r3
     954:	ebffff70 	bl	71c <acquireLock>
     958:	e51b3008 	ldr	r3, [fp, #-8]
     95c:	e5933000 	ldr	r3, [r3]
     960:	e2832001 	add	r2, r3, #1
     964:	e51b3008 	ldr	r3, [fp, #-8]
     968:	e5832000 	str	r2, [r3]
     96c:	e51b3008 	ldr	r3, [fp, #-8]
     970:	e283300c 	add	r3, r3, #12
     974:	e1a00003 	mov	r0, r3
     978:	ebffffc8 	bl	8a0 <signal>
     97c:	e51b3008 	ldr	r3, [fp, #-8]
     980:	e2833004 	add	r3, r3, #4
     984:	e1a00003 	mov	r0, r3
     988:	ebffff77 	bl	76c <releaseLock>
     98c:	e1a00000 	nop			@ (mov r0, r0)
     990:	e24bd004 	sub	sp, fp, #4
     994:	e8bd8800 	pop	{fp, pc}

00000998 <semDown>:
     998:	e92d4800 	push	{fp, lr}
     99c:	e28db004 	add	fp, sp, #4
     9a0:	e24dd008 	sub	sp, sp, #8
     9a4:	e50b0008 	str	r0, [fp, #-8]
     9a8:	e51b3008 	ldr	r3, [fp, #-8]
     9ac:	e2833004 	add	r3, r3, #4
     9b0:	e1a00003 	mov	r0, r3
     9b4:	ebffff58 	bl	71c <acquireLock>
     9b8:	ea000006 	b	9d8 <semDown+0x40>
     9bc:	e51b3008 	ldr	r3, [fp, #-8]
     9c0:	e283200c 	add	r2, r3, #12
     9c4:	e51b3008 	ldr	r3, [fp, #-8]
     9c8:	e2833004 	add	r3, r3, #4
     9cc:	e1a01003 	mov	r1, r3
     9d0:	e1a00002 	mov	r0, r2
     9d4:	ebffff88 	bl	7fc <condWait>
     9d8:	e51b3008 	ldr	r3, [fp, #-8]
     9dc:	e5933000 	ldr	r3, [r3]
     9e0:	e3530000 	cmp	r3, #0
     9e4:	dafffff4 	ble	9bc <semDown+0x24>
     9e8:	e51b3008 	ldr	r3, [fp, #-8]
     9ec:	e5933000 	ldr	r3, [r3]
     9f0:	e2432001 	sub	r2, r3, #1
     9f4:	e51b3008 	ldr	r3, [fp, #-8]
     9f8:	e5832000 	str	r2, [r3]
     9fc:	e51b3008 	ldr	r3, [fp, #-8]
     a00:	e2833004 	add	r3, r3, #4
     a04:	e1a00003 	mov	r0, r3
     a08:	ebffff57 	bl	76c <releaseLock>
     a0c:	e1a00000 	nop			@ (mov r0, r0)
     a10:	e24bd004 	sub	sp, fp, #4
     a14:	e8bd8800 	pop	{fp, pc}

00000a18 <fork>:
     a18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a1c:	e1a04003 	mov	r4, r3
     a20:	e1a03002 	mov	r3, r2
     a24:	e1a02001 	mov	r2, r1
     a28:	e1a01000 	mov	r1, r0
     a2c:	e3a00001 	mov	r0, #1
     a30:	ef000000 	svc	0x00000000
     a34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a38:	e12fff1e 	bx	lr

00000a3c <exit>:
     a3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a40:	e1a04003 	mov	r4, r3
     a44:	e1a03002 	mov	r3, r2
     a48:	e1a02001 	mov	r2, r1
     a4c:	e1a01000 	mov	r1, r0
     a50:	e3a00002 	mov	r0, #2
     a54:	ef000000 	svc	0x00000000
     a58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a5c:	e12fff1e 	bx	lr

00000a60 <wait>:
     a60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a64:	e1a04003 	mov	r4, r3
     a68:	e1a03002 	mov	r3, r2
     a6c:	e1a02001 	mov	r2, r1
     a70:	e1a01000 	mov	r1, r0
     a74:	e3a00003 	mov	r0, #3
     a78:	ef000000 	svc	0x00000000
     a7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a80:	e12fff1e 	bx	lr

00000a84 <pipe>:
     a84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a88:	e1a04003 	mov	r4, r3
     a8c:	e1a03002 	mov	r3, r2
     a90:	e1a02001 	mov	r2, r1
     a94:	e1a01000 	mov	r1, r0
     a98:	e3a00004 	mov	r0, #4
     a9c:	ef000000 	svc	0x00000000
     aa0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aa4:	e12fff1e 	bx	lr

00000aa8 <read>:
     aa8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aac:	e1a04003 	mov	r4, r3
     ab0:	e1a03002 	mov	r3, r2
     ab4:	e1a02001 	mov	r2, r1
     ab8:	e1a01000 	mov	r1, r0
     abc:	e3a00005 	mov	r0, #5
     ac0:	ef000000 	svc	0x00000000
     ac4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac8:	e12fff1e 	bx	lr

00000acc <write>:
     acc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad0:	e1a04003 	mov	r4, r3
     ad4:	e1a03002 	mov	r3, r2
     ad8:	e1a02001 	mov	r2, r1
     adc:	e1a01000 	mov	r1, r0
     ae0:	e3a00010 	mov	r0, #16
     ae4:	ef000000 	svc	0x00000000
     ae8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aec:	e12fff1e 	bx	lr

00000af0 <close>:
     af0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     af4:	e1a04003 	mov	r4, r3
     af8:	e1a03002 	mov	r3, r2
     afc:	e1a02001 	mov	r2, r1
     b00:	e1a01000 	mov	r1, r0
     b04:	e3a00015 	mov	r0, #21
     b08:	ef000000 	svc	0x00000000
     b0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b10:	e12fff1e 	bx	lr

00000b14 <kill>:
     b14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b18:	e1a04003 	mov	r4, r3
     b1c:	e1a03002 	mov	r3, r2
     b20:	e1a02001 	mov	r2, r1
     b24:	e1a01000 	mov	r1, r0
     b28:	e3a00006 	mov	r0, #6
     b2c:	ef000000 	svc	0x00000000
     b30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b34:	e12fff1e 	bx	lr

00000b38 <exec>:
     b38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b3c:	e1a04003 	mov	r4, r3
     b40:	e1a03002 	mov	r3, r2
     b44:	e1a02001 	mov	r2, r1
     b48:	e1a01000 	mov	r1, r0
     b4c:	e3a00007 	mov	r0, #7
     b50:	ef000000 	svc	0x00000000
     b54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b58:	e12fff1e 	bx	lr

00000b5c <open>:
     b5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b60:	e1a04003 	mov	r4, r3
     b64:	e1a03002 	mov	r3, r2
     b68:	e1a02001 	mov	r2, r1
     b6c:	e1a01000 	mov	r1, r0
     b70:	e3a0000f 	mov	r0, #15
     b74:	ef000000 	svc	0x00000000
     b78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b7c:	e12fff1e 	bx	lr

00000b80 <mknod>:
     b80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b84:	e1a04003 	mov	r4, r3
     b88:	e1a03002 	mov	r3, r2
     b8c:	e1a02001 	mov	r2, r1
     b90:	e1a01000 	mov	r1, r0
     b94:	e3a00011 	mov	r0, #17
     b98:	ef000000 	svc	0x00000000
     b9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba0:	e12fff1e 	bx	lr

00000ba4 <unlink>:
     ba4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba8:	e1a04003 	mov	r4, r3
     bac:	e1a03002 	mov	r3, r2
     bb0:	e1a02001 	mov	r2, r1
     bb4:	e1a01000 	mov	r1, r0
     bb8:	e3a00012 	mov	r0, #18
     bbc:	ef000000 	svc	0x00000000
     bc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc4:	e12fff1e 	bx	lr

00000bc8 <fstat>:
     bc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bcc:	e1a04003 	mov	r4, r3
     bd0:	e1a03002 	mov	r3, r2
     bd4:	e1a02001 	mov	r2, r1
     bd8:	e1a01000 	mov	r1, r0
     bdc:	e3a00008 	mov	r0, #8
     be0:	ef000000 	svc	0x00000000
     be4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be8:	e12fff1e 	bx	lr

00000bec <link>:
     bec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf0:	e1a04003 	mov	r4, r3
     bf4:	e1a03002 	mov	r3, r2
     bf8:	e1a02001 	mov	r2, r1
     bfc:	e1a01000 	mov	r1, r0
     c00:	e3a00013 	mov	r0, #19
     c04:	ef000000 	svc	0x00000000
     c08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c0c:	e12fff1e 	bx	lr

00000c10 <mkdir>:
     c10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c14:	e1a04003 	mov	r4, r3
     c18:	e1a03002 	mov	r3, r2
     c1c:	e1a02001 	mov	r2, r1
     c20:	e1a01000 	mov	r1, r0
     c24:	e3a00014 	mov	r0, #20
     c28:	ef000000 	svc	0x00000000
     c2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c30:	e12fff1e 	bx	lr

00000c34 <chdir>:
     c34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c38:	e1a04003 	mov	r4, r3
     c3c:	e1a03002 	mov	r3, r2
     c40:	e1a02001 	mov	r2, r1
     c44:	e1a01000 	mov	r1, r0
     c48:	e3a00009 	mov	r0, #9
     c4c:	ef000000 	svc	0x00000000
     c50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c54:	e12fff1e 	bx	lr

00000c58 <dup>:
     c58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c5c:	e1a04003 	mov	r4, r3
     c60:	e1a03002 	mov	r3, r2
     c64:	e1a02001 	mov	r2, r1
     c68:	e1a01000 	mov	r1, r0
     c6c:	e3a0000a 	mov	r0, #10
     c70:	ef000000 	svc	0x00000000
     c74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c78:	e12fff1e 	bx	lr

00000c7c <getpid>:
     c7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c80:	e1a04003 	mov	r4, r3
     c84:	e1a03002 	mov	r3, r2
     c88:	e1a02001 	mov	r2, r1
     c8c:	e1a01000 	mov	r1, r0
     c90:	e3a0000b 	mov	r0, #11
     c94:	ef000000 	svc	0x00000000
     c98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c9c:	e12fff1e 	bx	lr

00000ca0 <sbrk>:
     ca0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca4:	e1a04003 	mov	r4, r3
     ca8:	e1a03002 	mov	r3, r2
     cac:	e1a02001 	mov	r2, r1
     cb0:	e1a01000 	mov	r1, r0
     cb4:	e3a0000c 	mov	r0, #12
     cb8:	ef000000 	svc	0x00000000
     cbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc0:	e12fff1e 	bx	lr

00000cc4 <sleep>:
     cc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc8:	e1a04003 	mov	r4, r3
     ccc:	e1a03002 	mov	r3, r2
     cd0:	e1a02001 	mov	r2, r1
     cd4:	e1a01000 	mov	r1, r0
     cd8:	e3a0000d 	mov	r0, #13
     cdc:	ef000000 	svc	0x00000000
     ce0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce4:	e12fff1e 	bx	lr

00000ce8 <uptime>:
     ce8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cec:	e1a04003 	mov	r4, r3
     cf0:	e1a03002 	mov	r3, r2
     cf4:	e1a02001 	mov	r2, r1
     cf8:	e1a01000 	mov	r1, r0
     cfc:	e3a0000e 	mov	r0, #14
     d00:	ef000000 	svc	0x00000000
     d04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d08:	e12fff1e 	bx	lr

00000d0c <getprocs>:
     d0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d10:	e1a04003 	mov	r4, r3
     d14:	e1a03002 	mov	r3, r2
     d18:	e1a02001 	mov	r2, r1
     d1c:	e1a01000 	mov	r1, r0
     d20:	e3a00016 	mov	r0, #22
     d24:	ef000000 	svc	0x00000000
     d28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d2c:	e12fff1e 	bx	lr

00000d30 <settickets>:
     d30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d34:	e1a04003 	mov	r4, r3
     d38:	e1a03002 	mov	r3, r2
     d3c:	e1a02001 	mov	r2, r1
     d40:	e1a01000 	mov	r1, r0
     d44:	e3a00017 	mov	r0, #23
     d48:	ef000000 	svc	0x00000000
     d4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d50:	e12fff1e 	bx	lr

00000d54 <srand>:
     d54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d58:	e1a04003 	mov	r4, r3
     d5c:	e1a03002 	mov	r3, r2
     d60:	e1a02001 	mov	r2, r1
     d64:	e1a01000 	mov	r1, r0
     d68:	e3a00018 	mov	r0, #24
     d6c:	ef000000 	svc	0x00000000
     d70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d74:	e12fff1e 	bx	lr

00000d78 <getpinfo>:
     d78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d7c:	e1a04003 	mov	r4, r3
     d80:	e1a03002 	mov	r3, r2
     d84:	e1a02001 	mov	r2, r1
     d88:	e1a01000 	mov	r1, r0
     d8c:	e3a00019 	mov	r0, #25
     d90:	ef000000 	svc	0x00000000
     d94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d98:	e12fff1e 	bx	lr

00000d9c <dumppagetable>:
     d9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da0:	e1a04003 	mov	r4, r3
     da4:	e1a03002 	mov	r3, r2
     da8:	e1a02001 	mov	r2, r1
     dac:	e1a01000 	mov	r1, r0
     db0:	e3a0001a 	mov	r0, #26
     db4:	ef000000 	svc	0x00000000
     db8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dbc:	e12fff1e 	bx	lr

00000dc0 <thread_create>:
     dc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dc4:	e1a04003 	mov	r4, r3
     dc8:	e1a03002 	mov	r3, r2
     dcc:	e1a02001 	mov	r2, r1
     dd0:	e1a01000 	mov	r1, r0
     dd4:	e3a0001b 	mov	r0, #27
     dd8:	ef000000 	svc	0x00000000
     ddc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     de0:	e12fff1e 	bx	lr

00000de4 <thread_exit>:
     de4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     de8:	e1a04003 	mov	r4, r3
     dec:	e1a03002 	mov	r3, r2
     df0:	e1a02001 	mov	r2, r1
     df4:	e1a01000 	mov	r1, r0
     df8:	e3a0001c 	mov	r0, #28
     dfc:	ef000000 	svc	0x00000000
     e00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e04:	e12fff1e 	bx	lr

00000e08 <thread_join>:
     e08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e0c:	e1a04003 	mov	r4, r3
     e10:	e1a03002 	mov	r3, r2
     e14:	e1a02001 	mov	r2, r1
     e18:	e1a01000 	mov	r1, r0
     e1c:	e3a0001d 	mov	r0, #29
     e20:	ef000000 	svc	0x00000000
     e24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e28:	e12fff1e 	bx	lr

00000e2c <waitpid>:
     e2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e30:	e1a04003 	mov	r4, r3
     e34:	e1a03002 	mov	r3, r2
     e38:	e1a02001 	mov	r2, r1
     e3c:	e1a01000 	mov	r1, r0
     e40:	e3a0001e 	mov	r0, #30
     e44:	ef000000 	svc	0x00000000
     e48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e4c:	e12fff1e 	bx	lr

00000e50 <barrier_init>:
     e50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e54:	e1a04003 	mov	r4, r3
     e58:	e1a03002 	mov	r3, r2
     e5c:	e1a02001 	mov	r2, r1
     e60:	e1a01000 	mov	r1, r0
     e64:	e3a0001f 	mov	r0, #31
     e68:	ef000000 	svc	0x00000000
     e6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e70:	e12fff1e 	bx	lr

00000e74 <barrier_check>:
     e74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e78:	e1a04003 	mov	r4, r3
     e7c:	e1a03002 	mov	r3, r2
     e80:	e1a02001 	mov	r2, r1
     e84:	e1a01000 	mov	r1, r0
     e88:	e3a00020 	mov	r0, #32
     e8c:	ef000000 	svc	0x00000000
     e90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e94:	e12fff1e 	bx	lr

00000e98 <sleepChan>:
     e98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e9c:	e1a04003 	mov	r4, r3
     ea0:	e1a03002 	mov	r3, r2
     ea4:	e1a02001 	mov	r2, r1
     ea8:	e1a01000 	mov	r1, r0
     eac:	e3a00024 	mov	r0, #36	@ 0x24
     eb0:	ef000000 	svc	0x00000000
     eb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eb8:	e12fff1e 	bx	lr

00000ebc <getChannel>:
     ebc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ec0:	e1a04003 	mov	r4, r3
     ec4:	e1a03002 	mov	r3, r2
     ec8:	e1a02001 	mov	r2, r1
     ecc:	e1a01000 	mov	r1, r0
     ed0:	e3a00025 	mov	r0, #37	@ 0x25
     ed4:	ef000000 	svc	0x00000000
     ed8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     edc:	e12fff1e 	bx	lr

00000ee0 <sigChan>:
     ee0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ee4:	e1a04003 	mov	r4, r3
     ee8:	e1a03002 	mov	r3, r2
     eec:	e1a02001 	mov	r2, r1
     ef0:	e1a01000 	mov	r1, r0
     ef4:	e3a00026 	mov	r0, #38	@ 0x26
     ef8:	ef000000 	svc	0x00000000
     efc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f00:	e12fff1e 	bx	lr

00000f04 <sigOneChan>:
     f04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f08:	e1a04003 	mov	r4, r3
     f0c:	e1a03002 	mov	r3, r2
     f10:	e1a02001 	mov	r2, r1
     f14:	e1a01000 	mov	r1, r0
     f18:	e3a00027 	mov	r0, #39	@ 0x27
     f1c:	ef000000 	svc	0x00000000
     f20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f24:	e12fff1e 	bx	lr

00000f28 <putc>:
     f28:	e92d4800 	push	{fp, lr}
     f2c:	e28db004 	add	fp, sp, #4
     f30:	e24dd008 	sub	sp, sp, #8
     f34:	e50b0008 	str	r0, [fp, #-8]
     f38:	e1a03001 	mov	r3, r1
     f3c:	e54b3009 	strb	r3, [fp, #-9]
     f40:	e24b3009 	sub	r3, fp, #9
     f44:	e3a02001 	mov	r2, #1
     f48:	e1a01003 	mov	r1, r3
     f4c:	e51b0008 	ldr	r0, [fp, #-8]
     f50:	ebfffedd 	bl	acc <write>
     f54:	e1a00000 	nop			@ (mov r0, r0)
     f58:	e24bd004 	sub	sp, fp, #4
     f5c:	e8bd8800 	pop	{fp, pc}

00000f60 <printint>:
     f60:	e92d4800 	push	{fp, lr}
     f64:	e28db004 	add	fp, sp, #4
     f68:	e24dd030 	sub	sp, sp, #48	@ 0x30
     f6c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     f70:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     f74:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     f78:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     f7c:	e3a03000 	mov	r3, #0
     f80:	e50b300c 	str	r3, [fp, #-12]
     f84:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     f88:	e3530000 	cmp	r3, #0
     f8c:	0a000008 	beq	fb4 <printint+0x54>
     f90:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f94:	e3530000 	cmp	r3, #0
     f98:	aa000005 	bge	fb4 <printint+0x54>
     f9c:	e3a03001 	mov	r3, #1
     fa0:	e50b300c 	str	r3, [fp, #-12]
     fa4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     fa8:	e2633000 	rsb	r3, r3, #0
     fac:	e50b3010 	str	r3, [fp, #-16]
     fb0:	ea000001 	b	fbc <printint+0x5c>
     fb4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     fb8:	e50b3010 	str	r3, [fp, #-16]
     fbc:	e3a03000 	mov	r3, #0
     fc0:	e50b3008 	str	r3, [fp, #-8]
     fc4:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     fc8:	e51b3010 	ldr	r3, [fp, #-16]
     fcc:	e1a01002 	mov	r1, r2
     fd0:	e1a00003 	mov	r0, r3
     fd4:	eb0001d5 	bl	1730 <__aeabi_uidivmod>
     fd8:	e1a03001 	mov	r3, r1
     fdc:	e1a01003 	mov	r1, r3
     fe0:	e51b3008 	ldr	r3, [fp, #-8]
     fe4:	e2832001 	add	r2, r3, #1
     fe8:	e50b2008 	str	r2, [fp, #-8]
     fec:	e59f20a0 	ldr	r2, [pc, #160]	@ 1094 <printint+0x134>
     ff0:	e7d22001 	ldrb	r2, [r2, r1]
     ff4:	e2433004 	sub	r3, r3, #4
     ff8:	e083300b 	add	r3, r3, fp
     ffc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1000:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    1004:	e1a01003 	mov	r1, r3
    1008:	e51b0010 	ldr	r0, [fp, #-16]
    100c:	eb00018a 	bl	163c <__udivsi3>
    1010:	e1a03000 	mov	r3, r0
    1014:	e50b3010 	str	r3, [fp, #-16]
    1018:	e51b3010 	ldr	r3, [fp, #-16]
    101c:	e3530000 	cmp	r3, #0
    1020:	1affffe7 	bne	fc4 <printint+0x64>
    1024:	e51b300c 	ldr	r3, [fp, #-12]
    1028:	e3530000 	cmp	r3, #0
    102c:	0a00000e 	beq	106c <printint+0x10c>
    1030:	e51b3008 	ldr	r3, [fp, #-8]
    1034:	e2832001 	add	r2, r3, #1
    1038:	e50b2008 	str	r2, [fp, #-8]
    103c:	e2433004 	sub	r3, r3, #4
    1040:	e083300b 	add	r3, r3, fp
    1044:	e3a0202d 	mov	r2, #45	@ 0x2d
    1048:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    104c:	ea000006 	b	106c <printint+0x10c>
    1050:	e24b2020 	sub	r2, fp, #32
    1054:	e51b3008 	ldr	r3, [fp, #-8]
    1058:	e0823003 	add	r3, r2, r3
    105c:	e5d33000 	ldrb	r3, [r3]
    1060:	e1a01003 	mov	r1, r3
    1064:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1068:	ebffffae 	bl	f28 <putc>
    106c:	e51b3008 	ldr	r3, [fp, #-8]
    1070:	e2433001 	sub	r3, r3, #1
    1074:	e50b3008 	str	r3, [fp, #-8]
    1078:	e51b3008 	ldr	r3, [fp, #-8]
    107c:	e3530000 	cmp	r3, #0
    1080:	aafffff2 	bge	1050 <printint+0xf0>
    1084:	e1a00000 	nop			@ (mov r0, r0)
    1088:	e1a00000 	nop			@ (mov r0, r0)
    108c:	e24bd004 	sub	sp, fp, #4
    1090:	e8bd8800 	pop	{fp, pc}
    1094:	000018e0 	.word	0x000018e0

00001098 <printf>:
    1098:	e92d000e 	push	{r1, r2, r3}
    109c:	e92d4800 	push	{fp, lr}
    10a0:	e28db004 	add	fp, sp, #4
    10a4:	e24dd024 	sub	sp, sp, #36	@ 0x24
    10a8:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    10ac:	e3a03000 	mov	r3, #0
    10b0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    10b4:	e28b3008 	add	r3, fp, #8
    10b8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10bc:	e3a03000 	mov	r3, #0
    10c0:	e50b3010 	str	r3, [fp, #-16]
    10c4:	ea000074 	b	129c <printf+0x204>
    10c8:	e59b2004 	ldr	r2, [fp, #4]
    10cc:	e51b3010 	ldr	r3, [fp, #-16]
    10d0:	e0823003 	add	r3, r2, r3
    10d4:	e5d33000 	ldrb	r3, [r3]
    10d8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    10dc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    10e0:	e3530000 	cmp	r3, #0
    10e4:	1a00000b 	bne	1118 <printf+0x80>
    10e8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10ec:	e3530025 	cmp	r3, #37	@ 0x25
    10f0:	1a000002 	bne	1100 <printf+0x68>
    10f4:	e3a03025 	mov	r3, #37	@ 0x25
    10f8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    10fc:	ea000063 	b	1290 <printf+0x1f8>
    1100:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1104:	e6ef3073 	uxtb	r3, r3
    1108:	e1a01003 	mov	r1, r3
    110c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1110:	ebffff84 	bl	f28 <putc>
    1114:	ea00005d 	b	1290 <printf+0x1f8>
    1118:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    111c:	e3530025 	cmp	r3, #37	@ 0x25
    1120:	1a00005a 	bne	1290 <printf+0x1f8>
    1124:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1128:	e3530064 	cmp	r3, #100	@ 0x64
    112c:	1a00000a 	bne	115c <printf+0xc4>
    1130:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1134:	e5933000 	ldr	r3, [r3]
    1138:	e1a01003 	mov	r1, r3
    113c:	e3a03001 	mov	r3, #1
    1140:	e3a0200a 	mov	r2, #10
    1144:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1148:	ebffff84 	bl	f60 <printint>
    114c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1150:	e2833004 	add	r3, r3, #4
    1154:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1158:	ea00004a 	b	1288 <printf+0x1f0>
    115c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1160:	e3530078 	cmp	r3, #120	@ 0x78
    1164:	0a000002 	beq	1174 <printf+0xdc>
    1168:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    116c:	e3530070 	cmp	r3, #112	@ 0x70
    1170:	1a00000a 	bne	11a0 <printf+0x108>
    1174:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1178:	e5933000 	ldr	r3, [r3]
    117c:	e1a01003 	mov	r1, r3
    1180:	e3a03000 	mov	r3, #0
    1184:	e3a02010 	mov	r2, #16
    1188:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    118c:	ebffff73 	bl	f60 <printint>
    1190:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1194:	e2833004 	add	r3, r3, #4
    1198:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    119c:	ea000039 	b	1288 <printf+0x1f0>
    11a0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11a4:	e3530073 	cmp	r3, #115	@ 0x73
    11a8:	1a000018 	bne	1210 <printf+0x178>
    11ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11b0:	e5933000 	ldr	r3, [r3]
    11b4:	e50b300c 	str	r3, [fp, #-12]
    11b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11bc:	e2833004 	add	r3, r3, #4
    11c0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11c4:	e51b300c 	ldr	r3, [fp, #-12]
    11c8:	e3530000 	cmp	r3, #0
    11cc:	1a00000a 	bne	11fc <printf+0x164>
    11d0:	e59f30f4 	ldr	r3, [pc, #244]	@ 12cc <printf+0x234>
    11d4:	e50b300c 	str	r3, [fp, #-12]
    11d8:	ea000007 	b	11fc <printf+0x164>
    11dc:	e51b300c 	ldr	r3, [fp, #-12]
    11e0:	e5d33000 	ldrb	r3, [r3]
    11e4:	e1a01003 	mov	r1, r3
    11e8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11ec:	ebffff4d 	bl	f28 <putc>
    11f0:	e51b300c 	ldr	r3, [fp, #-12]
    11f4:	e2833001 	add	r3, r3, #1
    11f8:	e50b300c 	str	r3, [fp, #-12]
    11fc:	e51b300c 	ldr	r3, [fp, #-12]
    1200:	e5d33000 	ldrb	r3, [r3]
    1204:	e3530000 	cmp	r3, #0
    1208:	1afffff3 	bne	11dc <printf+0x144>
    120c:	ea00001d 	b	1288 <printf+0x1f0>
    1210:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1214:	e3530063 	cmp	r3, #99	@ 0x63
    1218:	1a000009 	bne	1244 <printf+0x1ac>
    121c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1220:	e5933000 	ldr	r3, [r3]
    1224:	e6ef3073 	uxtb	r3, r3
    1228:	e1a01003 	mov	r1, r3
    122c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1230:	ebffff3c 	bl	f28 <putc>
    1234:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1238:	e2833004 	add	r3, r3, #4
    123c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1240:	ea000010 	b	1288 <printf+0x1f0>
    1244:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1248:	e3530025 	cmp	r3, #37	@ 0x25
    124c:	1a000005 	bne	1268 <printf+0x1d0>
    1250:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1254:	e6ef3073 	uxtb	r3, r3
    1258:	e1a01003 	mov	r1, r3
    125c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1260:	ebffff30 	bl	f28 <putc>
    1264:	ea000007 	b	1288 <printf+0x1f0>
    1268:	e3a01025 	mov	r1, #37	@ 0x25
    126c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1270:	ebffff2c 	bl	f28 <putc>
    1274:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1278:	e6ef3073 	uxtb	r3, r3
    127c:	e1a01003 	mov	r1, r3
    1280:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1284:	ebffff27 	bl	f28 <putc>
    1288:	e3a03000 	mov	r3, #0
    128c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1290:	e51b3010 	ldr	r3, [fp, #-16]
    1294:	e2833001 	add	r3, r3, #1
    1298:	e50b3010 	str	r3, [fp, #-16]
    129c:	e59b2004 	ldr	r2, [fp, #4]
    12a0:	e51b3010 	ldr	r3, [fp, #-16]
    12a4:	e0823003 	add	r3, r2, r3
    12a8:	e5d33000 	ldrb	r3, [r3]
    12ac:	e3530000 	cmp	r3, #0
    12b0:	1affff84 	bne	10c8 <printf+0x30>
    12b4:	e1a00000 	nop			@ (mov r0, r0)
    12b8:	e1a00000 	nop			@ (mov r0, r0)
    12bc:	e24bd004 	sub	sp, fp, #4
    12c0:	e8bd4800 	pop	{fp, lr}
    12c4:	e28dd00c 	add	sp, sp, #12
    12c8:	e12fff1e 	bx	lr
    12cc:	000018d8 	.word	0x000018d8

000012d0 <free>:
    12d0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    12d4:	e28db000 	add	fp, sp, #0
    12d8:	e24dd014 	sub	sp, sp, #20
    12dc:	e50b0010 	str	r0, [fp, #-16]
    12e0:	e51b3010 	ldr	r3, [fp, #-16]
    12e4:	e2433008 	sub	r3, r3, #8
    12e8:	e50b300c 	str	r3, [fp, #-12]
    12ec:	e59f3154 	ldr	r3, [pc, #340]	@ 1448 <free+0x178>
    12f0:	e5933000 	ldr	r3, [r3]
    12f4:	e50b3008 	str	r3, [fp, #-8]
    12f8:	ea000010 	b	1340 <free+0x70>
    12fc:	e51b3008 	ldr	r3, [fp, #-8]
    1300:	e5933000 	ldr	r3, [r3]
    1304:	e51b2008 	ldr	r2, [fp, #-8]
    1308:	e1520003 	cmp	r2, r3
    130c:	3a000008 	bcc	1334 <free+0x64>
    1310:	e51b200c 	ldr	r2, [fp, #-12]
    1314:	e51b3008 	ldr	r3, [fp, #-8]
    1318:	e1520003 	cmp	r2, r3
    131c:	8a000010 	bhi	1364 <free+0x94>
    1320:	e51b3008 	ldr	r3, [fp, #-8]
    1324:	e5933000 	ldr	r3, [r3]
    1328:	e51b200c 	ldr	r2, [fp, #-12]
    132c:	e1520003 	cmp	r2, r3
    1330:	3a00000b 	bcc	1364 <free+0x94>
    1334:	e51b3008 	ldr	r3, [fp, #-8]
    1338:	e5933000 	ldr	r3, [r3]
    133c:	e50b3008 	str	r3, [fp, #-8]
    1340:	e51b200c 	ldr	r2, [fp, #-12]
    1344:	e51b3008 	ldr	r3, [fp, #-8]
    1348:	e1520003 	cmp	r2, r3
    134c:	9affffea 	bls	12fc <free+0x2c>
    1350:	e51b3008 	ldr	r3, [fp, #-8]
    1354:	e5933000 	ldr	r3, [r3]
    1358:	e51b200c 	ldr	r2, [fp, #-12]
    135c:	e1520003 	cmp	r2, r3
    1360:	2affffe5 	bcs	12fc <free+0x2c>
    1364:	e51b300c 	ldr	r3, [fp, #-12]
    1368:	e5933004 	ldr	r3, [r3, #4]
    136c:	e1a03183 	lsl	r3, r3, #3
    1370:	e51b200c 	ldr	r2, [fp, #-12]
    1374:	e0822003 	add	r2, r2, r3
    1378:	e51b3008 	ldr	r3, [fp, #-8]
    137c:	e5933000 	ldr	r3, [r3]
    1380:	e1520003 	cmp	r2, r3
    1384:	1a00000d 	bne	13c0 <free+0xf0>
    1388:	e51b300c 	ldr	r3, [fp, #-12]
    138c:	e5932004 	ldr	r2, [r3, #4]
    1390:	e51b3008 	ldr	r3, [fp, #-8]
    1394:	e5933000 	ldr	r3, [r3]
    1398:	e5933004 	ldr	r3, [r3, #4]
    139c:	e0822003 	add	r2, r2, r3
    13a0:	e51b300c 	ldr	r3, [fp, #-12]
    13a4:	e5832004 	str	r2, [r3, #4]
    13a8:	e51b3008 	ldr	r3, [fp, #-8]
    13ac:	e5933000 	ldr	r3, [r3]
    13b0:	e5932000 	ldr	r2, [r3]
    13b4:	e51b300c 	ldr	r3, [fp, #-12]
    13b8:	e5832000 	str	r2, [r3]
    13bc:	ea000003 	b	13d0 <free+0x100>
    13c0:	e51b3008 	ldr	r3, [fp, #-8]
    13c4:	e5932000 	ldr	r2, [r3]
    13c8:	e51b300c 	ldr	r3, [fp, #-12]
    13cc:	e5832000 	str	r2, [r3]
    13d0:	e51b3008 	ldr	r3, [fp, #-8]
    13d4:	e5933004 	ldr	r3, [r3, #4]
    13d8:	e1a03183 	lsl	r3, r3, #3
    13dc:	e51b2008 	ldr	r2, [fp, #-8]
    13e0:	e0823003 	add	r3, r2, r3
    13e4:	e51b200c 	ldr	r2, [fp, #-12]
    13e8:	e1520003 	cmp	r2, r3
    13ec:	1a00000b 	bne	1420 <free+0x150>
    13f0:	e51b3008 	ldr	r3, [fp, #-8]
    13f4:	e5932004 	ldr	r2, [r3, #4]
    13f8:	e51b300c 	ldr	r3, [fp, #-12]
    13fc:	e5933004 	ldr	r3, [r3, #4]
    1400:	e0822003 	add	r2, r2, r3
    1404:	e51b3008 	ldr	r3, [fp, #-8]
    1408:	e5832004 	str	r2, [r3, #4]
    140c:	e51b300c 	ldr	r3, [fp, #-12]
    1410:	e5932000 	ldr	r2, [r3]
    1414:	e51b3008 	ldr	r3, [fp, #-8]
    1418:	e5832000 	str	r2, [r3]
    141c:	ea000002 	b	142c <free+0x15c>
    1420:	e51b3008 	ldr	r3, [fp, #-8]
    1424:	e51b200c 	ldr	r2, [fp, #-12]
    1428:	e5832000 	str	r2, [r3]
    142c:	e59f2014 	ldr	r2, [pc, #20]	@ 1448 <free+0x178>
    1430:	e51b3008 	ldr	r3, [fp, #-8]
    1434:	e5823000 	str	r3, [r2]
    1438:	e1a00000 	nop			@ (mov r0, r0)
    143c:	e28bd000 	add	sp, fp, #0
    1440:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1444:	e12fff1e 	bx	lr
    1448:	00001900 	.word	0x00001900

0000144c <morecore>:
    144c:	e92d4800 	push	{fp, lr}
    1450:	e28db004 	add	fp, sp, #4
    1454:	e24dd010 	sub	sp, sp, #16
    1458:	e50b0010 	str	r0, [fp, #-16]
    145c:	e51b3010 	ldr	r3, [fp, #-16]
    1460:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1464:	2a000001 	bcs	1470 <morecore+0x24>
    1468:	e3a03a01 	mov	r3, #4096	@ 0x1000
    146c:	e50b3010 	str	r3, [fp, #-16]
    1470:	e51b3010 	ldr	r3, [fp, #-16]
    1474:	e1a03183 	lsl	r3, r3, #3
    1478:	e1a00003 	mov	r0, r3
    147c:	ebfffe07 	bl	ca0 <sbrk>
    1480:	e50b0008 	str	r0, [fp, #-8]
    1484:	e51b3008 	ldr	r3, [fp, #-8]
    1488:	e3730001 	cmn	r3, #1
    148c:	1a000001 	bne	1498 <morecore+0x4c>
    1490:	e3a03000 	mov	r3, #0
    1494:	ea00000a 	b	14c4 <morecore+0x78>
    1498:	e51b3008 	ldr	r3, [fp, #-8]
    149c:	e50b300c 	str	r3, [fp, #-12]
    14a0:	e51b300c 	ldr	r3, [fp, #-12]
    14a4:	e51b2010 	ldr	r2, [fp, #-16]
    14a8:	e5832004 	str	r2, [r3, #4]
    14ac:	e51b300c 	ldr	r3, [fp, #-12]
    14b0:	e2833008 	add	r3, r3, #8
    14b4:	e1a00003 	mov	r0, r3
    14b8:	ebffff84 	bl	12d0 <free>
    14bc:	e59f300c 	ldr	r3, [pc, #12]	@ 14d0 <morecore+0x84>
    14c0:	e5933000 	ldr	r3, [r3]
    14c4:	e1a00003 	mov	r0, r3
    14c8:	e24bd004 	sub	sp, fp, #4
    14cc:	e8bd8800 	pop	{fp, pc}
    14d0:	00001900 	.word	0x00001900

000014d4 <malloc>:
    14d4:	e92d4800 	push	{fp, lr}
    14d8:	e28db004 	add	fp, sp, #4
    14dc:	e24dd018 	sub	sp, sp, #24
    14e0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    14e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    14e8:	e2833007 	add	r3, r3, #7
    14ec:	e1a031a3 	lsr	r3, r3, #3
    14f0:	e2833001 	add	r3, r3, #1
    14f4:	e50b3010 	str	r3, [fp, #-16]
    14f8:	e59f3134 	ldr	r3, [pc, #308]	@ 1634 <malloc+0x160>
    14fc:	e5933000 	ldr	r3, [r3]
    1500:	e50b300c 	str	r3, [fp, #-12]
    1504:	e51b300c 	ldr	r3, [fp, #-12]
    1508:	e3530000 	cmp	r3, #0
    150c:	1a00000b 	bne	1540 <malloc+0x6c>
    1510:	e59f3120 	ldr	r3, [pc, #288]	@ 1638 <malloc+0x164>
    1514:	e50b300c 	str	r3, [fp, #-12]
    1518:	e59f2114 	ldr	r2, [pc, #276]	@ 1634 <malloc+0x160>
    151c:	e51b300c 	ldr	r3, [fp, #-12]
    1520:	e5823000 	str	r3, [r2]
    1524:	e59f3108 	ldr	r3, [pc, #264]	@ 1634 <malloc+0x160>
    1528:	e5933000 	ldr	r3, [r3]
    152c:	e59f2104 	ldr	r2, [pc, #260]	@ 1638 <malloc+0x164>
    1530:	e5823000 	str	r3, [r2]
    1534:	e59f30fc 	ldr	r3, [pc, #252]	@ 1638 <malloc+0x164>
    1538:	e3a02000 	mov	r2, #0
    153c:	e5832004 	str	r2, [r3, #4]
    1540:	e51b300c 	ldr	r3, [fp, #-12]
    1544:	e5933000 	ldr	r3, [r3]
    1548:	e50b3008 	str	r3, [fp, #-8]
    154c:	e51b3008 	ldr	r3, [fp, #-8]
    1550:	e5933004 	ldr	r3, [r3, #4]
    1554:	e51b2010 	ldr	r2, [fp, #-16]
    1558:	e1520003 	cmp	r2, r3
    155c:	8a00001e 	bhi	15dc <malloc+0x108>
    1560:	e51b3008 	ldr	r3, [fp, #-8]
    1564:	e5933004 	ldr	r3, [r3, #4]
    1568:	e51b2010 	ldr	r2, [fp, #-16]
    156c:	e1520003 	cmp	r2, r3
    1570:	1a000004 	bne	1588 <malloc+0xb4>
    1574:	e51b3008 	ldr	r3, [fp, #-8]
    1578:	e5932000 	ldr	r2, [r3]
    157c:	e51b300c 	ldr	r3, [fp, #-12]
    1580:	e5832000 	str	r2, [r3]
    1584:	ea00000e 	b	15c4 <malloc+0xf0>
    1588:	e51b3008 	ldr	r3, [fp, #-8]
    158c:	e5932004 	ldr	r2, [r3, #4]
    1590:	e51b3010 	ldr	r3, [fp, #-16]
    1594:	e0422003 	sub	r2, r2, r3
    1598:	e51b3008 	ldr	r3, [fp, #-8]
    159c:	e5832004 	str	r2, [r3, #4]
    15a0:	e51b3008 	ldr	r3, [fp, #-8]
    15a4:	e5933004 	ldr	r3, [r3, #4]
    15a8:	e1a03183 	lsl	r3, r3, #3
    15ac:	e51b2008 	ldr	r2, [fp, #-8]
    15b0:	e0823003 	add	r3, r2, r3
    15b4:	e50b3008 	str	r3, [fp, #-8]
    15b8:	e51b3008 	ldr	r3, [fp, #-8]
    15bc:	e51b2010 	ldr	r2, [fp, #-16]
    15c0:	e5832004 	str	r2, [r3, #4]
    15c4:	e59f2068 	ldr	r2, [pc, #104]	@ 1634 <malloc+0x160>
    15c8:	e51b300c 	ldr	r3, [fp, #-12]
    15cc:	e5823000 	str	r3, [r2]
    15d0:	e51b3008 	ldr	r3, [fp, #-8]
    15d4:	e2833008 	add	r3, r3, #8
    15d8:	ea000012 	b	1628 <malloc+0x154>
    15dc:	e59f3050 	ldr	r3, [pc, #80]	@ 1634 <malloc+0x160>
    15e0:	e5933000 	ldr	r3, [r3]
    15e4:	e51b2008 	ldr	r2, [fp, #-8]
    15e8:	e1520003 	cmp	r2, r3
    15ec:	1a000007 	bne	1610 <malloc+0x13c>
    15f0:	e51b0010 	ldr	r0, [fp, #-16]
    15f4:	ebffff94 	bl	144c <morecore>
    15f8:	e50b0008 	str	r0, [fp, #-8]
    15fc:	e51b3008 	ldr	r3, [fp, #-8]
    1600:	e3530000 	cmp	r3, #0
    1604:	1a000001 	bne	1610 <malloc+0x13c>
    1608:	e3a03000 	mov	r3, #0
    160c:	ea000005 	b	1628 <malloc+0x154>
    1610:	e51b3008 	ldr	r3, [fp, #-8]
    1614:	e50b300c 	str	r3, [fp, #-12]
    1618:	e51b3008 	ldr	r3, [fp, #-8]
    161c:	e5933000 	ldr	r3, [r3]
    1620:	e50b3008 	str	r3, [fp, #-8]
    1624:	eaffffc8 	b	154c <malloc+0x78>
    1628:	e1a00003 	mov	r0, r3
    162c:	e24bd004 	sub	sp, fp, #4
    1630:	e8bd8800 	pop	{fp, pc}
    1634:	00001900 	.word	0x00001900
    1638:	000018f8 	.word	0x000018f8

0000163c <__udivsi3>:
    163c:	e2512001 	subs	r2, r1, #1
    1640:	012fff1e 	bxeq	lr
    1644:	3a000036 	bcc	1724 <__udivsi3+0xe8>
    1648:	e1500001 	cmp	r0, r1
    164c:	9a000022 	bls	16dc <__udivsi3+0xa0>
    1650:	e1110002 	tst	r1, r2
    1654:	0a000023 	beq	16e8 <__udivsi3+0xac>
    1658:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    165c:	01a01181 	lsleq	r1, r1, #3
    1660:	03a03008 	moveq	r3, #8
    1664:	13a03001 	movne	r3, #1
    1668:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    166c:	31510000 	cmpcc	r1, r0
    1670:	31a01201 	lslcc	r1, r1, #4
    1674:	31a03203 	lslcc	r3, r3, #4
    1678:	3afffffa 	bcc	1668 <__udivsi3+0x2c>
    167c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1680:	31510000 	cmpcc	r1, r0
    1684:	31a01081 	lslcc	r1, r1, #1
    1688:	31a03083 	lslcc	r3, r3, #1
    168c:	3afffffa 	bcc	167c <__udivsi3+0x40>
    1690:	e3a02000 	mov	r2, #0
    1694:	e1500001 	cmp	r0, r1
    1698:	20400001 	subcs	r0, r0, r1
    169c:	21822003 	orrcs	r2, r2, r3
    16a0:	e15000a1 	cmp	r0, r1, lsr #1
    16a4:	204000a1 	subcs	r0, r0, r1, lsr #1
    16a8:	218220a3 	orrcs	r2, r2, r3, lsr #1
    16ac:	e1500121 	cmp	r0, r1, lsr #2
    16b0:	20400121 	subcs	r0, r0, r1, lsr #2
    16b4:	21822123 	orrcs	r2, r2, r3, lsr #2
    16b8:	e15001a1 	cmp	r0, r1, lsr #3
    16bc:	204001a1 	subcs	r0, r0, r1, lsr #3
    16c0:	218221a3 	orrcs	r2, r2, r3, lsr #3
    16c4:	e3500000 	cmp	r0, #0
    16c8:	11b03223 	lsrsne	r3, r3, #4
    16cc:	11a01221 	lsrne	r1, r1, #4
    16d0:	1affffef 	bne	1694 <__udivsi3+0x58>
    16d4:	e1a00002 	mov	r0, r2
    16d8:	e12fff1e 	bx	lr
    16dc:	03a00001 	moveq	r0, #1
    16e0:	13a00000 	movne	r0, #0
    16e4:	e12fff1e 	bx	lr
    16e8:	e3510801 	cmp	r1, #65536	@ 0x10000
    16ec:	21a01821 	lsrcs	r1, r1, #16
    16f0:	23a02010 	movcs	r2, #16
    16f4:	33a02000 	movcc	r2, #0
    16f8:	e3510c01 	cmp	r1, #256	@ 0x100
    16fc:	21a01421 	lsrcs	r1, r1, #8
    1700:	22822008 	addcs	r2, r2, #8
    1704:	e3510010 	cmp	r1, #16
    1708:	21a01221 	lsrcs	r1, r1, #4
    170c:	22822004 	addcs	r2, r2, #4
    1710:	e3510004 	cmp	r1, #4
    1714:	82822003 	addhi	r2, r2, #3
    1718:	908220a1 	addls	r2, r2, r1, lsr #1
    171c:	e1a00230 	lsr	r0, r0, r2
    1720:	e12fff1e 	bx	lr
    1724:	e3500000 	cmp	r0, #0
    1728:	13e00000 	mvnne	r0, #0
    172c:	ea000007 	b	1750 <__aeabi_idiv0>

00001730 <__aeabi_uidivmod>:
    1730:	e3510000 	cmp	r1, #0
    1734:	0afffffa 	beq	1724 <__udivsi3+0xe8>
    1738:	e92d4003 	push	{r0, r1, lr}
    173c:	ebffffbe 	bl	163c <__udivsi3>
    1740:	e8bd4006 	pop	{r1, r2, lr}
    1744:	e0030092 	mul	r3, r2, r0
    1748:	e0411003 	sub	r1, r1, r3
    174c:	e12fff1e 	bx	lr

00001750 <__aeabi_idiv0>:
    1750:	e12fff1e 	bx	lr
