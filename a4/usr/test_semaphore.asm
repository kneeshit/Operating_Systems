
_test_semaphore:     file format elf32-littlearm


Disassembly of section .text:

00000000 <producer>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e51b3010 	ldr	r3, [fp, #-16]
      14:	e50b300c 	str	r3, [fp, #-12]
      18:	e3a03000 	mov	r3, #0
      1c:	e50b3008 	str	r3, [fp, #-8]
      20:	ea000011 	b	6c <producer+0x6c>
      24:	e59f005c 	ldr	r0, [pc, #92]	@ 88 <producer+0x88>
      28:	eb00027f 	bl	a2c <semUp>
      2c:	e59f3058 	ldr	r3, [pc, #88]	@ 8c <producer+0x8c>
      30:	e5933000 	ldr	r3, [r3]
      34:	e2833001 	add	r3, r3, #1
      38:	e59f204c 	ldr	r2, [pc, #76]	@ 8c <producer+0x8c>
      3c:	e5823000 	str	r3, [r2]
      40:	e59f3044 	ldr	r3, [pc, #68]	@ 8c <producer+0x8c>
      44:	e5933000 	ldr	r3, [r3]
      48:	e51b200c 	ldr	r2, [fp, #-12]
      4c:	e59f103c 	ldr	r1, [pc, #60]	@ 90 <producer+0x90>
      50:	e3a00001 	mov	r0, #1
      54:	eb00044c 	bl	118c <printf>
      58:	e3a0000a 	mov	r0, #10
      5c:	eb000355 	bl	db8 <sleep>
      60:	e51b3008 	ldr	r3, [fp, #-8]
      64:	e2833001 	add	r3, r3, #1
      68:	e50b3008 	str	r3, [fp, #-8]
      6c:	e51b3008 	ldr	r3, [fp, #-8]
      70:	e3530002 	cmp	r3, #2
      74:	daffffea 	ble	24 <producer+0x24>
      78:	e3a03000 	mov	r3, #0
      7c:	e1a00003 	mov	r0, r3
      80:	e24bd004 	sub	sp, fp, #4
      84:	e8bd8800 	pop	{fp, pc}
      88:	00001a0c 	.word	0x00001a0c
      8c:	00001a24 	.word	0x00001a24
      90:	00001848 	.word	0x00001848

00000094 <consumer>:
      94:	e92d4800 	push	{fp, lr}
      98:	e28db004 	add	fp, sp, #4
      9c:	e24dd010 	sub	sp, sp, #16
      a0:	e50b0010 	str	r0, [fp, #-16]
      a4:	e51b3010 	ldr	r3, [fp, #-16]
      a8:	e50b300c 	str	r3, [fp, #-12]
      ac:	e3a03000 	mov	r3, #0
      b0:	e50b3008 	str	r3, [fp, #-8]
      b4:	ea00000c 	b	ec <consumer+0x58>
      b8:	e59f0048 	ldr	r0, [pc, #72]	@ 108 <consumer+0x74>
      bc:	eb000272 	bl	a8c <semDown>
      c0:	e59f3044 	ldr	r3, [pc, #68]	@ 10c <consumer+0x78>
      c4:	e5933000 	ldr	r3, [r3]
      c8:	e51b200c 	ldr	r2, [fp, #-12]
      cc:	e59f103c 	ldr	r1, [pc, #60]	@ 110 <consumer+0x7c>
      d0:	e3a00001 	mov	r0, #1
      d4:	eb00042c 	bl	118c <printf>
      d8:	e3a00014 	mov	r0, #20
      dc:	eb000335 	bl	db8 <sleep>
      e0:	e51b3008 	ldr	r3, [fp, #-8]
      e4:	e2833001 	add	r3, r3, #1
      e8:	e50b3008 	str	r3, [fp, #-8]
      ec:	e51b3008 	ldr	r3, [fp, #-8]
      f0:	e3530002 	cmp	r3, #2
      f4:	daffffef 	ble	b8 <consumer+0x24>
      f8:	e3a03000 	mov	r3, #0
      fc:	e1a00003 	mov	r0, r3
     100:	e24bd004 	sub	sp, fp, #4
     104:	e8bd8800 	pop	{fp, pc}
     108:	00001a0c 	.word	0x00001a0c
     10c:	00001a24 	.word	0x00001a24
     110:	00001884 	.word	0x00001884

00000114 <main>:
     114:	e92d4800 	push	{fp, lr}
     118:	e28db004 	add	fp, sp, #4
     11c:	e24dd018 	sub	sp, sp, #24
     120:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     124:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     128:	e59f1140 	ldr	r1, [pc, #320]	@ 270 <main+0x15c>
     12c:	e3a00001 	mov	r0, #1
     130:	eb000415 	bl	118c <printf>
     134:	e3a01000 	mov	r1, #0
     138:	e59f0134 	ldr	r0, [pc, #308]	@ 274 <main+0x160>
     13c:	eb000224 	bl	9d4 <semInit>
     140:	e59f1130 	ldr	r1, [pc, #304]	@ 278 <main+0x164>
     144:	e3a00001 	mov	r0, #1
     148:	eb00040f 	bl	118c <printf>
     14c:	e24b3008 	sub	r3, fp, #8
     150:	e3a02001 	mov	r2, #1
     154:	e59f1120 	ldr	r1, [pc, #288]	@ 27c <main+0x168>
     158:	e1a00003 	mov	r0, r3
     15c:	eb000354 	bl	eb4 <thread_create>
     160:	e1a03000 	mov	r3, r0
     164:	e3530000 	cmp	r3, #0
     168:	aa000003 	bge	17c <main+0x68>
     16c:	e59f110c 	ldr	r1, [pc, #268]	@ 280 <main+0x16c>
     170:	e3a00001 	mov	r0, #1
     174:	eb000404 	bl	118c <printf>
     178:	eb00026c 	bl	b30 <exit>
     17c:	e24b3010 	sub	r3, fp, #16
     180:	e3a02001 	mov	r2, #1
     184:	e59f10f8 	ldr	r1, [pc, #248]	@ 284 <main+0x170>
     188:	e1a00003 	mov	r0, r3
     18c:	eb000348 	bl	eb4 <thread_create>
     190:	e1a03000 	mov	r3, r0
     194:	e3530000 	cmp	r3, #0
     198:	aa000003 	bge	1ac <main+0x98>
     19c:	e59f10e4 	ldr	r1, [pc, #228]	@ 288 <main+0x174>
     1a0:	e3a00001 	mov	r0, #1
     1a4:	eb0003f8 	bl	118c <printf>
     1a8:	eb000260 	bl	b30 <exit>
     1ac:	e24b300c 	sub	r3, fp, #12
     1b0:	e3a02002 	mov	r2, #2
     1b4:	e59f10c0 	ldr	r1, [pc, #192]	@ 27c <main+0x168>
     1b8:	e1a00003 	mov	r0, r3
     1bc:	eb00033c 	bl	eb4 <thread_create>
     1c0:	e1a03000 	mov	r3, r0
     1c4:	e3530000 	cmp	r3, #0
     1c8:	aa000003 	bge	1dc <main+0xc8>
     1cc:	e59f10b8 	ldr	r1, [pc, #184]	@ 28c <main+0x178>
     1d0:	e3a00001 	mov	r0, #1
     1d4:	eb0003ec 	bl	118c <printf>
     1d8:	eb000254 	bl	b30 <exit>
     1dc:	e24b3014 	sub	r3, fp, #20
     1e0:	e3a02002 	mov	r2, #2
     1e4:	e59f1098 	ldr	r1, [pc, #152]	@ 284 <main+0x170>
     1e8:	e1a00003 	mov	r0, r3
     1ec:	eb000330 	bl	eb4 <thread_create>
     1f0:	e1a03000 	mov	r3, r0
     1f4:	e3530000 	cmp	r3, #0
     1f8:	aa000003 	bge	20c <main+0xf8>
     1fc:	e59f108c 	ldr	r1, [pc, #140]	@ 290 <main+0x17c>
     200:	e3a00001 	mov	r0, #1
     204:	eb0003e0 	bl	118c <printf>
     208:	eb000248 	bl	b30 <exit>
     20c:	e59f1080 	ldr	r1, [pc, #128]	@ 294 <main+0x180>
     210:	e3a00001 	mov	r0, #1
     214:	eb0003dc 	bl	118c <printf>
     218:	e51b3008 	ldr	r3, [fp, #-8]
     21c:	e1a00003 	mov	r0, r3
     220:	eb000335 	bl	efc <thread_join>
     224:	e51b3010 	ldr	r3, [fp, #-16]
     228:	e1a00003 	mov	r0, r3
     22c:	eb000332 	bl	efc <thread_join>
     230:	e51b300c 	ldr	r3, [fp, #-12]
     234:	e1a00003 	mov	r0, r3
     238:	eb00032f 	bl	efc <thread_join>
     23c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     240:	e1a00003 	mov	r0, r3
     244:	eb00032c 	bl	efc <thread_join>
     248:	e59f3048 	ldr	r3, [pc, #72]	@ 298 <main+0x184>
     24c:	e5933000 	ldr	r3, [r3]
     250:	e1a02003 	mov	r2, r3
     254:	e59f1040 	ldr	r1, [pc, #64]	@ 29c <main+0x188>
     258:	e3a00001 	mov	r0, #1
     25c:	eb0003ca 	bl	118c <printf>
     260:	e59f1038 	ldr	r1, [pc, #56]	@ 2a0 <main+0x18c>
     264:	e3a00001 	mov	r0, #1
     268:	eb0003c7 	bl	118c <printf>
     26c:	eb00022f 	bl	b30 <exit>
     270:	000018b0 	.word	0x000018b0
     274:	00001a0c 	.word	0x00001a0c
     278:	000018cc 	.word	0x000018cc
     27c:	00000000 	.word	0x00000000
     280:	000018f0 	.word	0x000018f0
     284:	00000094 	.word	0x00000094
     288:	00001914 	.word	0x00001914
     28c:	00001938 	.word	0x00001938
     290:	0000195c 	.word	0x0000195c
     294:	00001980 	.word	0x00001980
     298:	00001a24 	.word	0x00001a24
     29c:	000019b0 	.word	0x000019b0
     2a0:	000019e0 	.word	0x000019e0

000002a4 <strcpy>:
     2a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2a8:	e28db000 	add	fp, sp, #0
     2ac:	e24dd014 	sub	sp, sp, #20
     2b0:	e50b0010 	str	r0, [fp, #-16]
     2b4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     2b8:	e51b3010 	ldr	r3, [fp, #-16]
     2bc:	e50b3008 	str	r3, [fp, #-8]
     2c0:	e1a00000 	nop			@ (mov r0, r0)
     2c4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     2c8:	e2823001 	add	r3, r2, #1
     2cc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     2d0:	e51b3010 	ldr	r3, [fp, #-16]
     2d4:	e2831001 	add	r1, r3, #1
     2d8:	e50b1010 	str	r1, [fp, #-16]
     2dc:	e5d22000 	ldrb	r2, [r2]
     2e0:	e5c32000 	strb	r2, [r3]
     2e4:	e5d33000 	ldrb	r3, [r3]
     2e8:	e3530000 	cmp	r3, #0
     2ec:	1afffff4 	bne	2c4 <strcpy+0x20>
     2f0:	e51b3008 	ldr	r3, [fp, #-8]
     2f4:	e1a00003 	mov	r0, r3
     2f8:	e28bd000 	add	sp, fp, #0
     2fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     300:	e12fff1e 	bx	lr

00000304 <strcmp>:
     304:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     308:	e28db000 	add	fp, sp, #0
     30c:	e24dd00c 	sub	sp, sp, #12
     310:	e50b0008 	str	r0, [fp, #-8]
     314:	e50b100c 	str	r1, [fp, #-12]
     318:	ea000005 	b	334 <strcmp+0x30>
     31c:	e51b3008 	ldr	r3, [fp, #-8]
     320:	e2833001 	add	r3, r3, #1
     324:	e50b3008 	str	r3, [fp, #-8]
     328:	e51b300c 	ldr	r3, [fp, #-12]
     32c:	e2833001 	add	r3, r3, #1
     330:	e50b300c 	str	r3, [fp, #-12]
     334:	e51b3008 	ldr	r3, [fp, #-8]
     338:	e5d33000 	ldrb	r3, [r3]
     33c:	e3530000 	cmp	r3, #0
     340:	0a000005 	beq	35c <strcmp+0x58>
     344:	e51b3008 	ldr	r3, [fp, #-8]
     348:	e5d32000 	ldrb	r2, [r3]
     34c:	e51b300c 	ldr	r3, [fp, #-12]
     350:	e5d33000 	ldrb	r3, [r3]
     354:	e1520003 	cmp	r2, r3
     358:	0affffef 	beq	31c <strcmp+0x18>
     35c:	e51b3008 	ldr	r3, [fp, #-8]
     360:	e5d33000 	ldrb	r3, [r3]
     364:	e1a02003 	mov	r2, r3
     368:	e51b300c 	ldr	r3, [fp, #-12]
     36c:	e5d33000 	ldrb	r3, [r3]
     370:	e0423003 	sub	r3, r2, r3
     374:	e1a00003 	mov	r0, r3
     378:	e28bd000 	add	sp, fp, #0
     37c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     380:	e12fff1e 	bx	lr

00000384 <strlen>:
     384:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     388:	e28db000 	add	fp, sp, #0
     38c:	e24dd014 	sub	sp, sp, #20
     390:	e50b0010 	str	r0, [fp, #-16]
     394:	e3a03000 	mov	r3, #0
     398:	e50b3008 	str	r3, [fp, #-8]
     39c:	ea000002 	b	3ac <strlen+0x28>
     3a0:	e51b3008 	ldr	r3, [fp, #-8]
     3a4:	e2833001 	add	r3, r3, #1
     3a8:	e50b3008 	str	r3, [fp, #-8]
     3ac:	e51b3008 	ldr	r3, [fp, #-8]
     3b0:	e51b2010 	ldr	r2, [fp, #-16]
     3b4:	e0823003 	add	r3, r2, r3
     3b8:	e5d33000 	ldrb	r3, [r3]
     3bc:	e3530000 	cmp	r3, #0
     3c0:	1afffff6 	bne	3a0 <strlen+0x1c>
     3c4:	e51b3008 	ldr	r3, [fp, #-8]
     3c8:	e1a00003 	mov	r0, r3
     3cc:	e28bd000 	add	sp, fp, #0
     3d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3d4:	e12fff1e 	bx	lr

000003d8 <memset>:
     3d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3dc:	e28db000 	add	fp, sp, #0
     3e0:	e24dd024 	sub	sp, sp, #36	@ 0x24
     3e4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     3e8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     3ec:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     3f0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3f4:	e50b3008 	str	r3, [fp, #-8]
     3f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     3fc:	e54b300d 	strb	r3, [fp, #-13]
     400:	e55b200d 	ldrb	r2, [fp, #-13]
     404:	e1a03002 	mov	r3, r2
     408:	e1a03403 	lsl	r3, r3, #8
     40c:	e0833002 	add	r3, r3, r2
     410:	e1a03803 	lsl	r3, r3, #16
     414:	e1a02003 	mov	r2, r3
     418:	e55b300d 	ldrb	r3, [fp, #-13]
     41c:	e1a03403 	lsl	r3, r3, #8
     420:	e1822003 	orr	r2, r2, r3
     424:	e55b300d 	ldrb	r3, [fp, #-13]
     428:	e1823003 	orr	r3, r2, r3
     42c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     430:	ea000008 	b	458 <memset+0x80>
     434:	e51b3008 	ldr	r3, [fp, #-8]
     438:	e55b200d 	ldrb	r2, [fp, #-13]
     43c:	e5c32000 	strb	r2, [r3]
     440:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     444:	e2433001 	sub	r3, r3, #1
     448:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     44c:	e51b3008 	ldr	r3, [fp, #-8]
     450:	e2833001 	add	r3, r3, #1
     454:	e50b3008 	str	r3, [fp, #-8]
     458:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     45c:	e3530000 	cmp	r3, #0
     460:	0a000003 	beq	474 <memset+0x9c>
     464:	e51b3008 	ldr	r3, [fp, #-8]
     468:	e2033003 	and	r3, r3, #3
     46c:	e3530000 	cmp	r3, #0
     470:	1affffef 	bne	434 <memset+0x5c>
     474:	e51b3008 	ldr	r3, [fp, #-8]
     478:	e50b300c 	str	r3, [fp, #-12]
     47c:	ea000008 	b	4a4 <memset+0xcc>
     480:	e51b300c 	ldr	r3, [fp, #-12]
     484:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     488:	e5832000 	str	r2, [r3]
     48c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     490:	e2433004 	sub	r3, r3, #4
     494:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     498:	e51b300c 	ldr	r3, [fp, #-12]
     49c:	e2833004 	add	r3, r3, #4
     4a0:	e50b300c 	str	r3, [fp, #-12]
     4a4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4a8:	e3530003 	cmp	r3, #3
     4ac:	8afffff3 	bhi	480 <memset+0xa8>
     4b0:	e51b300c 	ldr	r3, [fp, #-12]
     4b4:	e50b3008 	str	r3, [fp, #-8]
     4b8:	ea000008 	b	4e0 <memset+0x108>
     4bc:	e51b3008 	ldr	r3, [fp, #-8]
     4c0:	e55b200d 	ldrb	r2, [fp, #-13]
     4c4:	e5c32000 	strb	r2, [r3]
     4c8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4cc:	e2433001 	sub	r3, r3, #1
     4d0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     4d4:	e51b3008 	ldr	r3, [fp, #-8]
     4d8:	e2833001 	add	r3, r3, #1
     4dc:	e50b3008 	str	r3, [fp, #-8]
     4e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4e4:	e3530000 	cmp	r3, #0
     4e8:	1afffff3 	bne	4bc <memset+0xe4>
     4ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4f0:	e1a00003 	mov	r0, r3
     4f4:	e28bd000 	add	sp, fp, #0
     4f8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4fc:	e12fff1e 	bx	lr

00000500 <strchr>:
     500:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     504:	e28db000 	add	fp, sp, #0
     508:	e24dd00c 	sub	sp, sp, #12
     50c:	e50b0008 	str	r0, [fp, #-8]
     510:	e1a03001 	mov	r3, r1
     514:	e54b3009 	strb	r3, [fp, #-9]
     518:	ea000009 	b	544 <strchr+0x44>
     51c:	e51b3008 	ldr	r3, [fp, #-8]
     520:	e5d33000 	ldrb	r3, [r3]
     524:	e55b2009 	ldrb	r2, [fp, #-9]
     528:	e1520003 	cmp	r2, r3
     52c:	1a000001 	bne	538 <strchr+0x38>
     530:	e51b3008 	ldr	r3, [fp, #-8]
     534:	ea000007 	b	558 <strchr+0x58>
     538:	e51b3008 	ldr	r3, [fp, #-8]
     53c:	e2833001 	add	r3, r3, #1
     540:	e50b3008 	str	r3, [fp, #-8]
     544:	e51b3008 	ldr	r3, [fp, #-8]
     548:	e5d33000 	ldrb	r3, [r3]
     54c:	e3530000 	cmp	r3, #0
     550:	1afffff1 	bne	51c <strchr+0x1c>
     554:	e3a03000 	mov	r3, #0
     558:	e1a00003 	mov	r0, r3
     55c:	e28bd000 	add	sp, fp, #0
     560:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     564:	e12fff1e 	bx	lr

00000568 <gets>:
     568:	e92d4800 	push	{fp, lr}
     56c:	e28db004 	add	fp, sp, #4
     570:	e24dd018 	sub	sp, sp, #24
     574:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     578:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     57c:	e3a03000 	mov	r3, #0
     580:	e50b3008 	str	r3, [fp, #-8]
     584:	ea000016 	b	5e4 <gets+0x7c>
     588:	e24b300d 	sub	r3, fp, #13
     58c:	e3a02001 	mov	r2, #1
     590:	e1a01003 	mov	r1, r3
     594:	e3a00000 	mov	r0, #0
     598:	eb00017f 	bl	b9c <read>
     59c:	e50b000c 	str	r0, [fp, #-12]
     5a0:	e51b300c 	ldr	r3, [fp, #-12]
     5a4:	e3530000 	cmp	r3, #0
     5a8:	da000013 	ble	5fc <gets+0x94>
     5ac:	e51b3008 	ldr	r3, [fp, #-8]
     5b0:	e2832001 	add	r2, r3, #1
     5b4:	e50b2008 	str	r2, [fp, #-8]
     5b8:	e1a02003 	mov	r2, r3
     5bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5c0:	e0833002 	add	r3, r3, r2
     5c4:	e55b200d 	ldrb	r2, [fp, #-13]
     5c8:	e5c32000 	strb	r2, [r3]
     5cc:	e55b300d 	ldrb	r3, [fp, #-13]
     5d0:	e353000a 	cmp	r3, #10
     5d4:	0a000009 	beq	600 <gets+0x98>
     5d8:	e55b300d 	ldrb	r3, [fp, #-13]
     5dc:	e353000d 	cmp	r3, #13
     5e0:	0a000006 	beq	600 <gets+0x98>
     5e4:	e51b3008 	ldr	r3, [fp, #-8]
     5e8:	e2833001 	add	r3, r3, #1
     5ec:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     5f0:	e1520003 	cmp	r2, r3
     5f4:	caffffe3 	bgt	588 <gets+0x20>
     5f8:	ea000000 	b	600 <gets+0x98>
     5fc:	e1a00000 	nop			@ (mov r0, r0)
     600:	e51b3008 	ldr	r3, [fp, #-8]
     604:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     608:	e0823003 	add	r3, r2, r3
     60c:	e3a02000 	mov	r2, #0
     610:	e5c32000 	strb	r2, [r3]
     614:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     618:	e1a00003 	mov	r0, r3
     61c:	e24bd004 	sub	sp, fp, #4
     620:	e8bd8800 	pop	{fp, pc}

00000624 <stat>:
     624:	e92d4800 	push	{fp, lr}
     628:	e28db004 	add	fp, sp, #4
     62c:	e24dd010 	sub	sp, sp, #16
     630:	e50b0010 	str	r0, [fp, #-16]
     634:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     638:	e3a01000 	mov	r1, #0
     63c:	e51b0010 	ldr	r0, [fp, #-16]
     640:	eb000182 	bl	c50 <open>
     644:	e50b0008 	str	r0, [fp, #-8]
     648:	e51b3008 	ldr	r3, [fp, #-8]
     64c:	e3530000 	cmp	r3, #0
     650:	aa000001 	bge	65c <stat+0x38>
     654:	e3e03000 	mvn	r3, #0
     658:	ea000006 	b	678 <stat+0x54>
     65c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     660:	e51b0008 	ldr	r0, [fp, #-8]
     664:	eb000194 	bl	cbc <fstat>
     668:	e50b000c 	str	r0, [fp, #-12]
     66c:	e51b0008 	ldr	r0, [fp, #-8]
     670:	eb00015b 	bl	be4 <close>
     674:	e51b300c 	ldr	r3, [fp, #-12]
     678:	e1a00003 	mov	r0, r3
     67c:	e24bd004 	sub	sp, fp, #4
     680:	e8bd8800 	pop	{fp, pc}

00000684 <atoi>:
     684:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     688:	e28db000 	add	fp, sp, #0
     68c:	e24dd014 	sub	sp, sp, #20
     690:	e50b0010 	str	r0, [fp, #-16]
     694:	e3a03000 	mov	r3, #0
     698:	e50b3008 	str	r3, [fp, #-8]
     69c:	ea00000c 	b	6d4 <atoi+0x50>
     6a0:	e51b2008 	ldr	r2, [fp, #-8]
     6a4:	e1a03002 	mov	r3, r2
     6a8:	e1a03103 	lsl	r3, r3, #2
     6ac:	e0833002 	add	r3, r3, r2
     6b0:	e1a03083 	lsl	r3, r3, #1
     6b4:	e1a01003 	mov	r1, r3
     6b8:	e51b3010 	ldr	r3, [fp, #-16]
     6bc:	e2832001 	add	r2, r3, #1
     6c0:	e50b2010 	str	r2, [fp, #-16]
     6c4:	e5d33000 	ldrb	r3, [r3]
     6c8:	e0813003 	add	r3, r1, r3
     6cc:	e2433030 	sub	r3, r3, #48	@ 0x30
     6d0:	e50b3008 	str	r3, [fp, #-8]
     6d4:	e51b3010 	ldr	r3, [fp, #-16]
     6d8:	e5d33000 	ldrb	r3, [r3]
     6dc:	e353002f 	cmp	r3, #47	@ 0x2f
     6e0:	9a000003 	bls	6f4 <atoi+0x70>
     6e4:	e51b3010 	ldr	r3, [fp, #-16]
     6e8:	e5d33000 	ldrb	r3, [r3]
     6ec:	e3530039 	cmp	r3, #57	@ 0x39
     6f0:	9affffea 	bls	6a0 <atoi+0x1c>
     6f4:	e51b3010 	ldr	r3, [fp, #-16]
     6f8:	e5d33000 	ldrb	r3, [r3]
     6fc:	e3530000 	cmp	r3, #0
     700:	1a000001 	bne	70c <atoi+0x88>
     704:	e51b3008 	ldr	r3, [fp, #-8]
     708:	ea000000 	b	710 <atoi+0x8c>
     70c:	e3e03000 	mvn	r3, #0
     710:	e1a00003 	mov	r0, r3
     714:	e28bd000 	add	sp, fp, #0
     718:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     71c:	e12fff1e 	bx	lr

00000720 <memmove>:
     720:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     724:	e28db000 	add	fp, sp, #0
     728:	e24dd01c 	sub	sp, sp, #28
     72c:	e50b0010 	str	r0, [fp, #-16]
     730:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     734:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     738:	e51b3010 	ldr	r3, [fp, #-16]
     73c:	e50b3008 	str	r3, [fp, #-8]
     740:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     744:	e50b300c 	str	r3, [fp, #-12]
     748:	ea000007 	b	76c <memmove+0x4c>
     74c:	e51b200c 	ldr	r2, [fp, #-12]
     750:	e2823001 	add	r3, r2, #1
     754:	e50b300c 	str	r3, [fp, #-12]
     758:	e51b3008 	ldr	r3, [fp, #-8]
     75c:	e2831001 	add	r1, r3, #1
     760:	e50b1008 	str	r1, [fp, #-8]
     764:	e5d22000 	ldrb	r2, [r2]
     768:	e5c32000 	strb	r2, [r3]
     76c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     770:	e2432001 	sub	r2, r3, #1
     774:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     778:	e3530000 	cmp	r3, #0
     77c:	cafffff2 	bgt	74c <memmove+0x2c>
     780:	e51b3010 	ldr	r3, [fp, #-16]
     784:	e1a00003 	mov	r0, r3
     788:	e28bd000 	add	sp, fp, #0
     78c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     790:	e12fff1e 	bx	lr

00000794 <initiateLock>:
     794:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     798:	e28db000 	add	fp, sp, #0
     79c:	e24dd00c 	sub	sp, sp, #12
     7a0:	e50b0008 	str	r0, [fp, #-8]
     7a4:	e51b3008 	ldr	r3, [fp, #-8]
     7a8:	e3a02000 	mov	r2, #0
     7ac:	e5832000 	str	r2, [r3]
     7b0:	e51b3008 	ldr	r3, [fp, #-8]
     7b4:	e3a02001 	mov	r2, #1
     7b8:	e5832004 	str	r2, [r3, #4]
     7bc:	e1a00000 	nop			@ (mov r0, r0)
     7c0:	e28bd000 	add	sp, fp, #0
     7c4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7c8:	e12fff1e 	bx	lr

000007cc <xchg>:
     7cc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     7d0:	e28db000 	add	fp, sp, #0
     7d4:	e24dd00c 	sub	sp, sp, #12
     7d8:	e50b0008 	str	r0, [fp, #-8]
     7dc:	e50b100c 	str	r1, [fp, #-12]
     7e0:	e51b200c 	ldr	r2, [fp, #-12]
     7e4:	e51b3008 	ldr	r3, [fp, #-8]
     7e8:	e1931f9f 	ldrex	r1, [r3]
     7ec:	e1830f92 	strex	r0, r2, [r3]
     7f0:	e3500000 	cmp	r0, #0
     7f4:	1afffffb 	bne	7e8 <xchg+0x1c>
     7f8:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     7fc:	e1a03001 	mov	r3, r1
     800:	e1a00003 	mov	r0, r3
     804:	e28bd000 	add	sp, fp, #0
     808:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     80c:	e12fff1e 	bx	lr

00000810 <acquireLock>:
     810:	e92d4800 	push	{fp, lr}
     814:	e28db004 	add	fp, sp, #4
     818:	e24dd008 	sub	sp, sp, #8
     81c:	e50b0008 	str	r0, [fp, #-8]
     820:	e51b3008 	ldr	r3, [fp, #-8]
     824:	e5933004 	ldr	r3, [r3, #4]
     828:	e3530000 	cmp	r3, #0
     82c:	0a000008 	beq	854 <acquireLock+0x44>
     830:	e1a00000 	nop			@ (mov r0, r0)
     834:	e51b3008 	ldr	r3, [fp, #-8]
     838:	e3a01001 	mov	r1, #1
     83c:	e1a00003 	mov	r0, r3
     840:	ebffffe1 	bl	7cc <xchg>
     844:	e1a03000 	mov	r3, r0
     848:	e3530000 	cmp	r3, #0
     84c:	1afffff8 	bne	834 <acquireLock+0x24>
     850:	ea000000 	b	858 <acquireLock+0x48>
     854:	e1a00000 	nop			@ (mov r0, r0)
     858:	e24bd004 	sub	sp, fp, #4
     85c:	e8bd8800 	pop	{fp, pc}

00000860 <releaseLock>:
     860:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     864:	e28db000 	add	fp, sp, #0
     868:	e24dd00c 	sub	sp, sp, #12
     86c:	e50b0008 	str	r0, [fp, #-8]
     870:	e51b3008 	ldr	r3, [fp, #-8]
     874:	e5933004 	ldr	r3, [r3, #4]
     878:	e3530000 	cmp	r3, #0
     87c:	0a000007 	beq	8a0 <releaseLock+0x40>
     880:	e51b3008 	ldr	r3, [fp, #-8]
     884:	e5933000 	ldr	r3, [r3]
     888:	e3530001 	cmp	r3, #1
     88c:	1a000005 	bne	8a8 <releaseLock+0x48>
     890:	e51b3008 	ldr	r3, [fp, #-8]
     894:	e3a02000 	mov	r2, #0
     898:	e5832000 	str	r2, [r3]
     89c:	ea000002 	b	8ac <releaseLock+0x4c>
     8a0:	e1a00000 	nop			@ (mov r0, r0)
     8a4:	ea000000 	b	8ac <releaseLock+0x4c>
     8a8:	e1a00000 	nop			@ (mov r0, r0)
     8ac:	e28bd000 	add	sp, fp, #0
     8b0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8b4:	e12fff1e 	bx	lr

000008b8 <initiateCondVar>:
     8b8:	e92d4800 	push	{fp, lr}
     8bc:	e28db004 	add	fp, sp, #4
     8c0:	e24dd008 	sub	sp, sp, #8
     8c4:	e50b0008 	str	r0, [fp, #-8]
     8c8:	eb0001b8 	bl	fb0 <getChannel>
     8cc:	e1a02000 	mov	r2, r0
     8d0:	e51b3008 	ldr	r3, [fp, #-8]
     8d4:	e5832000 	str	r2, [r3]
     8d8:	e51b3008 	ldr	r3, [fp, #-8]
     8dc:	e3a02001 	mov	r2, #1
     8e0:	e5832004 	str	r2, [r3, #4]
     8e4:	e1a00000 	nop			@ (mov r0, r0)
     8e8:	e24bd004 	sub	sp, fp, #4
     8ec:	e8bd8800 	pop	{fp, pc}

000008f0 <condWait>:
     8f0:	e92d4800 	push	{fp, lr}
     8f4:	e28db004 	add	fp, sp, #4
     8f8:	e24dd008 	sub	sp, sp, #8
     8fc:	e50b0008 	str	r0, [fp, #-8]
     900:	e50b100c 	str	r1, [fp, #-12]
     904:	e51b3008 	ldr	r3, [fp, #-8]
     908:	e5933004 	ldr	r3, [r3, #4]
     90c:	e3530000 	cmp	r3, #0
     910:	0a00000c 	beq	948 <condWait+0x58>
     914:	e51b300c 	ldr	r3, [fp, #-12]
     918:	e5933004 	ldr	r3, [r3, #4]
     91c:	e3530000 	cmp	r3, #0
     920:	0a000008 	beq	948 <condWait+0x58>
     924:	e51b000c 	ldr	r0, [fp, #-12]
     928:	ebffffcc 	bl	860 <releaseLock>
     92c:	e51b3008 	ldr	r3, [fp, #-8]
     930:	e5933000 	ldr	r3, [r3]
     934:	e1a00003 	mov	r0, r3
     938:	eb000193 	bl	f8c <sleepChan>
     93c:	e51b000c 	ldr	r0, [fp, #-12]
     940:	ebffffb2 	bl	810 <acquireLock>
     944:	ea000000 	b	94c <condWait+0x5c>
     948:	e1a00000 	nop			@ (mov r0, r0)
     94c:	e24bd004 	sub	sp, fp, #4
     950:	e8bd8800 	pop	{fp, pc}

00000954 <broadcast>:
     954:	e92d4800 	push	{fp, lr}
     958:	e28db004 	add	fp, sp, #4
     95c:	e24dd008 	sub	sp, sp, #8
     960:	e50b0008 	str	r0, [fp, #-8]
     964:	e51b3008 	ldr	r3, [fp, #-8]
     968:	e5933004 	ldr	r3, [r3, #4]
     96c:	e3530000 	cmp	r3, #0
     970:	0a000004 	beq	988 <broadcast+0x34>
     974:	e51b3008 	ldr	r3, [fp, #-8]
     978:	e5933000 	ldr	r3, [r3]
     97c:	e1a00003 	mov	r0, r3
     980:	eb000193 	bl	fd4 <sigChan>
     984:	ea000000 	b	98c <broadcast+0x38>
     988:	e1a00000 	nop			@ (mov r0, r0)
     98c:	e24bd004 	sub	sp, fp, #4
     990:	e8bd8800 	pop	{fp, pc}

00000994 <signal>:
     994:	e92d4800 	push	{fp, lr}
     998:	e28db004 	add	fp, sp, #4
     99c:	e24dd008 	sub	sp, sp, #8
     9a0:	e50b0008 	str	r0, [fp, #-8]
     9a4:	e51b3008 	ldr	r3, [fp, #-8]
     9a8:	e5933004 	ldr	r3, [r3, #4]
     9ac:	e3530000 	cmp	r3, #0
     9b0:	0a000004 	beq	9c8 <signal+0x34>
     9b4:	e51b3008 	ldr	r3, [fp, #-8]
     9b8:	e5933000 	ldr	r3, [r3]
     9bc:	e1a00003 	mov	r0, r3
     9c0:	eb00018c 	bl	ff8 <sigOneChan>
     9c4:	ea000000 	b	9cc <signal+0x38>
     9c8:	e1a00000 	nop			@ (mov r0, r0)
     9cc:	e24bd004 	sub	sp, fp, #4
     9d0:	e8bd8800 	pop	{fp, pc}

000009d4 <semInit>:
     9d4:	e92d4800 	push	{fp, lr}
     9d8:	e28db004 	add	fp, sp, #4
     9dc:	e24dd008 	sub	sp, sp, #8
     9e0:	e50b0008 	str	r0, [fp, #-8]
     9e4:	e50b100c 	str	r1, [fp, #-12]
     9e8:	e51b3008 	ldr	r3, [fp, #-8]
     9ec:	e51b200c 	ldr	r2, [fp, #-12]
     9f0:	e5832000 	str	r2, [r3]
     9f4:	e51b3008 	ldr	r3, [fp, #-8]
     9f8:	e2833004 	add	r3, r3, #4
     9fc:	e1a00003 	mov	r0, r3
     a00:	ebffff63 	bl	794 <initiateLock>
     a04:	e51b3008 	ldr	r3, [fp, #-8]
     a08:	e283300c 	add	r3, r3, #12
     a0c:	e1a00003 	mov	r0, r3
     a10:	ebffffa8 	bl	8b8 <initiateCondVar>
     a14:	e51b3008 	ldr	r3, [fp, #-8]
     a18:	e3a02001 	mov	r2, #1
     a1c:	e5832014 	str	r2, [r3, #20]
     a20:	e1a00000 	nop			@ (mov r0, r0)
     a24:	e24bd004 	sub	sp, fp, #4
     a28:	e8bd8800 	pop	{fp, pc}

00000a2c <semUp>:
     a2c:	e92d4800 	push	{fp, lr}
     a30:	e28db004 	add	fp, sp, #4
     a34:	e24dd008 	sub	sp, sp, #8
     a38:	e50b0008 	str	r0, [fp, #-8]
     a3c:	e51b3008 	ldr	r3, [fp, #-8]
     a40:	e2833004 	add	r3, r3, #4
     a44:	e1a00003 	mov	r0, r3
     a48:	ebffff70 	bl	810 <acquireLock>
     a4c:	e51b3008 	ldr	r3, [fp, #-8]
     a50:	e5933000 	ldr	r3, [r3]
     a54:	e2832001 	add	r2, r3, #1
     a58:	e51b3008 	ldr	r3, [fp, #-8]
     a5c:	e5832000 	str	r2, [r3]
     a60:	e51b3008 	ldr	r3, [fp, #-8]
     a64:	e283300c 	add	r3, r3, #12
     a68:	e1a00003 	mov	r0, r3
     a6c:	ebffffc8 	bl	994 <signal>
     a70:	e51b3008 	ldr	r3, [fp, #-8]
     a74:	e2833004 	add	r3, r3, #4
     a78:	e1a00003 	mov	r0, r3
     a7c:	ebffff77 	bl	860 <releaseLock>
     a80:	e1a00000 	nop			@ (mov r0, r0)
     a84:	e24bd004 	sub	sp, fp, #4
     a88:	e8bd8800 	pop	{fp, pc}

00000a8c <semDown>:
     a8c:	e92d4800 	push	{fp, lr}
     a90:	e28db004 	add	fp, sp, #4
     a94:	e24dd008 	sub	sp, sp, #8
     a98:	e50b0008 	str	r0, [fp, #-8]
     a9c:	e51b3008 	ldr	r3, [fp, #-8]
     aa0:	e2833004 	add	r3, r3, #4
     aa4:	e1a00003 	mov	r0, r3
     aa8:	ebffff58 	bl	810 <acquireLock>
     aac:	ea000006 	b	acc <semDown+0x40>
     ab0:	e51b3008 	ldr	r3, [fp, #-8]
     ab4:	e283200c 	add	r2, r3, #12
     ab8:	e51b3008 	ldr	r3, [fp, #-8]
     abc:	e2833004 	add	r3, r3, #4
     ac0:	e1a01003 	mov	r1, r3
     ac4:	e1a00002 	mov	r0, r2
     ac8:	ebffff88 	bl	8f0 <condWait>
     acc:	e51b3008 	ldr	r3, [fp, #-8]
     ad0:	e5933000 	ldr	r3, [r3]
     ad4:	e3530000 	cmp	r3, #0
     ad8:	dafffff4 	ble	ab0 <semDown+0x24>
     adc:	e51b3008 	ldr	r3, [fp, #-8]
     ae0:	e5933000 	ldr	r3, [r3]
     ae4:	e2432001 	sub	r2, r3, #1
     ae8:	e51b3008 	ldr	r3, [fp, #-8]
     aec:	e5832000 	str	r2, [r3]
     af0:	e51b3008 	ldr	r3, [fp, #-8]
     af4:	e2833004 	add	r3, r3, #4
     af8:	e1a00003 	mov	r0, r3
     afc:	ebffff57 	bl	860 <releaseLock>
     b00:	e1a00000 	nop			@ (mov r0, r0)
     b04:	e24bd004 	sub	sp, fp, #4
     b08:	e8bd8800 	pop	{fp, pc}

00000b0c <fork>:
     b0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b10:	e1a04003 	mov	r4, r3
     b14:	e1a03002 	mov	r3, r2
     b18:	e1a02001 	mov	r2, r1
     b1c:	e1a01000 	mov	r1, r0
     b20:	e3a00001 	mov	r0, #1
     b24:	ef000000 	svc	0x00000000
     b28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b2c:	e12fff1e 	bx	lr

00000b30 <exit>:
     b30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b34:	e1a04003 	mov	r4, r3
     b38:	e1a03002 	mov	r3, r2
     b3c:	e1a02001 	mov	r2, r1
     b40:	e1a01000 	mov	r1, r0
     b44:	e3a00002 	mov	r0, #2
     b48:	ef000000 	svc	0x00000000
     b4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b50:	e12fff1e 	bx	lr

00000b54 <wait>:
     b54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b58:	e1a04003 	mov	r4, r3
     b5c:	e1a03002 	mov	r3, r2
     b60:	e1a02001 	mov	r2, r1
     b64:	e1a01000 	mov	r1, r0
     b68:	e3a00003 	mov	r0, #3
     b6c:	ef000000 	svc	0x00000000
     b70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b74:	e12fff1e 	bx	lr

00000b78 <pipe>:
     b78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b7c:	e1a04003 	mov	r4, r3
     b80:	e1a03002 	mov	r3, r2
     b84:	e1a02001 	mov	r2, r1
     b88:	e1a01000 	mov	r1, r0
     b8c:	e3a00004 	mov	r0, #4
     b90:	ef000000 	svc	0x00000000
     b94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b98:	e12fff1e 	bx	lr

00000b9c <read>:
     b9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba0:	e1a04003 	mov	r4, r3
     ba4:	e1a03002 	mov	r3, r2
     ba8:	e1a02001 	mov	r2, r1
     bac:	e1a01000 	mov	r1, r0
     bb0:	e3a00005 	mov	r0, #5
     bb4:	ef000000 	svc	0x00000000
     bb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bbc:	e12fff1e 	bx	lr

00000bc0 <write>:
     bc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc4:	e1a04003 	mov	r4, r3
     bc8:	e1a03002 	mov	r3, r2
     bcc:	e1a02001 	mov	r2, r1
     bd0:	e1a01000 	mov	r1, r0
     bd4:	e3a00010 	mov	r0, #16
     bd8:	ef000000 	svc	0x00000000
     bdc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be0:	e12fff1e 	bx	lr

00000be4 <close>:
     be4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be8:	e1a04003 	mov	r4, r3
     bec:	e1a03002 	mov	r3, r2
     bf0:	e1a02001 	mov	r2, r1
     bf4:	e1a01000 	mov	r1, r0
     bf8:	e3a00015 	mov	r0, #21
     bfc:	ef000000 	svc	0x00000000
     c00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c04:	e12fff1e 	bx	lr

00000c08 <kill>:
     c08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c0c:	e1a04003 	mov	r4, r3
     c10:	e1a03002 	mov	r3, r2
     c14:	e1a02001 	mov	r2, r1
     c18:	e1a01000 	mov	r1, r0
     c1c:	e3a00006 	mov	r0, #6
     c20:	ef000000 	svc	0x00000000
     c24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c28:	e12fff1e 	bx	lr

00000c2c <exec>:
     c2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c30:	e1a04003 	mov	r4, r3
     c34:	e1a03002 	mov	r3, r2
     c38:	e1a02001 	mov	r2, r1
     c3c:	e1a01000 	mov	r1, r0
     c40:	e3a00007 	mov	r0, #7
     c44:	ef000000 	svc	0x00000000
     c48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c4c:	e12fff1e 	bx	lr

00000c50 <open>:
     c50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c54:	e1a04003 	mov	r4, r3
     c58:	e1a03002 	mov	r3, r2
     c5c:	e1a02001 	mov	r2, r1
     c60:	e1a01000 	mov	r1, r0
     c64:	e3a0000f 	mov	r0, #15
     c68:	ef000000 	svc	0x00000000
     c6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c70:	e12fff1e 	bx	lr

00000c74 <mknod>:
     c74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c78:	e1a04003 	mov	r4, r3
     c7c:	e1a03002 	mov	r3, r2
     c80:	e1a02001 	mov	r2, r1
     c84:	e1a01000 	mov	r1, r0
     c88:	e3a00011 	mov	r0, #17
     c8c:	ef000000 	svc	0x00000000
     c90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c94:	e12fff1e 	bx	lr

00000c98 <unlink>:
     c98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c9c:	e1a04003 	mov	r4, r3
     ca0:	e1a03002 	mov	r3, r2
     ca4:	e1a02001 	mov	r2, r1
     ca8:	e1a01000 	mov	r1, r0
     cac:	e3a00012 	mov	r0, #18
     cb0:	ef000000 	svc	0x00000000
     cb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb8:	e12fff1e 	bx	lr

00000cbc <fstat>:
     cbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc0:	e1a04003 	mov	r4, r3
     cc4:	e1a03002 	mov	r3, r2
     cc8:	e1a02001 	mov	r2, r1
     ccc:	e1a01000 	mov	r1, r0
     cd0:	e3a00008 	mov	r0, #8
     cd4:	ef000000 	svc	0x00000000
     cd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cdc:	e12fff1e 	bx	lr

00000ce0 <link>:
     ce0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce4:	e1a04003 	mov	r4, r3
     ce8:	e1a03002 	mov	r3, r2
     cec:	e1a02001 	mov	r2, r1
     cf0:	e1a01000 	mov	r1, r0
     cf4:	e3a00013 	mov	r0, #19
     cf8:	ef000000 	svc	0x00000000
     cfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d00:	e12fff1e 	bx	lr

00000d04 <mkdir>:
     d04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d08:	e1a04003 	mov	r4, r3
     d0c:	e1a03002 	mov	r3, r2
     d10:	e1a02001 	mov	r2, r1
     d14:	e1a01000 	mov	r1, r0
     d18:	e3a00014 	mov	r0, #20
     d1c:	ef000000 	svc	0x00000000
     d20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d24:	e12fff1e 	bx	lr

00000d28 <chdir>:
     d28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d2c:	e1a04003 	mov	r4, r3
     d30:	e1a03002 	mov	r3, r2
     d34:	e1a02001 	mov	r2, r1
     d38:	e1a01000 	mov	r1, r0
     d3c:	e3a00009 	mov	r0, #9
     d40:	ef000000 	svc	0x00000000
     d44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d48:	e12fff1e 	bx	lr

00000d4c <dup>:
     d4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d50:	e1a04003 	mov	r4, r3
     d54:	e1a03002 	mov	r3, r2
     d58:	e1a02001 	mov	r2, r1
     d5c:	e1a01000 	mov	r1, r0
     d60:	e3a0000a 	mov	r0, #10
     d64:	ef000000 	svc	0x00000000
     d68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d6c:	e12fff1e 	bx	lr

00000d70 <getpid>:
     d70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d74:	e1a04003 	mov	r4, r3
     d78:	e1a03002 	mov	r3, r2
     d7c:	e1a02001 	mov	r2, r1
     d80:	e1a01000 	mov	r1, r0
     d84:	e3a0000b 	mov	r0, #11
     d88:	ef000000 	svc	0x00000000
     d8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d90:	e12fff1e 	bx	lr

00000d94 <sbrk>:
     d94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d98:	e1a04003 	mov	r4, r3
     d9c:	e1a03002 	mov	r3, r2
     da0:	e1a02001 	mov	r2, r1
     da4:	e1a01000 	mov	r1, r0
     da8:	e3a0000c 	mov	r0, #12
     dac:	ef000000 	svc	0x00000000
     db0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     db4:	e12fff1e 	bx	lr

00000db8 <sleep>:
     db8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dbc:	e1a04003 	mov	r4, r3
     dc0:	e1a03002 	mov	r3, r2
     dc4:	e1a02001 	mov	r2, r1
     dc8:	e1a01000 	mov	r1, r0
     dcc:	e3a0000d 	mov	r0, #13
     dd0:	ef000000 	svc	0x00000000
     dd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd8:	e12fff1e 	bx	lr

00000ddc <uptime>:
     ddc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     de0:	e1a04003 	mov	r4, r3
     de4:	e1a03002 	mov	r3, r2
     de8:	e1a02001 	mov	r2, r1
     dec:	e1a01000 	mov	r1, r0
     df0:	e3a0000e 	mov	r0, #14
     df4:	ef000000 	svc	0x00000000
     df8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dfc:	e12fff1e 	bx	lr

00000e00 <getprocs>:
     e00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e04:	e1a04003 	mov	r4, r3
     e08:	e1a03002 	mov	r3, r2
     e0c:	e1a02001 	mov	r2, r1
     e10:	e1a01000 	mov	r1, r0
     e14:	e3a00016 	mov	r0, #22
     e18:	ef000000 	svc	0x00000000
     e1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e20:	e12fff1e 	bx	lr

00000e24 <settickets>:
     e24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e28:	e1a04003 	mov	r4, r3
     e2c:	e1a03002 	mov	r3, r2
     e30:	e1a02001 	mov	r2, r1
     e34:	e1a01000 	mov	r1, r0
     e38:	e3a00017 	mov	r0, #23
     e3c:	ef000000 	svc	0x00000000
     e40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e44:	e12fff1e 	bx	lr

00000e48 <srand>:
     e48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e4c:	e1a04003 	mov	r4, r3
     e50:	e1a03002 	mov	r3, r2
     e54:	e1a02001 	mov	r2, r1
     e58:	e1a01000 	mov	r1, r0
     e5c:	e3a00018 	mov	r0, #24
     e60:	ef000000 	svc	0x00000000
     e64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e68:	e12fff1e 	bx	lr

00000e6c <getpinfo>:
     e6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e70:	e1a04003 	mov	r4, r3
     e74:	e1a03002 	mov	r3, r2
     e78:	e1a02001 	mov	r2, r1
     e7c:	e1a01000 	mov	r1, r0
     e80:	e3a00019 	mov	r0, #25
     e84:	ef000000 	svc	0x00000000
     e88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e8c:	e12fff1e 	bx	lr

00000e90 <dumppagetable>:
     e90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e94:	e1a04003 	mov	r4, r3
     e98:	e1a03002 	mov	r3, r2
     e9c:	e1a02001 	mov	r2, r1
     ea0:	e1a01000 	mov	r1, r0
     ea4:	e3a0001a 	mov	r0, #26
     ea8:	ef000000 	svc	0x00000000
     eac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eb0:	e12fff1e 	bx	lr

00000eb4 <thread_create>:
     eb4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eb8:	e1a04003 	mov	r4, r3
     ebc:	e1a03002 	mov	r3, r2
     ec0:	e1a02001 	mov	r2, r1
     ec4:	e1a01000 	mov	r1, r0
     ec8:	e3a0001b 	mov	r0, #27
     ecc:	ef000000 	svc	0x00000000
     ed0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ed4:	e12fff1e 	bx	lr

00000ed8 <thread_exit>:
     ed8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     edc:	e1a04003 	mov	r4, r3
     ee0:	e1a03002 	mov	r3, r2
     ee4:	e1a02001 	mov	r2, r1
     ee8:	e1a01000 	mov	r1, r0
     eec:	e3a0001c 	mov	r0, #28
     ef0:	ef000000 	svc	0x00000000
     ef4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ef8:	e12fff1e 	bx	lr

00000efc <thread_join>:
     efc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f00:	e1a04003 	mov	r4, r3
     f04:	e1a03002 	mov	r3, r2
     f08:	e1a02001 	mov	r2, r1
     f0c:	e1a01000 	mov	r1, r0
     f10:	e3a0001d 	mov	r0, #29
     f14:	ef000000 	svc	0x00000000
     f18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f1c:	e12fff1e 	bx	lr

00000f20 <waitpid>:
     f20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f24:	e1a04003 	mov	r4, r3
     f28:	e1a03002 	mov	r3, r2
     f2c:	e1a02001 	mov	r2, r1
     f30:	e1a01000 	mov	r1, r0
     f34:	e3a0001e 	mov	r0, #30
     f38:	ef000000 	svc	0x00000000
     f3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f40:	e12fff1e 	bx	lr

00000f44 <barrier_init>:
     f44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f48:	e1a04003 	mov	r4, r3
     f4c:	e1a03002 	mov	r3, r2
     f50:	e1a02001 	mov	r2, r1
     f54:	e1a01000 	mov	r1, r0
     f58:	e3a0001f 	mov	r0, #31
     f5c:	ef000000 	svc	0x00000000
     f60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f64:	e12fff1e 	bx	lr

00000f68 <barrier_check>:
     f68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f6c:	e1a04003 	mov	r4, r3
     f70:	e1a03002 	mov	r3, r2
     f74:	e1a02001 	mov	r2, r1
     f78:	e1a01000 	mov	r1, r0
     f7c:	e3a00020 	mov	r0, #32
     f80:	ef000000 	svc	0x00000000
     f84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f88:	e12fff1e 	bx	lr

00000f8c <sleepChan>:
     f8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f90:	e1a04003 	mov	r4, r3
     f94:	e1a03002 	mov	r3, r2
     f98:	e1a02001 	mov	r2, r1
     f9c:	e1a01000 	mov	r1, r0
     fa0:	e3a00024 	mov	r0, #36	@ 0x24
     fa4:	ef000000 	svc	0x00000000
     fa8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fac:	e12fff1e 	bx	lr

00000fb0 <getChannel>:
     fb0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fb4:	e1a04003 	mov	r4, r3
     fb8:	e1a03002 	mov	r3, r2
     fbc:	e1a02001 	mov	r2, r1
     fc0:	e1a01000 	mov	r1, r0
     fc4:	e3a00025 	mov	r0, #37	@ 0x25
     fc8:	ef000000 	svc	0x00000000
     fcc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fd0:	e12fff1e 	bx	lr

00000fd4 <sigChan>:
     fd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fd8:	e1a04003 	mov	r4, r3
     fdc:	e1a03002 	mov	r3, r2
     fe0:	e1a02001 	mov	r2, r1
     fe4:	e1a01000 	mov	r1, r0
     fe8:	e3a00026 	mov	r0, #38	@ 0x26
     fec:	ef000000 	svc	0x00000000
     ff0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ff4:	e12fff1e 	bx	lr

00000ff8 <sigOneChan>:
     ff8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ffc:	e1a04003 	mov	r4, r3
    1000:	e1a03002 	mov	r3, r2
    1004:	e1a02001 	mov	r2, r1
    1008:	e1a01000 	mov	r1, r0
    100c:	e3a00027 	mov	r0, #39	@ 0x27
    1010:	ef000000 	svc	0x00000000
    1014:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1018:	e12fff1e 	bx	lr

0000101c <putc>:
    101c:	e92d4800 	push	{fp, lr}
    1020:	e28db004 	add	fp, sp, #4
    1024:	e24dd008 	sub	sp, sp, #8
    1028:	e50b0008 	str	r0, [fp, #-8]
    102c:	e1a03001 	mov	r3, r1
    1030:	e54b3009 	strb	r3, [fp, #-9]
    1034:	e24b3009 	sub	r3, fp, #9
    1038:	e3a02001 	mov	r2, #1
    103c:	e1a01003 	mov	r1, r3
    1040:	e51b0008 	ldr	r0, [fp, #-8]
    1044:	ebfffedd 	bl	bc0 <write>
    1048:	e1a00000 	nop			@ (mov r0, r0)
    104c:	e24bd004 	sub	sp, fp, #4
    1050:	e8bd8800 	pop	{fp, pc}

00001054 <printint>:
    1054:	e92d4800 	push	{fp, lr}
    1058:	e28db004 	add	fp, sp, #4
    105c:	e24dd030 	sub	sp, sp, #48	@ 0x30
    1060:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    1064:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    1068:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    106c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    1070:	e3a03000 	mov	r3, #0
    1074:	e50b300c 	str	r3, [fp, #-12]
    1078:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    107c:	e3530000 	cmp	r3, #0
    1080:	0a000008 	beq	10a8 <printint+0x54>
    1084:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1088:	e3530000 	cmp	r3, #0
    108c:	aa000005 	bge	10a8 <printint+0x54>
    1090:	e3a03001 	mov	r3, #1
    1094:	e50b300c 	str	r3, [fp, #-12]
    1098:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    109c:	e2633000 	rsb	r3, r3, #0
    10a0:	e50b3010 	str	r3, [fp, #-16]
    10a4:	ea000001 	b	10b0 <printint+0x5c>
    10a8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    10ac:	e50b3010 	str	r3, [fp, #-16]
    10b0:	e3a03000 	mov	r3, #0
    10b4:	e50b3008 	str	r3, [fp, #-8]
    10b8:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    10bc:	e51b3010 	ldr	r3, [fp, #-16]
    10c0:	e1a01002 	mov	r1, r2
    10c4:	e1a00003 	mov	r0, r3
    10c8:	eb0001d5 	bl	1824 <__aeabi_uidivmod>
    10cc:	e1a03001 	mov	r3, r1
    10d0:	e1a01003 	mov	r1, r3
    10d4:	e51b3008 	ldr	r3, [fp, #-8]
    10d8:	e2832001 	add	r2, r3, #1
    10dc:	e50b2008 	str	r2, [fp, #-8]
    10e0:	e59f20a0 	ldr	r2, [pc, #160]	@ 1188 <printint+0x134>
    10e4:	e7d22001 	ldrb	r2, [r2, r1]
    10e8:	e2433004 	sub	r3, r3, #4
    10ec:	e083300b 	add	r3, r3, fp
    10f0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    10f4:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    10f8:	e1a01003 	mov	r1, r3
    10fc:	e51b0010 	ldr	r0, [fp, #-16]
    1100:	eb00018a 	bl	1730 <__udivsi3>
    1104:	e1a03000 	mov	r3, r0
    1108:	e50b3010 	str	r3, [fp, #-16]
    110c:	e51b3010 	ldr	r3, [fp, #-16]
    1110:	e3530000 	cmp	r3, #0
    1114:	1affffe7 	bne	10b8 <printint+0x64>
    1118:	e51b300c 	ldr	r3, [fp, #-12]
    111c:	e3530000 	cmp	r3, #0
    1120:	0a00000e 	beq	1160 <printint+0x10c>
    1124:	e51b3008 	ldr	r3, [fp, #-8]
    1128:	e2832001 	add	r2, r3, #1
    112c:	e50b2008 	str	r2, [fp, #-8]
    1130:	e2433004 	sub	r3, r3, #4
    1134:	e083300b 	add	r3, r3, fp
    1138:	e3a0202d 	mov	r2, #45	@ 0x2d
    113c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1140:	ea000006 	b	1160 <printint+0x10c>
    1144:	e24b2020 	sub	r2, fp, #32
    1148:	e51b3008 	ldr	r3, [fp, #-8]
    114c:	e0823003 	add	r3, r2, r3
    1150:	e5d33000 	ldrb	r3, [r3]
    1154:	e1a01003 	mov	r1, r3
    1158:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    115c:	ebffffae 	bl	101c <putc>
    1160:	e51b3008 	ldr	r3, [fp, #-8]
    1164:	e2433001 	sub	r3, r3, #1
    1168:	e50b3008 	str	r3, [fp, #-8]
    116c:	e51b3008 	ldr	r3, [fp, #-8]
    1170:	e3530000 	cmp	r3, #0
    1174:	aafffff2 	bge	1144 <printint+0xf0>
    1178:	e1a00000 	nop			@ (mov r0, r0)
    117c:	e1a00000 	nop			@ (mov r0, r0)
    1180:	e24bd004 	sub	sp, fp, #4
    1184:	e8bd8800 	pop	{fp, pc}
    1188:	000019f8 	.word	0x000019f8

0000118c <printf>:
    118c:	e92d000e 	push	{r1, r2, r3}
    1190:	e92d4800 	push	{fp, lr}
    1194:	e28db004 	add	fp, sp, #4
    1198:	e24dd024 	sub	sp, sp, #36	@ 0x24
    119c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    11a0:	e3a03000 	mov	r3, #0
    11a4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    11a8:	e28b3008 	add	r3, fp, #8
    11ac:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11b0:	e3a03000 	mov	r3, #0
    11b4:	e50b3010 	str	r3, [fp, #-16]
    11b8:	ea000074 	b	1390 <printf+0x204>
    11bc:	e59b2004 	ldr	r2, [fp, #4]
    11c0:	e51b3010 	ldr	r3, [fp, #-16]
    11c4:	e0823003 	add	r3, r2, r3
    11c8:	e5d33000 	ldrb	r3, [r3]
    11cc:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    11d0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    11d4:	e3530000 	cmp	r3, #0
    11d8:	1a00000b 	bne	120c <printf+0x80>
    11dc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11e0:	e3530025 	cmp	r3, #37	@ 0x25
    11e4:	1a000002 	bne	11f4 <printf+0x68>
    11e8:	e3a03025 	mov	r3, #37	@ 0x25
    11ec:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    11f0:	ea000063 	b	1384 <printf+0x1f8>
    11f4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11f8:	e6ef3073 	uxtb	r3, r3
    11fc:	e1a01003 	mov	r1, r3
    1200:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1204:	ebffff84 	bl	101c <putc>
    1208:	ea00005d 	b	1384 <printf+0x1f8>
    120c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1210:	e3530025 	cmp	r3, #37	@ 0x25
    1214:	1a00005a 	bne	1384 <printf+0x1f8>
    1218:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    121c:	e3530064 	cmp	r3, #100	@ 0x64
    1220:	1a00000a 	bne	1250 <printf+0xc4>
    1224:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1228:	e5933000 	ldr	r3, [r3]
    122c:	e1a01003 	mov	r1, r3
    1230:	e3a03001 	mov	r3, #1
    1234:	e3a0200a 	mov	r2, #10
    1238:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    123c:	ebffff84 	bl	1054 <printint>
    1240:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1244:	e2833004 	add	r3, r3, #4
    1248:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    124c:	ea00004a 	b	137c <printf+0x1f0>
    1250:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1254:	e3530078 	cmp	r3, #120	@ 0x78
    1258:	0a000002 	beq	1268 <printf+0xdc>
    125c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1260:	e3530070 	cmp	r3, #112	@ 0x70
    1264:	1a00000a 	bne	1294 <printf+0x108>
    1268:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    126c:	e5933000 	ldr	r3, [r3]
    1270:	e1a01003 	mov	r1, r3
    1274:	e3a03000 	mov	r3, #0
    1278:	e3a02010 	mov	r2, #16
    127c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1280:	ebffff73 	bl	1054 <printint>
    1284:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1288:	e2833004 	add	r3, r3, #4
    128c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1290:	ea000039 	b	137c <printf+0x1f0>
    1294:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1298:	e3530073 	cmp	r3, #115	@ 0x73
    129c:	1a000018 	bne	1304 <printf+0x178>
    12a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12a4:	e5933000 	ldr	r3, [r3]
    12a8:	e50b300c 	str	r3, [fp, #-12]
    12ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12b0:	e2833004 	add	r3, r3, #4
    12b4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12b8:	e51b300c 	ldr	r3, [fp, #-12]
    12bc:	e3530000 	cmp	r3, #0
    12c0:	1a00000a 	bne	12f0 <printf+0x164>
    12c4:	e59f30f4 	ldr	r3, [pc, #244]	@ 13c0 <printf+0x234>
    12c8:	e50b300c 	str	r3, [fp, #-12]
    12cc:	ea000007 	b	12f0 <printf+0x164>
    12d0:	e51b300c 	ldr	r3, [fp, #-12]
    12d4:	e5d33000 	ldrb	r3, [r3]
    12d8:	e1a01003 	mov	r1, r3
    12dc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12e0:	ebffff4d 	bl	101c <putc>
    12e4:	e51b300c 	ldr	r3, [fp, #-12]
    12e8:	e2833001 	add	r3, r3, #1
    12ec:	e50b300c 	str	r3, [fp, #-12]
    12f0:	e51b300c 	ldr	r3, [fp, #-12]
    12f4:	e5d33000 	ldrb	r3, [r3]
    12f8:	e3530000 	cmp	r3, #0
    12fc:	1afffff3 	bne	12d0 <printf+0x144>
    1300:	ea00001d 	b	137c <printf+0x1f0>
    1304:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1308:	e3530063 	cmp	r3, #99	@ 0x63
    130c:	1a000009 	bne	1338 <printf+0x1ac>
    1310:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1314:	e5933000 	ldr	r3, [r3]
    1318:	e6ef3073 	uxtb	r3, r3
    131c:	e1a01003 	mov	r1, r3
    1320:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1324:	ebffff3c 	bl	101c <putc>
    1328:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    132c:	e2833004 	add	r3, r3, #4
    1330:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1334:	ea000010 	b	137c <printf+0x1f0>
    1338:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    133c:	e3530025 	cmp	r3, #37	@ 0x25
    1340:	1a000005 	bne	135c <printf+0x1d0>
    1344:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1348:	e6ef3073 	uxtb	r3, r3
    134c:	e1a01003 	mov	r1, r3
    1350:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1354:	ebffff30 	bl	101c <putc>
    1358:	ea000007 	b	137c <printf+0x1f0>
    135c:	e3a01025 	mov	r1, #37	@ 0x25
    1360:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1364:	ebffff2c 	bl	101c <putc>
    1368:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    136c:	e6ef3073 	uxtb	r3, r3
    1370:	e1a01003 	mov	r1, r3
    1374:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1378:	ebffff27 	bl	101c <putc>
    137c:	e3a03000 	mov	r3, #0
    1380:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1384:	e51b3010 	ldr	r3, [fp, #-16]
    1388:	e2833001 	add	r3, r3, #1
    138c:	e50b3010 	str	r3, [fp, #-16]
    1390:	e59b2004 	ldr	r2, [fp, #4]
    1394:	e51b3010 	ldr	r3, [fp, #-16]
    1398:	e0823003 	add	r3, r2, r3
    139c:	e5d33000 	ldrb	r3, [r3]
    13a0:	e3530000 	cmp	r3, #0
    13a4:	1affff84 	bne	11bc <printf+0x30>
    13a8:	e1a00000 	nop			@ (mov r0, r0)
    13ac:	e1a00000 	nop			@ (mov r0, r0)
    13b0:	e24bd004 	sub	sp, fp, #4
    13b4:	e8bd4800 	pop	{fp, lr}
    13b8:	e28dd00c 	add	sp, sp, #12
    13bc:	e12fff1e 	bx	lr
    13c0:	000019f0 	.word	0x000019f0

000013c4 <free>:
    13c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    13c8:	e28db000 	add	fp, sp, #0
    13cc:	e24dd014 	sub	sp, sp, #20
    13d0:	e50b0010 	str	r0, [fp, #-16]
    13d4:	e51b3010 	ldr	r3, [fp, #-16]
    13d8:	e2433008 	sub	r3, r3, #8
    13dc:	e50b300c 	str	r3, [fp, #-12]
    13e0:	e59f3154 	ldr	r3, [pc, #340]	@ 153c <free+0x178>
    13e4:	e5933000 	ldr	r3, [r3]
    13e8:	e50b3008 	str	r3, [fp, #-8]
    13ec:	ea000010 	b	1434 <free+0x70>
    13f0:	e51b3008 	ldr	r3, [fp, #-8]
    13f4:	e5933000 	ldr	r3, [r3]
    13f8:	e51b2008 	ldr	r2, [fp, #-8]
    13fc:	e1520003 	cmp	r2, r3
    1400:	3a000008 	bcc	1428 <free+0x64>
    1404:	e51b200c 	ldr	r2, [fp, #-12]
    1408:	e51b3008 	ldr	r3, [fp, #-8]
    140c:	e1520003 	cmp	r2, r3
    1410:	8a000010 	bhi	1458 <free+0x94>
    1414:	e51b3008 	ldr	r3, [fp, #-8]
    1418:	e5933000 	ldr	r3, [r3]
    141c:	e51b200c 	ldr	r2, [fp, #-12]
    1420:	e1520003 	cmp	r2, r3
    1424:	3a00000b 	bcc	1458 <free+0x94>
    1428:	e51b3008 	ldr	r3, [fp, #-8]
    142c:	e5933000 	ldr	r3, [r3]
    1430:	e50b3008 	str	r3, [fp, #-8]
    1434:	e51b200c 	ldr	r2, [fp, #-12]
    1438:	e51b3008 	ldr	r3, [fp, #-8]
    143c:	e1520003 	cmp	r2, r3
    1440:	9affffea 	bls	13f0 <free+0x2c>
    1444:	e51b3008 	ldr	r3, [fp, #-8]
    1448:	e5933000 	ldr	r3, [r3]
    144c:	e51b200c 	ldr	r2, [fp, #-12]
    1450:	e1520003 	cmp	r2, r3
    1454:	2affffe5 	bcs	13f0 <free+0x2c>
    1458:	e51b300c 	ldr	r3, [fp, #-12]
    145c:	e5933004 	ldr	r3, [r3, #4]
    1460:	e1a03183 	lsl	r3, r3, #3
    1464:	e51b200c 	ldr	r2, [fp, #-12]
    1468:	e0822003 	add	r2, r2, r3
    146c:	e51b3008 	ldr	r3, [fp, #-8]
    1470:	e5933000 	ldr	r3, [r3]
    1474:	e1520003 	cmp	r2, r3
    1478:	1a00000d 	bne	14b4 <free+0xf0>
    147c:	e51b300c 	ldr	r3, [fp, #-12]
    1480:	e5932004 	ldr	r2, [r3, #4]
    1484:	e51b3008 	ldr	r3, [fp, #-8]
    1488:	e5933000 	ldr	r3, [r3]
    148c:	e5933004 	ldr	r3, [r3, #4]
    1490:	e0822003 	add	r2, r2, r3
    1494:	e51b300c 	ldr	r3, [fp, #-12]
    1498:	e5832004 	str	r2, [r3, #4]
    149c:	e51b3008 	ldr	r3, [fp, #-8]
    14a0:	e5933000 	ldr	r3, [r3]
    14a4:	e5932000 	ldr	r2, [r3]
    14a8:	e51b300c 	ldr	r3, [fp, #-12]
    14ac:	e5832000 	str	r2, [r3]
    14b0:	ea000003 	b	14c4 <free+0x100>
    14b4:	e51b3008 	ldr	r3, [fp, #-8]
    14b8:	e5932000 	ldr	r2, [r3]
    14bc:	e51b300c 	ldr	r3, [fp, #-12]
    14c0:	e5832000 	str	r2, [r3]
    14c4:	e51b3008 	ldr	r3, [fp, #-8]
    14c8:	e5933004 	ldr	r3, [r3, #4]
    14cc:	e1a03183 	lsl	r3, r3, #3
    14d0:	e51b2008 	ldr	r2, [fp, #-8]
    14d4:	e0823003 	add	r3, r2, r3
    14d8:	e51b200c 	ldr	r2, [fp, #-12]
    14dc:	e1520003 	cmp	r2, r3
    14e0:	1a00000b 	bne	1514 <free+0x150>
    14e4:	e51b3008 	ldr	r3, [fp, #-8]
    14e8:	e5932004 	ldr	r2, [r3, #4]
    14ec:	e51b300c 	ldr	r3, [fp, #-12]
    14f0:	e5933004 	ldr	r3, [r3, #4]
    14f4:	e0822003 	add	r2, r2, r3
    14f8:	e51b3008 	ldr	r3, [fp, #-8]
    14fc:	e5832004 	str	r2, [r3, #4]
    1500:	e51b300c 	ldr	r3, [fp, #-12]
    1504:	e5932000 	ldr	r2, [r3]
    1508:	e51b3008 	ldr	r3, [fp, #-8]
    150c:	e5832000 	str	r2, [r3]
    1510:	ea000002 	b	1520 <free+0x15c>
    1514:	e51b3008 	ldr	r3, [fp, #-8]
    1518:	e51b200c 	ldr	r2, [fp, #-12]
    151c:	e5832000 	str	r2, [r3]
    1520:	e59f2014 	ldr	r2, [pc, #20]	@ 153c <free+0x178>
    1524:	e51b3008 	ldr	r3, [fp, #-8]
    1528:	e5823000 	str	r3, [r2]
    152c:	e1a00000 	nop			@ (mov r0, r0)
    1530:	e28bd000 	add	sp, fp, #0
    1534:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1538:	e12fff1e 	bx	lr
    153c:	00001a30 	.word	0x00001a30

00001540 <morecore>:
    1540:	e92d4800 	push	{fp, lr}
    1544:	e28db004 	add	fp, sp, #4
    1548:	e24dd010 	sub	sp, sp, #16
    154c:	e50b0010 	str	r0, [fp, #-16]
    1550:	e51b3010 	ldr	r3, [fp, #-16]
    1554:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1558:	2a000001 	bcs	1564 <morecore+0x24>
    155c:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1560:	e50b3010 	str	r3, [fp, #-16]
    1564:	e51b3010 	ldr	r3, [fp, #-16]
    1568:	e1a03183 	lsl	r3, r3, #3
    156c:	e1a00003 	mov	r0, r3
    1570:	ebfffe07 	bl	d94 <sbrk>
    1574:	e50b0008 	str	r0, [fp, #-8]
    1578:	e51b3008 	ldr	r3, [fp, #-8]
    157c:	e3730001 	cmn	r3, #1
    1580:	1a000001 	bne	158c <morecore+0x4c>
    1584:	e3a03000 	mov	r3, #0
    1588:	ea00000a 	b	15b8 <morecore+0x78>
    158c:	e51b3008 	ldr	r3, [fp, #-8]
    1590:	e50b300c 	str	r3, [fp, #-12]
    1594:	e51b300c 	ldr	r3, [fp, #-12]
    1598:	e51b2010 	ldr	r2, [fp, #-16]
    159c:	e5832004 	str	r2, [r3, #4]
    15a0:	e51b300c 	ldr	r3, [fp, #-12]
    15a4:	e2833008 	add	r3, r3, #8
    15a8:	e1a00003 	mov	r0, r3
    15ac:	ebffff84 	bl	13c4 <free>
    15b0:	e59f300c 	ldr	r3, [pc, #12]	@ 15c4 <morecore+0x84>
    15b4:	e5933000 	ldr	r3, [r3]
    15b8:	e1a00003 	mov	r0, r3
    15bc:	e24bd004 	sub	sp, fp, #4
    15c0:	e8bd8800 	pop	{fp, pc}
    15c4:	00001a30 	.word	0x00001a30

000015c8 <malloc>:
    15c8:	e92d4800 	push	{fp, lr}
    15cc:	e28db004 	add	fp, sp, #4
    15d0:	e24dd018 	sub	sp, sp, #24
    15d4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    15d8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    15dc:	e2833007 	add	r3, r3, #7
    15e0:	e1a031a3 	lsr	r3, r3, #3
    15e4:	e2833001 	add	r3, r3, #1
    15e8:	e50b3010 	str	r3, [fp, #-16]
    15ec:	e59f3134 	ldr	r3, [pc, #308]	@ 1728 <malloc+0x160>
    15f0:	e5933000 	ldr	r3, [r3]
    15f4:	e50b300c 	str	r3, [fp, #-12]
    15f8:	e51b300c 	ldr	r3, [fp, #-12]
    15fc:	e3530000 	cmp	r3, #0
    1600:	1a00000b 	bne	1634 <malloc+0x6c>
    1604:	e59f3120 	ldr	r3, [pc, #288]	@ 172c <malloc+0x164>
    1608:	e50b300c 	str	r3, [fp, #-12]
    160c:	e59f2114 	ldr	r2, [pc, #276]	@ 1728 <malloc+0x160>
    1610:	e51b300c 	ldr	r3, [fp, #-12]
    1614:	e5823000 	str	r3, [r2]
    1618:	e59f3108 	ldr	r3, [pc, #264]	@ 1728 <malloc+0x160>
    161c:	e5933000 	ldr	r3, [r3]
    1620:	e59f2104 	ldr	r2, [pc, #260]	@ 172c <malloc+0x164>
    1624:	e5823000 	str	r3, [r2]
    1628:	e59f30fc 	ldr	r3, [pc, #252]	@ 172c <malloc+0x164>
    162c:	e3a02000 	mov	r2, #0
    1630:	e5832004 	str	r2, [r3, #4]
    1634:	e51b300c 	ldr	r3, [fp, #-12]
    1638:	e5933000 	ldr	r3, [r3]
    163c:	e50b3008 	str	r3, [fp, #-8]
    1640:	e51b3008 	ldr	r3, [fp, #-8]
    1644:	e5933004 	ldr	r3, [r3, #4]
    1648:	e51b2010 	ldr	r2, [fp, #-16]
    164c:	e1520003 	cmp	r2, r3
    1650:	8a00001e 	bhi	16d0 <malloc+0x108>
    1654:	e51b3008 	ldr	r3, [fp, #-8]
    1658:	e5933004 	ldr	r3, [r3, #4]
    165c:	e51b2010 	ldr	r2, [fp, #-16]
    1660:	e1520003 	cmp	r2, r3
    1664:	1a000004 	bne	167c <malloc+0xb4>
    1668:	e51b3008 	ldr	r3, [fp, #-8]
    166c:	e5932000 	ldr	r2, [r3]
    1670:	e51b300c 	ldr	r3, [fp, #-12]
    1674:	e5832000 	str	r2, [r3]
    1678:	ea00000e 	b	16b8 <malloc+0xf0>
    167c:	e51b3008 	ldr	r3, [fp, #-8]
    1680:	e5932004 	ldr	r2, [r3, #4]
    1684:	e51b3010 	ldr	r3, [fp, #-16]
    1688:	e0422003 	sub	r2, r2, r3
    168c:	e51b3008 	ldr	r3, [fp, #-8]
    1690:	e5832004 	str	r2, [r3, #4]
    1694:	e51b3008 	ldr	r3, [fp, #-8]
    1698:	e5933004 	ldr	r3, [r3, #4]
    169c:	e1a03183 	lsl	r3, r3, #3
    16a0:	e51b2008 	ldr	r2, [fp, #-8]
    16a4:	e0823003 	add	r3, r2, r3
    16a8:	e50b3008 	str	r3, [fp, #-8]
    16ac:	e51b3008 	ldr	r3, [fp, #-8]
    16b0:	e51b2010 	ldr	r2, [fp, #-16]
    16b4:	e5832004 	str	r2, [r3, #4]
    16b8:	e59f2068 	ldr	r2, [pc, #104]	@ 1728 <malloc+0x160>
    16bc:	e51b300c 	ldr	r3, [fp, #-12]
    16c0:	e5823000 	str	r3, [r2]
    16c4:	e51b3008 	ldr	r3, [fp, #-8]
    16c8:	e2833008 	add	r3, r3, #8
    16cc:	ea000012 	b	171c <malloc+0x154>
    16d0:	e59f3050 	ldr	r3, [pc, #80]	@ 1728 <malloc+0x160>
    16d4:	e5933000 	ldr	r3, [r3]
    16d8:	e51b2008 	ldr	r2, [fp, #-8]
    16dc:	e1520003 	cmp	r2, r3
    16e0:	1a000007 	bne	1704 <malloc+0x13c>
    16e4:	e51b0010 	ldr	r0, [fp, #-16]
    16e8:	ebffff94 	bl	1540 <morecore>
    16ec:	e50b0008 	str	r0, [fp, #-8]
    16f0:	e51b3008 	ldr	r3, [fp, #-8]
    16f4:	e3530000 	cmp	r3, #0
    16f8:	1a000001 	bne	1704 <malloc+0x13c>
    16fc:	e3a03000 	mov	r3, #0
    1700:	ea000005 	b	171c <malloc+0x154>
    1704:	e51b3008 	ldr	r3, [fp, #-8]
    1708:	e50b300c 	str	r3, [fp, #-12]
    170c:	e51b3008 	ldr	r3, [fp, #-8]
    1710:	e5933000 	ldr	r3, [r3]
    1714:	e50b3008 	str	r3, [fp, #-8]
    1718:	eaffffc8 	b	1640 <malloc+0x78>
    171c:	e1a00003 	mov	r0, r3
    1720:	e24bd004 	sub	sp, fp, #4
    1724:	e8bd8800 	pop	{fp, pc}
    1728:	00001a30 	.word	0x00001a30
    172c:	00001a28 	.word	0x00001a28

00001730 <__udivsi3>:
    1730:	e2512001 	subs	r2, r1, #1
    1734:	012fff1e 	bxeq	lr
    1738:	3a000036 	bcc	1818 <__udivsi3+0xe8>
    173c:	e1500001 	cmp	r0, r1
    1740:	9a000022 	bls	17d0 <__udivsi3+0xa0>
    1744:	e1110002 	tst	r1, r2
    1748:	0a000023 	beq	17dc <__udivsi3+0xac>
    174c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1750:	01a01181 	lsleq	r1, r1, #3
    1754:	03a03008 	moveq	r3, #8
    1758:	13a03001 	movne	r3, #1
    175c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1760:	31510000 	cmpcc	r1, r0
    1764:	31a01201 	lslcc	r1, r1, #4
    1768:	31a03203 	lslcc	r3, r3, #4
    176c:	3afffffa 	bcc	175c <__udivsi3+0x2c>
    1770:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1774:	31510000 	cmpcc	r1, r0
    1778:	31a01081 	lslcc	r1, r1, #1
    177c:	31a03083 	lslcc	r3, r3, #1
    1780:	3afffffa 	bcc	1770 <__udivsi3+0x40>
    1784:	e3a02000 	mov	r2, #0
    1788:	e1500001 	cmp	r0, r1
    178c:	20400001 	subcs	r0, r0, r1
    1790:	21822003 	orrcs	r2, r2, r3
    1794:	e15000a1 	cmp	r0, r1, lsr #1
    1798:	204000a1 	subcs	r0, r0, r1, lsr #1
    179c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    17a0:	e1500121 	cmp	r0, r1, lsr #2
    17a4:	20400121 	subcs	r0, r0, r1, lsr #2
    17a8:	21822123 	orrcs	r2, r2, r3, lsr #2
    17ac:	e15001a1 	cmp	r0, r1, lsr #3
    17b0:	204001a1 	subcs	r0, r0, r1, lsr #3
    17b4:	218221a3 	orrcs	r2, r2, r3, lsr #3
    17b8:	e3500000 	cmp	r0, #0
    17bc:	11b03223 	lsrsne	r3, r3, #4
    17c0:	11a01221 	lsrne	r1, r1, #4
    17c4:	1affffef 	bne	1788 <__udivsi3+0x58>
    17c8:	e1a00002 	mov	r0, r2
    17cc:	e12fff1e 	bx	lr
    17d0:	03a00001 	moveq	r0, #1
    17d4:	13a00000 	movne	r0, #0
    17d8:	e12fff1e 	bx	lr
    17dc:	e3510801 	cmp	r1, #65536	@ 0x10000
    17e0:	21a01821 	lsrcs	r1, r1, #16
    17e4:	23a02010 	movcs	r2, #16
    17e8:	33a02000 	movcc	r2, #0
    17ec:	e3510c01 	cmp	r1, #256	@ 0x100
    17f0:	21a01421 	lsrcs	r1, r1, #8
    17f4:	22822008 	addcs	r2, r2, #8
    17f8:	e3510010 	cmp	r1, #16
    17fc:	21a01221 	lsrcs	r1, r1, #4
    1800:	22822004 	addcs	r2, r2, #4
    1804:	e3510004 	cmp	r1, #4
    1808:	82822003 	addhi	r2, r2, #3
    180c:	908220a1 	addls	r2, r2, r1, lsr #1
    1810:	e1a00230 	lsr	r0, r0, r2
    1814:	e12fff1e 	bx	lr
    1818:	e3500000 	cmp	r0, #0
    181c:	13e00000 	mvnne	r0, #0
    1820:	ea000007 	b	1844 <__aeabi_idiv0>

00001824 <__aeabi_uidivmod>:
    1824:	e3510000 	cmp	r1, #0
    1828:	0afffffa 	beq	1818 <__udivsi3+0xe8>
    182c:	e92d4003 	push	{r0, r1, lr}
    1830:	ebffffbe 	bl	1730 <__udivsi3>
    1834:	e8bd4006 	pop	{r1, r2, lr}
    1838:	e0030092 	mul	r3, r2, r0
    183c:	e0411003 	sub	r1, r1, r3
    1840:	e12fff1e 	bx	lr

00001844 <__aeabi_idiv0>:
    1844:	e12fff1e 	bx	lr
