
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
      f0:	eb000291 	bl	b3c <read>
      f4:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
      f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
      fc:	e3530000 	cmp	r3, #0
     100:	caffffcc 	bgt	38 <wc+0x38>
     104:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     108:	e3530000 	cmp	r3, #0
     10c:	aa000003 	bge	120 <wc+0x120>
     110:	e59f1040 	ldr	r1, [pc, #64]	@ 158 <wc+0x158>
     114:	e3a00001 	mov	r0, #1
     118:	eb000403 	bl	112c <printf>
     11c:	eb00026b 	bl	ad0 <exit>
     120:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     124:	e58d3004 	str	r3, [sp, #4]
     128:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     12c:	e58d3000 	str	r3, [sp]
     130:	e51b3010 	ldr	r3, [fp, #-16]
     134:	e51b200c 	ldr	r2, [fp, #-12]
     138:	e59f101c 	ldr	r1, [pc, #28]	@ 15c <wc+0x15c>
     13c:	e3a00001 	mov	r0, #1
     140:	eb0003f9 	bl	112c <printf>
     144:	e1a00000 	nop			@ (mov r0, r0)
     148:	e24bd004 	sub	sp, fp, #4
     14c:	e8bd8800 	pop	{fp, pc}
     150:	00001844 	.word	0x00001844
     154:	000017e8 	.word	0x000017e8
     158:	000017f0 	.word	0x000017f0
     15c:	00001800 	.word	0x00001800

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
     18c:	eb00024f 	bl	ad0 <exit>
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
     1b8:	eb00028c 	bl	bf0 <open>
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
     1ec:	eb0003ce 	bl	112c <printf>
     1f0:	eb000236 	bl	ad0 <exit>
     1f4:	e51b3008 	ldr	r3, [fp, #-8]
     1f8:	e1a03103 	lsl	r3, r3, #2
     1fc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     200:	e0823003 	add	r3, r2, r3
     204:	e5933000 	ldr	r3, [r3]
     208:	e1a01003 	mov	r1, r3
     20c:	e51b000c 	ldr	r0, [fp, #-12]
     210:	ebffff7a 	bl	0 <wc>
     214:	e51b000c 	ldr	r0, [fp, #-12]
     218:	eb000259 	bl	b84 <close>
     21c:	e51b3008 	ldr	r3, [fp, #-8]
     220:	e2833001 	add	r3, r3, #1
     224:	e50b3008 	str	r3, [fp, #-8]
     228:	e51b2008 	ldr	r2, [fp, #-8]
     22c:	e51b3010 	ldr	r3, [fp, #-16]
     230:	e1520003 	cmp	r2, r3
     234:	baffffd8 	blt	19c <main+0x3c>
     238:	eb000224 	bl	ad0 <exit>
     23c:	00001810 	.word	0x00001810
     240:	00001814 	.word	0x00001814

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
     538:	eb00017f 	bl	b3c <read>
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
     5e0:	eb000182 	bl	bf0 <open>
     5e4:	e50b0008 	str	r0, [fp, #-8]
     5e8:	e51b3008 	ldr	r3, [fp, #-8]
     5ec:	e3530000 	cmp	r3, #0
     5f0:	aa000001 	bge	5fc <stat+0x38>
     5f4:	e3e03000 	mvn	r3, #0
     5f8:	ea000006 	b	618 <stat+0x54>
     5fc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     600:	e51b0008 	ldr	r0, [fp, #-8]
     604:	eb000194 	bl	c5c <fstat>
     608:	e50b000c 	str	r0, [fp, #-12]
     60c:	e51b0008 	ldr	r0, [fp, #-8]
     610:	eb00015b 	bl	b84 <close>
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

00000734 <initiateLock>:
     734:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     738:	e28db000 	add	fp, sp, #0
     73c:	e24dd00c 	sub	sp, sp, #12
     740:	e50b0008 	str	r0, [fp, #-8]
     744:	e51b3008 	ldr	r3, [fp, #-8]
     748:	e3a02000 	mov	r2, #0
     74c:	e5832000 	str	r2, [r3]
     750:	e51b3008 	ldr	r3, [fp, #-8]
     754:	e3a02001 	mov	r2, #1
     758:	e5832004 	str	r2, [r3, #4]
     75c:	e1a00000 	nop			@ (mov r0, r0)
     760:	e28bd000 	add	sp, fp, #0
     764:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     768:	e12fff1e 	bx	lr

0000076c <xchg>:
     76c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     770:	e28db000 	add	fp, sp, #0
     774:	e24dd00c 	sub	sp, sp, #12
     778:	e50b0008 	str	r0, [fp, #-8]
     77c:	e50b100c 	str	r1, [fp, #-12]
     780:	e51b200c 	ldr	r2, [fp, #-12]
     784:	e51b3008 	ldr	r3, [fp, #-8]
     788:	e1931f9f 	ldrex	r1, [r3]
     78c:	e1830f92 	strex	r0, r2, [r3]
     790:	e3500000 	cmp	r0, #0
     794:	1afffffb 	bne	788 <xchg+0x1c>
     798:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     79c:	e1a03001 	mov	r3, r1
     7a0:	e1a00003 	mov	r0, r3
     7a4:	e28bd000 	add	sp, fp, #0
     7a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7ac:	e12fff1e 	bx	lr

000007b0 <acquireLock>:
     7b0:	e92d4800 	push	{fp, lr}
     7b4:	e28db004 	add	fp, sp, #4
     7b8:	e24dd008 	sub	sp, sp, #8
     7bc:	e50b0008 	str	r0, [fp, #-8]
     7c0:	e51b3008 	ldr	r3, [fp, #-8]
     7c4:	e5933004 	ldr	r3, [r3, #4]
     7c8:	e3530000 	cmp	r3, #0
     7cc:	0a000008 	beq	7f4 <acquireLock+0x44>
     7d0:	e1a00000 	nop			@ (mov r0, r0)
     7d4:	e51b3008 	ldr	r3, [fp, #-8]
     7d8:	e3a01001 	mov	r1, #1
     7dc:	e1a00003 	mov	r0, r3
     7e0:	ebffffe1 	bl	76c <xchg>
     7e4:	e1a03000 	mov	r3, r0
     7e8:	e3530000 	cmp	r3, #0
     7ec:	1afffff8 	bne	7d4 <acquireLock+0x24>
     7f0:	ea000000 	b	7f8 <acquireLock+0x48>
     7f4:	e1a00000 	nop			@ (mov r0, r0)
     7f8:	e24bd004 	sub	sp, fp, #4
     7fc:	e8bd8800 	pop	{fp, pc}

00000800 <releaseLock>:
     800:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     804:	e28db000 	add	fp, sp, #0
     808:	e24dd00c 	sub	sp, sp, #12
     80c:	e50b0008 	str	r0, [fp, #-8]
     810:	e51b3008 	ldr	r3, [fp, #-8]
     814:	e5933004 	ldr	r3, [r3, #4]
     818:	e3530000 	cmp	r3, #0
     81c:	0a000007 	beq	840 <releaseLock+0x40>
     820:	e51b3008 	ldr	r3, [fp, #-8]
     824:	e5933000 	ldr	r3, [r3]
     828:	e3530001 	cmp	r3, #1
     82c:	1a000005 	bne	848 <releaseLock+0x48>
     830:	e51b3008 	ldr	r3, [fp, #-8]
     834:	e3a02000 	mov	r2, #0
     838:	e5832000 	str	r2, [r3]
     83c:	ea000002 	b	84c <releaseLock+0x4c>
     840:	e1a00000 	nop			@ (mov r0, r0)
     844:	ea000000 	b	84c <releaseLock+0x4c>
     848:	e1a00000 	nop			@ (mov r0, r0)
     84c:	e28bd000 	add	sp, fp, #0
     850:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     854:	e12fff1e 	bx	lr

00000858 <initiateCondVar>:
     858:	e92d4800 	push	{fp, lr}
     85c:	e28db004 	add	fp, sp, #4
     860:	e24dd008 	sub	sp, sp, #8
     864:	e50b0008 	str	r0, [fp, #-8]
     868:	eb0001b8 	bl	f50 <getChannel>
     86c:	e1a02000 	mov	r2, r0
     870:	e51b3008 	ldr	r3, [fp, #-8]
     874:	e5832000 	str	r2, [r3]
     878:	e51b3008 	ldr	r3, [fp, #-8]
     87c:	e3a02001 	mov	r2, #1
     880:	e5832004 	str	r2, [r3, #4]
     884:	e1a00000 	nop			@ (mov r0, r0)
     888:	e24bd004 	sub	sp, fp, #4
     88c:	e8bd8800 	pop	{fp, pc}

00000890 <condWait>:
     890:	e92d4800 	push	{fp, lr}
     894:	e28db004 	add	fp, sp, #4
     898:	e24dd008 	sub	sp, sp, #8
     89c:	e50b0008 	str	r0, [fp, #-8]
     8a0:	e50b100c 	str	r1, [fp, #-12]
     8a4:	e51b3008 	ldr	r3, [fp, #-8]
     8a8:	e5933004 	ldr	r3, [r3, #4]
     8ac:	e3530000 	cmp	r3, #0
     8b0:	0a00000c 	beq	8e8 <condWait+0x58>
     8b4:	e51b300c 	ldr	r3, [fp, #-12]
     8b8:	e5933004 	ldr	r3, [r3, #4]
     8bc:	e3530000 	cmp	r3, #0
     8c0:	0a000008 	beq	8e8 <condWait+0x58>
     8c4:	e51b000c 	ldr	r0, [fp, #-12]
     8c8:	ebffffcc 	bl	800 <releaseLock>
     8cc:	e51b3008 	ldr	r3, [fp, #-8]
     8d0:	e5933000 	ldr	r3, [r3]
     8d4:	e1a00003 	mov	r0, r3
     8d8:	eb000193 	bl	f2c <sleepChan>
     8dc:	e51b000c 	ldr	r0, [fp, #-12]
     8e0:	ebffffb2 	bl	7b0 <acquireLock>
     8e4:	ea000000 	b	8ec <condWait+0x5c>
     8e8:	e1a00000 	nop			@ (mov r0, r0)
     8ec:	e24bd004 	sub	sp, fp, #4
     8f0:	e8bd8800 	pop	{fp, pc}

000008f4 <broadcast>:
     8f4:	e92d4800 	push	{fp, lr}
     8f8:	e28db004 	add	fp, sp, #4
     8fc:	e24dd008 	sub	sp, sp, #8
     900:	e50b0008 	str	r0, [fp, #-8]
     904:	e51b3008 	ldr	r3, [fp, #-8]
     908:	e5933004 	ldr	r3, [r3, #4]
     90c:	e3530000 	cmp	r3, #0
     910:	0a000004 	beq	928 <broadcast+0x34>
     914:	e51b3008 	ldr	r3, [fp, #-8]
     918:	e5933000 	ldr	r3, [r3]
     91c:	e1a00003 	mov	r0, r3
     920:	eb000193 	bl	f74 <sigChan>
     924:	ea000000 	b	92c <broadcast+0x38>
     928:	e1a00000 	nop			@ (mov r0, r0)
     92c:	e24bd004 	sub	sp, fp, #4
     930:	e8bd8800 	pop	{fp, pc}

00000934 <signal>:
     934:	e92d4800 	push	{fp, lr}
     938:	e28db004 	add	fp, sp, #4
     93c:	e24dd008 	sub	sp, sp, #8
     940:	e50b0008 	str	r0, [fp, #-8]
     944:	e51b3008 	ldr	r3, [fp, #-8]
     948:	e5933004 	ldr	r3, [r3, #4]
     94c:	e3530000 	cmp	r3, #0
     950:	0a000004 	beq	968 <signal+0x34>
     954:	e51b3008 	ldr	r3, [fp, #-8]
     958:	e5933000 	ldr	r3, [r3]
     95c:	e1a00003 	mov	r0, r3
     960:	eb00018c 	bl	f98 <sigOneChan>
     964:	ea000000 	b	96c <signal+0x38>
     968:	e1a00000 	nop			@ (mov r0, r0)
     96c:	e24bd004 	sub	sp, fp, #4
     970:	e8bd8800 	pop	{fp, pc}

00000974 <semInit>:
     974:	e92d4800 	push	{fp, lr}
     978:	e28db004 	add	fp, sp, #4
     97c:	e24dd008 	sub	sp, sp, #8
     980:	e50b0008 	str	r0, [fp, #-8]
     984:	e50b100c 	str	r1, [fp, #-12]
     988:	e51b3008 	ldr	r3, [fp, #-8]
     98c:	e51b200c 	ldr	r2, [fp, #-12]
     990:	e5832000 	str	r2, [r3]
     994:	e51b3008 	ldr	r3, [fp, #-8]
     998:	e2833004 	add	r3, r3, #4
     99c:	e1a00003 	mov	r0, r3
     9a0:	ebffff63 	bl	734 <initiateLock>
     9a4:	e51b3008 	ldr	r3, [fp, #-8]
     9a8:	e283300c 	add	r3, r3, #12
     9ac:	e1a00003 	mov	r0, r3
     9b0:	ebffffa8 	bl	858 <initiateCondVar>
     9b4:	e51b3008 	ldr	r3, [fp, #-8]
     9b8:	e3a02001 	mov	r2, #1
     9bc:	e5832014 	str	r2, [r3, #20]
     9c0:	e1a00000 	nop			@ (mov r0, r0)
     9c4:	e24bd004 	sub	sp, fp, #4
     9c8:	e8bd8800 	pop	{fp, pc}

000009cc <semUp>:
     9cc:	e92d4800 	push	{fp, lr}
     9d0:	e28db004 	add	fp, sp, #4
     9d4:	e24dd008 	sub	sp, sp, #8
     9d8:	e50b0008 	str	r0, [fp, #-8]
     9dc:	e51b3008 	ldr	r3, [fp, #-8]
     9e0:	e2833004 	add	r3, r3, #4
     9e4:	e1a00003 	mov	r0, r3
     9e8:	ebffff70 	bl	7b0 <acquireLock>
     9ec:	e51b3008 	ldr	r3, [fp, #-8]
     9f0:	e5933000 	ldr	r3, [r3]
     9f4:	e2832001 	add	r2, r3, #1
     9f8:	e51b3008 	ldr	r3, [fp, #-8]
     9fc:	e5832000 	str	r2, [r3]
     a00:	e51b3008 	ldr	r3, [fp, #-8]
     a04:	e283300c 	add	r3, r3, #12
     a08:	e1a00003 	mov	r0, r3
     a0c:	ebffffc8 	bl	934 <signal>
     a10:	e51b3008 	ldr	r3, [fp, #-8]
     a14:	e2833004 	add	r3, r3, #4
     a18:	e1a00003 	mov	r0, r3
     a1c:	ebffff77 	bl	800 <releaseLock>
     a20:	e1a00000 	nop			@ (mov r0, r0)
     a24:	e24bd004 	sub	sp, fp, #4
     a28:	e8bd8800 	pop	{fp, pc}

00000a2c <semDown>:
     a2c:	e92d4800 	push	{fp, lr}
     a30:	e28db004 	add	fp, sp, #4
     a34:	e24dd008 	sub	sp, sp, #8
     a38:	e50b0008 	str	r0, [fp, #-8]
     a3c:	e51b3008 	ldr	r3, [fp, #-8]
     a40:	e2833004 	add	r3, r3, #4
     a44:	e1a00003 	mov	r0, r3
     a48:	ebffff58 	bl	7b0 <acquireLock>
     a4c:	ea000006 	b	a6c <semDown+0x40>
     a50:	e51b3008 	ldr	r3, [fp, #-8]
     a54:	e283200c 	add	r2, r3, #12
     a58:	e51b3008 	ldr	r3, [fp, #-8]
     a5c:	e2833004 	add	r3, r3, #4
     a60:	e1a01003 	mov	r1, r3
     a64:	e1a00002 	mov	r0, r2
     a68:	ebffff88 	bl	890 <condWait>
     a6c:	e51b3008 	ldr	r3, [fp, #-8]
     a70:	e5933000 	ldr	r3, [r3]
     a74:	e3530000 	cmp	r3, #0
     a78:	dafffff4 	ble	a50 <semDown+0x24>
     a7c:	e51b3008 	ldr	r3, [fp, #-8]
     a80:	e5933000 	ldr	r3, [r3]
     a84:	e2432001 	sub	r2, r3, #1
     a88:	e51b3008 	ldr	r3, [fp, #-8]
     a8c:	e5832000 	str	r2, [r3]
     a90:	e51b3008 	ldr	r3, [fp, #-8]
     a94:	e2833004 	add	r3, r3, #4
     a98:	e1a00003 	mov	r0, r3
     a9c:	ebffff57 	bl	800 <releaseLock>
     aa0:	e1a00000 	nop			@ (mov r0, r0)
     aa4:	e24bd004 	sub	sp, fp, #4
     aa8:	e8bd8800 	pop	{fp, pc}

00000aac <fork>:
     aac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ab0:	e1a04003 	mov	r4, r3
     ab4:	e1a03002 	mov	r3, r2
     ab8:	e1a02001 	mov	r2, r1
     abc:	e1a01000 	mov	r1, r0
     ac0:	e3a00001 	mov	r0, #1
     ac4:	ef000000 	svc	0x00000000
     ac8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     acc:	e12fff1e 	bx	lr

00000ad0 <exit>:
     ad0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad4:	e1a04003 	mov	r4, r3
     ad8:	e1a03002 	mov	r3, r2
     adc:	e1a02001 	mov	r2, r1
     ae0:	e1a01000 	mov	r1, r0
     ae4:	e3a00002 	mov	r0, #2
     ae8:	ef000000 	svc	0x00000000
     aec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     af0:	e12fff1e 	bx	lr

00000af4 <wait>:
     af4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     af8:	e1a04003 	mov	r4, r3
     afc:	e1a03002 	mov	r3, r2
     b00:	e1a02001 	mov	r2, r1
     b04:	e1a01000 	mov	r1, r0
     b08:	e3a00003 	mov	r0, #3
     b0c:	ef000000 	svc	0x00000000
     b10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b14:	e12fff1e 	bx	lr

00000b18 <pipe>:
     b18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b1c:	e1a04003 	mov	r4, r3
     b20:	e1a03002 	mov	r3, r2
     b24:	e1a02001 	mov	r2, r1
     b28:	e1a01000 	mov	r1, r0
     b2c:	e3a00004 	mov	r0, #4
     b30:	ef000000 	svc	0x00000000
     b34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b38:	e12fff1e 	bx	lr

00000b3c <read>:
     b3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b40:	e1a04003 	mov	r4, r3
     b44:	e1a03002 	mov	r3, r2
     b48:	e1a02001 	mov	r2, r1
     b4c:	e1a01000 	mov	r1, r0
     b50:	e3a00005 	mov	r0, #5
     b54:	ef000000 	svc	0x00000000
     b58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b5c:	e12fff1e 	bx	lr

00000b60 <write>:
     b60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b64:	e1a04003 	mov	r4, r3
     b68:	e1a03002 	mov	r3, r2
     b6c:	e1a02001 	mov	r2, r1
     b70:	e1a01000 	mov	r1, r0
     b74:	e3a00010 	mov	r0, #16
     b78:	ef000000 	svc	0x00000000
     b7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b80:	e12fff1e 	bx	lr

00000b84 <close>:
     b84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b88:	e1a04003 	mov	r4, r3
     b8c:	e1a03002 	mov	r3, r2
     b90:	e1a02001 	mov	r2, r1
     b94:	e1a01000 	mov	r1, r0
     b98:	e3a00015 	mov	r0, #21
     b9c:	ef000000 	svc	0x00000000
     ba0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba4:	e12fff1e 	bx	lr

00000ba8 <kill>:
     ba8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bac:	e1a04003 	mov	r4, r3
     bb0:	e1a03002 	mov	r3, r2
     bb4:	e1a02001 	mov	r2, r1
     bb8:	e1a01000 	mov	r1, r0
     bbc:	e3a00006 	mov	r0, #6
     bc0:	ef000000 	svc	0x00000000
     bc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc8:	e12fff1e 	bx	lr

00000bcc <exec>:
     bcc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bd0:	e1a04003 	mov	r4, r3
     bd4:	e1a03002 	mov	r3, r2
     bd8:	e1a02001 	mov	r2, r1
     bdc:	e1a01000 	mov	r1, r0
     be0:	e3a00007 	mov	r0, #7
     be4:	ef000000 	svc	0x00000000
     be8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bec:	e12fff1e 	bx	lr

00000bf0 <open>:
     bf0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf4:	e1a04003 	mov	r4, r3
     bf8:	e1a03002 	mov	r3, r2
     bfc:	e1a02001 	mov	r2, r1
     c00:	e1a01000 	mov	r1, r0
     c04:	e3a0000f 	mov	r0, #15
     c08:	ef000000 	svc	0x00000000
     c0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c10:	e12fff1e 	bx	lr

00000c14 <mknod>:
     c14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c18:	e1a04003 	mov	r4, r3
     c1c:	e1a03002 	mov	r3, r2
     c20:	e1a02001 	mov	r2, r1
     c24:	e1a01000 	mov	r1, r0
     c28:	e3a00011 	mov	r0, #17
     c2c:	ef000000 	svc	0x00000000
     c30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c34:	e12fff1e 	bx	lr

00000c38 <unlink>:
     c38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c3c:	e1a04003 	mov	r4, r3
     c40:	e1a03002 	mov	r3, r2
     c44:	e1a02001 	mov	r2, r1
     c48:	e1a01000 	mov	r1, r0
     c4c:	e3a00012 	mov	r0, #18
     c50:	ef000000 	svc	0x00000000
     c54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c58:	e12fff1e 	bx	lr

00000c5c <fstat>:
     c5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c60:	e1a04003 	mov	r4, r3
     c64:	e1a03002 	mov	r3, r2
     c68:	e1a02001 	mov	r2, r1
     c6c:	e1a01000 	mov	r1, r0
     c70:	e3a00008 	mov	r0, #8
     c74:	ef000000 	svc	0x00000000
     c78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c7c:	e12fff1e 	bx	lr

00000c80 <link>:
     c80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c84:	e1a04003 	mov	r4, r3
     c88:	e1a03002 	mov	r3, r2
     c8c:	e1a02001 	mov	r2, r1
     c90:	e1a01000 	mov	r1, r0
     c94:	e3a00013 	mov	r0, #19
     c98:	ef000000 	svc	0x00000000
     c9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ca0:	e12fff1e 	bx	lr

00000ca4 <mkdir>:
     ca4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca8:	e1a04003 	mov	r4, r3
     cac:	e1a03002 	mov	r3, r2
     cb0:	e1a02001 	mov	r2, r1
     cb4:	e1a01000 	mov	r1, r0
     cb8:	e3a00014 	mov	r0, #20
     cbc:	ef000000 	svc	0x00000000
     cc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc4:	e12fff1e 	bx	lr

00000cc8 <chdir>:
     cc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ccc:	e1a04003 	mov	r4, r3
     cd0:	e1a03002 	mov	r3, r2
     cd4:	e1a02001 	mov	r2, r1
     cd8:	e1a01000 	mov	r1, r0
     cdc:	e3a00009 	mov	r0, #9
     ce0:	ef000000 	svc	0x00000000
     ce4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce8:	e12fff1e 	bx	lr

00000cec <dup>:
     cec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cf0:	e1a04003 	mov	r4, r3
     cf4:	e1a03002 	mov	r3, r2
     cf8:	e1a02001 	mov	r2, r1
     cfc:	e1a01000 	mov	r1, r0
     d00:	e3a0000a 	mov	r0, #10
     d04:	ef000000 	svc	0x00000000
     d08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d0c:	e12fff1e 	bx	lr

00000d10 <getpid>:
     d10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d14:	e1a04003 	mov	r4, r3
     d18:	e1a03002 	mov	r3, r2
     d1c:	e1a02001 	mov	r2, r1
     d20:	e1a01000 	mov	r1, r0
     d24:	e3a0000b 	mov	r0, #11
     d28:	ef000000 	svc	0x00000000
     d2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d30:	e12fff1e 	bx	lr

00000d34 <sbrk>:
     d34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d38:	e1a04003 	mov	r4, r3
     d3c:	e1a03002 	mov	r3, r2
     d40:	e1a02001 	mov	r2, r1
     d44:	e1a01000 	mov	r1, r0
     d48:	e3a0000c 	mov	r0, #12
     d4c:	ef000000 	svc	0x00000000
     d50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d54:	e12fff1e 	bx	lr

00000d58 <sleep>:
     d58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d5c:	e1a04003 	mov	r4, r3
     d60:	e1a03002 	mov	r3, r2
     d64:	e1a02001 	mov	r2, r1
     d68:	e1a01000 	mov	r1, r0
     d6c:	e3a0000d 	mov	r0, #13
     d70:	ef000000 	svc	0x00000000
     d74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d78:	e12fff1e 	bx	lr

00000d7c <uptime>:
     d7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d80:	e1a04003 	mov	r4, r3
     d84:	e1a03002 	mov	r3, r2
     d88:	e1a02001 	mov	r2, r1
     d8c:	e1a01000 	mov	r1, r0
     d90:	e3a0000e 	mov	r0, #14
     d94:	ef000000 	svc	0x00000000
     d98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d9c:	e12fff1e 	bx	lr

00000da0 <getprocs>:
     da0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da4:	e1a04003 	mov	r4, r3
     da8:	e1a03002 	mov	r3, r2
     dac:	e1a02001 	mov	r2, r1
     db0:	e1a01000 	mov	r1, r0
     db4:	e3a00016 	mov	r0, #22
     db8:	ef000000 	svc	0x00000000
     dbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dc0:	e12fff1e 	bx	lr

00000dc4 <settickets>:
     dc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dc8:	e1a04003 	mov	r4, r3
     dcc:	e1a03002 	mov	r3, r2
     dd0:	e1a02001 	mov	r2, r1
     dd4:	e1a01000 	mov	r1, r0
     dd8:	e3a00017 	mov	r0, #23
     ddc:	ef000000 	svc	0x00000000
     de0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     de4:	e12fff1e 	bx	lr

00000de8 <srand>:
     de8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dec:	e1a04003 	mov	r4, r3
     df0:	e1a03002 	mov	r3, r2
     df4:	e1a02001 	mov	r2, r1
     df8:	e1a01000 	mov	r1, r0
     dfc:	e3a00018 	mov	r0, #24
     e00:	ef000000 	svc	0x00000000
     e04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e08:	e12fff1e 	bx	lr

00000e0c <getpinfo>:
     e0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e10:	e1a04003 	mov	r4, r3
     e14:	e1a03002 	mov	r3, r2
     e18:	e1a02001 	mov	r2, r1
     e1c:	e1a01000 	mov	r1, r0
     e20:	e3a00019 	mov	r0, #25
     e24:	ef000000 	svc	0x00000000
     e28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e2c:	e12fff1e 	bx	lr

00000e30 <dumppagetable>:
     e30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e34:	e1a04003 	mov	r4, r3
     e38:	e1a03002 	mov	r3, r2
     e3c:	e1a02001 	mov	r2, r1
     e40:	e1a01000 	mov	r1, r0
     e44:	e3a0001a 	mov	r0, #26
     e48:	ef000000 	svc	0x00000000
     e4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e50:	e12fff1e 	bx	lr

00000e54 <thread_create>:
     e54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e58:	e1a04003 	mov	r4, r3
     e5c:	e1a03002 	mov	r3, r2
     e60:	e1a02001 	mov	r2, r1
     e64:	e1a01000 	mov	r1, r0
     e68:	e3a0001b 	mov	r0, #27
     e6c:	ef000000 	svc	0x00000000
     e70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e74:	e12fff1e 	bx	lr

00000e78 <thread_exit>:
     e78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e7c:	e1a04003 	mov	r4, r3
     e80:	e1a03002 	mov	r3, r2
     e84:	e1a02001 	mov	r2, r1
     e88:	e1a01000 	mov	r1, r0
     e8c:	e3a0001c 	mov	r0, #28
     e90:	ef000000 	svc	0x00000000
     e94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e98:	e12fff1e 	bx	lr

00000e9c <thread_join>:
     e9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ea0:	e1a04003 	mov	r4, r3
     ea4:	e1a03002 	mov	r3, r2
     ea8:	e1a02001 	mov	r2, r1
     eac:	e1a01000 	mov	r1, r0
     eb0:	e3a0001d 	mov	r0, #29
     eb4:	ef000000 	svc	0x00000000
     eb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ebc:	e12fff1e 	bx	lr

00000ec0 <waitpid>:
     ec0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ec4:	e1a04003 	mov	r4, r3
     ec8:	e1a03002 	mov	r3, r2
     ecc:	e1a02001 	mov	r2, r1
     ed0:	e1a01000 	mov	r1, r0
     ed4:	e3a0001e 	mov	r0, #30
     ed8:	ef000000 	svc	0x00000000
     edc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ee0:	e12fff1e 	bx	lr

00000ee4 <barrier_init>:
     ee4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ee8:	e1a04003 	mov	r4, r3
     eec:	e1a03002 	mov	r3, r2
     ef0:	e1a02001 	mov	r2, r1
     ef4:	e1a01000 	mov	r1, r0
     ef8:	e3a0001f 	mov	r0, #31
     efc:	ef000000 	svc	0x00000000
     f00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f04:	e12fff1e 	bx	lr

00000f08 <barrier_check>:
     f08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f0c:	e1a04003 	mov	r4, r3
     f10:	e1a03002 	mov	r3, r2
     f14:	e1a02001 	mov	r2, r1
     f18:	e1a01000 	mov	r1, r0
     f1c:	e3a00020 	mov	r0, #32
     f20:	ef000000 	svc	0x00000000
     f24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f28:	e12fff1e 	bx	lr

00000f2c <sleepChan>:
     f2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f30:	e1a04003 	mov	r4, r3
     f34:	e1a03002 	mov	r3, r2
     f38:	e1a02001 	mov	r2, r1
     f3c:	e1a01000 	mov	r1, r0
     f40:	e3a00024 	mov	r0, #36	@ 0x24
     f44:	ef000000 	svc	0x00000000
     f48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f4c:	e12fff1e 	bx	lr

00000f50 <getChannel>:
     f50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f54:	e1a04003 	mov	r4, r3
     f58:	e1a03002 	mov	r3, r2
     f5c:	e1a02001 	mov	r2, r1
     f60:	e1a01000 	mov	r1, r0
     f64:	e3a00025 	mov	r0, #37	@ 0x25
     f68:	ef000000 	svc	0x00000000
     f6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f70:	e12fff1e 	bx	lr

00000f74 <sigChan>:
     f74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f78:	e1a04003 	mov	r4, r3
     f7c:	e1a03002 	mov	r3, r2
     f80:	e1a02001 	mov	r2, r1
     f84:	e1a01000 	mov	r1, r0
     f88:	e3a00026 	mov	r0, #38	@ 0x26
     f8c:	ef000000 	svc	0x00000000
     f90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f94:	e12fff1e 	bx	lr

00000f98 <sigOneChan>:
     f98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f9c:	e1a04003 	mov	r4, r3
     fa0:	e1a03002 	mov	r3, r2
     fa4:	e1a02001 	mov	r2, r1
     fa8:	e1a01000 	mov	r1, r0
     fac:	e3a00027 	mov	r0, #39	@ 0x27
     fb0:	ef000000 	svc	0x00000000
     fb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fb8:	e12fff1e 	bx	lr

00000fbc <putc>:
     fbc:	e92d4800 	push	{fp, lr}
     fc0:	e28db004 	add	fp, sp, #4
     fc4:	e24dd008 	sub	sp, sp, #8
     fc8:	e50b0008 	str	r0, [fp, #-8]
     fcc:	e1a03001 	mov	r3, r1
     fd0:	e54b3009 	strb	r3, [fp, #-9]
     fd4:	e24b3009 	sub	r3, fp, #9
     fd8:	e3a02001 	mov	r2, #1
     fdc:	e1a01003 	mov	r1, r3
     fe0:	e51b0008 	ldr	r0, [fp, #-8]
     fe4:	ebfffedd 	bl	b60 <write>
     fe8:	e1a00000 	nop			@ (mov r0, r0)
     fec:	e24bd004 	sub	sp, fp, #4
     ff0:	e8bd8800 	pop	{fp, pc}

00000ff4 <printint>:
     ff4:	e92d4800 	push	{fp, lr}
     ff8:	e28db004 	add	fp, sp, #4
     ffc:	e24dd030 	sub	sp, sp, #48	@ 0x30
    1000:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    1004:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    1008:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    100c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    1010:	e3a03000 	mov	r3, #0
    1014:	e50b300c 	str	r3, [fp, #-12]
    1018:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    101c:	e3530000 	cmp	r3, #0
    1020:	0a000008 	beq	1048 <printint+0x54>
    1024:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1028:	e3530000 	cmp	r3, #0
    102c:	aa000005 	bge	1048 <printint+0x54>
    1030:	e3a03001 	mov	r3, #1
    1034:	e50b300c 	str	r3, [fp, #-12]
    1038:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    103c:	e2633000 	rsb	r3, r3, #0
    1040:	e50b3010 	str	r3, [fp, #-16]
    1044:	ea000001 	b	1050 <printint+0x5c>
    1048:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    104c:	e50b3010 	str	r3, [fp, #-16]
    1050:	e3a03000 	mov	r3, #0
    1054:	e50b3008 	str	r3, [fp, #-8]
    1058:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    105c:	e51b3010 	ldr	r3, [fp, #-16]
    1060:	e1a01002 	mov	r1, r2
    1064:	e1a00003 	mov	r0, r3
    1068:	eb0001d5 	bl	17c4 <__aeabi_uidivmod>
    106c:	e1a03001 	mov	r3, r1
    1070:	e1a01003 	mov	r1, r3
    1074:	e51b3008 	ldr	r3, [fp, #-8]
    1078:	e2832001 	add	r2, r3, #1
    107c:	e50b2008 	str	r2, [fp, #-8]
    1080:	e59f20a0 	ldr	r2, [pc, #160]	@ 1128 <printint+0x134>
    1084:	e7d22001 	ldrb	r2, [r2, r1]
    1088:	e2433004 	sub	r3, r3, #4
    108c:	e083300b 	add	r3, r3, fp
    1090:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1094:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    1098:	e1a01003 	mov	r1, r3
    109c:	e51b0010 	ldr	r0, [fp, #-16]
    10a0:	eb00018a 	bl	16d0 <__udivsi3>
    10a4:	e1a03000 	mov	r3, r0
    10a8:	e50b3010 	str	r3, [fp, #-16]
    10ac:	e51b3010 	ldr	r3, [fp, #-16]
    10b0:	e3530000 	cmp	r3, #0
    10b4:	1affffe7 	bne	1058 <printint+0x64>
    10b8:	e51b300c 	ldr	r3, [fp, #-12]
    10bc:	e3530000 	cmp	r3, #0
    10c0:	0a00000e 	beq	1100 <printint+0x10c>
    10c4:	e51b3008 	ldr	r3, [fp, #-8]
    10c8:	e2832001 	add	r2, r3, #1
    10cc:	e50b2008 	str	r2, [fp, #-8]
    10d0:	e2433004 	sub	r3, r3, #4
    10d4:	e083300b 	add	r3, r3, fp
    10d8:	e3a0202d 	mov	r2, #45	@ 0x2d
    10dc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    10e0:	ea000006 	b	1100 <printint+0x10c>
    10e4:	e24b2020 	sub	r2, fp, #32
    10e8:	e51b3008 	ldr	r3, [fp, #-8]
    10ec:	e0823003 	add	r3, r2, r3
    10f0:	e5d33000 	ldrb	r3, [r3]
    10f4:	e1a01003 	mov	r1, r3
    10f8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    10fc:	ebffffae 	bl	fbc <putc>
    1100:	e51b3008 	ldr	r3, [fp, #-8]
    1104:	e2433001 	sub	r3, r3, #1
    1108:	e50b3008 	str	r3, [fp, #-8]
    110c:	e51b3008 	ldr	r3, [fp, #-8]
    1110:	e3530000 	cmp	r3, #0
    1114:	aafffff2 	bge	10e4 <printint+0xf0>
    1118:	e1a00000 	nop			@ (mov r0, r0)
    111c:	e1a00000 	nop			@ (mov r0, r0)
    1120:	e24bd004 	sub	sp, fp, #4
    1124:	e8bd8800 	pop	{fp, pc}
    1128:	00001830 	.word	0x00001830

0000112c <printf>:
    112c:	e92d000e 	push	{r1, r2, r3}
    1130:	e92d4800 	push	{fp, lr}
    1134:	e28db004 	add	fp, sp, #4
    1138:	e24dd024 	sub	sp, sp, #36	@ 0x24
    113c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1140:	e3a03000 	mov	r3, #0
    1144:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1148:	e28b3008 	add	r3, fp, #8
    114c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1150:	e3a03000 	mov	r3, #0
    1154:	e50b3010 	str	r3, [fp, #-16]
    1158:	ea000074 	b	1330 <printf+0x204>
    115c:	e59b2004 	ldr	r2, [fp, #4]
    1160:	e51b3010 	ldr	r3, [fp, #-16]
    1164:	e0823003 	add	r3, r2, r3
    1168:	e5d33000 	ldrb	r3, [r3]
    116c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1170:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1174:	e3530000 	cmp	r3, #0
    1178:	1a00000b 	bne	11ac <printf+0x80>
    117c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1180:	e3530025 	cmp	r3, #37	@ 0x25
    1184:	1a000002 	bne	1194 <printf+0x68>
    1188:	e3a03025 	mov	r3, #37	@ 0x25
    118c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1190:	ea000063 	b	1324 <printf+0x1f8>
    1194:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1198:	e6ef3073 	uxtb	r3, r3
    119c:	e1a01003 	mov	r1, r3
    11a0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11a4:	ebffff84 	bl	fbc <putc>
    11a8:	ea00005d 	b	1324 <printf+0x1f8>
    11ac:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    11b0:	e3530025 	cmp	r3, #37	@ 0x25
    11b4:	1a00005a 	bne	1324 <printf+0x1f8>
    11b8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11bc:	e3530064 	cmp	r3, #100	@ 0x64
    11c0:	1a00000a 	bne	11f0 <printf+0xc4>
    11c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11c8:	e5933000 	ldr	r3, [r3]
    11cc:	e1a01003 	mov	r1, r3
    11d0:	e3a03001 	mov	r3, #1
    11d4:	e3a0200a 	mov	r2, #10
    11d8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11dc:	ebffff84 	bl	ff4 <printint>
    11e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11e4:	e2833004 	add	r3, r3, #4
    11e8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11ec:	ea00004a 	b	131c <printf+0x1f0>
    11f0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11f4:	e3530078 	cmp	r3, #120	@ 0x78
    11f8:	0a000002 	beq	1208 <printf+0xdc>
    11fc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1200:	e3530070 	cmp	r3, #112	@ 0x70
    1204:	1a00000a 	bne	1234 <printf+0x108>
    1208:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    120c:	e5933000 	ldr	r3, [r3]
    1210:	e1a01003 	mov	r1, r3
    1214:	e3a03000 	mov	r3, #0
    1218:	e3a02010 	mov	r2, #16
    121c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1220:	ebffff73 	bl	ff4 <printint>
    1224:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1228:	e2833004 	add	r3, r3, #4
    122c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1230:	ea000039 	b	131c <printf+0x1f0>
    1234:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1238:	e3530073 	cmp	r3, #115	@ 0x73
    123c:	1a000018 	bne	12a4 <printf+0x178>
    1240:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1244:	e5933000 	ldr	r3, [r3]
    1248:	e50b300c 	str	r3, [fp, #-12]
    124c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1250:	e2833004 	add	r3, r3, #4
    1254:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1258:	e51b300c 	ldr	r3, [fp, #-12]
    125c:	e3530000 	cmp	r3, #0
    1260:	1a00000a 	bne	1290 <printf+0x164>
    1264:	e59f30f4 	ldr	r3, [pc, #244]	@ 1360 <printf+0x234>
    1268:	e50b300c 	str	r3, [fp, #-12]
    126c:	ea000007 	b	1290 <printf+0x164>
    1270:	e51b300c 	ldr	r3, [fp, #-12]
    1274:	e5d33000 	ldrb	r3, [r3]
    1278:	e1a01003 	mov	r1, r3
    127c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1280:	ebffff4d 	bl	fbc <putc>
    1284:	e51b300c 	ldr	r3, [fp, #-12]
    1288:	e2833001 	add	r3, r3, #1
    128c:	e50b300c 	str	r3, [fp, #-12]
    1290:	e51b300c 	ldr	r3, [fp, #-12]
    1294:	e5d33000 	ldrb	r3, [r3]
    1298:	e3530000 	cmp	r3, #0
    129c:	1afffff3 	bne	1270 <printf+0x144>
    12a0:	ea00001d 	b	131c <printf+0x1f0>
    12a4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12a8:	e3530063 	cmp	r3, #99	@ 0x63
    12ac:	1a000009 	bne	12d8 <printf+0x1ac>
    12b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12b4:	e5933000 	ldr	r3, [r3]
    12b8:	e6ef3073 	uxtb	r3, r3
    12bc:	e1a01003 	mov	r1, r3
    12c0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12c4:	ebffff3c 	bl	fbc <putc>
    12c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12cc:	e2833004 	add	r3, r3, #4
    12d0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12d4:	ea000010 	b	131c <printf+0x1f0>
    12d8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12dc:	e3530025 	cmp	r3, #37	@ 0x25
    12e0:	1a000005 	bne	12fc <printf+0x1d0>
    12e4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12e8:	e6ef3073 	uxtb	r3, r3
    12ec:	e1a01003 	mov	r1, r3
    12f0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12f4:	ebffff30 	bl	fbc <putc>
    12f8:	ea000007 	b	131c <printf+0x1f0>
    12fc:	e3a01025 	mov	r1, #37	@ 0x25
    1300:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1304:	ebffff2c 	bl	fbc <putc>
    1308:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    130c:	e6ef3073 	uxtb	r3, r3
    1310:	e1a01003 	mov	r1, r3
    1314:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1318:	ebffff27 	bl	fbc <putc>
    131c:	e3a03000 	mov	r3, #0
    1320:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1324:	e51b3010 	ldr	r3, [fp, #-16]
    1328:	e2833001 	add	r3, r3, #1
    132c:	e50b3010 	str	r3, [fp, #-16]
    1330:	e59b2004 	ldr	r2, [fp, #4]
    1334:	e51b3010 	ldr	r3, [fp, #-16]
    1338:	e0823003 	add	r3, r2, r3
    133c:	e5d33000 	ldrb	r3, [r3]
    1340:	e3530000 	cmp	r3, #0
    1344:	1affff84 	bne	115c <printf+0x30>
    1348:	e1a00000 	nop			@ (mov r0, r0)
    134c:	e1a00000 	nop			@ (mov r0, r0)
    1350:	e24bd004 	sub	sp, fp, #4
    1354:	e8bd4800 	pop	{fp, lr}
    1358:	e28dd00c 	add	sp, sp, #12
    135c:	e12fff1e 	bx	lr
    1360:	00001828 	.word	0x00001828

00001364 <free>:
    1364:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1368:	e28db000 	add	fp, sp, #0
    136c:	e24dd014 	sub	sp, sp, #20
    1370:	e50b0010 	str	r0, [fp, #-16]
    1374:	e51b3010 	ldr	r3, [fp, #-16]
    1378:	e2433008 	sub	r3, r3, #8
    137c:	e50b300c 	str	r3, [fp, #-12]
    1380:	e59f3154 	ldr	r3, [pc, #340]	@ 14dc <free+0x178>
    1384:	e5933000 	ldr	r3, [r3]
    1388:	e50b3008 	str	r3, [fp, #-8]
    138c:	ea000010 	b	13d4 <free+0x70>
    1390:	e51b3008 	ldr	r3, [fp, #-8]
    1394:	e5933000 	ldr	r3, [r3]
    1398:	e51b2008 	ldr	r2, [fp, #-8]
    139c:	e1520003 	cmp	r2, r3
    13a0:	3a000008 	bcc	13c8 <free+0x64>
    13a4:	e51b200c 	ldr	r2, [fp, #-12]
    13a8:	e51b3008 	ldr	r3, [fp, #-8]
    13ac:	e1520003 	cmp	r2, r3
    13b0:	8a000010 	bhi	13f8 <free+0x94>
    13b4:	e51b3008 	ldr	r3, [fp, #-8]
    13b8:	e5933000 	ldr	r3, [r3]
    13bc:	e51b200c 	ldr	r2, [fp, #-12]
    13c0:	e1520003 	cmp	r2, r3
    13c4:	3a00000b 	bcc	13f8 <free+0x94>
    13c8:	e51b3008 	ldr	r3, [fp, #-8]
    13cc:	e5933000 	ldr	r3, [r3]
    13d0:	e50b3008 	str	r3, [fp, #-8]
    13d4:	e51b200c 	ldr	r2, [fp, #-12]
    13d8:	e51b3008 	ldr	r3, [fp, #-8]
    13dc:	e1520003 	cmp	r2, r3
    13e0:	9affffea 	bls	1390 <free+0x2c>
    13e4:	e51b3008 	ldr	r3, [fp, #-8]
    13e8:	e5933000 	ldr	r3, [r3]
    13ec:	e51b200c 	ldr	r2, [fp, #-12]
    13f0:	e1520003 	cmp	r2, r3
    13f4:	2affffe5 	bcs	1390 <free+0x2c>
    13f8:	e51b300c 	ldr	r3, [fp, #-12]
    13fc:	e5933004 	ldr	r3, [r3, #4]
    1400:	e1a03183 	lsl	r3, r3, #3
    1404:	e51b200c 	ldr	r2, [fp, #-12]
    1408:	e0822003 	add	r2, r2, r3
    140c:	e51b3008 	ldr	r3, [fp, #-8]
    1410:	e5933000 	ldr	r3, [r3]
    1414:	e1520003 	cmp	r2, r3
    1418:	1a00000d 	bne	1454 <free+0xf0>
    141c:	e51b300c 	ldr	r3, [fp, #-12]
    1420:	e5932004 	ldr	r2, [r3, #4]
    1424:	e51b3008 	ldr	r3, [fp, #-8]
    1428:	e5933000 	ldr	r3, [r3]
    142c:	e5933004 	ldr	r3, [r3, #4]
    1430:	e0822003 	add	r2, r2, r3
    1434:	e51b300c 	ldr	r3, [fp, #-12]
    1438:	e5832004 	str	r2, [r3, #4]
    143c:	e51b3008 	ldr	r3, [fp, #-8]
    1440:	e5933000 	ldr	r3, [r3]
    1444:	e5932000 	ldr	r2, [r3]
    1448:	e51b300c 	ldr	r3, [fp, #-12]
    144c:	e5832000 	str	r2, [r3]
    1450:	ea000003 	b	1464 <free+0x100>
    1454:	e51b3008 	ldr	r3, [fp, #-8]
    1458:	e5932000 	ldr	r2, [r3]
    145c:	e51b300c 	ldr	r3, [fp, #-12]
    1460:	e5832000 	str	r2, [r3]
    1464:	e51b3008 	ldr	r3, [fp, #-8]
    1468:	e5933004 	ldr	r3, [r3, #4]
    146c:	e1a03183 	lsl	r3, r3, #3
    1470:	e51b2008 	ldr	r2, [fp, #-8]
    1474:	e0823003 	add	r3, r2, r3
    1478:	e51b200c 	ldr	r2, [fp, #-12]
    147c:	e1520003 	cmp	r2, r3
    1480:	1a00000b 	bne	14b4 <free+0x150>
    1484:	e51b3008 	ldr	r3, [fp, #-8]
    1488:	e5932004 	ldr	r2, [r3, #4]
    148c:	e51b300c 	ldr	r3, [fp, #-12]
    1490:	e5933004 	ldr	r3, [r3, #4]
    1494:	e0822003 	add	r2, r2, r3
    1498:	e51b3008 	ldr	r3, [fp, #-8]
    149c:	e5832004 	str	r2, [r3, #4]
    14a0:	e51b300c 	ldr	r3, [fp, #-12]
    14a4:	e5932000 	ldr	r2, [r3]
    14a8:	e51b3008 	ldr	r3, [fp, #-8]
    14ac:	e5832000 	str	r2, [r3]
    14b0:	ea000002 	b	14c0 <free+0x15c>
    14b4:	e51b3008 	ldr	r3, [fp, #-8]
    14b8:	e51b200c 	ldr	r2, [fp, #-12]
    14bc:	e5832000 	str	r2, [r3]
    14c0:	e59f2014 	ldr	r2, [pc, #20]	@ 14dc <free+0x178>
    14c4:	e51b3008 	ldr	r3, [fp, #-8]
    14c8:	e5823000 	str	r3, [r2]
    14cc:	e1a00000 	nop			@ (mov r0, r0)
    14d0:	e28bd000 	add	sp, fp, #0
    14d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    14d8:	e12fff1e 	bx	lr
    14dc:	00001a4c 	.word	0x00001a4c

000014e0 <morecore>:
    14e0:	e92d4800 	push	{fp, lr}
    14e4:	e28db004 	add	fp, sp, #4
    14e8:	e24dd010 	sub	sp, sp, #16
    14ec:	e50b0010 	str	r0, [fp, #-16]
    14f0:	e51b3010 	ldr	r3, [fp, #-16]
    14f4:	e3530a01 	cmp	r3, #4096	@ 0x1000
    14f8:	2a000001 	bcs	1504 <morecore+0x24>
    14fc:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1500:	e50b3010 	str	r3, [fp, #-16]
    1504:	e51b3010 	ldr	r3, [fp, #-16]
    1508:	e1a03183 	lsl	r3, r3, #3
    150c:	e1a00003 	mov	r0, r3
    1510:	ebfffe07 	bl	d34 <sbrk>
    1514:	e50b0008 	str	r0, [fp, #-8]
    1518:	e51b3008 	ldr	r3, [fp, #-8]
    151c:	e3730001 	cmn	r3, #1
    1520:	1a000001 	bne	152c <morecore+0x4c>
    1524:	e3a03000 	mov	r3, #0
    1528:	ea00000a 	b	1558 <morecore+0x78>
    152c:	e51b3008 	ldr	r3, [fp, #-8]
    1530:	e50b300c 	str	r3, [fp, #-12]
    1534:	e51b300c 	ldr	r3, [fp, #-12]
    1538:	e51b2010 	ldr	r2, [fp, #-16]
    153c:	e5832004 	str	r2, [r3, #4]
    1540:	e51b300c 	ldr	r3, [fp, #-12]
    1544:	e2833008 	add	r3, r3, #8
    1548:	e1a00003 	mov	r0, r3
    154c:	ebffff84 	bl	1364 <free>
    1550:	e59f300c 	ldr	r3, [pc, #12]	@ 1564 <morecore+0x84>
    1554:	e5933000 	ldr	r3, [r3]
    1558:	e1a00003 	mov	r0, r3
    155c:	e24bd004 	sub	sp, fp, #4
    1560:	e8bd8800 	pop	{fp, pc}
    1564:	00001a4c 	.word	0x00001a4c

00001568 <malloc>:
    1568:	e92d4800 	push	{fp, lr}
    156c:	e28db004 	add	fp, sp, #4
    1570:	e24dd018 	sub	sp, sp, #24
    1574:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1578:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    157c:	e2833007 	add	r3, r3, #7
    1580:	e1a031a3 	lsr	r3, r3, #3
    1584:	e2833001 	add	r3, r3, #1
    1588:	e50b3010 	str	r3, [fp, #-16]
    158c:	e59f3134 	ldr	r3, [pc, #308]	@ 16c8 <malloc+0x160>
    1590:	e5933000 	ldr	r3, [r3]
    1594:	e50b300c 	str	r3, [fp, #-12]
    1598:	e51b300c 	ldr	r3, [fp, #-12]
    159c:	e3530000 	cmp	r3, #0
    15a0:	1a00000b 	bne	15d4 <malloc+0x6c>
    15a4:	e59f3120 	ldr	r3, [pc, #288]	@ 16cc <malloc+0x164>
    15a8:	e50b300c 	str	r3, [fp, #-12]
    15ac:	e59f2114 	ldr	r2, [pc, #276]	@ 16c8 <malloc+0x160>
    15b0:	e51b300c 	ldr	r3, [fp, #-12]
    15b4:	e5823000 	str	r3, [r2]
    15b8:	e59f3108 	ldr	r3, [pc, #264]	@ 16c8 <malloc+0x160>
    15bc:	e5933000 	ldr	r3, [r3]
    15c0:	e59f2104 	ldr	r2, [pc, #260]	@ 16cc <malloc+0x164>
    15c4:	e5823000 	str	r3, [r2]
    15c8:	e59f30fc 	ldr	r3, [pc, #252]	@ 16cc <malloc+0x164>
    15cc:	e3a02000 	mov	r2, #0
    15d0:	e5832004 	str	r2, [r3, #4]
    15d4:	e51b300c 	ldr	r3, [fp, #-12]
    15d8:	e5933000 	ldr	r3, [r3]
    15dc:	e50b3008 	str	r3, [fp, #-8]
    15e0:	e51b3008 	ldr	r3, [fp, #-8]
    15e4:	e5933004 	ldr	r3, [r3, #4]
    15e8:	e51b2010 	ldr	r2, [fp, #-16]
    15ec:	e1520003 	cmp	r2, r3
    15f0:	8a00001e 	bhi	1670 <malloc+0x108>
    15f4:	e51b3008 	ldr	r3, [fp, #-8]
    15f8:	e5933004 	ldr	r3, [r3, #4]
    15fc:	e51b2010 	ldr	r2, [fp, #-16]
    1600:	e1520003 	cmp	r2, r3
    1604:	1a000004 	bne	161c <malloc+0xb4>
    1608:	e51b3008 	ldr	r3, [fp, #-8]
    160c:	e5932000 	ldr	r2, [r3]
    1610:	e51b300c 	ldr	r3, [fp, #-12]
    1614:	e5832000 	str	r2, [r3]
    1618:	ea00000e 	b	1658 <malloc+0xf0>
    161c:	e51b3008 	ldr	r3, [fp, #-8]
    1620:	e5932004 	ldr	r2, [r3, #4]
    1624:	e51b3010 	ldr	r3, [fp, #-16]
    1628:	e0422003 	sub	r2, r2, r3
    162c:	e51b3008 	ldr	r3, [fp, #-8]
    1630:	e5832004 	str	r2, [r3, #4]
    1634:	e51b3008 	ldr	r3, [fp, #-8]
    1638:	e5933004 	ldr	r3, [r3, #4]
    163c:	e1a03183 	lsl	r3, r3, #3
    1640:	e51b2008 	ldr	r2, [fp, #-8]
    1644:	e0823003 	add	r3, r2, r3
    1648:	e50b3008 	str	r3, [fp, #-8]
    164c:	e51b3008 	ldr	r3, [fp, #-8]
    1650:	e51b2010 	ldr	r2, [fp, #-16]
    1654:	e5832004 	str	r2, [r3, #4]
    1658:	e59f2068 	ldr	r2, [pc, #104]	@ 16c8 <malloc+0x160>
    165c:	e51b300c 	ldr	r3, [fp, #-12]
    1660:	e5823000 	str	r3, [r2]
    1664:	e51b3008 	ldr	r3, [fp, #-8]
    1668:	e2833008 	add	r3, r3, #8
    166c:	ea000012 	b	16bc <malloc+0x154>
    1670:	e59f3050 	ldr	r3, [pc, #80]	@ 16c8 <malloc+0x160>
    1674:	e5933000 	ldr	r3, [r3]
    1678:	e51b2008 	ldr	r2, [fp, #-8]
    167c:	e1520003 	cmp	r2, r3
    1680:	1a000007 	bne	16a4 <malloc+0x13c>
    1684:	e51b0010 	ldr	r0, [fp, #-16]
    1688:	ebffff94 	bl	14e0 <morecore>
    168c:	e50b0008 	str	r0, [fp, #-8]
    1690:	e51b3008 	ldr	r3, [fp, #-8]
    1694:	e3530000 	cmp	r3, #0
    1698:	1a000001 	bne	16a4 <malloc+0x13c>
    169c:	e3a03000 	mov	r3, #0
    16a0:	ea000005 	b	16bc <malloc+0x154>
    16a4:	e51b3008 	ldr	r3, [fp, #-8]
    16a8:	e50b300c 	str	r3, [fp, #-12]
    16ac:	e51b3008 	ldr	r3, [fp, #-8]
    16b0:	e5933000 	ldr	r3, [r3]
    16b4:	e50b3008 	str	r3, [fp, #-8]
    16b8:	eaffffc8 	b	15e0 <malloc+0x78>
    16bc:	e1a00003 	mov	r0, r3
    16c0:	e24bd004 	sub	sp, fp, #4
    16c4:	e8bd8800 	pop	{fp, pc}
    16c8:	00001a4c 	.word	0x00001a4c
    16cc:	00001a44 	.word	0x00001a44

000016d0 <__udivsi3>:
    16d0:	e2512001 	subs	r2, r1, #1
    16d4:	012fff1e 	bxeq	lr
    16d8:	3a000036 	bcc	17b8 <__udivsi3+0xe8>
    16dc:	e1500001 	cmp	r0, r1
    16e0:	9a000022 	bls	1770 <__udivsi3+0xa0>
    16e4:	e1110002 	tst	r1, r2
    16e8:	0a000023 	beq	177c <__udivsi3+0xac>
    16ec:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    16f0:	01a01181 	lsleq	r1, r1, #3
    16f4:	03a03008 	moveq	r3, #8
    16f8:	13a03001 	movne	r3, #1
    16fc:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1700:	31510000 	cmpcc	r1, r0
    1704:	31a01201 	lslcc	r1, r1, #4
    1708:	31a03203 	lslcc	r3, r3, #4
    170c:	3afffffa 	bcc	16fc <__udivsi3+0x2c>
    1710:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1714:	31510000 	cmpcc	r1, r0
    1718:	31a01081 	lslcc	r1, r1, #1
    171c:	31a03083 	lslcc	r3, r3, #1
    1720:	3afffffa 	bcc	1710 <__udivsi3+0x40>
    1724:	e3a02000 	mov	r2, #0
    1728:	e1500001 	cmp	r0, r1
    172c:	20400001 	subcs	r0, r0, r1
    1730:	21822003 	orrcs	r2, r2, r3
    1734:	e15000a1 	cmp	r0, r1, lsr #1
    1738:	204000a1 	subcs	r0, r0, r1, lsr #1
    173c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1740:	e1500121 	cmp	r0, r1, lsr #2
    1744:	20400121 	subcs	r0, r0, r1, lsr #2
    1748:	21822123 	orrcs	r2, r2, r3, lsr #2
    174c:	e15001a1 	cmp	r0, r1, lsr #3
    1750:	204001a1 	subcs	r0, r0, r1, lsr #3
    1754:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1758:	e3500000 	cmp	r0, #0
    175c:	11b03223 	lsrsne	r3, r3, #4
    1760:	11a01221 	lsrne	r1, r1, #4
    1764:	1affffef 	bne	1728 <__udivsi3+0x58>
    1768:	e1a00002 	mov	r0, r2
    176c:	e12fff1e 	bx	lr
    1770:	03a00001 	moveq	r0, #1
    1774:	13a00000 	movne	r0, #0
    1778:	e12fff1e 	bx	lr
    177c:	e3510801 	cmp	r1, #65536	@ 0x10000
    1780:	21a01821 	lsrcs	r1, r1, #16
    1784:	23a02010 	movcs	r2, #16
    1788:	33a02000 	movcc	r2, #0
    178c:	e3510c01 	cmp	r1, #256	@ 0x100
    1790:	21a01421 	lsrcs	r1, r1, #8
    1794:	22822008 	addcs	r2, r2, #8
    1798:	e3510010 	cmp	r1, #16
    179c:	21a01221 	lsrcs	r1, r1, #4
    17a0:	22822004 	addcs	r2, r2, #4
    17a4:	e3510004 	cmp	r1, #4
    17a8:	82822003 	addhi	r2, r2, #3
    17ac:	908220a1 	addls	r2, r2, r1, lsr #1
    17b0:	e1a00230 	lsr	r0, r0, r2
    17b4:	e12fff1e 	bx	lr
    17b8:	e3500000 	cmp	r0, #0
    17bc:	13e00000 	mvnne	r0, #0
    17c0:	ea000007 	b	17e4 <__aeabi_idiv0>

000017c4 <__aeabi_uidivmod>:
    17c4:	e3510000 	cmp	r1, #0
    17c8:	0afffffa 	beq	17b8 <__udivsi3+0xe8>
    17cc:	e92d4003 	push	{r0, r1, lr}
    17d0:	ebffffbe 	bl	16d0 <__udivsi3>
    17d4:	e8bd4006 	pop	{r1, r2, lr}
    17d8:	e0030092 	mul	r3, r2, r0
    17dc:	e0411003 	sub	r1, r1, r3
    17e0:	e12fff1e 	bx	lr

000017e4 <__aeabi_idiv0>:
    17e4:	e12fff1e 	bx	lr
