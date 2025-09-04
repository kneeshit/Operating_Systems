
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
      1c:	eb00024c 	bl	954 <getpinfo>
      20:	e1a03000 	mov	r3, r0
      24:	e3530000 	cmp	r3, #0
      28:	aa000003 	bge	3c <main+0x3c>
      2c:	e59f10c8 	ldr	r1, [pc, #200]	@ fc <main+0xfc>
      30:	e3a00001 	mov	r0, #1
      34:	eb0002ab 	bl	ae8 <printf>
      38:	eb000176 	bl	618 <exit>
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
      dc:	eb000281 	bl	ae8 <printf>
      e0:	e51b3008 	ldr	r3, [fp, #-8]
      e4:	e2833001 	add	r3, r3, #1
      e8:	e50b3008 	str	r3, [fp, #-8]
      ec:	e51b3008 	ldr	r3, [fp, #-8]
      f0:	e353003f 	cmp	r3, #63	@ 0x3f
      f4:	daffffd3 	ble	48 <main+0x48>
      f8:	eb000146 	bl	618 <exit>
      fc:	000011a4 	.word	0x000011a4
     100:	000011b8 	.word	0x000011b8

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
     3f8:	eb0000a1 	bl	684 <read>
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
     4a0:	eb0000a4 	bl	738 <open>
     4a4:	e50b0008 	str	r0, [fp, #-8]
     4a8:	e51b3008 	ldr	r3, [fp, #-8]
     4ac:	e3530000 	cmp	r3, #0
     4b0:	aa000001 	bge	4bc <stat+0x38>
     4b4:	e3e03000 	mvn	r3, #0
     4b8:	ea000006 	b	4d8 <stat+0x54>
     4bc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     4c0:	e51b0008 	ldr	r0, [fp, #-8]
     4c4:	eb0000b6 	bl	7a4 <fstat>
     4c8:	e50b000c 	str	r0, [fp, #-12]
     4cc:	e51b0008 	ldr	r0, [fp, #-8]
     4d0:	eb00007d 	bl	6cc <close>
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

000005f4 <fork>:
     5f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5f8:	e1a04003 	mov	r4, r3
     5fc:	e1a03002 	mov	r3, r2
     600:	e1a02001 	mov	r2, r1
     604:	e1a01000 	mov	r1, r0
     608:	e3a00001 	mov	r0, #1
     60c:	ef000000 	svc	0x00000000
     610:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     614:	e12fff1e 	bx	lr

00000618 <exit>:
     618:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     61c:	e1a04003 	mov	r4, r3
     620:	e1a03002 	mov	r3, r2
     624:	e1a02001 	mov	r2, r1
     628:	e1a01000 	mov	r1, r0
     62c:	e3a00002 	mov	r0, #2
     630:	ef000000 	svc	0x00000000
     634:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     638:	e12fff1e 	bx	lr

0000063c <wait>:
     63c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     640:	e1a04003 	mov	r4, r3
     644:	e1a03002 	mov	r3, r2
     648:	e1a02001 	mov	r2, r1
     64c:	e1a01000 	mov	r1, r0
     650:	e3a00003 	mov	r0, #3
     654:	ef000000 	svc	0x00000000
     658:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     65c:	e12fff1e 	bx	lr

00000660 <pipe>:
     660:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     664:	e1a04003 	mov	r4, r3
     668:	e1a03002 	mov	r3, r2
     66c:	e1a02001 	mov	r2, r1
     670:	e1a01000 	mov	r1, r0
     674:	e3a00004 	mov	r0, #4
     678:	ef000000 	svc	0x00000000
     67c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     680:	e12fff1e 	bx	lr

00000684 <read>:
     684:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     688:	e1a04003 	mov	r4, r3
     68c:	e1a03002 	mov	r3, r2
     690:	e1a02001 	mov	r2, r1
     694:	e1a01000 	mov	r1, r0
     698:	e3a00005 	mov	r0, #5
     69c:	ef000000 	svc	0x00000000
     6a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6a4:	e12fff1e 	bx	lr

000006a8 <write>:
     6a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6ac:	e1a04003 	mov	r4, r3
     6b0:	e1a03002 	mov	r3, r2
     6b4:	e1a02001 	mov	r2, r1
     6b8:	e1a01000 	mov	r1, r0
     6bc:	e3a00010 	mov	r0, #16
     6c0:	ef000000 	svc	0x00000000
     6c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6c8:	e12fff1e 	bx	lr

000006cc <close>:
     6cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6d0:	e1a04003 	mov	r4, r3
     6d4:	e1a03002 	mov	r3, r2
     6d8:	e1a02001 	mov	r2, r1
     6dc:	e1a01000 	mov	r1, r0
     6e0:	e3a00015 	mov	r0, #21
     6e4:	ef000000 	svc	0x00000000
     6e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6ec:	e12fff1e 	bx	lr

000006f0 <kill>:
     6f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6f4:	e1a04003 	mov	r4, r3
     6f8:	e1a03002 	mov	r3, r2
     6fc:	e1a02001 	mov	r2, r1
     700:	e1a01000 	mov	r1, r0
     704:	e3a00006 	mov	r0, #6
     708:	ef000000 	svc	0x00000000
     70c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     710:	e12fff1e 	bx	lr

00000714 <exec>:
     714:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     718:	e1a04003 	mov	r4, r3
     71c:	e1a03002 	mov	r3, r2
     720:	e1a02001 	mov	r2, r1
     724:	e1a01000 	mov	r1, r0
     728:	e3a00007 	mov	r0, #7
     72c:	ef000000 	svc	0x00000000
     730:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     734:	e12fff1e 	bx	lr

00000738 <open>:
     738:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     73c:	e1a04003 	mov	r4, r3
     740:	e1a03002 	mov	r3, r2
     744:	e1a02001 	mov	r2, r1
     748:	e1a01000 	mov	r1, r0
     74c:	e3a0000f 	mov	r0, #15
     750:	ef000000 	svc	0x00000000
     754:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     758:	e12fff1e 	bx	lr

0000075c <mknod>:
     75c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     760:	e1a04003 	mov	r4, r3
     764:	e1a03002 	mov	r3, r2
     768:	e1a02001 	mov	r2, r1
     76c:	e1a01000 	mov	r1, r0
     770:	e3a00011 	mov	r0, #17
     774:	ef000000 	svc	0x00000000
     778:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     77c:	e12fff1e 	bx	lr

00000780 <unlink>:
     780:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     784:	e1a04003 	mov	r4, r3
     788:	e1a03002 	mov	r3, r2
     78c:	e1a02001 	mov	r2, r1
     790:	e1a01000 	mov	r1, r0
     794:	e3a00012 	mov	r0, #18
     798:	ef000000 	svc	0x00000000
     79c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7a0:	e12fff1e 	bx	lr

000007a4 <fstat>:
     7a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7a8:	e1a04003 	mov	r4, r3
     7ac:	e1a03002 	mov	r3, r2
     7b0:	e1a02001 	mov	r2, r1
     7b4:	e1a01000 	mov	r1, r0
     7b8:	e3a00008 	mov	r0, #8
     7bc:	ef000000 	svc	0x00000000
     7c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c4:	e12fff1e 	bx	lr

000007c8 <link>:
     7c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7cc:	e1a04003 	mov	r4, r3
     7d0:	e1a03002 	mov	r3, r2
     7d4:	e1a02001 	mov	r2, r1
     7d8:	e1a01000 	mov	r1, r0
     7dc:	e3a00013 	mov	r0, #19
     7e0:	ef000000 	svc	0x00000000
     7e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7e8:	e12fff1e 	bx	lr

000007ec <mkdir>:
     7ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f0:	e1a04003 	mov	r4, r3
     7f4:	e1a03002 	mov	r3, r2
     7f8:	e1a02001 	mov	r2, r1
     7fc:	e1a01000 	mov	r1, r0
     800:	e3a00014 	mov	r0, #20
     804:	ef000000 	svc	0x00000000
     808:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     80c:	e12fff1e 	bx	lr

00000810 <chdir>:
     810:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     814:	e1a04003 	mov	r4, r3
     818:	e1a03002 	mov	r3, r2
     81c:	e1a02001 	mov	r2, r1
     820:	e1a01000 	mov	r1, r0
     824:	e3a00009 	mov	r0, #9
     828:	ef000000 	svc	0x00000000
     82c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     830:	e12fff1e 	bx	lr

00000834 <dup>:
     834:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     838:	e1a04003 	mov	r4, r3
     83c:	e1a03002 	mov	r3, r2
     840:	e1a02001 	mov	r2, r1
     844:	e1a01000 	mov	r1, r0
     848:	e3a0000a 	mov	r0, #10
     84c:	ef000000 	svc	0x00000000
     850:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     854:	e12fff1e 	bx	lr

00000858 <getpid>:
     858:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     85c:	e1a04003 	mov	r4, r3
     860:	e1a03002 	mov	r3, r2
     864:	e1a02001 	mov	r2, r1
     868:	e1a01000 	mov	r1, r0
     86c:	e3a0000b 	mov	r0, #11
     870:	ef000000 	svc	0x00000000
     874:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     878:	e12fff1e 	bx	lr

0000087c <sbrk>:
     87c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     880:	e1a04003 	mov	r4, r3
     884:	e1a03002 	mov	r3, r2
     888:	e1a02001 	mov	r2, r1
     88c:	e1a01000 	mov	r1, r0
     890:	e3a0000c 	mov	r0, #12
     894:	ef000000 	svc	0x00000000
     898:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     89c:	e12fff1e 	bx	lr

000008a0 <sleep>:
     8a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a4:	e1a04003 	mov	r4, r3
     8a8:	e1a03002 	mov	r3, r2
     8ac:	e1a02001 	mov	r2, r1
     8b0:	e1a01000 	mov	r1, r0
     8b4:	e3a0000d 	mov	r0, #13
     8b8:	ef000000 	svc	0x00000000
     8bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c0:	e12fff1e 	bx	lr

000008c4 <uptime>:
     8c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8c8:	e1a04003 	mov	r4, r3
     8cc:	e1a03002 	mov	r3, r2
     8d0:	e1a02001 	mov	r2, r1
     8d4:	e1a01000 	mov	r1, r0
     8d8:	e3a0000e 	mov	r0, #14
     8dc:	ef000000 	svc	0x00000000
     8e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e4:	e12fff1e 	bx	lr

000008e8 <getprocs>:
     8e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8ec:	e1a04003 	mov	r4, r3
     8f0:	e1a03002 	mov	r3, r2
     8f4:	e1a02001 	mov	r2, r1
     8f8:	e1a01000 	mov	r1, r0
     8fc:	e3a00016 	mov	r0, #22
     900:	ef000000 	svc	0x00000000
     904:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     908:	e12fff1e 	bx	lr

0000090c <settickets>:
     90c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     910:	e1a04003 	mov	r4, r3
     914:	e1a03002 	mov	r3, r2
     918:	e1a02001 	mov	r2, r1
     91c:	e1a01000 	mov	r1, r0
     920:	e3a00017 	mov	r0, #23
     924:	ef000000 	svc	0x00000000
     928:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     92c:	e12fff1e 	bx	lr

00000930 <srand>:
     930:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     934:	e1a04003 	mov	r4, r3
     938:	e1a03002 	mov	r3, r2
     93c:	e1a02001 	mov	r2, r1
     940:	e1a01000 	mov	r1, r0
     944:	e3a00018 	mov	r0, #24
     948:	ef000000 	svc	0x00000000
     94c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     950:	e12fff1e 	bx	lr

00000954 <getpinfo>:
     954:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     958:	e1a04003 	mov	r4, r3
     95c:	e1a03002 	mov	r3, r2
     960:	e1a02001 	mov	r2, r1
     964:	e1a01000 	mov	r1, r0
     968:	e3a00019 	mov	r0, #25
     96c:	ef000000 	svc	0x00000000
     970:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     974:	e12fff1e 	bx	lr

00000978 <putc>:
     978:	e92d4800 	push	{fp, lr}
     97c:	e28db004 	add	fp, sp, #4
     980:	e24dd008 	sub	sp, sp, #8
     984:	e50b0008 	str	r0, [fp, #-8]
     988:	e1a03001 	mov	r3, r1
     98c:	e54b3009 	strb	r3, [fp, #-9]
     990:	e24b3009 	sub	r3, fp, #9
     994:	e3a02001 	mov	r2, #1
     998:	e1a01003 	mov	r1, r3
     99c:	e51b0008 	ldr	r0, [fp, #-8]
     9a0:	ebffff40 	bl	6a8 <write>
     9a4:	e1a00000 	nop			@ (mov r0, r0)
     9a8:	e24bd004 	sub	sp, fp, #4
     9ac:	e8bd8800 	pop	{fp, pc}

000009b0 <printint>:
     9b0:	e92d4800 	push	{fp, lr}
     9b4:	e28db004 	add	fp, sp, #4
     9b8:	e24dd030 	sub	sp, sp, #48	@ 0x30
     9bc:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     9c0:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     9c4:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     9c8:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     9cc:	e3a03000 	mov	r3, #0
     9d0:	e50b300c 	str	r3, [fp, #-12]
     9d4:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     9d8:	e3530000 	cmp	r3, #0
     9dc:	0a000008 	beq	a04 <printint+0x54>
     9e0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9e4:	e3530000 	cmp	r3, #0
     9e8:	aa000005 	bge	a04 <printint+0x54>
     9ec:	e3a03001 	mov	r3, #1
     9f0:	e50b300c 	str	r3, [fp, #-12]
     9f4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9f8:	e2633000 	rsb	r3, r3, #0
     9fc:	e50b3010 	str	r3, [fp, #-16]
     a00:	ea000001 	b	a0c <printint+0x5c>
     a04:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a08:	e50b3010 	str	r3, [fp, #-16]
     a0c:	e3a03000 	mov	r3, #0
     a10:	e50b3008 	str	r3, [fp, #-8]
     a14:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     a18:	e51b3010 	ldr	r3, [fp, #-16]
     a1c:	e1a01002 	mov	r1, r2
     a20:	e1a00003 	mov	r0, r3
     a24:	eb0001d5 	bl	1180 <__aeabi_uidivmod>
     a28:	e1a03001 	mov	r3, r1
     a2c:	e1a01003 	mov	r1, r3
     a30:	e51b3008 	ldr	r3, [fp, #-8]
     a34:	e2832001 	add	r2, r3, #1
     a38:	e50b2008 	str	r2, [fp, #-8]
     a3c:	e59f20a0 	ldr	r2, [pc, #160]	@ ae4 <printint+0x134>
     a40:	e7d22001 	ldrb	r2, [r2, r1]
     a44:	e2433004 	sub	r3, r3, #4
     a48:	e083300b 	add	r3, r3, fp
     a4c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a50:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     a54:	e1a01003 	mov	r1, r3
     a58:	e51b0010 	ldr	r0, [fp, #-16]
     a5c:	eb00018a 	bl	108c <__udivsi3>
     a60:	e1a03000 	mov	r3, r0
     a64:	e50b3010 	str	r3, [fp, #-16]
     a68:	e51b3010 	ldr	r3, [fp, #-16]
     a6c:	e3530000 	cmp	r3, #0
     a70:	1affffe7 	bne	a14 <printint+0x64>
     a74:	e51b300c 	ldr	r3, [fp, #-12]
     a78:	e3530000 	cmp	r3, #0
     a7c:	0a00000e 	beq	abc <printint+0x10c>
     a80:	e51b3008 	ldr	r3, [fp, #-8]
     a84:	e2832001 	add	r2, r3, #1
     a88:	e50b2008 	str	r2, [fp, #-8]
     a8c:	e2433004 	sub	r3, r3, #4
     a90:	e083300b 	add	r3, r3, fp
     a94:	e3a0202d 	mov	r2, #45	@ 0x2d
     a98:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a9c:	ea000006 	b	abc <printint+0x10c>
     aa0:	e24b2020 	sub	r2, fp, #32
     aa4:	e51b3008 	ldr	r3, [fp, #-8]
     aa8:	e0823003 	add	r3, r2, r3
     aac:	e5d33000 	ldrb	r3, [r3]
     ab0:	e1a01003 	mov	r1, r3
     ab4:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     ab8:	ebffffae 	bl	978 <putc>
     abc:	e51b3008 	ldr	r3, [fp, #-8]
     ac0:	e2433001 	sub	r3, r3, #1
     ac4:	e50b3008 	str	r3, [fp, #-8]
     ac8:	e51b3008 	ldr	r3, [fp, #-8]
     acc:	e3530000 	cmp	r3, #0
     ad0:	aafffff2 	bge	aa0 <printint+0xf0>
     ad4:	e1a00000 	nop			@ (mov r0, r0)
     ad8:	e1a00000 	nop			@ (mov r0, r0)
     adc:	e24bd004 	sub	sp, fp, #4
     ae0:	e8bd8800 	pop	{fp, pc}
     ae4:	000011f0 	.word	0x000011f0

00000ae8 <printf>:
     ae8:	e92d000e 	push	{r1, r2, r3}
     aec:	e92d4800 	push	{fp, lr}
     af0:	e28db004 	add	fp, sp, #4
     af4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     af8:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     afc:	e3a03000 	mov	r3, #0
     b00:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b04:	e28b3008 	add	r3, fp, #8
     b08:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b0c:	e3a03000 	mov	r3, #0
     b10:	e50b3010 	str	r3, [fp, #-16]
     b14:	ea000074 	b	cec <printf+0x204>
     b18:	e59b2004 	ldr	r2, [fp, #4]
     b1c:	e51b3010 	ldr	r3, [fp, #-16]
     b20:	e0823003 	add	r3, r2, r3
     b24:	e5d33000 	ldrb	r3, [r3]
     b28:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     b2c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b30:	e3530000 	cmp	r3, #0
     b34:	1a00000b 	bne	b68 <printf+0x80>
     b38:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b3c:	e3530025 	cmp	r3, #37	@ 0x25
     b40:	1a000002 	bne	b50 <printf+0x68>
     b44:	e3a03025 	mov	r3, #37	@ 0x25
     b48:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b4c:	ea000063 	b	ce0 <printf+0x1f8>
     b50:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b54:	e6ef3073 	uxtb	r3, r3
     b58:	e1a01003 	mov	r1, r3
     b5c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b60:	ebffff84 	bl	978 <putc>
     b64:	ea00005d 	b	ce0 <printf+0x1f8>
     b68:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b6c:	e3530025 	cmp	r3, #37	@ 0x25
     b70:	1a00005a 	bne	ce0 <printf+0x1f8>
     b74:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b78:	e3530064 	cmp	r3, #100	@ 0x64
     b7c:	1a00000a 	bne	bac <printf+0xc4>
     b80:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b84:	e5933000 	ldr	r3, [r3]
     b88:	e1a01003 	mov	r1, r3
     b8c:	e3a03001 	mov	r3, #1
     b90:	e3a0200a 	mov	r2, #10
     b94:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b98:	ebffff84 	bl	9b0 <printint>
     b9c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ba0:	e2833004 	add	r3, r3, #4
     ba4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ba8:	ea00004a 	b	cd8 <printf+0x1f0>
     bac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bb0:	e3530078 	cmp	r3, #120	@ 0x78
     bb4:	0a000002 	beq	bc4 <printf+0xdc>
     bb8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bbc:	e3530070 	cmp	r3, #112	@ 0x70
     bc0:	1a00000a 	bne	bf0 <printf+0x108>
     bc4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bc8:	e5933000 	ldr	r3, [r3]
     bcc:	e1a01003 	mov	r1, r3
     bd0:	e3a03000 	mov	r3, #0
     bd4:	e3a02010 	mov	r2, #16
     bd8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bdc:	ebffff73 	bl	9b0 <printint>
     be0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     be4:	e2833004 	add	r3, r3, #4
     be8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bec:	ea000039 	b	cd8 <printf+0x1f0>
     bf0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bf4:	e3530073 	cmp	r3, #115	@ 0x73
     bf8:	1a000018 	bne	c60 <printf+0x178>
     bfc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c00:	e5933000 	ldr	r3, [r3]
     c04:	e50b300c 	str	r3, [fp, #-12]
     c08:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c0c:	e2833004 	add	r3, r3, #4
     c10:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c14:	e51b300c 	ldr	r3, [fp, #-12]
     c18:	e3530000 	cmp	r3, #0
     c1c:	1a00000a 	bne	c4c <printf+0x164>
     c20:	e59f30f4 	ldr	r3, [pc, #244]	@ d1c <printf+0x234>
     c24:	e50b300c 	str	r3, [fp, #-12]
     c28:	ea000007 	b	c4c <printf+0x164>
     c2c:	e51b300c 	ldr	r3, [fp, #-12]
     c30:	e5d33000 	ldrb	r3, [r3]
     c34:	e1a01003 	mov	r1, r3
     c38:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c3c:	ebffff4d 	bl	978 <putc>
     c40:	e51b300c 	ldr	r3, [fp, #-12]
     c44:	e2833001 	add	r3, r3, #1
     c48:	e50b300c 	str	r3, [fp, #-12]
     c4c:	e51b300c 	ldr	r3, [fp, #-12]
     c50:	e5d33000 	ldrb	r3, [r3]
     c54:	e3530000 	cmp	r3, #0
     c58:	1afffff3 	bne	c2c <printf+0x144>
     c5c:	ea00001d 	b	cd8 <printf+0x1f0>
     c60:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c64:	e3530063 	cmp	r3, #99	@ 0x63
     c68:	1a000009 	bne	c94 <printf+0x1ac>
     c6c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c70:	e5933000 	ldr	r3, [r3]
     c74:	e6ef3073 	uxtb	r3, r3
     c78:	e1a01003 	mov	r1, r3
     c7c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c80:	ebffff3c 	bl	978 <putc>
     c84:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c88:	e2833004 	add	r3, r3, #4
     c8c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c90:	ea000010 	b	cd8 <printf+0x1f0>
     c94:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c98:	e3530025 	cmp	r3, #37	@ 0x25
     c9c:	1a000005 	bne	cb8 <printf+0x1d0>
     ca0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ca4:	e6ef3073 	uxtb	r3, r3
     ca8:	e1a01003 	mov	r1, r3
     cac:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cb0:	ebffff30 	bl	978 <putc>
     cb4:	ea000007 	b	cd8 <printf+0x1f0>
     cb8:	e3a01025 	mov	r1, #37	@ 0x25
     cbc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cc0:	ebffff2c 	bl	978 <putc>
     cc4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cc8:	e6ef3073 	uxtb	r3, r3
     ccc:	e1a01003 	mov	r1, r3
     cd0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cd4:	ebffff27 	bl	978 <putc>
     cd8:	e3a03000 	mov	r3, #0
     cdc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ce0:	e51b3010 	ldr	r3, [fp, #-16]
     ce4:	e2833001 	add	r3, r3, #1
     ce8:	e50b3010 	str	r3, [fp, #-16]
     cec:	e59b2004 	ldr	r2, [fp, #4]
     cf0:	e51b3010 	ldr	r3, [fp, #-16]
     cf4:	e0823003 	add	r3, r2, r3
     cf8:	e5d33000 	ldrb	r3, [r3]
     cfc:	e3530000 	cmp	r3, #0
     d00:	1affff84 	bne	b18 <printf+0x30>
     d04:	e1a00000 	nop			@ (mov r0, r0)
     d08:	e1a00000 	nop			@ (mov r0, r0)
     d0c:	e24bd004 	sub	sp, fp, #4
     d10:	e8bd4800 	pop	{fp, lr}
     d14:	e28dd00c 	add	sp, sp, #12
     d18:	e12fff1e 	bx	lr
     d1c:	000011e8 	.word	0x000011e8

00000d20 <free>:
     d20:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     d24:	e28db000 	add	fp, sp, #0
     d28:	e24dd014 	sub	sp, sp, #20
     d2c:	e50b0010 	str	r0, [fp, #-16]
     d30:	e51b3010 	ldr	r3, [fp, #-16]
     d34:	e2433008 	sub	r3, r3, #8
     d38:	e50b300c 	str	r3, [fp, #-12]
     d3c:	e59f3154 	ldr	r3, [pc, #340]	@ e98 <free+0x178>
     d40:	e5933000 	ldr	r3, [r3]
     d44:	e50b3008 	str	r3, [fp, #-8]
     d48:	ea000010 	b	d90 <free+0x70>
     d4c:	e51b3008 	ldr	r3, [fp, #-8]
     d50:	e5933000 	ldr	r3, [r3]
     d54:	e51b2008 	ldr	r2, [fp, #-8]
     d58:	e1520003 	cmp	r2, r3
     d5c:	3a000008 	bcc	d84 <free+0x64>
     d60:	e51b200c 	ldr	r2, [fp, #-12]
     d64:	e51b3008 	ldr	r3, [fp, #-8]
     d68:	e1520003 	cmp	r2, r3
     d6c:	8a000010 	bhi	db4 <free+0x94>
     d70:	e51b3008 	ldr	r3, [fp, #-8]
     d74:	e5933000 	ldr	r3, [r3]
     d78:	e51b200c 	ldr	r2, [fp, #-12]
     d7c:	e1520003 	cmp	r2, r3
     d80:	3a00000b 	bcc	db4 <free+0x94>
     d84:	e51b3008 	ldr	r3, [fp, #-8]
     d88:	e5933000 	ldr	r3, [r3]
     d8c:	e50b3008 	str	r3, [fp, #-8]
     d90:	e51b200c 	ldr	r2, [fp, #-12]
     d94:	e51b3008 	ldr	r3, [fp, #-8]
     d98:	e1520003 	cmp	r2, r3
     d9c:	9affffea 	bls	d4c <free+0x2c>
     da0:	e51b3008 	ldr	r3, [fp, #-8]
     da4:	e5933000 	ldr	r3, [r3]
     da8:	e51b200c 	ldr	r2, [fp, #-12]
     dac:	e1520003 	cmp	r2, r3
     db0:	2affffe5 	bcs	d4c <free+0x2c>
     db4:	e51b300c 	ldr	r3, [fp, #-12]
     db8:	e5933004 	ldr	r3, [r3, #4]
     dbc:	e1a03183 	lsl	r3, r3, #3
     dc0:	e51b200c 	ldr	r2, [fp, #-12]
     dc4:	e0822003 	add	r2, r2, r3
     dc8:	e51b3008 	ldr	r3, [fp, #-8]
     dcc:	e5933000 	ldr	r3, [r3]
     dd0:	e1520003 	cmp	r2, r3
     dd4:	1a00000d 	bne	e10 <free+0xf0>
     dd8:	e51b300c 	ldr	r3, [fp, #-12]
     ddc:	e5932004 	ldr	r2, [r3, #4]
     de0:	e51b3008 	ldr	r3, [fp, #-8]
     de4:	e5933000 	ldr	r3, [r3]
     de8:	e5933004 	ldr	r3, [r3, #4]
     dec:	e0822003 	add	r2, r2, r3
     df0:	e51b300c 	ldr	r3, [fp, #-12]
     df4:	e5832004 	str	r2, [r3, #4]
     df8:	e51b3008 	ldr	r3, [fp, #-8]
     dfc:	e5933000 	ldr	r3, [r3]
     e00:	e5932000 	ldr	r2, [r3]
     e04:	e51b300c 	ldr	r3, [fp, #-12]
     e08:	e5832000 	str	r2, [r3]
     e0c:	ea000003 	b	e20 <free+0x100>
     e10:	e51b3008 	ldr	r3, [fp, #-8]
     e14:	e5932000 	ldr	r2, [r3]
     e18:	e51b300c 	ldr	r3, [fp, #-12]
     e1c:	e5832000 	str	r2, [r3]
     e20:	e51b3008 	ldr	r3, [fp, #-8]
     e24:	e5933004 	ldr	r3, [r3, #4]
     e28:	e1a03183 	lsl	r3, r3, #3
     e2c:	e51b2008 	ldr	r2, [fp, #-8]
     e30:	e0823003 	add	r3, r2, r3
     e34:	e51b200c 	ldr	r2, [fp, #-12]
     e38:	e1520003 	cmp	r2, r3
     e3c:	1a00000b 	bne	e70 <free+0x150>
     e40:	e51b3008 	ldr	r3, [fp, #-8]
     e44:	e5932004 	ldr	r2, [r3, #4]
     e48:	e51b300c 	ldr	r3, [fp, #-12]
     e4c:	e5933004 	ldr	r3, [r3, #4]
     e50:	e0822003 	add	r2, r2, r3
     e54:	e51b3008 	ldr	r3, [fp, #-8]
     e58:	e5832004 	str	r2, [r3, #4]
     e5c:	e51b300c 	ldr	r3, [fp, #-12]
     e60:	e5932000 	ldr	r2, [r3]
     e64:	e51b3008 	ldr	r3, [fp, #-8]
     e68:	e5832000 	str	r2, [r3]
     e6c:	ea000002 	b	e7c <free+0x15c>
     e70:	e51b3008 	ldr	r3, [fp, #-8]
     e74:	e51b200c 	ldr	r2, [fp, #-12]
     e78:	e5832000 	str	r2, [r3]
     e7c:	e59f2014 	ldr	r2, [pc, #20]	@ e98 <free+0x178>
     e80:	e51b3008 	ldr	r3, [fp, #-8]
     e84:	e5823000 	str	r3, [r2]
     e88:	e1a00000 	nop			@ (mov r0, r0)
     e8c:	e28bd000 	add	sp, fp, #0
     e90:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     e94:	e12fff1e 	bx	lr
     e98:	0000120c 	.word	0x0000120c

00000e9c <morecore>:
     e9c:	e92d4800 	push	{fp, lr}
     ea0:	e28db004 	add	fp, sp, #4
     ea4:	e24dd010 	sub	sp, sp, #16
     ea8:	e50b0010 	str	r0, [fp, #-16]
     eac:	e51b3010 	ldr	r3, [fp, #-16]
     eb0:	e3530a01 	cmp	r3, #4096	@ 0x1000
     eb4:	2a000001 	bcs	ec0 <morecore+0x24>
     eb8:	e3a03a01 	mov	r3, #4096	@ 0x1000
     ebc:	e50b3010 	str	r3, [fp, #-16]
     ec0:	e51b3010 	ldr	r3, [fp, #-16]
     ec4:	e1a03183 	lsl	r3, r3, #3
     ec8:	e1a00003 	mov	r0, r3
     ecc:	ebfffe6a 	bl	87c <sbrk>
     ed0:	e50b0008 	str	r0, [fp, #-8]
     ed4:	e51b3008 	ldr	r3, [fp, #-8]
     ed8:	e3730001 	cmn	r3, #1
     edc:	1a000001 	bne	ee8 <morecore+0x4c>
     ee0:	e3a03000 	mov	r3, #0
     ee4:	ea00000a 	b	f14 <morecore+0x78>
     ee8:	e51b3008 	ldr	r3, [fp, #-8]
     eec:	e50b300c 	str	r3, [fp, #-12]
     ef0:	e51b300c 	ldr	r3, [fp, #-12]
     ef4:	e51b2010 	ldr	r2, [fp, #-16]
     ef8:	e5832004 	str	r2, [r3, #4]
     efc:	e51b300c 	ldr	r3, [fp, #-12]
     f00:	e2833008 	add	r3, r3, #8
     f04:	e1a00003 	mov	r0, r3
     f08:	ebffff84 	bl	d20 <free>
     f0c:	e59f300c 	ldr	r3, [pc, #12]	@ f20 <morecore+0x84>
     f10:	e5933000 	ldr	r3, [r3]
     f14:	e1a00003 	mov	r0, r3
     f18:	e24bd004 	sub	sp, fp, #4
     f1c:	e8bd8800 	pop	{fp, pc}
     f20:	0000120c 	.word	0x0000120c

00000f24 <malloc>:
     f24:	e92d4800 	push	{fp, lr}
     f28:	e28db004 	add	fp, sp, #4
     f2c:	e24dd018 	sub	sp, sp, #24
     f30:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     f34:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f38:	e2833007 	add	r3, r3, #7
     f3c:	e1a031a3 	lsr	r3, r3, #3
     f40:	e2833001 	add	r3, r3, #1
     f44:	e50b3010 	str	r3, [fp, #-16]
     f48:	e59f3134 	ldr	r3, [pc, #308]	@ 1084 <malloc+0x160>
     f4c:	e5933000 	ldr	r3, [r3]
     f50:	e50b300c 	str	r3, [fp, #-12]
     f54:	e51b300c 	ldr	r3, [fp, #-12]
     f58:	e3530000 	cmp	r3, #0
     f5c:	1a00000b 	bne	f90 <malloc+0x6c>
     f60:	e59f3120 	ldr	r3, [pc, #288]	@ 1088 <malloc+0x164>
     f64:	e50b300c 	str	r3, [fp, #-12]
     f68:	e59f2114 	ldr	r2, [pc, #276]	@ 1084 <malloc+0x160>
     f6c:	e51b300c 	ldr	r3, [fp, #-12]
     f70:	e5823000 	str	r3, [r2]
     f74:	e59f3108 	ldr	r3, [pc, #264]	@ 1084 <malloc+0x160>
     f78:	e5933000 	ldr	r3, [r3]
     f7c:	e59f2104 	ldr	r2, [pc, #260]	@ 1088 <malloc+0x164>
     f80:	e5823000 	str	r3, [r2]
     f84:	e59f30fc 	ldr	r3, [pc, #252]	@ 1088 <malloc+0x164>
     f88:	e3a02000 	mov	r2, #0
     f8c:	e5832004 	str	r2, [r3, #4]
     f90:	e51b300c 	ldr	r3, [fp, #-12]
     f94:	e5933000 	ldr	r3, [r3]
     f98:	e50b3008 	str	r3, [fp, #-8]
     f9c:	e51b3008 	ldr	r3, [fp, #-8]
     fa0:	e5933004 	ldr	r3, [r3, #4]
     fa4:	e51b2010 	ldr	r2, [fp, #-16]
     fa8:	e1520003 	cmp	r2, r3
     fac:	8a00001e 	bhi	102c <malloc+0x108>
     fb0:	e51b3008 	ldr	r3, [fp, #-8]
     fb4:	e5933004 	ldr	r3, [r3, #4]
     fb8:	e51b2010 	ldr	r2, [fp, #-16]
     fbc:	e1520003 	cmp	r2, r3
     fc0:	1a000004 	bne	fd8 <malloc+0xb4>
     fc4:	e51b3008 	ldr	r3, [fp, #-8]
     fc8:	e5932000 	ldr	r2, [r3]
     fcc:	e51b300c 	ldr	r3, [fp, #-12]
     fd0:	e5832000 	str	r2, [r3]
     fd4:	ea00000e 	b	1014 <malloc+0xf0>
     fd8:	e51b3008 	ldr	r3, [fp, #-8]
     fdc:	e5932004 	ldr	r2, [r3, #4]
     fe0:	e51b3010 	ldr	r3, [fp, #-16]
     fe4:	e0422003 	sub	r2, r2, r3
     fe8:	e51b3008 	ldr	r3, [fp, #-8]
     fec:	e5832004 	str	r2, [r3, #4]
     ff0:	e51b3008 	ldr	r3, [fp, #-8]
     ff4:	e5933004 	ldr	r3, [r3, #4]
     ff8:	e1a03183 	lsl	r3, r3, #3
     ffc:	e51b2008 	ldr	r2, [fp, #-8]
    1000:	e0823003 	add	r3, r2, r3
    1004:	e50b3008 	str	r3, [fp, #-8]
    1008:	e51b3008 	ldr	r3, [fp, #-8]
    100c:	e51b2010 	ldr	r2, [fp, #-16]
    1010:	e5832004 	str	r2, [r3, #4]
    1014:	e59f2068 	ldr	r2, [pc, #104]	@ 1084 <malloc+0x160>
    1018:	e51b300c 	ldr	r3, [fp, #-12]
    101c:	e5823000 	str	r3, [r2]
    1020:	e51b3008 	ldr	r3, [fp, #-8]
    1024:	e2833008 	add	r3, r3, #8
    1028:	ea000012 	b	1078 <malloc+0x154>
    102c:	e59f3050 	ldr	r3, [pc, #80]	@ 1084 <malloc+0x160>
    1030:	e5933000 	ldr	r3, [r3]
    1034:	e51b2008 	ldr	r2, [fp, #-8]
    1038:	e1520003 	cmp	r2, r3
    103c:	1a000007 	bne	1060 <malloc+0x13c>
    1040:	e51b0010 	ldr	r0, [fp, #-16]
    1044:	ebffff94 	bl	e9c <morecore>
    1048:	e50b0008 	str	r0, [fp, #-8]
    104c:	e51b3008 	ldr	r3, [fp, #-8]
    1050:	e3530000 	cmp	r3, #0
    1054:	1a000001 	bne	1060 <malloc+0x13c>
    1058:	e3a03000 	mov	r3, #0
    105c:	ea000005 	b	1078 <malloc+0x154>
    1060:	e51b3008 	ldr	r3, [fp, #-8]
    1064:	e50b300c 	str	r3, [fp, #-12]
    1068:	e51b3008 	ldr	r3, [fp, #-8]
    106c:	e5933000 	ldr	r3, [r3]
    1070:	e50b3008 	str	r3, [fp, #-8]
    1074:	eaffffc8 	b	f9c <malloc+0x78>
    1078:	e1a00003 	mov	r0, r3
    107c:	e24bd004 	sub	sp, fp, #4
    1080:	e8bd8800 	pop	{fp, pc}
    1084:	0000120c 	.word	0x0000120c
    1088:	00001204 	.word	0x00001204

0000108c <__udivsi3>:
    108c:	e2512001 	subs	r2, r1, #1
    1090:	012fff1e 	bxeq	lr
    1094:	3a000036 	bcc	1174 <__udivsi3+0xe8>
    1098:	e1500001 	cmp	r0, r1
    109c:	9a000022 	bls	112c <__udivsi3+0xa0>
    10a0:	e1110002 	tst	r1, r2
    10a4:	0a000023 	beq	1138 <__udivsi3+0xac>
    10a8:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    10ac:	01a01181 	lsleq	r1, r1, #3
    10b0:	03a03008 	moveq	r3, #8
    10b4:	13a03001 	movne	r3, #1
    10b8:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    10bc:	31510000 	cmpcc	r1, r0
    10c0:	31a01201 	lslcc	r1, r1, #4
    10c4:	31a03203 	lslcc	r3, r3, #4
    10c8:	3afffffa 	bcc	10b8 <__udivsi3+0x2c>
    10cc:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    10d0:	31510000 	cmpcc	r1, r0
    10d4:	31a01081 	lslcc	r1, r1, #1
    10d8:	31a03083 	lslcc	r3, r3, #1
    10dc:	3afffffa 	bcc	10cc <__udivsi3+0x40>
    10e0:	e3a02000 	mov	r2, #0
    10e4:	e1500001 	cmp	r0, r1
    10e8:	20400001 	subcs	r0, r0, r1
    10ec:	21822003 	orrcs	r2, r2, r3
    10f0:	e15000a1 	cmp	r0, r1, lsr #1
    10f4:	204000a1 	subcs	r0, r0, r1, lsr #1
    10f8:	218220a3 	orrcs	r2, r2, r3, lsr #1
    10fc:	e1500121 	cmp	r0, r1, lsr #2
    1100:	20400121 	subcs	r0, r0, r1, lsr #2
    1104:	21822123 	orrcs	r2, r2, r3, lsr #2
    1108:	e15001a1 	cmp	r0, r1, lsr #3
    110c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1110:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1114:	e3500000 	cmp	r0, #0
    1118:	11b03223 	lsrsne	r3, r3, #4
    111c:	11a01221 	lsrne	r1, r1, #4
    1120:	1affffef 	bne	10e4 <__udivsi3+0x58>
    1124:	e1a00002 	mov	r0, r2
    1128:	e12fff1e 	bx	lr
    112c:	03a00001 	moveq	r0, #1
    1130:	13a00000 	movne	r0, #0
    1134:	e12fff1e 	bx	lr
    1138:	e3510801 	cmp	r1, #65536	@ 0x10000
    113c:	21a01821 	lsrcs	r1, r1, #16
    1140:	23a02010 	movcs	r2, #16
    1144:	33a02000 	movcc	r2, #0
    1148:	e3510c01 	cmp	r1, #256	@ 0x100
    114c:	21a01421 	lsrcs	r1, r1, #8
    1150:	22822008 	addcs	r2, r2, #8
    1154:	e3510010 	cmp	r1, #16
    1158:	21a01221 	lsrcs	r1, r1, #4
    115c:	22822004 	addcs	r2, r2, #4
    1160:	e3510004 	cmp	r1, #4
    1164:	82822003 	addhi	r2, r2, #3
    1168:	908220a1 	addls	r2, r2, r1, lsr #1
    116c:	e1a00230 	lsr	r0, r0, r2
    1170:	e12fff1e 	bx	lr
    1174:	e3500000 	cmp	r0, #0
    1178:	13e00000 	mvnne	r0, #0
    117c:	ea000007 	b	11a0 <__aeabi_idiv0>

00001180 <__aeabi_uidivmod>:
    1180:	e3510000 	cmp	r1, #0
    1184:	0afffffa 	beq	1174 <__udivsi3+0xe8>
    1188:	e92d4003 	push	{r0, r1, lr}
    118c:	ebffffbe 	bl	108c <__udivsi3>
    1190:	e8bd4006 	pop	{r1, r2, lr}
    1194:	e0030092 	mul	r3, r2, r0
    1198:	e0411003 	sub	r1, r1, r3
    119c:	e12fff1e 	bx	lr

000011a0 <__aeabi_idiv0>:
    11a0:	e12fff1e 	bx	lr
