
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
      f0:	eb0001b7 	bl	7d4 <read>
      f4:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
      f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
      fc:	e3530000 	cmp	r3, #0
     100:	caffffcc 	bgt	38 <wc+0x38>
     104:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     108:	e3530000 	cmp	r3, #0
     10c:	aa000003 	bge	120 <wc+0x120>
     110:	e59f1040 	ldr	r1, [pc, #64]	@ 158 <wc+0x158>
     114:	e3a00001 	mov	r0, #1
     118:	eb0002ab 	bl	bcc <printf>
     11c:	eb000191 	bl	768 <exit>
     120:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     124:	e58d3004 	str	r3, [sp, #4]
     128:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     12c:	e58d3000 	str	r3, [sp]
     130:	e51b3010 	ldr	r3, [fp, #-16]
     134:	e51b200c 	ldr	r2, [fp, #-12]
     138:	e59f101c 	ldr	r1, [pc, #28]	@ 15c <wc+0x15c>
     13c:	e3a00001 	mov	r0, #1
     140:	eb0002a1 	bl	bcc <printf>
     144:	e1a00000 	nop			@ (mov r0, r0)
     148:	e24bd004 	sub	sp, fp, #4
     14c:	e8bd8800 	pop	{fp, pc}
     150:	000012e4 	.word	0x000012e4
     154:	00001288 	.word	0x00001288
     158:	00001290 	.word	0x00001290
     15c:	000012a0 	.word	0x000012a0

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
     18c:	eb000175 	bl	768 <exit>
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
     1b8:	eb0001b2 	bl	888 <open>
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
     1ec:	eb000276 	bl	bcc <printf>
     1f0:	eb00015c 	bl	768 <exit>
     1f4:	e51b3008 	ldr	r3, [fp, #-8]
     1f8:	e1a03103 	lsl	r3, r3, #2
     1fc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     200:	e0823003 	add	r3, r2, r3
     204:	e5933000 	ldr	r3, [r3]
     208:	e1a01003 	mov	r1, r3
     20c:	e51b000c 	ldr	r0, [fp, #-12]
     210:	ebffff7a 	bl	0 <wc>
     214:	e51b000c 	ldr	r0, [fp, #-12]
     218:	eb00017f 	bl	81c <close>
     21c:	e51b3008 	ldr	r3, [fp, #-8]
     220:	e2833001 	add	r3, r3, #1
     224:	e50b3008 	str	r3, [fp, #-8]
     228:	e51b2008 	ldr	r2, [fp, #-8]
     22c:	e51b3010 	ldr	r3, [fp, #-16]
     230:	e1520003 	cmp	r2, r3
     234:	baffffd8 	blt	19c <main+0x3c>
     238:	eb00014a 	bl	768 <exit>
     23c:	000012b0 	.word	0x000012b0
     240:	000012b4 	.word	0x000012b4

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
     538:	eb0000a5 	bl	7d4 <read>
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
     5e0:	eb0000a8 	bl	888 <open>
     5e4:	e50b0008 	str	r0, [fp, #-8]
     5e8:	e51b3008 	ldr	r3, [fp, #-8]
     5ec:	e3530000 	cmp	r3, #0
     5f0:	aa000001 	bge	5fc <stat+0x38>
     5f4:	e3e03000 	mvn	r3, #0
     5f8:	ea000006 	b	618 <stat+0x54>
     5fc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     600:	e51b0008 	ldr	r0, [fp, #-8]
     604:	eb0000ba 	bl	8f4 <fstat>
     608:	e50b000c 	str	r0, [fp, #-12]
     60c:	e51b0008 	ldr	r0, [fp, #-8]
     610:	eb000081 	bl	81c <close>
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
     69c:	e353002f 	cmp	r3, #47	@ 0x2f
     6a0:	9a000003 	bls	6b4 <atoi+0x90>
     6a4:	e51b3010 	ldr	r3, [fp, #-16]
     6a8:	e5d33000 	ldrb	r3, [r3]
     6ac:	e3530039 	cmp	r3, #57	@ 0x39
     6b0:	9a000001 	bls	6bc <atoi+0x98>
     6b4:	e3e03000 	mvn	r3, #0
     6b8:	ea000000 	b	6c0 <atoi+0x9c>
     6bc:	e51b3008 	ldr	r3, [fp, #-8]
     6c0:	e1a00003 	mov	r0, r3
     6c4:	e28bd000 	add	sp, fp, #0
     6c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6cc:	e12fff1e 	bx	lr

000006d0 <memmove>:
     6d0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6d4:	e28db000 	add	fp, sp, #0
     6d8:	e24dd01c 	sub	sp, sp, #28
     6dc:	e50b0010 	str	r0, [fp, #-16]
     6e0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     6e4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     6e8:	e51b3010 	ldr	r3, [fp, #-16]
     6ec:	e50b3008 	str	r3, [fp, #-8]
     6f0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     6f4:	e50b300c 	str	r3, [fp, #-12]
     6f8:	ea000007 	b	71c <memmove+0x4c>
     6fc:	e51b200c 	ldr	r2, [fp, #-12]
     700:	e2823001 	add	r3, r2, #1
     704:	e50b300c 	str	r3, [fp, #-12]
     708:	e51b3008 	ldr	r3, [fp, #-8]
     70c:	e2831001 	add	r1, r3, #1
     710:	e50b1008 	str	r1, [fp, #-8]
     714:	e5d22000 	ldrb	r2, [r2]
     718:	e5c32000 	strb	r2, [r3]
     71c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     720:	e2432001 	sub	r2, r3, #1
     724:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     728:	e3530000 	cmp	r3, #0
     72c:	cafffff2 	bgt	6fc <memmove+0x2c>
     730:	e51b3010 	ldr	r3, [fp, #-16]
     734:	e1a00003 	mov	r0, r3
     738:	e28bd000 	add	sp, fp, #0
     73c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     740:	e12fff1e 	bx	lr

00000744 <fork>:
     744:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     748:	e1a04003 	mov	r4, r3
     74c:	e1a03002 	mov	r3, r2
     750:	e1a02001 	mov	r2, r1
     754:	e1a01000 	mov	r1, r0
     758:	e3a00001 	mov	r0, #1
     75c:	ef000000 	svc	0x00000000
     760:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     764:	e12fff1e 	bx	lr

00000768 <exit>:
     768:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     76c:	e1a04003 	mov	r4, r3
     770:	e1a03002 	mov	r3, r2
     774:	e1a02001 	mov	r2, r1
     778:	e1a01000 	mov	r1, r0
     77c:	e3a00002 	mov	r0, #2
     780:	ef000000 	svc	0x00000000
     784:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     788:	e12fff1e 	bx	lr

0000078c <wait>:
     78c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     790:	e1a04003 	mov	r4, r3
     794:	e1a03002 	mov	r3, r2
     798:	e1a02001 	mov	r2, r1
     79c:	e1a01000 	mov	r1, r0
     7a0:	e3a00003 	mov	r0, #3
     7a4:	ef000000 	svc	0x00000000
     7a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7ac:	e12fff1e 	bx	lr

000007b0 <pipe>:
     7b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7b4:	e1a04003 	mov	r4, r3
     7b8:	e1a03002 	mov	r3, r2
     7bc:	e1a02001 	mov	r2, r1
     7c0:	e1a01000 	mov	r1, r0
     7c4:	e3a00004 	mov	r0, #4
     7c8:	ef000000 	svc	0x00000000
     7cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7d0:	e12fff1e 	bx	lr

000007d4 <read>:
     7d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7d8:	e1a04003 	mov	r4, r3
     7dc:	e1a03002 	mov	r3, r2
     7e0:	e1a02001 	mov	r2, r1
     7e4:	e1a01000 	mov	r1, r0
     7e8:	e3a00005 	mov	r0, #5
     7ec:	ef000000 	svc	0x00000000
     7f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7f4:	e12fff1e 	bx	lr

000007f8 <write>:
     7f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7fc:	e1a04003 	mov	r4, r3
     800:	e1a03002 	mov	r3, r2
     804:	e1a02001 	mov	r2, r1
     808:	e1a01000 	mov	r1, r0
     80c:	e3a00010 	mov	r0, #16
     810:	ef000000 	svc	0x00000000
     814:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     818:	e12fff1e 	bx	lr

0000081c <close>:
     81c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     820:	e1a04003 	mov	r4, r3
     824:	e1a03002 	mov	r3, r2
     828:	e1a02001 	mov	r2, r1
     82c:	e1a01000 	mov	r1, r0
     830:	e3a00015 	mov	r0, #21
     834:	ef000000 	svc	0x00000000
     838:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     83c:	e12fff1e 	bx	lr

00000840 <kill>:
     840:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     844:	e1a04003 	mov	r4, r3
     848:	e1a03002 	mov	r3, r2
     84c:	e1a02001 	mov	r2, r1
     850:	e1a01000 	mov	r1, r0
     854:	e3a00006 	mov	r0, #6
     858:	ef000000 	svc	0x00000000
     85c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     860:	e12fff1e 	bx	lr

00000864 <exec>:
     864:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     868:	e1a04003 	mov	r4, r3
     86c:	e1a03002 	mov	r3, r2
     870:	e1a02001 	mov	r2, r1
     874:	e1a01000 	mov	r1, r0
     878:	e3a00007 	mov	r0, #7
     87c:	ef000000 	svc	0x00000000
     880:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     884:	e12fff1e 	bx	lr

00000888 <open>:
     888:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     88c:	e1a04003 	mov	r4, r3
     890:	e1a03002 	mov	r3, r2
     894:	e1a02001 	mov	r2, r1
     898:	e1a01000 	mov	r1, r0
     89c:	e3a0000f 	mov	r0, #15
     8a0:	ef000000 	svc	0x00000000
     8a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a8:	e12fff1e 	bx	lr

000008ac <mknod>:
     8ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8b0:	e1a04003 	mov	r4, r3
     8b4:	e1a03002 	mov	r3, r2
     8b8:	e1a02001 	mov	r2, r1
     8bc:	e1a01000 	mov	r1, r0
     8c0:	e3a00011 	mov	r0, #17
     8c4:	ef000000 	svc	0x00000000
     8c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8cc:	e12fff1e 	bx	lr

000008d0 <unlink>:
     8d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8d4:	e1a04003 	mov	r4, r3
     8d8:	e1a03002 	mov	r3, r2
     8dc:	e1a02001 	mov	r2, r1
     8e0:	e1a01000 	mov	r1, r0
     8e4:	e3a00012 	mov	r0, #18
     8e8:	ef000000 	svc	0x00000000
     8ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8f0:	e12fff1e 	bx	lr

000008f4 <fstat>:
     8f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8f8:	e1a04003 	mov	r4, r3
     8fc:	e1a03002 	mov	r3, r2
     900:	e1a02001 	mov	r2, r1
     904:	e1a01000 	mov	r1, r0
     908:	e3a00008 	mov	r0, #8
     90c:	ef000000 	svc	0x00000000
     910:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     914:	e12fff1e 	bx	lr

00000918 <link>:
     918:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     91c:	e1a04003 	mov	r4, r3
     920:	e1a03002 	mov	r3, r2
     924:	e1a02001 	mov	r2, r1
     928:	e1a01000 	mov	r1, r0
     92c:	e3a00013 	mov	r0, #19
     930:	ef000000 	svc	0x00000000
     934:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     938:	e12fff1e 	bx	lr

0000093c <mkdir>:
     93c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     940:	e1a04003 	mov	r4, r3
     944:	e1a03002 	mov	r3, r2
     948:	e1a02001 	mov	r2, r1
     94c:	e1a01000 	mov	r1, r0
     950:	e3a00014 	mov	r0, #20
     954:	ef000000 	svc	0x00000000
     958:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     95c:	e12fff1e 	bx	lr

00000960 <chdir>:
     960:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     964:	e1a04003 	mov	r4, r3
     968:	e1a03002 	mov	r3, r2
     96c:	e1a02001 	mov	r2, r1
     970:	e1a01000 	mov	r1, r0
     974:	e3a00009 	mov	r0, #9
     978:	ef000000 	svc	0x00000000
     97c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     980:	e12fff1e 	bx	lr

00000984 <dup>:
     984:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     988:	e1a04003 	mov	r4, r3
     98c:	e1a03002 	mov	r3, r2
     990:	e1a02001 	mov	r2, r1
     994:	e1a01000 	mov	r1, r0
     998:	e3a0000a 	mov	r0, #10
     99c:	ef000000 	svc	0x00000000
     9a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a4:	e12fff1e 	bx	lr

000009a8 <getpid>:
     9a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9ac:	e1a04003 	mov	r4, r3
     9b0:	e1a03002 	mov	r3, r2
     9b4:	e1a02001 	mov	r2, r1
     9b8:	e1a01000 	mov	r1, r0
     9bc:	e3a0000b 	mov	r0, #11
     9c0:	ef000000 	svc	0x00000000
     9c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c8:	e12fff1e 	bx	lr

000009cc <sbrk>:
     9cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9d0:	e1a04003 	mov	r4, r3
     9d4:	e1a03002 	mov	r3, r2
     9d8:	e1a02001 	mov	r2, r1
     9dc:	e1a01000 	mov	r1, r0
     9e0:	e3a0000c 	mov	r0, #12
     9e4:	ef000000 	svc	0x00000000
     9e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9ec:	e12fff1e 	bx	lr

000009f0 <sleep>:
     9f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f4:	e1a04003 	mov	r4, r3
     9f8:	e1a03002 	mov	r3, r2
     9fc:	e1a02001 	mov	r2, r1
     a00:	e1a01000 	mov	r1, r0
     a04:	e3a0000d 	mov	r0, #13
     a08:	ef000000 	svc	0x00000000
     a0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a10:	e12fff1e 	bx	lr

00000a14 <uptime>:
     a14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a18:	e1a04003 	mov	r4, r3
     a1c:	e1a03002 	mov	r3, r2
     a20:	e1a02001 	mov	r2, r1
     a24:	e1a01000 	mov	r1, r0
     a28:	e3a0000e 	mov	r0, #14
     a2c:	ef000000 	svc	0x00000000
     a30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a34:	e12fff1e 	bx	lr

00000a38 <getprocs>:
     a38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a3c:	e1a04003 	mov	r4, r3
     a40:	e1a03002 	mov	r3, r2
     a44:	e1a02001 	mov	r2, r1
     a48:	e1a01000 	mov	r1, r0
     a4c:	e3a00016 	mov	r0, #22
     a50:	ef000000 	svc	0x00000000
     a54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a58:	e12fff1e 	bx	lr

00000a5c <putc>:
     a5c:	e92d4800 	push	{fp, lr}
     a60:	e28db004 	add	fp, sp, #4
     a64:	e24dd008 	sub	sp, sp, #8
     a68:	e50b0008 	str	r0, [fp, #-8]
     a6c:	e1a03001 	mov	r3, r1
     a70:	e54b3009 	strb	r3, [fp, #-9]
     a74:	e24b3009 	sub	r3, fp, #9
     a78:	e3a02001 	mov	r2, #1
     a7c:	e1a01003 	mov	r1, r3
     a80:	e51b0008 	ldr	r0, [fp, #-8]
     a84:	ebffff5b 	bl	7f8 <write>
     a88:	e1a00000 	nop			@ (mov r0, r0)
     a8c:	e24bd004 	sub	sp, fp, #4
     a90:	e8bd8800 	pop	{fp, pc}

00000a94 <printint>:
     a94:	e92d4800 	push	{fp, lr}
     a98:	e28db004 	add	fp, sp, #4
     a9c:	e24dd030 	sub	sp, sp, #48	@ 0x30
     aa0:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     aa4:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     aa8:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     aac:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     ab0:	e3a03000 	mov	r3, #0
     ab4:	e50b300c 	str	r3, [fp, #-12]
     ab8:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     abc:	e3530000 	cmp	r3, #0
     ac0:	0a000008 	beq	ae8 <printint+0x54>
     ac4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ac8:	e3530000 	cmp	r3, #0
     acc:	aa000005 	bge	ae8 <printint+0x54>
     ad0:	e3a03001 	mov	r3, #1
     ad4:	e50b300c 	str	r3, [fp, #-12]
     ad8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     adc:	e2633000 	rsb	r3, r3, #0
     ae0:	e50b3010 	str	r3, [fp, #-16]
     ae4:	ea000001 	b	af0 <printint+0x5c>
     ae8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     aec:	e50b3010 	str	r3, [fp, #-16]
     af0:	e3a03000 	mov	r3, #0
     af4:	e50b3008 	str	r3, [fp, #-8]
     af8:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     afc:	e51b3010 	ldr	r3, [fp, #-16]
     b00:	e1a01002 	mov	r1, r2
     b04:	e1a00003 	mov	r0, r3
     b08:	eb0001d5 	bl	1264 <__aeabi_uidivmod>
     b0c:	e1a03001 	mov	r3, r1
     b10:	e1a01003 	mov	r1, r3
     b14:	e51b3008 	ldr	r3, [fp, #-8]
     b18:	e2832001 	add	r2, r3, #1
     b1c:	e50b2008 	str	r2, [fp, #-8]
     b20:	e59f20a0 	ldr	r2, [pc, #160]	@ bc8 <printint+0x134>
     b24:	e7d22001 	ldrb	r2, [r2, r1]
     b28:	e2433004 	sub	r3, r3, #4
     b2c:	e083300b 	add	r3, r3, fp
     b30:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     b34:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     b38:	e1a01003 	mov	r1, r3
     b3c:	e51b0010 	ldr	r0, [fp, #-16]
     b40:	eb00018a 	bl	1170 <__udivsi3>
     b44:	e1a03000 	mov	r3, r0
     b48:	e50b3010 	str	r3, [fp, #-16]
     b4c:	e51b3010 	ldr	r3, [fp, #-16]
     b50:	e3530000 	cmp	r3, #0
     b54:	1affffe7 	bne	af8 <printint+0x64>
     b58:	e51b300c 	ldr	r3, [fp, #-12]
     b5c:	e3530000 	cmp	r3, #0
     b60:	0a00000e 	beq	ba0 <printint+0x10c>
     b64:	e51b3008 	ldr	r3, [fp, #-8]
     b68:	e2832001 	add	r2, r3, #1
     b6c:	e50b2008 	str	r2, [fp, #-8]
     b70:	e2433004 	sub	r3, r3, #4
     b74:	e083300b 	add	r3, r3, fp
     b78:	e3a0202d 	mov	r2, #45	@ 0x2d
     b7c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     b80:	ea000006 	b	ba0 <printint+0x10c>
     b84:	e24b2020 	sub	r2, fp, #32
     b88:	e51b3008 	ldr	r3, [fp, #-8]
     b8c:	e0823003 	add	r3, r2, r3
     b90:	e5d33000 	ldrb	r3, [r3]
     b94:	e1a01003 	mov	r1, r3
     b98:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     b9c:	ebffffae 	bl	a5c <putc>
     ba0:	e51b3008 	ldr	r3, [fp, #-8]
     ba4:	e2433001 	sub	r3, r3, #1
     ba8:	e50b3008 	str	r3, [fp, #-8]
     bac:	e51b3008 	ldr	r3, [fp, #-8]
     bb0:	e3530000 	cmp	r3, #0
     bb4:	aafffff2 	bge	b84 <printint+0xf0>
     bb8:	e1a00000 	nop			@ (mov r0, r0)
     bbc:	e1a00000 	nop			@ (mov r0, r0)
     bc0:	e24bd004 	sub	sp, fp, #4
     bc4:	e8bd8800 	pop	{fp, pc}
     bc8:	000012d0 	.word	0x000012d0

00000bcc <printf>:
     bcc:	e92d000e 	push	{r1, r2, r3}
     bd0:	e92d4800 	push	{fp, lr}
     bd4:	e28db004 	add	fp, sp, #4
     bd8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     bdc:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     be0:	e3a03000 	mov	r3, #0
     be4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     be8:	e28b3008 	add	r3, fp, #8
     bec:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bf0:	e3a03000 	mov	r3, #0
     bf4:	e50b3010 	str	r3, [fp, #-16]
     bf8:	ea000074 	b	dd0 <printf+0x204>
     bfc:	e59b2004 	ldr	r2, [fp, #4]
     c00:	e51b3010 	ldr	r3, [fp, #-16]
     c04:	e0823003 	add	r3, r2, r3
     c08:	e5d33000 	ldrb	r3, [r3]
     c0c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     c10:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     c14:	e3530000 	cmp	r3, #0
     c18:	1a00000b 	bne	c4c <printf+0x80>
     c1c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c20:	e3530025 	cmp	r3, #37	@ 0x25
     c24:	1a000002 	bne	c34 <printf+0x68>
     c28:	e3a03025 	mov	r3, #37	@ 0x25
     c2c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c30:	ea000063 	b	dc4 <printf+0x1f8>
     c34:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c38:	e6ef3073 	uxtb	r3, r3
     c3c:	e1a01003 	mov	r1, r3
     c40:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c44:	ebffff84 	bl	a5c <putc>
     c48:	ea00005d 	b	dc4 <printf+0x1f8>
     c4c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     c50:	e3530025 	cmp	r3, #37	@ 0x25
     c54:	1a00005a 	bne	dc4 <printf+0x1f8>
     c58:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c5c:	e3530064 	cmp	r3, #100	@ 0x64
     c60:	1a00000a 	bne	c90 <printf+0xc4>
     c64:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c68:	e5933000 	ldr	r3, [r3]
     c6c:	e1a01003 	mov	r1, r3
     c70:	e3a03001 	mov	r3, #1
     c74:	e3a0200a 	mov	r2, #10
     c78:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c7c:	ebffff84 	bl	a94 <printint>
     c80:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c84:	e2833004 	add	r3, r3, #4
     c88:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c8c:	ea00004a 	b	dbc <printf+0x1f0>
     c90:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c94:	e3530078 	cmp	r3, #120	@ 0x78
     c98:	0a000002 	beq	ca8 <printf+0xdc>
     c9c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ca0:	e3530070 	cmp	r3, #112	@ 0x70
     ca4:	1a00000a 	bne	cd4 <printf+0x108>
     ca8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cac:	e5933000 	ldr	r3, [r3]
     cb0:	e1a01003 	mov	r1, r3
     cb4:	e3a03000 	mov	r3, #0
     cb8:	e3a02010 	mov	r2, #16
     cbc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cc0:	ebffff73 	bl	a94 <printint>
     cc4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cc8:	e2833004 	add	r3, r3, #4
     ccc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     cd0:	ea000039 	b	dbc <printf+0x1f0>
     cd4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cd8:	e3530073 	cmp	r3, #115	@ 0x73
     cdc:	1a000018 	bne	d44 <printf+0x178>
     ce0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ce4:	e5933000 	ldr	r3, [r3]
     ce8:	e50b300c 	str	r3, [fp, #-12]
     cec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cf0:	e2833004 	add	r3, r3, #4
     cf4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     cf8:	e51b300c 	ldr	r3, [fp, #-12]
     cfc:	e3530000 	cmp	r3, #0
     d00:	1a00000a 	bne	d30 <printf+0x164>
     d04:	e59f30f4 	ldr	r3, [pc, #244]	@ e00 <printf+0x234>
     d08:	e50b300c 	str	r3, [fp, #-12]
     d0c:	ea000007 	b	d30 <printf+0x164>
     d10:	e51b300c 	ldr	r3, [fp, #-12]
     d14:	e5d33000 	ldrb	r3, [r3]
     d18:	e1a01003 	mov	r1, r3
     d1c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d20:	ebffff4d 	bl	a5c <putc>
     d24:	e51b300c 	ldr	r3, [fp, #-12]
     d28:	e2833001 	add	r3, r3, #1
     d2c:	e50b300c 	str	r3, [fp, #-12]
     d30:	e51b300c 	ldr	r3, [fp, #-12]
     d34:	e5d33000 	ldrb	r3, [r3]
     d38:	e3530000 	cmp	r3, #0
     d3c:	1afffff3 	bne	d10 <printf+0x144>
     d40:	ea00001d 	b	dbc <printf+0x1f0>
     d44:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d48:	e3530063 	cmp	r3, #99	@ 0x63
     d4c:	1a000009 	bne	d78 <printf+0x1ac>
     d50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d54:	e5933000 	ldr	r3, [r3]
     d58:	e6ef3073 	uxtb	r3, r3
     d5c:	e1a01003 	mov	r1, r3
     d60:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d64:	ebffff3c 	bl	a5c <putc>
     d68:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d6c:	e2833004 	add	r3, r3, #4
     d70:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d74:	ea000010 	b	dbc <printf+0x1f0>
     d78:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d7c:	e3530025 	cmp	r3, #37	@ 0x25
     d80:	1a000005 	bne	d9c <printf+0x1d0>
     d84:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d88:	e6ef3073 	uxtb	r3, r3
     d8c:	e1a01003 	mov	r1, r3
     d90:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d94:	ebffff30 	bl	a5c <putc>
     d98:	ea000007 	b	dbc <printf+0x1f0>
     d9c:	e3a01025 	mov	r1, #37	@ 0x25
     da0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     da4:	ebffff2c 	bl	a5c <putc>
     da8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dac:	e6ef3073 	uxtb	r3, r3
     db0:	e1a01003 	mov	r1, r3
     db4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     db8:	ebffff27 	bl	a5c <putc>
     dbc:	e3a03000 	mov	r3, #0
     dc0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     dc4:	e51b3010 	ldr	r3, [fp, #-16]
     dc8:	e2833001 	add	r3, r3, #1
     dcc:	e50b3010 	str	r3, [fp, #-16]
     dd0:	e59b2004 	ldr	r2, [fp, #4]
     dd4:	e51b3010 	ldr	r3, [fp, #-16]
     dd8:	e0823003 	add	r3, r2, r3
     ddc:	e5d33000 	ldrb	r3, [r3]
     de0:	e3530000 	cmp	r3, #0
     de4:	1affff84 	bne	bfc <printf+0x30>
     de8:	e1a00000 	nop			@ (mov r0, r0)
     dec:	e1a00000 	nop			@ (mov r0, r0)
     df0:	e24bd004 	sub	sp, fp, #4
     df4:	e8bd4800 	pop	{fp, lr}
     df8:	e28dd00c 	add	sp, sp, #12
     dfc:	e12fff1e 	bx	lr
     e00:	000012c8 	.word	0x000012c8

00000e04 <free>:
     e04:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     e08:	e28db000 	add	fp, sp, #0
     e0c:	e24dd014 	sub	sp, sp, #20
     e10:	e50b0010 	str	r0, [fp, #-16]
     e14:	e51b3010 	ldr	r3, [fp, #-16]
     e18:	e2433008 	sub	r3, r3, #8
     e1c:	e50b300c 	str	r3, [fp, #-12]
     e20:	e59f3154 	ldr	r3, [pc, #340]	@ f7c <free+0x178>
     e24:	e5933000 	ldr	r3, [r3]
     e28:	e50b3008 	str	r3, [fp, #-8]
     e2c:	ea000010 	b	e74 <free+0x70>
     e30:	e51b3008 	ldr	r3, [fp, #-8]
     e34:	e5933000 	ldr	r3, [r3]
     e38:	e51b2008 	ldr	r2, [fp, #-8]
     e3c:	e1520003 	cmp	r2, r3
     e40:	3a000008 	bcc	e68 <free+0x64>
     e44:	e51b200c 	ldr	r2, [fp, #-12]
     e48:	e51b3008 	ldr	r3, [fp, #-8]
     e4c:	e1520003 	cmp	r2, r3
     e50:	8a000010 	bhi	e98 <free+0x94>
     e54:	e51b3008 	ldr	r3, [fp, #-8]
     e58:	e5933000 	ldr	r3, [r3]
     e5c:	e51b200c 	ldr	r2, [fp, #-12]
     e60:	e1520003 	cmp	r2, r3
     e64:	3a00000b 	bcc	e98 <free+0x94>
     e68:	e51b3008 	ldr	r3, [fp, #-8]
     e6c:	e5933000 	ldr	r3, [r3]
     e70:	e50b3008 	str	r3, [fp, #-8]
     e74:	e51b200c 	ldr	r2, [fp, #-12]
     e78:	e51b3008 	ldr	r3, [fp, #-8]
     e7c:	e1520003 	cmp	r2, r3
     e80:	9affffea 	bls	e30 <free+0x2c>
     e84:	e51b3008 	ldr	r3, [fp, #-8]
     e88:	e5933000 	ldr	r3, [r3]
     e8c:	e51b200c 	ldr	r2, [fp, #-12]
     e90:	e1520003 	cmp	r2, r3
     e94:	2affffe5 	bcs	e30 <free+0x2c>
     e98:	e51b300c 	ldr	r3, [fp, #-12]
     e9c:	e5933004 	ldr	r3, [r3, #4]
     ea0:	e1a03183 	lsl	r3, r3, #3
     ea4:	e51b200c 	ldr	r2, [fp, #-12]
     ea8:	e0822003 	add	r2, r2, r3
     eac:	e51b3008 	ldr	r3, [fp, #-8]
     eb0:	e5933000 	ldr	r3, [r3]
     eb4:	e1520003 	cmp	r2, r3
     eb8:	1a00000d 	bne	ef4 <free+0xf0>
     ebc:	e51b300c 	ldr	r3, [fp, #-12]
     ec0:	e5932004 	ldr	r2, [r3, #4]
     ec4:	e51b3008 	ldr	r3, [fp, #-8]
     ec8:	e5933000 	ldr	r3, [r3]
     ecc:	e5933004 	ldr	r3, [r3, #4]
     ed0:	e0822003 	add	r2, r2, r3
     ed4:	e51b300c 	ldr	r3, [fp, #-12]
     ed8:	e5832004 	str	r2, [r3, #4]
     edc:	e51b3008 	ldr	r3, [fp, #-8]
     ee0:	e5933000 	ldr	r3, [r3]
     ee4:	e5932000 	ldr	r2, [r3]
     ee8:	e51b300c 	ldr	r3, [fp, #-12]
     eec:	e5832000 	str	r2, [r3]
     ef0:	ea000003 	b	f04 <free+0x100>
     ef4:	e51b3008 	ldr	r3, [fp, #-8]
     ef8:	e5932000 	ldr	r2, [r3]
     efc:	e51b300c 	ldr	r3, [fp, #-12]
     f00:	e5832000 	str	r2, [r3]
     f04:	e51b3008 	ldr	r3, [fp, #-8]
     f08:	e5933004 	ldr	r3, [r3, #4]
     f0c:	e1a03183 	lsl	r3, r3, #3
     f10:	e51b2008 	ldr	r2, [fp, #-8]
     f14:	e0823003 	add	r3, r2, r3
     f18:	e51b200c 	ldr	r2, [fp, #-12]
     f1c:	e1520003 	cmp	r2, r3
     f20:	1a00000b 	bne	f54 <free+0x150>
     f24:	e51b3008 	ldr	r3, [fp, #-8]
     f28:	e5932004 	ldr	r2, [r3, #4]
     f2c:	e51b300c 	ldr	r3, [fp, #-12]
     f30:	e5933004 	ldr	r3, [r3, #4]
     f34:	e0822003 	add	r2, r2, r3
     f38:	e51b3008 	ldr	r3, [fp, #-8]
     f3c:	e5832004 	str	r2, [r3, #4]
     f40:	e51b300c 	ldr	r3, [fp, #-12]
     f44:	e5932000 	ldr	r2, [r3]
     f48:	e51b3008 	ldr	r3, [fp, #-8]
     f4c:	e5832000 	str	r2, [r3]
     f50:	ea000002 	b	f60 <free+0x15c>
     f54:	e51b3008 	ldr	r3, [fp, #-8]
     f58:	e51b200c 	ldr	r2, [fp, #-12]
     f5c:	e5832000 	str	r2, [r3]
     f60:	e59f2014 	ldr	r2, [pc, #20]	@ f7c <free+0x178>
     f64:	e51b3008 	ldr	r3, [fp, #-8]
     f68:	e5823000 	str	r3, [r2]
     f6c:	e1a00000 	nop			@ (mov r0, r0)
     f70:	e28bd000 	add	sp, fp, #0
     f74:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     f78:	e12fff1e 	bx	lr
     f7c:	000014ec 	.word	0x000014ec

00000f80 <morecore>:
     f80:	e92d4800 	push	{fp, lr}
     f84:	e28db004 	add	fp, sp, #4
     f88:	e24dd010 	sub	sp, sp, #16
     f8c:	e50b0010 	str	r0, [fp, #-16]
     f90:	e51b3010 	ldr	r3, [fp, #-16]
     f94:	e3530a01 	cmp	r3, #4096	@ 0x1000
     f98:	2a000001 	bcs	fa4 <morecore+0x24>
     f9c:	e3a03a01 	mov	r3, #4096	@ 0x1000
     fa0:	e50b3010 	str	r3, [fp, #-16]
     fa4:	e51b3010 	ldr	r3, [fp, #-16]
     fa8:	e1a03183 	lsl	r3, r3, #3
     fac:	e1a00003 	mov	r0, r3
     fb0:	ebfffe85 	bl	9cc <sbrk>
     fb4:	e50b0008 	str	r0, [fp, #-8]
     fb8:	e51b3008 	ldr	r3, [fp, #-8]
     fbc:	e3730001 	cmn	r3, #1
     fc0:	1a000001 	bne	fcc <morecore+0x4c>
     fc4:	e3a03000 	mov	r3, #0
     fc8:	ea00000a 	b	ff8 <morecore+0x78>
     fcc:	e51b3008 	ldr	r3, [fp, #-8]
     fd0:	e50b300c 	str	r3, [fp, #-12]
     fd4:	e51b300c 	ldr	r3, [fp, #-12]
     fd8:	e51b2010 	ldr	r2, [fp, #-16]
     fdc:	e5832004 	str	r2, [r3, #4]
     fe0:	e51b300c 	ldr	r3, [fp, #-12]
     fe4:	e2833008 	add	r3, r3, #8
     fe8:	e1a00003 	mov	r0, r3
     fec:	ebffff84 	bl	e04 <free>
     ff0:	e59f300c 	ldr	r3, [pc, #12]	@ 1004 <morecore+0x84>
     ff4:	e5933000 	ldr	r3, [r3]
     ff8:	e1a00003 	mov	r0, r3
     ffc:	e24bd004 	sub	sp, fp, #4
    1000:	e8bd8800 	pop	{fp, pc}
    1004:	000014ec 	.word	0x000014ec

00001008 <malloc>:
    1008:	e92d4800 	push	{fp, lr}
    100c:	e28db004 	add	fp, sp, #4
    1010:	e24dd018 	sub	sp, sp, #24
    1014:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1018:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    101c:	e2833007 	add	r3, r3, #7
    1020:	e1a031a3 	lsr	r3, r3, #3
    1024:	e2833001 	add	r3, r3, #1
    1028:	e50b3010 	str	r3, [fp, #-16]
    102c:	e59f3134 	ldr	r3, [pc, #308]	@ 1168 <malloc+0x160>
    1030:	e5933000 	ldr	r3, [r3]
    1034:	e50b300c 	str	r3, [fp, #-12]
    1038:	e51b300c 	ldr	r3, [fp, #-12]
    103c:	e3530000 	cmp	r3, #0
    1040:	1a00000b 	bne	1074 <malloc+0x6c>
    1044:	e59f3120 	ldr	r3, [pc, #288]	@ 116c <malloc+0x164>
    1048:	e50b300c 	str	r3, [fp, #-12]
    104c:	e59f2114 	ldr	r2, [pc, #276]	@ 1168 <malloc+0x160>
    1050:	e51b300c 	ldr	r3, [fp, #-12]
    1054:	e5823000 	str	r3, [r2]
    1058:	e59f3108 	ldr	r3, [pc, #264]	@ 1168 <malloc+0x160>
    105c:	e5933000 	ldr	r3, [r3]
    1060:	e59f2104 	ldr	r2, [pc, #260]	@ 116c <malloc+0x164>
    1064:	e5823000 	str	r3, [r2]
    1068:	e59f30fc 	ldr	r3, [pc, #252]	@ 116c <malloc+0x164>
    106c:	e3a02000 	mov	r2, #0
    1070:	e5832004 	str	r2, [r3, #4]
    1074:	e51b300c 	ldr	r3, [fp, #-12]
    1078:	e5933000 	ldr	r3, [r3]
    107c:	e50b3008 	str	r3, [fp, #-8]
    1080:	e51b3008 	ldr	r3, [fp, #-8]
    1084:	e5933004 	ldr	r3, [r3, #4]
    1088:	e51b2010 	ldr	r2, [fp, #-16]
    108c:	e1520003 	cmp	r2, r3
    1090:	8a00001e 	bhi	1110 <malloc+0x108>
    1094:	e51b3008 	ldr	r3, [fp, #-8]
    1098:	e5933004 	ldr	r3, [r3, #4]
    109c:	e51b2010 	ldr	r2, [fp, #-16]
    10a0:	e1520003 	cmp	r2, r3
    10a4:	1a000004 	bne	10bc <malloc+0xb4>
    10a8:	e51b3008 	ldr	r3, [fp, #-8]
    10ac:	e5932000 	ldr	r2, [r3]
    10b0:	e51b300c 	ldr	r3, [fp, #-12]
    10b4:	e5832000 	str	r2, [r3]
    10b8:	ea00000e 	b	10f8 <malloc+0xf0>
    10bc:	e51b3008 	ldr	r3, [fp, #-8]
    10c0:	e5932004 	ldr	r2, [r3, #4]
    10c4:	e51b3010 	ldr	r3, [fp, #-16]
    10c8:	e0422003 	sub	r2, r2, r3
    10cc:	e51b3008 	ldr	r3, [fp, #-8]
    10d0:	e5832004 	str	r2, [r3, #4]
    10d4:	e51b3008 	ldr	r3, [fp, #-8]
    10d8:	e5933004 	ldr	r3, [r3, #4]
    10dc:	e1a03183 	lsl	r3, r3, #3
    10e0:	e51b2008 	ldr	r2, [fp, #-8]
    10e4:	e0823003 	add	r3, r2, r3
    10e8:	e50b3008 	str	r3, [fp, #-8]
    10ec:	e51b3008 	ldr	r3, [fp, #-8]
    10f0:	e51b2010 	ldr	r2, [fp, #-16]
    10f4:	e5832004 	str	r2, [r3, #4]
    10f8:	e59f2068 	ldr	r2, [pc, #104]	@ 1168 <malloc+0x160>
    10fc:	e51b300c 	ldr	r3, [fp, #-12]
    1100:	e5823000 	str	r3, [r2]
    1104:	e51b3008 	ldr	r3, [fp, #-8]
    1108:	e2833008 	add	r3, r3, #8
    110c:	ea000012 	b	115c <malloc+0x154>
    1110:	e59f3050 	ldr	r3, [pc, #80]	@ 1168 <malloc+0x160>
    1114:	e5933000 	ldr	r3, [r3]
    1118:	e51b2008 	ldr	r2, [fp, #-8]
    111c:	e1520003 	cmp	r2, r3
    1120:	1a000007 	bne	1144 <malloc+0x13c>
    1124:	e51b0010 	ldr	r0, [fp, #-16]
    1128:	ebffff94 	bl	f80 <morecore>
    112c:	e50b0008 	str	r0, [fp, #-8]
    1130:	e51b3008 	ldr	r3, [fp, #-8]
    1134:	e3530000 	cmp	r3, #0
    1138:	1a000001 	bne	1144 <malloc+0x13c>
    113c:	e3a03000 	mov	r3, #0
    1140:	ea000005 	b	115c <malloc+0x154>
    1144:	e51b3008 	ldr	r3, [fp, #-8]
    1148:	e50b300c 	str	r3, [fp, #-12]
    114c:	e51b3008 	ldr	r3, [fp, #-8]
    1150:	e5933000 	ldr	r3, [r3]
    1154:	e50b3008 	str	r3, [fp, #-8]
    1158:	eaffffc8 	b	1080 <malloc+0x78>
    115c:	e1a00003 	mov	r0, r3
    1160:	e24bd004 	sub	sp, fp, #4
    1164:	e8bd8800 	pop	{fp, pc}
    1168:	000014ec 	.word	0x000014ec
    116c:	000014e4 	.word	0x000014e4

00001170 <__udivsi3>:
    1170:	e2512001 	subs	r2, r1, #1
    1174:	012fff1e 	bxeq	lr
    1178:	3a000036 	bcc	1258 <__udivsi3+0xe8>
    117c:	e1500001 	cmp	r0, r1
    1180:	9a000022 	bls	1210 <__udivsi3+0xa0>
    1184:	e1110002 	tst	r1, r2
    1188:	0a000023 	beq	121c <__udivsi3+0xac>
    118c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1190:	01a01181 	lsleq	r1, r1, #3
    1194:	03a03008 	moveq	r3, #8
    1198:	13a03001 	movne	r3, #1
    119c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    11a0:	31510000 	cmpcc	r1, r0
    11a4:	31a01201 	lslcc	r1, r1, #4
    11a8:	31a03203 	lslcc	r3, r3, #4
    11ac:	3afffffa 	bcc	119c <__udivsi3+0x2c>
    11b0:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    11b4:	31510000 	cmpcc	r1, r0
    11b8:	31a01081 	lslcc	r1, r1, #1
    11bc:	31a03083 	lslcc	r3, r3, #1
    11c0:	3afffffa 	bcc	11b0 <__udivsi3+0x40>
    11c4:	e3a02000 	mov	r2, #0
    11c8:	e1500001 	cmp	r0, r1
    11cc:	20400001 	subcs	r0, r0, r1
    11d0:	21822003 	orrcs	r2, r2, r3
    11d4:	e15000a1 	cmp	r0, r1, lsr #1
    11d8:	204000a1 	subcs	r0, r0, r1, lsr #1
    11dc:	218220a3 	orrcs	r2, r2, r3, lsr #1
    11e0:	e1500121 	cmp	r0, r1, lsr #2
    11e4:	20400121 	subcs	r0, r0, r1, lsr #2
    11e8:	21822123 	orrcs	r2, r2, r3, lsr #2
    11ec:	e15001a1 	cmp	r0, r1, lsr #3
    11f0:	204001a1 	subcs	r0, r0, r1, lsr #3
    11f4:	218221a3 	orrcs	r2, r2, r3, lsr #3
    11f8:	e3500000 	cmp	r0, #0
    11fc:	11b03223 	lsrsne	r3, r3, #4
    1200:	11a01221 	lsrne	r1, r1, #4
    1204:	1affffef 	bne	11c8 <__udivsi3+0x58>
    1208:	e1a00002 	mov	r0, r2
    120c:	e12fff1e 	bx	lr
    1210:	03a00001 	moveq	r0, #1
    1214:	13a00000 	movne	r0, #0
    1218:	e12fff1e 	bx	lr
    121c:	e3510801 	cmp	r1, #65536	@ 0x10000
    1220:	21a01821 	lsrcs	r1, r1, #16
    1224:	23a02010 	movcs	r2, #16
    1228:	33a02000 	movcc	r2, #0
    122c:	e3510c01 	cmp	r1, #256	@ 0x100
    1230:	21a01421 	lsrcs	r1, r1, #8
    1234:	22822008 	addcs	r2, r2, #8
    1238:	e3510010 	cmp	r1, #16
    123c:	21a01221 	lsrcs	r1, r1, #4
    1240:	22822004 	addcs	r2, r2, #4
    1244:	e3510004 	cmp	r1, #4
    1248:	82822003 	addhi	r2, r2, #3
    124c:	908220a1 	addls	r2, r2, r1, lsr #1
    1250:	e1a00230 	lsr	r0, r0, r2
    1254:	e12fff1e 	bx	lr
    1258:	e3500000 	cmp	r0, #0
    125c:	13e00000 	mvnne	r0, #0
    1260:	ea000007 	b	1284 <__aeabi_idiv0>

00001264 <__aeabi_uidivmod>:
    1264:	e3510000 	cmp	r1, #0
    1268:	0afffffa 	beq	1258 <__udivsi3+0xe8>
    126c:	e92d4003 	push	{r0, r1, lr}
    1270:	ebffffbe 	bl	1170 <__udivsi3>
    1274:	e8bd4006 	pop	{r1, r2, lr}
    1278:	e0030092 	mul	r3, r2, r0
    127c:	e0411003 	sub	r1, r1, r3
    1280:	e12fff1e 	bx	lr

00001284 <__aeabi_idiv0>:
    1284:	e12fff1e 	bx	lr
