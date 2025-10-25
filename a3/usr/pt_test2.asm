
_pt_test2:     file format elf32-littlearm


Disassembly of section .text:

00000000 <err>:
       0:	e92d4810 	push	{r4, fp, lr}
       4:	e28db008 	add	fp, sp, #8
       8:	e24dd014 	sub	sp, sp, #20
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e59f3024 	ldr	r3, [pc, #36]	@ 3c <err+0x3c>
      14:	e5934000 	ldr	r4, [r3]
      18:	eb0002d8 	bl	b80 <getpid>
      1c:	e1a03000 	mov	r3, r0
      20:	e58d3000 	str	r3, [sp]
      24:	e51b3010 	ldr	r3, [fp, #-16]
      28:	e1a02004 	mov	r2, r4
      2c:	e59f100c 	ldr	r1, [pc, #12]	@ 40 <err+0x40>
      30:	e3a00001 	mov	r0, #1
      34:	eb00037e 	bl	e34 <printf>
      38:	eb000240 	bl	940 <exit>
      3c:	000017e4 	.word	0x000017e4
      40:	000014f4 	.word	0x000014f4

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
      ac:	eb000360 	bl	e34 <printf>
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
      fc:	eb00034c 	bl	e34 <printf>
     100:	e51b3008 	ldr	r3, [fp, #-8]
     104:	e2833001 	add	r3, r3, #1
     108:	e50b3008 	str	r3, [fp, #-8]
     10c:	e51b3008 	ldr	r3, [fp, #-8]
     110:	e353000f 	cmp	r3, #15
     114:	daffffeb 	ble	c8 <read_trigger_test+0x34>
     118:	e59f1020 	ldr	r1, [pc, #32]	@ 140 <read_trigger_test+0xac>
     11c:	e3a00001 	mov	r0, #1
     120:	eb000343 	bl	e34 <printf>
     124:	e1a00000 	nop			@ (mov r0, r0)
     128:	e24bd004 	sub	sp, fp, #4
     12c:	e8bd8800 	pop	{fp, pc}
     130:	0000151c 	.word	0x0000151c
     134:	000017e4 	.word	0x000017e4
     138:	00001538 	.word	0x00001538
     13c:	0000154c 	.word	0x0000154c
     140:	00001564 	.word	0x00001564

00000144 <write_trigger_test>:
     144:	e92d4800 	push	{fp, lr}
     148:	e28db004 	add	fp, sp, #4
     14c:	e24dd010 	sub	sp, sp, #16
     150:	e50b0010 	str	r0, [fp, #-16]
     154:	e59f1084 	ldr	r1, [pc, #132]	@ 1e0 <write_trigger_test+0x9c>
     158:	e3a00001 	mov	r0, #1
     15c:	eb000334 	bl	e34 <printf>
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
     1ac:	eb000320 	bl	e34 <printf>
     1b0:	e51b3008 	ldr	r3, [fp, #-8]
     1b4:	e2833001 	add	r3, r3, #1
     1b8:	e50b3008 	str	r3, [fp, #-8]
     1bc:	e51b3008 	ldr	r3, [fp, #-8]
     1c0:	e353000f 	cmp	r3, #15
     1c4:	daffffeb 	ble	178 <write_trigger_test+0x34>
     1c8:	e59f1020 	ldr	r1, [pc, #32]	@ 1f0 <write_trigger_test+0xac>
     1cc:	e3a00001 	mov	r0, #1
     1d0:	eb000317 	bl	e34 <printf>
     1d4:	e1a00000 	nop			@ (mov r0, r0)
     1d8:	e24bd004 	sub	sp, fp, #4
     1dc:	e8bd8800 	pop	{fp, pc}
     1e0:	0000157c 	.word	0x0000157c
     1e4:	000017e4 	.word	0x000017e4
     1e8:	0000159c 	.word	0x0000159c
     1ec:	000015b0 	.word	0x000015b0
     1f0:	000015c8 	.word	0x000015c8

000001f4 <fork_isolation_test>:
     1f4:	e92d4800 	push	{fp, lr}
     1f8:	e28db004 	add	fp, sp, #4
     1fc:	e24dd018 	sub	sp, sp, #24
     200:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     204:	e59f1100 	ldr	r1, [pc, #256]	@ 30c <fork_isolation_test+0x118>
     208:	e3a00001 	mov	r0, #1
     20c:	eb000308 	bl	e34 <printf>
     210:	e59f30f8 	ldr	r3, [pc, #248]	@ 310 <fork_isolation_test+0x11c>
     214:	e59f20f8 	ldr	r2, [pc, #248]	@ 314 <fork_isolation_test+0x120>
     218:	e5832000 	str	r2, [r3]
     21c:	eb0001be 	bl	91c <fork>
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
     290:	eb0002e7 	bl	e34 <printf>
     294:	eb0001a9 	bl	940 <exit>
     298:	eb0001b1 	bl	964 <wait>
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
     2f0:	eb0002cf 	bl	e34 <printf>
     2f4:	e59f102c 	ldr	r1, [pc, #44]	@ 328 <fork_isolation_test+0x134>
     2f8:	e3a00001 	mov	r0, #1
     2fc:	eb0002cc 	bl	e34 <printf>
     300:	e1a00000 	nop			@ (mov r0, r0)
     304:	e24bd004 	sub	sp, fp, #4
     308:	e8bd8800 	pop	{fp, pc}
     30c:	000015e0 	.word	0x000015e0
     310:	000017e4 	.word	0x000017e4
     314:	00001600 	.word	0x00001600
     318:	00001614 	.word	0x00001614
     31c:	00001620 	.word	0x00001620
     320:	00001640 	.word	0x00001640
     324:	0000166c 	.word	0x0000166c
     328:	0000168c 	.word	0x0000168c

0000032c <ondemand_sbrk_test>:
     32c:	e92d4800 	push	{fp, lr}
     330:	e28db004 	add	fp, sp, #4
     334:	e24dd008 	sub	sp, sp, #8
     338:	e59f1090 	ldr	r1, [pc, #144]	@ 3d0 <ondemand_sbrk_test+0xa4>
     33c:	e3a00001 	mov	r0, #1
     340:	eb0002bb 	bl	e34 <printf>
     344:	e59f3088 	ldr	r3, [pc, #136]	@ 3d4 <ondemand_sbrk_test+0xa8>
     348:	e59f2088 	ldr	r2, [pc, #136]	@ 3d8 <ondemand_sbrk_test+0xac>
     34c:	e5832000 	str	r2, [r3]
     350:	e3a00801 	mov	r0, #65536	@ 0x10000
     354:	eb000212 	bl	ba4 <sbrk>
     358:	e50b0008 	str	r0, [fp, #-8]
     35c:	e51b3008 	ldr	r3, [fp, #-8]
     360:	e3730001 	cmn	r3, #1
     364:	1a000001 	bne	370 <ondemand_sbrk_test+0x44>
     368:	e59f006c 	ldr	r0, [pc, #108]	@ 3dc <ondemand_sbrk_test+0xb0>
     36c:	ebffff23 	bl	0 <err>
     370:	e3a03801 	mov	r3, #65536	@ 0x10000
     374:	e3a02010 	mov	r2, #16
     378:	e59f1060 	ldr	r1, [pc, #96]	@ 3e0 <ondemand_sbrk_test+0xb4>
     37c:	e3a00001 	mov	r0, #1
     380:	eb0002ab 	bl	e34 <printf>
     384:	e51b2008 	ldr	r2, [fp, #-8]
     388:	e59f1054 	ldr	r1, [pc, #84]	@ 3e4 <ondemand_sbrk_test+0xb8>
     38c:	e3a00001 	mov	r0, #1
     390:	eb0002a7 	bl	e34 <printf>
     394:	e59f104c 	ldr	r1, [pc, #76]	@ 3e8 <ondemand_sbrk_test+0xbc>
     398:	e3a00001 	mov	r0, #1
     39c:	eb0002a4 	bl	e34 <printf>
     3a0:	e51b0008 	ldr	r0, [fp, #-8]
     3a4:	ebffff3a 	bl	94 <read_trigger_test>
     3a8:	e51b0008 	ldr	r0, [fp, #-8]
     3ac:	ebffff64 	bl	144 <write_trigger_test>
     3b0:	e51b0008 	ldr	r0, [fp, #-8]
     3b4:	ebffff8e 	bl	1f4 <fork_isolation_test>
     3b8:	e59f102c 	ldr	r1, [pc, #44]	@ 3ec <ondemand_sbrk_test+0xc0>
     3bc:	e3a00001 	mov	r0, #1
     3c0:	eb00029b 	bl	e34 <printf>
     3c4:	e1a00000 	nop			@ (mov r0, r0)
     3c8:	e24bd004 	sub	sp, fp, #4
     3cc:	e8bd8800 	pop	{fp, pc}
     3d0:	000016a8 	.word	0x000016a8
     3d4:	000017e4 	.word	0x000017e4
     3d8:	000016c8 	.word	0x000016c8
     3dc:	000016dc 	.word	0x000016dc
     3e0:	000016e8 	.word	0x000016e8
     3e4:	00001710 	.word	0x00001710
     3e8:	00001724 	.word	0x00001724
     3ec:	0000176c 	.word	0x0000176c

000003f0 <main>:
     3f0:	e92d4800 	push	{fp, lr}
     3f4:	e28db004 	add	fp, sp, #4
     3f8:	e24dd008 	sub	sp, sp, #8
     3fc:	e50b0008 	str	r0, [fp, #-8]
     400:	e50b100c 	str	r1, [fp, #-12]
     404:	e59f1018 	ldr	r1, [pc, #24]	@ 424 <main+0x34>
     408:	e3a00001 	mov	r0, #1
     40c:	eb000288 	bl	e34 <printf>
     410:	ebffffc5 	bl	32c <ondemand_sbrk_test>
     414:	e59f100c 	ldr	r1, [pc, #12]	@ 428 <main+0x38>
     418:	e3a00001 	mov	r0, #1
     41c:	eb000284 	bl	e34 <printf>
     420:	eb000146 	bl	940 <exit>
     424:	00001784 	.word	0x00001784
     428:	000017b4 	.word	0x000017b4

0000042c <strcpy>:
     42c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     430:	e28db000 	add	fp, sp, #0
     434:	e24dd014 	sub	sp, sp, #20
     438:	e50b0010 	str	r0, [fp, #-16]
     43c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     440:	e51b3010 	ldr	r3, [fp, #-16]
     444:	e50b3008 	str	r3, [fp, #-8]
     448:	e1a00000 	nop			@ (mov r0, r0)
     44c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     450:	e2823001 	add	r3, r2, #1
     454:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     458:	e51b3010 	ldr	r3, [fp, #-16]
     45c:	e2831001 	add	r1, r3, #1
     460:	e50b1010 	str	r1, [fp, #-16]
     464:	e5d22000 	ldrb	r2, [r2]
     468:	e5c32000 	strb	r2, [r3]
     46c:	e5d33000 	ldrb	r3, [r3]
     470:	e3530000 	cmp	r3, #0
     474:	1afffff4 	bne	44c <strcpy+0x20>
     478:	e51b3008 	ldr	r3, [fp, #-8]
     47c:	e1a00003 	mov	r0, r3
     480:	e28bd000 	add	sp, fp, #0
     484:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     488:	e12fff1e 	bx	lr

0000048c <strcmp>:
     48c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     490:	e28db000 	add	fp, sp, #0
     494:	e24dd00c 	sub	sp, sp, #12
     498:	e50b0008 	str	r0, [fp, #-8]
     49c:	e50b100c 	str	r1, [fp, #-12]
     4a0:	ea000005 	b	4bc <strcmp+0x30>
     4a4:	e51b3008 	ldr	r3, [fp, #-8]
     4a8:	e2833001 	add	r3, r3, #1
     4ac:	e50b3008 	str	r3, [fp, #-8]
     4b0:	e51b300c 	ldr	r3, [fp, #-12]
     4b4:	e2833001 	add	r3, r3, #1
     4b8:	e50b300c 	str	r3, [fp, #-12]
     4bc:	e51b3008 	ldr	r3, [fp, #-8]
     4c0:	e5d33000 	ldrb	r3, [r3]
     4c4:	e3530000 	cmp	r3, #0
     4c8:	0a000005 	beq	4e4 <strcmp+0x58>
     4cc:	e51b3008 	ldr	r3, [fp, #-8]
     4d0:	e5d32000 	ldrb	r2, [r3]
     4d4:	e51b300c 	ldr	r3, [fp, #-12]
     4d8:	e5d33000 	ldrb	r3, [r3]
     4dc:	e1520003 	cmp	r2, r3
     4e0:	0affffef 	beq	4a4 <strcmp+0x18>
     4e4:	e51b3008 	ldr	r3, [fp, #-8]
     4e8:	e5d33000 	ldrb	r3, [r3]
     4ec:	e1a02003 	mov	r2, r3
     4f0:	e51b300c 	ldr	r3, [fp, #-12]
     4f4:	e5d33000 	ldrb	r3, [r3]
     4f8:	e0423003 	sub	r3, r2, r3
     4fc:	e1a00003 	mov	r0, r3
     500:	e28bd000 	add	sp, fp, #0
     504:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     508:	e12fff1e 	bx	lr

0000050c <strlen>:
     50c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     510:	e28db000 	add	fp, sp, #0
     514:	e24dd014 	sub	sp, sp, #20
     518:	e50b0010 	str	r0, [fp, #-16]
     51c:	e3a03000 	mov	r3, #0
     520:	e50b3008 	str	r3, [fp, #-8]
     524:	ea000002 	b	534 <strlen+0x28>
     528:	e51b3008 	ldr	r3, [fp, #-8]
     52c:	e2833001 	add	r3, r3, #1
     530:	e50b3008 	str	r3, [fp, #-8]
     534:	e51b3008 	ldr	r3, [fp, #-8]
     538:	e51b2010 	ldr	r2, [fp, #-16]
     53c:	e0823003 	add	r3, r2, r3
     540:	e5d33000 	ldrb	r3, [r3]
     544:	e3530000 	cmp	r3, #0
     548:	1afffff6 	bne	528 <strlen+0x1c>
     54c:	e51b3008 	ldr	r3, [fp, #-8]
     550:	e1a00003 	mov	r0, r3
     554:	e28bd000 	add	sp, fp, #0
     558:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     55c:	e12fff1e 	bx	lr

00000560 <memset>:
     560:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     564:	e28db000 	add	fp, sp, #0
     568:	e24dd024 	sub	sp, sp, #36	@ 0x24
     56c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     570:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     574:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     578:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     57c:	e50b3008 	str	r3, [fp, #-8]
     580:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     584:	e54b300d 	strb	r3, [fp, #-13]
     588:	e55b200d 	ldrb	r2, [fp, #-13]
     58c:	e1a03002 	mov	r3, r2
     590:	e1a03403 	lsl	r3, r3, #8
     594:	e0833002 	add	r3, r3, r2
     598:	e1a03803 	lsl	r3, r3, #16
     59c:	e1a02003 	mov	r2, r3
     5a0:	e55b300d 	ldrb	r3, [fp, #-13]
     5a4:	e1a03403 	lsl	r3, r3, #8
     5a8:	e1822003 	orr	r2, r2, r3
     5ac:	e55b300d 	ldrb	r3, [fp, #-13]
     5b0:	e1823003 	orr	r3, r2, r3
     5b4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     5b8:	ea000008 	b	5e0 <memset+0x80>
     5bc:	e51b3008 	ldr	r3, [fp, #-8]
     5c0:	e55b200d 	ldrb	r2, [fp, #-13]
     5c4:	e5c32000 	strb	r2, [r3]
     5c8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     5cc:	e2433001 	sub	r3, r3, #1
     5d0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     5d4:	e51b3008 	ldr	r3, [fp, #-8]
     5d8:	e2833001 	add	r3, r3, #1
     5dc:	e50b3008 	str	r3, [fp, #-8]
     5e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     5e4:	e3530000 	cmp	r3, #0
     5e8:	0a000003 	beq	5fc <memset+0x9c>
     5ec:	e51b3008 	ldr	r3, [fp, #-8]
     5f0:	e2033003 	and	r3, r3, #3
     5f4:	e3530000 	cmp	r3, #0
     5f8:	1affffef 	bne	5bc <memset+0x5c>
     5fc:	e51b3008 	ldr	r3, [fp, #-8]
     600:	e50b300c 	str	r3, [fp, #-12]
     604:	ea000008 	b	62c <memset+0xcc>
     608:	e51b300c 	ldr	r3, [fp, #-12]
     60c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     610:	e5832000 	str	r2, [r3]
     614:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     618:	e2433004 	sub	r3, r3, #4
     61c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     620:	e51b300c 	ldr	r3, [fp, #-12]
     624:	e2833004 	add	r3, r3, #4
     628:	e50b300c 	str	r3, [fp, #-12]
     62c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     630:	e3530003 	cmp	r3, #3
     634:	8afffff3 	bhi	608 <memset+0xa8>
     638:	e51b300c 	ldr	r3, [fp, #-12]
     63c:	e50b3008 	str	r3, [fp, #-8]
     640:	ea000008 	b	668 <memset+0x108>
     644:	e51b3008 	ldr	r3, [fp, #-8]
     648:	e55b200d 	ldrb	r2, [fp, #-13]
     64c:	e5c32000 	strb	r2, [r3]
     650:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     654:	e2433001 	sub	r3, r3, #1
     658:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     65c:	e51b3008 	ldr	r3, [fp, #-8]
     660:	e2833001 	add	r3, r3, #1
     664:	e50b3008 	str	r3, [fp, #-8]
     668:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     66c:	e3530000 	cmp	r3, #0
     670:	1afffff3 	bne	644 <memset+0xe4>
     674:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     678:	e1a00003 	mov	r0, r3
     67c:	e28bd000 	add	sp, fp, #0
     680:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     684:	e12fff1e 	bx	lr

00000688 <strchr>:
     688:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     68c:	e28db000 	add	fp, sp, #0
     690:	e24dd00c 	sub	sp, sp, #12
     694:	e50b0008 	str	r0, [fp, #-8]
     698:	e1a03001 	mov	r3, r1
     69c:	e54b3009 	strb	r3, [fp, #-9]
     6a0:	ea000009 	b	6cc <strchr+0x44>
     6a4:	e51b3008 	ldr	r3, [fp, #-8]
     6a8:	e5d33000 	ldrb	r3, [r3]
     6ac:	e55b2009 	ldrb	r2, [fp, #-9]
     6b0:	e1520003 	cmp	r2, r3
     6b4:	1a000001 	bne	6c0 <strchr+0x38>
     6b8:	e51b3008 	ldr	r3, [fp, #-8]
     6bc:	ea000007 	b	6e0 <strchr+0x58>
     6c0:	e51b3008 	ldr	r3, [fp, #-8]
     6c4:	e2833001 	add	r3, r3, #1
     6c8:	e50b3008 	str	r3, [fp, #-8]
     6cc:	e51b3008 	ldr	r3, [fp, #-8]
     6d0:	e5d33000 	ldrb	r3, [r3]
     6d4:	e3530000 	cmp	r3, #0
     6d8:	1afffff1 	bne	6a4 <strchr+0x1c>
     6dc:	e3a03000 	mov	r3, #0
     6e0:	e1a00003 	mov	r0, r3
     6e4:	e28bd000 	add	sp, fp, #0
     6e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6ec:	e12fff1e 	bx	lr

000006f0 <gets>:
     6f0:	e92d4800 	push	{fp, lr}
     6f4:	e28db004 	add	fp, sp, #4
     6f8:	e24dd018 	sub	sp, sp, #24
     6fc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     700:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     704:	e3a03000 	mov	r3, #0
     708:	e50b3008 	str	r3, [fp, #-8]
     70c:	ea000016 	b	76c <gets+0x7c>
     710:	e24b300d 	sub	r3, fp, #13
     714:	e3a02001 	mov	r2, #1
     718:	e1a01003 	mov	r1, r3
     71c:	e3a00000 	mov	r0, #0
     720:	eb0000a1 	bl	9ac <read>
     724:	e50b000c 	str	r0, [fp, #-12]
     728:	e51b300c 	ldr	r3, [fp, #-12]
     72c:	e3530000 	cmp	r3, #0
     730:	da000013 	ble	784 <gets+0x94>
     734:	e51b3008 	ldr	r3, [fp, #-8]
     738:	e2832001 	add	r2, r3, #1
     73c:	e50b2008 	str	r2, [fp, #-8]
     740:	e1a02003 	mov	r2, r3
     744:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     748:	e0833002 	add	r3, r3, r2
     74c:	e55b200d 	ldrb	r2, [fp, #-13]
     750:	e5c32000 	strb	r2, [r3]
     754:	e55b300d 	ldrb	r3, [fp, #-13]
     758:	e353000a 	cmp	r3, #10
     75c:	0a000009 	beq	788 <gets+0x98>
     760:	e55b300d 	ldrb	r3, [fp, #-13]
     764:	e353000d 	cmp	r3, #13
     768:	0a000006 	beq	788 <gets+0x98>
     76c:	e51b3008 	ldr	r3, [fp, #-8]
     770:	e2833001 	add	r3, r3, #1
     774:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     778:	e1520003 	cmp	r2, r3
     77c:	caffffe3 	bgt	710 <gets+0x20>
     780:	ea000000 	b	788 <gets+0x98>
     784:	e1a00000 	nop			@ (mov r0, r0)
     788:	e51b3008 	ldr	r3, [fp, #-8]
     78c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     790:	e0823003 	add	r3, r2, r3
     794:	e3a02000 	mov	r2, #0
     798:	e5c32000 	strb	r2, [r3]
     79c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7a0:	e1a00003 	mov	r0, r3
     7a4:	e24bd004 	sub	sp, fp, #4
     7a8:	e8bd8800 	pop	{fp, pc}

000007ac <stat>:
     7ac:	e92d4800 	push	{fp, lr}
     7b0:	e28db004 	add	fp, sp, #4
     7b4:	e24dd010 	sub	sp, sp, #16
     7b8:	e50b0010 	str	r0, [fp, #-16]
     7bc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     7c0:	e3a01000 	mov	r1, #0
     7c4:	e51b0010 	ldr	r0, [fp, #-16]
     7c8:	eb0000a4 	bl	a60 <open>
     7cc:	e50b0008 	str	r0, [fp, #-8]
     7d0:	e51b3008 	ldr	r3, [fp, #-8]
     7d4:	e3530000 	cmp	r3, #0
     7d8:	aa000001 	bge	7e4 <stat+0x38>
     7dc:	e3e03000 	mvn	r3, #0
     7e0:	ea000006 	b	800 <stat+0x54>
     7e4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     7e8:	e51b0008 	ldr	r0, [fp, #-8]
     7ec:	eb0000b6 	bl	acc <fstat>
     7f0:	e50b000c 	str	r0, [fp, #-12]
     7f4:	e51b0008 	ldr	r0, [fp, #-8]
     7f8:	eb00007d 	bl	9f4 <close>
     7fc:	e51b300c 	ldr	r3, [fp, #-12]
     800:	e1a00003 	mov	r0, r3
     804:	e24bd004 	sub	sp, fp, #4
     808:	e8bd8800 	pop	{fp, pc}

0000080c <atoi>:
     80c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     810:	e28db000 	add	fp, sp, #0
     814:	e24dd014 	sub	sp, sp, #20
     818:	e50b0010 	str	r0, [fp, #-16]
     81c:	e3a03000 	mov	r3, #0
     820:	e50b3008 	str	r3, [fp, #-8]
     824:	ea00000c 	b	85c <atoi+0x50>
     828:	e51b2008 	ldr	r2, [fp, #-8]
     82c:	e1a03002 	mov	r3, r2
     830:	e1a03103 	lsl	r3, r3, #2
     834:	e0833002 	add	r3, r3, r2
     838:	e1a03083 	lsl	r3, r3, #1
     83c:	e1a01003 	mov	r1, r3
     840:	e51b3010 	ldr	r3, [fp, #-16]
     844:	e2832001 	add	r2, r3, #1
     848:	e50b2010 	str	r2, [fp, #-16]
     84c:	e5d33000 	ldrb	r3, [r3]
     850:	e0813003 	add	r3, r1, r3
     854:	e2433030 	sub	r3, r3, #48	@ 0x30
     858:	e50b3008 	str	r3, [fp, #-8]
     85c:	e51b3010 	ldr	r3, [fp, #-16]
     860:	e5d33000 	ldrb	r3, [r3]
     864:	e353002f 	cmp	r3, #47	@ 0x2f
     868:	9a000003 	bls	87c <atoi+0x70>
     86c:	e51b3010 	ldr	r3, [fp, #-16]
     870:	e5d33000 	ldrb	r3, [r3]
     874:	e3530039 	cmp	r3, #57	@ 0x39
     878:	9affffea 	bls	828 <atoi+0x1c>
     87c:	e51b3010 	ldr	r3, [fp, #-16]
     880:	e5d33000 	ldrb	r3, [r3]
     884:	e3530000 	cmp	r3, #0
     888:	1a000001 	bne	894 <atoi+0x88>
     88c:	e51b3008 	ldr	r3, [fp, #-8]
     890:	ea000000 	b	898 <atoi+0x8c>
     894:	e3e03000 	mvn	r3, #0
     898:	e1a00003 	mov	r0, r3
     89c:	e28bd000 	add	sp, fp, #0
     8a0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8a4:	e12fff1e 	bx	lr

000008a8 <memmove>:
     8a8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     8ac:	e28db000 	add	fp, sp, #0
     8b0:	e24dd01c 	sub	sp, sp, #28
     8b4:	e50b0010 	str	r0, [fp, #-16]
     8b8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     8bc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     8c0:	e51b3010 	ldr	r3, [fp, #-16]
     8c4:	e50b3008 	str	r3, [fp, #-8]
     8c8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     8cc:	e50b300c 	str	r3, [fp, #-12]
     8d0:	ea000007 	b	8f4 <memmove+0x4c>
     8d4:	e51b200c 	ldr	r2, [fp, #-12]
     8d8:	e2823001 	add	r3, r2, #1
     8dc:	e50b300c 	str	r3, [fp, #-12]
     8e0:	e51b3008 	ldr	r3, [fp, #-8]
     8e4:	e2831001 	add	r1, r3, #1
     8e8:	e50b1008 	str	r1, [fp, #-8]
     8ec:	e5d22000 	ldrb	r2, [r2]
     8f0:	e5c32000 	strb	r2, [r3]
     8f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     8f8:	e2432001 	sub	r2, r3, #1
     8fc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     900:	e3530000 	cmp	r3, #0
     904:	cafffff2 	bgt	8d4 <memmove+0x2c>
     908:	e51b3010 	ldr	r3, [fp, #-16]
     90c:	e1a00003 	mov	r0, r3
     910:	e28bd000 	add	sp, fp, #0
     914:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     918:	e12fff1e 	bx	lr

0000091c <fork>:
     91c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     920:	e1a04003 	mov	r4, r3
     924:	e1a03002 	mov	r3, r2
     928:	e1a02001 	mov	r2, r1
     92c:	e1a01000 	mov	r1, r0
     930:	e3a00001 	mov	r0, #1
     934:	ef000000 	svc	0x00000000
     938:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     93c:	e12fff1e 	bx	lr

00000940 <exit>:
     940:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     944:	e1a04003 	mov	r4, r3
     948:	e1a03002 	mov	r3, r2
     94c:	e1a02001 	mov	r2, r1
     950:	e1a01000 	mov	r1, r0
     954:	e3a00002 	mov	r0, #2
     958:	ef000000 	svc	0x00000000
     95c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     960:	e12fff1e 	bx	lr

00000964 <wait>:
     964:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     968:	e1a04003 	mov	r4, r3
     96c:	e1a03002 	mov	r3, r2
     970:	e1a02001 	mov	r2, r1
     974:	e1a01000 	mov	r1, r0
     978:	e3a00003 	mov	r0, #3
     97c:	ef000000 	svc	0x00000000
     980:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     984:	e12fff1e 	bx	lr

00000988 <pipe>:
     988:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     98c:	e1a04003 	mov	r4, r3
     990:	e1a03002 	mov	r3, r2
     994:	e1a02001 	mov	r2, r1
     998:	e1a01000 	mov	r1, r0
     99c:	e3a00004 	mov	r0, #4
     9a0:	ef000000 	svc	0x00000000
     9a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a8:	e12fff1e 	bx	lr

000009ac <read>:
     9ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9b0:	e1a04003 	mov	r4, r3
     9b4:	e1a03002 	mov	r3, r2
     9b8:	e1a02001 	mov	r2, r1
     9bc:	e1a01000 	mov	r1, r0
     9c0:	e3a00005 	mov	r0, #5
     9c4:	ef000000 	svc	0x00000000
     9c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9cc:	e12fff1e 	bx	lr

000009d0 <write>:
     9d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9d4:	e1a04003 	mov	r4, r3
     9d8:	e1a03002 	mov	r3, r2
     9dc:	e1a02001 	mov	r2, r1
     9e0:	e1a01000 	mov	r1, r0
     9e4:	e3a00010 	mov	r0, #16
     9e8:	ef000000 	svc	0x00000000
     9ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9f0:	e12fff1e 	bx	lr

000009f4 <close>:
     9f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f8:	e1a04003 	mov	r4, r3
     9fc:	e1a03002 	mov	r3, r2
     a00:	e1a02001 	mov	r2, r1
     a04:	e1a01000 	mov	r1, r0
     a08:	e3a00015 	mov	r0, #21
     a0c:	ef000000 	svc	0x00000000
     a10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a14:	e12fff1e 	bx	lr

00000a18 <kill>:
     a18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a1c:	e1a04003 	mov	r4, r3
     a20:	e1a03002 	mov	r3, r2
     a24:	e1a02001 	mov	r2, r1
     a28:	e1a01000 	mov	r1, r0
     a2c:	e3a00006 	mov	r0, #6
     a30:	ef000000 	svc	0x00000000
     a34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a38:	e12fff1e 	bx	lr

00000a3c <exec>:
     a3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a40:	e1a04003 	mov	r4, r3
     a44:	e1a03002 	mov	r3, r2
     a48:	e1a02001 	mov	r2, r1
     a4c:	e1a01000 	mov	r1, r0
     a50:	e3a00007 	mov	r0, #7
     a54:	ef000000 	svc	0x00000000
     a58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a5c:	e12fff1e 	bx	lr

00000a60 <open>:
     a60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a64:	e1a04003 	mov	r4, r3
     a68:	e1a03002 	mov	r3, r2
     a6c:	e1a02001 	mov	r2, r1
     a70:	e1a01000 	mov	r1, r0
     a74:	e3a0000f 	mov	r0, #15
     a78:	ef000000 	svc	0x00000000
     a7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a80:	e12fff1e 	bx	lr

00000a84 <mknod>:
     a84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a88:	e1a04003 	mov	r4, r3
     a8c:	e1a03002 	mov	r3, r2
     a90:	e1a02001 	mov	r2, r1
     a94:	e1a01000 	mov	r1, r0
     a98:	e3a00011 	mov	r0, #17
     a9c:	ef000000 	svc	0x00000000
     aa0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aa4:	e12fff1e 	bx	lr

00000aa8 <unlink>:
     aa8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aac:	e1a04003 	mov	r4, r3
     ab0:	e1a03002 	mov	r3, r2
     ab4:	e1a02001 	mov	r2, r1
     ab8:	e1a01000 	mov	r1, r0
     abc:	e3a00012 	mov	r0, #18
     ac0:	ef000000 	svc	0x00000000
     ac4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac8:	e12fff1e 	bx	lr

00000acc <fstat>:
     acc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad0:	e1a04003 	mov	r4, r3
     ad4:	e1a03002 	mov	r3, r2
     ad8:	e1a02001 	mov	r2, r1
     adc:	e1a01000 	mov	r1, r0
     ae0:	e3a00008 	mov	r0, #8
     ae4:	ef000000 	svc	0x00000000
     ae8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aec:	e12fff1e 	bx	lr

00000af0 <link>:
     af0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     af4:	e1a04003 	mov	r4, r3
     af8:	e1a03002 	mov	r3, r2
     afc:	e1a02001 	mov	r2, r1
     b00:	e1a01000 	mov	r1, r0
     b04:	e3a00013 	mov	r0, #19
     b08:	ef000000 	svc	0x00000000
     b0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b10:	e12fff1e 	bx	lr

00000b14 <mkdir>:
     b14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b18:	e1a04003 	mov	r4, r3
     b1c:	e1a03002 	mov	r3, r2
     b20:	e1a02001 	mov	r2, r1
     b24:	e1a01000 	mov	r1, r0
     b28:	e3a00014 	mov	r0, #20
     b2c:	ef000000 	svc	0x00000000
     b30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b34:	e12fff1e 	bx	lr

00000b38 <chdir>:
     b38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b3c:	e1a04003 	mov	r4, r3
     b40:	e1a03002 	mov	r3, r2
     b44:	e1a02001 	mov	r2, r1
     b48:	e1a01000 	mov	r1, r0
     b4c:	e3a00009 	mov	r0, #9
     b50:	ef000000 	svc	0x00000000
     b54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b58:	e12fff1e 	bx	lr

00000b5c <dup>:
     b5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b60:	e1a04003 	mov	r4, r3
     b64:	e1a03002 	mov	r3, r2
     b68:	e1a02001 	mov	r2, r1
     b6c:	e1a01000 	mov	r1, r0
     b70:	e3a0000a 	mov	r0, #10
     b74:	ef000000 	svc	0x00000000
     b78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b7c:	e12fff1e 	bx	lr

00000b80 <getpid>:
     b80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b84:	e1a04003 	mov	r4, r3
     b88:	e1a03002 	mov	r3, r2
     b8c:	e1a02001 	mov	r2, r1
     b90:	e1a01000 	mov	r1, r0
     b94:	e3a0000b 	mov	r0, #11
     b98:	ef000000 	svc	0x00000000
     b9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba0:	e12fff1e 	bx	lr

00000ba4 <sbrk>:
     ba4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba8:	e1a04003 	mov	r4, r3
     bac:	e1a03002 	mov	r3, r2
     bb0:	e1a02001 	mov	r2, r1
     bb4:	e1a01000 	mov	r1, r0
     bb8:	e3a0000c 	mov	r0, #12
     bbc:	ef000000 	svc	0x00000000
     bc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc4:	e12fff1e 	bx	lr

00000bc8 <sleep>:
     bc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bcc:	e1a04003 	mov	r4, r3
     bd0:	e1a03002 	mov	r3, r2
     bd4:	e1a02001 	mov	r2, r1
     bd8:	e1a01000 	mov	r1, r0
     bdc:	e3a0000d 	mov	r0, #13
     be0:	ef000000 	svc	0x00000000
     be4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be8:	e12fff1e 	bx	lr

00000bec <uptime>:
     bec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf0:	e1a04003 	mov	r4, r3
     bf4:	e1a03002 	mov	r3, r2
     bf8:	e1a02001 	mov	r2, r1
     bfc:	e1a01000 	mov	r1, r0
     c00:	e3a0000e 	mov	r0, #14
     c04:	ef000000 	svc	0x00000000
     c08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c0c:	e12fff1e 	bx	lr

00000c10 <getprocs>:
     c10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c14:	e1a04003 	mov	r4, r3
     c18:	e1a03002 	mov	r3, r2
     c1c:	e1a02001 	mov	r2, r1
     c20:	e1a01000 	mov	r1, r0
     c24:	e3a00016 	mov	r0, #22
     c28:	ef000000 	svc	0x00000000
     c2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c30:	e12fff1e 	bx	lr

00000c34 <settickets>:
     c34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c38:	e1a04003 	mov	r4, r3
     c3c:	e1a03002 	mov	r3, r2
     c40:	e1a02001 	mov	r2, r1
     c44:	e1a01000 	mov	r1, r0
     c48:	e3a00017 	mov	r0, #23
     c4c:	ef000000 	svc	0x00000000
     c50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c54:	e12fff1e 	bx	lr

00000c58 <srand>:
     c58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c5c:	e1a04003 	mov	r4, r3
     c60:	e1a03002 	mov	r3, r2
     c64:	e1a02001 	mov	r2, r1
     c68:	e1a01000 	mov	r1, r0
     c6c:	e3a00018 	mov	r0, #24
     c70:	ef000000 	svc	0x00000000
     c74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c78:	e12fff1e 	bx	lr

00000c7c <getpinfo>:
     c7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c80:	e1a04003 	mov	r4, r3
     c84:	e1a03002 	mov	r3, r2
     c88:	e1a02001 	mov	r2, r1
     c8c:	e1a01000 	mov	r1, r0
     c90:	e3a00019 	mov	r0, #25
     c94:	ef000000 	svc	0x00000000
     c98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c9c:	e12fff1e 	bx	lr

00000ca0 <dumppagetable>:
     ca0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca4:	e1a04003 	mov	r4, r3
     ca8:	e1a03002 	mov	r3, r2
     cac:	e1a02001 	mov	r2, r1
     cb0:	e1a01000 	mov	r1, r0
     cb4:	e3a0001a 	mov	r0, #26
     cb8:	ef000000 	svc	0x00000000
     cbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc0:	e12fff1e 	bx	lr

00000cc4 <putc>:
     cc4:	e92d4800 	push	{fp, lr}
     cc8:	e28db004 	add	fp, sp, #4
     ccc:	e24dd008 	sub	sp, sp, #8
     cd0:	e50b0008 	str	r0, [fp, #-8]
     cd4:	e1a03001 	mov	r3, r1
     cd8:	e54b3009 	strb	r3, [fp, #-9]
     cdc:	e24b3009 	sub	r3, fp, #9
     ce0:	e3a02001 	mov	r2, #1
     ce4:	e1a01003 	mov	r1, r3
     ce8:	e51b0008 	ldr	r0, [fp, #-8]
     cec:	ebffff37 	bl	9d0 <write>
     cf0:	e1a00000 	nop			@ (mov r0, r0)
     cf4:	e24bd004 	sub	sp, fp, #4
     cf8:	e8bd8800 	pop	{fp, pc}

00000cfc <printint>:
     cfc:	e92d4800 	push	{fp, lr}
     d00:	e28db004 	add	fp, sp, #4
     d04:	e24dd030 	sub	sp, sp, #48	@ 0x30
     d08:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     d0c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     d10:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     d14:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     d18:	e3a03000 	mov	r3, #0
     d1c:	e50b300c 	str	r3, [fp, #-12]
     d20:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     d24:	e3530000 	cmp	r3, #0
     d28:	0a000008 	beq	d50 <printint+0x54>
     d2c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d30:	e3530000 	cmp	r3, #0
     d34:	aa000005 	bge	d50 <printint+0x54>
     d38:	e3a03001 	mov	r3, #1
     d3c:	e50b300c 	str	r3, [fp, #-12]
     d40:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d44:	e2633000 	rsb	r3, r3, #0
     d48:	e50b3010 	str	r3, [fp, #-16]
     d4c:	ea000001 	b	d58 <printint+0x5c>
     d50:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d54:	e50b3010 	str	r3, [fp, #-16]
     d58:	e3a03000 	mov	r3, #0
     d5c:	e50b3008 	str	r3, [fp, #-8]
     d60:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     d64:	e51b3010 	ldr	r3, [fp, #-16]
     d68:	e1a01002 	mov	r1, r2
     d6c:	e1a00003 	mov	r0, r3
     d70:	eb0001d5 	bl	14cc <__aeabi_uidivmod>
     d74:	e1a03001 	mov	r3, r1
     d78:	e1a01003 	mov	r1, r3
     d7c:	e51b3008 	ldr	r3, [fp, #-8]
     d80:	e2832001 	add	r2, r3, #1
     d84:	e50b2008 	str	r2, [fp, #-8]
     d88:	e59f20a0 	ldr	r2, [pc, #160]	@ e30 <printint+0x134>
     d8c:	e7d22001 	ldrb	r2, [r2, r1]
     d90:	e2433004 	sub	r3, r3, #4
     d94:	e083300b 	add	r3, r3, fp
     d98:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     d9c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     da0:	e1a01003 	mov	r1, r3
     da4:	e51b0010 	ldr	r0, [fp, #-16]
     da8:	eb00018a 	bl	13d8 <__udivsi3>
     dac:	e1a03000 	mov	r3, r0
     db0:	e50b3010 	str	r3, [fp, #-16]
     db4:	e51b3010 	ldr	r3, [fp, #-16]
     db8:	e3530000 	cmp	r3, #0
     dbc:	1affffe7 	bne	d60 <printint+0x64>
     dc0:	e51b300c 	ldr	r3, [fp, #-12]
     dc4:	e3530000 	cmp	r3, #0
     dc8:	0a00000e 	beq	e08 <printint+0x10c>
     dcc:	e51b3008 	ldr	r3, [fp, #-8]
     dd0:	e2832001 	add	r2, r3, #1
     dd4:	e50b2008 	str	r2, [fp, #-8]
     dd8:	e2433004 	sub	r3, r3, #4
     ddc:	e083300b 	add	r3, r3, fp
     de0:	e3a0202d 	mov	r2, #45	@ 0x2d
     de4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     de8:	ea000006 	b	e08 <printint+0x10c>
     dec:	e24b2020 	sub	r2, fp, #32
     df0:	e51b3008 	ldr	r3, [fp, #-8]
     df4:	e0823003 	add	r3, r2, r3
     df8:	e5d33000 	ldrb	r3, [r3]
     dfc:	e1a01003 	mov	r1, r3
     e00:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     e04:	ebffffae 	bl	cc4 <putc>
     e08:	e51b3008 	ldr	r3, [fp, #-8]
     e0c:	e2433001 	sub	r3, r3, #1
     e10:	e50b3008 	str	r3, [fp, #-8]
     e14:	e51b3008 	ldr	r3, [fp, #-8]
     e18:	e3530000 	cmp	r3, #0
     e1c:	aafffff2 	bge	dec <printint+0xf0>
     e20:	e1a00000 	nop			@ (mov r0, r0)
     e24:	e1a00000 	nop			@ (mov r0, r0)
     e28:	e24bd004 	sub	sp, fp, #4
     e2c:	e8bd8800 	pop	{fp, pc}
     e30:	000017e8 	.word	0x000017e8

00000e34 <printf>:
     e34:	e92d000e 	push	{r1, r2, r3}
     e38:	e92d4800 	push	{fp, lr}
     e3c:	e28db004 	add	fp, sp, #4
     e40:	e24dd024 	sub	sp, sp, #36	@ 0x24
     e44:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     e48:	e3a03000 	mov	r3, #0
     e4c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     e50:	e28b3008 	add	r3, fp, #8
     e54:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e58:	e3a03000 	mov	r3, #0
     e5c:	e50b3010 	str	r3, [fp, #-16]
     e60:	ea000074 	b	1038 <printf+0x204>
     e64:	e59b2004 	ldr	r2, [fp, #4]
     e68:	e51b3010 	ldr	r3, [fp, #-16]
     e6c:	e0823003 	add	r3, r2, r3
     e70:	e5d33000 	ldrb	r3, [r3]
     e74:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     e78:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     e7c:	e3530000 	cmp	r3, #0
     e80:	1a00000b 	bne	eb4 <printf+0x80>
     e84:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e88:	e3530025 	cmp	r3, #37	@ 0x25
     e8c:	1a000002 	bne	e9c <printf+0x68>
     e90:	e3a03025 	mov	r3, #37	@ 0x25
     e94:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     e98:	ea000063 	b	102c <printf+0x1f8>
     e9c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ea0:	e6ef3073 	uxtb	r3, r3
     ea4:	e1a01003 	mov	r1, r3
     ea8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     eac:	ebffff84 	bl	cc4 <putc>
     eb0:	ea00005d 	b	102c <printf+0x1f8>
     eb4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     eb8:	e3530025 	cmp	r3, #37	@ 0x25
     ebc:	1a00005a 	bne	102c <printf+0x1f8>
     ec0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ec4:	e3530064 	cmp	r3, #100	@ 0x64
     ec8:	1a00000a 	bne	ef8 <printf+0xc4>
     ecc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ed0:	e5933000 	ldr	r3, [r3]
     ed4:	e1a01003 	mov	r1, r3
     ed8:	e3a03001 	mov	r3, #1
     edc:	e3a0200a 	mov	r2, #10
     ee0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ee4:	ebffff84 	bl	cfc <printint>
     ee8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     eec:	e2833004 	add	r3, r3, #4
     ef0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ef4:	ea00004a 	b	1024 <printf+0x1f0>
     ef8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     efc:	e3530078 	cmp	r3, #120	@ 0x78
     f00:	0a000002 	beq	f10 <printf+0xdc>
     f04:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f08:	e3530070 	cmp	r3, #112	@ 0x70
     f0c:	1a00000a 	bne	f3c <printf+0x108>
     f10:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f14:	e5933000 	ldr	r3, [r3]
     f18:	e1a01003 	mov	r1, r3
     f1c:	e3a03000 	mov	r3, #0
     f20:	e3a02010 	mov	r2, #16
     f24:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f28:	ebffff73 	bl	cfc <printint>
     f2c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f30:	e2833004 	add	r3, r3, #4
     f34:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f38:	ea000039 	b	1024 <printf+0x1f0>
     f3c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f40:	e3530073 	cmp	r3, #115	@ 0x73
     f44:	1a000018 	bne	fac <printf+0x178>
     f48:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f4c:	e5933000 	ldr	r3, [r3]
     f50:	e50b300c 	str	r3, [fp, #-12]
     f54:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f58:	e2833004 	add	r3, r3, #4
     f5c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f60:	e51b300c 	ldr	r3, [fp, #-12]
     f64:	e3530000 	cmp	r3, #0
     f68:	1a00000a 	bne	f98 <printf+0x164>
     f6c:	e59f30f4 	ldr	r3, [pc, #244]	@ 1068 <printf+0x234>
     f70:	e50b300c 	str	r3, [fp, #-12]
     f74:	ea000007 	b	f98 <printf+0x164>
     f78:	e51b300c 	ldr	r3, [fp, #-12]
     f7c:	e5d33000 	ldrb	r3, [r3]
     f80:	e1a01003 	mov	r1, r3
     f84:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f88:	ebffff4d 	bl	cc4 <putc>
     f8c:	e51b300c 	ldr	r3, [fp, #-12]
     f90:	e2833001 	add	r3, r3, #1
     f94:	e50b300c 	str	r3, [fp, #-12]
     f98:	e51b300c 	ldr	r3, [fp, #-12]
     f9c:	e5d33000 	ldrb	r3, [r3]
     fa0:	e3530000 	cmp	r3, #0
     fa4:	1afffff3 	bne	f78 <printf+0x144>
     fa8:	ea00001d 	b	1024 <printf+0x1f0>
     fac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fb0:	e3530063 	cmp	r3, #99	@ 0x63
     fb4:	1a000009 	bne	fe0 <printf+0x1ac>
     fb8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fbc:	e5933000 	ldr	r3, [r3]
     fc0:	e6ef3073 	uxtb	r3, r3
     fc4:	e1a01003 	mov	r1, r3
     fc8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fcc:	ebffff3c 	bl	cc4 <putc>
     fd0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fd4:	e2833004 	add	r3, r3, #4
     fd8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fdc:	ea000010 	b	1024 <printf+0x1f0>
     fe0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fe4:	e3530025 	cmp	r3, #37	@ 0x25
     fe8:	1a000005 	bne	1004 <printf+0x1d0>
     fec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ff0:	e6ef3073 	uxtb	r3, r3
     ff4:	e1a01003 	mov	r1, r3
     ff8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ffc:	ebffff30 	bl	cc4 <putc>
    1000:	ea000007 	b	1024 <printf+0x1f0>
    1004:	e3a01025 	mov	r1, #37	@ 0x25
    1008:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    100c:	ebffff2c 	bl	cc4 <putc>
    1010:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1014:	e6ef3073 	uxtb	r3, r3
    1018:	e1a01003 	mov	r1, r3
    101c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1020:	ebffff27 	bl	cc4 <putc>
    1024:	e3a03000 	mov	r3, #0
    1028:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    102c:	e51b3010 	ldr	r3, [fp, #-16]
    1030:	e2833001 	add	r3, r3, #1
    1034:	e50b3010 	str	r3, [fp, #-16]
    1038:	e59b2004 	ldr	r2, [fp, #4]
    103c:	e51b3010 	ldr	r3, [fp, #-16]
    1040:	e0823003 	add	r3, r2, r3
    1044:	e5d33000 	ldrb	r3, [r3]
    1048:	e3530000 	cmp	r3, #0
    104c:	1affff84 	bne	e64 <printf+0x30>
    1050:	e1a00000 	nop			@ (mov r0, r0)
    1054:	e1a00000 	nop			@ (mov r0, r0)
    1058:	e24bd004 	sub	sp, fp, #4
    105c:	e8bd4800 	pop	{fp, lr}
    1060:	e28dd00c 	add	sp, sp, #12
    1064:	e12fff1e 	bx	lr
    1068:	000017dc 	.word	0x000017dc

0000106c <free>:
    106c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1070:	e28db000 	add	fp, sp, #0
    1074:	e24dd014 	sub	sp, sp, #20
    1078:	e50b0010 	str	r0, [fp, #-16]
    107c:	e51b3010 	ldr	r3, [fp, #-16]
    1080:	e2433008 	sub	r3, r3, #8
    1084:	e50b300c 	str	r3, [fp, #-12]
    1088:	e59f3154 	ldr	r3, [pc, #340]	@ 11e4 <free+0x178>
    108c:	e5933000 	ldr	r3, [r3]
    1090:	e50b3008 	str	r3, [fp, #-8]
    1094:	ea000010 	b	10dc <free+0x70>
    1098:	e51b3008 	ldr	r3, [fp, #-8]
    109c:	e5933000 	ldr	r3, [r3]
    10a0:	e51b2008 	ldr	r2, [fp, #-8]
    10a4:	e1520003 	cmp	r2, r3
    10a8:	3a000008 	bcc	10d0 <free+0x64>
    10ac:	e51b200c 	ldr	r2, [fp, #-12]
    10b0:	e51b3008 	ldr	r3, [fp, #-8]
    10b4:	e1520003 	cmp	r2, r3
    10b8:	8a000010 	bhi	1100 <free+0x94>
    10bc:	e51b3008 	ldr	r3, [fp, #-8]
    10c0:	e5933000 	ldr	r3, [r3]
    10c4:	e51b200c 	ldr	r2, [fp, #-12]
    10c8:	e1520003 	cmp	r2, r3
    10cc:	3a00000b 	bcc	1100 <free+0x94>
    10d0:	e51b3008 	ldr	r3, [fp, #-8]
    10d4:	e5933000 	ldr	r3, [r3]
    10d8:	e50b3008 	str	r3, [fp, #-8]
    10dc:	e51b200c 	ldr	r2, [fp, #-12]
    10e0:	e51b3008 	ldr	r3, [fp, #-8]
    10e4:	e1520003 	cmp	r2, r3
    10e8:	9affffea 	bls	1098 <free+0x2c>
    10ec:	e51b3008 	ldr	r3, [fp, #-8]
    10f0:	e5933000 	ldr	r3, [r3]
    10f4:	e51b200c 	ldr	r2, [fp, #-12]
    10f8:	e1520003 	cmp	r2, r3
    10fc:	2affffe5 	bcs	1098 <free+0x2c>
    1100:	e51b300c 	ldr	r3, [fp, #-12]
    1104:	e5933004 	ldr	r3, [r3, #4]
    1108:	e1a03183 	lsl	r3, r3, #3
    110c:	e51b200c 	ldr	r2, [fp, #-12]
    1110:	e0822003 	add	r2, r2, r3
    1114:	e51b3008 	ldr	r3, [fp, #-8]
    1118:	e5933000 	ldr	r3, [r3]
    111c:	e1520003 	cmp	r2, r3
    1120:	1a00000d 	bne	115c <free+0xf0>
    1124:	e51b300c 	ldr	r3, [fp, #-12]
    1128:	e5932004 	ldr	r2, [r3, #4]
    112c:	e51b3008 	ldr	r3, [fp, #-8]
    1130:	e5933000 	ldr	r3, [r3]
    1134:	e5933004 	ldr	r3, [r3, #4]
    1138:	e0822003 	add	r2, r2, r3
    113c:	e51b300c 	ldr	r3, [fp, #-12]
    1140:	e5832004 	str	r2, [r3, #4]
    1144:	e51b3008 	ldr	r3, [fp, #-8]
    1148:	e5933000 	ldr	r3, [r3]
    114c:	e5932000 	ldr	r2, [r3]
    1150:	e51b300c 	ldr	r3, [fp, #-12]
    1154:	e5832000 	str	r2, [r3]
    1158:	ea000003 	b	116c <free+0x100>
    115c:	e51b3008 	ldr	r3, [fp, #-8]
    1160:	e5932000 	ldr	r2, [r3]
    1164:	e51b300c 	ldr	r3, [fp, #-12]
    1168:	e5832000 	str	r2, [r3]
    116c:	e51b3008 	ldr	r3, [fp, #-8]
    1170:	e5933004 	ldr	r3, [r3, #4]
    1174:	e1a03183 	lsl	r3, r3, #3
    1178:	e51b2008 	ldr	r2, [fp, #-8]
    117c:	e0823003 	add	r3, r2, r3
    1180:	e51b200c 	ldr	r2, [fp, #-12]
    1184:	e1520003 	cmp	r2, r3
    1188:	1a00000b 	bne	11bc <free+0x150>
    118c:	e51b3008 	ldr	r3, [fp, #-8]
    1190:	e5932004 	ldr	r2, [r3, #4]
    1194:	e51b300c 	ldr	r3, [fp, #-12]
    1198:	e5933004 	ldr	r3, [r3, #4]
    119c:	e0822003 	add	r2, r2, r3
    11a0:	e51b3008 	ldr	r3, [fp, #-8]
    11a4:	e5832004 	str	r2, [r3, #4]
    11a8:	e51b300c 	ldr	r3, [fp, #-12]
    11ac:	e5932000 	ldr	r2, [r3]
    11b0:	e51b3008 	ldr	r3, [fp, #-8]
    11b4:	e5832000 	str	r2, [r3]
    11b8:	ea000002 	b	11c8 <free+0x15c>
    11bc:	e51b3008 	ldr	r3, [fp, #-8]
    11c0:	e51b200c 	ldr	r2, [fp, #-12]
    11c4:	e5832000 	str	r2, [r3]
    11c8:	e59f2014 	ldr	r2, [pc, #20]	@ 11e4 <free+0x178>
    11cc:	e51b3008 	ldr	r3, [fp, #-8]
    11d0:	e5823000 	str	r3, [r2]
    11d4:	e1a00000 	nop			@ (mov r0, r0)
    11d8:	e28bd000 	add	sp, fp, #0
    11dc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    11e0:	e12fff1e 	bx	lr
    11e4:	00001804 	.word	0x00001804

000011e8 <morecore>:
    11e8:	e92d4800 	push	{fp, lr}
    11ec:	e28db004 	add	fp, sp, #4
    11f0:	e24dd010 	sub	sp, sp, #16
    11f4:	e50b0010 	str	r0, [fp, #-16]
    11f8:	e51b3010 	ldr	r3, [fp, #-16]
    11fc:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1200:	2a000001 	bcs	120c <morecore+0x24>
    1204:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1208:	e50b3010 	str	r3, [fp, #-16]
    120c:	e51b3010 	ldr	r3, [fp, #-16]
    1210:	e1a03183 	lsl	r3, r3, #3
    1214:	e1a00003 	mov	r0, r3
    1218:	ebfffe61 	bl	ba4 <sbrk>
    121c:	e50b0008 	str	r0, [fp, #-8]
    1220:	e51b3008 	ldr	r3, [fp, #-8]
    1224:	e3730001 	cmn	r3, #1
    1228:	1a000001 	bne	1234 <morecore+0x4c>
    122c:	e3a03000 	mov	r3, #0
    1230:	ea00000a 	b	1260 <morecore+0x78>
    1234:	e51b3008 	ldr	r3, [fp, #-8]
    1238:	e50b300c 	str	r3, [fp, #-12]
    123c:	e51b300c 	ldr	r3, [fp, #-12]
    1240:	e51b2010 	ldr	r2, [fp, #-16]
    1244:	e5832004 	str	r2, [r3, #4]
    1248:	e51b300c 	ldr	r3, [fp, #-12]
    124c:	e2833008 	add	r3, r3, #8
    1250:	e1a00003 	mov	r0, r3
    1254:	ebffff84 	bl	106c <free>
    1258:	e59f300c 	ldr	r3, [pc, #12]	@ 126c <morecore+0x84>
    125c:	e5933000 	ldr	r3, [r3]
    1260:	e1a00003 	mov	r0, r3
    1264:	e24bd004 	sub	sp, fp, #4
    1268:	e8bd8800 	pop	{fp, pc}
    126c:	00001804 	.word	0x00001804

00001270 <malloc>:
    1270:	e92d4800 	push	{fp, lr}
    1274:	e28db004 	add	fp, sp, #4
    1278:	e24dd018 	sub	sp, sp, #24
    127c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1280:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1284:	e2833007 	add	r3, r3, #7
    1288:	e1a031a3 	lsr	r3, r3, #3
    128c:	e2833001 	add	r3, r3, #1
    1290:	e50b3010 	str	r3, [fp, #-16]
    1294:	e59f3134 	ldr	r3, [pc, #308]	@ 13d0 <malloc+0x160>
    1298:	e5933000 	ldr	r3, [r3]
    129c:	e50b300c 	str	r3, [fp, #-12]
    12a0:	e51b300c 	ldr	r3, [fp, #-12]
    12a4:	e3530000 	cmp	r3, #0
    12a8:	1a00000b 	bne	12dc <malloc+0x6c>
    12ac:	e59f3120 	ldr	r3, [pc, #288]	@ 13d4 <malloc+0x164>
    12b0:	e50b300c 	str	r3, [fp, #-12]
    12b4:	e59f2114 	ldr	r2, [pc, #276]	@ 13d0 <malloc+0x160>
    12b8:	e51b300c 	ldr	r3, [fp, #-12]
    12bc:	e5823000 	str	r3, [r2]
    12c0:	e59f3108 	ldr	r3, [pc, #264]	@ 13d0 <malloc+0x160>
    12c4:	e5933000 	ldr	r3, [r3]
    12c8:	e59f2104 	ldr	r2, [pc, #260]	@ 13d4 <malloc+0x164>
    12cc:	e5823000 	str	r3, [r2]
    12d0:	e59f30fc 	ldr	r3, [pc, #252]	@ 13d4 <malloc+0x164>
    12d4:	e3a02000 	mov	r2, #0
    12d8:	e5832004 	str	r2, [r3, #4]
    12dc:	e51b300c 	ldr	r3, [fp, #-12]
    12e0:	e5933000 	ldr	r3, [r3]
    12e4:	e50b3008 	str	r3, [fp, #-8]
    12e8:	e51b3008 	ldr	r3, [fp, #-8]
    12ec:	e5933004 	ldr	r3, [r3, #4]
    12f0:	e51b2010 	ldr	r2, [fp, #-16]
    12f4:	e1520003 	cmp	r2, r3
    12f8:	8a00001e 	bhi	1378 <malloc+0x108>
    12fc:	e51b3008 	ldr	r3, [fp, #-8]
    1300:	e5933004 	ldr	r3, [r3, #4]
    1304:	e51b2010 	ldr	r2, [fp, #-16]
    1308:	e1520003 	cmp	r2, r3
    130c:	1a000004 	bne	1324 <malloc+0xb4>
    1310:	e51b3008 	ldr	r3, [fp, #-8]
    1314:	e5932000 	ldr	r2, [r3]
    1318:	e51b300c 	ldr	r3, [fp, #-12]
    131c:	e5832000 	str	r2, [r3]
    1320:	ea00000e 	b	1360 <malloc+0xf0>
    1324:	e51b3008 	ldr	r3, [fp, #-8]
    1328:	e5932004 	ldr	r2, [r3, #4]
    132c:	e51b3010 	ldr	r3, [fp, #-16]
    1330:	e0422003 	sub	r2, r2, r3
    1334:	e51b3008 	ldr	r3, [fp, #-8]
    1338:	e5832004 	str	r2, [r3, #4]
    133c:	e51b3008 	ldr	r3, [fp, #-8]
    1340:	e5933004 	ldr	r3, [r3, #4]
    1344:	e1a03183 	lsl	r3, r3, #3
    1348:	e51b2008 	ldr	r2, [fp, #-8]
    134c:	e0823003 	add	r3, r2, r3
    1350:	e50b3008 	str	r3, [fp, #-8]
    1354:	e51b3008 	ldr	r3, [fp, #-8]
    1358:	e51b2010 	ldr	r2, [fp, #-16]
    135c:	e5832004 	str	r2, [r3, #4]
    1360:	e59f2068 	ldr	r2, [pc, #104]	@ 13d0 <malloc+0x160>
    1364:	e51b300c 	ldr	r3, [fp, #-12]
    1368:	e5823000 	str	r3, [r2]
    136c:	e51b3008 	ldr	r3, [fp, #-8]
    1370:	e2833008 	add	r3, r3, #8
    1374:	ea000012 	b	13c4 <malloc+0x154>
    1378:	e59f3050 	ldr	r3, [pc, #80]	@ 13d0 <malloc+0x160>
    137c:	e5933000 	ldr	r3, [r3]
    1380:	e51b2008 	ldr	r2, [fp, #-8]
    1384:	e1520003 	cmp	r2, r3
    1388:	1a000007 	bne	13ac <malloc+0x13c>
    138c:	e51b0010 	ldr	r0, [fp, #-16]
    1390:	ebffff94 	bl	11e8 <morecore>
    1394:	e50b0008 	str	r0, [fp, #-8]
    1398:	e51b3008 	ldr	r3, [fp, #-8]
    139c:	e3530000 	cmp	r3, #0
    13a0:	1a000001 	bne	13ac <malloc+0x13c>
    13a4:	e3a03000 	mov	r3, #0
    13a8:	ea000005 	b	13c4 <malloc+0x154>
    13ac:	e51b3008 	ldr	r3, [fp, #-8]
    13b0:	e50b300c 	str	r3, [fp, #-12]
    13b4:	e51b3008 	ldr	r3, [fp, #-8]
    13b8:	e5933000 	ldr	r3, [r3]
    13bc:	e50b3008 	str	r3, [fp, #-8]
    13c0:	eaffffc8 	b	12e8 <malloc+0x78>
    13c4:	e1a00003 	mov	r0, r3
    13c8:	e24bd004 	sub	sp, fp, #4
    13cc:	e8bd8800 	pop	{fp, pc}
    13d0:	00001804 	.word	0x00001804
    13d4:	000017fc 	.word	0x000017fc

000013d8 <__udivsi3>:
    13d8:	e2512001 	subs	r2, r1, #1
    13dc:	012fff1e 	bxeq	lr
    13e0:	3a000036 	bcc	14c0 <__udivsi3+0xe8>
    13e4:	e1500001 	cmp	r0, r1
    13e8:	9a000022 	bls	1478 <__udivsi3+0xa0>
    13ec:	e1110002 	tst	r1, r2
    13f0:	0a000023 	beq	1484 <__udivsi3+0xac>
    13f4:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    13f8:	01a01181 	lsleq	r1, r1, #3
    13fc:	03a03008 	moveq	r3, #8
    1400:	13a03001 	movne	r3, #1
    1404:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1408:	31510000 	cmpcc	r1, r0
    140c:	31a01201 	lslcc	r1, r1, #4
    1410:	31a03203 	lslcc	r3, r3, #4
    1414:	3afffffa 	bcc	1404 <__udivsi3+0x2c>
    1418:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    141c:	31510000 	cmpcc	r1, r0
    1420:	31a01081 	lslcc	r1, r1, #1
    1424:	31a03083 	lslcc	r3, r3, #1
    1428:	3afffffa 	bcc	1418 <__udivsi3+0x40>
    142c:	e3a02000 	mov	r2, #0
    1430:	e1500001 	cmp	r0, r1
    1434:	20400001 	subcs	r0, r0, r1
    1438:	21822003 	orrcs	r2, r2, r3
    143c:	e15000a1 	cmp	r0, r1, lsr #1
    1440:	204000a1 	subcs	r0, r0, r1, lsr #1
    1444:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1448:	e1500121 	cmp	r0, r1, lsr #2
    144c:	20400121 	subcs	r0, r0, r1, lsr #2
    1450:	21822123 	orrcs	r2, r2, r3, lsr #2
    1454:	e15001a1 	cmp	r0, r1, lsr #3
    1458:	204001a1 	subcs	r0, r0, r1, lsr #3
    145c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1460:	e3500000 	cmp	r0, #0
    1464:	11b03223 	lsrsne	r3, r3, #4
    1468:	11a01221 	lsrne	r1, r1, #4
    146c:	1affffef 	bne	1430 <__udivsi3+0x58>
    1470:	e1a00002 	mov	r0, r2
    1474:	e12fff1e 	bx	lr
    1478:	03a00001 	moveq	r0, #1
    147c:	13a00000 	movne	r0, #0
    1480:	e12fff1e 	bx	lr
    1484:	e3510801 	cmp	r1, #65536	@ 0x10000
    1488:	21a01821 	lsrcs	r1, r1, #16
    148c:	23a02010 	movcs	r2, #16
    1490:	33a02000 	movcc	r2, #0
    1494:	e3510c01 	cmp	r1, #256	@ 0x100
    1498:	21a01421 	lsrcs	r1, r1, #8
    149c:	22822008 	addcs	r2, r2, #8
    14a0:	e3510010 	cmp	r1, #16
    14a4:	21a01221 	lsrcs	r1, r1, #4
    14a8:	22822004 	addcs	r2, r2, #4
    14ac:	e3510004 	cmp	r1, #4
    14b0:	82822003 	addhi	r2, r2, #3
    14b4:	908220a1 	addls	r2, r2, r1, lsr #1
    14b8:	e1a00230 	lsr	r0, r0, r2
    14bc:	e12fff1e 	bx	lr
    14c0:	e3500000 	cmp	r0, #0
    14c4:	13e00000 	mvnne	r0, #0
    14c8:	ea000007 	b	14ec <__aeabi_idiv0>

000014cc <__aeabi_uidivmod>:
    14cc:	e3510000 	cmp	r1, #0
    14d0:	0afffffa 	beq	14c0 <__udivsi3+0xe8>
    14d4:	e92d4003 	push	{r0, r1, lr}
    14d8:	ebffffbe 	bl	13d8 <__udivsi3>
    14dc:	e8bd4006 	pop	{r1, r2, lr}
    14e0:	e0030092 	mul	r3, r2, r0
    14e4:	e0411003 	sub	r1, r1, r3
    14e8:	e12fff1e 	bx	lr

000014ec <__aeabi_idiv0>:
    14ec:	e12fff1e 	bx	lr
