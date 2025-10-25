
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
      e0:	000019b4 	.word	0x000019b4

000000e4 <ls>:
      e4:	e92d4800 	push	{fp, lr}
      e8:	e28db004 	add	fp, sp, #4
      ec:	e24ddd09 	sub	sp, sp, #576	@ 0x240
      f0:	e50b0238 	str	r0, [fp, #-568]	@ 0xfffffdc8
      f4:	e3a01000 	mov	r1, #0
      f8:	e51b0238 	ldr	r0, [fp, #-568]	@ 0xfffffdc8
      fc:	eb000313 	bl	d50 <open>
     100:	e50b0008 	str	r0, [fp, #-8]
     104:	e51b3008 	ldr	r3, [fp, #-8]
     108:	e3530000 	cmp	r3, #0
     10c:	aa000004 	bge	124 <ls+0x40>
     110:	e51b2238 	ldr	r2, [fp, #-568]	@ 0xfffffdc8
     114:	e59f1200 	ldr	r1, [pc, #512]	@ 31c <ls+0x238>
     118:	e3a00002 	mov	r0, #2
     11c:	eb00045a 	bl	128c <printf>
     120:	ea00007b 	b	314 <ls+0x230>
     124:	e24b3e23 	sub	r3, fp, #560	@ 0x230
     128:	e1a01003 	mov	r1, r3
     12c:	e51b0008 	ldr	r0, [fp, #-8]
     130:	eb000321 	bl	dbc <fstat>
     134:	e1a03000 	mov	r3, r0
     138:	e3530000 	cmp	r3, #0
     13c:	aa000006 	bge	15c <ls+0x78>
     140:	e51b2238 	ldr	r2, [fp, #-568]	@ 0xfffffdc8
     144:	e59f11d4 	ldr	r1, [pc, #468]	@ 320 <ls+0x23c>
     148:	e3a00002 	mov	r0, #2
     14c:	eb00044e 	bl	128c <printf>
     150:	e51b0008 	ldr	r0, [fp, #-8]
     154:	eb0002e2 	bl	ce4 <close>
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
     1b4:	eb000434 	bl	128c <printf>
     1b8:	ea000053 	b	30c <ls+0x228>
     1bc:	e51b0238 	ldr	r0, [fp, #-568]	@ 0xfffffdc8
     1c0:	eb0000af 	bl	484 <strlen>
     1c4:	e1a03000 	mov	r3, r0
     1c8:	e2833010 	add	r3, r3, #16
     1cc:	e3530c02 	cmp	r3, #512	@ 0x200
     1d0:	9a000003 	bls	1e4 <ls+0x100>
     1d4:	e59f114c 	ldr	r1, [pc, #332]	@ 328 <ls+0x244>
     1d8:	e3a00001 	mov	r0, #1
     1dc:	eb00042a 	bl	128c <printf>
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
     294:	eb0003fc 	bl	128c <printf>
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
     2dc:	eb0003ea 	bl	128c <printf>
     2e0:	ea000000 	b	2e8 <ls+0x204>
     2e4:	e1a00000 	nop			@ (mov r0, r0)
     2e8:	e24b3f87 	sub	r3, fp, #540	@ 0x21c
     2ec:	e3a02010 	mov	r2, #16
     2f0:	e1a01003 	mov	r1, r3
     2f4:	e51b0008 	ldr	r0, [fp, #-8]
     2f8:	eb000267 	bl	c9c <read>
     2fc:	e1a03000 	mov	r3, r0
     300:	e3530010 	cmp	r3, #16
     304:	0affffc7 	beq	228 <ls+0x144>
     308:	e1a00000 	nop			@ (mov r0, r0)
     30c:	e51b0008 	ldr	r0, [fp, #-8]
     310:	eb000273 	bl	ce4 <close>
     314:	e24bd004 	sub	sp, fp, #4
     318:	e8bd8800 	pop	{fp, pc}
     31c:	00001948 	.word	0x00001948
     320:	0000195c 	.word	0x0000195c
     324:	00001970 	.word	0x00001970
     328:	00001980 	.word	0x00001980

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
     354:	eb000235 	bl	c30 <exit>
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
     39c:	eb000223 	bl	c30 <exit>
     3a0:	00001994 	.word	0x00001994

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
     698:	eb00017f 	bl	c9c <read>
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
     740:	eb000182 	bl	d50 <open>
     744:	e50b0008 	str	r0, [fp, #-8]
     748:	e51b3008 	ldr	r3, [fp, #-8]
     74c:	e3530000 	cmp	r3, #0
     750:	aa000001 	bge	75c <stat+0x38>
     754:	e3e03000 	mvn	r3, #0
     758:	ea000006 	b	778 <stat+0x54>
     75c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     760:	e51b0008 	ldr	r0, [fp, #-8]
     764:	eb000194 	bl	dbc <fstat>
     768:	e50b000c 	str	r0, [fp, #-12]
     76c:	e51b0008 	ldr	r0, [fp, #-8]
     770:	eb00015b 	bl	ce4 <close>
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

00000894 <initiateLock>:
     894:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     898:	e28db000 	add	fp, sp, #0
     89c:	e24dd00c 	sub	sp, sp, #12
     8a0:	e50b0008 	str	r0, [fp, #-8]
     8a4:	e51b3008 	ldr	r3, [fp, #-8]
     8a8:	e3a02000 	mov	r2, #0
     8ac:	e5832000 	str	r2, [r3]
     8b0:	e51b3008 	ldr	r3, [fp, #-8]
     8b4:	e3a02001 	mov	r2, #1
     8b8:	e5832004 	str	r2, [r3, #4]
     8bc:	e1a00000 	nop			@ (mov r0, r0)
     8c0:	e28bd000 	add	sp, fp, #0
     8c4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8c8:	e12fff1e 	bx	lr

000008cc <xchg>:
     8cc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     8d0:	e28db000 	add	fp, sp, #0
     8d4:	e24dd00c 	sub	sp, sp, #12
     8d8:	e50b0008 	str	r0, [fp, #-8]
     8dc:	e50b100c 	str	r1, [fp, #-12]
     8e0:	e51b200c 	ldr	r2, [fp, #-12]
     8e4:	e51b3008 	ldr	r3, [fp, #-8]
     8e8:	e1931f9f 	ldrex	r1, [r3]
     8ec:	e1830f92 	strex	r0, r2, [r3]
     8f0:	e3500000 	cmp	r0, #0
     8f4:	1afffffb 	bne	8e8 <xchg+0x1c>
     8f8:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     8fc:	e1a03001 	mov	r3, r1
     900:	e1a00003 	mov	r0, r3
     904:	e28bd000 	add	sp, fp, #0
     908:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     90c:	e12fff1e 	bx	lr

00000910 <acquireLock>:
     910:	e92d4800 	push	{fp, lr}
     914:	e28db004 	add	fp, sp, #4
     918:	e24dd008 	sub	sp, sp, #8
     91c:	e50b0008 	str	r0, [fp, #-8]
     920:	e51b3008 	ldr	r3, [fp, #-8]
     924:	e5933004 	ldr	r3, [r3, #4]
     928:	e3530000 	cmp	r3, #0
     92c:	0a000008 	beq	954 <acquireLock+0x44>
     930:	e1a00000 	nop			@ (mov r0, r0)
     934:	e51b3008 	ldr	r3, [fp, #-8]
     938:	e3a01001 	mov	r1, #1
     93c:	e1a00003 	mov	r0, r3
     940:	ebffffe1 	bl	8cc <xchg>
     944:	e1a03000 	mov	r3, r0
     948:	e3530000 	cmp	r3, #0
     94c:	1afffff8 	bne	934 <acquireLock+0x24>
     950:	ea000000 	b	958 <acquireLock+0x48>
     954:	e1a00000 	nop			@ (mov r0, r0)
     958:	e24bd004 	sub	sp, fp, #4
     95c:	e8bd8800 	pop	{fp, pc}

00000960 <releaseLock>:
     960:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     964:	e28db000 	add	fp, sp, #0
     968:	e24dd00c 	sub	sp, sp, #12
     96c:	e50b0008 	str	r0, [fp, #-8]
     970:	e51b3008 	ldr	r3, [fp, #-8]
     974:	e5933004 	ldr	r3, [r3, #4]
     978:	e3530000 	cmp	r3, #0
     97c:	0a000007 	beq	9a0 <releaseLock+0x40>
     980:	e51b3008 	ldr	r3, [fp, #-8]
     984:	e5933000 	ldr	r3, [r3]
     988:	e3530001 	cmp	r3, #1
     98c:	1a000005 	bne	9a8 <releaseLock+0x48>
     990:	e51b3008 	ldr	r3, [fp, #-8]
     994:	e3a02000 	mov	r2, #0
     998:	e5832000 	str	r2, [r3]
     99c:	ea000002 	b	9ac <releaseLock+0x4c>
     9a0:	e1a00000 	nop			@ (mov r0, r0)
     9a4:	ea000000 	b	9ac <releaseLock+0x4c>
     9a8:	e1a00000 	nop			@ (mov r0, r0)
     9ac:	e28bd000 	add	sp, fp, #0
     9b0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     9b4:	e12fff1e 	bx	lr

000009b8 <initiateCondVar>:
     9b8:	e92d4800 	push	{fp, lr}
     9bc:	e28db004 	add	fp, sp, #4
     9c0:	e24dd008 	sub	sp, sp, #8
     9c4:	e50b0008 	str	r0, [fp, #-8]
     9c8:	eb0001b8 	bl	10b0 <getChannel>
     9cc:	e1a02000 	mov	r2, r0
     9d0:	e51b3008 	ldr	r3, [fp, #-8]
     9d4:	e5832000 	str	r2, [r3]
     9d8:	e51b3008 	ldr	r3, [fp, #-8]
     9dc:	e3a02001 	mov	r2, #1
     9e0:	e5832004 	str	r2, [r3, #4]
     9e4:	e1a00000 	nop			@ (mov r0, r0)
     9e8:	e24bd004 	sub	sp, fp, #4
     9ec:	e8bd8800 	pop	{fp, pc}

000009f0 <condWait>:
     9f0:	e92d4800 	push	{fp, lr}
     9f4:	e28db004 	add	fp, sp, #4
     9f8:	e24dd008 	sub	sp, sp, #8
     9fc:	e50b0008 	str	r0, [fp, #-8]
     a00:	e50b100c 	str	r1, [fp, #-12]
     a04:	e51b3008 	ldr	r3, [fp, #-8]
     a08:	e5933004 	ldr	r3, [r3, #4]
     a0c:	e3530000 	cmp	r3, #0
     a10:	0a00000c 	beq	a48 <condWait+0x58>
     a14:	e51b300c 	ldr	r3, [fp, #-12]
     a18:	e5933004 	ldr	r3, [r3, #4]
     a1c:	e3530000 	cmp	r3, #0
     a20:	0a000008 	beq	a48 <condWait+0x58>
     a24:	e51b000c 	ldr	r0, [fp, #-12]
     a28:	ebffffcc 	bl	960 <releaseLock>
     a2c:	e51b3008 	ldr	r3, [fp, #-8]
     a30:	e5933000 	ldr	r3, [r3]
     a34:	e1a00003 	mov	r0, r3
     a38:	eb000193 	bl	108c <sleepChan>
     a3c:	e51b000c 	ldr	r0, [fp, #-12]
     a40:	ebffffb2 	bl	910 <acquireLock>
     a44:	ea000000 	b	a4c <condWait+0x5c>
     a48:	e1a00000 	nop			@ (mov r0, r0)
     a4c:	e24bd004 	sub	sp, fp, #4
     a50:	e8bd8800 	pop	{fp, pc}

00000a54 <broadcast>:
     a54:	e92d4800 	push	{fp, lr}
     a58:	e28db004 	add	fp, sp, #4
     a5c:	e24dd008 	sub	sp, sp, #8
     a60:	e50b0008 	str	r0, [fp, #-8]
     a64:	e51b3008 	ldr	r3, [fp, #-8]
     a68:	e5933004 	ldr	r3, [r3, #4]
     a6c:	e3530000 	cmp	r3, #0
     a70:	0a000004 	beq	a88 <broadcast+0x34>
     a74:	e51b3008 	ldr	r3, [fp, #-8]
     a78:	e5933000 	ldr	r3, [r3]
     a7c:	e1a00003 	mov	r0, r3
     a80:	eb000193 	bl	10d4 <sigChan>
     a84:	ea000000 	b	a8c <broadcast+0x38>
     a88:	e1a00000 	nop			@ (mov r0, r0)
     a8c:	e24bd004 	sub	sp, fp, #4
     a90:	e8bd8800 	pop	{fp, pc}

00000a94 <signal>:
     a94:	e92d4800 	push	{fp, lr}
     a98:	e28db004 	add	fp, sp, #4
     a9c:	e24dd008 	sub	sp, sp, #8
     aa0:	e50b0008 	str	r0, [fp, #-8]
     aa4:	e51b3008 	ldr	r3, [fp, #-8]
     aa8:	e5933004 	ldr	r3, [r3, #4]
     aac:	e3530000 	cmp	r3, #0
     ab0:	0a000004 	beq	ac8 <signal+0x34>
     ab4:	e51b3008 	ldr	r3, [fp, #-8]
     ab8:	e5933000 	ldr	r3, [r3]
     abc:	e1a00003 	mov	r0, r3
     ac0:	eb00018c 	bl	10f8 <sigOneChan>
     ac4:	ea000000 	b	acc <signal+0x38>
     ac8:	e1a00000 	nop			@ (mov r0, r0)
     acc:	e24bd004 	sub	sp, fp, #4
     ad0:	e8bd8800 	pop	{fp, pc}

00000ad4 <semInit>:
     ad4:	e92d4800 	push	{fp, lr}
     ad8:	e28db004 	add	fp, sp, #4
     adc:	e24dd008 	sub	sp, sp, #8
     ae0:	e50b0008 	str	r0, [fp, #-8]
     ae4:	e50b100c 	str	r1, [fp, #-12]
     ae8:	e51b3008 	ldr	r3, [fp, #-8]
     aec:	e51b200c 	ldr	r2, [fp, #-12]
     af0:	e5832000 	str	r2, [r3]
     af4:	e51b3008 	ldr	r3, [fp, #-8]
     af8:	e2833004 	add	r3, r3, #4
     afc:	e1a00003 	mov	r0, r3
     b00:	ebffff63 	bl	894 <initiateLock>
     b04:	e51b3008 	ldr	r3, [fp, #-8]
     b08:	e283300c 	add	r3, r3, #12
     b0c:	e1a00003 	mov	r0, r3
     b10:	ebffffa8 	bl	9b8 <initiateCondVar>
     b14:	e51b3008 	ldr	r3, [fp, #-8]
     b18:	e3a02001 	mov	r2, #1
     b1c:	e5832014 	str	r2, [r3, #20]
     b20:	e1a00000 	nop			@ (mov r0, r0)
     b24:	e24bd004 	sub	sp, fp, #4
     b28:	e8bd8800 	pop	{fp, pc}

00000b2c <semUp>:
     b2c:	e92d4800 	push	{fp, lr}
     b30:	e28db004 	add	fp, sp, #4
     b34:	e24dd008 	sub	sp, sp, #8
     b38:	e50b0008 	str	r0, [fp, #-8]
     b3c:	e51b3008 	ldr	r3, [fp, #-8]
     b40:	e2833004 	add	r3, r3, #4
     b44:	e1a00003 	mov	r0, r3
     b48:	ebffff70 	bl	910 <acquireLock>
     b4c:	e51b3008 	ldr	r3, [fp, #-8]
     b50:	e5933000 	ldr	r3, [r3]
     b54:	e2832001 	add	r2, r3, #1
     b58:	e51b3008 	ldr	r3, [fp, #-8]
     b5c:	e5832000 	str	r2, [r3]
     b60:	e51b3008 	ldr	r3, [fp, #-8]
     b64:	e283300c 	add	r3, r3, #12
     b68:	e1a00003 	mov	r0, r3
     b6c:	ebffffc8 	bl	a94 <signal>
     b70:	e51b3008 	ldr	r3, [fp, #-8]
     b74:	e2833004 	add	r3, r3, #4
     b78:	e1a00003 	mov	r0, r3
     b7c:	ebffff77 	bl	960 <releaseLock>
     b80:	e1a00000 	nop			@ (mov r0, r0)
     b84:	e24bd004 	sub	sp, fp, #4
     b88:	e8bd8800 	pop	{fp, pc}

00000b8c <semDown>:
     b8c:	e92d4800 	push	{fp, lr}
     b90:	e28db004 	add	fp, sp, #4
     b94:	e24dd008 	sub	sp, sp, #8
     b98:	e50b0008 	str	r0, [fp, #-8]
     b9c:	e51b3008 	ldr	r3, [fp, #-8]
     ba0:	e2833004 	add	r3, r3, #4
     ba4:	e1a00003 	mov	r0, r3
     ba8:	ebffff58 	bl	910 <acquireLock>
     bac:	ea000006 	b	bcc <semDown+0x40>
     bb0:	e51b3008 	ldr	r3, [fp, #-8]
     bb4:	e283200c 	add	r2, r3, #12
     bb8:	e51b3008 	ldr	r3, [fp, #-8]
     bbc:	e2833004 	add	r3, r3, #4
     bc0:	e1a01003 	mov	r1, r3
     bc4:	e1a00002 	mov	r0, r2
     bc8:	ebffff88 	bl	9f0 <condWait>
     bcc:	e51b3008 	ldr	r3, [fp, #-8]
     bd0:	e5933000 	ldr	r3, [r3]
     bd4:	e3530000 	cmp	r3, #0
     bd8:	dafffff4 	ble	bb0 <semDown+0x24>
     bdc:	e51b3008 	ldr	r3, [fp, #-8]
     be0:	e5933000 	ldr	r3, [r3]
     be4:	e2432001 	sub	r2, r3, #1
     be8:	e51b3008 	ldr	r3, [fp, #-8]
     bec:	e5832000 	str	r2, [r3]
     bf0:	e51b3008 	ldr	r3, [fp, #-8]
     bf4:	e2833004 	add	r3, r3, #4
     bf8:	e1a00003 	mov	r0, r3
     bfc:	ebffff57 	bl	960 <releaseLock>
     c00:	e1a00000 	nop			@ (mov r0, r0)
     c04:	e24bd004 	sub	sp, fp, #4
     c08:	e8bd8800 	pop	{fp, pc}

00000c0c <fork>:
     c0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c10:	e1a04003 	mov	r4, r3
     c14:	e1a03002 	mov	r3, r2
     c18:	e1a02001 	mov	r2, r1
     c1c:	e1a01000 	mov	r1, r0
     c20:	e3a00001 	mov	r0, #1
     c24:	ef000000 	svc	0x00000000
     c28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c2c:	e12fff1e 	bx	lr

00000c30 <exit>:
     c30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c34:	e1a04003 	mov	r4, r3
     c38:	e1a03002 	mov	r3, r2
     c3c:	e1a02001 	mov	r2, r1
     c40:	e1a01000 	mov	r1, r0
     c44:	e3a00002 	mov	r0, #2
     c48:	ef000000 	svc	0x00000000
     c4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c50:	e12fff1e 	bx	lr

00000c54 <wait>:
     c54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c58:	e1a04003 	mov	r4, r3
     c5c:	e1a03002 	mov	r3, r2
     c60:	e1a02001 	mov	r2, r1
     c64:	e1a01000 	mov	r1, r0
     c68:	e3a00003 	mov	r0, #3
     c6c:	ef000000 	svc	0x00000000
     c70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c74:	e12fff1e 	bx	lr

00000c78 <pipe>:
     c78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c7c:	e1a04003 	mov	r4, r3
     c80:	e1a03002 	mov	r3, r2
     c84:	e1a02001 	mov	r2, r1
     c88:	e1a01000 	mov	r1, r0
     c8c:	e3a00004 	mov	r0, #4
     c90:	ef000000 	svc	0x00000000
     c94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c98:	e12fff1e 	bx	lr

00000c9c <read>:
     c9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca0:	e1a04003 	mov	r4, r3
     ca4:	e1a03002 	mov	r3, r2
     ca8:	e1a02001 	mov	r2, r1
     cac:	e1a01000 	mov	r1, r0
     cb0:	e3a00005 	mov	r0, #5
     cb4:	ef000000 	svc	0x00000000
     cb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cbc:	e12fff1e 	bx	lr

00000cc0 <write>:
     cc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc4:	e1a04003 	mov	r4, r3
     cc8:	e1a03002 	mov	r3, r2
     ccc:	e1a02001 	mov	r2, r1
     cd0:	e1a01000 	mov	r1, r0
     cd4:	e3a00010 	mov	r0, #16
     cd8:	ef000000 	svc	0x00000000
     cdc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce0:	e12fff1e 	bx	lr

00000ce4 <close>:
     ce4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce8:	e1a04003 	mov	r4, r3
     cec:	e1a03002 	mov	r3, r2
     cf0:	e1a02001 	mov	r2, r1
     cf4:	e1a01000 	mov	r1, r0
     cf8:	e3a00015 	mov	r0, #21
     cfc:	ef000000 	svc	0x00000000
     d00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d04:	e12fff1e 	bx	lr

00000d08 <kill>:
     d08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d0c:	e1a04003 	mov	r4, r3
     d10:	e1a03002 	mov	r3, r2
     d14:	e1a02001 	mov	r2, r1
     d18:	e1a01000 	mov	r1, r0
     d1c:	e3a00006 	mov	r0, #6
     d20:	ef000000 	svc	0x00000000
     d24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d28:	e12fff1e 	bx	lr

00000d2c <exec>:
     d2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d30:	e1a04003 	mov	r4, r3
     d34:	e1a03002 	mov	r3, r2
     d38:	e1a02001 	mov	r2, r1
     d3c:	e1a01000 	mov	r1, r0
     d40:	e3a00007 	mov	r0, #7
     d44:	ef000000 	svc	0x00000000
     d48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d4c:	e12fff1e 	bx	lr

00000d50 <open>:
     d50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d54:	e1a04003 	mov	r4, r3
     d58:	e1a03002 	mov	r3, r2
     d5c:	e1a02001 	mov	r2, r1
     d60:	e1a01000 	mov	r1, r0
     d64:	e3a0000f 	mov	r0, #15
     d68:	ef000000 	svc	0x00000000
     d6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d70:	e12fff1e 	bx	lr

00000d74 <mknod>:
     d74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d78:	e1a04003 	mov	r4, r3
     d7c:	e1a03002 	mov	r3, r2
     d80:	e1a02001 	mov	r2, r1
     d84:	e1a01000 	mov	r1, r0
     d88:	e3a00011 	mov	r0, #17
     d8c:	ef000000 	svc	0x00000000
     d90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d94:	e12fff1e 	bx	lr

00000d98 <unlink>:
     d98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d9c:	e1a04003 	mov	r4, r3
     da0:	e1a03002 	mov	r3, r2
     da4:	e1a02001 	mov	r2, r1
     da8:	e1a01000 	mov	r1, r0
     dac:	e3a00012 	mov	r0, #18
     db0:	ef000000 	svc	0x00000000
     db4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     db8:	e12fff1e 	bx	lr

00000dbc <fstat>:
     dbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dc0:	e1a04003 	mov	r4, r3
     dc4:	e1a03002 	mov	r3, r2
     dc8:	e1a02001 	mov	r2, r1
     dcc:	e1a01000 	mov	r1, r0
     dd0:	e3a00008 	mov	r0, #8
     dd4:	ef000000 	svc	0x00000000
     dd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ddc:	e12fff1e 	bx	lr

00000de0 <link>:
     de0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     de4:	e1a04003 	mov	r4, r3
     de8:	e1a03002 	mov	r3, r2
     dec:	e1a02001 	mov	r2, r1
     df0:	e1a01000 	mov	r1, r0
     df4:	e3a00013 	mov	r0, #19
     df8:	ef000000 	svc	0x00000000
     dfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e00:	e12fff1e 	bx	lr

00000e04 <mkdir>:
     e04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e08:	e1a04003 	mov	r4, r3
     e0c:	e1a03002 	mov	r3, r2
     e10:	e1a02001 	mov	r2, r1
     e14:	e1a01000 	mov	r1, r0
     e18:	e3a00014 	mov	r0, #20
     e1c:	ef000000 	svc	0x00000000
     e20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e24:	e12fff1e 	bx	lr

00000e28 <chdir>:
     e28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e2c:	e1a04003 	mov	r4, r3
     e30:	e1a03002 	mov	r3, r2
     e34:	e1a02001 	mov	r2, r1
     e38:	e1a01000 	mov	r1, r0
     e3c:	e3a00009 	mov	r0, #9
     e40:	ef000000 	svc	0x00000000
     e44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e48:	e12fff1e 	bx	lr

00000e4c <dup>:
     e4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e50:	e1a04003 	mov	r4, r3
     e54:	e1a03002 	mov	r3, r2
     e58:	e1a02001 	mov	r2, r1
     e5c:	e1a01000 	mov	r1, r0
     e60:	e3a0000a 	mov	r0, #10
     e64:	ef000000 	svc	0x00000000
     e68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e6c:	e12fff1e 	bx	lr

00000e70 <getpid>:
     e70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e74:	e1a04003 	mov	r4, r3
     e78:	e1a03002 	mov	r3, r2
     e7c:	e1a02001 	mov	r2, r1
     e80:	e1a01000 	mov	r1, r0
     e84:	e3a0000b 	mov	r0, #11
     e88:	ef000000 	svc	0x00000000
     e8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e90:	e12fff1e 	bx	lr

00000e94 <sbrk>:
     e94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e98:	e1a04003 	mov	r4, r3
     e9c:	e1a03002 	mov	r3, r2
     ea0:	e1a02001 	mov	r2, r1
     ea4:	e1a01000 	mov	r1, r0
     ea8:	e3a0000c 	mov	r0, #12
     eac:	ef000000 	svc	0x00000000
     eb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eb4:	e12fff1e 	bx	lr

00000eb8 <sleep>:
     eb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ebc:	e1a04003 	mov	r4, r3
     ec0:	e1a03002 	mov	r3, r2
     ec4:	e1a02001 	mov	r2, r1
     ec8:	e1a01000 	mov	r1, r0
     ecc:	e3a0000d 	mov	r0, #13
     ed0:	ef000000 	svc	0x00000000
     ed4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ed8:	e12fff1e 	bx	lr

00000edc <uptime>:
     edc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ee0:	e1a04003 	mov	r4, r3
     ee4:	e1a03002 	mov	r3, r2
     ee8:	e1a02001 	mov	r2, r1
     eec:	e1a01000 	mov	r1, r0
     ef0:	e3a0000e 	mov	r0, #14
     ef4:	ef000000 	svc	0x00000000
     ef8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     efc:	e12fff1e 	bx	lr

00000f00 <getprocs>:
     f00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f04:	e1a04003 	mov	r4, r3
     f08:	e1a03002 	mov	r3, r2
     f0c:	e1a02001 	mov	r2, r1
     f10:	e1a01000 	mov	r1, r0
     f14:	e3a00016 	mov	r0, #22
     f18:	ef000000 	svc	0x00000000
     f1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f20:	e12fff1e 	bx	lr

00000f24 <settickets>:
     f24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f28:	e1a04003 	mov	r4, r3
     f2c:	e1a03002 	mov	r3, r2
     f30:	e1a02001 	mov	r2, r1
     f34:	e1a01000 	mov	r1, r0
     f38:	e3a00017 	mov	r0, #23
     f3c:	ef000000 	svc	0x00000000
     f40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f44:	e12fff1e 	bx	lr

00000f48 <srand>:
     f48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f4c:	e1a04003 	mov	r4, r3
     f50:	e1a03002 	mov	r3, r2
     f54:	e1a02001 	mov	r2, r1
     f58:	e1a01000 	mov	r1, r0
     f5c:	e3a00018 	mov	r0, #24
     f60:	ef000000 	svc	0x00000000
     f64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f68:	e12fff1e 	bx	lr

00000f6c <getpinfo>:
     f6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f70:	e1a04003 	mov	r4, r3
     f74:	e1a03002 	mov	r3, r2
     f78:	e1a02001 	mov	r2, r1
     f7c:	e1a01000 	mov	r1, r0
     f80:	e3a00019 	mov	r0, #25
     f84:	ef000000 	svc	0x00000000
     f88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f8c:	e12fff1e 	bx	lr

00000f90 <dumppagetable>:
     f90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f94:	e1a04003 	mov	r4, r3
     f98:	e1a03002 	mov	r3, r2
     f9c:	e1a02001 	mov	r2, r1
     fa0:	e1a01000 	mov	r1, r0
     fa4:	e3a0001a 	mov	r0, #26
     fa8:	ef000000 	svc	0x00000000
     fac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fb0:	e12fff1e 	bx	lr

00000fb4 <thread_create>:
     fb4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fb8:	e1a04003 	mov	r4, r3
     fbc:	e1a03002 	mov	r3, r2
     fc0:	e1a02001 	mov	r2, r1
     fc4:	e1a01000 	mov	r1, r0
     fc8:	e3a0001b 	mov	r0, #27
     fcc:	ef000000 	svc	0x00000000
     fd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fd4:	e12fff1e 	bx	lr

00000fd8 <thread_exit>:
     fd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fdc:	e1a04003 	mov	r4, r3
     fe0:	e1a03002 	mov	r3, r2
     fe4:	e1a02001 	mov	r2, r1
     fe8:	e1a01000 	mov	r1, r0
     fec:	e3a0001c 	mov	r0, #28
     ff0:	ef000000 	svc	0x00000000
     ff4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ff8:	e12fff1e 	bx	lr

00000ffc <thread_join>:
     ffc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1000:	e1a04003 	mov	r4, r3
    1004:	e1a03002 	mov	r3, r2
    1008:	e1a02001 	mov	r2, r1
    100c:	e1a01000 	mov	r1, r0
    1010:	e3a0001d 	mov	r0, #29
    1014:	ef000000 	svc	0x00000000
    1018:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    101c:	e12fff1e 	bx	lr

00001020 <waitpid>:
    1020:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1024:	e1a04003 	mov	r4, r3
    1028:	e1a03002 	mov	r3, r2
    102c:	e1a02001 	mov	r2, r1
    1030:	e1a01000 	mov	r1, r0
    1034:	e3a0001e 	mov	r0, #30
    1038:	ef000000 	svc	0x00000000
    103c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1040:	e12fff1e 	bx	lr

00001044 <barrier_init>:
    1044:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1048:	e1a04003 	mov	r4, r3
    104c:	e1a03002 	mov	r3, r2
    1050:	e1a02001 	mov	r2, r1
    1054:	e1a01000 	mov	r1, r0
    1058:	e3a0001f 	mov	r0, #31
    105c:	ef000000 	svc	0x00000000
    1060:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1064:	e12fff1e 	bx	lr

00001068 <barrier_check>:
    1068:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    106c:	e1a04003 	mov	r4, r3
    1070:	e1a03002 	mov	r3, r2
    1074:	e1a02001 	mov	r2, r1
    1078:	e1a01000 	mov	r1, r0
    107c:	e3a00020 	mov	r0, #32
    1080:	ef000000 	svc	0x00000000
    1084:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1088:	e12fff1e 	bx	lr

0000108c <sleepChan>:
    108c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1090:	e1a04003 	mov	r4, r3
    1094:	e1a03002 	mov	r3, r2
    1098:	e1a02001 	mov	r2, r1
    109c:	e1a01000 	mov	r1, r0
    10a0:	e3a00024 	mov	r0, #36	@ 0x24
    10a4:	ef000000 	svc	0x00000000
    10a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10ac:	e12fff1e 	bx	lr

000010b0 <getChannel>:
    10b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10b4:	e1a04003 	mov	r4, r3
    10b8:	e1a03002 	mov	r3, r2
    10bc:	e1a02001 	mov	r2, r1
    10c0:	e1a01000 	mov	r1, r0
    10c4:	e3a00025 	mov	r0, #37	@ 0x25
    10c8:	ef000000 	svc	0x00000000
    10cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10d0:	e12fff1e 	bx	lr

000010d4 <sigChan>:
    10d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10d8:	e1a04003 	mov	r4, r3
    10dc:	e1a03002 	mov	r3, r2
    10e0:	e1a02001 	mov	r2, r1
    10e4:	e1a01000 	mov	r1, r0
    10e8:	e3a00026 	mov	r0, #38	@ 0x26
    10ec:	ef000000 	svc	0x00000000
    10f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10f4:	e12fff1e 	bx	lr

000010f8 <sigOneChan>:
    10f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10fc:	e1a04003 	mov	r4, r3
    1100:	e1a03002 	mov	r3, r2
    1104:	e1a02001 	mov	r2, r1
    1108:	e1a01000 	mov	r1, r0
    110c:	e3a00027 	mov	r0, #39	@ 0x27
    1110:	ef000000 	svc	0x00000000
    1114:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1118:	e12fff1e 	bx	lr

0000111c <putc>:
    111c:	e92d4800 	push	{fp, lr}
    1120:	e28db004 	add	fp, sp, #4
    1124:	e24dd008 	sub	sp, sp, #8
    1128:	e50b0008 	str	r0, [fp, #-8]
    112c:	e1a03001 	mov	r3, r1
    1130:	e54b3009 	strb	r3, [fp, #-9]
    1134:	e24b3009 	sub	r3, fp, #9
    1138:	e3a02001 	mov	r2, #1
    113c:	e1a01003 	mov	r1, r3
    1140:	e51b0008 	ldr	r0, [fp, #-8]
    1144:	ebfffedd 	bl	cc0 <write>
    1148:	e1a00000 	nop			@ (mov r0, r0)
    114c:	e24bd004 	sub	sp, fp, #4
    1150:	e8bd8800 	pop	{fp, pc}

00001154 <printint>:
    1154:	e92d4800 	push	{fp, lr}
    1158:	e28db004 	add	fp, sp, #4
    115c:	e24dd030 	sub	sp, sp, #48	@ 0x30
    1160:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    1164:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    1168:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    116c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    1170:	e3a03000 	mov	r3, #0
    1174:	e50b300c 	str	r3, [fp, #-12]
    1178:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    117c:	e3530000 	cmp	r3, #0
    1180:	0a000008 	beq	11a8 <printint+0x54>
    1184:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1188:	e3530000 	cmp	r3, #0
    118c:	aa000005 	bge	11a8 <printint+0x54>
    1190:	e3a03001 	mov	r3, #1
    1194:	e50b300c 	str	r3, [fp, #-12]
    1198:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    119c:	e2633000 	rsb	r3, r3, #0
    11a0:	e50b3010 	str	r3, [fp, #-16]
    11a4:	ea000001 	b	11b0 <printint+0x5c>
    11a8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    11ac:	e50b3010 	str	r3, [fp, #-16]
    11b0:	e3a03000 	mov	r3, #0
    11b4:	e50b3008 	str	r3, [fp, #-8]
    11b8:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    11bc:	e51b3010 	ldr	r3, [fp, #-16]
    11c0:	e1a01002 	mov	r1, r2
    11c4:	e1a00003 	mov	r0, r3
    11c8:	eb0001d5 	bl	1924 <__aeabi_uidivmod>
    11cc:	e1a03001 	mov	r3, r1
    11d0:	e1a01003 	mov	r1, r3
    11d4:	e51b3008 	ldr	r3, [fp, #-8]
    11d8:	e2832001 	add	r2, r3, #1
    11dc:	e50b2008 	str	r2, [fp, #-8]
    11e0:	e59f20a0 	ldr	r2, [pc, #160]	@ 1288 <printint+0x134>
    11e4:	e7d22001 	ldrb	r2, [r2, r1]
    11e8:	e2433004 	sub	r3, r3, #4
    11ec:	e083300b 	add	r3, r3, fp
    11f0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    11f4:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    11f8:	e1a01003 	mov	r1, r3
    11fc:	e51b0010 	ldr	r0, [fp, #-16]
    1200:	eb00018a 	bl	1830 <__udivsi3>
    1204:	e1a03000 	mov	r3, r0
    1208:	e50b3010 	str	r3, [fp, #-16]
    120c:	e51b3010 	ldr	r3, [fp, #-16]
    1210:	e3530000 	cmp	r3, #0
    1214:	1affffe7 	bne	11b8 <printint+0x64>
    1218:	e51b300c 	ldr	r3, [fp, #-12]
    121c:	e3530000 	cmp	r3, #0
    1220:	0a00000e 	beq	1260 <printint+0x10c>
    1224:	e51b3008 	ldr	r3, [fp, #-8]
    1228:	e2832001 	add	r2, r3, #1
    122c:	e50b2008 	str	r2, [fp, #-8]
    1230:	e2433004 	sub	r3, r3, #4
    1234:	e083300b 	add	r3, r3, fp
    1238:	e3a0202d 	mov	r2, #45	@ 0x2d
    123c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1240:	ea000006 	b	1260 <printint+0x10c>
    1244:	e24b2020 	sub	r2, fp, #32
    1248:	e51b3008 	ldr	r3, [fp, #-8]
    124c:	e0823003 	add	r3, r2, r3
    1250:	e5d33000 	ldrb	r3, [r3]
    1254:	e1a01003 	mov	r1, r3
    1258:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    125c:	ebffffae 	bl	111c <putc>
    1260:	e51b3008 	ldr	r3, [fp, #-8]
    1264:	e2433001 	sub	r3, r3, #1
    1268:	e50b3008 	str	r3, [fp, #-8]
    126c:	e51b3008 	ldr	r3, [fp, #-8]
    1270:	e3530000 	cmp	r3, #0
    1274:	aafffff2 	bge	1244 <printint+0xf0>
    1278:	e1a00000 	nop			@ (mov r0, r0)
    127c:	e1a00000 	nop			@ (mov r0, r0)
    1280:	e24bd004 	sub	sp, fp, #4
    1284:	e8bd8800 	pop	{fp, pc}
    1288:	000019a0 	.word	0x000019a0

0000128c <printf>:
    128c:	e92d000e 	push	{r1, r2, r3}
    1290:	e92d4800 	push	{fp, lr}
    1294:	e28db004 	add	fp, sp, #4
    1298:	e24dd024 	sub	sp, sp, #36	@ 0x24
    129c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    12a0:	e3a03000 	mov	r3, #0
    12a4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    12a8:	e28b3008 	add	r3, fp, #8
    12ac:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12b0:	e3a03000 	mov	r3, #0
    12b4:	e50b3010 	str	r3, [fp, #-16]
    12b8:	ea000074 	b	1490 <printf+0x204>
    12bc:	e59b2004 	ldr	r2, [fp, #4]
    12c0:	e51b3010 	ldr	r3, [fp, #-16]
    12c4:	e0823003 	add	r3, r2, r3
    12c8:	e5d33000 	ldrb	r3, [r3]
    12cc:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    12d0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    12d4:	e3530000 	cmp	r3, #0
    12d8:	1a00000b 	bne	130c <printf+0x80>
    12dc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12e0:	e3530025 	cmp	r3, #37	@ 0x25
    12e4:	1a000002 	bne	12f4 <printf+0x68>
    12e8:	e3a03025 	mov	r3, #37	@ 0x25
    12ec:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    12f0:	ea000063 	b	1484 <printf+0x1f8>
    12f4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12f8:	e6ef3073 	uxtb	r3, r3
    12fc:	e1a01003 	mov	r1, r3
    1300:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1304:	ebffff84 	bl	111c <putc>
    1308:	ea00005d 	b	1484 <printf+0x1f8>
    130c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1310:	e3530025 	cmp	r3, #37	@ 0x25
    1314:	1a00005a 	bne	1484 <printf+0x1f8>
    1318:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    131c:	e3530064 	cmp	r3, #100	@ 0x64
    1320:	1a00000a 	bne	1350 <printf+0xc4>
    1324:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1328:	e5933000 	ldr	r3, [r3]
    132c:	e1a01003 	mov	r1, r3
    1330:	e3a03001 	mov	r3, #1
    1334:	e3a0200a 	mov	r2, #10
    1338:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    133c:	ebffff84 	bl	1154 <printint>
    1340:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1344:	e2833004 	add	r3, r3, #4
    1348:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    134c:	ea00004a 	b	147c <printf+0x1f0>
    1350:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1354:	e3530078 	cmp	r3, #120	@ 0x78
    1358:	0a000002 	beq	1368 <printf+0xdc>
    135c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1360:	e3530070 	cmp	r3, #112	@ 0x70
    1364:	1a00000a 	bne	1394 <printf+0x108>
    1368:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    136c:	e5933000 	ldr	r3, [r3]
    1370:	e1a01003 	mov	r1, r3
    1374:	e3a03000 	mov	r3, #0
    1378:	e3a02010 	mov	r2, #16
    137c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1380:	ebffff73 	bl	1154 <printint>
    1384:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1388:	e2833004 	add	r3, r3, #4
    138c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1390:	ea000039 	b	147c <printf+0x1f0>
    1394:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1398:	e3530073 	cmp	r3, #115	@ 0x73
    139c:	1a000018 	bne	1404 <printf+0x178>
    13a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13a4:	e5933000 	ldr	r3, [r3]
    13a8:	e50b300c 	str	r3, [fp, #-12]
    13ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13b0:	e2833004 	add	r3, r3, #4
    13b4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    13b8:	e51b300c 	ldr	r3, [fp, #-12]
    13bc:	e3530000 	cmp	r3, #0
    13c0:	1a00000a 	bne	13f0 <printf+0x164>
    13c4:	e59f30f4 	ldr	r3, [pc, #244]	@ 14c0 <printf+0x234>
    13c8:	e50b300c 	str	r3, [fp, #-12]
    13cc:	ea000007 	b	13f0 <printf+0x164>
    13d0:	e51b300c 	ldr	r3, [fp, #-12]
    13d4:	e5d33000 	ldrb	r3, [r3]
    13d8:	e1a01003 	mov	r1, r3
    13dc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13e0:	ebffff4d 	bl	111c <putc>
    13e4:	e51b300c 	ldr	r3, [fp, #-12]
    13e8:	e2833001 	add	r3, r3, #1
    13ec:	e50b300c 	str	r3, [fp, #-12]
    13f0:	e51b300c 	ldr	r3, [fp, #-12]
    13f4:	e5d33000 	ldrb	r3, [r3]
    13f8:	e3530000 	cmp	r3, #0
    13fc:	1afffff3 	bne	13d0 <printf+0x144>
    1400:	ea00001d 	b	147c <printf+0x1f0>
    1404:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1408:	e3530063 	cmp	r3, #99	@ 0x63
    140c:	1a000009 	bne	1438 <printf+0x1ac>
    1410:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1414:	e5933000 	ldr	r3, [r3]
    1418:	e6ef3073 	uxtb	r3, r3
    141c:	e1a01003 	mov	r1, r3
    1420:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1424:	ebffff3c 	bl	111c <putc>
    1428:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    142c:	e2833004 	add	r3, r3, #4
    1430:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1434:	ea000010 	b	147c <printf+0x1f0>
    1438:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    143c:	e3530025 	cmp	r3, #37	@ 0x25
    1440:	1a000005 	bne	145c <printf+0x1d0>
    1444:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1448:	e6ef3073 	uxtb	r3, r3
    144c:	e1a01003 	mov	r1, r3
    1450:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1454:	ebffff30 	bl	111c <putc>
    1458:	ea000007 	b	147c <printf+0x1f0>
    145c:	e3a01025 	mov	r1, #37	@ 0x25
    1460:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1464:	ebffff2c 	bl	111c <putc>
    1468:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    146c:	e6ef3073 	uxtb	r3, r3
    1470:	e1a01003 	mov	r1, r3
    1474:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1478:	ebffff27 	bl	111c <putc>
    147c:	e3a03000 	mov	r3, #0
    1480:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1484:	e51b3010 	ldr	r3, [fp, #-16]
    1488:	e2833001 	add	r3, r3, #1
    148c:	e50b3010 	str	r3, [fp, #-16]
    1490:	e59b2004 	ldr	r2, [fp, #4]
    1494:	e51b3010 	ldr	r3, [fp, #-16]
    1498:	e0823003 	add	r3, r2, r3
    149c:	e5d33000 	ldrb	r3, [r3]
    14a0:	e3530000 	cmp	r3, #0
    14a4:	1affff84 	bne	12bc <printf+0x30>
    14a8:	e1a00000 	nop			@ (mov r0, r0)
    14ac:	e1a00000 	nop			@ (mov r0, r0)
    14b0:	e24bd004 	sub	sp, fp, #4
    14b4:	e8bd4800 	pop	{fp, lr}
    14b8:	e28dd00c 	add	sp, sp, #12
    14bc:	e12fff1e 	bx	lr
    14c0:	00001998 	.word	0x00001998

000014c4 <free>:
    14c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    14c8:	e28db000 	add	fp, sp, #0
    14cc:	e24dd014 	sub	sp, sp, #20
    14d0:	e50b0010 	str	r0, [fp, #-16]
    14d4:	e51b3010 	ldr	r3, [fp, #-16]
    14d8:	e2433008 	sub	r3, r3, #8
    14dc:	e50b300c 	str	r3, [fp, #-12]
    14e0:	e59f3154 	ldr	r3, [pc, #340]	@ 163c <free+0x178>
    14e4:	e5933000 	ldr	r3, [r3]
    14e8:	e50b3008 	str	r3, [fp, #-8]
    14ec:	ea000010 	b	1534 <free+0x70>
    14f0:	e51b3008 	ldr	r3, [fp, #-8]
    14f4:	e5933000 	ldr	r3, [r3]
    14f8:	e51b2008 	ldr	r2, [fp, #-8]
    14fc:	e1520003 	cmp	r2, r3
    1500:	3a000008 	bcc	1528 <free+0x64>
    1504:	e51b200c 	ldr	r2, [fp, #-12]
    1508:	e51b3008 	ldr	r3, [fp, #-8]
    150c:	e1520003 	cmp	r2, r3
    1510:	8a000010 	bhi	1558 <free+0x94>
    1514:	e51b3008 	ldr	r3, [fp, #-8]
    1518:	e5933000 	ldr	r3, [r3]
    151c:	e51b200c 	ldr	r2, [fp, #-12]
    1520:	e1520003 	cmp	r2, r3
    1524:	3a00000b 	bcc	1558 <free+0x94>
    1528:	e51b3008 	ldr	r3, [fp, #-8]
    152c:	e5933000 	ldr	r3, [r3]
    1530:	e50b3008 	str	r3, [fp, #-8]
    1534:	e51b200c 	ldr	r2, [fp, #-12]
    1538:	e51b3008 	ldr	r3, [fp, #-8]
    153c:	e1520003 	cmp	r2, r3
    1540:	9affffea 	bls	14f0 <free+0x2c>
    1544:	e51b3008 	ldr	r3, [fp, #-8]
    1548:	e5933000 	ldr	r3, [r3]
    154c:	e51b200c 	ldr	r2, [fp, #-12]
    1550:	e1520003 	cmp	r2, r3
    1554:	2affffe5 	bcs	14f0 <free+0x2c>
    1558:	e51b300c 	ldr	r3, [fp, #-12]
    155c:	e5933004 	ldr	r3, [r3, #4]
    1560:	e1a03183 	lsl	r3, r3, #3
    1564:	e51b200c 	ldr	r2, [fp, #-12]
    1568:	e0822003 	add	r2, r2, r3
    156c:	e51b3008 	ldr	r3, [fp, #-8]
    1570:	e5933000 	ldr	r3, [r3]
    1574:	e1520003 	cmp	r2, r3
    1578:	1a00000d 	bne	15b4 <free+0xf0>
    157c:	e51b300c 	ldr	r3, [fp, #-12]
    1580:	e5932004 	ldr	r2, [r3, #4]
    1584:	e51b3008 	ldr	r3, [fp, #-8]
    1588:	e5933000 	ldr	r3, [r3]
    158c:	e5933004 	ldr	r3, [r3, #4]
    1590:	e0822003 	add	r2, r2, r3
    1594:	e51b300c 	ldr	r3, [fp, #-12]
    1598:	e5832004 	str	r2, [r3, #4]
    159c:	e51b3008 	ldr	r3, [fp, #-8]
    15a0:	e5933000 	ldr	r3, [r3]
    15a4:	e5932000 	ldr	r2, [r3]
    15a8:	e51b300c 	ldr	r3, [fp, #-12]
    15ac:	e5832000 	str	r2, [r3]
    15b0:	ea000003 	b	15c4 <free+0x100>
    15b4:	e51b3008 	ldr	r3, [fp, #-8]
    15b8:	e5932000 	ldr	r2, [r3]
    15bc:	e51b300c 	ldr	r3, [fp, #-12]
    15c0:	e5832000 	str	r2, [r3]
    15c4:	e51b3008 	ldr	r3, [fp, #-8]
    15c8:	e5933004 	ldr	r3, [r3, #4]
    15cc:	e1a03183 	lsl	r3, r3, #3
    15d0:	e51b2008 	ldr	r2, [fp, #-8]
    15d4:	e0823003 	add	r3, r2, r3
    15d8:	e51b200c 	ldr	r2, [fp, #-12]
    15dc:	e1520003 	cmp	r2, r3
    15e0:	1a00000b 	bne	1614 <free+0x150>
    15e4:	e51b3008 	ldr	r3, [fp, #-8]
    15e8:	e5932004 	ldr	r2, [r3, #4]
    15ec:	e51b300c 	ldr	r3, [fp, #-12]
    15f0:	e5933004 	ldr	r3, [r3, #4]
    15f4:	e0822003 	add	r2, r2, r3
    15f8:	e51b3008 	ldr	r3, [fp, #-8]
    15fc:	e5832004 	str	r2, [r3, #4]
    1600:	e51b300c 	ldr	r3, [fp, #-12]
    1604:	e5932000 	ldr	r2, [r3]
    1608:	e51b3008 	ldr	r3, [fp, #-8]
    160c:	e5832000 	str	r2, [r3]
    1610:	ea000002 	b	1620 <free+0x15c>
    1614:	e51b3008 	ldr	r3, [fp, #-8]
    1618:	e51b200c 	ldr	r2, [fp, #-12]
    161c:	e5832000 	str	r2, [r3]
    1620:	e59f2014 	ldr	r2, [pc, #20]	@ 163c <free+0x178>
    1624:	e51b3008 	ldr	r3, [fp, #-8]
    1628:	e5823000 	str	r3, [r2]
    162c:	e1a00000 	nop			@ (mov r0, r0)
    1630:	e28bd000 	add	sp, fp, #0
    1634:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1638:	e12fff1e 	bx	lr
    163c:	000019cc 	.word	0x000019cc

00001640 <morecore>:
    1640:	e92d4800 	push	{fp, lr}
    1644:	e28db004 	add	fp, sp, #4
    1648:	e24dd010 	sub	sp, sp, #16
    164c:	e50b0010 	str	r0, [fp, #-16]
    1650:	e51b3010 	ldr	r3, [fp, #-16]
    1654:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1658:	2a000001 	bcs	1664 <morecore+0x24>
    165c:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1660:	e50b3010 	str	r3, [fp, #-16]
    1664:	e51b3010 	ldr	r3, [fp, #-16]
    1668:	e1a03183 	lsl	r3, r3, #3
    166c:	e1a00003 	mov	r0, r3
    1670:	ebfffe07 	bl	e94 <sbrk>
    1674:	e50b0008 	str	r0, [fp, #-8]
    1678:	e51b3008 	ldr	r3, [fp, #-8]
    167c:	e3730001 	cmn	r3, #1
    1680:	1a000001 	bne	168c <morecore+0x4c>
    1684:	e3a03000 	mov	r3, #0
    1688:	ea00000a 	b	16b8 <morecore+0x78>
    168c:	e51b3008 	ldr	r3, [fp, #-8]
    1690:	e50b300c 	str	r3, [fp, #-12]
    1694:	e51b300c 	ldr	r3, [fp, #-12]
    1698:	e51b2010 	ldr	r2, [fp, #-16]
    169c:	e5832004 	str	r2, [r3, #4]
    16a0:	e51b300c 	ldr	r3, [fp, #-12]
    16a4:	e2833008 	add	r3, r3, #8
    16a8:	e1a00003 	mov	r0, r3
    16ac:	ebffff84 	bl	14c4 <free>
    16b0:	e59f300c 	ldr	r3, [pc, #12]	@ 16c4 <morecore+0x84>
    16b4:	e5933000 	ldr	r3, [r3]
    16b8:	e1a00003 	mov	r0, r3
    16bc:	e24bd004 	sub	sp, fp, #4
    16c0:	e8bd8800 	pop	{fp, pc}
    16c4:	000019cc 	.word	0x000019cc

000016c8 <malloc>:
    16c8:	e92d4800 	push	{fp, lr}
    16cc:	e28db004 	add	fp, sp, #4
    16d0:	e24dd018 	sub	sp, sp, #24
    16d4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    16d8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    16dc:	e2833007 	add	r3, r3, #7
    16e0:	e1a031a3 	lsr	r3, r3, #3
    16e4:	e2833001 	add	r3, r3, #1
    16e8:	e50b3010 	str	r3, [fp, #-16]
    16ec:	e59f3134 	ldr	r3, [pc, #308]	@ 1828 <malloc+0x160>
    16f0:	e5933000 	ldr	r3, [r3]
    16f4:	e50b300c 	str	r3, [fp, #-12]
    16f8:	e51b300c 	ldr	r3, [fp, #-12]
    16fc:	e3530000 	cmp	r3, #0
    1700:	1a00000b 	bne	1734 <malloc+0x6c>
    1704:	e59f3120 	ldr	r3, [pc, #288]	@ 182c <malloc+0x164>
    1708:	e50b300c 	str	r3, [fp, #-12]
    170c:	e59f2114 	ldr	r2, [pc, #276]	@ 1828 <malloc+0x160>
    1710:	e51b300c 	ldr	r3, [fp, #-12]
    1714:	e5823000 	str	r3, [r2]
    1718:	e59f3108 	ldr	r3, [pc, #264]	@ 1828 <malloc+0x160>
    171c:	e5933000 	ldr	r3, [r3]
    1720:	e59f2104 	ldr	r2, [pc, #260]	@ 182c <malloc+0x164>
    1724:	e5823000 	str	r3, [r2]
    1728:	e59f30fc 	ldr	r3, [pc, #252]	@ 182c <malloc+0x164>
    172c:	e3a02000 	mov	r2, #0
    1730:	e5832004 	str	r2, [r3, #4]
    1734:	e51b300c 	ldr	r3, [fp, #-12]
    1738:	e5933000 	ldr	r3, [r3]
    173c:	e50b3008 	str	r3, [fp, #-8]
    1740:	e51b3008 	ldr	r3, [fp, #-8]
    1744:	e5933004 	ldr	r3, [r3, #4]
    1748:	e51b2010 	ldr	r2, [fp, #-16]
    174c:	e1520003 	cmp	r2, r3
    1750:	8a00001e 	bhi	17d0 <malloc+0x108>
    1754:	e51b3008 	ldr	r3, [fp, #-8]
    1758:	e5933004 	ldr	r3, [r3, #4]
    175c:	e51b2010 	ldr	r2, [fp, #-16]
    1760:	e1520003 	cmp	r2, r3
    1764:	1a000004 	bne	177c <malloc+0xb4>
    1768:	e51b3008 	ldr	r3, [fp, #-8]
    176c:	e5932000 	ldr	r2, [r3]
    1770:	e51b300c 	ldr	r3, [fp, #-12]
    1774:	e5832000 	str	r2, [r3]
    1778:	ea00000e 	b	17b8 <malloc+0xf0>
    177c:	e51b3008 	ldr	r3, [fp, #-8]
    1780:	e5932004 	ldr	r2, [r3, #4]
    1784:	e51b3010 	ldr	r3, [fp, #-16]
    1788:	e0422003 	sub	r2, r2, r3
    178c:	e51b3008 	ldr	r3, [fp, #-8]
    1790:	e5832004 	str	r2, [r3, #4]
    1794:	e51b3008 	ldr	r3, [fp, #-8]
    1798:	e5933004 	ldr	r3, [r3, #4]
    179c:	e1a03183 	lsl	r3, r3, #3
    17a0:	e51b2008 	ldr	r2, [fp, #-8]
    17a4:	e0823003 	add	r3, r2, r3
    17a8:	e50b3008 	str	r3, [fp, #-8]
    17ac:	e51b3008 	ldr	r3, [fp, #-8]
    17b0:	e51b2010 	ldr	r2, [fp, #-16]
    17b4:	e5832004 	str	r2, [r3, #4]
    17b8:	e59f2068 	ldr	r2, [pc, #104]	@ 1828 <malloc+0x160>
    17bc:	e51b300c 	ldr	r3, [fp, #-12]
    17c0:	e5823000 	str	r3, [r2]
    17c4:	e51b3008 	ldr	r3, [fp, #-8]
    17c8:	e2833008 	add	r3, r3, #8
    17cc:	ea000012 	b	181c <malloc+0x154>
    17d0:	e59f3050 	ldr	r3, [pc, #80]	@ 1828 <malloc+0x160>
    17d4:	e5933000 	ldr	r3, [r3]
    17d8:	e51b2008 	ldr	r2, [fp, #-8]
    17dc:	e1520003 	cmp	r2, r3
    17e0:	1a000007 	bne	1804 <malloc+0x13c>
    17e4:	e51b0010 	ldr	r0, [fp, #-16]
    17e8:	ebffff94 	bl	1640 <morecore>
    17ec:	e50b0008 	str	r0, [fp, #-8]
    17f0:	e51b3008 	ldr	r3, [fp, #-8]
    17f4:	e3530000 	cmp	r3, #0
    17f8:	1a000001 	bne	1804 <malloc+0x13c>
    17fc:	e3a03000 	mov	r3, #0
    1800:	ea000005 	b	181c <malloc+0x154>
    1804:	e51b3008 	ldr	r3, [fp, #-8]
    1808:	e50b300c 	str	r3, [fp, #-12]
    180c:	e51b3008 	ldr	r3, [fp, #-8]
    1810:	e5933000 	ldr	r3, [r3]
    1814:	e50b3008 	str	r3, [fp, #-8]
    1818:	eaffffc8 	b	1740 <malloc+0x78>
    181c:	e1a00003 	mov	r0, r3
    1820:	e24bd004 	sub	sp, fp, #4
    1824:	e8bd8800 	pop	{fp, pc}
    1828:	000019cc 	.word	0x000019cc
    182c:	000019c4 	.word	0x000019c4

00001830 <__udivsi3>:
    1830:	e2512001 	subs	r2, r1, #1
    1834:	012fff1e 	bxeq	lr
    1838:	3a000036 	bcc	1918 <__udivsi3+0xe8>
    183c:	e1500001 	cmp	r0, r1
    1840:	9a000022 	bls	18d0 <__udivsi3+0xa0>
    1844:	e1110002 	tst	r1, r2
    1848:	0a000023 	beq	18dc <__udivsi3+0xac>
    184c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1850:	01a01181 	lsleq	r1, r1, #3
    1854:	03a03008 	moveq	r3, #8
    1858:	13a03001 	movne	r3, #1
    185c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1860:	31510000 	cmpcc	r1, r0
    1864:	31a01201 	lslcc	r1, r1, #4
    1868:	31a03203 	lslcc	r3, r3, #4
    186c:	3afffffa 	bcc	185c <__udivsi3+0x2c>
    1870:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1874:	31510000 	cmpcc	r1, r0
    1878:	31a01081 	lslcc	r1, r1, #1
    187c:	31a03083 	lslcc	r3, r3, #1
    1880:	3afffffa 	bcc	1870 <__udivsi3+0x40>
    1884:	e3a02000 	mov	r2, #0
    1888:	e1500001 	cmp	r0, r1
    188c:	20400001 	subcs	r0, r0, r1
    1890:	21822003 	orrcs	r2, r2, r3
    1894:	e15000a1 	cmp	r0, r1, lsr #1
    1898:	204000a1 	subcs	r0, r0, r1, lsr #1
    189c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    18a0:	e1500121 	cmp	r0, r1, lsr #2
    18a4:	20400121 	subcs	r0, r0, r1, lsr #2
    18a8:	21822123 	orrcs	r2, r2, r3, lsr #2
    18ac:	e15001a1 	cmp	r0, r1, lsr #3
    18b0:	204001a1 	subcs	r0, r0, r1, lsr #3
    18b4:	218221a3 	orrcs	r2, r2, r3, lsr #3
    18b8:	e3500000 	cmp	r0, #0
    18bc:	11b03223 	lsrsne	r3, r3, #4
    18c0:	11a01221 	lsrne	r1, r1, #4
    18c4:	1affffef 	bne	1888 <__udivsi3+0x58>
    18c8:	e1a00002 	mov	r0, r2
    18cc:	e12fff1e 	bx	lr
    18d0:	03a00001 	moveq	r0, #1
    18d4:	13a00000 	movne	r0, #0
    18d8:	e12fff1e 	bx	lr
    18dc:	e3510801 	cmp	r1, #65536	@ 0x10000
    18e0:	21a01821 	lsrcs	r1, r1, #16
    18e4:	23a02010 	movcs	r2, #16
    18e8:	33a02000 	movcc	r2, #0
    18ec:	e3510c01 	cmp	r1, #256	@ 0x100
    18f0:	21a01421 	lsrcs	r1, r1, #8
    18f4:	22822008 	addcs	r2, r2, #8
    18f8:	e3510010 	cmp	r1, #16
    18fc:	21a01221 	lsrcs	r1, r1, #4
    1900:	22822004 	addcs	r2, r2, #4
    1904:	e3510004 	cmp	r1, #4
    1908:	82822003 	addhi	r2, r2, #3
    190c:	908220a1 	addls	r2, r2, r1, lsr #1
    1910:	e1a00230 	lsr	r0, r0, r2
    1914:	e12fff1e 	bx	lr
    1918:	e3500000 	cmp	r0, #0
    191c:	13e00000 	mvnne	r0, #0
    1920:	ea000007 	b	1944 <__aeabi_idiv0>

00001924 <__aeabi_uidivmod>:
    1924:	e3510000 	cmp	r1, #0
    1928:	0afffffa 	beq	1918 <__udivsi3+0xe8>
    192c:	e92d4003 	push	{r0, r1, lr}
    1930:	ebffffbe 	bl	1830 <__udivsi3>
    1934:	e8bd4006 	pop	{r1, r2, lr}
    1938:	e0030092 	mul	r3, r2, r0
    193c:	e0411003 	sub	r1, r1, r3
    1940:	e12fff1e 	bx	lr

00001944 <__aeabi_idiv0>:
    1944:	e12fff1e 	bx	lr
