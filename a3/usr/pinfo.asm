
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
      34:	eb0002b4 	bl	b0c <printf>
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
      dc:	eb00028a 	bl	b0c <printf>
      e0:	e51b3008 	ldr	r3, [fp, #-8]
      e4:	e2833001 	add	r3, r3, #1
      e8:	e50b3008 	str	r3, [fp, #-8]
      ec:	e51b3008 	ldr	r3, [fp, #-8]
      f0:	e353003f 	cmp	r3, #63	@ 0x3f
      f4:	daffffd3 	ble	48 <main+0x48>
      f8:	eb000146 	bl	618 <exit>
      fc:	000011c8 	.word	0x000011c8
     100:	000011dc 	.word	0x000011dc

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

00000978 <dumppagetable>:
     978:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     97c:	e1a04003 	mov	r4, r3
     980:	e1a03002 	mov	r3, r2
     984:	e1a02001 	mov	r2, r1
     988:	e1a01000 	mov	r1, r0
     98c:	e3a0001a 	mov	r0, #26
     990:	ef000000 	svc	0x00000000
     994:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     998:	e12fff1e 	bx	lr

0000099c <putc>:
     99c:	e92d4800 	push	{fp, lr}
     9a0:	e28db004 	add	fp, sp, #4
     9a4:	e24dd008 	sub	sp, sp, #8
     9a8:	e50b0008 	str	r0, [fp, #-8]
     9ac:	e1a03001 	mov	r3, r1
     9b0:	e54b3009 	strb	r3, [fp, #-9]
     9b4:	e24b3009 	sub	r3, fp, #9
     9b8:	e3a02001 	mov	r2, #1
     9bc:	e1a01003 	mov	r1, r3
     9c0:	e51b0008 	ldr	r0, [fp, #-8]
     9c4:	ebffff37 	bl	6a8 <write>
     9c8:	e1a00000 	nop			@ (mov r0, r0)
     9cc:	e24bd004 	sub	sp, fp, #4
     9d0:	e8bd8800 	pop	{fp, pc}

000009d4 <printint>:
     9d4:	e92d4800 	push	{fp, lr}
     9d8:	e28db004 	add	fp, sp, #4
     9dc:	e24dd030 	sub	sp, sp, #48	@ 0x30
     9e0:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     9e4:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     9e8:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     9ec:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     9f0:	e3a03000 	mov	r3, #0
     9f4:	e50b300c 	str	r3, [fp, #-12]
     9f8:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     9fc:	e3530000 	cmp	r3, #0
     a00:	0a000008 	beq	a28 <printint+0x54>
     a04:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a08:	e3530000 	cmp	r3, #0
     a0c:	aa000005 	bge	a28 <printint+0x54>
     a10:	e3a03001 	mov	r3, #1
     a14:	e50b300c 	str	r3, [fp, #-12]
     a18:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a1c:	e2633000 	rsb	r3, r3, #0
     a20:	e50b3010 	str	r3, [fp, #-16]
     a24:	ea000001 	b	a30 <printint+0x5c>
     a28:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a2c:	e50b3010 	str	r3, [fp, #-16]
     a30:	e3a03000 	mov	r3, #0
     a34:	e50b3008 	str	r3, [fp, #-8]
     a38:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     a3c:	e51b3010 	ldr	r3, [fp, #-16]
     a40:	e1a01002 	mov	r1, r2
     a44:	e1a00003 	mov	r0, r3
     a48:	eb0001d5 	bl	11a4 <__aeabi_uidivmod>
     a4c:	e1a03001 	mov	r3, r1
     a50:	e1a01003 	mov	r1, r3
     a54:	e51b3008 	ldr	r3, [fp, #-8]
     a58:	e2832001 	add	r2, r3, #1
     a5c:	e50b2008 	str	r2, [fp, #-8]
     a60:	e59f20a0 	ldr	r2, [pc, #160]	@ b08 <printint+0x134>
     a64:	e7d22001 	ldrb	r2, [r2, r1]
     a68:	e2433004 	sub	r3, r3, #4
     a6c:	e083300b 	add	r3, r3, fp
     a70:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a74:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     a78:	e1a01003 	mov	r1, r3
     a7c:	e51b0010 	ldr	r0, [fp, #-16]
     a80:	eb00018a 	bl	10b0 <__udivsi3>
     a84:	e1a03000 	mov	r3, r0
     a88:	e50b3010 	str	r3, [fp, #-16]
     a8c:	e51b3010 	ldr	r3, [fp, #-16]
     a90:	e3530000 	cmp	r3, #0
     a94:	1affffe7 	bne	a38 <printint+0x64>
     a98:	e51b300c 	ldr	r3, [fp, #-12]
     a9c:	e3530000 	cmp	r3, #0
     aa0:	0a00000e 	beq	ae0 <printint+0x10c>
     aa4:	e51b3008 	ldr	r3, [fp, #-8]
     aa8:	e2832001 	add	r2, r3, #1
     aac:	e50b2008 	str	r2, [fp, #-8]
     ab0:	e2433004 	sub	r3, r3, #4
     ab4:	e083300b 	add	r3, r3, fp
     ab8:	e3a0202d 	mov	r2, #45	@ 0x2d
     abc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ac0:	ea000006 	b	ae0 <printint+0x10c>
     ac4:	e24b2020 	sub	r2, fp, #32
     ac8:	e51b3008 	ldr	r3, [fp, #-8]
     acc:	e0823003 	add	r3, r2, r3
     ad0:	e5d33000 	ldrb	r3, [r3]
     ad4:	e1a01003 	mov	r1, r3
     ad8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     adc:	ebffffae 	bl	99c <putc>
     ae0:	e51b3008 	ldr	r3, [fp, #-8]
     ae4:	e2433001 	sub	r3, r3, #1
     ae8:	e50b3008 	str	r3, [fp, #-8]
     aec:	e51b3008 	ldr	r3, [fp, #-8]
     af0:	e3530000 	cmp	r3, #0
     af4:	aafffff2 	bge	ac4 <printint+0xf0>
     af8:	e1a00000 	nop			@ (mov r0, r0)
     afc:	e1a00000 	nop			@ (mov r0, r0)
     b00:	e24bd004 	sub	sp, fp, #4
     b04:	e8bd8800 	pop	{fp, pc}
     b08:	00001214 	.word	0x00001214

00000b0c <printf>:
     b0c:	e92d000e 	push	{r1, r2, r3}
     b10:	e92d4800 	push	{fp, lr}
     b14:	e28db004 	add	fp, sp, #4
     b18:	e24dd024 	sub	sp, sp, #36	@ 0x24
     b1c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     b20:	e3a03000 	mov	r3, #0
     b24:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b28:	e28b3008 	add	r3, fp, #8
     b2c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b30:	e3a03000 	mov	r3, #0
     b34:	e50b3010 	str	r3, [fp, #-16]
     b38:	ea000074 	b	d10 <printf+0x204>
     b3c:	e59b2004 	ldr	r2, [fp, #4]
     b40:	e51b3010 	ldr	r3, [fp, #-16]
     b44:	e0823003 	add	r3, r2, r3
     b48:	e5d33000 	ldrb	r3, [r3]
     b4c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     b50:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b54:	e3530000 	cmp	r3, #0
     b58:	1a00000b 	bne	b8c <printf+0x80>
     b5c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b60:	e3530025 	cmp	r3, #37	@ 0x25
     b64:	1a000002 	bne	b74 <printf+0x68>
     b68:	e3a03025 	mov	r3, #37	@ 0x25
     b6c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b70:	ea000063 	b	d04 <printf+0x1f8>
     b74:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b78:	e6ef3073 	uxtb	r3, r3
     b7c:	e1a01003 	mov	r1, r3
     b80:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b84:	ebffff84 	bl	99c <putc>
     b88:	ea00005d 	b	d04 <printf+0x1f8>
     b8c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b90:	e3530025 	cmp	r3, #37	@ 0x25
     b94:	1a00005a 	bne	d04 <printf+0x1f8>
     b98:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b9c:	e3530064 	cmp	r3, #100	@ 0x64
     ba0:	1a00000a 	bne	bd0 <printf+0xc4>
     ba4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ba8:	e5933000 	ldr	r3, [r3]
     bac:	e1a01003 	mov	r1, r3
     bb0:	e3a03001 	mov	r3, #1
     bb4:	e3a0200a 	mov	r2, #10
     bb8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bbc:	ebffff84 	bl	9d4 <printint>
     bc0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bc4:	e2833004 	add	r3, r3, #4
     bc8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bcc:	ea00004a 	b	cfc <printf+0x1f0>
     bd0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bd4:	e3530078 	cmp	r3, #120	@ 0x78
     bd8:	0a000002 	beq	be8 <printf+0xdc>
     bdc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     be0:	e3530070 	cmp	r3, #112	@ 0x70
     be4:	1a00000a 	bne	c14 <printf+0x108>
     be8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bec:	e5933000 	ldr	r3, [r3]
     bf0:	e1a01003 	mov	r1, r3
     bf4:	e3a03000 	mov	r3, #0
     bf8:	e3a02010 	mov	r2, #16
     bfc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c00:	ebffff73 	bl	9d4 <printint>
     c04:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c08:	e2833004 	add	r3, r3, #4
     c0c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c10:	ea000039 	b	cfc <printf+0x1f0>
     c14:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c18:	e3530073 	cmp	r3, #115	@ 0x73
     c1c:	1a000018 	bne	c84 <printf+0x178>
     c20:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c24:	e5933000 	ldr	r3, [r3]
     c28:	e50b300c 	str	r3, [fp, #-12]
     c2c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c30:	e2833004 	add	r3, r3, #4
     c34:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c38:	e51b300c 	ldr	r3, [fp, #-12]
     c3c:	e3530000 	cmp	r3, #0
     c40:	1a00000a 	bne	c70 <printf+0x164>
     c44:	e59f30f4 	ldr	r3, [pc, #244]	@ d40 <printf+0x234>
     c48:	e50b300c 	str	r3, [fp, #-12]
     c4c:	ea000007 	b	c70 <printf+0x164>
     c50:	e51b300c 	ldr	r3, [fp, #-12]
     c54:	e5d33000 	ldrb	r3, [r3]
     c58:	e1a01003 	mov	r1, r3
     c5c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c60:	ebffff4d 	bl	99c <putc>
     c64:	e51b300c 	ldr	r3, [fp, #-12]
     c68:	e2833001 	add	r3, r3, #1
     c6c:	e50b300c 	str	r3, [fp, #-12]
     c70:	e51b300c 	ldr	r3, [fp, #-12]
     c74:	e5d33000 	ldrb	r3, [r3]
     c78:	e3530000 	cmp	r3, #0
     c7c:	1afffff3 	bne	c50 <printf+0x144>
     c80:	ea00001d 	b	cfc <printf+0x1f0>
     c84:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c88:	e3530063 	cmp	r3, #99	@ 0x63
     c8c:	1a000009 	bne	cb8 <printf+0x1ac>
     c90:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c94:	e5933000 	ldr	r3, [r3]
     c98:	e6ef3073 	uxtb	r3, r3
     c9c:	e1a01003 	mov	r1, r3
     ca0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ca4:	ebffff3c 	bl	99c <putc>
     ca8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cac:	e2833004 	add	r3, r3, #4
     cb0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     cb4:	ea000010 	b	cfc <printf+0x1f0>
     cb8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cbc:	e3530025 	cmp	r3, #37	@ 0x25
     cc0:	1a000005 	bne	cdc <printf+0x1d0>
     cc4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cc8:	e6ef3073 	uxtb	r3, r3
     ccc:	e1a01003 	mov	r1, r3
     cd0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cd4:	ebffff30 	bl	99c <putc>
     cd8:	ea000007 	b	cfc <printf+0x1f0>
     cdc:	e3a01025 	mov	r1, #37	@ 0x25
     ce0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ce4:	ebffff2c 	bl	99c <putc>
     ce8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cec:	e6ef3073 	uxtb	r3, r3
     cf0:	e1a01003 	mov	r1, r3
     cf4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cf8:	ebffff27 	bl	99c <putc>
     cfc:	e3a03000 	mov	r3, #0
     d00:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d04:	e51b3010 	ldr	r3, [fp, #-16]
     d08:	e2833001 	add	r3, r3, #1
     d0c:	e50b3010 	str	r3, [fp, #-16]
     d10:	e59b2004 	ldr	r2, [fp, #4]
     d14:	e51b3010 	ldr	r3, [fp, #-16]
     d18:	e0823003 	add	r3, r2, r3
     d1c:	e5d33000 	ldrb	r3, [r3]
     d20:	e3530000 	cmp	r3, #0
     d24:	1affff84 	bne	b3c <printf+0x30>
     d28:	e1a00000 	nop			@ (mov r0, r0)
     d2c:	e1a00000 	nop			@ (mov r0, r0)
     d30:	e24bd004 	sub	sp, fp, #4
     d34:	e8bd4800 	pop	{fp, lr}
     d38:	e28dd00c 	add	sp, sp, #12
     d3c:	e12fff1e 	bx	lr
     d40:	0000120c 	.word	0x0000120c

00000d44 <free>:
     d44:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     d48:	e28db000 	add	fp, sp, #0
     d4c:	e24dd014 	sub	sp, sp, #20
     d50:	e50b0010 	str	r0, [fp, #-16]
     d54:	e51b3010 	ldr	r3, [fp, #-16]
     d58:	e2433008 	sub	r3, r3, #8
     d5c:	e50b300c 	str	r3, [fp, #-12]
     d60:	e59f3154 	ldr	r3, [pc, #340]	@ ebc <free+0x178>
     d64:	e5933000 	ldr	r3, [r3]
     d68:	e50b3008 	str	r3, [fp, #-8]
     d6c:	ea000010 	b	db4 <free+0x70>
     d70:	e51b3008 	ldr	r3, [fp, #-8]
     d74:	e5933000 	ldr	r3, [r3]
     d78:	e51b2008 	ldr	r2, [fp, #-8]
     d7c:	e1520003 	cmp	r2, r3
     d80:	3a000008 	bcc	da8 <free+0x64>
     d84:	e51b200c 	ldr	r2, [fp, #-12]
     d88:	e51b3008 	ldr	r3, [fp, #-8]
     d8c:	e1520003 	cmp	r2, r3
     d90:	8a000010 	bhi	dd8 <free+0x94>
     d94:	e51b3008 	ldr	r3, [fp, #-8]
     d98:	e5933000 	ldr	r3, [r3]
     d9c:	e51b200c 	ldr	r2, [fp, #-12]
     da0:	e1520003 	cmp	r2, r3
     da4:	3a00000b 	bcc	dd8 <free+0x94>
     da8:	e51b3008 	ldr	r3, [fp, #-8]
     dac:	e5933000 	ldr	r3, [r3]
     db0:	e50b3008 	str	r3, [fp, #-8]
     db4:	e51b200c 	ldr	r2, [fp, #-12]
     db8:	e51b3008 	ldr	r3, [fp, #-8]
     dbc:	e1520003 	cmp	r2, r3
     dc0:	9affffea 	bls	d70 <free+0x2c>
     dc4:	e51b3008 	ldr	r3, [fp, #-8]
     dc8:	e5933000 	ldr	r3, [r3]
     dcc:	e51b200c 	ldr	r2, [fp, #-12]
     dd0:	e1520003 	cmp	r2, r3
     dd4:	2affffe5 	bcs	d70 <free+0x2c>
     dd8:	e51b300c 	ldr	r3, [fp, #-12]
     ddc:	e5933004 	ldr	r3, [r3, #4]
     de0:	e1a03183 	lsl	r3, r3, #3
     de4:	e51b200c 	ldr	r2, [fp, #-12]
     de8:	e0822003 	add	r2, r2, r3
     dec:	e51b3008 	ldr	r3, [fp, #-8]
     df0:	e5933000 	ldr	r3, [r3]
     df4:	e1520003 	cmp	r2, r3
     df8:	1a00000d 	bne	e34 <free+0xf0>
     dfc:	e51b300c 	ldr	r3, [fp, #-12]
     e00:	e5932004 	ldr	r2, [r3, #4]
     e04:	e51b3008 	ldr	r3, [fp, #-8]
     e08:	e5933000 	ldr	r3, [r3]
     e0c:	e5933004 	ldr	r3, [r3, #4]
     e10:	e0822003 	add	r2, r2, r3
     e14:	e51b300c 	ldr	r3, [fp, #-12]
     e18:	e5832004 	str	r2, [r3, #4]
     e1c:	e51b3008 	ldr	r3, [fp, #-8]
     e20:	e5933000 	ldr	r3, [r3]
     e24:	e5932000 	ldr	r2, [r3]
     e28:	e51b300c 	ldr	r3, [fp, #-12]
     e2c:	e5832000 	str	r2, [r3]
     e30:	ea000003 	b	e44 <free+0x100>
     e34:	e51b3008 	ldr	r3, [fp, #-8]
     e38:	e5932000 	ldr	r2, [r3]
     e3c:	e51b300c 	ldr	r3, [fp, #-12]
     e40:	e5832000 	str	r2, [r3]
     e44:	e51b3008 	ldr	r3, [fp, #-8]
     e48:	e5933004 	ldr	r3, [r3, #4]
     e4c:	e1a03183 	lsl	r3, r3, #3
     e50:	e51b2008 	ldr	r2, [fp, #-8]
     e54:	e0823003 	add	r3, r2, r3
     e58:	e51b200c 	ldr	r2, [fp, #-12]
     e5c:	e1520003 	cmp	r2, r3
     e60:	1a00000b 	bne	e94 <free+0x150>
     e64:	e51b3008 	ldr	r3, [fp, #-8]
     e68:	e5932004 	ldr	r2, [r3, #4]
     e6c:	e51b300c 	ldr	r3, [fp, #-12]
     e70:	e5933004 	ldr	r3, [r3, #4]
     e74:	e0822003 	add	r2, r2, r3
     e78:	e51b3008 	ldr	r3, [fp, #-8]
     e7c:	e5832004 	str	r2, [r3, #4]
     e80:	e51b300c 	ldr	r3, [fp, #-12]
     e84:	e5932000 	ldr	r2, [r3]
     e88:	e51b3008 	ldr	r3, [fp, #-8]
     e8c:	e5832000 	str	r2, [r3]
     e90:	ea000002 	b	ea0 <free+0x15c>
     e94:	e51b3008 	ldr	r3, [fp, #-8]
     e98:	e51b200c 	ldr	r2, [fp, #-12]
     e9c:	e5832000 	str	r2, [r3]
     ea0:	e59f2014 	ldr	r2, [pc, #20]	@ ebc <free+0x178>
     ea4:	e51b3008 	ldr	r3, [fp, #-8]
     ea8:	e5823000 	str	r3, [r2]
     eac:	e1a00000 	nop			@ (mov r0, r0)
     eb0:	e28bd000 	add	sp, fp, #0
     eb4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     eb8:	e12fff1e 	bx	lr
     ebc:	00001230 	.word	0x00001230

00000ec0 <morecore>:
     ec0:	e92d4800 	push	{fp, lr}
     ec4:	e28db004 	add	fp, sp, #4
     ec8:	e24dd010 	sub	sp, sp, #16
     ecc:	e50b0010 	str	r0, [fp, #-16]
     ed0:	e51b3010 	ldr	r3, [fp, #-16]
     ed4:	e3530a01 	cmp	r3, #4096	@ 0x1000
     ed8:	2a000001 	bcs	ee4 <morecore+0x24>
     edc:	e3a03a01 	mov	r3, #4096	@ 0x1000
     ee0:	e50b3010 	str	r3, [fp, #-16]
     ee4:	e51b3010 	ldr	r3, [fp, #-16]
     ee8:	e1a03183 	lsl	r3, r3, #3
     eec:	e1a00003 	mov	r0, r3
     ef0:	ebfffe61 	bl	87c <sbrk>
     ef4:	e50b0008 	str	r0, [fp, #-8]
     ef8:	e51b3008 	ldr	r3, [fp, #-8]
     efc:	e3730001 	cmn	r3, #1
     f00:	1a000001 	bne	f0c <morecore+0x4c>
     f04:	e3a03000 	mov	r3, #0
     f08:	ea00000a 	b	f38 <morecore+0x78>
     f0c:	e51b3008 	ldr	r3, [fp, #-8]
     f10:	e50b300c 	str	r3, [fp, #-12]
     f14:	e51b300c 	ldr	r3, [fp, #-12]
     f18:	e51b2010 	ldr	r2, [fp, #-16]
     f1c:	e5832004 	str	r2, [r3, #4]
     f20:	e51b300c 	ldr	r3, [fp, #-12]
     f24:	e2833008 	add	r3, r3, #8
     f28:	e1a00003 	mov	r0, r3
     f2c:	ebffff84 	bl	d44 <free>
     f30:	e59f300c 	ldr	r3, [pc, #12]	@ f44 <morecore+0x84>
     f34:	e5933000 	ldr	r3, [r3]
     f38:	e1a00003 	mov	r0, r3
     f3c:	e24bd004 	sub	sp, fp, #4
     f40:	e8bd8800 	pop	{fp, pc}
     f44:	00001230 	.word	0x00001230

00000f48 <malloc>:
     f48:	e92d4800 	push	{fp, lr}
     f4c:	e28db004 	add	fp, sp, #4
     f50:	e24dd018 	sub	sp, sp, #24
     f54:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     f58:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f5c:	e2833007 	add	r3, r3, #7
     f60:	e1a031a3 	lsr	r3, r3, #3
     f64:	e2833001 	add	r3, r3, #1
     f68:	e50b3010 	str	r3, [fp, #-16]
     f6c:	e59f3134 	ldr	r3, [pc, #308]	@ 10a8 <malloc+0x160>
     f70:	e5933000 	ldr	r3, [r3]
     f74:	e50b300c 	str	r3, [fp, #-12]
     f78:	e51b300c 	ldr	r3, [fp, #-12]
     f7c:	e3530000 	cmp	r3, #0
     f80:	1a00000b 	bne	fb4 <malloc+0x6c>
     f84:	e59f3120 	ldr	r3, [pc, #288]	@ 10ac <malloc+0x164>
     f88:	e50b300c 	str	r3, [fp, #-12]
     f8c:	e59f2114 	ldr	r2, [pc, #276]	@ 10a8 <malloc+0x160>
     f90:	e51b300c 	ldr	r3, [fp, #-12]
     f94:	e5823000 	str	r3, [r2]
     f98:	e59f3108 	ldr	r3, [pc, #264]	@ 10a8 <malloc+0x160>
     f9c:	e5933000 	ldr	r3, [r3]
     fa0:	e59f2104 	ldr	r2, [pc, #260]	@ 10ac <malloc+0x164>
     fa4:	e5823000 	str	r3, [r2]
     fa8:	e59f30fc 	ldr	r3, [pc, #252]	@ 10ac <malloc+0x164>
     fac:	e3a02000 	mov	r2, #0
     fb0:	e5832004 	str	r2, [r3, #4]
     fb4:	e51b300c 	ldr	r3, [fp, #-12]
     fb8:	e5933000 	ldr	r3, [r3]
     fbc:	e50b3008 	str	r3, [fp, #-8]
     fc0:	e51b3008 	ldr	r3, [fp, #-8]
     fc4:	e5933004 	ldr	r3, [r3, #4]
     fc8:	e51b2010 	ldr	r2, [fp, #-16]
     fcc:	e1520003 	cmp	r2, r3
     fd0:	8a00001e 	bhi	1050 <malloc+0x108>
     fd4:	e51b3008 	ldr	r3, [fp, #-8]
     fd8:	e5933004 	ldr	r3, [r3, #4]
     fdc:	e51b2010 	ldr	r2, [fp, #-16]
     fe0:	e1520003 	cmp	r2, r3
     fe4:	1a000004 	bne	ffc <malloc+0xb4>
     fe8:	e51b3008 	ldr	r3, [fp, #-8]
     fec:	e5932000 	ldr	r2, [r3]
     ff0:	e51b300c 	ldr	r3, [fp, #-12]
     ff4:	e5832000 	str	r2, [r3]
     ff8:	ea00000e 	b	1038 <malloc+0xf0>
     ffc:	e51b3008 	ldr	r3, [fp, #-8]
    1000:	e5932004 	ldr	r2, [r3, #4]
    1004:	e51b3010 	ldr	r3, [fp, #-16]
    1008:	e0422003 	sub	r2, r2, r3
    100c:	e51b3008 	ldr	r3, [fp, #-8]
    1010:	e5832004 	str	r2, [r3, #4]
    1014:	e51b3008 	ldr	r3, [fp, #-8]
    1018:	e5933004 	ldr	r3, [r3, #4]
    101c:	e1a03183 	lsl	r3, r3, #3
    1020:	e51b2008 	ldr	r2, [fp, #-8]
    1024:	e0823003 	add	r3, r2, r3
    1028:	e50b3008 	str	r3, [fp, #-8]
    102c:	e51b3008 	ldr	r3, [fp, #-8]
    1030:	e51b2010 	ldr	r2, [fp, #-16]
    1034:	e5832004 	str	r2, [r3, #4]
    1038:	e59f2068 	ldr	r2, [pc, #104]	@ 10a8 <malloc+0x160>
    103c:	e51b300c 	ldr	r3, [fp, #-12]
    1040:	e5823000 	str	r3, [r2]
    1044:	e51b3008 	ldr	r3, [fp, #-8]
    1048:	e2833008 	add	r3, r3, #8
    104c:	ea000012 	b	109c <malloc+0x154>
    1050:	e59f3050 	ldr	r3, [pc, #80]	@ 10a8 <malloc+0x160>
    1054:	e5933000 	ldr	r3, [r3]
    1058:	e51b2008 	ldr	r2, [fp, #-8]
    105c:	e1520003 	cmp	r2, r3
    1060:	1a000007 	bne	1084 <malloc+0x13c>
    1064:	e51b0010 	ldr	r0, [fp, #-16]
    1068:	ebffff94 	bl	ec0 <morecore>
    106c:	e50b0008 	str	r0, [fp, #-8]
    1070:	e51b3008 	ldr	r3, [fp, #-8]
    1074:	e3530000 	cmp	r3, #0
    1078:	1a000001 	bne	1084 <malloc+0x13c>
    107c:	e3a03000 	mov	r3, #0
    1080:	ea000005 	b	109c <malloc+0x154>
    1084:	e51b3008 	ldr	r3, [fp, #-8]
    1088:	e50b300c 	str	r3, [fp, #-12]
    108c:	e51b3008 	ldr	r3, [fp, #-8]
    1090:	e5933000 	ldr	r3, [r3]
    1094:	e50b3008 	str	r3, [fp, #-8]
    1098:	eaffffc8 	b	fc0 <malloc+0x78>
    109c:	e1a00003 	mov	r0, r3
    10a0:	e24bd004 	sub	sp, fp, #4
    10a4:	e8bd8800 	pop	{fp, pc}
    10a8:	00001230 	.word	0x00001230
    10ac:	00001228 	.word	0x00001228

000010b0 <__udivsi3>:
    10b0:	e2512001 	subs	r2, r1, #1
    10b4:	012fff1e 	bxeq	lr
    10b8:	3a000036 	bcc	1198 <__udivsi3+0xe8>
    10bc:	e1500001 	cmp	r0, r1
    10c0:	9a000022 	bls	1150 <__udivsi3+0xa0>
    10c4:	e1110002 	tst	r1, r2
    10c8:	0a000023 	beq	115c <__udivsi3+0xac>
    10cc:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    10d0:	01a01181 	lsleq	r1, r1, #3
    10d4:	03a03008 	moveq	r3, #8
    10d8:	13a03001 	movne	r3, #1
    10dc:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    10e0:	31510000 	cmpcc	r1, r0
    10e4:	31a01201 	lslcc	r1, r1, #4
    10e8:	31a03203 	lslcc	r3, r3, #4
    10ec:	3afffffa 	bcc	10dc <__udivsi3+0x2c>
    10f0:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    10f4:	31510000 	cmpcc	r1, r0
    10f8:	31a01081 	lslcc	r1, r1, #1
    10fc:	31a03083 	lslcc	r3, r3, #1
    1100:	3afffffa 	bcc	10f0 <__udivsi3+0x40>
    1104:	e3a02000 	mov	r2, #0
    1108:	e1500001 	cmp	r0, r1
    110c:	20400001 	subcs	r0, r0, r1
    1110:	21822003 	orrcs	r2, r2, r3
    1114:	e15000a1 	cmp	r0, r1, lsr #1
    1118:	204000a1 	subcs	r0, r0, r1, lsr #1
    111c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1120:	e1500121 	cmp	r0, r1, lsr #2
    1124:	20400121 	subcs	r0, r0, r1, lsr #2
    1128:	21822123 	orrcs	r2, r2, r3, lsr #2
    112c:	e15001a1 	cmp	r0, r1, lsr #3
    1130:	204001a1 	subcs	r0, r0, r1, lsr #3
    1134:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1138:	e3500000 	cmp	r0, #0
    113c:	11b03223 	lsrsne	r3, r3, #4
    1140:	11a01221 	lsrne	r1, r1, #4
    1144:	1affffef 	bne	1108 <__udivsi3+0x58>
    1148:	e1a00002 	mov	r0, r2
    114c:	e12fff1e 	bx	lr
    1150:	03a00001 	moveq	r0, #1
    1154:	13a00000 	movne	r0, #0
    1158:	e12fff1e 	bx	lr
    115c:	e3510801 	cmp	r1, #65536	@ 0x10000
    1160:	21a01821 	lsrcs	r1, r1, #16
    1164:	23a02010 	movcs	r2, #16
    1168:	33a02000 	movcc	r2, #0
    116c:	e3510c01 	cmp	r1, #256	@ 0x100
    1170:	21a01421 	lsrcs	r1, r1, #8
    1174:	22822008 	addcs	r2, r2, #8
    1178:	e3510010 	cmp	r1, #16
    117c:	21a01221 	lsrcs	r1, r1, #4
    1180:	22822004 	addcs	r2, r2, #4
    1184:	e3510004 	cmp	r1, #4
    1188:	82822003 	addhi	r2, r2, #3
    118c:	908220a1 	addls	r2, r2, r1, lsr #1
    1190:	e1a00230 	lsr	r0, r0, r2
    1194:	e12fff1e 	bx	lr
    1198:	e3500000 	cmp	r0, #0
    119c:	13e00000 	mvnne	r0, #0
    11a0:	ea000007 	b	11c4 <__aeabi_idiv0>

000011a4 <__aeabi_uidivmod>:
    11a4:	e3510000 	cmp	r1, #0
    11a8:	0afffffa 	beq	1198 <__udivsi3+0xe8>
    11ac:	e92d4003 	push	{r0, r1, lr}
    11b0:	ebffffbe 	bl	10b0 <__udivsi3>
    11b4:	e8bd4006 	pop	{r1, r2, lr}
    11b8:	e0030092 	mul	r3, r2, r0
    11bc:	e0411003 	sub	r1, r1, r3
    11c0:	e12fff1e 	bx	lr

000011c4 <__aeabi_idiv0>:
    11c4:	e12fff1e 	bx	lr
