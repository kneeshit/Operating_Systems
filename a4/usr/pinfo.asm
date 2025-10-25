
_pinfo:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dde51 	sub	sp, sp, #1296	@ 0x510
       c:	e24b3c05 	sub	r3, fp, #1280	@ 0x500
      10:	e2433004 	sub	r3, r3, #4
      14:	e2433004 	sub	r3, r3, #4
      18:	e1a00003 	mov	r0, r3
      1c:	eb0002f1 	bl	be8 <getpinfo>
      20:	e1a03000 	mov	r3, r0
      24:	e3530000 	cmp	r3, #0
      28:	aa000003 	bge	3c <main+0x3c>
      2c:	e59f10c8 	ldr	r1, [pc, #200]	@ fc <main+0xfc>
      30:	e3a00001 	mov	r0, #1
      34:	eb0003b3 	bl	f08 <printf>
      38:	eb00021b 	bl	8ac <exit>
      3c:	e3a03000 	mov	r3, #0
      40:	e50b3008 	str	r3, [fp, #-8]
      44:	ea000028 	b	ec <main+0xec>
      48:	e51b3008 	ldr	r3, [fp, #-8]
      4c:	e1a03103 	lsl	r3, r3, #2
      50:	e2433004 	sub	r3, r3, #4
      54:	e083300b 	add	r3, r3, fp
      58:	e5133504 	ldr	r3, [r3, #-1284]	@ 0xfffffafc
      5c:	e3530000 	cmp	r3, #0
      60:	0a00001e 	beq	e0 <main+0xe0>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e2833040 	add	r3, r3, #64	@ 0x40
      6c:	e1a03103 	lsl	r3, r3, #2
      70:	e2433004 	sub	r3, r3, #4
      74:	e083300b 	add	r3, r3, fp
      78:	e5131504 	ldr	r1, [r3, #-1284]	@ 0xfffffafc
      7c:	e51b3008 	ldr	r3, [fp, #-8]
      80:	e2833080 	add	r3, r3, #128	@ 0x80
      84:	e1a03103 	lsl	r3, r3, #2
      88:	e2433004 	sub	r3, r3, #4
      8c:	e083300b 	add	r3, r3, fp
      90:	e5130504 	ldr	r0, [r3, #-1284]	@ 0xfffffafc
      94:	e51b3008 	ldr	r3, [fp, #-8]
      98:	e2833c01 	add	r3, r3, #256	@ 0x100
      9c:	e1a03103 	lsl	r3, r3, #2
      a0:	e2433004 	sub	r3, r3, #4
      a4:	e083300b 	add	r3, r3, fp
      a8:	e5132504 	ldr	r2, [r3, #-1284]	@ 0xfffffafc
      ac:	e51b3008 	ldr	r3, [fp, #-8]
      b0:	e28330c0 	add	r3, r3, #192	@ 0xc0
      b4:	e1a03103 	lsl	r3, r3, #2
      b8:	e2433004 	sub	r3, r3, #4
      bc:	e083300b 	add	r3, r3, fp
      c0:	e5133504 	ldr	r3, [r3, #-1284]	@ 0xfffffafc
      c4:	e58d3004 	str	r3, [sp, #4]
      c8:	e58d2000 	str	r2, [sp]
      cc:	e1a03000 	mov	r3, r0
      d0:	e1a02001 	mov	r2, r1
      d4:	e59f1024 	ldr	r1, [pc, #36]	@ 100 <main+0x100>
      d8:	e3a00001 	mov	r0, #1
      dc:	eb000389 	bl	f08 <printf>
      e0:	e51b3008 	ldr	r3, [fp, #-8]
      e4:	e2833001 	add	r3, r3, #1
      e8:	e50b3008 	str	r3, [fp, #-8]
      ec:	e51b3008 	ldr	r3, [fp, #-8]
      f0:	e353003f 	cmp	r3, #63	@ 0x3f
      f4:	daffffd3 	ble	48 <main+0x48>
      f8:	eb0001eb 	bl	8ac <exit>
      fc:	000015c4 	.word	0x000015c4
     100:	000015d8 	.word	0x000015d8

00000104 <strcpy>:
     104:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     108:	e28db000 	add	fp, sp, #0
     10c:	e24dd014 	sub	sp, sp, #20
     110:	e50b0010 	str	r0, [fp, #-16]
     114:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     118:	e51b3010 	ldr	r3, [fp, #-16]
     11c:	e50b3008 	str	r3, [fp, #-8]
     120:	e1a00000 	nop			@ (mov r0, r0)
     124:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     128:	e2823001 	add	r3, r2, #1
     12c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     130:	e51b3010 	ldr	r3, [fp, #-16]
     134:	e2831001 	add	r1, r3, #1
     138:	e50b1010 	str	r1, [fp, #-16]
     13c:	e5d22000 	ldrb	r2, [r2]
     140:	e5c32000 	strb	r2, [r3]
     144:	e5d33000 	ldrb	r3, [r3]
     148:	e3530000 	cmp	r3, #0
     14c:	1afffff4 	bne	124 <strcpy+0x20>
     150:	e51b3008 	ldr	r3, [fp, #-8]
     154:	e1a00003 	mov	r0, r3
     158:	e28bd000 	add	sp, fp, #0
     15c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     160:	e12fff1e 	bx	lr

00000164 <strcmp>:
     164:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     168:	e28db000 	add	fp, sp, #0
     16c:	e24dd00c 	sub	sp, sp, #12
     170:	e50b0008 	str	r0, [fp, #-8]
     174:	e50b100c 	str	r1, [fp, #-12]
     178:	ea000005 	b	194 <strcmp+0x30>
     17c:	e51b3008 	ldr	r3, [fp, #-8]
     180:	e2833001 	add	r3, r3, #1
     184:	e50b3008 	str	r3, [fp, #-8]
     188:	e51b300c 	ldr	r3, [fp, #-12]
     18c:	e2833001 	add	r3, r3, #1
     190:	e50b300c 	str	r3, [fp, #-12]
     194:	e51b3008 	ldr	r3, [fp, #-8]
     198:	e5d33000 	ldrb	r3, [r3]
     19c:	e3530000 	cmp	r3, #0
     1a0:	0a000005 	beq	1bc <strcmp+0x58>
     1a4:	e51b3008 	ldr	r3, [fp, #-8]
     1a8:	e5d32000 	ldrb	r2, [r3]
     1ac:	e51b300c 	ldr	r3, [fp, #-12]
     1b0:	e5d33000 	ldrb	r3, [r3]
     1b4:	e1520003 	cmp	r2, r3
     1b8:	0affffef 	beq	17c <strcmp+0x18>
     1bc:	e51b3008 	ldr	r3, [fp, #-8]
     1c0:	e5d33000 	ldrb	r3, [r3]
     1c4:	e1a02003 	mov	r2, r3
     1c8:	e51b300c 	ldr	r3, [fp, #-12]
     1cc:	e5d33000 	ldrb	r3, [r3]
     1d0:	e0423003 	sub	r3, r2, r3
     1d4:	e1a00003 	mov	r0, r3
     1d8:	e28bd000 	add	sp, fp, #0
     1dc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1e0:	e12fff1e 	bx	lr

000001e4 <strlen>:
     1e4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1e8:	e28db000 	add	fp, sp, #0
     1ec:	e24dd014 	sub	sp, sp, #20
     1f0:	e50b0010 	str	r0, [fp, #-16]
     1f4:	e3a03000 	mov	r3, #0
     1f8:	e50b3008 	str	r3, [fp, #-8]
     1fc:	ea000002 	b	20c <strlen+0x28>
     200:	e51b3008 	ldr	r3, [fp, #-8]
     204:	e2833001 	add	r3, r3, #1
     208:	e50b3008 	str	r3, [fp, #-8]
     20c:	e51b3008 	ldr	r3, [fp, #-8]
     210:	e51b2010 	ldr	r2, [fp, #-16]
     214:	e0823003 	add	r3, r2, r3
     218:	e5d33000 	ldrb	r3, [r3]
     21c:	e3530000 	cmp	r3, #0
     220:	1afffff6 	bne	200 <strlen+0x1c>
     224:	e51b3008 	ldr	r3, [fp, #-8]
     228:	e1a00003 	mov	r0, r3
     22c:	e28bd000 	add	sp, fp, #0
     230:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     234:	e12fff1e 	bx	lr

00000238 <memset>:
     238:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     23c:	e28db000 	add	fp, sp, #0
     240:	e24dd024 	sub	sp, sp, #36	@ 0x24
     244:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     248:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     24c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     250:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     254:	e50b3008 	str	r3, [fp, #-8]
     258:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     25c:	e54b300d 	strb	r3, [fp, #-13]
     260:	e55b200d 	ldrb	r2, [fp, #-13]
     264:	e1a03002 	mov	r3, r2
     268:	e1a03403 	lsl	r3, r3, #8
     26c:	e0833002 	add	r3, r3, r2
     270:	e1a03803 	lsl	r3, r3, #16
     274:	e1a02003 	mov	r2, r3
     278:	e55b300d 	ldrb	r3, [fp, #-13]
     27c:	e1a03403 	lsl	r3, r3, #8
     280:	e1822003 	orr	r2, r2, r3
     284:	e55b300d 	ldrb	r3, [fp, #-13]
     288:	e1823003 	orr	r3, r2, r3
     28c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     290:	ea000008 	b	2b8 <memset+0x80>
     294:	e51b3008 	ldr	r3, [fp, #-8]
     298:	e55b200d 	ldrb	r2, [fp, #-13]
     29c:	e5c32000 	strb	r2, [r3]
     2a0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2a4:	e2433001 	sub	r3, r3, #1
     2a8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2ac:	e51b3008 	ldr	r3, [fp, #-8]
     2b0:	e2833001 	add	r3, r3, #1
     2b4:	e50b3008 	str	r3, [fp, #-8]
     2b8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2bc:	e3530000 	cmp	r3, #0
     2c0:	0a000003 	beq	2d4 <memset+0x9c>
     2c4:	e51b3008 	ldr	r3, [fp, #-8]
     2c8:	e2033003 	and	r3, r3, #3
     2cc:	e3530000 	cmp	r3, #0
     2d0:	1affffef 	bne	294 <memset+0x5c>
     2d4:	e51b3008 	ldr	r3, [fp, #-8]
     2d8:	e50b300c 	str	r3, [fp, #-12]
     2dc:	ea000008 	b	304 <memset+0xcc>
     2e0:	e51b300c 	ldr	r3, [fp, #-12]
     2e4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     2e8:	e5832000 	str	r2, [r3]
     2ec:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2f0:	e2433004 	sub	r3, r3, #4
     2f4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2f8:	e51b300c 	ldr	r3, [fp, #-12]
     2fc:	e2833004 	add	r3, r3, #4
     300:	e50b300c 	str	r3, [fp, #-12]
     304:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     308:	e3530003 	cmp	r3, #3
     30c:	8afffff3 	bhi	2e0 <memset+0xa8>
     310:	e51b300c 	ldr	r3, [fp, #-12]
     314:	e50b3008 	str	r3, [fp, #-8]
     318:	ea000008 	b	340 <memset+0x108>
     31c:	e51b3008 	ldr	r3, [fp, #-8]
     320:	e55b200d 	ldrb	r2, [fp, #-13]
     324:	e5c32000 	strb	r2, [r3]
     328:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     32c:	e2433001 	sub	r3, r3, #1
     330:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     334:	e51b3008 	ldr	r3, [fp, #-8]
     338:	e2833001 	add	r3, r3, #1
     33c:	e50b3008 	str	r3, [fp, #-8]
     340:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     344:	e3530000 	cmp	r3, #0
     348:	1afffff3 	bne	31c <memset+0xe4>
     34c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     350:	e1a00003 	mov	r0, r3
     354:	e28bd000 	add	sp, fp, #0
     358:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     35c:	e12fff1e 	bx	lr

00000360 <strchr>:
     360:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     364:	e28db000 	add	fp, sp, #0
     368:	e24dd00c 	sub	sp, sp, #12
     36c:	e50b0008 	str	r0, [fp, #-8]
     370:	e1a03001 	mov	r3, r1
     374:	e54b3009 	strb	r3, [fp, #-9]
     378:	ea000009 	b	3a4 <strchr+0x44>
     37c:	e51b3008 	ldr	r3, [fp, #-8]
     380:	e5d33000 	ldrb	r3, [r3]
     384:	e55b2009 	ldrb	r2, [fp, #-9]
     388:	e1520003 	cmp	r2, r3
     38c:	1a000001 	bne	398 <strchr+0x38>
     390:	e51b3008 	ldr	r3, [fp, #-8]
     394:	ea000007 	b	3b8 <strchr+0x58>
     398:	e51b3008 	ldr	r3, [fp, #-8]
     39c:	e2833001 	add	r3, r3, #1
     3a0:	e50b3008 	str	r3, [fp, #-8]
     3a4:	e51b3008 	ldr	r3, [fp, #-8]
     3a8:	e5d33000 	ldrb	r3, [r3]
     3ac:	e3530000 	cmp	r3, #0
     3b0:	1afffff1 	bne	37c <strchr+0x1c>
     3b4:	e3a03000 	mov	r3, #0
     3b8:	e1a00003 	mov	r0, r3
     3bc:	e28bd000 	add	sp, fp, #0
     3c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3c4:	e12fff1e 	bx	lr

000003c8 <gets>:
     3c8:	e92d4800 	push	{fp, lr}
     3cc:	e28db004 	add	fp, sp, #4
     3d0:	e24dd018 	sub	sp, sp, #24
     3d4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     3d8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     3dc:	e3a03000 	mov	r3, #0
     3e0:	e50b3008 	str	r3, [fp, #-8]
     3e4:	ea000016 	b	444 <gets+0x7c>
     3e8:	e24b300d 	sub	r3, fp, #13
     3ec:	e3a02001 	mov	r2, #1
     3f0:	e1a01003 	mov	r1, r3
     3f4:	e3a00000 	mov	r0, #0
     3f8:	eb000146 	bl	918 <read>
     3fc:	e50b000c 	str	r0, [fp, #-12]
     400:	e51b300c 	ldr	r3, [fp, #-12]
     404:	e3530000 	cmp	r3, #0
     408:	da000013 	ble	45c <gets+0x94>
     40c:	e51b3008 	ldr	r3, [fp, #-8]
     410:	e2832001 	add	r2, r3, #1
     414:	e50b2008 	str	r2, [fp, #-8]
     418:	e1a02003 	mov	r2, r3
     41c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     420:	e0833002 	add	r3, r3, r2
     424:	e55b200d 	ldrb	r2, [fp, #-13]
     428:	e5c32000 	strb	r2, [r3]
     42c:	e55b300d 	ldrb	r3, [fp, #-13]
     430:	e353000a 	cmp	r3, #10
     434:	0a000009 	beq	460 <gets+0x98>
     438:	e55b300d 	ldrb	r3, [fp, #-13]
     43c:	e353000d 	cmp	r3, #13
     440:	0a000006 	beq	460 <gets+0x98>
     444:	e51b3008 	ldr	r3, [fp, #-8]
     448:	e2833001 	add	r3, r3, #1
     44c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     450:	e1520003 	cmp	r2, r3
     454:	caffffe3 	bgt	3e8 <gets+0x20>
     458:	ea000000 	b	460 <gets+0x98>
     45c:	e1a00000 	nop			@ (mov r0, r0)
     460:	e51b3008 	ldr	r3, [fp, #-8]
     464:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     468:	e0823003 	add	r3, r2, r3
     46c:	e3a02000 	mov	r2, #0
     470:	e5c32000 	strb	r2, [r3]
     474:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     478:	e1a00003 	mov	r0, r3
     47c:	e24bd004 	sub	sp, fp, #4
     480:	e8bd8800 	pop	{fp, pc}

00000484 <stat>:
     484:	e92d4800 	push	{fp, lr}
     488:	e28db004 	add	fp, sp, #4
     48c:	e24dd010 	sub	sp, sp, #16
     490:	e50b0010 	str	r0, [fp, #-16]
     494:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     498:	e3a01000 	mov	r1, #0
     49c:	e51b0010 	ldr	r0, [fp, #-16]
     4a0:	eb000149 	bl	9cc <open>
     4a4:	e50b0008 	str	r0, [fp, #-8]
     4a8:	e51b3008 	ldr	r3, [fp, #-8]
     4ac:	e3530000 	cmp	r3, #0
     4b0:	aa000001 	bge	4bc <stat+0x38>
     4b4:	e3e03000 	mvn	r3, #0
     4b8:	ea000006 	b	4d8 <stat+0x54>
     4bc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     4c0:	e51b0008 	ldr	r0, [fp, #-8]
     4c4:	eb00015b 	bl	a38 <fstat>
     4c8:	e50b000c 	str	r0, [fp, #-12]
     4cc:	e51b0008 	ldr	r0, [fp, #-8]
     4d0:	eb000122 	bl	960 <close>
     4d4:	e51b300c 	ldr	r3, [fp, #-12]
     4d8:	e1a00003 	mov	r0, r3
     4dc:	e24bd004 	sub	sp, fp, #4
     4e0:	e8bd8800 	pop	{fp, pc}

000004e4 <atoi>:
     4e4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4e8:	e28db000 	add	fp, sp, #0
     4ec:	e24dd014 	sub	sp, sp, #20
     4f0:	e50b0010 	str	r0, [fp, #-16]
     4f4:	e3a03000 	mov	r3, #0
     4f8:	e50b3008 	str	r3, [fp, #-8]
     4fc:	ea00000c 	b	534 <atoi+0x50>
     500:	e51b2008 	ldr	r2, [fp, #-8]
     504:	e1a03002 	mov	r3, r2
     508:	e1a03103 	lsl	r3, r3, #2
     50c:	e0833002 	add	r3, r3, r2
     510:	e1a03083 	lsl	r3, r3, #1
     514:	e1a01003 	mov	r1, r3
     518:	e51b3010 	ldr	r3, [fp, #-16]
     51c:	e2832001 	add	r2, r3, #1
     520:	e50b2010 	str	r2, [fp, #-16]
     524:	e5d33000 	ldrb	r3, [r3]
     528:	e0813003 	add	r3, r1, r3
     52c:	e2433030 	sub	r3, r3, #48	@ 0x30
     530:	e50b3008 	str	r3, [fp, #-8]
     534:	e51b3010 	ldr	r3, [fp, #-16]
     538:	e5d33000 	ldrb	r3, [r3]
     53c:	e353002f 	cmp	r3, #47	@ 0x2f
     540:	9a000003 	bls	554 <atoi+0x70>
     544:	e51b3010 	ldr	r3, [fp, #-16]
     548:	e5d33000 	ldrb	r3, [r3]
     54c:	e3530039 	cmp	r3, #57	@ 0x39
     550:	9affffea 	bls	500 <atoi+0x1c>
     554:	e51b3010 	ldr	r3, [fp, #-16]
     558:	e5d33000 	ldrb	r3, [r3]
     55c:	e3530000 	cmp	r3, #0
     560:	1a000001 	bne	56c <atoi+0x88>
     564:	e51b3008 	ldr	r3, [fp, #-8]
     568:	ea000000 	b	570 <atoi+0x8c>
     56c:	e3e03000 	mvn	r3, #0
     570:	e1a00003 	mov	r0, r3
     574:	e28bd000 	add	sp, fp, #0
     578:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     57c:	e12fff1e 	bx	lr

00000580 <memmove>:
     580:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     584:	e28db000 	add	fp, sp, #0
     588:	e24dd01c 	sub	sp, sp, #28
     58c:	e50b0010 	str	r0, [fp, #-16]
     590:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     594:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     598:	e51b3010 	ldr	r3, [fp, #-16]
     59c:	e50b3008 	str	r3, [fp, #-8]
     5a0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     5a4:	e50b300c 	str	r3, [fp, #-12]
     5a8:	ea000007 	b	5cc <memmove+0x4c>
     5ac:	e51b200c 	ldr	r2, [fp, #-12]
     5b0:	e2823001 	add	r3, r2, #1
     5b4:	e50b300c 	str	r3, [fp, #-12]
     5b8:	e51b3008 	ldr	r3, [fp, #-8]
     5bc:	e2831001 	add	r1, r3, #1
     5c0:	e50b1008 	str	r1, [fp, #-8]
     5c4:	e5d22000 	ldrb	r2, [r2]
     5c8:	e5c32000 	strb	r2, [r3]
     5cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5d0:	e2432001 	sub	r2, r3, #1
     5d4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5d8:	e3530000 	cmp	r3, #0
     5dc:	cafffff2 	bgt	5ac <memmove+0x2c>
     5e0:	e51b3010 	ldr	r3, [fp, #-16]
     5e4:	e1a00003 	mov	r0, r3
     5e8:	e28bd000 	add	sp, fp, #0
     5ec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5f0:	e12fff1e 	bx	lr

000005f4 <initiateLock>:
     5f4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5f8:	e28db000 	add	fp, sp, #0
     5fc:	e24dd00c 	sub	sp, sp, #12
     600:	e50b0008 	str	r0, [fp, #-8]
     604:	e51b3008 	ldr	r3, [fp, #-8]
     608:	e3a02000 	mov	r2, #0
     60c:	e5832000 	str	r2, [r3]
     610:	e51b3008 	ldr	r3, [fp, #-8]
     614:	e3a02001 	mov	r2, #1
     618:	e5832004 	str	r2, [r3, #4]
     61c:	e1a00000 	nop			@ (mov r0, r0)
     620:	e28bd000 	add	sp, fp, #0
     624:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     628:	e12fff1e 	bx	lr

0000062c <acquireLock>:
     62c:	e92d4800 	push	{fp, lr}
     630:	e28db004 	add	fp, sp, #4
     634:	e24dd008 	sub	sp, sp, #8
     638:	e50b0008 	str	r0, [fp, #-8]
     63c:	ea000001 	b	648 <acquireLock+0x1c>
     640:	e3a00001 	mov	r0, #1
     644:	eb00013a 	bl	b34 <sleep>
     648:	e51b2008 	ldr	r2, [fp, #-8]
     64c:	e3a01001 	mov	r1, #1
     650:	e1923f9f 	ldrex	r3, [r2]
     654:	e1820f91 	strex	r0, r1, [r2]
     658:	e3500000 	cmp	r0, #0
     65c:	1afffffb 	bne	650 <acquireLock+0x24>
     660:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     664:	e3530001 	cmp	r3, #1
     668:	0afffff4 	beq	640 <acquireLock+0x14>
     66c:	e1a00000 	nop			@ (mov r0, r0)
     670:	e1a00000 	nop			@ (mov r0, r0)
     674:	e24bd004 	sub	sp, fp, #4
     678:	e8bd8800 	pop	{fp, pc}

0000067c <releaseLock>:
     67c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     680:	e28db000 	add	fp, sp, #0
     684:	e24dd00c 	sub	sp, sp, #12
     688:	e50b0008 	str	r0, [fp, #-8]
     68c:	e51b3008 	ldr	r3, [fp, #-8]
     690:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     694:	e3a02000 	mov	r2, #0
     698:	e5832000 	str	r2, [r3]
     69c:	e1a00000 	nop			@ (mov r0, r0)
     6a0:	e28bd000 	add	sp, fp, #0
     6a4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6a8:	e12fff1e 	bx	lr

000006ac <initiateCondVar>:
     6ac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6b0:	e28db000 	add	fp, sp, #0
     6b4:	e24dd00c 	sub	sp, sp, #12
     6b8:	e50b0008 	str	r0, [fp, #-8]
     6bc:	e51b3008 	ldr	r3, [fp, #-8]
     6c0:	e3a02000 	mov	r2, #0
     6c4:	e5832000 	str	r2, [r3]
     6c8:	e51b3008 	ldr	r3, [fp, #-8]
     6cc:	e3a02001 	mov	r2, #1
     6d0:	e5832004 	str	r2, [r3, #4]
     6d4:	e1a00000 	nop			@ (mov r0, r0)
     6d8:	e28bd000 	add	sp, fp, #0
     6dc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6e0:	e12fff1e 	bx	lr

000006e4 <condWait>:
     6e4:	e92d4800 	push	{fp, lr}
     6e8:	e28db004 	add	fp, sp, #4
     6ec:	e24dd008 	sub	sp, sp, #8
     6f0:	e50b0008 	str	r0, [fp, #-8]
     6f4:	e50b100c 	str	r1, [fp, #-12]
     6f8:	e51b000c 	ldr	r0, [fp, #-12]
     6fc:	ebffffde 	bl	67c <releaseLock>
     700:	e51b3008 	ldr	r3, [fp, #-8]
     704:	e5933000 	ldr	r3, [r3]
     708:	e1a00003 	mov	r0, r3
     70c:	eb00017d 	bl	d08 <sleepChan>
     710:	e51b000c 	ldr	r0, [fp, #-12]
     714:	ebffffc4 	bl	62c <acquireLock>
     718:	e1a00000 	nop			@ (mov r0, r0)
     71c:	e24bd004 	sub	sp, fp, #4
     720:	e8bd8800 	pop	{fp, pc}

00000724 <broadcast>:
     724:	e92d4800 	push	{fp, lr}
     728:	e28db004 	add	fp, sp, #4
     72c:	e24dd008 	sub	sp, sp, #8
     730:	e50b0008 	str	r0, [fp, #-8]
     734:	e51b3008 	ldr	r3, [fp, #-8]
     738:	e5933000 	ldr	r3, [r3]
     73c:	e1a00003 	mov	r0, r3
     740:	eb000182 	bl	d50 <sigChan>
     744:	e1a00000 	nop			@ (mov r0, r0)
     748:	e24bd004 	sub	sp, fp, #4
     74c:	e8bd8800 	pop	{fp, pc}

00000750 <semInit>:
     750:	e92d4800 	push	{fp, lr}
     754:	e28db004 	add	fp, sp, #4
     758:	e24dd008 	sub	sp, sp, #8
     75c:	e50b0008 	str	r0, [fp, #-8]
     760:	e50b100c 	str	r1, [fp, #-12]
     764:	e51b3008 	ldr	r3, [fp, #-8]
     768:	e51b200c 	ldr	r2, [fp, #-12]
     76c:	e5832000 	str	r2, [r3]
     770:	e51b3008 	ldr	r3, [fp, #-8]
     774:	e2833004 	add	r3, r3, #4
     778:	e1a00003 	mov	r0, r3
     77c:	ebffff9c 	bl	5f4 <initiateLock>
     780:	e51b3008 	ldr	r3, [fp, #-8]
     784:	e283300c 	add	r3, r3, #12
     788:	e1a00003 	mov	r0, r3
     78c:	ebffffc6 	bl	6ac <initiateCondVar>
     790:	e51b3008 	ldr	r3, [fp, #-8]
     794:	e3a02001 	mov	r2, #1
     798:	e5832014 	str	r2, [r3, #20]
     79c:	e1a00000 	nop			@ (mov r0, r0)
     7a0:	e24bd004 	sub	sp, fp, #4
     7a4:	e8bd8800 	pop	{fp, pc}

000007a8 <semUp>:
     7a8:	e92d4800 	push	{fp, lr}
     7ac:	e28db004 	add	fp, sp, #4
     7b0:	e24dd008 	sub	sp, sp, #8
     7b4:	e50b0008 	str	r0, [fp, #-8]
     7b8:	e51b3008 	ldr	r3, [fp, #-8]
     7bc:	e2833004 	add	r3, r3, #4
     7c0:	e1a00003 	mov	r0, r3
     7c4:	ebffff98 	bl	62c <acquireLock>
     7c8:	e51b3008 	ldr	r3, [fp, #-8]
     7cc:	e5933000 	ldr	r3, [r3]
     7d0:	e2832001 	add	r2, r3, #1
     7d4:	e51b3008 	ldr	r3, [fp, #-8]
     7d8:	e5832000 	str	r2, [r3]
     7dc:	e51b3008 	ldr	r3, [fp, #-8]
     7e0:	e283300c 	add	r3, r3, #12
     7e4:	e1a00003 	mov	r0, r3
     7e8:	ebffffcd 	bl	724 <broadcast>
     7ec:	e51b3008 	ldr	r3, [fp, #-8]
     7f0:	e2833004 	add	r3, r3, #4
     7f4:	e1a00003 	mov	r0, r3
     7f8:	ebffff9f 	bl	67c <releaseLock>
     7fc:	e1a00000 	nop			@ (mov r0, r0)
     800:	e24bd004 	sub	sp, fp, #4
     804:	e8bd8800 	pop	{fp, pc}

00000808 <semDown>:
     808:	e92d4800 	push	{fp, lr}
     80c:	e28db004 	add	fp, sp, #4
     810:	e24dd008 	sub	sp, sp, #8
     814:	e50b0008 	str	r0, [fp, #-8]
     818:	e51b3008 	ldr	r3, [fp, #-8]
     81c:	e2833004 	add	r3, r3, #4
     820:	e1a00003 	mov	r0, r3
     824:	ebffff80 	bl	62c <acquireLock>
     828:	ea000006 	b	848 <semDown+0x40>
     82c:	e51b3008 	ldr	r3, [fp, #-8]
     830:	e283200c 	add	r2, r3, #12
     834:	e51b3008 	ldr	r3, [fp, #-8]
     838:	e2833004 	add	r3, r3, #4
     83c:	e1a01003 	mov	r1, r3
     840:	e1a00002 	mov	r0, r2
     844:	ebffffa6 	bl	6e4 <condWait>
     848:	e51b3008 	ldr	r3, [fp, #-8]
     84c:	e5933000 	ldr	r3, [r3]
     850:	e3530000 	cmp	r3, #0
     854:	dafffff4 	ble	82c <semDown+0x24>
     858:	e51b3008 	ldr	r3, [fp, #-8]
     85c:	e5933000 	ldr	r3, [r3]
     860:	e2432001 	sub	r2, r3, #1
     864:	e51b3008 	ldr	r3, [fp, #-8]
     868:	e5832000 	str	r2, [r3]
     86c:	e51b3008 	ldr	r3, [fp, #-8]
     870:	e2833004 	add	r3, r3, #4
     874:	e1a00003 	mov	r0, r3
     878:	ebffff7f 	bl	67c <releaseLock>
     87c:	e1a00000 	nop			@ (mov r0, r0)
     880:	e24bd004 	sub	sp, fp, #4
     884:	e8bd8800 	pop	{fp, pc}

00000888 <fork>:
     888:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     88c:	e1a04003 	mov	r4, r3
     890:	e1a03002 	mov	r3, r2
     894:	e1a02001 	mov	r2, r1
     898:	e1a01000 	mov	r1, r0
     89c:	e3a00001 	mov	r0, #1
     8a0:	ef000000 	svc	0x00000000
     8a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a8:	e12fff1e 	bx	lr

000008ac <exit>:
     8ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8b0:	e1a04003 	mov	r4, r3
     8b4:	e1a03002 	mov	r3, r2
     8b8:	e1a02001 	mov	r2, r1
     8bc:	e1a01000 	mov	r1, r0
     8c0:	e3a00002 	mov	r0, #2
     8c4:	ef000000 	svc	0x00000000
     8c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8cc:	e12fff1e 	bx	lr

000008d0 <wait>:
     8d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8d4:	e1a04003 	mov	r4, r3
     8d8:	e1a03002 	mov	r3, r2
     8dc:	e1a02001 	mov	r2, r1
     8e0:	e1a01000 	mov	r1, r0
     8e4:	e3a00003 	mov	r0, #3
     8e8:	ef000000 	svc	0x00000000
     8ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8f0:	e12fff1e 	bx	lr

000008f4 <pipe>:
     8f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8f8:	e1a04003 	mov	r4, r3
     8fc:	e1a03002 	mov	r3, r2
     900:	e1a02001 	mov	r2, r1
     904:	e1a01000 	mov	r1, r0
     908:	e3a00004 	mov	r0, #4
     90c:	ef000000 	svc	0x00000000
     910:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     914:	e12fff1e 	bx	lr

00000918 <read>:
     918:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     91c:	e1a04003 	mov	r4, r3
     920:	e1a03002 	mov	r3, r2
     924:	e1a02001 	mov	r2, r1
     928:	e1a01000 	mov	r1, r0
     92c:	e3a00005 	mov	r0, #5
     930:	ef000000 	svc	0x00000000
     934:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     938:	e12fff1e 	bx	lr

0000093c <write>:
     93c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     940:	e1a04003 	mov	r4, r3
     944:	e1a03002 	mov	r3, r2
     948:	e1a02001 	mov	r2, r1
     94c:	e1a01000 	mov	r1, r0
     950:	e3a00010 	mov	r0, #16
     954:	ef000000 	svc	0x00000000
     958:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     95c:	e12fff1e 	bx	lr

00000960 <close>:
     960:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     964:	e1a04003 	mov	r4, r3
     968:	e1a03002 	mov	r3, r2
     96c:	e1a02001 	mov	r2, r1
     970:	e1a01000 	mov	r1, r0
     974:	e3a00015 	mov	r0, #21
     978:	ef000000 	svc	0x00000000
     97c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     980:	e12fff1e 	bx	lr

00000984 <kill>:
     984:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     988:	e1a04003 	mov	r4, r3
     98c:	e1a03002 	mov	r3, r2
     990:	e1a02001 	mov	r2, r1
     994:	e1a01000 	mov	r1, r0
     998:	e3a00006 	mov	r0, #6
     99c:	ef000000 	svc	0x00000000
     9a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a4:	e12fff1e 	bx	lr

000009a8 <exec>:
     9a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9ac:	e1a04003 	mov	r4, r3
     9b0:	e1a03002 	mov	r3, r2
     9b4:	e1a02001 	mov	r2, r1
     9b8:	e1a01000 	mov	r1, r0
     9bc:	e3a00007 	mov	r0, #7
     9c0:	ef000000 	svc	0x00000000
     9c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c8:	e12fff1e 	bx	lr

000009cc <open>:
     9cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9d0:	e1a04003 	mov	r4, r3
     9d4:	e1a03002 	mov	r3, r2
     9d8:	e1a02001 	mov	r2, r1
     9dc:	e1a01000 	mov	r1, r0
     9e0:	e3a0000f 	mov	r0, #15
     9e4:	ef000000 	svc	0x00000000
     9e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9ec:	e12fff1e 	bx	lr

000009f0 <mknod>:
     9f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f4:	e1a04003 	mov	r4, r3
     9f8:	e1a03002 	mov	r3, r2
     9fc:	e1a02001 	mov	r2, r1
     a00:	e1a01000 	mov	r1, r0
     a04:	e3a00011 	mov	r0, #17
     a08:	ef000000 	svc	0x00000000
     a0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a10:	e12fff1e 	bx	lr

00000a14 <unlink>:
     a14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a18:	e1a04003 	mov	r4, r3
     a1c:	e1a03002 	mov	r3, r2
     a20:	e1a02001 	mov	r2, r1
     a24:	e1a01000 	mov	r1, r0
     a28:	e3a00012 	mov	r0, #18
     a2c:	ef000000 	svc	0x00000000
     a30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a34:	e12fff1e 	bx	lr

00000a38 <fstat>:
     a38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a3c:	e1a04003 	mov	r4, r3
     a40:	e1a03002 	mov	r3, r2
     a44:	e1a02001 	mov	r2, r1
     a48:	e1a01000 	mov	r1, r0
     a4c:	e3a00008 	mov	r0, #8
     a50:	ef000000 	svc	0x00000000
     a54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a58:	e12fff1e 	bx	lr

00000a5c <link>:
     a5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a60:	e1a04003 	mov	r4, r3
     a64:	e1a03002 	mov	r3, r2
     a68:	e1a02001 	mov	r2, r1
     a6c:	e1a01000 	mov	r1, r0
     a70:	e3a00013 	mov	r0, #19
     a74:	ef000000 	svc	0x00000000
     a78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a7c:	e12fff1e 	bx	lr

00000a80 <mkdir>:
     a80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a84:	e1a04003 	mov	r4, r3
     a88:	e1a03002 	mov	r3, r2
     a8c:	e1a02001 	mov	r2, r1
     a90:	e1a01000 	mov	r1, r0
     a94:	e3a00014 	mov	r0, #20
     a98:	ef000000 	svc	0x00000000
     a9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aa0:	e12fff1e 	bx	lr

00000aa4 <chdir>:
     aa4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa8:	e1a04003 	mov	r4, r3
     aac:	e1a03002 	mov	r3, r2
     ab0:	e1a02001 	mov	r2, r1
     ab4:	e1a01000 	mov	r1, r0
     ab8:	e3a00009 	mov	r0, #9
     abc:	ef000000 	svc	0x00000000
     ac0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac4:	e12fff1e 	bx	lr

00000ac8 <dup>:
     ac8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     acc:	e1a04003 	mov	r4, r3
     ad0:	e1a03002 	mov	r3, r2
     ad4:	e1a02001 	mov	r2, r1
     ad8:	e1a01000 	mov	r1, r0
     adc:	e3a0000a 	mov	r0, #10
     ae0:	ef000000 	svc	0x00000000
     ae4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae8:	e12fff1e 	bx	lr

00000aec <getpid>:
     aec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     af0:	e1a04003 	mov	r4, r3
     af4:	e1a03002 	mov	r3, r2
     af8:	e1a02001 	mov	r2, r1
     afc:	e1a01000 	mov	r1, r0
     b00:	e3a0000b 	mov	r0, #11
     b04:	ef000000 	svc	0x00000000
     b08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b0c:	e12fff1e 	bx	lr

00000b10 <sbrk>:
     b10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b14:	e1a04003 	mov	r4, r3
     b18:	e1a03002 	mov	r3, r2
     b1c:	e1a02001 	mov	r2, r1
     b20:	e1a01000 	mov	r1, r0
     b24:	e3a0000c 	mov	r0, #12
     b28:	ef000000 	svc	0x00000000
     b2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b30:	e12fff1e 	bx	lr

00000b34 <sleep>:
     b34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b38:	e1a04003 	mov	r4, r3
     b3c:	e1a03002 	mov	r3, r2
     b40:	e1a02001 	mov	r2, r1
     b44:	e1a01000 	mov	r1, r0
     b48:	e3a0000d 	mov	r0, #13
     b4c:	ef000000 	svc	0x00000000
     b50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b54:	e12fff1e 	bx	lr

00000b58 <uptime>:
     b58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b5c:	e1a04003 	mov	r4, r3
     b60:	e1a03002 	mov	r3, r2
     b64:	e1a02001 	mov	r2, r1
     b68:	e1a01000 	mov	r1, r0
     b6c:	e3a0000e 	mov	r0, #14
     b70:	ef000000 	svc	0x00000000
     b74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b78:	e12fff1e 	bx	lr

00000b7c <getprocs>:
     b7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b80:	e1a04003 	mov	r4, r3
     b84:	e1a03002 	mov	r3, r2
     b88:	e1a02001 	mov	r2, r1
     b8c:	e1a01000 	mov	r1, r0
     b90:	e3a00016 	mov	r0, #22
     b94:	ef000000 	svc	0x00000000
     b98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b9c:	e12fff1e 	bx	lr

00000ba0 <settickets>:
     ba0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba4:	e1a04003 	mov	r4, r3
     ba8:	e1a03002 	mov	r3, r2
     bac:	e1a02001 	mov	r2, r1
     bb0:	e1a01000 	mov	r1, r0
     bb4:	e3a00017 	mov	r0, #23
     bb8:	ef000000 	svc	0x00000000
     bbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc0:	e12fff1e 	bx	lr

00000bc4 <srand>:
     bc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc8:	e1a04003 	mov	r4, r3
     bcc:	e1a03002 	mov	r3, r2
     bd0:	e1a02001 	mov	r2, r1
     bd4:	e1a01000 	mov	r1, r0
     bd8:	e3a00018 	mov	r0, #24
     bdc:	ef000000 	svc	0x00000000
     be0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be4:	e12fff1e 	bx	lr

00000be8 <getpinfo>:
     be8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bec:	e1a04003 	mov	r4, r3
     bf0:	e1a03002 	mov	r3, r2
     bf4:	e1a02001 	mov	r2, r1
     bf8:	e1a01000 	mov	r1, r0
     bfc:	e3a00019 	mov	r0, #25
     c00:	ef000000 	svc	0x00000000
     c04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c08:	e12fff1e 	bx	lr

00000c0c <dumppagetable>:
     c0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c10:	e1a04003 	mov	r4, r3
     c14:	e1a03002 	mov	r3, r2
     c18:	e1a02001 	mov	r2, r1
     c1c:	e1a01000 	mov	r1, r0
     c20:	e3a0001a 	mov	r0, #26
     c24:	ef000000 	svc	0x00000000
     c28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c2c:	e12fff1e 	bx	lr

00000c30 <thread_create>:
     c30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c34:	e1a04003 	mov	r4, r3
     c38:	e1a03002 	mov	r3, r2
     c3c:	e1a02001 	mov	r2, r1
     c40:	e1a01000 	mov	r1, r0
     c44:	e3a0001b 	mov	r0, #27
     c48:	ef000000 	svc	0x00000000
     c4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c50:	e12fff1e 	bx	lr

00000c54 <thread_exit>:
     c54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c58:	e1a04003 	mov	r4, r3
     c5c:	e1a03002 	mov	r3, r2
     c60:	e1a02001 	mov	r2, r1
     c64:	e1a01000 	mov	r1, r0
     c68:	e3a0001c 	mov	r0, #28
     c6c:	ef000000 	svc	0x00000000
     c70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c74:	e12fff1e 	bx	lr

00000c78 <thread_join>:
     c78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c7c:	e1a04003 	mov	r4, r3
     c80:	e1a03002 	mov	r3, r2
     c84:	e1a02001 	mov	r2, r1
     c88:	e1a01000 	mov	r1, r0
     c8c:	e3a0001d 	mov	r0, #29
     c90:	ef000000 	svc	0x00000000
     c94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c98:	e12fff1e 	bx	lr

00000c9c <waitpid>:
     c9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca0:	e1a04003 	mov	r4, r3
     ca4:	e1a03002 	mov	r3, r2
     ca8:	e1a02001 	mov	r2, r1
     cac:	e1a01000 	mov	r1, r0
     cb0:	e3a0001e 	mov	r0, #30
     cb4:	ef000000 	svc	0x00000000
     cb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cbc:	e12fff1e 	bx	lr

00000cc0 <barrier_init>:
     cc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc4:	e1a04003 	mov	r4, r3
     cc8:	e1a03002 	mov	r3, r2
     ccc:	e1a02001 	mov	r2, r1
     cd0:	e1a01000 	mov	r1, r0
     cd4:	e3a0001f 	mov	r0, #31
     cd8:	ef000000 	svc	0x00000000
     cdc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce0:	e12fff1e 	bx	lr

00000ce4 <barrier_check>:
     ce4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce8:	e1a04003 	mov	r4, r3
     cec:	e1a03002 	mov	r3, r2
     cf0:	e1a02001 	mov	r2, r1
     cf4:	e1a01000 	mov	r1, r0
     cf8:	e3a00020 	mov	r0, #32
     cfc:	ef000000 	svc	0x00000000
     d00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d04:	e12fff1e 	bx	lr

00000d08 <sleepChan>:
     d08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d0c:	e1a04003 	mov	r4, r3
     d10:	e1a03002 	mov	r3, r2
     d14:	e1a02001 	mov	r2, r1
     d18:	e1a01000 	mov	r1, r0
     d1c:	e3a00024 	mov	r0, #36	@ 0x24
     d20:	ef000000 	svc	0x00000000
     d24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d28:	e12fff1e 	bx	lr

00000d2c <getChannel>:
     d2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d30:	e1a04003 	mov	r4, r3
     d34:	e1a03002 	mov	r3, r2
     d38:	e1a02001 	mov	r2, r1
     d3c:	e1a01000 	mov	r1, r0
     d40:	e3a00025 	mov	r0, #37	@ 0x25
     d44:	ef000000 	svc	0x00000000
     d48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d4c:	e12fff1e 	bx	lr

00000d50 <sigChan>:
     d50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d54:	e1a04003 	mov	r4, r3
     d58:	e1a03002 	mov	r3, r2
     d5c:	e1a02001 	mov	r2, r1
     d60:	e1a01000 	mov	r1, r0
     d64:	e3a00026 	mov	r0, #38	@ 0x26
     d68:	ef000000 	svc	0x00000000
     d6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d70:	e12fff1e 	bx	lr

00000d74 <sigOneChan>:
     d74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d78:	e1a04003 	mov	r4, r3
     d7c:	e1a03002 	mov	r3, r2
     d80:	e1a02001 	mov	r2, r1
     d84:	e1a01000 	mov	r1, r0
     d88:	e3a00027 	mov	r0, #39	@ 0x27
     d8c:	ef000000 	svc	0x00000000
     d90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d94:	e12fff1e 	bx	lr

00000d98 <putc>:
     d98:	e92d4800 	push	{fp, lr}
     d9c:	e28db004 	add	fp, sp, #4
     da0:	e24dd008 	sub	sp, sp, #8
     da4:	e50b0008 	str	r0, [fp, #-8]
     da8:	e1a03001 	mov	r3, r1
     dac:	e54b3009 	strb	r3, [fp, #-9]
     db0:	e24b3009 	sub	r3, fp, #9
     db4:	e3a02001 	mov	r2, #1
     db8:	e1a01003 	mov	r1, r3
     dbc:	e51b0008 	ldr	r0, [fp, #-8]
     dc0:	ebfffedd 	bl	93c <write>
     dc4:	e1a00000 	nop			@ (mov r0, r0)
     dc8:	e24bd004 	sub	sp, fp, #4
     dcc:	e8bd8800 	pop	{fp, pc}

00000dd0 <printint>:
     dd0:	e92d4800 	push	{fp, lr}
     dd4:	e28db004 	add	fp, sp, #4
     dd8:	e24dd030 	sub	sp, sp, #48	@ 0x30
     ddc:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     de0:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     de4:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     de8:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     dec:	e3a03000 	mov	r3, #0
     df0:	e50b300c 	str	r3, [fp, #-12]
     df4:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     df8:	e3530000 	cmp	r3, #0
     dfc:	0a000008 	beq	e24 <printint+0x54>
     e00:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e04:	e3530000 	cmp	r3, #0
     e08:	aa000005 	bge	e24 <printint+0x54>
     e0c:	e3a03001 	mov	r3, #1
     e10:	e50b300c 	str	r3, [fp, #-12]
     e14:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e18:	e2633000 	rsb	r3, r3, #0
     e1c:	e50b3010 	str	r3, [fp, #-16]
     e20:	ea000001 	b	e2c <printint+0x5c>
     e24:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e28:	e50b3010 	str	r3, [fp, #-16]
     e2c:	e3a03000 	mov	r3, #0
     e30:	e50b3008 	str	r3, [fp, #-8]
     e34:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     e38:	e51b3010 	ldr	r3, [fp, #-16]
     e3c:	e1a01002 	mov	r1, r2
     e40:	e1a00003 	mov	r0, r3
     e44:	eb0001d5 	bl	15a0 <__aeabi_uidivmod>
     e48:	e1a03001 	mov	r3, r1
     e4c:	e1a01003 	mov	r1, r3
     e50:	e51b3008 	ldr	r3, [fp, #-8]
     e54:	e2832001 	add	r2, r3, #1
     e58:	e50b2008 	str	r2, [fp, #-8]
     e5c:	e59f20a0 	ldr	r2, [pc, #160]	@ f04 <printint+0x134>
     e60:	e7d22001 	ldrb	r2, [r2, r1]
     e64:	e2433004 	sub	r3, r3, #4
     e68:	e083300b 	add	r3, r3, fp
     e6c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     e70:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     e74:	e1a01003 	mov	r1, r3
     e78:	e51b0010 	ldr	r0, [fp, #-16]
     e7c:	eb00018a 	bl	14ac <__udivsi3>
     e80:	e1a03000 	mov	r3, r0
     e84:	e50b3010 	str	r3, [fp, #-16]
     e88:	e51b3010 	ldr	r3, [fp, #-16]
     e8c:	e3530000 	cmp	r3, #0
     e90:	1affffe7 	bne	e34 <printint+0x64>
     e94:	e51b300c 	ldr	r3, [fp, #-12]
     e98:	e3530000 	cmp	r3, #0
     e9c:	0a00000e 	beq	edc <printint+0x10c>
     ea0:	e51b3008 	ldr	r3, [fp, #-8]
     ea4:	e2832001 	add	r2, r3, #1
     ea8:	e50b2008 	str	r2, [fp, #-8]
     eac:	e2433004 	sub	r3, r3, #4
     eb0:	e083300b 	add	r3, r3, fp
     eb4:	e3a0202d 	mov	r2, #45	@ 0x2d
     eb8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ebc:	ea000006 	b	edc <printint+0x10c>
     ec0:	e24b2020 	sub	r2, fp, #32
     ec4:	e51b3008 	ldr	r3, [fp, #-8]
     ec8:	e0823003 	add	r3, r2, r3
     ecc:	e5d33000 	ldrb	r3, [r3]
     ed0:	e1a01003 	mov	r1, r3
     ed4:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     ed8:	ebffffae 	bl	d98 <putc>
     edc:	e51b3008 	ldr	r3, [fp, #-8]
     ee0:	e2433001 	sub	r3, r3, #1
     ee4:	e50b3008 	str	r3, [fp, #-8]
     ee8:	e51b3008 	ldr	r3, [fp, #-8]
     eec:	e3530000 	cmp	r3, #0
     ef0:	aafffff2 	bge	ec0 <printint+0xf0>
     ef4:	e1a00000 	nop			@ (mov r0, r0)
     ef8:	e1a00000 	nop			@ (mov r0, r0)
     efc:	e24bd004 	sub	sp, fp, #4
     f00:	e8bd8800 	pop	{fp, pc}
     f04:	00001610 	.word	0x00001610

00000f08 <printf>:
     f08:	e92d000e 	push	{r1, r2, r3}
     f0c:	e92d4800 	push	{fp, lr}
     f10:	e28db004 	add	fp, sp, #4
     f14:	e24dd024 	sub	sp, sp, #36	@ 0x24
     f18:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     f1c:	e3a03000 	mov	r3, #0
     f20:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f24:	e28b3008 	add	r3, fp, #8
     f28:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f2c:	e3a03000 	mov	r3, #0
     f30:	e50b3010 	str	r3, [fp, #-16]
     f34:	ea000074 	b	110c <printf+0x204>
     f38:	e59b2004 	ldr	r2, [fp, #4]
     f3c:	e51b3010 	ldr	r3, [fp, #-16]
     f40:	e0823003 	add	r3, r2, r3
     f44:	e5d33000 	ldrb	r3, [r3]
     f48:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     f4c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     f50:	e3530000 	cmp	r3, #0
     f54:	1a00000b 	bne	f88 <printf+0x80>
     f58:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f5c:	e3530025 	cmp	r3, #37	@ 0x25
     f60:	1a000002 	bne	f70 <printf+0x68>
     f64:	e3a03025 	mov	r3, #37	@ 0x25
     f68:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f6c:	ea000063 	b	1100 <printf+0x1f8>
     f70:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f74:	e6ef3073 	uxtb	r3, r3
     f78:	e1a01003 	mov	r1, r3
     f7c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f80:	ebffff84 	bl	d98 <putc>
     f84:	ea00005d 	b	1100 <printf+0x1f8>
     f88:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     f8c:	e3530025 	cmp	r3, #37	@ 0x25
     f90:	1a00005a 	bne	1100 <printf+0x1f8>
     f94:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f98:	e3530064 	cmp	r3, #100	@ 0x64
     f9c:	1a00000a 	bne	fcc <printf+0xc4>
     fa0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fa4:	e5933000 	ldr	r3, [r3]
     fa8:	e1a01003 	mov	r1, r3
     fac:	e3a03001 	mov	r3, #1
     fb0:	e3a0200a 	mov	r2, #10
     fb4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fb8:	ebffff84 	bl	dd0 <printint>
     fbc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fc0:	e2833004 	add	r3, r3, #4
     fc4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fc8:	ea00004a 	b	10f8 <printf+0x1f0>
     fcc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fd0:	e3530078 	cmp	r3, #120	@ 0x78
     fd4:	0a000002 	beq	fe4 <printf+0xdc>
     fd8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fdc:	e3530070 	cmp	r3, #112	@ 0x70
     fe0:	1a00000a 	bne	1010 <printf+0x108>
     fe4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fe8:	e5933000 	ldr	r3, [r3]
     fec:	e1a01003 	mov	r1, r3
     ff0:	e3a03000 	mov	r3, #0
     ff4:	e3a02010 	mov	r2, #16
     ff8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ffc:	ebffff73 	bl	dd0 <printint>
    1000:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1004:	e2833004 	add	r3, r3, #4
    1008:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    100c:	ea000039 	b	10f8 <printf+0x1f0>
    1010:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1014:	e3530073 	cmp	r3, #115	@ 0x73
    1018:	1a000018 	bne	1080 <printf+0x178>
    101c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1020:	e5933000 	ldr	r3, [r3]
    1024:	e50b300c 	str	r3, [fp, #-12]
    1028:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    102c:	e2833004 	add	r3, r3, #4
    1030:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1034:	e51b300c 	ldr	r3, [fp, #-12]
    1038:	e3530000 	cmp	r3, #0
    103c:	1a00000a 	bne	106c <printf+0x164>
    1040:	e59f30f4 	ldr	r3, [pc, #244]	@ 113c <printf+0x234>
    1044:	e50b300c 	str	r3, [fp, #-12]
    1048:	ea000007 	b	106c <printf+0x164>
    104c:	e51b300c 	ldr	r3, [fp, #-12]
    1050:	e5d33000 	ldrb	r3, [r3]
    1054:	e1a01003 	mov	r1, r3
    1058:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    105c:	ebffff4d 	bl	d98 <putc>
    1060:	e51b300c 	ldr	r3, [fp, #-12]
    1064:	e2833001 	add	r3, r3, #1
    1068:	e50b300c 	str	r3, [fp, #-12]
    106c:	e51b300c 	ldr	r3, [fp, #-12]
    1070:	e5d33000 	ldrb	r3, [r3]
    1074:	e3530000 	cmp	r3, #0
    1078:	1afffff3 	bne	104c <printf+0x144>
    107c:	ea00001d 	b	10f8 <printf+0x1f0>
    1080:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1084:	e3530063 	cmp	r3, #99	@ 0x63
    1088:	1a000009 	bne	10b4 <printf+0x1ac>
    108c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1090:	e5933000 	ldr	r3, [r3]
    1094:	e6ef3073 	uxtb	r3, r3
    1098:	e1a01003 	mov	r1, r3
    109c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10a0:	ebffff3c 	bl	d98 <putc>
    10a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10a8:	e2833004 	add	r3, r3, #4
    10ac:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10b0:	ea000010 	b	10f8 <printf+0x1f0>
    10b4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10b8:	e3530025 	cmp	r3, #37	@ 0x25
    10bc:	1a000005 	bne	10d8 <printf+0x1d0>
    10c0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10c4:	e6ef3073 	uxtb	r3, r3
    10c8:	e1a01003 	mov	r1, r3
    10cc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10d0:	ebffff30 	bl	d98 <putc>
    10d4:	ea000007 	b	10f8 <printf+0x1f0>
    10d8:	e3a01025 	mov	r1, #37	@ 0x25
    10dc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10e0:	ebffff2c 	bl	d98 <putc>
    10e4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10e8:	e6ef3073 	uxtb	r3, r3
    10ec:	e1a01003 	mov	r1, r3
    10f0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10f4:	ebffff27 	bl	d98 <putc>
    10f8:	e3a03000 	mov	r3, #0
    10fc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1100:	e51b3010 	ldr	r3, [fp, #-16]
    1104:	e2833001 	add	r3, r3, #1
    1108:	e50b3010 	str	r3, [fp, #-16]
    110c:	e59b2004 	ldr	r2, [fp, #4]
    1110:	e51b3010 	ldr	r3, [fp, #-16]
    1114:	e0823003 	add	r3, r2, r3
    1118:	e5d33000 	ldrb	r3, [r3]
    111c:	e3530000 	cmp	r3, #0
    1120:	1affff84 	bne	f38 <printf+0x30>
    1124:	e1a00000 	nop			@ (mov r0, r0)
    1128:	e1a00000 	nop			@ (mov r0, r0)
    112c:	e24bd004 	sub	sp, fp, #4
    1130:	e8bd4800 	pop	{fp, lr}
    1134:	e28dd00c 	add	sp, sp, #12
    1138:	e12fff1e 	bx	lr
    113c:	00001608 	.word	0x00001608

00001140 <free>:
    1140:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1144:	e28db000 	add	fp, sp, #0
    1148:	e24dd014 	sub	sp, sp, #20
    114c:	e50b0010 	str	r0, [fp, #-16]
    1150:	e51b3010 	ldr	r3, [fp, #-16]
    1154:	e2433008 	sub	r3, r3, #8
    1158:	e50b300c 	str	r3, [fp, #-12]
    115c:	e59f3154 	ldr	r3, [pc, #340]	@ 12b8 <free+0x178>
    1160:	e5933000 	ldr	r3, [r3]
    1164:	e50b3008 	str	r3, [fp, #-8]
    1168:	ea000010 	b	11b0 <free+0x70>
    116c:	e51b3008 	ldr	r3, [fp, #-8]
    1170:	e5933000 	ldr	r3, [r3]
    1174:	e51b2008 	ldr	r2, [fp, #-8]
    1178:	e1520003 	cmp	r2, r3
    117c:	3a000008 	bcc	11a4 <free+0x64>
    1180:	e51b200c 	ldr	r2, [fp, #-12]
    1184:	e51b3008 	ldr	r3, [fp, #-8]
    1188:	e1520003 	cmp	r2, r3
    118c:	8a000010 	bhi	11d4 <free+0x94>
    1190:	e51b3008 	ldr	r3, [fp, #-8]
    1194:	e5933000 	ldr	r3, [r3]
    1198:	e51b200c 	ldr	r2, [fp, #-12]
    119c:	e1520003 	cmp	r2, r3
    11a0:	3a00000b 	bcc	11d4 <free+0x94>
    11a4:	e51b3008 	ldr	r3, [fp, #-8]
    11a8:	e5933000 	ldr	r3, [r3]
    11ac:	e50b3008 	str	r3, [fp, #-8]
    11b0:	e51b200c 	ldr	r2, [fp, #-12]
    11b4:	e51b3008 	ldr	r3, [fp, #-8]
    11b8:	e1520003 	cmp	r2, r3
    11bc:	9affffea 	bls	116c <free+0x2c>
    11c0:	e51b3008 	ldr	r3, [fp, #-8]
    11c4:	e5933000 	ldr	r3, [r3]
    11c8:	e51b200c 	ldr	r2, [fp, #-12]
    11cc:	e1520003 	cmp	r2, r3
    11d0:	2affffe5 	bcs	116c <free+0x2c>
    11d4:	e51b300c 	ldr	r3, [fp, #-12]
    11d8:	e5933004 	ldr	r3, [r3, #4]
    11dc:	e1a03183 	lsl	r3, r3, #3
    11e0:	e51b200c 	ldr	r2, [fp, #-12]
    11e4:	e0822003 	add	r2, r2, r3
    11e8:	e51b3008 	ldr	r3, [fp, #-8]
    11ec:	e5933000 	ldr	r3, [r3]
    11f0:	e1520003 	cmp	r2, r3
    11f4:	1a00000d 	bne	1230 <free+0xf0>
    11f8:	e51b300c 	ldr	r3, [fp, #-12]
    11fc:	e5932004 	ldr	r2, [r3, #4]
    1200:	e51b3008 	ldr	r3, [fp, #-8]
    1204:	e5933000 	ldr	r3, [r3]
    1208:	e5933004 	ldr	r3, [r3, #4]
    120c:	e0822003 	add	r2, r2, r3
    1210:	e51b300c 	ldr	r3, [fp, #-12]
    1214:	e5832004 	str	r2, [r3, #4]
    1218:	e51b3008 	ldr	r3, [fp, #-8]
    121c:	e5933000 	ldr	r3, [r3]
    1220:	e5932000 	ldr	r2, [r3]
    1224:	e51b300c 	ldr	r3, [fp, #-12]
    1228:	e5832000 	str	r2, [r3]
    122c:	ea000003 	b	1240 <free+0x100>
    1230:	e51b3008 	ldr	r3, [fp, #-8]
    1234:	e5932000 	ldr	r2, [r3]
    1238:	e51b300c 	ldr	r3, [fp, #-12]
    123c:	e5832000 	str	r2, [r3]
    1240:	e51b3008 	ldr	r3, [fp, #-8]
    1244:	e5933004 	ldr	r3, [r3, #4]
    1248:	e1a03183 	lsl	r3, r3, #3
    124c:	e51b2008 	ldr	r2, [fp, #-8]
    1250:	e0823003 	add	r3, r2, r3
    1254:	e51b200c 	ldr	r2, [fp, #-12]
    1258:	e1520003 	cmp	r2, r3
    125c:	1a00000b 	bne	1290 <free+0x150>
    1260:	e51b3008 	ldr	r3, [fp, #-8]
    1264:	e5932004 	ldr	r2, [r3, #4]
    1268:	e51b300c 	ldr	r3, [fp, #-12]
    126c:	e5933004 	ldr	r3, [r3, #4]
    1270:	e0822003 	add	r2, r2, r3
    1274:	e51b3008 	ldr	r3, [fp, #-8]
    1278:	e5832004 	str	r2, [r3, #4]
    127c:	e51b300c 	ldr	r3, [fp, #-12]
    1280:	e5932000 	ldr	r2, [r3]
    1284:	e51b3008 	ldr	r3, [fp, #-8]
    1288:	e5832000 	str	r2, [r3]
    128c:	ea000002 	b	129c <free+0x15c>
    1290:	e51b3008 	ldr	r3, [fp, #-8]
    1294:	e51b200c 	ldr	r2, [fp, #-12]
    1298:	e5832000 	str	r2, [r3]
    129c:	e59f2014 	ldr	r2, [pc, #20]	@ 12b8 <free+0x178>
    12a0:	e51b3008 	ldr	r3, [fp, #-8]
    12a4:	e5823000 	str	r3, [r2]
    12a8:	e1a00000 	nop			@ (mov r0, r0)
    12ac:	e28bd000 	add	sp, fp, #0
    12b0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    12b4:	e12fff1e 	bx	lr
    12b8:	0000162c 	.word	0x0000162c

000012bc <morecore>:
    12bc:	e92d4800 	push	{fp, lr}
    12c0:	e28db004 	add	fp, sp, #4
    12c4:	e24dd010 	sub	sp, sp, #16
    12c8:	e50b0010 	str	r0, [fp, #-16]
    12cc:	e51b3010 	ldr	r3, [fp, #-16]
    12d0:	e3530a01 	cmp	r3, #4096	@ 0x1000
    12d4:	2a000001 	bcs	12e0 <morecore+0x24>
    12d8:	e3a03a01 	mov	r3, #4096	@ 0x1000
    12dc:	e50b3010 	str	r3, [fp, #-16]
    12e0:	e51b3010 	ldr	r3, [fp, #-16]
    12e4:	e1a03183 	lsl	r3, r3, #3
    12e8:	e1a00003 	mov	r0, r3
    12ec:	ebfffe07 	bl	b10 <sbrk>
    12f0:	e50b0008 	str	r0, [fp, #-8]
    12f4:	e51b3008 	ldr	r3, [fp, #-8]
    12f8:	e3730001 	cmn	r3, #1
    12fc:	1a000001 	bne	1308 <morecore+0x4c>
    1300:	e3a03000 	mov	r3, #0
    1304:	ea00000a 	b	1334 <morecore+0x78>
    1308:	e51b3008 	ldr	r3, [fp, #-8]
    130c:	e50b300c 	str	r3, [fp, #-12]
    1310:	e51b300c 	ldr	r3, [fp, #-12]
    1314:	e51b2010 	ldr	r2, [fp, #-16]
    1318:	e5832004 	str	r2, [r3, #4]
    131c:	e51b300c 	ldr	r3, [fp, #-12]
    1320:	e2833008 	add	r3, r3, #8
    1324:	e1a00003 	mov	r0, r3
    1328:	ebffff84 	bl	1140 <free>
    132c:	e59f300c 	ldr	r3, [pc, #12]	@ 1340 <morecore+0x84>
    1330:	e5933000 	ldr	r3, [r3]
    1334:	e1a00003 	mov	r0, r3
    1338:	e24bd004 	sub	sp, fp, #4
    133c:	e8bd8800 	pop	{fp, pc}
    1340:	0000162c 	.word	0x0000162c

00001344 <malloc>:
    1344:	e92d4800 	push	{fp, lr}
    1348:	e28db004 	add	fp, sp, #4
    134c:	e24dd018 	sub	sp, sp, #24
    1350:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1354:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1358:	e2833007 	add	r3, r3, #7
    135c:	e1a031a3 	lsr	r3, r3, #3
    1360:	e2833001 	add	r3, r3, #1
    1364:	e50b3010 	str	r3, [fp, #-16]
    1368:	e59f3134 	ldr	r3, [pc, #308]	@ 14a4 <malloc+0x160>
    136c:	e5933000 	ldr	r3, [r3]
    1370:	e50b300c 	str	r3, [fp, #-12]
    1374:	e51b300c 	ldr	r3, [fp, #-12]
    1378:	e3530000 	cmp	r3, #0
    137c:	1a00000b 	bne	13b0 <malloc+0x6c>
    1380:	e59f3120 	ldr	r3, [pc, #288]	@ 14a8 <malloc+0x164>
    1384:	e50b300c 	str	r3, [fp, #-12]
    1388:	e59f2114 	ldr	r2, [pc, #276]	@ 14a4 <malloc+0x160>
    138c:	e51b300c 	ldr	r3, [fp, #-12]
    1390:	e5823000 	str	r3, [r2]
    1394:	e59f3108 	ldr	r3, [pc, #264]	@ 14a4 <malloc+0x160>
    1398:	e5933000 	ldr	r3, [r3]
    139c:	e59f2104 	ldr	r2, [pc, #260]	@ 14a8 <malloc+0x164>
    13a0:	e5823000 	str	r3, [r2]
    13a4:	e59f30fc 	ldr	r3, [pc, #252]	@ 14a8 <malloc+0x164>
    13a8:	e3a02000 	mov	r2, #0
    13ac:	e5832004 	str	r2, [r3, #4]
    13b0:	e51b300c 	ldr	r3, [fp, #-12]
    13b4:	e5933000 	ldr	r3, [r3]
    13b8:	e50b3008 	str	r3, [fp, #-8]
    13bc:	e51b3008 	ldr	r3, [fp, #-8]
    13c0:	e5933004 	ldr	r3, [r3, #4]
    13c4:	e51b2010 	ldr	r2, [fp, #-16]
    13c8:	e1520003 	cmp	r2, r3
    13cc:	8a00001e 	bhi	144c <malloc+0x108>
    13d0:	e51b3008 	ldr	r3, [fp, #-8]
    13d4:	e5933004 	ldr	r3, [r3, #4]
    13d8:	e51b2010 	ldr	r2, [fp, #-16]
    13dc:	e1520003 	cmp	r2, r3
    13e0:	1a000004 	bne	13f8 <malloc+0xb4>
    13e4:	e51b3008 	ldr	r3, [fp, #-8]
    13e8:	e5932000 	ldr	r2, [r3]
    13ec:	e51b300c 	ldr	r3, [fp, #-12]
    13f0:	e5832000 	str	r2, [r3]
    13f4:	ea00000e 	b	1434 <malloc+0xf0>
    13f8:	e51b3008 	ldr	r3, [fp, #-8]
    13fc:	e5932004 	ldr	r2, [r3, #4]
    1400:	e51b3010 	ldr	r3, [fp, #-16]
    1404:	e0422003 	sub	r2, r2, r3
    1408:	e51b3008 	ldr	r3, [fp, #-8]
    140c:	e5832004 	str	r2, [r3, #4]
    1410:	e51b3008 	ldr	r3, [fp, #-8]
    1414:	e5933004 	ldr	r3, [r3, #4]
    1418:	e1a03183 	lsl	r3, r3, #3
    141c:	e51b2008 	ldr	r2, [fp, #-8]
    1420:	e0823003 	add	r3, r2, r3
    1424:	e50b3008 	str	r3, [fp, #-8]
    1428:	e51b3008 	ldr	r3, [fp, #-8]
    142c:	e51b2010 	ldr	r2, [fp, #-16]
    1430:	e5832004 	str	r2, [r3, #4]
    1434:	e59f2068 	ldr	r2, [pc, #104]	@ 14a4 <malloc+0x160>
    1438:	e51b300c 	ldr	r3, [fp, #-12]
    143c:	e5823000 	str	r3, [r2]
    1440:	e51b3008 	ldr	r3, [fp, #-8]
    1444:	e2833008 	add	r3, r3, #8
    1448:	ea000012 	b	1498 <malloc+0x154>
    144c:	e59f3050 	ldr	r3, [pc, #80]	@ 14a4 <malloc+0x160>
    1450:	e5933000 	ldr	r3, [r3]
    1454:	e51b2008 	ldr	r2, [fp, #-8]
    1458:	e1520003 	cmp	r2, r3
    145c:	1a000007 	bne	1480 <malloc+0x13c>
    1460:	e51b0010 	ldr	r0, [fp, #-16]
    1464:	ebffff94 	bl	12bc <morecore>
    1468:	e50b0008 	str	r0, [fp, #-8]
    146c:	e51b3008 	ldr	r3, [fp, #-8]
    1470:	e3530000 	cmp	r3, #0
    1474:	1a000001 	bne	1480 <malloc+0x13c>
    1478:	e3a03000 	mov	r3, #0
    147c:	ea000005 	b	1498 <malloc+0x154>
    1480:	e51b3008 	ldr	r3, [fp, #-8]
    1484:	e50b300c 	str	r3, [fp, #-12]
    1488:	e51b3008 	ldr	r3, [fp, #-8]
    148c:	e5933000 	ldr	r3, [r3]
    1490:	e50b3008 	str	r3, [fp, #-8]
    1494:	eaffffc8 	b	13bc <malloc+0x78>
    1498:	e1a00003 	mov	r0, r3
    149c:	e24bd004 	sub	sp, fp, #4
    14a0:	e8bd8800 	pop	{fp, pc}
    14a4:	0000162c 	.word	0x0000162c
    14a8:	00001624 	.word	0x00001624

000014ac <__udivsi3>:
    14ac:	e2512001 	subs	r2, r1, #1
    14b0:	012fff1e 	bxeq	lr
    14b4:	3a000036 	bcc	1594 <__udivsi3+0xe8>
    14b8:	e1500001 	cmp	r0, r1
    14bc:	9a000022 	bls	154c <__udivsi3+0xa0>
    14c0:	e1110002 	tst	r1, r2
    14c4:	0a000023 	beq	1558 <__udivsi3+0xac>
    14c8:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    14cc:	01a01181 	lsleq	r1, r1, #3
    14d0:	03a03008 	moveq	r3, #8
    14d4:	13a03001 	movne	r3, #1
    14d8:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    14dc:	31510000 	cmpcc	r1, r0
    14e0:	31a01201 	lslcc	r1, r1, #4
    14e4:	31a03203 	lslcc	r3, r3, #4
    14e8:	3afffffa 	bcc	14d8 <__udivsi3+0x2c>
    14ec:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    14f0:	31510000 	cmpcc	r1, r0
    14f4:	31a01081 	lslcc	r1, r1, #1
    14f8:	31a03083 	lslcc	r3, r3, #1
    14fc:	3afffffa 	bcc	14ec <__udivsi3+0x40>
    1500:	e3a02000 	mov	r2, #0
    1504:	e1500001 	cmp	r0, r1
    1508:	20400001 	subcs	r0, r0, r1
    150c:	21822003 	orrcs	r2, r2, r3
    1510:	e15000a1 	cmp	r0, r1, lsr #1
    1514:	204000a1 	subcs	r0, r0, r1, lsr #1
    1518:	218220a3 	orrcs	r2, r2, r3, lsr #1
    151c:	e1500121 	cmp	r0, r1, lsr #2
    1520:	20400121 	subcs	r0, r0, r1, lsr #2
    1524:	21822123 	orrcs	r2, r2, r3, lsr #2
    1528:	e15001a1 	cmp	r0, r1, lsr #3
    152c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1530:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1534:	e3500000 	cmp	r0, #0
    1538:	11b03223 	lsrsne	r3, r3, #4
    153c:	11a01221 	lsrne	r1, r1, #4
    1540:	1affffef 	bne	1504 <__udivsi3+0x58>
    1544:	e1a00002 	mov	r0, r2
    1548:	e12fff1e 	bx	lr
    154c:	03a00001 	moveq	r0, #1
    1550:	13a00000 	movne	r0, #0
    1554:	e12fff1e 	bx	lr
    1558:	e3510801 	cmp	r1, #65536	@ 0x10000
    155c:	21a01821 	lsrcs	r1, r1, #16
    1560:	23a02010 	movcs	r2, #16
    1564:	33a02000 	movcc	r2, #0
    1568:	e3510c01 	cmp	r1, #256	@ 0x100
    156c:	21a01421 	lsrcs	r1, r1, #8
    1570:	22822008 	addcs	r2, r2, #8
    1574:	e3510010 	cmp	r1, #16
    1578:	21a01221 	lsrcs	r1, r1, #4
    157c:	22822004 	addcs	r2, r2, #4
    1580:	e3510004 	cmp	r1, #4
    1584:	82822003 	addhi	r2, r2, #3
    1588:	908220a1 	addls	r2, r2, r1, lsr #1
    158c:	e1a00230 	lsr	r0, r0, r2
    1590:	e12fff1e 	bx	lr
    1594:	e3500000 	cmp	r0, #0
    1598:	13e00000 	mvnne	r0, #0
    159c:	ea000007 	b	15c0 <__aeabi_idiv0>

000015a0 <__aeabi_uidivmod>:
    15a0:	e3510000 	cmp	r1, #0
    15a4:	0afffffa 	beq	1594 <__udivsi3+0xe8>
    15a8:	e92d4003 	push	{r0, r1, lr}
    15ac:	ebffffbe 	bl	14ac <__udivsi3>
    15b0:	e8bd4006 	pop	{r1, r2, lr}
    15b4:	e0030092 	mul	r3, r2, r0
    15b8:	e0411003 	sub	r1, r1, r3
    15bc:	e12fff1e 	bx	lr

000015c0 <__aeabi_idiv0>:
    15c0:	e12fff1e 	bx	lr
