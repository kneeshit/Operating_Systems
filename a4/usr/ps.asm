
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
      2c:	eb000340 	bl	d34 <getprocs>
      30:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
      34:	e59f1194 	ldr	r1, [pc, #404]	@ 1d0 <main+0x1d0>
      38:	e3a00001 	mov	r0, #1
      3c:	eb00041f 	bl	10c0 <printf>
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
     1ac:	eb0003c3 	bl	10c0 <printf>
     1b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     1b4:	e2833001 	add	r3, r3, #1
     1b8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     1bc:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     1c0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1c4:	e1520003 	cmp	r2, r3
     1c8:	baffff9f 	blt	4c <main+0x4c>
     1cc:	eb000224 	bl	a64 <exit>
     1d0:	0000177c 	.word	0x0000177c
     1d4:	000017b4 	.word	0x000017b4

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
     4cc:	eb00017f 	bl	ad0 <read>
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
     574:	eb000182 	bl	b84 <open>
     578:	e50b0008 	str	r0, [fp, #-8]
     57c:	e51b3008 	ldr	r3, [fp, #-8]
     580:	e3530000 	cmp	r3, #0
     584:	aa000001 	bge	590 <stat+0x38>
     588:	e3e03000 	mvn	r3, #0
     58c:	ea000006 	b	5ac <stat+0x54>
     590:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     594:	e51b0008 	ldr	r0, [fp, #-8]
     598:	eb000194 	bl	bf0 <fstat>
     59c:	e50b000c 	str	r0, [fp, #-12]
     5a0:	e51b0008 	ldr	r0, [fp, #-8]
     5a4:	eb00015b 	bl	b18 <close>
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

00000700 <xchg>:
     700:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     704:	e28db000 	add	fp, sp, #0
     708:	e24dd00c 	sub	sp, sp, #12
     70c:	e50b0008 	str	r0, [fp, #-8]
     710:	e50b100c 	str	r1, [fp, #-12]
     714:	e51b200c 	ldr	r2, [fp, #-12]
     718:	e51b3008 	ldr	r3, [fp, #-8]
     71c:	e1931f9f 	ldrex	r1, [r3]
     720:	e1830f92 	strex	r0, r2, [r3]
     724:	e3500000 	cmp	r0, #0
     728:	1afffffb 	bne	71c <xchg+0x1c>
     72c:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
     730:	e1a03001 	mov	r3, r1
     734:	e1a00003 	mov	r0, r3
     738:	e28bd000 	add	sp, fp, #0
     73c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     740:	e12fff1e 	bx	lr

00000744 <acquireLock>:
     744:	e92d4800 	push	{fp, lr}
     748:	e28db004 	add	fp, sp, #4
     74c:	e24dd008 	sub	sp, sp, #8
     750:	e50b0008 	str	r0, [fp, #-8]
     754:	e51b3008 	ldr	r3, [fp, #-8]
     758:	e5933004 	ldr	r3, [r3, #4]
     75c:	e3530000 	cmp	r3, #0
     760:	0a000008 	beq	788 <acquireLock+0x44>
     764:	e1a00000 	nop			@ (mov r0, r0)
     768:	e51b3008 	ldr	r3, [fp, #-8]
     76c:	e3a01001 	mov	r1, #1
     770:	e1a00003 	mov	r0, r3
     774:	ebffffe1 	bl	700 <xchg>
     778:	e1a03000 	mov	r3, r0
     77c:	e3530000 	cmp	r3, #0
     780:	1afffff8 	bne	768 <acquireLock+0x24>
     784:	ea000000 	b	78c <acquireLock+0x48>
     788:	e1a00000 	nop			@ (mov r0, r0)
     78c:	e24bd004 	sub	sp, fp, #4
     790:	e8bd8800 	pop	{fp, pc}

00000794 <releaseLock>:
     794:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     798:	e28db000 	add	fp, sp, #0
     79c:	e24dd00c 	sub	sp, sp, #12
     7a0:	e50b0008 	str	r0, [fp, #-8]
     7a4:	e51b3008 	ldr	r3, [fp, #-8]
     7a8:	e5933004 	ldr	r3, [r3, #4]
     7ac:	e3530000 	cmp	r3, #0
     7b0:	0a000007 	beq	7d4 <releaseLock+0x40>
     7b4:	e51b3008 	ldr	r3, [fp, #-8]
     7b8:	e5933000 	ldr	r3, [r3]
     7bc:	e3530001 	cmp	r3, #1
     7c0:	1a000005 	bne	7dc <releaseLock+0x48>
     7c4:	e51b3008 	ldr	r3, [fp, #-8]
     7c8:	e3a02000 	mov	r2, #0
     7cc:	e5832000 	str	r2, [r3]
     7d0:	ea000002 	b	7e0 <releaseLock+0x4c>
     7d4:	e1a00000 	nop			@ (mov r0, r0)
     7d8:	ea000000 	b	7e0 <releaseLock+0x4c>
     7dc:	e1a00000 	nop			@ (mov r0, r0)
     7e0:	e28bd000 	add	sp, fp, #0
     7e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7e8:	e12fff1e 	bx	lr

000007ec <initiateCondVar>:
     7ec:	e92d4800 	push	{fp, lr}
     7f0:	e28db004 	add	fp, sp, #4
     7f4:	e24dd008 	sub	sp, sp, #8
     7f8:	e50b0008 	str	r0, [fp, #-8]
     7fc:	eb0001b8 	bl	ee4 <getChannel>
     800:	e1a02000 	mov	r2, r0
     804:	e51b3008 	ldr	r3, [fp, #-8]
     808:	e5832000 	str	r2, [r3]
     80c:	e51b3008 	ldr	r3, [fp, #-8]
     810:	e3a02001 	mov	r2, #1
     814:	e5832004 	str	r2, [r3, #4]
     818:	e1a00000 	nop			@ (mov r0, r0)
     81c:	e24bd004 	sub	sp, fp, #4
     820:	e8bd8800 	pop	{fp, pc}

00000824 <condWait>:
     824:	e92d4800 	push	{fp, lr}
     828:	e28db004 	add	fp, sp, #4
     82c:	e24dd008 	sub	sp, sp, #8
     830:	e50b0008 	str	r0, [fp, #-8]
     834:	e50b100c 	str	r1, [fp, #-12]
     838:	e51b3008 	ldr	r3, [fp, #-8]
     83c:	e5933004 	ldr	r3, [r3, #4]
     840:	e3530000 	cmp	r3, #0
     844:	0a00000c 	beq	87c <condWait+0x58>
     848:	e51b300c 	ldr	r3, [fp, #-12]
     84c:	e5933004 	ldr	r3, [r3, #4]
     850:	e3530000 	cmp	r3, #0
     854:	0a000008 	beq	87c <condWait+0x58>
     858:	e51b000c 	ldr	r0, [fp, #-12]
     85c:	ebffffcc 	bl	794 <releaseLock>
     860:	e51b3008 	ldr	r3, [fp, #-8]
     864:	e5933000 	ldr	r3, [r3]
     868:	e1a00003 	mov	r0, r3
     86c:	eb000193 	bl	ec0 <sleepChan>
     870:	e51b000c 	ldr	r0, [fp, #-12]
     874:	ebffffb2 	bl	744 <acquireLock>
     878:	ea000000 	b	880 <condWait+0x5c>
     87c:	e1a00000 	nop			@ (mov r0, r0)
     880:	e24bd004 	sub	sp, fp, #4
     884:	e8bd8800 	pop	{fp, pc}

00000888 <broadcast>:
     888:	e92d4800 	push	{fp, lr}
     88c:	e28db004 	add	fp, sp, #4
     890:	e24dd008 	sub	sp, sp, #8
     894:	e50b0008 	str	r0, [fp, #-8]
     898:	e51b3008 	ldr	r3, [fp, #-8]
     89c:	e5933004 	ldr	r3, [r3, #4]
     8a0:	e3530000 	cmp	r3, #0
     8a4:	0a000004 	beq	8bc <broadcast+0x34>
     8a8:	e51b3008 	ldr	r3, [fp, #-8]
     8ac:	e5933000 	ldr	r3, [r3]
     8b0:	e1a00003 	mov	r0, r3
     8b4:	eb000193 	bl	f08 <sigChan>
     8b8:	ea000000 	b	8c0 <broadcast+0x38>
     8bc:	e1a00000 	nop			@ (mov r0, r0)
     8c0:	e24bd004 	sub	sp, fp, #4
     8c4:	e8bd8800 	pop	{fp, pc}

000008c8 <signal>:
     8c8:	e92d4800 	push	{fp, lr}
     8cc:	e28db004 	add	fp, sp, #4
     8d0:	e24dd008 	sub	sp, sp, #8
     8d4:	e50b0008 	str	r0, [fp, #-8]
     8d8:	e51b3008 	ldr	r3, [fp, #-8]
     8dc:	e5933004 	ldr	r3, [r3, #4]
     8e0:	e3530000 	cmp	r3, #0
     8e4:	0a000004 	beq	8fc <signal+0x34>
     8e8:	e51b3008 	ldr	r3, [fp, #-8]
     8ec:	e5933000 	ldr	r3, [r3]
     8f0:	e1a00003 	mov	r0, r3
     8f4:	eb00018c 	bl	f2c <sigOneChan>
     8f8:	ea000000 	b	900 <signal+0x38>
     8fc:	e1a00000 	nop			@ (mov r0, r0)
     900:	e24bd004 	sub	sp, fp, #4
     904:	e8bd8800 	pop	{fp, pc}

00000908 <semInit>:
     908:	e92d4800 	push	{fp, lr}
     90c:	e28db004 	add	fp, sp, #4
     910:	e24dd008 	sub	sp, sp, #8
     914:	e50b0008 	str	r0, [fp, #-8]
     918:	e50b100c 	str	r1, [fp, #-12]
     91c:	e51b3008 	ldr	r3, [fp, #-8]
     920:	e51b200c 	ldr	r2, [fp, #-12]
     924:	e5832000 	str	r2, [r3]
     928:	e51b3008 	ldr	r3, [fp, #-8]
     92c:	e2833004 	add	r3, r3, #4
     930:	e1a00003 	mov	r0, r3
     934:	ebffff63 	bl	6c8 <initiateLock>
     938:	e51b3008 	ldr	r3, [fp, #-8]
     93c:	e283300c 	add	r3, r3, #12
     940:	e1a00003 	mov	r0, r3
     944:	ebffffa8 	bl	7ec <initiateCondVar>
     948:	e51b3008 	ldr	r3, [fp, #-8]
     94c:	e3a02001 	mov	r2, #1
     950:	e5832014 	str	r2, [r3, #20]
     954:	e1a00000 	nop			@ (mov r0, r0)
     958:	e24bd004 	sub	sp, fp, #4
     95c:	e8bd8800 	pop	{fp, pc}

00000960 <semUp>:
     960:	e92d4800 	push	{fp, lr}
     964:	e28db004 	add	fp, sp, #4
     968:	e24dd008 	sub	sp, sp, #8
     96c:	e50b0008 	str	r0, [fp, #-8]
     970:	e51b3008 	ldr	r3, [fp, #-8]
     974:	e2833004 	add	r3, r3, #4
     978:	e1a00003 	mov	r0, r3
     97c:	ebffff70 	bl	744 <acquireLock>
     980:	e51b3008 	ldr	r3, [fp, #-8]
     984:	e5933000 	ldr	r3, [r3]
     988:	e2832001 	add	r2, r3, #1
     98c:	e51b3008 	ldr	r3, [fp, #-8]
     990:	e5832000 	str	r2, [r3]
     994:	e51b3008 	ldr	r3, [fp, #-8]
     998:	e283300c 	add	r3, r3, #12
     99c:	e1a00003 	mov	r0, r3
     9a0:	ebffffc8 	bl	8c8 <signal>
     9a4:	e51b3008 	ldr	r3, [fp, #-8]
     9a8:	e2833004 	add	r3, r3, #4
     9ac:	e1a00003 	mov	r0, r3
     9b0:	ebffff77 	bl	794 <releaseLock>
     9b4:	e1a00000 	nop			@ (mov r0, r0)
     9b8:	e24bd004 	sub	sp, fp, #4
     9bc:	e8bd8800 	pop	{fp, pc}

000009c0 <semDown>:
     9c0:	e92d4800 	push	{fp, lr}
     9c4:	e28db004 	add	fp, sp, #4
     9c8:	e24dd008 	sub	sp, sp, #8
     9cc:	e50b0008 	str	r0, [fp, #-8]
     9d0:	e51b3008 	ldr	r3, [fp, #-8]
     9d4:	e2833004 	add	r3, r3, #4
     9d8:	e1a00003 	mov	r0, r3
     9dc:	ebffff58 	bl	744 <acquireLock>
     9e0:	ea000006 	b	a00 <semDown+0x40>
     9e4:	e51b3008 	ldr	r3, [fp, #-8]
     9e8:	e283200c 	add	r2, r3, #12
     9ec:	e51b3008 	ldr	r3, [fp, #-8]
     9f0:	e2833004 	add	r3, r3, #4
     9f4:	e1a01003 	mov	r1, r3
     9f8:	e1a00002 	mov	r0, r2
     9fc:	ebffff88 	bl	824 <condWait>
     a00:	e51b3008 	ldr	r3, [fp, #-8]
     a04:	e5933000 	ldr	r3, [r3]
     a08:	e3530000 	cmp	r3, #0
     a0c:	dafffff4 	ble	9e4 <semDown+0x24>
     a10:	e51b3008 	ldr	r3, [fp, #-8]
     a14:	e5933000 	ldr	r3, [r3]
     a18:	e2432001 	sub	r2, r3, #1
     a1c:	e51b3008 	ldr	r3, [fp, #-8]
     a20:	e5832000 	str	r2, [r3]
     a24:	e51b3008 	ldr	r3, [fp, #-8]
     a28:	e2833004 	add	r3, r3, #4
     a2c:	e1a00003 	mov	r0, r3
     a30:	ebffff57 	bl	794 <releaseLock>
     a34:	e1a00000 	nop			@ (mov r0, r0)
     a38:	e24bd004 	sub	sp, fp, #4
     a3c:	e8bd8800 	pop	{fp, pc}

00000a40 <fork>:
     a40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a44:	e1a04003 	mov	r4, r3
     a48:	e1a03002 	mov	r3, r2
     a4c:	e1a02001 	mov	r2, r1
     a50:	e1a01000 	mov	r1, r0
     a54:	e3a00001 	mov	r0, #1
     a58:	ef000000 	svc	0x00000000
     a5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a60:	e12fff1e 	bx	lr

00000a64 <exit>:
     a64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a68:	e1a04003 	mov	r4, r3
     a6c:	e1a03002 	mov	r3, r2
     a70:	e1a02001 	mov	r2, r1
     a74:	e1a01000 	mov	r1, r0
     a78:	e3a00002 	mov	r0, #2
     a7c:	ef000000 	svc	0x00000000
     a80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a84:	e12fff1e 	bx	lr

00000a88 <wait>:
     a88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a8c:	e1a04003 	mov	r4, r3
     a90:	e1a03002 	mov	r3, r2
     a94:	e1a02001 	mov	r2, r1
     a98:	e1a01000 	mov	r1, r0
     a9c:	e3a00003 	mov	r0, #3
     aa0:	ef000000 	svc	0x00000000
     aa4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aa8:	e12fff1e 	bx	lr

00000aac <pipe>:
     aac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ab0:	e1a04003 	mov	r4, r3
     ab4:	e1a03002 	mov	r3, r2
     ab8:	e1a02001 	mov	r2, r1
     abc:	e1a01000 	mov	r1, r0
     ac0:	e3a00004 	mov	r0, #4
     ac4:	ef000000 	svc	0x00000000
     ac8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     acc:	e12fff1e 	bx	lr

00000ad0 <read>:
     ad0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad4:	e1a04003 	mov	r4, r3
     ad8:	e1a03002 	mov	r3, r2
     adc:	e1a02001 	mov	r2, r1
     ae0:	e1a01000 	mov	r1, r0
     ae4:	e3a00005 	mov	r0, #5
     ae8:	ef000000 	svc	0x00000000
     aec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     af0:	e12fff1e 	bx	lr

00000af4 <write>:
     af4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     af8:	e1a04003 	mov	r4, r3
     afc:	e1a03002 	mov	r3, r2
     b00:	e1a02001 	mov	r2, r1
     b04:	e1a01000 	mov	r1, r0
     b08:	e3a00010 	mov	r0, #16
     b0c:	ef000000 	svc	0x00000000
     b10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b14:	e12fff1e 	bx	lr

00000b18 <close>:
     b18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b1c:	e1a04003 	mov	r4, r3
     b20:	e1a03002 	mov	r3, r2
     b24:	e1a02001 	mov	r2, r1
     b28:	e1a01000 	mov	r1, r0
     b2c:	e3a00015 	mov	r0, #21
     b30:	ef000000 	svc	0x00000000
     b34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b38:	e12fff1e 	bx	lr

00000b3c <kill>:
     b3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b40:	e1a04003 	mov	r4, r3
     b44:	e1a03002 	mov	r3, r2
     b48:	e1a02001 	mov	r2, r1
     b4c:	e1a01000 	mov	r1, r0
     b50:	e3a00006 	mov	r0, #6
     b54:	ef000000 	svc	0x00000000
     b58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b5c:	e12fff1e 	bx	lr

00000b60 <exec>:
     b60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b64:	e1a04003 	mov	r4, r3
     b68:	e1a03002 	mov	r3, r2
     b6c:	e1a02001 	mov	r2, r1
     b70:	e1a01000 	mov	r1, r0
     b74:	e3a00007 	mov	r0, #7
     b78:	ef000000 	svc	0x00000000
     b7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b80:	e12fff1e 	bx	lr

00000b84 <open>:
     b84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b88:	e1a04003 	mov	r4, r3
     b8c:	e1a03002 	mov	r3, r2
     b90:	e1a02001 	mov	r2, r1
     b94:	e1a01000 	mov	r1, r0
     b98:	e3a0000f 	mov	r0, #15
     b9c:	ef000000 	svc	0x00000000
     ba0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba4:	e12fff1e 	bx	lr

00000ba8 <mknod>:
     ba8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bac:	e1a04003 	mov	r4, r3
     bb0:	e1a03002 	mov	r3, r2
     bb4:	e1a02001 	mov	r2, r1
     bb8:	e1a01000 	mov	r1, r0
     bbc:	e3a00011 	mov	r0, #17
     bc0:	ef000000 	svc	0x00000000
     bc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc8:	e12fff1e 	bx	lr

00000bcc <unlink>:
     bcc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bd0:	e1a04003 	mov	r4, r3
     bd4:	e1a03002 	mov	r3, r2
     bd8:	e1a02001 	mov	r2, r1
     bdc:	e1a01000 	mov	r1, r0
     be0:	e3a00012 	mov	r0, #18
     be4:	ef000000 	svc	0x00000000
     be8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bec:	e12fff1e 	bx	lr

00000bf0 <fstat>:
     bf0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf4:	e1a04003 	mov	r4, r3
     bf8:	e1a03002 	mov	r3, r2
     bfc:	e1a02001 	mov	r2, r1
     c00:	e1a01000 	mov	r1, r0
     c04:	e3a00008 	mov	r0, #8
     c08:	ef000000 	svc	0x00000000
     c0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c10:	e12fff1e 	bx	lr

00000c14 <link>:
     c14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c18:	e1a04003 	mov	r4, r3
     c1c:	e1a03002 	mov	r3, r2
     c20:	e1a02001 	mov	r2, r1
     c24:	e1a01000 	mov	r1, r0
     c28:	e3a00013 	mov	r0, #19
     c2c:	ef000000 	svc	0x00000000
     c30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c34:	e12fff1e 	bx	lr

00000c38 <mkdir>:
     c38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c3c:	e1a04003 	mov	r4, r3
     c40:	e1a03002 	mov	r3, r2
     c44:	e1a02001 	mov	r2, r1
     c48:	e1a01000 	mov	r1, r0
     c4c:	e3a00014 	mov	r0, #20
     c50:	ef000000 	svc	0x00000000
     c54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c58:	e12fff1e 	bx	lr

00000c5c <chdir>:
     c5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c60:	e1a04003 	mov	r4, r3
     c64:	e1a03002 	mov	r3, r2
     c68:	e1a02001 	mov	r2, r1
     c6c:	e1a01000 	mov	r1, r0
     c70:	e3a00009 	mov	r0, #9
     c74:	ef000000 	svc	0x00000000
     c78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c7c:	e12fff1e 	bx	lr

00000c80 <dup>:
     c80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c84:	e1a04003 	mov	r4, r3
     c88:	e1a03002 	mov	r3, r2
     c8c:	e1a02001 	mov	r2, r1
     c90:	e1a01000 	mov	r1, r0
     c94:	e3a0000a 	mov	r0, #10
     c98:	ef000000 	svc	0x00000000
     c9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ca0:	e12fff1e 	bx	lr

00000ca4 <getpid>:
     ca4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca8:	e1a04003 	mov	r4, r3
     cac:	e1a03002 	mov	r3, r2
     cb0:	e1a02001 	mov	r2, r1
     cb4:	e1a01000 	mov	r1, r0
     cb8:	e3a0000b 	mov	r0, #11
     cbc:	ef000000 	svc	0x00000000
     cc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc4:	e12fff1e 	bx	lr

00000cc8 <sbrk>:
     cc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ccc:	e1a04003 	mov	r4, r3
     cd0:	e1a03002 	mov	r3, r2
     cd4:	e1a02001 	mov	r2, r1
     cd8:	e1a01000 	mov	r1, r0
     cdc:	e3a0000c 	mov	r0, #12
     ce0:	ef000000 	svc	0x00000000
     ce4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce8:	e12fff1e 	bx	lr

00000cec <sleep>:
     cec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cf0:	e1a04003 	mov	r4, r3
     cf4:	e1a03002 	mov	r3, r2
     cf8:	e1a02001 	mov	r2, r1
     cfc:	e1a01000 	mov	r1, r0
     d00:	e3a0000d 	mov	r0, #13
     d04:	ef000000 	svc	0x00000000
     d08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d0c:	e12fff1e 	bx	lr

00000d10 <uptime>:
     d10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d14:	e1a04003 	mov	r4, r3
     d18:	e1a03002 	mov	r3, r2
     d1c:	e1a02001 	mov	r2, r1
     d20:	e1a01000 	mov	r1, r0
     d24:	e3a0000e 	mov	r0, #14
     d28:	ef000000 	svc	0x00000000
     d2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d30:	e12fff1e 	bx	lr

00000d34 <getprocs>:
     d34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d38:	e1a04003 	mov	r4, r3
     d3c:	e1a03002 	mov	r3, r2
     d40:	e1a02001 	mov	r2, r1
     d44:	e1a01000 	mov	r1, r0
     d48:	e3a00016 	mov	r0, #22
     d4c:	ef000000 	svc	0x00000000
     d50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d54:	e12fff1e 	bx	lr

00000d58 <settickets>:
     d58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d5c:	e1a04003 	mov	r4, r3
     d60:	e1a03002 	mov	r3, r2
     d64:	e1a02001 	mov	r2, r1
     d68:	e1a01000 	mov	r1, r0
     d6c:	e3a00017 	mov	r0, #23
     d70:	ef000000 	svc	0x00000000
     d74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d78:	e12fff1e 	bx	lr

00000d7c <srand>:
     d7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d80:	e1a04003 	mov	r4, r3
     d84:	e1a03002 	mov	r3, r2
     d88:	e1a02001 	mov	r2, r1
     d8c:	e1a01000 	mov	r1, r0
     d90:	e3a00018 	mov	r0, #24
     d94:	ef000000 	svc	0x00000000
     d98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d9c:	e12fff1e 	bx	lr

00000da0 <getpinfo>:
     da0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da4:	e1a04003 	mov	r4, r3
     da8:	e1a03002 	mov	r3, r2
     dac:	e1a02001 	mov	r2, r1
     db0:	e1a01000 	mov	r1, r0
     db4:	e3a00019 	mov	r0, #25
     db8:	ef000000 	svc	0x00000000
     dbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dc0:	e12fff1e 	bx	lr

00000dc4 <dumppagetable>:
     dc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dc8:	e1a04003 	mov	r4, r3
     dcc:	e1a03002 	mov	r3, r2
     dd0:	e1a02001 	mov	r2, r1
     dd4:	e1a01000 	mov	r1, r0
     dd8:	e3a0001a 	mov	r0, #26
     ddc:	ef000000 	svc	0x00000000
     de0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     de4:	e12fff1e 	bx	lr

00000de8 <thread_create>:
     de8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dec:	e1a04003 	mov	r4, r3
     df0:	e1a03002 	mov	r3, r2
     df4:	e1a02001 	mov	r2, r1
     df8:	e1a01000 	mov	r1, r0
     dfc:	e3a0001b 	mov	r0, #27
     e00:	ef000000 	svc	0x00000000
     e04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e08:	e12fff1e 	bx	lr

00000e0c <thread_exit>:
     e0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e10:	e1a04003 	mov	r4, r3
     e14:	e1a03002 	mov	r3, r2
     e18:	e1a02001 	mov	r2, r1
     e1c:	e1a01000 	mov	r1, r0
     e20:	e3a0001c 	mov	r0, #28
     e24:	ef000000 	svc	0x00000000
     e28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e2c:	e12fff1e 	bx	lr

00000e30 <thread_join>:
     e30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e34:	e1a04003 	mov	r4, r3
     e38:	e1a03002 	mov	r3, r2
     e3c:	e1a02001 	mov	r2, r1
     e40:	e1a01000 	mov	r1, r0
     e44:	e3a0001d 	mov	r0, #29
     e48:	ef000000 	svc	0x00000000
     e4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e50:	e12fff1e 	bx	lr

00000e54 <waitpid>:
     e54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e58:	e1a04003 	mov	r4, r3
     e5c:	e1a03002 	mov	r3, r2
     e60:	e1a02001 	mov	r2, r1
     e64:	e1a01000 	mov	r1, r0
     e68:	e3a0001e 	mov	r0, #30
     e6c:	ef000000 	svc	0x00000000
     e70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e74:	e12fff1e 	bx	lr

00000e78 <barrier_init>:
     e78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e7c:	e1a04003 	mov	r4, r3
     e80:	e1a03002 	mov	r3, r2
     e84:	e1a02001 	mov	r2, r1
     e88:	e1a01000 	mov	r1, r0
     e8c:	e3a0001f 	mov	r0, #31
     e90:	ef000000 	svc	0x00000000
     e94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e98:	e12fff1e 	bx	lr

00000e9c <barrier_check>:
     e9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ea0:	e1a04003 	mov	r4, r3
     ea4:	e1a03002 	mov	r3, r2
     ea8:	e1a02001 	mov	r2, r1
     eac:	e1a01000 	mov	r1, r0
     eb0:	e3a00020 	mov	r0, #32
     eb4:	ef000000 	svc	0x00000000
     eb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ebc:	e12fff1e 	bx	lr

00000ec0 <sleepChan>:
     ec0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ec4:	e1a04003 	mov	r4, r3
     ec8:	e1a03002 	mov	r3, r2
     ecc:	e1a02001 	mov	r2, r1
     ed0:	e1a01000 	mov	r1, r0
     ed4:	e3a00024 	mov	r0, #36	@ 0x24
     ed8:	ef000000 	svc	0x00000000
     edc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ee0:	e12fff1e 	bx	lr

00000ee4 <getChannel>:
     ee4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ee8:	e1a04003 	mov	r4, r3
     eec:	e1a03002 	mov	r3, r2
     ef0:	e1a02001 	mov	r2, r1
     ef4:	e1a01000 	mov	r1, r0
     ef8:	e3a00025 	mov	r0, #37	@ 0x25
     efc:	ef000000 	svc	0x00000000
     f00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f04:	e12fff1e 	bx	lr

00000f08 <sigChan>:
     f08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f0c:	e1a04003 	mov	r4, r3
     f10:	e1a03002 	mov	r3, r2
     f14:	e1a02001 	mov	r2, r1
     f18:	e1a01000 	mov	r1, r0
     f1c:	e3a00026 	mov	r0, #38	@ 0x26
     f20:	ef000000 	svc	0x00000000
     f24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f28:	e12fff1e 	bx	lr

00000f2c <sigOneChan>:
     f2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f30:	e1a04003 	mov	r4, r3
     f34:	e1a03002 	mov	r3, r2
     f38:	e1a02001 	mov	r2, r1
     f3c:	e1a01000 	mov	r1, r0
     f40:	e3a00027 	mov	r0, #39	@ 0x27
     f44:	ef000000 	svc	0x00000000
     f48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f4c:	e12fff1e 	bx	lr

00000f50 <putc>:
     f50:	e92d4800 	push	{fp, lr}
     f54:	e28db004 	add	fp, sp, #4
     f58:	e24dd008 	sub	sp, sp, #8
     f5c:	e50b0008 	str	r0, [fp, #-8]
     f60:	e1a03001 	mov	r3, r1
     f64:	e54b3009 	strb	r3, [fp, #-9]
     f68:	e24b3009 	sub	r3, fp, #9
     f6c:	e3a02001 	mov	r2, #1
     f70:	e1a01003 	mov	r1, r3
     f74:	e51b0008 	ldr	r0, [fp, #-8]
     f78:	ebfffedd 	bl	af4 <write>
     f7c:	e1a00000 	nop			@ (mov r0, r0)
     f80:	e24bd004 	sub	sp, fp, #4
     f84:	e8bd8800 	pop	{fp, pc}

00000f88 <printint>:
     f88:	e92d4800 	push	{fp, lr}
     f8c:	e28db004 	add	fp, sp, #4
     f90:	e24dd030 	sub	sp, sp, #48	@ 0x30
     f94:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     f98:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     f9c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     fa0:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     fa4:	e3a03000 	mov	r3, #0
     fa8:	e50b300c 	str	r3, [fp, #-12]
     fac:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     fb0:	e3530000 	cmp	r3, #0
     fb4:	0a000008 	beq	fdc <printint+0x54>
     fb8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     fbc:	e3530000 	cmp	r3, #0
     fc0:	aa000005 	bge	fdc <printint+0x54>
     fc4:	e3a03001 	mov	r3, #1
     fc8:	e50b300c 	str	r3, [fp, #-12]
     fcc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     fd0:	e2633000 	rsb	r3, r3, #0
     fd4:	e50b3010 	str	r3, [fp, #-16]
     fd8:	ea000001 	b	fe4 <printint+0x5c>
     fdc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     fe0:	e50b3010 	str	r3, [fp, #-16]
     fe4:	e3a03000 	mov	r3, #0
     fe8:	e50b3008 	str	r3, [fp, #-8]
     fec:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     ff0:	e51b3010 	ldr	r3, [fp, #-16]
     ff4:	e1a01002 	mov	r1, r2
     ff8:	e1a00003 	mov	r0, r3
     ffc:	eb0001d5 	bl	1758 <__aeabi_uidivmod>
    1000:	e1a03001 	mov	r3, r1
    1004:	e1a01003 	mov	r1, r3
    1008:	e51b3008 	ldr	r3, [fp, #-8]
    100c:	e2832001 	add	r2, r3, #1
    1010:	e50b2008 	str	r2, [fp, #-8]
    1014:	e59f20a0 	ldr	r2, [pc, #160]	@ 10bc <printint+0x134>
    1018:	e7d22001 	ldrb	r2, [r2, r1]
    101c:	e2433004 	sub	r3, r3, #4
    1020:	e083300b 	add	r3, r3, fp
    1024:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1028:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    102c:	e1a01003 	mov	r1, r3
    1030:	e51b0010 	ldr	r0, [fp, #-16]
    1034:	eb00018a 	bl	1664 <__udivsi3>
    1038:	e1a03000 	mov	r3, r0
    103c:	e50b3010 	str	r3, [fp, #-16]
    1040:	e51b3010 	ldr	r3, [fp, #-16]
    1044:	e3530000 	cmp	r3, #0
    1048:	1affffe7 	bne	fec <printint+0x64>
    104c:	e51b300c 	ldr	r3, [fp, #-12]
    1050:	e3530000 	cmp	r3, #0
    1054:	0a00000e 	beq	1094 <printint+0x10c>
    1058:	e51b3008 	ldr	r3, [fp, #-8]
    105c:	e2832001 	add	r2, r3, #1
    1060:	e50b2008 	str	r2, [fp, #-8]
    1064:	e2433004 	sub	r3, r3, #4
    1068:	e083300b 	add	r3, r3, fp
    106c:	e3a0202d 	mov	r2, #45	@ 0x2d
    1070:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1074:	ea000006 	b	1094 <printint+0x10c>
    1078:	e24b2020 	sub	r2, fp, #32
    107c:	e51b3008 	ldr	r3, [fp, #-8]
    1080:	e0823003 	add	r3, r2, r3
    1084:	e5d33000 	ldrb	r3, [r3]
    1088:	e1a01003 	mov	r1, r3
    108c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1090:	ebffffae 	bl	f50 <putc>
    1094:	e51b3008 	ldr	r3, [fp, #-8]
    1098:	e2433001 	sub	r3, r3, #1
    109c:	e50b3008 	str	r3, [fp, #-8]
    10a0:	e51b3008 	ldr	r3, [fp, #-8]
    10a4:	e3530000 	cmp	r3, #0
    10a8:	aafffff2 	bge	1078 <printint+0xf0>
    10ac:	e1a00000 	nop			@ (mov r0, r0)
    10b0:	e1a00000 	nop			@ (mov r0, r0)
    10b4:	e24bd004 	sub	sp, fp, #4
    10b8:	e8bd8800 	pop	{fp, pc}
    10bc:	000017d8 	.word	0x000017d8

000010c0 <printf>:
    10c0:	e92d000e 	push	{r1, r2, r3}
    10c4:	e92d4800 	push	{fp, lr}
    10c8:	e28db004 	add	fp, sp, #4
    10cc:	e24dd024 	sub	sp, sp, #36	@ 0x24
    10d0:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    10d4:	e3a03000 	mov	r3, #0
    10d8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    10dc:	e28b3008 	add	r3, fp, #8
    10e0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10e4:	e3a03000 	mov	r3, #0
    10e8:	e50b3010 	str	r3, [fp, #-16]
    10ec:	ea000074 	b	12c4 <printf+0x204>
    10f0:	e59b2004 	ldr	r2, [fp, #4]
    10f4:	e51b3010 	ldr	r3, [fp, #-16]
    10f8:	e0823003 	add	r3, r2, r3
    10fc:	e5d33000 	ldrb	r3, [r3]
    1100:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1104:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1108:	e3530000 	cmp	r3, #0
    110c:	1a00000b 	bne	1140 <printf+0x80>
    1110:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1114:	e3530025 	cmp	r3, #37	@ 0x25
    1118:	1a000002 	bne	1128 <printf+0x68>
    111c:	e3a03025 	mov	r3, #37	@ 0x25
    1120:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1124:	ea000063 	b	12b8 <printf+0x1f8>
    1128:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    112c:	e6ef3073 	uxtb	r3, r3
    1130:	e1a01003 	mov	r1, r3
    1134:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1138:	ebffff84 	bl	f50 <putc>
    113c:	ea00005d 	b	12b8 <printf+0x1f8>
    1140:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1144:	e3530025 	cmp	r3, #37	@ 0x25
    1148:	1a00005a 	bne	12b8 <printf+0x1f8>
    114c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1150:	e3530064 	cmp	r3, #100	@ 0x64
    1154:	1a00000a 	bne	1184 <printf+0xc4>
    1158:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    115c:	e5933000 	ldr	r3, [r3]
    1160:	e1a01003 	mov	r1, r3
    1164:	e3a03001 	mov	r3, #1
    1168:	e3a0200a 	mov	r2, #10
    116c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1170:	ebffff84 	bl	f88 <printint>
    1174:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1178:	e2833004 	add	r3, r3, #4
    117c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1180:	ea00004a 	b	12b0 <printf+0x1f0>
    1184:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1188:	e3530078 	cmp	r3, #120	@ 0x78
    118c:	0a000002 	beq	119c <printf+0xdc>
    1190:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1194:	e3530070 	cmp	r3, #112	@ 0x70
    1198:	1a00000a 	bne	11c8 <printf+0x108>
    119c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11a0:	e5933000 	ldr	r3, [r3]
    11a4:	e1a01003 	mov	r1, r3
    11a8:	e3a03000 	mov	r3, #0
    11ac:	e3a02010 	mov	r2, #16
    11b0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11b4:	ebffff73 	bl	f88 <printint>
    11b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11bc:	e2833004 	add	r3, r3, #4
    11c0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11c4:	ea000039 	b	12b0 <printf+0x1f0>
    11c8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11cc:	e3530073 	cmp	r3, #115	@ 0x73
    11d0:	1a000018 	bne	1238 <printf+0x178>
    11d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11d8:	e5933000 	ldr	r3, [r3]
    11dc:	e50b300c 	str	r3, [fp, #-12]
    11e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11e4:	e2833004 	add	r3, r3, #4
    11e8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11ec:	e51b300c 	ldr	r3, [fp, #-12]
    11f0:	e3530000 	cmp	r3, #0
    11f4:	1a00000a 	bne	1224 <printf+0x164>
    11f8:	e59f30f4 	ldr	r3, [pc, #244]	@ 12f4 <printf+0x234>
    11fc:	e50b300c 	str	r3, [fp, #-12]
    1200:	ea000007 	b	1224 <printf+0x164>
    1204:	e51b300c 	ldr	r3, [fp, #-12]
    1208:	e5d33000 	ldrb	r3, [r3]
    120c:	e1a01003 	mov	r1, r3
    1210:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1214:	ebffff4d 	bl	f50 <putc>
    1218:	e51b300c 	ldr	r3, [fp, #-12]
    121c:	e2833001 	add	r3, r3, #1
    1220:	e50b300c 	str	r3, [fp, #-12]
    1224:	e51b300c 	ldr	r3, [fp, #-12]
    1228:	e5d33000 	ldrb	r3, [r3]
    122c:	e3530000 	cmp	r3, #0
    1230:	1afffff3 	bne	1204 <printf+0x144>
    1234:	ea00001d 	b	12b0 <printf+0x1f0>
    1238:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    123c:	e3530063 	cmp	r3, #99	@ 0x63
    1240:	1a000009 	bne	126c <printf+0x1ac>
    1244:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1248:	e5933000 	ldr	r3, [r3]
    124c:	e6ef3073 	uxtb	r3, r3
    1250:	e1a01003 	mov	r1, r3
    1254:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1258:	ebffff3c 	bl	f50 <putc>
    125c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1260:	e2833004 	add	r3, r3, #4
    1264:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1268:	ea000010 	b	12b0 <printf+0x1f0>
    126c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1270:	e3530025 	cmp	r3, #37	@ 0x25
    1274:	1a000005 	bne	1290 <printf+0x1d0>
    1278:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    127c:	e6ef3073 	uxtb	r3, r3
    1280:	e1a01003 	mov	r1, r3
    1284:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1288:	ebffff30 	bl	f50 <putc>
    128c:	ea000007 	b	12b0 <printf+0x1f0>
    1290:	e3a01025 	mov	r1, #37	@ 0x25
    1294:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1298:	ebffff2c 	bl	f50 <putc>
    129c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12a0:	e6ef3073 	uxtb	r3, r3
    12a4:	e1a01003 	mov	r1, r3
    12a8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12ac:	ebffff27 	bl	f50 <putc>
    12b0:	e3a03000 	mov	r3, #0
    12b4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    12b8:	e51b3010 	ldr	r3, [fp, #-16]
    12bc:	e2833001 	add	r3, r3, #1
    12c0:	e50b3010 	str	r3, [fp, #-16]
    12c4:	e59b2004 	ldr	r2, [fp, #4]
    12c8:	e51b3010 	ldr	r3, [fp, #-16]
    12cc:	e0823003 	add	r3, r2, r3
    12d0:	e5d33000 	ldrb	r3, [r3]
    12d4:	e3530000 	cmp	r3, #0
    12d8:	1affff84 	bne	10f0 <printf+0x30>
    12dc:	e1a00000 	nop			@ (mov r0, r0)
    12e0:	e1a00000 	nop			@ (mov r0, r0)
    12e4:	e24bd004 	sub	sp, fp, #4
    12e8:	e8bd4800 	pop	{fp, lr}
    12ec:	e28dd00c 	add	sp, sp, #12
    12f0:	e12fff1e 	bx	lr
    12f4:	000017d0 	.word	0x000017d0

000012f8 <free>:
    12f8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    12fc:	e28db000 	add	fp, sp, #0
    1300:	e24dd014 	sub	sp, sp, #20
    1304:	e50b0010 	str	r0, [fp, #-16]
    1308:	e51b3010 	ldr	r3, [fp, #-16]
    130c:	e2433008 	sub	r3, r3, #8
    1310:	e50b300c 	str	r3, [fp, #-12]
    1314:	e59f3154 	ldr	r3, [pc, #340]	@ 1470 <free+0x178>
    1318:	e5933000 	ldr	r3, [r3]
    131c:	e50b3008 	str	r3, [fp, #-8]
    1320:	ea000010 	b	1368 <free+0x70>
    1324:	e51b3008 	ldr	r3, [fp, #-8]
    1328:	e5933000 	ldr	r3, [r3]
    132c:	e51b2008 	ldr	r2, [fp, #-8]
    1330:	e1520003 	cmp	r2, r3
    1334:	3a000008 	bcc	135c <free+0x64>
    1338:	e51b200c 	ldr	r2, [fp, #-12]
    133c:	e51b3008 	ldr	r3, [fp, #-8]
    1340:	e1520003 	cmp	r2, r3
    1344:	8a000010 	bhi	138c <free+0x94>
    1348:	e51b3008 	ldr	r3, [fp, #-8]
    134c:	e5933000 	ldr	r3, [r3]
    1350:	e51b200c 	ldr	r2, [fp, #-12]
    1354:	e1520003 	cmp	r2, r3
    1358:	3a00000b 	bcc	138c <free+0x94>
    135c:	e51b3008 	ldr	r3, [fp, #-8]
    1360:	e5933000 	ldr	r3, [r3]
    1364:	e50b3008 	str	r3, [fp, #-8]
    1368:	e51b200c 	ldr	r2, [fp, #-12]
    136c:	e51b3008 	ldr	r3, [fp, #-8]
    1370:	e1520003 	cmp	r2, r3
    1374:	9affffea 	bls	1324 <free+0x2c>
    1378:	e51b3008 	ldr	r3, [fp, #-8]
    137c:	e5933000 	ldr	r3, [r3]
    1380:	e51b200c 	ldr	r2, [fp, #-12]
    1384:	e1520003 	cmp	r2, r3
    1388:	2affffe5 	bcs	1324 <free+0x2c>
    138c:	e51b300c 	ldr	r3, [fp, #-12]
    1390:	e5933004 	ldr	r3, [r3, #4]
    1394:	e1a03183 	lsl	r3, r3, #3
    1398:	e51b200c 	ldr	r2, [fp, #-12]
    139c:	e0822003 	add	r2, r2, r3
    13a0:	e51b3008 	ldr	r3, [fp, #-8]
    13a4:	e5933000 	ldr	r3, [r3]
    13a8:	e1520003 	cmp	r2, r3
    13ac:	1a00000d 	bne	13e8 <free+0xf0>
    13b0:	e51b300c 	ldr	r3, [fp, #-12]
    13b4:	e5932004 	ldr	r2, [r3, #4]
    13b8:	e51b3008 	ldr	r3, [fp, #-8]
    13bc:	e5933000 	ldr	r3, [r3]
    13c0:	e5933004 	ldr	r3, [r3, #4]
    13c4:	e0822003 	add	r2, r2, r3
    13c8:	e51b300c 	ldr	r3, [fp, #-12]
    13cc:	e5832004 	str	r2, [r3, #4]
    13d0:	e51b3008 	ldr	r3, [fp, #-8]
    13d4:	e5933000 	ldr	r3, [r3]
    13d8:	e5932000 	ldr	r2, [r3]
    13dc:	e51b300c 	ldr	r3, [fp, #-12]
    13e0:	e5832000 	str	r2, [r3]
    13e4:	ea000003 	b	13f8 <free+0x100>
    13e8:	e51b3008 	ldr	r3, [fp, #-8]
    13ec:	e5932000 	ldr	r2, [r3]
    13f0:	e51b300c 	ldr	r3, [fp, #-12]
    13f4:	e5832000 	str	r2, [r3]
    13f8:	e51b3008 	ldr	r3, [fp, #-8]
    13fc:	e5933004 	ldr	r3, [r3, #4]
    1400:	e1a03183 	lsl	r3, r3, #3
    1404:	e51b2008 	ldr	r2, [fp, #-8]
    1408:	e0823003 	add	r3, r2, r3
    140c:	e51b200c 	ldr	r2, [fp, #-12]
    1410:	e1520003 	cmp	r2, r3
    1414:	1a00000b 	bne	1448 <free+0x150>
    1418:	e51b3008 	ldr	r3, [fp, #-8]
    141c:	e5932004 	ldr	r2, [r3, #4]
    1420:	e51b300c 	ldr	r3, [fp, #-12]
    1424:	e5933004 	ldr	r3, [r3, #4]
    1428:	e0822003 	add	r2, r2, r3
    142c:	e51b3008 	ldr	r3, [fp, #-8]
    1430:	e5832004 	str	r2, [r3, #4]
    1434:	e51b300c 	ldr	r3, [fp, #-12]
    1438:	e5932000 	ldr	r2, [r3]
    143c:	e51b3008 	ldr	r3, [fp, #-8]
    1440:	e5832000 	str	r2, [r3]
    1444:	ea000002 	b	1454 <free+0x15c>
    1448:	e51b3008 	ldr	r3, [fp, #-8]
    144c:	e51b200c 	ldr	r2, [fp, #-12]
    1450:	e5832000 	str	r2, [r3]
    1454:	e59f2014 	ldr	r2, [pc, #20]	@ 1470 <free+0x178>
    1458:	e51b3008 	ldr	r3, [fp, #-8]
    145c:	e5823000 	str	r3, [r2]
    1460:	e1a00000 	nop			@ (mov r0, r0)
    1464:	e28bd000 	add	sp, fp, #0
    1468:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    146c:	e12fff1e 	bx	lr
    1470:	000017f4 	.word	0x000017f4

00001474 <morecore>:
    1474:	e92d4800 	push	{fp, lr}
    1478:	e28db004 	add	fp, sp, #4
    147c:	e24dd010 	sub	sp, sp, #16
    1480:	e50b0010 	str	r0, [fp, #-16]
    1484:	e51b3010 	ldr	r3, [fp, #-16]
    1488:	e3530a01 	cmp	r3, #4096	@ 0x1000
    148c:	2a000001 	bcs	1498 <morecore+0x24>
    1490:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1494:	e50b3010 	str	r3, [fp, #-16]
    1498:	e51b3010 	ldr	r3, [fp, #-16]
    149c:	e1a03183 	lsl	r3, r3, #3
    14a0:	e1a00003 	mov	r0, r3
    14a4:	ebfffe07 	bl	cc8 <sbrk>
    14a8:	e50b0008 	str	r0, [fp, #-8]
    14ac:	e51b3008 	ldr	r3, [fp, #-8]
    14b0:	e3730001 	cmn	r3, #1
    14b4:	1a000001 	bne	14c0 <morecore+0x4c>
    14b8:	e3a03000 	mov	r3, #0
    14bc:	ea00000a 	b	14ec <morecore+0x78>
    14c0:	e51b3008 	ldr	r3, [fp, #-8]
    14c4:	e50b300c 	str	r3, [fp, #-12]
    14c8:	e51b300c 	ldr	r3, [fp, #-12]
    14cc:	e51b2010 	ldr	r2, [fp, #-16]
    14d0:	e5832004 	str	r2, [r3, #4]
    14d4:	e51b300c 	ldr	r3, [fp, #-12]
    14d8:	e2833008 	add	r3, r3, #8
    14dc:	e1a00003 	mov	r0, r3
    14e0:	ebffff84 	bl	12f8 <free>
    14e4:	e59f300c 	ldr	r3, [pc, #12]	@ 14f8 <morecore+0x84>
    14e8:	e5933000 	ldr	r3, [r3]
    14ec:	e1a00003 	mov	r0, r3
    14f0:	e24bd004 	sub	sp, fp, #4
    14f4:	e8bd8800 	pop	{fp, pc}
    14f8:	000017f4 	.word	0x000017f4

000014fc <malloc>:
    14fc:	e92d4800 	push	{fp, lr}
    1500:	e28db004 	add	fp, sp, #4
    1504:	e24dd018 	sub	sp, sp, #24
    1508:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    150c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1510:	e2833007 	add	r3, r3, #7
    1514:	e1a031a3 	lsr	r3, r3, #3
    1518:	e2833001 	add	r3, r3, #1
    151c:	e50b3010 	str	r3, [fp, #-16]
    1520:	e59f3134 	ldr	r3, [pc, #308]	@ 165c <malloc+0x160>
    1524:	e5933000 	ldr	r3, [r3]
    1528:	e50b300c 	str	r3, [fp, #-12]
    152c:	e51b300c 	ldr	r3, [fp, #-12]
    1530:	e3530000 	cmp	r3, #0
    1534:	1a00000b 	bne	1568 <malloc+0x6c>
    1538:	e59f3120 	ldr	r3, [pc, #288]	@ 1660 <malloc+0x164>
    153c:	e50b300c 	str	r3, [fp, #-12]
    1540:	e59f2114 	ldr	r2, [pc, #276]	@ 165c <malloc+0x160>
    1544:	e51b300c 	ldr	r3, [fp, #-12]
    1548:	e5823000 	str	r3, [r2]
    154c:	e59f3108 	ldr	r3, [pc, #264]	@ 165c <malloc+0x160>
    1550:	e5933000 	ldr	r3, [r3]
    1554:	e59f2104 	ldr	r2, [pc, #260]	@ 1660 <malloc+0x164>
    1558:	e5823000 	str	r3, [r2]
    155c:	e59f30fc 	ldr	r3, [pc, #252]	@ 1660 <malloc+0x164>
    1560:	e3a02000 	mov	r2, #0
    1564:	e5832004 	str	r2, [r3, #4]
    1568:	e51b300c 	ldr	r3, [fp, #-12]
    156c:	e5933000 	ldr	r3, [r3]
    1570:	e50b3008 	str	r3, [fp, #-8]
    1574:	e51b3008 	ldr	r3, [fp, #-8]
    1578:	e5933004 	ldr	r3, [r3, #4]
    157c:	e51b2010 	ldr	r2, [fp, #-16]
    1580:	e1520003 	cmp	r2, r3
    1584:	8a00001e 	bhi	1604 <malloc+0x108>
    1588:	e51b3008 	ldr	r3, [fp, #-8]
    158c:	e5933004 	ldr	r3, [r3, #4]
    1590:	e51b2010 	ldr	r2, [fp, #-16]
    1594:	e1520003 	cmp	r2, r3
    1598:	1a000004 	bne	15b0 <malloc+0xb4>
    159c:	e51b3008 	ldr	r3, [fp, #-8]
    15a0:	e5932000 	ldr	r2, [r3]
    15a4:	e51b300c 	ldr	r3, [fp, #-12]
    15a8:	e5832000 	str	r2, [r3]
    15ac:	ea00000e 	b	15ec <malloc+0xf0>
    15b0:	e51b3008 	ldr	r3, [fp, #-8]
    15b4:	e5932004 	ldr	r2, [r3, #4]
    15b8:	e51b3010 	ldr	r3, [fp, #-16]
    15bc:	e0422003 	sub	r2, r2, r3
    15c0:	e51b3008 	ldr	r3, [fp, #-8]
    15c4:	e5832004 	str	r2, [r3, #4]
    15c8:	e51b3008 	ldr	r3, [fp, #-8]
    15cc:	e5933004 	ldr	r3, [r3, #4]
    15d0:	e1a03183 	lsl	r3, r3, #3
    15d4:	e51b2008 	ldr	r2, [fp, #-8]
    15d8:	e0823003 	add	r3, r2, r3
    15dc:	e50b3008 	str	r3, [fp, #-8]
    15e0:	e51b3008 	ldr	r3, [fp, #-8]
    15e4:	e51b2010 	ldr	r2, [fp, #-16]
    15e8:	e5832004 	str	r2, [r3, #4]
    15ec:	e59f2068 	ldr	r2, [pc, #104]	@ 165c <malloc+0x160>
    15f0:	e51b300c 	ldr	r3, [fp, #-12]
    15f4:	e5823000 	str	r3, [r2]
    15f8:	e51b3008 	ldr	r3, [fp, #-8]
    15fc:	e2833008 	add	r3, r3, #8
    1600:	ea000012 	b	1650 <malloc+0x154>
    1604:	e59f3050 	ldr	r3, [pc, #80]	@ 165c <malloc+0x160>
    1608:	e5933000 	ldr	r3, [r3]
    160c:	e51b2008 	ldr	r2, [fp, #-8]
    1610:	e1520003 	cmp	r2, r3
    1614:	1a000007 	bne	1638 <malloc+0x13c>
    1618:	e51b0010 	ldr	r0, [fp, #-16]
    161c:	ebffff94 	bl	1474 <morecore>
    1620:	e50b0008 	str	r0, [fp, #-8]
    1624:	e51b3008 	ldr	r3, [fp, #-8]
    1628:	e3530000 	cmp	r3, #0
    162c:	1a000001 	bne	1638 <malloc+0x13c>
    1630:	e3a03000 	mov	r3, #0
    1634:	ea000005 	b	1650 <malloc+0x154>
    1638:	e51b3008 	ldr	r3, [fp, #-8]
    163c:	e50b300c 	str	r3, [fp, #-12]
    1640:	e51b3008 	ldr	r3, [fp, #-8]
    1644:	e5933000 	ldr	r3, [r3]
    1648:	e50b3008 	str	r3, [fp, #-8]
    164c:	eaffffc8 	b	1574 <malloc+0x78>
    1650:	e1a00003 	mov	r0, r3
    1654:	e24bd004 	sub	sp, fp, #4
    1658:	e8bd8800 	pop	{fp, pc}
    165c:	000017f4 	.word	0x000017f4
    1660:	000017ec 	.word	0x000017ec

00001664 <__udivsi3>:
    1664:	e2512001 	subs	r2, r1, #1
    1668:	012fff1e 	bxeq	lr
    166c:	3a000036 	bcc	174c <__udivsi3+0xe8>
    1670:	e1500001 	cmp	r0, r1
    1674:	9a000022 	bls	1704 <__udivsi3+0xa0>
    1678:	e1110002 	tst	r1, r2
    167c:	0a000023 	beq	1710 <__udivsi3+0xac>
    1680:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1684:	01a01181 	lsleq	r1, r1, #3
    1688:	03a03008 	moveq	r3, #8
    168c:	13a03001 	movne	r3, #1
    1690:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1694:	31510000 	cmpcc	r1, r0
    1698:	31a01201 	lslcc	r1, r1, #4
    169c:	31a03203 	lslcc	r3, r3, #4
    16a0:	3afffffa 	bcc	1690 <__udivsi3+0x2c>
    16a4:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    16a8:	31510000 	cmpcc	r1, r0
    16ac:	31a01081 	lslcc	r1, r1, #1
    16b0:	31a03083 	lslcc	r3, r3, #1
    16b4:	3afffffa 	bcc	16a4 <__udivsi3+0x40>
    16b8:	e3a02000 	mov	r2, #0
    16bc:	e1500001 	cmp	r0, r1
    16c0:	20400001 	subcs	r0, r0, r1
    16c4:	21822003 	orrcs	r2, r2, r3
    16c8:	e15000a1 	cmp	r0, r1, lsr #1
    16cc:	204000a1 	subcs	r0, r0, r1, lsr #1
    16d0:	218220a3 	orrcs	r2, r2, r3, lsr #1
    16d4:	e1500121 	cmp	r0, r1, lsr #2
    16d8:	20400121 	subcs	r0, r0, r1, lsr #2
    16dc:	21822123 	orrcs	r2, r2, r3, lsr #2
    16e0:	e15001a1 	cmp	r0, r1, lsr #3
    16e4:	204001a1 	subcs	r0, r0, r1, lsr #3
    16e8:	218221a3 	orrcs	r2, r2, r3, lsr #3
    16ec:	e3500000 	cmp	r0, #0
    16f0:	11b03223 	lsrsne	r3, r3, #4
    16f4:	11a01221 	lsrne	r1, r1, #4
    16f8:	1affffef 	bne	16bc <__udivsi3+0x58>
    16fc:	e1a00002 	mov	r0, r2
    1700:	e12fff1e 	bx	lr
    1704:	03a00001 	moveq	r0, #1
    1708:	13a00000 	movne	r0, #0
    170c:	e12fff1e 	bx	lr
    1710:	e3510801 	cmp	r1, #65536	@ 0x10000
    1714:	21a01821 	lsrcs	r1, r1, #16
    1718:	23a02010 	movcs	r2, #16
    171c:	33a02000 	movcc	r2, #0
    1720:	e3510c01 	cmp	r1, #256	@ 0x100
    1724:	21a01421 	lsrcs	r1, r1, #8
    1728:	22822008 	addcs	r2, r2, #8
    172c:	e3510010 	cmp	r1, #16
    1730:	21a01221 	lsrcs	r1, r1, #4
    1734:	22822004 	addcs	r2, r2, #4
    1738:	e3510004 	cmp	r1, #4
    173c:	82822003 	addhi	r2, r2, #3
    1740:	908220a1 	addls	r2, r2, r1, lsr #1
    1744:	e1a00230 	lsr	r0, r0, r2
    1748:	e12fff1e 	bx	lr
    174c:	e3500000 	cmp	r0, #0
    1750:	13e00000 	mvnne	r0, #0
    1754:	ea000007 	b	1778 <__aeabi_idiv0>

00001758 <__aeabi_uidivmod>:
    1758:	e3510000 	cmp	r1, #0
    175c:	0afffffa 	beq	174c <__udivsi3+0xe8>
    1760:	e92d4003 	push	{r0, r1, lr}
    1764:	ebffffbe 	bl	1664 <__udivsi3>
    1768:	e8bd4006 	pop	{r1, r2, lr}
    176c:	e0030092 	mul	r3, r2, r0
    1770:	e0411003 	sub	r1, r1, r3
    1774:	e12fff1e 	bx	lr

00001778 <__aeabi_idiv0>:
    1778:	e12fff1e 	bx	lr
