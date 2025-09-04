
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
     118:	eb0002c2 	bl	c28 <printf>
     11c:	eb00018d 	bl	758 <exit>
     120:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     124:	e58d3004 	str	r3, [sp, #4]
     128:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     12c:	e58d3000 	str	r3, [sp]
     130:	e51b3010 	ldr	r3, [fp, #-16]
     134:	e51b200c 	ldr	r2, [fp, #-12]
     138:	e59f101c 	ldr	r1, [pc, #28]	@ 15c <wc+0x15c>
     13c:	e3a00001 	mov	r0, #1
     140:	eb0002b8 	bl	c28 <printf>
     144:	e1a00000 	nop			@ (mov r0, r0)
     148:	e24bd004 	sub	sp, fp, #4
     14c:	e8bd8800 	pop	{fp, pc}
     150:	00001340 	.word	0x00001340
     154:	000012e4 	.word	0x000012e4
     158:	000012ec 	.word	0x000012ec
     15c:	000012fc 	.word	0x000012fc

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
     1ec:	eb00028d 	bl	c28 <printf>
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
     23c:	0000130c 	.word	0x0000130c
     240:	00001310 	.word	0x00001310

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

00000ab8 <putc>:
     ab8:	e92d4800 	push	{fp, lr}
     abc:	e28db004 	add	fp, sp, #4
     ac0:	e24dd008 	sub	sp, sp, #8
     ac4:	e50b0008 	str	r0, [fp, #-8]
     ac8:	e1a03001 	mov	r3, r1
     acc:	e54b3009 	strb	r3, [fp, #-9]
     ad0:	e24b3009 	sub	r3, fp, #9
     ad4:	e3a02001 	mov	r2, #1
     ad8:	e1a01003 	mov	r1, r3
     adc:	e51b0008 	ldr	r0, [fp, #-8]
     ae0:	ebffff40 	bl	7e8 <write>
     ae4:	e1a00000 	nop			@ (mov r0, r0)
     ae8:	e24bd004 	sub	sp, fp, #4
     aec:	e8bd8800 	pop	{fp, pc}

00000af0 <printint>:
     af0:	e92d4800 	push	{fp, lr}
     af4:	e28db004 	add	fp, sp, #4
     af8:	e24dd030 	sub	sp, sp, #48	@ 0x30
     afc:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     b00:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     b04:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     b08:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     b0c:	e3a03000 	mov	r3, #0
     b10:	e50b300c 	str	r3, [fp, #-12]
     b14:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     b18:	e3530000 	cmp	r3, #0
     b1c:	0a000008 	beq	b44 <printint+0x54>
     b20:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b24:	e3530000 	cmp	r3, #0
     b28:	aa000005 	bge	b44 <printint+0x54>
     b2c:	e3a03001 	mov	r3, #1
     b30:	e50b300c 	str	r3, [fp, #-12]
     b34:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b38:	e2633000 	rsb	r3, r3, #0
     b3c:	e50b3010 	str	r3, [fp, #-16]
     b40:	ea000001 	b	b4c <printint+0x5c>
     b44:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b48:	e50b3010 	str	r3, [fp, #-16]
     b4c:	e3a03000 	mov	r3, #0
     b50:	e50b3008 	str	r3, [fp, #-8]
     b54:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     b58:	e51b3010 	ldr	r3, [fp, #-16]
     b5c:	e1a01002 	mov	r1, r2
     b60:	e1a00003 	mov	r0, r3
     b64:	eb0001d5 	bl	12c0 <__aeabi_uidivmod>
     b68:	e1a03001 	mov	r3, r1
     b6c:	e1a01003 	mov	r1, r3
     b70:	e51b3008 	ldr	r3, [fp, #-8]
     b74:	e2832001 	add	r2, r3, #1
     b78:	e50b2008 	str	r2, [fp, #-8]
     b7c:	e59f20a0 	ldr	r2, [pc, #160]	@ c24 <printint+0x134>
     b80:	e7d22001 	ldrb	r2, [r2, r1]
     b84:	e2433004 	sub	r3, r3, #4
     b88:	e083300b 	add	r3, r3, fp
     b8c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     b90:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     b94:	e1a01003 	mov	r1, r3
     b98:	e51b0010 	ldr	r0, [fp, #-16]
     b9c:	eb00018a 	bl	11cc <__udivsi3>
     ba0:	e1a03000 	mov	r3, r0
     ba4:	e50b3010 	str	r3, [fp, #-16]
     ba8:	e51b3010 	ldr	r3, [fp, #-16]
     bac:	e3530000 	cmp	r3, #0
     bb0:	1affffe7 	bne	b54 <printint+0x64>
     bb4:	e51b300c 	ldr	r3, [fp, #-12]
     bb8:	e3530000 	cmp	r3, #0
     bbc:	0a00000e 	beq	bfc <printint+0x10c>
     bc0:	e51b3008 	ldr	r3, [fp, #-8]
     bc4:	e2832001 	add	r2, r3, #1
     bc8:	e50b2008 	str	r2, [fp, #-8]
     bcc:	e2433004 	sub	r3, r3, #4
     bd0:	e083300b 	add	r3, r3, fp
     bd4:	e3a0202d 	mov	r2, #45	@ 0x2d
     bd8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     bdc:	ea000006 	b	bfc <printint+0x10c>
     be0:	e24b2020 	sub	r2, fp, #32
     be4:	e51b3008 	ldr	r3, [fp, #-8]
     be8:	e0823003 	add	r3, r2, r3
     bec:	e5d33000 	ldrb	r3, [r3]
     bf0:	e1a01003 	mov	r1, r3
     bf4:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     bf8:	ebffffae 	bl	ab8 <putc>
     bfc:	e51b3008 	ldr	r3, [fp, #-8]
     c00:	e2433001 	sub	r3, r3, #1
     c04:	e50b3008 	str	r3, [fp, #-8]
     c08:	e51b3008 	ldr	r3, [fp, #-8]
     c0c:	e3530000 	cmp	r3, #0
     c10:	aafffff2 	bge	be0 <printint+0xf0>
     c14:	e1a00000 	nop			@ (mov r0, r0)
     c18:	e1a00000 	nop			@ (mov r0, r0)
     c1c:	e24bd004 	sub	sp, fp, #4
     c20:	e8bd8800 	pop	{fp, pc}
     c24:	0000132c 	.word	0x0000132c

00000c28 <printf>:
     c28:	e92d000e 	push	{r1, r2, r3}
     c2c:	e92d4800 	push	{fp, lr}
     c30:	e28db004 	add	fp, sp, #4
     c34:	e24dd024 	sub	sp, sp, #36	@ 0x24
     c38:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     c3c:	e3a03000 	mov	r3, #0
     c40:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c44:	e28b3008 	add	r3, fp, #8
     c48:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c4c:	e3a03000 	mov	r3, #0
     c50:	e50b3010 	str	r3, [fp, #-16]
     c54:	ea000074 	b	e2c <printf+0x204>
     c58:	e59b2004 	ldr	r2, [fp, #4]
     c5c:	e51b3010 	ldr	r3, [fp, #-16]
     c60:	e0823003 	add	r3, r2, r3
     c64:	e5d33000 	ldrb	r3, [r3]
     c68:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     c6c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     c70:	e3530000 	cmp	r3, #0
     c74:	1a00000b 	bne	ca8 <printf+0x80>
     c78:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c7c:	e3530025 	cmp	r3, #37	@ 0x25
     c80:	1a000002 	bne	c90 <printf+0x68>
     c84:	e3a03025 	mov	r3, #37	@ 0x25
     c88:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c8c:	ea000063 	b	e20 <printf+0x1f8>
     c90:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c94:	e6ef3073 	uxtb	r3, r3
     c98:	e1a01003 	mov	r1, r3
     c9c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ca0:	ebffff84 	bl	ab8 <putc>
     ca4:	ea00005d 	b	e20 <printf+0x1f8>
     ca8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     cac:	e3530025 	cmp	r3, #37	@ 0x25
     cb0:	1a00005a 	bne	e20 <printf+0x1f8>
     cb4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cb8:	e3530064 	cmp	r3, #100	@ 0x64
     cbc:	1a00000a 	bne	cec <printf+0xc4>
     cc0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cc4:	e5933000 	ldr	r3, [r3]
     cc8:	e1a01003 	mov	r1, r3
     ccc:	e3a03001 	mov	r3, #1
     cd0:	e3a0200a 	mov	r2, #10
     cd4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cd8:	ebffff84 	bl	af0 <printint>
     cdc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ce0:	e2833004 	add	r3, r3, #4
     ce4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ce8:	ea00004a 	b	e18 <printf+0x1f0>
     cec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cf0:	e3530078 	cmp	r3, #120	@ 0x78
     cf4:	0a000002 	beq	d04 <printf+0xdc>
     cf8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cfc:	e3530070 	cmp	r3, #112	@ 0x70
     d00:	1a00000a 	bne	d30 <printf+0x108>
     d04:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d08:	e5933000 	ldr	r3, [r3]
     d0c:	e1a01003 	mov	r1, r3
     d10:	e3a03000 	mov	r3, #0
     d14:	e3a02010 	mov	r2, #16
     d18:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d1c:	ebffff73 	bl	af0 <printint>
     d20:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d24:	e2833004 	add	r3, r3, #4
     d28:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d2c:	ea000039 	b	e18 <printf+0x1f0>
     d30:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d34:	e3530073 	cmp	r3, #115	@ 0x73
     d38:	1a000018 	bne	da0 <printf+0x178>
     d3c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d40:	e5933000 	ldr	r3, [r3]
     d44:	e50b300c 	str	r3, [fp, #-12]
     d48:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d4c:	e2833004 	add	r3, r3, #4
     d50:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d54:	e51b300c 	ldr	r3, [fp, #-12]
     d58:	e3530000 	cmp	r3, #0
     d5c:	1a00000a 	bne	d8c <printf+0x164>
     d60:	e59f30f4 	ldr	r3, [pc, #244]	@ e5c <printf+0x234>
     d64:	e50b300c 	str	r3, [fp, #-12]
     d68:	ea000007 	b	d8c <printf+0x164>
     d6c:	e51b300c 	ldr	r3, [fp, #-12]
     d70:	e5d33000 	ldrb	r3, [r3]
     d74:	e1a01003 	mov	r1, r3
     d78:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d7c:	ebffff4d 	bl	ab8 <putc>
     d80:	e51b300c 	ldr	r3, [fp, #-12]
     d84:	e2833001 	add	r3, r3, #1
     d88:	e50b300c 	str	r3, [fp, #-12]
     d8c:	e51b300c 	ldr	r3, [fp, #-12]
     d90:	e5d33000 	ldrb	r3, [r3]
     d94:	e3530000 	cmp	r3, #0
     d98:	1afffff3 	bne	d6c <printf+0x144>
     d9c:	ea00001d 	b	e18 <printf+0x1f0>
     da0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     da4:	e3530063 	cmp	r3, #99	@ 0x63
     da8:	1a000009 	bne	dd4 <printf+0x1ac>
     dac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     db0:	e5933000 	ldr	r3, [r3]
     db4:	e6ef3073 	uxtb	r3, r3
     db8:	e1a01003 	mov	r1, r3
     dbc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     dc0:	ebffff3c 	bl	ab8 <putc>
     dc4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dc8:	e2833004 	add	r3, r3, #4
     dcc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     dd0:	ea000010 	b	e18 <printf+0x1f0>
     dd4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dd8:	e3530025 	cmp	r3, #37	@ 0x25
     ddc:	1a000005 	bne	df8 <printf+0x1d0>
     de0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     de4:	e6ef3073 	uxtb	r3, r3
     de8:	e1a01003 	mov	r1, r3
     dec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     df0:	ebffff30 	bl	ab8 <putc>
     df4:	ea000007 	b	e18 <printf+0x1f0>
     df8:	e3a01025 	mov	r1, #37	@ 0x25
     dfc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e00:	ebffff2c 	bl	ab8 <putc>
     e04:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e08:	e6ef3073 	uxtb	r3, r3
     e0c:	e1a01003 	mov	r1, r3
     e10:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e14:	ebffff27 	bl	ab8 <putc>
     e18:	e3a03000 	mov	r3, #0
     e1c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     e20:	e51b3010 	ldr	r3, [fp, #-16]
     e24:	e2833001 	add	r3, r3, #1
     e28:	e50b3010 	str	r3, [fp, #-16]
     e2c:	e59b2004 	ldr	r2, [fp, #4]
     e30:	e51b3010 	ldr	r3, [fp, #-16]
     e34:	e0823003 	add	r3, r2, r3
     e38:	e5d33000 	ldrb	r3, [r3]
     e3c:	e3530000 	cmp	r3, #0
     e40:	1affff84 	bne	c58 <printf+0x30>
     e44:	e1a00000 	nop			@ (mov r0, r0)
     e48:	e1a00000 	nop			@ (mov r0, r0)
     e4c:	e24bd004 	sub	sp, fp, #4
     e50:	e8bd4800 	pop	{fp, lr}
     e54:	e28dd00c 	add	sp, sp, #12
     e58:	e12fff1e 	bx	lr
     e5c:	00001324 	.word	0x00001324

00000e60 <free>:
     e60:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     e64:	e28db000 	add	fp, sp, #0
     e68:	e24dd014 	sub	sp, sp, #20
     e6c:	e50b0010 	str	r0, [fp, #-16]
     e70:	e51b3010 	ldr	r3, [fp, #-16]
     e74:	e2433008 	sub	r3, r3, #8
     e78:	e50b300c 	str	r3, [fp, #-12]
     e7c:	e59f3154 	ldr	r3, [pc, #340]	@ fd8 <free+0x178>
     e80:	e5933000 	ldr	r3, [r3]
     e84:	e50b3008 	str	r3, [fp, #-8]
     e88:	ea000010 	b	ed0 <free+0x70>
     e8c:	e51b3008 	ldr	r3, [fp, #-8]
     e90:	e5933000 	ldr	r3, [r3]
     e94:	e51b2008 	ldr	r2, [fp, #-8]
     e98:	e1520003 	cmp	r2, r3
     e9c:	3a000008 	bcc	ec4 <free+0x64>
     ea0:	e51b200c 	ldr	r2, [fp, #-12]
     ea4:	e51b3008 	ldr	r3, [fp, #-8]
     ea8:	e1520003 	cmp	r2, r3
     eac:	8a000010 	bhi	ef4 <free+0x94>
     eb0:	e51b3008 	ldr	r3, [fp, #-8]
     eb4:	e5933000 	ldr	r3, [r3]
     eb8:	e51b200c 	ldr	r2, [fp, #-12]
     ebc:	e1520003 	cmp	r2, r3
     ec0:	3a00000b 	bcc	ef4 <free+0x94>
     ec4:	e51b3008 	ldr	r3, [fp, #-8]
     ec8:	e5933000 	ldr	r3, [r3]
     ecc:	e50b3008 	str	r3, [fp, #-8]
     ed0:	e51b200c 	ldr	r2, [fp, #-12]
     ed4:	e51b3008 	ldr	r3, [fp, #-8]
     ed8:	e1520003 	cmp	r2, r3
     edc:	9affffea 	bls	e8c <free+0x2c>
     ee0:	e51b3008 	ldr	r3, [fp, #-8]
     ee4:	e5933000 	ldr	r3, [r3]
     ee8:	e51b200c 	ldr	r2, [fp, #-12]
     eec:	e1520003 	cmp	r2, r3
     ef0:	2affffe5 	bcs	e8c <free+0x2c>
     ef4:	e51b300c 	ldr	r3, [fp, #-12]
     ef8:	e5933004 	ldr	r3, [r3, #4]
     efc:	e1a03183 	lsl	r3, r3, #3
     f00:	e51b200c 	ldr	r2, [fp, #-12]
     f04:	e0822003 	add	r2, r2, r3
     f08:	e51b3008 	ldr	r3, [fp, #-8]
     f0c:	e5933000 	ldr	r3, [r3]
     f10:	e1520003 	cmp	r2, r3
     f14:	1a00000d 	bne	f50 <free+0xf0>
     f18:	e51b300c 	ldr	r3, [fp, #-12]
     f1c:	e5932004 	ldr	r2, [r3, #4]
     f20:	e51b3008 	ldr	r3, [fp, #-8]
     f24:	e5933000 	ldr	r3, [r3]
     f28:	e5933004 	ldr	r3, [r3, #4]
     f2c:	e0822003 	add	r2, r2, r3
     f30:	e51b300c 	ldr	r3, [fp, #-12]
     f34:	e5832004 	str	r2, [r3, #4]
     f38:	e51b3008 	ldr	r3, [fp, #-8]
     f3c:	e5933000 	ldr	r3, [r3]
     f40:	e5932000 	ldr	r2, [r3]
     f44:	e51b300c 	ldr	r3, [fp, #-12]
     f48:	e5832000 	str	r2, [r3]
     f4c:	ea000003 	b	f60 <free+0x100>
     f50:	e51b3008 	ldr	r3, [fp, #-8]
     f54:	e5932000 	ldr	r2, [r3]
     f58:	e51b300c 	ldr	r3, [fp, #-12]
     f5c:	e5832000 	str	r2, [r3]
     f60:	e51b3008 	ldr	r3, [fp, #-8]
     f64:	e5933004 	ldr	r3, [r3, #4]
     f68:	e1a03183 	lsl	r3, r3, #3
     f6c:	e51b2008 	ldr	r2, [fp, #-8]
     f70:	e0823003 	add	r3, r2, r3
     f74:	e51b200c 	ldr	r2, [fp, #-12]
     f78:	e1520003 	cmp	r2, r3
     f7c:	1a00000b 	bne	fb0 <free+0x150>
     f80:	e51b3008 	ldr	r3, [fp, #-8]
     f84:	e5932004 	ldr	r2, [r3, #4]
     f88:	e51b300c 	ldr	r3, [fp, #-12]
     f8c:	e5933004 	ldr	r3, [r3, #4]
     f90:	e0822003 	add	r2, r2, r3
     f94:	e51b3008 	ldr	r3, [fp, #-8]
     f98:	e5832004 	str	r2, [r3, #4]
     f9c:	e51b300c 	ldr	r3, [fp, #-12]
     fa0:	e5932000 	ldr	r2, [r3]
     fa4:	e51b3008 	ldr	r3, [fp, #-8]
     fa8:	e5832000 	str	r2, [r3]
     fac:	ea000002 	b	fbc <free+0x15c>
     fb0:	e51b3008 	ldr	r3, [fp, #-8]
     fb4:	e51b200c 	ldr	r2, [fp, #-12]
     fb8:	e5832000 	str	r2, [r3]
     fbc:	e59f2014 	ldr	r2, [pc, #20]	@ fd8 <free+0x178>
     fc0:	e51b3008 	ldr	r3, [fp, #-8]
     fc4:	e5823000 	str	r3, [r2]
     fc8:	e1a00000 	nop			@ (mov r0, r0)
     fcc:	e28bd000 	add	sp, fp, #0
     fd0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     fd4:	e12fff1e 	bx	lr
     fd8:	00001548 	.word	0x00001548

00000fdc <morecore>:
     fdc:	e92d4800 	push	{fp, lr}
     fe0:	e28db004 	add	fp, sp, #4
     fe4:	e24dd010 	sub	sp, sp, #16
     fe8:	e50b0010 	str	r0, [fp, #-16]
     fec:	e51b3010 	ldr	r3, [fp, #-16]
     ff0:	e3530a01 	cmp	r3, #4096	@ 0x1000
     ff4:	2a000001 	bcs	1000 <morecore+0x24>
     ff8:	e3a03a01 	mov	r3, #4096	@ 0x1000
     ffc:	e50b3010 	str	r3, [fp, #-16]
    1000:	e51b3010 	ldr	r3, [fp, #-16]
    1004:	e1a03183 	lsl	r3, r3, #3
    1008:	e1a00003 	mov	r0, r3
    100c:	ebfffe6a 	bl	9bc <sbrk>
    1010:	e50b0008 	str	r0, [fp, #-8]
    1014:	e51b3008 	ldr	r3, [fp, #-8]
    1018:	e3730001 	cmn	r3, #1
    101c:	1a000001 	bne	1028 <morecore+0x4c>
    1020:	e3a03000 	mov	r3, #0
    1024:	ea00000a 	b	1054 <morecore+0x78>
    1028:	e51b3008 	ldr	r3, [fp, #-8]
    102c:	e50b300c 	str	r3, [fp, #-12]
    1030:	e51b300c 	ldr	r3, [fp, #-12]
    1034:	e51b2010 	ldr	r2, [fp, #-16]
    1038:	e5832004 	str	r2, [r3, #4]
    103c:	e51b300c 	ldr	r3, [fp, #-12]
    1040:	e2833008 	add	r3, r3, #8
    1044:	e1a00003 	mov	r0, r3
    1048:	ebffff84 	bl	e60 <free>
    104c:	e59f300c 	ldr	r3, [pc, #12]	@ 1060 <morecore+0x84>
    1050:	e5933000 	ldr	r3, [r3]
    1054:	e1a00003 	mov	r0, r3
    1058:	e24bd004 	sub	sp, fp, #4
    105c:	e8bd8800 	pop	{fp, pc}
    1060:	00001548 	.word	0x00001548

00001064 <malloc>:
    1064:	e92d4800 	push	{fp, lr}
    1068:	e28db004 	add	fp, sp, #4
    106c:	e24dd018 	sub	sp, sp, #24
    1070:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1074:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1078:	e2833007 	add	r3, r3, #7
    107c:	e1a031a3 	lsr	r3, r3, #3
    1080:	e2833001 	add	r3, r3, #1
    1084:	e50b3010 	str	r3, [fp, #-16]
    1088:	e59f3134 	ldr	r3, [pc, #308]	@ 11c4 <malloc+0x160>
    108c:	e5933000 	ldr	r3, [r3]
    1090:	e50b300c 	str	r3, [fp, #-12]
    1094:	e51b300c 	ldr	r3, [fp, #-12]
    1098:	e3530000 	cmp	r3, #0
    109c:	1a00000b 	bne	10d0 <malloc+0x6c>
    10a0:	e59f3120 	ldr	r3, [pc, #288]	@ 11c8 <malloc+0x164>
    10a4:	e50b300c 	str	r3, [fp, #-12]
    10a8:	e59f2114 	ldr	r2, [pc, #276]	@ 11c4 <malloc+0x160>
    10ac:	e51b300c 	ldr	r3, [fp, #-12]
    10b0:	e5823000 	str	r3, [r2]
    10b4:	e59f3108 	ldr	r3, [pc, #264]	@ 11c4 <malloc+0x160>
    10b8:	e5933000 	ldr	r3, [r3]
    10bc:	e59f2104 	ldr	r2, [pc, #260]	@ 11c8 <malloc+0x164>
    10c0:	e5823000 	str	r3, [r2]
    10c4:	e59f30fc 	ldr	r3, [pc, #252]	@ 11c8 <malloc+0x164>
    10c8:	e3a02000 	mov	r2, #0
    10cc:	e5832004 	str	r2, [r3, #4]
    10d0:	e51b300c 	ldr	r3, [fp, #-12]
    10d4:	e5933000 	ldr	r3, [r3]
    10d8:	e50b3008 	str	r3, [fp, #-8]
    10dc:	e51b3008 	ldr	r3, [fp, #-8]
    10e0:	e5933004 	ldr	r3, [r3, #4]
    10e4:	e51b2010 	ldr	r2, [fp, #-16]
    10e8:	e1520003 	cmp	r2, r3
    10ec:	8a00001e 	bhi	116c <malloc+0x108>
    10f0:	e51b3008 	ldr	r3, [fp, #-8]
    10f4:	e5933004 	ldr	r3, [r3, #4]
    10f8:	e51b2010 	ldr	r2, [fp, #-16]
    10fc:	e1520003 	cmp	r2, r3
    1100:	1a000004 	bne	1118 <malloc+0xb4>
    1104:	e51b3008 	ldr	r3, [fp, #-8]
    1108:	e5932000 	ldr	r2, [r3]
    110c:	e51b300c 	ldr	r3, [fp, #-12]
    1110:	e5832000 	str	r2, [r3]
    1114:	ea00000e 	b	1154 <malloc+0xf0>
    1118:	e51b3008 	ldr	r3, [fp, #-8]
    111c:	e5932004 	ldr	r2, [r3, #4]
    1120:	e51b3010 	ldr	r3, [fp, #-16]
    1124:	e0422003 	sub	r2, r2, r3
    1128:	e51b3008 	ldr	r3, [fp, #-8]
    112c:	e5832004 	str	r2, [r3, #4]
    1130:	e51b3008 	ldr	r3, [fp, #-8]
    1134:	e5933004 	ldr	r3, [r3, #4]
    1138:	e1a03183 	lsl	r3, r3, #3
    113c:	e51b2008 	ldr	r2, [fp, #-8]
    1140:	e0823003 	add	r3, r2, r3
    1144:	e50b3008 	str	r3, [fp, #-8]
    1148:	e51b3008 	ldr	r3, [fp, #-8]
    114c:	e51b2010 	ldr	r2, [fp, #-16]
    1150:	e5832004 	str	r2, [r3, #4]
    1154:	e59f2068 	ldr	r2, [pc, #104]	@ 11c4 <malloc+0x160>
    1158:	e51b300c 	ldr	r3, [fp, #-12]
    115c:	e5823000 	str	r3, [r2]
    1160:	e51b3008 	ldr	r3, [fp, #-8]
    1164:	e2833008 	add	r3, r3, #8
    1168:	ea000012 	b	11b8 <malloc+0x154>
    116c:	e59f3050 	ldr	r3, [pc, #80]	@ 11c4 <malloc+0x160>
    1170:	e5933000 	ldr	r3, [r3]
    1174:	e51b2008 	ldr	r2, [fp, #-8]
    1178:	e1520003 	cmp	r2, r3
    117c:	1a000007 	bne	11a0 <malloc+0x13c>
    1180:	e51b0010 	ldr	r0, [fp, #-16]
    1184:	ebffff94 	bl	fdc <morecore>
    1188:	e50b0008 	str	r0, [fp, #-8]
    118c:	e51b3008 	ldr	r3, [fp, #-8]
    1190:	e3530000 	cmp	r3, #0
    1194:	1a000001 	bne	11a0 <malloc+0x13c>
    1198:	e3a03000 	mov	r3, #0
    119c:	ea000005 	b	11b8 <malloc+0x154>
    11a0:	e51b3008 	ldr	r3, [fp, #-8]
    11a4:	e50b300c 	str	r3, [fp, #-12]
    11a8:	e51b3008 	ldr	r3, [fp, #-8]
    11ac:	e5933000 	ldr	r3, [r3]
    11b0:	e50b3008 	str	r3, [fp, #-8]
    11b4:	eaffffc8 	b	10dc <malloc+0x78>
    11b8:	e1a00003 	mov	r0, r3
    11bc:	e24bd004 	sub	sp, fp, #4
    11c0:	e8bd8800 	pop	{fp, pc}
    11c4:	00001548 	.word	0x00001548
    11c8:	00001540 	.word	0x00001540

000011cc <__udivsi3>:
    11cc:	e2512001 	subs	r2, r1, #1
    11d0:	012fff1e 	bxeq	lr
    11d4:	3a000036 	bcc	12b4 <__udivsi3+0xe8>
    11d8:	e1500001 	cmp	r0, r1
    11dc:	9a000022 	bls	126c <__udivsi3+0xa0>
    11e0:	e1110002 	tst	r1, r2
    11e4:	0a000023 	beq	1278 <__udivsi3+0xac>
    11e8:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    11ec:	01a01181 	lsleq	r1, r1, #3
    11f0:	03a03008 	moveq	r3, #8
    11f4:	13a03001 	movne	r3, #1
    11f8:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    11fc:	31510000 	cmpcc	r1, r0
    1200:	31a01201 	lslcc	r1, r1, #4
    1204:	31a03203 	lslcc	r3, r3, #4
    1208:	3afffffa 	bcc	11f8 <__udivsi3+0x2c>
    120c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1210:	31510000 	cmpcc	r1, r0
    1214:	31a01081 	lslcc	r1, r1, #1
    1218:	31a03083 	lslcc	r3, r3, #1
    121c:	3afffffa 	bcc	120c <__udivsi3+0x40>
    1220:	e3a02000 	mov	r2, #0
    1224:	e1500001 	cmp	r0, r1
    1228:	20400001 	subcs	r0, r0, r1
    122c:	21822003 	orrcs	r2, r2, r3
    1230:	e15000a1 	cmp	r0, r1, lsr #1
    1234:	204000a1 	subcs	r0, r0, r1, lsr #1
    1238:	218220a3 	orrcs	r2, r2, r3, lsr #1
    123c:	e1500121 	cmp	r0, r1, lsr #2
    1240:	20400121 	subcs	r0, r0, r1, lsr #2
    1244:	21822123 	orrcs	r2, r2, r3, lsr #2
    1248:	e15001a1 	cmp	r0, r1, lsr #3
    124c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1250:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1254:	e3500000 	cmp	r0, #0
    1258:	11b03223 	lsrsne	r3, r3, #4
    125c:	11a01221 	lsrne	r1, r1, #4
    1260:	1affffef 	bne	1224 <__udivsi3+0x58>
    1264:	e1a00002 	mov	r0, r2
    1268:	e12fff1e 	bx	lr
    126c:	03a00001 	moveq	r0, #1
    1270:	13a00000 	movne	r0, #0
    1274:	e12fff1e 	bx	lr
    1278:	e3510801 	cmp	r1, #65536	@ 0x10000
    127c:	21a01821 	lsrcs	r1, r1, #16
    1280:	23a02010 	movcs	r2, #16
    1284:	33a02000 	movcc	r2, #0
    1288:	e3510c01 	cmp	r1, #256	@ 0x100
    128c:	21a01421 	lsrcs	r1, r1, #8
    1290:	22822008 	addcs	r2, r2, #8
    1294:	e3510010 	cmp	r1, #16
    1298:	21a01221 	lsrcs	r1, r1, #4
    129c:	22822004 	addcs	r2, r2, #4
    12a0:	e3510004 	cmp	r1, #4
    12a4:	82822003 	addhi	r2, r2, #3
    12a8:	908220a1 	addls	r2, r2, r1, lsr #1
    12ac:	e1a00230 	lsr	r0, r0, r2
    12b0:	e12fff1e 	bx	lr
    12b4:	e3500000 	cmp	r0, #0
    12b8:	13e00000 	mvnne	r0, #0
    12bc:	ea000007 	b	12e0 <__aeabi_idiv0>

000012c0 <__aeabi_uidivmod>:
    12c0:	e3510000 	cmp	r1, #0
    12c4:	0afffffa 	beq	12b4 <__udivsi3+0xe8>
    12c8:	e92d4003 	push	{r0, r1, lr}
    12cc:	ebffffbe 	bl	11cc <__udivsi3>
    12d0:	e8bd4006 	pop	{r1, r2, lr}
    12d4:	e0030092 	mul	r3, r2, r0
    12d8:	e0411003 	sub	r1, r1, r3
    12dc:	e12fff1e 	bx	lr

000012e0 <__aeabi_idiv0>:
    12e0:	e12fff1e 	bx	lr
