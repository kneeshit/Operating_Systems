
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
      88:	eb00025c 	bl	a00 <write>
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
     11c:	eb00022e 	bl	9dc <read>
     120:	e50b0010 	str	r0, [fp, #-16]
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e3530000 	cmp	r3, #0
     12c:	caffffbb 	bgt	20 <grep+0x20>
     130:	e1a00000 	nop			@ (mov r0, r0)
     134:	e1a00000 	nop			@ (mov r0, r0)
     138:	e24bd004 	sub	sp, fp, #4
     13c:	e8bd8800 	pop	{fp, pc}
     140:	00001550 	.word	0x00001550

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
     16c:	eb000333 	bl	e40 <printf>
     170:	eb0001fe 	bl	970 <exit>
     174:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     178:	e5933004 	ldr	r3, [r3, #4]
     17c:	e50b300c 	str	r3, [fp, #-12]
     180:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     184:	e3530002 	cmp	r3, #2
     188:	ca000003 	bgt	19c <main+0x58>
     18c:	e3a01000 	mov	r1, #0
     190:	e51b000c 	ldr	r0, [fp, #-12]
     194:	ebffff99 	bl	0 <grep>
     198:	eb0001f4 	bl	970 <exit>
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
     1c4:	eb000231 	bl	a90 <open>
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
     1f8:	eb000310 	bl	e40 <printf>
     1fc:	eb0001db 	bl	970 <exit>
     200:	e51b1010 	ldr	r1, [fp, #-16]
     204:	e51b000c 	ldr	r0, [fp, #-12]
     208:	ebffff7c 	bl	0 <grep>
     20c:	e51b0010 	ldr	r0, [fp, #-16]
     210:	eb000203 	bl	a24 <close>
     214:	e51b3008 	ldr	r3, [fp, #-8]
     218:	e2833001 	add	r3, r3, #1
     21c:	e50b3008 	str	r3, [fp, #-8]
     220:	e51b2008 	ldr	r2, [fp, #-8]
     224:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     228:	e1520003 	cmp	r2, r3
     22c:	baffffdd 	blt	1a8 <main+0x64>
     230:	eb0001ce 	bl	970 <exit>
     234:	000014fc 	.word	0x000014fc
     238:	0000151c 	.word	0x0000151c

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
     750:	eb0000a1 	bl	9dc <read>
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
     7f8:	eb0000a4 	bl	a90 <open>
     7fc:	e50b0008 	str	r0, [fp, #-8]
     800:	e51b3008 	ldr	r3, [fp, #-8]
     804:	e3530000 	cmp	r3, #0
     808:	aa000001 	bge	814 <stat+0x38>
     80c:	e3e03000 	mvn	r3, #0
     810:	ea000006 	b	830 <stat+0x54>
     814:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     818:	e51b0008 	ldr	r0, [fp, #-8]
     81c:	eb0000b6 	bl	afc <fstat>
     820:	e50b000c 	str	r0, [fp, #-12]
     824:	e51b0008 	ldr	r0, [fp, #-8]
     828:	eb00007d 	bl	a24 <close>
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

0000094c <fork>:
     94c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     950:	e1a04003 	mov	r4, r3
     954:	e1a03002 	mov	r3, r2
     958:	e1a02001 	mov	r2, r1
     95c:	e1a01000 	mov	r1, r0
     960:	e3a00001 	mov	r0, #1
     964:	ef000000 	svc	0x00000000
     968:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     96c:	e12fff1e 	bx	lr

00000970 <exit>:
     970:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     974:	e1a04003 	mov	r4, r3
     978:	e1a03002 	mov	r3, r2
     97c:	e1a02001 	mov	r2, r1
     980:	e1a01000 	mov	r1, r0
     984:	e3a00002 	mov	r0, #2
     988:	ef000000 	svc	0x00000000
     98c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     990:	e12fff1e 	bx	lr

00000994 <wait>:
     994:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     998:	e1a04003 	mov	r4, r3
     99c:	e1a03002 	mov	r3, r2
     9a0:	e1a02001 	mov	r2, r1
     9a4:	e1a01000 	mov	r1, r0
     9a8:	e3a00003 	mov	r0, #3
     9ac:	ef000000 	svc	0x00000000
     9b0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9b4:	e12fff1e 	bx	lr

000009b8 <pipe>:
     9b8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9bc:	e1a04003 	mov	r4, r3
     9c0:	e1a03002 	mov	r3, r2
     9c4:	e1a02001 	mov	r2, r1
     9c8:	e1a01000 	mov	r1, r0
     9cc:	e3a00004 	mov	r0, #4
     9d0:	ef000000 	svc	0x00000000
     9d4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9d8:	e12fff1e 	bx	lr

000009dc <read>:
     9dc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9e0:	e1a04003 	mov	r4, r3
     9e4:	e1a03002 	mov	r3, r2
     9e8:	e1a02001 	mov	r2, r1
     9ec:	e1a01000 	mov	r1, r0
     9f0:	e3a00005 	mov	r0, #5
     9f4:	ef000000 	svc	0x00000000
     9f8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9fc:	e12fff1e 	bx	lr

00000a00 <write>:
     a00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a04:	e1a04003 	mov	r4, r3
     a08:	e1a03002 	mov	r3, r2
     a0c:	e1a02001 	mov	r2, r1
     a10:	e1a01000 	mov	r1, r0
     a14:	e3a00010 	mov	r0, #16
     a18:	ef000000 	svc	0x00000000
     a1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a20:	e12fff1e 	bx	lr

00000a24 <close>:
     a24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a28:	e1a04003 	mov	r4, r3
     a2c:	e1a03002 	mov	r3, r2
     a30:	e1a02001 	mov	r2, r1
     a34:	e1a01000 	mov	r1, r0
     a38:	e3a00015 	mov	r0, #21
     a3c:	ef000000 	svc	0x00000000
     a40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a44:	e12fff1e 	bx	lr

00000a48 <kill>:
     a48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a4c:	e1a04003 	mov	r4, r3
     a50:	e1a03002 	mov	r3, r2
     a54:	e1a02001 	mov	r2, r1
     a58:	e1a01000 	mov	r1, r0
     a5c:	e3a00006 	mov	r0, #6
     a60:	ef000000 	svc	0x00000000
     a64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a68:	e12fff1e 	bx	lr

00000a6c <exec>:
     a6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a70:	e1a04003 	mov	r4, r3
     a74:	e1a03002 	mov	r3, r2
     a78:	e1a02001 	mov	r2, r1
     a7c:	e1a01000 	mov	r1, r0
     a80:	e3a00007 	mov	r0, #7
     a84:	ef000000 	svc	0x00000000
     a88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a8c:	e12fff1e 	bx	lr

00000a90 <open>:
     a90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a94:	e1a04003 	mov	r4, r3
     a98:	e1a03002 	mov	r3, r2
     a9c:	e1a02001 	mov	r2, r1
     aa0:	e1a01000 	mov	r1, r0
     aa4:	e3a0000f 	mov	r0, #15
     aa8:	ef000000 	svc	0x00000000
     aac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ab0:	e12fff1e 	bx	lr

00000ab4 <mknod>:
     ab4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ab8:	e1a04003 	mov	r4, r3
     abc:	e1a03002 	mov	r3, r2
     ac0:	e1a02001 	mov	r2, r1
     ac4:	e1a01000 	mov	r1, r0
     ac8:	e3a00011 	mov	r0, #17
     acc:	ef000000 	svc	0x00000000
     ad0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ad4:	e12fff1e 	bx	lr

00000ad8 <unlink>:
     ad8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     adc:	e1a04003 	mov	r4, r3
     ae0:	e1a03002 	mov	r3, r2
     ae4:	e1a02001 	mov	r2, r1
     ae8:	e1a01000 	mov	r1, r0
     aec:	e3a00012 	mov	r0, #18
     af0:	ef000000 	svc	0x00000000
     af4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     af8:	e12fff1e 	bx	lr

00000afc <fstat>:
     afc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b00:	e1a04003 	mov	r4, r3
     b04:	e1a03002 	mov	r3, r2
     b08:	e1a02001 	mov	r2, r1
     b0c:	e1a01000 	mov	r1, r0
     b10:	e3a00008 	mov	r0, #8
     b14:	ef000000 	svc	0x00000000
     b18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b1c:	e12fff1e 	bx	lr

00000b20 <link>:
     b20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b24:	e1a04003 	mov	r4, r3
     b28:	e1a03002 	mov	r3, r2
     b2c:	e1a02001 	mov	r2, r1
     b30:	e1a01000 	mov	r1, r0
     b34:	e3a00013 	mov	r0, #19
     b38:	ef000000 	svc	0x00000000
     b3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b40:	e12fff1e 	bx	lr

00000b44 <mkdir>:
     b44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b48:	e1a04003 	mov	r4, r3
     b4c:	e1a03002 	mov	r3, r2
     b50:	e1a02001 	mov	r2, r1
     b54:	e1a01000 	mov	r1, r0
     b58:	e3a00014 	mov	r0, #20
     b5c:	ef000000 	svc	0x00000000
     b60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b64:	e12fff1e 	bx	lr

00000b68 <chdir>:
     b68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b6c:	e1a04003 	mov	r4, r3
     b70:	e1a03002 	mov	r3, r2
     b74:	e1a02001 	mov	r2, r1
     b78:	e1a01000 	mov	r1, r0
     b7c:	e3a00009 	mov	r0, #9
     b80:	ef000000 	svc	0x00000000
     b84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b88:	e12fff1e 	bx	lr

00000b8c <dup>:
     b8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b90:	e1a04003 	mov	r4, r3
     b94:	e1a03002 	mov	r3, r2
     b98:	e1a02001 	mov	r2, r1
     b9c:	e1a01000 	mov	r1, r0
     ba0:	e3a0000a 	mov	r0, #10
     ba4:	ef000000 	svc	0x00000000
     ba8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bac:	e12fff1e 	bx	lr

00000bb0 <getpid>:
     bb0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bb4:	e1a04003 	mov	r4, r3
     bb8:	e1a03002 	mov	r3, r2
     bbc:	e1a02001 	mov	r2, r1
     bc0:	e1a01000 	mov	r1, r0
     bc4:	e3a0000b 	mov	r0, #11
     bc8:	ef000000 	svc	0x00000000
     bcc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bd0:	e12fff1e 	bx	lr

00000bd4 <sbrk>:
     bd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bd8:	e1a04003 	mov	r4, r3
     bdc:	e1a03002 	mov	r3, r2
     be0:	e1a02001 	mov	r2, r1
     be4:	e1a01000 	mov	r1, r0
     be8:	e3a0000c 	mov	r0, #12
     bec:	ef000000 	svc	0x00000000
     bf0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bf4:	e12fff1e 	bx	lr

00000bf8 <sleep>:
     bf8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bfc:	e1a04003 	mov	r4, r3
     c00:	e1a03002 	mov	r3, r2
     c04:	e1a02001 	mov	r2, r1
     c08:	e1a01000 	mov	r1, r0
     c0c:	e3a0000d 	mov	r0, #13
     c10:	ef000000 	svc	0x00000000
     c14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c18:	e12fff1e 	bx	lr

00000c1c <uptime>:
     c1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c20:	e1a04003 	mov	r4, r3
     c24:	e1a03002 	mov	r3, r2
     c28:	e1a02001 	mov	r2, r1
     c2c:	e1a01000 	mov	r1, r0
     c30:	e3a0000e 	mov	r0, #14
     c34:	ef000000 	svc	0x00000000
     c38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c3c:	e12fff1e 	bx	lr

00000c40 <getprocs>:
     c40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c44:	e1a04003 	mov	r4, r3
     c48:	e1a03002 	mov	r3, r2
     c4c:	e1a02001 	mov	r2, r1
     c50:	e1a01000 	mov	r1, r0
     c54:	e3a00016 	mov	r0, #22
     c58:	ef000000 	svc	0x00000000
     c5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c60:	e12fff1e 	bx	lr

00000c64 <settickets>:
     c64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c68:	e1a04003 	mov	r4, r3
     c6c:	e1a03002 	mov	r3, r2
     c70:	e1a02001 	mov	r2, r1
     c74:	e1a01000 	mov	r1, r0
     c78:	e3a00017 	mov	r0, #23
     c7c:	ef000000 	svc	0x00000000
     c80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c84:	e12fff1e 	bx	lr

00000c88 <srand>:
     c88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c8c:	e1a04003 	mov	r4, r3
     c90:	e1a03002 	mov	r3, r2
     c94:	e1a02001 	mov	r2, r1
     c98:	e1a01000 	mov	r1, r0
     c9c:	e3a00018 	mov	r0, #24
     ca0:	ef000000 	svc	0x00000000
     ca4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ca8:	e12fff1e 	bx	lr

00000cac <getpinfo>:
     cac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cb0:	e1a04003 	mov	r4, r3
     cb4:	e1a03002 	mov	r3, r2
     cb8:	e1a02001 	mov	r2, r1
     cbc:	e1a01000 	mov	r1, r0
     cc0:	e3a00019 	mov	r0, #25
     cc4:	ef000000 	svc	0x00000000
     cc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ccc:	e12fff1e 	bx	lr

00000cd0 <putc>:
     cd0:	e92d4800 	push	{fp, lr}
     cd4:	e28db004 	add	fp, sp, #4
     cd8:	e24dd008 	sub	sp, sp, #8
     cdc:	e50b0008 	str	r0, [fp, #-8]
     ce0:	e1a03001 	mov	r3, r1
     ce4:	e54b3009 	strb	r3, [fp, #-9]
     ce8:	e24b3009 	sub	r3, fp, #9
     cec:	e3a02001 	mov	r2, #1
     cf0:	e1a01003 	mov	r1, r3
     cf4:	e51b0008 	ldr	r0, [fp, #-8]
     cf8:	ebffff40 	bl	a00 <write>
     cfc:	e1a00000 	nop			@ (mov r0, r0)
     d00:	e24bd004 	sub	sp, fp, #4
     d04:	e8bd8800 	pop	{fp, pc}

00000d08 <printint>:
     d08:	e92d4800 	push	{fp, lr}
     d0c:	e28db004 	add	fp, sp, #4
     d10:	e24dd030 	sub	sp, sp, #48	@ 0x30
     d14:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     d18:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     d1c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     d20:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     d24:	e3a03000 	mov	r3, #0
     d28:	e50b300c 	str	r3, [fp, #-12]
     d2c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     d30:	e3530000 	cmp	r3, #0
     d34:	0a000008 	beq	d5c <printint+0x54>
     d38:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d3c:	e3530000 	cmp	r3, #0
     d40:	aa000005 	bge	d5c <printint+0x54>
     d44:	e3a03001 	mov	r3, #1
     d48:	e50b300c 	str	r3, [fp, #-12]
     d4c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d50:	e2633000 	rsb	r3, r3, #0
     d54:	e50b3010 	str	r3, [fp, #-16]
     d58:	ea000001 	b	d64 <printint+0x5c>
     d5c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d60:	e50b3010 	str	r3, [fp, #-16]
     d64:	e3a03000 	mov	r3, #0
     d68:	e50b3008 	str	r3, [fp, #-8]
     d6c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     d70:	e51b3010 	ldr	r3, [fp, #-16]
     d74:	e1a01002 	mov	r1, r2
     d78:	e1a00003 	mov	r0, r3
     d7c:	eb0001d5 	bl	14d8 <__aeabi_uidivmod>
     d80:	e1a03001 	mov	r3, r1
     d84:	e1a01003 	mov	r1, r3
     d88:	e51b3008 	ldr	r3, [fp, #-8]
     d8c:	e2832001 	add	r2, r3, #1
     d90:	e50b2008 	str	r2, [fp, #-8]
     d94:	e59f20a0 	ldr	r2, [pc, #160]	@ e3c <printint+0x134>
     d98:	e7d22001 	ldrb	r2, [r2, r1]
     d9c:	e2433004 	sub	r3, r3, #4
     da0:	e083300b 	add	r3, r3, fp
     da4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     da8:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     dac:	e1a01003 	mov	r1, r3
     db0:	e51b0010 	ldr	r0, [fp, #-16]
     db4:	eb00018a 	bl	13e4 <__udivsi3>
     db8:	e1a03000 	mov	r3, r0
     dbc:	e50b3010 	str	r3, [fp, #-16]
     dc0:	e51b3010 	ldr	r3, [fp, #-16]
     dc4:	e3530000 	cmp	r3, #0
     dc8:	1affffe7 	bne	d6c <printint+0x64>
     dcc:	e51b300c 	ldr	r3, [fp, #-12]
     dd0:	e3530000 	cmp	r3, #0
     dd4:	0a00000e 	beq	e14 <printint+0x10c>
     dd8:	e51b3008 	ldr	r3, [fp, #-8]
     ddc:	e2832001 	add	r2, r3, #1
     de0:	e50b2008 	str	r2, [fp, #-8]
     de4:	e2433004 	sub	r3, r3, #4
     de8:	e083300b 	add	r3, r3, fp
     dec:	e3a0202d 	mov	r2, #45	@ 0x2d
     df0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     df4:	ea000006 	b	e14 <printint+0x10c>
     df8:	e24b2020 	sub	r2, fp, #32
     dfc:	e51b3008 	ldr	r3, [fp, #-8]
     e00:	e0823003 	add	r3, r2, r3
     e04:	e5d33000 	ldrb	r3, [r3]
     e08:	e1a01003 	mov	r1, r3
     e0c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     e10:	ebffffae 	bl	cd0 <putc>
     e14:	e51b3008 	ldr	r3, [fp, #-8]
     e18:	e2433001 	sub	r3, r3, #1
     e1c:	e50b3008 	str	r3, [fp, #-8]
     e20:	e51b3008 	ldr	r3, [fp, #-8]
     e24:	e3530000 	cmp	r3, #0
     e28:	aafffff2 	bge	df8 <printint+0xf0>
     e2c:	e1a00000 	nop			@ (mov r0, r0)
     e30:	e1a00000 	nop			@ (mov r0, r0)
     e34:	e24bd004 	sub	sp, fp, #4
     e38:	e8bd8800 	pop	{fp, pc}
     e3c:	0000153c 	.word	0x0000153c

00000e40 <printf>:
     e40:	e92d000e 	push	{r1, r2, r3}
     e44:	e92d4800 	push	{fp, lr}
     e48:	e28db004 	add	fp, sp, #4
     e4c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     e50:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     e54:	e3a03000 	mov	r3, #0
     e58:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     e5c:	e28b3008 	add	r3, fp, #8
     e60:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e64:	e3a03000 	mov	r3, #0
     e68:	e50b3010 	str	r3, [fp, #-16]
     e6c:	ea000074 	b	1044 <printf+0x204>
     e70:	e59b2004 	ldr	r2, [fp, #4]
     e74:	e51b3010 	ldr	r3, [fp, #-16]
     e78:	e0823003 	add	r3, r2, r3
     e7c:	e5d33000 	ldrb	r3, [r3]
     e80:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     e84:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     e88:	e3530000 	cmp	r3, #0
     e8c:	1a00000b 	bne	ec0 <printf+0x80>
     e90:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e94:	e3530025 	cmp	r3, #37	@ 0x25
     e98:	1a000002 	bne	ea8 <printf+0x68>
     e9c:	e3a03025 	mov	r3, #37	@ 0x25
     ea0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ea4:	ea000063 	b	1038 <printf+0x1f8>
     ea8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     eac:	e6ef3073 	uxtb	r3, r3
     eb0:	e1a01003 	mov	r1, r3
     eb4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     eb8:	ebffff84 	bl	cd0 <putc>
     ebc:	ea00005d 	b	1038 <printf+0x1f8>
     ec0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ec4:	e3530025 	cmp	r3, #37	@ 0x25
     ec8:	1a00005a 	bne	1038 <printf+0x1f8>
     ecc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ed0:	e3530064 	cmp	r3, #100	@ 0x64
     ed4:	1a00000a 	bne	f04 <printf+0xc4>
     ed8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     edc:	e5933000 	ldr	r3, [r3]
     ee0:	e1a01003 	mov	r1, r3
     ee4:	e3a03001 	mov	r3, #1
     ee8:	e3a0200a 	mov	r2, #10
     eec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ef0:	ebffff84 	bl	d08 <printint>
     ef4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ef8:	e2833004 	add	r3, r3, #4
     efc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f00:	ea00004a 	b	1030 <printf+0x1f0>
     f04:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f08:	e3530078 	cmp	r3, #120	@ 0x78
     f0c:	0a000002 	beq	f1c <printf+0xdc>
     f10:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f14:	e3530070 	cmp	r3, #112	@ 0x70
     f18:	1a00000a 	bne	f48 <printf+0x108>
     f1c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f20:	e5933000 	ldr	r3, [r3]
     f24:	e1a01003 	mov	r1, r3
     f28:	e3a03000 	mov	r3, #0
     f2c:	e3a02010 	mov	r2, #16
     f30:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f34:	ebffff73 	bl	d08 <printint>
     f38:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f3c:	e2833004 	add	r3, r3, #4
     f40:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f44:	ea000039 	b	1030 <printf+0x1f0>
     f48:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f4c:	e3530073 	cmp	r3, #115	@ 0x73
     f50:	1a000018 	bne	fb8 <printf+0x178>
     f54:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f58:	e5933000 	ldr	r3, [r3]
     f5c:	e50b300c 	str	r3, [fp, #-12]
     f60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f64:	e2833004 	add	r3, r3, #4
     f68:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f6c:	e51b300c 	ldr	r3, [fp, #-12]
     f70:	e3530000 	cmp	r3, #0
     f74:	1a00000a 	bne	fa4 <printf+0x164>
     f78:	e59f30f4 	ldr	r3, [pc, #244]	@ 1074 <printf+0x234>
     f7c:	e50b300c 	str	r3, [fp, #-12]
     f80:	ea000007 	b	fa4 <printf+0x164>
     f84:	e51b300c 	ldr	r3, [fp, #-12]
     f88:	e5d33000 	ldrb	r3, [r3]
     f8c:	e1a01003 	mov	r1, r3
     f90:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f94:	ebffff4d 	bl	cd0 <putc>
     f98:	e51b300c 	ldr	r3, [fp, #-12]
     f9c:	e2833001 	add	r3, r3, #1
     fa0:	e50b300c 	str	r3, [fp, #-12]
     fa4:	e51b300c 	ldr	r3, [fp, #-12]
     fa8:	e5d33000 	ldrb	r3, [r3]
     fac:	e3530000 	cmp	r3, #0
     fb0:	1afffff3 	bne	f84 <printf+0x144>
     fb4:	ea00001d 	b	1030 <printf+0x1f0>
     fb8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fbc:	e3530063 	cmp	r3, #99	@ 0x63
     fc0:	1a000009 	bne	fec <printf+0x1ac>
     fc4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fc8:	e5933000 	ldr	r3, [r3]
     fcc:	e6ef3073 	uxtb	r3, r3
     fd0:	e1a01003 	mov	r1, r3
     fd4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fd8:	ebffff3c 	bl	cd0 <putc>
     fdc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fe0:	e2833004 	add	r3, r3, #4
     fe4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fe8:	ea000010 	b	1030 <printf+0x1f0>
     fec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ff0:	e3530025 	cmp	r3, #37	@ 0x25
     ff4:	1a000005 	bne	1010 <printf+0x1d0>
     ff8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ffc:	e6ef3073 	uxtb	r3, r3
    1000:	e1a01003 	mov	r1, r3
    1004:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1008:	ebffff30 	bl	cd0 <putc>
    100c:	ea000007 	b	1030 <printf+0x1f0>
    1010:	e3a01025 	mov	r1, #37	@ 0x25
    1014:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1018:	ebffff2c 	bl	cd0 <putc>
    101c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1020:	e6ef3073 	uxtb	r3, r3
    1024:	e1a01003 	mov	r1, r3
    1028:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    102c:	ebffff27 	bl	cd0 <putc>
    1030:	e3a03000 	mov	r3, #0
    1034:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1038:	e51b3010 	ldr	r3, [fp, #-16]
    103c:	e2833001 	add	r3, r3, #1
    1040:	e50b3010 	str	r3, [fp, #-16]
    1044:	e59b2004 	ldr	r2, [fp, #4]
    1048:	e51b3010 	ldr	r3, [fp, #-16]
    104c:	e0823003 	add	r3, r2, r3
    1050:	e5d33000 	ldrb	r3, [r3]
    1054:	e3530000 	cmp	r3, #0
    1058:	1affff84 	bne	e70 <printf+0x30>
    105c:	e1a00000 	nop			@ (mov r0, r0)
    1060:	e1a00000 	nop			@ (mov r0, r0)
    1064:	e24bd004 	sub	sp, fp, #4
    1068:	e8bd4800 	pop	{fp, lr}
    106c:	e28dd00c 	add	sp, sp, #12
    1070:	e12fff1e 	bx	lr
    1074:	00001534 	.word	0x00001534

00001078 <free>:
    1078:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    107c:	e28db000 	add	fp, sp, #0
    1080:	e24dd014 	sub	sp, sp, #20
    1084:	e50b0010 	str	r0, [fp, #-16]
    1088:	e51b3010 	ldr	r3, [fp, #-16]
    108c:	e2433008 	sub	r3, r3, #8
    1090:	e50b300c 	str	r3, [fp, #-12]
    1094:	e59f3154 	ldr	r3, [pc, #340]	@ 11f0 <free+0x178>
    1098:	e5933000 	ldr	r3, [r3]
    109c:	e50b3008 	str	r3, [fp, #-8]
    10a0:	ea000010 	b	10e8 <free+0x70>
    10a4:	e51b3008 	ldr	r3, [fp, #-8]
    10a8:	e5933000 	ldr	r3, [r3]
    10ac:	e51b2008 	ldr	r2, [fp, #-8]
    10b0:	e1520003 	cmp	r2, r3
    10b4:	3a000008 	bcc	10dc <free+0x64>
    10b8:	e51b200c 	ldr	r2, [fp, #-12]
    10bc:	e51b3008 	ldr	r3, [fp, #-8]
    10c0:	e1520003 	cmp	r2, r3
    10c4:	8a000010 	bhi	110c <free+0x94>
    10c8:	e51b3008 	ldr	r3, [fp, #-8]
    10cc:	e5933000 	ldr	r3, [r3]
    10d0:	e51b200c 	ldr	r2, [fp, #-12]
    10d4:	e1520003 	cmp	r2, r3
    10d8:	3a00000b 	bcc	110c <free+0x94>
    10dc:	e51b3008 	ldr	r3, [fp, #-8]
    10e0:	e5933000 	ldr	r3, [r3]
    10e4:	e50b3008 	str	r3, [fp, #-8]
    10e8:	e51b200c 	ldr	r2, [fp, #-12]
    10ec:	e51b3008 	ldr	r3, [fp, #-8]
    10f0:	e1520003 	cmp	r2, r3
    10f4:	9affffea 	bls	10a4 <free+0x2c>
    10f8:	e51b3008 	ldr	r3, [fp, #-8]
    10fc:	e5933000 	ldr	r3, [r3]
    1100:	e51b200c 	ldr	r2, [fp, #-12]
    1104:	e1520003 	cmp	r2, r3
    1108:	2affffe5 	bcs	10a4 <free+0x2c>
    110c:	e51b300c 	ldr	r3, [fp, #-12]
    1110:	e5933004 	ldr	r3, [r3, #4]
    1114:	e1a03183 	lsl	r3, r3, #3
    1118:	e51b200c 	ldr	r2, [fp, #-12]
    111c:	e0822003 	add	r2, r2, r3
    1120:	e51b3008 	ldr	r3, [fp, #-8]
    1124:	e5933000 	ldr	r3, [r3]
    1128:	e1520003 	cmp	r2, r3
    112c:	1a00000d 	bne	1168 <free+0xf0>
    1130:	e51b300c 	ldr	r3, [fp, #-12]
    1134:	e5932004 	ldr	r2, [r3, #4]
    1138:	e51b3008 	ldr	r3, [fp, #-8]
    113c:	e5933000 	ldr	r3, [r3]
    1140:	e5933004 	ldr	r3, [r3, #4]
    1144:	e0822003 	add	r2, r2, r3
    1148:	e51b300c 	ldr	r3, [fp, #-12]
    114c:	e5832004 	str	r2, [r3, #4]
    1150:	e51b3008 	ldr	r3, [fp, #-8]
    1154:	e5933000 	ldr	r3, [r3]
    1158:	e5932000 	ldr	r2, [r3]
    115c:	e51b300c 	ldr	r3, [fp, #-12]
    1160:	e5832000 	str	r2, [r3]
    1164:	ea000003 	b	1178 <free+0x100>
    1168:	e51b3008 	ldr	r3, [fp, #-8]
    116c:	e5932000 	ldr	r2, [r3]
    1170:	e51b300c 	ldr	r3, [fp, #-12]
    1174:	e5832000 	str	r2, [r3]
    1178:	e51b3008 	ldr	r3, [fp, #-8]
    117c:	e5933004 	ldr	r3, [r3, #4]
    1180:	e1a03183 	lsl	r3, r3, #3
    1184:	e51b2008 	ldr	r2, [fp, #-8]
    1188:	e0823003 	add	r3, r2, r3
    118c:	e51b200c 	ldr	r2, [fp, #-12]
    1190:	e1520003 	cmp	r2, r3
    1194:	1a00000b 	bne	11c8 <free+0x150>
    1198:	e51b3008 	ldr	r3, [fp, #-8]
    119c:	e5932004 	ldr	r2, [r3, #4]
    11a0:	e51b300c 	ldr	r3, [fp, #-12]
    11a4:	e5933004 	ldr	r3, [r3, #4]
    11a8:	e0822003 	add	r2, r2, r3
    11ac:	e51b3008 	ldr	r3, [fp, #-8]
    11b0:	e5832004 	str	r2, [r3, #4]
    11b4:	e51b300c 	ldr	r3, [fp, #-12]
    11b8:	e5932000 	ldr	r2, [r3]
    11bc:	e51b3008 	ldr	r3, [fp, #-8]
    11c0:	e5832000 	str	r2, [r3]
    11c4:	ea000002 	b	11d4 <free+0x15c>
    11c8:	e51b3008 	ldr	r3, [fp, #-8]
    11cc:	e51b200c 	ldr	r2, [fp, #-12]
    11d0:	e5832000 	str	r2, [r3]
    11d4:	e59f2014 	ldr	r2, [pc, #20]	@ 11f0 <free+0x178>
    11d8:	e51b3008 	ldr	r3, [fp, #-8]
    11dc:	e5823000 	str	r3, [r2]
    11e0:	e1a00000 	nop			@ (mov r0, r0)
    11e4:	e28bd000 	add	sp, fp, #0
    11e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    11ec:	e12fff1e 	bx	lr
    11f0:	00001958 	.word	0x00001958

000011f4 <morecore>:
    11f4:	e92d4800 	push	{fp, lr}
    11f8:	e28db004 	add	fp, sp, #4
    11fc:	e24dd010 	sub	sp, sp, #16
    1200:	e50b0010 	str	r0, [fp, #-16]
    1204:	e51b3010 	ldr	r3, [fp, #-16]
    1208:	e3530a01 	cmp	r3, #4096	@ 0x1000
    120c:	2a000001 	bcs	1218 <morecore+0x24>
    1210:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1214:	e50b3010 	str	r3, [fp, #-16]
    1218:	e51b3010 	ldr	r3, [fp, #-16]
    121c:	e1a03183 	lsl	r3, r3, #3
    1220:	e1a00003 	mov	r0, r3
    1224:	ebfffe6a 	bl	bd4 <sbrk>
    1228:	e50b0008 	str	r0, [fp, #-8]
    122c:	e51b3008 	ldr	r3, [fp, #-8]
    1230:	e3730001 	cmn	r3, #1
    1234:	1a000001 	bne	1240 <morecore+0x4c>
    1238:	e3a03000 	mov	r3, #0
    123c:	ea00000a 	b	126c <morecore+0x78>
    1240:	e51b3008 	ldr	r3, [fp, #-8]
    1244:	e50b300c 	str	r3, [fp, #-12]
    1248:	e51b300c 	ldr	r3, [fp, #-12]
    124c:	e51b2010 	ldr	r2, [fp, #-16]
    1250:	e5832004 	str	r2, [r3, #4]
    1254:	e51b300c 	ldr	r3, [fp, #-12]
    1258:	e2833008 	add	r3, r3, #8
    125c:	e1a00003 	mov	r0, r3
    1260:	ebffff84 	bl	1078 <free>
    1264:	e59f300c 	ldr	r3, [pc, #12]	@ 1278 <morecore+0x84>
    1268:	e5933000 	ldr	r3, [r3]
    126c:	e1a00003 	mov	r0, r3
    1270:	e24bd004 	sub	sp, fp, #4
    1274:	e8bd8800 	pop	{fp, pc}
    1278:	00001958 	.word	0x00001958

0000127c <malloc>:
    127c:	e92d4800 	push	{fp, lr}
    1280:	e28db004 	add	fp, sp, #4
    1284:	e24dd018 	sub	sp, sp, #24
    1288:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    128c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1290:	e2833007 	add	r3, r3, #7
    1294:	e1a031a3 	lsr	r3, r3, #3
    1298:	e2833001 	add	r3, r3, #1
    129c:	e50b3010 	str	r3, [fp, #-16]
    12a0:	e59f3134 	ldr	r3, [pc, #308]	@ 13dc <malloc+0x160>
    12a4:	e5933000 	ldr	r3, [r3]
    12a8:	e50b300c 	str	r3, [fp, #-12]
    12ac:	e51b300c 	ldr	r3, [fp, #-12]
    12b0:	e3530000 	cmp	r3, #0
    12b4:	1a00000b 	bne	12e8 <malloc+0x6c>
    12b8:	e59f3120 	ldr	r3, [pc, #288]	@ 13e0 <malloc+0x164>
    12bc:	e50b300c 	str	r3, [fp, #-12]
    12c0:	e59f2114 	ldr	r2, [pc, #276]	@ 13dc <malloc+0x160>
    12c4:	e51b300c 	ldr	r3, [fp, #-12]
    12c8:	e5823000 	str	r3, [r2]
    12cc:	e59f3108 	ldr	r3, [pc, #264]	@ 13dc <malloc+0x160>
    12d0:	e5933000 	ldr	r3, [r3]
    12d4:	e59f2104 	ldr	r2, [pc, #260]	@ 13e0 <malloc+0x164>
    12d8:	e5823000 	str	r3, [r2]
    12dc:	e59f30fc 	ldr	r3, [pc, #252]	@ 13e0 <malloc+0x164>
    12e0:	e3a02000 	mov	r2, #0
    12e4:	e5832004 	str	r2, [r3, #4]
    12e8:	e51b300c 	ldr	r3, [fp, #-12]
    12ec:	e5933000 	ldr	r3, [r3]
    12f0:	e50b3008 	str	r3, [fp, #-8]
    12f4:	e51b3008 	ldr	r3, [fp, #-8]
    12f8:	e5933004 	ldr	r3, [r3, #4]
    12fc:	e51b2010 	ldr	r2, [fp, #-16]
    1300:	e1520003 	cmp	r2, r3
    1304:	8a00001e 	bhi	1384 <malloc+0x108>
    1308:	e51b3008 	ldr	r3, [fp, #-8]
    130c:	e5933004 	ldr	r3, [r3, #4]
    1310:	e51b2010 	ldr	r2, [fp, #-16]
    1314:	e1520003 	cmp	r2, r3
    1318:	1a000004 	bne	1330 <malloc+0xb4>
    131c:	e51b3008 	ldr	r3, [fp, #-8]
    1320:	e5932000 	ldr	r2, [r3]
    1324:	e51b300c 	ldr	r3, [fp, #-12]
    1328:	e5832000 	str	r2, [r3]
    132c:	ea00000e 	b	136c <malloc+0xf0>
    1330:	e51b3008 	ldr	r3, [fp, #-8]
    1334:	e5932004 	ldr	r2, [r3, #4]
    1338:	e51b3010 	ldr	r3, [fp, #-16]
    133c:	e0422003 	sub	r2, r2, r3
    1340:	e51b3008 	ldr	r3, [fp, #-8]
    1344:	e5832004 	str	r2, [r3, #4]
    1348:	e51b3008 	ldr	r3, [fp, #-8]
    134c:	e5933004 	ldr	r3, [r3, #4]
    1350:	e1a03183 	lsl	r3, r3, #3
    1354:	e51b2008 	ldr	r2, [fp, #-8]
    1358:	e0823003 	add	r3, r2, r3
    135c:	e50b3008 	str	r3, [fp, #-8]
    1360:	e51b3008 	ldr	r3, [fp, #-8]
    1364:	e51b2010 	ldr	r2, [fp, #-16]
    1368:	e5832004 	str	r2, [r3, #4]
    136c:	e59f2068 	ldr	r2, [pc, #104]	@ 13dc <malloc+0x160>
    1370:	e51b300c 	ldr	r3, [fp, #-12]
    1374:	e5823000 	str	r3, [r2]
    1378:	e51b3008 	ldr	r3, [fp, #-8]
    137c:	e2833008 	add	r3, r3, #8
    1380:	ea000012 	b	13d0 <malloc+0x154>
    1384:	e59f3050 	ldr	r3, [pc, #80]	@ 13dc <malloc+0x160>
    1388:	e5933000 	ldr	r3, [r3]
    138c:	e51b2008 	ldr	r2, [fp, #-8]
    1390:	e1520003 	cmp	r2, r3
    1394:	1a000007 	bne	13b8 <malloc+0x13c>
    1398:	e51b0010 	ldr	r0, [fp, #-16]
    139c:	ebffff94 	bl	11f4 <morecore>
    13a0:	e50b0008 	str	r0, [fp, #-8]
    13a4:	e51b3008 	ldr	r3, [fp, #-8]
    13a8:	e3530000 	cmp	r3, #0
    13ac:	1a000001 	bne	13b8 <malloc+0x13c>
    13b0:	e3a03000 	mov	r3, #0
    13b4:	ea000005 	b	13d0 <malloc+0x154>
    13b8:	e51b3008 	ldr	r3, [fp, #-8]
    13bc:	e50b300c 	str	r3, [fp, #-12]
    13c0:	e51b3008 	ldr	r3, [fp, #-8]
    13c4:	e5933000 	ldr	r3, [r3]
    13c8:	e50b3008 	str	r3, [fp, #-8]
    13cc:	eaffffc8 	b	12f4 <malloc+0x78>
    13d0:	e1a00003 	mov	r0, r3
    13d4:	e24bd004 	sub	sp, fp, #4
    13d8:	e8bd8800 	pop	{fp, pc}
    13dc:	00001958 	.word	0x00001958
    13e0:	00001950 	.word	0x00001950

000013e4 <__udivsi3>:
    13e4:	e2512001 	subs	r2, r1, #1
    13e8:	012fff1e 	bxeq	lr
    13ec:	3a000036 	bcc	14cc <__udivsi3+0xe8>
    13f0:	e1500001 	cmp	r0, r1
    13f4:	9a000022 	bls	1484 <__udivsi3+0xa0>
    13f8:	e1110002 	tst	r1, r2
    13fc:	0a000023 	beq	1490 <__udivsi3+0xac>
    1400:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1404:	01a01181 	lsleq	r1, r1, #3
    1408:	03a03008 	moveq	r3, #8
    140c:	13a03001 	movne	r3, #1
    1410:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1414:	31510000 	cmpcc	r1, r0
    1418:	31a01201 	lslcc	r1, r1, #4
    141c:	31a03203 	lslcc	r3, r3, #4
    1420:	3afffffa 	bcc	1410 <__udivsi3+0x2c>
    1424:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1428:	31510000 	cmpcc	r1, r0
    142c:	31a01081 	lslcc	r1, r1, #1
    1430:	31a03083 	lslcc	r3, r3, #1
    1434:	3afffffa 	bcc	1424 <__udivsi3+0x40>
    1438:	e3a02000 	mov	r2, #0
    143c:	e1500001 	cmp	r0, r1
    1440:	20400001 	subcs	r0, r0, r1
    1444:	21822003 	orrcs	r2, r2, r3
    1448:	e15000a1 	cmp	r0, r1, lsr #1
    144c:	204000a1 	subcs	r0, r0, r1, lsr #1
    1450:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1454:	e1500121 	cmp	r0, r1, lsr #2
    1458:	20400121 	subcs	r0, r0, r1, lsr #2
    145c:	21822123 	orrcs	r2, r2, r3, lsr #2
    1460:	e15001a1 	cmp	r0, r1, lsr #3
    1464:	204001a1 	subcs	r0, r0, r1, lsr #3
    1468:	218221a3 	orrcs	r2, r2, r3, lsr #3
    146c:	e3500000 	cmp	r0, #0
    1470:	11b03223 	lsrsne	r3, r3, #4
    1474:	11a01221 	lsrne	r1, r1, #4
    1478:	1affffef 	bne	143c <__udivsi3+0x58>
    147c:	e1a00002 	mov	r0, r2
    1480:	e12fff1e 	bx	lr
    1484:	03a00001 	moveq	r0, #1
    1488:	13a00000 	movne	r0, #0
    148c:	e12fff1e 	bx	lr
    1490:	e3510801 	cmp	r1, #65536	@ 0x10000
    1494:	21a01821 	lsrcs	r1, r1, #16
    1498:	23a02010 	movcs	r2, #16
    149c:	33a02000 	movcc	r2, #0
    14a0:	e3510c01 	cmp	r1, #256	@ 0x100
    14a4:	21a01421 	lsrcs	r1, r1, #8
    14a8:	22822008 	addcs	r2, r2, #8
    14ac:	e3510010 	cmp	r1, #16
    14b0:	21a01221 	lsrcs	r1, r1, #4
    14b4:	22822004 	addcs	r2, r2, #4
    14b8:	e3510004 	cmp	r1, #4
    14bc:	82822003 	addhi	r2, r2, #3
    14c0:	908220a1 	addls	r2, r2, r1, lsr #1
    14c4:	e1a00230 	lsr	r0, r0, r2
    14c8:	e12fff1e 	bx	lr
    14cc:	e3500000 	cmp	r0, #0
    14d0:	13e00000 	mvnne	r0, #0
    14d4:	ea000007 	b	14f8 <__aeabi_idiv0>

000014d8 <__aeabi_uidivmod>:
    14d8:	e3510000 	cmp	r1, #0
    14dc:	0afffffa 	beq	14cc <__udivsi3+0xe8>
    14e0:	e92d4003 	push	{r0, r1, lr}
    14e4:	ebffffbe 	bl	13e4 <__udivsi3>
    14e8:	e8bd4006 	pop	{r1, r2, lr}
    14ec:	e0030092 	mul	r3, r2, r0
    14f0:	e0411003 	sub	r1, r1, r3
    14f4:	e12fff1e 	bx	lr

000014f8 <__aeabi_idiv0>:
    14f8:	e12fff1e 	bx	lr
