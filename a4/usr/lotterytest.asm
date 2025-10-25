
_lotterytest:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dde52 	sub	sp, sp, #1312	@ 0x520
       c:	e59f1374 	ldr	r1, [pc, #884]	@ 388 <main+0x388>
      10:	e3a00001 	mov	r0, #1
      14:	eb0004a4 	bl	12ac <printf>
      18:	e59f136c 	ldr	r1, [pc, #876]	@ 38c <main+0x38c>
      1c:	e3a00001 	mov	r0, #1
      20:	eb0004a1 	bl	12ac <printf>
      24:	e3a0002a 	mov	r0, #42	@ 0x2a
      28:	eb0003ce 	bl	f68 <srand>
      2c:	eb0002fe 	bl	c2c <fork>
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
      80:	eb0002f2 	bl	c50 <exit>
      84:	eb0002e8 	bl	c2c <fork>
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
      d8:	eb0002dc 	bl	c50 <exit>
      dc:	e3a01001 	mov	r1, #1
      e0:	e51b000c 	ldr	r0, [fp, #-12]
      e4:	eb000396 	bl	f44 <settickets>
      e8:	e1a03000 	mov	r3, r0
      ec:	e3530000 	cmp	r3, #0
      f0:	aa000002 	bge	100 <main+0x100>
      f4:	e59f1298 	ldr	r1, [pc, #664]	@ 394 <main+0x394>
      f8:	e3a00001 	mov	r0, #1
      fc:	eb00046a 	bl	12ac <printf>
     100:	e3a01004 	mov	r1, #4
     104:	e51b0010 	ldr	r0, [fp, #-16]
     108:	eb00038d 	bl	f44 <settickets>
     10c:	e1a03000 	mov	r3, r0
     110:	e3530000 	cmp	r3, #0
     114:	aa000002 	bge	124 <main+0x124>
     118:	e59f1278 	ldr	r1, [pc, #632]	@ 398 <main+0x398>
     11c:	e3a00001 	mov	r0, #1
     120:	eb000461 	bl	12ac <printf>
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e51b200c 	ldr	r2, [fp, #-12]
     12c:	e59f1268 	ldr	r1, [pc, #616]	@ 39c <main+0x39c>
     130:	e3a00001 	mov	r0, #1
     134:	eb00045c 	bl	12ac <printf>
     138:	e59f1260 	ldr	r1, [pc, #608]	@ 3a0 <main+0x3a0>
     13c:	e3a00001 	mov	r0, #1
     140:	eb000459 	bl	12ac <printf>
     144:	e3a00032 	mov	r0, #50	@ 0x32
     148:	eb000362 	bl	ed8 <sleep>
     14c:	e24b3e51 	sub	r3, fp, #1296	@ 0x510
     150:	e2433004 	sub	r3, r3, #4
     154:	e2433004 	sub	r3, r3, #4
     158:	e1a00003 	mov	r0, r3
     15c:	eb00038a 	bl	f8c <getpinfo>
     160:	e1a03000 	mov	r3, r0
     164:	e3530000 	cmp	r3, #0
     168:	1a000046 	bne	288 <main+0x288>
     16c:	e59f1230 	ldr	r1, [pc, #560]	@ 3a4 <main+0x3a4>
     170:	e3a00001 	mov	r0, #1
     174:	eb00044c 	bl	12ac <printf>
     178:	e59f1228 	ldr	r1, [pc, #552]	@ 3a8 <main+0x3a8>
     17c:	e3a00001 	mov	r0, #1
     180:	eb000449 	bl	12ac <printf>
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
     26c:	eb00040e 	bl	12ac <printf>
     270:	e51b3008 	ldr	r3, [fp, #-8]
     274:	e2833001 	add	r3, r3, #1
     278:	e50b3008 	str	r3, [fp, #-8]
     27c:	e51b3008 	ldr	r3, [fp, #-8]
     280:	e353003f 	cmp	r3, #63	@ 0x3f
     284:	daffffc1 	ble	190 <main+0x190>
     288:	eb000279 	bl	c74 <wait>
     28c:	eb000278 	bl	c74 <wait>
     290:	e59f1118 	ldr	r1, [pc, #280]	@ 3b0 <main+0x3b0>
     294:	e3a00001 	mov	r0, #1
     298:	eb000403 	bl	12ac <printf>
     29c:	eb000262 	bl	c2c <fork>
     2a0:	e50b000c 	str	r0, [fp, #-12]
     2a4:	e51b300c 	ldr	r3, [fp, #-12]
     2a8:	e3530000 	cmp	r3, #0
     2ac:	1a000008 	bne	2d4 <main+0x2d4>
     2b0:	e59f10fc 	ldr	r1, [pc, #252]	@ 3b4 <main+0x3b4>
     2b4:	e3a00001 	mov	r0, #1
     2b8:	eb0003fb 	bl	12ac <printf>
     2bc:	e3a0000a 	mov	r0, #10
     2c0:	eb000304 	bl	ed8 <sleep>
     2c4:	e59f10ec 	ldr	r1, [pc, #236]	@ 3b8 <main+0x3b8>
     2c8:	e3a00001 	mov	r0, #1
     2cc:	eb0003f6 	bl	12ac <printf>
     2d0:	eb00025e 	bl	c50 <exit>
     2d4:	e3a00005 	mov	r0, #5
     2d8:	eb0002fe 	bl	ed8 <sleep>
     2dc:	e24b3e51 	sub	r3, fp, #1296	@ 0x510
     2e0:	e2433004 	sub	r3, r3, #4
     2e4:	e2433004 	sub	r3, r3, #4
     2e8:	e1a00003 	mov	r0, r3
     2ec:	eb000326 	bl	f8c <getpinfo>
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
     354:	eb0003d4 	bl	12ac <printf>
     358:	ea000005 	b	374 <main+0x374>
     35c:	e51b3008 	ldr	r3, [fp, #-8]
     360:	e2833001 	add	r3, r3, #1
     364:	e50b3008 	str	r3, [fp, #-8]
     368:	e51b3008 	ldr	r3, [fp, #-8]
     36c:	e353003f 	cmp	r3, #63	@ 0x3f
     370:	daffffe4 	ble	308 <main+0x308>
     374:	eb00023e 	bl	c74 <wait>
     378:	e59f1040 	ldr	r1, [pc, #64]	@ 3c0 <main+0x3c0>
     37c:	e3a00001 	mov	r0, #1
     380:	eb0003c9 	bl	12ac <printf>
     384:	eb000231 	bl	c50 <exit>
     388:	00001968 	.word	0x00001968
     38c:	00001980 	.word	0x00001980
     390:	000186a0 	.word	0x000186a0
     394:	00001998 	.word	0x00001998
     398:	000019b8 	.word	0x000019b8
     39c:	000019d8 	.word	0x000019d8
     3a0:	00001a08 	.word	0x00001a08
     3a4:	00001a34 	.word	0x00001a34
     3a8:	00001a50 	.word	0x00001a50
     3ac:	00001a70 	.word	0x00001a70
     3b0:	00001a80 	.word	0x00001a80
     3b4:	00001aa8 	.word	0x00001aa8
     3b8:	00001ac8 	.word	0x00001ac8
     3bc:	00001ad8 	.word	0x00001ad8
     3c0:	00001b10 	.word	0x00001b10

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
     6b8:	eb00017f 	bl	cbc <read>
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
     760:	eb000182 	bl	d70 <open>
     764:	e50b0008 	str	r0, [fp, #-8]
     768:	e51b3008 	ldr	r3, [fp, #-8]
     76c:	e3530000 	cmp	r3, #0
     770:	aa000001 	bge	77c <stat+0x38>
     774:	e3e03000 	mvn	r3, #0
     778:	ea000006 	b	798 <stat+0x54>
     77c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     780:	e51b0008 	ldr	r0, [fp, #-8]
     784:	eb000194 	bl	ddc <fstat>
     788:	e50b000c 	str	r0, [fp, #-12]
     78c:	e51b0008 	ldr	r0, [fp, #-8]
     790:	eb00015b 	bl	d04 <close>
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

000008ec <xchg>:
     8ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     8f0:	e28db000 	add	fp, sp, #0
     8f4:	e24dd00c 	sub	sp, sp, #12
     8f8:	e50b0008 	str	r0, [fp, #-8]
     8fc:	e50b100c 	str	r1, [fp, #-12]
     900:	e51b200c 	ldr	r2, [fp, #-12]
     904:	e51b3008 	ldr	r3, [fp, #-8]
     908:	e1931f9f 	ldrex	r1, [r3]
     90c:	e1830f92 	strex	r0, r2, [r3]
     910:	e3500000 	cmp	r0, #0
     914:	1afffffb 	bne	908 <xchg+0x1c>
     918:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     91c:	e1a03001 	mov	r3, r1
     920:	e1a00003 	mov	r0, r3
     924:	e28bd000 	add	sp, fp, #0
     928:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     92c:	e12fff1e 	bx	lr

00000930 <acquireLock>:
     930:	e92d4800 	push	{fp, lr}
     934:	e28db004 	add	fp, sp, #4
     938:	e24dd008 	sub	sp, sp, #8
     93c:	e50b0008 	str	r0, [fp, #-8]
     940:	e51b3008 	ldr	r3, [fp, #-8]
     944:	e5933004 	ldr	r3, [r3, #4]
     948:	e3530000 	cmp	r3, #0
     94c:	0a000008 	beq	974 <acquireLock+0x44>
     950:	e1a00000 	nop			@ (mov r0, r0)
     954:	e51b3008 	ldr	r3, [fp, #-8]
     958:	e3a01001 	mov	r1, #1
     95c:	e1a00003 	mov	r0, r3
     960:	ebffffe1 	bl	8ec <xchg>
     964:	e1a03000 	mov	r3, r0
     968:	e3530000 	cmp	r3, #0
     96c:	1afffff8 	bne	954 <acquireLock+0x24>
     970:	ea000000 	b	978 <acquireLock+0x48>
     974:	e1a00000 	nop			@ (mov r0, r0)
     978:	e24bd004 	sub	sp, fp, #4
     97c:	e8bd8800 	pop	{fp, pc}

00000980 <releaseLock>:
     980:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     984:	e28db000 	add	fp, sp, #0
     988:	e24dd00c 	sub	sp, sp, #12
     98c:	e50b0008 	str	r0, [fp, #-8]
     990:	e51b3008 	ldr	r3, [fp, #-8]
     994:	e5933004 	ldr	r3, [r3, #4]
     998:	e3530000 	cmp	r3, #0
     99c:	0a000007 	beq	9c0 <releaseLock+0x40>
     9a0:	e51b3008 	ldr	r3, [fp, #-8]
     9a4:	e5933000 	ldr	r3, [r3]
     9a8:	e3530001 	cmp	r3, #1
     9ac:	1a000005 	bne	9c8 <releaseLock+0x48>
     9b0:	e51b3008 	ldr	r3, [fp, #-8]
     9b4:	e3a02000 	mov	r2, #0
     9b8:	e5832000 	str	r2, [r3]
     9bc:	ea000002 	b	9cc <releaseLock+0x4c>
     9c0:	e1a00000 	nop			@ (mov r0, r0)
     9c4:	ea000000 	b	9cc <releaseLock+0x4c>
     9c8:	e1a00000 	nop			@ (mov r0, r0)
     9cc:	e28bd000 	add	sp, fp, #0
     9d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     9d4:	e12fff1e 	bx	lr

000009d8 <initiateCondVar>:
     9d8:	e92d4800 	push	{fp, lr}
     9dc:	e28db004 	add	fp, sp, #4
     9e0:	e24dd008 	sub	sp, sp, #8
     9e4:	e50b0008 	str	r0, [fp, #-8]
     9e8:	eb0001b8 	bl	10d0 <getChannel>
     9ec:	e1a02000 	mov	r2, r0
     9f0:	e51b3008 	ldr	r3, [fp, #-8]
     9f4:	e5832000 	str	r2, [r3]
     9f8:	e51b3008 	ldr	r3, [fp, #-8]
     9fc:	e3a02001 	mov	r2, #1
     a00:	e5832004 	str	r2, [r3, #4]
     a04:	e1a00000 	nop			@ (mov r0, r0)
     a08:	e24bd004 	sub	sp, fp, #4
     a0c:	e8bd8800 	pop	{fp, pc}

00000a10 <condWait>:
     a10:	e92d4800 	push	{fp, lr}
     a14:	e28db004 	add	fp, sp, #4
     a18:	e24dd008 	sub	sp, sp, #8
     a1c:	e50b0008 	str	r0, [fp, #-8]
     a20:	e50b100c 	str	r1, [fp, #-12]
     a24:	e51b3008 	ldr	r3, [fp, #-8]
     a28:	e5933004 	ldr	r3, [r3, #4]
     a2c:	e3530000 	cmp	r3, #0
     a30:	0a00000c 	beq	a68 <condWait+0x58>
     a34:	e51b300c 	ldr	r3, [fp, #-12]
     a38:	e5933004 	ldr	r3, [r3, #4]
     a3c:	e3530000 	cmp	r3, #0
     a40:	0a000008 	beq	a68 <condWait+0x58>
     a44:	e51b000c 	ldr	r0, [fp, #-12]
     a48:	ebffffcc 	bl	980 <releaseLock>
     a4c:	e51b3008 	ldr	r3, [fp, #-8]
     a50:	e5933000 	ldr	r3, [r3]
     a54:	e1a00003 	mov	r0, r3
     a58:	eb000193 	bl	10ac <sleepChan>
     a5c:	e51b000c 	ldr	r0, [fp, #-12]
     a60:	ebffffb2 	bl	930 <acquireLock>
     a64:	ea000000 	b	a6c <condWait+0x5c>
     a68:	e1a00000 	nop			@ (mov r0, r0)
     a6c:	e24bd004 	sub	sp, fp, #4
     a70:	e8bd8800 	pop	{fp, pc}

00000a74 <broadcast>:
     a74:	e92d4800 	push	{fp, lr}
     a78:	e28db004 	add	fp, sp, #4
     a7c:	e24dd008 	sub	sp, sp, #8
     a80:	e50b0008 	str	r0, [fp, #-8]
     a84:	e51b3008 	ldr	r3, [fp, #-8]
     a88:	e5933004 	ldr	r3, [r3, #4]
     a8c:	e3530000 	cmp	r3, #0
     a90:	0a000004 	beq	aa8 <broadcast+0x34>
     a94:	e51b3008 	ldr	r3, [fp, #-8]
     a98:	e5933000 	ldr	r3, [r3]
     a9c:	e1a00003 	mov	r0, r3
     aa0:	eb000193 	bl	10f4 <sigChan>
     aa4:	ea000000 	b	aac <broadcast+0x38>
     aa8:	e1a00000 	nop			@ (mov r0, r0)
     aac:	e24bd004 	sub	sp, fp, #4
     ab0:	e8bd8800 	pop	{fp, pc}

00000ab4 <signal>:
     ab4:	e92d4800 	push	{fp, lr}
     ab8:	e28db004 	add	fp, sp, #4
     abc:	e24dd008 	sub	sp, sp, #8
     ac0:	e50b0008 	str	r0, [fp, #-8]
     ac4:	e51b3008 	ldr	r3, [fp, #-8]
     ac8:	e5933004 	ldr	r3, [r3, #4]
     acc:	e3530000 	cmp	r3, #0
     ad0:	0a000004 	beq	ae8 <signal+0x34>
     ad4:	e51b3008 	ldr	r3, [fp, #-8]
     ad8:	e5933000 	ldr	r3, [r3]
     adc:	e1a00003 	mov	r0, r3
     ae0:	eb00018c 	bl	1118 <sigOneChan>
     ae4:	ea000000 	b	aec <signal+0x38>
     ae8:	e1a00000 	nop			@ (mov r0, r0)
     aec:	e24bd004 	sub	sp, fp, #4
     af0:	e8bd8800 	pop	{fp, pc}

00000af4 <semInit>:
     af4:	e92d4800 	push	{fp, lr}
     af8:	e28db004 	add	fp, sp, #4
     afc:	e24dd008 	sub	sp, sp, #8
     b00:	e50b0008 	str	r0, [fp, #-8]
     b04:	e50b100c 	str	r1, [fp, #-12]
     b08:	e51b3008 	ldr	r3, [fp, #-8]
     b0c:	e51b200c 	ldr	r2, [fp, #-12]
     b10:	e5832000 	str	r2, [r3]
     b14:	e51b3008 	ldr	r3, [fp, #-8]
     b18:	e2833004 	add	r3, r3, #4
     b1c:	e1a00003 	mov	r0, r3
     b20:	ebffff63 	bl	8b4 <initiateLock>
     b24:	e51b3008 	ldr	r3, [fp, #-8]
     b28:	e283300c 	add	r3, r3, #12
     b2c:	e1a00003 	mov	r0, r3
     b30:	ebffffa8 	bl	9d8 <initiateCondVar>
     b34:	e51b3008 	ldr	r3, [fp, #-8]
     b38:	e3a02001 	mov	r2, #1
     b3c:	e5832014 	str	r2, [r3, #20]
     b40:	e1a00000 	nop			@ (mov r0, r0)
     b44:	e24bd004 	sub	sp, fp, #4
     b48:	e8bd8800 	pop	{fp, pc}

00000b4c <semUp>:
     b4c:	e92d4800 	push	{fp, lr}
     b50:	e28db004 	add	fp, sp, #4
     b54:	e24dd008 	sub	sp, sp, #8
     b58:	e50b0008 	str	r0, [fp, #-8]
     b5c:	e51b3008 	ldr	r3, [fp, #-8]
     b60:	e2833004 	add	r3, r3, #4
     b64:	e1a00003 	mov	r0, r3
     b68:	ebffff70 	bl	930 <acquireLock>
     b6c:	e51b3008 	ldr	r3, [fp, #-8]
     b70:	e5933000 	ldr	r3, [r3]
     b74:	e2832001 	add	r2, r3, #1
     b78:	e51b3008 	ldr	r3, [fp, #-8]
     b7c:	e5832000 	str	r2, [r3]
     b80:	e51b3008 	ldr	r3, [fp, #-8]
     b84:	e283300c 	add	r3, r3, #12
     b88:	e1a00003 	mov	r0, r3
     b8c:	ebffffc8 	bl	ab4 <signal>
     b90:	e51b3008 	ldr	r3, [fp, #-8]
     b94:	e2833004 	add	r3, r3, #4
     b98:	e1a00003 	mov	r0, r3
     b9c:	ebffff77 	bl	980 <releaseLock>
     ba0:	e1a00000 	nop			@ (mov r0, r0)
     ba4:	e24bd004 	sub	sp, fp, #4
     ba8:	e8bd8800 	pop	{fp, pc}

00000bac <semDown>:
     bac:	e92d4800 	push	{fp, lr}
     bb0:	e28db004 	add	fp, sp, #4
     bb4:	e24dd008 	sub	sp, sp, #8
     bb8:	e50b0008 	str	r0, [fp, #-8]
     bbc:	e51b3008 	ldr	r3, [fp, #-8]
     bc0:	e2833004 	add	r3, r3, #4
     bc4:	e1a00003 	mov	r0, r3
     bc8:	ebffff58 	bl	930 <acquireLock>
     bcc:	ea000006 	b	bec <semDown+0x40>
     bd0:	e51b3008 	ldr	r3, [fp, #-8]
     bd4:	e283200c 	add	r2, r3, #12
     bd8:	e51b3008 	ldr	r3, [fp, #-8]
     bdc:	e2833004 	add	r3, r3, #4
     be0:	e1a01003 	mov	r1, r3
     be4:	e1a00002 	mov	r0, r2
     be8:	ebffff88 	bl	a10 <condWait>
     bec:	e51b3008 	ldr	r3, [fp, #-8]
     bf0:	e5933000 	ldr	r3, [r3]
     bf4:	e3530000 	cmp	r3, #0
     bf8:	dafffff4 	ble	bd0 <semDown+0x24>
     bfc:	e51b3008 	ldr	r3, [fp, #-8]
     c00:	e5933000 	ldr	r3, [r3]
     c04:	e2432001 	sub	r2, r3, #1
     c08:	e51b3008 	ldr	r3, [fp, #-8]
     c0c:	e5832000 	str	r2, [r3]
     c10:	e51b3008 	ldr	r3, [fp, #-8]
     c14:	e2833004 	add	r3, r3, #4
     c18:	e1a00003 	mov	r0, r3
     c1c:	ebffff57 	bl	980 <releaseLock>
     c20:	e1a00000 	nop			@ (mov r0, r0)
     c24:	e24bd004 	sub	sp, fp, #4
     c28:	e8bd8800 	pop	{fp, pc}

00000c2c <fork>:
     c2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c30:	e1a04003 	mov	r4, r3
     c34:	e1a03002 	mov	r3, r2
     c38:	e1a02001 	mov	r2, r1
     c3c:	e1a01000 	mov	r1, r0
     c40:	e3a00001 	mov	r0, #1
     c44:	ef000000 	svc	0x00000000
     c48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c4c:	e12fff1e 	bx	lr

00000c50 <exit>:
     c50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c54:	e1a04003 	mov	r4, r3
     c58:	e1a03002 	mov	r3, r2
     c5c:	e1a02001 	mov	r2, r1
     c60:	e1a01000 	mov	r1, r0
     c64:	e3a00002 	mov	r0, #2
     c68:	ef000000 	svc	0x00000000
     c6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c70:	e12fff1e 	bx	lr

00000c74 <wait>:
     c74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c78:	e1a04003 	mov	r4, r3
     c7c:	e1a03002 	mov	r3, r2
     c80:	e1a02001 	mov	r2, r1
     c84:	e1a01000 	mov	r1, r0
     c88:	e3a00003 	mov	r0, #3
     c8c:	ef000000 	svc	0x00000000
     c90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c94:	e12fff1e 	bx	lr

00000c98 <pipe>:
     c98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c9c:	e1a04003 	mov	r4, r3
     ca0:	e1a03002 	mov	r3, r2
     ca4:	e1a02001 	mov	r2, r1
     ca8:	e1a01000 	mov	r1, r0
     cac:	e3a00004 	mov	r0, #4
     cb0:	ef000000 	svc	0x00000000
     cb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb8:	e12fff1e 	bx	lr

00000cbc <read>:
     cbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc0:	e1a04003 	mov	r4, r3
     cc4:	e1a03002 	mov	r3, r2
     cc8:	e1a02001 	mov	r2, r1
     ccc:	e1a01000 	mov	r1, r0
     cd0:	e3a00005 	mov	r0, #5
     cd4:	ef000000 	svc	0x00000000
     cd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cdc:	e12fff1e 	bx	lr

00000ce0 <write>:
     ce0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce4:	e1a04003 	mov	r4, r3
     ce8:	e1a03002 	mov	r3, r2
     cec:	e1a02001 	mov	r2, r1
     cf0:	e1a01000 	mov	r1, r0
     cf4:	e3a00010 	mov	r0, #16
     cf8:	ef000000 	svc	0x00000000
     cfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d00:	e12fff1e 	bx	lr

00000d04 <close>:
     d04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d08:	e1a04003 	mov	r4, r3
     d0c:	e1a03002 	mov	r3, r2
     d10:	e1a02001 	mov	r2, r1
     d14:	e1a01000 	mov	r1, r0
     d18:	e3a00015 	mov	r0, #21
     d1c:	ef000000 	svc	0x00000000
     d20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d24:	e12fff1e 	bx	lr

00000d28 <kill>:
     d28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d2c:	e1a04003 	mov	r4, r3
     d30:	e1a03002 	mov	r3, r2
     d34:	e1a02001 	mov	r2, r1
     d38:	e1a01000 	mov	r1, r0
     d3c:	e3a00006 	mov	r0, #6
     d40:	ef000000 	svc	0x00000000
     d44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d48:	e12fff1e 	bx	lr

00000d4c <exec>:
     d4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d50:	e1a04003 	mov	r4, r3
     d54:	e1a03002 	mov	r3, r2
     d58:	e1a02001 	mov	r2, r1
     d5c:	e1a01000 	mov	r1, r0
     d60:	e3a00007 	mov	r0, #7
     d64:	ef000000 	svc	0x00000000
     d68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d6c:	e12fff1e 	bx	lr

00000d70 <open>:
     d70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d74:	e1a04003 	mov	r4, r3
     d78:	e1a03002 	mov	r3, r2
     d7c:	e1a02001 	mov	r2, r1
     d80:	e1a01000 	mov	r1, r0
     d84:	e3a0000f 	mov	r0, #15
     d88:	ef000000 	svc	0x00000000
     d8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d90:	e12fff1e 	bx	lr

00000d94 <mknod>:
     d94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d98:	e1a04003 	mov	r4, r3
     d9c:	e1a03002 	mov	r3, r2
     da0:	e1a02001 	mov	r2, r1
     da4:	e1a01000 	mov	r1, r0
     da8:	e3a00011 	mov	r0, #17
     dac:	ef000000 	svc	0x00000000
     db0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     db4:	e12fff1e 	bx	lr

00000db8 <unlink>:
     db8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dbc:	e1a04003 	mov	r4, r3
     dc0:	e1a03002 	mov	r3, r2
     dc4:	e1a02001 	mov	r2, r1
     dc8:	e1a01000 	mov	r1, r0
     dcc:	e3a00012 	mov	r0, #18
     dd0:	ef000000 	svc	0x00000000
     dd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd8:	e12fff1e 	bx	lr

00000ddc <fstat>:
     ddc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     de0:	e1a04003 	mov	r4, r3
     de4:	e1a03002 	mov	r3, r2
     de8:	e1a02001 	mov	r2, r1
     dec:	e1a01000 	mov	r1, r0
     df0:	e3a00008 	mov	r0, #8
     df4:	ef000000 	svc	0x00000000
     df8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dfc:	e12fff1e 	bx	lr

00000e00 <link>:
     e00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e04:	e1a04003 	mov	r4, r3
     e08:	e1a03002 	mov	r3, r2
     e0c:	e1a02001 	mov	r2, r1
     e10:	e1a01000 	mov	r1, r0
     e14:	e3a00013 	mov	r0, #19
     e18:	ef000000 	svc	0x00000000
     e1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e20:	e12fff1e 	bx	lr

00000e24 <mkdir>:
     e24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e28:	e1a04003 	mov	r4, r3
     e2c:	e1a03002 	mov	r3, r2
     e30:	e1a02001 	mov	r2, r1
     e34:	e1a01000 	mov	r1, r0
     e38:	e3a00014 	mov	r0, #20
     e3c:	ef000000 	svc	0x00000000
     e40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e44:	e12fff1e 	bx	lr

00000e48 <chdir>:
     e48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e4c:	e1a04003 	mov	r4, r3
     e50:	e1a03002 	mov	r3, r2
     e54:	e1a02001 	mov	r2, r1
     e58:	e1a01000 	mov	r1, r0
     e5c:	e3a00009 	mov	r0, #9
     e60:	ef000000 	svc	0x00000000
     e64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e68:	e12fff1e 	bx	lr

00000e6c <dup>:
     e6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e70:	e1a04003 	mov	r4, r3
     e74:	e1a03002 	mov	r3, r2
     e78:	e1a02001 	mov	r2, r1
     e7c:	e1a01000 	mov	r1, r0
     e80:	e3a0000a 	mov	r0, #10
     e84:	ef000000 	svc	0x00000000
     e88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e8c:	e12fff1e 	bx	lr

00000e90 <getpid>:
     e90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e94:	e1a04003 	mov	r4, r3
     e98:	e1a03002 	mov	r3, r2
     e9c:	e1a02001 	mov	r2, r1
     ea0:	e1a01000 	mov	r1, r0
     ea4:	e3a0000b 	mov	r0, #11
     ea8:	ef000000 	svc	0x00000000
     eac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eb0:	e12fff1e 	bx	lr

00000eb4 <sbrk>:
     eb4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eb8:	e1a04003 	mov	r4, r3
     ebc:	e1a03002 	mov	r3, r2
     ec0:	e1a02001 	mov	r2, r1
     ec4:	e1a01000 	mov	r1, r0
     ec8:	e3a0000c 	mov	r0, #12
     ecc:	ef000000 	svc	0x00000000
     ed0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ed4:	e12fff1e 	bx	lr

00000ed8 <sleep>:
     ed8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     edc:	e1a04003 	mov	r4, r3
     ee0:	e1a03002 	mov	r3, r2
     ee4:	e1a02001 	mov	r2, r1
     ee8:	e1a01000 	mov	r1, r0
     eec:	e3a0000d 	mov	r0, #13
     ef0:	ef000000 	svc	0x00000000
     ef4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ef8:	e12fff1e 	bx	lr

00000efc <uptime>:
     efc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f00:	e1a04003 	mov	r4, r3
     f04:	e1a03002 	mov	r3, r2
     f08:	e1a02001 	mov	r2, r1
     f0c:	e1a01000 	mov	r1, r0
     f10:	e3a0000e 	mov	r0, #14
     f14:	ef000000 	svc	0x00000000
     f18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f1c:	e12fff1e 	bx	lr

00000f20 <getprocs>:
     f20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f24:	e1a04003 	mov	r4, r3
     f28:	e1a03002 	mov	r3, r2
     f2c:	e1a02001 	mov	r2, r1
     f30:	e1a01000 	mov	r1, r0
     f34:	e3a00016 	mov	r0, #22
     f38:	ef000000 	svc	0x00000000
     f3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f40:	e12fff1e 	bx	lr

00000f44 <settickets>:
     f44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f48:	e1a04003 	mov	r4, r3
     f4c:	e1a03002 	mov	r3, r2
     f50:	e1a02001 	mov	r2, r1
     f54:	e1a01000 	mov	r1, r0
     f58:	e3a00017 	mov	r0, #23
     f5c:	ef000000 	svc	0x00000000
     f60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f64:	e12fff1e 	bx	lr

00000f68 <srand>:
     f68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f6c:	e1a04003 	mov	r4, r3
     f70:	e1a03002 	mov	r3, r2
     f74:	e1a02001 	mov	r2, r1
     f78:	e1a01000 	mov	r1, r0
     f7c:	e3a00018 	mov	r0, #24
     f80:	ef000000 	svc	0x00000000
     f84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f88:	e12fff1e 	bx	lr

00000f8c <getpinfo>:
     f8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f90:	e1a04003 	mov	r4, r3
     f94:	e1a03002 	mov	r3, r2
     f98:	e1a02001 	mov	r2, r1
     f9c:	e1a01000 	mov	r1, r0
     fa0:	e3a00019 	mov	r0, #25
     fa4:	ef000000 	svc	0x00000000
     fa8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fac:	e12fff1e 	bx	lr

00000fb0 <dumppagetable>:
     fb0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fb4:	e1a04003 	mov	r4, r3
     fb8:	e1a03002 	mov	r3, r2
     fbc:	e1a02001 	mov	r2, r1
     fc0:	e1a01000 	mov	r1, r0
     fc4:	e3a0001a 	mov	r0, #26
     fc8:	ef000000 	svc	0x00000000
     fcc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fd0:	e12fff1e 	bx	lr

00000fd4 <thread_create>:
     fd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fd8:	e1a04003 	mov	r4, r3
     fdc:	e1a03002 	mov	r3, r2
     fe0:	e1a02001 	mov	r2, r1
     fe4:	e1a01000 	mov	r1, r0
     fe8:	e3a0001b 	mov	r0, #27
     fec:	ef000000 	svc	0x00000000
     ff0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ff4:	e12fff1e 	bx	lr

00000ff8 <thread_exit>:
     ff8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ffc:	e1a04003 	mov	r4, r3
    1000:	e1a03002 	mov	r3, r2
    1004:	e1a02001 	mov	r2, r1
    1008:	e1a01000 	mov	r1, r0
    100c:	e3a0001c 	mov	r0, #28
    1010:	ef000000 	svc	0x00000000
    1014:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1018:	e12fff1e 	bx	lr

0000101c <thread_join>:
    101c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1020:	e1a04003 	mov	r4, r3
    1024:	e1a03002 	mov	r3, r2
    1028:	e1a02001 	mov	r2, r1
    102c:	e1a01000 	mov	r1, r0
    1030:	e3a0001d 	mov	r0, #29
    1034:	ef000000 	svc	0x00000000
    1038:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    103c:	e12fff1e 	bx	lr

00001040 <waitpid>:
    1040:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1044:	e1a04003 	mov	r4, r3
    1048:	e1a03002 	mov	r3, r2
    104c:	e1a02001 	mov	r2, r1
    1050:	e1a01000 	mov	r1, r0
    1054:	e3a0001e 	mov	r0, #30
    1058:	ef000000 	svc	0x00000000
    105c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1060:	e12fff1e 	bx	lr

00001064 <barrier_init>:
    1064:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1068:	e1a04003 	mov	r4, r3
    106c:	e1a03002 	mov	r3, r2
    1070:	e1a02001 	mov	r2, r1
    1074:	e1a01000 	mov	r1, r0
    1078:	e3a0001f 	mov	r0, #31
    107c:	ef000000 	svc	0x00000000
    1080:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1084:	e12fff1e 	bx	lr

00001088 <barrier_check>:
    1088:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    108c:	e1a04003 	mov	r4, r3
    1090:	e1a03002 	mov	r3, r2
    1094:	e1a02001 	mov	r2, r1
    1098:	e1a01000 	mov	r1, r0
    109c:	e3a00020 	mov	r0, #32
    10a0:	ef000000 	svc	0x00000000
    10a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10a8:	e12fff1e 	bx	lr

000010ac <sleepChan>:
    10ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10b0:	e1a04003 	mov	r4, r3
    10b4:	e1a03002 	mov	r3, r2
    10b8:	e1a02001 	mov	r2, r1
    10bc:	e1a01000 	mov	r1, r0
    10c0:	e3a00024 	mov	r0, #36	@ 0x24
    10c4:	ef000000 	svc	0x00000000
    10c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10cc:	e12fff1e 	bx	lr

000010d0 <getChannel>:
    10d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10d4:	e1a04003 	mov	r4, r3
    10d8:	e1a03002 	mov	r3, r2
    10dc:	e1a02001 	mov	r2, r1
    10e0:	e1a01000 	mov	r1, r0
    10e4:	e3a00025 	mov	r0, #37	@ 0x25
    10e8:	ef000000 	svc	0x00000000
    10ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10f0:	e12fff1e 	bx	lr

000010f4 <sigChan>:
    10f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10f8:	e1a04003 	mov	r4, r3
    10fc:	e1a03002 	mov	r3, r2
    1100:	e1a02001 	mov	r2, r1
    1104:	e1a01000 	mov	r1, r0
    1108:	e3a00026 	mov	r0, #38	@ 0x26
    110c:	ef000000 	svc	0x00000000
    1110:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1114:	e12fff1e 	bx	lr

00001118 <sigOneChan>:
    1118:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    111c:	e1a04003 	mov	r4, r3
    1120:	e1a03002 	mov	r3, r2
    1124:	e1a02001 	mov	r2, r1
    1128:	e1a01000 	mov	r1, r0
    112c:	e3a00027 	mov	r0, #39	@ 0x27
    1130:	ef000000 	svc	0x00000000
    1134:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1138:	e12fff1e 	bx	lr

0000113c <putc>:
    113c:	e92d4800 	push	{fp, lr}
    1140:	e28db004 	add	fp, sp, #4
    1144:	e24dd008 	sub	sp, sp, #8
    1148:	e50b0008 	str	r0, [fp, #-8]
    114c:	e1a03001 	mov	r3, r1
    1150:	e54b3009 	strb	r3, [fp, #-9]
    1154:	e24b3009 	sub	r3, fp, #9
    1158:	e3a02001 	mov	r2, #1
    115c:	e1a01003 	mov	r1, r3
    1160:	e51b0008 	ldr	r0, [fp, #-8]
    1164:	ebfffedd 	bl	ce0 <write>
    1168:	e1a00000 	nop			@ (mov r0, r0)
    116c:	e24bd004 	sub	sp, fp, #4
    1170:	e8bd8800 	pop	{fp, pc}

00001174 <printint>:
    1174:	e92d4800 	push	{fp, lr}
    1178:	e28db004 	add	fp, sp, #4
    117c:	e24dd030 	sub	sp, sp, #48	@ 0x30
    1180:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    1184:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    1188:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    118c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    1190:	e3a03000 	mov	r3, #0
    1194:	e50b300c 	str	r3, [fp, #-12]
    1198:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    119c:	e3530000 	cmp	r3, #0
    11a0:	0a000008 	beq	11c8 <printint+0x54>
    11a4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    11a8:	e3530000 	cmp	r3, #0
    11ac:	aa000005 	bge	11c8 <printint+0x54>
    11b0:	e3a03001 	mov	r3, #1
    11b4:	e50b300c 	str	r3, [fp, #-12]
    11b8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    11bc:	e2633000 	rsb	r3, r3, #0
    11c0:	e50b3010 	str	r3, [fp, #-16]
    11c4:	ea000001 	b	11d0 <printint+0x5c>
    11c8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    11cc:	e50b3010 	str	r3, [fp, #-16]
    11d0:	e3a03000 	mov	r3, #0
    11d4:	e50b3008 	str	r3, [fp, #-8]
    11d8:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    11dc:	e51b3010 	ldr	r3, [fp, #-16]
    11e0:	e1a01002 	mov	r1, r2
    11e4:	e1a00003 	mov	r0, r3
    11e8:	eb0001d5 	bl	1944 <__aeabi_uidivmod>
    11ec:	e1a03001 	mov	r3, r1
    11f0:	e1a01003 	mov	r1, r3
    11f4:	e51b3008 	ldr	r3, [fp, #-8]
    11f8:	e2832001 	add	r2, r3, #1
    11fc:	e50b2008 	str	r2, [fp, #-8]
    1200:	e59f20a0 	ldr	r2, [pc, #160]	@ 12a8 <printint+0x134>
    1204:	e7d22001 	ldrb	r2, [r2, r1]
    1208:	e2433004 	sub	r3, r3, #4
    120c:	e083300b 	add	r3, r3, fp
    1210:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1214:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    1218:	e1a01003 	mov	r1, r3
    121c:	e51b0010 	ldr	r0, [fp, #-16]
    1220:	eb00018a 	bl	1850 <__udivsi3>
    1224:	e1a03000 	mov	r3, r0
    1228:	e50b3010 	str	r3, [fp, #-16]
    122c:	e51b3010 	ldr	r3, [fp, #-16]
    1230:	e3530000 	cmp	r3, #0
    1234:	1affffe7 	bne	11d8 <printint+0x64>
    1238:	e51b300c 	ldr	r3, [fp, #-12]
    123c:	e3530000 	cmp	r3, #0
    1240:	0a00000e 	beq	1280 <printint+0x10c>
    1244:	e51b3008 	ldr	r3, [fp, #-8]
    1248:	e2832001 	add	r2, r3, #1
    124c:	e50b2008 	str	r2, [fp, #-8]
    1250:	e2433004 	sub	r3, r3, #4
    1254:	e083300b 	add	r3, r3, fp
    1258:	e3a0202d 	mov	r2, #45	@ 0x2d
    125c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1260:	ea000006 	b	1280 <printint+0x10c>
    1264:	e24b2020 	sub	r2, fp, #32
    1268:	e51b3008 	ldr	r3, [fp, #-8]
    126c:	e0823003 	add	r3, r2, r3
    1270:	e5d33000 	ldrb	r3, [r3]
    1274:	e1a01003 	mov	r1, r3
    1278:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    127c:	ebffffae 	bl	113c <putc>
    1280:	e51b3008 	ldr	r3, [fp, #-8]
    1284:	e2433001 	sub	r3, r3, #1
    1288:	e50b3008 	str	r3, [fp, #-8]
    128c:	e51b3008 	ldr	r3, [fp, #-8]
    1290:	e3530000 	cmp	r3, #0
    1294:	aafffff2 	bge	1264 <printint+0xf0>
    1298:	e1a00000 	nop			@ (mov r0, r0)
    129c:	e1a00000 	nop			@ (mov r0, r0)
    12a0:	e24bd004 	sub	sp, fp, #4
    12a4:	e8bd8800 	pop	{fp, pc}
    12a8:	00001b2c 	.word	0x00001b2c

000012ac <printf>:
    12ac:	e92d000e 	push	{r1, r2, r3}
    12b0:	e92d4800 	push	{fp, lr}
    12b4:	e28db004 	add	fp, sp, #4
    12b8:	e24dd024 	sub	sp, sp, #36	@ 0x24
    12bc:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    12c0:	e3a03000 	mov	r3, #0
    12c4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    12c8:	e28b3008 	add	r3, fp, #8
    12cc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12d0:	e3a03000 	mov	r3, #0
    12d4:	e50b3010 	str	r3, [fp, #-16]
    12d8:	ea000074 	b	14b0 <printf+0x204>
    12dc:	e59b2004 	ldr	r2, [fp, #4]
    12e0:	e51b3010 	ldr	r3, [fp, #-16]
    12e4:	e0823003 	add	r3, r2, r3
    12e8:	e5d33000 	ldrb	r3, [r3]
    12ec:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    12f0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    12f4:	e3530000 	cmp	r3, #0
    12f8:	1a00000b 	bne	132c <printf+0x80>
    12fc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1300:	e3530025 	cmp	r3, #37	@ 0x25
    1304:	1a000002 	bne	1314 <printf+0x68>
    1308:	e3a03025 	mov	r3, #37	@ 0x25
    130c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1310:	ea000063 	b	14a4 <printf+0x1f8>
    1314:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1318:	e6ef3073 	uxtb	r3, r3
    131c:	e1a01003 	mov	r1, r3
    1320:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1324:	ebffff84 	bl	113c <putc>
    1328:	ea00005d 	b	14a4 <printf+0x1f8>
    132c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1330:	e3530025 	cmp	r3, #37	@ 0x25
    1334:	1a00005a 	bne	14a4 <printf+0x1f8>
    1338:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    133c:	e3530064 	cmp	r3, #100	@ 0x64
    1340:	1a00000a 	bne	1370 <printf+0xc4>
    1344:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1348:	e5933000 	ldr	r3, [r3]
    134c:	e1a01003 	mov	r1, r3
    1350:	e3a03001 	mov	r3, #1
    1354:	e3a0200a 	mov	r2, #10
    1358:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    135c:	ebffff84 	bl	1174 <printint>
    1360:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1364:	e2833004 	add	r3, r3, #4
    1368:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    136c:	ea00004a 	b	149c <printf+0x1f0>
    1370:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1374:	e3530078 	cmp	r3, #120	@ 0x78
    1378:	0a000002 	beq	1388 <printf+0xdc>
    137c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1380:	e3530070 	cmp	r3, #112	@ 0x70
    1384:	1a00000a 	bne	13b4 <printf+0x108>
    1388:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    138c:	e5933000 	ldr	r3, [r3]
    1390:	e1a01003 	mov	r1, r3
    1394:	e3a03000 	mov	r3, #0
    1398:	e3a02010 	mov	r2, #16
    139c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13a0:	ebffff73 	bl	1174 <printint>
    13a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13a8:	e2833004 	add	r3, r3, #4
    13ac:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    13b0:	ea000039 	b	149c <printf+0x1f0>
    13b4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13b8:	e3530073 	cmp	r3, #115	@ 0x73
    13bc:	1a000018 	bne	1424 <printf+0x178>
    13c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13c4:	e5933000 	ldr	r3, [r3]
    13c8:	e50b300c 	str	r3, [fp, #-12]
    13cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13d0:	e2833004 	add	r3, r3, #4
    13d4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    13d8:	e51b300c 	ldr	r3, [fp, #-12]
    13dc:	e3530000 	cmp	r3, #0
    13e0:	1a00000a 	bne	1410 <printf+0x164>
    13e4:	e59f30f4 	ldr	r3, [pc, #244]	@ 14e0 <printf+0x234>
    13e8:	e50b300c 	str	r3, [fp, #-12]
    13ec:	ea000007 	b	1410 <printf+0x164>
    13f0:	e51b300c 	ldr	r3, [fp, #-12]
    13f4:	e5d33000 	ldrb	r3, [r3]
    13f8:	e1a01003 	mov	r1, r3
    13fc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1400:	ebffff4d 	bl	113c <putc>
    1404:	e51b300c 	ldr	r3, [fp, #-12]
    1408:	e2833001 	add	r3, r3, #1
    140c:	e50b300c 	str	r3, [fp, #-12]
    1410:	e51b300c 	ldr	r3, [fp, #-12]
    1414:	e5d33000 	ldrb	r3, [r3]
    1418:	e3530000 	cmp	r3, #0
    141c:	1afffff3 	bne	13f0 <printf+0x144>
    1420:	ea00001d 	b	149c <printf+0x1f0>
    1424:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1428:	e3530063 	cmp	r3, #99	@ 0x63
    142c:	1a000009 	bne	1458 <printf+0x1ac>
    1430:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1434:	e5933000 	ldr	r3, [r3]
    1438:	e6ef3073 	uxtb	r3, r3
    143c:	e1a01003 	mov	r1, r3
    1440:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1444:	ebffff3c 	bl	113c <putc>
    1448:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    144c:	e2833004 	add	r3, r3, #4
    1450:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1454:	ea000010 	b	149c <printf+0x1f0>
    1458:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    145c:	e3530025 	cmp	r3, #37	@ 0x25
    1460:	1a000005 	bne	147c <printf+0x1d0>
    1464:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1468:	e6ef3073 	uxtb	r3, r3
    146c:	e1a01003 	mov	r1, r3
    1470:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1474:	ebffff30 	bl	113c <putc>
    1478:	ea000007 	b	149c <printf+0x1f0>
    147c:	e3a01025 	mov	r1, #37	@ 0x25
    1480:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1484:	ebffff2c 	bl	113c <putc>
    1488:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    148c:	e6ef3073 	uxtb	r3, r3
    1490:	e1a01003 	mov	r1, r3
    1494:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1498:	ebffff27 	bl	113c <putc>
    149c:	e3a03000 	mov	r3, #0
    14a0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    14a4:	e51b3010 	ldr	r3, [fp, #-16]
    14a8:	e2833001 	add	r3, r3, #1
    14ac:	e50b3010 	str	r3, [fp, #-16]
    14b0:	e59b2004 	ldr	r2, [fp, #4]
    14b4:	e51b3010 	ldr	r3, [fp, #-16]
    14b8:	e0823003 	add	r3, r2, r3
    14bc:	e5d33000 	ldrb	r3, [r3]
    14c0:	e3530000 	cmp	r3, #0
    14c4:	1affff84 	bne	12dc <printf+0x30>
    14c8:	e1a00000 	nop			@ (mov r0, r0)
    14cc:	e1a00000 	nop			@ (mov r0, r0)
    14d0:	e24bd004 	sub	sp, fp, #4
    14d4:	e8bd4800 	pop	{fp, lr}
    14d8:	e28dd00c 	add	sp, sp, #12
    14dc:	e12fff1e 	bx	lr
    14e0:	00001b24 	.word	0x00001b24

000014e4 <free>:
    14e4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    14e8:	e28db000 	add	fp, sp, #0
    14ec:	e24dd014 	sub	sp, sp, #20
    14f0:	e50b0010 	str	r0, [fp, #-16]
    14f4:	e51b3010 	ldr	r3, [fp, #-16]
    14f8:	e2433008 	sub	r3, r3, #8
    14fc:	e50b300c 	str	r3, [fp, #-12]
    1500:	e59f3154 	ldr	r3, [pc, #340]	@ 165c <free+0x178>
    1504:	e5933000 	ldr	r3, [r3]
    1508:	e50b3008 	str	r3, [fp, #-8]
    150c:	ea000010 	b	1554 <free+0x70>
    1510:	e51b3008 	ldr	r3, [fp, #-8]
    1514:	e5933000 	ldr	r3, [r3]
    1518:	e51b2008 	ldr	r2, [fp, #-8]
    151c:	e1520003 	cmp	r2, r3
    1520:	3a000008 	bcc	1548 <free+0x64>
    1524:	e51b200c 	ldr	r2, [fp, #-12]
    1528:	e51b3008 	ldr	r3, [fp, #-8]
    152c:	e1520003 	cmp	r2, r3
    1530:	8a000010 	bhi	1578 <free+0x94>
    1534:	e51b3008 	ldr	r3, [fp, #-8]
    1538:	e5933000 	ldr	r3, [r3]
    153c:	e51b200c 	ldr	r2, [fp, #-12]
    1540:	e1520003 	cmp	r2, r3
    1544:	3a00000b 	bcc	1578 <free+0x94>
    1548:	e51b3008 	ldr	r3, [fp, #-8]
    154c:	e5933000 	ldr	r3, [r3]
    1550:	e50b3008 	str	r3, [fp, #-8]
    1554:	e51b200c 	ldr	r2, [fp, #-12]
    1558:	e51b3008 	ldr	r3, [fp, #-8]
    155c:	e1520003 	cmp	r2, r3
    1560:	9affffea 	bls	1510 <free+0x2c>
    1564:	e51b3008 	ldr	r3, [fp, #-8]
    1568:	e5933000 	ldr	r3, [r3]
    156c:	e51b200c 	ldr	r2, [fp, #-12]
    1570:	e1520003 	cmp	r2, r3
    1574:	2affffe5 	bcs	1510 <free+0x2c>
    1578:	e51b300c 	ldr	r3, [fp, #-12]
    157c:	e5933004 	ldr	r3, [r3, #4]
    1580:	e1a03183 	lsl	r3, r3, #3
    1584:	e51b200c 	ldr	r2, [fp, #-12]
    1588:	e0822003 	add	r2, r2, r3
    158c:	e51b3008 	ldr	r3, [fp, #-8]
    1590:	e5933000 	ldr	r3, [r3]
    1594:	e1520003 	cmp	r2, r3
    1598:	1a00000d 	bne	15d4 <free+0xf0>
    159c:	e51b300c 	ldr	r3, [fp, #-12]
    15a0:	e5932004 	ldr	r2, [r3, #4]
    15a4:	e51b3008 	ldr	r3, [fp, #-8]
    15a8:	e5933000 	ldr	r3, [r3]
    15ac:	e5933004 	ldr	r3, [r3, #4]
    15b0:	e0822003 	add	r2, r2, r3
    15b4:	e51b300c 	ldr	r3, [fp, #-12]
    15b8:	e5832004 	str	r2, [r3, #4]
    15bc:	e51b3008 	ldr	r3, [fp, #-8]
    15c0:	e5933000 	ldr	r3, [r3]
    15c4:	e5932000 	ldr	r2, [r3]
    15c8:	e51b300c 	ldr	r3, [fp, #-12]
    15cc:	e5832000 	str	r2, [r3]
    15d0:	ea000003 	b	15e4 <free+0x100>
    15d4:	e51b3008 	ldr	r3, [fp, #-8]
    15d8:	e5932000 	ldr	r2, [r3]
    15dc:	e51b300c 	ldr	r3, [fp, #-12]
    15e0:	e5832000 	str	r2, [r3]
    15e4:	e51b3008 	ldr	r3, [fp, #-8]
    15e8:	e5933004 	ldr	r3, [r3, #4]
    15ec:	e1a03183 	lsl	r3, r3, #3
    15f0:	e51b2008 	ldr	r2, [fp, #-8]
    15f4:	e0823003 	add	r3, r2, r3
    15f8:	e51b200c 	ldr	r2, [fp, #-12]
    15fc:	e1520003 	cmp	r2, r3
    1600:	1a00000b 	bne	1634 <free+0x150>
    1604:	e51b3008 	ldr	r3, [fp, #-8]
    1608:	e5932004 	ldr	r2, [r3, #4]
    160c:	e51b300c 	ldr	r3, [fp, #-12]
    1610:	e5933004 	ldr	r3, [r3, #4]
    1614:	e0822003 	add	r2, r2, r3
    1618:	e51b3008 	ldr	r3, [fp, #-8]
    161c:	e5832004 	str	r2, [r3, #4]
    1620:	e51b300c 	ldr	r3, [fp, #-12]
    1624:	e5932000 	ldr	r2, [r3]
    1628:	e51b3008 	ldr	r3, [fp, #-8]
    162c:	e5832000 	str	r2, [r3]
    1630:	ea000002 	b	1640 <free+0x15c>
    1634:	e51b3008 	ldr	r3, [fp, #-8]
    1638:	e51b200c 	ldr	r2, [fp, #-12]
    163c:	e5832000 	str	r2, [r3]
    1640:	e59f2014 	ldr	r2, [pc, #20]	@ 165c <free+0x178>
    1644:	e51b3008 	ldr	r3, [fp, #-8]
    1648:	e5823000 	str	r3, [r2]
    164c:	e1a00000 	nop			@ (mov r0, r0)
    1650:	e28bd000 	add	sp, fp, #0
    1654:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1658:	e12fff1e 	bx	lr
    165c:	00001b48 	.word	0x00001b48

00001660 <morecore>:
    1660:	e92d4800 	push	{fp, lr}
    1664:	e28db004 	add	fp, sp, #4
    1668:	e24dd010 	sub	sp, sp, #16
    166c:	e50b0010 	str	r0, [fp, #-16]
    1670:	e51b3010 	ldr	r3, [fp, #-16]
    1674:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1678:	2a000001 	bcs	1684 <morecore+0x24>
    167c:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1680:	e50b3010 	str	r3, [fp, #-16]
    1684:	e51b3010 	ldr	r3, [fp, #-16]
    1688:	e1a03183 	lsl	r3, r3, #3
    168c:	e1a00003 	mov	r0, r3
    1690:	ebfffe07 	bl	eb4 <sbrk>
    1694:	e50b0008 	str	r0, [fp, #-8]
    1698:	e51b3008 	ldr	r3, [fp, #-8]
    169c:	e3730001 	cmn	r3, #1
    16a0:	1a000001 	bne	16ac <morecore+0x4c>
    16a4:	e3a03000 	mov	r3, #0
    16a8:	ea00000a 	b	16d8 <morecore+0x78>
    16ac:	e51b3008 	ldr	r3, [fp, #-8]
    16b0:	e50b300c 	str	r3, [fp, #-12]
    16b4:	e51b300c 	ldr	r3, [fp, #-12]
    16b8:	e51b2010 	ldr	r2, [fp, #-16]
    16bc:	e5832004 	str	r2, [r3, #4]
    16c0:	e51b300c 	ldr	r3, [fp, #-12]
    16c4:	e2833008 	add	r3, r3, #8
    16c8:	e1a00003 	mov	r0, r3
    16cc:	ebffff84 	bl	14e4 <free>
    16d0:	e59f300c 	ldr	r3, [pc, #12]	@ 16e4 <morecore+0x84>
    16d4:	e5933000 	ldr	r3, [r3]
    16d8:	e1a00003 	mov	r0, r3
    16dc:	e24bd004 	sub	sp, fp, #4
    16e0:	e8bd8800 	pop	{fp, pc}
    16e4:	00001b48 	.word	0x00001b48

000016e8 <malloc>:
    16e8:	e92d4800 	push	{fp, lr}
    16ec:	e28db004 	add	fp, sp, #4
    16f0:	e24dd018 	sub	sp, sp, #24
    16f4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    16f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    16fc:	e2833007 	add	r3, r3, #7
    1700:	e1a031a3 	lsr	r3, r3, #3
    1704:	e2833001 	add	r3, r3, #1
    1708:	e50b3010 	str	r3, [fp, #-16]
    170c:	e59f3134 	ldr	r3, [pc, #308]	@ 1848 <malloc+0x160>
    1710:	e5933000 	ldr	r3, [r3]
    1714:	e50b300c 	str	r3, [fp, #-12]
    1718:	e51b300c 	ldr	r3, [fp, #-12]
    171c:	e3530000 	cmp	r3, #0
    1720:	1a00000b 	bne	1754 <malloc+0x6c>
    1724:	e59f3120 	ldr	r3, [pc, #288]	@ 184c <malloc+0x164>
    1728:	e50b300c 	str	r3, [fp, #-12]
    172c:	e59f2114 	ldr	r2, [pc, #276]	@ 1848 <malloc+0x160>
    1730:	e51b300c 	ldr	r3, [fp, #-12]
    1734:	e5823000 	str	r3, [r2]
    1738:	e59f3108 	ldr	r3, [pc, #264]	@ 1848 <malloc+0x160>
    173c:	e5933000 	ldr	r3, [r3]
    1740:	e59f2104 	ldr	r2, [pc, #260]	@ 184c <malloc+0x164>
    1744:	e5823000 	str	r3, [r2]
    1748:	e59f30fc 	ldr	r3, [pc, #252]	@ 184c <malloc+0x164>
    174c:	e3a02000 	mov	r2, #0
    1750:	e5832004 	str	r2, [r3, #4]
    1754:	e51b300c 	ldr	r3, [fp, #-12]
    1758:	e5933000 	ldr	r3, [r3]
    175c:	e50b3008 	str	r3, [fp, #-8]
    1760:	e51b3008 	ldr	r3, [fp, #-8]
    1764:	e5933004 	ldr	r3, [r3, #4]
    1768:	e51b2010 	ldr	r2, [fp, #-16]
    176c:	e1520003 	cmp	r2, r3
    1770:	8a00001e 	bhi	17f0 <malloc+0x108>
    1774:	e51b3008 	ldr	r3, [fp, #-8]
    1778:	e5933004 	ldr	r3, [r3, #4]
    177c:	e51b2010 	ldr	r2, [fp, #-16]
    1780:	e1520003 	cmp	r2, r3
    1784:	1a000004 	bne	179c <malloc+0xb4>
    1788:	e51b3008 	ldr	r3, [fp, #-8]
    178c:	e5932000 	ldr	r2, [r3]
    1790:	e51b300c 	ldr	r3, [fp, #-12]
    1794:	e5832000 	str	r2, [r3]
    1798:	ea00000e 	b	17d8 <malloc+0xf0>
    179c:	e51b3008 	ldr	r3, [fp, #-8]
    17a0:	e5932004 	ldr	r2, [r3, #4]
    17a4:	e51b3010 	ldr	r3, [fp, #-16]
    17a8:	e0422003 	sub	r2, r2, r3
    17ac:	e51b3008 	ldr	r3, [fp, #-8]
    17b0:	e5832004 	str	r2, [r3, #4]
    17b4:	e51b3008 	ldr	r3, [fp, #-8]
    17b8:	e5933004 	ldr	r3, [r3, #4]
    17bc:	e1a03183 	lsl	r3, r3, #3
    17c0:	e51b2008 	ldr	r2, [fp, #-8]
    17c4:	e0823003 	add	r3, r2, r3
    17c8:	e50b3008 	str	r3, [fp, #-8]
    17cc:	e51b3008 	ldr	r3, [fp, #-8]
    17d0:	e51b2010 	ldr	r2, [fp, #-16]
    17d4:	e5832004 	str	r2, [r3, #4]
    17d8:	e59f2068 	ldr	r2, [pc, #104]	@ 1848 <malloc+0x160>
    17dc:	e51b300c 	ldr	r3, [fp, #-12]
    17e0:	e5823000 	str	r3, [r2]
    17e4:	e51b3008 	ldr	r3, [fp, #-8]
    17e8:	e2833008 	add	r3, r3, #8
    17ec:	ea000012 	b	183c <malloc+0x154>
    17f0:	e59f3050 	ldr	r3, [pc, #80]	@ 1848 <malloc+0x160>
    17f4:	e5933000 	ldr	r3, [r3]
    17f8:	e51b2008 	ldr	r2, [fp, #-8]
    17fc:	e1520003 	cmp	r2, r3
    1800:	1a000007 	bne	1824 <malloc+0x13c>
    1804:	e51b0010 	ldr	r0, [fp, #-16]
    1808:	ebffff94 	bl	1660 <morecore>
    180c:	e50b0008 	str	r0, [fp, #-8]
    1810:	e51b3008 	ldr	r3, [fp, #-8]
    1814:	e3530000 	cmp	r3, #0
    1818:	1a000001 	bne	1824 <malloc+0x13c>
    181c:	e3a03000 	mov	r3, #0
    1820:	ea000005 	b	183c <malloc+0x154>
    1824:	e51b3008 	ldr	r3, [fp, #-8]
    1828:	e50b300c 	str	r3, [fp, #-12]
    182c:	e51b3008 	ldr	r3, [fp, #-8]
    1830:	e5933000 	ldr	r3, [r3]
    1834:	e50b3008 	str	r3, [fp, #-8]
    1838:	eaffffc8 	b	1760 <malloc+0x78>
    183c:	e1a00003 	mov	r0, r3
    1840:	e24bd004 	sub	sp, fp, #4
    1844:	e8bd8800 	pop	{fp, pc}
    1848:	00001b48 	.word	0x00001b48
    184c:	00001b40 	.word	0x00001b40

00001850 <__udivsi3>:
    1850:	e2512001 	subs	r2, r1, #1
    1854:	012fff1e 	bxeq	lr
    1858:	3a000036 	bcc	1938 <__udivsi3+0xe8>
    185c:	e1500001 	cmp	r0, r1
    1860:	9a000022 	bls	18f0 <__udivsi3+0xa0>
    1864:	e1110002 	tst	r1, r2
    1868:	0a000023 	beq	18fc <__udivsi3+0xac>
    186c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1870:	01a01181 	lsleq	r1, r1, #3
    1874:	03a03008 	moveq	r3, #8
    1878:	13a03001 	movne	r3, #1
    187c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1880:	31510000 	cmpcc	r1, r0
    1884:	31a01201 	lslcc	r1, r1, #4
    1888:	31a03203 	lslcc	r3, r3, #4
    188c:	3afffffa 	bcc	187c <__udivsi3+0x2c>
    1890:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1894:	31510000 	cmpcc	r1, r0
    1898:	31a01081 	lslcc	r1, r1, #1
    189c:	31a03083 	lslcc	r3, r3, #1
    18a0:	3afffffa 	bcc	1890 <__udivsi3+0x40>
    18a4:	e3a02000 	mov	r2, #0
    18a8:	e1500001 	cmp	r0, r1
    18ac:	20400001 	subcs	r0, r0, r1
    18b0:	21822003 	orrcs	r2, r2, r3
    18b4:	e15000a1 	cmp	r0, r1, lsr #1
    18b8:	204000a1 	subcs	r0, r0, r1, lsr #1
    18bc:	218220a3 	orrcs	r2, r2, r3, lsr #1
    18c0:	e1500121 	cmp	r0, r1, lsr #2
    18c4:	20400121 	subcs	r0, r0, r1, lsr #2
    18c8:	21822123 	orrcs	r2, r2, r3, lsr #2
    18cc:	e15001a1 	cmp	r0, r1, lsr #3
    18d0:	204001a1 	subcs	r0, r0, r1, lsr #3
    18d4:	218221a3 	orrcs	r2, r2, r3, lsr #3
    18d8:	e3500000 	cmp	r0, #0
    18dc:	11b03223 	lsrsne	r3, r3, #4
    18e0:	11a01221 	lsrne	r1, r1, #4
    18e4:	1affffef 	bne	18a8 <__udivsi3+0x58>
    18e8:	e1a00002 	mov	r0, r2
    18ec:	e12fff1e 	bx	lr
    18f0:	03a00001 	moveq	r0, #1
    18f4:	13a00000 	movne	r0, #0
    18f8:	e12fff1e 	bx	lr
    18fc:	e3510801 	cmp	r1, #65536	@ 0x10000
    1900:	21a01821 	lsrcs	r1, r1, #16
    1904:	23a02010 	movcs	r2, #16
    1908:	33a02000 	movcc	r2, #0
    190c:	e3510c01 	cmp	r1, #256	@ 0x100
    1910:	21a01421 	lsrcs	r1, r1, #8
    1914:	22822008 	addcs	r2, r2, #8
    1918:	e3510010 	cmp	r1, #16
    191c:	21a01221 	lsrcs	r1, r1, #4
    1920:	22822004 	addcs	r2, r2, #4
    1924:	e3510004 	cmp	r1, #4
    1928:	82822003 	addhi	r2, r2, #3
    192c:	908220a1 	addls	r2, r2, r1, lsr #1
    1930:	e1a00230 	lsr	r0, r0, r2
    1934:	e12fff1e 	bx	lr
    1938:	e3500000 	cmp	r0, #0
    193c:	13e00000 	mvnne	r0, #0
    1940:	ea000007 	b	1964 <__aeabi_idiv0>

00001944 <__aeabi_uidivmod>:
    1944:	e3510000 	cmp	r1, #0
    1948:	0afffffa 	beq	1938 <__udivsi3+0xe8>
    194c:	e92d4003 	push	{r0, r1, lr}
    1950:	ebffffbe 	bl	1850 <__udivsi3>
    1954:	e8bd4006 	pop	{r1, r2, lr}
    1958:	e0030092 	mul	r3, r2, r0
    195c:	e0411003 	sub	r1, r1, r3
    1960:	e12fff1e 	bx	lr

00001964 <__aeabi_idiv0>:
    1964:	e12fff1e 	bx	lr
