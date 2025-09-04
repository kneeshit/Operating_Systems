
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
      2c:	eb000262 	bl	9bc <getprocs>
      30:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
      34:	e59f1194 	ldr	r1, [pc, #404]	@ 1d0 <main+0x1d0>
      38:	e3a00001 	mov	r0, #1
      3c:	eb0002de 	bl	bbc <printf>
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
     1ac:	eb000282 	bl	bbc <printf>
     1b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     1b4:	e2833001 	add	r3, r3, #1
     1b8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     1bc:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     1c0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1c4:	e1520003 	cmp	r2, r3
     1c8:	baffff9f 	blt	4c <main+0x4c>
     1cc:	eb000146 	bl	6ec <exit>
     1d0:	00001278 	.word	0x00001278
     1d4:	000012b0 	.word	0x000012b0

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
     4cc:	eb0000a1 	bl	758 <read>
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
     574:	eb0000a4 	bl	80c <open>
     578:	e50b0008 	str	r0, [fp, #-8]
     57c:	e51b3008 	ldr	r3, [fp, #-8]
     580:	e3530000 	cmp	r3, #0
     584:	aa000001 	bge	590 <stat+0x38>
     588:	e3e03000 	mvn	r3, #0
     58c:	ea000006 	b	5ac <stat+0x54>
     590:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     594:	e51b0008 	ldr	r0, [fp, #-8]
     598:	eb0000b6 	bl	878 <fstat>
     59c:	e50b000c 	str	r0, [fp, #-12]
     5a0:	e51b0008 	ldr	r0, [fp, #-8]
     5a4:	eb00007d 	bl	7a0 <close>
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

000006c8 <fork>:
     6c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6cc:	e1a04003 	mov	r4, r3
     6d0:	e1a03002 	mov	r3, r2
     6d4:	e1a02001 	mov	r2, r1
     6d8:	e1a01000 	mov	r1, r0
     6dc:	e3a00001 	mov	r0, #1
     6e0:	ef000000 	svc	0x00000000
     6e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6e8:	e12fff1e 	bx	lr

000006ec <exit>:
     6ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6f0:	e1a04003 	mov	r4, r3
     6f4:	e1a03002 	mov	r3, r2
     6f8:	e1a02001 	mov	r2, r1
     6fc:	e1a01000 	mov	r1, r0
     700:	e3a00002 	mov	r0, #2
     704:	ef000000 	svc	0x00000000
     708:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     70c:	e12fff1e 	bx	lr

00000710 <wait>:
     710:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     714:	e1a04003 	mov	r4, r3
     718:	e1a03002 	mov	r3, r2
     71c:	e1a02001 	mov	r2, r1
     720:	e1a01000 	mov	r1, r0
     724:	e3a00003 	mov	r0, #3
     728:	ef000000 	svc	0x00000000
     72c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     730:	e12fff1e 	bx	lr

00000734 <pipe>:
     734:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     738:	e1a04003 	mov	r4, r3
     73c:	e1a03002 	mov	r3, r2
     740:	e1a02001 	mov	r2, r1
     744:	e1a01000 	mov	r1, r0
     748:	e3a00004 	mov	r0, #4
     74c:	ef000000 	svc	0x00000000
     750:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     754:	e12fff1e 	bx	lr

00000758 <read>:
     758:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     75c:	e1a04003 	mov	r4, r3
     760:	e1a03002 	mov	r3, r2
     764:	e1a02001 	mov	r2, r1
     768:	e1a01000 	mov	r1, r0
     76c:	e3a00005 	mov	r0, #5
     770:	ef000000 	svc	0x00000000
     774:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     778:	e12fff1e 	bx	lr

0000077c <write>:
     77c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     780:	e1a04003 	mov	r4, r3
     784:	e1a03002 	mov	r3, r2
     788:	e1a02001 	mov	r2, r1
     78c:	e1a01000 	mov	r1, r0
     790:	e3a00010 	mov	r0, #16
     794:	ef000000 	svc	0x00000000
     798:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     79c:	e12fff1e 	bx	lr

000007a0 <close>:
     7a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7a4:	e1a04003 	mov	r4, r3
     7a8:	e1a03002 	mov	r3, r2
     7ac:	e1a02001 	mov	r2, r1
     7b0:	e1a01000 	mov	r1, r0
     7b4:	e3a00015 	mov	r0, #21
     7b8:	ef000000 	svc	0x00000000
     7bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c0:	e12fff1e 	bx	lr

000007c4 <kill>:
     7c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7c8:	e1a04003 	mov	r4, r3
     7cc:	e1a03002 	mov	r3, r2
     7d0:	e1a02001 	mov	r2, r1
     7d4:	e1a01000 	mov	r1, r0
     7d8:	e3a00006 	mov	r0, #6
     7dc:	ef000000 	svc	0x00000000
     7e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7e4:	e12fff1e 	bx	lr

000007e8 <exec>:
     7e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7ec:	e1a04003 	mov	r4, r3
     7f0:	e1a03002 	mov	r3, r2
     7f4:	e1a02001 	mov	r2, r1
     7f8:	e1a01000 	mov	r1, r0
     7fc:	e3a00007 	mov	r0, #7
     800:	ef000000 	svc	0x00000000
     804:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     808:	e12fff1e 	bx	lr

0000080c <open>:
     80c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     810:	e1a04003 	mov	r4, r3
     814:	e1a03002 	mov	r3, r2
     818:	e1a02001 	mov	r2, r1
     81c:	e1a01000 	mov	r1, r0
     820:	e3a0000f 	mov	r0, #15
     824:	ef000000 	svc	0x00000000
     828:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     82c:	e12fff1e 	bx	lr

00000830 <mknod>:
     830:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     834:	e1a04003 	mov	r4, r3
     838:	e1a03002 	mov	r3, r2
     83c:	e1a02001 	mov	r2, r1
     840:	e1a01000 	mov	r1, r0
     844:	e3a00011 	mov	r0, #17
     848:	ef000000 	svc	0x00000000
     84c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     850:	e12fff1e 	bx	lr

00000854 <unlink>:
     854:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     858:	e1a04003 	mov	r4, r3
     85c:	e1a03002 	mov	r3, r2
     860:	e1a02001 	mov	r2, r1
     864:	e1a01000 	mov	r1, r0
     868:	e3a00012 	mov	r0, #18
     86c:	ef000000 	svc	0x00000000
     870:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     874:	e12fff1e 	bx	lr

00000878 <fstat>:
     878:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     87c:	e1a04003 	mov	r4, r3
     880:	e1a03002 	mov	r3, r2
     884:	e1a02001 	mov	r2, r1
     888:	e1a01000 	mov	r1, r0
     88c:	e3a00008 	mov	r0, #8
     890:	ef000000 	svc	0x00000000
     894:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     898:	e12fff1e 	bx	lr

0000089c <link>:
     89c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a0:	e1a04003 	mov	r4, r3
     8a4:	e1a03002 	mov	r3, r2
     8a8:	e1a02001 	mov	r2, r1
     8ac:	e1a01000 	mov	r1, r0
     8b0:	e3a00013 	mov	r0, #19
     8b4:	ef000000 	svc	0x00000000
     8b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8bc:	e12fff1e 	bx	lr

000008c0 <mkdir>:
     8c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8c4:	e1a04003 	mov	r4, r3
     8c8:	e1a03002 	mov	r3, r2
     8cc:	e1a02001 	mov	r2, r1
     8d0:	e1a01000 	mov	r1, r0
     8d4:	e3a00014 	mov	r0, #20
     8d8:	ef000000 	svc	0x00000000
     8dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e0:	e12fff1e 	bx	lr

000008e4 <chdir>:
     8e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8e8:	e1a04003 	mov	r4, r3
     8ec:	e1a03002 	mov	r3, r2
     8f0:	e1a02001 	mov	r2, r1
     8f4:	e1a01000 	mov	r1, r0
     8f8:	e3a00009 	mov	r0, #9
     8fc:	ef000000 	svc	0x00000000
     900:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     904:	e12fff1e 	bx	lr

00000908 <dup>:
     908:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     90c:	e1a04003 	mov	r4, r3
     910:	e1a03002 	mov	r3, r2
     914:	e1a02001 	mov	r2, r1
     918:	e1a01000 	mov	r1, r0
     91c:	e3a0000a 	mov	r0, #10
     920:	ef000000 	svc	0x00000000
     924:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     928:	e12fff1e 	bx	lr

0000092c <getpid>:
     92c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     930:	e1a04003 	mov	r4, r3
     934:	e1a03002 	mov	r3, r2
     938:	e1a02001 	mov	r2, r1
     93c:	e1a01000 	mov	r1, r0
     940:	e3a0000b 	mov	r0, #11
     944:	ef000000 	svc	0x00000000
     948:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     94c:	e12fff1e 	bx	lr

00000950 <sbrk>:
     950:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     954:	e1a04003 	mov	r4, r3
     958:	e1a03002 	mov	r3, r2
     95c:	e1a02001 	mov	r2, r1
     960:	e1a01000 	mov	r1, r0
     964:	e3a0000c 	mov	r0, #12
     968:	ef000000 	svc	0x00000000
     96c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     970:	e12fff1e 	bx	lr

00000974 <sleep>:
     974:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     978:	e1a04003 	mov	r4, r3
     97c:	e1a03002 	mov	r3, r2
     980:	e1a02001 	mov	r2, r1
     984:	e1a01000 	mov	r1, r0
     988:	e3a0000d 	mov	r0, #13
     98c:	ef000000 	svc	0x00000000
     990:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     994:	e12fff1e 	bx	lr

00000998 <uptime>:
     998:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     99c:	e1a04003 	mov	r4, r3
     9a0:	e1a03002 	mov	r3, r2
     9a4:	e1a02001 	mov	r2, r1
     9a8:	e1a01000 	mov	r1, r0
     9ac:	e3a0000e 	mov	r0, #14
     9b0:	ef000000 	svc	0x00000000
     9b4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9b8:	e12fff1e 	bx	lr

000009bc <getprocs>:
     9bc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c0:	e1a04003 	mov	r4, r3
     9c4:	e1a03002 	mov	r3, r2
     9c8:	e1a02001 	mov	r2, r1
     9cc:	e1a01000 	mov	r1, r0
     9d0:	e3a00016 	mov	r0, #22
     9d4:	ef000000 	svc	0x00000000
     9d8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9dc:	e12fff1e 	bx	lr

000009e0 <settickets>:
     9e0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9e4:	e1a04003 	mov	r4, r3
     9e8:	e1a03002 	mov	r3, r2
     9ec:	e1a02001 	mov	r2, r1
     9f0:	e1a01000 	mov	r1, r0
     9f4:	e3a00017 	mov	r0, #23
     9f8:	ef000000 	svc	0x00000000
     9fc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a00:	e12fff1e 	bx	lr

00000a04 <srand>:
     a04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a08:	e1a04003 	mov	r4, r3
     a0c:	e1a03002 	mov	r3, r2
     a10:	e1a02001 	mov	r2, r1
     a14:	e1a01000 	mov	r1, r0
     a18:	e3a00018 	mov	r0, #24
     a1c:	ef000000 	svc	0x00000000
     a20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a24:	e12fff1e 	bx	lr

00000a28 <getpinfo>:
     a28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a2c:	e1a04003 	mov	r4, r3
     a30:	e1a03002 	mov	r3, r2
     a34:	e1a02001 	mov	r2, r1
     a38:	e1a01000 	mov	r1, r0
     a3c:	e3a00019 	mov	r0, #25
     a40:	ef000000 	svc	0x00000000
     a44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a48:	e12fff1e 	bx	lr

00000a4c <putc>:
     a4c:	e92d4800 	push	{fp, lr}
     a50:	e28db004 	add	fp, sp, #4
     a54:	e24dd008 	sub	sp, sp, #8
     a58:	e50b0008 	str	r0, [fp, #-8]
     a5c:	e1a03001 	mov	r3, r1
     a60:	e54b3009 	strb	r3, [fp, #-9]
     a64:	e24b3009 	sub	r3, fp, #9
     a68:	e3a02001 	mov	r2, #1
     a6c:	e1a01003 	mov	r1, r3
     a70:	e51b0008 	ldr	r0, [fp, #-8]
     a74:	ebffff40 	bl	77c <write>
     a78:	e1a00000 	nop			@ (mov r0, r0)
     a7c:	e24bd004 	sub	sp, fp, #4
     a80:	e8bd8800 	pop	{fp, pc}

00000a84 <printint>:
     a84:	e92d4800 	push	{fp, lr}
     a88:	e28db004 	add	fp, sp, #4
     a8c:	e24dd030 	sub	sp, sp, #48	@ 0x30
     a90:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     a94:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     a98:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     a9c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     aa0:	e3a03000 	mov	r3, #0
     aa4:	e50b300c 	str	r3, [fp, #-12]
     aa8:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     aac:	e3530000 	cmp	r3, #0
     ab0:	0a000008 	beq	ad8 <printint+0x54>
     ab4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ab8:	e3530000 	cmp	r3, #0
     abc:	aa000005 	bge	ad8 <printint+0x54>
     ac0:	e3a03001 	mov	r3, #1
     ac4:	e50b300c 	str	r3, [fp, #-12]
     ac8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     acc:	e2633000 	rsb	r3, r3, #0
     ad0:	e50b3010 	str	r3, [fp, #-16]
     ad4:	ea000001 	b	ae0 <printint+0x5c>
     ad8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     adc:	e50b3010 	str	r3, [fp, #-16]
     ae0:	e3a03000 	mov	r3, #0
     ae4:	e50b3008 	str	r3, [fp, #-8]
     ae8:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     aec:	e51b3010 	ldr	r3, [fp, #-16]
     af0:	e1a01002 	mov	r1, r2
     af4:	e1a00003 	mov	r0, r3
     af8:	eb0001d5 	bl	1254 <__aeabi_uidivmod>
     afc:	e1a03001 	mov	r3, r1
     b00:	e1a01003 	mov	r1, r3
     b04:	e51b3008 	ldr	r3, [fp, #-8]
     b08:	e2832001 	add	r2, r3, #1
     b0c:	e50b2008 	str	r2, [fp, #-8]
     b10:	e59f20a0 	ldr	r2, [pc, #160]	@ bb8 <printint+0x134>
     b14:	e7d22001 	ldrb	r2, [r2, r1]
     b18:	e2433004 	sub	r3, r3, #4
     b1c:	e083300b 	add	r3, r3, fp
     b20:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     b24:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     b28:	e1a01003 	mov	r1, r3
     b2c:	e51b0010 	ldr	r0, [fp, #-16]
     b30:	eb00018a 	bl	1160 <__udivsi3>
     b34:	e1a03000 	mov	r3, r0
     b38:	e50b3010 	str	r3, [fp, #-16]
     b3c:	e51b3010 	ldr	r3, [fp, #-16]
     b40:	e3530000 	cmp	r3, #0
     b44:	1affffe7 	bne	ae8 <printint+0x64>
     b48:	e51b300c 	ldr	r3, [fp, #-12]
     b4c:	e3530000 	cmp	r3, #0
     b50:	0a00000e 	beq	b90 <printint+0x10c>
     b54:	e51b3008 	ldr	r3, [fp, #-8]
     b58:	e2832001 	add	r2, r3, #1
     b5c:	e50b2008 	str	r2, [fp, #-8]
     b60:	e2433004 	sub	r3, r3, #4
     b64:	e083300b 	add	r3, r3, fp
     b68:	e3a0202d 	mov	r2, #45	@ 0x2d
     b6c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     b70:	ea000006 	b	b90 <printint+0x10c>
     b74:	e24b2020 	sub	r2, fp, #32
     b78:	e51b3008 	ldr	r3, [fp, #-8]
     b7c:	e0823003 	add	r3, r2, r3
     b80:	e5d33000 	ldrb	r3, [r3]
     b84:	e1a01003 	mov	r1, r3
     b88:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     b8c:	ebffffae 	bl	a4c <putc>
     b90:	e51b3008 	ldr	r3, [fp, #-8]
     b94:	e2433001 	sub	r3, r3, #1
     b98:	e50b3008 	str	r3, [fp, #-8]
     b9c:	e51b3008 	ldr	r3, [fp, #-8]
     ba0:	e3530000 	cmp	r3, #0
     ba4:	aafffff2 	bge	b74 <printint+0xf0>
     ba8:	e1a00000 	nop			@ (mov r0, r0)
     bac:	e1a00000 	nop			@ (mov r0, r0)
     bb0:	e24bd004 	sub	sp, fp, #4
     bb4:	e8bd8800 	pop	{fp, pc}
     bb8:	000012d4 	.word	0x000012d4

00000bbc <printf>:
     bbc:	e92d000e 	push	{r1, r2, r3}
     bc0:	e92d4800 	push	{fp, lr}
     bc4:	e28db004 	add	fp, sp, #4
     bc8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     bcc:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     bd0:	e3a03000 	mov	r3, #0
     bd4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     bd8:	e28b3008 	add	r3, fp, #8
     bdc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     be0:	e3a03000 	mov	r3, #0
     be4:	e50b3010 	str	r3, [fp, #-16]
     be8:	ea000074 	b	dc0 <printf+0x204>
     bec:	e59b2004 	ldr	r2, [fp, #4]
     bf0:	e51b3010 	ldr	r3, [fp, #-16]
     bf4:	e0823003 	add	r3, r2, r3
     bf8:	e5d33000 	ldrb	r3, [r3]
     bfc:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     c00:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     c04:	e3530000 	cmp	r3, #0
     c08:	1a00000b 	bne	c3c <printf+0x80>
     c0c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c10:	e3530025 	cmp	r3, #37	@ 0x25
     c14:	1a000002 	bne	c24 <printf+0x68>
     c18:	e3a03025 	mov	r3, #37	@ 0x25
     c1c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c20:	ea000063 	b	db4 <printf+0x1f8>
     c24:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c28:	e6ef3073 	uxtb	r3, r3
     c2c:	e1a01003 	mov	r1, r3
     c30:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c34:	ebffff84 	bl	a4c <putc>
     c38:	ea00005d 	b	db4 <printf+0x1f8>
     c3c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     c40:	e3530025 	cmp	r3, #37	@ 0x25
     c44:	1a00005a 	bne	db4 <printf+0x1f8>
     c48:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c4c:	e3530064 	cmp	r3, #100	@ 0x64
     c50:	1a00000a 	bne	c80 <printf+0xc4>
     c54:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c58:	e5933000 	ldr	r3, [r3]
     c5c:	e1a01003 	mov	r1, r3
     c60:	e3a03001 	mov	r3, #1
     c64:	e3a0200a 	mov	r2, #10
     c68:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c6c:	ebffff84 	bl	a84 <printint>
     c70:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c74:	e2833004 	add	r3, r3, #4
     c78:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c7c:	ea00004a 	b	dac <printf+0x1f0>
     c80:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c84:	e3530078 	cmp	r3, #120	@ 0x78
     c88:	0a000002 	beq	c98 <printf+0xdc>
     c8c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c90:	e3530070 	cmp	r3, #112	@ 0x70
     c94:	1a00000a 	bne	cc4 <printf+0x108>
     c98:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c9c:	e5933000 	ldr	r3, [r3]
     ca0:	e1a01003 	mov	r1, r3
     ca4:	e3a03000 	mov	r3, #0
     ca8:	e3a02010 	mov	r2, #16
     cac:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cb0:	ebffff73 	bl	a84 <printint>
     cb4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cb8:	e2833004 	add	r3, r3, #4
     cbc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     cc0:	ea000039 	b	dac <printf+0x1f0>
     cc4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cc8:	e3530073 	cmp	r3, #115	@ 0x73
     ccc:	1a000018 	bne	d34 <printf+0x178>
     cd0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cd4:	e5933000 	ldr	r3, [r3]
     cd8:	e50b300c 	str	r3, [fp, #-12]
     cdc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ce0:	e2833004 	add	r3, r3, #4
     ce4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ce8:	e51b300c 	ldr	r3, [fp, #-12]
     cec:	e3530000 	cmp	r3, #0
     cf0:	1a00000a 	bne	d20 <printf+0x164>
     cf4:	e59f30f4 	ldr	r3, [pc, #244]	@ df0 <printf+0x234>
     cf8:	e50b300c 	str	r3, [fp, #-12]
     cfc:	ea000007 	b	d20 <printf+0x164>
     d00:	e51b300c 	ldr	r3, [fp, #-12]
     d04:	e5d33000 	ldrb	r3, [r3]
     d08:	e1a01003 	mov	r1, r3
     d0c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d10:	ebffff4d 	bl	a4c <putc>
     d14:	e51b300c 	ldr	r3, [fp, #-12]
     d18:	e2833001 	add	r3, r3, #1
     d1c:	e50b300c 	str	r3, [fp, #-12]
     d20:	e51b300c 	ldr	r3, [fp, #-12]
     d24:	e5d33000 	ldrb	r3, [r3]
     d28:	e3530000 	cmp	r3, #0
     d2c:	1afffff3 	bne	d00 <printf+0x144>
     d30:	ea00001d 	b	dac <printf+0x1f0>
     d34:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d38:	e3530063 	cmp	r3, #99	@ 0x63
     d3c:	1a000009 	bne	d68 <printf+0x1ac>
     d40:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d44:	e5933000 	ldr	r3, [r3]
     d48:	e6ef3073 	uxtb	r3, r3
     d4c:	e1a01003 	mov	r1, r3
     d50:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d54:	ebffff3c 	bl	a4c <putc>
     d58:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d5c:	e2833004 	add	r3, r3, #4
     d60:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d64:	ea000010 	b	dac <printf+0x1f0>
     d68:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d6c:	e3530025 	cmp	r3, #37	@ 0x25
     d70:	1a000005 	bne	d8c <printf+0x1d0>
     d74:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d78:	e6ef3073 	uxtb	r3, r3
     d7c:	e1a01003 	mov	r1, r3
     d80:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d84:	ebffff30 	bl	a4c <putc>
     d88:	ea000007 	b	dac <printf+0x1f0>
     d8c:	e3a01025 	mov	r1, #37	@ 0x25
     d90:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d94:	ebffff2c 	bl	a4c <putc>
     d98:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d9c:	e6ef3073 	uxtb	r3, r3
     da0:	e1a01003 	mov	r1, r3
     da4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     da8:	ebffff27 	bl	a4c <putc>
     dac:	e3a03000 	mov	r3, #0
     db0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     db4:	e51b3010 	ldr	r3, [fp, #-16]
     db8:	e2833001 	add	r3, r3, #1
     dbc:	e50b3010 	str	r3, [fp, #-16]
     dc0:	e59b2004 	ldr	r2, [fp, #4]
     dc4:	e51b3010 	ldr	r3, [fp, #-16]
     dc8:	e0823003 	add	r3, r2, r3
     dcc:	e5d33000 	ldrb	r3, [r3]
     dd0:	e3530000 	cmp	r3, #0
     dd4:	1affff84 	bne	bec <printf+0x30>
     dd8:	e1a00000 	nop			@ (mov r0, r0)
     ddc:	e1a00000 	nop			@ (mov r0, r0)
     de0:	e24bd004 	sub	sp, fp, #4
     de4:	e8bd4800 	pop	{fp, lr}
     de8:	e28dd00c 	add	sp, sp, #12
     dec:	e12fff1e 	bx	lr
     df0:	000012cc 	.word	0x000012cc

00000df4 <free>:
     df4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     df8:	e28db000 	add	fp, sp, #0
     dfc:	e24dd014 	sub	sp, sp, #20
     e00:	e50b0010 	str	r0, [fp, #-16]
     e04:	e51b3010 	ldr	r3, [fp, #-16]
     e08:	e2433008 	sub	r3, r3, #8
     e0c:	e50b300c 	str	r3, [fp, #-12]
     e10:	e59f3154 	ldr	r3, [pc, #340]	@ f6c <free+0x178>
     e14:	e5933000 	ldr	r3, [r3]
     e18:	e50b3008 	str	r3, [fp, #-8]
     e1c:	ea000010 	b	e64 <free+0x70>
     e20:	e51b3008 	ldr	r3, [fp, #-8]
     e24:	e5933000 	ldr	r3, [r3]
     e28:	e51b2008 	ldr	r2, [fp, #-8]
     e2c:	e1520003 	cmp	r2, r3
     e30:	3a000008 	bcc	e58 <free+0x64>
     e34:	e51b200c 	ldr	r2, [fp, #-12]
     e38:	e51b3008 	ldr	r3, [fp, #-8]
     e3c:	e1520003 	cmp	r2, r3
     e40:	8a000010 	bhi	e88 <free+0x94>
     e44:	e51b3008 	ldr	r3, [fp, #-8]
     e48:	e5933000 	ldr	r3, [r3]
     e4c:	e51b200c 	ldr	r2, [fp, #-12]
     e50:	e1520003 	cmp	r2, r3
     e54:	3a00000b 	bcc	e88 <free+0x94>
     e58:	e51b3008 	ldr	r3, [fp, #-8]
     e5c:	e5933000 	ldr	r3, [r3]
     e60:	e50b3008 	str	r3, [fp, #-8]
     e64:	e51b200c 	ldr	r2, [fp, #-12]
     e68:	e51b3008 	ldr	r3, [fp, #-8]
     e6c:	e1520003 	cmp	r2, r3
     e70:	9affffea 	bls	e20 <free+0x2c>
     e74:	e51b3008 	ldr	r3, [fp, #-8]
     e78:	e5933000 	ldr	r3, [r3]
     e7c:	e51b200c 	ldr	r2, [fp, #-12]
     e80:	e1520003 	cmp	r2, r3
     e84:	2affffe5 	bcs	e20 <free+0x2c>
     e88:	e51b300c 	ldr	r3, [fp, #-12]
     e8c:	e5933004 	ldr	r3, [r3, #4]
     e90:	e1a03183 	lsl	r3, r3, #3
     e94:	e51b200c 	ldr	r2, [fp, #-12]
     e98:	e0822003 	add	r2, r2, r3
     e9c:	e51b3008 	ldr	r3, [fp, #-8]
     ea0:	e5933000 	ldr	r3, [r3]
     ea4:	e1520003 	cmp	r2, r3
     ea8:	1a00000d 	bne	ee4 <free+0xf0>
     eac:	e51b300c 	ldr	r3, [fp, #-12]
     eb0:	e5932004 	ldr	r2, [r3, #4]
     eb4:	e51b3008 	ldr	r3, [fp, #-8]
     eb8:	e5933000 	ldr	r3, [r3]
     ebc:	e5933004 	ldr	r3, [r3, #4]
     ec0:	e0822003 	add	r2, r2, r3
     ec4:	e51b300c 	ldr	r3, [fp, #-12]
     ec8:	e5832004 	str	r2, [r3, #4]
     ecc:	e51b3008 	ldr	r3, [fp, #-8]
     ed0:	e5933000 	ldr	r3, [r3]
     ed4:	e5932000 	ldr	r2, [r3]
     ed8:	e51b300c 	ldr	r3, [fp, #-12]
     edc:	e5832000 	str	r2, [r3]
     ee0:	ea000003 	b	ef4 <free+0x100>
     ee4:	e51b3008 	ldr	r3, [fp, #-8]
     ee8:	e5932000 	ldr	r2, [r3]
     eec:	e51b300c 	ldr	r3, [fp, #-12]
     ef0:	e5832000 	str	r2, [r3]
     ef4:	e51b3008 	ldr	r3, [fp, #-8]
     ef8:	e5933004 	ldr	r3, [r3, #4]
     efc:	e1a03183 	lsl	r3, r3, #3
     f00:	e51b2008 	ldr	r2, [fp, #-8]
     f04:	e0823003 	add	r3, r2, r3
     f08:	e51b200c 	ldr	r2, [fp, #-12]
     f0c:	e1520003 	cmp	r2, r3
     f10:	1a00000b 	bne	f44 <free+0x150>
     f14:	e51b3008 	ldr	r3, [fp, #-8]
     f18:	e5932004 	ldr	r2, [r3, #4]
     f1c:	e51b300c 	ldr	r3, [fp, #-12]
     f20:	e5933004 	ldr	r3, [r3, #4]
     f24:	e0822003 	add	r2, r2, r3
     f28:	e51b3008 	ldr	r3, [fp, #-8]
     f2c:	e5832004 	str	r2, [r3, #4]
     f30:	e51b300c 	ldr	r3, [fp, #-12]
     f34:	e5932000 	ldr	r2, [r3]
     f38:	e51b3008 	ldr	r3, [fp, #-8]
     f3c:	e5832000 	str	r2, [r3]
     f40:	ea000002 	b	f50 <free+0x15c>
     f44:	e51b3008 	ldr	r3, [fp, #-8]
     f48:	e51b200c 	ldr	r2, [fp, #-12]
     f4c:	e5832000 	str	r2, [r3]
     f50:	e59f2014 	ldr	r2, [pc, #20]	@ f6c <free+0x178>
     f54:	e51b3008 	ldr	r3, [fp, #-8]
     f58:	e5823000 	str	r3, [r2]
     f5c:	e1a00000 	nop			@ (mov r0, r0)
     f60:	e28bd000 	add	sp, fp, #0
     f64:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     f68:	e12fff1e 	bx	lr
     f6c:	000012f0 	.word	0x000012f0

00000f70 <morecore>:
     f70:	e92d4800 	push	{fp, lr}
     f74:	e28db004 	add	fp, sp, #4
     f78:	e24dd010 	sub	sp, sp, #16
     f7c:	e50b0010 	str	r0, [fp, #-16]
     f80:	e51b3010 	ldr	r3, [fp, #-16]
     f84:	e3530a01 	cmp	r3, #4096	@ 0x1000
     f88:	2a000001 	bcs	f94 <morecore+0x24>
     f8c:	e3a03a01 	mov	r3, #4096	@ 0x1000
     f90:	e50b3010 	str	r3, [fp, #-16]
     f94:	e51b3010 	ldr	r3, [fp, #-16]
     f98:	e1a03183 	lsl	r3, r3, #3
     f9c:	e1a00003 	mov	r0, r3
     fa0:	ebfffe6a 	bl	950 <sbrk>
     fa4:	e50b0008 	str	r0, [fp, #-8]
     fa8:	e51b3008 	ldr	r3, [fp, #-8]
     fac:	e3730001 	cmn	r3, #1
     fb0:	1a000001 	bne	fbc <morecore+0x4c>
     fb4:	e3a03000 	mov	r3, #0
     fb8:	ea00000a 	b	fe8 <morecore+0x78>
     fbc:	e51b3008 	ldr	r3, [fp, #-8]
     fc0:	e50b300c 	str	r3, [fp, #-12]
     fc4:	e51b300c 	ldr	r3, [fp, #-12]
     fc8:	e51b2010 	ldr	r2, [fp, #-16]
     fcc:	e5832004 	str	r2, [r3, #4]
     fd0:	e51b300c 	ldr	r3, [fp, #-12]
     fd4:	e2833008 	add	r3, r3, #8
     fd8:	e1a00003 	mov	r0, r3
     fdc:	ebffff84 	bl	df4 <free>
     fe0:	e59f300c 	ldr	r3, [pc, #12]	@ ff4 <morecore+0x84>
     fe4:	e5933000 	ldr	r3, [r3]
     fe8:	e1a00003 	mov	r0, r3
     fec:	e24bd004 	sub	sp, fp, #4
     ff0:	e8bd8800 	pop	{fp, pc}
     ff4:	000012f0 	.word	0x000012f0

00000ff8 <malloc>:
     ff8:	e92d4800 	push	{fp, lr}
     ffc:	e28db004 	add	fp, sp, #4
    1000:	e24dd018 	sub	sp, sp, #24
    1004:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1008:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    100c:	e2833007 	add	r3, r3, #7
    1010:	e1a031a3 	lsr	r3, r3, #3
    1014:	e2833001 	add	r3, r3, #1
    1018:	e50b3010 	str	r3, [fp, #-16]
    101c:	e59f3134 	ldr	r3, [pc, #308]	@ 1158 <malloc+0x160>
    1020:	e5933000 	ldr	r3, [r3]
    1024:	e50b300c 	str	r3, [fp, #-12]
    1028:	e51b300c 	ldr	r3, [fp, #-12]
    102c:	e3530000 	cmp	r3, #0
    1030:	1a00000b 	bne	1064 <malloc+0x6c>
    1034:	e59f3120 	ldr	r3, [pc, #288]	@ 115c <malloc+0x164>
    1038:	e50b300c 	str	r3, [fp, #-12]
    103c:	e59f2114 	ldr	r2, [pc, #276]	@ 1158 <malloc+0x160>
    1040:	e51b300c 	ldr	r3, [fp, #-12]
    1044:	e5823000 	str	r3, [r2]
    1048:	e59f3108 	ldr	r3, [pc, #264]	@ 1158 <malloc+0x160>
    104c:	e5933000 	ldr	r3, [r3]
    1050:	e59f2104 	ldr	r2, [pc, #260]	@ 115c <malloc+0x164>
    1054:	e5823000 	str	r3, [r2]
    1058:	e59f30fc 	ldr	r3, [pc, #252]	@ 115c <malloc+0x164>
    105c:	e3a02000 	mov	r2, #0
    1060:	e5832004 	str	r2, [r3, #4]
    1064:	e51b300c 	ldr	r3, [fp, #-12]
    1068:	e5933000 	ldr	r3, [r3]
    106c:	e50b3008 	str	r3, [fp, #-8]
    1070:	e51b3008 	ldr	r3, [fp, #-8]
    1074:	e5933004 	ldr	r3, [r3, #4]
    1078:	e51b2010 	ldr	r2, [fp, #-16]
    107c:	e1520003 	cmp	r2, r3
    1080:	8a00001e 	bhi	1100 <malloc+0x108>
    1084:	e51b3008 	ldr	r3, [fp, #-8]
    1088:	e5933004 	ldr	r3, [r3, #4]
    108c:	e51b2010 	ldr	r2, [fp, #-16]
    1090:	e1520003 	cmp	r2, r3
    1094:	1a000004 	bne	10ac <malloc+0xb4>
    1098:	e51b3008 	ldr	r3, [fp, #-8]
    109c:	e5932000 	ldr	r2, [r3]
    10a0:	e51b300c 	ldr	r3, [fp, #-12]
    10a4:	e5832000 	str	r2, [r3]
    10a8:	ea00000e 	b	10e8 <malloc+0xf0>
    10ac:	e51b3008 	ldr	r3, [fp, #-8]
    10b0:	e5932004 	ldr	r2, [r3, #4]
    10b4:	e51b3010 	ldr	r3, [fp, #-16]
    10b8:	e0422003 	sub	r2, r2, r3
    10bc:	e51b3008 	ldr	r3, [fp, #-8]
    10c0:	e5832004 	str	r2, [r3, #4]
    10c4:	e51b3008 	ldr	r3, [fp, #-8]
    10c8:	e5933004 	ldr	r3, [r3, #4]
    10cc:	e1a03183 	lsl	r3, r3, #3
    10d0:	e51b2008 	ldr	r2, [fp, #-8]
    10d4:	e0823003 	add	r3, r2, r3
    10d8:	e50b3008 	str	r3, [fp, #-8]
    10dc:	e51b3008 	ldr	r3, [fp, #-8]
    10e0:	e51b2010 	ldr	r2, [fp, #-16]
    10e4:	e5832004 	str	r2, [r3, #4]
    10e8:	e59f2068 	ldr	r2, [pc, #104]	@ 1158 <malloc+0x160>
    10ec:	e51b300c 	ldr	r3, [fp, #-12]
    10f0:	e5823000 	str	r3, [r2]
    10f4:	e51b3008 	ldr	r3, [fp, #-8]
    10f8:	e2833008 	add	r3, r3, #8
    10fc:	ea000012 	b	114c <malloc+0x154>
    1100:	e59f3050 	ldr	r3, [pc, #80]	@ 1158 <malloc+0x160>
    1104:	e5933000 	ldr	r3, [r3]
    1108:	e51b2008 	ldr	r2, [fp, #-8]
    110c:	e1520003 	cmp	r2, r3
    1110:	1a000007 	bne	1134 <malloc+0x13c>
    1114:	e51b0010 	ldr	r0, [fp, #-16]
    1118:	ebffff94 	bl	f70 <morecore>
    111c:	e50b0008 	str	r0, [fp, #-8]
    1120:	e51b3008 	ldr	r3, [fp, #-8]
    1124:	e3530000 	cmp	r3, #0
    1128:	1a000001 	bne	1134 <malloc+0x13c>
    112c:	e3a03000 	mov	r3, #0
    1130:	ea000005 	b	114c <malloc+0x154>
    1134:	e51b3008 	ldr	r3, [fp, #-8]
    1138:	e50b300c 	str	r3, [fp, #-12]
    113c:	e51b3008 	ldr	r3, [fp, #-8]
    1140:	e5933000 	ldr	r3, [r3]
    1144:	e50b3008 	str	r3, [fp, #-8]
    1148:	eaffffc8 	b	1070 <malloc+0x78>
    114c:	e1a00003 	mov	r0, r3
    1150:	e24bd004 	sub	sp, fp, #4
    1154:	e8bd8800 	pop	{fp, pc}
    1158:	000012f0 	.word	0x000012f0
    115c:	000012e8 	.word	0x000012e8

00001160 <__udivsi3>:
    1160:	e2512001 	subs	r2, r1, #1
    1164:	012fff1e 	bxeq	lr
    1168:	3a000036 	bcc	1248 <__udivsi3+0xe8>
    116c:	e1500001 	cmp	r0, r1
    1170:	9a000022 	bls	1200 <__udivsi3+0xa0>
    1174:	e1110002 	tst	r1, r2
    1178:	0a000023 	beq	120c <__udivsi3+0xac>
    117c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1180:	01a01181 	lsleq	r1, r1, #3
    1184:	03a03008 	moveq	r3, #8
    1188:	13a03001 	movne	r3, #1
    118c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1190:	31510000 	cmpcc	r1, r0
    1194:	31a01201 	lslcc	r1, r1, #4
    1198:	31a03203 	lslcc	r3, r3, #4
    119c:	3afffffa 	bcc	118c <__udivsi3+0x2c>
    11a0:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    11a4:	31510000 	cmpcc	r1, r0
    11a8:	31a01081 	lslcc	r1, r1, #1
    11ac:	31a03083 	lslcc	r3, r3, #1
    11b0:	3afffffa 	bcc	11a0 <__udivsi3+0x40>
    11b4:	e3a02000 	mov	r2, #0
    11b8:	e1500001 	cmp	r0, r1
    11bc:	20400001 	subcs	r0, r0, r1
    11c0:	21822003 	orrcs	r2, r2, r3
    11c4:	e15000a1 	cmp	r0, r1, lsr #1
    11c8:	204000a1 	subcs	r0, r0, r1, lsr #1
    11cc:	218220a3 	orrcs	r2, r2, r3, lsr #1
    11d0:	e1500121 	cmp	r0, r1, lsr #2
    11d4:	20400121 	subcs	r0, r0, r1, lsr #2
    11d8:	21822123 	orrcs	r2, r2, r3, lsr #2
    11dc:	e15001a1 	cmp	r0, r1, lsr #3
    11e0:	204001a1 	subcs	r0, r0, r1, lsr #3
    11e4:	218221a3 	orrcs	r2, r2, r3, lsr #3
    11e8:	e3500000 	cmp	r0, #0
    11ec:	11b03223 	lsrsne	r3, r3, #4
    11f0:	11a01221 	lsrne	r1, r1, #4
    11f4:	1affffef 	bne	11b8 <__udivsi3+0x58>
    11f8:	e1a00002 	mov	r0, r2
    11fc:	e12fff1e 	bx	lr
    1200:	03a00001 	moveq	r0, #1
    1204:	13a00000 	movne	r0, #0
    1208:	e12fff1e 	bx	lr
    120c:	e3510801 	cmp	r1, #65536	@ 0x10000
    1210:	21a01821 	lsrcs	r1, r1, #16
    1214:	23a02010 	movcs	r2, #16
    1218:	33a02000 	movcc	r2, #0
    121c:	e3510c01 	cmp	r1, #256	@ 0x100
    1220:	21a01421 	lsrcs	r1, r1, #8
    1224:	22822008 	addcs	r2, r2, #8
    1228:	e3510010 	cmp	r1, #16
    122c:	21a01221 	lsrcs	r1, r1, #4
    1230:	22822004 	addcs	r2, r2, #4
    1234:	e3510004 	cmp	r1, #4
    1238:	82822003 	addhi	r2, r2, #3
    123c:	908220a1 	addls	r2, r2, r1, lsr #1
    1240:	e1a00230 	lsr	r0, r0, r2
    1244:	e12fff1e 	bx	lr
    1248:	e3500000 	cmp	r0, #0
    124c:	13e00000 	mvnne	r0, #0
    1250:	ea000007 	b	1274 <__aeabi_idiv0>

00001254 <__aeabi_uidivmod>:
    1254:	e3510000 	cmp	r1, #0
    1258:	0afffffa 	beq	1248 <__udivsi3+0xe8>
    125c:	e92d4003 	push	{r0, r1, lr}
    1260:	ebffffbe 	bl	1160 <__udivsi3>
    1264:	e8bd4006 	pop	{r1, r2, lr}
    1268:	e0030092 	mul	r3, r2, r0
    126c:	e0411003 	sub	r1, r1, r3
    1270:	e12fff1e 	bx	lr

00001274 <__aeabi_idiv0>:
    1274:	e12fff1e 	bx	lr
