
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
      98:	eb0001e4 	bl	830 <memmove>
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
      e0:	00001454 	.word	0x00001454

000000e4 <ls>:
      e4:	e92d4800 	push	{fp, lr}
      e8:	e28db004 	add	fp, sp, #4
      ec:	e24ddd09 	sub	sp, sp, #576	@ 0x240
      f0:	e50b0238 	str	r0, [fp, #-568]	@ 0xfffffdc8
      f4:	e3a01000 	mov	r1, #0
      f8:	e51b0238 	ldr	r0, [fp, #-568]	@ 0xfffffdc8
      fc:	eb000239 	bl	9e8 <open>
     100:	e50b0008 	str	r0, [fp, #-8]
     104:	e51b3008 	ldr	r3, [fp, #-8]
     108:	e3530000 	cmp	r3, #0
     10c:	aa000004 	bge	124 <ls+0x40>
     110:	e51b2238 	ldr	r2, [fp, #-568]	@ 0xfffffdc8
     114:	e59f1200 	ldr	r1, [pc, #512]	@ 31c <ls+0x238>
     118:	e3a00002 	mov	r0, #2
     11c:	eb000302 	bl	d2c <printf>
     120:	ea00007b 	b	314 <ls+0x230>
     124:	e24b3e23 	sub	r3, fp, #560	@ 0x230
     128:	e1a01003 	mov	r1, r3
     12c:	e51b0008 	ldr	r0, [fp, #-8]
     130:	eb000247 	bl	a54 <fstat>
     134:	e1a03000 	mov	r3, r0
     138:	e3530000 	cmp	r3, #0
     13c:	aa000006 	bge	15c <ls+0x78>
     140:	e51b2238 	ldr	r2, [fp, #-568]	@ 0xfffffdc8
     144:	e59f11d4 	ldr	r1, [pc, #468]	@ 320 <ls+0x23c>
     148:	e3a00002 	mov	r0, #2
     14c:	eb0002f6 	bl	d2c <printf>
     150:	e51b0008 	ldr	r0, [fp, #-8]
     154:	eb000208 	bl	97c <close>
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
     1b4:	eb0002dc 	bl	d2c <printf>
     1b8:	ea000053 	b	30c <ls+0x228>
     1bc:	e51b0238 	ldr	r0, [fp, #-568]	@ 0xfffffdc8
     1c0:	eb0000af 	bl	484 <strlen>
     1c4:	e1a03000 	mov	r3, r0
     1c8:	e2833010 	add	r3, r3, #16
     1cc:	e3530c02 	cmp	r3, #512	@ 0x200
     1d0:	9a000003 	bls	1e4 <ls+0x100>
     1d4:	e59f114c 	ldr	r1, [pc, #332]	@ 328 <ls+0x244>
     1d8:	e3a00001 	mov	r0, #1
     1dc:	eb0002d2 	bl	d2c <printf>
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
     250:	eb000176 	bl	830 <memmove>
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
     294:	eb0002a4 	bl	d2c <printf>
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
     2dc:	eb000292 	bl	d2c <printf>
     2e0:	ea000000 	b	2e8 <ls+0x204>
     2e4:	e1a00000 	nop			@ (mov r0, r0)
     2e8:	e24b3f87 	sub	r3, fp, #540	@ 0x21c
     2ec:	e3a02010 	mov	r2, #16
     2f0:	e1a01003 	mov	r1, r3
     2f4:	e51b0008 	ldr	r0, [fp, #-8]
     2f8:	eb00018d 	bl	934 <read>
     2fc:	e1a03000 	mov	r3, r0
     300:	e3530010 	cmp	r3, #16
     304:	0affffc7 	beq	228 <ls+0x144>
     308:	e1a00000 	nop			@ (mov r0, r0)
     30c:	e51b0008 	ldr	r0, [fp, #-8]
     310:	eb000199 	bl	97c <close>
     314:	e24bd004 	sub	sp, fp, #4
     318:	e8bd8800 	pop	{fp, pc}
     31c:	000013e8 	.word	0x000013e8
     320:	000013fc 	.word	0x000013fc
     324:	00001410 	.word	0x00001410
     328:	00001420 	.word	0x00001420

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
     354:	eb00015b 	bl	8c8 <exit>
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
     39c:	eb000149 	bl	8c8 <exit>
     3a0:	00001434 	.word	0x00001434

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
     698:	eb0000a5 	bl	934 <read>
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
     740:	eb0000a8 	bl	9e8 <open>
     744:	e50b0008 	str	r0, [fp, #-8]
     748:	e51b3008 	ldr	r3, [fp, #-8]
     74c:	e3530000 	cmp	r3, #0
     750:	aa000001 	bge	75c <stat+0x38>
     754:	e3e03000 	mvn	r3, #0
     758:	ea000006 	b	778 <stat+0x54>
     75c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     760:	e51b0008 	ldr	r0, [fp, #-8]
     764:	eb0000ba 	bl	a54 <fstat>
     768:	e50b000c 	str	r0, [fp, #-12]
     76c:	e51b0008 	ldr	r0, [fp, #-8]
     770:	eb000081 	bl	97c <close>
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
     7fc:	e353002f 	cmp	r3, #47	@ 0x2f
     800:	9a000003 	bls	814 <atoi+0x90>
     804:	e51b3010 	ldr	r3, [fp, #-16]
     808:	e5d33000 	ldrb	r3, [r3]
     80c:	e3530039 	cmp	r3, #57	@ 0x39
     810:	9a000001 	bls	81c <atoi+0x98>
     814:	e3e03000 	mvn	r3, #0
     818:	ea000000 	b	820 <atoi+0x9c>
     81c:	e51b3008 	ldr	r3, [fp, #-8]
     820:	e1a00003 	mov	r0, r3
     824:	e28bd000 	add	sp, fp, #0
     828:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     82c:	e12fff1e 	bx	lr

00000830 <memmove>:
     830:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     834:	e28db000 	add	fp, sp, #0
     838:	e24dd01c 	sub	sp, sp, #28
     83c:	e50b0010 	str	r0, [fp, #-16]
     840:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     844:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     848:	e51b3010 	ldr	r3, [fp, #-16]
     84c:	e50b3008 	str	r3, [fp, #-8]
     850:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     854:	e50b300c 	str	r3, [fp, #-12]
     858:	ea000007 	b	87c <memmove+0x4c>
     85c:	e51b200c 	ldr	r2, [fp, #-12]
     860:	e2823001 	add	r3, r2, #1
     864:	e50b300c 	str	r3, [fp, #-12]
     868:	e51b3008 	ldr	r3, [fp, #-8]
     86c:	e2831001 	add	r1, r3, #1
     870:	e50b1008 	str	r1, [fp, #-8]
     874:	e5d22000 	ldrb	r2, [r2]
     878:	e5c32000 	strb	r2, [r3]
     87c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     880:	e2432001 	sub	r2, r3, #1
     884:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     888:	e3530000 	cmp	r3, #0
     88c:	cafffff2 	bgt	85c <memmove+0x2c>
     890:	e51b3010 	ldr	r3, [fp, #-16]
     894:	e1a00003 	mov	r0, r3
     898:	e28bd000 	add	sp, fp, #0
     89c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8a0:	e12fff1e 	bx	lr

000008a4 <fork>:
     8a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a8:	e1a04003 	mov	r4, r3
     8ac:	e1a03002 	mov	r3, r2
     8b0:	e1a02001 	mov	r2, r1
     8b4:	e1a01000 	mov	r1, r0
     8b8:	e3a00001 	mov	r0, #1
     8bc:	ef000000 	svc	0x00000000
     8c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c4:	e12fff1e 	bx	lr

000008c8 <exit>:
     8c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8cc:	e1a04003 	mov	r4, r3
     8d0:	e1a03002 	mov	r3, r2
     8d4:	e1a02001 	mov	r2, r1
     8d8:	e1a01000 	mov	r1, r0
     8dc:	e3a00002 	mov	r0, #2
     8e0:	ef000000 	svc	0x00000000
     8e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e8:	e12fff1e 	bx	lr

000008ec <wait>:
     8ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8f0:	e1a04003 	mov	r4, r3
     8f4:	e1a03002 	mov	r3, r2
     8f8:	e1a02001 	mov	r2, r1
     8fc:	e1a01000 	mov	r1, r0
     900:	e3a00003 	mov	r0, #3
     904:	ef000000 	svc	0x00000000
     908:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     90c:	e12fff1e 	bx	lr

00000910 <pipe>:
     910:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     914:	e1a04003 	mov	r4, r3
     918:	e1a03002 	mov	r3, r2
     91c:	e1a02001 	mov	r2, r1
     920:	e1a01000 	mov	r1, r0
     924:	e3a00004 	mov	r0, #4
     928:	ef000000 	svc	0x00000000
     92c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     930:	e12fff1e 	bx	lr

00000934 <read>:
     934:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     938:	e1a04003 	mov	r4, r3
     93c:	e1a03002 	mov	r3, r2
     940:	e1a02001 	mov	r2, r1
     944:	e1a01000 	mov	r1, r0
     948:	e3a00005 	mov	r0, #5
     94c:	ef000000 	svc	0x00000000
     950:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     954:	e12fff1e 	bx	lr

00000958 <write>:
     958:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     95c:	e1a04003 	mov	r4, r3
     960:	e1a03002 	mov	r3, r2
     964:	e1a02001 	mov	r2, r1
     968:	e1a01000 	mov	r1, r0
     96c:	e3a00010 	mov	r0, #16
     970:	ef000000 	svc	0x00000000
     974:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     978:	e12fff1e 	bx	lr

0000097c <close>:
     97c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     980:	e1a04003 	mov	r4, r3
     984:	e1a03002 	mov	r3, r2
     988:	e1a02001 	mov	r2, r1
     98c:	e1a01000 	mov	r1, r0
     990:	e3a00015 	mov	r0, #21
     994:	ef000000 	svc	0x00000000
     998:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     99c:	e12fff1e 	bx	lr

000009a0 <kill>:
     9a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a4:	e1a04003 	mov	r4, r3
     9a8:	e1a03002 	mov	r3, r2
     9ac:	e1a02001 	mov	r2, r1
     9b0:	e1a01000 	mov	r1, r0
     9b4:	e3a00006 	mov	r0, #6
     9b8:	ef000000 	svc	0x00000000
     9bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c0:	e12fff1e 	bx	lr

000009c4 <exec>:
     9c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c8:	e1a04003 	mov	r4, r3
     9cc:	e1a03002 	mov	r3, r2
     9d0:	e1a02001 	mov	r2, r1
     9d4:	e1a01000 	mov	r1, r0
     9d8:	e3a00007 	mov	r0, #7
     9dc:	ef000000 	svc	0x00000000
     9e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e4:	e12fff1e 	bx	lr

000009e8 <open>:
     9e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9ec:	e1a04003 	mov	r4, r3
     9f0:	e1a03002 	mov	r3, r2
     9f4:	e1a02001 	mov	r2, r1
     9f8:	e1a01000 	mov	r1, r0
     9fc:	e3a0000f 	mov	r0, #15
     a00:	ef000000 	svc	0x00000000
     a04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a08:	e12fff1e 	bx	lr

00000a0c <mknod>:
     a0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a10:	e1a04003 	mov	r4, r3
     a14:	e1a03002 	mov	r3, r2
     a18:	e1a02001 	mov	r2, r1
     a1c:	e1a01000 	mov	r1, r0
     a20:	e3a00011 	mov	r0, #17
     a24:	ef000000 	svc	0x00000000
     a28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a2c:	e12fff1e 	bx	lr

00000a30 <unlink>:
     a30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a34:	e1a04003 	mov	r4, r3
     a38:	e1a03002 	mov	r3, r2
     a3c:	e1a02001 	mov	r2, r1
     a40:	e1a01000 	mov	r1, r0
     a44:	e3a00012 	mov	r0, #18
     a48:	ef000000 	svc	0x00000000
     a4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a50:	e12fff1e 	bx	lr

00000a54 <fstat>:
     a54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a58:	e1a04003 	mov	r4, r3
     a5c:	e1a03002 	mov	r3, r2
     a60:	e1a02001 	mov	r2, r1
     a64:	e1a01000 	mov	r1, r0
     a68:	e3a00008 	mov	r0, #8
     a6c:	ef000000 	svc	0x00000000
     a70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a74:	e12fff1e 	bx	lr

00000a78 <link>:
     a78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a7c:	e1a04003 	mov	r4, r3
     a80:	e1a03002 	mov	r3, r2
     a84:	e1a02001 	mov	r2, r1
     a88:	e1a01000 	mov	r1, r0
     a8c:	e3a00013 	mov	r0, #19
     a90:	ef000000 	svc	0x00000000
     a94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a98:	e12fff1e 	bx	lr

00000a9c <mkdir>:
     a9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa0:	e1a04003 	mov	r4, r3
     aa4:	e1a03002 	mov	r3, r2
     aa8:	e1a02001 	mov	r2, r1
     aac:	e1a01000 	mov	r1, r0
     ab0:	e3a00014 	mov	r0, #20
     ab4:	ef000000 	svc	0x00000000
     ab8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     abc:	e12fff1e 	bx	lr

00000ac0 <chdir>:
     ac0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac4:	e1a04003 	mov	r4, r3
     ac8:	e1a03002 	mov	r3, r2
     acc:	e1a02001 	mov	r2, r1
     ad0:	e1a01000 	mov	r1, r0
     ad4:	e3a00009 	mov	r0, #9
     ad8:	ef000000 	svc	0x00000000
     adc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae0:	e12fff1e 	bx	lr

00000ae4 <dup>:
     ae4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae8:	e1a04003 	mov	r4, r3
     aec:	e1a03002 	mov	r3, r2
     af0:	e1a02001 	mov	r2, r1
     af4:	e1a01000 	mov	r1, r0
     af8:	e3a0000a 	mov	r0, #10
     afc:	ef000000 	svc	0x00000000
     b00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b04:	e12fff1e 	bx	lr

00000b08 <getpid>:
     b08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b0c:	e1a04003 	mov	r4, r3
     b10:	e1a03002 	mov	r3, r2
     b14:	e1a02001 	mov	r2, r1
     b18:	e1a01000 	mov	r1, r0
     b1c:	e3a0000b 	mov	r0, #11
     b20:	ef000000 	svc	0x00000000
     b24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b28:	e12fff1e 	bx	lr

00000b2c <sbrk>:
     b2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b30:	e1a04003 	mov	r4, r3
     b34:	e1a03002 	mov	r3, r2
     b38:	e1a02001 	mov	r2, r1
     b3c:	e1a01000 	mov	r1, r0
     b40:	e3a0000c 	mov	r0, #12
     b44:	ef000000 	svc	0x00000000
     b48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b4c:	e12fff1e 	bx	lr

00000b50 <sleep>:
     b50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b54:	e1a04003 	mov	r4, r3
     b58:	e1a03002 	mov	r3, r2
     b5c:	e1a02001 	mov	r2, r1
     b60:	e1a01000 	mov	r1, r0
     b64:	e3a0000d 	mov	r0, #13
     b68:	ef000000 	svc	0x00000000
     b6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b70:	e12fff1e 	bx	lr

00000b74 <uptime>:
     b74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b78:	e1a04003 	mov	r4, r3
     b7c:	e1a03002 	mov	r3, r2
     b80:	e1a02001 	mov	r2, r1
     b84:	e1a01000 	mov	r1, r0
     b88:	e3a0000e 	mov	r0, #14
     b8c:	ef000000 	svc	0x00000000
     b90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b94:	e12fff1e 	bx	lr

00000b98 <getprocs>:
     b98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b9c:	e1a04003 	mov	r4, r3
     ba0:	e1a03002 	mov	r3, r2
     ba4:	e1a02001 	mov	r2, r1
     ba8:	e1a01000 	mov	r1, r0
     bac:	e3a00016 	mov	r0, #22
     bb0:	ef000000 	svc	0x00000000
     bb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb8:	e12fff1e 	bx	lr

00000bbc <putc>:
     bbc:	e92d4800 	push	{fp, lr}
     bc0:	e28db004 	add	fp, sp, #4
     bc4:	e24dd008 	sub	sp, sp, #8
     bc8:	e50b0008 	str	r0, [fp, #-8]
     bcc:	e1a03001 	mov	r3, r1
     bd0:	e54b3009 	strb	r3, [fp, #-9]
     bd4:	e24b3009 	sub	r3, fp, #9
     bd8:	e3a02001 	mov	r2, #1
     bdc:	e1a01003 	mov	r1, r3
     be0:	e51b0008 	ldr	r0, [fp, #-8]
     be4:	ebffff5b 	bl	958 <write>
     be8:	e1a00000 	nop			@ (mov r0, r0)
     bec:	e24bd004 	sub	sp, fp, #4
     bf0:	e8bd8800 	pop	{fp, pc}

00000bf4 <printint>:
     bf4:	e92d4800 	push	{fp, lr}
     bf8:	e28db004 	add	fp, sp, #4
     bfc:	e24dd030 	sub	sp, sp, #48	@ 0x30
     c00:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     c04:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     c08:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     c0c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     c10:	e3a03000 	mov	r3, #0
     c14:	e50b300c 	str	r3, [fp, #-12]
     c18:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     c1c:	e3530000 	cmp	r3, #0
     c20:	0a000008 	beq	c48 <printint+0x54>
     c24:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c28:	e3530000 	cmp	r3, #0
     c2c:	aa000005 	bge	c48 <printint+0x54>
     c30:	e3a03001 	mov	r3, #1
     c34:	e50b300c 	str	r3, [fp, #-12]
     c38:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c3c:	e2633000 	rsb	r3, r3, #0
     c40:	e50b3010 	str	r3, [fp, #-16]
     c44:	ea000001 	b	c50 <printint+0x5c>
     c48:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c4c:	e50b3010 	str	r3, [fp, #-16]
     c50:	e3a03000 	mov	r3, #0
     c54:	e50b3008 	str	r3, [fp, #-8]
     c58:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     c5c:	e51b3010 	ldr	r3, [fp, #-16]
     c60:	e1a01002 	mov	r1, r2
     c64:	e1a00003 	mov	r0, r3
     c68:	eb0001d5 	bl	13c4 <__aeabi_uidivmod>
     c6c:	e1a03001 	mov	r3, r1
     c70:	e1a01003 	mov	r1, r3
     c74:	e51b3008 	ldr	r3, [fp, #-8]
     c78:	e2832001 	add	r2, r3, #1
     c7c:	e50b2008 	str	r2, [fp, #-8]
     c80:	e59f20a0 	ldr	r2, [pc, #160]	@ d28 <printint+0x134>
     c84:	e7d22001 	ldrb	r2, [r2, r1]
     c88:	e2433004 	sub	r3, r3, #4
     c8c:	e083300b 	add	r3, r3, fp
     c90:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     c94:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     c98:	e1a01003 	mov	r1, r3
     c9c:	e51b0010 	ldr	r0, [fp, #-16]
     ca0:	eb00018a 	bl	12d0 <__udivsi3>
     ca4:	e1a03000 	mov	r3, r0
     ca8:	e50b3010 	str	r3, [fp, #-16]
     cac:	e51b3010 	ldr	r3, [fp, #-16]
     cb0:	e3530000 	cmp	r3, #0
     cb4:	1affffe7 	bne	c58 <printint+0x64>
     cb8:	e51b300c 	ldr	r3, [fp, #-12]
     cbc:	e3530000 	cmp	r3, #0
     cc0:	0a00000e 	beq	d00 <printint+0x10c>
     cc4:	e51b3008 	ldr	r3, [fp, #-8]
     cc8:	e2832001 	add	r2, r3, #1
     ccc:	e50b2008 	str	r2, [fp, #-8]
     cd0:	e2433004 	sub	r3, r3, #4
     cd4:	e083300b 	add	r3, r3, fp
     cd8:	e3a0202d 	mov	r2, #45	@ 0x2d
     cdc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ce0:	ea000006 	b	d00 <printint+0x10c>
     ce4:	e24b2020 	sub	r2, fp, #32
     ce8:	e51b3008 	ldr	r3, [fp, #-8]
     cec:	e0823003 	add	r3, r2, r3
     cf0:	e5d33000 	ldrb	r3, [r3]
     cf4:	e1a01003 	mov	r1, r3
     cf8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     cfc:	ebffffae 	bl	bbc <putc>
     d00:	e51b3008 	ldr	r3, [fp, #-8]
     d04:	e2433001 	sub	r3, r3, #1
     d08:	e50b3008 	str	r3, [fp, #-8]
     d0c:	e51b3008 	ldr	r3, [fp, #-8]
     d10:	e3530000 	cmp	r3, #0
     d14:	aafffff2 	bge	ce4 <printint+0xf0>
     d18:	e1a00000 	nop			@ (mov r0, r0)
     d1c:	e1a00000 	nop			@ (mov r0, r0)
     d20:	e24bd004 	sub	sp, fp, #4
     d24:	e8bd8800 	pop	{fp, pc}
     d28:	00001440 	.word	0x00001440

00000d2c <printf>:
     d2c:	e92d000e 	push	{r1, r2, r3}
     d30:	e92d4800 	push	{fp, lr}
     d34:	e28db004 	add	fp, sp, #4
     d38:	e24dd024 	sub	sp, sp, #36	@ 0x24
     d3c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     d40:	e3a03000 	mov	r3, #0
     d44:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d48:	e28b3008 	add	r3, fp, #8
     d4c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d50:	e3a03000 	mov	r3, #0
     d54:	e50b3010 	str	r3, [fp, #-16]
     d58:	ea000074 	b	f30 <printf+0x204>
     d5c:	e59b2004 	ldr	r2, [fp, #4]
     d60:	e51b3010 	ldr	r3, [fp, #-16]
     d64:	e0823003 	add	r3, r2, r3
     d68:	e5d33000 	ldrb	r3, [r3]
     d6c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     d70:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     d74:	e3530000 	cmp	r3, #0
     d78:	1a00000b 	bne	dac <printf+0x80>
     d7c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d80:	e3530025 	cmp	r3, #37	@ 0x25
     d84:	1a000002 	bne	d94 <printf+0x68>
     d88:	e3a03025 	mov	r3, #37	@ 0x25
     d8c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d90:	ea000063 	b	f24 <printf+0x1f8>
     d94:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d98:	e6ef3073 	uxtb	r3, r3
     d9c:	e1a01003 	mov	r1, r3
     da0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     da4:	ebffff84 	bl	bbc <putc>
     da8:	ea00005d 	b	f24 <printf+0x1f8>
     dac:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     db0:	e3530025 	cmp	r3, #37	@ 0x25
     db4:	1a00005a 	bne	f24 <printf+0x1f8>
     db8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dbc:	e3530064 	cmp	r3, #100	@ 0x64
     dc0:	1a00000a 	bne	df0 <printf+0xc4>
     dc4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dc8:	e5933000 	ldr	r3, [r3]
     dcc:	e1a01003 	mov	r1, r3
     dd0:	e3a03001 	mov	r3, #1
     dd4:	e3a0200a 	mov	r2, #10
     dd8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ddc:	ebffff84 	bl	bf4 <printint>
     de0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     de4:	e2833004 	add	r3, r3, #4
     de8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     dec:	ea00004a 	b	f1c <printf+0x1f0>
     df0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     df4:	e3530078 	cmp	r3, #120	@ 0x78
     df8:	0a000002 	beq	e08 <printf+0xdc>
     dfc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e00:	e3530070 	cmp	r3, #112	@ 0x70
     e04:	1a00000a 	bne	e34 <printf+0x108>
     e08:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e0c:	e5933000 	ldr	r3, [r3]
     e10:	e1a01003 	mov	r1, r3
     e14:	e3a03000 	mov	r3, #0
     e18:	e3a02010 	mov	r2, #16
     e1c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e20:	ebffff73 	bl	bf4 <printint>
     e24:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e28:	e2833004 	add	r3, r3, #4
     e2c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e30:	ea000039 	b	f1c <printf+0x1f0>
     e34:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e38:	e3530073 	cmp	r3, #115	@ 0x73
     e3c:	1a000018 	bne	ea4 <printf+0x178>
     e40:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e44:	e5933000 	ldr	r3, [r3]
     e48:	e50b300c 	str	r3, [fp, #-12]
     e4c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e50:	e2833004 	add	r3, r3, #4
     e54:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e58:	e51b300c 	ldr	r3, [fp, #-12]
     e5c:	e3530000 	cmp	r3, #0
     e60:	1a00000a 	bne	e90 <printf+0x164>
     e64:	e59f30f4 	ldr	r3, [pc, #244]	@ f60 <printf+0x234>
     e68:	e50b300c 	str	r3, [fp, #-12]
     e6c:	ea000007 	b	e90 <printf+0x164>
     e70:	e51b300c 	ldr	r3, [fp, #-12]
     e74:	e5d33000 	ldrb	r3, [r3]
     e78:	e1a01003 	mov	r1, r3
     e7c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e80:	ebffff4d 	bl	bbc <putc>
     e84:	e51b300c 	ldr	r3, [fp, #-12]
     e88:	e2833001 	add	r3, r3, #1
     e8c:	e50b300c 	str	r3, [fp, #-12]
     e90:	e51b300c 	ldr	r3, [fp, #-12]
     e94:	e5d33000 	ldrb	r3, [r3]
     e98:	e3530000 	cmp	r3, #0
     e9c:	1afffff3 	bne	e70 <printf+0x144>
     ea0:	ea00001d 	b	f1c <printf+0x1f0>
     ea4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ea8:	e3530063 	cmp	r3, #99	@ 0x63
     eac:	1a000009 	bne	ed8 <printf+0x1ac>
     eb0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     eb4:	e5933000 	ldr	r3, [r3]
     eb8:	e6ef3073 	uxtb	r3, r3
     ebc:	e1a01003 	mov	r1, r3
     ec0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ec4:	ebffff3c 	bl	bbc <putc>
     ec8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ecc:	e2833004 	add	r3, r3, #4
     ed0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ed4:	ea000010 	b	f1c <printf+0x1f0>
     ed8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     edc:	e3530025 	cmp	r3, #37	@ 0x25
     ee0:	1a000005 	bne	efc <printf+0x1d0>
     ee4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ee8:	e6ef3073 	uxtb	r3, r3
     eec:	e1a01003 	mov	r1, r3
     ef0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ef4:	ebffff30 	bl	bbc <putc>
     ef8:	ea000007 	b	f1c <printf+0x1f0>
     efc:	e3a01025 	mov	r1, #37	@ 0x25
     f00:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f04:	ebffff2c 	bl	bbc <putc>
     f08:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f0c:	e6ef3073 	uxtb	r3, r3
     f10:	e1a01003 	mov	r1, r3
     f14:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f18:	ebffff27 	bl	bbc <putc>
     f1c:	e3a03000 	mov	r3, #0
     f20:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f24:	e51b3010 	ldr	r3, [fp, #-16]
     f28:	e2833001 	add	r3, r3, #1
     f2c:	e50b3010 	str	r3, [fp, #-16]
     f30:	e59b2004 	ldr	r2, [fp, #4]
     f34:	e51b3010 	ldr	r3, [fp, #-16]
     f38:	e0823003 	add	r3, r2, r3
     f3c:	e5d33000 	ldrb	r3, [r3]
     f40:	e3530000 	cmp	r3, #0
     f44:	1affff84 	bne	d5c <printf+0x30>
     f48:	e1a00000 	nop			@ (mov r0, r0)
     f4c:	e1a00000 	nop			@ (mov r0, r0)
     f50:	e24bd004 	sub	sp, fp, #4
     f54:	e8bd4800 	pop	{fp, lr}
     f58:	e28dd00c 	add	sp, sp, #12
     f5c:	e12fff1e 	bx	lr
     f60:	00001438 	.word	0x00001438

00000f64 <free>:
     f64:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     f68:	e28db000 	add	fp, sp, #0
     f6c:	e24dd014 	sub	sp, sp, #20
     f70:	e50b0010 	str	r0, [fp, #-16]
     f74:	e51b3010 	ldr	r3, [fp, #-16]
     f78:	e2433008 	sub	r3, r3, #8
     f7c:	e50b300c 	str	r3, [fp, #-12]
     f80:	e59f3154 	ldr	r3, [pc, #340]	@ 10dc <free+0x178>
     f84:	e5933000 	ldr	r3, [r3]
     f88:	e50b3008 	str	r3, [fp, #-8]
     f8c:	ea000010 	b	fd4 <free+0x70>
     f90:	e51b3008 	ldr	r3, [fp, #-8]
     f94:	e5933000 	ldr	r3, [r3]
     f98:	e51b2008 	ldr	r2, [fp, #-8]
     f9c:	e1520003 	cmp	r2, r3
     fa0:	3a000008 	bcc	fc8 <free+0x64>
     fa4:	e51b200c 	ldr	r2, [fp, #-12]
     fa8:	e51b3008 	ldr	r3, [fp, #-8]
     fac:	e1520003 	cmp	r2, r3
     fb0:	8a000010 	bhi	ff8 <free+0x94>
     fb4:	e51b3008 	ldr	r3, [fp, #-8]
     fb8:	e5933000 	ldr	r3, [r3]
     fbc:	e51b200c 	ldr	r2, [fp, #-12]
     fc0:	e1520003 	cmp	r2, r3
     fc4:	3a00000b 	bcc	ff8 <free+0x94>
     fc8:	e51b3008 	ldr	r3, [fp, #-8]
     fcc:	e5933000 	ldr	r3, [r3]
     fd0:	e50b3008 	str	r3, [fp, #-8]
     fd4:	e51b200c 	ldr	r2, [fp, #-12]
     fd8:	e51b3008 	ldr	r3, [fp, #-8]
     fdc:	e1520003 	cmp	r2, r3
     fe0:	9affffea 	bls	f90 <free+0x2c>
     fe4:	e51b3008 	ldr	r3, [fp, #-8]
     fe8:	e5933000 	ldr	r3, [r3]
     fec:	e51b200c 	ldr	r2, [fp, #-12]
     ff0:	e1520003 	cmp	r2, r3
     ff4:	2affffe5 	bcs	f90 <free+0x2c>
     ff8:	e51b300c 	ldr	r3, [fp, #-12]
     ffc:	e5933004 	ldr	r3, [r3, #4]
    1000:	e1a03183 	lsl	r3, r3, #3
    1004:	e51b200c 	ldr	r2, [fp, #-12]
    1008:	e0822003 	add	r2, r2, r3
    100c:	e51b3008 	ldr	r3, [fp, #-8]
    1010:	e5933000 	ldr	r3, [r3]
    1014:	e1520003 	cmp	r2, r3
    1018:	1a00000d 	bne	1054 <free+0xf0>
    101c:	e51b300c 	ldr	r3, [fp, #-12]
    1020:	e5932004 	ldr	r2, [r3, #4]
    1024:	e51b3008 	ldr	r3, [fp, #-8]
    1028:	e5933000 	ldr	r3, [r3]
    102c:	e5933004 	ldr	r3, [r3, #4]
    1030:	e0822003 	add	r2, r2, r3
    1034:	e51b300c 	ldr	r3, [fp, #-12]
    1038:	e5832004 	str	r2, [r3, #4]
    103c:	e51b3008 	ldr	r3, [fp, #-8]
    1040:	e5933000 	ldr	r3, [r3]
    1044:	e5932000 	ldr	r2, [r3]
    1048:	e51b300c 	ldr	r3, [fp, #-12]
    104c:	e5832000 	str	r2, [r3]
    1050:	ea000003 	b	1064 <free+0x100>
    1054:	e51b3008 	ldr	r3, [fp, #-8]
    1058:	e5932000 	ldr	r2, [r3]
    105c:	e51b300c 	ldr	r3, [fp, #-12]
    1060:	e5832000 	str	r2, [r3]
    1064:	e51b3008 	ldr	r3, [fp, #-8]
    1068:	e5933004 	ldr	r3, [r3, #4]
    106c:	e1a03183 	lsl	r3, r3, #3
    1070:	e51b2008 	ldr	r2, [fp, #-8]
    1074:	e0823003 	add	r3, r2, r3
    1078:	e51b200c 	ldr	r2, [fp, #-12]
    107c:	e1520003 	cmp	r2, r3
    1080:	1a00000b 	bne	10b4 <free+0x150>
    1084:	e51b3008 	ldr	r3, [fp, #-8]
    1088:	e5932004 	ldr	r2, [r3, #4]
    108c:	e51b300c 	ldr	r3, [fp, #-12]
    1090:	e5933004 	ldr	r3, [r3, #4]
    1094:	e0822003 	add	r2, r2, r3
    1098:	e51b3008 	ldr	r3, [fp, #-8]
    109c:	e5832004 	str	r2, [r3, #4]
    10a0:	e51b300c 	ldr	r3, [fp, #-12]
    10a4:	e5932000 	ldr	r2, [r3]
    10a8:	e51b3008 	ldr	r3, [fp, #-8]
    10ac:	e5832000 	str	r2, [r3]
    10b0:	ea000002 	b	10c0 <free+0x15c>
    10b4:	e51b3008 	ldr	r3, [fp, #-8]
    10b8:	e51b200c 	ldr	r2, [fp, #-12]
    10bc:	e5832000 	str	r2, [r3]
    10c0:	e59f2014 	ldr	r2, [pc, #20]	@ 10dc <free+0x178>
    10c4:	e51b3008 	ldr	r3, [fp, #-8]
    10c8:	e5823000 	str	r3, [r2]
    10cc:	e1a00000 	nop			@ (mov r0, r0)
    10d0:	e28bd000 	add	sp, fp, #0
    10d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    10d8:	e12fff1e 	bx	lr
    10dc:	0000146c 	.word	0x0000146c

000010e0 <morecore>:
    10e0:	e92d4800 	push	{fp, lr}
    10e4:	e28db004 	add	fp, sp, #4
    10e8:	e24dd010 	sub	sp, sp, #16
    10ec:	e50b0010 	str	r0, [fp, #-16]
    10f0:	e51b3010 	ldr	r3, [fp, #-16]
    10f4:	e3530a01 	cmp	r3, #4096	@ 0x1000
    10f8:	2a000001 	bcs	1104 <morecore+0x24>
    10fc:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1100:	e50b3010 	str	r3, [fp, #-16]
    1104:	e51b3010 	ldr	r3, [fp, #-16]
    1108:	e1a03183 	lsl	r3, r3, #3
    110c:	e1a00003 	mov	r0, r3
    1110:	ebfffe85 	bl	b2c <sbrk>
    1114:	e50b0008 	str	r0, [fp, #-8]
    1118:	e51b3008 	ldr	r3, [fp, #-8]
    111c:	e3730001 	cmn	r3, #1
    1120:	1a000001 	bne	112c <morecore+0x4c>
    1124:	e3a03000 	mov	r3, #0
    1128:	ea00000a 	b	1158 <morecore+0x78>
    112c:	e51b3008 	ldr	r3, [fp, #-8]
    1130:	e50b300c 	str	r3, [fp, #-12]
    1134:	e51b300c 	ldr	r3, [fp, #-12]
    1138:	e51b2010 	ldr	r2, [fp, #-16]
    113c:	e5832004 	str	r2, [r3, #4]
    1140:	e51b300c 	ldr	r3, [fp, #-12]
    1144:	e2833008 	add	r3, r3, #8
    1148:	e1a00003 	mov	r0, r3
    114c:	ebffff84 	bl	f64 <free>
    1150:	e59f300c 	ldr	r3, [pc, #12]	@ 1164 <morecore+0x84>
    1154:	e5933000 	ldr	r3, [r3]
    1158:	e1a00003 	mov	r0, r3
    115c:	e24bd004 	sub	sp, fp, #4
    1160:	e8bd8800 	pop	{fp, pc}
    1164:	0000146c 	.word	0x0000146c

00001168 <malloc>:
    1168:	e92d4800 	push	{fp, lr}
    116c:	e28db004 	add	fp, sp, #4
    1170:	e24dd018 	sub	sp, sp, #24
    1174:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1178:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    117c:	e2833007 	add	r3, r3, #7
    1180:	e1a031a3 	lsr	r3, r3, #3
    1184:	e2833001 	add	r3, r3, #1
    1188:	e50b3010 	str	r3, [fp, #-16]
    118c:	e59f3134 	ldr	r3, [pc, #308]	@ 12c8 <malloc+0x160>
    1190:	e5933000 	ldr	r3, [r3]
    1194:	e50b300c 	str	r3, [fp, #-12]
    1198:	e51b300c 	ldr	r3, [fp, #-12]
    119c:	e3530000 	cmp	r3, #0
    11a0:	1a00000b 	bne	11d4 <malloc+0x6c>
    11a4:	e59f3120 	ldr	r3, [pc, #288]	@ 12cc <malloc+0x164>
    11a8:	e50b300c 	str	r3, [fp, #-12]
    11ac:	e59f2114 	ldr	r2, [pc, #276]	@ 12c8 <malloc+0x160>
    11b0:	e51b300c 	ldr	r3, [fp, #-12]
    11b4:	e5823000 	str	r3, [r2]
    11b8:	e59f3108 	ldr	r3, [pc, #264]	@ 12c8 <malloc+0x160>
    11bc:	e5933000 	ldr	r3, [r3]
    11c0:	e59f2104 	ldr	r2, [pc, #260]	@ 12cc <malloc+0x164>
    11c4:	e5823000 	str	r3, [r2]
    11c8:	e59f30fc 	ldr	r3, [pc, #252]	@ 12cc <malloc+0x164>
    11cc:	e3a02000 	mov	r2, #0
    11d0:	e5832004 	str	r2, [r3, #4]
    11d4:	e51b300c 	ldr	r3, [fp, #-12]
    11d8:	e5933000 	ldr	r3, [r3]
    11dc:	e50b3008 	str	r3, [fp, #-8]
    11e0:	e51b3008 	ldr	r3, [fp, #-8]
    11e4:	e5933004 	ldr	r3, [r3, #4]
    11e8:	e51b2010 	ldr	r2, [fp, #-16]
    11ec:	e1520003 	cmp	r2, r3
    11f0:	8a00001e 	bhi	1270 <malloc+0x108>
    11f4:	e51b3008 	ldr	r3, [fp, #-8]
    11f8:	e5933004 	ldr	r3, [r3, #4]
    11fc:	e51b2010 	ldr	r2, [fp, #-16]
    1200:	e1520003 	cmp	r2, r3
    1204:	1a000004 	bne	121c <malloc+0xb4>
    1208:	e51b3008 	ldr	r3, [fp, #-8]
    120c:	e5932000 	ldr	r2, [r3]
    1210:	e51b300c 	ldr	r3, [fp, #-12]
    1214:	e5832000 	str	r2, [r3]
    1218:	ea00000e 	b	1258 <malloc+0xf0>
    121c:	e51b3008 	ldr	r3, [fp, #-8]
    1220:	e5932004 	ldr	r2, [r3, #4]
    1224:	e51b3010 	ldr	r3, [fp, #-16]
    1228:	e0422003 	sub	r2, r2, r3
    122c:	e51b3008 	ldr	r3, [fp, #-8]
    1230:	e5832004 	str	r2, [r3, #4]
    1234:	e51b3008 	ldr	r3, [fp, #-8]
    1238:	e5933004 	ldr	r3, [r3, #4]
    123c:	e1a03183 	lsl	r3, r3, #3
    1240:	e51b2008 	ldr	r2, [fp, #-8]
    1244:	e0823003 	add	r3, r2, r3
    1248:	e50b3008 	str	r3, [fp, #-8]
    124c:	e51b3008 	ldr	r3, [fp, #-8]
    1250:	e51b2010 	ldr	r2, [fp, #-16]
    1254:	e5832004 	str	r2, [r3, #4]
    1258:	e59f2068 	ldr	r2, [pc, #104]	@ 12c8 <malloc+0x160>
    125c:	e51b300c 	ldr	r3, [fp, #-12]
    1260:	e5823000 	str	r3, [r2]
    1264:	e51b3008 	ldr	r3, [fp, #-8]
    1268:	e2833008 	add	r3, r3, #8
    126c:	ea000012 	b	12bc <malloc+0x154>
    1270:	e59f3050 	ldr	r3, [pc, #80]	@ 12c8 <malloc+0x160>
    1274:	e5933000 	ldr	r3, [r3]
    1278:	e51b2008 	ldr	r2, [fp, #-8]
    127c:	e1520003 	cmp	r2, r3
    1280:	1a000007 	bne	12a4 <malloc+0x13c>
    1284:	e51b0010 	ldr	r0, [fp, #-16]
    1288:	ebffff94 	bl	10e0 <morecore>
    128c:	e50b0008 	str	r0, [fp, #-8]
    1290:	e51b3008 	ldr	r3, [fp, #-8]
    1294:	e3530000 	cmp	r3, #0
    1298:	1a000001 	bne	12a4 <malloc+0x13c>
    129c:	e3a03000 	mov	r3, #0
    12a0:	ea000005 	b	12bc <malloc+0x154>
    12a4:	e51b3008 	ldr	r3, [fp, #-8]
    12a8:	e50b300c 	str	r3, [fp, #-12]
    12ac:	e51b3008 	ldr	r3, [fp, #-8]
    12b0:	e5933000 	ldr	r3, [r3]
    12b4:	e50b3008 	str	r3, [fp, #-8]
    12b8:	eaffffc8 	b	11e0 <malloc+0x78>
    12bc:	e1a00003 	mov	r0, r3
    12c0:	e24bd004 	sub	sp, fp, #4
    12c4:	e8bd8800 	pop	{fp, pc}
    12c8:	0000146c 	.word	0x0000146c
    12cc:	00001464 	.word	0x00001464

000012d0 <__udivsi3>:
    12d0:	e2512001 	subs	r2, r1, #1
    12d4:	012fff1e 	bxeq	lr
    12d8:	3a000036 	bcc	13b8 <__udivsi3+0xe8>
    12dc:	e1500001 	cmp	r0, r1
    12e0:	9a000022 	bls	1370 <__udivsi3+0xa0>
    12e4:	e1110002 	tst	r1, r2
    12e8:	0a000023 	beq	137c <__udivsi3+0xac>
    12ec:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    12f0:	01a01181 	lsleq	r1, r1, #3
    12f4:	03a03008 	moveq	r3, #8
    12f8:	13a03001 	movne	r3, #1
    12fc:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1300:	31510000 	cmpcc	r1, r0
    1304:	31a01201 	lslcc	r1, r1, #4
    1308:	31a03203 	lslcc	r3, r3, #4
    130c:	3afffffa 	bcc	12fc <__udivsi3+0x2c>
    1310:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1314:	31510000 	cmpcc	r1, r0
    1318:	31a01081 	lslcc	r1, r1, #1
    131c:	31a03083 	lslcc	r3, r3, #1
    1320:	3afffffa 	bcc	1310 <__udivsi3+0x40>
    1324:	e3a02000 	mov	r2, #0
    1328:	e1500001 	cmp	r0, r1
    132c:	20400001 	subcs	r0, r0, r1
    1330:	21822003 	orrcs	r2, r2, r3
    1334:	e15000a1 	cmp	r0, r1, lsr #1
    1338:	204000a1 	subcs	r0, r0, r1, lsr #1
    133c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1340:	e1500121 	cmp	r0, r1, lsr #2
    1344:	20400121 	subcs	r0, r0, r1, lsr #2
    1348:	21822123 	orrcs	r2, r2, r3, lsr #2
    134c:	e15001a1 	cmp	r0, r1, lsr #3
    1350:	204001a1 	subcs	r0, r0, r1, lsr #3
    1354:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1358:	e3500000 	cmp	r0, #0
    135c:	11b03223 	lsrsne	r3, r3, #4
    1360:	11a01221 	lsrne	r1, r1, #4
    1364:	1affffef 	bne	1328 <__udivsi3+0x58>
    1368:	e1a00002 	mov	r0, r2
    136c:	e12fff1e 	bx	lr
    1370:	03a00001 	moveq	r0, #1
    1374:	13a00000 	movne	r0, #0
    1378:	e12fff1e 	bx	lr
    137c:	e3510801 	cmp	r1, #65536	@ 0x10000
    1380:	21a01821 	lsrcs	r1, r1, #16
    1384:	23a02010 	movcs	r2, #16
    1388:	33a02000 	movcc	r2, #0
    138c:	e3510c01 	cmp	r1, #256	@ 0x100
    1390:	21a01421 	lsrcs	r1, r1, #8
    1394:	22822008 	addcs	r2, r2, #8
    1398:	e3510010 	cmp	r1, #16
    139c:	21a01221 	lsrcs	r1, r1, #4
    13a0:	22822004 	addcs	r2, r2, #4
    13a4:	e3510004 	cmp	r1, #4
    13a8:	82822003 	addhi	r2, r2, #3
    13ac:	908220a1 	addls	r2, r2, r1, lsr #1
    13b0:	e1a00230 	lsr	r0, r0, r2
    13b4:	e12fff1e 	bx	lr
    13b8:	e3500000 	cmp	r0, #0
    13bc:	13e00000 	mvnne	r0, #0
    13c0:	ea000007 	b	13e4 <__aeabi_idiv0>

000013c4 <__aeabi_uidivmod>:
    13c4:	e3510000 	cmp	r1, #0
    13c8:	0afffffa 	beq	13b8 <__udivsi3+0xe8>
    13cc:	e92d4003 	push	{r0, r1, lr}
    13d0:	ebffffbe 	bl	12d0 <__udivsi3>
    13d4:	e8bd4006 	pop	{r1, r2, lr}
    13d8:	e0030092 	mul	r3, r2, r0
    13dc:	e0411003 	sub	r1, r1, r3
    13e0:	e12fff1e 	bx	lr

000013e4 <__aeabi_idiv0>:
    13e4:	e12fff1e 	bx	lr
