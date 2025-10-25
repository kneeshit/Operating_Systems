
_grep:     file format elf32-littlearm


Disassembly of section .text:

00000000 <grep>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd018 	sub	sp, sp, #24
       c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
      10:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
      14:	e3a03000 	mov	r3, #0
      18:	e50b3008 	str	r3, [fp, #-8]
      1c:	ea000037 	b	100 <grep+0x100>
      20:	e51b2008 	ldr	r2, [fp, #-8]
      24:	e51b3010 	ldr	r3, [fp, #-16]
      28:	e0823003 	add	r3, r2, r3
      2c:	e50b3008 	str	r3, [fp, #-8]
      30:	e59f3108 	ldr	r3, [pc, #264]	@ 140 <grep+0x140>
      34:	e50b300c 	str	r3, [fp, #-12]
      38:	ea000016 	b	98 <grep+0x98>
      3c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      40:	e3a02000 	mov	r2, #0
      44:	e5c32000 	strb	r2, [r3]
      48:	e51b100c 	ldr	r1, [fp, #-12]
      4c:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
      50:	eb000079 	bl	23c <match>
      54:	e1a03000 	mov	r3, r0
      58:	e3530000 	cmp	r3, #0
      5c:	0a00000a 	beq	8c <grep+0x8c>
      60:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      64:	e3a0200a 	mov	r2, #10
      68:	e5c32000 	strb	r2, [r3]
      6c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      70:	e2832001 	add	r2, r3, #1
      74:	e51b300c 	ldr	r3, [fp, #-12]
      78:	e0423003 	sub	r3, r2, r3
      7c:	e1a02003 	mov	r2, r3
      80:	e51b100c 	ldr	r1, [fp, #-12]
      84:	e3a00001 	mov	r0, #1
      88:	eb000301 	bl	c94 <write>
      8c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      90:	e2833001 	add	r3, r3, #1
      94:	e50b300c 	str	r3, [fp, #-12]
      98:	e3a0100a 	mov	r1, #10
      9c:	e51b000c 	ldr	r0, [fp, #-12]
      a0:	eb000184 	bl	6b8 <strchr>
      a4:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
      a8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      ac:	e3530000 	cmp	r3, #0
      b0:	1affffe1 	bne	3c <grep+0x3c>
      b4:	e51b300c 	ldr	r3, [fp, #-12]
      b8:	e59f2080 	ldr	r2, [pc, #128]	@ 140 <grep+0x140>
      bc:	e1530002 	cmp	r3, r2
      c0:	1a000001 	bne	cc <grep+0xcc>
      c4:	e3a03000 	mov	r3, #0
      c8:	e50b3008 	str	r3, [fp, #-8]
      cc:	e51b3008 	ldr	r3, [fp, #-8]
      d0:	e3530000 	cmp	r3, #0
      d4:	da000009 	ble	100 <grep+0x100>
      d8:	e51b300c 	ldr	r3, [fp, #-12]
      dc:	e59f205c 	ldr	r2, [pc, #92]	@ 140 <grep+0x140>
      e0:	e0433002 	sub	r3, r3, r2
      e4:	e51b2008 	ldr	r2, [fp, #-8]
      e8:	e0423003 	sub	r3, r2, r3
      ec:	e50b3008 	str	r3, [fp, #-8]
      f0:	e51b2008 	ldr	r2, [fp, #-8]
      f4:	e51b100c 	ldr	r1, [fp, #-12]
      f8:	e59f0040 	ldr	r0, [pc, #64]	@ 140 <grep+0x140>
      fc:	eb0001f5 	bl	8d8 <memmove>
     100:	e51b3008 	ldr	r3, [fp, #-8]
     104:	e59f2034 	ldr	r2, [pc, #52]	@ 140 <grep+0x140>
     108:	e0831002 	add	r1, r3, r2
     10c:	e51b3008 	ldr	r3, [fp, #-8]
     110:	e2633b01 	rsb	r3, r3, #1024	@ 0x400
     114:	e1a02003 	mov	r2, r3
     118:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
     11c:	eb0002d3 	bl	c70 <read>
     120:	e50b0010 	str	r0, [fp, #-16]
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e3530000 	cmp	r3, #0
     12c:	caffffbb 	bgt	20 <grep+0x20>
     130:	e1a00000 	nop			@ (mov r0, r0)
     134:	e1a00000 	nop			@ (mov r0, r0)
     138:	e24bd004 	sub	sp, fp, #4
     13c:	e8bd8800 	pop	{fp, pc}
     140:	00001970 	.word	0x00001970

00000144 <main>:
     144:	e92d4800 	push	{fp, lr}
     148:	e28db004 	add	fp, sp, #4
     14c:	e24dd018 	sub	sp, sp, #24
     150:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     154:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     158:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     15c:	e3530001 	cmp	r3, #1
     160:	ca000003 	bgt	174 <main+0x30>
     164:	e59f10c8 	ldr	r1, [pc, #200]	@ 234 <main+0xf0>
     168:	e3a00002 	mov	r0, #2
     16c:	eb00043b 	bl	1260 <printf>
     170:	eb0002a3 	bl	c04 <exit>
     174:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     178:	e5933004 	ldr	r3, [r3, #4]
     17c:	e50b300c 	str	r3, [fp, #-12]
     180:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     184:	e3530002 	cmp	r3, #2
     188:	ca000003 	bgt	19c <main+0x58>
     18c:	e3a01000 	mov	r1, #0
     190:	e51b000c 	ldr	r0, [fp, #-12]
     194:	ebffff99 	bl	0 <grep>
     198:	eb000299 	bl	c04 <exit>
     19c:	e3a03002 	mov	r3, #2
     1a0:	e50b3008 	str	r3, [fp, #-8]
     1a4:	ea00001d 	b	220 <main+0xdc>
     1a8:	e51b3008 	ldr	r3, [fp, #-8]
     1ac:	e1a03103 	lsl	r3, r3, #2
     1b0:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     1b4:	e0823003 	add	r3, r2, r3
     1b8:	e5933000 	ldr	r3, [r3]
     1bc:	e3a01000 	mov	r1, #0
     1c0:	e1a00003 	mov	r0, r3
     1c4:	eb0002d6 	bl	d24 <open>
     1c8:	e50b0010 	str	r0, [fp, #-16]
     1cc:	e51b3010 	ldr	r3, [fp, #-16]
     1d0:	e3530000 	cmp	r3, #0
     1d4:	aa000009 	bge	200 <main+0xbc>
     1d8:	e51b3008 	ldr	r3, [fp, #-8]
     1dc:	e1a03103 	lsl	r3, r3, #2
     1e0:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     1e4:	e0823003 	add	r3, r2, r3
     1e8:	e5933000 	ldr	r3, [r3]
     1ec:	e1a02003 	mov	r2, r3
     1f0:	e59f1040 	ldr	r1, [pc, #64]	@ 238 <main+0xf4>
     1f4:	e3a00001 	mov	r0, #1
     1f8:	eb000418 	bl	1260 <printf>
     1fc:	eb000280 	bl	c04 <exit>
     200:	e51b1010 	ldr	r1, [fp, #-16]
     204:	e51b000c 	ldr	r0, [fp, #-12]
     208:	ebffff7c 	bl	0 <grep>
     20c:	e51b0010 	ldr	r0, [fp, #-16]
     210:	eb0002a8 	bl	cb8 <close>
     214:	e51b3008 	ldr	r3, [fp, #-8]
     218:	e2833001 	add	r3, r3, #1
     21c:	e50b3008 	str	r3, [fp, #-8]
     220:	e51b2008 	ldr	r2, [fp, #-8]
     224:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     228:	e1520003 	cmp	r2, r3
     22c:	baffffdd 	blt	1a8 <main+0x64>
     230:	eb000273 	bl	c04 <exit>
     234:	0000191c 	.word	0x0000191c
     238:	0000193c 	.word	0x0000193c

0000023c <match>:
     23c:	e92d4800 	push	{fp, lr}
     240:	e28db004 	add	fp, sp, #4
     244:	e24dd008 	sub	sp, sp, #8
     248:	e50b0008 	str	r0, [fp, #-8]
     24c:	e50b100c 	str	r1, [fp, #-12]
     250:	e51b3008 	ldr	r3, [fp, #-8]
     254:	e5d33000 	ldrb	r3, [r3]
     258:	e353005e 	cmp	r3, #94	@ 0x5e
     25c:	1a000006 	bne	27c <match+0x40>
     260:	e51b3008 	ldr	r3, [fp, #-8]
     264:	e2833001 	add	r3, r3, #1
     268:	e51b100c 	ldr	r1, [fp, #-12]
     26c:	e1a00003 	mov	r0, r3
     270:	eb000013 	bl	2c4 <matchhere>
     274:	e1a03000 	mov	r3, r0
     278:	ea00000e 	b	2b8 <match+0x7c>
     27c:	e51b100c 	ldr	r1, [fp, #-12]
     280:	e51b0008 	ldr	r0, [fp, #-8]
     284:	eb00000e 	bl	2c4 <matchhere>
     288:	e1a03000 	mov	r3, r0
     28c:	e3530000 	cmp	r3, #0
     290:	0a000001 	beq	29c <match+0x60>
     294:	e3a03001 	mov	r3, #1
     298:	ea000006 	b	2b8 <match+0x7c>
     29c:	e51b300c 	ldr	r3, [fp, #-12]
     2a0:	e2832001 	add	r2, r3, #1
     2a4:	e50b200c 	str	r2, [fp, #-12]
     2a8:	e5d33000 	ldrb	r3, [r3]
     2ac:	e3530000 	cmp	r3, #0
     2b0:	1afffff1 	bne	27c <match+0x40>
     2b4:	e3a03000 	mov	r3, #0
     2b8:	e1a00003 	mov	r0, r3
     2bc:	e24bd004 	sub	sp, fp, #4
     2c0:	e8bd8800 	pop	{fp, pc}

000002c4 <matchhere>:
     2c4:	e92d4800 	push	{fp, lr}
     2c8:	e28db004 	add	fp, sp, #4
     2cc:	e24dd008 	sub	sp, sp, #8
     2d0:	e50b0008 	str	r0, [fp, #-8]
     2d4:	e50b100c 	str	r1, [fp, #-12]
     2d8:	e51b3008 	ldr	r3, [fp, #-8]
     2dc:	e5d33000 	ldrb	r3, [r3]
     2e0:	e3530000 	cmp	r3, #0
     2e4:	1a000001 	bne	2f0 <matchhere+0x2c>
     2e8:	e3a03001 	mov	r3, #1
     2ec:	ea000036 	b	3cc <matchhere+0x108>
     2f0:	e51b3008 	ldr	r3, [fp, #-8]
     2f4:	e2833001 	add	r3, r3, #1
     2f8:	e5d33000 	ldrb	r3, [r3]
     2fc:	e353002a 	cmp	r3, #42	@ 0x2a
     300:	1a000009 	bne	32c <matchhere+0x68>
     304:	e51b3008 	ldr	r3, [fp, #-8]
     308:	e5d33000 	ldrb	r3, [r3]
     30c:	e1a00003 	mov	r0, r3
     310:	e51b3008 	ldr	r3, [fp, #-8]
     314:	e2833002 	add	r3, r3, #2
     318:	e51b200c 	ldr	r2, [fp, #-12]
     31c:	e1a01003 	mov	r1, r3
     320:	eb00002c 	bl	3d8 <matchstar>
     324:	e1a03000 	mov	r3, r0
     328:	ea000027 	b	3cc <matchhere+0x108>
     32c:	e51b3008 	ldr	r3, [fp, #-8]
     330:	e5d33000 	ldrb	r3, [r3]
     334:	e3530024 	cmp	r3, #36	@ 0x24
     338:	1a00000b 	bne	36c <matchhere+0xa8>
     33c:	e51b3008 	ldr	r3, [fp, #-8]
     340:	e2833001 	add	r3, r3, #1
     344:	e5d33000 	ldrb	r3, [r3]
     348:	e3530000 	cmp	r3, #0
     34c:	1a000006 	bne	36c <matchhere+0xa8>
     350:	e51b300c 	ldr	r3, [fp, #-12]
     354:	e5d33000 	ldrb	r3, [r3]
     358:	e3530000 	cmp	r3, #0
     35c:	03a03001 	moveq	r3, #1
     360:	13a03000 	movne	r3, #0
     364:	e6ef3073 	uxtb	r3, r3
     368:	ea000017 	b	3cc <matchhere+0x108>
     36c:	e51b300c 	ldr	r3, [fp, #-12]
     370:	e5d33000 	ldrb	r3, [r3]
     374:	e3530000 	cmp	r3, #0
     378:	0a000012 	beq	3c8 <matchhere+0x104>
     37c:	e51b3008 	ldr	r3, [fp, #-8]
     380:	e5d33000 	ldrb	r3, [r3]
     384:	e353002e 	cmp	r3, #46	@ 0x2e
     388:	0a000005 	beq	3a4 <matchhere+0xe0>
     38c:	e51b3008 	ldr	r3, [fp, #-8]
     390:	e5d32000 	ldrb	r2, [r3]
     394:	e51b300c 	ldr	r3, [fp, #-12]
     398:	e5d33000 	ldrb	r3, [r3]
     39c:	e1520003 	cmp	r2, r3
     3a0:	1a000008 	bne	3c8 <matchhere+0x104>
     3a4:	e51b3008 	ldr	r3, [fp, #-8]
     3a8:	e2832001 	add	r2, r3, #1
     3ac:	e51b300c 	ldr	r3, [fp, #-12]
     3b0:	e2833001 	add	r3, r3, #1
     3b4:	e1a01003 	mov	r1, r3
     3b8:	e1a00002 	mov	r0, r2
     3bc:	ebffffc0 	bl	2c4 <matchhere>
     3c0:	e1a03000 	mov	r3, r0
     3c4:	ea000000 	b	3cc <matchhere+0x108>
     3c8:	e3a03000 	mov	r3, #0
     3cc:	e1a00003 	mov	r0, r3
     3d0:	e24bd004 	sub	sp, fp, #4
     3d4:	e8bd8800 	pop	{fp, pc}

000003d8 <matchstar>:
     3d8:	e92d4800 	push	{fp, lr}
     3dc:	e28db004 	add	fp, sp, #4
     3e0:	e24dd010 	sub	sp, sp, #16
     3e4:	e50b0008 	str	r0, [fp, #-8]
     3e8:	e50b100c 	str	r1, [fp, #-12]
     3ec:	e50b2010 	str	r2, [fp, #-16]
     3f0:	e51b1010 	ldr	r1, [fp, #-16]
     3f4:	e51b000c 	ldr	r0, [fp, #-12]
     3f8:	ebffffb1 	bl	2c4 <matchhere>
     3fc:	e1a03000 	mov	r3, r0
     400:	e3530000 	cmp	r3, #0
     404:	0a000001 	beq	410 <matchstar+0x38>
     408:	e3a03001 	mov	r3, #1
     40c:	ea00000f 	b	450 <matchstar+0x78>
     410:	e51b3010 	ldr	r3, [fp, #-16]
     414:	e5d33000 	ldrb	r3, [r3]
     418:	e3530000 	cmp	r3, #0
     41c:	0a00000a 	beq	44c <matchstar+0x74>
     420:	e51b3010 	ldr	r3, [fp, #-16]
     424:	e2832001 	add	r2, r3, #1
     428:	e50b2010 	str	r2, [fp, #-16]
     42c:	e5d33000 	ldrb	r3, [r3]
     430:	e1a02003 	mov	r2, r3
     434:	e51b3008 	ldr	r3, [fp, #-8]
     438:	e1530002 	cmp	r3, r2
     43c:	0affffeb 	beq	3f0 <matchstar+0x18>
     440:	e51b3008 	ldr	r3, [fp, #-8]
     444:	e353002e 	cmp	r3, #46	@ 0x2e
     448:	0affffe8 	beq	3f0 <matchstar+0x18>
     44c:	e3a03000 	mov	r3, #0
     450:	e1a00003 	mov	r0, r3
     454:	e24bd004 	sub	sp, fp, #4
     458:	e8bd8800 	pop	{fp, pc}

0000045c <strcpy>:
     45c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     460:	e28db000 	add	fp, sp, #0
     464:	e24dd014 	sub	sp, sp, #20
     468:	e50b0010 	str	r0, [fp, #-16]
     46c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     470:	e51b3010 	ldr	r3, [fp, #-16]
     474:	e50b3008 	str	r3, [fp, #-8]
     478:	e1a00000 	nop			@ (mov r0, r0)
     47c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     480:	e2823001 	add	r3, r2, #1
     484:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     488:	e51b3010 	ldr	r3, [fp, #-16]
     48c:	e2831001 	add	r1, r3, #1
     490:	e50b1010 	str	r1, [fp, #-16]
     494:	e5d22000 	ldrb	r2, [r2]
     498:	e5c32000 	strb	r2, [r3]
     49c:	e5d33000 	ldrb	r3, [r3]
     4a0:	e3530000 	cmp	r3, #0
     4a4:	1afffff4 	bne	47c <strcpy+0x20>
     4a8:	e51b3008 	ldr	r3, [fp, #-8]
     4ac:	e1a00003 	mov	r0, r3
     4b0:	e28bd000 	add	sp, fp, #0
     4b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4b8:	e12fff1e 	bx	lr

000004bc <strcmp>:
     4bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4c0:	e28db000 	add	fp, sp, #0
     4c4:	e24dd00c 	sub	sp, sp, #12
     4c8:	e50b0008 	str	r0, [fp, #-8]
     4cc:	e50b100c 	str	r1, [fp, #-12]
     4d0:	ea000005 	b	4ec <strcmp+0x30>
     4d4:	e51b3008 	ldr	r3, [fp, #-8]
     4d8:	e2833001 	add	r3, r3, #1
     4dc:	e50b3008 	str	r3, [fp, #-8]
     4e0:	e51b300c 	ldr	r3, [fp, #-12]
     4e4:	e2833001 	add	r3, r3, #1
     4e8:	e50b300c 	str	r3, [fp, #-12]
     4ec:	e51b3008 	ldr	r3, [fp, #-8]
     4f0:	e5d33000 	ldrb	r3, [r3]
     4f4:	e3530000 	cmp	r3, #0
     4f8:	0a000005 	beq	514 <strcmp+0x58>
     4fc:	e51b3008 	ldr	r3, [fp, #-8]
     500:	e5d32000 	ldrb	r2, [r3]
     504:	e51b300c 	ldr	r3, [fp, #-12]
     508:	e5d33000 	ldrb	r3, [r3]
     50c:	e1520003 	cmp	r2, r3
     510:	0affffef 	beq	4d4 <strcmp+0x18>
     514:	e51b3008 	ldr	r3, [fp, #-8]
     518:	e5d33000 	ldrb	r3, [r3]
     51c:	e1a02003 	mov	r2, r3
     520:	e51b300c 	ldr	r3, [fp, #-12]
     524:	e5d33000 	ldrb	r3, [r3]
     528:	e0423003 	sub	r3, r2, r3
     52c:	e1a00003 	mov	r0, r3
     530:	e28bd000 	add	sp, fp, #0
     534:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     538:	e12fff1e 	bx	lr

0000053c <strlen>:
     53c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     540:	e28db000 	add	fp, sp, #0
     544:	e24dd014 	sub	sp, sp, #20
     548:	e50b0010 	str	r0, [fp, #-16]
     54c:	e3a03000 	mov	r3, #0
     550:	e50b3008 	str	r3, [fp, #-8]
     554:	ea000002 	b	564 <strlen+0x28>
     558:	e51b3008 	ldr	r3, [fp, #-8]
     55c:	e2833001 	add	r3, r3, #1
     560:	e50b3008 	str	r3, [fp, #-8]
     564:	e51b3008 	ldr	r3, [fp, #-8]
     568:	e51b2010 	ldr	r2, [fp, #-16]
     56c:	e0823003 	add	r3, r2, r3
     570:	e5d33000 	ldrb	r3, [r3]
     574:	e3530000 	cmp	r3, #0
     578:	1afffff6 	bne	558 <strlen+0x1c>
     57c:	e51b3008 	ldr	r3, [fp, #-8]
     580:	e1a00003 	mov	r0, r3
     584:	e28bd000 	add	sp, fp, #0
     588:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     58c:	e12fff1e 	bx	lr

00000590 <memset>:
     590:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     594:	e28db000 	add	fp, sp, #0
     598:	e24dd024 	sub	sp, sp, #36	@ 0x24
     59c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     5a0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     5a4:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     5a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5ac:	e50b3008 	str	r3, [fp, #-8]
     5b0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     5b4:	e54b300d 	strb	r3, [fp, #-13]
     5b8:	e55b200d 	ldrb	r2, [fp, #-13]
     5bc:	e1a03002 	mov	r3, r2
     5c0:	e1a03403 	lsl	r3, r3, #8
     5c4:	e0833002 	add	r3, r3, r2
     5c8:	e1a03803 	lsl	r3, r3, #16
     5cc:	e1a02003 	mov	r2, r3
     5d0:	e55b300d 	ldrb	r3, [fp, #-13]
     5d4:	e1a03403 	lsl	r3, r3, #8
     5d8:	e1822003 	orr	r2, r2, r3
     5dc:	e55b300d 	ldrb	r3, [fp, #-13]
     5e0:	e1823003 	orr	r3, r2, r3
     5e4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     5e8:	ea000008 	b	610 <memset+0x80>
     5ec:	e51b3008 	ldr	r3, [fp, #-8]
     5f0:	e55b200d 	ldrb	r2, [fp, #-13]
     5f4:	e5c32000 	strb	r2, [r3]
     5f8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     5fc:	e2433001 	sub	r3, r3, #1
     600:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     604:	e51b3008 	ldr	r3, [fp, #-8]
     608:	e2833001 	add	r3, r3, #1
     60c:	e50b3008 	str	r3, [fp, #-8]
     610:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     614:	e3530000 	cmp	r3, #0
     618:	0a000003 	beq	62c <memset+0x9c>
     61c:	e51b3008 	ldr	r3, [fp, #-8]
     620:	e2033003 	and	r3, r3, #3
     624:	e3530000 	cmp	r3, #0
     628:	1affffef 	bne	5ec <memset+0x5c>
     62c:	e51b3008 	ldr	r3, [fp, #-8]
     630:	e50b300c 	str	r3, [fp, #-12]
     634:	ea000008 	b	65c <memset+0xcc>
     638:	e51b300c 	ldr	r3, [fp, #-12]
     63c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     640:	e5832000 	str	r2, [r3]
     644:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     648:	e2433004 	sub	r3, r3, #4
     64c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     650:	e51b300c 	ldr	r3, [fp, #-12]
     654:	e2833004 	add	r3, r3, #4
     658:	e50b300c 	str	r3, [fp, #-12]
     65c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     660:	e3530003 	cmp	r3, #3
     664:	8afffff3 	bhi	638 <memset+0xa8>
     668:	e51b300c 	ldr	r3, [fp, #-12]
     66c:	e50b3008 	str	r3, [fp, #-8]
     670:	ea000008 	b	698 <memset+0x108>
     674:	e51b3008 	ldr	r3, [fp, #-8]
     678:	e55b200d 	ldrb	r2, [fp, #-13]
     67c:	e5c32000 	strb	r2, [r3]
     680:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     684:	e2433001 	sub	r3, r3, #1
     688:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     68c:	e51b3008 	ldr	r3, [fp, #-8]
     690:	e2833001 	add	r3, r3, #1
     694:	e50b3008 	str	r3, [fp, #-8]
     698:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     69c:	e3530000 	cmp	r3, #0
     6a0:	1afffff3 	bne	674 <memset+0xe4>
     6a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6a8:	e1a00003 	mov	r0, r3
     6ac:	e28bd000 	add	sp, fp, #0
     6b0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6b4:	e12fff1e 	bx	lr

000006b8 <strchr>:
     6b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6bc:	e28db000 	add	fp, sp, #0
     6c0:	e24dd00c 	sub	sp, sp, #12
     6c4:	e50b0008 	str	r0, [fp, #-8]
     6c8:	e1a03001 	mov	r3, r1
     6cc:	e54b3009 	strb	r3, [fp, #-9]
     6d0:	ea000009 	b	6fc <strchr+0x44>
     6d4:	e51b3008 	ldr	r3, [fp, #-8]
     6d8:	e5d33000 	ldrb	r3, [r3]
     6dc:	e55b2009 	ldrb	r2, [fp, #-9]
     6e0:	e1520003 	cmp	r2, r3
     6e4:	1a000001 	bne	6f0 <strchr+0x38>
     6e8:	e51b3008 	ldr	r3, [fp, #-8]
     6ec:	ea000007 	b	710 <strchr+0x58>
     6f0:	e51b3008 	ldr	r3, [fp, #-8]
     6f4:	e2833001 	add	r3, r3, #1
     6f8:	e50b3008 	str	r3, [fp, #-8]
     6fc:	e51b3008 	ldr	r3, [fp, #-8]
     700:	e5d33000 	ldrb	r3, [r3]
     704:	e3530000 	cmp	r3, #0
     708:	1afffff1 	bne	6d4 <strchr+0x1c>
     70c:	e3a03000 	mov	r3, #0
     710:	e1a00003 	mov	r0, r3
     714:	e28bd000 	add	sp, fp, #0
     718:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     71c:	e12fff1e 	bx	lr

00000720 <gets>:
     720:	e92d4800 	push	{fp, lr}
     724:	e28db004 	add	fp, sp, #4
     728:	e24dd018 	sub	sp, sp, #24
     72c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     730:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     734:	e3a03000 	mov	r3, #0
     738:	e50b3008 	str	r3, [fp, #-8]
     73c:	ea000016 	b	79c <gets+0x7c>
     740:	e24b300d 	sub	r3, fp, #13
     744:	e3a02001 	mov	r2, #1
     748:	e1a01003 	mov	r1, r3
     74c:	e3a00000 	mov	r0, #0
     750:	eb000146 	bl	c70 <read>
     754:	e50b000c 	str	r0, [fp, #-12]
     758:	e51b300c 	ldr	r3, [fp, #-12]
     75c:	e3530000 	cmp	r3, #0
     760:	da000013 	ble	7b4 <gets+0x94>
     764:	e51b3008 	ldr	r3, [fp, #-8]
     768:	e2832001 	add	r2, r3, #1
     76c:	e50b2008 	str	r2, [fp, #-8]
     770:	e1a02003 	mov	r2, r3
     774:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     778:	e0833002 	add	r3, r3, r2
     77c:	e55b200d 	ldrb	r2, [fp, #-13]
     780:	e5c32000 	strb	r2, [r3]
     784:	e55b300d 	ldrb	r3, [fp, #-13]
     788:	e353000a 	cmp	r3, #10
     78c:	0a000009 	beq	7b8 <gets+0x98>
     790:	e55b300d 	ldrb	r3, [fp, #-13]
     794:	e353000d 	cmp	r3, #13
     798:	0a000006 	beq	7b8 <gets+0x98>
     79c:	e51b3008 	ldr	r3, [fp, #-8]
     7a0:	e2833001 	add	r3, r3, #1
     7a4:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     7a8:	e1520003 	cmp	r2, r3
     7ac:	caffffe3 	bgt	740 <gets+0x20>
     7b0:	ea000000 	b	7b8 <gets+0x98>
     7b4:	e1a00000 	nop			@ (mov r0, r0)
     7b8:	e51b3008 	ldr	r3, [fp, #-8]
     7bc:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     7c0:	e0823003 	add	r3, r2, r3
     7c4:	e3a02000 	mov	r2, #0
     7c8:	e5c32000 	strb	r2, [r3]
     7cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7d0:	e1a00003 	mov	r0, r3
     7d4:	e24bd004 	sub	sp, fp, #4
     7d8:	e8bd8800 	pop	{fp, pc}

000007dc <stat>:
     7dc:	e92d4800 	push	{fp, lr}
     7e0:	e28db004 	add	fp, sp, #4
     7e4:	e24dd010 	sub	sp, sp, #16
     7e8:	e50b0010 	str	r0, [fp, #-16]
     7ec:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     7f0:	e3a01000 	mov	r1, #0
     7f4:	e51b0010 	ldr	r0, [fp, #-16]
     7f8:	eb000149 	bl	d24 <open>
     7fc:	e50b0008 	str	r0, [fp, #-8]
     800:	e51b3008 	ldr	r3, [fp, #-8]
     804:	e3530000 	cmp	r3, #0
     808:	aa000001 	bge	814 <stat+0x38>
     80c:	e3e03000 	mvn	r3, #0
     810:	ea000006 	b	830 <stat+0x54>
     814:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     818:	e51b0008 	ldr	r0, [fp, #-8]
     81c:	eb00015b 	bl	d90 <fstat>
     820:	e50b000c 	str	r0, [fp, #-12]
     824:	e51b0008 	ldr	r0, [fp, #-8]
     828:	eb000122 	bl	cb8 <close>
     82c:	e51b300c 	ldr	r3, [fp, #-12]
     830:	e1a00003 	mov	r0, r3
     834:	e24bd004 	sub	sp, fp, #4
     838:	e8bd8800 	pop	{fp, pc}

0000083c <atoi>:
     83c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     840:	e28db000 	add	fp, sp, #0
     844:	e24dd014 	sub	sp, sp, #20
     848:	e50b0010 	str	r0, [fp, #-16]
     84c:	e3a03000 	mov	r3, #0
     850:	e50b3008 	str	r3, [fp, #-8]
     854:	ea00000c 	b	88c <atoi+0x50>
     858:	e51b2008 	ldr	r2, [fp, #-8]
     85c:	e1a03002 	mov	r3, r2
     860:	e1a03103 	lsl	r3, r3, #2
     864:	e0833002 	add	r3, r3, r2
     868:	e1a03083 	lsl	r3, r3, #1
     86c:	e1a01003 	mov	r1, r3
     870:	e51b3010 	ldr	r3, [fp, #-16]
     874:	e2832001 	add	r2, r3, #1
     878:	e50b2010 	str	r2, [fp, #-16]
     87c:	e5d33000 	ldrb	r3, [r3]
     880:	e0813003 	add	r3, r1, r3
     884:	e2433030 	sub	r3, r3, #48	@ 0x30
     888:	e50b3008 	str	r3, [fp, #-8]
     88c:	e51b3010 	ldr	r3, [fp, #-16]
     890:	e5d33000 	ldrb	r3, [r3]
     894:	e353002f 	cmp	r3, #47	@ 0x2f
     898:	9a000003 	bls	8ac <atoi+0x70>
     89c:	e51b3010 	ldr	r3, [fp, #-16]
     8a0:	e5d33000 	ldrb	r3, [r3]
     8a4:	e3530039 	cmp	r3, #57	@ 0x39
     8a8:	9affffea 	bls	858 <atoi+0x1c>
     8ac:	e51b3010 	ldr	r3, [fp, #-16]
     8b0:	e5d33000 	ldrb	r3, [r3]
     8b4:	e3530000 	cmp	r3, #0
     8b8:	1a000001 	bne	8c4 <atoi+0x88>
     8bc:	e51b3008 	ldr	r3, [fp, #-8]
     8c0:	ea000000 	b	8c8 <atoi+0x8c>
     8c4:	e3e03000 	mvn	r3, #0
     8c8:	e1a00003 	mov	r0, r3
     8cc:	e28bd000 	add	sp, fp, #0
     8d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8d4:	e12fff1e 	bx	lr

000008d8 <memmove>:
     8d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     8dc:	e28db000 	add	fp, sp, #0
     8e0:	e24dd01c 	sub	sp, sp, #28
     8e4:	e50b0010 	str	r0, [fp, #-16]
     8e8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     8ec:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     8f0:	e51b3010 	ldr	r3, [fp, #-16]
     8f4:	e50b3008 	str	r3, [fp, #-8]
     8f8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     8fc:	e50b300c 	str	r3, [fp, #-12]
     900:	ea000007 	b	924 <memmove+0x4c>
     904:	e51b200c 	ldr	r2, [fp, #-12]
     908:	e2823001 	add	r3, r2, #1
     90c:	e50b300c 	str	r3, [fp, #-12]
     910:	e51b3008 	ldr	r3, [fp, #-8]
     914:	e2831001 	add	r1, r3, #1
     918:	e50b1008 	str	r1, [fp, #-8]
     91c:	e5d22000 	ldrb	r2, [r2]
     920:	e5c32000 	strb	r2, [r3]
     924:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     928:	e2432001 	sub	r2, r3, #1
     92c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     930:	e3530000 	cmp	r3, #0
     934:	cafffff2 	bgt	904 <memmove+0x2c>
     938:	e51b3010 	ldr	r3, [fp, #-16]
     93c:	e1a00003 	mov	r0, r3
     940:	e28bd000 	add	sp, fp, #0
     944:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     948:	e12fff1e 	bx	lr

0000094c <initiateLock>:
     94c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     950:	e28db000 	add	fp, sp, #0
     954:	e24dd00c 	sub	sp, sp, #12
     958:	e50b0008 	str	r0, [fp, #-8]
     95c:	e51b3008 	ldr	r3, [fp, #-8]
     960:	e3a02000 	mov	r2, #0
     964:	e5832000 	str	r2, [r3]
     968:	e51b3008 	ldr	r3, [fp, #-8]
     96c:	e3a02001 	mov	r2, #1
     970:	e5832004 	str	r2, [r3, #4]
     974:	e1a00000 	nop			@ (mov r0, r0)
     978:	e28bd000 	add	sp, fp, #0
     97c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     980:	e12fff1e 	bx	lr

00000984 <acquireLock>:
     984:	e92d4800 	push	{fp, lr}
     988:	e28db004 	add	fp, sp, #4
     98c:	e24dd008 	sub	sp, sp, #8
     990:	e50b0008 	str	r0, [fp, #-8]
     994:	ea000001 	b	9a0 <acquireLock+0x1c>
     998:	e3a00001 	mov	r0, #1
     99c:	eb00013a 	bl	e8c <sleep>
     9a0:	e51b2008 	ldr	r2, [fp, #-8]
     9a4:	e3a01001 	mov	r1, #1
     9a8:	e1923f9f 	ldrex	r3, [r2]
     9ac:	e1820f91 	strex	r0, r1, [r2]
     9b0:	e3500000 	cmp	r0, #0
     9b4:	1afffffb 	bne	9a8 <acquireLock+0x24>
     9b8:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     9bc:	e3530001 	cmp	r3, #1
     9c0:	0afffff4 	beq	998 <acquireLock+0x14>
     9c4:	e1a00000 	nop			@ (mov r0, r0)
     9c8:	e1a00000 	nop			@ (mov r0, r0)
     9cc:	e24bd004 	sub	sp, fp, #4
     9d0:	e8bd8800 	pop	{fp, pc}

000009d4 <releaseLock>:
     9d4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     9d8:	e28db000 	add	fp, sp, #0
     9dc:	e24dd00c 	sub	sp, sp, #12
     9e0:	e50b0008 	str	r0, [fp, #-8]
     9e4:	e51b3008 	ldr	r3, [fp, #-8]
     9e8:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     9ec:	e3a02000 	mov	r2, #0
     9f0:	e5832000 	str	r2, [r3]
     9f4:	e1a00000 	nop			@ (mov r0, r0)
     9f8:	e28bd000 	add	sp, fp, #0
     9fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     a00:	e12fff1e 	bx	lr

00000a04 <initiateCondVar>:
     a04:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     a08:	e28db000 	add	fp, sp, #0
     a0c:	e24dd00c 	sub	sp, sp, #12
     a10:	e50b0008 	str	r0, [fp, #-8]
     a14:	e51b3008 	ldr	r3, [fp, #-8]
     a18:	e3a02000 	mov	r2, #0
     a1c:	e5832000 	str	r2, [r3]
     a20:	e51b3008 	ldr	r3, [fp, #-8]
     a24:	e3a02001 	mov	r2, #1
     a28:	e5832004 	str	r2, [r3, #4]
     a2c:	e1a00000 	nop			@ (mov r0, r0)
     a30:	e28bd000 	add	sp, fp, #0
     a34:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     a38:	e12fff1e 	bx	lr

00000a3c <condWait>:
     a3c:	e92d4800 	push	{fp, lr}
     a40:	e28db004 	add	fp, sp, #4
     a44:	e24dd008 	sub	sp, sp, #8
     a48:	e50b0008 	str	r0, [fp, #-8]
     a4c:	e50b100c 	str	r1, [fp, #-12]
     a50:	e51b000c 	ldr	r0, [fp, #-12]
     a54:	ebffffde 	bl	9d4 <releaseLock>
     a58:	e51b3008 	ldr	r3, [fp, #-8]
     a5c:	e5933000 	ldr	r3, [r3]
     a60:	e1a00003 	mov	r0, r3
     a64:	eb00017d 	bl	1060 <sleepChan>
     a68:	e51b000c 	ldr	r0, [fp, #-12]
     a6c:	ebffffc4 	bl	984 <acquireLock>
     a70:	e1a00000 	nop			@ (mov r0, r0)
     a74:	e24bd004 	sub	sp, fp, #4
     a78:	e8bd8800 	pop	{fp, pc}

00000a7c <broadcast>:
     a7c:	e92d4800 	push	{fp, lr}
     a80:	e28db004 	add	fp, sp, #4
     a84:	e24dd008 	sub	sp, sp, #8
     a88:	e50b0008 	str	r0, [fp, #-8]
     a8c:	e51b3008 	ldr	r3, [fp, #-8]
     a90:	e5933000 	ldr	r3, [r3]
     a94:	e1a00003 	mov	r0, r3
     a98:	eb000182 	bl	10a8 <sigChan>
     a9c:	e1a00000 	nop			@ (mov r0, r0)
     aa0:	e24bd004 	sub	sp, fp, #4
     aa4:	e8bd8800 	pop	{fp, pc}

00000aa8 <semInit>:
     aa8:	e92d4800 	push	{fp, lr}
     aac:	e28db004 	add	fp, sp, #4
     ab0:	e24dd008 	sub	sp, sp, #8
     ab4:	e50b0008 	str	r0, [fp, #-8]
     ab8:	e50b100c 	str	r1, [fp, #-12]
     abc:	e51b3008 	ldr	r3, [fp, #-8]
     ac0:	e51b200c 	ldr	r2, [fp, #-12]
     ac4:	e5832000 	str	r2, [r3]
     ac8:	e51b3008 	ldr	r3, [fp, #-8]
     acc:	e2833004 	add	r3, r3, #4
     ad0:	e1a00003 	mov	r0, r3
     ad4:	ebffff9c 	bl	94c <initiateLock>
     ad8:	e51b3008 	ldr	r3, [fp, #-8]
     adc:	e283300c 	add	r3, r3, #12
     ae0:	e1a00003 	mov	r0, r3
     ae4:	ebffffc6 	bl	a04 <initiateCondVar>
     ae8:	e51b3008 	ldr	r3, [fp, #-8]
     aec:	e3a02001 	mov	r2, #1
     af0:	e5832014 	str	r2, [r3, #20]
     af4:	e1a00000 	nop			@ (mov r0, r0)
     af8:	e24bd004 	sub	sp, fp, #4
     afc:	e8bd8800 	pop	{fp, pc}

00000b00 <semUp>:
     b00:	e92d4800 	push	{fp, lr}
     b04:	e28db004 	add	fp, sp, #4
     b08:	e24dd008 	sub	sp, sp, #8
     b0c:	e50b0008 	str	r0, [fp, #-8]
     b10:	e51b3008 	ldr	r3, [fp, #-8]
     b14:	e2833004 	add	r3, r3, #4
     b18:	e1a00003 	mov	r0, r3
     b1c:	ebffff98 	bl	984 <acquireLock>
     b20:	e51b3008 	ldr	r3, [fp, #-8]
     b24:	e5933000 	ldr	r3, [r3]
     b28:	e2832001 	add	r2, r3, #1
     b2c:	e51b3008 	ldr	r3, [fp, #-8]
     b30:	e5832000 	str	r2, [r3]
     b34:	e51b3008 	ldr	r3, [fp, #-8]
     b38:	e283300c 	add	r3, r3, #12
     b3c:	e1a00003 	mov	r0, r3
     b40:	ebffffcd 	bl	a7c <broadcast>
     b44:	e51b3008 	ldr	r3, [fp, #-8]
     b48:	e2833004 	add	r3, r3, #4
     b4c:	e1a00003 	mov	r0, r3
     b50:	ebffff9f 	bl	9d4 <releaseLock>
     b54:	e1a00000 	nop			@ (mov r0, r0)
     b58:	e24bd004 	sub	sp, fp, #4
     b5c:	e8bd8800 	pop	{fp, pc}

00000b60 <semDown>:
     b60:	e92d4800 	push	{fp, lr}
     b64:	e28db004 	add	fp, sp, #4
     b68:	e24dd008 	sub	sp, sp, #8
     b6c:	e50b0008 	str	r0, [fp, #-8]
     b70:	e51b3008 	ldr	r3, [fp, #-8]
     b74:	e2833004 	add	r3, r3, #4
     b78:	e1a00003 	mov	r0, r3
     b7c:	ebffff80 	bl	984 <acquireLock>
     b80:	ea000006 	b	ba0 <semDown+0x40>
     b84:	e51b3008 	ldr	r3, [fp, #-8]
     b88:	e283200c 	add	r2, r3, #12
     b8c:	e51b3008 	ldr	r3, [fp, #-8]
     b90:	e2833004 	add	r3, r3, #4
     b94:	e1a01003 	mov	r1, r3
     b98:	e1a00002 	mov	r0, r2
     b9c:	ebffffa6 	bl	a3c <condWait>
     ba0:	e51b3008 	ldr	r3, [fp, #-8]
     ba4:	e5933000 	ldr	r3, [r3]
     ba8:	e3530000 	cmp	r3, #0
     bac:	dafffff4 	ble	b84 <semDown+0x24>
     bb0:	e51b3008 	ldr	r3, [fp, #-8]
     bb4:	e5933000 	ldr	r3, [r3]
     bb8:	e2432001 	sub	r2, r3, #1
     bbc:	e51b3008 	ldr	r3, [fp, #-8]
     bc0:	e5832000 	str	r2, [r3]
     bc4:	e51b3008 	ldr	r3, [fp, #-8]
     bc8:	e2833004 	add	r3, r3, #4
     bcc:	e1a00003 	mov	r0, r3
     bd0:	ebffff7f 	bl	9d4 <releaseLock>
     bd4:	e1a00000 	nop			@ (mov r0, r0)
     bd8:	e24bd004 	sub	sp, fp, #4
     bdc:	e8bd8800 	pop	{fp, pc}

00000be0 <fork>:
     be0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be4:	e1a04003 	mov	r4, r3
     be8:	e1a03002 	mov	r3, r2
     bec:	e1a02001 	mov	r2, r1
     bf0:	e1a01000 	mov	r1, r0
     bf4:	e3a00001 	mov	r0, #1
     bf8:	ef000000 	svc	0x00000000
     bfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c00:	e12fff1e 	bx	lr

00000c04 <exit>:
     c04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c08:	e1a04003 	mov	r4, r3
     c0c:	e1a03002 	mov	r3, r2
     c10:	e1a02001 	mov	r2, r1
     c14:	e1a01000 	mov	r1, r0
     c18:	e3a00002 	mov	r0, #2
     c1c:	ef000000 	svc	0x00000000
     c20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c24:	e12fff1e 	bx	lr

00000c28 <wait>:
     c28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c2c:	e1a04003 	mov	r4, r3
     c30:	e1a03002 	mov	r3, r2
     c34:	e1a02001 	mov	r2, r1
     c38:	e1a01000 	mov	r1, r0
     c3c:	e3a00003 	mov	r0, #3
     c40:	ef000000 	svc	0x00000000
     c44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c48:	e12fff1e 	bx	lr

00000c4c <pipe>:
     c4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c50:	e1a04003 	mov	r4, r3
     c54:	e1a03002 	mov	r3, r2
     c58:	e1a02001 	mov	r2, r1
     c5c:	e1a01000 	mov	r1, r0
     c60:	e3a00004 	mov	r0, #4
     c64:	ef000000 	svc	0x00000000
     c68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c6c:	e12fff1e 	bx	lr

00000c70 <read>:
     c70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c74:	e1a04003 	mov	r4, r3
     c78:	e1a03002 	mov	r3, r2
     c7c:	e1a02001 	mov	r2, r1
     c80:	e1a01000 	mov	r1, r0
     c84:	e3a00005 	mov	r0, #5
     c88:	ef000000 	svc	0x00000000
     c8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c90:	e12fff1e 	bx	lr

00000c94 <write>:
     c94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c98:	e1a04003 	mov	r4, r3
     c9c:	e1a03002 	mov	r3, r2
     ca0:	e1a02001 	mov	r2, r1
     ca4:	e1a01000 	mov	r1, r0
     ca8:	e3a00010 	mov	r0, #16
     cac:	ef000000 	svc	0x00000000
     cb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb4:	e12fff1e 	bx	lr

00000cb8 <close>:
     cb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cbc:	e1a04003 	mov	r4, r3
     cc0:	e1a03002 	mov	r3, r2
     cc4:	e1a02001 	mov	r2, r1
     cc8:	e1a01000 	mov	r1, r0
     ccc:	e3a00015 	mov	r0, #21
     cd0:	ef000000 	svc	0x00000000
     cd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd8:	e12fff1e 	bx	lr

00000cdc <kill>:
     cdc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce0:	e1a04003 	mov	r4, r3
     ce4:	e1a03002 	mov	r3, r2
     ce8:	e1a02001 	mov	r2, r1
     cec:	e1a01000 	mov	r1, r0
     cf0:	e3a00006 	mov	r0, #6
     cf4:	ef000000 	svc	0x00000000
     cf8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cfc:	e12fff1e 	bx	lr

00000d00 <exec>:
     d00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d04:	e1a04003 	mov	r4, r3
     d08:	e1a03002 	mov	r3, r2
     d0c:	e1a02001 	mov	r2, r1
     d10:	e1a01000 	mov	r1, r0
     d14:	e3a00007 	mov	r0, #7
     d18:	ef000000 	svc	0x00000000
     d1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d20:	e12fff1e 	bx	lr

00000d24 <open>:
     d24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d28:	e1a04003 	mov	r4, r3
     d2c:	e1a03002 	mov	r3, r2
     d30:	e1a02001 	mov	r2, r1
     d34:	e1a01000 	mov	r1, r0
     d38:	e3a0000f 	mov	r0, #15
     d3c:	ef000000 	svc	0x00000000
     d40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d44:	e12fff1e 	bx	lr

00000d48 <mknod>:
     d48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d4c:	e1a04003 	mov	r4, r3
     d50:	e1a03002 	mov	r3, r2
     d54:	e1a02001 	mov	r2, r1
     d58:	e1a01000 	mov	r1, r0
     d5c:	e3a00011 	mov	r0, #17
     d60:	ef000000 	svc	0x00000000
     d64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d68:	e12fff1e 	bx	lr

00000d6c <unlink>:
     d6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d70:	e1a04003 	mov	r4, r3
     d74:	e1a03002 	mov	r3, r2
     d78:	e1a02001 	mov	r2, r1
     d7c:	e1a01000 	mov	r1, r0
     d80:	e3a00012 	mov	r0, #18
     d84:	ef000000 	svc	0x00000000
     d88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d8c:	e12fff1e 	bx	lr

00000d90 <fstat>:
     d90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d94:	e1a04003 	mov	r4, r3
     d98:	e1a03002 	mov	r3, r2
     d9c:	e1a02001 	mov	r2, r1
     da0:	e1a01000 	mov	r1, r0
     da4:	e3a00008 	mov	r0, #8
     da8:	ef000000 	svc	0x00000000
     dac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     db0:	e12fff1e 	bx	lr

00000db4 <link>:
     db4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     db8:	e1a04003 	mov	r4, r3
     dbc:	e1a03002 	mov	r3, r2
     dc0:	e1a02001 	mov	r2, r1
     dc4:	e1a01000 	mov	r1, r0
     dc8:	e3a00013 	mov	r0, #19
     dcc:	ef000000 	svc	0x00000000
     dd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd4:	e12fff1e 	bx	lr

00000dd8 <mkdir>:
     dd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ddc:	e1a04003 	mov	r4, r3
     de0:	e1a03002 	mov	r3, r2
     de4:	e1a02001 	mov	r2, r1
     de8:	e1a01000 	mov	r1, r0
     dec:	e3a00014 	mov	r0, #20
     df0:	ef000000 	svc	0x00000000
     df4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     df8:	e12fff1e 	bx	lr

00000dfc <chdir>:
     dfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e00:	e1a04003 	mov	r4, r3
     e04:	e1a03002 	mov	r3, r2
     e08:	e1a02001 	mov	r2, r1
     e0c:	e1a01000 	mov	r1, r0
     e10:	e3a00009 	mov	r0, #9
     e14:	ef000000 	svc	0x00000000
     e18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e1c:	e12fff1e 	bx	lr

00000e20 <dup>:
     e20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e24:	e1a04003 	mov	r4, r3
     e28:	e1a03002 	mov	r3, r2
     e2c:	e1a02001 	mov	r2, r1
     e30:	e1a01000 	mov	r1, r0
     e34:	e3a0000a 	mov	r0, #10
     e38:	ef000000 	svc	0x00000000
     e3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e40:	e12fff1e 	bx	lr

00000e44 <getpid>:
     e44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e48:	e1a04003 	mov	r4, r3
     e4c:	e1a03002 	mov	r3, r2
     e50:	e1a02001 	mov	r2, r1
     e54:	e1a01000 	mov	r1, r0
     e58:	e3a0000b 	mov	r0, #11
     e5c:	ef000000 	svc	0x00000000
     e60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e64:	e12fff1e 	bx	lr

00000e68 <sbrk>:
     e68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e6c:	e1a04003 	mov	r4, r3
     e70:	e1a03002 	mov	r3, r2
     e74:	e1a02001 	mov	r2, r1
     e78:	e1a01000 	mov	r1, r0
     e7c:	e3a0000c 	mov	r0, #12
     e80:	ef000000 	svc	0x00000000
     e84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e88:	e12fff1e 	bx	lr

00000e8c <sleep>:
     e8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e90:	e1a04003 	mov	r4, r3
     e94:	e1a03002 	mov	r3, r2
     e98:	e1a02001 	mov	r2, r1
     e9c:	e1a01000 	mov	r1, r0
     ea0:	e3a0000d 	mov	r0, #13
     ea4:	ef000000 	svc	0x00000000
     ea8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eac:	e12fff1e 	bx	lr

00000eb0 <uptime>:
     eb0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eb4:	e1a04003 	mov	r4, r3
     eb8:	e1a03002 	mov	r3, r2
     ebc:	e1a02001 	mov	r2, r1
     ec0:	e1a01000 	mov	r1, r0
     ec4:	e3a0000e 	mov	r0, #14
     ec8:	ef000000 	svc	0x00000000
     ecc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ed0:	e12fff1e 	bx	lr

00000ed4 <getprocs>:
     ed4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ed8:	e1a04003 	mov	r4, r3
     edc:	e1a03002 	mov	r3, r2
     ee0:	e1a02001 	mov	r2, r1
     ee4:	e1a01000 	mov	r1, r0
     ee8:	e3a00016 	mov	r0, #22
     eec:	ef000000 	svc	0x00000000
     ef0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ef4:	e12fff1e 	bx	lr

00000ef8 <settickets>:
     ef8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     efc:	e1a04003 	mov	r4, r3
     f00:	e1a03002 	mov	r3, r2
     f04:	e1a02001 	mov	r2, r1
     f08:	e1a01000 	mov	r1, r0
     f0c:	e3a00017 	mov	r0, #23
     f10:	ef000000 	svc	0x00000000
     f14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f18:	e12fff1e 	bx	lr

00000f1c <srand>:
     f1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f20:	e1a04003 	mov	r4, r3
     f24:	e1a03002 	mov	r3, r2
     f28:	e1a02001 	mov	r2, r1
     f2c:	e1a01000 	mov	r1, r0
     f30:	e3a00018 	mov	r0, #24
     f34:	ef000000 	svc	0x00000000
     f38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f3c:	e12fff1e 	bx	lr

00000f40 <getpinfo>:
     f40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f44:	e1a04003 	mov	r4, r3
     f48:	e1a03002 	mov	r3, r2
     f4c:	e1a02001 	mov	r2, r1
     f50:	e1a01000 	mov	r1, r0
     f54:	e3a00019 	mov	r0, #25
     f58:	ef000000 	svc	0x00000000
     f5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f60:	e12fff1e 	bx	lr

00000f64 <dumppagetable>:
     f64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f68:	e1a04003 	mov	r4, r3
     f6c:	e1a03002 	mov	r3, r2
     f70:	e1a02001 	mov	r2, r1
     f74:	e1a01000 	mov	r1, r0
     f78:	e3a0001a 	mov	r0, #26
     f7c:	ef000000 	svc	0x00000000
     f80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f84:	e12fff1e 	bx	lr

00000f88 <thread_create>:
     f88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f8c:	e1a04003 	mov	r4, r3
     f90:	e1a03002 	mov	r3, r2
     f94:	e1a02001 	mov	r2, r1
     f98:	e1a01000 	mov	r1, r0
     f9c:	e3a0001b 	mov	r0, #27
     fa0:	ef000000 	svc	0x00000000
     fa4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fa8:	e12fff1e 	bx	lr

00000fac <thread_exit>:
     fac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fb0:	e1a04003 	mov	r4, r3
     fb4:	e1a03002 	mov	r3, r2
     fb8:	e1a02001 	mov	r2, r1
     fbc:	e1a01000 	mov	r1, r0
     fc0:	e3a0001c 	mov	r0, #28
     fc4:	ef000000 	svc	0x00000000
     fc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fcc:	e12fff1e 	bx	lr

00000fd0 <thread_join>:
     fd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fd4:	e1a04003 	mov	r4, r3
     fd8:	e1a03002 	mov	r3, r2
     fdc:	e1a02001 	mov	r2, r1
     fe0:	e1a01000 	mov	r1, r0
     fe4:	e3a0001d 	mov	r0, #29
     fe8:	ef000000 	svc	0x00000000
     fec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ff0:	e12fff1e 	bx	lr

00000ff4 <waitpid>:
     ff4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ff8:	e1a04003 	mov	r4, r3
     ffc:	e1a03002 	mov	r3, r2
    1000:	e1a02001 	mov	r2, r1
    1004:	e1a01000 	mov	r1, r0
    1008:	e3a0001e 	mov	r0, #30
    100c:	ef000000 	svc	0x00000000
    1010:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1014:	e12fff1e 	bx	lr

00001018 <barrier_init>:
    1018:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    101c:	e1a04003 	mov	r4, r3
    1020:	e1a03002 	mov	r3, r2
    1024:	e1a02001 	mov	r2, r1
    1028:	e1a01000 	mov	r1, r0
    102c:	e3a0001f 	mov	r0, #31
    1030:	ef000000 	svc	0x00000000
    1034:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1038:	e12fff1e 	bx	lr

0000103c <barrier_check>:
    103c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1040:	e1a04003 	mov	r4, r3
    1044:	e1a03002 	mov	r3, r2
    1048:	e1a02001 	mov	r2, r1
    104c:	e1a01000 	mov	r1, r0
    1050:	e3a00020 	mov	r0, #32
    1054:	ef000000 	svc	0x00000000
    1058:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    105c:	e12fff1e 	bx	lr

00001060 <sleepChan>:
    1060:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1064:	e1a04003 	mov	r4, r3
    1068:	e1a03002 	mov	r3, r2
    106c:	e1a02001 	mov	r2, r1
    1070:	e1a01000 	mov	r1, r0
    1074:	e3a00024 	mov	r0, #36	@ 0x24
    1078:	ef000000 	svc	0x00000000
    107c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1080:	e12fff1e 	bx	lr

00001084 <getChannel>:
    1084:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1088:	e1a04003 	mov	r4, r3
    108c:	e1a03002 	mov	r3, r2
    1090:	e1a02001 	mov	r2, r1
    1094:	e1a01000 	mov	r1, r0
    1098:	e3a00025 	mov	r0, #37	@ 0x25
    109c:	ef000000 	svc	0x00000000
    10a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10a4:	e12fff1e 	bx	lr

000010a8 <sigChan>:
    10a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10ac:	e1a04003 	mov	r4, r3
    10b0:	e1a03002 	mov	r3, r2
    10b4:	e1a02001 	mov	r2, r1
    10b8:	e1a01000 	mov	r1, r0
    10bc:	e3a00026 	mov	r0, #38	@ 0x26
    10c0:	ef000000 	svc	0x00000000
    10c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10c8:	e12fff1e 	bx	lr

000010cc <sigOneChan>:
    10cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10d0:	e1a04003 	mov	r4, r3
    10d4:	e1a03002 	mov	r3, r2
    10d8:	e1a02001 	mov	r2, r1
    10dc:	e1a01000 	mov	r1, r0
    10e0:	e3a00027 	mov	r0, #39	@ 0x27
    10e4:	ef000000 	svc	0x00000000
    10e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10ec:	e12fff1e 	bx	lr

000010f0 <putc>:
    10f0:	e92d4800 	push	{fp, lr}
    10f4:	e28db004 	add	fp, sp, #4
    10f8:	e24dd008 	sub	sp, sp, #8
    10fc:	e50b0008 	str	r0, [fp, #-8]
    1100:	e1a03001 	mov	r3, r1
    1104:	e54b3009 	strb	r3, [fp, #-9]
    1108:	e24b3009 	sub	r3, fp, #9
    110c:	e3a02001 	mov	r2, #1
    1110:	e1a01003 	mov	r1, r3
    1114:	e51b0008 	ldr	r0, [fp, #-8]
    1118:	ebfffedd 	bl	c94 <write>
    111c:	e1a00000 	nop			@ (mov r0, r0)
    1120:	e24bd004 	sub	sp, fp, #4
    1124:	e8bd8800 	pop	{fp, pc}

00001128 <printint>:
    1128:	e92d4800 	push	{fp, lr}
    112c:	e28db004 	add	fp, sp, #4
    1130:	e24dd030 	sub	sp, sp, #48	@ 0x30
    1134:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    1138:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    113c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    1140:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    1144:	e3a03000 	mov	r3, #0
    1148:	e50b300c 	str	r3, [fp, #-12]
    114c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    1150:	e3530000 	cmp	r3, #0
    1154:	0a000008 	beq	117c <printint+0x54>
    1158:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    115c:	e3530000 	cmp	r3, #0
    1160:	aa000005 	bge	117c <printint+0x54>
    1164:	e3a03001 	mov	r3, #1
    1168:	e50b300c 	str	r3, [fp, #-12]
    116c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1170:	e2633000 	rsb	r3, r3, #0
    1174:	e50b3010 	str	r3, [fp, #-16]
    1178:	ea000001 	b	1184 <printint+0x5c>
    117c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1180:	e50b3010 	str	r3, [fp, #-16]
    1184:	e3a03000 	mov	r3, #0
    1188:	e50b3008 	str	r3, [fp, #-8]
    118c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    1190:	e51b3010 	ldr	r3, [fp, #-16]
    1194:	e1a01002 	mov	r1, r2
    1198:	e1a00003 	mov	r0, r3
    119c:	eb0001d5 	bl	18f8 <__aeabi_uidivmod>
    11a0:	e1a03001 	mov	r3, r1
    11a4:	e1a01003 	mov	r1, r3
    11a8:	e51b3008 	ldr	r3, [fp, #-8]
    11ac:	e2832001 	add	r2, r3, #1
    11b0:	e50b2008 	str	r2, [fp, #-8]
    11b4:	e59f20a0 	ldr	r2, [pc, #160]	@ 125c <printint+0x134>
    11b8:	e7d22001 	ldrb	r2, [r2, r1]
    11bc:	e2433004 	sub	r3, r3, #4
    11c0:	e083300b 	add	r3, r3, fp
    11c4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    11c8:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    11cc:	e1a01003 	mov	r1, r3
    11d0:	e51b0010 	ldr	r0, [fp, #-16]
    11d4:	eb00018a 	bl	1804 <__udivsi3>
    11d8:	e1a03000 	mov	r3, r0
    11dc:	e50b3010 	str	r3, [fp, #-16]
    11e0:	e51b3010 	ldr	r3, [fp, #-16]
    11e4:	e3530000 	cmp	r3, #0
    11e8:	1affffe7 	bne	118c <printint+0x64>
    11ec:	e51b300c 	ldr	r3, [fp, #-12]
    11f0:	e3530000 	cmp	r3, #0
    11f4:	0a00000e 	beq	1234 <printint+0x10c>
    11f8:	e51b3008 	ldr	r3, [fp, #-8]
    11fc:	e2832001 	add	r2, r3, #1
    1200:	e50b2008 	str	r2, [fp, #-8]
    1204:	e2433004 	sub	r3, r3, #4
    1208:	e083300b 	add	r3, r3, fp
    120c:	e3a0202d 	mov	r2, #45	@ 0x2d
    1210:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1214:	ea000006 	b	1234 <printint+0x10c>
    1218:	e24b2020 	sub	r2, fp, #32
    121c:	e51b3008 	ldr	r3, [fp, #-8]
    1220:	e0823003 	add	r3, r2, r3
    1224:	e5d33000 	ldrb	r3, [r3]
    1228:	e1a01003 	mov	r1, r3
    122c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1230:	ebffffae 	bl	10f0 <putc>
    1234:	e51b3008 	ldr	r3, [fp, #-8]
    1238:	e2433001 	sub	r3, r3, #1
    123c:	e50b3008 	str	r3, [fp, #-8]
    1240:	e51b3008 	ldr	r3, [fp, #-8]
    1244:	e3530000 	cmp	r3, #0
    1248:	aafffff2 	bge	1218 <printint+0xf0>
    124c:	e1a00000 	nop			@ (mov r0, r0)
    1250:	e1a00000 	nop			@ (mov r0, r0)
    1254:	e24bd004 	sub	sp, fp, #4
    1258:	e8bd8800 	pop	{fp, pc}
    125c:	0000195c 	.word	0x0000195c

00001260 <printf>:
    1260:	e92d000e 	push	{r1, r2, r3}
    1264:	e92d4800 	push	{fp, lr}
    1268:	e28db004 	add	fp, sp, #4
    126c:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1270:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1274:	e3a03000 	mov	r3, #0
    1278:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    127c:	e28b3008 	add	r3, fp, #8
    1280:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1284:	e3a03000 	mov	r3, #0
    1288:	e50b3010 	str	r3, [fp, #-16]
    128c:	ea000074 	b	1464 <printf+0x204>
    1290:	e59b2004 	ldr	r2, [fp, #4]
    1294:	e51b3010 	ldr	r3, [fp, #-16]
    1298:	e0823003 	add	r3, r2, r3
    129c:	e5d33000 	ldrb	r3, [r3]
    12a0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    12a4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    12a8:	e3530000 	cmp	r3, #0
    12ac:	1a00000b 	bne	12e0 <printf+0x80>
    12b0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12b4:	e3530025 	cmp	r3, #37	@ 0x25
    12b8:	1a000002 	bne	12c8 <printf+0x68>
    12bc:	e3a03025 	mov	r3, #37	@ 0x25
    12c0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    12c4:	ea000063 	b	1458 <printf+0x1f8>
    12c8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12cc:	e6ef3073 	uxtb	r3, r3
    12d0:	e1a01003 	mov	r1, r3
    12d4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12d8:	ebffff84 	bl	10f0 <putc>
    12dc:	ea00005d 	b	1458 <printf+0x1f8>
    12e0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    12e4:	e3530025 	cmp	r3, #37	@ 0x25
    12e8:	1a00005a 	bne	1458 <printf+0x1f8>
    12ec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12f0:	e3530064 	cmp	r3, #100	@ 0x64
    12f4:	1a00000a 	bne	1324 <printf+0xc4>
    12f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12fc:	e5933000 	ldr	r3, [r3]
    1300:	e1a01003 	mov	r1, r3
    1304:	e3a03001 	mov	r3, #1
    1308:	e3a0200a 	mov	r2, #10
    130c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1310:	ebffff84 	bl	1128 <printint>
    1314:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1318:	e2833004 	add	r3, r3, #4
    131c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1320:	ea00004a 	b	1450 <printf+0x1f0>
    1324:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1328:	e3530078 	cmp	r3, #120	@ 0x78
    132c:	0a000002 	beq	133c <printf+0xdc>
    1330:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1334:	e3530070 	cmp	r3, #112	@ 0x70
    1338:	1a00000a 	bne	1368 <printf+0x108>
    133c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1340:	e5933000 	ldr	r3, [r3]
    1344:	e1a01003 	mov	r1, r3
    1348:	e3a03000 	mov	r3, #0
    134c:	e3a02010 	mov	r2, #16
    1350:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1354:	ebffff73 	bl	1128 <printint>
    1358:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    135c:	e2833004 	add	r3, r3, #4
    1360:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1364:	ea000039 	b	1450 <printf+0x1f0>
    1368:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    136c:	e3530073 	cmp	r3, #115	@ 0x73
    1370:	1a000018 	bne	13d8 <printf+0x178>
    1374:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1378:	e5933000 	ldr	r3, [r3]
    137c:	e50b300c 	str	r3, [fp, #-12]
    1380:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1384:	e2833004 	add	r3, r3, #4
    1388:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    138c:	e51b300c 	ldr	r3, [fp, #-12]
    1390:	e3530000 	cmp	r3, #0
    1394:	1a00000a 	bne	13c4 <printf+0x164>
    1398:	e59f30f4 	ldr	r3, [pc, #244]	@ 1494 <printf+0x234>
    139c:	e50b300c 	str	r3, [fp, #-12]
    13a0:	ea000007 	b	13c4 <printf+0x164>
    13a4:	e51b300c 	ldr	r3, [fp, #-12]
    13a8:	e5d33000 	ldrb	r3, [r3]
    13ac:	e1a01003 	mov	r1, r3
    13b0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13b4:	ebffff4d 	bl	10f0 <putc>
    13b8:	e51b300c 	ldr	r3, [fp, #-12]
    13bc:	e2833001 	add	r3, r3, #1
    13c0:	e50b300c 	str	r3, [fp, #-12]
    13c4:	e51b300c 	ldr	r3, [fp, #-12]
    13c8:	e5d33000 	ldrb	r3, [r3]
    13cc:	e3530000 	cmp	r3, #0
    13d0:	1afffff3 	bne	13a4 <printf+0x144>
    13d4:	ea00001d 	b	1450 <printf+0x1f0>
    13d8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13dc:	e3530063 	cmp	r3, #99	@ 0x63
    13e0:	1a000009 	bne	140c <printf+0x1ac>
    13e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13e8:	e5933000 	ldr	r3, [r3]
    13ec:	e6ef3073 	uxtb	r3, r3
    13f0:	e1a01003 	mov	r1, r3
    13f4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13f8:	ebffff3c 	bl	10f0 <putc>
    13fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1400:	e2833004 	add	r3, r3, #4
    1404:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1408:	ea000010 	b	1450 <printf+0x1f0>
    140c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1410:	e3530025 	cmp	r3, #37	@ 0x25
    1414:	1a000005 	bne	1430 <printf+0x1d0>
    1418:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    141c:	e6ef3073 	uxtb	r3, r3
    1420:	e1a01003 	mov	r1, r3
    1424:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1428:	ebffff30 	bl	10f0 <putc>
    142c:	ea000007 	b	1450 <printf+0x1f0>
    1430:	e3a01025 	mov	r1, #37	@ 0x25
    1434:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1438:	ebffff2c 	bl	10f0 <putc>
    143c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1440:	e6ef3073 	uxtb	r3, r3
    1444:	e1a01003 	mov	r1, r3
    1448:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    144c:	ebffff27 	bl	10f0 <putc>
    1450:	e3a03000 	mov	r3, #0
    1454:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1458:	e51b3010 	ldr	r3, [fp, #-16]
    145c:	e2833001 	add	r3, r3, #1
    1460:	e50b3010 	str	r3, [fp, #-16]
    1464:	e59b2004 	ldr	r2, [fp, #4]
    1468:	e51b3010 	ldr	r3, [fp, #-16]
    146c:	e0823003 	add	r3, r2, r3
    1470:	e5d33000 	ldrb	r3, [r3]
    1474:	e3530000 	cmp	r3, #0
    1478:	1affff84 	bne	1290 <printf+0x30>
    147c:	e1a00000 	nop			@ (mov r0, r0)
    1480:	e1a00000 	nop			@ (mov r0, r0)
    1484:	e24bd004 	sub	sp, fp, #4
    1488:	e8bd4800 	pop	{fp, lr}
    148c:	e28dd00c 	add	sp, sp, #12
    1490:	e12fff1e 	bx	lr
    1494:	00001954 	.word	0x00001954

00001498 <free>:
    1498:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    149c:	e28db000 	add	fp, sp, #0
    14a0:	e24dd014 	sub	sp, sp, #20
    14a4:	e50b0010 	str	r0, [fp, #-16]
    14a8:	e51b3010 	ldr	r3, [fp, #-16]
    14ac:	e2433008 	sub	r3, r3, #8
    14b0:	e50b300c 	str	r3, [fp, #-12]
    14b4:	e59f3154 	ldr	r3, [pc, #340]	@ 1610 <free+0x178>
    14b8:	e5933000 	ldr	r3, [r3]
    14bc:	e50b3008 	str	r3, [fp, #-8]
    14c0:	ea000010 	b	1508 <free+0x70>
    14c4:	e51b3008 	ldr	r3, [fp, #-8]
    14c8:	e5933000 	ldr	r3, [r3]
    14cc:	e51b2008 	ldr	r2, [fp, #-8]
    14d0:	e1520003 	cmp	r2, r3
    14d4:	3a000008 	bcc	14fc <free+0x64>
    14d8:	e51b200c 	ldr	r2, [fp, #-12]
    14dc:	e51b3008 	ldr	r3, [fp, #-8]
    14e0:	e1520003 	cmp	r2, r3
    14e4:	8a000010 	bhi	152c <free+0x94>
    14e8:	e51b3008 	ldr	r3, [fp, #-8]
    14ec:	e5933000 	ldr	r3, [r3]
    14f0:	e51b200c 	ldr	r2, [fp, #-12]
    14f4:	e1520003 	cmp	r2, r3
    14f8:	3a00000b 	bcc	152c <free+0x94>
    14fc:	e51b3008 	ldr	r3, [fp, #-8]
    1500:	e5933000 	ldr	r3, [r3]
    1504:	e50b3008 	str	r3, [fp, #-8]
    1508:	e51b200c 	ldr	r2, [fp, #-12]
    150c:	e51b3008 	ldr	r3, [fp, #-8]
    1510:	e1520003 	cmp	r2, r3
    1514:	9affffea 	bls	14c4 <free+0x2c>
    1518:	e51b3008 	ldr	r3, [fp, #-8]
    151c:	e5933000 	ldr	r3, [r3]
    1520:	e51b200c 	ldr	r2, [fp, #-12]
    1524:	e1520003 	cmp	r2, r3
    1528:	2affffe5 	bcs	14c4 <free+0x2c>
    152c:	e51b300c 	ldr	r3, [fp, #-12]
    1530:	e5933004 	ldr	r3, [r3, #4]
    1534:	e1a03183 	lsl	r3, r3, #3
    1538:	e51b200c 	ldr	r2, [fp, #-12]
    153c:	e0822003 	add	r2, r2, r3
    1540:	e51b3008 	ldr	r3, [fp, #-8]
    1544:	e5933000 	ldr	r3, [r3]
    1548:	e1520003 	cmp	r2, r3
    154c:	1a00000d 	bne	1588 <free+0xf0>
    1550:	e51b300c 	ldr	r3, [fp, #-12]
    1554:	e5932004 	ldr	r2, [r3, #4]
    1558:	e51b3008 	ldr	r3, [fp, #-8]
    155c:	e5933000 	ldr	r3, [r3]
    1560:	e5933004 	ldr	r3, [r3, #4]
    1564:	e0822003 	add	r2, r2, r3
    1568:	e51b300c 	ldr	r3, [fp, #-12]
    156c:	e5832004 	str	r2, [r3, #4]
    1570:	e51b3008 	ldr	r3, [fp, #-8]
    1574:	e5933000 	ldr	r3, [r3]
    1578:	e5932000 	ldr	r2, [r3]
    157c:	e51b300c 	ldr	r3, [fp, #-12]
    1580:	e5832000 	str	r2, [r3]
    1584:	ea000003 	b	1598 <free+0x100>
    1588:	e51b3008 	ldr	r3, [fp, #-8]
    158c:	e5932000 	ldr	r2, [r3]
    1590:	e51b300c 	ldr	r3, [fp, #-12]
    1594:	e5832000 	str	r2, [r3]
    1598:	e51b3008 	ldr	r3, [fp, #-8]
    159c:	e5933004 	ldr	r3, [r3, #4]
    15a0:	e1a03183 	lsl	r3, r3, #3
    15a4:	e51b2008 	ldr	r2, [fp, #-8]
    15a8:	e0823003 	add	r3, r2, r3
    15ac:	e51b200c 	ldr	r2, [fp, #-12]
    15b0:	e1520003 	cmp	r2, r3
    15b4:	1a00000b 	bne	15e8 <free+0x150>
    15b8:	e51b3008 	ldr	r3, [fp, #-8]
    15bc:	e5932004 	ldr	r2, [r3, #4]
    15c0:	e51b300c 	ldr	r3, [fp, #-12]
    15c4:	e5933004 	ldr	r3, [r3, #4]
    15c8:	e0822003 	add	r2, r2, r3
    15cc:	e51b3008 	ldr	r3, [fp, #-8]
    15d0:	e5832004 	str	r2, [r3, #4]
    15d4:	e51b300c 	ldr	r3, [fp, #-12]
    15d8:	e5932000 	ldr	r2, [r3]
    15dc:	e51b3008 	ldr	r3, [fp, #-8]
    15e0:	e5832000 	str	r2, [r3]
    15e4:	ea000002 	b	15f4 <free+0x15c>
    15e8:	e51b3008 	ldr	r3, [fp, #-8]
    15ec:	e51b200c 	ldr	r2, [fp, #-12]
    15f0:	e5832000 	str	r2, [r3]
    15f4:	e59f2014 	ldr	r2, [pc, #20]	@ 1610 <free+0x178>
    15f8:	e51b3008 	ldr	r3, [fp, #-8]
    15fc:	e5823000 	str	r3, [r2]
    1600:	e1a00000 	nop			@ (mov r0, r0)
    1604:	e28bd000 	add	sp, fp, #0
    1608:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    160c:	e12fff1e 	bx	lr
    1610:	00001d78 	.word	0x00001d78

00001614 <morecore>:
    1614:	e92d4800 	push	{fp, lr}
    1618:	e28db004 	add	fp, sp, #4
    161c:	e24dd010 	sub	sp, sp, #16
    1620:	e50b0010 	str	r0, [fp, #-16]
    1624:	e51b3010 	ldr	r3, [fp, #-16]
    1628:	e3530a01 	cmp	r3, #4096	@ 0x1000
    162c:	2a000001 	bcs	1638 <morecore+0x24>
    1630:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1634:	e50b3010 	str	r3, [fp, #-16]
    1638:	e51b3010 	ldr	r3, [fp, #-16]
    163c:	e1a03183 	lsl	r3, r3, #3
    1640:	e1a00003 	mov	r0, r3
    1644:	ebfffe07 	bl	e68 <sbrk>
    1648:	e50b0008 	str	r0, [fp, #-8]
    164c:	e51b3008 	ldr	r3, [fp, #-8]
    1650:	e3730001 	cmn	r3, #1
    1654:	1a000001 	bne	1660 <morecore+0x4c>
    1658:	e3a03000 	mov	r3, #0
    165c:	ea00000a 	b	168c <morecore+0x78>
    1660:	e51b3008 	ldr	r3, [fp, #-8]
    1664:	e50b300c 	str	r3, [fp, #-12]
    1668:	e51b300c 	ldr	r3, [fp, #-12]
    166c:	e51b2010 	ldr	r2, [fp, #-16]
    1670:	e5832004 	str	r2, [r3, #4]
    1674:	e51b300c 	ldr	r3, [fp, #-12]
    1678:	e2833008 	add	r3, r3, #8
    167c:	e1a00003 	mov	r0, r3
    1680:	ebffff84 	bl	1498 <free>
    1684:	e59f300c 	ldr	r3, [pc, #12]	@ 1698 <morecore+0x84>
    1688:	e5933000 	ldr	r3, [r3]
    168c:	e1a00003 	mov	r0, r3
    1690:	e24bd004 	sub	sp, fp, #4
    1694:	e8bd8800 	pop	{fp, pc}
    1698:	00001d78 	.word	0x00001d78

0000169c <malloc>:
    169c:	e92d4800 	push	{fp, lr}
    16a0:	e28db004 	add	fp, sp, #4
    16a4:	e24dd018 	sub	sp, sp, #24
    16a8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    16ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    16b0:	e2833007 	add	r3, r3, #7
    16b4:	e1a031a3 	lsr	r3, r3, #3
    16b8:	e2833001 	add	r3, r3, #1
    16bc:	e50b3010 	str	r3, [fp, #-16]
    16c0:	e59f3134 	ldr	r3, [pc, #308]	@ 17fc <malloc+0x160>
    16c4:	e5933000 	ldr	r3, [r3]
    16c8:	e50b300c 	str	r3, [fp, #-12]
    16cc:	e51b300c 	ldr	r3, [fp, #-12]
    16d0:	e3530000 	cmp	r3, #0
    16d4:	1a00000b 	bne	1708 <malloc+0x6c>
    16d8:	e59f3120 	ldr	r3, [pc, #288]	@ 1800 <malloc+0x164>
    16dc:	e50b300c 	str	r3, [fp, #-12]
    16e0:	e59f2114 	ldr	r2, [pc, #276]	@ 17fc <malloc+0x160>
    16e4:	e51b300c 	ldr	r3, [fp, #-12]
    16e8:	e5823000 	str	r3, [r2]
    16ec:	e59f3108 	ldr	r3, [pc, #264]	@ 17fc <malloc+0x160>
    16f0:	e5933000 	ldr	r3, [r3]
    16f4:	e59f2104 	ldr	r2, [pc, #260]	@ 1800 <malloc+0x164>
    16f8:	e5823000 	str	r3, [r2]
    16fc:	e59f30fc 	ldr	r3, [pc, #252]	@ 1800 <malloc+0x164>
    1700:	e3a02000 	mov	r2, #0
    1704:	e5832004 	str	r2, [r3, #4]
    1708:	e51b300c 	ldr	r3, [fp, #-12]
    170c:	e5933000 	ldr	r3, [r3]
    1710:	e50b3008 	str	r3, [fp, #-8]
    1714:	e51b3008 	ldr	r3, [fp, #-8]
    1718:	e5933004 	ldr	r3, [r3, #4]
    171c:	e51b2010 	ldr	r2, [fp, #-16]
    1720:	e1520003 	cmp	r2, r3
    1724:	8a00001e 	bhi	17a4 <malloc+0x108>
    1728:	e51b3008 	ldr	r3, [fp, #-8]
    172c:	e5933004 	ldr	r3, [r3, #4]
    1730:	e51b2010 	ldr	r2, [fp, #-16]
    1734:	e1520003 	cmp	r2, r3
    1738:	1a000004 	bne	1750 <malloc+0xb4>
    173c:	e51b3008 	ldr	r3, [fp, #-8]
    1740:	e5932000 	ldr	r2, [r3]
    1744:	e51b300c 	ldr	r3, [fp, #-12]
    1748:	e5832000 	str	r2, [r3]
    174c:	ea00000e 	b	178c <malloc+0xf0>
    1750:	e51b3008 	ldr	r3, [fp, #-8]
    1754:	e5932004 	ldr	r2, [r3, #4]
    1758:	e51b3010 	ldr	r3, [fp, #-16]
    175c:	e0422003 	sub	r2, r2, r3
    1760:	e51b3008 	ldr	r3, [fp, #-8]
    1764:	e5832004 	str	r2, [r3, #4]
    1768:	e51b3008 	ldr	r3, [fp, #-8]
    176c:	e5933004 	ldr	r3, [r3, #4]
    1770:	e1a03183 	lsl	r3, r3, #3
    1774:	e51b2008 	ldr	r2, [fp, #-8]
    1778:	e0823003 	add	r3, r2, r3
    177c:	e50b3008 	str	r3, [fp, #-8]
    1780:	e51b3008 	ldr	r3, [fp, #-8]
    1784:	e51b2010 	ldr	r2, [fp, #-16]
    1788:	e5832004 	str	r2, [r3, #4]
    178c:	e59f2068 	ldr	r2, [pc, #104]	@ 17fc <malloc+0x160>
    1790:	e51b300c 	ldr	r3, [fp, #-12]
    1794:	e5823000 	str	r3, [r2]
    1798:	e51b3008 	ldr	r3, [fp, #-8]
    179c:	e2833008 	add	r3, r3, #8
    17a0:	ea000012 	b	17f0 <malloc+0x154>
    17a4:	e59f3050 	ldr	r3, [pc, #80]	@ 17fc <malloc+0x160>
    17a8:	e5933000 	ldr	r3, [r3]
    17ac:	e51b2008 	ldr	r2, [fp, #-8]
    17b0:	e1520003 	cmp	r2, r3
    17b4:	1a000007 	bne	17d8 <malloc+0x13c>
    17b8:	e51b0010 	ldr	r0, [fp, #-16]
    17bc:	ebffff94 	bl	1614 <morecore>
    17c0:	e50b0008 	str	r0, [fp, #-8]
    17c4:	e51b3008 	ldr	r3, [fp, #-8]
    17c8:	e3530000 	cmp	r3, #0
    17cc:	1a000001 	bne	17d8 <malloc+0x13c>
    17d0:	e3a03000 	mov	r3, #0
    17d4:	ea000005 	b	17f0 <malloc+0x154>
    17d8:	e51b3008 	ldr	r3, [fp, #-8]
    17dc:	e50b300c 	str	r3, [fp, #-12]
    17e0:	e51b3008 	ldr	r3, [fp, #-8]
    17e4:	e5933000 	ldr	r3, [r3]
    17e8:	e50b3008 	str	r3, [fp, #-8]
    17ec:	eaffffc8 	b	1714 <malloc+0x78>
    17f0:	e1a00003 	mov	r0, r3
    17f4:	e24bd004 	sub	sp, fp, #4
    17f8:	e8bd8800 	pop	{fp, pc}
    17fc:	00001d78 	.word	0x00001d78
    1800:	00001d70 	.word	0x00001d70

00001804 <__udivsi3>:
    1804:	e2512001 	subs	r2, r1, #1
    1808:	012fff1e 	bxeq	lr
    180c:	3a000036 	bcc	18ec <__udivsi3+0xe8>
    1810:	e1500001 	cmp	r0, r1
    1814:	9a000022 	bls	18a4 <__udivsi3+0xa0>
    1818:	e1110002 	tst	r1, r2
    181c:	0a000023 	beq	18b0 <__udivsi3+0xac>
    1820:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1824:	01a01181 	lsleq	r1, r1, #3
    1828:	03a03008 	moveq	r3, #8
    182c:	13a03001 	movne	r3, #1
    1830:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1834:	31510000 	cmpcc	r1, r0
    1838:	31a01201 	lslcc	r1, r1, #4
    183c:	31a03203 	lslcc	r3, r3, #4
    1840:	3afffffa 	bcc	1830 <__udivsi3+0x2c>
    1844:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1848:	31510000 	cmpcc	r1, r0
    184c:	31a01081 	lslcc	r1, r1, #1
    1850:	31a03083 	lslcc	r3, r3, #1
    1854:	3afffffa 	bcc	1844 <__udivsi3+0x40>
    1858:	e3a02000 	mov	r2, #0
    185c:	e1500001 	cmp	r0, r1
    1860:	20400001 	subcs	r0, r0, r1
    1864:	21822003 	orrcs	r2, r2, r3
    1868:	e15000a1 	cmp	r0, r1, lsr #1
    186c:	204000a1 	subcs	r0, r0, r1, lsr #1
    1870:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1874:	e1500121 	cmp	r0, r1, lsr #2
    1878:	20400121 	subcs	r0, r0, r1, lsr #2
    187c:	21822123 	orrcs	r2, r2, r3, lsr #2
    1880:	e15001a1 	cmp	r0, r1, lsr #3
    1884:	204001a1 	subcs	r0, r0, r1, lsr #3
    1888:	218221a3 	orrcs	r2, r2, r3, lsr #3
    188c:	e3500000 	cmp	r0, #0
    1890:	11b03223 	lsrsne	r3, r3, #4
    1894:	11a01221 	lsrne	r1, r1, #4
    1898:	1affffef 	bne	185c <__udivsi3+0x58>
    189c:	e1a00002 	mov	r0, r2
    18a0:	e12fff1e 	bx	lr
    18a4:	03a00001 	moveq	r0, #1
    18a8:	13a00000 	movne	r0, #0
    18ac:	e12fff1e 	bx	lr
    18b0:	e3510801 	cmp	r1, #65536	@ 0x10000
    18b4:	21a01821 	lsrcs	r1, r1, #16
    18b8:	23a02010 	movcs	r2, #16
    18bc:	33a02000 	movcc	r2, #0
    18c0:	e3510c01 	cmp	r1, #256	@ 0x100
    18c4:	21a01421 	lsrcs	r1, r1, #8
    18c8:	22822008 	addcs	r2, r2, #8
    18cc:	e3510010 	cmp	r1, #16
    18d0:	21a01221 	lsrcs	r1, r1, #4
    18d4:	22822004 	addcs	r2, r2, #4
    18d8:	e3510004 	cmp	r1, #4
    18dc:	82822003 	addhi	r2, r2, #3
    18e0:	908220a1 	addls	r2, r2, r1, lsr #1
    18e4:	e1a00230 	lsr	r0, r0, r2
    18e8:	e12fff1e 	bx	lr
    18ec:	e3500000 	cmp	r0, #0
    18f0:	13e00000 	mvnne	r0, #0
    18f4:	ea000007 	b	1918 <__aeabi_idiv0>

000018f8 <__aeabi_uidivmod>:
    18f8:	e3510000 	cmp	r1, #0
    18fc:	0afffffa 	beq	18ec <__udivsi3+0xe8>
    1900:	e92d4003 	push	{r0, r1, lr}
    1904:	ebffffbe 	bl	1804 <__udivsi3>
    1908:	e8bd4006 	pop	{r1, r2, lr}
    190c:	e0030092 	mul	r3, r2, r0
    1910:	e0411003 	sub	r1, r1, r3
    1914:	e12fff1e 	bx	lr

00001918 <__aeabi_idiv0>:
    1918:	e12fff1e 	bx	lr
