
_t_sem2:     file format elf32-littlearm


Disassembly of section .text:

00000000 <thread1>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e50b0008 	str	r0, [fp, #-8]
      10:	e59f0028 	ldr	r0, [pc, #40]	@ 40 <thread1+0x40>
      14:	eb000228 	bl	8bc <semDown>
      18:	e59f1024 	ldr	r1, [pc, #36]	@ 44 <thread1+0x44>
      1c:	e3a00001 	mov	r0, #1
      20:	eb0003e5 	bl	fbc <printf>
      24:	e59f001c 	ldr	r0, [pc, #28]	@ 48 <thread1+0x48>
      28:	eb00020b 	bl	85c <semUp>
      2c:	eb000335 	bl	d08 <thread_exit>
      30:	e3a03000 	mov	r3, #0
      34:	e1a00003 	mov	r0, r3
      38:	e24bd004 	sub	sp, fp, #4
      3c:	e8bd8800 	pop	{fp, pc}
      40:	0000173c 	.word	0x0000173c
      44:	00001678 	.word	0x00001678
      48:	00001754 	.word	0x00001754

0000004c <thread2>:
      4c:	e92d4800 	push	{fp, lr}
      50:	e28db004 	add	fp, sp, #4
      54:	e24dd008 	sub	sp, sp, #8
      58:	e50b0008 	str	r0, [fp, #-8]
      5c:	e59f0028 	ldr	r0, [pc, #40]	@ 8c <thread2+0x40>
      60:	eb000215 	bl	8bc <semDown>
      64:	e59f1024 	ldr	r1, [pc, #36]	@ 90 <thread2+0x44>
      68:	e3a00001 	mov	r0, #1
      6c:	eb0003d2 	bl	fbc <printf>
      70:	e59f001c 	ldr	r0, [pc, #28]	@ 94 <thread2+0x48>
      74:	eb0001f8 	bl	85c <semUp>
      78:	eb000322 	bl	d08 <thread_exit>
      7c:	e3a03000 	mov	r3, #0
      80:	e1a00003 	mov	r0, r3
      84:	e24bd004 	sub	sp, fp, #4
      88:	e8bd8800 	pop	{fp, pc}
      8c:	0000173c 	.word	0x0000173c
      90:	00001688 	.word	0x00001688
      94:	00001754 	.word	0x00001754

00000098 <thread3>:
      98:	e92d4800 	push	{fp, lr}
      9c:	e28db004 	add	fp, sp, #4
      a0:	e24dd008 	sub	sp, sp, #8
      a4:	e50b0008 	str	r0, [fp, #-8]
      a8:	e3a00002 	mov	r0, #2
      ac:	eb0002cd 	bl	be8 <sleep>
      b0:	e59f1050 	ldr	r1, [pc, #80]	@ 108 <thread3+0x70>
      b4:	e3a00001 	mov	r0, #1
      b8:	eb0003bf 	bl	fbc <printf>
      bc:	e59f0048 	ldr	r0, [pc, #72]	@ 10c <thread3+0x74>
      c0:	eb0001e5 	bl	85c <semUp>
      c4:	e59f0044 	ldr	r0, [pc, #68]	@ 110 <thread3+0x78>
      c8:	eb0001fb 	bl	8bc <semDown>
      cc:	e59f1040 	ldr	r1, [pc, #64]	@ 114 <thread3+0x7c>
      d0:	e3a00001 	mov	r0, #1
      d4:	eb0003b8 	bl	fbc <printf>
      d8:	e59f002c 	ldr	r0, [pc, #44]	@ 10c <thread3+0x74>
      dc:	eb0001de 	bl	85c <semUp>
      e0:	e59f0028 	ldr	r0, [pc, #40]	@ 110 <thread3+0x78>
      e4:	eb0001f4 	bl	8bc <semDown>
      e8:	e59f1028 	ldr	r1, [pc, #40]	@ 118 <thread3+0x80>
      ec:	e3a00001 	mov	r0, #1
      f0:	eb0003b1 	bl	fbc <printf>
      f4:	eb000303 	bl	d08 <thread_exit>
      f8:	e3a03000 	mov	r3, #0
      fc:	e1a00003 	mov	r0, r3
     100:	e24bd004 	sub	sp, fp, #4
     104:	e8bd8800 	pop	{fp, pc}
     108:	00001698 	.word	0x00001698
     10c:	0000173c 	.word	0x0000173c
     110:	00001754 	.word	0x00001754
     114:	000016c0 	.word	0x000016c0
     118:	000016ec 	.word	0x000016ec

0000011c <main>:
     11c:	e92d4800 	push	{fp, lr}
     120:	e28db004 	add	fp, sp, #4
     124:	e24dd010 	sub	sp, sp, #16
     128:	e3a01000 	mov	r1, #0
     12c:	e59f0070 	ldr	r0, [pc, #112]	@ 1a4 <main+0x88>
     130:	eb0001b3 	bl	804 <semInit>
     134:	e3a01000 	mov	r1, #0
     138:	e59f0068 	ldr	r0, [pc, #104]	@ 1a8 <main+0x8c>
     13c:	eb0001b0 	bl	804 <semInit>
     140:	e24b3008 	sub	r3, fp, #8
     144:	e3a02000 	mov	r2, #0
     148:	e59f105c 	ldr	r1, [pc, #92]	@ 1ac <main+0x90>
     14c:	e1a00003 	mov	r0, r3
     150:	eb0002e3 	bl	ce4 <thread_create>
     154:	e24b300c 	sub	r3, fp, #12
     158:	e3a02000 	mov	r2, #0
     15c:	e59f104c 	ldr	r1, [pc, #76]	@ 1b0 <main+0x94>
     160:	e1a00003 	mov	r0, r3
     164:	eb0002de 	bl	ce4 <thread_create>
     168:	e24b3010 	sub	r3, fp, #16
     16c:	e3a02000 	mov	r2, #0
     170:	e59f103c 	ldr	r1, [pc, #60]	@ 1b4 <main+0x98>
     174:	e1a00003 	mov	r0, r3
     178:	eb0002d9 	bl	ce4 <thread_create>
     17c:	e51b3008 	ldr	r3, [fp, #-8]
     180:	e1a00003 	mov	r0, r3
     184:	eb0002e8 	bl	d2c <thread_join>
     188:	e51b300c 	ldr	r3, [fp, #-12]
     18c:	e1a00003 	mov	r0, r3
     190:	eb0002e5 	bl	d2c <thread_join>
     194:	e51b3010 	ldr	r3, [fp, #-16]
     198:	e1a00003 	mov	r0, r3
     19c:	eb0002e2 	bl	d2c <thread_join>
     1a0:	eb0001ee 	bl	960 <exit>
     1a4:	0000173c 	.word	0x0000173c
     1a8:	00001754 	.word	0x00001754
     1ac:	00000000 	.word	0x00000000
     1b0:	0000004c 	.word	0x0000004c
     1b4:	00000098 	.word	0x00000098

000001b8 <strcpy>:
     1b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1bc:	e28db000 	add	fp, sp, #0
     1c0:	e24dd014 	sub	sp, sp, #20
     1c4:	e50b0010 	str	r0, [fp, #-16]
     1c8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     1cc:	e51b3010 	ldr	r3, [fp, #-16]
     1d0:	e50b3008 	str	r3, [fp, #-8]
     1d4:	e1a00000 	nop			@ (mov r0, r0)
     1d8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1dc:	e2823001 	add	r3, r2, #1
     1e0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1e4:	e51b3010 	ldr	r3, [fp, #-16]
     1e8:	e2831001 	add	r1, r3, #1
     1ec:	e50b1010 	str	r1, [fp, #-16]
     1f0:	e5d22000 	ldrb	r2, [r2]
     1f4:	e5c32000 	strb	r2, [r3]
     1f8:	e5d33000 	ldrb	r3, [r3]
     1fc:	e3530000 	cmp	r3, #0
     200:	1afffff4 	bne	1d8 <strcpy+0x20>
     204:	e51b3008 	ldr	r3, [fp, #-8]
     208:	e1a00003 	mov	r0, r3
     20c:	e28bd000 	add	sp, fp, #0
     210:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     214:	e12fff1e 	bx	lr

00000218 <strcmp>:
     218:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     21c:	e28db000 	add	fp, sp, #0
     220:	e24dd00c 	sub	sp, sp, #12
     224:	e50b0008 	str	r0, [fp, #-8]
     228:	e50b100c 	str	r1, [fp, #-12]
     22c:	ea000005 	b	248 <strcmp+0x30>
     230:	e51b3008 	ldr	r3, [fp, #-8]
     234:	e2833001 	add	r3, r3, #1
     238:	e50b3008 	str	r3, [fp, #-8]
     23c:	e51b300c 	ldr	r3, [fp, #-12]
     240:	e2833001 	add	r3, r3, #1
     244:	e50b300c 	str	r3, [fp, #-12]
     248:	e51b3008 	ldr	r3, [fp, #-8]
     24c:	e5d33000 	ldrb	r3, [r3]
     250:	e3530000 	cmp	r3, #0
     254:	0a000005 	beq	270 <strcmp+0x58>
     258:	e51b3008 	ldr	r3, [fp, #-8]
     25c:	e5d32000 	ldrb	r2, [r3]
     260:	e51b300c 	ldr	r3, [fp, #-12]
     264:	e5d33000 	ldrb	r3, [r3]
     268:	e1520003 	cmp	r2, r3
     26c:	0affffef 	beq	230 <strcmp+0x18>
     270:	e51b3008 	ldr	r3, [fp, #-8]
     274:	e5d33000 	ldrb	r3, [r3]
     278:	e1a02003 	mov	r2, r3
     27c:	e51b300c 	ldr	r3, [fp, #-12]
     280:	e5d33000 	ldrb	r3, [r3]
     284:	e0423003 	sub	r3, r2, r3
     288:	e1a00003 	mov	r0, r3
     28c:	e28bd000 	add	sp, fp, #0
     290:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     294:	e12fff1e 	bx	lr

00000298 <strlen>:
     298:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     29c:	e28db000 	add	fp, sp, #0
     2a0:	e24dd014 	sub	sp, sp, #20
     2a4:	e50b0010 	str	r0, [fp, #-16]
     2a8:	e3a03000 	mov	r3, #0
     2ac:	e50b3008 	str	r3, [fp, #-8]
     2b0:	ea000002 	b	2c0 <strlen+0x28>
     2b4:	e51b3008 	ldr	r3, [fp, #-8]
     2b8:	e2833001 	add	r3, r3, #1
     2bc:	e50b3008 	str	r3, [fp, #-8]
     2c0:	e51b3008 	ldr	r3, [fp, #-8]
     2c4:	e51b2010 	ldr	r2, [fp, #-16]
     2c8:	e0823003 	add	r3, r2, r3
     2cc:	e5d33000 	ldrb	r3, [r3]
     2d0:	e3530000 	cmp	r3, #0
     2d4:	1afffff6 	bne	2b4 <strlen+0x1c>
     2d8:	e51b3008 	ldr	r3, [fp, #-8]
     2dc:	e1a00003 	mov	r0, r3
     2e0:	e28bd000 	add	sp, fp, #0
     2e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2e8:	e12fff1e 	bx	lr

000002ec <memset>:
     2ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2f0:	e28db000 	add	fp, sp, #0
     2f4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     2f8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     2fc:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     300:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     304:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     308:	e50b3008 	str	r3, [fp, #-8]
     30c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     310:	e54b300d 	strb	r3, [fp, #-13]
     314:	e55b200d 	ldrb	r2, [fp, #-13]
     318:	e1a03002 	mov	r3, r2
     31c:	e1a03403 	lsl	r3, r3, #8
     320:	e0833002 	add	r3, r3, r2
     324:	e1a03803 	lsl	r3, r3, #16
     328:	e1a02003 	mov	r2, r3
     32c:	e55b300d 	ldrb	r3, [fp, #-13]
     330:	e1a03403 	lsl	r3, r3, #8
     334:	e1822003 	orr	r2, r2, r3
     338:	e55b300d 	ldrb	r3, [fp, #-13]
     33c:	e1823003 	orr	r3, r2, r3
     340:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     344:	ea000008 	b	36c <memset+0x80>
     348:	e51b3008 	ldr	r3, [fp, #-8]
     34c:	e55b200d 	ldrb	r2, [fp, #-13]
     350:	e5c32000 	strb	r2, [r3]
     354:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     358:	e2433001 	sub	r3, r3, #1
     35c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     360:	e51b3008 	ldr	r3, [fp, #-8]
     364:	e2833001 	add	r3, r3, #1
     368:	e50b3008 	str	r3, [fp, #-8]
     36c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     370:	e3530000 	cmp	r3, #0
     374:	0a000003 	beq	388 <memset+0x9c>
     378:	e51b3008 	ldr	r3, [fp, #-8]
     37c:	e2033003 	and	r3, r3, #3
     380:	e3530000 	cmp	r3, #0
     384:	1affffef 	bne	348 <memset+0x5c>
     388:	e51b3008 	ldr	r3, [fp, #-8]
     38c:	e50b300c 	str	r3, [fp, #-12]
     390:	ea000008 	b	3b8 <memset+0xcc>
     394:	e51b300c 	ldr	r3, [fp, #-12]
     398:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     39c:	e5832000 	str	r2, [r3]
     3a0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3a4:	e2433004 	sub	r3, r3, #4
     3a8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3ac:	e51b300c 	ldr	r3, [fp, #-12]
     3b0:	e2833004 	add	r3, r3, #4
     3b4:	e50b300c 	str	r3, [fp, #-12]
     3b8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3bc:	e3530003 	cmp	r3, #3
     3c0:	8afffff3 	bhi	394 <memset+0xa8>
     3c4:	e51b300c 	ldr	r3, [fp, #-12]
     3c8:	e50b3008 	str	r3, [fp, #-8]
     3cc:	ea000008 	b	3f4 <memset+0x108>
     3d0:	e51b3008 	ldr	r3, [fp, #-8]
     3d4:	e55b200d 	ldrb	r2, [fp, #-13]
     3d8:	e5c32000 	strb	r2, [r3]
     3dc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3e0:	e2433001 	sub	r3, r3, #1
     3e4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3e8:	e51b3008 	ldr	r3, [fp, #-8]
     3ec:	e2833001 	add	r3, r3, #1
     3f0:	e50b3008 	str	r3, [fp, #-8]
     3f4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3f8:	e3530000 	cmp	r3, #0
     3fc:	1afffff3 	bne	3d0 <memset+0xe4>
     400:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     404:	e1a00003 	mov	r0, r3
     408:	e28bd000 	add	sp, fp, #0
     40c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     410:	e12fff1e 	bx	lr

00000414 <strchr>:
     414:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     418:	e28db000 	add	fp, sp, #0
     41c:	e24dd00c 	sub	sp, sp, #12
     420:	e50b0008 	str	r0, [fp, #-8]
     424:	e1a03001 	mov	r3, r1
     428:	e54b3009 	strb	r3, [fp, #-9]
     42c:	ea000009 	b	458 <strchr+0x44>
     430:	e51b3008 	ldr	r3, [fp, #-8]
     434:	e5d33000 	ldrb	r3, [r3]
     438:	e55b2009 	ldrb	r2, [fp, #-9]
     43c:	e1520003 	cmp	r2, r3
     440:	1a000001 	bne	44c <strchr+0x38>
     444:	e51b3008 	ldr	r3, [fp, #-8]
     448:	ea000007 	b	46c <strchr+0x58>
     44c:	e51b3008 	ldr	r3, [fp, #-8]
     450:	e2833001 	add	r3, r3, #1
     454:	e50b3008 	str	r3, [fp, #-8]
     458:	e51b3008 	ldr	r3, [fp, #-8]
     45c:	e5d33000 	ldrb	r3, [r3]
     460:	e3530000 	cmp	r3, #0
     464:	1afffff1 	bne	430 <strchr+0x1c>
     468:	e3a03000 	mov	r3, #0
     46c:	e1a00003 	mov	r0, r3
     470:	e28bd000 	add	sp, fp, #0
     474:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     478:	e12fff1e 	bx	lr

0000047c <gets>:
     47c:	e92d4800 	push	{fp, lr}
     480:	e28db004 	add	fp, sp, #4
     484:	e24dd018 	sub	sp, sp, #24
     488:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     48c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     490:	e3a03000 	mov	r3, #0
     494:	e50b3008 	str	r3, [fp, #-8]
     498:	ea000016 	b	4f8 <gets+0x7c>
     49c:	e24b300d 	sub	r3, fp, #13
     4a0:	e3a02001 	mov	r2, #1
     4a4:	e1a01003 	mov	r1, r3
     4a8:	e3a00000 	mov	r0, #0
     4ac:	eb000146 	bl	9cc <read>
     4b0:	e50b000c 	str	r0, [fp, #-12]
     4b4:	e51b300c 	ldr	r3, [fp, #-12]
     4b8:	e3530000 	cmp	r3, #0
     4bc:	da000013 	ble	510 <gets+0x94>
     4c0:	e51b3008 	ldr	r3, [fp, #-8]
     4c4:	e2832001 	add	r2, r3, #1
     4c8:	e50b2008 	str	r2, [fp, #-8]
     4cc:	e1a02003 	mov	r2, r3
     4d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4d4:	e0833002 	add	r3, r3, r2
     4d8:	e55b200d 	ldrb	r2, [fp, #-13]
     4dc:	e5c32000 	strb	r2, [r3]
     4e0:	e55b300d 	ldrb	r3, [fp, #-13]
     4e4:	e353000a 	cmp	r3, #10
     4e8:	0a000009 	beq	514 <gets+0x98>
     4ec:	e55b300d 	ldrb	r3, [fp, #-13]
     4f0:	e353000d 	cmp	r3, #13
     4f4:	0a000006 	beq	514 <gets+0x98>
     4f8:	e51b3008 	ldr	r3, [fp, #-8]
     4fc:	e2833001 	add	r3, r3, #1
     500:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     504:	e1520003 	cmp	r2, r3
     508:	caffffe3 	bgt	49c <gets+0x20>
     50c:	ea000000 	b	514 <gets+0x98>
     510:	e1a00000 	nop			@ (mov r0, r0)
     514:	e51b3008 	ldr	r3, [fp, #-8]
     518:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     51c:	e0823003 	add	r3, r2, r3
     520:	e3a02000 	mov	r2, #0
     524:	e5c32000 	strb	r2, [r3]
     528:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     52c:	e1a00003 	mov	r0, r3
     530:	e24bd004 	sub	sp, fp, #4
     534:	e8bd8800 	pop	{fp, pc}

00000538 <stat>:
     538:	e92d4800 	push	{fp, lr}
     53c:	e28db004 	add	fp, sp, #4
     540:	e24dd010 	sub	sp, sp, #16
     544:	e50b0010 	str	r0, [fp, #-16]
     548:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     54c:	e3a01000 	mov	r1, #0
     550:	e51b0010 	ldr	r0, [fp, #-16]
     554:	eb000149 	bl	a80 <open>
     558:	e50b0008 	str	r0, [fp, #-8]
     55c:	e51b3008 	ldr	r3, [fp, #-8]
     560:	e3530000 	cmp	r3, #0
     564:	aa000001 	bge	570 <stat+0x38>
     568:	e3e03000 	mvn	r3, #0
     56c:	ea000006 	b	58c <stat+0x54>
     570:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     574:	e51b0008 	ldr	r0, [fp, #-8]
     578:	eb00015b 	bl	aec <fstat>
     57c:	e50b000c 	str	r0, [fp, #-12]
     580:	e51b0008 	ldr	r0, [fp, #-8]
     584:	eb000122 	bl	a14 <close>
     588:	e51b300c 	ldr	r3, [fp, #-12]
     58c:	e1a00003 	mov	r0, r3
     590:	e24bd004 	sub	sp, fp, #4
     594:	e8bd8800 	pop	{fp, pc}

00000598 <atoi>:
     598:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     59c:	e28db000 	add	fp, sp, #0
     5a0:	e24dd014 	sub	sp, sp, #20
     5a4:	e50b0010 	str	r0, [fp, #-16]
     5a8:	e3a03000 	mov	r3, #0
     5ac:	e50b3008 	str	r3, [fp, #-8]
     5b0:	ea00000c 	b	5e8 <atoi+0x50>
     5b4:	e51b2008 	ldr	r2, [fp, #-8]
     5b8:	e1a03002 	mov	r3, r2
     5bc:	e1a03103 	lsl	r3, r3, #2
     5c0:	e0833002 	add	r3, r3, r2
     5c4:	e1a03083 	lsl	r3, r3, #1
     5c8:	e1a01003 	mov	r1, r3
     5cc:	e51b3010 	ldr	r3, [fp, #-16]
     5d0:	e2832001 	add	r2, r3, #1
     5d4:	e50b2010 	str	r2, [fp, #-16]
     5d8:	e5d33000 	ldrb	r3, [r3]
     5dc:	e0813003 	add	r3, r1, r3
     5e0:	e2433030 	sub	r3, r3, #48	@ 0x30
     5e4:	e50b3008 	str	r3, [fp, #-8]
     5e8:	e51b3010 	ldr	r3, [fp, #-16]
     5ec:	e5d33000 	ldrb	r3, [r3]
     5f0:	e353002f 	cmp	r3, #47	@ 0x2f
     5f4:	9a000003 	bls	608 <atoi+0x70>
     5f8:	e51b3010 	ldr	r3, [fp, #-16]
     5fc:	e5d33000 	ldrb	r3, [r3]
     600:	e3530039 	cmp	r3, #57	@ 0x39
     604:	9affffea 	bls	5b4 <atoi+0x1c>
     608:	e51b3010 	ldr	r3, [fp, #-16]
     60c:	e5d33000 	ldrb	r3, [r3]
     610:	e3530000 	cmp	r3, #0
     614:	1a000001 	bne	620 <atoi+0x88>
     618:	e51b3008 	ldr	r3, [fp, #-8]
     61c:	ea000000 	b	624 <atoi+0x8c>
     620:	e3e03000 	mvn	r3, #0
     624:	e1a00003 	mov	r0, r3
     628:	e28bd000 	add	sp, fp, #0
     62c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     630:	e12fff1e 	bx	lr

00000634 <memmove>:
     634:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     638:	e28db000 	add	fp, sp, #0
     63c:	e24dd01c 	sub	sp, sp, #28
     640:	e50b0010 	str	r0, [fp, #-16]
     644:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     648:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     64c:	e51b3010 	ldr	r3, [fp, #-16]
     650:	e50b3008 	str	r3, [fp, #-8]
     654:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     658:	e50b300c 	str	r3, [fp, #-12]
     65c:	ea000007 	b	680 <memmove+0x4c>
     660:	e51b200c 	ldr	r2, [fp, #-12]
     664:	e2823001 	add	r3, r2, #1
     668:	e50b300c 	str	r3, [fp, #-12]
     66c:	e51b3008 	ldr	r3, [fp, #-8]
     670:	e2831001 	add	r1, r3, #1
     674:	e50b1008 	str	r1, [fp, #-8]
     678:	e5d22000 	ldrb	r2, [r2]
     67c:	e5c32000 	strb	r2, [r3]
     680:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     684:	e2432001 	sub	r2, r3, #1
     688:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     68c:	e3530000 	cmp	r3, #0
     690:	cafffff2 	bgt	660 <memmove+0x2c>
     694:	e51b3010 	ldr	r3, [fp, #-16]
     698:	e1a00003 	mov	r0, r3
     69c:	e28bd000 	add	sp, fp, #0
     6a0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6a4:	e12fff1e 	bx	lr

000006a8 <initiateLock>:
     6a8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6ac:	e28db000 	add	fp, sp, #0
     6b0:	e24dd00c 	sub	sp, sp, #12
     6b4:	e50b0008 	str	r0, [fp, #-8]
     6b8:	e51b3008 	ldr	r3, [fp, #-8]
     6bc:	e3a02000 	mov	r2, #0
     6c0:	e5832000 	str	r2, [r3]
     6c4:	e51b3008 	ldr	r3, [fp, #-8]
     6c8:	e3a02001 	mov	r2, #1
     6cc:	e5832004 	str	r2, [r3, #4]
     6d0:	e1a00000 	nop			@ (mov r0, r0)
     6d4:	e28bd000 	add	sp, fp, #0
     6d8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6dc:	e12fff1e 	bx	lr

000006e0 <acquireLock>:
     6e0:	e92d4800 	push	{fp, lr}
     6e4:	e28db004 	add	fp, sp, #4
     6e8:	e24dd008 	sub	sp, sp, #8
     6ec:	e50b0008 	str	r0, [fp, #-8]
     6f0:	ea000001 	b	6fc <acquireLock+0x1c>
     6f4:	e3a00001 	mov	r0, #1
     6f8:	eb00013a 	bl	be8 <sleep>
     6fc:	e51b2008 	ldr	r2, [fp, #-8]
     700:	e3a01001 	mov	r1, #1
     704:	e1923f9f 	ldrex	r3, [r2]
     708:	e1820f91 	strex	r0, r1, [r2]
     70c:	e3500000 	cmp	r0, #0
     710:	1afffffb 	bne	704 <acquireLock+0x24>
     714:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     718:	e3530001 	cmp	r3, #1
     71c:	0afffff4 	beq	6f4 <acquireLock+0x14>
     720:	e1a00000 	nop			@ (mov r0, r0)
     724:	e1a00000 	nop			@ (mov r0, r0)
     728:	e24bd004 	sub	sp, fp, #4
     72c:	e8bd8800 	pop	{fp, pc}

00000730 <releaseLock>:
     730:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     734:	e28db000 	add	fp, sp, #0
     738:	e24dd00c 	sub	sp, sp, #12
     73c:	e50b0008 	str	r0, [fp, #-8]
     740:	e51b3008 	ldr	r3, [fp, #-8]
     744:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     748:	e3a02000 	mov	r2, #0
     74c:	e5832000 	str	r2, [r3]
     750:	e1a00000 	nop			@ (mov r0, r0)
     754:	e28bd000 	add	sp, fp, #0
     758:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     75c:	e12fff1e 	bx	lr

00000760 <initiateCondVar>:
     760:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     764:	e28db000 	add	fp, sp, #0
     768:	e24dd00c 	sub	sp, sp, #12
     76c:	e50b0008 	str	r0, [fp, #-8]
     770:	e51b3008 	ldr	r3, [fp, #-8]
     774:	e3a02000 	mov	r2, #0
     778:	e5832000 	str	r2, [r3]
     77c:	e51b3008 	ldr	r3, [fp, #-8]
     780:	e3a02001 	mov	r2, #1
     784:	e5832004 	str	r2, [r3, #4]
     788:	e1a00000 	nop			@ (mov r0, r0)
     78c:	e28bd000 	add	sp, fp, #0
     790:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     794:	e12fff1e 	bx	lr

00000798 <condWait>:
     798:	e92d4800 	push	{fp, lr}
     79c:	e28db004 	add	fp, sp, #4
     7a0:	e24dd008 	sub	sp, sp, #8
     7a4:	e50b0008 	str	r0, [fp, #-8]
     7a8:	e50b100c 	str	r1, [fp, #-12]
     7ac:	e51b000c 	ldr	r0, [fp, #-12]
     7b0:	ebffffde 	bl	730 <releaseLock>
     7b4:	e51b3008 	ldr	r3, [fp, #-8]
     7b8:	e5933000 	ldr	r3, [r3]
     7bc:	e1a00003 	mov	r0, r3
     7c0:	eb00017d 	bl	dbc <sleepChan>
     7c4:	e51b000c 	ldr	r0, [fp, #-12]
     7c8:	ebffffc4 	bl	6e0 <acquireLock>
     7cc:	e1a00000 	nop			@ (mov r0, r0)
     7d0:	e24bd004 	sub	sp, fp, #4
     7d4:	e8bd8800 	pop	{fp, pc}

000007d8 <broadcast>:
     7d8:	e92d4800 	push	{fp, lr}
     7dc:	e28db004 	add	fp, sp, #4
     7e0:	e24dd008 	sub	sp, sp, #8
     7e4:	e50b0008 	str	r0, [fp, #-8]
     7e8:	e51b3008 	ldr	r3, [fp, #-8]
     7ec:	e5933000 	ldr	r3, [r3]
     7f0:	e1a00003 	mov	r0, r3
     7f4:	eb000182 	bl	e04 <sigChan>
     7f8:	e1a00000 	nop			@ (mov r0, r0)
     7fc:	e24bd004 	sub	sp, fp, #4
     800:	e8bd8800 	pop	{fp, pc}

00000804 <semInit>:
     804:	e92d4800 	push	{fp, lr}
     808:	e28db004 	add	fp, sp, #4
     80c:	e24dd008 	sub	sp, sp, #8
     810:	e50b0008 	str	r0, [fp, #-8]
     814:	e50b100c 	str	r1, [fp, #-12]
     818:	e51b3008 	ldr	r3, [fp, #-8]
     81c:	e51b200c 	ldr	r2, [fp, #-12]
     820:	e5832000 	str	r2, [r3]
     824:	e51b3008 	ldr	r3, [fp, #-8]
     828:	e2833004 	add	r3, r3, #4
     82c:	e1a00003 	mov	r0, r3
     830:	ebffff9c 	bl	6a8 <initiateLock>
     834:	e51b3008 	ldr	r3, [fp, #-8]
     838:	e283300c 	add	r3, r3, #12
     83c:	e1a00003 	mov	r0, r3
     840:	ebffffc6 	bl	760 <initiateCondVar>
     844:	e51b3008 	ldr	r3, [fp, #-8]
     848:	e3a02001 	mov	r2, #1
     84c:	e5832014 	str	r2, [r3, #20]
     850:	e1a00000 	nop			@ (mov r0, r0)
     854:	e24bd004 	sub	sp, fp, #4
     858:	e8bd8800 	pop	{fp, pc}

0000085c <semUp>:
     85c:	e92d4800 	push	{fp, lr}
     860:	e28db004 	add	fp, sp, #4
     864:	e24dd008 	sub	sp, sp, #8
     868:	e50b0008 	str	r0, [fp, #-8]
     86c:	e51b3008 	ldr	r3, [fp, #-8]
     870:	e2833004 	add	r3, r3, #4
     874:	e1a00003 	mov	r0, r3
     878:	ebffff98 	bl	6e0 <acquireLock>
     87c:	e51b3008 	ldr	r3, [fp, #-8]
     880:	e5933000 	ldr	r3, [r3]
     884:	e2832001 	add	r2, r3, #1
     888:	e51b3008 	ldr	r3, [fp, #-8]
     88c:	e5832000 	str	r2, [r3]
     890:	e51b3008 	ldr	r3, [fp, #-8]
     894:	e283300c 	add	r3, r3, #12
     898:	e1a00003 	mov	r0, r3
     89c:	ebffffcd 	bl	7d8 <broadcast>
     8a0:	e51b3008 	ldr	r3, [fp, #-8]
     8a4:	e2833004 	add	r3, r3, #4
     8a8:	e1a00003 	mov	r0, r3
     8ac:	ebffff9f 	bl	730 <releaseLock>
     8b0:	e1a00000 	nop			@ (mov r0, r0)
     8b4:	e24bd004 	sub	sp, fp, #4
     8b8:	e8bd8800 	pop	{fp, pc}

000008bc <semDown>:
     8bc:	e92d4800 	push	{fp, lr}
     8c0:	e28db004 	add	fp, sp, #4
     8c4:	e24dd008 	sub	sp, sp, #8
     8c8:	e50b0008 	str	r0, [fp, #-8]
     8cc:	e51b3008 	ldr	r3, [fp, #-8]
     8d0:	e2833004 	add	r3, r3, #4
     8d4:	e1a00003 	mov	r0, r3
     8d8:	ebffff80 	bl	6e0 <acquireLock>
     8dc:	ea000006 	b	8fc <semDown+0x40>
     8e0:	e51b3008 	ldr	r3, [fp, #-8]
     8e4:	e283200c 	add	r2, r3, #12
     8e8:	e51b3008 	ldr	r3, [fp, #-8]
     8ec:	e2833004 	add	r3, r3, #4
     8f0:	e1a01003 	mov	r1, r3
     8f4:	e1a00002 	mov	r0, r2
     8f8:	ebffffa6 	bl	798 <condWait>
     8fc:	e51b3008 	ldr	r3, [fp, #-8]
     900:	e5933000 	ldr	r3, [r3]
     904:	e3530000 	cmp	r3, #0
     908:	dafffff4 	ble	8e0 <semDown+0x24>
     90c:	e51b3008 	ldr	r3, [fp, #-8]
     910:	e5933000 	ldr	r3, [r3]
     914:	e2432001 	sub	r2, r3, #1
     918:	e51b3008 	ldr	r3, [fp, #-8]
     91c:	e5832000 	str	r2, [r3]
     920:	e51b3008 	ldr	r3, [fp, #-8]
     924:	e2833004 	add	r3, r3, #4
     928:	e1a00003 	mov	r0, r3
     92c:	ebffff7f 	bl	730 <releaseLock>
     930:	e1a00000 	nop			@ (mov r0, r0)
     934:	e24bd004 	sub	sp, fp, #4
     938:	e8bd8800 	pop	{fp, pc}

0000093c <fork>:
     93c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     940:	e1a04003 	mov	r4, r3
     944:	e1a03002 	mov	r3, r2
     948:	e1a02001 	mov	r2, r1
     94c:	e1a01000 	mov	r1, r0
     950:	e3a00001 	mov	r0, #1
     954:	ef000000 	svc	0x00000000
     958:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     95c:	e12fff1e 	bx	lr

00000960 <exit>:
     960:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     964:	e1a04003 	mov	r4, r3
     968:	e1a03002 	mov	r3, r2
     96c:	e1a02001 	mov	r2, r1
     970:	e1a01000 	mov	r1, r0
     974:	e3a00002 	mov	r0, #2
     978:	ef000000 	svc	0x00000000
     97c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     980:	e12fff1e 	bx	lr

00000984 <wait>:
     984:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     988:	e1a04003 	mov	r4, r3
     98c:	e1a03002 	mov	r3, r2
     990:	e1a02001 	mov	r2, r1
     994:	e1a01000 	mov	r1, r0
     998:	e3a00003 	mov	r0, #3
     99c:	ef000000 	svc	0x00000000
     9a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a4:	e12fff1e 	bx	lr

000009a8 <pipe>:
     9a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9ac:	e1a04003 	mov	r4, r3
     9b0:	e1a03002 	mov	r3, r2
     9b4:	e1a02001 	mov	r2, r1
     9b8:	e1a01000 	mov	r1, r0
     9bc:	e3a00004 	mov	r0, #4
     9c0:	ef000000 	svc	0x00000000
     9c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c8:	e12fff1e 	bx	lr

000009cc <read>:
     9cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9d0:	e1a04003 	mov	r4, r3
     9d4:	e1a03002 	mov	r3, r2
     9d8:	e1a02001 	mov	r2, r1
     9dc:	e1a01000 	mov	r1, r0
     9e0:	e3a00005 	mov	r0, #5
     9e4:	ef000000 	svc	0x00000000
     9e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9ec:	e12fff1e 	bx	lr

000009f0 <write>:
     9f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f4:	e1a04003 	mov	r4, r3
     9f8:	e1a03002 	mov	r3, r2
     9fc:	e1a02001 	mov	r2, r1
     a00:	e1a01000 	mov	r1, r0
     a04:	e3a00010 	mov	r0, #16
     a08:	ef000000 	svc	0x00000000
     a0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a10:	e12fff1e 	bx	lr

00000a14 <close>:
     a14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a18:	e1a04003 	mov	r4, r3
     a1c:	e1a03002 	mov	r3, r2
     a20:	e1a02001 	mov	r2, r1
     a24:	e1a01000 	mov	r1, r0
     a28:	e3a00015 	mov	r0, #21
     a2c:	ef000000 	svc	0x00000000
     a30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a34:	e12fff1e 	bx	lr

00000a38 <kill>:
     a38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a3c:	e1a04003 	mov	r4, r3
     a40:	e1a03002 	mov	r3, r2
     a44:	e1a02001 	mov	r2, r1
     a48:	e1a01000 	mov	r1, r0
     a4c:	e3a00006 	mov	r0, #6
     a50:	ef000000 	svc	0x00000000
     a54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a58:	e12fff1e 	bx	lr

00000a5c <exec>:
     a5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a60:	e1a04003 	mov	r4, r3
     a64:	e1a03002 	mov	r3, r2
     a68:	e1a02001 	mov	r2, r1
     a6c:	e1a01000 	mov	r1, r0
     a70:	e3a00007 	mov	r0, #7
     a74:	ef000000 	svc	0x00000000
     a78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a7c:	e12fff1e 	bx	lr

00000a80 <open>:
     a80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a84:	e1a04003 	mov	r4, r3
     a88:	e1a03002 	mov	r3, r2
     a8c:	e1a02001 	mov	r2, r1
     a90:	e1a01000 	mov	r1, r0
     a94:	e3a0000f 	mov	r0, #15
     a98:	ef000000 	svc	0x00000000
     a9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aa0:	e12fff1e 	bx	lr

00000aa4 <mknod>:
     aa4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa8:	e1a04003 	mov	r4, r3
     aac:	e1a03002 	mov	r3, r2
     ab0:	e1a02001 	mov	r2, r1
     ab4:	e1a01000 	mov	r1, r0
     ab8:	e3a00011 	mov	r0, #17
     abc:	ef000000 	svc	0x00000000
     ac0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac4:	e12fff1e 	bx	lr

00000ac8 <unlink>:
     ac8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     acc:	e1a04003 	mov	r4, r3
     ad0:	e1a03002 	mov	r3, r2
     ad4:	e1a02001 	mov	r2, r1
     ad8:	e1a01000 	mov	r1, r0
     adc:	e3a00012 	mov	r0, #18
     ae0:	ef000000 	svc	0x00000000
     ae4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae8:	e12fff1e 	bx	lr

00000aec <fstat>:
     aec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     af0:	e1a04003 	mov	r4, r3
     af4:	e1a03002 	mov	r3, r2
     af8:	e1a02001 	mov	r2, r1
     afc:	e1a01000 	mov	r1, r0
     b00:	e3a00008 	mov	r0, #8
     b04:	ef000000 	svc	0x00000000
     b08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b0c:	e12fff1e 	bx	lr

00000b10 <link>:
     b10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b14:	e1a04003 	mov	r4, r3
     b18:	e1a03002 	mov	r3, r2
     b1c:	e1a02001 	mov	r2, r1
     b20:	e1a01000 	mov	r1, r0
     b24:	e3a00013 	mov	r0, #19
     b28:	ef000000 	svc	0x00000000
     b2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b30:	e12fff1e 	bx	lr

00000b34 <mkdir>:
     b34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b38:	e1a04003 	mov	r4, r3
     b3c:	e1a03002 	mov	r3, r2
     b40:	e1a02001 	mov	r2, r1
     b44:	e1a01000 	mov	r1, r0
     b48:	e3a00014 	mov	r0, #20
     b4c:	ef000000 	svc	0x00000000
     b50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b54:	e12fff1e 	bx	lr

00000b58 <chdir>:
     b58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b5c:	e1a04003 	mov	r4, r3
     b60:	e1a03002 	mov	r3, r2
     b64:	e1a02001 	mov	r2, r1
     b68:	e1a01000 	mov	r1, r0
     b6c:	e3a00009 	mov	r0, #9
     b70:	ef000000 	svc	0x00000000
     b74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b78:	e12fff1e 	bx	lr

00000b7c <dup>:
     b7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b80:	e1a04003 	mov	r4, r3
     b84:	e1a03002 	mov	r3, r2
     b88:	e1a02001 	mov	r2, r1
     b8c:	e1a01000 	mov	r1, r0
     b90:	e3a0000a 	mov	r0, #10
     b94:	ef000000 	svc	0x00000000
     b98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b9c:	e12fff1e 	bx	lr

00000ba0 <getpid>:
     ba0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba4:	e1a04003 	mov	r4, r3
     ba8:	e1a03002 	mov	r3, r2
     bac:	e1a02001 	mov	r2, r1
     bb0:	e1a01000 	mov	r1, r0
     bb4:	e3a0000b 	mov	r0, #11
     bb8:	ef000000 	svc	0x00000000
     bbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc0:	e12fff1e 	bx	lr

00000bc4 <sbrk>:
     bc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc8:	e1a04003 	mov	r4, r3
     bcc:	e1a03002 	mov	r3, r2
     bd0:	e1a02001 	mov	r2, r1
     bd4:	e1a01000 	mov	r1, r0
     bd8:	e3a0000c 	mov	r0, #12
     bdc:	ef000000 	svc	0x00000000
     be0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be4:	e12fff1e 	bx	lr

00000be8 <sleep>:
     be8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bec:	e1a04003 	mov	r4, r3
     bf0:	e1a03002 	mov	r3, r2
     bf4:	e1a02001 	mov	r2, r1
     bf8:	e1a01000 	mov	r1, r0
     bfc:	e3a0000d 	mov	r0, #13
     c00:	ef000000 	svc	0x00000000
     c04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c08:	e12fff1e 	bx	lr

00000c0c <uptime>:
     c0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c10:	e1a04003 	mov	r4, r3
     c14:	e1a03002 	mov	r3, r2
     c18:	e1a02001 	mov	r2, r1
     c1c:	e1a01000 	mov	r1, r0
     c20:	e3a0000e 	mov	r0, #14
     c24:	ef000000 	svc	0x00000000
     c28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c2c:	e12fff1e 	bx	lr

00000c30 <getprocs>:
     c30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c34:	e1a04003 	mov	r4, r3
     c38:	e1a03002 	mov	r3, r2
     c3c:	e1a02001 	mov	r2, r1
     c40:	e1a01000 	mov	r1, r0
     c44:	e3a00016 	mov	r0, #22
     c48:	ef000000 	svc	0x00000000
     c4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c50:	e12fff1e 	bx	lr

00000c54 <settickets>:
     c54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c58:	e1a04003 	mov	r4, r3
     c5c:	e1a03002 	mov	r3, r2
     c60:	e1a02001 	mov	r2, r1
     c64:	e1a01000 	mov	r1, r0
     c68:	e3a00017 	mov	r0, #23
     c6c:	ef000000 	svc	0x00000000
     c70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c74:	e12fff1e 	bx	lr

00000c78 <srand>:
     c78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c7c:	e1a04003 	mov	r4, r3
     c80:	e1a03002 	mov	r3, r2
     c84:	e1a02001 	mov	r2, r1
     c88:	e1a01000 	mov	r1, r0
     c8c:	e3a00018 	mov	r0, #24
     c90:	ef000000 	svc	0x00000000
     c94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c98:	e12fff1e 	bx	lr

00000c9c <getpinfo>:
     c9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca0:	e1a04003 	mov	r4, r3
     ca4:	e1a03002 	mov	r3, r2
     ca8:	e1a02001 	mov	r2, r1
     cac:	e1a01000 	mov	r1, r0
     cb0:	e3a00019 	mov	r0, #25
     cb4:	ef000000 	svc	0x00000000
     cb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cbc:	e12fff1e 	bx	lr

00000cc0 <dumppagetable>:
     cc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc4:	e1a04003 	mov	r4, r3
     cc8:	e1a03002 	mov	r3, r2
     ccc:	e1a02001 	mov	r2, r1
     cd0:	e1a01000 	mov	r1, r0
     cd4:	e3a0001a 	mov	r0, #26
     cd8:	ef000000 	svc	0x00000000
     cdc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce0:	e12fff1e 	bx	lr

00000ce4 <thread_create>:
     ce4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce8:	e1a04003 	mov	r4, r3
     cec:	e1a03002 	mov	r3, r2
     cf0:	e1a02001 	mov	r2, r1
     cf4:	e1a01000 	mov	r1, r0
     cf8:	e3a0001b 	mov	r0, #27
     cfc:	ef000000 	svc	0x00000000
     d00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d04:	e12fff1e 	bx	lr

00000d08 <thread_exit>:
     d08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d0c:	e1a04003 	mov	r4, r3
     d10:	e1a03002 	mov	r3, r2
     d14:	e1a02001 	mov	r2, r1
     d18:	e1a01000 	mov	r1, r0
     d1c:	e3a0001c 	mov	r0, #28
     d20:	ef000000 	svc	0x00000000
     d24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d28:	e12fff1e 	bx	lr

00000d2c <thread_join>:
     d2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d30:	e1a04003 	mov	r4, r3
     d34:	e1a03002 	mov	r3, r2
     d38:	e1a02001 	mov	r2, r1
     d3c:	e1a01000 	mov	r1, r0
     d40:	e3a0001d 	mov	r0, #29
     d44:	ef000000 	svc	0x00000000
     d48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d4c:	e12fff1e 	bx	lr

00000d50 <waitpid>:
     d50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d54:	e1a04003 	mov	r4, r3
     d58:	e1a03002 	mov	r3, r2
     d5c:	e1a02001 	mov	r2, r1
     d60:	e1a01000 	mov	r1, r0
     d64:	e3a0001e 	mov	r0, #30
     d68:	ef000000 	svc	0x00000000
     d6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d70:	e12fff1e 	bx	lr

00000d74 <barrier_init>:
     d74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d78:	e1a04003 	mov	r4, r3
     d7c:	e1a03002 	mov	r3, r2
     d80:	e1a02001 	mov	r2, r1
     d84:	e1a01000 	mov	r1, r0
     d88:	e3a0001f 	mov	r0, #31
     d8c:	ef000000 	svc	0x00000000
     d90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d94:	e12fff1e 	bx	lr

00000d98 <barrier_check>:
     d98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d9c:	e1a04003 	mov	r4, r3
     da0:	e1a03002 	mov	r3, r2
     da4:	e1a02001 	mov	r2, r1
     da8:	e1a01000 	mov	r1, r0
     dac:	e3a00020 	mov	r0, #32
     db0:	ef000000 	svc	0x00000000
     db4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     db8:	e12fff1e 	bx	lr

00000dbc <sleepChan>:
     dbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dc0:	e1a04003 	mov	r4, r3
     dc4:	e1a03002 	mov	r3, r2
     dc8:	e1a02001 	mov	r2, r1
     dcc:	e1a01000 	mov	r1, r0
     dd0:	e3a00024 	mov	r0, #36	@ 0x24
     dd4:	ef000000 	svc	0x00000000
     dd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ddc:	e12fff1e 	bx	lr

00000de0 <getChannel>:
     de0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     de4:	e1a04003 	mov	r4, r3
     de8:	e1a03002 	mov	r3, r2
     dec:	e1a02001 	mov	r2, r1
     df0:	e1a01000 	mov	r1, r0
     df4:	e3a00025 	mov	r0, #37	@ 0x25
     df8:	ef000000 	svc	0x00000000
     dfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e00:	e12fff1e 	bx	lr

00000e04 <sigChan>:
     e04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e08:	e1a04003 	mov	r4, r3
     e0c:	e1a03002 	mov	r3, r2
     e10:	e1a02001 	mov	r2, r1
     e14:	e1a01000 	mov	r1, r0
     e18:	e3a00026 	mov	r0, #38	@ 0x26
     e1c:	ef000000 	svc	0x00000000
     e20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e24:	e12fff1e 	bx	lr

00000e28 <sigOneChan>:
     e28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e2c:	e1a04003 	mov	r4, r3
     e30:	e1a03002 	mov	r3, r2
     e34:	e1a02001 	mov	r2, r1
     e38:	e1a01000 	mov	r1, r0
     e3c:	e3a00027 	mov	r0, #39	@ 0x27
     e40:	ef000000 	svc	0x00000000
     e44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e48:	e12fff1e 	bx	lr

00000e4c <putc>:
     e4c:	e92d4800 	push	{fp, lr}
     e50:	e28db004 	add	fp, sp, #4
     e54:	e24dd008 	sub	sp, sp, #8
     e58:	e50b0008 	str	r0, [fp, #-8]
     e5c:	e1a03001 	mov	r3, r1
     e60:	e54b3009 	strb	r3, [fp, #-9]
     e64:	e24b3009 	sub	r3, fp, #9
     e68:	e3a02001 	mov	r2, #1
     e6c:	e1a01003 	mov	r1, r3
     e70:	e51b0008 	ldr	r0, [fp, #-8]
     e74:	ebfffedd 	bl	9f0 <write>
     e78:	e1a00000 	nop			@ (mov r0, r0)
     e7c:	e24bd004 	sub	sp, fp, #4
     e80:	e8bd8800 	pop	{fp, pc}

00000e84 <printint>:
     e84:	e92d4800 	push	{fp, lr}
     e88:	e28db004 	add	fp, sp, #4
     e8c:	e24dd030 	sub	sp, sp, #48	@ 0x30
     e90:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     e94:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     e98:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     e9c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     ea0:	e3a03000 	mov	r3, #0
     ea4:	e50b300c 	str	r3, [fp, #-12]
     ea8:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     eac:	e3530000 	cmp	r3, #0
     eb0:	0a000008 	beq	ed8 <printint+0x54>
     eb4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     eb8:	e3530000 	cmp	r3, #0
     ebc:	aa000005 	bge	ed8 <printint+0x54>
     ec0:	e3a03001 	mov	r3, #1
     ec4:	e50b300c 	str	r3, [fp, #-12]
     ec8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ecc:	e2633000 	rsb	r3, r3, #0
     ed0:	e50b3010 	str	r3, [fp, #-16]
     ed4:	ea000001 	b	ee0 <printint+0x5c>
     ed8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     edc:	e50b3010 	str	r3, [fp, #-16]
     ee0:	e3a03000 	mov	r3, #0
     ee4:	e50b3008 	str	r3, [fp, #-8]
     ee8:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     eec:	e51b3010 	ldr	r3, [fp, #-16]
     ef0:	e1a01002 	mov	r1, r2
     ef4:	e1a00003 	mov	r0, r3
     ef8:	eb0001d5 	bl	1654 <__aeabi_uidivmod>
     efc:	e1a03001 	mov	r3, r1
     f00:	e1a01003 	mov	r1, r3
     f04:	e51b3008 	ldr	r3, [fp, #-8]
     f08:	e2832001 	add	r2, r3, #1
     f0c:	e50b2008 	str	r2, [fp, #-8]
     f10:	e59f20a0 	ldr	r2, [pc, #160]	@ fb8 <printint+0x134>
     f14:	e7d22001 	ldrb	r2, [r2, r1]
     f18:	e2433004 	sub	r3, r3, #4
     f1c:	e083300b 	add	r3, r3, fp
     f20:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f24:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     f28:	e1a01003 	mov	r1, r3
     f2c:	e51b0010 	ldr	r0, [fp, #-16]
     f30:	eb00018a 	bl	1560 <__udivsi3>
     f34:	e1a03000 	mov	r3, r0
     f38:	e50b3010 	str	r3, [fp, #-16]
     f3c:	e51b3010 	ldr	r3, [fp, #-16]
     f40:	e3530000 	cmp	r3, #0
     f44:	1affffe7 	bne	ee8 <printint+0x64>
     f48:	e51b300c 	ldr	r3, [fp, #-12]
     f4c:	e3530000 	cmp	r3, #0
     f50:	0a00000e 	beq	f90 <printint+0x10c>
     f54:	e51b3008 	ldr	r3, [fp, #-8]
     f58:	e2832001 	add	r2, r3, #1
     f5c:	e50b2008 	str	r2, [fp, #-8]
     f60:	e2433004 	sub	r3, r3, #4
     f64:	e083300b 	add	r3, r3, fp
     f68:	e3a0202d 	mov	r2, #45	@ 0x2d
     f6c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f70:	ea000006 	b	f90 <printint+0x10c>
     f74:	e24b2020 	sub	r2, fp, #32
     f78:	e51b3008 	ldr	r3, [fp, #-8]
     f7c:	e0823003 	add	r3, r2, r3
     f80:	e5d33000 	ldrb	r3, [r3]
     f84:	e1a01003 	mov	r1, r3
     f88:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     f8c:	ebffffae 	bl	e4c <putc>
     f90:	e51b3008 	ldr	r3, [fp, #-8]
     f94:	e2433001 	sub	r3, r3, #1
     f98:	e50b3008 	str	r3, [fp, #-8]
     f9c:	e51b3008 	ldr	r3, [fp, #-8]
     fa0:	e3530000 	cmp	r3, #0
     fa4:	aafffff2 	bge	f74 <printint+0xf0>
     fa8:	e1a00000 	nop			@ (mov r0, r0)
     fac:	e1a00000 	nop			@ (mov r0, r0)
     fb0:	e24bd004 	sub	sp, fp, #4
     fb4:	e8bd8800 	pop	{fp, pc}
     fb8:	00001724 	.word	0x00001724

00000fbc <printf>:
     fbc:	e92d000e 	push	{r1, r2, r3}
     fc0:	e92d4800 	push	{fp, lr}
     fc4:	e28db004 	add	fp, sp, #4
     fc8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     fcc:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     fd0:	e3a03000 	mov	r3, #0
     fd4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     fd8:	e28b3008 	add	r3, fp, #8
     fdc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fe0:	e3a03000 	mov	r3, #0
     fe4:	e50b3010 	str	r3, [fp, #-16]
     fe8:	ea000074 	b	11c0 <printf+0x204>
     fec:	e59b2004 	ldr	r2, [fp, #4]
     ff0:	e51b3010 	ldr	r3, [fp, #-16]
     ff4:	e0823003 	add	r3, r2, r3
     ff8:	e5d33000 	ldrb	r3, [r3]
     ffc:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1000:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1004:	e3530000 	cmp	r3, #0
    1008:	1a00000b 	bne	103c <printf+0x80>
    100c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1010:	e3530025 	cmp	r3, #37	@ 0x25
    1014:	1a000002 	bne	1024 <printf+0x68>
    1018:	e3a03025 	mov	r3, #37	@ 0x25
    101c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1020:	ea000063 	b	11b4 <printf+0x1f8>
    1024:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1028:	e6ef3073 	uxtb	r3, r3
    102c:	e1a01003 	mov	r1, r3
    1030:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1034:	ebffff84 	bl	e4c <putc>
    1038:	ea00005d 	b	11b4 <printf+0x1f8>
    103c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1040:	e3530025 	cmp	r3, #37	@ 0x25
    1044:	1a00005a 	bne	11b4 <printf+0x1f8>
    1048:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    104c:	e3530064 	cmp	r3, #100	@ 0x64
    1050:	1a00000a 	bne	1080 <printf+0xc4>
    1054:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1058:	e5933000 	ldr	r3, [r3]
    105c:	e1a01003 	mov	r1, r3
    1060:	e3a03001 	mov	r3, #1
    1064:	e3a0200a 	mov	r2, #10
    1068:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    106c:	ebffff84 	bl	e84 <printint>
    1070:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1074:	e2833004 	add	r3, r3, #4
    1078:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    107c:	ea00004a 	b	11ac <printf+0x1f0>
    1080:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1084:	e3530078 	cmp	r3, #120	@ 0x78
    1088:	0a000002 	beq	1098 <printf+0xdc>
    108c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1090:	e3530070 	cmp	r3, #112	@ 0x70
    1094:	1a00000a 	bne	10c4 <printf+0x108>
    1098:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    109c:	e5933000 	ldr	r3, [r3]
    10a0:	e1a01003 	mov	r1, r3
    10a4:	e3a03000 	mov	r3, #0
    10a8:	e3a02010 	mov	r2, #16
    10ac:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10b0:	ebffff73 	bl	e84 <printint>
    10b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10b8:	e2833004 	add	r3, r3, #4
    10bc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10c0:	ea000039 	b	11ac <printf+0x1f0>
    10c4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10c8:	e3530073 	cmp	r3, #115	@ 0x73
    10cc:	1a000018 	bne	1134 <printf+0x178>
    10d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10d4:	e5933000 	ldr	r3, [r3]
    10d8:	e50b300c 	str	r3, [fp, #-12]
    10dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10e0:	e2833004 	add	r3, r3, #4
    10e4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10e8:	e51b300c 	ldr	r3, [fp, #-12]
    10ec:	e3530000 	cmp	r3, #0
    10f0:	1a00000a 	bne	1120 <printf+0x164>
    10f4:	e59f30f4 	ldr	r3, [pc, #244]	@ 11f0 <printf+0x234>
    10f8:	e50b300c 	str	r3, [fp, #-12]
    10fc:	ea000007 	b	1120 <printf+0x164>
    1100:	e51b300c 	ldr	r3, [fp, #-12]
    1104:	e5d33000 	ldrb	r3, [r3]
    1108:	e1a01003 	mov	r1, r3
    110c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1110:	ebffff4d 	bl	e4c <putc>
    1114:	e51b300c 	ldr	r3, [fp, #-12]
    1118:	e2833001 	add	r3, r3, #1
    111c:	e50b300c 	str	r3, [fp, #-12]
    1120:	e51b300c 	ldr	r3, [fp, #-12]
    1124:	e5d33000 	ldrb	r3, [r3]
    1128:	e3530000 	cmp	r3, #0
    112c:	1afffff3 	bne	1100 <printf+0x144>
    1130:	ea00001d 	b	11ac <printf+0x1f0>
    1134:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1138:	e3530063 	cmp	r3, #99	@ 0x63
    113c:	1a000009 	bne	1168 <printf+0x1ac>
    1140:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1144:	e5933000 	ldr	r3, [r3]
    1148:	e6ef3073 	uxtb	r3, r3
    114c:	e1a01003 	mov	r1, r3
    1150:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1154:	ebffff3c 	bl	e4c <putc>
    1158:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    115c:	e2833004 	add	r3, r3, #4
    1160:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1164:	ea000010 	b	11ac <printf+0x1f0>
    1168:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    116c:	e3530025 	cmp	r3, #37	@ 0x25
    1170:	1a000005 	bne	118c <printf+0x1d0>
    1174:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1178:	e6ef3073 	uxtb	r3, r3
    117c:	e1a01003 	mov	r1, r3
    1180:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1184:	ebffff30 	bl	e4c <putc>
    1188:	ea000007 	b	11ac <printf+0x1f0>
    118c:	e3a01025 	mov	r1, #37	@ 0x25
    1190:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1194:	ebffff2c 	bl	e4c <putc>
    1198:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    119c:	e6ef3073 	uxtb	r3, r3
    11a0:	e1a01003 	mov	r1, r3
    11a4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11a8:	ebffff27 	bl	e4c <putc>
    11ac:	e3a03000 	mov	r3, #0
    11b0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    11b4:	e51b3010 	ldr	r3, [fp, #-16]
    11b8:	e2833001 	add	r3, r3, #1
    11bc:	e50b3010 	str	r3, [fp, #-16]
    11c0:	e59b2004 	ldr	r2, [fp, #4]
    11c4:	e51b3010 	ldr	r3, [fp, #-16]
    11c8:	e0823003 	add	r3, r2, r3
    11cc:	e5d33000 	ldrb	r3, [r3]
    11d0:	e3530000 	cmp	r3, #0
    11d4:	1affff84 	bne	fec <printf+0x30>
    11d8:	e1a00000 	nop			@ (mov r0, r0)
    11dc:	e1a00000 	nop			@ (mov r0, r0)
    11e0:	e24bd004 	sub	sp, fp, #4
    11e4:	e8bd4800 	pop	{fp, lr}
    11e8:	e28dd00c 	add	sp, sp, #12
    11ec:	e12fff1e 	bx	lr
    11f0:	00001718 	.word	0x00001718

000011f4 <free>:
    11f4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    11f8:	e28db000 	add	fp, sp, #0
    11fc:	e24dd014 	sub	sp, sp, #20
    1200:	e50b0010 	str	r0, [fp, #-16]
    1204:	e51b3010 	ldr	r3, [fp, #-16]
    1208:	e2433008 	sub	r3, r3, #8
    120c:	e50b300c 	str	r3, [fp, #-12]
    1210:	e59f3154 	ldr	r3, [pc, #340]	@ 136c <free+0x178>
    1214:	e5933000 	ldr	r3, [r3]
    1218:	e50b3008 	str	r3, [fp, #-8]
    121c:	ea000010 	b	1264 <free+0x70>
    1220:	e51b3008 	ldr	r3, [fp, #-8]
    1224:	e5933000 	ldr	r3, [r3]
    1228:	e51b2008 	ldr	r2, [fp, #-8]
    122c:	e1520003 	cmp	r2, r3
    1230:	3a000008 	bcc	1258 <free+0x64>
    1234:	e51b200c 	ldr	r2, [fp, #-12]
    1238:	e51b3008 	ldr	r3, [fp, #-8]
    123c:	e1520003 	cmp	r2, r3
    1240:	8a000010 	bhi	1288 <free+0x94>
    1244:	e51b3008 	ldr	r3, [fp, #-8]
    1248:	e5933000 	ldr	r3, [r3]
    124c:	e51b200c 	ldr	r2, [fp, #-12]
    1250:	e1520003 	cmp	r2, r3
    1254:	3a00000b 	bcc	1288 <free+0x94>
    1258:	e51b3008 	ldr	r3, [fp, #-8]
    125c:	e5933000 	ldr	r3, [r3]
    1260:	e50b3008 	str	r3, [fp, #-8]
    1264:	e51b200c 	ldr	r2, [fp, #-12]
    1268:	e51b3008 	ldr	r3, [fp, #-8]
    126c:	e1520003 	cmp	r2, r3
    1270:	9affffea 	bls	1220 <free+0x2c>
    1274:	e51b3008 	ldr	r3, [fp, #-8]
    1278:	e5933000 	ldr	r3, [r3]
    127c:	e51b200c 	ldr	r2, [fp, #-12]
    1280:	e1520003 	cmp	r2, r3
    1284:	2affffe5 	bcs	1220 <free+0x2c>
    1288:	e51b300c 	ldr	r3, [fp, #-12]
    128c:	e5933004 	ldr	r3, [r3, #4]
    1290:	e1a03183 	lsl	r3, r3, #3
    1294:	e51b200c 	ldr	r2, [fp, #-12]
    1298:	e0822003 	add	r2, r2, r3
    129c:	e51b3008 	ldr	r3, [fp, #-8]
    12a0:	e5933000 	ldr	r3, [r3]
    12a4:	e1520003 	cmp	r2, r3
    12a8:	1a00000d 	bne	12e4 <free+0xf0>
    12ac:	e51b300c 	ldr	r3, [fp, #-12]
    12b0:	e5932004 	ldr	r2, [r3, #4]
    12b4:	e51b3008 	ldr	r3, [fp, #-8]
    12b8:	e5933000 	ldr	r3, [r3]
    12bc:	e5933004 	ldr	r3, [r3, #4]
    12c0:	e0822003 	add	r2, r2, r3
    12c4:	e51b300c 	ldr	r3, [fp, #-12]
    12c8:	e5832004 	str	r2, [r3, #4]
    12cc:	e51b3008 	ldr	r3, [fp, #-8]
    12d0:	e5933000 	ldr	r3, [r3]
    12d4:	e5932000 	ldr	r2, [r3]
    12d8:	e51b300c 	ldr	r3, [fp, #-12]
    12dc:	e5832000 	str	r2, [r3]
    12e0:	ea000003 	b	12f4 <free+0x100>
    12e4:	e51b3008 	ldr	r3, [fp, #-8]
    12e8:	e5932000 	ldr	r2, [r3]
    12ec:	e51b300c 	ldr	r3, [fp, #-12]
    12f0:	e5832000 	str	r2, [r3]
    12f4:	e51b3008 	ldr	r3, [fp, #-8]
    12f8:	e5933004 	ldr	r3, [r3, #4]
    12fc:	e1a03183 	lsl	r3, r3, #3
    1300:	e51b2008 	ldr	r2, [fp, #-8]
    1304:	e0823003 	add	r3, r2, r3
    1308:	e51b200c 	ldr	r2, [fp, #-12]
    130c:	e1520003 	cmp	r2, r3
    1310:	1a00000b 	bne	1344 <free+0x150>
    1314:	e51b3008 	ldr	r3, [fp, #-8]
    1318:	e5932004 	ldr	r2, [r3, #4]
    131c:	e51b300c 	ldr	r3, [fp, #-12]
    1320:	e5933004 	ldr	r3, [r3, #4]
    1324:	e0822003 	add	r2, r2, r3
    1328:	e51b3008 	ldr	r3, [fp, #-8]
    132c:	e5832004 	str	r2, [r3, #4]
    1330:	e51b300c 	ldr	r3, [fp, #-12]
    1334:	e5932000 	ldr	r2, [r3]
    1338:	e51b3008 	ldr	r3, [fp, #-8]
    133c:	e5832000 	str	r2, [r3]
    1340:	ea000002 	b	1350 <free+0x15c>
    1344:	e51b3008 	ldr	r3, [fp, #-8]
    1348:	e51b200c 	ldr	r2, [fp, #-12]
    134c:	e5832000 	str	r2, [r3]
    1350:	e59f2014 	ldr	r2, [pc, #20]	@ 136c <free+0x178>
    1354:	e51b3008 	ldr	r3, [fp, #-8]
    1358:	e5823000 	str	r3, [r2]
    135c:	e1a00000 	nop			@ (mov r0, r0)
    1360:	e28bd000 	add	sp, fp, #0
    1364:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1368:	e12fff1e 	bx	lr
    136c:	00001774 	.word	0x00001774

00001370 <morecore>:
    1370:	e92d4800 	push	{fp, lr}
    1374:	e28db004 	add	fp, sp, #4
    1378:	e24dd010 	sub	sp, sp, #16
    137c:	e50b0010 	str	r0, [fp, #-16]
    1380:	e51b3010 	ldr	r3, [fp, #-16]
    1384:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1388:	2a000001 	bcs	1394 <morecore+0x24>
    138c:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1390:	e50b3010 	str	r3, [fp, #-16]
    1394:	e51b3010 	ldr	r3, [fp, #-16]
    1398:	e1a03183 	lsl	r3, r3, #3
    139c:	e1a00003 	mov	r0, r3
    13a0:	ebfffe07 	bl	bc4 <sbrk>
    13a4:	e50b0008 	str	r0, [fp, #-8]
    13a8:	e51b3008 	ldr	r3, [fp, #-8]
    13ac:	e3730001 	cmn	r3, #1
    13b0:	1a000001 	bne	13bc <morecore+0x4c>
    13b4:	e3a03000 	mov	r3, #0
    13b8:	ea00000a 	b	13e8 <morecore+0x78>
    13bc:	e51b3008 	ldr	r3, [fp, #-8]
    13c0:	e50b300c 	str	r3, [fp, #-12]
    13c4:	e51b300c 	ldr	r3, [fp, #-12]
    13c8:	e51b2010 	ldr	r2, [fp, #-16]
    13cc:	e5832004 	str	r2, [r3, #4]
    13d0:	e51b300c 	ldr	r3, [fp, #-12]
    13d4:	e2833008 	add	r3, r3, #8
    13d8:	e1a00003 	mov	r0, r3
    13dc:	ebffff84 	bl	11f4 <free>
    13e0:	e59f300c 	ldr	r3, [pc, #12]	@ 13f4 <morecore+0x84>
    13e4:	e5933000 	ldr	r3, [r3]
    13e8:	e1a00003 	mov	r0, r3
    13ec:	e24bd004 	sub	sp, fp, #4
    13f0:	e8bd8800 	pop	{fp, pc}
    13f4:	00001774 	.word	0x00001774

000013f8 <malloc>:
    13f8:	e92d4800 	push	{fp, lr}
    13fc:	e28db004 	add	fp, sp, #4
    1400:	e24dd018 	sub	sp, sp, #24
    1404:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1408:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    140c:	e2833007 	add	r3, r3, #7
    1410:	e1a031a3 	lsr	r3, r3, #3
    1414:	e2833001 	add	r3, r3, #1
    1418:	e50b3010 	str	r3, [fp, #-16]
    141c:	e59f3134 	ldr	r3, [pc, #308]	@ 1558 <malloc+0x160>
    1420:	e5933000 	ldr	r3, [r3]
    1424:	e50b300c 	str	r3, [fp, #-12]
    1428:	e51b300c 	ldr	r3, [fp, #-12]
    142c:	e3530000 	cmp	r3, #0
    1430:	1a00000b 	bne	1464 <malloc+0x6c>
    1434:	e59f3120 	ldr	r3, [pc, #288]	@ 155c <malloc+0x164>
    1438:	e50b300c 	str	r3, [fp, #-12]
    143c:	e59f2114 	ldr	r2, [pc, #276]	@ 1558 <malloc+0x160>
    1440:	e51b300c 	ldr	r3, [fp, #-12]
    1444:	e5823000 	str	r3, [r2]
    1448:	e59f3108 	ldr	r3, [pc, #264]	@ 1558 <malloc+0x160>
    144c:	e5933000 	ldr	r3, [r3]
    1450:	e59f2104 	ldr	r2, [pc, #260]	@ 155c <malloc+0x164>
    1454:	e5823000 	str	r3, [r2]
    1458:	e59f30fc 	ldr	r3, [pc, #252]	@ 155c <malloc+0x164>
    145c:	e3a02000 	mov	r2, #0
    1460:	e5832004 	str	r2, [r3, #4]
    1464:	e51b300c 	ldr	r3, [fp, #-12]
    1468:	e5933000 	ldr	r3, [r3]
    146c:	e50b3008 	str	r3, [fp, #-8]
    1470:	e51b3008 	ldr	r3, [fp, #-8]
    1474:	e5933004 	ldr	r3, [r3, #4]
    1478:	e51b2010 	ldr	r2, [fp, #-16]
    147c:	e1520003 	cmp	r2, r3
    1480:	8a00001e 	bhi	1500 <malloc+0x108>
    1484:	e51b3008 	ldr	r3, [fp, #-8]
    1488:	e5933004 	ldr	r3, [r3, #4]
    148c:	e51b2010 	ldr	r2, [fp, #-16]
    1490:	e1520003 	cmp	r2, r3
    1494:	1a000004 	bne	14ac <malloc+0xb4>
    1498:	e51b3008 	ldr	r3, [fp, #-8]
    149c:	e5932000 	ldr	r2, [r3]
    14a0:	e51b300c 	ldr	r3, [fp, #-12]
    14a4:	e5832000 	str	r2, [r3]
    14a8:	ea00000e 	b	14e8 <malloc+0xf0>
    14ac:	e51b3008 	ldr	r3, [fp, #-8]
    14b0:	e5932004 	ldr	r2, [r3, #4]
    14b4:	e51b3010 	ldr	r3, [fp, #-16]
    14b8:	e0422003 	sub	r2, r2, r3
    14bc:	e51b3008 	ldr	r3, [fp, #-8]
    14c0:	e5832004 	str	r2, [r3, #4]
    14c4:	e51b3008 	ldr	r3, [fp, #-8]
    14c8:	e5933004 	ldr	r3, [r3, #4]
    14cc:	e1a03183 	lsl	r3, r3, #3
    14d0:	e51b2008 	ldr	r2, [fp, #-8]
    14d4:	e0823003 	add	r3, r2, r3
    14d8:	e50b3008 	str	r3, [fp, #-8]
    14dc:	e51b3008 	ldr	r3, [fp, #-8]
    14e0:	e51b2010 	ldr	r2, [fp, #-16]
    14e4:	e5832004 	str	r2, [r3, #4]
    14e8:	e59f2068 	ldr	r2, [pc, #104]	@ 1558 <malloc+0x160>
    14ec:	e51b300c 	ldr	r3, [fp, #-12]
    14f0:	e5823000 	str	r3, [r2]
    14f4:	e51b3008 	ldr	r3, [fp, #-8]
    14f8:	e2833008 	add	r3, r3, #8
    14fc:	ea000012 	b	154c <malloc+0x154>
    1500:	e59f3050 	ldr	r3, [pc, #80]	@ 1558 <malloc+0x160>
    1504:	e5933000 	ldr	r3, [r3]
    1508:	e51b2008 	ldr	r2, [fp, #-8]
    150c:	e1520003 	cmp	r2, r3
    1510:	1a000007 	bne	1534 <malloc+0x13c>
    1514:	e51b0010 	ldr	r0, [fp, #-16]
    1518:	ebffff94 	bl	1370 <morecore>
    151c:	e50b0008 	str	r0, [fp, #-8]
    1520:	e51b3008 	ldr	r3, [fp, #-8]
    1524:	e3530000 	cmp	r3, #0
    1528:	1a000001 	bne	1534 <malloc+0x13c>
    152c:	e3a03000 	mov	r3, #0
    1530:	ea000005 	b	154c <malloc+0x154>
    1534:	e51b3008 	ldr	r3, [fp, #-8]
    1538:	e50b300c 	str	r3, [fp, #-12]
    153c:	e51b3008 	ldr	r3, [fp, #-8]
    1540:	e5933000 	ldr	r3, [r3]
    1544:	e50b3008 	str	r3, [fp, #-8]
    1548:	eaffffc8 	b	1470 <malloc+0x78>
    154c:	e1a00003 	mov	r0, r3
    1550:	e24bd004 	sub	sp, fp, #4
    1554:	e8bd8800 	pop	{fp, pc}
    1558:	00001774 	.word	0x00001774
    155c:	0000176c 	.word	0x0000176c

00001560 <__udivsi3>:
    1560:	e2512001 	subs	r2, r1, #1
    1564:	012fff1e 	bxeq	lr
    1568:	3a000036 	bcc	1648 <__udivsi3+0xe8>
    156c:	e1500001 	cmp	r0, r1
    1570:	9a000022 	bls	1600 <__udivsi3+0xa0>
    1574:	e1110002 	tst	r1, r2
    1578:	0a000023 	beq	160c <__udivsi3+0xac>
    157c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1580:	01a01181 	lsleq	r1, r1, #3
    1584:	03a03008 	moveq	r3, #8
    1588:	13a03001 	movne	r3, #1
    158c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1590:	31510000 	cmpcc	r1, r0
    1594:	31a01201 	lslcc	r1, r1, #4
    1598:	31a03203 	lslcc	r3, r3, #4
    159c:	3afffffa 	bcc	158c <__udivsi3+0x2c>
    15a0:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    15a4:	31510000 	cmpcc	r1, r0
    15a8:	31a01081 	lslcc	r1, r1, #1
    15ac:	31a03083 	lslcc	r3, r3, #1
    15b0:	3afffffa 	bcc	15a0 <__udivsi3+0x40>
    15b4:	e3a02000 	mov	r2, #0
    15b8:	e1500001 	cmp	r0, r1
    15bc:	20400001 	subcs	r0, r0, r1
    15c0:	21822003 	orrcs	r2, r2, r3
    15c4:	e15000a1 	cmp	r0, r1, lsr #1
    15c8:	204000a1 	subcs	r0, r0, r1, lsr #1
    15cc:	218220a3 	orrcs	r2, r2, r3, lsr #1
    15d0:	e1500121 	cmp	r0, r1, lsr #2
    15d4:	20400121 	subcs	r0, r0, r1, lsr #2
    15d8:	21822123 	orrcs	r2, r2, r3, lsr #2
    15dc:	e15001a1 	cmp	r0, r1, lsr #3
    15e0:	204001a1 	subcs	r0, r0, r1, lsr #3
    15e4:	218221a3 	orrcs	r2, r2, r3, lsr #3
    15e8:	e3500000 	cmp	r0, #0
    15ec:	11b03223 	lsrsne	r3, r3, #4
    15f0:	11a01221 	lsrne	r1, r1, #4
    15f4:	1affffef 	bne	15b8 <__udivsi3+0x58>
    15f8:	e1a00002 	mov	r0, r2
    15fc:	e12fff1e 	bx	lr
    1600:	03a00001 	moveq	r0, #1
    1604:	13a00000 	movne	r0, #0
    1608:	e12fff1e 	bx	lr
    160c:	e3510801 	cmp	r1, #65536	@ 0x10000
    1610:	21a01821 	lsrcs	r1, r1, #16
    1614:	23a02010 	movcs	r2, #16
    1618:	33a02000 	movcc	r2, #0
    161c:	e3510c01 	cmp	r1, #256	@ 0x100
    1620:	21a01421 	lsrcs	r1, r1, #8
    1624:	22822008 	addcs	r2, r2, #8
    1628:	e3510010 	cmp	r1, #16
    162c:	21a01221 	lsrcs	r1, r1, #4
    1630:	22822004 	addcs	r2, r2, #4
    1634:	e3510004 	cmp	r1, #4
    1638:	82822003 	addhi	r2, r2, #3
    163c:	908220a1 	addls	r2, r2, r1, lsr #1
    1640:	e1a00230 	lsr	r0, r0, r2
    1644:	e12fff1e 	bx	lr
    1648:	e3500000 	cmp	r0, #0
    164c:	13e00000 	mvnne	r0, #0
    1650:	ea000007 	b	1674 <__aeabi_idiv0>

00001654 <__aeabi_uidivmod>:
    1654:	e3510000 	cmp	r1, #0
    1658:	0afffffa 	beq	1648 <__udivsi3+0xe8>
    165c:	e92d4003 	push	{r0, r1, lr}
    1660:	ebffffbe 	bl	1560 <__udivsi3>
    1664:	e8bd4006 	pop	{r1, r2, lr}
    1668:	e0030092 	mul	r3, r2, r0
    166c:	e0411003 	sub	r1, r1, r3
    1670:	e12fff1e 	bx	lr

00001674 <__aeabi_idiv0>:
    1674:	e12fff1e 	bx	lr
