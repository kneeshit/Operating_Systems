
_ps:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4810 	push	{r4, fp, lr}
       4:	e28db008 	add	fp, sp, #8
       8:	e24ddec2 	sub	sp, sp, #3104	@ 0xc20
       c:	e24dd004 	sub	sp, sp, #4
      10:	e50b0c18 	str	r0, [fp, #-3096]	@ 0xfffff3e8
      14:	e50b1c1c 	str	r1, [fp, #-3100]	@ 0xfffff3e4
      18:	e24b3b03 	sub	r3, fp, #3072	@ 0xc00
      1c:	e243300c 	sub	r3, r3, #12
      20:	e2433008 	sub	r3, r3, #8
      24:	e3a01040 	mov	r1, #64	@ 0x40
      28:	e1a00003 	mov	r0, r3
      2c:	eb000246 	bl	94c <getprocs>
      30:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
      34:	e59f1114 	ldr	r1, [pc, #276]	@ 150 <main+0x150>
      38:	e3a00001 	mov	r0, #1
      3c:	eb0002a7 	bl	ae0 <printf>
      40:	e3a03000 	mov	r3, #0
      44:	e50b3010 	str	r3, [fp, #-16]
      48:	ea00003b 	b	13c <main+0x13c>
      4c:	e51b2010 	ldr	r2, [fp, #-16]
      50:	e1a03002 	mov	r3, r2
      54:	e1a03083 	lsl	r3, r3, #1
      58:	e0833002 	add	r3, r3, r2
      5c:	e1a03203 	lsl	r3, r3, #4
      60:	e243300c 	sub	r3, r3, #12
      64:	e083300b 	add	r3, r3, fp
      68:	e2433b03 	sub	r3, r3, #3072	@ 0xc00
      6c:	e2433008 	sub	r3, r3, #8
      70:	e593e000 	ldr	lr, [r3]
      74:	e51b2010 	ldr	r2, [fp, #-16]
      78:	e1a03002 	mov	r3, r2
      7c:	e1a03083 	lsl	r3, r3, #1
      80:	e0833002 	add	r3, r3, r2
      84:	e1a03203 	lsl	r3, r3, #4
      88:	e243300c 	sub	r3, r3, #12
      8c:	e083300b 	add	r3, r3, fp
      90:	e2433b03 	sub	r3, r3, #3072	@ 0xc00
      94:	e2433004 	sub	r3, r3, #4
      98:	e5934000 	ldr	r4, [r3]
      9c:	e24b2b03 	sub	r2, fp, #3072	@ 0xc00
      a0:	e242200c 	sub	r2, r2, #12
      a4:	e2422008 	sub	r2, r2, #8
      a8:	e51b1010 	ldr	r1, [fp, #-16]
      ac:	e1a03001 	mov	r3, r1
      b0:	e1a03083 	lsl	r3, r3, #1
      b4:	e0833001 	add	r3, r3, r1
      b8:	e1a03203 	lsl	r3, r3, #4
      bc:	e2833008 	add	r3, r3, #8
      c0:	e0820003 	add	r0, r2, r3
      c4:	e51b2010 	ldr	r2, [fp, #-16]
      c8:	e1a03002 	mov	r3, r2
      cc:	e1a03083 	lsl	r3, r3, #1
      d0:	e0833002 	add	r3, r3, r2
      d4:	e1a03203 	lsl	r3, r3, #4
      d8:	e243300c 	sub	r3, r3, #12
      dc:	e083300b 	add	r3, r3, fp
      e0:	e2433ebf 	sub	r3, r3, #3056	@ 0xbf0
      e4:	e593c000 	ldr	ip, [r3]
      e8:	e24b2b03 	sub	r2, fp, #3072	@ 0xc00
      ec:	e242200c 	sub	r2, r2, #12
      f0:	e2422008 	sub	r2, r2, #8
      f4:	e51b1010 	ldr	r1, [fp, #-16]
      f8:	e1a03001 	mov	r3, r1
      fc:	e1a03083 	lsl	r3, r3, #1
     100:	e0833001 	add	r3, r3, r1
     104:	e1a03203 	lsl	r3, r3, #4
     108:	e2833020 	add	r3, r3, #32
     10c:	e0823003 	add	r3, r2, r3
     110:	e58d3008 	str	r3, [sp, #8]
     114:	e58dc004 	str	ip, [sp, #4]
     118:	e58d0000 	str	r0, [sp]
     11c:	e1a03004 	mov	r3, r4
     120:	e1a0200e 	mov	r2, lr
     124:	e59f1028 	ldr	r1, [pc, #40]	@ 154 <main+0x154>
     128:	e3a00001 	mov	r0, #1
     12c:	eb00026b 	bl	ae0 <printf>
     130:	e51b3010 	ldr	r3, [fp, #-16]
     134:	e2833001 	add	r3, r3, #1
     138:	e50b3010 	str	r3, [fp, #-16]
     13c:	e51b2010 	ldr	r2, [fp, #-16]
     140:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     144:	e1520003 	cmp	r2, r3
     148:	baffffbf 	blt	4c <main+0x4c>
     14c:	eb00014a 	bl	67c <exit>
     150:	0000119c 	.word	0x0000119c
     154:	000011bc 	.word	0x000011bc

00000158 <strcpy>:
     158:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     15c:	e28db000 	add	fp, sp, #0
     160:	e24dd014 	sub	sp, sp, #20
     164:	e50b0010 	str	r0, [fp, #-16]
     168:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     16c:	e51b3010 	ldr	r3, [fp, #-16]
     170:	e50b3008 	str	r3, [fp, #-8]
     174:	e1a00000 	nop			@ (mov r0, r0)
     178:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     17c:	e2823001 	add	r3, r2, #1
     180:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     184:	e51b3010 	ldr	r3, [fp, #-16]
     188:	e2831001 	add	r1, r3, #1
     18c:	e50b1010 	str	r1, [fp, #-16]
     190:	e5d22000 	ldrb	r2, [r2]
     194:	e5c32000 	strb	r2, [r3]
     198:	e5d33000 	ldrb	r3, [r3]
     19c:	e3530000 	cmp	r3, #0
     1a0:	1afffff4 	bne	178 <strcpy+0x20>
     1a4:	e51b3008 	ldr	r3, [fp, #-8]
     1a8:	e1a00003 	mov	r0, r3
     1ac:	e28bd000 	add	sp, fp, #0
     1b0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1b4:	e12fff1e 	bx	lr

000001b8 <strcmp>:
     1b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1bc:	e28db000 	add	fp, sp, #0
     1c0:	e24dd00c 	sub	sp, sp, #12
     1c4:	e50b0008 	str	r0, [fp, #-8]
     1c8:	e50b100c 	str	r1, [fp, #-12]
     1cc:	ea000005 	b	1e8 <strcmp+0x30>
     1d0:	e51b3008 	ldr	r3, [fp, #-8]
     1d4:	e2833001 	add	r3, r3, #1
     1d8:	e50b3008 	str	r3, [fp, #-8]
     1dc:	e51b300c 	ldr	r3, [fp, #-12]
     1e0:	e2833001 	add	r3, r3, #1
     1e4:	e50b300c 	str	r3, [fp, #-12]
     1e8:	e51b3008 	ldr	r3, [fp, #-8]
     1ec:	e5d33000 	ldrb	r3, [r3]
     1f0:	e3530000 	cmp	r3, #0
     1f4:	0a000005 	beq	210 <strcmp+0x58>
     1f8:	e51b3008 	ldr	r3, [fp, #-8]
     1fc:	e5d32000 	ldrb	r2, [r3]
     200:	e51b300c 	ldr	r3, [fp, #-12]
     204:	e5d33000 	ldrb	r3, [r3]
     208:	e1520003 	cmp	r2, r3
     20c:	0affffef 	beq	1d0 <strcmp+0x18>
     210:	e51b3008 	ldr	r3, [fp, #-8]
     214:	e5d33000 	ldrb	r3, [r3]
     218:	e1a02003 	mov	r2, r3
     21c:	e51b300c 	ldr	r3, [fp, #-12]
     220:	e5d33000 	ldrb	r3, [r3]
     224:	e0423003 	sub	r3, r2, r3
     228:	e1a00003 	mov	r0, r3
     22c:	e28bd000 	add	sp, fp, #0
     230:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     234:	e12fff1e 	bx	lr

00000238 <strlen>:
     238:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     23c:	e28db000 	add	fp, sp, #0
     240:	e24dd014 	sub	sp, sp, #20
     244:	e50b0010 	str	r0, [fp, #-16]
     248:	e3a03000 	mov	r3, #0
     24c:	e50b3008 	str	r3, [fp, #-8]
     250:	ea000002 	b	260 <strlen+0x28>
     254:	e51b3008 	ldr	r3, [fp, #-8]
     258:	e2833001 	add	r3, r3, #1
     25c:	e50b3008 	str	r3, [fp, #-8]
     260:	e51b3008 	ldr	r3, [fp, #-8]
     264:	e51b2010 	ldr	r2, [fp, #-16]
     268:	e0823003 	add	r3, r2, r3
     26c:	e5d33000 	ldrb	r3, [r3]
     270:	e3530000 	cmp	r3, #0
     274:	1afffff6 	bne	254 <strlen+0x1c>
     278:	e51b3008 	ldr	r3, [fp, #-8]
     27c:	e1a00003 	mov	r0, r3
     280:	e28bd000 	add	sp, fp, #0
     284:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     288:	e12fff1e 	bx	lr

0000028c <memset>:
     28c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     290:	e28db000 	add	fp, sp, #0
     294:	e24dd024 	sub	sp, sp, #36	@ 0x24
     298:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     29c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     2a0:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     2a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2a8:	e50b3008 	str	r3, [fp, #-8]
     2ac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     2b0:	e54b300d 	strb	r3, [fp, #-13]
     2b4:	e55b200d 	ldrb	r2, [fp, #-13]
     2b8:	e1a03002 	mov	r3, r2
     2bc:	e1a03403 	lsl	r3, r3, #8
     2c0:	e0833002 	add	r3, r3, r2
     2c4:	e1a03803 	lsl	r3, r3, #16
     2c8:	e1a02003 	mov	r2, r3
     2cc:	e55b300d 	ldrb	r3, [fp, #-13]
     2d0:	e1a03403 	lsl	r3, r3, #8
     2d4:	e1822003 	orr	r2, r2, r3
     2d8:	e55b300d 	ldrb	r3, [fp, #-13]
     2dc:	e1823003 	orr	r3, r2, r3
     2e0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     2e4:	ea000008 	b	30c <memset+0x80>
     2e8:	e51b3008 	ldr	r3, [fp, #-8]
     2ec:	e55b200d 	ldrb	r2, [fp, #-13]
     2f0:	e5c32000 	strb	r2, [r3]
     2f4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2f8:	e2433001 	sub	r3, r3, #1
     2fc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     300:	e51b3008 	ldr	r3, [fp, #-8]
     304:	e2833001 	add	r3, r3, #1
     308:	e50b3008 	str	r3, [fp, #-8]
     30c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     310:	e3530000 	cmp	r3, #0
     314:	0a000003 	beq	328 <memset+0x9c>
     318:	e51b3008 	ldr	r3, [fp, #-8]
     31c:	e2033003 	and	r3, r3, #3
     320:	e3530000 	cmp	r3, #0
     324:	1affffef 	bne	2e8 <memset+0x5c>
     328:	e51b3008 	ldr	r3, [fp, #-8]
     32c:	e50b300c 	str	r3, [fp, #-12]
     330:	ea000008 	b	358 <memset+0xcc>
     334:	e51b300c 	ldr	r3, [fp, #-12]
     338:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     33c:	e5832000 	str	r2, [r3]
     340:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     344:	e2433004 	sub	r3, r3, #4
     348:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     34c:	e51b300c 	ldr	r3, [fp, #-12]
     350:	e2833004 	add	r3, r3, #4
     354:	e50b300c 	str	r3, [fp, #-12]
     358:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     35c:	e3530003 	cmp	r3, #3
     360:	8afffff3 	bhi	334 <memset+0xa8>
     364:	e51b300c 	ldr	r3, [fp, #-12]
     368:	e50b3008 	str	r3, [fp, #-8]
     36c:	ea000008 	b	394 <memset+0x108>
     370:	e51b3008 	ldr	r3, [fp, #-8]
     374:	e55b200d 	ldrb	r2, [fp, #-13]
     378:	e5c32000 	strb	r2, [r3]
     37c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     380:	e2433001 	sub	r3, r3, #1
     384:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     388:	e51b3008 	ldr	r3, [fp, #-8]
     38c:	e2833001 	add	r3, r3, #1
     390:	e50b3008 	str	r3, [fp, #-8]
     394:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     398:	e3530000 	cmp	r3, #0
     39c:	1afffff3 	bne	370 <memset+0xe4>
     3a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3a4:	e1a00003 	mov	r0, r3
     3a8:	e28bd000 	add	sp, fp, #0
     3ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3b0:	e12fff1e 	bx	lr

000003b4 <strchr>:
     3b4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3b8:	e28db000 	add	fp, sp, #0
     3bc:	e24dd00c 	sub	sp, sp, #12
     3c0:	e50b0008 	str	r0, [fp, #-8]
     3c4:	e1a03001 	mov	r3, r1
     3c8:	e54b3009 	strb	r3, [fp, #-9]
     3cc:	ea000009 	b	3f8 <strchr+0x44>
     3d0:	e51b3008 	ldr	r3, [fp, #-8]
     3d4:	e5d33000 	ldrb	r3, [r3]
     3d8:	e55b2009 	ldrb	r2, [fp, #-9]
     3dc:	e1520003 	cmp	r2, r3
     3e0:	1a000001 	bne	3ec <strchr+0x38>
     3e4:	e51b3008 	ldr	r3, [fp, #-8]
     3e8:	ea000007 	b	40c <strchr+0x58>
     3ec:	e51b3008 	ldr	r3, [fp, #-8]
     3f0:	e2833001 	add	r3, r3, #1
     3f4:	e50b3008 	str	r3, [fp, #-8]
     3f8:	e51b3008 	ldr	r3, [fp, #-8]
     3fc:	e5d33000 	ldrb	r3, [r3]
     400:	e3530000 	cmp	r3, #0
     404:	1afffff1 	bne	3d0 <strchr+0x1c>
     408:	e3a03000 	mov	r3, #0
     40c:	e1a00003 	mov	r0, r3
     410:	e28bd000 	add	sp, fp, #0
     414:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     418:	e12fff1e 	bx	lr

0000041c <gets>:
     41c:	e92d4800 	push	{fp, lr}
     420:	e28db004 	add	fp, sp, #4
     424:	e24dd018 	sub	sp, sp, #24
     428:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     42c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     430:	e3a03000 	mov	r3, #0
     434:	e50b3008 	str	r3, [fp, #-8]
     438:	ea000016 	b	498 <gets+0x7c>
     43c:	e24b300d 	sub	r3, fp, #13
     440:	e3a02001 	mov	r2, #1
     444:	e1a01003 	mov	r1, r3
     448:	e3a00000 	mov	r0, #0
     44c:	eb0000a5 	bl	6e8 <read>
     450:	e50b000c 	str	r0, [fp, #-12]
     454:	e51b300c 	ldr	r3, [fp, #-12]
     458:	e3530000 	cmp	r3, #0
     45c:	da000013 	ble	4b0 <gets+0x94>
     460:	e51b3008 	ldr	r3, [fp, #-8]
     464:	e2832001 	add	r2, r3, #1
     468:	e50b2008 	str	r2, [fp, #-8]
     46c:	e1a02003 	mov	r2, r3
     470:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     474:	e0833002 	add	r3, r3, r2
     478:	e55b200d 	ldrb	r2, [fp, #-13]
     47c:	e5c32000 	strb	r2, [r3]
     480:	e55b300d 	ldrb	r3, [fp, #-13]
     484:	e353000a 	cmp	r3, #10
     488:	0a000009 	beq	4b4 <gets+0x98>
     48c:	e55b300d 	ldrb	r3, [fp, #-13]
     490:	e353000d 	cmp	r3, #13
     494:	0a000006 	beq	4b4 <gets+0x98>
     498:	e51b3008 	ldr	r3, [fp, #-8]
     49c:	e2833001 	add	r3, r3, #1
     4a0:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     4a4:	e1520003 	cmp	r2, r3
     4a8:	caffffe3 	bgt	43c <gets+0x20>
     4ac:	ea000000 	b	4b4 <gets+0x98>
     4b0:	e1a00000 	nop			@ (mov r0, r0)
     4b4:	e51b3008 	ldr	r3, [fp, #-8]
     4b8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     4bc:	e0823003 	add	r3, r2, r3
     4c0:	e3a02000 	mov	r2, #0
     4c4:	e5c32000 	strb	r2, [r3]
     4c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4cc:	e1a00003 	mov	r0, r3
     4d0:	e24bd004 	sub	sp, fp, #4
     4d4:	e8bd8800 	pop	{fp, pc}

000004d8 <stat>:
     4d8:	e92d4800 	push	{fp, lr}
     4dc:	e28db004 	add	fp, sp, #4
     4e0:	e24dd010 	sub	sp, sp, #16
     4e4:	e50b0010 	str	r0, [fp, #-16]
     4e8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4ec:	e3a01000 	mov	r1, #0
     4f0:	e51b0010 	ldr	r0, [fp, #-16]
     4f4:	eb0000a8 	bl	79c <open>
     4f8:	e50b0008 	str	r0, [fp, #-8]
     4fc:	e51b3008 	ldr	r3, [fp, #-8]
     500:	e3530000 	cmp	r3, #0
     504:	aa000001 	bge	510 <stat+0x38>
     508:	e3e03000 	mvn	r3, #0
     50c:	ea000006 	b	52c <stat+0x54>
     510:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     514:	e51b0008 	ldr	r0, [fp, #-8]
     518:	eb0000ba 	bl	808 <fstat>
     51c:	e50b000c 	str	r0, [fp, #-12]
     520:	e51b0008 	ldr	r0, [fp, #-8]
     524:	eb000081 	bl	730 <close>
     528:	e51b300c 	ldr	r3, [fp, #-12]
     52c:	e1a00003 	mov	r0, r3
     530:	e24bd004 	sub	sp, fp, #4
     534:	e8bd8800 	pop	{fp, pc}

00000538 <atoi>:
     538:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     53c:	e28db000 	add	fp, sp, #0
     540:	e24dd014 	sub	sp, sp, #20
     544:	e50b0010 	str	r0, [fp, #-16]
     548:	e3a03000 	mov	r3, #0
     54c:	e50b3008 	str	r3, [fp, #-8]
     550:	ea00000c 	b	588 <atoi+0x50>
     554:	e51b2008 	ldr	r2, [fp, #-8]
     558:	e1a03002 	mov	r3, r2
     55c:	e1a03103 	lsl	r3, r3, #2
     560:	e0833002 	add	r3, r3, r2
     564:	e1a03083 	lsl	r3, r3, #1
     568:	e1a01003 	mov	r1, r3
     56c:	e51b3010 	ldr	r3, [fp, #-16]
     570:	e2832001 	add	r2, r3, #1
     574:	e50b2010 	str	r2, [fp, #-16]
     578:	e5d33000 	ldrb	r3, [r3]
     57c:	e0813003 	add	r3, r1, r3
     580:	e2433030 	sub	r3, r3, #48	@ 0x30
     584:	e50b3008 	str	r3, [fp, #-8]
     588:	e51b3010 	ldr	r3, [fp, #-16]
     58c:	e5d33000 	ldrb	r3, [r3]
     590:	e353002f 	cmp	r3, #47	@ 0x2f
     594:	9a000003 	bls	5a8 <atoi+0x70>
     598:	e51b3010 	ldr	r3, [fp, #-16]
     59c:	e5d33000 	ldrb	r3, [r3]
     5a0:	e3530039 	cmp	r3, #57	@ 0x39
     5a4:	9affffea 	bls	554 <atoi+0x1c>
     5a8:	e51b3010 	ldr	r3, [fp, #-16]
     5ac:	e5d33000 	ldrb	r3, [r3]
     5b0:	e353002f 	cmp	r3, #47	@ 0x2f
     5b4:	9a000003 	bls	5c8 <atoi+0x90>
     5b8:	e51b3010 	ldr	r3, [fp, #-16]
     5bc:	e5d33000 	ldrb	r3, [r3]
     5c0:	e3530039 	cmp	r3, #57	@ 0x39
     5c4:	9a000001 	bls	5d0 <atoi+0x98>
     5c8:	e3e03000 	mvn	r3, #0
     5cc:	ea000000 	b	5d4 <atoi+0x9c>
     5d0:	e51b3008 	ldr	r3, [fp, #-8]
     5d4:	e1a00003 	mov	r0, r3
     5d8:	e28bd000 	add	sp, fp, #0
     5dc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5e0:	e12fff1e 	bx	lr

000005e4 <memmove>:
     5e4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5e8:	e28db000 	add	fp, sp, #0
     5ec:	e24dd01c 	sub	sp, sp, #28
     5f0:	e50b0010 	str	r0, [fp, #-16]
     5f4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5f8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5fc:	e51b3010 	ldr	r3, [fp, #-16]
     600:	e50b3008 	str	r3, [fp, #-8]
     604:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     608:	e50b300c 	str	r3, [fp, #-12]
     60c:	ea000007 	b	630 <memmove+0x4c>
     610:	e51b200c 	ldr	r2, [fp, #-12]
     614:	e2823001 	add	r3, r2, #1
     618:	e50b300c 	str	r3, [fp, #-12]
     61c:	e51b3008 	ldr	r3, [fp, #-8]
     620:	e2831001 	add	r1, r3, #1
     624:	e50b1008 	str	r1, [fp, #-8]
     628:	e5d22000 	ldrb	r2, [r2]
     62c:	e5c32000 	strb	r2, [r3]
     630:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     634:	e2432001 	sub	r2, r3, #1
     638:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     63c:	e3530000 	cmp	r3, #0
     640:	cafffff2 	bgt	610 <memmove+0x2c>
     644:	e51b3010 	ldr	r3, [fp, #-16]
     648:	e1a00003 	mov	r0, r3
     64c:	e28bd000 	add	sp, fp, #0
     650:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     654:	e12fff1e 	bx	lr

00000658 <fork>:
     658:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     65c:	e1a04003 	mov	r4, r3
     660:	e1a03002 	mov	r3, r2
     664:	e1a02001 	mov	r2, r1
     668:	e1a01000 	mov	r1, r0
     66c:	e3a00001 	mov	r0, #1
     670:	ef000000 	svc	0x00000000
     674:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     678:	e12fff1e 	bx	lr

0000067c <exit>:
     67c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     680:	e1a04003 	mov	r4, r3
     684:	e1a03002 	mov	r3, r2
     688:	e1a02001 	mov	r2, r1
     68c:	e1a01000 	mov	r1, r0
     690:	e3a00002 	mov	r0, #2
     694:	ef000000 	svc	0x00000000
     698:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     69c:	e12fff1e 	bx	lr

000006a0 <wait>:
     6a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6a4:	e1a04003 	mov	r4, r3
     6a8:	e1a03002 	mov	r3, r2
     6ac:	e1a02001 	mov	r2, r1
     6b0:	e1a01000 	mov	r1, r0
     6b4:	e3a00003 	mov	r0, #3
     6b8:	ef000000 	svc	0x00000000
     6bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6c0:	e12fff1e 	bx	lr

000006c4 <pipe>:
     6c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6c8:	e1a04003 	mov	r4, r3
     6cc:	e1a03002 	mov	r3, r2
     6d0:	e1a02001 	mov	r2, r1
     6d4:	e1a01000 	mov	r1, r0
     6d8:	e3a00004 	mov	r0, #4
     6dc:	ef000000 	svc	0x00000000
     6e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6e4:	e12fff1e 	bx	lr

000006e8 <read>:
     6e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6ec:	e1a04003 	mov	r4, r3
     6f0:	e1a03002 	mov	r3, r2
     6f4:	e1a02001 	mov	r2, r1
     6f8:	e1a01000 	mov	r1, r0
     6fc:	e3a00005 	mov	r0, #5
     700:	ef000000 	svc	0x00000000
     704:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     708:	e12fff1e 	bx	lr

0000070c <write>:
     70c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     710:	e1a04003 	mov	r4, r3
     714:	e1a03002 	mov	r3, r2
     718:	e1a02001 	mov	r2, r1
     71c:	e1a01000 	mov	r1, r0
     720:	e3a00010 	mov	r0, #16
     724:	ef000000 	svc	0x00000000
     728:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     72c:	e12fff1e 	bx	lr

00000730 <close>:
     730:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     734:	e1a04003 	mov	r4, r3
     738:	e1a03002 	mov	r3, r2
     73c:	e1a02001 	mov	r2, r1
     740:	e1a01000 	mov	r1, r0
     744:	e3a00015 	mov	r0, #21
     748:	ef000000 	svc	0x00000000
     74c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     750:	e12fff1e 	bx	lr

00000754 <kill>:
     754:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     758:	e1a04003 	mov	r4, r3
     75c:	e1a03002 	mov	r3, r2
     760:	e1a02001 	mov	r2, r1
     764:	e1a01000 	mov	r1, r0
     768:	e3a00006 	mov	r0, #6
     76c:	ef000000 	svc	0x00000000
     770:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     774:	e12fff1e 	bx	lr

00000778 <exec>:
     778:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     77c:	e1a04003 	mov	r4, r3
     780:	e1a03002 	mov	r3, r2
     784:	e1a02001 	mov	r2, r1
     788:	e1a01000 	mov	r1, r0
     78c:	e3a00007 	mov	r0, #7
     790:	ef000000 	svc	0x00000000
     794:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     798:	e12fff1e 	bx	lr

0000079c <open>:
     79c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7a0:	e1a04003 	mov	r4, r3
     7a4:	e1a03002 	mov	r3, r2
     7a8:	e1a02001 	mov	r2, r1
     7ac:	e1a01000 	mov	r1, r0
     7b0:	e3a0000f 	mov	r0, #15
     7b4:	ef000000 	svc	0x00000000
     7b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7bc:	e12fff1e 	bx	lr

000007c0 <mknod>:
     7c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7c4:	e1a04003 	mov	r4, r3
     7c8:	e1a03002 	mov	r3, r2
     7cc:	e1a02001 	mov	r2, r1
     7d0:	e1a01000 	mov	r1, r0
     7d4:	e3a00011 	mov	r0, #17
     7d8:	ef000000 	svc	0x00000000
     7dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7e0:	e12fff1e 	bx	lr

000007e4 <unlink>:
     7e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7e8:	e1a04003 	mov	r4, r3
     7ec:	e1a03002 	mov	r3, r2
     7f0:	e1a02001 	mov	r2, r1
     7f4:	e1a01000 	mov	r1, r0
     7f8:	e3a00012 	mov	r0, #18
     7fc:	ef000000 	svc	0x00000000
     800:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     804:	e12fff1e 	bx	lr

00000808 <fstat>:
     808:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     80c:	e1a04003 	mov	r4, r3
     810:	e1a03002 	mov	r3, r2
     814:	e1a02001 	mov	r2, r1
     818:	e1a01000 	mov	r1, r0
     81c:	e3a00008 	mov	r0, #8
     820:	ef000000 	svc	0x00000000
     824:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     828:	e12fff1e 	bx	lr

0000082c <link>:
     82c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     830:	e1a04003 	mov	r4, r3
     834:	e1a03002 	mov	r3, r2
     838:	e1a02001 	mov	r2, r1
     83c:	e1a01000 	mov	r1, r0
     840:	e3a00013 	mov	r0, #19
     844:	ef000000 	svc	0x00000000
     848:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     84c:	e12fff1e 	bx	lr

00000850 <mkdir>:
     850:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     854:	e1a04003 	mov	r4, r3
     858:	e1a03002 	mov	r3, r2
     85c:	e1a02001 	mov	r2, r1
     860:	e1a01000 	mov	r1, r0
     864:	e3a00014 	mov	r0, #20
     868:	ef000000 	svc	0x00000000
     86c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     870:	e12fff1e 	bx	lr

00000874 <chdir>:
     874:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     878:	e1a04003 	mov	r4, r3
     87c:	e1a03002 	mov	r3, r2
     880:	e1a02001 	mov	r2, r1
     884:	e1a01000 	mov	r1, r0
     888:	e3a00009 	mov	r0, #9
     88c:	ef000000 	svc	0x00000000
     890:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     894:	e12fff1e 	bx	lr

00000898 <dup>:
     898:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     89c:	e1a04003 	mov	r4, r3
     8a0:	e1a03002 	mov	r3, r2
     8a4:	e1a02001 	mov	r2, r1
     8a8:	e1a01000 	mov	r1, r0
     8ac:	e3a0000a 	mov	r0, #10
     8b0:	ef000000 	svc	0x00000000
     8b4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8b8:	e12fff1e 	bx	lr

000008bc <getpid>:
     8bc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8c0:	e1a04003 	mov	r4, r3
     8c4:	e1a03002 	mov	r3, r2
     8c8:	e1a02001 	mov	r2, r1
     8cc:	e1a01000 	mov	r1, r0
     8d0:	e3a0000b 	mov	r0, #11
     8d4:	ef000000 	svc	0x00000000
     8d8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8dc:	e12fff1e 	bx	lr

000008e0 <sbrk>:
     8e0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8e4:	e1a04003 	mov	r4, r3
     8e8:	e1a03002 	mov	r3, r2
     8ec:	e1a02001 	mov	r2, r1
     8f0:	e1a01000 	mov	r1, r0
     8f4:	e3a0000c 	mov	r0, #12
     8f8:	ef000000 	svc	0x00000000
     8fc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     900:	e12fff1e 	bx	lr

00000904 <sleep>:
     904:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     908:	e1a04003 	mov	r4, r3
     90c:	e1a03002 	mov	r3, r2
     910:	e1a02001 	mov	r2, r1
     914:	e1a01000 	mov	r1, r0
     918:	e3a0000d 	mov	r0, #13
     91c:	ef000000 	svc	0x00000000
     920:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     924:	e12fff1e 	bx	lr

00000928 <uptime>:
     928:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     92c:	e1a04003 	mov	r4, r3
     930:	e1a03002 	mov	r3, r2
     934:	e1a02001 	mov	r2, r1
     938:	e1a01000 	mov	r1, r0
     93c:	e3a0000e 	mov	r0, #14
     940:	ef000000 	svc	0x00000000
     944:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     948:	e12fff1e 	bx	lr

0000094c <getprocs>:
     94c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     950:	e1a04003 	mov	r4, r3
     954:	e1a03002 	mov	r3, r2
     958:	e1a02001 	mov	r2, r1
     95c:	e1a01000 	mov	r1, r0
     960:	e3a00016 	mov	r0, #22
     964:	ef000000 	svc	0x00000000
     968:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     96c:	e12fff1e 	bx	lr

00000970 <putc>:
     970:	e92d4800 	push	{fp, lr}
     974:	e28db004 	add	fp, sp, #4
     978:	e24dd008 	sub	sp, sp, #8
     97c:	e50b0008 	str	r0, [fp, #-8]
     980:	e1a03001 	mov	r3, r1
     984:	e54b3009 	strb	r3, [fp, #-9]
     988:	e24b3009 	sub	r3, fp, #9
     98c:	e3a02001 	mov	r2, #1
     990:	e1a01003 	mov	r1, r3
     994:	e51b0008 	ldr	r0, [fp, #-8]
     998:	ebffff5b 	bl	70c <write>
     99c:	e1a00000 	nop			@ (mov r0, r0)
     9a0:	e24bd004 	sub	sp, fp, #4
     9a4:	e8bd8800 	pop	{fp, pc}

000009a8 <printint>:
     9a8:	e92d4800 	push	{fp, lr}
     9ac:	e28db004 	add	fp, sp, #4
     9b0:	e24dd030 	sub	sp, sp, #48	@ 0x30
     9b4:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     9b8:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     9bc:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     9c0:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     9c4:	e3a03000 	mov	r3, #0
     9c8:	e50b300c 	str	r3, [fp, #-12]
     9cc:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     9d0:	e3530000 	cmp	r3, #0
     9d4:	0a000008 	beq	9fc <printint+0x54>
     9d8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9dc:	e3530000 	cmp	r3, #0
     9e0:	aa000005 	bge	9fc <printint+0x54>
     9e4:	e3a03001 	mov	r3, #1
     9e8:	e50b300c 	str	r3, [fp, #-12]
     9ec:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9f0:	e2633000 	rsb	r3, r3, #0
     9f4:	e50b3010 	str	r3, [fp, #-16]
     9f8:	ea000001 	b	a04 <printint+0x5c>
     9fc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a00:	e50b3010 	str	r3, [fp, #-16]
     a04:	e3a03000 	mov	r3, #0
     a08:	e50b3008 	str	r3, [fp, #-8]
     a0c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     a10:	e51b3010 	ldr	r3, [fp, #-16]
     a14:	e1a01002 	mov	r1, r2
     a18:	e1a00003 	mov	r0, r3
     a1c:	eb0001d5 	bl	1178 <__aeabi_uidivmod>
     a20:	e1a03001 	mov	r3, r1
     a24:	e1a01003 	mov	r1, r3
     a28:	e51b3008 	ldr	r3, [fp, #-8]
     a2c:	e2832001 	add	r2, r3, #1
     a30:	e50b2008 	str	r2, [fp, #-8]
     a34:	e59f20a0 	ldr	r2, [pc, #160]	@ adc <printint+0x134>
     a38:	e7d22001 	ldrb	r2, [r2, r1]
     a3c:	e2433004 	sub	r3, r3, #4
     a40:	e083300b 	add	r3, r3, fp
     a44:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a48:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     a4c:	e1a01003 	mov	r1, r3
     a50:	e51b0010 	ldr	r0, [fp, #-16]
     a54:	eb00018a 	bl	1084 <__udivsi3>
     a58:	e1a03000 	mov	r3, r0
     a5c:	e50b3010 	str	r3, [fp, #-16]
     a60:	e51b3010 	ldr	r3, [fp, #-16]
     a64:	e3530000 	cmp	r3, #0
     a68:	1affffe7 	bne	a0c <printint+0x64>
     a6c:	e51b300c 	ldr	r3, [fp, #-12]
     a70:	e3530000 	cmp	r3, #0
     a74:	0a00000e 	beq	ab4 <printint+0x10c>
     a78:	e51b3008 	ldr	r3, [fp, #-8]
     a7c:	e2832001 	add	r2, r3, #1
     a80:	e50b2008 	str	r2, [fp, #-8]
     a84:	e2433004 	sub	r3, r3, #4
     a88:	e083300b 	add	r3, r3, fp
     a8c:	e3a0202d 	mov	r2, #45	@ 0x2d
     a90:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a94:	ea000006 	b	ab4 <printint+0x10c>
     a98:	e24b2020 	sub	r2, fp, #32
     a9c:	e51b3008 	ldr	r3, [fp, #-8]
     aa0:	e0823003 	add	r3, r2, r3
     aa4:	e5d33000 	ldrb	r3, [r3]
     aa8:	e1a01003 	mov	r1, r3
     aac:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     ab0:	ebffffae 	bl	970 <putc>
     ab4:	e51b3008 	ldr	r3, [fp, #-8]
     ab8:	e2433001 	sub	r3, r3, #1
     abc:	e50b3008 	str	r3, [fp, #-8]
     ac0:	e51b3008 	ldr	r3, [fp, #-8]
     ac4:	e3530000 	cmp	r3, #0
     ac8:	aafffff2 	bge	a98 <printint+0xf0>
     acc:	e1a00000 	nop			@ (mov r0, r0)
     ad0:	e1a00000 	nop			@ (mov r0, r0)
     ad4:	e24bd004 	sub	sp, fp, #4
     ad8:	e8bd8800 	pop	{fp, pc}
     adc:	000011d4 	.word	0x000011d4

00000ae0 <printf>:
     ae0:	e92d000e 	push	{r1, r2, r3}
     ae4:	e92d4800 	push	{fp, lr}
     ae8:	e28db004 	add	fp, sp, #4
     aec:	e24dd024 	sub	sp, sp, #36	@ 0x24
     af0:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     af4:	e3a03000 	mov	r3, #0
     af8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     afc:	e28b3008 	add	r3, fp, #8
     b00:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b04:	e3a03000 	mov	r3, #0
     b08:	e50b3010 	str	r3, [fp, #-16]
     b0c:	ea000074 	b	ce4 <printf+0x204>
     b10:	e59b2004 	ldr	r2, [fp, #4]
     b14:	e51b3010 	ldr	r3, [fp, #-16]
     b18:	e0823003 	add	r3, r2, r3
     b1c:	e5d33000 	ldrb	r3, [r3]
     b20:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     b24:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b28:	e3530000 	cmp	r3, #0
     b2c:	1a00000b 	bne	b60 <printf+0x80>
     b30:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b34:	e3530025 	cmp	r3, #37	@ 0x25
     b38:	1a000002 	bne	b48 <printf+0x68>
     b3c:	e3a03025 	mov	r3, #37	@ 0x25
     b40:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b44:	ea000063 	b	cd8 <printf+0x1f8>
     b48:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b4c:	e6ef3073 	uxtb	r3, r3
     b50:	e1a01003 	mov	r1, r3
     b54:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b58:	ebffff84 	bl	970 <putc>
     b5c:	ea00005d 	b	cd8 <printf+0x1f8>
     b60:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b64:	e3530025 	cmp	r3, #37	@ 0x25
     b68:	1a00005a 	bne	cd8 <printf+0x1f8>
     b6c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b70:	e3530064 	cmp	r3, #100	@ 0x64
     b74:	1a00000a 	bne	ba4 <printf+0xc4>
     b78:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b7c:	e5933000 	ldr	r3, [r3]
     b80:	e1a01003 	mov	r1, r3
     b84:	e3a03001 	mov	r3, #1
     b88:	e3a0200a 	mov	r2, #10
     b8c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b90:	ebffff84 	bl	9a8 <printint>
     b94:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b98:	e2833004 	add	r3, r3, #4
     b9c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ba0:	ea00004a 	b	cd0 <printf+0x1f0>
     ba4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ba8:	e3530078 	cmp	r3, #120	@ 0x78
     bac:	0a000002 	beq	bbc <printf+0xdc>
     bb0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bb4:	e3530070 	cmp	r3, #112	@ 0x70
     bb8:	1a00000a 	bne	be8 <printf+0x108>
     bbc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bc0:	e5933000 	ldr	r3, [r3]
     bc4:	e1a01003 	mov	r1, r3
     bc8:	e3a03000 	mov	r3, #0
     bcc:	e3a02010 	mov	r2, #16
     bd0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bd4:	ebffff73 	bl	9a8 <printint>
     bd8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bdc:	e2833004 	add	r3, r3, #4
     be0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     be4:	ea000039 	b	cd0 <printf+0x1f0>
     be8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bec:	e3530073 	cmp	r3, #115	@ 0x73
     bf0:	1a000018 	bne	c58 <printf+0x178>
     bf4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bf8:	e5933000 	ldr	r3, [r3]
     bfc:	e50b300c 	str	r3, [fp, #-12]
     c00:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c04:	e2833004 	add	r3, r3, #4
     c08:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c0c:	e51b300c 	ldr	r3, [fp, #-12]
     c10:	e3530000 	cmp	r3, #0
     c14:	1a00000a 	bne	c44 <printf+0x164>
     c18:	e59f30f4 	ldr	r3, [pc, #244]	@ d14 <printf+0x234>
     c1c:	e50b300c 	str	r3, [fp, #-12]
     c20:	ea000007 	b	c44 <printf+0x164>
     c24:	e51b300c 	ldr	r3, [fp, #-12]
     c28:	e5d33000 	ldrb	r3, [r3]
     c2c:	e1a01003 	mov	r1, r3
     c30:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c34:	ebffff4d 	bl	970 <putc>
     c38:	e51b300c 	ldr	r3, [fp, #-12]
     c3c:	e2833001 	add	r3, r3, #1
     c40:	e50b300c 	str	r3, [fp, #-12]
     c44:	e51b300c 	ldr	r3, [fp, #-12]
     c48:	e5d33000 	ldrb	r3, [r3]
     c4c:	e3530000 	cmp	r3, #0
     c50:	1afffff3 	bne	c24 <printf+0x144>
     c54:	ea00001d 	b	cd0 <printf+0x1f0>
     c58:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c5c:	e3530063 	cmp	r3, #99	@ 0x63
     c60:	1a000009 	bne	c8c <printf+0x1ac>
     c64:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c68:	e5933000 	ldr	r3, [r3]
     c6c:	e6ef3073 	uxtb	r3, r3
     c70:	e1a01003 	mov	r1, r3
     c74:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c78:	ebffff3c 	bl	970 <putc>
     c7c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c80:	e2833004 	add	r3, r3, #4
     c84:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c88:	ea000010 	b	cd0 <printf+0x1f0>
     c8c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c90:	e3530025 	cmp	r3, #37	@ 0x25
     c94:	1a000005 	bne	cb0 <printf+0x1d0>
     c98:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c9c:	e6ef3073 	uxtb	r3, r3
     ca0:	e1a01003 	mov	r1, r3
     ca4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ca8:	ebffff30 	bl	970 <putc>
     cac:	ea000007 	b	cd0 <printf+0x1f0>
     cb0:	e3a01025 	mov	r1, #37	@ 0x25
     cb4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cb8:	ebffff2c 	bl	970 <putc>
     cbc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cc0:	e6ef3073 	uxtb	r3, r3
     cc4:	e1a01003 	mov	r1, r3
     cc8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ccc:	ebffff27 	bl	970 <putc>
     cd0:	e3a03000 	mov	r3, #0
     cd4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     cd8:	e51b3010 	ldr	r3, [fp, #-16]
     cdc:	e2833001 	add	r3, r3, #1
     ce0:	e50b3010 	str	r3, [fp, #-16]
     ce4:	e59b2004 	ldr	r2, [fp, #4]
     ce8:	e51b3010 	ldr	r3, [fp, #-16]
     cec:	e0823003 	add	r3, r2, r3
     cf0:	e5d33000 	ldrb	r3, [r3]
     cf4:	e3530000 	cmp	r3, #0
     cf8:	1affff84 	bne	b10 <printf+0x30>
     cfc:	e1a00000 	nop			@ (mov r0, r0)
     d00:	e1a00000 	nop			@ (mov r0, r0)
     d04:	e24bd004 	sub	sp, fp, #4
     d08:	e8bd4800 	pop	{fp, lr}
     d0c:	e28dd00c 	add	sp, sp, #12
     d10:	e12fff1e 	bx	lr
     d14:	000011cc 	.word	0x000011cc

00000d18 <free>:
     d18:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     d1c:	e28db000 	add	fp, sp, #0
     d20:	e24dd014 	sub	sp, sp, #20
     d24:	e50b0010 	str	r0, [fp, #-16]
     d28:	e51b3010 	ldr	r3, [fp, #-16]
     d2c:	e2433008 	sub	r3, r3, #8
     d30:	e50b300c 	str	r3, [fp, #-12]
     d34:	e59f3154 	ldr	r3, [pc, #340]	@ e90 <free+0x178>
     d38:	e5933000 	ldr	r3, [r3]
     d3c:	e50b3008 	str	r3, [fp, #-8]
     d40:	ea000010 	b	d88 <free+0x70>
     d44:	e51b3008 	ldr	r3, [fp, #-8]
     d48:	e5933000 	ldr	r3, [r3]
     d4c:	e51b2008 	ldr	r2, [fp, #-8]
     d50:	e1520003 	cmp	r2, r3
     d54:	3a000008 	bcc	d7c <free+0x64>
     d58:	e51b200c 	ldr	r2, [fp, #-12]
     d5c:	e51b3008 	ldr	r3, [fp, #-8]
     d60:	e1520003 	cmp	r2, r3
     d64:	8a000010 	bhi	dac <free+0x94>
     d68:	e51b3008 	ldr	r3, [fp, #-8]
     d6c:	e5933000 	ldr	r3, [r3]
     d70:	e51b200c 	ldr	r2, [fp, #-12]
     d74:	e1520003 	cmp	r2, r3
     d78:	3a00000b 	bcc	dac <free+0x94>
     d7c:	e51b3008 	ldr	r3, [fp, #-8]
     d80:	e5933000 	ldr	r3, [r3]
     d84:	e50b3008 	str	r3, [fp, #-8]
     d88:	e51b200c 	ldr	r2, [fp, #-12]
     d8c:	e51b3008 	ldr	r3, [fp, #-8]
     d90:	e1520003 	cmp	r2, r3
     d94:	9affffea 	bls	d44 <free+0x2c>
     d98:	e51b3008 	ldr	r3, [fp, #-8]
     d9c:	e5933000 	ldr	r3, [r3]
     da0:	e51b200c 	ldr	r2, [fp, #-12]
     da4:	e1520003 	cmp	r2, r3
     da8:	2affffe5 	bcs	d44 <free+0x2c>
     dac:	e51b300c 	ldr	r3, [fp, #-12]
     db0:	e5933004 	ldr	r3, [r3, #4]
     db4:	e1a03183 	lsl	r3, r3, #3
     db8:	e51b200c 	ldr	r2, [fp, #-12]
     dbc:	e0822003 	add	r2, r2, r3
     dc0:	e51b3008 	ldr	r3, [fp, #-8]
     dc4:	e5933000 	ldr	r3, [r3]
     dc8:	e1520003 	cmp	r2, r3
     dcc:	1a00000d 	bne	e08 <free+0xf0>
     dd0:	e51b300c 	ldr	r3, [fp, #-12]
     dd4:	e5932004 	ldr	r2, [r3, #4]
     dd8:	e51b3008 	ldr	r3, [fp, #-8]
     ddc:	e5933000 	ldr	r3, [r3]
     de0:	e5933004 	ldr	r3, [r3, #4]
     de4:	e0822003 	add	r2, r2, r3
     de8:	e51b300c 	ldr	r3, [fp, #-12]
     dec:	e5832004 	str	r2, [r3, #4]
     df0:	e51b3008 	ldr	r3, [fp, #-8]
     df4:	e5933000 	ldr	r3, [r3]
     df8:	e5932000 	ldr	r2, [r3]
     dfc:	e51b300c 	ldr	r3, [fp, #-12]
     e00:	e5832000 	str	r2, [r3]
     e04:	ea000003 	b	e18 <free+0x100>
     e08:	e51b3008 	ldr	r3, [fp, #-8]
     e0c:	e5932000 	ldr	r2, [r3]
     e10:	e51b300c 	ldr	r3, [fp, #-12]
     e14:	e5832000 	str	r2, [r3]
     e18:	e51b3008 	ldr	r3, [fp, #-8]
     e1c:	e5933004 	ldr	r3, [r3, #4]
     e20:	e1a03183 	lsl	r3, r3, #3
     e24:	e51b2008 	ldr	r2, [fp, #-8]
     e28:	e0823003 	add	r3, r2, r3
     e2c:	e51b200c 	ldr	r2, [fp, #-12]
     e30:	e1520003 	cmp	r2, r3
     e34:	1a00000b 	bne	e68 <free+0x150>
     e38:	e51b3008 	ldr	r3, [fp, #-8]
     e3c:	e5932004 	ldr	r2, [r3, #4]
     e40:	e51b300c 	ldr	r3, [fp, #-12]
     e44:	e5933004 	ldr	r3, [r3, #4]
     e48:	e0822003 	add	r2, r2, r3
     e4c:	e51b3008 	ldr	r3, [fp, #-8]
     e50:	e5832004 	str	r2, [r3, #4]
     e54:	e51b300c 	ldr	r3, [fp, #-12]
     e58:	e5932000 	ldr	r2, [r3]
     e5c:	e51b3008 	ldr	r3, [fp, #-8]
     e60:	e5832000 	str	r2, [r3]
     e64:	ea000002 	b	e74 <free+0x15c>
     e68:	e51b3008 	ldr	r3, [fp, #-8]
     e6c:	e51b200c 	ldr	r2, [fp, #-12]
     e70:	e5832000 	str	r2, [r3]
     e74:	e59f2014 	ldr	r2, [pc, #20]	@ e90 <free+0x178>
     e78:	e51b3008 	ldr	r3, [fp, #-8]
     e7c:	e5823000 	str	r3, [r2]
     e80:	e1a00000 	nop			@ (mov r0, r0)
     e84:	e28bd000 	add	sp, fp, #0
     e88:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     e8c:	e12fff1e 	bx	lr
     e90:	000011f0 	.word	0x000011f0

00000e94 <morecore>:
     e94:	e92d4800 	push	{fp, lr}
     e98:	e28db004 	add	fp, sp, #4
     e9c:	e24dd010 	sub	sp, sp, #16
     ea0:	e50b0010 	str	r0, [fp, #-16]
     ea4:	e51b3010 	ldr	r3, [fp, #-16]
     ea8:	e3530a01 	cmp	r3, #4096	@ 0x1000
     eac:	2a000001 	bcs	eb8 <morecore+0x24>
     eb0:	e3a03a01 	mov	r3, #4096	@ 0x1000
     eb4:	e50b3010 	str	r3, [fp, #-16]
     eb8:	e51b3010 	ldr	r3, [fp, #-16]
     ebc:	e1a03183 	lsl	r3, r3, #3
     ec0:	e1a00003 	mov	r0, r3
     ec4:	ebfffe85 	bl	8e0 <sbrk>
     ec8:	e50b0008 	str	r0, [fp, #-8]
     ecc:	e51b3008 	ldr	r3, [fp, #-8]
     ed0:	e3730001 	cmn	r3, #1
     ed4:	1a000001 	bne	ee0 <morecore+0x4c>
     ed8:	e3a03000 	mov	r3, #0
     edc:	ea00000a 	b	f0c <morecore+0x78>
     ee0:	e51b3008 	ldr	r3, [fp, #-8]
     ee4:	e50b300c 	str	r3, [fp, #-12]
     ee8:	e51b300c 	ldr	r3, [fp, #-12]
     eec:	e51b2010 	ldr	r2, [fp, #-16]
     ef0:	e5832004 	str	r2, [r3, #4]
     ef4:	e51b300c 	ldr	r3, [fp, #-12]
     ef8:	e2833008 	add	r3, r3, #8
     efc:	e1a00003 	mov	r0, r3
     f00:	ebffff84 	bl	d18 <free>
     f04:	e59f300c 	ldr	r3, [pc, #12]	@ f18 <morecore+0x84>
     f08:	e5933000 	ldr	r3, [r3]
     f0c:	e1a00003 	mov	r0, r3
     f10:	e24bd004 	sub	sp, fp, #4
     f14:	e8bd8800 	pop	{fp, pc}
     f18:	000011f0 	.word	0x000011f0

00000f1c <malloc>:
     f1c:	e92d4800 	push	{fp, lr}
     f20:	e28db004 	add	fp, sp, #4
     f24:	e24dd018 	sub	sp, sp, #24
     f28:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     f2c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f30:	e2833007 	add	r3, r3, #7
     f34:	e1a031a3 	lsr	r3, r3, #3
     f38:	e2833001 	add	r3, r3, #1
     f3c:	e50b3010 	str	r3, [fp, #-16]
     f40:	e59f3134 	ldr	r3, [pc, #308]	@ 107c <malloc+0x160>
     f44:	e5933000 	ldr	r3, [r3]
     f48:	e50b300c 	str	r3, [fp, #-12]
     f4c:	e51b300c 	ldr	r3, [fp, #-12]
     f50:	e3530000 	cmp	r3, #0
     f54:	1a00000b 	bne	f88 <malloc+0x6c>
     f58:	e59f3120 	ldr	r3, [pc, #288]	@ 1080 <malloc+0x164>
     f5c:	e50b300c 	str	r3, [fp, #-12]
     f60:	e59f2114 	ldr	r2, [pc, #276]	@ 107c <malloc+0x160>
     f64:	e51b300c 	ldr	r3, [fp, #-12]
     f68:	e5823000 	str	r3, [r2]
     f6c:	e59f3108 	ldr	r3, [pc, #264]	@ 107c <malloc+0x160>
     f70:	e5933000 	ldr	r3, [r3]
     f74:	e59f2104 	ldr	r2, [pc, #260]	@ 1080 <malloc+0x164>
     f78:	e5823000 	str	r3, [r2]
     f7c:	e59f30fc 	ldr	r3, [pc, #252]	@ 1080 <malloc+0x164>
     f80:	e3a02000 	mov	r2, #0
     f84:	e5832004 	str	r2, [r3, #4]
     f88:	e51b300c 	ldr	r3, [fp, #-12]
     f8c:	e5933000 	ldr	r3, [r3]
     f90:	e50b3008 	str	r3, [fp, #-8]
     f94:	e51b3008 	ldr	r3, [fp, #-8]
     f98:	e5933004 	ldr	r3, [r3, #4]
     f9c:	e51b2010 	ldr	r2, [fp, #-16]
     fa0:	e1520003 	cmp	r2, r3
     fa4:	8a00001e 	bhi	1024 <malloc+0x108>
     fa8:	e51b3008 	ldr	r3, [fp, #-8]
     fac:	e5933004 	ldr	r3, [r3, #4]
     fb0:	e51b2010 	ldr	r2, [fp, #-16]
     fb4:	e1520003 	cmp	r2, r3
     fb8:	1a000004 	bne	fd0 <malloc+0xb4>
     fbc:	e51b3008 	ldr	r3, [fp, #-8]
     fc0:	e5932000 	ldr	r2, [r3]
     fc4:	e51b300c 	ldr	r3, [fp, #-12]
     fc8:	e5832000 	str	r2, [r3]
     fcc:	ea00000e 	b	100c <malloc+0xf0>
     fd0:	e51b3008 	ldr	r3, [fp, #-8]
     fd4:	e5932004 	ldr	r2, [r3, #4]
     fd8:	e51b3010 	ldr	r3, [fp, #-16]
     fdc:	e0422003 	sub	r2, r2, r3
     fe0:	e51b3008 	ldr	r3, [fp, #-8]
     fe4:	e5832004 	str	r2, [r3, #4]
     fe8:	e51b3008 	ldr	r3, [fp, #-8]
     fec:	e5933004 	ldr	r3, [r3, #4]
     ff0:	e1a03183 	lsl	r3, r3, #3
     ff4:	e51b2008 	ldr	r2, [fp, #-8]
     ff8:	e0823003 	add	r3, r2, r3
     ffc:	e50b3008 	str	r3, [fp, #-8]
    1000:	e51b3008 	ldr	r3, [fp, #-8]
    1004:	e51b2010 	ldr	r2, [fp, #-16]
    1008:	e5832004 	str	r2, [r3, #4]
    100c:	e59f2068 	ldr	r2, [pc, #104]	@ 107c <malloc+0x160>
    1010:	e51b300c 	ldr	r3, [fp, #-12]
    1014:	e5823000 	str	r3, [r2]
    1018:	e51b3008 	ldr	r3, [fp, #-8]
    101c:	e2833008 	add	r3, r3, #8
    1020:	ea000012 	b	1070 <malloc+0x154>
    1024:	e59f3050 	ldr	r3, [pc, #80]	@ 107c <malloc+0x160>
    1028:	e5933000 	ldr	r3, [r3]
    102c:	e51b2008 	ldr	r2, [fp, #-8]
    1030:	e1520003 	cmp	r2, r3
    1034:	1a000007 	bne	1058 <malloc+0x13c>
    1038:	e51b0010 	ldr	r0, [fp, #-16]
    103c:	ebffff94 	bl	e94 <morecore>
    1040:	e50b0008 	str	r0, [fp, #-8]
    1044:	e51b3008 	ldr	r3, [fp, #-8]
    1048:	e3530000 	cmp	r3, #0
    104c:	1a000001 	bne	1058 <malloc+0x13c>
    1050:	e3a03000 	mov	r3, #0
    1054:	ea000005 	b	1070 <malloc+0x154>
    1058:	e51b3008 	ldr	r3, [fp, #-8]
    105c:	e50b300c 	str	r3, [fp, #-12]
    1060:	e51b3008 	ldr	r3, [fp, #-8]
    1064:	e5933000 	ldr	r3, [r3]
    1068:	e50b3008 	str	r3, [fp, #-8]
    106c:	eaffffc8 	b	f94 <malloc+0x78>
    1070:	e1a00003 	mov	r0, r3
    1074:	e24bd004 	sub	sp, fp, #4
    1078:	e8bd8800 	pop	{fp, pc}
    107c:	000011f0 	.word	0x000011f0
    1080:	000011e8 	.word	0x000011e8

00001084 <__udivsi3>:
    1084:	e2512001 	subs	r2, r1, #1
    1088:	012fff1e 	bxeq	lr
    108c:	3a000036 	bcc	116c <__udivsi3+0xe8>
    1090:	e1500001 	cmp	r0, r1
    1094:	9a000022 	bls	1124 <__udivsi3+0xa0>
    1098:	e1110002 	tst	r1, r2
    109c:	0a000023 	beq	1130 <__udivsi3+0xac>
    10a0:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    10a4:	01a01181 	lsleq	r1, r1, #3
    10a8:	03a03008 	moveq	r3, #8
    10ac:	13a03001 	movne	r3, #1
    10b0:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    10b4:	31510000 	cmpcc	r1, r0
    10b8:	31a01201 	lslcc	r1, r1, #4
    10bc:	31a03203 	lslcc	r3, r3, #4
    10c0:	3afffffa 	bcc	10b0 <__udivsi3+0x2c>
    10c4:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    10c8:	31510000 	cmpcc	r1, r0
    10cc:	31a01081 	lslcc	r1, r1, #1
    10d0:	31a03083 	lslcc	r3, r3, #1
    10d4:	3afffffa 	bcc	10c4 <__udivsi3+0x40>
    10d8:	e3a02000 	mov	r2, #0
    10dc:	e1500001 	cmp	r0, r1
    10e0:	20400001 	subcs	r0, r0, r1
    10e4:	21822003 	orrcs	r2, r2, r3
    10e8:	e15000a1 	cmp	r0, r1, lsr #1
    10ec:	204000a1 	subcs	r0, r0, r1, lsr #1
    10f0:	218220a3 	orrcs	r2, r2, r3, lsr #1
    10f4:	e1500121 	cmp	r0, r1, lsr #2
    10f8:	20400121 	subcs	r0, r0, r1, lsr #2
    10fc:	21822123 	orrcs	r2, r2, r3, lsr #2
    1100:	e15001a1 	cmp	r0, r1, lsr #3
    1104:	204001a1 	subcs	r0, r0, r1, lsr #3
    1108:	218221a3 	orrcs	r2, r2, r3, lsr #3
    110c:	e3500000 	cmp	r0, #0
    1110:	11b03223 	lsrsne	r3, r3, #4
    1114:	11a01221 	lsrne	r1, r1, #4
    1118:	1affffef 	bne	10dc <__udivsi3+0x58>
    111c:	e1a00002 	mov	r0, r2
    1120:	e12fff1e 	bx	lr
    1124:	03a00001 	moveq	r0, #1
    1128:	13a00000 	movne	r0, #0
    112c:	e12fff1e 	bx	lr
    1130:	e3510801 	cmp	r1, #65536	@ 0x10000
    1134:	21a01821 	lsrcs	r1, r1, #16
    1138:	23a02010 	movcs	r2, #16
    113c:	33a02000 	movcc	r2, #0
    1140:	e3510c01 	cmp	r1, #256	@ 0x100
    1144:	21a01421 	lsrcs	r1, r1, #8
    1148:	22822008 	addcs	r2, r2, #8
    114c:	e3510010 	cmp	r1, #16
    1150:	21a01221 	lsrcs	r1, r1, #4
    1154:	22822004 	addcs	r2, r2, #4
    1158:	e3510004 	cmp	r1, #4
    115c:	82822003 	addhi	r2, r2, #3
    1160:	908220a1 	addls	r2, r2, r1, lsr #1
    1164:	e1a00230 	lsr	r0, r0, r2
    1168:	e12fff1e 	bx	lr
    116c:	e3500000 	cmp	r0, #0
    1170:	13e00000 	mvnne	r0, #0
    1174:	ea000007 	b	1198 <__aeabi_idiv0>

00001178 <__aeabi_uidivmod>:
    1178:	e3510000 	cmp	r1, #0
    117c:	0afffffa 	beq	116c <__udivsi3+0xe8>
    1180:	e92d4003 	push	{r0, r1, lr}
    1184:	ebffffbe 	bl	1084 <__udivsi3>
    1188:	e8bd4006 	pop	{r1, r2, lr}
    118c:	e0030092 	mul	r3, r2, r0
    1190:	e0411003 	sub	r1, r1, r3
    1194:	e12fff1e 	bx	lr

00001198 <__aeabi_idiv0>:
    1198:	e12fff1e 	bx	lr
