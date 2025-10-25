
_pt_test2:     file format elf32-littlearm


Disassembly of section .text:

00000000 <err>:
       0:	e92d4810 	push	{r4, fp, lr}
       4:	e28db008 	add	fp, sp, #8
       8:	e24dd014 	sub	sp, sp, #20
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e59f3024 	ldr	r3, [pc, #36]	@ 3c <err+0x3c>
      14:	e5934000 	ldr	r4, [r3]
      18:	eb000379 	bl	e04 <getpid>
      1c:	e1a03000 	mov	r3, r0
      20:	e58d3000 	str	r3, [sp]
      24:	e51b3010 	ldr	r3, [fp, #-16]
      28:	e1a02004 	mov	r2, r4
      2c:	e59f100c 	ldr	r1, [pc, #12]	@ 40 <err+0x40>
      30:	e3a00001 	mov	r0, #1
      34:	eb000479 	bl	1220 <printf>
      38:	eb0002e1 	bl	bc4 <exit>
      3c:	00001b88 	.word	0x00001b88
      40:	000018e0 	.word	0x000018e0

00000044 <touch_page>:
      44:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      48:	e28db000 	add	fp, sp, #0
      4c:	e24dd014 	sub	sp, sp, #20
      50:	e50b0010 	str	r0, [fp, #-16]
      54:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      58:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      5c:	e3530000 	cmp	r3, #0
      60:	0a000003 	beq	74 <touch_page+0x30>
      64:	e51b3010 	ldr	r3, [fp, #-16]
      68:	e3a0202a 	mov	r2, #42	@ 0x2a
      6c:	e5c32000 	strb	r2, [r3]
      70:	ea000003 	b	84 <touch_page+0x40>
      74:	e51b3010 	ldr	r3, [fp, #-16]
      78:	e5d33000 	ldrb	r3, [r3]
      7c:	e54b3005 	strb	r3, [fp, #-5]
      80:	e55b3005 	ldrb	r3, [fp, #-5]
      84:	e1a00000 	nop			@ (mov r0, r0)
      88:	e28bd000 	add	sp, fp, #0
      8c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      90:	e12fff1e 	bx	lr

00000094 <read_trigger_test>:
      94:	e92d4800 	push	{fp, lr}
      98:	e28db004 	add	fp, sp, #4
      9c:	e24dd010 	sub	sp, sp, #16
      a0:	e50b0010 	str	r0, [fp, #-16]
      a4:	e59f1084 	ldr	r1, [pc, #132]	@ 130 <read_trigger_test+0x9c>
      a8:	e3a00001 	mov	r0, #1
      ac:	eb00045b 	bl	1220 <printf>
      b0:	e59f307c 	ldr	r3, [pc, #124]	@ 134 <read_trigger_test+0xa0>
      b4:	e59f207c 	ldr	r2, [pc, #124]	@ 138 <read_trigger_test+0xa4>
      b8:	e5832000 	str	r2, [r3]
      bc:	e3a03000 	mov	r3, #0
      c0:	e50b3008 	str	r3, [fp, #-8]
      c4:	ea000010 	b	10c <read_trigger_test+0x78>
      c8:	e51b3008 	ldr	r3, [fp, #-8]
      cc:	e1a03603 	lsl	r3, r3, #12
      d0:	e1a02003 	mov	r2, r3
      d4:	e51b3010 	ldr	r3, [fp, #-16]
      d8:	e0833002 	add	r3, r3, r2
      dc:	e50b300c 	str	r3, [fp, #-12]
      e0:	e3a01000 	mov	r1, #0
      e4:	e51b000c 	ldr	r0, [fp, #-12]
      e8:	ebffffd5 	bl	44 <touch_page>
      ec:	e51b300c 	ldr	r3, [fp, #-12]
      f0:	e51b2008 	ldr	r2, [fp, #-8]
      f4:	e59f1040 	ldr	r1, [pc, #64]	@ 13c <read_trigger_test+0xa8>
      f8:	e3a00001 	mov	r0, #1
      fc:	eb000447 	bl	1220 <printf>
     100:	e51b3008 	ldr	r3, [fp, #-8]
     104:	e2833001 	add	r3, r3, #1
     108:	e50b3008 	str	r3, [fp, #-8]
     10c:	e51b3008 	ldr	r3, [fp, #-8]
     110:	e353000f 	cmp	r3, #15
     114:	daffffeb 	ble	c8 <read_trigger_test+0x34>
     118:	e59f1020 	ldr	r1, [pc, #32]	@ 140 <read_trigger_test+0xac>
     11c:	e3a00001 	mov	r0, #1
     120:	eb00043e 	bl	1220 <printf>
     124:	e1a00000 	nop			@ (mov r0, r0)
     128:	e24bd004 	sub	sp, fp, #4
     12c:	e8bd8800 	pop	{fp, pc}
     130:	00001908 	.word	0x00001908
     134:	00001b88 	.word	0x00001b88
     138:	00001924 	.word	0x00001924
     13c:	00001938 	.word	0x00001938
     140:	00001950 	.word	0x00001950

00000144 <write_trigger_test>:
     144:	e92d4800 	push	{fp, lr}
     148:	e28db004 	add	fp, sp, #4
     14c:	e24dd010 	sub	sp, sp, #16
     150:	e50b0010 	str	r0, [fp, #-16]
     154:	e59f1084 	ldr	r1, [pc, #132]	@ 1e0 <write_trigger_test+0x9c>
     158:	e3a00001 	mov	r0, #1
     15c:	eb00042f 	bl	1220 <printf>
     160:	e59f307c 	ldr	r3, [pc, #124]	@ 1e4 <write_trigger_test+0xa0>
     164:	e59f207c 	ldr	r2, [pc, #124]	@ 1e8 <write_trigger_test+0xa4>
     168:	e5832000 	str	r2, [r3]
     16c:	e3a03000 	mov	r3, #0
     170:	e50b3008 	str	r3, [fp, #-8]
     174:	ea000010 	b	1bc <write_trigger_test+0x78>
     178:	e51b3008 	ldr	r3, [fp, #-8]
     17c:	e1a03603 	lsl	r3, r3, #12
     180:	e1a02003 	mov	r2, r3
     184:	e51b3010 	ldr	r3, [fp, #-16]
     188:	e0833002 	add	r3, r3, r2
     18c:	e50b300c 	str	r3, [fp, #-12]
     190:	e3a01001 	mov	r1, #1
     194:	e51b000c 	ldr	r0, [fp, #-12]
     198:	ebffffa9 	bl	44 <touch_page>
     19c:	e51b300c 	ldr	r3, [fp, #-12]
     1a0:	e51b2008 	ldr	r2, [fp, #-8]
     1a4:	e59f1040 	ldr	r1, [pc, #64]	@ 1ec <write_trigger_test+0xa8>
     1a8:	e3a00001 	mov	r0, #1
     1ac:	eb00041b 	bl	1220 <printf>
     1b0:	e51b3008 	ldr	r3, [fp, #-8]
     1b4:	e2833001 	add	r3, r3, #1
     1b8:	e50b3008 	str	r3, [fp, #-8]
     1bc:	e51b3008 	ldr	r3, [fp, #-8]
     1c0:	e353000f 	cmp	r3, #15
     1c4:	daffffeb 	ble	178 <write_trigger_test+0x34>
     1c8:	e59f1020 	ldr	r1, [pc, #32]	@ 1f0 <write_trigger_test+0xac>
     1cc:	e3a00001 	mov	r0, #1
     1d0:	eb000412 	bl	1220 <printf>
     1d4:	e1a00000 	nop			@ (mov r0, r0)
     1d8:	e24bd004 	sub	sp, fp, #4
     1dc:	e8bd8800 	pop	{fp, pc}
     1e0:	00001968 	.word	0x00001968
     1e4:	00001b88 	.word	0x00001b88
     1e8:	00001988 	.word	0x00001988
     1ec:	0000199c 	.word	0x0000199c
     1f0:	000019b4 	.word	0x000019b4

000001f4 <fork_isolation_test>:
     1f4:	e92d4800 	push	{fp, lr}
     1f8:	e28db004 	add	fp, sp, #4
     1fc:	e24dd018 	sub	sp, sp, #24
     200:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     204:	e59f1100 	ldr	r1, [pc, #256]	@ 30c <fork_isolation_test+0x118>
     208:	e3a00001 	mov	r0, #1
     20c:	eb000403 	bl	1220 <printf>
     210:	e59f30f8 	ldr	r3, [pc, #248]	@ 310 <fork_isolation_test+0x11c>
     214:	e59f20f8 	ldr	r2, [pc, #248]	@ 314 <fork_isolation_test+0x120>
     218:	e5832000 	str	r2, [r3]
     21c:	eb00025f 	bl	ba0 <fork>
     220:	e50b0010 	str	r0, [fp, #-16]
     224:	e51b3010 	ldr	r3, [fp, #-16]
     228:	e3530000 	cmp	r3, #0
     22c:	aa000001 	bge	238 <fork_isolation_test+0x44>
     230:	e59f00e0 	ldr	r0, [pc, #224]	@ 318 <fork_isolation_test+0x124>
     234:	ebffff71 	bl	0 <err>
     238:	e51b3010 	ldr	r3, [fp, #-16]
     23c:	e3530000 	cmp	r3, #0
     240:	1a000014 	bne	298 <fork_isolation_test+0xa4>
     244:	e3a03000 	mov	r3, #0
     248:	e50b3008 	str	r3, [fp, #-8]
     24c:	ea00000a 	b	27c <fork_isolation_test+0x88>
     250:	e51b3008 	ldr	r3, [fp, #-8]
     254:	e1a03603 	lsl	r3, r3, #12
     258:	e1a02003 	mov	r2, r3
     25c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     260:	e0833002 	add	r3, r3, r2
     264:	e51b2008 	ldr	r2, [fp, #-8]
     268:	e6ef2072 	uxtb	r2, r2
     26c:	e5c32000 	strb	r2, [r3]
     270:	e51b3008 	ldr	r3, [fp, #-8]
     274:	e2833001 	add	r3, r3, #1
     278:	e50b3008 	str	r3, [fp, #-8]
     27c:	e51b3008 	ldr	r3, [fp, #-8]
     280:	e353000f 	cmp	r3, #15
     284:	dafffff1 	ble	250 <fork_isolation_test+0x5c>
     288:	e59f108c 	ldr	r1, [pc, #140]	@ 31c <fork_isolation_test+0x128>
     28c:	e3a00001 	mov	r0, #1
     290:	eb0003e2 	bl	1220 <printf>
     294:	eb00024a 	bl	bc4 <exit>
     298:	eb000252 	bl	be8 <wait>
     29c:	e3a03000 	mov	r3, #0
     2a0:	e50b300c 	str	r3, [fp, #-12]
     2a4:	ea00000c 	b	2dc <fork_isolation_test+0xe8>
     2a8:	e51b300c 	ldr	r3, [fp, #-12]
     2ac:	e1a03603 	lsl	r3, r3, #12
     2b0:	e1a02003 	mov	r2, r3
     2b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2b8:	e0833002 	add	r3, r3, r2
     2bc:	e5d33000 	ldrb	r3, [r3]
     2c0:	e353002a 	cmp	r3, #42	@ 0x2a
     2c4:	0a000001 	beq	2d0 <fork_isolation_test+0xdc>
     2c8:	e59f0050 	ldr	r0, [pc, #80]	@ 320 <fork_isolation_test+0x12c>
     2cc:	ebffff4b 	bl	0 <err>
     2d0:	e51b300c 	ldr	r3, [fp, #-12]
     2d4:	e2833001 	add	r3, r3, #1
     2d8:	e50b300c 	str	r3, [fp, #-12]
     2dc:	e51b300c 	ldr	r3, [fp, #-12]
     2e0:	e353000f 	cmp	r3, #15
     2e4:	daffffef 	ble	2a8 <fork_isolation_test+0xb4>
     2e8:	e59f1034 	ldr	r1, [pc, #52]	@ 324 <fork_isolation_test+0x130>
     2ec:	e3a00001 	mov	r0, #1
     2f0:	eb0003ca 	bl	1220 <printf>
     2f4:	e59f102c 	ldr	r1, [pc, #44]	@ 328 <fork_isolation_test+0x134>
     2f8:	e3a00001 	mov	r0, #1
     2fc:	eb0003c7 	bl	1220 <printf>
     300:	e1a00000 	nop			@ (mov r0, r0)
     304:	e24bd004 	sub	sp, fp, #4
     308:	e8bd8800 	pop	{fp, pc}
     30c:	000019cc 	.word	0x000019cc
     310:	00001b88 	.word	0x00001b88
     314:	000019ec 	.word	0x000019ec
     318:	00001a00 	.word	0x00001a00
     31c:	00001a0c 	.word	0x00001a0c
     320:	00001a2c 	.word	0x00001a2c
     324:	00001a58 	.word	0x00001a58
     328:	00001a78 	.word	0x00001a78

0000032c <ondemand_sbrk_test>:
     32c:	e92d4800 	push	{fp, lr}
     330:	e28db004 	add	fp, sp, #4
     334:	e24dd008 	sub	sp, sp, #8
     338:	e59f1084 	ldr	r1, [pc, #132]	@ 3c4 <ondemand_sbrk_test+0x98>
     33c:	e3a00001 	mov	r0, #1
     340:	eb0003b6 	bl	1220 <printf>
     344:	e59f307c 	ldr	r3, [pc, #124]	@ 3c8 <ondemand_sbrk_test+0x9c>
     348:	e59f207c 	ldr	r2, [pc, #124]	@ 3cc <ondemand_sbrk_test+0xa0>
     34c:	e5832000 	str	r2, [r3]
     350:	e3a00801 	mov	r0, #65536	@ 0x10000
     354:	eb0002b3 	bl	e28 <sbrk>
     358:	e50b0008 	str	r0, [fp, #-8]
     35c:	e51b3008 	ldr	r3, [fp, #-8]
     360:	e3730001 	cmn	r3, #1
     364:	1a000001 	bne	370 <ondemand_sbrk_test+0x44>
     368:	e59f0060 	ldr	r0, [pc, #96]	@ 3d0 <ondemand_sbrk_test+0xa4>
     36c:	ebffff23 	bl	0 <err>
     370:	e3a03801 	mov	r3, #65536	@ 0x10000
     374:	e3a02010 	mov	r2, #16
     378:	e59f1054 	ldr	r1, [pc, #84]	@ 3d4 <ondemand_sbrk_test+0xa8>
     37c:	e3a00001 	mov	r0, #1
     380:	eb0003a6 	bl	1220 <printf>
     384:	e51b2008 	ldr	r2, [fp, #-8]
     388:	e59f1048 	ldr	r1, [pc, #72]	@ 3d8 <ondemand_sbrk_test+0xac>
     38c:	e3a00001 	mov	r0, #1
     390:	eb0003a2 	bl	1220 <printf>
     394:	e51b0008 	ldr	r0, [fp, #-8]
     398:	ebffff3d 	bl	94 <read_trigger_test>
     39c:	e51b0008 	ldr	r0, [fp, #-8]
     3a0:	ebffff67 	bl	144 <write_trigger_test>
     3a4:	e51b0008 	ldr	r0, [fp, #-8]
     3a8:	ebffff91 	bl	1f4 <fork_isolation_test>
     3ac:	e59f1028 	ldr	r1, [pc, #40]	@ 3dc <ondemand_sbrk_test+0xb0>
     3b0:	e3a00001 	mov	r0, #1
     3b4:	eb000399 	bl	1220 <printf>
     3b8:	e1a00000 	nop			@ (mov r0, r0)
     3bc:	e24bd004 	sub	sp, fp, #4
     3c0:	e8bd8800 	pop	{fp, pc}
     3c4:	00001a94 	.word	0x00001a94
     3c8:	00001b88 	.word	0x00001b88
     3cc:	00001ab4 	.word	0x00001ab4
     3d0:	00001ac8 	.word	0x00001ac8
     3d4:	00001ad4 	.word	0x00001ad4
     3d8:	00001afc 	.word	0x00001afc
     3dc:	00001b10 	.word	0x00001b10

000003e0 <main>:
     3e0:	e92d4800 	push	{fp, lr}
     3e4:	e28db004 	add	fp, sp, #4
     3e8:	e24dd008 	sub	sp, sp, #8
     3ec:	e50b0008 	str	r0, [fp, #-8]
     3f0:	e50b100c 	str	r1, [fp, #-12]
     3f4:	e59f1018 	ldr	r1, [pc, #24]	@ 414 <main+0x34>
     3f8:	e3a00001 	mov	r0, #1
     3fc:	eb000387 	bl	1220 <printf>
     400:	ebffffc9 	bl	32c <ondemand_sbrk_test>
     404:	e59f100c 	ldr	r1, [pc, #12]	@ 418 <main+0x38>
     408:	e3a00001 	mov	r0, #1
     40c:	eb000383 	bl	1220 <printf>
     410:	eb0001eb 	bl	bc4 <exit>
     414:	00001b28 	.word	0x00001b28
     418:	00001b58 	.word	0x00001b58

0000041c <strcpy>:
     41c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     420:	e28db000 	add	fp, sp, #0
     424:	e24dd014 	sub	sp, sp, #20
     428:	e50b0010 	str	r0, [fp, #-16]
     42c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     430:	e51b3010 	ldr	r3, [fp, #-16]
     434:	e50b3008 	str	r3, [fp, #-8]
     438:	e1a00000 	nop			@ (mov r0, r0)
     43c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     440:	e2823001 	add	r3, r2, #1
     444:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     448:	e51b3010 	ldr	r3, [fp, #-16]
     44c:	e2831001 	add	r1, r3, #1
     450:	e50b1010 	str	r1, [fp, #-16]
     454:	e5d22000 	ldrb	r2, [r2]
     458:	e5c32000 	strb	r2, [r3]
     45c:	e5d33000 	ldrb	r3, [r3]
     460:	e3530000 	cmp	r3, #0
     464:	1afffff4 	bne	43c <strcpy+0x20>
     468:	e51b3008 	ldr	r3, [fp, #-8]
     46c:	e1a00003 	mov	r0, r3
     470:	e28bd000 	add	sp, fp, #0
     474:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     478:	e12fff1e 	bx	lr

0000047c <strcmp>:
     47c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     480:	e28db000 	add	fp, sp, #0
     484:	e24dd00c 	sub	sp, sp, #12
     488:	e50b0008 	str	r0, [fp, #-8]
     48c:	e50b100c 	str	r1, [fp, #-12]
     490:	ea000005 	b	4ac <strcmp+0x30>
     494:	e51b3008 	ldr	r3, [fp, #-8]
     498:	e2833001 	add	r3, r3, #1
     49c:	e50b3008 	str	r3, [fp, #-8]
     4a0:	e51b300c 	ldr	r3, [fp, #-12]
     4a4:	e2833001 	add	r3, r3, #1
     4a8:	e50b300c 	str	r3, [fp, #-12]
     4ac:	e51b3008 	ldr	r3, [fp, #-8]
     4b0:	e5d33000 	ldrb	r3, [r3]
     4b4:	e3530000 	cmp	r3, #0
     4b8:	0a000005 	beq	4d4 <strcmp+0x58>
     4bc:	e51b3008 	ldr	r3, [fp, #-8]
     4c0:	e5d32000 	ldrb	r2, [r3]
     4c4:	e51b300c 	ldr	r3, [fp, #-12]
     4c8:	e5d33000 	ldrb	r3, [r3]
     4cc:	e1520003 	cmp	r2, r3
     4d0:	0affffef 	beq	494 <strcmp+0x18>
     4d4:	e51b3008 	ldr	r3, [fp, #-8]
     4d8:	e5d33000 	ldrb	r3, [r3]
     4dc:	e1a02003 	mov	r2, r3
     4e0:	e51b300c 	ldr	r3, [fp, #-12]
     4e4:	e5d33000 	ldrb	r3, [r3]
     4e8:	e0423003 	sub	r3, r2, r3
     4ec:	e1a00003 	mov	r0, r3
     4f0:	e28bd000 	add	sp, fp, #0
     4f4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4f8:	e12fff1e 	bx	lr

000004fc <strlen>:
     4fc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     500:	e28db000 	add	fp, sp, #0
     504:	e24dd014 	sub	sp, sp, #20
     508:	e50b0010 	str	r0, [fp, #-16]
     50c:	e3a03000 	mov	r3, #0
     510:	e50b3008 	str	r3, [fp, #-8]
     514:	ea000002 	b	524 <strlen+0x28>
     518:	e51b3008 	ldr	r3, [fp, #-8]
     51c:	e2833001 	add	r3, r3, #1
     520:	e50b3008 	str	r3, [fp, #-8]
     524:	e51b3008 	ldr	r3, [fp, #-8]
     528:	e51b2010 	ldr	r2, [fp, #-16]
     52c:	e0823003 	add	r3, r2, r3
     530:	e5d33000 	ldrb	r3, [r3]
     534:	e3530000 	cmp	r3, #0
     538:	1afffff6 	bne	518 <strlen+0x1c>
     53c:	e51b3008 	ldr	r3, [fp, #-8]
     540:	e1a00003 	mov	r0, r3
     544:	e28bd000 	add	sp, fp, #0
     548:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     54c:	e12fff1e 	bx	lr

00000550 <memset>:
     550:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     554:	e28db000 	add	fp, sp, #0
     558:	e24dd024 	sub	sp, sp, #36	@ 0x24
     55c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     560:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     564:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     568:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     56c:	e50b3008 	str	r3, [fp, #-8]
     570:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     574:	e54b300d 	strb	r3, [fp, #-13]
     578:	e55b200d 	ldrb	r2, [fp, #-13]
     57c:	e1a03002 	mov	r3, r2
     580:	e1a03403 	lsl	r3, r3, #8
     584:	e0833002 	add	r3, r3, r2
     588:	e1a03803 	lsl	r3, r3, #16
     58c:	e1a02003 	mov	r2, r3
     590:	e55b300d 	ldrb	r3, [fp, #-13]
     594:	e1a03403 	lsl	r3, r3, #8
     598:	e1822003 	orr	r2, r2, r3
     59c:	e55b300d 	ldrb	r3, [fp, #-13]
     5a0:	e1823003 	orr	r3, r2, r3
     5a4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     5a8:	ea000008 	b	5d0 <memset+0x80>
     5ac:	e51b3008 	ldr	r3, [fp, #-8]
     5b0:	e55b200d 	ldrb	r2, [fp, #-13]
     5b4:	e5c32000 	strb	r2, [r3]
     5b8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     5bc:	e2433001 	sub	r3, r3, #1
     5c0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     5c4:	e51b3008 	ldr	r3, [fp, #-8]
     5c8:	e2833001 	add	r3, r3, #1
     5cc:	e50b3008 	str	r3, [fp, #-8]
     5d0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     5d4:	e3530000 	cmp	r3, #0
     5d8:	0a000003 	beq	5ec <memset+0x9c>
     5dc:	e51b3008 	ldr	r3, [fp, #-8]
     5e0:	e2033003 	and	r3, r3, #3
     5e4:	e3530000 	cmp	r3, #0
     5e8:	1affffef 	bne	5ac <memset+0x5c>
     5ec:	e51b3008 	ldr	r3, [fp, #-8]
     5f0:	e50b300c 	str	r3, [fp, #-12]
     5f4:	ea000008 	b	61c <memset+0xcc>
     5f8:	e51b300c 	ldr	r3, [fp, #-12]
     5fc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     600:	e5832000 	str	r2, [r3]
     604:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     608:	e2433004 	sub	r3, r3, #4
     60c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     610:	e51b300c 	ldr	r3, [fp, #-12]
     614:	e2833004 	add	r3, r3, #4
     618:	e50b300c 	str	r3, [fp, #-12]
     61c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     620:	e3530003 	cmp	r3, #3
     624:	8afffff3 	bhi	5f8 <memset+0xa8>
     628:	e51b300c 	ldr	r3, [fp, #-12]
     62c:	e50b3008 	str	r3, [fp, #-8]
     630:	ea000008 	b	658 <memset+0x108>
     634:	e51b3008 	ldr	r3, [fp, #-8]
     638:	e55b200d 	ldrb	r2, [fp, #-13]
     63c:	e5c32000 	strb	r2, [r3]
     640:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     644:	e2433001 	sub	r3, r3, #1
     648:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     64c:	e51b3008 	ldr	r3, [fp, #-8]
     650:	e2833001 	add	r3, r3, #1
     654:	e50b3008 	str	r3, [fp, #-8]
     658:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     65c:	e3530000 	cmp	r3, #0
     660:	1afffff3 	bne	634 <memset+0xe4>
     664:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     668:	e1a00003 	mov	r0, r3
     66c:	e28bd000 	add	sp, fp, #0
     670:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     674:	e12fff1e 	bx	lr

00000678 <strchr>:
     678:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     67c:	e28db000 	add	fp, sp, #0
     680:	e24dd00c 	sub	sp, sp, #12
     684:	e50b0008 	str	r0, [fp, #-8]
     688:	e1a03001 	mov	r3, r1
     68c:	e54b3009 	strb	r3, [fp, #-9]
     690:	ea000009 	b	6bc <strchr+0x44>
     694:	e51b3008 	ldr	r3, [fp, #-8]
     698:	e5d33000 	ldrb	r3, [r3]
     69c:	e55b2009 	ldrb	r2, [fp, #-9]
     6a0:	e1520003 	cmp	r2, r3
     6a4:	1a000001 	bne	6b0 <strchr+0x38>
     6a8:	e51b3008 	ldr	r3, [fp, #-8]
     6ac:	ea000007 	b	6d0 <strchr+0x58>
     6b0:	e51b3008 	ldr	r3, [fp, #-8]
     6b4:	e2833001 	add	r3, r3, #1
     6b8:	e50b3008 	str	r3, [fp, #-8]
     6bc:	e51b3008 	ldr	r3, [fp, #-8]
     6c0:	e5d33000 	ldrb	r3, [r3]
     6c4:	e3530000 	cmp	r3, #0
     6c8:	1afffff1 	bne	694 <strchr+0x1c>
     6cc:	e3a03000 	mov	r3, #0
     6d0:	e1a00003 	mov	r0, r3
     6d4:	e28bd000 	add	sp, fp, #0
     6d8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6dc:	e12fff1e 	bx	lr

000006e0 <gets>:
     6e0:	e92d4800 	push	{fp, lr}
     6e4:	e28db004 	add	fp, sp, #4
     6e8:	e24dd018 	sub	sp, sp, #24
     6ec:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     6f0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     6f4:	e3a03000 	mov	r3, #0
     6f8:	e50b3008 	str	r3, [fp, #-8]
     6fc:	ea000016 	b	75c <gets+0x7c>
     700:	e24b300d 	sub	r3, fp, #13
     704:	e3a02001 	mov	r2, #1
     708:	e1a01003 	mov	r1, r3
     70c:	e3a00000 	mov	r0, #0
     710:	eb000146 	bl	c30 <read>
     714:	e50b000c 	str	r0, [fp, #-12]
     718:	e51b300c 	ldr	r3, [fp, #-12]
     71c:	e3530000 	cmp	r3, #0
     720:	da000013 	ble	774 <gets+0x94>
     724:	e51b3008 	ldr	r3, [fp, #-8]
     728:	e2832001 	add	r2, r3, #1
     72c:	e50b2008 	str	r2, [fp, #-8]
     730:	e1a02003 	mov	r2, r3
     734:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     738:	e0833002 	add	r3, r3, r2
     73c:	e55b200d 	ldrb	r2, [fp, #-13]
     740:	e5c32000 	strb	r2, [r3]
     744:	e55b300d 	ldrb	r3, [fp, #-13]
     748:	e353000a 	cmp	r3, #10
     74c:	0a000009 	beq	778 <gets+0x98>
     750:	e55b300d 	ldrb	r3, [fp, #-13]
     754:	e353000d 	cmp	r3, #13
     758:	0a000006 	beq	778 <gets+0x98>
     75c:	e51b3008 	ldr	r3, [fp, #-8]
     760:	e2833001 	add	r3, r3, #1
     764:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     768:	e1520003 	cmp	r2, r3
     76c:	caffffe3 	bgt	700 <gets+0x20>
     770:	ea000000 	b	778 <gets+0x98>
     774:	e1a00000 	nop			@ (mov r0, r0)
     778:	e51b3008 	ldr	r3, [fp, #-8]
     77c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     780:	e0823003 	add	r3, r2, r3
     784:	e3a02000 	mov	r2, #0
     788:	e5c32000 	strb	r2, [r3]
     78c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     790:	e1a00003 	mov	r0, r3
     794:	e24bd004 	sub	sp, fp, #4
     798:	e8bd8800 	pop	{fp, pc}

0000079c <stat>:
     79c:	e92d4800 	push	{fp, lr}
     7a0:	e28db004 	add	fp, sp, #4
     7a4:	e24dd010 	sub	sp, sp, #16
     7a8:	e50b0010 	str	r0, [fp, #-16]
     7ac:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     7b0:	e3a01000 	mov	r1, #0
     7b4:	e51b0010 	ldr	r0, [fp, #-16]
     7b8:	eb000149 	bl	ce4 <open>
     7bc:	e50b0008 	str	r0, [fp, #-8]
     7c0:	e51b3008 	ldr	r3, [fp, #-8]
     7c4:	e3530000 	cmp	r3, #0
     7c8:	aa000001 	bge	7d4 <stat+0x38>
     7cc:	e3e03000 	mvn	r3, #0
     7d0:	ea000006 	b	7f0 <stat+0x54>
     7d4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     7d8:	e51b0008 	ldr	r0, [fp, #-8]
     7dc:	eb00015b 	bl	d50 <fstat>
     7e0:	e50b000c 	str	r0, [fp, #-12]
     7e4:	e51b0008 	ldr	r0, [fp, #-8]
     7e8:	eb000122 	bl	c78 <close>
     7ec:	e51b300c 	ldr	r3, [fp, #-12]
     7f0:	e1a00003 	mov	r0, r3
     7f4:	e24bd004 	sub	sp, fp, #4
     7f8:	e8bd8800 	pop	{fp, pc}

000007fc <atoi>:
     7fc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     800:	e28db000 	add	fp, sp, #0
     804:	e24dd014 	sub	sp, sp, #20
     808:	e50b0010 	str	r0, [fp, #-16]
     80c:	e3a03000 	mov	r3, #0
     810:	e50b3008 	str	r3, [fp, #-8]
     814:	ea00000c 	b	84c <atoi+0x50>
     818:	e51b2008 	ldr	r2, [fp, #-8]
     81c:	e1a03002 	mov	r3, r2
     820:	e1a03103 	lsl	r3, r3, #2
     824:	e0833002 	add	r3, r3, r2
     828:	e1a03083 	lsl	r3, r3, #1
     82c:	e1a01003 	mov	r1, r3
     830:	e51b3010 	ldr	r3, [fp, #-16]
     834:	e2832001 	add	r2, r3, #1
     838:	e50b2010 	str	r2, [fp, #-16]
     83c:	e5d33000 	ldrb	r3, [r3]
     840:	e0813003 	add	r3, r1, r3
     844:	e2433030 	sub	r3, r3, #48	@ 0x30
     848:	e50b3008 	str	r3, [fp, #-8]
     84c:	e51b3010 	ldr	r3, [fp, #-16]
     850:	e5d33000 	ldrb	r3, [r3]
     854:	e353002f 	cmp	r3, #47	@ 0x2f
     858:	9a000003 	bls	86c <atoi+0x70>
     85c:	e51b3010 	ldr	r3, [fp, #-16]
     860:	e5d33000 	ldrb	r3, [r3]
     864:	e3530039 	cmp	r3, #57	@ 0x39
     868:	9affffea 	bls	818 <atoi+0x1c>
     86c:	e51b3010 	ldr	r3, [fp, #-16]
     870:	e5d33000 	ldrb	r3, [r3]
     874:	e3530000 	cmp	r3, #0
     878:	1a000001 	bne	884 <atoi+0x88>
     87c:	e51b3008 	ldr	r3, [fp, #-8]
     880:	ea000000 	b	888 <atoi+0x8c>
     884:	e3e03000 	mvn	r3, #0
     888:	e1a00003 	mov	r0, r3
     88c:	e28bd000 	add	sp, fp, #0
     890:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     894:	e12fff1e 	bx	lr

00000898 <memmove>:
     898:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     89c:	e28db000 	add	fp, sp, #0
     8a0:	e24dd01c 	sub	sp, sp, #28
     8a4:	e50b0010 	str	r0, [fp, #-16]
     8a8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     8ac:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     8b0:	e51b3010 	ldr	r3, [fp, #-16]
     8b4:	e50b3008 	str	r3, [fp, #-8]
     8b8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     8bc:	e50b300c 	str	r3, [fp, #-12]
     8c0:	ea000007 	b	8e4 <memmove+0x4c>
     8c4:	e51b200c 	ldr	r2, [fp, #-12]
     8c8:	e2823001 	add	r3, r2, #1
     8cc:	e50b300c 	str	r3, [fp, #-12]
     8d0:	e51b3008 	ldr	r3, [fp, #-8]
     8d4:	e2831001 	add	r1, r3, #1
     8d8:	e50b1008 	str	r1, [fp, #-8]
     8dc:	e5d22000 	ldrb	r2, [r2]
     8e0:	e5c32000 	strb	r2, [r3]
     8e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     8e8:	e2432001 	sub	r2, r3, #1
     8ec:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     8f0:	e3530000 	cmp	r3, #0
     8f4:	cafffff2 	bgt	8c4 <memmove+0x2c>
     8f8:	e51b3010 	ldr	r3, [fp, #-16]
     8fc:	e1a00003 	mov	r0, r3
     900:	e28bd000 	add	sp, fp, #0
     904:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     908:	e12fff1e 	bx	lr

0000090c <initiateLock>:
     90c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     910:	e28db000 	add	fp, sp, #0
     914:	e24dd00c 	sub	sp, sp, #12
     918:	e50b0008 	str	r0, [fp, #-8]
     91c:	e51b3008 	ldr	r3, [fp, #-8]
     920:	e3a02000 	mov	r2, #0
     924:	e5832000 	str	r2, [r3]
     928:	e51b3008 	ldr	r3, [fp, #-8]
     92c:	e3a02001 	mov	r2, #1
     930:	e5832004 	str	r2, [r3, #4]
     934:	e1a00000 	nop			@ (mov r0, r0)
     938:	e28bd000 	add	sp, fp, #0
     93c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     940:	e12fff1e 	bx	lr

00000944 <acquireLock>:
     944:	e92d4800 	push	{fp, lr}
     948:	e28db004 	add	fp, sp, #4
     94c:	e24dd008 	sub	sp, sp, #8
     950:	e50b0008 	str	r0, [fp, #-8]
     954:	ea000001 	b	960 <acquireLock+0x1c>
     958:	e3a00001 	mov	r0, #1
     95c:	eb00013a 	bl	e4c <sleep>
     960:	e51b2008 	ldr	r2, [fp, #-8]
     964:	e3a01001 	mov	r1, #1
     968:	e1923f9f 	ldrex	r3, [r2]
     96c:	e1820f91 	strex	r0, r1, [r2]
     970:	e3500000 	cmp	r0, #0
     974:	1afffffb 	bne	968 <acquireLock+0x24>
     978:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     97c:	e3530001 	cmp	r3, #1
     980:	0afffff4 	beq	958 <acquireLock+0x14>
     984:	e1a00000 	nop			@ (mov r0, r0)
     988:	e1a00000 	nop			@ (mov r0, r0)
     98c:	e24bd004 	sub	sp, fp, #4
     990:	e8bd8800 	pop	{fp, pc}

00000994 <releaseLock>:
     994:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     998:	e28db000 	add	fp, sp, #0
     99c:	e24dd00c 	sub	sp, sp, #12
     9a0:	e50b0008 	str	r0, [fp, #-8]
     9a4:	e51b3008 	ldr	r3, [fp, #-8]
     9a8:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     9ac:	e3a02000 	mov	r2, #0
     9b0:	e5832000 	str	r2, [r3]
     9b4:	e1a00000 	nop			@ (mov r0, r0)
     9b8:	e28bd000 	add	sp, fp, #0
     9bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     9c0:	e12fff1e 	bx	lr

000009c4 <initiateCondVar>:
     9c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     9c8:	e28db000 	add	fp, sp, #0
     9cc:	e24dd00c 	sub	sp, sp, #12
     9d0:	e50b0008 	str	r0, [fp, #-8]
     9d4:	e51b3008 	ldr	r3, [fp, #-8]
     9d8:	e3a02000 	mov	r2, #0
     9dc:	e5832000 	str	r2, [r3]
     9e0:	e51b3008 	ldr	r3, [fp, #-8]
     9e4:	e3a02001 	mov	r2, #1
     9e8:	e5832004 	str	r2, [r3, #4]
     9ec:	e1a00000 	nop			@ (mov r0, r0)
     9f0:	e28bd000 	add	sp, fp, #0
     9f4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     9f8:	e12fff1e 	bx	lr

000009fc <condWait>:
     9fc:	e92d4800 	push	{fp, lr}
     a00:	e28db004 	add	fp, sp, #4
     a04:	e24dd008 	sub	sp, sp, #8
     a08:	e50b0008 	str	r0, [fp, #-8]
     a0c:	e50b100c 	str	r1, [fp, #-12]
     a10:	e51b000c 	ldr	r0, [fp, #-12]
     a14:	ebffffde 	bl	994 <releaseLock>
     a18:	e51b3008 	ldr	r3, [fp, #-8]
     a1c:	e5933000 	ldr	r3, [r3]
     a20:	e1a00003 	mov	r0, r3
     a24:	eb00017d 	bl	1020 <sleepChan>
     a28:	e51b000c 	ldr	r0, [fp, #-12]
     a2c:	ebffffc4 	bl	944 <acquireLock>
     a30:	e1a00000 	nop			@ (mov r0, r0)
     a34:	e24bd004 	sub	sp, fp, #4
     a38:	e8bd8800 	pop	{fp, pc}

00000a3c <broadcast>:
     a3c:	e92d4800 	push	{fp, lr}
     a40:	e28db004 	add	fp, sp, #4
     a44:	e24dd008 	sub	sp, sp, #8
     a48:	e50b0008 	str	r0, [fp, #-8]
     a4c:	e51b3008 	ldr	r3, [fp, #-8]
     a50:	e5933000 	ldr	r3, [r3]
     a54:	e1a00003 	mov	r0, r3
     a58:	eb000182 	bl	1068 <sigChan>
     a5c:	e1a00000 	nop			@ (mov r0, r0)
     a60:	e24bd004 	sub	sp, fp, #4
     a64:	e8bd8800 	pop	{fp, pc}

00000a68 <semInit>:
     a68:	e92d4800 	push	{fp, lr}
     a6c:	e28db004 	add	fp, sp, #4
     a70:	e24dd008 	sub	sp, sp, #8
     a74:	e50b0008 	str	r0, [fp, #-8]
     a78:	e50b100c 	str	r1, [fp, #-12]
     a7c:	e51b3008 	ldr	r3, [fp, #-8]
     a80:	e51b200c 	ldr	r2, [fp, #-12]
     a84:	e5832000 	str	r2, [r3]
     a88:	e51b3008 	ldr	r3, [fp, #-8]
     a8c:	e2833004 	add	r3, r3, #4
     a90:	e1a00003 	mov	r0, r3
     a94:	ebffff9c 	bl	90c <initiateLock>
     a98:	e51b3008 	ldr	r3, [fp, #-8]
     a9c:	e283300c 	add	r3, r3, #12
     aa0:	e1a00003 	mov	r0, r3
     aa4:	ebffffc6 	bl	9c4 <initiateCondVar>
     aa8:	e51b3008 	ldr	r3, [fp, #-8]
     aac:	e3a02001 	mov	r2, #1
     ab0:	e5832014 	str	r2, [r3, #20]
     ab4:	e1a00000 	nop			@ (mov r0, r0)
     ab8:	e24bd004 	sub	sp, fp, #4
     abc:	e8bd8800 	pop	{fp, pc}

00000ac0 <semUp>:
     ac0:	e92d4800 	push	{fp, lr}
     ac4:	e28db004 	add	fp, sp, #4
     ac8:	e24dd008 	sub	sp, sp, #8
     acc:	e50b0008 	str	r0, [fp, #-8]
     ad0:	e51b3008 	ldr	r3, [fp, #-8]
     ad4:	e2833004 	add	r3, r3, #4
     ad8:	e1a00003 	mov	r0, r3
     adc:	ebffff98 	bl	944 <acquireLock>
     ae0:	e51b3008 	ldr	r3, [fp, #-8]
     ae4:	e5933000 	ldr	r3, [r3]
     ae8:	e2832001 	add	r2, r3, #1
     aec:	e51b3008 	ldr	r3, [fp, #-8]
     af0:	e5832000 	str	r2, [r3]
     af4:	e51b3008 	ldr	r3, [fp, #-8]
     af8:	e283300c 	add	r3, r3, #12
     afc:	e1a00003 	mov	r0, r3
     b00:	ebffffcd 	bl	a3c <broadcast>
     b04:	e51b3008 	ldr	r3, [fp, #-8]
     b08:	e2833004 	add	r3, r3, #4
     b0c:	e1a00003 	mov	r0, r3
     b10:	ebffff9f 	bl	994 <releaseLock>
     b14:	e1a00000 	nop			@ (mov r0, r0)
     b18:	e24bd004 	sub	sp, fp, #4
     b1c:	e8bd8800 	pop	{fp, pc}

00000b20 <semDown>:
     b20:	e92d4800 	push	{fp, lr}
     b24:	e28db004 	add	fp, sp, #4
     b28:	e24dd008 	sub	sp, sp, #8
     b2c:	e50b0008 	str	r0, [fp, #-8]
     b30:	e51b3008 	ldr	r3, [fp, #-8]
     b34:	e2833004 	add	r3, r3, #4
     b38:	e1a00003 	mov	r0, r3
     b3c:	ebffff80 	bl	944 <acquireLock>
     b40:	ea000006 	b	b60 <semDown+0x40>
     b44:	e51b3008 	ldr	r3, [fp, #-8]
     b48:	e283200c 	add	r2, r3, #12
     b4c:	e51b3008 	ldr	r3, [fp, #-8]
     b50:	e2833004 	add	r3, r3, #4
     b54:	e1a01003 	mov	r1, r3
     b58:	e1a00002 	mov	r0, r2
     b5c:	ebffffa6 	bl	9fc <condWait>
     b60:	e51b3008 	ldr	r3, [fp, #-8]
     b64:	e5933000 	ldr	r3, [r3]
     b68:	e3530000 	cmp	r3, #0
     b6c:	dafffff4 	ble	b44 <semDown+0x24>
     b70:	e51b3008 	ldr	r3, [fp, #-8]
     b74:	e5933000 	ldr	r3, [r3]
     b78:	e2432001 	sub	r2, r3, #1
     b7c:	e51b3008 	ldr	r3, [fp, #-8]
     b80:	e5832000 	str	r2, [r3]
     b84:	e51b3008 	ldr	r3, [fp, #-8]
     b88:	e2833004 	add	r3, r3, #4
     b8c:	e1a00003 	mov	r0, r3
     b90:	ebffff7f 	bl	994 <releaseLock>
     b94:	e1a00000 	nop			@ (mov r0, r0)
     b98:	e24bd004 	sub	sp, fp, #4
     b9c:	e8bd8800 	pop	{fp, pc}

00000ba0 <fork>:
     ba0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba4:	e1a04003 	mov	r4, r3
     ba8:	e1a03002 	mov	r3, r2
     bac:	e1a02001 	mov	r2, r1
     bb0:	e1a01000 	mov	r1, r0
     bb4:	e3a00001 	mov	r0, #1
     bb8:	ef000000 	svc	0x00000000
     bbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc0:	e12fff1e 	bx	lr

00000bc4 <exit>:
     bc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc8:	e1a04003 	mov	r4, r3
     bcc:	e1a03002 	mov	r3, r2
     bd0:	e1a02001 	mov	r2, r1
     bd4:	e1a01000 	mov	r1, r0
     bd8:	e3a00002 	mov	r0, #2
     bdc:	ef000000 	svc	0x00000000
     be0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be4:	e12fff1e 	bx	lr

00000be8 <wait>:
     be8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bec:	e1a04003 	mov	r4, r3
     bf0:	e1a03002 	mov	r3, r2
     bf4:	e1a02001 	mov	r2, r1
     bf8:	e1a01000 	mov	r1, r0
     bfc:	e3a00003 	mov	r0, #3
     c00:	ef000000 	svc	0x00000000
     c04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c08:	e12fff1e 	bx	lr

00000c0c <pipe>:
     c0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c10:	e1a04003 	mov	r4, r3
     c14:	e1a03002 	mov	r3, r2
     c18:	e1a02001 	mov	r2, r1
     c1c:	e1a01000 	mov	r1, r0
     c20:	e3a00004 	mov	r0, #4
     c24:	ef000000 	svc	0x00000000
     c28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c2c:	e12fff1e 	bx	lr

00000c30 <read>:
     c30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c34:	e1a04003 	mov	r4, r3
     c38:	e1a03002 	mov	r3, r2
     c3c:	e1a02001 	mov	r2, r1
     c40:	e1a01000 	mov	r1, r0
     c44:	e3a00005 	mov	r0, #5
     c48:	ef000000 	svc	0x00000000
     c4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c50:	e12fff1e 	bx	lr

00000c54 <write>:
     c54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c58:	e1a04003 	mov	r4, r3
     c5c:	e1a03002 	mov	r3, r2
     c60:	e1a02001 	mov	r2, r1
     c64:	e1a01000 	mov	r1, r0
     c68:	e3a00010 	mov	r0, #16
     c6c:	ef000000 	svc	0x00000000
     c70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c74:	e12fff1e 	bx	lr

00000c78 <close>:
     c78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c7c:	e1a04003 	mov	r4, r3
     c80:	e1a03002 	mov	r3, r2
     c84:	e1a02001 	mov	r2, r1
     c88:	e1a01000 	mov	r1, r0
     c8c:	e3a00015 	mov	r0, #21
     c90:	ef000000 	svc	0x00000000
     c94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c98:	e12fff1e 	bx	lr

00000c9c <kill>:
     c9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca0:	e1a04003 	mov	r4, r3
     ca4:	e1a03002 	mov	r3, r2
     ca8:	e1a02001 	mov	r2, r1
     cac:	e1a01000 	mov	r1, r0
     cb0:	e3a00006 	mov	r0, #6
     cb4:	ef000000 	svc	0x00000000
     cb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cbc:	e12fff1e 	bx	lr

00000cc0 <exec>:
     cc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc4:	e1a04003 	mov	r4, r3
     cc8:	e1a03002 	mov	r3, r2
     ccc:	e1a02001 	mov	r2, r1
     cd0:	e1a01000 	mov	r1, r0
     cd4:	e3a00007 	mov	r0, #7
     cd8:	ef000000 	svc	0x00000000
     cdc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce0:	e12fff1e 	bx	lr

00000ce4 <open>:
     ce4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce8:	e1a04003 	mov	r4, r3
     cec:	e1a03002 	mov	r3, r2
     cf0:	e1a02001 	mov	r2, r1
     cf4:	e1a01000 	mov	r1, r0
     cf8:	e3a0000f 	mov	r0, #15
     cfc:	ef000000 	svc	0x00000000
     d00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d04:	e12fff1e 	bx	lr

00000d08 <mknod>:
     d08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d0c:	e1a04003 	mov	r4, r3
     d10:	e1a03002 	mov	r3, r2
     d14:	e1a02001 	mov	r2, r1
     d18:	e1a01000 	mov	r1, r0
     d1c:	e3a00011 	mov	r0, #17
     d20:	ef000000 	svc	0x00000000
     d24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d28:	e12fff1e 	bx	lr

00000d2c <unlink>:
     d2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d30:	e1a04003 	mov	r4, r3
     d34:	e1a03002 	mov	r3, r2
     d38:	e1a02001 	mov	r2, r1
     d3c:	e1a01000 	mov	r1, r0
     d40:	e3a00012 	mov	r0, #18
     d44:	ef000000 	svc	0x00000000
     d48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d4c:	e12fff1e 	bx	lr

00000d50 <fstat>:
     d50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d54:	e1a04003 	mov	r4, r3
     d58:	e1a03002 	mov	r3, r2
     d5c:	e1a02001 	mov	r2, r1
     d60:	e1a01000 	mov	r1, r0
     d64:	e3a00008 	mov	r0, #8
     d68:	ef000000 	svc	0x00000000
     d6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d70:	e12fff1e 	bx	lr

00000d74 <link>:
     d74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d78:	e1a04003 	mov	r4, r3
     d7c:	e1a03002 	mov	r3, r2
     d80:	e1a02001 	mov	r2, r1
     d84:	e1a01000 	mov	r1, r0
     d88:	e3a00013 	mov	r0, #19
     d8c:	ef000000 	svc	0x00000000
     d90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d94:	e12fff1e 	bx	lr

00000d98 <mkdir>:
     d98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d9c:	e1a04003 	mov	r4, r3
     da0:	e1a03002 	mov	r3, r2
     da4:	e1a02001 	mov	r2, r1
     da8:	e1a01000 	mov	r1, r0
     dac:	e3a00014 	mov	r0, #20
     db0:	ef000000 	svc	0x00000000
     db4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     db8:	e12fff1e 	bx	lr

00000dbc <chdir>:
     dbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dc0:	e1a04003 	mov	r4, r3
     dc4:	e1a03002 	mov	r3, r2
     dc8:	e1a02001 	mov	r2, r1
     dcc:	e1a01000 	mov	r1, r0
     dd0:	e3a00009 	mov	r0, #9
     dd4:	ef000000 	svc	0x00000000
     dd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ddc:	e12fff1e 	bx	lr

00000de0 <dup>:
     de0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     de4:	e1a04003 	mov	r4, r3
     de8:	e1a03002 	mov	r3, r2
     dec:	e1a02001 	mov	r2, r1
     df0:	e1a01000 	mov	r1, r0
     df4:	e3a0000a 	mov	r0, #10
     df8:	ef000000 	svc	0x00000000
     dfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e00:	e12fff1e 	bx	lr

00000e04 <getpid>:
     e04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e08:	e1a04003 	mov	r4, r3
     e0c:	e1a03002 	mov	r3, r2
     e10:	e1a02001 	mov	r2, r1
     e14:	e1a01000 	mov	r1, r0
     e18:	e3a0000b 	mov	r0, #11
     e1c:	ef000000 	svc	0x00000000
     e20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e24:	e12fff1e 	bx	lr

00000e28 <sbrk>:
     e28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e2c:	e1a04003 	mov	r4, r3
     e30:	e1a03002 	mov	r3, r2
     e34:	e1a02001 	mov	r2, r1
     e38:	e1a01000 	mov	r1, r0
     e3c:	e3a0000c 	mov	r0, #12
     e40:	ef000000 	svc	0x00000000
     e44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e48:	e12fff1e 	bx	lr

00000e4c <sleep>:
     e4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e50:	e1a04003 	mov	r4, r3
     e54:	e1a03002 	mov	r3, r2
     e58:	e1a02001 	mov	r2, r1
     e5c:	e1a01000 	mov	r1, r0
     e60:	e3a0000d 	mov	r0, #13
     e64:	ef000000 	svc	0x00000000
     e68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e6c:	e12fff1e 	bx	lr

00000e70 <uptime>:
     e70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e74:	e1a04003 	mov	r4, r3
     e78:	e1a03002 	mov	r3, r2
     e7c:	e1a02001 	mov	r2, r1
     e80:	e1a01000 	mov	r1, r0
     e84:	e3a0000e 	mov	r0, #14
     e88:	ef000000 	svc	0x00000000
     e8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e90:	e12fff1e 	bx	lr

00000e94 <getprocs>:
     e94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e98:	e1a04003 	mov	r4, r3
     e9c:	e1a03002 	mov	r3, r2
     ea0:	e1a02001 	mov	r2, r1
     ea4:	e1a01000 	mov	r1, r0
     ea8:	e3a00016 	mov	r0, #22
     eac:	ef000000 	svc	0x00000000
     eb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eb4:	e12fff1e 	bx	lr

00000eb8 <settickets>:
     eb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ebc:	e1a04003 	mov	r4, r3
     ec0:	e1a03002 	mov	r3, r2
     ec4:	e1a02001 	mov	r2, r1
     ec8:	e1a01000 	mov	r1, r0
     ecc:	e3a00017 	mov	r0, #23
     ed0:	ef000000 	svc	0x00000000
     ed4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ed8:	e12fff1e 	bx	lr

00000edc <srand>:
     edc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ee0:	e1a04003 	mov	r4, r3
     ee4:	e1a03002 	mov	r3, r2
     ee8:	e1a02001 	mov	r2, r1
     eec:	e1a01000 	mov	r1, r0
     ef0:	e3a00018 	mov	r0, #24
     ef4:	ef000000 	svc	0x00000000
     ef8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     efc:	e12fff1e 	bx	lr

00000f00 <getpinfo>:
     f00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f04:	e1a04003 	mov	r4, r3
     f08:	e1a03002 	mov	r3, r2
     f0c:	e1a02001 	mov	r2, r1
     f10:	e1a01000 	mov	r1, r0
     f14:	e3a00019 	mov	r0, #25
     f18:	ef000000 	svc	0x00000000
     f1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f20:	e12fff1e 	bx	lr

00000f24 <dumppagetable>:
     f24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f28:	e1a04003 	mov	r4, r3
     f2c:	e1a03002 	mov	r3, r2
     f30:	e1a02001 	mov	r2, r1
     f34:	e1a01000 	mov	r1, r0
     f38:	e3a0001a 	mov	r0, #26
     f3c:	ef000000 	svc	0x00000000
     f40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f44:	e12fff1e 	bx	lr

00000f48 <thread_create>:
     f48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f4c:	e1a04003 	mov	r4, r3
     f50:	e1a03002 	mov	r3, r2
     f54:	e1a02001 	mov	r2, r1
     f58:	e1a01000 	mov	r1, r0
     f5c:	e3a0001b 	mov	r0, #27
     f60:	ef000000 	svc	0x00000000
     f64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f68:	e12fff1e 	bx	lr

00000f6c <thread_exit>:
     f6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f70:	e1a04003 	mov	r4, r3
     f74:	e1a03002 	mov	r3, r2
     f78:	e1a02001 	mov	r2, r1
     f7c:	e1a01000 	mov	r1, r0
     f80:	e3a0001c 	mov	r0, #28
     f84:	ef000000 	svc	0x00000000
     f88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f8c:	e12fff1e 	bx	lr

00000f90 <thread_join>:
     f90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f94:	e1a04003 	mov	r4, r3
     f98:	e1a03002 	mov	r3, r2
     f9c:	e1a02001 	mov	r2, r1
     fa0:	e1a01000 	mov	r1, r0
     fa4:	e3a0001d 	mov	r0, #29
     fa8:	ef000000 	svc	0x00000000
     fac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fb0:	e12fff1e 	bx	lr

00000fb4 <waitpid>:
     fb4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fb8:	e1a04003 	mov	r4, r3
     fbc:	e1a03002 	mov	r3, r2
     fc0:	e1a02001 	mov	r2, r1
     fc4:	e1a01000 	mov	r1, r0
     fc8:	e3a0001e 	mov	r0, #30
     fcc:	ef000000 	svc	0x00000000
     fd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fd4:	e12fff1e 	bx	lr

00000fd8 <barrier_init>:
     fd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fdc:	e1a04003 	mov	r4, r3
     fe0:	e1a03002 	mov	r3, r2
     fe4:	e1a02001 	mov	r2, r1
     fe8:	e1a01000 	mov	r1, r0
     fec:	e3a0001f 	mov	r0, #31
     ff0:	ef000000 	svc	0x00000000
     ff4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ff8:	e12fff1e 	bx	lr

00000ffc <barrier_check>:
     ffc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1000:	e1a04003 	mov	r4, r3
    1004:	e1a03002 	mov	r3, r2
    1008:	e1a02001 	mov	r2, r1
    100c:	e1a01000 	mov	r1, r0
    1010:	e3a00020 	mov	r0, #32
    1014:	ef000000 	svc	0x00000000
    1018:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    101c:	e12fff1e 	bx	lr

00001020 <sleepChan>:
    1020:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1024:	e1a04003 	mov	r4, r3
    1028:	e1a03002 	mov	r3, r2
    102c:	e1a02001 	mov	r2, r1
    1030:	e1a01000 	mov	r1, r0
    1034:	e3a00024 	mov	r0, #36	@ 0x24
    1038:	ef000000 	svc	0x00000000
    103c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1040:	e12fff1e 	bx	lr

00001044 <getChannel>:
    1044:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1048:	e1a04003 	mov	r4, r3
    104c:	e1a03002 	mov	r3, r2
    1050:	e1a02001 	mov	r2, r1
    1054:	e1a01000 	mov	r1, r0
    1058:	e3a00025 	mov	r0, #37	@ 0x25
    105c:	ef000000 	svc	0x00000000
    1060:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1064:	e12fff1e 	bx	lr

00001068 <sigChan>:
    1068:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    106c:	e1a04003 	mov	r4, r3
    1070:	e1a03002 	mov	r3, r2
    1074:	e1a02001 	mov	r2, r1
    1078:	e1a01000 	mov	r1, r0
    107c:	e3a00026 	mov	r0, #38	@ 0x26
    1080:	ef000000 	svc	0x00000000
    1084:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1088:	e12fff1e 	bx	lr

0000108c <sigOneChan>:
    108c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1090:	e1a04003 	mov	r4, r3
    1094:	e1a03002 	mov	r3, r2
    1098:	e1a02001 	mov	r2, r1
    109c:	e1a01000 	mov	r1, r0
    10a0:	e3a00027 	mov	r0, #39	@ 0x27
    10a4:	ef000000 	svc	0x00000000
    10a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10ac:	e12fff1e 	bx	lr

000010b0 <putc>:
    10b0:	e92d4800 	push	{fp, lr}
    10b4:	e28db004 	add	fp, sp, #4
    10b8:	e24dd008 	sub	sp, sp, #8
    10bc:	e50b0008 	str	r0, [fp, #-8]
    10c0:	e1a03001 	mov	r3, r1
    10c4:	e54b3009 	strb	r3, [fp, #-9]
    10c8:	e24b3009 	sub	r3, fp, #9
    10cc:	e3a02001 	mov	r2, #1
    10d0:	e1a01003 	mov	r1, r3
    10d4:	e51b0008 	ldr	r0, [fp, #-8]
    10d8:	ebfffedd 	bl	c54 <write>
    10dc:	e1a00000 	nop			@ (mov r0, r0)
    10e0:	e24bd004 	sub	sp, fp, #4
    10e4:	e8bd8800 	pop	{fp, pc}

000010e8 <printint>:
    10e8:	e92d4800 	push	{fp, lr}
    10ec:	e28db004 	add	fp, sp, #4
    10f0:	e24dd030 	sub	sp, sp, #48	@ 0x30
    10f4:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    10f8:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    10fc:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    1100:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    1104:	e3a03000 	mov	r3, #0
    1108:	e50b300c 	str	r3, [fp, #-12]
    110c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    1110:	e3530000 	cmp	r3, #0
    1114:	0a000008 	beq	113c <printint+0x54>
    1118:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    111c:	e3530000 	cmp	r3, #0
    1120:	aa000005 	bge	113c <printint+0x54>
    1124:	e3a03001 	mov	r3, #1
    1128:	e50b300c 	str	r3, [fp, #-12]
    112c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1130:	e2633000 	rsb	r3, r3, #0
    1134:	e50b3010 	str	r3, [fp, #-16]
    1138:	ea000001 	b	1144 <printint+0x5c>
    113c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1140:	e50b3010 	str	r3, [fp, #-16]
    1144:	e3a03000 	mov	r3, #0
    1148:	e50b3008 	str	r3, [fp, #-8]
    114c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    1150:	e51b3010 	ldr	r3, [fp, #-16]
    1154:	e1a01002 	mov	r1, r2
    1158:	e1a00003 	mov	r0, r3
    115c:	eb0001d5 	bl	18b8 <__aeabi_uidivmod>
    1160:	e1a03001 	mov	r3, r1
    1164:	e1a01003 	mov	r1, r3
    1168:	e51b3008 	ldr	r3, [fp, #-8]
    116c:	e2832001 	add	r2, r3, #1
    1170:	e50b2008 	str	r2, [fp, #-8]
    1174:	e59f20a0 	ldr	r2, [pc, #160]	@ 121c <printint+0x134>
    1178:	e7d22001 	ldrb	r2, [r2, r1]
    117c:	e2433004 	sub	r3, r3, #4
    1180:	e083300b 	add	r3, r3, fp
    1184:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1188:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    118c:	e1a01003 	mov	r1, r3
    1190:	e51b0010 	ldr	r0, [fp, #-16]
    1194:	eb00018a 	bl	17c4 <__udivsi3>
    1198:	e1a03000 	mov	r3, r0
    119c:	e50b3010 	str	r3, [fp, #-16]
    11a0:	e51b3010 	ldr	r3, [fp, #-16]
    11a4:	e3530000 	cmp	r3, #0
    11a8:	1affffe7 	bne	114c <printint+0x64>
    11ac:	e51b300c 	ldr	r3, [fp, #-12]
    11b0:	e3530000 	cmp	r3, #0
    11b4:	0a00000e 	beq	11f4 <printint+0x10c>
    11b8:	e51b3008 	ldr	r3, [fp, #-8]
    11bc:	e2832001 	add	r2, r3, #1
    11c0:	e50b2008 	str	r2, [fp, #-8]
    11c4:	e2433004 	sub	r3, r3, #4
    11c8:	e083300b 	add	r3, r3, fp
    11cc:	e3a0202d 	mov	r2, #45	@ 0x2d
    11d0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    11d4:	ea000006 	b	11f4 <printint+0x10c>
    11d8:	e24b2020 	sub	r2, fp, #32
    11dc:	e51b3008 	ldr	r3, [fp, #-8]
    11e0:	e0823003 	add	r3, r2, r3
    11e4:	e5d33000 	ldrb	r3, [r3]
    11e8:	e1a01003 	mov	r1, r3
    11ec:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    11f0:	ebffffae 	bl	10b0 <putc>
    11f4:	e51b3008 	ldr	r3, [fp, #-8]
    11f8:	e2433001 	sub	r3, r3, #1
    11fc:	e50b3008 	str	r3, [fp, #-8]
    1200:	e51b3008 	ldr	r3, [fp, #-8]
    1204:	e3530000 	cmp	r3, #0
    1208:	aafffff2 	bge	11d8 <printint+0xf0>
    120c:	e1a00000 	nop			@ (mov r0, r0)
    1210:	e1a00000 	nop			@ (mov r0, r0)
    1214:	e24bd004 	sub	sp, fp, #4
    1218:	e8bd8800 	pop	{fp, pc}
    121c:	00001b8c 	.word	0x00001b8c

00001220 <printf>:
    1220:	e92d000e 	push	{r1, r2, r3}
    1224:	e92d4800 	push	{fp, lr}
    1228:	e28db004 	add	fp, sp, #4
    122c:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1230:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1234:	e3a03000 	mov	r3, #0
    1238:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    123c:	e28b3008 	add	r3, fp, #8
    1240:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1244:	e3a03000 	mov	r3, #0
    1248:	e50b3010 	str	r3, [fp, #-16]
    124c:	ea000074 	b	1424 <printf+0x204>
    1250:	e59b2004 	ldr	r2, [fp, #4]
    1254:	e51b3010 	ldr	r3, [fp, #-16]
    1258:	e0823003 	add	r3, r2, r3
    125c:	e5d33000 	ldrb	r3, [r3]
    1260:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1264:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1268:	e3530000 	cmp	r3, #0
    126c:	1a00000b 	bne	12a0 <printf+0x80>
    1270:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1274:	e3530025 	cmp	r3, #37	@ 0x25
    1278:	1a000002 	bne	1288 <printf+0x68>
    127c:	e3a03025 	mov	r3, #37	@ 0x25
    1280:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1284:	ea000063 	b	1418 <printf+0x1f8>
    1288:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    128c:	e6ef3073 	uxtb	r3, r3
    1290:	e1a01003 	mov	r1, r3
    1294:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1298:	ebffff84 	bl	10b0 <putc>
    129c:	ea00005d 	b	1418 <printf+0x1f8>
    12a0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    12a4:	e3530025 	cmp	r3, #37	@ 0x25
    12a8:	1a00005a 	bne	1418 <printf+0x1f8>
    12ac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12b0:	e3530064 	cmp	r3, #100	@ 0x64
    12b4:	1a00000a 	bne	12e4 <printf+0xc4>
    12b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12bc:	e5933000 	ldr	r3, [r3]
    12c0:	e1a01003 	mov	r1, r3
    12c4:	e3a03001 	mov	r3, #1
    12c8:	e3a0200a 	mov	r2, #10
    12cc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12d0:	ebffff84 	bl	10e8 <printint>
    12d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12d8:	e2833004 	add	r3, r3, #4
    12dc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12e0:	ea00004a 	b	1410 <printf+0x1f0>
    12e4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12e8:	e3530078 	cmp	r3, #120	@ 0x78
    12ec:	0a000002 	beq	12fc <printf+0xdc>
    12f0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12f4:	e3530070 	cmp	r3, #112	@ 0x70
    12f8:	1a00000a 	bne	1328 <printf+0x108>
    12fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1300:	e5933000 	ldr	r3, [r3]
    1304:	e1a01003 	mov	r1, r3
    1308:	e3a03000 	mov	r3, #0
    130c:	e3a02010 	mov	r2, #16
    1310:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1314:	ebffff73 	bl	10e8 <printint>
    1318:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    131c:	e2833004 	add	r3, r3, #4
    1320:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1324:	ea000039 	b	1410 <printf+0x1f0>
    1328:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    132c:	e3530073 	cmp	r3, #115	@ 0x73
    1330:	1a000018 	bne	1398 <printf+0x178>
    1334:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1338:	e5933000 	ldr	r3, [r3]
    133c:	e50b300c 	str	r3, [fp, #-12]
    1340:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1344:	e2833004 	add	r3, r3, #4
    1348:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    134c:	e51b300c 	ldr	r3, [fp, #-12]
    1350:	e3530000 	cmp	r3, #0
    1354:	1a00000a 	bne	1384 <printf+0x164>
    1358:	e59f30f4 	ldr	r3, [pc, #244]	@ 1454 <printf+0x234>
    135c:	e50b300c 	str	r3, [fp, #-12]
    1360:	ea000007 	b	1384 <printf+0x164>
    1364:	e51b300c 	ldr	r3, [fp, #-12]
    1368:	e5d33000 	ldrb	r3, [r3]
    136c:	e1a01003 	mov	r1, r3
    1370:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1374:	ebffff4d 	bl	10b0 <putc>
    1378:	e51b300c 	ldr	r3, [fp, #-12]
    137c:	e2833001 	add	r3, r3, #1
    1380:	e50b300c 	str	r3, [fp, #-12]
    1384:	e51b300c 	ldr	r3, [fp, #-12]
    1388:	e5d33000 	ldrb	r3, [r3]
    138c:	e3530000 	cmp	r3, #0
    1390:	1afffff3 	bne	1364 <printf+0x144>
    1394:	ea00001d 	b	1410 <printf+0x1f0>
    1398:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    139c:	e3530063 	cmp	r3, #99	@ 0x63
    13a0:	1a000009 	bne	13cc <printf+0x1ac>
    13a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13a8:	e5933000 	ldr	r3, [r3]
    13ac:	e6ef3073 	uxtb	r3, r3
    13b0:	e1a01003 	mov	r1, r3
    13b4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13b8:	ebffff3c 	bl	10b0 <putc>
    13bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13c0:	e2833004 	add	r3, r3, #4
    13c4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    13c8:	ea000010 	b	1410 <printf+0x1f0>
    13cc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13d0:	e3530025 	cmp	r3, #37	@ 0x25
    13d4:	1a000005 	bne	13f0 <printf+0x1d0>
    13d8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13dc:	e6ef3073 	uxtb	r3, r3
    13e0:	e1a01003 	mov	r1, r3
    13e4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13e8:	ebffff30 	bl	10b0 <putc>
    13ec:	ea000007 	b	1410 <printf+0x1f0>
    13f0:	e3a01025 	mov	r1, #37	@ 0x25
    13f4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13f8:	ebffff2c 	bl	10b0 <putc>
    13fc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1400:	e6ef3073 	uxtb	r3, r3
    1404:	e1a01003 	mov	r1, r3
    1408:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    140c:	ebffff27 	bl	10b0 <putc>
    1410:	e3a03000 	mov	r3, #0
    1414:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1418:	e51b3010 	ldr	r3, [fp, #-16]
    141c:	e2833001 	add	r3, r3, #1
    1420:	e50b3010 	str	r3, [fp, #-16]
    1424:	e59b2004 	ldr	r2, [fp, #4]
    1428:	e51b3010 	ldr	r3, [fp, #-16]
    142c:	e0823003 	add	r3, r2, r3
    1430:	e5d33000 	ldrb	r3, [r3]
    1434:	e3530000 	cmp	r3, #0
    1438:	1affff84 	bne	1250 <printf+0x30>
    143c:	e1a00000 	nop			@ (mov r0, r0)
    1440:	e1a00000 	nop			@ (mov r0, r0)
    1444:	e24bd004 	sub	sp, fp, #4
    1448:	e8bd4800 	pop	{fp, lr}
    144c:	e28dd00c 	add	sp, sp, #12
    1450:	e12fff1e 	bx	lr
    1454:	00001b80 	.word	0x00001b80

00001458 <free>:
    1458:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    145c:	e28db000 	add	fp, sp, #0
    1460:	e24dd014 	sub	sp, sp, #20
    1464:	e50b0010 	str	r0, [fp, #-16]
    1468:	e51b3010 	ldr	r3, [fp, #-16]
    146c:	e2433008 	sub	r3, r3, #8
    1470:	e50b300c 	str	r3, [fp, #-12]
    1474:	e59f3154 	ldr	r3, [pc, #340]	@ 15d0 <free+0x178>
    1478:	e5933000 	ldr	r3, [r3]
    147c:	e50b3008 	str	r3, [fp, #-8]
    1480:	ea000010 	b	14c8 <free+0x70>
    1484:	e51b3008 	ldr	r3, [fp, #-8]
    1488:	e5933000 	ldr	r3, [r3]
    148c:	e51b2008 	ldr	r2, [fp, #-8]
    1490:	e1520003 	cmp	r2, r3
    1494:	3a000008 	bcc	14bc <free+0x64>
    1498:	e51b200c 	ldr	r2, [fp, #-12]
    149c:	e51b3008 	ldr	r3, [fp, #-8]
    14a0:	e1520003 	cmp	r2, r3
    14a4:	8a000010 	bhi	14ec <free+0x94>
    14a8:	e51b3008 	ldr	r3, [fp, #-8]
    14ac:	e5933000 	ldr	r3, [r3]
    14b0:	e51b200c 	ldr	r2, [fp, #-12]
    14b4:	e1520003 	cmp	r2, r3
    14b8:	3a00000b 	bcc	14ec <free+0x94>
    14bc:	e51b3008 	ldr	r3, [fp, #-8]
    14c0:	e5933000 	ldr	r3, [r3]
    14c4:	e50b3008 	str	r3, [fp, #-8]
    14c8:	e51b200c 	ldr	r2, [fp, #-12]
    14cc:	e51b3008 	ldr	r3, [fp, #-8]
    14d0:	e1520003 	cmp	r2, r3
    14d4:	9affffea 	bls	1484 <free+0x2c>
    14d8:	e51b3008 	ldr	r3, [fp, #-8]
    14dc:	e5933000 	ldr	r3, [r3]
    14e0:	e51b200c 	ldr	r2, [fp, #-12]
    14e4:	e1520003 	cmp	r2, r3
    14e8:	2affffe5 	bcs	1484 <free+0x2c>
    14ec:	e51b300c 	ldr	r3, [fp, #-12]
    14f0:	e5933004 	ldr	r3, [r3, #4]
    14f4:	e1a03183 	lsl	r3, r3, #3
    14f8:	e51b200c 	ldr	r2, [fp, #-12]
    14fc:	e0822003 	add	r2, r2, r3
    1500:	e51b3008 	ldr	r3, [fp, #-8]
    1504:	e5933000 	ldr	r3, [r3]
    1508:	e1520003 	cmp	r2, r3
    150c:	1a00000d 	bne	1548 <free+0xf0>
    1510:	e51b300c 	ldr	r3, [fp, #-12]
    1514:	e5932004 	ldr	r2, [r3, #4]
    1518:	e51b3008 	ldr	r3, [fp, #-8]
    151c:	e5933000 	ldr	r3, [r3]
    1520:	e5933004 	ldr	r3, [r3, #4]
    1524:	e0822003 	add	r2, r2, r3
    1528:	e51b300c 	ldr	r3, [fp, #-12]
    152c:	e5832004 	str	r2, [r3, #4]
    1530:	e51b3008 	ldr	r3, [fp, #-8]
    1534:	e5933000 	ldr	r3, [r3]
    1538:	e5932000 	ldr	r2, [r3]
    153c:	e51b300c 	ldr	r3, [fp, #-12]
    1540:	e5832000 	str	r2, [r3]
    1544:	ea000003 	b	1558 <free+0x100>
    1548:	e51b3008 	ldr	r3, [fp, #-8]
    154c:	e5932000 	ldr	r2, [r3]
    1550:	e51b300c 	ldr	r3, [fp, #-12]
    1554:	e5832000 	str	r2, [r3]
    1558:	e51b3008 	ldr	r3, [fp, #-8]
    155c:	e5933004 	ldr	r3, [r3, #4]
    1560:	e1a03183 	lsl	r3, r3, #3
    1564:	e51b2008 	ldr	r2, [fp, #-8]
    1568:	e0823003 	add	r3, r2, r3
    156c:	e51b200c 	ldr	r2, [fp, #-12]
    1570:	e1520003 	cmp	r2, r3
    1574:	1a00000b 	bne	15a8 <free+0x150>
    1578:	e51b3008 	ldr	r3, [fp, #-8]
    157c:	e5932004 	ldr	r2, [r3, #4]
    1580:	e51b300c 	ldr	r3, [fp, #-12]
    1584:	e5933004 	ldr	r3, [r3, #4]
    1588:	e0822003 	add	r2, r2, r3
    158c:	e51b3008 	ldr	r3, [fp, #-8]
    1590:	e5832004 	str	r2, [r3, #4]
    1594:	e51b300c 	ldr	r3, [fp, #-12]
    1598:	e5932000 	ldr	r2, [r3]
    159c:	e51b3008 	ldr	r3, [fp, #-8]
    15a0:	e5832000 	str	r2, [r3]
    15a4:	ea000002 	b	15b4 <free+0x15c>
    15a8:	e51b3008 	ldr	r3, [fp, #-8]
    15ac:	e51b200c 	ldr	r2, [fp, #-12]
    15b0:	e5832000 	str	r2, [r3]
    15b4:	e59f2014 	ldr	r2, [pc, #20]	@ 15d0 <free+0x178>
    15b8:	e51b3008 	ldr	r3, [fp, #-8]
    15bc:	e5823000 	str	r3, [r2]
    15c0:	e1a00000 	nop			@ (mov r0, r0)
    15c4:	e28bd000 	add	sp, fp, #0
    15c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    15cc:	e12fff1e 	bx	lr
    15d0:	00001ba8 	.word	0x00001ba8

000015d4 <morecore>:
    15d4:	e92d4800 	push	{fp, lr}
    15d8:	e28db004 	add	fp, sp, #4
    15dc:	e24dd010 	sub	sp, sp, #16
    15e0:	e50b0010 	str	r0, [fp, #-16]
    15e4:	e51b3010 	ldr	r3, [fp, #-16]
    15e8:	e3530a01 	cmp	r3, #4096	@ 0x1000
    15ec:	2a000001 	bcs	15f8 <morecore+0x24>
    15f0:	e3a03a01 	mov	r3, #4096	@ 0x1000
    15f4:	e50b3010 	str	r3, [fp, #-16]
    15f8:	e51b3010 	ldr	r3, [fp, #-16]
    15fc:	e1a03183 	lsl	r3, r3, #3
    1600:	e1a00003 	mov	r0, r3
    1604:	ebfffe07 	bl	e28 <sbrk>
    1608:	e50b0008 	str	r0, [fp, #-8]
    160c:	e51b3008 	ldr	r3, [fp, #-8]
    1610:	e3730001 	cmn	r3, #1
    1614:	1a000001 	bne	1620 <morecore+0x4c>
    1618:	e3a03000 	mov	r3, #0
    161c:	ea00000a 	b	164c <morecore+0x78>
    1620:	e51b3008 	ldr	r3, [fp, #-8]
    1624:	e50b300c 	str	r3, [fp, #-12]
    1628:	e51b300c 	ldr	r3, [fp, #-12]
    162c:	e51b2010 	ldr	r2, [fp, #-16]
    1630:	e5832004 	str	r2, [r3, #4]
    1634:	e51b300c 	ldr	r3, [fp, #-12]
    1638:	e2833008 	add	r3, r3, #8
    163c:	e1a00003 	mov	r0, r3
    1640:	ebffff84 	bl	1458 <free>
    1644:	e59f300c 	ldr	r3, [pc, #12]	@ 1658 <morecore+0x84>
    1648:	e5933000 	ldr	r3, [r3]
    164c:	e1a00003 	mov	r0, r3
    1650:	e24bd004 	sub	sp, fp, #4
    1654:	e8bd8800 	pop	{fp, pc}
    1658:	00001ba8 	.word	0x00001ba8

0000165c <malloc>:
    165c:	e92d4800 	push	{fp, lr}
    1660:	e28db004 	add	fp, sp, #4
    1664:	e24dd018 	sub	sp, sp, #24
    1668:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    166c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1670:	e2833007 	add	r3, r3, #7
    1674:	e1a031a3 	lsr	r3, r3, #3
    1678:	e2833001 	add	r3, r3, #1
    167c:	e50b3010 	str	r3, [fp, #-16]
    1680:	e59f3134 	ldr	r3, [pc, #308]	@ 17bc <malloc+0x160>
    1684:	e5933000 	ldr	r3, [r3]
    1688:	e50b300c 	str	r3, [fp, #-12]
    168c:	e51b300c 	ldr	r3, [fp, #-12]
    1690:	e3530000 	cmp	r3, #0
    1694:	1a00000b 	bne	16c8 <malloc+0x6c>
    1698:	e59f3120 	ldr	r3, [pc, #288]	@ 17c0 <malloc+0x164>
    169c:	e50b300c 	str	r3, [fp, #-12]
    16a0:	e59f2114 	ldr	r2, [pc, #276]	@ 17bc <malloc+0x160>
    16a4:	e51b300c 	ldr	r3, [fp, #-12]
    16a8:	e5823000 	str	r3, [r2]
    16ac:	e59f3108 	ldr	r3, [pc, #264]	@ 17bc <malloc+0x160>
    16b0:	e5933000 	ldr	r3, [r3]
    16b4:	e59f2104 	ldr	r2, [pc, #260]	@ 17c0 <malloc+0x164>
    16b8:	e5823000 	str	r3, [r2]
    16bc:	e59f30fc 	ldr	r3, [pc, #252]	@ 17c0 <malloc+0x164>
    16c0:	e3a02000 	mov	r2, #0
    16c4:	e5832004 	str	r2, [r3, #4]
    16c8:	e51b300c 	ldr	r3, [fp, #-12]
    16cc:	e5933000 	ldr	r3, [r3]
    16d0:	e50b3008 	str	r3, [fp, #-8]
    16d4:	e51b3008 	ldr	r3, [fp, #-8]
    16d8:	e5933004 	ldr	r3, [r3, #4]
    16dc:	e51b2010 	ldr	r2, [fp, #-16]
    16e0:	e1520003 	cmp	r2, r3
    16e4:	8a00001e 	bhi	1764 <malloc+0x108>
    16e8:	e51b3008 	ldr	r3, [fp, #-8]
    16ec:	e5933004 	ldr	r3, [r3, #4]
    16f0:	e51b2010 	ldr	r2, [fp, #-16]
    16f4:	e1520003 	cmp	r2, r3
    16f8:	1a000004 	bne	1710 <malloc+0xb4>
    16fc:	e51b3008 	ldr	r3, [fp, #-8]
    1700:	e5932000 	ldr	r2, [r3]
    1704:	e51b300c 	ldr	r3, [fp, #-12]
    1708:	e5832000 	str	r2, [r3]
    170c:	ea00000e 	b	174c <malloc+0xf0>
    1710:	e51b3008 	ldr	r3, [fp, #-8]
    1714:	e5932004 	ldr	r2, [r3, #4]
    1718:	e51b3010 	ldr	r3, [fp, #-16]
    171c:	e0422003 	sub	r2, r2, r3
    1720:	e51b3008 	ldr	r3, [fp, #-8]
    1724:	e5832004 	str	r2, [r3, #4]
    1728:	e51b3008 	ldr	r3, [fp, #-8]
    172c:	e5933004 	ldr	r3, [r3, #4]
    1730:	e1a03183 	lsl	r3, r3, #3
    1734:	e51b2008 	ldr	r2, [fp, #-8]
    1738:	e0823003 	add	r3, r2, r3
    173c:	e50b3008 	str	r3, [fp, #-8]
    1740:	e51b3008 	ldr	r3, [fp, #-8]
    1744:	e51b2010 	ldr	r2, [fp, #-16]
    1748:	e5832004 	str	r2, [r3, #4]
    174c:	e59f2068 	ldr	r2, [pc, #104]	@ 17bc <malloc+0x160>
    1750:	e51b300c 	ldr	r3, [fp, #-12]
    1754:	e5823000 	str	r3, [r2]
    1758:	e51b3008 	ldr	r3, [fp, #-8]
    175c:	e2833008 	add	r3, r3, #8
    1760:	ea000012 	b	17b0 <malloc+0x154>
    1764:	e59f3050 	ldr	r3, [pc, #80]	@ 17bc <malloc+0x160>
    1768:	e5933000 	ldr	r3, [r3]
    176c:	e51b2008 	ldr	r2, [fp, #-8]
    1770:	e1520003 	cmp	r2, r3
    1774:	1a000007 	bne	1798 <malloc+0x13c>
    1778:	e51b0010 	ldr	r0, [fp, #-16]
    177c:	ebffff94 	bl	15d4 <morecore>
    1780:	e50b0008 	str	r0, [fp, #-8]
    1784:	e51b3008 	ldr	r3, [fp, #-8]
    1788:	e3530000 	cmp	r3, #0
    178c:	1a000001 	bne	1798 <malloc+0x13c>
    1790:	e3a03000 	mov	r3, #0
    1794:	ea000005 	b	17b0 <malloc+0x154>
    1798:	e51b3008 	ldr	r3, [fp, #-8]
    179c:	e50b300c 	str	r3, [fp, #-12]
    17a0:	e51b3008 	ldr	r3, [fp, #-8]
    17a4:	e5933000 	ldr	r3, [r3]
    17a8:	e50b3008 	str	r3, [fp, #-8]
    17ac:	eaffffc8 	b	16d4 <malloc+0x78>
    17b0:	e1a00003 	mov	r0, r3
    17b4:	e24bd004 	sub	sp, fp, #4
    17b8:	e8bd8800 	pop	{fp, pc}
    17bc:	00001ba8 	.word	0x00001ba8
    17c0:	00001ba0 	.word	0x00001ba0

000017c4 <__udivsi3>:
    17c4:	e2512001 	subs	r2, r1, #1
    17c8:	012fff1e 	bxeq	lr
    17cc:	3a000036 	bcc	18ac <__udivsi3+0xe8>
    17d0:	e1500001 	cmp	r0, r1
    17d4:	9a000022 	bls	1864 <__udivsi3+0xa0>
    17d8:	e1110002 	tst	r1, r2
    17dc:	0a000023 	beq	1870 <__udivsi3+0xac>
    17e0:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    17e4:	01a01181 	lsleq	r1, r1, #3
    17e8:	03a03008 	moveq	r3, #8
    17ec:	13a03001 	movne	r3, #1
    17f0:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    17f4:	31510000 	cmpcc	r1, r0
    17f8:	31a01201 	lslcc	r1, r1, #4
    17fc:	31a03203 	lslcc	r3, r3, #4
    1800:	3afffffa 	bcc	17f0 <__udivsi3+0x2c>
    1804:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1808:	31510000 	cmpcc	r1, r0
    180c:	31a01081 	lslcc	r1, r1, #1
    1810:	31a03083 	lslcc	r3, r3, #1
    1814:	3afffffa 	bcc	1804 <__udivsi3+0x40>
    1818:	e3a02000 	mov	r2, #0
    181c:	e1500001 	cmp	r0, r1
    1820:	20400001 	subcs	r0, r0, r1
    1824:	21822003 	orrcs	r2, r2, r3
    1828:	e15000a1 	cmp	r0, r1, lsr #1
    182c:	204000a1 	subcs	r0, r0, r1, lsr #1
    1830:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1834:	e1500121 	cmp	r0, r1, lsr #2
    1838:	20400121 	subcs	r0, r0, r1, lsr #2
    183c:	21822123 	orrcs	r2, r2, r3, lsr #2
    1840:	e15001a1 	cmp	r0, r1, lsr #3
    1844:	204001a1 	subcs	r0, r0, r1, lsr #3
    1848:	218221a3 	orrcs	r2, r2, r3, lsr #3
    184c:	e3500000 	cmp	r0, #0
    1850:	11b03223 	lsrsne	r3, r3, #4
    1854:	11a01221 	lsrne	r1, r1, #4
    1858:	1affffef 	bne	181c <__udivsi3+0x58>
    185c:	e1a00002 	mov	r0, r2
    1860:	e12fff1e 	bx	lr
    1864:	03a00001 	moveq	r0, #1
    1868:	13a00000 	movne	r0, #0
    186c:	e12fff1e 	bx	lr
    1870:	e3510801 	cmp	r1, #65536	@ 0x10000
    1874:	21a01821 	lsrcs	r1, r1, #16
    1878:	23a02010 	movcs	r2, #16
    187c:	33a02000 	movcc	r2, #0
    1880:	e3510c01 	cmp	r1, #256	@ 0x100
    1884:	21a01421 	lsrcs	r1, r1, #8
    1888:	22822008 	addcs	r2, r2, #8
    188c:	e3510010 	cmp	r1, #16
    1890:	21a01221 	lsrcs	r1, r1, #4
    1894:	22822004 	addcs	r2, r2, #4
    1898:	e3510004 	cmp	r1, #4
    189c:	82822003 	addhi	r2, r2, #3
    18a0:	908220a1 	addls	r2, r2, r1, lsr #1
    18a4:	e1a00230 	lsr	r0, r0, r2
    18a8:	e12fff1e 	bx	lr
    18ac:	e3500000 	cmp	r0, #0
    18b0:	13e00000 	mvnne	r0, #0
    18b4:	ea000007 	b	18d8 <__aeabi_idiv0>

000018b8 <__aeabi_uidivmod>:
    18b8:	e3510000 	cmp	r1, #0
    18bc:	0afffffa 	beq	18ac <__udivsi3+0xe8>
    18c0:	e92d4003 	push	{r0, r1, lr}
    18c4:	ebffffbe 	bl	17c4 <__udivsi3>
    18c8:	e8bd4006 	pop	{r1, r2, lr}
    18cc:	e0030092 	mul	r3, r2, r0
    18d0:	e0411003 	sub	r1, r1, r3
    18d4:	e12fff1e 	bx	lr

000018d8 <__aeabi_idiv0>:
    18d8:	e12fff1e 	bx	lr
