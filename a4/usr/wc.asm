
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
      f0:	eb000258 	bl	a58 <read>
      f4:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
      f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
      fc:	e3530000 	cmp	r3, #0
     100:	caffffcc 	bgt	38 <wc+0x38>
     104:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     108:	e3530000 	cmp	r3, #0
     10c:	aa000003 	bge	120 <wc+0x120>
     110:	e59f1040 	ldr	r1, [pc, #64]	@ 158 <wc+0x158>
     114:	e3a00001 	mov	r0, #1
     118:	eb0003ca 	bl	1048 <printf>
     11c:	eb000232 	bl	9ec <exit>
     120:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     124:	e58d3004 	str	r3, [sp, #4]
     128:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     12c:	e58d3000 	str	r3, [sp]
     130:	e51b3010 	ldr	r3, [fp, #-16]
     134:	e51b200c 	ldr	r2, [fp, #-12]
     138:	e59f101c 	ldr	r1, [pc, #28]	@ 15c <wc+0x15c>
     13c:	e3a00001 	mov	r0, #1
     140:	eb0003c0 	bl	1048 <printf>
     144:	e1a00000 	nop			@ (mov r0, r0)
     148:	e24bd004 	sub	sp, fp, #4
     14c:	e8bd8800 	pop	{fp, pc}
     150:	00001760 	.word	0x00001760
     154:	00001704 	.word	0x00001704
     158:	0000170c 	.word	0x0000170c
     15c:	0000171c 	.word	0x0000171c

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
     18c:	eb000216 	bl	9ec <exit>
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
     1b8:	eb000253 	bl	b0c <open>
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
     1ec:	eb000395 	bl	1048 <printf>
     1f0:	eb0001fd 	bl	9ec <exit>
     1f4:	e51b3008 	ldr	r3, [fp, #-8]
     1f8:	e1a03103 	lsl	r3, r3, #2
     1fc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     200:	e0823003 	add	r3, r2, r3
     204:	e5933000 	ldr	r3, [r3]
     208:	e1a01003 	mov	r1, r3
     20c:	e51b000c 	ldr	r0, [fp, #-12]
     210:	ebffff7a 	bl	0 <wc>
     214:	e51b000c 	ldr	r0, [fp, #-12]
     218:	eb000220 	bl	aa0 <close>
     21c:	e51b3008 	ldr	r3, [fp, #-8]
     220:	e2833001 	add	r3, r3, #1
     224:	e50b3008 	str	r3, [fp, #-8]
     228:	e51b2008 	ldr	r2, [fp, #-8]
     22c:	e51b3010 	ldr	r3, [fp, #-16]
     230:	e1520003 	cmp	r2, r3
     234:	baffffd8 	blt	19c <main+0x3c>
     238:	eb0001eb 	bl	9ec <exit>
     23c:	0000172c 	.word	0x0000172c
     240:	00001730 	.word	0x00001730

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
     538:	eb000146 	bl	a58 <read>
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
     5e0:	eb000149 	bl	b0c <open>
     5e4:	e50b0008 	str	r0, [fp, #-8]
     5e8:	e51b3008 	ldr	r3, [fp, #-8]
     5ec:	e3530000 	cmp	r3, #0
     5f0:	aa000001 	bge	5fc <stat+0x38>
     5f4:	e3e03000 	mvn	r3, #0
     5f8:	ea000006 	b	618 <stat+0x54>
     5fc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     600:	e51b0008 	ldr	r0, [fp, #-8]
     604:	eb00015b 	bl	b78 <fstat>
     608:	e50b000c 	str	r0, [fp, #-12]
     60c:	e51b0008 	ldr	r0, [fp, #-8]
     610:	eb000122 	bl	aa0 <close>
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

0000076c <acquireLock>:
     76c:	e92d4800 	push	{fp, lr}
     770:	e28db004 	add	fp, sp, #4
     774:	e24dd008 	sub	sp, sp, #8
     778:	e50b0008 	str	r0, [fp, #-8]
     77c:	ea000001 	b	788 <acquireLock+0x1c>
     780:	e3a00001 	mov	r0, #1
     784:	eb00013a 	bl	c74 <sleep>
     788:	e51b2008 	ldr	r2, [fp, #-8]
     78c:	e3a01001 	mov	r1, #1
     790:	e1923f9f 	ldrex	r3, [r2]
     794:	e1820f91 	strex	r0, r1, [r2]
     798:	e3500000 	cmp	r0, #0
     79c:	1afffffb 	bne	790 <acquireLock+0x24>
     7a0:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     7a4:	e3530001 	cmp	r3, #1
     7a8:	0afffff4 	beq	780 <acquireLock+0x14>
     7ac:	e1a00000 	nop			@ (mov r0, r0)
     7b0:	e1a00000 	nop			@ (mov r0, r0)
     7b4:	e24bd004 	sub	sp, fp, #4
     7b8:	e8bd8800 	pop	{fp, pc}

000007bc <releaseLock>:
     7bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     7c0:	e28db000 	add	fp, sp, #0
     7c4:	e24dd00c 	sub	sp, sp, #12
     7c8:	e50b0008 	str	r0, [fp, #-8]
     7cc:	e51b3008 	ldr	r3, [fp, #-8]
     7d0:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     7d4:	e3a02000 	mov	r2, #0
     7d8:	e5832000 	str	r2, [r3]
     7dc:	e1a00000 	nop			@ (mov r0, r0)
     7e0:	e28bd000 	add	sp, fp, #0
     7e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7e8:	e12fff1e 	bx	lr

000007ec <initiateCondVar>:
     7ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     7f0:	e28db000 	add	fp, sp, #0
     7f4:	e24dd00c 	sub	sp, sp, #12
     7f8:	e50b0008 	str	r0, [fp, #-8]
     7fc:	e51b3008 	ldr	r3, [fp, #-8]
     800:	e3a02000 	mov	r2, #0
     804:	e5832000 	str	r2, [r3]
     808:	e51b3008 	ldr	r3, [fp, #-8]
     80c:	e3a02001 	mov	r2, #1
     810:	e5832004 	str	r2, [r3, #4]
     814:	e1a00000 	nop			@ (mov r0, r0)
     818:	e28bd000 	add	sp, fp, #0
     81c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     820:	e12fff1e 	bx	lr

00000824 <condWait>:
     824:	e92d4800 	push	{fp, lr}
     828:	e28db004 	add	fp, sp, #4
     82c:	e24dd008 	sub	sp, sp, #8
     830:	e50b0008 	str	r0, [fp, #-8]
     834:	e50b100c 	str	r1, [fp, #-12]
     838:	e51b000c 	ldr	r0, [fp, #-12]
     83c:	ebffffde 	bl	7bc <releaseLock>
     840:	e51b3008 	ldr	r3, [fp, #-8]
     844:	e5933000 	ldr	r3, [r3]
     848:	e1a00003 	mov	r0, r3
     84c:	eb00017d 	bl	e48 <sleepChan>
     850:	e51b000c 	ldr	r0, [fp, #-12]
     854:	ebffffc4 	bl	76c <acquireLock>
     858:	e1a00000 	nop			@ (mov r0, r0)
     85c:	e24bd004 	sub	sp, fp, #4
     860:	e8bd8800 	pop	{fp, pc}

00000864 <broadcast>:
     864:	e92d4800 	push	{fp, lr}
     868:	e28db004 	add	fp, sp, #4
     86c:	e24dd008 	sub	sp, sp, #8
     870:	e50b0008 	str	r0, [fp, #-8]
     874:	e51b3008 	ldr	r3, [fp, #-8]
     878:	e5933000 	ldr	r3, [r3]
     87c:	e1a00003 	mov	r0, r3
     880:	eb000182 	bl	e90 <sigChan>
     884:	e1a00000 	nop			@ (mov r0, r0)
     888:	e24bd004 	sub	sp, fp, #4
     88c:	e8bd8800 	pop	{fp, pc}

00000890 <semInit>:
     890:	e92d4800 	push	{fp, lr}
     894:	e28db004 	add	fp, sp, #4
     898:	e24dd008 	sub	sp, sp, #8
     89c:	e50b0008 	str	r0, [fp, #-8]
     8a0:	e50b100c 	str	r1, [fp, #-12]
     8a4:	e51b3008 	ldr	r3, [fp, #-8]
     8a8:	e51b200c 	ldr	r2, [fp, #-12]
     8ac:	e5832000 	str	r2, [r3]
     8b0:	e51b3008 	ldr	r3, [fp, #-8]
     8b4:	e2833004 	add	r3, r3, #4
     8b8:	e1a00003 	mov	r0, r3
     8bc:	ebffff9c 	bl	734 <initiateLock>
     8c0:	e51b3008 	ldr	r3, [fp, #-8]
     8c4:	e283300c 	add	r3, r3, #12
     8c8:	e1a00003 	mov	r0, r3
     8cc:	ebffffc6 	bl	7ec <initiateCondVar>
     8d0:	e51b3008 	ldr	r3, [fp, #-8]
     8d4:	e3a02001 	mov	r2, #1
     8d8:	e5832014 	str	r2, [r3, #20]
     8dc:	e1a00000 	nop			@ (mov r0, r0)
     8e0:	e24bd004 	sub	sp, fp, #4
     8e4:	e8bd8800 	pop	{fp, pc}

000008e8 <semUp>:
     8e8:	e92d4800 	push	{fp, lr}
     8ec:	e28db004 	add	fp, sp, #4
     8f0:	e24dd008 	sub	sp, sp, #8
     8f4:	e50b0008 	str	r0, [fp, #-8]
     8f8:	e51b3008 	ldr	r3, [fp, #-8]
     8fc:	e2833004 	add	r3, r3, #4
     900:	e1a00003 	mov	r0, r3
     904:	ebffff98 	bl	76c <acquireLock>
     908:	e51b3008 	ldr	r3, [fp, #-8]
     90c:	e5933000 	ldr	r3, [r3]
     910:	e2832001 	add	r2, r3, #1
     914:	e51b3008 	ldr	r3, [fp, #-8]
     918:	e5832000 	str	r2, [r3]
     91c:	e51b3008 	ldr	r3, [fp, #-8]
     920:	e283300c 	add	r3, r3, #12
     924:	e1a00003 	mov	r0, r3
     928:	ebffffcd 	bl	864 <broadcast>
     92c:	e51b3008 	ldr	r3, [fp, #-8]
     930:	e2833004 	add	r3, r3, #4
     934:	e1a00003 	mov	r0, r3
     938:	ebffff9f 	bl	7bc <releaseLock>
     93c:	e1a00000 	nop			@ (mov r0, r0)
     940:	e24bd004 	sub	sp, fp, #4
     944:	e8bd8800 	pop	{fp, pc}

00000948 <semDown>:
     948:	e92d4800 	push	{fp, lr}
     94c:	e28db004 	add	fp, sp, #4
     950:	e24dd008 	sub	sp, sp, #8
     954:	e50b0008 	str	r0, [fp, #-8]
     958:	e51b3008 	ldr	r3, [fp, #-8]
     95c:	e2833004 	add	r3, r3, #4
     960:	e1a00003 	mov	r0, r3
     964:	ebffff80 	bl	76c <acquireLock>
     968:	ea000006 	b	988 <semDown+0x40>
     96c:	e51b3008 	ldr	r3, [fp, #-8]
     970:	e283200c 	add	r2, r3, #12
     974:	e51b3008 	ldr	r3, [fp, #-8]
     978:	e2833004 	add	r3, r3, #4
     97c:	e1a01003 	mov	r1, r3
     980:	e1a00002 	mov	r0, r2
     984:	ebffffa6 	bl	824 <condWait>
     988:	e51b3008 	ldr	r3, [fp, #-8]
     98c:	e5933000 	ldr	r3, [r3]
     990:	e3530000 	cmp	r3, #0
     994:	dafffff4 	ble	96c <semDown+0x24>
     998:	e51b3008 	ldr	r3, [fp, #-8]
     99c:	e5933000 	ldr	r3, [r3]
     9a0:	e2432001 	sub	r2, r3, #1
     9a4:	e51b3008 	ldr	r3, [fp, #-8]
     9a8:	e5832000 	str	r2, [r3]
     9ac:	e51b3008 	ldr	r3, [fp, #-8]
     9b0:	e2833004 	add	r3, r3, #4
     9b4:	e1a00003 	mov	r0, r3
     9b8:	ebffff7f 	bl	7bc <releaseLock>
     9bc:	e1a00000 	nop			@ (mov r0, r0)
     9c0:	e24bd004 	sub	sp, fp, #4
     9c4:	e8bd8800 	pop	{fp, pc}

000009c8 <fork>:
     9c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9cc:	e1a04003 	mov	r4, r3
     9d0:	e1a03002 	mov	r3, r2
     9d4:	e1a02001 	mov	r2, r1
     9d8:	e1a01000 	mov	r1, r0
     9dc:	e3a00001 	mov	r0, #1
     9e0:	ef000000 	svc	0x00000000
     9e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e8:	e12fff1e 	bx	lr

000009ec <exit>:
     9ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f0:	e1a04003 	mov	r4, r3
     9f4:	e1a03002 	mov	r3, r2
     9f8:	e1a02001 	mov	r2, r1
     9fc:	e1a01000 	mov	r1, r0
     a00:	e3a00002 	mov	r0, #2
     a04:	ef000000 	svc	0x00000000
     a08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a0c:	e12fff1e 	bx	lr

00000a10 <wait>:
     a10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a14:	e1a04003 	mov	r4, r3
     a18:	e1a03002 	mov	r3, r2
     a1c:	e1a02001 	mov	r2, r1
     a20:	e1a01000 	mov	r1, r0
     a24:	e3a00003 	mov	r0, #3
     a28:	ef000000 	svc	0x00000000
     a2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a30:	e12fff1e 	bx	lr

00000a34 <pipe>:
     a34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a38:	e1a04003 	mov	r4, r3
     a3c:	e1a03002 	mov	r3, r2
     a40:	e1a02001 	mov	r2, r1
     a44:	e1a01000 	mov	r1, r0
     a48:	e3a00004 	mov	r0, #4
     a4c:	ef000000 	svc	0x00000000
     a50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a54:	e12fff1e 	bx	lr

00000a58 <read>:
     a58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a5c:	e1a04003 	mov	r4, r3
     a60:	e1a03002 	mov	r3, r2
     a64:	e1a02001 	mov	r2, r1
     a68:	e1a01000 	mov	r1, r0
     a6c:	e3a00005 	mov	r0, #5
     a70:	ef000000 	svc	0x00000000
     a74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a78:	e12fff1e 	bx	lr

00000a7c <write>:
     a7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a80:	e1a04003 	mov	r4, r3
     a84:	e1a03002 	mov	r3, r2
     a88:	e1a02001 	mov	r2, r1
     a8c:	e1a01000 	mov	r1, r0
     a90:	e3a00010 	mov	r0, #16
     a94:	ef000000 	svc	0x00000000
     a98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a9c:	e12fff1e 	bx	lr

00000aa0 <close>:
     aa0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa4:	e1a04003 	mov	r4, r3
     aa8:	e1a03002 	mov	r3, r2
     aac:	e1a02001 	mov	r2, r1
     ab0:	e1a01000 	mov	r1, r0
     ab4:	e3a00015 	mov	r0, #21
     ab8:	ef000000 	svc	0x00000000
     abc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac0:	e12fff1e 	bx	lr

00000ac4 <kill>:
     ac4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac8:	e1a04003 	mov	r4, r3
     acc:	e1a03002 	mov	r3, r2
     ad0:	e1a02001 	mov	r2, r1
     ad4:	e1a01000 	mov	r1, r0
     ad8:	e3a00006 	mov	r0, #6
     adc:	ef000000 	svc	0x00000000
     ae0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae4:	e12fff1e 	bx	lr

00000ae8 <exec>:
     ae8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aec:	e1a04003 	mov	r4, r3
     af0:	e1a03002 	mov	r3, r2
     af4:	e1a02001 	mov	r2, r1
     af8:	e1a01000 	mov	r1, r0
     afc:	e3a00007 	mov	r0, #7
     b00:	ef000000 	svc	0x00000000
     b04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b08:	e12fff1e 	bx	lr

00000b0c <open>:
     b0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b10:	e1a04003 	mov	r4, r3
     b14:	e1a03002 	mov	r3, r2
     b18:	e1a02001 	mov	r2, r1
     b1c:	e1a01000 	mov	r1, r0
     b20:	e3a0000f 	mov	r0, #15
     b24:	ef000000 	svc	0x00000000
     b28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b2c:	e12fff1e 	bx	lr

00000b30 <mknod>:
     b30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b34:	e1a04003 	mov	r4, r3
     b38:	e1a03002 	mov	r3, r2
     b3c:	e1a02001 	mov	r2, r1
     b40:	e1a01000 	mov	r1, r0
     b44:	e3a00011 	mov	r0, #17
     b48:	ef000000 	svc	0x00000000
     b4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b50:	e12fff1e 	bx	lr

00000b54 <unlink>:
     b54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b58:	e1a04003 	mov	r4, r3
     b5c:	e1a03002 	mov	r3, r2
     b60:	e1a02001 	mov	r2, r1
     b64:	e1a01000 	mov	r1, r0
     b68:	e3a00012 	mov	r0, #18
     b6c:	ef000000 	svc	0x00000000
     b70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b74:	e12fff1e 	bx	lr

00000b78 <fstat>:
     b78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b7c:	e1a04003 	mov	r4, r3
     b80:	e1a03002 	mov	r3, r2
     b84:	e1a02001 	mov	r2, r1
     b88:	e1a01000 	mov	r1, r0
     b8c:	e3a00008 	mov	r0, #8
     b90:	ef000000 	svc	0x00000000
     b94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b98:	e12fff1e 	bx	lr

00000b9c <link>:
     b9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba0:	e1a04003 	mov	r4, r3
     ba4:	e1a03002 	mov	r3, r2
     ba8:	e1a02001 	mov	r2, r1
     bac:	e1a01000 	mov	r1, r0
     bb0:	e3a00013 	mov	r0, #19
     bb4:	ef000000 	svc	0x00000000
     bb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bbc:	e12fff1e 	bx	lr

00000bc0 <mkdir>:
     bc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc4:	e1a04003 	mov	r4, r3
     bc8:	e1a03002 	mov	r3, r2
     bcc:	e1a02001 	mov	r2, r1
     bd0:	e1a01000 	mov	r1, r0
     bd4:	e3a00014 	mov	r0, #20
     bd8:	ef000000 	svc	0x00000000
     bdc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be0:	e12fff1e 	bx	lr

00000be4 <chdir>:
     be4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be8:	e1a04003 	mov	r4, r3
     bec:	e1a03002 	mov	r3, r2
     bf0:	e1a02001 	mov	r2, r1
     bf4:	e1a01000 	mov	r1, r0
     bf8:	e3a00009 	mov	r0, #9
     bfc:	ef000000 	svc	0x00000000
     c00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c04:	e12fff1e 	bx	lr

00000c08 <dup>:
     c08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c0c:	e1a04003 	mov	r4, r3
     c10:	e1a03002 	mov	r3, r2
     c14:	e1a02001 	mov	r2, r1
     c18:	e1a01000 	mov	r1, r0
     c1c:	e3a0000a 	mov	r0, #10
     c20:	ef000000 	svc	0x00000000
     c24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c28:	e12fff1e 	bx	lr

00000c2c <getpid>:
     c2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c30:	e1a04003 	mov	r4, r3
     c34:	e1a03002 	mov	r3, r2
     c38:	e1a02001 	mov	r2, r1
     c3c:	e1a01000 	mov	r1, r0
     c40:	e3a0000b 	mov	r0, #11
     c44:	ef000000 	svc	0x00000000
     c48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c4c:	e12fff1e 	bx	lr

00000c50 <sbrk>:
     c50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c54:	e1a04003 	mov	r4, r3
     c58:	e1a03002 	mov	r3, r2
     c5c:	e1a02001 	mov	r2, r1
     c60:	e1a01000 	mov	r1, r0
     c64:	e3a0000c 	mov	r0, #12
     c68:	ef000000 	svc	0x00000000
     c6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c70:	e12fff1e 	bx	lr

00000c74 <sleep>:
     c74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c78:	e1a04003 	mov	r4, r3
     c7c:	e1a03002 	mov	r3, r2
     c80:	e1a02001 	mov	r2, r1
     c84:	e1a01000 	mov	r1, r0
     c88:	e3a0000d 	mov	r0, #13
     c8c:	ef000000 	svc	0x00000000
     c90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c94:	e12fff1e 	bx	lr

00000c98 <uptime>:
     c98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c9c:	e1a04003 	mov	r4, r3
     ca0:	e1a03002 	mov	r3, r2
     ca4:	e1a02001 	mov	r2, r1
     ca8:	e1a01000 	mov	r1, r0
     cac:	e3a0000e 	mov	r0, #14
     cb0:	ef000000 	svc	0x00000000
     cb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb8:	e12fff1e 	bx	lr

00000cbc <getprocs>:
     cbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc0:	e1a04003 	mov	r4, r3
     cc4:	e1a03002 	mov	r3, r2
     cc8:	e1a02001 	mov	r2, r1
     ccc:	e1a01000 	mov	r1, r0
     cd0:	e3a00016 	mov	r0, #22
     cd4:	ef000000 	svc	0x00000000
     cd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cdc:	e12fff1e 	bx	lr

00000ce0 <settickets>:
     ce0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce4:	e1a04003 	mov	r4, r3
     ce8:	e1a03002 	mov	r3, r2
     cec:	e1a02001 	mov	r2, r1
     cf0:	e1a01000 	mov	r1, r0
     cf4:	e3a00017 	mov	r0, #23
     cf8:	ef000000 	svc	0x00000000
     cfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d00:	e12fff1e 	bx	lr

00000d04 <srand>:
     d04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d08:	e1a04003 	mov	r4, r3
     d0c:	e1a03002 	mov	r3, r2
     d10:	e1a02001 	mov	r2, r1
     d14:	e1a01000 	mov	r1, r0
     d18:	e3a00018 	mov	r0, #24
     d1c:	ef000000 	svc	0x00000000
     d20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d24:	e12fff1e 	bx	lr

00000d28 <getpinfo>:
     d28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d2c:	e1a04003 	mov	r4, r3
     d30:	e1a03002 	mov	r3, r2
     d34:	e1a02001 	mov	r2, r1
     d38:	e1a01000 	mov	r1, r0
     d3c:	e3a00019 	mov	r0, #25
     d40:	ef000000 	svc	0x00000000
     d44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d48:	e12fff1e 	bx	lr

00000d4c <dumppagetable>:
     d4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d50:	e1a04003 	mov	r4, r3
     d54:	e1a03002 	mov	r3, r2
     d58:	e1a02001 	mov	r2, r1
     d5c:	e1a01000 	mov	r1, r0
     d60:	e3a0001a 	mov	r0, #26
     d64:	ef000000 	svc	0x00000000
     d68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d6c:	e12fff1e 	bx	lr

00000d70 <thread_create>:
     d70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d74:	e1a04003 	mov	r4, r3
     d78:	e1a03002 	mov	r3, r2
     d7c:	e1a02001 	mov	r2, r1
     d80:	e1a01000 	mov	r1, r0
     d84:	e3a0001b 	mov	r0, #27
     d88:	ef000000 	svc	0x00000000
     d8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d90:	e12fff1e 	bx	lr

00000d94 <thread_exit>:
     d94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d98:	e1a04003 	mov	r4, r3
     d9c:	e1a03002 	mov	r3, r2
     da0:	e1a02001 	mov	r2, r1
     da4:	e1a01000 	mov	r1, r0
     da8:	e3a0001c 	mov	r0, #28
     dac:	ef000000 	svc	0x00000000
     db0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     db4:	e12fff1e 	bx	lr

00000db8 <thread_join>:
     db8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dbc:	e1a04003 	mov	r4, r3
     dc0:	e1a03002 	mov	r3, r2
     dc4:	e1a02001 	mov	r2, r1
     dc8:	e1a01000 	mov	r1, r0
     dcc:	e3a0001d 	mov	r0, #29
     dd0:	ef000000 	svc	0x00000000
     dd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd8:	e12fff1e 	bx	lr

00000ddc <waitpid>:
     ddc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     de0:	e1a04003 	mov	r4, r3
     de4:	e1a03002 	mov	r3, r2
     de8:	e1a02001 	mov	r2, r1
     dec:	e1a01000 	mov	r1, r0
     df0:	e3a0001e 	mov	r0, #30
     df4:	ef000000 	svc	0x00000000
     df8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dfc:	e12fff1e 	bx	lr

00000e00 <barrier_init>:
     e00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e04:	e1a04003 	mov	r4, r3
     e08:	e1a03002 	mov	r3, r2
     e0c:	e1a02001 	mov	r2, r1
     e10:	e1a01000 	mov	r1, r0
     e14:	e3a0001f 	mov	r0, #31
     e18:	ef000000 	svc	0x00000000
     e1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e20:	e12fff1e 	bx	lr

00000e24 <barrier_check>:
     e24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e28:	e1a04003 	mov	r4, r3
     e2c:	e1a03002 	mov	r3, r2
     e30:	e1a02001 	mov	r2, r1
     e34:	e1a01000 	mov	r1, r0
     e38:	e3a00020 	mov	r0, #32
     e3c:	ef000000 	svc	0x00000000
     e40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e44:	e12fff1e 	bx	lr

00000e48 <sleepChan>:
     e48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e4c:	e1a04003 	mov	r4, r3
     e50:	e1a03002 	mov	r3, r2
     e54:	e1a02001 	mov	r2, r1
     e58:	e1a01000 	mov	r1, r0
     e5c:	e3a00024 	mov	r0, #36	@ 0x24
     e60:	ef000000 	svc	0x00000000
     e64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e68:	e12fff1e 	bx	lr

00000e6c <getChannel>:
     e6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e70:	e1a04003 	mov	r4, r3
     e74:	e1a03002 	mov	r3, r2
     e78:	e1a02001 	mov	r2, r1
     e7c:	e1a01000 	mov	r1, r0
     e80:	e3a00025 	mov	r0, #37	@ 0x25
     e84:	ef000000 	svc	0x00000000
     e88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e8c:	e12fff1e 	bx	lr

00000e90 <sigChan>:
     e90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e94:	e1a04003 	mov	r4, r3
     e98:	e1a03002 	mov	r3, r2
     e9c:	e1a02001 	mov	r2, r1
     ea0:	e1a01000 	mov	r1, r0
     ea4:	e3a00026 	mov	r0, #38	@ 0x26
     ea8:	ef000000 	svc	0x00000000
     eac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eb0:	e12fff1e 	bx	lr

00000eb4 <sigOneChan>:
     eb4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eb8:	e1a04003 	mov	r4, r3
     ebc:	e1a03002 	mov	r3, r2
     ec0:	e1a02001 	mov	r2, r1
     ec4:	e1a01000 	mov	r1, r0
     ec8:	e3a00027 	mov	r0, #39	@ 0x27
     ecc:	ef000000 	svc	0x00000000
     ed0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ed4:	e12fff1e 	bx	lr

00000ed8 <putc>:
     ed8:	e92d4800 	push	{fp, lr}
     edc:	e28db004 	add	fp, sp, #4
     ee0:	e24dd008 	sub	sp, sp, #8
     ee4:	e50b0008 	str	r0, [fp, #-8]
     ee8:	e1a03001 	mov	r3, r1
     eec:	e54b3009 	strb	r3, [fp, #-9]
     ef0:	e24b3009 	sub	r3, fp, #9
     ef4:	e3a02001 	mov	r2, #1
     ef8:	e1a01003 	mov	r1, r3
     efc:	e51b0008 	ldr	r0, [fp, #-8]
     f00:	ebfffedd 	bl	a7c <write>
     f04:	e1a00000 	nop			@ (mov r0, r0)
     f08:	e24bd004 	sub	sp, fp, #4
     f0c:	e8bd8800 	pop	{fp, pc}

00000f10 <printint>:
     f10:	e92d4800 	push	{fp, lr}
     f14:	e28db004 	add	fp, sp, #4
     f18:	e24dd030 	sub	sp, sp, #48	@ 0x30
     f1c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     f20:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     f24:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     f28:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     f2c:	e3a03000 	mov	r3, #0
     f30:	e50b300c 	str	r3, [fp, #-12]
     f34:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     f38:	e3530000 	cmp	r3, #0
     f3c:	0a000008 	beq	f64 <printint+0x54>
     f40:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f44:	e3530000 	cmp	r3, #0
     f48:	aa000005 	bge	f64 <printint+0x54>
     f4c:	e3a03001 	mov	r3, #1
     f50:	e50b300c 	str	r3, [fp, #-12]
     f54:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f58:	e2633000 	rsb	r3, r3, #0
     f5c:	e50b3010 	str	r3, [fp, #-16]
     f60:	ea000001 	b	f6c <printint+0x5c>
     f64:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f68:	e50b3010 	str	r3, [fp, #-16]
     f6c:	e3a03000 	mov	r3, #0
     f70:	e50b3008 	str	r3, [fp, #-8]
     f74:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     f78:	e51b3010 	ldr	r3, [fp, #-16]
     f7c:	e1a01002 	mov	r1, r2
     f80:	e1a00003 	mov	r0, r3
     f84:	eb0001d5 	bl	16e0 <__aeabi_uidivmod>
     f88:	e1a03001 	mov	r3, r1
     f8c:	e1a01003 	mov	r1, r3
     f90:	e51b3008 	ldr	r3, [fp, #-8]
     f94:	e2832001 	add	r2, r3, #1
     f98:	e50b2008 	str	r2, [fp, #-8]
     f9c:	e59f20a0 	ldr	r2, [pc, #160]	@ 1044 <printint+0x134>
     fa0:	e7d22001 	ldrb	r2, [r2, r1]
     fa4:	e2433004 	sub	r3, r3, #4
     fa8:	e083300b 	add	r3, r3, fp
     fac:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     fb0:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     fb4:	e1a01003 	mov	r1, r3
     fb8:	e51b0010 	ldr	r0, [fp, #-16]
     fbc:	eb00018a 	bl	15ec <__udivsi3>
     fc0:	e1a03000 	mov	r3, r0
     fc4:	e50b3010 	str	r3, [fp, #-16]
     fc8:	e51b3010 	ldr	r3, [fp, #-16]
     fcc:	e3530000 	cmp	r3, #0
     fd0:	1affffe7 	bne	f74 <printint+0x64>
     fd4:	e51b300c 	ldr	r3, [fp, #-12]
     fd8:	e3530000 	cmp	r3, #0
     fdc:	0a00000e 	beq	101c <printint+0x10c>
     fe0:	e51b3008 	ldr	r3, [fp, #-8]
     fe4:	e2832001 	add	r2, r3, #1
     fe8:	e50b2008 	str	r2, [fp, #-8]
     fec:	e2433004 	sub	r3, r3, #4
     ff0:	e083300b 	add	r3, r3, fp
     ff4:	e3a0202d 	mov	r2, #45	@ 0x2d
     ff8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ffc:	ea000006 	b	101c <printint+0x10c>
    1000:	e24b2020 	sub	r2, fp, #32
    1004:	e51b3008 	ldr	r3, [fp, #-8]
    1008:	e0823003 	add	r3, r2, r3
    100c:	e5d33000 	ldrb	r3, [r3]
    1010:	e1a01003 	mov	r1, r3
    1014:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1018:	ebffffae 	bl	ed8 <putc>
    101c:	e51b3008 	ldr	r3, [fp, #-8]
    1020:	e2433001 	sub	r3, r3, #1
    1024:	e50b3008 	str	r3, [fp, #-8]
    1028:	e51b3008 	ldr	r3, [fp, #-8]
    102c:	e3530000 	cmp	r3, #0
    1030:	aafffff2 	bge	1000 <printint+0xf0>
    1034:	e1a00000 	nop			@ (mov r0, r0)
    1038:	e1a00000 	nop			@ (mov r0, r0)
    103c:	e24bd004 	sub	sp, fp, #4
    1040:	e8bd8800 	pop	{fp, pc}
    1044:	0000174c 	.word	0x0000174c

00001048 <printf>:
    1048:	e92d000e 	push	{r1, r2, r3}
    104c:	e92d4800 	push	{fp, lr}
    1050:	e28db004 	add	fp, sp, #4
    1054:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1058:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    105c:	e3a03000 	mov	r3, #0
    1060:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1064:	e28b3008 	add	r3, fp, #8
    1068:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    106c:	e3a03000 	mov	r3, #0
    1070:	e50b3010 	str	r3, [fp, #-16]
    1074:	ea000074 	b	124c <printf+0x204>
    1078:	e59b2004 	ldr	r2, [fp, #4]
    107c:	e51b3010 	ldr	r3, [fp, #-16]
    1080:	e0823003 	add	r3, r2, r3
    1084:	e5d33000 	ldrb	r3, [r3]
    1088:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    108c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1090:	e3530000 	cmp	r3, #0
    1094:	1a00000b 	bne	10c8 <printf+0x80>
    1098:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    109c:	e3530025 	cmp	r3, #37	@ 0x25
    10a0:	1a000002 	bne	10b0 <printf+0x68>
    10a4:	e3a03025 	mov	r3, #37	@ 0x25
    10a8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    10ac:	ea000063 	b	1240 <printf+0x1f8>
    10b0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10b4:	e6ef3073 	uxtb	r3, r3
    10b8:	e1a01003 	mov	r1, r3
    10bc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10c0:	ebffff84 	bl	ed8 <putc>
    10c4:	ea00005d 	b	1240 <printf+0x1f8>
    10c8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    10cc:	e3530025 	cmp	r3, #37	@ 0x25
    10d0:	1a00005a 	bne	1240 <printf+0x1f8>
    10d4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10d8:	e3530064 	cmp	r3, #100	@ 0x64
    10dc:	1a00000a 	bne	110c <printf+0xc4>
    10e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10e4:	e5933000 	ldr	r3, [r3]
    10e8:	e1a01003 	mov	r1, r3
    10ec:	e3a03001 	mov	r3, #1
    10f0:	e3a0200a 	mov	r2, #10
    10f4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10f8:	ebffff84 	bl	f10 <printint>
    10fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1100:	e2833004 	add	r3, r3, #4
    1104:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1108:	ea00004a 	b	1238 <printf+0x1f0>
    110c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1110:	e3530078 	cmp	r3, #120	@ 0x78
    1114:	0a000002 	beq	1124 <printf+0xdc>
    1118:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    111c:	e3530070 	cmp	r3, #112	@ 0x70
    1120:	1a00000a 	bne	1150 <printf+0x108>
    1124:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1128:	e5933000 	ldr	r3, [r3]
    112c:	e1a01003 	mov	r1, r3
    1130:	e3a03000 	mov	r3, #0
    1134:	e3a02010 	mov	r2, #16
    1138:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    113c:	ebffff73 	bl	f10 <printint>
    1140:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1144:	e2833004 	add	r3, r3, #4
    1148:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    114c:	ea000039 	b	1238 <printf+0x1f0>
    1150:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1154:	e3530073 	cmp	r3, #115	@ 0x73
    1158:	1a000018 	bne	11c0 <printf+0x178>
    115c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1160:	e5933000 	ldr	r3, [r3]
    1164:	e50b300c 	str	r3, [fp, #-12]
    1168:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    116c:	e2833004 	add	r3, r3, #4
    1170:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1174:	e51b300c 	ldr	r3, [fp, #-12]
    1178:	e3530000 	cmp	r3, #0
    117c:	1a00000a 	bne	11ac <printf+0x164>
    1180:	e59f30f4 	ldr	r3, [pc, #244]	@ 127c <printf+0x234>
    1184:	e50b300c 	str	r3, [fp, #-12]
    1188:	ea000007 	b	11ac <printf+0x164>
    118c:	e51b300c 	ldr	r3, [fp, #-12]
    1190:	e5d33000 	ldrb	r3, [r3]
    1194:	e1a01003 	mov	r1, r3
    1198:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    119c:	ebffff4d 	bl	ed8 <putc>
    11a0:	e51b300c 	ldr	r3, [fp, #-12]
    11a4:	e2833001 	add	r3, r3, #1
    11a8:	e50b300c 	str	r3, [fp, #-12]
    11ac:	e51b300c 	ldr	r3, [fp, #-12]
    11b0:	e5d33000 	ldrb	r3, [r3]
    11b4:	e3530000 	cmp	r3, #0
    11b8:	1afffff3 	bne	118c <printf+0x144>
    11bc:	ea00001d 	b	1238 <printf+0x1f0>
    11c0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11c4:	e3530063 	cmp	r3, #99	@ 0x63
    11c8:	1a000009 	bne	11f4 <printf+0x1ac>
    11cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11d0:	e5933000 	ldr	r3, [r3]
    11d4:	e6ef3073 	uxtb	r3, r3
    11d8:	e1a01003 	mov	r1, r3
    11dc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11e0:	ebffff3c 	bl	ed8 <putc>
    11e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11e8:	e2833004 	add	r3, r3, #4
    11ec:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11f0:	ea000010 	b	1238 <printf+0x1f0>
    11f4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11f8:	e3530025 	cmp	r3, #37	@ 0x25
    11fc:	1a000005 	bne	1218 <printf+0x1d0>
    1200:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1204:	e6ef3073 	uxtb	r3, r3
    1208:	e1a01003 	mov	r1, r3
    120c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1210:	ebffff30 	bl	ed8 <putc>
    1214:	ea000007 	b	1238 <printf+0x1f0>
    1218:	e3a01025 	mov	r1, #37	@ 0x25
    121c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1220:	ebffff2c 	bl	ed8 <putc>
    1224:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1228:	e6ef3073 	uxtb	r3, r3
    122c:	e1a01003 	mov	r1, r3
    1230:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1234:	ebffff27 	bl	ed8 <putc>
    1238:	e3a03000 	mov	r3, #0
    123c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1240:	e51b3010 	ldr	r3, [fp, #-16]
    1244:	e2833001 	add	r3, r3, #1
    1248:	e50b3010 	str	r3, [fp, #-16]
    124c:	e59b2004 	ldr	r2, [fp, #4]
    1250:	e51b3010 	ldr	r3, [fp, #-16]
    1254:	e0823003 	add	r3, r2, r3
    1258:	e5d33000 	ldrb	r3, [r3]
    125c:	e3530000 	cmp	r3, #0
    1260:	1affff84 	bne	1078 <printf+0x30>
    1264:	e1a00000 	nop			@ (mov r0, r0)
    1268:	e1a00000 	nop			@ (mov r0, r0)
    126c:	e24bd004 	sub	sp, fp, #4
    1270:	e8bd4800 	pop	{fp, lr}
    1274:	e28dd00c 	add	sp, sp, #12
    1278:	e12fff1e 	bx	lr
    127c:	00001744 	.word	0x00001744

00001280 <free>:
    1280:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1284:	e28db000 	add	fp, sp, #0
    1288:	e24dd014 	sub	sp, sp, #20
    128c:	e50b0010 	str	r0, [fp, #-16]
    1290:	e51b3010 	ldr	r3, [fp, #-16]
    1294:	e2433008 	sub	r3, r3, #8
    1298:	e50b300c 	str	r3, [fp, #-12]
    129c:	e59f3154 	ldr	r3, [pc, #340]	@ 13f8 <free+0x178>
    12a0:	e5933000 	ldr	r3, [r3]
    12a4:	e50b3008 	str	r3, [fp, #-8]
    12a8:	ea000010 	b	12f0 <free+0x70>
    12ac:	e51b3008 	ldr	r3, [fp, #-8]
    12b0:	e5933000 	ldr	r3, [r3]
    12b4:	e51b2008 	ldr	r2, [fp, #-8]
    12b8:	e1520003 	cmp	r2, r3
    12bc:	3a000008 	bcc	12e4 <free+0x64>
    12c0:	e51b200c 	ldr	r2, [fp, #-12]
    12c4:	e51b3008 	ldr	r3, [fp, #-8]
    12c8:	e1520003 	cmp	r2, r3
    12cc:	8a000010 	bhi	1314 <free+0x94>
    12d0:	e51b3008 	ldr	r3, [fp, #-8]
    12d4:	e5933000 	ldr	r3, [r3]
    12d8:	e51b200c 	ldr	r2, [fp, #-12]
    12dc:	e1520003 	cmp	r2, r3
    12e0:	3a00000b 	bcc	1314 <free+0x94>
    12e4:	e51b3008 	ldr	r3, [fp, #-8]
    12e8:	e5933000 	ldr	r3, [r3]
    12ec:	e50b3008 	str	r3, [fp, #-8]
    12f0:	e51b200c 	ldr	r2, [fp, #-12]
    12f4:	e51b3008 	ldr	r3, [fp, #-8]
    12f8:	e1520003 	cmp	r2, r3
    12fc:	9affffea 	bls	12ac <free+0x2c>
    1300:	e51b3008 	ldr	r3, [fp, #-8]
    1304:	e5933000 	ldr	r3, [r3]
    1308:	e51b200c 	ldr	r2, [fp, #-12]
    130c:	e1520003 	cmp	r2, r3
    1310:	2affffe5 	bcs	12ac <free+0x2c>
    1314:	e51b300c 	ldr	r3, [fp, #-12]
    1318:	e5933004 	ldr	r3, [r3, #4]
    131c:	e1a03183 	lsl	r3, r3, #3
    1320:	e51b200c 	ldr	r2, [fp, #-12]
    1324:	e0822003 	add	r2, r2, r3
    1328:	e51b3008 	ldr	r3, [fp, #-8]
    132c:	e5933000 	ldr	r3, [r3]
    1330:	e1520003 	cmp	r2, r3
    1334:	1a00000d 	bne	1370 <free+0xf0>
    1338:	e51b300c 	ldr	r3, [fp, #-12]
    133c:	e5932004 	ldr	r2, [r3, #4]
    1340:	e51b3008 	ldr	r3, [fp, #-8]
    1344:	e5933000 	ldr	r3, [r3]
    1348:	e5933004 	ldr	r3, [r3, #4]
    134c:	e0822003 	add	r2, r2, r3
    1350:	e51b300c 	ldr	r3, [fp, #-12]
    1354:	e5832004 	str	r2, [r3, #4]
    1358:	e51b3008 	ldr	r3, [fp, #-8]
    135c:	e5933000 	ldr	r3, [r3]
    1360:	e5932000 	ldr	r2, [r3]
    1364:	e51b300c 	ldr	r3, [fp, #-12]
    1368:	e5832000 	str	r2, [r3]
    136c:	ea000003 	b	1380 <free+0x100>
    1370:	e51b3008 	ldr	r3, [fp, #-8]
    1374:	e5932000 	ldr	r2, [r3]
    1378:	e51b300c 	ldr	r3, [fp, #-12]
    137c:	e5832000 	str	r2, [r3]
    1380:	e51b3008 	ldr	r3, [fp, #-8]
    1384:	e5933004 	ldr	r3, [r3, #4]
    1388:	e1a03183 	lsl	r3, r3, #3
    138c:	e51b2008 	ldr	r2, [fp, #-8]
    1390:	e0823003 	add	r3, r2, r3
    1394:	e51b200c 	ldr	r2, [fp, #-12]
    1398:	e1520003 	cmp	r2, r3
    139c:	1a00000b 	bne	13d0 <free+0x150>
    13a0:	e51b3008 	ldr	r3, [fp, #-8]
    13a4:	e5932004 	ldr	r2, [r3, #4]
    13a8:	e51b300c 	ldr	r3, [fp, #-12]
    13ac:	e5933004 	ldr	r3, [r3, #4]
    13b0:	e0822003 	add	r2, r2, r3
    13b4:	e51b3008 	ldr	r3, [fp, #-8]
    13b8:	e5832004 	str	r2, [r3, #4]
    13bc:	e51b300c 	ldr	r3, [fp, #-12]
    13c0:	e5932000 	ldr	r2, [r3]
    13c4:	e51b3008 	ldr	r3, [fp, #-8]
    13c8:	e5832000 	str	r2, [r3]
    13cc:	ea000002 	b	13dc <free+0x15c>
    13d0:	e51b3008 	ldr	r3, [fp, #-8]
    13d4:	e51b200c 	ldr	r2, [fp, #-12]
    13d8:	e5832000 	str	r2, [r3]
    13dc:	e59f2014 	ldr	r2, [pc, #20]	@ 13f8 <free+0x178>
    13e0:	e51b3008 	ldr	r3, [fp, #-8]
    13e4:	e5823000 	str	r3, [r2]
    13e8:	e1a00000 	nop			@ (mov r0, r0)
    13ec:	e28bd000 	add	sp, fp, #0
    13f0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    13f4:	e12fff1e 	bx	lr
    13f8:	00001968 	.word	0x00001968

000013fc <morecore>:
    13fc:	e92d4800 	push	{fp, lr}
    1400:	e28db004 	add	fp, sp, #4
    1404:	e24dd010 	sub	sp, sp, #16
    1408:	e50b0010 	str	r0, [fp, #-16]
    140c:	e51b3010 	ldr	r3, [fp, #-16]
    1410:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1414:	2a000001 	bcs	1420 <morecore+0x24>
    1418:	e3a03a01 	mov	r3, #4096	@ 0x1000
    141c:	e50b3010 	str	r3, [fp, #-16]
    1420:	e51b3010 	ldr	r3, [fp, #-16]
    1424:	e1a03183 	lsl	r3, r3, #3
    1428:	e1a00003 	mov	r0, r3
    142c:	ebfffe07 	bl	c50 <sbrk>
    1430:	e50b0008 	str	r0, [fp, #-8]
    1434:	e51b3008 	ldr	r3, [fp, #-8]
    1438:	e3730001 	cmn	r3, #1
    143c:	1a000001 	bne	1448 <morecore+0x4c>
    1440:	e3a03000 	mov	r3, #0
    1444:	ea00000a 	b	1474 <morecore+0x78>
    1448:	e51b3008 	ldr	r3, [fp, #-8]
    144c:	e50b300c 	str	r3, [fp, #-12]
    1450:	e51b300c 	ldr	r3, [fp, #-12]
    1454:	e51b2010 	ldr	r2, [fp, #-16]
    1458:	e5832004 	str	r2, [r3, #4]
    145c:	e51b300c 	ldr	r3, [fp, #-12]
    1460:	e2833008 	add	r3, r3, #8
    1464:	e1a00003 	mov	r0, r3
    1468:	ebffff84 	bl	1280 <free>
    146c:	e59f300c 	ldr	r3, [pc, #12]	@ 1480 <morecore+0x84>
    1470:	e5933000 	ldr	r3, [r3]
    1474:	e1a00003 	mov	r0, r3
    1478:	e24bd004 	sub	sp, fp, #4
    147c:	e8bd8800 	pop	{fp, pc}
    1480:	00001968 	.word	0x00001968

00001484 <malloc>:
    1484:	e92d4800 	push	{fp, lr}
    1488:	e28db004 	add	fp, sp, #4
    148c:	e24dd018 	sub	sp, sp, #24
    1490:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1494:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1498:	e2833007 	add	r3, r3, #7
    149c:	e1a031a3 	lsr	r3, r3, #3
    14a0:	e2833001 	add	r3, r3, #1
    14a4:	e50b3010 	str	r3, [fp, #-16]
    14a8:	e59f3134 	ldr	r3, [pc, #308]	@ 15e4 <malloc+0x160>
    14ac:	e5933000 	ldr	r3, [r3]
    14b0:	e50b300c 	str	r3, [fp, #-12]
    14b4:	e51b300c 	ldr	r3, [fp, #-12]
    14b8:	e3530000 	cmp	r3, #0
    14bc:	1a00000b 	bne	14f0 <malloc+0x6c>
    14c0:	e59f3120 	ldr	r3, [pc, #288]	@ 15e8 <malloc+0x164>
    14c4:	e50b300c 	str	r3, [fp, #-12]
    14c8:	e59f2114 	ldr	r2, [pc, #276]	@ 15e4 <malloc+0x160>
    14cc:	e51b300c 	ldr	r3, [fp, #-12]
    14d0:	e5823000 	str	r3, [r2]
    14d4:	e59f3108 	ldr	r3, [pc, #264]	@ 15e4 <malloc+0x160>
    14d8:	e5933000 	ldr	r3, [r3]
    14dc:	e59f2104 	ldr	r2, [pc, #260]	@ 15e8 <malloc+0x164>
    14e0:	e5823000 	str	r3, [r2]
    14e4:	e59f30fc 	ldr	r3, [pc, #252]	@ 15e8 <malloc+0x164>
    14e8:	e3a02000 	mov	r2, #0
    14ec:	e5832004 	str	r2, [r3, #4]
    14f0:	e51b300c 	ldr	r3, [fp, #-12]
    14f4:	e5933000 	ldr	r3, [r3]
    14f8:	e50b3008 	str	r3, [fp, #-8]
    14fc:	e51b3008 	ldr	r3, [fp, #-8]
    1500:	e5933004 	ldr	r3, [r3, #4]
    1504:	e51b2010 	ldr	r2, [fp, #-16]
    1508:	e1520003 	cmp	r2, r3
    150c:	8a00001e 	bhi	158c <malloc+0x108>
    1510:	e51b3008 	ldr	r3, [fp, #-8]
    1514:	e5933004 	ldr	r3, [r3, #4]
    1518:	e51b2010 	ldr	r2, [fp, #-16]
    151c:	e1520003 	cmp	r2, r3
    1520:	1a000004 	bne	1538 <malloc+0xb4>
    1524:	e51b3008 	ldr	r3, [fp, #-8]
    1528:	e5932000 	ldr	r2, [r3]
    152c:	e51b300c 	ldr	r3, [fp, #-12]
    1530:	e5832000 	str	r2, [r3]
    1534:	ea00000e 	b	1574 <malloc+0xf0>
    1538:	e51b3008 	ldr	r3, [fp, #-8]
    153c:	e5932004 	ldr	r2, [r3, #4]
    1540:	e51b3010 	ldr	r3, [fp, #-16]
    1544:	e0422003 	sub	r2, r2, r3
    1548:	e51b3008 	ldr	r3, [fp, #-8]
    154c:	e5832004 	str	r2, [r3, #4]
    1550:	e51b3008 	ldr	r3, [fp, #-8]
    1554:	e5933004 	ldr	r3, [r3, #4]
    1558:	e1a03183 	lsl	r3, r3, #3
    155c:	e51b2008 	ldr	r2, [fp, #-8]
    1560:	e0823003 	add	r3, r2, r3
    1564:	e50b3008 	str	r3, [fp, #-8]
    1568:	e51b3008 	ldr	r3, [fp, #-8]
    156c:	e51b2010 	ldr	r2, [fp, #-16]
    1570:	e5832004 	str	r2, [r3, #4]
    1574:	e59f2068 	ldr	r2, [pc, #104]	@ 15e4 <malloc+0x160>
    1578:	e51b300c 	ldr	r3, [fp, #-12]
    157c:	e5823000 	str	r3, [r2]
    1580:	e51b3008 	ldr	r3, [fp, #-8]
    1584:	e2833008 	add	r3, r3, #8
    1588:	ea000012 	b	15d8 <malloc+0x154>
    158c:	e59f3050 	ldr	r3, [pc, #80]	@ 15e4 <malloc+0x160>
    1590:	e5933000 	ldr	r3, [r3]
    1594:	e51b2008 	ldr	r2, [fp, #-8]
    1598:	e1520003 	cmp	r2, r3
    159c:	1a000007 	bne	15c0 <malloc+0x13c>
    15a0:	e51b0010 	ldr	r0, [fp, #-16]
    15a4:	ebffff94 	bl	13fc <morecore>
    15a8:	e50b0008 	str	r0, [fp, #-8]
    15ac:	e51b3008 	ldr	r3, [fp, #-8]
    15b0:	e3530000 	cmp	r3, #0
    15b4:	1a000001 	bne	15c0 <malloc+0x13c>
    15b8:	e3a03000 	mov	r3, #0
    15bc:	ea000005 	b	15d8 <malloc+0x154>
    15c0:	e51b3008 	ldr	r3, [fp, #-8]
    15c4:	e50b300c 	str	r3, [fp, #-12]
    15c8:	e51b3008 	ldr	r3, [fp, #-8]
    15cc:	e5933000 	ldr	r3, [r3]
    15d0:	e50b3008 	str	r3, [fp, #-8]
    15d4:	eaffffc8 	b	14fc <malloc+0x78>
    15d8:	e1a00003 	mov	r0, r3
    15dc:	e24bd004 	sub	sp, fp, #4
    15e0:	e8bd8800 	pop	{fp, pc}
    15e4:	00001968 	.word	0x00001968
    15e8:	00001960 	.word	0x00001960

000015ec <__udivsi3>:
    15ec:	e2512001 	subs	r2, r1, #1
    15f0:	012fff1e 	bxeq	lr
    15f4:	3a000036 	bcc	16d4 <__udivsi3+0xe8>
    15f8:	e1500001 	cmp	r0, r1
    15fc:	9a000022 	bls	168c <__udivsi3+0xa0>
    1600:	e1110002 	tst	r1, r2
    1604:	0a000023 	beq	1698 <__udivsi3+0xac>
    1608:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    160c:	01a01181 	lsleq	r1, r1, #3
    1610:	03a03008 	moveq	r3, #8
    1614:	13a03001 	movne	r3, #1
    1618:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    161c:	31510000 	cmpcc	r1, r0
    1620:	31a01201 	lslcc	r1, r1, #4
    1624:	31a03203 	lslcc	r3, r3, #4
    1628:	3afffffa 	bcc	1618 <__udivsi3+0x2c>
    162c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1630:	31510000 	cmpcc	r1, r0
    1634:	31a01081 	lslcc	r1, r1, #1
    1638:	31a03083 	lslcc	r3, r3, #1
    163c:	3afffffa 	bcc	162c <__udivsi3+0x40>
    1640:	e3a02000 	mov	r2, #0
    1644:	e1500001 	cmp	r0, r1
    1648:	20400001 	subcs	r0, r0, r1
    164c:	21822003 	orrcs	r2, r2, r3
    1650:	e15000a1 	cmp	r0, r1, lsr #1
    1654:	204000a1 	subcs	r0, r0, r1, lsr #1
    1658:	218220a3 	orrcs	r2, r2, r3, lsr #1
    165c:	e1500121 	cmp	r0, r1, lsr #2
    1660:	20400121 	subcs	r0, r0, r1, lsr #2
    1664:	21822123 	orrcs	r2, r2, r3, lsr #2
    1668:	e15001a1 	cmp	r0, r1, lsr #3
    166c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1670:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1674:	e3500000 	cmp	r0, #0
    1678:	11b03223 	lsrsne	r3, r3, #4
    167c:	11a01221 	lsrne	r1, r1, #4
    1680:	1affffef 	bne	1644 <__udivsi3+0x58>
    1684:	e1a00002 	mov	r0, r2
    1688:	e12fff1e 	bx	lr
    168c:	03a00001 	moveq	r0, #1
    1690:	13a00000 	movne	r0, #0
    1694:	e12fff1e 	bx	lr
    1698:	e3510801 	cmp	r1, #65536	@ 0x10000
    169c:	21a01821 	lsrcs	r1, r1, #16
    16a0:	23a02010 	movcs	r2, #16
    16a4:	33a02000 	movcc	r2, #0
    16a8:	e3510c01 	cmp	r1, #256	@ 0x100
    16ac:	21a01421 	lsrcs	r1, r1, #8
    16b0:	22822008 	addcs	r2, r2, #8
    16b4:	e3510010 	cmp	r1, #16
    16b8:	21a01221 	lsrcs	r1, r1, #4
    16bc:	22822004 	addcs	r2, r2, #4
    16c0:	e3510004 	cmp	r1, #4
    16c4:	82822003 	addhi	r2, r2, #3
    16c8:	908220a1 	addls	r2, r2, r1, lsr #1
    16cc:	e1a00230 	lsr	r0, r0, r2
    16d0:	e12fff1e 	bx	lr
    16d4:	e3500000 	cmp	r0, #0
    16d8:	13e00000 	mvnne	r0, #0
    16dc:	ea000007 	b	1700 <__aeabi_idiv0>

000016e0 <__aeabi_uidivmod>:
    16e0:	e3510000 	cmp	r1, #0
    16e4:	0afffffa 	beq	16d4 <__udivsi3+0xe8>
    16e8:	e92d4003 	push	{r0, r1, lr}
    16ec:	ebffffbe 	bl	15ec <__udivsi3>
    16f0:	e8bd4006 	pop	{r1, r2, lr}
    16f4:	e0030092 	mul	r3, r2, r0
    16f8:	e0411003 	sub	r1, r1, r3
    16fc:	e12fff1e 	bx	lr

00001700 <__aeabi_idiv0>:
    1700:	e12fff1e 	bx	lr
