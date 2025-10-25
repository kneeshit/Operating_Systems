
_sh:     file format elf32-littlearm


Disassembly of section .text:

00000000 <runcmd>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd028 	sub	sp, sp, #40	@ 0x28
       c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
      10:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
      14:	e3530000 	cmp	r3, #0
      18:	1a000000 	bne	20 <runcmd+0x20>
      1c:	eb0007c2 	bl	1f2c <exit>
      20:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
      24:	e5933000 	ldr	r3, [r3]
      28:	e2433001 	sub	r3, r3, #1
      2c:	e3530004 	cmp	r3, #4
      30:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
      34:	ea000004 	b	4c <runcmd+0x4c>
      38:	00000054 	.word	0x00000054
      3c:	000000a8 	.word	0x000000a8
      40:	00000150 	.word	0x00000150
      44:	00000114 	.word	0x00000114
      48:	00000234 	.word	0x00000234
      4c:	e59f0210 	ldr	r0, [pc, #528]	@ 264 <runcmd+0x264>
      50:	eb00012f 	bl	514 <panic>
      54:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
      58:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      5c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      60:	e5933004 	ldr	r3, [r3, #4]
      64:	e3530000 	cmp	r3, #0
      68:	1a000000 	bne	70 <runcmd+0x70>
      6c:	eb0007ae 	bl	1f2c <exit>
      70:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      74:	e5932004 	ldr	r2, [r3, #4]
      78:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      7c:	e2833004 	add	r3, r3, #4
      80:	e1a01003 	mov	r1, r3
      84:	e1a00002 	mov	r0, r2
      88:	eb0007e6 	bl	2028 <exec>
      8c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      90:	e5933004 	ldr	r3, [r3, #4]
      94:	e1a02003 	mov	r2, r3
      98:	e59f11c8 	ldr	r1, [pc, #456]	@ 268 <runcmd+0x268>
      9c:	e3a00002 	mov	r0, #2
      a0:	eb000938 	bl	2588 <printf>
      a4:	eb0007a0 	bl	1f2c <exit>
      a8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
      ac:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      b0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      b4:	e5933014 	ldr	r3, [r3, #20]
      b8:	e1a00003 	mov	r0, r3
      bc:	eb0007c7 	bl	1fe0 <close>
      c0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      c4:	e5932008 	ldr	r2, [r3, #8]
      c8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      cc:	e5933010 	ldr	r3, [r3, #16]
      d0:	e1a01003 	mov	r1, r3
      d4:	e1a00002 	mov	r0, r2
      d8:	eb0007db 	bl	204c <open>
      dc:	e1a03000 	mov	r3, r0
      e0:	e3530000 	cmp	r3, #0
      e4:	aa000006 	bge	104 <runcmd+0x104>
      e8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      ec:	e5933008 	ldr	r3, [r3, #8]
      f0:	e1a02003 	mov	r2, r3
      f4:	e59f1170 	ldr	r1, [pc, #368]	@ 26c <runcmd+0x26c>
      f8:	e3a00002 	mov	r0, #2
      fc:	eb000921 	bl	2588 <printf>
     100:	eb000789 	bl	1f2c <exit>
     104:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     108:	e5933004 	ldr	r3, [r3, #4]
     10c:	e1a00003 	mov	r0, r3
     110:	ebffffba 	bl	0 <runcmd>
     114:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     118:	e50b300c 	str	r3, [fp, #-12]
     11c:	eb000106 	bl	53c <fork1>
     120:	e1a03000 	mov	r3, r0
     124:	e3530000 	cmp	r3, #0
     128:	1a000003 	bne	13c <runcmd+0x13c>
     12c:	e51b300c 	ldr	r3, [fp, #-12]
     130:	e5933004 	ldr	r3, [r3, #4]
     134:	e1a00003 	mov	r0, r3
     138:	ebffffb0 	bl	0 <runcmd>
     13c:	eb000783 	bl	1f50 <wait>
     140:	e51b300c 	ldr	r3, [fp, #-12]
     144:	e5933008 	ldr	r3, [r3, #8]
     148:	e1a00003 	mov	r0, r3
     14c:	ebffffab 	bl	0 <runcmd>
     150:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     154:	e50b3010 	str	r3, [fp, #-16]
     158:	e24b3020 	sub	r3, fp, #32
     15c:	e1a00003 	mov	r0, r3
     160:	eb000783 	bl	1f74 <pipe>
     164:	e1a03000 	mov	r3, r0
     168:	e3530000 	cmp	r3, #0
     16c:	aa000001 	bge	178 <runcmd+0x178>
     170:	e59f00f8 	ldr	r0, [pc, #248]	@ 270 <runcmd+0x270>
     174:	eb0000e6 	bl	514 <panic>
     178:	eb0000ef 	bl	53c <fork1>
     17c:	e1a03000 	mov	r3, r0
     180:	e3530000 	cmp	r3, #0
     184:	1a00000e 	bne	1c4 <runcmd+0x1c4>
     188:	e3a00001 	mov	r0, #1
     18c:	eb000793 	bl	1fe0 <close>
     190:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     194:	e1a00003 	mov	r0, r3
     198:	eb0007ea 	bl	2148 <dup>
     19c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1a0:	e1a00003 	mov	r0, r3
     1a4:	eb00078d 	bl	1fe0 <close>
     1a8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1ac:	e1a00003 	mov	r0, r3
     1b0:	eb00078a 	bl	1fe0 <close>
     1b4:	e51b3010 	ldr	r3, [fp, #-16]
     1b8:	e5933004 	ldr	r3, [r3, #4]
     1bc:	e1a00003 	mov	r0, r3
     1c0:	ebffff8e 	bl	0 <runcmd>
     1c4:	eb0000dc 	bl	53c <fork1>
     1c8:	e1a03000 	mov	r3, r0
     1cc:	e3530000 	cmp	r3, #0
     1d0:	1a00000e 	bne	210 <runcmd+0x210>
     1d4:	e3a00000 	mov	r0, #0
     1d8:	eb000780 	bl	1fe0 <close>
     1dc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1e0:	e1a00003 	mov	r0, r3
     1e4:	eb0007d7 	bl	2148 <dup>
     1e8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1ec:	e1a00003 	mov	r0, r3
     1f0:	eb00077a 	bl	1fe0 <close>
     1f4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1f8:	e1a00003 	mov	r0, r3
     1fc:	eb000777 	bl	1fe0 <close>
     200:	e51b3010 	ldr	r3, [fp, #-16]
     204:	e5933008 	ldr	r3, [r3, #8]
     208:	e1a00003 	mov	r0, r3
     20c:	ebffff7b 	bl	0 <runcmd>
     210:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     214:	e1a00003 	mov	r0, r3
     218:	eb000770 	bl	1fe0 <close>
     21c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     220:	e1a00003 	mov	r0, r3
     224:	eb00076d 	bl	1fe0 <close>
     228:	eb000748 	bl	1f50 <wait>
     22c:	eb000747 	bl	1f50 <wait>
     230:	ea00000a 	b	260 <runcmd+0x260>
     234:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     238:	e50b3008 	str	r3, [fp, #-8]
     23c:	eb0000be 	bl	53c <fork1>
     240:	e1a03000 	mov	r3, r0
     244:	e3530000 	cmp	r3, #0
     248:	1a000003 	bne	25c <runcmd+0x25c>
     24c:	e51b3008 	ldr	r3, [fp, #-8]
     250:	e5933004 	ldr	r3, [r3, #4]
     254:	e1a00003 	mov	r0, r3
     258:	ebffff68 	bl	0 <runcmd>
     25c:	e1a00000 	nop			@ (mov r0, r0)
     260:	eb000731 	bl	1f2c <exit>
     264:	00002c44 	.word	0x00002c44
     268:	00002c4c 	.word	0x00002c4c
     26c:	00002c5c 	.word	0x00002c5c
     270:	00002c6c 	.word	0x00002c6c

00000274 <getcmd>:
     274:	e92d4800 	push	{fp, lr}
     278:	e28db004 	add	fp, sp, #4
     27c:	e24dd018 	sub	sp, sp, #24
     280:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     284:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     288:	e3a03000 	mov	r3, #0
     28c:	e50b300c 	str	r3, [fp, #-12]
     290:	e59f1154 	ldr	r1, [pc, #340]	@ 3ec <getcmd+0x178>
     294:	e3a00002 	mov	r0, #2
     298:	eb0008ba 	bl	2588 <printf>
     29c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     2a0:	e1a02003 	mov	r2, r3
     2a4:	e3a01000 	mov	r1, #0
     2a8:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     2ac:	eb000548 	bl	17d4 <memset>
     2b0:	e24b300d 	sub	r3, fp, #13
     2b4:	e3a02001 	mov	r2, #1
     2b8:	e1a01003 	mov	r1, r3
     2bc:	e3a00000 	mov	r0, #0
     2c0:	eb000734 	bl	1f98 <read>
     2c4:	e50b0008 	str	r0, [fp, #-8]
     2c8:	e51b3008 	ldr	r3, [fp, #-8]
     2cc:	e3530000 	cmp	r3, #0
     2d0:	ca000004 	bgt	2e8 <getcmd+0x74>
     2d4:	e51b300c 	ldr	r3, [fp, #-12]
     2d8:	e3530000 	cmp	r3, #0
     2dc:	1a00003d 	bne	3d8 <getcmd+0x164>
     2e0:	e3e03000 	mvn	r3, #0
     2e4:	ea00003d 	b	3e0 <getcmd+0x16c>
     2e8:	e55b300d 	ldrb	r3, [fp, #-13]
     2ec:	e353000d 	cmp	r3, #13
     2f0:	1a000001 	bne	2fc <getcmd+0x88>
     2f4:	e3a0300a 	mov	r3, #10
     2f8:	e54b300d 	strb	r3, [fp, #-13]
     2fc:	e55b300d 	ldrb	r3, [fp, #-13]
     300:	e353000a 	cmp	r3, #10
     304:	1a000007 	bne	328 <getcmd+0xb4>
     308:	e51b300c 	ldr	r3, [fp, #-12]
     30c:	e1a02003 	mov	r2, r3
     310:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     314:	e0833002 	add	r3, r3, r2
     318:	e3a02000 	mov	r2, #0
     31c:	e5c32000 	strb	r2, [r3]
     320:	e3a03000 	mov	r3, #0
     324:	ea00002d 	b	3e0 <getcmd+0x16c>
     328:	e55b300d 	ldrb	r3, [fp, #-13]
     32c:	e3530008 	cmp	r3, #8
     330:	0a000002 	beq	340 <getcmd+0xcc>
     334:	e55b300d 	ldrb	r3, [fp, #-13]
     338:	e353007f 	cmp	r3, #127	@ 0x7f
     33c:	1a000009 	bne	368 <getcmd+0xf4>
     340:	e51b300c 	ldr	r3, [fp, #-12]
     344:	e3530000 	cmp	r3, #0
     348:	da000021 	ble	3d4 <getcmd+0x160>
     34c:	e51b300c 	ldr	r3, [fp, #-12]
     350:	e2433001 	sub	r3, r3, #1
     354:	e50b300c 	str	r3, [fp, #-12]
     358:	e59f1090 	ldr	r1, [pc, #144]	@ 3f0 <getcmd+0x17c>
     35c:	e3a00002 	mov	r0, #2
     360:	eb000888 	bl	2588 <printf>
     364:	ea00001a 	b	3d4 <getcmd+0x160>
     368:	e55b300d 	ldrb	r3, [fp, #-13]
     36c:	e3530009 	cmp	r3, #9
     370:	1a00000a 	bne	3a0 <getcmd+0x12c>
     374:	e51b300c 	ldr	r3, [fp, #-12]
     378:	e1a02003 	mov	r2, r3
     37c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     380:	e0833002 	add	r3, r3, r2
     384:	e3a02000 	mov	r2, #0
     388:	e5c32000 	strb	r2, [r3]
     38c:	e24b300c 	sub	r3, fp, #12
     390:	e1a01003 	mov	r1, r3
     394:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     398:	eb000383 	bl	11ac <autocomplete>
     39c:	eaffffc3 	b	2b0 <getcmd+0x3c>
     3a0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     3a4:	e2432001 	sub	r2, r3, #1
     3a8:	e51b300c 	ldr	r3, [fp, #-12]
     3ac:	e1520003 	cmp	r2, r3
     3b0:	daffffbe 	ble	2b0 <getcmd+0x3c>
     3b4:	e51b300c 	ldr	r3, [fp, #-12]
     3b8:	e2832001 	add	r2, r3, #1
     3bc:	e50b200c 	str	r2, [fp, #-12]
     3c0:	e1a02003 	mov	r2, r3
     3c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3c8:	e0833002 	add	r3, r3, r2
     3cc:	e55b200d 	ldrb	r2, [fp, #-13]
     3d0:	e5c32000 	strb	r2, [r3]
     3d4:	eaffffb5 	b	2b0 <getcmd+0x3c>
     3d8:	e1a00000 	nop			@ (mov r0, r0)
     3dc:	e3a03000 	mov	r3, #0
     3e0:	e1a00003 	mov	r0, r3
     3e4:	e24bd004 	sub	sp, fp, #4
     3e8:	e8bd8800 	pop	{fp, pc}
     3ec:	00002c74 	.word	0x00002c74
     3f0:	00002c78 	.word	0x00002c78

000003f4 <main>:
     3f4:	e92d4800 	push	{fp, lr}
     3f8:	e28db004 	add	fp, sp, #4
     3fc:	e24dd008 	sub	sp, sp, #8
     400:	ea000005 	b	41c <main+0x28>
     404:	e51b3008 	ldr	r3, [fp, #-8]
     408:	e3530002 	cmp	r3, #2
     40c:	da000002 	ble	41c <main+0x28>
     410:	e51b0008 	ldr	r0, [fp, #-8]
     414:	eb0006f1 	bl	1fe0 <close>
     418:	ea000006 	b	438 <main+0x44>
     41c:	e3a01002 	mov	r1, #2
     420:	e59f00dc 	ldr	r0, [pc, #220]	@ 504 <main+0x110>
     424:	eb000708 	bl	204c <open>
     428:	e50b0008 	str	r0, [fp, #-8]
     42c:	e51b3008 	ldr	r3, [fp, #-8]
     430:	e3530000 	cmp	r3, #0
     434:	aafffff2 	bge	404 <main+0x10>
     438:	ea00002a 	b	4e8 <main+0xf4>
     43c:	e59f30c4 	ldr	r3, [pc, #196]	@ 508 <main+0x114>
     440:	e5d33000 	ldrb	r3, [r3]
     444:	e3530063 	cmp	r3, #99	@ 0x63
     448:	1a00001a 	bne	4b8 <main+0xc4>
     44c:	e59f30b4 	ldr	r3, [pc, #180]	@ 508 <main+0x114>
     450:	e5d33001 	ldrb	r3, [r3, #1]
     454:	e3530064 	cmp	r3, #100	@ 0x64
     458:	1a000016 	bne	4b8 <main+0xc4>
     45c:	e59f30a4 	ldr	r3, [pc, #164]	@ 508 <main+0x114>
     460:	e5d33002 	ldrb	r3, [r3, #2]
     464:	e3530020 	cmp	r3, #32
     468:	1a000012 	bne	4b8 <main+0xc4>
     46c:	e59f0094 	ldr	r0, [pc, #148]	@ 508 <main+0x114>
     470:	eb0004c2 	bl	1780 <strlen>
     474:	e1a03000 	mov	r3, r0
     478:	e2433001 	sub	r3, r3, #1
     47c:	e59f2084 	ldr	r2, [pc, #132]	@ 508 <main+0x114>
     480:	e3a01000 	mov	r1, #0
     484:	e7c21003 	strb	r1, [r2, r3]
     488:	e59f307c 	ldr	r3, [pc, #124]	@ 50c <main+0x118>
     48c:	e1a00003 	mov	r0, r3
     490:	eb000723 	bl	2124 <chdir>
     494:	e1a03000 	mov	r3, r0
     498:	e3530000 	cmp	r3, #0
     49c:	aa000010 	bge	4e4 <main+0xf0>
     4a0:	e59f3064 	ldr	r3, [pc, #100]	@ 50c <main+0x118>
     4a4:	e1a02003 	mov	r2, r3
     4a8:	e59f1060 	ldr	r1, [pc, #96]	@ 510 <main+0x11c>
     4ac:	e3a00002 	mov	r0, #2
     4b0:	eb000834 	bl	2588 <printf>
     4b4:	ea00000a 	b	4e4 <main+0xf0>
     4b8:	eb00001f 	bl	53c <fork1>
     4bc:	e1a03000 	mov	r3, r0
     4c0:	e3530000 	cmp	r3, #0
     4c4:	1a000004 	bne	4dc <main+0xe8>
     4c8:	e59f0038 	ldr	r0, [pc, #56]	@ 508 <main+0x114>
     4cc:	eb000172 	bl	a9c <parsecmd>
     4d0:	e1a03000 	mov	r3, r0
     4d4:	e1a00003 	mov	r0, r3
     4d8:	ebfffec8 	bl	0 <runcmd>
     4dc:	eb00069b 	bl	1f50 <wait>
     4e0:	ea000000 	b	4e8 <main+0xf4>
     4e4:	e1a00000 	nop			@ (mov r0, r0)
     4e8:	e3a01c01 	mov	r1, #256	@ 0x100
     4ec:	e59f0014 	ldr	r0, [pc, #20]	@ 508 <main+0x114>
     4f0:	ebffff5f 	bl	274 <getcmd>
     4f4:	e1a03000 	mov	r3, r0
     4f8:	e3530000 	cmp	r3, #0
     4fc:	aaffffce 	bge	43c <main+0x48>
     500:	eb000689 	bl	1f2c <exit>
     504:	00002c7c 	.word	0x00002c7c
     508:	00002d80 	.word	0x00002d80
     50c:	00002d83 	.word	0x00002d83
     510:	00002c84 	.word	0x00002c84

00000514 <panic>:
     514:	e92d4800 	push	{fp, lr}
     518:	e28db004 	add	fp, sp, #4
     51c:	e24dd008 	sub	sp, sp, #8
     520:	e50b0008 	str	r0, [fp, #-8]
     524:	e51b2008 	ldr	r2, [fp, #-8]
     528:	e59f1008 	ldr	r1, [pc, #8]	@ 538 <panic+0x24>
     52c:	e3a00002 	mov	r0, #2
     530:	eb000814 	bl	2588 <printf>
     534:	eb00067c 	bl	1f2c <exit>
     538:	00002c94 	.word	0x00002c94

0000053c <fork1>:
     53c:	e92d4800 	push	{fp, lr}
     540:	e28db004 	add	fp, sp, #4
     544:	e24dd008 	sub	sp, sp, #8
     548:	eb00066e 	bl	1f08 <fork>
     54c:	e50b0008 	str	r0, [fp, #-8]
     550:	e51b3008 	ldr	r3, [fp, #-8]
     554:	e3730001 	cmn	r3, #1
     558:	1a000001 	bne	564 <fork1+0x28>
     55c:	e59f0010 	ldr	r0, [pc, #16]	@ 574 <fork1+0x38>
     560:	ebffffeb 	bl	514 <panic>
     564:	e51b3008 	ldr	r3, [fp, #-8]
     568:	e1a00003 	mov	r0, r3
     56c:	e24bd004 	sub	sp, fp, #4
     570:	e8bd8800 	pop	{fp, pc}
     574:	00002c98 	.word	0x00002c98

00000578 <execcmd>:
     578:	e92d4800 	push	{fp, lr}
     57c:	e28db004 	add	fp, sp, #4
     580:	e24dd008 	sub	sp, sp, #8
     584:	e3a00054 	mov	r0, #84	@ 0x54
     588:	eb00090d 	bl	29c4 <malloc>
     58c:	e50b0008 	str	r0, [fp, #-8]
     590:	e3a02054 	mov	r2, #84	@ 0x54
     594:	e3a01000 	mov	r1, #0
     598:	e51b0008 	ldr	r0, [fp, #-8]
     59c:	eb00048c 	bl	17d4 <memset>
     5a0:	e51b3008 	ldr	r3, [fp, #-8]
     5a4:	e3a02001 	mov	r2, #1
     5a8:	e5832000 	str	r2, [r3]
     5ac:	e51b3008 	ldr	r3, [fp, #-8]
     5b0:	e1a00003 	mov	r0, r3
     5b4:	e24bd004 	sub	sp, fp, #4
     5b8:	e8bd8800 	pop	{fp, pc}

000005bc <redircmd>:
     5bc:	e92d4800 	push	{fp, lr}
     5c0:	e28db004 	add	fp, sp, #4
     5c4:	e24dd018 	sub	sp, sp, #24
     5c8:	e50b0010 	str	r0, [fp, #-16]
     5cc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5d0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5d4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     5d8:	e3a00018 	mov	r0, #24
     5dc:	eb0008f8 	bl	29c4 <malloc>
     5e0:	e50b0008 	str	r0, [fp, #-8]
     5e4:	e3a02018 	mov	r2, #24
     5e8:	e3a01000 	mov	r1, #0
     5ec:	e51b0008 	ldr	r0, [fp, #-8]
     5f0:	eb000477 	bl	17d4 <memset>
     5f4:	e51b3008 	ldr	r3, [fp, #-8]
     5f8:	e3a02002 	mov	r2, #2
     5fc:	e5832000 	str	r2, [r3]
     600:	e51b3008 	ldr	r3, [fp, #-8]
     604:	e51b2010 	ldr	r2, [fp, #-16]
     608:	e5832004 	str	r2, [r3, #4]
     60c:	e51b3008 	ldr	r3, [fp, #-8]
     610:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     614:	e5832008 	str	r2, [r3, #8]
     618:	e51b3008 	ldr	r3, [fp, #-8]
     61c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     620:	e583200c 	str	r2, [r3, #12]
     624:	e51b3008 	ldr	r3, [fp, #-8]
     628:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     62c:	e5832010 	str	r2, [r3, #16]
     630:	e51b3008 	ldr	r3, [fp, #-8]
     634:	e59b2004 	ldr	r2, [fp, #4]
     638:	e5832014 	str	r2, [r3, #20]
     63c:	e51b3008 	ldr	r3, [fp, #-8]
     640:	e1a00003 	mov	r0, r3
     644:	e24bd004 	sub	sp, fp, #4
     648:	e8bd8800 	pop	{fp, pc}

0000064c <pipecmd>:
     64c:	e92d4800 	push	{fp, lr}
     650:	e28db004 	add	fp, sp, #4
     654:	e24dd010 	sub	sp, sp, #16
     658:	e50b0010 	str	r0, [fp, #-16]
     65c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     660:	e3a0000c 	mov	r0, #12
     664:	eb0008d6 	bl	29c4 <malloc>
     668:	e50b0008 	str	r0, [fp, #-8]
     66c:	e3a0200c 	mov	r2, #12
     670:	e3a01000 	mov	r1, #0
     674:	e51b0008 	ldr	r0, [fp, #-8]
     678:	eb000455 	bl	17d4 <memset>
     67c:	e51b3008 	ldr	r3, [fp, #-8]
     680:	e3a02003 	mov	r2, #3
     684:	e5832000 	str	r2, [r3]
     688:	e51b3008 	ldr	r3, [fp, #-8]
     68c:	e51b2010 	ldr	r2, [fp, #-16]
     690:	e5832004 	str	r2, [r3, #4]
     694:	e51b3008 	ldr	r3, [fp, #-8]
     698:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     69c:	e5832008 	str	r2, [r3, #8]
     6a0:	e51b3008 	ldr	r3, [fp, #-8]
     6a4:	e1a00003 	mov	r0, r3
     6a8:	e24bd004 	sub	sp, fp, #4
     6ac:	e8bd8800 	pop	{fp, pc}

000006b0 <listcmd>:
     6b0:	e92d4800 	push	{fp, lr}
     6b4:	e28db004 	add	fp, sp, #4
     6b8:	e24dd010 	sub	sp, sp, #16
     6bc:	e50b0010 	str	r0, [fp, #-16]
     6c0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     6c4:	e3a0000c 	mov	r0, #12
     6c8:	eb0008bd 	bl	29c4 <malloc>
     6cc:	e50b0008 	str	r0, [fp, #-8]
     6d0:	e3a0200c 	mov	r2, #12
     6d4:	e3a01000 	mov	r1, #0
     6d8:	e51b0008 	ldr	r0, [fp, #-8]
     6dc:	eb00043c 	bl	17d4 <memset>
     6e0:	e51b3008 	ldr	r3, [fp, #-8]
     6e4:	e3a02004 	mov	r2, #4
     6e8:	e5832000 	str	r2, [r3]
     6ec:	e51b3008 	ldr	r3, [fp, #-8]
     6f0:	e51b2010 	ldr	r2, [fp, #-16]
     6f4:	e5832004 	str	r2, [r3, #4]
     6f8:	e51b3008 	ldr	r3, [fp, #-8]
     6fc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     700:	e5832008 	str	r2, [r3, #8]
     704:	e51b3008 	ldr	r3, [fp, #-8]
     708:	e1a00003 	mov	r0, r3
     70c:	e24bd004 	sub	sp, fp, #4
     710:	e8bd8800 	pop	{fp, pc}

00000714 <backcmd>:
     714:	e92d4800 	push	{fp, lr}
     718:	e28db004 	add	fp, sp, #4
     71c:	e24dd010 	sub	sp, sp, #16
     720:	e50b0010 	str	r0, [fp, #-16]
     724:	e3a00008 	mov	r0, #8
     728:	eb0008a5 	bl	29c4 <malloc>
     72c:	e50b0008 	str	r0, [fp, #-8]
     730:	e3a02008 	mov	r2, #8
     734:	e3a01000 	mov	r1, #0
     738:	e51b0008 	ldr	r0, [fp, #-8]
     73c:	eb000424 	bl	17d4 <memset>
     740:	e51b3008 	ldr	r3, [fp, #-8]
     744:	e3a02005 	mov	r2, #5
     748:	e5832000 	str	r2, [r3]
     74c:	e51b3008 	ldr	r3, [fp, #-8]
     750:	e51b2010 	ldr	r2, [fp, #-16]
     754:	e5832004 	str	r2, [r3, #4]
     758:	e51b3008 	ldr	r3, [fp, #-8]
     75c:	e1a00003 	mov	r0, r3
     760:	e24bd004 	sub	sp, fp, #4
     764:	e8bd8800 	pop	{fp, pc}

00000768 <gettoken>:
     768:	e92d4800 	push	{fp, lr}
     76c:	e28db004 	add	fp, sp, #4
     770:	e24dd018 	sub	sp, sp, #24
     774:	e50b0010 	str	r0, [fp, #-16]
     778:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     77c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     780:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     784:	e51b3010 	ldr	r3, [fp, #-16]
     788:	e5933000 	ldr	r3, [r3]
     78c:	e50b3008 	str	r3, [fp, #-8]
     790:	ea000002 	b	7a0 <gettoken+0x38>
     794:	e51b3008 	ldr	r3, [fp, #-8]
     798:	e2833001 	add	r3, r3, #1
     79c:	e50b3008 	str	r3, [fp, #-8]
     7a0:	e51b2008 	ldr	r2, [fp, #-8]
     7a4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     7a8:	e1520003 	cmp	r2, r3
     7ac:	2a000007 	bcs	7d0 <gettoken+0x68>
     7b0:	e51b3008 	ldr	r3, [fp, #-8]
     7b4:	e5d33000 	ldrb	r3, [r3]
     7b8:	e1a01003 	mov	r1, r3
     7bc:	e59f0214 	ldr	r0, [pc, #532]	@ 9d8 <gettoken+0x270>
     7c0:	eb00044d 	bl	18fc <strchr>
     7c4:	e1a03000 	mov	r3, r0
     7c8:	e3530000 	cmp	r3, #0
     7cc:	1afffff0 	bne	794 <gettoken+0x2c>
     7d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7d4:	e3530000 	cmp	r3, #0
     7d8:	0a000002 	beq	7e8 <gettoken+0x80>
     7dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7e0:	e51b2008 	ldr	r2, [fp, #-8]
     7e4:	e5832000 	str	r2, [r3]
     7e8:	e51b3008 	ldr	r3, [fp, #-8]
     7ec:	e5d33000 	ldrb	r3, [r3]
     7f0:	e50b300c 	str	r3, [fp, #-12]
     7f4:	e51b3008 	ldr	r3, [fp, #-8]
     7f8:	e5d33000 	ldrb	r3, [r3]
     7fc:	e353007c 	cmp	r3, #124	@ 0x7c
     800:	0a000026 	beq	8a0 <gettoken+0x138>
     804:	e353007c 	cmp	r3, #124	@ 0x7c
     808:	ca000035 	bgt	8e4 <gettoken+0x17c>
     80c:	e3530000 	cmp	r3, #0
     810:	0a00004e 	beq	950 <gettoken+0x1e8>
     814:	e3530000 	cmp	r3, #0
     818:	ba000031 	blt	8e4 <gettoken+0x17c>
     81c:	e353003e 	cmp	r3, #62	@ 0x3e
     820:	ca00002f 	bgt	8e4 <gettoken+0x17c>
     824:	e3530026 	cmp	r3, #38	@ 0x26
     828:	ba00002d 	blt	8e4 <gettoken+0x17c>
     82c:	e2433026 	sub	r3, r3, #38	@ 0x26
     830:	e3530018 	cmp	r3, #24
     834:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
     838:	ea000029 	b	8e4 <gettoken+0x17c>
     83c:	000008a0 	.word	0x000008a0
     840:	000008e4 	.word	0x000008e4
     844:	000008a0 	.word	0x000008a0
     848:	000008a0 	.word	0x000008a0
     84c:	000008e4 	.word	0x000008e4
     850:	000008e4 	.word	0x000008e4
     854:	000008e4 	.word	0x000008e4
     858:	000008e4 	.word	0x000008e4
     85c:	000008e4 	.word	0x000008e4
     860:	000008e4 	.word	0x000008e4
     864:	000008e4 	.word	0x000008e4
     868:	000008e4 	.word	0x000008e4
     86c:	000008e4 	.word	0x000008e4
     870:	000008e4 	.word	0x000008e4
     874:	000008e4 	.word	0x000008e4
     878:	000008e4 	.word	0x000008e4
     87c:	000008e4 	.word	0x000008e4
     880:	000008e4 	.word	0x000008e4
     884:	000008e4 	.word	0x000008e4
     888:	000008e4 	.word	0x000008e4
     88c:	000008e4 	.word	0x000008e4
     890:	000008a0 	.word	0x000008a0
     894:	000008a0 	.word	0x000008a0
     898:	000008e4 	.word	0x000008e4
     89c:	000008b0 	.word	0x000008b0
     8a0:	e51b3008 	ldr	r3, [fp, #-8]
     8a4:	e2833001 	add	r3, r3, #1
     8a8:	e50b3008 	str	r3, [fp, #-8]
     8ac:	ea00002c 	b	964 <gettoken+0x1fc>
     8b0:	e51b3008 	ldr	r3, [fp, #-8]
     8b4:	e2833001 	add	r3, r3, #1
     8b8:	e50b3008 	str	r3, [fp, #-8]
     8bc:	e51b3008 	ldr	r3, [fp, #-8]
     8c0:	e5d33000 	ldrb	r3, [r3]
     8c4:	e353003e 	cmp	r3, #62	@ 0x3e
     8c8:	1a000022 	bne	958 <gettoken+0x1f0>
     8cc:	e3a0302b 	mov	r3, #43	@ 0x2b
     8d0:	e50b300c 	str	r3, [fp, #-12]
     8d4:	e51b3008 	ldr	r3, [fp, #-8]
     8d8:	e2833001 	add	r3, r3, #1
     8dc:	e50b3008 	str	r3, [fp, #-8]
     8e0:	ea00001c 	b	958 <gettoken+0x1f0>
     8e4:	e3a03061 	mov	r3, #97	@ 0x61
     8e8:	e50b300c 	str	r3, [fp, #-12]
     8ec:	ea000002 	b	8fc <gettoken+0x194>
     8f0:	e51b3008 	ldr	r3, [fp, #-8]
     8f4:	e2833001 	add	r3, r3, #1
     8f8:	e50b3008 	str	r3, [fp, #-8]
     8fc:	e51b2008 	ldr	r2, [fp, #-8]
     900:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     904:	e1520003 	cmp	r2, r3
     908:	2a000014 	bcs	960 <gettoken+0x1f8>
     90c:	e51b3008 	ldr	r3, [fp, #-8]
     910:	e5d33000 	ldrb	r3, [r3]
     914:	e1a01003 	mov	r1, r3
     918:	e59f00b8 	ldr	r0, [pc, #184]	@ 9d8 <gettoken+0x270>
     91c:	eb0003f6 	bl	18fc <strchr>
     920:	e1a03000 	mov	r3, r0
     924:	e3530000 	cmp	r3, #0
     928:	1a00000c 	bne	960 <gettoken+0x1f8>
     92c:	e51b3008 	ldr	r3, [fp, #-8]
     930:	e5d33000 	ldrb	r3, [r3]
     934:	e1a01003 	mov	r1, r3
     938:	e59f009c 	ldr	r0, [pc, #156]	@ 9dc <gettoken+0x274>
     93c:	eb0003ee 	bl	18fc <strchr>
     940:	e1a03000 	mov	r3, r0
     944:	e3530000 	cmp	r3, #0
     948:	0affffe8 	beq	8f0 <gettoken+0x188>
     94c:	ea000003 	b	960 <gettoken+0x1f8>
     950:	e1a00000 	nop			@ (mov r0, r0)
     954:	ea000002 	b	964 <gettoken+0x1fc>
     958:	e1a00000 	nop			@ (mov r0, r0)
     95c:	ea000000 	b	964 <gettoken+0x1fc>
     960:	e1a00000 	nop			@ (mov r0, r0)
     964:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     968:	e3530000 	cmp	r3, #0
     96c:	0a000006 	beq	98c <gettoken+0x224>
     970:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     974:	e51b2008 	ldr	r2, [fp, #-8]
     978:	e5832000 	str	r2, [r3]
     97c:	ea000002 	b	98c <gettoken+0x224>
     980:	e51b3008 	ldr	r3, [fp, #-8]
     984:	e2833001 	add	r3, r3, #1
     988:	e50b3008 	str	r3, [fp, #-8]
     98c:	e51b2008 	ldr	r2, [fp, #-8]
     990:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     994:	e1520003 	cmp	r2, r3
     998:	2a000007 	bcs	9bc <gettoken+0x254>
     99c:	e51b3008 	ldr	r3, [fp, #-8]
     9a0:	e5d33000 	ldrb	r3, [r3]
     9a4:	e1a01003 	mov	r1, r3
     9a8:	e59f0028 	ldr	r0, [pc, #40]	@ 9d8 <gettoken+0x270>
     9ac:	eb0003d2 	bl	18fc <strchr>
     9b0:	e1a03000 	mov	r3, r0
     9b4:	e3530000 	cmp	r3, #0
     9b8:	1afffff0 	bne	980 <gettoken+0x218>
     9bc:	e51b3010 	ldr	r3, [fp, #-16]
     9c0:	e51b2008 	ldr	r2, [fp, #-8]
     9c4:	e5832000 	str	r2, [r3]
     9c8:	e51b300c 	ldr	r3, [fp, #-12]
     9cc:	e1a00003 	mov	r0, r3
     9d0:	e24bd004 	sub	sp, fp, #4
     9d4:	e8bd8800 	pop	{fp, pc}
     9d8:	00002d5c 	.word	0x00002d5c
     9dc:	00002d64 	.word	0x00002d64

000009e0 <peek>:
     9e0:	e92d4800 	push	{fp, lr}
     9e4:	e28db004 	add	fp, sp, #4
     9e8:	e24dd018 	sub	sp, sp, #24
     9ec:	e50b0010 	str	r0, [fp, #-16]
     9f0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     9f4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     9f8:	e51b3010 	ldr	r3, [fp, #-16]
     9fc:	e5933000 	ldr	r3, [r3]
     a00:	e50b3008 	str	r3, [fp, #-8]
     a04:	ea000002 	b	a14 <peek+0x34>
     a08:	e51b3008 	ldr	r3, [fp, #-8]
     a0c:	e2833001 	add	r3, r3, #1
     a10:	e50b3008 	str	r3, [fp, #-8]
     a14:	e51b2008 	ldr	r2, [fp, #-8]
     a18:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a1c:	e1520003 	cmp	r2, r3
     a20:	2a000007 	bcs	a44 <peek+0x64>
     a24:	e51b3008 	ldr	r3, [fp, #-8]
     a28:	e5d33000 	ldrb	r3, [r3]
     a2c:	e1a01003 	mov	r1, r3
     a30:	e59f0060 	ldr	r0, [pc, #96]	@ a98 <peek+0xb8>
     a34:	eb0003b0 	bl	18fc <strchr>
     a38:	e1a03000 	mov	r3, r0
     a3c:	e3530000 	cmp	r3, #0
     a40:	1afffff0 	bne	a08 <peek+0x28>
     a44:	e51b3010 	ldr	r3, [fp, #-16]
     a48:	e51b2008 	ldr	r2, [fp, #-8]
     a4c:	e5832000 	str	r2, [r3]
     a50:	e51b3008 	ldr	r3, [fp, #-8]
     a54:	e5d33000 	ldrb	r3, [r3]
     a58:	e3530000 	cmp	r3, #0
     a5c:	0a000009 	beq	a88 <peek+0xa8>
     a60:	e51b3008 	ldr	r3, [fp, #-8]
     a64:	e5d33000 	ldrb	r3, [r3]
     a68:	e1a01003 	mov	r1, r3
     a6c:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     a70:	eb0003a1 	bl	18fc <strchr>
     a74:	e1a03000 	mov	r3, r0
     a78:	e3530000 	cmp	r3, #0
     a7c:	0a000001 	beq	a88 <peek+0xa8>
     a80:	e3a03001 	mov	r3, #1
     a84:	ea000000 	b	a8c <peek+0xac>
     a88:	e3a03000 	mov	r3, #0
     a8c:	e1a00003 	mov	r0, r3
     a90:	e24bd004 	sub	sp, fp, #4
     a94:	e8bd8800 	pop	{fp, pc}
     a98:	00002d5c 	.word	0x00002d5c

00000a9c <parsecmd>:
     a9c:	e92d4810 	push	{r4, fp, lr}
     aa0:	e28db008 	add	fp, sp, #8
     aa4:	e24dd014 	sub	sp, sp, #20
     aa8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     aac:	e51b4018 	ldr	r4, [fp, #-24]	@ 0xffffffe8
     ab0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ab4:	e1a00003 	mov	r0, r3
     ab8:	eb000330 	bl	1780 <strlen>
     abc:	e1a03000 	mov	r3, r0
     ac0:	e0843003 	add	r3, r4, r3
     ac4:	e50b3010 	str	r3, [fp, #-16]
     ac8:	e24b3018 	sub	r3, fp, #24
     acc:	e51b1010 	ldr	r1, [fp, #-16]
     ad0:	e1a00003 	mov	r0, r3
     ad4:	eb000019 	bl	b40 <parseline>
     ad8:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
     adc:	e24b3018 	sub	r3, fp, #24
     ae0:	e59f204c 	ldr	r2, [pc, #76]	@ b34 <parsecmd+0x98>
     ae4:	e51b1010 	ldr	r1, [fp, #-16]
     ae8:	e1a00003 	mov	r0, r3
     aec:	ebffffbb 	bl	9e0 <peek>
     af0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     af4:	e51b2010 	ldr	r2, [fp, #-16]
     af8:	e1520003 	cmp	r2, r3
     afc:	0a000006 	beq	b1c <parsecmd+0x80>
     b00:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b04:	e1a02003 	mov	r2, r3
     b08:	e59f1028 	ldr	r1, [pc, #40]	@ b38 <parsecmd+0x9c>
     b0c:	e3a00002 	mov	r0, #2
     b10:	eb00069c 	bl	2588 <printf>
     b14:	e59f0020 	ldr	r0, [pc, #32]	@ b3c <parsecmd+0xa0>
     b18:	ebfffe7d 	bl	514 <panic>
     b1c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     b20:	eb00013c 	bl	1018 <nulterminate>
     b24:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b28:	e1a00003 	mov	r0, r3
     b2c:	e24bd008 	sub	sp, fp, #8
     b30:	e8bd8810 	pop	{r4, fp, pc}
     b34:	00002ca0 	.word	0x00002ca0
     b38:	00002ca4 	.word	0x00002ca4
     b3c:	00002cb4 	.word	0x00002cb4

00000b40 <parseline>:
     b40:	e92d4800 	push	{fp, lr}
     b44:	e28db004 	add	fp, sp, #4
     b48:	e24dd010 	sub	sp, sp, #16
     b4c:	e50b0010 	str	r0, [fp, #-16]
     b50:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     b54:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     b58:	e51b0010 	ldr	r0, [fp, #-16]
     b5c:	eb00002a 	bl	c0c <parsepipe>
     b60:	e50b0008 	str	r0, [fp, #-8]
     b64:	ea000007 	b	b88 <parseline+0x48>
     b68:	e3a03000 	mov	r3, #0
     b6c:	e3a02000 	mov	r2, #0
     b70:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     b74:	e51b0010 	ldr	r0, [fp, #-16]
     b78:	ebfffefa 	bl	768 <gettoken>
     b7c:	e51b0008 	ldr	r0, [fp, #-8]
     b80:	ebfffee3 	bl	714 <backcmd>
     b84:	e50b0008 	str	r0, [fp, #-8]
     b88:	e59f2074 	ldr	r2, [pc, #116]	@ c04 <parseline+0xc4>
     b8c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     b90:	e51b0010 	ldr	r0, [fp, #-16]
     b94:	ebffff91 	bl	9e0 <peek>
     b98:	e1a03000 	mov	r3, r0
     b9c:	e3530000 	cmp	r3, #0
     ba0:	1afffff0 	bne	b68 <parseline+0x28>
     ba4:	e59f205c 	ldr	r2, [pc, #92]	@ c08 <parseline+0xc8>
     ba8:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     bac:	e51b0010 	ldr	r0, [fp, #-16]
     bb0:	ebffff8a 	bl	9e0 <peek>
     bb4:	e1a03000 	mov	r3, r0
     bb8:	e3530000 	cmp	r3, #0
     bbc:	0a00000c 	beq	bf4 <parseline+0xb4>
     bc0:	e3a03000 	mov	r3, #0
     bc4:	e3a02000 	mov	r2, #0
     bc8:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     bcc:	e51b0010 	ldr	r0, [fp, #-16]
     bd0:	ebfffee4 	bl	768 <gettoken>
     bd4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     bd8:	e51b0010 	ldr	r0, [fp, #-16]
     bdc:	ebffffd7 	bl	b40 <parseline>
     be0:	e1a03000 	mov	r3, r0
     be4:	e1a01003 	mov	r1, r3
     be8:	e51b0008 	ldr	r0, [fp, #-8]
     bec:	ebfffeaf 	bl	6b0 <listcmd>
     bf0:	e50b0008 	str	r0, [fp, #-8]
     bf4:	e51b3008 	ldr	r3, [fp, #-8]
     bf8:	e1a00003 	mov	r0, r3
     bfc:	e24bd004 	sub	sp, fp, #4
     c00:	e8bd8800 	pop	{fp, pc}
     c04:	00002cbc 	.word	0x00002cbc
     c08:	00002cc0 	.word	0x00002cc0

00000c0c <parsepipe>:
     c0c:	e92d4800 	push	{fp, lr}
     c10:	e28db004 	add	fp, sp, #4
     c14:	e24dd010 	sub	sp, sp, #16
     c18:	e50b0010 	str	r0, [fp, #-16]
     c1c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     c20:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     c24:	e51b0010 	ldr	r0, [fp, #-16]
     c28:	eb000097 	bl	e8c <parseexec>
     c2c:	e50b0008 	str	r0, [fp, #-8]
     c30:	e59f2058 	ldr	r2, [pc, #88]	@ c90 <parsepipe+0x84>
     c34:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     c38:	e51b0010 	ldr	r0, [fp, #-16]
     c3c:	ebffff67 	bl	9e0 <peek>
     c40:	e1a03000 	mov	r3, r0
     c44:	e3530000 	cmp	r3, #0
     c48:	0a00000c 	beq	c80 <parsepipe+0x74>
     c4c:	e3a03000 	mov	r3, #0
     c50:	e3a02000 	mov	r2, #0
     c54:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     c58:	e51b0010 	ldr	r0, [fp, #-16]
     c5c:	ebfffec1 	bl	768 <gettoken>
     c60:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     c64:	e51b0010 	ldr	r0, [fp, #-16]
     c68:	ebffffe7 	bl	c0c <parsepipe>
     c6c:	e1a03000 	mov	r3, r0
     c70:	e1a01003 	mov	r1, r3
     c74:	e51b0008 	ldr	r0, [fp, #-8]
     c78:	ebfffe73 	bl	64c <pipecmd>
     c7c:	e50b0008 	str	r0, [fp, #-8]
     c80:	e51b3008 	ldr	r3, [fp, #-8]
     c84:	e1a00003 	mov	r0, r3
     c88:	e24bd004 	sub	sp, fp, #4
     c8c:	e8bd8800 	pop	{fp, pc}
     c90:	00002cc4 	.word	0x00002cc4

00000c94 <parseredirs>:
     c94:	e92d4800 	push	{fp, lr}
     c98:	e28db004 	add	fp, sp, #4
     c9c:	e24dd028 	sub	sp, sp, #40	@ 0x28
     ca0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     ca4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     ca8:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     cac:	ea000036 	b	d8c <parseredirs+0xf8>
     cb0:	e3a03000 	mov	r3, #0
     cb4:	e3a02000 	mov	r2, #0
     cb8:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
     cbc:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
     cc0:	ebfffea8 	bl	768 <gettoken>
     cc4:	e50b0008 	str	r0, [fp, #-8]
     cc8:	e24b3010 	sub	r3, fp, #16
     ccc:	e24b200c 	sub	r2, fp, #12
     cd0:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
     cd4:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
     cd8:	ebfffea2 	bl	768 <gettoken>
     cdc:	e1a03000 	mov	r3, r0
     ce0:	e3530061 	cmp	r3, #97	@ 0x61
     ce4:	0a000001 	beq	cf0 <parseredirs+0x5c>
     ce8:	e59f00c8 	ldr	r0, [pc, #200]	@ db8 <parseredirs+0x124>
     cec:	ebfffe08 	bl	514 <panic>
     cf0:	e51b3008 	ldr	r3, [fp, #-8]
     cf4:	e353003e 	cmp	r3, #62	@ 0x3e
     cf8:	0a000011 	beq	d44 <parseredirs+0xb0>
     cfc:	e51b3008 	ldr	r3, [fp, #-8]
     d00:	e353003e 	cmp	r3, #62	@ 0x3e
     d04:	ca000020 	bgt	d8c <parseredirs+0xf8>
     d08:	e51b3008 	ldr	r3, [fp, #-8]
     d0c:	e353002b 	cmp	r3, #43	@ 0x2b
     d10:	0a000014 	beq	d68 <parseredirs+0xd4>
     d14:	e51b3008 	ldr	r3, [fp, #-8]
     d18:	e353003c 	cmp	r3, #60	@ 0x3c
     d1c:	1a00001a 	bne	d8c <parseredirs+0xf8>
     d20:	e51b100c 	ldr	r1, [fp, #-12]
     d24:	e51b2010 	ldr	r2, [fp, #-16]
     d28:	e3a03000 	mov	r3, #0
     d2c:	e58d3000 	str	r3, [sp]
     d30:	e3a03000 	mov	r3, #0
     d34:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     d38:	ebfffe1f 	bl	5bc <redircmd>
     d3c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     d40:	ea000011 	b	d8c <parseredirs+0xf8>
     d44:	e51b100c 	ldr	r1, [fp, #-12]
     d48:	e51b2010 	ldr	r2, [fp, #-16]
     d4c:	e3a03001 	mov	r3, #1
     d50:	e58d3000 	str	r3, [sp]
     d54:	e59f3060 	ldr	r3, [pc, #96]	@ dbc <parseredirs+0x128>
     d58:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     d5c:	ebfffe16 	bl	5bc <redircmd>
     d60:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     d64:	ea000008 	b	d8c <parseredirs+0xf8>
     d68:	e51b100c 	ldr	r1, [fp, #-12]
     d6c:	e51b2010 	ldr	r2, [fp, #-16]
     d70:	e3a03001 	mov	r3, #1
     d74:	e58d3000 	str	r3, [sp]
     d78:	e59f303c 	ldr	r3, [pc, #60]	@ dbc <parseredirs+0x128>
     d7c:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     d80:	ebfffe0d 	bl	5bc <redircmd>
     d84:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     d88:	e1a00000 	nop			@ (mov r0, r0)
     d8c:	e59f202c 	ldr	r2, [pc, #44]	@ dc0 <parseredirs+0x12c>
     d90:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
     d94:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
     d98:	ebffff10 	bl	9e0 <peek>
     d9c:	e1a03000 	mov	r3, r0
     da0:	e3530000 	cmp	r3, #0
     da4:	1affffc1 	bne	cb0 <parseredirs+0x1c>
     da8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dac:	e1a00003 	mov	r0, r3
     db0:	e24bd004 	sub	sp, fp, #4
     db4:	e8bd8800 	pop	{fp, pc}
     db8:	00002cc8 	.word	0x00002cc8
     dbc:	00000201 	.word	0x00000201
     dc0:	00002ce8 	.word	0x00002ce8

00000dc4 <parseblock>:
     dc4:	e92d4800 	push	{fp, lr}
     dc8:	e28db004 	add	fp, sp, #4
     dcc:	e24dd010 	sub	sp, sp, #16
     dd0:	e50b0010 	str	r0, [fp, #-16]
     dd4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     dd8:	e59f209c 	ldr	r2, [pc, #156]	@ e7c <parseblock+0xb8>
     ddc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     de0:	e51b0010 	ldr	r0, [fp, #-16]
     de4:	ebfffefd 	bl	9e0 <peek>
     de8:	e1a03000 	mov	r3, r0
     dec:	e3530000 	cmp	r3, #0
     df0:	1a000001 	bne	dfc <parseblock+0x38>
     df4:	e59f0084 	ldr	r0, [pc, #132]	@ e80 <parseblock+0xbc>
     df8:	ebfffdc5 	bl	514 <panic>
     dfc:	e3a03000 	mov	r3, #0
     e00:	e3a02000 	mov	r2, #0
     e04:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     e08:	e51b0010 	ldr	r0, [fp, #-16]
     e0c:	ebfffe55 	bl	768 <gettoken>
     e10:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     e14:	e51b0010 	ldr	r0, [fp, #-16]
     e18:	ebffff48 	bl	b40 <parseline>
     e1c:	e50b0008 	str	r0, [fp, #-8]
     e20:	e59f205c 	ldr	r2, [pc, #92]	@ e84 <parseblock+0xc0>
     e24:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     e28:	e51b0010 	ldr	r0, [fp, #-16]
     e2c:	ebfffeeb 	bl	9e0 <peek>
     e30:	e1a03000 	mov	r3, r0
     e34:	e3530000 	cmp	r3, #0
     e38:	1a000001 	bne	e44 <parseblock+0x80>
     e3c:	e59f0044 	ldr	r0, [pc, #68]	@ e88 <parseblock+0xc4>
     e40:	ebfffdb3 	bl	514 <panic>
     e44:	e3a03000 	mov	r3, #0
     e48:	e3a02000 	mov	r2, #0
     e4c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     e50:	e51b0010 	ldr	r0, [fp, #-16]
     e54:	ebfffe43 	bl	768 <gettoken>
     e58:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     e5c:	e51b1010 	ldr	r1, [fp, #-16]
     e60:	e51b0008 	ldr	r0, [fp, #-8]
     e64:	ebffff8a 	bl	c94 <parseredirs>
     e68:	e50b0008 	str	r0, [fp, #-8]
     e6c:	e51b3008 	ldr	r3, [fp, #-8]
     e70:	e1a00003 	mov	r0, r3
     e74:	e24bd004 	sub	sp, fp, #4
     e78:	e8bd8800 	pop	{fp, pc}
     e7c:	00002cec 	.word	0x00002cec
     e80:	00002cf0 	.word	0x00002cf0
     e84:	00002cfc 	.word	0x00002cfc
     e88:	00002d00 	.word	0x00002d00

00000e8c <parseexec>:
     e8c:	e92d4800 	push	{fp, lr}
     e90:	e28db004 	add	fp, sp, #4
     e94:	e24dd020 	sub	sp, sp, #32
     e98:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
     e9c:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
     ea0:	e59f2160 	ldr	r2, [pc, #352]	@ 1008 <parseexec+0x17c>
     ea4:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
     ea8:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
     eac:	ebfffecb 	bl	9e0 <peek>
     eb0:	e1a03000 	mov	r3, r0
     eb4:	e3530000 	cmp	r3, #0
     eb8:	0a000004 	beq	ed0 <parseexec+0x44>
     ebc:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
     ec0:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
     ec4:	ebffffbe 	bl	dc4 <parseblock>
     ec8:	e1a03000 	mov	r3, r0
     ecc:	ea00004a 	b	ffc <parseexec+0x170>
     ed0:	ebfffda8 	bl	578 <execcmd>
     ed4:	e50b000c 	str	r0, [fp, #-12]
     ed8:	e51b300c 	ldr	r3, [fp, #-12]
     edc:	e50b3010 	str	r3, [fp, #-16]
     ee0:	e3a03000 	mov	r3, #0
     ee4:	e50b3008 	str	r3, [fp, #-8]
     ee8:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
     eec:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
     ef0:	e51b000c 	ldr	r0, [fp, #-12]
     ef4:	ebffff66 	bl	c94 <parseredirs>
     ef8:	e50b000c 	str	r0, [fp, #-12]
     efc:	ea000027 	b	fa0 <parseexec+0x114>
     f00:	e24b301c 	sub	r3, fp, #28
     f04:	e24b2018 	sub	r2, fp, #24
     f08:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
     f0c:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
     f10:	ebfffe14 	bl	768 <gettoken>
     f14:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
     f18:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     f1c:	e3530000 	cmp	r3, #0
     f20:	0a000026 	beq	fc0 <parseexec+0x134>
     f24:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     f28:	e3530061 	cmp	r3, #97	@ 0x61
     f2c:	0a000001 	beq	f38 <parseexec+0xac>
     f30:	e59f00d4 	ldr	r0, [pc, #212]	@ 100c <parseexec+0x180>
     f34:	ebfffd76 	bl	514 <panic>
     f38:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     f3c:	e51b1010 	ldr	r1, [fp, #-16]
     f40:	e51b3008 	ldr	r3, [fp, #-8]
     f44:	e1a03103 	lsl	r3, r3, #2
     f48:	e0813003 	add	r3, r1, r3
     f4c:	e5832004 	str	r2, [r3, #4]
     f50:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     f54:	e51b1010 	ldr	r1, [fp, #-16]
     f58:	e51b3008 	ldr	r3, [fp, #-8]
     f5c:	e283300a 	add	r3, r3, #10
     f60:	e1a03103 	lsl	r3, r3, #2
     f64:	e0813003 	add	r3, r1, r3
     f68:	e5832004 	str	r2, [r3, #4]
     f6c:	e51b3008 	ldr	r3, [fp, #-8]
     f70:	e2833001 	add	r3, r3, #1
     f74:	e50b3008 	str	r3, [fp, #-8]
     f78:	e51b3008 	ldr	r3, [fp, #-8]
     f7c:	e3530009 	cmp	r3, #9
     f80:	da000001 	ble	f8c <parseexec+0x100>
     f84:	e59f0084 	ldr	r0, [pc, #132]	@ 1010 <parseexec+0x184>
     f88:	ebfffd61 	bl	514 <panic>
     f8c:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
     f90:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
     f94:	e51b000c 	ldr	r0, [fp, #-12]
     f98:	ebffff3d 	bl	c94 <parseredirs>
     f9c:	e50b000c 	str	r0, [fp, #-12]
     fa0:	e59f206c 	ldr	r2, [pc, #108]	@ 1014 <parseexec+0x188>
     fa4:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
     fa8:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
     fac:	ebfffe8b 	bl	9e0 <peek>
     fb0:	e1a03000 	mov	r3, r0
     fb4:	e3530000 	cmp	r3, #0
     fb8:	0affffd0 	beq	f00 <parseexec+0x74>
     fbc:	ea000000 	b	fc4 <parseexec+0x138>
     fc0:	e1a00000 	nop			@ (mov r0, r0)
     fc4:	e51b2010 	ldr	r2, [fp, #-16]
     fc8:	e51b3008 	ldr	r3, [fp, #-8]
     fcc:	e1a03103 	lsl	r3, r3, #2
     fd0:	e0823003 	add	r3, r2, r3
     fd4:	e3a02000 	mov	r2, #0
     fd8:	e5832004 	str	r2, [r3, #4]
     fdc:	e51b2010 	ldr	r2, [fp, #-16]
     fe0:	e51b3008 	ldr	r3, [fp, #-8]
     fe4:	e283300a 	add	r3, r3, #10
     fe8:	e1a03103 	lsl	r3, r3, #2
     fec:	e0823003 	add	r3, r2, r3
     ff0:	e3a02000 	mov	r2, #0
     ff4:	e5832004 	str	r2, [r3, #4]
     ff8:	e51b300c 	ldr	r3, [fp, #-12]
     ffc:	e1a00003 	mov	r0, r3
    1000:	e24bd004 	sub	sp, fp, #4
    1004:	e8bd8800 	pop	{fp, pc}
    1008:	00002cec 	.word	0x00002cec
    100c:	00002cb4 	.word	0x00002cb4
    1010:	00002d14 	.word	0x00002d14
    1014:	00002d24 	.word	0x00002d24

00001018 <nulterminate>:
    1018:	e92d4800 	push	{fp, lr}
    101c:	e28db004 	add	fp, sp, #4
    1020:	e24dd020 	sub	sp, sp, #32
    1024:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
    1028:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    102c:	e3530000 	cmp	r3, #0
    1030:	1a000001 	bne	103c <nulterminate+0x24>
    1034:	e3a03000 	mov	r3, #0
    1038:	ea00004b 	b	116c <nulterminate+0x154>
    103c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1040:	e5933000 	ldr	r3, [r3]
    1044:	e2433001 	sub	r3, r3, #1
    1048:	e3530004 	cmp	r3, #4
    104c:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
    1050:	ea000044 	b	1168 <nulterminate+0x150>
    1054:	00001068 	.word	0x00001068
    1058:	000010c8 	.word	0x000010c8
    105c:	000010f4 	.word	0x000010f4
    1060:	00001120 	.word	0x00001120
    1064:	0000114c 	.word	0x0000114c
    1068:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    106c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1070:	e3a03000 	mov	r3, #0
    1074:	e50b3008 	str	r3, [fp, #-8]
    1078:	ea00000a 	b	10a8 <nulterminate+0x90>
    107c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
    1080:	e51b3008 	ldr	r3, [fp, #-8]
    1084:	e283300a 	add	r3, r3, #10
    1088:	e1a03103 	lsl	r3, r3, #2
    108c:	e0823003 	add	r3, r2, r3
    1090:	e5933004 	ldr	r3, [r3, #4]
    1094:	e3a02000 	mov	r2, #0
    1098:	e5c32000 	strb	r2, [r3]
    109c:	e51b3008 	ldr	r3, [fp, #-8]
    10a0:	e2833001 	add	r3, r3, #1
    10a4:	e50b3008 	str	r3, [fp, #-8]
    10a8:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
    10ac:	e51b3008 	ldr	r3, [fp, #-8]
    10b0:	e1a03103 	lsl	r3, r3, #2
    10b4:	e0823003 	add	r3, r2, r3
    10b8:	e5933004 	ldr	r3, [r3, #4]
    10bc:	e3530000 	cmp	r3, #0
    10c0:	1affffed 	bne	107c <nulterminate+0x64>
    10c4:	ea000027 	b	1168 <nulterminate+0x150>
    10c8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    10cc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10d4:	e5933004 	ldr	r3, [r3, #4]
    10d8:	e1a00003 	mov	r0, r3
    10dc:	ebffffcd 	bl	1018 <nulterminate>
    10e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10e4:	e593300c 	ldr	r3, [r3, #12]
    10e8:	e3a02000 	mov	r2, #0
    10ec:	e5c32000 	strb	r2, [r3]
    10f0:	ea00001c 	b	1168 <nulterminate+0x150>
    10f4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    10f8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    10fc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1100:	e5933004 	ldr	r3, [r3, #4]
    1104:	e1a00003 	mov	r0, r3
    1108:	ebffffc2 	bl	1018 <nulterminate>
    110c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1110:	e5933008 	ldr	r3, [r3, #8]
    1114:	e1a00003 	mov	r0, r3
    1118:	ebffffbe 	bl	1018 <nulterminate>
    111c:	ea000011 	b	1168 <nulterminate+0x150>
    1120:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1124:	e50b3010 	str	r3, [fp, #-16]
    1128:	e51b3010 	ldr	r3, [fp, #-16]
    112c:	e5933004 	ldr	r3, [r3, #4]
    1130:	e1a00003 	mov	r0, r3
    1134:	ebffffb7 	bl	1018 <nulterminate>
    1138:	e51b3010 	ldr	r3, [fp, #-16]
    113c:	e5933008 	ldr	r3, [r3, #8]
    1140:	e1a00003 	mov	r0, r3
    1144:	ebffffb3 	bl	1018 <nulterminate>
    1148:	ea000006 	b	1168 <nulterminate+0x150>
    114c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1150:	e50b300c 	str	r3, [fp, #-12]
    1154:	e51b300c 	ldr	r3, [fp, #-12]
    1158:	e5933004 	ldr	r3, [r3, #4]
    115c:	e1a00003 	mov	r0, r3
    1160:	ebffffac 	bl	1018 <nulterminate>
    1164:	e1a00000 	nop			@ (mov r0, r0)
    1168:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    116c:	e1a00003 	mov	r0, r3
    1170:	e24bd004 	sub	sp, fp, #4
    1174:	e8bd8800 	pop	{fp, pc}

00001178 <print_prompt_and_buffer>:
    1178:	e92d4800 	push	{fp, lr}
    117c:	e28db004 	add	fp, sp, #4
    1180:	e24dd008 	sub	sp, sp, #8
    1184:	e50b0008 	str	r0, [fp, #-8]
    1188:	e50b100c 	str	r1, [fp, #-12]
    118c:	e51b2008 	ldr	r2, [fp, #-8]
    1190:	e59f1010 	ldr	r1, [pc, #16]	@ 11a8 <print_prompt_and_buffer+0x30>
    1194:	e3a00002 	mov	r0, #2
    1198:	eb0004fa 	bl	2588 <printf>
    119c:	e1a00000 	nop			@ (mov r0, r0)
    11a0:	e24bd004 	sub	sp, fp, #4
    11a4:	e8bd8800 	pop	{fp, pc}
    11a8:	00002d2c 	.word	0x00002d2c

000011ac <autocomplete>:
    11ac:	e92d4800 	push	{fp, lr}
    11b0:	e28db004 	add	fp, sp, #4
    11b4:	e24dde4d 	sub	sp, sp, #1232	@ 0x4d0
    11b8:	e24dd008 	sub	sp, sp, #8
    11bc:	e50b04d8 	str	r0, [fp, #-1240]	@ 0xfffffb28
    11c0:	e50b14dc 	str	r1, [fp, #-1244]	@ 0xfffffb24
    11c4:	e3a03000 	mov	r3, #0
    11c8:	e50b3008 	str	r3, [fp, #-8]
    11cc:	ea00000b 	b	1200 <autocomplete+0x54>
    11d0:	e51b3008 	ldr	r3, [fp, #-8]
    11d4:	e51b24d8 	ldr	r2, [fp, #-1240]	@ 0xfffffb28
    11d8:	e0823003 	add	r3, r2, r3
    11dc:	e5d31000 	ldrb	r1, [r3]
    11e0:	e24b2f4e 	sub	r2, fp, #312	@ 0x138
    11e4:	e51b3008 	ldr	r3, [fp, #-8]
    11e8:	e0823003 	add	r3, r2, r3
    11ec:	e1a02001 	mov	r2, r1
    11f0:	e5c32000 	strb	r2, [r3]
    11f4:	e51b3008 	ldr	r3, [fp, #-8]
    11f8:	e2833001 	add	r3, r3, #1
    11fc:	e50b3008 	str	r3, [fp, #-8]
    1200:	e51b34dc 	ldr	r3, [fp, #-1244]	@ 0xfffffb24
    1204:	e5933000 	ldr	r3, [r3]
    1208:	e51b2008 	ldr	r2, [fp, #-8]
    120c:	e1520003 	cmp	r2, r3
    1210:	aa00000c 	bge	1248 <autocomplete+0x9c>
    1214:	e51b3008 	ldr	r3, [fp, #-8]
    1218:	e51b24d8 	ldr	r2, [fp, #-1240]	@ 0xfffffb28
    121c:	e0823003 	add	r3, r2, r3
    1220:	e5d33000 	ldrb	r3, [r3]
    1224:	e1a01003 	mov	r1, r3
    1228:	e59f0454 	ldr	r0, [pc, #1108]	@ 1684 <autocomplete+0x4d8>
    122c:	eb0001b2 	bl	18fc <strchr>
    1230:	e1a03000 	mov	r3, r0
    1234:	e3530000 	cmp	r3, #0
    1238:	1a000002 	bne	1248 <autocomplete+0x9c>
    123c:	e51b3008 	ldr	r3, [fp, #-8]
    1240:	e35300fe 	cmp	r3, #254	@ 0xfe
    1244:	9affffe1 	bls	11d0 <autocomplete+0x24>
    1248:	e24b2f4e 	sub	r2, fp, #312	@ 0x138
    124c:	e51b3008 	ldr	r3, [fp, #-8]
    1250:	e0823003 	add	r3, r2, r3
    1254:	e3a02000 	mov	r2, #0
    1258:	e5c32000 	strb	r2, [r3]
    125c:	e51b3008 	ldr	r3, [fp, #-8]
    1260:	e3530000 	cmp	r3, #0
    1264:	0a000101 	beq	1670 <autocomplete+0x4c4>
    1268:	e3a03000 	mov	r3, #0
    126c:	e50b300c 	str	r3, [fp, #-12]
    1270:	e59f3410 	ldr	r3, [pc, #1040]	@ 1688 <autocomplete+0x4dc>
    1274:	e50b34c0 	str	r3, [fp, #-1216]	@ 0xfffffb40
    1278:	e59f340c 	ldr	r3, [pc, #1036]	@ 168c <autocomplete+0x4e0>
    127c:	e50b34bc 	str	r3, [fp, #-1212]	@ 0xfffffb44
    1280:	e3a03000 	mov	r3, #0
    1284:	e50b3010 	str	r3, [fp, #-16]
    1288:	ea00007e 	b	1488 <autocomplete+0x2dc>
    128c:	e51b3010 	ldr	r3, [fp, #-16]
    1290:	e1a03103 	lsl	r3, r3, #2
    1294:	e2433004 	sub	r3, r3, #4
    1298:	e083300b 	add	r3, r3, fp
    129c:	e51334bc 	ldr	r3, [r3, #-1212]	@ 0xfffffb44
    12a0:	e3a01000 	mov	r1, #0
    12a4:	e1a00003 	mov	r0, r3
    12a8:	eb000367 	bl	204c <open>
    12ac:	e50b0038 	str	r0, [fp, #-56]	@ 0xffffffc8
    12b0:	e51b3038 	ldr	r3, [fp, #-56]	@ 0xffffffc8
    12b4:	e3530000 	cmp	r3, #0
    12b8:	ba00006e 	blt	1478 <autocomplete+0x2cc>
    12bc:	ea000060 	b	1444 <autocomplete+0x298>
    12c0:	e24b3004 	sub	r3, fp, #4
    12c4:	e2433d13 	sub	r3, r3, #1216	@ 0x4c0
    12c8:	e243300c 	sub	r3, r3, #12
    12cc:	e1d330b0 	ldrh	r3, [r3]
    12d0:	e3530000 	cmp	r3, #0
    12d4:	0a000059 	beq	1440 <autocomplete+0x294>
    12d8:	e3a03000 	mov	r3, #0
    12dc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    12e0:	ea000016 	b	1340 <autocomplete+0x194>
    12e4:	e24b3d13 	sub	r3, fp, #1216	@ 0x4c0
    12e8:	e2433004 	sub	r3, r3, #4
    12ec:	e243300a 	sub	r3, r3, #10
    12f0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    12f4:	e0833002 	add	r3, r3, r2
    12f8:	e5d33000 	ldrb	r3, [r3]
    12fc:	e3530000 	cmp	r3, #0
    1300:	0a000012 	beq	1350 <autocomplete+0x1a4>
    1304:	e24b3d13 	sub	r3, fp, #1216	@ 0x4c0
    1308:	e2433004 	sub	r3, r3, #4
    130c:	e243300a 	sub	r3, r3, #10
    1310:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    1314:	e0833002 	add	r3, r3, r2
    1318:	e5d32000 	ldrb	r2, [r3]
    131c:	e24b1f4e 	sub	r1, fp, #312	@ 0x138
    1320:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1324:	e0813003 	add	r3, r1, r3
    1328:	e5d33000 	ldrb	r3, [r3]
    132c:	e1520003 	cmp	r2, r3
    1330:	1a000006 	bne	1350 <autocomplete+0x1a4>
    1334:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1338:	e2833001 	add	r3, r3, #1
    133c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1340:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    1344:	e51b3008 	ldr	r3, [fp, #-8]
    1348:	e1520003 	cmp	r2, r3
    134c:	baffffe4 	blt	12e4 <autocomplete+0x138>
    1350:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    1354:	e51b3008 	ldr	r3, [fp, #-8]
    1358:	e1520003 	cmp	r2, r3
    135c:	1a000038 	bne	1444 <autocomplete+0x298>
    1360:	e51b300c 	ldr	r3, [fp, #-12]
    1364:	e353003f 	cmp	r3, #63	@ 0x3f
    1368:	ca000035 	bgt	1444 <autocomplete+0x298>
    136c:	e3a03000 	mov	r3, #0
    1370:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1374:	ea000015 	b	13d0 <autocomplete+0x224>
    1378:	e24b3d13 	sub	r3, fp, #1216	@ 0x4c0
    137c:	e2433004 	sub	r3, r3, #4
    1380:	e243300a 	sub	r3, r3, #10
    1384:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
    1388:	e0833002 	add	r3, r3, r2
    138c:	e5d31000 	ldrb	r1, [r3]
    1390:	e51b200c 	ldr	r2, [fp, #-12]
    1394:	e1a03002 	mov	r3, r2
    1398:	e1a03183 	lsl	r3, r3, #3
    139c:	e0433002 	sub	r3, r3, r2
    13a0:	e1a03083 	lsl	r3, r3, #1
    13a4:	e2433004 	sub	r3, r3, #4
    13a8:	e083200b 	add	r2, r3, fp
    13ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13b0:	e0823003 	add	r3, r2, r3
    13b4:	e2433e4b 	sub	r3, r3, #1200	@ 0x4b0
    13b8:	e2433004 	sub	r3, r3, #4
    13bc:	e1a02001 	mov	r2, r1
    13c0:	e5c32000 	strb	r2, [r3]
    13c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13c8:	e2833001 	add	r3, r3, #1
    13cc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    13d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13d4:	e353000d 	cmp	r3, #13
    13d8:	ca000007 	bgt	13fc <autocomplete+0x250>
    13dc:	e24b3d13 	sub	r3, fp, #1216	@ 0x4c0
    13e0:	e2433004 	sub	r3, r3, #4
    13e4:	e243300a 	sub	r3, r3, #10
    13e8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
    13ec:	e0833002 	add	r3, r3, r2
    13f0:	e5d33000 	ldrb	r3, [r3]
    13f4:	e3530000 	cmp	r3, #0
    13f8:	1affffde 	bne	1378 <autocomplete+0x1cc>
    13fc:	e51b200c 	ldr	r2, [fp, #-12]
    1400:	e1a03002 	mov	r3, r2
    1404:	e1a03183 	lsl	r3, r3, #3
    1408:	e0433002 	sub	r3, r3, r2
    140c:	e1a03083 	lsl	r3, r3, #1
    1410:	e2433004 	sub	r3, r3, #4
    1414:	e083200b 	add	r2, r3, fp
    1418:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    141c:	e0823003 	add	r3, r2, r3
    1420:	e2433e4b 	sub	r3, r3, #1200	@ 0x4b0
    1424:	e2433004 	sub	r3, r3, #4
    1428:	e3a02000 	mov	r2, #0
    142c:	e5c32000 	strb	r2, [r3]
    1430:	e51b300c 	ldr	r3, [fp, #-12]
    1434:	e2833001 	add	r3, r3, #1
    1438:	e50b300c 	str	r3, [fp, #-12]
    143c:	ea000000 	b	1444 <autocomplete+0x298>
    1440:	e1a00000 	nop			@ (mov r0, r0)
    1444:	e24b3d13 	sub	r3, fp, #1216	@ 0x4c0
    1448:	e2433004 	sub	r3, r3, #4
    144c:	e243300c 	sub	r3, r3, #12
    1450:	e3a02010 	mov	r2, #16
    1454:	e1a01003 	mov	r1, r3
    1458:	e51b0038 	ldr	r0, [fp, #-56]	@ 0xffffffc8
    145c:	eb0002cd 	bl	1f98 <read>
    1460:	e1a03000 	mov	r3, r0
    1464:	e3530010 	cmp	r3, #16
    1468:	0affff94 	beq	12c0 <autocomplete+0x114>
    146c:	e51b0038 	ldr	r0, [fp, #-56]	@ 0xffffffc8
    1470:	eb0002da 	bl	1fe0 <close>
    1474:	ea000000 	b	147c <autocomplete+0x2d0>
    1478:	e1a00000 	nop			@ (mov r0, r0)
    147c:	e51b3010 	ldr	r3, [fp, #-16]
    1480:	e2833001 	add	r3, r3, #1
    1484:	e50b3010 	str	r3, [fp, #-16]
    1488:	e51b3010 	ldr	r3, [fp, #-16]
    148c:	e3530001 	cmp	r3, #1
    1490:	daffff7d 	ble	128c <autocomplete+0xe0>
    1494:	e51b300c 	ldr	r3, [fp, #-12]
    1498:	e3530000 	cmp	r3, #0
    149c:	0a000075 	beq	1678 <autocomplete+0x4cc>
    14a0:	e51b300c 	ldr	r3, [fp, #-12]
    14a4:	e3530001 	cmp	r3, #1
    14a8:	1a000050 	bne	15f0 <autocomplete+0x444>
    14ac:	e24b3e4b 	sub	r3, fp, #1200	@ 0x4b0
    14b0:	e2433004 	sub	r3, r3, #4
    14b4:	e2433004 	sub	r3, r3, #4
    14b8:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
    14bc:	e24b3f4e 	sub	r3, fp, #312	@ 0x138
    14c0:	e1a00003 	mov	r0, r3
    14c4:	eb0000ad 	bl	1780 <strlen>
    14c8:	e1a03000 	mov	r3, r0
    14cc:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
    14d0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    14d4:	eb0000a9 	bl	1780 <strlen>
    14d8:	e1a03000 	mov	r3, r0
    14dc:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
    14e0:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
    14e4:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
    14e8:	e0423003 	sub	r3, r2, r3
    14ec:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
    14f0:	e51b34dc 	ldr	r3, [fp, #-1244]	@ 0xfffffb24
    14f4:	e5932000 	ldr	r2, [r3]
    14f8:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    14fc:	e0823003 	add	r3, r2, r3
    1500:	e35300fe 	cmp	r3, #254	@ 0xfe
    1504:	ca00005c 	bgt	167c <autocomplete+0x4d0>
    1508:	e3a03000 	mov	r3, #0
    150c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1510:	ea00001b 	b	1584 <autocomplete+0x3d8>
    1514:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
    1518:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    151c:	e0823003 	add	r3, r2, r3
    1520:	e1a02003 	mov	r2, r3
    1524:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
    1528:	e0833002 	add	r3, r3, r2
    152c:	e5d33000 	ldrb	r3, [r3]
    1530:	e54b3031 	strb	r3, [fp, #-49]	@ 0xffffffcf
    1534:	e51b34dc 	ldr	r3, [fp, #-1244]	@ 0xfffffb24
    1538:	e5933000 	ldr	r3, [r3]
    153c:	e1a02003 	mov	r2, r3
    1540:	e51b34d8 	ldr	r3, [fp, #-1240]	@ 0xfffffb28
    1544:	e0833002 	add	r3, r3, r2
    1548:	e55b2031 	ldrb	r2, [fp, #-49]	@ 0xffffffcf
    154c:	e5c32000 	strb	r2, [r3]
    1550:	e55b3031 	ldrb	r3, [fp, #-49]	@ 0xffffffcf
    1554:	e1a02003 	mov	r2, r3
    1558:	e59f1130 	ldr	r1, [pc, #304]	@ 1690 <autocomplete+0x4e4>
    155c:	e3a00001 	mov	r0, #1
    1560:	eb000408 	bl	2588 <printf>
    1564:	e51b34dc 	ldr	r3, [fp, #-1244]	@ 0xfffffb24
    1568:	e5933000 	ldr	r3, [r3]
    156c:	e2832001 	add	r2, r3, #1
    1570:	e51b34dc 	ldr	r3, [fp, #-1244]	@ 0xfffffb24
    1574:	e5832000 	str	r2, [r3]
    1578:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    157c:	e2833001 	add	r3, r3, #1
    1580:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1584:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
    1588:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    158c:	e1520003 	cmp	r2, r3
    1590:	baffffdf 	blt	1514 <autocomplete+0x368>
    1594:	e51b34dc 	ldr	r3, [fp, #-1244]	@ 0xfffffb24
    1598:	e5933000 	ldr	r3, [r3]
    159c:	e1a02003 	mov	r2, r3
    15a0:	e51b34d8 	ldr	r3, [fp, #-1240]	@ 0xfffffb28
    15a4:	e0833002 	add	r3, r3, r2
    15a8:	e3a02020 	mov	r2, #32
    15ac:	e5c32000 	strb	r2, [r3]
    15b0:	e59f10dc 	ldr	r1, [pc, #220]	@ 1694 <autocomplete+0x4e8>
    15b4:	e3a00001 	mov	r0, #1
    15b8:	eb0003f2 	bl	2588 <printf>
    15bc:	e51b34dc 	ldr	r3, [fp, #-1244]	@ 0xfffffb24
    15c0:	e5933000 	ldr	r3, [r3]
    15c4:	e2832001 	add	r2, r3, #1
    15c8:	e51b34dc 	ldr	r3, [fp, #-1244]	@ 0xfffffb24
    15cc:	e5832000 	str	r2, [r3]
    15d0:	e51b34dc 	ldr	r3, [fp, #-1244]	@ 0xfffffb24
    15d4:	e5933000 	ldr	r3, [r3]
    15d8:	e1a02003 	mov	r2, r3
    15dc:	e51b34d8 	ldr	r3, [fp, #-1240]	@ 0xfffffb28
    15e0:	e0833002 	add	r3, r3, r2
    15e4:	e3a02000 	mov	r2, #0
    15e8:	e5c32000 	strb	r2, [r3]
    15ec:	ea000022 	b	167c <autocomplete+0x4d0>
    15f0:	e59f10a0 	ldr	r1, [pc, #160]	@ 1698 <autocomplete+0x4ec>
    15f4:	e3a00002 	mov	r0, #2
    15f8:	eb0003e2 	bl	2588 <printf>
    15fc:	e3a03000 	mov	r3, #0
    1600:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    1604:	ea00000f 	b	1648 <autocomplete+0x49c>
    1608:	e24b2e4b 	sub	r2, fp, #1200	@ 0x4b0
    160c:	e2422004 	sub	r2, r2, #4
    1610:	e2422004 	sub	r2, r2, #4
    1614:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
    1618:	e1a03001 	mov	r3, r1
    161c:	e1a03183 	lsl	r3, r3, #3
    1620:	e0433001 	sub	r3, r3, r1
    1624:	e1a03083 	lsl	r3, r3, #1
    1628:	e0823003 	add	r3, r2, r3
    162c:	e1a02003 	mov	r2, r3
    1630:	e59f1064 	ldr	r1, [pc, #100]	@ 169c <autocomplete+0x4f0>
    1634:	e3a00002 	mov	r0, #2
    1638:	eb0003d2 	bl	2588 <printf>
    163c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1640:	e2833001 	add	r3, r3, #1
    1644:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    1648:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
    164c:	e51b300c 	ldr	r3, [fp, #-12]
    1650:	e1520003 	cmp	r2, r3
    1654:	baffffeb 	blt	1608 <autocomplete+0x45c>
    1658:	e51b34dc 	ldr	r3, [fp, #-1244]	@ 0xfffffb24
    165c:	e5933000 	ldr	r3, [r3]
    1660:	e1a01003 	mov	r1, r3
    1664:	e51b04d8 	ldr	r0, [fp, #-1240]	@ 0xfffffb28
    1668:	ebfffec2 	bl	1178 <print_prompt_and_buffer>
    166c:	ea000002 	b	167c <autocomplete+0x4d0>
    1670:	e1a00000 	nop			@ (mov r0, r0)
    1674:	ea000000 	b	167c <autocomplete+0x4d0>
    1678:	e1a00000 	nop			@ (mov r0, r0)
    167c:	e24bd004 	sub	sp, fp, #4
    1680:	e8bd8800 	pop	{fp, pc}
    1684:	00002d5c 	.word	0x00002d5c
    1688:	00002d34 	.word	0x00002d34
    168c:	00002d38 	.word	0x00002d38
    1690:	00002d40 	.word	0x00002d40
    1694:	00002d44 	.word	0x00002d44
    1698:	00002d48 	.word	0x00002d48
    169c:	00002d4c 	.word	0x00002d4c

000016a0 <strcpy>:
    16a0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    16a4:	e28db000 	add	fp, sp, #0
    16a8:	e24dd014 	sub	sp, sp, #20
    16ac:	e50b0010 	str	r0, [fp, #-16]
    16b0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    16b4:	e51b3010 	ldr	r3, [fp, #-16]
    16b8:	e50b3008 	str	r3, [fp, #-8]
    16bc:	e1a00000 	nop			@ (mov r0, r0)
    16c0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    16c4:	e2823001 	add	r3, r2, #1
    16c8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    16cc:	e51b3010 	ldr	r3, [fp, #-16]
    16d0:	e2831001 	add	r1, r3, #1
    16d4:	e50b1010 	str	r1, [fp, #-16]
    16d8:	e5d22000 	ldrb	r2, [r2]
    16dc:	e5c32000 	strb	r2, [r3]
    16e0:	e5d33000 	ldrb	r3, [r3]
    16e4:	e3530000 	cmp	r3, #0
    16e8:	1afffff4 	bne	16c0 <strcpy+0x20>
    16ec:	e51b3008 	ldr	r3, [fp, #-8]
    16f0:	e1a00003 	mov	r0, r3
    16f4:	e28bd000 	add	sp, fp, #0
    16f8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    16fc:	e12fff1e 	bx	lr

00001700 <strcmp>:
    1700:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1704:	e28db000 	add	fp, sp, #0
    1708:	e24dd00c 	sub	sp, sp, #12
    170c:	e50b0008 	str	r0, [fp, #-8]
    1710:	e50b100c 	str	r1, [fp, #-12]
    1714:	ea000005 	b	1730 <strcmp+0x30>
    1718:	e51b3008 	ldr	r3, [fp, #-8]
    171c:	e2833001 	add	r3, r3, #1
    1720:	e50b3008 	str	r3, [fp, #-8]
    1724:	e51b300c 	ldr	r3, [fp, #-12]
    1728:	e2833001 	add	r3, r3, #1
    172c:	e50b300c 	str	r3, [fp, #-12]
    1730:	e51b3008 	ldr	r3, [fp, #-8]
    1734:	e5d33000 	ldrb	r3, [r3]
    1738:	e3530000 	cmp	r3, #0
    173c:	0a000005 	beq	1758 <strcmp+0x58>
    1740:	e51b3008 	ldr	r3, [fp, #-8]
    1744:	e5d32000 	ldrb	r2, [r3]
    1748:	e51b300c 	ldr	r3, [fp, #-12]
    174c:	e5d33000 	ldrb	r3, [r3]
    1750:	e1520003 	cmp	r2, r3
    1754:	0affffef 	beq	1718 <strcmp+0x18>
    1758:	e51b3008 	ldr	r3, [fp, #-8]
    175c:	e5d33000 	ldrb	r3, [r3]
    1760:	e1a02003 	mov	r2, r3
    1764:	e51b300c 	ldr	r3, [fp, #-12]
    1768:	e5d33000 	ldrb	r3, [r3]
    176c:	e0423003 	sub	r3, r2, r3
    1770:	e1a00003 	mov	r0, r3
    1774:	e28bd000 	add	sp, fp, #0
    1778:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    177c:	e12fff1e 	bx	lr

00001780 <strlen>:
    1780:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1784:	e28db000 	add	fp, sp, #0
    1788:	e24dd014 	sub	sp, sp, #20
    178c:	e50b0010 	str	r0, [fp, #-16]
    1790:	e3a03000 	mov	r3, #0
    1794:	e50b3008 	str	r3, [fp, #-8]
    1798:	ea000002 	b	17a8 <strlen+0x28>
    179c:	e51b3008 	ldr	r3, [fp, #-8]
    17a0:	e2833001 	add	r3, r3, #1
    17a4:	e50b3008 	str	r3, [fp, #-8]
    17a8:	e51b3008 	ldr	r3, [fp, #-8]
    17ac:	e51b2010 	ldr	r2, [fp, #-16]
    17b0:	e0823003 	add	r3, r2, r3
    17b4:	e5d33000 	ldrb	r3, [r3]
    17b8:	e3530000 	cmp	r3, #0
    17bc:	1afffff6 	bne	179c <strlen+0x1c>
    17c0:	e51b3008 	ldr	r3, [fp, #-8]
    17c4:	e1a00003 	mov	r0, r3
    17c8:	e28bd000 	add	sp, fp, #0
    17cc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    17d0:	e12fff1e 	bx	lr

000017d4 <memset>:
    17d4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    17d8:	e28db000 	add	fp, sp, #0
    17dc:	e24dd024 	sub	sp, sp, #36	@ 0x24
    17e0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    17e4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
    17e8:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
    17ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    17f0:	e50b3008 	str	r3, [fp, #-8]
    17f4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    17f8:	e54b300d 	strb	r3, [fp, #-13]
    17fc:	e55b200d 	ldrb	r2, [fp, #-13]
    1800:	e1a03002 	mov	r3, r2
    1804:	e1a03403 	lsl	r3, r3, #8
    1808:	e0833002 	add	r3, r3, r2
    180c:	e1a03803 	lsl	r3, r3, #16
    1810:	e1a02003 	mov	r2, r3
    1814:	e55b300d 	ldrb	r3, [fp, #-13]
    1818:	e1a03403 	lsl	r3, r3, #8
    181c:	e1822003 	orr	r2, r2, r3
    1820:	e55b300d 	ldrb	r3, [fp, #-13]
    1824:	e1823003 	orr	r3, r2, r3
    1828:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    182c:	ea000008 	b	1854 <memset+0x80>
    1830:	e51b3008 	ldr	r3, [fp, #-8]
    1834:	e55b200d 	ldrb	r2, [fp, #-13]
    1838:	e5c32000 	strb	r2, [r3]
    183c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1840:	e2433001 	sub	r3, r3, #1
    1844:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    1848:	e51b3008 	ldr	r3, [fp, #-8]
    184c:	e2833001 	add	r3, r3, #1
    1850:	e50b3008 	str	r3, [fp, #-8]
    1854:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1858:	e3530000 	cmp	r3, #0
    185c:	0a000003 	beq	1870 <memset+0x9c>
    1860:	e51b3008 	ldr	r3, [fp, #-8]
    1864:	e2033003 	and	r3, r3, #3
    1868:	e3530000 	cmp	r3, #0
    186c:	1affffef 	bne	1830 <memset+0x5c>
    1870:	e51b3008 	ldr	r3, [fp, #-8]
    1874:	e50b300c 	str	r3, [fp, #-12]
    1878:	ea000008 	b	18a0 <memset+0xcc>
    187c:	e51b300c 	ldr	r3, [fp, #-12]
    1880:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    1884:	e5832000 	str	r2, [r3]
    1888:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    188c:	e2433004 	sub	r3, r3, #4
    1890:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    1894:	e51b300c 	ldr	r3, [fp, #-12]
    1898:	e2833004 	add	r3, r3, #4
    189c:	e50b300c 	str	r3, [fp, #-12]
    18a0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    18a4:	e3530003 	cmp	r3, #3
    18a8:	8afffff3 	bhi	187c <memset+0xa8>
    18ac:	e51b300c 	ldr	r3, [fp, #-12]
    18b0:	e50b3008 	str	r3, [fp, #-8]
    18b4:	ea000008 	b	18dc <memset+0x108>
    18b8:	e51b3008 	ldr	r3, [fp, #-8]
    18bc:	e55b200d 	ldrb	r2, [fp, #-13]
    18c0:	e5c32000 	strb	r2, [r3]
    18c4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    18c8:	e2433001 	sub	r3, r3, #1
    18cc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    18d0:	e51b3008 	ldr	r3, [fp, #-8]
    18d4:	e2833001 	add	r3, r3, #1
    18d8:	e50b3008 	str	r3, [fp, #-8]
    18dc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    18e0:	e3530000 	cmp	r3, #0
    18e4:	1afffff3 	bne	18b8 <memset+0xe4>
    18e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    18ec:	e1a00003 	mov	r0, r3
    18f0:	e28bd000 	add	sp, fp, #0
    18f4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    18f8:	e12fff1e 	bx	lr

000018fc <strchr>:
    18fc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1900:	e28db000 	add	fp, sp, #0
    1904:	e24dd00c 	sub	sp, sp, #12
    1908:	e50b0008 	str	r0, [fp, #-8]
    190c:	e1a03001 	mov	r3, r1
    1910:	e54b3009 	strb	r3, [fp, #-9]
    1914:	ea000009 	b	1940 <strchr+0x44>
    1918:	e51b3008 	ldr	r3, [fp, #-8]
    191c:	e5d33000 	ldrb	r3, [r3]
    1920:	e55b2009 	ldrb	r2, [fp, #-9]
    1924:	e1520003 	cmp	r2, r3
    1928:	1a000001 	bne	1934 <strchr+0x38>
    192c:	e51b3008 	ldr	r3, [fp, #-8]
    1930:	ea000007 	b	1954 <strchr+0x58>
    1934:	e51b3008 	ldr	r3, [fp, #-8]
    1938:	e2833001 	add	r3, r3, #1
    193c:	e50b3008 	str	r3, [fp, #-8]
    1940:	e51b3008 	ldr	r3, [fp, #-8]
    1944:	e5d33000 	ldrb	r3, [r3]
    1948:	e3530000 	cmp	r3, #0
    194c:	1afffff1 	bne	1918 <strchr+0x1c>
    1950:	e3a03000 	mov	r3, #0
    1954:	e1a00003 	mov	r0, r3
    1958:	e28bd000 	add	sp, fp, #0
    195c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1960:	e12fff1e 	bx	lr

00001964 <gets>:
    1964:	e92d4800 	push	{fp, lr}
    1968:	e28db004 	add	fp, sp, #4
    196c:	e24dd018 	sub	sp, sp, #24
    1970:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1974:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
    1978:	e3a03000 	mov	r3, #0
    197c:	e50b3008 	str	r3, [fp, #-8]
    1980:	ea000016 	b	19e0 <gets+0x7c>
    1984:	e24b300d 	sub	r3, fp, #13
    1988:	e3a02001 	mov	r2, #1
    198c:	e1a01003 	mov	r1, r3
    1990:	e3a00000 	mov	r0, #0
    1994:	eb00017f 	bl	1f98 <read>
    1998:	e50b000c 	str	r0, [fp, #-12]
    199c:	e51b300c 	ldr	r3, [fp, #-12]
    19a0:	e3530000 	cmp	r3, #0
    19a4:	da000013 	ble	19f8 <gets+0x94>
    19a8:	e51b3008 	ldr	r3, [fp, #-8]
    19ac:	e2832001 	add	r2, r3, #1
    19b0:	e50b2008 	str	r2, [fp, #-8]
    19b4:	e1a02003 	mov	r2, r3
    19b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    19bc:	e0833002 	add	r3, r3, r2
    19c0:	e55b200d 	ldrb	r2, [fp, #-13]
    19c4:	e5c32000 	strb	r2, [r3]
    19c8:	e55b300d 	ldrb	r3, [fp, #-13]
    19cc:	e353000a 	cmp	r3, #10
    19d0:	0a000009 	beq	19fc <gets+0x98>
    19d4:	e55b300d 	ldrb	r3, [fp, #-13]
    19d8:	e353000d 	cmp	r3, #13
    19dc:	0a000006 	beq	19fc <gets+0x98>
    19e0:	e51b3008 	ldr	r3, [fp, #-8]
    19e4:	e2833001 	add	r3, r3, #1
    19e8:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
    19ec:	e1520003 	cmp	r2, r3
    19f0:	caffffe3 	bgt	1984 <gets+0x20>
    19f4:	ea000000 	b	19fc <gets+0x98>
    19f8:	e1a00000 	nop			@ (mov r0, r0)
    19fc:	e51b3008 	ldr	r3, [fp, #-8]
    1a00:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
    1a04:	e0823003 	add	r3, r2, r3
    1a08:	e3a02000 	mov	r2, #0
    1a0c:	e5c32000 	strb	r2, [r3]
    1a10:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1a14:	e1a00003 	mov	r0, r3
    1a18:	e24bd004 	sub	sp, fp, #4
    1a1c:	e8bd8800 	pop	{fp, pc}

00001a20 <stat>:
    1a20:	e92d4800 	push	{fp, lr}
    1a24:	e28db004 	add	fp, sp, #4
    1a28:	e24dd010 	sub	sp, sp, #16
    1a2c:	e50b0010 	str	r0, [fp, #-16]
    1a30:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    1a34:	e3a01000 	mov	r1, #0
    1a38:	e51b0010 	ldr	r0, [fp, #-16]
    1a3c:	eb000182 	bl	204c <open>
    1a40:	e50b0008 	str	r0, [fp, #-8]
    1a44:	e51b3008 	ldr	r3, [fp, #-8]
    1a48:	e3530000 	cmp	r3, #0
    1a4c:	aa000001 	bge	1a58 <stat+0x38>
    1a50:	e3e03000 	mvn	r3, #0
    1a54:	ea000006 	b	1a74 <stat+0x54>
    1a58:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    1a5c:	e51b0008 	ldr	r0, [fp, #-8]
    1a60:	eb000194 	bl	20b8 <fstat>
    1a64:	e50b000c 	str	r0, [fp, #-12]
    1a68:	e51b0008 	ldr	r0, [fp, #-8]
    1a6c:	eb00015b 	bl	1fe0 <close>
    1a70:	e51b300c 	ldr	r3, [fp, #-12]
    1a74:	e1a00003 	mov	r0, r3
    1a78:	e24bd004 	sub	sp, fp, #4
    1a7c:	e8bd8800 	pop	{fp, pc}

00001a80 <atoi>:
    1a80:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1a84:	e28db000 	add	fp, sp, #0
    1a88:	e24dd014 	sub	sp, sp, #20
    1a8c:	e50b0010 	str	r0, [fp, #-16]
    1a90:	e3a03000 	mov	r3, #0
    1a94:	e50b3008 	str	r3, [fp, #-8]
    1a98:	ea00000c 	b	1ad0 <atoi+0x50>
    1a9c:	e51b2008 	ldr	r2, [fp, #-8]
    1aa0:	e1a03002 	mov	r3, r2
    1aa4:	e1a03103 	lsl	r3, r3, #2
    1aa8:	e0833002 	add	r3, r3, r2
    1aac:	e1a03083 	lsl	r3, r3, #1
    1ab0:	e1a01003 	mov	r1, r3
    1ab4:	e51b3010 	ldr	r3, [fp, #-16]
    1ab8:	e2832001 	add	r2, r3, #1
    1abc:	e50b2010 	str	r2, [fp, #-16]
    1ac0:	e5d33000 	ldrb	r3, [r3]
    1ac4:	e0813003 	add	r3, r1, r3
    1ac8:	e2433030 	sub	r3, r3, #48	@ 0x30
    1acc:	e50b3008 	str	r3, [fp, #-8]
    1ad0:	e51b3010 	ldr	r3, [fp, #-16]
    1ad4:	e5d33000 	ldrb	r3, [r3]
    1ad8:	e353002f 	cmp	r3, #47	@ 0x2f
    1adc:	9a000003 	bls	1af0 <atoi+0x70>
    1ae0:	e51b3010 	ldr	r3, [fp, #-16]
    1ae4:	e5d33000 	ldrb	r3, [r3]
    1ae8:	e3530039 	cmp	r3, #57	@ 0x39
    1aec:	9affffea 	bls	1a9c <atoi+0x1c>
    1af0:	e51b3010 	ldr	r3, [fp, #-16]
    1af4:	e5d33000 	ldrb	r3, [r3]
    1af8:	e3530000 	cmp	r3, #0
    1afc:	1a000001 	bne	1b08 <atoi+0x88>
    1b00:	e51b3008 	ldr	r3, [fp, #-8]
    1b04:	ea000000 	b	1b0c <atoi+0x8c>
    1b08:	e3e03000 	mvn	r3, #0
    1b0c:	e1a00003 	mov	r0, r3
    1b10:	e28bd000 	add	sp, fp, #0
    1b14:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1b18:	e12fff1e 	bx	lr

00001b1c <memmove>:
    1b1c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1b20:	e28db000 	add	fp, sp, #0
    1b24:	e24dd01c 	sub	sp, sp, #28
    1b28:	e50b0010 	str	r0, [fp, #-16]
    1b2c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    1b30:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
    1b34:	e51b3010 	ldr	r3, [fp, #-16]
    1b38:	e50b3008 	str	r3, [fp, #-8]
    1b3c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1b40:	e50b300c 	str	r3, [fp, #-12]
    1b44:	ea000007 	b	1b68 <memmove+0x4c>
    1b48:	e51b200c 	ldr	r2, [fp, #-12]
    1b4c:	e2823001 	add	r3, r2, #1
    1b50:	e50b300c 	str	r3, [fp, #-12]
    1b54:	e51b3008 	ldr	r3, [fp, #-8]
    1b58:	e2831001 	add	r1, r3, #1
    1b5c:	e50b1008 	str	r1, [fp, #-8]
    1b60:	e5d22000 	ldrb	r2, [r2]
    1b64:	e5c32000 	strb	r2, [r3]
    1b68:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1b6c:	e2432001 	sub	r2, r3, #1
    1b70:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
    1b74:	e3530000 	cmp	r3, #0
    1b78:	cafffff2 	bgt	1b48 <memmove+0x2c>
    1b7c:	e51b3010 	ldr	r3, [fp, #-16]
    1b80:	e1a00003 	mov	r0, r3
    1b84:	e28bd000 	add	sp, fp, #0
    1b88:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1b8c:	e12fff1e 	bx	lr

00001b90 <initiateLock>:
    1b90:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1b94:	e28db000 	add	fp, sp, #0
    1b98:	e24dd00c 	sub	sp, sp, #12
    1b9c:	e50b0008 	str	r0, [fp, #-8]
    1ba0:	e51b3008 	ldr	r3, [fp, #-8]
    1ba4:	e3a02000 	mov	r2, #0
    1ba8:	e5832000 	str	r2, [r3]
    1bac:	e51b3008 	ldr	r3, [fp, #-8]
    1bb0:	e3a02001 	mov	r2, #1
    1bb4:	e5832004 	str	r2, [r3, #4]
    1bb8:	e1a00000 	nop			@ (mov r0, r0)
    1bbc:	e28bd000 	add	sp, fp, #0
    1bc0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1bc4:	e12fff1e 	bx	lr

00001bc8 <xchg>:
    1bc8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1bcc:	e28db000 	add	fp, sp, #0
    1bd0:	e24dd00c 	sub	sp, sp, #12
    1bd4:	e50b0008 	str	r0, [fp, #-8]
    1bd8:	e50b100c 	str	r1, [fp, #-12]
    1bdc:	e51b200c 	ldr	r2, [fp, #-12]
    1be0:	e51b3008 	ldr	r3, [fp, #-8]
    1be4:	e1931f9f 	ldrex	r1, [r3]
    1be8:	e1830f92 	strex	r0, r2, [r3]
    1bec:	e3500000 	cmp	r0, #0
    1bf0:	1afffffb 	bne	1be4 <xchg+0x1c>
    1bf4:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
    1bf8:	e1a03001 	mov	r3, r1
    1bfc:	e1a00003 	mov	r0, r3
    1c00:	e28bd000 	add	sp, fp, #0
    1c04:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1c08:	e12fff1e 	bx	lr

00001c0c <acquireLock>:
    1c0c:	e92d4800 	push	{fp, lr}
    1c10:	e28db004 	add	fp, sp, #4
    1c14:	e24dd008 	sub	sp, sp, #8
    1c18:	e50b0008 	str	r0, [fp, #-8]
    1c1c:	e51b3008 	ldr	r3, [fp, #-8]
    1c20:	e5933004 	ldr	r3, [r3, #4]
    1c24:	e3530000 	cmp	r3, #0
    1c28:	0a000008 	beq	1c50 <acquireLock+0x44>
    1c2c:	e1a00000 	nop			@ (mov r0, r0)
    1c30:	e51b3008 	ldr	r3, [fp, #-8]
    1c34:	e3a01001 	mov	r1, #1
    1c38:	e1a00003 	mov	r0, r3
    1c3c:	ebffffe1 	bl	1bc8 <xchg>
    1c40:	e1a03000 	mov	r3, r0
    1c44:	e3530000 	cmp	r3, #0
    1c48:	1afffff8 	bne	1c30 <acquireLock+0x24>
    1c4c:	ea000000 	b	1c54 <acquireLock+0x48>
    1c50:	e1a00000 	nop			@ (mov r0, r0)
    1c54:	e24bd004 	sub	sp, fp, #4
    1c58:	e8bd8800 	pop	{fp, pc}

00001c5c <releaseLock>:
    1c5c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1c60:	e28db000 	add	fp, sp, #0
    1c64:	e24dd00c 	sub	sp, sp, #12
    1c68:	e50b0008 	str	r0, [fp, #-8]
    1c6c:	e51b3008 	ldr	r3, [fp, #-8]
    1c70:	e5933004 	ldr	r3, [r3, #4]
    1c74:	e3530000 	cmp	r3, #0
    1c78:	0a000007 	beq	1c9c <releaseLock+0x40>
    1c7c:	e51b3008 	ldr	r3, [fp, #-8]
    1c80:	e5933000 	ldr	r3, [r3]
    1c84:	e3530001 	cmp	r3, #1
    1c88:	1a000005 	bne	1ca4 <releaseLock+0x48>
    1c8c:	e51b3008 	ldr	r3, [fp, #-8]
    1c90:	e3a02000 	mov	r2, #0
    1c94:	e5832000 	str	r2, [r3]
    1c98:	ea000002 	b	1ca8 <releaseLock+0x4c>
    1c9c:	e1a00000 	nop			@ (mov r0, r0)
    1ca0:	ea000000 	b	1ca8 <releaseLock+0x4c>
    1ca4:	e1a00000 	nop			@ (mov r0, r0)
    1ca8:	e28bd000 	add	sp, fp, #0
    1cac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1cb0:	e12fff1e 	bx	lr

00001cb4 <initiateCondVar>:
    1cb4:	e92d4800 	push	{fp, lr}
    1cb8:	e28db004 	add	fp, sp, #4
    1cbc:	e24dd008 	sub	sp, sp, #8
    1cc0:	e50b0008 	str	r0, [fp, #-8]
    1cc4:	eb0001b8 	bl	23ac <getChannel>
    1cc8:	e1a02000 	mov	r2, r0
    1ccc:	e51b3008 	ldr	r3, [fp, #-8]
    1cd0:	e5832000 	str	r2, [r3]
    1cd4:	e51b3008 	ldr	r3, [fp, #-8]
    1cd8:	e3a02001 	mov	r2, #1
    1cdc:	e5832004 	str	r2, [r3, #4]
    1ce0:	e1a00000 	nop			@ (mov r0, r0)
    1ce4:	e24bd004 	sub	sp, fp, #4
    1ce8:	e8bd8800 	pop	{fp, pc}

00001cec <condWait>:
    1cec:	e92d4800 	push	{fp, lr}
    1cf0:	e28db004 	add	fp, sp, #4
    1cf4:	e24dd008 	sub	sp, sp, #8
    1cf8:	e50b0008 	str	r0, [fp, #-8]
    1cfc:	e50b100c 	str	r1, [fp, #-12]
    1d00:	e51b3008 	ldr	r3, [fp, #-8]
    1d04:	e5933004 	ldr	r3, [r3, #4]
    1d08:	e3530000 	cmp	r3, #0
    1d0c:	0a00000c 	beq	1d44 <condWait+0x58>
    1d10:	e51b300c 	ldr	r3, [fp, #-12]
    1d14:	e5933004 	ldr	r3, [r3, #4]
    1d18:	e3530000 	cmp	r3, #0
    1d1c:	0a000008 	beq	1d44 <condWait+0x58>
    1d20:	e51b000c 	ldr	r0, [fp, #-12]
    1d24:	ebffffcc 	bl	1c5c <releaseLock>
    1d28:	e51b3008 	ldr	r3, [fp, #-8]
    1d2c:	e5933000 	ldr	r3, [r3]
    1d30:	e1a00003 	mov	r0, r3
    1d34:	eb000193 	bl	2388 <sleepChan>
    1d38:	e51b000c 	ldr	r0, [fp, #-12]
    1d3c:	ebffffb2 	bl	1c0c <acquireLock>
    1d40:	ea000000 	b	1d48 <condWait+0x5c>
    1d44:	e1a00000 	nop			@ (mov r0, r0)
    1d48:	e24bd004 	sub	sp, fp, #4
    1d4c:	e8bd8800 	pop	{fp, pc}

00001d50 <broadcast>:
    1d50:	e92d4800 	push	{fp, lr}
    1d54:	e28db004 	add	fp, sp, #4
    1d58:	e24dd008 	sub	sp, sp, #8
    1d5c:	e50b0008 	str	r0, [fp, #-8]
    1d60:	e51b3008 	ldr	r3, [fp, #-8]
    1d64:	e5933004 	ldr	r3, [r3, #4]
    1d68:	e3530000 	cmp	r3, #0
    1d6c:	0a000004 	beq	1d84 <broadcast+0x34>
    1d70:	e51b3008 	ldr	r3, [fp, #-8]
    1d74:	e5933000 	ldr	r3, [r3]
    1d78:	e1a00003 	mov	r0, r3
    1d7c:	eb000193 	bl	23d0 <sigChan>
    1d80:	ea000000 	b	1d88 <broadcast+0x38>
    1d84:	e1a00000 	nop			@ (mov r0, r0)
    1d88:	e24bd004 	sub	sp, fp, #4
    1d8c:	e8bd8800 	pop	{fp, pc}

00001d90 <signal>:
    1d90:	e92d4800 	push	{fp, lr}
    1d94:	e28db004 	add	fp, sp, #4
    1d98:	e24dd008 	sub	sp, sp, #8
    1d9c:	e50b0008 	str	r0, [fp, #-8]
    1da0:	e51b3008 	ldr	r3, [fp, #-8]
    1da4:	e5933004 	ldr	r3, [r3, #4]
    1da8:	e3530000 	cmp	r3, #0
    1dac:	0a000004 	beq	1dc4 <signal+0x34>
    1db0:	e51b3008 	ldr	r3, [fp, #-8]
    1db4:	e5933000 	ldr	r3, [r3]
    1db8:	e1a00003 	mov	r0, r3
    1dbc:	eb00018c 	bl	23f4 <sigOneChan>
    1dc0:	ea000000 	b	1dc8 <signal+0x38>
    1dc4:	e1a00000 	nop			@ (mov r0, r0)
    1dc8:	e24bd004 	sub	sp, fp, #4
    1dcc:	e8bd8800 	pop	{fp, pc}

00001dd0 <semInit>:
    1dd0:	e92d4800 	push	{fp, lr}
    1dd4:	e28db004 	add	fp, sp, #4
    1dd8:	e24dd008 	sub	sp, sp, #8
    1ddc:	e50b0008 	str	r0, [fp, #-8]
    1de0:	e50b100c 	str	r1, [fp, #-12]
    1de4:	e51b3008 	ldr	r3, [fp, #-8]
    1de8:	e51b200c 	ldr	r2, [fp, #-12]
    1dec:	e5832000 	str	r2, [r3]
    1df0:	e51b3008 	ldr	r3, [fp, #-8]
    1df4:	e2833004 	add	r3, r3, #4
    1df8:	e1a00003 	mov	r0, r3
    1dfc:	ebffff63 	bl	1b90 <initiateLock>
    1e00:	e51b3008 	ldr	r3, [fp, #-8]
    1e04:	e283300c 	add	r3, r3, #12
    1e08:	e1a00003 	mov	r0, r3
    1e0c:	ebffffa8 	bl	1cb4 <initiateCondVar>
    1e10:	e51b3008 	ldr	r3, [fp, #-8]
    1e14:	e3a02001 	mov	r2, #1
    1e18:	e5832014 	str	r2, [r3, #20]
    1e1c:	e1a00000 	nop			@ (mov r0, r0)
    1e20:	e24bd004 	sub	sp, fp, #4
    1e24:	e8bd8800 	pop	{fp, pc}

00001e28 <semUp>:
    1e28:	e92d4800 	push	{fp, lr}
    1e2c:	e28db004 	add	fp, sp, #4
    1e30:	e24dd008 	sub	sp, sp, #8
    1e34:	e50b0008 	str	r0, [fp, #-8]
    1e38:	e51b3008 	ldr	r3, [fp, #-8]
    1e3c:	e2833004 	add	r3, r3, #4
    1e40:	e1a00003 	mov	r0, r3
    1e44:	ebffff70 	bl	1c0c <acquireLock>
    1e48:	e51b3008 	ldr	r3, [fp, #-8]
    1e4c:	e5933000 	ldr	r3, [r3]
    1e50:	e2832001 	add	r2, r3, #1
    1e54:	e51b3008 	ldr	r3, [fp, #-8]
    1e58:	e5832000 	str	r2, [r3]
    1e5c:	e51b3008 	ldr	r3, [fp, #-8]
    1e60:	e283300c 	add	r3, r3, #12
    1e64:	e1a00003 	mov	r0, r3
    1e68:	ebffffc8 	bl	1d90 <signal>
    1e6c:	e51b3008 	ldr	r3, [fp, #-8]
    1e70:	e2833004 	add	r3, r3, #4
    1e74:	e1a00003 	mov	r0, r3
    1e78:	ebffff77 	bl	1c5c <releaseLock>
    1e7c:	e1a00000 	nop			@ (mov r0, r0)
    1e80:	e24bd004 	sub	sp, fp, #4
    1e84:	e8bd8800 	pop	{fp, pc}

00001e88 <semDown>:
    1e88:	e92d4800 	push	{fp, lr}
    1e8c:	e28db004 	add	fp, sp, #4
    1e90:	e24dd008 	sub	sp, sp, #8
    1e94:	e50b0008 	str	r0, [fp, #-8]
    1e98:	e51b3008 	ldr	r3, [fp, #-8]
    1e9c:	e2833004 	add	r3, r3, #4
    1ea0:	e1a00003 	mov	r0, r3
    1ea4:	ebffff58 	bl	1c0c <acquireLock>
    1ea8:	ea000006 	b	1ec8 <semDown+0x40>
    1eac:	e51b3008 	ldr	r3, [fp, #-8]
    1eb0:	e283200c 	add	r2, r3, #12
    1eb4:	e51b3008 	ldr	r3, [fp, #-8]
    1eb8:	e2833004 	add	r3, r3, #4
    1ebc:	e1a01003 	mov	r1, r3
    1ec0:	e1a00002 	mov	r0, r2
    1ec4:	ebffff88 	bl	1cec <condWait>
    1ec8:	e51b3008 	ldr	r3, [fp, #-8]
    1ecc:	e5933000 	ldr	r3, [r3]
    1ed0:	e3530000 	cmp	r3, #0
    1ed4:	dafffff4 	ble	1eac <semDown+0x24>
    1ed8:	e51b3008 	ldr	r3, [fp, #-8]
    1edc:	e5933000 	ldr	r3, [r3]
    1ee0:	e2432001 	sub	r2, r3, #1
    1ee4:	e51b3008 	ldr	r3, [fp, #-8]
    1ee8:	e5832000 	str	r2, [r3]
    1eec:	e51b3008 	ldr	r3, [fp, #-8]
    1ef0:	e2833004 	add	r3, r3, #4
    1ef4:	e1a00003 	mov	r0, r3
    1ef8:	ebffff57 	bl	1c5c <releaseLock>
    1efc:	e1a00000 	nop			@ (mov r0, r0)
    1f00:	e24bd004 	sub	sp, fp, #4
    1f04:	e8bd8800 	pop	{fp, pc}

00001f08 <fork>:
    1f08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1f0c:	e1a04003 	mov	r4, r3
    1f10:	e1a03002 	mov	r3, r2
    1f14:	e1a02001 	mov	r2, r1
    1f18:	e1a01000 	mov	r1, r0
    1f1c:	e3a00001 	mov	r0, #1
    1f20:	ef000000 	svc	0x00000000
    1f24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1f28:	e12fff1e 	bx	lr

00001f2c <exit>:
    1f2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1f30:	e1a04003 	mov	r4, r3
    1f34:	e1a03002 	mov	r3, r2
    1f38:	e1a02001 	mov	r2, r1
    1f3c:	e1a01000 	mov	r1, r0
    1f40:	e3a00002 	mov	r0, #2
    1f44:	ef000000 	svc	0x00000000
    1f48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1f4c:	e12fff1e 	bx	lr

00001f50 <wait>:
    1f50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1f54:	e1a04003 	mov	r4, r3
    1f58:	e1a03002 	mov	r3, r2
    1f5c:	e1a02001 	mov	r2, r1
    1f60:	e1a01000 	mov	r1, r0
    1f64:	e3a00003 	mov	r0, #3
    1f68:	ef000000 	svc	0x00000000
    1f6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1f70:	e12fff1e 	bx	lr

00001f74 <pipe>:
    1f74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1f78:	e1a04003 	mov	r4, r3
    1f7c:	e1a03002 	mov	r3, r2
    1f80:	e1a02001 	mov	r2, r1
    1f84:	e1a01000 	mov	r1, r0
    1f88:	e3a00004 	mov	r0, #4
    1f8c:	ef000000 	svc	0x00000000
    1f90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1f94:	e12fff1e 	bx	lr

00001f98 <read>:
    1f98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1f9c:	e1a04003 	mov	r4, r3
    1fa0:	e1a03002 	mov	r3, r2
    1fa4:	e1a02001 	mov	r2, r1
    1fa8:	e1a01000 	mov	r1, r0
    1fac:	e3a00005 	mov	r0, #5
    1fb0:	ef000000 	svc	0x00000000
    1fb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1fb8:	e12fff1e 	bx	lr

00001fbc <write>:
    1fbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1fc0:	e1a04003 	mov	r4, r3
    1fc4:	e1a03002 	mov	r3, r2
    1fc8:	e1a02001 	mov	r2, r1
    1fcc:	e1a01000 	mov	r1, r0
    1fd0:	e3a00010 	mov	r0, #16
    1fd4:	ef000000 	svc	0x00000000
    1fd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1fdc:	e12fff1e 	bx	lr

00001fe0 <close>:
    1fe0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1fe4:	e1a04003 	mov	r4, r3
    1fe8:	e1a03002 	mov	r3, r2
    1fec:	e1a02001 	mov	r2, r1
    1ff0:	e1a01000 	mov	r1, r0
    1ff4:	e3a00015 	mov	r0, #21
    1ff8:	ef000000 	svc	0x00000000
    1ffc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2000:	e12fff1e 	bx	lr

00002004 <kill>:
    2004:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2008:	e1a04003 	mov	r4, r3
    200c:	e1a03002 	mov	r3, r2
    2010:	e1a02001 	mov	r2, r1
    2014:	e1a01000 	mov	r1, r0
    2018:	e3a00006 	mov	r0, #6
    201c:	ef000000 	svc	0x00000000
    2020:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2024:	e12fff1e 	bx	lr

00002028 <exec>:
    2028:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    202c:	e1a04003 	mov	r4, r3
    2030:	e1a03002 	mov	r3, r2
    2034:	e1a02001 	mov	r2, r1
    2038:	e1a01000 	mov	r1, r0
    203c:	e3a00007 	mov	r0, #7
    2040:	ef000000 	svc	0x00000000
    2044:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2048:	e12fff1e 	bx	lr

0000204c <open>:
    204c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2050:	e1a04003 	mov	r4, r3
    2054:	e1a03002 	mov	r3, r2
    2058:	e1a02001 	mov	r2, r1
    205c:	e1a01000 	mov	r1, r0
    2060:	e3a0000f 	mov	r0, #15
    2064:	ef000000 	svc	0x00000000
    2068:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    206c:	e12fff1e 	bx	lr

00002070 <mknod>:
    2070:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2074:	e1a04003 	mov	r4, r3
    2078:	e1a03002 	mov	r3, r2
    207c:	e1a02001 	mov	r2, r1
    2080:	e1a01000 	mov	r1, r0
    2084:	e3a00011 	mov	r0, #17
    2088:	ef000000 	svc	0x00000000
    208c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2090:	e12fff1e 	bx	lr

00002094 <unlink>:
    2094:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2098:	e1a04003 	mov	r4, r3
    209c:	e1a03002 	mov	r3, r2
    20a0:	e1a02001 	mov	r2, r1
    20a4:	e1a01000 	mov	r1, r0
    20a8:	e3a00012 	mov	r0, #18
    20ac:	ef000000 	svc	0x00000000
    20b0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    20b4:	e12fff1e 	bx	lr

000020b8 <fstat>:
    20b8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    20bc:	e1a04003 	mov	r4, r3
    20c0:	e1a03002 	mov	r3, r2
    20c4:	e1a02001 	mov	r2, r1
    20c8:	e1a01000 	mov	r1, r0
    20cc:	e3a00008 	mov	r0, #8
    20d0:	ef000000 	svc	0x00000000
    20d4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    20d8:	e12fff1e 	bx	lr

000020dc <link>:
    20dc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    20e0:	e1a04003 	mov	r4, r3
    20e4:	e1a03002 	mov	r3, r2
    20e8:	e1a02001 	mov	r2, r1
    20ec:	e1a01000 	mov	r1, r0
    20f0:	e3a00013 	mov	r0, #19
    20f4:	ef000000 	svc	0x00000000
    20f8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    20fc:	e12fff1e 	bx	lr

00002100 <mkdir>:
    2100:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2104:	e1a04003 	mov	r4, r3
    2108:	e1a03002 	mov	r3, r2
    210c:	e1a02001 	mov	r2, r1
    2110:	e1a01000 	mov	r1, r0
    2114:	e3a00014 	mov	r0, #20
    2118:	ef000000 	svc	0x00000000
    211c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2120:	e12fff1e 	bx	lr

00002124 <chdir>:
    2124:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2128:	e1a04003 	mov	r4, r3
    212c:	e1a03002 	mov	r3, r2
    2130:	e1a02001 	mov	r2, r1
    2134:	e1a01000 	mov	r1, r0
    2138:	e3a00009 	mov	r0, #9
    213c:	ef000000 	svc	0x00000000
    2140:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2144:	e12fff1e 	bx	lr

00002148 <dup>:
    2148:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    214c:	e1a04003 	mov	r4, r3
    2150:	e1a03002 	mov	r3, r2
    2154:	e1a02001 	mov	r2, r1
    2158:	e1a01000 	mov	r1, r0
    215c:	e3a0000a 	mov	r0, #10
    2160:	ef000000 	svc	0x00000000
    2164:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2168:	e12fff1e 	bx	lr

0000216c <getpid>:
    216c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2170:	e1a04003 	mov	r4, r3
    2174:	e1a03002 	mov	r3, r2
    2178:	e1a02001 	mov	r2, r1
    217c:	e1a01000 	mov	r1, r0
    2180:	e3a0000b 	mov	r0, #11
    2184:	ef000000 	svc	0x00000000
    2188:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    218c:	e12fff1e 	bx	lr

00002190 <sbrk>:
    2190:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2194:	e1a04003 	mov	r4, r3
    2198:	e1a03002 	mov	r3, r2
    219c:	e1a02001 	mov	r2, r1
    21a0:	e1a01000 	mov	r1, r0
    21a4:	e3a0000c 	mov	r0, #12
    21a8:	ef000000 	svc	0x00000000
    21ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    21b0:	e12fff1e 	bx	lr

000021b4 <sleep>:
    21b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    21b8:	e1a04003 	mov	r4, r3
    21bc:	e1a03002 	mov	r3, r2
    21c0:	e1a02001 	mov	r2, r1
    21c4:	e1a01000 	mov	r1, r0
    21c8:	e3a0000d 	mov	r0, #13
    21cc:	ef000000 	svc	0x00000000
    21d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    21d4:	e12fff1e 	bx	lr

000021d8 <uptime>:
    21d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    21dc:	e1a04003 	mov	r4, r3
    21e0:	e1a03002 	mov	r3, r2
    21e4:	e1a02001 	mov	r2, r1
    21e8:	e1a01000 	mov	r1, r0
    21ec:	e3a0000e 	mov	r0, #14
    21f0:	ef000000 	svc	0x00000000
    21f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    21f8:	e12fff1e 	bx	lr

000021fc <getprocs>:
    21fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2200:	e1a04003 	mov	r4, r3
    2204:	e1a03002 	mov	r3, r2
    2208:	e1a02001 	mov	r2, r1
    220c:	e1a01000 	mov	r1, r0
    2210:	e3a00016 	mov	r0, #22
    2214:	ef000000 	svc	0x00000000
    2218:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    221c:	e12fff1e 	bx	lr

00002220 <settickets>:
    2220:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2224:	e1a04003 	mov	r4, r3
    2228:	e1a03002 	mov	r3, r2
    222c:	e1a02001 	mov	r2, r1
    2230:	e1a01000 	mov	r1, r0
    2234:	e3a00017 	mov	r0, #23
    2238:	ef000000 	svc	0x00000000
    223c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2240:	e12fff1e 	bx	lr

00002244 <srand>:
    2244:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2248:	e1a04003 	mov	r4, r3
    224c:	e1a03002 	mov	r3, r2
    2250:	e1a02001 	mov	r2, r1
    2254:	e1a01000 	mov	r1, r0
    2258:	e3a00018 	mov	r0, #24
    225c:	ef000000 	svc	0x00000000
    2260:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2264:	e12fff1e 	bx	lr

00002268 <getpinfo>:
    2268:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    226c:	e1a04003 	mov	r4, r3
    2270:	e1a03002 	mov	r3, r2
    2274:	e1a02001 	mov	r2, r1
    2278:	e1a01000 	mov	r1, r0
    227c:	e3a00019 	mov	r0, #25
    2280:	ef000000 	svc	0x00000000
    2284:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2288:	e12fff1e 	bx	lr

0000228c <dumppagetable>:
    228c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2290:	e1a04003 	mov	r4, r3
    2294:	e1a03002 	mov	r3, r2
    2298:	e1a02001 	mov	r2, r1
    229c:	e1a01000 	mov	r1, r0
    22a0:	e3a0001a 	mov	r0, #26
    22a4:	ef000000 	svc	0x00000000
    22a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    22ac:	e12fff1e 	bx	lr

000022b0 <thread_create>:
    22b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    22b4:	e1a04003 	mov	r4, r3
    22b8:	e1a03002 	mov	r3, r2
    22bc:	e1a02001 	mov	r2, r1
    22c0:	e1a01000 	mov	r1, r0
    22c4:	e3a0001b 	mov	r0, #27
    22c8:	ef000000 	svc	0x00000000
    22cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    22d0:	e12fff1e 	bx	lr

000022d4 <thread_exit>:
    22d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    22d8:	e1a04003 	mov	r4, r3
    22dc:	e1a03002 	mov	r3, r2
    22e0:	e1a02001 	mov	r2, r1
    22e4:	e1a01000 	mov	r1, r0
    22e8:	e3a0001c 	mov	r0, #28
    22ec:	ef000000 	svc	0x00000000
    22f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    22f4:	e12fff1e 	bx	lr

000022f8 <thread_join>:
    22f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    22fc:	e1a04003 	mov	r4, r3
    2300:	e1a03002 	mov	r3, r2
    2304:	e1a02001 	mov	r2, r1
    2308:	e1a01000 	mov	r1, r0
    230c:	e3a0001d 	mov	r0, #29
    2310:	ef000000 	svc	0x00000000
    2314:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2318:	e12fff1e 	bx	lr

0000231c <waitpid>:
    231c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2320:	e1a04003 	mov	r4, r3
    2324:	e1a03002 	mov	r3, r2
    2328:	e1a02001 	mov	r2, r1
    232c:	e1a01000 	mov	r1, r0
    2330:	e3a0001e 	mov	r0, #30
    2334:	ef000000 	svc	0x00000000
    2338:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    233c:	e12fff1e 	bx	lr

00002340 <barrier_init>:
    2340:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2344:	e1a04003 	mov	r4, r3
    2348:	e1a03002 	mov	r3, r2
    234c:	e1a02001 	mov	r2, r1
    2350:	e1a01000 	mov	r1, r0
    2354:	e3a0001f 	mov	r0, #31
    2358:	ef000000 	svc	0x00000000
    235c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2360:	e12fff1e 	bx	lr

00002364 <barrier_check>:
    2364:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2368:	e1a04003 	mov	r4, r3
    236c:	e1a03002 	mov	r3, r2
    2370:	e1a02001 	mov	r2, r1
    2374:	e1a01000 	mov	r1, r0
    2378:	e3a00020 	mov	r0, #32
    237c:	ef000000 	svc	0x00000000
    2380:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2384:	e12fff1e 	bx	lr

00002388 <sleepChan>:
    2388:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    238c:	e1a04003 	mov	r4, r3
    2390:	e1a03002 	mov	r3, r2
    2394:	e1a02001 	mov	r2, r1
    2398:	e1a01000 	mov	r1, r0
    239c:	e3a00024 	mov	r0, #36	@ 0x24
    23a0:	ef000000 	svc	0x00000000
    23a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    23a8:	e12fff1e 	bx	lr

000023ac <getChannel>:
    23ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    23b0:	e1a04003 	mov	r4, r3
    23b4:	e1a03002 	mov	r3, r2
    23b8:	e1a02001 	mov	r2, r1
    23bc:	e1a01000 	mov	r1, r0
    23c0:	e3a00025 	mov	r0, #37	@ 0x25
    23c4:	ef000000 	svc	0x00000000
    23c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    23cc:	e12fff1e 	bx	lr

000023d0 <sigChan>:
    23d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    23d4:	e1a04003 	mov	r4, r3
    23d8:	e1a03002 	mov	r3, r2
    23dc:	e1a02001 	mov	r2, r1
    23e0:	e1a01000 	mov	r1, r0
    23e4:	e3a00026 	mov	r0, #38	@ 0x26
    23e8:	ef000000 	svc	0x00000000
    23ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    23f0:	e12fff1e 	bx	lr

000023f4 <sigOneChan>:
    23f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    23f8:	e1a04003 	mov	r4, r3
    23fc:	e1a03002 	mov	r3, r2
    2400:	e1a02001 	mov	r2, r1
    2404:	e1a01000 	mov	r1, r0
    2408:	e3a00027 	mov	r0, #39	@ 0x27
    240c:	ef000000 	svc	0x00000000
    2410:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2414:	e12fff1e 	bx	lr

00002418 <putc>:
    2418:	e92d4800 	push	{fp, lr}
    241c:	e28db004 	add	fp, sp, #4
    2420:	e24dd008 	sub	sp, sp, #8
    2424:	e50b0008 	str	r0, [fp, #-8]
    2428:	e1a03001 	mov	r3, r1
    242c:	e54b3009 	strb	r3, [fp, #-9]
    2430:	e24b3009 	sub	r3, fp, #9
    2434:	e3a02001 	mov	r2, #1
    2438:	e1a01003 	mov	r1, r3
    243c:	e51b0008 	ldr	r0, [fp, #-8]
    2440:	ebfffedd 	bl	1fbc <write>
    2444:	e1a00000 	nop			@ (mov r0, r0)
    2448:	e24bd004 	sub	sp, fp, #4
    244c:	e8bd8800 	pop	{fp, pc}

00002450 <printint>:
    2450:	e92d4800 	push	{fp, lr}
    2454:	e28db004 	add	fp, sp, #4
    2458:	e24dd030 	sub	sp, sp, #48	@ 0x30
    245c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    2460:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    2464:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    2468:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    246c:	e3a03000 	mov	r3, #0
    2470:	e50b300c 	str	r3, [fp, #-12]
    2474:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    2478:	e3530000 	cmp	r3, #0
    247c:	0a000008 	beq	24a4 <printint+0x54>
    2480:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    2484:	e3530000 	cmp	r3, #0
    2488:	aa000005 	bge	24a4 <printint+0x54>
    248c:	e3a03001 	mov	r3, #1
    2490:	e50b300c 	str	r3, [fp, #-12]
    2494:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    2498:	e2633000 	rsb	r3, r3, #0
    249c:	e50b3010 	str	r3, [fp, #-16]
    24a0:	ea000001 	b	24ac <printint+0x5c>
    24a4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    24a8:	e50b3010 	str	r3, [fp, #-16]
    24ac:	e3a03000 	mov	r3, #0
    24b0:	e50b3008 	str	r3, [fp, #-8]
    24b4:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    24b8:	e51b3010 	ldr	r3, [fp, #-16]
    24bc:	e1a01002 	mov	r1, r2
    24c0:	e1a00003 	mov	r0, r3
    24c4:	eb0001d5 	bl	2c20 <__aeabi_uidivmod>
    24c8:	e1a03001 	mov	r3, r1
    24cc:	e1a01003 	mov	r1, r3
    24d0:	e51b3008 	ldr	r3, [fp, #-8]
    24d4:	e2832001 	add	r2, r3, #1
    24d8:	e50b2008 	str	r2, [fp, #-8]
    24dc:	e59f20a0 	ldr	r2, [pc, #160]	@ 2584 <printint+0x134>
    24e0:	e7d22001 	ldrb	r2, [r2, r1]
    24e4:	e2433004 	sub	r3, r3, #4
    24e8:	e083300b 	add	r3, r3, fp
    24ec:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    24f0:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    24f4:	e1a01003 	mov	r1, r3
    24f8:	e51b0010 	ldr	r0, [fp, #-16]
    24fc:	eb00018a 	bl	2b2c <__udivsi3>
    2500:	e1a03000 	mov	r3, r0
    2504:	e50b3010 	str	r3, [fp, #-16]
    2508:	e51b3010 	ldr	r3, [fp, #-16]
    250c:	e3530000 	cmp	r3, #0
    2510:	1affffe7 	bne	24b4 <printint+0x64>
    2514:	e51b300c 	ldr	r3, [fp, #-12]
    2518:	e3530000 	cmp	r3, #0
    251c:	0a00000e 	beq	255c <printint+0x10c>
    2520:	e51b3008 	ldr	r3, [fp, #-8]
    2524:	e2832001 	add	r2, r3, #1
    2528:	e50b2008 	str	r2, [fp, #-8]
    252c:	e2433004 	sub	r3, r3, #4
    2530:	e083300b 	add	r3, r3, fp
    2534:	e3a0202d 	mov	r2, #45	@ 0x2d
    2538:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    253c:	ea000006 	b	255c <printint+0x10c>
    2540:	e24b2020 	sub	r2, fp, #32
    2544:	e51b3008 	ldr	r3, [fp, #-8]
    2548:	e0823003 	add	r3, r2, r3
    254c:	e5d33000 	ldrb	r3, [r3]
    2550:	e1a01003 	mov	r1, r3
    2554:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    2558:	ebffffae 	bl	2418 <putc>
    255c:	e51b3008 	ldr	r3, [fp, #-8]
    2560:	e2433001 	sub	r3, r3, #1
    2564:	e50b3008 	str	r3, [fp, #-8]
    2568:	e51b3008 	ldr	r3, [fp, #-8]
    256c:	e3530000 	cmp	r3, #0
    2570:	aafffff2 	bge	2540 <printint+0xf0>
    2574:	e1a00000 	nop			@ (mov r0, r0)
    2578:	e1a00000 	nop			@ (mov r0, r0)
    257c:	e24bd004 	sub	sp, fp, #4
    2580:	e8bd8800 	pop	{fp, pc}
    2584:	00002d6c 	.word	0x00002d6c

00002588 <printf>:
    2588:	e92d000e 	push	{r1, r2, r3}
    258c:	e92d4800 	push	{fp, lr}
    2590:	e28db004 	add	fp, sp, #4
    2594:	e24dd024 	sub	sp, sp, #36	@ 0x24
    2598:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    259c:	e3a03000 	mov	r3, #0
    25a0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    25a4:	e28b3008 	add	r3, fp, #8
    25a8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    25ac:	e3a03000 	mov	r3, #0
    25b0:	e50b3010 	str	r3, [fp, #-16]
    25b4:	ea000074 	b	278c <printf+0x204>
    25b8:	e59b2004 	ldr	r2, [fp, #4]
    25bc:	e51b3010 	ldr	r3, [fp, #-16]
    25c0:	e0823003 	add	r3, r2, r3
    25c4:	e5d33000 	ldrb	r3, [r3]
    25c8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    25cc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    25d0:	e3530000 	cmp	r3, #0
    25d4:	1a00000b 	bne	2608 <printf+0x80>
    25d8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    25dc:	e3530025 	cmp	r3, #37	@ 0x25
    25e0:	1a000002 	bne	25f0 <printf+0x68>
    25e4:	e3a03025 	mov	r3, #37	@ 0x25
    25e8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    25ec:	ea000063 	b	2780 <printf+0x1f8>
    25f0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    25f4:	e6ef3073 	uxtb	r3, r3
    25f8:	e1a01003 	mov	r1, r3
    25fc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    2600:	ebffff84 	bl	2418 <putc>
    2604:	ea00005d 	b	2780 <printf+0x1f8>
    2608:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    260c:	e3530025 	cmp	r3, #37	@ 0x25
    2610:	1a00005a 	bne	2780 <printf+0x1f8>
    2614:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    2618:	e3530064 	cmp	r3, #100	@ 0x64
    261c:	1a00000a 	bne	264c <printf+0xc4>
    2620:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    2624:	e5933000 	ldr	r3, [r3]
    2628:	e1a01003 	mov	r1, r3
    262c:	e3a03001 	mov	r3, #1
    2630:	e3a0200a 	mov	r2, #10
    2634:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    2638:	ebffff84 	bl	2450 <printint>
    263c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    2640:	e2833004 	add	r3, r3, #4
    2644:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    2648:	ea00004a 	b	2778 <printf+0x1f0>
    264c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    2650:	e3530078 	cmp	r3, #120	@ 0x78
    2654:	0a000002 	beq	2664 <printf+0xdc>
    2658:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    265c:	e3530070 	cmp	r3, #112	@ 0x70
    2660:	1a00000a 	bne	2690 <printf+0x108>
    2664:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    2668:	e5933000 	ldr	r3, [r3]
    266c:	e1a01003 	mov	r1, r3
    2670:	e3a03000 	mov	r3, #0
    2674:	e3a02010 	mov	r2, #16
    2678:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    267c:	ebffff73 	bl	2450 <printint>
    2680:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    2684:	e2833004 	add	r3, r3, #4
    2688:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    268c:	ea000039 	b	2778 <printf+0x1f0>
    2690:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    2694:	e3530073 	cmp	r3, #115	@ 0x73
    2698:	1a000018 	bne	2700 <printf+0x178>
    269c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    26a0:	e5933000 	ldr	r3, [r3]
    26a4:	e50b300c 	str	r3, [fp, #-12]
    26a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    26ac:	e2833004 	add	r3, r3, #4
    26b0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    26b4:	e51b300c 	ldr	r3, [fp, #-12]
    26b8:	e3530000 	cmp	r3, #0
    26bc:	1a00000a 	bne	26ec <printf+0x164>
    26c0:	e59f30f4 	ldr	r3, [pc, #244]	@ 27bc <printf+0x234>
    26c4:	e50b300c 	str	r3, [fp, #-12]
    26c8:	ea000007 	b	26ec <printf+0x164>
    26cc:	e51b300c 	ldr	r3, [fp, #-12]
    26d0:	e5d33000 	ldrb	r3, [r3]
    26d4:	e1a01003 	mov	r1, r3
    26d8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    26dc:	ebffff4d 	bl	2418 <putc>
    26e0:	e51b300c 	ldr	r3, [fp, #-12]
    26e4:	e2833001 	add	r3, r3, #1
    26e8:	e50b300c 	str	r3, [fp, #-12]
    26ec:	e51b300c 	ldr	r3, [fp, #-12]
    26f0:	e5d33000 	ldrb	r3, [r3]
    26f4:	e3530000 	cmp	r3, #0
    26f8:	1afffff3 	bne	26cc <printf+0x144>
    26fc:	ea00001d 	b	2778 <printf+0x1f0>
    2700:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    2704:	e3530063 	cmp	r3, #99	@ 0x63
    2708:	1a000009 	bne	2734 <printf+0x1ac>
    270c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    2710:	e5933000 	ldr	r3, [r3]
    2714:	e6ef3073 	uxtb	r3, r3
    2718:	e1a01003 	mov	r1, r3
    271c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    2720:	ebffff3c 	bl	2418 <putc>
    2724:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    2728:	e2833004 	add	r3, r3, #4
    272c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    2730:	ea000010 	b	2778 <printf+0x1f0>
    2734:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    2738:	e3530025 	cmp	r3, #37	@ 0x25
    273c:	1a000005 	bne	2758 <printf+0x1d0>
    2740:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    2744:	e6ef3073 	uxtb	r3, r3
    2748:	e1a01003 	mov	r1, r3
    274c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    2750:	ebffff30 	bl	2418 <putc>
    2754:	ea000007 	b	2778 <printf+0x1f0>
    2758:	e3a01025 	mov	r1, #37	@ 0x25
    275c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    2760:	ebffff2c 	bl	2418 <putc>
    2764:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    2768:	e6ef3073 	uxtb	r3, r3
    276c:	e1a01003 	mov	r1, r3
    2770:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    2774:	ebffff27 	bl	2418 <putc>
    2778:	e3a03000 	mov	r3, #0
    277c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    2780:	e51b3010 	ldr	r3, [fp, #-16]
    2784:	e2833001 	add	r3, r3, #1
    2788:	e50b3010 	str	r3, [fp, #-16]
    278c:	e59b2004 	ldr	r2, [fp, #4]
    2790:	e51b3010 	ldr	r3, [fp, #-16]
    2794:	e0823003 	add	r3, r2, r3
    2798:	e5d33000 	ldrb	r3, [r3]
    279c:	e3530000 	cmp	r3, #0
    27a0:	1affff84 	bne	25b8 <printf+0x30>
    27a4:	e1a00000 	nop			@ (mov r0, r0)
    27a8:	e1a00000 	nop			@ (mov r0, r0)
    27ac:	e24bd004 	sub	sp, fp, #4
    27b0:	e8bd4800 	pop	{fp, lr}
    27b4:	e28dd00c 	add	sp, sp, #12
    27b8:	e12fff1e 	bx	lr
    27bc:	00002d54 	.word	0x00002d54

000027c0 <free>:
    27c0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    27c4:	e28db000 	add	fp, sp, #0
    27c8:	e24dd014 	sub	sp, sp, #20
    27cc:	e50b0010 	str	r0, [fp, #-16]
    27d0:	e51b3010 	ldr	r3, [fp, #-16]
    27d4:	e2433008 	sub	r3, r3, #8
    27d8:	e50b300c 	str	r3, [fp, #-12]
    27dc:	e59f3154 	ldr	r3, [pc, #340]	@ 2938 <free+0x178>
    27e0:	e5933000 	ldr	r3, [r3]
    27e4:	e50b3008 	str	r3, [fp, #-8]
    27e8:	ea000010 	b	2830 <free+0x70>
    27ec:	e51b3008 	ldr	r3, [fp, #-8]
    27f0:	e5933000 	ldr	r3, [r3]
    27f4:	e51b2008 	ldr	r2, [fp, #-8]
    27f8:	e1520003 	cmp	r2, r3
    27fc:	3a000008 	bcc	2824 <free+0x64>
    2800:	e51b200c 	ldr	r2, [fp, #-12]
    2804:	e51b3008 	ldr	r3, [fp, #-8]
    2808:	e1520003 	cmp	r2, r3
    280c:	8a000010 	bhi	2854 <free+0x94>
    2810:	e51b3008 	ldr	r3, [fp, #-8]
    2814:	e5933000 	ldr	r3, [r3]
    2818:	e51b200c 	ldr	r2, [fp, #-12]
    281c:	e1520003 	cmp	r2, r3
    2820:	3a00000b 	bcc	2854 <free+0x94>
    2824:	e51b3008 	ldr	r3, [fp, #-8]
    2828:	e5933000 	ldr	r3, [r3]
    282c:	e50b3008 	str	r3, [fp, #-8]
    2830:	e51b200c 	ldr	r2, [fp, #-12]
    2834:	e51b3008 	ldr	r3, [fp, #-8]
    2838:	e1520003 	cmp	r2, r3
    283c:	9affffea 	bls	27ec <free+0x2c>
    2840:	e51b3008 	ldr	r3, [fp, #-8]
    2844:	e5933000 	ldr	r3, [r3]
    2848:	e51b200c 	ldr	r2, [fp, #-12]
    284c:	e1520003 	cmp	r2, r3
    2850:	2affffe5 	bcs	27ec <free+0x2c>
    2854:	e51b300c 	ldr	r3, [fp, #-12]
    2858:	e5933004 	ldr	r3, [r3, #4]
    285c:	e1a03183 	lsl	r3, r3, #3
    2860:	e51b200c 	ldr	r2, [fp, #-12]
    2864:	e0822003 	add	r2, r2, r3
    2868:	e51b3008 	ldr	r3, [fp, #-8]
    286c:	e5933000 	ldr	r3, [r3]
    2870:	e1520003 	cmp	r2, r3
    2874:	1a00000d 	bne	28b0 <free+0xf0>
    2878:	e51b300c 	ldr	r3, [fp, #-12]
    287c:	e5932004 	ldr	r2, [r3, #4]
    2880:	e51b3008 	ldr	r3, [fp, #-8]
    2884:	e5933000 	ldr	r3, [r3]
    2888:	e5933004 	ldr	r3, [r3, #4]
    288c:	e0822003 	add	r2, r2, r3
    2890:	e51b300c 	ldr	r3, [fp, #-12]
    2894:	e5832004 	str	r2, [r3, #4]
    2898:	e51b3008 	ldr	r3, [fp, #-8]
    289c:	e5933000 	ldr	r3, [r3]
    28a0:	e5932000 	ldr	r2, [r3]
    28a4:	e51b300c 	ldr	r3, [fp, #-12]
    28a8:	e5832000 	str	r2, [r3]
    28ac:	ea000003 	b	28c0 <free+0x100>
    28b0:	e51b3008 	ldr	r3, [fp, #-8]
    28b4:	e5932000 	ldr	r2, [r3]
    28b8:	e51b300c 	ldr	r3, [fp, #-12]
    28bc:	e5832000 	str	r2, [r3]
    28c0:	e51b3008 	ldr	r3, [fp, #-8]
    28c4:	e5933004 	ldr	r3, [r3, #4]
    28c8:	e1a03183 	lsl	r3, r3, #3
    28cc:	e51b2008 	ldr	r2, [fp, #-8]
    28d0:	e0823003 	add	r3, r2, r3
    28d4:	e51b200c 	ldr	r2, [fp, #-12]
    28d8:	e1520003 	cmp	r2, r3
    28dc:	1a00000b 	bne	2910 <free+0x150>
    28e0:	e51b3008 	ldr	r3, [fp, #-8]
    28e4:	e5932004 	ldr	r2, [r3, #4]
    28e8:	e51b300c 	ldr	r3, [fp, #-12]
    28ec:	e5933004 	ldr	r3, [r3, #4]
    28f0:	e0822003 	add	r2, r2, r3
    28f4:	e51b3008 	ldr	r3, [fp, #-8]
    28f8:	e5832004 	str	r2, [r3, #4]
    28fc:	e51b300c 	ldr	r3, [fp, #-12]
    2900:	e5932000 	ldr	r2, [r3]
    2904:	e51b3008 	ldr	r3, [fp, #-8]
    2908:	e5832000 	str	r2, [r3]
    290c:	ea000002 	b	291c <free+0x15c>
    2910:	e51b3008 	ldr	r3, [fp, #-8]
    2914:	e51b200c 	ldr	r2, [fp, #-12]
    2918:	e5832000 	str	r2, [r3]
    291c:	e59f2014 	ldr	r2, [pc, #20]	@ 2938 <free+0x178>
    2920:	e51b3008 	ldr	r3, [fp, #-8]
    2924:	e5823000 	str	r3, [r2]
    2928:	e1a00000 	nop			@ (mov r0, r0)
    292c:	e28bd000 	add	sp, fp, #0
    2930:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    2934:	e12fff1e 	bx	lr
    2938:	00002e88 	.word	0x00002e88

0000293c <morecore>:
    293c:	e92d4800 	push	{fp, lr}
    2940:	e28db004 	add	fp, sp, #4
    2944:	e24dd010 	sub	sp, sp, #16
    2948:	e50b0010 	str	r0, [fp, #-16]
    294c:	e51b3010 	ldr	r3, [fp, #-16]
    2950:	e3530a01 	cmp	r3, #4096	@ 0x1000
    2954:	2a000001 	bcs	2960 <morecore+0x24>
    2958:	e3a03a01 	mov	r3, #4096	@ 0x1000
    295c:	e50b3010 	str	r3, [fp, #-16]
    2960:	e51b3010 	ldr	r3, [fp, #-16]
    2964:	e1a03183 	lsl	r3, r3, #3
    2968:	e1a00003 	mov	r0, r3
    296c:	ebfffe07 	bl	2190 <sbrk>
    2970:	e50b0008 	str	r0, [fp, #-8]
    2974:	e51b3008 	ldr	r3, [fp, #-8]
    2978:	e3730001 	cmn	r3, #1
    297c:	1a000001 	bne	2988 <morecore+0x4c>
    2980:	e3a03000 	mov	r3, #0
    2984:	ea00000a 	b	29b4 <morecore+0x78>
    2988:	e51b3008 	ldr	r3, [fp, #-8]
    298c:	e50b300c 	str	r3, [fp, #-12]
    2990:	e51b300c 	ldr	r3, [fp, #-12]
    2994:	e51b2010 	ldr	r2, [fp, #-16]
    2998:	e5832004 	str	r2, [r3, #4]
    299c:	e51b300c 	ldr	r3, [fp, #-12]
    29a0:	e2833008 	add	r3, r3, #8
    29a4:	e1a00003 	mov	r0, r3
    29a8:	ebffff84 	bl	27c0 <free>
    29ac:	e59f300c 	ldr	r3, [pc, #12]	@ 29c0 <morecore+0x84>
    29b0:	e5933000 	ldr	r3, [r3]
    29b4:	e1a00003 	mov	r0, r3
    29b8:	e24bd004 	sub	sp, fp, #4
    29bc:	e8bd8800 	pop	{fp, pc}
    29c0:	00002e88 	.word	0x00002e88

000029c4 <malloc>:
    29c4:	e92d4800 	push	{fp, lr}
    29c8:	e28db004 	add	fp, sp, #4
    29cc:	e24dd018 	sub	sp, sp, #24
    29d0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    29d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    29d8:	e2833007 	add	r3, r3, #7
    29dc:	e1a031a3 	lsr	r3, r3, #3
    29e0:	e2833001 	add	r3, r3, #1
    29e4:	e50b3010 	str	r3, [fp, #-16]
    29e8:	e59f3134 	ldr	r3, [pc, #308]	@ 2b24 <malloc+0x160>
    29ec:	e5933000 	ldr	r3, [r3]
    29f0:	e50b300c 	str	r3, [fp, #-12]
    29f4:	e51b300c 	ldr	r3, [fp, #-12]
    29f8:	e3530000 	cmp	r3, #0
    29fc:	1a00000b 	bne	2a30 <malloc+0x6c>
    2a00:	e59f3120 	ldr	r3, [pc, #288]	@ 2b28 <malloc+0x164>
    2a04:	e50b300c 	str	r3, [fp, #-12]
    2a08:	e59f2114 	ldr	r2, [pc, #276]	@ 2b24 <malloc+0x160>
    2a0c:	e51b300c 	ldr	r3, [fp, #-12]
    2a10:	e5823000 	str	r3, [r2]
    2a14:	e59f3108 	ldr	r3, [pc, #264]	@ 2b24 <malloc+0x160>
    2a18:	e5933000 	ldr	r3, [r3]
    2a1c:	e59f2104 	ldr	r2, [pc, #260]	@ 2b28 <malloc+0x164>
    2a20:	e5823000 	str	r3, [r2]
    2a24:	e59f30fc 	ldr	r3, [pc, #252]	@ 2b28 <malloc+0x164>
    2a28:	e3a02000 	mov	r2, #0
    2a2c:	e5832004 	str	r2, [r3, #4]
    2a30:	e51b300c 	ldr	r3, [fp, #-12]
    2a34:	e5933000 	ldr	r3, [r3]
    2a38:	e50b3008 	str	r3, [fp, #-8]
    2a3c:	e51b3008 	ldr	r3, [fp, #-8]
    2a40:	e5933004 	ldr	r3, [r3, #4]
    2a44:	e51b2010 	ldr	r2, [fp, #-16]
    2a48:	e1520003 	cmp	r2, r3
    2a4c:	8a00001e 	bhi	2acc <malloc+0x108>
    2a50:	e51b3008 	ldr	r3, [fp, #-8]
    2a54:	e5933004 	ldr	r3, [r3, #4]
    2a58:	e51b2010 	ldr	r2, [fp, #-16]
    2a5c:	e1520003 	cmp	r2, r3
    2a60:	1a000004 	bne	2a78 <malloc+0xb4>
    2a64:	e51b3008 	ldr	r3, [fp, #-8]
    2a68:	e5932000 	ldr	r2, [r3]
    2a6c:	e51b300c 	ldr	r3, [fp, #-12]
    2a70:	e5832000 	str	r2, [r3]
    2a74:	ea00000e 	b	2ab4 <malloc+0xf0>
    2a78:	e51b3008 	ldr	r3, [fp, #-8]
    2a7c:	e5932004 	ldr	r2, [r3, #4]
    2a80:	e51b3010 	ldr	r3, [fp, #-16]
    2a84:	e0422003 	sub	r2, r2, r3
    2a88:	e51b3008 	ldr	r3, [fp, #-8]
    2a8c:	e5832004 	str	r2, [r3, #4]
    2a90:	e51b3008 	ldr	r3, [fp, #-8]
    2a94:	e5933004 	ldr	r3, [r3, #4]
    2a98:	e1a03183 	lsl	r3, r3, #3
    2a9c:	e51b2008 	ldr	r2, [fp, #-8]
    2aa0:	e0823003 	add	r3, r2, r3
    2aa4:	e50b3008 	str	r3, [fp, #-8]
    2aa8:	e51b3008 	ldr	r3, [fp, #-8]
    2aac:	e51b2010 	ldr	r2, [fp, #-16]
    2ab0:	e5832004 	str	r2, [r3, #4]
    2ab4:	e59f2068 	ldr	r2, [pc, #104]	@ 2b24 <malloc+0x160>
    2ab8:	e51b300c 	ldr	r3, [fp, #-12]
    2abc:	e5823000 	str	r3, [r2]
    2ac0:	e51b3008 	ldr	r3, [fp, #-8]
    2ac4:	e2833008 	add	r3, r3, #8
    2ac8:	ea000012 	b	2b18 <malloc+0x154>
    2acc:	e59f3050 	ldr	r3, [pc, #80]	@ 2b24 <malloc+0x160>
    2ad0:	e5933000 	ldr	r3, [r3]
    2ad4:	e51b2008 	ldr	r2, [fp, #-8]
    2ad8:	e1520003 	cmp	r2, r3
    2adc:	1a000007 	bne	2b00 <malloc+0x13c>
    2ae0:	e51b0010 	ldr	r0, [fp, #-16]
    2ae4:	ebffff94 	bl	293c <morecore>
    2ae8:	e50b0008 	str	r0, [fp, #-8]
    2aec:	e51b3008 	ldr	r3, [fp, #-8]
    2af0:	e3530000 	cmp	r3, #0
    2af4:	1a000001 	bne	2b00 <malloc+0x13c>
    2af8:	e3a03000 	mov	r3, #0
    2afc:	ea000005 	b	2b18 <malloc+0x154>
    2b00:	e51b3008 	ldr	r3, [fp, #-8]
    2b04:	e50b300c 	str	r3, [fp, #-12]
    2b08:	e51b3008 	ldr	r3, [fp, #-8]
    2b0c:	e5933000 	ldr	r3, [r3]
    2b10:	e50b3008 	str	r3, [fp, #-8]
    2b14:	eaffffc8 	b	2a3c <malloc+0x78>
    2b18:	e1a00003 	mov	r0, r3
    2b1c:	e24bd004 	sub	sp, fp, #4
    2b20:	e8bd8800 	pop	{fp, pc}
    2b24:	00002e88 	.word	0x00002e88
    2b28:	00002e80 	.word	0x00002e80

00002b2c <__udivsi3>:
    2b2c:	e2512001 	subs	r2, r1, #1
    2b30:	012fff1e 	bxeq	lr
    2b34:	3a000036 	bcc	2c14 <__udivsi3+0xe8>
    2b38:	e1500001 	cmp	r0, r1
    2b3c:	9a000022 	bls	2bcc <__udivsi3+0xa0>
    2b40:	e1110002 	tst	r1, r2
    2b44:	0a000023 	beq	2bd8 <__udivsi3+0xac>
    2b48:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    2b4c:	01a01181 	lsleq	r1, r1, #3
    2b50:	03a03008 	moveq	r3, #8
    2b54:	13a03001 	movne	r3, #1
    2b58:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    2b5c:	31510000 	cmpcc	r1, r0
    2b60:	31a01201 	lslcc	r1, r1, #4
    2b64:	31a03203 	lslcc	r3, r3, #4
    2b68:	3afffffa 	bcc	2b58 <__udivsi3+0x2c>
    2b6c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    2b70:	31510000 	cmpcc	r1, r0
    2b74:	31a01081 	lslcc	r1, r1, #1
    2b78:	31a03083 	lslcc	r3, r3, #1
    2b7c:	3afffffa 	bcc	2b6c <__udivsi3+0x40>
    2b80:	e3a02000 	mov	r2, #0
    2b84:	e1500001 	cmp	r0, r1
    2b88:	20400001 	subcs	r0, r0, r1
    2b8c:	21822003 	orrcs	r2, r2, r3
    2b90:	e15000a1 	cmp	r0, r1, lsr #1
    2b94:	204000a1 	subcs	r0, r0, r1, lsr #1
    2b98:	218220a3 	orrcs	r2, r2, r3, lsr #1
    2b9c:	e1500121 	cmp	r0, r1, lsr #2
    2ba0:	20400121 	subcs	r0, r0, r1, lsr #2
    2ba4:	21822123 	orrcs	r2, r2, r3, lsr #2
    2ba8:	e15001a1 	cmp	r0, r1, lsr #3
    2bac:	204001a1 	subcs	r0, r0, r1, lsr #3
    2bb0:	218221a3 	orrcs	r2, r2, r3, lsr #3
    2bb4:	e3500000 	cmp	r0, #0
    2bb8:	11b03223 	lsrsne	r3, r3, #4
    2bbc:	11a01221 	lsrne	r1, r1, #4
    2bc0:	1affffef 	bne	2b84 <__udivsi3+0x58>
    2bc4:	e1a00002 	mov	r0, r2
    2bc8:	e12fff1e 	bx	lr
    2bcc:	03a00001 	moveq	r0, #1
    2bd0:	13a00000 	movne	r0, #0
    2bd4:	e12fff1e 	bx	lr
    2bd8:	e3510801 	cmp	r1, #65536	@ 0x10000
    2bdc:	21a01821 	lsrcs	r1, r1, #16
    2be0:	23a02010 	movcs	r2, #16
    2be4:	33a02000 	movcc	r2, #0
    2be8:	e3510c01 	cmp	r1, #256	@ 0x100
    2bec:	21a01421 	lsrcs	r1, r1, #8
    2bf0:	22822008 	addcs	r2, r2, #8
    2bf4:	e3510010 	cmp	r1, #16
    2bf8:	21a01221 	lsrcs	r1, r1, #4
    2bfc:	22822004 	addcs	r2, r2, #4
    2c00:	e3510004 	cmp	r1, #4
    2c04:	82822003 	addhi	r2, r2, #3
    2c08:	908220a1 	addls	r2, r2, r1, lsr #1
    2c0c:	e1a00230 	lsr	r0, r0, r2
    2c10:	e12fff1e 	bx	lr
    2c14:	e3500000 	cmp	r0, #0
    2c18:	13e00000 	mvnne	r0, #0
    2c1c:	ea000007 	b	2c40 <__aeabi_idiv0>

00002c20 <__aeabi_uidivmod>:
    2c20:	e3510000 	cmp	r1, #0
    2c24:	0afffffa 	beq	2c14 <__udivsi3+0xe8>
    2c28:	e92d4003 	push	{r0, r1, lr}
    2c2c:	ebffffbe 	bl	2b2c <__udivsi3>
    2c30:	e8bd4006 	pop	{r1, r2, lr}
    2c34:	e0030092 	mul	r3, r2, r0
    2c38:	e0411003 	sub	r1, r1, r3
    2c3c:	e12fff1e 	bx	lr

00002c40 <__aeabi_idiv0>:
    2c40:	e12fff1e 	bx	lr
