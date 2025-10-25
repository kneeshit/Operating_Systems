
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
      1c:	eb00032a 	bl	ccc <getpinfo>
      20:	e1a03000 	mov	r3, r0
      24:	e3530000 	cmp	r3, #0
      28:	aa000003 	bge	3c <main+0x3c>
      2c:	e59f10c8 	ldr	r1, [pc, #200]	@ fc <main+0xfc>
      30:	e3a00001 	mov	r0, #1
      34:	eb0003ec 	bl	fec <printf>
      38:	eb000254 	bl	990 <exit>
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
      dc:	eb0003c2 	bl	fec <printf>
      e0:	e51b3008 	ldr	r3, [fp, #-8]
      e4:	e2833001 	add	r3, r3, #1
      e8:	e50b3008 	str	r3, [fp, #-8]
      ec:	e51b3008 	ldr	r3, [fp, #-8]
      f0:	e353003f 	cmp	r3, #63	@ 0x3f
      f4:	daffffd3 	ble	48 <main+0x48>
      f8:	eb000224 	bl	990 <exit>
      fc:	000016a8 	.word	0x000016a8
     100:	000016bc 	.word	0x000016bc

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
     3f8:	eb00017f 	bl	9fc <read>
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
     4a0:	eb000182 	bl	ab0 <open>
     4a4:	e50b0008 	str	r0, [fp, #-8]
     4a8:	e51b3008 	ldr	r3, [fp, #-8]
     4ac:	e3530000 	cmp	r3, #0
     4b0:	aa000001 	bge	4bc <stat+0x38>
     4b4:	e3e03000 	mvn	r3, #0
     4b8:	ea000006 	b	4d8 <stat+0x54>
     4bc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     4c0:	e51b0008 	ldr	r0, [fp, #-8]
     4c4:	eb000194 	bl	b1c <fstat>
     4c8:	e50b000c 	str	r0, [fp, #-12]
     4cc:	e51b0008 	ldr	r0, [fp, #-8]
     4d0:	eb00015b 	bl	a44 <close>
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

0000062c <xchg>:
     62c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     630:	e28db000 	add	fp, sp, #0
     634:	e24dd00c 	sub	sp, sp, #12
     638:	e50b0008 	str	r0, [fp, #-8]
     63c:	e50b100c 	str	r1, [fp, #-12]
     640:	e51b200c 	ldr	r2, [fp, #-12]
     644:	e51b3008 	ldr	r3, [fp, #-8]
     648:	e1931f9f 	ldrex	r1, [r3]
     64c:	e1830f92 	strex	r0, r2, [r3]
     650:	e3500000 	cmp	r0, #0
     654:	1afffffb 	bne	648 <xchg+0x1c>
     658:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     65c:	e1a03001 	mov	r3, r1
     660:	e1a00003 	mov	r0, r3
     664:	e28bd000 	add	sp, fp, #0
     668:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     66c:	e12fff1e 	bx	lr

00000670 <acquireLock>:
     670:	e92d4800 	push	{fp, lr}
     674:	e28db004 	add	fp, sp, #4
     678:	e24dd008 	sub	sp, sp, #8
     67c:	e50b0008 	str	r0, [fp, #-8]
     680:	e51b3008 	ldr	r3, [fp, #-8]
     684:	e5933004 	ldr	r3, [r3, #4]
     688:	e3530000 	cmp	r3, #0
     68c:	0a000008 	beq	6b4 <acquireLock+0x44>
     690:	e1a00000 	nop			@ (mov r0, r0)
     694:	e51b3008 	ldr	r3, [fp, #-8]
     698:	e3a01001 	mov	r1, #1
     69c:	e1a00003 	mov	r0, r3
     6a0:	ebffffe1 	bl	62c <xchg>
     6a4:	e1a03000 	mov	r3, r0
     6a8:	e3530000 	cmp	r3, #0
     6ac:	1afffff8 	bne	694 <acquireLock+0x24>
     6b0:	ea000000 	b	6b8 <acquireLock+0x48>
     6b4:	e1a00000 	nop			@ (mov r0, r0)
     6b8:	e24bd004 	sub	sp, fp, #4
     6bc:	e8bd8800 	pop	{fp, pc}

000006c0 <releaseLock>:
     6c0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6c4:	e28db000 	add	fp, sp, #0
     6c8:	e24dd00c 	sub	sp, sp, #12
     6cc:	e50b0008 	str	r0, [fp, #-8]
     6d0:	e51b3008 	ldr	r3, [fp, #-8]
     6d4:	e5933004 	ldr	r3, [r3, #4]
     6d8:	e3530000 	cmp	r3, #0
     6dc:	0a000007 	beq	700 <releaseLock+0x40>
     6e0:	e51b3008 	ldr	r3, [fp, #-8]
     6e4:	e5933000 	ldr	r3, [r3]
     6e8:	e3530001 	cmp	r3, #1
     6ec:	1a000005 	bne	708 <releaseLock+0x48>
     6f0:	e51b3008 	ldr	r3, [fp, #-8]
     6f4:	e3a02000 	mov	r2, #0
     6f8:	e5832000 	str	r2, [r3]
     6fc:	ea000002 	b	70c <releaseLock+0x4c>
     700:	e1a00000 	nop			@ (mov r0, r0)
     704:	ea000000 	b	70c <releaseLock+0x4c>
     708:	e1a00000 	nop			@ (mov r0, r0)
     70c:	e28bd000 	add	sp, fp, #0
     710:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     714:	e12fff1e 	bx	lr

00000718 <initiateCondVar>:
     718:	e92d4800 	push	{fp, lr}
     71c:	e28db004 	add	fp, sp, #4
     720:	e24dd008 	sub	sp, sp, #8
     724:	e50b0008 	str	r0, [fp, #-8]
     728:	eb0001b8 	bl	e10 <getChannel>
     72c:	e1a02000 	mov	r2, r0
     730:	e51b3008 	ldr	r3, [fp, #-8]
     734:	e5832000 	str	r2, [r3]
     738:	e51b3008 	ldr	r3, [fp, #-8]
     73c:	e3a02001 	mov	r2, #1
     740:	e5832004 	str	r2, [r3, #4]
     744:	e1a00000 	nop			@ (mov r0, r0)
     748:	e24bd004 	sub	sp, fp, #4
     74c:	e8bd8800 	pop	{fp, pc}

00000750 <condWait>:
     750:	e92d4800 	push	{fp, lr}
     754:	e28db004 	add	fp, sp, #4
     758:	e24dd008 	sub	sp, sp, #8
     75c:	e50b0008 	str	r0, [fp, #-8]
     760:	e50b100c 	str	r1, [fp, #-12]
     764:	e51b3008 	ldr	r3, [fp, #-8]
     768:	e5933004 	ldr	r3, [r3, #4]
     76c:	e3530000 	cmp	r3, #0
     770:	0a00000c 	beq	7a8 <condWait+0x58>
     774:	e51b300c 	ldr	r3, [fp, #-12]
     778:	e5933004 	ldr	r3, [r3, #4]
     77c:	e3530000 	cmp	r3, #0
     780:	0a000008 	beq	7a8 <condWait+0x58>
     784:	e51b000c 	ldr	r0, [fp, #-12]
     788:	ebffffcc 	bl	6c0 <releaseLock>
     78c:	e51b3008 	ldr	r3, [fp, #-8]
     790:	e5933000 	ldr	r3, [r3]
     794:	e1a00003 	mov	r0, r3
     798:	eb000193 	bl	dec <sleepChan>
     79c:	e51b000c 	ldr	r0, [fp, #-12]
     7a0:	ebffffb2 	bl	670 <acquireLock>
     7a4:	ea000000 	b	7ac <condWait+0x5c>
     7a8:	e1a00000 	nop			@ (mov r0, r0)
     7ac:	e24bd004 	sub	sp, fp, #4
     7b0:	e8bd8800 	pop	{fp, pc}

000007b4 <broadcast>:
     7b4:	e92d4800 	push	{fp, lr}
     7b8:	e28db004 	add	fp, sp, #4
     7bc:	e24dd008 	sub	sp, sp, #8
     7c0:	e50b0008 	str	r0, [fp, #-8]
     7c4:	e51b3008 	ldr	r3, [fp, #-8]
     7c8:	e5933004 	ldr	r3, [r3, #4]
     7cc:	e3530000 	cmp	r3, #0
     7d0:	0a000004 	beq	7e8 <broadcast+0x34>
     7d4:	e51b3008 	ldr	r3, [fp, #-8]
     7d8:	e5933000 	ldr	r3, [r3]
     7dc:	e1a00003 	mov	r0, r3
     7e0:	eb000193 	bl	e34 <sigChan>
     7e4:	ea000000 	b	7ec <broadcast+0x38>
     7e8:	e1a00000 	nop			@ (mov r0, r0)
     7ec:	e24bd004 	sub	sp, fp, #4
     7f0:	e8bd8800 	pop	{fp, pc}

000007f4 <signal>:
     7f4:	e92d4800 	push	{fp, lr}
     7f8:	e28db004 	add	fp, sp, #4
     7fc:	e24dd008 	sub	sp, sp, #8
     800:	e50b0008 	str	r0, [fp, #-8]
     804:	e51b3008 	ldr	r3, [fp, #-8]
     808:	e5933004 	ldr	r3, [r3, #4]
     80c:	e3530000 	cmp	r3, #0
     810:	0a000004 	beq	828 <signal+0x34>
     814:	e51b3008 	ldr	r3, [fp, #-8]
     818:	e5933000 	ldr	r3, [r3]
     81c:	e1a00003 	mov	r0, r3
     820:	eb00018c 	bl	e58 <sigOneChan>
     824:	ea000000 	b	82c <signal+0x38>
     828:	e1a00000 	nop			@ (mov r0, r0)
     82c:	e24bd004 	sub	sp, fp, #4
     830:	e8bd8800 	pop	{fp, pc}

00000834 <semInit>:
     834:	e92d4800 	push	{fp, lr}
     838:	e28db004 	add	fp, sp, #4
     83c:	e24dd008 	sub	sp, sp, #8
     840:	e50b0008 	str	r0, [fp, #-8]
     844:	e50b100c 	str	r1, [fp, #-12]
     848:	e51b3008 	ldr	r3, [fp, #-8]
     84c:	e51b200c 	ldr	r2, [fp, #-12]
     850:	e5832000 	str	r2, [r3]
     854:	e51b3008 	ldr	r3, [fp, #-8]
     858:	e2833004 	add	r3, r3, #4
     85c:	e1a00003 	mov	r0, r3
     860:	ebffff63 	bl	5f4 <initiateLock>
     864:	e51b3008 	ldr	r3, [fp, #-8]
     868:	e283300c 	add	r3, r3, #12
     86c:	e1a00003 	mov	r0, r3
     870:	ebffffa8 	bl	718 <initiateCondVar>
     874:	e51b3008 	ldr	r3, [fp, #-8]
     878:	e3a02001 	mov	r2, #1
     87c:	e5832014 	str	r2, [r3, #20]
     880:	e1a00000 	nop			@ (mov r0, r0)
     884:	e24bd004 	sub	sp, fp, #4
     888:	e8bd8800 	pop	{fp, pc}

0000088c <semUp>:
     88c:	e92d4800 	push	{fp, lr}
     890:	e28db004 	add	fp, sp, #4
     894:	e24dd008 	sub	sp, sp, #8
     898:	e50b0008 	str	r0, [fp, #-8]
     89c:	e51b3008 	ldr	r3, [fp, #-8]
     8a0:	e2833004 	add	r3, r3, #4
     8a4:	e1a00003 	mov	r0, r3
     8a8:	ebffff70 	bl	670 <acquireLock>
     8ac:	e51b3008 	ldr	r3, [fp, #-8]
     8b0:	e5933000 	ldr	r3, [r3]
     8b4:	e2832001 	add	r2, r3, #1
     8b8:	e51b3008 	ldr	r3, [fp, #-8]
     8bc:	e5832000 	str	r2, [r3]
     8c0:	e51b3008 	ldr	r3, [fp, #-8]
     8c4:	e283300c 	add	r3, r3, #12
     8c8:	e1a00003 	mov	r0, r3
     8cc:	ebffffc8 	bl	7f4 <signal>
     8d0:	e51b3008 	ldr	r3, [fp, #-8]
     8d4:	e2833004 	add	r3, r3, #4
     8d8:	e1a00003 	mov	r0, r3
     8dc:	ebffff77 	bl	6c0 <releaseLock>
     8e0:	e1a00000 	nop			@ (mov r0, r0)
     8e4:	e24bd004 	sub	sp, fp, #4
     8e8:	e8bd8800 	pop	{fp, pc}

000008ec <semDown>:
     8ec:	e92d4800 	push	{fp, lr}
     8f0:	e28db004 	add	fp, sp, #4
     8f4:	e24dd008 	sub	sp, sp, #8
     8f8:	e50b0008 	str	r0, [fp, #-8]
     8fc:	e51b3008 	ldr	r3, [fp, #-8]
     900:	e2833004 	add	r3, r3, #4
     904:	e1a00003 	mov	r0, r3
     908:	ebffff58 	bl	670 <acquireLock>
     90c:	ea000006 	b	92c <semDown+0x40>
     910:	e51b3008 	ldr	r3, [fp, #-8]
     914:	e283200c 	add	r2, r3, #12
     918:	e51b3008 	ldr	r3, [fp, #-8]
     91c:	e2833004 	add	r3, r3, #4
     920:	e1a01003 	mov	r1, r3
     924:	e1a00002 	mov	r0, r2
     928:	ebffff88 	bl	750 <condWait>
     92c:	e51b3008 	ldr	r3, [fp, #-8]
     930:	e5933000 	ldr	r3, [r3]
     934:	e3530000 	cmp	r3, #0
     938:	dafffff4 	ble	910 <semDown+0x24>
     93c:	e51b3008 	ldr	r3, [fp, #-8]
     940:	e5933000 	ldr	r3, [r3]
     944:	e2432001 	sub	r2, r3, #1
     948:	e51b3008 	ldr	r3, [fp, #-8]
     94c:	e5832000 	str	r2, [r3]
     950:	e51b3008 	ldr	r3, [fp, #-8]
     954:	e2833004 	add	r3, r3, #4
     958:	e1a00003 	mov	r0, r3
     95c:	ebffff57 	bl	6c0 <releaseLock>
     960:	e1a00000 	nop			@ (mov r0, r0)
     964:	e24bd004 	sub	sp, fp, #4
     968:	e8bd8800 	pop	{fp, pc}

0000096c <fork>:
     96c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     970:	e1a04003 	mov	r4, r3
     974:	e1a03002 	mov	r3, r2
     978:	e1a02001 	mov	r2, r1
     97c:	e1a01000 	mov	r1, r0
     980:	e3a00001 	mov	r0, #1
     984:	ef000000 	svc	0x00000000
     988:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     98c:	e12fff1e 	bx	lr

00000990 <exit>:
     990:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     994:	e1a04003 	mov	r4, r3
     998:	e1a03002 	mov	r3, r2
     99c:	e1a02001 	mov	r2, r1
     9a0:	e1a01000 	mov	r1, r0
     9a4:	e3a00002 	mov	r0, #2
     9a8:	ef000000 	svc	0x00000000
     9ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9b0:	e12fff1e 	bx	lr

000009b4 <wait>:
     9b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9b8:	e1a04003 	mov	r4, r3
     9bc:	e1a03002 	mov	r3, r2
     9c0:	e1a02001 	mov	r2, r1
     9c4:	e1a01000 	mov	r1, r0
     9c8:	e3a00003 	mov	r0, #3
     9cc:	ef000000 	svc	0x00000000
     9d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9d4:	e12fff1e 	bx	lr

000009d8 <pipe>:
     9d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9dc:	e1a04003 	mov	r4, r3
     9e0:	e1a03002 	mov	r3, r2
     9e4:	e1a02001 	mov	r2, r1
     9e8:	e1a01000 	mov	r1, r0
     9ec:	e3a00004 	mov	r0, #4
     9f0:	ef000000 	svc	0x00000000
     9f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9f8:	e12fff1e 	bx	lr

000009fc <read>:
     9fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a00:	e1a04003 	mov	r4, r3
     a04:	e1a03002 	mov	r3, r2
     a08:	e1a02001 	mov	r2, r1
     a0c:	e1a01000 	mov	r1, r0
     a10:	e3a00005 	mov	r0, #5
     a14:	ef000000 	svc	0x00000000
     a18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a1c:	e12fff1e 	bx	lr

00000a20 <write>:
     a20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a24:	e1a04003 	mov	r4, r3
     a28:	e1a03002 	mov	r3, r2
     a2c:	e1a02001 	mov	r2, r1
     a30:	e1a01000 	mov	r1, r0
     a34:	e3a00010 	mov	r0, #16
     a38:	ef000000 	svc	0x00000000
     a3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a40:	e12fff1e 	bx	lr

00000a44 <close>:
     a44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a48:	e1a04003 	mov	r4, r3
     a4c:	e1a03002 	mov	r3, r2
     a50:	e1a02001 	mov	r2, r1
     a54:	e1a01000 	mov	r1, r0
     a58:	e3a00015 	mov	r0, #21
     a5c:	ef000000 	svc	0x00000000
     a60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a64:	e12fff1e 	bx	lr

00000a68 <kill>:
     a68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a6c:	e1a04003 	mov	r4, r3
     a70:	e1a03002 	mov	r3, r2
     a74:	e1a02001 	mov	r2, r1
     a78:	e1a01000 	mov	r1, r0
     a7c:	e3a00006 	mov	r0, #6
     a80:	ef000000 	svc	0x00000000
     a84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a88:	e12fff1e 	bx	lr

00000a8c <exec>:
     a8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a90:	e1a04003 	mov	r4, r3
     a94:	e1a03002 	mov	r3, r2
     a98:	e1a02001 	mov	r2, r1
     a9c:	e1a01000 	mov	r1, r0
     aa0:	e3a00007 	mov	r0, #7
     aa4:	ef000000 	svc	0x00000000
     aa8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aac:	e12fff1e 	bx	lr

00000ab0 <open>:
     ab0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ab4:	e1a04003 	mov	r4, r3
     ab8:	e1a03002 	mov	r3, r2
     abc:	e1a02001 	mov	r2, r1
     ac0:	e1a01000 	mov	r1, r0
     ac4:	e3a0000f 	mov	r0, #15
     ac8:	ef000000 	svc	0x00000000
     acc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ad0:	e12fff1e 	bx	lr

00000ad4 <mknod>:
     ad4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad8:	e1a04003 	mov	r4, r3
     adc:	e1a03002 	mov	r3, r2
     ae0:	e1a02001 	mov	r2, r1
     ae4:	e1a01000 	mov	r1, r0
     ae8:	e3a00011 	mov	r0, #17
     aec:	ef000000 	svc	0x00000000
     af0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     af4:	e12fff1e 	bx	lr

00000af8 <unlink>:
     af8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     afc:	e1a04003 	mov	r4, r3
     b00:	e1a03002 	mov	r3, r2
     b04:	e1a02001 	mov	r2, r1
     b08:	e1a01000 	mov	r1, r0
     b0c:	e3a00012 	mov	r0, #18
     b10:	ef000000 	svc	0x00000000
     b14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b18:	e12fff1e 	bx	lr

00000b1c <fstat>:
     b1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b20:	e1a04003 	mov	r4, r3
     b24:	e1a03002 	mov	r3, r2
     b28:	e1a02001 	mov	r2, r1
     b2c:	e1a01000 	mov	r1, r0
     b30:	e3a00008 	mov	r0, #8
     b34:	ef000000 	svc	0x00000000
     b38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b3c:	e12fff1e 	bx	lr

00000b40 <link>:
     b40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b44:	e1a04003 	mov	r4, r3
     b48:	e1a03002 	mov	r3, r2
     b4c:	e1a02001 	mov	r2, r1
     b50:	e1a01000 	mov	r1, r0
     b54:	e3a00013 	mov	r0, #19
     b58:	ef000000 	svc	0x00000000
     b5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b60:	e12fff1e 	bx	lr

00000b64 <mkdir>:
     b64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b68:	e1a04003 	mov	r4, r3
     b6c:	e1a03002 	mov	r3, r2
     b70:	e1a02001 	mov	r2, r1
     b74:	e1a01000 	mov	r1, r0
     b78:	e3a00014 	mov	r0, #20
     b7c:	ef000000 	svc	0x00000000
     b80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b84:	e12fff1e 	bx	lr

00000b88 <chdir>:
     b88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b8c:	e1a04003 	mov	r4, r3
     b90:	e1a03002 	mov	r3, r2
     b94:	e1a02001 	mov	r2, r1
     b98:	e1a01000 	mov	r1, r0
     b9c:	e3a00009 	mov	r0, #9
     ba0:	ef000000 	svc	0x00000000
     ba4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba8:	e12fff1e 	bx	lr

00000bac <dup>:
     bac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bb0:	e1a04003 	mov	r4, r3
     bb4:	e1a03002 	mov	r3, r2
     bb8:	e1a02001 	mov	r2, r1
     bbc:	e1a01000 	mov	r1, r0
     bc0:	e3a0000a 	mov	r0, #10
     bc4:	ef000000 	svc	0x00000000
     bc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bcc:	e12fff1e 	bx	lr

00000bd0 <getpid>:
     bd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bd4:	e1a04003 	mov	r4, r3
     bd8:	e1a03002 	mov	r3, r2
     bdc:	e1a02001 	mov	r2, r1
     be0:	e1a01000 	mov	r1, r0
     be4:	e3a0000b 	mov	r0, #11
     be8:	ef000000 	svc	0x00000000
     bec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bf0:	e12fff1e 	bx	lr

00000bf4 <sbrk>:
     bf4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf8:	e1a04003 	mov	r4, r3
     bfc:	e1a03002 	mov	r3, r2
     c00:	e1a02001 	mov	r2, r1
     c04:	e1a01000 	mov	r1, r0
     c08:	e3a0000c 	mov	r0, #12
     c0c:	ef000000 	svc	0x00000000
     c10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c14:	e12fff1e 	bx	lr

00000c18 <sleep>:
     c18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c1c:	e1a04003 	mov	r4, r3
     c20:	e1a03002 	mov	r3, r2
     c24:	e1a02001 	mov	r2, r1
     c28:	e1a01000 	mov	r1, r0
     c2c:	e3a0000d 	mov	r0, #13
     c30:	ef000000 	svc	0x00000000
     c34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c38:	e12fff1e 	bx	lr

00000c3c <uptime>:
     c3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c40:	e1a04003 	mov	r4, r3
     c44:	e1a03002 	mov	r3, r2
     c48:	e1a02001 	mov	r2, r1
     c4c:	e1a01000 	mov	r1, r0
     c50:	e3a0000e 	mov	r0, #14
     c54:	ef000000 	svc	0x00000000
     c58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c5c:	e12fff1e 	bx	lr

00000c60 <getprocs>:
     c60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c64:	e1a04003 	mov	r4, r3
     c68:	e1a03002 	mov	r3, r2
     c6c:	e1a02001 	mov	r2, r1
     c70:	e1a01000 	mov	r1, r0
     c74:	e3a00016 	mov	r0, #22
     c78:	ef000000 	svc	0x00000000
     c7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c80:	e12fff1e 	bx	lr

00000c84 <settickets>:
     c84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c88:	e1a04003 	mov	r4, r3
     c8c:	e1a03002 	mov	r3, r2
     c90:	e1a02001 	mov	r2, r1
     c94:	e1a01000 	mov	r1, r0
     c98:	e3a00017 	mov	r0, #23
     c9c:	ef000000 	svc	0x00000000
     ca0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ca4:	e12fff1e 	bx	lr

00000ca8 <srand>:
     ca8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cac:	e1a04003 	mov	r4, r3
     cb0:	e1a03002 	mov	r3, r2
     cb4:	e1a02001 	mov	r2, r1
     cb8:	e1a01000 	mov	r1, r0
     cbc:	e3a00018 	mov	r0, #24
     cc0:	ef000000 	svc	0x00000000
     cc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc8:	e12fff1e 	bx	lr

00000ccc <getpinfo>:
     ccc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cd0:	e1a04003 	mov	r4, r3
     cd4:	e1a03002 	mov	r3, r2
     cd8:	e1a02001 	mov	r2, r1
     cdc:	e1a01000 	mov	r1, r0
     ce0:	e3a00019 	mov	r0, #25
     ce4:	ef000000 	svc	0x00000000
     ce8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cec:	e12fff1e 	bx	lr

00000cf0 <dumppagetable>:
     cf0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cf4:	e1a04003 	mov	r4, r3
     cf8:	e1a03002 	mov	r3, r2
     cfc:	e1a02001 	mov	r2, r1
     d00:	e1a01000 	mov	r1, r0
     d04:	e3a0001a 	mov	r0, #26
     d08:	ef000000 	svc	0x00000000
     d0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d10:	e12fff1e 	bx	lr

00000d14 <thread_create>:
     d14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d18:	e1a04003 	mov	r4, r3
     d1c:	e1a03002 	mov	r3, r2
     d20:	e1a02001 	mov	r2, r1
     d24:	e1a01000 	mov	r1, r0
     d28:	e3a0001b 	mov	r0, #27
     d2c:	ef000000 	svc	0x00000000
     d30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d34:	e12fff1e 	bx	lr

00000d38 <thread_exit>:
     d38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d3c:	e1a04003 	mov	r4, r3
     d40:	e1a03002 	mov	r3, r2
     d44:	e1a02001 	mov	r2, r1
     d48:	e1a01000 	mov	r1, r0
     d4c:	e3a0001c 	mov	r0, #28
     d50:	ef000000 	svc	0x00000000
     d54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d58:	e12fff1e 	bx	lr

00000d5c <thread_join>:
     d5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d60:	e1a04003 	mov	r4, r3
     d64:	e1a03002 	mov	r3, r2
     d68:	e1a02001 	mov	r2, r1
     d6c:	e1a01000 	mov	r1, r0
     d70:	e3a0001d 	mov	r0, #29
     d74:	ef000000 	svc	0x00000000
     d78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d7c:	e12fff1e 	bx	lr

00000d80 <waitpid>:
     d80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d84:	e1a04003 	mov	r4, r3
     d88:	e1a03002 	mov	r3, r2
     d8c:	e1a02001 	mov	r2, r1
     d90:	e1a01000 	mov	r1, r0
     d94:	e3a0001e 	mov	r0, #30
     d98:	ef000000 	svc	0x00000000
     d9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     da0:	e12fff1e 	bx	lr

00000da4 <barrier_init>:
     da4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da8:	e1a04003 	mov	r4, r3
     dac:	e1a03002 	mov	r3, r2
     db0:	e1a02001 	mov	r2, r1
     db4:	e1a01000 	mov	r1, r0
     db8:	e3a0001f 	mov	r0, #31
     dbc:	ef000000 	svc	0x00000000
     dc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dc4:	e12fff1e 	bx	lr

00000dc8 <barrier_check>:
     dc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dcc:	e1a04003 	mov	r4, r3
     dd0:	e1a03002 	mov	r3, r2
     dd4:	e1a02001 	mov	r2, r1
     dd8:	e1a01000 	mov	r1, r0
     ddc:	e3a00020 	mov	r0, #32
     de0:	ef000000 	svc	0x00000000
     de4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     de8:	e12fff1e 	bx	lr

00000dec <sleepChan>:
     dec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     df0:	e1a04003 	mov	r4, r3
     df4:	e1a03002 	mov	r3, r2
     df8:	e1a02001 	mov	r2, r1
     dfc:	e1a01000 	mov	r1, r0
     e00:	e3a00024 	mov	r0, #36	@ 0x24
     e04:	ef000000 	svc	0x00000000
     e08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e0c:	e12fff1e 	bx	lr

00000e10 <getChannel>:
     e10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e14:	e1a04003 	mov	r4, r3
     e18:	e1a03002 	mov	r3, r2
     e1c:	e1a02001 	mov	r2, r1
     e20:	e1a01000 	mov	r1, r0
     e24:	e3a00025 	mov	r0, #37	@ 0x25
     e28:	ef000000 	svc	0x00000000
     e2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e30:	e12fff1e 	bx	lr

00000e34 <sigChan>:
     e34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e38:	e1a04003 	mov	r4, r3
     e3c:	e1a03002 	mov	r3, r2
     e40:	e1a02001 	mov	r2, r1
     e44:	e1a01000 	mov	r1, r0
     e48:	e3a00026 	mov	r0, #38	@ 0x26
     e4c:	ef000000 	svc	0x00000000
     e50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e54:	e12fff1e 	bx	lr

00000e58 <sigOneChan>:
     e58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e5c:	e1a04003 	mov	r4, r3
     e60:	e1a03002 	mov	r3, r2
     e64:	e1a02001 	mov	r2, r1
     e68:	e1a01000 	mov	r1, r0
     e6c:	e3a00027 	mov	r0, #39	@ 0x27
     e70:	ef000000 	svc	0x00000000
     e74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e78:	e12fff1e 	bx	lr

00000e7c <putc>:
     e7c:	e92d4800 	push	{fp, lr}
     e80:	e28db004 	add	fp, sp, #4
     e84:	e24dd008 	sub	sp, sp, #8
     e88:	e50b0008 	str	r0, [fp, #-8]
     e8c:	e1a03001 	mov	r3, r1
     e90:	e54b3009 	strb	r3, [fp, #-9]
     e94:	e24b3009 	sub	r3, fp, #9
     e98:	e3a02001 	mov	r2, #1
     e9c:	e1a01003 	mov	r1, r3
     ea0:	e51b0008 	ldr	r0, [fp, #-8]
     ea4:	ebfffedd 	bl	a20 <write>
     ea8:	e1a00000 	nop			@ (mov r0, r0)
     eac:	e24bd004 	sub	sp, fp, #4
     eb0:	e8bd8800 	pop	{fp, pc}

00000eb4 <printint>:
     eb4:	e92d4800 	push	{fp, lr}
     eb8:	e28db004 	add	fp, sp, #4
     ebc:	e24dd030 	sub	sp, sp, #48	@ 0x30
     ec0:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     ec4:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     ec8:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     ecc:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     ed0:	e3a03000 	mov	r3, #0
     ed4:	e50b300c 	str	r3, [fp, #-12]
     ed8:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     edc:	e3530000 	cmp	r3, #0
     ee0:	0a000008 	beq	f08 <printint+0x54>
     ee4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ee8:	e3530000 	cmp	r3, #0
     eec:	aa000005 	bge	f08 <printint+0x54>
     ef0:	e3a03001 	mov	r3, #1
     ef4:	e50b300c 	str	r3, [fp, #-12]
     ef8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     efc:	e2633000 	rsb	r3, r3, #0
     f00:	e50b3010 	str	r3, [fp, #-16]
     f04:	ea000001 	b	f10 <printint+0x5c>
     f08:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f0c:	e50b3010 	str	r3, [fp, #-16]
     f10:	e3a03000 	mov	r3, #0
     f14:	e50b3008 	str	r3, [fp, #-8]
     f18:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     f1c:	e51b3010 	ldr	r3, [fp, #-16]
     f20:	e1a01002 	mov	r1, r2
     f24:	e1a00003 	mov	r0, r3
     f28:	eb0001d5 	bl	1684 <__aeabi_uidivmod>
     f2c:	e1a03001 	mov	r3, r1
     f30:	e1a01003 	mov	r1, r3
     f34:	e51b3008 	ldr	r3, [fp, #-8]
     f38:	e2832001 	add	r2, r3, #1
     f3c:	e50b2008 	str	r2, [fp, #-8]
     f40:	e59f20a0 	ldr	r2, [pc, #160]	@ fe8 <printint+0x134>
     f44:	e7d22001 	ldrb	r2, [r2, r1]
     f48:	e2433004 	sub	r3, r3, #4
     f4c:	e083300b 	add	r3, r3, fp
     f50:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f54:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     f58:	e1a01003 	mov	r1, r3
     f5c:	e51b0010 	ldr	r0, [fp, #-16]
     f60:	eb00018a 	bl	1590 <__udivsi3>
     f64:	e1a03000 	mov	r3, r0
     f68:	e50b3010 	str	r3, [fp, #-16]
     f6c:	e51b3010 	ldr	r3, [fp, #-16]
     f70:	e3530000 	cmp	r3, #0
     f74:	1affffe7 	bne	f18 <printint+0x64>
     f78:	e51b300c 	ldr	r3, [fp, #-12]
     f7c:	e3530000 	cmp	r3, #0
     f80:	0a00000e 	beq	fc0 <printint+0x10c>
     f84:	e51b3008 	ldr	r3, [fp, #-8]
     f88:	e2832001 	add	r2, r3, #1
     f8c:	e50b2008 	str	r2, [fp, #-8]
     f90:	e2433004 	sub	r3, r3, #4
     f94:	e083300b 	add	r3, r3, fp
     f98:	e3a0202d 	mov	r2, #45	@ 0x2d
     f9c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     fa0:	ea000006 	b	fc0 <printint+0x10c>
     fa4:	e24b2020 	sub	r2, fp, #32
     fa8:	e51b3008 	ldr	r3, [fp, #-8]
     fac:	e0823003 	add	r3, r2, r3
     fb0:	e5d33000 	ldrb	r3, [r3]
     fb4:	e1a01003 	mov	r1, r3
     fb8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     fbc:	ebffffae 	bl	e7c <putc>
     fc0:	e51b3008 	ldr	r3, [fp, #-8]
     fc4:	e2433001 	sub	r3, r3, #1
     fc8:	e50b3008 	str	r3, [fp, #-8]
     fcc:	e51b3008 	ldr	r3, [fp, #-8]
     fd0:	e3530000 	cmp	r3, #0
     fd4:	aafffff2 	bge	fa4 <printint+0xf0>
     fd8:	e1a00000 	nop			@ (mov r0, r0)
     fdc:	e1a00000 	nop			@ (mov r0, r0)
     fe0:	e24bd004 	sub	sp, fp, #4
     fe4:	e8bd8800 	pop	{fp, pc}
     fe8:	000016f4 	.word	0x000016f4

00000fec <printf>:
     fec:	e92d000e 	push	{r1, r2, r3}
     ff0:	e92d4800 	push	{fp, lr}
     ff4:	e28db004 	add	fp, sp, #4
     ff8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     ffc:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1000:	e3a03000 	mov	r3, #0
    1004:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1008:	e28b3008 	add	r3, fp, #8
    100c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1010:	e3a03000 	mov	r3, #0
    1014:	e50b3010 	str	r3, [fp, #-16]
    1018:	ea000074 	b	11f0 <printf+0x204>
    101c:	e59b2004 	ldr	r2, [fp, #4]
    1020:	e51b3010 	ldr	r3, [fp, #-16]
    1024:	e0823003 	add	r3, r2, r3
    1028:	e5d33000 	ldrb	r3, [r3]
    102c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1030:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1034:	e3530000 	cmp	r3, #0
    1038:	1a00000b 	bne	106c <printf+0x80>
    103c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1040:	e3530025 	cmp	r3, #37	@ 0x25
    1044:	1a000002 	bne	1054 <printf+0x68>
    1048:	e3a03025 	mov	r3, #37	@ 0x25
    104c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1050:	ea000063 	b	11e4 <printf+0x1f8>
    1054:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1058:	e6ef3073 	uxtb	r3, r3
    105c:	e1a01003 	mov	r1, r3
    1060:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1064:	ebffff84 	bl	e7c <putc>
    1068:	ea00005d 	b	11e4 <printf+0x1f8>
    106c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1070:	e3530025 	cmp	r3, #37	@ 0x25
    1074:	1a00005a 	bne	11e4 <printf+0x1f8>
    1078:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    107c:	e3530064 	cmp	r3, #100	@ 0x64
    1080:	1a00000a 	bne	10b0 <printf+0xc4>
    1084:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1088:	e5933000 	ldr	r3, [r3]
    108c:	e1a01003 	mov	r1, r3
    1090:	e3a03001 	mov	r3, #1
    1094:	e3a0200a 	mov	r2, #10
    1098:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    109c:	ebffff84 	bl	eb4 <printint>
    10a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10a4:	e2833004 	add	r3, r3, #4
    10a8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10ac:	ea00004a 	b	11dc <printf+0x1f0>
    10b0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10b4:	e3530078 	cmp	r3, #120	@ 0x78
    10b8:	0a000002 	beq	10c8 <printf+0xdc>
    10bc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10c0:	e3530070 	cmp	r3, #112	@ 0x70
    10c4:	1a00000a 	bne	10f4 <printf+0x108>
    10c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10cc:	e5933000 	ldr	r3, [r3]
    10d0:	e1a01003 	mov	r1, r3
    10d4:	e3a03000 	mov	r3, #0
    10d8:	e3a02010 	mov	r2, #16
    10dc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10e0:	ebffff73 	bl	eb4 <printint>
    10e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10e8:	e2833004 	add	r3, r3, #4
    10ec:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10f0:	ea000039 	b	11dc <printf+0x1f0>
    10f4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10f8:	e3530073 	cmp	r3, #115	@ 0x73
    10fc:	1a000018 	bne	1164 <printf+0x178>
    1100:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1104:	e5933000 	ldr	r3, [r3]
    1108:	e50b300c 	str	r3, [fp, #-12]
    110c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1110:	e2833004 	add	r3, r3, #4
    1114:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1118:	e51b300c 	ldr	r3, [fp, #-12]
    111c:	e3530000 	cmp	r3, #0
    1120:	1a00000a 	bne	1150 <printf+0x164>
    1124:	e59f30f4 	ldr	r3, [pc, #244]	@ 1220 <printf+0x234>
    1128:	e50b300c 	str	r3, [fp, #-12]
    112c:	ea000007 	b	1150 <printf+0x164>
    1130:	e51b300c 	ldr	r3, [fp, #-12]
    1134:	e5d33000 	ldrb	r3, [r3]
    1138:	e1a01003 	mov	r1, r3
    113c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1140:	ebffff4d 	bl	e7c <putc>
    1144:	e51b300c 	ldr	r3, [fp, #-12]
    1148:	e2833001 	add	r3, r3, #1
    114c:	e50b300c 	str	r3, [fp, #-12]
    1150:	e51b300c 	ldr	r3, [fp, #-12]
    1154:	e5d33000 	ldrb	r3, [r3]
    1158:	e3530000 	cmp	r3, #0
    115c:	1afffff3 	bne	1130 <printf+0x144>
    1160:	ea00001d 	b	11dc <printf+0x1f0>
    1164:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1168:	e3530063 	cmp	r3, #99	@ 0x63
    116c:	1a000009 	bne	1198 <printf+0x1ac>
    1170:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1174:	e5933000 	ldr	r3, [r3]
    1178:	e6ef3073 	uxtb	r3, r3
    117c:	e1a01003 	mov	r1, r3
    1180:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1184:	ebffff3c 	bl	e7c <putc>
    1188:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    118c:	e2833004 	add	r3, r3, #4
    1190:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1194:	ea000010 	b	11dc <printf+0x1f0>
    1198:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    119c:	e3530025 	cmp	r3, #37	@ 0x25
    11a0:	1a000005 	bne	11bc <printf+0x1d0>
    11a4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11a8:	e6ef3073 	uxtb	r3, r3
    11ac:	e1a01003 	mov	r1, r3
    11b0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11b4:	ebffff30 	bl	e7c <putc>
    11b8:	ea000007 	b	11dc <printf+0x1f0>
    11bc:	e3a01025 	mov	r1, #37	@ 0x25
    11c0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11c4:	ebffff2c 	bl	e7c <putc>
    11c8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11cc:	e6ef3073 	uxtb	r3, r3
    11d0:	e1a01003 	mov	r1, r3
    11d4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11d8:	ebffff27 	bl	e7c <putc>
    11dc:	e3a03000 	mov	r3, #0
    11e0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    11e4:	e51b3010 	ldr	r3, [fp, #-16]
    11e8:	e2833001 	add	r3, r3, #1
    11ec:	e50b3010 	str	r3, [fp, #-16]
    11f0:	e59b2004 	ldr	r2, [fp, #4]
    11f4:	e51b3010 	ldr	r3, [fp, #-16]
    11f8:	e0823003 	add	r3, r2, r3
    11fc:	e5d33000 	ldrb	r3, [r3]
    1200:	e3530000 	cmp	r3, #0
    1204:	1affff84 	bne	101c <printf+0x30>
    1208:	e1a00000 	nop			@ (mov r0, r0)
    120c:	e1a00000 	nop			@ (mov r0, r0)
    1210:	e24bd004 	sub	sp, fp, #4
    1214:	e8bd4800 	pop	{fp, lr}
    1218:	e28dd00c 	add	sp, sp, #12
    121c:	e12fff1e 	bx	lr
    1220:	000016ec 	.word	0x000016ec

00001224 <free>:
    1224:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1228:	e28db000 	add	fp, sp, #0
    122c:	e24dd014 	sub	sp, sp, #20
    1230:	e50b0010 	str	r0, [fp, #-16]
    1234:	e51b3010 	ldr	r3, [fp, #-16]
    1238:	e2433008 	sub	r3, r3, #8
    123c:	e50b300c 	str	r3, [fp, #-12]
    1240:	e59f3154 	ldr	r3, [pc, #340]	@ 139c <free+0x178>
    1244:	e5933000 	ldr	r3, [r3]
    1248:	e50b3008 	str	r3, [fp, #-8]
    124c:	ea000010 	b	1294 <free+0x70>
    1250:	e51b3008 	ldr	r3, [fp, #-8]
    1254:	e5933000 	ldr	r3, [r3]
    1258:	e51b2008 	ldr	r2, [fp, #-8]
    125c:	e1520003 	cmp	r2, r3
    1260:	3a000008 	bcc	1288 <free+0x64>
    1264:	e51b200c 	ldr	r2, [fp, #-12]
    1268:	e51b3008 	ldr	r3, [fp, #-8]
    126c:	e1520003 	cmp	r2, r3
    1270:	8a000010 	bhi	12b8 <free+0x94>
    1274:	e51b3008 	ldr	r3, [fp, #-8]
    1278:	e5933000 	ldr	r3, [r3]
    127c:	e51b200c 	ldr	r2, [fp, #-12]
    1280:	e1520003 	cmp	r2, r3
    1284:	3a00000b 	bcc	12b8 <free+0x94>
    1288:	e51b3008 	ldr	r3, [fp, #-8]
    128c:	e5933000 	ldr	r3, [r3]
    1290:	e50b3008 	str	r3, [fp, #-8]
    1294:	e51b200c 	ldr	r2, [fp, #-12]
    1298:	e51b3008 	ldr	r3, [fp, #-8]
    129c:	e1520003 	cmp	r2, r3
    12a0:	9affffea 	bls	1250 <free+0x2c>
    12a4:	e51b3008 	ldr	r3, [fp, #-8]
    12a8:	e5933000 	ldr	r3, [r3]
    12ac:	e51b200c 	ldr	r2, [fp, #-12]
    12b0:	e1520003 	cmp	r2, r3
    12b4:	2affffe5 	bcs	1250 <free+0x2c>
    12b8:	e51b300c 	ldr	r3, [fp, #-12]
    12bc:	e5933004 	ldr	r3, [r3, #4]
    12c0:	e1a03183 	lsl	r3, r3, #3
    12c4:	e51b200c 	ldr	r2, [fp, #-12]
    12c8:	e0822003 	add	r2, r2, r3
    12cc:	e51b3008 	ldr	r3, [fp, #-8]
    12d0:	e5933000 	ldr	r3, [r3]
    12d4:	e1520003 	cmp	r2, r3
    12d8:	1a00000d 	bne	1314 <free+0xf0>
    12dc:	e51b300c 	ldr	r3, [fp, #-12]
    12e0:	e5932004 	ldr	r2, [r3, #4]
    12e4:	e51b3008 	ldr	r3, [fp, #-8]
    12e8:	e5933000 	ldr	r3, [r3]
    12ec:	e5933004 	ldr	r3, [r3, #4]
    12f0:	e0822003 	add	r2, r2, r3
    12f4:	e51b300c 	ldr	r3, [fp, #-12]
    12f8:	e5832004 	str	r2, [r3, #4]
    12fc:	e51b3008 	ldr	r3, [fp, #-8]
    1300:	e5933000 	ldr	r3, [r3]
    1304:	e5932000 	ldr	r2, [r3]
    1308:	e51b300c 	ldr	r3, [fp, #-12]
    130c:	e5832000 	str	r2, [r3]
    1310:	ea000003 	b	1324 <free+0x100>
    1314:	e51b3008 	ldr	r3, [fp, #-8]
    1318:	e5932000 	ldr	r2, [r3]
    131c:	e51b300c 	ldr	r3, [fp, #-12]
    1320:	e5832000 	str	r2, [r3]
    1324:	e51b3008 	ldr	r3, [fp, #-8]
    1328:	e5933004 	ldr	r3, [r3, #4]
    132c:	e1a03183 	lsl	r3, r3, #3
    1330:	e51b2008 	ldr	r2, [fp, #-8]
    1334:	e0823003 	add	r3, r2, r3
    1338:	e51b200c 	ldr	r2, [fp, #-12]
    133c:	e1520003 	cmp	r2, r3
    1340:	1a00000b 	bne	1374 <free+0x150>
    1344:	e51b3008 	ldr	r3, [fp, #-8]
    1348:	e5932004 	ldr	r2, [r3, #4]
    134c:	e51b300c 	ldr	r3, [fp, #-12]
    1350:	e5933004 	ldr	r3, [r3, #4]
    1354:	e0822003 	add	r2, r2, r3
    1358:	e51b3008 	ldr	r3, [fp, #-8]
    135c:	e5832004 	str	r2, [r3, #4]
    1360:	e51b300c 	ldr	r3, [fp, #-12]
    1364:	e5932000 	ldr	r2, [r3]
    1368:	e51b3008 	ldr	r3, [fp, #-8]
    136c:	e5832000 	str	r2, [r3]
    1370:	ea000002 	b	1380 <free+0x15c>
    1374:	e51b3008 	ldr	r3, [fp, #-8]
    1378:	e51b200c 	ldr	r2, [fp, #-12]
    137c:	e5832000 	str	r2, [r3]
    1380:	e59f2014 	ldr	r2, [pc, #20]	@ 139c <free+0x178>
    1384:	e51b3008 	ldr	r3, [fp, #-8]
    1388:	e5823000 	str	r3, [r2]
    138c:	e1a00000 	nop			@ (mov r0, r0)
    1390:	e28bd000 	add	sp, fp, #0
    1394:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1398:	e12fff1e 	bx	lr
    139c:	00001710 	.word	0x00001710

000013a0 <morecore>:
    13a0:	e92d4800 	push	{fp, lr}
    13a4:	e28db004 	add	fp, sp, #4
    13a8:	e24dd010 	sub	sp, sp, #16
    13ac:	e50b0010 	str	r0, [fp, #-16]
    13b0:	e51b3010 	ldr	r3, [fp, #-16]
    13b4:	e3530a01 	cmp	r3, #4096	@ 0x1000
    13b8:	2a000001 	bcs	13c4 <morecore+0x24>
    13bc:	e3a03a01 	mov	r3, #4096	@ 0x1000
    13c0:	e50b3010 	str	r3, [fp, #-16]
    13c4:	e51b3010 	ldr	r3, [fp, #-16]
    13c8:	e1a03183 	lsl	r3, r3, #3
    13cc:	e1a00003 	mov	r0, r3
    13d0:	ebfffe07 	bl	bf4 <sbrk>
    13d4:	e50b0008 	str	r0, [fp, #-8]
    13d8:	e51b3008 	ldr	r3, [fp, #-8]
    13dc:	e3730001 	cmn	r3, #1
    13e0:	1a000001 	bne	13ec <morecore+0x4c>
    13e4:	e3a03000 	mov	r3, #0
    13e8:	ea00000a 	b	1418 <morecore+0x78>
    13ec:	e51b3008 	ldr	r3, [fp, #-8]
    13f0:	e50b300c 	str	r3, [fp, #-12]
    13f4:	e51b300c 	ldr	r3, [fp, #-12]
    13f8:	e51b2010 	ldr	r2, [fp, #-16]
    13fc:	e5832004 	str	r2, [r3, #4]
    1400:	e51b300c 	ldr	r3, [fp, #-12]
    1404:	e2833008 	add	r3, r3, #8
    1408:	e1a00003 	mov	r0, r3
    140c:	ebffff84 	bl	1224 <free>
    1410:	e59f300c 	ldr	r3, [pc, #12]	@ 1424 <morecore+0x84>
    1414:	e5933000 	ldr	r3, [r3]
    1418:	e1a00003 	mov	r0, r3
    141c:	e24bd004 	sub	sp, fp, #4
    1420:	e8bd8800 	pop	{fp, pc}
    1424:	00001710 	.word	0x00001710

00001428 <malloc>:
    1428:	e92d4800 	push	{fp, lr}
    142c:	e28db004 	add	fp, sp, #4
    1430:	e24dd018 	sub	sp, sp, #24
    1434:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1438:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    143c:	e2833007 	add	r3, r3, #7
    1440:	e1a031a3 	lsr	r3, r3, #3
    1444:	e2833001 	add	r3, r3, #1
    1448:	e50b3010 	str	r3, [fp, #-16]
    144c:	e59f3134 	ldr	r3, [pc, #308]	@ 1588 <malloc+0x160>
    1450:	e5933000 	ldr	r3, [r3]
    1454:	e50b300c 	str	r3, [fp, #-12]
    1458:	e51b300c 	ldr	r3, [fp, #-12]
    145c:	e3530000 	cmp	r3, #0
    1460:	1a00000b 	bne	1494 <malloc+0x6c>
    1464:	e59f3120 	ldr	r3, [pc, #288]	@ 158c <malloc+0x164>
    1468:	e50b300c 	str	r3, [fp, #-12]
    146c:	e59f2114 	ldr	r2, [pc, #276]	@ 1588 <malloc+0x160>
    1470:	e51b300c 	ldr	r3, [fp, #-12]
    1474:	e5823000 	str	r3, [r2]
    1478:	e59f3108 	ldr	r3, [pc, #264]	@ 1588 <malloc+0x160>
    147c:	e5933000 	ldr	r3, [r3]
    1480:	e59f2104 	ldr	r2, [pc, #260]	@ 158c <malloc+0x164>
    1484:	e5823000 	str	r3, [r2]
    1488:	e59f30fc 	ldr	r3, [pc, #252]	@ 158c <malloc+0x164>
    148c:	e3a02000 	mov	r2, #0
    1490:	e5832004 	str	r2, [r3, #4]
    1494:	e51b300c 	ldr	r3, [fp, #-12]
    1498:	e5933000 	ldr	r3, [r3]
    149c:	e50b3008 	str	r3, [fp, #-8]
    14a0:	e51b3008 	ldr	r3, [fp, #-8]
    14a4:	e5933004 	ldr	r3, [r3, #4]
    14a8:	e51b2010 	ldr	r2, [fp, #-16]
    14ac:	e1520003 	cmp	r2, r3
    14b0:	8a00001e 	bhi	1530 <malloc+0x108>
    14b4:	e51b3008 	ldr	r3, [fp, #-8]
    14b8:	e5933004 	ldr	r3, [r3, #4]
    14bc:	e51b2010 	ldr	r2, [fp, #-16]
    14c0:	e1520003 	cmp	r2, r3
    14c4:	1a000004 	bne	14dc <malloc+0xb4>
    14c8:	e51b3008 	ldr	r3, [fp, #-8]
    14cc:	e5932000 	ldr	r2, [r3]
    14d0:	e51b300c 	ldr	r3, [fp, #-12]
    14d4:	e5832000 	str	r2, [r3]
    14d8:	ea00000e 	b	1518 <malloc+0xf0>
    14dc:	e51b3008 	ldr	r3, [fp, #-8]
    14e0:	e5932004 	ldr	r2, [r3, #4]
    14e4:	e51b3010 	ldr	r3, [fp, #-16]
    14e8:	e0422003 	sub	r2, r2, r3
    14ec:	e51b3008 	ldr	r3, [fp, #-8]
    14f0:	e5832004 	str	r2, [r3, #4]
    14f4:	e51b3008 	ldr	r3, [fp, #-8]
    14f8:	e5933004 	ldr	r3, [r3, #4]
    14fc:	e1a03183 	lsl	r3, r3, #3
    1500:	e51b2008 	ldr	r2, [fp, #-8]
    1504:	e0823003 	add	r3, r2, r3
    1508:	e50b3008 	str	r3, [fp, #-8]
    150c:	e51b3008 	ldr	r3, [fp, #-8]
    1510:	e51b2010 	ldr	r2, [fp, #-16]
    1514:	e5832004 	str	r2, [r3, #4]
    1518:	e59f2068 	ldr	r2, [pc, #104]	@ 1588 <malloc+0x160>
    151c:	e51b300c 	ldr	r3, [fp, #-12]
    1520:	e5823000 	str	r3, [r2]
    1524:	e51b3008 	ldr	r3, [fp, #-8]
    1528:	e2833008 	add	r3, r3, #8
    152c:	ea000012 	b	157c <malloc+0x154>
    1530:	e59f3050 	ldr	r3, [pc, #80]	@ 1588 <malloc+0x160>
    1534:	e5933000 	ldr	r3, [r3]
    1538:	e51b2008 	ldr	r2, [fp, #-8]
    153c:	e1520003 	cmp	r2, r3
    1540:	1a000007 	bne	1564 <malloc+0x13c>
    1544:	e51b0010 	ldr	r0, [fp, #-16]
    1548:	ebffff94 	bl	13a0 <morecore>
    154c:	e50b0008 	str	r0, [fp, #-8]
    1550:	e51b3008 	ldr	r3, [fp, #-8]
    1554:	e3530000 	cmp	r3, #0
    1558:	1a000001 	bne	1564 <malloc+0x13c>
    155c:	e3a03000 	mov	r3, #0
    1560:	ea000005 	b	157c <malloc+0x154>
    1564:	e51b3008 	ldr	r3, [fp, #-8]
    1568:	e50b300c 	str	r3, [fp, #-12]
    156c:	e51b3008 	ldr	r3, [fp, #-8]
    1570:	e5933000 	ldr	r3, [r3]
    1574:	e50b3008 	str	r3, [fp, #-8]
    1578:	eaffffc8 	b	14a0 <malloc+0x78>
    157c:	e1a00003 	mov	r0, r3
    1580:	e24bd004 	sub	sp, fp, #4
    1584:	e8bd8800 	pop	{fp, pc}
    1588:	00001710 	.word	0x00001710
    158c:	00001708 	.word	0x00001708

00001590 <__udivsi3>:
    1590:	e2512001 	subs	r2, r1, #1
    1594:	012fff1e 	bxeq	lr
    1598:	3a000036 	bcc	1678 <__udivsi3+0xe8>
    159c:	e1500001 	cmp	r0, r1
    15a0:	9a000022 	bls	1630 <__udivsi3+0xa0>
    15a4:	e1110002 	tst	r1, r2
    15a8:	0a000023 	beq	163c <__udivsi3+0xac>
    15ac:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    15b0:	01a01181 	lsleq	r1, r1, #3
    15b4:	03a03008 	moveq	r3, #8
    15b8:	13a03001 	movne	r3, #1
    15bc:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    15c0:	31510000 	cmpcc	r1, r0
    15c4:	31a01201 	lslcc	r1, r1, #4
    15c8:	31a03203 	lslcc	r3, r3, #4
    15cc:	3afffffa 	bcc	15bc <__udivsi3+0x2c>
    15d0:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    15d4:	31510000 	cmpcc	r1, r0
    15d8:	31a01081 	lslcc	r1, r1, #1
    15dc:	31a03083 	lslcc	r3, r3, #1
    15e0:	3afffffa 	bcc	15d0 <__udivsi3+0x40>
    15e4:	e3a02000 	mov	r2, #0
    15e8:	e1500001 	cmp	r0, r1
    15ec:	20400001 	subcs	r0, r0, r1
    15f0:	21822003 	orrcs	r2, r2, r3
    15f4:	e15000a1 	cmp	r0, r1, lsr #1
    15f8:	204000a1 	subcs	r0, r0, r1, lsr #1
    15fc:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1600:	e1500121 	cmp	r0, r1, lsr #2
    1604:	20400121 	subcs	r0, r0, r1, lsr #2
    1608:	21822123 	orrcs	r2, r2, r3, lsr #2
    160c:	e15001a1 	cmp	r0, r1, lsr #3
    1610:	204001a1 	subcs	r0, r0, r1, lsr #3
    1614:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1618:	e3500000 	cmp	r0, #0
    161c:	11b03223 	lsrsne	r3, r3, #4
    1620:	11a01221 	lsrne	r1, r1, #4
    1624:	1affffef 	bne	15e8 <__udivsi3+0x58>
    1628:	e1a00002 	mov	r0, r2
    162c:	e12fff1e 	bx	lr
    1630:	03a00001 	moveq	r0, #1
    1634:	13a00000 	movne	r0, #0
    1638:	e12fff1e 	bx	lr
    163c:	e3510801 	cmp	r1, #65536	@ 0x10000
    1640:	21a01821 	lsrcs	r1, r1, #16
    1644:	23a02010 	movcs	r2, #16
    1648:	33a02000 	movcc	r2, #0
    164c:	e3510c01 	cmp	r1, #256	@ 0x100
    1650:	21a01421 	lsrcs	r1, r1, #8
    1654:	22822008 	addcs	r2, r2, #8
    1658:	e3510010 	cmp	r1, #16
    165c:	21a01221 	lsrcs	r1, r1, #4
    1660:	22822004 	addcs	r2, r2, #4
    1664:	e3510004 	cmp	r1, #4
    1668:	82822003 	addhi	r2, r2, #3
    166c:	908220a1 	addls	r2, r2, r1, lsr #1
    1670:	e1a00230 	lsr	r0, r0, r2
    1674:	e12fff1e 	bx	lr
    1678:	e3500000 	cmp	r0, #0
    167c:	13e00000 	mvnne	r0, #0
    1680:	ea000007 	b	16a4 <__aeabi_idiv0>

00001684 <__aeabi_uidivmod>:
    1684:	e3510000 	cmp	r1, #0
    1688:	0afffffa 	beq	1678 <__udivsi3+0xe8>
    168c:	e92d4003 	push	{r0, r1, lr}
    1690:	ebffffbe 	bl	1590 <__udivsi3>
    1694:	e8bd4006 	pop	{r1, r2, lr}
    1698:	e0030092 	mul	r3, r2, r0
    169c:	e0411003 	sub	r1, r1, r3
    16a0:	e12fff1e 	bx	lr

000016a4 <__aeabi_idiv0>:
    16a4:	e12fff1e 	bx	lr
