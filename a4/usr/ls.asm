
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
      e0:	000018d0 	.word	0x000018d0

000000e4 <ls>:
      e4:	e92d4800 	push	{fp, lr}
      e8:	e28db004 	add	fp, sp, #4
      ec:	e24ddd09 	sub	sp, sp, #576	@ 0x240
      f0:	e50b0238 	str	r0, [fp, #-568]	@ 0xfffffdc8
      f4:	e3a01000 	mov	r1, #0
      f8:	e51b0238 	ldr	r0, [fp, #-568]	@ 0xfffffdc8
      fc:	eb0002da 	bl	c6c <open>
     100:	e50b0008 	str	r0, [fp, #-8]
     104:	e51b3008 	ldr	r3, [fp, #-8]
     108:	e3530000 	cmp	r3, #0
     10c:	aa000004 	bge	124 <ls+0x40>
     110:	e51b2238 	ldr	r2, [fp, #-568]	@ 0xfffffdc8
     114:	e59f1200 	ldr	r1, [pc, #512]	@ 31c <ls+0x238>
     118:	e3a00002 	mov	r0, #2
     11c:	eb000421 	bl	11a8 <printf>
     120:	ea00007b 	b	314 <ls+0x230>
     124:	e24b3e23 	sub	r3, fp, #560	@ 0x230
     128:	e1a01003 	mov	r1, r3
     12c:	e51b0008 	ldr	r0, [fp, #-8]
     130:	eb0002e8 	bl	cd8 <fstat>
     134:	e1a03000 	mov	r3, r0
     138:	e3530000 	cmp	r3, #0
     13c:	aa000006 	bge	15c <ls+0x78>
     140:	e51b2238 	ldr	r2, [fp, #-568]	@ 0xfffffdc8
     144:	e59f11d4 	ldr	r1, [pc, #468]	@ 320 <ls+0x23c>
     148:	e3a00002 	mov	r0, #2
     14c:	eb000415 	bl	11a8 <printf>
     150:	e51b0008 	ldr	r0, [fp, #-8]
     154:	eb0002a9 	bl	c00 <close>
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
     1b4:	eb0003fb 	bl	11a8 <printf>
     1b8:	ea000053 	b	30c <ls+0x228>
     1bc:	e51b0238 	ldr	r0, [fp, #-568]	@ 0xfffffdc8
     1c0:	eb0000af 	bl	484 <strlen>
     1c4:	e1a03000 	mov	r3, r0
     1c8:	e2833010 	add	r3, r3, #16
     1cc:	e3530c02 	cmp	r3, #512	@ 0x200
     1d0:	9a000003 	bls	1e4 <ls+0x100>
     1d4:	e59f114c 	ldr	r1, [pc, #332]	@ 328 <ls+0x244>
     1d8:	e3a00001 	mov	r0, #1
     1dc:	eb0003f1 	bl	11a8 <printf>
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
     294:	eb0003c3 	bl	11a8 <printf>
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
     2dc:	eb0003b1 	bl	11a8 <printf>
     2e0:	ea000000 	b	2e8 <ls+0x204>
     2e4:	e1a00000 	nop			@ (mov r0, r0)
     2e8:	e24b3f87 	sub	r3, fp, #540	@ 0x21c
     2ec:	e3a02010 	mov	r2, #16
     2f0:	e1a01003 	mov	r1, r3
     2f4:	e51b0008 	ldr	r0, [fp, #-8]
     2f8:	eb00022e 	bl	bb8 <read>
     2fc:	e1a03000 	mov	r3, r0
     300:	e3530010 	cmp	r3, #16
     304:	0affffc7 	beq	228 <ls+0x144>
     308:	e1a00000 	nop			@ (mov r0, r0)
     30c:	e51b0008 	ldr	r0, [fp, #-8]
     310:	eb00023a 	bl	c00 <close>
     314:	e24bd004 	sub	sp, fp, #4
     318:	e8bd8800 	pop	{fp, pc}
     31c:	00001864 	.word	0x00001864
     320:	00001878 	.word	0x00001878
     324:	0000188c 	.word	0x0000188c
     328:	0000189c 	.word	0x0000189c

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
     354:	eb0001fc 	bl	b4c <exit>
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
     39c:	eb0001ea 	bl	b4c <exit>
     3a0:	000018b0 	.word	0x000018b0

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
     698:	eb000146 	bl	bb8 <read>
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
     740:	eb000149 	bl	c6c <open>
     744:	e50b0008 	str	r0, [fp, #-8]
     748:	e51b3008 	ldr	r3, [fp, #-8]
     74c:	e3530000 	cmp	r3, #0
     750:	aa000001 	bge	75c <stat+0x38>
     754:	e3e03000 	mvn	r3, #0
     758:	ea000006 	b	778 <stat+0x54>
     75c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     760:	e51b0008 	ldr	r0, [fp, #-8]
     764:	eb00015b 	bl	cd8 <fstat>
     768:	e50b000c 	str	r0, [fp, #-12]
     76c:	e51b0008 	ldr	r0, [fp, #-8]
     770:	eb000122 	bl	c00 <close>
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

000008cc <acquireLock>:
     8cc:	e92d4800 	push	{fp, lr}
     8d0:	e28db004 	add	fp, sp, #4
     8d4:	e24dd008 	sub	sp, sp, #8
     8d8:	e50b0008 	str	r0, [fp, #-8]
     8dc:	ea000001 	b	8e8 <acquireLock+0x1c>
     8e0:	e3a00001 	mov	r0, #1
     8e4:	eb00013a 	bl	dd4 <sleep>
     8e8:	e51b2008 	ldr	r2, [fp, #-8]
     8ec:	e3a01001 	mov	r1, #1
     8f0:	e1923f9f 	ldrex	r3, [r2]
     8f4:	e1820f91 	strex	r0, r1, [r2]
     8f8:	e3500000 	cmp	r0, #0
     8fc:	1afffffb 	bne	8f0 <acquireLock+0x24>
     900:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     904:	e3530001 	cmp	r3, #1
     908:	0afffff4 	beq	8e0 <acquireLock+0x14>
     90c:	e1a00000 	nop			@ (mov r0, r0)
     910:	e1a00000 	nop			@ (mov r0, r0)
     914:	e24bd004 	sub	sp, fp, #4
     918:	e8bd8800 	pop	{fp, pc}

0000091c <releaseLock>:
     91c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     920:	e28db000 	add	fp, sp, #0
     924:	e24dd00c 	sub	sp, sp, #12
     928:	e50b0008 	str	r0, [fp, #-8]
     92c:	e51b3008 	ldr	r3, [fp, #-8]
     930:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     934:	e3a02000 	mov	r2, #0
     938:	e5832000 	str	r2, [r3]
     93c:	e1a00000 	nop			@ (mov r0, r0)
     940:	e28bd000 	add	sp, fp, #0
     944:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     948:	e12fff1e 	bx	lr

0000094c <initiateCondVar>:
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

00000984 <condWait>:
     984:	e92d4800 	push	{fp, lr}
     988:	e28db004 	add	fp, sp, #4
     98c:	e24dd008 	sub	sp, sp, #8
     990:	e50b0008 	str	r0, [fp, #-8]
     994:	e50b100c 	str	r1, [fp, #-12]
     998:	e51b000c 	ldr	r0, [fp, #-12]
     99c:	ebffffde 	bl	91c <releaseLock>
     9a0:	e51b3008 	ldr	r3, [fp, #-8]
     9a4:	e5933000 	ldr	r3, [r3]
     9a8:	e1a00003 	mov	r0, r3
     9ac:	eb00017d 	bl	fa8 <sleepChan>
     9b0:	e51b000c 	ldr	r0, [fp, #-12]
     9b4:	ebffffc4 	bl	8cc <acquireLock>
     9b8:	e1a00000 	nop			@ (mov r0, r0)
     9bc:	e24bd004 	sub	sp, fp, #4
     9c0:	e8bd8800 	pop	{fp, pc}

000009c4 <broadcast>:
     9c4:	e92d4800 	push	{fp, lr}
     9c8:	e28db004 	add	fp, sp, #4
     9cc:	e24dd008 	sub	sp, sp, #8
     9d0:	e50b0008 	str	r0, [fp, #-8]
     9d4:	e51b3008 	ldr	r3, [fp, #-8]
     9d8:	e5933000 	ldr	r3, [r3]
     9dc:	e1a00003 	mov	r0, r3
     9e0:	eb000182 	bl	ff0 <sigChan>
     9e4:	e1a00000 	nop			@ (mov r0, r0)
     9e8:	e24bd004 	sub	sp, fp, #4
     9ec:	e8bd8800 	pop	{fp, pc}

000009f0 <semInit>:
     9f0:	e92d4800 	push	{fp, lr}
     9f4:	e28db004 	add	fp, sp, #4
     9f8:	e24dd008 	sub	sp, sp, #8
     9fc:	e50b0008 	str	r0, [fp, #-8]
     a00:	e50b100c 	str	r1, [fp, #-12]
     a04:	e51b3008 	ldr	r3, [fp, #-8]
     a08:	e51b200c 	ldr	r2, [fp, #-12]
     a0c:	e5832000 	str	r2, [r3]
     a10:	e51b3008 	ldr	r3, [fp, #-8]
     a14:	e2833004 	add	r3, r3, #4
     a18:	e1a00003 	mov	r0, r3
     a1c:	ebffff9c 	bl	894 <initiateLock>
     a20:	e51b3008 	ldr	r3, [fp, #-8]
     a24:	e283300c 	add	r3, r3, #12
     a28:	e1a00003 	mov	r0, r3
     a2c:	ebffffc6 	bl	94c <initiateCondVar>
     a30:	e51b3008 	ldr	r3, [fp, #-8]
     a34:	e3a02001 	mov	r2, #1
     a38:	e5832014 	str	r2, [r3, #20]
     a3c:	e1a00000 	nop			@ (mov r0, r0)
     a40:	e24bd004 	sub	sp, fp, #4
     a44:	e8bd8800 	pop	{fp, pc}

00000a48 <semUp>:
     a48:	e92d4800 	push	{fp, lr}
     a4c:	e28db004 	add	fp, sp, #4
     a50:	e24dd008 	sub	sp, sp, #8
     a54:	e50b0008 	str	r0, [fp, #-8]
     a58:	e51b3008 	ldr	r3, [fp, #-8]
     a5c:	e2833004 	add	r3, r3, #4
     a60:	e1a00003 	mov	r0, r3
     a64:	ebffff98 	bl	8cc <acquireLock>
     a68:	e51b3008 	ldr	r3, [fp, #-8]
     a6c:	e5933000 	ldr	r3, [r3]
     a70:	e2832001 	add	r2, r3, #1
     a74:	e51b3008 	ldr	r3, [fp, #-8]
     a78:	e5832000 	str	r2, [r3]
     a7c:	e51b3008 	ldr	r3, [fp, #-8]
     a80:	e283300c 	add	r3, r3, #12
     a84:	e1a00003 	mov	r0, r3
     a88:	ebffffcd 	bl	9c4 <broadcast>
     a8c:	e51b3008 	ldr	r3, [fp, #-8]
     a90:	e2833004 	add	r3, r3, #4
     a94:	e1a00003 	mov	r0, r3
     a98:	ebffff9f 	bl	91c <releaseLock>
     a9c:	e1a00000 	nop			@ (mov r0, r0)
     aa0:	e24bd004 	sub	sp, fp, #4
     aa4:	e8bd8800 	pop	{fp, pc}

00000aa8 <semDown>:
     aa8:	e92d4800 	push	{fp, lr}
     aac:	e28db004 	add	fp, sp, #4
     ab0:	e24dd008 	sub	sp, sp, #8
     ab4:	e50b0008 	str	r0, [fp, #-8]
     ab8:	e51b3008 	ldr	r3, [fp, #-8]
     abc:	e2833004 	add	r3, r3, #4
     ac0:	e1a00003 	mov	r0, r3
     ac4:	ebffff80 	bl	8cc <acquireLock>
     ac8:	ea000006 	b	ae8 <semDown+0x40>
     acc:	e51b3008 	ldr	r3, [fp, #-8]
     ad0:	e283200c 	add	r2, r3, #12
     ad4:	e51b3008 	ldr	r3, [fp, #-8]
     ad8:	e2833004 	add	r3, r3, #4
     adc:	e1a01003 	mov	r1, r3
     ae0:	e1a00002 	mov	r0, r2
     ae4:	ebffffa6 	bl	984 <condWait>
     ae8:	e51b3008 	ldr	r3, [fp, #-8]
     aec:	e5933000 	ldr	r3, [r3]
     af0:	e3530000 	cmp	r3, #0
     af4:	dafffff4 	ble	acc <semDown+0x24>
     af8:	e51b3008 	ldr	r3, [fp, #-8]
     afc:	e5933000 	ldr	r3, [r3]
     b00:	e2432001 	sub	r2, r3, #1
     b04:	e51b3008 	ldr	r3, [fp, #-8]
     b08:	e5832000 	str	r2, [r3]
     b0c:	e51b3008 	ldr	r3, [fp, #-8]
     b10:	e2833004 	add	r3, r3, #4
     b14:	e1a00003 	mov	r0, r3
     b18:	ebffff7f 	bl	91c <releaseLock>
     b1c:	e1a00000 	nop			@ (mov r0, r0)
     b20:	e24bd004 	sub	sp, fp, #4
     b24:	e8bd8800 	pop	{fp, pc}

00000b28 <fork>:
     b28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b2c:	e1a04003 	mov	r4, r3
     b30:	e1a03002 	mov	r3, r2
     b34:	e1a02001 	mov	r2, r1
     b38:	e1a01000 	mov	r1, r0
     b3c:	e3a00001 	mov	r0, #1
     b40:	ef000000 	svc	0x00000000
     b44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b48:	e12fff1e 	bx	lr

00000b4c <exit>:
     b4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b50:	e1a04003 	mov	r4, r3
     b54:	e1a03002 	mov	r3, r2
     b58:	e1a02001 	mov	r2, r1
     b5c:	e1a01000 	mov	r1, r0
     b60:	e3a00002 	mov	r0, #2
     b64:	ef000000 	svc	0x00000000
     b68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b6c:	e12fff1e 	bx	lr

00000b70 <wait>:
     b70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b74:	e1a04003 	mov	r4, r3
     b78:	e1a03002 	mov	r3, r2
     b7c:	e1a02001 	mov	r2, r1
     b80:	e1a01000 	mov	r1, r0
     b84:	e3a00003 	mov	r0, #3
     b88:	ef000000 	svc	0x00000000
     b8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b90:	e12fff1e 	bx	lr

00000b94 <pipe>:
     b94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b98:	e1a04003 	mov	r4, r3
     b9c:	e1a03002 	mov	r3, r2
     ba0:	e1a02001 	mov	r2, r1
     ba4:	e1a01000 	mov	r1, r0
     ba8:	e3a00004 	mov	r0, #4
     bac:	ef000000 	svc	0x00000000
     bb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb4:	e12fff1e 	bx	lr

00000bb8 <read>:
     bb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bbc:	e1a04003 	mov	r4, r3
     bc0:	e1a03002 	mov	r3, r2
     bc4:	e1a02001 	mov	r2, r1
     bc8:	e1a01000 	mov	r1, r0
     bcc:	e3a00005 	mov	r0, #5
     bd0:	ef000000 	svc	0x00000000
     bd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bd8:	e12fff1e 	bx	lr

00000bdc <write>:
     bdc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be0:	e1a04003 	mov	r4, r3
     be4:	e1a03002 	mov	r3, r2
     be8:	e1a02001 	mov	r2, r1
     bec:	e1a01000 	mov	r1, r0
     bf0:	e3a00010 	mov	r0, #16
     bf4:	ef000000 	svc	0x00000000
     bf8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bfc:	e12fff1e 	bx	lr

00000c00 <close>:
     c00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c04:	e1a04003 	mov	r4, r3
     c08:	e1a03002 	mov	r3, r2
     c0c:	e1a02001 	mov	r2, r1
     c10:	e1a01000 	mov	r1, r0
     c14:	e3a00015 	mov	r0, #21
     c18:	ef000000 	svc	0x00000000
     c1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c20:	e12fff1e 	bx	lr

00000c24 <kill>:
     c24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c28:	e1a04003 	mov	r4, r3
     c2c:	e1a03002 	mov	r3, r2
     c30:	e1a02001 	mov	r2, r1
     c34:	e1a01000 	mov	r1, r0
     c38:	e3a00006 	mov	r0, #6
     c3c:	ef000000 	svc	0x00000000
     c40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c44:	e12fff1e 	bx	lr

00000c48 <exec>:
     c48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c4c:	e1a04003 	mov	r4, r3
     c50:	e1a03002 	mov	r3, r2
     c54:	e1a02001 	mov	r2, r1
     c58:	e1a01000 	mov	r1, r0
     c5c:	e3a00007 	mov	r0, #7
     c60:	ef000000 	svc	0x00000000
     c64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c68:	e12fff1e 	bx	lr

00000c6c <open>:
     c6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c70:	e1a04003 	mov	r4, r3
     c74:	e1a03002 	mov	r3, r2
     c78:	e1a02001 	mov	r2, r1
     c7c:	e1a01000 	mov	r1, r0
     c80:	e3a0000f 	mov	r0, #15
     c84:	ef000000 	svc	0x00000000
     c88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c8c:	e12fff1e 	bx	lr

00000c90 <mknod>:
     c90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c94:	e1a04003 	mov	r4, r3
     c98:	e1a03002 	mov	r3, r2
     c9c:	e1a02001 	mov	r2, r1
     ca0:	e1a01000 	mov	r1, r0
     ca4:	e3a00011 	mov	r0, #17
     ca8:	ef000000 	svc	0x00000000
     cac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb0:	e12fff1e 	bx	lr

00000cb4 <unlink>:
     cb4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cb8:	e1a04003 	mov	r4, r3
     cbc:	e1a03002 	mov	r3, r2
     cc0:	e1a02001 	mov	r2, r1
     cc4:	e1a01000 	mov	r1, r0
     cc8:	e3a00012 	mov	r0, #18
     ccc:	ef000000 	svc	0x00000000
     cd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd4:	e12fff1e 	bx	lr

00000cd8 <fstat>:
     cd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cdc:	e1a04003 	mov	r4, r3
     ce0:	e1a03002 	mov	r3, r2
     ce4:	e1a02001 	mov	r2, r1
     ce8:	e1a01000 	mov	r1, r0
     cec:	e3a00008 	mov	r0, #8
     cf0:	ef000000 	svc	0x00000000
     cf4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cf8:	e12fff1e 	bx	lr

00000cfc <link>:
     cfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d00:	e1a04003 	mov	r4, r3
     d04:	e1a03002 	mov	r3, r2
     d08:	e1a02001 	mov	r2, r1
     d0c:	e1a01000 	mov	r1, r0
     d10:	e3a00013 	mov	r0, #19
     d14:	ef000000 	svc	0x00000000
     d18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d1c:	e12fff1e 	bx	lr

00000d20 <mkdir>:
     d20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d24:	e1a04003 	mov	r4, r3
     d28:	e1a03002 	mov	r3, r2
     d2c:	e1a02001 	mov	r2, r1
     d30:	e1a01000 	mov	r1, r0
     d34:	e3a00014 	mov	r0, #20
     d38:	ef000000 	svc	0x00000000
     d3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d40:	e12fff1e 	bx	lr

00000d44 <chdir>:
     d44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d48:	e1a04003 	mov	r4, r3
     d4c:	e1a03002 	mov	r3, r2
     d50:	e1a02001 	mov	r2, r1
     d54:	e1a01000 	mov	r1, r0
     d58:	e3a00009 	mov	r0, #9
     d5c:	ef000000 	svc	0x00000000
     d60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d64:	e12fff1e 	bx	lr

00000d68 <dup>:
     d68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d6c:	e1a04003 	mov	r4, r3
     d70:	e1a03002 	mov	r3, r2
     d74:	e1a02001 	mov	r2, r1
     d78:	e1a01000 	mov	r1, r0
     d7c:	e3a0000a 	mov	r0, #10
     d80:	ef000000 	svc	0x00000000
     d84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d88:	e12fff1e 	bx	lr

00000d8c <getpid>:
     d8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d90:	e1a04003 	mov	r4, r3
     d94:	e1a03002 	mov	r3, r2
     d98:	e1a02001 	mov	r2, r1
     d9c:	e1a01000 	mov	r1, r0
     da0:	e3a0000b 	mov	r0, #11
     da4:	ef000000 	svc	0x00000000
     da8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dac:	e12fff1e 	bx	lr

00000db0 <sbrk>:
     db0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     db4:	e1a04003 	mov	r4, r3
     db8:	e1a03002 	mov	r3, r2
     dbc:	e1a02001 	mov	r2, r1
     dc0:	e1a01000 	mov	r1, r0
     dc4:	e3a0000c 	mov	r0, #12
     dc8:	ef000000 	svc	0x00000000
     dcc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd0:	e12fff1e 	bx	lr

00000dd4 <sleep>:
     dd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dd8:	e1a04003 	mov	r4, r3
     ddc:	e1a03002 	mov	r3, r2
     de0:	e1a02001 	mov	r2, r1
     de4:	e1a01000 	mov	r1, r0
     de8:	e3a0000d 	mov	r0, #13
     dec:	ef000000 	svc	0x00000000
     df0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     df4:	e12fff1e 	bx	lr

00000df8 <uptime>:
     df8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dfc:	e1a04003 	mov	r4, r3
     e00:	e1a03002 	mov	r3, r2
     e04:	e1a02001 	mov	r2, r1
     e08:	e1a01000 	mov	r1, r0
     e0c:	e3a0000e 	mov	r0, #14
     e10:	ef000000 	svc	0x00000000
     e14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e18:	e12fff1e 	bx	lr

00000e1c <getprocs>:
     e1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e20:	e1a04003 	mov	r4, r3
     e24:	e1a03002 	mov	r3, r2
     e28:	e1a02001 	mov	r2, r1
     e2c:	e1a01000 	mov	r1, r0
     e30:	e3a00016 	mov	r0, #22
     e34:	ef000000 	svc	0x00000000
     e38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e3c:	e12fff1e 	bx	lr

00000e40 <settickets>:
     e40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e44:	e1a04003 	mov	r4, r3
     e48:	e1a03002 	mov	r3, r2
     e4c:	e1a02001 	mov	r2, r1
     e50:	e1a01000 	mov	r1, r0
     e54:	e3a00017 	mov	r0, #23
     e58:	ef000000 	svc	0x00000000
     e5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e60:	e12fff1e 	bx	lr

00000e64 <srand>:
     e64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e68:	e1a04003 	mov	r4, r3
     e6c:	e1a03002 	mov	r3, r2
     e70:	e1a02001 	mov	r2, r1
     e74:	e1a01000 	mov	r1, r0
     e78:	e3a00018 	mov	r0, #24
     e7c:	ef000000 	svc	0x00000000
     e80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e84:	e12fff1e 	bx	lr

00000e88 <getpinfo>:
     e88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e8c:	e1a04003 	mov	r4, r3
     e90:	e1a03002 	mov	r3, r2
     e94:	e1a02001 	mov	r2, r1
     e98:	e1a01000 	mov	r1, r0
     e9c:	e3a00019 	mov	r0, #25
     ea0:	ef000000 	svc	0x00000000
     ea4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ea8:	e12fff1e 	bx	lr

00000eac <dumppagetable>:
     eac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eb0:	e1a04003 	mov	r4, r3
     eb4:	e1a03002 	mov	r3, r2
     eb8:	e1a02001 	mov	r2, r1
     ebc:	e1a01000 	mov	r1, r0
     ec0:	e3a0001a 	mov	r0, #26
     ec4:	ef000000 	svc	0x00000000
     ec8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ecc:	e12fff1e 	bx	lr

00000ed0 <thread_create>:
     ed0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ed4:	e1a04003 	mov	r4, r3
     ed8:	e1a03002 	mov	r3, r2
     edc:	e1a02001 	mov	r2, r1
     ee0:	e1a01000 	mov	r1, r0
     ee4:	e3a0001b 	mov	r0, #27
     ee8:	ef000000 	svc	0x00000000
     eec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ef0:	e12fff1e 	bx	lr

00000ef4 <thread_exit>:
     ef4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ef8:	e1a04003 	mov	r4, r3
     efc:	e1a03002 	mov	r3, r2
     f00:	e1a02001 	mov	r2, r1
     f04:	e1a01000 	mov	r1, r0
     f08:	e3a0001c 	mov	r0, #28
     f0c:	ef000000 	svc	0x00000000
     f10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f14:	e12fff1e 	bx	lr

00000f18 <thread_join>:
     f18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f1c:	e1a04003 	mov	r4, r3
     f20:	e1a03002 	mov	r3, r2
     f24:	e1a02001 	mov	r2, r1
     f28:	e1a01000 	mov	r1, r0
     f2c:	e3a0001d 	mov	r0, #29
     f30:	ef000000 	svc	0x00000000
     f34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f38:	e12fff1e 	bx	lr

00000f3c <waitpid>:
     f3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f40:	e1a04003 	mov	r4, r3
     f44:	e1a03002 	mov	r3, r2
     f48:	e1a02001 	mov	r2, r1
     f4c:	e1a01000 	mov	r1, r0
     f50:	e3a0001e 	mov	r0, #30
     f54:	ef000000 	svc	0x00000000
     f58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f5c:	e12fff1e 	bx	lr

00000f60 <barrier_init>:
     f60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f64:	e1a04003 	mov	r4, r3
     f68:	e1a03002 	mov	r3, r2
     f6c:	e1a02001 	mov	r2, r1
     f70:	e1a01000 	mov	r1, r0
     f74:	e3a0001f 	mov	r0, #31
     f78:	ef000000 	svc	0x00000000
     f7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f80:	e12fff1e 	bx	lr

00000f84 <barrier_check>:
     f84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f88:	e1a04003 	mov	r4, r3
     f8c:	e1a03002 	mov	r3, r2
     f90:	e1a02001 	mov	r2, r1
     f94:	e1a01000 	mov	r1, r0
     f98:	e3a00020 	mov	r0, #32
     f9c:	ef000000 	svc	0x00000000
     fa0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fa4:	e12fff1e 	bx	lr

00000fa8 <sleepChan>:
     fa8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fac:	e1a04003 	mov	r4, r3
     fb0:	e1a03002 	mov	r3, r2
     fb4:	e1a02001 	mov	r2, r1
     fb8:	e1a01000 	mov	r1, r0
     fbc:	e3a00024 	mov	r0, #36	@ 0x24
     fc0:	ef000000 	svc	0x00000000
     fc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fc8:	e12fff1e 	bx	lr

00000fcc <getChannel>:
     fcc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fd0:	e1a04003 	mov	r4, r3
     fd4:	e1a03002 	mov	r3, r2
     fd8:	e1a02001 	mov	r2, r1
     fdc:	e1a01000 	mov	r1, r0
     fe0:	e3a00025 	mov	r0, #37	@ 0x25
     fe4:	ef000000 	svc	0x00000000
     fe8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fec:	e12fff1e 	bx	lr

00000ff0 <sigChan>:
     ff0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ff4:	e1a04003 	mov	r4, r3
     ff8:	e1a03002 	mov	r3, r2
     ffc:	e1a02001 	mov	r2, r1
    1000:	e1a01000 	mov	r1, r0
    1004:	e3a00026 	mov	r0, #38	@ 0x26
    1008:	ef000000 	svc	0x00000000
    100c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1010:	e12fff1e 	bx	lr

00001014 <sigOneChan>:
    1014:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1018:	e1a04003 	mov	r4, r3
    101c:	e1a03002 	mov	r3, r2
    1020:	e1a02001 	mov	r2, r1
    1024:	e1a01000 	mov	r1, r0
    1028:	e3a00027 	mov	r0, #39	@ 0x27
    102c:	ef000000 	svc	0x00000000
    1030:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1034:	e12fff1e 	bx	lr

00001038 <putc>:
    1038:	e92d4800 	push	{fp, lr}
    103c:	e28db004 	add	fp, sp, #4
    1040:	e24dd008 	sub	sp, sp, #8
    1044:	e50b0008 	str	r0, [fp, #-8]
    1048:	e1a03001 	mov	r3, r1
    104c:	e54b3009 	strb	r3, [fp, #-9]
    1050:	e24b3009 	sub	r3, fp, #9
    1054:	e3a02001 	mov	r2, #1
    1058:	e1a01003 	mov	r1, r3
    105c:	e51b0008 	ldr	r0, [fp, #-8]
    1060:	ebfffedd 	bl	bdc <write>
    1064:	e1a00000 	nop			@ (mov r0, r0)
    1068:	e24bd004 	sub	sp, fp, #4
    106c:	e8bd8800 	pop	{fp, pc}

00001070 <printint>:
    1070:	e92d4800 	push	{fp, lr}
    1074:	e28db004 	add	fp, sp, #4
    1078:	e24dd030 	sub	sp, sp, #48	@ 0x30
    107c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    1080:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    1084:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    1088:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    108c:	e3a03000 	mov	r3, #0
    1090:	e50b300c 	str	r3, [fp, #-12]
    1094:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    1098:	e3530000 	cmp	r3, #0
    109c:	0a000008 	beq	10c4 <printint+0x54>
    10a0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    10a4:	e3530000 	cmp	r3, #0
    10a8:	aa000005 	bge	10c4 <printint+0x54>
    10ac:	e3a03001 	mov	r3, #1
    10b0:	e50b300c 	str	r3, [fp, #-12]
    10b4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    10b8:	e2633000 	rsb	r3, r3, #0
    10bc:	e50b3010 	str	r3, [fp, #-16]
    10c0:	ea000001 	b	10cc <printint+0x5c>
    10c4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    10c8:	e50b3010 	str	r3, [fp, #-16]
    10cc:	e3a03000 	mov	r3, #0
    10d0:	e50b3008 	str	r3, [fp, #-8]
    10d4:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    10d8:	e51b3010 	ldr	r3, [fp, #-16]
    10dc:	e1a01002 	mov	r1, r2
    10e0:	e1a00003 	mov	r0, r3
    10e4:	eb0001d5 	bl	1840 <__aeabi_uidivmod>
    10e8:	e1a03001 	mov	r3, r1
    10ec:	e1a01003 	mov	r1, r3
    10f0:	e51b3008 	ldr	r3, [fp, #-8]
    10f4:	e2832001 	add	r2, r3, #1
    10f8:	e50b2008 	str	r2, [fp, #-8]
    10fc:	e59f20a0 	ldr	r2, [pc, #160]	@ 11a4 <printint+0x134>
    1100:	e7d22001 	ldrb	r2, [r2, r1]
    1104:	e2433004 	sub	r3, r3, #4
    1108:	e083300b 	add	r3, r3, fp
    110c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1110:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    1114:	e1a01003 	mov	r1, r3
    1118:	e51b0010 	ldr	r0, [fp, #-16]
    111c:	eb00018a 	bl	174c <__udivsi3>
    1120:	e1a03000 	mov	r3, r0
    1124:	e50b3010 	str	r3, [fp, #-16]
    1128:	e51b3010 	ldr	r3, [fp, #-16]
    112c:	e3530000 	cmp	r3, #0
    1130:	1affffe7 	bne	10d4 <printint+0x64>
    1134:	e51b300c 	ldr	r3, [fp, #-12]
    1138:	e3530000 	cmp	r3, #0
    113c:	0a00000e 	beq	117c <printint+0x10c>
    1140:	e51b3008 	ldr	r3, [fp, #-8]
    1144:	e2832001 	add	r2, r3, #1
    1148:	e50b2008 	str	r2, [fp, #-8]
    114c:	e2433004 	sub	r3, r3, #4
    1150:	e083300b 	add	r3, r3, fp
    1154:	e3a0202d 	mov	r2, #45	@ 0x2d
    1158:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    115c:	ea000006 	b	117c <printint+0x10c>
    1160:	e24b2020 	sub	r2, fp, #32
    1164:	e51b3008 	ldr	r3, [fp, #-8]
    1168:	e0823003 	add	r3, r2, r3
    116c:	e5d33000 	ldrb	r3, [r3]
    1170:	e1a01003 	mov	r1, r3
    1174:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1178:	ebffffae 	bl	1038 <putc>
    117c:	e51b3008 	ldr	r3, [fp, #-8]
    1180:	e2433001 	sub	r3, r3, #1
    1184:	e50b3008 	str	r3, [fp, #-8]
    1188:	e51b3008 	ldr	r3, [fp, #-8]
    118c:	e3530000 	cmp	r3, #0
    1190:	aafffff2 	bge	1160 <printint+0xf0>
    1194:	e1a00000 	nop			@ (mov r0, r0)
    1198:	e1a00000 	nop			@ (mov r0, r0)
    119c:	e24bd004 	sub	sp, fp, #4
    11a0:	e8bd8800 	pop	{fp, pc}
    11a4:	000018bc 	.word	0x000018bc

000011a8 <printf>:
    11a8:	e92d000e 	push	{r1, r2, r3}
    11ac:	e92d4800 	push	{fp, lr}
    11b0:	e28db004 	add	fp, sp, #4
    11b4:	e24dd024 	sub	sp, sp, #36	@ 0x24
    11b8:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    11bc:	e3a03000 	mov	r3, #0
    11c0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    11c4:	e28b3008 	add	r3, fp, #8
    11c8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11cc:	e3a03000 	mov	r3, #0
    11d0:	e50b3010 	str	r3, [fp, #-16]
    11d4:	ea000074 	b	13ac <printf+0x204>
    11d8:	e59b2004 	ldr	r2, [fp, #4]
    11dc:	e51b3010 	ldr	r3, [fp, #-16]
    11e0:	e0823003 	add	r3, r2, r3
    11e4:	e5d33000 	ldrb	r3, [r3]
    11e8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    11ec:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    11f0:	e3530000 	cmp	r3, #0
    11f4:	1a00000b 	bne	1228 <printf+0x80>
    11f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11fc:	e3530025 	cmp	r3, #37	@ 0x25
    1200:	1a000002 	bne	1210 <printf+0x68>
    1204:	e3a03025 	mov	r3, #37	@ 0x25
    1208:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    120c:	ea000063 	b	13a0 <printf+0x1f8>
    1210:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1214:	e6ef3073 	uxtb	r3, r3
    1218:	e1a01003 	mov	r1, r3
    121c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1220:	ebffff84 	bl	1038 <putc>
    1224:	ea00005d 	b	13a0 <printf+0x1f8>
    1228:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    122c:	e3530025 	cmp	r3, #37	@ 0x25
    1230:	1a00005a 	bne	13a0 <printf+0x1f8>
    1234:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1238:	e3530064 	cmp	r3, #100	@ 0x64
    123c:	1a00000a 	bne	126c <printf+0xc4>
    1240:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1244:	e5933000 	ldr	r3, [r3]
    1248:	e1a01003 	mov	r1, r3
    124c:	e3a03001 	mov	r3, #1
    1250:	e3a0200a 	mov	r2, #10
    1254:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1258:	ebffff84 	bl	1070 <printint>
    125c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1260:	e2833004 	add	r3, r3, #4
    1264:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1268:	ea00004a 	b	1398 <printf+0x1f0>
    126c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1270:	e3530078 	cmp	r3, #120	@ 0x78
    1274:	0a000002 	beq	1284 <printf+0xdc>
    1278:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    127c:	e3530070 	cmp	r3, #112	@ 0x70
    1280:	1a00000a 	bne	12b0 <printf+0x108>
    1284:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1288:	e5933000 	ldr	r3, [r3]
    128c:	e1a01003 	mov	r1, r3
    1290:	e3a03000 	mov	r3, #0
    1294:	e3a02010 	mov	r2, #16
    1298:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    129c:	ebffff73 	bl	1070 <printint>
    12a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12a4:	e2833004 	add	r3, r3, #4
    12a8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12ac:	ea000039 	b	1398 <printf+0x1f0>
    12b0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12b4:	e3530073 	cmp	r3, #115	@ 0x73
    12b8:	1a000018 	bne	1320 <printf+0x178>
    12bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12c0:	e5933000 	ldr	r3, [r3]
    12c4:	e50b300c 	str	r3, [fp, #-12]
    12c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12cc:	e2833004 	add	r3, r3, #4
    12d0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12d4:	e51b300c 	ldr	r3, [fp, #-12]
    12d8:	e3530000 	cmp	r3, #0
    12dc:	1a00000a 	bne	130c <printf+0x164>
    12e0:	e59f30f4 	ldr	r3, [pc, #244]	@ 13dc <printf+0x234>
    12e4:	e50b300c 	str	r3, [fp, #-12]
    12e8:	ea000007 	b	130c <printf+0x164>
    12ec:	e51b300c 	ldr	r3, [fp, #-12]
    12f0:	e5d33000 	ldrb	r3, [r3]
    12f4:	e1a01003 	mov	r1, r3
    12f8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12fc:	ebffff4d 	bl	1038 <putc>
    1300:	e51b300c 	ldr	r3, [fp, #-12]
    1304:	e2833001 	add	r3, r3, #1
    1308:	e50b300c 	str	r3, [fp, #-12]
    130c:	e51b300c 	ldr	r3, [fp, #-12]
    1310:	e5d33000 	ldrb	r3, [r3]
    1314:	e3530000 	cmp	r3, #0
    1318:	1afffff3 	bne	12ec <printf+0x144>
    131c:	ea00001d 	b	1398 <printf+0x1f0>
    1320:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1324:	e3530063 	cmp	r3, #99	@ 0x63
    1328:	1a000009 	bne	1354 <printf+0x1ac>
    132c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1330:	e5933000 	ldr	r3, [r3]
    1334:	e6ef3073 	uxtb	r3, r3
    1338:	e1a01003 	mov	r1, r3
    133c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1340:	ebffff3c 	bl	1038 <putc>
    1344:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1348:	e2833004 	add	r3, r3, #4
    134c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1350:	ea000010 	b	1398 <printf+0x1f0>
    1354:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1358:	e3530025 	cmp	r3, #37	@ 0x25
    135c:	1a000005 	bne	1378 <printf+0x1d0>
    1360:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1364:	e6ef3073 	uxtb	r3, r3
    1368:	e1a01003 	mov	r1, r3
    136c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1370:	ebffff30 	bl	1038 <putc>
    1374:	ea000007 	b	1398 <printf+0x1f0>
    1378:	e3a01025 	mov	r1, #37	@ 0x25
    137c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1380:	ebffff2c 	bl	1038 <putc>
    1384:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1388:	e6ef3073 	uxtb	r3, r3
    138c:	e1a01003 	mov	r1, r3
    1390:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1394:	ebffff27 	bl	1038 <putc>
    1398:	e3a03000 	mov	r3, #0
    139c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    13a0:	e51b3010 	ldr	r3, [fp, #-16]
    13a4:	e2833001 	add	r3, r3, #1
    13a8:	e50b3010 	str	r3, [fp, #-16]
    13ac:	e59b2004 	ldr	r2, [fp, #4]
    13b0:	e51b3010 	ldr	r3, [fp, #-16]
    13b4:	e0823003 	add	r3, r2, r3
    13b8:	e5d33000 	ldrb	r3, [r3]
    13bc:	e3530000 	cmp	r3, #0
    13c0:	1affff84 	bne	11d8 <printf+0x30>
    13c4:	e1a00000 	nop			@ (mov r0, r0)
    13c8:	e1a00000 	nop			@ (mov r0, r0)
    13cc:	e24bd004 	sub	sp, fp, #4
    13d0:	e8bd4800 	pop	{fp, lr}
    13d4:	e28dd00c 	add	sp, sp, #12
    13d8:	e12fff1e 	bx	lr
    13dc:	000018b4 	.word	0x000018b4

000013e0 <free>:
    13e0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    13e4:	e28db000 	add	fp, sp, #0
    13e8:	e24dd014 	sub	sp, sp, #20
    13ec:	e50b0010 	str	r0, [fp, #-16]
    13f0:	e51b3010 	ldr	r3, [fp, #-16]
    13f4:	e2433008 	sub	r3, r3, #8
    13f8:	e50b300c 	str	r3, [fp, #-12]
    13fc:	e59f3154 	ldr	r3, [pc, #340]	@ 1558 <free+0x178>
    1400:	e5933000 	ldr	r3, [r3]
    1404:	e50b3008 	str	r3, [fp, #-8]
    1408:	ea000010 	b	1450 <free+0x70>
    140c:	e51b3008 	ldr	r3, [fp, #-8]
    1410:	e5933000 	ldr	r3, [r3]
    1414:	e51b2008 	ldr	r2, [fp, #-8]
    1418:	e1520003 	cmp	r2, r3
    141c:	3a000008 	bcc	1444 <free+0x64>
    1420:	e51b200c 	ldr	r2, [fp, #-12]
    1424:	e51b3008 	ldr	r3, [fp, #-8]
    1428:	e1520003 	cmp	r2, r3
    142c:	8a000010 	bhi	1474 <free+0x94>
    1430:	e51b3008 	ldr	r3, [fp, #-8]
    1434:	e5933000 	ldr	r3, [r3]
    1438:	e51b200c 	ldr	r2, [fp, #-12]
    143c:	e1520003 	cmp	r2, r3
    1440:	3a00000b 	bcc	1474 <free+0x94>
    1444:	e51b3008 	ldr	r3, [fp, #-8]
    1448:	e5933000 	ldr	r3, [r3]
    144c:	e50b3008 	str	r3, [fp, #-8]
    1450:	e51b200c 	ldr	r2, [fp, #-12]
    1454:	e51b3008 	ldr	r3, [fp, #-8]
    1458:	e1520003 	cmp	r2, r3
    145c:	9affffea 	bls	140c <free+0x2c>
    1460:	e51b3008 	ldr	r3, [fp, #-8]
    1464:	e5933000 	ldr	r3, [r3]
    1468:	e51b200c 	ldr	r2, [fp, #-12]
    146c:	e1520003 	cmp	r2, r3
    1470:	2affffe5 	bcs	140c <free+0x2c>
    1474:	e51b300c 	ldr	r3, [fp, #-12]
    1478:	e5933004 	ldr	r3, [r3, #4]
    147c:	e1a03183 	lsl	r3, r3, #3
    1480:	e51b200c 	ldr	r2, [fp, #-12]
    1484:	e0822003 	add	r2, r2, r3
    1488:	e51b3008 	ldr	r3, [fp, #-8]
    148c:	e5933000 	ldr	r3, [r3]
    1490:	e1520003 	cmp	r2, r3
    1494:	1a00000d 	bne	14d0 <free+0xf0>
    1498:	e51b300c 	ldr	r3, [fp, #-12]
    149c:	e5932004 	ldr	r2, [r3, #4]
    14a0:	e51b3008 	ldr	r3, [fp, #-8]
    14a4:	e5933000 	ldr	r3, [r3]
    14a8:	e5933004 	ldr	r3, [r3, #4]
    14ac:	e0822003 	add	r2, r2, r3
    14b0:	e51b300c 	ldr	r3, [fp, #-12]
    14b4:	e5832004 	str	r2, [r3, #4]
    14b8:	e51b3008 	ldr	r3, [fp, #-8]
    14bc:	e5933000 	ldr	r3, [r3]
    14c0:	e5932000 	ldr	r2, [r3]
    14c4:	e51b300c 	ldr	r3, [fp, #-12]
    14c8:	e5832000 	str	r2, [r3]
    14cc:	ea000003 	b	14e0 <free+0x100>
    14d0:	e51b3008 	ldr	r3, [fp, #-8]
    14d4:	e5932000 	ldr	r2, [r3]
    14d8:	e51b300c 	ldr	r3, [fp, #-12]
    14dc:	e5832000 	str	r2, [r3]
    14e0:	e51b3008 	ldr	r3, [fp, #-8]
    14e4:	e5933004 	ldr	r3, [r3, #4]
    14e8:	e1a03183 	lsl	r3, r3, #3
    14ec:	e51b2008 	ldr	r2, [fp, #-8]
    14f0:	e0823003 	add	r3, r2, r3
    14f4:	e51b200c 	ldr	r2, [fp, #-12]
    14f8:	e1520003 	cmp	r2, r3
    14fc:	1a00000b 	bne	1530 <free+0x150>
    1500:	e51b3008 	ldr	r3, [fp, #-8]
    1504:	e5932004 	ldr	r2, [r3, #4]
    1508:	e51b300c 	ldr	r3, [fp, #-12]
    150c:	e5933004 	ldr	r3, [r3, #4]
    1510:	e0822003 	add	r2, r2, r3
    1514:	e51b3008 	ldr	r3, [fp, #-8]
    1518:	e5832004 	str	r2, [r3, #4]
    151c:	e51b300c 	ldr	r3, [fp, #-12]
    1520:	e5932000 	ldr	r2, [r3]
    1524:	e51b3008 	ldr	r3, [fp, #-8]
    1528:	e5832000 	str	r2, [r3]
    152c:	ea000002 	b	153c <free+0x15c>
    1530:	e51b3008 	ldr	r3, [fp, #-8]
    1534:	e51b200c 	ldr	r2, [fp, #-12]
    1538:	e5832000 	str	r2, [r3]
    153c:	e59f2014 	ldr	r2, [pc, #20]	@ 1558 <free+0x178>
    1540:	e51b3008 	ldr	r3, [fp, #-8]
    1544:	e5823000 	str	r3, [r2]
    1548:	e1a00000 	nop			@ (mov r0, r0)
    154c:	e28bd000 	add	sp, fp, #0
    1550:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1554:	e12fff1e 	bx	lr
    1558:	000018e8 	.word	0x000018e8

0000155c <morecore>:
    155c:	e92d4800 	push	{fp, lr}
    1560:	e28db004 	add	fp, sp, #4
    1564:	e24dd010 	sub	sp, sp, #16
    1568:	e50b0010 	str	r0, [fp, #-16]
    156c:	e51b3010 	ldr	r3, [fp, #-16]
    1570:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1574:	2a000001 	bcs	1580 <morecore+0x24>
    1578:	e3a03a01 	mov	r3, #4096	@ 0x1000
    157c:	e50b3010 	str	r3, [fp, #-16]
    1580:	e51b3010 	ldr	r3, [fp, #-16]
    1584:	e1a03183 	lsl	r3, r3, #3
    1588:	e1a00003 	mov	r0, r3
    158c:	ebfffe07 	bl	db0 <sbrk>
    1590:	e50b0008 	str	r0, [fp, #-8]
    1594:	e51b3008 	ldr	r3, [fp, #-8]
    1598:	e3730001 	cmn	r3, #1
    159c:	1a000001 	bne	15a8 <morecore+0x4c>
    15a0:	e3a03000 	mov	r3, #0
    15a4:	ea00000a 	b	15d4 <morecore+0x78>
    15a8:	e51b3008 	ldr	r3, [fp, #-8]
    15ac:	e50b300c 	str	r3, [fp, #-12]
    15b0:	e51b300c 	ldr	r3, [fp, #-12]
    15b4:	e51b2010 	ldr	r2, [fp, #-16]
    15b8:	e5832004 	str	r2, [r3, #4]
    15bc:	e51b300c 	ldr	r3, [fp, #-12]
    15c0:	e2833008 	add	r3, r3, #8
    15c4:	e1a00003 	mov	r0, r3
    15c8:	ebffff84 	bl	13e0 <free>
    15cc:	e59f300c 	ldr	r3, [pc, #12]	@ 15e0 <morecore+0x84>
    15d0:	e5933000 	ldr	r3, [r3]
    15d4:	e1a00003 	mov	r0, r3
    15d8:	e24bd004 	sub	sp, fp, #4
    15dc:	e8bd8800 	pop	{fp, pc}
    15e0:	000018e8 	.word	0x000018e8

000015e4 <malloc>:
    15e4:	e92d4800 	push	{fp, lr}
    15e8:	e28db004 	add	fp, sp, #4
    15ec:	e24dd018 	sub	sp, sp, #24
    15f0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    15f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    15f8:	e2833007 	add	r3, r3, #7
    15fc:	e1a031a3 	lsr	r3, r3, #3
    1600:	e2833001 	add	r3, r3, #1
    1604:	e50b3010 	str	r3, [fp, #-16]
    1608:	e59f3134 	ldr	r3, [pc, #308]	@ 1744 <malloc+0x160>
    160c:	e5933000 	ldr	r3, [r3]
    1610:	e50b300c 	str	r3, [fp, #-12]
    1614:	e51b300c 	ldr	r3, [fp, #-12]
    1618:	e3530000 	cmp	r3, #0
    161c:	1a00000b 	bne	1650 <malloc+0x6c>
    1620:	e59f3120 	ldr	r3, [pc, #288]	@ 1748 <malloc+0x164>
    1624:	e50b300c 	str	r3, [fp, #-12]
    1628:	e59f2114 	ldr	r2, [pc, #276]	@ 1744 <malloc+0x160>
    162c:	e51b300c 	ldr	r3, [fp, #-12]
    1630:	e5823000 	str	r3, [r2]
    1634:	e59f3108 	ldr	r3, [pc, #264]	@ 1744 <malloc+0x160>
    1638:	e5933000 	ldr	r3, [r3]
    163c:	e59f2104 	ldr	r2, [pc, #260]	@ 1748 <malloc+0x164>
    1640:	e5823000 	str	r3, [r2]
    1644:	e59f30fc 	ldr	r3, [pc, #252]	@ 1748 <malloc+0x164>
    1648:	e3a02000 	mov	r2, #0
    164c:	e5832004 	str	r2, [r3, #4]
    1650:	e51b300c 	ldr	r3, [fp, #-12]
    1654:	e5933000 	ldr	r3, [r3]
    1658:	e50b3008 	str	r3, [fp, #-8]
    165c:	e51b3008 	ldr	r3, [fp, #-8]
    1660:	e5933004 	ldr	r3, [r3, #4]
    1664:	e51b2010 	ldr	r2, [fp, #-16]
    1668:	e1520003 	cmp	r2, r3
    166c:	8a00001e 	bhi	16ec <malloc+0x108>
    1670:	e51b3008 	ldr	r3, [fp, #-8]
    1674:	e5933004 	ldr	r3, [r3, #4]
    1678:	e51b2010 	ldr	r2, [fp, #-16]
    167c:	e1520003 	cmp	r2, r3
    1680:	1a000004 	bne	1698 <malloc+0xb4>
    1684:	e51b3008 	ldr	r3, [fp, #-8]
    1688:	e5932000 	ldr	r2, [r3]
    168c:	e51b300c 	ldr	r3, [fp, #-12]
    1690:	e5832000 	str	r2, [r3]
    1694:	ea00000e 	b	16d4 <malloc+0xf0>
    1698:	e51b3008 	ldr	r3, [fp, #-8]
    169c:	e5932004 	ldr	r2, [r3, #4]
    16a0:	e51b3010 	ldr	r3, [fp, #-16]
    16a4:	e0422003 	sub	r2, r2, r3
    16a8:	e51b3008 	ldr	r3, [fp, #-8]
    16ac:	e5832004 	str	r2, [r3, #4]
    16b0:	e51b3008 	ldr	r3, [fp, #-8]
    16b4:	e5933004 	ldr	r3, [r3, #4]
    16b8:	e1a03183 	lsl	r3, r3, #3
    16bc:	e51b2008 	ldr	r2, [fp, #-8]
    16c0:	e0823003 	add	r3, r2, r3
    16c4:	e50b3008 	str	r3, [fp, #-8]
    16c8:	e51b3008 	ldr	r3, [fp, #-8]
    16cc:	e51b2010 	ldr	r2, [fp, #-16]
    16d0:	e5832004 	str	r2, [r3, #4]
    16d4:	e59f2068 	ldr	r2, [pc, #104]	@ 1744 <malloc+0x160>
    16d8:	e51b300c 	ldr	r3, [fp, #-12]
    16dc:	e5823000 	str	r3, [r2]
    16e0:	e51b3008 	ldr	r3, [fp, #-8]
    16e4:	e2833008 	add	r3, r3, #8
    16e8:	ea000012 	b	1738 <malloc+0x154>
    16ec:	e59f3050 	ldr	r3, [pc, #80]	@ 1744 <malloc+0x160>
    16f0:	e5933000 	ldr	r3, [r3]
    16f4:	e51b2008 	ldr	r2, [fp, #-8]
    16f8:	e1520003 	cmp	r2, r3
    16fc:	1a000007 	bne	1720 <malloc+0x13c>
    1700:	e51b0010 	ldr	r0, [fp, #-16]
    1704:	ebffff94 	bl	155c <morecore>
    1708:	e50b0008 	str	r0, [fp, #-8]
    170c:	e51b3008 	ldr	r3, [fp, #-8]
    1710:	e3530000 	cmp	r3, #0
    1714:	1a000001 	bne	1720 <malloc+0x13c>
    1718:	e3a03000 	mov	r3, #0
    171c:	ea000005 	b	1738 <malloc+0x154>
    1720:	e51b3008 	ldr	r3, [fp, #-8]
    1724:	e50b300c 	str	r3, [fp, #-12]
    1728:	e51b3008 	ldr	r3, [fp, #-8]
    172c:	e5933000 	ldr	r3, [r3]
    1730:	e50b3008 	str	r3, [fp, #-8]
    1734:	eaffffc8 	b	165c <malloc+0x78>
    1738:	e1a00003 	mov	r0, r3
    173c:	e24bd004 	sub	sp, fp, #4
    1740:	e8bd8800 	pop	{fp, pc}
    1744:	000018e8 	.word	0x000018e8
    1748:	000018e0 	.word	0x000018e0

0000174c <__udivsi3>:
    174c:	e2512001 	subs	r2, r1, #1
    1750:	012fff1e 	bxeq	lr
    1754:	3a000036 	bcc	1834 <__udivsi3+0xe8>
    1758:	e1500001 	cmp	r0, r1
    175c:	9a000022 	bls	17ec <__udivsi3+0xa0>
    1760:	e1110002 	tst	r1, r2
    1764:	0a000023 	beq	17f8 <__udivsi3+0xac>
    1768:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    176c:	01a01181 	lsleq	r1, r1, #3
    1770:	03a03008 	moveq	r3, #8
    1774:	13a03001 	movne	r3, #1
    1778:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    177c:	31510000 	cmpcc	r1, r0
    1780:	31a01201 	lslcc	r1, r1, #4
    1784:	31a03203 	lslcc	r3, r3, #4
    1788:	3afffffa 	bcc	1778 <__udivsi3+0x2c>
    178c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1790:	31510000 	cmpcc	r1, r0
    1794:	31a01081 	lslcc	r1, r1, #1
    1798:	31a03083 	lslcc	r3, r3, #1
    179c:	3afffffa 	bcc	178c <__udivsi3+0x40>
    17a0:	e3a02000 	mov	r2, #0
    17a4:	e1500001 	cmp	r0, r1
    17a8:	20400001 	subcs	r0, r0, r1
    17ac:	21822003 	orrcs	r2, r2, r3
    17b0:	e15000a1 	cmp	r0, r1, lsr #1
    17b4:	204000a1 	subcs	r0, r0, r1, lsr #1
    17b8:	218220a3 	orrcs	r2, r2, r3, lsr #1
    17bc:	e1500121 	cmp	r0, r1, lsr #2
    17c0:	20400121 	subcs	r0, r0, r1, lsr #2
    17c4:	21822123 	orrcs	r2, r2, r3, lsr #2
    17c8:	e15001a1 	cmp	r0, r1, lsr #3
    17cc:	204001a1 	subcs	r0, r0, r1, lsr #3
    17d0:	218221a3 	orrcs	r2, r2, r3, lsr #3
    17d4:	e3500000 	cmp	r0, #0
    17d8:	11b03223 	lsrsne	r3, r3, #4
    17dc:	11a01221 	lsrne	r1, r1, #4
    17e0:	1affffef 	bne	17a4 <__udivsi3+0x58>
    17e4:	e1a00002 	mov	r0, r2
    17e8:	e12fff1e 	bx	lr
    17ec:	03a00001 	moveq	r0, #1
    17f0:	13a00000 	movne	r0, #0
    17f4:	e12fff1e 	bx	lr
    17f8:	e3510801 	cmp	r1, #65536	@ 0x10000
    17fc:	21a01821 	lsrcs	r1, r1, #16
    1800:	23a02010 	movcs	r2, #16
    1804:	33a02000 	movcc	r2, #0
    1808:	e3510c01 	cmp	r1, #256	@ 0x100
    180c:	21a01421 	lsrcs	r1, r1, #8
    1810:	22822008 	addcs	r2, r2, #8
    1814:	e3510010 	cmp	r1, #16
    1818:	21a01221 	lsrcs	r1, r1, #4
    181c:	22822004 	addcs	r2, r2, #4
    1820:	e3510004 	cmp	r1, #4
    1824:	82822003 	addhi	r2, r2, #3
    1828:	908220a1 	addls	r2, r2, r1, lsr #1
    182c:	e1a00230 	lsr	r0, r0, r2
    1830:	e12fff1e 	bx	lr
    1834:	e3500000 	cmp	r0, #0
    1838:	13e00000 	mvnne	r0, #0
    183c:	ea000007 	b	1860 <__aeabi_idiv0>

00001840 <__aeabi_uidivmod>:
    1840:	e3510000 	cmp	r1, #0
    1844:	0afffffa 	beq	1834 <__udivsi3+0xe8>
    1848:	e92d4003 	push	{r0, r1, lr}
    184c:	ebffffbe 	bl	174c <__udivsi3>
    1850:	e8bd4006 	pop	{r1, r2, lr}
    1854:	e0030092 	mul	r3, r2, r0
    1858:	e0411003 	sub	r1, r1, r3
    185c:	e12fff1e 	bx	lr

00001860 <__aeabi_idiv0>:
    1860:	e12fff1e 	bx	lr
