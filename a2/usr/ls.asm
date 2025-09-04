
_ls:     file format elf32-littlearm


Disassembly of section .text:

00000000 <fmtname>:
       0:	e92d4810 	push	{r4, fp, lr}
       4:	e28db008 	add	fp, sp, #8
       8:	e24dd014 	sub	sp, sp, #20
       c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
      10:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
      14:	eb00011a 	bl	484 <strlen>
      18:	e1a02000 	mov	r2, r0
      1c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      20:	e0833002 	add	r3, r3, r2
      24:	e50b3010 	str	r3, [fp, #-16]
      28:	ea000002 	b	38 <fmtname+0x38>
      2c:	e51b3010 	ldr	r3, [fp, #-16]
      30:	e2433001 	sub	r3, r3, #1
      34:	e50b3010 	str	r3, [fp, #-16]
      38:	e51b2010 	ldr	r2, [fp, #-16]
      3c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      40:	e1520003 	cmp	r2, r3
      44:	3a000003 	bcc	58 <fmtname+0x58>
      48:	e51b3010 	ldr	r3, [fp, #-16]
      4c:	e5d33000 	ldrb	r3, [r3]
      50:	e353002f 	cmp	r3, #47	@ 0x2f
      54:	1afffff4 	bne	2c <fmtname+0x2c>
      58:	e51b3010 	ldr	r3, [fp, #-16]
      5c:	e2833001 	add	r3, r3, #1
      60:	e50b3010 	str	r3, [fp, #-16]
      64:	e51b0010 	ldr	r0, [fp, #-16]
      68:	eb000105 	bl	484 <strlen>
      6c:	e1a03000 	mov	r3, r0
      70:	e353000d 	cmp	r3, #13
      74:	9a000001 	bls	80 <fmtname+0x80>
      78:	e51b3010 	ldr	r3, [fp, #-16]
      7c:	ea000014 	b	d4 <fmtname+0xd4>
      80:	e51b0010 	ldr	r0, [fp, #-16]
      84:	eb0000fe 	bl	484 <strlen>
      88:	e1a03000 	mov	r3, r0
      8c:	e1a02003 	mov	r2, r3
      90:	e51b1010 	ldr	r1, [fp, #-16]
      94:	e59f0044 	ldr	r0, [pc, #68]	@ e0 <fmtname+0xe0>
      98:	eb0001e0 	bl	820 <memmove>
      9c:	e51b0010 	ldr	r0, [fp, #-16]
      a0:	eb0000f7 	bl	484 <strlen>
      a4:	e1a03000 	mov	r3, r0
      a8:	e59f2030 	ldr	r2, [pc, #48]	@ e0 <fmtname+0xe0>
      ac:	e0834002 	add	r4, r3, r2
      b0:	e51b0010 	ldr	r0, [fp, #-16]
      b4:	eb0000f2 	bl	484 <strlen>
      b8:	e1a03000 	mov	r3, r0
      bc:	e263300e 	rsb	r3, r3, #14
      c0:	e1a02003 	mov	r2, r3
      c4:	e3a01020 	mov	r1, #32
      c8:	e1a00004 	mov	r0, r4
      cc:	eb000101 	bl	4d8 <memset>
      d0:	e59f3008 	ldr	r3, [pc, #8]	@ e0 <fmtname+0xe0>
      d4:	e1a00003 	mov	r0, r3
      d8:	e24bd008 	sub	sp, fp, #8
      dc:	e8bd8810 	pop	{r4, fp, pc}
      e0:	000014b0 	.word	0x000014b0

000000e4 <ls>:
      e4:	e92d4800 	push	{fp, lr}
      e8:	e28db004 	add	fp, sp, #4
      ec:	e24ddd09 	sub	sp, sp, #576	@ 0x240
      f0:	e50b0238 	str	r0, [fp, #-568]	@ 0xfffffdc8
      f4:	e3a01000 	mov	r1, #0
      f8:	e51b0238 	ldr	r0, [fp, #-568]	@ 0xfffffdc8
      fc:	eb000235 	bl	9d8 <open>
     100:	e50b0008 	str	r0, [fp, #-8]
     104:	e51b3008 	ldr	r3, [fp, #-8]
     108:	e3530000 	cmp	r3, #0
     10c:	aa000004 	bge	124 <ls+0x40>
     110:	e51b2238 	ldr	r2, [fp, #-568]	@ 0xfffffdc8
     114:	e59f1200 	ldr	r1, [pc, #512]	@ 31c <ls+0x238>
     118:	e3a00002 	mov	r0, #2
     11c:	eb000319 	bl	d88 <printf>
     120:	ea00007b 	b	314 <ls+0x230>
     124:	e24b3e23 	sub	r3, fp, #560	@ 0x230
     128:	e1a01003 	mov	r1, r3
     12c:	e51b0008 	ldr	r0, [fp, #-8]
     130:	eb000243 	bl	a44 <fstat>
     134:	e1a03000 	mov	r3, r0
     138:	e3530000 	cmp	r3, #0
     13c:	aa000006 	bge	15c <ls+0x78>
     140:	e51b2238 	ldr	r2, [fp, #-568]	@ 0xfffffdc8
     144:	e59f11d4 	ldr	r1, [pc, #468]	@ 320 <ls+0x23c>
     148:	e3a00002 	mov	r0, #2
     14c:	eb00030d 	bl	d88 <printf>
     150:	e51b0008 	ldr	r0, [fp, #-8]
     154:	eb000204 	bl	96c <close>
     158:	ea00006d 	b	314 <ls+0x230>
     15c:	e24b3004 	sub	r3, fp, #4
     160:	e2433f8b 	sub	r3, r3, #556	@ 0x22c
     164:	e1d330f0 	ldrsh	r3, [r3]
     168:	e3530001 	cmp	r3, #1
     16c:	0a000012 	beq	1bc <ls+0xd8>
     170:	e3530002 	cmp	r3, #2
     174:	1a000064 	bne	30c <ls+0x228>
     178:	e51b0238 	ldr	r0, [fp, #-568]	@ 0xfffffdc8
     17c:	ebffff9f 	bl	0 <fmtname>
     180:	e1a01000 	mov	r1, r0
     184:	e24b3004 	sub	r3, fp, #4
     188:	e2433f8b 	sub	r3, r3, #556	@ 0x22c
     18c:	e1d330f0 	ldrsh	r3, [r3]
     190:	e1a00003 	mov	r0, r3
     194:	e51b3228 	ldr	r3, [fp, #-552]	@ 0xfffffdd8
     198:	e51b2220 	ldr	r2, [fp, #-544]	@ 0xfffffde0
     19c:	e58d2004 	str	r2, [sp, #4]
     1a0:	e58d3000 	str	r3, [sp]
     1a4:	e1a03000 	mov	r3, r0
     1a8:	e1a02001 	mov	r2, r1
     1ac:	e59f1170 	ldr	r1, [pc, #368]	@ 324 <ls+0x240>
     1b0:	e3a00001 	mov	r0, #1
     1b4:	eb0002f3 	bl	d88 <printf>
     1b8:	ea000053 	b	30c <ls+0x228>
     1bc:	e51b0238 	ldr	r0, [fp, #-568]	@ 0xfffffdc8
     1c0:	eb0000af 	bl	484 <strlen>
     1c4:	e1a03000 	mov	r3, r0
     1c8:	e2833010 	add	r3, r3, #16
     1cc:	e3530c02 	cmp	r3, #512	@ 0x200
     1d0:	9a000003 	bls	1e4 <ls+0x100>
     1d4:	e59f114c 	ldr	r1, [pc, #332]	@ 328 <ls+0x244>
     1d8:	e3a00001 	mov	r0, #1
     1dc:	eb0002e9 	bl	d88 <printf>
     1e0:	ea000049 	b	30c <ls+0x228>
     1e4:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     1e8:	e51b1238 	ldr	r1, [fp, #-568]	@ 0xfffffdc8
     1ec:	e1a00003 	mov	r0, r3
     1f0:	eb00006b 	bl	3a4 <strcpy>
     1f4:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     1f8:	e1a00003 	mov	r0, r3
     1fc:	eb0000a0 	bl	484 <strlen>
     200:	e1a02000 	mov	r2, r0
     204:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     208:	e0833002 	add	r3, r3, r2
     20c:	e50b300c 	str	r3, [fp, #-12]
     210:	e51b300c 	ldr	r3, [fp, #-12]
     214:	e2832001 	add	r2, r3, #1
     218:	e50b200c 	str	r2, [fp, #-12]
     21c:	e3a0202f 	mov	r2, #47	@ 0x2f
     220:	e5c32000 	strb	r2, [r3]
     224:	ea00002f 	b	2e8 <ls+0x204>
     228:	e24b3004 	sub	r3, fp, #4
     22c:	e2433f86 	sub	r3, r3, #536	@ 0x218
     230:	e1d330b0 	ldrh	r3, [r3]
     234:	e3530000 	cmp	r3, #0
     238:	0a000029 	beq	2e4 <ls+0x200>
     23c:	e24b3f87 	sub	r3, fp, #540	@ 0x21c
     240:	e2833002 	add	r3, r3, #2
     244:	e3a0200e 	mov	r2, #14
     248:	e1a01003 	mov	r1, r3
     24c:	e51b000c 	ldr	r0, [fp, #-12]
     250:	eb000172 	bl	820 <memmove>
     254:	e51b300c 	ldr	r3, [fp, #-12]
     258:	e283300e 	add	r3, r3, #14
     25c:	e3a02000 	mov	r2, #0
     260:	e5c32000 	strb	r2, [r3]
     264:	e24b2e23 	sub	r2, fp, #560	@ 0x230
     268:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     26c:	e1a01002 	mov	r1, r2
     270:	e1a00003 	mov	r0, r3
     274:	eb00012a 	bl	724 <stat>
     278:	e1a03000 	mov	r3, r0
     27c:	e3530000 	cmp	r3, #0
     280:	aa000005 	bge	29c <ls+0x1b8>
     284:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     288:	e1a02003 	mov	r2, r3
     28c:	e59f108c 	ldr	r1, [pc, #140]	@ 320 <ls+0x23c>
     290:	e3a00001 	mov	r0, #1
     294:	eb0002bb 	bl	d88 <printf>
     298:	ea000012 	b	2e8 <ls+0x204>
     29c:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     2a0:	e1a00003 	mov	r0, r3
     2a4:	ebffff55 	bl	0 <fmtname>
     2a8:	e1a01000 	mov	r1, r0
     2ac:	e24b3004 	sub	r3, fp, #4
     2b0:	e2433f8b 	sub	r3, r3, #556	@ 0x22c
     2b4:	e1d330f0 	ldrsh	r3, [r3]
     2b8:	e1a00003 	mov	r0, r3
     2bc:	e51b3228 	ldr	r3, [fp, #-552]	@ 0xfffffdd8
     2c0:	e51b2220 	ldr	r2, [fp, #-544]	@ 0xfffffde0
     2c4:	e58d2004 	str	r2, [sp, #4]
     2c8:	e58d3000 	str	r3, [sp]
     2cc:	e1a03000 	mov	r3, r0
     2d0:	e1a02001 	mov	r2, r1
     2d4:	e59f1048 	ldr	r1, [pc, #72]	@ 324 <ls+0x240>
     2d8:	e3a00001 	mov	r0, #1
     2dc:	eb0002a9 	bl	d88 <printf>
     2e0:	ea000000 	b	2e8 <ls+0x204>
     2e4:	e1a00000 	nop			@ (mov r0, r0)
     2e8:	e24b3f87 	sub	r3, fp, #540	@ 0x21c
     2ec:	e3a02010 	mov	r2, #16
     2f0:	e1a01003 	mov	r1, r3
     2f4:	e51b0008 	ldr	r0, [fp, #-8]
     2f8:	eb000189 	bl	924 <read>
     2fc:	e1a03000 	mov	r3, r0
     300:	e3530010 	cmp	r3, #16
     304:	0affffc7 	beq	228 <ls+0x144>
     308:	e1a00000 	nop			@ (mov r0, r0)
     30c:	e51b0008 	ldr	r0, [fp, #-8]
     310:	eb000195 	bl	96c <close>
     314:	e24bd004 	sub	sp, fp, #4
     318:	e8bd8800 	pop	{fp, pc}
     31c:	00001444 	.word	0x00001444
     320:	00001458 	.word	0x00001458
     324:	0000146c 	.word	0x0000146c
     328:	0000147c 	.word	0x0000147c

0000032c <main>:
     32c:	e92d4800 	push	{fp, lr}
     330:	e28db004 	add	fp, sp, #4
     334:	e24dd010 	sub	sp, sp, #16
     338:	e50b0010 	str	r0, [fp, #-16]
     33c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     340:	e51b3010 	ldr	r3, [fp, #-16]
     344:	e3530001 	cmp	r3, #1
     348:	ca000002 	bgt	358 <main+0x2c>
     34c:	e59f004c 	ldr	r0, [pc, #76]	@ 3a0 <main+0x74>
     350:	ebffff63 	bl	e4 <ls>
     354:	eb000157 	bl	8b8 <exit>
     358:	e3a03001 	mov	r3, #1
     35c:	e50b3008 	str	r3, [fp, #-8]
     360:	ea000009 	b	38c <main+0x60>
     364:	e51b3008 	ldr	r3, [fp, #-8]
     368:	e1a03103 	lsl	r3, r3, #2
     36c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     370:	e0823003 	add	r3, r2, r3
     374:	e5933000 	ldr	r3, [r3]
     378:	e1a00003 	mov	r0, r3
     37c:	ebffff58 	bl	e4 <ls>
     380:	e51b3008 	ldr	r3, [fp, #-8]
     384:	e2833001 	add	r3, r3, #1
     388:	e50b3008 	str	r3, [fp, #-8]
     38c:	e51b2008 	ldr	r2, [fp, #-8]
     390:	e51b3010 	ldr	r3, [fp, #-16]
     394:	e1520003 	cmp	r2, r3
     398:	bafffff1 	blt	364 <main+0x38>
     39c:	eb000145 	bl	8b8 <exit>
     3a0:	00001490 	.word	0x00001490

000003a4 <strcpy>:
     3a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3a8:	e28db000 	add	fp, sp, #0
     3ac:	e24dd014 	sub	sp, sp, #20
     3b0:	e50b0010 	str	r0, [fp, #-16]
     3b4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     3b8:	e51b3010 	ldr	r3, [fp, #-16]
     3bc:	e50b3008 	str	r3, [fp, #-8]
     3c0:	e1a00000 	nop			@ (mov r0, r0)
     3c4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     3c8:	e2823001 	add	r3, r2, #1
     3cc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     3d0:	e51b3010 	ldr	r3, [fp, #-16]
     3d4:	e2831001 	add	r1, r3, #1
     3d8:	e50b1010 	str	r1, [fp, #-16]
     3dc:	e5d22000 	ldrb	r2, [r2]
     3e0:	e5c32000 	strb	r2, [r3]
     3e4:	e5d33000 	ldrb	r3, [r3]
     3e8:	e3530000 	cmp	r3, #0
     3ec:	1afffff4 	bne	3c4 <strcpy+0x20>
     3f0:	e51b3008 	ldr	r3, [fp, #-8]
     3f4:	e1a00003 	mov	r0, r3
     3f8:	e28bd000 	add	sp, fp, #0
     3fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     400:	e12fff1e 	bx	lr

00000404 <strcmp>:
     404:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     408:	e28db000 	add	fp, sp, #0
     40c:	e24dd00c 	sub	sp, sp, #12
     410:	e50b0008 	str	r0, [fp, #-8]
     414:	e50b100c 	str	r1, [fp, #-12]
     418:	ea000005 	b	434 <strcmp+0x30>
     41c:	e51b3008 	ldr	r3, [fp, #-8]
     420:	e2833001 	add	r3, r3, #1
     424:	e50b3008 	str	r3, [fp, #-8]
     428:	e51b300c 	ldr	r3, [fp, #-12]
     42c:	e2833001 	add	r3, r3, #1
     430:	e50b300c 	str	r3, [fp, #-12]
     434:	e51b3008 	ldr	r3, [fp, #-8]
     438:	e5d33000 	ldrb	r3, [r3]
     43c:	e3530000 	cmp	r3, #0
     440:	0a000005 	beq	45c <strcmp+0x58>
     444:	e51b3008 	ldr	r3, [fp, #-8]
     448:	e5d32000 	ldrb	r2, [r3]
     44c:	e51b300c 	ldr	r3, [fp, #-12]
     450:	e5d33000 	ldrb	r3, [r3]
     454:	e1520003 	cmp	r2, r3
     458:	0affffef 	beq	41c <strcmp+0x18>
     45c:	e51b3008 	ldr	r3, [fp, #-8]
     460:	e5d33000 	ldrb	r3, [r3]
     464:	e1a02003 	mov	r2, r3
     468:	e51b300c 	ldr	r3, [fp, #-12]
     46c:	e5d33000 	ldrb	r3, [r3]
     470:	e0423003 	sub	r3, r2, r3
     474:	e1a00003 	mov	r0, r3
     478:	e28bd000 	add	sp, fp, #0
     47c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     480:	e12fff1e 	bx	lr

00000484 <strlen>:
     484:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     488:	e28db000 	add	fp, sp, #0
     48c:	e24dd014 	sub	sp, sp, #20
     490:	e50b0010 	str	r0, [fp, #-16]
     494:	e3a03000 	mov	r3, #0
     498:	e50b3008 	str	r3, [fp, #-8]
     49c:	ea000002 	b	4ac <strlen+0x28>
     4a0:	e51b3008 	ldr	r3, [fp, #-8]
     4a4:	e2833001 	add	r3, r3, #1
     4a8:	e50b3008 	str	r3, [fp, #-8]
     4ac:	e51b3008 	ldr	r3, [fp, #-8]
     4b0:	e51b2010 	ldr	r2, [fp, #-16]
     4b4:	e0823003 	add	r3, r2, r3
     4b8:	e5d33000 	ldrb	r3, [r3]
     4bc:	e3530000 	cmp	r3, #0
     4c0:	1afffff6 	bne	4a0 <strlen+0x1c>
     4c4:	e51b3008 	ldr	r3, [fp, #-8]
     4c8:	e1a00003 	mov	r0, r3
     4cc:	e28bd000 	add	sp, fp, #0
     4d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4d4:	e12fff1e 	bx	lr

000004d8 <memset>:
     4d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4dc:	e28db000 	add	fp, sp, #0
     4e0:	e24dd024 	sub	sp, sp, #36	@ 0x24
     4e4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     4e8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     4ec:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     4f0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4f4:	e50b3008 	str	r3, [fp, #-8]
     4f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     4fc:	e54b300d 	strb	r3, [fp, #-13]
     500:	e55b200d 	ldrb	r2, [fp, #-13]
     504:	e1a03002 	mov	r3, r2
     508:	e1a03403 	lsl	r3, r3, #8
     50c:	e0833002 	add	r3, r3, r2
     510:	e1a03803 	lsl	r3, r3, #16
     514:	e1a02003 	mov	r2, r3
     518:	e55b300d 	ldrb	r3, [fp, #-13]
     51c:	e1a03403 	lsl	r3, r3, #8
     520:	e1822003 	orr	r2, r2, r3
     524:	e55b300d 	ldrb	r3, [fp, #-13]
     528:	e1823003 	orr	r3, r2, r3
     52c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     530:	ea000008 	b	558 <memset+0x80>
     534:	e51b3008 	ldr	r3, [fp, #-8]
     538:	e55b200d 	ldrb	r2, [fp, #-13]
     53c:	e5c32000 	strb	r2, [r3]
     540:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     544:	e2433001 	sub	r3, r3, #1
     548:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     54c:	e51b3008 	ldr	r3, [fp, #-8]
     550:	e2833001 	add	r3, r3, #1
     554:	e50b3008 	str	r3, [fp, #-8]
     558:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     55c:	e3530000 	cmp	r3, #0
     560:	0a000003 	beq	574 <memset+0x9c>
     564:	e51b3008 	ldr	r3, [fp, #-8]
     568:	e2033003 	and	r3, r3, #3
     56c:	e3530000 	cmp	r3, #0
     570:	1affffef 	bne	534 <memset+0x5c>
     574:	e51b3008 	ldr	r3, [fp, #-8]
     578:	e50b300c 	str	r3, [fp, #-12]
     57c:	ea000008 	b	5a4 <memset+0xcc>
     580:	e51b300c 	ldr	r3, [fp, #-12]
     584:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     588:	e5832000 	str	r2, [r3]
     58c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     590:	e2433004 	sub	r3, r3, #4
     594:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     598:	e51b300c 	ldr	r3, [fp, #-12]
     59c:	e2833004 	add	r3, r3, #4
     5a0:	e50b300c 	str	r3, [fp, #-12]
     5a4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     5a8:	e3530003 	cmp	r3, #3
     5ac:	8afffff3 	bhi	580 <memset+0xa8>
     5b0:	e51b300c 	ldr	r3, [fp, #-12]
     5b4:	e50b3008 	str	r3, [fp, #-8]
     5b8:	ea000008 	b	5e0 <memset+0x108>
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
     5e8:	1afffff3 	bne	5bc <memset+0xe4>
     5ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5f0:	e1a00003 	mov	r0, r3
     5f4:	e28bd000 	add	sp, fp, #0
     5f8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5fc:	e12fff1e 	bx	lr

00000600 <strchr>:
     600:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     604:	e28db000 	add	fp, sp, #0
     608:	e24dd00c 	sub	sp, sp, #12
     60c:	e50b0008 	str	r0, [fp, #-8]
     610:	e1a03001 	mov	r3, r1
     614:	e54b3009 	strb	r3, [fp, #-9]
     618:	ea000009 	b	644 <strchr+0x44>
     61c:	e51b3008 	ldr	r3, [fp, #-8]
     620:	e5d33000 	ldrb	r3, [r3]
     624:	e55b2009 	ldrb	r2, [fp, #-9]
     628:	e1520003 	cmp	r2, r3
     62c:	1a000001 	bne	638 <strchr+0x38>
     630:	e51b3008 	ldr	r3, [fp, #-8]
     634:	ea000007 	b	658 <strchr+0x58>
     638:	e51b3008 	ldr	r3, [fp, #-8]
     63c:	e2833001 	add	r3, r3, #1
     640:	e50b3008 	str	r3, [fp, #-8]
     644:	e51b3008 	ldr	r3, [fp, #-8]
     648:	e5d33000 	ldrb	r3, [r3]
     64c:	e3530000 	cmp	r3, #0
     650:	1afffff1 	bne	61c <strchr+0x1c>
     654:	e3a03000 	mov	r3, #0
     658:	e1a00003 	mov	r0, r3
     65c:	e28bd000 	add	sp, fp, #0
     660:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     664:	e12fff1e 	bx	lr

00000668 <gets>:
     668:	e92d4800 	push	{fp, lr}
     66c:	e28db004 	add	fp, sp, #4
     670:	e24dd018 	sub	sp, sp, #24
     674:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     678:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     67c:	e3a03000 	mov	r3, #0
     680:	e50b3008 	str	r3, [fp, #-8]
     684:	ea000016 	b	6e4 <gets+0x7c>
     688:	e24b300d 	sub	r3, fp, #13
     68c:	e3a02001 	mov	r2, #1
     690:	e1a01003 	mov	r1, r3
     694:	e3a00000 	mov	r0, #0
     698:	eb0000a1 	bl	924 <read>
     69c:	e50b000c 	str	r0, [fp, #-12]
     6a0:	e51b300c 	ldr	r3, [fp, #-12]
     6a4:	e3530000 	cmp	r3, #0
     6a8:	da000013 	ble	6fc <gets+0x94>
     6ac:	e51b3008 	ldr	r3, [fp, #-8]
     6b0:	e2832001 	add	r2, r3, #1
     6b4:	e50b2008 	str	r2, [fp, #-8]
     6b8:	e1a02003 	mov	r2, r3
     6bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6c0:	e0833002 	add	r3, r3, r2
     6c4:	e55b200d 	ldrb	r2, [fp, #-13]
     6c8:	e5c32000 	strb	r2, [r3]
     6cc:	e55b300d 	ldrb	r3, [fp, #-13]
     6d0:	e353000a 	cmp	r3, #10
     6d4:	0a000009 	beq	700 <gets+0x98>
     6d8:	e55b300d 	ldrb	r3, [fp, #-13]
     6dc:	e353000d 	cmp	r3, #13
     6e0:	0a000006 	beq	700 <gets+0x98>
     6e4:	e51b3008 	ldr	r3, [fp, #-8]
     6e8:	e2833001 	add	r3, r3, #1
     6ec:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     6f0:	e1520003 	cmp	r2, r3
     6f4:	caffffe3 	bgt	688 <gets+0x20>
     6f8:	ea000000 	b	700 <gets+0x98>
     6fc:	e1a00000 	nop			@ (mov r0, r0)
     700:	e51b3008 	ldr	r3, [fp, #-8]
     704:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     708:	e0823003 	add	r3, r2, r3
     70c:	e3a02000 	mov	r2, #0
     710:	e5c32000 	strb	r2, [r3]
     714:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     718:	e1a00003 	mov	r0, r3
     71c:	e24bd004 	sub	sp, fp, #4
     720:	e8bd8800 	pop	{fp, pc}

00000724 <stat>:
     724:	e92d4800 	push	{fp, lr}
     728:	e28db004 	add	fp, sp, #4
     72c:	e24dd010 	sub	sp, sp, #16
     730:	e50b0010 	str	r0, [fp, #-16]
     734:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     738:	e3a01000 	mov	r1, #0
     73c:	e51b0010 	ldr	r0, [fp, #-16]
     740:	eb0000a4 	bl	9d8 <open>
     744:	e50b0008 	str	r0, [fp, #-8]
     748:	e51b3008 	ldr	r3, [fp, #-8]
     74c:	e3530000 	cmp	r3, #0
     750:	aa000001 	bge	75c <stat+0x38>
     754:	e3e03000 	mvn	r3, #0
     758:	ea000006 	b	778 <stat+0x54>
     75c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     760:	e51b0008 	ldr	r0, [fp, #-8]
     764:	eb0000b6 	bl	a44 <fstat>
     768:	e50b000c 	str	r0, [fp, #-12]
     76c:	e51b0008 	ldr	r0, [fp, #-8]
     770:	eb00007d 	bl	96c <close>
     774:	e51b300c 	ldr	r3, [fp, #-12]
     778:	e1a00003 	mov	r0, r3
     77c:	e24bd004 	sub	sp, fp, #4
     780:	e8bd8800 	pop	{fp, pc}

00000784 <atoi>:
     784:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     788:	e28db000 	add	fp, sp, #0
     78c:	e24dd014 	sub	sp, sp, #20
     790:	e50b0010 	str	r0, [fp, #-16]
     794:	e3a03000 	mov	r3, #0
     798:	e50b3008 	str	r3, [fp, #-8]
     79c:	ea00000c 	b	7d4 <atoi+0x50>
     7a0:	e51b2008 	ldr	r2, [fp, #-8]
     7a4:	e1a03002 	mov	r3, r2
     7a8:	e1a03103 	lsl	r3, r3, #2
     7ac:	e0833002 	add	r3, r3, r2
     7b0:	e1a03083 	lsl	r3, r3, #1
     7b4:	e1a01003 	mov	r1, r3
     7b8:	e51b3010 	ldr	r3, [fp, #-16]
     7bc:	e2832001 	add	r2, r3, #1
     7c0:	e50b2010 	str	r2, [fp, #-16]
     7c4:	e5d33000 	ldrb	r3, [r3]
     7c8:	e0813003 	add	r3, r1, r3
     7cc:	e2433030 	sub	r3, r3, #48	@ 0x30
     7d0:	e50b3008 	str	r3, [fp, #-8]
     7d4:	e51b3010 	ldr	r3, [fp, #-16]
     7d8:	e5d33000 	ldrb	r3, [r3]
     7dc:	e353002f 	cmp	r3, #47	@ 0x2f
     7e0:	9a000003 	bls	7f4 <atoi+0x70>
     7e4:	e51b3010 	ldr	r3, [fp, #-16]
     7e8:	e5d33000 	ldrb	r3, [r3]
     7ec:	e3530039 	cmp	r3, #57	@ 0x39
     7f0:	9affffea 	bls	7a0 <atoi+0x1c>
     7f4:	e51b3010 	ldr	r3, [fp, #-16]
     7f8:	e5d33000 	ldrb	r3, [r3]
     7fc:	e3530000 	cmp	r3, #0
     800:	1a000001 	bne	80c <atoi+0x88>
     804:	e51b3008 	ldr	r3, [fp, #-8]
     808:	ea000000 	b	810 <atoi+0x8c>
     80c:	e3e03000 	mvn	r3, #0
     810:	e1a00003 	mov	r0, r3
     814:	e28bd000 	add	sp, fp, #0
     818:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     81c:	e12fff1e 	bx	lr

00000820 <memmove>:
     820:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     824:	e28db000 	add	fp, sp, #0
     828:	e24dd01c 	sub	sp, sp, #28
     82c:	e50b0010 	str	r0, [fp, #-16]
     830:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     834:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     838:	e51b3010 	ldr	r3, [fp, #-16]
     83c:	e50b3008 	str	r3, [fp, #-8]
     840:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     844:	e50b300c 	str	r3, [fp, #-12]
     848:	ea000007 	b	86c <memmove+0x4c>
     84c:	e51b200c 	ldr	r2, [fp, #-12]
     850:	e2823001 	add	r3, r2, #1
     854:	e50b300c 	str	r3, [fp, #-12]
     858:	e51b3008 	ldr	r3, [fp, #-8]
     85c:	e2831001 	add	r1, r3, #1
     860:	e50b1008 	str	r1, [fp, #-8]
     864:	e5d22000 	ldrb	r2, [r2]
     868:	e5c32000 	strb	r2, [r3]
     86c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     870:	e2432001 	sub	r2, r3, #1
     874:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     878:	e3530000 	cmp	r3, #0
     87c:	cafffff2 	bgt	84c <memmove+0x2c>
     880:	e51b3010 	ldr	r3, [fp, #-16]
     884:	e1a00003 	mov	r0, r3
     888:	e28bd000 	add	sp, fp, #0
     88c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     890:	e12fff1e 	bx	lr

00000894 <fork>:
     894:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     898:	e1a04003 	mov	r4, r3
     89c:	e1a03002 	mov	r3, r2
     8a0:	e1a02001 	mov	r2, r1
     8a4:	e1a01000 	mov	r1, r0
     8a8:	e3a00001 	mov	r0, #1
     8ac:	ef000000 	svc	0x00000000
     8b0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8b4:	e12fff1e 	bx	lr

000008b8 <exit>:
     8b8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8bc:	e1a04003 	mov	r4, r3
     8c0:	e1a03002 	mov	r3, r2
     8c4:	e1a02001 	mov	r2, r1
     8c8:	e1a01000 	mov	r1, r0
     8cc:	e3a00002 	mov	r0, #2
     8d0:	ef000000 	svc	0x00000000
     8d4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8d8:	e12fff1e 	bx	lr

000008dc <wait>:
     8dc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8e0:	e1a04003 	mov	r4, r3
     8e4:	e1a03002 	mov	r3, r2
     8e8:	e1a02001 	mov	r2, r1
     8ec:	e1a01000 	mov	r1, r0
     8f0:	e3a00003 	mov	r0, #3
     8f4:	ef000000 	svc	0x00000000
     8f8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8fc:	e12fff1e 	bx	lr

00000900 <pipe>:
     900:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     904:	e1a04003 	mov	r4, r3
     908:	e1a03002 	mov	r3, r2
     90c:	e1a02001 	mov	r2, r1
     910:	e1a01000 	mov	r1, r0
     914:	e3a00004 	mov	r0, #4
     918:	ef000000 	svc	0x00000000
     91c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     920:	e12fff1e 	bx	lr

00000924 <read>:
     924:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     928:	e1a04003 	mov	r4, r3
     92c:	e1a03002 	mov	r3, r2
     930:	e1a02001 	mov	r2, r1
     934:	e1a01000 	mov	r1, r0
     938:	e3a00005 	mov	r0, #5
     93c:	ef000000 	svc	0x00000000
     940:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     944:	e12fff1e 	bx	lr

00000948 <write>:
     948:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     94c:	e1a04003 	mov	r4, r3
     950:	e1a03002 	mov	r3, r2
     954:	e1a02001 	mov	r2, r1
     958:	e1a01000 	mov	r1, r0
     95c:	e3a00010 	mov	r0, #16
     960:	ef000000 	svc	0x00000000
     964:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     968:	e12fff1e 	bx	lr

0000096c <close>:
     96c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     970:	e1a04003 	mov	r4, r3
     974:	e1a03002 	mov	r3, r2
     978:	e1a02001 	mov	r2, r1
     97c:	e1a01000 	mov	r1, r0
     980:	e3a00015 	mov	r0, #21
     984:	ef000000 	svc	0x00000000
     988:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     98c:	e12fff1e 	bx	lr

00000990 <kill>:
     990:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     994:	e1a04003 	mov	r4, r3
     998:	e1a03002 	mov	r3, r2
     99c:	e1a02001 	mov	r2, r1
     9a0:	e1a01000 	mov	r1, r0
     9a4:	e3a00006 	mov	r0, #6
     9a8:	ef000000 	svc	0x00000000
     9ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9b0:	e12fff1e 	bx	lr

000009b4 <exec>:
     9b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9b8:	e1a04003 	mov	r4, r3
     9bc:	e1a03002 	mov	r3, r2
     9c0:	e1a02001 	mov	r2, r1
     9c4:	e1a01000 	mov	r1, r0
     9c8:	e3a00007 	mov	r0, #7
     9cc:	ef000000 	svc	0x00000000
     9d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9d4:	e12fff1e 	bx	lr

000009d8 <open>:
     9d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9dc:	e1a04003 	mov	r4, r3
     9e0:	e1a03002 	mov	r3, r2
     9e4:	e1a02001 	mov	r2, r1
     9e8:	e1a01000 	mov	r1, r0
     9ec:	e3a0000f 	mov	r0, #15
     9f0:	ef000000 	svc	0x00000000
     9f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9f8:	e12fff1e 	bx	lr

000009fc <mknod>:
     9fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a00:	e1a04003 	mov	r4, r3
     a04:	e1a03002 	mov	r3, r2
     a08:	e1a02001 	mov	r2, r1
     a0c:	e1a01000 	mov	r1, r0
     a10:	e3a00011 	mov	r0, #17
     a14:	ef000000 	svc	0x00000000
     a18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a1c:	e12fff1e 	bx	lr

00000a20 <unlink>:
     a20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a24:	e1a04003 	mov	r4, r3
     a28:	e1a03002 	mov	r3, r2
     a2c:	e1a02001 	mov	r2, r1
     a30:	e1a01000 	mov	r1, r0
     a34:	e3a00012 	mov	r0, #18
     a38:	ef000000 	svc	0x00000000
     a3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a40:	e12fff1e 	bx	lr

00000a44 <fstat>:
     a44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a48:	e1a04003 	mov	r4, r3
     a4c:	e1a03002 	mov	r3, r2
     a50:	e1a02001 	mov	r2, r1
     a54:	e1a01000 	mov	r1, r0
     a58:	e3a00008 	mov	r0, #8
     a5c:	ef000000 	svc	0x00000000
     a60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a64:	e12fff1e 	bx	lr

00000a68 <link>:
     a68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a6c:	e1a04003 	mov	r4, r3
     a70:	e1a03002 	mov	r3, r2
     a74:	e1a02001 	mov	r2, r1
     a78:	e1a01000 	mov	r1, r0
     a7c:	e3a00013 	mov	r0, #19
     a80:	ef000000 	svc	0x00000000
     a84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a88:	e12fff1e 	bx	lr

00000a8c <mkdir>:
     a8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a90:	e1a04003 	mov	r4, r3
     a94:	e1a03002 	mov	r3, r2
     a98:	e1a02001 	mov	r2, r1
     a9c:	e1a01000 	mov	r1, r0
     aa0:	e3a00014 	mov	r0, #20
     aa4:	ef000000 	svc	0x00000000
     aa8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aac:	e12fff1e 	bx	lr

00000ab0 <chdir>:
     ab0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ab4:	e1a04003 	mov	r4, r3
     ab8:	e1a03002 	mov	r3, r2
     abc:	e1a02001 	mov	r2, r1
     ac0:	e1a01000 	mov	r1, r0
     ac4:	e3a00009 	mov	r0, #9
     ac8:	ef000000 	svc	0x00000000
     acc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ad0:	e12fff1e 	bx	lr

00000ad4 <dup>:
     ad4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad8:	e1a04003 	mov	r4, r3
     adc:	e1a03002 	mov	r3, r2
     ae0:	e1a02001 	mov	r2, r1
     ae4:	e1a01000 	mov	r1, r0
     ae8:	e3a0000a 	mov	r0, #10
     aec:	ef000000 	svc	0x00000000
     af0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     af4:	e12fff1e 	bx	lr

00000af8 <getpid>:
     af8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     afc:	e1a04003 	mov	r4, r3
     b00:	e1a03002 	mov	r3, r2
     b04:	e1a02001 	mov	r2, r1
     b08:	e1a01000 	mov	r1, r0
     b0c:	e3a0000b 	mov	r0, #11
     b10:	ef000000 	svc	0x00000000
     b14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b18:	e12fff1e 	bx	lr

00000b1c <sbrk>:
     b1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b20:	e1a04003 	mov	r4, r3
     b24:	e1a03002 	mov	r3, r2
     b28:	e1a02001 	mov	r2, r1
     b2c:	e1a01000 	mov	r1, r0
     b30:	e3a0000c 	mov	r0, #12
     b34:	ef000000 	svc	0x00000000
     b38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b3c:	e12fff1e 	bx	lr

00000b40 <sleep>:
     b40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b44:	e1a04003 	mov	r4, r3
     b48:	e1a03002 	mov	r3, r2
     b4c:	e1a02001 	mov	r2, r1
     b50:	e1a01000 	mov	r1, r0
     b54:	e3a0000d 	mov	r0, #13
     b58:	ef000000 	svc	0x00000000
     b5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b60:	e12fff1e 	bx	lr

00000b64 <uptime>:
     b64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b68:	e1a04003 	mov	r4, r3
     b6c:	e1a03002 	mov	r3, r2
     b70:	e1a02001 	mov	r2, r1
     b74:	e1a01000 	mov	r1, r0
     b78:	e3a0000e 	mov	r0, #14
     b7c:	ef000000 	svc	0x00000000
     b80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b84:	e12fff1e 	bx	lr

00000b88 <getprocs>:
     b88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b8c:	e1a04003 	mov	r4, r3
     b90:	e1a03002 	mov	r3, r2
     b94:	e1a02001 	mov	r2, r1
     b98:	e1a01000 	mov	r1, r0
     b9c:	e3a00016 	mov	r0, #22
     ba0:	ef000000 	svc	0x00000000
     ba4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba8:	e12fff1e 	bx	lr

00000bac <settickets>:
     bac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bb0:	e1a04003 	mov	r4, r3
     bb4:	e1a03002 	mov	r3, r2
     bb8:	e1a02001 	mov	r2, r1
     bbc:	e1a01000 	mov	r1, r0
     bc0:	e3a00017 	mov	r0, #23
     bc4:	ef000000 	svc	0x00000000
     bc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bcc:	e12fff1e 	bx	lr

00000bd0 <srand>:
     bd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bd4:	e1a04003 	mov	r4, r3
     bd8:	e1a03002 	mov	r3, r2
     bdc:	e1a02001 	mov	r2, r1
     be0:	e1a01000 	mov	r1, r0
     be4:	e3a00018 	mov	r0, #24
     be8:	ef000000 	svc	0x00000000
     bec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bf0:	e12fff1e 	bx	lr

00000bf4 <getpinfo>:
     bf4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf8:	e1a04003 	mov	r4, r3
     bfc:	e1a03002 	mov	r3, r2
     c00:	e1a02001 	mov	r2, r1
     c04:	e1a01000 	mov	r1, r0
     c08:	e3a00019 	mov	r0, #25
     c0c:	ef000000 	svc	0x00000000
     c10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c14:	e12fff1e 	bx	lr

00000c18 <putc>:
     c18:	e92d4800 	push	{fp, lr}
     c1c:	e28db004 	add	fp, sp, #4
     c20:	e24dd008 	sub	sp, sp, #8
     c24:	e50b0008 	str	r0, [fp, #-8]
     c28:	e1a03001 	mov	r3, r1
     c2c:	e54b3009 	strb	r3, [fp, #-9]
     c30:	e24b3009 	sub	r3, fp, #9
     c34:	e3a02001 	mov	r2, #1
     c38:	e1a01003 	mov	r1, r3
     c3c:	e51b0008 	ldr	r0, [fp, #-8]
     c40:	ebffff40 	bl	948 <write>
     c44:	e1a00000 	nop			@ (mov r0, r0)
     c48:	e24bd004 	sub	sp, fp, #4
     c4c:	e8bd8800 	pop	{fp, pc}

00000c50 <printint>:
     c50:	e92d4800 	push	{fp, lr}
     c54:	e28db004 	add	fp, sp, #4
     c58:	e24dd030 	sub	sp, sp, #48	@ 0x30
     c5c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     c60:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     c64:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     c68:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     c6c:	e3a03000 	mov	r3, #0
     c70:	e50b300c 	str	r3, [fp, #-12]
     c74:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     c78:	e3530000 	cmp	r3, #0
     c7c:	0a000008 	beq	ca4 <printint+0x54>
     c80:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c84:	e3530000 	cmp	r3, #0
     c88:	aa000005 	bge	ca4 <printint+0x54>
     c8c:	e3a03001 	mov	r3, #1
     c90:	e50b300c 	str	r3, [fp, #-12]
     c94:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c98:	e2633000 	rsb	r3, r3, #0
     c9c:	e50b3010 	str	r3, [fp, #-16]
     ca0:	ea000001 	b	cac <printint+0x5c>
     ca4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ca8:	e50b3010 	str	r3, [fp, #-16]
     cac:	e3a03000 	mov	r3, #0
     cb0:	e50b3008 	str	r3, [fp, #-8]
     cb4:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     cb8:	e51b3010 	ldr	r3, [fp, #-16]
     cbc:	e1a01002 	mov	r1, r2
     cc0:	e1a00003 	mov	r0, r3
     cc4:	eb0001d5 	bl	1420 <__aeabi_uidivmod>
     cc8:	e1a03001 	mov	r3, r1
     ccc:	e1a01003 	mov	r1, r3
     cd0:	e51b3008 	ldr	r3, [fp, #-8]
     cd4:	e2832001 	add	r2, r3, #1
     cd8:	e50b2008 	str	r2, [fp, #-8]
     cdc:	e59f20a0 	ldr	r2, [pc, #160]	@ d84 <printint+0x134>
     ce0:	e7d22001 	ldrb	r2, [r2, r1]
     ce4:	e2433004 	sub	r3, r3, #4
     ce8:	e083300b 	add	r3, r3, fp
     cec:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     cf0:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     cf4:	e1a01003 	mov	r1, r3
     cf8:	e51b0010 	ldr	r0, [fp, #-16]
     cfc:	eb00018a 	bl	132c <__udivsi3>
     d00:	e1a03000 	mov	r3, r0
     d04:	e50b3010 	str	r3, [fp, #-16]
     d08:	e51b3010 	ldr	r3, [fp, #-16]
     d0c:	e3530000 	cmp	r3, #0
     d10:	1affffe7 	bne	cb4 <printint+0x64>
     d14:	e51b300c 	ldr	r3, [fp, #-12]
     d18:	e3530000 	cmp	r3, #0
     d1c:	0a00000e 	beq	d5c <printint+0x10c>
     d20:	e51b3008 	ldr	r3, [fp, #-8]
     d24:	e2832001 	add	r2, r3, #1
     d28:	e50b2008 	str	r2, [fp, #-8]
     d2c:	e2433004 	sub	r3, r3, #4
     d30:	e083300b 	add	r3, r3, fp
     d34:	e3a0202d 	mov	r2, #45	@ 0x2d
     d38:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     d3c:	ea000006 	b	d5c <printint+0x10c>
     d40:	e24b2020 	sub	r2, fp, #32
     d44:	e51b3008 	ldr	r3, [fp, #-8]
     d48:	e0823003 	add	r3, r2, r3
     d4c:	e5d33000 	ldrb	r3, [r3]
     d50:	e1a01003 	mov	r1, r3
     d54:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     d58:	ebffffae 	bl	c18 <putc>
     d5c:	e51b3008 	ldr	r3, [fp, #-8]
     d60:	e2433001 	sub	r3, r3, #1
     d64:	e50b3008 	str	r3, [fp, #-8]
     d68:	e51b3008 	ldr	r3, [fp, #-8]
     d6c:	e3530000 	cmp	r3, #0
     d70:	aafffff2 	bge	d40 <printint+0xf0>
     d74:	e1a00000 	nop			@ (mov r0, r0)
     d78:	e1a00000 	nop			@ (mov r0, r0)
     d7c:	e24bd004 	sub	sp, fp, #4
     d80:	e8bd8800 	pop	{fp, pc}
     d84:	0000149c 	.word	0x0000149c

00000d88 <printf>:
     d88:	e92d000e 	push	{r1, r2, r3}
     d8c:	e92d4800 	push	{fp, lr}
     d90:	e28db004 	add	fp, sp, #4
     d94:	e24dd024 	sub	sp, sp, #36	@ 0x24
     d98:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     d9c:	e3a03000 	mov	r3, #0
     da0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     da4:	e28b3008 	add	r3, fp, #8
     da8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     dac:	e3a03000 	mov	r3, #0
     db0:	e50b3010 	str	r3, [fp, #-16]
     db4:	ea000074 	b	f8c <printf+0x204>
     db8:	e59b2004 	ldr	r2, [fp, #4]
     dbc:	e51b3010 	ldr	r3, [fp, #-16]
     dc0:	e0823003 	add	r3, r2, r3
     dc4:	e5d33000 	ldrb	r3, [r3]
     dc8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     dcc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     dd0:	e3530000 	cmp	r3, #0
     dd4:	1a00000b 	bne	e08 <printf+0x80>
     dd8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ddc:	e3530025 	cmp	r3, #37	@ 0x25
     de0:	1a000002 	bne	df0 <printf+0x68>
     de4:	e3a03025 	mov	r3, #37	@ 0x25
     de8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     dec:	ea000063 	b	f80 <printf+0x1f8>
     df0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     df4:	e6ef3073 	uxtb	r3, r3
     df8:	e1a01003 	mov	r1, r3
     dfc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e00:	ebffff84 	bl	c18 <putc>
     e04:	ea00005d 	b	f80 <printf+0x1f8>
     e08:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     e0c:	e3530025 	cmp	r3, #37	@ 0x25
     e10:	1a00005a 	bne	f80 <printf+0x1f8>
     e14:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e18:	e3530064 	cmp	r3, #100	@ 0x64
     e1c:	1a00000a 	bne	e4c <printf+0xc4>
     e20:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e24:	e5933000 	ldr	r3, [r3]
     e28:	e1a01003 	mov	r1, r3
     e2c:	e3a03001 	mov	r3, #1
     e30:	e3a0200a 	mov	r2, #10
     e34:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e38:	ebffff84 	bl	c50 <printint>
     e3c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e40:	e2833004 	add	r3, r3, #4
     e44:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e48:	ea00004a 	b	f78 <printf+0x1f0>
     e4c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e50:	e3530078 	cmp	r3, #120	@ 0x78
     e54:	0a000002 	beq	e64 <printf+0xdc>
     e58:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e5c:	e3530070 	cmp	r3, #112	@ 0x70
     e60:	1a00000a 	bne	e90 <printf+0x108>
     e64:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e68:	e5933000 	ldr	r3, [r3]
     e6c:	e1a01003 	mov	r1, r3
     e70:	e3a03000 	mov	r3, #0
     e74:	e3a02010 	mov	r2, #16
     e78:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e7c:	ebffff73 	bl	c50 <printint>
     e80:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e84:	e2833004 	add	r3, r3, #4
     e88:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e8c:	ea000039 	b	f78 <printf+0x1f0>
     e90:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e94:	e3530073 	cmp	r3, #115	@ 0x73
     e98:	1a000018 	bne	f00 <printf+0x178>
     e9c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ea0:	e5933000 	ldr	r3, [r3]
     ea4:	e50b300c 	str	r3, [fp, #-12]
     ea8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     eac:	e2833004 	add	r3, r3, #4
     eb0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     eb4:	e51b300c 	ldr	r3, [fp, #-12]
     eb8:	e3530000 	cmp	r3, #0
     ebc:	1a00000a 	bne	eec <printf+0x164>
     ec0:	e59f30f4 	ldr	r3, [pc, #244]	@ fbc <printf+0x234>
     ec4:	e50b300c 	str	r3, [fp, #-12]
     ec8:	ea000007 	b	eec <printf+0x164>
     ecc:	e51b300c 	ldr	r3, [fp, #-12]
     ed0:	e5d33000 	ldrb	r3, [r3]
     ed4:	e1a01003 	mov	r1, r3
     ed8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     edc:	ebffff4d 	bl	c18 <putc>
     ee0:	e51b300c 	ldr	r3, [fp, #-12]
     ee4:	e2833001 	add	r3, r3, #1
     ee8:	e50b300c 	str	r3, [fp, #-12]
     eec:	e51b300c 	ldr	r3, [fp, #-12]
     ef0:	e5d33000 	ldrb	r3, [r3]
     ef4:	e3530000 	cmp	r3, #0
     ef8:	1afffff3 	bne	ecc <printf+0x144>
     efc:	ea00001d 	b	f78 <printf+0x1f0>
     f00:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f04:	e3530063 	cmp	r3, #99	@ 0x63
     f08:	1a000009 	bne	f34 <printf+0x1ac>
     f0c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f10:	e5933000 	ldr	r3, [r3]
     f14:	e6ef3073 	uxtb	r3, r3
     f18:	e1a01003 	mov	r1, r3
     f1c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f20:	ebffff3c 	bl	c18 <putc>
     f24:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f28:	e2833004 	add	r3, r3, #4
     f2c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f30:	ea000010 	b	f78 <printf+0x1f0>
     f34:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f38:	e3530025 	cmp	r3, #37	@ 0x25
     f3c:	1a000005 	bne	f58 <printf+0x1d0>
     f40:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f44:	e6ef3073 	uxtb	r3, r3
     f48:	e1a01003 	mov	r1, r3
     f4c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f50:	ebffff30 	bl	c18 <putc>
     f54:	ea000007 	b	f78 <printf+0x1f0>
     f58:	e3a01025 	mov	r1, #37	@ 0x25
     f5c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f60:	ebffff2c 	bl	c18 <putc>
     f64:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f68:	e6ef3073 	uxtb	r3, r3
     f6c:	e1a01003 	mov	r1, r3
     f70:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f74:	ebffff27 	bl	c18 <putc>
     f78:	e3a03000 	mov	r3, #0
     f7c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f80:	e51b3010 	ldr	r3, [fp, #-16]
     f84:	e2833001 	add	r3, r3, #1
     f88:	e50b3010 	str	r3, [fp, #-16]
     f8c:	e59b2004 	ldr	r2, [fp, #4]
     f90:	e51b3010 	ldr	r3, [fp, #-16]
     f94:	e0823003 	add	r3, r2, r3
     f98:	e5d33000 	ldrb	r3, [r3]
     f9c:	e3530000 	cmp	r3, #0
     fa0:	1affff84 	bne	db8 <printf+0x30>
     fa4:	e1a00000 	nop			@ (mov r0, r0)
     fa8:	e1a00000 	nop			@ (mov r0, r0)
     fac:	e24bd004 	sub	sp, fp, #4
     fb0:	e8bd4800 	pop	{fp, lr}
     fb4:	e28dd00c 	add	sp, sp, #12
     fb8:	e12fff1e 	bx	lr
     fbc:	00001494 	.word	0x00001494

00000fc0 <free>:
     fc0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     fc4:	e28db000 	add	fp, sp, #0
     fc8:	e24dd014 	sub	sp, sp, #20
     fcc:	e50b0010 	str	r0, [fp, #-16]
     fd0:	e51b3010 	ldr	r3, [fp, #-16]
     fd4:	e2433008 	sub	r3, r3, #8
     fd8:	e50b300c 	str	r3, [fp, #-12]
     fdc:	e59f3154 	ldr	r3, [pc, #340]	@ 1138 <free+0x178>
     fe0:	e5933000 	ldr	r3, [r3]
     fe4:	e50b3008 	str	r3, [fp, #-8]
     fe8:	ea000010 	b	1030 <free+0x70>
     fec:	e51b3008 	ldr	r3, [fp, #-8]
     ff0:	e5933000 	ldr	r3, [r3]
     ff4:	e51b2008 	ldr	r2, [fp, #-8]
     ff8:	e1520003 	cmp	r2, r3
     ffc:	3a000008 	bcc	1024 <free+0x64>
    1000:	e51b200c 	ldr	r2, [fp, #-12]
    1004:	e51b3008 	ldr	r3, [fp, #-8]
    1008:	e1520003 	cmp	r2, r3
    100c:	8a000010 	bhi	1054 <free+0x94>
    1010:	e51b3008 	ldr	r3, [fp, #-8]
    1014:	e5933000 	ldr	r3, [r3]
    1018:	e51b200c 	ldr	r2, [fp, #-12]
    101c:	e1520003 	cmp	r2, r3
    1020:	3a00000b 	bcc	1054 <free+0x94>
    1024:	e51b3008 	ldr	r3, [fp, #-8]
    1028:	e5933000 	ldr	r3, [r3]
    102c:	e50b3008 	str	r3, [fp, #-8]
    1030:	e51b200c 	ldr	r2, [fp, #-12]
    1034:	e51b3008 	ldr	r3, [fp, #-8]
    1038:	e1520003 	cmp	r2, r3
    103c:	9affffea 	bls	fec <free+0x2c>
    1040:	e51b3008 	ldr	r3, [fp, #-8]
    1044:	e5933000 	ldr	r3, [r3]
    1048:	e51b200c 	ldr	r2, [fp, #-12]
    104c:	e1520003 	cmp	r2, r3
    1050:	2affffe5 	bcs	fec <free+0x2c>
    1054:	e51b300c 	ldr	r3, [fp, #-12]
    1058:	e5933004 	ldr	r3, [r3, #4]
    105c:	e1a03183 	lsl	r3, r3, #3
    1060:	e51b200c 	ldr	r2, [fp, #-12]
    1064:	e0822003 	add	r2, r2, r3
    1068:	e51b3008 	ldr	r3, [fp, #-8]
    106c:	e5933000 	ldr	r3, [r3]
    1070:	e1520003 	cmp	r2, r3
    1074:	1a00000d 	bne	10b0 <free+0xf0>
    1078:	e51b300c 	ldr	r3, [fp, #-12]
    107c:	e5932004 	ldr	r2, [r3, #4]
    1080:	e51b3008 	ldr	r3, [fp, #-8]
    1084:	e5933000 	ldr	r3, [r3]
    1088:	e5933004 	ldr	r3, [r3, #4]
    108c:	e0822003 	add	r2, r2, r3
    1090:	e51b300c 	ldr	r3, [fp, #-12]
    1094:	e5832004 	str	r2, [r3, #4]
    1098:	e51b3008 	ldr	r3, [fp, #-8]
    109c:	e5933000 	ldr	r3, [r3]
    10a0:	e5932000 	ldr	r2, [r3]
    10a4:	e51b300c 	ldr	r3, [fp, #-12]
    10a8:	e5832000 	str	r2, [r3]
    10ac:	ea000003 	b	10c0 <free+0x100>
    10b0:	e51b3008 	ldr	r3, [fp, #-8]
    10b4:	e5932000 	ldr	r2, [r3]
    10b8:	e51b300c 	ldr	r3, [fp, #-12]
    10bc:	e5832000 	str	r2, [r3]
    10c0:	e51b3008 	ldr	r3, [fp, #-8]
    10c4:	e5933004 	ldr	r3, [r3, #4]
    10c8:	e1a03183 	lsl	r3, r3, #3
    10cc:	e51b2008 	ldr	r2, [fp, #-8]
    10d0:	e0823003 	add	r3, r2, r3
    10d4:	e51b200c 	ldr	r2, [fp, #-12]
    10d8:	e1520003 	cmp	r2, r3
    10dc:	1a00000b 	bne	1110 <free+0x150>
    10e0:	e51b3008 	ldr	r3, [fp, #-8]
    10e4:	e5932004 	ldr	r2, [r3, #4]
    10e8:	e51b300c 	ldr	r3, [fp, #-12]
    10ec:	e5933004 	ldr	r3, [r3, #4]
    10f0:	e0822003 	add	r2, r2, r3
    10f4:	e51b3008 	ldr	r3, [fp, #-8]
    10f8:	e5832004 	str	r2, [r3, #4]
    10fc:	e51b300c 	ldr	r3, [fp, #-12]
    1100:	e5932000 	ldr	r2, [r3]
    1104:	e51b3008 	ldr	r3, [fp, #-8]
    1108:	e5832000 	str	r2, [r3]
    110c:	ea000002 	b	111c <free+0x15c>
    1110:	e51b3008 	ldr	r3, [fp, #-8]
    1114:	e51b200c 	ldr	r2, [fp, #-12]
    1118:	e5832000 	str	r2, [r3]
    111c:	e59f2014 	ldr	r2, [pc, #20]	@ 1138 <free+0x178>
    1120:	e51b3008 	ldr	r3, [fp, #-8]
    1124:	e5823000 	str	r3, [r2]
    1128:	e1a00000 	nop			@ (mov r0, r0)
    112c:	e28bd000 	add	sp, fp, #0
    1130:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1134:	e12fff1e 	bx	lr
    1138:	000014c8 	.word	0x000014c8

0000113c <morecore>:
    113c:	e92d4800 	push	{fp, lr}
    1140:	e28db004 	add	fp, sp, #4
    1144:	e24dd010 	sub	sp, sp, #16
    1148:	e50b0010 	str	r0, [fp, #-16]
    114c:	e51b3010 	ldr	r3, [fp, #-16]
    1150:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1154:	2a000001 	bcs	1160 <morecore+0x24>
    1158:	e3a03a01 	mov	r3, #4096	@ 0x1000
    115c:	e50b3010 	str	r3, [fp, #-16]
    1160:	e51b3010 	ldr	r3, [fp, #-16]
    1164:	e1a03183 	lsl	r3, r3, #3
    1168:	e1a00003 	mov	r0, r3
    116c:	ebfffe6a 	bl	b1c <sbrk>
    1170:	e50b0008 	str	r0, [fp, #-8]
    1174:	e51b3008 	ldr	r3, [fp, #-8]
    1178:	e3730001 	cmn	r3, #1
    117c:	1a000001 	bne	1188 <morecore+0x4c>
    1180:	e3a03000 	mov	r3, #0
    1184:	ea00000a 	b	11b4 <morecore+0x78>
    1188:	e51b3008 	ldr	r3, [fp, #-8]
    118c:	e50b300c 	str	r3, [fp, #-12]
    1190:	e51b300c 	ldr	r3, [fp, #-12]
    1194:	e51b2010 	ldr	r2, [fp, #-16]
    1198:	e5832004 	str	r2, [r3, #4]
    119c:	e51b300c 	ldr	r3, [fp, #-12]
    11a0:	e2833008 	add	r3, r3, #8
    11a4:	e1a00003 	mov	r0, r3
    11a8:	ebffff84 	bl	fc0 <free>
    11ac:	e59f300c 	ldr	r3, [pc, #12]	@ 11c0 <morecore+0x84>
    11b0:	e5933000 	ldr	r3, [r3]
    11b4:	e1a00003 	mov	r0, r3
    11b8:	e24bd004 	sub	sp, fp, #4
    11bc:	e8bd8800 	pop	{fp, pc}
    11c0:	000014c8 	.word	0x000014c8

000011c4 <malloc>:
    11c4:	e92d4800 	push	{fp, lr}
    11c8:	e28db004 	add	fp, sp, #4
    11cc:	e24dd018 	sub	sp, sp, #24
    11d0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    11d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11d8:	e2833007 	add	r3, r3, #7
    11dc:	e1a031a3 	lsr	r3, r3, #3
    11e0:	e2833001 	add	r3, r3, #1
    11e4:	e50b3010 	str	r3, [fp, #-16]
    11e8:	e59f3134 	ldr	r3, [pc, #308]	@ 1324 <malloc+0x160>
    11ec:	e5933000 	ldr	r3, [r3]
    11f0:	e50b300c 	str	r3, [fp, #-12]
    11f4:	e51b300c 	ldr	r3, [fp, #-12]
    11f8:	e3530000 	cmp	r3, #0
    11fc:	1a00000b 	bne	1230 <malloc+0x6c>
    1200:	e59f3120 	ldr	r3, [pc, #288]	@ 1328 <malloc+0x164>
    1204:	e50b300c 	str	r3, [fp, #-12]
    1208:	e59f2114 	ldr	r2, [pc, #276]	@ 1324 <malloc+0x160>
    120c:	e51b300c 	ldr	r3, [fp, #-12]
    1210:	e5823000 	str	r3, [r2]
    1214:	e59f3108 	ldr	r3, [pc, #264]	@ 1324 <malloc+0x160>
    1218:	e5933000 	ldr	r3, [r3]
    121c:	e59f2104 	ldr	r2, [pc, #260]	@ 1328 <malloc+0x164>
    1220:	e5823000 	str	r3, [r2]
    1224:	e59f30fc 	ldr	r3, [pc, #252]	@ 1328 <malloc+0x164>
    1228:	e3a02000 	mov	r2, #0
    122c:	e5832004 	str	r2, [r3, #4]
    1230:	e51b300c 	ldr	r3, [fp, #-12]
    1234:	e5933000 	ldr	r3, [r3]
    1238:	e50b3008 	str	r3, [fp, #-8]
    123c:	e51b3008 	ldr	r3, [fp, #-8]
    1240:	e5933004 	ldr	r3, [r3, #4]
    1244:	e51b2010 	ldr	r2, [fp, #-16]
    1248:	e1520003 	cmp	r2, r3
    124c:	8a00001e 	bhi	12cc <malloc+0x108>
    1250:	e51b3008 	ldr	r3, [fp, #-8]
    1254:	e5933004 	ldr	r3, [r3, #4]
    1258:	e51b2010 	ldr	r2, [fp, #-16]
    125c:	e1520003 	cmp	r2, r3
    1260:	1a000004 	bne	1278 <malloc+0xb4>
    1264:	e51b3008 	ldr	r3, [fp, #-8]
    1268:	e5932000 	ldr	r2, [r3]
    126c:	e51b300c 	ldr	r3, [fp, #-12]
    1270:	e5832000 	str	r2, [r3]
    1274:	ea00000e 	b	12b4 <malloc+0xf0>
    1278:	e51b3008 	ldr	r3, [fp, #-8]
    127c:	e5932004 	ldr	r2, [r3, #4]
    1280:	e51b3010 	ldr	r3, [fp, #-16]
    1284:	e0422003 	sub	r2, r2, r3
    1288:	e51b3008 	ldr	r3, [fp, #-8]
    128c:	e5832004 	str	r2, [r3, #4]
    1290:	e51b3008 	ldr	r3, [fp, #-8]
    1294:	e5933004 	ldr	r3, [r3, #4]
    1298:	e1a03183 	lsl	r3, r3, #3
    129c:	e51b2008 	ldr	r2, [fp, #-8]
    12a0:	e0823003 	add	r3, r2, r3
    12a4:	e50b3008 	str	r3, [fp, #-8]
    12a8:	e51b3008 	ldr	r3, [fp, #-8]
    12ac:	e51b2010 	ldr	r2, [fp, #-16]
    12b0:	e5832004 	str	r2, [r3, #4]
    12b4:	e59f2068 	ldr	r2, [pc, #104]	@ 1324 <malloc+0x160>
    12b8:	e51b300c 	ldr	r3, [fp, #-12]
    12bc:	e5823000 	str	r3, [r2]
    12c0:	e51b3008 	ldr	r3, [fp, #-8]
    12c4:	e2833008 	add	r3, r3, #8
    12c8:	ea000012 	b	1318 <malloc+0x154>
    12cc:	e59f3050 	ldr	r3, [pc, #80]	@ 1324 <malloc+0x160>
    12d0:	e5933000 	ldr	r3, [r3]
    12d4:	e51b2008 	ldr	r2, [fp, #-8]
    12d8:	e1520003 	cmp	r2, r3
    12dc:	1a000007 	bne	1300 <malloc+0x13c>
    12e0:	e51b0010 	ldr	r0, [fp, #-16]
    12e4:	ebffff94 	bl	113c <morecore>
    12e8:	e50b0008 	str	r0, [fp, #-8]
    12ec:	e51b3008 	ldr	r3, [fp, #-8]
    12f0:	e3530000 	cmp	r3, #0
    12f4:	1a000001 	bne	1300 <malloc+0x13c>
    12f8:	e3a03000 	mov	r3, #0
    12fc:	ea000005 	b	1318 <malloc+0x154>
    1300:	e51b3008 	ldr	r3, [fp, #-8]
    1304:	e50b300c 	str	r3, [fp, #-12]
    1308:	e51b3008 	ldr	r3, [fp, #-8]
    130c:	e5933000 	ldr	r3, [r3]
    1310:	e50b3008 	str	r3, [fp, #-8]
    1314:	eaffffc8 	b	123c <malloc+0x78>
    1318:	e1a00003 	mov	r0, r3
    131c:	e24bd004 	sub	sp, fp, #4
    1320:	e8bd8800 	pop	{fp, pc}
    1324:	000014c8 	.word	0x000014c8
    1328:	000014c0 	.word	0x000014c0

0000132c <__udivsi3>:
    132c:	e2512001 	subs	r2, r1, #1
    1330:	012fff1e 	bxeq	lr
    1334:	3a000036 	bcc	1414 <__udivsi3+0xe8>
    1338:	e1500001 	cmp	r0, r1
    133c:	9a000022 	bls	13cc <__udivsi3+0xa0>
    1340:	e1110002 	tst	r1, r2
    1344:	0a000023 	beq	13d8 <__udivsi3+0xac>
    1348:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    134c:	01a01181 	lsleq	r1, r1, #3
    1350:	03a03008 	moveq	r3, #8
    1354:	13a03001 	movne	r3, #1
    1358:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    135c:	31510000 	cmpcc	r1, r0
    1360:	31a01201 	lslcc	r1, r1, #4
    1364:	31a03203 	lslcc	r3, r3, #4
    1368:	3afffffa 	bcc	1358 <__udivsi3+0x2c>
    136c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1370:	31510000 	cmpcc	r1, r0
    1374:	31a01081 	lslcc	r1, r1, #1
    1378:	31a03083 	lslcc	r3, r3, #1
    137c:	3afffffa 	bcc	136c <__udivsi3+0x40>
    1380:	e3a02000 	mov	r2, #0
    1384:	e1500001 	cmp	r0, r1
    1388:	20400001 	subcs	r0, r0, r1
    138c:	21822003 	orrcs	r2, r2, r3
    1390:	e15000a1 	cmp	r0, r1, lsr #1
    1394:	204000a1 	subcs	r0, r0, r1, lsr #1
    1398:	218220a3 	orrcs	r2, r2, r3, lsr #1
    139c:	e1500121 	cmp	r0, r1, lsr #2
    13a0:	20400121 	subcs	r0, r0, r1, lsr #2
    13a4:	21822123 	orrcs	r2, r2, r3, lsr #2
    13a8:	e15001a1 	cmp	r0, r1, lsr #3
    13ac:	204001a1 	subcs	r0, r0, r1, lsr #3
    13b0:	218221a3 	orrcs	r2, r2, r3, lsr #3
    13b4:	e3500000 	cmp	r0, #0
    13b8:	11b03223 	lsrsne	r3, r3, #4
    13bc:	11a01221 	lsrne	r1, r1, #4
    13c0:	1affffef 	bne	1384 <__udivsi3+0x58>
    13c4:	e1a00002 	mov	r0, r2
    13c8:	e12fff1e 	bx	lr
    13cc:	03a00001 	moveq	r0, #1
    13d0:	13a00000 	movne	r0, #0
    13d4:	e12fff1e 	bx	lr
    13d8:	e3510801 	cmp	r1, #65536	@ 0x10000
    13dc:	21a01821 	lsrcs	r1, r1, #16
    13e0:	23a02010 	movcs	r2, #16
    13e4:	33a02000 	movcc	r2, #0
    13e8:	e3510c01 	cmp	r1, #256	@ 0x100
    13ec:	21a01421 	lsrcs	r1, r1, #8
    13f0:	22822008 	addcs	r2, r2, #8
    13f4:	e3510010 	cmp	r1, #16
    13f8:	21a01221 	lsrcs	r1, r1, #4
    13fc:	22822004 	addcs	r2, r2, #4
    1400:	e3510004 	cmp	r1, #4
    1404:	82822003 	addhi	r2, r2, #3
    1408:	908220a1 	addls	r2, r2, r1, lsr #1
    140c:	e1a00230 	lsr	r0, r0, r2
    1410:	e12fff1e 	bx	lr
    1414:	e3500000 	cmp	r0, #0
    1418:	13e00000 	mvnne	r0, #0
    141c:	ea000007 	b	1440 <__aeabi_idiv0>

00001420 <__aeabi_uidivmod>:
    1420:	e3510000 	cmp	r1, #0
    1424:	0afffffa 	beq	1414 <__udivsi3+0xe8>
    1428:	e92d4003 	push	{r0, r1, lr}
    142c:	ebffffbe 	bl	132c <__udivsi3>
    1430:	e8bd4006 	pop	{r1, r2, lr}
    1434:	e0030092 	mul	r3, r2, r0
    1438:	e0411003 	sub	r1, r1, r3
    143c:	e12fff1e 	bx	lr

00001440 <__aeabi_idiv0>:
    1440:	e12fff1e 	bx	lr
