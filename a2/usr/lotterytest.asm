
_lotterytest:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dde52 	sub	sp, sp, #1312	@ 0x520
       c:	e59f1374 	ldr	r1, [pc, #884]	@ 388 <main+0x388>
      10:	e3a00001 	mov	r0, #1
      14:	eb000363 	bl	da8 <printf>
      18:	e59f136c 	ldr	r1, [pc, #876]	@ 38c <main+0x38c>
      1c:	e3a00001 	mov	r0, #1
      20:	eb000360 	bl	da8 <printf>
      24:	e3a0002a 	mov	r0, #42	@ 0x2a
      28:	eb0002f0 	bl	bf0 <srand>
      2c:	eb000220 	bl	8b4 <fork>
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
      80:	eb000214 	bl	8d8 <exit>
      84:	eb00020a 	bl	8b4 <fork>
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
      d8:	eb0001fe 	bl	8d8 <exit>
      dc:	e3a01001 	mov	r1, #1
      e0:	e51b000c 	ldr	r0, [fp, #-12]
      e4:	eb0002b8 	bl	bcc <settickets>
      e8:	e1a03000 	mov	r3, r0
      ec:	e3530000 	cmp	r3, #0
      f0:	aa000002 	bge	100 <main+0x100>
      f4:	e59f1298 	ldr	r1, [pc, #664]	@ 394 <main+0x394>
      f8:	e3a00001 	mov	r0, #1
      fc:	eb000329 	bl	da8 <printf>
     100:	e3a01004 	mov	r1, #4
     104:	e51b0010 	ldr	r0, [fp, #-16]
     108:	eb0002af 	bl	bcc <settickets>
     10c:	e1a03000 	mov	r3, r0
     110:	e3530000 	cmp	r3, #0
     114:	aa000002 	bge	124 <main+0x124>
     118:	e59f1278 	ldr	r1, [pc, #632]	@ 398 <main+0x398>
     11c:	e3a00001 	mov	r0, #1
     120:	eb000320 	bl	da8 <printf>
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e51b200c 	ldr	r2, [fp, #-12]
     12c:	e59f1268 	ldr	r1, [pc, #616]	@ 39c <main+0x39c>
     130:	e3a00001 	mov	r0, #1
     134:	eb00031b 	bl	da8 <printf>
     138:	e59f1260 	ldr	r1, [pc, #608]	@ 3a0 <main+0x3a0>
     13c:	e3a00001 	mov	r0, #1
     140:	eb000318 	bl	da8 <printf>
     144:	e3a00032 	mov	r0, #50	@ 0x32
     148:	eb000284 	bl	b60 <sleep>
     14c:	e24b3e51 	sub	r3, fp, #1296	@ 0x510
     150:	e2433004 	sub	r3, r3, #4
     154:	e2433004 	sub	r3, r3, #4
     158:	e1a00003 	mov	r0, r3
     15c:	eb0002ac 	bl	c14 <getpinfo>
     160:	e1a03000 	mov	r3, r0
     164:	e3530000 	cmp	r3, #0
     168:	1a000046 	bne	288 <main+0x288>
     16c:	e59f1230 	ldr	r1, [pc, #560]	@ 3a4 <main+0x3a4>
     170:	e3a00001 	mov	r0, #1
     174:	eb00030b 	bl	da8 <printf>
     178:	e59f1228 	ldr	r1, [pc, #552]	@ 3a8 <main+0x3a8>
     17c:	e3a00001 	mov	r0, #1
     180:	eb000308 	bl	da8 <printf>
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
     26c:	eb0002cd 	bl	da8 <printf>
     270:	e51b3008 	ldr	r3, [fp, #-8]
     274:	e2833001 	add	r3, r3, #1
     278:	e50b3008 	str	r3, [fp, #-8]
     27c:	e51b3008 	ldr	r3, [fp, #-8]
     280:	e353003f 	cmp	r3, #63	@ 0x3f
     284:	daffffc1 	ble	190 <main+0x190>
     288:	eb00019b 	bl	8fc <wait>
     28c:	eb00019a 	bl	8fc <wait>
     290:	e59f1118 	ldr	r1, [pc, #280]	@ 3b0 <main+0x3b0>
     294:	e3a00001 	mov	r0, #1
     298:	eb0002c2 	bl	da8 <printf>
     29c:	eb000184 	bl	8b4 <fork>
     2a0:	e50b000c 	str	r0, [fp, #-12]
     2a4:	e51b300c 	ldr	r3, [fp, #-12]
     2a8:	e3530000 	cmp	r3, #0
     2ac:	1a000008 	bne	2d4 <main+0x2d4>
     2b0:	e59f10fc 	ldr	r1, [pc, #252]	@ 3b4 <main+0x3b4>
     2b4:	e3a00001 	mov	r0, #1
     2b8:	eb0002ba 	bl	da8 <printf>
     2bc:	e3a0000a 	mov	r0, #10
     2c0:	eb000226 	bl	b60 <sleep>
     2c4:	e59f10ec 	ldr	r1, [pc, #236]	@ 3b8 <main+0x3b8>
     2c8:	e3a00001 	mov	r0, #1
     2cc:	eb0002b5 	bl	da8 <printf>
     2d0:	eb000180 	bl	8d8 <exit>
     2d4:	e3a00005 	mov	r0, #5
     2d8:	eb000220 	bl	b60 <sleep>
     2dc:	e24b3e51 	sub	r3, fp, #1296	@ 0x510
     2e0:	e2433004 	sub	r3, r3, #4
     2e4:	e2433004 	sub	r3, r3, #4
     2e8:	e1a00003 	mov	r0, r3
     2ec:	eb000248 	bl	c14 <getpinfo>
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
     354:	eb000293 	bl	da8 <printf>
     358:	ea000005 	b	374 <main+0x374>
     35c:	e51b3008 	ldr	r3, [fp, #-8]
     360:	e2833001 	add	r3, r3, #1
     364:	e50b3008 	str	r3, [fp, #-8]
     368:	e51b3008 	ldr	r3, [fp, #-8]
     36c:	e353003f 	cmp	r3, #63	@ 0x3f
     370:	daffffe4 	ble	308 <main+0x308>
     374:	eb000160 	bl	8fc <wait>
     378:	e59f1040 	ldr	r1, [pc, #64]	@ 3c0 <main+0x3c0>
     37c:	e3a00001 	mov	r0, #1
     380:	eb000288 	bl	da8 <printf>
     384:	eb000153 	bl	8d8 <exit>
     388:	00001464 	.word	0x00001464
     38c:	0000147c 	.word	0x0000147c
     390:	000186a0 	.word	0x000186a0
     394:	00001494 	.word	0x00001494
     398:	000014b4 	.word	0x000014b4
     39c:	000014d4 	.word	0x000014d4
     3a0:	00001504 	.word	0x00001504
     3a4:	00001530 	.word	0x00001530
     3a8:	0000154c 	.word	0x0000154c
     3ac:	0000156c 	.word	0x0000156c
     3b0:	0000157c 	.word	0x0000157c
     3b4:	000015a4 	.word	0x000015a4
     3b8:	000015c4 	.word	0x000015c4
     3bc:	000015d4 	.word	0x000015d4
     3c0:	0000160c 	.word	0x0000160c

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
     6b8:	eb0000a1 	bl	944 <read>
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
     760:	eb0000a4 	bl	9f8 <open>
     764:	e50b0008 	str	r0, [fp, #-8]
     768:	e51b3008 	ldr	r3, [fp, #-8]
     76c:	e3530000 	cmp	r3, #0
     770:	aa000001 	bge	77c <stat+0x38>
     774:	e3e03000 	mvn	r3, #0
     778:	ea000006 	b	798 <stat+0x54>
     77c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     780:	e51b0008 	ldr	r0, [fp, #-8]
     784:	eb0000b6 	bl	a64 <fstat>
     788:	e50b000c 	str	r0, [fp, #-12]
     78c:	e51b0008 	ldr	r0, [fp, #-8]
     790:	eb00007d 	bl	98c <close>
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

00000c38 <putc>:
     c38:	e92d4800 	push	{fp, lr}
     c3c:	e28db004 	add	fp, sp, #4
     c40:	e24dd008 	sub	sp, sp, #8
     c44:	e50b0008 	str	r0, [fp, #-8]
     c48:	e1a03001 	mov	r3, r1
     c4c:	e54b3009 	strb	r3, [fp, #-9]
     c50:	e24b3009 	sub	r3, fp, #9
     c54:	e3a02001 	mov	r2, #1
     c58:	e1a01003 	mov	r1, r3
     c5c:	e51b0008 	ldr	r0, [fp, #-8]
     c60:	ebffff40 	bl	968 <write>
     c64:	e1a00000 	nop			@ (mov r0, r0)
     c68:	e24bd004 	sub	sp, fp, #4
     c6c:	e8bd8800 	pop	{fp, pc}

00000c70 <printint>:
     c70:	e92d4800 	push	{fp, lr}
     c74:	e28db004 	add	fp, sp, #4
     c78:	e24dd030 	sub	sp, sp, #48	@ 0x30
     c7c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     c80:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     c84:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     c88:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     c8c:	e3a03000 	mov	r3, #0
     c90:	e50b300c 	str	r3, [fp, #-12]
     c94:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     c98:	e3530000 	cmp	r3, #0
     c9c:	0a000008 	beq	cc4 <printint+0x54>
     ca0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ca4:	e3530000 	cmp	r3, #0
     ca8:	aa000005 	bge	cc4 <printint+0x54>
     cac:	e3a03001 	mov	r3, #1
     cb0:	e50b300c 	str	r3, [fp, #-12]
     cb4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     cb8:	e2633000 	rsb	r3, r3, #0
     cbc:	e50b3010 	str	r3, [fp, #-16]
     cc0:	ea000001 	b	ccc <printint+0x5c>
     cc4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     cc8:	e50b3010 	str	r3, [fp, #-16]
     ccc:	e3a03000 	mov	r3, #0
     cd0:	e50b3008 	str	r3, [fp, #-8]
     cd4:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     cd8:	e51b3010 	ldr	r3, [fp, #-16]
     cdc:	e1a01002 	mov	r1, r2
     ce0:	e1a00003 	mov	r0, r3
     ce4:	eb0001d5 	bl	1440 <__aeabi_uidivmod>
     ce8:	e1a03001 	mov	r3, r1
     cec:	e1a01003 	mov	r1, r3
     cf0:	e51b3008 	ldr	r3, [fp, #-8]
     cf4:	e2832001 	add	r2, r3, #1
     cf8:	e50b2008 	str	r2, [fp, #-8]
     cfc:	e59f20a0 	ldr	r2, [pc, #160]	@ da4 <printint+0x134>
     d00:	e7d22001 	ldrb	r2, [r2, r1]
     d04:	e2433004 	sub	r3, r3, #4
     d08:	e083300b 	add	r3, r3, fp
     d0c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     d10:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     d14:	e1a01003 	mov	r1, r3
     d18:	e51b0010 	ldr	r0, [fp, #-16]
     d1c:	eb00018a 	bl	134c <__udivsi3>
     d20:	e1a03000 	mov	r3, r0
     d24:	e50b3010 	str	r3, [fp, #-16]
     d28:	e51b3010 	ldr	r3, [fp, #-16]
     d2c:	e3530000 	cmp	r3, #0
     d30:	1affffe7 	bne	cd4 <printint+0x64>
     d34:	e51b300c 	ldr	r3, [fp, #-12]
     d38:	e3530000 	cmp	r3, #0
     d3c:	0a00000e 	beq	d7c <printint+0x10c>
     d40:	e51b3008 	ldr	r3, [fp, #-8]
     d44:	e2832001 	add	r2, r3, #1
     d48:	e50b2008 	str	r2, [fp, #-8]
     d4c:	e2433004 	sub	r3, r3, #4
     d50:	e083300b 	add	r3, r3, fp
     d54:	e3a0202d 	mov	r2, #45	@ 0x2d
     d58:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     d5c:	ea000006 	b	d7c <printint+0x10c>
     d60:	e24b2020 	sub	r2, fp, #32
     d64:	e51b3008 	ldr	r3, [fp, #-8]
     d68:	e0823003 	add	r3, r2, r3
     d6c:	e5d33000 	ldrb	r3, [r3]
     d70:	e1a01003 	mov	r1, r3
     d74:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     d78:	ebffffae 	bl	c38 <putc>
     d7c:	e51b3008 	ldr	r3, [fp, #-8]
     d80:	e2433001 	sub	r3, r3, #1
     d84:	e50b3008 	str	r3, [fp, #-8]
     d88:	e51b3008 	ldr	r3, [fp, #-8]
     d8c:	e3530000 	cmp	r3, #0
     d90:	aafffff2 	bge	d60 <printint+0xf0>
     d94:	e1a00000 	nop			@ (mov r0, r0)
     d98:	e1a00000 	nop			@ (mov r0, r0)
     d9c:	e24bd004 	sub	sp, fp, #4
     da0:	e8bd8800 	pop	{fp, pc}
     da4:	00001628 	.word	0x00001628

00000da8 <printf>:
     da8:	e92d000e 	push	{r1, r2, r3}
     dac:	e92d4800 	push	{fp, lr}
     db0:	e28db004 	add	fp, sp, #4
     db4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     db8:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     dbc:	e3a03000 	mov	r3, #0
     dc0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     dc4:	e28b3008 	add	r3, fp, #8
     dc8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     dcc:	e3a03000 	mov	r3, #0
     dd0:	e50b3010 	str	r3, [fp, #-16]
     dd4:	ea000074 	b	fac <printf+0x204>
     dd8:	e59b2004 	ldr	r2, [fp, #4]
     ddc:	e51b3010 	ldr	r3, [fp, #-16]
     de0:	e0823003 	add	r3, r2, r3
     de4:	e5d33000 	ldrb	r3, [r3]
     de8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     dec:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     df0:	e3530000 	cmp	r3, #0
     df4:	1a00000b 	bne	e28 <printf+0x80>
     df8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dfc:	e3530025 	cmp	r3, #37	@ 0x25
     e00:	1a000002 	bne	e10 <printf+0x68>
     e04:	e3a03025 	mov	r3, #37	@ 0x25
     e08:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     e0c:	ea000063 	b	fa0 <printf+0x1f8>
     e10:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e14:	e6ef3073 	uxtb	r3, r3
     e18:	e1a01003 	mov	r1, r3
     e1c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e20:	ebffff84 	bl	c38 <putc>
     e24:	ea00005d 	b	fa0 <printf+0x1f8>
     e28:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     e2c:	e3530025 	cmp	r3, #37	@ 0x25
     e30:	1a00005a 	bne	fa0 <printf+0x1f8>
     e34:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e38:	e3530064 	cmp	r3, #100	@ 0x64
     e3c:	1a00000a 	bne	e6c <printf+0xc4>
     e40:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e44:	e5933000 	ldr	r3, [r3]
     e48:	e1a01003 	mov	r1, r3
     e4c:	e3a03001 	mov	r3, #1
     e50:	e3a0200a 	mov	r2, #10
     e54:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e58:	ebffff84 	bl	c70 <printint>
     e5c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e60:	e2833004 	add	r3, r3, #4
     e64:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e68:	ea00004a 	b	f98 <printf+0x1f0>
     e6c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e70:	e3530078 	cmp	r3, #120	@ 0x78
     e74:	0a000002 	beq	e84 <printf+0xdc>
     e78:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e7c:	e3530070 	cmp	r3, #112	@ 0x70
     e80:	1a00000a 	bne	eb0 <printf+0x108>
     e84:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e88:	e5933000 	ldr	r3, [r3]
     e8c:	e1a01003 	mov	r1, r3
     e90:	e3a03000 	mov	r3, #0
     e94:	e3a02010 	mov	r2, #16
     e98:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e9c:	ebffff73 	bl	c70 <printint>
     ea0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ea4:	e2833004 	add	r3, r3, #4
     ea8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     eac:	ea000039 	b	f98 <printf+0x1f0>
     eb0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     eb4:	e3530073 	cmp	r3, #115	@ 0x73
     eb8:	1a000018 	bne	f20 <printf+0x178>
     ebc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ec0:	e5933000 	ldr	r3, [r3]
     ec4:	e50b300c 	str	r3, [fp, #-12]
     ec8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ecc:	e2833004 	add	r3, r3, #4
     ed0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ed4:	e51b300c 	ldr	r3, [fp, #-12]
     ed8:	e3530000 	cmp	r3, #0
     edc:	1a00000a 	bne	f0c <printf+0x164>
     ee0:	e59f30f4 	ldr	r3, [pc, #244]	@ fdc <printf+0x234>
     ee4:	e50b300c 	str	r3, [fp, #-12]
     ee8:	ea000007 	b	f0c <printf+0x164>
     eec:	e51b300c 	ldr	r3, [fp, #-12]
     ef0:	e5d33000 	ldrb	r3, [r3]
     ef4:	e1a01003 	mov	r1, r3
     ef8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     efc:	ebffff4d 	bl	c38 <putc>
     f00:	e51b300c 	ldr	r3, [fp, #-12]
     f04:	e2833001 	add	r3, r3, #1
     f08:	e50b300c 	str	r3, [fp, #-12]
     f0c:	e51b300c 	ldr	r3, [fp, #-12]
     f10:	e5d33000 	ldrb	r3, [r3]
     f14:	e3530000 	cmp	r3, #0
     f18:	1afffff3 	bne	eec <printf+0x144>
     f1c:	ea00001d 	b	f98 <printf+0x1f0>
     f20:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f24:	e3530063 	cmp	r3, #99	@ 0x63
     f28:	1a000009 	bne	f54 <printf+0x1ac>
     f2c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f30:	e5933000 	ldr	r3, [r3]
     f34:	e6ef3073 	uxtb	r3, r3
     f38:	e1a01003 	mov	r1, r3
     f3c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f40:	ebffff3c 	bl	c38 <putc>
     f44:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f48:	e2833004 	add	r3, r3, #4
     f4c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f50:	ea000010 	b	f98 <printf+0x1f0>
     f54:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f58:	e3530025 	cmp	r3, #37	@ 0x25
     f5c:	1a000005 	bne	f78 <printf+0x1d0>
     f60:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f64:	e6ef3073 	uxtb	r3, r3
     f68:	e1a01003 	mov	r1, r3
     f6c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f70:	ebffff30 	bl	c38 <putc>
     f74:	ea000007 	b	f98 <printf+0x1f0>
     f78:	e3a01025 	mov	r1, #37	@ 0x25
     f7c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f80:	ebffff2c 	bl	c38 <putc>
     f84:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f88:	e6ef3073 	uxtb	r3, r3
     f8c:	e1a01003 	mov	r1, r3
     f90:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f94:	ebffff27 	bl	c38 <putc>
     f98:	e3a03000 	mov	r3, #0
     f9c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     fa0:	e51b3010 	ldr	r3, [fp, #-16]
     fa4:	e2833001 	add	r3, r3, #1
     fa8:	e50b3010 	str	r3, [fp, #-16]
     fac:	e59b2004 	ldr	r2, [fp, #4]
     fb0:	e51b3010 	ldr	r3, [fp, #-16]
     fb4:	e0823003 	add	r3, r2, r3
     fb8:	e5d33000 	ldrb	r3, [r3]
     fbc:	e3530000 	cmp	r3, #0
     fc0:	1affff84 	bne	dd8 <printf+0x30>
     fc4:	e1a00000 	nop			@ (mov r0, r0)
     fc8:	e1a00000 	nop			@ (mov r0, r0)
     fcc:	e24bd004 	sub	sp, fp, #4
     fd0:	e8bd4800 	pop	{fp, lr}
     fd4:	e28dd00c 	add	sp, sp, #12
     fd8:	e12fff1e 	bx	lr
     fdc:	00001620 	.word	0x00001620

00000fe0 <free>:
     fe0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     fe4:	e28db000 	add	fp, sp, #0
     fe8:	e24dd014 	sub	sp, sp, #20
     fec:	e50b0010 	str	r0, [fp, #-16]
     ff0:	e51b3010 	ldr	r3, [fp, #-16]
     ff4:	e2433008 	sub	r3, r3, #8
     ff8:	e50b300c 	str	r3, [fp, #-12]
     ffc:	e59f3154 	ldr	r3, [pc, #340]	@ 1158 <free+0x178>
    1000:	e5933000 	ldr	r3, [r3]
    1004:	e50b3008 	str	r3, [fp, #-8]
    1008:	ea000010 	b	1050 <free+0x70>
    100c:	e51b3008 	ldr	r3, [fp, #-8]
    1010:	e5933000 	ldr	r3, [r3]
    1014:	e51b2008 	ldr	r2, [fp, #-8]
    1018:	e1520003 	cmp	r2, r3
    101c:	3a000008 	bcc	1044 <free+0x64>
    1020:	e51b200c 	ldr	r2, [fp, #-12]
    1024:	e51b3008 	ldr	r3, [fp, #-8]
    1028:	e1520003 	cmp	r2, r3
    102c:	8a000010 	bhi	1074 <free+0x94>
    1030:	e51b3008 	ldr	r3, [fp, #-8]
    1034:	e5933000 	ldr	r3, [r3]
    1038:	e51b200c 	ldr	r2, [fp, #-12]
    103c:	e1520003 	cmp	r2, r3
    1040:	3a00000b 	bcc	1074 <free+0x94>
    1044:	e51b3008 	ldr	r3, [fp, #-8]
    1048:	e5933000 	ldr	r3, [r3]
    104c:	e50b3008 	str	r3, [fp, #-8]
    1050:	e51b200c 	ldr	r2, [fp, #-12]
    1054:	e51b3008 	ldr	r3, [fp, #-8]
    1058:	e1520003 	cmp	r2, r3
    105c:	9affffea 	bls	100c <free+0x2c>
    1060:	e51b3008 	ldr	r3, [fp, #-8]
    1064:	e5933000 	ldr	r3, [r3]
    1068:	e51b200c 	ldr	r2, [fp, #-12]
    106c:	e1520003 	cmp	r2, r3
    1070:	2affffe5 	bcs	100c <free+0x2c>
    1074:	e51b300c 	ldr	r3, [fp, #-12]
    1078:	e5933004 	ldr	r3, [r3, #4]
    107c:	e1a03183 	lsl	r3, r3, #3
    1080:	e51b200c 	ldr	r2, [fp, #-12]
    1084:	e0822003 	add	r2, r2, r3
    1088:	e51b3008 	ldr	r3, [fp, #-8]
    108c:	e5933000 	ldr	r3, [r3]
    1090:	e1520003 	cmp	r2, r3
    1094:	1a00000d 	bne	10d0 <free+0xf0>
    1098:	e51b300c 	ldr	r3, [fp, #-12]
    109c:	e5932004 	ldr	r2, [r3, #4]
    10a0:	e51b3008 	ldr	r3, [fp, #-8]
    10a4:	e5933000 	ldr	r3, [r3]
    10a8:	e5933004 	ldr	r3, [r3, #4]
    10ac:	e0822003 	add	r2, r2, r3
    10b0:	e51b300c 	ldr	r3, [fp, #-12]
    10b4:	e5832004 	str	r2, [r3, #4]
    10b8:	e51b3008 	ldr	r3, [fp, #-8]
    10bc:	e5933000 	ldr	r3, [r3]
    10c0:	e5932000 	ldr	r2, [r3]
    10c4:	e51b300c 	ldr	r3, [fp, #-12]
    10c8:	e5832000 	str	r2, [r3]
    10cc:	ea000003 	b	10e0 <free+0x100>
    10d0:	e51b3008 	ldr	r3, [fp, #-8]
    10d4:	e5932000 	ldr	r2, [r3]
    10d8:	e51b300c 	ldr	r3, [fp, #-12]
    10dc:	e5832000 	str	r2, [r3]
    10e0:	e51b3008 	ldr	r3, [fp, #-8]
    10e4:	e5933004 	ldr	r3, [r3, #4]
    10e8:	e1a03183 	lsl	r3, r3, #3
    10ec:	e51b2008 	ldr	r2, [fp, #-8]
    10f0:	e0823003 	add	r3, r2, r3
    10f4:	e51b200c 	ldr	r2, [fp, #-12]
    10f8:	e1520003 	cmp	r2, r3
    10fc:	1a00000b 	bne	1130 <free+0x150>
    1100:	e51b3008 	ldr	r3, [fp, #-8]
    1104:	e5932004 	ldr	r2, [r3, #4]
    1108:	e51b300c 	ldr	r3, [fp, #-12]
    110c:	e5933004 	ldr	r3, [r3, #4]
    1110:	e0822003 	add	r2, r2, r3
    1114:	e51b3008 	ldr	r3, [fp, #-8]
    1118:	e5832004 	str	r2, [r3, #4]
    111c:	e51b300c 	ldr	r3, [fp, #-12]
    1120:	e5932000 	ldr	r2, [r3]
    1124:	e51b3008 	ldr	r3, [fp, #-8]
    1128:	e5832000 	str	r2, [r3]
    112c:	ea000002 	b	113c <free+0x15c>
    1130:	e51b3008 	ldr	r3, [fp, #-8]
    1134:	e51b200c 	ldr	r2, [fp, #-12]
    1138:	e5832000 	str	r2, [r3]
    113c:	e59f2014 	ldr	r2, [pc, #20]	@ 1158 <free+0x178>
    1140:	e51b3008 	ldr	r3, [fp, #-8]
    1144:	e5823000 	str	r3, [r2]
    1148:	e1a00000 	nop			@ (mov r0, r0)
    114c:	e28bd000 	add	sp, fp, #0
    1150:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1154:	e12fff1e 	bx	lr
    1158:	00001644 	.word	0x00001644

0000115c <morecore>:
    115c:	e92d4800 	push	{fp, lr}
    1160:	e28db004 	add	fp, sp, #4
    1164:	e24dd010 	sub	sp, sp, #16
    1168:	e50b0010 	str	r0, [fp, #-16]
    116c:	e51b3010 	ldr	r3, [fp, #-16]
    1170:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1174:	2a000001 	bcs	1180 <morecore+0x24>
    1178:	e3a03a01 	mov	r3, #4096	@ 0x1000
    117c:	e50b3010 	str	r3, [fp, #-16]
    1180:	e51b3010 	ldr	r3, [fp, #-16]
    1184:	e1a03183 	lsl	r3, r3, #3
    1188:	e1a00003 	mov	r0, r3
    118c:	ebfffe6a 	bl	b3c <sbrk>
    1190:	e50b0008 	str	r0, [fp, #-8]
    1194:	e51b3008 	ldr	r3, [fp, #-8]
    1198:	e3730001 	cmn	r3, #1
    119c:	1a000001 	bne	11a8 <morecore+0x4c>
    11a0:	e3a03000 	mov	r3, #0
    11a4:	ea00000a 	b	11d4 <morecore+0x78>
    11a8:	e51b3008 	ldr	r3, [fp, #-8]
    11ac:	e50b300c 	str	r3, [fp, #-12]
    11b0:	e51b300c 	ldr	r3, [fp, #-12]
    11b4:	e51b2010 	ldr	r2, [fp, #-16]
    11b8:	e5832004 	str	r2, [r3, #4]
    11bc:	e51b300c 	ldr	r3, [fp, #-12]
    11c0:	e2833008 	add	r3, r3, #8
    11c4:	e1a00003 	mov	r0, r3
    11c8:	ebffff84 	bl	fe0 <free>
    11cc:	e59f300c 	ldr	r3, [pc, #12]	@ 11e0 <morecore+0x84>
    11d0:	e5933000 	ldr	r3, [r3]
    11d4:	e1a00003 	mov	r0, r3
    11d8:	e24bd004 	sub	sp, fp, #4
    11dc:	e8bd8800 	pop	{fp, pc}
    11e0:	00001644 	.word	0x00001644

000011e4 <malloc>:
    11e4:	e92d4800 	push	{fp, lr}
    11e8:	e28db004 	add	fp, sp, #4
    11ec:	e24dd018 	sub	sp, sp, #24
    11f0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    11f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11f8:	e2833007 	add	r3, r3, #7
    11fc:	e1a031a3 	lsr	r3, r3, #3
    1200:	e2833001 	add	r3, r3, #1
    1204:	e50b3010 	str	r3, [fp, #-16]
    1208:	e59f3134 	ldr	r3, [pc, #308]	@ 1344 <malloc+0x160>
    120c:	e5933000 	ldr	r3, [r3]
    1210:	e50b300c 	str	r3, [fp, #-12]
    1214:	e51b300c 	ldr	r3, [fp, #-12]
    1218:	e3530000 	cmp	r3, #0
    121c:	1a00000b 	bne	1250 <malloc+0x6c>
    1220:	e59f3120 	ldr	r3, [pc, #288]	@ 1348 <malloc+0x164>
    1224:	e50b300c 	str	r3, [fp, #-12]
    1228:	e59f2114 	ldr	r2, [pc, #276]	@ 1344 <malloc+0x160>
    122c:	e51b300c 	ldr	r3, [fp, #-12]
    1230:	e5823000 	str	r3, [r2]
    1234:	e59f3108 	ldr	r3, [pc, #264]	@ 1344 <malloc+0x160>
    1238:	e5933000 	ldr	r3, [r3]
    123c:	e59f2104 	ldr	r2, [pc, #260]	@ 1348 <malloc+0x164>
    1240:	e5823000 	str	r3, [r2]
    1244:	e59f30fc 	ldr	r3, [pc, #252]	@ 1348 <malloc+0x164>
    1248:	e3a02000 	mov	r2, #0
    124c:	e5832004 	str	r2, [r3, #4]
    1250:	e51b300c 	ldr	r3, [fp, #-12]
    1254:	e5933000 	ldr	r3, [r3]
    1258:	e50b3008 	str	r3, [fp, #-8]
    125c:	e51b3008 	ldr	r3, [fp, #-8]
    1260:	e5933004 	ldr	r3, [r3, #4]
    1264:	e51b2010 	ldr	r2, [fp, #-16]
    1268:	e1520003 	cmp	r2, r3
    126c:	8a00001e 	bhi	12ec <malloc+0x108>
    1270:	e51b3008 	ldr	r3, [fp, #-8]
    1274:	e5933004 	ldr	r3, [r3, #4]
    1278:	e51b2010 	ldr	r2, [fp, #-16]
    127c:	e1520003 	cmp	r2, r3
    1280:	1a000004 	bne	1298 <malloc+0xb4>
    1284:	e51b3008 	ldr	r3, [fp, #-8]
    1288:	e5932000 	ldr	r2, [r3]
    128c:	e51b300c 	ldr	r3, [fp, #-12]
    1290:	e5832000 	str	r2, [r3]
    1294:	ea00000e 	b	12d4 <malloc+0xf0>
    1298:	e51b3008 	ldr	r3, [fp, #-8]
    129c:	e5932004 	ldr	r2, [r3, #4]
    12a0:	e51b3010 	ldr	r3, [fp, #-16]
    12a4:	e0422003 	sub	r2, r2, r3
    12a8:	e51b3008 	ldr	r3, [fp, #-8]
    12ac:	e5832004 	str	r2, [r3, #4]
    12b0:	e51b3008 	ldr	r3, [fp, #-8]
    12b4:	e5933004 	ldr	r3, [r3, #4]
    12b8:	e1a03183 	lsl	r3, r3, #3
    12bc:	e51b2008 	ldr	r2, [fp, #-8]
    12c0:	e0823003 	add	r3, r2, r3
    12c4:	e50b3008 	str	r3, [fp, #-8]
    12c8:	e51b3008 	ldr	r3, [fp, #-8]
    12cc:	e51b2010 	ldr	r2, [fp, #-16]
    12d0:	e5832004 	str	r2, [r3, #4]
    12d4:	e59f2068 	ldr	r2, [pc, #104]	@ 1344 <malloc+0x160>
    12d8:	e51b300c 	ldr	r3, [fp, #-12]
    12dc:	e5823000 	str	r3, [r2]
    12e0:	e51b3008 	ldr	r3, [fp, #-8]
    12e4:	e2833008 	add	r3, r3, #8
    12e8:	ea000012 	b	1338 <malloc+0x154>
    12ec:	e59f3050 	ldr	r3, [pc, #80]	@ 1344 <malloc+0x160>
    12f0:	e5933000 	ldr	r3, [r3]
    12f4:	e51b2008 	ldr	r2, [fp, #-8]
    12f8:	e1520003 	cmp	r2, r3
    12fc:	1a000007 	bne	1320 <malloc+0x13c>
    1300:	e51b0010 	ldr	r0, [fp, #-16]
    1304:	ebffff94 	bl	115c <morecore>
    1308:	e50b0008 	str	r0, [fp, #-8]
    130c:	e51b3008 	ldr	r3, [fp, #-8]
    1310:	e3530000 	cmp	r3, #0
    1314:	1a000001 	bne	1320 <malloc+0x13c>
    1318:	e3a03000 	mov	r3, #0
    131c:	ea000005 	b	1338 <malloc+0x154>
    1320:	e51b3008 	ldr	r3, [fp, #-8]
    1324:	e50b300c 	str	r3, [fp, #-12]
    1328:	e51b3008 	ldr	r3, [fp, #-8]
    132c:	e5933000 	ldr	r3, [r3]
    1330:	e50b3008 	str	r3, [fp, #-8]
    1334:	eaffffc8 	b	125c <malloc+0x78>
    1338:	e1a00003 	mov	r0, r3
    133c:	e24bd004 	sub	sp, fp, #4
    1340:	e8bd8800 	pop	{fp, pc}
    1344:	00001644 	.word	0x00001644
    1348:	0000163c 	.word	0x0000163c

0000134c <__udivsi3>:
    134c:	e2512001 	subs	r2, r1, #1
    1350:	012fff1e 	bxeq	lr
    1354:	3a000036 	bcc	1434 <__udivsi3+0xe8>
    1358:	e1500001 	cmp	r0, r1
    135c:	9a000022 	bls	13ec <__udivsi3+0xa0>
    1360:	e1110002 	tst	r1, r2
    1364:	0a000023 	beq	13f8 <__udivsi3+0xac>
    1368:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    136c:	01a01181 	lsleq	r1, r1, #3
    1370:	03a03008 	moveq	r3, #8
    1374:	13a03001 	movne	r3, #1
    1378:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    137c:	31510000 	cmpcc	r1, r0
    1380:	31a01201 	lslcc	r1, r1, #4
    1384:	31a03203 	lslcc	r3, r3, #4
    1388:	3afffffa 	bcc	1378 <__udivsi3+0x2c>
    138c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1390:	31510000 	cmpcc	r1, r0
    1394:	31a01081 	lslcc	r1, r1, #1
    1398:	31a03083 	lslcc	r3, r3, #1
    139c:	3afffffa 	bcc	138c <__udivsi3+0x40>
    13a0:	e3a02000 	mov	r2, #0
    13a4:	e1500001 	cmp	r0, r1
    13a8:	20400001 	subcs	r0, r0, r1
    13ac:	21822003 	orrcs	r2, r2, r3
    13b0:	e15000a1 	cmp	r0, r1, lsr #1
    13b4:	204000a1 	subcs	r0, r0, r1, lsr #1
    13b8:	218220a3 	orrcs	r2, r2, r3, lsr #1
    13bc:	e1500121 	cmp	r0, r1, lsr #2
    13c0:	20400121 	subcs	r0, r0, r1, lsr #2
    13c4:	21822123 	orrcs	r2, r2, r3, lsr #2
    13c8:	e15001a1 	cmp	r0, r1, lsr #3
    13cc:	204001a1 	subcs	r0, r0, r1, lsr #3
    13d0:	218221a3 	orrcs	r2, r2, r3, lsr #3
    13d4:	e3500000 	cmp	r0, #0
    13d8:	11b03223 	lsrsne	r3, r3, #4
    13dc:	11a01221 	lsrne	r1, r1, #4
    13e0:	1affffef 	bne	13a4 <__udivsi3+0x58>
    13e4:	e1a00002 	mov	r0, r2
    13e8:	e12fff1e 	bx	lr
    13ec:	03a00001 	moveq	r0, #1
    13f0:	13a00000 	movne	r0, #0
    13f4:	e12fff1e 	bx	lr
    13f8:	e3510801 	cmp	r1, #65536	@ 0x10000
    13fc:	21a01821 	lsrcs	r1, r1, #16
    1400:	23a02010 	movcs	r2, #16
    1404:	33a02000 	movcc	r2, #0
    1408:	e3510c01 	cmp	r1, #256	@ 0x100
    140c:	21a01421 	lsrcs	r1, r1, #8
    1410:	22822008 	addcs	r2, r2, #8
    1414:	e3510010 	cmp	r1, #16
    1418:	21a01221 	lsrcs	r1, r1, #4
    141c:	22822004 	addcs	r2, r2, #4
    1420:	e3510004 	cmp	r1, #4
    1424:	82822003 	addhi	r2, r2, #3
    1428:	908220a1 	addls	r2, r2, r1, lsr #1
    142c:	e1a00230 	lsr	r0, r0, r2
    1430:	e12fff1e 	bx	lr
    1434:	e3500000 	cmp	r0, #0
    1438:	13e00000 	mvnne	r0, #0
    143c:	ea000007 	b	1460 <__aeabi_idiv0>

00001440 <__aeabi_uidivmod>:
    1440:	e3510000 	cmp	r1, #0
    1444:	0afffffa 	beq	1434 <__udivsi3+0xe8>
    1448:	e92d4003 	push	{r0, r1, lr}
    144c:	ebffffbe 	bl	134c <__udivsi3>
    1450:	e8bd4006 	pop	{r1, r2, lr}
    1454:	e0030092 	mul	r3, r2, r0
    1458:	e0411003 	sub	r1, r1, r3
    145c:	e12fff1e 	bx	lr

00001460 <__aeabi_idiv0>:
    1460:	e12fff1e 	bx	lr
