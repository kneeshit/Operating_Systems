
kernel.elf:     file format elf32-littlearm


Disassembly of section .start_sec:

00010000 <_start>:
   10000:	e59f1030 	ldr	r1, [pc, #48]	@ 10038 <jump_stack+0x10>
   10004:	e59f2030 	ldr	r2, [pc, #48]	@ 1003c <jump_stack+0x14>
   10008:	e3a03000 	mov	r3, #0
   1000c:	e1510002 	cmp	r1, r2
   10010:	b8a10008 	stmialt	r1!, {r3}
   10014:	bafffffc 	blt	1000c <_start+0xc>
   10018:	e32ff0d3 	msr	CPSR_fsxc, #211	@ 0xd3
   1001c:	e59fd01c 	ldr	sp, [pc, #28]	@ 10040 <jump_stack+0x18>
   10020:	eb0000f9 	bl	1040c <start>
   10024:	eafffffe 	b	10024 <_start+0x24>

00010028 <jump_stack>:
   10028:	e1a0000d 	mov	r0, sp
   1002c:	e2800102 	add	r0, r0, #-2147483648	@ 0x80000000
   10030:	e1a0d000 	mov	sp, r0
   10034:	e1a0f00e 	mov	pc, lr
   10038:	00010570 	.word	0x00010570
   1003c:	00019000 	.word	0x00019000
   10040:	00012000 	.word	0x00012000

00010044 <_uart_putc>:
   10044:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
   10048:	e28db000 	add	fp, sp, #0
   1004c:	e24dd014 	sub	sp, sp, #20
   10050:	e50b0010 	str	r0, [fp, #-16]
   10054:	e59f3020 	ldr	r3, [pc, #32]	@ 1007c <_uart_putc+0x38>
   10058:	e50b3008 	str	r3, [fp, #-8]
   1005c:	e51b3010 	ldr	r3, [fp, #-16]
   10060:	e6ef2073 	uxtb	r2, r3
   10064:	e51b3008 	ldr	r3, [fp, #-8]
   10068:	e5c32000 	strb	r2, [r3]
   1006c:	e1a00000 	nop			@ (mov r0, r0)
   10070:	e28bd000 	add	sp, fp, #0
   10074:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
   10078:	e12fff1e 	bx	lr
   1007c:	101f1000 	.word	0x101f1000

00010080 <_puts>:
   10080:	e92d4800 	push	{fp, lr}
   10084:	e28db004 	add	fp, sp, #4
   10088:	e24dd008 	sub	sp, sp, #8
   1008c:	e50b0008 	str	r0, [fp, #-8]
   10090:	ea000006 	b	100b0 <_puts+0x30>
   10094:	e51b3008 	ldr	r3, [fp, #-8]
   10098:	e5d33000 	ldrb	r3, [r3]
   1009c:	e1a00003 	mov	r0, r3
   100a0:	ebffffe7 	bl	10044 <_uart_putc>
   100a4:	e51b3008 	ldr	r3, [fp, #-8]
   100a8:	e2833001 	add	r3, r3, #1
   100ac:	e50b3008 	str	r3, [fp, #-8]
   100b0:	e51b3008 	ldr	r3, [fp, #-8]
   100b4:	e5d33000 	ldrb	r3, [r3]
   100b8:	e3530000 	cmp	r3, #0
   100bc:	1afffff4 	bne	10094 <_puts+0x14>
   100c0:	e1a00000 	nop			@ (mov r0, r0)
   100c4:	e1a00000 	nop			@ (mov r0, r0)
   100c8:	e24bd004 	sub	sp, fp, #4
   100cc:	e8bd8800 	pop	{fp, pc}

000100d0 <_putint>:
   100d0:	e92d4800 	push	{fp, lr}
   100d4:	e28db004 	add	fp, sp, #4
   100d8:	e24dd018 	sub	sp, sp, #24
   100dc:	e50b0010 	str	r0, [fp, #-16]
   100e0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
   100e4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
   100e8:	e59f307c 	ldr	r3, [pc, #124]	@ 1016c <_putint+0x9c>
   100ec:	e50b300c 	str	r3, [fp, #-12]
   100f0:	e51b3010 	ldr	r3, [fp, #-16]
   100f4:	e3530000 	cmp	r3, #0
   100f8:	0a000001 	beq	10104 <_putint+0x34>
   100fc:	e51b0010 	ldr	r0, [fp, #-16]
   10100:	ebffffde 	bl	10080 <_puts>
   10104:	e3a0301c 	mov	r3, #28
   10108:	e50b3008 	str	r3, [fp, #-8]
   1010c:	ea00000b 	b	10140 <_putint+0x70>
   10110:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
   10114:	e51b3008 	ldr	r3, [fp, #-8]
   10118:	e1a03332 	lsr	r3, r2, r3
   1011c:	e203300f 	and	r3, r3, #15
   10120:	e51b200c 	ldr	r2, [fp, #-12]
   10124:	e0823003 	add	r3, r2, r3
   10128:	e5d33000 	ldrb	r3, [r3]
   1012c:	e1a00003 	mov	r0, r3
   10130:	ebffffc3 	bl	10044 <_uart_putc>
   10134:	e51b3008 	ldr	r3, [fp, #-8]
   10138:	e2433004 	sub	r3, r3, #4
   1013c:	e50b3008 	str	r3, [fp, #-8]
   10140:	e51b3008 	ldr	r3, [fp, #-8]
   10144:	e3530000 	cmp	r3, #0
   10148:	aafffff0 	bge	10110 <_putint+0x40>
   1014c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
   10150:	e3530000 	cmp	r3, #0
   10154:	0a000001 	beq	10160 <_putint+0x90>
   10158:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
   1015c:	ebffffc7 	bl	10080 <_puts>
   10160:	e1a00000 	nop			@ (mov r0, r0)
   10164:	e24bd004 	sub	sp, fp, #4
   10168:	e8bd8800 	pop	{fp, pc}
   1016c:	000104f8 	.word	0x000104f8

00010170 <get_pde>:
   10170:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
   10174:	e28db000 	add	fp, sp, #0
   10178:	e24dd00c 	sub	sp, sp, #12
   1017c:	e50b0008 	str	r0, [fp, #-8]
   10180:	e51b3008 	ldr	r3, [fp, #-8]
   10184:	e1a03a23 	lsr	r3, r3, #20
   10188:	e50b3008 	str	r3, [fp, #-8]
   1018c:	e59f3020 	ldr	r3, [pc, #32]	@ 101b4 <get_pde+0x44>
   10190:	e5932000 	ldr	r2, [r3]
   10194:	e51b3008 	ldr	r3, [fp, #-8]
   10198:	e1a03103 	lsl	r3, r3, #2
   1019c:	e0823003 	add	r3, r2, r3
   101a0:	e5933000 	ldr	r3, [r3]
   101a4:	e1a00003 	mov	r0, r3
   101a8:	e28bd000 	add	sp, fp, #0
   101ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
   101b0:	e12fff1e 	bx	lr
   101b4:	00010568 	.word	0x00010568

000101b8 <set_bootpgtbl>:
   101b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
   101bc:	e28db000 	add	fp, sp, #0
   101c0:	e24dd01c 	sub	sp, sp, #28
   101c4:	e50b0010 	str	r0, [fp, #-16]
   101c8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
   101cc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
   101d0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
   101d4:	e51b3010 	ldr	r3, [fp, #-16]
   101d8:	e1a03a23 	lsr	r3, r3, #20
   101dc:	e50b3010 	str	r3, [fp, #-16]
   101e0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
   101e4:	e1a03a23 	lsr	r3, r3, #20
   101e8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
   101ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
   101f0:	e1a03a23 	lsr	r3, r3, #20
   101f4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
   101f8:	e3a03000 	mov	r3, #0
   101fc:	e50b300c 	str	r3, [fp, #-12]
   10200:	ea000029 	b	102ac <set_bootpgtbl+0xf4>
   10204:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
   10208:	e1a03a03 	lsl	r3, r3, #20
   1020c:	e50b3008 	str	r3, [fp, #-8]
   10210:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
   10214:	e3530000 	cmp	r3, #0
   10218:	1a000004 	bne	10230 <set_bootpgtbl+0x78>
   1021c:	e51b3008 	ldr	r3, [fp, #-8]
   10220:	e3833b01 	orr	r3, r3, #1024	@ 0x400
   10224:	e383300e 	orr	r3, r3, #14
   10228:	e50b3008 	str	r3, [fp, #-8]
   1022c:	ea000003 	b	10240 <set_bootpgtbl+0x88>
   10230:	e51b3008 	ldr	r3, [fp, #-8]
   10234:	e3833b01 	orr	r3, r3, #1024	@ 0x400
   10238:	e3833002 	orr	r3, r3, #2
   1023c:	e50b3008 	str	r3, [fp, #-8]
   10240:	e51b3010 	ldr	r3, [fp, #-16]
   10244:	e35300ff 	cmp	r3, #255	@ 0xff
   10248:	8a000007 	bhi	1026c <set_bootpgtbl+0xb4>
   1024c:	e59f307c 	ldr	r3, [pc, #124]	@ 102d0 <set_bootpgtbl+0x118>
   10250:	e5932000 	ldr	r2, [r3]
   10254:	e51b3010 	ldr	r3, [fp, #-16]
   10258:	e1a03103 	lsl	r3, r3, #2
   1025c:	e0823003 	add	r3, r2, r3
   10260:	e51b2008 	ldr	r2, [fp, #-8]
   10264:	e5832000 	str	r2, [r3]
   10268:	ea000006 	b	10288 <set_bootpgtbl+0xd0>
   1026c:	e59f3060 	ldr	r3, [pc, #96]	@ 102d4 <set_bootpgtbl+0x11c>
   10270:	e5932000 	ldr	r2, [r3]
   10274:	e51b3010 	ldr	r3, [fp, #-16]
   10278:	e1a03103 	lsl	r3, r3, #2
   1027c:	e0823003 	add	r3, r2, r3
   10280:	e51b2008 	ldr	r2, [fp, #-8]
   10284:	e5832000 	str	r2, [r3]
   10288:	e51b3010 	ldr	r3, [fp, #-16]
   1028c:	e2833001 	add	r3, r3, #1
   10290:	e50b3010 	str	r3, [fp, #-16]
   10294:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
   10298:	e2833001 	add	r3, r3, #1
   1029c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
   102a0:	e51b300c 	ldr	r3, [fp, #-12]
   102a4:	e2833001 	add	r3, r3, #1
   102a8:	e50b300c 	str	r3, [fp, #-12]
   102ac:	e51b300c 	ldr	r3, [fp, #-12]
   102b0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
   102b4:	e1520003 	cmp	r2, r3
   102b8:	8affffd1 	bhi	10204 <set_bootpgtbl+0x4c>
   102bc:	e1a00000 	nop			@ (mov r0, r0)
   102c0:	e1a00000 	nop			@ (mov r0, r0)
   102c4:	e28bd000 	add	sp, fp, #0
   102c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
   102cc:	e12fff1e 	bx	lr
   102d0:	0001056c 	.word	0x0001056c
   102d4:	00010568 	.word	0x00010568

000102d8 <_flush_all>:
   102d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
   102dc:	e28db000 	add	fp, sp, #0
   102e0:	e24dd00c 	sub	sp, sp, #12
   102e4:	e3a03000 	mov	r3, #0
   102e8:	e50b3008 	str	r3, [fp, #-8]
   102ec:	e51b3008 	ldr	r3, [fp, #-8]
   102f0:	ee083f17 	mcr	15, 0, r3, cr8, cr7, {0}
   102f4:	e1a00000 	nop			@ (mov r0, r0)
   102f8:	e28bd000 	add	sp, fp, #0
   102fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
   10300:	e12fff1e 	bx	lr

00010304 <load_pgtlb>:
   10304:	e92d4800 	push	{fp, lr}
   10308:	e28db004 	add	fp, sp, #4
   1030c:	e24dd018 	sub	sp, sp, #24
   10310:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
   10314:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
   10318:	ee103f10 	mrc	15, 0, r3, cr0, cr0, {0}
   1031c:	e50b3008 	str	r3, [fp, #-8]
   10320:	e51b3008 	ldr	r3, [fp, #-8]
   10324:	e1a03823 	lsr	r3, r3, #16
   10328:	e6ef3073 	uxtb	r3, r3
   1032c:	e203300f 	and	r3, r3, #15
   10330:	e54b3009 	strb	r3, [fp, #-9]
   10334:	e55b3009 	ldrb	r3, [fp, #-9]
   10338:	e3530007 	cmp	r3, #7
   1033c:	0a000004 	beq	10354 <load_pgtlb+0x50>
   10340:	e55b3009 	ldrb	r3, [fp, #-9]
   10344:	e353000f 	cmp	r3, #15
   10348:	0a000001 	beq	10354 <load_pgtlb+0x50>
   1034c:	e59f0074 	ldr	r0, [pc, #116]	@ 103c8 <load_pgtlb+0xc4>
   10350:	ebffff4a 	bl	10080 <_puts>
   10354:	e59f3070 	ldr	r3, [pc, #112]	@ 103cc <load_pgtlb+0xc8>
   10358:	e50b3010 	str	r3, [fp, #-16]
   1035c:	e51b3010 	ldr	r3, [fp, #-16]
   10360:	ee033f10 	mcr	15, 0, r3, cr3, cr0, {0}
   10364:	e3a03004 	mov	r3, #4
   10368:	e50b3010 	str	r3, [fp, #-16]
   1036c:	e51b3010 	ldr	r3, [fp, #-16]
   10370:	ee023f50 	mcr	15, 0, r3, cr2, cr0, {2}
   10374:	e59f3054 	ldr	r3, [pc, #84]	@ 103d0 <load_pgtlb+0xcc>
   10378:	e5933000 	ldr	r3, [r3]
   1037c:	e50b3010 	str	r3, [fp, #-16]
   10380:	e51b3010 	ldr	r3, [fp, #-16]
   10384:	ee023f30 	mcr	15, 0, r3, cr2, cr0, {1}
   10388:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
   1038c:	e50b3010 	str	r3, [fp, #-16]
   10390:	e51b3010 	ldr	r3, [fp, #-16]
   10394:	ee023f10 	mcr	15, 0, r3, cr2, cr0, {0}
   10398:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
   1039c:	e50b3010 	str	r3, [fp, #-16]
   103a0:	e51b2010 	ldr	r2, [fp, #-16]
   103a4:	e59f3028 	ldr	r3, [pc, #40]	@ 103d4 <load_pgtlb+0xd0>
   103a8:	e1823003 	orr	r3, r2, r3
   103ac:	e50b3010 	str	r3, [fp, #-16]
   103b0:	e51b3010 	ldr	r3, [fp, #-16]
   103b4:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
   103b8:	ebffffc6 	bl	102d8 <_flush_all>
   103bc:	e1a00000 	nop			@ (mov r0, r0)
   103c0:	e24bd004 	sub	sp, fp, #4
   103c4:	e8bd8800 	pop	{fp, pc}
   103c8:	0001050c 	.word	0x0001050c
   103cc:	55555555 	.word	0x55555555
   103d0:	00010568 	.word	0x00010568
   103d4:	0080300d 	.word	0x0080300d

000103d8 <clear_bss>:
   103d8:	e92d4800 	push	{fp, lr}
   103dc:	e28db004 	add	fp, sp, #4
   103e0:	e59f201c 	ldr	r2, [pc, #28]	@ 10404 <clear_bss+0x2c>
   103e4:	e59f301c 	ldr	r3, [pc, #28]	@ 10408 <clear_bss+0x30>
   103e8:	e0423003 	sub	r3, r2, r3
   103ec:	e1a02003 	mov	r2, r3
   103f0:	e3a01000 	mov	r1, #0
   103f4:	e59f000c 	ldr	r0, [pc, #12]	@ 10408 <clear_bss+0x30>
   103f8:	eb000038 	bl	104e0 <__memset_veneer>
   103fc:	e1a00000 	nop			@ (mov r0, r0)
   10400:	e8bd8800 	pop	{fp, pc}
   10404:	800b1000 	.word	0x800b1000
   10408:	800ab120 	.word	0x800ab120

0001040c <start>:
   1040c:	e92d4800 	push	{fp, lr}
   10410:	e28db004 	add	fp, sp, #4
   10414:	e24dd008 	sub	sp, sp, #8
   10418:	e59f00a4 	ldr	r0, [pc, #164]	@ 104c4 <start+0xb8>
   1041c:	ebffff17 	bl	10080 <_puts>
   10420:	e3a03000 	mov	r3, #0
   10424:	e3a02601 	mov	r2, #1048576	@ 0x100000
   10428:	e3a01000 	mov	r1, #0
   1042c:	e3a00000 	mov	r0, #0
   10430:	ebffff60 	bl	101b8 <set_bootpgtbl>
   10434:	e3a03000 	mov	r3, #0
   10438:	e3a02601 	mov	r2, #1048576	@ 0x100000
   1043c:	e3a01000 	mov	r1, #0
   10440:	e3a00102 	mov	r0, #-2147483648	@ 0x80000000
   10444:	ebffff5b 	bl	101b8 <set_bootpgtbl>
   10448:	e59f3078 	ldr	r3, [pc, #120]	@ 104c8 <start+0xbc>
   1044c:	e50b3008 	str	r3, [fp, #-8]
   10450:	e59f2074 	ldr	r2, [pc, #116]	@ 104cc <start+0xc0>
   10454:	e51b3008 	ldr	r3, [fp, #-8]
   10458:	e1530002 	cmp	r3, r2
   1045c:	8a000001 	bhi	10468 <start+0x5c>
   10460:	e59f0068 	ldr	r0, [pc, #104]	@ 104d0 <start+0xc4>
   10464:	eb00001f 	bl	104e8 <__cprintf_veneer>
   10468:	e3a03000 	mov	r3, #0
   1046c:	e3a02601 	mov	r2, #1048576	@ 0x100000
   10470:	e3a01000 	mov	r1, #0
   10474:	e59f0058 	ldr	r0, [pc, #88]	@ 104d4 <start+0xc8>
   10478:	ebffff4e 	bl	101b8 <set_bootpgtbl>
   1047c:	e3a03001 	mov	r3, #1
   10480:	e3a02302 	mov	r2, #134217728	@ 0x8000000
   10484:	e3a01201 	mov	r1, #268435456	@ 0x10000000
   10488:	e3a00209 	mov	r0, #-1879048192	@ 0x90000000
   1048c:	ebffff49 	bl	101b8 <set_bootpgtbl>
   10490:	e59f3040 	ldr	r3, [pc, #64]	@ 104d8 <start+0xcc>
   10494:	e5933000 	ldr	r3, [r3]
   10498:	e59f203c 	ldr	r2, [pc, #60]	@ 104dc <start+0xd0>
   1049c:	e5922000 	ldr	r2, [r2]
   104a0:	e1a01002 	mov	r1, r2
   104a4:	e1a00003 	mov	r0, r3
   104a8:	ebffff95 	bl	10304 <load_pgtlb>
   104ac:	ebfffedd 	bl	10028 <jump_stack>
   104b0:	ebffffc8 	bl	103d8 <clear_bss>
   104b4:	eb00000d 	bl	104f0 <__kmain_veneer>
   104b8:	e1a00000 	nop			@ (mov r0, r0)
   104bc:	e24bd004 	sub	sp, fp, #4
   104c0:	e8bd8800 	pop	{fp, pc}
   104c4:	00010524 	.word	0x00010524
   104c8:	800f0000 	.word	0x800f0000
   104cc:	800b1000 	.word	0x800b1000
   104d0:	00010540 	.word	0x00010540
   104d4:	ffff0000 	.word	0xffff0000
   104d8:	00010568 	.word	0x00010568
   104dc:	0001056c 	.word	0x0001056c

000104e0 <__memset_veneer>:
   104e0:	e51ff004 	ldr	pc, [pc, #-4]	@ 104e4 <__memset_veneer+0x4>
   104e4:	80020000 	.word	0x80020000

000104e8 <__cprintf_veneer>:
   104e8:	e51ff004 	ldr	pc, [pc, #-4]	@ 104ec <__cprintf_veneer+0x4>
   104ec:	800219d4 	.word	0x800219d4

000104f0 <__kmain_veneer>:
   104f0:	e51ff004 	ldr	pc, [pc, #-4]	@ 104f4 <__kmain_veneer+0x4>
   104f4:	80024784 	.word	0x80024784
   104f8:	33323130 	.word	0x33323130
   104fc:	37363534 	.word	0x37363534
   10500:	42413938 	.word	0x42413938
   10504:	46454443 	.word	0x46454443
   10508:	00000000 	.word	0x00000000
   1050c:	6465656e 	.word	0x6465656e
   10510:	52414120 	.word	0x52414120
   10514:	3676204d 	.word	0x3676204d
   10518:	20726f20 	.word	0x20726f20
   1051c:	68676968 	.word	0x68676968
   10520:	000a7265 	.word	0x000a7265
   10524:	72617473 	.word	0x72617473
   10528:	676e6974 	.word	0x676e6974
   1052c:	36767820 	.word	0x36767820
   10530:	726f6620 	.word	0x726f6620
   10534:	4d524120 	.word	0x4d524120
   10538:	0a2e2e2e 	.word	0x0a2e2e2e
   1053c:	00000000 	.word	0x00000000
   10540:	6f727265 	.word	0x6f727265
   10544:	76203a72 	.word	0x76203a72
   10548:	6f746365 	.word	0x6f746365
   1054c:	61742072 	.word	0x61742072
   10550:	20656c62 	.word	0x20656c62
   10554:	7265766f 	.word	0x7265766f
   10558:	7370616c 	.word	0x7370616c
   1055c:	72656b20 	.word	0x72656b20
   10560:	0a6c656e 	.word	0x0a6c656e
   10564:	00000000 	.word	0x00000000

00010568 <kernel_pgtbl>:
   10568:	00014000                                .@..

0001056c <user_pgtbl>:
   1056c:	00018000                                ....

00010570 <edata_entry>:
	...

00012000 <svc_stktop>:
	...

00014000 <_kernel_pgtbl>:
	...

00018000 <_user_pgtbl>:
	...

Disassembly of section .text:

80020000 <memset>:
80020000:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020004:	e28db000 	add	fp, sp, #0
80020008:	e24dd024 	sub	sp, sp, #36	@ 0x24
8002000c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80020010:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80020014:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80020018:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002001c:	e50b3008 	str	r3, [fp, #-8]
80020020:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80020024:	e54b300d 	strb	r3, [fp, #-13]
80020028:	e55b200d 	ldrb	r2, [fp, #-13]
8002002c:	e1a03002 	mov	r3, r2
80020030:	e1a03403 	lsl	r3, r3, #8
80020034:	e0833002 	add	r3, r3, r2
80020038:	e1a03803 	lsl	r3, r3, #16
8002003c:	e1a02003 	mov	r2, r3
80020040:	e55b300d 	ldrb	r3, [fp, #-13]
80020044:	e1a03403 	lsl	r3, r3, #8
80020048:	e1822003 	orr	r2, r2, r3
8002004c:	e55b300d 	ldrb	r3, [fp, #-13]
80020050:	e1823003 	orr	r3, r2, r3
80020054:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80020058:	ea000008 	b	80020080 <memset+0x80>
8002005c:	e51b3008 	ldr	r3, [fp, #-8]
80020060:	e55b200d 	ldrb	r2, [fp, #-13]
80020064:	e5c32000 	strb	r2, [r3]
80020068:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002006c:	e2433001 	sub	r3, r3, #1
80020070:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
80020074:	e51b3008 	ldr	r3, [fp, #-8]
80020078:	e2833001 	add	r3, r3, #1
8002007c:	e50b3008 	str	r3, [fp, #-8]
80020080:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80020084:	e3530000 	cmp	r3, #0
80020088:	da000003 	ble	8002009c <memset+0x9c>
8002008c:	e51b3008 	ldr	r3, [fp, #-8]
80020090:	e2033003 	and	r3, r3, #3
80020094:	e3530000 	cmp	r3, #0
80020098:	1affffef 	bne	8002005c <memset+0x5c>
8002009c:	e51b3008 	ldr	r3, [fp, #-8]
800200a0:	e50b300c 	str	r3, [fp, #-12]
800200a4:	ea000008 	b	800200cc <memset+0xcc>
800200a8:	e51b300c 	ldr	r3, [fp, #-12]
800200ac:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800200b0:	e5832000 	str	r2, [r3]
800200b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800200b8:	e2433004 	sub	r3, r3, #4
800200bc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
800200c0:	e51b300c 	ldr	r3, [fp, #-12]
800200c4:	e2833004 	add	r3, r3, #4
800200c8:	e50b300c 	str	r3, [fp, #-12]
800200cc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800200d0:	e3530003 	cmp	r3, #3
800200d4:	cafffff3 	bgt	800200a8 <memset+0xa8>
800200d8:	e51b300c 	ldr	r3, [fp, #-12]
800200dc:	e50b3008 	str	r3, [fp, #-8]
800200e0:	ea000008 	b	80020108 <memset+0x108>
800200e4:	e51b3008 	ldr	r3, [fp, #-8]
800200e8:	e55b200d 	ldrb	r2, [fp, #-13]
800200ec:	e5c32000 	strb	r2, [r3]
800200f0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800200f4:	e2433001 	sub	r3, r3, #1
800200f8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
800200fc:	e51b3008 	ldr	r3, [fp, #-8]
80020100:	e2833001 	add	r3, r3, #1
80020104:	e50b3008 	str	r3, [fp, #-8]
80020108:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002010c:	e3530000 	cmp	r3, #0
80020110:	cafffff3 	bgt	800200e4 <memset+0xe4>
80020114:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020118:	e1a00003 	mov	r0, r3
8002011c:	e28bd000 	add	sp, fp, #0
80020120:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020124:	e12fff1e 	bx	lr

80020128 <memcmp>:
80020128:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002012c:	e28db000 	add	fp, sp, #0
80020130:	e24dd01c 	sub	sp, sp, #28
80020134:	e50b0010 	str	r0, [fp, #-16]
80020138:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
8002013c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80020140:	e51b3010 	ldr	r3, [fp, #-16]
80020144:	e50b3008 	str	r3, [fp, #-8]
80020148:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002014c:	e50b300c 	str	r3, [fp, #-12]
80020150:	ea000012 	b	800201a0 <memcmp+0x78>
80020154:	e51b3008 	ldr	r3, [fp, #-8]
80020158:	e5d32000 	ldrb	r2, [r3]
8002015c:	e51b300c 	ldr	r3, [fp, #-12]
80020160:	e5d33000 	ldrb	r3, [r3]
80020164:	e1520003 	cmp	r2, r3
80020168:	0a000006 	beq	80020188 <memcmp+0x60>
8002016c:	e51b3008 	ldr	r3, [fp, #-8]
80020170:	e5d33000 	ldrb	r3, [r3]
80020174:	e1a02003 	mov	r2, r3
80020178:	e51b300c 	ldr	r3, [fp, #-12]
8002017c:	e5d33000 	ldrb	r3, [r3]
80020180:	e0423003 	sub	r3, r2, r3
80020184:	ea00000b 	b	800201b8 <memcmp+0x90>
80020188:	e51b3008 	ldr	r3, [fp, #-8]
8002018c:	e2833001 	add	r3, r3, #1
80020190:	e50b3008 	str	r3, [fp, #-8]
80020194:	e51b300c 	ldr	r3, [fp, #-12]
80020198:	e2833001 	add	r3, r3, #1
8002019c:	e50b300c 	str	r3, [fp, #-12]
800201a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800201a4:	e2432001 	sub	r2, r3, #1
800201a8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800201ac:	e3530000 	cmp	r3, #0
800201b0:	1affffe7 	bne	80020154 <memcmp+0x2c>
800201b4:	e3a03000 	mov	r3, #0
800201b8:	e1a00003 	mov	r0, r3
800201bc:	e28bd000 	add	sp, fp, #0
800201c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800201c4:	e12fff1e 	bx	lr

800201c8 <memmove>:
800201c8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800201cc:	e28db000 	add	fp, sp, #0
800201d0:	e24dd01c 	sub	sp, sp, #28
800201d4:	e50b0010 	str	r0, [fp, #-16]
800201d8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800201dc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800201e0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800201e4:	e50b3008 	str	r3, [fp, #-8]
800201e8:	e51b3010 	ldr	r3, [fp, #-16]
800201ec:	e50b300c 	str	r3, [fp, #-12]
800201f0:	e51b2008 	ldr	r2, [fp, #-8]
800201f4:	e51b300c 	ldr	r3, [fp, #-12]
800201f8:	e1520003 	cmp	r2, r3
800201fc:	2a000026 	bcs	8002029c <memmove+0xd4>
80020200:	e51b2008 	ldr	r2, [fp, #-8]
80020204:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020208:	e0823003 	add	r3, r2, r3
8002020c:	e51b200c 	ldr	r2, [fp, #-12]
80020210:	e1520003 	cmp	r2, r3
80020214:	2a000020 	bcs	8002029c <memmove+0xd4>
80020218:	e51b2008 	ldr	r2, [fp, #-8]
8002021c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020220:	e0823003 	add	r3, r2, r3
80020224:	e50b3008 	str	r3, [fp, #-8]
80020228:	e51b200c 	ldr	r2, [fp, #-12]
8002022c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020230:	e0823003 	add	r3, r2, r3
80020234:	e50b300c 	str	r3, [fp, #-12]
80020238:	ea000009 	b	80020264 <memmove+0x9c>
8002023c:	e51b3008 	ldr	r3, [fp, #-8]
80020240:	e2433001 	sub	r3, r3, #1
80020244:	e50b3008 	str	r3, [fp, #-8]
80020248:	e51b300c 	ldr	r3, [fp, #-12]
8002024c:	e2433001 	sub	r3, r3, #1
80020250:	e50b300c 	str	r3, [fp, #-12]
80020254:	e51b3008 	ldr	r3, [fp, #-8]
80020258:	e5d32000 	ldrb	r2, [r3]
8002025c:	e51b300c 	ldr	r3, [fp, #-12]
80020260:	e5c32000 	strb	r2, [r3]
80020264:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020268:	e2432001 	sub	r2, r3, #1
8002026c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80020270:	e3530000 	cmp	r3, #0
80020274:	1afffff0 	bne	8002023c <memmove+0x74>
80020278:	ea00000c 	b	800202b0 <memmove+0xe8>
8002027c:	e51b2008 	ldr	r2, [fp, #-8]
80020280:	e2823001 	add	r3, r2, #1
80020284:	e50b3008 	str	r3, [fp, #-8]
80020288:	e51b300c 	ldr	r3, [fp, #-12]
8002028c:	e2831001 	add	r1, r3, #1
80020290:	e50b100c 	str	r1, [fp, #-12]
80020294:	e5d22000 	ldrb	r2, [r2]
80020298:	e5c32000 	strb	r2, [r3]
8002029c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800202a0:	e2432001 	sub	r2, r3, #1
800202a4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800202a8:	e3530000 	cmp	r3, #0
800202ac:	1afffff2 	bne	8002027c <memmove+0xb4>
800202b0:	e51b3010 	ldr	r3, [fp, #-16]
800202b4:	e1a00003 	mov	r0, r3
800202b8:	e28bd000 	add	sp, fp, #0
800202bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800202c0:	e12fff1e 	bx	lr

800202c4 <memcpy>:
800202c4:	e92d4800 	push	{fp, lr}
800202c8:	e28db004 	add	fp, sp, #4
800202cc:	e24dd010 	sub	sp, sp, #16
800202d0:	e50b0008 	str	r0, [fp, #-8]
800202d4:	e50b100c 	str	r1, [fp, #-12]
800202d8:	e50b2010 	str	r2, [fp, #-16]
800202dc:	e51b2010 	ldr	r2, [fp, #-16]
800202e0:	e51b100c 	ldr	r1, [fp, #-12]
800202e4:	e51b0008 	ldr	r0, [fp, #-8]
800202e8:	ebffffb6 	bl	800201c8 <memmove>
800202ec:	e1a03000 	mov	r3, r0
800202f0:	e1a00003 	mov	r0, r3
800202f4:	e24bd004 	sub	sp, fp, #4
800202f8:	e8bd8800 	pop	{fp, pc}

800202fc <strncmp>:
800202fc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020300:	e28db000 	add	fp, sp, #0
80020304:	e24dd014 	sub	sp, sp, #20
80020308:	e50b0008 	str	r0, [fp, #-8]
8002030c:	e50b100c 	str	r1, [fp, #-12]
80020310:	e50b2010 	str	r2, [fp, #-16]
80020314:	ea000008 	b	8002033c <strncmp+0x40>
80020318:	e51b3010 	ldr	r3, [fp, #-16]
8002031c:	e2433001 	sub	r3, r3, #1
80020320:	e50b3010 	str	r3, [fp, #-16]
80020324:	e51b3008 	ldr	r3, [fp, #-8]
80020328:	e2833001 	add	r3, r3, #1
8002032c:	e50b3008 	str	r3, [fp, #-8]
80020330:	e51b300c 	ldr	r3, [fp, #-12]
80020334:	e2833001 	add	r3, r3, #1
80020338:	e50b300c 	str	r3, [fp, #-12]
8002033c:	e51b3010 	ldr	r3, [fp, #-16]
80020340:	e3530000 	cmp	r3, #0
80020344:	0a000009 	beq	80020370 <strncmp+0x74>
80020348:	e51b3008 	ldr	r3, [fp, #-8]
8002034c:	e5d33000 	ldrb	r3, [r3]
80020350:	e3530000 	cmp	r3, #0
80020354:	0a000005 	beq	80020370 <strncmp+0x74>
80020358:	e51b3008 	ldr	r3, [fp, #-8]
8002035c:	e5d32000 	ldrb	r2, [r3]
80020360:	e51b300c 	ldr	r3, [fp, #-12]
80020364:	e5d33000 	ldrb	r3, [r3]
80020368:	e1520003 	cmp	r2, r3
8002036c:	0affffe9 	beq	80020318 <strncmp+0x1c>
80020370:	e51b3010 	ldr	r3, [fp, #-16]
80020374:	e3530000 	cmp	r3, #0
80020378:	1a000001 	bne	80020384 <strncmp+0x88>
8002037c:	e3a03000 	mov	r3, #0
80020380:	ea000005 	b	8002039c <strncmp+0xa0>
80020384:	e51b3008 	ldr	r3, [fp, #-8]
80020388:	e5d33000 	ldrb	r3, [r3]
8002038c:	e1a02003 	mov	r2, r3
80020390:	e51b300c 	ldr	r3, [fp, #-12]
80020394:	e5d33000 	ldrb	r3, [r3]
80020398:	e0423003 	sub	r3, r2, r3
8002039c:	e1a00003 	mov	r0, r3
800203a0:	e28bd000 	add	sp, fp, #0
800203a4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800203a8:	e12fff1e 	bx	lr

800203ac <strncpy>:
800203ac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800203b0:	e28db000 	add	fp, sp, #0
800203b4:	e24dd01c 	sub	sp, sp, #28
800203b8:	e50b0010 	str	r0, [fp, #-16]
800203bc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800203c0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800203c4:	e51b3010 	ldr	r3, [fp, #-16]
800203c8:	e50b3008 	str	r3, [fp, #-8]
800203cc:	e1a00000 	nop			@ (mov r0, r0)
800203d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800203d4:	e2432001 	sub	r2, r3, #1
800203d8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800203dc:	e3530000 	cmp	r3, #0
800203e0:	da000010 	ble	80020428 <strncpy+0x7c>
800203e4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800203e8:	e2823001 	add	r3, r2, #1
800203ec:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800203f0:	e51b3010 	ldr	r3, [fp, #-16]
800203f4:	e2831001 	add	r1, r3, #1
800203f8:	e50b1010 	str	r1, [fp, #-16]
800203fc:	e5d22000 	ldrb	r2, [r2]
80020400:	e5c32000 	strb	r2, [r3]
80020404:	e5d33000 	ldrb	r3, [r3]
80020408:	e3530000 	cmp	r3, #0
8002040c:	1affffef 	bne	800203d0 <strncpy+0x24>
80020410:	ea000004 	b	80020428 <strncpy+0x7c>
80020414:	e51b3010 	ldr	r3, [fp, #-16]
80020418:	e2832001 	add	r2, r3, #1
8002041c:	e50b2010 	str	r2, [fp, #-16]
80020420:	e3a02000 	mov	r2, #0
80020424:	e5c32000 	strb	r2, [r3]
80020428:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002042c:	e2432001 	sub	r2, r3, #1
80020430:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80020434:	e3530000 	cmp	r3, #0
80020438:	cafffff5 	bgt	80020414 <strncpy+0x68>
8002043c:	e51b3008 	ldr	r3, [fp, #-8]
80020440:	e1a00003 	mov	r0, r3
80020444:	e28bd000 	add	sp, fp, #0
80020448:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002044c:	e12fff1e 	bx	lr

80020450 <safestrcpy>:
80020450:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020454:	e28db000 	add	fp, sp, #0
80020458:	e24dd01c 	sub	sp, sp, #28
8002045c:	e50b0010 	str	r0, [fp, #-16]
80020460:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80020464:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80020468:	e51b3010 	ldr	r3, [fp, #-16]
8002046c:	e50b3008 	str	r3, [fp, #-8]
80020470:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020474:	e3530000 	cmp	r3, #0
80020478:	ca000001 	bgt	80020484 <safestrcpy+0x34>
8002047c:	e51b3008 	ldr	r3, [fp, #-8]
80020480:	ea000015 	b	800204dc <safestrcpy+0x8c>
80020484:	e1a00000 	nop			@ (mov r0, r0)
80020488:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002048c:	e2433001 	sub	r3, r3, #1
80020490:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80020494:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020498:	e3530000 	cmp	r3, #0
8002049c:	da00000a 	ble	800204cc <safestrcpy+0x7c>
800204a0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800204a4:	e2823001 	add	r3, r2, #1
800204a8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800204ac:	e51b3010 	ldr	r3, [fp, #-16]
800204b0:	e2831001 	add	r1, r3, #1
800204b4:	e50b1010 	str	r1, [fp, #-16]
800204b8:	e5d22000 	ldrb	r2, [r2]
800204bc:	e5c32000 	strb	r2, [r3]
800204c0:	e5d33000 	ldrb	r3, [r3]
800204c4:	e3530000 	cmp	r3, #0
800204c8:	1affffee 	bne	80020488 <safestrcpy+0x38>
800204cc:	e51b3010 	ldr	r3, [fp, #-16]
800204d0:	e3a02000 	mov	r2, #0
800204d4:	e5c32000 	strb	r2, [r3]
800204d8:	e51b3008 	ldr	r3, [fp, #-8]
800204dc:	e1a00003 	mov	r0, r3
800204e0:	e28bd000 	add	sp, fp, #0
800204e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800204e8:	e12fff1e 	bx	lr

800204ec <strlen>:
800204ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800204f0:	e28db000 	add	fp, sp, #0
800204f4:	e24dd014 	sub	sp, sp, #20
800204f8:	e50b0010 	str	r0, [fp, #-16]
800204fc:	e3a03000 	mov	r3, #0
80020500:	e50b3008 	str	r3, [fp, #-8]
80020504:	ea000002 	b	80020514 <strlen+0x28>
80020508:	e51b3008 	ldr	r3, [fp, #-8]
8002050c:	e2833001 	add	r3, r3, #1
80020510:	e50b3008 	str	r3, [fp, #-8]
80020514:	e51b3008 	ldr	r3, [fp, #-8]
80020518:	e51b2010 	ldr	r2, [fp, #-16]
8002051c:	e0823003 	add	r3, r2, r3
80020520:	e5d33000 	ldrb	r3, [r3]
80020524:	e3530000 	cmp	r3, #0
80020528:	1afffff6 	bne	80020508 <strlen+0x1c>
8002052c:	e51b3008 	ldr	r3, [fp, #-8]
80020530:	e1a00003 	mov	r0, r3
80020534:	e28bd000 	add	sp, fp, #0
80020538:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002053c:	e12fff1e 	bx	lr

80020540 <cli>:
80020540:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020544:	e28db000 	add	fp, sp, #0
80020548:	e24dd00c 	sub	sp, sp, #12
8002054c:	e10f3000 	mrs	r3, CPSR
80020550:	e50b3008 	str	r3, [fp, #-8]
80020554:	e51b3008 	ldr	r3, [fp, #-8]
80020558:	e3833080 	orr	r3, r3, #128	@ 0x80
8002055c:	e50b3008 	str	r3, [fp, #-8]
80020560:	e51b3008 	ldr	r3, [fp, #-8]
80020564:	e12ff003 	msr	CPSR_fsxc, r3
80020568:	e1a00000 	nop			@ (mov r0, r0)
8002056c:	e28bd000 	add	sp, fp, #0
80020570:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020574:	e12fff1e 	bx	lr

80020578 <sti>:
80020578:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002057c:	e28db000 	add	fp, sp, #0
80020580:	e24dd00c 	sub	sp, sp, #12
80020584:	e10f3000 	mrs	r3, CPSR
80020588:	e50b3008 	str	r3, [fp, #-8]
8002058c:	e51b3008 	ldr	r3, [fp, #-8]
80020590:	e3c33080 	bic	r3, r3, #128	@ 0x80
80020594:	e50b3008 	str	r3, [fp, #-8]
80020598:	e51b3008 	ldr	r3, [fp, #-8]
8002059c:	e12ff003 	msr	CPSR_fsxc, r3
800205a0:	e1a00000 	nop			@ (mov r0, r0)
800205a4:	e28bd000 	add	sp, fp, #0
800205a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800205ac:	e12fff1e 	bx	lr

800205b0 <spsr_usr>:
800205b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800205b4:	e28db000 	add	fp, sp, #0
800205b8:	e24dd00c 	sub	sp, sp, #12
800205bc:	e10f3000 	mrs	r3, CPSR
800205c0:	e50b3008 	str	r3, [fp, #-8]
800205c4:	e51b3008 	ldr	r3, [fp, #-8]
800205c8:	e3c3301f 	bic	r3, r3, #31
800205cc:	e50b3008 	str	r3, [fp, #-8]
800205d0:	e51b3008 	ldr	r3, [fp, #-8]
800205d4:	e3833010 	orr	r3, r3, #16
800205d8:	e50b3008 	str	r3, [fp, #-8]
800205dc:	e51b3008 	ldr	r3, [fp, #-8]
800205e0:	e1a00003 	mov	r0, r3
800205e4:	e28bd000 	add	sp, fp, #0
800205e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800205ec:	e12fff1e 	bx	lr

800205f0 <int_enabled>:
800205f0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800205f4:	e28db000 	add	fp, sp, #0
800205f8:	e24dd00c 	sub	sp, sp, #12
800205fc:	e10f3000 	mrs	r3, CPSR
80020600:	e50b3008 	str	r3, [fp, #-8]
80020604:	e51b3008 	ldr	r3, [fp, #-8]
80020608:	e2033080 	and	r3, r3, #128	@ 0x80
8002060c:	e3530000 	cmp	r3, #0
80020610:	03a03001 	moveq	r3, #1
80020614:	13a03000 	movne	r3, #0
80020618:	e6ef3073 	uxtb	r3, r3
8002061c:	e1a00003 	mov	r0, r3
80020620:	e28bd000 	add	sp, fp, #0
80020624:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020628:	e12fff1e 	bx	lr

8002062c <pushcli>:
8002062c:	e92d4800 	push	{fp, lr}
80020630:	e28db004 	add	fp, sp, #4
80020634:	e24dd008 	sub	sp, sp, #8
80020638:	ebffffec 	bl	800205f0 <int_enabled>
8002063c:	e50b0008 	str	r0, [fp, #-8]
80020640:	ebffffbe 	bl	80020540 <cli>
80020644:	e59f3030 	ldr	r3, [pc, #48]	@ 8002067c <pushcli+0x50>
80020648:	e5932000 	ldr	r2, [r3]
8002064c:	e592300c 	ldr	r3, [r2, #12]
80020650:	e2831001 	add	r1, r3, #1
80020654:	e582100c 	str	r1, [r2, #12]
80020658:	e3530000 	cmp	r3, #0
8002065c:	1a000003 	bne	80020670 <pushcli+0x44>
80020660:	e59f3014 	ldr	r3, [pc, #20]	@ 8002067c <pushcli+0x50>
80020664:	e5933000 	ldr	r3, [r3]
80020668:	e51b2008 	ldr	r2, [fp, #-8]
8002066c:	e5832010 	str	r2, [r3, #16]
80020670:	e1a00000 	nop			@ (mov r0, r0)
80020674:	e24bd004 	sub	sp, fp, #4
80020678:	e8bd8800 	pop	{fp, pc}
8002067c:	800ae698 	.word	0x800ae698

80020680 <popcli>:
80020680:	e92d4800 	push	{fp, lr}
80020684:	e28db004 	add	fp, sp, #4
80020688:	ebffffd8 	bl	800205f0 <int_enabled>
8002068c:	e1a03000 	mov	r3, r0
80020690:	e3530000 	cmp	r3, #0
80020694:	0a000001 	beq	800206a0 <popcli+0x20>
80020698:	e59f007c 	ldr	r0, [pc, #124]	@ 8002071c <popcli+0x9c>
8002069c:	eb000564 	bl	80021c34 <panic>
800206a0:	e59f3078 	ldr	r3, [pc, #120]	@ 80020720 <popcli+0xa0>
800206a4:	e5933000 	ldr	r3, [r3]
800206a8:	e593200c 	ldr	r2, [r3, #12]
800206ac:	e2422001 	sub	r2, r2, #1
800206b0:	e583200c 	str	r2, [r3, #12]
800206b4:	e593300c 	ldr	r3, [r3, #12]
800206b8:	e3530000 	cmp	r3, #0
800206bc:	aa000009 	bge	800206e8 <popcli+0x68>
800206c0:	e59f3058 	ldr	r3, [pc, #88]	@ 80020720 <popcli+0xa0>
800206c4:	e5931000 	ldr	r1, [r3]
800206c8:	e59f3050 	ldr	r3, [pc, #80]	@ 80020720 <popcli+0xa0>
800206cc:	e5933000 	ldr	r3, [r3]
800206d0:	e593300c 	ldr	r3, [r3, #12]
800206d4:	e1a02003 	mov	r2, r3
800206d8:	e59f0044 	ldr	r0, [pc, #68]	@ 80020724 <popcli+0xa4>
800206dc:	eb0004bc 	bl	800219d4 <cprintf>
800206e0:	e59f0040 	ldr	r0, [pc, #64]	@ 80020728 <popcli+0xa8>
800206e4:	eb000552 	bl	80021c34 <panic>
800206e8:	e59f3030 	ldr	r3, [pc, #48]	@ 80020720 <popcli+0xa0>
800206ec:	e5933000 	ldr	r3, [r3]
800206f0:	e593300c 	ldr	r3, [r3, #12]
800206f4:	e3530000 	cmp	r3, #0
800206f8:	1a000005 	bne	80020714 <popcli+0x94>
800206fc:	e59f301c 	ldr	r3, [pc, #28]	@ 80020720 <popcli+0xa0>
80020700:	e5933000 	ldr	r3, [r3]
80020704:	e5933010 	ldr	r3, [r3, #16]
80020708:	e3530000 	cmp	r3, #0
8002070c:	0a000000 	beq	80020714 <popcli+0x94>
80020710:	ebffff98 	bl	80020578 <sti>
80020714:	e1a00000 	nop			@ (mov r0, r0)
80020718:	e8bd8800 	pop	{fp, pc}
8002071c:	80029e40 	.word	0x80029e40
80020720:	800ae698 	.word	0x800ae698
80020724:	80029e58 	.word	0x80029e58
80020728:	80029e6c 	.word	0x80029e6c

8002072c <getcallerpcs>:
8002072c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020730:	e28db000 	add	fp, sp, #0
80020734:	e24dd014 	sub	sp, sp, #20
80020738:	e50b0010 	str	r0, [fp, #-16]
8002073c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80020740:	e51b3010 	ldr	r3, [fp, #-16]
80020744:	e50b3008 	str	r3, [fp, #-8]
80020748:	e3a03000 	mov	r3, #0
8002074c:	e50b300c 	str	r3, [fp, #-12]
80020750:	ea000018 	b	800207b8 <getcallerpcs+0x8c>
80020754:	e51b3008 	ldr	r3, [fp, #-8]
80020758:	e3530000 	cmp	r3, #0
8002075c:	0a000022 	beq	800207ec <getcallerpcs+0xc0>
80020760:	e51b3008 	ldr	r3, [fp, #-8]
80020764:	e3730106 	cmn	r3, #-2147483647	@ 0x80000001
80020768:	9a00001f 	bls	800207ec <getcallerpcs+0xc0>
8002076c:	e51b3008 	ldr	r3, [fp, #-8]
80020770:	e3730001 	cmn	r3, #1
80020774:	0a00001c 	beq	800207ec <getcallerpcs+0xc0>
80020778:	e51b3008 	ldr	r3, [fp, #-8]
8002077c:	e2433004 	sub	r3, r3, #4
80020780:	e50b3008 	str	r3, [fp, #-8]
80020784:	e51b300c 	ldr	r3, [fp, #-12]
80020788:	e1a03103 	lsl	r3, r3, #2
8002078c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80020790:	e0823003 	add	r3, r2, r3
80020794:	e51b2008 	ldr	r2, [fp, #-8]
80020798:	e5922004 	ldr	r2, [r2, #4]
8002079c:	e5832000 	str	r2, [r3]
800207a0:	e51b3008 	ldr	r3, [fp, #-8]
800207a4:	e5933000 	ldr	r3, [r3]
800207a8:	e50b3008 	str	r3, [fp, #-8]
800207ac:	e51b300c 	ldr	r3, [fp, #-12]
800207b0:	e2833001 	add	r3, r3, #1
800207b4:	e50b300c 	str	r3, [fp, #-12]
800207b8:	e51b300c 	ldr	r3, [fp, #-12]
800207bc:	e353000e 	cmp	r3, #14
800207c0:	daffffe3 	ble	80020754 <getcallerpcs+0x28>
800207c4:	ea000008 	b	800207ec <getcallerpcs+0xc0>
800207c8:	e51b300c 	ldr	r3, [fp, #-12]
800207cc:	e1a03103 	lsl	r3, r3, #2
800207d0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800207d4:	e0823003 	add	r3, r2, r3
800207d8:	e3a02000 	mov	r2, #0
800207dc:	e5832000 	str	r2, [r3]
800207e0:	e51b300c 	ldr	r3, [fp, #-12]
800207e4:	e2833001 	add	r3, r3, #1
800207e8:	e50b300c 	str	r3, [fp, #-12]
800207ec:	e51b300c 	ldr	r3, [fp, #-12]
800207f0:	e353000e 	cmp	r3, #14
800207f4:	dafffff3 	ble	800207c8 <getcallerpcs+0x9c>
800207f8:	e1a00000 	nop			@ (mov r0, r0)
800207fc:	e1a00000 	nop			@ (mov r0, r0)
80020800:	e28bd000 	add	sp, fp, #0
80020804:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020808:	e12fff1e 	bx	lr

8002080c <show_callstk>:
8002080c:	e92d4800 	push	{fp, lr}
80020810:	e28db004 	add	fp, sp, #4
80020814:	e24dd048 	sub	sp, sp, #72	@ 0x48
80020818:	e50b0048 	str	r0, [fp, #-72]	@ 0xffffffb8
8002081c:	e51b1048 	ldr	r1, [fp, #-72]	@ 0xffffffb8
80020820:	e59f0074 	ldr	r0, [pc, #116]	@ 8002089c <show_callstk+0x90>
80020824:	eb00046a 	bl	800219d4 <cprintf>
80020828:	eb000026 	bl	800208c8 <get_fp>
8002082c:	e1a02000 	mov	r2, r0
80020830:	e24b3044 	sub	r3, fp, #68	@ 0x44
80020834:	e1a01003 	mov	r1, r3
80020838:	e1a00002 	mov	r0, r2
8002083c:	ebffffba 	bl	8002072c <getcallerpcs>
80020840:	e3a0300e 	mov	r3, #14
80020844:	e50b3008 	str	r3, [fp, #-8]
80020848:	ea00000c 	b	80020880 <show_callstk+0x74>
8002084c:	e51b3008 	ldr	r3, [fp, #-8]
80020850:	e2831001 	add	r1, r3, #1
80020854:	e51b3008 	ldr	r3, [fp, #-8]
80020858:	e1a03103 	lsl	r3, r3, #2
8002085c:	e2433004 	sub	r3, r3, #4
80020860:	e083300b 	add	r3, r3, fp
80020864:	e5133040 	ldr	r3, [r3, #-64]	@ 0xffffffc0
80020868:	e1a02003 	mov	r2, r3
8002086c:	e59f002c 	ldr	r0, [pc, #44]	@ 800208a0 <show_callstk+0x94>
80020870:	eb000457 	bl	800219d4 <cprintf>
80020874:	e51b3008 	ldr	r3, [fp, #-8]
80020878:	e2433001 	sub	r3, r3, #1
8002087c:	e50b3008 	str	r3, [fp, #-8]
80020880:	e51b3008 	ldr	r3, [fp, #-8]
80020884:	e3530000 	cmp	r3, #0
80020888:	aaffffef 	bge	8002084c <show_callstk+0x40>
8002088c:	e1a00000 	nop			@ (mov r0, r0)
80020890:	e1a00000 	nop			@ (mov r0, r0)
80020894:	e24bd004 	sub	sp, fp, #4
80020898:	e8bd8800 	pop	{fp, pc}
8002089c:	80029e80 	.word	0x80029e80
800208a0:	80029e84 	.word	0x80029e84

800208a4 <set_stk>:
800208a4:	e10f2000 	mrs	r2, CPSR
800208a8:	e3c2201f 	bic	r2, r2, #31
800208ac:	e1822000 	orr	r2, r2, r0
800208b0:	e12ff002 	msr	CPSR_fsxc, r2
800208b4:	e1a0d001 	mov	sp, r1
800208b8:	e3c2201f 	bic	r2, r2, #31
800208bc:	e3822013 	orr	r2, r2, #19
800208c0:	e12ff002 	msr	CPSR_fsxc, r2
800208c4:	e12fff1e 	bx	lr

800208c8 <get_fp>:
800208c8:	e1a0000b 	mov	r0, fp
800208cc:	e12fff1e 	bx	lr

800208d0 <barrier_init>:
800208d0:	e92d4800 	push	{fp, lr}
800208d4:	e28db004 	add	fp, sp, #4
800208d8:	e24dd008 	sub	sp, sp, #8
800208dc:	e50b0008 	str	r0, [fp, #-8]
800208e0:	e51b3008 	ldr	r3, [fp, #-8]
800208e4:	e3530000 	cmp	r3, #0
800208e8:	ca000001 	bgt	800208f4 <barrier_init+0x24>
800208ec:	e3e03000 	mvn	r3, #0
800208f0:	ea000010 	b	80020938 <barrier_init+0x68>
800208f4:	e59f1048 	ldr	r1, [pc, #72]	@ 80020944 <barrier_init+0x74>
800208f8:	e59f0048 	ldr	r0, [pc, #72]	@ 80020948 <barrier_init+0x78>
800208fc:	eb001789 	bl	80026728 <initlock>
80020900:	e59f0040 	ldr	r0, [pc, #64]	@ 80020948 <barrier_init+0x78>
80020904:	eb001799 	bl	80026770 <acquire>
80020908:	e59f2038 	ldr	r2, [pc, #56]	@ 80020948 <barrier_init+0x78>
8002090c:	e51b3008 	ldr	r3, [fp, #-8]
80020910:	e5823034 	str	r3, [r2, #52]	@ 0x34
80020914:	e59f302c 	ldr	r3, [pc, #44]	@ 80020948 <barrier_init+0x78>
80020918:	e3a02000 	mov	r2, #0
8002091c:	e5832038 	str	r2, [r3, #56]	@ 0x38
80020920:	e59f3020 	ldr	r3, [pc, #32]	@ 80020948 <barrier_init+0x78>
80020924:	e3a02000 	mov	r2, #0
80020928:	e583203c 	str	r2, [r3, #60]	@ 0x3c
8002092c:	e59f0014 	ldr	r0, [pc, #20]	@ 80020948 <barrier_init+0x78>
80020930:	eb001799 	bl	8002679c <release>
80020934:	e3a03000 	mov	r3, #0
80020938:	e1a00003 	mov	r0, r3
8002093c:	e24bd004 	sub	sp, fp, #4
80020940:	e8bd8800 	pop	{fp, pc}
80020944:	80029e90 	.word	0x80029e90
80020948:	800ab120 	.word	0x800ab120

8002094c <barrier_check>:
8002094c:	e92d4800 	push	{fp, lr}
80020950:	e28db004 	add	fp, sp, #4
80020954:	e24dd008 	sub	sp, sp, #8
80020958:	e59f00ac 	ldr	r0, [pc, #172]	@ 80020a0c <barrier_check+0xc0>
8002095c:	eb001783 	bl	80026770 <acquire>
80020960:	e59f30a4 	ldr	r3, [pc, #164]	@ 80020a0c <barrier_check+0xc0>
80020964:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
80020968:	e50b3008 	str	r3, [fp, #-8]
8002096c:	e59f3098 	ldr	r3, [pc, #152]	@ 80020a0c <barrier_check+0xc0>
80020970:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80020974:	e2833001 	add	r3, r3, #1
80020978:	e59f208c 	ldr	r2, [pc, #140]	@ 80020a0c <barrier_check+0xc0>
8002097c:	e5823038 	str	r3, [r2, #56]	@ 0x38
80020980:	e59f3084 	ldr	r3, [pc, #132]	@ 80020a0c <barrier_check+0xc0>
80020984:	e5932038 	ldr	r2, [r3, #56]	@ 0x38
80020988:	e59f307c 	ldr	r3, [pc, #124]	@ 80020a0c <barrier_check+0xc0>
8002098c:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80020990:	e1520003 	cmp	r2, r3
80020994:	aa00000f 	bge	800209d8 <barrier_check+0x8c>
80020998:	ea000002 	b	800209a8 <barrier_check+0x5c>
8002099c:	e59f1068 	ldr	r1, [pc, #104]	@ 80020a0c <barrier_check+0xc0>
800209a0:	e59f0064 	ldr	r0, [pc, #100]	@ 80020a0c <barrier_check+0xc0>
800209a4:	eb0015ab 	bl	80026058 <sleep>
800209a8:	e59f305c 	ldr	r3, [pc, #92]	@ 80020a0c <barrier_check+0xc0>
800209ac:	e5932038 	ldr	r2, [r3, #56]	@ 0x38
800209b0:	e59f3054 	ldr	r3, [pc, #84]	@ 80020a0c <barrier_check+0xc0>
800209b4:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
800209b8:	e1520003 	cmp	r2, r3
800209bc:	aa00000c 	bge	800209f4 <barrier_check+0xa8>
800209c0:	e59f3044 	ldr	r3, [pc, #68]	@ 80020a0c <barrier_check+0xc0>
800209c4:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
800209c8:	e51b2008 	ldr	r2, [fp, #-8]
800209cc:	e1520003 	cmp	r2, r3
800209d0:	0afffff1 	beq	8002099c <barrier_check+0x50>
800209d4:	ea000006 	b	800209f4 <barrier_check+0xa8>
800209d8:	e59f302c 	ldr	r3, [pc, #44]	@ 80020a0c <barrier_check+0xc0>
800209dc:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
800209e0:	e2833001 	add	r3, r3, #1
800209e4:	e59f2020 	ldr	r2, [pc, #32]	@ 80020a0c <barrier_check+0xc0>
800209e8:	e582303c 	str	r3, [r2, #60]	@ 0x3c
800209ec:	e59f0018 	ldr	r0, [pc, #24]	@ 80020a0c <barrier_check+0xc0>
800209f0:	eb00161c 	bl	80026268 <wakeup>
800209f4:	e59f0010 	ldr	r0, [pc, #16]	@ 80020a0c <barrier_check+0xc0>
800209f8:	eb001767 	bl	8002679c <release>
800209fc:	e3a03000 	mov	r3, #0
80020a00:	e1a00003 	mov	r0, r3
80020a04:	e24bd004 	sub	sp, fp, #4
80020a08:	e8bd8800 	pop	{fp, pc}
80020a0c:	800ab120 	.word	0x800ab120

80020a10 <binit>:
80020a10:	e92d4800 	push	{fp, lr}
80020a14:	e28db004 	add	fp, sp, #4
80020a18:	e24dd008 	sub	sp, sp, #8
80020a1c:	e59f10b8 	ldr	r1, [pc, #184]	@ 80020adc <binit+0xcc>
80020a20:	e59f00b8 	ldr	r0, [pc, #184]	@ 80020ae0 <binit+0xd0>
80020a24:	eb00173f 	bl	80026728 <initlock>
80020a28:	e59f30b0 	ldr	r3, [pc, #176]	@ 80020ae0 <binit+0xd0>
80020a2c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020a30:	e1a02003 	mov	r2, r3
80020a34:	e59f30a8 	ldr	r3, [pc, #168]	@ 80020ae4 <binit+0xd4>
80020a38:	e5823530 	str	r3, [r2, #1328]	@ 0x530
80020a3c:	e59f309c 	ldr	r3, [pc, #156]	@ 80020ae0 <binit+0xd0>
80020a40:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020a44:	e1a02003 	mov	r2, r3
80020a48:	e59f3094 	ldr	r3, [pc, #148]	@ 80020ae4 <binit+0xd4>
80020a4c:	e5823534 	str	r3, [r2, #1332]	@ 0x534
80020a50:	e59f3090 	ldr	r3, [pc, #144]	@ 80020ae8 <binit+0xd8>
80020a54:	e50b3008 	str	r3, [fp, #-8]
80020a58:	ea000017 	b	80020abc <binit+0xac>
80020a5c:	e59f307c 	ldr	r3, [pc, #124]	@ 80020ae0 <binit+0xd0>
80020a60:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020a64:	e5932534 	ldr	r2, [r3, #1332]	@ 0x534
80020a68:	e51b3008 	ldr	r3, [fp, #-8]
80020a6c:	e5832010 	str	r2, [r3, #16]
80020a70:	e51b3008 	ldr	r3, [fp, #-8]
80020a74:	e59f2068 	ldr	r2, [pc, #104]	@ 80020ae4 <binit+0xd4>
80020a78:	e583200c 	str	r2, [r3, #12]
80020a7c:	e51b3008 	ldr	r3, [fp, #-8]
80020a80:	e3e02000 	mvn	r2, #0
80020a84:	e5832004 	str	r2, [r3, #4]
80020a88:	e59f3050 	ldr	r3, [pc, #80]	@ 80020ae0 <binit+0xd0>
80020a8c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020a90:	e5933534 	ldr	r3, [r3, #1332]	@ 0x534
80020a94:	e51b2008 	ldr	r2, [fp, #-8]
80020a98:	e583200c 	str	r2, [r3, #12]
80020a9c:	e59f303c 	ldr	r3, [pc, #60]	@ 80020ae0 <binit+0xd0>
80020aa0:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020aa4:	e1a02003 	mov	r2, r3
80020aa8:	e51b3008 	ldr	r3, [fp, #-8]
80020aac:	e5823534 	str	r3, [r2, #1332]	@ 0x534
80020ab0:	e51b3008 	ldr	r3, [fp, #-8]
80020ab4:	e2833f86 	add	r3, r3, #536	@ 0x218
80020ab8:	e50b3008 	str	r3, [fp, #-8]
80020abc:	e59f2020 	ldr	r2, [pc, #32]	@ 80020ae4 <binit+0xd4>
80020ac0:	e51b3008 	ldr	r3, [fp, #-8]
80020ac4:	e1530002 	cmp	r3, r2
80020ac8:	3affffe3 	bcc	80020a5c <binit+0x4c>
80020acc:	e1a00000 	nop			@ (mov r0, r0)
80020ad0:	e1a00000 	nop			@ (mov r0, r0)
80020ad4:	e24bd004 	sub	sp, fp, #4
80020ad8:	e8bd8800 	pop	{fp, pc}
80020adc:	80029e98 	.word	0x80029e98
80020ae0:	800ab160 	.word	0x800ab160
80020ae4:	800ac684 	.word	0x800ac684
80020ae8:	800ab194 	.word	0x800ab194

80020aec <bget>:
80020aec:	e92d4800 	push	{fp, lr}
80020af0:	e28db004 	add	fp, sp, #4
80020af4:	e24dd010 	sub	sp, sp, #16
80020af8:	e50b0010 	str	r0, [fp, #-16]
80020afc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80020b00:	e59f0140 	ldr	r0, [pc, #320]	@ 80020c48 <bget+0x15c>
80020b04:	eb001719 	bl	80026770 <acquire>
80020b08:	e59f3138 	ldr	r3, [pc, #312]	@ 80020c48 <bget+0x15c>
80020b0c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020b10:	e5933534 	ldr	r3, [r3, #1332]	@ 0x534
80020b14:	e50b3008 	str	r3, [fp, #-8]
80020b18:	ea00001e 	b	80020b98 <bget+0xac>
80020b1c:	e51b3008 	ldr	r3, [fp, #-8]
80020b20:	e5933004 	ldr	r3, [r3, #4]
80020b24:	e51b2010 	ldr	r2, [fp, #-16]
80020b28:	e1520003 	cmp	r2, r3
80020b2c:	1a000016 	bne	80020b8c <bget+0xa0>
80020b30:	e51b3008 	ldr	r3, [fp, #-8]
80020b34:	e5933008 	ldr	r3, [r3, #8]
80020b38:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80020b3c:	e1520003 	cmp	r2, r3
80020b40:	1a000011 	bne	80020b8c <bget+0xa0>
80020b44:	e51b3008 	ldr	r3, [fp, #-8]
80020b48:	e5933000 	ldr	r3, [r3]
80020b4c:	e2033001 	and	r3, r3, #1
80020b50:	e3530000 	cmp	r3, #0
80020b54:	1a000008 	bne	80020b7c <bget+0x90>
80020b58:	e51b3008 	ldr	r3, [fp, #-8]
80020b5c:	e5933000 	ldr	r3, [r3]
80020b60:	e3832001 	orr	r2, r3, #1
80020b64:	e51b3008 	ldr	r3, [fp, #-8]
80020b68:	e5832000 	str	r2, [r3]
80020b6c:	e59f00d4 	ldr	r0, [pc, #212]	@ 80020c48 <bget+0x15c>
80020b70:	eb001709 	bl	8002679c <release>
80020b74:	e51b3008 	ldr	r3, [fp, #-8]
80020b78:	ea00002f 	b	80020c3c <bget+0x150>
80020b7c:	e59f10c4 	ldr	r1, [pc, #196]	@ 80020c48 <bget+0x15c>
80020b80:	e51b0008 	ldr	r0, [fp, #-8]
80020b84:	eb001533 	bl	80026058 <sleep>
80020b88:	eaffffde 	b	80020b08 <bget+0x1c>
80020b8c:	e51b3008 	ldr	r3, [fp, #-8]
80020b90:	e5933010 	ldr	r3, [r3, #16]
80020b94:	e50b3008 	str	r3, [fp, #-8]
80020b98:	e51b3008 	ldr	r3, [fp, #-8]
80020b9c:	e59f20a8 	ldr	r2, [pc, #168]	@ 80020c4c <bget+0x160>
80020ba0:	e1530002 	cmp	r3, r2
80020ba4:	1affffdc 	bne	80020b1c <bget+0x30>
80020ba8:	e59f3098 	ldr	r3, [pc, #152]	@ 80020c48 <bget+0x15c>
80020bac:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020bb0:	e5933530 	ldr	r3, [r3, #1328]	@ 0x530
80020bb4:	e50b3008 	str	r3, [fp, #-8]
80020bb8:	ea000019 	b	80020c24 <bget+0x138>
80020bbc:	e51b3008 	ldr	r3, [fp, #-8]
80020bc0:	e5933000 	ldr	r3, [r3]
80020bc4:	e2033001 	and	r3, r3, #1
80020bc8:	e3530000 	cmp	r3, #0
80020bcc:	1a000011 	bne	80020c18 <bget+0x12c>
80020bd0:	e51b3008 	ldr	r3, [fp, #-8]
80020bd4:	e5933000 	ldr	r3, [r3]
80020bd8:	e2033004 	and	r3, r3, #4
80020bdc:	e3530000 	cmp	r3, #0
80020be0:	1a00000c 	bne	80020c18 <bget+0x12c>
80020be4:	e51b3008 	ldr	r3, [fp, #-8]
80020be8:	e51b2010 	ldr	r2, [fp, #-16]
80020bec:	e5832004 	str	r2, [r3, #4]
80020bf0:	e51b3008 	ldr	r3, [fp, #-8]
80020bf4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80020bf8:	e5832008 	str	r2, [r3, #8]
80020bfc:	e51b3008 	ldr	r3, [fp, #-8]
80020c00:	e3a02001 	mov	r2, #1
80020c04:	e5832000 	str	r2, [r3]
80020c08:	e59f0038 	ldr	r0, [pc, #56]	@ 80020c48 <bget+0x15c>
80020c0c:	eb0016e2 	bl	8002679c <release>
80020c10:	e51b3008 	ldr	r3, [fp, #-8]
80020c14:	ea000008 	b	80020c3c <bget+0x150>
80020c18:	e51b3008 	ldr	r3, [fp, #-8]
80020c1c:	e593300c 	ldr	r3, [r3, #12]
80020c20:	e50b3008 	str	r3, [fp, #-8]
80020c24:	e51b3008 	ldr	r3, [fp, #-8]
80020c28:	e59f201c 	ldr	r2, [pc, #28]	@ 80020c4c <bget+0x160>
80020c2c:	e1530002 	cmp	r3, r2
80020c30:	1affffe1 	bne	80020bbc <bget+0xd0>
80020c34:	e59f0014 	ldr	r0, [pc, #20]	@ 80020c50 <bget+0x164>
80020c38:	eb0003fd 	bl	80021c34 <panic>
80020c3c:	e1a00003 	mov	r0, r3
80020c40:	e24bd004 	sub	sp, fp, #4
80020c44:	e8bd8800 	pop	{fp, pc}
80020c48:	800ab160 	.word	0x800ab160
80020c4c:	800ac684 	.word	0x800ac684
80020c50:	80029ea0 	.word	0x80029ea0

80020c54 <bread>:
80020c54:	e92d4800 	push	{fp, lr}
80020c58:	e28db004 	add	fp, sp, #4
80020c5c:	e24dd010 	sub	sp, sp, #16
80020c60:	e50b0010 	str	r0, [fp, #-16]
80020c64:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80020c68:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80020c6c:	e51b0010 	ldr	r0, [fp, #-16]
80020c70:	ebffff9d 	bl	80020aec <bget>
80020c74:	e50b0008 	str	r0, [fp, #-8]
80020c78:	e51b3008 	ldr	r3, [fp, #-8]
80020c7c:	e5933000 	ldr	r3, [r3]
80020c80:	e2033002 	and	r3, r3, #2
80020c84:	e3530000 	cmp	r3, #0
80020c88:	1a000001 	bne	80020c94 <bread+0x40>
80020c8c:	e51b0008 	ldr	r0, [fp, #-8]
80020c90:	eb000f08 	bl	800248b8 <iderw>
80020c94:	e51b3008 	ldr	r3, [fp, #-8]
80020c98:	e1a00003 	mov	r0, r3
80020c9c:	e24bd004 	sub	sp, fp, #4
80020ca0:	e8bd8800 	pop	{fp, pc}

80020ca4 <bwrite>:
80020ca4:	e92d4800 	push	{fp, lr}
80020ca8:	e28db004 	add	fp, sp, #4
80020cac:	e24dd008 	sub	sp, sp, #8
80020cb0:	e50b0008 	str	r0, [fp, #-8]
80020cb4:	e51b3008 	ldr	r3, [fp, #-8]
80020cb8:	e5933000 	ldr	r3, [r3]
80020cbc:	e2033001 	and	r3, r3, #1
80020cc0:	e3530000 	cmp	r3, #0
80020cc4:	1a000001 	bne	80020cd0 <bwrite+0x2c>
80020cc8:	e59f0028 	ldr	r0, [pc, #40]	@ 80020cf8 <bwrite+0x54>
80020ccc:	eb0003d8 	bl	80021c34 <panic>
80020cd0:	e51b3008 	ldr	r3, [fp, #-8]
80020cd4:	e5933000 	ldr	r3, [r3]
80020cd8:	e3832004 	orr	r2, r3, #4
80020cdc:	e51b3008 	ldr	r3, [fp, #-8]
80020ce0:	e5832000 	str	r2, [r3]
80020ce4:	e51b0008 	ldr	r0, [fp, #-8]
80020ce8:	eb000ef2 	bl	800248b8 <iderw>
80020cec:	e1a00000 	nop			@ (mov r0, r0)
80020cf0:	e24bd004 	sub	sp, fp, #4
80020cf4:	e8bd8800 	pop	{fp, pc}
80020cf8:	80029eb4 	.word	0x80029eb4

80020cfc <brelse>:
80020cfc:	e92d4800 	push	{fp, lr}
80020d00:	e28db004 	add	fp, sp, #4
80020d04:	e24dd008 	sub	sp, sp, #8
80020d08:	e50b0008 	str	r0, [fp, #-8]
80020d0c:	e51b3008 	ldr	r3, [fp, #-8]
80020d10:	e5933000 	ldr	r3, [r3]
80020d14:	e2033001 	and	r3, r3, #1
80020d18:	e3530000 	cmp	r3, #0
80020d1c:	1a000001 	bne	80020d28 <brelse+0x2c>
80020d20:	e59f00a8 	ldr	r0, [pc, #168]	@ 80020dd0 <brelse+0xd4>
80020d24:	eb0003c2 	bl	80021c34 <panic>
80020d28:	e59f00a4 	ldr	r0, [pc, #164]	@ 80020dd4 <brelse+0xd8>
80020d2c:	eb00168f 	bl	80026770 <acquire>
80020d30:	e51b3008 	ldr	r3, [fp, #-8]
80020d34:	e5933010 	ldr	r3, [r3, #16]
80020d38:	e51b2008 	ldr	r2, [fp, #-8]
80020d3c:	e592200c 	ldr	r2, [r2, #12]
80020d40:	e583200c 	str	r2, [r3, #12]
80020d44:	e51b3008 	ldr	r3, [fp, #-8]
80020d48:	e593300c 	ldr	r3, [r3, #12]
80020d4c:	e51b2008 	ldr	r2, [fp, #-8]
80020d50:	e5922010 	ldr	r2, [r2, #16]
80020d54:	e5832010 	str	r2, [r3, #16]
80020d58:	e59f3074 	ldr	r3, [pc, #116]	@ 80020dd4 <brelse+0xd8>
80020d5c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020d60:	e5932534 	ldr	r2, [r3, #1332]	@ 0x534
80020d64:	e51b3008 	ldr	r3, [fp, #-8]
80020d68:	e5832010 	str	r2, [r3, #16]
80020d6c:	e51b3008 	ldr	r3, [fp, #-8]
80020d70:	e59f2060 	ldr	r2, [pc, #96]	@ 80020dd8 <brelse+0xdc>
80020d74:	e583200c 	str	r2, [r3, #12]
80020d78:	e59f3054 	ldr	r3, [pc, #84]	@ 80020dd4 <brelse+0xd8>
80020d7c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020d80:	e5933534 	ldr	r3, [r3, #1332]	@ 0x534
80020d84:	e51b2008 	ldr	r2, [fp, #-8]
80020d88:	e583200c 	str	r2, [r3, #12]
80020d8c:	e59f3040 	ldr	r3, [pc, #64]	@ 80020dd4 <brelse+0xd8>
80020d90:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020d94:	e1a02003 	mov	r2, r3
80020d98:	e51b3008 	ldr	r3, [fp, #-8]
80020d9c:	e5823534 	str	r3, [r2, #1332]	@ 0x534
80020da0:	e51b3008 	ldr	r3, [fp, #-8]
80020da4:	e5933000 	ldr	r3, [r3]
80020da8:	e3c32001 	bic	r2, r3, #1
80020dac:	e51b3008 	ldr	r3, [fp, #-8]
80020db0:	e5832000 	str	r2, [r3]
80020db4:	e51b0008 	ldr	r0, [fp, #-8]
80020db8:	eb00152a 	bl	80026268 <wakeup>
80020dbc:	e59f0010 	ldr	r0, [pc, #16]	@ 80020dd4 <brelse+0xd8>
80020dc0:	eb001675 	bl	8002679c <release>
80020dc4:	e1a00000 	nop			@ (mov r0, r0)
80020dc8:	e24bd004 	sub	sp, fp, #4
80020dcc:	e8bd8800 	pop	{fp, pc}
80020dd0:	80029ebc 	.word	0x80029ebc
80020dd4:	800ab160 	.word	0x800ab160
80020dd8:	800ac684 	.word	0x800ac684

80020ddc <get_mark>:
80020ddc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020de0:	e28db000 	add	fp, sp, #0
80020de4:	e24dd00c 	sub	sp, sp, #12
80020de8:	e50b0008 	str	r0, [fp, #-8]
80020dec:	e50b100c 	str	r1, [fp, #-12]
80020df0:	e51b3008 	ldr	r3, [fp, #-8]
80020df4:	e2433006 	sub	r3, r3, #6
80020df8:	e59f2034 	ldr	r2, [pc, #52]	@ 80020e34 <get_mark+0x58>
80020dfc:	e2833008 	add	r3, r3, #8
80020e00:	e1a03183 	lsl	r3, r3, #3
80020e04:	e0823003 	add	r3, r2, r3
80020e08:	e5932004 	ldr	r2, [r3, #4]
80020e0c:	e51b300c 	ldr	r3, [fp, #-12]
80020e10:	e0823003 	add	r3, r2, r3
80020e14:	e1a02183 	lsl	r2, r3, #3
80020e18:	e59f3014 	ldr	r3, [pc, #20]	@ 80020e34 <get_mark+0x58>
80020e1c:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80020e20:	e0823003 	add	r3, r2, r3
80020e24:	e1a00003 	mov	r0, r3
80020e28:	e28bd000 	add	sp, fp, #0
80020e2c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020e30:	e12fff1e 	bx	lr
80020e34:	800ac89c 	.word	0x800ac89c

80020e38 <blkid2mem>:
80020e38:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020e3c:	e28db000 	add	fp, sp, #0
80020e40:	e24dd00c 	sub	sp, sp, #12
80020e44:	e50b0008 	str	r0, [fp, #-8]
80020e48:	e50b100c 	str	r1, [fp, #-12]
80020e4c:	e59f3020 	ldr	r3, [pc, #32]	@ 80020e74 <blkid2mem+0x3c>
80020e50:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80020e54:	e51b100c 	ldr	r1, [fp, #-12]
80020e58:	e51b2008 	ldr	r2, [fp, #-8]
80020e5c:	e1a02211 	lsl	r2, r1, r2
80020e60:	e0833002 	add	r3, r3, r2
80020e64:	e1a00003 	mov	r0, r3
80020e68:	e28bd000 	add	sp, fp, #0
80020e6c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020e70:	e12fff1e 	bx	lr
80020e74:	800ac89c 	.word	0x800ac89c

80020e78 <mem2blkid>:
80020e78:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020e7c:	e28db000 	add	fp, sp, #0
80020e80:	e24dd00c 	sub	sp, sp, #12
80020e84:	e50b0008 	str	r0, [fp, #-8]
80020e88:	e50b100c 	str	r1, [fp, #-12]
80020e8c:	e51b200c 	ldr	r2, [fp, #-12]
80020e90:	e59f301c 	ldr	r3, [pc, #28]	@ 80020eb4 <mem2blkid+0x3c>
80020e94:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80020e98:	e0422003 	sub	r2, r2, r3
80020e9c:	e51b3008 	ldr	r3, [fp, #-8]
80020ea0:	e1a03332 	lsr	r3, r2, r3
80020ea4:	e1a00003 	mov	r0, r3
80020ea8:	e28bd000 	add	sp, fp, #0
80020eac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020eb0:	e12fff1e 	bx	lr
80020eb4:	800ac89c 	.word	0x800ac89c

80020eb8 <available>:
80020eb8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020ebc:	e28db000 	add	fp, sp, #0
80020ec0:	e24dd00c 	sub	sp, sp, #12
80020ec4:	e50b0008 	str	r0, [fp, #-8]
80020ec8:	e50b100c 	str	r1, [fp, #-12]
80020ecc:	e51b300c 	ldr	r3, [fp, #-12]
80020ed0:	e203301f 	and	r3, r3, #31
80020ed4:	e3a02001 	mov	r2, #1
80020ed8:	e1a03312 	lsl	r3, r2, r3
80020edc:	e1a02003 	mov	r2, r3
80020ee0:	e51b3008 	ldr	r3, [fp, #-8]
80020ee4:	e0033002 	and	r3, r3, r2
80020ee8:	e1a00003 	mov	r0, r3
80020eec:	e28bd000 	add	sp, fp, #0
80020ef0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020ef4:	e12fff1e 	bx	lr

80020ef8 <kmem_init>:
80020ef8:	e92d4800 	push	{fp, lr}
80020efc:	e28db004 	add	fp, sp, #4
80020f00:	e59f100c 	ldr	r1, [pc, #12]	@ 80020f14 <kmem_init+0x1c>
80020f04:	e59f000c 	ldr	r0, [pc, #12]	@ 80020f18 <kmem_init+0x20>
80020f08:	eb001606 	bl	80026728 <initlock>
80020f0c:	e1a00000 	nop			@ (mov r0, r0)
80020f10:	e8bd8800 	pop	{fp, pc}
80020f14:	80029ec4 	.word	0x80029ec4
80020f18:	800ac89c 	.word	0x800ac89c

80020f1c <kmem_init2>:
80020f1c:	e92d4800 	push	{fp, lr}
80020f20:	e28db004 	add	fp, sp, #4
80020f24:	e24dd028 	sub	sp, sp, #40	@ 0x28
80020f28:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80020f2c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
80020f30:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80020f34:	e59f217c 	ldr	r2, [pc, #380]	@ 800210b8 <kmem_init2+0x19c>
80020f38:	e5823034 	str	r3, [r2, #52]	@ 0x34
80020f3c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80020f40:	e59f2170 	ldr	r2, [pc, #368]	@ 800210b8 <kmem_init2+0x19c>
80020f44:	e582303c 	str	r3, [r2, #60]	@ 0x3c
80020f48:	e59f3168 	ldr	r3, [pc, #360]	@ 800210b8 <kmem_init2+0x19c>
80020f4c:	e593203c 	ldr	r2, [r3, #60]	@ 0x3c
80020f50:	e59f3160 	ldr	r3, [pc, #352]	@ 800210b8 <kmem_init2+0x19c>
80020f54:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80020f58:	e0423003 	sub	r3, r2, r3
80020f5c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80020f60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020f64:	e1a038a3 	lsr	r3, r3, #17
80020f68:	e2833001 	add	r3, r3, #1
80020f6c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80020f70:	e3a03000 	mov	r3, #0
80020f74:	e50b3010 	str	r3, [fp, #-16]
80020f78:	e3a03006 	mov	r3, #6
80020f7c:	e50b3008 	str	r3, [fp, #-8]
80020f80:	ea00002a 	b	80021030 <kmem_init2+0x114>
80020f84:	e51b3008 	ldr	r3, [fp, #-8]
80020f88:	e1a03183 	lsl	r3, r3, #3
80020f8c:	e59f2128 	ldr	r2, [pc, #296]	@ 800210bc <kmem_init2+0x1a0>
80020f90:	e0833002 	add	r3, r3, r2
80020f94:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80020f98:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80020f9c:	e51b2010 	ldr	r2, [fp, #-16]
80020fa0:	e5832004 	str	r2, [r3, #4]
80020fa4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80020fa8:	e59f2110 	ldr	r2, [pc, #272]	@ 800210c0 <kmem_init2+0x1a4>
80020fac:	e5832000 	str	r2, [r3]
80020fb0:	e3a03000 	mov	r3, #0
80020fb4:	e50b300c 	str	r3, [fp, #-12]
80020fb8:	ea00000e 	b	80020ff8 <kmem_init2+0xdc>
80020fbc:	e51b3008 	ldr	r3, [fp, #-8]
80020fc0:	e2833006 	add	r3, r3, #6
80020fc4:	e51b100c 	ldr	r1, [fp, #-12]
80020fc8:	e1a00003 	mov	r0, r3
80020fcc:	ebffff82 	bl	80020ddc <get_mark>
80020fd0:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80020fd4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80020fd8:	e3e02000 	mvn	r2, #0
80020fdc:	e5832000 	str	r2, [r3]
80020fe0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80020fe4:	e3a02000 	mov	r2, #0
80020fe8:	e5832004 	str	r2, [r3, #4]
80020fec:	e51b300c 	ldr	r3, [fp, #-12]
80020ff0:	e2833001 	add	r3, r3, #1
80020ff4:	e50b300c 	str	r3, [fp, #-12]
80020ff8:	e51b300c 	ldr	r3, [fp, #-12]
80020ffc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80021000:	e1520003 	cmp	r2, r3
80021004:	8affffec 	bhi	80020fbc <kmem_init2+0xa0>
80021008:	e51b2010 	ldr	r2, [fp, #-16]
8002100c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80021010:	e0823003 	add	r3, r2, r3
80021014:	e50b3010 	str	r3, [fp, #-16]
80021018:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002101c:	e1a03083 	lsl	r3, r3, #1
80021020:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80021024:	e51b3008 	ldr	r3, [fp, #-8]
80021028:	e2433001 	sub	r3, r3, #1
8002102c:	e50b3008 	str	r3, [fp, #-8]
80021030:	e51b3008 	ldr	r3, [fp, #-8]
80021034:	e3530000 	cmp	r3, #0
80021038:	aaffffd1 	bge	80020f84 <kmem_init2+0x68>
8002103c:	e59f3074 	ldr	r3, [pc, #116]	@ 800210b8 <kmem_init2+0x19c>
80021040:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
80021044:	e51b3010 	ldr	r3, [fp, #-16]
80021048:	e1a03183 	lsl	r3, r3, #3
8002104c:	e0823003 	add	r3, r2, r3
80021050:	e2833eff 	add	r3, r3, #4080	@ 0xff0
80021054:	e283300f 	add	r3, r3, #15
80021058:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
8002105c:	e3c3300f 	bic	r3, r3, #15
80021060:	e59f2050 	ldr	r2, [pc, #80]	@ 800210b8 <kmem_init2+0x19c>
80021064:	e5823038 	str	r3, [r2, #56]	@ 0x38
80021068:	e59f3048 	ldr	r3, [pc, #72]	@ 800210b8 <kmem_init2+0x19c>
8002106c:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80021070:	e50b3008 	str	r3, [fp, #-8]
80021074:	ea000006 	b	80021094 <kmem_init2+0x178>
80021078:	e51b3008 	ldr	r3, [fp, #-8]
8002107c:	e3a0100c 	mov	r1, #12
80021080:	e1a00003 	mov	r0, r3
80021084:	eb00018d 	bl	800216c0 <kfree>
80021088:	e51b3008 	ldr	r3, [fp, #-8]
8002108c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80021090:	e50b3008 	str	r3, [fp, #-8]
80021094:	e59f301c 	ldr	r3, [pc, #28]	@ 800210b8 <kmem_init2+0x19c>
80021098:	e593203c 	ldr	r2, [r3, #60]	@ 0x3c
8002109c:	e51b3008 	ldr	r3, [fp, #-8]
800210a0:	e1520003 	cmp	r2, r3
800210a4:	8afffff3 	bhi	80021078 <kmem_init2+0x15c>
800210a8:	e1a00000 	nop			@ (mov r0, r0)
800210ac:	e1a00000 	nop			@ (mov r0, r0)
800210b0:	e24bd004 	sub	sp, fp, #4
800210b4:	e8bd8800 	pop	{fp, pc}
800210b8:	800ac89c 	.word	0x800ac89c
800210bc:	800ac8dc 	.word	0x800ac8dc
800210c0:	0000ffff 	.word	0x0000ffff

800210c4 <unmark_blk>:
800210c4:	e92d4800 	push	{fp, lr}
800210c8:	e28db004 	add	fp, sp, #4
800210cc:	e24dd020 	sub	sp, sp, #32
800210d0:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
800210d4:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
800210d8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800210dc:	e2433006 	sub	r3, r3, #6
800210e0:	e2833008 	add	r3, r3, #8
800210e4:	e1a03183 	lsl	r3, r3, #3
800210e8:	e59f2168 	ldr	r2, [pc, #360]	@ 80021258 <unmark_blk+0x194>
800210ec:	e0833002 	add	r3, r3, r2
800210f0:	e50b3008 	str	r3, [fp, #-8]
800210f4:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800210f8:	e1a032c3 	asr	r3, r3, #5
800210fc:	e1a01003 	mov	r1, r3
80021100:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80021104:	ebffff34 	bl	80020ddc <get_mark>
80021108:	e50b000c 	str	r0, [fp, #-12]
8002110c:	e51b300c 	ldr	r3, [fp, #-12]
80021110:	e5933004 	ldr	r3, [r3, #4]
80021114:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80021118:	e1a00003 	mov	r0, r3
8002111c:	ebffff65 	bl	80020eb8 <available>
80021120:	e1a03000 	mov	r3, r0
80021124:	e3530000 	cmp	r3, #0
80021128:	1a000001 	bne	80021134 <unmark_blk+0x70>
8002112c:	e59f0128 	ldr	r0, [pc, #296]	@ 8002125c <unmark_blk+0x198>
80021130:	eb0002bf 	bl	80021c34 <panic>
80021134:	e51b300c 	ldr	r3, [fp, #-12]
80021138:	e5933004 	ldr	r3, [r3, #4]
8002113c:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80021140:	e202201f 	and	r2, r2, #31
80021144:	e3a01001 	mov	r1, #1
80021148:	e1a02211 	lsl	r2, r1, r2
8002114c:	e1e02002 	mvn	r2, r2
80021150:	e0022003 	and	r2, r2, r3
80021154:	e51b300c 	ldr	r3, [fp, #-12]
80021158:	e5832004 	str	r2, [r3, #4]
8002115c:	e51b300c 	ldr	r3, [fp, #-12]
80021160:	e5933004 	ldr	r3, [r3, #4]
80021164:	e3530000 	cmp	r3, #0
80021168:	1a000037 	bne	8002124c <unmark_blk+0x188>
8002116c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80021170:	e1a032c3 	asr	r3, r3, #5
80021174:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80021178:	e51b300c 	ldr	r3, [fp, #-12]
8002117c:	e5933000 	ldr	r3, [r3]
80021180:	e1a03823 	lsr	r3, r3, #16
80021184:	e50b3010 	str	r3, [fp, #-16]
80021188:	e51b300c 	ldr	r3, [fp, #-12]
8002118c:	e5933000 	ldr	r3, [r3]
80021190:	e6ff3073 	uxth	r3, r3
80021194:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80021198:	e51b3010 	ldr	r3, [fp, #-16]
8002119c:	e59f20bc 	ldr	r2, [pc, #188]	@ 80021260 <unmark_blk+0x19c>
800211a0:	e1530002 	cmp	r3, r2
800211a4:	0a00000d 	beq	800211e0 <unmark_blk+0x11c>
800211a8:	e51b1010 	ldr	r1, [fp, #-16]
800211ac:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
800211b0:	ebffff09 	bl	80020ddc <get_mark>
800211b4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800211b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800211bc:	e5933000 	ldr	r3, [r3]
800211c0:	e1a03823 	lsr	r3, r3, #16
800211c4:	e1a03803 	lsl	r3, r3, #16
800211c8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800211cc:	e6ff2072 	uxth	r2, r2
800211d0:	e1832002 	orr	r2, r3, r2
800211d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800211d8:	e5832000 	str	r2, [r3]
800211dc:	ea000007 	b	80021200 <unmark_blk+0x13c>
800211e0:	e51b3008 	ldr	r3, [fp, #-8]
800211e4:	e5932000 	ldr	r2, [r3]
800211e8:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800211ec:	e1520003 	cmp	r2, r3
800211f0:	1a000002 	bne	80021200 <unmark_blk+0x13c>
800211f4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800211f8:	e51b3008 	ldr	r3, [fp, #-8]
800211fc:	e5832000 	str	r2, [r3]
80021200:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80021204:	e59f2054 	ldr	r2, [pc, #84]	@ 80021260 <unmark_blk+0x19c>
80021208:	e1530002 	cmp	r3, r2
8002120c:	0a00000b 	beq	80021240 <unmark_blk+0x17c>
80021210:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80021214:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80021218:	ebfffeef 	bl	80020ddc <get_mark>
8002121c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021220:	e51b3010 	ldr	r3, [fp, #-16]
80021224:	e1a02803 	lsl	r2, r3, #16
80021228:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002122c:	e5933000 	ldr	r3, [r3]
80021230:	e6ff3073 	uxth	r3, r3
80021234:	e1822003 	orr	r2, r2, r3
80021238:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002123c:	e5832000 	str	r2, [r3]
80021240:	e51b300c 	ldr	r3, [fp, #-12]
80021244:	e3e02000 	mvn	r2, #0
80021248:	e5832000 	str	r2, [r3]
8002124c:	e1a00000 	nop			@ (mov r0, r0)
80021250:	e24bd004 	sub	sp, fp, #4
80021254:	e8bd8800 	pop	{fp, pc}
80021258:	800ac89c 	.word	0x800ac89c
8002125c:	80029ecc 	.word	0x80029ecc
80021260:	0000ffff 	.word	0x0000ffff

80021264 <mark_blk>:
80021264:	e92d4800 	push	{fp, lr}
80021268:	e28db004 	add	fp, sp, #4
8002126c:	e24dd018 	sub	sp, sp, #24
80021270:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021274:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80021278:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002127c:	e2433006 	sub	r3, r3, #6
80021280:	e2833008 	add	r3, r3, #8
80021284:	e1a03183 	lsl	r3, r3, #3
80021288:	e59f2118 	ldr	r2, [pc, #280]	@ 800213a8 <mark_blk+0x144>
8002128c:	e0833002 	add	r3, r3, r2
80021290:	e50b3008 	str	r3, [fp, #-8]
80021294:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80021298:	e1a032c3 	asr	r3, r3, #5
8002129c:	e1a01003 	mov	r1, r3
800212a0:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
800212a4:	ebfffecc 	bl	80020ddc <get_mark>
800212a8:	e50b000c 	str	r0, [fp, #-12]
800212ac:	e51b300c 	ldr	r3, [fp, #-12]
800212b0:	e5933004 	ldr	r3, [r3, #4]
800212b4:	e3530000 	cmp	r3, #0
800212b8:	03a03001 	moveq	r3, #1
800212bc:	13a03000 	movne	r3, #0
800212c0:	e6ef3073 	uxtb	r3, r3
800212c4:	e50b3010 	str	r3, [fp, #-16]
800212c8:	e51b300c 	ldr	r3, [fp, #-12]
800212cc:	e5933004 	ldr	r3, [r3, #4]
800212d0:	e51b101c 	ldr	r1, [fp, #-28]	@ 0xffffffe4
800212d4:	e1a00003 	mov	r0, r3
800212d8:	ebfffef6 	bl	80020eb8 <available>
800212dc:	e1a03000 	mov	r3, r0
800212e0:	e3530000 	cmp	r3, #0
800212e4:	0a000001 	beq	800212f0 <mark_blk+0x8c>
800212e8:	e59f00bc 	ldr	r0, [pc, #188]	@ 800213ac <mark_blk+0x148>
800212ec:	eb000250 	bl	80021c34 <panic>
800212f0:	e51b300c 	ldr	r3, [fp, #-12]
800212f4:	e5933004 	ldr	r3, [r3, #4]
800212f8:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
800212fc:	e202201f 	and	r2, r2, #31
80021300:	e3a01001 	mov	r1, #1
80021304:	e1a02211 	lsl	r2, r1, r2
80021308:	e1832002 	orr	r2, r3, r2
8002130c:	e51b300c 	ldr	r3, [fp, #-12]
80021310:	e5832004 	str	r2, [r3, #4]
80021314:	e51b3010 	ldr	r3, [fp, #-16]
80021318:	e3530000 	cmp	r3, #0
8002131c:	0a00001e 	beq	8002139c <mark_blk+0x138>
80021320:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80021324:	e1a032c3 	asr	r3, r3, #5
80021328:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
8002132c:	e51b3008 	ldr	r3, [fp, #-8]
80021330:	e5933000 	ldr	r3, [r3]
80021334:	e1e03803 	mvn	r3, r3, lsl #16
80021338:	e1e03823 	mvn	r3, r3, lsr #16
8002133c:	e51b200c 	ldr	r2, [fp, #-12]
80021340:	e5823000 	str	r3, [r2]
80021344:	e51b3008 	ldr	r3, [fp, #-8]
80021348:	e5933000 	ldr	r3, [r3]
8002134c:	e59f205c 	ldr	r2, [pc, #92]	@ 800213b0 <mark_blk+0x14c>
80021350:	e1530002 	cmp	r3, r2
80021354:	0a00000d 	beq	80021390 <mark_blk+0x12c>
80021358:	e51b3008 	ldr	r3, [fp, #-8]
8002135c:	e5933000 	ldr	r3, [r3]
80021360:	e1a01003 	mov	r1, r3
80021364:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021368:	ebfffe9b 	bl	80020ddc <get_mark>
8002136c:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80021370:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80021374:	e1a02803 	lsl	r2, r3, #16
80021378:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002137c:	e5933000 	ldr	r3, [r3]
80021380:	e6ff3073 	uxth	r3, r3
80021384:	e1822003 	orr	r2, r2, r3
80021388:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002138c:	e5832000 	str	r2, [r3]
80021390:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80021394:	e51b3008 	ldr	r3, [fp, #-8]
80021398:	e5832000 	str	r2, [r3]
8002139c:	e1a00000 	nop			@ (mov r0, r0)
800213a0:	e24bd004 	sub	sp, fp, #4
800213a4:	e8bd8800 	pop	{fp, pc}
800213a8:	800ac89c 	.word	0x800ac89c
800213ac:	80029edc 	.word	0x80029edc
800213b0:	0000ffff 	.word	0x0000ffff

800213b4 <get_blk>:
800213b4:	e92d4800 	push	{fp, lr}
800213b8:	e28db004 	add	fp, sp, #4
800213bc:	e24dd018 	sub	sp, sp, #24
800213c0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800213c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800213c8:	e2433006 	sub	r3, r3, #6
800213cc:	e2833008 	add	r3, r3, #8
800213d0:	e1a03183 	lsl	r3, r3, #3
800213d4:	e59f20c0 	ldr	r2, [pc, #192]	@ 8002149c <get_blk+0xe8>
800213d8:	e0833002 	add	r3, r3, r2
800213dc:	e50b300c 	str	r3, [fp, #-12]
800213e0:	e51b300c 	ldr	r3, [fp, #-12]
800213e4:	e5933000 	ldr	r3, [r3]
800213e8:	e1a01003 	mov	r1, r3
800213ec:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
800213f0:	ebfffe79 	bl	80020ddc <get_mark>
800213f4:	e50b0010 	str	r0, [fp, #-16]
800213f8:	e51b3010 	ldr	r3, [fp, #-16]
800213fc:	e5933004 	ldr	r3, [r3, #4]
80021400:	e3530000 	cmp	r3, #0
80021404:	1a000001 	bne	80021410 <get_blk+0x5c>
80021408:	e59f0090 	ldr	r0, [pc, #144]	@ 800214a0 <get_blk+0xec>
8002140c:	eb000208 	bl	80021c34 <panic>
80021410:	e3a03000 	mov	r3, #0
80021414:	e50b3008 	str	r3, [fp, #-8]
80021418:	ea000018 	b	80021480 <get_blk+0xcc>
8002141c:	e51b3010 	ldr	r3, [fp, #-16]
80021420:	e5933004 	ldr	r3, [r3, #4]
80021424:	e3a01001 	mov	r1, #1
80021428:	e51b2008 	ldr	r2, [fp, #-8]
8002142c:	e1a02211 	lsl	r2, r1, r2
80021430:	e0033002 	and	r3, r3, r2
80021434:	e3530000 	cmp	r3, #0
80021438:	0a00000d 	beq	80021474 <get_blk+0xc0>
8002143c:	e51b300c 	ldr	r3, [fp, #-12]
80021440:	e5933000 	ldr	r3, [r3]
80021444:	e1a02283 	lsl	r2, r3, #5
80021448:	e51b3008 	ldr	r3, [fp, #-8]
8002144c:	e0823003 	add	r3, r2, r3
80021450:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80021454:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80021458:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
8002145c:	ebffff18 	bl	800210c4 <unmark_blk>
80021460:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80021464:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021468:	ebfffe72 	bl	80020e38 <blkid2mem>
8002146c:	e1a03000 	mov	r3, r0
80021470:	ea000006 	b	80021490 <get_blk+0xdc>
80021474:	e51b3008 	ldr	r3, [fp, #-8]
80021478:	e2833001 	add	r3, r3, #1
8002147c:	e50b3008 	str	r3, [fp, #-8]
80021480:	e51b3008 	ldr	r3, [fp, #-8]
80021484:	e353001f 	cmp	r3, #31
80021488:	daffffe3 	ble	8002141c <get_blk+0x68>
8002148c:	e3a03000 	mov	r3, #0
80021490:	e1a00003 	mov	r0, r3
80021494:	e24bd004 	sub	sp, fp, #4
80021498:	e8bd8800 	pop	{fp, pc}
8002149c:	800ac89c 	.word	0x800ac89c
800214a0:	80029eec 	.word	0x80029eec

800214a4 <_kmalloc>:
800214a4:	e92d4800 	push	{fp, lr}
800214a8:	e28db004 	add	fp, sp, #4
800214ac:	e24dd010 	sub	sp, sp, #16
800214b0:	e50b0010 	str	r0, [fp, #-16]
800214b4:	e51b3010 	ldr	r3, [fp, #-16]
800214b8:	e2433006 	sub	r3, r3, #6
800214bc:	e2833008 	add	r3, r3, #8
800214c0:	e1a03183 	lsl	r3, r3, #3
800214c4:	e59f2090 	ldr	r2, [pc, #144]	@ 8002155c <_kmalloc+0xb8>
800214c8:	e0833002 	add	r3, r3, r2
800214cc:	e50b300c 	str	r3, [fp, #-12]
800214d0:	e3a03000 	mov	r3, #0
800214d4:	e50b3008 	str	r3, [fp, #-8]
800214d8:	e51b300c 	ldr	r3, [fp, #-12]
800214dc:	e5933000 	ldr	r3, [r3]
800214e0:	e59f2078 	ldr	r2, [pc, #120]	@ 80021560 <_kmalloc+0xbc>
800214e4:	e1530002 	cmp	r3, r2
800214e8:	0a000003 	beq	800214fc <_kmalloc+0x58>
800214ec:	e51b0010 	ldr	r0, [fp, #-16]
800214f0:	ebffffaf 	bl	800213b4 <get_blk>
800214f4:	e50b0008 	str	r0, [fp, #-8]
800214f8:	ea000013 	b	8002154c <_kmalloc+0xa8>
800214fc:	e51b3010 	ldr	r3, [fp, #-16]
80021500:	e353000b 	cmp	r3, #11
80021504:	ca000010 	bgt	8002154c <_kmalloc+0xa8>
80021508:	e51b3010 	ldr	r3, [fp, #-16]
8002150c:	e2833001 	add	r3, r3, #1
80021510:	e1a00003 	mov	r0, r3
80021514:	ebffffe2 	bl	800214a4 <_kmalloc>
80021518:	e50b0008 	str	r0, [fp, #-8]
8002151c:	e51b3008 	ldr	r3, [fp, #-8]
80021520:	e3530000 	cmp	r3, #0
80021524:	0a000008 	beq	8002154c <_kmalloc+0xa8>
80021528:	e3a02001 	mov	r2, #1
8002152c:	e51b3010 	ldr	r3, [fp, #-16]
80021530:	e1a03312 	lsl	r3, r2, r3
80021534:	e1a02003 	mov	r2, r3
80021538:	e51b3008 	ldr	r3, [fp, #-8]
8002153c:	e0833002 	add	r3, r3, r2
80021540:	e51b1010 	ldr	r1, [fp, #-16]
80021544:	e1a00003 	mov	r0, r3
80021548:	eb00001e 	bl	800215c8 <_kfree>
8002154c:	e51b3008 	ldr	r3, [fp, #-8]
80021550:	e1a00003 	mov	r0, r3
80021554:	e24bd004 	sub	sp, fp, #4
80021558:	e8bd8800 	pop	{fp, pc}
8002155c:	800ac89c 	.word	0x800ac89c
80021560:	0000ffff 	.word	0x0000ffff

80021564 <kmalloc>:
80021564:	e92d4800 	push	{fp, lr}
80021568:	e28db004 	add	fp, sp, #4
8002156c:	e24dd010 	sub	sp, sp, #16
80021570:	e50b0010 	str	r0, [fp, #-16]
80021574:	e51b3010 	ldr	r3, [fp, #-16]
80021578:	e353000c 	cmp	r3, #12
8002157c:	ca000002 	bgt	8002158c <kmalloc+0x28>
80021580:	e51b3010 	ldr	r3, [fp, #-16]
80021584:	e3530005 	cmp	r3, #5
80021588:	ca000001 	bgt	80021594 <kmalloc+0x30>
8002158c:	e59f002c 	ldr	r0, [pc, #44]	@ 800215c0 <kmalloc+0x5c>
80021590:	eb0001a7 	bl	80021c34 <panic>
80021594:	e59f0028 	ldr	r0, [pc, #40]	@ 800215c4 <kmalloc+0x60>
80021598:	eb001474 	bl	80026770 <acquire>
8002159c:	e51b0010 	ldr	r0, [fp, #-16]
800215a0:	ebffffbf 	bl	800214a4 <_kmalloc>
800215a4:	e50b0008 	str	r0, [fp, #-8]
800215a8:	e59f0014 	ldr	r0, [pc, #20]	@ 800215c4 <kmalloc+0x60>
800215ac:	eb00147a 	bl	8002679c <release>
800215b0:	e51b3008 	ldr	r3, [fp, #-8]
800215b4:	e1a00003 	mov	r0, r3
800215b8:	e24bd004 	sub	sp, fp, #4
800215bc:	e8bd8800 	pop	{fp, pc}
800215c0:	80029f04 	.word	0x80029f04
800215c4:	800ac89c 	.word	0x800ac89c

800215c8 <_kfree>:
800215c8:	e92d4800 	push	{fp, lr}
800215cc:	e28db004 	add	fp, sp, #4
800215d0:	e24dd018 	sub	sp, sp, #24
800215d4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800215d8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
800215dc:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
800215e0:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
800215e4:	ebfffe23 	bl	80020e78 <mem2blkid>
800215e8:	e50b0008 	str	r0, [fp, #-8]
800215ec:	e51b3008 	ldr	r3, [fp, #-8]
800215f0:	e1a032c3 	asr	r3, r3, #5
800215f4:	e1a01003 	mov	r1, r3
800215f8:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
800215fc:	ebfffdf6 	bl	80020ddc <get_mark>
80021600:	e50b000c 	str	r0, [fp, #-12]
80021604:	e51b300c 	ldr	r3, [fp, #-12]
80021608:	e5933004 	ldr	r3, [r3, #4]
8002160c:	e51b1008 	ldr	r1, [fp, #-8]
80021610:	e1a00003 	mov	r0, r3
80021614:	ebfffe27 	bl	80020eb8 <available>
80021618:	e1a03000 	mov	r3, r0
8002161c:	e3530000 	cmp	r3, #0
80021620:	0a000001 	beq	8002162c <_kfree+0x64>
80021624:	e59f0090 	ldr	r0, [pc, #144]	@ 800216bc <_kfree+0xf4>
80021628:	eb000181 	bl	80021c34 <panic>
8002162c:	e51b3008 	ldr	r3, [fp, #-8]
80021630:	e2233001 	eor	r3, r3, #1
80021634:	e50b3010 	str	r3, [fp, #-16]
80021638:	e51b300c 	ldr	r3, [fp, #-12]
8002163c:	e5933004 	ldr	r3, [r3, #4]
80021640:	e51b1010 	ldr	r1, [fp, #-16]
80021644:	e1a00003 	mov	r0, r3
80021648:	ebfffe1a 	bl	80020eb8 <available>
8002164c:	e1a03000 	mov	r3, r0
80021650:	e3530000 	cmp	r3, #0
80021654:	0a000002 	beq	80021664 <_kfree+0x9c>
80021658:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002165c:	e353000c 	cmp	r3, #12
80021660:	1a000003 	bne	80021674 <_kfree+0xac>
80021664:	e51b1008 	ldr	r1, [fp, #-8]
80021668:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
8002166c:	ebfffefc 	bl	80021264 <mark_blk>
80021670:	ea00000e 	b	800216b0 <_kfree+0xe8>
80021674:	e51b1010 	ldr	r1, [fp, #-16]
80021678:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
8002167c:	ebfffe90 	bl	800210c4 <unmark_blk>
80021680:	e51b3008 	ldr	r3, [fp, #-8]
80021684:	e3c33001 	bic	r3, r3, #1
80021688:	e1a01003 	mov	r1, r3
8002168c:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
80021690:	ebfffde8 	bl	80020e38 <blkid2mem>
80021694:	e1a02000 	mov	r2, r0
80021698:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002169c:	e2833001 	add	r3, r3, #1
800216a0:	e1a01003 	mov	r1, r3
800216a4:	e1a00002 	mov	r0, r2
800216a8:	ebffffc6 	bl	800215c8 <_kfree>
800216ac:	e1a00000 	nop			@ (mov r0, r0)
800216b0:	e1a00000 	nop			@ (mov r0, r0)
800216b4:	e24bd004 	sub	sp, fp, #4
800216b8:	e8bd8800 	pop	{fp, pc}
800216bc:	80029f24 	.word	0x80029f24

800216c0 <kfree>:
800216c0:	e92d4800 	push	{fp, lr}
800216c4:	e28db004 	add	fp, sp, #4
800216c8:	e24dd008 	sub	sp, sp, #8
800216cc:	e50b0008 	str	r0, [fp, #-8]
800216d0:	e50b100c 	str	r1, [fp, #-12]
800216d4:	e51b300c 	ldr	r3, [fp, #-12]
800216d8:	e353000c 	cmp	r3, #12
800216dc:	ca00000b 	bgt	80021710 <kfree+0x50>
800216e0:	e51b300c 	ldr	r3, [fp, #-12]
800216e4:	e3530005 	cmp	r3, #5
800216e8:	da000008 	ble	80021710 <kfree+0x50>
800216ec:	e3a02001 	mov	r2, #1
800216f0:	e51b300c 	ldr	r3, [fp, #-12]
800216f4:	e1a03312 	lsl	r3, r2, r3
800216f8:	e2433001 	sub	r3, r3, #1
800216fc:	e1a02003 	mov	r2, r3
80021700:	e51b3008 	ldr	r3, [fp, #-8]
80021704:	e0033002 	and	r3, r3, r2
80021708:	e3530000 	cmp	r3, #0
8002170c:	0a000001 	beq	80021718 <kfree+0x58>
80021710:	e59f0028 	ldr	r0, [pc, #40]	@ 80021740 <kfree+0x80>
80021714:	eb000146 	bl	80021c34 <panic>
80021718:	e59f0024 	ldr	r0, [pc, #36]	@ 80021744 <kfree+0x84>
8002171c:	eb001413 	bl	80026770 <acquire>
80021720:	e51b100c 	ldr	r1, [fp, #-12]
80021724:	e51b0008 	ldr	r0, [fp, #-8]
80021728:	ebffffa6 	bl	800215c8 <_kfree>
8002172c:	e59f0010 	ldr	r0, [pc, #16]	@ 80021744 <kfree+0x84>
80021730:	eb001419 	bl	8002679c <release>
80021734:	e1a00000 	nop			@ (mov r0, r0)
80021738:	e24bd004 	sub	sp, fp, #4
8002173c:	e8bd8800 	pop	{fp, pc}
80021740:	80029f38 	.word	0x80029f38
80021744:	800ac89c 	.word	0x800ac89c

80021748 <free_page>:
80021748:	e92d4800 	push	{fp, lr}
8002174c:	e28db004 	add	fp, sp, #4
80021750:	e24dd008 	sub	sp, sp, #8
80021754:	e50b0008 	str	r0, [fp, #-8]
80021758:	e3a0100c 	mov	r1, #12
8002175c:	e51b0008 	ldr	r0, [fp, #-8]
80021760:	ebffffd6 	bl	800216c0 <kfree>
80021764:	e1a00000 	nop			@ (mov r0, r0)
80021768:	e24bd004 	sub	sp, fp, #4
8002176c:	e8bd8800 	pop	{fp, pc}

80021770 <alloc_page>:
80021770:	e92d4800 	push	{fp, lr}
80021774:	e28db004 	add	fp, sp, #4
80021778:	e3a0000c 	mov	r0, #12
8002177c:	ebffff78 	bl	80021564 <kmalloc>
80021780:	e1a03000 	mov	r3, r0
80021784:	e1a00003 	mov	r0, r3
80021788:	e8bd8800 	pop	{fp, pc}

8002178c <get_order>:
8002178c:	e92d4800 	push	{fp, lr}
80021790:	e28db004 	add	fp, sp, #4
80021794:	e24dd010 	sub	sp, sp, #16
80021798:	e50b0010 	str	r0, [fp, #-16]
8002179c:	e51b3010 	ldr	r3, [fp, #-16]
800217a0:	e2433001 	sub	r3, r3, #1
800217a4:	e50b3010 	str	r3, [fp, #-16]
800217a8:	e51b3010 	ldr	r3, [fp, #-16]
800217ac:	e1a030a3 	lsr	r3, r3, #1
800217b0:	e51b2010 	ldr	r2, [fp, #-16]
800217b4:	e1823003 	orr	r3, r2, r3
800217b8:	e50b3010 	str	r3, [fp, #-16]
800217bc:	e51b3010 	ldr	r3, [fp, #-16]
800217c0:	e1a03123 	lsr	r3, r3, #2
800217c4:	e51b2010 	ldr	r2, [fp, #-16]
800217c8:	e1823003 	orr	r3, r2, r3
800217cc:	e50b3010 	str	r3, [fp, #-16]
800217d0:	e51b3010 	ldr	r3, [fp, #-16]
800217d4:	e1a03223 	lsr	r3, r3, #4
800217d8:	e51b2010 	ldr	r2, [fp, #-16]
800217dc:	e1823003 	orr	r3, r2, r3
800217e0:	e50b3010 	str	r3, [fp, #-16]
800217e4:	e51b3010 	ldr	r3, [fp, #-16]
800217e8:	e1a03423 	lsr	r3, r3, #8
800217ec:	e51b2010 	ldr	r2, [fp, #-16]
800217f0:	e1823003 	orr	r3, r2, r3
800217f4:	e50b3010 	str	r3, [fp, #-16]
800217f8:	e51b3010 	ldr	r3, [fp, #-16]
800217fc:	e1a03823 	lsr	r3, r3, #16
80021800:	e51b2010 	ldr	r2, [fp, #-16]
80021804:	e1823003 	orr	r3, r2, r3
80021808:	e50b3010 	str	r3, [fp, #-16]
8002180c:	e51b3010 	ldr	r3, [fp, #-16]
80021810:	e2833001 	add	r3, r3, #1
80021814:	e50b3010 	str	r3, [fp, #-16]
80021818:	e3a03000 	mov	r3, #0
8002181c:	e50b3008 	str	r3, [fp, #-8]
80021820:	ea00000a 	b	80021850 <get_order+0xc4>
80021824:	e3a02001 	mov	r2, #1
80021828:	e51b3008 	ldr	r3, [fp, #-8]
8002182c:	e1a03312 	lsl	r3, r2, r3
80021830:	e1a02003 	mov	r2, r3
80021834:	e51b3010 	ldr	r3, [fp, #-16]
80021838:	e0033002 	and	r3, r3, r2
8002183c:	e3530000 	cmp	r3, #0
80021840:	1a000006 	bne	80021860 <get_order+0xd4>
80021844:	e51b3008 	ldr	r3, [fp, #-8]
80021848:	e2833001 	add	r3, r3, #1
8002184c:	e50b3008 	str	r3, [fp, #-8]
80021850:	e51b3008 	ldr	r3, [fp, #-8]
80021854:	e353001f 	cmp	r3, #31
80021858:	9afffff1 	bls	80021824 <get_order+0x98>
8002185c:	ea000000 	b	80021864 <get_order+0xd8>
80021860:	e1a00000 	nop			@ (mov r0, r0)
80021864:	e51b3008 	ldr	r3, [fp, #-8]
80021868:	e3530005 	cmp	r3, #5
8002186c:	8a000002 	bhi	8002187c <get_order+0xf0>
80021870:	e3a03006 	mov	r3, #6
80021874:	e50b3008 	str	r3, [fp, #-8]
80021878:	ea000004 	b	80021890 <get_order+0x104>
8002187c:	e51b3008 	ldr	r3, [fp, #-8]
80021880:	e353000c 	cmp	r3, #12
80021884:	9a000001 	bls	80021890 <get_order+0x104>
80021888:	e59f0010 	ldr	r0, [pc, #16]	@ 800218a0 <get_order+0x114>
8002188c:	eb0000e8 	bl	80021c34 <panic>
80021890:	e51b3008 	ldr	r3, [fp, #-8]
80021894:	e1a00003 	mov	r0, r3
80021898:	e24bd004 	sub	sp, fp, #4
8002189c:	e8bd8800 	pop	{fp, pc}
800218a0:	80029f68 	.word	0x80029f68

800218a4 <printint>:
800218a4:	e92d4800 	push	{fp, lr}
800218a8:	e28db004 	add	fp, sp, #4
800218ac:	e24dd028 	sub	sp, sp, #40	@ 0x28
800218b0:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
800218b4:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
800218b8:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
800218bc:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800218c0:	e3530000 	cmp	r3, #0
800218c4:	0a00000a 	beq	800218f4 <printint+0x50>
800218c8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800218cc:	e1a03fa3 	lsr	r3, r3, #31
800218d0:	e6ef3073 	uxtb	r3, r3
800218d4:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
800218d8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800218dc:	e3530000 	cmp	r3, #0
800218e0:	0a000003 	beq	800218f4 <printint+0x50>
800218e4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800218e8:	e2633000 	rsb	r3, r3, #0
800218ec:	e50b300c 	str	r3, [fp, #-12]
800218f0:	ea000001 	b	800218fc <printint+0x58>
800218f4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800218f8:	e50b300c 	str	r3, [fp, #-12]
800218fc:	e3a03000 	mov	r3, #0
80021900:	e50b3008 	str	r3, [fp, #-8]
80021904:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80021908:	e51b300c 	ldr	r3, [fp, #-12]
8002190c:	e1a01002 	mov	r1, r2
80021910:	e1a00003 	mov	r0, r3
80021914:	eb0020ee 	bl	80029cd4 <__aeabi_uidivmod>
80021918:	e1a03001 	mov	r3, r1
8002191c:	e1a01003 	mov	r1, r3
80021920:	e51b3008 	ldr	r3, [fp, #-8]
80021924:	e2832001 	add	r2, r3, #1
80021928:	e50b2008 	str	r2, [fp, #-8]
8002192c:	e59f209c 	ldr	r2, [pc, #156]	@ 800219d0 <printint+0x12c>
80021930:	e7d22001 	ldrb	r2, [r2, r1]
80021934:	e2433004 	sub	r3, r3, #4
80021938:	e083300b 	add	r3, r3, fp
8002193c:	e5432018 	strb	r2, [r3, #-24]	@ 0xffffffe8
80021940:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80021944:	e1a01003 	mov	r1, r3
80021948:	e51b000c 	ldr	r0, [fp, #-12]
8002194c:	eb0020a3 	bl	80029be0 <__udivsi3>
80021950:	e1a03000 	mov	r3, r0
80021954:	e50b300c 	str	r3, [fp, #-12]
80021958:	e51b300c 	ldr	r3, [fp, #-12]
8002195c:	e3530000 	cmp	r3, #0
80021960:	1affffe7 	bne	80021904 <printint+0x60>
80021964:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80021968:	e3530000 	cmp	r3, #0
8002196c:	0a00000d 	beq	800219a8 <printint+0x104>
80021970:	e51b3008 	ldr	r3, [fp, #-8]
80021974:	e2832001 	add	r2, r3, #1
80021978:	e50b2008 	str	r2, [fp, #-8]
8002197c:	e2433004 	sub	r3, r3, #4
80021980:	e083300b 	add	r3, r3, fp
80021984:	e3a0202d 	mov	r2, #45	@ 0x2d
80021988:	e5432018 	strb	r2, [r3, #-24]	@ 0xffffffe8
8002198c:	ea000005 	b	800219a8 <printint+0x104>
80021990:	e24b201c 	sub	r2, fp, #28
80021994:	e51b3008 	ldr	r3, [fp, #-8]
80021998:	e0823003 	add	r3, r2, r3
8002199c:	e5d33000 	ldrb	r3, [r3]
800219a0:	e1a00003 	mov	r0, r3
800219a4:	eb0000bb 	bl	80021c98 <consputc>
800219a8:	e51b3008 	ldr	r3, [fp, #-8]
800219ac:	e2433001 	sub	r3, r3, #1
800219b0:	e50b3008 	str	r3, [fp, #-8]
800219b4:	e51b3008 	ldr	r3, [fp, #-8]
800219b8:	e3530000 	cmp	r3, #0
800219bc:	aafffff3 	bge	80021990 <printint+0xec>
800219c0:	e1a00000 	nop			@ (mov r0, r0)
800219c4:	e1a00000 	nop			@ (mov r0, r0)
800219c8:	e24bd004 	sub	sp, fp, #4
800219cc:	e8bd8800 	pop	{fp, pc}
800219d0:	8002b000 	.word	0x8002b000

800219d4 <cprintf>:
800219d4:	e92d000f 	push	{r0, r1, r2, r3}
800219d8:	e92d4800 	push	{fp, lr}
800219dc:	e28db004 	add	fp, sp, #4
800219e0:	e24dd018 	sub	sp, sp, #24
800219e4:	e59f323c 	ldr	r3, [pc, #572]	@ 80021c28 <cprintf+0x254>
800219e8:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
800219ec:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800219f0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800219f4:	e3530000 	cmp	r3, #0
800219f8:	0a000001 	beq	80021a04 <cprintf+0x30>
800219fc:	e59f0224 	ldr	r0, [pc, #548]	@ 80021c28 <cprintf+0x254>
80021a00:	eb00135a 	bl	80026770 <acquire>
80021a04:	e59b3004 	ldr	r3, [fp, #4]
80021a08:	e3530000 	cmp	r3, #0
80021a0c:	1a000001 	bne	80021a18 <cprintf+0x44>
80021a10:	e59f0214 	ldr	r0, [pc, #532]	@ 80021c2c <cprintf+0x258>
80021a14:	eb000086 	bl	80021c34 <panic>
80021a18:	e28b3008 	add	r3, fp, #8
80021a1c:	e50b300c 	str	r3, [fp, #-12]
80021a20:	e3a03000 	mov	r3, #0
80021a24:	e50b3008 	str	r3, [fp, #-8]
80021a28:	ea00006a 	b	80021bd8 <cprintf+0x204>
80021a2c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021a30:	e3530025 	cmp	r3, #37	@ 0x25
80021a34:	0a000002 	beq	80021a44 <cprintf+0x70>
80021a38:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021a3c:	eb000095 	bl	80021c98 <consputc>
80021a40:	ea000061 	b	80021bcc <cprintf+0x1f8>
80021a44:	e59b2004 	ldr	r2, [fp, #4]
80021a48:	e51b3008 	ldr	r3, [fp, #-8]
80021a4c:	e2833001 	add	r3, r3, #1
80021a50:	e50b3008 	str	r3, [fp, #-8]
80021a54:	e51b3008 	ldr	r3, [fp, #-8]
80021a58:	e0823003 	add	r3, r2, r3
80021a5c:	e5d33000 	ldrb	r3, [r3]
80021a60:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80021a64:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021a68:	e3530000 	cmp	r3, #0
80021a6c:	0a000062 	beq	80021bfc <cprintf+0x228>
80021a70:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021a74:	e3530025 	cmp	r3, #37	@ 0x25
80021a78:	0a00004b 	beq	80021bac <cprintf+0x1d8>
80021a7c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021a80:	e3530025 	cmp	r3, #37	@ 0x25
80021a84:	ba00004b 	blt	80021bb8 <cprintf+0x1e4>
80021a88:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021a8c:	e3530078 	cmp	r3, #120	@ 0x78
80021a90:	ca000048 	bgt	80021bb8 <cprintf+0x1e4>
80021a94:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021a98:	e3530064 	cmp	r3, #100	@ 0x64
80021a9c:	ba000045 	blt	80021bb8 <cprintf+0x1e4>
80021aa0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021aa4:	e2433064 	sub	r3, r3, #100	@ 0x64
80021aa8:	e3530014 	cmp	r3, #20
80021aac:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
80021ab0:	ea000040 	b	80021bb8 <cprintf+0x1e4>
80021ab4:	80021b08 	.word	0x80021b08
80021ab8:	80021bb8 	.word	0x80021bb8
80021abc:	80021bb8 	.word	0x80021bb8
80021ac0:	80021bb8 	.word	0x80021bb8
80021ac4:	80021bb8 	.word	0x80021bb8
80021ac8:	80021bb8 	.word	0x80021bb8
80021acc:	80021bb8 	.word	0x80021bb8
80021ad0:	80021bb8 	.word	0x80021bb8
80021ad4:	80021bb8 	.word	0x80021bb8
80021ad8:	80021bb8 	.word	0x80021bb8
80021adc:	80021bb8 	.word	0x80021bb8
80021ae0:	80021bb8 	.word	0x80021bb8
80021ae4:	80021b2c 	.word	0x80021b2c
80021ae8:	80021bb8 	.word	0x80021bb8
80021aec:	80021bb8 	.word	0x80021bb8
80021af0:	80021b50 	.word	0x80021b50
80021af4:	80021bb8 	.word	0x80021bb8
80021af8:	80021bb8 	.word	0x80021bb8
80021afc:	80021bb8 	.word	0x80021bb8
80021b00:	80021bb8 	.word	0x80021bb8
80021b04:	80021b2c 	.word	0x80021b2c
80021b08:	e51b300c 	ldr	r3, [fp, #-12]
80021b0c:	e2832004 	add	r2, r3, #4
80021b10:	e50b200c 	str	r2, [fp, #-12]
80021b14:	e5933000 	ldr	r3, [r3]
80021b18:	e3a02001 	mov	r2, #1
80021b1c:	e3a0100a 	mov	r1, #10
80021b20:	e1a00003 	mov	r0, r3
80021b24:	ebffff5e 	bl	800218a4 <printint>
80021b28:	ea000027 	b	80021bcc <cprintf+0x1f8>
80021b2c:	e51b300c 	ldr	r3, [fp, #-12]
80021b30:	e2832004 	add	r2, r3, #4
80021b34:	e50b200c 	str	r2, [fp, #-12]
80021b38:	e5933000 	ldr	r3, [r3]
80021b3c:	e3a02000 	mov	r2, #0
80021b40:	e3a01010 	mov	r1, #16
80021b44:	e1a00003 	mov	r0, r3
80021b48:	ebffff55 	bl	800218a4 <printint>
80021b4c:	ea00001e 	b	80021bcc <cprintf+0x1f8>
80021b50:	e51b300c 	ldr	r3, [fp, #-12]
80021b54:	e2832004 	add	r2, r3, #4
80021b58:	e50b200c 	str	r2, [fp, #-12]
80021b5c:	e5933000 	ldr	r3, [r3]
80021b60:	e50b3010 	str	r3, [fp, #-16]
80021b64:	e51b3010 	ldr	r3, [fp, #-16]
80021b68:	e3530000 	cmp	r3, #0
80021b6c:	1a000009 	bne	80021b98 <cprintf+0x1c4>
80021b70:	e59f30b8 	ldr	r3, [pc, #184]	@ 80021c30 <cprintf+0x25c>
80021b74:	e50b3010 	str	r3, [fp, #-16]
80021b78:	ea000006 	b	80021b98 <cprintf+0x1c4>
80021b7c:	e51b3010 	ldr	r3, [fp, #-16]
80021b80:	e5d33000 	ldrb	r3, [r3]
80021b84:	e1a00003 	mov	r0, r3
80021b88:	eb000042 	bl	80021c98 <consputc>
80021b8c:	e51b3010 	ldr	r3, [fp, #-16]
80021b90:	e2833001 	add	r3, r3, #1
80021b94:	e50b3010 	str	r3, [fp, #-16]
80021b98:	e51b3010 	ldr	r3, [fp, #-16]
80021b9c:	e5d33000 	ldrb	r3, [r3]
80021ba0:	e3530000 	cmp	r3, #0
80021ba4:	1afffff4 	bne	80021b7c <cprintf+0x1a8>
80021ba8:	ea000007 	b	80021bcc <cprintf+0x1f8>
80021bac:	e3a00025 	mov	r0, #37	@ 0x25
80021bb0:	eb000038 	bl	80021c98 <consputc>
80021bb4:	ea000004 	b	80021bcc <cprintf+0x1f8>
80021bb8:	e3a00025 	mov	r0, #37	@ 0x25
80021bbc:	eb000035 	bl	80021c98 <consputc>
80021bc0:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021bc4:	eb000033 	bl	80021c98 <consputc>
80021bc8:	e1a00000 	nop			@ (mov r0, r0)
80021bcc:	e51b3008 	ldr	r3, [fp, #-8]
80021bd0:	e2833001 	add	r3, r3, #1
80021bd4:	e50b3008 	str	r3, [fp, #-8]
80021bd8:	e59b2004 	ldr	r2, [fp, #4]
80021bdc:	e51b3008 	ldr	r3, [fp, #-8]
80021be0:	e0823003 	add	r3, r2, r3
80021be4:	e5d33000 	ldrb	r3, [r3]
80021be8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80021bec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021bf0:	e3530000 	cmp	r3, #0
80021bf4:	1affff8c 	bne	80021a2c <cprintf+0x58>
80021bf8:	ea000000 	b	80021c00 <cprintf+0x22c>
80021bfc:	e1a00000 	nop			@ (mov r0, r0)
80021c00:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80021c04:	e3530000 	cmp	r3, #0
80021c08:	0a000001 	beq	80021c14 <cprintf+0x240>
80021c0c:	e59f0014 	ldr	r0, [pc, #20]	@ 80021c28 <cprintf+0x254>
80021c10:	eb0012e1 	bl	8002679c <release>
80021c14:	e1a00000 	nop			@ (mov r0, r0)
80021c18:	e24bd004 	sub	sp, fp, #4
80021c1c:	e8bd4800 	pop	{fp, lr}
80021c20:	e28dd010 	add	sp, sp, #16
80021c24:	e12fff1e 	bx	lr
80021c28:	800ac918 	.word	0x800ac918
80021c2c:	80029f78 	.word	0x80029f78
80021c30:	80029f84 	.word	0x80029f84

80021c34 <panic>:
80021c34:	e92d4800 	push	{fp, lr}
80021c38:	e28db004 	add	fp, sp, #4
80021c3c:	e24dd008 	sub	sp, sp, #8
80021c40:	e50b0008 	str	r0, [fp, #-8]
80021c44:	ebfffa3d 	bl	80020540 <cli>
80021c48:	e59f3038 	ldr	r3, [pc, #56]	@ 80021c88 <panic+0x54>
80021c4c:	e3a02000 	mov	r2, #0
80021c50:	e5832034 	str	r2, [r3, #52]	@ 0x34
80021c54:	e59f3030 	ldr	r3, [pc, #48]	@ 80021c8c <panic+0x58>
80021c58:	e5933000 	ldr	r3, [r3]
80021c5c:	e5d33000 	ldrb	r3, [r3]
80021c60:	e1a01003 	mov	r1, r3
80021c64:	e59f0024 	ldr	r0, [pc, #36]	@ 80021c90 <panic+0x5c>
80021c68:	ebffff59 	bl	800219d4 <cprintf>
80021c6c:	e51b0008 	ldr	r0, [fp, #-8]
80021c70:	ebfffae5 	bl	8002080c <show_callstk>
80021c74:	e59f3018 	ldr	r3, [pc, #24]	@ 80021c94 <panic+0x60>
80021c78:	e3a02001 	mov	r2, #1
80021c7c:	e5832000 	str	r2, [r3]
80021c80:	e1a00000 	nop			@ (mov r0, r0)
80021c84:	eafffffd 	b	80021c80 <panic+0x4c>
80021c88:	800ac918 	.word	0x800ac918
80021c8c:	800ae698 	.word	0x800ae698
80021c90:	80029f8c 	.word	0x80029f8c
80021c94:	800ac914 	.word	0x800ac914

80021c98 <consputc>:
80021c98:	e92d4800 	push	{fp, lr}
80021c9c:	e28db004 	add	fp, sp, #4
80021ca0:	e24dd008 	sub	sp, sp, #8
80021ca4:	e50b0008 	str	r0, [fp, #-8]
80021ca8:	e59f3050 	ldr	r3, [pc, #80]	@ 80021d00 <consputc+0x68>
80021cac:	e5933000 	ldr	r3, [r3]
80021cb0:	e3530000 	cmp	r3, #0
80021cb4:	0a000002 	beq	80021cc4 <consputc+0x2c>
80021cb8:	ebfffa20 	bl	80020540 <cli>
80021cbc:	e1a00000 	nop			@ (mov r0, r0)
80021cc0:	eafffffd 	b	80021cbc <consputc+0x24>
80021cc4:	e51b3008 	ldr	r3, [fp, #-8]
80021cc8:	e3530c01 	cmp	r3, #256	@ 0x100
80021ccc:	1a000006 	bne	80021cec <consputc+0x54>
80021cd0:	e3a00008 	mov	r0, #8
80021cd4:	eb001f80 	bl	80029adc <uartputc>
80021cd8:	e3a00020 	mov	r0, #32
80021cdc:	eb001f7e 	bl	80029adc <uartputc>
80021ce0:	e3a00008 	mov	r0, #8
80021ce4:	eb001f7c 	bl	80029adc <uartputc>
80021ce8:	ea000001 	b	80021cf4 <consputc+0x5c>
80021cec:	e51b0008 	ldr	r0, [fp, #-8]
80021cf0:	eb001f79 	bl	80029adc <uartputc>
80021cf4:	e1a00000 	nop			@ (mov r0, r0)
80021cf8:	e24bd004 	sub	sp, fp, #4
80021cfc:	e8bd8800 	pop	{fp, pc}
80021d00:	800ac914 	.word	0x800ac914

80021d04 <consoleintr>:
80021d04:	e92d4800 	push	{fp, lr}
80021d08:	e28db004 	add	fp, sp, #4
80021d0c:	e24dd010 	sub	sp, sp, #16
80021d10:	e50b0010 	str	r0, [fp, #-16]
80021d14:	e59f0214 	ldr	r0, [pc, #532]	@ 80021f30 <consoleintr+0x22c>
80021d18:	eb001294 	bl	80026770 <acquire>
80021d1c:	ea000078 	b	80021f04 <consoleintr+0x200>
80021d20:	e51b3008 	ldr	r3, [fp, #-8]
80021d24:	e353007f 	cmp	r3, #127	@ 0x7f
80021d28:	0a000028 	beq	80021dd0 <consoleintr+0xcc>
80021d2c:	e51b3008 	ldr	r3, [fp, #-8]
80021d30:	e353007f 	cmp	r3, #127	@ 0x7f
80021d34:	ca000033 	bgt	80021e08 <consoleintr+0x104>
80021d38:	e51b3008 	ldr	r3, [fp, #-8]
80021d3c:	e3530015 	cmp	r3, #21
80021d40:	0a000011 	beq	80021d8c <consoleintr+0x88>
80021d44:	e51b3008 	ldr	r3, [fp, #-8]
80021d48:	e3530015 	cmp	r3, #21
80021d4c:	ca00002d 	bgt	80021e08 <consoleintr+0x104>
80021d50:	e51b3008 	ldr	r3, [fp, #-8]
80021d54:	e3530008 	cmp	r3, #8
80021d58:	0a00001c 	beq	80021dd0 <consoleintr+0xcc>
80021d5c:	e51b3008 	ldr	r3, [fp, #-8]
80021d60:	e3530010 	cmp	r3, #16
80021d64:	1a000027 	bne	80021e08 <consoleintr+0x104>
80021d68:	eb001178 	bl	80026350 <procdump>
80021d6c:	ea000064 	b	80021f04 <consoleintr+0x200>
80021d70:	e59f31b8 	ldr	r3, [pc, #440]	@ 80021f30 <consoleintr+0x22c>
80021d74:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021d78:	e2433001 	sub	r3, r3, #1
80021d7c:	e59f21ac 	ldr	r2, [pc, #428]	@ 80021f30 <consoleintr+0x22c>
80021d80:	e582323c 	str	r3, [r2, #572]	@ 0x23c
80021d84:	e3a00c01 	mov	r0, #256	@ 0x100
80021d88:	ebffffc2 	bl	80021c98 <consputc>
80021d8c:	e59f319c 	ldr	r3, [pc, #412]	@ 80021f30 <consoleintr+0x22c>
80021d90:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021d94:	e59f3194 	ldr	r3, [pc, #404]	@ 80021f30 <consoleintr+0x22c>
80021d98:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80021d9c:	e1520003 	cmp	r2, r3
80021da0:	0a000052 	beq	80021ef0 <consoleintr+0x1ec>
80021da4:	e59f3184 	ldr	r3, [pc, #388]	@ 80021f30 <consoleintr+0x22c>
80021da8:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021dac:	e2433001 	sub	r3, r3, #1
80021db0:	e1a03b83 	lsl	r3, r3, #23
80021db4:	e1a03ba3 	lsr	r3, r3, #23
80021db8:	e59f2170 	ldr	r2, [pc, #368]	@ 80021f30 <consoleintr+0x22c>
80021dbc:	e0823003 	add	r3, r2, r3
80021dc0:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
80021dc4:	e353000a 	cmp	r3, #10
80021dc8:	1affffe8 	bne	80021d70 <consoleintr+0x6c>
80021dcc:	ea000047 	b	80021ef0 <consoleintr+0x1ec>
80021dd0:	e59f3158 	ldr	r3, [pc, #344]	@ 80021f30 <consoleintr+0x22c>
80021dd4:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021dd8:	e59f3150 	ldr	r3, [pc, #336]	@ 80021f30 <consoleintr+0x22c>
80021ddc:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80021de0:	e1520003 	cmp	r2, r3
80021de4:	0a000043 	beq	80021ef8 <consoleintr+0x1f4>
80021de8:	e59f3140 	ldr	r3, [pc, #320]	@ 80021f30 <consoleintr+0x22c>
80021dec:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021df0:	e2433001 	sub	r3, r3, #1
80021df4:	e59f2134 	ldr	r2, [pc, #308]	@ 80021f30 <consoleintr+0x22c>
80021df8:	e582323c 	str	r3, [r2, #572]	@ 0x23c
80021dfc:	e3a00c01 	mov	r0, #256	@ 0x100
80021e00:	ebffffa4 	bl	80021c98 <consputc>
80021e04:	ea00003b 	b	80021ef8 <consoleintr+0x1f4>
80021e08:	e51b3008 	ldr	r3, [fp, #-8]
80021e0c:	e3530000 	cmp	r3, #0
80021e10:	0a00003a 	beq	80021f00 <consoleintr+0x1fc>
80021e14:	e59f3114 	ldr	r3, [pc, #276]	@ 80021f30 <consoleintr+0x22c>
80021e18:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021e1c:	e59f310c 	ldr	r3, [pc, #268]	@ 80021f30 <consoleintr+0x22c>
80021e20:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80021e24:	e0423003 	sub	r3, r2, r3
80021e28:	e3530c02 	cmp	r3, #512	@ 0x200
80021e2c:	2a000033 	bcs	80021f00 <consoleintr+0x1fc>
80021e30:	e51b3008 	ldr	r3, [fp, #-8]
80021e34:	e353000d 	cmp	r3, #13
80021e38:	0a000001 	beq	80021e44 <consoleintr+0x140>
80021e3c:	e51b3008 	ldr	r3, [fp, #-8]
80021e40:	ea000000 	b	80021e48 <consoleintr+0x144>
80021e44:	e3a0300a 	mov	r3, #10
80021e48:	e50b3008 	str	r3, [fp, #-8]
80021e4c:	e59f30dc 	ldr	r3, [pc, #220]	@ 80021f30 <consoleintr+0x22c>
80021e50:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021e54:	e2832001 	add	r2, r3, #1
80021e58:	e59f10d0 	ldr	r1, [pc, #208]	@ 80021f30 <consoleintr+0x22c>
80021e5c:	e581223c 	str	r2, [r1, #572]	@ 0x23c
80021e60:	e1a03b83 	lsl	r3, r3, #23
80021e64:	e1a03ba3 	lsr	r3, r3, #23
80021e68:	e51b2008 	ldr	r2, [fp, #-8]
80021e6c:	e6ef1072 	uxtb	r1, r2
80021e70:	e59f20b8 	ldr	r2, [pc, #184]	@ 80021f30 <consoleintr+0x22c>
80021e74:	e0823003 	add	r3, r2, r3
80021e78:	e1a02001 	mov	r2, r1
80021e7c:	e5c32034 	strb	r2, [r3, #52]	@ 0x34
80021e80:	e51b3008 	ldr	r3, [fp, #-8]
80021e84:	e3530009 	cmp	r3, #9
80021e88:	0a000001 	beq	80021e94 <consoleintr+0x190>
80021e8c:	e51b0008 	ldr	r0, [fp, #-8]
80021e90:	ebffff80 	bl	80021c98 <consputc>
80021e94:	e51b3008 	ldr	r3, [fp, #-8]
80021e98:	e353000a 	cmp	r3, #10
80021e9c:	0a00000c 	beq	80021ed4 <consoleintr+0x1d0>
80021ea0:	e51b3008 	ldr	r3, [fp, #-8]
80021ea4:	e3530004 	cmp	r3, #4
80021ea8:	0a000009 	beq	80021ed4 <consoleintr+0x1d0>
80021eac:	e51b3008 	ldr	r3, [fp, #-8]
80021eb0:	e3530009 	cmp	r3, #9
80021eb4:	0a000006 	beq	80021ed4 <consoleintr+0x1d0>
80021eb8:	e59f3070 	ldr	r3, [pc, #112]	@ 80021f30 <consoleintr+0x22c>
80021ebc:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021ec0:	e59f3068 	ldr	r3, [pc, #104]	@ 80021f30 <consoleintr+0x22c>
80021ec4:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80021ec8:	e2833c02 	add	r3, r3, #512	@ 0x200
80021ecc:	e1520003 	cmp	r2, r3
80021ed0:	1a00000a 	bne	80021f00 <consoleintr+0x1fc>
80021ed4:	e59f3054 	ldr	r3, [pc, #84]	@ 80021f30 <consoleintr+0x22c>
80021ed8:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021edc:	e59f204c 	ldr	r2, [pc, #76]	@ 80021f30 <consoleintr+0x22c>
80021ee0:	e5823238 	str	r3, [r2, #568]	@ 0x238
80021ee4:	e59f0048 	ldr	r0, [pc, #72]	@ 80021f34 <consoleintr+0x230>
80021ee8:	eb0010de 	bl	80026268 <wakeup>
80021eec:	ea000003 	b	80021f00 <consoleintr+0x1fc>
80021ef0:	e1a00000 	nop			@ (mov r0, r0)
80021ef4:	ea000002 	b	80021f04 <consoleintr+0x200>
80021ef8:	e1a00000 	nop			@ (mov r0, r0)
80021efc:	ea000000 	b	80021f04 <consoleintr+0x200>
80021f00:	e1a00000 	nop			@ (mov r0, r0)
80021f04:	e51b3010 	ldr	r3, [fp, #-16]
80021f08:	e12fff33 	blx	r3
80021f0c:	e50b0008 	str	r0, [fp, #-8]
80021f10:	e51b3008 	ldr	r3, [fp, #-8]
80021f14:	e3530000 	cmp	r3, #0
80021f18:	aaffff80 	bge	80021d20 <consoleintr+0x1c>
80021f1c:	e59f000c 	ldr	r0, [pc, #12]	@ 80021f30 <consoleintr+0x22c>
80021f20:	eb00121d 	bl	8002679c <release>
80021f24:	e1a00000 	nop			@ (mov r0, r0)
80021f28:	e24bd004 	sub	sp, fp, #4
80021f2c:	e8bd8800 	pop	{fp, pc}
80021f30:	800ac950 	.word	0x800ac950
80021f34:	800acb84 	.word	0x800acb84

80021f38 <consoleread>:
80021f38:	e92d4800 	push	{fp, lr}
80021f3c:	e28db004 	add	fp, sp, #4
80021f40:	e24dd018 	sub	sp, sp, #24
80021f44:	e50b0010 	str	r0, [fp, #-16]
80021f48:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80021f4c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80021f50:	e51b0010 	ldr	r0, [fp, #-16]
80021f54:	eb000534 	bl	8002342c <iunlock>
80021f58:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021f5c:	e50b3008 	str	r3, [fp, #-8]
80021f60:	e59f0128 	ldr	r0, [pc, #296]	@ 80022090 <consoleread+0x158>
80021f64:	eb001201 	bl	80026770 <acquire>
80021f68:	ea000037 	b	8002204c <consoleread+0x114>
80021f6c:	e59f3120 	ldr	r3, [pc, #288]	@ 80022094 <consoleread+0x15c>
80021f70:	e5933000 	ldr	r3, [r3]
80021f74:	e5933028 	ldr	r3, [r3, #40]	@ 0x28
80021f78:	e3530000 	cmp	r3, #0
80021f7c:	0a000005 	beq	80021f98 <consoleread+0x60>
80021f80:	e59f0108 	ldr	r0, [pc, #264]	@ 80022090 <consoleread+0x158>
80021f84:	eb001204 	bl	8002679c <release>
80021f88:	e51b0010 	ldr	r0, [fp, #-16]
80021f8c:	eb0004c2 	bl	8002329c <ilock>
80021f90:	e3e03000 	mvn	r3, #0
80021f94:	ea00003a 	b	80022084 <consoleread+0x14c>
80021f98:	e59f10f0 	ldr	r1, [pc, #240]	@ 80022090 <consoleread+0x158>
80021f9c:	e59f00f4 	ldr	r0, [pc, #244]	@ 80022098 <consoleread+0x160>
80021fa0:	eb00102c 	bl	80026058 <sleep>
80021fa4:	e59f30e4 	ldr	r3, [pc, #228]	@ 80022090 <consoleread+0x158>
80021fa8:	e5932234 	ldr	r2, [r3, #564]	@ 0x234
80021fac:	e59f30dc 	ldr	r3, [pc, #220]	@ 80022090 <consoleread+0x158>
80021fb0:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80021fb4:	e1520003 	cmp	r2, r3
80021fb8:	0affffeb 	beq	80021f6c <consoleread+0x34>
80021fbc:	e59f30cc 	ldr	r3, [pc, #204]	@ 80022090 <consoleread+0x158>
80021fc0:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80021fc4:	e2832001 	add	r2, r3, #1
80021fc8:	e59f10c0 	ldr	r1, [pc, #192]	@ 80022090 <consoleread+0x158>
80021fcc:	e5812234 	str	r2, [r1, #564]	@ 0x234
80021fd0:	e1a03b83 	lsl	r3, r3, #23
80021fd4:	e1a03ba3 	lsr	r3, r3, #23
80021fd8:	e59f20b0 	ldr	r2, [pc, #176]	@ 80022090 <consoleread+0x158>
80021fdc:	e0823003 	add	r3, r2, r3
80021fe0:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
80021fe4:	e50b300c 	str	r3, [fp, #-12]
80021fe8:	e51b300c 	ldr	r3, [fp, #-12]
80021fec:	e3530004 	cmp	r3, #4
80021ff0:	1a000009 	bne	8002201c <consoleread+0xe4>
80021ff4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021ff8:	e51b2008 	ldr	r2, [fp, #-8]
80021ffc:	e1520003 	cmp	r2, r3
80022000:	9a000015 	bls	8002205c <consoleread+0x124>
80022004:	e59f3084 	ldr	r3, [pc, #132]	@ 80022090 <consoleread+0x158>
80022008:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
8002200c:	e2433001 	sub	r3, r3, #1
80022010:	e59f2078 	ldr	r2, [pc, #120]	@ 80022090 <consoleread+0x158>
80022014:	e5823234 	str	r3, [r2, #564]	@ 0x234
80022018:	ea00000f 	b	8002205c <consoleread+0x124>
8002201c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022020:	e2832001 	add	r2, r3, #1
80022024:	e50b2014 	str	r2, [fp, #-20]	@ 0xffffffec
80022028:	e51b200c 	ldr	r2, [fp, #-12]
8002202c:	e6ef2072 	uxtb	r2, r2
80022030:	e5c32000 	strb	r2, [r3]
80022034:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022038:	e2433001 	sub	r3, r3, #1
8002203c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80022040:	e51b300c 	ldr	r3, [fp, #-12]
80022044:	e353000a 	cmp	r3, #10
80022048:	0a000005 	beq	80022064 <consoleread+0x12c>
8002204c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022050:	e3530000 	cmp	r3, #0
80022054:	caffffd2 	bgt	80021fa4 <consoleread+0x6c>
80022058:	ea000002 	b	80022068 <consoleread+0x130>
8002205c:	e1a00000 	nop			@ (mov r0, r0)
80022060:	ea000000 	b	80022068 <consoleread+0x130>
80022064:	e1a00000 	nop			@ (mov r0, r0)
80022068:	e59f0020 	ldr	r0, [pc, #32]	@ 80022090 <consoleread+0x158>
8002206c:	eb0011ca 	bl	8002679c <release>
80022070:	e51b0010 	ldr	r0, [fp, #-16]
80022074:	eb000488 	bl	8002329c <ilock>
80022078:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002207c:	e51b2008 	ldr	r2, [fp, #-8]
80022080:	e0423003 	sub	r3, r2, r3
80022084:	e1a00003 	mov	r0, r3
80022088:	e24bd004 	sub	sp, fp, #4
8002208c:	e8bd8800 	pop	{fp, pc}
80022090:	800ac950 	.word	0x800ac950
80022094:	800b0be0 	.word	0x800b0be0
80022098:	800acb84 	.word	0x800acb84

8002209c <consolewrite>:
8002209c:	e92d4800 	push	{fp, lr}
800220a0:	e28db004 	add	fp, sp, #4
800220a4:	e24dd018 	sub	sp, sp, #24
800220a8:	e50b0010 	str	r0, [fp, #-16]
800220ac:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800220b0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800220b4:	e51b0010 	ldr	r0, [fp, #-16]
800220b8:	eb0004db 	bl	8002342c <iunlock>
800220bc:	e59f0060 	ldr	r0, [pc, #96]	@ 80022124 <consolewrite+0x88>
800220c0:	eb0011aa 	bl	80026770 <acquire>
800220c4:	e3a03000 	mov	r3, #0
800220c8:	e50b3008 	str	r3, [fp, #-8]
800220cc:	ea000008 	b	800220f4 <consolewrite+0x58>
800220d0:	e51b3008 	ldr	r3, [fp, #-8]
800220d4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800220d8:	e0823003 	add	r3, r2, r3
800220dc:	e5d33000 	ldrb	r3, [r3]
800220e0:	e1a00003 	mov	r0, r3
800220e4:	ebfffeeb 	bl	80021c98 <consputc>
800220e8:	e51b3008 	ldr	r3, [fp, #-8]
800220ec:	e2833001 	add	r3, r3, #1
800220f0:	e50b3008 	str	r3, [fp, #-8]
800220f4:	e51b2008 	ldr	r2, [fp, #-8]
800220f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800220fc:	e1520003 	cmp	r2, r3
80022100:	bafffff2 	blt	800220d0 <consolewrite+0x34>
80022104:	e59f0018 	ldr	r0, [pc, #24]	@ 80022124 <consolewrite+0x88>
80022108:	eb0011a3 	bl	8002679c <release>
8002210c:	e51b0010 	ldr	r0, [fp, #-16]
80022110:	eb000461 	bl	8002329c <ilock>
80022114:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022118:	e1a00003 	mov	r0, r3
8002211c:	e24bd004 	sub	sp, fp, #4
80022120:	e8bd8800 	pop	{fp, pc}
80022124:	800ac918 	.word	0x800ac918

80022128 <consoleinit>:
80022128:	e92d4800 	push	{fp, lr}
8002212c:	e28db004 	add	fp, sp, #4
80022130:	e59f103c 	ldr	r1, [pc, #60]	@ 80022174 <consoleinit+0x4c>
80022134:	e59f003c 	ldr	r0, [pc, #60]	@ 80022178 <consoleinit+0x50>
80022138:	eb00117a 	bl	80026728 <initlock>
8002213c:	e59f1038 	ldr	r1, [pc, #56]	@ 8002217c <consoleinit+0x54>
80022140:	e59f0038 	ldr	r0, [pc, #56]	@ 80022180 <consoleinit+0x58>
80022144:	eb001177 	bl	80026728 <initlock>
80022148:	e59f3034 	ldr	r3, [pc, #52]	@ 80022184 <consoleinit+0x5c>
8002214c:	e59f2034 	ldr	r2, [pc, #52]	@ 80022188 <consoleinit+0x60>
80022150:	e583200c 	str	r2, [r3, #12]
80022154:	e59f3028 	ldr	r3, [pc, #40]	@ 80022184 <consoleinit+0x5c>
80022158:	e59f202c 	ldr	r2, [pc, #44]	@ 8002218c <consoleinit+0x64>
8002215c:	e5832008 	str	r2, [r3, #8]
80022160:	e59f3010 	ldr	r3, [pc, #16]	@ 80022178 <consoleinit+0x50>
80022164:	e3a02001 	mov	r2, #1
80022168:	e5832034 	str	r2, [r3, #52]	@ 0x34
8002216c:	e1a00000 	nop			@ (mov r0, r0)
80022170:	e8bd8800 	pop	{fp, pc}
80022174:	80029f9c 	.word	0x80029f9c
80022178:	800ac918 	.word	0x800ac918
8002217c:	80029fa4 	.word	0x80029fa4
80022180:	800ac950 	.word	0x800ac950
80022184:	800acb90 	.word	0x800acb90
80022188:	8002209c 	.word	0x8002209c
8002218c:	80021f38 	.word	0x80021f38

80022190 <exec>:
80022190:	e92d4810 	push	{r4, fp, lr}
80022194:	e28db008 	add	fp, sp, #8
80022198:	e24ddf49 	sub	sp, sp, #292	@ 0x124
8002219c:	e50b0120 	str	r0, [fp, #-288]	@ 0xfffffee0
800221a0:	e50b1124 	str	r1, [fp, #-292]	@ 0xfffffedc
800221a4:	e51b0120 	ldr	r0, [fp, #-288]	@ 0xfffffee0
800221a8:	eb00080e 	bl	800241e8 <namei>
800221ac:	e50b0010 	str	r0, [fp, #-16]
800221b0:	e51b3010 	ldr	r3, [fp, #-16]
800221b4:	e3530000 	cmp	r3, #0
800221b8:	1a000001 	bne	800221c4 <exec+0x34>
800221bc:	e3e03000 	mvn	r3, #0
800221c0:	ea000120 	b	80022648 <exec+0x4b8>
800221c4:	e51b0010 	ldr	r0, [fp, #-16]
800221c8:	eb000433 	bl	8002329c <ilock>
800221cc:	e24b1068 	sub	r1, fp, #104	@ 0x68
800221d0:	e3a03034 	mov	r3, #52	@ 0x34
800221d4:	e3a02000 	mov	r2, #0
800221d8:	e51b0010 	ldr	r0, [fp, #-16]
800221dc:	eb0005da 	bl	8002394c <readi>
800221e0:	e1a03000 	mov	r3, r0
800221e4:	e3530033 	cmp	r3, #51	@ 0x33
800221e8:	9a0000f6 	bls	800225c8 <exec+0x438>
800221ec:	e51b3068 	ldr	r3, [fp, #-104]	@ 0xffffff98
800221f0:	e59f245c 	ldr	r2, [pc, #1116]	@ 80022654 <exec+0x4c4>
800221f4:	e1530002 	cmp	r3, r2
800221f8:	1a0000f4 	bne	800225d0 <exec+0x440>
800221fc:	e3a03000 	mov	r3, #0
80022200:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80022204:	eb001a3c 	bl	80028afc <kpt_alloc>
80022208:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
8002220c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022210:	e3530000 	cmp	r3, #0
80022214:	0a0000ef 	beq	800225d8 <exec+0x448>
80022218:	e3a03000 	mov	r3, #0
8002221c:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80022220:	e3a03000 	mov	r3, #0
80022224:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
80022228:	e51b304c 	ldr	r3, [fp, #-76]	@ 0xffffffb4
8002222c:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80022230:	ea00002e 	b	800222f0 <exec+0x160>
80022234:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80022238:	e24b1088 	sub	r1, fp, #136	@ 0x88
8002223c:	e3a03020 	mov	r3, #32
80022240:	e51b0010 	ldr	r0, [fp, #-16]
80022244:	eb0005c0 	bl	8002394c <readi>
80022248:	e1a03000 	mov	r3, r0
8002224c:	e3530020 	cmp	r3, #32
80022250:	1a0000e2 	bne	800225e0 <exec+0x450>
80022254:	e51b3088 	ldr	r3, [fp, #-136]	@ 0xffffff78
80022258:	e3530001 	cmp	r3, #1
8002225c:	1a00001c 	bne	800222d4 <exec+0x144>
80022260:	e51b2074 	ldr	r2, [fp, #-116]	@ 0xffffff8c
80022264:	e51b3078 	ldr	r3, [fp, #-120]	@ 0xffffff88
80022268:	e1520003 	cmp	r2, r3
8002226c:	3a0000dd 	bcc	800225e8 <exec+0x458>
80022270:	e51b2080 	ldr	r2, [fp, #-128]	@ 0xffffff80
80022274:	e51b3074 	ldr	r3, [fp, #-116]	@ 0xffffff8c
80022278:	e0823003 	add	r3, r2, r3
8002227c:	e1a02003 	mov	r2, r3
80022280:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
80022284:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022288:	eb001b47 	bl	80028fac <allocuvm>
8002228c:	e1a03000 	mov	r3, r0
80022290:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80022294:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022298:	e3530000 	cmp	r3, #0
8002229c:	0a0000d3 	beq	800225f0 <exec+0x460>
800222a0:	e51b3080 	ldr	r3, [fp, #-128]	@ 0xffffff80
800222a4:	e1a01003 	mov	r1, r3
800222a8:	e51b2084 	ldr	r2, [fp, #-132]	@ 0xffffff7c
800222ac:	e51b3078 	ldr	r3, [fp, #-120]	@ 0xffffff88
800222b0:	e58d3000 	str	r3, [sp]
800222b4:	e1a03002 	mov	r3, r2
800222b8:	e51b2010 	ldr	r2, [fp, #-16]
800222bc:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800222c0:	eb001aed 	bl	80028e7c <loaduvm>
800222c4:	e1a03000 	mov	r3, r0
800222c8:	e3530000 	cmp	r3, #0
800222cc:	ba0000c9 	blt	800225f8 <exec+0x468>
800222d0:	ea000000 	b	800222d8 <exec+0x148>
800222d4:	e1a00000 	nop			@ (mov r0, r0)
800222d8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800222dc:	e2833001 	add	r3, r3, #1
800222e0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
800222e4:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800222e8:	e2833020 	add	r3, r3, #32
800222ec:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
800222f0:	e15b33bc 	ldrh	r3, [fp, #-60]	@ 0xffffffc4
800222f4:	e1a02003 	mov	r2, r3
800222f8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800222fc:	e1530002 	cmp	r3, r2
80022300:	baffffcb 	blt	80022234 <exec+0xa4>
80022304:	e51b0010 	ldr	r0, [fp, #-16]
80022308:	eb0004a4 	bl	800235a0 <iunlockput>
8002230c:	e3a03000 	mov	r3, #0
80022310:	e50b3010 	str	r3, [fp, #-16]
80022314:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022318:	e2833eff 	add	r3, r3, #4080	@ 0xff0
8002231c:	e283300f 	add	r3, r3, #15
80022320:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80022324:	e3c3300f 	bic	r3, r3, #15
80022328:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
8002232c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022330:	e2833a02 	add	r3, r3, #8192	@ 0x2000
80022334:	e1a02003 	mov	r2, r3
80022338:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
8002233c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022340:	eb001b19 	bl	80028fac <allocuvm>
80022344:	e1a03000 	mov	r3, r0
80022348:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
8002234c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022350:	e3530000 	cmp	r3, #0
80022354:	0a0000a9 	beq	80022600 <exec+0x470>
80022358:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
8002235c:	e2433a02 	sub	r3, r3, #8192	@ 0x2000
80022360:	e1a01003 	mov	r1, r3
80022364:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022368:	eb001bc4 	bl	80029280 <clearpteu>
8002236c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022370:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
80022374:	e3a03000 	mov	r3, #0
80022378:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
8002237c:	ea00002e 	b	8002243c <exec+0x2ac>
80022380:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022384:	e353001f 	cmp	r3, #31
80022388:	8a00009e 	bhi	80022608 <exec+0x478>
8002238c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022390:	e1a03103 	lsl	r3, r3, #2
80022394:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
80022398:	e0823003 	add	r3, r2, r3
8002239c:	e5933000 	ldr	r3, [r3]
800223a0:	e1a00003 	mov	r0, r3
800223a4:	ebfff850 	bl	800204ec <strlen>
800223a8:	e1a03000 	mov	r3, r0
800223ac:	e1a02003 	mov	r2, r3
800223b0:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
800223b4:	e0433002 	sub	r3, r3, r2
800223b8:	e2433001 	sub	r3, r3, #1
800223bc:	e3c33003 	bic	r3, r3, #3
800223c0:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
800223c4:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800223c8:	e1a03103 	lsl	r3, r3, #2
800223cc:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
800223d0:	e0823003 	add	r3, r2, r3
800223d4:	e5934000 	ldr	r4, [r3]
800223d8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800223dc:	e1a03103 	lsl	r3, r3, #2
800223e0:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
800223e4:	e0823003 	add	r3, r2, r3
800223e8:	e5933000 	ldr	r3, [r3]
800223ec:	e1a00003 	mov	r0, r3
800223f0:	ebfff83d 	bl	800204ec <strlen>
800223f4:	e1a03000 	mov	r3, r0
800223f8:	e2833001 	add	r3, r3, #1
800223fc:	e1a02004 	mov	r2, r4
80022400:	e51b1030 	ldr	r1, [fp, #-48]	@ 0xffffffd0
80022404:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022408:	eb001c31 	bl	800294d4 <copyout>
8002240c:	e1a03000 	mov	r3, r0
80022410:	e3530000 	cmp	r3, #0
80022414:	ba00007d 	blt	80022610 <exec+0x480>
80022418:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002241c:	e1a03103 	lsl	r3, r3, #2
80022420:	e243300c 	sub	r3, r3, #12
80022424:	e083300b 	add	r3, r3, fp
80022428:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
8002242c:	e503210c 	str	r2, [r3, #-268]	@ 0xfffffef4
80022430:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022434:	e2833001 	add	r3, r3, #1
80022438:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
8002243c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022440:	e1a03103 	lsl	r3, r3, #2
80022444:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
80022448:	e0823003 	add	r3, r2, r3
8002244c:	e5933000 	ldr	r3, [r3]
80022450:	e3530000 	cmp	r3, #0
80022454:	1affffc9 	bne	80022380 <exec+0x1f0>
80022458:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002245c:	e1a03103 	lsl	r3, r3, #2
80022460:	e243300c 	sub	r3, r3, #12
80022464:	e083300b 	add	r3, r3, fp
80022468:	e3a02000 	mov	r2, #0
8002246c:	e503210c 	str	r2, [r3, #-268]	@ 0xfffffef4
80022470:	e59f31e0 	ldr	r3, [pc, #480]	@ 80022658 <exec+0x4c8>
80022474:	e5933000 	ldr	r3, [r3]
80022478:	e593301c 	ldr	r3, [r3, #28]
8002247c:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80022480:	e5832010 	str	r2, [r3, #16]
80022484:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022488:	e2833001 	add	r3, r3, #1
8002248c:	e1a02103 	lsl	r2, r3, #2
80022490:	e59f31c0 	ldr	r3, [pc, #448]	@ 80022658 <exec+0x4c8>
80022494:	e5933000 	ldr	r3, [r3]
80022498:	e593301c 	ldr	r3, [r3, #28]
8002249c:	e51b1030 	ldr	r1, [fp, #-48]	@ 0xffffffd0
800224a0:	e0412002 	sub	r2, r1, r2
800224a4:	e5832014 	str	r2, [r3, #20]
800224a8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800224ac:	e2833001 	add	r3, r3, #1
800224b0:	e1a03103 	lsl	r3, r3, #2
800224b4:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
800224b8:	e0423003 	sub	r3, r2, r3
800224bc:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
800224c0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800224c4:	e2833001 	add	r3, r3, #1
800224c8:	e1a03103 	lsl	r3, r3, #2
800224cc:	e24b2f46 	sub	r2, fp, #280	@ 0x118
800224d0:	e51b1030 	ldr	r1, [fp, #-48]	@ 0xffffffd0
800224d4:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800224d8:	eb001bfd 	bl	800294d4 <copyout>
800224dc:	e1a03000 	mov	r3, r0
800224e0:	e3530000 	cmp	r3, #0
800224e4:	ba00004b 	blt	80022618 <exec+0x488>
800224e8:	e51b3120 	ldr	r3, [fp, #-288]	@ 0xfffffee0
800224ec:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
800224f0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800224f4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800224f8:	ea000009 	b	80022524 <exec+0x394>
800224fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022500:	e5d33000 	ldrb	r3, [r3]
80022504:	e353002f 	cmp	r3, #47	@ 0x2f
80022508:	1a000002 	bne	80022518 <exec+0x388>
8002250c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022510:	e2833001 	add	r3, r3, #1
80022514:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80022518:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002251c:	e2833001 	add	r3, r3, #1
80022520:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80022524:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022528:	e5d33000 	ldrb	r3, [r3]
8002252c:	e3530000 	cmp	r3, #0
80022530:	1afffff1 	bne	800224fc <exec+0x36c>
80022534:	e59f311c 	ldr	r3, [pc, #284]	@ 80022658 <exec+0x4c8>
80022538:	e5933000 	ldr	r3, [r3]
8002253c:	e2833070 	add	r3, r3, #112	@ 0x70
80022540:	e3a02010 	mov	r2, #16
80022544:	e51b101c 	ldr	r1, [fp, #-28]	@ 0xffffffe4
80022548:	e1a00003 	mov	r0, r3
8002254c:	ebfff7bf 	bl	80020450 <safestrcpy>
80022550:	e59f3100 	ldr	r3, [pc, #256]	@ 80022658 <exec+0x4c8>
80022554:	e5933000 	ldr	r3, [r3]
80022558:	e5933004 	ldr	r3, [r3, #4]
8002255c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
80022560:	e59f30f0 	ldr	r3, [pc, #240]	@ 80022658 <exec+0x4c8>
80022564:	e5933000 	ldr	r3, [r3]
80022568:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
8002256c:	e5832004 	str	r2, [r3, #4]
80022570:	e59f30e0 	ldr	r3, [pc, #224]	@ 80022658 <exec+0x4c8>
80022574:	e5933000 	ldr	r3, [r3]
80022578:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
8002257c:	e5832000 	str	r2, [r3]
80022580:	e59f30d0 	ldr	r3, [pc, #208]	@ 80022658 <exec+0x4c8>
80022584:	e5933000 	ldr	r3, [r3]
80022588:	e593301c 	ldr	r3, [r3, #28]
8002258c:	e51b2050 	ldr	r2, [fp, #-80]	@ 0xffffffb0
80022590:	e5832044 	str	r2, [r3, #68]	@ 0x44
80022594:	e59f30bc 	ldr	r3, [pc, #188]	@ 80022658 <exec+0x4c8>
80022598:	e5933000 	ldr	r3, [r3]
8002259c:	e593301c 	ldr	r3, [r3, #28]
800225a0:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
800225a4:	e5832000 	str	r2, [r3]
800225a8:	e59f30a8 	ldr	r3, [pc, #168]	@ 80022658 <exec+0x4c8>
800225ac:	e5933000 	ldr	r3, [r3]
800225b0:	e1a00003 	mov	r0, r3
800225b4:	eb0019f7 	bl	80028d98 <switchuvm>
800225b8:	e51b0034 	ldr	r0, [fp, #-52]	@ 0xffffffcc
800225bc:	eb001aff 	bl	800291c0 <freevm>
800225c0:	e3a03000 	mov	r3, #0
800225c4:	ea00001f 	b	80022648 <exec+0x4b8>
800225c8:	e1a00000 	nop			@ (mov r0, r0)
800225cc:	ea000012 	b	8002261c <exec+0x48c>
800225d0:	e1a00000 	nop			@ (mov r0, r0)
800225d4:	ea000010 	b	8002261c <exec+0x48c>
800225d8:	e1a00000 	nop			@ (mov r0, r0)
800225dc:	ea00000e 	b	8002261c <exec+0x48c>
800225e0:	e1a00000 	nop			@ (mov r0, r0)
800225e4:	ea00000c 	b	8002261c <exec+0x48c>
800225e8:	e1a00000 	nop			@ (mov r0, r0)
800225ec:	ea00000a 	b	8002261c <exec+0x48c>
800225f0:	e1a00000 	nop			@ (mov r0, r0)
800225f4:	ea000008 	b	8002261c <exec+0x48c>
800225f8:	e1a00000 	nop			@ (mov r0, r0)
800225fc:	ea000006 	b	8002261c <exec+0x48c>
80022600:	e1a00000 	nop			@ (mov r0, r0)
80022604:	ea000004 	b	8002261c <exec+0x48c>
80022608:	e1a00000 	nop			@ (mov r0, r0)
8002260c:	ea000002 	b	8002261c <exec+0x48c>
80022610:	e1a00000 	nop			@ (mov r0, r0)
80022614:	ea000000 	b	8002261c <exec+0x48c>
80022618:	e1a00000 	nop			@ (mov r0, r0)
8002261c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022620:	e3530000 	cmp	r3, #0
80022624:	0a000001 	beq	80022630 <exec+0x4a0>
80022628:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
8002262c:	eb001ae3 	bl	800291c0 <freevm>
80022630:	e51b3010 	ldr	r3, [fp, #-16]
80022634:	e3530000 	cmp	r3, #0
80022638:	0a000001 	beq	80022644 <exec+0x4b4>
8002263c:	e51b0010 	ldr	r0, [fp, #-16]
80022640:	eb0003d6 	bl	800235a0 <iunlockput>
80022644:	e3e03000 	mvn	r3, #0
80022648:	e1a00003 	mov	r0, r3
8002264c:	e24bd008 	sub	sp, fp, #8
80022650:	e8bd8810 	pop	{r4, fp, pc}
80022654:	464c457f 	.word	0x464c457f
80022658:	800b0be0 	.word	0x800b0be0

8002265c <fileinit>:
8002265c:	e92d4800 	push	{fp, lr}
80022660:	e28db004 	add	fp, sp, #4
80022664:	e59f100c 	ldr	r1, [pc, #12]	@ 80022678 <fileinit+0x1c>
80022668:	e59f000c 	ldr	r0, [pc, #12]	@ 8002267c <fileinit+0x20>
8002266c:	eb00102d 	bl	80026728 <initlock>
80022670:	e1a00000 	nop			@ (mov r0, r0)
80022674:	e8bd8800 	pop	{fp, pc}
80022678:	80029fac 	.word	0x80029fac
8002267c:	800acbe0 	.word	0x800acbe0

80022680 <filealloc>:
80022680:	e92d4800 	push	{fp, lr}
80022684:	e28db004 	add	fp, sp, #4
80022688:	e24dd008 	sub	sp, sp, #8
8002268c:	e59f006c 	ldr	r0, [pc, #108]	@ 80022700 <filealloc+0x80>
80022690:	eb001036 	bl	80026770 <acquire>
80022694:	e59f3068 	ldr	r3, [pc, #104]	@ 80022704 <filealloc+0x84>
80022698:	e50b3008 	str	r3, [fp, #-8]
8002269c:	ea00000d 	b	800226d8 <filealloc+0x58>
800226a0:	e51b3008 	ldr	r3, [fp, #-8]
800226a4:	e5933004 	ldr	r3, [r3, #4]
800226a8:	e3530000 	cmp	r3, #0
800226ac:	1a000006 	bne	800226cc <filealloc+0x4c>
800226b0:	e51b3008 	ldr	r3, [fp, #-8]
800226b4:	e3a02001 	mov	r2, #1
800226b8:	e5832004 	str	r2, [r3, #4]
800226bc:	e59f003c 	ldr	r0, [pc, #60]	@ 80022700 <filealloc+0x80>
800226c0:	eb001035 	bl	8002679c <release>
800226c4:	e51b3008 	ldr	r3, [fp, #-8]
800226c8:	ea000009 	b	800226f4 <filealloc+0x74>
800226cc:	e51b3008 	ldr	r3, [fp, #-8]
800226d0:	e2833018 	add	r3, r3, #24
800226d4:	e50b3008 	str	r3, [fp, #-8]
800226d8:	e59f2028 	ldr	r2, [pc, #40]	@ 80022708 <filealloc+0x88>
800226dc:	e51b3008 	ldr	r3, [fp, #-8]
800226e0:	e1530002 	cmp	r3, r2
800226e4:	3affffed 	bcc	800226a0 <filealloc+0x20>
800226e8:	e59f0010 	ldr	r0, [pc, #16]	@ 80022700 <filealloc+0x80>
800226ec:	eb00102a 	bl	8002679c <release>
800226f0:	e3a03000 	mov	r3, #0
800226f4:	e1a00003 	mov	r0, r3
800226f8:	e24bd004 	sub	sp, fp, #4
800226fc:	e8bd8800 	pop	{fp, pc}
80022700:	800acbe0 	.word	0x800acbe0
80022704:	800acc14 	.word	0x800acc14
80022708:	800ad574 	.word	0x800ad574

8002270c <filedup>:
8002270c:	e92d4800 	push	{fp, lr}
80022710:	e28db004 	add	fp, sp, #4
80022714:	e24dd008 	sub	sp, sp, #8
80022718:	e50b0008 	str	r0, [fp, #-8]
8002271c:	e59f0044 	ldr	r0, [pc, #68]	@ 80022768 <filedup+0x5c>
80022720:	eb001012 	bl	80026770 <acquire>
80022724:	e51b3008 	ldr	r3, [fp, #-8]
80022728:	e5933004 	ldr	r3, [r3, #4]
8002272c:	e3530000 	cmp	r3, #0
80022730:	ca000001 	bgt	8002273c <filedup+0x30>
80022734:	e59f0030 	ldr	r0, [pc, #48]	@ 8002276c <filedup+0x60>
80022738:	ebfffd3d 	bl	80021c34 <panic>
8002273c:	e51b3008 	ldr	r3, [fp, #-8]
80022740:	e5933004 	ldr	r3, [r3, #4]
80022744:	e2832001 	add	r2, r3, #1
80022748:	e51b3008 	ldr	r3, [fp, #-8]
8002274c:	e5832004 	str	r2, [r3, #4]
80022750:	e59f0010 	ldr	r0, [pc, #16]	@ 80022768 <filedup+0x5c>
80022754:	eb001010 	bl	8002679c <release>
80022758:	e51b3008 	ldr	r3, [fp, #-8]
8002275c:	e1a00003 	mov	r0, r3
80022760:	e24bd004 	sub	sp, fp, #4
80022764:	e8bd8800 	pop	{fp, pc}
80022768:	800acbe0 	.word	0x800acbe0
8002276c:	80029fb4 	.word	0x80029fb4

80022770 <fileclose>:
80022770:	e92d4800 	push	{fp, lr}
80022774:	e28db004 	add	fp, sp, #4
80022778:	e24dd020 	sub	sp, sp, #32
8002277c:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80022780:	e59f00d0 	ldr	r0, [pc, #208]	@ 80022858 <fileclose+0xe8>
80022784:	eb000ff9 	bl	80026770 <acquire>
80022788:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002278c:	e5933004 	ldr	r3, [r3, #4]
80022790:	e3530000 	cmp	r3, #0
80022794:	ca000001 	bgt	800227a0 <fileclose+0x30>
80022798:	e59f00bc 	ldr	r0, [pc, #188]	@ 8002285c <fileclose+0xec>
8002279c:	ebfffd24 	bl	80021c34 <panic>
800227a0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800227a4:	e5933004 	ldr	r3, [r3, #4]
800227a8:	e2432001 	sub	r2, r3, #1
800227ac:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800227b0:	e5832004 	str	r2, [r3, #4]
800227b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800227b8:	e5933004 	ldr	r3, [r3, #4]
800227bc:	e3530000 	cmp	r3, #0
800227c0:	da000002 	ble	800227d0 <fileclose+0x60>
800227c4:	e59f008c 	ldr	r0, [pc, #140]	@ 80022858 <fileclose+0xe8>
800227c8:	eb000ff3 	bl	8002679c <release>
800227cc:	ea00001f 	b	80022850 <fileclose+0xe0>
800227d0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800227d4:	e24bc01c 	sub	ip, fp, #28
800227d8:	e1a0e003 	mov	lr, r3
800227dc:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
800227e0:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
800227e4:	e89e0003 	ldm	lr, {r0, r1}
800227e8:	e88c0003 	stm	ip, {r0, r1}
800227ec:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800227f0:	e3a02000 	mov	r2, #0
800227f4:	e5832004 	str	r2, [r3, #4]
800227f8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800227fc:	e3a02000 	mov	r2, #0
80022800:	e5c32000 	strb	r2, [r3]
80022804:	e59f004c 	ldr	r0, [pc, #76]	@ 80022858 <fileclose+0xe8>
80022808:	eb000fe3 	bl	8002679c <release>
8002280c:	e55b301c 	ldrb	r3, [fp, #-28]	@ 0xffffffe4
80022810:	e3530001 	cmp	r3, #1
80022814:	1a000005 	bne	80022830 <fileclose+0xc0>
80022818:	e51b3010 	ldr	r3, [fp, #-16]
8002281c:	e55b2013 	ldrb	r2, [fp, #-19]	@ 0xffffffed
80022820:	e1a01002 	mov	r1, r2
80022824:	e1a00003 	mov	r0, r3
80022828:	eb0008e8 	bl	80024bd0 <pipeclose>
8002282c:	ea000007 	b	80022850 <fileclose+0xe0>
80022830:	e55b301c 	ldrb	r3, [fp, #-28]	@ 0xffffffe4
80022834:	e3530002 	cmp	r3, #2
80022838:	1a000004 	bne	80022850 <fileclose+0xe0>
8002283c:	eb000742 	bl	8002454c <begin_trans>
80022840:	e51b300c 	ldr	r3, [fp, #-12]
80022844:	e1a00003 	mov	r0, r3
80022848:	eb000319 	bl	800234b4 <iput>
8002284c:	eb000752 	bl	8002459c <commit_trans>
80022850:	e24bd004 	sub	sp, fp, #4
80022854:	e8bd8800 	pop	{fp, pc}
80022858:	800acbe0 	.word	0x800acbe0
8002285c:	80029fbc 	.word	0x80029fbc

80022860 <filestat>:
80022860:	e92d4800 	push	{fp, lr}
80022864:	e28db004 	add	fp, sp, #4
80022868:	e24dd008 	sub	sp, sp, #8
8002286c:	e50b0008 	str	r0, [fp, #-8]
80022870:	e50b100c 	str	r1, [fp, #-12]
80022874:	e51b3008 	ldr	r3, [fp, #-8]
80022878:	e5d33000 	ldrb	r3, [r3]
8002287c:	e3530002 	cmp	r3, #2
80022880:	1a00000e 	bne	800228c0 <filestat+0x60>
80022884:	e51b3008 	ldr	r3, [fp, #-8]
80022888:	e5933010 	ldr	r3, [r3, #16]
8002288c:	e1a00003 	mov	r0, r3
80022890:	eb000281 	bl	8002329c <ilock>
80022894:	e51b3008 	ldr	r3, [fp, #-8]
80022898:	e5933010 	ldr	r3, [r3, #16]
8002289c:	e51b100c 	ldr	r1, [fp, #-12]
800228a0:	e1a00003 	mov	r0, r3
800228a4:	eb00040a 	bl	800238d4 <stati>
800228a8:	e51b3008 	ldr	r3, [fp, #-8]
800228ac:	e5933010 	ldr	r3, [r3, #16]
800228b0:	e1a00003 	mov	r0, r3
800228b4:	eb0002dc 	bl	8002342c <iunlock>
800228b8:	e3a03000 	mov	r3, #0
800228bc:	ea000000 	b	800228c4 <filestat+0x64>
800228c0:	e3e03000 	mvn	r3, #0
800228c4:	e1a00003 	mov	r0, r3
800228c8:	e24bd004 	sub	sp, fp, #4
800228cc:	e8bd8800 	pop	{fp, pc}

800228d0 <fileread>:
800228d0:	e92d4800 	push	{fp, lr}
800228d4:	e28db004 	add	fp, sp, #4
800228d8:	e24dd018 	sub	sp, sp, #24
800228dc:	e50b0010 	str	r0, [fp, #-16]
800228e0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800228e4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800228e8:	e51b3010 	ldr	r3, [fp, #-16]
800228ec:	e5d33008 	ldrb	r3, [r3, #8]
800228f0:	e3530000 	cmp	r3, #0
800228f4:	1a000001 	bne	80022900 <fileread+0x30>
800228f8:	e3e03000 	mvn	r3, #0
800228fc:	ea00002c 	b	800229b4 <fileread+0xe4>
80022900:	e51b3010 	ldr	r3, [fp, #-16]
80022904:	e5d33000 	ldrb	r3, [r3]
80022908:	e3530001 	cmp	r3, #1
8002290c:	1a000007 	bne	80022930 <fileread+0x60>
80022910:	e51b3010 	ldr	r3, [fp, #-16]
80022914:	e593300c 	ldr	r3, [r3, #12]
80022918:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
8002291c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80022920:	e1a00003 	mov	r0, r3
80022924:	eb000923 	bl	80024db8 <piperead>
80022928:	e1a03000 	mov	r3, r0
8002292c:	ea000020 	b	800229b4 <fileread+0xe4>
80022930:	e51b3010 	ldr	r3, [fp, #-16]
80022934:	e5d33000 	ldrb	r3, [r3]
80022938:	e3530002 	cmp	r3, #2
8002293c:	1a00001a 	bne	800229ac <fileread+0xdc>
80022940:	e51b3010 	ldr	r3, [fp, #-16]
80022944:	e5933010 	ldr	r3, [r3, #16]
80022948:	e1a00003 	mov	r0, r3
8002294c:	eb000252 	bl	8002329c <ilock>
80022950:	e51b3010 	ldr	r3, [fp, #-16]
80022954:	e5930010 	ldr	r0, [r3, #16]
80022958:	e51b3010 	ldr	r3, [fp, #-16]
8002295c:	e5932014 	ldr	r2, [r3, #20]
80022960:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022964:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80022968:	eb0003f7 	bl	8002394c <readi>
8002296c:	e50b0008 	str	r0, [fp, #-8]
80022970:	e51b3008 	ldr	r3, [fp, #-8]
80022974:	e3530000 	cmp	r3, #0
80022978:	da000005 	ble	80022994 <fileread+0xc4>
8002297c:	e51b3010 	ldr	r3, [fp, #-16]
80022980:	e5932014 	ldr	r2, [r3, #20]
80022984:	e51b3008 	ldr	r3, [fp, #-8]
80022988:	e0822003 	add	r2, r2, r3
8002298c:	e51b3010 	ldr	r3, [fp, #-16]
80022990:	e5832014 	str	r2, [r3, #20]
80022994:	e51b3010 	ldr	r3, [fp, #-16]
80022998:	e5933010 	ldr	r3, [r3, #16]
8002299c:	e1a00003 	mov	r0, r3
800229a0:	eb0002a1 	bl	8002342c <iunlock>
800229a4:	e51b3008 	ldr	r3, [fp, #-8]
800229a8:	ea000001 	b	800229b4 <fileread+0xe4>
800229ac:	e59f000c 	ldr	r0, [pc, #12]	@ 800229c0 <fileread+0xf0>
800229b0:	ebfffc9f 	bl	80021c34 <panic>
800229b4:	e1a00003 	mov	r0, r3
800229b8:	e24bd004 	sub	sp, fp, #4
800229bc:	e8bd8800 	pop	{fp, pc}
800229c0:	80029fc8 	.word	0x80029fc8

800229c4 <filewrite>:
800229c4:	e92d4800 	push	{fp, lr}
800229c8:	e28db004 	add	fp, sp, #4
800229cc:	e24dd020 	sub	sp, sp, #32
800229d0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800229d4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
800229d8:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
800229dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800229e0:	e5d33009 	ldrb	r3, [r3, #9]
800229e4:	e3530000 	cmp	r3, #0
800229e8:	1a000001 	bne	800229f4 <filewrite+0x30>
800229ec:	e3e03000 	mvn	r3, #0
800229f0:	ea000058 	b	80022b58 <filewrite+0x194>
800229f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800229f8:	e5d33000 	ldrb	r3, [r3]
800229fc:	e3530001 	cmp	r3, #1
80022a00:	1a000007 	bne	80022a24 <filewrite+0x60>
80022a04:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022a08:	e593300c 	ldr	r3, [r3, #12]
80022a0c:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80022a10:	e51b101c 	ldr	r1, [fp, #-28]	@ 0xffffffe4
80022a14:	e1a00003 	mov	r0, r3
80022a18:	eb00089f 	bl	80024c9c <pipewrite>
80022a1c:	e1a03000 	mov	r3, r0
80022a20:	ea00004c 	b	80022b58 <filewrite+0x194>
80022a24:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022a28:	e5d33000 	ldrb	r3, [r3]
80022a2c:	e3530002 	cmp	r3, #2
80022a30:	1a000046 	bne	80022b50 <filewrite+0x18c>
80022a34:	e3a03c06 	mov	r3, #1536	@ 0x600
80022a38:	e50b3010 	str	r3, [fp, #-16]
80022a3c:	e3a03000 	mov	r3, #0
80022a40:	e50b3008 	str	r3, [fp, #-8]
80022a44:	ea000033 	b	80022b18 <filewrite+0x154>
80022a48:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80022a4c:	e51b3008 	ldr	r3, [fp, #-8]
80022a50:	e0423003 	sub	r3, r2, r3
80022a54:	e50b300c 	str	r3, [fp, #-12]
80022a58:	e51b200c 	ldr	r2, [fp, #-12]
80022a5c:	e51b3010 	ldr	r3, [fp, #-16]
80022a60:	e1520003 	cmp	r2, r3
80022a64:	da000001 	ble	80022a70 <filewrite+0xac>
80022a68:	e51b3010 	ldr	r3, [fp, #-16]
80022a6c:	e50b300c 	str	r3, [fp, #-12]
80022a70:	eb0006b5 	bl	8002454c <begin_trans>
80022a74:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022a78:	e5933010 	ldr	r3, [r3, #16]
80022a7c:	e1a00003 	mov	r0, r3
80022a80:	eb000205 	bl	8002329c <ilock>
80022a84:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022a88:	e5930010 	ldr	r0, [r3, #16]
80022a8c:	e51b3008 	ldr	r3, [fp, #-8]
80022a90:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80022a94:	e0821003 	add	r1, r2, r3
80022a98:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022a9c:	e5932014 	ldr	r2, [r3, #20]
80022aa0:	e51b300c 	ldr	r3, [fp, #-12]
80022aa4:	eb000423 	bl	80023b38 <writei>
80022aa8:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80022aac:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022ab0:	e3530000 	cmp	r3, #0
80022ab4:	da000005 	ble	80022ad0 <filewrite+0x10c>
80022ab8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022abc:	e5932014 	ldr	r2, [r3, #20]
80022ac0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022ac4:	e0822003 	add	r2, r2, r3
80022ac8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022acc:	e5832014 	str	r2, [r3, #20]
80022ad0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022ad4:	e5933010 	ldr	r3, [r3, #16]
80022ad8:	e1a00003 	mov	r0, r3
80022adc:	eb000252 	bl	8002342c <iunlock>
80022ae0:	eb0006ad 	bl	8002459c <commit_trans>
80022ae4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022ae8:	e3530000 	cmp	r3, #0
80022aec:	ba00000e 	blt	80022b2c <filewrite+0x168>
80022af0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022af4:	e51b300c 	ldr	r3, [fp, #-12]
80022af8:	e1520003 	cmp	r2, r3
80022afc:	0a000001 	beq	80022b08 <filewrite+0x144>
80022b00:	e59f005c 	ldr	r0, [pc, #92]	@ 80022b64 <filewrite+0x1a0>
80022b04:	ebfffc4a 	bl	80021c34 <panic>
80022b08:	e51b2008 	ldr	r2, [fp, #-8]
80022b0c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022b10:	e0823003 	add	r3, r2, r3
80022b14:	e50b3008 	str	r3, [fp, #-8]
80022b18:	e51b2008 	ldr	r2, [fp, #-8]
80022b1c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022b20:	e1520003 	cmp	r2, r3
80022b24:	baffffc7 	blt	80022a48 <filewrite+0x84>
80022b28:	ea000000 	b	80022b30 <filewrite+0x16c>
80022b2c:	e1a00000 	nop			@ (mov r0, r0)
80022b30:	e51b2008 	ldr	r2, [fp, #-8]
80022b34:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022b38:	e1520003 	cmp	r2, r3
80022b3c:	1a000001 	bne	80022b48 <filewrite+0x184>
80022b40:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022b44:	ea000003 	b	80022b58 <filewrite+0x194>
80022b48:	e3e03000 	mvn	r3, #0
80022b4c:	ea000001 	b	80022b58 <filewrite+0x194>
80022b50:	e59f0010 	ldr	r0, [pc, #16]	@ 80022b68 <filewrite+0x1a4>
80022b54:	ebfffc36 	bl	80021c34 <panic>
80022b58:	e1a00003 	mov	r0, r3
80022b5c:	e24bd004 	sub	sp, fp, #4
80022b60:	e8bd8800 	pop	{fp, pc}
80022b64:	80029fd4 	.word	0x80029fd4
80022b68:	80029fe4 	.word	0x80029fe4

80022b6c <readsb>:
80022b6c:	e92d4800 	push	{fp, lr}
80022b70:	e28db004 	add	fp, sp, #4
80022b74:	e24dd010 	sub	sp, sp, #16
80022b78:	e50b0010 	str	r0, [fp, #-16]
80022b7c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80022b80:	e51b3010 	ldr	r3, [fp, #-16]
80022b84:	e3a01001 	mov	r1, #1
80022b88:	e1a00003 	mov	r0, r3
80022b8c:	ebfff830 	bl	80020c54 <bread>
80022b90:	e50b0008 	str	r0, [fp, #-8]
80022b94:	e51b3008 	ldr	r3, [fp, #-8]
80022b98:	e2833018 	add	r3, r3, #24
80022b9c:	e3a02010 	mov	r2, #16
80022ba0:	e1a01003 	mov	r1, r3
80022ba4:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022ba8:	ebfff586 	bl	800201c8 <memmove>
80022bac:	e51b0008 	ldr	r0, [fp, #-8]
80022bb0:	ebfff851 	bl	80020cfc <brelse>
80022bb4:	e1a00000 	nop			@ (mov r0, r0)
80022bb8:	e24bd004 	sub	sp, fp, #4
80022bbc:	e8bd8800 	pop	{fp, pc}

80022bc0 <bzero>:
80022bc0:	e92d4800 	push	{fp, lr}
80022bc4:	e28db004 	add	fp, sp, #4
80022bc8:	e24dd010 	sub	sp, sp, #16
80022bcc:	e50b0010 	str	r0, [fp, #-16]
80022bd0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80022bd4:	e51b3010 	ldr	r3, [fp, #-16]
80022bd8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022bdc:	e1a01002 	mov	r1, r2
80022be0:	e1a00003 	mov	r0, r3
80022be4:	ebfff81a 	bl	80020c54 <bread>
80022be8:	e50b0008 	str	r0, [fp, #-8]
80022bec:	e51b3008 	ldr	r3, [fp, #-8]
80022bf0:	e2833018 	add	r3, r3, #24
80022bf4:	e3a02c02 	mov	r2, #512	@ 0x200
80022bf8:	e3a01000 	mov	r1, #0
80022bfc:	e1a00003 	mov	r0, r3
80022c00:	ebfff4fe 	bl	80020000 <memset>
80022c04:	e51b0008 	ldr	r0, [fp, #-8]
80022c08:	eb00067b 	bl	800245fc <log_write>
80022c0c:	e51b0008 	ldr	r0, [fp, #-8]
80022c10:	ebfff839 	bl	80020cfc <brelse>
80022c14:	e1a00000 	nop			@ (mov r0, r0)
80022c18:	e24bd004 	sub	sp, fp, #4
80022c1c:	e8bd8800 	pop	{fp, pc}

80022c20 <balloc>:
80022c20:	e92d4800 	push	{fp, lr}
80022c24:	e28db004 	add	fp, sp, #4
80022c28:	e24dd028 	sub	sp, sp, #40	@ 0x28
80022c2c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80022c30:	e3a03000 	mov	r3, #0
80022c34:	e50b3010 	str	r3, [fp, #-16]
80022c38:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022c3c:	e24b2024 	sub	r2, fp, #36	@ 0x24
80022c40:	e1a01002 	mov	r1, r2
80022c44:	e1a00003 	mov	r0, r3
80022c48:	ebffffc7 	bl	80022b6c <readsb>
80022c4c:	e3a03000 	mov	r3, #0
80022c50:	e50b3008 	str	r3, [fp, #-8]
80022c54:	ea000059 	b	80022dc0 <balloc+0x1a0>
80022c58:	e51b3008 	ldr	r3, [fp, #-8]
80022c5c:	e2832eff 	add	r2, r3, #4080	@ 0xff0
80022c60:	e282200f 	add	r2, r2, #15
80022c64:	e3530000 	cmp	r3, #0
80022c68:	b1a03002 	movlt	r3, r2
80022c6c:	a1a03003 	movge	r3, r3
80022c70:	e1a03643 	asr	r3, r3, #12
80022c74:	e1a02003 	mov	r2, r3
80022c78:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80022c7c:	e1a031a3 	lsr	r3, r3, #3
80022c80:	e0823003 	add	r3, r2, r3
80022c84:	e2833003 	add	r3, r3, #3
80022c88:	e1a01003 	mov	r1, r3
80022c8c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022c90:	ebfff7ef 	bl	80020c54 <bread>
80022c94:	e50b0010 	str	r0, [fp, #-16]
80022c98:	e3a03000 	mov	r3, #0
80022c9c:	e50b300c 	str	r3, [fp, #-12]
80022ca0:	ea000037 	b	80022d84 <balloc+0x164>
80022ca4:	e51b300c 	ldr	r3, [fp, #-12]
80022ca8:	e2033007 	and	r3, r3, #7
80022cac:	e3a02001 	mov	r2, #1
80022cb0:	e1a03312 	lsl	r3, r2, r3
80022cb4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80022cb8:	e51b300c 	ldr	r3, [fp, #-12]
80022cbc:	e2832007 	add	r2, r3, #7
80022cc0:	e3530000 	cmp	r3, #0
80022cc4:	b1a03002 	movlt	r3, r2
80022cc8:	a1a03003 	movge	r3, r3
80022ccc:	e1a031c3 	asr	r3, r3, #3
80022cd0:	e1a02003 	mov	r2, r3
80022cd4:	e51b3010 	ldr	r3, [fp, #-16]
80022cd8:	e0833002 	add	r3, r3, r2
80022cdc:	e5d33018 	ldrb	r3, [r3, #24]
80022ce0:	e1a02003 	mov	r2, r3
80022ce4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022ce8:	e0033002 	and	r3, r3, r2
80022cec:	e3530000 	cmp	r3, #0
80022cf0:	1a000020 	bne	80022d78 <balloc+0x158>
80022cf4:	e51b300c 	ldr	r3, [fp, #-12]
80022cf8:	e2832007 	add	r2, r3, #7
80022cfc:	e3530000 	cmp	r3, #0
80022d00:	b1a03002 	movlt	r3, r2
80022d04:	a1a03003 	movge	r3, r3
80022d08:	e1a031c3 	asr	r3, r3, #3
80022d0c:	e51b2010 	ldr	r2, [fp, #-16]
80022d10:	e0822003 	add	r2, r2, r3
80022d14:	e5d22018 	ldrb	r2, [r2, #24]
80022d18:	e6af1072 	sxtb	r1, r2
80022d1c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022d20:	e6af2072 	sxtb	r2, r2
80022d24:	e1812002 	orr	r2, r1, r2
80022d28:	e6af2072 	sxtb	r2, r2
80022d2c:	e6ef1072 	uxtb	r1, r2
80022d30:	e51b2010 	ldr	r2, [fp, #-16]
80022d34:	e0823003 	add	r3, r2, r3
80022d38:	e1a02001 	mov	r2, r1
80022d3c:	e5c32018 	strb	r2, [r3, #24]
80022d40:	e51b0010 	ldr	r0, [fp, #-16]
80022d44:	eb00062c 	bl	800245fc <log_write>
80022d48:	e51b0010 	ldr	r0, [fp, #-16]
80022d4c:	ebfff7ea 	bl	80020cfc <brelse>
80022d50:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022d54:	e51b2008 	ldr	r2, [fp, #-8]
80022d58:	e51b300c 	ldr	r3, [fp, #-12]
80022d5c:	e0823003 	add	r3, r2, r3
80022d60:	e1a01003 	mov	r1, r3
80022d64:	ebffff95 	bl	80022bc0 <bzero>
80022d68:	e51b2008 	ldr	r2, [fp, #-8]
80022d6c:	e51b300c 	ldr	r3, [fp, #-12]
80022d70:	e0823003 	add	r3, r2, r3
80022d74:	ea000017 	b	80022dd8 <balloc+0x1b8>
80022d78:	e51b300c 	ldr	r3, [fp, #-12]
80022d7c:	e2833001 	add	r3, r3, #1
80022d80:	e50b300c 	str	r3, [fp, #-12]
80022d84:	e51b300c 	ldr	r3, [fp, #-12]
80022d88:	e3530a01 	cmp	r3, #4096	@ 0x1000
80022d8c:	aa000006 	bge	80022dac <balloc+0x18c>
80022d90:	e51b2008 	ldr	r2, [fp, #-8]
80022d94:	e51b300c 	ldr	r3, [fp, #-12]
80022d98:	e0823003 	add	r3, r2, r3
80022d9c:	e1a02003 	mov	r2, r3
80022da0:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80022da4:	e1520003 	cmp	r2, r3
80022da8:	3affffbd 	bcc	80022ca4 <balloc+0x84>
80022dac:	e51b0010 	ldr	r0, [fp, #-16]
80022db0:	ebfff7d1 	bl	80020cfc <brelse>
80022db4:	e51b3008 	ldr	r3, [fp, #-8]
80022db8:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80022dbc:	e50b3008 	str	r3, [fp, #-8]
80022dc0:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80022dc4:	e51b3008 	ldr	r3, [fp, #-8]
80022dc8:	e1520003 	cmp	r2, r3
80022dcc:	8affffa1 	bhi	80022c58 <balloc+0x38>
80022dd0:	e59f000c 	ldr	r0, [pc, #12]	@ 80022de4 <balloc+0x1c4>
80022dd4:	ebfffb96 	bl	80021c34 <panic>
80022dd8:	e1a00003 	mov	r0, r3
80022ddc:	e24bd004 	sub	sp, fp, #4
80022de0:	e8bd8800 	pop	{fp, pc}
80022de4:	80029ff0 	.word	0x80029ff0

80022de8 <bfree>:
80022de8:	e92d4800 	push	{fp, lr}
80022dec:	e28db004 	add	fp, sp, #4
80022df0:	e24dd028 	sub	sp, sp, #40	@ 0x28
80022df4:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80022df8:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
80022dfc:	e24b3020 	sub	r3, fp, #32
80022e00:	e1a01003 	mov	r1, r3
80022e04:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022e08:	ebffff57 	bl	80022b6c <readsb>
80022e0c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022e10:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022e14:	e1a02623 	lsr	r2, r3, #12
80022e18:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022e1c:	e1a031a3 	lsr	r3, r3, #3
80022e20:	e0823003 	add	r3, r2, r3
80022e24:	e2833003 	add	r3, r3, #3
80022e28:	e1a01003 	mov	r1, r3
80022e2c:	ebfff788 	bl	80020c54 <bread>
80022e30:	e50b0008 	str	r0, [fp, #-8]
80022e34:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022e38:	e1a03a03 	lsl	r3, r3, #20
80022e3c:	e1a03a23 	lsr	r3, r3, #20
80022e40:	e50b300c 	str	r3, [fp, #-12]
80022e44:	e51b300c 	ldr	r3, [fp, #-12]
80022e48:	e2033007 	and	r3, r3, #7
80022e4c:	e3a02001 	mov	r2, #1
80022e50:	e1a03312 	lsl	r3, r2, r3
80022e54:	e50b3010 	str	r3, [fp, #-16]
80022e58:	e51b300c 	ldr	r3, [fp, #-12]
80022e5c:	e2832007 	add	r2, r3, #7
80022e60:	e3530000 	cmp	r3, #0
80022e64:	b1a03002 	movlt	r3, r2
80022e68:	a1a03003 	movge	r3, r3
80022e6c:	e1a031c3 	asr	r3, r3, #3
80022e70:	e1a02003 	mov	r2, r3
80022e74:	e51b3008 	ldr	r3, [fp, #-8]
80022e78:	e0833002 	add	r3, r3, r2
80022e7c:	e5d33018 	ldrb	r3, [r3, #24]
80022e80:	e1a02003 	mov	r2, r3
80022e84:	e51b3010 	ldr	r3, [fp, #-16]
80022e88:	e0033002 	and	r3, r3, r2
80022e8c:	e3530000 	cmp	r3, #0
80022e90:	1a000001 	bne	80022e9c <bfree+0xb4>
80022e94:	e59f0070 	ldr	r0, [pc, #112]	@ 80022f0c <bfree+0x124>
80022e98:	ebfffb65 	bl	80021c34 <panic>
80022e9c:	e51b300c 	ldr	r3, [fp, #-12]
80022ea0:	e2832007 	add	r2, r3, #7
80022ea4:	e3530000 	cmp	r3, #0
80022ea8:	b1a03002 	movlt	r3, r2
80022eac:	a1a03003 	movge	r3, r3
80022eb0:	e1a031c3 	asr	r3, r3, #3
80022eb4:	e51b2008 	ldr	r2, [fp, #-8]
80022eb8:	e0822003 	add	r2, r2, r3
80022ebc:	e5d22018 	ldrb	r2, [r2, #24]
80022ec0:	e6af1072 	sxtb	r1, r2
80022ec4:	e51b2010 	ldr	r2, [fp, #-16]
80022ec8:	e6af2072 	sxtb	r2, r2
80022ecc:	e1e02002 	mvn	r2, r2
80022ed0:	e6af2072 	sxtb	r2, r2
80022ed4:	e0022001 	and	r2, r2, r1
80022ed8:	e6af2072 	sxtb	r2, r2
80022edc:	e6ef1072 	uxtb	r1, r2
80022ee0:	e51b2008 	ldr	r2, [fp, #-8]
80022ee4:	e0823003 	add	r3, r2, r3
80022ee8:	e1a02001 	mov	r2, r1
80022eec:	e5c32018 	strb	r2, [r3, #24]
80022ef0:	e51b0008 	ldr	r0, [fp, #-8]
80022ef4:	eb0005c0 	bl	800245fc <log_write>
80022ef8:	e51b0008 	ldr	r0, [fp, #-8]
80022efc:	ebfff77e 	bl	80020cfc <brelse>
80022f00:	e1a00000 	nop			@ (mov r0, r0)
80022f04:	e24bd004 	sub	sp, fp, #4
80022f08:	e8bd8800 	pop	{fp, pc}
80022f0c:	8002a008 	.word	0x8002a008

80022f10 <iinit>:
80022f10:	e92d4800 	push	{fp, lr}
80022f14:	e28db004 	add	fp, sp, #4
80022f18:	e59f100c 	ldr	r1, [pc, #12]	@ 80022f2c <iinit+0x1c>
80022f1c:	e59f000c 	ldr	r0, [pc, #12]	@ 80022f30 <iinit+0x20>
80022f20:	eb000e00 	bl	80026728 <initlock>
80022f24:	e1a00000 	nop			@ (mov r0, r0)
80022f28:	e8bd8800 	pop	{fp, pc}
80022f2c:	8002a01c 	.word	0x8002a01c
80022f30:	800ad574 	.word	0x800ad574

80022f34 <ialloc>:
80022f34:	e92d4800 	push	{fp, lr}
80022f38:	e28db004 	add	fp, sp, #4
80022f3c:	e24dd028 	sub	sp, sp, #40	@ 0x28
80022f40:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80022f44:	e1a03001 	mov	r3, r1
80022f48:	e14b32ba 	strh	r3, [fp, #-42]	@ 0xffffffd6
80022f4c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022f50:	e24b2020 	sub	r2, fp, #32
80022f54:	e1a01002 	mov	r1, r2
80022f58:	e1a00003 	mov	r0, r3
80022f5c:	ebffff02 	bl	80022b6c <readsb>
80022f60:	e3a03001 	mov	r3, #1
80022f64:	e50b3008 	str	r3, [fp, #-8]
80022f68:	ea000027 	b	8002300c <ialloc+0xd8>
80022f6c:	e51b3008 	ldr	r3, [fp, #-8]
80022f70:	e1a031a3 	lsr	r3, r3, #3
80022f74:	e2833002 	add	r3, r3, #2
80022f78:	e1a01003 	mov	r1, r3
80022f7c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022f80:	ebfff733 	bl	80020c54 <bread>
80022f84:	e50b000c 	str	r0, [fp, #-12]
80022f88:	e51b300c 	ldr	r3, [fp, #-12]
80022f8c:	e2832018 	add	r2, r3, #24
80022f90:	e51b3008 	ldr	r3, [fp, #-8]
80022f94:	e2033007 	and	r3, r3, #7
80022f98:	e1a03303 	lsl	r3, r3, #6
80022f9c:	e0823003 	add	r3, r2, r3
80022fa0:	e50b3010 	str	r3, [fp, #-16]
80022fa4:	e51b3010 	ldr	r3, [fp, #-16]
80022fa8:	e1d330f0 	ldrsh	r3, [r3]
80022fac:	e3530000 	cmp	r3, #0
80022fb0:	1a000010 	bne	80022ff8 <ialloc+0xc4>
80022fb4:	e3a02040 	mov	r2, #64	@ 0x40
80022fb8:	e3a01000 	mov	r1, #0
80022fbc:	e51b0010 	ldr	r0, [fp, #-16]
80022fc0:	ebfff40e 	bl	80020000 <memset>
80022fc4:	e51b3010 	ldr	r3, [fp, #-16]
80022fc8:	e15b22ba 	ldrh	r2, [fp, #-42]	@ 0xffffffd6
80022fcc:	e1c320b0 	strh	r2, [r3]
80022fd0:	e51b000c 	ldr	r0, [fp, #-12]
80022fd4:	eb000588 	bl	800245fc <log_write>
80022fd8:	e51b000c 	ldr	r0, [fp, #-12]
80022fdc:	ebfff746 	bl	80020cfc <brelse>
80022fe0:	e51b3008 	ldr	r3, [fp, #-8]
80022fe4:	e1a01003 	mov	r1, r3
80022fe8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022fec:	eb000048 	bl	80023114 <iget>
80022ff0:	e1a03000 	mov	r3, r0
80022ff4:	ea00000a 	b	80023024 <ialloc+0xf0>
80022ff8:	e51b000c 	ldr	r0, [fp, #-12]
80022ffc:	ebfff73e 	bl	80020cfc <brelse>
80023000:	e51b3008 	ldr	r3, [fp, #-8]
80023004:	e2833001 	add	r3, r3, #1
80023008:	e50b3008 	str	r3, [fp, #-8]
8002300c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023010:	e51b3008 	ldr	r3, [fp, #-8]
80023014:	e1520003 	cmp	r2, r3
80023018:	8affffd3 	bhi	80022f6c <ialloc+0x38>
8002301c:	e59f000c 	ldr	r0, [pc, #12]	@ 80023030 <ialloc+0xfc>
80023020:	ebfffb03 	bl	80021c34 <panic>
80023024:	e1a00003 	mov	r0, r3
80023028:	e24bd004 	sub	sp, fp, #4
8002302c:	e8bd8800 	pop	{fp, pc}
80023030:	8002a024 	.word	0x8002a024

80023034 <iupdate>:
80023034:	e92d4800 	push	{fp, lr}
80023038:	e28db004 	add	fp, sp, #4
8002303c:	e24dd010 	sub	sp, sp, #16
80023040:	e50b0010 	str	r0, [fp, #-16]
80023044:	e51b3010 	ldr	r3, [fp, #-16]
80023048:	e5932000 	ldr	r2, [r3]
8002304c:	e51b3010 	ldr	r3, [fp, #-16]
80023050:	e5933004 	ldr	r3, [r3, #4]
80023054:	e1a031a3 	lsr	r3, r3, #3
80023058:	e2833002 	add	r3, r3, #2
8002305c:	e1a01003 	mov	r1, r3
80023060:	e1a00002 	mov	r0, r2
80023064:	ebfff6fa 	bl	80020c54 <bread>
80023068:	e50b0008 	str	r0, [fp, #-8]
8002306c:	e51b3008 	ldr	r3, [fp, #-8]
80023070:	e2832018 	add	r2, r3, #24
80023074:	e51b3010 	ldr	r3, [fp, #-16]
80023078:	e5933004 	ldr	r3, [r3, #4]
8002307c:	e2033007 	and	r3, r3, #7
80023080:	e1a03303 	lsl	r3, r3, #6
80023084:	e0823003 	add	r3, r2, r3
80023088:	e50b300c 	str	r3, [fp, #-12]
8002308c:	e51b3010 	ldr	r3, [fp, #-16]
80023090:	e1d321f0 	ldrsh	r2, [r3, #16]
80023094:	e51b300c 	ldr	r3, [fp, #-12]
80023098:	e1c320b0 	strh	r2, [r3]
8002309c:	e51b3010 	ldr	r3, [fp, #-16]
800230a0:	e1d321f2 	ldrsh	r2, [r3, #18]
800230a4:	e51b300c 	ldr	r3, [fp, #-12]
800230a8:	e1c320b2 	strh	r2, [r3, #2]
800230ac:	e51b3010 	ldr	r3, [fp, #-16]
800230b0:	e1d321f4 	ldrsh	r2, [r3, #20]
800230b4:	e51b300c 	ldr	r3, [fp, #-12]
800230b8:	e1c320b4 	strh	r2, [r3, #4]
800230bc:	e51b3010 	ldr	r3, [fp, #-16]
800230c0:	e1d321f6 	ldrsh	r2, [r3, #22]
800230c4:	e51b300c 	ldr	r3, [fp, #-12]
800230c8:	e1c320b6 	strh	r2, [r3, #6]
800230cc:	e51b3010 	ldr	r3, [fp, #-16]
800230d0:	e5932018 	ldr	r2, [r3, #24]
800230d4:	e51b300c 	ldr	r3, [fp, #-12]
800230d8:	e5832008 	str	r2, [r3, #8]
800230dc:	e51b300c 	ldr	r3, [fp, #-12]
800230e0:	e283000c 	add	r0, r3, #12
800230e4:	e51b3010 	ldr	r3, [fp, #-16]
800230e8:	e283301c 	add	r3, r3, #28
800230ec:	e3a02034 	mov	r2, #52	@ 0x34
800230f0:	e1a01003 	mov	r1, r3
800230f4:	ebfff433 	bl	800201c8 <memmove>
800230f8:	e51b0008 	ldr	r0, [fp, #-8]
800230fc:	eb00053e 	bl	800245fc <log_write>
80023100:	e51b0008 	ldr	r0, [fp, #-8]
80023104:	ebfff6fc 	bl	80020cfc <brelse>
80023108:	e1a00000 	nop			@ (mov r0, r0)
8002310c:	e24bd004 	sub	sp, fp, #4
80023110:	e8bd8800 	pop	{fp, pc}

80023114 <iget>:
80023114:	e92d4800 	push	{fp, lr}
80023118:	e28db004 	add	fp, sp, #4
8002311c:	e24dd010 	sub	sp, sp, #16
80023120:	e50b0010 	str	r0, [fp, #-16]
80023124:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80023128:	e59f0114 	ldr	r0, [pc, #276]	@ 80023244 <iget+0x130>
8002312c:	eb000d8f 	bl	80026770 <acquire>
80023130:	e3a03000 	mov	r3, #0
80023134:	e50b300c 	str	r3, [fp, #-12]
80023138:	e59f3108 	ldr	r3, [pc, #264]	@ 80023248 <iget+0x134>
8002313c:	e50b3008 	str	r3, [fp, #-8]
80023140:	ea000022 	b	800231d0 <iget+0xbc>
80023144:	e51b3008 	ldr	r3, [fp, #-8]
80023148:	e5933008 	ldr	r3, [r3, #8]
8002314c:	e3530000 	cmp	r3, #0
80023150:	da000012 	ble	800231a0 <iget+0x8c>
80023154:	e51b3008 	ldr	r3, [fp, #-8]
80023158:	e5933000 	ldr	r3, [r3]
8002315c:	e51b2010 	ldr	r2, [fp, #-16]
80023160:	e1520003 	cmp	r2, r3
80023164:	1a00000d 	bne	800231a0 <iget+0x8c>
80023168:	e51b3008 	ldr	r3, [fp, #-8]
8002316c:	e5933004 	ldr	r3, [r3, #4]
80023170:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80023174:	e1520003 	cmp	r2, r3
80023178:	1a000008 	bne	800231a0 <iget+0x8c>
8002317c:	e51b3008 	ldr	r3, [fp, #-8]
80023180:	e5933008 	ldr	r3, [r3, #8]
80023184:	e2832001 	add	r2, r3, #1
80023188:	e51b3008 	ldr	r3, [fp, #-8]
8002318c:	e5832008 	str	r2, [r3, #8]
80023190:	e59f00ac 	ldr	r0, [pc, #172]	@ 80023244 <iget+0x130>
80023194:	eb000d80 	bl	8002679c <release>
80023198:	e51b3008 	ldr	r3, [fp, #-8]
8002319c:	ea000025 	b	80023238 <iget+0x124>
800231a0:	e51b300c 	ldr	r3, [fp, #-12]
800231a4:	e3530000 	cmp	r3, #0
800231a8:	1a000005 	bne	800231c4 <iget+0xb0>
800231ac:	e51b3008 	ldr	r3, [fp, #-8]
800231b0:	e5933008 	ldr	r3, [r3, #8]
800231b4:	e3530000 	cmp	r3, #0
800231b8:	1a000001 	bne	800231c4 <iget+0xb0>
800231bc:	e51b3008 	ldr	r3, [fp, #-8]
800231c0:	e50b300c 	str	r3, [fp, #-12]
800231c4:	e51b3008 	ldr	r3, [fp, #-8]
800231c8:	e2833050 	add	r3, r3, #80	@ 0x50
800231cc:	e50b3008 	str	r3, [fp, #-8]
800231d0:	e51b3008 	ldr	r3, [fp, #-8]
800231d4:	e59f2070 	ldr	r2, [pc, #112]	@ 8002324c <iget+0x138>
800231d8:	e1530002 	cmp	r3, r2
800231dc:	3affffd8 	bcc	80023144 <iget+0x30>
800231e0:	e51b300c 	ldr	r3, [fp, #-12]
800231e4:	e3530000 	cmp	r3, #0
800231e8:	1a000001 	bne	800231f4 <iget+0xe0>
800231ec:	e59f005c 	ldr	r0, [pc, #92]	@ 80023250 <iget+0x13c>
800231f0:	ebfffa8f 	bl	80021c34 <panic>
800231f4:	e51b300c 	ldr	r3, [fp, #-12]
800231f8:	e50b3008 	str	r3, [fp, #-8]
800231fc:	e51b3008 	ldr	r3, [fp, #-8]
80023200:	e51b2010 	ldr	r2, [fp, #-16]
80023204:	e5832000 	str	r2, [r3]
80023208:	e51b3008 	ldr	r3, [fp, #-8]
8002320c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80023210:	e5832004 	str	r2, [r3, #4]
80023214:	e51b3008 	ldr	r3, [fp, #-8]
80023218:	e3a02001 	mov	r2, #1
8002321c:	e5832008 	str	r2, [r3, #8]
80023220:	e51b3008 	ldr	r3, [fp, #-8]
80023224:	e3a02000 	mov	r2, #0
80023228:	e583200c 	str	r2, [r3, #12]
8002322c:	e59f0010 	ldr	r0, [pc, #16]	@ 80023244 <iget+0x130>
80023230:	eb000d59 	bl	8002679c <release>
80023234:	e51b3008 	ldr	r3, [fp, #-8]
80023238:	e1a00003 	mov	r0, r3
8002323c:	e24bd004 	sub	sp, fp, #4
80023240:	e8bd8800 	pop	{fp, pc}
80023244:	800ad574 	.word	0x800ad574
80023248:	800ad5a8 	.word	0x800ad5a8
8002324c:	800ae548 	.word	0x800ae548
80023250:	8002a038 	.word	0x8002a038

80023254 <idup>:
80023254:	e92d4800 	push	{fp, lr}
80023258:	e28db004 	add	fp, sp, #4
8002325c:	e24dd008 	sub	sp, sp, #8
80023260:	e50b0008 	str	r0, [fp, #-8]
80023264:	e59f002c 	ldr	r0, [pc, #44]	@ 80023298 <idup+0x44>
80023268:	eb000d40 	bl	80026770 <acquire>
8002326c:	e51b3008 	ldr	r3, [fp, #-8]
80023270:	e5933008 	ldr	r3, [r3, #8]
80023274:	e2832001 	add	r2, r3, #1
80023278:	e51b3008 	ldr	r3, [fp, #-8]
8002327c:	e5832008 	str	r2, [r3, #8]
80023280:	e59f0010 	ldr	r0, [pc, #16]	@ 80023298 <idup+0x44>
80023284:	eb000d44 	bl	8002679c <release>
80023288:	e51b3008 	ldr	r3, [fp, #-8]
8002328c:	e1a00003 	mov	r0, r3
80023290:	e24bd004 	sub	sp, fp, #4
80023294:	e8bd8800 	pop	{fp, pc}
80023298:	800ad574 	.word	0x800ad574

8002329c <ilock>:
8002329c:	e92d4800 	push	{fp, lr}
800232a0:	e28db004 	add	fp, sp, #4
800232a4:	e24dd010 	sub	sp, sp, #16
800232a8:	e50b0010 	str	r0, [fp, #-16]
800232ac:	e51b3010 	ldr	r3, [fp, #-16]
800232b0:	e3530000 	cmp	r3, #0
800232b4:	0a000003 	beq	800232c8 <ilock+0x2c>
800232b8:	e51b3010 	ldr	r3, [fp, #-16]
800232bc:	e5933008 	ldr	r3, [r3, #8]
800232c0:	e3530000 	cmp	r3, #0
800232c4:	ca000001 	bgt	800232d0 <ilock+0x34>
800232c8:	e59f0150 	ldr	r0, [pc, #336]	@ 80023420 <ilock+0x184>
800232cc:	ebfffa58 	bl	80021c34 <panic>
800232d0:	e59f014c 	ldr	r0, [pc, #332]	@ 80023424 <ilock+0x188>
800232d4:	eb000d25 	bl	80026770 <acquire>
800232d8:	ea000002 	b	800232e8 <ilock+0x4c>
800232dc:	e59f1140 	ldr	r1, [pc, #320]	@ 80023424 <ilock+0x188>
800232e0:	e51b0010 	ldr	r0, [fp, #-16]
800232e4:	eb000b5b 	bl	80026058 <sleep>
800232e8:	e51b3010 	ldr	r3, [fp, #-16]
800232ec:	e593300c 	ldr	r3, [r3, #12]
800232f0:	e2033001 	and	r3, r3, #1
800232f4:	e3530000 	cmp	r3, #0
800232f8:	1afffff7 	bne	800232dc <ilock+0x40>
800232fc:	e51b3010 	ldr	r3, [fp, #-16]
80023300:	e593300c 	ldr	r3, [r3, #12]
80023304:	e3832001 	orr	r2, r3, #1
80023308:	e51b3010 	ldr	r3, [fp, #-16]
8002330c:	e583200c 	str	r2, [r3, #12]
80023310:	e59f010c 	ldr	r0, [pc, #268]	@ 80023424 <ilock+0x188>
80023314:	eb000d20 	bl	8002679c <release>
80023318:	e51b3010 	ldr	r3, [fp, #-16]
8002331c:	e593300c 	ldr	r3, [r3, #12]
80023320:	e2033002 	and	r3, r3, #2
80023324:	e3530000 	cmp	r3, #0
80023328:	1a000039 	bne	80023414 <ilock+0x178>
8002332c:	e51b3010 	ldr	r3, [fp, #-16]
80023330:	e5932000 	ldr	r2, [r3]
80023334:	e51b3010 	ldr	r3, [fp, #-16]
80023338:	e5933004 	ldr	r3, [r3, #4]
8002333c:	e1a031a3 	lsr	r3, r3, #3
80023340:	e2833002 	add	r3, r3, #2
80023344:	e1a01003 	mov	r1, r3
80023348:	e1a00002 	mov	r0, r2
8002334c:	ebfff640 	bl	80020c54 <bread>
80023350:	e50b0008 	str	r0, [fp, #-8]
80023354:	e51b3008 	ldr	r3, [fp, #-8]
80023358:	e2832018 	add	r2, r3, #24
8002335c:	e51b3010 	ldr	r3, [fp, #-16]
80023360:	e5933004 	ldr	r3, [r3, #4]
80023364:	e2033007 	and	r3, r3, #7
80023368:	e1a03303 	lsl	r3, r3, #6
8002336c:	e0823003 	add	r3, r2, r3
80023370:	e50b300c 	str	r3, [fp, #-12]
80023374:	e51b300c 	ldr	r3, [fp, #-12]
80023378:	e1d320f0 	ldrsh	r2, [r3]
8002337c:	e51b3010 	ldr	r3, [fp, #-16]
80023380:	e1c321b0 	strh	r2, [r3, #16]
80023384:	e51b300c 	ldr	r3, [fp, #-12]
80023388:	e1d320f2 	ldrsh	r2, [r3, #2]
8002338c:	e51b3010 	ldr	r3, [fp, #-16]
80023390:	e1c321b2 	strh	r2, [r3, #18]
80023394:	e51b300c 	ldr	r3, [fp, #-12]
80023398:	e1d320f4 	ldrsh	r2, [r3, #4]
8002339c:	e51b3010 	ldr	r3, [fp, #-16]
800233a0:	e1c321b4 	strh	r2, [r3, #20]
800233a4:	e51b300c 	ldr	r3, [fp, #-12]
800233a8:	e1d320f6 	ldrsh	r2, [r3, #6]
800233ac:	e51b3010 	ldr	r3, [fp, #-16]
800233b0:	e1c321b6 	strh	r2, [r3, #22]
800233b4:	e51b300c 	ldr	r3, [fp, #-12]
800233b8:	e5932008 	ldr	r2, [r3, #8]
800233bc:	e51b3010 	ldr	r3, [fp, #-16]
800233c0:	e5832018 	str	r2, [r3, #24]
800233c4:	e51b3010 	ldr	r3, [fp, #-16]
800233c8:	e283001c 	add	r0, r3, #28
800233cc:	e51b300c 	ldr	r3, [fp, #-12]
800233d0:	e283300c 	add	r3, r3, #12
800233d4:	e3a02034 	mov	r2, #52	@ 0x34
800233d8:	e1a01003 	mov	r1, r3
800233dc:	ebfff379 	bl	800201c8 <memmove>
800233e0:	e51b0008 	ldr	r0, [fp, #-8]
800233e4:	ebfff644 	bl	80020cfc <brelse>
800233e8:	e51b3010 	ldr	r3, [fp, #-16]
800233ec:	e593300c 	ldr	r3, [r3, #12]
800233f0:	e3832002 	orr	r2, r3, #2
800233f4:	e51b3010 	ldr	r3, [fp, #-16]
800233f8:	e583200c 	str	r2, [r3, #12]
800233fc:	e51b3010 	ldr	r3, [fp, #-16]
80023400:	e1d331f0 	ldrsh	r3, [r3, #16]
80023404:	e3530000 	cmp	r3, #0
80023408:	1a000001 	bne	80023414 <ilock+0x178>
8002340c:	e59f0014 	ldr	r0, [pc, #20]	@ 80023428 <ilock+0x18c>
80023410:	ebfffa07 	bl	80021c34 <panic>
80023414:	e1a00000 	nop			@ (mov r0, r0)
80023418:	e24bd004 	sub	sp, fp, #4
8002341c:	e8bd8800 	pop	{fp, pc}
80023420:	8002a048 	.word	0x8002a048
80023424:	800ad574 	.word	0x800ad574
80023428:	8002a050 	.word	0x8002a050

8002342c <iunlock>:
8002342c:	e92d4800 	push	{fp, lr}
80023430:	e28db004 	add	fp, sp, #4
80023434:	e24dd008 	sub	sp, sp, #8
80023438:	e50b0008 	str	r0, [fp, #-8]
8002343c:	e51b3008 	ldr	r3, [fp, #-8]
80023440:	e3530000 	cmp	r3, #0
80023444:	0a000008 	beq	8002346c <iunlock+0x40>
80023448:	e51b3008 	ldr	r3, [fp, #-8]
8002344c:	e593300c 	ldr	r3, [r3, #12]
80023450:	e2033001 	and	r3, r3, #1
80023454:	e3530000 	cmp	r3, #0
80023458:	0a000003 	beq	8002346c <iunlock+0x40>
8002345c:	e51b3008 	ldr	r3, [fp, #-8]
80023460:	e5933008 	ldr	r3, [r3, #8]
80023464:	e3530000 	cmp	r3, #0
80023468:	ca000001 	bgt	80023474 <iunlock+0x48>
8002346c:	e59f0038 	ldr	r0, [pc, #56]	@ 800234ac <iunlock+0x80>
80023470:	ebfff9ef 	bl	80021c34 <panic>
80023474:	e59f0034 	ldr	r0, [pc, #52]	@ 800234b0 <iunlock+0x84>
80023478:	eb000cbc 	bl	80026770 <acquire>
8002347c:	e51b3008 	ldr	r3, [fp, #-8]
80023480:	e593300c 	ldr	r3, [r3, #12]
80023484:	e3c32001 	bic	r2, r3, #1
80023488:	e51b3008 	ldr	r3, [fp, #-8]
8002348c:	e583200c 	str	r2, [r3, #12]
80023490:	e51b0008 	ldr	r0, [fp, #-8]
80023494:	eb000b73 	bl	80026268 <wakeup>
80023498:	e59f0010 	ldr	r0, [pc, #16]	@ 800234b0 <iunlock+0x84>
8002349c:	eb000cbe 	bl	8002679c <release>
800234a0:	e1a00000 	nop			@ (mov r0, r0)
800234a4:	e24bd004 	sub	sp, fp, #4
800234a8:	e8bd8800 	pop	{fp, pc}
800234ac:	8002a060 	.word	0x8002a060
800234b0:	800ad574 	.word	0x800ad574

800234b4 <iput>:
800234b4:	e92d4800 	push	{fp, lr}
800234b8:	e28db004 	add	fp, sp, #4
800234bc:	e24dd008 	sub	sp, sp, #8
800234c0:	e50b0008 	str	r0, [fp, #-8]
800234c4:	e59f00cc 	ldr	r0, [pc, #204]	@ 80023598 <iput+0xe4>
800234c8:	eb000ca8 	bl	80026770 <acquire>
800234cc:	e51b3008 	ldr	r3, [fp, #-8]
800234d0:	e5933008 	ldr	r3, [r3, #8]
800234d4:	e3530001 	cmp	r3, #1
800234d8:	1a000024 	bne	80023570 <iput+0xbc>
800234dc:	e51b3008 	ldr	r3, [fp, #-8]
800234e0:	e593300c 	ldr	r3, [r3, #12]
800234e4:	e2033002 	and	r3, r3, #2
800234e8:	e3530000 	cmp	r3, #0
800234ec:	0a00001f 	beq	80023570 <iput+0xbc>
800234f0:	e51b3008 	ldr	r3, [fp, #-8]
800234f4:	e1d331f6 	ldrsh	r3, [r3, #22]
800234f8:	e3530000 	cmp	r3, #0
800234fc:	1a00001b 	bne	80023570 <iput+0xbc>
80023500:	e51b3008 	ldr	r3, [fp, #-8]
80023504:	e593300c 	ldr	r3, [r3, #12]
80023508:	e2033001 	and	r3, r3, #1
8002350c:	e3530000 	cmp	r3, #0
80023510:	0a000001 	beq	8002351c <iput+0x68>
80023514:	e59f0080 	ldr	r0, [pc, #128]	@ 8002359c <iput+0xe8>
80023518:	ebfff9c5 	bl	80021c34 <panic>
8002351c:	e51b3008 	ldr	r3, [fp, #-8]
80023520:	e593300c 	ldr	r3, [r3, #12]
80023524:	e3832001 	orr	r2, r3, #1
80023528:	e51b3008 	ldr	r3, [fp, #-8]
8002352c:	e583200c 	str	r2, [r3, #12]
80023530:	e59f0060 	ldr	r0, [pc, #96]	@ 80023598 <iput+0xe4>
80023534:	eb000c98 	bl	8002679c <release>
80023538:	e51b0008 	ldr	r0, [fp, #-8]
8002353c:	eb00007f 	bl	80023740 <itrunc>
80023540:	e51b3008 	ldr	r3, [fp, #-8]
80023544:	e3a02000 	mov	r2, #0
80023548:	e1c321b0 	strh	r2, [r3, #16]
8002354c:	e51b0008 	ldr	r0, [fp, #-8]
80023550:	ebfffeb7 	bl	80023034 <iupdate>
80023554:	e59f003c 	ldr	r0, [pc, #60]	@ 80023598 <iput+0xe4>
80023558:	eb000c84 	bl	80026770 <acquire>
8002355c:	e51b3008 	ldr	r3, [fp, #-8]
80023560:	e3a02000 	mov	r2, #0
80023564:	e583200c 	str	r2, [r3, #12]
80023568:	e51b0008 	ldr	r0, [fp, #-8]
8002356c:	eb000b3d 	bl	80026268 <wakeup>
80023570:	e51b3008 	ldr	r3, [fp, #-8]
80023574:	e5933008 	ldr	r3, [r3, #8]
80023578:	e2432001 	sub	r2, r3, #1
8002357c:	e51b3008 	ldr	r3, [fp, #-8]
80023580:	e5832008 	str	r2, [r3, #8]
80023584:	e59f000c 	ldr	r0, [pc, #12]	@ 80023598 <iput+0xe4>
80023588:	eb000c83 	bl	8002679c <release>
8002358c:	e1a00000 	nop			@ (mov r0, r0)
80023590:	e24bd004 	sub	sp, fp, #4
80023594:	e8bd8800 	pop	{fp, pc}
80023598:	800ad574 	.word	0x800ad574
8002359c:	8002a068 	.word	0x8002a068

800235a0 <iunlockput>:
800235a0:	e92d4800 	push	{fp, lr}
800235a4:	e28db004 	add	fp, sp, #4
800235a8:	e24dd008 	sub	sp, sp, #8
800235ac:	e50b0008 	str	r0, [fp, #-8]
800235b0:	e51b0008 	ldr	r0, [fp, #-8]
800235b4:	ebffff9c 	bl	8002342c <iunlock>
800235b8:	e51b0008 	ldr	r0, [fp, #-8]
800235bc:	ebffffbc 	bl	800234b4 <iput>
800235c0:	e1a00000 	nop			@ (mov r0, r0)
800235c4:	e24bd004 	sub	sp, fp, #4
800235c8:	e8bd8800 	pop	{fp, pc}

800235cc <bmap>:
800235cc:	e92d4800 	push	{fp, lr}
800235d0:	e28db004 	add	fp, sp, #4
800235d4:	e24dd018 	sub	sp, sp, #24
800235d8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800235dc:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
800235e0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800235e4:	e353000b 	cmp	r3, #11
800235e8:	8a000017 	bhi	8002364c <bmap+0x80>
800235ec:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
800235f0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800235f4:	e2833006 	add	r3, r3, #6
800235f8:	e1a03103 	lsl	r3, r3, #2
800235fc:	e0823003 	add	r3, r2, r3
80023600:	e5933004 	ldr	r3, [r3, #4]
80023604:	e50b3008 	str	r3, [fp, #-8]
80023608:	e51b3008 	ldr	r3, [fp, #-8]
8002360c:	e3530000 	cmp	r3, #0
80023610:	1a00000b 	bne	80023644 <bmap+0x78>
80023614:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023618:	e5933000 	ldr	r3, [r3]
8002361c:	e1a00003 	mov	r0, r3
80023620:	ebfffd7e 	bl	80022c20 <balloc>
80023624:	e50b0008 	str	r0, [fp, #-8]
80023628:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
8002362c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80023630:	e2833006 	add	r3, r3, #6
80023634:	e1a03103 	lsl	r3, r3, #2
80023638:	e0823003 	add	r3, r2, r3
8002363c:	e51b2008 	ldr	r2, [fp, #-8]
80023640:	e5832004 	str	r2, [r3, #4]
80023644:	e51b3008 	ldr	r3, [fp, #-8]
80023648:	ea000038 	b	80023730 <bmap+0x164>
8002364c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80023650:	e243300c 	sub	r3, r3, #12
80023654:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80023658:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002365c:	e353007f 	cmp	r3, #127	@ 0x7f
80023660:	8a000030 	bhi	80023728 <bmap+0x15c>
80023664:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023668:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
8002366c:	e50b3008 	str	r3, [fp, #-8]
80023670:	e51b3008 	ldr	r3, [fp, #-8]
80023674:	e3530000 	cmp	r3, #0
80023678:	1a000007 	bne	8002369c <bmap+0xd0>
8002367c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023680:	e5933000 	ldr	r3, [r3]
80023684:	e1a00003 	mov	r0, r3
80023688:	ebfffd64 	bl	80022c20 <balloc>
8002368c:	e50b0008 	str	r0, [fp, #-8]
80023690:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023694:	e51b2008 	ldr	r2, [fp, #-8]
80023698:	e583204c 	str	r2, [r3, #76]	@ 0x4c
8002369c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800236a0:	e5933000 	ldr	r3, [r3]
800236a4:	e51b1008 	ldr	r1, [fp, #-8]
800236a8:	e1a00003 	mov	r0, r3
800236ac:	ebfff568 	bl	80020c54 <bread>
800236b0:	e50b000c 	str	r0, [fp, #-12]
800236b4:	e51b300c 	ldr	r3, [fp, #-12]
800236b8:	e2833018 	add	r3, r3, #24
800236bc:	e50b3010 	str	r3, [fp, #-16]
800236c0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800236c4:	e1a03103 	lsl	r3, r3, #2
800236c8:	e51b2010 	ldr	r2, [fp, #-16]
800236cc:	e0823003 	add	r3, r2, r3
800236d0:	e5933000 	ldr	r3, [r3]
800236d4:	e50b3008 	str	r3, [fp, #-8]
800236d8:	e51b3008 	ldr	r3, [fp, #-8]
800236dc:	e3530000 	cmp	r3, #0
800236e0:	1a00000c 	bne	80023718 <bmap+0x14c>
800236e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800236e8:	e5933000 	ldr	r3, [r3]
800236ec:	e1a00003 	mov	r0, r3
800236f0:	ebfffd4a 	bl	80022c20 <balloc>
800236f4:	e50b0008 	str	r0, [fp, #-8]
800236f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800236fc:	e1a03103 	lsl	r3, r3, #2
80023700:	e51b2010 	ldr	r2, [fp, #-16]
80023704:	e0823003 	add	r3, r2, r3
80023708:	e51b2008 	ldr	r2, [fp, #-8]
8002370c:	e5832000 	str	r2, [r3]
80023710:	e51b000c 	ldr	r0, [fp, #-12]
80023714:	eb0003b8 	bl	800245fc <log_write>
80023718:	e51b000c 	ldr	r0, [fp, #-12]
8002371c:	ebfff576 	bl	80020cfc <brelse>
80023720:	e51b3008 	ldr	r3, [fp, #-8]
80023724:	ea000001 	b	80023730 <bmap+0x164>
80023728:	e59f000c 	ldr	r0, [pc, #12]	@ 8002373c <bmap+0x170>
8002372c:	ebfff940 	bl	80021c34 <panic>
80023730:	e1a00003 	mov	r0, r3
80023734:	e24bd004 	sub	sp, fp, #4
80023738:	e8bd8800 	pop	{fp, pc}
8002373c:	8002a074 	.word	0x8002a074

80023740 <itrunc>:
80023740:	e92d4800 	push	{fp, lr}
80023744:	e28db004 	add	fp, sp, #4
80023748:	e24dd018 	sub	sp, sp, #24
8002374c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80023750:	e3a03000 	mov	r3, #0
80023754:	e50b3008 	str	r3, [fp, #-8]
80023758:	ea00001c 	b	800237d0 <itrunc+0x90>
8002375c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023760:	e51b3008 	ldr	r3, [fp, #-8]
80023764:	e2833006 	add	r3, r3, #6
80023768:	e1a03103 	lsl	r3, r3, #2
8002376c:	e0823003 	add	r3, r2, r3
80023770:	e5933004 	ldr	r3, [r3, #4]
80023774:	e3530000 	cmp	r3, #0
80023778:	0a000011 	beq	800237c4 <itrunc+0x84>
8002377c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023780:	e5933000 	ldr	r3, [r3]
80023784:	e1a00003 	mov	r0, r3
80023788:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
8002378c:	e51b3008 	ldr	r3, [fp, #-8]
80023790:	e2833006 	add	r3, r3, #6
80023794:	e1a03103 	lsl	r3, r3, #2
80023798:	e0823003 	add	r3, r2, r3
8002379c:	e5933004 	ldr	r3, [r3, #4]
800237a0:	e1a01003 	mov	r1, r3
800237a4:	ebfffd8f 	bl	80022de8 <bfree>
800237a8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
800237ac:	e51b3008 	ldr	r3, [fp, #-8]
800237b0:	e2833006 	add	r3, r3, #6
800237b4:	e1a03103 	lsl	r3, r3, #2
800237b8:	e0823003 	add	r3, r2, r3
800237bc:	e3a02000 	mov	r2, #0
800237c0:	e5832004 	str	r2, [r3, #4]
800237c4:	e51b3008 	ldr	r3, [fp, #-8]
800237c8:	e2833001 	add	r3, r3, #1
800237cc:	e50b3008 	str	r3, [fp, #-8]
800237d0:	e51b3008 	ldr	r3, [fp, #-8]
800237d4:	e353000b 	cmp	r3, #11
800237d8:	daffffdf 	ble	8002375c <itrunc+0x1c>
800237dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800237e0:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
800237e4:	e3530000 	cmp	r3, #0
800237e8:	0a000031 	beq	800238b4 <itrunc+0x174>
800237ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800237f0:	e5932000 	ldr	r2, [r3]
800237f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800237f8:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
800237fc:	e1a01003 	mov	r1, r3
80023800:	e1a00002 	mov	r0, r2
80023804:	ebfff512 	bl	80020c54 <bread>
80023808:	e50b0010 	str	r0, [fp, #-16]
8002380c:	e51b3010 	ldr	r3, [fp, #-16]
80023810:	e2833018 	add	r3, r3, #24
80023814:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80023818:	e3a03000 	mov	r3, #0
8002381c:	e50b300c 	str	r3, [fp, #-12]
80023820:	ea000013 	b	80023874 <itrunc+0x134>
80023824:	e51b300c 	ldr	r3, [fp, #-12]
80023828:	e1a03103 	lsl	r3, r3, #2
8002382c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80023830:	e0823003 	add	r3, r2, r3
80023834:	e5933000 	ldr	r3, [r3]
80023838:	e3530000 	cmp	r3, #0
8002383c:	0a000009 	beq	80023868 <itrunc+0x128>
80023840:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023844:	e5933000 	ldr	r3, [r3]
80023848:	e1a00003 	mov	r0, r3
8002384c:	e51b300c 	ldr	r3, [fp, #-12]
80023850:	e1a03103 	lsl	r3, r3, #2
80023854:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80023858:	e0823003 	add	r3, r2, r3
8002385c:	e5933000 	ldr	r3, [r3]
80023860:	e1a01003 	mov	r1, r3
80023864:	ebfffd5f 	bl	80022de8 <bfree>
80023868:	e51b300c 	ldr	r3, [fp, #-12]
8002386c:	e2833001 	add	r3, r3, #1
80023870:	e50b300c 	str	r3, [fp, #-12]
80023874:	e51b300c 	ldr	r3, [fp, #-12]
80023878:	e353007f 	cmp	r3, #127	@ 0x7f
8002387c:	9affffe8 	bls	80023824 <itrunc+0xe4>
80023880:	e51b0010 	ldr	r0, [fp, #-16]
80023884:	ebfff51c 	bl	80020cfc <brelse>
80023888:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002388c:	e5933000 	ldr	r3, [r3]
80023890:	e1a02003 	mov	r2, r3
80023894:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023898:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
8002389c:	e1a01003 	mov	r1, r3
800238a0:	e1a00002 	mov	r0, r2
800238a4:	ebfffd4f 	bl	80022de8 <bfree>
800238a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800238ac:	e3a02000 	mov	r2, #0
800238b0:	e583204c 	str	r2, [r3, #76]	@ 0x4c
800238b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800238b8:	e3a02000 	mov	r2, #0
800238bc:	e5832018 	str	r2, [r3, #24]
800238c0:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
800238c4:	ebfffdda 	bl	80023034 <iupdate>
800238c8:	e1a00000 	nop			@ (mov r0, r0)
800238cc:	e24bd004 	sub	sp, fp, #4
800238d0:	e8bd8800 	pop	{fp, pc}

800238d4 <stati>:
800238d4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800238d8:	e28db000 	add	fp, sp, #0
800238dc:	e24dd00c 	sub	sp, sp, #12
800238e0:	e50b0008 	str	r0, [fp, #-8]
800238e4:	e50b100c 	str	r1, [fp, #-12]
800238e8:	e51b3008 	ldr	r3, [fp, #-8]
800238ec:	e5933000 	ldr	r3, [r3]
800238f0:	e1a02003 	mov	r2, r3
800238f4:	e51b300c 	ldr	r3, [fp, #-12]
800238f8:	e5832004 	str	r2, [r3, #4]
800238fc:	e51b3008 	ldr	r3, [fp, #-8]
80023900:	e5932004 	ldr	r2, [r3, #4]
80023904:	e51b300c 	ldr	r3, [fp, #-12]
80023908:	e5832008 	str	r2, [r3, #8]
8002390c:	e51b3008 	ldr	r3, [fp, #-8]
80023910:	e1d321f0 	ldrsh	r2, [r3, #16]
80023914:	e51b300c 	ldr	r3, [fp, #-12]
80023918:	e1c320b0 	strh	r2, [r3]
8002391c:	e51b3008 	ldr	r3, [fp, #-8]
80023920:	e1d321f6 	ldrsh	r2, [r3, #22]
80023924:	e51b300c 	ldr	r3, [fp, #-12]
80023928:	e1c320bc 	strh	r2, [r3, #12]
8002392c:	e51b3008 	ldr	r3, [fp, #-8]
80023930:	e5932018 	ldr	r2, [r3, #24]
80023934:	e51b300c 	ldr	r3, [fp, #-12]
80023938:	e5832010 	str	r2, [r3, #16]
8002393c:	e1a00000 	nop			@ (mov r0, r0)
80023940:	e28bd000 	add	sp, fp, #0
80023944:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80023948:	e12fff1e 	bx	lr

8002394c <readi>:
8002394c:	e92d4810 	push	{r4, fp, lr}
80023950:	e28db008 	add	fp, sp, #8
80023954:	e24dd024 	sub	sp, sp, #36	@ 0x24
80023958:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
8002395c:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023960:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023964:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80023968:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002396c:	e1d331f0 	ldrsh	r3, [r3, #16]
80023970:	e3530003 	cmp	r3, #3
80023974:	1a00001b 	bne	800239e8 <readi+0x9c>
80023978:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002397c:	e1d331f2 	ldrsh	r3, [r3, #18]
80023980:	e3530000 	cmp	r3, #0
80023984:	ba00000a 	blt	800239b4 <readi+0x68>
80023988:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002398c:	e1d331f2 	ldrsh	r3, [r3, #18]
80023990:	e3530009 	cmp	r3, #9
80023994:	ca000006 	bgt	800239b4 <readi+0x68>
80023998:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002399c:	e1d331f2 	ldrsh	r3, [r3, #18]
800239a0:	e1a02003 	mov	r2, r3
800239a4:	e59f3188 	ldr	r3, [pc, #392]	@ 80023b34 <readi+0x1e8>
800239a8:	e7933182 	ldr	r3, [r3, r2, lsl #3]
800239ac:	e3530000 	cmp	r3, #0
800239b0:	1a000001 	bne	800239bc <readi+0x70>
800239b4:	e3e03000 	mvn	r3, #0
800239b8:	ea00005a 	b	80023b28 <readi+0x1dc>
800239bc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800239c0:	e1d331f2 	ldrsh	r3, [r3, #18]
800239c4:	e1a02003 	mov	r2, r3
800239c8:	e59f3164 	ldr	r3, [pc, #356]	@ 80023b34 <readi+0x1e8>
800239cc:	e7933182 	ldr	r3, [r3, r2, lsl #3]
800239d0:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
800239d4:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
800239d8:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
800239dc:	e12fff33 	blx	r3
800239e0:	e1a03000 	mov	r3, r0
800239e4:	ea00004f 	b	80023b28 <readi+0x1dc>
800239e8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800239ec:	e5933018 	ldr	r3, [r3, #24]
800239f0:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
800239f4:	e1520003 	cmp	r2, r3
800239f8:	8a000005 	bhi	80023a14 <readi+0xc8>
800239fc:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023a00:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023a04:	e0823003 	add	r3, r2, r3
80023a08:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023a0c:	e1520003 	cmp	r2, r3
80023a10:	9a000001 	bls	80023a1c <readi+0xd0>
80023a14:	e3e03000 	mvn	r3, #0
80023a18:	ea000042 	b	80023b28 <readi+0x1dc>
80023a1c:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023a20:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023a24:	e0822003 	add	r2, r2, r3
80023a28:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023a2c:	e5933018 	ldr	r3, [r3, #24]
80023a30:	e1520003 	cmp	r2, r3
80023a34:	9a000004 	bls	80023a4c <readi+0x100>
80023a38:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023a3c:	e5932018 	ldr	r2, [r3, #24]
80023a40:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023a44:	e0423003 	sub	r3, r2, r3
80023a48:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80023a4c:	e3a03000 	mov	r3, #0
80023a50:	e50b3010 	str	r3, [fp, #-16]
80023a54:	ea00002e 	b	80023b14 <readi+0x1c8>
80023a58:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023a5c:	e5934000 	ldr	r4, [r3]
80023a60:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023a64:	e1a034a3 	lsr	r3, r3, #9
80023a68:	e1a01003 	mov	r1, r3
80023a6c:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023a70:	ebfffed5 	bl	800235cc <bmap>
80023a74:	e1a03000 	mov	r3, r0
80023a78:	e1a01003 	mov	r1, r3
80023a7c:	e1a00004 	mov	r0, r4
80023a80:	ebfff473 	bl	80020c54 <bread>
80023a84:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80023a88:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023a8c:	e1a03b83 	lsl	r3, r3, #23
80023a90:	e1a03ba3 	lsr	r3, r3, #23
80023a94:	e2632c02 	rsb	r2, r3, #512	@ 0x200
80023a98:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
80023a9c:	e51b3010 	ldr	r3, [fp, #-16]
80023aa0:	e0413003 	sub	r3, r1, r3
80023aa4:	e1520003 	cmp	r2, r3
80023aa8:	31a03002 	movcc	r3, r2
80023aac:	21a03003 	movcs	r3, r3
80023ab0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80023ab4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80023ab8:	e2832018 	add	r2, r3, #24
80023abc:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023ac0:	e1a03b83 	lsl	r3, r3, #23
80023ac4:	e1a03ba3 	lsr	r3, r3, #23
80023ac8:	e0823003 	add	r3, r2, r3
80023acc:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023ad0:	e1a01003 	mov	r1, r3
80023ad4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80023ad8:	ebfff1ba 	bl	800201c8 <memmove>
80023adc:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023ae0:	ebfff485 	bl	80020cfc <brelse>
80023ae4:	e51b2010 	ldr	r2, [fp, #-16]
80023ae8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023aec:	e0823003 	add	r3, r2, r3
80023af0:	e50b3010 	str	r3, [fp, #-16]
80023af4:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023af8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023afc:	e0823003 	add	r3, r2, r3
80023b00:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80023b04:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80023b08:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023b0c:	e0823003 	add	r3, r2, r3
80023b10:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80023b14:	e51b2010 	ldr	r2, [fp, #-16]
80023b18:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023b1c:	e1520003 	cmp	r2, r3
80023b20:	3affffcc 	bcc	80023a58 <readi+0x10c>
80023b24:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023b28:	e1a00003 	mov	r0, r3
80023b2c:	e24bd008 	sub	sp, fp, #8
80023b30:	e8bd8810 	pop	{r4, fp, pc}
80023b34:	800acb90 	.word	0x800acb90

80023b38 <writei>:
80023b38:	e92d4810 	push	{r4, fp, lr}
80023b3c:	e28db008 	add	fp, sp, #8
80023b40:	e24dd024 	sub	sp, sp, #36	@ 0x24
80023b44:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80023b48:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023b4c:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023b50:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80023b54:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023b58:	e1d331f0 	ldrsh	r3, [r3, #16]
80023b5c:	e3530003 	cmp	r3, #3
80023b60:	1a00001d 	bne	80023bdc <writei+0xa4>
80023b64:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023b68:	e1d331f2 	ldrsh	r3, [r3, #18]
80023b6c:	e3530000 	cmp	r3, #0
80023b70:	ba00000b 	blt	80023ba4 <writei+0x6c>
80023b74:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023b78:	e1d331f2 	ldrsh	r3, [r3, #18]
80023b7c:	e3530009 	cmp	r3, #9
80023b80:	ca000007 	bgt	80023ba4 <writei+0x6c>
80023b84:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023b88:	e1d331f2 	ldrsh	r3, [r3, #18]
80023b8c:	e59f21bc 	ldr	r2, [pc, #444]	@ 80023d50 <writei+0x218>
80023b90:	e1a03183 	lsl	r3, r3, #3
80023b94:	e0823003 	add	r3, r2, r3
80023b98:	e5933004 	ldr	r3, [r3, #4]
80023b9c:	e3530000 	cmp	r3, #0
80023ba0:	1a000001 	bne	80023bac <writei+0x74>
80023ba4:	e3e03000 	mvn	r3, #0
80023ba8:	ea000065 	b	80023d44 <writei+0x20c>
80023bac:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023bb0:	e1d331f2 	ldrsh	r3, [r3, #18]
80023bb4:	e59f2194 	ldr	r2, [pc, #404]	@ 80023d50 <writei+0x218>
80023bb8:	e1a03183 	lsl	r3, r3, #3
80023bbc:	e0823003 	add	r3, r2, r3
80023bc0:	e5933004 	ldr	r3, [r3, #4]
80023bc4:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
80023bc8:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023bcc:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023bd0:	e12fff33 	blx	r3
80023bd4:	e1a03000 	mov	r3, r0
80023bd8:	ea000059 	b	80023d44 <writei+0x20c>
80023bdc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023be0:	e5933018 	ldr	r3, [r3, #24]
80023be4:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023be8:	e1520003 	cmp	r2, r3
80023bec:	8a000005 	bhi	80023c08 <writei+0xd0>
80023bf0:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023bf4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023bf8:	e0823003 	add	r3, r2, r3
80023bfc:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023c00:	e1520003 	cmp	r2, r3
80023c04:	9a000001 	bls	80023c10 <writei+0xd8>
80023c08:	e3e03000 	mvn	r3, #0
80023c0c:	ea00004c 	b	80023d44 <writei+0x20c>
80023c10:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023c14:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023c18:	e0823003 	add	r3, r2, r3
80023c1c:	e3530b46 	cmp	r3, #71680	@ 0x11800
80023c20:	9a000001 	bls	80023c2c <writei+0xf4>
80023c24:	e3e03000 	mvn	r3, #0
80023c28:	ea000045 	b	80023d44 <writei+0x20c>
80023c2c:	e3a03000 	mov	r3, #0
80023c30:	e50b3010 	str	r3, [fp, #-16]
80023c34:	ea000030 	b	80023cfc <writei+0x1c4>
80023c38:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023c3c:	e5934000 	ldr	r4, [r3]
80023c40:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023c44:	e1a034a3 	lsr	r3, r3, #9
80023c48:	e1a01003 	mov	r1, r3
80023c4c:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023c50:	ebfffe5d 	bl	800235cc <bmap>
80023c54:	e1a03000 	mov	r3, r0
80023c58:	e1a01003 	mov	r1, r3
80023c5c:	e1a00004 	mov	r0, r4
80023c60:	ebfff3fb 	bl	80020c54 <bread>
80023c64:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80023c68:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023c6c:	e1a03b83 	lsl	r3, r3, #23
80023c70:	e1a03ba3 	lsr	r3, r3, #23
80023c74:	e2632c02 	rsb	r2, r3, #512	@ 0x200
80023c78:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
80023c7c:	e51b3010 	ldr	r3, [fp, #-16]
80023c80:	e0413003 	sub	r3, r1, r3
80023c84:	e1520003 	cmp	r2, r3
80023c88:	31a03002 	movcc	r3, r2
80023c8c:	21a03003 	movcs	r3, r3
80023c90:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80023c94:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80023c98:	e2832018 	add	r2, r3, #24
80023c9c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023ca0:	e1a03b83 	lsl	r3, r3, #23
80023ca4:	e1a03ba3 	lsr	r3, r3, #23
80023ca8:	e0823003 	add	r3, r2, r3
80023cac:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023cb0:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023cb4:	e1a00003 	mov	r0, r3
80023cb8:	ebfff142 	bl	800201c8 <memmove>
80023cbc:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023cc0:	eb00024d 	bl	800245fc <log_write>
80023cc4:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023cc8:	ebfff40b 	bl	80020cfc <brelse>
80023ccc:	e51b2010 	ldr	r2, [fp, #-16]
80023cd0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023cd4:	e0823003 	add	r3, r2, r3
80023cd8:	e50b3010 	str	r3, [fp, #-16]
80023cdc:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023ce0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023ce4:	e0823003 	add	r3, r2, r3
80023ce8:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80023cec:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80023cf0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023cf4:	e0823003 	add	r3, r2, r3
80023cf8:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80023cfc:	e51b2010 	ldr	r2, [fp, #-16]
80023d00:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023d04:	e1520003 	cmp	r2, r3
80023d08:	3affffca 	bcc	80023c38 <writei+0x100>
80023d0c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023d10:	e3530000 	cmp	r3, #0
80023d14:	0a000009 	beq	80023d40 <writei+0x208>
80023d18:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023d1c:	e5933018 	ldr	r3, [r3, #24]
80023d20:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023d24:	e1520003 	cmp	r2, r3
80023d28:	9a000004 	bls	80023d40 <writei+0x208>
80023d2c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023d30:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023d34:	e5832018 	str	r2, [r3, #24]
80023d38:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023d3c:	ebfffcbc 	bl	80023034 <iupdate>
80023d40:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023d44:	e1a00003 	mov	r0, r3
80023d48:	e24bd008 	sub	sp, fp, #8
80023d4c:	e8bd8810 	pop	{r4, fp, pc}
80023d50:	800acb90 	.word	0x800acb90

80023d54 <namecmp>:
80023d54:	e92d4800 	push	{fp, lr}
80023d58:	e28db004 	add	fp, sp, #4
80023d5c:	e24dd008 	sub	sp, sp, #8
80023d60:	e50b0008 	str	r0, [fp, #-8]
80023d64:	e50b100c 	str	r1, [fp, #-12]
80023d68:	e3a0200e 	mov	r2, #14
80023d6c:	e51b100c 	ldr	r1, [fp, #-12]
80023d70:	e51b0008 	ldr	r0, [fp, #-8]
80023d74:	ebfff160 	bl	800202fc <strncmp>
80023d78:	e1a03000 	mov	r3, r0
80023d7c:	e1a00003 	mov	r0, r3
80023d80:	e24bd004 	sub	sp, fp, #4
80023d84:	e8bd8800 	pop	{fp, pc}

80023d88 <dirlookup>:
80023d88:	e92d4800 	push	{fp, lr}
80023d8c:	e28db004 	add	fp, sp, #4
80023d90:	e24dd028 	sub	sp, sp, #40	@ 0x28
80023d94:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80023d98:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023d9c:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023da0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023da4:	e1d331f0 	ldrsh	r3, [r3, #16]
80023da8:	e3530001 	cmp	r3, #1
80023dac:	0a000001 	beq	80023db8 <dirlookup+0x30>
80023db0:	e59f00d0 	ldr	r0, [pc, #208]	@ 80023e88 <dirlookup+0x100>
80023db4:	ebfff79e 	bl	80021c34 <panic>
80023db8:	e3a03000 	mov	r3, #0
80023dbc:	e50b3008 	str	r3, [fp, #-8]
80023dc0:	ea000027 	b	80023e64 <dirlookup+0xdc>
80023dc4:	e24b101c 	sub	r1, fp, #28
80023dc8:	e3a03010 	mov	r3, #16
80023dcc:	e51b2008 	ldr	r2, [fp, #-8]
80023dd0:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023dd4:	ebfffedc 	bl	8002394c <readi>
80023dd8:	e1a03000 	mov	r3, r0
80023ddc:	e3530010 	cmp	r3, #16
80023de0:	0a000001 	beq	80023dec <dirlookup+0x64>
80023de4:	e59f00a0 	ldr	r0, [pc, #160]	@ 80023e8c <dirlookup+0x104>
80023de8:	ebfff791 	bl	80021c34 <panic>
80023dec:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
80023df0:	e3530000 	cmp	r3, #0
80023df4:	0a000016 	beq	80023e54 <dirlookup+0xcc>
80023df8:	e24b301c 	sub	r3, fp, #28
80023dfc:	e2833002 	add	r3, r3, #2
80023e00:	e1a01003 	mov	r1, r3
80023e04:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80023e08:	ebffffd1 	bl	80023d54 <namecmp>
80023e0c:	e1a03000 	mov	r3, r0
80023e10:	e3530000 	cmp	r3, #0
80023e14:	1a00000f 	bne	80023e58 <dirlookup+0xd0>
80023e18:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023e1c:	e3530000 	cmp	r3, #0
80023e20:	0a000002 	beq	80023e30 <dirlookup+0xa8>
80023e24:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023e28:	e51b2008 	ldr	r2, [fp, #-8]
80023e2c:	e5832000 	str	r2, [r3]
80023e30:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
80023e34:	e50b300c 	str	r3, [fp, #-12]
80023e38:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023e3c:	e5933000 	ldr	r3, [r3]
80023e40:	e51b100c 	ldr	r1, [fp, #-12]
80023e44:	e1a00003 	mov	r0, r3
80023e48:	ebfffcb1 	bl	80023114 <iget>
80023e4c:	e1a03000 	mov	r3, r0
80023e50:	ea000009 	b	80023e7c <dirlookup+0xf4>
80023e54:	e1a00000 	nop			@ (mov r0, r0)
80023e58:	e51b3008 	ldr	r3, [fp, #-8]
80023e5c:	e2833010 	add	r3, r3, #16
80023e60:	e50b3008 	str	r3, [fp, #-8]
80023e64:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023e68:	e5933018 	ldr	r3, [r3, #24]
80023e6c:	e51b2008 	ldr	r2, [fp, #-8]
80023e70:	e1520003 	cmp	r2, r3
80023e74:	3affffd2 	bcc	80023dc4 <dirlookup+0x3c>
80023e78:	e3a03000 	mov	r3, #0
80023e7c:	e1a00003 	mov	r0, r3
80023e80:	e24bd004 	sub	sp, fp, #4
80023e84:	e8bd8800 	pop	{fp, pc}
80023e88:	8002a088 	.word	0x8002a088
80023e8c:	8002a09c 	.word	0x8002a09c

80023e90 <dirlink>:
80023e90:	e92d4800 	push	{fp, lr}
80023e94:	e28db004 	add	fp, sp, #4
80023e98:	e24dd028 	sub	sp, sp, #40	@ 0x28
80023e9c:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80023ea0:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023ea4:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023ea8:	e3a02000 	mov	r2, #0
80023eac:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023eb0:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023eb4:	ebffffb3 	bl	80023d88 <dirlookup>
80023eb8:	e50b000c 	str	r0, [fp, #-12]
80023ebc:	e51b300c 	ldr	r3, [fp, #-12]
80023ec0:	e3530000 	cmp	r3, #0
80023ec4:	0a000003 	beq	80023ed8 <dirlink+0x48>
80023ec8:	e51b000c 	ldr	r0, [fp, #-12]
80023ecc:	ebfffd78 	bl	800234b4 <iput>
80023ed0:	e3e03000 	mvn	r3, #0
80023ed4:	ea00002d 	b	80023f90 <dirlink+0x100>
80023ed8:	e3a03000 	mov	r3, #0
80023edc:	e50b3008 	str	r3, [fp, #-8]
80023ee0:	ea00000f 	b	80023f24 <dirlink+0x94>
80023ee4:	e51b2008 	ldr	r2, [fp, #-8]
80023ee8:	e24b101c 	sub	r1, fp, #28
80023eec:	e3a03010 	mov	r3, #16
80023ef0:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023ef4:	ebfffe94 	bl	8002394c <readi>
80023ef8:	e1a03000 	mov	r3, r0
80023efc:	e3530010 	cmp	r3, #16
80023f00:	0a000001 	beq	80023f0c <dirlink+0x7c>
80023f04:	e59f0090 	ldr	r0, [pc, #144]	@ 80023f9c <dirlink+0x10c>
80023f08:	ebfff749 	bl	80021c34 <panic>
80023f0c:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
80023f10:	e3530000 	cmp	r3, #0
80023f14:	0a000008 	beq	80023f3c <dirlink+0xac>
80023f18:	e51b3008 	ldr	r3, [fp, #-8]
80023f1c:	e2833010 	add	r3, r3, #16
80023f20:	e50b3008 	str	r3, [fp, #-8]
80023f24:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023f28:	e5932018 	ldr	r2, [r3, #24]
80023f2c:	e51b3008 	ldr	r3, [fp, #-8]
80023f30:	e1520003 	cmp	r2, r3
80023f34:	8affffea 	bhi	80023ee4 <dirlink+0x54>
80023f38:	ea000000 	b	80023f40 <dirlink+0xb0>
80023f3c:	e1a00000 	nop			@ (mov r0, r0)
80023f40:	e24b301c 	sub	r3, fp, #28
80023f44:	e2833002 	add	r3, r3, #2
80023f48:	e3a0200e 	mov	r2, #14
80023f4c:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023f50:	e1a00003 	mov	r0, r3
80023f54:	ebfff114 	bl	800203ac <strncpy>
80023f58:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023f5c:	e6ff3073 	uxth	r3, r3
80023f60:	e14b31bc 	strh	r3, [fp, #-28]	@ 0xffffffe4
80023f64:	e51b2008 	ldr	r2, [fp, #-8]
80023f68:	e24b101c 	sub	r1, fp, #28
80023f6c:	e3a03010 	mov	r3, #16
80023f70:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023f74:	ebfffeef 	bl	80023b38 <writei>
80023f78:	e1a03000 	mov	r3, r0
80023f7c:	e3530010 	cmp	r3, #16
80023f80:	0a000001 	beq	80023f8c <dirlink+0xfc>
80023f84:	e59f0014 	ldr	r0, [pc, #20]	@ 80023fa0 <dirlink+0x110>
80023f88:	ebfff729 	bl	80021c34 <panic>
80023f8c:	e3a03000 	mov	r3, #0
80023f90:	e1a00003 	mov	r0, r3
80023f94:	e24bd004 	sub	sp, fp, #4
80023f98:	e8bd8800 	pop	{fp, pc}
80023f9c:	8002a09c 	.word	0x8002a09c
80023fa0:	8002a0ac 	.word	0x8002a0ac

80023fa4 <skipelem>:
80023fa4:	e92d4800 	push	{fp, lr}
80023fa8:	e28db004 	add	fp, sp, #4
80023fac:	e24dd010 	sub	sp, sp, #16
80023fb0:	e50b0010 	str	r0, [fp, #-16]
80023fb4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80023fb8:	ea000002 	b	80023fc8 <skipelem+0x24>
80023fbc:	e51b3010 	ldr	r3, [fp, #-16]
80023fc0:	e2833001 	add	r3, r3, #1
80023fc4:	e50b3010 	str	r3, [fp, #-16]
80023fc8:	e51b3010 	ldr	r3, [fp, #-16]
80023fcc:	e5d33000 	ldrb	r3, [r3]
80023fd0:	e353002f 	cmp	r3, #47	@ 0x2f
80023fd4:	0afffff8 	beq	80023fbc <skipelem+0x18>
80023fd8:	e51b3010 	ldr	r3, [fp, #-16]
80023fdc:	e5d33000 	ldrb	r3, [r3]
80023fe0:	e3530000 	cmp	r3, #0
80023fe4:	1a000001 	bne	80023ff0 <skipelem+0x4c>
80023fe8:	e3a03000 	mov	r3, #0
80023fec:	ea00002c 	b	800240a4 <skipelem+0x100>
80023ff0:	e51b3010 	ldr	r3, [fp, #-16]
80023ff4:	e50b3008 	str	r3, [fp, #-8]
80023ff8:	ea000002 	b	80024008 <skipelem+0x64>
80023ffc:	e51b3010 	ldr	r3, [fp, #-16]
80024000:	e2833001 	add	r3, r3, #1
80024004:	e50b3010 	str	r3, [fp, #-16]
80024008:	e51b3010 	ldr	r3, [fp, #-16]
8002400c:	e5d33000 	ldrb	r3, [r3]
80024010:	e353002f 	cmp	r3, #47	@ 0x2f
80024014:	0a000003 	beq	80024028 <skipelem+0x84>
80024018:	e51b3010 	ldr	r3, [fp, #-16]
8002401c:	e5d33000 	ldrb	r3, [r3]
80024020:	e3530000 	cmp	r3, #0
80024024:	1afffff4 	bne	80023ffc <skipelem+0x58>
80024028:	e51b2010 	ldr	r2, [fp, #-16]
8002402c:	e51b3008 	ldr	r3, [fp, #-8]
80024030:	e0423003 	sub	r3, r2, r3
80024034:	e50b300c 	str	r3, [fp, #-12]
80024038:	e51b300c 	ldr	r3, [fp, #-12]
8002403c:	e353000d 	cmp	r3, #13
80024040:	da000004 	ble	80024058 <skipelem+0xb4>
80024044:	e3a0200e 	mov	r2, #14
80024048:	e51b1008 	ldr	r1, [fp, #-8]
8002404c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80024050:	ebfff05c 	bl	800201c8 <memmove>
80024054:	ea00000d 	b	80024090 <skipelem+0xec>
80024058:	e51b300c 	ldr	r3, [fp, #-12]
8002405c:	e1a02003 	mov	r2, r3
80024060:	e51b1008 	ldr	r1, [fp, #-8]
80024064:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80024068:	ebfff056 	bl	800201c8 <memmove>
8002406c:	e51b300c 	ldr	r3, [fp, #-12]
80024070:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80024074:	e0823003 	add	r3, r2, r3
80024078:	e3a02000 	mov	r2, #0
8002407c:	e5c32000 	strb	r2, [r3]
80024080:	ea000002 	b	80024090 <skipelem+0xec>
80024084:	e51b3010 	ldr	r3, [fp, #-16]
80024088:	e2833001 	add	r3, r3, #1
8002408c:	e50b3010 	str	r3, [fp, #-16]
80024090:	e51b3010 	ldr	r3, [fp, #-16]
80024094:	e5d33000 	ldrb	r3, [r3]
80024098:	e353002f 	cmp	r3, #47	@ 0x2f
8002409c:	0afffff8 	beq	80024084 <skipelem+0xe0>
800240a0:	e51b3010 	ldr	r3, [fp, #-16]
800240a4:	e1a00003 	mov	r0, r3
800240a8:	e24bd004 	sub	sp, fp, #4
800240ac:	e8bd8800 	pop	{fp, pc}

800240b0 <namex>:
800240b0:	e92d4800 	push	{fp, lr}
800240b4:	e28db004 	add	fp, sp, #4
800240b8:	e24dd018 	sub	sp, sp, #24
800240bc:	e50b0010 	str	r0, [fp, #-16]
800240c0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800240c4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800240c8:	e51b3010 	ldr	r3, [fp, #-16]
800240cc:	e5d33000 	ldrb	r3, [r3]
800240d0:	e353002f 	cmp	r3, #47	@ 0x2f
800240d4:	1a000004 	bne	800240ec <namex+0x3c>
800240d8:	e3a01001 	mov	r1, #1
800240dc:	e3a00001 	mov	r0, #1
800240e0:	ebfffc0b 	bl	80023114 <iget>
800240e4:	e50b0008 	str	r0, [fp, #-8]
800240e8:	ea00002b 	b	8002419c <namex+0xec>
800240ec:	e59f30f0 	ldr	r3, [pc, #240]	@ 800241e4 <namex+0x134>
800240f0:	e5933000 	ldr	r3, [r3]
800240f4:	e593306c 	ldr	r3, [r3, #108]	@ 0x6c
800240f8:	e1a00003 	mov	r0, r3
800240fc:	ebfffc54 	bl	80023254 <idup>
80024100:	e50b0008 	str	r0, [fp, #-8]
80024104:	ea000024 	b	8002419c <namex+0xec>
80024108:	e51b0008 	ldr	r0, [fp, #-8]
8002410c:	ebfffc62 	bl	8002329c <ilock>
80024110:	e51b3008 	ldr	r3, [fp, #-8]
80024114:	e1d331f0 	ldrsh	r3, [r3, #16]
80024118:	e3530001 	cmp	r3, #1
8002411c:	0a000003 	beq	80024130 <namex+0x80>
80024120:	e51b0008 	ldr	r0, [fp, #-8]
80024124:	ebfffd1d 	bl	800235a0 <iunlockput>
80024128:	e3a03000 	mov	r3, #0
8002412c:	ea000029 	b	800241d8 <namex+0x128>
80024130:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024134:	e3530000 	cmp	r3, #0
80024138:	0a000007 	beq	8002415c <namex+0xac>
8002413c:	e51b3010 	ldr	r3, [fp, #-16]
80024140:	e5d33000 	ldrb	r3, [r3]
80024144:	e3530000 	cmp	r3, #0
80024148:	1a000003 	bne	8002415c <namex+0xac>
8002414c:	e51b0008 	ldr	r0, [fp, #-8]
80024150:	ebfffcb5 	bl	8002342c <iunlock>
80024154:	e51b3008 	ldr	r3, [fp, #-8]
80024158:	ea00001e 	b	800241d8 <namex+0x128>
8002415c:	e3a02000 	mov	r2, #0
80024160:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
80024164:	e51b0008 	ldr	r0, [fp, #-8]
80024168:	ebffff06 	bl	80023d88 <dirlookup>
8002416c:	e50b000c 	str	r0, [fp, #-12]
80024170:	e51b300c 	ldr	r3, [fp, #-12]
80024174:	e3530000 	cmp	r3, #0
80024178:	1a000003 	bne	8002418c <namex+0xdc>
8002417c:	e51b0008 	ldr	r0, [fp, #-8]
80024180:	ebfffd06 	bl	800235a0 <iunlockput>
80024184:	e3a03000 	mov	r3, #0
80024188:	ea000012 	b	800241d8 <namex+0x128>
8002418c:	e51b0008 	ldr	r0, [fp, #-8]
80024190:	ebfffd02 	bl	800235a0 <iunlockput>
80024194:	e51b300c 	ldr	r3, [fp, #-12]
80024198:	e50b3008 	str	r3, [fp, #-8]
8002419c:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
800241a0:	e51b0010 	ldr	r0, [fp, #-16]
800241a4:	ebffff7e 	bl	80023fa4 <skipelem>
800241a8:	e50b0010 	str	r0, [fp, #-16]
800241ac:	e51b3010 	ldr	r3, [fp, #-16]
800241b0:	e3530000 	cmp	r3, #0
800241b4:	1affffd3 	bne	80024108 <namex+0x58>
800241b8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800241bc:	e3530000 	cmp	r3, #0
800241c0:	0a000003 	beq	800241d4 <namex+0x124>
800241c4:	e51b0008 	ldr	r0, [fp, #-8]
800241c8:	ebfffcb9 	bl	800234b4 <iput>
800241cc:	e3a03000 	mov	r3, #0
800241d0:	ea000000 	b	800241d8 <namex+0x128>
800241d4:	e51b3008 	ldr	r3, [fp, #-8]
800241d8:	e1a00003 	mov	r0, r3
800241dc:	e24bd004 	sub	sp, fp, #4
800241e0:	e8bd8800 	pop	{fp, pc}
800241e4:	800b0be0 	.word	0x800b0be0

800241e8 <namei>:
800241e8:	e92d4800 	push	{fp, lr}
800241ec:	e28db004 	add	fp, sp, #4
800241f0:	e24dd018 	sub	sp, sp, #24
800241f4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800241f8:	e24b3014 	sub	r3, fp, #20
800241fc:	e1a02003 	mov	r2, r3
80024200:	e3a01000 	mov	r1, #0
80024204:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80024208:	ebffffa8 	bl	800240b0 <namex>
8002420c:	e1a03000 	mov	r3, r0
80024210:	e1a00003 	mov	r0, r3
80024214:	e24bd004 	sub	sp, fp, #4
80024218:	e8bd8800 	pop	{fp, pc}

8002421c <nameiparent>:
8002421c:	e92d4800 	push	{fp, lr}
80024220:	e28db004 	add	fp, sp, #4
80024224:	e24dd008 	sub	sp, sp, #8
80024228:	e50b0008 	str	r0, [fp, #-8]
8002422c:	e50b100c 	str	r1, [fp, #-12]
80024230:	e51b200c 	ldr	r2, [fp, #-12]
80024234:	e3a01001 	mov	r1, #1
80024238:	e51b0008 	ldr	r0, [fp, #-8]
8002423c:	ebffff9b 	bl	800240b0 <namex>
80024240:	e1a03000 	mov	r3, r0
80024244:	e1a00003 	mov	r0, r3
80024248:	e24bd004 	sub	sp, fp, #4
8002424c:	e8bd8800 	pop	{fp, pc}

80024250 <initlog>:
80024250:	e92d4800 	push	{fp, lr}
80024254:	e28db004 	add	fp, sp, #4
80024258:	e24dd010 	sub	sp, sp, #16
8002425c:	e59f1058 	ldr	r1, [pc, #88]	@ 800242bc <initlog+0x6c>
80024260:	e59f0058 	ldr	r0, [pc, #88]	@ 800242c0 <initlog+0x70>
80024264:	eb00092f 	bl	80026728 <initlock>
80024268:	e24b3014 	sub	r3, fp, #20
8002426c:	e1a01003 	mov	r1, r3
80024270:	e3a00001 	mov	r0, #1
80024274:	ebfffa3c 	bl	80022b6c <readsb>
80024278:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
8002427c:	e51b3008 	ldr	r3, [fp, #-8]
80024280:	e0423003 	sub	r3, r2, r3
80024284:	e1a02003 	mov	r2, r3
80024288:	e59f3030 	ldr	r3, [pc, #48]	@ 800242c0 <initlog+0x70>
8002428c:	e5832034 	str	r2, [r3, #52]	@ 0x34
80024290:	e51b3008 	ldr	r3, [fp, #-8]
80024294:	e1a02003 	mov	r2, r3
80024298:	e59f3020 	ldr	r3, [pc, #32]	@ 800242c0 <initlog+0x70>
8002429c:	e5832038 	str	r2, [r3, #56]	@ 0x38
800242a0:	e59f3018 	ldr	r3, [pc, #24]	@ 800242c0 <initlog+0x70>
800242a4:	e3a02001 	mov	r2, #1
800242a8:	e5832040 	str	r2, [r3, #64]	@ 0x40
800242ac:	eb00009b 	bl	80024520 <recover_from_log>
800242b0:	e1a00000 	nop			@ (mov r0, r0)
800242b4:	e24bd004 	sub	sp, fp, #4
800242b8:	e8bd8800 	pop	{fp, pc}
800242bc:	8002a0b4 	.word	0x8002a0b4
800242c0:	800ae548 	.word	0x800ae548

800242c4 <install_trans>:
800242c4:	e92d4800 	push	{fp, lr}
800242c8:	e28db004 	add	fp, sp, #4
800242cc:	e24dd010 	sub	sp, sp, #16
800242d0:	e3a03000 	mov	r3, #0
800242d4:	e50b3008 	str	r3, [fp, #-8]
800242d8:	ea000026 	b	80024378 <install_trans+0xb4>
800242dc:	e59f30b8 	ldr	r3, [pc, #184]	@ 8002439c <install_trans+0xd8>
800242e0:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
800242e4:	e1a00003 	mov	r0, r3
800242e8:	e59f30ac 	ldr	r3, [pc, #172]	@ 8002439c <install_trans+0xd8>
800242ec:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
800242f0:	e51b3008 	ldr	r3, [fp, #-8]
800242f4:	e0823003 	add	r3, r2, r3
800242f8:	e2833001 	add	r3, r3, #1
800242fc:	e1a01003 	mov	r1, r3
80024300:	ebfff253 	bl	80020c54 <bread>
80024304:	e50b000c 	str	r0, [fp, #-12]
80024308:	e59f308c 	ldr	r3, [pc, #140]	@ 8002439c <install_trans+0xd8>
8002430c:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
80024310:	e1a00003 	mov	r0, r3
80024314:	e59f2080 	ldr	r2, [pc, #128]	@ 8002439c <install_trans+0xd8>
80024318:	e51b3008 	ldr	r3, [fp, #-8]
8002431c:	e2833010 	add	r3, r3, #16
80024320:	e1a03103 	lsl	r3, r3, #2
80024324:	e0823003 	add	r3, r2, r3
80024328:	e5933008 	ldr	r3, [r3, #8]
8002432c:	e1a01003 	mov	r1, r3
80024330:	ebfff247 	bl	80020c54 <bread>
80024334:	e50b0010 	str	r0, [fp, #-16]
80024338:	e51b3010 	ldr	r3, [fp, #-16]
8002433c:	e2830018 	add	r0, r3, #24
80024340:	e51b300c 	ldr	r3, [fp, #-12]
80024344:	e2833018 	add	r3, r3, #24
80024348:	e3a02c02 	mov	r2, #512	@ 0x200
8002434c:	e1a01003 	mov	r1, r3
80024350:	ebffef9c 	bl	800201c8 <memmove>
80024354:	e51b0010 	ldr	r0, [fp, #-16]
80024358:	ebfff251 	bl	80020ca4 <bwrite>
8002435c:	e51b000c 	ldr	r0, [fp, #-12]
80024360:	ebfff265 	bl	80020cfc <brelse>
80024364:	e51b0010 	ldr	r0, [fp, #-16]
80024368:	ebfff263 	bl	80020cfc <brelse>
8002436c:	e51b3008 	ldr	r3, [fp, #-8]
80024370:	e2833001 	add	r3, r3, #1
80024374:	e50b3008 	str	r3, [fp, #-8]
80024378:	e59f301c 	ldr	r3, [pc, #28]	@ 8002439c <install_trans+0xd8>
8002437c:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024380:	e51b2008 	ldr	r2, [fp, #-8]
80024384:	e1520003 	cmp	r2, r3
80024388:	baffffd3 	blt	800242dc <install_trans+0x18>
8002438c:	e1a00000 	nop			@ (mov r0, r0)
80024390:	e1a00000 	nop			@ (mov r0, r0)
80024394:	e24bd004 	sub	sp, fp, #4
80024398:	e8bd8800 	pop	{fp, pc}
8002439c:	800ae548 	.word	0x800ae548

800243a0 <read_head>:
800243a0:	e92d4800 	push	{fp, lr}
800243a4:	e28db004 	add	fp, sp, #4
800243a8:	e24dd010 	sub	sp, sp, #16
800243ac:	e59f30a4 	ldr	r3, [pc, #164]	@ 80024458 <read_head+0xb8>
800243b0:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
800243b4:	e1a02003 	mov	r2, r3
800243b8:	e59f3098 	ldr	r3, [pc, #152]	@ 80024458 <read_head+0xb8>
800243bc:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
800243c0:	e1a01003 	mov	r1, r3
800243c4:	e1a00002 	mov	r0, r2
800243c8:	ebfff221 	bl	80020c54 <bread>
800243cc:	e50b000c 	str	r0, [fp, #-12]
800243d0:	e51b300c 	ldr	r3, [fp, #-12]
800243d4:	e2833018 	add	r3, r3, #24
800243d8:	e50b3010 	str	r3, [fp, #-16]
800243dc:	e51b3010 	ldr	r3, [fp, #-16]
800243e0:	e5933000 	ldr	r3, [r3]
800243e4:	e59f206c 	ldr	r2, [pc, #108]	@ 80024458 <read_head+0xb8>
800243e8:	e5823044 	str	r3, [r2, #68]	@ 0x44
800243ec:	e3a03000 	mov	r3, #0
800243f0:	e50b3008 	str	r3, [fp, #-8]
800243f4:	ea00000d 	b	80024430 <read_head+0x90>
800243f8:	e51b2010 	ldr	r2, [fp, #-16]
800243fc:	e51b3008 	ldr	r3, [fp, #-8]
80024400:	e1a03103 	lsl	r3, r3, #2
80024404:	e0823003 	add	r3, r2, r3
80024408:	e5932004 	ldr	r2, [r3, #4]
8002440c:	e59f1044 	ldr	r1, [pc, #68]	@ 80024458 <read_head+0xb8>
80024410:	e51b3008 	ldr	r3, [fp, #-8]
80024414:	e2833010 	add	r3, r3, #16
80024418:	e1a03103 	lsl	r3, r3, #2
8002441c:	e0813003 	add	r3, r1, r3
80024420:	e5832008 	str	r2, [r3, #8]
80024424:	e51b3008 	ldr	r3, [fp, #-8]
80024428:	e2833001 	add	r3, r3, #1
8002442c:	e50b3008 	str	r3, [fp, #-8]
80024430:	e59f3020 	ldr	r3, [pc, #32]	@ 80024458 <read_head+0xb8>
80024434:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024438:	e51b2008 	ldr	r2, [fp, #-8]
8002443c:	e1520003 	cmp	r2, r3
80024440:	baffffec 	blt	800243f8 <read_head+0x58>
80024444:	e51b000c 	ldr	r0, [fp, #-12]
80024448:	ebfff22b 	bl	80020cfc <brelse>
8002444c:	e1a00000 	nop			@ (mov r0, r0)
80024450:	e24bd004 	sub	sp, fp, #4
80024454:	e8bd8800 	pop	{fp, pc}
80024458:	800ae548 	.word	0x800ae548

8002445c <write_head>:
8002445c:	e92d4800 	push	{fp, lr}
80024460:	e28db004 	add	fp, sp, #4
80024464:	e24dd010 	sub	sp, sp, #16
80024468:	e59f30ac 	ldr	r3, [pc, #172]	@ 8002451c <write_head+0xc0>
8002446c:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
80024470:	e1a02003 	mov	r2, r3
80024474:	e59f30a0 	ldr	r3, [pc, #160]	@ 8002451c <write_head+0xc0>
80024478:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
8002447c:	e1a01003 	mov	r1, r3
80024480:	e1a00002 	mov	r0, r2
80024484:	ebfff1f2 	bl	80020c54 <bread>
80024488:	e50b000c 	str	r0, [fp, #-12]
8002448c:	e51b300c 	ldr	r3, [fp, #-12]
80024490:	e2833018 	add	r3, r3, #24
80024494:	e50b3010 	str	r3, [fp, #-16]
80024498:	e59f307c 	ldr	r3, [pc, #124]	@ 8002451c <write_head+0xc0>
8002449c:	e5932044 	ldr	r2, [r3, #68]	@ 0x44
800244a0:	e51b3010 	ldr	r3, [fp, #-16]
800244a4:	e5832000 	str	r2, [r3]
800244a8:	e3a03000 	mov	r3, #0
800244ac:	e50b3008 	str	r3, [fp, #-8]
800244b0:	ea00000d 	b	800244ec <write_head+0x90>
800244b4:	e59f2060 	ldr	r2, [pc, #96]	@ 8002451c <write_head+0xc0>
800244b8:	e51b3008 	ldr	r3, [fp, #-8]
800244bc:	e2833010 	add	r3, r3, #16
800244c0:	e1a03103 	lsl	r3, r3, #2
800244c4:	e0823003 	add	r3, r2, r3
800244c8:	e5932008 	ldr	r2, [r3, #8]
800244cc:	e51b1010 	ldr	r1, [fp, #-16]
800244d0:	e51b3008 	ldr	r3, [fp, #-8]
800244d4:	e1a03103 	lsl	r3, r3, #2
800244d8:	e0813003 	add	r3, r1, r3
800244dc:	e5832004 	str	r2, [r3, #4]
800244e0:	e51b3008 	ldr	r3, [fp, #-8]
800244e4:	e2833001 	add	r3, r3, #1
800244e8:	e50b3008 	str	r3, [fp, #-8]
800244ec:	e59f3028 	ldr	r3, [pc, #40]	@ 8002451c <write_head+0xc0>
800244f0:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800244f4:	e51b2008 	ldr	r2, [fp, #-8]
800244f8:	e1520003 	cmp	r2, r3
800244fc:	baffffec 	blt	800244b4 <write_head+0x58>
80024500:	e51b000c 	ldr	r0, [fp, #-12]
80024504:	ebfff1e6 	bl	80020ca4 <bwrite>
80024508:	e51b000c 	ldr	r0, [fp, #-12]
8002450c:	ebfff1fa 	bl	80020cfc <brelse>
80024510:	e1a00000 	nop			@ (mov r0, r0)
80024514:	e24bd004 	sub	sp, fp, #4
80024518:	e8bd8800 	pop	{fp, pc}
8002451c:	800ae548 	.word	0x800ae548

80024520 <recover_from_log>:
80024520:	e92d4800 	push	{fp, lr}
80024524:	e28db004 	add	fp, sp, #4
80024528:	ebffff9c 	bl	800243a0 <read_head>
8002452c:	ebffff64 	bl	800242c4 <install_trans>
80024530:	e59f3010 	ldr	r3, [pc, #16]	@ 80024548 <recover_from_log+0x28>
80024534:	e3a02000 	mov	r2, #0
80024538:	e5832044 	str	r2, [r3, #68]	@ 0x44
8002453c:	ebffffc6 	bl	8002445c <write_head>
80024540:	e1a00000 	nop			@ (mov r0, r0)
80024544:	e8bd8800 	pop	{fp, pc}
80024548:	800ae548 	.word	0x800ae548

8002454c <begin_trans>:
8002454c:	e92d4800 	push	{fp, lr}
80024550:	e28db004 	add	fp, sp, #4
80024554:	e59f003c 	ldr	r0, [pc, #60]	@ 80024598 <begin_trans+0x4c>
80024558:	eb000884 	bl	80026770 <acquire>
8002455c:	ea000002 	b	8002456c <begin_trans+0x20>
80024560:	e59f1030 	ldr	r1, [pc, #48]	@ 80024598 <begin_trans+0x4c>
80024564:	e59f002c 	ldr	r0, [pc, #44]	@ 80024598 <begin_trans+0x4c>
80024568:	eb0006ba 	bl	80026058 <sleep>
8002456c:	e59f3024 	ldr	r3, [pc, #36]	@ 80024598 <begin_trans+0x4c>
80024570:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
80024574:	e3530000 	cmp	r3, #0
80024578:	1afffff8 	bne	80024560 <begin_trans+0x14>
8002457c:	e59f3014 	ldr	r3, [pc, #20]	@ 80024598 <begin_trans+0x4c>
80024580:	e3a02001 	mov	r2, #1
80024584:	e583203c 	str	r2, [r3, #60]	@ 0x3c
80024588:	e59f0008 	ldr	r0, [pc, #8]	@ 80024598 <begin_trans+0x4c>
8002458c:	eb000882 	bl	8002679c <release>
80024590:	e1a00000 	nop			@ (mov r0, r0)
80024594:	e8bd8800 	pop	{fp, pc}
80024598:	800ae548 	.word	0x800ae548

8002459c <commit_trans>:
8002459c:	e92d4800 	push	{fp, lr}
800245a0:	e28db004 	add	fp, sp, #4
800245a4:	e59f304c 	ldr	r3, [pc, #76]	@ 800245f8 <commit_trans+0x5c>
800245a8:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800245ac:	e3530000 	cmp	r3, #0
800245b0:	da000005 	ble	800245cc <commit_trans+0x30>
800245b4:	ebffffa8 	bl	8002445c <write_head>
800245b8:	ebffff41 	bl	800242c4 <install_trans>
800245bc:	e59f3034 	ldr	r3, [pc, #52]	@ 800245f8 <commit_trans+0x5c>
800245c0:	e3a02000 	mov	r2, #0
800245c4:	e5832044 	str	r2, [r3, #68]	@ 0x44
800245c8:	ebffffa3 	bl	8002445c <write_head>
800245cc:	e59f0024 	ldr	r0, [pc, #36]	@ 800245f8 <commit_trans+0x5c>
800245d0:	eb000866 	bl	80026770 <acquire>
800245d4:	e59f301c 	ldr	r3, [pc, #28]	@ 800245f8 <commit_trans+0x5c>
800245d8:	e3a02000 	mov	r2, #0
800245dc:	e583203c 	str	r2, [r3, #60]	@ 0x3c
800245e0:	e59f0010 	ldr	r0, [pc, #16]	@ 800245f8 <commit_trans+0x5c>
800245e4:	eb00071f 	bl	80026268 <wakeup>
800245e8:	e59f0008 	ldr	r0, [pc, #8]	@ 800245f8 <commit_trans+0x5c>
800245ec:	eb00086a 	bl	8002679c <release>
800245f0:	e1a00000 	nop			@ (mov r0, r0)
800245f4:	e8bd8800 	pop	{fp, pc}
800245f8:	800ae548 	.word	0x800ae548

800245fc <log_write>:
800245fc:	e92d4800 	push	{fp, lr}
80024600:	e28db004 	add	fp, sp, #4
80024604:	e24dd010 	sub	sp, sp, #16
80024608:	e50b0010 	str	r0, [fp, #-16]
8002460c:	e59f3164 	ldr	r3, [pc, #356]	@ 80024778 <log_write+0x17c>
80024610:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024614:	e3530009 	cmp	r3, #9
80024618:	ca000006 	bgt	80024638 <log_write+0x3c>
8002461c:	e59f3154 	ldr	r3, [pc, #340]	@ 80024778 <log_write+0x17c>
80024620:	e5932044 	ldr	r2, [r3, #68]	@ 0x44
80024624:	e59f314c 	ldr	r3, [pc, #332]	@ 80024778 <log_write+0x17c>
80024628:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
8002462c:	e2433001 	sub	r3, r3, #1
80024630:	e1520003 	cmp	r2, r3
80024634:	ba000001 	blt	80024640 <log_write+0x44>
80024638:	e59f013c 	ldr	r0, [pc, #316]	@ 8002477c <log_write+0x180>
8002463c:	ebfff57c 	bl	80021c34 <panic>
80024640:	e59f3130 	ldr	r3, [pc, #304]	@ 80024778 <log_write+0x17c>
80024644:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
80024648:	e3530000 	cmp	r3, #0
8002464c:	1a000001 	bne	80024658 <log_write+0x5c>
80024650:	e59f0128 	ldr	r0, [pc, #296]	@ 80024780 <log_write+0x184>
80024654:	ebfff576 	bl	80021c34 <panic>
80024658:	e3a03000 	mov	r3, #0
8002465c:	e50b3008 	str	r3, [fp, #-8]
80024660:	ea00000d 	b	8002469c <log_write+0xa0>
80024664:	e59f210c 	ldr	r2, [pc, #268]	@ 80024778 <log_write+0x17c>
80024668:	e51b3008 	ldr	r3, [fp, #-8]
8002466c:	e2833010 	add	r3, r3, #16
80024670:	e1a03103 	lsl	r3, r3, #2
80024674:	e0823003 	add	r3, r2, r3
80024678:	e5933008 	ldr	r3, [r3, #8]
8002467c:	e1a02003 	mov	r2, r3
80024680:	e51b3010 	ldr	r3, [fp, #-16]
80024684:	e5933008 	ldr	r3, [r3, #8]
80024688:	e1520003 	cmp	r2, r3
8002468c:	0a000008 	beq	800246b4 <log_write+0xb8>
80024690:	e51b3008 	ldr	r3, [fp, #-8]
80024694:	e2833001 	add	r3, r3, #1
80024698:	e50b3008 	str	r3, [fp, #-8]
8002469c:	e59f30d4 	ldr	r3, [pc, #212]	@ 80024778 <log_write+0x17c>
800246a0:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800246a4:	e51b2008 	ldr	r2, [fp, #-8]
800246a8:	e1520003 	cmp	r2, r3
800246ac:	baffffec 	blt	80024664 <log_write+0x68>
800246b0:	ea000000 	b	800246b8 <log_write+0xbc>
800246b4:	e1a00000 	nop			@ (mov r0, r0)
800246b8:	e51b3010 	ldr	r3, [fp, #-16]
800246bc:	e5933008 	ldr	r3, [r3, #8]
800246c0:	e1a01003 	mov	r1, r3
800246c4:	e59f20ac 	ldr	r2, [pc, #172]	@ 80024778 <log_write+0x17c>
800246c8:	e51b3008 	ldr	r3, [fp, #-8]
800246cc:	e2833010 	add	r3, r3, #16
800246d0:	e1a03103 	lsl	r3, r3, #2
800246d4:	e0823003 	add	r3, r2, r3
800246d8:	e5831008 	str	r1, [r3, #8]
800246dc:	e51b3010 	ldr	r3, [fp, #-16]
800246e0:	e5930004 	ldr	r0, [r3, #4]
800246e4:	e59f308c 	ldr	r3, [pc, #140]	@ 80024778 <log_write+0x17c>
800246e8:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
800246ec:	e51b3008 	ldr	r3, [fp, #-8]
800246f0:	e0823003 	add	r3, r2, r3
800246f4:	e2833001 	add	r3, r3, #1
800246f8:	e1a01003 	mov	r1, r3
800246fc:	ebfff154 	bl	80020c54 <bread>
80024700:	e50b000c 	str	r0, [fp, #-12]
80024704:	e51b300c 	ldr	r3, [fp, #-12]
80024708:	e2830018 	add	r0, r3, #24
8002470c:	e51b3010 	ldr	r3, [fp, #-16]
80024710:	e2833018 	add	r3, r3, #24
80024714:	e3a02c02 	mov	r2, #512	@ 0x200
80024718:	e1a01003 	mov	r1, r3
8002471c:	ebffeea9 	bl	800201c8 <memmove>
80024720:	e51b000c 	ldr	r0, [fp, #-12]
80024724:	ebfff15e 	bl	80020ca4 <bwrite>
80024728:	e51b000c 	ldr	r0, [fp, #-12]
8002472c:	ebfff172 	bl	80020cfc <brelse>
80024730:	e59f3040 	ldr	r3, [pc, #64]	@ 80024778 <log_write+0x17c>
80024734:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024738:	e51b2008 	ldr	r2, [fp, #-8]
8002473c:	e1520003 	cmp	r2, r3
80024740:	1a000004 	bne	80024758 <log_write+0x15c>
80024744:	e59f302c 	ldr	r3, [pc, #44]	@ 80024778 <log_write+0x17c>
80024748:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
8002474c:	e2833001 	add	r3, r3, #1
80024750:	e59f2020 	ldr	r2, [pc, #32]	@ 80024778 <log_write+0x17c>
80024754:	e5823044 	str	r3, [r2, #68]	@ 0x44
80024758:	e51b3010 	ldr	r3, [fp, #-16]
8002475c:	e5933000 	ldr	r3, [r3]
80024760:	e3832004 	orr	r2, r3, #4
80024764:	e51b3010 	ldr	r3, [fp, #-16]
80024768:	e5832000 	str	r2, [r3]
8002476c:	e1a00000 	nop			@ (mov r0, r0)
80024770:	e24bd004 	sub	sp, fp, #4
80024774:	e8bd8800 	pop	{fp, pc}
80024778:	800ae548 	.word	0x800ae548
8002477c:	8002a0b8 	.word	0x8002a0b8
80024780:	8002a0d0 	.word	0x8002a0d0

80024784 <kmain>:
80024784:	e92d4800 	push	{fp, lr}
80024788:	e28db004 	add	fp, sp, #4
8002478c:	e24dd008 	sub	sp, sp, #8
80024790:	e59f30a4 	ldr	r3, [pc, #164]	@ 8002483c <kmain+0xb8>
80024794:	e59f20a4 	ldr	r2, [pc, #164]	@ 80024840 <kmain+0xbc>
80024798:	e5832000 	str	r2, [r3]
8002479c:	e59f00a0 	ldr	r0, [pc, #160]	@ 80024844 <kmain+0xc0>
800247a0:	eb00148e 	bl	800299e0 <uart_init>
800247a4:	e59f309c 	ldr	r3, [pc, #156]	@ 80024848 <kmain+0xc4>
800247a8:	e50b3008 	str	r3, [fp, #-8]
800247ac:	eb00108a 	bl	800289dc <init_vmm>
800247b0:	e59f3094 	ldr	r3, [pc, #148]	@ 8002484c <kmain+0xc8>
800247b4:	e2833fff 	add	r3, r3, #1020	@ 0x3fc
800247b8:	e2833003 	add	r3, r3, #3
800247bc:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
800247c0:	e3c33003 	bic	r3, r3, #3
800247c4:	e51b1008 	ldr	r1, [fp, #-8]
800247c8:	e1a00003 	mov	r0, r3
800247cc:	eb0010b6 	bl	80028aac <kpt_freerange>
800247d0:	e51b3008 	ldr	r3, [fp, #-8]
800247d4:	e2833b01 	add	r3, r3, #1024	@ 0x400
800247d8:	e59f1070 	ldr	r1, [pc, #112]	@ 80024850 <kmain+0xcc>
800247dc:	e1a00003 	mov	r0, r3
800247e0:	eb0010b1 	bl	80028aac <kpt_freerange>
800247e4:	e3a01302 	mov	r1, #134217728	@ 0x8000000
800247e8:	e3a00601 	mov	r0, #1048576	@ 0x100000
800247ec:	eb001376 	bl	800295cc <paging_init>
800247f0:	ebfff1c0 	bl	80020ef8 <kmem_init>
800247f4:	e3a01322 	mov	r1, #-2013265920	@ 0x88000000
800247f8:	e59f0050 	ldr	r0, [pc, #80]	@ 80024850 <kmain+0xcc>
800247fc:	ebfff1c6 	bl	80020f1c <kmem_init2>
80024800:	eb000f79 	bl	800285ec <trap_init>
80024804:	e59f0048 	ldr	r0, [pc, #72]	@ 80024854 <kmain+0xd0>
80024808:	eb001390 	bl	80029650 <pic_init>
8002480c:	eb0014a4 	bl	80029aa4 <uart_enable_rx>
80024810:	ebfff644 	bl	80022128 <consoleinit>
80024814:	eb0001ca 	bl	80024f44 <pinit>
80024818:	ebfff07c 	bl	80020a10 <binit>
8002481c:	ebfff78e 	bl	8002265c <fileinit>
80024820:	ebfff9ba 	bl	80022f10 <iinit>
80024824:	eb00000b 	bl	80024858 <ideinit>
80024828:	e3a0000a 	mov	r0, #10
8002482c:	eb00141a 	bl	8002989c <timer_init>
80024830:	ebffef50 	bl	80020578 <sti>
80024834:	eb000325 	bl	800254d0 <userinit>
80024838:	eb000533 	bl	80025d0c <scheduler>
8002483c:	800ae698 	.word	0x800ae698
80024840:	800ae5b8 	.word	0x800ae5b8
80024844:	901f1000 	.word	0x901f1000
80024848:	800f0000 	.word	0x800f0000
8002484c:	800b1000 	.word	0x800b1000
80024850:	80100000 	.word	0x80100000
80024854:	90140000 	.word	0x90140000

80024858 <ideinit>:
80024858:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002485c:	e28db000 	add	fp, sp, #0
80024860:	e59f3028 	ldr	r3, [pc, #40]	@ 80024890 <ideinit+0x38>
80024864:	e59f2028 	ldr	r2, [pc, #40]	@ 80024894 <ideinit+0x3c>
80024868:	e5832000 	str	r2, [r3]
8002486c:	e59f3024 	ldr	r3, [pc, #36]	@ 80024898 <ideinit+0x40>
80024870:	e1a034a3 	lsr	r3, r3, #9
80024874:	e1a02003 	mov	r2, r3
80024878:	e59f301c 	ldr	r3, [pc, #28]	@ 8002489c <ideinit+0x44>
8002487c:	e5832000 	str	r2, [r3]
80024880:	e1a00000 	nop			@ (mov r0, r0)
80024884:	e28bd000 	add	sp, fp, #0
80024888:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002488c:	e12fff1e 	bx	lr
80024890:	800ae6a0 	.word	0x800ae6a0
80024894:	8002b120 	.word	0x8002b120
80024898:	00080000 	.word	0x00080000
8002489c:	800ae69c 	.word	0x800ae69c

800248a0 <ideintr>:
800248a0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800248a4:	e28db000 	add	fp, sp, #0
800248a8:	e1a00000 	nop			@ (mov r0, r0)
800248ac:	e28bd000 	add	sp, fp, #0
800248b0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800248b4:	e12fff1e 	bx	lr

800248b8 <iderw>:
800248b8:	e92d4800 	push	{fp, lr}
800248bc:	e28db004 	add	fp, sp, #4
800248c0:	e24dd010 	sub	sp, sp, #16
800248c4:	e50b0010 	str	r0, [fp, #-16]
800248c8:	e51b3010 	ldr	r3, [fp, #-16]
800248cc:	e5933000 	ldr	r3, [r3]
800248d0:	e2033001 	and	r3, r3, #1
800248d4:	e3530000 	cmp	r3, #0
800248d8:	1a000001 	bne	800248e4 <iderw+0x2c>
800248dc:	e59f00ec 	ldr	r0, [pc, #236]	@ 800249d0 <iderw+0x118>
800248e0:	ebfff4d3 	bl	80021c34 <panic>
800248e4:	e51b3010 	ldr	r3, [fp, #-16]
800248e8:	e5933000 	ldr	r3, [r3]
800248ec:	e2033006 	and	r3, r3, #6
800248f0:	e3530002 	cmp	r3, #2
800248f4:	1a000001 	bne	80024900 <iderw+0x48>
800248f8:	e59f00d4 	ldr	r0, [pc, #212]	@ 800249d4 <iderw+0x11c>
800248fc:	ebfff4cc 	bl	80021c34 <panic>
80024900:	e51b3010 	ldr	r3, [fp, #-16]
80024904:	e5933004 	ldr	r3, [r3, #4]
80024908:	e3530001 	cmp	r3, #1
8002490c:	0a000001 	beq	80024918 <iderw+0x60>
80024910:	e59f00c0 	ldr	r0, [pc, #192]	@ 800249d8 <iderw+0x120>
80024914:	ebfff4c6 	bl	80021c34 <panic>
80024918:	e51b3010 	ldr	r3, [fp, #-16]
8002491c:	e5933008 	ldr	r3, [r3, #8]
80024920:	e59f20b4 	ldr	r2, [pc, #180]	@ 800249dc <iderw+0x124>
80024924:	e5922000 	ldr	r2, [r2]
80024928:	e1530002 	cmp	r3, r2
8002492c:	3a000001 	bcc	80024938 <iderw+0x80>
80024930:	e59f00a8 	ldr	r0, [pc, #168]	@ 800249e0 <iderw+0x128>
80024934:	ebfff4be 	bl	80021c34 <panic>
80024938:	e59f30a4 	ldr	r3, [pc, #164]	@ 800249e4 <iderw+0x12c>
8002493c:	e5932000 	ldr	r2, [r3]
80024940:	e51b3010 	ldr	r3, [fp, #-16]
80024944:	e5933008 	ldr	r3, [r3, #8]
80024948:	e1a03483 	lsl	r3, r3, #9
8002494c:	e0823003 	add	r3, r2, r3
80024950:	e50b3008 	str	r3, [fp, #-8]
80024954:	e51b3010 	ldr	r3, [fp, #-16]
80024958:	e5933000 	ldr	r3, [r3]
8002495c:	e2033004 	and	r3, r3, #4
80024960:	e3530000 	cmp	r3, #0
80024964:	0a00000b 	beq	80024998 <iderw+0xe0>
80024968:	e51b3010 	ldr	r3, [fp, #-16]
8002496c:	e5933000 	ldr	r3, [r3]
80024970:	e3c32004 	bic	r2, r3, #4
80024974:	e51b3010 	ldr	r3, [fp, #-16]
80024978:	e5832000 	str	r2, [r3]
8002497c:	e51b3010 	ldr	r3, [fp, #-16]
80024980:	e2833018 	add	r3, r3, #24
80024984:	e3a02c02 	mov	r2, #512	@ 0x200
80024988:	e1a01003 	mov	r1, r3
8002498c:	e51b0008 	ldr	r0, [fp, #-8]
80024990:	ebffee0c 	bl	800201c8 <memmove>
80024994:	ea000005 	b	800249b0 <iderw+0xf8>
80024998:	e51b3010 	ldr	r3, [fp, #-16]
8002499c:	e2833018 	add	r3, r3, #24
800249a0:	e3a02c02 	mov	r2, #512	@ 0x200
800249a4:	e51b1008 	ldr	r1, [fp, #-8]
800249a8:	e1a00003 	mov	r0, r3
800249ac:	ebffee05 	bl	800201c8 <memmove>
800249b0:	e51b3010 	ldr	r3, [fp, #-16]
800249b4:	e5933000 	ldr	r3, [r3]
800249b8:	e3832002 	orr	r2, r3, #2
800249bc:	e51b3010 	ldr	r3, [fp, #-16]
800249c0:	e5832000 	str	r2, [r3]
800249c4:	e1a00000 	nop			@ (mov r0, r0)
800249c8:	e24bd004 	sub	sp, fp, #4
800249cc:	e8bd8800 	pop	{fp, pc}
800249d0:	8002a0e8 	.word	0x8002a0e8
800249d4:	8002a0fc 	.word	0x8002a0fc
800249d8:	8002a114 	.word	0x8002a114
800249dc:	800ae69c 	.word	0x800ae69c
800249e0:	8002a134 	.word	0x8002a134
800249e4:	800ae6a0 	.word	0x800ae6a0

800249e8 <pipealloc>:
800249e8:	e92d4800 	push	{fp, lr}
800249ec:	e28db004 	add	fp, sp, #4
800249f0:	e24dd010 	sub	sp, sp, #16
800249f4:	e50b0010 	str	r0, [fp, #-16]
800249f8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800249fc:	e3a03000 	mov	r3, #0
80024a00:	e50b3008 	str	r3, [fp, #-8]
80024a04:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024a08:	e3a02000 	mov	r2, #0
80024a0c:	e5832000 	str	r2, [r3]
80024a10:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024a14:	e5932000 	ldr	r2, [r3]
80024a18:	e51b3010 	ldr	r3, [fp, #-16]
80024a1c:	e5832000 	str	r2, [r3]
80024a20:	ebfff716 	bl	80022680 <filealloc>
80024a24:	e1a02000 	mov	r2, r0
80024a28:	e51b3010 	ldr	r3, [fp, #-16]
80024a2c:	e5832000 	str	r2, [r3]
80024a30:	e51b3010 	ldr	r3, [fp, #-16]
80024a34:	e5933000 	ldr	r3, [r3]
80024a38:	e3530000 	cmp	r3, #0
80024a3c:	0a000042 	beq	80024b4c <pipealloc+0x164>
80024a40:	ebfff70e 	bl	80022680 <filealloc>
80024a44:	e1a02000 	mov	r2, r0
80024a48:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024a4c:	e5832000 	str	r2, [r3]
80024a50:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024a54:	e5933000 	ldr	r3, [r3]
80024a58:	e3530000 	cmp	r3, #0
80024a5c:	0a00003a 	beq	80024b4c <pipealloc+0x164>
80024a60:	e3a00f91 	mov	r0, #580	@ 0x244
80024a64:	ebfff348 	bl	8002178c <get_order>
80024a68:	e1a03000 	mov	r3, r0
80024a6c:	e1a00003 	mov	r0, r3
80024a70:	ebfff2bb 	bl	80021564 <kmalloc>
80024a74:	e50b0008 	str	r0, [fp, #-8]
80024a78:	e51b3008 	ldr	r3, [fp, #-8]
80024a7c:	e3530000 	cmp	r3, #0
80024a80:	0a000033 	beq	80024b54 <pipealloc+0x16c>
80024a84:	e51b3008 	ldr	r3, [fp, #-8]
80024a88:	e3a02001 	mov	r2, #1
80024a8c:	e583223c 	str	r2, [r3, #572]	@ 0x23c
80024a90:	e51b3008 	ldr	r3, [fp, #-8]
80024a94:	e3a02001 	mov	r2, #1
80024a98:	e5832240 	str	r2, [r3, #576]	@ 0x240
80024a9c:	e51b3008 	ldr	r3, [fp, #-8]
80024aa0:	e3a02000 	mov	r2, #0
80024aa4:	e5832238 	str	r2, [r3, #568]	@ 0x238
80024aa8:	e51b3008 	ldr	r3, [fp, #-8]
80024aac:	e3a02000 	mov	r2, #0
80024ab0:	e5832234 	str	r2, [r3, #564]	@ 0x234
80024ab4:	e51b3008 	ldr	r3, [fp, #-8]
80024ab8:	e59f110c 	ldr	r1, [pc, #268]	@ 80024bcc <pipealloc+0x1e4>
80024abc:	e1a00003 	mov	r0, r3
80024ac0:	eb000718 	bl	80026728 <initlock>
80024ac4:	e51b3010 	ldr	r3, [fp, #-16]
80024ac8:	e5933000 	ldr	r3, [r3]
80024acc:	e3a02001 	mov	r2, #1
80024ad0:	e5c32000 	strb	r2, [r3]
80024ad4:	e51b3010 	ldr	r3, [fp, #-16]
80024ad8:	e5933000 	ldr	r3, [r3]
80024adc:	e3a02001 	mov	r2, #1
80024ae0:	e5c32008 	strb	r2, [r3, #8]
80024ae4:	e51b3010 	ldr	r3, [fp, #-16]
80024ae8:	e5933000 	ldr	r3, [r3]
80024aec:	e3a02000 	mov	r2, #0
80024af0:	e5c32009 	strb	r2, [r3, #9]
80024af4:	e51b3010 	ldr	r3, [fp, #-16]
80024af8:	e5933000 	ldr	r3, [r3]
80024afc:	e51b2008 	ldr	r2, [fp, #-8]
80024b00:	e583200c 	str	r2, [r3, #12]
80024b04:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024b08:	e5933000 	ldr	r3, [r3]
80024b0c:	e3a02001 	mov	r2, #1
80024b10:	e5c32000 	strb	r2, [r3]
80024b14:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024b18:	e5933000 	ldr	r3, [r3]
80024b1c:	e3a02000 	mov	r2, #0
80024b20:	e5c32008 	strb	r2, [r3, #8]
80024b24:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024b28:	e5933000 	ldr	r3, [r3]
80024b2c:	e3a02001 	mov	r2, #1
80024b30:	e5c32009 	strb	r2, [r3, #9]
80024b34:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024b38:	e5933000 	ldr	r3, [r3]
80024b3c:	e51b2008 	ldr	r2, [fp, #-8]
80024b40:	e583200c 	str	r2, [r3, #12]
80024b44:	e3a03000 	mov	r3, #0
80024b48:	ea00001c 	b	80024bc0 <pipealloc+0x1d8>
80024b4c:	e1a00000 	nop			@ (mov r0, r0)
80024b50:	ea000000 	b	80024b58 <pipealloc+0x170>
80024b54:	e1a00000 	nop			@ (mov r0, r0)
80024b58:	e51b3008 	ldr	r3, [fp, #-8]
80024b5c:	e3530000 	cmp	r3, #0
80024b60:	0a000005 	beq	80024b7c <pipealloc+0x194>
80024b64:	e3a00f91 	mov	r0, #580	@ 0x244
80024b68:	ebfff307 	bl	8002178c <get_order>
80024b6c:	e1a03000 	mov	r3, r0
80024b70:	e1a01003 	mov	r1, r3
80024b74:	e51b0008 	ldr	r0, [fp, #-8]
80024b78:	ebfff2d0 	bl	800216c0 <kfree>
80024b7c:	e51b3010 	ldr	r3, [fp, #-16]
80024b80:	e5933000 	ldr	r3, [r3]
80024b84:	e3530000 	cmp	r3, #0
80024b88:	0a000003 	beq	80024b9c <pipealloc+0x1b4>
80024b8c:	e51b3010 	ldr	r3, [fp, #-16]
80024b90:	e5933000 	ldr	r3, [r3]
80024b94:	e1a00003 	mov	r0, r3
80024b98:	ebfff6f4 	bl	80022770 <fileclose>
80024b9c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024ba0:	e5933000 	ldr	r3, [r3]
80024ba4:	e3530000 	cmp	r3, #0
80024ba8:	0a000003 	beq	80024bbc <pipealloc+0x1d4>
80024bac:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024bb0:	e5933000 	ldr	r3, [r3]
80024bb4:	e1a00003 	mov	r0, r3
80024bb8:	ebfff6ec 	bl	80022770 <fileclose>
80024bbc:	e3e03000 	mvn	r3, #0
80024bc0:	e1a00003 	mov	r0, r3
80024bc4:	e24bd004 	sub	sp, fp, #4
80024bc8:	e8bd8800 	pop	{fp, pc}
80024bcc:	8002a150 	.word	0x8002a150

80024bd0 <pipeclose>:
80024bd0:	e92d4800 	push	{fp, lr}
80024bd4:	e28db004 	add	fp, sp, #4
80024bd8:	e24dd008 	sub	sp, sp, #8
80024bdc:	e50b0008 	str	r0, [fp, #-8]
80024be0:	e50b100c 	str	r1, [fp, #-12]
80024be4:	e51b3008 	ldr	r3, [fp, #-8]
80024be8:	e1a00003 	mov	r0, r3
80024bec:	eb0006df 	bl	80026770 <acquire>
80024bf0:	e51b300c 	ldr	r3, [fp, #-12]
80024bf4:	e3530000 	cmp	r3, #0
80024bf8:	0a000007 	beq	80024c1c <pipeclose+0x4c>
80024bfc:	e51b3008 	ldr	r3, [fp, #-8]
80024c00:	e3a02000 	mov	r2, #0
80024c04:	e5832240 	str	r2, [r3, #576]	@ 0x240
80024c08:	e51b3008 	ldr	r3, [fp, #-8]
80024c0c:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024c10:	e1a00003 	mov	r0, r3
80024c14:	eb000593 	bl	80026268 <wakeup>
80024c18:	ea000006 	b	80024c38 <pipeclose+0x68>
80024c1c:	e51b3008 	ldr	r3, [fp, #-8]
80024c20:	e3a02000 	mov	r2, #0
80024c24:	e583223c 	str	r2, [r3, #572]	@ 0x23c
80024c28:	e51b3008 	ldr	r3, [fp, #-8]
80024c2c:	e2833f8e 	add	r3, r3, #568	@ 0x238
80024c30:	e1a00003 	mov	r0, r3
80024c34:	eb00058b 	bl	80026268 <wakeup>
80024c38:	e51b3008 	ldr	r3, [fp, #-8]
80024c3c:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80024c40:	e3530000 	cmp	r3, #0
80024c44:	1a00000d 	bne	80024c80 <pipeclose+0xb0>
80024c48:	e51b3008 	ldr	r3, [fp, #-8]
80024c4c:	e5933240 	ldr	r3, [r3, #576]	@ 0x240
80024c50:	e3530000 	cmp	r3, #0
80024c54:	1a000009 	bne	80024c80 <pipeclose+0xb0>
80024c58:	e51b3008 	ldr	r3, [fp, #-8]
80024c5c:	e1a00003 	mov	r0, r3
80024c60:	eb0006cd 	bl	8002679c <release>
80024c64:	e3a00f91 	mov	r0, #580	@ 0x244
80024c68:	ebfff2c7 	bl	8002178c <get_order>
80024c6c:	e1a03000 	mov	r3, r0
80024c70:	e1a01003 	mov	r1, r3
80024c74:	e51b0008 	ldr	r0, [fp, #-8]
80024c78:	ebfff290 	bl	800216c0 <kfree>
80024c7c:	ea000003 	b	80024c90 <pipeclose+0xc0>
80024c80:	e51b3008 	ldr	r3, [fp, #-8]
80024c84:	e1a00003 	mov	r0, r3
80024c88:	eb0006c3 	bl	8002679c <release>
80024c8c:	e1a00000 	nop			@ (mov r0, r0)
80024c90:	e1a00000 	nop			@ (mov r0, r0)
80024c94:	e24bd004 	sub	sp, fp, #4
80024c98:	e8bd8800 	pop	{fp, pc}

80024c9c <pipewrite>:
80024c9c:	e92d4800 	push	{fp, lr}
80024ca0:	e28db004 	add	fp, sp, #4
80024ca4:	e24dd018 	sub	sp, sp, #24
80024ca8:	e50b0010 	str	r0, [fp, #-16]
80024cac:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024cb0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80024cb4:	e51b3010 	ldr	r3, [fp, #-16]
80024cb8:	e1a00003 	mov	r0, r3
80024cbc:	eb0006ab 	bl	80026770 <acquire>
80024cc0:	e3a03000 	mov	r3, #0
80024cc4:	e50b3008 	str	r3, [fp, #-8]
80024cc8:	ea00002b 	b	80024d7c <pipewrite+0xe0>
80024ccc:	e51b3010 	ldr	r3, [fp, #-16]
80024cd0:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80024cd4:	e3530000 	cmp	r3, #0
80024cd8:	1a000004 	bne	80024cf0 <pipewrite+0x54>
80024cdc:	e51b3010 	ldr	r3, [fp, #-16]
80024ce0:	e1a00003 	mov	r0, r3
80024ce4:	eb0006ac 	bl	8002679c <release>
80024ce8:	e3e03000 	mvn	r3, #0
80024cec:	ea00002e 	b	80024dac <pipewrite+0x110>
80024cf0:	e51b3010 	ldr	r3, [fp, #-16]
80024cf4:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024cf8:	e1a00003 	mov	r0, r3
80024cfc:	eb000559 	bl	80026268 <wakeup>
80024d00:	e51b3010 	ldr	r3, [fp, #-16]
80024d04:	e2833f8e 	add	r3, r3, #568	@ 0x238
80024d08:	e51b2010 	ldr	r2, [fp, #-16]
80024d0c:	e1a01002 	mov	r1, r2
80024d10:	e1a00003 	mov	r0, r3
80024d14:	eb0004cf 	bl	80026058 <sleep>
80024d18:	e51b3010 	ldr	r3, [fp, #-16]
80024d1c:	e5932238 	ldr	r2, [r3, #568]	@ 0x238
80024d20:	e51b3010 	ldr	r3, [fp, #-16]
80024d24:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80024d28:	e2833c02 	add	r3, r3, #512	@ 0x200
80024d2c:	e1520003 	cmp	r2, r3
80024d30:	0affffe5 	beq	80024ccc <pipewrite+0x30>
80024d34:	e51b3008 	ldr	r3, [fp, #-8]
80024d38:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80024d3c:	e0822003 	add	r2, r2, r3
80024d40:	e51b3010 	ldr	r3, [fp, #-16]
80024d44:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80024d48:	e2830001 	add	r0, r3, #1
80024d4c:	e51b1010 	ldr	r1, [fp, #-16]
80024d50:	e5810238 	str	r0, [r1, #568]	@ 0x238
80024d54:	e1a03b83 	lsl	r3, r3, #23
80024d58:	e1a03ba3 	lsr	r3, r3, #23
80024d5c:	e5d21000 	ldrb	r1, [r2]
80024d60:	e51b2010 	ldr	r2, [fp, #-16]
80024d64:	e0823003 	add	r3, r2, r3
80024d68:	e1a02001 	mov	r2, r1
80024d6c:	e5c32034 	strb	r2, [r3, #52]	@ 0x34
80024d70:	e51b3008 	ldr	r3, [fp, #-8]
80024d74:	e2833001 	add	r3, r3, #1
80024d78:	e50b3008 	str	r3, [fp, #-8]
80024d7c:	e51b2008 	ldr	r2, [fp, #-8]
80024d80:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80024d84:	e1520003 	cmp	r2, r3
80024d88:	baffffe2 	blt	80024d18 <pipewrite+0x7c>
80024d8c:	e51b3010 	ldr	r3, [fp, #-16]
80024d90:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024d94:	e1a00003 	mov	r0, r3
80024d98:	eb000532 	bl	80026268 <wakeup>
80024d9c:	e51b3010 	ldr	r3, [fp, #-16]
80024da0:	e1a00003 	mov	r0, r3
80024da4:	eb00067c 	bl	8002679c <release>
80024da8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80024dac:	e1a00003 	mov	r0, r3
80024db0:	e24bd004 	sub	sp, fp, #4
80024db4:	e8bd8800 	pop	{fp, pc}

80024db8 <piperead>:
80024db8:	e92d4800 	push	{fp, lr}
80024dbc:	e28db004 	add	fp, sp, #4
80024dc0:	e24dd018 	sub	sp, sp, #24
80024dc4:	e50b0010 	str	r0, [fp, #-16]
80024dc8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024dcc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80024dd0:	e51b3010 	ldr	r3, [fp, #-16]
80024dd4:	e1a00003 	mov	r0, r3
80024dd8:	eb000664 	bl	80026770 <acquire>
80024ddc:	ea00000f 	b	80024e20 <piperead+0x68>
80024de0:	e59f310c 	ldr	r3, [pc, #268]	@ 80024ef4 <piperead+0x13c>
80024de4:	e5933000 	ldr	r3, [r3]
80024de8:	e5933028 	ldr	r3, [r3, #40]	@ 0x28
80024dec:	e3530000 	cmp	r3, #0
80024df0:	0a000004 	beq	80024e08 <piperead+0x50>
80024df4:	e51b3010 	ldr	r3, [fp, #-16]
80024df8:	e1a00003 	mov	r0, r3
80024dfc:	eb000666 	bl	8002679c <release>
80024e00:	e3e03000 	mvn	r3, #0
80024e04:	ea000037 	b	80024ee8 <piperead+0x130>
80024e08:	e51b3010 	ldr	r3, [fp, #-16]
80024e0c:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024e10:	e51b2010 	ldr	r2, [fp, #-16]
80024e14:	e1a01002 	mov	r1, r2
80024e18:	e1a00003 	mov	r0, r3
80024e1c:	eb00048d 	bl	80026058 <sleep>
80024e20:	e51b3010 	ldr	r3, [fp, #-16]
80024e24:	e5932234 	ldr	r2, [r3, #564]	@ 0x234
80024e28:	e51b3010 	ldr	r3, [fp, #-16]
80024e2c:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80024e30:	e1520003 	cmp	r2, r3
80024e34:	1a000003 	bne	80024e48 <piperead+0x90>
80024e38:	e51b3010 	ldr	r3, [fp, #-16]
80024e3c:	e5933240 	ldr	r3, [r3, #576]	@ 0x240
80024e40:	e3530000 	cmp	r3, #0
80024e44:	1affffe5 	bne	80024de0 <piperead+0x28>
80024e48:	e3a03000 	mov	r3, #0
80024e4c:	e50b3008 	str	r3, [fp, #-8]
80024e50:	ea000016 	b	80024eb0 <piperead+0xf8>
80024e54:	e51b3010 	ldr	r3, [fp, #-16]
80024e58:	e5932234 	ldr	r2, [r3, #564]	@ 0x234
80024e5c:	e51b3010 	ldr	r3, [fp, #-16]
80024e60:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80024e64:	e1520003 	cmp	r2, r3
80024e68:	0a000015 	beq	80024ec4 <piperead+0x10c>
80024e6c:	e51b3010 	ldr	r3, [fp, #-16]
80024e70:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80024e74:	e2831001 	add	r1, r3, #1
80024e78:	e51b2010 	ldr	r2, [fp, #-16]
80024e7c:	e5821234 	str	r1, [r2, #564]	@ 0x234
80024e80:	e1a03b83 	lsl	r3, r3, #23
80024e84:	e1a03ba3 	lsr	r3, r3, #23
80024e88:	e51b2008 	ldr	r2, [fp, #-8]
80024e8c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80024e90:	e0812002 	add	r2, r1, r2
80024e94:	e51b1010 	ldr	r1, [fp, #-16]
80024e98:	e0813003 	add	r3, r1, r3
80024e9c:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
80024ea0:	e5c23000 	strb	r3, [r2]
80024ea4:	e51b3008 	ldr	r3, [fp, #-8]
80024ea8:	e2833001 	add	r3, r3, #1
80024eac:	e50b3008 	str	r3, [fp, #-8]
80024eb0:	e51b2008 	ldr	r2, [fp, #-8]
80024eb4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80024eb8:	e1520003 	cmp	r2, r3
80024ebc:	baffffe4 	blt	80024e54 <piperead+0x9c>
80024ec0:	ea000000 	b	80024ec8 <piperead+0x110>
80024ec4:	e1a00000 	nop			@ (mov r0, r0)
80024ec8:	e51b3010 	ldr	r3, [fp, #-16]
80024ecc:	e2833f8e 	add	r3, r3, #568	@ 0x238
80024ed0:	e1a00003 	mov	r0, r3
80024ed4:	eb0004e3 	bl	80026268 <wakeup>
80024ed8:	e51b3010 	ldr	r3, [fp, #-16]
80024edc:	e1a00003 	mov	r0, r3
80024ee0:	eb00062d 	bl	8002679c <release>
80024ee4:	e51b3008 	ldr	r3, [fp, #-8]
80024ee8:	e1a00003 	mov	r0, r3
80024eec:	e24bd004 	sub	sp, fp, #4
80024ef0:	e8bd8800 	pop	{fp, pc}
80024ef4:	800b0be0 	.word	0x800b0be0

80024ef8 <rand>:
80024ef8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80024efc:	e28db000 	add	fp, sp, #0
80024f00:	e59f3034 	ldr	r3, [pc, #52]	@ 80024f3c <rand+0x44>
80024f04:	e5933000 	ldr	r3, [r3]
80024f08:	e59f2030 	ldr	r2, [pc, #48]	@ 80024f40 <rand+0x48>
80024f0c:	e0030392 	mul	r3, r2, r3
80024f10:	e2833a03 	add	r3, r3, #12288	@ 0x3000
80024f14:	e2833039 	add	r3, r3, #57	@ 0x39
80024f18:	e3c33102 	bic	r3, r3, #-2147483648	@ 0x80000000
80024f1c:	e59f2018 	ldr	r2, [pc, #24]	@ 80024f3c <rand+0x44>
80024f20:	e5823000 	str	r3, [r2]
80024f24:	e59f3010 	ldr	r3, [pc, #16]	@ 80024f3c <rand+0x44>
80024f28:	e5933000 	ldr	r3, [r3]
80024f2c:	e1a00003 	mov	r0, r3
80024f30:	e28bd000 	add	sp, fp, #0
80024f34:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80024f38:	e12fff1e 	bx	lr
80024f3c:	800ae6a4 	.word	0x800ae6a4
80024f40:	41c64e6d 	.word	0x41c64e6d

80024f44 <pinit>:
80024f44:	e92d4800 	push	{fp, lr}
80024f48:	e28db004 	add	fp, sp, #4
80024f4c:	e59f100c 	ldr	r1, [pc, #12]	@ 80024f60 <pinit+0x1c>
80024f50:	e59f000c 	ldr	r0, [pc, #12]	@ 80024f64 <pinit+0x20>
80024f54:	eb0005f3 	bl	80026728 <initlock>
80024f58:	e1a00000 	nop			@ (mov r0, r0)
80024f5c:	e8bd8800 	pop	{fp, pc}
80024f60:	8002a180 	.word	0x8002a180
80024f64:	800ae6a8 	.word	0x800ae6a8

80024f68 <allocproc>:
80024f68:	e92d4800 	push	{fp, lr}
80024f6c:	e28db004 	add	fp, sp, #4
80024f70:	e24dd008 	sub	sp, sp, #8
80024f74:	e59f01ac 	ldr	r0, [pc, #428]	@ 80025128 <allocproc+0x1c0>
80024f78:	eb0005fc 	bl	80026770 <acquire>
80024f7c:	e59f31a8 	ldr	r3, [pc, #424]	@ 8002512c <allocproc+0x1c4>
80024f80:	e50b3008 	str	r3, [fp, #-8]
80024f84:	ea000006 	b	80024fa4 <allocproc+0x3c>
80024f88:	e51b3008 	ldr	r3, [fp, #-8]
80024f8c:	e5d33010 	ldrb	r3, [r3, #16]
80024f90:	e3530000 	cmp	r3, #0
80024f94:	0a00000a 	beq	80024fc4 <allocproc+0x5c>
80024f98:	e51b3008 	ldr	r3, [fp, #-8]
80024f9c:	e2833094 	add	r3, r3, #148	@ 0x94
80024fa0:	e50b3008 	str	r3, [fp, #-8]
80024fa4:	e51b3008 	ldr	r3, [fp, #-8]
80024fa8:	e59f2180 	ldr	r2, [pc, #384]	@ 80025130 <allocproc+0x1c8>
80024fac:	e1530002 	cmp	r3, r2
80024fb0:	3afffff4 	bcc	80024f88 <allocproc+0x20>
80024fb4:	e59f016c 	ldr	r0, [pc, #364]	@ 80025128 <allocproc+0x1c0>
80024fb8:	eb0005f7 	bl	8002679c <release>
80024fbc:	e3a03000 	mov	r3, #0
80024fc0:	ea000055 	b	8002511c <allocproc+0x1b4>
80024fc4:	e1a00000 	nop			@ (mov r0, r0)
80024fc8:	e51b3008 	ldr	r3, [fp, #-8]
80024fcc:	e3a02001 	mov	r2, #1
80024fd0:	e5c32010 	strb	r2, [r3, #16]
80024fd4:	e59f3158 	ldr	r3, [pc, #344]	@ 80025134 <allocproc+0x1cc>
80024fd8:	e5933000 	ldr	r3, [r3]
80024fdc:	e2832001 	add	r2, r3, #1
80024fe0:	e59f114c 	ldr	r1, [pc, #332]	@ 80025134 <allocproc+0x1cc>
80024fe4:	e5812000 	str	r2, [r1]
80024fe8:	e51b2008 	ldr	r2, [fp, #-8]
80024fec:	e5823014 	str	r3, [r2, #20]
80024ff0:	e51b3008 	ldr	r3, [fp, #-8]
80024ff4:	e3a02000 	mov	r2, #0
80024ff8:	e583200c 	str	r2, [r3, #12]
80024ffc:	e51b3008 	ldr	r3, [fp, #-8]
80025000:	e3a02001 	mov	r2, #1
80025004:	e5832080 	str	r2, [r3, #128]	@ 0x80
80025008:	e51b3008 	ldr	r3, [fp, #-8]
8002500c:	e3a02000 	mov	r2, #0
80025010:	e5832084 	str	r2, [r3, #132]	@ 0x84
80025014:	e51b3008 	ldr	r3, [fp, #-8]
80025018:	e3a02000 	mov	r2, #0
8002501c:	e5832088 	str	r2, [r3, #136]	@ 0x88
80025020:	e51b3008 	ldr	r3, [fp, #-8]
80025024:	e3a02000 	mov	r2, #0
80025028:	e583208c 	str	r2, [r3, #140]	@ 0x8c
8002502c:	e51b3008 	ldr	r3, [fp, #-8]
80025030:	e3a02000 	mov	r2, #0
80025034:	e5832090 	str	r2, [r3, #144]	@ 0x90
80025038:	e59f00e8 	ldr	r0, [pc, #232]	@ 80025128 <allocproc+0x1c0>
8002503c:	eb0005d6 	bl	8002679c <release>
80025040:	ebfff1ca 	bl	80021770 <alloc_page>
80025044:	e1a02000 	mov	r2, r0
80025048:	e51b3008 	ldr	r3, [fp, #-8]
8002504c:	e5832008 	str	r2, [r3, #8]
80025050:	e51b3008 	ldr	r3, [fp, #-8]
80025054:	e5933008 	ldr	r3, [r3, #8]
80025058:	e3530000 	cmp	r3, #0
8002505c:	1a000004 	bne	80025074 <allocproc+0x10c>
80025060:	e51b3008 	ldr	r3, [fp, #-8]
80025064:	e3a02000 	mov	r2, #0
80025068:	e5c32010 	strb	r2, [r3, #16]
8002506c:	e3a03000 	mov	r3, #0
80025070:	ea000029 	b	8002511c <allocproc+0x1b4>
80025074:	e51b3008 	ldr	r3, [fp, #-8]
80025078:	e5933008 	ldr	r3, [r3, #8]
8002507c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80025080:	e50b300c 	str	r3, [fp, #-12]
80025084:	e51b300c 	ldr	r3, [fp, #-12]
80025088:	e2433048 	sub	r3, r3, #72	@ 0x48
8002508c:	e50b300c 	str	r3, [fp, #-12]
80025090:	e51b3008 	ldr	r3, [fp, #-8]
80025094:	e51b200c 	ldr	r2, [fp, #-12]
80025098:	e583201c 	str	r2, [r3, #28]
8002509c:	e51b300c 	ldr	r3, [fp, #-12]
800250a0:	e2433004 	sub	r3, r3, #4
800250a4:	e50b300c 	str	r3, [fp, #-12]
800250a8:	e59f2088 	ldr	r2, [pc, #136]	@ 80025138 <allocproc+0x1d0>
800250ac:	e51b300c 	ldr	r3, [fp, #-12]
800250b0:	e5832000 	str	r2, [r3]
800250b4:	e51b300c 	ldr	r3, [fp, #-12]
800250b8:	e2433004 	sub	r3, r3, #4
800250bc:	e50b300c 	str	r3, [fp, #-12]
800250c0:	e51b3008 	ldr	r3, [fp, #-8]
800250c4:	e5933008 	ldr	r3, [r3, #8]
800250c8:	e2832a01 	add	r2, r3, #4096	@ 0x1000
800250cc:	e51b300c 	ldr	r3, [fp, #-12]
800250d0:	e5832000 	str	r2, [r3]
800250d4:	e51b300c 	ldr	r3, [fp, #-12]
800250d8:	e2433028 	sub	r3, r3, #40	@ 0x28
800250dc:	e50b300c 	str	r3, [fp, #-12]
800250e0:	e51b3008 	ldr	r3, [fp, #-8]
800250e4:	e51b200c 	ldr	r2, [fp, #-12]
800250e8:	e5832020 	str	r2, [r3, #32]
800250ec:	e51b3008 	ldr	r3, [fp, #-8]
800250f0:	e5933020 	ldr	r3, [r3, #32]
800250f4:	e3a02028 	mov	r2, #40	@ 0x28
800250f8:	e3a01000 	mov	r1, #0
800250fc:	e1a00003 	mov	r0, r3
80025100:	ebffebbe 	bl	80020000 <memset>
80025104:	e59f2030 	ldr	r2, [pc, #48]	@ 8002513c <allocproc+0x1d4>
80025108:	e51b3008 	ldr	r3, [fp, #-8]
8002510c:	e5933020 	ldr	r3, [r3, #32]
80025110:	e2822004 	add	r2, r2, #4
80025114:	e5832024 	str	r2, [r3, #36]	@ 0x24
80025118:	e51b3008 	ldr	r3, [fp, #-8]
8002511c:	e1a00003 	mov	r0, r3
80025120:	e24bd004 	sub	sp, fp, #4
80025124:	e8bd8800 	pop	{fp, pc}
80025128:	800ae6a8 	.word	0x800ae6a8
8002512c:	800ae6dc 	.word	0x800ae6dc
80025130:	800b0bdc 	.word	0x800b0bdc
80025134:	8002b02c 	.word	0x8002b02c
80025138:	800281b0 	.word	0x800281b0
8002513c:	80026018 	.word	0x80026018

80025140 <getprocs>:
80025140:	e92d4800 	push	{fp, lr}
80025144:	e28db004 	add	fp, sp, #4
80025148:	e24dd058 	sub	sp, sp, #88	@ 0x58
8002514c:	e14b05f4 	strd	r0, [fp, #-84]	@ 0xffffffac
80025150:	e50b2058 	str	r2, [fp, #-88]	@ 0xffffffa8
80025154:	e3a03000 	mov	r3, #0
80025158:	e50b300c 	str	r3, [fp, #-12]
8002515c:	e59f0174 	ldr	r0, [pc, #372]	@ 800252d8 <getprocs+0x198>
80025160:	eb000582 	bl	80026770 <acquire>
80025164:	e59f3170 	ldr	r3, [pc, #368]	@ 800252dc <getprocs+0x19c>
80025168:	e50b3008 	str	r3, [fp, #-8]
8002516c:	ea00004b 	b	800252a0 <getprocs+0x160>
80025170:	e51b3008 	ldr	r3, [fp, #-8]
80025174:	e5d33010 	ldrb	r3, [r3, #16]
80025178:	e3530000 	cmp	r3, #0
8002517c:	0a000044 	beq	80025294 <getprocs+0x154>
80025180:	e51b3008 	ldr	r3, [fp, #-8]
80025184:	e5933014 	ldr	r3, [r3, #20]
80025188:	e50b3048 	str	r3, [fp, #-72]	@ 0xffffffb8
8002518c:	e51b3008 	ldr	r3, [fp, #-8]
80025190:	e5933018 	ldr	r3, [r3, #24]
80025194:	e3530000 	cmp	r3, #0
80025198:	0a000003 	beq	800251ac <getprocs+0x6c>
8002519c:	e51b3008 	ldr	r3, [fp, #-8]
800251a0:	e5933018 	ldr	r3, [r3, #24]
800251a4:	e5933014 	ldr	r3, [r3, #20]
800251a8:	ea000000 	b	800251b0 <getprocs+0x70>
800251ac:	e3a03000 	mov	r3, #0
800251b0:	e50b3044 	str	r3, [fp, #-68]	@ 0xffffffbc
800251b4:	e51b3008 	ldr	r3, [fp, #-8]
800251b8:	e5d33010 	ldrb	r3, [r3, #16]
800251bc:	e1a02003 	mov	r2, r3
800251c0:	e59f3118 	ldr	r3, [pc, #280]	@ 800252e0 <getprocs+0x1a0>
800251c4:	e7931102 	ldr	r1, [r3, r2, lsl #2]
800251c8:	e24b3048 	sub	r3, fp, #72	@ 0x48
800251cc:	e2833008 	add	r3, r3, #8
800251d0:	e3a02010 	mov	r2, #16
800251d4:	e1a00003 	mov	r0, r3
800251d8:	ebffec9c 	bl	80020450 <safestrcpy>
800251dc:	e51b3008 	ldr	r3, [fp, #-8]
800251e0:	e593300c 	ldr	r3, [r3, #12]
800251e4:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
800251e8:	e51b3008 	ldr	r3, [fp, #-8]
800251ec:	e5933000 	ldr	r3, [r3]
800251f0:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
800251f4:	e51b3008 	ldr	r3, [fp, #-8]
800251f8:	e2831070 	add	r1, r3, #112	@ 0x70
800251fc:	e24b3048 	sub	r3, fp, #72	@ 0x48
80025200:	e2833020 	add	r3, r3, #32
80025204:	e3a02010 	mov	r2, #16
80025208:	e1a00003 	mov	r0, r3
8002520c:	ebffec8f 	bl	80020450 <safestrcpy>
80025210:	e51b3008 	ldr	r3, [fp, #-8]
80025214:	e5933080 	ldr	r3, [r3, #128]	@ 0x80
80025218:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
8002521c:	e51b3008 	ldr	r3, [fp, #-8]
80025220:	e5933084 	ldr	r3, [r3, #132]	@ 0x84
80025224:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80025228:	e51b3008 	ldr	r3, [fp, #-8]
8002522c:	e5933088 	ldr	r3, [r3, #136]	@ 0x88
80025230:	e50b3010 	str	r3, [fp, #-16]
80025234:	e59f30a8 	ldr	r3, [pc, #168]	@ 800252e4 <getprocs+0x1a4>
80025238:	e5933000 	ldr	r3, [r3]
8002523c:	e5930004 	ldr	r0, [r3, #4]
80025240:	e51b200c 	ldr	r2, [fp, #-12]
80025244:	e1a03002 	mov	r3, r2
80025248:	e1a03203 	lsl	r3, r3, #4
8002524c:	e0433002 	sub	r3, r3, r2
80025250:	e1a03103 	lsl	r3, r3, #2
80025254:	e1a02003 	mov	r2, r3
80025258:	e51b3054 	ldr	r3, [fp, #-84]	@ 0xffffffac
8002525c:	e0821003 	add	r1, r2, r3
80025260:	e24b2048 	sub	r2, fp, #72	@ 0x48
80025264:	e3a0303c 	mov	r3, #60	@ 0x3c
80025268:	eb001099 	bl	800294d4 <copyout>
8002526c:	e1a03000 	mov	r3, r0
80025270:	e3530000 	cmp	r3, #0
80025274:	aa000003 	bge	80025288 <getprocs+0x148>
80025278:	e59f0058 	ldr	r0, [pc, #88]	@ 800252d8 <getprocs+0x198>
8002527c:	eb000546 	bl	8002679c <release>
80025280:	e3e03000 	mvn	r3, #0
80025284:	ea000010 	b	800252cc <getprocs+0x18c>
80025288:	e51b300c 	ldr	r3, [fp, #-12]
8002528c:	e2833001 	add	r3, r3, #1
80025290:	e50b300c 	str	r3, [fp, #-12]
80025294:	e51b3008 	ldr	r3, [fp, #-8]
80025298:	e2833094 	add	r3, r3, #148	@ 0x94
8002529c:	e50b3008 	str	r3, [fp, #-8]
800252a0:	e51b3008 	ldr	r3, [fp, #-8]
800252a4:	e59f203c 	ldr	r2, [pc, #60]	@ 800252e8 <getprocs+0x1a8>
800252a8:	e1530002 	cmp	r3, r2
800252ac:	2a000003 	bcs	800252c0 <getprocs+0x180>
800252b0:	e51b200c 	ldr	r2, [fp, #-12]
800252b4:	e51b3058 	ldr	r3, [fp, #-88]	@ 0xffffffa8
800252b8:	e1520003 	cmp	r2, r3
800252bc:	baffffab 	blt	80025170 <getprocs+0x30>
800252c0:	e59f0010 	ldr	r0, [pc, #16]	@ 800252d8 <getprocs+0x198>
800252c4:	eb000534 	bl	8002679c <release>
800252c8:	e51b300c 	ldr	r3, [fp, #-12]
800252cc:	e1a00003 	mov	r0, r3
800252d0:	e24bd004 	sub	sp, fp, #4
800252d4:	e8bd8800 	pop	{fp, pc}
800252d8:	800ae6a8 	.word	0x800ae6a8
800252dc:	800ae6dc 	.word	0x800ae6dc
800252e0:	8002b014 	.word	0x8002b014
800252e4:	800b0be0 	.word	0x800b0be0
800252e8:	800b0bdc 	.word	0x800b0bdc

800252ec <sched_settickets>:
800252ec:	e92d4800 	push	{fp, lr}
800252f0:	e28db004 	add	fp, sp, #4
800252f4:	e24dd010 	sub	sp, sp, #16
800252f8:	e50b0010 	str	r0, [fp, #-16]
800252fc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80025300:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025304:	e3530000 	cmp	r3, #0
80025308:	ca000001 	bgt	80025314 <sched_settickets+0x28>
8002530c:	e3e03000 	mvn	r3, #0
80025310:	ea00001e 	b	80025390 <sched_settickets+0xa4>
80025314:	e59f0080 	ldr	r0, [pc, #128]	@ 8002539c <sched_settickets+0xb0>
80025318:	eb000514 	bl	80026770 <acquire>
8002531c:	e59f307c 	ldr	r3, [pc, #124]	@ 800253a0 <sched_settickets+0xb4>
80025320:	e50b3008 	str	r3, [fp, #-8]
80025324:	ea000012 	b	80025374 <sched_settickets+0x88>
80025328:	e51b3008 	ldr	r3, [fp, #-8]
8002532c:	e5d33010 	ldrb	r3, [r3, #16]
80025330:	e3530000 	cmp	r3, #0
80025334:	0a00000b 	beq	80025368 <sched_settickets+0x7c>
80025338:	e51b3008 	ldr	r3, [fp, #-8]
8002533c:	e5933014 	ldr	r3, [r3, #20]
80025340:	e51b2010 	ldr	r2, [fp, #-16]
80025344:	e1520003 	cmp	r2, r3
80025348:	1a000006 	bne	80025368 <sched_settickets+0x7c>
8002534c:	e51b3008 	ldr	r3, [fp, #-8]
80025350:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80025354:	e5832080 	str	r2, [r3, #128]	@ 0x80
80025358:	e59f003c 	ldr	r0, [pc, #60]	@ 8002539c <sched_settickets+0xb0>
8002535c:	eb00050e 	bl	8002679c <release>
80025360:	e3a03000 	mov	r3, #0
80025364:	ea000009 	b	80025390 <sched_settickets+0xa4>
80025368:	e51b3008 	ldr	r3, [fp, #-8]
8002536c:	e2833094 	add	r3, r3, #148	@ 0x94
80025370:	e50b3008 	str	r3, [fp, #-8]
80025374:	e51b3008 	ldr	r3, [fp, #-8]
80025378:	e59f2024 	ldr	r2, [pc, #36]	@ 800253a4 <sched_settickets+0xb8>
8002537c:	e1530002 	cmp	r3, r2
80025380:	3affffe8 	bcc	80025328 <sched_settickets+0x3c>
80025384:	e59f0010 	ldr	r0, [pc, #16]	@ 8002539c <sched_settickets+0xb0>
80025388:	eb000503 	bl	8002679c <release>
8002538c:	e3e03000 	mvn	r3, #0
80025390:	e1a00003 	mov	r0, r3
80025394:	e24bd004 	sub	sp, fp, #4
80025398:	e8bd8800 	pop	{fp, pc}
8002539c:	800ae6a8 	.word	0x800ae6a8
800253a0:	800ae6dc 	.word	0x800ae6dc
800253a4:	800b0bdc 	.word	0x800b0bdc

800253a8 <sched_getpinfo>:
800253a8:	e92d4800 	push	{fp, lr}
800253ac:	e28db004 	add	fp, sp, #4
800253b0:	e24dd010 	sub	sp, sp, #16
800253b4:	e50b0010 	str	r0, [fp, #-16]
800253b8:	e51b3010 	ldr	r3, [fp, #-16]
800253bc:	e3530000 	cmp	r3, #0
800253c0:	1a000001 	bne	800253cc <sched_getpinfo+0x24>
800253c4:	e3e03000 	mvn	r3, #0
800253c8:	ea000035 	b	800254a4 <sched_getpinfo+0xfc>
800253cc:	e59f00dc 	ldr	r0, [pc, #220]	@ 800254b0 <sched_getpinfo+0x108>
800253d0:	eb0004e6 	bl	80026770 <acquire>
800253d4:	e3a03000 	mov	r3, #0
800253d8:	e50b300c 	str	r3, [fp, #-12]
800253dc:	e59f30d0 	ldr	r3, [pc, #208]	@ 800254b4 <sched_getpinfo+0x10c>
800253e0:	e50b3008 	str	r3, [fp, #-8]
800253e4:	ea000027 	b	80025488 <sched_getpinfo+0xe0>
800253e8:	e51b3008 	ldr	r3, [fp, #-8]
800253ec:	e5d33010 	ldrb	r3, [r3, #16]
800253f0:	e3530000 	cmp	r3, #0
800253f4:	13a03001 	movne	r3, #1
800253f8:	03a03000 	moveq	r3, #0
800253fc:	e6ef3073 	uxtb	r3, r3
80025400:	e1a01003 	mov	r1, r3
80025404:	e51b3010 	ldr	r3, [fp, #-16]
80025408:	e51b200c 	ldr	r2, [fp, #-12]
8002540c:	e7831102 	str	r1, [r3, r2, lsl #2]
80025410:	e51b3008 	ldr	r3, [fp, #-8]
80025414:	e5931014 	ldr	r1, [r3, #20]
80025418:	e51b3010 	ldr	r3, [fp, #-16]
8002541c:	e51b200c 	ldr	r2, [fp, #-12]
80025420:	e2822040 	add	r2, r2, #64	@ 0x40
80025424:	e7831102 	str	r1, [r3, r2, lsl #2]
80025428:	e51b3008 	ldr	r3, [fp, #-8]
8002542c:	e5931080 	ldr	r1, [r3, #128]	@ 0x80
80025430:	e51b3010 	ldr	r3, [fp, #-16]
80025434:	e51b200c 	ldr	r2, [fp, #-12]
80025438:	e2822080 	add	r2, r2, #128	@ 0x80
8002543c:	e7831102 	str	r1, [r3, r2, lsl #2]
80025440:	e51b3008 	ldr	r3, [fp, #-8]
80025444:	e5931084 	ldr	r1, [r3, #132]	@ 0x84
80025448:	e51b3010 	ldr	r3, [fp, #-16]
8002544c:	e51b200c 	ldr	r2, [fp, #-12]
80025450:	e28220c0 	add	r2, r2, #192	@ 0xc0
80025454:	e7831102 	str	r1, [r3, r2, lsl #2]
80025458:	e51b3008 	ldr	r3, [fp, #-8]
8002545c:	e5931088 	ldr	r1, [r3, #136]	@ 0x88
80025460:	e51b3010 	ldr	r3, [fp, #-16]
80025464:	e51b200c 	ldr	r2, [fp, #-12]
80025468:	e2822c01 	add	r2, r2, #256	@ 0x100
8002546c:	e7831102 	str	r1, [r3, r2, lsl #2]
80025470:	e51b3008 	ldr	r3, [fp, #-8]
80025474:	e2833094 	add	r3, r3, #148	@ 0x94
80025478:	e50b3008 	str	r3, [fp, #-8]
8002547c:	e51b300c 	ldr	r3, [fp, #-12]
80025480:	e2833001 	add	r3, r3, #1
80025484:	e50b300c 	str	r3, [fp, #-12]
80025488:	e51b3008 	ldr	r3, [fp, #-8]
8002548c:	e59f2024 	ldr	r2, [pc, #36]	@ 800254b8 <sched_getpinfo+0x110>
80025490:	e1530002 	cmp	r3, r2
80025494:	3affffd3 	bcc	800253e8 <sched_getpinfo+0x40>
80025498:	e59f0010 	ldr	r0, [pc, #16]	@ 800254b0 <sched_getpinfo+0x108>
8002549c:	eb0004be 	bl	8002679c <release>
800254a0:	e3a03000 	mov	r3, #0
800254a4:	e1a00003 	mov	r0, r3
800254a8:	e24bd004 	sub	sp, fp, #4
800254ac:	e8bd8800 	pop	{fp, pc}
800254b0:	800ae6a8 	.word	0x800ae6a8
800254b4:	800ae6dc 	.word	0x800ae6dc
800254b8:	800b0bdc 	.word	0x800b0bdc

800254bc <error_init>:
800254bc:	e92d4800 	push	{fp, lr}
800254c0:	e28db004 	add	fp, sp, #4
800254c4:	e59f0000 	ldr	r0, [pc]	@ 800254cc <error_init+0x10>
800254c8:	ebfff1d9 	bl	80021c34 <panic>
800254cc:	8002a188 	.word	0x8002a188

800254d0 <userinit>:
800254d0:	e92d4810 	push	{r4, fp, lr}
800254d4:	e28db008 	add	fp, sp, #8
800254d8:	e24dd00c 	sub	sp, sp, #12
800254dc:	ebfffea1 	bl	80024f68 <allocproc>
800254e0:	e50b0010 	str	r0, [fp, #-16]
800254e4:	e59f210c 	ldr	r2, [pc, #268]	@ 800255f8 <userinit+0x128>
800254e8:	e51b3010 	ldr	r3, [fp, #-16]
800254ec:	e5823000 	str	r3, [r2]
800254f0:	e51b3010 	ldr	r3, [fp, #-16]
800254f4:	e3a02001 	mov	r2, #1
800254f8:	e5832080 	str	r2, [r3, #128]	@ 0x80
800254fc:	eb000d7e 	bl	80028afc <kpt_alloc>
80025500:	e1a02000 	mov	r2, r0
80025504:	e51b3010 	ldr	r3, [fp, #-16]
80025508:	e5832004 	str	r2, [r3, #4]
8002550c:	e51b3010 	ldr	r3, [fp, #-16]
80025510:	e5933004 	ldr	r3, [r3, #4]
80025514:	e3530000 	cmp	r3, #0
80025518:	1a000001 	bne	80025524 <userinit+0x54>
8002551c:	e59f00d8 	ldr	r0, [pc, #216]	@ 800255fc <userinit+0x12c>
80025520:	ebfff1c3 	bl	80021c34 <panic>
80025524:	e51b3010 	ldr	r3, [fp, #-16]
80025528:	e5933004 	ldr	r3, [r3, #4]
8002552c:	e59f20cc 	ldr	r2, [pc, #204]	@ 80025600 <userinit+0x130>
80025530:	e59f10cc 	ldr	r1, [pc, #204]	@ 80025604 <userinit+0x134>
80025534:	e1a00003 	mov	r0, r3
80025538:	eb000e2d 	bl	80028df4 <inituvm>
8002553c:	e51b3010 	ldr	r3, [fp, #-16]
80025540:	e3a02a01 	mov	r2, #4096	@ 0x1000
80025544:	e5832000 	str	r2, [r3]
80025548:	e51b3010 	ldr	r3, [fp, #-16]
8002554c:	e593301c 	ldr	r3, [r3, #28]
80025550:	e3a02048 	mov	r2, #72	@ 0x48
80025554:	e3a01000 	mov	r1, #0
80025558:	e1a00003 	mov	r0, r3
8002555c:	ebffeaa7 	bl	80020000 <memset>
80025560:	e51b3010 	ldr	r3, [fp, #-16]
80025564:	e593301c 	ldr	r3, [r3, #28]
80025568:	e59f2098 	ldr	r2, [pc, #152]	@ 80025608 <userinit+0x138>
8002556c:	e5832008 	str	r2, [r3, #8]
80025570:	e51b3010 	ldr	r3, [fp, #-16]
80025574:	e593401c 	ldr	r4, [r3, #28]
80025578:	ebffec0c 	bl	800205b0 <spsr_usr>
8002557c:	e1a03000 	mov	r3, r0
80025580:	e584300c 	str	r3, [r4, #12]
80025584:	e51b3010 	ldr	r3, [fp, #-16]
80025588:	e593301c 	ldr	r3, [r3, #28]
8002558c:	e3a02a01 	mov	r2, #4096	@ 0x1000
80025590:	e5832000 	str	r2, [r3]
80025594:	e51b3010 	ldr	r3, [fp, #-16]
80025598:	e593301c 	ldr	r3, [r3, #28]
8002559c:	e3a02000 	mov	r2, #0
800255a0:	e5832004 	str	r2, [r3, #4]
800255a4:	e51b3010 	ldr	r3, [fp, #-16]
800255a8:	e593301c 	ldr	r3, [r3, #28]
800255ac:	e3a02000 	mov	r2, #0
800255b0:	e5832044 	str	r2, [r3, #68]	@ 0x44
800255b4:	e51b3010 	ldr	r3, [fp, #-16]
800255b8:	e2833070 	add	r3, r3, #112	@ 0x70
800255bc:	e3a02010 	mov	r2, #16
800255c0:	e59f1044 	ldr	r1, [pc, #68]	@ 8002560c <userinit+0x13c>
800255c4:	e1a00003 	mov	r0, r3
800255c8:	ebffeba0 	bl	80020450 <safestrcpy>
800255cc:	e59f003c 	ldr	r0, [pc, #60]	@ 80025610 <userinit+0x140>
800255d0:	ebfffb04 	bl	800241e8 <namei>
800255d4:	e1a02000 	mov	r2, r0
800255d8:	e51b3010 	ldr	r3, [fp, #-16]
800255dc:	e583206c 	str	r2, [r3, #108]	@ 0x6c
800255e0:	e51b3010 	ldr	r3, [fp, #-16]
800255e4:	e3a02003 	mov	r2, #3
800255e8:	e5c32010 	strb	r2, [r3, #16]
800255ec:	e1a00000 	nop			@ (mov r0, r0)
800255f0:	e24bd008 	sub	sp, fp, #8
800255f4:	e8bd8810 	pop	{r4, fp, pc}
800255f8:	800b0bdc 	.word	0x800b0bdc
800255fc:	8002a1a8 	.word	0x8002a1a8
80025600:	00000034 	.word	0x00000034
80025604:	8002b0ec 	.word	0x8002b0ec
80025608:	800254bc 	.word	0x800254bc
8002560c:	8002a1c4 	.word	0x8002a1c4
80025610:	8002a1d0 	.word	0x8002a1d0

80025614 <growproc>:
80025614:	e92d4800 	push	{fp, lr}
80025618:	e28db004 	add	fp, sp, #4
8002561c:	e24dd010 	sub	sp, sp, #16
80025620:	e50b0010 	str	r0, [fp, #-16]
80025624:	e59f30d0 	ldr	r3, [pc, #208]	@ 800256fc <growproc+0xe8>
80025628:	e5933000 	ldr	r3, [r3]
8002562c:	e5933000 	ldr	r3, [r3]
80025630:	e50b3008 	str	r3, [fp, #-8]
80025634:	e51b3010 	ldr	r3, [fp, #-16]
80025638:	e3530000 	cmp	r3, #0
8002563c:	da00000f 	ble	80025680 <growproc+0x6c>
80025640:	e59f30b4 	ldr	r3, [pc, #180]	@ 800256fc <growproc+0xe8>
80025644:	e5933000 	ldr	r3, [r3]
80025648:	e5930004 	ldr	r0, [r3, #4]
8002564c:	e51b2010 	ldr	r2, [fp, #-16]
80025650:	e51b3008 	ldr	r3, [fp, #-8]
80025654:	e0823003 	add	r3, r2, r3
80025658:	e1a02003 	mov	r2, r3
8002565c:	e51b1008 	ldr	r1, [fp, #-8]
80025660:	eb000e51 	bl	80028fac <allocuvm>
80025664:	e1a03000 	mov	r3, r0
80025668:	e50b3008 	str	r3, [fp, #-8]
8002566c:	e51b3008 	ldr	r3, [fp, #-8]
80025670:	e3530000 	cmp	r3, #0
80025674:	1a000014 	bne	800256cc <growproc+0xb8>
80025678:	e3e03000 	mvn	r3, #0
8002567c:	ea00001b 	b	800256f0 <growproc+0xdc>
80025680:	e51b3010 	ldr	r3, [fp, #-16]
80025684:	e3530000 	cmp	r3, #0
80025688:	aa00000f 	bge	800256cc <growproc+0xb8>
8002568c:	e59f3068 	ldr	r3, [pc, #104]	@ 800256fc <growproc+0xe8>
80025690:	e5933000 	ldr	r3, [r3]
80025694:	e5930004 	ldr	r0, [r3, #4]
80025698:	e51b2010 	ldr	r2, [fp, #-16]
8002569c:	e51b3008 	ldr	r3, [fp, #-8]
800256a0:	e0823003 	add	r3, r2, r3
800256a4:	e1a02003 	mov	r2, r3
800256a8:	e51b1008 	ldr	r1, [fp, #-8]
800256ac:	eb000e7d 	bl	800290a8 <deallocuvm>
800256b0:	e1a03000 	mov	r3, r0
800256b4:	e50b3008 	str	r3, [fp, #-8]
800256b8:	e51b3008 	ldr	r3, [fp, #-8]
800256bc:	e3530000 	cmp	r3, #0
800256c0:	1a000001 	bne	800256cc <growproc+0xb8>
800256c4:	e3e03000 	mvn	r3, #0
800256c8:	ea000008 	b	800256f0 <growproc+0xdc>
800256cc:	e59f3028 	ldr	r3, [pc, #40]	@ 800256fc <growproc+0xe8>
800256d0:	e5933000 	ldr	r3, [r3]
800256d4:	e51b2008 	ldr	r2, [fp, #-8]
800256d8:	e5832000 	str	r2, [r3]
800256dc:	e59f3018 	ldr	r3, [pc, #24]	@ 800256fc <growproc+0xe8>
800256e0:	e5933000 	ldr	r3, [r3]
800256e4:	e1a00003 	mov	r0, r3
800256e8:	eb000daa 	bl	80028d98 <switchuvm>
800256ec:	e3a03000 	mov	r3, #0
800256f0:	e1a00003 	mov	r0, r3
800256f4:	e24bd004 	sub	sp, fp, #4
800256f8:	e8bd8800 	pop	{fp, pc}
800256fc:	800b0be0 	.word	0x800b0be0

80025700 <fork>:
80025700:	e92d4800 	push	{fp, lr}
80025704:	e28db004 	add	fp, sp, #4
80025708:	e24dd010 	sub	sp, sp, #16
8002570c:	ebfffe15 	bl	80024f68 <allocproc>
80025710:	e50b000c 	str	r0, [fp, #-12]
80025714:	e51b300c 	ldr	r3, [fp, #-12]
80025718:	e3530000 	cmp	r3, #0
8002571c:	1a000001 	bne	80025728 <fork+0x28>
80025720:	e3e03000 	mvn	r3, #0
80025724:	ea000073 	b	800258f8 <fork+0x1f8>
80025728:	e59f31d4 	ldr	r3, [pc, #468]	@ 80025904 <fork+0x204>
8002572c:	e5933000 	ldr	r3, [r3]
80025730:	e5932004 	ldr	r2, [r3, #4]
80025734:	e59f31c8 	ldr	r3, [pc, #456]	@ 80025904 <fork+0x204>
80025738:	e5933000 	ldr	r3, [r3]
8002573c:	e5933000 	ldr	r3, [r3]
80025740:	e1a01003 	mov	r1, r3
80025744:	e1a00002 	mov	r0, r2
80025748:	eb000ee5 	bl	800292e4 <copyuvm>
8002574c:	e1a02000 	mov	r2, r0
80025750:	e51b300c 	ldr	r3, [fp, #-12]
80025754:	e5832004 	str	r2, [r3, #4]
80025758:	e51b300c 	ldr	r3, [fp, #-12]
8002575c:	e5933004 	ldr	r3, [r3, #4]
80025760:	e3530000 	cmp	r3, #0
80025764:	1a00000b 	bne	80025798 <fork+0x98>
80025768:	e51b300c 	ldr	r3, [fp, #-12]
8002576c:	e5933008 	ldr	r3, [r3, #8]
80025770:	e1a00003 	mov	r0, r3
80025774:	ebffeff3 	bl	80021748 <free_page>
80025778:	e51b300c 	ldr	r3, [fp, #-12]
8002577c:	e3a02000 	mov	r2, #0
80025780:	e5832008 	str	r2, [r3, #8]
80025784:	e51b300c 	ldr	r3, [fp, #-12]
80025788:	e3a02000 	mov	r2, #0
8002578c:	e5c32010 	strb	r2, [r3, #16]
80025790:	e3e03000 	mvn	r3, #0
80025794:	ea000057 	b	800258f8 <fork+0x1f8>
80025798:	e59f3164 	ldr	r3, [pc, #356]	@ 80025904 <fork+0x204>
8002579c:	e5933000 	ldr	r3, [r3]
800257a0:	e5932000 	ldr	r2, [r3]
800257a4:	e51b300c 	ldr	r3, [fp, #-12]
800257a8:	e5832000 	str	r2, [r3]
800257ac:	e59f3150 	ldr	r3, [pc, #336]	@ 80025904 <fork+0x204>
800257b0:	e5932000 	ldr	r2, [r3]
800257b4:	e51b300c 	ldr	r3, [fp, #-12]
800257b8:	e5832018 	str	r2, [r3, #24]
800257bc:	e59f3140 	ldr	r3, [pc, #320]	@ 80025904 <fork+0x204>
800257c0:	e5933000 	ldr	r3, [r3]
800257c4:	e593201c 	ldr	r2, [r3, #28]
800257c8:	e51b300c 	ldr	r3, [fp, #-12]
800257cc:	e593301c 	ldr	r3, [r3, #28]
800257d0:	e1a00003 	mov	r0, r3
800257d4:	e1a01002 	mov	r1, r2
800257d8:	e3a03048 	mov	r3, #72	@ 0x48
800257dc:	e1a02003 	mov	r2, r3
800257e0:	ebffeab7 	bl	800202c4 <memcpy>
800257e4:	e59f3118 	ldr	r3, [pc, #280]	@ 80025904 <fork+0x204>
800257e8:	e5933000 	ldr	r3, [r3]
800257ec:	e5932080 	ldr	r2, [r3, #128]	@ 0x80
800257f0:	e51b300c 	ldr	r3, [fp, #-12]
800257f4:	e5832080 	str	r2, [r3, #128]	@ 0x80
800257f8:	e51b300c 	ldr	r3, [fp, #-12]
800257fc:	e3a02000 	mov	r2, #0
80025800:	e5832088 	str	r2, [r3, #136]	@ 0x88
80025804:	e51b300c 	ldr	r3, [fp, #-12]
80025808:	e593301c 	ldr	r3, [r3, #28]
8002580c:	e3a02000 	mov	r2, #0
80025810:	e5832010 	str	r2, [r3, #16]
80025814:	e3a03000 	mov	r3, #0
80025818:	e50b3008 	str	r3, [fp, #-8]
8002581c:	ea00001b 	b	80025890 <fork+0x190>
80025820:	e59f30dc 	ldr	r3, [pc, #220]	@ 80025904 <fork+0x204>
80025824:	e5932000 	ldr	r2, [r3]
80025828:	e51b3008 	ldr	r3, [fp, #-8]
8002582c:	e283300a 	add	r3, r3, #10
80025830:	e1a03103 	lsl	r3, r3, #2
80025834:	e0823003 	add	r3, r2, r3
80025838:	e5933004 	ldr	r3, [r3, #4]
8002583c:	e3530000 	cmp	r3, #0
80025840:	0a00000f 	beq	80025884 <fork+0x184>
80025844:	e59f30b8 	ldr	r3, [pc, #184]	@ 80025904 <fork+0x204>
80025848:	e5932000 	ldr	r2, [r3]
8002584c:	e51b3008 	ldr	r3, [fp, #-8]
80025850:	e283300a 	add	r3, r3, #10
80025854:	e1a03103 	lsl	r3, r3, #2
80025858:	e0823003 	add	r3, r2, r3
8002585c:	e5933004 	ldr	r3, [r3, #4]
80025860:	e1a00003 	mov	r0, r3
80025864:	ebfff3a8 	bl	8002270c <filedup>
80025868:	e1a01000 	mov	r1, r0
8002586c:	e51b200c 	ldr	r2, [fp, #-12]
80025870:	e51b3008 	ldr	r3, [fp, #-8]
80025874:	e283300a 	add	r3, r3, #10
80025878:	e1a03103 	lsl	r3, r3, #2
8002587c:	e0823003 	add	r3, r2, r3
80025880:	e5831004 	str	r1, [r3, #4]
80025884:	e51b3008 	ldr	r3, [fp, #-8]
80025888:	e2833001 	add	r3, r3, #1
8002588c:	e50b3008 	str	r3, [fp, #-8]
80025890:	e51b3008 	ldr	r3, [fp, #-8]
80025894:	e353000f 	cmp	r3, #15
80025898:	daffffe0 	ble	80025820 <fork+0x120>
8002589c:	e59f3060 	ldr	r3, [pc, #96]	@ 80025904 <fork+0x204>
800258a0:	e5933000 	ldr	r3, [r3]
800258a4:	e593306c 	ldr	r3, [r3, #108]	@ 0x6c
800258a8:	e1a00003 	mov	r0, r3
800258ac:	ebfff668 	bl	80023254 <idup>
800258b0:	e1a02000 	mov	r2, r0
800258b4:	e51b300c 	ldr	r3, [fp, #-12]
800258b8:	e583206c 	str	r2, [r3, #108]	@ 0x6c
800258bc:	e51b300c 	ldr	r3, [fp, #-12]
800258c0:	e5933014 	ldr	r3, [r3, #20]
800258c4:	e50b3010 	str	r3, [fp, #-16]
800258c8:	e51b300c 	ldr	r3, [fp, #-12]
800258cc:	e3a02003 	mov	r2, #3
800258d0:	e5c32010 	strb	r2, [r3, #16]
800258d4:	e51b300c 	ldr	r3, [fp, #-12]
800258d8:	e2830070 	add	r0, r3, #112	@ 0x70
800258dc:	e59f3020 	ldr	r3, [pc, #32]	@ 80025904 <fork+0x204>
800258e0:	e5933000 	ldr	r3, [r3]
800258e4:	e2833070 	add	r3, r3, #112	@ 0x70
800258e8:	e3a02010 	mov	r2, #16
800258ec:	e1a01003 	mov	r1, r3
800258f0:	ebffead6 	bl	80020450 <safestrcpy>
800258f4:	e51b3010 	ldr	r3, [fp, #-16]
800258f8:	e1a00003 	mov	r0, r3
800258fc:	e24bd004 	sub	sp, fp, #4
80025900:	e8bd8800 	pop	{fp, pc}
80025904:	800b0be0 	.word	0x800b0be0

80025908 <exit>:
80025908:	e92d4800 	push	{fp, lr}
8002590c:	e28db004 	add	fp, sp, #4
80025910:	e24dd008 	sub	sp, sp, #8
80025914:	e59f3170 	ldr	r3, [pc, #368]	@ 80025a8c <exit+0x184>
80025918:	e5932000 	ldr	r2, [r3]
8002591c:	e59f316c 	ldr	r3, [pc, #364]	@ 80025a90 <exit+0x188>
80025920:	e5933000 	ldr	r3, [r3]
80025924:	e1520003 	cmp	r2, r3
80025928:	1a000001 	bne	80025934 <exit+0x2c>
8002592c:	e59f0160 	ldr	r0, [pc, #352]	@ 80025a94 <exit+0x18c>
80025930:	ebfff0bf 	bl	80021c34 <panic>
80025934:	e3a03000 	mov	r3, #0
80025938:	e50b300c 	str	r3, [fp, #-12]
8002593c:	ea00001c 	b	800259b4 <exit+0xac>
80025940:	e59f3144 	ldr	r3, [pc, #324]	@ 80025a8c <exit+0x184>
80025944:	e5932000 	ldr	r2, [r3]
80025948:	e51b300c 	ldr	r3, [fp, #-12]
8002594c:	e283300a 	add	r3, r3, #10
80025950:	e1a03103 	lsl	r3, r3, #2
80025954:	e0823003 	add	r3, r2, r3
80025958:	e5933004 	ldr	r3, [r3, #4]
8002595c:	e3530000 	cmp	r3, #0
80025960:	0a000010 	beq	800259a8 <exit+0xa0>
80025964:	e59f3120 	ldr	r3, [pc, #288]	@ 80025a8c <exit+0x184>
80025968:	e5932000 	ldr	r2, [r3]
8002596c:	e51b300c 	ldr	r3, [fp, #-12]
80025970:	e283300a 	add	r3, r3, #10
80025974:	e1a03103 	lsl	r3, r3, #2
80025978:	e0823003 	add	r3, r2, r3
8002597c:	e5933004 	ldr	r3, [r3, #4]
80025980:	e1a00003 	mov	r0, r3
80025984:	ebfff379 	bl	80022770 <fileclose>
80025988:	e59f30fc 	ldr	r3, [pc, #252]	@ 80025a8c <exit+0x184>
8002598c:	e5932000 	ldr	r2, [r3]
80025990:	e51b300c 	ldr	r3, [fp, #-12]
80025994:	e283300a 	add	r3, r3, #10
80025998:	e1a03103 	lsl	r3, r3, #2
8002599c:	e0823003 	add	r3, r2, r3
800259a0:	e3a02000 	mov	r2, #0
800259a4:	e5832004 	str	r2, [r3, #4]
800259a8:	e51b300c 	ldr	r3, [fp, #-12]
800259ac:	e2833001 	add	r3, r3, #1
800259b0:	e50b300c 	str	r3, [fp, #-12]
800259b4:	e51b300c 	ldr	r3, [fp, #-12]
800259b8:	e353000f 	cmp	r3, #15
800259bc:	daffffdf 	ble	80025940 <exit+0x38>
800259c0:	e59f30c4 	ldr	r3, [pc, #196]	@ 80025a8c <exit+0x184>
800259c4:	e5933000 	ldr	r3, [r3]
800259c8:	e593306c 	ldr	r3, [r3, #108]	@ 0x6c
800259cc:	e1a00003 	mov	r0, r3
800259d0:	ebfff6b7 	bl	800234b4 <iput>
800259d4:	e59f30b0 	ldr	r3, [pc, #176]	@ 80025a8c <exit+0x184>
800259d8:	e5933000 	ldr	r3, [r3]
800259dc:	e3a02000 	mov	r2, #0
800259e0:	e583206c 	str	r2, [r3, #108]	@ 0x6c
800259e4:	e59f00ac 	ldr	r0, [pc, #172]	@ 80025a98 <exit+0x190>
800259e8:	eb000360 	bl	80026770 <acquire>
800259ec:	e59f3098 	ldr	r3, [pc, #152]	@ 80025a8c <exit+0x184>
800259f0:	e5933000 	ldr	r3, [r3]
800259f4:	e5933018 	ldr	r3, [r3, #24]
800259f8:	e1a00003 	mov	r0, r3
800259fc:	eb0001e7 	bl	800261a0 <wakeup1>
80025a00:	e59f3094 	ldr	r3, [pc, #148]	@ 80025a9c <exit+0x194>
80025a04:	e50b3008 	str	r3, [fp, #-8]
80025a08:	ea000014 	b	80025a60 <exit+0x158>
80025a0c:	e51b3008 	ldr	r3, [fp, #-8]
80025a10:	e5932018 	ldr	r2, [r3, #24]
80025a14:	e59f3070 	ldr	r3, [pc, #112]	@ 80025a8c <exit+0x184>
80025a18:	e5933000 	ldr	r3, [r3]
80025a1c:	e1520003 	cmp	r2, r3
80025a20:	1a00000b 	bne	80025a54 <exit+0x14c>
80025a24:	e59f3064 	ldr	r3, [pc, #100]	@ 80025a90 <exit+0x188>
80025a28:	e5932000 	ldr	r2, [r3]
80025a2c:	e51b3008 	ldr	r3, [fp, #-8]
80025a30:	e5832018 	str	r2, [r3, #24]
80025a34:	e51b3008 	ldr	r3, [fp, #-8]
80025a38:	e5d33010 	ldrb	r3, [r3, #16]
80025a3c:	e3530005 	cmp	r3, #5
80025a40:	1a000003 	bne	80025a54 <exit+0x14c>
80025a44:	e59f3044 	ldr	r3, [pc, #68]	@ 80025a90 <exit+0x188>
80025a48:	e5933000 	ldr	r3, [r3]
80025a4c:	e1a00003 	mov	r0, r3
80025a50:	eb0001d2 	bl	800261a0 <wakeup1>
80025a54:	e51b3008 	ldr	r3, [fp, #-8]
80025a58:	e2833094 	add	r3, r3, #148	@ 0x94
80025a5c:	e50b3008 	str	r3, [fp, #-8]
80025a60:	e51b3008 	ldr	r3, [fp, #-8]
80025a64:	e59f2034 	ldr	r2, [pc, #52]	@ 80025aa0 <exit+0x198>
80025a68:	e1530002 	cmp	r3, r2
80025a6c:	3affffe6 	bcc	80025a0c <exit+0x104>
80025a70:	e59f3014 	ldr	r3, [pc, #20]	@ 80025a8c <exit+0x184>
80025a74:	e5933000 	ldr	r3, [r3]
80025a78:	e3a02005 	mov	r2, #5
80025a7c:	e5c32010 	strb	r2, [r3, #16]
80025a80:	eb00011c 	bl	80025ef8 <sched>
80025a84:	e59f0018 	ldr	r0, [pc, #24]	@ 80025aa4 <exit+0x19c>
80025a88:	ebfff069 	bl	80021c34 <panic>
80025a8c:	800b0be0 	.word	0x800b0be0
80025a90:	800b0bdc 	.word	0x800b0bdc
80025a94:	8002a1d4 	.word	0x8002a1d4
80025a98:	800ae6a8 	.word	0x800ae6a8
80025a9c:	800ae6dc 	.word	0x800ae6dc
80025aa0:	800b0bdc 	.word	0x800b0bdc
80025aa4:	8002a1e4 	.word	0x8002a1e4

80025aa8 <wait>:
80025aa8:	e92d4800 	push	{fp, lr}
80025aac:	e28db004 	add	fp, sp, #4
80025ab0:	e24dd010 	sub	sp, sp, #16
80025ab4:	e59f013c 	ldr	r0, [pc, #316]	@ 80025bf8 <wait+0x150>
80025ab8:	eb00032c 	bl	80026770 <acquire>
80025abc:	e3a03000 	mov	r3, #0
80025ac0:	e50b300c 	str	r3, [fp, #-12]
80025ac4:	e59f3130 	ldr	r3, [pc, #304]	@ 80025bfc <wait+0x154>
80025ac8:	e50b3008 	str	r3, [fp, #-8]
80025acc:	ea000030 	b	80025b94 <wait+0xec>
80025ad0:	e51b3008 	ldr	r3, [fp, #-8]
80025ad4:	e5932018 	ldr	r2, [r3, #24]
80025ad8:	e59f3120 	ldr	r3, [pc, #288]	@ 80025c00 <wait+0x158>
80025adc:	e5933000 	ldr	r3, [r3]
80025ae0:	e1520003 	cmp	r2, r3
80025ae4:	1a000026 	bne	80025b84 <wait+0xdc>
80025ae8:	e3a03001 	mov	r3, #1
80025aec:	e50b300c 	str	r3, [fp, #-12]
80025af0:	e51b3008 	ldr	r3, [fp, #-8]
80025af4:	e5d33010 	ldrb	r3, [r3, #16]
80025af8:	e3530005 	cmp	r3, #5
80025afc:	1a000021 	bne	80025b88 <wait+0xe0>
80025b00:	e51b3008 	ldr	r3, [fp, #-8]
80025b04:	e5933014 	ldr	r3, [r3, #20]
80025b08:	e50b3010 	str	r3, [fp, #-16]
80025b0c:	e51b3008 	ldr	r3, [fp, #-8]
80025b10:	e5933008 	ldr	r3, [r3, #8]
80025b14:	e1a00003 	mov	r0, r3
80025b18:	ebffef0a 	bl	80021748 <free_page>
80025b1c:	e51b3008 	ldr	r3, [fp, #-8]
80025b20:	e3a02000 	mov	r2, #0
80025b24:	e5832008 	str	r2, [r3, #8]
80025b28:	e51b3008 	ldr	r3, [fp, #-8]
80025b2c:	e5933004 	ldr	r3, [r3, #4]
80025b30:	e1a00003 	mov	r0, r3
80025b34:	eb000da1 	bl	800291c0 <freevm>
80025b38:	e51b3008 	ldr	r3, [fp, #-8]
80025b3c:	e3a02000 	mov	r2, #0
80025b40:	e5c32010 	strb	r2, [r3, #16]
80025b44:	e51b3008 	ldr	r3, [fp, #-8]
80025b48:	e3a02000 	mov	r2, #0
80025b4c:	e5832014 	str	r2, [r3, #20]
80025b50:	e51b3008 	ldr	r3, [fp, #-8]
80025b54:	e3a02000 	mov	r2, #0
80025b58:	e5832018 	str	r2, [r3, #24]
80025b5c:	e51b3008 	ldr	r3, [fp, #-8]
80025b60:	e3a02000 	mov	r2, #0
80025b64:	e5c32070 	strb	r2, [r3, #112]	@ 0x70
80025b68:	e51b3008 	ldr	r3, [fp, #-8]
80025b6c:	e3a02000 	mov	r2, #0
80025b70:	e5832028 	str	r2, [r3, #40]	@ 0x28
80025b74:	e59f007c 	ldr	r0, [pc, #124]	@ 80025bf8 <wait+0x150>
80025b78:	eb000307 	bl	8002679c <release>
80025b7c:	e51b3010 	ldr	r3, [fp, #-16]
80025b80:	ea000019 	b	80025bec <wait+0x144>
80025b84:	e1a00000 	nop			@ (mov r0, r0)
80025b88:	e51b3008 	ldr	r3, [fp, #-8]
80025b8c:	e2833094 	add	r3, r3, #148	@ 0x94
80025b90:	e50b3008 	str	r3, [fp, #-8]
80025b94:	e51b3008 	ldr	r3, [fp, #-8]
80025b98:	e59f2064 	ldr	r2, [pc, #100]	@ 80025c04 <wait+0x15c>
80025b9c:	e1530002 	cmp	r3, r2
80025ba0:	3affffca 	bcc	80025ad0 <wait+0x28>
80025ba4:	e51b300c 	ldr	r3, [fp, #-12]
80025ba8:	e3530000 	cmp	r3, #0
80025bac:	0a000004 	beq	80025bc4 <wait+0x11c>
80025bb0:	e59f3048 	ldr	r3, [pc, #72]	@ 80025c00 <wait+0x158>
80025bb4:	e5933000 	ldr	r3, [r3]
80025bb8:	e5933028 	ldr	r3, [r3, #40]	@ 0x28
80025bbc:	e3530000 	cmp	r3, #0
80025bc0:	0a000003 	beq	80025bd4 <wait+0x12c>
80025bc4:	e59f002c 	ldr	r0, [pc, #44]	@ 80025bf8 <wait+0x150>
80025bc8:	eb0002f3 	bl	8002679c <release>
80025bcc:	e3e03000 	mvn	r3, #0
80025bd0:	ea000005 	b	80025bec <wait+0x144>
80025bd4:	e59f3024 	ldr	r3, [pc, #36]	@ 80025c00 <wait+0x158>
80025bd8:	e5933000 	ldr	r3, [r3]
80025bdc:	e59f1014 	ldr	r1, [pc, #20]	@ 80025bf8 <wait+0x150>
80025be0:	e1a00003 	mov	r0, r3
80025be4:	eb00011b 	bl	80026058 <sleep>
80025be8:	eaffffb3 	b	80025abc <wait+0x14>
80025bec:	e1a00003 	mov	r0, r3
80025bf0:	e24bd004 	sub	sp, fp, #4
80025bf4:	e8bd8800 	pop	{fp, pc}
80025bf8:	800ae6a8 	.word	0x800ae6a8
80025bfc:	800ae6dc 	.word	0x800ae6dc
80025c00:	800b0be0 	.word	0x800b0be0
80025c04:	800b0bdc 	.word	0x800b0bdc

80025c08 <hold_lottery_locked>:
80025c08:	e92d4800 	push	{fp, lr}
80025c0c:	e28db004 	add	fp, sp, #4
80025c10:	e24dd020 	sub	sp, sp, #32
80025c14:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80025c18:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80025c1c:	e3530000 	cmp	r3, #0
80025c20:	ca000003 	bgt	80025c34 <hold_lottery_locked+0x2c>
80025c24:	e59f00d4 	ldr	r0, [pc, #212]	@ 80025d00 <hold_lottery_locked+0xf8>
80025c28:	ebffef69 	bl	800219d4 <cprintf>
80025c2c:	e3a03000 	mov	r3, #0
80025c30:	ea00002f 	b	80025cf4 <hold_lottery_locked+0xec>
80025c34:	ebfffcaf 	bl	80024ef8 <rand>
80025c38:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80025c3c:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80025c40:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025c44:	e1a01002 	mov	r1, r2
80025c48:	e1a00003 	mov	r0, r3
80025c4c:	eb001020 	bl	80029cd4 <__aeabi_uidivmod>
80025c50:	e1a03001 	mov	r3, r1
80025c54:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80025c58:	e3a03000 	mov	r3, #0
80025c5c:	e50b3008 	str	r3, [fp, #-8]
80025c60:	e59f309c 	ldr	r3, [pc, #156]	@ 80025d04 <hold_lottery_locked+0xfc>
80025c64:	e50b300c 	str	r3, [fp, #-12]
80025c68:	ea00001c 	b	80025ce0 <hold_lottery_locked+0xd8>
80025c6c:	e51b300c 	ldr	r3, [fp, #-12]
80025c70:	e5d33010 	ldrb	r3, [r3, #16]
80025c74:	e3530003 	cmp	r3, #3
80025c78:	1a000014 	bne	80025cd0 <hold_lottery_locked+0xc8>
80025c7c:	e51b300c 	ldr	r3, [fp, #-12]
80025c80:	e5933080 	ldr	r3, [r3, #128]	@ 0x80
80025c84:	e1c33fc3 	bic	r3, r3, r3, asr #31
80025c88:	e50b3010 	str	r3, [fp, #-16]
80025c8c:	e51b300c 	ldr	r3, [fp, #-12]
80025c90:	e5933088 	ldr	r3, [r3, #136]	@ 0x88
80025c94:	e3530000 	cmp	r3, #0
80025c98:	da000002 	ble	80025ca8 <hold_lottery_locked+0xa0>
80025c9c:	e51b3010 	ldr	r3, [fp, #-16]
80025ca0:	e1a03083 	lsl	r3, r3, #1
80025ca4:	e50b3010 	str	r3, [fp, #-16]
80025ca8:	e51b2008 	ldr	r2, [fp, #-8]
80025cac:	e51b3010 	ldr	r3, [fp, #-16]
80025cb0:	e0823003 	add	r3, r2, r3
80025cb4:	e50b3008 	str	r3, [fp, #-8]
80025cb8:	e51b3008 	ldr	r3, [fp, #-8]
80025cbc:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80025cc0:	e1520003 	cmp	r2, r3
80025cc4:	2a000002 	bcs	80025cd4 <hold_lottery_locked+0xcc>
80025cc8:	e51b300c 	ldr	r3, [fp, #-12]
80025ccc:	ea000008 	b	80025cf4 <hold_lottery_locked+0xec>
80025cd0:	e1a00000 	nop			@ (mov r0, r0)
80025cd4:	e51b300c 	ldr	r3, [fp, #-12]
80025cd8:	e2833094 	add	r3, r3, #148	@ 0x94
80025cdc:	e50b300c 	str	r3, [fp, #-12]
80025ce0:	e51b300c 	ldr	r3, [fp, #-12]
80025ce4:	e59f201c 	ldr	r2, [pc, #28]	@ 80025d08 <hold_lottery_locked+0x100>
80025ce8:	e1530002 	cmp	r3, r2
80025cec:	3affffde 	bcc	80025c6c <hold_lottery_locked+0x64>
80025cf0:	e3a03000 	mov	r3, #0
80025cf4:	e1a00003 	mov	r0, r3
80025cf8:	e24bd004 	sub	sp, fp, #4
80025cfc:	e8bd8800 	pop	{fp, pc}
80025d00:	8002a1f0 	.word	0x8002a1f0
80025d04:	800ae6dc 	.word	0x800ae6dc
80025d08:	800b0bdc 	.word	0x800b0bdc

80025d0c <scheduler>:
80025d0c:	e92d4800 	push	{fp, lr}
80025d10:	e28db004 	add	fp, sp, #4
80025d14:	e24dd018 	sub	sp, sp, #24
80025d18:	ebffea16 	bl	80020578 <sti>
80025d1c:	e59f01c0 	ldr	r0, [pc, #448]	@ 80025ee4 <scheduler+0x1d8>
80025d20:	eb000292 	bl	80026770 <acquire>
80025d24:	e3a03000 	mov	r3, #0
80025d28:	e50b3008 	str	r3, [fp, #-8]
80025d2c:	e59f31b4 	ldr	r3, [pc, #436]	@ 80025ee8 <scheduler+0x1dc>
80025d30:	e50b300c 	str	r3, [fp, #-12]
80025d34:	ea000017 	b	80025d98 <scheduler+0x8c>
80025d38:	e51b300c 	ldr	r3, [fp, #-12]
80025d3c:	e5d33010 	ldrb	r3, [r3, #16]
80025d40:	e3530003 	cmp	r3, #3
80025d44:	1a00000f 	bne	80025d88 <scheduler+0x7c>
80025d48:	e51b300c 	ldr	r3, [fp, #-12]
80025d4c:	e5933080 	ldr	r3, [r3, #128]	@ 0x80
80025d50:	e1c33fc3 	bic	r3, r3, r3, asr #31
80025d54:	e50b3010 	str	r3, [fp, #-16]
80025d58:	e51b300c 	ldr	r3, [fp, #-12]
80025d5c:	e5933088 	ldr	r3, [r3, #136]	@ 0x88
80025d60:	e3530000 	cmp	r3, #0
80025d64:	da000002 	ble	80025d74 <scheduler+0x68>
80025d68:	e51b3010 	ldr	r3, [fp, #-16]
80025d6c:	e1a03083 	lsl	r3, r3, #1
80025d70:	e50b3010 	str	r3, [fp, #-16]
80025d74:	e51b2008 	ldr	r2, [fp, #-8]
80025d78:	e51b3010 	ldr	r3, [fp, #-16]
80025d7c:	e0823003 	add	r3, r2, r3
80025d80:	e50b3008 	str	r3, [fp, #-8]
80025d84:	ea000000 	b	80025d8c <scheduler+0x80>
80025d88:	e1a00000 	nop			@ (mov r0, r0)
80025d8c:	e51b300c 	ldr	r3, [fp, #-12]
80025d90:	e2833094 	add	r3, r3, #148	@ 0x94
80025d94:	e50b300c 	str	r3, [fp, #-12]
80025d98:	e51b300c 	ldr	r3, [fp, #-12]
80025d9c:	e59f2148 	ldr	r2, [pc, #328]	@ 80025eec <scheduler+0x1e0>
80025da0:	e1530002 	cmp	r3, r2
80025da4:	3affffe3 	bcc	80025d38 <scheduler+0x2c>
80025da8:	e51b3008 	ldr	r3, [fp, #-8]
80025dac:	e3530000 	cmp	r3, #0
80025db0:	da000048 	ble	80025ed8 <scheduler+0x1cc>
80025db4:	e51b0008 	ldr	r0, [fp, #-8]
80025db8:	ebffff92 	bl	80025c08 <hold_lottery_locked>
80025dbc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80025dc0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025dc4:	e3530000 	cmp	r3, #0
80025dc8:	0a000042 	beq	80025ed8 <scheduler+0x1cc>
80025dcc:	e59f211c 	ldr	r2, [pc, #284]	@ 80025ef0 <scheduler+0x1e4>
80025dd0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025dd4:	e5823000 	str	r3, [r2]
80025dd8:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80025ddc:	eb000bed 	bl	80028d98 <switchuvm>
80025de0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025de4:	e3a02004 	mov	r2, #4
80025de8:	e5c32010 	strb	r2, [r3, #16]
80025dec:	e59f3100 	ldr	r3, [pc, #256]	@ 80025ef4 <scheduler+0x1e8>
80025df0:	e5933000 	ldr	r3, [r3]
80025df4:	e2832004 	add	r2, r3, #4
80025df8:	e59f30f0 	ldr	r3, [pc, #240]	@ 80025ef0 <scheduler+0x1e4>
80025dfc:	e5933000 	ldr	r3, [r3]
80025e00:	e5933020 	ldr	r3, [r3, #32]
80025e04:	e1a01003 	mov	r1, r3
80025e08:	e1a00002 	mov	r0, r2
80025e0c:	eb000277 	bl	800267f0 <swtch>
80025e10:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025e14:	e5933084 	ldr	r3, [r3, #132]	@ 0x84
80025e18:	e2832001 	add	r2, r3, #1
80025e1c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025e20:	e5832084 	str	r2, [r3, #132]	@ 0x84
80025e24:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025e28:	e5d33010 	ldrb	r3, [r3, #16]
80025e2c:	e3530003 	cmp	r3, #3
80025e30:	03a03001 	moveq	r3, #1
80025e34:	13a03000 	movne	r3, #0
80025e38:	e6ef3073 	uxtb	r3, r3
80025e3c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80025e40:	e59f30a0 	ldr	r3, [pc, #160]	@ 80025ee8 <scheduler+0x1dc>
80025e44:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80025e48:	ea00000f 	b	80025e8c <scheduler+0x180>
80025e4c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025e50:	e5d33010 	ldrb	r3, [r3, #16]
80025e54:	e3530003 	cmp	r3, #3
80025e58:	1a000008 	bne	80025e80 <scheduler+0x174>
80025e5c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025e60:	e5933088 	ldr	r3, [r3, #136]	@ 0x88
80025e64:	e3530000 	cmp	r3, #0
80025e68:	da000004 	ble	80025e80 <scheduler+0x174>
80025e6c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025e70:	e5933088 	ldr	r3, [r3, #136]	@ 0x88
80025e74:	e2432001 	sub	r2, r3, #1
80025e78:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025e7c:	e5832088 	str	r2, [r3, #136]	@ 0x88
80025e80:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025e84:	e2833094 	add	r3, r3, #148	@ 0x94
80025e88:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80025e8c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025e90:	e59f2054 	ldr	r2, [pc, #84]	@ 80025eec <scheduler+0x1e0>
80025e94:	e1530002 	cmp	r3, r2
80025e98:	3affffeb 	bcc	80025e4c <scheduler+0x140>
80025e9c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80025ea0:	e3530000 	cmp	r3, #0
80025ea4:	1a000008 	bne	80025ecc <scheduler+0x1c0>
80025ea8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025eac:	e5933088 	ldr	r3, [r3, #136]	@ 0x88
80025eb0:	e3530000 	cmp	r3, #0
80025eb4:	da000004 	ble	80025ecc <scheduler+0x1c0>
80025eb8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025ebc:	e5933088 	ldr	r3, [r3, #136]	@ 0x88
80025ec0:	e2432001 	sub	r2, r3, #1
80025ec4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025ec8:	e5832088 	str	r2, [r3, #136]	@ 0x88
80025ecc:	e59f301c 	ldr	r3, [pc, #28]	@ 80025ef0 <scheduler+0x1e4>
80025ed0:	e3a02000 	mov	r2, #0
80025ed4:	e5832000 	str	r2, [r3]
80025ed8:	e59f0004 	ldr	r0, [pc, #4]	@ 80025ee4 <scheduler+0x1d8>
80025edc:	eb00022e 	bl	8002679c <release>
80025ee0:	eaffff8c 	b	80025d18 <scheduler+0xc>
80025ee4:	800ae6a8 	.word	0x800ae6a8
80025ee8:	800ae6dc 	.word	0x800ae6dc
80025eec:	800b0bdc 	.word	0x800b0bdc
80025ef0:	800b0be0 	.word	0x800b0be0
80025ef4:	800ae698 	.word	0x800ae698

80025ef8 <sched>:
80025ef8:	e92d4800 	push	{fp, lr}
80025efc:	e28db004 	add	fp, sp, #4
80025f00:	e24dd008 	sub	sp, sp, #8
80025f04:	e59f00b4 	ldr	r0, [pc, #180]	@ 80025fc0 <sched+0xc8>
80025f08:	eb00022e 	bl	800267c8 <holding>
80025f0c:	e1a03000 	mov	r3, r0
80025f10:	e3530000 	cmp	r3, #0
80025f14:	1a000001 	bne	80025f20 <sched+0x28>
80025f18:	e59f00a4 	ldr	r0, [pc, #164]	@ 80025fc4 <sched+0xcc>
80025f1c:	ebffef44 	bl	80021c34 <panic>
80025f20:	e59f30a0 	ldr	r3, [pc, #160]	@ 80025fc8 <sched+0xd0>
80025f24:	e5933000 	ldr	r3, [r3]
80025f28:	e593300c 	ldr	r3, [r3, #12]
80025f2c:	e3530001 	cmp	r3, #1
80025f30:	0a000001 	beq	80025f3c <sched+0x44>
80025f34:	e59f0090 	ldr	r0, [pc, #144]	@ 80025fcc <sched+0xd4>
80025f38:	ebffef3d 	bl	80021c34 <panic>
80025f3c:	e59f308c 	ldr	r3, [pc, #140]	@ 80025fd0 <sched+0xd8>
80025f40:	e5933000 	ldr	r3, [r3]
80025f44:	e5d33010 	ldrb	r3, [r3, #16]
80025f48:	e3530004 	cmp	r3, #4
80025f4c:	1a000001 	bne	80025f58 <sched+0x60>
80025f50:	e59f007c 	ldr	r0, [pc, #124]	@ 80025fd4 <sched+0xdc>
80025f54:	ebffef36 	bl	80021c34 <panic>
80025f58:	ebffe9a4 	bl	800205f0 <int_enabled>
80025f5c:	e1a03000 	mov	r3, r0
80025f60:	e3530000 	cmp	r3, #0
80025f64:	0a000001 	beq	80025f70 <sched+0x78>
80025f68:	e59f0068 	ldr	r0, [pc, #104]	@ 80025fd8 <sched+0xe0>
80025f6c:	ebffef30 	bl	80021c34 <panic>
80025f70:	e59f3050 	ldr	r3, [pc, #80]	@ 80025fc8 <sched+0xd0>
80025f74:	e5933000 	ldr	r3, [r3]
80025f78:	e5933010 	ldr	r3, [r3, #16]
80025f7c:	e50b3008 	str	r3, [fp, #-8]
80025f80:	e59f3048 	ldr	r3, [pc, #72]	@ 80025fd0 <sched+0xd8>
80025f84:	e5933000 	ldr	r3, [r3]
80025f88:	e2832020 	add	r2, r3, #32
80025f8c:	e59f3034 	ldr	r3, [pc, #52]	@ 80025fc8 <sched+0xd0>
80025f90:	e5933000 	ldr	r3, [r3]
80025f94:	e5933004 	ldr	r3, [r3, #4]
80025f98:	e1a01003 	mov	r1, r3
80025f9c:	e1a00002 	mov	r0, r2
80025fa0:	eb000212 	bl	800267f0 <swtch>
80025fa4:	e59f301c 	ldr	r3, [pc, #28]	@ 80025fc8 <sched+0xd0>
80025fa8:	e5933000 	ldr	r3, [r3]
80025fac:	e51b2008 	ldr	r2, [fp, #-8]
80025fb0:	e5832010 	str	r2, [r3, #16]
80025fb4:	e1a00000 	nop			@ (mov r0, r0)
80025fb8:	e24bd004 	sub	sp, fp, #4
80025fbc:	e8bd8800 	pop	{fp, pc}
80025fc0:	800ae6a8 	.word	0x800ae6a8
80025fc4:	8002a220 	.word	0x8002a220
80025fc8:	800ae698 	.word	0x800ae698
80025fcc:	8002a234 	.word	0x8002a234
80025fd0:	800b0be0 	.word	0x800b0be0
80025fd4:	8002a240 	.word	0x8002a240
80025fd8:	8002a250 	.word	0x8002a250

80025fdc <yield>:
80025fdc:	e92d4800 	push	{fp, lr}
80025fe0:	e28db004 	add	fp, sp, #4
80025fe4:	e59f0024 	ldr	r0, [pc, #36]	@ 80026010 <yield+0x34>
80025fe8:	eb0001e0 	bl	80026770 <acquire>
80025fec:	e59f3020 	ldr	r3, [pc, #32]	@ 80026014 <yield+0x38>
80025ff0:	e5933000 	ldr	r3, [r3]
80025ff4:	e3a02003 	mov	r2, #3
80025ff8:	e5c32010 	strb	r2, [r3, #16]
80025ffc:	ebffffbd 	bl	80025ef8 <sched>
80026000:	e59f0008 	ldr	r0, [pc, #8]	@ 80026010 <yield+0x34>
80026004:	eb0001e4 	bl	8002679c <release>
80026008:	e1a00000 	nop			@ (mov r0, r0)
8002600c:	e8bd8800 	pop	{fp, pc}
80026010:	800ae6a8 	.word	0x800ae6a8
80026014:	800b0be0 	.word	0x800b0be0

80026018 <forkret>:
80026018:	e92d4800 	push	{fp, lr}
8002601c:	e28db004 	add	fp, sp, #4
80026020:	e59f0028 	ldr	r0, [pc, #40]	@ 80026050 <forkret+0x38>
80026024:	eb0001dc 	bl	8002679c <release>
80026028:	e59f3024 	ldr	r3, [pc, #36]	@ 80026054 <forkret+0x3c>
8002602c:	e5933000 	ldr	r3, [r3]
80026030:	e3530000 	cmp	r3, #0
80026034:	0a000003 	beq	80026048 <forkret+0x30>
80026038:	e59f3014 	ldr	r3, [pc, #20]	@ 80026054 <forkret+0x3c>
8002603c:	e3a02000 	mov	r2, #0
80026040:	e5832000 	str	r2, [r3]
80026044:	ebfff881 	bl	80024250 <initlog>
80026048:	e1a00000 	nop			@ (mov r0, r0)
8002604c:	e8bd8800 	pop	{fp, pc}
80026050:	800ae6a8 	.word	0x800ae6a8
80026054:	8002b030 	.word	0x8002b030

80026058 <sleep>:
80026058:	e92d4800 	push	{fp, lr}
8002605c:	e28db004 	add	fp, sp, #4
80026060:	e24dd010 	sub	sp, sp, #16
80026064:	e50b0010 	str	r0, [fp, #-16]
80026068:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
8002606c:	e59f3118 	ldr	r3, [pc, #280]	@ 8002618c <sleep+0x134>
80026070:	e5933000 	ldr	r3, [r3]
80026074:	e3530000 	cmp	r3, #0
80026078:	1a000001 	bne	80026084 <sleep+0x2c>
8002607c:	e59f010c 	ldr	r0, [pc, #268]	@ 80026190 <sleep+0x138>
80026080:	ebffeeeb 	bl	80021c34 <panic>
80026084:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026088:	e3530000 	cmp	r3, #0
8002608c:	1a000001 	bne	80026098 <sleep+0x40>
80026090:	e59f00fc 	ldr	r0, [pc, #252]	@ 80026194 <sleep+0x13c>
80026094:	ebffeee6 	bl	80021c34 <panic>
80026098:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002609c:	e59f20f4 	ldr	r2, [pc, #244]	@ 80026198 <sleep+0x140>
800260a0:	e1530002 	cmp	r3, r2
800260a4:	0a000003 	beq	800260b8 <sleep+0x60>
800260a8:	e59f00e8 	ldr	r0, [pc, #232]	@ 80026198 <sleep+0x140>
800260ac:	eb0001af 	bl	80026770 <acquire>
800260b0:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800260b4:	eb0001b8 	bl	8002679c <release>
800260b8:	e59f30cc 	ldr	r3, [pc, #204]	@ 8002618c <sleep+0x134>
800260bc:	e5933000 	ldr	r3, [r3]
800260c0:	e51b2010 	ldr	r2, [fp, #-16]
800260c4:	e5832024 	str	r2, [r3, #36]	@ 0x24
800260c8:	e59f30bc 	ldr	r3, [pc, #188]	@ 8002618c <sleep+0x134>
800260cc:	e5933000 	ldr	r3, [r3]
800260d0:	e3a02002 	mov	r2, #2
800260d4:	e5c32010 	strb	r2, [r3, #16]
800260d8:	e51b3010 	ldr	r3, [fp, #-16]
800260dc:	e59f20b8 	ldr	r2, [pc, #184]	@ 8002619c <sleep+0x144>
800260e0:	e1530002 	cmp	r3, r2
800260e4:	1a000004 	bne	800260fc <sleep+0xa4>
800260e8:	e59f309c 	ldr	r3, [pc, #156]	@ 8002618c <sleep+0x134>
800260ec:	e5933000 	ldr	r3, [r3]
800260f0:	e59f20a4 	ldr	r2, [pc, #164]	@ 8002619c <sleep+0x144>
800260f4:	e5922000 	ldr	r2, [r2]
800260f8:	e5832090 	str	r2, [r3, #144]	@ 0x90
800260fc:	ebffff7d 	bl	80025ef8 <sched>
80026100:	e51b3010 	ldr	r3, [fp, #-16]
80026104:	e59f2090 	ldr	r2, [pc, #144]	@ 8002619c <sleep+0x144>
80026108:	e1530002 	cmp	r3, r2
8002610c:	1a00000f 	bne	80026150 <sleep+0xf8>
80026110:	e59f3084 	ldr	r3, [pc, #132]	@ 8002619c <sleep+0x144>
80026114:	e5932000 	ldr	r2, [r3]
80026118:	e59f306c 	ldr	r3, [pc, #108]	@ 8002618c <sleep+0x134>
8002611c:	e5933000 	ldr	r3, [r3]
80026120:	e5933090 	ldr	r3, [r3, #144]	@ 0x90
80026124:	e0423003 	sub	r3, r2, r3
80026128:	e50b3008 	str	r3, [fp, #-8]
8002612c:	e59f3058 	ldr	r3, [pc, #88]	@ 8002618c <sleep+0x134>
80026130:	e5933000 	ldr	r3, [r3]
80026134:	e5933088 	ldr	r3, [r3, #136]	@ 0x88
80026138:	e1a02003 	mov	r2, r3
8002613c:	e51b3008 	ldr	r3, [fp, #-8]
80026140:	e0822003 	add	r2, r2, r3
80026144:	e59f3040 	ldr	r3, [pc, #64]	@ 8002618c <sleep+0x134>
80026148:	e5933000 	ldr	r3, [r3]
8002614c:	e5832088 	str	r2, [r3, #136]	@ 0x88
80026150:	e59f3034 	ldr	r3, [pc, #52]	@ 8002618c <sleep+0x134>
80026154:	e5933000 	ldr	r3, [r3]
80026158:	e3a02000 	mov	r2, #0
8002615c:	e5832024 	str	r2, [r3, #36]	@ 0x24
80026160:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026164:	e59f202c 	ldr	r2, [pc, #44]	@ 80026198 <sleep+0x140>
80026168:	e1530002 	cmp	r3, r2
8002616c:	0a000003 	beq	80026180 <sleep+0x128>
80026170:	e59f0020 	ldr	r0, [pc, #32]	@ 80026198 <sleep+0x140>
80026174:	eb000188 	bl	8002679c <release>
80026178:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
8002617c:	eb00017b 	bl	80026770 <acquire>
80026180:	e1a00000 	nop			@ (mov r0, r0)
80026184:	e24bd004 	sub	sp, fp, #4
80026188:	e8bd8800 	pop	{fp, pc}
8002618c:	800b0be0 	.word	0x800b0be0
80026190:	8002a264 	.word	0x8002a264
80026194:	8002a26c 	.word	0x8002a26c
80026198:	800ae6a8 	.word	0x800ae6a8
8002619c:	800b0cd8 	.word	0x800b0cd8

800261a0 <wakeup1>:
800261a0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800261a4:	e28db000 	add	fp, sp, #0
800261a8:	e24dd014 	sub	sp, sp, #20
800261ac:	e50b0010 	str	r0, [fp, #-16]
800261b0:	e59f30a4 	ldr	r3, [pc, #164]	@ 8002625c <wakeup1+0xbc>
800261b4:	e50b3008 	str	r3, [fp, #-8]
800261b8:	ea00001e 	b	80026238 <wakeup1+0x98>
800261bc:	e51b3008 	ldr	r3, [fp, #-8]
800261c0:	e5d33010 	ldrb	r3, [r3, #16]
800261c4:	e3530002 	cmp	r3, #2
800261c8:	1a000016 	bne	80026228 <wakeup1+0x88>
800261cc:	e51b3008 	ldr	r3, [fp, #-8]
800261d0:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
800261d4:	e51b2010 	ldr	r2, [fp, #-16]
800261d8:	e1520003 	cmp	r2, r3
800261dc:	1a000011 	bne	80026228 <wakeup1+0x88>
800261e0:	e51b3010 	ldr	r3, [fp, #-16]
800261e4:	e59f2074 	ldr	r2, [pc, #116]	@ 80026260 <wakeup1+0xc0>
800261e8:	e1530002 	cmp	r3, r2
800261ec:	1a000009 	bne	80026218 <wakeup1+0x78>
800261f0:	e51b3008 	ldr	r3, [fp, #-8]
800261f4:	e593208c 	ldr	r2, [r3, #140]	@ 0x8c
800261f8:	e59f3060 	ldr	r3, [pc, #96]	@ 80026260 <wakeup1+0xc0>
800261fc:	e5933000 	ldr	r3, [r3]
80026200:	e1520003 	cmp	r2, r3
80026204:	8a000008 	bhi	8002622c <wakeup1+0x8c>
80026208:	e51b3008 	ldr	r3, [fp, #-8]
8002620c:	e3a02003 	mov	r2, #3
80026210:	e5c32010 	strb	r2, [r3, #16]
80026214:	ea000004 	b	8002622c <wakeup1+0x8c>
80026218:	e51b3008 	ldr	r3, [fp, #-8]
8002621c:	e3a02003 	mov	r2, #3
80026220:	e5c32010 	strb	r2, [r3, #16]
80026224:	ea000000 	b	8002622c <wakeup1+0x8c>
80026228:	e1a00000 	nop			@ (mov r0, r0)
8002622c:	e51b3008 	ldr	r3, [fp, #-8]
80026230:	e2833094 	add	r3, r3, #148	@ 0x94
80026234:	e50b3008 	str	r3, [fp, #-8]
80026238:	e51b3008 	ldr	r3, [fp, #-8]
8002623c:	e59f2020 	ldr	r2, [pc, #32]	@ 80026264 <wakeup1+0xc4>
80026240:	e1530002 	cmp	r3, r2
80026244:	3affffdc 	bcc	800261bc <wakeup1+0x1c>
80026248:	e1a00000 	nop			@ (mov r0, r0)
8002624c:	e1a00000 	nop			@ (mov r0, r0)
80026250:	e28bd000 	add	sp, fp, #0
80026254:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026258:	e12fff1e 	bx	lr
8002625c:	800ae6dc 	.word	0x800ae6dc
80026260:	800b0cd8 	.word	0x800b0cd8
80026264:	800b0bdc 	.word	0x800b0bdc

80026268 <wakeup>:
80026268:	e92d4800 	push	{fp, lr}
8002626c:	e28db004 	add	fp, sp, #4
80026270:	e24dd008 	sub	sp, sp, #8
80026274:	e50b0008 	str	r0, [fp, #-8]
80026278:	e59f001c 	ldr	r0, [pc, #28]	@ 8002629c <wakeup+0x34>
8002627c:	eb00013b 	bl	80026770 <acquire>
80026280:	e51b0008 	ldr	r0, [fp, #-8]
80026284:	ebffffc5 	bl	800261a0 <wakeup1>
80026288:	e59f000c 	ldr	r0, [pc, #12]	@ 8002629c <wakeup+0x34>
8002628c:	eb000142 	bl	8002679c <release>
80026290:	e1a00000 	nop			@ (mov r0, r0)
80026294:	e24bd004 	sub	sp, fp, #4
80026298:	e8bd8800 	pop	{fp, pc}
8002629c:	800ae6a8 	.word	0x800ae6a8

800262a0 <kill>:
800262a0:	e92d4800 	push	{fp, lr}
800262a4:	e28db004 	add	fp, sp, #4
800262a8:	e24dd010 	sub	sp, sp, #16
800262ac:	e50b0010 	str	r0, [fp, #-16]
800262b0:	e59f008c 	ldr	r0, [pc, #140]	@ 80026344 <kill+0xa4>
800262b4:	eb00012d 	bl	80026770 <acquire>
800262b8:	e59f3088 	ldr	r3, [pc, #136]	@ 80026348 <kill+0xa8>
800262bc:	e50b3008 	str	r3, [fp, #-8]
800262c0:	ea000015 	b	8002631c <kill+0x7c>
800262c4:	e51b3008 	ldr	r3, [fp, #-8]
800262c8:	e5933014 	ldr	r3, [r3, #20]
800262cc:	e51b2010 	ldr	r2, [fp, #-16]
800262d0:	e1520003 	cmp	r2, r3
800262d4:	1a00000d 	bne	80026310 <kill+0x70>
800262d8:	e51b3008 	ldr	r3, [fp, #-8]
800262dc:	e3a02001 	mov	r2, #1
800262e0:	e5832028 	str	r2, [r3, #40]	@ 0x28
800262e4:	e51b3008 	ldr	r3, [fp, #-8]
800262e8:	e5d33010 	ldrb	r3, [r3, #16]
800262ec:	e3530002 	cmp	r3, #2
800262f0:	1a000002 	bne	80026300 <kill+0x60>
800262f4:	e51b3008 	ldr	r3, [fp, #-8]
800262f8:	e3a02003 	mov	r2, #3
800262fc:	e5c32010 	strb	r2, [r3, #16]
80026300:	e59f003c 	ldr	r0, [pc, #60]	@ 80026344 <kill+0xa4>
80026304:	eb000124 	bl	8002679c <release>
80026308:	e3a03000 	mov	r3, #0
8002630c:	ea000009 	b	80026338 <kill+0x98>
80026310:	e51b3008 	ldr	r3, [fp, #-8]
80026314:	e2833094 	add	r3, r3, #148	@ 0x94
80026318:	e50b3008 	str	r3, [fp, #-8]
8002631c:	e51b3008 	ldr	r3, [fp, #-8]
80026320:	e59f2024 	ldr	r2, [pc, #36]	@ 8002634c <kill+0xac>
80026324:	e1530002 	cmp	r3, r2
80026328:	3affffe5 	bcc	800262c4 <kill+0x24>
8002632c:	e59f0010 	ldr	r0, [pc, #16]	@ 80026344 <kill+0xa4>
80026330:	eb000119 	bl	8002679c <release>
80026334:	e3e03000 	mvn	r3, #0
80026338:	e1a00003 	mov	r0, r3
8002633c:	e24bd004 	sub	sp, fp, #4
80026340:	e8bd8800 	pop	{fp, pc}
80026344:	800ae6a8 	.word	0x800ae6a8
80026348:	800ae6dc 	.word	0x800ae6dc
8002634c:	800b0bdc 	.word	0x800b0bdc

80026350 <procdump>:
80026350:	e92d4800 	push	{fp, lr}
80026354:	e28db004 	add	fp, sp, #4
80026358:	e24dd008 	sub	sp, sp, #8
8002635c:	e59f30b8 	ldr	r3, [pc, #184]	@ 8002641c <procdump+0xcc>
80026360:	e50b3008 	str	r3, [fp, #-8]
80026364:	ea000023 	b	800263f8 <procdump+0xa8>
80026368:	e51b3008 	ldr	r3, [fp, #-8]
8002636c:	e5d33010 	ldrb	r3, [r3, #16]
80026370:	e3530000 	cmp	r3, #0
80026374:	0a00001b 	beq	800263e8 <procdump+0x98>
80026378:	e51b3008 	ldr	r3, [fp, #-8]
8002637c:	e5d33010 	ldrb	r3, [r3, #16]
80026380:	e3530005 	cmp	r3, #5
80026384:	8a00000d 	bhi	800263c0 <procdump+0x70>
80026388:	e51b3008 	ldr	r3, [fp, #-8]
8002638c:	e5d33010 	ldrb	r3, [r3, #16]
80026390:	e1a02003 	mov	r2, r3
80026394:	e59f3084 	ldr	r3, [pc, #132]	@ 80026420 <procdump+0xd0>
80026398:	e7933102 	ldr	r3, [r3, r2, lsl #2]
8002639c:	e3530000 	cmp	r3, #0
800263a0:	0a000006 	beq	800263c0 <procdump+0x70>
800263a4:	e51b3008 	ldr	r3, [fp, #-8]
800263a8:	e5d33010 	ldrb	r3, [r3, #16]
800263ac:	e1a02003 	mov	r2, r3
800263b0:	e59f3068 	ldr	r3, [pc, #104]	@ 80026420 <procdump+0xd0>
800263b4:	e7933102 	ldr	r3, [r3, r2, lsl #2]
800263b8:	e50b300c 	str	r3, [fp, #-12]
800263bc:	ea000001 	b	800263c8 <procdump+0x78>
800263c0:	e59f305c 	ldr	r3, [pc, #92]	@ 80026424 <procdump+0xd4>
800263c4:	e50b300c 	str	r3, [fp, #-12]
800263c8:	e51b3008 	ldr	r3, [fp, #-8]
800263cc:	e5931014 	ldr	r1, [r3, #20]
800263d0:	e51b3008 	ldr	r3, [fp, #-8]
800263d4:	e2833070 	add	r3, r3, #112	@ 0x70
800263d8:	e51b200c 	ldr	r2, [fp, #-12]
800263dc:	e59f0044 	ldr	r0, [pc, #68]	@ 80026428 <procdump+0xd8>
800263e0:	ebffed7b 	bl	800219d4 <cprintf>
800263e4:	ea000000 	b	800263ec <procdump+0x9c>
800263e8:	e1a00000 	nop			@ (mov r0, r0)
800263ec:	e51b3008 	ldr	r3, [fp, #-8]
800263f0:	e2833094 	add	r3, r3, #148	@ 0x94
800263f4:	e50b3008 	str	r3, [fp, #-8]
800263f8:	e51b3008 	ldr	r3, [fp, #-8]
800263fc:	e59f2028 	ldr	r2, [pc, #40]	@ 8002642c <procdump+0xdc>
80026400:	e1530002 	cmp	r3, r2
80026404:	3affffd7 	bcc	80026368 <procdump+0x18>
80026408:	e59f0020 	ldr	r0, [pc, #32]	@ 80026430 <procdump+0xe0>
8002640c:	ebffe8fe 	bl	8002080c <show_callstk>
80026410:	e1a00000 	nop			@ (mov r0, r0)
80026414:	e24bd004 	sub	sp, fp, #4
80026418:	e8bd8800 	pop	{fp, pc}
8002641c:	800ae6dc 	.word	0x800ae6dc
80026420:	8002b034 	.word	0x8002b034
80026424:	8002a280 	.word	0x8002a280
80026428:	8002a284 	.word	0x8002a284
8002642c:	800b0bdc 	.word	0x800b0bdc
80026430:	8002a290 	.word	0x8002a290

80026434 <sys_dumppagetable>:
80026434:	e92d4800 	push	{fp, lr}
80026438:	e28db004 	add	fp, sp, #4
8002643c:	e24dd040 	sub	sp, sp, #64	@ 0x40
80026440:	e59f32b4 	ldr	r3, [pc, #692]	@ 800266fc <sys_dumppagetable+0x2c8>
80026444:	e5933000 	ldr	r3, [r3]
80026448:	e50b300c 	str	r3, [fp, #-12]
8002644c:	e51b300c 	ldr	r3, [fp, #-12]
80026450:	e5933004 	ldr	r3, [r3, #4]
80026454:	e50b3010 	str	r3, [fp, #-16]
80026458:	e51b300c 	ldr	r3, [fp, #-12]
8002645c:	e5933000 	ldr	r3, [r3]
80026460:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80026464:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026468:	e2833eff 	add	r3, r3, #4080	@ 0xff0
8002646c:	e283300f 	add	r3, r3, #15
80026470:	e1a03623 	lsr	r3, r3, #12
80026474:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80026478:	e51b300c 	ldr	r3, [fp, #-12]
8002647c:	e5933014 	ldr	r3, [r3, #20]
80026480:	e1a01003 	mov	r1, r3
80026484:	e59f0274 	ldr	r0, [pc, #628]	@ 80026700 <sys_dumppagetable+0x2cc>
80026488:	ebffed51 	bl	800219d4 <cprintf>
8002648c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80026490:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80026494:	e59f0268 	ldr	r0, [pc, #616]	@ 80026704 <sys_dumppagetable+0x2d0>
80026498:	ebffed4d 	bl	800219d4 <cprintf>
8002649c:	e59f0264 	ldr	r0, [pc, #612]	@ 80026708 <sys_dumppagetable+0x2d4>
800264a0:	ebffed4b 	bl	800219d4 <cprintf>
800264a4:	e3a03000 	mov	r3, #0
800264a8:	e50b3008 	str	r3, [fp, #-8]
800264ac:	ea000039 	b	80026598 <sys_dumppagetable+0x164>
800264b0:	e51b3008 	ldr	r3, [fp, #-8]
800264b4:	e1a03603 	lsl	r3, r3, #12
800264b8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800264bc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800264c0:	e3a02000 	mov	r2, #0
800264c4:	e1a01003 	mov	r1, r3
800264c8:	e51b0010 	ldr	r0, [fp, #-16]
800264cc:	eb0009b0 	bl	80028b94 <walkpgdir>
800264d0:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
800264d4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800264d8:	e3530000 	cmp	r3, #0
800264dc:	0a000026 	beq	8002657c <sys_dumppagetable+0x148>
800264e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800264e4:	e5933000 	ldr	r3, [r3]
800264e8:	e2033003 	and	r3, r3, #3
800264ec:	e3530002 	cmp	r3, #2
800264f0:	1a000021 	bne	8002657c <sys_dumppagetable+0x148>
800264f4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800264f8:	e5933000 	ldr	r3, [r3]
800264fc:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80026500:	e3c3300f 	bic	r3, r3, #15
80026504:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80026508:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002650c:	e5933000 	ldr	r3, [r3]
80026510:	e58d3000 	str	r3, [sp]
80026514:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80026518:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
8002651c:	e51b1008 	ldr	r1, [fp, #-8]
80026520:	e59f01e4 	ldr	r0, [pc, #484]	@ 8002670c <sys_dumppagetable+0x2d8>
80026524:	ebffed2a 	bl	800219d4 <cprintf>
80026528:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002652c:	e5933000 	ldr	r3, [r3]
80026530:	e1a03223 	lsr	r3, r3, #4
80026534:	e2033003 	and	r3, r3, #3
80026538:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
8002653c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80026540:	e3530003 	cmp	r3, #3
80026544:	0a000002 	beq	80026554 <sys_dumppagetable+0x120>
80026548:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002654c:	e3530002 	cmp	r3, #2
80026550:	1a000001 	bne	8002655c <sys_dumppagetable+0x128>
80026554:	e59f01b4 	ldr	r0, [pc, #436]	@ 80026710 <sys_dumppagetable+0x2dc>
80026558:	ebffed1d 	bl	800219d4 <cprintf>
8002655c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80026560:	e3530003 	cmp	r3, #3
80026564:	1a000001 	bne	80026570 <sys_dumppagetable+0x13c>
80026568:	e59f01a4 	ldr	r0, [pc, #420]	@ 80026714 <sys_dumppagetable+0x2e0>
8002656c:	ebffed18 	bl	800219d4 <cprintf>
80026570:	e59f01a0 	ldr	r0, [pc, #416]	@ 80026718 <sys_dumppagetable+0x2e4>
80026574:	ebffed16 	bl	800219d4 <cprintf>
80026578:	ea000003 	b	8002658c <sys_dumppagetable+0x158>
8002657c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80026580:	e51b1008 	ldr	r1, [fp, #-8]
80026584:	e59f0190 	ldr	r0, [pc, #400]	@ 8002671c <sys_dumppagetable+0x2e8>
80026588:	ebffed11 	bl	800219d4 <cprintf>
8002658c:	e51b3008 	ldr	r3, [fp, #-8]
80026590:	e2833001 	add	r3, r3, #1
80026594:	e50b3008 	str	r3, [fp, #-8]
80026598:	e51b2008 	ldr	r2, [fp, #-8]
8002659c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800265a0:	e1520003 	cmp	r2, r3
800265a4:	2a000002 	bcs	800265b4 <sys_dumppagetable+0x180>
800265a8:	e51b3008 	ldr	r3, [fp, #-8]
800265ac:	e3530009 	cmp	r3, #9
800265b0:	9affffbe 	bls	800264b0 <sys_dumppagetable+0x7c>
800265b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800265b8:	e353000a 	cmp	r3, #10
800265bc:	9a000048 	bls	800266e4 <sys_dumppagetable+0x2b0>
800265c0:	e59f0158 	ldr	r0, [pc, #344]	@ 80026720 <sys_dumppagetable+0x2ec>
800265c4:	ebffed02 	bl	800219d4 <cprintf>
800265c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800265cc:	e3530014 	cmp	r3, #20
800265d0:	21a03003 	movcs	r3, r3
800265d4:	33a03014 	movcc	r3, #20
800265d8:	e243300a 	sub	r3, r3, #10
800265dc:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
800265e0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800265e4:	e50b3008 	str	r3, [fp, #-8]
800265e8:	ea000039 	b	800266d4 <sys_dumppagetable+0x2a0>
800265ec:	e51b3008 	ldr	r3, [fp, #-8]
800265f0:	e1a03603 	lsl	r3, r3, #12
800265f4:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
800265f8:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
800265fc:	e3a02000 	mov	r2, #0
80026600:	e1a01003 	mov	r1, r3
80026604:	e51b0010 	ldr	r0, [fp, #-16]
80026608:	eb000961 	bl	80028b94 <walkpgdir>
8002660c:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80026610:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80026614:	e3530000 	cmp	r3, #0
80026618:	0a000026 	beq	800266b8 <sys_dumppagetable+0x284>
8002661c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80026620:	e5933000 	ldr	r3, [r3]
80026624:	e2033003 	and	r3, r3, #3
80026628:	e3530002 	cmp	r3, #2
8002662c:	1a000021 	bne	800266b8 <sys_dumppagetable+0x284>
80026630:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80026634:	e5933000 	ldr	r3, [r3]
80026638:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
8002663c:	e3c3300f 	bic	r3, r3, #15
80026640:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
80026644:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80026648:	e5933000 	ldr	r3, [r3]
8002664c:	e58d3000 	str	r3, [sp]
80026650:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
80026654:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
80026658:	e51b1008 	ldr	r1, [fp, #-8]
8002665c:	e59f00a8 	ldr	r0, [pc, #168]	@ 8002670c <sys_dumppagetable+0x2d8>
80026660:	ebffecdb 	bl	800219d4 <cprintf>
80026664:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80026668:	e5933000 	ldr	r3, [r3]
8002666c:	e1a03223 	lsr	r3, r3, #4
80026670:	e2033003 	and	r3, r3, #3
80026674:	e50b3038 	str	r3, [fp, #-56]	@ 0xffffffc8
80026678:	e51b3038 	ldr	r3, [fp, #-56]	@ 0xffffffc8
8002667c:	e3530003 	cmp	r3, #3
80026680:	0a000002 	beq	80026690 <sys_dumppagetable+0x25c>
80026684:	e51b3038 	ldr	r3, [fp, #-56]	@ 0xffffffc8
80026688:	e3530002 	cmp	r3, #2
8002668c:	1a000001 	bne	80026698 <sys_dumppagetable+0x264>
80026690:	e59f0078 	ldr	r0, [pc, #120]	@ 80026710 <sys_dumppagetable+0x2dc>
80026694:	ebffecce 	bl	800219d4 <cprintf>
80026698:	e51b3038 	ldr	r3, [fp, #-56]	@ 0xffffffc8
8002669c:	e3530003 	cmp	r3, #3
800266a0:	1a000001 	bne	800266ac <sys_dumppagetable+0x278>
800266a4:	e59f0068 	ldr	r0, [pc, #104]	@ 80026714 <sys_dumppagetable+0x2e0>
800266a8:	ebffecc9 	bl	800219d4 <cprintf>
800266ac:	e59f0064 	ldr	r0, [pc, #100]	@ 80026718 <sys_dumppagetable+0x2e4>
800266b0:	ebffecc7 	bl	800219d4 <cprintf>
800266b4:	ea000003 	b	800266c8 <sys_dumppagetable+0x294>
800266b8:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
800266bc:	e51b1008 	ldr	r1, [fp, #-8]
800266c0:	e59f0054 	ldr	r0, [pc, #84]	@ 8002671c <sys_dumppagetable+0x2e8>
800266c4:	ebffecc2 	bl	800219d4 <cprintf>
800266c8:	e51b3008 	ldr	r3, [fp, #-8]
800266cc:	e2833001 	add	r3, r3, #1
800266d0:	e50b3008 	str	r3, [fp, #-8]
800266d4:	e51b2008 	ldr	r2, [fp, #-8]
800266d8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800266dc:	e1520003 	cmp	r2, r3
800266e0:	3affffc1 	bcc	800265ec <sys_dumppagetable+0x1b8>
800266e4:	e59f0038 	ldr	r0, [pc, #56]	@ 80026724 <sys_dumppagetable+0x2f0>
800266e8:	ebffecb9 	bl	800219d4 <cprintf>
800266ec:	e3a03000 	mov	r3, #0
800266f0:	e1a00003 	mov	r0, r3
800266f4:	e24bd004 	sub	sp, fp, #4
800266f8:	e8bd8800 	pop	{fp, pc}
800266fc:	800b0be0 	.word	0x800b0be0
80026700:	8002a29c 	.word	0x8002a29c
80026704:	8002a2c0 	.word	0x8002a2c0
80026708:	8002a2f0 	.word	0x8002a2f0
8002670c:	8002a30c 	.word	0x8002a30c
80026710:	8002a33c 	.word	0x8002a33c
80026714:	8002a340 	.word	0x8002a340
80026718:	8002a344 	.word	0x8002a344
8002671c:	8002a348 	.word	0x8002a348
80026720:	8002a368 	.word	0x8002a368
80026724:	8002a380 	.word	0x8002a380

80026728 <initlock>:
80026728:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002672c:	e28db000 	add	fp, sp, #0
80026730:	e24dd00c 	sub	sp, sp, #12
80026734:	e50b0008 	str	r0, [fp, #-8]
80026738:	e50b100c 	str	r1, [fp, #-12]
8002673c:	e51b3008 	ldr	r3, [fp, #-8]
80026740:	e51b200c 	ldr	r2, [fp, #-12]
80026744:	e5832004 	str	r2, [r3, #4]
80026748:	e51b3008 	ldr	r3, [fp, #-8]
8002674c:	e3a02000 	mov	r2, #0
80026750:	e5832000 	str	r2, [r3]
80026754:	e51b3008 	ldr	r3, [fp, #-8]
80026758:	e3a02000 	mov	r2, #0
8002675c:	e5832008 	str	r2, [r3, #8]
80026760:	e1a00000 	nop			@ (mov r0, r0)
80026764:	e28bd000 	add	sp, fp, #0
80026768:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002676c:	e12fff1e 	bx	lr

80026770 <acquire>:
80026770:	e92d4800 	push	{fp, lr}
80026774:	e28db004 	add	fp, sp, #4
80026778:	e24dd008 	sub	sp, sp, #8
8002677c:	e50b0008 	str	r0, [fp, #-8]
80026780:	ebffe7a9 	bl	8002062c <pushcli>
80026784:	e51b3008 	ldr	r3, [fp, #-8]
80026788:	e3a02001 	mov	r2, #1
8002678c:	e5832000 	str	r2, [r3]
80026790:	e1a00000 	nop			@ (mov r0, r0)
80026794:	e24bd004 	sub	sp, fp, #4
80026798:	e8bd8800 	pop	{fp, pc}

8002679c <release>:
8002679c:	e92d4800 	push	{fp, lr}
800267a0:	e28db004 	add	fp, sp, #4
800267a4:	e24dd008 	sub	sp, sp, #8
800267a8:	e50b0008 	str	r0, [fp, #-8]
800267ac:	e51b3008 	ldr	r3, [fp, #-8]
800267b0:	e3a02000 	mov	r2, #0
800267b4:	e5832000 	str	r2, [r3]
800267b8:	ebffe7b0 	bl	80020680 <popcli>
800267bc:	e1a00000 	nop			@ (mov r0, r0)
800267c0:	e24bd004 	sub	sp, fp, #4
800267c4:	e8bd8800 	pop	{fp, pc}

800267c8 <holding>:
800267c8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800267cc:	e28db000 	add	fp, sp, #0
800267d0:	e24dd00c 	sub	sp, sp, #12
800267d4:	e50b0008 	str	r0, [fp, #-8]
800267d8:	e51b3008 	ldr	r3, [fp, #-8]
800267dc:	e5933000 	ldr	r3, [r3]
800267e0:	e1a00003 	mov	r0, r3
800267e4:	e28bd000 	add	sp, fp, #0
800267e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800267ec:	e12fff1e 	bx	lr

800267f0 <swtch>:
800267f0:	e92d5ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
800267f4:	e580d000 	str	sp, [r0]
800267f8:	e1a0d001 	mov	sp, r1
800267fc:	e8bd5ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80026800:	e12fff1e 	bx	lr

80026804 <fetchint>:
80026804:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80026808:	e28db000 	add	fp, sp, #0
8002680c:	e24dd00c 	sub	sp, sp, #12
80026810:	e50b0008 	str	r0, [fp, #-8]
80026814:	e50b100c 	str	r1, [fp, #-12]
80026818:	e59f3058 	ldr	r3, [pc, #88]	@ 80026878 <fetchint+0x74>
8002681c:	e5933000 	ldr	r3, [r3]
80026820:	e5933000 	ldr	r3, [r3]
80026824:	e51b2008 	ldr	r2, [fp, #-8]
80026828:	e1520003 	cmp	r2, r3
8002682c:	2a000006 	bcs	8002684c <fetchint+0x48>
80026830:	e51b3008 	ldr	r3, [fp, #-8]
80026834:	e2832004 	add	r2, r3, #4
80026838:	e59f3038 	ldr	r3, [pc, #56]	@ 80026878 <fetchint+0x74>
8002683c:	e5933000 	ldr	r3, [r3]
80026840:	e5933000 	ldr	r3, [r3]
80026844:	e1520003 	cmp	r2, r3
80026848:	9a000001 	bls	80026854 <fetchint+0x50>
8002684c:	e3e03000 	mvn	r3, #0
80026850:	ea000004 	b	80026868 <fetchint+0x64>
80026854:	e51b3008 	ldr	r3, [fp, #-8]
80026858:	e5932000 	ldr	r2, [r3]
8002685c:	e51b300c 	ldr	r3, [fp, #-12]
80026860:	e5832000 	str	r2, [r3]
80026864:	e3a03000 	mov	r3, #0
80026868:	e1a00003 	mov	r0, r3
8002686c:	e28bd000 	add	sp, fp, #0
80026870:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026874:	e12fff1e 	bx	lr
80026878:	800b0be0 	.word	0x800b0be0

8002687c <fetchstr>:
8002687c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80026880:	e28db000 	add	fp, sp, #0
80026884:	e24dd014 	sub	sp, sp, #20
80026888:	e50b0010 	str	r0, [fp, #-16]
8002688c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026890:	e59f3098 	ldr	r3, [pc, #152]	@ 80026930 <fetchstr+0xb4>
80026894:	e5933000 	ldr	r3, [r3]
80026898:	e5933000 	ldr	r3, [r3]
8002689c:	e51b2010 	ldr	r2, [fp, #-16]
800268a0:	e1520003 	cmp	r2, r3
800268a4:	3a000001 	bcc	800268b0 <fetchstr+0x34>
800268a8:	e3e03000 	mvn	r3, #0
800268ac:	ea00001b 	b	80026920 <fetchstr+0xa4>
800268b0:	e51b2010 	ldr	r2, [fp, #-16]
800268b4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800268b8:	e5832000 	str	r2, [r3]
800268bc:	e59f306c 	ldr	r3, [pc, #108]	@ 80026930 <fetchstr+0xb4>
800268c0:	e5933000 	ldr	r3, [r3]
800268c4:	e5933000 	ldr	r3, [r3]
800268c8:	e50b300c 	str	r3, [fp, #-12]
800268cc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800268d0:	e5933000 	ldr	r3, [r3]
800268d4:	e50b3008 	str	r3, [fp, #-8]
800268d8:	ea00000b 	b	8002690c <fetchstr+0x90>
800268dc:	e51b3008 	ldr	r3, [fp, #-8]
800268e0:	e5d33000 	ldrb	r3, [r3]
800268e4:	e3530000 	cmp	r3, #0
800268e8:	1a000004 	bne	80026900 <fetchstr+0x84>
800268ec:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800268f0:	e5933000 	ldr	r3, [r3]
800268f4:	e51b2008 	ldr	r2, [fp, #-8]
800268f8:	e0423003 	sub	r3, r2, r3
800268fc:	ea000007 	b	80026920 <fetchstr+0xa4>
80026900:	e51b3008 	ldr	r3, [fp, #-8]
80026904:	e2833001 	add	r3, r3, #1
80026908:	e50b3008 	str	r3, [fp, #-8]
8002690c:	e51b2008 	ldr	r2, [fp, #-8]
80026910:	e51b300c 	ldr	r3, [fp, #-12]
80026914:	e1520003 	cmp	r2, r3
80026918:	3affffef 	bcc	800268dc <fetchstr+0x60>
8002691c:	e3e03000 	mvn	r3, #0
80026920:	e1a00003 	mov	r0, r3
80026924:	e28bd000 	add	sp, fp, #0
80026928:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002692c:	e12fff1e 	bx	lr
80026930:	800b0be0 	.word	0x800b0be0

80026934 <argint>:
80026934:	e92d4800 	push	{fp, lr}
80026938:	e28db004 	add	fp, sp, #4
8002693c:	e24dd008 	sub	sp, sp, #8
80026940:	e50b0008 	str	r0, [fp, #-8]
80026944:	e50b100c 	str	r1, [fp, #-12]
80026948:	e51b3008 	ldr	r3, [fp, #-8]
8002694c:	e3530003 	cmp	r3, #3
80026950:	da000001 	ble	8002695c <argint+0x28>
80026954:	e59f003c 	ldr	r0, [pc, #60]	@ 80026998 <argint+0x64>
80026958:	ebffecb5 	bl	80021c34 <panic>
8002695c:	e59f3038 	ldr	r3, [pc, #56]	@ 8002699c <argint+0x68>
80026960:	e5933000 	ldr	r3, [r3]
80026964:	e593301c 	ldr	r3, [r3, #28]
80026968:	e2832014 	add	r2, r3, #20
8002696c:	e51b3008 	ldr	r3, [fp, #-8]
80026970:	e1a03103 	lsl	r3, r3, #2
80026974:	e0823003 	add	r3, r2, r3
80026978:	e5933000 	ldr	r3, [r3]
8002697c:	e1a02003 	mov	r2, r3
80026980:	e51b300c 	ldr	r3, [fp, #-12]
80026984:	e5832000 	str	r2, [r3]
80026988:	e3a03000 	mov	r3, #0
8002698c:	e1a00003 	mov	r0, r3
80026990:	e24bd004 	sub	sp, fp, #4
80026994:	e8bd8800 	pop	{fp, pc}
80026998:	8002a3a0 	.word	0x8002a3a0
8002699c:	800b0be0 	.word	0x800b0be0

800269a0 <argptr>:
800269a0:	e92d4800 	push	{fp, lr}
800269a4:	e28db004 	add	fp, sp, #4
800269a8:	e24dd018 	sub	sp, sp, #24
800269ac:	e50b0010 	str	r0, [fp, #-16]
800269b0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800269b4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800269b8:	e24b3008 	sub	r3, fp, #8
800269bc:	e1a01003 	mov	r1, r3
800269c0:	e51b0010 	ldr	r0, [fp, #-16]
800269c4:	ebffffda 	bl	80026934 <argint>
800269c8:	e1a03000 	mov	r3, r0
800269cc:	e3530000 	cmp	r3, #0
800269d0:	aa000001 	bge	800269dc <argptr+0x3c>
800269d4:	e3e03000 	mvn	r3, #0
800269d8:	ea000015 	b	80026a34 <argptr+0x94>
800269dc:	e59f305c 	ldr	r3, [pc, #92]	@ 80026a40 <argptr+0xa0>
800269e0:	e5933000 	ldr	r3, [r3]
800269e4:	e5933000 	ldr	r3, [r3]
800269e8:	e51b2008 	ldr	r2, [fp, #-8]
800269ec:	e1530002 	cmp	r3, r2
800269f0:	9a000008 	bls	80026a18 <argptr+0x78>
800269f4:	e51b3008 	ldr	r3, [fp, #-8]
800269f8:	e1a02003 	mov	r2, r3
800269fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026a00:	e0822003 	add	r2, r2, r3
80026a04:	e59f3034 	ldr	r3, [pc, #52]	@ 80026a40 <argptr+0xa0>
80026a08:	e5933000 	ldr	r3, [r3]
80026a0c:	e5933000 	ldr	r3, [r3]
80026a10:	e1520003 	cmp	r2, r3
80026a14:	9a000001 	bls	80026a20 <argptr+0x80>
80026a18:	e3e03000 	mvn	r3, #0
80026a1c:	ea000004 	b	80026a34 <argptr+0x94>
80026a20:	e51b3008 	ldr	r3, [fp, #-8]
80026a24:	e1a02003 	mov	r2, r3
80026a28:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026a2c:	e5832000 	str	r2, [r3]
80026a30:	e3a03000 	mov	r3, #0
80026a34:	e1a00003 	mov	r0, r3
80026a38:	e24bd004 	sub	sp, fp, #4
80026a3c:	e8bd8800 	pop	{fp, pc}
80026a40:	800b0be0 	.word	0x800b0be0

80026a44 <argaddr>:
80026a44:	e92d4830 	push	{r4, r5, fp, lr}
80026a48:	e28db00c 	add	fp, sp, #12
80026a4c:	e24dd010 	sub	sp, sp, #16
80026a50:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80026a54:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80026a58:	e24b3010 	sub	r3, fp, #16
80026a5c:	e1a01003 	mov	r1, r3
80026a60:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80026a64:	ebffffb2 	bl	80026934 <argint>
80026a68:	e1a03000 	mov	r3, r0
80026a6c:	e3530000 	cmp	r3, #0
80026a70:	aa000001 	bge	80026a7c <argaddr+0x38>
80026a74:	e3e03000 	mvn	r3, #0
80026a78:	ea000006 	b	80026a98 <argaddr+0x54>
80026a7c:	e51b3010 	ldr	r3, [fp, #-16]
80026a80:	e1a02fc3 	asr	r2, r3, #31
80026a84:	e1a04003 	mov	r4, r3
80026a88:	e1a05002 	mov	r5, r2
80026a8c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80026a90:	e1c340f0 	strd	r4, [r3]
80026a94:	e3a03000 	mov	r3, #0
80026a98:	e1a00003 	mov	r0, r3
80026a9c:	e24bd00c 	sub	sp, fp, #12
80026aa0:	e8bd8830 	pop	{r4, r5, fp, pc}

80026aa4 <argstr>:
80026aa4:	e92d4800 	push	{fp, lr}
80026aa8:	e28db004 	add	fp, sp, #4
80026aac:	e24dd010 	sub	sp, sp, #16
80026ab0:	e50b0010 	str	r0, [fp, #-16]
80026ab4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026ab8:	e24b3008 	sub	r3, fp, #8
80026abc:	e1a01003 	mov	r1, r3
80026ac0:	e51b0010 	ldr	r0, [fp, #-16]
80026ac4:	ebffff9a 	bl	80026934 <argint>
80026ac8:	e1a03000 	mov	r3, r0
80026acc:	e3530000 	cmp	r3, #0
80026ad0:	aa000001 	bge	80026adc <argstr+0x38>
80026ad4:	e3e03000 	mvn	r3, #0
80026ad8:	ea000004 	b	80026af0 <argstr+0x4c>
80026adc:	e51b3008 	ldr	r3, [fp, #-8]
80026ae0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80026ae4:	e1a00003 	mov	r0, r3
80026ae8:	ebffff63 	bl	8002687c <fetchstr>
80026aec:	e1a03000 	mov	r3, r0
80026af0:	e1a00003 	mov	r0, r3
80026af4:	e24bd004 	sub	sp, fp, #4
80026af8:	e8bd8800 	pop	{fp, pc}

80026afc <syscall>:
80026afc:	e92d4800 	push	{fp, lr}
80026b00:	e28db004 	add	fp, sp, #4
80026b04:	e24dd008 	sub	sp, sp, #8
80026b08:	e59f30cc 	ldr	r3, [pc, #204]	@ 80026bdc <syscall+0xe0>
80026b0c:	e5933000 	ldr	r3, [r3]
80026b10:	e593301c 	ldr	r3, [r3, #28]
80026b14:	e5933010 	ldr	r3, [r3, #16]
80026b18:	e50b3008 	str	r3, [fp, #-8]
80026b1c:	e51b3008 	ldr	r3, [fp, #-8]
80026b20:	e3530000 	cmp	r3, #0
80026b24:	da00001a 	ble	80026b94 <syscall+0x98>
80026b28:	e51b3008 	ldr	r3, [fp, #-8]
80026b2c:	e3530028 	cmp	r3, #40	@ 0x28
80026b30:	8a000017 	bhi	80026b94 <syscall+0x98>
80026b34:	e59f20a4 	ldr	r2, [pc, #164]	@ 80026be0 <syscall+0xe4>
80026b38:	e51b3008 	ldr	r3, [fp, #-8]
80026b3c:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80026b40:	e3530000 	cmp	r3, #0
80026b44:	0a000012 	beq	80026b94 <syscall+0x98>
80026b48:	e59f2090 	ldr	r2, [pc, #144]	@ 80026be0 <syscall+0xe4>
80026b4c:	e51b3008 	ldr	r3, [fp, #-8]
80026b50:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80026b54:	e12fff33 	blx	r3
80026b58:	e50b000c 	str	r0, [fp, #-12]
80026b5c:	e59f3078 	ldr	r3, [pc, #120]	@ 80026bdc <syscall+0xe0>
80026b60:	e5933000 	ldr	r3, [r3]
80026b64:	e593200c 	ldr	r2, [r3, #12]
80026b68:	e2822001 	add	r2, r2, #1
80026b6c:	e583200c 	str	r2, [r3, #12]
80026b70:	e51b3008 	ldr	r3, [fp, #-8]
80026b74:	e3530007 	cmp	r3, #7
80026b78:	0a000014 	beq	80026bd0 <syscall+0xd4>
80026b7c:	e59f3058 	ldr	r3, [pc, #88]	@ 80026bdc <syscall+0xe0>
80026b80:	e5933000 	ldr	r3, [r3]
80026b84:	e593301c 	ldr	r3, [r3, #28]
80026b88:	e51b200c 	ldr	r2, [fp, #-12]
80026b8c:	e5832010 	str	r2, [r3, #16]
80026b90:	ea00000e 	b	80026bd0 <syscall+0xd4>
80026b94:	e59f3040 	ldr	r3, [pc, #64]	@ 80026bdc <syscall+0xe0>
80026b98:	e5933000 	ldr	r3, [r3]
80026b9c:	e5931014 	ldr	r1, [r3, #20]
80026ba0:	e59f3034 	ldr	r3, [pc, #52]	@ 80026bdc <syscall+0xe0>
80026ba4:	e5933000 	ldr	r3, [r3]
80026ba8:	e2832070 	add	r2, r3, #112	@ 0x70
80026bac:	e51b3008 	ldr	r3, [fp, #-8]
80026bb0:	e59f002c 	ldr	r0, [pc, #44]	@ 80026be4 <syscall+0xe8>
80026bb4:	ebffeb86 	bl	800219d4 <cprintf>
80026bb8:	e59f301c 	ldr	r3, [pc, #28]	@ 80026bdc <syscall+0xe0>
80026bbc:	e5933000 	ldr	r3, [r3]
80026bc0:	e593301c 	ldr	r3, [r3, #28]
80026bc4:	e3e02000 	mvn	r2, #0
80026bc8:	e5832010 	str	r2, [r3, #16]
80026bcc:	e1a00000 	nop			@ (mov r0, r0)
80026bd0:	e1a00000 	nop			@ (mov r0, r0)
80026bd4:	e24bd004 	sub	sp, fp, #4
80026bd8:	e8bd8800 	pop	{fp, pc}
80026bdc:	800b0be0 	.word	0x800b0be0
80026be0:	8002b04c 	.word	0x8002b04c
80026be4:	8002a3c4 	.word	0x8002a3c4

80026be8 <argfd>:
80026be8:	e92d4800 	push	{fp, lr}
80026bec:	e28db004 	add	fp, sp, #4
80026bf0:	e24dd018 	sub	sp, sp, #24
80026bf4:	e50b0010 	str	r0, [fp, #-16]
80026bf8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026bfc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80026c00:	e24b300c 	sub	r3, fp, #12
80026c04:	e1a01003 	mov	r1, r3
80026c08:	e51b0010 	ldr	r0, [fp, #-16]
80026c0c:	ebffff48 	bl	80026934 <argint>
80026c10:	e1a03000 	mov	r3, r0
80026c14:	e3530000 	cmp	r3, #0
80026c18:	aa000001 	bge	80026c24 <argfd+0x3c>
80026c1c:	e3e03000 	mvn	r3, #0
80026c20:	ea00001f 	b	80026ca4 <argfd+0xbc>
80026c24:	e51b300c 	ldr	r3, [fp, #-12]
80026c28:	e3530000 	cmp	r3, #0
80026c2c:	ba00000d 	blt	80026c68 <argfd+0x80>
80026c30:	e51b300c 	ldr	r3, [fp, #-12]
80026c34:	e353000f 	cmp	r3, #15
80026c38:	ca00000a 	bgt	80026c68 <argfd+0x80>
80026c3c:	e59f306c 	ldr	r3, [pc, #108]	@ 80026cb0 <argfd+0xc8>
80026c40:	e5932000 	ldr	r2, [r3]
80026c44:	e51b300c 	ldr	r3, [fp, #-12]
80026c48:	e283300a 	add	r3, r3, #10
80026c4c:	e1a03103 	lsl	r3, r3, #2
80026c50:	e0823003 	add	r3, r2, r3
80026c54:	e5933004 	ldr	r3, [r3, #4]
80026c58:	e50b3008 	str	r3, [fp, #-8]
80026c5c:	e51b3008 	ldr	r3, [fp, #-8]
80026c60:	e3530000 	cmp	r3, #0
80026c64:	1a000001 	bne	80026c70 <argfd+0x88>
80026c68:	e3e03000 	mvn	r3, #0
80026c6c:	ea00000c 	b	80026ca4 <argfd+0xbc>
80026c70:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026c74:	e3530000 	cmp	r3, #0
80026c78:	0a000002 	beq	80026c88 <argfd+0xa0>
80026c7c:	e51b200c 	ldr	r2, [fp, #-12]
80026c80:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026c84:	e5832000 	str	r2, [r3]
80026c88:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026c8c:	e3530000 	cmp	r3, #0
80026c90:	0a000002 	beq	80026ca0 <argfd+0xb8>
80026c94:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026c98:	e51b2008 	ldr	r2, [fp, #-8]
80026c9c:	e5832000 	str	r2, [r3]
80026ca0:	e3a03000 	mov	r3, #0
80026ca4:	e1a00003 	mov	r0, r3
80026ca8:	e24bd004 	sub	sp, fp, #4
80026cac:	e8bd8800 	pop	{fp, pc}
80026cb0:	800b0be0 	.word	0x800b0be0

80026cb4 <fdalloc>:
80026cb4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80026cb8:	e28db000 	add	fp, sp, #0
80026cbc:	e24dd014 	sub	sp, sp, #20
80026cc0:	e50b0010 	str	r0, [fp, #-16]
80026cc4:	e3a03000 	mov	r3, #0
80026cc8:	e50b3008 	str	r3, [fp, #-8]
80026ccc:	ea000015 	b	80026d28 <fdalloc+0x74>
80026cd0:	e59f3070 	ldr	r3, [pc, #112]	@ 80026d48 <fdalloc+0x94>
80026cd4:	e5932000 	ldr	r2, [r3]
80026cd8:	e51b3008 	ldr	r3, [fp, #-8]
80026cdc:	e283300a 	add	r3, r3, #10
80026ce0:	e1a03103 	lsl	r3, r3, #2
80026ce4:	e0823003 	add	r3, r2, r3
80026ce8:	e5933004 	ldr	r3, [r3, #4]
80026cec:	e3530000 	cmp	r3, #0
80026cf0:	1a000009 	bne	80026d1c <fdalloc+0x68>
80026cf4:	e59f304c 	ldr	r3, [pc, #76]	@ 80026d48 <fdalloc+0x94>
80026cf8:	e5932000 	ldr	r2, [r3]
80026cfc:	e51b3008 	ldr	r3, [fp, #-8]
80026d00:	e283300a 	add	r3, r3, #10
80026d04:	e1a03103 	lsl	r3, r3, #2
80026d08:	e0823003 	add	r3, r2, r3
80026d0c:	e51b2010 	ldr	r2, [fp, #-16]
80026d10:	e5832004 	str	r2, [r3, #4]
80026d14:	e51b3008 	ldr	r3, [fp, #-8]
80026d18:	ea000006 	b	80026d38 <fdalloc+0x84>
80026d1c:	e51b3008 	ldr	r3, [fp, #-8]
80026d20:	e2833001 	add	r3, r3, #1
80026d24:	e50b3008 	str	r3, [fp, #-8]
80026d28:	e51b3008 	ldr	r3, [fp, #-8]
80026d2c:	e353000f 	cmp	r3, #15
80026d30:	daffffe6 	ble	80026cd0 <fdalloc+0x1c>
80026d34:	e3e03000 	mvn	r3, #0
80026d38:	e1a00003 	mov	r0, r3
80026d3c:	e28bd000 	add	sp, fp, #0
80026d40:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026d44:	e12fff1e 	bx	lr
80026d48:	800b0be0 	.word	0x800b0be0

80026d4c <sys_dup>:
80026d4c:	e92d4800 	push	{fp, lr}
80026d50:	e28db004 	add	fp, sp, #4
80026d54:	e24dd008 	sub	sp, sp, #8
80026d58:	e24b300c 	sub	r3, fp, #12
80026d5c:	e1a02003 	mov	r2, r3
80026d60:	e3a01000 	mov	r1, #0
80026d64:	e3a00000 	mov	r0, #0
80026d68:	ebffff9e 	bl	80026be8 <argfd>
80026d6c:	e1a03000 	mov	r3, r0
80026d70:	e3530000 	cmp	r3, #0
80026d74:	aa000001 	bge	80026d80 <sys_dup+0x34>
80026d78:	e3e03000 	mvn	r3, #0
80026d7c:	ea00000c 	b	80026db4 <sys_dup+0x68>
80026d80:	e51b300c 	ldr	r3, [fp, #-12]
80026d84:	e1a00003 	mov	r0, r3
80026d88:	ebffffc9 	bl	80026cb4 <fdalloc>
80026d8c:	e50b0008 	str	r0, [fp, #-8]
80026d90:	e51b3008 	ldr	r3, [fp, #-8]
80026d94:	e3530000 	cmp	r3, #0
80026d98:	aa000001 	bge	80026da4 <sys_dup+0x58>
80026d9c:	e3e03000 	mvn	r3, #0
80026da0:	ea000003 	b	80026db4 <sys_dup+0x68>
80026da4:	e51b300c 	ldr	r3, [fp, #-12]
80026da8:	e1a00003 	mov	r0, r3
80026dac:	ebffee56 	bl	8002270c <filedup>
80026db0:	e51b3008 	ldr	r3, [fp, #-8]
80026db4:	e1a00003 	mov	r0, r3
80026db8:	e24bd004 	sub	sp, fp, #4
80026dbc:	e8bd8800 	pop	{fp, pc}

80026dc0 <sys_read>:
80026dc0:	e92d4800 	push	{fp, lr}
80026dc4:	e28db004 	add	fp, sp, #4
80026dc8:	e24dd010 	sub	sp, sp, #16
80026dcc:	e24b3008 	sub	r3, fp, #8
80026dd0:	e1a02003 	mov	r2, r3
80026dd4:	e3a01000 	mov	r1, #0
80026dd8:	e3a00000 	mov	r0, #0
80026ddc:	ebffff81 	bl	80026be8 <argfd>
80026de0:	e1a03000 	mov	r3, r0
80026de4:	e3530000 	cmp	r3, #0
80026de8:	ba00000e 	blt	80026e28 <sys_read+0x68>
80026dec:	e24b300c 	sub	r3, fp, #12
80026df0:	e1a01003 	mov	r1, r3
80026df4:	e3a00002 	mov	r0, #2
80026df8:	ebfffecd 	bl	80026934 <argint>
80026dfc:	e1a03000 	mov	r3, r0
80026e00:	e3530000 	cmp	r3, #0
80026e04:	ba000007 	blt	80026e28 <sys_read+0x68>
80026e08:	e51b200c 	ldr	r2, [fp, #-12]
80026e0c:	e24b3010 	sub	r3, fp, #16
80026e10:	e1a01003 	mov	r1, r3
80026e14:	e3a00001 	mov	r0, #1
80026e18:	ebfffee0 	bl	800269a0 <argptr>
80026e1c:	e1a03000 	mov	r3, r0
80026e20:	e3530000 	cmp	r3, #0
80026e24:	aa000001 	bge	80026e30 <sys_read+0x70>
80026e28:	e3e03000 	mvn	r3, #0
80026e2c:	ea000005 	b	80026e48 <sys_read+0x88>
80026e30:	e51b3008 	ldr	r3, [fp, #-8]
80026e34:	e51b1010 	ldr	r1, [fp, #-16]
80026e38:	e51b200c 	ldr	r2, [fp, #-12]
80026e3c:	e1a00003 	mov	r0, r3
80026e40:	ebffeea2 	bl	800228d0 <fileread>
80026e44:	e1a03000 	mov	r3, r0
80026e48:	e1a00003 	mov	r0, r3
80026e4c:	e24bd004 	sub	sp, fp, #4
80026e50:	e8bd8800 	pop	{fp, pc}

80026e54 <sys_write>:
80026e54:	e92d4800 	push	{fp, lr}
80026e58:	e28db004 	add	fp, sp, #4
80026e5c:	e24dd010 	sub	sp, sp, #16
80026e60:	e24b3008 	sub	r3, fp, #8
80026e64:	e1a02003 	mov	r2, r3
80026e68:	e3a01000 	mov	r1, #0
80026e6c:	e3a00000 	mov	r0, #0
80026e70:	ebffff5c 	bl	80026be8 <argfd>
80026e74:	e1a03000 	mov	r3, r0
80026e78:	e3530000 	cmp	r3, #0
80026e7c:	ba00000e 	blt	80026ebc <sys_write+0x68>
80026e80:	e24b300c 	sub	r3, fp, #12
80026e84:	e1a01003 	mov	r1, r3
80026e88:	e3a00002 	mov	r0, #2
80026e8c:	ebfffea8 	bl	80026934 <argint>
80026e90:	e1a03000 	mov	r3, r0
80026e94:	e3530000 	cmp	r3, #0
80026e98:	ba000007 	blt	80026ebc <sys_write+0x68>
80026e9c:	e51b200c 	ldr	r2, [fp, #-12]
80026ea0:	e24b3010 	sub	r3, fp, #16
80026ea4:	e1a01003 	mov	r1, r3
80026ea8:	e3a00001 	mov	r0, #1
80026eac:	ebfffebb 	bl	800269a0 <argptr>
80026eb0:	e1a03000 	mov	r3, r0
80026eb4:	e3530000 	cmp	r3, #0
80026eb8:	aa000001 	bge	80026ec4 <sys_write+0x70>
80026ebc:	e3e03000 	mvn	r3, #0
80026ec0:	ea000005 	b	80026edc <sys_write+0x88>
80026ec4:	e51b3008 	ldr	r3, [fp, #-8]
80026ec8:	e51b1010 	ldr	r1, [fp, #-16]
80026ecc:	e51b200c 	ldr	r2, [fp, #-12]
80026ed0:	e1a00003 	mov	r0, r3
80026ed4:	ebffeeba 	bl	800229c4 <filewrite>
80026ed8:	e1a03000 	mov	r3, r0
80026edc:	e1a00003 	mov	r0, r3
80026ee0:	e24bd004 	sub	sp, fp, #4
80026ee4:	e8bd8800 	pop	{fp, pc}

80026ee8 <sys_close>:
80026ee8:	e92d4800 	push	{fp, lr}
80026eec:	e28db004 	add	fp, sp, #4
80026ef0:	e24dd008 	sub	sp, sp, #8
80026ef4:	e24b200c 	sub	r2, fp, #12
80026ef8:	e24b3008 	sub	r3, fp, #8
80026efc:	e1a01003 	mov	r1, r3
80026f00:	e3a00000 	mov	r0, #0
80026f04:	ebffff37 	bl	80026be8 <argfd>
80026f08:	e1a03000 	mov	r3, r0
80026f0c:	e3530000 	cmp	r3, #0
80026f10:	aa000001 	bge	80026f1c <sys_close+0x34>
80026f14:	e3e03000 	mvn	r3, #0
80026f18:	ea00000b 	b	80026f4c <sys_close+0x64>
80026f1c:	e59f3034 	ldr	r3, [pc, #52]	@ 80026f58 <sys_close+0x70>
80026f20:	e5932000 	ldr	r2, [r3]
80026f24:	e51b3008 	ldr	r3, [fp, #-8]
80026f28:	e283300a 	add	r3, r3, #10
80026f2c:	e1a03103 	lsl	r3, r3, #2
80026f30:	e0823003 	add	r3, r2, r3
80026f34:	e3a02000 	mov	r2, #0
80026f38:	e5832004 	str	r2, [r3, #4]
80026f3c:	e51b300c 	ldr	r3, [fp, #-12]
80026f40:	e1a00003 	mov	r0, r3
80026f44:	ebffee09 	bl	80022770 <fileclose>
80026f48:	e3a03000 	mov	r3, #0
80026f4c:	e1a00003 	mov	r0, r3
80026f50:	e24bd004 	sub	sp, fp, #4
80026f54:	e8bd8800 	pop	{fp, pc}
80026f58:	800b0be0 	.word	0x800b0be0

80026f5c <sys_fstat>:
80026f5c:	e92d4800 	push	{fp, lr}
80026f60:	e28db004 	add	fp, sp, #4
80026f64:	e24dd008 	sub	sp, sp, #8
80026f68:	e24b3008 	sub	r3, fp, #8
80026f6c:	e1a02003 	mov	r2, r3
80026f70:	e3a01000 	mov	r1, #0
80026f74:	e3a00000 	mov	r0, #0
80026f78:	ebffff1a 	bl	80026be8 <argfd>
80026f7c:	e1a03000 	mov	r3, r0
80026f80:	e3530000 	cmp	r3, #0
80026f84:	ba000007 	blt	80026fa8 <sys_fstat+0x4c>
80026f88:	e24b300c 	sub	r3, fp, #12
80026f8c:	e3a02014 	mov	r2, #20
80026f90:	e1a01003 	mov	r1, r3
80026f94:	e3a00001 	mov	r0, #1
80026f98:	ebfffe80 	bl	800269a0 <argptr>
80026f9c:	e1a03000 	mov	r3, r0
80026fa0:	e3530000 	cmp	r3, #0
80026fa4:	aa000001 	bge	80026fb0 <sys_fstat+0x54>
80026fa8:	e3e03000 	mvn	r3, #0
80026fac:	ea000005 	b	80026fc8 <sys_fstat+0x6c>
80026fb0:	e51b3008 	ldr	r3, [fp, #-8]
80026fb4:	e51b200c 	ldr	r2, [fp, #-12]
80026fb8:	e1a01002 	mov	r1, r2
80026fbc:	e1a00003 	mov	r0, r3
80026fc0:	ebffee26 	bl	80022860 <filestat>
80026fc4:	e1a03000 	mov	r3, r0
80026fc8:	e1a00003 	mov	r0, r3
80026fcc:	e24bd004 	sub	sp, fp, #4
80026fd0:	e8bd8800 	pop	{fp, pc}

80026fd4 <sys_link>:
80026fd4:	e92d4800 	push	{fp, lr}
80026fd8:	e28db004 	add	fp, sp, #4
80026fdc:	e24dd020 	sub	sp, sp, #32
80026fe0:	e24b3024 	sub	r3, fp, #36	@ 0x24
80026fe4:	e1a01003 	mov	r1, r3
80026fe8:	e3a00000 	mov	r0, #0
80026fec:	ebfffeac 	bl	80026aa4 <argstr>
80026ff0:	e1a03000 	mov	r3, r0
80026ff4:	e3530000 	cmp	r3, #0
80026ff8:	ba000006 	blt	80027018 <sys_link+0x44>
80026ffc:	e24b3020 	sub	r3, fp, #32
80027000:	e1a01003 	mov	r1, r3
80027004:	e3a00001 	mov	r0, #1
80027008:	ebfffea5 	bl	80026aa4 <argstr>
8002700c:	e1a03000 	mov	r3, r0
80027010:	e3530000 	cmp	r3, #0
80027014:	aa000001 	bge	80027020 <sys_link+0x4c>
80027018:	e3e03000 	mvn	r3, #0
8002701c:	ea000055 	b	80027178 <sys_link+0x1a4>
80027020:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80027024:	e1a00003 	mov	r0, r3
80027028:	ebfff46e 	bl	800241e8 <namei>
8002702c:	e50b0008 	str	r0, [fp, #-8]
80027030:	e51b3008 	ldr	r3, [fp, #-8]
80027034:	e3530000 	cmp	r3, #0
80027038:	1a000001 	bne	80027044 <sys_link+0x70>
8002703c:	e3e03000 	mvn	r3, #0
80027040:	ea00004c 	b	80027178 <sys_link+0x1a4>
80027044:	ebfff540 	bl	8002454c <begin_trans>
80027048:	e51b0008 	ldr	r0, [fp, #-8]
8002704c:	ebfff092 	bl	8002329c <ilock>
80027050:	e51b3008 	ldr	r3, [fp, #-8]
80027054:	e1d331f0 	ldrsh	r3, [r3, #16]
80027058:	e3530001 	cmp	r3, #1
8002705c:	1a000004 	bne	80027074 <sys_link+0xa0>
80027060:	e51b0008 	ldr	r0, [fp, #-8]
80027064:	ebfff14d 	bl	800235a0 <iunlockput>
80027068:	ebfff54b 	bl	8002459c <commit_trans>
8002706c:	e3e03000 	mvn	r3, #0
80027070:	ea000040 	b	80027178 <sys_link+0x1a4>
80027074:	e51b3008 	ldr	r3, [fp, #-8]
80027078:	e1d331f6 	ldrsh	r3, [r3, #22]
8002707c:	e6ff3073 	uxth	r3, r3
80027080:	e2833001 	add	r3, r3, #1
80027084:	e6ff3073 	uxth	r3, r3
80027088:	e6bf2073 	sxth	r2, r3
8002708c:	e51b3008 	ldr	r3, [fp, #-8]
80027090:	e1c321b6 	strh	r2, [r3, #22]
80027094:	e51b0008 	ldr	r0, [fp, #-8]
80027098:	ebffefe5 	bl	80023034 <iupdate>
8002709c:	e51b0008 	ldr	r0, [fp, #-8]
800270a0:	ebfff0e1 	bl	8002342c <iunlock>
800270a4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800270a8:	e24b201c 	sub	r2, fp, #28
800270ac:	e1a01002 	mov	r1, r2
800270b0:	e1a00003 	mov	r0, r3
800270b4:	ebfff458 	bl	8002421c <nameiparent>
800270b8:	e50b000c 	str	r0, [fp, #-12]
800270bc:	e51b300c 	ldr	r3, [fp, #-12]
800270c0:	e3530000 	cmp	r3, #0
800270c4:	0a00001a 	beq	80027134 <sys_link+0x160>
800270c8:	e51b000c 	ldr	r0, [fp, #-12]
800270cc:	ebfff072 	bl	8002329c <ilock>
800270d0:	e51b300c 	ldr	r3, [fp, #-12]
800270d4:	e5932000 	ldr	r2, [r3]
800270d8:	e51b3008 	ldr	r3, [fp, #-8]
800270dc:	e5933000 	ldr	r3, [r3]
800270e0:	e1520003 	cmp	r2, r3
800270e4:	1a000008 	bne	8002710c <sys_link+0x138>
800270e8:	e51b3008 	ldr	r3, [fp, #-8]
800270ec:	e5932004 	ldr	r2, [r3, #4]
800270f0:	e24b301c 	sub	r3, fp, #28
800270f4:	e1a01003 	mov	r1, r3
800270f8:	e51b000c 	ldr	r0, [fp, #-12]
800270fc:	ebfff363 	bl	80023e90 <dirlink>
80027100:	e1a03000 	mov	r3, r0
80027104:	e3530000 	cmp	r3, #0
80027108:	aa000002 	bge	80027118 <sys_link+0x144>
8002710c:	e51b000c 	ldr	r0, [fp, #-12]
80027110:	ebfff122 	bl	800235a0 <iunlockput>
80027114:	ea000007 	b	80027138 <sys_link+0x164>
80027118:	e51b000c 	ldr	r0, [fp, #-12]
8002711c:	ebfff11f 	bl	800235a0 <iunlockput>
80027120:	e51b0008 	ldr	r0, [fp, #-8]
80027124:	ebfff0e2 	bl	800234b4 <iput>
80027128:	ebfff51b 	bl	8002459c <commit_trans>
8002712c:	e3a03000 	mov	r3, #0
80027130:	ea000010 	b	80027178 <sys_link+0x1a4>
80027134:	e1a00000 	nop			@ (mov r0, r0)
80027138:	e51b0008 	ldr	r0, [fp, #-8]
8002713c:	ebfff056 	bl	8002329c <ilock>
80027140:	e51b3008 	ldr	r3, [fp, #-8]
80027144:	e1d331f6 	ldrsh	r3, [r3, #22]
80027148:	e6ff3073 	uxth	r3, r3
8002714c:	e2433001 	sub	r3, r3, #1
80027150:	e6ff3073 	uxth	r3, r3
80027154:	e6bf2073 	sxth	r2, r3
80027158:	e51b3008 	ldr	r3, [fp, #-8]
8002715c:	e1c321b6 	strh	r2, [r3, #22]
80027160:	e51b0008 	ldr	r0, [fp, #-8]
80027164:	ebffefb2 	bl	80023034 <iupdate>
80027168:	e51b0008 	ldr	r0, [fp, #-8]
8002716c:	ebfff10b 	bl	800235a0 <iunlockput>
80027170:	ebfff509 	bl	8002459c <commit_trans>
80027174:	e3e03000 	mvn	r3, #0
80027178:	e1a00003 	mov	r0, r3
8002717c:	e24bd004 	sub	sp, fp, #4
80027180:	e8bd8800 	pop	{fp, pc}

80027184 <isdirempty>:
80027184:	e92d4800 	push	{fp, lr}
80027188:	e28db004 	add	fp, sp, #4
8002718c:	e24dd020 	sub	sp, sp, #32
80027190:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80027194:	e3a03020 	mov	r3, #32
80027198:	e50b3008 	str	r3, [fp, #-8]
8002719c:	ea000011 	b	800271e8 <isdirempty+0x64>
800271a0:	e51b2008 	ldr	r2, [fp, #-8]
800271a4:	e24b1018 	sub	r1, fp, #24
800271a8:	e3a03010 	mov	r3, #16
800271ac:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
800271b0:	ebfff1e5 	bl	8002394c <readi>
800271b4:	e1a03000 	mov	r3, r0
800271b8:	e3530010 	cmp	r3, #16
800271bc:	0a000001 	beq	800271c8 <isdirempty+0x44>
800271c0:	e59f0044 	ldr	r0, [pc, #68]	@ 8002720c <isdirempty+0x88>
800271c4:	ebffea9a 	bl	80021c34 <panic>
800271c8:	e15b31b8 	ldrh	r3, [fp, #-24]	@ 0xffffffe8
800271cc:	e3530000 	cmp	r3, #0
800271d0:	0a000001 	beq	800271dc <isdirempty+0x58>
800271d4:	e3a03000 	mov	r3, #0
800271d8:	ea000008 	b	80027200 <isdirempty+0x7c>
800271dc:	e51b3008 	ldr	r3, [fp, #-8]
800271e0:	e2833010 	add	r3, r3, #16
800271e4:	e50b3008 	str	r3, [fp, #-8]
800271e8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800271ec:	e5932018 	ldr	r2, [r3, #24]
800271f0:	e51b3008 	ldr	r3, [fp, #-8]
800271f4:	e1520003 	cmp	r2, r3
800271f8:	8affffe8 	bhi	800271a0 <isdirempty+0x1c>
800271fc:	e3a03001 	mov	r3, #1
80027200:	e1a00003 	mov	r0, r3
80027204:	e24bd004 	sub	sp, fp, #4
80027208:	e8bd8800 	pop	{fp, pc}
8002720c:	8002a3e0 	.word	0x8002a3e0

80027210 <sys_unlink>:
80027210:	e92d4800 	push	{fp, lr}
80027214:	e28db004 	add	fp, sp, #4
80027218:	e24dd030 	sub	sp, sp, #48	@ 0x30
8002721c:	e24b3030 	sub	r3, fp, #48	@ 0x30
80027220:	e1a01003 	mov	r1, r3
80027224:	e3a00000 	mov	r0, #0
80027228:	ebfffe1d 	bl	80026aa4 <argstr>
8002722c:	e1a03000 	mov	r3, r0
80027230:	e3530000 	cmp	r3, #0
80027234:	aa000001 	bge	80027240 <sys_unlink+0x30>
80027238:	e3e03000 	mvn	r3, #0
8002723c:	ea00006d 	b	800273f8 <sys_unlink+0x1e8>
80027240:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
80027244:	e24b202c 	sub	r2, fp, #44	@ 0x2c
80027248:	e1a01002 	mov	r1, r2
8002724c:	e1a00003 	mov	r0, r3
80027250:	ebfff3f1 	bl	8002421c <nameiparent>
80027254:	e50b0008 	str	r0, [fp, #-8]
80027258:	e51b3008 	ldr	r3, [fp, #-8]
8002725c:	e3530000 	cmp	r3, #0
80027260:	1a000001 	bne	8002726c <sys_unlink+0x5c>
80027264:	e3e03000 	mvn	r3, #0
80027268:	ea000062 	b	800273f8 <sys_unlink+0x1e8>
8002726c:	ebfff4b6 	bl	8002454c <begin_trans>
80027270:	e51b0008 	ldr	r0, [fp, #-8]
80027274:	ebfff008 	bl	8002329c <ilock>
80027278:	e24b302c 	sub	r3, fp, #44	@ 0x2c
8002727c:	e59f1180 	ldr	r1, [pc, #384]	@ 80027404 <sys_unlink+0x1f4>
80027280:	e1a00003 	mov	r0, r3
80027284:	ebfff2b2 	bl	80023d54 <namecmp>
80027288:	e1a03000 	mov	r3, r0
8002728c:	e3530000 	cmp	r3, #0
80027290:	0a000051 	beq	800273dc <sys_unlink+0x1cc>
80027294:	e24b302c 	sub	r3, fp, #44	@ 0x2c
80027298:	e59f1168 	ldr	r1, [pc, #360]	@ 80027408 <sys_unlink+0x1f8>
8002729c:	e1a00003 	mov	r0, r3
800272a0:	ebfff2ab 	bl	80023d54 <namecmp>
800272a4:	e1a03000 	mov	r3, r0
800272a8:	e3530000 	cmp	r3, #0
800272ac:	0a00004a 	beq	800273dc <sys_unlink+0x1cc>
800272b0:	e24b2034 	sub	r2, fp, #52	@ 0x34
800272b4:	e24b302c 	sub	r3, fp, #44	@ 0x2c
800272b8:	e1a01003 	mov	r1, r3
800272bc:	e51b0008 	ldr	r0, [fp, #-8]
800272c0:	ebfff2b0 	bl	80023d88 <dirlookup>
800272c4:	e50b000c 	str	r0, [fp, #-12]
800272c8:	e51b300c 	ldr	r3, [fp, #-12]
800272cc:	e3530000 	cmp	r3, #0
800272d0:	0a000043 	beq	800273e4 <sys_unlink+0x1d4>
800272d4:	e51b000c 	ldr	r0, [fp, #-12]
800272d8:	ebffefef 	bl	8002329c <ilock>
800272dc:	e51b300c 	ldr	r3, [fp, #-12]
800272e0:	e1d331f6 	ldrsh	r3, [r3, #22]
800272e4:	e3530000 	cmp	r3, #0
800272e8:	ca000001 	bgt	800272f4 <sys_unlink+0xe4>
800272ec:	e59f0118 	ldr	r0, [pc, #280]	@ 8002740c <sys_unlink+0x1fc>
800272f0:	ebffea4f 	bl	80021c34 <panic>
800272f4:	e51b300c 	ldr	r3, [fp, #-12]
800272f8:	e1d331f0 	ldrsh	r3, [r3, #16]
800272fc:	e3530001 	cmp	r3, #1
80027300:	1a000007 	bne	80027324 <sys_unlink+0x114>
80027304:	e51b000c 	ldr	r0, [fp, #-12]
80027308:	ebffff9d 	bl	80027184 <isdirempty>
8002730c:	e1a03000 	mov	r3, r0
80027310:	e3530000 	cmp	r3, #0
80027314:	1a000002 	bne	80027324 <sys_unlink+0x114>
80027318:	e51b000c 	ldr	r0, [fp, #-12]
8002731c:	ebfff09f 	bl	800235a0 <iunlockput>
80027320:	ea000030 	b	800273e8 <sys_unlink+0x1d8>
80027324:	e24b301c 	sub	r3, fp, #28
80027328:	e3a02010 	mov	r2, #16
8002732c:	e3a01000 	mov	r1, #0
80027330:	e1a00003 	mov	r0, r3
80027334:	ebffe331 	bl	80020000 <memset>
80027338:	e51b2034 	ldr	r2, [fp, #-52]	@ 0xffffffcc
8002733c:	e24b101c 	sub	r1, fp, #28
80027340:	e3a03010 	mov	r3, #16
80027344:	e51b0008 	ldr	r0, [fp, #-8]
80027348:	ebfff1fa 	bl	80023b38 <writei>
8002734c:	e1a03000 	mov	r3, r0
80027350:	e3530010 	cmp	r3, #16
80027354:	0a000001 	beq	80027360 <sys_unlink+0x150>
80027358:	e59f00b0 	ldr	r0, [pc, #176]	@ 80027410 <sys_unlink+0x200>
8002735c:	ebffea34 	bl	80021c34 <panic>
80027360:	e51b300c 	ldr	r3, [fp, #-12]
80027364:	e1d331f0 	ldrsh	r3, [r3, #16]
80027368:	e3530001 	cmp	r3, #1
8002736c:	1a000009 	bne	80027398 <sys_unlink+0x188>
80027370:	e51b3008 	ldr	r3, [fp, #-8]
80027374:	e1d331f6 	ldrsh	r3, [r3, #22]
80027378:	e6ff3073 	uxth	r3, r3
8002737c:	e2433001 	sub	r3, r3, #1
80027380:	e6ff3073 	uxth	r3, r3
80027384:	e6bf2073 	sxth	r2, r3
80027388:	e51b3008 	ldr	r3, [fp, #-8]
8002738c:	e1c321b6 	strh	r2, [r3, #22]
80027390:	e51b0008 	ldr	r0, [fp, #-8]
80027394:	ebffef26 	bl	80023034 <iupdate>
80027398:	e51b0008 	ldr	r0, [fp, #-8]
8002739c:	ebfff07f 	bl	800235a0 <iunlockput>
800273a0:	e51b300c 	ldr	r3, [fp, #-12]
800273a4:	e1d331f6 	ldrsh	r3, [r3, #22]
800273a8:	e6ff3073 	uxth	r3, r3
800273ac:	e2433001 	sub	r3, r3, #1
800273b0:	e6ff3073 	uxth	r3, r3
800273b4:	e6bf2073 	sxth	r2, r3
800273b8:	e51b300c 	ldr	r3, [fp, #-12]
800273bc:	e1c321b6 	strh	r2, [r3, #22]
800273c0:	e51b000c 	ldr	r0, [fp, #-12]
800273c4:	ebffef1a 	bl	80023034 <iupdate>
800273c8:	e51b000c 	ldr	r0, [fp, #-12]
800273cc:	ebfff073 	bl	800235a0 <iunlockput>
800273d0:	ebfff471 	bl	8002459c <commit_trans>
800273d4:	e3a03000 	mov	r3, #0
800273d8:	ea000006 	b	800273f8 <sys_unlink+0x1e8>
800273dc:	e1a00000 	nop			@ (mov r0, r0)
800273e0:	ea000000 	b	800273e8 <sys_unlink+0x1d8>
800273e4:	e1a00000 	nop			@ (mov r0, r0)
800273e8:	e51b0008 	ldr	r0, [fp, #-8]
800273ec:	ebfff06b 	bl	800235a0 <iunlockput>
800273f0:	ebfff469 	bl	8002459c <commit_trans>
800273f4:	e3e03000 	mvn	r3, #0
800273f8:	e1a00003 	mov	r0, r3
800273fc:	e24bd004 	sub	sp, fp, #4
80027400:	e8bd8800 	pop	{fp, pc}
80027404:	8002a3f4 	.word	0x8002a3f4
80027408:	8002a3f8 	.word	0x8002a3f8
8002740c:	8002a3fc 	.word	0x8002a3fc
80027410:	8002a410 	.word	0x8002a410

80027414 <create>:
80027414:	e92d4800 	push	{fp, lr}
80027418:	e28db004 	add	fp, sp, #4
8002741c:	e24dd030 	sub	sp, sp, #48	@ 0x30
80027420:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80027424:	e1a00001 	mov	r0, r1
80027428:	e1a01002 	mov	r1, r2
8002742c:	e1a02003 	mov	r2, r3
80027430:	e1a03000 	mov	r3, r0
80027434:	e14b32ba 	strh	r3, [fp, #-42]	@ 0xffffffd6
80027438:	e1a03001 	mov	r3, r1
8002743c:	e14b32bc 	strh	r3, [fp, #-44]	@ 0xffffffd4
80027440:	e1a03002 	mov	r3, r2
80027444:	e14b32be 	strh	r3, [fp, #-46]	@ 0xffffffd2
80027448:	e24b3020 	sub	r3, fp, #32
8002744c:	e1a01003 	mov	r1, r3
80027450:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80027454:	ebfff370 	bl	8002421c <nameiparent>
80027458:	e50b0008 	str	r0, [fp, #-8]
8002745c:	e51b3008 	ldr	r3, [fp, #-8]
80027460:	e3530000 	cmp	r3, #0
80027464:	1a000001 	bne	80027470 <create+0x5c>
80027468:	e3a03000 	mov	r3, #0
8002746c:	ea000063 	b	80027600 <create+0x1ec>
80027470:	e51b0008 	ldr	r0, [fp, #-8]
80027474:	ebffef88 	bl	8002329c <ilock>
80027478:	e24b2010 	sub	r2, fp, #16
8002747c:	e24b3020 	sub	r3, fp, #32
80027480:	e1a01003 	mov	r1, r3
80027484:	e51b0008 	ldr	r0, [fp, #-8]
80027488:	ebfff23e 	bl	80023d88 <dirlookup>
8002748c:	e50b000c 	str	r0, [fp, #-12]
80027490:	e51b300c 	ldr	r3, [fp, #-12]
80027494:	e3530000 	cmp	r3, #0
80027498:	0a000010 	beq	800274e0 <create+0xcc>
8002749c:	e51b0008 	ldr	r0, [fp, #-8]
800274a0:	ebfff03e 	bl	800235a0 <iunlockput>
800274a4:	e51b000c 	ldr	r0, [fp, #-12]
800274a8:	ebffef7b 	bl	8002329c <ilock>
800274ac:	e15b32fa 	ldrsh	r3, [fp, #-42]	@ 0xffffffd6
800274b0:	e3530002 	cmp	r3, #2
800274b4:	1a000005 	bne	800274d0 <create+0xbc>
800274b8:	e51b300c 	ldr	r3, [fp, #-12]
800274bc:	e1d331f0 	ldrsh	r3, [r3, #16]
800274c0:	e3530002 	cmp	r3, #2
800274c4:	1a000001 	bne	800274d0 <create+0xbc>
800274c8:	e51b300c 	ldr	r3, [fp, #-12]
800274cc:	ea00004b 	b	80027600 <create+0x1ec>
800274d0:	e51b000c 	ldr	r0, [fp, #-12]
800274d4:	ebfff031 	bl	800235a0 <iunlockput>
800274d8:	e3a03000 	mov	r3, #0
800274dc:	ea000047 	b	80027600 <create+0x1ec>
800274e0:	e51b3008 	ldr	r3, [fp, #-8]
800274e4:	e5933000 	ldr	r3, [r3]
800274e8:	e15b22fa 	ldrsh	r2, [fp, #-42]	@ 0xffffffd6
800274ec:	e1a01002 	mov	r1, r2
800274f0:	e1a00003 	mov	r0, r3
800274f4:	ebffee8e 	bl	80022f34 <ialloc>
800274f8:	e50b000c 	str	r0, [fp, #-12]
800274fc:	e51b300c 	ldr	r3, [fp, #-12]
80027500:	e3530000 	cmp	r3, #0
80027504:	1a000001 	bne	80027510 <create+0xfc>
80027508:	e59f00fc 	ldr	r0, [pc, #252]	@ 8002760c <create+0x1f8>
8002750c:	ebffe9c8 	bl	80021c34 <panic>
80027510:	e51b000c 	ldr	r0, [fp, #-12]
80027514:	ebffef60 	bl	8002329c <ilock>
80027518:	e51b300c 	ldr	r3, [fp, #-12]
8002751c:	e15b22bc 	ldrh	r2, [fp, #-44]	@ 0xffffffd4
80027520:	e1c321b2 	strh	r2, [r3, #18]
80027524:	e51b300c 	ldr	r3, [fp, #-12]
80027528:	e15b22be 	ldrh	r2, [fp, #-46]	@ 0xffffffd2
8002752c:	e1c321b4 	strh	r2, [r3, #20]
80027530:	e51b300c 	ldr	r3, [fp, #-12]
80027534:	e3a02001 	mov	r2, #1
80027538:	e1c321b6 	strh	r2, [r3, #22]
8002753c:	e51b000c 	ldr	r0, [fp, #-12]
80027540:	ebffeebb 	bl	80023034 <iupdate>
80027544:	e15b32fa 	ldrsh	r3, [fp, #-42]	@ 0xffffffd6
80027548:	e3530001 	cmp	r3, #1
8002754c:	1a00001d 	bne	800275c8 <create+0x1b4>
80027550:	e51b3008 	ldr	r3, [fp, #-8]
80027554:	e1d331f6 	ldrsh	r3, [r3, #22]
80027558:	e6ff3073 	uxth	r3, r3
8002755c:	e2833001 	add	r3, r3, #1
80027560:	e6ff3073 	uxth	r3, r3
80027564:	e6bf2073 	sxth	r2, r3
80027568:	e51b3008 	ldr	r3, [fp, #-8]
8002756c:	e1c321b6 	strh	r2, [r3, #22]
80027570:	e51b0008 	ldr	r0, [fp, #-8]
80027574:	ebffeeae 	bl	80023034 <iupdate>
80027578:	e51b300c 	ldr	r3, [fp, #-12]
8002757c:	e5933004 	ldr	r3, [r3, #4]
80027580:	e1a02003 	mov	r2, r3
80027584:	e59f1084 	ldr	r1, [pc, #132]	@ 80027610 <create+0x1fc>
80027588:	e51b000c 	ldr	r0, [fp, #-12]
8002758c:	ebfff23f 	bl	80023e90 <dirlink>
80027590:	e1a03000 	mov	r3, r0
80027594:	e3530000 	cmp	r3, #0
80027598:	ba000008 	blt	800275c0 <create+0x1ac>
8002759c:	e51b3008 	ldr	r3, [fp, #-8]
800275a0:	e5933004 	ldr	r3, [r3, #4]
800275a4:	e1a02003 	mov	r2, r3
800275a8:	e59f1064 	ldr	r1, [pc, #100]	@ 80027614 <create+0x200>
800275ac:	e51b000c 	ldr	r0, [fp, #-12]
800275b0:	ebfff236 	bl	80023e90 <dirlink>
800275b4:	e1a03000 	mov	r3, r0
800275b8:	e3530000 	cmp	r3, #0
800275bc:	aa000001 	bge	800275c8 <create+0x1b4>
800275c0:	e59f0050 	ldr	r0, [pc, #80]	@ 80027618 <create+0x204>
800275c4:	ebffe99a 	bl	80021c34 <panic>
800275c8:	e51b300c 	ldr	r3, [fp, #-12]
800275cc:	e5932004 	ldr	r2, [r3, #4]
800275d0:	e24b3020 	sub	r3, fp, #32
800275d4:	e1a01003 	mov	r1, r3
800275d8:	e51b0008 	ldr	r0, [fp, #-8]
800275dc:	ebfff22b 	bl	80023e90 <dirlink>
800275e0:	e1a03000 	mov	r3, r0
800275e4:	e3530000 	cmp	r3, #0
800275e8:	aa000001 	bge	800275f4 <create+0x1e0>
800275ec:	e59f0028 	ldr	r0, [pc, #40]	@ 8002761c <create+0x208>
800275f0:	ebffe98f 	bl	80021c34 <panic>
800275f4:	e51b0008 	ldr	r0, [fp, #-8]
800275f8:	ebffefe8 	bl	800235a0 <iunlockput>
800275fc:	e51b300c 	ldr	r3, [fp, #-12]
80027600:	e1a00003 	mov	r0, r3
80027604:	e24bd004 	sub	sp, fp, #4
80027608:	e8bd8800 	pop	{fp, pc}
8002760c:	8002a420 	.word	0x8002a420
80027610:	8002a3f4 	.word	0x8002a3f4
80027614:	8002a3f8 	.word	0x8002a3f8
80027618:	8002a430 	.word	0x8002a430
8002761c:	8002a43c 	.word	0x8002a43c

80027620 <sys_open>:
80027620:	e92d4800 	push	{fp, lr}
80027624:	e28db004 	add	fp, sp, #4
80027628:	e24dd018 	sub	sp, sp, #24
8002762c:	e24b3014 	sub	r3, fp, #20
80027630:	e1a01003 	mov	r1, r3
80027634:	e3a00000 	mov	r0, #0
80027638:	ebfffd19 	bl	80026aa4 <argstr>
8002763c:	e1a03000 	mov	r3, r0
80027640:	e3530000 	cmp	r3, #0
80027644:	ba000006 	blt	80027664 <sys_open+0x44>
80027648:	e24b3018 	sub	r3, fp, #24
8002764c:	e1a01003 	mov	r1, r3
80027650:	e3a00001 	mov	r0, #1
80027654:	ebfffcb6 	bl	80026934 <argint>
80027658:	e1a03000 	mov	r3, r0
8002765c:	e3530000 	cmp	r3, #0
80027660:	aa000001 	bge	8002766c <sys_open+0x4c>
80027664:	e3e03000 	mvn	r3, #0
80027668:	ea00005d 	b	800277e4 <sys_open+0x1c4>
8002766c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027670:	e2033c02 	and	r3, r3, #512	@ 0x200
80027674:	e3530000 	cmp	r3, #0
80027678:	0a00000c 	beq	800276b0 <sys_open+0x90>
8002767c:	ebfff3b2 	bl	8002454c <begin_trans>
80027680:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80027684:	e3a03000 	mov	r3, #0
80027688:	e3a02000 	mov	r2, #0
8002768c:	e3a01002 	mov	r1, #2
80027690:	ebffff5f 	bl	80027414 <create>
80027694:	e50b0008 	str	r0, [fp, #-8]
80027698:	ebfff3bf 	bl	8002459c <commit_trans>
8002769c:	e51b3008 	ldr	r3, [fp, #-8]
800276a0:	e3530000 	cmp	r3, #0
800276a4:	1a000017 	bne	80027708 <sys_open+0xe8>
800276a8:	e3e03000 	mvn	r3, #0
800276ac:	ea00004c 	b	800277e4 <sys_open+0x1c4>
800276b0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800276b4:	e1a00003 	mov	r0, r3
800276b8:	ebfff2ca 	bl	800241e8 <namei>
800276bc:	e50b0008 	str	r0, [fp, #-8]
800276c0:	e51b3008 	ldr	r3, [fp, #-8]
800276c4:	e3530000 	cmp	r3, #0
800276c8:	1a000001 	bne	800276d4 <sys_open+0xb4>
800276cc:	e3e03000 	mvn	r3, #0
800276d0:	ea000043 	b	800277e4 <sys_open+0x1c4>
800276d4:	e51b0008 	ldr	r0, [fp, #-8]
800276d8:	ebffeeef 	bl	8002329c <ilock>
800276dc:	e51b3008 	ldr	r3, [fp, #-8]
800276e0:	e1d331f0 	ldrsh	r3, [r3, #16]
800276e4:	e3530001 	cmp	r3, #1
800276e8:	1a000006 	bne	80027708 <sys_open+0xe8>
800276ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800276f0:	e3530000 	cmp	r3, #0
800276f4:	0a000003 	beq	80027708 <sys_open+0xe8>
800276f8:	e51b0008 	ldr	r0, [fp, #-8]
800276fc:	ebffefa7 	bl	800235a0 <iunlockput>
80027700:	e3e03000 	mvn	r3, #0
80027704:	ea000036 	b	800277e4 <sys_open+0x1c4>
80027708:	ebffebdc 	bl	80022680 <filealloc>
8002770c:	e50b000c 	str	r0, [fp, #-12]
80027710:	e51b300c 	ldr	r3, [fp, #-12]
80027714:	e3530000 	cmp	r3, #0
80027718:	0a000005 	beq	80027734 <sys_open+0x114>
8002771c:	e51b000c 	ldr	r0, [fp, #-12]
80027720:	ebfffd63 	bl	80026cb4 <fdalloc>
80027724:	e50b0010 	str	r0, [fp, #-16]
80027728:	e51b3010 	ldr	r3, [fp, #-16]
8002772c:	e3530000 	cmp	r3, #0
80027730:	aa000008 	bge	80027758 <sys_open+0x138>
80027734:	e51b300c 	ldr	r3, [fp, #-12]
80027738:	e3530000 	cmp	r3, #0
8002773c:	0a000001 	beq	80027748 <sys_open+0x128>
80027740:	e51b000c 	ldr	r0, [fp, #-12]
80027744:	ebffec09 	bl	80022770 <fileclose>
80027748:	e51b0008 	ldr	r0, [fp, #-8]
8002774c:	ebffef93 	bl	800235a0 <iunlockput>
80027750:	e3e03000 	mvn	r3, #0
80027754:	ea000022 	b	800277e4 <sys_open+0x1c4>
80027758:	e51b0008 	ldr	r0, [fp, #-8]
8002775c:	ebffef32 	bl	8002342c <iunlock>
80027760:	e51b300c 	ldr	r3, [fp, #-12]
80027764:	e3a02002 	mov	r2, #2
80027768:	e5c32000 	strb	r2, [r3]
8002776c:	e51b300c 	ldr	r3, [fp, #-12]
80027770:	e51b2008 	ldr	r2, [fp, #-8]
80027774:	e5832010 	str	r2, [r3, #16]
80027778:	e51b300c 	ldr	r3, [fp, #-12]
8002777c:	e3a02000 	mov	r2, #0
80027780:	e5832014 	str	r2, [r3, #20]
80027784:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027788:	e2033001 	and	r3, r3, #1
8002778c:	e3530000 	cmp	r3, #0
80027790:	03a03001 	moveq	r3, #1
80027794:	13a03000 	movne	r3, #0
80027798:	e6ef3073 	uxtb	r3, r3
8002779c:	e1a02003 	mov	r2, r3
800277a0:	e51b300c 	ldr	r3, [fp, #-12]
800277a4:	e5c32008 	strb	r2, [r3, #8]
800277a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800277ac:	e2033001 	and	r3, r3, #1
800277b0:	e3530000 	cmp	r3, #0
800277b4:	1a000003 	bne	800277c8 <sys_open+0x1a8>
800277b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800277bc:	e2033002 	and	r3, r3, #2
800277c0:	e3530000 	cmp	r3, #0
800277c4:	0a000001 	beq	800277d0 <sys_open+0x1b0>
800277c8:	e3a03001 	mov	r3, #1
800277cc:	ea000000 	b	800277d4 <sys_open+0x1b4>
800277d0:	e3a03000 	mov	r3, #0
800277d4:	e6ef2073 	uxtb	r2, r3
800277d8:	e51b300c 	ldr	r3, [fp, #-12]
800277dc:	e5c32009 	strb	r2, [r3, #9]
800277e0:	e51b3010 	ldr	r3, [fp, #-16]
800277e4:	e1a00003 	mov	r0, r3
800277e8:	e24bd004 	sub	sp, fp, #4
800277ec:	e8bd8800 	pop	{fp, pc}

800277f0 <sys_mkdir>:
800277f0:	e92d4800 	push	{fp, lr}
800277f4:	e28db004 	add	fp, sp, #4
800277f8:	e24dd008 	sub	sp, sp, #8
800277fc:	ebfff352 	bl	8002454c <begin_trans>
80027800:	e24b300c 	sub	r3, fp, #12
80027804:	e1a01003 	mov	r1, r3
80027808:	e3a00000 	mov	r0, #0
8002780c:	ebfffca4 	bl	80026aa4 <argstr>
80027810:	e1a03000 	mov	r3, r0
80027814:	e3530000 	cmp	r3, #0
80027818:	ba000008 	blt	80027840 <sys_mkdir+0x50>
8002781c:	e51b000c 	ldr	r0, [fp, #-12]
80027820:	e3a03000 	mov	r3, #0
80027824:	e3a02000 	mov	r2, #0
80027828:	e3a01001 	mov	r1, #1
8002782c:	ebfffef8 	bl	80027414 <create>
80027830:	e50b0008 	str	r0, [fp, #-8]
80027834:	e51b3008 	ldr	r3, [fp, #-8]
80027838:	e3530000 	cmp	r3, #0
8002783c:	1a000002 	bne	8002784c <sys_mkdir+0x5c>
80027840:	ebfff355 	bl	8002459c <commit_trans>
80027844:	e3e03000 	mvn	r3, #0
80027848:	ea000003 	b	8002785c <sys_mkdir+0x6c>
8002784c:	e51b0008 	ldr	r0, [fp, #-8]
80027850:	ebffef52 	bl	800235a0 <iunlockput>
80027854:	ebfff350 	bl	8002459c <commit_trans>
80027858:	e3a03000 	mov	r3, #0
8002785c:	e1a00003 	mov	r0, r3
80027860:	e24bd004 	sub	sp, fp, #4
80027864:	e8bd8800 	pop	{fp, pc}

80027868 <sys_mknod>:
80027868:	e92d4800 	push	{fp, lr}
8002786c:	e28db004 	add	fp, sp, #4
80027870:	e24dd018 	sub	sp, sp, #24
80027874:	ebfff334 	bl	8002454c <begin_trans>
80027878:	e24b3010 	sub	r3, fp, #16
8002787c:	e1a01003 	mov	r1, r3
80027880:	e3a00000 	mov	r0, #0
80027884:	ebfffc86 	bl	80026aa4 <argstr>
80027888:	e50b0008 	str	r0, [fp, #-8]
8002788c:	e51b3008 	ldr	r3, [fp, #-8]
80027890:	e3530000 	cmp	r3, #0
80027894:	ba000018 	blt	800278fc <sys_mknod+0x94>
80027898:	e24b3014 	sub	r3, fp, #20
8002789c:	e1a01003 	mov	r1, r3
800278a0:	e3a00001 	mov	r0, #1
800278a4:	ebfffc22 	bl	80026934 <argint>
800278a8:	e1a03000 	mov	r3, r0
800278ac:	e3530000 	cmp	r3, #0
800278b0:	ba000011 	blt	800278fc <sys_mknod+0x94>
800278b4:	e24b3018 	sub	r3, fp, #24
800278b8:	e1a01003 	mov	r1, r3
800278bc:	e3a00002 	mov	r0, #2
800278c0:	ebfffc1b 	bl	80026934 <argint>
800278c4:	e1a03000 	mov	r3, r0
800278c8:	e3530000 	cmp	r3, #0
800278cc:	ba00000a 	blt	800278fc <sys_mknod+0x94>
800278d0:	e51b0010 	ldr	r0, [fp, #-16]
800278d4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800278d8:	e6bf2073 	sxth	r2, r3
800278dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800278e0:	e6bf3073 	sxth	r3, r3
800278e4:	e3a01003 	mov	r1, #3
800278e8:	ebfffec9 	bl	80027414 <create>
800278ec:	e50b000c 	str	r0, [fp, #-12]
800278f0:	e51b300c 	ldr	r3, [fp, #-12]
800278f4:	e3530000 	cmp	r3, #0
800278f8:	1a000002 	bne	80027908 <sys_mknod+0xa0>
800278fc:	ebfff326 	bl	8002459c <commit_trans>
80027900:	e3e03000 	mvn	r3, #0
80027904:	ea000003 	b	80027918 <sys_mknod+0xb0>
80027908:	e51b000c 	ldr	r0, [fp, #-12]
8002790c:	ebffef23 	bl	800235a0 <iunlockput>
80027910:	ebfff321 	bl	8002459c <commit_trans>
80027914:	e3a03000 	mov	r3, #0
80027918:	e1a00003 	mov	r0, r3
8002791c:	e24bd004 	sub	sp, fp, #4
80027920:	e8bd8800 	pop	{fp, pc}

80027924 <sys_chdir>:
80027924:	e92d4800 	push	{fp, lr}
80027928:	e28db004 	add	fp, sp, #4
8002792c:	e24dd008 	sub	sp, sp, #8
80027930:	e24b300c 	sub	r3, fp, #12
80027934:	e1a01003 	mov	r1, r3
80027938:	e3a00000 	mov	r0, #0
8002793c:	ebfffc58 	bl	80026aa4 <argstr>
80027940:	e1a03000 	mov	r3, r0
80027944:	e3530000 	cmp	r3, #0
80027948:	ba000006 	blt	80027968 <sys_chdir+0x44>
8002794c:	e51b300c 	ldr	r3, [fp, #-12]
80027950:	e1a00003 	mov	r0, r3
80027954:	ebfff223 	bl	800241e8 <namei>
80027958:	e50b0008 	str	r0, [fp, #-8]
8002795c:	e51b3008 	ldr	r3, [fp, #-8]
80027960:	e3530000 	cmp	r3, #0
80027964:	1a000001 	bne	80027970 <sys_chdir+0x4c>
80027968:	e3e03000 	mvn	r3, #0
8002796c:	ea000015 	b	800279c8 <sys_chdir+0xa4>
80027970:	e51b0008 	ldr	r0, [fp, #-8]
80027974:	ebffee48 	bl	8002329c <ilock>
80027978:	e51b3008 	ldr	r3, [fp, #-8]
8002797c:	e1d331f0 	ldrsh	r3, [r3, #16]
80027980:	e3530001 	cmp	r3, #1
80027984:	0a000003 	beq	80027998 <sys_chdir+0x74>
80027988:	e51b0008 	ldr	r0, [fp, #-8]
8002798c:	ebffef03 	bl	800235a0 <iunlockput>
80027990:	e3e03000 	mvn	r3, #0
80027994:	ea00000b 	b	800279c8 <sys_chdir+0xa4>
80027998:	e51b0008 	ldr	r0, [fp, #-8]
8002799c:	ebffeea2 	bl	8002342c <iunlock>
800279a0:	e59f302c 	ldr	r3, [pc, #44]	@ 800279d4 <sys_chdir+0xb0>
800279a4:	e5933000 	ldr	r3, [r3]
800279a8:	e593306c 	ldr	r3, [r3, #108]	@ 0x6c
800279ac:	e1a00003 	mov	r0, r3
800279b0:	ebffeebf 	bl	800234b4 <iput>
800279b4:	e59f3018 	ldr	r3, [pc, #24]	@ 800279d4 <sys_chdir+0xb0>
800279b8:	e5933000 	ldr	r3, [r3]
800279bc:	e51b2008 	ldr	r2, [fp, #-8]
800279c0:	e583206c 	str	r2, [r3, #108]	@ 0x6c
800279c4:	e3a03000 	mov	r3, #0
800279c8:	e1a00003 	mov	r0, r3
800279cc:	e24bd004 	sub	sp, fp, #4
800279d0:	e8bd8800 	pop	{fp, pc}
800279d4:	800b0be0 	.word	0x800b0be0

800279d8 <sys_exec>:
800279d8:	e92d4800 	push	{fp, lr}
800279dc:	e28db004 	add	fp, sp, #4
800279e0:	e24dd090 	sub	sp, sp, #144	@ 0x90
800279e4:	e24b300c 	sub	r3, fp, #12
800279e8:	e1a01003 	mov	r1, r3
800279ec:	e3a00000 	mov	r0, #0
800279f0:	ebfffc2b 	bl	80026aa4 <argstr>
800279f4:	e1a03000 	mov	r3, r0
800279f8:	e3530000 	cmp	r3, #0
800279fc:	ba000006 	blt	80027a1c <sys_exec+0x44>
80027a00:	e24b3090 	sub	r3, fp, #144	@ 0x90
80027a04:	e1a01003 	mov	r1, r3
80027a08:	e3a00001 	mov	r0, #1
80027a0c:	ebfffbc8 	bl	80026934 <argint>
80027a10:	e1a03000 	mov	r3, r0
80027a14:	e3530000 	cmp	r3, #0
80027a18:	aa000001 	bge	80027a24 <sys_exec+0x4c>
80027a1c:	e3e03000 	mvn	r3, #0
80027a20:	ea00003a 	b	80027b10 <sys_exec+0x138>
80027a24:	e24b308c 	sub	r3, fp, #140	@ 0x8c
80027a28:	e3a02080 	mov	r2, #128	@ 0x80
80027a2c:	e3a01000 	mov	r1, #0
80027a30:	e1a00003 	mov	r0, r3
80027a34:	ebffe171 	bl	80020000 <memset>
80027a38:	e3a03000 	mov	r3, #0
80027a3c:	e50b3008 	str	r3, [fp, #-8]
80027a40:	e51b3008 	ldr	r3, [fp, #-8]
80027a44:	e353001f 	cmp	r3, #31
80027a48:	9a000001 	bls	80027a54 <sys_exec+0x7c>
80027a4c:	e3e03000 	mvn	r3, #0
80027a50:	ea00002e 	b	80027b10 <sys_exec+0x138>
80027a54:	e51b3008 	ldr	r3, [fp, #-8]
80027a58:	e1a03103 	lsl	r3, r3, #2
80027a5c:	e1a02003 	mov	r2, r3
80027a60:	e51b3090 	ldr	r3, [fp, #-144]	@ 0xffffff70
80027a64:	e0823003 	add	r3, r2, r3
80027a68:	e24b2094 	sub	r2, fp, #148	@ 0x94
80027a6c:	e1a01002 	mov	r1, r2
80027a70:	e1a00003 	mov	r0, r3
80027a74:	ebfffb62 	bl	80026804 <fetchint>
80027a78:	e1a03000 	mov	r3, r0
80027a7c:	e3530000 	cmp	r3, #0
80027a80:	aa000001 	bge	80027a8c <sys_exec+0xb4>
80027a84:	e3e03000 	mvn	r3, #0
80027a88:	ea000020 	b	80027b10 <sys_exec+0x138>
80027a8c:	e51b3094 	ldr	r3, [fp, #-148]	@ 0xffffff6c
80027a90:	e3530000 	cmp	r3, #0
80027a94:	1a00000d 	bne	80027ad0 <sys_exec+0xf8>
80027a98:	e51b3008 	ldr	r3, [fp, #-8]
80027a9c:	e1a03103 	lsl	r3, r3, #2
80027aa0:	e2433004 	sub	r3, r3, #4
80027aa4:	e083300b 	add	r3, r3, fp
80027aa8:	e3a02000 	mov	r2, #0
80027aac:	e5032088 	str	r2, [r3, #-136]	@ 0xffffff78
80027ab0:	e1a00000 	nop			@ (mov r0, r0)
80027ab4:	e51b300c 	ldr	r3, [fp, #-12]
80027ab8:	e24b208c 	sub	r2, fp, #140	@ 0x8c
80027abc:	e1a01002 	mov	r1, r2
80027ac0:	e1a00003 	mov	r0, r3
80027ac4:	ebffe9b1 	bl	80022190 <exec>
80027ac8:	e1a03000 	mov	r3, r0
80027acc:	ea00000f 	b	80027b10 <sys_exec+0x138>
80027ad0:	e51b0094 	ldr	r0, [fp, #-148]	@ 0xffffff6c
80027ad4:	e24b208c 	sub	r2, fp, #140	@ 0x8c
80027ad8:	e51b3008 	ldr	r3, [fp, #-8]
80027adc:	e1a03103 	lsl	r3, r3, #2
80027ae0:	e0823003 	add	r3, r2, r3
80027ae4:	e1a01003 	mov	r1, r3
80027ae8:	ebfffb63 	bl	8002687c <fetchstr>
80027aec:	e1a03000 	mov	r3, r0
80027af0:	e3530000 	cmp	r3, #0
80027af4:	aa000001 	bge	80027b00 <sys_exec+0x128>
80027af8:	e3e03000 	mvn	r3, #0
80027afc:	ea000003 	b	80027b10 <sys_exec+0x138>
80027b00:	e51b3008 	ldr	r3, [fp, #-8]
80027b04:	e2833001 	add	r3, r3, #1
80027b08:	e50b3008 	str	r3, [fp, #-8]
80027b0c:	eaffffcb 	b	80027a40 <sys_exec+0x68>
80027b10:	e1a00003 	mov	r0, r3
80027b14:	e24bd004 	sub	sp, fp, #4
80027b18:	e8bd8800 	pop	{fp, pc}

80027b1c <sys_pipe>:
80027b1c:	e92d4800 	push	{fp, lr}
80027b20:	e28db004 	add	fp, sp, #4
80027b24:	e24dd018 	sub	sp, sp, #24
80027b28:	e24b3010 	sub	r3, fp, #16
80027b2c:	e3a02008 	mov	r2, #8
80027b30:	e1a01003 	mov	r1, r3
80027b34:	e3a00000 	mov	r0, #0
80027b38:	ebfffb98 	bl	800269a0 <argptr>
80027b3c:	e1a03000 	mov	r3, r0
80027b40:	e3530000 	cmp	r3, #0
80027b44:	aa000001 	bge	80027b50 <sys_pipe+0x34>
80027b48:	e3e03000 	mvn	r3, #0
80027b4c:	ea000034 	b	80027c24 <sys_pipe+0x108>
80027b50:	e24b2018 	sub	r2, fp, #24
80027b54:	e24b3014 	sub	r3, fp, #20
80027b58:	e1a01002 	mov	r1, r2
80027b5c:	e1a00003 	mov	r0, r3
80027b60:	ebfff3a0 	bl	800249e8 <pipealloc>
80027b64:	e1a03000 	mov	r3, r0
80027b68:	e3530000 	cmp	r3, #0
80027b6c:	aa000001 	bge	80027b78 <sys_pipe+0x5c>
80027b70:	e3e03000 	mvn	r3, #0
80027b74:	ea00002a 	b	80027c24 <sys_pipe+0x108>
80027b78:	e3e03000 	mvn	r3, #0
80027b7c:	e50b3008 	str	r3, [fp, #-8]
80027b80:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027b84:	e1a00003 	mov	r0, r3
80027b88:	ebfffc49 	bl	80026cb4 <fdalloc>
80027b8c:	e50b0008 	str	r0, [fp, #-8]
80027b90:	e51b3008 	ldr	r3, [fp, #-8]
80027b94:	e3530000 	cmp	r3, #0
80027b98:	ba000006 	blt	80027bb8 <sys_pipe+0x9c>
80027b9c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027ba0:	e1a00003 	mov	r0, r3
80027ba4:	ebfffc42 	bl	80026cb4 <fdalloc>
80027ba8:	e50b000c 	str	r0, [fp, #-12]
80027bac:	e51b300c 	ldr	r3, [fp, #-12]
80027bb0:	e3530000 	cmp	r3, #0
80027bb4:	aa000012 	bge	80027c04 <sys_pipe+0xe8>
80027bb8:	e51b3008 	ldr	r3, [fp, #-8]
80027bbc:	e3530000 	cmp	r3, #0
80027bc0:	ba000007 	blt	80027be4 <sys_pipe+0xc8>
80027bc4:	e59f3064 	ldr	r3, [pc, #100]	@ 80027c30 <sys_pipe+0x114>
80027bc8:	e5932000 	ldr	r2, [r3]
80027bcc:	e51b3008 	ldr	r3, [fp, #-8]
80027bd0:	e283300a 	add	r3, r3, #10
80027bd4:	e1a03103 	lsl	r3, r3, #2
80027bd8:	e0823003 	add	r3, r2, r3
80027bdc:	e3a02000 	mov	r2, #0
80027be0:	e5832004 	str	r2, [r3, #4]
80027be4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027be8:	e1a00003 	mov	r0, r3
80027bec:	ebffeadf 	bl	80022770 <fileclose>
80027bf0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027bf4:	e1a00003 	mov	r0, r3
80027bf8:	ebffeadc 	bl	80022770 <fileclose>
80027bfc:	e3e03000 	mvn	r3, #0
80027c00:	ea000007 	b	80027c24 <sys_pipe+0x108>
80027c04:	e51b3010 	ldr	r3, [fp, #-16]
80027c08:	e51b2008 	ldr	r2, [fp, #-8]
80027c0c:	e5832000 	str	r2, [r3]
80027c10:	e51b3010 	ldr	r3, [fp, #-16]
80027c14:	e2833004 	add	r3, r3, #4
80027c18:	e51b200c 	ldr	r2, [fp, #-12]
80027c1c:	e5832000 	str	r2, [r3]
80027c20:	e3a03000 	mov	r3, #0
80027c24:	e1a00003 	mov	r0, r3
80027c28:	e24bd004 	sub	sp, fp, #4
80027c2c:	e8bd8800 	pop	{fp, pc}
80027c30:	800b0be0 	.word	0x800b0be0

80027c34 <sys_pgpte>:
80027c34:	e92d4800 	push	{fp, lr}
80027c38:	e28db004 	add	fp, sp, #4
80027c3c:	e24dd008 	sub	sp, sp, #8
80027c40:	e24b300c 	sub	r3, fp, #12
80027c44:	e1a01003 	mov	r1, r3
80027c48:	e3a00000 	mov	r0, #0
80027c4c:	ebfffb38 	bl	80026934 <argint>
80027c50:	e1a03000 	mov	r3, r0
80027c54:	e3530000 	cmp	r3, #0
80027c58:	aa000001 	bge	80027c64 <sys_pgpte+0x30>
80027c5c:	e3a03000 	mov	r3, #0
80027c60:	ea00000f 	b	80027ca4 <sys_pgpte+0x70>
80027c64:	e59f3044 	ldr	r3, [pc, #68]	@ 80027cb0 <sys_pgpte+0x7c>
80027c68:	e5933000 	ldr	r3, [r3]
80027c6c:	e5933004 	ldr	r3, [r3, #4]
80027c70:	e51b200c 	ldr	r2, [fp, #-12]
80027c74:	e1a01002 	mov	r1, r2
80027c78:	e3a02000 	mov	r2, #0
80027c7c:	e1a00003 	mov	r0, r3
80027c80:	eb0003c3 	bl	80028b94 <walkpgdir>
80027c84:	e50b0008 	str	r0, [fp, #-8]
80027c88:	e51b3008 	ldr	r3, [fp, #-8]
80027c8c:	e3530000 	cmp	r3, #0
80027c90:	1a000001 	bne	80027c9c <sys_pgpte+0x68>
80027c94:	e3a03000 	mov	r3, #0
80027c98:	ea000001 	b	80027ca4 <sys_pgpte+0x70>
80027c9c:	e51b3008 	ldr	r3, [fp, #-8]
80027ca0:	e5933000 	ldr	r3, [r3]
80027ca4:	e1a00003 	mov	r0, r3
80027ca8:	e24bd004 	sub	sp, fp, #4
80027cac:	e8bd8800 	pop	{fp, pc}
80027cb0:	800b0be0 	.word	0x800b0be0

80027cb4 <sys_getprocs>:
80027cb4:	e92d4800 	push	{fp, lr}
80027cb8:	e28db004 	add	fp, sp, #4
80027cbc:	e24dd010 	sub	sp, sp, #16
80027cc0:	e24b300c 	sub	r3, fp, #12
80027cc4:	e1a01003 	mov	r1, r3
80027cc8:	e3a00000 	mov	r0, #0
80027ccc:	ebfffb5c 	bl	80026a44 <argaddr>
80027cd0:	e1a03000 	mov	r3, r0
80027cd4:	e3530000 	cmp	r3, #0
80027cd8:	ba000006 	blt	80027cf8 <sys_getprocs+0x44>
80027cdc:	e24b3010 	sub	r3, fp, #16
80027ce0:	e1a01003 	mov	r1, r3
80027ce4:	e3a00001 	mov	r0, #1
80027ce8:	ebfffb11 	bl	80026934 <argint>
80027cec:	e1a03000 	mov	r3, r0
80027cf0:	e3530000 	cmp	r3, #0
80027cf4:	aa000001 	bge	80027d00 <sys_getprocs+0x4c>
80027cf8:	e3e03000 	mvn	r3, #0
80027cfc:	ea000004 	b	80027d14 <sys_getprocs+0x60>
80027d00:	e14b00dc 	ldrd	r0, [fp, #-12]
80027d04:	e51b3010 	ldr	r3, [fp, #-16]
80027d08:	e1a02003 	mov	r2, r3
80027d0c:	ebfff50b 	bl	80025140 <getprocs>
80027d10:	e1a03000 	mov	r3, r0
80027d14:	e1a00003 	mov	r0, r3
80027d18:	e24bd004 	sub	sp, fp, #4
80027d1c:	e8bd8800 	pop	{fp, pc}

80027d20 <sys_fork>:
80027d20:	e92d4800 	push	{fp, lr}
80027d24:	e28db004 	add	fp, sp, #4
80027d28:	ebfff674 	bl	80025700 <fork>
80027d2c:	e1a03000 	mov	r3, r0
80027d30:	e1a00003 	mov	r0, r3
80027d34:	e8bd8800 	pop	{fp, pc}

80027d38 <sys_exit>:
80027d38:	e92d4800 	push	{fp, lr}
80027d3c:	e28db004 	add	fp, sp, #4
80027d40:	ebfff6f0 	bl	80025908 <exit>
80027d44:	e3a03000 	mov	r3, #0
80027d48:	e1a00003 	mov	r0, r3
80027d4c:	e8bd8800 	pop	{fp, pc}

80027d50 <sys_wait>:
80027d50:	e92d4800 	push	{fp, lr}
80027d54:	e28db004 	add	fp, sp, #4
80027d58:	ebfff752 	bl	80025aa8 <wait>
80027d5c:	e1a03000 	mov	r3, r0
80027d60:	e1a00003 	mov	r0, r3
80027d64:	e8bd8800 	pop	{fp, pc}

80027d68 <sys_kill>:
80027d68:	e92d4800 	push	{fp, lr}
80027d6c:	e28db004 	add	fp, sp, #4
80027d70:	e24dd008 	sub	sp, sp, #8
80027d74:	e24b3008 	sub	r3, fp, #8
80027d78:	e1a01003 	mov	r1, r3
80027d7c:	e3a00000 	mov	r0, #0
80027d80:	ebfffaeb 	bl	80026934 <argint>
80027d84:	e1a03000 	mov	r3, r0
80027d88:	e3530000 	cmp	r3, #0
80027d8c:	aa000001 	bge	80027d98 <sys_kill+0x30>
80027d90:	e3e03000 	mvn	r3, #0
80027d94:	ea000003 	b	80027da8 <sys_kill+0x40>
80027d98:	e51b3008 	ldr	r3, [fp, #-8]
80027d9c:	e1a00003 	mov	r0, r3
80027da0:	ebfff93e 	bl	800262a0 <kill>
80027da4:	e1a03000 	mov	r3, r0
80027da8:	e1a00003 	mov	r0, r3
80027dac:	e24bd004 	sub	sp, fp, #4
80027db0:	e8bd8800 	pop	{fp, pc}

80027db4 <sys_getpid>:
80027db4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80027db8:	e28db000 	add	fp, sp, #0
80027dbc:	e59f3014 	ldr	r3, [pc, #20]	@ 80027dd8 <sys_getpid+0x24>
80027dc0:	e5933000 	ldr	r3, [r3]
80027dc4:	e5933014 	ldr	r3, [r3, #20]
80027dc8:	e1a00003 	mov	r0, r3
80027dcc:	e28bd000 	add	sp, fp, #0
80027dd0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80027dd4:	e12fff1e 	bx	lr
80027dd8:	800b0be0 	.word	0x800b0be0

80027ddc <sys_sbrk>:
80027ddc:	e92d4800 	push	{fp, lr}
80027de0:	e28db004 	add	fp, sp, #4
80027de4:	e24dd008 	sub	sp, sp, #8
80027de8:	e24b300c 	sub	r3, fp, #12
80027dec:	e1a01003 	mov	r1, r3
80027df0:	e3a00000 	mov	r0, #0
80027df4:	ebffface 	bl	80026934 <argint>
80027df8:	e1a03000 	mov	r3, r0
80027dfc:	e3530000 	cmp	r3, #0
80027e00:	aa000001 	bge	80027e0c <sys_sbrk+0x30>
80027e04:	e3e03000 	mvn	r3, #0
80027e08:	ea00000c 	b	80027e40 <sys_sbrk+0x64>
80027e0c:	e59f3038 	ldr	r3, [pc, #56]	@ 80027e4c <sys_sbrk+0x70>
80027e10:	e5933000 	ldr	r3, [r3]
80027e14:	e5933000 	ldr	r3, [r3]
80027e18:	e50b3008 	str	r3, [fp, #-8]
80027e1c:	e51b300c 	ldr	r3, [fp, #-12]
80027e20:	e1a00003 	mov	r0, r3
80027e24:	ebfff5fa 	bl	80025614 <growproc>
80027e28:	e1a03000 	mov	r3, r0
80027e2c:	e3530000 	cmp	r3, #0
80027e30:	aa000001 	bge	80027e3c <sys_sbrk+0x60>
80027e34:	e3e03000 	mvn	r3, #0
80027e38:	ea000000 	b	80027e40 <sys_sbrk+0x64>
80027e3c:	e51b3008 	ldr	r3, [fp, #-8]
80027e40:	e1a00003 	mov	r0, r3
80027e44:	e24bd004 	sub	sp, fp, #4
80027e48:	e8bd8800 	pop	{fp, pc}
80027e4c:	800b0be0 	.word	0x800b0be0

80027e50 <sys_sleep>:
80027e50:	e92d4800 	push	{fp, lr}
80027e54:	e28db004 	add	fp, sp, #4
80027e58:	e24dd008 	sub	sp, sp, #8
80027e5c:	e24b3008 	sub	r3, fp, #8
80027e60:	e1a01003 	mov	r1, r3
80027e64:	e3a00000 	mov	r0, #0
80027e68:	ebfffab1 	bl	80026934 <argint>
80027e6c:	e1a03000 	mov	r3, r0
80027e70:	e3530000 	cmp	r3, #0
80027e74:	ba000002 	blt	80027e84 <sys_sleep+0x34>
80027e78:	e51b3008 	ldr	r3, [fp, #-8]
80027e7c:	e3530000 	cmp	r3, #0
80027e80:	aa000001 	bge	80027e8c <sys_sleep+0x3c>
80027e84:	e3e03000 	mvn	r3, #0
80027e88:	ea00000f 	b	80027ecc <sys_sleep+0x7c>
80027e8c:	e59f0044 	ldr	r0, [pc, #68]	@ 80027ed8 <sys_sleep+0x88>
80027e90:	ebfffa36 	bl	80026770 <acquire>
80027e94:	e59f3040 	ldr	r3, [pc, #64]	@ 80027edc <sys_sleep+0x8c>
80027e98:	e5932000 	ldr	r2, [r3]
80027e9c:	e51b3008 	ldr	r3, [fp, #-8]
80027ea0:	e1a01003 	mov	r1, r3
80027ea4:	e59f3034 	ldr	r3, [pc, #52]	@ 80027ee0 <sys_sleep+0x90>
80027ea8:	e5933000 	ldr	r3, [r3]
80027eac:	e0822001 	add	r2, r2, r1
80027eb0:	e583208c 	str	r2, [r3, #140]	@ 0x8c
80027eb4:	e59f101c 	ldr	r1, [pc, #28]	@ 80027ed8 <sys_sleep+0x88>
80027eb8:	e59f001c 	ldr	r0, [pc, #28]	@ 80027edc <sys_sleep+0x8c>
80027ebc:	ebfff865 	bl	80026058 <sleep>
80027ec0:	e59f0010 	ldr	r0, [pc, #16]	@ 80027ed8 <sys_sleep+0x88>
80027ec4:	ebfffa34 	bl	8002679c <release>
80027ec8:	e3a03000 	mov	r3, #0
80027ecc:	e1a00003 	mov	r0, r3
80027ed0:	e24bd004 	sub	sp, fp, #4
80027ed4:	e8bd8800 	pop	{fp, pc}
80027ed8:	800b0ca4 	.word	0x800b0ca4
80027edc:	800b0cd8 	.word	0x800b0cd8
80027ee0:	800b0be0 	.word	0x800b0be0

80027ee4 <sys_uptime>:
80027ee4:	e92d4800 	push	{fp, lr}
80027ee8:	e28db004 	add	fp, sp, #4
80027eec:	e24dd008 	sub	sp, sp, #8
80027ef0:	e59f0024 	ldr	r0, [pc, #36]	@ 80027f1c <sys_uptime+0x38>
80027ef4:	ebfffa1d 	bl	80026770 <acquire>
80027ef8:	e59f3020 	ldr	r3, [pc, #32]	@ 80027f20 <sys_uptime+0x3c>
80027efc:	e5933000 	ldr	r3, [r3]
80027f00:	e50b3008 	str	r3, [fp, #-8]
80027f04:	e59f0010 	ldr	r0, [pc, #16]	@ 80027f1c <sys_uptime+0x38>
80027f08:	ebfffa23 	bl	8002679c <release>
80027f0c:	e51b3008 	ldr	r3, [fp, #-8]
80027f10:	e1a00003 	mov	r0, r3
80027f14:	e24bd004 	sub	sp, fp, #4
80027f18:	e8bd8800 	pop	{fp, pc}
80027f1c:	800b0ca4 	.word	0x800b0ca4
80027f20:	800b0cd8 	.word	0x800b0cd8

80027f24 <sys_settickets>:
80027f24:	e92d4800 	push	{fp, lr}
80027f28:	e28db004 	add	fp, sp, #4
80027f2c:	e24dd008 	sub	sp, sp, #8
80027f30:	e24b3008 	sub	r3, fp, #8
80027f34:	e1a01003 	mov	r1, r3
80027f38:	e3a00000 	mov	r0, #0
80027f3c:	ebfffa7c 	bl	80026934 <argint>
80027f40:	e1a03000 	mov	r3, r0
80027f44:	e3530000 	cmp	r3, #0
80027f48:	ba000006 	blt	80027f68 <sys_settickets+0x44>
80027f4c:	e24b300c 	sub	r3, fp, #12
80027f50:	e1a01003 	mov	r1, r3
80027f54:	e3a00001 	mov	r0, #1
80027f58:	ebfffa75 	bl	80026934 <argint>
80027f5c:	e1a03000 	mov	r3, r0
80027f60:	e3530000 	cmp	r3, #0
80027f64:	aa000001 	bge	80027f70 <sys_settickets+0x4c>
80027f68:	e3e03000 	mvn	r3, #0
80027f6c:	ea00000a 	b	80027f9c <sys_settickets+0x78>
80027f70:	e51b300c 	ldr	r3, [fp, #-12]
80027f74:	e3530000 	cmp	r3, #0
80027f78:	ca000001 	bgt	80027f84 <sys_settickets+0x60>
80027f7c:	e3e03000 	mvn	r3, #0
80027f80:	ea000005 	b	80027f9c <sys_settickets+0x78>
80027f84:	e51b3008 	ldr	r3, [fp, #-8]
80027f88:	e51b200c 	ldr	r2, [fp, #-12]
80027f8c:	e1a01002 	mov	r1, r2
80027f90:	e1a00003 	mov	r0, r3
80027f94:	ebfff4d4 	bl	800252ec <sched_settickets>
80027f98:	e1a03000 	mov	r3, r0
80027f9c:	e1a00003 	mov	r0, r3
80027fa0:	e24bd004 	sub	sp, fp, #4
80027fa4:	e8bd8800 	pop	{fp, pc}

80027fa8 <sys_srand>:
80027fa8:	e92d4800 	push	{fp, lr}
80027fac:	e28db004 	add	fp, sp, #4
80027fb0:	e24dd008 	sub	sp, sp, #8
80027fb4:	e24b3008 	sub	r3, fp, #8
80027fb8:	e1a01003 	mov	r1, r3
80027fbc:	e3a00000 	mov	r0, #0
80027fc0:	ebfffa5b 	bl	80026934 <argint>
80027fc4:	e1a03000 	mov	r3, r0
80027fc8:	e3530000 	cmp	r3, #0
80027fcc:	aa000001 	bge	80027fd8 <sys_srand+0x30>
80027fd0:	e3e03000 	mvn	r3, #0
80027fd4:	ea000004 	b	80027fec <sys_srand+0x44>
80027fd8:	e51b3008 	ldr	r3, [fp, #-8]
80027fdc:	e1a02003 	mov	r2, r3
80027fe0:	e59f3010 	ldr	r3, [pc, #16]	@ 80027ff8 <sys_srand+0x50>
80027fe4:	e5832000 	str	r2, [r3]
80027fe8:	e3a03000 	mov	r3, #0
80027fec:	e1a00003 	mov	r0, r3
80027ff0:	e24bd004 	sub	sp, fp, #4
80027ff4:	e8bd8800 	pop	{fp, pc}
80027ff8:	800ae6a4 	.word	0x800ae6a4

80027ffc <sys_getpinfo>:
80027ffc:	e92d4800 	push	{fp, lr}
80028000:	e28db004 	add	fp, sp, #4
80028004:	e24dd008 	sub	sp, sp, #8
80028008:	e24b3008 	sub	r3, fp, #8
8002800c:	e3a02c05 	mov	r2, #1280	@ 0x500
80028010:	e1a01003 	mov	r1, r3
80028014:	e3a00000 	mov	r0, #0
80028018:	ebfffa60 	bl	800269a0 <argptr>
8002801c:	e1a03000 	mov	r3, r0
80028020:	e3530000 	cmp	r3, #0
80028024:	aa000001 	bge	80028030 <sys_getpinfo+0x34>
80028028:	e3e03000 	mvn	r3, #0
8002802c:	ea000003 	b	80028040 <sys_getpinfo+0x44>
80028030:	e51b3008 	ldr	r3, [fp, #-8]
80028034:	e1a00003 	mov	r0, r3
80028038:	ebfff4da 	bl	800253a8 <sched_getpinfo>
8002803c:	e1a03000 	mov	r3, r0
80028040:	e1a00003 	mov	r0, r3
80028044:	e24bd004 	sub	sp, fp, #4
80028048:	e8bd8800 	pop	{fp, pc}

8002804c <sys_thread_create>:
8002804c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028050:	e28db000 	add	fp, sp, #0
80028054:	e3e03000 	mvn	r3, #0
80028058:	e1a00003 	mov	r0, r3
8002805c:	e28bd000 	add	sp, fp, #0
80028060:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028064:	e12fff1e 	bx	lr

80028068 <sys_thread_exit>:
80028068:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002806c:	e28db000 	add	fp, sp, #0
80028070:	e3e03000 	mvn	r3, #0
80028074:	e1a00003 	mov	r0, r3
80028078:	e28bd000 	add	sp, fp, #0
8002807c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028080:	e12fff1e 	bx	lr

80028084 <sys_thread_join>:
80028084:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028088:	e28db000 	add	fp, sp, #0
8002808c:	e3e03000 	mvn	r3, #0
80028090:	e1a00003 	mov	r0, r3
80028094:	e28bd000 	add	sp, fp, #0
80028098:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002809c:	e12fff1e 	bx	lr

800280a0 <sys_barrier_init>:
800280a0:	e92d4800 	push	{fp, lr}
800280a4:	e28db004 	add	fp, sp, #4
800280a8:	e24dd008 	sub	sp, sp, #8
800280ac:	e24b3008 	sub	r3, fp, #8
800280b0:	e1a01003 	mov	r1, r3
800280b4:	e3a00000 	mov	r0, #0
800280b8:	ebfffa1d 	bl	80026934 <argint>
800280bc:	e1a03000 	mov	r3, r0
800280c0:	e3530000 	cmp	r3, #0
800280c4:	aa000001 	bge	800280d0 <sys_barrier_init+0x30>
800280c8:	e3e03000 	mvn	r3, #0
800280cc:	ea000003 	b	800280e0 <sys_barrier_init+0x40>
800280d0:	e51b3008 	ldr	r3, [fp, #-8]
800280d4:	e1a00003 	mov	r0, r3
800280d8:	ebffe1fc 	bl	800208d0 <barrier_init>
800280dc:	e1a03000 	mov	r3, r0
800280e0:	e1a00003 	mov	r0, r3
800280e4:	e24bd004 	sub	sp, fp, #4
800280e8:	e8bd8800 	pop	{fp, pc}

800280ec <sys_barrier_check>:
800280ec:	e92d4800 	push	{fp, lr}
800280f0:	e28db004 	add	fp, sp, #4
800280f4:	ebffe214 	bl	8002094c <barrier_check>
800280f8:	e1a03000 	mov	r3, r0
800280fc:	e1a00003 	mov	r0, r3
80028100:	e8bd8800 	pop	{fp, pc}

80028104 <sys_waitpid>:
80028104:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028108:	e28db000 	add	fp, sp, #0
8002810c:	e3e03000 	mvn	r3, #0
80028110:	e1a00003 	mov	r0, r3
80028114:	e28bd000 	add	sp, fp, #0
80028118:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002811c:	e12fff1e 	bx	lr

80028120 <sys_sleepChan>:
80028120:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028124:	e28db000 	add	fp, sp, #0
80028128:	e3e03000 	mvn	r3, #0
8002812c:	e1a00003 	mov	r0, r3
80028130:	e28bd000 	add	sp, fp, #0
80028134:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028138:	e12fff1e 	bx	lr

8002813c <sys_getChannel>:
8002813c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028140:	e28db000 	add	fp, sp, #0
80028144:	e3e03000 	mvn	r3, #0
80028148:	e1a00003 	mov	r0, r3
8002814c:	e28bd000 	add	sp, fp, #0
80028150:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028154:	e12fff1e 	bx	lr

80028158 <sys_sigChan>:
80028158:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002815c:	e28db000 	add	fp, sp, #0
80028160:	e3e03000 	mvn	r3, #0
80028164:	e1a00003 	mov	r0, r3
80028168:	e28bd000 	add	sp, fp, #0
8002816c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028170:	e12fff1e 	bx	lr

80028174 <sys_sigOneChan>:
80028174:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028178:	e28db000 	add	fp, sp, #0
8002817c:	e3e03000 	mvn	r3, #0
80028180:	e1a00003 	mov	r0, r3
80028184:	e28bd000 	add	sp, fp, #0
80028188:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002818c:	e12fff1e 	bx	lr

80028190 <trap_swi>:
80028190:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80028194:	e14f2000 	mrs	r2, SPSR
80028198:	e92d0004 	stmfd	sp!, {r2}
8002819c:	e92d4000 	stmfd	sp!, {lr}
800281a0:	e94d6000 	stmdb	sp, {sp, lr}^
800281a4:	e24dd008 	sub	sp, sp, #8
800281a8:	e1a0000d 	mov	r0, sp
800281ac:	eb00005e 	bl	8002832c <swi_handler>

800281b0 <trapret>:
800281b0:	e8dd6000 	ldm	sp, {sp, lr}^
800281b4:	e28dd008 	add	sp, sp, #8
800281b8:	e8bd4000 	ldmfd	sp!, {lr}
800281bc:	e8bd0004 	ldmfd	sp!, {r2}
800281c0:	e16ff002 	msr	SPSR_fsxc, r2
800281c4:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^

800281c8 <trap_irq>:
800281c8:	e24ee004 	sub	lr, lr, #4
800281cc:	e92d4007 	push	{r0, r1, r2, lr}
800281d0:	e14f1000 	mrs	r1, SPSR
800281d4:	e1a0000d 	mov	r0, sp
800281d8:	e28dd010 	add	sp, sp, #16
800281dc:	e10f2000 	mrs	r2, CPSR
800281e0:	e3c2201f 	bic	r2, r2, #31
800281e4:	e3822013 	orr	r2, r2, #19
800281e8:	e12ff002 	msr	CPSR_fsxc, r2
800281ec:	e590200c 	ldr	r2, [r0, #12]
800281f0:	e92d0004 	stmfd	sp!, {r2}
800281f4:	e92d1ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
800281f8:	e8900038 	ldm	r0, {r3, r4, r5}
800281fc:	e92d0038 	push	{r3, r4, r5}
80028200:	e92d0002 	stmfd	sp!, {r1}
80028204:	e92d4000 	stmfd	sp!, {lr}
80028208:	e94d6000 	stmdb	sp, {sp, lr}^
8002820c:	e24dd008 	sub	sp, sp, #8
80028210:	e1a0000d 	mov	r0, sp
80028214:	eb000051 	bl	80028360 <irq_handler>
80028218:	eaffffe4 	b	800281b0 <trapret>

8002821c <trap_reset>:
8002821c:	e3a0e000 	mov	lr, #0
80028220:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80028224:	e14f2000 	mrs	r2, SPSR
80028228:	e92d0004 	stmfd	sp!, {r2}
8002822c:	e92d4000 	stmfd	sp!, {lr}
80028230:	e94d6000 	stmdb	sp, {sp, lr}^
80028234:	e24dd008 	sub	sp, sp, #8
80028238:	e1a0000d 	mov	r0, sp
8002823c:	eb000059 	bl	800283a8 <reset_handler>
80028240:	eafffffe 	b	80028240 <trap_reset+0x24>

80028244 <trap_und>:
80028244:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80028248:	e14f2000 	mrs	r2, SPSR
8002824c:	e92d0004 	stmfd	sp!, {r2}
80028250:	e92d4000 	stmfd	sp!, {lr}
80028254:	e94d6000 	stmdb	sp, {sp, lr}^
80028258:	e24dd008 	sub	sp, sp, #8
8002825c:	e1a0000d 	mov	r0, sp
80028260:	eb00005e 	bl	800283e0 <und_handler>
80028264:	eafffffe 	b	80028264 <trap_und+0x20>

80028268 <trap_iabort>:
80028268:	e24ee004 	sub	lr, lr, #4
8002826c:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80028270:	e14f2000 	mrs	r2, SPSR
80028274:	e92d0004 	stmfd	sp!, {r2}
80028278:	e92d4000 	stmfd	sp!, {lr}
8002827c:	e94d6000 	stmdb	sp, {sp, lr}^
80028280:	e24dd008 	sub	sp, sp, #8
80028284:	e1a0000d 	mov	r0, sp
80028288:	eb0000a8 	bl	80028530 <iabort_handler>
8002828c:	eafffffe 	b	8002828c <trap_iabort+0x24>

80028290 <trap_dabort>:
80028290:	e24ee008 	sub	lr, lr, #8
80028294:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80028298:	e14f2000 	mrs	r2, SPSR
8002829c:	e92d0004 	stmfd	sp!, {r2}
800282a0:	e92d4000 	stmfd	sp!, {lr}
800282a4:	e94d6000 	stmdb	sp, {sp, lr}^
800282a8:	e24dd008 	sub	sp, sp, #8
800282ac:	e1a0000d 	mov	r0, sp
800282b0:	eb000058 	bl	80028418 <dabort_handler>
800282b4:	eafffffe 	b	800282b4 <trap_dabort+0x24>

800282b8 <trap_na>:
800282b8:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
800282bc:	e14f2000 	mrs	r2, SPSR
800282c0:	e92d0004 	stmfd	sp!, {r2}
800282c4:	e92d4000 	stmfd	sp!, {lr}
800282c8:	e94d6000 	stmdb	sp, {sp, lr}^
800282cc:	e24dd008 	sub	sp, sp, #8
800282d0:	e1a0000d 	mov	r0, sp
800282d4:	eb0000a8 	bl	8002857c <na_handler>
800282d8:	eafffffe 	b	800282d8 <trap_na+0x20>

800282dc <trap_fiq>:
800282dc:	e24ee004 	sub	lr, lr, #4
800282e0:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
800282e4:	e14f2000 	mrs	r2, SPSR
800282e8:	e92d0004 	stmfd	sp!, {r2}
800282ec:	e92d4000 	stmfd	sp!, {lr}
800282f0:	e94d6000 	stmdb	sp, {sp, lr}^
800282f4:	e24dd008 	sub	sp, sp, #8
800282f8:	e1a0000d 	mov	r0, sp
800282fc:	eb0000ac 	bl	800285b4 <fiq_handler>
80028300:	eafffffe 	b	80028300 <trap_fiq+0x24>

80028304 <v2p>:
80028304:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028308:	e28db000 	add	fp, sp, #0
8002830c:	e24dd00c 	sub	sp, sp, #12
80028310:	e50b0008 	str	r0, [fp, #-8]
80028314:	e51b3008 	ldr	r3, [fp, #-8]
80028318:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
8002831c:	e1a00003 	mov	r0, r3
80028320:	e28bd000 	add	sp, fp, #0
80028324:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028328:	e12fff1e 	bx	lr

8002832c <swi_handler>:
8002832c:	e92d4800 	push	{fp, lr}
80028330:	e28db004 	add	fp, sp, #4
80028334:	e24dd008 	sub	sp, sp, #8
80028338:	e50b0008 	str	r0, [fp, #-8]
8002833c:	e59f3018 	ldr	r3, [pc, #24]	@ 8002835c <swi_handler+0x30>
80028340:	e5933000 	ldr	r3, [r3]
80028344:	e51b2008 	ldr	r2, [fp, #-8]
80028348:	e583201c 	str	r2, [r3, #28]
8002834c:	ebfff9ea 	bl	80026afc <syscall>
80028350:	e1a00000 	nop			@ (mov r0, r0)
80028354:	e24bd004 	sub	sp, fp, #4
80028358:	e8bd8800 	pop	{fp, pc}
8002835c:	800b0be0 	.word	0x800b0be0

80028360 <irq_handler>:
80028360:	e92d4800 	push	{fp, lr}
80028364:	e28db004 	add	fp, sp, #4
80028368:	e24dd008 	sub	sp, sp, #8
8002836c:	e50b0008 	str	r0, [fp, #-8]
80028370:	e59f302c 	ldr	r3, [pc, #44]	@ 800283a4 <irq_handler+0x44>
80028374:	e5933000 	ldr	r3, [r3]
80028378:	e3530000 	cmp	r3, #0
8002837c:	0a000003 	beq	80028390 <irq_handler+0x30>
80028380:	e59f301c 	ldr	r3, [pc, #28]	@ 800283a4 <irq_handler+0x44>
80028384:	e5933000 	ldr	r3, [r3]
80028388:	e51b2008 	ldr	r2, [fp, #-8]
8002838c:	e583201c 	str	r2, [r3, #28]
80028390:	e51b0008 	ldr	r0, [fp, #-8]
80028394:	eb00050a 	bl	800297c4 <pic_dispatch>
80028398:	e1a00000 	nop			@ (mov r0, r0)
8002839c:	e24bd004 	sub	sp, fp, #4
800283a0:	e8bd8800 	pop	{fp, pc}
800283a4:	800b0be0 	.word	0x800b0be0

800283a8 <reset_handler>:
800283a8:	e92d4800 	push	{fp, lr}
800283ac:	e28db004 	add	fp, sp, #4
800283b0:	e24dd008 	sub	sp, sp, #8
800283b4:	e50b0008 	str	r0, [fp, #-8]
800283b8:	ebffe060 	bl	80020540 <cli>
800283bc:	e51b3008 	ldr	r3, [fp, #-8]
800283c0:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800283c4:	e1a01003 	mov	r1, r3
800283c8:	e59f000c 	ldr	r0, [pc, #12]	@ 800283dc <reset_handler+0x34>
800283cc:	ebffe580 	bl	800219d4 <cprintf>
800283d0:	e1a00000 	nop			@ (mov r0, r0)
800283d4:	e24bd004 	sub	sp, fp, #4
800283d8:	e8bd8800 	pop	{fp, pc}
800283dc:	8002a44c 	.word	0x8002a44c

800283e0 <und_handler>:
800283e0:	e92d4800 	push	{fp, lr}
800283e4:	e28db004 	add	fp, sp, #4
800283e8:	e24dd008 	sub	sp, sp, #8
800283ec:	e50b0008 	str	r0, [fp, #-8]
800283f0:	ebffe052 	bl	80020540 <cli>
800283f4:	e51b3008 	ldr	r3, [fp, #-8]
800283f8:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800283fc:	e1a01003 	mov	r1, r3
80028400:	e59f000c 	ldr	r0, [pc, #12]	@ 80028414 <und_handler+0x34>
80028404:	ebffe572 	bl	800219d4 <cprintf>
80028408:	e1a00000 	nop			@ (mov r0, r0)
8002840c:	e24bd004 	sub	sp, fp, #4
80028410:	e8bd8800 	pop	{fp, pc}
80028414:	8002a460 	.word	0x8002a460

80028418 <dabort_handler>:
80028418:	e92d4800 	push	{fp, lr}
8002841c:	e28db004 	add	fp, sp, #4
80028420:	e24dd018 	sub	sp, sp, #24
80028424:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80028428:	ebffe044 	bl	80020540 <cli>
8002842c:	ee153f10 	mrc	15, 0, r3, cr5, cr0, {0}
80028430:	e50b3008 	str	r3, [fp, #-8]
80028434:	ee163f10 	mrc	15, 0, r3, cr6, cr0, {0}
80028438:	e50b300c 	str	r3, [fp, #-12]
8002843c:	e59f30e0 	ldr	r3, [pc, #224]	@ 80028524 <dabort_handler+0x10c>
80028440:	e5933000 	ldr	r3, [r3]
80028444:	e3530000 	cmp	r3, #0
80028448:	0a00002b 	beq	800284fc <dabort_handler+0xe4>
8002844c:	e59f30d0 	ldr	r3, [pc, #208]	@ 80028524 <dabort_handler+0x10c>
80028450:	e5933000 	ldr	r3, [r3]
80028454:	e5933000 	ldr	r3, [r3]
80028458:	e51b200c 	ldr	r2, [fp, #-12]
8002845c:	e1520003 	cmp	r2, r3
80028460:	2a000025 	bcs	800284fc <dabort_handler+0xe4>
80028464:	e51b300c 	ldr	r3, [fp, #-12]
80028468:	e373021f 	cmn	r3, #-268435455	@ 0xf0000001
8002846c:	8a000022 	bhi	800284fc <dabort_handler+0xe4>
80028470:	e59f30ac 	ldr	r3, [pc, #172]	@ 80028524 <dabort_handler+0x10c>
80028474:	e5933000 	ldr	r3, [r3]
80028478:	e5933004 	ldr	r3, [r3, #4]
8002847c:	e51b100c 	ldr	r1, [fp, #-12]
80028480:	e3a02001 	mov	r2, #1
80028484:	e1a00003 	mov	r0, r3
80028488:	eb0001c1 	bl	80028b94 <walkpgdir>
8002848c:	e50b0010 	str	r0, [fp, #-16]
80028490:	e51b3010 	ldr	r3, [fp, #-16]
80028494:	e3530000 	cmp	r3, #0
80028498:	0a000017 	beq	800284fc <dabort_handler+0xe4>
8002849c:	e51b3010 	ldr	r3, [fp, #-16]
800284a0:	e5933000 	ldr	r3, [r3]
800284a4:	e2033003 	and	r3, r3, #3
800284a8:	e3530000 	cmp	r3, #0
800284ac:	1a000012 	bne	800284fc <dabort_handler+0xe4>
800284b0:	ebffe4ae 	bl	80021770 <alloc_page>
800284b4:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
800284b8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800284bc:	e3530000 	cmp	r3, #0
800284c0:	0a00000b 	beq	800284f4 <dabort_handler+0xdc>
800284c4:	e3a02a01 	mov	r2, #4096	@ 0x1000
800284c8:	e3a01000 	mov	r1, #0
800284cc:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800284d0:	ebffdeca 	bl	80020000 <memset>
800284d4:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800284d8:	ebffff89 	bl	80028304 <v2p>
800284dc:	e1a03000 	mov	r3, r0
800284e0:	e383203e 	orr	r2, r3, #62	@ 0x3e
800284e4:	e51b3010 	ldr	r3, [fp, #-16]
800284e8:	e5832000 	str	r2, [r3]
800284ec:	eb00021a 	bl	80028d5c <flush_tlb>
800284f0:	ea000009 	b	8002851c <dabort_handler+0x104>
800284f4:	e59f002c 	ldr	r0, [pc, #44]	@ 80028528 <dabort_handler+0x110>
800284f8:	ebffe535 	bl	800219d4 <cprintf>
800284fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028500:	e5931044 	ldr	r1, [r3, #68]	@ 0x44
80028504:	e51b3008 	ldr	r3, [fp, #-8]
80028508:	e51b200c 	ldr	r2, [fp, #-12]
8002850c:	e59f0018 	ldr	r0, [pc, #24]	@ 8002852c <dabort_handler+0x114>
80028510:	ebffe52f 	bl	800219d4 <cprintf>
80028514:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028518:	eb0000b4 	bl	800287f0 <dump_trapframe>
8002851c:	e24bd004 	sub	sp, fp, #4
80028520:	e8bd8800 	pop	{fp, pc}
80028524:	800b0be0 	.word	0x800b0be0
80028528:	8002a470 	.word	0x8002a470
8002852c:	8002a498 	.word	0x8002a498

80028530 <iabort_handler>:
80028530:	e92d4800 	push	{fp, lr}
80028534:	e28db004 	add	fp, sp, #4
80028538:	e24dd010 	sub	sp, sp, #16
8002853c:	e50b0010 	str	r0, [fp, #-16]
80028540:	ee153f10 	mrc	15, 0, r3, cr5, cr0, {0}
80028544:	e50b3008 	str	r3, [fp, #-8]
80028548:	ebffdffc 	bl	80020540 <cli>
8002854c:	e51b3010 	ldr	r3, [fp, #-16]
80028550:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80028554:	e51b2008 	ldr	r2, [fp, #-8]
80028558:	e1a01003 	mov	r1, r3
8002855c:	e59f0014 	ldr	r0, [pc, #20]	@ 80028578 <iabort_handler+0x48>
80028560:	ebffe51b 	bl	800219d4 <cprintf>
80028564:	e51b0010 	ldr	r0, [fp, #-16]
80028568:	eb0000a0 	bl	800287f0 <dump_trapframe>
8002856c:	e1a00000 	nop			@ (mov r0, r0)
80028570:	e24bd004 	sub	sp, fp, #4
80028574:	e8bd8800 	pop	{fp, pc}
80028578:	8002a4d8 	.word	0x8002a4d8

8002857c <na_handler>:
8002857c:	e92d4800 	push	{fp, lr}
80028580:	e28db004 	add	fp, sp, #4
80028584:	e24dd008 	sub	sp, sp, #8
80028588:	e50b0008 	str	r0, [fp, #-8]
8002858c:	ebffdfeb 	bl	80020540 <cli>
80028590:	e51b3008 	ldr	r3, [fp, #-8]
80028594:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80028598:	e1a01003 	mov	r1, r3
8002859c:	e59f000c 	ldr	r0, [pc, #12]	@ 800285b0 <na_handler+0x34>
800285a0:	ebffe50b 	bl	800219d4 <cprintf>
800285a4:	e1a00000 	nop			@ (mov r0, r0)
800285a8:	e24bd004 	sub	sp, fp, #4
800285ac:	e8bd8800 	pop	{fp, pc}
800285b0:	8002a500 	.word	0x8002a500

800285b4 <fiq_handler>:
800285b4:	e92d4800 	push	{fp, lr}
800285b8:	e28db004 	add	fp, sp, #4
800285bc:	e24dd008 	sub	sp, sp, #8
800285c0:	e50b0008 	str	r0, [fp, #-8]
800285c4:	ebffdfdd 	bl	80020540 <cli>
800285c8:	e51b3008 	ldr	r3, [fp, #-8]
800285cc:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800285d0:	e1a01003 	mov	r1, r3
800285d4:	e59f000c 	ldr	r0, [pc, #12]	@ 800285e8 <fiq_handler+0x34>
800285d8:	ebffe4fd 	bl	800219d4 <cprintf>
800285dc:	e1a00000 	nop			@ (mov r0, r0)
800285e0:	e24bd004 	sub	sp, fp, #4
800285e4:	e8bd8800 	pop	{fp, pc}
800285e8:	8002a510 	.word	0x8002a510

800285ec <trap_init>:
800285ec:	e92d4800 	push	{fp, lr}
800285f0:	e28db004 	add	fp, sp, #4
800285f4:	e24dd020 	sub	sp, sp, #32
800285f8:	e59f31c0 	ldr	r3, [pc, #448]	@ 800287c0 <trap_init+0x1d4>
800285fc:	e24bc020 	sub	ip, fp, #32
80028600:	e893000f 	ldm	r3, {r0, r1, r2, r3}
80028604:	e88c000f 	stm	ip, {r0, r1, r2, r3}
80028608:	e59f31b4 	ldr	r3, [pc, #436]	@ 800287c4 <trap_init+0x1d8>
8002860c:	e50b300c 	str	r3, [fp, #-12]
80028610:	e59f31b0 	ldr	r3, [pc, #432]	@ 800287c8 <trap_init+0x1dc>
80028614:	e5933000 	ldr	r3, [r3]
80028618:	e3832018 	orr	r2, r3, #24
8002861c:	e51b300c 	ldr	r3, [fp, #-12]
80028620:	e5832000 	str	r2, [r3]
80028624:	e59f319c 	ldr	r3, [pc, #412]	@ 800287c8 <trap_init+0x1dc>
80028628:	e5932000 	ldr	r2, [r3]
8002862c:	e51b300c 	ldr	r3, [fp, #-12]
80028630:	e2833004 	add	r3, r3, #4
80028634:	e3822018 	orr	r2, r2, #24
80028638:	e5832000 	str	r2, [r3]
8002863c:	e59f3184 	ldr	r3, [pc, #388]	@ 800287c8 <trap_init+0x1dc>
80028640:	e5932000 	ldr	r2, [r3]
80028644:	e51b300c 	ldr	r3, [fp, #-12]
80028648:	e2833008 	add	r3, r3, #8
8002864c:	e3822018 	orr	r2, r2, #24
80028650:	e5832000 	str	r2, [r3]
80028654:	e59f316c 	ldr	r3, [pc, #364]	@ 800287c8 <trap_init+0x1dc>
80028658:	e5932000 	ldr	r2, [r3]
8002865c:	e51b300c 	ldr	r3, [fp, #-12]
80028660:	e283300c 	add	r3, r3, #12
80028664:	e3822018 	orr	r2, r2, #24
80028668:	e5832000 	str	r2, [r3]
8002866c:	e59f3154 	ldr	r3, [pc, #340]	@ 800287c8 <trap_init+0x1dc>
80028670:	e5932000 	ldr	r2, [r3]
80028674:	e51b300c 	ldr	r3, [fp, #-12]
80028678:	e2833010 	add	r3, r3, #16
8002867c:	e3822018 	orr	r2, r2, #24
80028680:	e5832000 	str	r2, [r3]
80028684:	e59f313c 	ldr	r3, [pc, #316]	@ 800287c8 <trap_init+0x1dc>
80028688:	e5932000 	ldr	r2, [r3]
8002868c:	e51b300c 	ldr	r3, [fp, #-12]
80028690:	e2833014 	add	r3, r3, #20
80028694:	e3822018 	orr	r2, r2, #24
80028698:	e5832000 	str	r2, [r3]
8002869c:	e59f3124 	ldr	r3, [pc, #292]	@ 800287c8 <trap_init+0x1dc>
800286a0:	e5932000 	ldr	r2, [r3]
800286a4:	e51b300c 	ldr	r3, [fp, #-12]
800286a8:	e2833018 	add	r3, r3, #24
800286ac:	e3822018 	orr	r2, r2, #24
800286b0:	e5832000 	str	r2, [r3]
800286b4:	e59f310c 	ldr	r3, [pc, #268]	@ 800287c8 <trap_init+0x1dc>
800286b8:	e5932000 	ldr	r2, [r3]
800286bc:	e51b300c 	ldr	r3, [fp, #-12]
800286c0:	e283301c 	add	r3, r3, #28
800286c4:	e3822018 	orr	r2, r2, #24
800286c8:	e5832000 	str	r2, [r3]
800286cc:	e51b300c 	ldr	r3, [fp, #-12]
800286d0:	e2833020 	add	r3, r3, #32
800286d4:	e59f20f0 	ldr	r2, [pc, #240]	@ 800287cc <trap_init+0x1e0>
800286d8:	e5832000 	str	r2, [r3]
800286dc:	e51b300c 	ldr	r3, [fp, #-12]
800286e0:	e2833024 	add	r3, r3, #36	@ 0x24
800286e4:	e59f20e4 	ldr	r2, [pc, #228]	@ 800287d0 <trap_init+0x1e4>
800286e8:	e5832000 	str	r2, [r3]
800286ec:	e51b300c 	ldr	r3, [fp, #-12]
800286f0:	e2833028 	add	r3, r3, #40	@ 0x28
800286f4:	e59f20d8 	ldr	r2, [pc, #216]	@ 800287d4 <trap_init+0x1e8>
800286f8:	e5832000 	str	r2, [r3]
800286fc:	e51b300c 	ldr	r3, [fp, #-12]
80028700:	e283302c 	add	r3, r3, #44	@ 0x2c
80028704:	e59f20cc 	ldr	r2, [pc, #204]	@ 800287d8 <trap_init+0x1ec>
80028708:	e5832000 	str	r2, [r3]
8002870c:	e51b300c 	ldr	r3, [fp, #-12]
80028710:	e2833030 	add	r3, r3, #48	@ 0x30
80028714:	e59f20c0 	ldr	r2, [pc, #192]	@ 800287dc <trap_init+0x1f0>
80028718:	e5832000 	str	r2, [r3]
8002871c:	e51b300c 	ldr	r3, [fp, #-12]
80028720:	e2833034 	add	r3, r3, #52	@ 0x34
80028724:	e59f20b4 	ldr	r2, [pc, #180]	@ 800287e0 <trap_init+0x1f4>
80028728:	e5832000 	str	r2, [r3]
8002872c:	e51b300c 	ldr	r3, [fp, #-12]
80028730:	e2833038 	add	r3, r3, #56	@ 0x38
80028734:	e59f20a8 	ldr	r2, [pc, #168]	@ 800287e4 <trap_init+0x1f8>
80028738:	e5832000 	str	r2, [r3]
8002873c:	e51b300c 	ldr	r3, [fp, #-12]
80028740:	e283303c 	add	r3, r3, #60	@ 0x3c
80028744:	e59f209c 	ldr	r2, [pc, #156]	@ 800287e8 <trap_init+0x1fc>
80028748:	e5832000 	str	r2, [r3]
8002874c:	e3a03000 	mov	r3, #0
80028750:	e50b3008 	str	r3, [fp, #-8]
80028754:	ea000012 	b	800287a4 <trap_init+0x1b8>
80028758:	ebffe404 	bl	80021770 <alloc_page>
8002875c:	e50b0010 	str	r0, [fp, #-16]
80028760:	e51b3010 	ldr	r3, [fp, #-16]
80028764:	e3530000 	cmp	r3, #0
80028768:	1a000001 	bne	80028774 <trap_init+0x188>
8002876c:	e59f0078 	ldr	r0, [pc, #120]	@ 800287ec <trap_init+0x200>
80028770:	ebffe52f 	bl	80021c34 <panic>
80028774:	e51b3008 	ldr	r3, [fp, #-8]
80028778:	e1a03103 	lsl	r3, r3, #2
8002877c:	e2433004 	sub	r3, r3, #4
80028780:	e083300b 	add	r3, r3, fp
80028784:	e513301c 	ldr	r3, [r3, #-28]	@ 0xffffffe4
80028788:	e51b2010 	ldr	r2, [fp, #-16]
8002878c:	e1a01002 	mov	r1, r2
80028790:	e1a00003 	mov	r0, r3
80028794:	ebffe042 	bl	800208a4 <set_stk>
80028798:	e51b3008 	ldr	r3, [fp, #-8]
8002879c:	e2833001 	add	r3, r3, #1
800287a0:	e50b3008 	str	r3, [fp, #-8]
800287a4:	e51b3008 	ldr	r3, [fp, #-8]
800287a8:	e3530003 	cmp	r3, #3
800287ac:	9affffe9 	bls	80028758 <trap_init+0x16c>
800287b0:	e1a00000 	nop			@ (mov r0, r0)
800287b4:	e1a00000 	nop			@ (mov r0, r0)
800287b8:	e24bd004 	sub	sp, fp, #4
800287bc:	e8bd8800 	pop	{fp, pc}
800287c0:	8002a548 	.word	0x8002a548
800287c4:	ffff0000 	.word	0xffff0000
800287c8:	8002a658 	.word	0x8002a658
800287cc:	8002821c 	.word	0x8002821c
800287d0:	80028244 	.word	0x80028244
800287d4:	80028190 	.word	0x80028190
800287d8:	80028268 	.word	0x80028268
800287dc:	80028290 	.word	0x80028290
800287e0:	800282b8 	.word	0x800282b8
800287e4:	800281c8 	.word	0x800281c8
800287e8:	800282dc 	.word	0x800282dc
800287ec:	8002a520 	.word	0x8002a520

800287f0 <dump_trapframe>:
800287f0:	e92d4800 	push	{fp, lr}
800287f4:	e28db004 	add	fp, sp, #4
800287f8:	e24dd008 	sub	sp, sp, #8
800287fc:	e50b0008 	str	r0, [fp, #-8]
80028800:	e51b3008 	ldr	r3, [fp, #-8]
80028804:	e5933008 	ldr	r3, [r3, #8]
80028808:	e1a01003 	mov	r1, r3
8002880c:	e59f0138 	ldr	r0, [pc, #312]	@ 8002894c <dump_trapframe+0x15c>
80028810:	ebffe46f 	bl	800219d4 <cprintf>
80028814:	e51b3008 	ldr	r3, [fp, #-8]
80028818:	e593300c 	ldr	r3, [r3, #12]
8002881c:	e1a01003 	mov	r1, r3
80028820:	e59f0128 	ldr	r0, [pc, #296]	@ 80028950 <dump_trapframe+0x160>
80028824:	ebffe46a 	bl	800219d4 <cprintf>
80028828:	e51b3008 	ldr	r3, [fp, #-8]
8002882c:	e5933010 	ldr	r3, [r3, #16]
80028830:	e1a01003 	mov	r1, r3
80028834:	e59f0118 	ldr	r0, [pc, #280]	@ 80028954 <dump_trapframe+0x164>
80028838:	ebffe465 	bl	800219d4 <cprintf>
8002883c:	e51b3008 	ldr	r3, [fp, #-8]
80028840:	e5933014 	ldr	r3, [r3, #20]
80028844:	e1a01003 	mov	r1, r3
80028848:	e59f0108 	ldr	r0, [pc, #264]	@ 80028958 <dump_trapframe+0x168>
8002884c:	ebffe460 	bl	800219d4 <cprintf>
80028850:	e51b3008 	ldr	r3, [fp, #-8]
80028854:	e5933018 	ldr	r3, [r3, #24]
80028858:	e1a01003 	mov	r1, r3
8002885c:	e59f00f8 	ldr	r0, [pc, #248]	@ 8002895c <dump_trapframe+0x16c>
80028860:	ebffe45b 	bl	800219d4 <cprintf>
80028864:	e51b3008 	ldr	r3, [fp, #-8]
80028868:	e593301c 	ldr	r3, [r3, #28]
8002886c:	e1a01003 	mov	r1, r3
80028870:	e59f00e8 	ldr	r0, [pc, #232]	@ 80028960 <dump_trapframe+0x170>
80028874:	ebffe456 	bl	800219d4 <cprintf>
80028878:	e51b3008 	ldr	r3, [fp, #-8]
8002887c:	e5933020 	ldr	r3, [r3, #32]
80028880:	e1a01003 	mov	r1, r3
80028884:	e59f00d8 	ldr	r0, [pc, #216]	@ 80028964 <dump_trapframe+0x174>
80028888:	ebffe451 	bl	800219d4 <cprintf>
8002888c:	e51b3008 	ldr	r3, [fp, #-8]
80028890:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80028894:	e1a01003 	mov	r1, r3
80028898:	e59f00c8 	ldr	r0, [pc, #200]	@ 80028968 <dump_trapframe+0x178>
8002889c:	ebffe44c 	bl	800219d4 <cprintf>
800288a0:	e51b3008 	ldr	r3, [fp, #-8]
800288a4:	e5933028 	ldr	r3, [r3, #40]	@ 0x28
800288a8:	e1a01003 	mov	r1, r3
800288ac:	e59f00b8 	ldr	r0, [pc, #184]	@ 8002896c <dump_trapframe+0x17c>
800288b0:	ebffe447 	bl	800219d4 <cprintf>
800288b4:	e51b3008 	ldr	r3, [fp, #-8]
800288b8:	e593302c 	ldr	r3, [r3, #44]	@ 0x2c
800288bc:	e1a01003 	mov	r1, r3
800288c0:	e59f00a8 	ldr	r0, [pc, #168]	@ 80028970 <dump_trapframe+0x180>
800288c4:	ebffe442 	bl	800219d4 <cprintf>
800288c8:	e51b3008 	ldr	r3, [fp, #-8]
800288cc:	e5933030 	ldr	r3, [r3, #48]	@ 0x30
800288d0:	e1a01003 	mov	r1, r3
800288d4:	e59f0098 	ldr	r0, [pc, #152]	@ 80028974 <dump_trapframe+0x184>
800288d8:	ebffe43d 	bl	800219d4 <cprintf>
800288dc:	e51b3008 	ldr	r3, [fp, #-8]
800288e0:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
800288e4:	e1a01003 	mov	r1, r3
800288e8:	e59f0088 	ldr	r0, [pc, #136]	@ 80028978 <dump_trapframe+0x188>
800288ec:	ebffe438 	bl	800219d4 <cprintf>
800288f0:	e51b3008 	ldr	r3, [fp, #-8]
800288f4:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
800288f8:	e1a01003 	mov	r1, r3
800288fc:	e59f0078 	ldr	r0, [pc, #120]	@ 8002897c <dump_trapframe+0x18c>
80028900:	ebffe433 	bl	800219d4 <cprintf>
80028904:	e51b3008 	ldr	r3, [fp, #-8]
80028908:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
8002890c:	e1a01003 	mov	r1, r3
80028910:	e59f0068 	ldr	r0, [pc, #104]	@ 80028980 <dump_trapframe+0x190>
80028914:	ebffe42e 	bl	800219d4 <cprintf>
80028918:	e51b3008 	ldr	r3, [fp, #-8]
8002891c:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
80028920:	e1a01003 	mov	r1, r3
80028924:	e59f0058 	ldr	r0, [pc, #88]	@ 80028984 <dump_trapframe+0x194>
80028928:	ebffe429 	bl	800219d4 <cprintf>
8002892c:	e51b3008 	ldr	r3, [fp, #-8]
80028930:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80028934:	e1a01003 	mov	r1, r3
80028938:	e59f0048 	ldr	r0, [pc, #72]	@ 80028988 <dump_trapframe+0x198>
8002893c:	ebffe424 	bl	800219d4 <cprintf>
80028940:	e1a00000 	nop			@ (mov r0, r0)
80028944:	e24bd004 	sub	sp, fp, #4
80028948:	e8bd8800 	pop	{fp, pc}
8002894c:	8002a558 	.word	0x8002a558
80028950:	8002a568 	.word	0x8002a568
80028954:	8002a578 	.word	0x8002a578
80028958:	8002a588 	.word	0x8002a588
8002895c:	8002a598 	.word	0x8002a598
80028960:	8002a5a8 	.word	0x8002a5a8
80028964:	8002a5b8 	.word	0x8002a5b8
80028968:	8002a5c8 	.word	0x8002a5c8
8002896c:	8002a5d8 	.word	0x8002a5d8
80028970:	8002a5e8 	.word	0x8002a5e8
80028974:	8002a5f8 	.word	0x8002a5f8
80028978:	8002a608 	.word	0x8002a608
8002897c:	8002a618 	.word	0x8002a618
80028980:	8002a628 	.word	0x8002a628
80028984:	8002a638 	.word	0x8002a638
80028988:	8002a648 	.word	0x8002a648

8002898c <v2p>:
8002898c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028990:	e28db000 	add	fp, sp, #0
80028994:	e24dd00c 	sub	sp, sp, #12
80028998:	e50b0008 	str	r0, [fp, #-8]
8002899c:	e51b3008 	ldr	r3, [fp, #-8]
800289a0:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
800289a4:	e1a00003 	mov	r0, r3
800289a8:	e28bd000 	add	sp, fp, #0
800289ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800289b0:	e12fff1e 	bx	lr

800289b4 <p2v>:
800289b4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800289b8:	e28db000 	add	fp, sp, #0
800289bc:	e24dd00c 	sub	sp, sp, #12
800289c0:	e50b0008 	str	r0, [fp, #-8]
800289c4:	e51b3008 	ldr	r3, [fp, #-8]
800289c8:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
800289cc:	e1a00003 	mov	r0, r3
800289d0:	e28bd000 	add	sp, fp, #0
800289d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800289d8:	e12fff1e 	bx	lr

800289dc <init_vmm>:
800289dc:	e92d4800 	push	{fp, lr}
800289e0:	e28db004 	add	fp, sp, #4
800289e4:	e59f1018 	ldr	r1, [pc, #24]	@ 80028a04 <init_vmm+0x28>
800289e8:	e59f0018 	ldr	r0, [pc, #24]	@ 80028a08 <init_vmm+0x2c>
800289ec:	ebfff74d 	bl	80026728 <initlock>
800289f0:	e59f3010 	ldr	r3, [pc, #16]	@ 80028a08 <init_vmm+0x2c>
800289f4:	e3a02000 	mov	r2, #0
800289f8:	e5832034 	str	r2, [r3, #52]	@ 0x34
800289fc:	e1a00000 	nop			@ (mov r0, r0)
80028a00:	e8bd8800 	pop	{fp, pc}
80028a04:	8002a65c 	.word	0x8002a65c
80028a08:	800b0be8 	.word	0x800b0be8

80028a0c <_kpt_free>:
80028a0c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028a10:	e28db000 	add	fp, sp, #0
80028a14:	e24dd014 	sub	sp, sp, #20
80028a18:	e50b0010 	str	r0, [fp, #-16]
80028a1c:	e51b3010 	ldr	r3, [fp, #-16]
80028a20:	e50b3008 	str	r3, [fp, #-8]
80028a24:	e59f3024 	ldr	r3, [pc, #36]	@ 80028a50 <_kpt_free+0x44>
80028a28:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
80028a2c:	e51b3008 	ldr	r3, [fp, #-8]
80028a30:	e5832000 	str	r2, [r3]
80028a34:	e59f2014 	ldr	r2, [pc, #20]	@ 80028a50 <_kpt_free+0x44>
80028a38:	e51b3008 	ldr	r3, [fp, #-8]
80028a3c:	e5823034 	str	r3, [r2, #52]	@ 0x34
80028a40:	e1a00000 	nop			@ (mov r0, r0)
80028a44:	e28bd000 	add	sp, fp, #0
80028a48:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028a4c:	e12fff1e 	bx	lr
80028a50:	800b0be8 	.word	0x800b0be8

80028a54 <kpt_free>:
80028a54:	e92d4800 	push	{fp, lr}
80028a58:	e28db004 	add	fp, sp, #4
80028a5c:	e24dd008 	sub	sp, sp, #8
80028a60:	e50b0008 	str	r0, [fp, #-8]
80028a64:	e51b3008 	ldr	r3, [fp, #-8]
80028a68:	e59f2034 	ldr	r2, [pc, #52]	@ 80028aa4 <kpt_free+0x50>
80028a6c:	e1530002 	cmp	r3, r2
80028a70:	9a000003 	bls	80028a84 <kpt_free+0x30>
80028a74:	e3a0100a 	mov	r1, #10
80028a78:	e51b0008 	ldr	r0, [fp, #-8]
80028a7c:	ebffe30f 	bl	800216c0 <kfree>
80028a80:	ea000005 	b	80028a9c <kpt_free+0x48>
80028a84:	e59f001c 	ldr	r0, [pc, #28]	@ 80028aa8 <kpt_free+0x54>
80028a88:	ebfff738 	bl	80026770 <acquire>
80028a8c:	e51b0008 	ldr	r0, [fp, #-8]
80028a90:	ebffffdd 	bl	80028a0c <_kpt_free>
80028a94:	e59f000c 	ldr	r0, [pc, #12]	@ 80028aa8 <kpt_free+0x54>
80028a98:	ebfff73f 	bl	8002679c <release>
80028a9c:	e24bd004 	sub	sp, fp, #4
80028aa0:	e8bd8800 	pop	{fp, pc}
80028aa4:	800fffff 	.word	0x800fffff
80028aa8:	800b0be8 	.word	0x800b0be8

80028aac <kpt_freerange>:
80028aac:	e92d4800 	push	{fp, lr}
80028ab0:	e28db004 	add	fp, sp, #4
80028ab4:	e24dd008 	sub	sp, sp, #8
80028ab8:	e50b0008 	str	r0, [fp, #-8]
80028abc:	e50b100c 	str	r1, [fp, #-12]
80028ac0:	ea000005 	b	80028adc <kpt_freerange+0x30>
80028ac4:	e51b3008 	ldr	r3, [fp, #-8]
80028ac8:	e1a00003 	mov	r0, r3
80028acc:	ebffffce 	bl	80028a0c <_kpt_free>
80028ad0:	e51b3008 	ldr	r3, [fp, #-8]
80028ad4:	e2833b01 	add	r3, r3, #1024	@ 0x400
80028ad8:	e50b3008 	str	r3, [fp, #-8]
80028adc:	e51b2008 	ldr	r2, [fp, #-8]
80028ae0:	e51b300c 	ldr	r3, [fp, #-12]
80028ae4:	e1520003 	cmp	r2, r3
80028ae8:	3afffff5 	bcc	80028ac4 <kpt_freerange+0x18>
80028aec:	e1a00000 	nop			@ (mov r0, r0)
80028af0:	e1a00000 	nop			@ (mov r0, r0)
80028af4:	e24bd004 	sub	sp, fp, #4
80028af8:	e8bd8800 	pop	{fp, pc}

80028afc <kpt_alloc>:
80028afc:	e92d4800 	push	{fp, lr}
80028b00:	e28db004 	add	fp, sp, #4
80028b04:	e24dd008 	sub	sp, sp, #8
80028b08:	e59f007c 	ldr	r0, [pc, #124]	@ 80028b8c <kpt_alloc+0x90>
80028b0c:	ebfff717 	bl	80026770 <acquire>
80028b10:	e59f3074 	ldr	r3, [pc, #116]	@ 80028b8c <kpt_alloc+0x90>
80028b14:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80028b18:	e50b3008 	str	r3, [fp, #-8]
80028b1c:	e51b3008 	ldr	r3, [fp, #-8]
80028b20:	e3530000 	cmp	r3, #0
80028b24:	0a000003 	beq	80028b38 <kpt_alloc+0x3c>
80028b28:	e51b3008 	ldr	r3, [fp, #-8]
80028b2c:	e5933000 	ldr	r3, [r3]
80028b30:	e59f2054 	ldr	r2, [pc, #84]	@ 80028b8c <kpt_alloc+0x90>
80028b34:	e5823034 	str	r3, [r2, #52]	@ 0x34
80028b38:	e59f004c 	ldr	r0, [pc, #76]	@ 80028b8c <kpt_alloc+0x90>
80028b3c:	ebfff716 	bl	8002679c <release>
80028b40:	e51b3008 	ldr	r3, [fp, #-8]
80028b44:	e3530000 	cmp	r3, #0
80028b48:	1a000007 	bne	80028b6c <kpt_alloc+0x70>
80028b4c:	e3a0000a 	mov	r0, #10
80028b50:	ebffe283 	bl	80021564 <kmalloc>
80028b54:	e50b0008 	str	r0, [fp, #-8]
80028b58:	e51b3008 	ldr	r3, [fp, #-8]
80028b5c:	e3530000 	cmp	r3, #0
80028b60:	1a000001 	bne	80028b6c <kpt_alloc+0x70>
80028b64:	e59f0024 	ldr	r0, [pc, #36]	@ 80028b90 <kpt_alloc+0x94>
80028b68:	ebffe431 	bl	80021c34 <panic>
80028b6c:	e3a02b01 	mov	r2, #1024	@ 0x400
80028b70:	e3a01000 	mov	r1, #0
80028b74:	e51b0008 	ldr	r0, [fp, #-8]
80028b78:	ebffdd20 	bl	80020000 <memset>
80028b7c:	e51b3008 	ldr	r3, [fp, #-8]
80028b80:	e1a00003 	mov	r0, r3
80028b84:	e24bd004 	sub	sp, fp, #4
80028b88:	e8bd8800 	pop	{fp, pc}
80028b8c:	800b0be8 	.word	0x800b0be8
80028b90:	8002a660 	.word	0x8002a660

80028b94 <walkpgdir>:
80028b94:	e92d4800 	push	{fp, lr}
80028b98:	e28db004 	add	fp, sp, #4
80028b9c:	e24dd018 	sub	sp, sp, #24
80028ba0:	e50b0010 	str	r0, [fp, #-16]
80028ba4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80028ba8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80028bac:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028bb0:	e1a03a23 	lsr	r3, r3, #20
80028bb4:	e1a03103 	lsl	r3, r3, #2
80028bb8:	e51b2010 	ldr	r2, [fp, #-16]
80028bbc:	e0823003 	add	r3, r2, r3
80028bc0:	e50b300c 	str	r3, [fp, #-12]
80028bc4:	e51b300c 	ldr	r3, [fp, #-12]
80028bc8:	e5933000 	ldr	r3, [r3]
80028bcc:	e2033003 	and	r3, r3, #3
80028bd0:	e3530000 	cmp	r3, #0
80028bd4:	0a000007 	beq	80028bf8 <walkpgdir+0x64>
80028bd8:	e51b300c 	ldr	r3, [fp, #-12]
80028bdc:	e5933000 	ldr	r3, [r3]
80028be0:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
80028be4:	e3c33003 	bic	r3, r3, #3
80028be8:	e1a00003 	mov	r0, r3
80028bec:	ebffff70 	bl	800289b4 <p2v>
80028bf0:	e50b0008 	str	r0, [fp, #-8]
80028bf4:	ea000013 	b	80028c48 <walkpgdir+0xb4>
80028bf8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028bfc:	e3530000 	cmp	r3, #0
80028c00:	0a000004 	beq	80028c18 <walkpgdir+0x84>
80028c04:	ebffffbc 	bl	80028afc <kpt_alloc>
80028c08:	e50b0008 	str	r0, [fp, #-8]
80028c0c:	e51b3008 	ldr	r3, [fp, #-8]
80028c10:	e3530000 	cmp	r3, #0
80028c14:	1a000001 	bne	80028c20 <walkpgdir+0x8c>
80028c18:	e3a03000 	mov	r3, #0
80028c1c:	ea00000f 	b	80028c60 <walkpgdir+0xcc>
80028c20:	e3a02b01 	mov	r2, #1024	@ 0x400
80028c24:	e3a01000 	mov	r1, #0
80028c28:	e51b0008 	ldr	r0, [fp, #-8]
80028c2c:	ebffdcf3 	bl	80020000 <memset>
80028c30:	e51b0008 	ldr	r0, [fp, #-8]
80028c34:	ebffff54 	bl	8002898c <v2p>
80028c38:	e1a03000 	mov	r3, r0
80028c3c:	e3832001 	orr	r2, r3, #1
80028c40:	e51b300c 	ldr	r3, [fp, #-12]
80028c44:	e5832000 	str	r2, [r3]
80028c48:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028c4c:	e1a03623 	lsr	r3, r3, #12
80028c50:	e6ef3073 	uxtb	r3, r3
80028c54:	e1a03103 	lsl	r3, r3, #2
80028c58:	e51b2008 	ldr	r2, [fp, #-8]
80028c5c:	e0823003 	add	r3, r2, r3
80028c60:	e1a00003 	mov	r0, r3
80028c64:	e24bd004 	sub	sp, fp, #4
80028c68:	e8bd8800 	pop	{fp, pc}

80028c6c <mappages>:
80028c6c:	e92d4800 	push	{fp, lr}
80028c70:	e28db004 	add	fp, sp, #4
80028c74:	e24dd020 	sub	sp, sp, #32
80028c78:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80028c7c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80028c80:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80028c84:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80028c88:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028c8c:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028c90:	e3c3300f 	bic	r3, r3, #15
80028c94:	e50b3008 	str	r3, [fp, #-8]
80028c98:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80028c9c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028ca0:	e0823003 	add	r3, r2, r3
80028ca4:	e2433001 	sub	r3, r3, #1
80028ca8:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028cac:	e3c3300f 	bic	r3, r3, #15
80028cb0:	e50b300c 	str	r3, [fp, #-12]
80028cb4:	e3a02001 	mov	r2, #1
80028cb8:	e51b1008 	ldr	r1, [fp, #-8]
80028cbc:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028cc0:	ebffffb3 	bl	80028b94 <walkpgdir>
80028cc4:	e50b0010 	str	r0, [fp, #-16]
80028cc8:	e51b3010 	ldr	r3, [fp, #-16]
80028ccc:	e3530000 	cmp	r3, #0
80028cd0:	1a000001 	bne	80028cdc <mappages+0x70>
80028cd4:	e3e03000 	mvn	r3, #0
80028cd8:	ea00001b 	b	80028d4c <mappages+0xe0>
80028cdc:	e51b3010 	ldr	r3, [fp, #-16]
80028ce0:	e5933000 	ldr	r3, [r3]
80028ce4:	e2033003 	and	r3, r3, #3
80028ce8:	e3530000 	cmp	r3, #0
80028cec:	0a000001 	beq	80028cf8 <mappages+0x8c>
80028cf0:	e59f0060 	ldr	r0, [pc, #96]	@ 80028d58 <mappages+0xec>
80028cf4:	ebffe3ce 	bl	80021c34 <panic>
80028cf8:	e59b3004 	ldr	r3, [fp, #4]
80028cfc:	e1a03203 	lsl	r3, r3, #4
80028d00:	e2032030 	and	r2, r3, #48	@ 0x30
80028d04:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80028d08:	e1823003 	orr	r3, r2, r3
80028d0c:	e383200e 	orr	r2, r3, #14
80028d10:	e51b3010 	ldr	r3, [fp, #-16]
80028d14:	e5832000 	str	r2, [r3]
80028d18:	e51b2008 	ldr	r2, [fp, #-8]
80028d1c:	e51b300c 	ldr	r3, [fp, #-12]
80028d20:	e1520003 	cmp	r2, r3
80028d24:	0a000006 	beq	80028d44 <mappages+0xd8>
80028d28:	e51b3008 	ldr	r3, [fp, #-8]
80028d2c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028d30:	e50b3008 	str	r3, [fp, #-8]
80028d34:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80028d38:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028d3c:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80028d40:	eaffffdb 	b	80028cb4 <mappages+0x48>
80028d44:	e1a00000 	nop			@ (mov r0, r0)
80028d48:	e3a03000 	mov	r3, #0
80028d4c:	e1a00003 	mov	r0, r3
80028d50:	e24bd004 	sub	sp, fp, #4
80028d54:	e8bd8800 	pop	{fp, pc}
80028d58:	8002a670 	.word	0x8002a670

80028d5c <flush_tlb>:
80028d5c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028d60:	e28db000 	add	fp, sp, #0
80028d64:	e24dd00c 	sub	sp, sp, #12
80028d68:	e3a03000 	mov	r3, #0
80028d6c:	e50b3008 	str	r3, [fp, #-8]
80028d70:	e51b3008 	ldr	r3, [fp, #-8]
80028d74:	ee083f17 	mcr	15, 0, r3, cr8, cr7, {0}
80028d78:	e51b3008 	ldr	r3, [fp, #-8]
80028d7c:	ee073f1a 	mcr	15, 0, r3, cr7, cr10, {0}
80028d80:	e51b3008 	ldr	r3, [fp, #-8]
80028d84:	ee073f1b 	mcr	15, 0, r3, cr7, cr11, {0}
80028d88:	e1a00000 	nop			@ (mov r0, r0)
80028d8c:	e28bd000 	add	sp, fp, #0
80028d90:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028d94:	e12fff1e 	bx	lr

80028d98 <switchuvm>:
80028d98:	e92d4800 	push	{fp, lr}
80028d9c:	e28db004 	add	fp, sp, #4
80028da0:	e24dd010 	sub	sp, sp, #16
80028da4:	e50b0010 	str	r0, [fp, #-16]
80028da8:	ebffde1f 	bl	8002062c <pushcli>
80028dac:	e51b3010 	ldr	r3, [fp, #-16]
80028db0:	e5933004 	ldr	r3, [r3, #4]
80028db4:	e3530000 	cmp	r3, #0
80028db8:	1a000001 	bne	80028dc4 <switchuvm+0x2c>
80028dbc:	e59f002c 	ldr	r0, [pc, #44]	@ 80028df0 <switchuvm+0x58>
80028dc0:	ebffe39b 	bl	80021c34 <panic>
80028dc4:	e51b3010 	ldr	r3, [fp, #-16]
80028dc8:	e5933004 	ldr	r3, [r3, #4]
80028dcc:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80028dd0:	e50b3008 	str	r3, [fp, #-8]
80028dd4:	e51b3008 	ldr	r3, [fp, #-8]
80028dd8:	ee023f10 	mcr	15, 0, r3, cr2, cr0, {0}
80028ddc:	ebffffde 	bl	80028d5c <flush_tlb>
80028de0:	ebffde26 	bl	80020680 <popcli>
80028de4:	e1a00000 	nop			@ (mov r0, r0)
80028de8:	e24bd004 	sub	sp, fp, #4
80028dec:	e8bd8800 	pop	{fp, pc}
80028df0:	8002a678 	.word	0x8002a678

80028df4 <inituvm>:
80028df4:	e92d4800 	push	{fp, lr}
80028df8:	e28db004 	add	fp, sp, #4
80028dfc:	e24dd020 	sub	sp, sp, #32
80028e00:	e50b0010 	str	r0, [fp, #-16]
80028e04:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80028e08:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80028e0c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028e10:	e3530a01 	cmp	r3, #4096	@ 0x1000
80028e14:	3a000001 	bcc	80028e20 <inituvm+0x2c>
80028e18:	e59f0058 	ldr	r0, [pc, #88]	@ 80028e78 <inituvm+0x84>
80028e1c:	ebffe384 	bl	80021c34 <panic>
80028e20:	ebffe252 	bl	80021770 <alloc_page>
80028e24:	e50b0008 	str	r0, [fp, #-8]
80028e28:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028e2c:	e3a01000 	mov	r1, #0
80028e30:	e51b0008 	ldr	r0, [fp, #-8]
80028e34:	ebffdc71 	bl	80020000 <memset>
80028e38:	e51b0008 	ldr	r0, [fp, #-8]
80028e3c:	ebfffed2 	bl	8002898c <v2p>
80028e40:	e1a03000 	mov	r3, r0
80028e44:	e3a02003 	mov	r2, #3
80028e48:	e58d2000 	str	r2, [sp]
80028e4c:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028e50:	e3a01000 	mov	r1, #0
80028e54:	e51b0010 	ldr	r0, [fp, #-16]
80028e58:	ebffff83 	bl	80028c6c <mappages>
80028e5c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80028e60:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80028e64:	e51b0008 	ldr	r0, [fp, #-8]
80028e68:	ebffdcd6 	bl	800201c8 <memmove>
80028e6c:	e1a00000 	nop			@ (mov r0, r0)
80028e70:	e24bd004 	sub	sp, fp, #4
80028e74:	e8bd8800 	pop	{fp, pc}
80028e78:	8002a68c 	.word	0x8002a68c

80028e7c <loaduvm>:
80028e7c:	e92d4800 	push	{fp, lr}
80028e80:	e28db004 	add	fp, sp, #4
80028e84:	e24dd020 	sub	sp, sp, #32
80028e88:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80028e8c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80028e90:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80028e94:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80028e98:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028e9c:	e1a03a03 	lsl	r3, r3, #20
80028ea0:	e1a03a23 	lsr	r3, r3, #20
80028ea4:	e3530000 	cmp	r3, #0
80028ea8:	0a000001 	beq	80028eb4 <loaduvm+0x38>
80028eac:	e59f00f0 	ldr	r0, [pc, #240]	@ 80028fa4 <loaduvm+0x128>
80028eb0:	ebffe35f 	bl	80021c34 <panic>
80028eb4:	e3a03000 	mov	r3, #0
80028eb8:	e50b3008 	str	r3, [fp, #-8]
80028ebc:	ea000030 	b	80028f84 <loaduvm+0x108>
80028ec0:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80028ec4:	e51b3008 	ldr	r3, [fp, #-8]
80028ec8:	e0823003 	add	r3, r2, r3
80028ecc:	e3a02000 	mov	r2, #0
80028ed0:	e1a01003 	mov	r1, r3
80028ed4:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028ed8:	ebffff2d 	bl	80028b94 <walkpgdir>
80028edc:	e50b0010 	str	r0, [fp, #-16]
80028ee0:	e51b3010 	ldr	r3, [fp, #-16]
80028ee4:	e3530000 	cmp	r3, #0
80028ee8:	1a000001 	bne	80028ef4 <loaduvm+0x78>
80028eec:	e59f00b4 	ldr	r0, [pc, #180]	@ 80028fa8 <loaduvm+0x12c>
80028ef0:	ebffe34f 	bl	80021c34 <panic>
80028ef4:	e51b3010 	ldr	r3, [fp, #-16]
80028ef8:	e5933000 	ldr	r3, [r3]
80028efc:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028f00:	e3c3300f 	bic	r3, r3, #15
80028f04:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80028f08:	e59b2004 	ldr	r2, [fp, #4]
80028f0c:	e51b3008 	ldr	r3, [fp, #-8]
80028f10:	e0423003 	sub	r3, r2, r3
80028f14:	e3530a01 	cmp	r3, #4096	@ 0x1000
80028f18:	2a000004 	bcs	80028f30 <loaduvm+0xb4>
80028f1c:	e59b2004 	ldr	r2, [fp, #4]
80028f20:	e51b3008 	ldr	r3, [fp, #-8]
80028f24:	e0423003 	sub	r3, r2, r3
80028f28:	e50b300c 	str	r3, [fp, #-12]
80028f2c:	ea000001 	b	80028f38 <loaduvm+0xbc>
80028f30:	e3a03a01 	mov	r3, #4096	@ 0x1000
80028f34:	e50b300c 	str	r3, [fp, #-12]
80028f38:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028f3c:	ebfffe9c 	bl	800289b4 <p2v>
80028f40:	e1a01000 	mov	r1, r0
80028f44:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80028f48:	e51b3008 	ldr	r3, [fp, #-8]
80028f4c:	e0822003 	add	r2, r2, r3
80028f50:	e51b300c 	ldr	r3, [fp, #-12]
80028f54:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80028f58:	ebffea7b 	bl	8002394c <readi>
80028f5c:	e1a03000 	mov	r3, r0
80028f60:	e1a02003 	mov	r2, r3
80028f64:	e51b300c 	ldr	r3, [fp, #-12]
80028f68:	e1530002 	cmp	r3, r2
80028f6c:	0a000001 	beq	80028f78 <loaduvm+0xfc>
80028f70:	e3e03000 	mvn	r3, #0
80028f74:	ea000007 	b	80028f98 <loaduvm+0x11c>
80028f78:	e51b3008 	ldr	r3, [fp, #-8]
80028f7c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028f80:	e50b3008 	str	r3, [fp, #-8]
80028f84:	e51b2008 	ldr	r2, [fp, #-8]
80028f88:	e59b3004 	ldr	r3, [fp, #4]
80028f8c:	e1520003 	cmp	r2, r3
80028f90:	3affffca 	bcc	80028ec0 <loaduvm+0x44>
80028f94:	e3a03000 	mov	r3, #0
80028f98:	e1a00003 	mov	r0, r3
80028f9c:	e24bd004 	sub	sp, fp, #4
80028fa0:	e8bd8800 	pop	{fp, pc}
80028fa4:	8002a6a8 	.word	0x8002a6a8
80028fa8:	8002a6cc 	.word	0x8002a6cc

80028fac <allocuvm>:
80028fac:	e92d4810 	push	{r4, fp, lr}
80028fb0:	e28db008 	add	fp, sp, #8
80028fb4:	e24dd024 	sub	sp, sp, #36	@ 0x24
80028fb8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80028fbc:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80028fc0:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80028fc4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028fc8:	e373021f 	cmn	r3, #-268435455	@ 0xf0000001
80028fcc:	9a000001 	bls	80028fd8 <allocuvm+0x2c>
80028fd0:	e3a03000 	mov	r3, #0
80028fd4:	ea00002f 	b	80029098 <allocuvm+0xec>
80028fd8:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80028fdc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028fe0:	e1520003 	cmp	r2, r3
80028fe4:	2a000001 	bcs	80028ff0 <allocuvm+0x44>
80028fe8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028fec:	ea000029 	b	80029098 <allocuvm+0xec>
80028ff0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028ff4:	e2833eff 	add	r3, r3, #4080	@ 0xff0
80028ff8:	e283300f 	add	r3, r3, #15
80028ffc:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80029000:	e3c3300f 	bic	r3, r3, #15
80029004:	e50b3010 	str	r3, [fp, #-16]
80029008:	ea00001d 	b	80029084 <allocuvm+0xd8>
8002900c:	ebffe1d7 	bl	80021770 <alloc_page>
80029010:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80029014:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80029018:	e3530000 	cmp	r3, #0
8002901c:	1a000007 	bne	80029040 <allocuvm+0x94>
80029020:	e59f007c 	ldr	r0, [pc, #124]	@ 800290a4 <allocuvm+0xf8>
80029024:	ebffe26a 	bl	800219d4 <cprintf>
80029028:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
8002902c:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
80029030:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80029034:	eb00001b 	bl	800290a8 <deallocuvm>
80029038:	e3a03000 	mov	r3, #0
8002903c:	ea000015 	b	80029098 <allocuvm+0xec>
80029040:	e3a02a01 	mov	r2, #4096	@ 0x1000
80029044:	e3a01000 	mov	r1, #0
80029048:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
8002904c:	ebffdbeb 	bl	80020000 <memset>
80029050:	e51b4010 	ldr	r4, [fp, #-16]
80029054:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80029058:	ebfffe4b 	bl	8002898c <v2p>
8002905c:	e1a03000 	mov	r3, r0
80029060:	e3a02003 	mov	r2, #3
80029064:	e58d2000 	str	r2, [sp]
80029068:	e3a02a01 	mov	r2, #4096	@ 0x1000
8002906c:	e1a01004 	mov	r1, r4
80029070:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80029074:	ebfffefc 	bl	80028c6c <mappages>
80029078:	e51b3010 	ldr	r3, [fp, #-16]
8002907c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80029080:	e50b3010 	str	r3, [fp, #-16]
80029084:	e51b2010 	ldr	r2, [fp, #-16]
80029088:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002908c:	e1520003 	cmp	r2, r3
80029090:	3affffdd 	bcc	8002900c <allocuvm+0x60>
80029094:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80029098:	e1a00003 	mov	r0, r3
8002909c:	e24bd008 	sub	sp, fp, #8
800290a0:	e8bd8810 	pop	{r4, fp, pc}
800290a4:	8002a6ec 	.word	0x8002a6ec

800290a8 <deallocuvm>:
800290a8:	e92d4800 	push	{fp, lr}
800290ac:	e28db004 	add	fp, sp, #4
800290b0:	e24dd020 	sub	sp, sp, #32
800290b4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800290b8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
800290bc:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
800290c0:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
800290c4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800290c8:	e1520003 	cmp	r2, r3
800290cc:	3a000001 	bcc	800290d8 <deallocuvm+0x30>
800290d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800290d4:	ea000035 	b	800291b0 <deallocuvm+0x108>
800290d8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800290dc:	e2833eff 	add	r3, r3, #4080	@ 0xff0
800290e0:	e283300f 	add	r3, r3, #15
800290e4:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
800290e8:	e3c3300f 	bic	r3, r3, #15
800290ec:	e50b3008 	str	r3, [fp, #-8]
800290f0:	ea000029 	b	8002919c <deallocuvm+0xf4>
800290f4:	e51b3008 	ldr	r3, [fp, #-8]
800290f8:	e3a02000 	mov	r2, #0
800290fc:	e1a01003 	mov	r1, r3
80029100:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80029104:	ebfffea2 	bl	80028b94 <walkpgdir>
80029108:	e50b000c 	str	r0, [fp, #-12]
8002910c:	e51b300c 	ldr	r3, [fp, #-12]
80029110:	e3530000 	cmp	r3, #0
80029114:	1a000006 	bne	80029134 <deallocuvm+0x8c>
80029118:	e51b3008 	ldr	r3, [fp, #-8]
8002911c:	e243337f 	sub	r3, r3, #-67108863	@ 0xfc000001
80029120:	e243363f 	sub	r3, r3, #66060288	@ 0x3f00000
80029124:	e1a03a23 	lsr	r3, r3, #20
80029128:	e1a03a03 	lsl	r3, r3, #20
8002912c:	e50b3008 	str	r3, [fp, #-8]
80029130:	ea000016 	b	80029190 <deallocuvm+0xe8>
80029134:	e51b300c 	ldr	r3, [fp, #-12]
80029138:	e5933000 	ldr	r3, [r3]
8002913c:	e2033003 	and	r3, r3, #3
80029140:	e3530000 	cmp	r3, #0
80029144:	0a000011 	beq	80029190 <deallocuvm+0xe8>
80029148:	e51b300c 	ldr	r3, [fp, #-12]
8002914c:	e5933000 	ldr	r3, [r3]
80029150:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80029154:	e3c3300f 	bic	r3, r3, #15
80029158:	e50b3010 	str	r3, [fp, #-16]
8002915c:	e51b3010 	ldr	r3, [fp, #-16]
80029160:	e3530000 	cmp	r3, #0
80029164:	1a000001 	bne	80029170 <deallocuvm+0xc8>
80029168:	e59f004c 	ldr	r0, [pc, #76]	@ 800291bc <deallocuvm+0x114>
8002916c:	ebffe2b0 	bl	80021c34 <panic>
80029170:	e51b0010 	ldr	r0, [fp, #-16]
80029174:	ebfffe0e 	bl	800289b4 <p2v>
80029178:	e1a03000 	mov	r3, r0
8002917c:	e1a00003 	mov	r0, r3
80029180:	ebffe170 	bl	80021748 <free_page>
80029184:	e51b300c 	ldr	r3, [fp, #-12]
80029188:	e3a02000 	mov	r2, #0
8002918c:	e5832000 	str	r2, [r3]
80029190:	e51b3008 	ldr	r3, [fp, #-8]
80029194:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80029198:	e50b3008 	str	r3, [fp, #-8]
8002919c:	e51b2008 	ldr	r2, [fp, #-8]
800291a0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800291a4:	e1520003 	cmp	r2, r3
800291a8:	3affffd1 	bcc	800290f4 <deallocuvm+0x4c>
800291ac:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800291b0:	e1a00003 	mov	r0, r3
800291b4:	e24bd004 	sub	sp, fp, #4
800291b8:	e8bd8800 	pop	{fp, pc}
800291bc:	8002a704 	.word	0x8002a704

800291c0 <freevm>:
800291c0:	e92d4800 	push	{fp, lr}
800291c4:	e28db004 	add	fp, sp, #4
800291c8:	e24dd010 	sub	sp, sp, #16
800291cc:	e50b0010 	str	r0, [fp, #-16]
800291d0:	e51b3010 	ldr	r3, [fp, #-16]
800291d4:	e3530000 	cmp	r3, #0
800291d8:	1a000001 	bne	800291e4 <freevm+0x24>
800291dc:	e59f0098 	ldr	r0, [pc, #152]	@ 8002927c <freevm+0xbc>
800291e0:	ebffe293 	bl	80021c34 <panic>
800291e4:	e3a02000 	mov	r2, #0
800291e8:	e3a01201 	mov	r1, #268435456	@ 0x10000000
800291ec:	e51b0010 	ldr	r0, [fp, #-16]
800291f0:	ebffffac 	bl	800290a8 <deallocuvm>
800291f4:	e3a03000 	mov	r3, #0
800291f8:	e50b3008 	str	r3, [fp, #-8]
800291fc:	ea000016 	b	8002925c <freevm+0x9c>
80029200:	e51b3008 	ldr	r3, [fp, #-8]
80029204:	e1a03103 	lsl	r3, r3, #2
80029208:	e51b2010 	ldr	r2, [fp, #-16]
8002920c:	e0823003 	add	r3, r2, r3
80029210:	e5933000 	ldr	r3, [r3]
80029214:	e2033003 	and	r3, r3, #3
80029218:	e3530000 	cmp	r3, #0
8002921c:	0a00000b 	beq	80029250 <freevm+0x90>
80029220:	e51b3008 	ldr	r3, [fp, #-8]
80029224:	e1a03103 	lsl	r3, r3, #2
80029228:	e51b2010 	ldr	r2, [fp, #-16]
8002922c:	e0823003 	add	r3, r2, r3
80029230:	e5933000 	ldr	r3, [r3]
80029234:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
80029238:	e3c33003 	bic	r3, r3, #3
8002923c:	e1a00003 	mov	r0, r3
80029240:	ebfffddb 	bl	800289b4 <p2v>
80029244:	e50b000c 	str	r0, [fp, #-12]
80029248:	e51b000c 	ldr	r0, [fp, #-12]
8002924c:	ebfffe00 	bl	80028a54 <kpt_free>
80029250:	e51b3008 	ldr	r3, [fp, #-8]
80029254:	e2833001 	add	r3, r3, #1
80029258:	e50b3008 	str	r3, [fp, #-8]
8002925c:	e51b3008 	ldr	r3, [fp, #-8]
80029260:	e35300ff 	cmp	r3, #255	@ 0xff
80029264:	9affffe5 	bls	80029200 <freevm+0x40>
80029268:	e51b0010 	ldr	r0, [fp, #-16]
8002926c:	ebfffdf8 	bl	80028a54 <kpt_free>
80029270:	e1a00000 	nop			@ (mov r0, r0)
80029274:	e24bd004 	sub	sp, fp, #4
80029278:	e8bd8800 	pop	{fp, pc}
8002927c:	8002a710 	.word	0x8002a710

80029280 <clearpteu>:
80029280:	e92d4800 	push	{fp, lr}
80029284:	e28db004 	add	fp, sp, #4
80029288:	e24dd010 	sub	sp, sp, #16
8002928c:	e50b0010 	str	r0, [fp, #-16]
80029290:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80029294:	e3a02000 	mov	r2, #0
80029298:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
8002929c:	e51b0010 	ldr	r0, [fp, #-16]
800292a0:	ebfffe3b 	bl	80028b94 <walkpgdir>
800292a4:	e50b0008 	str	r0, [fp, #-8]
800292a8:	e51b3008 	ldr	r3, [fp, #-8]
800292ac:	e3530000 	cmp	r3, #0
800292b0:	1a000001 	bne	800292bc <clearpteu+0x3c>
800292b4:	e59f0024 	ldr	r0, [pc, #36]	@ 800292e0 <clearpteu+0x60>
800292b8:	ebffe25d 	bl	80021c34 <panic>
800292bc:	e51b3008 	ldr	r3, [fp, #-8]
800292c0:	e5933000 	ldr	r3, [r3]
800292c4:	e3c33030 	bic	r3, r3, #48	@ 0x30
800292c8:	e3832010 	orr	r2, r3, #16
800292cc:	e51b3008 	ldr	r3, [fp, #-8]
800292d0:	e5832000 	str	r2, [r3]
800292d4:	e1a00000 	nop			@ (mov r0, r0)
800292d8:	e24bd004 	sub	sp, fp, #4
800292dc:	e8bd8800 	pop	{fp, pc}
800292e0:	8002a724 	.word	0x8002a724

800292e4 <copyuvm>:
800292e4:	e92d4810 	push	{r4, fp, lr}
800292e8:	e28db008 	add	fp, sp, #8
800292ec:	e24dd02c 	sub	sp, sp, #44	@ 0x2c
800292f0:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
800292f4:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
800292f8:	ebfffdff 	bl	80028afc <kpt_alloc>
800292fc:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80029300:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80029304:	e3530000 	cmp	r3, #0
80029308:	1a000001 	bne	80029314 <copyuvm+0x30>
8002930c:	e3a03000 	mov	r3, #0
80029310:	ea000047 	b	80029434 <copyuvm+0x150>
80029314:	e3a03000 	mov	r3, #0
80029318:	e50b3010 	str	r3, [fp, #-16]
8002931c:	ea000038 	b	80029404 <copyuvm+0x120>
80029320:	e51b3010 	ldr	r3, [fp, #-16]
80029324:	e3a02000 	mov	r2, #0
80029328:	e1a01003 	mov	r1, r3
8002932c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80029330:	ebfffe17 	bl	80028b94 <walkpgdir>
80029334:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80029338:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002933c:	e3530000 	cmp	r3, #0
80029340:	1a000001 	bne	8002934c <copyuvm+0x68>
80029344:	e59f00f4 	ldr	r0, [pc, #244]	@ 80029440 <copyuvm+0x15c>
80029348:	ebffe239 	bl	80021c34 <panic>
8002934c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80029350:	e5933000 	ldr	r3, [r3]
80029354:	e2033003 	and	r3, r3, #3
80029358:	e3530000 	cmp	r3, #0
8002935c:	1a000001 	bne	80029368 <copyuvm+0x84>
80029360:	e59f00dc 	ldr	r0, [pc, #220]	@ 80029444 <copyuvm+0x160>
80029364:	ebffe232 	bl	80021c34 <panic>
80029368:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002936c:	e5933000 	ldr	r3, [r3]
80029370:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80029374:	e3c3300f 	bic	r3, r3, #15
80029378:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
8002937c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80029380:	e5933000 	ldr	r3, [r3]
80029384:	e1a03223 	lsr	r3, r3, #4
80029388:	e2033003 	and	r3, r3, #3
8002938c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
80029390:	ebffe0f6 	bl	80021770 <alloc_page>
80029394:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
80029398:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
8002939c:	e3530000 	cmp	r3, #0
800293a0:	0a00001d 	beq	8002941c <copyuvm+0x138>
800293a4:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
800293a8:	ebfffd81 	bl	800289b4 <p2v>
800293ac:	e1a03000 	mov	r3, r0
800293b0:	e3a02a01 	mov	r2, #4096	@ 0x1000
800293b4:	e1a01003 	mov	r1, r3
800293b8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
800293bc:	ebffdb81 	bl	800201c8 <memmove>
800293c0:	e51b4010 	ldr	r4, [fp, #-16]
800293c4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
800293c8:	ebfffd6f 	bl	8002898c <v2p>
800293cc:	e1a02000 	mov	r2, r0
800293d0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800293d4:	e58d3000 	str	r3, [sp]
800293d8:	e1a03002 	mov	r3, r2
800293dc:	e3a02a01 	mov	r2, #4096	@ 0x1000
800293e0:	e1a01004 	mov	r1, r4
800293e4:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800293e8:	ebfffe1f 	bl	80028c6c <mappages>
800293ec:	e1a03000 	mov	r3, r0
800293f0:	e3530000 	cmp	r3, #0
800293f4:	ba00000a 	blt	80029424 <copyuvm+0x140>
800293f8:	e51b3010 	ldr	r3, [fp, #-16]
800293fc:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80029400:	e50b3010 	str	r3, [fp, #-16]
80029404:	e51b2010 	ldr	r2, [fp, #-16]
80029408:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
8002940c:	e1520003 	cmp	r2, r3
80029410:	3affffc2 	bcc	80029320 <copyuvm+0x3c>
80029414:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80029418:	ea000005 	b	80029434 <copyuvm+0x150>
8002941c:	e1a00000 	nop			@ (mov r0, r0)
80029420:	ea000000 	b	80029428 <copyuvm+0x144>
80029424:	e1a00000 	nop			@ (mov r0, r0)
80029428:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
8002942c:	ebffff63 	bl	800291c0 <freevm>
80029430:	e3a03000 	mov	r3, #0
80029434:	e1a00003 	mov	r0, r3
80029438:	e24bd008 	sub	sp, fp, #8
8002943c:	e8bd8810 	pop	{r4, fp, pc}
80029440:	8002a730 	.word	0x8002a730
80029444:	8002a74c 	.word	0x8002a74c

80029448 <uva2ka>:
80029448:	e92d4800 	push	{fp, lr}
8002944c:	e28db004 	add	fp, sp, #4
80029450:	e24dd010 	sub	sp, sp, #16
80029454:	e50b0010 	str	r0, [fp, #-16]
80029458:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
8002945c:	e3a02000 	mov	r2, #0
80029460:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80029464:	e51b0010 	ldr	r0, [fp, #-16]
80029468:	ebfffdc9 	bl	80028b94 <walkpgdir>
8002946c:	e50b0008 	str	r0, [fp, #-8]
80029470:	e51b3008 	ldr	r3, [fp, #-8]
80029474:	e5933000 	ldr	r3, [r3]
80029478:	e2033003 	and	r3, r3, #3
8002947c:	e3530000 	cmp	r3, #0
80029480:	1a000001 	bne	8002948c <uva2ka+0x44>
80029484:	e3a03000 	mov	r3, #0
80029488:	ea00000e 	b	800294c8 <uva2ka+0x80>
8002948c:	e51b3008 	ldr	r3, [fp, #-8]
80029490:	e5933000 	ldr	r3, [r3]
80029494:	e2033030 	and	r3, r3, #48	@ 0x30
80029498:	e3530030 	cmp	r3, #48	@ 0x30
8002949c:	0a000001 	beq	800294a8 <uva2ka+0x60>
800294a0:	e3a03000 	mov	r3, #0
800294a4:	ea000007 	b	800294c8 <uva2ka+0x80>
800294a8:	e51b3008 	ldr	r3, [fp, #-8]
800294ac:	e5933000 	ldr	r3, [r3]
800294b0:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
800294b4:	e3c3300f 	bic	r3, r3, #15
800294b8:	e1a00003 	mov	r0, r3
800294bc:	ebfffd3c 	bl	800289b4 <p2v>
800294c0:	e1a03000 	mov	r3, r0
800294c4:	e1a00000 	nop			@ (mov r0, r0)
800294c8:	e1a00003 	mov	r0, r3
800294cc:	e24bd004 	sub	sp, fp, #4
800294d0:	e8bd8800 	pop	{fp, pc}

800294d4 <copyout>:
800294d4:	e92d4800 	push	{fp, lr}
800294d8:	e28db004 	add	fp, sp, #4
800294dc:	e24dd020 	sub	sp, sp, #32
800294e0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800294e4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
800294e8:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
800294ec:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
800294f0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800294f4:	e50b3008 	str	r3, [fp, #-8]
800294f8:	ea00002c 	b	800295b0 <copyout+0xdc>
800294fc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80029500:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80029504:	e3c3300f 	bic	r3, r3, #15
80029508:	e50b3010 	str	r3, [fp, #-16]
8002950c:	e51b3010 	ldr	r3, [fp, #-16]
80029510:	e1a01003 	mov	r1, r3
80029514:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80029518:	ebffffca 	bl	80029448 <uva2ka>
8002951c:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80029520:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80029524:	e3530000 	cmp	r3, #0
80029528:	1a000001 	bne	80029534 <copyout+0x60>
8002952c:	e3e03000 	mvn	r3, #0
80029530:	ea000022 	b	800295c0 <copyout+0xec>
80029534:	e51b2010 	ldr	r2, [fp, #-16]
80029538:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002953c:	e0423003 	sub	r3, r2, r3
80029540:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80029544:	e50b300c 	str	r3, [fp, #-12]
80029548:	e51b200c 	ldr	r2, [fp, #-12]
8002954c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80029550:	e1520003 	cmp	r2, r3
80029554:	9a000001 	bls	80029560 <copyout+0x8c>
80029558:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
8002955c:	e50b300c 	str	r3, [fp, #-12]
80029560:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80029564:	e51b3010 	ldr	r3, [fp, #-16]
80029568:	e0423003 	sub	r3, r2, r3
8002956c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80029570:	e0823003 	add	r3, r2, r3
80029574:	e51b200c 	ldr	r2, [fp, #-12]
80029578:	e51b1008 	ldr	r1, [fp, #-8]
8002957c:	e1a00003 	mov	r0, r3
80029580:	ebffdb10 	bl	800201c8 <memmove>
80029584:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80029588:	e51b300c 	ldr	r3, [fp, #-12]
8002958c:	e0423003 	sub	r3, r2, r3
80029590:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80029594:	e51b2008 	ldr	r2, [fp, #-8]
80029598:	e51b300c 	ldr	r3, [fp, #-12]
8002959c:	e0823003 	add	r3, r2, r3
800295a0:	e50b3008 	str	r3, [fp, #-8]
800295a4:	e51b3010 	ldr	r3, [fp, #-16]
800295a8:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800295ac:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800295b0:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800295b4:	e3530000 	cmp	r3, #0
800295b8:	1affffcf 	bne	800294fc <copyout+0x28>
800295bc:	e3a03000 	mov	r3, #0
800295c0:	e1a00003 	mov	r0, r3
800295c4:	e24bd004 	sub	sp, fp, #4
800295c8:	e8bd8800 	pop	{fp, pc}

800295cc <paging_init>:
800295cc:	e92d4800 	push	{fp, lr}
800295d0:	e28db004 	add	fp, sp, #4
800295d4:	e24dd010 	sub	sp, sp, #16
800295d8:	e50b0008 	str	r0, [fp, #-8]
800295dc:	e50b100c 	str	r1, [fp, #-12]
800295e0:	e59f0034 	ldr	r0, [pc, #52]	@ 8002961c <paging_init+0x50>
800295e4:	e51b3008 	ldr	r3, [fp, #-8]
800295e8:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
800295ec:	e1a01003 	mov	r1, r3
800295f0:	e51b200c 	ldr	r2, [fp, #-12]
800295f4:	e51b3008 	ldr	r3, [fp, #-8]
800295f8:	e0422003 	sub	r2, r2, r3
800295fc:	e3a03003 	mov	r3, #3
80029600:	e58d3000 	str	r3, [sp]
80029604:	e51b3008 	ldr	r3, [fp, #-8]
80029608:	ebfffd97 	bl	80028c6c <mappages>
8002960c:	ebfffdd2 	bl	80028d5c <flush_tlb>
80029610:	e1a00000 	nop			@ (mov r0, r0)
80029614:	e24bd004 	sub	sp, fp, #4
80029618:	e8bd8800 	pop	{fp, pc}
8002961c:	80014000 	.word	0x80014000

80029620 <default_isr>:
80029620:	e92d4800 	push	{fp, lr}
80029624:	e28db004 	add	fp, sp, #4
80029628:	e24dd008 	sub	sp, sp, #8
8002962c:	e50b0008 	str	r0, [fp, #-8]
80029630:	e50b100c 	str	r1, [fp, #-12]
80029634:	e51b100c 	ldr	r1, [fp, #-12]
80029638:	e59f000c 	ldr	r0, [pc, #12]	@ 8002964c <default_isr+0x2c>
8002963c:	ebffe0e4 	bl	800219d4 <cprintf>
80029640:	e1a00000 	nop			@ (mov r0, r0)
80029644:	e24bd004 	sub	sp, fp, #4
80029648:	e8bd8800 	pop	{fp, pc}
8002964c:	8002a768 	.word	0x8002a768

80029650 <pic_init>:
80029650:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80029654:	e28db000 	add	fp, sp, #0
80029658:	e24dd014 	sub	sp, sp, #20
8002965c:	e50b0010 	str	r0, [fp, #-16]
80029660:	e59f2060 	ldr	r2, [pc, #96]	@ 800296c8 <pic_init+0x78>
80029664:	e51b3010 	ldr	r3, [fp, #-16]
80029668:	e5823000 	str	r3, [r2]
8002966c:	e59f3054 	ldr	r3, [pc, #84]	@ 800296c8 <pic_init+0x78>
80029670:	e5933000 	ldr	r3, [r3]
80029674:	e2833014 	add	r3, r3, #20
80029678:	e3e02000 	mvn	r2, #0
8002967c:	e5832000 	str	r2, [r3]
80029680:	e3a03000 	mov	r3, #0
80029684:	e50b3008 	str	r3, [fp, #-8]
80029688:	ea000006 	b	800296a8 <pic_init+0x58>
8002968c:	e59f2038 	ldr	r2, [pc, #56]	@ 800296cc <pic_init+0x7c>
80029690:	e51b3008 	ldr	r3, [fp, #-8]
80029694:	e59f1034 	ldr	r1, [pc, #52]	@ 800296d0 <pic_init+0x80>
80029698:	e7821103 	str	r1, [r2, r3, lsl #2]
8002969c:	e51b3008 	ldr	r3, [fp, #-8]
800296a0:	e2833001 	add	r3, r3, #1
800296a4:	e50b3008 	str	r3, [fp, #-8]
800296a8:	e51b3008 	ldr	r3, [fp, #-8]
800296ac:	e353001f 	cmp	r3, #31
800296b0:	dafffff5 	ble	8002968c <pic_init+0x3c>
800296b4:	e1a00000 	nop			@ (mov r0, r0)
800296b8:	e1a00000 	nop			@ (mov r0, r0)
800296bc:	e28bd000 	add	sp, fp, #0
800296c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800296c4:	e12fff1e 	bx	lr
800296c8:	800b0c20 	.word	0x800b0c20
800296cc:	800b0c24 	.word	0x800b0c24
800296d0:	80029620 	.word	0x80029620

800296d4 <pic_enable>:
800296d4:	e92d4800 	push	{fp, lr}
800296d8:	e28db004 	add	fp, sp, #4
800296dc:	e24dd008 	sub	sp, sp, #8
800296e0:	e50b0008 	str	r0, [fp, #-8]
800296e4:	e50b100c 	str	r1, [fp, #-12]
800296e8:	e51b3008 	ldr	r3, [fp, #-8]
800296ec:	e3530000 	cmp	r3, #0
800296f0:	ba000002 	blt	80029700 <pic_enable+0x2c>
800296f4:	e51b3008 	ldr	r3, [fp, #-8]
800296f8:	e353001f 	cmp	r3, #31
800296fc:	da000001 	ble	80029708 <pic_enable+0x34>
80029700:	e59f0038 	ldr	r0, [pc, #56]	@ 80029740 <pic_enable+0x6c>
80029704:	ebffe14a 	bl	80021c34 <panic>
80029708:	e59f1034 	ldr	r1, [pc, #52]	@ 80029744 <pic_enable+0x70>
8002970c:	e51b3008 	ldr	r3, [fp, #-8]
80029710:	e51b200c 	ldr	r2, [fp, #-12]
80029714:	e7812103 	str	r2, [r1, r3, lsl #2]
80029718:	e3a02001 	mov	r2, #1
8002971c:	e51b3008 	ldr	r3, [fp, #-8]
80029720:	e1a02312 	lsl	r2, r2, r3
80029724:	e59f301c 	ldr	r3, [pc, #28]	@ 80029748 <pic_enable+0x74>
80029728:	e5933000 	ldr	r3, [r3]
8002972c:	e2833010 	add	r3, r3, #16
80029730:	e5832000 	str	r2, [r3]
80029734:	e1a00000 	nop			@ (mov r0, r0)
80029738:	e24bd004 	sub	sp, fp, #4
8002973c:	e8bd8800 	pop	{fp, pc}
80029740:	8002a784 	.word	0x8002a784
80029744:	800b0c24 	.word	0x800b0c24
80029748:	800b0c20 	.word	0x800b0c20

8002974c <pic_disable>:
8002974c:	e92d4800 	push	{fp, lr}
80029750:	e28db004 	add	fp, sp, #4
80029754:	e24dd008 	sub	sp, sp, #8
80029758:	e50b0008 	str	r0, [fp, #-8]
8002975c:	e51b3008 	ldr	r3, [fp, #-8]
80029760:	e3530000 	cmp	r3, #0
80029764:	ba000002 	blt	80029774 <pic_disable+0x28>
80029768:	e51b3008 	ldr	r3, [fp, #-8]
8002976c:	e353001f 	cmp	r3, #31
80029770:	da000001 	ble	8002977c <pic_disable+0x30>
80029774:	e59f0038 	ldr	r0, [pc, #56]	@ 800297b4 <pic_disable+0x68>
80029778:	ebffe12d 	bl	80021c34 <panic>
8002977c:	e3a02001 	mov	r2, #1
80029780:	e51b3008 	ldr	r3, [fp, #-8]
80029784:	e1a02312 	lsl	r2, r2, r3
80029788:	e59f3028 	ldr	r3, [pc, #40]	@ 800297b8 <pic_disable+0x6c>
8002978c:	e5933000 	ldr	r3, [r3]
80029790:	e2833014 	add	r3, r3, #20
80029794:	e5832000 	str	r2, [r3]
80029798:	e59f201c 	ldr	r2, [pc, #28]	@ 800297bc <pic_disable+0x70>
8002979c:	e51b3008 	ldr	r3, [fp, #-8]
800297a0:	e59f1018 	ldr	r1, [pc, #24]	@ 800297c0 <pic_disable+0x74>
800297a4:	e7821103 	str	r1, [r2, r3, lsl #2]
800297a8:	e1a00000 	nop			@ (mov r0, r0)
800297ac:	e24bd004 	sub	sp, fp, #4
800297b0:	e8bd8800 	pop	{fp, pc}
800297b4:	8002a784 	.word	0x8002a784
800297b8:	800b0c20 	.word	0x800b0c20
800297bc:	800b0c24 	.word	0x800b0c24
800297c0:	80029620 	.word	0x80029620

800297c4 <pic_dispatch>:
800297c4:	e92d4800 	push	{fp, lr}
800297c8:	e28db004 	add	fp, sp, #4
800297cc:	e24dd010 	sub	sp, sp, #16
800297d0:	e50b0010 	str	r0, [fp, #-16]
800297d4:	e59f3080 	ldr	r3, [pc, #128]	@ 8002985c <pic_dispatch+0x98>
800297d8:	e5933000 	ldr	r3, [r3]
800297dc:	e5933000 	ldr	r3, [r3]
800297e0:	e50b300c 	str	r3, [fp, #-12]
800297e4:	e3a03000 	mov	r3, #0
800297e8:	e50b3008 	str	r3, [fp, #-8]
800297ec:	ea000010 	b	80029834 <pic_dispatch+0x70>
800297f0:	e3a02001 	mov	r2, #1
800297f4:	e51b3008 	ldr	r3, [fp, #-8]
800297f8:	e1a03312 	lsl	r3, r2, r3
800297fc:	e1a02003 	mov	r2, r3
80029800:	e51b300c 	ldr	r3, [fp, #-12]
80029804:	e0033002 	and	r3, r3, r2
80029808:	e3530000 	cmp	r3, #0
8002980c:	0a000005 	beq	80029828 <pic_dispatch+0x64>
80029810:	e59f2048 	ldr	r2, [pc, #72]	@ 80029860 <pic_dispatch+0x9c>
80029814:	e51b3008 	ldr	r3, [fp, #-8]
80029818:	e7923103 	ldr	r3, [r2, r3, lsl #2]
8002981c:	e51b1008 	ldr	r1, [fp, #-8]
80029820:	e51b0010 	ldr	r0, [fp, #-16]
80029824:	e12fff33 	blx	r3
80029828:	e51b3008 	ldr	r3, [fp, #-8]
8002982c:	e2833001 	add	r3, r3, #1
80029830:	e50b3008 	str	r3, [fp, #-8]
80029834:	e51b3008 	ldr	r3, [fp, #-8]
80029838:	e353001f 	cmp	r3, #31
8002983c:	daffffeb 	ble	800297f0 <pic_dispatch+0x2c>
80029840:	e59f3014 	ldr	r3, [pc, #20]	@ 8002985c <pic_dispatch+0x98>
80029844:	e5933000 	ldr	r3, [r3]
80029848:	e5933000 	ldr	r3, [r3]
8002984c:	e50b300c 	str	r3, [fp, #-12]
80029850:	e1a00000 	nop			@ (mov r0, r0)
80029854:	e24bd004 	sub	sp, fp, #4
80029858:	e8bd8800 	pop	{fp, pc}
8002985c:	800b0c20 	.word	0x800b0c20
80029860:	800b0c24 	.word	0x800b0c24

80029864 <ack_timer>:
80029864:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80029868:	e28db000 	add	fp, sp, #0
8002986c:	e24dd00c 	sub	sp, sp, #12
80029870:	e59f3020 	ldr	r3, [pc, #32]	@ 80029898 <ack_timer+0x34>
80029874:	e50b3008 	str	r3, [fp, #-8]
80029878:	e51b3008 	ldr	r3, [fp, #-8]
8002987c:	e283300c 	add	r3, r3, #12
80029880:	e3a02001 	mov	r2, #1
80029884:	e5832000 	str	r2, [r3]
80029888:	e1a00000 	nop			@ (mov r0, r0)
8002988c:	e28bd000 	add	sp, fp, #0
80029890:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80029894:	e12fff1e 	bx	lr
80029898:	901e2000 	.word	0x901e2000

8002989c <timer_init>:
8002989c:	e92d4800 	push	{fp, lr}
800298a0:	e28db004 	add	fp, sp, #4
800298a4:	e24dd010 	sub	sp, sp, #16
800298a8:	e50b0010 	str	r0, [fp, #-16]
800298ac:	e59f3050 	ldr	r3, [pc, #80]	@ 80029904 <timer_init+0x68>
800298b0:	e50b3008 	str	r3, [fp, #-8]
800298b4:	e59f104c 	ldr	r1, [pc, #76]	@ 80029908 <timer_init+0x6c>
800298b8:	e59f004c 	ldr	r0, [pc, #76]	@ 8002990c <timer_init+0x70>
800298bc:	ebfff399 	bl	80026728 <initlock>
800298c0:	e51b1010 	ldr	r1, [fp, #-16]
800298c4:	e59f0044 	ldr	r0, [pc, #68]	@ 80029910 <timer_init+0x74>
800298c8:	eb000109 	bl	80029cf4 <__divsi3>
800298cc:	e1a03000 	mov	r3, r0
800298d0:	e1a02003 	mov	r2, r3
800298d4:	e51b3008 	ldr	r3, [fp, #-8]
800298d8:	e5832000 	str	r2, [r3]
800298dc:	e51b3008 	ldr	r3, [fp, #-8]
800298e0:	e2833008 	add	r3, r3, #8
800298e4:	e3a020e2 	mov	r2, #226	@ 0xe2
800298e8:	e5832000 	str	r2, [r3]
800298ec:	e59f1020 	ldr	r1, [pc, #32]	@ 80029914 <timer_init+0x78>
800298f0:	e3a00004 	mov	r0, #4
800298f4:	ebffff76 	bl	800296d4 <pic_enable>
800298f8:	e1a00000 	nop			@ (mov r0, r0)
800298fc:	e24bd004 	sub	sp, fp, #4
80029900:	e8bd8800 	pop	{fp, pc}
80029904:	901e2000 	.word	0x901e2000
80029908:	8002a7a0 	.word	0x8002a7a0
8002990c:	800b0ca4 	.word	0x800b0ca4
80029910:	000f4240 	.word	0x000f4240
80029914:	80029918 	.word	0x80029918

80029918 <isr_timer>:
80029918:	e92d4800 	push	{fp, lr}
8002991c:	e28db004 	add	fp, sp, #4
80029920:	e24dd008 	sub	sp, sp, #8
80029924:	e50b0008 	str	r0, [fp, #-8]
80029928:	e50b100c 	str	r1, [fp, #-12]
8002992c:	e59f0034 	ldr	r0, [pc, #52]	@ 80029968 <isr_timer+0x50>
80029930:	ebfff38e 	bl	80026770 <acquire>
80029934:	e59f3030 	ldr	r3, [pc, #48]	@ 8002996c <isr_timer+0x54>
80029938:	e5933000 	ldr	r3, [r3]
8002993c:	e2833001 	add	r3, r3, #1
80029940:	e59f2024 	ldr	r2, [pc, #36]	@ 8002996c <isr_timer+0x54>
80029944:	e5823000 	str	r3, [r2]
80029948:	e59f001c 	ldr	r0, [pc, #28]	@ 8002996c <isr_timer+0x54>
8002994c:	ebfff245 	bl	80026268 <wakeup>
80029950:	e59f0010 	ldr	r0, [pc, #16]	@ 80029968 <isr_timer+0x50>
80029954:	ebfff390 	bl	8002679c <release>
80029958:	ebffffc1 	bl	80029864 <ack_timer>
8002995c:	e1a00000 	nop			@ (mov r0, r0)
80029960:	e24bd004 	sub	sp, fp, #4
80029964:	e8bd8800 	pop	{fp, pc}
80029968:	800b0ca4 	.word	0x800b0ca4
8002996c:	800b0cd8 	.word	0x800b0cd8

80029970 <micro_delay>:
80029970:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80029974:	e28db000 	add	fp, sp, #0
80029978:	e24dd014 	sub	sp, sp, #20
8002997c:	e50b0010 	str	r0, [fp, #-16]
80029980:	e59f3054 	ldr	r3, [pc, #84]	@ 800299dc <micro_delay+0x6c>
80029984:	e50b3008 	str	r3, [fp, #-8]
80029988:	e51b3008 	ldr	r3, [fp, #-8]
8002998c:	e2833008 	add	r3, r3, #8
80029990:	e3a02082 	mov	r2, #130	@ 0x82
80029994:	e5832000 	str	r2, [r3]
80029998:	e51b2010 	ldr	r2, [fp, #-16]
8002999c:	e51b3008 	ldr	r3, [fp, #-8]
800299a0:	e5832000 	str	r2, [r3]
800299a4:	e1a00000 	nop			@ (mov r0, r0)
800299a8:	e51b3008 	ldr	r3, [fp, #-8]
800299ac:	e2833004 	add	r3, r3, #4
800299b0:	e5933000 	ldr	r3, [r3]
800299b4:	e3530000 	cmp	r3, #0
800299b8:	cafffffa 	bgt	800299a8 <micro_delay+0x38>
800299bc:	e51b3008 	ldr	r3, [fp, #-8]
800299c0:	e2833008 	add	r3, r3, #8
800299c4:	e3a02000 	mov	r2, #0
800299c8:	e5832000 	str	r2, [r3]
800299cc:	e1a00000 	nop			@ (mov r0, r0)
800299d0:	e28bd000 	add	sp, fp, #0
800299d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800299d8:	e12fff1e 	bx	lr
800299dc:	901e2020 	.word	0x901e2020

800299e0 <uart_init>:
800299e0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800299e4:	e28db000 	add	fp, sp, #0
800299e8:	e24dd014 	sub	sp, sp, #20
800299ec:	e50b0010 	str	r0, [fp, #-16]
800299f0:	e59f20a4 	ldr	r2, [pc, #164]	@ 80029a9c <uart_init+0xbc>
800299f4:	e51b3010 	ldr	r3, [fp, #-16]
800299f8:	e5823000 	str	r3, [r2]
800299fc:	e59f3098 	ldr	r3, [pc, #152]	@ 80029a9c <uart_init+0xbc>
80029a00:	e5933000 	ldr	r3, [r3]
80029a04:	e2833024 	add	r3, r3, #36	@ 0x24
80029a08:	e3a0204e 	mov	r2, #78	@ 0x4e
80029a0c:	e5832000 	str	r2, [r3]
80029a10:	e3a03c96 	mov	r3, #38400	@ 0x9600
80029a14:	e50b3008 	str	r3, [fp, #-8]
80029a18:	e51b3008 	ldr	r3, [fp, #-8]
80029a1c:	e2833e96 	add	r3, r3, #2400	@ 0x960
80029a20:	e1a02103 	lsl	r2, r3, #2
80029a24:	e59f3070 	ldr	r3, [pc, #112]	@ 80029a9c <uart_init+0xbc>
80029a28:	e5933000 	ldr	r3, [r3]
80029a2c:	e2833028 	add	r3, r3, #40	@ 0x28
80029a30:	e59f1068 	ldr	r1, [pc, #104]	@ 80029aa0 <uart_init+0xc0>
80029a34:	e0821291 	umull	r1, r2, r1, r2
80029a38:	e1a025a2 	lsr	r2, r2, #11
80029a3c:	e5832000 	str	r2, [r3]
80029a40:	e59f3054 	ldr	r3, [pc, #84]	@ 80029a9c <uart_init+0xbc>
80029a44:	e5933000 	ldr	r3, [r3]
80029a48:	e2833030 	add	r3, r3, #48	@ 0x30
80029a4c:	e5933000 	ldr	r3, [r3]
80029a50:	e59f2044 	ldr	r2, [pc, #68]	@ 80029a9c <uart_init+0xbc>
80029a54:	e5922000 	ldr	r2, [r2]
80029a58:	e2822030 	add	r2, r2, #48	@ 0x30
80029a5c:	e3833c03 	orr	r3, r3, #768	@ 0x300
80029a60:	e3833001 	orr	r3, r3, #1
80029a64:	e5823000 	str	r3, [r2]
80029a68:	e59f302c 	ldr	r3, [pc, #44]	@ 80029a9c <uart_init+0xbc>
80029a6c:	e5933000 	ldr	r3, [r3]
80029a70:	e283302c 	add	r3, r3, #44	@ 0x2c
80029a74:	e5932000 	ldr	r2, [r3]
80029a78:	e59f301c 	ldr	r3, [pc, #28]	@ 80029a9c <uart_init+0xbc>
80029a7c:	e5933000 	ldr	r3, [r3]
80029a80:	e283302c 	add	r3, r3, #44	@ 0x2c
80029a84:	e3822010 	orr	r2, r2, #16
80029a88:	e5832000 	str	r2, [r3]
80029a8c:	e1a00000 	nop			@ (mov r0, r0)
80029a90:	e28bd000 	add	sp, fp, #0
80029a94:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80029a98:	e12fff1e 	bx	lr
80029a9c:	800b0cdc 	.word	0x800b0cdc
80029aa0:	1b4e81b5 	.word	0x1b4e81b5

80029aa4 <uart_enable_rx>:
80029aa4:	e92d4800 	push	{fp, lr}
80029aa8:	e28db004 	add	fp, sp, #4
80029aac:	e59f3020 	ldr	r3, [pc, #32]	@ 80029ad4 <uart_enable_rx+0x30>
80029ab0:	e5933000 	ldr	r3, [r3]
80029ab4:	e2833038 	add	r3, r3, #56	@ 0x38
80029ab8:	e3a02010 	mov	r2, #16
80029abc:	e5832000 	str	r2, [r3]
80029ac0:	e59f1010 	ldr	r1, [pc, #16]	@ 80029ad8 <uart_enable_rx+0x34>
80029ac4:	e3a0000c 	mov	r0, #12
80029ac8:	ebffff01 	bl	800296d4 <pic_enable>
80029acc:	e1a00000 	nop			@ (mov r0, r0)
80029ad0:	e8bd8800 	pop	{fp, pc}
80029ad4:	800b0cdc 	.word	0x800b0cdc
80029ad8:	80029b80 	.word	0x80029b80

80029adc <uartputc>:
80029adc:	e92d4800 	push	{fp, lr}
80029ae0:	e28db004 	add	fp, sp, #4
80029ae4:	e24dd008 	sub	sp, sp, #8
80029ae8:	e50b0008 	str	r0, [fp, #-8]
80029aec:	ea000001 	b	80029af8 <uartputc+0x1c>
80029af0:	e3a0000a 	mov	r0, #10
80029af4:	ebffff9d 	bl	80029970 <micro_delay>
80029af8:	e59f3030 	ldr	r3, [pc, #48]	@ 80029b30 <uartputc+0x54>
80029afc:	e5933000 	ldr	r3, [r3]
80029b00:	e2833018 	add	r3, r3, #24
80029b04:	e5933000 	ldr	r3, [r3]
80029b08:	e2033020 	and	r3, r3, #32
80029b0c:	e3530000 	cmp	r3, #0
80029b10:	1afffff6 	bne	80029af0 <uartputc+0x14>
80029b14:	e59f3014 	ldr	r3, [pc, #20]	@ 80029b30 <uartputc+0x54>
80029b18:	e5933000 	ldr	r3, [r3]
80029b1c:	e51b2008 	ldr	r2, [fp, #-8]
80029b20:	e5832000 	str	r2, [r3]
80029b24:	e1a00000 	nop			@ (mov r0, r0)
80029b28:	e24bd004 	sub	sp, fp, #4
80029b2c:	e8bd8800 	pop	{fp, pc}
80029b30:	800b0cdc 	.word	0x800b0cdc

80029b34 <uartgetc>:
80029b34:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80029b38:	e28db000 	add	fp, sp, #0
80029b3c:	e59f3038 	ldr	r3, [pc, #56]	@ 80029b7c <uartgetc+0x48>
80029b40:	e5933000 	ldr	r3, [r3]
80029b44:	e2833018 	add	r3, r3, #24
80029b48:	e5933000 	ldr	r3, [r3]
80029b4c:	e2033010 	and	r3, r3, #16
80029b50:	e3530000 	cmp	r3, #0
80029b54:	0a000001 	beq	80029b60 <uartgetc+0x2c>
80029b58:	e3e03000 	mvn	r3, #0
80029b5c:	ea000002 	b	80029b6c <uartgetc+0x38>
80029b60:	e59f3014 	ldr	r3, [pc, #20]	@ 80029b7c <uartgetc+0x48>
80029b64:	e5933000 	ldr	r3, [r3]
80029b68:	e5933000 	ldr	r3, [r3]
80029b6c:	e1a00003 	mov	r0, r3
80029b70:	e28bd000 	add	sp, fp, #0
80029b74:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80029b78:	e12fff1e 	bx	lr
80029b7c:	800b0cdc 	.word	0x800b0cdc

80029b80 <isr_uart>:
80029b80:	e92d4800 	push	{fp, lr}
80029b84:	e28db004 	add	fp, sp, #4
80029b88:	e24dd008 	sub	sp, sp, #8
80029b8c:	e50b0008 	str	r0, [fp, #-8]
80029b90:	e50b100c 	str	r1, [fp, #-12]
80029b94:	e59f303c 	ldr	r3, [pc, #60]	@ 80029bd8 <isr_uart+0x58>
80029b98:	e5933000 	ldr	r3, [r3]
80029b9c:	e2833040 	add	r3, r3, #64	@ 0x40
80029ba0:	e5933000 	ldr	r3, [r3]
80029ba4:	e2033010 	and	r3, r3, #16
80029ba8:	e3530000 	cmp	r3, #0
80029bac:	0a000001 	beq	80029bb8 <isr_uart+0x38>
80029bb0:	e59f0024 	ldr	r0, [pc, #36]	@ 80029bdc <isr_uart+0x5c>
80029bb4:	ebffe052 	bl	80021d04 <consoleintr>
80029bb8:	e59f3018 	ldr	r3, [pc, #24]	@ 80029bd8 <isr_uart+0x58>
80029bbc:	e5933000 	ldr	r3, [r3]
80029bc0:	e2833044 	add	r3, r3, #68	@ 0x44
80029bc4:	e3a02030 	mov	r2, #48	@ 0x30
80029bc8:	e5832000 	str	r2, [r3]
80029bcc:	e1a00000 	nop			@ (mov r0, r0)
80029bd0:	e24bd004 	sub	sp, fp, #4
80029bd4:	e8bd8800 	pop	{fp, pc}
80029bd8:	800b0cdc 	.word	0x800b0cdc
80029bdc:	80029b34 	.word	0x80029b34

80029be0 <__udivsi3>:
80029be0:	e2512001 	subs	r2, r1, #1
80029be4:	012fff1e 	bxeq	lr
80029be8:	3a000036 	bcc	80029cc8 <__udivsi3+0xe8>
80029bec:	e1500001 	cmp	r0, r1
80029bf0:	9a000022 	bls	80029c80 <__udivsi3+0xa0>
80029bf4:	e1110002 	tst	r1, r2
80029bf8:	0a000023 	beq	80029c8c <__udivsi3+0xac>
80029bfc:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
80029c00:	01a01181 	lsleq	r1, r1, #3
80029c04:	03a03008 	moveq	r3, #8
80029c08:	13a03001 	movne	r3, #1
80029c0c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
80029c10:	31510000 	cmpcc	r1, r0
80029c14:	31a01201 	lslcc	r1, r1, #4
80029c18:	31a03203 	lslcc	r3, r3, #4
80029c1c:	3afffffa 	bcc	80029c0c <__udivsi3+0x2c>
80029c20:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
80029c24:	31510000 	cmpcc	r1, r0
80029c28:	31a01081 	lslcc	r1, r1, #1
80029c2c:	31a03083 	lslcc	r3, r3, #1
80029c30:	3afffffa 	bcc	80029c20 <__udivsi3+0x40>
80029c34:	e3a02000 	mov	r2, #0
80029c38:	e1500001 	cmp	r0, r1
80029c3c:	20400001 	subcs	r0, r0, r1
80029c40:	21822003 	orrcs	r2, r2, r3
80029c44:	e15000a1 	cmp	r0, r1, lsr #1
80029c48:	204000a1 	subcs	r0, r0, r1, lsr #1
80029c4c:	218220a3 	orrcs	r2, r2, r3, lsr #1
80029c50:	e1500121 	cmp	r0, r1, lsr #2
80029c54:	20400121 	subcs	r0, r0, r1, lsr #2
80029c58:	21822123 	orrcs	r2, r2, r3, lsr #2
80029c5c:	e15001a1 	cmp	r0, r1, lsr #3
80029c60:	204001a1 	subcs	r0, r0, r1, lsr #3
80029c64:	218221a3 	orrcs	r2, r2, r3, lsr #3
80029c68:	e3500000 	cmp	r0, #0
80029c6c:	11b03223 	lsrsne	r3, r3, #4
80029c70:	11a01221 	lsrne	r1, r1, #4
80029c74:	1affffef 	bne	80029c38 <__udivsi3+0x58>
80029c78:	e1a00002 	mov	r0, r2
80029c7c:	e12fff1e 	bx	lr
80029c80:	03a00001 	moveq	r0, #1
80029c84:	13a00000 	movne	r0, #0
80029c88:	e12fff1e 	bx	lr
80029c8c:	e3510801 	cmp	r1, #65536	@ 0x10000
80029c90:	21a01821 	lsrcs	r1, r1, #16
80029c94:	23a02010 	movcs	r2, #16
80029c98:	33a02000 	movcc	r2, #0
80029c9c:	e3510c01 	cmp	r1, #256	@ 0x100
80029ca0:	21a01421 	lsrcs	r1, r1, #8
80029ca4:	22822008 	addcs	r2, r2, #8
80029ca8:	e3510010 	cmp	r1, #16
80029cac:	21a01221 	lsrcs	r1, r1, #4
80029cb0:	22822004 	addcs	r2, r2, #4
80029cb4:	e3510004 	cmp	r1, #4
80029cb8:	82822003 	addhi	r2, r2, #3
80029cbc:	908220a1 	addls	r2, r2, r1, lsr #1
80029cc0:	e1a00230 	lsr	r0, r0, r2
80029cc4:	e12fff1e 	bx	lr
80029cc8:	e3500000 	cmp	r0, #0
80029ccc:	13e00000 	mvnne	r0, #0
80029cd0:	ea000059 	b	80029e3c <__aeabi_idiv0>

80029cd4 <__aeabi_uidivmod>:
80029cd4:	e3510000 	cmp	r1, #0
80029cd8:	0afffffa 	beq	80029cc8 <__udivsi3+0xe8>
80029cdc:	e92d4003 	push	{r0, r1, lr}
80029ce0:	ebffffbe 	bl	80029be0 <__udivsi3>
80029ce4:	e8bd4006 	pop	{r1, r2, lr}
80029ce8:	e0030092 	mul	r3, r2, r0
80029cec:	e0411003 	sub	r1, r1, r3
80029cf0:	e12fff1e 	bx	lr

80029cf4 <__divsi3>:
80029cf4:	e3510000 	cmp	r1, #0
80029cf8:	0a000043 	beq	80029e0c <.divsi3_skip_div0_test+0x110>

80029cfc <.divsi3_skip_div0_test>:
80029cfc:	e020c001 	eor	ip, r0, r1
80029d00:	42611000 	rsbmi	r1, r1, #0
80029d04:	e2512001 	subs	r2, r1, #1
80029d08:	0a000027 	beq	80029dac <.divsi3_skip_div0_test+0xb0>
80029d0c:	e1b03000 	movs	r3, r0
80029d10:	42603000 	rsbmi	r3, r0, #0
80029d14:	e1530001 	cmp	r3, r1
80029d18:	9a000026 	bls	80029db8 <.divsi3_skip_div0_test+0xbc>
80029d1c:	e1110002 	tst	r1, r2
80029d20:	0a000028 	beq	80029dc8 <.divsi3_skip_div0_test+0xcc>
80029d24:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
80029d28:	01a01181 	lsleq	r1, r1, #3
80029d2c:	03a02008 	moveq	r2, #8
80029d30:	13a02001 	movne	r2, #1
80029d34:	e3510201 	cmp	r1, #268435456	@ 0x10000000
80029d38:	31510003 	cmpcc	r1, r3
80029d3c:	31a01201 	lslcc	r1, r1, #4
80029d40:	31a02202 	lslcc	r2, r2, #4
80029d44:	3afffffa 	bcc	80029d34 <.divsi3_skip_div0_test+0x38>
80029d48:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
80029d4c:	31510003 	cmpcc	r1, r3
80029d50:	31a01081 	lslcc	r1, r1, #1
80029d54:	31a02082 	lslcc	r2, r2, #1
80029d58:	3afffffa 	bcc	80029d48 <.divsi3_skip_div0_test+0x4c>
80029d5c:	e3a00000 	mov	r0, #0
80029d60:	e1530001 	cmp	r3, r1
80029d64:	20433001 	subcs	r3, r3, r1
80029d68:	21800002 	orrcs	r0, r0, r2
80029d6c:	e15300a1 	cmp	r3, r1, lsr #1
80029d70:	204330a1 	subcs	r3, r3, r1, lsr #1
80029d74:	218000a2 	orrcs	r0, r0, r2, lsr #1
80029d78:	e1530121 	cmp	r3, r1, lsr #2
80029d7c:	20433121 	subcs	r3, r3, r1, lsr #2
80029d80:	21800122 	orrcs	r0, r0, r2, lsr #2
80029d84:	e15301a1 	cmp	r3, r1, lsr #3
80029d88:	204331a1 	subcs	r3, r3, r1, lsr #3
80029d8c:	218001a2 	orrcs	r0, r0, r2, lsr #3
80029d90:	e3530000 	cmp	r3, #0
80029d94:	11b02222 	lsrsne	r2, r2, #4
80029d98:	11a01221 	lsrne	r1, r1, #4
80029d9c:	1affffef 	bne	80029d60 <.divsi3_skip_div0_test+0x64>
80029da0:	e35c0000 	cmp	ip, #0
80029da4:	42600000 	rsbmi	r0, r0, #0
80029da8:	e12fff1e 	bx	lr
80029dac:	e13c0000 	teq	ip, r0
80029db0:	42600000 	rsbmi	r0, r0, #0
80029db4:	e12fff1e 	bx	lr
80029db8:	33a00000 	movcc	r0, #0
80029dbc:	01a00fcc 	asreq	r0, ip, #31
80029dc0:	03800001 	orreq	r0, r0, #1
80029dc4:	e12fff1e 	bx	lr
80029dc8:	e3510801 	cmp	r1, #65536	@ 0x10000
80029dcc:	21a01821 	lsrcs	r1, r1, #16
80029dd0:	23a02010 	movcs	r2, #16
80029dd4:	33a02000 	movcc	r2, #0
80029dd8:	e3510c01 	cmp	r1, #256	@ 0x100
80029ddc:	21a01421 	lsrcs	r1, r1, #8
80029de0:	22822008 	addcs	r2, r2, #8
80029de4:	e3510010 	cmp	r1, #16
80029de8:	21a01221 	lsrcs	r1, r1, #4
80029dec:	22822004 	addcs	r2, r2, #4
80029df0:	e3510004 	cmp	r1, #4
80029df4:	82822003 	addhi	r2, r2, #3
80029df8:	908220a1 	addls	r2, r2, r1, lsr #1
80029dfc:	e35c0000 	cmp	ip, #0
80029e00:	e1a00233 	lsr	r0, r3, r2
80029e04:	42600000 	rsbmi	r0, r0, #0
80029e08:	e12fff1e 	bx	lr
80029e0c:	e3500000 	cmp	r0, #0
80029e10:	c3e00102 	mvngt	r0, #-2147483648	@ 0x80000000
80029e14:	b3a00102 	movlt	r0, #-2147483648	@ 0x80000000
80029e18:	ea000007 	b	80029e3c <__aeabi_idiv0>

80029e1c <__aeabi_idivmod>:
80029e1c:	e3510000 	cmp	r1, #0
80029e20:	0afffff9 	beq	80029e0c <.divsi3_skip_div0_test+0x110>
80029e24:	e92d4003 	push	{r0, r1, lr}
80029e28:	ebffffb3 	bl	80029cfc <.divsi3_skip_div0_test>
80029e2c:	e8bd4006 	pop	{r1, r2, lr}
80029e30:	e0030092 	mul	r3, r2, r0
80029e34:	e0411003 	sub	r1, r1, r3
80029e38:	e12fff1e 	bx	lr

80029e3c <__aeabi_idiv0>:
80029e3c:	e12fff1e 	bx	lr
