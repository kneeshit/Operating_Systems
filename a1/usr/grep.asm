
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
      88:	eb000260 	bl	a10 <write>
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
      fc:	eb0001f9 	bl	8e8 <memmove>
     100:	e51b3008 	ldr	r3, [fp, #-8]
     104:	e59f2034 	ldr	r2, [pc, #52]	@ 140 <grep+0x140>
     108:	e0831002 	add	r1, r3, r2
     10c:	e51b3008 	ldr	r3, [fp, #-8]
     110:	e2633b01 	rsb	r3, r3, #1024	@ 0x400
     114:	e1a02003 	mov	r2, r3
     118:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
     11c:	eb000232 	bl	9ec <read>
     120:	e50b0010 	str	r0, [fp, #-16]
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e3530000 	cmp	r3, #0
     12c:	caffffbb 	bgt	20 <grep+0x20>
     130:	e1a00000 	nop			@ (mov r0, r0)
     134:	e1a00000 	nop			@ (mov r0, r0)
     138:	e24bd004 	sub	sp, fp, #4
     13c:	e8bd8800 	pop	{fp, pc}
     140:	000014f4 	.word	0x000014f4

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
     16c:	eb00031c 	bl	de4 <printf>
     170:	eb000202 	bl	980 <exit>
     174:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     178:	e5933004 	ldr	r3, [r3, #4]
     17c:	e50b300c 	str	r3, [fp, #-12]
     180:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     184:	e3530002 	cmp	r3, #2
     188:	ca000003 	bgt	19c <main+0x58>
     18c:	e3a01000 	mov	r1, #0
     190:	e51b000c 	ldr	r0, [fp, #-12]
     194:	ebffff99 	bl	0 <grep>
     198:	eb0001f8 	bl	980 <exit>
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
     1c4:	eb000235 	bl	aa0 <open>
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
     1f8:	eb0002f9 	bl	de4 <printf>
     1fc:	eb0001df 	bl	980 <exit>
     200:	e51b1010 	ldr	r1, [fp, #-16]
     204:	e51b000c 	ldr	r0, [fp, #-12]
     208:	ebffff7c 	bl	0 <grep>
     20c:	e51b0010 	ldr	r0, [fp, #-16]
     210:	eb000207 	bl	a34 <close>
     214:	e51b3008 	ldr	r3, [fp, #-8]
     218:	e2833001 	add	r3, r3, #1
     21c:	e50b3008 	str	r3, [fp, #-8]
     220:	e51b2008 	ldr	r2, [fp, #-8]
     224:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     228:	e1520003 	cmp	r2, r3
     22c:	baffffdd 	blt	1a8 <main+0x64>
     230:	eb0001d2 	bl	980 <exit>
     234:	000014a0 	.word	0x000014a0
     238:	000014c0 	.word	0x000014c0

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
     750:	eb0000a5 	bl	9ec <read>
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
     7f8:	eb0000a8 	bl	aa0 <open>
     7fc:	e50b0008 	str	r0, [fp, #-8]
     800:	e51b3008 	ldr	r3, [fp, #-8]
     804:	e3530000 	cmp	r3, #0
     808:	aa000001 	bge	814 <stat+0x38>
     80c:	e3e03000 	mvn	r3, #0
     810:	ea000006 	b	830 <stat+0x54>
     814:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     818:	e51b0008 	ldr	r0, [fp, #-8]
     81c:	eb0000ba 	bl	b0c <fstat>
     820:	e50b000c 	str	r0, [fp, #-12]
     824:	e51b0008 	ldr	r0, [fp, #-8]
     828:	eb000081 	bl	a34 <close>
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
     8b4:	e353002f 	cmp	r3, #47	@ 0x2f
     8b8:	9a000003 	bls	8cc <atoi+0x90>
     8bc:	e51b3010 	ldr	r3, [fp, #-16]
     8c0:	e5d33000 	ldrb	r3, [r3]
     8c4:	e3530039 	cmp	r3, #57	@ 0x39
     8c8:	9a000001 	bls	8d4 <atoi+0x98>
     8cc:	e3e03000 	mvn	r3, #0
     8d0:	ea000000 	b	8d8 <atoi+0x9c>
     8d4:	e51b3008 	ldr	r3, [fp, #-8]
     8d8:	e1a00003 	mov	r0, r3
     8dc:	e28bd000 	add	sp, fp, #0
     8e0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8e4:	e12fff1e 	bx	lr

000008e8 <memmove>:
     8e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     8ec:	e28db000 	add	fp, sp, #0
     8f0:	e24dd01c 	sub	sp, sp, #28
     8f4:	e50b0010 	str	r0, [fp, #-16]
     8f8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     8fc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     900:	e51b3010 	ldr	r3, [fp, #-16]
     904:	e50b3008 	str	r3, [fp, #-8]
     908:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     90c:	e50b300c 	str	r3, [fp, #-12]
     910:	ea000007 	b	934 <memmove+0x4c>
     914:	e51b200c 	ldr	r2, [fp, #-12]
     918:	e2823001 	add	r3, r2, #1
     91c:	e50b300c 	str	r3, [fp, #-12]
     920:	e51b3008 	ldr	r3, [fp, #-8]
     924:	e2831001 	add	r1, r3, #1
     928:	e50b1008 	str	r1, [fp, #-8]
     92c:	e5d22000 	ldrb	r2, [r2]
     930:	e5c32000 	strb	r2, [r3]
     934:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     938:	e2432001 	sub	r2, r3, #1
     93c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     940:	e3530000 	cmp	r3, #0
     944:	cafffff2 	bgt	914 <memmove+0x2c>
     948:	e51b3010 	ldr	r3, [fp, #-16]
     94c:	e1a00003 	mov	r0, r3
     950:	e28bd000 	add	sp, fp, #0
     954:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     958:	e12fff1e 	bx	lr

0000095c <fork>:
     95c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     960:	e1a04003 	mov	r4, r3
     964:	e1a03002 	mov	r3, r2
     968:	e1a02001 	mov	r2, r1
     96c:	e1a01000 	mov	r1, r0
     970:	e3a00001 	mov	r0, #1
     974:	ef000000 	svc	0x00000000
     978:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     97c:	e12fff1e 	bx	lr

00000980 <exit>:
     980:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     984:	e1a04003 	mov	r4, r3
     988:	e1a03002 	mov	r3, r2
     98c:	e1a02001 	mov	r2, r1
     990:	e1a01000 	mov	r1, r0
     994:	e3a00002 	mov	r0, #2
     998:	ef000000 	svc	0x00000000
     99c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a0:	e12fff1e 	bx	lr

000009a4 <wait>:
     9a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a8:	e1a04003 	mov	r4, r3
     9ac:	e1a03002 	mov	r3, r2
     9b0:	e1a02001 	mov	r2, r1
     9b4:	e1a01000 	mov	r1, r0
     9b8:	e3a00003 	mov	r0, #3
     9bc:	ef000000 	svc	0x00000000
     9c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c4:	e12fff1e 	bx	lr

000009c8 <pipe>:
     9c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9cc:	e1a04003 	mov	r4, r3
     9d0:	e1a03002 	mov	r3, r2
     9d4:	e1a02001 	mov	r2, r1
     9d8:	e1a01000 	mov	r1, r0
     9dc:	e3a00004 	mov	r0, #4
     9e0:	ef000000 	svc	0x00000000
     9e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e8:	e12fff1e 	bx	lr

000009ec <read>:
     9ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f0:	e1a04003 	mov	r4, r3
     9f4:	e1a03002 	mov	r3, r2
     9f8:	e1a02001 	mov	r2, r1
     9fc:	e1a01000 	mov	r1, r0
     a00:	e3a00005 	mov	r0, #5
     a04:	ef000000 	svc	0x00000000
     a08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a0c:	e12fff1e 	bx	lr

00000a10 <write>:
     a10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a14:	e1a04003 	mov	r4, r3
     a18:	e1a03002 	mov	r3, r2
     a1c:	e1a02001 	mov	r2, r1
     a20:	e1a01000 	mov	r1, r0
     a24:	e3a00010 	mov	r0, #16
     a28:	ef000000 	svc	0x00000000
     a2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a30:	e12fff1e 	bx	lr

00000a34 <close>:
     a34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a38:	e1a04003 	mov	r4, r3
     a3c:	e1a03002 	mov	r3, r2
     a40:	e1a02001 	mov	r2, r1
     a44:	e1a01000 	mov	r1, r0
     a48:	e3a00015 	mov	r0, #21
     a4c:	ef000000 	svc	0x00000000
     a50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a54:	e12fff1e 	bx	lr

00000a58 <kill>:
     a58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a5c:	e1a04003 	mov	r4, r3
     a60:	e1a03002 	mov	r3, r2
     a64:	e1a02001 	mov	r2, r1
     a68:	e1a01000 	mov	r1, r0
     a6c:	e3a00006 	mov	r0, #6
     a70:	ef000000 	svc	0x00000000
     a74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a78:	e12fff1e 	bx	lr

00000a7c <exec>:
     a7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a80:	e1a04003 	mov	r4, r3
     a84:	e1a03002 	mov	r3, r2
     a88:	e1a02001 	mov	r2, r1
     a8c:	e1a01000 	mov	r1, r0
     a90:	e3a00007 	mov	r0, #7
     a94:	ef000000 	svc	0x00000000
     a98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a9c:	e12fff1e 	bx	lr

00000aa0 <open>:
     aa0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa4:	e1a04003 	mov	r4, r3
     aa8:	e1a03002 	mov	r3, r2
     aac:	e1a02001 	mov	r2, r1
     ab0:	e1a01000 	mov	r1, r0
     ab4:	e3a0000f 	mov	r0, #15
     ab8:	ef000000 	svc	0x00000000
     abc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac0:	e12fff1e 	bx	lr

00000ac4 <mknod>:
     ac4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac8:	e1a04003 	mov	r4, r3
     acc:	e1a03002 	mov	r3, r2
     ad0:	e1a02001 	mov	r2, r1
     ad4:	e1a01000 	mov	r1, r0
     ad8:	e3a00011 	mov	r0, #17
     adc:	ef000000 	svc	0x00000000
     ae0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae4:	e12fff1e 	bx	lr

00000ae8 <unlink>:
     ae8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aec:	e1a04003 	mov	r4, r3
     af0:	e1a03002 	mov	r3, r2
     af4:	e1a02001 	mov	r2, r1
     af8:	e1a01000 	mov	r1, r0
     afc:	e3a00012 	mov	r0, #18
     b00:	ef000000 	svc	0x00000000
     b04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b08:	e12fff1e 	bx	lr

00000b0c <fstat>:
     b0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b10:	e1a04003 	mov	r4, r3
     b14:	e1a03002 	mov	r3, r2
     b18:	e1a02001 	mov	r2, r1
     b1c:	e1a01000 	mov	r1, r0
     b20:	e3a00008 	mov	r0, #8
     b24:	ef000000 	svc	0x00000000
     b28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b2c:	e12fff1e 	bx	lr

00000b30 <link>:
     b30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b34:	e1a04003 	mov	r4, r3
     b38:	e1a03002 	mov	r3, r2
     b3c:	e1a02001 	mov	r2, r1
     b40:	e1a01000 	mov	r1, r0
     b44:	e3a00013 	mov	r0, #19
     b48:	ef000000 	svc	0x00000000
     b4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b50:	e12fff1e 	bx	lr

00000b54 <mkdir>:
     b54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b58:	e1a04003 	mov	r4, r3
     b5c:	e1a03002 	mov	r3, r2
     b60:	e1a02001 	mov	r2, r1
     b64:	e1a01000 	mov	r1, r0
     b68:	e3a00014 	mov	r0, #20
     b6c:	ef000000 	svc	0x00000000
     b70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b74:	e12fff1e 	bx	lr

00000b78 <chdir>:
     b78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b7c:	e1a04003 	mov	r4, r3
     b80:	e1a03002 	mov	r3, r2
     b84:	e1a02001 	mov	r2, r1
     b88:	e1a01000 	mov	r1, r0
     b8c:	e3a00009 	mov	r0, #9
     b90:	ef000000 	svc	0x00000000
     b94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b98:	e12fff1e 	bx	lr

00000b9c <dup>:
     b9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba0:	e1a04003 	mov	r4, r3
     ba4:	e1a03002 	mov	r3, r2
     ba8:	e1a02001 	mov	r2, r1
     bac:	e1a01000 	mov	r1, r0
     bb0:	e3a0000a 	mov	r0, #10
     bb4:	ef000000 	svc	0x00000000
     bb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bbc:	e12fff1e 	bx	lr

00000bc0 <getpid>:
     bc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc4:	e1a04003 	mov	r4, r3
     bc8:	e1a03002 	mov	r3, r2
     bcc:	e1a02001 	mov	r2, r1
     bd0:	e1a01000 	mov	r1, r0
     bd4:	e3a0000b 	mov	r0, #11
     bd8:	ef000000 	svc	0x00000000
     bdc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be0:	e12fff1e 	bx	lr

00000be4 <sbrk>:
     be4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be8:	e1a04003 	mov	r4, r3
     bec:	e1a03002 	mov	r3, r2
     bf0:	e1a02001 	mov	r2, r1
     bf4:	e1a01000 	mov	r1, r0
     bf8:	e3a0000c 	mov	r0, #12
     bfc:	ef000000 	svc	0x00000000
     c00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c04:	e12fff1e 	bx	lr

00000c08 <sleep>:
     c08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c0c:	e1a04003 	mov	r4, r3
     c10:	e1a03002 	mov	r3, r2
     c14:	e1a02001 	mov	r2, r1
     c18:	e1a01000 	mov	r1, r0
     c1c:	e3a0000d 	mov	r0, #13
     c20:	ef000000 	svc	0x00000000
     c24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c28:	e12fff1e 	bx	lr

00000c2c <uptime>:
     c2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c30:	e1a04003 	mov	r4, r3
     c34:	e1a03002 	mov	r3, r2
     c38:	e1a02001 	mov	r2, r1
     c3c:	e1a01000 	mov	r1, r0
     c40:	e3a0000e 	mov	r0, #14
     c44:	ef000000 	svc	0x00000000
     c48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c4c:	e12fff1e 	bx	lr

00000c50 <getprocs>:
     c50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c54:	e1a04003 	mov	r4, r3
     c58:	e1a03002 	mov	r3, r2
     c5c:	e1a02001 	mov	r2, r1
     c60:	e1a01000 	mov	r1, r0
     c64:	e3a00016 	mov	r0, #22
     c68:	ef000000 	svc	0x00000000
     c6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c70:	e12fff1e 	bx	lr

00000c74 <putc>:
     c74:	e92d4800 	push	{fp, lr}
     c78:	e28db004 	add	fp, sp, #4
     c7c:	e24dd008 	sub	sp, sp, #8
     c80:	e50b0008 	str	r0, [fp, #-8]
     c84:	e1a03001 	mov	r3, r1
     c88:	e54b3009 	strb	r3, [fp, #-9]
     c8c:	e24b3009 	sub	r3, fp, #9
     c90:	e3a02001 	mov	r2, #1
     c94:	e1a01003 	mov	r1, r3
     c98:	e51b0008 	ldr	r0, [fp, #-8]
     c9c:	ebffff5b 	bl	a10 <write>
     ca0:	e1a00000 	nop			@ (mov r0, r0)
     ca4:	e24bd004 	sub	sp, fp, #4
     ca8:	e8bd8800 	pop	{fp, pc}

00000cac <printint>:
     cac:	e92d4800 	push	{fp, lr}
     cb0:	e28db004 	add	fp, sp, #4
     cb4:	e24dd030 	sub	sp, sp, #48	@ 0x30
     cb8:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     cbc:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     cc0:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     cc4:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     cc8:	e3a03000 	mov	r3, #0
     ccc:	e50b300c 	str	r3, [fp, #-12]
     cd0:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     cd4:	e3530000 	cmp	r3, #0
     cd8:	0a000008 	beq	d00 <printint+0x54>
     cdc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ce0:	e3530000 	cmp	r3, #0
     ce4:	aa000005 	bge	d00 <printint+0x54>
     ce8:	e3a03001 	mov	r3, #1
     cec:	e50b300c 	str	r3, [fp, #-12]
     cf0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     cf4:	e2633000 	rsb	r3, r3, #0
     cf8:	e50b3010 	str	r3, [fp, #-16]
     cfc:	ea000001 	b	d08 <printint+0x5c>
     d00:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d04:	e50b3010 	str	r3, [fp, #-16]
     d08:	e3a03000 	mov	r3, #0
     d0c:	e50b3008 	str	r3, [fp, #-8]
     d10:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     d14:	e51b3010 	ldr	r3, [fp, #-16]
     d18:	e1a01002 	mov	r1, r2
     d1c:	e1a00003 	mov	r0, r3
     d20:	eb0001d5 	bl	147c <__aeabi_uidivmod>
     d24:	e1a03001 	mov	r3, r1
     d28:	e1a01003 	mov	r1, r3
     d2c:	e51b3008 	ldr	r3, [fp, #-8]
     d30:	e2832001 	add	r2, r3, #1
     d34:	e50b2008 	str	r2, [fp, #-8]
     d38:	e59f20a0 	ldr	r2, [pc, #160]	@ de0 <printint+0x134>
     d3c:	e7d22001 	ldrb	r2, [r2, r1]
     d40:	e2433004 	sub	r3, r3, #4
     d44:	e083300b 	add	r3, r3, fp
     d48:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     d4c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     d50:	e1a01003 	mov	r1, r3
     d54:	e51b0010 	ldr	r0, [fp, #-16]
     d58:	eb00018a 	bl	1388 <__udivsi3>
     d5c:	e1a03000 	mov	r3, r0
     d60:	e50b3010 	str	r3, [fp, #-16]
     d64:	e51b3010 	ldr	r3, [fp, #-16]
     d68:	e3530000 	cmp	r3, #0
     d6c:	1affffe7 	bne	d10 <printint+0x64>
     d70:	e51b300c 	ldr	r3, [fp, #-12]
     d74:	e3530000 	cmp	r3, #0
     d78:	0a00000e 	beq	db8 <printint+0x10c>
     d7c:	e51b3008 	ldr	r3, [fp, #-8]
     d80:	e2832001 	add	r2, r3, #1
     d84:	e50b2008 	str	r2, [fp, #-8]
     d88:	e2433004 	sub	r3, r3, #4
     d8c:	e083300b 	add	r3, r3, fp
     d90:	e3a0202d 	mov	r2, #45	@ 0x2d
     d94:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     d98:	ea000006 	b	db8 <printint+0x10c>
     d9c:	e24b2020 	sub	r2, fp, #32
     da0:	e51b3008 	ldr	r3, [fp, #-8]
     da4:	e0823003 	add	r3, r2, r3
     da8:	e5d33000 	ldrb	r3, [r3]
     dac:	e1a01003 	mov	r1, r3
     db0:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     db4:	ebffffae 	bl	c74 <putc>
     db8:	e51b3008 	ldr	r3, [fp, #-8]
     dbc:	e2433001 	sub	r3, r3, #1
     dc0:	e50b3008 	str	r3, [fp, #-8]
     dc4:	e51b3008 	ldr	r3, [fp, #-8]
     dc8:	e3530000 	cmp	r3, #0
     dcc:	aafffff2 	bge	d9c <printint+0xf0>
     dd0:	e1a00000 	nop			@ (mov r0, r0)
     dd4:	e1a00000 	nop			@ (mov r0, r0)
     dd8:	e24bd004 	sub	sp, fp, #4
     ddc:	e8bd8800 	pop	{fp, pc}
     de0:	000014e0 	.word	0x000014e0

00000de4 <printf>:
     de4:	e92d000e 	push	{r1, r2, r3}
     de8:	e92d4800 	push	{fp, lr}
     dec:	e28db004 	add	fp, sp, #4
     df0:	e24dd024 	sub	sp, sp, #36	@ 0x24
     df4:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     df8:	e3a03000 	mov	r3, #0
     dfc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     e00:	e28b3008 	add	r3, fp, #8
     e04:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e08:	e3a03000 	mov	r3, #0
     e0c:	e50b3010 	str	r3, [fp, #-16]
     e10:	ea000074 	b	fe8 <printf+0x204>
     e14:	e59b2004 	ldr	r2, [fp, #4]
     e18:	e51b3010 	ldr	r3, [fp, #-16]
     e1c:	e0823003 	add	r3, r2, r3
     e20:	e5d33000 	ldrb	r3, [r3]
     e24:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     e28:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     e2c:	e3530000 	cmp	r3, #0
     e30:	1a00000b 	bne	e64 <printf+0x80>
     e34:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e38:	e3530025 	cmp	r3, #37	@ 0x25
     e3c:	1a000002 	bne	e4c <printf+0x68>
     e40:	e3a03025 	mov	r3, #37	@ 0x25
     e44:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     e48:	ea000063 	b	fdc <printf+0x1f8>
     e4c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e50:	e6ef3073 	uxtb	r3, r3
     e54:	e1a01003 	mov	r1, r3
     e58:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e5c:	ebffff84 	bl	c74 <putc>
     e60:	ea00005d 	b	fdc <printf+0x1f8>
     e64:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     e68:	e3530025 	cmp	r3, #37	@ 0x25
     e6c:	1a00005a 	bne	fdc <printf+0x1f8>
     e70:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e74:	e3530064 	cmp	r3, #100	@ 0x64
     e78:	1a00000a 	bne	ea8 <printf+0xc4>
     e7c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e80:	e5933000 	ldr	r3, [r3]
     e84:	e1a01003 	mov	r1, r3
     e88:	e3a03001 	mov	r3, #1
     e8c:	e3a0200a 	mov	r2, #10
     e90:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e94:	ebffff84 	bl	cac <printint>
     e98:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e9c:	e2833004 	add	r3, r3, #4
     ea0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ea4:	ea00004a 	b	fd4 <printf+0x1f0>
     ea8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     eac:	e3530078 	cmp	r3, #120	@ 0x78
     eb0:	0a000002 	beq	ec0 <printf+0xdc>
     eb4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     eb8:	e3530070 	cmp	r3, #112	@ 0x70
     ebc:	1a00000a 	bne	eec <printf+0x108>
     ec0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ec4:	e5933000 	ldr	r3, [r3]
     ec8:	e1a01003 	mov	r1, r3
     ecc:	e3a03000 	mov	r3, #0
     ed0:	e3a02010 	mov	r2, #16
     ed4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ed8:	ebffff73 	bl	cac <printint>
     edc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ee0:	e2833004 	add	r3, r3, #4
     ee4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ee8:	ea000039 	b	fd4 <printf+0x1f0>
     eec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ef0:	e3530073 	cmp	r3, #115	@ 0x73
     ef4:	1a000018 	bne	f5c <printf+0x178>
     ef8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     efc:	e5933000 	ldr	r3, [r3]
     f00:	e50b300c 	str	r3, [fp, #-12]
     f04:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f08:	e2833004 	add	r3, r3, #4
     f0c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f10:	e51b300c 	ldr	r3, [fp, #-12]
     f14:	e3530000 	cmp	r3, #0
     f18:	1a00000a 	bne	f48 <printf+0x164>
     f1c:	e59f30f4 	ldr	r3, [pc, #244]	@ 1018 <printf+0x234>
     f20:	e50b300c 	str	r3, [fp, #-12]
     f24:	ea000007 	b	f48 <printf+0x164>
     f28:	e51b300c 	ldr	r3, [fp, #-12]
     f2c:	e5d33000 	ldrb	r3, [r3]
     f30:	e1a01003 	mov	r1, r3
     f34:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f38:	ebffff4d 	bl	c74 <putc>
     f3c:	e51b300c 	ldr	r3, [fp, #-12]
     f40:	e2833001 	add	r3, r3, #1
     f44:	e50b300c 	str	r3, [fp, #-12]
     f48:	e51b300c 	ldr	r3, [fp, #-12]
     f4c:	e5d33000 	ldrb	r3, [r3]
     f50:	e3530000 	cmp	r3, #0
     f54:	1afffff3 	bne	f28 <printf+0x144>
     f58:	ea00001d 	b	fd4 <printf+0x1f0>
     f5c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f60:	e3530063 	cmp	r3, #99	@ 0x63
     f64:	1a000009 	bne	f90 <printf+0x1ac>
     f68:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f6c:	e5933000 	ldr	r3, [r3]
     f70:	e6ef3073 	uxtb	r3, r3
     f74:	e1a01003 	mov	r1, r3
     f78:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f7c:	ebffff3c 	bl	c74 <putc>
     f80:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f84:	e2833004 	add	r3, r3, #4
     f88:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f8c:	ea000010 	b	fd4 <printf+0x1f0>
     f90:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f94:	e3530025 	cmp	r3, #37	@ 0x25
     f98:	1a000005 	bne	fb4 <printf+0x1d0>
     f9c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fa0:	e6ef3073 	uxtb	r3, r3
     fa4:	e1a01003 	mov	r1, r3
     fa8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fac:	ebffff30 	bl	c74 <putc>
     fb0:	ea000007 	b	fd4 <printf+0x1f0>
     fb4:	e3a01025 	mov	r1, #37	@ 0x25
     fb8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fbc:	ebffff2c 	bl	c74 <putc>
     fc0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fc4:	e6ef3073 	uxtb	r3, r3
     fc8:	e1a01003 	mov	r1, r3
     fcc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fd0:	ebffff27 	bl	c74 <putc>
     fd4:	e3a03000 	mov	r3, #0
     fd8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     fdc:	e51b3010 	ldr	r3, [fp, #-16]
     fe0:	e2833001 	add	r3, r3, #1
     fe4:	e50b3010 	str	r3, [fp, #-16]
     fe8:	e59b2004 	ldr	r2, [fp, #4]
     fec:	e51b3010 	ldr	r3, [fp, #-16]
     ff0:	e0823003 	add	r3, r2, r3
     ff4:	e5d33000 	ldrb	r3, [r3]
     ff8:	e3530000 	cmp	r3, #0
     ffc:	1affff84 	bne	e14 <printf+0x30>
    1000:	e1a00000 	nop			@ (mov r0, r0)
    1004:	e1a00000 	nop			@ (mov r0, r0)
    1008:	e24bd004 	sub	sp, fp, #4
    100c:	e8bd4800 	pop	{fp, lr}
    1010:	e28dd00c 	add	sp, sp, #12
    1014:	e12fff1e 	bx	lr
    1018:	000014d8 	.word	0x000014d8

0000101c <free>:
    101c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1020:	e28db000 	add	fp, sp, #0
    1024:	e24dd014 	sub	sp, sp, #20
    1028:	e50b0010 	str	r0, [fp, #-16]
    102c:	e51b3010 	ldr	r3, [fp, #-16]
    1030:	e2433008 	sub	r3, r3, #8
    1034:	e50b300c 	str	r3, [fp, #-12]
    1038:	e59f3154 	ldr	r3, [pc, #340]	@ 1194 <free+0x178>
    103c:	e5933000 	ldr	r3, [r3]
    1040:	e50b3008 	str	r3, [fp, #-8]
    1044:	ea000010 	b	108c <free+0x70>
    1048:	e51b3008 	ldr	r3, [fp, #-8]
    104c:	e5933000 	ldr	r3, [r3]
    1050:	e51b2008 	ldr	r2, [fp, #-8]
    1054:	e1520003 	cmp	r2, r3
    1058:	3a000008 	bcc	1080 <free+0x64>
    105c:	e51b200c 	ldr	r2, [fp, #-12]
    1060:	e51b3008 	ldr	r3, [fp, #-8]
    1064:	e1520003 	cmp	r2, r3
    1068:	8a000010 	bhi	10b0 <free+0x94>
    106c:	e51b3008 	ldr	r3, [fp, #-8]
    1070:	e5933000 	ldr	r3, [r3]
    1074:	e51b200c 	ldr	r2, [fp, #-12]
    1078:	e1520003 	cmp	r2, r3
    107c:	3a00000b 	bcc	10b0 <free+0x94>
    1080:	e51b3008 	ldr	r3, [fp, #-8]
    1084:	e5933000 	ldr	r3, [r3]
    1088:	e50b3008 	str	r3, [fp, #-8]
    108c:	e51b200c 	ldr	r2, [fp, #-12]
    1090:	e51b3008 	ldr	r3, [fp, #-8]
    1094:	e1520003 	cmp	r2, r3
    1098:	9affffea 	bls	1048 <free+0x2c>
    109c:	e51b3008 	ldr	r3, [fp, #-8]
    10a0:	e5933000 	ldr	r3, [r3]
    10a4:	e51b200c 	ldr	r2, [fp, #-12]
    10a8:	e1520003 	cmp	r2, r3
    10ac:	2affffe5 	bcs	1048 <free+0x2c>
    10b0:	e51b300c 	ldr	r3, [fp, #-12]
    10b4:	e5933004 	ldr	r3, [r3, #4]
    10b8:	e1a03183 	lsl	r3, r3, #3
    10bc:	e51b200c 	ldr	r2, [fp, #-12]
    10c0:	e0822003 	add	r2, r2, r3
    10c4:	e51b3008 	ldr	r3, [fp, #-8]
    10c8:	e5933000 	ldr	r3, [r3]
    10cc:	e1520003 	cmp	r2, r3
    10d0:	1a00000d 	bne	110c <free+0xf0>
    10d4:	e51b300c 	ldr	r3, [fp, #-12]
    10d8:	e5932004 	ldr	r2, [r3, #4]
    10dc:	e51b3008 	ldr	r3, [fp, #-8]
    10e0:	e5933000 	ldr	r3, [r3]
    10e4:	e5933004 	ldr	r3, [r3, #4]
    10e8:	e0822003 	add	r2, r2, r3
    10ec:	e51b300c 	ldr	r3, [fp, #-12]
    10f0:	e5832004 	str	r2, [r3, #4]
    10f4:	e51b3008 	ldr	r3, [fp, #-8]
    10f8:	e5933000 	ldr	r3, [r3]
    10fc:	e5932000 	ldr	r2, [r3]
    1100:	e51b300c 	ldr	r3, [fp, #-12]
    1104:	e5832000 	str	r2, [r3]
    1108:	ea000003 	b	111c <free+0x100>
    110c:	e51b3008 	ldr	r3, [fp, #-8]
    1110:	e5932000 	ldr	r2, [r3]
    1114:	e51b300c 	ldr	r3, [fp, #-12]
    1118:	e5832000 	str	r2, [r3]
    111c:	e51b3008 	ldr	r3, [fp, #-8]
    1120:	e5933004 	ldr	r3, [r3, #4]
    1124:	e1a03183 	lsl	r3, r3, #3
    1128:	e51b2008 	ldr	r2, [fp, #-8]
    112c:	e0823003 	add	r3, r2, r3
    1130:	e51b200c 	ldr	r2, [fp, #-12]
    1134:	e1520003 	cmp	r2, r3
    1138:	1a00000b 	bne	116c <free+0x150>
    113c:	e51b3008 	ldr	r3, [fp, #-8]
    1140:	e5932004 	ldr	r2, [r3, #4]
    1144:	e51b300c 	ldr	r3, [fp, #-12]
    1148:	e5933004 	ldr	r3, [r3, #4]
    114c:	e0822003 	add	r2, r2, r3
    1150:	e51b3008 	ldr	r3, [fp, #-8]
    1154:	e5832004 	str	r2, [r3, #4]
    1158:	e51b300c 	ldr	r3, [fp, #-12]
    115c:	e5932000 	ldr	r2, [r3]
    1160:	e51b3008 	ldr	r3, [fp, #-8]
    1164:	e5832000 	str	r2, [r3]
    1168:	ea000002 	b	1178 <free+0x15c>
    116c:	e51b3008 	ldr	r3, [fp, #-8]
    1170:	e51b200c 	ldr	r2, [fp, #-12]
    1174:	e5832000 	str	r2, [r3]
    1178:	e59f2014 	ldr	r2, [pc, #20]	@ 1194 <free+0x178>
    117c:	e51b3008 	ldr	r3, [fp, #-8]
    1180:	e5823000 	str	r3, [r2]
    1184:	e1a00000 	nop			@ (mov r0, r0)
    1188:	e28bd000 	add	sp, fp, #0
    118c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1190:	e12fff1e 	bx	lr
    1194:	000018fc 	.word	0x000018fc

00001198 <morecore>:
    1198:	e92d4800 	push	{fp, lr}
    119c:	e28db004 	add	fp, sp, #4
    11a0:	e24dd010 	sub	sp, sp, #16
    11a4:	e50b0010 	str	r0, [fp, #-16]
    11a8:	e51b3010 	ldr	r3, [fp, #-16]
    11ac:	e3530a01 	cmp	r3, #4096	@ 0x1000
    11b0:	2a000001 	bcs	11bc <morecore+0x24>
    11b4:	e3a03a01 	mov	r3, #4096	@ 0x1000
    11b8:	e50b3010 	str	r3, [fp, #-16]
    11bc:	e51b3010 	ldr	r3, [fp, #-16]
    11c0:	e1a03183 	lsl	r3, r3, #3
    11c4:	e1a00003 	mov	r0, r3
    11c8:	ebfffe85 	bl	be4 <sbrk>
    11cc:	e50b0008 	str	r0, [fp, #-8]
    11d0:	e51b3008 	ldr	r3, [fp, #-8]
    11d4:	e3730001 	cmn	r3, #1
    11d8:	1a000001 	bne	11e4 <morecore+0x4c>
    11dc:	e3a03000 	mov	r3, #0
    11e0:	ea00000a 	b	1210 <morecore+0x78>
    11e4:	e51b3008 	ldr	r3, [fp, #-8]
    11e8:	e50b300c 	str	r3, [fp, #-12]
    11ec:	e51b300c 	ldr	r3, [fp, #-12]
    11f0:	e51b2010 	ldr	r2, [fp, #-16]
    11f4:	e5832004 	str	r2, [r3, #4]
    11f8:	e51b300c 	ldr	r3, [fp, #-12]
    11fc:	e2833008 	add	r3, r3, #8
    1200:	e1a00003 	mov	r0, r3
    1204:	ebffff84 	bl	101c <free>
    1208:	e59f300c 	ldr	r3, [pc, #12]	@ 121c <morecore+0x84>
    120c:	e5933000 	ldr	r3, [r3]
    1210:	e1a00003 	mov	r0, r3
    1214:	e24bd004 	sub	sp, fp, #4
    1218:	e8bd8800 	pop	{fp, pc}
    121c:	000018fc 	.word	0x000018fc

00001220 <malloc>:
    1220:	e92d4800 	push	{fp, lr}
    1224:	e28db004 	add	fp, sp, #4
    1228:	e24dd018 	sub	sp, sp, #24
    122c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1230:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1234:	e2833007 	add	r3, r3, #7
    1238:	e1a031a3 	lsr	r3, r3, #3
    123c:	e2833001 	add	r3, r3, #1
    1240:	e50b3010 	str	r3, [fp, #-16]
    1244:	e59f3134 	ldr	r3, [pc, #308]	@ 1380 <malloc+0x160>
    1248:	e5933000 	ldr	r3, [r3]
    124c:	e50b300c 	str	r3, [fp, #-12]
    1250:	e51b300c 	ldr	r3, [fp, #-12]
    1254:	e3530000 	cmp	r3, #0
    1258:	1a00000b 	bne	128c <malloc+0x6c>
    125c:	e59f3120 	ldr	r3, [pc, #288]	@ 1384 <malloc+0x164>
    1260:	e50b300c 	str	r3, [fp, #-12]
    1264:	e59f2114 	ldr	r2, [pc, #276]	@ 1380 <malloc+0x160>
    1268:	e51b300c 	ldr	r3, [fp, #-12]
    126c:	e5823000 	str	r3, [r2]
    1270:	e59f3108 	ldr	r3, [pc, #264]	@ 1380 <malloc+0x160>
    1274:	e5933000 	ldr	r3, [r3]
    1278:	e59f2104 	ldr	r2, [pc, #260]	@ 1384 <malloc+0x164>
    127c:	e5823000 	str	r3, [r2]
    1280:	e59f30fc 	ldr	r3, [pc, #252]	@ 1384 <malloc+0x164>
    1284:	e3a02000 	mov	r2, #0
    1288:	e5832004 	str	r2, [r3, #4]
    128c:	e51b300c 	ldr	r3, [fp, #-12]
    1290:	e5933000 	ldr	r3, [r3]
    1294:	e50b3008 	str	r3, [fp, #-8]
    1298:	e51b3008 	ldr	r3, [fp, #-8]
    129c:	e5933004 	ldr	r3, [r3, #4]
    12a0:	e51b2010 	ldr	r2, [fp, #-16]
    12a4:	e1520003 	cmp	r2, r3
    12a8:	8a00001e 	bhi	1328 <malloc+0x108>
    12ac:	e51b3008 	ldr	r3, [fp, #-8]
    12b0:	e5933004 	ldr	r3, [r3, #4]
    12b4:	e51b2010 	ldr	r2, [fp, #-16]
    12b8:	e1520003 	cmp	r2, r3
    12bc:	1a000004 	bne	12d4 <malloc+0xb4>
    12c0:	e51b3008 	ldr	r3, [fp, #-8]
    12c4:	e5932000 	ldr	r2, [r3]
    12c8:	e51b300c 	ldr	r3, [fp, #-12]
    12cc:	e5832000 	str	r2, [r3]
    12d0:	ea00000e 	b	1310 <malloc+0xf0>
    12d4:	e51b3008 	ldr	r3, [fp, #-8]
    12d8:	e5932004 	ldr	r2, [r3, #4]
    12dc:	e51b3010 	ldr	r3, [fp, #-16]
    12e0:	e0422003 	sub	r2, r2, r3
    12e4:	e51b3008 	ldr	r3, [fp, #-8]
    12e8:	e5832004 	str	r2, [r3, #4]
    12ec:	e51b3008 	ldr	r3, [fp, #-8]
    12f0:	e5933004 	ldr	r3, [r3, #4]
    12f4:	e1a03183 	lsl	r3, r3, #3
    12f8:	e51b2008 	ldr	r2, [fp, #-8]
    12fc:	e0823003 	add	r3, r2, r3
    1300:	e50b3008 	str	r3, [fp, #-8]
    1304:	e51b3008 	ldr	r3, [fp, #-8]
    1308:	e51b2010 	ldr	r2, [fp, #-16]
    130c:	e5832004 	str	r2, [r3, #4]
    1310:	e59f2068 	ldr	r2, [pc, #104]	@ 1380 <malloc+0x160>
    1314:	e51b300c 	ldr	r3, [fp, #-12]
    1318:	e5823000 	str	r3, [r2]
    131c:	e51b3008 	ldr	r3, [fp, #-8]
    1320:	e2833008 	add	r3, r3, #8
    1324:	ea000012 	b	1374 <malloc+0x154>
    1328:	e59f3050 	ldr	r3, [pc, #80]	@ 1380 <malloc+0x160>
    132c:	e5933000 	ldr	r3, [r3]
    1330:	e51b2008 	ldr	r2, [fp, #-8]
    1334:	e1520003 	cmp	r2, r3
    1338:	1a000007 	bne	135c <malloc+0x13c>
    133c:	e51b0010 	ldr	r0, [fp, #-16]
    1340:	ebffff94 	bl	1198 <morecore>
    1344:	e50b0008 	str	r0, [fp, #-8]
    1348:	e51b3008 	ldr	r3, [fp, #-8]
    134c:	e3530000 	cmp	r3, #0
    1350:	1a000001 	bne	135c <malloc+0x13c>
    1354:	e3a03000 	mov	r3, #0
    1358:	ea000005 	b	1374 <malloc+0x154>
    135c:	e51b3008 	ldr	r3, [fp, #-8]
    1360:	e50b300c 	str	r3, [fp, #-12]
    1364:	e51b3008 	ldr	r3, [fp, #-8]
    1368:	e5933000 	ldr	r3, [r3]
    136c:	e50b3008 	str	r3, [fp, #-8]
    1370:	eaffffc8 	b	1298 <malloc+0x78>
    1374:	e1a00003 	mov	r0, r3
    1378:	e24bd004 	sub	sp, fp, #4
    137c:	e8bd8800 	pop	{fp, pc}
    1380:	000018fc 	.word	0x000018fc
    1384:	000018f4 	.word	0x000018f4

00001388 <__udivsi3>:
    1388:	e2512001 	subs	r2, r1, #1
    138c:	012fff1e 	bxeq	lr
    1390:	3a000036 	bcc	1470 <__udivsi3+0xe8>
    1394:	e1500001 	cmp	r0, r1
    1398:	9a000022 	bls	1428 <__udivsi3+0xa0>
    139c:	e1110002 	tst	r1, r2
    13a0:	0a000023 	beq	1434 <__udivsi3+0xac>
    13a4:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    13a8:	01a01181 	lsleq	r1, r1, #3
    13ac:	03a03008 	moveq	r3, #8
    13b0:	13a03001 	movne	r3, #1
    13b4:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    13b8:	31510000 	cmpcc	r1, r0
    13bc:	31a01201 	lslcc	r1, r1, #4
    13c0:	31a03203 	lslcc	r3, r3, #4
    13c4:	3afffffa 	bcc	13b4 <__udivsi3+0x2c>
    13c8:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    13cc:	31510000 	cmpcc	r1, r0
    13d0:	31a01081 	lslcc	r1, r1, #1
    13d4:	31a03083 	lslcc	r3, r3, #1
    13d8:	3afffffa 	bcc	13c8 <__udivsi3+0x40>
    13dc:	e3a02000 	mov	r2, #0
    13e0:	e1500001 	cmp	r0, r1
    13e4:	20400001 	subcs	r0, r0, r1
    13e8:	21822003 	orrcs	r2, r2, r3
    13ec:	e15000a1 	cmp	r0, r1, lsr #1
    13f0:	204000a1 	subcs	r0, r0, r1, lsr #1
    13f4:	218220a3 	orrcs	r2, r2, r3, lsr #1
    13f8:	e1500121 	cmp	r0, r1, lsr #2
    13fc:	20400121 	subcs	r0, r0, r1, lsr #2
    1400:	21822123 	orrcs	r2, r2, r3, lsr #2
    1404:	e15001a1 	cmp	r0, r1, lsr #3
    1408:	204001a1 	subcs	r0, r0, r1, lsr #3
    140c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1410:	e3500000 	cmp	r0, #0
    1414:	11b03223 	lsrsne	r3, r3, #4
    1418:	11a01221 	lsrne	r1, r1, #4
    141c:	1affffef 	bne	13e0 <__udivsi3+0x58>
    1420:	e1a00002 	mov	r0, r2
    1424:	e12fff1e 	bx	lr
    1428:	03a00001 	moveq	r0, #1
    142c:	13a00000 	movne	r0, #0
    1430:	e12fff1e 	bx	lr
    1434:	e3510801 	cmp	r1, #65536	@ 0x10000
    1438:	21a01821 	lsrcs	r1, r1, #16
    143c:	23a02010 	movcs	r2, #16
    1440:	33a02000 	movcc	r2, #0
    1444:	e3510c01 	cmp	r1, #256	@ 0x100
    1448:	21a01421 	lsrcs	r1, r1, #8
    144c:	22822008 	addcs	r2, r2, #8
    1450:	e3510010 	cmp	r1, #16
    1454:	21a01221 	lsrcs	r1, r1, #4
    1458:	22822004 	addcs	r2, r2, #4
    145c:	e3510004 	cmp	r1, #4
    1460:	82822003 	addhi	r2, r2, #3
    1464:	908220a1 	addls	r2, r2, r1, lsr #1
    1468:	e1a00230 	lsr	r0, r0, r2
    146c:	e12fff1e 	bx	lr
    1470:	e3500000 	cmp	r0, #0
    1474:	13e00000 	mvnne	r0, #0
    1478:	ea000007 	b	149c <__aeabi_idiv0>

0000147c <__aeabi_uidivmod>:
    147c:	e3510000 	cmp	r1, #0
    1480:	0afffffa 	beq	1470 <__udivsi3+0xe8>
    1484:	e92d4003 	push	{r0, r1, lr}
    1488:	ebffffbe 	bl	1388 <__udivsi3>
    148c:	e8bd4006 	pop	{r1, r2, lr}
    1490:	e0030092 	mul	r3, r2, r0
    1494:	e0411003 	sub	r1, r1, r3
    1498:	e12fff1e 	bx	lr

0000149c <__aeabi_idiv0>:
    149c:	e12fff1e 	bx	lr
