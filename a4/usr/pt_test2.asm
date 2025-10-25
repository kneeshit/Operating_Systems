
_pt_test2:     file format elf32-littlearm


Disassembly of section .text:

00000000 <err>:
       0:	e92d4810 	push	{r4, fp, lr}
       4:	e28db008 	add	fp, sp, #8
       8:	e24dd014 	sub	sp, sp, #20
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e59f3024 	ldr	r3, [pc, #36]	@ 3c <err+0x3c>
      14:	e5934000 	ldr	r4, [r3]
      18:	eb0003b2 	bl	ee8 <getpid>
      1c:	e1a03000 	mov	r3, r0
      20:	e58d3000 	str	r3, [sp]
      24:	e51b3010 	ldr	r3, [fp, #-16]
      28:	e1a02004 	mov	r2, r4
      2c:	e59f100c 	ldr	r1, [pc, #12]	@ 40 <err+0x40>
      30:	e3a00001 	mov	r0, #1
      34:	eb0004b2 	bl	1304 <printf>
      38:	eb00031a 	bl	ca8 <exit>
      3c:	00001c6c 	.word	0x00001c6c
      40:	000019c4 	.word	0x000019c4

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
      ac:	eb000494 	bl	1304 <printf>
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
      fc:	eb000480 	bl	1304 <printf>
     100:	e51b3008 	ldr	r3, [fp, #-8]
     104:	e2833001 	add	r3, r3, #1
     108:	e50b3008 	str	r3, [fp, #-8]
     10c:	e51b3008 	ldr	r3, [fp, #-8]
     110:	e353000f 	cmp	r3, #15
     114:	daffffeb 	ble	c8 <read_trigger_test+0x34>
     118:	e59f1020 	ldr	r1, [pc, #32]	@ 140 <read_trigger_test+0xac>
     11c:	e3a00001 	mov	r0, #1
     120:	eb000477 	bl	1304 <printf>
     124:	e1a00000 	nop			@ (mov r0, r0)
     128:	e24bd004 	sub	sp, fp, #4
     12c:	e8bd8800 	pop	{fp, pc}
     130:	000019ec 	.word	0x000019ec
     134:	00001c6c 	.word	0x00001c6c
     138:	00001a08 	.word	0x00001a08
     13c:	00001a1c 	.word	0x00001a1c
     140:	00001a34 	.word	0x00001a34

00000144 <write_trigger_test>:
     144:	e92d4800 	push	{fp, lr}
     148:	e28db004 	add	fp, sp, #4
     14c:	e24dd010 	sub	sp, sp, #16
     150:	e50b0010 	str	r0, [fp, #-16]
     154:	e59f1084 	ldr	r1, [pc, #132]	@ 1e0 <write_trigger_test+0x9c>
     158:	e3a00001 	mov	r0, #1
     15c:	eb000468 	bl	1304 <printf>
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
     1ac:	eb000454 	bl	1304 <printf>
     1b0:	e51b3008 	ldr	r3, [fp, #-8]
     1b4:	e2833001 	add	r3, r3, #1
     1b8:	e50b3008 	str	r3, [fp, #-8]
     1bc:	e51b3008 	ldr	r3, [fp, #-8]
     1c0:	e353000f 	cmp	r3, #15
     1c4:	daffffeb 	ble	178 <write_trigger_test+0x34>
     1c8:	e59f1020 	ldr	r1, [pc, #32]	@ 1f0 <write_trigger_test+0xac>
     1cc:	e3a00001 	mov	r0, #1
     1d0:	eb00044b 	bl	1304 <printf>
     1d4:	e1a00000 	nop			@ (mov r0, r0)
     1d8:	e24bd004 	sub	sp, fp, #4
     1dc:	e8bd8800 	pop	{fp, pc}
     1e0:	00001a4c 	.word	0x00001a4c
     1e4:	00001c6c 	.word	0x00001c6c
     1e8:	00001a6c 	.word	0x00001a6c
     1ec:	00001a80 	.word	0x00001a80
     1f0:	00001a98 	.word	0x00001a98

000001f4 <fork_isolation_test>:
     1f4:	e92d4800 	push	{fp, lr}
     1f8:	e28db004 	add	fp, sp, #4
     1fc:	e24dd018 	sub	sp, sp, #24
     200:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     204:	e59f1100 	ldr	r1, [pc, #256]	@ 30c <fork_isolation_test+0x118>
     208:	e3a00001 	mov	r0, #1
     20c:	eb00043c 	bl	1304 <printf>
     210:	e59f30f8 	ldr	r3, [pc, #248]	@ 310 <fork_isolation_test+0x11c>
     214:	e59f20f8 	ldr	r2, [pc, #248]	@ 314 <fork_isolation_test+0x120>
     218:	e5832000 	str	r2, [r3]
     21c:	eb000298 	bl	c84 <fork>
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
     290:	eb00041b 	bl	1304 <printf>
     294:	eb000283 	bl	ca8 <exit>
     298:	eb00028b 	bl	ccc <wait>
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
     2f0:	eb000403 	bl	1304 <printf>
     2f4:	e59f102c 	ldr	r1, [pc, #44]	@ 328 <fork_isolation_test+0x134>
     2f8:	e3a00001 	mov	r0, #1
     2fc:	eb000400 	bl	1304 <printf>
     300:	e1a00000 	nop			@ (mov r0, r0)
     304:	e24bd004 	sub	sp, fp, #4
     308:	e8bd8800 	pop	{fp, pc}
     30c:	00001ab0 	.word	0x00001ab0
     310:	00001c6c 	.word	0x00001c6c
     314:	00001ad0 	.word	0x00001ad0
     318:	00001ae4 	.word	0x00001ae4
     31c:	00001af0 	.word	0x00001af0
     320:	00001b10 	.word	0x00001b10
     324:	00001b3c 	.word	0x00001b3c
     328:	00001b5c 	.word	0x00001b5c

0000032c <ondemand_sbrk_test>:
     32c:	e92d4800 	push	{fp, lr}
     330:	e28db004 	add	fp, sp, #4
     334:	e24dd008 	sub	sp, sp, #8
     338:	e59f1084 	ldr	r1, [pc, #132]	@ 3c4 <ondemand_sbrk_test+0x98>
     33c:	e3a00001 	mov	r0, #1
     340:	eb0003ef 	bl	1304 <printf>
     344:	e59f307c 	ldr	r3, [pc, #124]	@ 3c8 <ondemand_sbrk_test+0x9c>
     348:	e59f207c 	ldr	r2, [pc, #124]	@ 3cc <ondemand_sbrk_test+0xa0>
     34c:	e5832000 	str	r2, [r3]
     350:	e3a00801 	mov	r0, #65536	@ 0x10000
     354:	eb0002ec 	bl	f0c <sbrk>
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
     380:	eb0003df 	bl	1304 <printf>
     384:	e51b2008 	ldr	r2, [fp, #-8]
     388:	e59f1048 	ldr	r1, [pc, #72]	@ 3d8 <ondemand_sbrk_test+0xac>
     38c:	e3a00001 	mov	r0, #1
     390:	eb0003db 	bl	1304 <printf>
     394:	e51b0008 	ldr	r0, [fp, #-8]
     398:	ebffff3d 	bl	94 <read_trigger_test>
     39c:	e51b0008 	ldr	r0, [fp, #-8]
     3a0:	ebffff67 	bl	144 <write_trigger_test>
     3a4:	e51b0008 	ldr	r0, [fp, #-8]
     3a8:	ebffff91 	bl	1f4 <fork_isolation_test>
     3ac:	e59f1028 	ldr	r1, [pc, #40]	@ 3dc <ondemand_sbrk_test+0xb0>
     3b0:	e3a00001 	mov	r0, #1
     3b4:	eb0003d2 	bl	1304 <printf>
     3b8:	e1a00000 	nop			@ (mov r0, r0)
     3bc:	e24bd004 	sub	sp, fp, #4
     3c0:	e8bd8800 	pop	{fp, pc}
     3c4:	00001b78 	.word	0x00001b78
     3c8:	00001c6c 	.word	0x00001c6c
     3cc:	00001b98 	.word	0x00001b98
     3d0:	00001bac 	.word	0x00001bac
     3d4:	00001bb8 	.word	0x00001bb8
     3d8:	00001be0 	.word	0x00001be0
     3dc:	00001bf4 	.word	0x00001bf4

000003e0 <main>:
     3e0:	e92d4800 	push	{fp, lr}
     3e4:	e28db004 	add	fp, sp, #4
     3e8:	e24dd008 	sub	sp, sp, #8
     3ec:	e50b0008 	str	r0, [fp, #-8]
     3f0:	e50b100c 	str	r1, [fp, #-12]
     3f4:	e59f1018 	ldr	r1, [pc, #24]	@ 414 <main+0x34>
     3f8:	e3a00001 	mov	r0, #1
     3fc:	eb0003c0 	bl	1304 <printf>
     400:	ebffffc9 	bl	32c <ondemand_sbrk_test>
     404:	e59f100c 	ldr	r1, [pc, #12]	@ 418 <main+0x38>
     408:	e3a00001 	mov	r0, #1
     40c:	eb0003bc 	bl	1304 <printf>
     410:	eb000224 	bl	ca8 <exit>
     414:	00001c0c 	.word	0x00001c0c
     418:	00001c3c 	.word	0x00001c3c

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
     710:	eb00017f 	bl	d14 <read>
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
     7b8:	eb000182 	bl	dc8 <open>
     7bc:	e50b0008 	str	r0, [fp, #-8]
     7c0:	e51b3008 	ldr	r3, [fp, #-8]
     7c4:	e3530000 	cmp	r3, #0
     7c8:	aa000001 	bge	7d4 <stat+0x38>
     7cc:	e3e03000 	mvn	r3, #0
     7d0:	ea000006 	b	7f0 <stat+0x54>
     7d4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     7d8:	e51b0008 	ldr	r0, [fp, #-8]
     7dc:	eb000194 	bl	e34 <fstat>
     7e0:	e50b000c 	str	r0, [fp, #-12]
     7e4:	e51b0008 	ldr	r0, [fp, #-8]
     7e8:	eb00015b 	bl	d5c <close>
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

00000944 <xchg>:
     944:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     948:	e28db000 	add	fp, sp, #0
     94c:	e24dd00c 	sub	sp, sp, #12
     950:	e50b0008 	str	r0, [fp, #-8]
     954:	e50b100c 	str	r1, [fp, #-12]
     958:	e51b200c 	ldr	r2, [fp, #-12]
     95c:	e51b3008 	ldr	r3, [fp, #-8]
     960:	e1931f9f 	ldrex	r1, [r3]
     964:	e1830f92 	strex	r0, r2, [r3]
     968:	e3500000 	cmp	r0, #0
     96c:	1afffffb 	bne	960 <xchg+0x1c>
     970:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     974:	e1a03001 	mov	r3, r1
     978:	e1a00003 	mov	r0, r3
     97c:	e28bd000 	add	sp, fp, #0
     980:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     984:	e12fff1e 	bx	lr

00000988 <acquireLock>:
     988:	e92d4800 	push	{fp, lr}
     98c:	e28db004 	add	fp, sp, #4
     990:	e24dd008 	sub	sp, sp, #8
     994:	e50b0008 	str	r0, [fp, #-8]
     998:	e51b3008 	ldr	r3, [fp, #-8]
     99c:	e5933004 	ldr	r3, [r3, #4]
     9a0:	e3530000 	cmp	r3, #0
     9a4:	0a000008 	beq	9cc <acquireLock+0x44>
     9a8:	e1a00000 	nop			@ (mov r0, r0)
     9ac:	e51b3008 	ldr	r3, [fp, #-8]
     9b0:	e3a01001 	mov	r1, #1
     9b4:	e1a00003 	mov	r0, r3
     9b8:	ebffffe1 	bl	944 <xchg>
     9bc:	e1a03000 	mov	r3, r0
     9c0:	e3530000 	cmp	r3, #0
     9c4:	1afffff8 	bne	9ac <acquireLock+0x24>
     9c8:	ea000000 	b	9d0 <acquireLock+0x48>
     9cc:	e1a00000 	nop			@ (mov r0, r0)
     9d0:	e24bd004 	sub	sp, fp, #4
     9d4:	e8bd8800 	pop	{fp, pc}

000009d8 <releaseLock>:
     9d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     9dc:	e28db000 	add	fp, sp, #0
     9e0:	e24dd00c 	sub	sp, sp, #12
     9e4:	e50b0008 	str	r0, [fp, #-8]
     9e8:	e51b3008 	ldr	r3, [fp, #-8]
     9ec:	e5933004 	ldr	r3, [r3, #4]
     9f0:	e3530000 	cmp	r3, #0
     9f4:	0a000007 	beq	a18 <releaseLock+0x40>
     9f8:	e51b3008 	ldr	r3, [fp, #-8]
     9fc:	e5933000 	ldr	r3, [r3]
     a00:	e3530001 	cmp	r3, #1
     a04:	1a000005 	bne	a20 <releaseLock+0x48>
     a08:	e51b3008 	ldr	r3, [fp, #-8]
     a0c:	e3a02000 	mov	r2, #0
     a10:	e5832000 	str	r2, [r3]
     a14:	ea000002 	b	a24 <releaseLock+0x4c>
     a18:	e1a00000 	nop			@ (mov r0, r0)
     a1c:	ea000000 	b	a24 <releaseLock+0x4c>
     a20:	e1a00000 	nop			@ (mov r0, r0)
     a24:	e28bd000 	add	sp, fp, #0
     a28:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     a2c:	e12fff1e 	bx	lr

00000a30 <initiateCondVar>:
     a30:	e92d4800 	push	{fp, lr}
     a34:	e28db004 	add	fp, sp, #4
     a38:	e24dd008 	sub	sp, sp, #8
     a3c:	e50b0008 	str	r0, [fp, #-8]
     a40:	eb0001b8 	bl	1128 <getChannel>
     a44:	e1a02000 	mov	r2, r0
     a48:	e51b3008 	ldr	r3, [fp, #-8]
     a4c:	e5832000 	str	r2, [r3]
     a50:	e51b3008 	ldr	r3, [fp, #-8]
     a54:	e3a02001 	mov	r2, #1
     a58:	e5832004 	str	r2, [r3, #4]
     a5c:	e1a00000 	nop			@ (mov r0, r0)
     a60:	e24bd004 	sub	sp, fp, #4
     a64:	e8bd8800 	pop	{fp, pc}

00000a68 <condWait>:
     a68:	e92d4800 	push	{fp, lr}
     a6c:	e28db004 	add	fp, sp, #4
     a70:	e24dd008 	sub	sp, sp, #8
     a74:	e50b0008 	str	r0, [fp, #-8]
     a78:	e50b100c 	str	r1, [fp, #-12]
     a7c:	e51b3008 	ldr	r3, [fp, #-8]
     a80:	e5933004 	ldr	r3, [r3, #4]
     a84:	e3530000 	cmp	r3, #0
     a88:	0a00000c 	beq	ac0 <condWait+0x58>
     a8c:	e51b300c 	ldr	r3, [fp, #-12]
     a90:	e5933004 	ldr	r3, [r3, #4]
     a94:	e3530000 	cmp	r3, #0
     a98:	0a000008 	beq	ac0 <condWait+0x58>
     a9c:	e51b000c 	ldr	r0, [fp, #-12]
     aa0:	ebffffcc 	bl	9d8 <releaseLock>
     aa4:	e51b3008 	ldr	r3, [fp, #-8]
     aa8:	e5933000 	ldr	r3, [r3]
     aac:	e1a00003 	mov	r0, r3
     ab0:	eb000193 	bl	1104 <sleepChan>
     ab4:	e51b000c 	ldr	r0, [fp, #-12]
     ab8:	ebffffb2 	bl	988 <acquireLock>
     abc:	ea000000 	b	ac4 <condWait+0x5c>
     ac0:	e1a00000 	nop			@ (mov r0, r0)
     ac4:	e24bd004 	sub	sp, fp, #4
     ac8:	e8bd8800 	pop	{fp, pc}

00000acc <broadcast>:
     acc:	e92d4800 	push	{fp, lr}
     ad0:	e28db004 	add	fp, sp, #4
     ad4:	e24dd008 	sub	sp, sp, #8
     ad8:	e50b0008 	str	r0, [fp, #-8]
     adc:	e51b3008 	ldr	r3, [fp, #-8]
     ae0:	e5933004 	ldr	r3, [r3, #4]
     ae4:	e3530000 	cmp	r3, #0
     ae8:	0a000004 	beq	b00 <broadcast+0x34>
     aec:	e51b3008 	ldr	r3, [fp, #-8]
     af0:	e5933000 	ldr	r3, [r3]
     af4:	e1a00003 	mov	r0, r3
     af8:	eb000193 	bl	114c <sigChan>
     afc:	ea000000 	b	b04 <broadcast+0x38>
     b00:	e1a00000 	nop			@ (mov r0, r0)
     b04:	e24bd004 	sub	sp, fp, #4
     b08:	e8bd8800 	pop	{fp, pc}

00000b0c <signal>:
     b0c:	e92d4800 	push	{fp, lr}
     b10:	e28db004 	add	fp, sp, #4
     b14:	e24dd008 	sub	sp, sp, #8
     b18:	e50b0008 	str	r0, [fp, #-8]
     b1c:	e51b3008 	ldr	r3, [fp, #-8]
     b20:	e5933004 	ldr	r3, [r3, #4]
     b24:	e3530000 	cmp	r3, #0
     b28:	0a000004 	beq	b40 <signal+0x34>
     b2c:	e51b3008 	ldr	r3, [fp, #-8]
     b30:	e5933000 	ldr	r3, [r3]
     b34:	e1a00003 	mov	r0, r3
     b38:	eb00018c 	bl	1170 <sigOneChan>
     b3c:	ea000000 	b	b44 <signal+0x38>
     b40:	e1a00000 	nop			@ (mov r0, r0)
     b44:	e24bd004 	sub	sp, fp, #4
     b48:	e8bd8800 	pop	{fp, pc}

00000b4c <semInit>:
     b4c:	e92d4800 	push	{fp, lr}
     b50:	e28db004 	add	fp, sp, #4
     b54:	e24dd008 	sub	sp, sp, #8
     b58:	e50b0008 	str	r0, [fp, #-8]
     b5c:	e50b100c 	str	r1, [fp, #-12]
     b60:	e51b3008 	ldr	r3, [fp, #-8]
     b64:	e51b200c 	ldr	r2, [fp, #-12]
     b68:	e5832000 	str	r2, [r3]
     b6c:	e51b3008 	ldr	r3, [fp, #-8]
     b70:	e2833004 	add	r3, r3, #4
     b74:	e1a00003 	mov	r0, r3
     b78:	ebffff63 	bl	90c <initiateLock>
     b7c:	e51b3008 	ldr	r3, [fp, #-8]
     b80:	e283300c 	add	r3, r3, #12
     b84:	e1a00003 	mov	r0, r3
     b88:	ebffffa8 	bl	a30 <initiateCondVar>
     b8c:	e51b3008 	ldr	r3, [fp, #-8]
     b90:	e3a02001 	mov	r2, #1
     b94:	e5832014 	str	r2, [r3, #20]
     b98:	e1a00000 	nop			@ (mov r0, r0)
     b9c:	e24bd004 	sub	sp, fp, #4
     ba0:	e8bd8800 	pop	{fp, pc}

00000ba4 <semUp>:
     ba4:	e92d4800 	push	{fp, lr}
     ba8:	e28db004 	add	fp, sp, #4
     bac:	e24dd008 	sub	sp, sp, #8
     bb0:	e50b0008 	str	r0, [fp, #-8]
     bb4:	e51b3008 	ldr	r3, [fp, #-8]
     bb8:	e2833004 	add	r3, r3, #4
     bbc:	e1a00003 	mov	r0, r3
     bc0:	ebffff70 	bl	988 <acquireLock>
     bc4:	e51b3008 	ldr	r3, [fp, #-8]
     bc8:	e5933000 	ldr	r3, [r3]
     bcc:	e2832001 	add	r2, r3, #1
     bd0:	e51b3008 	ldr	r3, [fp, #-8]
     bd4:	e5832000 	str	r2, [r3]
     bd8:	e51b3008 	ldr	r3, [fp, #-8]
     bdc:	e283300c 	add	r3, r3, #12
     be0:	e1a00003 	mov	r0, r3
     be4:	ebffffc8 	bl	b0c <signal>
     be8:	e51b3008 	ldr	r3, [fp, #-8]
     bec:	e2833004 	add	r3, r3, #4
     bf0:	e1a00003 	mov	r0, r3
     bf4:	ebffff77 	bl	9d8 <releaseLock>
     bf8:	e1a00000 	nop			@ (mov r0, r0)
     bfc:	e24bd004 	sub	sp, fp, #4
     c00:	e8bd8800 	pop	{fp, pc}

00000c04 <semDown>:
     c04:	e92d4800 	push	{fp, lr}
     c08:	e28db004 	add	fp, sp, #4
     c0c:	e24dd008 	sub	sp, sp, #8
     c10:	e50b0008 	str	r0, [fp, #-8]
     c14:	e51b3008 	ldr	r3, [fp, #-8]
     c18:	e2833004 	add	r3, r3, #4
     c1c:	e1a00003 	mov	r0, r3
     c20:	ebffff58 	bl	988 <acquireLock>
     c24:	ea000006 	b	c44 <semDown+0x40>
     c28:	e51b3008 	ldr	r3, [fp, #-8]
     c2c:	e283200c 	add	r2, r3, #12
     c30:	e51b3008 	ldr	r3, [fp, #-8]
     c34:	e2833004 	add	r3, r3, #4
     c38:	e1a01003 	mov	r1, r3
     c3c:	e1a00002 	mov	r0, r2
     c40:	ebffff88 	bl	a68 <condWait>
     c44:	e51b3008 	ldr	r3, [fp, #-8]
     c48:	e5933000 	ldr	r3, [r3]
     c4c:	e3530000 	cmp	r3, #0
     c50:	dafffff4 	ble	c28 <semDown+0x24>
     c54:	e51b3008 	ldr	r3, [fp, #-8]
     c58:	e5933000 	ldr	r3, [r3]
     c5c:	e2432001 	sub	r2, r3, #1
     c60:	e51b3008 	ldr	r3, [fp, #-8]
     c64:	e5832000 	str	r2, [r3]
     c68:	e51b3008 	ldr	r3, [fp, #-8]
     c6c:	e2833004 	add	r3, r3, #4
     c70:	e1a00003 	mov	r0, r3
     c74:	ebffff57 	bl	9d8 <releaseLock>
     c78:	e1a00000 	nop			@ (mov r0, r0)
     c7c:	e24bd004 	sub	sp, fp, #4
     c80:	e8bd8800 	pop	{fp, pc}

00000c84 <fork>:
     c84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c88:	e1a04003 	mov	r4, r3
     c8c:	e1a03002 	mov	r3, r2
     c90:	e1a02001 	mov	r2, r1
     c94:	e1a01000 	mov	r1, r0
     c98:	e3a00001 	mov	r0, #1
     c9c:	ef000000 	svc	0x00000000
     ca0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ca4:	e12fff1e 	bx	lr

00000ca8 <exit>:
     ca8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cac:	e1a04003 	mov	r4, r3
     cb0:	e1a03002 	mov	r3, r2
     cb4:	e1a02001 	mov	r2, r1
     cb8:	e1a01000 	mov	r1, r0
     cbc:	e3a00002 	mov	r0, #2
     cc0:	ef000000 	svc	0x00000000
     cc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc8:	e12fff1e 	bx	lr

00000ccc <wait>:
     ccc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cd0:	e1a04003 	mov	r4, r3
     cd4:	e1a03002 	mov	r3, r2
     cd8:	e1a02001 	mov	r2, r1
     cdc:	e1a01000 	mov	r1, r0
     ce0:	e3a00003 	mov	r0, #3
     ce4:	ef000000 	svc	0x00000000
     ce8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cec:	e12fff1e 	bx	lr

00000cf0 <pipe>:
     cf0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cf4:	e1a04003 	mov	r4, r3
     cf8:	e1a03002 	mov	r3, r2
     cfc:	e1a02001 	mov	r2, r1
     d00:	e1a01000 	mov	r1, r0
     d04:	e3a00004 	mov	r0, #4
     d08:	ef000000 	svc	0x00000000
     d0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d10:	e12fff1e 	bx	lr

00000d14 <read>:
     d14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d18:	e1a04003 	mov	r4, r3
     d1c:	e1a03002 	mov	r3, r2
     d20:	e1a02001 	mov	r2, r1
     d24:	e1a01000 	mov	r1, r0
     d28:	e3a00005 	mov	r0, #5
     d2c:	ef000000 	svc	0x00000000
     d30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d34:	e12fff1e 	bx	lr

00000d38 <write>:
     d38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d3c:	e1a04003 	mov	r4, r3
     d40:	e1a03002 	mov	r3, r2
     d44:	e1a02001 	mov	r2, r1
     d48:	e1a01000 	mov	r1, r0
     d4c:	e3a00010 	mov	r0, #16
     d50:	ef000000 	svc	0x00000000
     d54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d58:	e12fff1e 	bx	lr

00000d5c <close>:
     d5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d60:	e1a04003 	mov	r4, r3
     d64:	e1a03002 	mov	r3, r2
     d68:	e1a02001 	mov	r2, r1
     d6c:	e1a01000 	mov	r1, r0
     d70:	e3a00015 	mov	r0, #21
     d74:	ef000000 	svc	0x00000000
     d78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d7c:	e12fff1e 	bx	lr

00000d80 <kill>:
     d80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d84:	e1a04003 	mov	r4, r3
     d88:	e1a03002 	mov	r3, r2
     d8c:	e1a02001 	mov	r2, r1
     d90:	e1a01000 	mov	r1, r0
     d94:	e3a00006 	mov	r0, #6
     d98:	ef000000 	svc	0x00000000
     d9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     da0:	e12fff1e 	bx	lr

00000da4 <exec>:
     da4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da8:	e1a04003 	mov	r4, r3
     dac:	e1a03002 	mov	r3, r2
     db0:	e1a02001 	mov	r2, r1
     db4:	e1a01000 	mov	r1, r0
     db8:	e3a00007 	mov	r0, #7
     dbc:	ef000000 	svc	0x00000000
     dc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dc4:	e12fff1e 	bx	lr

00000dc8 <open>:
     dc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dcc:	e1a04003 	mov	r4, r3
     dd0:	e1a03002 	mov	r3, r2
     dd4:	e1a02001 	mov	r2, r1
     dd8:	e1a01000 	mov	r1, r0
     ddc:	e3a0000f 	mov	r0, #15
     de0:	ef000000 	svc	0x00000000
     de4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     de8:	e12fff1e 	bx	lr

00000dec <mknod>:
     dec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     df0:	e1a04003 	mov	r4, r3
     df4:	e1a03002 	mov	r3, r2
     df8:	e1a02001 	mov	r2, r1
     dfc:	e1a01000 	mov	r1, r0
     e00:	e3a00011 	mov	r0, #17
     e04:	ef000000 	svc	0x00000000
     e08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e0c:	e12fff1e 	bx	lr

00000e10 <unlink>:
     e10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e14:	e1a04003 	mov	r4, r3
     e18:	e1a03002 	mov	r3, r2
     e1c:	e1a02001 	mov	r2, r1
     e20:	e1a01000 	mov	r1, r0
     e24:	e3a00012 	mov	r0, #18
     e28:	ef000000 	svc	0x00000000
     e2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e30:	e12fff1e 	bx	lr

00000e34 <fstat>:
     e34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e38:	e1a04003 	mov	r4, r3
     e3c:	e1a03002 	mov	r3, r2
     e40:	e1a02001 	mov	r2, r1
     e44:	e1a01000 	mov	r1, r0
     e48:	e3a00008 	mov	r0, #8
     e4c:	ef000000 	svc	0x00000000
     e50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e54:	e12fff1e 	bx	lr

00000e58 <link>:
     e58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e5c:	e1a04003 	mov	r4, r3
     e60:	e1a03002 	mov	r3, r2
     e64:	e1a02001 	mov	r2, r1
     e68:	e1a01000 	mov	r1, r0
     e6c:	e3a00013 	mov	r0, #19
     e70:	ef000000 	svc	0x00000000
     e74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e78:	e12fff1e 	bx	lr

00000e7c <mkdir>:
     e7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e80:	e1a04003 	mov	r4, r3
     e84:	e1a03002 	mov	r3, r2
     e88:	e1a02001 	mov	r2, r1
     e8c:	e1a01000 	mov	r1, r0
     e90:	e3a00014 	mov	r0, #20
     e94:	ef000000 	svc	0x00000000
     e98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e9c:	e12fff1e 	bx	lr

00000ea0 <chdir>:
     ea0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ea4:	e1a04003 	mov	r4, r3
     ea8:	e1a03002 	mov	r3, r2
     eac:	e1a02001 	mov	r2, r1
     eb0:	e1a01000 	mov	r1, r0
     eb4:	e3a00009 	mov	r0, #9
     eb8:	ef000000 	svc	0x00000000
     ebc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ec0:	e12fff1e 	bx	lr

00000ec4 <dup>:
     ec4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ec8:	e1a04003 	mov	r4, r3
     ecc:	e1a03002 	mov	r3, r2
     ed0:	e1a02001 	mov	r2, r1
     ed4:	e1a01000 	mov	r1, r0
     ed8:	e3a0000a 	mov	r0, #10
     edc:	ef000000 	svc	0x00000000
     ee0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ee4:	e12fff1e 	bx	lr

00000ee8 <getpid>:
     ee8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eec:	e1a04003 	mov	r4, r3
     ef0:	e1a03002 	mov	r3, r2
     ef4:	e1a02001 	mov	r2, r1
     ef8:	e1a01000 	mov	r1, r0
     efc:	e3a0000b 	mov	r0, #11
     f00:	ef000000 	svc	0x00000000
     f04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f08:	e12fff1e 	bx	lr

00000f0c <sbrk>:
     f0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f10:	e1a04003 	mov	r4, r3
     f14:	e1a03002 	mov	r3, r2
     f18:	e1a02001 	mov	r2, r1
     f1c:	e1a01000 	mov	r1, r0
     f20:	e3a0000c 	mov	r0, #12
     f24:	ef000000 	svc	0x00000000
     f28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f2c:	e12fff1e 	bx	lr

00000f30 <sleep>:
     f30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f34:	e1a04003 	mov	r4, r3
     f38:	e1a03002 	mov	r3, r2
     f3c:	e1a02001 	mov	r2, r1
     f40:	e1a01000 	mov	r1, r0
     f44:	e3a0000d 	mov	r0, #13
     f48:	ef000000 	svc	0x00000000
     f4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f50:	e12fff1e 	bx	lr

00000f54 <uptime>:
     f54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f58:	e1a04003 	mov	r4, r3
     f5c:	e1a03002 	mov	r3, r2
     f60:	e1a02001 	mov	r2, r1
     f64:	e1a01000 	mov	r1, r0
     f68:	e3a0000e 	mov	r0, #14
     f6c:	ef000000 	svc	0x00000000
     f70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f74:	e12fff1e 	bx	lr

00000f78 <getprocs>:
     f78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f7c:	e1a04003 	mov	r4, r3
     f80:	e1a03002 	mov	r3, r2
     f84:	e1a02001 	mov	r2, r1
     f88:	e1a01000 	mov	r1, r0
     f8c:	e3a00016 	mov	r0, #22
     f90:	ef000000 	svc	0x00000000
     f94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f98:	e12fff1e 	bx	lr

00000f9c <settickets>:
     f9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fa0:	e1a04003 	mov	r4, r3
     fa4:	e1a03002 	mov	r3, r2
     fa8:	e1a02001 	mov	r2, r1
     fac:	e1a01000 	mov	r1, r0
     fb0:	e3a00017 	mov	r0, #23
     fb4:	ef000000 	svc	0x00000000
     fb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fbc:	e12fff1e 	bx	lr

00000fc0 <srand>:
     fc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fc4:	e1a04003 	mov	r4, r3
     fc8:	e1a03002 	mov	r3, r2
     fcc:	e1a02001 	mov	r2, r1
     fd0:	e1a01000 	mov	r1, r0
     fd4:	e3a00018 	mov	r0, #24
     fd8:	ef000000 	svc	0x00000000
     fdc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fe0:	e12fff1e 	bx	lr

00000fe4 <getpinfo>:
     fe4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fe8:	e1a04003 	mov	r4, r3
     fec:	e1a03002 	mov	r3, r2
     ff0:	e1a02001 	mov	r2, r1
     ff4:	e1a01000 	mov	r1, r0
     ff8:	e3a00019 	mov	r0, #25
     ffc:	ef000000 	svc	0x00000000
    1000:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1004:	e12fff1e 	bx	lr

00001008 <dumppagetable>:
    1008:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    100c:	e1a04003 	mov	r4, r3
    1010:	e1a03002 	mov	r3, r2
    1014:	e1a02001 	mov	r2, r1
    1018:	e1a01000 	mov	r1, r0
    101c:	e3a0001a 	mov	r0, #26
    1020:	ef000000 	svc	0x00000000
    1024:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1028:	e12fff1e 	bx	lr

0000102c <thread_create>:
    102c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1030:	e1a04003 	mov	r4, r3
    1034:	e1a03002 	mov	r3, r2
    1038:	e1a02001 	mov	r2, r1
    103c:	e1a01000 	mov	r1, r0
    1040:	e3a0001b 	mov	r0, #27
    1044:	ef000000 	svc	0x00000000
    1048:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    104c:	e12fff1e 	bx	lr

00001050 <thread_exit>:
    1050:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1054:	e1a04003 	mov	r4, r3
    1058:	e1a03002 	mov	r3, r2
    105c:	e1a02001 	mov	r2, r1
    1060:	e1a01000 	mov	r1, r0
    1064:	e3a0001c 	mov	r0, #28
    1068:	ef000000 	svc	0x00000000
    106c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1070:	e12fff1e 	bx	lr

00001074 <thread_join>:
    1074:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1078:	e1a04003 	mov	r4, r3
    107c:	e1a03002 	mov	r3, r2
    1080:	e1a02001 	mov	r2, r1
    1084:	e1a01000 	mov	r1, r0
    1088:	e3a0001d 	mov	r0, #29
    108c:	ef000000 	svc	0x00000000
    1090:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1094:	e12fff1e 	bx	lr

00001098 <waitpid>:
    1098:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    109c:	e1a04003 	mov	r4, r3
    10a0:	e1a03002 	mov	r3, r2
    10a4:	e1a02001 	mov	r2, r1
    10a8:	e1a01000 	mov	r1, r0
    10ac:	e3a0001e 	mov	r0, #30
    10b0:	ef000000 	svc	0x00000000
    10b4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10b8:	e12fff1e 	bx	lr

000010bc <barrier_init>:
    10bc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10c0:	e1a04003 	mov	r4, r3
    10c4:	e1a03002 	mov	r3, r2
    10c8:	e1a02001 	mov	r2, r1
    10cc:	e1a01000 	mov	r1, r0
    10d0:	e3a0001f 	mov	r0, #31
    10d4:	ef000000 	svc	0x00000000
    10d8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10dc:	e12fff1e 	bx	lr

000010e0 <barrier_check>:
    10e0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10e4:	e1a04003 	mov	r4, r3
    10e8:	e1a03002 	mov	r3, r2
    10ec:	e1a02001 	mov	r2, r1
    10f0:	e1a01000 	mov	r1, r0
    10f4:	e3a00020 	mov	r0, #32
    10f8:	ef000000 	svc	0x00000000
    10fc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1100:	e12fff1e 	bx	lr

00001104 <sleepChan>:
    1104:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1108:	e1a04003 	mov	r4, r3
    110c:	e1a03002 	mov	r3, r2
    1110:	e1a02001 	mov	r2, r1
    1114:	e1a01000 	mov	r1, r0
    1118:	e3a00024 	mov	r0, #36	@ 0x24
    111c:	ef000000 	svc	0x00000000
    1120:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1124:	e12fff1e 	bx	lr

00001128 <getChannel>:
    1128:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    112c:	e1a04003 	mov	r4, r3
    1130:	e1a03002 	mov	r3, r2
    1134:	e1a02001 	mov	r2, r1
    1138:	e1a01000 	mov	r1, r0
    113c:	e3a00025 	mov	r0, #37	@ 0x25
    1140:	ef000000 	svc	0x00000000
    1144:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1148:	e12fff1e 	bx	lr

0000114c <sigChan>:
    114c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1150:	e1a04003 	mov	r4, r3
    1154:	e1a03002 	mov	r3, r2
    1158:	e1a02001 	mov	r2, r1
    115c:	e1a01000 	mov	r1, r0
    1160:	e3a00026 	mov	r0, #38	@ 0x26
    1164:	ef000000 	svc	0x00000000
    1168:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    116c:	e12fff1e 	bx	lr

00001170 <sigOneChan>:
    1170:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1174:	e1a04003 	mov	r4, r3
    1178:	e1a03002 	mov	r3, r2
    117c:	e1a02001 	mov	r2, r1
    1180:	e1a01000 	mov	r1, r0
    1184:	e3a00027 	mov	r0, #39	@ 0x27
    1188:	ef000000 	svc	0x00000000
    118c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1190:	e12fff1e 	bx	lr

00001194 <putc>:
    1194:	e92d4800 	push	{fp, lr}
    1198:	e28db004 	add	fp, sp, #4
    119c:	e24dd008 	sub	sp, sp, #8
    11a0:	e50b0008 	str	r0, [fp, #-8]
    11a4:	e1a03001 	mov	r3, r1
    11a8:	e54b3009 	strb	r3, [fp, #-9]
    11ac:	e24b3009 	sub	r3, fp, #9
    11b0:	e3a02001 	mov	r2, #1
    11b4:	e1a01003 	mov	r1, r3
    11b8:	e51b0008 	ldr	r0, [fp, #-8]
    11bc:	ebfffedd 	bl	d38 <write>
    11c0:	e1a00000 	nop			@ (mov r0, r0)
    11c4:	e24bd004 	sub	sp, fp, #4
    11c8:	e8bd8800 	pop	{fp, pc}

000011cc <printint>:
    11cc:	e92d4800 	push	{fp, lr}
    11d0:	e28db004 	add	fp, sp, #4
    11d4:	e24dd030 	sub	sp, sp, #48	@ 0x30
    11d8:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    11dc:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    11e0:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    11e4:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    11e8:	e3a03000 	mov	r3, #0
    11ec:	e50b300c 	str	r3, [fp, #-12]
    11f0:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    11f4:	e3530000 	cmp	r3, #0
    11f8:	0a000008 	beq	1220 <printint+0x54>
    11fc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1200:	e3530000 	cmp	r3, #0
    1204:	aa000005 	bge	1220 <printint+0x54>
    1208:	e3a03001 	mov	r3, #1
    120c:	e50b300c 	str	r3, [fp, #-12]
    1210:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1214:	e2633000 	rsb	r3, r3, #0
    1218:	e50b3010 	str	r3, [fp, #-16]
    121c:	ea000001 	b	1228 <printint+0x5c>
    1220:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1224:	e50b3010 	str	r3, [fp, #-16]
    1228:	e3a03000 	mov	r3, #0
    122c:	e50b3008 	str	r3, [fp, #-8]
    1230:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    1234:	e51b3010 	ldr	r3, [fp, #-16]
    1238:	e1a01002 	mov	r1, r2
    123c:	e1a00003 	mov	r0, r3
    1240:	eb0001d5 	bl	199c <__aeabi_uidivmod>
    1244:	e1a03001 	mov	r3, r1
    1248:	e1a01003 	mov	r1, r3
    124c:	e51b3008 	ldr	r3, [fp, #-8]
    1250:	e2832001 	add	r2, r3, #1
    1254:	e50b2008 	str	r2, [fp, #-8]
    1258:	e59f20a0 	ldr	r2, [pc, #160]	@ 1300 <printint+0x134>
    125c:	e7d22001 	ldrb	r2, [r2, r1]
    1260:	e2433004 	sub	r3, r3, #4
    1264:	e083300b 	add	r3, r3, fp
    1268:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    126c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    1270:	e1a01003 	mov	r1, r3
    1274:	e51b0010 	ldr	r0, [fp, #-16]
    1278:	eb00018a 	bl	18a8 <__udivsi3>
    127c:	e1a03000 	mov	r3, r0
    1280:	e50b3010 	str	r3, [fp, #-16]
    1284:	e51b3010 	ldr	r3, [fp, #-16]
    1288:	e3530000 	cmp	r3, #0
    128c:	1affffe7 	bne	1230 <printint+0x64>
    1290:	e51b300c 	ldr	r3, [fp, #-12]
    1294:	e3530000 	cmp	r3, #0
    1298:	0a00000e 	beq	12d8 <printint+0x10c>
    129c:	e51b3008 	ldr	r3, [fp, #-8]
    12a0:	e2832001 	add	r2, r3, #1
    12a4:	e50b2008 	str	r2, [fp, #-8]
    12a8:	e2433004 	sub	r3, r3, #4
    12ac:	e083300b 	add	r3, r3, fp
    12b0:	e3a0202d 	mov	r2, #45	@ 0x2d
    12b4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    12b8:	ea000006 	b	12d8 <printint+0x10c>
    12bc:	e24b2020 	sub	r2, fp, #32
    12c0:	e51b3008 	ldr	r3, [fp, #-8]
    12c4:	e0823003 	add	r3, r2, r3
    12c8:	e5d33000 	ldrb	r3, [r3]
    12cc:	e1a01003 	mov	r1, r3
    12d0:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    12d4:	ebffffae 	bl	1194 <putc>
    12d8:	e51b3008 	ldr	r3, [fp, #-8]
    12dc:	e2433001 	sub	r3, r3, #1
    12e0:	e50b3008 	str	r3, [fp, #-8]
    12e4:	e51b3008 	ldr	r3, [fp, #-8]
    12e8:	e3530000 	cmp	r3, #0
    12ec:	aafffff2 	bge	12bc <printint+0xf0>
    12f0:	e1a00000 	nop			@ (mov r0, r0)
    12f4:	e1a00000 	nop			@ (mov r0, r0)
    12f8:	e24bd004 	sub	sp, fp, #4
    12fc:	e8bd8800 	pop	{fp, pc}
    1300:	00001c70 	.word	0x00001c70

00001304 <printf>:
    1304:	e92d000e 	push	{r1, r2, r3}
    1308:	e92d4800 	push	{fp, lr}
    130c:	e28db004 	add	fp, sp, #4
    1310:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1314:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1318:	e3a03000 	mov	r3, #0
    131c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1320:	e28b3008 	add	r3, fp, #8
    1324:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1328:	e3a03000 	mov	r3, #0
    132c:	e50b3010 	str	r3, [fp, #-16]
    1330:	ea000074 	b	1508 <printf+0x204>
    1334:	e59b2004 	ldr	r2, [fp, #4]
    1338:	e51b3010 	ldr	r3, [fp, #-16]
    133c:	e0823003 	add	r3, r2, r3
    1340:	e5d33000 	ldrb	r3, [r3]
    1344:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1348:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    134c:	e3530000 	cmp	r3, #0
    1350:	1a00000b 	bne	1384 <printf+0x80>
    1354:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1358:	e3530025 	cmp	r3, #37	@ 0x25
    135c:	1a000002 	bne	136c <printf+0x68>
    1360:	e3a03025 	mov	r3, #37	@ 0x25
    1364:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1368:	ea000063 	b	14fc <printf+0x1f8>
    136c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1370:	e6ef3073 	uxtb	r3, r3
    1374:	e1a01003 	mov	r1, r3
    1378:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    137c:	ebffff84 	bl	1194 <putc>
    1380:	ea00005d 	b	14fc <printf+0x1f8>
    1384:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1388:	e3530025 	cmp	r3, #37	@ 0x25
    138c:	1a00005a 	bne	14fc <printf+0x1f8>
    1390:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1394:	e3530064 	cmp	r3, #100	@ 0x64
    1398:	1a00000a 	bne	13c8 <printf+0xc4>
    139c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13a0:	e5933000 	ldr	r3, [r3]
    13a4:	e1a01003 	mov	r1, r3
    13a8:	e3a03001 	mov	r3, #1
    13ac:	e3a0200a 	mov	r2, #10
    13b0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13b4:	ebffff84 	bl	11cc <printint>
    13b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13bc:	e2833004 	add	r3, r3, #4
    13c0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    13c4:	ea00004a 	b	14f4 <printf+0x1f0>
    13c8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13cc:	e3530078 	cmp	r3, #120	@ 0x78
    13d0:	0a000002 	beq	13e0 <printf+0xdc>
    13d4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13d8:	e3530070 	cmp	r3, #112	@ 0x70
    13dc:	1a00000a 	bne	140c <printf+0x108>
    13e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13e4:	e5933000 	ldr	r3, [r3]
    13e8:	e1a01003 	mov	r1, r3
    13ec:	e3a03000 	mov	r3, #0
    13f0:	e3a02010 	mov	r2, #16
    13f4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13f8:	ebffff73 	bl	11cc <printint>
    13fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1400:	e2833004 	add	r3, r3, #4
    1404:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1408:	ea000039 	b	14f4 <printf+0x1f0>
    140c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1410:	e3530073 	cmp	r3, #115	@ 0x73
    1414:	1a000018 	bne	147c <printf+0x178>
    1418:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    141c:	e5933000 	ldr	r3, [r3]
    1420:	e50b300c 	str	r3, [fp, #-12]
    1424:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1428:	e2833004 	add	r3, r3, #4
    142c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1430:	e51b300c 	ldr	r3, [fp, #-12]
    1434:	e3530000 	cmp	r3, #0
    1438:	1a00000a 	bne	1468 <printf+0x164>
    143c:	e59f30f4 	ldr	r3, [pc, #244]	@ 1538 <printf+0x234>
    1440:	e50b300c 	str	r3, [fp, #-12]
    1444:	ea000007 	b	1468 <printf+0x164>
    1448:	e51b300c 	ldr	r3, [fp, #-12]
    144c:	e5d33000 	ldrb	r3, [r3]
    1450:	e1a01003 	mov	r1, r3
    1454:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1458:	ebffff4d 	bl	1194 <putc>
    145c:	e51b300c 	ldr	r3, [fp, #-12]
    1460:	e2833001 	add	r3, r3, #1
    1464:	e50b300c 	str	r3, [fp, #-12]
    1468:	e51b300c 	ldr	r3, [fp, #-12]
    146c:	e5d33000 	ldrb	r3, [r3]
    1470:	e3530000 	cmp	r3, #0
    1474:	1afffff3 	bne	1448 <printf+0x144>
    1478:	ea00001d 	b	14f4 <printf+0x1f0>
    147c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1480:	e3530063 	cmp	r3, #99	@ 0x63
    1484:	1a000009 	bne	14b0 <printf+0x1ac>
    1488:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    148c:	e5933000 	ldr	r3, [r3]
    1490:	e6ef3073 	uxtb	r3, r3
    1494:	e1a01003 	mov	r1, r3
    1498:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    149c:	ebffff3c 	bl	1194 <putc>
    14a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    14a4:	e2833004 	add	r3, r3, #4
    14a8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    14ac:	ea000010 	b	14f4 <printf+0x1f0>
    14b0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    14b4:	e3530025 	cmp	r3, #37	@ 0x25
    14b8:	1a000005 	bne	14d4 <printf+0x1d0>
    14bc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    14c0:	e6ef3073 	uxtb	r3, r3
    14c4:	e1a01003 	mov	r1, r3
    14c8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    14cc:	ebffff30 	bl	1194 <putc>
    14d0:	ea000007 	b	14f4 <printf+0x1f0>
    14d4:	e3a01025 	mov	r1, #37	@ 0x25
    14d8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    14dc:	ebffff2c 	bl	1194 <putc>
    14e0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    14e4:	e6ef3073 	uxtb	r3, r3
    14e8:	e1a01003 	mov	r1, r3
    14ec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    14f0:	ebffff27 	bl	1194 <putc>
    14f4:	e3a03000 	mov	r3, #0
    14f8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    14fc:	e51b3010 	ldr	r3, [fp, #-16]
    1500:	e2833001 	add	r3, r3, #1
    1504:	e50b3010 	str	r3, [fp, #-16]
    1508:	e59b2004 	ldr	r2, [fp, #4]
    150c:	e51b3010 	ldr	r3, [fp, #-16]
    1510:	e0823003 	add	r3, r2, r3
    1514:	e5d33000 	ldrb	r3, [r3]
    1518:	e3530000 	cmp	r3, #0
    151c:	1affff84 	bne	1334 <printf+0x30>
    1520:	e1a00000 	nop			@ (mov r0, r0)
    1524:	e1a00000 	nop			@ (mov r0, r0)
    1528:	e24bd004 	sub	sp, fp, #4
    152c:	e8bd4800 	pop	{fp, lr}
    1530:	e28dd00c 	add	sp, sp, #12
    1534:	e12fff1e 	bx	lr
    1538:	00001c64 	.word	0x00001c64

0000153c <free>:
    153c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1540:	e28db000 	add	fp, sp, #0
    1544:	e24dd014 	sub	sp, sp, #20
    1548:	e50b0010 	str	r0, [fp, #-16]
    154c:	e51b3010 	ldr	r3, [fp, #-16]
    1550:	e2433008 	sub	r3, r3, #8
    1554:	e50b300c 	str	r3, [fp, #-12]
    1558:	e59f3154 	ldr	r3, [pc, #340]	@ 16b4 <free+0x178>
    155c:	e5933000 	ldr	r3, [r3]
    1560:	e50b3008 	str	r3, [fp, #-8]
    1564:	ea000010 	b	15ac <free+0x70>
    1568:	e51b3008 	ldr	r3, [fp, #-8]
    156c:	e5933000 	ldr	r3, [r3]
    1570:	e51b2008 	ldr	r2, [fp, #-8]
    1574:	e1520003 	cmp	r2, r3
    1578:	3a000008 	bcc	15a0 <free+0x64>
    157c:	e51b200c 	ldr	r2, [fp, #-12]
    1580:	e51b3008 	ldr	r3, [fp, #-8]
    1584:	e1520003 	cmp	r2, r3
    1588:	8a000010 	bhi	15d0 <free+0x94>
    158c:	e51b3008 	ldr	r3, [fp, #-8]
    1590:	e5933000 	ldr	r3, [r3]
    1594:	e51b200c 	ldr	r2, [fp, #-12]
    1598:	e1520003 	cmp	r2, r3
    159c:	3a00000b 	bcc	15d0 <free+0x94>
    15a0:	e51b3008 	ldr	r3, [fp, #-8]
    15a4:	e5933000 	ldr	r3, [r3]
    15a8:	e50b3008 	str	r3, [fp, #-8]
    15ac:	e51b200c 	ldr	r2, [fp, #-12]
    15b0:	e51b3008 	ldr	r3, [fp, #-8]
    15b4:	e1520003 	cmp	r2, r3
    15b8:	9affffea 	bls	1568 <free+0x2c>
    15bc:	e51b3008 	ldr	r3, [fp, #-8]
    15c0:	e5933000 	ldr	r3, [r3]
    15c4:	e51b200c 	ldr	r2, [fp, #-12]
    15c8:	e1520003 	cmp	r2, r3
    15cc:	2affffe5 	bcs	1568 <free+0x2c>
    15d0:	e51b300c 	ldr	r3, [fp, #-12]
    15d4:	e5933004 	ldr	r3, [r3, #4]
    15d8:	e1a03183 	lsl	r3, r3, #3
    15dc:	e51b200c 	ldr	r2, [fp, #-12]
    15e0:	e0822003 	add	r2, r2, r3
    15e4:	e51b3008 	ldr	r3, [fp, #-8]
    15e8:	e5933000 	ldr	r3, [r3]
    15ec:	e1520003 	cmp	r2, r3
    15f0:	1a00000d 	bne	162c <free+0xf0>
    15f4:	e51b300c 	ldr	r3, [fp, #-12]
    15f8:	e5932004 	ldr	r2, [r3, #4]
    15fc:	e51b3008 	ldr	r3, [fp, #-8]
    1600:	e5933000 	ldr	r3, [r3]
    1604:	e5933004 	ldr	r3, [r3, #4]
    1608:	e0822003 	add	r2, r2, r3
    160c:	e51b300c 	ldr	r3, [fp, #-12]
    1610:	e5832004 	str	r2, [r3, #4]
    1614:	e51b3008 	ldr	r3, [fp, #-8]
    1618:	e5933000 	ldr	r3, [r3]
    161c:	e5932000 	ldr	r2, [r3]
    1620:	e51b300c 	ldr	r3, [fp, #-12]
    1624:	e5832000 	str	r2, [r3]
    1628:	ea000003 	b	163c <free+0x100>
    162c:	e51b3008 	ldr	r3, [fp, #-8]
    1630:	e5932000 	ldr	r2, [r3]
    1634:	e51b300c 	ldr	r3, [fp, #-12]
    1638:	e5832000 	str	r2, [r3]
    163c:	e51b3008 	ldr	r3, [fp, #-8]
    1640:	e5933004 	ldr	r3, [r3, #4]
    1644:	e1a03183 	lsl	r3, r3, #3
    1648:	e51b2008 	ldr	r2, [fp, #-8]
    164c:	e0823003 	add	r3, r2, r3
    1650:	e51b200c 	ldr	r2, [fp, #-12]
    1654:	e1520003 	cmp	r2, r3
    1658:	1a00000b 	bne	168c <free+0x150>
    165c:	e51b3008 	ldr	r3, [fp, #-8]
    1660:	e5932004 	ldr	r2, [r3, #4]
    1664:	e51b300c 	ldr	r3, [fp, #-12]
    1668:	e5933004 	ldr	r3, [r3, #4]
    166c:	e0822003 	add	r2, r2, r3
    1670:	e51b3008 	ldr	r3, [fp, #-8]
    1674:	e5832004 	str	r2, [r3, #4]
    1678:	e51b300c 	ldr	r3, [fp, #-12]
    167c:	e5932000 	ldr	r2, [r3]
    1680:	e51b3008 	ldr	r3, [fp, #-8]
    1684:	e5832000 	str	r2, [r3]
    1688:	ea000002 	b	1698 <free+0x15c>
    168c:	e51b3008 	ldr	r3, [fp, #-8]
    1690:	e51b200c 	ldr	r2, [fp, #-12]
    1694:	e5832000 	str	r2, [r3]
    1698:	e59f2014 	ldr	r2, [pc, #20]	@ 16b4 <free+0x178>
    169c:	e51b3008 	ldr	r3, [fp, #-8]
    16a0:	e5823000 	str	r3, [r2]
    16a4:	e1a00000 	nop			@ (mov r0, r0)
    16a8:	e28bd000 	add	sp, fp, #0
    16ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    16b0:	e12fff1e 	bx	lr
    16b4:	00001c8c 	.word	0x00001c8c

000016b8 <morecore>:
    16b8:	e92d4800 	push	{fp, lr}
    16bc:	e28db004 	add	fp, sp, #4
    16c0:	e24dd010 	sub	sp, sp, #16
    16c4:	e50b0010 	str	r0, [fp, #-16]
    16c8:	e51b3010 	ldr	r3, [fp, #-16]
    16cc:	e3530a01 	cmp	r3, #4096	@ 0x1000
    16d0:	2a000001 	bcs	16dc <morecore+0x24>
    16d4:	e3a03a01 	mov	r3, #4096	@ 0x1000
    16d8:	e50b3010 	str	r3, [fp, #-16]
    16dc:	e51b3010 	ldr	r3, [fp, #-16]
    16e0:	e1a03183 	lsl	r3, r3, #3
    16e4:	e1a00003 	mov	r0, r3
    16e8:	ebfffe07 	bl	f0c <sbrk>
    16ec:	e50b0008 	str	r0, [fp, #-8]
    16f0:	e51b3008 	ldr	r3, [fp, #-8]
    16f4:	e3730001 	cmn	r3, #1
    16f8:	1a000001 	bne	1704 <morecore+0x4c>
    16fc:	e3a03000 	mov	r3, #0
    1700:	ea00000a 	b	1730 <morecore+0x78>
    1704:	e51b3008 	ldr	r3, [fp, #-8]
    1708:	e50b300c 	str	r3, [fp, #-12]
    170c:	e51b300c 	ldr	r3, [fp, #-12]
    1710:	e51b2010 	ldr	r2, [fp, #-16]
    1714:	e5832004 	str	r2, [r3, #4]
    1718:	e51b300c 	ldr	r3, [fp, #-12]
    171c:	e2833008 	add	r3, r3, #8
    1720:	e1a00003 	mov	r0, r3
    1724:	ebffff84 	bl	153c <free>
    1728:	e59f300c 	ldr	r3, [pc, #12]	@ 173c <morecore+0x84>
    172c:	e5933000 	ldr	r3, [r3]
    1730:	e1a00003 	mov	r0, r3
    1734:	e24bd004 	sub	sp, fp, #4
    1738:	e8bd8800 	pop	{fp, pc}
    173c:	00001c8c 	.word	0x00001c8c

00001740 <malloc>:
    1740:	e92d4800 	push	{fp, lr}
    1744:	e28db004 	add	fp, sp, #4
    1748:	e24dd018 	sub	sp, sp, #24
    174c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1750:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1754:	e2833007 	add	r3, r3, #7
    1758:	e1a031a3 	lsr	r3, r3, #3
    175c:	e2833001 	add	r3, r3, #1
    1760:	e50b3010 	str	r3, [fp, #-16]
    1764:	e59f3134 	ldr	r3, [pc, #308]	@ 18a0 <malloc+0x160>
    1768:	e5933000 	ldr	r3, [r3]
    176c:	e50b300c 	str	r3, [fp, #-12]
    1770:	e51b300c 	ldr	r3, [fp, #-12]
    1774:	e3530000 	cmp	r3, #0
    1778:	1a00000b 	bne	17ac <malloc+0x6c>
    177c:	e59f3120 	ldr	r3, [pc, #288]	@ 18a4 <malloc+0x164>
    1780:	e50b300c 	str	r3, [fp, #-12]
    1784:	e59f2114 	ldr	r2, [pc, #276]	@ 18a0 <malloc+0x160>
    1788:	e51b300c 	ldr	r3, [fp, #-12]
    178c:	e5823000 	str	r3, [r2]
    1790:	e59f3108 	ldr	r3, [pc, #264]	@ 18a0 <malloc+0x160>
    1794:	e5933000 	ldr	r3, [r3]
    1798:	e59f2104 	ldr	r2, [pc, #260]	@ 18a4 <malloc+0x164>
    179c:	e5823000 	str	r3, [r2]
    17a0:	e59f30fc 	ldr	r3, [pc, #252]	@ 18a4 <malloc+0x164>
    17a4:	e3a02000 	mov	r2, #0
    17a8:	e5832004 	str	r2, [r3, #4]
    17ac:	e51b300c 	ldr	r3, [fp, #-12]
    17b0:	e5933000 	ldr	r3, [r3]
    17b4:	e50b3008 	str	r3, [fp, #-8]
    17b8:	e51b3008 	ldr	r3, [fp, #-8]
    17bc:	e5933004 	ldr	r3, [r3, #4]
    17c0:	e51b2010 	ldr	r2, [fp, #-16]
    17c4:	e1520003 	cmp	r2, r3
    17c8:	8a00001e 	bhi	1848 <malloc+0x108>
    17cc:	e51b3008 	ldr	r3, [fp, #-8]
    17d0:	e5933004 	ldr	r3, [r3, #4]
    17d4:	e51b2010 	ldr	r2, [fp, #-16]
    17d8:	e1520003 	cmp	r2, r3
    17dc:	1a000004 	bne	17f4 <malloc+0xb4>
    17e0:	e51b3008 	ldr	r3, [fp, #-8]
    17e4:	e5932000 	ldr	r2, [r3]
    17e8:	e51b300c 	ldr	r3, [fp, #-12]
    17ec:	e5832000 	str	r2, [r3]
    17f0:	ea00000e 	b	1830 <malloc+0xf0>
    17f4:	e51b3008 	ldr	r3, [fp, #-8]
    17f8:	e5932004 	ldr	r2, [r3, #4]
    17fc:	e51b3010 	ldr	r3, [fp, #-16]
    1800:	e0422003 	sub	r2, r2, r3
    1804:	e51b3008 	ldr	r3, [fp, #-8]
    1808:	e5832004 	str	r2, [r3, #4]
    180c:	e51b3008 	ldr	r3, [fp, #-8]
    1810:	e5933004 	ldr	r3, [r3, #4]
    1814:	e1a03183 	lsl	r3, r3, #3
    1818:	e51b2008 	ldr	r2, [fp, #-8]
    181c:	e0823003 	add	r3, r2, r3
    1820:	e50b3008 	str	r3, [fp, #-8]
    1824:	e51b3008 	ldr	r3, [fp, #-8]
    1828:	e51b2010 	ldr	r2, [fp, #-16]
    182c:	e5832004 	str	r2, [r3, #4]
    1830:	e59f2068 	ldr	r2, [pc, #104]	@ 18a0 <malloc+0x160>
    1834:	e51b300c 	ldr	r3, [fp, #-12]
    1838:	e5823000 	str	r3, [r2]
    183c:	e51b3008 	ldr	r3, [fp, #-8]
    1840:	e2833008 	add	r3, r3, #8
    1844:	ea000012 	b	1894 <malloc+0x154>
    1848:	e59f3050 	ldr	r3, [pc, #80]	@ 18a0 <malloc+0x160>
    184c:	e5933000 	ldr	r3, [r3]
    1850:	e51b2008 	ldr	r2, [fp, #-8]
    1854:	e1520003 	cmp	r2, r3
    1858:	1a000007 	bne	187c <malloc+0x13c>
    185c:	e51b0010 	ldr	r0, [fp, #-16]
    1860:	ebffff94 	bl	16b8 <morecore>
    1864:	e50b0008 	str	r0, [fp, #-8]
    1868:	e51b3008 	ldr	r3, [fp, #-8]
    186c:	e3530000 	cmp	r3, #0
    1870:	1a000001 	bne	187c <malloc+0x13c>
    1874:	e3a03000 	mov	r3, #0
    1878:	ea000005 	b	1894 <malloc+0x154>
    187c:	e51b3008 	ldr	r3, [fp, #-8]
    1880:	e50b300c 	str	r3, [fp, #-12]
    1884:	e51b3008 	ldr	r3, [fp, #-8]
    1888:	e5933000 	ldr	r3, [r3]
    188c:	e50b3008 	str	r3, [fp, #-8]
    1890:	eaffffc8 	b	17b8 <malloc+0x78>
    1894:	e1a00003 	mov	r0, r3
    1898:	e24bd004 	sub	sp, fp, #4
    189c:	e8bd8800 	pop	{fp, pc}
    18a0:	00001c8c 	.word	0x00001c8c
    18a4:	00001c84 	.word	0x00001c84

000018a8 <__udivsi3>:
    18a8:	e2512001 	subs	r2, r1, #1
    18ac:	012fff1e 	bxeq	lr
    18b0:	3a000036 	bcc	1990 <__udivsi3+0xe8>
    18b4:	e1500001 	cmp	r0, r1
    18b8:	9a000022 	bls	1948 <__udivsi3+0xa0>
    18bc:	e1110002 	tst	r1, r2
    18c0:	0a000023 	beq	1954 <__udivsi3+0xac>
    18c4:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    18c8:	01a01181 	lsleq	r1, r1, #3
    18cc:	03a03008 	moveq	r3, #8
    18d0:	13a03001 	movne	r3, #1
    18d4:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    18d8:	31510000 	cmpcc	r1, r0
    18dc:	31a01201 	lslcc	r1, r1, #4
    18e0:	31a03203 	lslcc	r3, r3, #4
    18e4:	3afffffa 	bcc	18d4 <__udivsi3+0x2c>
    18e8:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    18ec:	31510000 	cmpcc	r1, r0
    18f0:	31a01081 	lslcc	r1, r1, #1
    18f4:	31a03083 	lslcc	r3, r3, #1
    18f8:	3afffffa 	bcc	18e8 <__udivsi3+0x40>
    18fc:	e3a02000 	mov	r2, #0
    1900:	e1500001 	cmp	r0, r1
    1904:	20400001 	subcs	r0, r0, r1
    1908:	21822003 	orrcs	r2, r2, r3
    190c:	e15000a1 	cmp	r0, r1, lsr #1
    1910:	204000a1 	subcs	r0, r0, r1, lsr #1
    1914:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1918:	e1500121 	cmp	r0, r1, lsr #2
    191c:	20400121 	subcs	r0, r0, r1, lsr #2
    1920:	21822123 	orrcs	r2, r2, r3, lsr #2
    1924:	e15001a1 	cmp	r0, r1, lsr #3
    1928:	204001a1 	subcs	r0, r0, r1, lsr #3
    192c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1930:	e3500000 	cmp	r0, #0
    1934:	11b03223 	lsrsne	r3, r3, #4
    1938:	11a01221 	lsrne	r1, r1, #4
    193c:	1affffef 	bne	1900 <__udivsi3+0x58>
    1940:	e1a00002 	mov	r0, r2
    1944:	e12fff1e 	bx	lr
    1948:	03a00001 	moveq	r0, #1
    194c:	13a00000 	movne	r0, #0
    1950:	e12fff1e 	bx	lr
    1954:	e3510801 	cmp	r1, #65536	@ 0x10000
    1958:	21a01821 	lsrcs	r1, r1, #16
    195c:	23a02010 	movcs	r2, #16
    1960:	33a02000 	movcc	r2, #0
    1964:	e3510c01 	cmp	r1, #256	@ 0x100
    1968:	21a01421 	lsrcs	r1, r1, #8
    196c:	22822008 	addcs	r2, r2, #8
    1970:	e3510010 	cmp	r1, #16
    1974:	21a01221 	lsrcs	r1, r1, #4
    1978:	22822004 	addcs	r2, r2, #4
    197c:	e3510004 	cmp	r1, #4
    1980:	82822003 	addhi	r2, r2, #3
    1984:	908220a1 	addls	r2, r2, r1, lsr #1
    1988:	e1a00230 	lsr	r0, r0, r2
    198c:	e12fff1e 	bx	lr
    1990:	e3500000 	cmp	r0, #0
    1994:	13e00000 	mvnne	r0, #0
    1998:	ea000007 	b	19bc <__aeabi_idiv0>

0000199c <__aeabi_uidivmod>:
    199c:	e3510000 	cmp	r1, #0
    19a0:	0afffffa 	beq	1990 <__udivsi3+0xe8>
    19a4:	e92d4003 	push	{r0, r1, lr}
    19a8:	ebffffbe 	bl	18a8 <__udivsi3>
    19ac:	e8bd4006 	pop	{r1, r2, lr}
    19b0:	e0030092 	mul	r3, r2, r0
    19b4:	e0411003 	sub	r1, r1, r3
    19b8:	e12fff1e 	bx	lr

000019bc <__aeabi_idiv0>:
    19bc:	e12fff1e 	bx	lr
