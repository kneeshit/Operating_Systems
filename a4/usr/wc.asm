
_wc:     file format elf32-littlearm


Disassembly of section .text:

00000000 <wc>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd028 	sub	sp, sp, #40	@ 0x28
       c:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
      10:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
      14:	e3a03000 	mov	r3, #0
      18:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      1c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      20:	e50b3010 	str	r3, [fp, #-16]
      24:	e51b3010 	ldr	r3, [fp, #-16]
      28:	e50b300c 	str	r3, [fp, #-12]
      2c:	e3a03000 	mov	r3, #0
      30:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      34:	ea00002a 	b	e4 <wc+0xe4>
      38:	e3a03000 	mov	r3, #0
      3c:	e50b3008 	str	r3, [fp, #-8]
      40:	ea000023 	b	d4 <wc+0xd4>
      44:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      48:	e2833001 	add	r3, r3, #1
      4c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      50:	e59f20f8 	ldr	r2, [pc, #248]	@ 150 <wc+0x150>
      54:	e51b3008 	ldr	r3, [fp, #-8]
      58:	e0823003 	add	r3, r2, r3
      5c:	e5d33000 	ldrb	r3, [r3]
      60:	e353000a 	cmp	r3, #10
      64:	1a000002 	bne	74 <wc+0x74>
      68:	e51b300c 	ldr	r3, [fp, #-12]
      6c:	e2833001 	add	r3, r3, #1
      70:	e50b300c 	str	r3, [fp, #-12]
      74:	e59f20d4 	ldr	r2, [pc, #212]	@ 150 <wc+0x150>
      78:	e51b3008 	ldr	r3, [fp, #-8]
      7c:	e0823003 	add	r3, r2, r3
      80:	e5d33000 	ldrb	r3, [r3]
      84:	e1a01003 	mov	r1, r3
      88:	e59f00c4 	ldr	r0, [pc, #196]	@ 154 <wc+0x154>
      8c:	eb000103 	bl	4a0 <strchr>
      90:	e1a03000 	mov	r3, r0
      94:	e3530000 	cmp	r3, #0
      98:	0a000002 	beq	a8 <wc+0xa8>
      9c:	e3a03000 	mov	r3, #0
      a0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      a4:	ea000007 	b	c8 <wc+0xc8>
      a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      ac:	e3530000 	cmp	r3, #0
      b0:	1a000004 	bne	c8 <wc+0xc8>
      b4:	e51b3010 	ldr	r3, [fp, #-16]
      b8:	e2833001 	add	r3, r3, #1
      bc:	e50b3010 	str	r3, [fp, #-16]
      c0:	e3a03001 	mov	r3, #1
      c4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      c8:	e51b3008 	ldr	r3, [fp, #-8]
      cc:	e2833001 	add	r3, r3, #1
      d0:	e50b3008 	str	r3, [fp, #-8]
      d4:	e51b2008 	ldr	r2, [fp, #-8]
      d8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
      dc:	e1520003 	cmp	r2, r3
      e0:	baffffd7 	blt	44 <wc+0x44>
      e4:	e3a02c02 	mov	r2, #512	@ 0x200
      e8:	e59f1060 	ldr	r1, [pc, #96]	@ 150 <wc+0x150>
      ec:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
      f0:	eb0001b3 	bl	7c4 <read>
      f4:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
      f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
      fc:	e3530000 	cmp	r3, #0
     100:	caffffcc 	bgt	38 <wc+0x38>
     104:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     108:	e3530000 	cmp	r3, #0
     10c:	aa000003 	bge	120 <wc+0x120>
     110:	e59f1040 	ldr	r1, [pc, #64]	@ 158 <wc+0x158>
     114:	e3a00001 	mov	r0, #1
     118:	eb0002cb 	bl	c4c <printf>
     11c:	eb00018d 	bl	758 <exit>
     120:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     124:	e58d3004 	str	r3, [sp, #4]
     128:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     12c:	e58d3000 	str	r3, [sp]
     130:	e51b3010 	ldr	r3, [fp, #-16]
     134:	e51b200c 	ldr	r2, [fp, #-12]
     138:	e59f101c 	ldr	r1, [pc, #28]	@ 15c <wc+0x15c>
     13c:	e3a00001 	mov	r0, #1
     140:	eb0002c1 	bl	c4c <printf>
     144:	e1a00000 	nop			@ (mov r0, r0)
     148:	e24bd004 	sub	sp, fp, #4
     14c:	e8bd8800 	pop	{fp, pc}
     150:	00001364 	.word	0x00001364
     154:	00001308 	.word	0x00001308
     158:	00001310 	.word	0x00001310
     15c:	00001320 	.word	0x00001320

00000160 <main>:
     160:	e92d4800 	push	{fp, lr}
     164:	e28db004 	add	fp, sp, #4
     168:	e24dd010 	sub	sp, sp, #16
     16c:	e50b0010 	str	r0, [fp, #-16]
     170:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     174:	e51b3010 	ldr	r3, [fp, #-16]
     178:	e3530001 	cmp	r3, #1
     17c:	ca000003 	bgt	190 <main+0x30>
     180:	e59f10b4 	ldr	r1, [pc, #180]	@ 23c <main+0xdc>
     184:	e3a00000 	mov	r0, #0
     188:	ebffff9c 	bl	0 <wc>
     18c:	eb000171 	bl	758 <exit>
     190:	e3a03001 	mov	r3, #1
     194:	e50b3008 	str	r3, [fp, #-8]
     198:	ea000022 	b	228 <main+0xc8>
     19c:	e51b3008 	ldr	r3, [fp, #-8]
     1a0:	e1a03103 	lsl	r3, r3, #2
     1a4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1a8:	e0823003 	add	r3, r2, r3
     1ac:	e5933000 	ldr	r3, [r3]
     1b0:	e3a01000 	mov	r1, #0
     1b4:	e1a00003 	mov	r0, r3
     1b8:	eb0001ae 	bl	878 <open>
     1bc:	e50b000c 	str	r0, [fp, #-12]
     1c0:	e51b300c 	ldr	r3, [fp, #-12]
     1c4:	e3530000 	cmp	r3, #0
     1c8:	aa000009 	bge	1f4 <main+0x94>
     1cc:	e51b3008 	ldr	r3, [fp, #-8]
     1d0:	e1a03103 	lsl	r3, r3, #2
     1d4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1d8:	e0823003 	add	r3, r2, r3
     1dc:	e5933000 	ldr	r3, [r3]
     1e0:	e1a02003 	mov	r2, r3
     1e4:	e59f1054 	ldr	r1, [pc, #84]	@ 240 <main+0xe0>
     1e8:	e3a00001 	mov	r0, #1
     1ec:	eb000296 	bl	c4c <printf>
     1f0:	eb000158 	bl	758 <exit>
     1f4:	e51b3008 	ldr	r3, [fp, #-8]
     1f8:	e1a03103 	lsl	r3, r3, #2
     1fc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     200:	e0823003 	add	r3, r2, r3
     204:	e5933000 	ldr	r3, [r3]
     208:	e1a01003 	mov	r1, r3
     20c:	e51b000c 	ldr	r0, [fp, #-12]
     210:	ebffff7a 	bl	0 <wc>
     214:	e51b000c 	ldr	r0, [fp, #-12]
     218:	eb00017b 	bl	80c <close>
     21c:	e51b3008 	ldr	r3, [fp, #-8]
     220:	e2833001 	add	r3, r3, #1
     224:	e50b3008 	str	r3, [fp, #-8]
     228:	e51b2008 	ldr	r2, [fp, #-8]
     22c:	e51b3010 	ldr	r3, [fp, #-16]
     230:	e1520003 	cmp	r2, r3
     234:	baffffd8 	blt	19c <main+0x3c>
     238:	eb000146 	bl	758 <exit>
     23c:	00001330 	.word	0x00001330
     240:	00001334 	.word	0x00001334

00000244 <strcpy>:
     244:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     248:	e28db000 	add	fp, sp, #0
     24c:	e24dd014 	sub	sp, sp, #20
     250:	e50b0010 	str	r0, [fp, #-16]
     254:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     258:	e51b3010 	ldr	r3, [fp, #-16]
     25c:	e50b3008 	str	r3, [fp, #-8]
     260:	e1a00000 	nop			@ (mov r0, r0)
     264:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     268:	e2823001 	add	r3, r2, #1
     26c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     270:	e51b3010 	ldr	r3, [fp, #-16]
     274:	e2831001 	add	r1, r3, #1
     278:	e50b1010 	str	r1, [fp, #-16]
     27c:	e5d22000 	ldrb	r2, [r2]
     280:	e5c32000 	strb	r2, [r3]
     284:	e5d33000 	ldrb	r3, [r3]
     288:	e3530000 	cmp	r3, #0
     28c:	1afffff4 	bne	264 <strcpy+0x20>
     290:	e51b3008 	ldr	r3, [fp, #-8]
     294:	e1a00003 	mov	r0, r3
     298:	e28bd000 	add	sp, fp, #0
     29c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2a0:	e12fff1e 	bx	lr

000002a4 <strcmp>:
     2a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2a8:	e28db000 	add	fp, sp, #0
     2ac:	e24dd00c 	sub	sp, sp, #12
     2b0:	e50b0008 	str	r0, [fp, #-8]
     2b4:	e50b100c 	str	r1, [fp, #-12]
     2b8:	ea000005 	b	2d4 <strcmp+0x30>
     2bc:	e51b3008 	ldr	r3, [fp, #-8]
     2c0:	e2833001 	add	r3, r3, #1
     2c4:	e50b3008 	str	r3, [fp, #-8]
     2c8:	e51b300c 	ldr	r3, [fp, #-12]
     2cc:	e2833001 	add	r3, r3, #1
     2d0:	e50b300c 	str	r3, [fp, #-12]
     2d4:	e51b3008 	ldr	r3, [fp, #-8]
     2d8:	e5d33000 	ldrb	r3, [r3]
     2dc:	e3530000 	cmp	r3, #0
     2e0:	0a000005 	beq	2fc <strcmp+0x58>
     2e4:	e51b3008 	ldr	r3, [fp, #-8]
     2e8:	e5d32000 	ldrb	r2, [r3]
     2ec:	e51b300c 	ldr	r3, [fp, #-12]
     2f0:	e5d33000 	ldrb	r3, [r3]
     2f4:	e1520003 	cmp	r2, r3
     2f8:	0affffef 	beq	2bc <strcmp+0x18>
     2fc:	e51b3008 	ldr	r3, [fp, #-8]
     300:	e5d33000 	ldrb	r3, [r3]
     304:	e1a02003 	mov	r2, r3
     308:	e51b300c 	ldr	r3, [fp, #-12]
     30c:	e5d33000 	ldrb	r3, [r3]
     310:	e0423003 	sub	r3, r2, r3
     314:	e1a00003 	mov	r0, r3
     318:	e28bd000 	add	sp, fp, #0
     31c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     320:	e12fff1e 	bx	lr

00000324 <strlen>:
     324:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     328:	e28db000 	add	fp, sp, #0
     32c:	e24dd014 	sub	sp, sp, #20
     330:	e50b0010 	str	r0, [fp, #-16]
     334:	e3a03000 	mov	r3, #0
     338:	e50b3008 	str	r3, [fp, #-8]
     33c:	ea000002 	b	34c <strlen+0x28>
     340:	e51b3008 	ldr	r3, [fp, #-8]
     344:	e2833001 	add	r3, r3, #1
     348:	e50b3008 	str	r3, [fp, #-8]
     34c:	e51b3008 	ldr	r3, [fp, #-8]
     350:	e51b2010 	ldr	r2, [fp, #-16]
     354:	e0823003 	add	r3, r2, r3
     358:	e5d33000 	ldrb	r3, [r3]
     35c:	e3530000 	cmp	r3, #0
     360:	1afffff6 	bne	340 <strlen+0x1c>
     364:	e51b3008 	ldr	r3, [fp, #-8]
     368:	e1a00003 	mov	r0, r3
     36c:	e28bd000 	add	sp, fp, #0
     370:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     374:	e12fff1e 	bx	lr

00000378 <memset>:
     378:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     37c:	e28db000 	add	fp, sp, #0
     380:	e24dd024 	sub	sp, sp, #36	@ 0x24
     384:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     388:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     38c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     390:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     394:	e50b3008 	str	r3, [fp, #-8]
     398:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     39c:	e54b300d 	strb	r3, [fp, #-13]
     3a0:	e55b200d 	ldrb	r2, [fp, #-13]
     3a4:	e1a03002 	mov	r3, r2
     3a8:	e1a03403 	lsl	r3, r3, #8
     3ac:	e0833002 	add	r3, r3, r2
     3b0:	e1a03803 	lsl	r3, r3, #16
     3b4:	e1a02003 	mov	r2, r3
     3b8:	e55b300d 	ldrb	r3, [fp, #-13]
     3bc:	e1a03403 	lsl	r3, r3, #8
     3c0:	e1822003 	orr	r2, r2, r3
     3c4:	e55b300d 	ldrb	r3, [fp, #-13]
     3c8:	e1823003 	orr	r3, r2, r3
     3cc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     3d0:	ea000008 	b	3f8 <memset+0x80>
     3d4:	e51b3008 	ldr	r3, [fp, #-8]
     3d8:	e55b200d 	ldrb	r2, [fp, #-13]
     3dc:	e5c32000 	strb	r2, [r3]
     3e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3e4:	e2433001 	sub	r3, r3, #1
     3e8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3ec:	e51b3008 	ldr	r3, [fp, #-8]
     3f0:	e2833001 	add	r3, r3, #1
     3f4:	e50b3008 	str	r3, [fp, #-8]
     3f8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3fc:	e3530000 	cmp	r3, #0
     400:	0a000003 	beq	414 <memset+0x9c>
     404:	e51b3008 	ldr	r3, [fp, #-8]
     408:	e2033003 	and	r3, r3, #3
     40c:	e3530000 	cmp	r3, #0
     410:	1affffef 	bne	3d4 <memset+0x5c>
     414:	e51b3008 	ldr	r3, [fp, #-8]
     418:	e50b300c 	str	r3, [fp, #-12]
     41c:	ea000008 	b	444 <memset+0xcc>
     420:	e51b300c 	ldr	r3, [fp, #-12]
     424:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     428:	e5832000 	str	r2, [r3]
     42c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     430:	e2433004 	sub	r3, r3, #4
     434:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     438:	e51b300c 	ldr	r3, [fp, #-12]
     43c:	e2833004 	add	r3, r3, #4
     440:	e50b300c 	str	r3, [fp, #-12]
     444:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     448:	e3530003 	cmp	r3, #3
     44c:	8afffff3 	bhi	420 <memset+0xa8>
     450:	e51b300c 	ldr	r3, [fp, #-12]
     454:	e50b3008 	str	r3, [fp, #-8]
     458:	ea000008 	b	480 <memset+0x108>
     45c:	e51b3008 	ldr	r3, [fp, #-8]
     460:	e55b200d 	ldrb	r2, [fp, #-13]
     464:	e5c32000 	strb	r2, [r3]
     468:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     46c:	e2433001 	sub	r3, r3, #1
     470:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     474:	e51b3008 	ldr	r3, [fp, #-8]
     478:	e2833001 	add	r3, r3, #1
     47c:	e50b3008 	str	r3, [fp, #-8]
     480:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     484:	e3530000 	cmp	r3, #0
     488:	1afffff3 	bne	45c <memset+0xe4>
     48c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     490:	e1a00003 	mov	r0, r3
     494:	e28bd000 	add	sp, fp, #0
     498:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     49c:	e12fff1e 	bx	lr

000004a0 <strchr>:
     4a0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4a4:	e28db000 	add	fp, sp, #0
     4a8:	e24dd00c 	sub	sp, sp, #12
     4ac:	e50b0008 	str	r0, [fp, #-8]
     4b0:	e1a03001 	mov	r3, r1
     4b4:	e54b3009 	strb	r3, [fp, #-9]
     4b8:	ea000009 	b	4e4 <strchr+0x44>
     4bc:	e51b3008 	ldr	r3, [fp, #-8]
     4c0:	e5d33000 	ldrb	r3, [r3]
     4c4:	e55b2009 	ldrb	r2, [fp, #-9]
     4c8:	e1520003 	cmp	r2, r3
     4cc:	1a000001 	bne	4d8 <strchr+0x38>
     4d0:	e51b3008 	ldr	r3, [fp, #-8]
     4d4:	ea000007 	b	4f8 <strchr+0x58>
     4d8:	e51b3008 	ldr	r3, [fp, #-8]
     4dc:	e2833001 	add	r3, r3, #1
     4e0:	e50b3008 	str	r3, [fp, #-8]
     4e4:	e51b3008 	ldr	r3, [fp, #-8]
     4e8:	e5d33000 	ldrb	r3, [r3]
     4ec:	e3530000 	cmp	r3, #0
     4f0:	1afffff1 	bne	4bc <strchr+0x1c>
     4f4:	e3a03000 	mov	r3, #0
     4f8:	e1a00003 	mov	r0, r3
     4fc:	e28bd000 	add	sp, fp, #0
     500:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     504:	e12fff1e 	bx	lr

00000508 <gets>:
     508:	e92d4800 	push	{fp, lr}
     50c:	e28db004 	add	fp, sp, #4
     510:	e24dd018 	sub	sp, sp, #24
     514:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     518:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     51c:	e3a03000 	mov	r3, #0
     520:	e50b3008 	str	r3, [fp, #-8]
     524:	ea000016 	b	584 <gets+0x7c>
     528:	e24b300d 	sub	r3, fp, #13
     52c:	e3a02001 	mov	r2, #1
     530:	e1a01003 	mov	r1, r3
     534:	e3a00000 	mov	r0, #0
     538:	eb0000a1 	bl	7c4 <read>
     53c:	e50b000c 	str	r0, [fp, #-12]
     540:	e51b300c 	ldr	r3, [fp, #-12]
     544:	e3530000 	cmp	r3, #0
     548:	da000013 	ble	59c <gets+0x94>
     54c:	e51b3008 	ldr	r3, [fp, #-8]
     550:	e2832001 	add	r2, r3, #1
     554:	e50b2008 	str	r2, [fp, #-8]
     558:	e1a02003 	mov	r2, r3
     55c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     560:	e0833002 	add	r3, r3, r2
     564:	e55b200d 	ldrb	r2, [fp, #-13]
     568:	e5c32000 	strb	r2, [r3]
     56c:	e55b300d 	ldrb	r3, [fp, #-13]
     570:	e353000a 	cmp	r3, #10
     574:	0a000009 	beq	5a0 <gets+0x98>
     578:	e55b300d 	ldrb	r3, [fp, #-13]
     57c:	e353000d 	cmp	r3, #13
     580:	0a000006 	beq	5a0 <gets+0x98>
     584:	e51b3008 	ldr	r3, [fp, #-8]
     588:	e2833001 	add	r3, r3, #1
     58c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     590:	e1520003 	cmp	r2, r3
     594:	caffffe3 	bgt	528 <gets+0x20>
     598:	ea000000 	b	5a0 <gets+0x98>
     59c:	e1a00000 	nop			@ (mov r0, r0)
     5a0:	e51b3008 	ldr	r3, [fp, #-8]
     5a4:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     5a8:	e0823003 	add	r3, r2, r3
     5ac:	e3a02000 	mov	r2, #0
     5b0:	e5c32000 	strb	r2, [r3]
     5b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5b8:	e1a00003 	mov	r0, r3
     5bc:	e24bd004 	sub	sp, fp, #4
     5c0:	e8bd8800 	pop	{fp, pc}

000005c4 <stat>:
     5c4:	e92d4800 	push	{fp, lr}
     5c8:	e28db004 	add	fp, sp, #4
     5cc:	e24dd010 	sub	sp, sp, #16
     5d0:	e50b0010 	str	r0, [fp, #-16]
     5d4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5d8:	e3a01000 	mov	r1, #0
     5dc:	e51b0010 	ldr	r0, [fp, #-16]
     5e0:	eb0000a4 	bl	878 <open>
     5e4:	e50b0008 	str	r0, [fp, #-8]
     5e8:	e51b3008 	ldr	r3, [fp, #-8]
     5ec:	e3530000 	cmp	r3, #0
     5f0:	aa000001 	bge	5fc <stat+0x38>
     5f4:	e3e03000 	mvn	r3, #0
     5f8:	ea000006 	b	618 <stat+0x54>
     5fc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     600:	e51b0008 	ldr	r0, [fp, #-8]
     604:	eb0000b6 	bl	8e4 <fstat>
     608:	e50b000c 	str	r0, [fp, #-12]
     60c:	e51b0008 	ldr	r0, [fp, #-8]
     610:	eb00007d 	bl	80c <close>
     614:	e51b300c 	ldr	r3, [fp, #-12]
     618:	e1a00003 	mov	r0, r3
     61c:	e24bd004 	sub	sp, fp, #4
     620:	e8bd8800 	pop	{fp, pc}

00000624 <atoi>:
     624:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     628:	e28db000 	add	fp, sp, #0
     62c:	e24dd014 	sub	sp, sp, #20
     630:	e50b0010 	str	r0, [fp, #-16]
     634:	e3a03000 	mov	r3, #0
     638:	e50b3008 	str	r3, [fp, #-8]
     63c:	ea00000c 	b	674 <atoi+0x50>
     640:	e51b2008 	ldr	r2, [fp, #-8]
     644:	e1a03002 	mov	r3, r2
     648:	e1a03103 	lsl	r3, r3, #2
     64c:	e0833002 	add	r3, r3, r2
     650:	e1a03083 	lsl	r3, r3, #1
     654:	e1a01003 	mov	r1, r3
     658:	e51b3010 	ldr	r3, [fp, #-16]
     65c:	e2832001 	add	r2, r3, #1
     660:	e50b2010 	str	r2, [fp, #-16]
     664:	e5d33000 	ldrb	r3, [r3]
     668:	e0813003 	add	r3, r1, r3
     66c:	e2433030 	sub	r3, r3, #48	@ 0x30
     670:	e50b3008 	str	r3, [fp, #-8]
     674:	e51b3010 	ldr	r3, [fp, #-16]
     678:	e5d33000 	ldrb	r3, [r3]
     67c:	e353002f 	cmp	r3, #47	@ 0x2f
     680:	9a000003 	bls	694 <atoi+0x70>
     684:	e51b3010 	ldr	r3, [fp, #-16]
     688:	e5d33000 	ldrb	r3, [r3]
     68c:	e3530039 	cmp	r3, #57	@ 0x39
     690:	9affffea 	bls	640 <atoi+0x1c>
     694:	e51b3010 	ldr	r3, [fp, #-16]
     698:	e5d33000 	ldrb	r3, [r3]
     69c:	e3530000 	cmp	r3, #0
     6a0:	1a000001 	bne	6ac <atoi+0x88>
     6a4:	e51b3008 	ldr	r3, [fp, #-8]
     6a8:	ea000000 	b	6b0 <atoi+0x8c>
     6ac:	e3e03000 	mvn	r3, #0
     6b0:	e1a00003 	mov	r0, r3
     6b4:	e28bd000 	add	sp, fp, #0
     6b8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6bc:	e12fff1e 	bx	lr

000006c0 <memmove>:
     6c0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6c4:	e28db000 	add	fp, sp, #0
     6c8:	e24dd01c 	sub	sp, sp, #28
     6cc:	e50b0010 	str	r0, [fp, #-16]
     6d0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     6d4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     6d8:	e51b3010 	ldr	r3, [fp, #-16]
     6dc:	e50b3008 	str	r3, [fp, #-8]
     6e0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     6e4:	e50b300c 	str	r3, [fp, #-12]
     6e8:	ea000007 	b	70c <memmove+0x4c>
     6ec:	e51b200c 	ldr	r2, [fp, #-12]
     6f0:	e2823001 	add	r3, r2, #1
     6f4:	e50b300c 	str	r3, [fp, #-12]
     6f8:	e51b3008 	ldr	r3, [fp, #-8]
     6fc:	e2831001 	add	r1, r3, #1
     700:	e50b1008 	str	r1, [fp, #-8]
     704:	e5d22000 	ldrb	r2, [r2]
     708:	e5c32000 	strb	r2, [r3]
     70c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     710:	e2432001 	sub	r2, r3, #1
     714:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     718:	e3530000 	cmp	r3, #0
     71c:	cafffff2 	bgt	6ec <memmove+0x2c>
     720:	e51b3010 	ldr	r3, [fp, #-16]
     724:	e1a00003 	mov	r0, r3
     728:	e28bd000 	add	sp, fp, #0
     72c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     730:	e12fff1e 	bx	lr

00000734 <fork>:
     734:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     738:	e1a04003 	mov	r4, r3
     73c:	e1a03002 	mov	r3, r2
     740:	e1a02001 	mov	r2, r1
     744:	e1a01000 	mov	r1, r0
     748:	e3a00001 	mov	r0, #1
     74c:	ef000000 	svc	0x00000000
     750:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     754:	e12fff1e 	bx	lr

00000758 <exit>:
     758:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     75c:	e1a04003 	mov	r4, r3
     760:	e1a03002 	mov	r3, r2
     764:	e1a02001 	mov	r2, r1
     768:	e1a01000 	mov	r1, r0
     76c:	e3a00002 	mov	r0, #2
     770:	ef000000 	svc	0x00000000
     774:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     778:	e12fff1e 	bx	lr

0000077c <wait>:
     77c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     780:	e1a04003 	mov	r4, r3
     784:	e1a03002 	mov	r3, r2
     788:	e1a02001 	mov	r2, r1
     78c:	e1a01000 	mov	r1, r0
     790:	e3a00003 	mov	r0, #3
     794:	ef000000 	svc	0x00000000
     798:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     79c:	e12fff1e 	bx	lr

000007a0 <pipe>:
     7a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7a4:	e1a04003 	mov	r4, r3
     7a8:	e1a03002 	mov	r3, r2
     7ac:	e1a02001 	mov	r2, r1
     7b0:	e1a01000 	mov	r1, r0
     7b4:	e3a00004 	mov	r0, #4
     7b8:	ef000000 	svc	0x00000000
     7bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c0:	e12fff1e 	bx	lr

000007c4 <read>:
     7c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7c8:	e1a04003 	mov	r4, r3
     7cc:	e1a03002 	mov	r3, r2
     7d0:	e1a02001 	mov	r2, r1
     7d4:	e1a01000 	mov	r1, r0
     7d8:	e3a00005 	mov	r0, #5
     7dc:	ef000000 	svc	0x00000000
     7e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7e4:	e12fff1e 	bx	lr

000007e8 <write>:
     7e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7ec:	e1a04003 	mov	r4, r3
     7f0:	e1a03002 	mov	r3, r2
     7f4:	e1a02001 	mov	r2, r1
     7f8:	e1a01000 	mov	r1, r0
     7fc:	e3a00010 	mov	r0, #16
     800:	ef000000 	svc	0x00000000
     804:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     808:	e12fff1e 	bx	lr

0000080c <close>:
     80c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     810:	e1a04003 	mov	r4, r3
     814:	e1a03002 	mov	r3, r2
     818:	e1a02001 	mov	r2, r1
     81c:	e1a01000 	mov	r1, r0
     820:	e3a00015 	mov	r0, #21
     824:	ef000000 	svc	0x00000000
     828:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     82c:	e12fff1e 	bx	lr

00000830 <kill>:
     830:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     834:	e1a04003 	mov	r4, r3
     838:	e1a03002 	mov	r3, r2
     83c:	e1a02001 	mov	r2, r1
     840:	e1a01000 	mov	r1, r0
     844:	e3a00006 	mov	r0, #6
     848:	ef000000 	svc	0x00000000
     84c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     850:	e12fff1e 	bx	lr

00000854 <exec>:
     854:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     858:	e1a04003 	mov	r4, r3
     85c:	e1a03002 	mov	r3, r2
     860:	e1a02001 	mov	r2, r1
     864:	e1a01000 	mov	r1, r0
     868:	e3a00007 	mov	r0, #7
     86c:	ef000000 	svc	0x00000000
     870:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     874:	e12fff1e 	bx	lr

00000878 <open>:
     878:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     87c:	e1a04003 	mov	r4, r3
     880:	e1a03002 	mov	r3, r2
     884:	e1a02001 	mov	r2, r1
     888:	e1a01000 	mov	r1, r0
     88c:	e3a0000f 	mov	r0, #15
     890:	ef000000 	svc	0x00000000
     894:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     898:	e12fff1e 	bx	lr

0000089c <mknod>:
     89c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a0:	e1a04003 	mov	r4, r3
     8a4:	e1a03002 	mov	r3, r2
     8a8:	e1a02001 	mov	r2, r1
     8ac:	e1a01000 	mov	r1, r0
     8b0:	e3a00011 	mov	r0, #17
     8b4:	ef000000 	svc	0x00000000
     8b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8bc:	e12fff1e 	bx	lr

000008c0 <unlink>:
     8c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8c4:	e1a04003 	mov	r4, r3
     8c8:	e1a03002 	mov	r3, r2
     8cc:	e1a02001 	mov	r2, r1
     8d0:	e1a01000 	mov	r1, r0
     8d4:	e3a00012 	mov	r0, #18
     8d8:	ef000000 	svc	0x00000000
     8dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e0:	e12fff1e 	bx	lr

000008e4 <fstat>:
     8e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8e8:	e1a04003 	mov	r4, r3
     8ec:	e1a03002 	mov	r3, r2
     8f0:	e1a02001 	mov	r2, r1
     8f4:	e1a01000 	mov	r1, r0
     8f8:	e3a00008 	mov	r0, #8
     8fc:	ef000000 	svc	0x00000000
     900:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     904:	e12fff1e 	bx	lr

00000908 <link>:
     908:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     90c:	e1a04003 	mov	r4, r3
     910:	e1a03002 	mov	r3, r2
     914:	e1a02001 	mov	r2, r1
     918:	e1a01000 	mov	r1, r0
     91c:	e3a00013 	mov	r0, #19
     920:	ef000000 	svc	0x00000000
     924:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     928:	e12fff1e 	bx	lr

0000092c <mkdir>:
     92c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     930:	e1a04003 	mov	r4, r3
     934:	e1a03002 	mov	r3, r2
     938:	e1a02001 	mov	r2, r1
     93c:	e1a01000 	mov	r1, r0
     940:	e3a00014 	mov	r0, #20
     944:	ef000000 	svc	0x00000000
     948:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     94c:	e12fff1e 	bx	lr

00000950 <chdir>:
     950:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     954:	e1a04003 	mov	r4, r3
     958:	e1a03002 	mov	r3, r2
     95c:	e1a02001 	mov	r2, r1
     960:	e1a01000 	mov	r1, r0
     964:	e3a00009 	mov	r0, #9
     968:	ef000000 	svc	0x00000000
     96c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     970:	e12fff1e 	bx	lr

00000974 <dup>:
     974:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     978:	e1a04003 	mov	r4, r3
     97c:	e1a03002 	mov	r3, r2
     980:	e1a02001 	mov	r2, r1
     984:	e1a01000 	mov	r1, r0
     988:	e3a0000a 	mov	r0, #10
     98c:	ef000000 	svc	0x00000000
     990:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     994:	e12fff1e 	bx	lr

00000998 <getpid>:
     998:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     99c:	e1a04003 	mov	r4, r3
     9a0:	e1a03002 	mov	r3, r2
     9a4:	e1a02001 	mov	r2, r1
     9a8:	e1a01000 	mov	r1, r0
     9ac:	e3a0000b 	mov	r0, #11
     9b0:	ef000000 	svc	0x00000000
     9b4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9b8:	e12fff1e 	bx	lr

000009bc <sbrk>:
     9bc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c0:	e1a04003 	mov	r4, r3
     9c4:	e1a03002 	mov	r3, r2
     9c8:	e1a02001 	mov	r2, r1
     9cc:	e1a01000 	mov	r1, r0
     9d0:	e3a0000c 	mov	r0, #12
     9d4:	ef000000 	svc	0x00000000
     9d8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9dc:	e12fff1e 	bx	lr

000009e0 <sleep>:
     9e0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9e4:	e1a04003 	mov	r4, r3
     9e8:	e1a03002 	mov	r3, r2
     9ec:	e1a02001 	mov	r2, r1
     9f0:	e1a01000 	mov	r1, r0
     9f4:	e3a0000d 	mov	r0, #13
     9f8:	ef000000 	svc	0x00000000
     9fc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a00:	e12fff1e 	bx	lr

00000a04 <uptime>:
     a04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a08:	e1a04003 	mov	r4, r3
     a0c:	e1a03002 	mov	r3, r2
     a10:	e1a02001 	mov	r2, r1
     a14:	e1a01000 	mov	r1, r0
     a18:	e3a0000e 	mov	r0, #14
     a1c:	ef000000 	svc	0x00000000
     a20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a24:	e12fff1e 	bx	lr

00000a28 <getprocs>:
     a28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a2c:	e1a04003 	mov	r4, r3
     a30:	e1a03002 	mov	r3, r2
     a34:	e1a02001 	mov	r2, r1
     a38:	e1a01000 	mov	r1, r0
     a3c:	e3a00016 	mov	r0, #22
     a40:	ef000000 	svc	0x00000000
     a44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a48:	e12fff1e 	bx	lr

00000a4c <settickets>:
     a4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a50:	e1a04003 	mov	r4, r3
     a54:	e1a03002 	mov	r3, r2
     a58:	e1a02001 	mov	r2, r1
     a5c:	e1a01000 	mov	r1, r0
     a60:	e3a00017 	mov	r0, #23
     a64:	ef000000 	svc	0x00000000
     a68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a6c:	e12fff1e 	bx	lr

00000a70 <srand>:
     a70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a74:	e1a04003 	mov	r4, r3
     a78:	e1a03002 	mov	r3, r2
     a7c:	e1a02001 	mov	r2, r1
     a80:	e1a01000 	mov	r1, r0
     a84:	e3a00018 	mov	r0, #24
     a88:	ef000000 	svc	0x00000000
     a8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a90:	e12fff1e 	bx	lr

00000a94 <getpinfo>:
     a94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a98:	e1a04003 	mov	r4, r3
     a9c:	e1a03002 	mov	r3, r2
     aa0:	e1a02001 	mov	r2, r1
     aa4:	e1a01000 	mov	r1, r0
     aa8:	e3a00019 	mov	r0, #25
     aac:	ef000000 	svc	0x00000000
     ab0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ab4:	e12fff1e 	bx	lr

00000ab8 <dumppagetable>:
     ab8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     abc:	e1a04003 	mov	r4, r3
     ac0:	e1a03002 	mov	r3, r2
     ac4:	e1a02001 	mov	r2, r1
     ac8:	e1a01000 	mov	r1, r0
     acc:	e3a0001a 	mov	r0, #26
     ad0:	ef000000 	svc	0x00000000
     ad4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ad8:	e12fff1e 	bx	lr

00000adc <putc>:
     adc:	e92d4800 	push	{fp, lr}
     ae0:	e28db004 	add	fp, sp, #4
     ae4:	e24dd008 	sub	sp, sp, #8
     ae8:	e50b0008 	str	r0, [fp, #-8]
     aec:	e1a03001 	mov	r3, r1
     af0:	e54b3009 	strb	r3, [fp, #-9]
     af4:	e24b3009 	sub	r3, fp, #9
     af8:	e3a02001 	mov	r2, #1
     afc:	e1a01003 	mov	r1, r3
     b00:	e51b0008 	ldr	r0, [fp, #-8]
     b04:	ebffff37 	bl	7e8 <write>
     b08:	e1a00000 	nop			@ (mov r0, r0)
     b0c:	e24bd004 	sub	sp, fp, #4
     b10:	e8bd8800 	pop	{fp, pc}

00000b14 <printint>:
     b14:	e92d4800 	push	{fp, lr}
     b18:	e28db004 	add	fp, sp, #4
     b1c:	e24dd030 	sub	sp, sp, #48	@ 0x30
     b20:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     b24:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     b28:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     b2c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     b30:	e3a03000 	mov	r3, #0
     b34:	e50b300c 	str	r3, [fp, #-12]
     b38:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     b3c:	e3530000 	cmp	r3, #0
     b40:	0a000008 	beq	b68 <printint+0x54>
     b44:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b48:	e3530000 	cmp	r3, #0
     b4c:	aa000005 	bge	b68 <printint+0x54>
     b50:	e3a03001 	mov	r3, #1
     b54:	e50b300c 	str	r3, [fp, #-12]
     b58:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b5c:	e2633000 	rsb	r3, r3, #0
     b60:	e50b3010 	str	r3, [fp, #-16]
     b64:	ea000001 	b	b70 <printint+0x5c>
     b68:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b6c:	e50b3010 	str	r3, [fp, #-16]
     b70:	e3a03000 	mov	r3, #0
     b74:	e50b3008 	str	r3, [fp, #-8]
     b78:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     b7c:	e51b3010 	ldr	r3, [fp, #-16]
     b80:	e1a01002 	mov	r1, r2
     b84:	e1a00003 	mov	r0, r3
     b88:	eb0001d5 	bl	12e4 <__aeabi_uidivmod>
     b8c:	e1a03001 	mov	r3, r1
     b90:	e1a01003 	mov	r1, r3
     b94:	e51b3008 	ldr	r3, [fp, #-8]
     b98:	e2832001 	add	r2, r3, #1
     b9c:	e50b2008 	str	r2, [fp, #-8]
     ba0:	e59f20a0 	ldr	r2, [pc, #160]	@ c48 <printint+0x134>
     ba4:	e7d22001 	ldrb	r2, [r2, r1]
     ba8:	e2433004 	sub	r3, r3, #4
     bac:	e083300b 	add	r3, r3, fp
     bb0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     bb4:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     bb8:	e1a01003 	mov	r1, r3
     bbc:	e51b0010 	ldr	r0, [fp, #-16]
     bc0:	eb00018a 	bl	11f0 <__udivsi3>
     bc4:	e1a03000 	mov	r3, r0
     bc8:	e50b3010 	str	r3, [fp, #-16]
     bcc:	e51b3010 	ldr	r3, [fp, #-16]
     bd0:	e3530000 	cmp	r3, #0
     bd4:	1affffe7 	bne	b78 <printint+0x64>
     bd8:	e51b300c 	ldr	r3, [fp, #-12]
     bdc:	e3530000 	cmp	r3, #0
     be0:	0a00000e 	beq	c20 <printint+0x10c>
     be4:	e51b3008 	ldr	r3, [fp, #-8]
     be8:	e2832001 	add	r2, r3, #1
     bec:	e50b2008 	str	r2, [fp, #-8]
     bf0:	e2433004 	sub	r3, r3, #4
     bf4:	e083300b 	add	r3, r3, fp
     bf8:	e3a0202d 	mov	r2, #45	@ 0x2d
     bfc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     c00:	ea000006 	b	c20 <printint+0x10c>
     c04:	e24b2020 	sub	r2, fp, #32
     c08:	e51b3008 	ldr	r3, [fp, #-8]
     c0c:	e0823003 	add	r3, r2, r3
     c10:	e5d33000 	ldrb	r3, [r3]
     c14:	e1a01003 	mov	r1, r3
     c18:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     c1c:	ebffffae 	bl	adc <putc>
     c20:	e51b3008 	ldr	r3, [fp, #-8]
     c24:	e2433001 	sub	r3, r3, #1
     c28:	e50b3008 	str	r3, [fp, #-8]
     c2c:	e51b3008 	ldr	r3, [fp, #-8]
     c30:	e3530000 	cmp	r3, #0
     c34:	aafffff2 	bge	c04 <printint+0xf0>
     c38:	e1a00000 	nop			@ (mov r0, r0)
     c3c:	e1a00000 	nop			@ (mov r0, r0)
     c40:	e24bd004 	sub	sp, fp, #4
     c44:	e8bd8800 	pop	{fp, pc}
     c48:	00001350 	.word	0x00001350

00000c4c <printf>:
     c4c:	e92d000e 	push	{r1, r2, r3}
     c50:	e92d4800 	push	{fp, lr}
     c54:	e28db004 	add	fp, sp, #4
     c58:	e24dd024 	sub	sp, sp, #36	@ 0x24
     c5c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     c60:	e3a03000 	mov	r3, #0
     c64:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c68:	e28b3008 	add	r3, fp, #8
     c6c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c70:	e3a03000 	mov	r3, #0
     c74:	e50b3010 	str	r3, [fp, #-16]
     c78:	ea000074 	b	e50 <printf+0x204>
     c7c:	e59b2004 	ldr	r2, [fp, #4]
     c80:	e51b3010 	ldr	r3, [fp, #-16]
     c84:	e0823003 	add	r3, r2, r3
     c88:	e5d33000 	ldrb	r3, [r3]
     c8c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     c90:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     c94:	e3530000 	cmp	r3, #0
     c98:	1a00000b 	bne	ccc <printf+0x80>
     c9c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ca0:	e3530025 	cmp	r3, #37	@ 0x25
     ca4:	1a000002 	bne	cb4 <printf+0x68>
     ca8:	e3a03025 	mov	r3, #37	@ 0x25
     cac:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     cb0:	ea000063 	b	e44 <printf+0x1f8>
     cb4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cb8:	e6ef3073 	uxtb	r3, r3
     cbc:	e1a01003 	mov	r1, r3
     cc0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cc4:	ebffff84 	bl	adc <putc>
     cc8:	ea00005d 	b	e44 <printf+0x1f8>
     ccc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     cd0:	e3530025 	cmp	r3, #37	@ 0x25
     cd4:	1a00005a 	bne	e44 <printf+0x1f8>
     cd8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cdc:	e3530064 	cmp	r3, #100	@ 0x64
     ce0:	1a00000a 	bne	d10 <printf+0xc4>
     ce4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ce8:	e5933000 	ldr	r3, [r3]
     cec:	e1a01003 	mov	r1, r3
     cf0:	e3a03001 	mov	r3, #1
     cf4:	e3a0200a 	mov	r2, #10
     cf8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cfc:	ebffff84 	bl	b14 <printint>
     d00:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d04:	e2833004 	add	r3, r3, #4
     d08:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d0c:	ea00004a 	b	e3c <printf+0x1f0>
     d10:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d14:	e3530078 	cmp	r3, #120	@ 0x78
     d18:	0a000002 	beq	d28 <printf+0xdc>
     d1c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d20:	e3530070 	cmp	r3, #112	@ 0x70
     d24:	1a00000a 	bne	d54 <printf+0x108>
     d28:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d2c:	e5933000 	ldr	r3, [r3]
     d30:	e1a01003 	mov	r1, r3
     d34:	e3a03000 	mov	r3, #0
     d38:	e3a02010 	mov	r2, #16
     d3c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d40:	ebffff73 	bl	b14 <printint>
     d44:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d48:	e2833004 	add	r3, r3, #4
     d4c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d50:	ea000039 	b	e3c <printf+0x1f0>
     d54:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d58:	e3530073 	cmp	r3, #115	@ 0x73
     d5c:	1a000018 	bne	dc4 <printf+0x178>
     d60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d64:	e5933000 	ldr	r3, [r3]
     d68:	e50b300c 	str	r3, [fp, #-12]
     d6c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d70:	e2833004 	add	r3, r3, #4
     d74:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d78:	e51b300c 	ldr	r3, [fp, #-12]
     d7c:	e3530000 	cmp	r3, #0
     d80:	1a00000a 	bne	db0 <printf+0x164>
     d84:	e59f30f4 	ldr	r3, [pc, #244]	@ e80 <printf+0x234>
     d88:	e50b300c 	str	r3, [fp, #-12]
     d8c:	ea000007 	b	db0 <printf+0x164>
     d90:	e51b300c 	ldr	r3, [fp, #-12]
     d94:	e5d33000 	ldrb	r3, [r3]
     d98:	e1a01003 	mov	r1, r3
     d9c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     da0:	ebffff4d 	bl	adc <putc>
     da4:	e51b300c 	ldr	r3, [fp, #-12]
     da8:	e2833001 	add	r3, r3, #1
     dac:	e50b300c 	str	r3, [fp, #-12]
     db0:	e51b300c 	ldr	r3, [fp, #-12]
     db4:	e5d33000 	ldrb	r3, [r3]
     db8:	e3530000 	cmp	r3, #0
     dbc:	1afffff3 	bne	d90 <printf+0x144>
     dc0:	ea00001d 	b	e3c <printf+0x1f0>
     dc4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dc8:	e3530063 	cmp	r3, #99	@ 0x63
     dcc:	1a000009 	bne	df8 <printf+0x1ac>
     dd0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dd4:	e5933000 	ldr	r3, [r3]
     dd8:	e6ef3073 	uxtb	r3, r3
     ddc:	e1a01003 	mov	r1, r3
     de0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     de4:	ebffff3c 	bl	adc <putc>
     de8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dec:	e2833004 	add	r3, r3, #4
     df0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     df4:	ea000010 	b	e3c <printf+0x1f0>
     df8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dfc:	e3530025 	cmp	r3, #37	@ 0x25
     e00:	1a000005 	bne	e1c <printf+0x1d0>
     e04:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e08:	e6ef3073 	uxtb	r3, r3
     e0c:	e1a01003 	mov	r1, r3
     e10:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e14:	ebffff30 	bl	adc <putc>
     e18:	ea000007 	b	e3c <printf+0x1f0>
     e1c:	e3a01025 	mov	r1, #37	@ 0x25
     e20:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e24:	ebffff2c 	bl	adc <putc>
     e28:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e2c:	e6ef3073 	uxtb	r3, r3
     e30:	e1a01003 	mov	r1, r3
     e34:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e38:	ebffff27 	bl	adc <putc>
     e3c:	e3a03000 	mov	r3, #0
     e40:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     e44:	e51b3010 	ldr	r3, [fp, #-16]
     e48:	e2833001 	add	r3, r3, #1
     e4c:	e50b3010 	str	r3, [fp, #-16]
     e50:	e59b2004 	ldr	r2, [fp, #4]
     e54:	e51b3010 	ldr	r3, [fp, #-16]
     e58:	e0823003 	add	r3, r2, r3
     e5c:	e5d33000 	ldrb	r3, [r3]
     e60:	e3530000 	cmp	r3, #0
     e64:	1affff84 	bne	c7c <printf+0x30>
     e68:	e1a00000 	nop			@ (mov r0, r0)
     e6c:	e1a00000 	nop			@ (mov r0, r0)
     e70:	e24bd004 	sub	sp, fp, #4
     e74:	e8bd4800 	pop	{fp, lr}
     e78:	e28dd00c 	add	sp, sp, #12
     e7c:	e12fff1e 	bx	lr
     e80:	00001348 	.word	0x00001348

00000e84 <free>:
     e84:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     e88:	e28db000 	add	fp, sp, #0
     e8c:	e24dd014 	sub	sp, sp, #20
     e90:	e50b0010 	str	r0, [fp, #-16]
     e94:	e51b3010 	ldr	r3, [fp, #-16]
     e98:	e2433008 	sub	r3, r3, #8
     e9c:	e50b300c 	str	r3, [fp, #-12]
     ea0:	e59f3154 	ldr	r3, [pc, #340]	@ ffc <free+0x178>
     ea4:	e5933000 	ldr	r3, [r3]
     ea8:	e50b3008 	str	r3, [fp, #-8]
     eac:	ea000010 	b	ef4 <free+0x70>
     eb0:	e51b3008 	ldr	r3, [fp, #-8]
     eb4:	e5933000 	ldr	r3, [r3]
     eb8:	e51b2008 	ldr	r2, [fp, #-8]
     ebc:	e1520003 	cmp	r2, r3
     ec0:	3a000008 	bcc	ee8 <free+0x64>
     ec4:	e51b200c 	ldr	r2, [fp, #-12]
     ec8:	e51b3008 	ldr	r3, [fp, #-8]
     ecc:	e1520003 	cmp	r2, r3
     ed0:	8a000010 	bhi	f18 <free+0x94>
     ed4:	e51b3008 	ldr	r3, [fp, #-8]
     ed8:	e5933000 	ldr	r3, [r3]
     edc:	e51b200c 	ldr	r2, [fp, #-12]
     ee0:	e1520003 	cmp	r2, r3
     ee4:	3a00000b 	bcc	f18 <free+0x94>
     ee8:	e51b3008 	ldr	r3, [fp, #-8]
     eec:	e5933000 	ldr	r3, [r3]
     ef0:	e50b3008 	str	r3, [fp, #-8]
     ef4:	e51b200c 	ldr	r2, [fp, #-12]
     ef8:	e51b3008 	ldr	r3, [fp, #-8]
     efc:	e1520003 	cmp	r2, r3
     f00:	9affffea 	bls	eb0 <free+0x2c>
     f04:	e51b3008 	ldr	r3, [fp, #-8]
     f08:	e5933000 	ldr	r3, [r3]
     f0c:	e51b200c 	ldr	r2, [fp, #-12]
     f10:	e1520003 	cmp	r2, r3
     f14:	2affffe5 	bcs	eb0 <free+0x2c>
     f18:	e51b300c 	ldr	r3, [fp, #-12]
     f1c:	e5933004 	ldr	r3, [r3, #4]
     f20:	e1a03183 	lsl	r3, r3, #3
     f24:	e51b200c 	ldr	r2, [fp, #-12]
     f28:	e0822003 	add	r2, r2, r3
     f2c:	e51b3008 	ldr	r3, [fp, #-8]
     f30:	e5933000 	ldr	r3, [r3]
     f34:	e1520003 	cmp	r2, r3
     f38:	1a00000d 	bne	f74 <free+0xf0>
     f3c:	e51b300c 	ldr	r3, [fp, #-12]
     f40:	e5932004 	ldr	r2, [r3, #4]
     f44:	e51b3008 	ldr	r3, [fp, #-8]
     f48:	e5933000 	ldr	r3, [r3]
     f4c:	e5933004 	ldr	r3, [r3, #4]
     f50:	e0822003 	add	r2, r2, r3
     f54:	e51b300c 	ldr	r3, [fp, #-12]
     f58:	e5832004 	str	r2, [r3, #4]
     f5c:	e51b3008 	ldr	r3, [fp, #-8]
     f60:	e5933000 	ldr	r3, [r3]
     f64:	e5932000 	ldr	r2, [r3]
     f68:	e51b300c 	ldr	r3, [fp, #-12]
     f6c:	e5832000 	str	r2, [r3]
     f70:	ea000003 	b	f84 <free+0x100>
     f74:	e51b3008 	ldr	r3, [fp, #-8]
     f78:	e5932000 	ldr	r2, [r3]
     f7c:	e51b300c 	ldr	r3, [fp, #-12]
     f80:	e5832000 	str	r2, [r3]
     f84:	e51b3008 	ldr	r3, [fp, #-8]
     f88:	e5933004 	ldr	r3, [r3, #4]
     f8c:	e1a03183 	lsl	r3, r3, #3
     f90:	e51b2008 	ldr	r2, [fp, #-8]
     f94:	e0823003 	add	r3, r2, r3
     f98:	e51b200c 	ldr	r2, [fp, #-12]
     f9c:	e1520003 	cmp	r2, r3
     fa0:	1a00000b 	bne	fd4 <free+0x150>
     fa4:	e51b3008 	ldr	r3, [fp, #-8]
     fa8:	e5932004 	ldr	r2, [r3, #4]
     fac:	e51b300c 	ldr	r3, [fp, #-12]
     fb0:	e5933004 	ldr	r3, [r3, #4]
     fb4:	e0822003 	add	r2, r2, r3
     fb8:	e51b3008 	ldr	r3, [fp, #-8]
     fbc:	e5832004 	str	r2, [r3, #4]
     fc0:	e51b300c 	ldr	r3, [fp, #-12]
     fc4:	e5932000 	ldr	r2, [r3]
     fc8:	e51b3008 	ldr	r3, [fp, #-8]
     fcc:	e5832000 	str	r2, [r3]
     fd0:	ea000002 	b	fe0 <free+0x15c>
     fd4:	e51b3008 	ldr	r3, [fp, #-8]
     fd8:	e51b200c 	ldr	r2, [fp, #-12]
     fdc:	e5832000 	str	r2, [r3]
     fe0:	e59f2014 	ldr	r2, [pc, #20]	@ ffc <free+0x178>
     fe4:	e51b3008 	ldr	r3, [fp, #-8]
     fe8:	e5823000 	str	r3, [r2]
     fec:	e1a00000 	nop			@ (mov r0, r0)
     ff0:	e28bd000 	add	sp, fp, #0
     ff4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     ff8:	e12fff1e 	bx	lr
     ffc:	0000156c 	.word	0x0000156c

00001000 <morecore>:
    1000:	e92d4800 	push	{fp, lr}
    1004:	e28db004 	add	fp, sp, #4
    1008:	e24dd010 	sub	sp, sp, #16
    100c:	e50b0010 	str	r0, [fp, #-16]
    1010:	e51b3010 	ldr	r3, [fp, #-16]
    1014:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1018:	2a000001 	bcs	1024 <morecore+0x24>
    101c:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1020:	e50b3010 	str	r3, [fp, #-16]
    1024:	e51b3010 	ldr	r3, [fp, #-16]
    1028:	e1a03183 	lsl	r3, r3, #3
    102c:	e1a00003 	mov	r0, r3
    1030:	ebfffe61 	bl	9bc <sbrk>
    1034:	e50b0008 	str	r0, [fp, #-8]
    1038:	e51b3008 	ldr	r3, [fp, #-8]
    103c:	e3730001 	cmn	r3, #1
    1040:	1a000001 	bne	104c <morecore+0x4c>
    1044:	e3a03000 	mov	r3, #0
    1048:	ea00000a 	b	1078 <morecore+0x78>
    104c:	e51b3008 	ldr	r3, [fp, #-8]
    1050:	e50b300c 	str	r3, [fp, #-12]
    1054:	e51b300c 	ldr	r3, [fp, #-12]
    1058:	e51b2010 	ldr	r2, [fp, #-16]
    105c:	e5832004 	str	r2, [r3, #4]
    1060:	e51b300c 	ldr	r3, [fp, #-12]
    1064:	e2833008 	add	r3, r3, #8
    1068:	e1a00003 	mov	r0, r3
    106c:	ebffff84 	bl	e84 <free>
    1070:	e59f300c 	ldr	r3, [pc, #12]	@ 1084 <morecore+0x84>
    1074:	e5933000 	ldr	r3, [r3]
    1078:	e1a00003 	mov	r0, r3
    107c:	e24bd004 	sub	sp, fp, #4
    1080:	e8bd8800 	pop	{fp, pc}
    1084:	0000156c 	.word	0x0000156c

00001088 <malloc>:
    1088:	e92d4800 	push	{fp, lr}
    108c:	e28db004 	add	fp, sp, #4
    1090:	e24dd018 	sub	sp, sp, #24
    1094:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1098:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    109c:	e2833007 	add	r3, r3, #7
    10a0:	e1a031a3 	lsr	r3, r3, #3
    10a4:	e2833001 	add	r3, r3, #1
    10a8:	e50b3010 	str	r3, [fp, #-16]
    10ac:	e59f3134 	ldr	r3, [pc, #308]	@ 11e8 <malloc+0x160>
    10b0:	e5933000 	ldr	r3, [r3]
    10b4:	e50b300c 	str	r3, [fp, #-12]
    10b8:	e51b300c 	ldr	r3, [fp, #-12]
    10bc:	e3530000 	cmp	r3, #0
    10c0:	1a00000b 	bne	10f4 <malloc+0x6c>
    10c4:	e59f3120 	ldr	r3, [pc, #288]	@ 11ec <malloc+0x164>
    10c8:	e50b300c 	str	r3, [fp, #-12]
    10cc:	e59f2114 	ldr	r2, [pc, #276]	@ 11e8 <malloc+0x160>
    10d0:	e51b300c 	ldr	r3, [fp, #-12]
    10d4:	e5823000 	str	r3, [r2]
    10d8:	e59f3108 	ldr	r3, [pc, #264]	@ 11e8 <malloc+0x160>
    10dc:	e5933000 	ldr	r3, [r3]
    10e0:	e59f2104 	ldr	r2, [pc, #260]	@ 11ec <malloc+0x164>
    10e4:	e5823000 	str	r3, [r2]
    10e8:	e59f30fc 	ldr	r3, [pc, #252]	@ 11ec <malloc+0x164>
    10ec:	e3a02000 	mov	r2, #0
    10f0:	e5832004 	str	r2, [r3, #4]
    10f4:	e51b300c 	ldr	r3, [fp, #-12]
    10f8:	e5933000 	ldr	r3, [r3]
    10fc:	e50b3008 	str	r3, [fp, #-8]
    1100:	e51b3008 	ldr	r3, [fp, #-8]
    1104:	e5933004 	ldr	r3, [r3, #4]
    1108:	e51b2010 	ldr	r2, [fp, #-16]
    110c:	e1520003 	cmp	r2, r3
    1110:	8a00001e 	bhi	1190 <malloc+0x108>
    1114:	e51b3008 	ldr	r3, [fp, #-8]
    1118:	e5933004 	ldr	r3, [r3, #4]
    111c:	e51b2010 	ldr	r2, [fp, #-16]
    1120:	e1520003 	cmp	r2, r3
    1124:	1a000004 	bne	113c <malloc+0xb4>
    1128:	e51b3008 	ldr	r3, [fp, #-8]
    112c:	e5932000 	ldr	r2, [r3]
    1130:	e51b300c 	ldr	r3, [fp, #-12]
    1134:	e5832000 	str	r2, [r3]
    1138:	ea00000e 	b	1178 <malloc+0xf0>
    113c:	e51b3008 	ldr	r3, [fp, #-8]
    1140:	e5932004 	ldr	r2, [r3, #4]
    1144:	e51b3010 	ldr	r3, [fp, #-16]
    1148:	e0422003 	sub	r2, r2, r3
    114c:	e51b3008 	ldr	r3, [fp, #-8]
    1150:	e5832004 	str	r2, [r3, #4]
    1154:	e51b3008 	ldr	r3, [fp, #-8]
    1158:	e5933004 	ldr	r3, [r3, #4]
    115c:	e1a03183 	lsl	r3, r3, #3
    1160:	e51b2008 	ldr	r2, [fp, #-8]
    1164:	e0823003 	add	r3, r2, r3
    1168:	e50b3008 	str	r3, [fp, #-8]
    116c:	e51b3008 	ldr	r3, [fp, #-8]
    1170:	e51b2010 	ldr	r2, [fp, #-16]
    1174:	e5832004 	str	r2, [r3, #4]
    1178:	e59f2068 	ldr	r2, [pc, #104]	@ 11e8 <malloc+0x160>
    117c:	e51b300c 	ldr	r3, [fp, #-12]
    1180:	e5823000 	str	r3, [r2]
    1184:	e51b3008 	ldr	r3, [fp, #-8]
    1188:	e2833008 	add	r3, r3, #8
    118c:	ea000012 	b	11dc <malloc+0x154>
    1190:	e59f3050 	ldr	r3, [pc, #80]	@ 11e8 <malloc+0x160>
    1194:	e5933000 	ldr	r3, [r3]
    1198:	e51b2008 	ldr	r2, [fp, #-8]
    119c:	e1520003 	cmp	r2, r3
    11a0:	1a000007 	bne	11c4 <malloc+0x13c>
    11a4:	e51b0010 	ldr	r0, [fp, #-16]
    11a8:	ebffff94 	bl	1000 <morecore>
    11ac:	e50b0008 	str	r0, [fp, #-8]
    11b0:	e51b3008 	ldr	r3, [fp, #-8]
    11b4:	e3530000 	cmp	r3, #0
    11b8:	1a000001 	bne	11c4 <malloc+0x13c>
    11bc:	e3a03000 	mov	r3, #0
    11c0:	ea000005 	b	11dc <malloc+0x154>
    11c4:	e51b3008 	ldr	r3, [fp, #-8]
    11c8:	e50b300c 	str	r3, [fp, #-12]
    11cc:	e51b3008 	ldr	r3, [fp, #-8]
    11d0:	e5933000 	ldr	r3, [r3]
    11d4:	e50b3008 	str	r3, [fp, #-8]
    11d8:	eaffffc8 	b	1100 <malloc+0x78>
    11dc:	e1a00003 	mov	r0, r3
    11e0:	e24bd004 	sub	sp, fp, #4
    11e4:	e8bd8800 	pop	{fp, pc}
    11e8:	0000156c 	.word	0x0000156c
    11ec:	00001564 	.word	0x00001564

000011f0 <__udivsi3>:
    11f0:	e2512001 	subs	r2, r1, #1
    11f4:	012fff1e 	bxeq	lr
    11f8:	3a000036 	bcc	12d8 <__udivsi3+0xe8>
    11fc:	e1500001 	cmp	r0, r1
    1200:	9a000022 	bls	1290 <__udivsi3+0xa0>
    1204:	e1110002 	tst	r1, r2
    1208:	0a000023 	beq	129c <__udivsi3+0xac>
    120c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1210:	01a01181 	lsleq	r1, r1, #3
    1214:	03a03008 	moveq	r3, #8
    1218:	13a03001 	movne	r3, #1
    121c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1220:	31510000 	cmpcc	r1, r0
    1224:	31a01201 	lslcc	r1, r1, #4
    1228:	31a03203 	lslcc	r3, r3, #4
    122c:	3afffffa 	bcc	121c <__udivsi3+0x2c>
    1230:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1234:	31510000 	cmpcc	r1, r0
    1238:	31a01081 	lslcc	r1, r1, #1
    123c:	31a03083 	lslcc	r3, r3, #1
    1240:	3afffffa 	bcc	1230 <__udivsi3+0x40>
    1244:	e3a02000 	mov	r2, #0
    1248:	e1500001 	cmp	r0, r1
    124c:	20400001 	subcs	r0, r0, r1
    1250:	21822003 	orrcs	r2, r2, r3
    1254:	e15000a1 	cmp	r0, r1, lsr #1
    1258:	204000a1 	subcs	r0, r0, r1, lsr #1
    125c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1260:	e1500121 	cmp	r0, r1, lsr #2
    1264:	20400121 	subcs	r0, r0, r1, lsr #2
    1268:	21822123 	orrcs	r2, r2, r3, lsr #2
    126c:	e15001a1 	cmp	r0, r1, lsr #3
    1270:	204001a1 	subcs	r0, r0, r1, lsr #3
    1274:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1278:	e3500000 	cmp	r0, #0
    127c:	11b03223 	lsrsne	r3, r3, #4
    1280:	11a01221 	lsrne	r1, r1, #4
    1284:	1affffef 	bne	1248 <__udivsi3+0x58>
    1288:	e1a00002 	mov	r0, r2
    128c:	e12fff1e 	bx	lr
    1290:	03a00001 	moveq	r0, #1
    1294:	13a00000 	movne	r0, #0
    1298:	e12fff1e 	bx	lr
    129c:	e3510801 	cmp	r1, #65536	@ 0x10000
    12a0:	21a01821 	lsrcs	r1, r1, #16
    12a4:	23a02010 	movcs	r2, #16
    12a8:	33a02000 	movcc	r2, #0
    12ac:	e3510c01 	cmp	r1, #256	@ 0x100
    12b0:	21a01421 	lsrcs	r1, r1, #8
    12b4:	22822008 	addcs	r2, r2, #8
    12b8:	e3510010 	cmp	r1, #16
    12bc:	21a01221 	lsrcs	r1, r1, #4
    12c0:	22822004 	addcs	r2, r2, #4
    12c4:	e3510004 	cmp	r1, #4
    12c8:	82822003 	addhi	r2, r2, #3
    12cc:	908220a1 	addls	r2, r2, r1, lsr #1
    12d0:	e1a00230 	lsr	r0, r0, r2
    12d4:	e12fff1e 	bx	lr
    12d8:	e3500000 	cmp	r0, #0
    12dc:	13e00000 	mvnne	r0, #0
    12e0:	ea000007 	b	1304 <__aeabi_idiv0>

000012e4 <__aeabi_uidivmod>:
    12e4:	e3510000 	cmp	r1, #0
    12e8:	0afffffa 	beq	12d8 <__udivsi3+0xe8>
    12ec:	e92d4003 	push	{r0, r1, lr}
    12f0:	ebffffbe 	bl	11f0 <__udivsi3>
    12f4:	e8bd4006 	pop	{r1, r2, lr}
    12f8:	e0030092 	mul	r3, r2, r0
    12fc:	e0411003 	sub	r1, r1, r3
    1300:	e12fff1e 	bx	lr

00001304 <__aeabi_idiv0>:
    1304:	e12fff1e 	bx	lr
