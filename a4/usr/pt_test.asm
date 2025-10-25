
_pt_test:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e59f1070 	ldr	r1, [pc, #112]	@ 84 <main+0x84>
      10:	e3a00001 	mov	r0, #1
      14:	eb00039f 	bl	e98 <printf>
      18:	e3a00a05 	mov	r0, #20480	@ 0x5000
      1c:	eb0004ac 	bl	12d4 <malloc>
      20:	e50b0008 	str	r0, [fp, #-8]
      24:	e51b3008 	ldr	r3, [fp, #-8]
      28:	e3530000 	cmp	r3, #0
      2c:	1a000003 	bne	40 <main+0x40>
      30:	e59f1050 	ldr	r1, [pc, #80]	@ 88 <main+0x88>
      34:	e3a00002 	mov	r0, #2
      38:	eb000396 	bl	e98 <printf>
      3c:	eb0001fe 	bl	83c <exit>
      40:	e51b3008 	ldr	r3, [fp, #-8]
      44:	e3a02061 	mov	r2, #97	@ 0x61
      48:	e5c32000 	strb	r2, [r3]
      4c:	e51b3008 	ldr	r3, [fp, #-8]
      50:	e2833a01 	add	r3, r3, #4096	@ 0x1000
      54:	e3a02062 	mov	r2, #98	@ 0x62
      58:	e5c32000 	strb	r2, [r3]
      5c:	e59f1028 	ldr	r1, [pc, #40]	@ 8c <main+0x8c>
      60:	e3a00001 	mov	r0, #1
      64:	eb00038b 	bl	e98 <printf>
      68:	eb0002cb 	bl	b9c <dumppagetable>
      6c:	e59f101c 	ldr	r1, [pc, #28]	@ 90 <main+0x90>
      70:	e3a00001 	mov	r0, #1
      74:	eb000387 	bl	e98 <printf>
      78:	e51b0008 	ldr	r0, [fp, #-8]
      7c:	eb000413 	bl	10d0 <free>
      80:	eb0001ed 	bl	83c <exit>
      84:	00001554 	.word	0x00001554
      88:	0000157c 	.word	0x0000157c
      8c:	00001594 	.word	0x00001594
      90:	000015bc 	.word	0x000015bc

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
     388:	eb000146 	bl	8a8 <read>
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
     430:	eb000149 	bl	95c <open>
     434:	e50b0008 	str	r0, [fp, #-8]
     438:	e51b3008 	ldr	r3, [fp, #-8]
     43c:	e3530000 	cmp	r3, #0
     440:	aa000001 	bge	44c <stat+0x38>
     444:	e3e03000 	mvn	r3, #0
     448:	ea000006 	b	468 <stat+0x54>
     44c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     450:	e51b0008 	ldr	r0, [fp, #-8]
     454:	eb00015b 	bl	9c8 <fstat>
     458:	e50b000c 	str	r0, [fp, #-12]
     45c:	e51b0008 	ldr	r0, [fp, #-8]
     460:	eb000122 	bl	8f0 <close>
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

000005bc <acquireLock>:
     5bc:	e92d4800 	push	{fp, lr}
     5c0:	e28db004 	add	fp, sp, #4
     5c4:	e24dd008 	sub	sp, sp, #8
     5c8:	e50b0008 	str	r0, [fp, #-8]
     5cc:	ea000001 	b	5d8 <acquireLock+0x1c>
     5d0:	e3a00001 	mov	r0, #1
     5d4:	eb00013a 	bl	ac4 <sleep>
     5d8:	e51b2008 	ldr	r2, [fp, #-8]
     5dc:	e3a01001 	mov	r1, #1
     5e0:	e1923f9f 	ldrex	r3, [r2]
     5e4:	e1820f91 	strex	r0, r1, [r2]
     5e8:	e3500000 	cmp	r0, #0
     5ec:	1afffffb 	bne	5e0 <acquireLock+0x24>
     5f0:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     5f4:	e3530001 	cmp	r3, #1
     5f8:	0afffff4 	beq	5d0 <acquireLock+0x14>
     5fc:	e1a00000 	nop			@ (mov r0, r0)
     600:	e1a00000 	nop			@ (mov r0, r0)
     604:	e24bd004 	sub	sp, fp, #4
     608:	e8bd8800 	pop	{fp, pc}

0000060c <releaseLock>:
     60c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     610:	e28db000 	add	fp, sp, #0
     614:	e24dd00c 	sub	sp, sp, #12
     618:	e50b0008 	str	r0, [fp, #-8]
     61c:	e51b3008 	ldr	r3, [fp, #-8]
     620:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     624:	e3a02000 	mov	r2, #0
     628:	e5832000 	str	r2, [r3]
     62c:	e1a00000 	nop			@ (mov r0, r0)
     630:	e28bd000 	add	sp, fp, #0
     634:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     638:	e12fff1e 	bx	lr

0000063c <initiateCondVar>:
     63c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     640:	e28db000 	add	fp, sp, #0
     644:	e24dd00c 	sub	sp, sp, #12
     648:	e50b0008 	str	r0, [fp, #-8]
     64c:	e51b3008 	ldr	r3, [fp, #-8]
     650:	e3a02000 	mov	r2, #0
     654:	e5832000 	str	r2, [r3]
     658:	e51b3008 	ldr	r3, [fp, #-8]
     65c:	e3a02001 	mov	r2, #1
     660:	e5832004 	str	r2, [r3, #4]
     664:	e1a00000 	nop			@ (mov r0, r0)
     668:	e28bd000 	add	sp, fp, #0
     66c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     670:	e12fff1e 	bx	lr

00000674 <condWait>:
     674:	e92d4800 	push	{fp, lr}
     678:	e28db004 	add	fp, sp, #4
     67c:	e24dd008 	sub	sp, sp, #8
     680:	e50b0008 	str	r0, [fp, #-8]
     684:	e50b100c 	str	r1, [fp, #-12]
     688:	e51b000c 	ldr	r0, [fp, #-12]
     68c:	ebffffde 	bl	60c <releaseLock>
     690:	e51b3008 	ldr	r3, [fp, #-8]
     694:	e5933000 	ldr	r3, [r3]
     698:	e1a00003 	mov	r0, r3
     69c:	eb00017d 	bl	c98 <sleepChan>
     6a0:	e51b000c 	ldr	r0, [fp, #-12]
     6a4:	ebffffc4 	bl	5bc <acquireLock>
     6a8:	e1a00000 	nop			@ (mov r0, r0)
     6ac:	e24bd004 	sub	sp, fp, #4
     6b0:	e8bd8800 	pop	{fp, pc}

000006b4 <broadcast>:
     6b4:	e92d4800 	push	{fp, lr}
     6b8:	e28db004 	add	fp, sp, #4
     6bc:	e24dd008 	sub	sp, sp, #8
     6c0:	e50b0008 	str	r0, [fp, #-8]
     6c4:	e51b3008 	ldr	r3, [fp, #-8]
     6c8:	e5933000 	ldr	r3, [r3]
     6cc:	e1a00003 	mov	r0, r3
     6d0:	eb000182 	bl	ce0 <sigChan>
     6d4:	e1a00000 	nop			@ (mov r0, r0)
     6d8:	e24bd004 	sub	sp, fp, #4
     6dc:	e8bd8800 	pop	{fp, pc}

000006e0 <semInit>:
     6e0:	e92d4800 	push	{fp, lr}
     6e4:	e28db004 	add	fp, sp, #4
     6e8:	e24dd008 	sub	sp, sp, #8
     6ec:	e50b0008 	str	r0, [fp, #-8]
     6f0:	e50b100c 	str	r1, [fp, #-12]
     6f4:	e51b3008 	ldr	r3, [fp, #-8]
     6f8:	e51b200c 	ldr	r2, [fp, #-12]
     6fc:	e5832000 	str	r2, [r3]
     700:	e51b3008 	ldr	r3, [fp, #-8]
     704:	e2833004 	add	r3, r3, #4
     708:	e1a00003 	mov	r0, r3
     70c:	ebffff9c 	bl	584 <initiateLock>
     710:	e51b3008 	ldr	r3, [fp, #-8]
     714:	e283300c 	add	r3, r3, #12
     718:	e1a00003 	mov	r0, r3
     71c:	ebffffc6 	bl	63c <initiateCondVar>
     720:	e51b3008 	ldr	r3, [fp, #-8]
     724:	e3a02001 	mov	r2, #1
     728:	e5832014 	str	r2, [r3, #20]
     72c:	e1a00000 	nop			@ (mov r0, r0)
     730:	e24bd004 	sub	sp, fp, #4
     734:	e8bd8800 	pop	{fp, pc}

00000738 <semUp>:
     738:	e92d4800 	push	{fp, lr}
     73c:	e28db004 	add	fp, sp, #4
     740:	e24dd008 	sub	sp, sp, #8
     744:	e50b0008 	str	r0, [fp, #-8]
     748:	e51b3008 	ldr	r3, [fp, #-8]
     74c:	e2833004 	add	r3, r3, #4
     750:	e1a00003 	mov	r0, r3
     754:	ebffff98 	bl	5bc <acquireLock>
     758:	e51b3008 	ldr	r3, [fp, #-8]
     75c:	e5933000 	ldr	r3, [r3]
     760:	e2832001 	add	r2, r3, #1
     764:	e51b3008 	ldr	r3, [fp, #-8]
     768:	e5832000 	str	r2, [r3]
     76c:	e51b3008 	ldr	r3, [fp, #-8]
     770:	e283300c 	add	r3, r3, #12
     774:	e1a00003 	mov	r0, r3
     778:	ebffffcd 	bl	6b4 <broadcast>
     77c:	e51b3008 	ldr	r3, [fp, #-8]
     780:	e2833004 	add	r3, r3, #4
     784:	e1a00003 	mov	r0, r3
     788:	ebffff9f 	bl	60c <releaseLock>
     78c:	e1a00000 	nop			@ (mov r0, r0)
     790:	e24bd004 	sub	sp, fp, #4
     794:	e8bd8800 	pop	{fp, pc}

00000798 <semDown>:
     798:	e92d4800 	push	{fp, lr}
     79c:	e28db004 	add	fp, sp, #4
     7a0:	e24dd008 	sub	sp, sp, #8
     7a4:	e50b0008 	str	r0, [fp, #-8]
     7a8:	e51b3008 	ldr	r3, [fp, #-8]
     7ac:	e2833004 	add	r3, r3, #4
     7b0:	e1a00003 	mov	r0, r3
     7b4:	ebffff80 	bl	5bc <acquireLock>
     7b8:	ea000006 	b	7d8 <semDown+0x40>
     7bc:	e51b3008 	ldr	r3, [fp, #-8]
     7c0:	e283200c 	add	r2, r3, #12
     7c4:	e51b3008 	ldr	r3, [fp, #-8]
     7c8:	e2833004 	add	r3, r3, #4
     7cc:	e1a01003 	mov	r1, r3
     7d0:	e1a00002 	mov	r0, r2
     7d4:	ebffffa6 	bl	674 <condWait>
     7d8:	e51b3008 	ldr	r3, [fp, #-8]
     7dc:	e5933000 	ldr	r3, [r3]
     7e0:	e3530000 	cmp	r3, #0
     7e4:	dafffff4 	ble	7bc <semDown+0x24>
     7e8:	e51b3008 	ldr	r3, [fp, #-8]
     7ec:	e5933000 	ldr	r3, [r3]
     7f0:	e2432001 	sub	r2, r3, #1
     7f4:	e51b3008 	ldr	r3, [fp, #-8]
     7f8:	e5832000 	str	r2, [r3]
     7fc:	e51b3008 	ldr	r3, [fp, #-8]
     800:	e2833004 	add	r3, r3, #4
     804:	e1a00003 	mov	r0, r3
     808:	ebffff7f 	bl	60c <releaseLock>
     80c:	e1a00000 	nop			@ (mov r0, r0)
     810:	e24bd004 	sub	sp, fp, #4
     814:	e8bd8800 	pop	{fp, pc}

00000818 <fork>:
     818:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     81c:	e1a04003 	mov	r4, r3
     820:	e1a03002 	mov	r3, r2
     824:	e1a02001 	mov	r2, r1
     828:	e1a01000 	mov	r1, r0
     82c:	e3a00001 	mov	r0, #1
     830:	ef000000 	svc	0x00000000
     834:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     838:	e12fff1e 	bx	lr

0000083c <exit>:
     83c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     840:	e1a04003 	mov	r4, r3
     844:	e1a03002 	mov	r3, r2
     848:	e1a02001 	mov	r2, r1
     84c:	e1a01000 	mov	r1, r0
     850:	e3a00002 	mov	r0, #2
     854:	ef000000 	svc	0x00000000
     858:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     85c:	e12fff1e 	bx	lr

00000860 <wait>:
     860:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     864:	e1a04003 	mov	r4, r3
     868:	e1a03002 	mov	r3, r2
     86c:	e1a02001 	mov	r2, r1
     870:	e1a01000 	mov	r1, r0
     874:	e3a00003 	mov	r0, #3
     878:	ef000000 	svc	0x00000000
     87c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     880:	e12fff1e 	bx	lr

00000884 <pipe>:
     884:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     888:	e1a04003 	mov	r4, r3
     88c:	e1a03002 	mov	r3, r2
     890:	e1a02001 	mov	r2, r1
     894:	e1a01000 	mov	r1, r0
     898:	e3a00004 	mov	r0, #4
     89c:	ef000000 	svc	0x00000000
     8a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a4:	e12fff1e 	bx	lr

000008a8 <read>:
     8a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8ac:	e1a04003 	mov	r4, r3
     8b0:	e1a03002 	mov	r3, r2
     8b4:	e1a02001 	mov	r2, r1
     8b8:	e1a01000 	mov	r1, r0
     8bc:	e3a00005 	mov	r0, #5
     8c0:	ef000000 	svc	0x00000000
     8c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c8:	e12fff1e 	bx	lr

000008cc <write>:
     8cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8d0:	e1a04003 	mov	r4, r3
     8d4:	e1a03002 	mov	r3, r2
     8d8:	e1a02001 	mov	r2, r1
     8dc:	e1a01000 	mov	r1, r0
     8e0:	e3a00010 	mov	r0, #16
     8e4:	ef000000 	svc	0x00000000
     8e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8ec:	e12fff1e 	bx	lr

000008f0 <close>:
     8f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8f4:	e1a04003 	mov	r4, r3
     8f8:	e1a03002 	mov	r3, r2
     8fc:	e1a02001 	mov	r2, r1
     900:	e1a01000 	mov	r1, r0
     904:	e3a00015 	mov	r0, #21
     908:	ef000000 	svc	0x00000000
     90c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     910:	e12fff1e 	bx	lr

00000914 <kill>:
     914:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     918:	e1a04003 	mov	r4, r3
     91c:	e1a03002 	mov	r3, r2
     920:	e1a02001 	mov	r2, r1
     924:	e1a01000 	mov	r1, r0
     928:	e3a00006 	mov	r0, #6
     92c:	ef000000 	svc	0x00000000
     930:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     934:	e12fff1e 	bx	lr

00000938 <exec>:
     938:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     93c:	e1a04003 	mov	r4, r3
     940:	e1a03002 	mov	r3, r2
     944:	e1a02001 	mov	r2, r1
     948:	e1a01000 	mov	r1, r0
     94c:	e3a00007 	mov	r0, #7
     950:	ef000000 	svc	0x00000000
     954:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     958:	e12fff1e 	bx	lr

0000095c <open>:
     95c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     960:	e1a04003 	mov	r4, r3
     964:	e1a03002 	mov	r3, r2
     968:	e1a02001 	mov	r2, r1
     96c:	e1a01000 	mov	r1, r0
     970:	e3a0000f 	mov	r0, #15
     974:	ef000000 	svc	0x00000000
     978:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     97c:	e12fff1e 	bx	lr

00000980 <mknod>:
     980:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     984:	e1a04003 	mov	r4, r3
     988:	e1a03002 	mov	r3, r2
     98c:	e1a02001 	mov	r2, r1
     990:	e1a01000 	mov	r1, r0
     994:	e3a00011 	mov	r0, #17
     998:	ef000000 	svc	0x00000000
     99c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a0:	e12fff1e 	bx	lr

000009a4 <unlink>:
     9a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a8:	e1a04003 	mov	r4, r3
     9ac:	e1a03002 	mov	r3, r2
     9b0:	e1a02001 	mov	r2, r1
     9b4:	e1a01000 	mov	r1, r0
     9b8:	e3a00012 	mov	r0, #18
     9bc:	ef000000 	svc	0x00000000
     9c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c4:	e12fff1e 	bx	lr

000009c8 <fstat>:
     9c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9cc:	e1a04003 	mov	r4, r3
     9d0:	e1a03002 	mov	r3, r2
     9d4:	e1a02001 	mov	r2, r1
     9d8:	e1a01000 	mov	r1, r0
     9dc:	e3a00008 	mov	r0, #8
     9e0:	ef000000 	svc	0x00000000
     9e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e8:	e12fff1e 	bx	lr

000009ec <link>:
     9ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f0:	e1a04003 	mov	r4, r3
     9f4:	e1a03002 	mov	r3, r2
     9f8:	e1a02001 	mov	r2, r1
     9fc:	e1a01000 	mov	r1, r0
     a00:	e3a00013 	mov	r0, #19
     a04:	ef000000 	svc	0x00000000
     a08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a0c:	e12fff1e 	bx	lr

00000a10 <mkdir>:
     a10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a14:	e1a04003 	mov	r4, r3
     a18:	e1a03002 	mov	r3, r2
     a1c:	e1a02001 	mov	r2, r1
     a20:	e1a01000 	mov	r1, r0
     a24:	e3a00014 	mov	r0, #20
     a28:	ef000000 	svc	0x00000000
     a2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a30:	e12fff1e 	bx	lr

00000a34 <chdir>:
     a34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a38:	e1a04003 	mov	r4, r3
     a3c:	e1a03002 	mov	r3, r2
     a40:	e1a02001 	mov	r2, r1
     a44:	e1a01000 	mov	r1, r0
     a48:	e3a00009 	mov	r0, #9
     a4c:	ef000000 	svc	0x00000000
     a50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a54:	e12fff1e 	bx	lr

00000a58 <dup>:
     a58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a5c:	e1a04003 	mov	r4, r3
     a60:	e1a03002 	mov	r3, r2
     a64:	e1a02001 	mov	r2, r1
     a68:	e1a01000 	mov	r1, r0
     a6c:	e3a0000a 	mov	r0, #10
     a70:	ef000000 	svc	0x00000000
     a74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a78:	e12fff1e 	bx	lr

00000a7c <getpid>:
     a7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a80:	e1a04003 	mov	r4, r3
     a84:	e1a03002 	mov	r3, r2
     a88:	e1a02001 	mov	r2, r1
     a8c:	e1a01000 	mov	r1, r0
     a90:	e3a0000b 	mov	r0, #11
     a94:	ef000000 	svc	0x00000000
     a98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a9c:	e12fff1e 	bx	lr

00000aa0 <sbrk>:
     aa0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa4:	e1a04003 	mov	r4, r3
     aa8:	e1a03002 	mov	r3, r2
     aac:	e1a02001 	mov	r2, r1
     ab0:	e1a01000 	mov	r1, r0
     ab4:	e3a0000c 	mov	r0, #12
     ab8:	ef000000 	svc	0x00000000
     abc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac0:	e12fff1e 	bx	lr

00000ac4 <sleep>:
     ac4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac8:	e1a04003 	mov	r4, r3
     acc:	e1a03002 	mov	r3, r2
     ad0:	e1a02001 	mov	r2, r1
     ad4:	e1a01000 	mov	r1, r0
     ad8:	e3a0000d 	mov	r0, #13
     adc:	ef000000 	svc	0x00000000
     ae0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae4:	e12fff1e 	bx	lr

00000ae8 <uptime>:
     ae8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aec:	e1a04003 	mov	r4, r3
     af0:	e1a03002 	mov	r3, r2
     af4:	e1a02001 	mov	r2, r1
     af8:	e1a01000 	mov	r1, r0
     afc:	e3a0000e 	mov	r0, #14
     b00:	ef000000 	svc	0x00000000
     b04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b08:	e12fff1e 	bx	lr

00000b0c <getprocs>:
     b0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b10:	e1a04003 	mov	r4, r3
     b14:	e1a03002 	mov	r3, r2
     b18:	e1a02001 	mov	r2, r1
     b1c:	e1a01000 	mov	r1, r0
     b20:	e3a00016 	mov	r0, #22
     b24:	ef000000 	svc	0x00000000
     b28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b2c:	e12fff1e 	bx	lr

00000b30 <settickets>:
     b30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b34:	e1a04003 	mov	r4, r3
     b38:	e1a03002 	mov	r3, r2
     b3c:	e1a02001 	mov	r2, r1
     b40:	e1a01000 	mov	r1, r0
     b44:	e3a00017 	mov	r0, #23
     b48:	ef000000 	svc	0x00000000
     b4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b50:	e12fff1e 	bx	lr

00000b54 <srand>:
     b54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b58:	e1a04003 	mov	r4, r3
     b5c:	e1a03002 	mov	r3, r2
     b60:	e1a02001 	mov	r2, r1
     b64:	e1a01000 	mov	r1, r0
     b68:	e3a00018 	mov	r0, #24
     b6c:	ef000000 	svc	0x00000000
     b70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b74:	e12fff1e 	bx	lr

00000b78 <getpinfo>:
     b78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b7c:	e1a04003 	mov	r4, r3
     b80:	e1a03002 	mov	r3, r2
     b84:	e1a02001 	mov	r2, r1
     b88:	e1a01000 	mov	r1, r0
     b8c:	e3a00019 	mov	r0, #25
     b90:	ef000000 	svc	0x00000000
     b94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b98:	e12fff1e 	bx	lr

00000b9c <dumppagetable>:
     b9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba0:	e1a04003 	mov	r4, r3
     ba4:	e1a03002 	mov	r3, r2
     ba8:	e1a02001 	mov	r2, r1
     bac:	e1a01000 	mov	r1, r0
     bb0:	e3a0001a 	mov	r0, #26
     bb4:	ef000000 	svc	0x00000000
     bb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bbc:	e12fff1e 	bx	lr

00000bc0 <thread_create>:
     bc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc4:	e1a04003 	mov	r4, r3
     bc8:	e1a03002 	mov	r3, r2
     bcc:	e1a02001 	mov	r2, r1
     bd0:	e1a01000 	mov	r1, r0
     bd4:	e3a0001b 	mov	r0, #27
     bd8:	ef000000 	svc	0x00000000
     bdc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be0:	e12fff1e 	bx	lr

00000be4 <thread_exit>:
     be4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be8:	e1a04003 	mov	r4, r3
     bec:	e1a03002 	mov	r3, r2
     bf0:	e1a02001 	mov	r2, r1
     bf4:	e1a01000 	mov	r1, r0
     bf8:	e3a0001c 	mov	r0, #28
     bfc:	ef000000 	svc	0x00000000
     c00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c04:	e12fff1e 	bx	lr

00000c08 <thread_join>:
     c08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c0c:	e1a04003 	mov	r4, r3
     c10:	e1a03002 	mov	r3, r2
     c14:	e1a02001 	mov	r2, r1
     c18:	e1a01000 	mov	r1, r0
     c1c:	e3a0001d 	mov	r0, #29
     c20:	ef000000 	svc	0x00000000
     c24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c28:	e12fff1e 	bx	lr

00000c2c <waitpid>:
     c2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c30:	e1a04003 	mov	r4, r3
     c34:	e1a03002 	mov	r3, r2
     c38:	e1a02001 	mov	r2, r1
     c3c:	e1a01000 	mov	r1, r0
     c40:	e3a0001e 	mov	r0, #30
     c44:	ef000000 	svc	0x00000000
     c48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c4c:	e12fff1e 	bx	lr

00000c50 <barrier_init>:
     c50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c54:	e1a04003 	mov	r4, r3
     c58:	e1a03002 	mov	r3, r2
     c5c:	e1a02001 	mov	r2, r1
     c60:	e1a01000 	mov	r1, r0
     c64:	e3a0001f 	mov	r0, #31
     c68:	ef000000 	svc	0x00000000
     c6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c70:	e12fff1e 	bx	lr

00000c74 <barrier_check>:
     c74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c78:	e1a04003 	mov	r4, r3
     c7c:	e1a03002 	mov	r3, r2
     c80:	e1a02001 	mov	r2, r1
     c84:	e1a01000 	mov	r1, r0
     c88:	e3a00020 	mov	r0, #32
     c8c:	ef000000 	svc	0x00000000
     c90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c94:	e12fff1e 	bx	lr

00000c98 <sleepChan>:
     c98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c9c:	e1a04003 	mov	r4, r3
     ca0:	e1a03002 	mov	r3, r2
     ca4:	e1a02001 	mov	r2, r1
     ca8:	e1a01000 	mov	r1, r0
     cac:	e3a00024 	mov	r0, #36	@ 0x24
     cb0:	ef000000 	svc	0x00000000
     cb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb8:	e12fff1e 	bx	lr

00000cbc <getChannel>:
     cbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc0:	e1a04003 	mov	r4, r3
     cc4:	e1a03002 	mov	r3, r2
     cc8:	e1a02001 	mov	r2, r1
     ccc:	e1a01000 	mov	r1, r0
     cd0:	e3a00025 	mov	r0, #37	@ 0x25
     cd4:	ef000000 	svc	0x00000000
     cd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cdc:	e12fff1e 	bx	lr

00000ce0 <sigChan>:
     ce0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce4:	e1a04003 	mov	r4, r3
     ce8:	e1a03002 	mov	r3, r2
     cec:	e1a02001 	mov	r2, r1
     cf0:	e1a01000 	mov	r1, r0
     cf4:	e3a00026 	mov	r0, #38	@ 0x26
     cf8:	ef000000 	svc	0x00000000
     cfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d00:	e12fff1e 	bx	lr

00000d04 <sigOneChan>:
     d04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d08:	e1a04003 	mov	r4, r3
     d0c:	e1a03002 	mov	r3, r2
     d10:	e1a02001 	mov	r2, r1
     d14:	e1a01000 	mov	r1, r0
     d18:	e3a00027 	mov	r0, #39	@ 0x27
     d1c:	ef000000 	svc	0x00000000
     d20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d24:	e12fff1e 	bx	lr

00000d28 <putc>:
     d28:	e92d4800 	push	{fp, lr}
     d2c:	e28db004 	add	fp, sp, #4
     d30:	e24dd008 	sub	sp, sp, #8
     d34:	e50b0008 	str	r0, [fp, #-8]
     d38:	e1a03001 	mov	r3, r1
     d3c:	e54b3009 	strb	r3, [fp, #-9]
     d40:	e24b3009 	sub	r3, fp, #9
     d44:	e3a02001 	mov	r2, #1
     d48:	e1a01003 	mov	r1, r3
     d4c:	e51b0008 	ldr	r0, [fp, #-8]
     d50:	ebfffedd 	bl	8cc <write>
     d54:	e1a00000 	nop			@ (mov r0, r0)
     d58:	e24bd004 	sub	sp, fp, #4
     d5c:	e8bd8800 	pop	{fp, pc}

00000d60 <printint>:
     d60:	e92d4800 	push	{fp, lr}
     d64:	e28db004 	add	fp, sp, #4
     d68:	e24dd030 	sub	sp, sp, #48	@ 0x30
     d6c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     d70:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     d74:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     d78:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     d7c:	e3a03000 	mov	r3, #0
     d80:	e50b300c 	str	r3, [fp, #-12]
     d84:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     d88:	e3530000 	cmp	r3, #0
     d8c:	0a000008 	beq	db4 <printint+0x54>
     d90:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d94:	e3530000 	cmp	r3, #0
     d98:	aa000005 	bge	db4 <printint+0x54>
     d9c:	e3a03001 	mov	r3, #1
     da0:	e50b300c 	str	r3, [fp, #-12]
     da4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     da8:	e2633000 	rsb	r3, r3, #0
     dac:	e50b3010 	str	r3, [fp, #-16]
     db0:	ea000001 	b	dbc <printint+0x5c>
     db4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     db8:	e50b3010 	str	r3, [fp, #-16]
     dbc:	e3a03000 	mov	r3, #0
     dc0:	e50b3008 	str	r3, [fp, #-8]
     dc4:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     dc8:	e51b3010 	ldr	r3, [fp, #-16]
     dcc:	e1a01002 	mov	r1, r2
     dd0:	e1a00003 	mov	r0, r3
     dd4:	eb0001d5 	bl	1530 <__aeabi_uidivmod>
     dd8:	e1a03001 	mov	r3, r1
     ddc:	e1a01003 	mov	r1, r3
     de0:	e51b3008 	ldr	r3, [fp, #-8]
     de4:	e2832001 	add	r2, r3, #1
     de8:	e50b2008 	str	r2, [fp, #-8]
     dec:	e59f20a0 	ldr	r2, [pc, #160]	@ e94 <printint+0x134>
     df0:	e7d22001 	ldrb	r2, [r2, r1]
     df4:	e2433004 	sub	r3, r3, #4
     df8:	e083300b 	add	r3, r3, fp
     dfc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     e00:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     e04:	e1a01003 	mov	r1, r3
     e08:	e51b0010 	ldr	r0, [fp, #-16]
     e0c:	eb00018a 	bl	143c <__udivsi3>
     e10:	e1a03000 	mov	r3, r0
     e14:	e50b3010 	str	r3, [fp, #-16]
     e18:	e51b3010 	ldr	r3, [fp, #-16]
     e1c:	e3530000 	cmp	r3, #0
     e20:	1affffe7 	bne	dc4 <printint+0x64>
     e24:	e51b300c 	ldr	r3, [fp, #-12]
     e28:	e3530000 	cmp	r3, #0
     e2c:	0a00000e 	beq	e6c <printint+0x10c>
     e30:	e51b3008 	ldr	r3, [fp, #-8]
     e34:	e2832001 	add	r2, r3, #1
     e38:	e50b2008 	str	r2, [fp, #-8]
     e3c:	e2433004 	sub	r3, r3, #4
     e40:	e083300b 	add	r3, r3, fp
     e44:	e3a0202d 	mov	r2, #45	@ 0x2d
     e48:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     e4c:	ea000006 	b	e6c <printint+0x10c>
     e50:	e24b2020 	sub	r2, fp, #32
     e54:	e51b3008 	ldr	r3, [fp, #-8]
     e58:	e0823003 	add	r3, r2, r3
     e5c:	e5d33000 	ldrb	r3, [r3]
     e60:	e1a01003 	mov	r1, r3
     e64:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     e68:	ebffffae 	bl	d28 <putc>
     e6c:	e51b3008 	ldr	r3, [fp, #-8]
     e70:	e2433001 	sub	r3, r3, #1
     e74:	e50b3008 	str	r3, [fp, #-8]
     e78:	e51b3008 	ldr	r3, [fp, #-8]
     e7c:	e3530000 	cmp	r3, #0
     e80:	aafffff2 	bge	e50 <printint+0xf0>
     e84:	e1a00000 	nop			@ (mov r0, r0)
     e88:	e1a00000 	nop			@ (mov r0, r0)
     e8c:	e24bd004 	sub	sp, fp, #4
     e90:	e8bd8800 	pop	{fp, pc}
     e94:	000015e4 	.word	0x000015e4

00000e98 <printf>:
     e98:	e92d000e 	push	{r1, r2, r3}
     e9c:	e92d4800 	push	{fp, lr}
     ea0:	e28db004 	add	fp, sp, #4
     ea4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     ea8:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     eac:	e3a03000 	mov	r3, #0
     eb0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     eb4:	e28b3008 	add	r3, fp, #8
     eb8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ebc:	e3a03000 	mov	r3, #0
     ec0:	e50b3010 	str	r3, [fp, #-16]
     ec4:	ea000074 	b	109c <printf+0x204>
     ec8:	e59b2004 	ldr	r2, [fp, #4]
     ecc:	e51b3010 	ldr	r3, [fp, #-16]
     ed0:	e0823003 	add	r3, r2, r3
     ed4:	e5d33000 	ldrb	r3, [r3]
     ed8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     edc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ee0:	e3530000 	cmp	r3, #0
     ee4:	1a00000b 	bne	f18 <printf+0x80>
     ee8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     eec:	e3530025 	cmp	r3, #37	@ 0x25
     ef0:	1a000002 	bne	f00 <printf+0x68>
     ef4:	e3a03025 	mov	r3, #37	@ 0x25
     ef8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     efc:	ea000063 	b	1090 <printf+0x1f8>
     f00:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f04:	e6ef3073 	uxtb	r3, r3
     f08:	e1a01003 	mov	r1, r3
     f0c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f10:	ebffff84 	bl	d28 <putc>
     f14:	ea00005d 	b	1090 <printf+0x1f8>
     f18:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     f1c:	e3530025 	cmp	r3, #37	@ 0x25
     f20:	1a00005a 	bne	1090 <printf+0x1f8>
     f24:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f28:	e3530064 	cmp	r3, #100	@ 0x64
     f2c:	1a00000a 	bne	f5c <printf+0xc4>
     f30:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f34:	e5933000 	ldr	r3, [r3]
     f38:	e1a01003 	mov	r1, r3
     f3c:	e3a03001 	mov	r3, #1
     f40:	e3a0200a 	mov	r2, #10
     f44:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f48:	ebffff84 	bl	d60 <printint>
     f4c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f50:	e2833004 	add	r3, r3, #4
     f54:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f58:	ea00004a 	b	1088 <printf+0x1f0>
     f5c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f60:	e3530078 	cmp	r3, #120	@ 0x78
     f64:	0a000002 	beq	f74 <printf+0xdc>
     f68:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f6c:	e3530070 	cmp	r3, #112	@ 0x70
     f70:	1a00000a 	bne	fa0 <printf+0x108>
     f74:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f78:	e5933000 	ldr	r3, [r3]
     f7c:	e1a01003 	mov	r1, r3
     f80:	e3a03000 	mov	r3, #0
     f84:	e3a02010 	mov	r2, #16
     f88:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f8c:	ebffff73 	bl	d60 <printint>
     f90:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f94:	e2833004 	add	r3, r3, #4
     f98:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f9c:	ea000039 	b	1088 <printf+0x1f0>
     fa0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fa4:	e3530073 	cmp	r3, #115	@ 0x73
     fa8:	1a000018 	bne	1010 <printf+0x178>
     fac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fb0:	e5933000 	ldr	r3, [r3]
     fb4:	e50b300c 	str	r3, [fp, #-12]
     fb8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fbc:	e2833004 	add	r3, r3, #4
     fc0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fc4:	e51b300c 	ldr	r3, [fp, #-12]
     fc8:	e3530000 	cmp	r3, #0
     fcc:	1a00000a 	bne	ffc <printf+0x164>
     fd0:	e59f30f4 	ldr	r3, [pc, #244]	@ 10cc <printf+0x234>
     fd4:	e50b300c 	str	r3, [fp, #-12]
     fd8:	ea000007 	b	ffc <printf+0x164>
     fdc:	e51b300c 	ldr	r3, [fp, #-12]
     fe0:	e5d33000 	ldrb	r3, [r3]
     fe4:	e1a01003 	mov	r1, r3
     fe8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fec:	ebffff4d 	bl	d28 <putc>
     ff0:	e51b300c 	ldr	r3, [fp, #-12]
     ff4:	e2833001 	add	r3, r3, #1
     ff8:	e50b300c 	str	r3, [fp, #-12]
     ffc:	e51b300c 	ldr	r3, [fp, #-12]
    1000:	e5d33000 	ldrb	r3, [r3]
    1004:	e3530000 	cmp	r3, #0
    1008:	1afffff3 	bne	fdc <printf+0x144>
    100c:	ea00001d 	b	1088 <printf+0x1f0>
    1010:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1014:	e3530063 	cmp	r3, #99	@ 0x63
    1018:	1a000009 	bne	1044 <printf+0x1ac>
    101c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1020:	e5933000 	ldr	r3, [r3]
    1024:	e6ef3073 	uxtb	r3, r3
    1028:	e1a01003 	mov	r1, r3
    102c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1030:	ebffff3c 	bl	d28 <putc>
    1034:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1038:	e2833004 	add	r3, r3, #4
    103c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1040:	ea000010 	b	1088 <printf+0x1f0>
    1044:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1048:	e3530025 	cmp	r3, #37	@ 0x25
    104c:	1a000005 	bne	1068 <printf+0x1d0>
    1050:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1054:	e6ef3073 	uxtb	r3, r3
    1058:	e1a01003 	mov	r1, r3
    105c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1060:	ebffff30 	bl	d28 <putc>
    1064:	ea000007 	b	1088 <printf+0x1f0>
    1068:	e3a01025 	mov	r1, #37	@ 0x25
    106c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1070:	ebffff2c 	bl	d28 <putc>
    1074:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1078:	e6ef3073 	uxtb	r3, r3
    107c:	e1a01003 	mov	r1, r3
    1080:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1084:	ebffff27 	bl	d28 <putc>
    1088:	e3a03000 	mov	r3, #0
    108c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1090:	e51b3010 	ldr	r3, [fp, #-16]
    1094:	e2833001 	add	r3, r3, #1
    1098:	e50b3010 	str	r3, [fp, #-16]
    109c:	e59b2004 	ldr	r2, [fp, #4]
    10a0:	e51b3010 	ldr	r3, [fp, #-16]
    10a4:	e0823003 	add	r3, r2, r3
    10a8:	e5d33000 	ldrb	r3, [r3]
    10ac:	e3530000 	cmp	r3, #0
    10b0:	1affff84 	bne	ec8 <printf+0x30>
    10b4:	e1a00000 	nop			@ (mov r0, r0)
    10b8:	e1a00000 	nop			@ (mov r0, r0)
    10bc:	e24bd004 	sub	sp, fp, #4
    10c0:	e8bd4800 	pop	{fp, lr}
    10c4:	e28dd00c 	add	sp, sp, #12
    10c8:	e12fff1e 	bx	lr
    10cc:	000015dc 	.word	0x000015dc

000010d0 <free>:
    10d0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    10d4:	e28db000 	add	fp, sp, #0
    10d8:	e24dd014 	sub	sp, sp, #20
    10dc:	e50b0010 	str	r0, [fp, #-16]
    10e0:	e51b3010 	ldr	r3, [fp, #-16]
    10e4:	e2433008 	sub	r3, r3, #8
    10e8:	e50b300c 	str	r3, [fp, #-12]
    10ec:	e59f3154 	ldr	r3, [pc, #340]	@ 1248 <free+0x178>
    10f0:	e5933000 	ldr	r3, [r3]
    10f4:	e50b3008 	str	r3, [fp, #-8]
    10f8:	ea000010 	b	1140 <free+0x70>
    10fc:	e51b3008 	ldr	r3, [fp, #-8]
    1100:	e5933000 	ldr	r3, [r3]
    1104:	e51b2008 	ldr	r2, [fp, #-8]
    1108:	e1520003 	cmp	r2, r3
    110c:	3a000008 	bcc	1134 <free+0x64>
    1110:	e51b200c 	ldr	r2, [fp, #-12]
    1114:	e51b3008 	ldr	r3, [fp, #-8]
    1118:	e1520003 	cmp	r2, r3
    111c:	8a000010 	bhi	1164 <free+0x94>
    1120:	e51b3008 	ldr	r3, [fp, #-8]
    1124:	e5933000 	ldr	r3, [r3]
    1128:	e51b200c 	ldr	r2, [fp, #-12]
    112c:	e1520003 	cmp	r2, r3
    1130:	3a00000b 	bcc	1164 <free+0x94>
    1134:	e51b3008 	ldr	r3, [fp, #-8]
    1138:	e5933000 	ldr	r3, [r3]
    113c:	e50b3008 	str	r3, [fp, #-8]
    1140:	e51b200c 	ldr	r2, [fp, #-12]
    1144:	e51b3008 	ldr	r3, [fp, #-8]
    1148:	e1520003 	cmp	r2, r3
    114c:	9affffea 	bls	10fc <free+0x2c>
    1150:	e51b3008 	ldr	r3, [fp, #-8]
    1154:	e5933000 	ldr	r3, [r3]
    1158:	e51b200c 	ldr	r2, [fp, #-12]
    115c:	e1520003 	cmp	r2, r3
    1160:	2affffe5 	bcs	10fc <free+0x2c>
    1164:	e51b300c 	ldr	r3, [fp, #-12]
    1168:	e5933004 	ldr	r3, [r3, #4]
    116c:	e1a03183 	lsl	r3, r3, #3
    1170:	e51b200c 	ldr	r2, [fp, #-12]
    1174:	e0822003 	add	r2, r2, r3
    1178:	e51b3008 	ldr	r3, [fp, #-8]
    117c:	e5933000 	ldr	r3, [r3]
    1180:	e1520003 	cmp	r2, r3
    1184:	1a00000d 	bne	11c0 <free+0xf0>
    1188:	e51b300c 	ldr	r3, [fp, #-12]
    118c:	e5932004 	ldr	r2, [r3, #4]
    1190:	e51b3008 	ldr	r3, [fp, #-8]
    1194:	e5933000 	ldr	r3, [r3]
    1198:	e5933004 	ldr	r3, [r3, #4]
    119c:	e0822003 	add	r2, r2, r3
    11a0:	e51b300c 	ldr	r3, [fp, #-12]
    11a4:	e5832004 	str	r2, [r3, #4]
    11a8:	e51b3008 	ldr	r3, [fp, #-8]
    11ac:	e5933000 	ldr	r3, [r3]
    11b0:	e5932000 	ldr	r2, [r3]
    11b4:	e51b300c 	ldr	r3, [fp, #-12]
    11b8:	e5832000 	str	r2, [r3]
    11bc:	ea000003 	b	11d0 <free+0x100>
    11c0:	e51b3008 	ldr	r3, [fp, #-8]
    11c4:	e5932000 	ldr	r2, [r3]
    11c8:	e51b300c 	ldr	r3, [fp, #-12]
    11cc:	e5832000 	str	r2, [r3]
    11d0:	e51b3008 	ldr	r3, [fp, #-8]
    11d4:	e5933004 	ldr	r3, [r3, #4]
    11d8:	e1a03183 	lsl	r3, r3, #3
    11dc:	e51b2008 	ldr	r2, [fp, #-8]
    11e0:	e0823003 	add	r3, r2, r3
    11e4:	e51b200c 	ldr	r2, [fp, #-12]
    11e8:	e1520003 	cmp	r2, r3
    11ec:	1a00000b 	bne	1220 <free+0x150>
    11f0:	e51b3008 	ldr	r3, [fp, #-8]
    11f4:	e5932004 	ldr	r2, [r3, #4]
    11f8:	e51b300c 	ldr	r3, [fp, #-12]
    11fc:	e5933004 	ldr	r3, [r3, #4]
    1200:	e0822003 	add	r2, r2, r3
    1204:	e51b3008 	ldr	r3, [fp, #-8]
    1208:	e5832004 	str	r2, [r3, #4]
    120c:	e51b300c 	ldr	r3, [fp, #-12]
    1210:	e5932000 	ldr	r2, [r3]
    1214:	e51b3008 	ldr	r3, [fp, #-8]
    1218:	e5832000 	str	r2, [r3]
    121c:	ea000002 	b	122c <free+0x15c>
    1220:	e51b3008 	ldr	r3, [fp, #-8]
    1224:	e51b200c 	ldr	r2, [fp, #-12]
    1228:	e5832000 	str	r2, [r3]
    122c:	e59f2014 	ldr	r2, [pc, #20]	@ 1248 <free+0x178>
    1230:	e51b3008 	ldr	r3, [fp, #-8]
    1234:	e5823000 	str	r3, [r2]
    1238:	e1a00000 	nop			@ (mov r0, r0)
    123c:	e28bd000 	add	sp, fp, #0
    1240:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1244:	e12fff1e 	bx	lr
    1248:	00001600 	.word	0x00001600

0000124c <morecore>:
    124c:	e92d4800 	push	{fp, lr}
    1250:	e28db004 	add	fp, sp, #4
    1254:	e24dd010 	sub	sp, sp, #16
    1258:	e50b0010 	str	r0, [fp, #-16]
    125c:	e51b3010 	ldr	r3, [fp, #-16]
    1260:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1264:	2a000001 	bcs	1270 <morecore+0x24>
    1268:	e3a03a01 	mov	r3, #4096	@ 0x1000
    126c:	e50b3010 	str	r3, [fp, #-16]
    1270:	e51b3010 	ldr	r3, [fp, #-16]
    1274:	e1a03183 	lsl	r3, r3, #3
    1278:	e1a00003 	mov	r0, r3
    127c:	ebfffe07 	bl	aa0 <sbrk>
    1280:	e50b0008 	str	r0, [fp, #-8]
    1284:	e51b3008 	ldr	r3, [fp, #-8]
    1288:	e3730001 	cmn	r3, #1
    128c:	1a000001 	bne	1298 <morecore+0x4c>
    1290:	e3a03000 	mov	r3, #0
    1294:	ea00000a 	b	12c4 <morecore+0x78>
    1298:	e51b3008 	ldr	r3, [fp, #-8]
    129c:	e50b300c 	str	r3, [fp, #-12]
    12a0:	e51b300c 	ldr	r3, [fp, #-12]
    12a4:	e51b2010 	ldr	r2, [fp, #-16]
    12a8:	e5832004 	str	r2, [r3, #4]
    12ac:	e51b300c 	ldr	r3, [fp, #-12]
    12b0:	e2833008 	add	r3, r3, #8
    12b4:	e1a00003 	mov	r0, r3
    12b8:	ebffff84 	bl	10d0 <free>
    12bc:	e59f300c 	ldr	r3, [pc, #12]	@ 12d0 <morecore+0x84>
    12c0:	e5933000 	ldr	r3, [r3]
    12c4:	e1a00003 	mov	r0, r3
    12c8:	e24bd004 	sub	sp, fp, #4
    12cc:	e8bd8800 	pop	{fp, pc}
    12d0:	00001600 	.word	0x00001600

000012d4 <malloc>:
    12d4:	e92d4800 	push	{fp, lr}
    12d8:	e28db004 	add	fp, sp, #4
    12dc:	e24dd018 	sub	sp, sp, #24
    12e0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    12e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12e8:	e2833007 	add	r3, r3, #7
    12ec:	e1a031a3 	lsr	r3, r3, #3
    12f0:	e2833001 	add	r3, r3, #1
    12f4:	e50b3010 	str	r3, [fp, #-16]
    12f8:	e59f3134 	ldr	r3, [pc, #308]	@ 1434 <malloc+0x160>
    12fc:	e5933000 	ldr	r3, [r3]
    1300:	e50b300c 	str	r3, [fp, #-12]
    1304:	e51b300c 	ldr	r3, [fp, #-12]
    1308:	e3530000 	cmp	r3, #0
    130c:	1a00000b 	bne	1340 <malloc+0x6c>
    1310:	e59f3120 	ldr	r3, [pc, #288]	@ 1438 <malloc+0x164>
    1314:	e50b300c 	str	r3, [fp, #-12]
    1318:	e59f2114 	ldr	r2, [pc, #276]	@ 1434 <malloc+0x160>
    131c:	e51b300c 	ldr	r3, [fp, #-12]
    1320:	e5823000 	str	r3, [r2]
    1324:	e59f3108 	ldr	r3, [pc, #264]	@ 1434 <malloc+0x160>
    1328:	e5933000 	ldr	r3, [r3]
    132c:	e59f2104 	ldr	r2, [pc, #260]	@ 1438 <malloc+0x164>
    1330:	e5823000 	str	r3, [r2]
    1334:	e59f30fc 	ldr	r3, [pc, #252]	@ 1438 <malloc+0x164>
    1338:	e3a02000 	mov	r2, #0
    133c:	e5832004 	str	r2, [r3, #4]
    1340:	e51b300c 	ldr	r3, [fp, #-12]
    1344:	e5933000 	ldr	r3, [r3]
    1348:	e50b3008 	str	r3, [fp, #-8]
    134c:	e51b3008 	ldr	r3, [fp, #-8]
    1350:	e5933004 	ldr	r3, [r3, #4]
    1354:	e51b2010 	ldr	r2, [fp, #-16]
    1358:	e1520003 	cmp	r2, r3
    135c:	8a00001e 	bhi	13dc <malloc+0x108>
    1360:	e51b3008 	ldr	r3, [fp, #-8]
    1364:	e5933004 	ldr	r3, [r3, #4]
    1368:	e51b2010 	ldr	r2, [fp, #-16]
    136c:	e1520003 	cmp	r2, r3
    1370:	1a000004 	bne	1388 <malloc+0xb4>
    1374:	e51b3008 	ldr	r3, [fp, #-8]
    1378:	e5932000 	ldr	r2, [r3]
    137c:	e51b300c 	ldr	r3, [fp, #-12]
    1380:	e5832000 	str	r2, [r3]
    1384:	ea00000e 	b	13c4 <malloc+0xf0>
    1388:	e51b3008 	ldr	r3, [fp, #-8]
    138c:	e5932004 	ldr	r2, [r3, #4]
    1390:	e51b3010 	ldr	r3, [fp, #-16]
    1394:	e0422003 	sub	r2, r2, r3
    1398:	e51b3008 	ldr	r3, [fp, #-8]
    139c:	e5832004 	str	r2, [r3, #4]
    13a0:	e51b3008 	ldr	r3, [fp, #-8]
    13a4:	e5933004 	ldr	r3, [r3, #4]
    13a8:	e1a03183 	lsl	r3, r3, #3
    13ac:	e51b2008 	ldr	r2, [fp, #-8]
    13b0:	e0823003 	add	r3, r2, r3
    13b4:	e50b3008 	str	r3, [fp, #-8]
    13b8:	e51b3008 	ldr	r3, [fp, #-8]
    13bc:	e51b2010 	ldr	r2, [fp, #-16]
    13c0:	e5832004 	str	r2, [r3, #4]
    13c4:	e59f2068 	ldr	r2, [pc, #104]	@ 1434 <malloc+0x160>
    13c8:	e51b300c 	ldr	r3, [fp, #-12]
    13cc:	e5823000 	str	r3, [r2]
    13d0:	e51b3008 	ldr	r3, [fp, #-8]
    13d4:	e2833008 	add	r3, r3, #8
    13d8:	ea000012 	b	1428 <malloc+0x154>
    13dc:	e59f3050 	ldr	r3, [pc, #80]	@ 1434 <malloc+0x160>
    13e0:	e5933000 	ldr	r3, [r3]
    13e4:	e51b2008 	ldr	r2, [fp, #-8]
    13e8:	e1520003 	cmp	r2, r3
    13ec:	1a000007 	bne	1410 <malloc+0x13c>
    13f0:	e51b0010 	ldr	r0, [fp, #-16]
    13f4:	ebffff94 	bl	124c <morecore>
    13f8:	e50b0008 	str	r0, [fp, #-8]
    13fc:	e51b3008 	ldr	r3, [fp, #-8]
    1400:	e3530000 	cmp	r3, #0
    1404:	1a000001 	bne	1410 <malloc+0x13c>
    1408:	e3a03000 	mov	r3, #0
    140c:	ea000005 	b	1428 <malloc+0x154>
    1410:	e51b3008 	ldr	r3, [fp, #-8]
    1414:	e50b300c 	str	r3, [fp, #-12]
    1418:	e51b3008 	ldr	r3, [fp, #-8]
    141c:	e5933000 	ldr	r3, [r3]
    1420:	e50b3008 	str	r3, [fp, #-8]
    1424:	eaffffc8 	b	134c <malloc+0x78>
    1428:	e1a00003 	mov	r0, r3
    142c:	e24bd004 	sub	sp, fp, #4
    1430:	e8bd8800 	pop	{fp, pc}
    1434:	00001600 	.word	0x00001600
    1438:	000015f8 	.word	0x000015f8

0000143c <__udivsi3>:
    143c:	e2512001 	subs	r2, r1, #1
    1440:	012fff1e 	bxeq	lr
    1444:	3a000036 	bcc	1524 <__udivsi3+0xe8>
    1448:	e1500001 	cmp	r0, r1
    144c:	9a000022 	bls	14dc <__udivsi3+0xa0>
    1450:	e1110002 	tst	r1, r2
    1454:	0a000023 	beq	14e8 <__udivsi3+0xac>
    1458:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    145c:	01a01181 	lsleq	r1, r1, #3
    1460:	03a03008 	moveq	r3, #8
    1464:	13a03001 	movne	r3, #1
    1468:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    146c:	31510000 	cmpcc	r1, r0
    1470:	31a01201 	lslcc	r1, r1, #4
    1474:	31a03203 	lslcc	r3, r3, #4
    1478:	3afffffa 	bcc	1468 <__udivsi3+0x2c>
    147c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1480:	31510000 	cmpcc	r1, r0
    1484:	31a01081 	lslcc	r1, r1, #1
    1488:	31a03083 	lslcc	r3, r3, #1
    148c:	3afffffa 	bcc	147c <__udivsi3+0x40>
    1490:	e3a02000 	mov	r2, #0
    1494:	e1500001 	cmp	r0, r1
    1498:	20400001 	subcs	r0, r0, r1
    149c:	21822003 	orrcs	r2, r2, r3
    14a0:	e15000a1 	cmp	r0, r1, lsr #1
    14a4:	204000a1 	subcs	r0, r0, r1, lsr #1
    14a8:	218220a3 	orrcs	r2, r2, r3, lsr #1
    14ac:	e1500121 	cmp	r0, r1, lsr #2
    14b0:	20400121 	subcs	r0, r0, r1, lsr #2
    14b4:	21822123 	orrcs	r2, r2, r3, lsr #2
    14b8:	e15001a1 	cmp	r0, r1, lsr #3
    14bc:	204001a1 	subcs	r0, r0, r1, lsr #3
    14c0:	218221a3 	orrcs	r2, r2, r3, lsr #3
    14c4:	e3500000 	cmp	r0, #0
    14c8:	11b03223 	lsrsne	r3, r3, #4
    14cc:	11a01221 	lsrne	r1, r1, #4
    14d0:	1affffef 	bne	1494 <__udivsi3+0x58>
    14d4:	e1a00002 	mov	r0, r2
    14d8:	e12fff1e 	bx	lr
    14dc:	03a00001 	moveq	r0, #1
    14e0:	13a00000 	movne	r0, #0
    14e4:	e12fff1e 	bx	lr
    14e8:	e3510801 	cmp	r1, #65536	@ 0x10000
    14ec:	21a01821 	lsrcs	r1, r1, #16
    14f0:	23a02010 	movcs	r2, #16
    14f4:	33a02000 	movcc	r2, #0
    14f8:	e3510c01 	cmp	r1, #256	@ 0x100
    14fc:	21a01421 	lsrcs	r1, r1, #8
    1500:	22822008 	addcs	r2, r2, #8
    1504:	e3510010 	cmp	r1, #16
    1508:	21a01221 	lsrcs	r1, r1, #4
    150c:	22822004 	addcs	r2, r2, #4
    1510:	e3510004 	cmp	r1, #4
    1514:	82822003 	addhi	r2, r2, #3
    1518:	908220a1 	addls	r2, r2, r1, lsr #1
    151c:	e1a00230 	lsr	r0, r0, r2
    1520:	e12fff1e 	bx	lr
    1524:	e3500000 	cmp	r0, #0
    1528:	13e00000 	mvnne	r0, #0
    152c:	ea000007 	b	1550 <__aeabi_idiv0>

00001530 <__aeabi_uidivmod>:
    1530:	e3510000 	cmp	r1, #0
    1534:	0afffffa 	beq	1524 <__udivsi3+0xe8>
    1538:	e92d4003 	push	{r0, r1, lr}
    153c:	ebffffbe 	bl	143c <__udivsi3>
    1540:	e8bd4006 	pop	{r1, r2, lr}
    1544:	e0030092 	mul	r3, r2, r0
    1548:	e0411003 	sub	r1, r1, r3
    154c:	e12fff1e 	bx	lr

00001550 <__aeabi_idiv0>:
    1550:	e12fff1e 	bx	lr
