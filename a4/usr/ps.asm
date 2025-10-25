
_ps:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d48f0 	push	{r4, r5, r6, r7, fp, lr}
       4:	e28db014 	add	fp, sp, #20
       8:	e24ddef2 	sub	sp, sp, #3872	@ 0xf20
       c:	e24dd008 	sub	sp, sp, #8
      10:	e50b0f20 	str	r0, [fp, #-3872]	@ 0xfffff0e0
      14:	e50b1f24 	str	r1, [fp, #-3876]	@ 0xfffff0dc
      18:	e24b3ef1 	sub	r3, fp, #3856	@ 0xf10
      1c:	e2433004 	sub	r3, r3, #4
      20:	e2433008 	sub	r3, r3, #8
      24:	e3a01040 	mov	r1, #64	@ 0x40
      28:	e1a00003 	mov	r0, r3
      2c:	eb000307 	bl	c50 <getprocs>
      30:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
      34:	e59f1194 	ldr	r1, [pc, #404]	@ 1d0 <main+0x1d0>
      38:	e3a00001 	mov	r0, #1
      3c:	eb0003e6 	bl	fdc <printf>
      40:	e3a03000 	mov	r3, #0
      44:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      48:	ea00005b 	b	1bc <main+0x1bc>
      4c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
      50:	e1a03002 	mov	r3, r2
      54:	e1a03203 	lsl	r3, r3, #4
      58:	e0433002 	sub	r3, r3, r2
      5c:	e1a03103 	lsl	r3, r3, #2
      60:	e2433014 	sub	r3, r3, #20
      64:	e083300b 	add	r3, r3, fp
      68:	e2433c0f 	sub	r3, r3, #3840	@ 0xf00
      6c:	e2433008 	sub	r3, r3, #8
      70:	e5936000 	ldr	r6, [r3]
      74:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
      78:	e1a03002 	mov	r3, r2
      7c:	e1a03203 	lsl	r3, r3, #4
      80:	e0433002 	sub	r3, r3, r2
      84:	e1a03103 	lsl	r3, r3, #2
      88:	e2433014 	sub	r3, r3, #20
      8c:	e083300b 	add	r3, r3, fp
      90:	e2433c0f 	sub	r3, r3, #3840	@ 0xf00
      94:	e2433004 	sub	r3, r3, #4
      98:	e5937000 	ldr	r7, [r3]
      9c:	e24b2ef1 	sub	r2, fp, #3856	@ 0xf10
      a0:	e2422004 	sub	r2, r2, #4
      a4:	e2422008 	sub	r2, r2, #8
      a8:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
      ac:	e1a03001 	mov	r3, r1
      b0:	e1a03203 	lsl	r3, r3, #4
      b4:	e0433001 	sub	r3, r3, r1
      b8:	e1a03103 	lsl	r3, r3, #2
      bc:	e2833008 	add	r3, r3, #8
      c0:	e0820003 	add	r0, r2, r3
      c4:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
      c8:	e1a03002 	mov	r3, r2
      cc:	e1a03203 	lsl	r3, r3, #4
      d0:	e0433002 	sub	r3, r3, r2
      d4:	e1a03103 	lsl	r3, r3, #2
      d8:	e2433014 	sub	r3, r3, #20
      dc:	e083300b 	add	r3, r3, fp
      e0:	e2433eef 	sub	r3, r3, #3824	@ 0xef0
      e4:	e593c000 	ldr	ip, [r3]
      e8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
      ec:	e1a03002 	mov	r3, r2
      f0:	e1a03203 	lsl	r3, r3, #4
      f4:	e0433002 	sub	r3, r3, r2
      f8:	e1a03103 	lsl	r3, r3, #2
      fc:	e2433014 	sub	r3, r3, #20
     100:	e083300b 	add	r3, r3, fp
     104:	e2433eed 	sub	r3, r3, #3792	@ 0xed0
     108:	e2433008 	sub	r3, r3, #8
     10c:	e593e000 	ldr	lr, [r3]
     110:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     114:	e1a03002 	mov	r3, r2
     118:	e1a03203 	lsl	r3, r3, #4
     11c:	e0433002 	sub	r3, r3, r2
     120:	e1a03103 	lsl	r3, r3, #2
     124:	e2433014 	sub	r3, r3, #20
     128:	e083300b 	add	r3, r3, fp
     12c:	e2433eed 	sub	r3, r3, #3792	@ 0xed0
     130:	e2433004 	sub	r3, r3, #4
     134:	e5934000 	ldr	r4, [r3]
     138:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     13c:	e1a03002 	mov	r3, r2
     140:	e1a03203 	lsl	r3, r3, #4
     144:	e0433002 	sub	r3, r3, r2
     148:	e1a03103 	lsl	r3, r3, #2
     14c:	e2433014 	sub	r3, r3, #20
     150:	e083300b 	add	r3, r3, fp
     154:	e2433eed 	sub	r3, r3, #3792	@ 0xed0
     158:	e5935000 	ldr	r5, [r3]
     15c:	e24b2ef1 	sub	r2, fp, #3856	@ 0xf10
     160:	e2422004 	sub	r2, r2, #4
     164:	e2422008 	sub	r2, r2, #8
     168:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
     16c:	e1a03001 	mov	r3, r1
     170:	e1a03203 	lsl	r3, r3, #4
     174:	e0433001 	sub	r3, r3, r1
     178:	e1a03103 	lsl	r3, r3, #2
     17c:	e2833020 	add	r3, r3, #32
     180:	e0823003 	add	r3, r2, r3
     184:	e58d3014 	str	r3, [sp, #20]
     188:	e58d5010 	str	r5, [sp, #16]
     18c:	e58d400c 	str	r4, [sp, #12]
     190:	e58de008 	str	lr, [sp, #8]
     194:	e58dc004 	str	ip, [sp, #4]
     198:	e58d0000 	str	r0, [sp]
     19c:	e1a03007 	mov	r3, r7
     1a0:	e1a02006 	mov	r2, r6
     1a4:	e59f1028 	ldr	r1, [pc, #40]	@ 1d4 <main+0x1d4>
     1a8:	e3a00001 	mov	r0, #1
     1ac:	eb00038a 	bl	fdc <printf>
     1b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     1b4:	e2833001 	add	r3, r3, #1
     1b8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     1bc:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     1c0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1c4:	e1520003 	cmp	r2, r3
     1c8:	baffff9f 	blt	4c <main+0x4c>
     1cc:	eb0001eb 	bl	980 <exit>
     1d0:	00001698 	.word	0x00001698
     1d4:	000016d0 	.word	0x000016d0

000001d8 <strcpy>:
     1d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1dc:	e28db000 	add	fp, sp, #0
     1e0:	e24dd014 	sub	sp, sp, #20
     1e4:	e50b0010 	str	r0, [fp, #-16]
     1e8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     1ec:	e51b3010 	ldr	r3, [fp, #-16]
     1f0:	e50b3008 	str	r3, [fp, #-8]
     1f4:	e1a00000 	nop			@ (mov r0, r0)
     1f8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1fc:	e2823001 	add	r3, r2, #1
     200:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     204:	e51b3010 	ldr	r3, [fp, #-16]
     208:	e2831001 	add	r1, r3, #1
     20c:	e50b1010 	str	r1, [fp, #-16]
     210:	e5d22000 	ldrb	r2, [r2]
     214:	e5c32000 	strb	r2, [r3]
     218:	e5d33000 	ldrb	r3, [r3]
     21c:	e3530000 	cmp	r3, #0
     220:	1afffff4 	bne	1f8 <strcpy+0x20>
     224:	e51b3008 	ldr	r3, [fp, #-8]
     228:	e1a00003 	mov	r0, r3
     22c:	e28bd000 	add	sp, fp, #0
     230:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     234:	e12fff1e 	bx	lr

00000238 <strcmp>:
     238:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     23c:	e28db000 	add	fp, sp, #0
     240:	e24dd00c 	sub	sp, sp, #12
     244:	e50b0008 	str	r0, [fp, #-8]
     248:	e50b100c 	str	r1, [fp, #-12]
     24c:	ea000005 	b	268 <strcmp+0x30>
     250:	e51b3008 	ldr	r3, [fp, #-8]
     254:	e2833001 	add	r3, r3, #1
     258:	e50b3008 	str	r3, [fp, #-8]
     25c:	e51b300c 	ldr	r3, [fp, #-12]
     260:	e2833001 	add	r3, r3, #1
     264:	e50b300c 	str	r3, [fp, #-12]
     268:	e51b3008 	ldr	r3, [fp, #-8]
     26c:	e5d33000 	ldrb	r3, [r3]
     270:	e3530000 	cmp	r3, #0
     274:	0a000005 	beq	290 <strcmp+0x58>
     278:	e51b3008 	ldr	r3, [fp, #-8]
     27c:	e5d32000 	ldrb	r2, [r3]
     280:	e51b300c 	ldr	r3, [fp, #-12]
     284:	e5d33000 	ldrb	r3, [r3]
     288:	e1520003 	cmp	r2, r3
     28c:	0affffef 	beq	250 <strcmp+0x18>
     290:	e51b3008 	ldr	r3, [fp, #-8]
     294:	e5d33000 	ldrb	r3, [r3]
     298:	e1a02003 	mov	r2, r3
     29c:	e51b300c 	ldr	r3, [fp, #-12]
     2a0:	e5d33000 	ldrb	r3, [r3]
     2a4:	e0423003 	sub	r3, r2, r3
     2a8:	e1a00003 	mov	r0, r3
     2ac:	e28bd000 	add	sp, fp, #0
     2b0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2b4:	e12fff1e 	bx	lr

000002b8 <strlen>:
     2b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2bc:	e28db000 	add	fp, sp, #0
     2c0:	e24dd014 	sub	sp, sp, #20
     2c4:	e50b0010 	str	r0, [fp, #-16]
     2c8:	e3a03000 	mov	r3, #0
     2cc:	e50b3008 	str	r3, [fp, #-8]
     2d0:	ea000002 	b	2e0 <strlen+0x28>
     2d4:	e51b3008 	ldr	r3, [fp, #-8]
     2d8:	e2833001 	add	r3, r3, #1
     2dc:	e50b3008 	str	r3, [fp, #-8]
     2e0:	e51b3008 	ldr	r3, [fp, #-8]
     2e4:	e51b2010 	ldr	r2, [fp, #-16]
     2e8:	e0823003 	add	r3, r2, r3
     2ec:	e5d33000 	ldrb	r3, [r3]
     2f0:	e3530000 	cmp	r3, #0
     2f4:	1afffff6 	bne	2d4 <strlen+0x1c>
     2f8:	e51b3008 	ldr	r3, [fp, #-8]
     2fc:	e1a00003 	mov	r0, r3
     300:	e28bd000 	add	sp, fp, #0
     304:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     308:	e12fff1e 	bx	lr

0000030c <memset>:
     30c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     310:	e28db000 	add	fp, sp, #0
     314:	e24dd024 	sub	sp, sp, #36	@ 0x24
     318:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     31c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     320:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     324:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     328:	e50b3008 	str	r3, [fp, #-8]
     32c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     330:	e54b300d 	strb	r3, [fp, #-13]
     334:	e55b200d 	ldrb	r2, [fp, #-13]
     338:	e1a03002 	mov	r3, r2
     33c:	e1a03403 	lsl	r3, r3, #8
     340:	e0833002 	add	r3, r3, r2
     344:	e1a03803 	lsl	r3, r3, #16
     348:	e1a02003 	mov	r2, r3
     34c:	e55b300d 	ldrb	r3, [fp, #-13]
     350:	e1a03403 	lsl	r3, r3, #8
     354:	e1822003 	orr	r2, r2, r3
     358:	e55b300d 	ldrb	r3, [fp, #-13]
     35c:	e1823003 	orr	r3, r2, r3
     360:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     364:	ea000008 	b	38c <memset+0x80>
     368:	e51b3008 	ldr	r3, [fp, #-8]
     36c:	e55b200d 	ldrb	r2, [fp, #-13]
     370:	e5c32000 	strb	r2, [r3]
     374:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     378:	e2433001 	sub	r3, r3, #1
     37c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     380:	e51b3008 	ldr	r3, [fp, #-8]
     384:	e2833001 	add	r3, r3, #1
     388:	e50b3008 	str	r3, [fp, #-8]
     38c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     390:	e3530000 	cmp	r3, #0
     394:	0a000003 	beq	3a8 <memset+0x9c>
     398:	e51b3008 	ldr	r3, [fp, #-8]
     39c:	e2033003 	and	r3, r3, #3
     3a0:	e3530000 	cmp	r3, #0
     3a4:	1affffef 	bne	368 <memset+0x5c>
     3a8:	e51b3008 	ldr	r3, [fp, #-8]
     3ac:	e50b300c 	str	r3, [fp, #-12]
     3b0:	ea000008 	b	3d8 <memset+0xcc>
     3b4:	e51b300c 	ldr	r3, [fp, #-12]
     3b8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     3bc:	e5832000 	str	r2, [r3]
     3c0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3c4:	e2433004 	sub	r3, r3, #4
     3c8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3cc:	e51b300c 	ldr	r3, [fp, #-12]
     3d0:	e2833004 	add	r3, r3, #4
     3d4:	e50b300c 	str	r3, [fp, #-12]
     3d8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3dc:	e3530003 	cmp	r3, #3
     3e0:	8afffff3 	bhi	3b4 <memset+0xa8>
     3e4:	e51b300c 	ldr	r3, [fp, #-12]
     3e8:	e50b3008 	str	r3, [fp, #-8]
     3ec:	ea000008 	b	414 <memset+0x108>
     3f0:	e51b3008 	ldr	r3, [fp, #-8]
     3f4:	e55b200d 	ldrb	r2, [fp, #-13]
     3f8:	e5c32000 	strb	r2, [r3]
     3fc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     400:	e2433001 	sub	r3, r3, #1
     404:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     408:	e51b3008 	ldr	r3, [fp, #-8]
     40c:	e2833001 	add	r3, r3, #1
     410:	e50b3008 	str	r3, [fp, #-8]
     414:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     418:	e3530000 	cmp	r3, #0
     41c:	1afffff3 	bne	3f0 <memset+0xe4>
     420:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     424:	e1a00003 	mov	r0, r3
     428:	e28bd000 	add	sp, fp, #0
     42c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     430:	e12fff1e 	bx	lr

00000434 <strchr>:
     434:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     438:	e28db000 	add	fp, sp, #0
     43c:	e24dd00c 	sub	sp, sp, #12
     440:	e50b0008 	str	r0, [fp, #-8]
     444:	e1a03001 	mov	r3, r1
     448:	e54b3009 	strb	r3, [fp, #-9]
     44c:	ea000009 	b	478 <strchr+0x44>
     450:	e51b3008 	ldr	r3, [fp, #-8]
     454:	e5d33000 	ldrb	r3, [r3]
     458:	e55b2009 	ldrb	r2, [fp, #-9]
     45c:	e1520003 	cmp	r2, r3
     460:	1a000001 	bne	46c <strchr+0x38>
     464:	e51b3008 	ldr	r3, [fp, #-8]
     468:	ea000007 	b	48c <strchr+0x58>
     46c:	e51b3008 	ldr	r3, [fp, #-8]
     470:	e2833001 	add	r3, r3, #1
     474:	e50b3008 	str	r3, [fp, #-8]
     478:	e51b3008 	ldr	r3, [fp, #-8]
     47c:	e5d33000 	ldrb	r3, [r3]
     480:	e3530000 	cmp	r3, #0
     484:	1afffff1 	bne	450 <strchr+0x1c>
     488:	e3a03000 	mov	r3, #0
     48c:	e1a00003 	mov	r0, r3
     490:	e28bd000 	add	sp, fp, #0
     494:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     498:	e12fff1e 	bx	lr

0000049c <gets>:
     49c:	e92d4800 	push	{fp, lr}
     4a0:	e28db004 	add	fp, sp, #4
     4a4:	e24dd018 	sub	sp, sp, #24
     4a8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     4ac:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     4b0:	e3a03000 	mov	r3, #0
     4b4:	e50b3008 	str	r3, [fp, #-8]
     4b8:	ea000016 	b	518 <gets+0x7c>
     4bc:	e24b300d 	sub	r3, fp, #13
     4c0:	e3a02001 	mov	r2, #1
     4c4:	e1a01003 	mov	r1, r3
     4c8:	e3a00000 	mov	r0, #0
     4cc:	eb000146 	bl	9ec <read>
     4d0:	e50b000c 	str	r0, [fp, #-12]
     4d4:	e51b300c 	ldr	r3, [fp, #-12]
     4d8:	e3530000 	cmp	r3, #0
     4dc:	da000013 	ble	530 <gets+0x94>
     4e0:	e51b3008 	ldr	r3, [fp, #-8]
     4e4:	e2832001 	add	r2, r3, #1
     4e8:	e50b2008 	str	r2, [fp, #-8]
     4ec:	e1a02003 	mov	r2, r3
     4f0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4f4:	e0833002 	add	r3, r3, r2
     4f8:	e55b200d 	ldrb	r2, [fp, #-13]
     4fc:	e5c32000 	strb	r2, [r3]
     500:	e55b300d 	ldrb	r3, [fp, #-13]
     504:	e353000a 	cmp	r3, #10
     508:	0a000009 	beq	534 <gets+0x98>
     50c:	e55b300d 	ldrb	r3, [fp, #-13]
     510:	e353000d 	cmp	r3, #13
     514:	0a000006 	beq	534 <gets+0x98>
     518:	e51b3008 	ldr	r3, [fp, #-8]
     51c:	e2833001 	add	r3, r3, #1
     520:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     524:	e1520003 	cmp	r2, r3
     528:	caffffe3 	bgt	4bc <gets+0x20>
     52c:	ea000000 	b	534 <gets+0x98>
     530:	e1a00000 	nop			@ (mov r0, r0)
     534:	e51b3008 	ldr	r3, [fp, #-8]
     538:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     53c:	e0823003 	add	r3, r2, r3
     540:	e3a02000 	mov	r2, #0
     544:	e5c32000 	strb	r2, [r3]
     548:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     54c:	e1a00003 	mov	r0, r3
     550:	e24bd004 	sub	sp, fp, #4
     554:	e8bd8800 	pop	{fp, pc}

00000558 <stat>:
     558:	e92d4800 	push	{fp, lr}
     55c:	e28db004 	add	fp, sp, #4
     560:	e24dd010 	sub	sp, sp, #16
     564:	e50b0010 	str	r0, [fp, #-16]
     568:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     56c:	e3a01000 	mov	r1, #0
     570:	e51b0010 	ldr	r0, [fp, #-16]
     574:	eb000149 	bl	aa0 <open>
     578:	e50b0008 	str	r0, [fp, #-8]
     57c:	e51b3008 	ldr	r3, [fp, #-8]
     580:	e3530000 	cmp	r3, #0
     584:	aa000001 	bge	590 <stat+0x38>
     588:	e3e03000 	mvn	r3, #0
     58c:	ea000006 	b	5ac <stat+0x54>
     590:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     594:	e51b0008 	ldr	r0, [fp, #-8]
     598:	eb00015b 	bl	b0c <fstat>
     59c:	e50b000c 	str	r0, [fp, #-12]
     5a0:	e51b0008 	ldr	r0, [fp, #-8]
     5a4:	eb000122 	bl	a34 <close>
     5a8:	e51b300c 	ldr	r3, [fp, #-12]
     5ac:	e1a00003 	mov	r0, r3
     5b0:	e24bd004 	sub	sp, fp, #4
     5b4:	e8bd8800 	pop	{fp, pc}

000005b8 <atoi>:
     5b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5bc:	e28db000 	add	fp, sp, #0
     5c0:	e24dd014 	sub	sp, sp, #20
     5c4:	e50b0010 	str	r0, [fp, #-16]
     5c8:	e3a03000 	mov	r3, #0
     5cc:	e50b3008 	str	r3, [fp, #-8]
     5d0:	ea00000c 	b	608 <atoi+0x50>
     5d4:	e51b2008 	ldr	r2, [fp, #-8]
     5d8:	e1a03002 	mov	r3, r2
     5dc:	e1a03103 	lsl	r3, r3, #2
     5e0:	e0833002 	add	r3, r3, r2
     5e4:	e1a03083 	lsl	r3, r3, #1
     5e8:	e1a01003 	mov	r1, r3
     5ec:	e51b3010 	ldr	r3, [fp, #-16]
     5f0:	e2832001 	add	r2, r3, #1
     5f4:	e50b2010 	str	r2, [fp, #-16]
     5f8:	e5d33000 	ldrb	r3, [r3]
     5fc:	e0813003 	add	r3, r1, r3
     600:	e2433030 	sub	r3, r3, #48	@ 0x30
     604:	e50b3008 	str	r3, [fp, #-8]
     608:	e51b3010 	ldr	r3, [fp, #-16]
     60c:	e5d33000 	ldrb	r3, [r3]
     610:	e353002f 	cmp	r3, #47	@ 0x2f
     614:	9a000003 	bls	628 <atoi+0x70>
     618:	e51b3010 	ldr	r3, [fp, #-16]
     61c:	e5d33000 	ldrb	r3, [r3]
     620:	e3530039 	cmp	r3, #57	@ 0x39
     624:	9affffea 	bls	5d4 <atoi+0x1c>
     628:	e51b3010 	ldr	r3, [fp, #-16]
     62c:	e5d33000 	ldrb	r3, [r3]
     630:	e3530000 	cmp	r3, #0
     634:	1a000001 	bne	640 <atoi+0x88>
     638:	e51b3008 	ldr	r3, [fp, #-8]
     63c:	ea000000 	b	644 <atoi+0x8c>
     640:	e3e03000 	mvn	r3, #0
     644:	e1a00003 	mov	r0, r3
     648:	e28bd000 	add	sp, fp, #0
     64c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     650:	e12fff1e 	bx	lr

00000654 <memmove>:
     654:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     658:	e28db000 	add	fp, sp, #0
     65c:	e24dd01c 	sub	sp, sp, #28
     660:	e50b0010 	str	r0, [fp, #-16]
     664:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     668:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     66c:	e51b3010 	ldr	r3, [fp, #-16]
     670:	e50b3008 	str	r3, [fp, #-8]
     674:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     678:	e50b300c 	str	r3, [fp, #-12]
     67c:	ea000007 	b	6a0 <memmove+0x4c>
     680:	e51b200c 	ldr	r2, [fp, #-12]
     684:	e2823001 	add	r3, r2, #1
     688:	e50b300c 	str	r3, [fp, #-12]
     68c:	e51b3008 	ldr	r3, [fp, #-8]
     690:	e2831001 	add	r1, r3, #1
     694:	e50b1008 	str	r1, [fp, #-8]
     698:	e5d22000 	ldrb	r2, [r2]
     69c:	e5c32000 	strb	r2, [r3]
     6a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6a4:	e2432001 	sub	r2, r3, #1
     6a8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     6ac:	e3530000 	cmp	r3, #0
     6b0:	cafffff2 	bgt	680 <memmove+0x2c>
     6b4:	e51b3010 	ldr	r3, [fp, #-16]
     6b8:	e1a00003 	mov	r0, r3
     6bc:	e28bd000 	add	sp, fp, #0
     6c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6c4:	e12fff1e 	bx	lr

000006c8 <initiateLock>:
     6c8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6cc:	e28db000 	add	fp, sp, #0
     6d0:	e24dd00c 	sub	sp, sp, #12
     6d4:	e50b0008 	str	r0, [fp, #-8]
     6d8:	e51b3008 	ldr	r3, [fp, #-8]
     6dc:	e3a02000 	mov	r2, #0
     6e0:	e5832000 	str	r2, [r3]
     6e4:	e51b3008 	ldr	r3, [fp, #-8]
     6e8:	e3a02001 	mov	r2, #1
     6ec:	e5832004 	str	r2, [r3, #4]
     6f0:	e1a00000 	nop			@ (mov r0, r0)
     6f4:	e28bd000 	add	sp, fp, #0
     6f8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6fc:	e12fff1e 	bx	lr

00000700 <acquireLock>:
     700:	e92d4800 	push	{fp, lr}
     704:	e28db004 	add	fp, sp, #4
     708:	e24dd008 	sub	sp, sp, #8
     70c:	e50b0008 	str	r0, [fp, #-8]
     710:	ea000001 	b	71c <acquireLock+0x1c>
     714:	e3a00001 	mov	r0, #1
     718:	eb00013a 	bl	c08 <sleep>
     71c:	e51b2008 	ldr	r2, [fp, #-8]
     720:	e3a01001 	mov	r1, #1
     724:	e1923f9f 	ldrex	r3, [r2]
     728:	e1820f91 	strex	r0, r1, [r2]
     72c:	e3500000 	cmp	r0, #0
     730:	1afffffb 	bne	724 <acquireLock+0x24>
     734:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     738:	e3530001 	cmp	r3, #1
     73c:	0afffff4 	beq	714 <acquireLock+0x14>
     740:	e1a00000 	nop			@ (mov r0, r0)
     744:	e1a00000 	nop			@ (mov r0, r0)
     748:	e24bd004 	sub	sp, fp, #4
     74c:	e8bd8800 	pop	{fp, pc}

00000750 <releaseLock>:
     750:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     754:	e28db000 	add	fp, sp, #0
     758:	e24dd00c 	sub	sp, sp, #12
     75c:	e50b0008 	str	r0, [fp, #-8]
     760:	e51b3008 	ldr	r3, [fp, #-8]
     764:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     768:	e3a02000 	mov	r2, #0
     76c:	e5832000 	str	r2, [r3]
     770:	e1a00000 	nop			@ (mov r0, r0)
     774:	e28bd000 	add	sp, fp, #0
     778:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     77c:	e12fff1e 	bx	lr

00000780 <initiateCondVar>:
     780:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     784:	e28db000 	add	fp, sp, #0
     788:	e24dd00c 	sub	sp, sp, #12
     78c:	e50b0008 	str	r0, [fp, #-8]
     790:	e51b3008 	ldr	r3, [fp, #-8]
     794:	e3a02000 	mov	r2, #0
     798:	e5832000 	str	r2, [r3]
     79c:	e51b3008 	ldr	r3, [fp, #-8]
     7a0:	e3a02001 	mov	r2, #1
     7a4:	e5832004 	str	r2, [r3, #4]
     7a8:	e1a00000 	nop			@ (mov r0, r0)
     7ac:	e28bd000 	add	sp, fp, #0
     7b0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7b4:	e12fff1e 	bx	lr

000007b8 <condWait>:
     7b8:	e92d4800 	push	{fp, lr}
     7bc:	e28db004 	add	fp, sp, #4
     7c0:	e24dd008 	sub	sp, sp, #8
     7c4:	e50b0008 	str	r0, [fp, #-8]
     7c8:	e50b100c 	str	r1, [fp, #-12]
     7cc:	e51b000c 	ldr	r0, [fp, #-12]
     7d0:	ebffffde 	bl	750 <releaseLock>
     7d4:	e51b3008 	ldr	r3, [fp, #-8]
     7d8:	e5933000 	ldr	r3, [r3]
     7dc:	e1a00003 	mov	r0, r3
     7e0:	eb00017d 	bl	ddc <sleepChan>
     7e4:	e51b000c 	ldr	r0, [fp, #-12]
     7e8:	ebffffc4 	bl	700 <acquireLock>
     7ec:	e1a00000 	nop			@ (mov r0, r0)
     7f0:	e24bd004 	sub	sp, fp, #4
     7f4:	e8bd8800 	pop	{fp, pc}

000007f8 <broadcast>:
     7f8:	e92d4800 	push	{fp, lr}
     7fc:	e28db004 	add	fp, sp, #4
     800:	e24dd008 	sub	sp, sp, #8
     804:	e50b0008 	str	r0, [fp, #-8]
     808:	e51b3008 	ldr	r3, [fp, #-8]
     80c:	e5933000 	ldr	r3, [r3]
     810:	e1a00003 	mov	r0, r3
     814:	eb000182 	bl	e24 <sigChan>
     818:	e1a00000 	nop			@ (mov r0, r0)
     81c:	e24bd004 	sub	sp, fp, #4
     820:	e8bd8800 	pop	{fp, pc}

00000824 <semInit>:
     824:	e92d4800 	push	{fp, lr}
     828:	e28db004 	add	fp, sp, #4
     82c:	e24dd008 	sub	sp, sp, #8
     830:	e50b0008 	str	r0, [fp, #-8]
     834:	e50b100c 	str	r1, [fp, #-12]
     838:	e51b3008 	ldr	r3, [fp, #-8]
     83c:	e51b200c 	ldr	r2, [fp, #-12]
     840:	e5832000 	str	r2, [r3]
     844:	e51b3008 	ldr	r3, [fp, #-8]
     848:	e2833004 	add	r3, r3, #4
     84c:	e1a00003 	mov	r0, r3
     850:	ebffff9c 	bl	6c8 <initiateLock>
     854:	e51b3008 	ldr	r3, [fp, #-8]
     858:	e283300c 	add	r3, r3, #12
     85c:	e1a00003 	mov	r0, r3
     860:	ebffffc6 	bl	780 <initiateCondVar>
     864:	e51b3008 	ldr	r3, [fp, #-8]
     868:	e3a02001 	mov	r2, #1
     86c:	e5832014 	str	r2, [r3, #20]
     870:	e1a00000 	nop			@ (mov r0, r0)
     874:	e24bd004 	sub	sp, fp, #4
     878:	e8bd8800 	pop	{fp, pc}

0000087c <semUp>:
     87c:	e92d4800 	push	{fp, lr}
     880:	e28db004 	add	fp, sp, #4
     884:	e24dd008 	sub	sp, sp, #8
     888:	e50b0008 	str	r0, [fp, #-8]
     88c:	e51b3008 	ldr	r3, [fp, #-8]
     890:	e2833004 	add	r3, r3, #4
     894:	e1a00003 	mov	r0, r3
     898:	ebffff98 	bl	700 <acquireLock>
     89c:	e51b3008 	ldr	r3, [fp, #-8]
     8a0:	e5933000 	ldr	r3, [r3]
     8a4:	e2832001 	add	r2, r3, #1
     8a8:	e51b3008 	ldr	r3, [fp, #-8]
     8ac:	e5832000 	str	r2, [r3]
     8b0:	e51b3008 	ldr	r3, [fp, #-8]
     8b4:	e283300c 	add	r3, r3, #12
     8b8:	e1a00003 	mov	r0, r3
     8bc:	ebffffcd 	bl	7f8 <broadcast>
     8c0:	e51b3008 	ldr	r3, [fp, #-8]
     8c4:	e2833004 	add	r3, r3, #4
     8c8:	e1a00003 	mov	r0, r3
     8cc:	ebffff9f 	bl	750 <releaseLock>
     8d0:	e1a00000 	nop			@ (mov r0, r0)
     8d4:	e24bd004 	sub	sp, fp, #4
     8d8:	e8bd8800 	pop	{fp, pc}

000008dc <semDown>:
     8dc:	e92d4800 	push	{fp, lr}
     8e0:	e28db004 	add	fp, sp, #4
     8e4:	e24dd008 	sub	sp, sp, #8
     8e8:	e50b0008 	str	r0, [fp, #-8]
     8ec:	e51b3008 	ldr	r3, [fp, #-8]
     8f0:	e2833004 	add	r3, r3, #4
     8f4:	e1a00003 	mov	r0, r3
     8f8:	ebffff80 	bl	700 <acquireLock>
     8fc:	ea000006 	b	91c <semDown+0x40>
     900:	e51b3008 	ldr	r3, [fp, #-8]
     904:	e283200c 	add	r2, r3, #12
     908:	e51b3008 	ldr	r3, [fp, #-8]
     90c:	e2833004 	add	r3, r3, #4
     910:	e1a01003 	mov	r1, r3
     914:	e1a00002 	mov	r0, r2
     918:	ebffffa6 	bl	7b8 <condWait>
     91c:	e51b3008 	ldr	r3, [fp, #-8]
     920:	e5933000 	ldr	r3, [r3]
     924:	e3530000 	cmp	r3, #0
     928:	dafffff4 	ble	900 <semDown+0x24>
     92c:	e51b3008 	ldr	r3, [fp, #-8]
     930:	e5933000 	ldr	r3, [r3]
     934:	e2432001 	sub	r2, r3, #1
     938:	e51b3008 	ldr	r3, [fp, #-8]
     93c:	e5832000 	str	r2, [r3]
     940:	e51b3008 	ldr	r3, [fp, #-8]
     944:	e2833004 	add	r3, r3, #4
     948:	e1a00003 	mov	r0, r3
     94c:	ebffff7f 	bl	750 <releaseLock>
     950:	e1a00000 	nop			@ (mov r0, r0)
     954:	e24bd004 	sub	sp, fp, #4
     958:	e8bd8800 	pop	{fp, pc}

0000095c <fork>:
     95c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     960:	e1a04003 	mov	r4, r3
     964:	e1a03002 	mov	r3, r2
     968:	e1a02001 	mov	r2, r1
     96c:	e1a01000 	mov	r1, r0
     970:	e3a00001 	mov	r0, #1
     974:	ef000000 	svc	0x00000000
     978:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     97c:	e12fff1e 	bx	lr

00000980 <exit>:
     980:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     984:	e1a04003 	mov	r4, r3
     988:	e1a03002 	mov	r3, r2
     98c:	e1a02001 	mov	r2, r1
     990:	e1a01000 	mov	r1, r0
     994:	e3a00002 	mov	r0, #2
     998:	ef000000 	svc	0x00000000
     99c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a0:	e12fff1e 	bx	lr

000009a4 <wait>:
     9a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a8:	e1a04003 	mov	r4, r3
     9ac:	e1a03002 	mov	r3, r2
     9b0:	e1a02001 	mov	r2, r1
     9b4:	e1a01000 	mov	r1, r0
     9b8:	e3a00003 	mov	r0, #3
     9bc:	ef000000 	svc	0x00000000
     9c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c4:	e12fff1e 	bx	lr

000009c8 <pipe>:
     9c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9cc:	e1a04003 	mov	r4, r3
     9d0:	e1a03002 	mov	r3, r2
     9d4:	e1a02001 	mov	r2, r1
     9d8:	e1a01000 	mov	r1, r0
     9dc:	e3a00004 	mov	r0, #4
     9e0:	ef000000 	svc	0x00000000
     9e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e8:	e12fff1e 	bx	lr

000009ec <read>:
     9ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f0:	e1a04003 	mov	r4, r3
     9f4:	e1a03002 	mov	r3, r2
     9f8:	e1a02001 	mov	r2, r1
     9fc:	e1a01000 	mov	r1, r0
     a00:	e3a00005 	mov	r0, #5
     a04:	ef000000 	svc	0x00000000
     a08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a0c:	e12fff1e 	bx	lr

00000a10 <write>:
     a10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a14:	e1a04003 	mov	r4, r3
     a18:	e1a03002 	mov	r3, r2
     a1c:	e1a02001 	mov	r2, r1
     a20:	e1a01000 	mov	r1, r0
     a24:	e3a00010 	mov	r0, #16
     a28:	ef000000 	svc	0x00000000
     a2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a30:	e12fff1e 	bx	lr

00000a34 <close>:
     a34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a38:	e1a04003 	mov	r4, r3
     a3c:	e1a03002 	mov	r3, r2
     a40:	e1a02001 	mov	r2, r1
     a44:	e1a01000 	mov	r1, r0
     a48:	e3a00015 	mov	r0, #21
     a4c:	ef000000 	svc	0x00000000
     a50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a54:	e12fff1e 	bx	lr

00000a58 <kill>:
     a58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a5c:	e1a04003 	mov	r4, r3
     a60:	e1a03002 	mov	r3, r2
     a64:	e1a02001 	mov	r2, r1
     a68:	e1a01000 	mov	r1, r0
     a6c:	e3a00006 	mov	r0, #6
     a70:	ef000000 	svc	0x00000000
     a74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a78:	e12fff1e 	bx	lr

00000a7c <exec>:
     a7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a80:	e1a04003 	mov	r4, r3
     a84:	e1a03002 	mov	r3, r2
     a88:	e1a02001 	mov	r2, r1
     a8c:	e1a01000 	mov	r1, r0
     a90:	e3a00007 	mov	r0, #7
     a94:	ef000000 	svc	0x00000000
     a98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a9c:	e12fff1e 	bx	lr

00000aa0 <open>:
     aa0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa4:	e1a04003 	mov	r4, r3
     aa8:	e1a03002 	mov	r3, r2
     aac:	e1a02001 	mov	r2, r1
     ab0:	e1a01000 	mov	r1, r0
     ab4:	e3a0000f 	mov	r0, #15
     ab8:	ef000000 	svc	0x00000000
     abc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac0:	e12fff1e 	bx	lr

00000ac4 <mknod>:
     ac4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac8:	e1a04003 	mov	r4, r3
     acc:	e1a03002 	mov	r3, r2
     ad0:	e1a02001 	mov	r2, r1
     ad4:	e1a01000 	mov	r1, r0
     ad8:	e3a00011 	mov	r0, #17
     adc:	ef000000 	svc	0x00000000
     ae0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae4:	e12fff1e 	bx	lr

00000ae8 <unlink>:
     ae8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aec:	e1a04003 	mov	r4, r3
     af0:	e1a03002 	mov	r3, r2
     af4:	e1a02001 	mov	r2, r1
     af8:	e1a01000 	mov	r1, r0
     afc:	e3a00012 	mov	r0, #18
     b00:	ef000000 	svc	0x00000000
     b04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b08:	e12fff1e 	bx	lr

00000b0c <fstat>:
     b0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b10:	e1a04003 	mov	r4, r3
     b14:	e1a03002 	mov	r3, r2
     b18:	e1a02001 	mov	r2, r1
     b1c:	e1a01000 	mov	r1, r0
     b20:	e3a00008 	mov	r0, #8
     b24:	ef000000 	svc	0x00000000
     b28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b2c:	e12fff1e 	bx	lr

00000b30 <link>:
     b30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b34:	e1a04003 	mov	r4, r3
     b38:	e1a03002 	mov	r3, r2
     b3c:	e1a02001 	mov	r2, r1
     b40:	e1a01000 	mov	r1, r0
     b44:	e3a00013 	mov	r0, #19
     b48:	ef000000 	svc	0x00000000
     b4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b50:	e12fff1e 	bx	lr

00000b54 <mkdir>:
     b54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b58:	e1a04003 	mov	r4, r3
     b5c:	e1a03002 	mov	r3, r2
     b60:	e1a02001 	mov	r2, r1
     b64:	e1a01000 	mov	r1, r0
     b68:	e3a00014 	mov	r0, #20
     b6c:	ef000000 	svc	0x00000000
     b70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b74:	e12fff1e 	bx	lr

00000b78 <chdir>:
     b78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b7c:	e1a04003 	mov	r4, r3
     b80:	e1a03002 	mov	r3, r2
     b84:	e1a02001 	mov	r2, r1
     b88:	e1a01000 	mov	r1, r0
     b8c:	e3a00009 	mov	r0, #9
     b90:	ef000000 	svc	0x00000000
     b94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b98:	e12fff1e 	bx	lr

00000b9c <dup>:
     b9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba0:	e1a04003 	mov	r4, r3
     ba4:	e1a03002 	mov	r3, r2
     ba8:	e1a02001 	mov	r2, r1
     bac:	e1a01000 	mov	r1, r0
     bb0:	e3a0000a 	mov	r0, #10
     bb4:	ef000000 	svc	0x00000000
     bb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bbc:	e12fff1e 	bx	lr

00000bc0 <getpid>:
     bc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc4:	e1a04003 	mov	r4, r3
     bc8:	e1a03002 	mov	r3, r2
     bcc:	e1a02001 	mov	r2, r1
     bd0:	e1a01000 	mov	r1, r0
     bd4:	e3a0000b 	mov	r0, #11
     bd8:	ef000000 	svc	0x00000000
     bdc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be0:	e12fff1e 	bx	lr

00000be4 <sbrk>:
     be4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be8:	e1a04003 	mov	r4, r3
     bec:	e1a03002 	mov	r3, r2
     bf0:	e1a02001 	mov	r2, r1
     bf4:	e1a01000 	mov	r1, r0
     bf8:	e3a0000c 	mov	r0, #12
     bfc:	ef000000 	svc	0x00000000
     c00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c04:	e12fff1e 	bx	lr

00000c08 <sleep>:
     c08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c0c:	e1a04003 	mov	r4, r3
     c10:	e1a03002 	mov	r3, r2
     c14:	e1a02001 	mov	r2, r1
     c18:	e1a01000 	mov	r1, r0
     c1c:	e3a0000d 	mov	r0, #13
     c20:	ef000000 	svc	0x00000000
     c24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c28:	e12fff1e 	bx	lr

00000c2c <uptime>:
     c2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c30:	e1a04003 	mov	r4, r3
     c34:	e1a03002 	mov	r3, r2
     c38:	e1a02001 	mov	r2, r1
     c3c:	e1a01000 	mov	r1, r0
     c40:	e3a0000e 	mov	r0, #14
     c44:	ef000000 	svc	0x00000000
     c48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c4c:	e12fff1e 	bx	lr

00000c50 <getprocs>:
     c50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c54:	e1a04003 	mov	r4, r3
     c58:	e1a03002 	mov	r3, r2
     c5c:	e1a02001 	mov	r2, r1
     c60:	e1a01000 	mov	r1, r0
     c64:	e3a00016 	mov	r0, #22
     c68:	ef000000 	svc	0x00000000
     c6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c70:	e12fff1e 	bx	lr

00000c74 <settickets>:
     c74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c78:	e1a04003 	mov	r4, r3
     c7c:	e1a03002 	mov	r3, r2
     c80:	e1a02001 	mov	r2, r1
     c84:	e1a01000 	mov	r1, r0
     c88:	e3a00017 	mov	r0, #23
     c8c:	ef000000 	svc	0x00000000
     c90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c94:	e12fff1e 	bx	lr

00000c98 <srand>:
     c98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c9c:	e1a04003 	mov	r4, r3
     ca0:	e1a03002 	mov	r3, r2
     ca4:	e1a02001 	mov	r2, r1
     ca8:	e1a01000 	mov	r1, r0
     cac:	e3a00018 	mov	r0, #24
     cb0:	ef000000 	svc	0x00000000
     cb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb8:	e12fff1e 	bx	lr

00000cbc <getpinfo>:
     cbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc0:	e1a04003 	mov	r4, r3
     cc4:	e1a03002 	mov	r3, r2
     cc8:	e1a02001 	mov	r2, r1
     ccc:	e1a01000 	mov	r1, r0
     cd0:	e3a00019 	mov	r0, #25
     cd4:	ef000000 	svc	0x00000000
     cd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cdc:	e12fff1e 	bx	lr

00000ce0 <dumppagetable>:
     ce0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce4:	e1a04003 	mov	r4, r3
     ce8:	e1a03002 	mov	r3, r2
     cec:	e1a02001 	mov	r2, r1
     cf0:	e1a01000 	mov	r1, r0
     cf4:	e3a0001a 	mov	r0, #26
     cf8:	ef000000 	svc	0x00000000
     cfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d00:	e12fff1e 	bx	lr

00000d04 <thread_create>:
     d04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d08:	e1a04003 	mov	r4, r3
     d0c:	e1a03002 	mov	r3, r2
     d10:	e1a02001 	mov	r2, r1
     d14:	e1a01000 	mov	r1, r0
     d18:	e3a0001b 	mov	r0, #27
     d1c:	ef000000 	svc	0x00000000
     d20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d24:	e12fff1e 	bx	lr

00000d28 <thread_exit>:
     d28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d2c:	e1a04003 	mov	r4, r3
     d30:	e1a03002 	mov	r3, r2
     d34:	e1a02001 	mov	r2, r1
     d38:	e1a01000 	mov	r1, r0
     d3c:	e3a0001c 	mov	r0, #28
     d40:	ef000000 	svc	0x00000000
     d44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d48:	e12fff1e 	bx	lr

00000d4c <thread_join>:
     d4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d50:	e1a04003 	mov	r4, r3
     d54:	e1a03002 	mov	r3, r2
     d58:	e1a02001 	mov	r2, r1
     d5c:	e1a01000 	mov	r1, r0
     d60:	e3a0001d 	mov	r0, #29
     d64:	ef000000 	svc	0x00000000
     d68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d6c:	e12fff1e 	bx	lr

00000d70 <waitpid>:
     d70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d74:	e1a04003 	mov	r4, r3
     d78:	e1a03002 	mov	r3, r2
     d7c:	e1a02001 	mov	r2, r1
     d80:	e1a01000 	mov	r1, r0
     d84:	e3a0001e 	mov	r0, #30
     d88:	ef000000 	svc	0x00000000
     d8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d90:	e12fff1e 	bx	lr

00000d94 <barrier_init>:
     d94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d98:	e1a04003 	mov	r4, r3
     d9c:	e1a03002 	mov	r3, r2
     da0:	e1a02001 	mov	r2, r1
     da4:	e1a01000 	mov	r1, r0
     da8:	e3a0001f 	mov	r0, #31
     dac:	ef000000 	svc	0x00000000
     db0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     db4:	e12fff1e 	bx	lr

00000db8 <barrier_check>:
     db8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dbc:	e1a04003 	mov	r4, r3
     dc0:	e1a03002 	mov	r3, r2
     dc4:	e1a02001 	mov	r2, r1
     dc8:	e1a01000 	mov	r1, r0
     dcc:	e3a00020 	mov	r0, #32
     dd0:	ef000000 	svc	0x00000000
     dd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd8:	e12fff1e 	bx	lr

00000ddc <sleepChan>:
     ddc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     de0:	e1a04003 	mov	r4, r3
     de4:	e1a03002 	mov	r3, r2
     de8:	e1a02001 	mov	r2, r1
     dec:	e1a01000 	mov	r1, r0
     df0:	e3a00024 	mov	r0, #36	@ 0x24
     df4:	ef000000 	svc	0x00000000
     df8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dfc:	e12fff1e 	bx	lr

00000e00 <getChannel>:
     e00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e04:	e1a04003 	mov	r4, r3
     e08:	e1a03002 	mov	r3, r2
     e0c:	e1a02001 	mov	r2, r1
     e10:	e1a01000 	mov	r1, r0
     e14:	e3a00025 	mov	r0, #37	@ 0x25
     e18:	ef000000 	svc	0x00000000
     e1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e20:	e12fff1e 	bx	lr

00000e24 <sigChan>:
     e24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e28:	e1a04003 	mov	r4, r3
     e2c:	e1a03002 	mov	r3, r2
     e30:	e1a02001 	mov	r2, r1
     e34:	e1a01000 	mov	r1, r0
     e38:	e3a00026 	mov	r0, #38	@ 0x26
     e3c:	ef000000 	svc	0x00000000
     e40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e44:	e12fff1e 	bx	lr

00000e48 <sigOneChan>:
     e48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e4c:	e1a04003 	mov	r4, r3
     e50:	e1a03002 	mov	r3, r2
     e54:	e1a02001 	mov	r2, r1
     e58:	e1a01000 	mov	r1, r0
     e5c:	e3a00027 	mov	r0, #39	@ 0x27
     e60:	ef000000 	svc	0x00000000
     e64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e68:	e12fff1e 	bx	lr

00000e6c <putc>:
     e6c:	e92d4800 	push	{fp, lr}
     e70:	e28db004 	add	fp, sp, #4
     e74:	e24dd008 	sub	sp, sp, #8
     e78:	e50b0008 	str	r0, [fp, #-8]
     e7c:	e1a03001 	mov	r3, r1
     e80:	e54b3009 	strb	r3, [fp, #-9]
     e84:	e24b3009 	sub	r3, fp, #9
     e88:	e3a02001 	mov	r2, #1
     e8c:	e1a01003 	mov	r1, r3
     e90:	e51b0008 	ldr	r0, [fp, #-8]
     e94:	ebfffedd 	bl	a10 <write>
     e98:	e1a00000 	nop			@ (mov r0, r0)
     e9c:	e24bd004 	sub	sp, fp, #4
     ea0:	e8bd8800 	pop	{fp, pc}

00000ea4 <printint>:
     ea4:	e92d4800 	push	{fp, lr}
     ea8:	e28db004 	add	fp, sp, #4
     eac:	e24dd030 	sub	sp, sp, #48	@ 0x30
     eb0:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     eb4:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     eb8:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     ebc:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     ec0:	e3a03000 	mov	r3, #0
     ec4:	e50b300c 	str	r3, [fp, #-12]
     ec8:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     ecc:	e3530000 	cmp	r3, #0
     ed0:	0a000008 	beq	ef8 <printint+0x54>
     ed4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ed8:	e3530000 	cmp	r3, #0
     edc:	aa000005 	bge	ef8 <printint+0x54>
     ee0:	e3a03001 	mov	r3, #1
     ee4:	e50b300c 	str	r3, [fp, #-12]
     ee8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     eec:	e2633000 	rsb	r3, r3, #0
     ef0:	e50b3010 	str	r3, [fp, #-16]
     ef4:	ea000001 	b	f00 <printint+0x5c>
     ef8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     efc:	e50b3010 	str	r3, [fp, #-16]
     f00:	e3a03000 	mov	r3, #0
     f04:	e50b3008 	str	r3, [fp, #-8]
     f08:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     f0c:	e51b3010 	ldr	r3, [fp, #-16]
     f10:	e1a01002 	mov	r1, r2
     f14:	e1a00003 	mov	r0, r3
     f18:	eb0001d5 	bl	1674 <__aeabi_uidivmod>
     f1c:	e1a03001 	mov	r3, r1
     f20:	e1a01003 	mov	r1, r3
     f24:	e51b3008 	ldr	r3, [fp, #-8]
     f28:	e2832001 	add	r2, r3, #1
     f2c:	e50b2008 	str	r2, [fp, #-8]
     f30:	e59f20a0 	ldr	r2, [pc, #160]	@ fd8 <printint+0x134>
     f34:	e7d22001 	ldrb	r2, [r2, r1]
     f38:	e2433004 	sub	r3, r3, #4
     f3c:	e083300b 	add	r3, r3, fp
     f40:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f44:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     f48:	e1a01003 	mov	r1, r3
     f4c:	e51b0010 	ldr	r0, [fp, #-16]
     f50:	eb00018a 	bl	1580 <__udivsi3>
     f54:	e1a03000 	mov	r3, r0
     f58:	e50b3010 	str	r3, [fp, #-16]
     f5c:	e51b3010 	ldr	r3, [fp, #-16]
     f60:	e3530000 	cmp	r3, #0
     f64:	1affffe7 	bne	f08 <printint+0x64>
     f68:	e51b300c 	ldr	r3, [fp, #-12]
     f6c:	e3530000 	cmp	r3, #0
     f70:	0a00000e 	beq	fb0 <printint+0x10c>
     f74:	e51b3008 	ldr	r3, [fp, #-8]
     f78:	e2832001 	add	r2, r3, #1
     f7c:	e50b2008 	str	r2, [fp, #-8]
     f80:	e2433004 	sub	r3, r3, #4
     f84:	e083300b 	add	r3, r3, fp
     f88:	e3a0202d 	mov	r2, #45	@ 0x2d
     f8c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f90:	ea000006 	b	fb0 <printint+0x10c>
     f94:	e24b2020 	sub	r2, fp, #32
     f98:	e51b3008 	ldr	r3, [fp, #-8]
     f9c:	e0823003 	add	r3, r2, r3
     fa0:	e5d33000 	ldrb	r3, [r3]
     fa4:	e1a01003 	mov	r1, r3
     fa8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     fac:	ebffffae 	bl	e6c <putc>
     fb0:	e51b3008 	ldr	r3, [fp, #-8]
     fb4:	e2433001 	sub	r3, r3, #1
     fb8:	e50b3008 	str	r3, [fp, #-8]
     fbc:	e51b3008 	ldr	r3, [fp, #-8]
     fc0:	e3530000 	cmp	r3, #0
     fc4:	aafffff2 	bge	f94 <printint+0xf0>
     fc8:	e1a00000 	nop			@ (mov r0, r0)
     fcc:	e1a00000 	nop			@ (mov r0, r0)
     fd0:	e24bd004 	sub	sp, fp, #4
     fd4:	e8bd8800 	pop	{fp, pc}
     fd8:	000016f4 	.word	0x000016f4

00000fdc <printf>:
     fdc:	e92d000e 	push	{r1, r2, r3}
     fe0:	e92d4800 	push	{fp, lr}
     fe4:	e28db004 	add	fp, sp, #4
     fe8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     fec:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     ff0:	e3a03000 	mov	r3, #0
     ff4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ff8:	e28b3008 	add	r3, fp, #8
     ffc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1000:	e3a03000 	mov	r3, #0
    1004:	e50b3010 	str	r3, [fp, #-16]
    1008:	ea000074 	b	11e0 <printf+0x204>
    100c:	e59b2004 	ldr	r2, [fp, #4]
    1010:	e51b3010 	ldr	r3, [fp, #-16]
    1014:	e0823003 	add	r3, r2, r3
    1018:	e5d33000 	ldrb	r3, [r3]
    101c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1020:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1024:	e3530000 	cmp	r3, #0
    1028:	1a00000b 	bne	105c <printf+0x80>
    102c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1030:	e3530025 	cmp	r3, #37	@ 0x25
    1034:	1a000002 	bne	1044 <printf+0x68>
    1038:	e3a03025 	mov	r3, #37	@ 0x25
    103c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1040:	ea000063 	b	11d4 <printf+0x1f8>
    1044:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1048:	e6ef3073 	uxtb	r3, r3
    104c:	e1a01003 	mov	r1, r3
    1050:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1054:	ebffff84 	bl	e6c <putc>
    1058:	ea00005d 	b	11d4 <printf+0x1f8>
    105c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1060:	e3530025 	cmp	r3, #37	@ 0x25
    1064:	1a00005a 	bne	11d4 <printf+0x1f8>
    1068:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    106c:	e3530064 	cmp	r3, #100	@ 0x64
    1070:	1a00000a 	bne	10a0 <printf+0xc4>
    1074:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1078:	e5933000 	ldr	r3, [r3]
    107c:	e1a01003 	mov	r1, r3
    1080:	e3a03001 	mov	r3, #1
    1084:	e3a0200a 	mov	r2, #10
    1088:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    108c:	ebffff84 	bl	ea4 <printint>
    1090:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1094:	e2833004 	add	r3, r3, #4
    1098:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    109c:	ea00004a 	b	11cc <printf+0x1f0>
    10a0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10a4:	e3530078 	cmp	r3, #120	@ 0x78
    10a8:	0a000002 	beq	10b8 <printf+0xdc>
    10ac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10b0:	e3530070 	cmp	r3, #112	@ 0x70
    10b4:	1a00000a 	bne	10e4 <printf+0x108>
    10b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10bc:	e5933000 	ldr	r3, [r3]
    10c0:	e1a01003 	mov	r1, r3
    10c4:	e3a03000 	mov	r3, #0
    10c8:	e3a02010 	mov	r2, #16
    10cc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10d0:	ebffff73 	bl	ea4 <printint>
    10d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10d8:	e2833004 	add	r3, r3, #4
    10dc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10e0:	ea000039 	b	11cc <printf+0x1f0>
    10e4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10e8:	e3530073 	cmp	r3, #115	@ 0x73
    10ec:	1a000018 	bne	1154 <printf+0x178>
    10f0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10f4:	e5933000 	ldr	r3, [r3]
    10f8:	e50b300c 	str	r3, [fp, #-12]
    10fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1100:	e2833004 	add	r3, r3, #4
    1104:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1108:	e51b300c 	ldr	r3, [fp, #-12]
    110c:	e3530000 	cmp	r3, #0
    1110:	1a00000a 	bne	1140 <printf+0x164>
    1114:	e59f30f4 	ldr	r3, [pc, #244]	@ 1210 <printf+0x234>
    1118:	e50b300c 	str	r3, [fp, #-12]
    111c:	ea000007 	b	1140 <printf+0x164>
    1120:	e51b300c 	ldr	r3, [fp, #-12]
    1124:	e5d33000 	ldrb	r3, [r3]
    1128:	e1a01003 	mov	r1, r3
    112c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1130:	ebffff4d 	bl	e6c <putc>
    1134:	e51b300c 	ldr	r3, [fp, #-12]
    1138:	e2833001 	add	r3, r3, #1
    113c:	e50b300c 	str	r3, [fp, #-12]
    1140:	e51b300c 	ldr	r3, [fp, #-12]
    1144:	e5d33000 	ldrb	r3, [r3]
    1148:	e3530000 	cmp	r3, #0
    114c:	1afffff3 	bne	1120 <printf+0x144>
    1150:	ea00001d 	b	11cc <printf+0x1f0>
    1154:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1158:	e3530063 	cmp	r3, #99	@ 0x63
    115c:	1a000009 	bne	1188 <printf+0x1ac>
    1160:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1164:	e5933000 	ldr	r3, [r3]
    1168:	e6ef3073 	uxtb	r3, r3
    116c:	e1a01003 	mov	r1, r3
    1170:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1174:	ebffff3c 	bl	e6c <putc>
    1178:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    117c:	e2833004 	add	r3, r3, #4
    1180:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1184:	ea000010 	b	11cc <printf+0x1f0>
    1188:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    118c:	e3530025 	cmp	r3, #37	@ 0x25
    1190:	1a000005 	bne	11ac <printf+0x1d0>
    1194:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1198:	e6ef3073 	uxtb	r3, r3
    119c:	e1a01003 	mov	r1, r3
    11a0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11a4:	ebffff30 	bl	e6c <putc>
    11a8:	ea000007 	b	11cc <printf+0x1f0>
    11ac:	e3a01025 	mov	r1, #37	@ 0x25
    11b0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11b4:	ebffff2c 	bl	e6c <putc>
    11b8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11bc:	e6ef3073 	uxtb	r3, r3
    11c0:	e1a01003 	mov	r1, r3
    11c4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11c8:	ebffff27 	bl	e6c <putc>
    11cc:	e3a03000 	mov	r3, #0
    11d0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    11d4:	e51b3010 	ldr	r3, [fp, #-16]
    11d8:	e2833001 	add	r3, r3, #1
    11dc:	e50b3010 	str	r3, [fp, #-16]
    11e0:	e59b2004 	ldr	r2, [fp, #4]
    11e4:	e51b3010 	ldr	r3, [fp, #-16]
    11e8:	e0823003 	add	r3, r2, r3
    11ec:	e5d33000 	ldrb	r3, [r3]
    11f0:	e3530000 	cmp	r3, #0
    11f4:	1affff84 	bne	100c <printf+0x30>
    11f8:	e1a00000 	nop			@ (mov r0, r0)
    11fc:	e1a00000 	nop			@ (mov r0, r0)
    1200:	e24bd004 	sub	sp, fp, #4
    1204:	e8bd4800 	pop	{fp, lr}
    1208:	e28dd00c 	add	sp, sp, #12
    120c:	e12fff1e 	bx	lr
    1210:	000016ec 	.word	0x000016ec

00001214 <free>:
    1214:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1218:	e28db000 	add	fp, sp, #0
    121c:	e24dd014 	sub	sp, sp, #20
    1220:	e50b0010 	str	r0, [fp, #-16]
    1224:	e51b3010 	ldr	r3, [fp, #-16]
    1228:	e2433008 	sub	r3, r3, #8
    122c:	e50b300c 	str	r3, [fp, #-12]
    1230:	e59f3154 	ldr	r3, [pc, #340]	@ 138c <free+0x178>
    1234:	e5933000 	ldr	r3, [r3]
    1238:	e50b3008 	str	r3, [fp, #-8]
    123c:	ea000010 	b	1284 <free+0x70>
    1240:	e51b3008 	ldr	r3, [fp, #-8]
    1244:	e5933000 	ldr	r3, [r3]
    1248:	e51b2008 	ldr	r2, [fp, #-8]
    124c:	e1520003 	cmp	r2, r3
    1250:	3a000008 	bcc	1278 <free+0x64>
    1254:	e51b200c 	ldr	r2, [fp, #-12]
    1258:	e51b3008 	ldr	r3, [fp, #-8]
    125c:	e1520003 	cmp	r2, r3
    1260:	8a000010 	bhi	12a8 <free+0x94>
    1264:	e51b3008 	ldr	r3, [fp, #-8]
    1268:	e5933000 	ldr	r3, [r3]
    126c:	e51b200c 	ldr	r2, [fp, #-12]
    1270:	e1520003 	cmp	r2, r3
    1274:	3a00000b 	bcc	12a8 <free+0x94>
    1278:	e51b3008 	ldr	r3, [fp, #-8]
    127c:	e5933000 	ldr	r3, [r3]
    1280:	e50b3008 	str	r3, [fp, #-8]
    1284:	e51b200c 	ldr	r2, [fp, #-12]
    1288:	e51b3008 	ldr	r3, [fp, #-8]
    128c:	e1520003 	cmp	r2, r3
    1290:	9affffea 	bls	1240 <free+0x2c>
    1294:	e51b3008 	ldr	r3, [fp, #-8]
    1298:	e5933000 	ldr	r3, [r3]
    129c:	e51b200c 	ldr	r2, [fp, #-12]
    12a0:	e1520003 	cmp	r2, r3
    12a4:	2affffe5 	bcs	1240 <free+0x2c>
    12a8:	e51b300c 	ldr	r3, [fp, #-12]
    12ac:	e5933004 	ldr	r3, [r3, #4]
    12b0:	e1a03183 	lsl	r3, r3, #3
    12b4:	e51b200c 	ldr	r2, [fp, #-12]
    12b8:	e0822003 	add	r2, r2, r3
    12bc:	e51b3008 	ldr	r3, [fp, #-8]
    12c0:	e5933000 	ldr	r3, [r3]
    12c4:	e1520003 	cmp	r2, r3
    12c8:	1a00000d 	bne	1304 <free+0xf0>
    12cc:	e51b300c 	ldr	r3, [fp, #-12]
    12d0:	e5932004 	ldr	r2, [r3, #4]
    12d4:	e51b3008 	ldr	r3, [fp, #-8]
    12d8:	e5933000 	ldr	r3, [r3]
    12dc:	e5933004 	ldr	r3, [r3, #4]
    12e0:	e0822003 	add	r2, r2, r3
    12e4:	e51b300c 	ldr	r3, [fp, #-12]
    12e8:	e5832004 	str	r2, [r3, #4]
    12ec:	e51b3008 	ldr	r3, [fp, #-8]
    12f0:	e5933000 	ldr	r3, [r3]
    12f4:	e5932000 	ldr	r2, [r3]
    12f8:	e51b300c 	ldr	r3, [fp, #-12]
    12fc:	e5832000 	str	r2, [r3]
    1300:	ea000003 	b	1314 <free+0x100>
    1304:	e51b3008 	ldr	r3, [fp, #-8]
    1308:	e5932000 	ldr	r2, [r3]
    130c:	e51b300c 	ldr	r3, [fp, #-12]
    1310:	e5832000 	str	r2, [r3]
    1314:	e51b3008 	ldr	r3, [fp, #-8]
    1318:	e5933004 	ldr	r3, [r3, #4]
    131c:	e1a03183 	lsl	r3, r3, #3
    1320:	e51b2008 	ldr	r2, [fp, #-8]
    1324:	e0823003 	add	r3, r2, r3
    1328:	e51b200c 	ldr	r2, [fp, #-12]
    132c:	e1520003 	cmp	r2, r3
    1330:	1a00000b 	bne	1364 <free+0x150>
    1334:	e51b3008 	ldr	r3, [fp, #-8]
    1338:	e5932004 	ldr	r2, [r3, #4]
    133c:	e51b300c 	ldr	r3, [fp, #-12]
    1340:	e5933004 	ldr	r3, [r3, #4]
    1344:	e0822003 	add	r2, r2, r3
    1348:	e51b3008 	ldr	r3, [fp, #-8]
    134c:	e5832004 	str	r2, [r3, #4]
    1350:	e51b300c 	ldr	r3, [fp, #-12]
    1354:	e5932000 	ldr	r2, [r3]
    1358:	e51b3008 	ldr	r3, [fp, #-8]
    135c:	e5832000 	str	r2, [r3]
    1360:	ea000002 	b	1370 <free+0x15c>
    1364:	e51b3008 	ldr	r3, [fp, #-8]
    1368:	e51b200c 	ldr	r2, [fp, #-12]
    136c:	e5832000 	str	r2, [r3]
    1370:	e59f2014 	ldr	r2, [pc, #20]	@ 138c <free+0x178>
    1374:	e51b3008 	ldr	r3, [fp, #-8]
    1378:	e5823000 	str	r3, [r2]
    137c:	e1a00000 	nop			@ (mov r0, r0)
    1380:	e28bd000 	add	sp, fp, #0
    1384:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1388:	e12fff1e 	bx	lr
    138c:	00001710 	.word	0x00001710

00001390 <morecore>:
    1390:	e92d4800 	push	{fp, lr}
    1394:	e28db004 	add	fp, sp, #4
    1398:	e24dd010 	sub	sp, sp, #16
    139c:	e50b0010 	str	r0, [fp, #-16]
    13a0:	e51b3010 	ldr	r3, [fp, #-16]
    13a4:	e3530a01 	cmp	r3, #4096	@ 0x1000
    13a8:	2a000001 	bcs	13b4 <morecore+0x24>
    13ac:	e3a03a01 	mov	r3, #4096	@ 0x1000
    13b0:	e50b3010 	str	r3, [fp, #-16]
    13b4:	e51b3010 	ldr	r3, [fp, #-16]
    13b8:	e1a03183 	lsl	r3, r3, #3
    13bc:	e1a00003 	mov	r0, r3
    13c0:	ebfffe07 	bl	be4 <sbrk>
    13c4:	e50b0008 	str	r0, [fp, #-8]
    13c8:	e51b3008 	ldr	r3, [fp, #-8]
    13cc:	e3730001 	cmn	r3, #1
    13d0:	1a000001 	bne	13dc <morecore+0x4c>
    13d4:	e3a03000 	mov	r3, #0
    13d8:	ea00000a 	b	1408 <morecore+0x78>
    13dc:	e51b3008 	ldr	r3, [fp, #-8]
    13e0:	e50b300c 	str	r3, [fp, #-12]
    13e4:	e51b300c 	ldr	r3, [fp, #-12]
    13e8:	e51b2010 	ldr	r2, [fp, #-16]
    13ec:	e5832004 	str	r2, [r3, #4]
    13f0:	e51b300c 	ldr	r3, [fp, #-12]
    13f4:	e2833008 	add	r3, r3, #8
    13f8:	e1a00003 	mov	r0, r3
    13fc:	ebffff84 	bl	1214 <free>
    1400:	e59f300c 	ldr	r3, [pc, #12]	@ 1414 <morecore+0x84>
    1404:	e5933000 	ldr	r3, [r3]
    1408:	e1a00003 	mov	r0, r3
    140c:	e24bd004 	sub	sp, fp, #4
    1410:	e8bd8800 	pop	{fp, pc}
    1414:	00001710 	.word	0x00001710

00001418 <malloc>:
    1418:	e92d4800 	push	{fp, lr}
    141c:	e28db004 	add	fp, sp, #4
    1420:	e24dd018 	sub	sp, sp, #24
    1424:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1428:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    142c:	e2833007 	add	r3, r3, #7
    1430:	e1a031a3 	lsr	r3, r3, #3
    1434:	e2833001 	add	r3, r3, #1
    1438:	e50b3010 	str	r3, [fp, #-16]
    143c:	e59f3134 	ldr	r3, [pc, #308]	@ 1578 <malloc+0x160>
    1440:	e5933000 	ldr	r3, [r3]
    1444:	e50b300c 	str	r3, [fp, #-12]
    1448:	e51b300c 	ldr	r3, [fp, #-12]
    144c:	e3530000 	cmp	r3, #0
    1450:	1a00000b 	bne	1484 <malloc+0x6c>
    1454:	e59f3120 	ldr	r3, [pc, #288]	@ 157c <malloc+0x164>
    1458:	e50b300c 	str	r3, [fp, #-12]
    145c:	e59f2114 	ldr	r2, [pc, #276]	@ 1578 <malloc+0x160>
    1460:	e51b300c 	ldr	r3, [fp, #-12]
    1464:	e5823000 	str	r3, [r2]
    1468:	e59f3108 	ldr	r3, [pc, #264]	@ 1578 <malloc+0x160>
    146c:	e5933000 	ldr	r3, [r3]
    1470:	e59f2104 	ldr	r2, [pc, #260]	@ 157c <malloc+0x164>
    1474:	e5823000 	str	r3, [r2]
    1478:	e59f30fc 	ldr	r3, [pc, #252]	@ 157c <malloc+0x164>
    147c:	e3a02000 	mov	r2, #0
    1480:	e5832004 	str	r2, [r3, #4]
    1484:	e51b300c 	ldr	r3, [fp, #-12]
    1488:	e5933000 	ldr	r3, [r3]
    148c:	e50b3008 	str	r3, [fp, #-8]
    1490:	e51b3008 	ldr	r3, [fp, #-8]
    1494:	e5933004 	ldr	r3, [r3, #4]
    1498:	e51b2010 	ldr	r2, [fp, #-16]
    149c:	e1520003 	cmp	r2, r3
    14a0:	8a00001e 	bhi	1520 <malloc+0x108>
    14a4:	e51b3008 	ldr	r3, [fp, #-8]
    14a8:	e5933004 	ldr	r3, [r3, #4]
    14ac:	e51b2010 	ldr	r2, [fp, #-16]
    14b0:	e1520003 	cmp	r2, r3
    14b4:	1a000004 	bne	14cc <malloc+0xb4>
    14b8:	e51b3008 	ldr	r3, [fp, #-8]
    14bc:	e5932000 	ldr	r2, [r3]
    14c0:	e51b300c 	ldr	r3, [fp, #-12]
    14c4:	e5832000 	str	r2, [r3]
    14c8:	ea00000e 	b	1508 <malloc+0xf0>
    14cc:	e51b3008 	ldr	r3, [fp, #-8]
    14d0:	e5932004 	ldr	r2, [r3, #4]
    14d4:	e51b3010 	ldr	r3, [fp, #-16]
    14d8:	e0422003 	sub	r2, r2, r3
    14dc:	e51b3008 	ldr	r3, [fp, #-8]
    14e0:	e5832004 	str	r2, [r3, #4]
    14e4:	e51b3008 	ldr	r3, [fp, #-8]
    14e8:	e5933004 	ldr	r3, [r3, #4]
    14ec:	e1a03183 	lsl	r3, r3, #3
    14f0:	e51b2008 	ldr	r2, [fp, #-8]
    14f4:	e0823003 	add	r3, r2, r3
    14f8:	e50b3008 	str	r3, [fp, #-8]
    14fc:	e51b3008 	ldr	r3, [fp, #-8]
    1500:	e51b2010 	ldr	r2, [fp, #-16]
    1504:	e5832004 	str	r2, [r3, #4]
    1508:	e59f2068 	ldr	r2, [pc, #104]	@ 1578 <malloc+0x160>
    150c:	e51b300c 	ldr	r3, [fp, #-12]
    1510:	e5823000 	str	r3, [r2]
    1514:	e51b3008 	ldr	r3, [fp, #-8]
    1518:	e2833008 	add	r3, r3, #8
    151c:	ea000012 	b	156c <malloc+0x154>
    1520:	e59f3050 	ldr	r3, [pc, #80]	@ 1578 <malloc+0x160>
    1524:	e5933000 	ldr	r3, [r3]
    1528:	e51b2008 	ldr	r2, [fp, #-8]
    152c:	e1520003 	cmp	r2, r3
    1530:	1a000007 	bne	1554 <malloc+0x13c>
    1534:	e51b0010 	ldr	r0, [fp, #-16]
    1538:	ebffff94 	bl	1390 <morecore>
    153c:	e50b0008 	str	r0, [fp, #-8]
    1540:	e51b3008 	ldr	r3, [fp, #-8]
    1544:	e3530000 	cmp	r3, #0
    1548:	1a000001 	bne	1554 <malloc+0x13c>
    154c:	e3a03000 	mov	r3, #0
    1550:	ea000005 	b	156c <malloc+0x154>
    1554:	e51b3008 	ldr	r3, [fp, #-8]
    1558:	e50b300c 	str	r3, [fp, #-12]
    155c:	e51b3008 	ldr	r3, [fp, #-8]
    1560:	e5933000 	ldr	r3, [r3]
    1564:	e50b3008 	str	r3, [fp, #-8]
    1568:	eaffffc8 	b	1490 <malloc+0x78>
    156c:	e1a00003 	mov	r0, r3
    1570:	e24bd004 	sub	sp, fp, #4
    1574:	e8bd8800 	pop	{fp, pc}
    1578:	00001710 	.word	0x00001710
    157c:	00001708 	.word	0x00001708

00001580 <__udivsi3>:
    1580:	e2512001 	subs	r2, r1, #1
    1584:	012fff1e 	bxeq	lr
    1588:	3a000036 	bcc	1668 <__udivsi3+0xe8>
    158c:	e1500001 	cmp	r0, r1
    1590:	9a000022 	bls	1620 <__udivsi3+0xa0>
    1594:	e1110002 	tst	r1, r2
    1598:	0a000023 	beq	162c <__udivsi3+0xac>
    159c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    15a0:	01a01181 	lsleq	r1, r1, #3
    15a4:	03a03008 	moveq	r3, #8
    15a8:	13a03001 	movne	r3, #1
    15ac:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    15b0:	31510000 	cmpcc	r1, r0
    15b4:	31a01201 	lslcc	r1, r1, #4
    15b8:	31a03203 	lslcc	r3, r3, #4
    15bc:	3afffffa 	bcc	15ac <__udivsi3+0x2c>
    15c0:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    15c4:	31510000 	cmpcc	r1, r0
    15c8:	31a01081 	lslcc	r1, r1, #1
    15cc:	31a03083 	lslcc	r3, r3, #1
    15d0:	3afffffa 	bcc	15c0 <__udivsi3+0x40>
    15d4:	e3a02000 	mov	r2, #0
    15d8:	e1500001 	cmp	r0, r1
    15dc:	20400001 	subcs	r0, r0, r1
    15e0:	21822003 	orrcs	r2, r2, r3
    15e4:	e15000a1 	cmp	r0, r1, lsr #1
    15e8:	204000a1 	subcs	r0, r0, r1, lsr #1
    15ec:	218220a3 	orrcs	r2, r2, r3, lsr #1
    15f0:	e1500121 	cmp	r0, r1, lsr #2
    15f4:	20400121 	subcs	r0, r0, r1, lsr #2
    15f8:	21822123 	orrcs	r2, r2, r3, lsr #2
    15fc:	e15001a1 	cmp	r0, r1, lsr #3
    1600:	204001a1 	subcs	r0, r0, r1, lsr #3
    1604:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1608:	e3500000 	cmp	r0, #0
    160c:	11b03223 	lsrsne	r3, r3, #4
    1610:	11a01221 	lsrne	r1, r1, #4
    1614:	1affffef 	bne	15d8 <__udivsi3+0x58>
    1618:	e1a00002 	mov	r0, r2
    161c:	e12fff1e 	bx	lr
    1620:	03a00001 	moveq	r0, #1
    1624:	13a00000 	movne	r0, #0
    1628:	e12fff1e 	bx	lr
    162c:	e3510801 	cmp	r1, #65536	@ 0x10000
    1630:	21a01821 	lsrcs	r1, r1, #16
    1634:	23a02010 	movcs	r2, #16
    1638:	33a02000 	movcc	r2, #0
    163c:	e3510c01 	cmp	r1, #256	@ 0x100
    1640:	21a01421 	lsrcs	r1, r1, #8
    1644:	22822008 	addcs	r2, r2, #8
    1648:	e3510010 	cmp	r1, #16
    164c:	21a01221 	lsrcs	r1, r1, #4
    1650:	22822004 	addcs	r2, r2, #4
    1654:	e3510004 	cmp	r1, #4
    1658:	82822003 	addhi	r2, r2, #3
    165c:	908220a1 	addls	r2, r2, r1, lsr #1
    1660:	e1a00230 	lsr	r0, r0, r2
    1664:	e12fff1e 	bx	lr
    1668:	e3500000 	cmp	r0, #0
    166c:	13e00000 	mvnne	r0, #0
    1670:	ea000007 	b	1694 <__aeabi_idiv0>

00001674 <__aeabi_uidivmod>:
    1674:	e3510000 	cmp	r1, #0
    1678:	0afffffa 	beq	1668 <__udivsi3+0xe8>
    167c:	e92d4003 	push	{r0, r1, lr}
    1680:	ebffffbe 	bl	1580 <__udivsi3>
    1684:	e8bd4006 	pop	{r1, r2, lr}
    1688:	e0030092 	mul	r3, r2, r0
    168c:	e0411003 	sub	r1, r1, r3
    1690:	e12fff1e 	bx	lr

00001694 <__aeabi_idiv0>:
    1694:	e12fff1e 	bx	lr
