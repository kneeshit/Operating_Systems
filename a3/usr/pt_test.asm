
_pt_test:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e59f1070 	ldr	r1, [pc, #112]	@ 84 <main+0x84>
      10:	e3a00001 	mov	r0, #1
      14:	eb0002a0 	bl	a9c <printf>
      18:	e3a00a05 	mov	r0, #20480	@ 0x5000
      1c:	eb0003ad 	bl	ed8 <malloc>
      20:	e50b0008 	str	r0, [fp, #-8]
      24:	e51b3008 	ldr	r3, [fp, #-8]
      28:	e3530000 	cmp	r3, #0
      2c:	1a000003 	bne	40 <main+0x40>
      30:	e59f1050 	ldr	r1, [pc, #80]	@ 88 <main+0x88>
      34:	e3a00002 	mov	r0, #2
      38:	eb000297 	bl	a9c <printf>
      3c:	eb000159 	bl	5a8 <exit>
      40:	e51b3008 	ldr	r3, [fp, #-8]
      44:	e3a02061 	mov	r2, #97	@ 0x61
      48:	e5c32000 	strb	r2, [r3]
      4c:	e51b3008 	ldr	r3, [fp, #-8]
      50:	e2833a01 	add	r3, r3, #4096	@ 0x1000
      54:	e3a02062 	mov	r2, #98	@ 0x62
      58:	e5c32000 	strb	r2, [r3]
      5c:	e59f1028 	ldr	r1, [pc, #40]	@ 8c <main+0x8c>
      60:	e3a00001 	mov	r0, #1
      64:	eb00028c 	bl	a9c <printf>
      68:	eb000226 	bl	908 <dumppagetable>
      6c:	e59f101c 	ldr	r1, [pc, #28]	@ 90 <main+0x90>
      70:	e3a00001 	mov	r0, #1
      74:	eb000288 	bl	a9c <printf>
      78:	e51b0008 	ldr	r0, [fp, #-8]
      7c:	eb000314 	bl	cd4 <free>
      80:	eb000148 	bl	5a8 <exit>
      84:	00001158 	.word	0x00001158
      88:	00001180 	.word	0x00001180
      8c:	00001198 	.word	0x00001198
      90:	000011c0 	.word	0x000011c0

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
     388:	eb0000a1 	bl	614 <read>
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
     430:	eb0000a4 	bl	6c8 <open>
     434:	e50b0008 	str	r0, [fp, #-8]
     438:	e51b3008 	ldr	r3, [fp, #-8]
     43c:	e3530000 	cmp	r3, #0
     440:	aa000001 	bge	44c <stat+0x38>
     444:	e3e03000 	mvn	r3, #0
     448:	ea000006 	b	468 <stat+0x54>
     44c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     450:	e51b0008 	ldr	r0, [fp, #-8]
     454:	eb0000b6 	bl	734 <fstat>
     458:	e50b000c 	str	r0, [fp, #-12]
     45c:	e51b0008 	ldr	r0, [fp, #-8]
     460:	eb00007d 	bl	65c <close>
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

00000584 <fork>:
     584:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     588:	e1a04003 	mov	r4, r3
     58c:	e1a03002 	mov	r3, r2
     590:	e1a02001 	mov	r2, r1
     594:	e1a01000 	mov	r1, r0
     598:	e3a00001 	mov	r0, #1
     59c:	ef000000 	svc	0x00000000
     5a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5a4:	e12fff1e 	bx	lr

000005a8 <exit>:
     5a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5ac:	e1a04003 	mov	r4, r3
     5b0:	e1a03002 	mov	r3, r2
     5b4:	e1a02001 	mov	r2, r1
     5b8:	e1a01000 	mov	r1, r0
     5bc:	e3a00002 	mov	r0, #2
     5c0:	ef000000 	svc	0x00000000
     5c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5c8:	e12fff1e 	bx	lr

000005cc <wait>:
     5cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5d0:	e1a04003 	mov	r4, r3
     5d4:	e1a03002 	mov	r3, r2
     5d8:	e1a02001 	mov	r2, r1
     5dc:	e1a01000 	mov	r1, r0
     5e0:	e3a00003 	mov	r0, #3
     5e4:	ef000000 	svc	0x00000000
     5e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5ec:	e12fff1e 	bx	lr

000005f0 <pipe>:
     5f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5f4:	e1a04003 	mov	r4, r3
     5f8:	e1a03002 	mov	r3, r2
     5fc:	e1a02001 	mov	r2, r1
     600:	e1a01000 	mov	r1, r0
     604:	e3a00004 	mov	r0, #4
     608:	ef000000 	svc	0x00000000
     60c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     610:	e12fff1e 	bx	lr

00000614 <read>:
     614:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     618:	e1a04003 	mov	r4, r3
     61c:	e1a03002 	mov	r3, r2
     620:	e1a02001 	mov	r2, r1
     624:	e1a01000 	mov	r1, r0
     628:	e3a00005 	mov	r0, #5
     62c:	ef000000 	svc	0x00000000
     630:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     634:	e12fff1e 	bx	lr

00000638 <write>:
     638:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     63c:	e1a04003 	mov	r4, r3
     640:	e1a03002 	mov	r3, r2
     644:	e1a02001 	mov	r2, r1
     648:	e1a01000 	mov	r1, r0
     64c:	e3a00010 	mov	r0, #16
     650:	ef000000 	svc	0x00000000
     654:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     658:	e12fff1e 	bx	lr

0000065c <close>:
     65c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     660:	e1a04003 	mov	r4, r3
     664:	e1a03002 	mov	r3, r2
     668:	e1a02001 	mov	r2, r1
     66c:	e1a01000 	mov	r1, r0
     670:	e3a00015 	mov	r0, #21
     674:	ef000000 	svc	0x00000000
     678:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     67c:	e12fff1e 	bx	lr

00000680 <kill>:
     680:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     684:	e1a04003 	mov	r4, r3
     688:	e1a03002 	mov	r3, r2
     68c:	e1a02001 	mov	r2, r1
     690:	e1a01000 	mov	r1, r0
     694:	e3a00006 	mov	r0, #6
     698:	ef000000 	svc	0x00000000
     69c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6a0:	e12fff1e 	bx	lr

000006a4 <exec>:
     6a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6a8:	e1a04003 	mov	r4, r3
     6ac:	e1a03002 	mov	r3, r2
     6b0:	e1a02001 	mov	r2, r1
     6b4:	e1a01000 	mov	r1, r0
     6b8:	e3a00007 	mov	r0, #7
     6bc:	ef000000 	svc	0x00000000
     6c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6c4:	e12fff1e 	bx	lr

000006c8 <open>:
     6c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6cc:	e1a04003 	mov	r4, r3
     6d0:	e1a03002 	mov	r3, r2
     6d4:	e1a02001 	mov	r2, r1
     6d8:	e1a01000 	mov	r1, r0
     6dc:	e3a0000f 	mov	r0, #15
     6e0:	ef000000 	svc	0x00000000
     6e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6e8:	e12fff1e 	bx	lr

000006ec <mknod>:
     6ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6f0:	e1a04003 	mov	r4, r3
     6f4:	e1a03002 	mov	r3, r2
     6f8:	e1a02001 	mov	r2, r1
     6fc:	e1a01000 	mov	r1, r0
     700:	e3a00011 	mov	r0, #17
     704:	ef000000 	svc	0x00000000
     708:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     70c:	e12fff1e 	bx	lr

00000710 <unlink>:
     710:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     714:	e1a04003 	mov	r4, r3
     718:	e1a03002 	mov	r3, r2
     71c:	e1a02001 	mov	r2, r1
     720:	e1a01000 	mov	r1, r0
     724:	e3a00012 	mov	r0, #18
     728:	ef000000 	svc	0x00000000
     72c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     730:	e12fff1e 	bx	lr

00000734 <fstat>:
     734:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     738:	e1a04003 	mov	r4, r3
     73c:	e1a03002 	mov	r3, r2
     740:	e1a02001 	mov	r2, r1
     744:	e1a01000 	mov	r1, r0
     748:	e3a00008 	mov	r0, #8
     74c:	ef000000 	svc	0x00000000
     750:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     754:	e12fff1e 	bx	lr

00000758 <link>:
     758:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     75c:	e1a04003 	mov	r4, r3
     760:	e1a03002 	mov	r3, r2
     764:	e1a02001 	mov	r2, r1
     768:	e1a01000 	mov	r1, r0
     76c:	e3a00013 	mov	r0, #19
     770:	ef000000 	svc	0x00000000
     774:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     778:	e12fff1e 	bx	lr

0000077c <mkdir>:
     77c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     780:	e1a04003 	mov	r4, r3
     784:	e1a03002 	mov	r3, r2
     788:	e1a02001 	mov	r2, r1
     78c:	e1a01000 	mov	r1, r0
     790:	e3a00014 	mov	r0, #20
     794:	ef000000 	svc	0x00000000
     798:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     79c:	e12fff1e 	bx	lr

000007a0 <chdir>:
     7a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7a4:	e1a04003 	mov	r4, r3
     7a8:	e1a03002 	mov	r3, r2
     7ac:	e1a02001 	mov	r2, r1
     7b0:	e1a01000 	mov	r1, r0
     7b4:	e3a00009 	mov	r0, #9
     7b8:	ef000000 	svc	0x00000000
     7bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c0:	e12fff1e 	bx	lr

000007c4 <dup>:
     7c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7c8:	e1a04003 	mov	r4, r3
     7cc:	e1a03002 	mov	r3, r2
     7d0:	e1a02001 	mov	r2, r1
     7d4:	e1a01000 	mov	r1, r0
     7d8:	e3a0000a 	mov	r0, #10
     7dc:	ef000000 	svc	0x00000000
     7e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7e4:	e12fff1e 	bx	lr

000007e8 <getpid>:
     7e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7ec:	e1a04003 	mov	r4, r3
     7f0:	e1a03002 	mov	r3, r2
     7f4:	e1a02001 	mov	r2, r1
     7f8:	e1a01000 	mov	r1, r0
     7fc:	e3a0000b 	mov	r0, #11
     800:	ef000000 	svc	0x00000000
     804:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     808:	e12fff1e 	bx	lr

0000080c <sbrk>:
     80c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     810:	e1a04003 	mov	r4, r3
     814:	e1a03002 	mov	r3, r2
     818:	e1a02001 	mov	r2, r1
     81c:	e1a01000 	mov	r1, r0
     820:	e3a0000c 	mov	r0, #12
     824:	ef000000 	svc	0x00000000
     828:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     82c:	e12fff1e 	bx	lr

00000830 <sleep>:
     830:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     834:	e1a04003 	mov	r4, r3
     838:	e1a03002 	mov	r3, r2
     83c:	e1a02001 	mov	r2, r1
     840:	e1a01000 	mov	r1, r0
     844:	e3a0000d 	mov	r0, #13
     848:	ef000000 	svc	0x00000000
     84c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     850:	e12fff1e 	bx	lr

00000854 <uptime>:
     854:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     858:	e1a04003 	mov	r4, r3
     85c:	e1a03002 	mov	r3, r2
     860:	e1a02001 	mov	r2, r1
     864:	e1a01000 	mov	r1, r0
     868:	e3a0000e 	mov	r0, #14
     86c:	ef000000 	svc	0x00000000
     870:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     874:	e12fff1e 	bx	lr

00000878 <getprocs>:
     878:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     87c:	e1a04003 	mov	r4, r3
     880:	e1a03002 	mov	r3, r2
     884:	e1a02001 	mov	r2, r1
     888:	e1a01000 	mov	r1, r0
     88c:	e3a00016 	mov	r0, #22
     890:	ef000000 	svc	0x00000000
     894:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     898:	e12fff1e 	bx	lr

0000089c <settickets>:
     89c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a0:	e1a04003 	mov	r4, r3
     8a4:	e1a03002 	mov	r3, r2
     8a8:	e1a02001 	mov	r2, r1
     8ac:	e1a01000 	mov	r1, r0
     8b0:	e3a00017 	mov	r0, #23
     8b4:	ef000000 	svc	0x00000000
     8b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8bc:	e12fff1e 	bx	lr

000008c0 <srand>:
     8c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8c4:	e1a04003 	mov	r4, r3
     8c8:	e1a03002 	mov	r3, r2
     8cc:	e1a02001 	mov	r2, r1
     8d0:	e1a01000 	mov	r1, r0
     8d4:	e3a00018 	mov	r0, #24
     8d8:	ef000000 	svc	0x00000000
     8dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e0:	e12fff1e 	bx	lr

000008e4 <getpinfo>:
     8e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8e8:	e1a04003 	mov	r4, r3
     8ec:	e1a03002 	mov	r3, r2
     8f0:	e1a02001 	mov	r2, r1
     8f4:	e1a01000 	mov	r1, r0
     8f8:	e3a00019 	mov	r0, #25
     8fc:	ef000000 	svc	0x00000000
     900:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     904:	e12fff1e 	bx	lr

00000908 <dumppagetable>:
     908:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     90c:	e1a04003 	mov	r4, r3
     910:	e1a03002 	mov	r3, r2
     914:	e1a02001 	mov	r2, r1
     918:	e1a01000 	mov	r1, r0
     91c:	e3a0001a 	mov	r0, #26
     920:	ef000000 	svc	0x00000000
     924:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     928:	e12fff1e 	bx	lr

0000092c <putc>:
     92c:	e92d4800 	push	{fp, lr}
     930:	e28db004 	add	fp, sp, #4
     934:	e24dd008 	sub	sp, sp, #8
     938:	e50b0008 	str	r0, [fp, #-8]
     93c:	e1a03001 	mov	r3, r1
     940:	e54b3009 	strb	r3, [fp, #-9]
     944:	e24b3009 	sub	r3, fp, #9
     948:	e3a02001 	mov	r2, #1
     94c:	e1a01003 	mov	r1, r3
     950:	e51b0008 	ldr	r0, [fp, #-8]
     954:	ebffff37 	bl	638 <write>
     958:	e1a00000 	nop			@ (mov r0, r0)
     95c:	e24bd004 	sub	sp, fp, #4
     960:	e8bd8800 	pop	{fp, pc}

00000964 <printint>:
     964:	e92d4800 	push	{fp, lr}
     968:	e28db004 	add	fp, sp, #4
     96c:	e24dd030 	sub	sp, sp, #48	@ 0x30
     970:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     974:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     978:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     97c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     980:	e3a03000 	mov	r3, #0
     984:	e50b300c 	str	r3, [fp, #-12]
     988:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     98c:	e3530000 	cmp	r3, #0
     990:	0a000008 	beq	9b8 <printint+0x54>
     994:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     998:	e3530000 	cmp	r3, #0
     99c:	aa000005 	bge	9b8 <printint+0x54>
     9a0:	e3a03001 	mov	r3, #1
     9a4:	e50b300c 	str	r3, [fp, #-12]
     9a8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9ac:	e2633000 	rsb	r3, r3, #0
     9b0:	e50b3010 	str	r3, [fp, #-16]
     9b4:	ea000001 	b	9c0 <printint+0x5c>
     9b8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9bc:	e50b3010 	str	r3, [fp, #-16]
     9c0:	e3a03000 	mov	r3, #0
     9c4:	e50b3008 	str	r3, [fp, #-8]
     9c8:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     9cc:	e51b3010 	ldr	r3, [fp, #-16]
     9d0:	e1a01002 	mov	r1, r2
     9d4:	e1a00003 	mov	r0, r3
     9d8:	eb0001d5 	bl	1134 <__aeabi_uidivmod>
     9dc:	e1a03001 	mov	r3, r1
     9e0:	e1a01003 	mov	r1, r3
     9e4:	e51b3008 	ldr	r3, [fp, #-8]
     9e8:	e2832001 	add	r2, r3, #1
     9ec:	e50b2008 	str	r2, [fp, #-8]
     9f0:	e59f20a0 	ldr	r2, [pc, #160]	@ a98 <printint+0x134>
     9f4:	e7d22001 	ldrb	r2, [r2, r1]
     9f8:	e2433004 	sub	r3, r3, #4
     9fc:	e083300b 	add	r3, r3, fp
     a00:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a04:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     a08:	e1a01003 	mov	r1, r3
     a0c:	e51b0010 	ldr	r0, [fp, #-16]
     a10:	eb00018a 	bl	1040 <__udivsi3>
     a14:	e1a03000 	mov	r3, r0
     a18:	e50b3010 	str	r3, [fp, #-16]
     a1c:	e51b3010 	ldr	r3, [fp, #-16]
     a20:	e3530000 	cmp	r3, #0
     a24:	1affffe7 	bne	9c8 <printint+0x64>
     a28:	e51b300c 	ldr	r3, [fp, #-12]
     a2c:	e3530000 	cmp	r3, #0
     a30:	0a00000e 	beq	a70 <printint+0x10c>
     a34:	e51b3008 	ldr	r3, [fp, #-8]
     a38:	e2832001 	add	r2, r3, #1
     a3c:	e50b2008 	str	r2, [fp, #-8]
     a40:	e2433004 	sub	r3, r3, #4
     a44:	e083300b 	add	r3, r3, fp
     a48:	e3a0202d 	mov	r2, #45	@ 0x2d
     a4c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a50:	ea000006 	b	a70 <printint+0x10c>
     a54:	e24b2020 	sub	r2, fp, #32
     a58:	e51b3008 	ldr	r3, [fp, #-8]
     a5c:	e0823003 	add	r3, r2, r3
     a60:	e5d33000 	ldrb	r3, [r3]
     a64:	e1a01003 	mov	r1, r3
     a68:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     a6c:	ebffffae 	bl	92c <putc>
     a70:	e51b3008 	ldr	r3, [fp, #-8]
     a74:	e2433001 	sub	r3, r3, #1
     a78:	e50b3008 	str	r3, [fp, #-8]
     a7c:	e51b3008 	ldr	r3, [fp, #-8]
     a80:	e3530000 	cmp	r3, #0
     a84:	aafffff2 	bge	a54 <printint+0xf0>
     a88:	e1a00000 	nop			@ (mov r0, r0)
     a8c:	e1a00000 	nop			@ (mov r0, r0)
     a90:	e24bd004 	sub	sp, fp, #4
     a94:	e8bd8800 	pop	{fp, pc}
     a98:	000011e8 	.word	0x000011e8

00000a9c <printf>:
     a9c:	e92d000e 	push	{r1, r2, r3}
     aa0:	e92d4800 	push	{fp, lr}
     aa4:	e28db004 	add	fp, sp, #4
     aa8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     aac:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     ab0:	e3a03000 	mov	r3, #0
     ab4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ab8:	e28b3008 	add	r3, fp, #8
     abc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ac0:	e3a03000 	mov	r3, #0
     ac4:	e50b3010 	str	r3, [fp, #-16]
     ac8:	ea000074 	b	ca0 <printf+0x204>
     acc:	e59b2004 	ldr	r2, [fp, #4]
     ad0:	e51b3010 	ldr	r3, [fp, #-16]
     ad4:	e0823003 	add	r3, r2, r3
     ad8:	e5d33000 	ldrb	r3, [r3]
     adc:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     ae0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ae4:	e3530000 	cmp	r3, #0
     ae8:	1a00000b 	bne	b1c <printf+0x80>
     aec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     af0:	e3530025 	cmp	r3, #37	@ 0x25
     af4:	1a000002 	bne	b04 <printf+0x68>
     af8:	e3a03025 	mov	r3, #37	@ 0x25
     afc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b00:	ea000063 	b	c94 <printf+0x1f8>
     b04:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b08:	e6ef3073 	uxtb	r3, r3
     b0c:	e1a01003 	mov	r1, r3
     b10:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b14:	ebffff84 	bl	92c <putc>
     b18:	ea00005d 	b	c94 <printf+0x1f8>
     b1c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b20:	e3530025 	cmp	r3, #37	@ 0x25
     b24:	1a00005a 	bne	c94 <printf+0x1f8>
     b28:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b2c:	e3530064 	cmp	r3, #100	@ 0x64
     b30:	1a00000a 	bne	b60 <printf+0xc4>
     b34:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b38:	e5933000 	ldr	r3, [r3]
     b3c:	e1a01003 	mov	r1, r3
     b40:	e3a03001 	mov	r3, #1
     b44:	e3a0200a 	mov	r2, #10
     b48:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b4c:	ebffff84 	bl	964 <printint>
     b50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b54:	e2833004 	add	r3, r3, #4
     b58:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b5c:	ea00004a 	b	c8c <printf+0x1f0>
     b60:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b64:	e3530078 	cmp	r3, #120	@ 0x78
     b68:	0a000002 	beq	b78 <printf+0xdc>
     b6c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b70:	e3530070 	cmp	r3, #112	@ 0x70
     b74:	1a00000a 	bne	ba4 <printf+0x108>
     b78:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b7c:	e5933000 	ldr	r3, [r3]
     b80:	e1a01003 	mov	r1, r3
     b84:	e3a03000 	mov	r3, #0
     b88:	e3a02010 	mov	r2, #16
     b8c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b90:	ebffff73 	bl	964 <printint>
     b94:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b98:	e2833004 	add	r3, r3, #4
     b9c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ba0:	ea000039 	b	c8c <printf+0x1f0>
     ba4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ba8:	e3530073 	cmp	r3, #115	@ 0x73
     bac:	1a000018 	bne	c14 <printf+0x178>
     bb0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bb4:	e5933000 	ldr	r3, [r3]
     bb8:	e50b300c 	str	r3, [fp, #-12]
     bbc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bc0:	e2833004 	add	r3, r3, #4
     bc4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bc8:	e51b300c 	ldr	r3, [fp, #-12]
     bcc:	e3530000 	cmp	r3, #0
     bd0:	1a00000a 	bne	c00 <printf+0x164>
     bd4:	e59f30f4 	ldr	r3, [pc, #244]	@ cd0 <printf+0x234>
     bd8:	e50b300c 	str	r3, [fp, #-12]
     bdc:	ea000007 	b	c00 <printf+0x164>
     be0:	e51b300c 	ldr	r3, [fp, #-12]
     be4:	e5d33000 	ldrb	r3, [r3]
     be8:	e1a01003 	mov	r1, r3
     bec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bf0:	ebffff4d 	bl	92c <putc>
     bf4:	e51b300c 	ldr	r3, [fp, #-12]
     bf8:	e2833001 	add	r3, r3, #1
     bfc:	e50b300c 	str	r3, [fp, #-12]
     c00:	e51b300c 	ldr	r3, [fp, #-12]
     c04:	e5d33000 	ldrb	r3, [r3]
     c08:	e3530000 	cmp	r3, #0
     c0c:	1afffff3 	bne	be0 <printf+0x144>
     c10:	ea00001d 	b	c8c <printf+0x1f0>
     c14:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c18:	e3530063 	cmp	r3, #99	@ 0x63
     c1c:	1a000009 	bne	c48 <printf+0x1ac>
     c20:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c24:	e5933000 	ldr	r3, [r3]
     c28:	e6ef3073 	uxtb	r3, r3
     c2c:	e1a01003 	mov	r1, r3
     c30:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c34:	ebffff3c 	bl	92c <putc>
     c38:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c3c:	e2833004 	add	r3, r3, #4
     c40:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c44:	ea000010 	b	c8c <printf+0x1f0>
     c48:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c4c:	e3530025 	cmp	r3, #37	@ 0x25
     c50:	1a000005 	bne	c6c <printf+0x1d0>
     c54:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c58:	e6ef3073 	uxtb	r3, r3
     c5c:	e1a01003 	mov	r1, r3
     c60:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c64:	ebffff30 	bl	92c <putc>
     c68:	ea000007 	b	c8c <printf+0x1f0>
     c6c:	e3a01025 	mov	r1, #37	@ 0x25
     c70:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c74:	ebffff2c 	bl	92c <putc>
     c78:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c7c:	e6ef3073 	uxtb	r3, r3
     c80:	e1a01003 	mov	r1, r3
     c84:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c88:	ebffff27 	bl	92c <putc>
     c8c:	e3a03000 	mov	r3, #0
     c90:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c94:	e51b3010 	ldr	r3, [fp, #-16]
     c98:	e2833001 	add	r3, r3, #1
     c9c:	e50b3010 	str	r3, [fp, #-16]
     ca0:	e59b2004 	ldr	r2, [fp, #4]
     ca4:	e51b3010 	ldr	r3, [fp, #-16]
     ca8:	e0823003 	add	r3, r2, r3
     cac:	e5d33000 	ldrb	r3, [r3]
     cb0:	e3530000 	cmp	r3, #0
     cb4:	1affff84 	bne	acc <printf+0x30>
     cb8:	e1a00000 	nop			@ (mov r0, r0)
     cbc:	e1a00000 	nop			@ (mov r0, r0)
     cc0:	e24bd004 	sub	sp, fp, #4
     cc4:	e8bd4800 	pop	{fp, lr}
     cc8:	e28dd00c 	add	sp, sp, #12
     ccc:	e12fff1e 	bx	lr
     cd0:	000011e0 	.word	0x000011e0

00000cd4 <free>:
     cd4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     cd8:	e28db000 	add	fp, sp, #0
     cdc:	e24dd014 	sub	sp, sp, #20
     ce0:	e50b0010 	str	r0, [fp, #-16]
     ce4:	e51b3010 	ldr	r3, [fp, #-16]
     ce8:	e2433008 	sub	r3, r3, #8
     cec:	e50b300c 	str	r3, [fp, #-12]
     cf0:	e59f3154 	ldr	r3, [pc, #340]	@ e4c <free+0x178>
     cf4:	e5933000 	ldr	r3, [r3]
     cf8:	e50b3008 	str	r3, [fp, #-8]
     cfc:	ea000010 	b	d44 <free+0x70>
     d00:	e51b3008 	ldr	r3, [fp, #-8]
     d04:	e5933000 	ldr	r3, [r3]
     d08:	e51b2008 	ldr	r2, [fp, #-8]
     d0c:	e1520003 	cmp	r2, r3
     d10:	3a000008 	bcc	d38 <free+0x64>
     d14:	e51b200c 	ldr	r2, [fp, #-12]
     d18:	e51b3008 	ldr	r3, [fp, #-8]
     d1c:	e1520003 	cmp	r2, r3
     d20:	8a000010 	bhi	d68 <free+0x94>
     d24:	e51b3008 	ldr	r3, [fp, #-8]
     d28:	e5933000 	ldr	r3, [r3]
     d2c:	e51b200c 	ldr	r2, [fp, #-12]
     d30:	e1520003 	cmp	r2, r3
     d34:	3a00000b 	bcc	d68 <free+0x94>
     d38:	e51b3008 	ldr	r3, [fp, #-8]
     d3c:	e5933000 	ldr	r3, [r3]
     d40:	e50b3008 	str	r3, [fp, #-8]
     d44:	e51b200c 	ldr	r2, [fp, #-12]
     d48:	e51b3008 	ldr	r3, [fp, #-8]
     d4c:	e1520003 	cmp	r2, r3
     d50:	9affffea 	bls	d00 <free+0x2c>
     d54:	e51b3008 	ldr	r3, [fp, #-8]
     d58:	e5933000 	ldr	r3, [r3]
     d5c:	e51b200c 	ldr	r2, [fp, #-12]
     d60:	e1520003 	cmp	r2, r3
     d64:	2affffe5 	bcs	d00 <free+0x2c>
     d68:	e51b300c 	ldr	r3, [fp, #-12]
     d6c:	e5933004 	ldr	r3, [r3, #4]
     d70:	e1a03183 	lsl	r3, r3, #3
     d74:	e51b200c 	ldr	r2, [fp, #-12]
     d78:	e0822003 	add	r2, r2, r3
     d7c:	e51b3008 	ldr	r3, [fp, #-8]
     d80:	e5933000 	ldr	r3, [r3]
     d84:	e1520003 	cmp	r2, r3
     d88:	1a00000d 	bne	dc4 <free+0xf0>
     d8c:	e51b300c 	ldr	r3, [fp, #-12]
     d90:	e5932004 	ldr	r2, [r3, #4]
     d94:	e51b3008 	ldr	r3, [fp, #-8]
     d98:	e5933000 	ldr	r3, [r3]
     d9c:	e5933004 	ldr	r3, [r3, #4]
     da0:	e0822003 	add	r2, r2, r3
     da4:	e51b300c 	ldr	r3, [fp, #-12]
     da8:	e5832004 	str	r2, [r3, #4]
     dac:	e51b3008 	ldr	r3, [fp, #-8]
     db0:	e5933000 	ldr	r3, [r3]
     db4:	e5932000 	ldr	r2, [r3]
     db8:	e51b300c 	ldr	r3, [fp, #-12]
     dbc:	e5832000 	str	r2, [r3]
     dc0:	ea000003 	b	dd4 <free+0x100>
     dc4:	e51b3008 	ldr	r3, [fp, #-8]
     dc8:	e5932000 	ldr	r2, [r3]
     dcc:	e51b300c 	ldr	r3, [fp, #-12]
     dd0:	e5832000 	str	r2, [r3]
     dd4:	e51b3008 	ldr	r3, [fp, #-8]
     dd8:	e5933004 	ldr	r3, [r3, #4]
     ddc:	e1a03183 	lsl	r3, r3, #3
     de0:	e51b2008 	ldr	r2, [fp, #-8]
     de4:	e0823003 	add	r3, r2, r3
     de8:	e51b200c 	ldr	r2, [fp, #-12]
     dec:	e1520003 	cmp	r2, r3
     df0:	1a00000b 	bne	e24 <free+0x150>
     df4:	e51b3008 	ldr	r3, [fp, #-8]
     df8:	e5932004 	ldr	r2, [r3, #4]
     dfc:	e51b300c 	ldr	r3, [fp, #-12]
     e00:	e5933004 	ldr	r3, [r3, #4]
     e04:	e0822003 	add	r2, r2, r3
     e08:	e51b3008 	ldr	r3, [fp, #-8]
     e0c:	e5832004 	str	r2, [r3, #4]
     e10:	e51b300c 	ldr	r3, [fp, #-12]
     e14:	e5932000 	ldr	r2, [r3]
     e18:	e51b3008 	ldr	r3, [fp, #-8]
     e1c:	e5832000 	str	r2, [r3]
     e20:	ea000002 	b	e30 <free+0x15c>
     e24:	e51b3008 	ldr	r3, [fp, #-8]
     e28:	e51b200c 	ldr	r2, [fp, #-12]
     e2c:	e5832000 	str	r2, [r3]
     e30:	e59f2014 	ldr	r2, [pc, #20]	@ e4c <free+0x178>
     e34:	e51b3008 	ldr	r3, [fp, #-8]
     e38:	e5823000 	str	r3, [r2]
     e3c:	e1a00000 	nop			@ (mov r0, r0)
     e40:	e28bd000 	add	sp, fp, #0
     e44:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     e48:	e12fff1e 	bx	lr
     e4c:	00001204 	.word	0x00001204

00000e50 <morecore>:
     e50:	e92d4800 	push	{fp, lr}
     e54:	e28db004 	add	fp, sp, #4
     e58:	e24dd010 	sub	sp, sp, #16
     e5c:	e50b0010 	str	r0, [fp, #-16]
     e60:	e51b3010 	ldr	r3, [fp, #-16]
     e64:	e3530a01 	cmp	r3, #4096	@ 0x1000
     e68:	2a000001 	bcs	e74 <morecore+0x24>
     e6c:	e3a03a01 	mov	r3, #4096	@ 0x1000
     e70:	e50b3010 	str	r3, [fp, #-16]
     e74:	e51b3010 	ldr	r3, [fp, #-16]
     e78:	e1a03183 	lsl	r3, r3, #3
     e7c:	e1a00003 	mov	r0, r3
     e80:	ebfffe61 	bl	80c <sbrk>
     e84:	e50b0008 	str	r0, [fp, #-8]
     e88:	e51b3008 	ldr	r3, [fp, #-8]
     e8c:	e3730001 	cmn	r3, #1
     e90:	1a000001 	bne	e9c <morecore+0x4c>
     e94:	e3a03000 	mov	r3, #0
     e98:	ea00000a 	b	ec8 <morecore+0x78>
     e9c:	e51b3008 	ldr	r3, [fp, #-8]
     ea0:	e50b300c 	str	r3, [fp, #-12]
     ea4:	e51b300c 	ldr	r3, [fp, #-12]
     ea8:	e51b2010 	ldr	r2, [fp, #-16]
     eac:	e5832004 	str	r2, [r3, #4]
     eb0:	e51b300c 	ldr	r3, [fp, #-12]
     eb4:	e2833008 	add	r3, r3, #8
     eb8:	e1a00003 	mov	r0, r3
     ebc:	ebffff84 	bl	cd4 <free>
     ec0:	e59f300c 	ldr	r3, [pc, #12]	@ ed4 <morecore+0x84>
     ec4:	e5933000 	ldr	r3, [r3]
     ec8:	e1a00003 	mov	r0, r3
     ecc:	e24bd004 	sub	sp, fp, #4
     ed0:	e8bd8800 	pop	{fp, pc}
     ed4:	00001204 	.word	0x00001204

00000ed8 <malloc>:
     ed8:	e92d4800 	push	{fp, lr}
     edc:	e28db004 	add	fp, sp, #4
     ee0:	e24dd018 	sub	sp, sp, #24
     ee4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     ee8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     eec:	e2833007 	add	r3, r3, #7
     ef0:	e1a031a3 	lsr	r3, r3, #3
     ef4:	e2833001 	add	r3, r3, #1
     ef8:	e50b3010 	str	r3, [fp, #-16]
     efc:	e59f3134 	ldr	r3, [pc, #308]	@ 1038 <malloc+0x160>
     f00:	e5933000 	ldr	r3, [r3]
     f04:	e50b300c 	str	r3, [fp, #-12]
     f08:	e51b300c 	ldr	r3, [fp, #-12]
     f0c:	e3530000 	cmp	r3, #0
     f10:	1a00000b 	bne	f44 <malloc+0x6c>
     f14:	e59f3120 	ldr	r3, [pc, #288]	@ 103c <malloc+0x164>
     f18:	e50b300c 	str	r3, [fp, #-12]
     f1c:	e59f2114 	ldr	r2, [pc, #276]	@ 1038 <malloc+0x160>
     f20:	e51b300c 	ldr	r3, [fp, #-12]
     f24:	e5823000 	str	r3, [r2]
     f28:	e59f3108 	ldr	r3, [pc, #264]	@ 1038 <malloc+0x160>
     f2c:	e5933000 	ldr	r3, [r3]
     f30:	e59f2104 	ldr	r2, [pc, #260]	@ 103c <malloc+0x164>
     f34:	e5823000 	str	r3, [r2]
     f38:	e59f30fc 	ldr	r3, [pc, #252]	@ 103c <malloc+0x164>
     f3c:	e3a02000 	mov	r2, #0
     f40:	e5832004 	str	r2, [r3, #4]
     f44:	e51b300c 	ldr	r3, [fp, #-12]
     f48:	e5933000 	ldr	r3, [r3]
     f4c:	e50b3008 	str	r3, [fp, #-8]
     f50:	e51b3008 	ldr	r3, [fp, #-8]
     f54:	e5933004 	ldr	r3, [r3, #4]
     f58:	e51b2010 	ldr	r2, [fp, #-16]
     f5c:	e1520003 	cmp	r2, r3
     f60:	8a00001e 	bhi	fe0 <malloc+0x108>
     f64:	e51b3008 	ldr	r3, [fp, #-8]
     f68:	e5933004 	ldr	r3, [r3, #4]
     f6c:	e51b2010 	ldr	r2, [fp, #-16]
     f70:	e1520003 	cmp	r2, r3
     f74:	1a000004 	bne	f8c <malloc+0xb4>
     f78:	e51b3008 	ldr	r3, [fp, #-8]
     f7c:	e5932000 	ldr	r2, [r3]
     f80:	e51b300c 	ldr	r3, [fp, #-12]
     f84:	e5832000 	str	r2, [r3]
     f88:	ea00000e 	b	fc8 <malloc+0xf0>
     f8c:	e51b3008 	ldr	r3, [fp, #-8]
     f90:	e5932004 	ldr	r2, [r3, #4]
     f94:	e51b3010 	ldr	r3, [fp, #-16]
     f98:	e0422003 	sub	r2, r2, r3
     f9c:	e51b3008 	ldr	r3, [fp, #-8]
     fa0:	e5832004 	str	r2, [r3, #4]
     fa4:	e51b3008 	ldr	r3, [fp, #-8]
     fa8:	e5933004 	ldr	r3, [r3, #4]
     fac:	e1a03183 	lsl	r3, r3, #3
     fb0:	e51b2008 	ldr	r2, [fp, #-8]
     fb4:	e0823003 	add	r3, r2, r3
     fb8:	e50b3008 	str	r3, [fp, #-8]
     fbc:	e51b3008 	ldr	r3, [fp, #-8]
     fc0:	e51b2010 	ldr	r2, [fp, #-16]
     fc4:	e5832004 	str	r2, [r3, #4]
     fc8:	e59f2068 	ldr	r2, [pc, #104]	@ 1038 <malloc+0x160>
     fcc:	e51b300c 	ldr	r3, [fp, #-12]
     fd0:	e5823000 	str	r3, [r2]
     fd4:	e51b3008 	ldr	r3, [fp, #-8]
     fd8:	e2833008 	add	r3, r3, #8
     fdc:	ea000012 	b	102c <malloc+0x154>
     fe0:	e59f3050 	ldr	r3, [pc, #80]	@ 1038 <malloc+0x160>
     fe4:	e5933000 	ldr	r3, [r3]
     fe8:	e51b2008 	ldr	r2, [fp, #-8]
     fec:	e1520003 	cmp	r2, r3
     ff0:	1a000007 	bne	1014 <malloc+0x13c>
     ff4:	e51b0010 	ldr	r0, [fp, #-16]
     ff8:	ebffff94 	bl	e50 <morecore>
     ffc:	e50b0008 	str	r0, [fp, #-8]
    1000:	e51b3008 	ldr	r3, [fp, #-8]
    1004:	e3530000 	cmp	r3, #0
    1008:	1a000001 	bne	1014 <malloc+0x13c>
    100c:	e3a03000 	mov	r3, #0
    1010:	ea000005 	b	102c <malloc+0x154>
    1014:	e51b3008 	ldr	r3, [fp, #-8]
    1018:	e50b300c 	str	r3, [fp, #-12]
    101c:	e51b3008 	ldr	r3, [fp, #-8]
    1020:	e5933000 	ldr	r3, [r3]
    1024:	e50b3008 	str	r3, [fp, #-8]
    1028:	eaffffc8 	b	f50 <malloc+0x78>
    102c:	e1a00003 	mov	r0, r3
    1030:	e24bd004 	sub	sp, fp, #4
    1034:	e8bd8800 	pop	{fp, pc}
    1038:	00001204 	.word	0x00001204
    103c:	000011fc 	.word	0x000011fc

00001040 <__udivsi3>:
    1040:	e2512001 	subs	r2, r1, #1
    1044:	012fff1e 	bxeq	lr
    1048:	3a000036 	bcc	1128 <__udivsi3+0xe8>
    104c:	e1500001 	cmp	r0, r1
    1050:	9a000022 	bls	10e0 <__udivsi3+0xa0>
    1054:	e1110002 	tst	r1, r2
    1058:	0a000023 	beq	10ec <__udivsi3+0xac>
    105c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1060:	01a01181 	lsleq	r1, r1, #3
    1064:	03a03008 	moveq	r3, #8
    1068:	13a03001 	movne	r3, #1
    106c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1070:	31510000 	cmpcc	r1, r0
    1074:	31a01201 	lslcc	r1, r1, #4
    1078:	31a03203 	lslcc	r3, r3, #4
    107c:	3afffffa 	bcc	106c <__udivsi3+0x2c>
    1080:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1084:	31510000 	cmpcc	r1, r0
    1088:	31a01081 	lslcc	r1, r1, #1
    108c:	31a03083 	lslcc	r3, r3, #1
    1090:	3afffffa 	bcc	1080 <__udivsi3+0x40>
    1094:	e3a02000 	mov	r2, #0
    1098:	e1500001 	cmp	r0, r1
    109c:	20400001 	subcs	r0, r0, r1
    10a0:	21822003 	orrcs	r2, r2, r3
    10a4:	e15000a1 	cmp	r0, r1, lsr #1
    10a8:	204000a1 	subcs	r0, r0, r1, lsr #1
    10ac:	218220a3 	orrcs	r2, r2, r3, lsr #1
    10b0:	e1500121 	cmp	r0, r1, lsr #2
    10b4:	20400121 	subcs	r0, r0, r1, lsr #2
    10b8:	21822123 	orrcs	r2, r2, r3, lsr #2
    10bc:	e15001a1 	cmp	r0, r1, lsr #3
    10c0:	204001a1 	subcs	r0, r0, r1, lsr #3
    10c4:	218221a3 	orrcs	r2, r2, r3, lsr #3
    10c8:	e3500000 	cmp	r0, #0
    10cc:	11b03223 	lsrsne	r3, r3, #4
    10d0:	11a01221 	lsrne	r1, r1, #4
    10d4:	1affffef 	bne	1098 <__udivsi3+0x58>
    10d8:	e1a00002 	mov	r0, r2
    10dc:	e12fff1e 	bx	lr
    10e0:	03a00001 	moveq	r0, #1
    10e4:	13a00000 	movne	r0, #0
    10e8:	e12fff1e 	bx	lr
    10ec:	e3510801 	cmp	r1, #65536	@ 0x10000
    10f0:	21a01821 	lsrcs	r1, r1, #16
    10f4:	23a02010 	movcs	r2, #16
    10f8:	33a02000 	movcc	r2, #0
    10fc:	e3510c01 	cmp	r1, #256	@ 0x100
    1100:	21a01421 	lsrcs	r1, r1, #8
    1104:	22822008 	addcs	r2, r2, #8
    1108:	e3510010 	cmp	r1, #16
    110c:	21a01221 	lsrcs	r1, r1, #4
    1110:	22822004 	addcs	r2, r2, #4
    1114:	e3510004 	cmp	r1, #4
    1118:	82822003 	addhi	r2, r2, #3
    111c:	908220a1 	addls	r2, r2, r1, lsr #1
    1120:	e1a00230 	lsr	r0, r0, r2
    1124:	e12fff1e 	bx	lr
    1128:	e3500000 	cmp	r0, #0
    112c:	13e00000 	mvnne	r0, #0
    1130:	ea000007 	b	1154 <__aeabi_idiv0>

00001134 <__aeabi_uidivmod>:
    1134:	e3510000 	cmp	r1, #0
    1138:	0afffffa 	beq	1128 <__udivsi3+0xe8>
    113c:	e92d4003 	push	{r0, r1, lr}
    1140:	ebffffbe 	bl	1040 <__udivsi3>
    1144:	e8bd4006 	pop	{r1, r2, lr}
    1148:	e0030092 	mul	r3, r2, r0
    114c:	e0411003 	sub	r1, r1, r3
    1150:	e12fff1e 	bx	lr

00001154 <__aeabi_idiv0>:
    1154:	e12fff1e 	bx	lr
