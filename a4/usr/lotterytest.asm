
_lotterytest:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dde52 	sub	sp, sp, #1312	@ 0x520
       c:	e59f1374 	ldr	r1, [pc, #884]	@ 388 <main+0x388>
      10:	e3a00001 	mov	r0, #1
      14:	eb00046b 	bl	11c8 <printf>
      18:	e59f136c 	ldr	r1, [pc, #876]	@ 38c <main+0x38c>
      1c:	e3a00001 	mov	r0, #1
      20:	eb000468 	bl	11c8 <printf>
      24:	e3a0002a 	mov	r0, #42	@ 0x2a
      28:	eb000395 	bl	e84 <srand>
      2c:	eb0002c5 	bl	b48 <fork>
      30:	e50b000c 	str	r0, [fp, #-12]
      34:	e51b300c 	ldr	r3, [fp, #-12]
      38:	e3530000 	cmp	r3, #0
      3c:	1a000010 	bne	84 <main+0x84>
      40:	e3a03000 	mov	r3, #0
      44:	e50b3008 	str	r3, [fp, #-8]
      48:	ea000008 	b	70 <main+0x70>
      4c:	e51b3008 	ldr	r3, [fp, #-8]
      50:	e0030393 	mul	r3, r3, r3
      54:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      58:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      5c:	e2833001 	add	r3, r3, #1
      60:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e2833001 	add	r3, r3, #1
      6c:	e50b3008 	str	r3, [fp, #-8]
      70:	e51b3008 	ldr	r3, [fp, #-8]
      74:	e59f2314 	ldr	r2, [pc, #788]	@ 390 <main+0x390>
      78:	e1530002 	cmp	r3, r2
      7c:	bafffff2 	blt	4c <main+0x4c>
      80:	eb0002b9 	bl	b6c <exit>
      84:	eb0002af 	bl	b48 <fork>
      88:	e50b0010 	str	r0, [fp, #-16]
      8c:	e51b3010 	ldr	r3, [fp, #-16]
      90:	e3530000 	cmp	r3, #0
      94:	1a000010 	bne	dc <main+0xdc>
      98:	e3a03000 	mov	r3, #0
      9c:	e50b3008 	str	r3, [fp, #-8]
      a0:	ea000008 	b	c8 <main+0xc8>
      a4:	e51b3008 	ldr	r3, [fp, #-8]
      a8:	e0030393 	mul	r3, r3, r3
      ac:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      b0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      b4:	e2833001 	add	r3, r3, #1
      b8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      bc:	e51b3008 	ldr	r3, [fp, #-8]
      c0:	e2833001 	add	r3, r3, #1
      c4:	e50b3008 	str	r3, [fp, #-8]
      c8:	e51b3008 	ldr	r3, [fp, #-8]
      cc:	e59f22bc 	ldr	r2, [pc, #700]	@ 390 <main+0x390>
      d0:	e1530002 	cmp	r3, r2
      d4:	bafffff2 	blt	a4 <main+0xa4>
      d8:	eb0002a3 	bl	b6c <exit>
      dc:	e3a01001 	mov	r1, #1
      e0:	e51b000c 	ldr	r0, [fp, #-12]
      e4:	eb00035d 	bl	e60 <settickets>
      e8:	e1a03000 	mov	r3, r0
      ec:	e3530000 	cmp	r3, #0
      f0:	aa000002 	bge	100 <main+0x100>
      f4:	e59f1298 	ldr	r1, [pc, #664]	@ 394 <main+0x394>
      f8:	e3a00001 	mov	r0, #1
      fc:	eb000431 	bl	11c8 <printf>
     100:	e3a01004 	mov	r1, #4
     104:	e51b0010 	ldr	r0, [fp, #-16]
     108:	eb000354 	bl	e60 <settickets>
     10c:	e1a03000 	mov	r3, r0
     110:	e3530000 	cmp	r3, #0
     114:	aa000002 	bge	124 <main+0x124>
     118:	e59f1278 	ldr	r1, [pc, #632]	@ 398 <main+0x398>
     11c:	e3a00001 	mov	r0, #1
     120:	eb000428 	bl	11c8 <printf>
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e51b200c 	ldr	r2, [fp, #-12]
     12c:	e59f1268 	ldr	r1, [pc, #616]	@ 39c <main+0x39c>
     130:	e3a00001 	mov	r0, #1
     134:	eb000423 	bl	11c8 <printf>
     138:	e59f1260 	ldr	r1, [pc, #608]	@ 3a0 <main+0x3a0>
     13c:	e3a00001 	mov	r0, #1
     140:	eb000420 	bl	11c8 <printf>
     144:	e3a00032 	mov	r0, #50	@ 0x32
     148:	eb000329 	bl	df4 <sleep>
     14c:	e24b3e51 	sub	r3, fp, #1296	@ 0x510
     150:	e2433004 	sub	r3, r3, #4
     154:	e2433004 	sub	r3, r3, #4
     158:	e1a00003 	mov	r0, r3
     15c:	eb000351 	bl	ea8 <getpinfo>
     160:	e1a03000 	mov	r3, r0
     164:	e3530000 	cmp	r3, #0
     168:	1a000046 	bne	288 <main+0x288>
     16c:	e59f1230 	ldr	r1, [pc, #560]	@ 3a4 <main+0x3a4>
     170:	e3a00001 	mov	r0, #1
     174:	eb000413 	bl	11c8 <printf>
     178:	e59f1228 	ldr	r1, [pc, #552]	@ 3a8 <main+0x3a8>
     17c:	e3a00001 	mov	r0, #1
     180:	eb000410 	bl	11c8 <printf>
     184:	e3a03000 	mov	r3, #0
     188:	e50b3008 	str	r3, [fp, #-8]
     18c:	ea00003a 	b	27c <main+0x27c>
     190:	e51b3008 	ldr	r3, [fp, #-8]
     194:	e1a03103 	lsl	r3, r3, #2
     198:	e2433004 	sub	r3, r3, #4
     19c:	e083300b 	add	r3, r3, fp
     1a0:	e5133514 	ldr	r3, [r3, #-1300]	@ 0xfffffaec
     1a4:	e3530000 	cmp	r3, #0
     1a8:	0a000030 	beq	270 <main+0x270>
     1ac:	e51b3008 	ldr	r3, [fp, #-8]
     1b0:	e2833040 	add	r3, r3, #64	@ 0x40
     1b4:	e1a03103 	lsl	r3, r3, #2
     1b8:	e2433004 	sub	r3, r3, #4
     1bc:	e083300b 	add	r3, r3, fp
     1c0:	e5133514 	ldr	r3, [r3, #-1300]	@ 0xfffffaec
     1c4:	e51b200c 	ldr	r2, [fp, #-12]
     1c8:	e1520003 	cmp	r2, r3
     1cc:	0a000008 	beq	1f4 <main+0x1f4>
     1d0:	e51b3008 	ldr	r3, [fp, #-8]
     1d4:	e2833040 	add	r3, r3, #64	@ 0x40
     1d8:	e1a03103 	lsl	r3, r3, #2
     1dc:	e2433004 	sub	r3, r3, #4
     1e0:	e083300b 	add	r3, r3, fp
     1e4:	e5133514 	ldr	r3, [r3, #-1300]	@ 0xfffffaec
     1e8:	e51b2010 	ldr	r2, [fp, #-16]
     1ec:	e1520003 	cmp	r2, r3
     1f0:	1a00001e 	bne	270 <main+0x270>
     1f4:	e51b3008 	ldr	r3, [fp, #-8]
     1f8:	e2833040 	add	r3, r3, #64	@ 0x40
     1fc:	e1a03103 	lsl	r3, r3, #2
     200:	e2433004 	sub	r3, r3, #4
     204:	e083300b 	add	r3, r3, fp
     208:	e5131514 	ldr	r1, [r3, #-1300]	@ 0xfffffaec
     20c:	e51b3008 	ldr	r3, [fp, #-8]
     210:	e2833080 	add	r3, r3, #128	@ 0x80
     214:	e1a03103 	lsl	r3, r3, #2
     218:	e2433004 	sub	r3, r3, #4
     21c:	e083300b 	add	r3, r3, fp
     220:	e5130514 	ldr	r0, [r3, #-1300]	@ 0xfffffaec
     224:	e51b3008 	ldr	r3, [fp, #-8]
     228:	e28330c0 	add	r3, r3, #192	@ 0xc0
     22c:	e1a03103 	lsl	r3, r3, #2
     230:	e2433004 	sub	r3, r3, #4
     234:	e083300b 	add	r3, r3, fp
     238:	e5132514 	ldr	r2, [r3, #-1300]	@ 0xfffffaec
     23c:	e51b3008 	ldr	r3, [fp, #-8]
     240:	e2833c01 	add	r3, r3, #256	@ 0x100
     244:	e1a03103 	lsl	r3, r3, #2
     248:	e2433004 	sub	r3, r3, #4
     24c:	e083300b 	add	r3, r3, fp
     250:	e5133514 	ldr	r3, [r3, #-1300]	@ 0xfffffaec
     254:	e58d3004 	str	r3, [sp, #4]
     258:	e58d2000 	str	r2, [sp]
     25c:	e1a03000 	mov	r3, r0
     260:	e1a02001 	mov	r2, r1
     264:	e59f1140 	ldr	r1, [pc, #320]	@ 3ac <main+0x3ac>
     268:	e3a00001 	mov	r0, #1
     26c:	eb0003d5 	bl	11c8 <printf>
     270:	e51b3008 	ldr	r3, [fp, #-8]
     274:	e2833001 	add	r3, r3, #1
     278:	e50b3008 	str	r3, [fp, #-8]
     27c:	e51b3008 	ldr	r3, [fp, #-8]
     280:	e353003f 	cmp	r3, #63	@ 0x3f
     284:	daffffc1 	ble	190 <main+0x190>
     288:	eb000240 	bl	b90 <wait>
     28c:	eb00023f 	bl	b90 <wait>
     290:	e59f1118 	ldr	r1, [pc, #280]	@ 3b0 <main+0x3b0>
     294:	e3a00001 	mov	r0, #1
     298:	eb0003ca 	bl	11c8 <printf>
     29c:	eb000229 	bl	b48 <fork>
     2a0:	e50b000c 	str	r0, [fp, #-12]
     2a4:	e51b300c 	ldr	r3, [fp, #-12]
     2a8:	e3530000 	cmp	r3, #0
     2ac:	1a000008 	bne	2d4 <main+0x2d4>
     2b0:	e59f10fc 	ldr	r1, [pc, #252]	@ 3b4 <main+0x3b4>
     2b4:	e3a00001 	mov	r0, #1
     2b8:	eb0003c2 	bl	11c8 <printf>
     2bc:	e3a0000a 	mov	r0, #10
     2c0:	eb0002cb 	bl	df4 <sleep>
     2c4:	e59f10ec 	ldr	r1, [pc, #236]	@ 3b8 <main+0x3b8>
     2c8:	e3a00001 	mov	r0, #1
     2cc:	eb0003bd 	bl	11c8 <printf>
     2d0:	eb000225 	bl	b6c <exit>
     2d4:	e3a00005 	mov	r0, #5
     2d8:	eb0002c5 	bl	df4 <sleep>
     2dc:	e24b3e51 	sub	r3, fp, #1296	@ 0x510
     2e0:	e2433004 	sub	r3, r3, #4
     2e4:	e2433004 	sub	r3, r3, #4
     2e8:	e1a00003 	mov	r0, r3
     2ec:	eb0002ed 	bl	ea8 <getpinfo>
     2f0:	e1a03000 	mov	r3, r0
     2f4:	e3530000 	cmp	r3, #0
     2f8:	1a00001d 	bne	374 <main+0x374>
     2fc:	e3a03000 	mov	r3, #0
     300:	e50b3008 	str	r3, [fp, #-8]
     304:	ea000017 	b	368 <main+0x368>
     308:	e51b3008 	ldr	r3, [fp, #-8]
     30c:	e1a03103 	lsl	r3, r3, #2
     310:	e2433004 	sub	r3, r3, #4
     314:	e083300b 	add	r3, r3, fp
     318:	e5133514 	ldr	r3, [r3, #-1300]	@ 0xfffffaec
     31c:	e3530000 	cmp	r3, #0
     320:	0a00000d 	beq	35c <main+0x35c>
     324:	e51b3008 	ldr	r3, [fp, #-8]
     328:	e2833040 	add	r3, r3, #64	@ 0x40
     32c:	e1a03103 	lsl	r3, r3, #2
     330:	e2433004 	sub	r3, r3, #4
     334:	e083300b 	add	r3, r3, fp
     338:	e5133514 	ldr	r3, [r3, #-1300]	@ 0xfffffaec
     33c:	e51b200c 	ldr	r2, [fp, #-12]
     340:	e1520003 	cmp	r2, r3
     344:	1a000004 	bne	35c <main+0x35c>
     348:	e51b200c 	ldr	r2, [fp, #-12]
     34c:	e59f1068 	ldr	r1, [pc, #104]	@ 3bc <main+0x3bc>
     350:	e3a00001 	mov	r0, #1
     354:	eb00039b 	bl	11c8 <printf>
     358:	ea000005 	b	374 <main+0x374>
     35c:	e51b3008 	ldr	r3, [fp, #-8]
     360:	e2833001 	add	r3, r3, #1
     364:	e50b3008 	str	r3, [fp, #-8]
     368:	e51b3008 	ldr	r3, [fp, #-8]
     36c:	e353003f 	cmp	r3, #63	@ 0x3f
     370:	daffffe4 	ble	308 <main+0x308>
     374:	eb000205 	bl	b90 <wait>
     378:	e59f1040 	ldr	r1, [pc, #64]	@ 3c0 <main+0x3c0>
     37c:	e3a00001 	mov	r0, #1
     380:	eb000390 	bl	11c8 <printf>
     384:	eb0001f8 	bl	b6c <exit>
     388:	00001884 	.word	0x00001884
     38c:	0000189c 	.word	0x0000189c
     390:	000186a0 	.word	0x000186a0
     394:	000018b4 	.word	0x000018b4
     398:	000018d4 	.word	0x000018d4
     39c:	000018f4 	.word	0x000018f4
     3a0:	00001924 	.word	0x00001924
     3a4:	00001950 	.word	0x00001950
     3a8:	0000196c 	.word	0x0000196c
     3ac:	0000198c 	.word	0x0000198c
     3b0:	0000199c 	.word	0x0000199c
     3b4:	000019c4 	.word	0x000019c4
     3b8:	000019e4 	.word	0x000019e4
     3bc:	000019f4 	.word	0x000019f4
     3c0:	00001a2c 	.word	0x00001a2c

000003c4 <strcpy>:
     3c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3c8:	e28db000 	add	fp, sp, #0
     3cc:	e24dd014 	sub	sp, sp, #20
     3d0:	e50b0010 	str	r0, [fp, #-16]
     3d4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     3d8:	e51b3010 	ldr	r3, [fp, #-16]
     3dc:	e50b3008 	str	r3, [fp, #-8]
     3e0:	e1a00000 	nop			@ (mov r0, r0)
     3e4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     3e8:	e2823001 	add	r3, r2, #1
     3ec:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     3f0:	e51b3010 	ldr	r3, [fp, #-16]
     3f4:	e2831001 	add	r1, r3, #1
     3f8:	e50b1010 	str	r1, [fp, #-16]
     3fc:	e5d22000 	ldrb	r2, [r2]
     400:	e5c32000 	strb	r2, [r3]
     404:	e5d33000 	ldrb	r3, [r3]
     408:	e3530000 	cmp	r3, #0
     40c:	1afffff4 	bne	3e4 <strcpy+0x20>
     410:	e51b3008 	ldr	r3, [fp, #-8]
     414:	e1a00003 	mov	r0, r3
     418:	e28bd000 	add	sp, fp, #0
     41c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     420:	e12fff1e 	bx	lr

00000424 <strcmp>:
     424:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     428:	e28db000 	add	fp, sp, #0
     42c:	e24dd00c 	sub	sp, sp, #12
     430:	e50b0008 	str	r0, [fp, #-8]
     434:	e50b100c 	str	r1, [fp, #-12]
     438:	ea000005 	b	454 <strcmp+0x30>
     43c:	e51b3008 	ldr	r3, [fp, #-8]
     440:	e2833001 	add	r3, r3, #1
     444:	e50b3008 	str	r3, [fp, #-8]
     448:	e51b300c 	ldr	r3, [fp, #-12]
     44c:	e2833001 	add	r3, r3, #1
     450:	e50b300c 	str	r3, [fp, #-12]
     454:	e51b3008 	ldr	r3, [fp, #-8]
     458:	e5d33000 	ldrb	r3, [r3]
     45c:	e3530000 	cmp	r3, #0
     460:	0a000005 	beq	47c <strcmp+0x58>
     464:	e51b3008 	ldr	r3, [fp, #-8]
     468:	e5d32000 	ldrb	r2, [r3]
     46c:	e51b300c 	ldr	r3, [fp, #-12]
     470:	e5d33000 	ldrb	r3, [r3]
     474:	e1520003 	cmp	r2, r3
     478:	0affffef 	beq	43c <strcmp+0x18>
     47c:	e51b3008 	ldr	r3, [fp, #-8]
     480:	e5d33000 	ldrb	r3, [r3]
     484:	e1a02003 	mov	r2, r3
     488:	e51b300c 	ldr	r3, [fp, #-12]
     48c:	e5d33000 	ldrb	r3, [r3]
     490:	e0423003 	sub	r3, r2, r3
     494:	e1a00003 	mov	r0, r3
     498:	e28bd000 	add	sp, fp, #0
     49c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4a0:	e12fff1e 	bx	lr

000004a4 <strlen>:
     4a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4a8:	e28db000 	add	fp, sp, #0
     4ac:	e24dd014 	sub	sp, sp, #20
     4b0:	e50b0010 	str	r0, [fp, #-16]
     4b4:	e3a03000 	mov	r3, #0
     4b8:	e50b3008 	str	r3, [fp, #-8]
     4bc:	ea000002 	b	4cc <strlen+0x28>
     4c0:	e51b3008 	ldr	r3, [fp, #-8]
     4c4:	e2833001 	add	r3, r3, #1
     4c8:	e50b3008 	str	r3, [fp, #-8]
     4cc:	e51b3008 	ldr	r3, [fp, #-8]
     4d0:	e51b2010 	ldr	r2, [fp, #-16]
     4d4:	e0823003 	add	r3, r2, r3
     4d8:	e5d33000 	ldrb	r3, [r3]
     4dc:	e3530000 	cmp	r3, #0
     4e0:	1afffff6 	bne	4c0 <strlen+0x1c>
     4e4:	e51b3008 	ldr	r3, [fp, #-8]
     4e8:	e1a00003 	mov	r0, r3
     4ec:	e28bd000 	add	sp, fp, #0
     4f0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4f4:	e12fff1e 	bx	lr

000004f8 <memset>:
     4f8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4fc:	e28db000 	add	fp, sp, #0
     500:	e24dd024 	sub	sp, sp, #36	@ 0x24
     504:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     508:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     50c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     510:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     514:	e50b3008 	str	r3, [fp, #-8]
     518:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     51c:	e54b300d 	strb	r3, [fp, #-13]
     520:	e55b200d 	ldrb	r2, [fp, #-13]
     524:	e1a03002 	mov	r3, r2
     528:	e1a03403 	lsl	r3, r3, #8
     52c:	e0833002 	add	r3, r3, r2
     530:	e1a03803 	lsl	r3, r3, #16
     534:	e1a02003 	mov	r2, r3
     538:	e55b300d 	ldrb	r3, [fp, #-13]
     53c:	e1a03403 	lsl	r3, r3, #8
     540:	e1822003 	orr	r2, r2, r3
     544:	e55b300d 	ldrb	r3, [fp, #-13]
     548:	e1823003 	orr	r3, r2, r3
     54c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     550:	ea000008 	b	578 <memset+0x80>
     554:	e51b3008 	ldr	r3, [fp, #-8]
     558:	e55b200d 	ldrb	r2, [fp, #-13]
     55c:	e5c32000 	strb	r2, [r3]
     560:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     564:	e2433001 	sub	r3, r3, #1
     568:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     56c:	e51b3008 	ldr	r3, [fp, #-8]
     570:	e2833001 	add	r3, r3, #1
     574:	e50b3008 	str	r3, [fp, #-8]
     578:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     57c:	e3530000 	cmp	r3, #0
     580:	0a000003 	beq	594 <memset+0x9c>
     584:	e51b3008 	ldr	r3, [fp, #-8]
     588:	e2033003 	and	r3, r3, #3
     58c:	e3530000 	cmp	r3, #0
     590:	1affffef 	bne	554 <memset+0x5c>
     594:	e51b3008 	ldr	r3, [fp, #-8]
     598:	e50b300c 	str	r3, [fp, #-12]
     59c:	ea000008 	b	5c4 <memset+0xcc>
     5a0:	e51b300c 	ldr	r3, [fp, #-12]
     5a4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     5a8:	e5832000 	str	r2, [r3]
     5ac:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     5b0:	e2433004 	sub	r3, r3, #4
     5b4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     5b8:	e51b300c 	ldr	r3, [fp, #-12]
     5bc:	e2833004 	add	r3, r3, #4
     5c0:	e50b300c 	str	r3, [fp, #-12]
     5c4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     5c8:	e3530003 	cmp	r3, #3
     5cc:	8afffff3 	bhi	5a0 <memset+0xa8>
     5d0:	e51b300c 	ldr	r3, [fp, #-12]
     5d4:	e50b3008 	str	r3, [fp, #-8]
     5d8:	ea000008 	b	600 <memset+0x108>
     5dc:	e51b3008 	ldr	r3, [fp, #-8]
     5e0:	e55b200d 	ldrb	r2, [fp, #-13]
     5e4:	e5c32000 	strb	r2, [r3]
     5e8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     5ec:	e2433001 	sub	r3, r3, #1
     5f0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     5f4:	e51b3008 	ldr	r3, [fp, #-8]
     5f8:	e2833001 	add	r3, r3, #1
     5fc:	e50b3008 	str	r3, [fp, #-8]
     600:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     604:	e3530000 	cmp	r3, #0
     608:	1afffff3 	bne	5dc <memset+0xe4>
     60c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     610:	e1a00003 	mov	r0, r3
     614:	e28bd000 	add	sp, fp, #0
     618:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     61c:	e12fff1e 	bx	lr

00000620 <strchr>:
     620:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     624:	e28db000 	add	fp, sp, #0
     628:	e24dd00c 	sub	sp, sp, #12
     62c:	e50b0008 	str	r0, [fp, #-8]
     630:	e1a03001 	mov	r3, r1
     634:	e54b3009 	strb	r3, [fp, #-9]
     638:	ea000009 	b	664 <strchr+0x44>
     63c:	e51b3008 	ldr	r3, [fp, #-8]
     640:	e5d33000 	ldrb	r3, [r3]
     644:	e55b2009 	ldrb	r2, [fp, #-9]
     648:	e1520003 	cmp	r2, r3
     64c:	1a000001 	bne	658 <strchr+0x38>
     650:	e51b3008 	ldr	r3, [fp, #-8]
     654:	ea000007 	b	678 <strchr+0x58>
     658:	e51b3008 	ldr	r3, [fp, #-8]
     65c:	e2833001 	add	r3, r3, #1
     660:	e50b3008 	str	r3, [fp, #-8]
     664:	e51b3008 	ldr	r3, [fp, #-8]
     668:	e5d33000 	ldrb	r3, [r3]
     66c:	e3530000 	cmp	r3, #0
     670:	1afffff1 	bne	63c <strchr+0x1c>
     674:	e3a03000 	mov	r3, #0
     678:	e1a00003 	mov	r0, r3
     67c:	e28bd000 	add	sp, fp, #0
     680:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     684:	e12fff1e 	bx	lr

00000688 <gets>:
     688:	e92d4800 	push	{fp, lr}
     68c:	e28db004 	add	fp, sp, #4
     690:	e24dd018 	sub	sp, sp, #24
     694:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     698:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     69c:	e3a03000 	mov	r3, #0
     6a0:	e50b3008 	str	r3, [fp, #-8]
     6a4:	ea000016 	b	704 <gets+0x7c>
     6a8:	e24b300d 	sub	r3, fp, #13
     6ac:	e3a02001 	mov	r2, #1
     6b0:	e1a01003 	mov	r1, r3
     6b4:	e3a00000 	mov	r0, #0
     6b8:	eb000146 	bl	bd8 <read>
     6bc:	e50b000c 	str	r0, [fp, #-12]
     6c0:	e51b300c 	ldr	r3, [fp, #-12]
     6c4:	e3530000 	cmp	r3, #0
     6c8:	da000013 	ble	71c <gets+0x94>
     6cc:	e51b3008 	ldr	r3, [fp, #-8]
     6d0:	e2832001 	add	r2, r3, #1
     6d4:	e50b2008 	str	r2, [fp, #-8]
     6d8:	e1a02003 	mov	r2, r3
     6dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6e0:	e0833002 	add	r3, r3, r2
     6e4:	e55b200d 	ldrb	r2, [fp, #-13]
     6e8:	e5c32000 	strb	r2, [r3]
     6ec:	e55b300d 	ldrb	r3, [fp, #-13]
     6f0:	e353000a 	cmp	r3, #10
     6f4:	0a000009 	beq	720 <gets+0x98>
     6f8:	e55b300d 	ldrb	r3, [fp, #-13]
     6fc:	e353000d 	cmp	r3, #13
     700:	0a000006 	beq	720 <gets+0x98>
     704:	e51b3008 	ldr	r3, [fp, #-8]
     708:	e2833001 	add	r3, r3, #1
     70c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     710:	e1520003 	cmp	r2, r3
     714:	caffffe3 	bgt	6a8 <gets+0x20>
     718:	ea000000 	b	720 <gets+0x98>
     71c:	e1a00000 	nop			@ (mov r0, r0)
     720:	e51b3008 	ldr	r3, [fp, #-8]
     724:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     728:	e0823003 	add	r3, r2, r3
     72c:	e3a02000 	mov	r2, #0
     730:	e5c32000 	strb	r2, [r3]
     734:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     738:	e1a00003 	mov	r0, r3
     73c:	e24bd004 	sub	sp, fp, #4
     740:	e8bd8800 	pop	{fp, pc}

00000744 <stat>:
     744:	e92d4800 	push	{fp, lr}
     748:	e28db004 	add	fp, sp, #4
     74c:	e24dd010 	sub	sp, sp, #16
     750:	e50b0010 	str	r0, [fp, #-16]
     754:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     758:	e3a01000 	mov	r1, #0
     75c:	e51b0010 	ldr	r0, [fp, #-16]
     760:	eb000149 	bl	c8c <open>
     764:	e50b0008 	str	r0, [fp, #-8]
     768:	e51b3008 	ldr	r3, [fp, #-8]
     76c:	e3530000 	cmp	r3, #0
     770:	aa000001 	bge	77c <stat+0x38>
     774:	e3e03000 	mvn	r3, #0
     778:	ea000006 	b	798 <stat+0x54>
     77c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     780:	e51b0008 	ldr	r0, [fp, #-8]
     784:	eb00015b 	bl	cf8 <fstat>
     788:	e50b000c 	str	r0, [fp, #-12]
     78c:	e51b0008 	ldr	r0, [fp, #-8]
     790:	eb000122 	bl	c20 <close>
     794:	e51b300c 	ldr	r3, [fp, #-12]
     798:	e1a00003 	mov	r0, r3
     79c:	e24bd004 	sub	sp, fp, #4
     7a0:	e8bd8800 	pop	{fp, pc}

000007a4 <atoi>:
     7a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     7a8:	e28db000 	add	fp, sp, #0
     7ac:	e24dd014 	sub	sp, sp, #20
     7b0:	e50b0010 	str	r0, [fp, #-16]
     7b4:	e3a03000 	mov	r3, #0
     7b8:	e50b3008 	str	r3, [fp, #-8]
     7bc:	ea00000c 	b	7f4 <atoi+0x50>
     7c0:	e51b2008 	ldr	r2, [fp, #-8]
     7c4:	e1a03002 	mov	r3, r2
     7c8:	e1a03103 	lsl	r3, r3, #2
     7cc:	e0833002 	add	r3, r3, r2
     7d0:	e1a03083 	lsl	r3, r3, #1
     7d4:	e1a01003 	mov	r1, r3
     7d8:	e51b3010 	ldr	r3, [fp, #-16]
     7dc:	e2832001 	add	r2, r3, #1
     7e0:	e50b2010 	str	r2, [fp, #-16]
     7e4:	e5d33000 	ldrb	r3, [r3]
     7e8:	e0813003 	add	r3, r1, r3
     7ec:	e2433030 	sub	r3, r3, #48	@ 0x30
     7f0:	e50b3008 	str	r3, [fp, #-8]
     7f4:	e51b3010 	ldr	r3, [fp, #-16]
     7f8:	e5d33000 	ldrb	r3, [r3]
     7fc:	e353002f 	cmp	r3, #47	@ 0x2f
     800:	9a000003 	bls	814 <atoi+0x70>
     804:	e51b3010 	ldr	r3, [fp, #-16]
     808:	e5d33000 	ldrb	r3, [r3]
     80c:	e3530039 	cmp	r3, #57	@ 0x39
     810:	9affffea 	bls	7c0 <atoi+0x1c>
     814:	e51b3010 	ldr	r3, [fp, #-16]
     818:	e5d33000 	ldrb	r3, [r3]
     81c:	e3530000 	cmp	r3, #0
     820:	1a000001 	bne	82c <atoi+0x88>
     824:	e51b3008 	ldr	r3, [fp, #-8]
     828:	ea000000 	b	830 <atoi+0x8c>
     82c:	e3e03000 	mvn	r3, #0
     830:	e1a00003 	mov	r0, r3
     834:	e28bd000 	add	sp, fp, #0
     838:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     83c:	e12fff1e 	bx	lr

00000840 <memmove>:
     840:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     844:	e28db000 	add	fp, sp, #0
     848:	e24dd01c 	sub	sp, sp, #28
     84c:	e50b0010 	str	r0, [fp, #-16]
     850:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     854:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     858:	e51b3010 	ldr	r3, [fp, #-16]
     85c:	e50b3008 	str	r3, [fp, #-8]
     860:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     864:	e50b300c 	str	r3, [fp, #-12]
     868:	ea000007 	b	88c <memmove+0x4c>
     86c:	e51b200c 	ldr	r2, [fp, #-12]
     870:	e2823001 	add	r3, r2, #1
     874:	e50b300c 	str	r3, [fp, #-12]
     878:	e51b3008 	ldr	r3, [fp, #-8]
     87c:	e2831001 	add	r1, r3, #1
     880:	e50b1008 	str	r1, [fp, #-8]
     884:	e5d22000 	ldrb	r2, [r2]
     888:	e5c32000 	strb	r2, [r3]
     88c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     890:	e2432001 	sub	r2, r3, #1
     894:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     898:	e3530000 	cmp	r3, #0
     89c:	cafffff2 	bgt	86c <memmove+0x2c>
     8a0:	e51b3010 	ldr	r3, [fp, #-16]
     8a4:	e1a00003 	mov	r0, r3
     8a8:	e28bd000 	add	sp, fp, #0
     8ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8b0:	e12fff1e 	bx	lr

000008b4 <initiateLock>:
     8b4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     8b8:	e28db000 	add	fp, sp, #0
     8bc:	e24dd00c 	sub	sp, sp, #12
     8c0:	e50b0008 	str	r0, [fp, #-8]
     8c4:	e51b3008 	ldr	r3, [fp, #-8]
     8c8:	e3a02000 	mov	r2, #0
     8cc:	e5832000 	str	r2, [r3]
     8d0:	e51b3008 	ldr	r3, [fp, #-8]
     8d4:	e3a02001 	mov	r2, #1
     8d8:	e5832004 	str	r2, [r3, #4]
     8dc:	e1a00000 	nop			@ (mov r0, r0)
     8e0:	e28bd000 	add	sp, fp, #0
     8e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8e8:	e12fff1e 	bx	lr

000008ec <acquireLock>:
     8ec:	e92d4800 	push	{fp, lr}
     8f0:	e28db004 	add	fp, sp, #4
     8f4:	e24dd008 	sub	sp, sp, #8
     8f8:	e50b0008 	str	r0, [fp, #-8]
     8fc:	ea000001 	b	908 <acquireLock+0x1c>
     900:	e3a00001 	mov	r0, #1
     904:	eb00013a 	bl	df4 <sleep>
     908:	e51b2008 	ldr	r2, [fp, #-8]
     90c:	e3a01001 	mov	r1, #1
     910:	e1923f9f 	ldrex	r3, [r2]
     914:	e1820f91 	strex	r0, r1, [r2]
     918:	e3500000 	cmp	r0, #0
     91c:	1afffffb 	bne	910 <acquireLock+0x24>
     920:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     924:	e3530001 	cmp	r3, #1
     928:	0afffff4 	beq	900 <acquireLock+0x14>
     92c:	e1a00000 	nop			@ (mov r0, r0)
     930:	e1a00000 	nop			@ (mov r0, r0)
     934:	e24bd004 	sub	sp, fp, #4
     938:	e8bd8800 	pop	{fp, pc}

0000093c <releaseLock>:
     93c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     940:	e28db000 	add	fp, sp, #0
     944:	e24dd00c 	sub	sp, sp, #12
     948:	e50b0008 	str	r0, [fp, #-8]
     94c:	e51b3008 	ldr	r3, [fp, #-8]
     950:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     954:	e3a02000 	mov	r2, #0
     958:	e5832000 	str	r2, [r3]
     95c:	e1a00000 	nop			@ (mov r0, r0)
     960:	e28bd000 	add	sp, fp, #0
     964:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     968:	e12fff1e 	bx	lr

0000096c <initiateCondVar>:
     96c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     970:	e28db000 	add	fp, sp, #0
     974:	e24dd00c 	sub	sp, sp, #12
     978:	e50b0008 	str	r0, [fp, #-8]
     97c:	e51b3008 	ldr	r3, [fp, #-8]
     980:	e3a02000 	mov	r2, #0
     984:	e5832000 	str	r2, [r3]
     988:	e51b3008 	ldr	r3, [fp, #-8]
     98c:	e3a02001 	mov	r2, #1
     990:	e5832004 	str	r2, [r3, #4]
     994:	e1a00000 	nop			@ (mov r0, r0)
     998:	e28bd000 	add	sp, fp, #0
     99c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     9a0:	e12fff1e 	bx	lr

000009a4 <condWait>:
     9a4:	e92d4800 	push	{fp, lr}
     9a8:	e28db004 	add	fp, sp, #4
     9ac:	e24dd008 	sub	sp, sp, #8
     9b0:	e50b0008 	str	r0, [fp, #-8]
     9b4:	e50b100c 	str	r1, [fp, #-12]
     9b8:	e51b000c 	ldr	r0, [fp, #-12]
     9bc:	ebffffde 	bl	93c <releaseLock>
     9c0:	e51b3008 	ldr	r3, [fp, #-8]
     9c4:	e5933000 	ldr	r3, [r3]
     9c8:	e1a00003 	mov	r0, r3
     9cc:	eb00017d 	bl	fc8 <sleepChan>
     9d0:	e51b000c 	ldr	r0, [fp, #-12]
     9d4:	ebffffc4 	bl	8ec <acquireLock>
     9d8:	e1a00000 	nop			@ (mov r0, r0)
     9dc:	e24bd004 	sub	sp, fp, #4
     9e0:	e8bd8800 	pop	{fp, pc}

000009e4 <broadcast>:
     9e4:	e92d4800 	push	{fp, lr}
     9e8:	e28db004 	add	fp, sp, #4
     9ec:	e24dd008 	sub	sp, sp, #8
     9f0:	e50b0008 	str	r0, [fp, #-8]
     9f4:	e51b3008 	ldr	r3, [fp, #-8]
     9f8:	e5933000 	ldr	r3, [r3]
     9fc:	e1a00003 	mov	r0, r3
     a00:	eb000182 	bl	1010 <sigChan>
     a04:	e1a00000 	nop			@ (mov r0, r0)
     a08:	e24bd004 	sub	sp, fp, #4
     a0c:	e8bd8800 	pop	{fp, pc}

00000a10 <semInit>:
     a10:	e92d4800 	push	{fp, lr}
     a14:	e28db004 	add	fp, sp, #4
     a18:	e24dd008 	sub	sp, sp, #8
     a1c:	e50b0008 	str	r0, [fp, #-8]
     a20:	e50b100c 	str	r1, [fp, #-12]
     a24:	e51b3008 	ldr	r3, [fp, #-8]
     a28:	e51b200c 	ldr	r2, [fp, #-12]
     a2c:	e5832000 	str	r2, [r3]
     a30:	e51b3008 	ldr	r3, [fp, #-8]
     a34:	e2833004 	add	r3, r3, #4
     a38:	e1a00003 	mov	r0, r3
     a3c:	ebffff9c 	bl	8b4 <initiateLock>
     a40:	e51b3008 	ldr	r3, [fp, #-8]
     a44:	e283300c 	add	r3, r3, #12
     a48:	e1a00003 	mov	r0, r3
     a4c:	ebffffc6 	bl	96c <initiateCondVar>
     a50:	e51b3008 	ldr	r3, [fp, #-8]
     a54:	e3a02001 	mov	r2, #1
     a58:	e5832014 	str	r2, [r3, #20]
     a5c:	e1a00000 	nop			@ (mov r0, r0)
     a60:	e24bd004 	sub	sp, fp, #4
     a64:	e8bd8800 	pop	{fp, pc}

00000a68 <semUp>:
     a68:	e92d4800 	push	{fp, lr}
     a6c:	e28db004 	add	fp, sp, #4
     a70:	e24dd008 	sub	sp, sp, #8
     a74:	e50b0008 	str	r0, [fp, #-8]
     a78:	e51b3008 	ldr	r3, [fp, #-8]
     a7c:	e2833004 	add	r3, r3, #4
     a80:	e1a00003 	mov	r0, r3
     a84:	ebffff98 	bl	8ec <acquireLock>
     a88:	e51b3008 	ldr	r3, [fp, #-8]
     a8c:	e5933000 	ldr	r3, [r3]
     a90:	e2832001 	add	r2, r3, #1
     a94:	e51b3008 	ldr	r3, [fp, #-8]
     a98:	e5832000 	str	r2, [r3]
     a9c:	e51b3008 	ldr	r3, [fp, #-8]
     aa0:	e283300c 	add	r3, r3, #12
     aa4:	e1a00003 	mov	r0, r3
     aa8:	ebffffcd 	bl	9e4 <broadcast>
     aac:	e51b3008 	ldr	r3, [fp, #-8]
     ab0:	e2833004 	add	r3, r3, #4
     ab4:	e1a00003 	mov	r0, r3
     ab8:	ebffff9f 	bl	93c <releaseLock>
     abc:	e1a00000 	nop			@ (mov r0, r0)
     ac0:	e24bd004 	sub	sp, fp, #4
     ac4:	e8bd8800 	pop	{fp, pc}

00000ac8 <semDown>:
     ac8:	e92d4800 	push	{fp, lr}
     acc:	e28db004 	add	fp, sp, #4
     ad0:	e24dd008 	sub	sp, sp, #8
     ad4:	e50b0008 	str	r0, [fp, #-8]
     ad8:	e51b3008 	ldr	r3, [fp, #-8]
     adc:	e2833004 	add	r3, r3, #4
     ae0:	e1a00003 	mov	r0, r3
     ae4:	ebffff80 	bl	8ec <acquireLock>
     ae8:	ea000006 	b	b08 <semDown+0x40>
     aec:	e51b3008 	ldr	r3, [fp, #-8]
     af0:	e283200c 	add	r2, r3, #12
     af4:	e51b3008 	ldr	r3, [fp, #-8]
     af8:	e2833004 	add	r3, r3, #4
     afc:	e1a01003 	mov	r1, r3
     b00:	e1a00002 	mov	r0, r2
     b04:	ebffffa6 	bl	9a4 <condWait>
     b08:	e51b3008 	ldr	r3, [fp, #-8]
     b0c:	e5933000 	ldr	r3, [r3]
     b10:	e3530000 	cmp	r3, #0
     b14:	dafffff4 	ble	aec <semDown+0x24>
     b18:	e51b3008 	ldr	r3, [fp, #-8]
     b1c:	e5933000 	ldr	r3, [r3]
     b20:	e2432001 	sub	r2, r3, #1
     b24:	e51b3008 	ldr	r3, [fp, #-8]
     b28:	e5832000 	str	r2, [r3]
     b2c:	e51b3008 	ldr	r3, [fp, #-8]
     b30:	e2833004 	add	r3, r3, #4
     b34:	e1a00003 	mov	r0, r3
     b38:	ebffff7f 	bl	93c <releaseLock>
     b3c:	e1a00000 	nop			@ (mov r0, r0)
     b40:	e24bd004 	sub	sp, fp, #4
     b44:	e8bd8800 	pop	{fp, pc}

00000b48 <fork>:
     b48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b4c:	e1a04003 	mov	r4, r3
     b50:	e1a03002 	mov	r3, r2
     b54:	e1a02001 	mov	r2, r1
     b58:	e1a01000 	mov	r1, r0
     b5c:	e3a00001 	mov	r0, #1
     b60:	ef000000 	svc	0x00000000
     b64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b68:	e12fff1e 	bx	lr

00000b6c <exit>:
     b6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b70:	e1a04003 	mov	r4, r3
     b74:	e1a03002 	mov	r3, r2
     b78:	e1a02001 	mov	r2, r1
     b7c:	e1a01000 	mov	r1, r0
     b80:	e3a00002 	mov	r0, #2
     b84:	ef000000 	svc	0x00000000
     b88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b8c:	e12fff1e 	bx	lr

00000b90 <wait>:
     b90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b94:	e1a04003 	mov	r4, r3
     b98:	e1a03002 	mov	r3, r2
     b9c:	e1a02001 	mov	r2, r1
     ba0:	e1a01000 	mov	r1, r0
     ba4:	e3a00003 	mov	r0, #3
     ba8:	ef000000 	svc	0x00000000
     bac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb0:	e12fff1e 	bx	lr

00000bb4 <pipe>:
     bb4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bb8:	e1a04003 	mov	r4, r3
     bbc:	e1a03002 	mov	r3, r2
     bc0:	e1a02001 	mov	r2, r1
     bc4:	e1a01000 	mov	r1, r0
     bc8:	e3a00004 	mov	r0, #4
     bcc:	ef000000 	svc	0x00000000
     bd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bd4:	e12fff1e 	bx	lr

00000bd8 <read>:
     bd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bdc:	e1a04003 	mov	r4, r3
     be0:	e1a03002 	mov	r3, r2
     be4:	e1a02001 	mov	r2, r1
     be8:	e1a01000 	mov	r1, r0
     bec:	e3a00005 	mov	r0, #5
     bf0:	ef000000 	svc	0x00000000
     bf4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bf8:	e12fff1e 	bx	lr

00000bfc <write>:
     bfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c00:	e1a04003 	mov	r4, r3
     c04:	e1a03002 	mov	r3, r2
     c08:	e1a02001 	mov	r2, r1
     c0c:	e1a01000 	mov	r1, r0
     c10:	e3a00010 	mov	r0, #16
     c14:	ef000000 	svc	0x00000000
     c18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c1c:	e12fff1e 	bx	lr

00000c20 <close>:
     c20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c24:	e1a04003 	mov	r4, r3
     c28:	e1a03002 	mov	r3, r2
     c2c:	e1a02001 	mov	r2, r1
     c30:	e1a01000 	mov	r1, r0
     c34:	e3a00015 	mov	r0, #21
     c38:	ef000000 	svc	0x00000000
     c3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c40:	e12fff1e 	bx	lr

00000c44 <kill>:
     c44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c48:	e1a04003 	mov	r4, r3
     c4c:	e1a03002 	mov	r3, r2
     c50:	e1a02001 	mov	r2, r1
     c54:	e1a01000 	mov	r1, r0
     c58:	e3a00006 	mov	r0, #6
     c5c:	ef000000 	svc	0x00000000
     c60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c64:	e12fff1e 	bx	lr

00000c68 <exec>:
     c68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c6c:	e1a04003 	mov	r4, r3
     c70:	e1a03002 	mov	r3, r2
     c74:	e1a02001 	mov	r2, r1
     c78:	e1a01000 	mov	r1, r0
     c7c:	e3a00007 	mov	r0, #7
     c80:	ef000000 	svc	0x00000000
     c84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c88:	e12fff1e 	bx	lr

00000c8c <open>:
     c8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c90:	e1a04003 	mov	r4, r3
     c94:	e1a03002 	mov	r3, r2
     c98:	e1a02001 	mov	r2, r1
     c9c:	e1a01000 	mov	r1, r0
     ca0:	e3a0000f 	mov	r0, #15
     ca4:	ef000000 	svc	0x00000000
     ca8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cac:	e12fff1e 	bx	lr

00000cb0 <mknod>:
     cb0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cb4:	e1a04003 	mov	r4, r3
     cb8:	e1a03002 	mov	r3, r2
     cbc:	e1a02001 	mov	r2, r1
     cc0:	e1a01000 	mov	r1, r0
     cc4:	e3a00011 	mov	r0, #17
     cc8:	ef000000 	svc	0x00000000
     ccc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd0:	e12fff1e 	bx	lr

00000cd4 <unlink>:
     cd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cd8:	e1a04003 	mov	r4, r3
     cdc:	e1a03002 	mov	r3, r2
     ce0:	e1a02001 	mov	r2, r1
     ce4:	e1a01000 	mov	r1, r0
     ce8:	e3a00012 	mov	r0, #18
     cec:	ef000000 	svc	0x00000000
     cf0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cf4:	e12fff1e 	bx	lr

00000cf8 <fstat>:
     cf8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cfc:	e1a04003 	mov	r4, r3
     d00:	e1a03002 	mov	r3, r2
     d04:	e1a02001 	mov	r2, r1
     d08:	e1a01000 	mov	r1, r0
     d0c:	e3a00008 	mov	r0, #8
     d10:	ef000000 	svc	0x00000000
     d14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d18:	e12fff1e 	bx	lr

00000d1c <link>:
     d1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d20:	e1a04003 	mov	r4, r3
     d24:	e1a03002 	mov	r3, r2
     d28:	e1a02001 	mov	r2, r1
     d2c:	e1a01000 	mov	r1, r0
     d30:	e3a00013 	mov	r0, #19
     d34:	ef000000 	svc	0x00000000
     d38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d3c:	e12fff1e 	bx	lr

00000d40 <mkdir>:
     d40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d44:	e1a04003 	mov	r4, r3
     d48:	e1a03002 	mov	r3, r2
     d4c:	e1a02001 	mov	r2, r1
     d50:	e1a01000 	mov	r1, r0
     d54:	e3a00014 	mov	r0, #20
     d58:	ef000000 	svc	0x00000000
     d5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d60:	e12fff1e 	bx	lr

00000d64 <chdir>:
     d64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d68:	e1a04003 	mov	r4, r3
     d6c:	e1a03002 	mov	r3, r2
     d70:	e1a02001 	mov	r2, r1
     d74:	e1a01000 	mov	r1, r0
     d78:	e3a00009 	mov	r0, #9
     d7c:	ef000000 	svc	0x00000000
     d80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d84:	e12fff1e 	bx	lr

00000d88 <dup>:
     d88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d8c:	e1a04003 	mov	r4, r3
     d90:	e1a03002 	mov	r3, r2
     d94:	e1a02001 	mov	r2, r1
     d98:	e1a01000 	mov	r1, r0
     d9c:	e3a0000a 	mov	r0, #10
     da0:	ef000000 	svc	0x00000000
     da4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     da8:	e12fff1e 	bx	lr

00000dac <getpid>:
     dac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     db0:	e1a04003 	mov	r4, r3
     db4:	e1a03002 	mov	r3, r2
     db8:	e1a02001 	mov	r2, r1
     dbc:	e1a01000 	mov	r1, r0
     dc0:	e3a0000b 	mov	r0, #11
     dc4:	ef000000 	svc	0x00000000
     dc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dcc:	e12fff1e 	bx	lr

00000dd0 <sbrk>:
     dd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dd4:	e1a04003 	mov	r4, r3
     dd8:	e1a03002 	mov	r3, r2
     ddc:	e1a02001 	mov	r2, r1
     de0:	e1a01000 	mov	r1, r0
     de4:	e3a0000c 	mov	r0, #12
     de8:	ef000000 	svc	0x00000000
     dec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     df0:	e12fff1e 	bx	lr

00000df4 <sleep>:
     df4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     df8:	e1a04003 	mov	r4, r3
     dfc:	e1a03002 	mov	r3, r2
     e00:	e1a02001 	mov	r2, r1
     e04:	e1a01000 	mov	r1, r0
     e08:	e3a0000d 	mov	r0, #13
     e0c:	ef000000 	svc	0x00000000
     e10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e14:	e12fff1e 	bx	lr

00000e18 <uptime>:
     e18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e1c:	e1a04003 	mov	r4, r3
     e20:	e1a03002 	mov	r3, r2
     e24:	e1a02001 	mov	r2, r1
     e28:	e1a01000 	mov	r1, r0
     e2c:	e3a0000e 	mov	r0, #14
     e30:	ef000000 	svc	0x00000000
     e34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e38:	e12fff1e 	bx	lr

00000e3c <getprocs>:
     e3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e40:	e1a04003 	mov	r4, r3
     e44:	e1a03002 	mov	r3, r2
     e48:	e1a02001 	mov	r2, r1
     e4c:	e1a01000 	mov	r1, r0
     e50:	e3a00016 	mov	r0, #22
     e54:	ef000000 	svc	0x00000000
     e58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e5c:	e12fff1e 	bx	lr

00000e60 <settickets>:
     e60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e64:	e1a04003 	mov	r4, r3
     e68:	e1a03002 	mov	r3, r2
     e6c:	e1a02001 	mov	r2, r1
     e70:	e1a01000 	mov	r1, r0
     e74:	e3a00017 	mov	r0, #23
     e78:	ef000000 	svc	0x00000000
     e7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e80:	e12fff1e 	bx	lr

00000e84 <srand>:
     e84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e88:	e1a04003 	mov	r4, r3
     e8c:	e1a03002 	mov	r3, r2
     e90:	e1a02001 	mov	r2, r1
     e94:	e1a01000 	mov	r1, r0
     e98:	e3a00018 	mov	r0, #24
     e9c:	ef000000 	svc	0x00000000
     ea0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ea4:	e12fff1e 	bx	lr

00000ea8 <getpinfo>:
     ea8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eac:	e1a04003 	mov	r4, r3
     eb0:	e1a03002 	mov	r3, r2
     eb4:	e1a02001 	mov	r2, r1
     eb8:	e1a01000 	mov	r1, r0
     ebc:	e3a00019 	mov	r0, #25
     ec0:	ef000000 	svc	0x00000000
     ec4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ec8:	e12fff1e 	bx	lr

00000ecc <dumppagetable>:
     ecc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ed0:	e1a04003 	mov	r4, r3
     ed4:	e1a03002 	mov	r3, r2
     ed8:	e1a02001 	mov	r2, r1
     edc:	e1a01000 	mov	r1, r0
     ee0:	e3a0001a 	mov	r0, #26
     ee4:	ef000000 	svc	0x00000000
     ee8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eec:	e12fff1e 	bx	lr

00000ef0 <thread_create>:
     ef0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ef4:	e1a04003 	mov	r4, r3
     ef8:	e1a03002 	mov	r3, r2
     efc:	e1a02001 	mov	r2, r1
     f00:	e1a01000 	mov	r1, r0
     f04:	e3a0001b 	mov	r0, #27
     f08:	ef000000 	svc	0x00000000
     f0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f10:	e12fff1e 	bx	lr

00000f14 <thread_exit>:
     f14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f18:	e1a04003 	mov	r4, r3
     f1c:	e1a03002 	mov	r3, r2
     f20:	e1a02001 	mov	r2, r1
     f24:	e1a01000 	mov	r1, r0
     f28:	e3a0001c 	mov	r0, #28
     f2c:	ef000000 	svc	0x00000000
     f30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f34:	e12fff1e 	bx	lr

00000f38 <thread_join>:
     f38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f3c:	e1a04003 	mov	r4, r3
     f40:	e1a03002 	mov	r3, r2
     f44:	e1a02001 	mov	r2, r1
     f48:	e1a01000 	mov	r1, r0
     f4c:	e3a0001d 	mov	r0, #29
     f50:	ef000000 	svc	0x00000000
     f54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f58:	e12fff1e 	bx	lr

00000f5c <waitpid>:
     f5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f60:	e1a04003 	mov	r4, r3
     f64:	e1a03002 	mov	r3, r2
     f68:	e1a02001 	mov	r2, r1
     f6c:	e1a01000 	mov	r1, r0
     f70:	e3a0001e 	mov	r0, #30
     f74:	ef000000 	svc	0x00000000
     f78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f7c:	e12fff1e 	bx	lr

00000f80 <barrier_init>:
     f80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f84:	e1a04003 	mov	r4, r3
     f88:	e1a03002 	mov	r3, r2
     f8c:	e1a02001 	mov	r2, r1
     f90:	e1a01000 	mov	r1, r0
     f94:	e3a0001f 	mov	r0, #31
     f98:	ef000000 	svc	0x00000000
     f9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fa0:	e12fff1e 	bx	lr

00000fa4 <barrier_check>:
     fa4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fa8:	e1a04003 	mov	r4, r3
     fac:	e1a03002 	mov	r3, r2
     fb0:	e1a02001 	mov	r2, r1
     fb4:	e1a01000 	mov	r1, r0
     fb8:	e3a00020 	mov	r0, #32
     fbc:	ef000000 	svc	0x00000000
     fc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fc4:	e12fff1e 	bx	lr

00000fc8 <sleepChan>:
     fc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fcc:	e1a04003 	mov	r4, r3
     fd0:	e1a03002 	mov	r3, r2
     fd4:	e1a02001 	mov	r2, r1
     fd8:	e1a01000 	mov	r1, r0
     fdc:	e3a00024 	mov	r0, #36	@ 0x24
     fe0:	ef000000 	svc	0x00000000
     fe4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fe8:	e12fff1e 	bx	lr

00000fec <getChannel>:
     fec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ff0:	e1a04003 	mov	r4, r3
     ff4:	e1a03002 	mov	r3, r2
     ff8:	e1a02001 	mov	r2, r1
     ffc:	e1a01000 	mov	r1, r0
    1000:	e3a00025 	mov	r0, #37	@ 0x25
    1004:	ef000000 	svc	0x00000000
    1008:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    100c:	e12fff1e 	bx	lr

00001010 <sigChan>:
    1010:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1014:	e1a04003 	mov	r4, r3
    1018:	e1a03002 	mov	r3, r2
    101c:	e1a02001 	mov	r2, r1
    1020:	e1a01000 	mov	r1, r0
    1024:	e3a00026 	mov	r0, #38	@ 0x26
    1028:	ef000000 	svc	0x00000000
    102c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1030:	e12fff1e 	bx	lr

00001034 <sigOneChan>:
    1034:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1038:	e1a04003 	mov	r4, r3
    103c:	e1a03002 	mov	r3, r2
    1040:	e1a02001 	mov	r2, r1
    1044:	e1a01000 	mov	r1, r0
    1048:	e3a00027 	mov	r0, #39	@ 0x27
    104c:	ef000000 	svc	0x00000000
    1050:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1054:	e12fff1e 	bx	lr

00001058 <putc>:
    1058:	e92d4800 	push	{fp, lr}
    105c:	e28db004 	add	fp, sp, #4
    1060:	e24dd008 	sub	sp, sp, #8
    1064:	e50b0008 	str	r0, [fp, #-8]
    1068:	e1a03001 	mov	r3, r1
    106c:	e54b3009 	strb	r3, [fp, #-9]
    1070:	e24b3009 	sub	r3, fp, #9
    1074:	e3a02001 	mov	r2, #1
    1078:	e1a01003 	mov	r1, r3
    107c:	e51b0008 	ldr	r0, [fp, #-8]
    1080:	ebfffedd 	bl	bfc <write>
    1084:	e1a00000 	nop			@ (mov r0, r0)
    1088:	e24bd004 	sub	sp, fp, #4
    108c:	e8bd8800 	pop	{fp, pc}

00001090 <printint>:
    1090:	e92d4800 	push	{fp, lr}
    1094:	e28db004 	add	fp, sp, #4
    1098:	e24dd030 	sub	sp, sp, #48	@ 0x30
    109c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    10a0:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    10a4:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    10a8:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    10ac:	e3a03000 	mov	r3, #0
    10b0:	e50b300c 	str	r3, [fp, #-12]
    10b4:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    10b8:	e3530000 	cmp	r3, #0
    10bc:	0a000008 	beq	10e4 <printint+0x54>
    10c0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    10c4:	e3530000 	cmp	r3, #0
    10c8:	aa000005 	bge	10e4 <printint+0x54>
    10cc:	e3a03001 	mov	r3, #1
    10d0:	e50b300c 	str	r3, [fp, #-12]
    10d4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    10d8:	e2633000 	rsb	r3, r3, #0
    10dc:	e50b3010 	str	r3, [fp, #-16]
    10e0:	ea000001 	b	10ec <printint+0x5c>
    10e4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    10e8:	e50b3010 	str	r3, [fp, #-16]
    10ec:	e3a03000 	mov	r3, #0
    10f0:	e50b3008 	str	r3, [fp, #-8]
    10f4:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    10f8:	e51b3010 	ldr	r3, [fp, #-16]
    10fc:	e1a01002 	mov	r1, r2
    1100:	e1a00003 	mov	r0, r3
    1104:	eb0001d5 	bl	1860 <__aeabi_uidivmod>
    1108:	e1a03001 	mov	r3, r1
    110c:	e1a01003 	mov	r1, r3
    1110:	e51b3008 	ldr	r3, [fp, #-8]
    1114:	e2832001 	add	r2, r3, #1
    1118:	e50b2008 	str	r2, [fp, #-8]
    111c:	e59f20a0 	ldr	r2, [pc, #160]	@ 11c4 <printint+0x134>
    1120:	e7d22001 	ldrb	r2, [r2, r1]
    1124:	e2433004 	sub	r3, r3, #4
    1128:	e083300b 	add	r3, r3, fp
    112c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1130:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    1134:	e1a01003 	mov	r1, r3
    1138:	e51b0010 	ldr	r0, [fp, #-16]
    113c:	eb00018a 	bl	176c <__udivsi3>
    1140:	e1a03000 	mov	r3, r0
    1144:	e50b3010 	str	r3, [fp, #-16]
    1148:	e51b3010 	ldr	r3, [fp, #-16]
    114c:	e3530000 	cmp	r3, #0
    1150:	1affffe7 	bne	10f4 <printint+0x64>
    1154:	e51b300c 	ldr	r3, [fp, #-12]
    1158:	e3530000 	cmp	r3, #0
    115c:	0a00000e 	beq	119c <printint+0x10c>
    1160:	e51b3008 	ldr	r3, [fp, #-8]
    1164:	e2832001 	add	r2, r3, #1
    1168:	e50b2008 	str	r2, [fp, #-8]
    116c:	e2433004 	sub	r3, r3, #4
    1170:	e083300b 	add	r3, r3, fp
    1174:	e3a0202d 	mov	r2, #45	@ 0x2d
    1178:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    117c:	ea000006 	b	119c <printint+0x10c>
    1180:	e24b2020 	sub	r2, fp, #32
    1184:	e51b3008 	ldr	r3, [fp, #-8]
    1188:	e0823003 	add	r3, r2, r3
    118c:	e5d33000 	ldrb	r3, [r3]
    1190:	e1a01003 	mov	r1, r3
    1194:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1198:	ebffffae 	bl	1058 <putc>
    119c:	e51b3008 	ldr	r3, [fp, #-8]
    11a0:	e2433001 	sub	r3, r3, #1
    11a4:	e50b3008 	str	r3, [fp, #-8]
    11a8:	e51b3008 	ldr	r3, [fp, #-8]
    11ac:	e3530000 	cmp	r3, #0
    11b0:	aafffff2 	bge	1180 <printint+0xf0>
    11b4:	e1a00000 	nop			@ (mov r0, r0)
    11b8:	e1a00000 	nop			@ (mov r0, r0)
    11bc:	e24bd004 	sub	sp, fp, #4
    11c0:	e8bd8800 	pop	{fp, pc}
    11c4:	00001a48 	.word	0x00001a48

000011c8 <printf>:
    11c8:	e92d000e 	push	{r1, r2, r3}
    11cc:	e92d4800 	push	{fp, lr}
    11d0:	e28db004 	add	fp, sp, #4
    11d4:	e24dd024 	sub	sp, sp, #36	@ 0x24
    11d8:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    11dc:	e3a03000 	mov	r3, #0
    11e0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    11e4:	e28b3008 	add	r3, fp, #8
    11e8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11ec:	e3a03000 	mov	r3, #0
    11f0:	e50b3010 	str	r3, [fp, #-16]
    11f4:	ea000074 	b	13cc <printf+0x204>
    11f8:	e59b2004 	ldr	r2, [fp, #4]
    11fc:	e51b3010 	ldr	r3, [fp, #-16]
    1200:	e0823003 	add	r3, r2, r3
    1204:	e5d33000 	ldrb	r3, [r3]
    1208:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    120c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1210:	e3530000 	cmp	r3, #0
    1214:	1a00000b 	bne	1248 <printf+0x80>
    1218:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    121c:	e3530025 	cmp	r3, #37	@ 0x25
    1220:	1a000002 	bne	1230 <printf+0x68>
    1224:	e3a03025 	mov	r3, #37	@ 0x25
    1228:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    122c:	ea000063 	b	13c0 <printf+0x1f8>
    1230:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1234:	e6ef3073 	uxtb	r3, r3
    1238:	e1a01003 	mov	r1, r3
    123c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1240:	ebffff84 	bl	1058 <putc>
    1244:	ea00005d 	b	13c0 <printf+0x1f8>
    1248:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    124c:	e3530025 	cmp	r3, #37	@ 0x25
    1250:	1a00005a 	bne	13c0 <printf+0x1f8>
    1254:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1258:	e3530064 	cmp	r3, #100	@ 0x64
    125c:	1a00000a 	bne	128c <printf+0xc4>
    1260:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1264:	e5933000 	ldr	r3, [r3]
    1268:	e1a01003 	mov	r1, r3
    126c:	e3a03001 	mov	r3, #1
    1270:	e3a0200a 	mov	r2, #10
    1274:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1278:	ebffff84 	bl	1090 <printint>
    127c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1280:	e2833004 	add	r3, r3, #4
    1284:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1288:	ea00004a 	b	13b8 <printf+0x1f0>
    128c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1290:	e3530078 	cmp	r3, #120	@ 0x78
    1294:	0a000002 	beq	12a4 <printf+0xdc>
    1298:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    129c:	e3530070 	cmp	r3, #112	@ 0x70
    12a0:	1a00000a 	bne	12d0 <printf+0x108>
    12a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12a8:	e5933000 	ldr	r3, [r3]
    12ac:	e1a01003 	mov	r1, r3
    12b0:	e3a03000 	mov	r3, #0
    12b4:	e3a02010 	mov	r2, #16
    12b8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12bc:	ebffff73 	bl	1090 <printint>
    12c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12c4:	e2833004 	add	r3, r3, #4
    12c8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12cc:	ea000039 	b	13b8 <printf+0x1f0>
    12d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12d4:	e3530073 	cmp	r3, #115	@ 0x73
    12d8:	1a000018 	bne	1340 <printf+0x178>
    12dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12e0:	e5933000 	ldr	r3, [r3]
    12e4:	e50b300c 	str	r3, [fp, #-12]
    12e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12ec:	e2833004 	add	r3, r3, #4
    12f0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12f4:	e51b300c 	ldr	r3, [fp, #-12]
    12f8:	e3530000 	cmp	r3, #0
    12fc:	1a00000a 	bne	132c <printf+0x164>
    1300:	e59f30f4 	ldr	r3, [pc, #244]	@ 13fc <printf+0x234>
    1304:	e50b300c 	str	r3, [fp, #-12]
    1308:	ea000007 	b	132c <printf+0x164>
    130c:	e51b300c 	ldr	r3, [fp, #-12]
    1310:	e5d33000 	ldrb	r3, [r3]
    1314:	e1a01003 	mov	r1, r3
    1318:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    131c:	ebffff4d 	bl	1058 <putc>
    1320:	e51b300c 	ldr	r3, [fp, #-12]
    1324:	e2833001 	add	r3, r3, #1
    1328:	e50b300c 	str	r3, [fp, #-12]
    132c:	e51b300c 	ldr	r3, [fp, #-12]
    1330:	e5d33000 	ldrb	r3, [r3]
    1334:	e3530000 	cmp	r3, #0
    1338:	1afffff3 	bne	130c <printf+0x144>
    133c:	ea00001d 	b	13b8 <printf+0x1f0>
    1340:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1344:	e3530063 	cmp	r3, #99	@ 0x63
    1348:	1a000009 	bne	1374 <printf+0x1ac>
    134c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1350:	e5933000 	ldr	r3, [r3]
    1354:	e6ef3073 	uxtb	r3, r3
    1358:	e1a01003 	mov	r1, r3
    135c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1360:	ebffff3c 	bl	1058 <putc>
    1364:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1368:	e2833004 	add	r3, r3, #4
    136c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1370:	ea000010 	b	13b8 <printf+0x1f0>
    1374:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1378:	e3530025 	cmp	r3, #37	@ 0x25
    137c:	1a000005 	bne	1398 <printf+0x1d0>
    1380:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1384:	e6ef3073 	uxtb	r3, r3
    1388:	e1a01003 	mov	r1, r3
    138c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1390:	ebffff30 	bl	1058 <putc>
    1394:	ea000007 	b	13b8 <printf+0x1f0>
    1398:	e3a01025 	mov	r1, #37	@ 0x25
    139c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13a0:	ebffff2c 	bl	1058 <putc>
    13a4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13a8:	e6ef3073 	uxtb	r3, r3
    13ac:	e1a01003 	mov	r1, r3
    13b0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13b4:	ebffff27 	bl	1058 <putc>
    13b8:	e3a03000 	mov	r3, #0
    13bc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    13c0:	e51b3010 	ldr	r3, [fp, #-16]
    13c4:	e2833001 	add	r3, r3, #1
    13c8:	e50b3010 	str	r3, [fp, #-16]
    13cc:	e59b2004 	ldr	r2, [fp, #4]
    13d0:	e51b3010 	ldr	r3, [fp, #-16]
    13d4:	e0823003 	add	r3, r2, r3
    13d8:	e5d33000 	ldrb	r3, [r3]
    13dc:	e3530000 	cmp	r3, #0
    13e0:	1affff84 	bne	11f8 <printf+0x30>
    13e4:	e1a00000 	nop			@ (mov r0, r0)
    13e8:	e1a00000 	nop			@ (mov r0, r0)
    13ec:	e24bd004 	sub	sp, fp, #4
    13f0:	e8bd4800 	pop	{fp, lr}
    13f4:	e28dd00c 	add	sp, sp, #12
    13f8:	e12fff1e 	bx	lr
    13fc:	00001a40 	.word	0x00001a40

00001400 <free>:
    1400:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1404:	e28db000 	add	fp, sp, #0
    1408:	e24dd014 	sub	sp, sp, #20
    140c:	e50b0010 	str	r0, [fp, #-16]
    1410:	e51b3010 	ldr	r3, [fp, #-16]
    1414:	e2433008 	sub	r3, r3, #8
    1418:	e50b300c 	str	r3, [fp, #-12]
    141c:	e59f3154 	ldr	r3, [pc, #340]	@ 1578 <free+0x178>
    1420:	e5933000 	ldr	r3, [r3]
    1424:	e50b3008 	str	r3, [fp, #-8]
    1428:	ea000010 	b	1470 <free+0x70>
    142c:	e51b3008 	ldr	r3, [fp, #-8]
    1430:	e5933000 	ldr	r3, [r3]
    1434:	e51b2008 	ldr	r2, [fp, #-8]
    1438:	e1520003 	cmp	r2, r3
    143c:	3a000008 	bcc	1464 <free+0x64>
    1440:	e51b200c 	ldr	r2, [fp, #-12]
    1444:	e51b3008 	ldr	r3, [fp, #-8]
    1448:	e1520003 	cmp	r2, r3
    144c:	8a000010 	bhi	1494 <free+0x94>
    1450:	e51b3008 	ldr	r3, [fp, #-8]
    1454:	e5933000 	ldr	r3, [r3]
    1458:	e51b200c 	ldr	r2, [fp, #-12]
    145c:	e1520003 	cmp	r2, r3
    1460:	3a00000b 	bcc	1494 <free+0x94>
    1464:	e51b3008 	ldr	r3, [fp, #-8]
    1468:	e5933000 	ldr	r3, [r3]
    146c:	e50b3008 	str	r3, [fp, #-8]
    1470:	e51b200c 	ldr	r2, [fp, #-12]
    1474:	e51b3008 	ldr	r3, [fp, #-8]
    1478:	e1520003 	cmp	r2, r3
    147c:	9affffea 	bls	142c <free+0x2c>
    1480:	e51b3008 	ldr	r3, [fp, #-8]
    1484:	e5933000 	ldr	r3, [r3]
    1488:	e51b200c 	ldr	r2, [fp, #-12]
    148c:	e1520003 	cmp	r2, r3
    1490:	2affffe5 	bcs	142c <free+0x2c>
    1494:	e51b300c 	ldr	r3, [fp, #-12]
    1498:	e5933004 	ldr	r3, [r3, #4]
    149c:	e1a03183 	lsl	r3, r3, #3
    14a0:	e51b200c 	ldr	r2, [fp, #-12]
    14a4:	e0822003 	add	r2, r2, r3
    14a8:	e51b3008 	ldr	r3, [fp, #-8]
    14ac:	e5933000 	ldr	r3, [r3]
    14b0:	e1520003 	cmp	r2, r3
    14b4:	1a00000d 	bne	14f0 <free+0xf0>
    14b8:	e51b300c 	ldr	r3, [fp, #-12]
    14bc:	e5932004 	ldr	r2, [r3, #4]
    14c0:	e51b3008 	ldr	r3, [fp, #-8]
    14c4:	e5933000 	ldr	r3, [r3]
    14c8:	e5933004 	ldr	r3, [r3, #4]
    14cc:	e0822003 	add	r2, r2, r3
    14d0:	e51b300c 	ldr	r3, [fp, #-12]
    14d4:	e5832004 	str	r2, [r3, #4]
    14d8:	e51b3008 	ldr	r3, [fp, #-8]
    14dc:	e5933000 	ldr	r3, [r3]
    14e0:	e5932000 	ldr	r2, [r3]
    14e4:	e51b300c 	ldr	r3, [fp, #-12]
    14e8:	e5832000 	str	r2, [r3]
    14ec:	ea000003 	b	1500 <free+0x100>
    14f0:	e51b3008 	ldr	r3, [fp, #-8]
    14f4:	e5932000 	ldr	r2, [r3]
    14f8:	e51b300c 	ldr	r3, [fp, #-12]
    14fc:	e5832000 	str	r2, [r3]
    1500:	e51b3008 	ldr	r3, [fp, #-8]
    1504:	e5933004 	ldr	r3, [r3, #4]
    1508:	e1a03183 	lsl	r3, r3, #3
    150c:	e51b2008 	ldr	r2, [fp, #-8]
    1510:	e0823003 	add	r3, r2, r3
    1514:	e51b200c 	ldr	r2, [fp, #-12]
    1518:	e1520003 	cmp	r2, r3
    151c:	1a00000b 	bne	1550 <free+0x150>
    1520:	e51b3008 	ldr	r3, [fp, #-8]
    1524:	e5932004 	ldr	r2, [r3, #4]
    1528:	e51b300c 	ldr	r3, [fp, #-12]
    152c:	e5933004 	ldr	r3, [r3, #4]
    1530:	e0822003 	add	r2, r2, r3
    1534:	e51b3008 	ldr	r3, [fp, #-8]
    1538:	e5832004 	str	r2, [r3, #4]
    153c:	e51b300c 	ldr	r3, [fp, #-12]
    1540:	e5932000 	ldr	r2, [r3]
    1544:	e51b3008 	ldr	r3, [fp, #-8]
    1548:	e5832000 	str	r2, [r3]
    154c:	ea000002 	b	155c <free+0x15c>
    1550:	e51b3008 	ldr	r3, [fp, #-8]
    1554:	e51b200c 	ldr	r2, [fp, #-12]
    1558:	e5832000 	str	r2, [r3]
    155c:	e59f2014 	ldr	r2, [pc, #20]	@ 1578 <free+0x178>
    1560:	e51b3008 	ldr	r3, [fp, #-8]
    1564:	e5823000 	str	r3, [r2]
    1568:	e1a00000 	nop			@ (mov r0, r0)
    156c:	e28bd000 	add	sp, fp, #0
    1570:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1574:	e12fff1e 	bx	lr
    1578:	00001a64 	.word	0x00001a64

0000157c <morecore>:
    157c:	e92d4800 	push	{fp, lr}
    1580:	e28db004 	add	fp, sp, #4
    1584:	e24dd010 	sub	sp, sp, #16
    1588:	e50b0010 	str	r0, [fp, #-16]
    158c:	e51b3010 	ldr	r3, [fp, #-16]
    1590:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1594:	2a000001 	bcs	15a0 <morecore+0x24>
    1598:	e3a03a01 	mov	r3, #4096	@ 0x1000
    159c:	e50b3010 	str	r3, [fp, #-16]
    15a0:	e51b3010 	ldr	r3, [fp, #-16]
    15a4:	e1a03183 	lsl	r3, r3, #3
    15a8:	e1a00003 	mov	r0, r3
    15ac:	ebfffe07 	bl	dd0 <sbrk>
    15b0:	e50b0008 	str	r0, [fp, #-8]
    15b4:	e51b3008 	ldr	r3, [fp, #-8]
    15b8:	e3730001 	cmn	r3, #1
    15bc:	1a000001 	bne	15c8 <morecore+0x4c>
    15c0:	e3a03000 	mov	r3, #0
    15c4:	ea00000a 	b	15f4 <morecore+0x78>
    15c8:	e51b3008 	ldr	r3, [fp, #-8]
    15cc:	e50b300c 	str	r3, [fp, #-12]
    15d0:	e51b300c 	ldr	r3, [fp, #-12]
    15d4:	e51b2010 	ldr	r2, [fp, #-16]
    15d8:	e5832004 	str	r2, [r3, #4]
    15dc:	e51b300c 	ldr	r3, [fp, #-12]
    15e0:	e2833008 	add	r3, r3, #8
    15e4:	e1a00003 	mov	r0, r3
    15e8:	ebffff84 	bl	1400 <free>
    15ec:	e59f300c 	ldr	r3, [pc, #12]	@ 1600 <morecore+0x84>
    15f0:	e5933000 	ldr	r3, [r3]
    15f4:	e1a00003 	mov	r0, r3
    15f8:	e24bd004 	sub	sp, fp, #4
    15fc:	e8bd8800 	pop	{fp, pc}
    1600:	00001a64 	.word	0x00001a64

00001604 <malloc>:
    1604:	e92d4800 	push	{fp, lr}
    1608:	e28db004 	add	fp, sp, #4
    160c:	e24dd018 	sub	sp, sp, #24
    1610:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1614:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1618:	e2833007 	add	r3, r3, #7
    161c:	e1a031a3 	lsr	r3, r3, #3
    1620:	e2833001 	add	r3, r3, #1
    1624:	e50b3010 	str	r3, [fp, #-16]
    1628:	e59f3134 	ldr	r3, [pc, #308]	@ 1764 <malloc+0x160>
    162c:	e5933000 	ldr	r3, [r3]
    1630:	e50b300c 	str	r3, [fp, #-12]
    1634:	e51b300c 	ldr	r3, [fp, #-12]
    1638:	e3530000 	cmp	r3, #0
    163c:	1a00000b 	bne	1670 <malloc+0x6c>
    1640:	e59f3120 	ldr	r3, [pc, #288]	@ 1768 <malloc+0x164>
    1644:	e50b300c 	str	r3, [fp, #-12]
    1648:	e59f2114 	ldr	r2, [pc, #276]	@ 1764 <malloc+0x160>
    164c:	e51b300c 	ldr	r3, [fp, #-12]
    1650:	e5823000 	str	r3, [r2]
    1654:	e59f3108 	ldr	r3, [pc, #264]	@ 1764 <malloc+0x160>
    1658:	e5933000 	ldr	r3, [r3]
    165c:	e59f2104 	ldr	r2, [pc, #260]	@ 1768 <malloc+0x164>
    1660:	e5823000 	str	r3, [r2]
    1664:	e59f30fc 	ldr	r3, [pc, #252]	@ 1768 <malloc+0x164>
    1668:	e3a02000 	mov	r2, #0
    166c:	e5832004 	str	r2, [r3, #4]
    1670:	e51b300c 	ldr	r3, [fp, #-12]
    1674:	e5933000 	ldr	r3, [r3]
    1678:	e50b3008 	str	r3, [fp, #-8]
    167c:	e51b3008 	ldr	r3, [fp, #-8]
    1680:	e5933004 	ldr	r3, [r3, #4]
    1684:	e51b2010 	ldr	r2, [fp, #-16]
    1688:	e1520003 	cmp	r2, r3
    168c:	8a00001e 	bhi	170c <malloc+0x108>
    1690:	e51b3008 	ldr	r3, [fp, #-8]
    1694:	e5933004 	ldr	r3, [r3, #4]
    1698:	e51b2010 	ldr	r2, [fp, #-16]
    169c:	e1520003 	cmp	r2, r3
    16a0:	1a000004 	bne	16b8 <malloc+0xb4>
    16a4:	e51b3008 	ldr	r3, [fp, #-8]
    16a8:	e5932000 	ldr	r2, [r3]
    16ac:	e51b300c 	ldr	r3, [fp, #-12]
    16b0:	e5832000 	str	r2, [r3]
    16b4:	ea00000e 	b	16f4 <malloc+0xf0>
    16b8:	e51b3008 	ldr	r3, [fp, #-8]
    16bc:	e5932004 	ldr	r2, [r3, #4]
    16c0:	e51b3010 	ldr	r3, [fp, #-16]
    16c4:	e0422003 	sub	r2, r2, r3
    16c8:	e51b3008 	ldr	r3, [fp, #-8]
    16cc:	e5832004 	str	r2, [r3, #4]
    16d0:	e51b3008 	ldr	r3, [fp, #-8]
    16d4:	e5933004 	ldr	r3, [r3, #4]
    16d8:	e1a03183 	lsl	r3, r3, #3
    16dc:	e51b2008 	ldr	r2, [fp, #-8]
    16e0:	e0823003 	add	r3, r2, r3
    16e4:	e50b3008 	str	r3, [fp, #-8]
    16e8:	e51b3008 	ldr	r3, [fp, #-8]
    16ec:	e51b2010 	ldr	r2, [fp, #-16]
    16f0:	e5832004 	str	r2, [r3, #4]
    16f4:	e59f2068 	ldr	r2, [pc, #104]	@ 1764 <malloc+0x160>
    16f8:	e51b300c 	ldr	r3, [fp, #-12]
    16fc:	e5823000 	str	r3, [r2]
    1700:	e51b3008 	ldr	r3, [fp, #-8]
    1704:	e2833008 	add	r3, r3, #8
    1708:	ea000012 	b	1758 <malloc+0x154>
    170c:	e59f3050 	ldr	r3, [pc, #80]	@ 1764 <malloc+0x160>
    1710:	e5933000 	ldr	r3, [r3]
    1714:	e51b2008 	ldr	r2, [fp, #-8]
    1718:	e1520003 	cmp	r2, r3
    171c:	1a000007 	bne	1740 <malloc+0x13c>
    1720:	e51b0010 	ldr	r0, [fp, #-16]
    1724:	ebffff94 	bl	157c <morecore>
    1728:	e50b0008 	str	r0, [fp, #-8]
    172c:	e51b3008 	ldr	r3, [fp, #-8]
    1730:	e3530000 	cmp	r3, #0
    1734:	1a000001 	bne	1740 <malloc+0x13c>
    1738:	e3a03000 	mov	r3, #0
    173c:	ea000005 	b	1758 <malloc+0x154>
    1740:	e51b3008 	ldr	r3, [fp, #-8]
    1744:	e50b300c 	str	r3, [fp, #-12]
    1748:	e51b3008 	ldr	r3, [fp, #-8]
    174c:	e5933000 	ldr	r3, [r3]
    1750:	e50b3008 	str	r3, [fp, #-8]
    1754:	eaffffc8 	b	167c <malloc+0x78>
    1758:	e1a00003 	mov	r0, r3
    175c:	e24bd004 	sub	sp, fp, #4
    1760:	e8bd8800 	pop	{fp, pc}
    1764:	00001a64 	.word	0x00001a64
    1768:	00001a5c 	.word	0x00001a5c

0000176c <__udivsi3>:
    176c:	e2512001 	subs	r2, r1, #1
    1770:	012fff1e 	bxeq	lr
    1774:	3a000036 	bcc	1854 <__udivsi3+0xe8>
    1778:	e1500001 	cmp	r0, r1
    177c:	9a000022 	bls	180c <__udivsi3+0xa0>
    1780:	e1110002 	tst	r1, r2
    1784:	0a000023 	beq	1818 <__udivsi3+0xac>
    1788:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    178c:	01a01181 	lsleq	r1, r1, #3
    1790:	03a03008 	moveq	r3, #8
    1794:	13a03001 	movne	r3, #1
    1798:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    179c:	31510000 	cmpcc	r1, r0
    17a0:	31a01201 	lslcc	r1, r1, #4
    17a4:	31a03203 	lslcc	r3, r3, #4
    17a8:	3afffffa 	bcc	1798 <__udivsi3+0x2c>
    17ac:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    17b0:	31510000 	cmpcc	r1, r0
    17b4:	31a01081 	lslcc	r1, r1, #1
    17b8:	31a03083 	lslcc	r3, r3, #1
    17bc:	3afffffa 	bcc	17ac <__udivsi3+0x40>
    17c0:	e3a02000 	mov	r2, #0
    17c4:	e1500001 	cmp	r0, r1
    17c8:	20400001 	subcs	r0, r0, r1
    17cc:	21822003 	orrcs	r2, r2, r3
    17d0:	e15000a1 	cmp	r0, r1, lsr #1
    17d4:	204000a1 	subcs	r0, r0, r1, lsr #1
    17d8:	218220a3 	orrcs	r2, r2, r3, lsr #1
    17dc:	e1500121 	cmp	r0, r1, lsr #2
    17e0:	20400121 	subcs	r0, r0, r1, lsr #2
    17e4:	21822123 	orrcs	r2, r2, r3, lsr #2
    17e8:	e15001a1 	cmp	r0, r1, lsr #3
    17ec:	204001a1 	subcs	r0, r0, r1, lsr #3
    17f0:	218221a3 	orrcs	r2, r2, r3, lsr #3
    17f4:	e3500000 	cmp	r0, #0
    17f8:	11b03223 	lsrsne	r3, r3, #4
    17fc:	11a01221 	lsrne	r1, r1, #4
    1800:	1affffef 	bne	17c4 <__udivsi3+0x58>
    1804:	e1a00002 	mov	r0, r2
    1808:	e12fff1e 	bx	lr
    180c:	03a00001 	moveq	r0, #1
    1810:	13a00000 	movne	r0, #0
    1814:	e12fff1e 	bx	lr
    1818:	e3510801 	cmp	r1, #65536	@ 0x10000
    181c:	21a01821 	lsrcs	r1, r1, #16
    1820:	23a02010 	movcs	r2, #16
    1824:	33a02000 	movcc	r2, #0
    1828:	e3510c01 	cmp	r1, #256	@ 0x100
    182c:	21a01421 	lsrcs	r1, r1, #8
    1830:	22822008 	addcs	r2, r2, #8
    1834:	e3510010 	cmp	r1, #16
    1838:	21a01221 	lsrcs	r1, r1, #4
    183c:	22822004 	addcs	r2, r2, #4
    1840:	e3510004 	cmp	r1, #4
    1844:	82822003 	addhi	r2, r2, #3
    1848:	908220a1 	addls	r2, r2, r1, lsr #1
    184c:	e1a00230 	lsr	r0, r0, r2
    1850:	e12fff1e 	bx	lr
    1854:	e3500000 	cmp	r0, #0
    1858:	13e00000 	mvnne	r0, #0
    185c:	ea000007 	b	1880 <__aeabi_idiv0>

00001860 <__aeabi_uidivmod>:
    1860:	e3510000 	cmp	r1, #0
    1864:	0afffffa 	beq	1854 <__udivsi3+0xe8>
    1868:	e92d4003 	push	{r0, r1, lr}
    186c:	ebffffbe 	bl	176c <__udivsi3>
    1870:	e8bd4006 	pop	{r1, r2, lr}
    1874:	e0030092 	mul	r3, r2, r0
    1878:	e0411003 	sub	r1, r1, r3
    187c:	e12fff1e 	bx	lr

00001880 <__aeabi_idiv0>:
    1880:	e12fff1e 	bx	lr
