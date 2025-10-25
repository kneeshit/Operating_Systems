
_pt_test:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e59f1070 	ldr	r1, [pc, #112]	@ 84 <main+0x84>
      10:	e3a00001 	mov	r0, #1
      14:	eb0003d8 	bl	f7c <printf>
      18:	e3a00a05 	mov	r0, #20480	@ 0x5000
      1c:	eb0004e5 	bl	13b8 <malloc>
      20:	e50b0008 	str	r0, [fp, #-8]
      24:	e51b3008 	ldr	r3, [fp, #-8]
      28:	e3530000 	cmp	r3, #0
      2c:	1a000003 	bne	40 <main+0x40>
      30:	e59f1050 	ldr	r1, [pc, #80]	@ 88 <main+0x88>
      34:	e3a00002 	mov	r0, #2
      38:	eb0003cf 	bl	f7c <printf>
      3c:	eb000237 	bl	920 <exit>
      40:	e51b3008 	ldr	r3, [fp, #-8]
      44:	e3a02061 	mov	r2, #97	@ 0x61
      48:	e5c32000 	strb	r2, [r3]
      4c:	e51b3008 	ldr	r3, [fp, #-8]
      50:	e2833a01 	add	r3, r3, #4096	@ 0x1000
      54:	e3a02062 	mov	r2, #98	@ 0x62
      58:	e5c32000 	strb	r2, [r3]
      5c:	e59f1028 	ldr	r1, [pc, #40]	@ 8c <main+0x8c>
      60:	e3a00001 	mov	r0, #1
      64:	eb0003c4 	bl	f7c <printf>
      68:	eb000304 	bl	c80 <dumppagetable>
      6c:	e59f101c 	ldr	r1, [pc, #28]	@ 90 <main+0x90>
      70:	e3a00001 	mov	r0, #1
      74:	eb0003c0 	bl	f7c <printf>
      78:	e51b0008 	ldr	r0, [fp, #-8]
      7c:	eb00044c 	bl	11b4 <free>
      80:	eb000226 	bl	920 <exit>
      84:	00001638 	.word	0x00001638
      88:	00001660 	.word	0x00001660
      8c:	00001678 	.word	0x00001678
      90:	000016a0 	.word	0x000016a0

00000094 <strcpy>:
      94:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      98:	e28db000 	add	fp, sp, #0
      9c:	e24dd014 	sub	sp, sp, #20
      a0:	e50b0010 	str	r0, [fp, #-16]
      a4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      a8:	e51b3010 	ldr	r3, [fp, #-16]
      ac:	e50b3008 	str	r3, [fp, #-8]
      b0:	e1a00000 	nop			@ (mov r0, r0)
      b4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      b8:	e2823001 	add	r3, r2, #1
      bc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      c0:	e51b3010 	ldr	r3, [fp, #-16]
      c4:	e2831001 	add	r1, r3, #1
      c8:	e50b1010 	str	r1, [fp, #-16]
      cc:	e5d22000 	ldrb	r2, [r2]
      d0:	e5c32000 	strb	r2, [r3]
      d4:	e5d33000 	ldrb	r3, [r3]
      d8:	e3530000 	cmp	r3, #0
      dc:	1afffff4 	bne	b4 <strcpy+0x20>
      e0:	e51b3008 	ldr	r3, [fp, #-8]
      e4:	e1a00003 	mov	r0, r3
      e8:	e28bd000 	add	sp, fp, #0
      ec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      f0:	e12fff1e 	bx	lr

000000f4 <strcmp>:
      f4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      f8:	e28db000 	add	fp, sp, #0
      fc:	e24dd00c 	sub	sp, sp, #12
     100:	e50b0008 	str	r0, [fp, #-8]
     104:	e50b100c 	str	r1, [fp, #-12]
     108:	ea000005 	b	124 <strcmp+0x30>
     10c:	e51b3008 	ldr	r3, [fp, #-8]
     110:	e2833001 	add	r3, r3, #1
     114:	e50b3008 	str	r3, [fp, #-8]
     118:	e51b300c 	ldr	r3, [fp, #-12]
     11c:	e2833001 	add	r3, r3, #1
     120:	e50b300c 	str	r3, [fp, #-12]
     124:	e51b3008 	ldr	r3, [fp, #-8]
     128:	e5d33000 	ldrb	r3, [r3]
     12c:	e3530000 	cmp	r3, #0
     130:	0a000005 	beq	14c <strcmp+0x58>
     134:	e51b3008 	ldr	r3, [fp, #-8]
     138:	e5d32000 	ldrb	r2, [r3]
     13c:	e51b300c 	ldr	r3, [fp, #-12]
     140:	e5d33000 	ldrb	r3, [r3]
     144:	e1520003 	cmp	r2, r3
     148:	0affffef 	beq	10c <strcmp+0x18>
     14c:	e51b3008 	ldr	r3, [fp, #-8]
     150:	e5d33000 	ldrb	r3, [r3]
     154:	e1a02003 	mov	r2, r3
     158:	e51b300c 	ldr	r3, [fp, #-12]
     15c:	e5d33000 	ldrb	r3, [r3]
     160:	e0423003 	sub	r3, r2, r3
     164:	e1a00003 	mov	r0, r3
     168:	e28bd000 	add	sp, fp, #0
     16c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     170:	e12fff1e 	bx	lr

00000174 <strlen>:
     174:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     178:	e28db000 	add	fp, sp, #0
     17c:	e24dd014 	sub	sp, sp, #20
     180:	e50b0010 	str	r0, [fp, #-16]
     184:	e3a03000 	mov	r3, #0
     188:	e50b3008 	str	r3, [fp, #-8]
     18c:	ea000002 	b	19c <strlen+0x28>
     190:	e51b3008 	ldr	r3, [fp, #-8]
     194:	e2833001 	add	r3, r3, #1
     198:	e50b3008 	str	r3, [fp, #-8]
     19c:	e51b3008 	ldr	r3, [fp, #-8]
     1a0:	e51b2010 	ldr	r2, [fp, #-16]
     1a4:	e0823003 	add	r3, r2, r3
     1a8:	e5d33000 	ldrb	r3, [r3]
     1ac:	e3530000 	cmp	r3, #0
     1b0:	1afffff6 	bne	190 <strlen+0x1c>
     1b4:	e51b3008 	ldr	r3, [fp, #-8]
     1b8:	e1a00003 	mov	r0, r3
     1bc:	e28bd000 	add	sp, fp, #0
     1c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1c4:	e12fff1e 	bx	lr

000001c8 <memset>:
     1c8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1cc:	e28db000 	add	fp, sp, #0
     1d0:	e24dd024 	sub	sp, sp, #36	@ 0x24
     1d4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     1d8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     1dc:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     1e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     1e4:	e50b3008 	str	r3, [fp, #-8]
     1e8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1ec:	e54b300d 	strb	r3, [fp, #-13]
     1f0:	e55b200d 	ldrb	r2, [fp, #-13]
     1f4:	e1a03002 	mov	r3, r2
     1f8:	e1a03403 	lsl	r3, r3, #8
     1fc:	e0833002 	add	r3, r3, r2
     200:	e1a03803 	lsl	r3, r3, #16
     204:	e1a02003 	mov	r2, r3
     208:	e55b300d 	ldrb	r3, [fp, #-13]
     20c:	e1a03403 	lsl	r3, r3, #8
     210:	e1822003 	orr	r2, r2, r3
     214:	e55b300d 	ldrb	r3, [fp, #-13]
     218:	e1823003 	orr	r3, r2, r3
     21c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     220:	ea000008 	b	248 <memset+0x80>
     224:	e51b3008 	ldr	r3, [fp, #-8]
     228:	e55b200d 	ldrb	r2, [fp, #-13]
     22c:	e5c32000 	strb	r2, [r3]
     230:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     234:	e2433001 	sub	r3, r3, #1
     238:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     23c:	e51b3008 	ldr	r3, [fp, #-8]
     240:	e2833001 	add	r3, r3, #1
     244:	e50b3008 	str	r3, [fp, #-8]
     248:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     24c:	e3530000 	cmp	r3, #0
     250:	0a000003 	beq	264 <memset+0x9c>
     254:	e51b3008 	ldr	r3, [fp, #-8]
     258:	e2033003 	and	r3, r3, #3
     25c:	e3530000 	cmp	r3, #0
     260:	1affffef 	bne	224 <memset+0x5c>
     264:	e51b3008 	ldr	r3, [fp, #-8]
     268:	e50b300c 	str	r3, [fp, #-12]
     26c:	ea000008 	b	294 <memset+0xcc>
     270:	e51b300c 	ldr	r3, [fp, #-12]
     274:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     278:	e5832000 	str	r2, [r3]
     27c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     280:	e2433004 	sub	r3, r3, #4
     284:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     288:	e51b300c 	ldr	r3, [fp, #-12]
     28c:	e2833004 	add	r3, r3, #4
     290:	e50b300c 	str	r3, [fp, #-12]
     294:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     298:	e3530003 	cmp	r3, #3
     29c:	8afffff3 	bhi	270 <memset+0xa8>
     2a0:	e51b300c 	ldr	r3, [fp, #-12]
     2a4:	e50b3008 	str	r3, [fp, #-8]
     2a8:	ea000008 	b	2d0 <memset+0x108>
     2ac:	e51b3008 	ldr	r3, [fp, #-8]
     2b0:	e55b200d 	ldrb	r2, [fp, #-13]
     2b4:	e5c32000 	strb	r2, [r3]
     2b8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2bc:	e2433001 	sub	r3, r3, #1
     2c0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2c4:	e51b3008 	ldr	r3, [fp, #-8]
     2c8:	e2833001 	add	r3, r3, #1
     2cc:	e50b3008 	str	r3, [fp, #-8]
     2d0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2d4:	e3530000 	cmp	r3, #0
     2d8:	1afffff3 	bne	2ac <memset+0xe4>
     2dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2e0:	e1a00003 	mov	r0, r3
     2e4:	e28bd000 	add	sp, fp, #0
     2e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2ec:	e12fff1e 	bx	lr

000002f0 <strchr>:
     2f0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2f4:	e28db000 	add	fp, sp, #0
     2f8:	e24dd00c 	sub	sp, sp, #12
     2fc:	e50b0008 	str	r0, [fp, #-8]
     300:	e1a03001 	mov	r3, r1
     304:	e54b3009 	strb	r3, [fp, #-9]
     308:	ea000009 	b	334 <strchr+0x44>
     30c:	e51b3008 	ldr	r3, [fp, #-8]
     310:	e5d33000 	ldrb	r3, [r3]
     314:	e55b2009 	ldrb	r2, [fp, #-9]
     318:	e1520003 	cmp	r2, r3
     31c:	1a000001 	bne	328 <strchr+0x38>
     320:	e51b3008 	ldr	r3, [fp, #-8]
     324:	ea000007 	b	348 <strchr+0x58>
     328:	e51b3008 	ldr	r3, [fp, #-8]
     32c:	e2833001 	add	r3, r3, #1
     330:	e50b3008 	str	r3, [fp, #-8]
     334:	e51b3008 	ldr	r3, [fp, #-8]
     338:	e5d33000 	ldrb	r3, [r3]
     33c:	e3530000 	cmp	r3, #0
     340:	1afffff1 	bne	30c <strchr+0x1c>
     344:	e3a03000 	mov	r3, #0
     348:	e1a00003 	mov	r0, r3
     34c:	e28bd000 	add	sp, fp, #0
     350:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     354:	e12fff1e 	bx	lr

00000358 <gets>:
     358:	e92d4800 	push	{fp, lr}
     35c:	e28db004 	add	fp, sp, #4
     360:	e24dd018 	sub	sp, sp, #24
     364:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     368:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     36c:	e3a03000 	mov	r3, #0
     370:	e50b3008 	str	r3, [fp, #-8]
     374:	ea000016 	b	3d4 <gets+0x7c>
     378:	e24b300d 	sub	r3, fp, #13
     37c:	e3a02001 	mov	r2, #1
     380:	e1a01003 	mov	r1, r3
     384:	e3a00000 	mov	r0, #0
     388:	eb00017f 	bl	98c <read>
     38c:	e50b000c 	str	r0, [fp, #-12]
     390:	e51b300c 	ldr	r3, [fp, #-12]
     394:	e3530000 	cmp	r3, #0
     398:	da000013 	ble	3ec <gets+0x94>
     39c:	e51b3008 	ldr	r3, [fp, #-8]
     3a0:	e2832001 	add	r2, r3, #1
     3a4:	e50b2008 	str	r2, [fp, #-8]
     3a8:	e1a02003 	mov	r2, r3
     3ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3b0:	e0833002 	add	r3, r3, r2
     3b4:	e55b200d 	ldrb	r2, [fp, #-13]
     3b8:	e5c32000 	strb	r2, [r3]
     3bc:	e55b300d 	ldrb	r3, [fp, #-13]
     3c0:	e353000a 	cmp	r3, #10
     3c4:	0a000009 	beq	3f0 <gets+0x98>
     3c8:	e55b300d 	ldrb	r3, [fp, #-13]
     3cc:	e353000d 	cmp	r3, #13
     3d0:	0a000006 	beq	3f0 <gets+0x98>
     3d4:	e51b3008 	ldr	r3, [fp, #-8]
     3d8:	e2833001 	add	r3, r3, #1
     3dc:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     3e0:	e1520003 	cmp	r2, r3
     3e4:	caffffe3 	bgt	378 <gets+0x20>
     3e8:	ea000000 	b	3f0 <gets+0x98>
     3ec:	e1a00000 	nop			@ (mov r0, r0)
     3f0:	e51b3008 	ldr	r3, [fp, #-8]
     3f4:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     3f8:	e0823003 	add	r3, r2, r3
     3fc:	e3a02000 	mov	r2, #0
     400:	e5c32000 	strb	r2, [r3]
     404:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     408:	e1a00003 	mov	r0, r3
     40c:	e24bd004 	sub	sp, fp, #4
     410:	e8bd8800 	pop	{fp, pc}

00000414 <stat>:
     414:	e92d4800 	push	{fp, lr}
     418:	e28db004 	add	fp, sp, #4
     41c:	e24dd010 	sub	sp, sp, #16
     420:	e50b0010 	str	r0, [fp, #-16]
     424:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     428:	e3a01000 	mov	r1, #0
     42c:	e51b0010 	ldr	r0, [fp, #-16]
     430:	eb000182 	bl	a40 <open>
     434:	e50b0008 	str	r0, [fp, #-8]
     438:	e51b3008 	ldr	r3, [fp, #-8]
     43c:	e3530000 	cmp	r3, #0
     440:	aa000001 	bge	44c <stat+0x38>
     444:	e3e03000 	mvn	r3, #0
     448:	ea000006 	b	468 <stat+0x54>
     44c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     450:	e51b0008 	ldr	r0, [fp, #-8]
     454:	eb000194 	bl	aac <fstat>
     458:	e50b000c 	str	r0, [fp, #-12]
     45c:	e51b0008 	ldr	r0, [fp, #-8]
     460:	eb00015b 	bl	9d4 <close>
     464:	e51b300c 	ldr	r3, [fp, #-12]
     468:	e1a00003 	mov	r0, r3
     46c:	e24bd004 	sub	sp, fp, #4
     470:	e8bd8800 	pop	{fp, pc}

00000474 <atoi>:
     474:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     478:	e28db000 	add	fp, sp, #0
     47c:	e24dd014 	sub	sp, sp, #20
     480:	e50b0010 	str	r0, [fp, #-16]
     484:	e3a03000 	mov	r3, #0
     488:	e50b3008 	str	r3, [fp, #-8]
     48c:	ea00000c 	b	4c4 <atoi+0x50>
     490:	e51b2008 	ldr	r2, [fp, #-8]
     494:	e1a03002 	mov	r3, r2
     498:	e1a03103 	lsl	r3, r3, #2
     49c:	e0833002 	add	r3, r3, r2
     4a0:	e1a03083 	lsl	r3, r3, #1
     4a4:	e1a01003 	mov	r1, r3
     4a8:	e51b3010 	ldr	r3, [fp, #-16]
     4ac:	e2832001 	add	r2, r3, #1
     4b0:	e50b2010 	str	r2, [fp, #-16]
     4b4:	e5d33000 	ldrb	r3, [r3]
     4b8:	e0813003 	add	r3, r1, r3
     4bc:	e2433030 	sub	r3, r3, #48	@ 0x30
     4c0:	e50b3008 	str	r3, [fp, #-8]
     4c4:	e51b3010 	ldr	r3, [fp, #-16]
     4c8:	e5d33000 	ldrb	r3, [r3]
     4cc:	e353002f 	cmp	r3, #47	@ 0x2f
     4d0:	9a000003 	bls	4e4 <atoi+0x70>
     4d4:	e51b3010 	ldr	r3, [fp, #-16]
     4d8:	e5d33000 	ldrb	r3, [r3]
     4dc:	e3530039 	cmp	r3, #57	@ 0x39
     4e0:	9affffea 	bls	490 <atoi+0x1c>
     4e4:	e51b3010 	ldr	r3, [fp, #-16]
     4e8:	e5d33000 	ldrb	r3, [r3]
     4ec:	e3530000 	cmp	r3, #0
     4f0:	1a000001 	bne	4fc <atoi+0x88>
     4f4:	e51b3008 	ldr	r3, [fp, #-8]
     4f8:	ea000000 	b	500 <atoi+0x8c>
     4fc:	e3e03000 	mvn	r3, #0
     500:	e1a00003 	mov	r0, r3
     504:	e28bd000 	add	sp, fp, #0
     508:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     50c:	e12fff1e 	bx	lr

00000510 <memmove>:
     510:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     514:	e28db000 	add	fp, sp, #0
     518:	e24dd01c 	sub	sp, sp, #28
     51c:	e50b0010 	str	r0, [fp, #-16]
     520:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     524:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     528:	e51b3010 	ldr	r3, [fp, #-16]
     52c:	e50b3008 	str	r3, [fp, #-8]
     530:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     534:	e50b300c 	str	r3, [fp, #-12]
     538:	ea000007 	b	55c <memmove+0x4c>
     53c:	e51b200c 	ldr	r2, [fp, #-12]
     540:	e2823001 	add	r3, r2, #1
     544:	e50b300c 	str	r3, [fp, #-12]
     548:	e51b3008 	ldr	r3, [fp, #-8]
     54c:	e2831001 	add	r1, r3, #1
     550:	e50b1008 	str	r1, [fp, #-8]
     554:	e5d22000 	ldrb	r2, [r2]
     558:	e5c32000 	strb	r2, [r3]
     55c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     560:	e2432001 	sub	r2, r3, #1
     564:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     568:	e3530000 	cmp	r3, #0
     56c:	cafffff2 	bgt	53c <memmove+0x2c>
     570:	e51b3010 	ldr	r3, [fp, #-16]
     574:	e1a00003 	mov	r0, r3
     578:	e28bd000 	add	sp, fp, #0
     57c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     580:	e12fff1e 	bx	lr

00000584 <initiateLock>:
     584:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     588:	e28db000 	add	fp, sp, #0
     58c:	e24dd00c 	sub	sp, sp, #12
     590:	e50b0008 	str	r0, [fp, #-8]
     594:	e51b3008 	ldr	r3, [fp, #-8]
     598:	e3a02000 	mov	r2, #0
     59c:	e5832000 	str	r2, [r3]
     5a0:	e51b3008 	ldr	r3, [fp, #-8]
     5a4:	e3a02001 	mov	r2, #1
     5a8:	e5832004 	str	r2, [r3, #4]
     5ac:	e1a00000 	nop			@ (mov r0, r0)
     5b0:	e28bd000 	add	sp, fp, #0
     5b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5b8:	e12fff1e 	bx	lr

000005bc <xchg>:
     5bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5c0:	e28db000 	add	fp, sp, #0
     5c4:	e24dd00c 	sub	sp, sp, #12
     5c8:	e50b0008 	str	r0, [fp, #-8]
     5cc:	e50b100c 	str	r1, [fp, #-12]
     5d0:	e51b200c 	ldr	r2, [fp, #-12]
     5d4:	e51b3008 	ldr	r3, [fp, #-8]
     5d8:	e1931f9f 	ldrex	r1, [r3]
     5dc:	e1830f92 	strex	r0, r2, [r3]
     5e0:	e3500000 	cmp	r0, #0
     5e4:	1afffffb 	bne	5d8 <xchg+0x1c>
     5e8:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     5ec:	e1a03001 	mov	r3, r1
     5f0:	e1a00003 	mov	r0, r3
     5f4:	e28bd000 	add	sp, fp, #0
     5f8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5fc:	e12fff1e 	bx	lr

00000600 <acquireLock>:
     600:	e92d4800 	push	{fp, lr}
     604:	e28db004 	add	fp, sp, #4
     608:	e24dd008 	sub	sp, sp, #8
     60c:	e50b0008 	str	r0, [fp, #-8]
     610:	e51b3008 	ldr	r3, [fp, #-8]
     614:	e5933004 	ldr	r3, [r3, #4]
     618:	e3530000 	cmp	r3, #0
     61c:	0a000008 	beq	644 <acquireLock+0x44>
     620:	e1a00000 	nop			@ (mov r0, r0)
     624:	e51b3008 	ldr	r3, [fp, #-8]
     628:	e3a01001 	mov	r1, #1
     62c:	e1a00003 	mov	r0, r3
     630:	ebffffe1 	bl	5bc <xchg>
     634:	e1a03000 	mov	r3, r0
     638:	e3530000 	cmp	r3, #0
     63c:	1afffff8 	bne	624 <acquireLock+0x24>
     640:	ea000000 	b	648 <acquireLock+0x48>
     644:	e1a00000 	nop			@ (mov r0, r0)
     648:	e24bd004 	sub	sp, fp, #4
     64c:	e8bd8800 	pop	{fp, pc}

00000650 <releaseLock>:
     650:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     654:	e28db000 	add	fp, sp, #0
     658:	e24dd00c 	sub	sp, sp, #12
     65c:	e50b0008 	str	r0, [fp, #-8]
     660:	e51b3008 	ldr	r3, [fp, #-8]
     664:	e5933004 	ldr	r3, [r3, #4]
     668:	e3530000 	cmp	r3, #0
     66c:	0a000007 	beq	690 <releaseLock+0x40>
     670:	e51b3008 	ldr	r3, [fp, #-8]
     674:	e5933000 	ldr	r3, [r3]
     678:	e3530001 	cmp	r3, #1
     67c:	1a000005 	bne	698 <releaseLock+0x48>
     680:	e51b3008 	ldr	r3, [fp, #-8]
     684:	e3a02000 	mov	r2, #0
     688:	e5832000 	str	r2, [r3]
     68c:	ea000002 	b	69c <releaseLock+0x4c>
     690:	e1a00000 	nop			@ (mov r0, r0)
     694:	ea000000 	b	69c <releaseLock+0x4c>
     698:	e1a00000 	nop			@ (mov r0, r0)
     69c:	e28bd000 	add	sp, fp, #0
     6a0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6a4:	e12fff1e 	bx	lr

000006a8 <initiateCondVar>:
     6a8:	e92d4800 	push	{fp, lr}
     6ac:	e28db004 	add	fp, sp, #4
     6b0:	e24dd008 	sub	sp, sp, #8
     6b4:	e50b0008 	str	r0, [fp, #-8]
     6b8:	eb0001b8 	bl	da0 <getChannel>
     6bc:	e1a02000 	mov	r2, r0
     6c0:	e51b3008 	ldr	r3, [fp, #-8]
     6c4:	e5832000 	str	r2, [r3]
     6c8:	e51b3008 	ldr	r3, [fp, #-8]
     6cc:	e3a02001 	mov	r2, #1
     6d0:	e5832004 	str	r2, [r3, #4]
     6d4:	e1a00000 	nop			@ (mov r0, r0)
     6d8:	e24bd004 	sub	sp, fp, #4
     6dc:	e8bd8800 	pop	{fp, pc}

000006e0 <condWait>:
     6e0:	e92d4800 	push	{fp, lr}
     6e4:	e28db004 	add	fp, sp, #4
     6e8:	e24dd008 	sub	sp, sp, #8
     6ec:	e50b0008 	str	r0, [fp, #-8]
     6f0:	e50b100c 	str	r1, [fp, #-12]
     6f4:	e51b3008 	ldr	r3, [fp, #-8]
     6f8:	e5933004 	ldr	r3, [r3, #4]
     6fc:	e3530000 	cmp	r3, #0
     700:	0a00000c 	beq	738 <condWait+0x58>
     704:	e51b300c 	ldr	r3, [fp, #-12]
     708:	e5933004 	ldr	r3, [r3, #4]
     70c:	e3530000 	cmp	r3, #0
     710:	0a000008 	beq	738 <condWait+0x58>
     714:	e51b000c 	ldr	r0, [fp, #-12]
     718:	ebffffcc 	bl	650 <releaseLock>
     71c:	e51b3008 	ldr	r3, [fp, #-8]
     720:	e5933000 	ldr	r3, [r3]
     724:	e1a00003 	mov	r0, r3
     728:	eb000193 	bl	d7c <sleepChan>
     72c:	e51b000c 	ldr	r0, [fp, #-12]
     730:	ebffffb2 	bl	600 <acquireLock>
     734:	ea000000 	b	73c <condWait+0x5c>
     738:	e1a00000 	nop			@ (mov r0, r0)
     73c:	e24bd004 	sub	sp, fp, #4
     740:	e8bd8800 	pop	{fp, pc}

00000744 <broadcast>:
     744:	e92d4800 	push	{fp, lr}
     748:	e28db004 	add	fp, sp, #4
     74c:	e24dd008 	sub	sp, sp, #8
     750:	e50b0008 	str	r0, [fp, #-8]
     754:	e51b3008 	ldr	r3, [fp, #-8]
     758:	e5933004 	ldr	r3, [r3, #4]
     75c:	e3530000 	cmp	r3, #0
     760:	0a000004 	beq	778 <broadcast+0x34>
     764:	e51b3008 	ldr	r3, [fp, #-8]
     768:	e5933000 	ldr	r3, [r3]
     76c:	e1a00003 	mov	r0, r3
     770:	eb000193 	bl	dc4 <sigChan>
     774:	ea000000 	b	77c <broadcast+0x38>
     778:	e1a00000 	nop			@ (mov r0, r0)
     77c:	e24bd004 	sub	sp, fp, #4
     780:	e8bd8800 	pop	{fp, pc}

00000784 <signal>:
     784:	e92d4800 	push	{fp, lr}
     788:	e28db004 	add	fp, sp, #4
     78c:	e24dd008 	sub	sp, sp, #8
     790:	e50b0008 	str	r0, [fp, #-8]
     794:	e51b3008 	ldr	r3, [fp, #-8]
     798:	e5933004 	ldr	r3, [r3, #4]
     79c:	e3530000 	cmp	r3, #0
     7a0:	0a000004 	beq	7b8 <signal+0x34>
     7a4:	e51b3008 	ldr	r3, [fp, #-8]
     7a8:	e5933000 	ldr	r3, [r3]
     7ac:	e1a00003 	mov	r0, r3
     7b0:	eb00018c 	bl	de8 <sigOneChan>
     7b4:	ea000000 	b	7bc <signal+0x38>
     7b8:	e1a00000 	nop			@ (mov r0, r0)
     7bc:	e24bd004 	sub	sp, fp, #4
     7c0:	e8bd8800 	pop	{fp, pc}

000007c4 <semInit>:
     7c4:	e92d4800 	push	{fp, lr}
     7c8:	e28db004 	add	fp, sp, #4
     7cc:	e24dd008 	sub	sp, sp, #8
     7d0:	e50b0008 	str	r0, [fp, #-8]
     7d4:	e50b100c 	str	r1, [fp, #-12]
     7d8:	e51b3008 	ldr	r3, [fp, #-8]
     7dc:	e51b200c 	ldr	r2, [fp, #-12]
     7e0:	e5832000 	str	r2, [r3]
     7e4:	e51b3008 	ldr	r3, [fp, #-8]
     7e8:	e2833004 	add	r3, r3, #4
     7ec:	e1a00003 	mov	r0, r3
     7f0:	ebffff63 	bl	584 <initiateLock>
     7f4:	e51b3008 	ldr	r3, [fp, #-8]
     7f8:	e283300c 	add	r3, r3, #12
     7fc:	e1a00003 	mov	r0, r3
     800:	ebffffa8 	bl	6a8 <initiateCondVar>
     804:	e51b3008 	ldr	r3, [fp, #-8]
     808:	e3a02001 	mov	r2, #1
     80c:	e5832014 	str	r2, [r3, #20]
     810:	e1a00000 	nop			@ (mov r0, r0)
     814:	e24bd004 	sub	sp, fp, #4
     818:	e8bd8800 	pop	{fp, pc}

0000081c <semUp>:
     81c:	e92d4800 	push	{fp, lr}
     820:	e28db004 	add	fp, sp, #4
     824:	e24dd008 	sub	sp, sp, #8
     828:	e50b0008 	str	r0, [fp, #-8]
     82c:	e51b3008 	ldr	r3, [fp, #-8]
     830:	e2833004 	add	r3, r3, #4
     834:	e1a00003 	mov	r0, r3
     838:	ebffff70 	bl	600 <acquireLock>
     83c:	e51b3008 	ldr	r3, [fp, #-8]
     840:	e5933000 	ldr	r3, [r3]
     844:	e2832001 	add	r2, r3, #1
     848:	e51b3008 	ldr	r3, [fp, #-8]
     84c:	e5832000 	str	r2, [r3]
     850:	e51b3008 	ldr	r3, [fp, #-8]
     854:	e283300c 	add	r3, r3, #12
     858:	e1a00003 	mov	r0, r3
     85c:	ebffffc8 	bl	784 <signal>
     860:	e51b3008 	ldr	r3, [fp, #-8]
     864:	e2833004 	add	r3, r3, #4
     868:	e1a00003 	mov	r0, r3
     86c:	ebffff77 	bl	650 <releaseLock>
     870:	e1a00000 	nop			@ (mov r0, r0)
     874:	e24bd004 	sub	sp, fp, #4
     878:	e8bd8800 	pop	{fp, pc}

0000087c <semDown>:
     87c:	e92d4800 	push	{fp, lr}
     880:	e28db004 	add	fp, sp, #4
     884:	e24dd008 	sub	sp, sp, #8
     888:	e50b0008 	str	r0, [fp, #-8]
     88c:	e51b3008 	ldr	r3, [fp, #-8]
     890:	e2833004 	add	r3, r3, #4
     894:	e1a00003 	mov	r0, r3
     898:	ebffff58 	bl	600 <acquireLock>
     89c:	ea000006 	b	8bc <semDown+0x40>
     8a0:	e51b3008 	ldr	r3, [fp, #-8]
     8a4:	e283200c 	add	r2, r3, #12
     8a8:	e51b3008 	ldr	r3, [fp, #-8]
     8ac:	e2833004 	add	r3, r3, #4
     8b0:	e1a01003 	mov	r1, r3
     8b4:	e1a00002 	mov	r0, r2
     8b8:	ebffff88 	bl	6e0 <condWait>
     8bc:	e51b3008 	ldr	r3, [fp, #-8]
     8c0:	e5933000 	ldr	r3, [r3]
     8c4:	e3530000 	cmp	r3, #0
     8c8:	dafffff4 	ble	8a0 <semDown+0x24>
     8cc:	e51b3008 	ldr	r3, [fp, #-8]
     8d0:	e5933000 	ldr	r3, [r3]
     8d4:	e2432001 	sub	r2, r3, #1
     8d8:	e51b3008 	ldr	r3, [fp, #-8]
     8dc:	e5832000 	str	r2, [r3]
     8e0:	e51b3008 	ldr	r3, [fp, #-8]
     8e4:	e2833004 	add	r3, r3, #4
     8e8:	e1a00003 	mov	r0, r3
     8ec:	ebffff57 	bl	650 <releaseLock>
     8f0:	e1a00000 	nop			@ (mov r0, r0)
     8f4:	e24bd004 	sub	sp, fp, #4
     8f8:	e8bd8800 	pop	{fp, pc}

000008fc <fork>:
     8fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     900:	e1a04003 	mov	r4, r3
     904:	e1a03002 	mov	r3, r2
     908:	e1a02001 	mov	r2, r1
     90c:	e1a01000 	mov	r1, r0
     910:	e3a00001 	mov	r0, #1
     914:	ef000000 	svc	0x00000000
     918:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     91c:	e12fff1e 	bx	lr

00000920 <exit>:
     920:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     924:	e1a04003 	mov	r4, r3
     928:	e1a03002 	mov	r3, r2
     92c:	e1a02001 	mov	r2, r1
     930:	e1a01000 	mov	r1, r0
     934:	e3a00002 	mov	r0, #2
     938:	ef000000 	svc	0x00000000
     93c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     940:	e12fff1e 	bx	lr

00000944 <wait>:
     944:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     948:	e1a04003 	mov	r4, r3
     94c:	e1a03002 	mov	r3, r2
     950:	e1a02001 	mov	r2, r1
     954:	e1a01000 	mov	r1, r0
     958:	e3a00003 	mov	r0, #3
     95c:	ef000000 	svc	0x00000000
     960:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     964:	e12fff1e 	bx	lr

00000968 <pipe>:
     968:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     96c:	e1a04003 	mov	r4, r3
     970:	e1a03002 	mov	r3, r2
     974:	e1a02001 	mov	r2, r1
     978:	e1a01000 	mov	r1, r0
     97c:	e3a00004 	mov	r0, #4
     980:	ef000000 	svc	0x00000000
     984:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     988:	e12fff1e 	bx	lr

0000098c <read>:
     98c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     990:	e1a04003 	mov	r4, r3
     994:	e1a03002 	mov	r3, r2
     998:	e1a02001 	mov	r2, r1
     99c:	e1a01000 	mov	r1, r0
     9a0:	e3a00005 	mov	r0, #5
     9a4:	ef000000 	svc	0x00000000
     9a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9ac:	e12fff1e 	bx	lr

000009b0 <write>:
     9b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9b4:	e1a04003 	mov	r4, r3
     9b8:	e1a03002 	mov	r3, r2
     9bc:	e1a02001 	mov	r2, r1
     9c0:	e1a01000 	mov	r1, r0
     9c4:	e3a00010 	mov	r0, #16
     9c8:	ef000000 	svc	0x00000000
     9cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9d0:	e12fff1e 	bx	lr

000009d4 <close>:
     9d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9d8:	e1a04003 	mov	r4, r3
     9dc:	e1a03002 	mov	r3, r2
     9e0:	e1a02001 	mov	r2, r1
     9e4:	e1a01000 	mov	r1, r0
     9e8:	e3a00015 	mov	r0, #21
     9ec:	ef000000 	svc	0x00000000
     9f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9f4:	e12fff1e 	bx	lr

000009f8 <kill>:
     9f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9fc:	e1a04003 	mov	r4, r3
     a00:	e1a03002 	mov	r3, r2
     a04:	e1a02001 	mov	r2, r1
     a08:	e1a01000 	mov	r1, r0
     a0c:	e3a00006 	mov	r0, #6
     a10:	ef000000 	svc	0x00000000
     a14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a18:	e12fff1e 	bx	lr

00000a1c <exec>:
     a1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a20:	e1a04003 	mov	r4, r3
     a24:	e1a03002 	mov	r3, r2
     a28:	e1a02001 	mov	r2, r1
     a2c:	e1a01000 	mov	r1, r0
     a30:	e3a00007 	mov	r0, #7
     a34:	ef000000 	svc	0x00000000
     a38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a3c:	e12fff1e 	bx	lr

00000a40 <open>:
     a40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a44:	e1a04003 	mov	r4, r3
     a48:	e1a03002 	mov	r3, r2
     a4c:	e1a02001 	mov	r2, r1
     a50:	e1a01000 	mov	r1, r0
     a54:	e3a0000f 	mov	r0, #15
     a58:	ef000000 	svc	0x00000000
     a5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a60:	e12fff1e 	bx	lr

00000a64 <mknod>:
     a64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a68:	e1a04003 	mov	r4, r3
     a6c:	e1a03002 	mov	r3, r2
     a70:	e1a02001 	mov	r2, r1
     a74:	e1a01000 	mov	r1, r0
     a78:	e3a00011 	mov	r0, #17
     a7c:	ef000000 	svc	0x00000000
     a80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a84:	e12fff1e 	bx	lr

00000a88 <unlink>:
     a88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a8c:	e1a04003 	mov	r4, r3
     a90:	e1a03002 	mov	r3, r2
     a94:	e1a02001 	mov	r2, r1
     a98:	e1a01000 	mov	r1, r0
     a9c:	e3a00012 	mov	r0, #18
     aa0:	ef000000 	svc	0x00000000
     aa4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aa8:	e12fff1e 	bx	lr

00000aac <fstat>:
     aac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ab0:	e1a04003 	mov	r4, r3
     ab4:	e1a03002 	mov	r3, r2
     ab8:	e1a02001 	mov	r2, r1
     abc:	e1a01000 	mov	r1, r0
     ac0:	e3a00008 	mov	r0, #8
     ac4:	ef000000 	svc	0x00000000
     ac8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     acc:	e12fff1e 	bx	lr

00000ad0 <link>:
     ad0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad4:	e1a04003 	mov	r4, r3
     ad8:	e1a03002 	mov	r3, r2
     adc:	e1a02001 	mov	r2, r1
     ae0:	e1a01000 	mov	r1, r0
     ae4:	e3a00013 	mov	r0, #19
     ae8:	ef000000 	svc	0x00000000
     aec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     af0:	e12fff1e 	bx	lr

00000af4 <mkdir>:
     af4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     af8:	e1a04003 	mov	r4, r3
     afc:	e1a03002 	mov	r3, r2
     b00:	e1a02001 	mov	r2, r1
     b04:	e1a01000 	mov	r1, r0
     b08:	e3a00014 	mov	r0, #20
     b0c:	ef000000 	svc	0x00000000
     b10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b14:	e12fff1e 	bx	lr

00000b18 <chdir>:
     b18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b1c:	e1a04003 	mov	r4, r3
     b20:	e1a03002 	mov	r3, r2
     b24:	e1a02001 	mov	r2, r1
     b28:	e1a01000 	mov	r1, r0
     b2c:	e3a00009 	mov	r0, #9
     b30:	ef000000 	svc	0x00000000
     b34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b38:	e12fff1e 	bx	lr

00000b3c <dup>:
     b3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b40:	e1a04003 	mov	r4, r3
     b44:	e1a03002 	mov	r3, r2
     b48:	e1a02001 	mov	r2, r1
     b4c:	e1a01000 	mov	r1, r0
     b50:	e3a0000a 	mov	r0, #10
     b54:	ef000000 	svc	0x00000000
     b58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b5c:	e12fff1e 	bx	lr

00000b60 <getpid>:
     b60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b64:	e1a04003 	mov	r4, r3
     b68:	e1a03002 	mov	r3, r2
     b6c:	e1a02001 	mov	r2, r1
     b70:	e1a01000 	mov	r1, r0
     b74:	e3a0000b 	mov	r0, #11
     b78:	ef000000 	svc	0x00000000
     b7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b80:	e12fff1e 	bx	lr

00000b84 <sbrk>:
     b84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b88:	e1a04003 	mov	r4, r3
     b8c:	e1a03002 	mov	r3, r2
     b90:	e1a02001 	mov	r2, r1
     b94:	e1a01000 	mov	r1, r0
     b98:	e3a0000c 	mov	r0, #12
     b9c:	ef000000 	svc	0x00000000
     ba0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba4:	e12fff1e 	bx	lr

00000ba8 <sleep>:
     ba8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bac:	e1a04003 	mov	r4, r3
     bb0:	e1a03002 	mov	r3, r2
     bb4:	e1a02001 	mov	r2, r1
     bb8:	e1a01000 	mov	r1, r0
     bbc:	e3a0000d 	mov	r0, #13
     bc0:	ef000000 	svc	0x00000000
     bc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc8:	e12fff1e 	bx	lr

00000bcc <uptime>:
     bcc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bd0:	e1a04003 	mov	r4, r3
     bd4:	e1a03002 	mov	r3, r2
     bd8:	e1a02001 	mov	r2, r1
     bdc:	e1a01000 	mov	r1, r0
     be0:	e3a0000e 	mov	r0, #14
     be4:	ef000000 	svc	0x00000000
     be8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bec:	e12fff1e 	bx	lr

00000bf0 <getprocs>:
     bf0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf4:	e1a04003 	mov	r4, r3
     bf8:	e1a03002 	mov	r3, r2
     bfc:	e1a02001 	mov	r2, r1
     c00:	e1a01000 	mov	r1, r0
     c04:	e3a00016 	mov	r0, #22
     c08:	ef000000 	svc	0x00000000
     c0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c10:	e12fff1e 	bx	lr

00000c14 <settickets>:
     c14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c18:	e1a04003 	mov	r4, r3
     c1c:	e1a03002 	mov	r3, r2
     c20:	e1a02001 	mov	r2, r1
     c24:	e1a01000 	mov	r1, r0
     c28:	e3a00017 	mov	r0, #23
     c2c:	ef000000 	svc	0x00000000
     c30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c34:	e12fff1e 	bx	lr

00000c38 <srand>:
     c38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c3c:	e1a04003 	mov	r4, r3
     c40:	e1a03002 	mov	r3, r2
     c44:	e1a02001 	mov	r2, r1
     c48:	e1a01000 	mov	r1, r0
     c4c:	e3a00018 	mov	r0, #24
     c50:	ef000000 	svc	0x00000000
     c54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c58:	e12fff1e 	bx	lr

00000c5c <getpinfo>:
     c5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c60:	e1a04003 	mov	r4, r3
     c64:	e1a03002 	mov	r3, r2
     c68:	e1a02001 	mov	r2, r1
     c6c:	e1a01000 	mov	r1, r0
     c70:	e3a00019 	mov	r0, #25
     c74:	ef000000 	svc	0x00000000
     c78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c7c:	e12fff1e 	bx	lr

00000c80 <dumppagetable>:
     c80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c84:	e1a04003 	mov	r4, r3
     c88:	e1a03002 	mov	r3, r2
     c8c:	e1a02001 	mov	r2, r1
     c90:	e1a01000 	mov	r1, r0
     c94:	e3a0001a 	mov	r0, #26
     c98:	ef000000 	svc	0x00000000
     c9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ca0:	e12fff1e 	bx	lr

00000ca4 <thread_create>:
     ca4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca8:	e1a04003 	mov	r4, r3
     cac:	e1a03002 	mov	r3, r2
     cb0:	e1a02001 	mov	r2, r1
     cb4:	e1a01000 	mov	r1, r0
     cb8:	e3a0001b 	mov	r0, #27
     cbc:	ef000000 	svc	0x00000000
     cc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc4:	e12fff1e 	bx	lr

00000cc8 <thread_exit>:
     cc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ccc:	e1a04003 	mov	r4, r3
     cd0:	e1a03002 	mov	r3, r2
     cd4:	e1a02001 	mov	r2, r1
     cd8:	e1a01000 	mov	r1, r0
     cdc:	e3a0001c 	mov	r0, #28
     ce0:	ef000000 	svc	0x00000000
     ce4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce8:	e12fff1e 	bx	lr

00000cec <thread_join>:
     cec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cf0:	e1a04003 	mov	r4, r3
     cf4:	e1a03002 	mov	r3, r2
     cf8:	e1a02001 	mov	r2, r1
     cfc:	e1a01000 	mov	r1, r0
     d00:	e3a0001d 	mov	r0, #29
     d04:	ef000000 	svc	0x00000000
     d08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d0c:	e12fff1e 	bx	lr

00000d10 <waitpid>:
     d10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d14:	e1a04003 	mov	r4, r3
     d18:	e1a03002 	mov	r3, r2
     d1c:	e1a02001 	mov	r2, r1
     d20:	e1a01000 	mov	r1, r0
     d24:	e3a0001e 	mov	r0, #30
     d28:	ef000000 	svc	0x00000000
     d2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d30:	e12fff1e 	bx	lr

00000d34 <barrier_init>:
     d34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d38:	e1a04003 	mov	r4, r3
     d3c:	e1a03002 	mov	r3, r2
     d40:	e1a02001 	mov	r2, r1
     d44:	e1a01000 	mov	r1, r0
     d48:	e3a0001f 	mov	r0, #31
     d4c:	ef000000 	svc	0x00000000
     d50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d54:	e12fff1e 	bx	lr

00000d58 <barrier_check>:
     d58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d5c:	e1a04003 	mov	r4, r3
     d60:	e1a03002 	mov	r3, r2
     d64:	e1a02001 	mov	r2, r1
     d68:	e1a01000 	mov	r1, r0
     d6c:	e3a00020 	mov	r0, #32
     d70:	ef000000 	svc	0x00000000
     d74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d78:	e12fff1e 	bx	lr

00000d7c <sleepChan>:
     d7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d80:	e1a04003 	mov	r4, r3
     d84:	e1a03002 	mov	r3, r2
     d88:	e1a02001 	mov	r2, r1
     d8c:	e1a01000 	mov	r1, r0
     d90:	e3a00024 	mov	r0, #36	@ 0x24
     d94:	ef000000 	svc	0x00000000
     d98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d9c:	e12fff1e 	bx	lr

00000da0 <getChannel>:
     da0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da4:	e1a04003 	mov	r4, r3
     da8:	e1a03002 	mov	r3, r2
     dac:	e1a02001 	mov	r2, r1
     db0:	e1a01000 	mov	r1, r0
     db4:	e3a00025 	mov	r0, #37	@ 0x25
     db8:	ef000000 	svc	0x00000000
     dbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dc0:	e12fff1e 	bx	lr

00000dc4 <sigChan>:
     dc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dc8:	e1a04003 	mov	r4, r3
     dcc:	e1a03002 	mov	r3, r2
     dd0:	e1a02001 	mov	r2, r1
     dd4:	e1a01000 	mov	r1, r0
     dd8:	e3a00026 	mov	r0, #38	@ 0x26
     ddc:	ef000000 	svc	0x00000000
     de0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     de4:	e12fff1e 	bx	lr

00000de8 <sigOneChan>:
     de8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dec:	e1a04003 	mov	r4, r3
     df0:	e1a03002 	mov	r3, r2
     df4:	e1a02001 	mov	r2, r1
     df8:	e1a01000 	mov	r1, r0
     dfc:	e3a00027 	mov	r0, #39	@ 0x27
     e00:	ef000000 	svc	0x00000000
     e04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e08:	e12fff1e 	bx	lr

00000e0c <putc>:
     e0c:	e92d4800 	push	{fp, lr}
     e10:	e28db004 	add	fp, sp, #4
     e14:	e24dd008 	sub	sp, sp, #8
     e18:	e50b0008 	str	r0, [fp, #-8]
     e1c:	e1a03001 	mov	r3, r1
     e20:	e54b3009 	strb	r3, [fp, #-9]
     e24:	e24b3009 	sub	r3, fp, #9
     e28:	e3a02001 	mov	r2, #1
     e2c:	e1a01003 	mov	r1, r3
     e30:	e51b0008 	ldr	r0, [fp, #-8]
     e34:	ebfffedd 	bl	9b0 <write>
     e38:	e1a00000 	nop			@ (mov r0, r0)
     e3c:	e24bd004 	sub	sp, fp, #4
     e40:	e8bd8800 	pop	{fp, pc}

00000e44 <printint>:
     e44:	e92d4800 	push	{fp, lr}
     e48:	e28db004 	add	fp, sp, #4
     e4c:	e24dd030 	sub	sp, sp, #48	@ 0x30
     e50:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     e54:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     e58:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     e5c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     e60:	e3a03000 	mov	r3, #0
     e64:	e50b300c 	str	r3, [fp, #-12]
     e68:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     e6c:	e3530000 	cmp	r3, #0
     e70:	0a000008 	beq	e98 <printint+0x54>
     e74:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e78:	e3530000 	cmp	r3, #0
     e7c:	aa000005 	bge	e98 <printint+0x54>
     e80:	e3a03001 	mov	r3, #1
     e84:	e50b300c 	str	r3, [fp, #-12]
     e88:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e8c:	e2633000 	rsb	r3, r3, #0
     e90:	e50b3010 	str	r3, [fp, #-16]
     e94:	ea000001 	b	ea0 <printint+0x5c>
     e98:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e9c:	e50b3010 	str	r3, [fp, #-16]
     ea0:	e3a03000 	mov	r3, #0
     ea4:	e50b3008 	str	r3, [fp, #-8]
     ea8:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     eac:	e51b3010 	ldr	r3, [fp, #-16]
     eb0:	e1a01002 	mov	r1, r2
     eb4:	e1a00003 	mov	r0, r3
     eb8:	eb0001d5 	bl	1614 <__aeabi_uidivmod>
     ebc:	e1a03001 	mov	r3, r1
     ec0:	e1a01003 	mov	r1, r3
     ec4:	e51b3008 	ldr	r3, [fp, #-8]
     ec8:	e2832001 	add	r2, r3, #1
     ecc:	e50b2008 	str	r2, [fp, #-8]
     ed0:	e59f20a0 	ldr	r2, [pc, #160]	@ f78 <printint+0x134>
     ed4:	e7d22001 	ldrb	r2, [r2, r1]
     ed8:	e2433004 	sub	r3, r3, #4
     edc:	e083300b 	add	r3, r3, fp
     ee0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ee4:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     ee8:	e1a01003 	mov	r1, r3
     eec:	e51b0010 	ldr	r0, [fp, #-16]
     ef0:	eb00018a 	bl	1520 <__udivsi3>
     ef4:	e1a03000 	mov	r3, r0
     ef8:	e50b3010 	str	r3, [fp, #-16]
     efc:	e51b3010 	ldr	r3, [fp, #-16]
     f00:	e3530000 	cmp	r3, #0
     f04:	1affffe7 	bne	ea8 <printint+0x64>
     f08:	e51b300c 	ldr	r3, [fp, #-12]
     f0c:	e3530000 	cmp	r3, #0
     f10:	0a00000e 	beq	f50 <printint+0x10c>
     f14:	e51b3008 	ldr	r3, [fp, #-8]
     f18:	e2832001 	add	r2, r3, #1
     f1c:	e50b2008 	str	r2, [fp, #-8]
     f20:	e2433004 	sub	r3, r3, #4
     f24:	e083300b 	add	r3, r3, fp
     f28:	e3a0202d 	mov	r2, #45	@ 0x2d
     f2c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f30:	ea000006 	b	f50 <printint+0x10c>
     f34:	e24b2020 	sub	r2, fp, #32
     f38:	e51b3008 	ldr	r3, [fp, #-8]
     f3c:	e0823003 	add	r3, r2, r3
     f40:	e5d33000 	ldrb	r3, [r3]
     f44:	e1a01003 	mov	r1, r3
     f48:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     f4c:	ebffffae 	bl	e0c <putc>
     f50:	e51b3008 	ldr	r3, [fp, #-8]
     f54:	e2433001 	sub	r3, r3, #1
     f58:	e50b3008 	str	r3, [fp, #-8]
     f5c:	e51b3008 	ldr	r3, [fp, #-8]
     f60:	e3530000 	cmp	r3, #0
     f64:	aafffff2 	bge	f34 <printint+0xf0>
     f68:	e1a00000 	nop			@ (mov r0, r0)
     f6c:	e1a00000 	nop			@ (mov r0, r0)
     f70:	e24bd004 	sub	sp, fp, #4
     f74:	e8bd8800 	pop	{fp, pc}
     f78:	000016c8 	.word	0x000016c8

00000f7c <printf>:
     f7c:	e92d000e 	push	{r1, r2, r3}
     f80:	e92d4800 	push	{fp, lr}
     f84:	e28db004 	add	fp, sp, #4
     f88:	e24dd024 	sub	sp, sp, #36	@ 0x24
     f8c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     f90:	e3a03000 	mov	r3, #0
     f94:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f98:	e28b3008 	add	r3, fp, #8
     f9c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fa0:	e3a03000 	mov	r3, #0
     fa4:	e50b3010 	str	r3, [fp, #-16]
     fa8:	ea000074 	b	1180 <printf+0x204>
     fac:	e59b2004 	ldr	r2, [fp, #4]
     fb0:	e51b3010 	ldr	r3, [fp, #-16]
     fb4:	e0823003 	add	r3, r2, r3
     fb8:	e5d33000 	ldrb	r3, [r3]
     fbc:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     fc0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     fc4:	e3530000 	cmp	r3, #0
     fc8:	1a00000b 	bne	ffc <printf+0x80>
     fcc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fd0:	e3530025 	cmp	r3, #37	@ 0x25
     fd4:	1a000002 	bne	fe4 <printf+0x68>
     fd8:	e3a03025 	mov	r3, #37	@ 0x25
     fdc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     fe0:	ea000063 	b	1174 <printf+0x1f8>
     fe4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fe8:	e6ef3073 	uxtb	r3, r3
     fec:	e1a01003 	mov	r1, r3
     ff0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ff4:	ebffff84 	bl	e0c <putc>
     ff8:	ea00005d 	b	1174 <printf+0x1f8>
     ffc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1000:	e3530025 	cmp	r3, #37	@ 0x25
    1004:	1a00005a 	bne	1174 <printf+0x1f8>
    1008:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    100c:	e3530064 	cmp	r3, #100	@ 0x64
    1010:	1a00000a 	bne	1040 <printf+0xc4>
    1014:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1018:	e5933000 	ldr	r3, [r3]
    101c:	e1a01003 	mov	r1, r3
    1020:	e3a03001 	mov	r3, #1
    1024:	e3a0200a 	mov	r2, #10
    1028:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    102c:	ebffff84 	bl	e44 <printint>
    1030:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1034:	e2833004 	add	r3, r3, #4
    1038:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    103c:	ea00004a 	b	116c <printf+0x1f0>
    1040:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1044:	e3530078 	cmp	r3, #120	@ 0x78
    1048:	0a000002 	beq	1058 <printf+0xdc>
    104c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1050:	e3530070 	cmp	r3, #112	@ 0x70
    1054:	1a00000a 	bne	1084 <printf+0x108>
    1058:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    105c:	e5933000 	ldr	r3, [r3]
    1060:	e1a01003 	mov	r1, r3
    1064:	e3a03000 	mov	r3, #0
    1068:	e3a02010 	mov	r2, #16
    106c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1070:	ebffff73 	bl	e44 <printint>
    1074:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1078:	e2833004 	add	r3, r3, #4
    107c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1080:	ea000039 	b	116c <printf+0x1f0>
    1084:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1088:	e3530073 	cmp	r3, #115	@ 0x73
    108c:	1a000018 	bne	10f4 <printf+0x178>
    1090:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1094:	e5933000 	ldr	r3, [r3]
    1098:	e50b300c 	str	r3, [fp, #-12]
    109c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10a0:	e2833004 	add	r3, r3, #4
    10a4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10a8:	e51b300c 	ldr	r3, [fp, #-12]
    10ac:	e3530000 	cmp	r3, #0
    10b0:	1a00000a 	bne	10e0 <printf+0x164>
    10b4:	e59f30f4 	ldr	r3, [pc, #244]	@ 11b0 <printf+0x234>
    10b8:	e50b300c 	str	r3, [fp, #-12]
    10bc:	ea000007 	b	10e0 <printf+0x164>
    10c0:	e51b300c 	ldr	r3, [fp, #-12]
    10c4:	e5d33000 	ldrb	r3, [r3]
    10c8:	e1a01003 	mov	r1, r3
    10cc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10d0:	ebffff4d 	bl	e0c <putc>
    10d4:	e51b300c 	ldr	r3, [fp, #-12]
    10d8:	e2833001 	add	r3, r3, #1
    10dc:	e50b300c 	str	r3, [fp, #-12]
    10e0:	e51b300c 	ldr	r3, [fp, #-12]
    10e4:	e5d33000 	ldrb	r3, [r3]
    10e8:	e3530000 	cmp	r3, #0
    10ec:	1afffff3 	bne	10c0 <printf+0x144>
    10f0:	ea00001d 	b	116c <printf+0x1f0>
    10f4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10f8:	e3530063 	cmp	r3, #99	@ 0x63
    10fc:	1a000009 	bne	1128 <printf+0x1ac>
    1100:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1104:	e5933000 	ldr	r3, [r3]
    1108:	e6ef3073 	uxtb	r3, r3
    110c:	e1a01003 	mov	r1, r3
    1110:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1114:	ebffff3c 	bl	e0c <putc>
    1118:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    111c:	e2833004 	add	r3, r3, #4
    1120:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1124:	ea000010 	b	116c <printf+0x1f0>
    1128:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    112c:	e3530025 	cmp	r3, #37	@ 0x25
    1130:	1a000005 	bne	114c <printf+0x1d0>
    1134:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1138:	e6ef3073 	uxtb	r3, r3
    113c:	e1a01003 	mov	r1, r3
    1140:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1144:	ebffff30 	bl	e0c <putc>
    1148:	ea000007 	b	116c <printf+0x1f0>
    114c:	e3a01025 	mov	r1, #37	@ 0x25
    1150:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1154:	ebffff2c 	bl	e0c <putc>
    1158:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    115c:	e6ef3073 	uxtb	r3, r3
    1160:	e1a01003 	mov	r1, r3
    1164:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1168:	ebffff27 	bl	e0c <putc>
    116c:	e3a03000 	mov	r3, #0
    1170:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1174:	e51b3010 	ldr	r3, [fp, #-16]
    1178:	e2833001 	add	r3, r3, #1
    117c:	e50b3010 	str	r3, [fp, #-16]
    1180:	e59b2004 	ldr	r2, [fp, #4]
    1184:	e51b3010 	ldr	r3, [fp, #-16]
    1188:	e0823003 	add	r3, r2, r3
    118c:	e5d33000 	ldrb	r3, [r3]
    1190:	e3530000 	cmp	r3, #0
    1194:	1affff84 	bne	fac <printf+0x30>
    1198:	e1a00000 	nop			@ (mov r0, r0)
    119c:	e1a00000 	nop			@ (mov r0, r0)
    11a0:	e24bd004 	sub	sp, fp, #4
    11a4:	e8bd4800 	pop	{fp, lr}
    11a8:	e28dd00c 	add	sp, sp, #12
    11ac:	e12fff1e 	bx	lr
    11b0:	000016c0 	.word	0x000016c0

000011b4 <free>:
    11b4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    11b8:	e28db000 	add	fp, sp, #0
    11bc:	e24dd014 	sub	sp, sp, #20
    11c0:	e50b0010 	str	r0, [fp, #-16]
    11c4:	e51b3010 	ldr	r3, [fp, #-16]
    11c8:	e2433008 	sub	r3, r3, #8
    11cc:	e50b300c 	str	r3, [fp, #-12]
    11d0:	e59f3154 	ldr	r3, [pc, #340]	@ 132c <free+0x178>
    11d4:	e5933000 	ldr	r3, [r3]
    11d8:	e50b3008 	str	r3, [fp, #-8]
    11dc:	ea000010 	b	1224 <free+0x70>
    11e0:	e51b3008 	ldr	r3, [fp, #-8]
    11e4:	e5933000 	ldr	r3, [r3]
    11e8:	e51b2008 	ldr	r2, [fp, #-8]
    11ec:	e1520003 	cmp	r2, r3
    11f0:	3a000008 	bcc	1218 <free+0x64>
    11f4:	e51b200c 	ldr	r2, [fp, #-12]
    11f8:	e51b3008 	ldr	r3, [fp, #-8]
    11fc:	e1520003 	cmp	r2, r3
    1200:	8a000010 	bhi	1248 <free+0x94>
    1204:	e51b3008 	ldr	r3, [fp, #-8]
    1208:	e5933000 	ldr	r3, [r3]
    120c:	e51b200c 	ldr	r2, [fp, #-12]
    1210:	e1520003 	cmp	r2, r3
    1214:	3a00000b 	bcc	1248 <free+0x94>
    1218:	e51b3008 	ldr	r3, [fp, #-8]
    121c:	e5933000 	ldr	r3, [r3]
    1220:	e50b3008 	str	r3, [fp, #-8]
    1224:	e51b200c 	ldr	r2, [fp, #-12]
    1228:	e51b3008 	ldr	r3, [fp, #-8]
    122c:	e1520003 	cmp	r2, r3
    1230:	9affffea 	bls	11e0 <free+0x2c>
    1234:	e51b3008 	ldr	r3, [fp, #-8]
    1238:	e5933000 	ldr	r3, [r3]
    123c:	e51b200c 	ldr	r2, [fp, #-12]
    1240:	e1520003 	cmp	r2, r3
    1244:	2affffe5 	bcs	11e0 <free+0x2c>
    1248:	e51b300c 	ldr	r3, [fp, #-12]
    124c:	e5933004 	ldr	r3, [r3, #4]
    1250:	e1a03183 	lsl	r3, r3, #3
    1254:	e51b200c 	ldr	r2, [fp, #-12]
    1258:	e0822003 	add	r2, r2, r3
    125c:	e51b3008 	ldr	r3, [fp, #-8]
    1260:	e5933000 	ldr	r3, [r3]
    1264:	e1520003 	cmp	r2, r3
    1268:	1a00000d 	bne	12a4 <free+0xf0>
    126c:	e51b300c 	ldr	r3, [fp, #-12]
    1270:	e5932004 	ldr	r2, [r3, #4]
    1274:	e51b3008 	ldr	r3, [fp, #-8]
    1278:	e5933000 	ldr	r3, [r3]
    127c:	e5933004 	ldr	r3, [r3, #4]
    1280:	e0822003 	add	r2, r2, r3
    1284:	e51b300c 	ldr	r3, [fp, #-12]
    1288:	e5832004 	str	r2, [r3, #4]
    128c:	e51b3008 	ldr	r3, [fp, #-8]
    1290:	e5933000 	ldr	r3, [r3]
    1294:	e5932000 	ldr	r2, [r3]
    1298:	e51b300c 	ldr	r3, [fp, #-12]
    129c:	e5832000 	str	r2, [r3]
    12a0:	ea000003 	b	12b4 <free+0x100>
    12a4:	e51b3008 	ldr	r3, [fp, #-8]
    12a8:	e5932000 	ldr	r2, [r3]
    12ac:	e51b300c 	ldr	r3, [fp, #-12]
    12b0:	e5832000 	str	r2, [r3]
    12b4:	e51b3008 	ldr	r3, [fp, #-8]
    12b8:	e5933004 	ldr	r3, [r3, #4]
    12bc:	e1a03183 	lsl	r3, r3, #3
    12c0:	e51b2008 	ldr	r2, [fp, #-8]
    12c4:	e0823003 	add	r3, r2, r3
    12c8:	e51b200c 	ldr	r2, [fp, #-12]
    12cc:	e1520003 	cmp	r2, r3
    12d0:	1a00000b 	bne	1304 <free+0x150>
    12d4:	e51b3008 	ldr	r3, [fp, #-8]
    12d8:	e5932004 	ldr	r2, [r3, #4]
    12dc:	e51b300c 	ldr	r3, [fp, #-12]
    12e0:	e5933004 	ldr	r3, [r3, #4]
    12e4:	e0822003 	add	r2, r2, r3
    12e8:	e51b3008 	ldr	r3, [fp, #-8]
    12ec:	e5832004 	str	r2, [r3, #4]
    12f0:	e51b300c 	ldr	r3, [fp, #-12]
    12f4:	e5932000 	ldr	r2, [r3]
    12f8:	e51b3008 	ldr	r3, [fp, #-8]
    12fc:	e5832000 	str	r2, [r3]
    1300:	ea000002 	b	1310 <free+0x15c>
    1304:	e51b3008 	ldr	r3, [fp, #-8]
    1308:	e51b200c 	ldr	r2, [fp, #-12]
    130c:	e5832000 	str	r2, [r3]
    1310:	e59f2014 	ldr	r2, [pc, #20]	@ 132c <free+0x178>
    1314:	e51b3008 	ldr	r3, [fp, #-8]
    1318:	e5823000 	str	r3, [r2]
    131c:	e1a00000 	nop			@ (mov r0, r0)
    1320:	e28bd000 	add	sp, fp, #0
    1324:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1328:	e12fff1e 	bx	lr
    132c:	000016e4 	.word	0x000016e4

00001330 <morecore>:
    1330:	e92d4800 	push	{fp, lr}
    1334:	e28db004 	add	fp, sp, #4
    1338:	e24dd010 	sub	sp, sp, #16
    133c:	e50b0010 	str	r0, [fp, #-16]
    1340:	e51b3010 	ldr	r3, [fp, #-16]
    1344:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1348:	2a000001 	bcs	1354 <morecore+0x24>
    134c:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1350:	e50b3010 	str	r3, [fp, #-16]
    1354:	e51b3010 	ldr	r3, [fp, #-16]
    1358:	e1a03183 	lsl	r3, r3, #3
    135c:	e1a00003 	mov	r0, r3
    1360:	ebfffe07 	bl	b84 <sbrk>
    1364:	e50b0008 	str	r0, [fp, #-8]
    1368:	e51b3008 	ldr	r3, [fp, #-8]
    136c:	e3730001 	cmn	r3, #1
    1370:	1a000001 	bne	137c <morecore+0x4c>
    1374:	e3a03000 	mov	r3, #0
    1378:	ea00000a 	b	13a8 <morecore+0x78>
    137c:	e51b3008 	ldr	r3, [fp, #-8]
    1380:	e50b300c 	str	r3, [fp, #-12]
    1384:	e51b300c 	ldr	r3, [fp, #-12]
    1388:	e51b2010 	ldr	r2, [fp, #-16]
    138c:	e5832004 	str	r2, [r3, #4]
    1390:	e51b300c 	ldr	r3, [fp, #-12]
    1394:	e2833008 	add	r3, r3, #8
    1398:	e1a00003 	mov	r0, r3
    139c:	ebffff84 	bl	11b4 <free>
    13a0:	e59f300c 	ldr	r3, [pc, #12]	@ 13b4 <morecore+0x84>
    13a4:	e5933000 	ldr	r3, [r3]
    13a8:	e1a00003 	mov	r0, r3
    13ac:	e24bd004 	sub	sp, fp, #4
    13b0:	e8bd8800 	pop	{fp, pc}
    13b4:	000016e4 	.word	0x000016e4

000013b8 <malloc>:
    13b8:	e92d4800 	push	{fp, lr}
    13bc:	e28db004 	add	fp, sp, #4
    13c0:	e24dd018 	sub	sp, sp, #24
    13c4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    13c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13cc:	e2833007 	add	r3, r3, #7
    13d0:	e1a031a3 	lsr	r3, r3, #3
    13d4:	e2833001 	add	r3, r3, #1
    13d8:	e50b3010 	str	r3, [fp, #-16]
    13dc:	e59f3134 	ldr	r3, [pc, #308]	@ 1518 <malloc+0x160>
    13e0:	e5933000 	ldr	r3, [r3]
    13e4:	e50b300c 	str	r3, [fp, #-12]
    13e8:	e51b300c 	ldr	r3, [fp, #-12]
    13ec:	e3530000 	cmp	r3, #0
    13f0:	1a00000b 	bne	1424 <malloc+0x6c>
    13f4:	e59f3120 	ldr	r3, [pc, #288]	@ 151c <malloc+0x164>
    13f8:	e50b300c 	str	r3, [fp, #-12]
    13fc:	e59f2114 	ldr	r2, [pc, #276]	@ 1518 <malloc+0x160>
    1400:	e51b300c 	ldr	r3, [fp, #-12]
    1404:	e5823000 	str	r3, [r2]
    1408:	e59f3108 	ldr	r3, [pc, #264]	@ 1518 <malloc+0x160>
    140c:	e5933000 	ldr	r3, [r3]
    1410:	e59f2104 	ldr	r2, [pc, #260]	@ 151c <malloc+0x164>
    1414:	e5823000 	str	r3, [r2]
    1418:	e59f30fc 	ldr	r3, [pc, #252]	@ 151c <malloc+0x164>
    141c:	e3a02000 	mov	r2, #0
    1420:	e5832004 	str	r2, [r3, #4]
    1424:	e51b300c 	ldr	r3, [fp, #-12]
    1428:	e5933000 	ldr	r3, [r3]
    142c:	e50b3008 	str	r3, [fp, #-8]
    1430:	e51b3008 	ldr	r3, [fp, #-8]
    1434:	e5933004 	ldr	r3, [r3, #4]
    1438:	e51b2010 	ldr	r2, [fp, #-16]
    143c:	e1520003 	cmp	r2, r3
    1440:	8a00001e 	bhi	14c0 <malloc+0x108>
    1444:	e51b3008 	ldr	r3, [fp, #-8]
    1448:	e5933004 	ldr	r3, [r3, #4]
    144c:	e51b2010 	ldr	r2, [fp, #-16]
    1450:	e1520003 	cmp	r2, r3
    1454:	1a000004 	bne	146c <malloc+0xb4>
    1458:	e51b3008 	ldr	r3, [fp, #-8]
    145c:	e5932000 	ldr	r2, [r3]
    1460:	e51b300c 	ldr	r3, [fp, #-12]
    1464:	e5832000 	str	r2, [r3]
    1468:	ea00000e 	b	14a8 <malloc+0xf0>
    146c:	e51b3008 	ldr	r3, [fp, #-8]
    1470:	e5932004 	ldr	r2, [r3, #4]
    1474:	e51b3010 	ldr	r3, [fp, #-16]
    1478:	e0422003 	sub	r2, r2, r3
    147c:	e51b3008 	ldr	r3, [fp, #-8]
    1480:	e5832004 	str	r2, [r3, #4]
    1484:	e51b3008 	ldr	r3, [fp, #-8]
    1488:	e5933004 	ldr	r3, [r3, #4]
    148c:	e1a03183 	lsl	r3, r3, #3
    1490:	e51b2008 	ldr	r2, [fp, #-8]
    1494:	e0823003 	add	r3, r2, r3
    1498:	e50b3008 	str	r3, [fp, #-8]
    149c:	e51b3008 	ldr	r3, [fp, #-8]
    14a0:	e51b2010 	ldr	r2, [fp, #-16]
    14a4:	e5832004 	str	r2, [r3, #4]
    14a8:	e59f2068 	ldr	r2, [pc, #104]	@ 1518 <malloc+0x160>
    14ac:	e51b300c 	ldr	r3, [fp, #-12]
    14b0:	e5823000 	str	r3, [r2]
    14b4:	e51b3008 	ldr	r3, [fp, #-8]
    14b8:	e2833008 	add	r3, r3, #8
    14bc:	ea000012 	b	150c <malloc+0x154>
    14c0:	e59f3050 	ldr	r3, [pc, #80]	@ 1518 <malloc+0x160>
    14c4:	e5933000 	ldr	r3, [r3]
    14c8:	e51b2008 	ldr	r2, [fp, #-8]
    14cc:	e1520003 	cmp	r2, r3
    14d0:	1a000007 	bne	14f4 <malloc+0x13c>
    14d4:	e51b0010 	ldr	r0, [fp, #-16]
    14d8:	ebffff94 	bl	1330 <morecore>
    14dc:	e50b0008 	str	r0, [fp, #-8]
    14e0:	e51b3008 	ldr	r3, [fp, #-8]
    14e4:	e3530000 	cmp	r3, #0
    14e8:	1a000001 	bne	14f4 <malloc+0x13c>
    14ec:	e3a03000 	mov	r3, #0
    14f0:	ea000005 	b	150c <malloc+0x154>
    14f4:	e51b3008 	ldr	r3, [fp, #-8]
    14f8:	e50b300c 	str	r3, [fp, #-12]
    14fc:	e51b3008 	ldr	r3, [fp, #-8]
    1500:	e5933000 	ldr	r3, [r3]
    1504:	e50b3008 	str	r3, [fp, #-8]
    1508:	eaffffc8 	b	1430 <malloc+0x78>
    150c:	e1a00003 	mov	r0, r3
    1510:	e24bd004 	sub	sp, fp, #4
    1514:	e8bd8800 	pop	{fp, pc}
    1518:	000016e4 	.word	0x000016e4
    151c:	000016dc 	.word	0x000016dc

00001520 <__udivsi3>:
    1520:	e2512001 	subs	r2, r1, #1
    1524:	012fff1e 	bxeq	lr
    1528:	3a000036 	bcc	1608 <__udivsi3+0xe8>
    152c:	e1500001 	cmp	r0, r1
    1530:	9a000022 	bls	15c0 <__udivsi3+0xa0>
    1534:	e1110002 	tst	r1, r2
    1538:	0a000023 	beq	15cc <__udivsi3+0xac>
    153c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1540:	01a01181 	lsleq	r1, r1, #3
    1544:	03a03008 	moveq	r3, #8
    1548:	13a03001 	movne	r3, #1
    154c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1550:	31510000 	cmpcc	r1, r0
    1554:	31a01201 	lslcc	r1, r1, #4
    1558:	31a03203 	lslcc	r3, r3, #4
    155c:	3afffffa 	bcc	154c <__udivsi3+0x2c>
    1560:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1564:	31510000 	cmpcc	r1, r0
    1568:	31a01081 	lslcc	r1, r1, #1
    156c:	31a03083 	lslcc	r3, r3, #1
    1570:	3afffffa 	bcc	1560 <__udivsi3+0x40>
    1574:	e3a02000 	mov	r2, #0
    1578:	e1500001 	cmp	r0, r1
    157c:	20400001 	subcs	r0, r0, r1
    1580:	21822003 	orrcs	r2, r2, r3
    1584:	e15000a1 	cmp	r0, r1, lsr #1
    1588:	204000a1 	subcs	r0, r0, r1, lsr #1
    158c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1590:	e1500121 	cmp	r0, r1, lsr #2
    1594:	20400121 	subcs	r0, r0, r1, lsr #2
    1598:	21822123 	orrcs	r2, r2, r3, lsr #2
    159c:	e15001a1 	cmp	r0, r1, lsr #3
    15a0:	204001a1 	subcs	r0, r0, r1, lsr #3
    15a4:	218221a3 	orrcs	r2, r2, r3, lsr #3
    15a8:	e3500000 	cmp	r0, #0
    15ac:	11b03223 	lsrsne	r3, r3, #4
    15b0:	11a01221 	lsrne	r1, r1, #4
    15b4:	1affffef 	bne	1578 <__udivsi3+0x58>
    15b8:	e1a00002 	mov	r0, r2
    15bc:	e12fff1e 	bx	lr
    15c0:	03a00001 	moveq	r0, #1
    15c4:	13a00000 	movne	r0, #0
    15c8:	e12fff1e 	bx	lr
    15cc:	e3510801 	cmp	r1, #65536	@ 0x10000
    15d0:	21a01821 	lsrcs	r1, r1, #16
    15d4:	23a02010 	movcs	r2, #16
    15d8:	33a02000 	movcc	r2, #0
    15dc:	e3510c01 	cmp	r1, #256	@ 0x100
    15e0:	21a01421 	lsrcs	r1, r1, #8
    15e4:	22822008 	addcs	r2, r2, #8
    15e8:	e3510010 	cmp	r1, #16
    15ec:	21a01221 	lsrcs	r1, r1, #4
    15f0:	22822004 	addcs	r2, r2, #4
    15f4:	e3510004 	cmp	r1, #4
    15f8:	82822003 	addhi	r2, r2, #3
    15fc:	908220a1 	addls	r2, r2, r1, lsr #1
    1600:	e1a00230 	lsr	r0, r0, r2
    1604:	e12fff1e 	bx	lr
    1608:	e3500000 	cmp	r0, #0
    160c:	13e00000 	mvnne	r0, #0
    1610:	ea000007 	b	1634 <__aeabi_idiv0>

00001614 <__aeabi_uidivmod>:
    1614:	e3510000 	cmp	r1, #0
    1618:	0afffffa 	beq	1608 <__udivsi3+0xe8>
    161c:	e92d4003 	push	{r0, r1, lr}
    1620:	ebffffbe 	bl	1520 <__udivsi3>
    1624:	e8bd4006 	pop	{r1, r2, lr}
    1628:	e0030092 	mul	r3, r2, r0
    162c:	e0411003 	sub	r1, r1, r3
    1630:	e12fff1e 	bx	lr

00001634 <__aeabi_idiv0>:
    1634:	e12fff1e 	bx	lr
