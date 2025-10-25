
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
      88:	eb00033a 	bl	d78 <write>
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
     11c:	eb00030c 	bl	d54 <read>
     120:	e50b0010 	str	r0, [fp, #-16]
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e3530000 	cmp	r3, #0
     12c:	caffffbb 	bgt	20 <grep+0x20>
     130:	e1a00000 	nop			@ (mov r0, r0)
     134:	e1a00000 	nop			@ (mov r0, r0)
     138:	e24bd004 	sub	sp, fp, #4
     13c:	e8bd8800 	pop	{fp, pc}
     140:	00001a54 	.word	0x00001a54

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
     16c:	eb000474 	bl	1344 <printf>
     170:	eb0002dc 	bl	ce8 <exit>
     174:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     178:	e5933004 	ldr	r3, [r3, #4]
     17c:	e50b300c 	str	r3, [fp, #-12]
     180:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     184:	e3530002 	cmp	r3, #2
     188:	ca000003 	bgt	19c <main+0x58>
     18c:	e3a01000 	mov	r1, #0
     190:	e51b000c 	ldr	r0, [fp, #-12]
     194:	ebffff99 	bl	0 <grep>
     198:	eb0002d2 	bl	ce8 <exit>
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
     1c4:	eb00030f 	bl	e08 <open>
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
     1f8:	eb000451 	bl	1344 <printf>
     1fc:	eb0002b9 	bl	ce8 <exit>
     200:	e51b1010 	ldr	r1, [fp, #-16]
     204:	e51b000c 	ldr	r0, [fp, #-12]
     208:	ebffff7c 	bl	0 <grep>
     20c:	e51b0010 	ldr	r0, [fp, #-16]
     210:	eb0002e1 	bl	d9c <close>
     214:	e51b3008 	ldr	r3, [fp, #-8]
     218:	e2833001 	add	r3, r3, #1
     21c:	e50b3008 	str	r3, [fp, #-8]
     220:	e51b2008 	ldr	r2, [fp, #-8]
     224:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     228:	e1520003 	cmp	r2, r3
     22c:	baffffdd 	blt	1a8 <main+0x64>
     230:	eb0002ac 	bl	ce8 <exit>
     234:	00001a00 	.word	0x00001a00
     238:	00001a20 	.word	0x00001a20

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
     750:	eb00017f 	bl	d54 <read>
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
     7f8:	eb000182 	bl	e08 <open>
     7fc:	e50b0008 	str	r0, [fp, #-8]
     800:	e51b3008 	ldr	r3, [fp, #-8]
     804:	e3530000 	cmp	r3, #0
     808:	aa000001 	bge	814 <stat+0x38>
     80c:	e3e03000 	mvn	r3, #0
     810:	ea000006 	b	830 <stat+0x54>
     814:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     818:	e51b0008 	ldr	r0, [fp, #-8]
     81c:	eb000194 	bl	e74 <fstat>
     820:	e50b000c 	str	r0, [fp, #-12]
     824:	e51b0008 	ldr	r0, [fp, #-8]
     828:	eb00015b 	bl	d9c <close>
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

00000984 <xchg>:
     984:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     988:	e28db000 	add	fp, sp, #0
     98c:	e24dd00c 	sub	sp, sp, #12
     990:	e50b0008 	str	r0, [fp, #-8]
     994:	e50b100c 	str	r1, [fp, #-12]
     998:	e51b200c 	ldr	r2, [fp, #-12]
     99c:	e51b3008 	ldr	r3, [fp, #-8]
     9a0:	e1931f9f 	ldrex	r1, [r3]
     9a4:	e1830f92 	strex	r0, r2, [r3]
     9a8:	e3500000 	cmp	r0, #0
     9ac:	1afffffb 	bne	9a0 <xchg+0x1c>
     9b0:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     9b4:	e1a03001 	mov	r3, r1
     9b8:	e1a00003 	mov	r0, r3
     9bc:	e28bd000 	add	sp, fp, #0
     9c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     9c4:	e12fff1e 	bx	lr

000009c8 <acquireLock>:
     9c8:	e92d4800 	push	{fp, lr}
     9cc:	e28db004 	add	fp, sp, #4
     9d0:	e24dd008 	sub	sp, sp, #8
     9d4:	e50b0008 	str	r0, [fp, #-8]
     9d8:	e51b3008 	ldr	r3, [fp, #-8]
     9dc:	e5933004 	ldr	r3, [r3, #4]
     9e0:	e3530000 	cmp	r3, #0
     9e4:	0a000008 	beq	a0c <acquireLock+0x44>
     9e8:	e1a00000 	nop			@ (mov r0, r0)
     9ec:	e51b3008 	ldr	r3, [fp, #-8]
     9f0:	e3a01001 	mov	r1, #1
     9f4:	e1a00003 	mov	r0, r3
     9f8:	ebffffe1 	bl	984 <xchg>
     9fc:	e1a03000 	mov	r3, r0
     a00:	e3530000 	cmp	r3, #0
     a04:	1afffff8 	bne	9ec <acquireLock+0x24>
     a08:	ea000000 	b	a10 <acquireLock+0x48>
     a0c:	e1a00000 	nop			@ (mov r0, r0)
     a10:	e24bd004 	sub	sp, fp, #4
     a14:	e8bd8800 	pop	{fp, pc}

00000a18 <releaseLock>:
     a18:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     a1c:	e28db000 	add	fp, sp, #0
     a20:	e24dd00c 	sub	sp, sp, #12
     a24:	e50b0008 	str	r0, [fp, #-8]
     a28:	e51b3008 	ldr	r3, [fp, #-8]
     a2c:	e5933004 	ldr	r3, [r3, #4]
     a30:	e3530000 	cmp	r3, #0
     a34:	0a000007 	beq	a58 <releaseLock+0x40>
     a38:	e51b3008 	ldr	r3, [fp, #-8]
     a3c:	e5933000 	ldr	r3, [r3]
     a40:	e3530001 	cmp	r3, #1
     a44:	1a000005 	bne	a60 <releaseLock+0x48>
     a48:	e51b3008 	ldr	r3, [fp, #-8]
     a4c:	e3a02000 	mov	r2, #0
     a50:	e5832000 	str	r2, [r3]
     a54:	ea000002 	b	a64 <releaseLock+0x4c>
     a58:	e1a00000 	nop			@ (mov r0, r0)
     a5c:	ea000000 	b	a64 <releaseLock+0x4c>
     a60:	e1a00000 	nop			@ (mov r0, r0)
     a64:	e28bd000 	add	sp, fp, #0
     a68:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     a6c:	e12fff1e 	bx	lr

00000a70 <initiateCondVar>:
     a70:	e92d4800 	push	{fp, lr}
     a74:	e28db004 	add	fp, sp, #4
     a78:	e24dd008 	sub	sp, sp, #8
     a7c:	e50b0008 	str	r0, [fp, #-8]
     a80:	eb0001b8 	bl	1168 <getChannel>
     a84:	e1a02000 	mov	r2, r0
     a88:	e51b3008 	ldr	r3, [fp, #-8]
     a8c:	e5832000 	str	r2, [r3]
     a90:	e51b3008 	ldr	r3, [fp, #-8]
     a94:	e3a02001 	mov	r2, #1
     a98:	e5832004 	str	r2, [r3, #4]
     a9c:	e1a00000 	nop			@ (mov r0, r0)
     aa0:	e24bd004 	sub	sp, fp, #4
     aa4:	e8bd8800 	pop	{fp, pc}

00000aa8 <condWait>:
     aa8:	e92d4800 	push	{fp, lr}
     aac:	e28db004 	add	fp, sp, #4
     ab0:	e24dd008 	sub	sp, sp, #8
     ab4:	e50b0008 	str	r0, [fp, #-8]
     ab8:	e50b100c 	str	r1, [fp, #-12]
     abc:	e51b3008 	ldr	r3, [fp, #-8]
     ac0:	e5933004 	ldr	r3, [r3, #4]
     ac4:	e3530000 	cmp	r3, #0
     ac8:	0a00000c 	beq	b00 <condWait+0x58>
     acc:	e51b300c 	ldr	r3, [fp, #-12]
     ad0:	e5933004 	ldr	r3, [r3, #4]
     ad4:	e3530000 	cmp	r3, #0
     ad8:	0a000008 	beq	b00 <condWait+0x58>
     adc:	e51b000c 	ldr	r0, [fp, #-12]
     ae0:	ebffffcc 	bl	a18 <releaseLock>
     ae4:	e51b3008 	ldr	r3, [fp, #-8]
     ae8:	e5933000 	ldr	r3, [r3]
     aec:	e1a00003 	mov	r0, r3
     af0:	eb000193 	bl	1144 <sleepChan>
     af4:	e51b000c 	ldr	r0, [fp, #-12]
     af8:	ebffffb2 	bl	9c8 <acquireLock>
     afc:	ea000000 	b	b04 <condWait+0x5c>
     b00:	e1a00000 	nop			@ (mov r0, r0)
     b04:	e24bd004 	sub	sp, fp, #4
     b08:	e8bd8800 	pop	{fp, pc}

00000b0c <broadcast>:
     b0c:	e92d4800 	push	{fp, lr}
     b10:	e28db004 	add	fp, sp, #4
     b14:	e24dd008 	sub	sp, sp, #8
     b18:	e50b0008 	str	r0, [fp, #-8]
     b1c:	e51b3008 	ldr	r3, [fp, #-8]
     b20:	e5933004 	ldr	r3, [r3, #4]
     b24:	e3530000 	cmp	r3, #0
     b28:	0a000004 	beq	b40 <broadcast+0x34>
     b2c:	e51b3008 	ldr	r3, [fp, #-8]
     b30:	e5933000 	ldr	r3, [r3]
     b34:	e1a00003 	mov	r0, r3
     b38:	eb000193 	bl	118c <sigChan>
     b3c:	ea000000 	b	b44 <broadcast+0x38>
     b40:	e1a00000 	nop			@ (mov r0, r0)
     b44:	e24bd004 	sub	sp, fp, #4
     b48:	e8bd8800 	pop	{fp, pc}

00000b4c <signal>:
     b4c:	e92d4800 	push	{fp, lr}
     b50:	e28db004 	add	fp, sp, #4
     b54:	e24dd008 	sub	sp, sp, #8
     b58:	e50b0008 	str	r0, [fp, #-8]
     b5c:	e51b3008 	ldr	r3, [fp, #-8]
     b60:	e5933004 	ldr	r3, [r3, #4]
     b64:	e3530000 	cmp	r3, #0
     b68:	0a000004 	beq	b80 <signal+0x34>
     b6c:	e51b3008 	ldr	r3, [fp, #-8]
     b70:	e5933000 	ldr	r3, [r3]
     b74:	e1a00003 	mov	r0, r3
     b78:	eb00018c 	bl	11b0 <sigOneChan>
     b7c:	ea000000 	b	b84 <signal+0x38>
     b80:	e1a00000 	nop			@ (mov r0, r0)
     b84:	e24bd004 	sub	sp, fp, #4
     b88:	e8bd8800 	pop	{fp, pc}

00000b8c <semInit>:
     b8c:	e92d4800 	push	{fp, lr}
     b90:	e28db004 	add	fp, sp, #4
     b94:	e24dd008 	sub	sp, sp, #8
     b98:	e50b0008 	str	r0, [fp, #-8]
     b9c:	e50b100c 	str	r1, [fp, #-12]
     ba0:	e51b3008 	ldr	r3, [fp, #-8]
     ba4:	e51b200c 	ldr	r2, [fp, #-12]
     ba8:	e5832000 	str	r2, [r3]
     bac:	e51b3008 	ldr	r3, [fp, #-8]
     bb0:	e2833004 	add	r3, r3, #4
     bb4:	e1a00003 	mov	r0, r3
     bb8:	ebffff63 	bl	94c <initiateLock>
     bbc:	e51b3008 	ldr	r3, [fp, #-8]
     bc0:	e283300c 	add	r3, r3, #12
     bc4:	e1a00003 	mov	r0, r3
     bc8:	ebffffa8 	bl	a70 <initiateCondVar>
     bcc:	e51b3008 	ldr	r3, [fp, #-8]
     bd0:	e3a02001 	mov	r2, #1
     bd4:	e5832014 	str	r2, [r3, #20]
     bd8:	e1a00000 	nop			@ (mov r0, r0)
     bdc:	e24bd004 	sub	sp, fp, #4
     be0:	e8bd8800 	pop	{fp, pc}

00000be4 <semUp>:
     be4:	e92d4800 	push	{fp, lr}
     be8:	e28db004 	add	fp, sp, #4
     bec:	e24dd008 	sub	sp, sp, #8
     bf0:	e50b0008 	str	r0, [fp, #-8]
     bf4:	e51b3008 	ldr	r3, [fp, #-8]
     bf8:	e2833004 	add	r3, r3, #4
     bfc:	e1a00003 	mov	r0, r3
     c00:	ebffff70 	bl	9c8 <acquireLock>
     c04:	e51b3008 	ldr	r3, [fp, #-8]
     c08:	e5933000 	ldr	r3, [r3]
     c0c:	e2832001 	add	r2, r3, #1
     c10:	e51b3008 	ldr	r3, [fp, #-8]
     c14:	e5832000 	str	r2, [r3]
     c18:	e51b3008 	ldr	r3, [fp, #-8]
     c1c:	e283300c 	add	r3, r3, #12
     c20:	e1a00003 	mov	r0, r3
     c24:	ebffffc8 	bl	b4c <signal>
     c28:	e51b3008 	ldr	r3, [fp, #-8]
     c2c:	e2833004 	add	r3, r3, #4
     c30:	e1a00003 	mov	r0, r3
     c34:	ebffff77 	bl	a18 <releaseLock>
     c38:	e1a00000 	nop			@ (mov r0, r0)
     c3c:	e24bd004 	sub	sp, fp, #4
     c40:	e8bd8800 	pop	{fp, pc}

00000c44 <semDown>:
     c44:	e92d4800 	push	{fp, lr}
     c48:	e28db004 	add	fp, sp, #4
     c4c:	e24dd008 	sub	sp, sp, #8
     c50:	e50b0008 	str	r0, [fp, #-8]
     c54:	e51b3008 	ldr	r3, [fp, #-8]
     c58:	e2833004 	add	r3, r3, #4
     c5c:	e1a00003 	mov	r0, r3
     c60:	ebffff58 	bl	9c8 <acquireLock>
     c64:	ea000006 	b	c84 <semDown+0x40>
     c68:	e51b3008 	ldr	r3, [fp, #-8]
     c6c:	e283200c 	add	r2, r3, #12
     c70:	e51b3008 	ldr	r3, [fp, #-8]
     c74:	e2833004 	add	r3, r3, #4
     c78:	e1a01003 	mov	r1, r3
     c7c:	e1a00002 	mov	r0, r2
     c80:	ebffff88 	bl	aa8 <condWait>
     c84:	e51b3008 	ldr	r3, [fp, #-8]
     c88:	e5933000 	ldr	r3, [r3]
     c8c:	e3530000 	cmp	r3, #0
     c90:	dafffff4 	ble	c68 <semDown+0x24>
     c94:	e51b3008 	ldr	r3, [fp, #-8]
     c98:	e5933000 	ldr	r3, [r3]
     c9c:	e2432001 	sub	r2, r3, #1
     ca0:	e51b3008 	ldr	r3, [fp, #-8]
     ca4:	e5832000 	str	r2, [r3]
     ca8:	e51b3008 	ldr	r3, [fp, #-8]
     cac:	e2833004 	add	r3, r3, #4
     cb0:	e1a00003 	mov	r0, r3
     cb4:	ebffff57 	bl	a18 <releaseLock>
     cb8:	e1a00000 	nop			@ (mov r0, r0)
     cbc:	e24bd004 	sub	sp, fp, #4
     cc0:	e8bd8800 	pop	{fp, pc}

00000cc4 <fork>:
     cc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc8:	e1a04003 	mov	r4, r3
     ccc:	e1a03002 	mov	r3, r2
     cd0:	e1a02001 	mov	r2, r1
     cd4:	e1a01000 	mov	r1, r0
     cd8:	e3a00001 	mov	r0, #1
     cdc:	ef000000 	svc	0x00000000
     ce0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce4:	e12fff1e 	bx	lr

00000ce8 <exit>:
     ce8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cec:	e1a04003 	mov	r4, r3
     cf0:	e1a03002 	mov	r3, r2
     cf4:	e1a02001 	mov	r2, r1
     cf8:	e1a01000 	mov	r1, r0
     cfc:	e3a00002 	mov	r0, #2
     d00:	ef000000 	svc	0x00000000
     d04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d08:	e12fff1e 	bx	lr

00000d0c <wait>:
     d0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d10:	e1a04003 	mov	r4, r3
     d14:	e1a03002 	mov	r3, r2
     d18:	e1a02001 	mov	r2, r1
     d1c:	e1a01000 	mov	r1, r0
     d20:	e3a00003 	mov	r0, #3
     d24:	ef000000 	svc	0x00000000
     d28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d2c:	e12fff1e 	bx	lr

00000d30 <pipe>:
     d30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d34:	e1a04003 	mov	r4, r3
     d38:	e1a03002 	mov	r3, r2
     d3c:	e1a02001 	mov	r2, r1
     d40:	e1a01000 	mov	r1, r0
     d44:	e3a00004 	mov	r0, #4
     d48:	ef000000 	svc	0x00000000
     d4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d50:	e12fff1e 	bx	lr

00000d54 <read>:
     d54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d58:	e1a04003 	mov	r4, r3
     d5c:	e1a03002 	mov	r3, r2
     d60:	e1a02001 	mov	r2, r1
     d64:	e1a01000 	mov	r1, r0
     d68:	e3a00005 	mov	r0, #5
     d6c:	ef000000 	svc	0x00000000
     d70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d74:	e12fff1e 	bx	lr

00000d78 <write>:
     d78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d7c:	e1a04003 	mov	r4, r3
     d80:	e1a03002 	mov	r3, r2
     d84:	e1a02001 	mov	r2, r1
     d88:	e1a01000 	mov	r1, r0
     d8c:	e3a00010 	mov	r0, #16
     d90:	ef000000 	svc	0x00000000
     d94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d98:	e12fff1e 	bx	lr

00000d9c <close>:
     d9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da0:	e1a04003 	mov	r4, r3
     da4:	e1a03002 	mov	r3, r2
     da8:	e1a02001 	mov	r2, r1
     dac:	e1a01000 	mov	r1, r0
     db0:	e3a00015 	mov	r0, #21
     db4:	ef000000 	svc	0x00000000
     db8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dbc:	e12fff1e 	bx	lr

00000dc0 <kill>:
     dc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dc4:	e1a04003 	mov	r4, r3
     dc8:	e1a03002 	mov	r3, r2
     dcc:	e1a02001 	mov	r2, r1
     dd0:	e1a01000 	mov	r1, r0
     dd4:	e3a00006 	mov	r0, #6
     dd8:	ef000000 	svc	0x00000000
     ddc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     de0:	e12fff1e 	bx	lr

00000de4 <exec>:
     de4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     de8:	e1a04003 	mov	r4, r3
     dec:	e1a03002 	mov	r3, r2
     df0:	e1a02001 	mov	r2, r1
     df4:	e1a01000 	mov	r1, r0
     df8:	e3a00007 	mov	r0, #7
     dfc:	ef000000 	svc	0x00000000
     e00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e04:	e12fff1e 	bx	lr

00000e08 <open>:
     e08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e0c:	e1a04003 	mov	r4, r3
     e10:	e1a03002 	mov	r3, r2
     e14:	e1a02001 	mov	r2, r1
     e18:	e1a01000 	mov	r1, r0
     e1c:	e3a0000f 	mov	r0, #15
     e20:	ef000000 	svc	0x00000000
     e24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e28:	e12fff1e 	bx	lr

00000e2c <mknod>:
     e2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e30:	e1a04003 	mov	r4, r3
     e34:	e1a03002 	mov	r3, r2
     e38:	e1a02001 	mov	r2, r1
     e3c:	e1a01000 	mov	r1, r0
     e40:	e3a00011 	mov	r0, #17
     e44:	ef000000 	svc	0x00000000
     e48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e4c:	e12fff1e 	bx	lr

00000e50 <unlink>:
     e50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e54:	e1a04003 	mov	r4, r3
     e58:	e1a03002 	mov	r3, r2
     e5c:	e1a02001 	mov	r2, r1
     e60:	e1a01000 	mov	r1, r0
     e64:	e3a00012 	mov	r0, #18
     e68:	ef000000 	svc	0x00000000
     e6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e70:	e12fff1e 	bx	lr

00000e74 <fstat>:
     e74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e78:	e1a04003 	mov	r4, r3
     e7c:	e1a03002 	mov	r3, r2
     e80:	e1a02001 	mov	r2, r1
     e84:	e1a01000 	mov	r1, r0
     e88:	e3a00008 	mov	r0, #8
     e8c:	ef000000 	svc	0x00000000
     e90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e94:	e12fff1e 	bx	lr

00000e98 <link>:
     e98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e9c:	e1a04003 	mov	r4, r3
     ea0:	e1a03002 	mov	r3, r2
     ea4:	e1a02001 	mov	r2, r1
     ea8:	e1a01000 	mov	r1, r0
     eac:	e3a00013 	mov	r0, #19
     eb0:	ef000000 	svc	0x00000000
     eb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eb8:	e12fff1e 	bx	lr

00000ebc <mkdir>:
     ebc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ec0:	e1a04003 	mov	r4, r3
     ec4:	e1a03002 	mov	r3, r2
     ec8:	e1a02001 	mov	r2, r1
     ecc:	e1a01000 	mov	r1, r0
     ed0:	e3a00014 	mov	r0, #20
     ed4:	ef000000 	svc	0x00000000
     ed8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     edc:	e12fff1e 	bx	lr

00000ee0 <chdir>:
     ee0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ee4:	e1a04003 	mov	r4, r3
     ee8:	e1a03002 	mov	r3, r2
     eec:	e1a02001 	mov	r2, r1
     ef0:	e1a01000 	mov	r1, r0
     ef4:	e3a00009 	mov	r0, #9
     ef8:	ef000000 	svc	0x00000000
     efc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f00:	e12fff1e 	bx	lr

00000f04 <dup>:
     f04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f08:	e1a04003 	mov	r4, r3
     f0c:	e1a03002 	mov	r3, r2
     f10:	e1a02001 	mov	r2, r1
     f14:	e1a01000 	mov	r1, r0
     f18:	e3a0000a 	mov	r0, #10
     f1c:	ef000000 	svc	0x00000000
     f20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f24:	e12fff1e 	bx	lr

00000f28 <getpid>:
     f28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f2c:	e1a04003 	mov	r4, r3
     f30:	e1a03002 	mov	r3, r2
     f34:	e1a02001 	mov	r2, r1
     f38:	e1a01000 	mov	r1, r0
     f3c:	e3a0000b 	mov	r0, #11
     f40:	ef000000 	svc	0x00000000
     f44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f48:	e12fff1e 	bx	lr

00000f4c <sbrk>:
     f4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f50:	e1a04003 	mov	r4, r3
     f54:	e1a03002 	mov	r3, r2
     f58:	e1a02001 	mov	r2, r1
     f5c:	e1a01000 	mov	r1, r0
     f60:	e3a0000c 	mov	r0, #12
     f64:	ef000000 	svc	0x00000000
     f68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f6c:	e12fff1e 	bx	lr

00000f70 <sleep>:
     f70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f74:	e1a04003 	mov	r4, r3
     f78:	e1a03002 	mov	r3, r2
     f7c:	e1a02001 	mov	r2, r1
     f80:	e1a01000 	mov	r1, r0
     f84:	e3a0000d 	mov	r0, #13
     f88:	ef000000 	svc	0x00000000
     f8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f90:	e12fff1e 	bx	lr

00000f94 <uptime>:
     f94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f98:	e1a04003 	mov	r4, r3
     f9c:	e1a03002 	mov	r3, r2
     fa0:	e1a02001 	mov	r2, r1
     fa4:	e1a01000 	mov	r1, r0
     fa8:	e3a0000e 	mov	r0, #14
     fac:	ef000000 	svc	0x00000000
     fb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fb4:	e12fff1e 	bx	lr

00000fb8 <getprocs>:
     fb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fbc:	e1a04003 	mov	r4, r3
     fc0:	e1a03002 	mov	r3, r2
     fc4:	e1a02001 	mov	r2, r1
     fc8:	e1a01000 	mov	r1, r0
     fcc:	e3a00016 	mov	r0, #22
     fd0:	ef000000 	svc	0x00000000
     fd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fd8:	e12fff1e 	bx	lr

00000fdc <settickets>:
     fdc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fe0:	e1a04003 	mov	r4, r3
     fe4:	e1a03002 	mov	r3, r2
     fe8:	e1a02001 	mov	r2, r1
     fec:	e1a01000 	mov	r1, r0
     ff0:	e3a00017 	mov	r0, #23
     ff4:	ef000000 	svc	0x00000000
     ff8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ffc:	e12fff1e 	bx	lr

00001000 <srand>:
    1000:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1004:	e1a04003 	mov	r4, r3
    1008:	e1a03002 	mov	r3, r2
    100c:	e1a02001 	mov	r2, r1
    1010:	e1a01000 	mov	r1, r0
    1014:	e3a00018 	mov	r0, #24
    1018:	ef000000 	svc	0x00000000
    101c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1020:	e12fff1e 	bx	lr

00001024 <getpinfo>:
    1024:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1028:	e1a04003 	mov	r4, r3
    102c:	e1a03002 	mov	r3, r2
    1030:	e1a02001 	mov	r2, r1
    1034:	e1a01000 	mov	r1, r0
    1038:	e3a00019 	mov	r0, #25
    103c:	ef000000 	svc	0x00000000
    1040:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1044:	e12fff1e 	bx	lr

00001048 <dumppagetable>:
    1048:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    104c:	e1a04003 	mov	r4, r3
    1050:	e1a03002 	mov	r3, r2
    1054:	e1a02001 	mov	r2, r1
    1058:	e1a01000 	mov	r1, r0
    105c:	e3a0001a 	mov	r0, #26
    1060:	ef000000 	svc	0x00000000
    1064:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1068:	e12fff1e 	bx	lr

0000106c <thread_create>:
    106c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1070:	e1a04003 	mov	r4, r3
    1074:	e1a03002 	mov	r3, r2
    1078:	e1a02001 	mov	r2, r1
    107c:	e1a01000 	mov	r1, r0
    1080:	e3a0001b 	mov	r0, #27
    1084:	ef000000 	svc	0x00000000
    1088:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    108c:	e12fff1e 	bx	lr

00001090 <thread_exit>:
    1090:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1094:	e1a04003 	mov	r4, r3
    1098:	e1a03002 	mov	r3, r2
    109c:	e1a02001 	mov	r2, r1
    10a0:	e1a01000 	mov	r1, r0
    10a4:	e3a0001c 	mov	r0, #28
    10a8:	ef000000 	svc	0x00000000
    10ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10b0:	e12fff1e 	bx	lr

000010b4 <thread_join>:
    10b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10b8:	e1a04003 	mov	r4, r3
    10bc:	e1a03002 	mov	r3, r2
    10c0:	e1a02001 	mov	r2, r1
    10c4:	e1a01000 	mov	r1, r0
    10c8:	e3a0001d 	mov	r0, #29
    10cc:	ef000000 	svc	0x00000000
    10d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10d4:	e12fff1e 	bx	lr

000010d8 <waitpid>:
    10d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10dc:	e1a04003 	mov	r4, r3
    10e0:	e1a03002 	mov	r3, r2
    10e4:	e1a02001 	mov	r2, r1
    10e8:	e1a01000 	mov	r1, r0
    10ec:	e3a0001e 	mov	r0, #30
    10f0:	ef000000 	svc	0x00000000
    10f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10f8:	e12fff1e 	bx	lr

000010fc <barrier_init>:
    10fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1100:	e1a04003 	mov	r4, r3
    1104:	e1a03002 	mov	r3, r2
    1108:	e1a02001 	mov	r2, r1
    110c:	e1a01000 	mov	r1, r0
    1110:	e3a0001f 	mov	r0, #31
    1114:	ef000000 	svc	0x00000000
    1118:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    111c:	e12fff1e 	bx	lr

00001120 <barrier_check>:
    1120:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1124:	e1a04003 	mov	r4, r3
    1128:	e1a03002 	mov	r3, r2
    112c:	e1a02001 	mov	r2, r1
    1130:	e1a01000 	mov	r1, r0
    1134:	e3a00020 	mov	r0, #32
    1138:	ef000000 	svc	0x00000000
    113c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1140:	e12fff1e 	bx	lr

00001144 <sleepChan>:
    1144:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1148:	e1a04003 	mov	r4, r3
    114c:	e1a03002 	mov	r3, r2
    1150:	e1a02001 	mov	r2, r1
    1154:	e1a01000 	mov	r1, r0
    1158:	e3a00024 	mov	r0, #36	@ 0x24
    115c:	ef000000 	svc	0x00000000
    1160:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1164:	e12fff1e 	bx	lr

00001168 <getChannel>:
    1168:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    116c:	e1a04003 	mov	r4, r3
    1170:	e1a03002 	mov	r3, r2
    1174:	e1a02001 	mov	r2, r1
    1178:	e1a01000 	mov	r1, r0
    117c:	e3a00025 	mov	r0, #37	@ 0x25
    1180:	ef000000 	svc	0x00000000
    1184:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1188:	e12fff1e 	bx	lr

0000118c <sigChan>:
    118c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1190:	e1a04003 	mov	r4, r3
    1194:	e1a03002 	mov	r3, r2
    1198:	e1a02001 	mov	r2, r1
    119c:	e1a01000 	mov	r1, r0
    11a0:	e3a00026 	mov	r0, #38	@ 0x26
    11a4:	ef000000 	svc	0x00000000
    11a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    11ac:	e12fff1e 	bx	lr

000011b0 <sigOneChan>:
    11b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    11b4:	e1a04003 	mov	r4, r3
    11b8:	e1a03002 	mov	r3, r2
    11bc:	e1a02001 	mov	r2, r1
    11c0:	e1a01000 	mov	r1, r0
    11c4:	e3a00027 	mov	r0, #39	@ 0x27
    11c8:	ef000000 	svc	0x00000000
    11cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    11d0:	e12fff1e 	bx	lr

000011d4 <putc>:
    11d4:	e92d4800 	push	{fp, lr}
    11d8:	e28db004 	add	fp, sp, #4
    11dc:	e24dd008 	sub	sp, sp, #8
    11e0:	e50b0008 	str	r0, [fp, #-8]
    11e4:	e1a03001 	mov	r3, r1
    11e8:	e54b3009 	strb	r3, [fp, #-9]
    11ec:	e24b3009 	sub	r3, fp, #9
    11f0:	e3a02001 	mov	r2, #1
    11f4:	e1a01003 	mov	r1, r3
    11f8:	e51b0008 	ldr	r0, [fp, #-8]
    11fc:	ebfffedd 	bl	d78 <write>
    1200:	e1a00000 	nop			@ (mov r0, r0)
    1204:	e24bd004 	sub	sp, fp, #4
    1208:	e8bd8800 	pop	{fp, pc}

0000120c <printint>:
    120c:	e92d4800 	push	{fp, lr}
    1210:	e28db004 	add	fp, sp, #4
    1214:	e24dd030 	sub	sp, sp, #48	@ 0x30
    1218:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    121c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    1220:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    1224:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    1228:	e3a03000 	mov	r3, #0
    122c:	e50b300c 	str	r3, [fp, #-12]
    1230:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    1234:	e3530000 	cmp	r3, #0
    1238:	0a000008 	beq	1260 <printint+0x54>
    123c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1240:	e3530000 	cmp	r3, #0
    1244:	aa000005 	bge	1260 <printint+0x54>
    1248:	e3a03001 	mov	r3, #1
    124c:	e50b300c 	str	r3, [fp, #-12]
    1250:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1254:	e2633000 	rsb	r3, r3, #0
    1258:	e50b3010 	str	r3, [fp, #-16]
    125c:	ea000001 	b	1268 <printint+0x5c>
    1260:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1264:	e50b3010 	str	r3, [fp, #-16]
    1268:	e3a03000 	mov	r3, #0
    126c:	e50b3008 	str	r3, [fp, #-8]
    1270:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    1274:	e51b3010 	ldr	r3, [fp, #-16]
    1278:	e1a01002 	mov	r1, r2
    127c:	e1a00003 	mov	r0, r3
    1280:	eb0001d5 	bl	19dc <__aeabi_uidivmod>
    1284:	e1a03001 	mov	r3, r1
    1288:	e1a01003 	mov	r1, r3
    128c:	e51b3008 	ldr	r3, [fp, #-8]
    1290:	e2832001 	add	r2, r3, #1
    1294:	e50b2008 	str	r2, [fp, #-8]
    1298:	e59f20a0 	ldr	r2, [pc, #160]	@ 1340 <printint+0x134>
    129c:	e7d22001 	ldrb	r2, [r2, r1]
    12a0:	e2433004 	sub	r3, r3, #4
    12a4:	e083300b 	add	r3, r3, fp
    12a8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    12ac:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    12b0:	e1a01003 	mov	r1, r3
    12b4:	e51b0010 	ldr	r0, [fp, #-16]
    12b8:	eb00018a 	bl	18e8 <__udivsi3>
    12bc:	e1a03000 	mov	r3, r0
    12c0:	e50b3010 	str	r3, [fp, #-16]
    12c4:	e51b3010 	ldr	r3, [fp, #-16]
    12c8:	e3530000 	cmp	r3, #0
    12cc:	1affffe7 	bne	1270 <printint+0x64>
    12d0:	e51b300c 	ldr	r3, [fp, #-12]
    12d4:	e3530000 	cmp	r3, #0
    12d8:	0a00000e 	beq	1318 <printint+0x10c>
    12dc:	e51b3008 	ldr	r3, [fp, #-8]
    12e0:	e2832001 	add	r2, r3, #1
    12e4:	e50b2008 	str	r2, [fp, #-8]
    12e8:	e2433004 	sub	r3, r3, #4
    12ec:	e083300b 	add	r3, r3, fp
    12f0:	e3a0202d 	mov	r2, #45	@ 0x2d
    12f4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    12f8:	ea000006 	b	1318 <printint+0x10c>
    12fc:	e24b2020 	sub	r2, fp, #32
    1300:	e51b3008 	ldr	r3, [fp, #-8]
    1304:	e0823003 	add	r3, r2, r3
    1308:	e5d33000 	ldrb	r3, [r3]
    130c:	e1a01003 	mov	r1, r3
    1310:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1314:	ebffffae 	bl	11d4 <putc>
    1318:	e51b3008 	ldr	r3, [fp, #-8]
    131c:	e2433001 	sub	r3, r3, #1
    1320:	e50b3008 	str	r3, [fp, #-8]
    1324:	e51b3008 	ldr	r3, [fp, #-8]
    1328:	e3530000 	cmp	r3, #0
    132c:	aafffff2 	bge	12fc <printint+0xf0>
    1330:	e1a00000 	nop			@ (mov r0, r0)
    1334:	e1a00000 	nop			@ (mov r0, r0)
    1338:	e24bd004 	sub	sp, fp, #4
    133c:	e8bd8800 	pop	{fp, pc}
    1340:	00001a40 	.word	0x00001a40

00001344 <printf>:
    1344:	e92d000e 	push	{r1, r2, r3}
    1348:	e92d4800 	push	{fp, lr}
    134c:	e28db004 	add	fp, sp, #4
    1350:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1354:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1358:	e3a03000 	mov	r3, #0
    135c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1360:	e28b3008 	add	r3, fp, #8
    1364:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1368:	e3a03000 	mov	r3, #0
    136c:	e50b3010 	str	r3, [fp, #-16]
    1370:	ea000074 	b	1548 <printf+0x204>
    1374:	e59b2004 	ldr	r2, [fp, #4]
    1378:	e51b3010 	ldr	r3, [fp, #-16]
    137c:	e0823003 	add	r3, r2, r3
    1380:	e5d33000 	ldrb	r3, [r3]
    1384:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1388:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    138c:	e3530000 	cmp	r3, #0
    1390:	1a00000b 	bne	13c4 <printf+0x80>
    1394:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1398:	e3530025 	cmp	r3, #37	@ 0x25
    139c:	1a000002 	bne	13ac <printf+0x68>
    13a0:	e3a03025 	mov	r3, #37	@ 0x25
    13a4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    13a8:	ea000063 	b	153c <printf+0x1f8>
    13ac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13b0:	e6ef3073 	uxtb	r3, r3
    13b4:	e1a01003 	mov	r1, r3
    13b8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13bc:	ebffff84 	bl	11d4 <putc>
    13c0:	ea00005d 	b	153c <printf+0x1f8>
    13c4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    13c8:	e3530025 	cmp	r3, #37	@ 0x25
    13cc:	1a00005a 	bne	153c <printf+0x1f8>
    13d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13d4:	e3530064 	cmp	r3, #100	@ 0x64
    13d8:	1a00000a 	bne	1408 <printf+0xc4>
    13dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13e0:	e5933000 	ldr	r3, [r3]
    13e4:	e1a01003 	mov	r1, r3
    13e8:	e3a03001 	mov	r3, #1
    13ec:	e3a0200a 	mov	r2, #10
    13f0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13f4:	ebffff84 	bl	120c <printint>
    13f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13fc:	e2833004 	add	r3, r3, #4
    1400:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1404:	ea00004a 	b	1534 <printf+0x1f0>
    1408:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    140c:	e3530078 	cmp	r3, #120	@ 0x78
    1410:	0a000002 	beq	1420 <printf+0xdc>
    1414:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1418:	e3530070 	cmp	r3, #112	@ 0x70
    141c:	1a00000a 	bne	144c <printf+0x108>
    1420:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1424:	e5933000 	ldr	r3, [r3]
    1428:	e1a01003 	mov	r1, r3
    142c:	e3a03000 	mov	r3, #0
    1430:	e3a02010 	mov	r2, #16
    1434:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1438:	ebffff73 	bl	120c <printint>
    143c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1440:	e2833004 	add	r3, r3, #4
    1444:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1448:	ea000039 	b	1534 <printf+0x1f0>
    144c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1450:	e3530073 	cmp	r3, #115	@ 0x73
    1454:	1a000018 	bne	14bc <printf+0x178>
    1458:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    145c:	e5933000 	ldr	r3, [r3]
    1460:	e50b300c 	str	r3, [fp, #-12]
    1464:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1468:	e2833004 	add	r3, r3, #4
    146c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1470:	e51b300c 	ldr	r3, [fp, #-12]
    1474:	e3530000 	cmp	r3, #0
    1478:	1a00000a 	bne	14a8 <printf+0x164>
    147c:	e59f30f4 	ldr	r3, [pc, #244]	@ 1578 <printf+0x234>
    1480:	e50b300c 	str	r3, [fp, #-12]
    1484:	ea000007 	b	14a8 <printf+0x164>
    1488:	e51b300c 	ldr	r3, [fp, #-12]
    148c:	e5d33000 	ldrb	r3, [r3]
    1490:	e1a01003 	mov	r1, r3
    1494:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1498:	ebffff4d 	bl	11d4 <putc>
    149c:	e51b300c 	ldr	r3, [fp, #-12]
    14a0:	e2833001 	add	r3, r3, #1
    14a4:	e50b300c 	str	r3, [fp, #-12]
    14a8:	e51b300c 	ldr	r3, [fp, #-12]
    14ac:	e5d33000 	ldrb	r3, [r3]
    14b0:	e3530000 	cmp	r3, #0
    14b4:	1afffff3 	bne	1488 <printf+0x144>
    14b8:	ea00001d 	b	1534 <printf+0x1f0>
    14bc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    14c0:	e3530063 	cmp	r3, #99	@ 0x63
    14c4:	1a000009 	bne	14f0 <printf+0x1ac>
    14c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    14cc:	e5933000 	ldr	r3, [r3]
    14d0:	e6ef3073 	uxtb	r3, r3
    14d4:	e1a01003 	mov	r1, r3
    14d8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    14dc:	ebffff3c 	bl	11d4 <putc>
    14e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    14e4:	e2833004 	add	r3, r3, #4
    14e8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    14ec:	ea000010 	b	1534 <printf+0x1f0>
    14f0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    14f4:	e3530025 	cmp	r3, #37	@ 0x25
    14f8:	1a000005 	bne	1514 <printf+0x1d0>
    14fc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1500:	e6ef3073 	uxtb	r3, r3
    1504:	e1a01003 	mov	r1, r3
    1508:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    150c:	ebffff30 	bl	11d4 <putc>
    1510:	ea000007 	b	1534 <printf+0x1f0>
    1514:	e3a01025 	mov	r1, #37	@ 0x25
    1518:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    151c:	ebffff2c 	bl	11d4 <putc>
    1520:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1524:	e6ef3073 	uxtb	r3, r3
    1528:	e1a01003 	mov	r1, r3
    152c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1530:	ebffff27 	bl	11d4 <putc>
    1534:	e3a03000 	mov	r3, #0
    1538:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    153c:	e51b3010 	ldr	r3, [fp, #-16]
    1540:	e2833001 	add	r3, r3, #1
    1544:	e50b3010 	str	r3, [fp, #-16]
    1548:	e59b2004 	ldr	r2, [fp, #4]
    154c:	e51b3010 	ldr	r3, [fp, #-16]
    1550:	e0823003 	add	r3, r2, r3
    1554:	e5d33000 	ldrb	r3, [r3]
    1558:	e3530000 	cmp	r3, #0
    155c:	1affff84 	bne	1374 <printf+0x30>
    1560:	e1a00000 	nop			@ (mov r0, r0)
    1564:	e1a00000 	nop			@ (mov r0, r0)
    1568:	e24bd004 	sub	sp, fp, #4
    156c:	e8bd4800 	pop	{fp, lr}
    1570:	e28dd00c 	add	sp, sp, #12
    1574:	e12fff1e 	bx	lr
    1578:	00001a38 	.word	0x00001a38

0000157c <free>:
    157c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1580:	e28db000 	add	fp, sp, #0
    1584:	e24dd014 	sub	sp, sp, #20
    1588:	e50b0010 	str	r0, [fp, #-16]
    158c:	e51b3010 	ldr	r3, [fp, #-16]
    1590:	e2433008 	sub	r3, r3, #8
    1594:	e50b300c 	str	r3, [fp, #-12]
    1598:	e59f3154 	ldr	r3, [pc, #340]	@ 16f4 <free+0x178>
    159c:	e5933000 	ldr	r3, [r3]
    15a0:	e50b3008 	str	r3, [fp, #-8]
    15a4:	ea000010 	b	15ec <free+0x70>
    15a8:	e51b3008 	ldr	r3, [fp, #-8]
    15ac:	e5933000 	ldr	r3, [r3]
    15b0:	e51b2008 	ldr	r2, [fp, #-8]
    15b4:	e1520003 	cmp	r2, r3
    15b8:	3a000008 	bcc	15e0 <free+0x64>
    15bc:	e51b200c 	ldr	r2, [fp, #-12]
    15c0:	e51b3008 	ldr	r3, [fp, #-8]
    15c4:	e1520003 	cmp	r2, r3
    15c8:	8a000010 	bhi	1610 <free+0x94>
    15cc:	e51b3008 	ldr	r3, [fp, #-8]
    15d0:	e5933000 	ldr	r3, [r3]
    15d4:	e51b200c 	ldr	r2, [fp, #-12]
    15d8:	e1520003 	cmp	r2, r3
    15dc:	3a00000b 	bcc	1610 <free+0x94>
    15e0:	e51b3008 	ldr	r3, [fp, #-8]
    15e4:	e5933000 	ldr	r3, [r3]
    15e8:	e50b3008 	str	r3, [fp, #-8]
    15ec:	e51b200c 	ldr	r2, [fp, #-12]
    15f0:	e51b3008 	ldr	r3, [fp, #-8]
    15f4:	e1520003 	cmp	r2, r3
    15f8:	9affffea 	bls	15a8 <free+0x2c>
    15fc:	e51b3008 	ldr	r3, [fp, #-8]
    1600:	e5933000 	ldr	r3, [r3]
    1604:	e51b200c 	ldr	r2, [fp, #-12]
    1608:	e1520003 	cmp	r2, r3
    160c:	2affffe5 	bcs	15a8 <free+0x2c>
    1610:	e51b300c 	ldr	r3, [fp, #-12]
    1614:	e5933004 	ldr	r3, [r3, #4]
    1618:	e1a03183 	lsl	r3, r3, #3
    161c:	e51b200c 	ldr	r2, [fp, #-12]
    1620:	e0822003 	add	r2, r2, r3
    1624:	e51b3008 	ldr	r3, [fp, #-8]
    1628:	e5933000 	ldr	r3, [r3]
    162c:	e1520003 	cmp	r2, r3
    1630:	1a00000d 	bne	166c <free+0xf0>
    1634:	e51b300c 	ldr	r3, [fp, #-12]
    1638:	e5932004 	ldr	r2, [r3, #4]
    163c:	e51b3008 	ldr	r3, [fp, #-8]
    1640:	e5933000 	ldr	r3, [r3]
    1644:	e5933004 	ldr	r3, [r3, #4]
    1648:	e0822003 	add	r2, r2, r3
    164c:	e51b300c 	ldr	r3, [fp, #-12]
    1650:	e5832004 	str	r2, [r3, #4]
    1654:	e51b3008 	ldr	r3, [fp, #-8]
    1658:	e5933000 	ldr	r3, [r3]
    165c:	e5932000 	ldr	r2, [r3]
    1660:	e51b300c 	ldr	r3, [fp, #-12]
    1664:	e5832000 	str	r2, [r3]
    1668:	ea000003 	b	167c <free+0x100>
    166c:	e51b3008 	ldr	r3, [fp, #-8]
    1670:	e5932000 	ldr	r2, [r3]
    1674:	e51b300c 	ldr	r3, [fp, #-12]
    1678:	e5832000 	str	r2, [r3]
    167c:	e51b3008 	ldr	r3, [fp, #-8]
    1680:	e5933004 	ldr	r3, [r3, #4]
    1684:	e1a03183 	lsl	r3, r3, #3
    1688:	e51b2008 	ldr	r2, [fp, #-8]
    168c:	e0823003 	add	r3, r2, r3
    1690:	e51b200c 	ldr	r2, [fp, #-12]
    1694:	e1520003 	cmp	r2, r3
    1698:	1a00000b 	bne	16cc <free+0x150>
    169c:	e51b3008 	ldr	r3, [fp, #-8]
    16a0:	e5932004 	ldr	r2, [r3, #4]
    16a4:	e51b300c 	ldr	r3, [fp, #-12]
    16a8:	e5933004 	ldr	r3, [r3, #4]
    16ac:	e0822003 	add	r2, r2, r3
    16b0:	e51b3008 	ldr	r3, [fp, #-8]
    16b4:	e5832004 	str	r2, [r3, #4]
    16b8:	e51b300c 	ldr	r3, [fp, #-12]
    16bc:	e5932000 	ldr	r2, [r3]
    16c0:	e51b3008 	ldr	r3, [fp, #-8]
    16c4:	e5832000 	str	r2, [r3]
    16c8:	ea000002 	b	16d8 <free+0x15c>
    16cc:	e51b3008 	ldr	r3, [fp, #-8]
    16d0:	e51b200c 	ldr	r2, [fp, #-12]
    16d4:	e5832000 	str	r2, [r3]
    16d8:	e59f2014 	ldr	r2, [pc, #20]	@ 16f4 <free+0x178>
    16dc:	e51b3008 	ldr	r3, [fp, #-8]
    16e0:	e5823000 	str	r3, [r2]
    16e4:	e1a00000 	nop			@ (mov r0, r0)
    16e8:	e28bd000 	add	sp, fp, #0
    16ec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    16f0:	e12fff1e 	bx	lr
    16f4:	00001e5c 	.word	0x00001e5c

000016f8 <morecore>:
    16f8:	e92d4800 	push	{fp, lr}
    16fc:	e28db004 	add	fp, sp, #4
    1700:	e24dd010 	sub	sp, sp, #16
    1704:	e50b0010 	str	r0, [fp, #-16]
    1708:	e51b3010 	ldr	r3, [fp, #-16]
    170c:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1710:	2a000001 	bcs	171c <morecore+0x24>
    1714:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1718:	e50b3010 	str	r3, [fp, #-16]
    171c:	e51b3010 	ldr	r3, [fp, #-16]
    1720:	e1a03183 	lsl	r3, r3, #3
    1724:	e1a00003 	mov	r0, r3
    1728:	ebfffe07 	bl	f4c <sbrk>
    172c:	e50b0008 	str	r0, [fp, #-8]
    1730:	e51b3008 	ldr	r3, [fp, #-8]
    1734:	e3730001 	cmn	r3, #1
    1738:	1a000001 	bne	1744 <morecore+0x4c>
    173c:	e3a03000 	mov	r3, #0
    1740:	ea00000a 	b	1770 <morecore+0x78>
    1744:	e51b3008 	ldr	r3, [fp, #-8]
    1748:	e50b300c 	str	r3, [fp, #-12]
    174c:	e51b300c 	ldr	r3, [fp, #-12]
    1750:	e51b2010 	ldr	r2, [fp, #-16]
    1754:	e5832004 	str	r2, [r3, #4]
    1758:	e51b300c 	ldr	r3, [fp, #-12]
    175c:	e2833008 	add	r3, r3, #8
    1760:	e1a00003 	mov	r0, r3
    1764:	ebffff84 	bl	157c <free>
    1768:	e59f300c 	ldr	r3, [pc, #12]	@ 177c <morecore+0x84>
    176c:	e5933000 	ldr	r3, [r3]
    1770:	e1a00003 	mov	r0, r3
    1774:	e24bd004 	sub	sp, fp, #4
    1778:	e8bd8800 	pop	{fp, pc}
    177c:	00001e5c 	.word	0x00001e5c

00001780 <malloc>:
    1780:	e92d4800 	push	{fp, lr}
    1784:	e28db004 	add	fp, sp, #4
    1788:	e24dd018 	sub	sp, sp, #24
    178c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1790:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1794:	e2833007 	add	r3, r3, #7
    1798:	e1a031a3 	lsr	r3, r3, #3
    179c:	e2833001 	add	r3, r3, #1
    17a0:	e50b3010 	str	r3, [fp, #-16]
    17a4:	e59f3134 	ldr	r3, [pc, #308]	@ 18e0 <malloc+0x160>
    17a8:	e5933000 	ldr	r3, [r3]
    17ac:	e50b300c 	str	r3, [fp, #-12]
    17b0:	e51b300c 	ldr	r3, [fp, #-12]
    17b4:	e3530000 	cmp	r3, #0
    17b8:	1a00000b 	bne	17ec <malloc+0x6c>
    17bc:	e59f3120 	ldr	r3, [pc, #288]	@ 18e4 <malloc+0x164>
    17c0:	e50b300c 	str	r3, [fp, #-12]
    17c4:	e59f2114 	ldr	r2, [pc, #276]	@ 18e0 <malloc+0x160>
    17c8:	e51b300c 	ldr	r3, [fp, #-12]
    17cc:	e5823000 	str	r3, [r2]
    17d0:	e59f3108 	ldr	r3, [pc, #264]	@ 18e0 <malloc+0x160>
    17d4:	e5933000 	ldr	r3, [r3]
    17d8:	e59f2104 	ldr	r2, [pc, #260]	@ 18e4 <malloc+0x164>
    17dc:	e5823000 	str	r3, [r2]
    17e0:	e59f30fc 	ldr	r3, [pc, #252]	@ 18e4 <malloc+0x164>
    17e4:	e3a02000 	mov	r2, #0
    17e8:	e5832004 	str	r2, [r3, #4]
    17ec:	e51b300c 	ldr	r3, [fp, #-12]
    17f0:	e5933000 	ldr	r3, [r3]
    17f4:	e50b3008 	str	r3, [fp, #-8]
    17f8:	e51b3008 	ldr	r3, [fp, #-8]
    17fc:	e5933004 	ldr	r3, [r3, #4]
    1800:	e51b2010 	ldr	r2, [fp, #-16]
    1804:	e1520003 	cmp	r2, r3
    1808:	8a00001e 	bhi	1888 <malloc+0x108>
    180c:	e51b3008 	ldr	r3, [fp, #-8]
    1810:	e5933004 	ldr	r3, [r3, #4]
    1814:	e51b2010 	ldr	r2, [fp, #-16]
    1818:	e1520003 	cmp	r2, r3
    181c:	1a000004 	bne	1834 <malloc+0xb4>
    1820:	e51b3008 	ldr	r3, [fp, #-8]
    1824:	e5932000 	ldr	r2, [r3]
    1828:	e51b300c 	ldr	r3, [fp, #-12]
    182c:	e5832000 	str	r2, [r3]
    1830:	ea00000e 	b	1870 <malloc+0xf0>
    1834:	e51b3008 	ldr	r3, [fp, #-8]
    1838:	e5932004 	ldr	r2, [r3, #4]
    183c:	e51b3010 	ldr	r3, [fp, #-16]
    1840:	e0422003 	sub	r2, r2, r3
    1844:	e51b3008 	ldr	r3, [fp, #-8]
    1848:	e5832004 	str	r2, [r3, #4]
    184c:	e51b3008 	ldr	r3, [fp, #-8]
    1850:	e5933004 	ldr	r3, [r3, #4]
    1854:	e1a03183 	lsl	r3, r3, #3
    1858:	e51b2008 	ldr	r2, [fp, #-8]
    185c:	e0823003 	add	r3, r2, r3
    1860:	e50b3008 	str	r3, [fp, #-8]
    1864:	e51b3008 	ldr	r3, [fp, #-8]
    1868:	e51b2010 	ldr	r2, [fp, #-16]
    186c:	e5832004 	str	r2, [r3, #4]
    1870:	e59f2068 	ldr	r2, [pc, #104]	@ 18e0 <malloc+0x160>
    1874:	e51b300c 	ldr	r3, [fp, #-12]
    1878:	e5823000 	str	r3, [r2]
    187c:	e51b3008 	ldr	r3, [fp, #-8]
    1880:	e2833008 	add	r3, r3, #8
    1884:	ea000012 	b	18d4 <malloc+0x154>
    1888:	e59f3050 	ldr	r3, [pc, #80]	@ 18e0 <malloc+0x160>
    188c:	e5933000 	ldr	r3, [r3]
    1890:	e51b2008 	ldr	r2, [fp, #-8]
    1894:	e1520003 	cmp	r2, r3
    1898:	1a000007 	bne	18bc <malloc+0x13c>
    189c:	e51b0010 	ldr	r0, [fp, #-16]
    18a0:	ebffff94 	bl	16f8 <morecore>
    18a4:	e50b0008 	str	r0, [fp, #-8]
    18a8:	e51b3008 	ldr	r3, [fp, #-8]
    18ac:	e3530000 	cmp	r3, #0
    18b0:	1a000001 	bne	18bc <malloc+0x13c>
    18b4:	e3a03000 	mov	r3, #0
    18b8:	ea000005 	b	18d4 <malloc+0x154>
    18bc:	e51b3008 	ldr	r3, [fp, #-8]
    18c0:	e50b300c 	str	r3, [fp, #-12]
    18c4:	e51b3008 	ldr	r3, [fp, #-8]
    18c8:	e5933000 	ldr	r3, [r3]
    18cc:	e50b3008 	str	r3, [fp, #-8]
    18d0:	eaffffc8 	b	17f8 <malloc+0x78>
    18d4:	e1a00003 	mov	r0, r3
    18d8:	e24bd004 	sub	sp, fp, #4
    18dc:	e8bd8800 	pop	{fp, pc}
    18e0:	00001e5c 	.word	0x00001e5c
    18e4:	00001e54 	.word	0x00001e54

000018e8 <__udivsi3>:
    18e8:	e2512001 	subs	r2, r1, #1
    18ec:	012fff1e 	bxeq	lr
    18f0:	3a000036 	bcc	19d0 <__udivsi3+0xe8>
    18f4:	e1500001 	cmp	r0, r1
    18f8:	9a000022 	bls	1988 <__udivsi3+0xa0>
    18fc:	e1110002 	tst	r1, r2
    1900:	0a000023 	beq	1994 <__udivsi3+0xac>
    1904:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1908:	01a01181 	lsleq	r1, r1, #3
    190c:	03a03008 	moveq	r3, #8
    1910:	13a03001 	movne	r3, #1
    1914:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1918:	31510000 	cmpcc	r1, r0
    191c:	31a01201 	lslcc	r1, r1, #4
    1920:	31a03203 	lslcc	r3, r3, #4
    1924:	3afffffa 	bcc	1914 <__udivsi3+0x2c>
    1928:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    192c:	31510000 	cmpcc	r1, r0
    1930:	31a01081 	lslcc	r1, r1, #1
    1934:	31a03083 	lslcc	r3, r3, #1
    1938:	3afffffa 	bcc	1928 <__udivsi3+0x40>
    193c:	e3a02000 	mov	r2, #0
    1940:	e1500001 	cmp	r0, r1
    1944:	20400001 	subcs	r0, r0, r1
    1948:	21822003 	orrcs	r2, r2, r3
    194c:	e15000a1 	cmp	r0, r1, lsr #1
    1950:	204000a1 	subcs	r0, r0, r1, lsr #1
    1954:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1958:	e1500121 	cmp	r0, r1, lsr #2
    195c:	20400121 	subcs	r0, r0, r1, lsr #2
    1960:	21822123 	orrcs	r2, r2, r3, lsr #2
    1964:	e15001a1 	cmp	r0, r1, lsr #3
    1968:	204001a1 	subcs	r0, r0, r1, lsr #3
    196c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1970:	e3500000 	cmp	r0, #0
    1974:	11b03223 	lsrsne	r3, r3, #4
    1978:	11a01221 	lsrne	r1, r1, #4
    197c:	1affffef 	bne	1940 <__udivsi3+0x58>
    1980:	e1a00002 	mov	r0, r2
    1984:	e12fff1e 	bx	lr
    1988:	03a00001 	moveq	r0, #1
    198c:	13a00000 	movne	r0, #0
    1990:	e12fff1e 	bx	lr
    1994:	e3510801 	cmp	r1, #65536	@ 0x10000
    1998:	21a01821 	lsrcs	r1, r1, #16
    199c:	23a02010 	movcs	r2, #16
    19a0:	33a02000 	movcc	r2, #0
    19a4:	e3510c01 	cmp	r1, #256	@ 0x100
    19a8:	21a01421 	lsrcs	r1, r1, #8
    19ac:	22822008 	addcs	r2, r2, #8
    19b0:	e3510010 	cmp	r1, #16
    19b4:	21a01221 	lsrcs	r1, r1, #4
    19b8:	22822004 	addcs	r2, r2, #4
    19bc:	e3510004 	cmp	r1, #4
    19c0:	82822003 	addhi	r2, r2, #3
    19c4:	908220a1 	addls	r2, r2, r1, lsr #1
    19c8:	e1a00230 	lsr	r0, r0, r2
    19cc:	e12fff1e 	bx	lr
    19d0:	e3500000 	cmp	r0, #0
    19d4:	13e00000 	mvnne	r0, #0
    19d8:	ea000007 	b	19fc <__aeabi_idiv0>

000019dc <__aeabi_uidivmod>:
    19dc:	e3510000 	cmp	r1, #0
    19e0:	0afffffa 	beq	19d0 <__udivsi3+0xe8>
    19e4:	e92d4003 	push	{r0, r1, lr}
    19e8:	ebffffbe 	bl	18e8 <__udivsi3>
    19ec:	e8bd4006 	pop	{r1, r2, lr}
    19f0:	e0030092 	mul	r3, r2, r0
    19f4:	e0411003 	sub	r1, r1, r3
    19f8:	e12fff1e 	bx	lr

000019fc <__aeabi_idiv0>:
    19fc:	e12fff1e 	bx	lr
