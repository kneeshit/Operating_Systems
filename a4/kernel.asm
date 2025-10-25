
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
   10408:	800ab0ec 	.word	0x800ab0ec

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
   104ec:	80021894 	.word	0x80021894

000104f0 <__kmain_veneer>:
   104f0:	e51ff004 	ldr	pc, [pc, #-4]	@ 104f4 <__kmain_veneer+0x4>
   104f4:	80024644 	.word	0x80024644
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
8002067c:	800ae624 	.word	0x800ae624

80020680 <popcli>:
80020680:	e92d4800 	push	{fp, lr}
80020684:	e28db004 	add	fp, sp, #4
80020688:	ebffffd8 	bl	800205f0 <int_enabled>
8002068c:	e1a03000 	mov	r3, r0
80020690:	e3530000 	cmp	r3, #0
80020694:	0a000001 	beq	800206a0 <popcli+0x20>
80020698:	e59f007c 	ldr	r0, [pc, #124]	@ 8002071c <popcli+0x9c>
8002069c:	eb000514 	bl	80021af4 <panic>
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
800206dc:	eb00046c 	bl	80021894 <cprintf>
800206e0:	e59f0040 	ldr	r0, [pc, #64]	@ 80020728 <popcli+0xa8>
800206e4:	eb000502 	bl	80021af4 <panic>
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
8002071c:	80029bbc 	.word	0x80029bbc
80020720:	800ae624 	.word	0x800ae624
80020724:	80029bd4 	.word	0x80029bd4
80020728:	80029be8 	.word	0x80029be8

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
80020824:	eb00041a 	bl	80021894 <cprintf>
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
80020870:	eb000407 	bl	80021894 <cprintf>
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
8002089c:	80029bfc 	.word	0x80029bfc
800208a0:	80029c00 	.word	0x80029c00

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

800208d0 <binit>:
800208d0:	e92d4800 	push	{fp, lr}
800208d4:	e28db004 	add	fp, sp, #4
800208d8:	e24dd008 	sub	sp, sp, #8
800208dc:	e59f10b8 	ldr	r1, [pc, #184]	@ 8002099c <binit+0xcc>
800208e0:	e59f00b8 	ldr	r0, [pc, #184]	@ 800209a0 <binit+0xd0>
800208e4:	eb00173f 	bl	800265e8 <initlock>
800208e8:	e59f30b0 	ldr	r3, [pc, #176]	@ 800209a0 <binit+0xd0>
800208ec:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800208f0:	e1a02003 	mov	r2, r3
800208f4:	e59f30a8 	ldr	r3, [pc, #168]	@ 800209a4 <binit+0xd4>
800208f8:	e5823530 	str	r3, [r2, #1328]	@ 0x530
800208fc:	e59f309c 	ldr	r3, [pc, #156]	@ 800209a0 <binit+0xd0>
80020900:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020904:	e1a02003 	mov	r2, r3
80020908:	e59f3094 	ldr	r3, [pc, #148]	@ 800209a4 <binit+0xd4>
8002090c:	e5823534 	str	r3, [r2, #1332]	@ 0x534
80020910:	e59f3090 	ldr	r3, [pc, #144]	@ 800209a8 <binit+0xd8>
80020914:	e50b3008 	str	r3, [fp, #-8]
80020918:	ea000017 	b	8002097c <binit+0xac>
8002091c:	e59f307c 	ldr	r3, [pc, #124]	@ 800209a0 <binit+0xd0>
80020920:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020924:	e5932534 	ldr	r2, [r3, #1332]	@ 0x534
80020928:	e51b3008 	ldr	r3, [fp, #-8]
8002092c:	e5832010 	str	r2, [r3, #16]
80020930:	e51b3008 	ldr	r3, [fp, #-8]
80020934:	e59f2068 	ldr	r2, [pc, #104]	@ 800209a4 <binit+0xd4>
80020938:	e583200c 	str	r2, [r3, #12]
8002093c:	e51b3008 	ldr	r3, [fp, #-8]
80020940:	e3e02000 	mvn	r2, #0
80020944:	e5832004 	str	r2, [r3, #4]
80020948:	e59f3050 	ldr	r3, [pc, #80]	@ 800209a0 <binit+0xd0>
8002094c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020950:	e5933534 	ldr	r3, [r3, #1332]	@ 0x534
80020954:	e51b2008 	ldr	r2, [fp, #-8]
80020958:	e583200c 	str	r2, [r3, #12]
8002095c:	e59f303c 	ldr	r3, [pc, #60]	@ 800209a0 <binit+0xd0>
80020960:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020964:	e1a02003 	mov	r2, r3
80020968:	e51b3008 	ldr	r3, [fp, #-8]
8002096c:	e5823534 	str	r3, [r2, #1332]	@ 0x534
80020970:	e51b3008 	ldr	r3, [fp, #-8]
80020974:	e2833f86 	add	r3, r3, #536	@ 0x218
80020978:	e50b3008 	str	r3, [fp, #-8]
8002097c:	e59f2020 	ldr	r2, [pc, #32]	@ 800209a4 <binit+0xd4>
80020980:	e51b3008 	ldr	r3, [fp, #-8]
80020984:	e1530002 	cmp	r3, r2
80020988:	3affffe3 	bcc	8002091c <binit+0x4c>
8002098c:	e1a00000 	nop			@ (mov r0, r0)
80020990:	e1a00000 	nop			@ (mov r0, r0)
80020994:	e24bd004 	sub	sp, fp, #4
80020998:	e8bd8800 	pop	{fp, pc}
8002099c:	80029c0c 	.word	0x80029c0c
800209a0:	800ab0ec 	.word	0x800ab0ec
800209a4:	800ac610 	.word	0x800ac610
800209a8:	800ab120 	.word	0x800ab120

800209ac <bget>:
800209ac:	e92d4800 	push	{fp, lr}
800209b0:	e28db004 	add	fp, sp, #4
800209b4:	e24dd010 	sub	sp, sp, #16
800209b8:	e50b0010 	str	r0, [fp, #-16]
800209bc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800209c0:	e59f0140 	ldr	r0, [pc, #320]	@ 80020b08 <bget+0x15c>
800209c4:	eb001719 	bl	80026630 <acquire>
800209c8:	e59f3138 	ldr	r3, [pc, #312]	@ 80020b08 <bget+0x15c>
800209cc:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800209d0:	e5933534 	ldr	r3, [r3, #1332]	@ 0x534
800209d4:	e50b3008 	str	r3, [fp, #-8]
800209d8:	ea00001e 	b	80020a58 <bget+0xac>
800209dc:	e51b3008 	ldr	r3, [fp, #-8]
800209e0:	e5933004 	ldr	r3, [r3, #4]
800209e4:	e51b2010 	ldr	r2, [fp, #-16]
800209e8:	e1520003 	cmp	r2, r3
800209ec:	1a000016 	bne	80020a4c <bget+0xa0>
800209f0:	e51b3008 	ldr	r3, [fp, #-8]
800209f4:	e5933008 	ldr	r3, [r3, #8]
800209f8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800209fc:	e1520003 	cmp	r2, r3
80020a00:	1a000011 	bne	80020a4c <bget+0xa0>
80020a04:	e51b3008 	ldr	r3, [fp, #-8]
80020a08:	e5933000 	ldr	r3, [r3]
80020a0c:	e2033001 	and	r3, r3, #1
80020a10:	e3530000 	cmp	r3, #0
80020a14:	1a000008 	bne	80020a3c <bget+0x90>
80020a18:	e51b3008 	ldr	r3, [fp, #-8]
80020a1c:	e5933000 	ldr	r3, [r3]
80020a20:	e3832001 	orr	r2, r3, #1
80020a24:	e51b3008 	ldr	r3, [fp, #-8]
80020a28:	e5832000 	str	r2, [r3]
80020a2c:	e59f00d4 	ldr	r0, [pc, #212]	@ 80020b08 <bget+0x15c>
80020a30:	eb001709 	bl	8002665c <release>
80020a34:	e51b3008 	ldr	r3, [fp, #-8]
80020a38:	ea00002f 	b	80020afc <bget+0x150>
80020a3c:	e59f10c4 	ldr	r1, [pc, #196]	@ 80020b08 <bget+0x15c>
80020a40:	e51b0008 	ldr	r0, [fp, #-8]
80020a44:	eb001533 	bl	80025f18 <sleep>
80020a48:	eaffffde 	b	800209c8 <bget+0x1c>
80020a4c:	e51b3008 	ldr	r3, [fp, #-8]
80020a50:	e5933010 	ldr	r3, [r3, #16]
80020a54:	e50b3008 	str	r3, [fp, #-8]
80020a58:	e51b3008 	ldr	r3, [fp, #-8]
80020a5c:	e59f20a8 	ldr	r2, [pc, #168]	@ 80020b0c <bget+0x160>
80020a60:	e1530002 	cmp	r3, r2
80020a64:	1affffdc 	bne	800209dc <bget+0x30>
80020a68:	e59f3098 	ldr	r3, [pc, #152]	@ 80020b08 <bget+0x15c>
80020a6c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020a70:	e5933530 	ldr	r3, [r3, #1328]	@ 0x530
80020a74:	e50b3008 	str	r3, [fp, #-8]
80020a78:	ea000019 	b	80020ae4 <bget+0x138>
80020a7c:	e51b3008 	ldr	r3, [fp, #-8]
80020a80:	e5933000 	ldr	r3, [r3]
80020a84:	e2033001 	and	r3, r3, #1
80020a88:	e3530000 	cmp	r3, #0
80020a8c:	1a000011 	bne	80020ad8 <bget+0x12c>
80020a90:	e51b3008 	ldr	r3, [fp, #-8]
80020a94:	e5933000 	ldr	r3, [r3]
80020a98:	e2033004 	and	r3, r3, #4
80020a9c:	e3530000 	cmp	r3, #0
80020aa0:	1a00000c 	bne	80020ad8 <bget+0x12c>
80020aa4:	e51b3008 	ldr	r3, [fp, #-8]
80020aa8:	e51b2010 	ldr	r2, [fp, #-16]
80020aac:	e5832004 	str	r2, [r3, #4]
80020ab0:	e51b3008 	ldr	r3, [fp, #-8]
80020ab4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80020ab8:	e5832008 	str	r2, [r3, #8]
80020abc:	e51b3008 	ldr	r3, [fp, #-8]
80020ac0:	e3a02001 	mov	r2, #1
80020ac4:	e5832000 	str	r2, [r3]
80020ac8:	e59f0038 	ldr	r0, [pc, #56]	@ 80020b08 <bget+0x15c>
80020acc:	eb0016e2 	bl	8002665c <release>
80020ad0:	e51b3008 	ldr	r3, [fp, #-8]
80020ad4:	ea000008 	b	80020afc <bget+0x150>
80020ad8:	e51b3008 	ldr	r3, [fp, #-8]
80020adc:	e593300c 	ldr	r3, [r3, #12]
80020ae0:	e50b3008 	str	r3, [fp, #-8]
80020ae4:	e51b3008 	ldr	r3, [fp, #-8]
80020ae8:	e59f201c 	ldr	r2, [pc, #28]	@ 80020b0c <bget+0x160>
80020aec:	e1530002 	cmp	r3, r2
80020af0:	1affffe1 	bne	80020a7c <bget+0xd0>
80020af4:	e59f0014 	ldr	r0, [pc, #20]	@ 80020b10 <bget+0x164>
80020af8:	eb0003fd 	bl	80021af4 <panic>
80020afc:	e1a00003 	mov	r0, r3
80020b00:	e24bd004 	sub	sp, fp, #4
80020b04:	e8bd8800 	pop	{fp, pc}
80020b08:	800ab0ec 	.word	0x800ab0ec
80020b0c:	800ac610 	.word	0x800ac610
80020b10:	80029c14 	.word	0x80029c14

80020b14 <bread>:
80020b14:	e92d4800 	push	{fp, lr}
80020b18:	e28db004 	add	fp, sp, #4
80020b1c:	e24dd010 	sub	sp, sp, #16
80020b20:	e50b0010 	str	r0, [fp, #-16]
80020b24:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80020b28:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80020b2c:	e51b0010 	ldr	r0, [fp, #-16]
80020b30:	ebffff9d 	bl	800209ac <bget>
80020b34:	e50b0008 	str	r0, [fp, #-8]
80020b38:	e51b3008 	ldr	r3, [fp, #-8]
80020b3c:	e5933000 	ldr	r3, [r3]
80020b40:	e2033002 	and	r3, r3, #2
80020b44:	e3530000 	cmp	r3, #0
80020b48:	1a000001 	bne	80020b54 <bread+0x40>
80020b4c:	e51b0008 	ldr	r0, [fp, #-8]
80020b50:	eb000f08 	bl	80024778 <iderw>
80020b54:	e51b3008 	ldr	r3, [fp, #-8]
80020b58:	e1a00003 	mov	r0, r3
80020b5c:	e24bd004 	sub	sp, fp, #4
80020b60:	e8bd8800 	pop	{fp, pc}

80020b64 <bwrite>:
80020b64:	e92d4800 	push	{fp, lr}
80020b68:	e28db004 	add	fp, sp, #4
80020b6c:	e24dd008 	sub	sp, sp, #8
80020b70:	e50b0008 	str	r0, [fp, #-8]
80020b74:	e51b3008 	ldr	r3, [fp, #-8]
80020b78:	e5933000 	ldr	r3, [r3]
80020b7c:	e2033001 	and	r3, r3, #1
80020b80:	e3530000 	cmp	r3, #0
80020b84:	1a000001 	bne	80020b90 <bwrite+0x2c>
80020b88:	e59f0028 	ldr	r0, [pc, #40]	@ 80020bb8 <bwrite+0x54>
80020b8c:	eb0003d8 	bl	80021af4 <panic>
80020b90:	e51b3008 	ldr	r3, [fp, #-8]
80020b94:	e5933000 	ldr	r3, [r3]
80020b98:	e3832004 	orr	r2, r3, #4
80020b9c:	e51b3008 	ldr	r3, [fp, #-8]
80020ba0:	e5832000 	str	r2, [r3]
80020ba4:	e51b0008 	ldr	r0, [fp, #-8]
80020ba8:	eb000ef2 	bl	80024778 <iderw>
80020bac:	e1a00000 	nop			@ (mov r0, r0)
80020bb0:	e24bd004 	sub	sp, fp, #4
80020bb4:	e8bd8800 	pop	{fp, pc}
80020bb8:	80029c28 	.word	0x80029c28

80020bbc <brelse>:
80020bbc:	e92d4800 	push	{fp, lr}
80020bc0:	e28db004 	add	fp, sp, #4
80020bc4:	e24dd008 	sub	sp, sp, #8
80020bc8:	e50b0008 	str	r0, [fp, #-8]
80020bcc:	e51b3008 	ldr	r3, [fp, #-8]
80020bd0:	e5933000 	ldr	r3, [r3]
80020bd4:	e2033001 	and	r3, r3, #1
80020bd8:	e3530000 	cmp	r3, #0
80020bdc:	1a000001 	bne	80020be8 <brelse+0x2c>
80020be0:	e59f00a8 	ldr	r0, [pc, #168]	@ 80020c90 <brelse+0xd4>
80020be4:	eb0003c2 	bl	80021af4 <panic>
80020be8:	e59f00a4 	ldr	r0, [pc, #164]	@ 80020c94 <brelse+0xd8>
80020bec:	eb00168f 	bl	80026630 <acquire>
80020bf0:	e51b3008 	ldr	r3, [fp, #-8]
80020bf4:	e5933010 	ldr	r3, [r3, #16]
80020bf8:	e51b2008 	ldr	r2, [fp, #-8]
80020bfc:	e592200c 	ldr	r2, [r2, #12]
80020c00:	e583200c 	str	r2, [r3, #12]
80020c04:	e51b3008 	ldr	r3, [fp, #-8]
80020c08:	e593300c 	ldr	r3, [r3, #12]
80020c0c:	e51b2008 	ldr	r2, [fp, #-8]
80020c10:	e5922010 	ldr	r2, [r2, #16]
80020c14:	e5832010 	str	r2, [r3, #16]
80020c18:	e59f3074 	ldr	r3, [pc, #116]	@ 80020c94 <brelse+0xd8>
80020c1c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020c20:	e5932534 	ldr	r2, [r3, #1332]	@ 0x534
80020c24:	e51b3008 	ldr	r3, [fp, #-8]
80020c28:	e5832010 	str	r2, [r3, #16]
80020c2c:	e51b3008 	ldr	r3, [fp, #-8]
80020c30:	e59f2060 	ldr	r2, [pc, #96]	@ 80020c98 <brelse+0xdc>
80020c34:	e583200c 	str	r2, [r3, #12]
80020c38:	e59f3054 	ldr	r3, [pc, #84]	@ 80020c94 <brelse+0xd8>
80020c3c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020c40:	e5933534 	ldr	r3, [r3, #1332]	@ 0x534
80020c44:	e51b2008 	ldr	r2, [fp, #-8]
80020c48:	e583200c 	str	r2, [r3, #12]
80020c4c:	e59f3040 	ldr	r3, [pc, #64]	@ 80020c94 <brelse+0xd8>
80020c50:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020c54:	e1a02003 	mov	r2, r3
80020c58:	e51b3008 	ldr	r3, [fp, #-8]
80020c5c:	e5823534 	str	r3, [r2, #1332]	@ 0x534
80020c60:	e51b3008 	ldr	r3, [fp, #-8]
80020c64:	e5933000 	ldr	r3, [r3]
80020c68:	e3c32001 	bic	r2, r3, #1
80020c6c:	e51b3008 	ldr	r3, [fp, #-8]
80020c70:	e5832000 	str	r2, [r3]
80020c74:	e51b0008 	ldr	r0, [fp, #-8]
80020c78:	eb00152a 	bl	80026128 <wakeup>
80020c7c:	e59f0010 	ldr	r0, [pc, #16]	@ 80020c94 <brelse+0xd8>
80020c80:	eb001675 	bl	8002665c <release>
80020c84:	e1a00000 	nop			@ (mov r0, r0)
80020c88:	e24bd004 	sub	sp, fp, #4
80020c8c:	e8bd8800 	pop	{fp, pc}
80020c90:	80029c30 	.word	0x80029c30
80020c94:	800ab0ec 	.word	0x800ab0ec
80020c98:	800ac610 	.word	0x800ac610

80020c9c <get_mark>:
80020c9c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020ca0:	e28db000 	add	fp, sp, #0
80020ca4:	e24dd00c 	sub	sp, sp, #12
80020ca8:	e50b0008 	str	r0, [fp, #-8]
80020cac:	e50b100c 	str	r1, [fp, #-12]
80020cb0:	e51b3008 	ldr	r3, [fp, #-8]
80020cb4:	e2433006 	sub	r3, r3, #6
80020cb8:	e59f2034 	ldr	r2, [pc, #52]	@ 80020cf4 <get_mark+0x58>
80020cbc:	e2833008 	add	r3, r3, #8
80020cc0:	e1a03183 	lsl	r3, r3, #3
80020cc4:	e0823003 	add	r3, r2, r3
80020cc8:	e5932004 	ldr	r2, [r3, #4]
80020ccc:	e51b300c 	ldr	r3, [fp, #-12]
80020cd0:	e0823003 	add	r3, r2, r3
80020cd4:	e1a02183 	lsl	r2, r3, #3
80020cd8:	e59f3014 	ldr	r3, [pc, #20]	@ 80020cf4 <get_mark+0x58>
80020cdc:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80020ce0:	e0823003 	add	r3, r2, r3
80020ce4:	e1a00003 	mov	r0, r3
80020ce8:	e28bd000 	add	sp, fp, #0
80020cec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020cf0:	e12fff1e 	bx	lr
80020cf4:	800ac828 	.word	0x800ac828

80020cf8 <blkid2mem>:
80020cf8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020cfc:	e28db000 	add	fp, sp, #0
80020d00:	e24dd00c 	sub	sp, sp, #12
80020d04:	e50b0008 	str	r0, [fp, #-8]
80020d08:	e50b100c 	str	r1, [fp, #-12]
80020d0c:	e59f3020 	ldr	r3, [pc, #32]	@ 80020d34 <blkid2mem+0x3c>
80020d10:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80020d14:	e51b100c 	ldr	r1, [fp, #-12]
80020d18:	e51b2008 	ldr	r2, [fp, #-8]
80020d1c:	e1a02211 	lsl	r2, r1, r2
80020d20:	e0833002 	add	r3, r3, r2
80020d24:	e1a00003 	mov	r0, r3
80020d28:	e28bd000 	add	sp, fp, #0
80020d2c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020d30:	e12fff1e 	bx	lr
80020d34:	800ac828 	.word	0x800ac828

80020d38 <mem2blkid>:
80020d38:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020d3c:	e28db000 	add	fp, sp, #0
80020d40:	e24dd00c 	sub	sp, sp, #12
80020d44:	e50b0008 	str	r0, [fp, #-8]
80020d48:	e50b100c 	str	r1, [fp, #-12]
80020d4c:	e51b200c 	ldr	r2, [fp, #-12]
80020d50:	e59f301c 	ldr	r3, [pc, #28]	@ 80020d74 <mem2blkid+0x3c>
80020d54:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80020d58:	e0422003 	sub	r2, r2, r3
80020d5c:	e51b3008 	ldr	r3, [fp, #-8]
80020d60:	e1a03332 	lsr	r3, r2, r3
80020d64:	e1a00003 	mov	r0, r3
80020d68:	e28bd000 	add	sp, fp, #0
80020d6c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020d70:	e12fff1e 	bx	lr
80020d74:	800ac828 	.word	0x800ac828

80020d78 <available>:
80020d78:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020d7c:	e28db000 	add	fp, sp, #0
80020d80:	e24dd00c 	sub	sp, sp, #12
80020d84:	e50b0008 	str	r0, [fp, #-8]
80020d88:	e50b100c 	str	r1, [fp, #-12]
80020d8c:	e51b300c 	ldr	r3, [fp, #-12]
80020d90:	e203301f 	and	r3, r3, #31
80020d94:	e3a02001 	mov	r2, #1
80020d98:	e1a03312 	lsl	r3, r2, r3
80020d9c:	e1a02003 	mov	r2, r3
80020da0:	e51b3008 	ldr	r3, [fp, #-8]
80020da4:	e0033002 	and	r3, r3, r2
80020da8:	e1a00003 	mov	r0, r3
80020dac:	e28bd000 	add	sp, fp, #0
80020db0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020db4:	e12fff1e 	bx	lr

80020db8 <kmem_init>:
80020db8:	e92d4800 	push	{fp, lr}
80020dbc:	e28db004 	add	fp, sp, #4
80020dc0:	e59f100c 	ldr	r1, [pc, #12]	@ 80020dd4 <kmem_init+0x1c>
80020dc4:	e59f000c 	ldr	r0, [pc, #12]	@ 80020dd8 <kmem_init+0x20>
80020dc8:	eb001606 	bl	800265e8 <initlock>
80020dcc:	e1a00000 	nop			@ (mov r0, r0)
80020dd0:	e8bd8800 	pop	{fp, pc}
80020dd4:	80029c38 	.word	0x80029c38
80020dd8:	800ac828 	.word	0x800ac828

80020ddc <kmem_init2>:
80020ddc:	e92d4800 	push	{fp, lr}
80020de0:	e28db004 	add	fp, sp, #4
80020de4:	e24dd028 	sub	sp, sp, #40	@ 0x28
80020de8:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80020dec:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
80020df0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80020df4:	e59f217c 	ldr	r2, [pc, #380]	@ 80020f78 <kmem_init2+0x19c>
80020df8:	e5823034 	str	r3, [r2, #52]	@ 0x34
80020dfc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80020e00:	e59f2170 	ldr	r2, [pc, #368]	@ 80020f78 <kmem_init2+0x19c>
80020e04:	e582303c 	str	r3, [r2, #60]	@ 0x3c
80020e08:	e59f3168 	ldr	r3, [pc, #360]	@ 80020f78 <kmem_init2+0x19c>
80020e0c:	e593203c 	ldr	r2, [r3, #60]	@ 0x3c
80020e10:	e59f3160 	ldr	r3, [pc, #352]	@ 80020f78 <kmem_init2+0x19c>
80020e14:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80020e18:	e0423003 	sub	r3, r2, r3
80020e1c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80020e20:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020e24:	e1a038a3 	lsr	r3, r3, #17
80020e28:	e2833001 	add	r3, r3, #1
80020e2c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80020e30:	e3a03000 	mov	r3, #0
80020e34:	e50b3010 	str	r3, [fp, #-16]
80020e38:	e3a03006 	mov	r3, #6
80020e3c:	e50b3008 	str	r3, [fp, #-8]
80020e40:	ea00002a 	b	80020ef0 <kmem_init2+0x114>
80020e44:	e51b3008 	ldr	r3, [fp, #-8]
80020e48:	e1a03183 	lsl	r3, r3, #3
80020e4c:	e59f2128 	ldr	r2, [pc, #296]	@ 80020f7c <kmem_init2+0x1a0>
80020e50:	e0833002 	add	r3, r3, r2
80020e54:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80020e58:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80020e5c:	e51b2010 	ldr	r2, [fp, #-16]
80020e60:	e5832004 	str	r2, [r3, #4]
80020e64:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80020e68:	e59f2110 	ldr	r2, [pc, #272]	@ 80020f80 <kmem_init2+0x1a4>
80020e6c:	e5832000 	str	r2, [r3]
80020e70:	e3a03000 	mov	r3, #0
80020e74:	e50b300c 	str	r3, [fp, #-12]
80020e78:	ea00000e 	b	80020eb8 <kmem_init2+0xdc>
80020e7c:	e51b3008 	ldr	r3, [fp, #-8]
80020e80:	e2833006 	add	r3, r3, #6
80020e84:	e51b100c 	ldr	r1, [fp, #-12]
80020e88:	e1a00003 	mov	r0, r3
80020e8c:	ebffff82 	bl	80020c9c <get_mark>
80020e90:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80020e94:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80020e98:	e3e02000 	mvn	r2, #0
80020e9c:	e5832000 	str	r2, [r3]
80020ea0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80020ea4:	e3a02000 	mov	r2, #0
80020ea8:	e5832004 	str	r2, [r3, #4]
80020eac:	e51b300c 	ldr	r3, [fp, #-12]
80020eb0:	e2833001 	add	r3, r3, #1
80020eb4:	e50b300c 	str	r3, [fp, #-12]
80020eb8:	e51b300c 	ldr	r3, [fp, #-12]
80020ebc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80020ec0:	e1520003 	cmp	r2, r3
80020ec4:	8affffec 	bhi	80020e7c <kmem_init2+0xa0>
80020ec8:	e51b2010 	ldr	r2, [fp, #-16]
80020ecc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80020ed0:	e0823003 	add	r3, r2, r3
80020ed4:	e50b3010 	str	r3, [fp, #-16]
80020ed8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80020edc:	e1a03083 	lsl	r3, r3, #1
80020ee0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80020ee4:	e51b3008 	ldr	r3, [fp, #-8]
80020ee8:	e2433001 	sub	r3, r3, #1
80020eec:	e50b3008 	str	r3, [fp, #-8]
80020ef0:	e51b3008 	ldr	r3, [fp, #-8]
80020ef4:	e3530000 	cmp	r3, #0
80020ef8:	aaffffd1 	bge	80020e44 <kmem_init2+0x68>
80020efc:	e59f3074 	ldr	r3, [pc, #116]	@ 80020f78 <kmem_init2+0x19c>
80020f00:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
80020f04:	e51b3010 	ldr	r3, [fp, #-16]
80020f08:	e1a03183 	lsl	r3, r3, #3
80020f0c:	e0823003 	add	r3, r2, r3
80020f10:	e2833eff 	add	r3, r3, #4080	@ 0xff0
80020f14:	e283300f 	add	r3, r3, #15
80020f18:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80020f1c:	e3c3300f 	bic	r3, r3, #15
80020f20:	e59f2050 	ldr	r2, [pc, #80]	@ 80020f78 <kmem_init2+0x19c>
80020f24:	e5823038 	str	r3, [r2, #56]	@ 0x38
80020f28:	e59f3048 	ldr	r3, [pc, #72]	@ 80020f78 <kmem_init2+0x19c>
80020f2c:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80020f30:	e50b3008 	str	r3, [fp, #-8]
80020f34:	ea000006 	b	80020f54 <kmem_init2+0x178>
80020f38:	e51b3008 	ldr	r3, [fp, #-8]
80020f3c:	e3a0100c 	mov	r1, #12
80020f40:	e1a00003 	mov	r0, r3
80020f44:	eb00018d 	bl	80021580 <kfree>
80020f48:	e51b3008 	ldr	r3, [fp, #-8]
80020f4c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020f50:	e50b3008 	str	r3, [fp, #-8]
80020f54:	e59f301c 	ldr	r3, [pc, #28]	@ 80020f78 <kmem_init2+0x19c>
80020f58:	e593203c 	ldr	r2, [r3, #60]	@ 0x3c
80020f5c:	e51b3008 	ldr	r3, [fp, #-8]
80020f60:	e1520003 	cmp	r2, r3
80020f64:	8afffff3 	bhi	80020f38 <kmem_init2+0x15c>
80020f68:	e1a00000 	nop			@ (mov r0, r0)
80020f6c:	e1a00000 	nop			@ (mov r0, r0)
80020f70:	e24bd004 	sub	sp, fp, #4
80020f74:	e8bd8800 	pop	{fp, pc}
80020f78:	800ac828 	.word	0x800ac828
80020f7c:	800ac868 	.word	0x800ac868
80020f80:	0000ffff 	.word	0x0000ffff

80020f84 <unmark_blk>:
80020f84:	e92d4800 	push	{fp, lr}
80020f88:	e28db004 	add	fp, sp, #4
80020f8c:	e24dd020 	sub	sp, sp, #32
80020f90:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80020f94:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80020f98:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80020f9c:	e2433006 	sub	r3, r3, #6
80020fa0:	e2833008 	add	r3, r3, #8
80020fa4:	e1a03183 	lsl	r3, r3, #3
80020fa8:	e59f2168 	ldr	r2, [pc, #360]	@ 80021118 <unmark_blk+0x194>
80020fac:	e0833002 	add	r3, r3, r2
80020fb0:	e50b3008 	str	r3, [fp, #-8]
80020fb4:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80020fb8:	e1a032c3 	asr	r3, r3, #5
80020fbc:	e1a01003 	mov	r1, r3
80020fc0:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80020fc4:	ebffff34 	bl	80020c9c <get_mark>
80020fc8:	e50b000c 	str	r0, [fp, #-12]
80020fcc:	e51b300c 	ldr	r3, [fp, #-12]
80020fd0:	e5933004 	ldr	r3, [r3, #4]
80020fd4:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80020fd8:	e1a00003 	mov	r0, r3
80020fdc:	ebffff65 	bl	80020d78 <available>
80020fe0:	e1a03000 	mov	r3, r0
80020fe4:	e3530000 	cmp	r3, #0
80020fe8:	1a000001 	bne	80020ff4 <unmark_blk+0x70>
80020fec:	e59f0128 	ldr	r0, [pc, #296]	@ 8002111c <unmark_blk+0x198>
80020ff0:	eb0002bf 	bl	80021af4 <panic>
80020ff4:	e51b300c 	ldr	r3, [fp, #-12]
80020ff8:	e5933004 	ldr	r3, [r3, #4]
80020ffc:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80021000:	e202201f 	and	r2, r2, #31
80021004:	e3a01001 	mov	r1, #1
80021008:	e1a02211 	lsl	r2, r1, r2
8002100c:	e1e02002 	mvn	r2, r2
80021010:	e0022003 	and	r2, r2, r3
80021014:	e51b300c 	ldr	r3, [fp, #-12]
80021018:	e5832004 	str	r2, [r3, #4]
8002101c:	e51b300c 	ldr	r3, [fp, #-12]
80021020:	e5933004 	ldr	r3, [r3, #4]
80021024:	e3530000 	cmp	r3, #0
80021028:	1a000037 	bne	8002110c <unmark_blk+0x188>
8002102c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80021030:	e1a032c3 	asr	r3, r3, #5
80021034:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80021038:	e51b300c 	ldr	r3, [fp, #-12]
8002103c:	e5933000 	ldr	r3, [r3]
80021040:	e1a03823 	lsr	r3, r3, #16
80021044:	e50b3010 	str	r3, [fp, #-16]
80021048:	e51b300c 	ldr	r3, [fp, #-12]
8002104c:	e5933000 	ldr	r3, [r3]
80021050:	e6ff3073 	uxth	r3, r3
80021054:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80021058:	e51b3010 	ldr	r3, [fp, #-16]
8002105c:	e59f20bc 	ldr	r2, [pc, #188]	@ 80021120 <unmark_blk+0x19c>
80021060:	e1530002 	cmp	r3, r2
80021064:	0a00000d 	beq	800210a0 <unmark_blk+0x11c>
80021068:	e51b1010 	ldr	r1, [fp, #-16]
8002106c:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80021070:	ebffff09 	bl	80020c9c <get_mark>
80021074:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021078:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002107c:	e5933000 	ldr	r3, [r3]
80021080:	e1a03823 	lsr	r3, r3, #16
80021084:	e1a03803 	lsl	r3, r3, #16
80021088:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
8002108c:	e6ff2072 	uxth	r2, r2
80021090:	e1832002 	orr	r2, r3, r2
80021094:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021098:	e5832000 	str	r2, [r3]
8002109c:	ea000007 	b	800210c0 <unmark_blk+0x13c>
800210a0:	e51b3008 	ldr	r3, [fp, #-8]
800210a4:	e5932000 	ldr	r2, [r3]
800210a8:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800210ac:	e1520003 	cmp	r2, r3
800210b0:	1a000002 	bne	800210c0 <unmark_blk+0x13c>
800210b4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800210b8:	e51b3008 	ldr	r3, [fp, #-8]
800210bc:	e5832000 	str	r2, [r3]
800210c0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800210c4:	e59f2054 	ldr	r2, [pc, #84]	@ 80021120 <unmark_blk+0x19c>
800210c8:	e1530002 	cmp	r3, r2
800210cc:	0a00000b 	beq	80021100 <unmark_blk+0x17c>
800210d0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800210d4:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
800210d8:	ebfffeef 	bl	80020c9c <get_mark>
800210dc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800210e0:	e51b3010 	ldr	r3, [fp, #-16]
800210e4:	e1a02803 	lsl	r2, r3, #16
800210e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800210ec:	e5933000 	ldr	r3, [r3]
800210f0:	e6ff3073 	uxth	r3, r3
800210f4:	e1822003 	orr	r2, r2, r3
800210f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800210fc:	e5832000 	str	r2, [r3]
80021100:	e51b300c 	ldr	r3, [fp, #-12]
80021104:	e3e02000 	mvn	r2, #0
80021108:	e5832000 	str	r2, [r3]
8002110c:	e1a00000 	nop			@ (mov r0, r0)
80021110:	e24bd004 	sub	sp, fp, #4
80021114:	e8bd8800 	pop	{fp, pc}
80021118:	800ac828 	.word	0x800ac828
8002111c:	80029c40 	.word	0x80029c40
80021120:	0000ffff 	.word	0x0000ffff

80021124 <mark_blk>:
80021124:	e92d4800 	push	{fp, lr}
80021128:	e28db004 	add	fp, sp, #4
8002112c:	e24dd018 	sub	sp, sp, #24
80021130:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021134:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80021138:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002113c:	e2433006 	sub	r3, r3, #6
80021140:	e2833008 	add	r3, r3, #8
80021144:	e1a03183 	lsl	r3, r3, #3
80021148:	e59f2118 	ldr	r2, [pc, #280]	@ 80021268 <mark_blk+0x144>
8002114c:	e0833002 	add	r3, r3, r2
80021150:	e50b3008 	str	r3, [fp, #-8]
80021154:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80021158:	e1a032c3 	asr	r3, r3, #5
8002115c:	e1a01003 	mov	r1, r3
80021160:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021164:	ebfffecc 	bl	80020c9c <get_mark>
80021168:	e50b000c 	str	r0, [fp, #-12]
8002116c:	e51b300c 	ldr	r3, [fp, #-12]
80021170:	e5933004 	ldr	r3, [r3, #4]
80021174:	e3530000 	cmp	r3, #0
80021178:	03a03001 	moveq	r3, #1
8002117c:	13a03000 	movne	r3, #0
80021180:	e6ef3073 	uxtb	r3, r3
80021184:	e50b3010 	str	r3, [fp, #-16]
80021188:	e51b300c 	ldr	r3, [fp, #-12]
8002118c:	e5933004 	ldr	r3, [r3, #4]
80021190:	e51b101c 	ldr	r1, [fp, #-28]	@ 0xffffffe4
80021194:	e1a00003 	mov	r0, r3
80021198:	ebfffef6 	bl	80020d78 <available>
8002119c:	e1a03000 	mov	r3, r0
800211a0:	e3530000 	cmp	r3, #0
800211a4:	0a000001 	beq	800211b0 <mark_blk+0x8c>
800211a8:	e59f00bc 	ldr	r0, [pc, #188]	@ 8002126c <mark_blk+0x148>
800211ac:	eb000250 	bl	80021af4 <panic>
800211b0:	e51b300c 	ldr	r3, [fp, #-12]
800211b4:	e5933004 	ldr	r3, [r3, #4]
800211b8:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
800211bc:	e202201f 	and	r2, r2, #31
800211c0:	e3a01001 	mov	r1, #1
800211c4:	e1a02211 	lsl	r2, r1, r2
800211c8:	e1832002 	orr	r2, r3, r2
800211cc:	e51b300c 	ldr	r3, [fp, #-12]
800211d0:	e5832004 	str	r2, [r3, #4]
800211d4:	e51b3010 	ldr	r3, [fp, #-16]
800211d8:	e3530000 	cmp	r3, #0
800211dc:	0a00001e 	beq	8002125c <mark_blk+0x138>
800211e0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800211e4:	e1a032c3 	asr	r3, r3, #5
800211e8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800211ec:	e51b3008 	ldr	r3, [fp, #-8]
800211f0:	e5933000 	ldr	r3, [r3]
800211f4:	e1e03803 	mvn	r3, r3, lsl #16
800211f8:	e1e03823 	mvn	r3, r3, lsr #16
800211fc:	e51b200c 	ldr	r2, [fp, #-12]
80021200:	e5823000 	str	r3, [r2]
80021204:	e51b3008 	ldr	r3, [fp, #-8]
80021208:	e5933000 	ldr	r3, [r3]
8002120c:	e59f205c 	ldr	r2, [pc, #92]	@ 80021270 <mark_blk+0x14c>
80021210:	e1530002 	cmp	r3, r2
80021214:	0a00000d 	beq	80021250 <mark_blk+0x12c>
80021218:	e51b3008 	ldr	r3, [fp, #-8]
8002121c:	e5933000 	ldr	r3, [r3]
80021220:	e1a01003 	mov	r1, r3
80021224:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021228:	ebfffe9b 	bl	80020c9c <get_mark>
8002122c:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80021230:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80021234:	e1a02803 	lsl	r2, r3, #16
80021238:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002123c:	e5933000 	ldr	r3, [r3]
80021240:	e6ff3073 	uxth	r3, r3
80021244:	e1822003 	orr	r2, r2, r3
80021248:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002124c:	e5832000 	str	r2, [r3]
80021250:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80021254:	e51b3008 	ldr	r3, [fp, #-8]
80021258:	e5832000 	str	r2, [r3]
8002125c:	e1a00000 	nop			@ (mov r0, r0)
80021260:	e24bd004 	sub	sp, fp, #4
80021264:	e8bd8800 	pop	{fp, pc}
80021268:	800ac828 	.word	0x800ac828
8002126c:	80029c50 	.word	0x80029c50
80021270:	0000ffff 	.word	0x0000ffff

80021274 <get_blk>:
80021274:	e92d4800 	push	{fp, lr}
80021278:	e28db004 	add	fp, sp, #4
8002127c:	e24dd018 	sub	sp, sp, #24
80021280:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021284:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021288:	e2433006 	sub	r3, r3, #6
8002128c:	e2833008 	add	r3, r3, #8
80021290:	e1a03183 	lsl	r3, r3, #3
80021294:	e59f20c0 	ldr	r2, [pc, #192]	@ 8002135c <get_blk+0xe8>
80021298:	e0833002 	add	r3, r3, r2
8002129c:	e50b300c 	str	r3, [fp, #-12]
800212a0:	e51b300c 	ldr	r3, [fp, #-12]
800212a4:	e5933000 	ldr	r3, [r3]
800212a8:	e1a01003 	mov	r1, r3
800212ac:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
800212b0:	ebfffe79 	bl	80020c9c <get_mark>
800212b4:	e50b0010 	str	r0, [fp, #-16]
800212b8:	e51b3010 	ldr	r3, [fp, #-16]
800212bc:	e5933004 	ldr	r3, [r3, #4]
800212c0:	e3530000 	cmp	r3, #0
800212c4:	1a000001 	bne	800212d0 <get_blk+0x5c>
800212c8:	e59f0090 	ldr	r0, [pc, #144]	@ 80021360 <get_blk+0xec>
800212cc:	eb000208 	bl	80021af4 <panic>
800212d0:	e3a03000 	mov	r3, #0
800212d4:	e50b3008 	str	r3, [fp, #-8]
800212d8:	ea000018 	b	80021340 <get_blk+0xcc>
800212dc:	e51b3010 	ldr	r3, [fp, #-16]
800212e0:	e5933004 	ldr	r3, [r3, #4]
800212e4:	e3a01001 	mov	r1, #1
800212e8:	e51b2008 	ldr	r2, [fp, #-8]
800212ec:	e1a02211 	lsl	r2, r1, r2
800212f0:	e0033002 	and	r3, r3, r2
800212f4:	e3530000 	cmp	r3, #0
800212f8:	0a00000d 	beq	80021334 <get_blk+0xc0>
800212fc:	e51b300c 	ldr	r3, [fp, #-12]
80021300:	e5933000 	ldr	r3, [r3]
80021304:	e1a02283 	lsl	r2, r3, #5
80021308:	e51b3008 	ldr	r3, [fp, #-8]
8002130c:	e0823003 	add	r3, r2, r3
80021310:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80021314:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80021318:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
8002131c:	ebffff18 	bl	80020f84 <unmark_blk>
80021320:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80021324:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021328:	ebfffe72 	bl	80020cf8 <blkid2mem>
8002132c:	e1a03000 	mov	r3, r0
80021330:	ea000006 	b	80021350 <get_blk+0xdc>
80021334:	e51b3008 	ldr	r3, [fp, #-8]
80021338:	e2833001 	add	r3, r3, #1
8002133c:	e50b3008 	str	r3, [fp, #-8]
80021340:	e51b3008 	ldr	r3, [fp, #-8]
80021344:	e353001f 	cmp	r3, #31
80021348:	daffffe3 	ble	800212dc <get_blk+0x68>
8002134c:	e3a03000 	mov	r3, #0
80021350:	e1a00003 	mov	r0, r3
80021354:	e24bd004 	sub	sp, fp, #4
80021358:	e8bd8800 	pop	{fp, pc}
8002135c:	800ac828 	.word	0x800ac828
80021360:	80029c60 	.word	0x80029c60

80021364 <_kmalloc>:
80021364:	e92d4800 	push	{fp, lr}
80021368:	e28db004 	add	fp, sp, #4
8002136c:	e24dd010 	sub	sp, sp, #16
80021370:	e50b0010 	str	r0, [fp, #-16]
80021374:	e51b3010 	ldr	r3, [fp, #-16]
80021378:	e2433006 	sub	r3, r3, #6
8002137c:	e2833008 	add	r3, r3, #8
80021380:	e1a03183 	lsl	r3, r3, #3
80021384:	e59f2090 	ldr	r2, [pc, #144]	@ 8002141c <_kmalloc+0xb8>
80021388:	e0833002 	add	r3, r3, r2
8002138c:	e50b300c 	str	r3, [fp, #-12]
80021390:	e3a03000 	mov	r3, #0
80021394:	e50b3008 	str	r3, [fp, #-8]
80021398:	e51b300c 	ldr	r3, [fp, #-12]
8002139c:	e5933000 	ldr	r3, [r3]
800213a0:	e59f2078 	ldr	r2, [pc, #120]	@ 80021420 <_kmalloc+0xbc>
800213a4:	e1530002 	cmp	r3, r2
800213a8:	0a000003 	beq	800213bc <_kmalloc+0x58>
800213ac:	e51b0010 	ldr	r0, [fp, #-16]
800213b0:	ebffffaf 	bl	80021274 <get_blk>
800213b4:	e50b0008 	str	r0, [fp, #-8]
800213b8:	ea000013 	b	8002140c <_kmalloc+0xa8>
800213bc:	e51b3010 	ldr	r3, [fp, #-16]
800213c0:	e353000b 	cmp	r3, #11
800213c4:	ca000010 	bgt	8002140c <_kmalloc+0xa8>
800213c8:	e51b3010 	ldr	r3, [fp, #-16]
800213cc:	e2833001 	add	r3, r3, #1
800213d0:	e1a00003 	mov	r0, r3
800213d4:	ebffffe2 	bl	80021364 <_kmalloc>
800213d8:	e50b0008 	str	r0, [fp, #-8]
800213dc:	e51b3008 	ldr	r3, [fp, #-8]
800213e0:	e3530000 	cmp	r3, #0
800213e4:	0a000008 	beq	8002140c <_kmalloc+0xa8>
800213e8:	e3a02001 	mov	r2, #1
800213ec:	e51b3010 	ldr	r3, [fp, #-16]
800213f0:	e1a03312 	lsl	r3, r2, r3
800213f4:	e1a02003 	mov	r2, r3
800213f8:	e51b3008 	ldr	r3, [fp, #-8]
800213fc:	e0833002 	add	r3, r3, r2
80021400:	e51b1010 	ldr	r1, [fp, #-16]
80021404:	e1a00003 	mov	r0, r3
80021408:	eb00001e 	bl	80021488 <_kfree>
8002140c:	e51b3008 	ldr	r3, [fp, #-8]
80021410:	e1a00003 	mov	r0, r3
80021414:	e24bd004 	sub	sp, fp, #4
80021418:	e8bd8800 	pop	{fp, pc}
8002141c:	800ac828 	.word	0x800ac828
80021420:	0000ffff 	.word	0x0000ffff

80021424 <kmalloc>:
80021424:	e92d4800 	push	{fp, lr}
80021428:	e28db004 	add	fp, sp, #4
8002142c:	e24dd010 	sub	sp, sp, #16
80021430:	e50b0010 	str	r0, [fp, #-16]
80021434:	e51b3010 	ldr	r3, [fp, #-16]
80021438:	e353000c 	cmp	r3, #12
8002143c:	ca000002 	bgt	8002144c <kmalloc+0x28>
80021440:	e51b3010 	ldr	r3, [fp, #-16]
80021444:	e3530005 	cmp	r3, #5
80021448:	ca000001 	bgt	80021454 <kmalloc+0x30>
8002144c:	e59f002c 	ldr	r0, [pc, #44]	@ 80021480 <kmalloc+0x5c>
80021450:	eb0001a7 	bl	80021af4 <panic>
80021454:	e59f0028 	ldr	r0, [pc, #40]	@ 80021484 <kmalloc+0x60>
80021458:	eb001474 	bl	80026630 <acquire>
8002145c:	e51b0010 	ldr	r0, [fp, #-16]
80021460:	ebffffbf 	bl	80021364 <_kmalloc>
80021464:	e50b0008 	str	r0, [fp, #-8]
80021468:	e59f0014 	ldr	r0, [pc, #20]	@ 80021484 <kmalloc+0x60>
8002146c:	eb00147a 	bl	8002665c <release>
80021470:	e51b3008 	ldr	r3, [fp, #-8]
80021474:	e1a00003 	mov	r0, r3
80021478:	e24bd004 	sub	sp, fp, #4
8002147c:	e8bd8800 	pop	{fp, pc}
80021480:	80029c78 	.word	0x80029c78
80021484:	800ac828 	.word	0x800ac828

80021488 <_kfree>:
80021488:	e92d4800 	push	{fp, lr}
8002148c:	e28db004 	add	fp, sp, #4
80021490:	e24dd018 	sub	sp, sp, #24
80021494:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021498:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
8002149c:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
800214a0:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
800214a4:	ebfffe23 	bl	80020d38 <mem2blkid>
800214a8:	e50b0008 	str	r0, [fp, #-8]
800214ac:	e51b3008 	ldr	r3, [fp, #-8]
800214b0:	e1a032c3 	asr	r3, r3, #5
800214b4:	e1a01003 	mov	r1, r3
800214b8:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
800214bc:	ebfffdf6 	bl	80020c9c <get_mark>
800214c0:	e50b000c 	str	r0, [fp, #-12]
800214c4:	e51b300c 	ldr	r3, [fp, #-12]
800214c8:	e5933004 	ldr	r3, [r3, #4]
800214cc:	e51b1008 	ldr	r1, [fp, #-8]
800214d0:	e1a00003 	mov	r0, r3
800214d4:	ebfffe27 	bl	80020d78 <available>
800214d8:	e1a03000 	mov	r3, r0
800214dc:	e3530000 	cmp	r3, #0
800214e0:	0a000001 	beq	800214ec <_kfree+0x64>
800214e4:	e59f0090 	ldr	r0, [pc, #144]	@ 8002157c <_kfree+0xf4>
800214e8:	eb000181 	bl	80021af4 <panic>
800214ec:	e51b3008 	ldr	r3, [fp, #-8]
800214f0:	e2233001 	eor	r3, r3, #1
800214f4:	e50b3010 	str	r3, [fp, #-16]
800214f8:	e51b300c 	ldr	r3, [fp, #-12]
800214fc:	e5933004 	ldr	r3, [r3, #4]
80021500:	e51b1010 	ldr	r1, [fp, #-16]
80021504:	e1a00003 	mov	r0, r3
80021508:	ebfffe1a 	bl	80020d78 <available>
8002150c:	e1a03000 	mov	r3, r0
80021510:	e3530000 	cmp	r3, #0
80021514:	0a000002 	beq	80021524 <_kfree+0x9c>
80021518:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002151c:	e353000c 	cmp	r3, #12
80021520:	1a000003 	bne	80021534 <_kfree+0xac>
80021524:	e51b1008 	ldr	r1, [fp, #-8]
80021528:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
8002152c:	ebfffefc 	bl	80021124 <mark_blk>
80021530:	ea00000e 	b	80021570 <_kfree+0xe8>
80021534:	e51b1010 	ldr	r1, [fp, #-16]
80021538:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
8002153c:	ebfffe90 	bl	80020f84 <unmark_blk>
80021540:	e51b3008 	ldr	r3, [fp, #-8]
80021544:	e3c33001 	bic	r3, r3, #1
80021548:	e1a01003 	mov	r1, r3
8002154c:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
80021550:	ebfffde8 	bl	80020cf8 <blkid2mem>
80021554:	e1a02000 	mov	r2, r0
80021558:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002155c:	e2833001 	add	r3, r3, #1
80021560:	e1a01003 	mov	r1, r3
80021564:	e1a00002 	mov	r0, r2
80021568:	ebffffc6 	bl	80021488 <_kfree>
8002156c:	e1a00000 	nop			@ (mov r0, r0)
80021570:	e1a00000 	nop			@ (mov r0, r0)
80021574:	e24bd004 	sub	sp, fp, #4
80021578:	e8bd8800 	pop	{fp, pc}
8002157c:	80029c98 	.word	0x80029c98

80021580 <kfree>:
80021580:	e92d4800 	push	{fp, lr}
80021584:	e28db004 	add	fp, sp, #4
80021588:	e24dd008 	sub	sp, sp, #8
8002158c:	e50b0008 	str	r0, [fp, #-8]
80021590:	e50b100c 	str	r1, [fp, #-12]
80021594:	e51b300c 	ldr	r3, [fp, #-12]
80021598:	e353000c 	cmp	r3, #12
8002159c:	ca00000b 	bgt	800215d0 <kfree+0x50>
800215a0:	e51b300c 	ldr	r3, [fp, #-12]
800215a4:	e3530005 	cmp	r3, #5
800215a8:	da000008 	ble	800215d0 <kfree+0x50>
800215ac:	e3a02001 	mov	r2, #1
800215b0:	e51b300c 	ldr	r3, [fp, #-12]
800215b4:	e1a03312 	lsl	r3, r2, r3
800215b8:	e2433001 	sub	r3, r3, #1
800215bc:	e1a02003 	mov	r2, r3
800215c0:	e51b3008 	ldr	r3, [fp, #-8]
800215c4:	e0033002 	and	r3, r3, r2
800215c8:	e3530000 	cmp	r3, #0
800215cc:	0a000001 	beq	800215d8 <kfree+0x58>
800215d0:	e59f0028 	ldr	r0, [pc, #40]	@ 80021600 <kfree+0x80>
800215d4:	eb000146 	bl	80021af4 <panic>
800215d8:	e59f0024 	ldr	r0, [pc, #36]	@ 80021604 <kfree+0x84>
800215dc:	eb001413 	bl	80026630 <acquire>
800215e0:	e51b100c 	ldr	r1, [fp, #-12]
800215e4:	e51b0008 	ldr	r0, [fp, #-8]
800215e8:	ebffffa6 	bl	80021488 <_kfree>
800215ec:	e59f0010 	ldr	r0, [pc, #16]	@ 80021604 <kfree+0x84>
800215f0:	eb001419 	bl	8002665c <release>
800215f4:	e1a00000 	nop			@ (mov r0, r0)
800215f8:	e24bd004 	sub	sp, fp, #4
800215fc:	e8bd8800 	pop	{fp, pc}
80021600:	80029cac 	.word	0x80029cac
80021604:	800ac828 	.word	0x800ac828

80021608 <free_page>:
80021608:	e92d4800 	push	{fp, lr}
8002160c:	e28db004 	add	fp, sp, #4
80021610:	e24dd008 	sub	sp, sp, #8
80021614:	e50b0008 	str	r0, [fp, #-8]
80021618:	e3a0100c 	mov	r1, #12
8002161c:	e51b0008 	ldr	r0, [fp, #-8]
80021620:	ebffffd6 	bl	80021580 <kfree>
80021624:	e1a00000 	nop			@ (mov r0, r0)
80021628:	e24bd004 	sub	sp, fp, #4
8002162c:	e8bd8800 	pop	{fp, pc}

80021630 <alloc_page>:
80021630:	e92d4800 	push	{fp, lr}
80021634:	e28db004 	add	fp, sp, #4
80021638:	e3a0000c 	mov	r0, #12
8002163c:	ebffff78 	bl	80021424 <kmalloc>
80021640:	e1a03000 	mov	r3, r0
80021644:	e1a00003 	mov	r0, r3
80021648:	e8bd8800 	pop	{fp, pc}

8002164c <get_order>:
8002164c:	e92d4800 	push	{fp, lr}
80021650:	e28db004 	add	fp, sp, #4
80021654:	e24dd010 	sub	sp, sp, #16
80021658:	e50b0010 	str	r0, [fp, #-16]
8002165c:	e51b3010 	ldr	r3, [fp, #-16]
80021660:	e2433001 	sub	r3, r3, #1
80021664:	e50b3010 	str	r3, [fp, #-16]
80021668:	e51b3010 	ldr	r3, [fp, #-16]
8002166c:	e1a030a3 	lsr	r3, r3, #1
80021670:	e51b2010 	ldr	r2, [fp, #-16]
80021674:	e1823003 	orr	r3, r2, r3
80021678:	e50b3010 	str	r3, [fp, #-16]
8002167c:	e51b3010 	ldr	r3, [fp, #-16]
80021680:	e1a03123 	lsr	r3, r3, #2
80021684:	e51b2010 	ldr	r2, [fp, #-16]
80021688:	e1823003 	orr	r3, r2, r3
8002168c:	e50b3010 	str	r3, [fp, #-16]
80021690:	e51b3010 	ldr	r3, [fp, #-16]
80021694:	e1a03223 	lsr	r3, r3, #4
80021698:	e51b2010 	ldr	r2, [fp, #-16]
8002169c:	e1823003 	orr	r3, r2, r3
800216a0:	e50b3010 	str	r3, [fp, #-16]
800216a4:	e51b3010 	ldr	r3, [fp, #-16]
800216a8:	e1a03423 	lsr	r3, r3, #8
800216ac:	e51b2010 	ldr	r2, [fp, #-16]
800216b0:	e1823003 	orr	r3, r2, r3
800216b4:	e50b3010 	str	r3, [fp, #-16]
800216b8:	e51b3010 	ldr	r3, [fp, #-16]
800216bc:	e1a03823 	lsr	r3, r3, #16
800216c0:	e51b2010 	ldr	r2, [fp, #-16]
800216c4:	e1823003 	orr	r3, r2, r3
800216c8:	e50b3010 	str	r3, [fp, #-16]
800216cc:	e51b3010 	ldr	r3, [fp, #-16]
800216d0:	e2833001 	add	r3, r3, #1
800216d4:	e50b3010 	str	r3, [fp, #-16]
800216d8:	e3a03000 	mov	r3, #0
800216dc:	e50b3008 	str	r3, [fp, #-8]
800216e0:	ea00000a 	b	80021710 <get_order+0xc4>
800216e4:	e3a02001 	mov	r2, #1
800216e8:	e51b3008 	ldr	r3, [fp, #-8]
800216ec:	e1a03312 	lsl	r3, r2, r3
800216f0:	e1a02003 	mov	r2, r3
800216f4:	e51b3010 	ldr	r3, [fp, #-16]
800216f8:	e0033002 	and	r3, r3, r2
800216fc:	e3530000 	cmp	r3, #0
80021700:	1a000006 	bne	80021720 <get_order+0xd4>
80021704:	e51b3008 	ldr	r3, [fp, #-8]
80021708:	e2833001 	add	r3, r3, #1
8002170c:	e50b3008 	str	r3, [fp, #-8]
80021710:	e51b3008 	ldr	r3, [fp, #-8]
80021714:	e353001f 	cmp	r3, #31
80021718:	9afffff1 	bls	800216e4 <get_order+0x98>
8002171c:	ea000000 	b	80021724 <get_order+0xd8>
80021720:	e1a00000 	nop			@ (mov r0, r0)
80021724:	e51b3008 	ldr	r3, [fp, #-8]
80021728:	e3530005 	cmp	r3, #5
8002172c:	8a000002 	bhi	8002173c <get_order+0xf0>
80021730:	e3a03006 	mov	r3, #6
80021734:	e50b3008 	str	r3, [fp, #-8]
80021738:	ea000004 	b	80021750 <get_order+0x104>
8002173c:	e51b3008 	ldr	r3, [fp, #-8]
80021740:	e353000c 	cmp	r3, #12
80021744:	9a000001 	bls	80021750 <get_order+0x104>
80021748:	e59f0010 	ldr	r0, [pc, #16]	@ 80021760 <get_order+0x114>
8002174c:	eb0000e8 	bl	80021af4 <panic>
80021750:	e51b3008 	ldr	r3, [fp, #-8]
80021754:	e1a00003 	mov	r0, r3
80021758:	e24bd004 	sub	sp, fp, #4
8002175c:	e8bd8800 	pop	{fp, pc}
80021760:	80029cdc 	.word	0x80029cdc

80021764 <printint>:
80021764:	e92d4800 	push	{fp, lr}
80021768:	e28db004 	add	fp, sp, #4
8002176c:	e24dd028 	sub	sp, sp, #40	@ 0x28
80021770:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80021774:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80021778:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
8002177c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80021780:	e3530000 	cmp	r3, #0
80021784:	0a00000a 	beq	800217b4 <printint+0x50>
80021788:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002178c:	e1a03fa3 	lsr	r3, r3, #31
80021790:	e6ef3073 	uxtb	r3, r3
80021794:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80021798:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002179c:	e3530000 	cmp	r3, #0
800217a0:	0a000003 	beq	800217b4 <printint+0x50>
800217a4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800217a8:	e2633000 	rsb	r3, r3, #0
800217ac:	e50b300c 	str	r3, [fp, #-12]
800217b0:	ea000001 	b	800217bc <printint+0x58>
800217b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800217b8:	e50b300c 	str	r3, [fp, #-12]
800217bc:	e3a03000 	mov	r3, #0
800217c0:	e50b3008 	str	r3, [fp, #-8]
800217c4:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
800217c8:	e51b300c 	ldr	r3, [fp, #-12]
800217cc:	e1a01002 	mov	r1, r2
800217d0:	e1a00003 	mov	r0, r3
800217d4:	eb00209d 	bl	80029a50 <__aeabi_uidivmod>
800217d8:	e1a03001 	mov	r3, r1
800217dc:	e1a01003 	mov	r1, r3
800217e0:	e51b3008 	ldr	r3, [fp, #-8]
800217e4:	e2832001 	add	r2, r3, #1
800217e8:	e50b2008 	str	r2, [fp, #-8]
800217ec:	e59f209c 	ldr	r2, [pc, #156]	@ 80021890 <printint+0x12c>
800217f0:	e7d22001 	ldrb	r2, [r2, r1]
800217f4:	e2433004 	sub	r3, r3, #4
800217f8:	e083300b 	add	r3, r3, fp
800217fc:	e5432018 	strb	r2, [r3, #-24]	@ 0xffffffe8
80021800:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80021804:	e1a01003 	mov	r1, r3
80021808:	e51b000c 	ldr	r0, [fp, #-12]
8002180c:	eb002052 	bl	8002995c <__udivsi3>
80021810:	e1a03000 	mov	r3, r0
80021814:	e50b300c 	str	r3, [fp, #-12]
80021818:	e51b300c 	ldr	r3, [fp, #-12]
8002181c:	e3530000 	cmp	r3, #0
80021820:	1affffe7 	bne	800217c4 <printint+0x60>
80021824:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80021828:	e3530000 	cmp	r3, #0
8002182c:	0a00000d 	beq	80021868 <printint+0x104>
80021830:	e51b3008 	ldr	r3, [fp, #-8]
80021834:	e2832001 	add	r2, r3, #1
80021838:	e50b2008 	str	r2, [fp, #-8]
8002183c:	e2433004 	sub	r3, r3, #4
80021840:	e083300b 	add	r3, r3, fp
80021844:	e3a0202d 	mov	r2, #45	@ 0x2d
80021848:	e5432018 	strb	r2, [r3, #-24]	@ 0xffffffe8
8002184c:	ea000005 	b	80021868 <printint+0x104>
80021850:	e24b201c 	sub	r2, fp, #28
80021854:	e51b3008 	ldr	r3, [fp, #-8]
80021858:	e0823003 	add	r3, r2, r3
8002185c:	e5d33000 	ldrb	r3, [r3]
80021860:	e1a00003 	mov	r0, r3
80021864:	eb0000bb 	bl	80021b58 <consputc>
80021868:	e51b3008 	ldr	r3, [fp, #-8]
8002186c:	e2433001 	sub	r3, r3, #1
80021870:	e50b3008 	str	r3, [fp, #-8]
80021874:	e51b3008 	ldr	r3, [fp, #-8]
80021878:	e3530000 	cmp	r3, #0
8002187c:	aafffff3 	bge	80021850 <printint+0xec>
80021880:	e1a00000 	nop			@ (mov r0, r0)
80021884:	e1a00000 	nop			@ (mov r0, r0)
80021888:	e24bd004 	sub	sp, fp, #4
8002188c:	e8bd8800 	pop	{fp, pc}
80021890:	8002b000 	.word	0x8002b000

80021894 <cprintf>:
80021894:	e92d000f 	push	{r0, r1, r2, r3}
80021898:	e92d4800 	push	{fp, lr}
8002189c:	e28db004 	add	fp, sp, #4
800218a0:	e24dd018 	sub	sp, sp, #24
800218a4:	e59f323c 	ldr	r3, [pc, #572]	@ 80021ae8 <cprintf+0x254>
800218a8:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
800218ac:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800218b0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800218b4:	e3530000 	cmp	r3, #0
800218b8:	0a000001 	beq	800218c4 <cprintf+0x30>
800218bc:	e59f0224 	ldr	r0, [pc, #548]	@ 80021ae8 <cprintf+0x254>
800218c0:	eb00135a 	bl	80026630 <acquire>
800218c4:	e59b3004 	ldr	r3, [fp, #4]
800218c8:	e3530000 	cmp	r3, #0
800218cc:	1a000001 	bne	800218d8 <cprintf+0x44>
800218d0:	e59f0214 	ldr	r0, [pc, #532]	@ 80021aec <cprintf+0x258>
800218d4:	eb000086 	bl	80021af4 <panic>
800218d8:	e28b3008 	add	r3, fp, #8
800218dc:	e50b300c 	str	r3, [fp, #-12]
800218e0:	e3a03000 	mov	r3, #0
800218e4:	e50b3008 	str	r3, [fp, #-8]
800218e8:	ea00006a 	b	80021a98 <cprintf+0x204>
800218ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800218f0:	e3530025 	cmp	r3, #37	@ 0x25
800218f4:	0a000002 	beq	80021904 <cprintf+0x70>
800218f8:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
800218fc:	eb000095 	bl	80021b58 <consputc>
80021900:	ea000061 	b	80021a8c <cprintf+0x1f8>
80021904:	e59b2004 	ldr	r2, [fp, #4]
80021908:	e51b3008 	ldr	r3, [fp, #-8]
8002190c:	e2833001 	add	r3, r3, #1
80021910:	e50b3008 	str	r3, [fp, #-8]
80021914:	e51b3008 	ldr	r3, [fp, #-8]
80021918:	e0823003 	add	r3, r2, r3
8002191c:	e5d33000 	ldrb	r3, [r3]
80021920:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80021924:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021928:	e3530000 	cmp	r3, #0
8002192c:	0a000062 	beq	80021abc <cprintf+0x228>
80021930:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021934:	e3530025 	cmp	r3, #37	@ 0x25
80021938:	0a00004b 	beq	80021a6c <cprintf+0x1d8>
8002193c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021940:	e3530025 	cmp	r3, #37	@ 0x25
80021944:	ba00004b 	blt	80021a78 <cprintf+0x1e4>
80021948:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002194c:	e3530078 	cmp	r3, #120	@ 0x78
80021950:	ca000048 	bgt	80021a78 <cprintf+0x1e4>
80021954:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021958:	e3530064 	cmp	r3, #100	@ 0x64
8002195c:	ba000045 	blt	80021a78 <cprintf+0x1e4>
80021960:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021964:	e2433064 	sub	r3, r3, #100	@ 0x64
80021968:	e3530014 	cmp	r3, #20
8002196c:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
80021970:	ea000040 	b	80021a78 <cprintf+0x1e4>
80021974:	800219c8 	.word	0x800219c8
80021978:	80021a78 	.word	0x80021a78
8002197c:	80021a78 	.word	0x80021a78
80021980:	80021a78 	.word	0x80021a78
80021984:	80021a78 	.word	0x80021a78
80021988:	80021a78 	.word	0x80021a78
8002198c:	80021a78 	.word	0x80021a78
80021990:	80021a78 	.word	0x80021a78
80021994:	80021a78 	.word	0x80021a78
80021998:	80021a78 	.word	0x80021a78
8002199c:	80021a78 	.word	0x80021a78
800219a0:	80021a78 	.word	0x80021a78
800219a4:	800219ec 	.word	0x800219ec
800219a8:	80021a78 	.word	0x80021a78
800219ac:	80021a78 	.word	0x80021a78
800219b0:	80021a10 	.word	0x80021a10
800219b4:	80021a78 	.word	0x80021a78
800219b8:	80021a78 	.word	0x80021a78
800219bc:	80021a78 	.word	0x80021a78
800219c0:	80021a78 	.word	0x80021a78
800219c4:	800219ec 	.word	0x800219ec
800219c8:	e51b300c 	ldr	r3, [fp, #-12]
800219cc:	e2832004 	add	r2, r3, #4
800219d0:	e50b200c 	str	r2, [fp, #-12]
800219d4:	e5933000 	ldr	r3, [r3]
800219d8:	e3a02001 	mov	r2, #1
800219dc:	e3a0100a 	mov	r1, #10
800219e0:	e1a00003 	mov	r0, r3
800219e4:	ebffff5e 	bl	80021764 <printint>
800219e8:	ea000027 	b	80021a8c <cprintf+0x1f8>
800219ec:	e51b300c 	ldr	r3, [fp, #-12]
800219f0:	e2832004 	add	r2, r3, #4
800219f4:	e50b200c 	str	r2, [fp, #-12]
800219f8:	e5933000 	ldr	r3, [r3]
800219fc:	e3a02000 	mov	r2, #0
80021a00:	e3a01010 	mov	r1, #16
80021a04:	e1a00003 	mov	r0, r3
80021a08:	ebffff55 	bl	80021764 <printint>
80021a0c:	ea00001e 	b	80021a8c <cprintf+0x1f8>
80021a10:	e51b300c 	ldr	r3, [fp, #-12]
80021a14:	e2832004 	add	r2, r3, #4
80021a18:	e50b200c 	str	r2, [fp, #-12]
80021a1c:	e5933000 	ldr	r3, [r3]
80021a20:	e50b3010 	str	r3, [fp, #-16]
80021a24:	e51b3010 	ldr	r3, [fp, #-16]
80021a28:	e3530000 	cmp	r3, #0
80021a2c:	1a000009 	bne	80021a58 <cprintf+0x1c4>
80021a30:	e59f30b8 	ldr	r3, [pc, #184]	@ 80021af0 <cprintf+0x25c>
80021a34:	e50b3010 	str	r3, [fp, #-16]
80021a38:	ea000006 	b	80021a58 <cprintf+0x1c4>
80021a3c:	e51b3010 	ldr	r3, [fp, #-16]
80021a40:	e5d33000 	ldrb	r3, [r3]
80021a44:	e1a00003 	mov	r0, r3
80021a48:	eb000042 	bl	80021b58 <consputc>
80021a4c:	e51b3010 	ldr	r3, [fp, #-16]
80021a50:	e2833001 	add	r3, r3, #1
80021a54:	e50b3010 	str	r3, [fp, #-16]
80021a58:	e51b3010 	ldr	r3, [fp, #-16]
80021a5c:	e5d33000 	ldrb	r3, [r3]
80021a60:	e3530000 	cmp	r3, #0
80021a64:	1afffff4 	bne	80021a3c <cprintf+0x1a8>
80021a68:	ea000007 	b	80021a8c <cprintf+0x1f8>
80021a6c:	e3a00025 	mov	r0, #37	@ 0x25
80021a70:	eb000038 	bl	80021b58 <consputc>
80021a74:	ea000004 	b	80021a8c <cprintf+0x1f8>
80021a78:	e3a00025 	mov	r0, #37	@ 0x25
80021a7c:	eb000035 	bl	80021b58 <consputc>
80021a80:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021a84:	eb000033 	bl	80021b58 <consputc>
80021a88:	e1a00000 	nop			@ (mov r0, r0)
80021a8c:	e51b3008 	ldr	r3, [fp, #-8]
80021a90:	e2833001 	add	r3, r3, #1
80021a94:	e50b3008 	str	r3, [fp, #-8]
80021a98:	e59b2004 	ldr	r2, [fp, #4]
80021a9c:	e51b3008 	ldr	r3, [fp, #-8]
80021aa0:	e0823003 	add	r3, r2, r3
80021aa4:	e5d33000 	ldrb	r3, [r3]
80021aa8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80021aac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021ab0:	e3530000 	cmp	r3, #0
80021ab4:	1affff8c 	bne	800218ec <cprintf+0x58>
80021ab8:	ea000000 	b	80021ac0 <cprintf+0x22c>
80021abc:	e1a00000 	nop			@ (mov r0, r0)
80021ac0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80021ac4:	e3530000 	cmp	r3, #0
80021ac8:	0a000001 	beq	80021ad4 <cprintf+0x240>
80021acc:	e59f0014 	ldr	r0, [pc, #20]	@ 80021ae8 <cprintf+0x254>
80021ad0:	eb0012e1 	bl	8002665c <release>
80021ad4:	e1a00000 	nop			@ (mov r0, r0)
80021ad8:	e24bd004 	sub	sp, fp, #4
80021adc:	e8bd4800 	pop	{fp, lr}
80021ae0:	e28dd010 	add	sp, sp, #16
80021ae4:	e12fff1e 	bx	lr
80021ae8:	800ac8a4 	.word	0x800ac8a4
80021aec:	80029cec 	.word	0x80029cec
80021af0:	80029cf8 	.word	0x80029cf8

80021af4 <panic>:
80021af4:	e92d4800 	push	{fp, lr}
80021af8:	e28db004 	add	fp, sp, #4
80021afc:	e24dd008 	sub	sp, sp, #8
80021b00:	e50b0008 	str	r0, [fp, #-8]
80021b04:	ebfffa8d 	bl	80020540 <cli>
80021b08:	e59f3038 	ldr	r3, [pc, #56]	@ 80021b48 <panic+0x54>
80021b0c:	e3a02000 	mov	r2, #0
80021b10:	e5832034 	str	r2, [r3, #52]	@ 0x34
80021b14:	e59f3030 	ldr	r3, [pc, #48]	@ 80021b4c <panic+0x58>
80021b18:	e5933000 	ldr	r3, [r3]
80021b1c:	e5d33000 	ldrb	r3, [r3]
80021b20:	e1a01003 	mov	r1, r3
80021b24:	e59f0024 	ldr	r0, [pc, #36]	@ 80021b50 <panic+0x5c>
80021b28:	ebffff59 	bl	80021894 <cprintf>
80021b2c:	e51b0008 	ldr	r0, [fp, #-8]
80021b30:	ebfffb35 	bl	8002080c <show_callstk>
80021b34:	e59f3018 	ldr	r3, [pc, #24]	@ 80021b54 <panic+0x60>
80021b38:	e3a02001 	mov	r2, #1
80021b3c:	e5832000 	str	r2, [r3]
80021b40:	e1a00000 	nop			@ (mov r0, r0)
80021b44:	eafffffd 	b	80021b40 <panic+0x4c>
80021b48:	800ac8a4 	.word	0x800ac8a4
80021b4c:	800ae624 	.word	0x800ae624
80021b50:	80029d00 	.word	0x80029d00
80021b54:	800ac8a0 	.word	0x800ac8a0

80021b58 <consputc>:
80021b58:	e92d4800 	push	{fp, lr}
80021b5c:	e28db004 	add	fp, sp, #4
80021b60:	e24dd008 	sub	sp, sp, #8
80021b64:	e50b0008 	str	r0, [fp, #-8]
80021b68:	e59f3050 	ldr	r3, [pc, #80]	@ 80021bc0 <consputc+0x68>
80021b6c:	e5933000 	ldr	r3, [r3]
80021b70:	e3530000 	cmp	r3, #0
80021b74:	0a000002 	beq	80021b84 <consputc+0x2c>
80021b78:	ebfffa70 	bl	80020540 <cli>
80021b7c:	e1a00000 	nop			@ (mov r0, r0)
80021b80:	eafffffd 	b	80021b7c <consputc+0x24>
80021b84:	e51b3008 	ldr	r3, [fp, #-8]
80021b88:	e3530c01 	cmp	r3, #256	@ 0x100
80021b8c:	1a000006 	bne	80021bac <consputc+0x54>
80021b90:	e3a00008 	mov	r0, #8
80021b94:	eb001f2f 	bl	80029858 <uartputc>
80021b98:	e3a00020 	mov	r0, #32
80021b9c:	eb001f2d 	bl	80029858 <uartputc>
80021ba0:	e3a00008 	mov	r0, #8
80021ba4:	eb001f2b 	bl	80029858 <uartputc>
80021ba8:	ea000001 	b	80021bb4 <consputc+0x5c>
80021bac:	e51b0008 	ldr	r0, [fp, #-8]
80021bb0:	eb001f28 	bl	80029858 <uartputc>
80021bb4:	e1a00000 	nop			@ (mov r0, r0)
80021bb8:	e24bd004 	sub	sp, fp, #4
80021bbc:	e8bd8800 	pop	{fp, pc}
80021bc0:	800ac8a0 	.word	0x800ac8a0

80021bc4 <consoleintr>:
80021bc4:	e92d4800 	push	{fp, lr}
80021bc8:	e28db004 	add	fp, sp, #4
80021bcc:	e24dd010 	sub	sp, sp, #16
80021bd0:	e50b0010 	str	r0, [fp, #-16]
80021bd4:	e59f0214 	ldr	r0, [pc, #532]	@ 80021df0 <consoleintr+0x22c>
80021bd8:	eb001294 	bl	80026630 <acquire>
80021bdc:	ea000078 	b	80021dc4 <consoleintr+0x200>
80021be0:	e51b3008 	ldr	r3, [fp, #-8]
80021be4:	e353007f 	cmp	r3, #127	@ 0x7f
80021be8:	0a000028 	beq	80021c90 <consoleintr+0xcc>
80021bec:	e51b3008 	ldr	r3, [fp, #-8]
80021bf0:	e353007f 	cmp	r3, #127	@ 0x7f
80021bf4:	ca000033 	bgt	80021cc8 <consoleintr+0x104>
80021bf8:	e51b3008 	ldr	r3, [fp, #-8]
80021bfc:	e3530015 	cmp	r3, #21
80021c00:	0a000011 	beq	80021c4c <consoleintr+0x88>
80021c04:	e51b3008 	ldr	r3, [fp, #-8]
80021c08:	e3530015 	cmp	r3, #21
80021c0c:	ca00002d 	bgt	80021cc8 <consoleintr+0x104>
80021c10:	e51b3008 	ldr	r3, [fp, #-8]
80021c14:	e3530008 	cmp	r3, #8
80021c18:	0a00001c 	beq	80021c90 <consoleintr+0xcc>
80021c1c:	e51b3008 	ldr	r3, [fp, #-8]
80021c20:	e3530010 	cmp	r3, #16
80021c24:	1a000027 	bne	80021cc8 <consoleintr+0x104>
80021c28:	eb001178 	bl	80026210 <procdump>
80021c2c:	ea000064 	b	80021dc4 <consoleintr+0x200>
80021c30:	e59f31b8 	ldr	r3, [pc, #440]	@ 80021df0 <consoleintr+0x22c>
80021c34:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021c38:	e2433001 	sub	r3, r3, #1
80021c3c:	e59f21ac 	ldr	r2, [pc, #428]	@ 80021df0 <consoleintr+0x22c>
80021c40:	e582323c 	str	r3, [r2, #572]	@ 0x23c
80021c44:	e3a00c01 	mov	r0, #256	@ 0x100
80021c48:	ebffffc2 	bl	80021b58 <consputc>
80021c4c:	e59f319c 	ldr	r3, [pc, #412]	@ 80021df0 <consoleintr+0x22c>
80021c50:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021c54:	e59f3194 	ldr	r3, [pc, #404]	@ 80021df0 <consoleintr+0x22c>
80021c58:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80021c5c:	e1520003 	cmp	r2, r3
80021c60:	0a000052 	beq	80021db0 <consoleintr+0x1ec>
80021c64:	e59f3184 	ldr	r3, [pc, #388]	@ 80021df0 <consoleintr+0x22c>
80021c68:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021c6c:	e2433001 	sub	r3, r3, #1
80021c70:	e1a03b83 	lsl	r3, r3, #23
80021c74:	e1a03ba3 	lsr	r3, r3, #23
80021c78:	e59f2170 	ldr	r2, [pc, #368]	@ 80021df0 <consoleintr+0x22c>
80021c7c:	e0823003 	add	r3, r2, r3
80021c80:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
80021c84:	e353000a 	cmp	r3, #10
80021c88:	1affffe8 	bne	80021c30 <consoleintr+0x6c>
80021c8c:	ea000047 	b	80021db0 <consoleintr+0x1ec>
80021c90:	e59f3158 	ldr	r3, [pc, #344]	@ 80021df0 <consoleintr+0x22c>
80021c94:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021c98:	e59f3150 	ldr	r3, [pc, #336]	@ 80021df0 <consoleintr+0x22c>
80021c9c:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80021ca0:	e1520003 	cmp	r2, r3
80021ca4:	0a000043 	beq	80021db8 <consoleintr+0x1f4>
80021ca8:	e59f3140 	ldr	r3, [pc, #320]	@ 80021df0 <consoleintr+0x22c>
80021cac:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021cb0:	e2433001 	sub	r3, r3, #1
80021cb4:	e59f2134 	ldr	r2, [pc, #308]	@ 80021df0 <consoleintr+0x22c>
80021cb8:	e582323c 	str	r3, [r2, #572]	@ 0x23c
80021cbc:	e3a00c01 	mov	r0, #256	@ 0x100
80021cc0:	ebffffa4 	bl	80021b58 <consputc>
80021cc4:	ea00003b 	b	80021db8 <consoleintr+0x1f4>
80021cc8:	e51b3008 	ldr	r3, [fp, #-8]
80021ccc:	e3530000 	cmp	r3, #0
80021cd0:	0a00003a 	beq	80021dc0 <consoleintr+0x1fc>
80021cd4:	e59f3114 	ldr	r3, [pc, #276]	@ 80021df0 <consoleintr+0x22c>
80021cd8:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021cdc:	e59f310c 	ldr	r3, [pc, #268]	@ 80021df0 <consoleintr+0x22c>
80021ce0:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80021ce4:	e0423003 	sub	r3, r2, r3
80021ce8:	e3530c02 	cmp	r3, #512	@ 0x200
80021cec:	2a000033 	bcs	80021dc0 <consoleintr+0x1fc>
80021cf0:	e51b3008 	ldr	r3, [fp, #-8]
80021cf4:	e353000d 	cmp	r3, #13
80021cf8:	0a000001 	beq	80021d04 <consoleintr+0x140>
80021cfc:	e51b3008 	ldr	r3, [fp, #-8]
80021d00:	ea000000 	b	80021d08 <consoleintr+0x144>
80021d04:	e3a0300a 	mov	r3, #10
80021d08:	e50b3008 	str	r3, [fp, #-8]
80021d0c:	e59f30dc 	ldr	r3, [pc, #220]	@ 80021df0 <consoleintr+0x22c>
80021d10:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021d14:	e2832001 	add	r2, r3, #1
80021d18:	e59f10d0 	ldr	r1, [pc, #208]	@ 80021df0 <consoleintr+0x22c>
80021d1c:	e581223c 	str	r2, [r1, #572]	@ 0x23c
80021d20:	e1a03b83 	lsl	r3, r3, #23
80021d24:	e1a03ba3 	lsr	r3, r3, #23
80021d28:	e51b2008 	ldr	r2, [fp, #-8]
80021d2c:	e6ef1072 	uxtb	r1, r2
80021d30:	e59f20b8 	ldr	r2, [pc, #184]	@ 80021df0 <consoleintr+0x22c>
80021d34:	e0823003 	add	r3, r2, r3
80021d38:	e1a02001 	mov	r2, r1
80021d3c:	e5c32034 	strb	r2, [r3, #52]	@ 0x34
80021d40:	e51b3008 	ldr	r3, [fp, #-8]
80021d44:	e3530009 	cmp	r3, #9
80021d48:	0a000001 	beq	80021d54 <consoleintr+0x190>
80021d4c:	e51b0008 	ldr	r0, [fp, #-8]
80021d50:	ebffff80 	bl	80021b58 <consputc>
80021d54:	e51b3008 	ldr	r3, [fp, #-8]
80021d58:	e353000a 	cmp	r3, #10
80021d5c:	0a00000c 	beq	80021d94 <consoleintr+0x1d0>
80021d60:	e51b3008 	ldr	r3, [fp, #-8]
80021d64:	e3530004 	cmp	r3, #4
80021d68:	0a000009 	beq	80021d94 <consoleintr+0x1d0>
80021d6c:	e51b3008 	ldr	r3, [fp, #-8]
80021d70:	e3530009 	cmp	r3, #9
80021d74:	0a000006 	beq	80021d94 <consoleintr+0x1d0>
80021d78:	e59f3070 	ldr	r3, [pc, #112]	@ 80021df0 <consoleintr+0x22c>
80021d7c:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021d80:	e59f3068 	ldr	r3, [pc, #104]	@ 80021df0 <consoleintr+0x22c>
80021d84:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80021d88:	e2833c02 	add	r3, r3, #512	@ 0x200
80021d8c:	e1520003 	cmp	r2, r3
80021d90:	1a00000a 	bne	80021dc0 <consoleintr+0x1fc>
80021d94:	e59f3054 	ldr	r3, [pc, #84]	@ 80021df0 <consoleintr+0x22c>
80021d98:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021d9c:	e59f204c 	ldr	r2, [pc, #76]	@ 80021df0 <consoleintr+0x22c>
80021da0:	e5823238 	str	r3, [r2, #568]	@ 0x238
80021da4:	e59f0048 	ldr	r0, [pc, #72]	@ 80021df4 <consoleintr+0x230>
80021da8:	eb0010de 	bl	80026128 <wakeup>
80021dac:	ea000003 	b	80021dc0 <consoleintr+0x1fc>
80021db0:	e1a00000 	nop			@ (mov r0, r0)
80021db4:	ea000002 	b	80021dc4 <consoleintr+0x200>
80021db8:	e1a00000 	nop			@ (mov r0, r0)
80021dbc:	ea000000 	b	80021dc4 <consoleintr+0x200>
80021dc0:	e1a00000 	nop			@ (mov r0, r0)
80021dc4:	e51b3010 	ldr	r3, [fp, #-16]
80021dc8:	e12fff33 	blx	r3
80021dcc:	e50b0008 	str	r0, [fp, #-8]
80021dd0:	e51b3008 	ldr	r3, [fp, #-8]
80021dd4:	e3530000 	cmp	r3, #0
80021dd8:	aaffff80 	bge	80021be0 <consoleintr+0x1c>
80021ddc:	e59f000c 	ldr	r0, [pc, #12]	@ 80021df0 <consoleintr+0x22c>
80021de0:	eb00121d 	bl	8002665c <release>
80021de4:	e1a00000 	nop			@ (mov r0, r0)
80021de8:	e24bd004 	sub	sp, fp, #4
80021dec:	e8bd8800 	pop	{fp, pc}
80021df0:	800ac8dc 	.word	0x800ac8dc
80021df4:	800acb10 	.word	0x800acb10

80021df8 <consoleread>:
80021df8:	e92d4800 	push	{fp, lr}
80021dfc:	e28db004 	add	fp, sp, #4
80021e00:	e24dd018 	sub	sp, sp, #24
80021e04:	e50b0010 	str	r0, [fp, #-16]
80021e08:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80021e0c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80021e10:	e51b0010 	ldr	r0, [fp, #-16]
80021e14:	eb000534 	bl	800232ec <iunlock>
80021e18:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021e1c:	e50b3008 	str	r3, [fp, #-8]
80021e20:	e59f0128 	ldr	r0, [pc, #296]	@ 80021f50 <consoleread+0x158>
80021e24:	eb001201 	bl	80026630 <acquire>
80021e28:	ea000037 	b	80021f0c <consoleread+0x114>
80021e2c:	e59f3120 	ldr	r3, [pc, #288]	@ 80021f54 <consoleread+0x15c>
80021e30:	e5933000 	ldr	r3, [r3]
80021e34:	e5933028 	ldr	r3, [r3, #40]	@ 0x28
80021e38:	e3530000 	cmp	r3, #0
80021e3c:	0a000005 	beq	80021e58 <consoleread+0x60>
80021e40:	e59f0108 	ldr	r0, [pc, #264]	@ 80021f50 <consoleread+0x158>
80021e44:	eb001204 	bl	8002665c <release>
80021e48:	e51b0010 	ldr	r0, [fp, #-16]
80021e4c:	eb0004c2 	bl	8002315c <ilock>
80021e50:	e3e03000 	mvn	r3, #0
80021e54:	ea00003a 	b	80021f44 <consoleread+0x14c>
80021e58:	e59f10f0 	ldr	r1, [pc, #240]	@ 80021f50 <consoleread+0x158>
80021e5c:	e59f00f4 	ldr	r0, [pc, #244]	@ 80021f58 <consoleread+0x160>
80021e60:	eb00102c 	bl	80025f18 <sleep>
80021e64:	e59f30e4 	ldr	r3, [pc, #228]	@ 80021f50 <consoleread+0x158>
80021e68:	e5932234 	ldr	r2, [r3, #564]	@ 0x234
80021e6c:	e59f30dc 	ldr	r3, [pc, #220]	@ 80021f50 <consoleread+0x158>
80021e70:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80021e74:	e1520003 	cmp	r2, r3
80021e78:	0affffeb 	beq	80021e2c <consoleread+0x34>
80021e7c:	e59f30cc 	ldr	r3, [pc, #204]	@ 80021f50 <consoleread+0x158>
80021e80:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80021e84:	e2832001 	add	r2, r3, #1
80021e88:	e59f10c0 	ldr	r1, [pc, #192]	@ 80021f50 <consoleread+0x158>
80021e8c:	e5812234 	str	r2, [r1, #564]	@ 0x234
80021e90:	e1a03b83 	lsl	r3, r3, #23
80021e94:	e1a03ba3 	lsr	r3, r3, #23
80021e98:	e59f20b0 	ldr	r2, [pc, #176]	@ 80021f50 <consoleread+0x158>
80021e9c:	e0823003 	add	r3, r2, r3
80021ea0:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
80021ea4:	e50b300c 	str	r3, [fp, #-12]
80021ea8:	e51b300c 	ldr	r3, [fp, #-12]
80021eac:	e3530004 	cmp	r3, #4
80021eb0:	1a000009 	bne	80021edc <consoleread+0xe4>
80021eb4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021eb8:	e51b2008 	ldr	r2, [fp, #-8]
80021ebc:	e1520003 	cmp	r2, r3
80021ec0:	9a000015 	bls	80021f1c <consoleread+0x124>
80021ec4:	e59f3084 	ldr	r3, [pc, #132]	@ 80021f50 <consoleread+0x158>
80021ec8:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80021ecc:	e2433001 	sub	r3, r3, #1
80021ed0:	e59f2078 	ldr	r2, [pc, #120]	@ 80021f50 <consoleread+0x158>
80021ed4:	e5823234 	str	r3, [r2, #564]	@ 0x234
80021ed8:	ea00000f 	b	80021f1c <consoleread+0x124>
80021edc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80021ee0:	e2832001 	add	r2, r3, #1
80021ee4:	e50b2014 	str	r2, [fp, #-20]	@ 0xffffffec
80021ee8:	e51b200c 	ldr	r2, [fp, #-12]
80021eec:	e6ef2072 	uxtb	r2, r2
80021ef0:	e5c32000 	strb	r2, [r3]
80021ef4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021ef8:	e2433001 	sub	r3, r3, #1
80021efc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80021f00:	e51b300c 	ldr	r3, [fp, #-12]
80021f04:	e353000a 	cmp	r3, #10
80021f08:	0a000005 	beq	80021f24 <consoleread+0x12c>
80021f0c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021f10:	e3530000 	cmp	r3, #0
80021f14:	caffffd2 	bgt	80021e64 <consoleread+0x6c>
80021f18:	ea000002 	b	80021f28 <consoleread+0x130>
80021f1c:	e1a00000 	nop			@ (mov r0, r0)
80021f20:	ea000000 	b	80021f28 <consoleread+0x130>
80021f24:	e1a00000 	nop			@ (mov r0, r0)
80021f28:	e59f0020 	ldr	r0, [pc, #32]	@ 80021f50 <consoleread+0x158>
80021f2c:	eb0011ca 	bl	8002665c <release>
80021f30:	e51b0010 	ldr	r0, [fp, #-16]
80021f34:	eb000488 	bl	8002315c <ilock>
80021f38:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021f3c:	e51b2008 	ldr	r2, [fp, #-8]
80021f40:	e0423003 	sub	r3, r2, r3
80021f44:	e1a00003 	mov	r0, r3
80021f48:	e24bd004 	sub	sp, fp, #4
80021f4c:	e8bd8800 	pop	{fp, pc}
80021f50:	800ac8dc 	.word	0x800ac8dc
80021f54:	800b0b6c 	.word	0x800b0b6c
80021f58:	800acb10 	.word	0x800acb10

80021f5c <consolewrite>:
80021f5c:	e92d4800 	push	{fp, lr}
80021f60:	e28db004 	add	fp, sp, #4
80021f64:	e24dd018 	sub	sp, sp, #24
80021f68:	e50b0010 	str	r0, [fp, #-16]
80021f6c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80021f70:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80021f74:	e51b0010 	ldr	r0, [fp, #-16]
80021f78:	eb0004db 	bl	800232ec <iunlock>
80021f7c:	e59f0060 	ldr	r0, [pc, #96]	@ 80021fe4 <consolewrite+0x88>
80021f80:	eb0011aa 	bl	80026630 <acquire>
80021f84:	e3a03000 	mov	r3, #0
80021f88:	e50b3008 	str	r3, [fp, #-8]
80021f8c:	ea000008 	b	80021fb4 <consolewrite+0x58>
80021f90:	e51b3008 	ldr	r3, [fp, #-8]
80021f94:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80021f98:	e0823003 	add	r3, r2, r3
80021f9c:	e5d33000 	ldrb	r3, [r3]
80021fa0:	e1a00003 	mov	r0, r3
80021fa4:	ebfffeeb 	bl	80021b58 <consputc>
80021fa8:	e51b3008 	ldr	r3, [fp, #-8]
80021fac:	e2833001 	add	r3, r3, #1
80021fb0:	e50b3008 	str	r3, [fp, #-8]
80021fb4:	e51b2008 	ldr	r2, [fp, #-8]
80021fb8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021fbc:	e1520003 	cmp	r2, r3
80021fc0:	bafffff2 	blt	80021f90 <consolewrite+0x34>
80021fc4:	e59f0018 	ldr	r0, [pc, #24]	@ 80021fe4 <consolewrite+0x88>
80021fc8:	eb0011a3 	bl	8002665c <release>
80021fcc:	e51b0010 	ldr	r0, [fp, #-16]
80021fd0:	eb000461 	bl	8002315c <ilock>
80021fd4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021fd8:	e1a00003 	mov	r0, r3
80021fdc:	e24bd004 	sub	sp, fp, #4
80021fe0:	e8bd8800 	pop	{fp, pc}
80021fe4:	800ac8a4 	.word	0x800ac8a4

80021fe8 <consoleinit>:
80021fe8:	e92d4800 	push	{fp, lr}
80021fec:	e28db004 	add	fp, sp, #4
80021ff0:	e59f103c 	ldr	r1, [pc, #60]	@ 80022034 <consoleinit+0x4c>
80021ff4:	e59f003c 	ldr	r0, [pc, #60]	@ 80022038 <consoleinit+0x50>
80021ff8:	eb00117a 	bl	800265e8 <initlock>
80021ffc:	e59f1038 	ldr	r1, [pc, #56]	@ 8002203c <consoleinit+0x54>
80022000:	e59f0038 	ldr	r0, [pc, #56]	@ 80022040 <consoleinit+0x58>
80022004:	eb001177 	bl	800265e8 <initlock>
80022008:	e59f3034 	ldr	r3, [pc, #52]	@ 80022044 <consoleinit+0x5c>
8002200c:	e59f2034 	ldr	r2, [pc, #52]	@ 80022048 <consoleinit+0x60>
80022010:	e583200c 	str	r2, [r3, #12]
80022014:	e59f3028 	ldr	r3, [pc, #40]	@ 80022044 <consoleinit+0x5c>
80022018:	e59f202c 	ldr	r2, [pc, #44]	@ 8002204c <consoleinit+0x64>
8002201c:	e5832008 	str	r2, [r3, #8]
80022020:	e59f3010 	ldr	r3, [pc, #16]	@ 80022038 <consoleinit+0x50>
80022024:	e3a02001 	mov	r2, #1
80022028:	e5832034 	str	r2, [r3, #52]	@ 0x34
8002202c:	e1a00000 	nop			@ (mov r0, r0)
80022030:	e8bd8800 	pop	{fp, pc}
80022034:	80029d10 	.word	0x80029d10
80022038:	800ac8a4 	.word	0x800ac8a4
8002203c:	80029d18 	.word	0x80029d18
80022040:	800ac8dc 	.word	0x800ac8dc
80022044:	800acb1c 	.word	0x800acb1c
80022048:	80021f5c 	.word	0x80021f5c
8002204c:	80021df8 	.word	0x80021df8

80022050 <exec>:
80022050:	e92d4810 	push	{r4, fp, lr}
80022054:	e28db008 	add	fp, sp, #8
80022058:	e24ddf49 	sub	sp, sp, #292	@ 0x124
8002205c:	e50b0120 	str	r0, [fp, #-288]	@ 0xfffffee0
80022060:	e50b1124 	str	r1, [fp, #-292]	@ 0xfffffedc
80022064:	e51b0120 	ldr	r0, [fp, #-288]	@ 0xfffffee0
80022068:	eb00080e 	bl	800240a8 <namei>
8002206c:	e50b0010 	str	r0, [fp, #-16]
80022070:	e51b3010 	ldr	r3, [fp, #-16]
80022074:	e3530000 	cmp	r3, #0
80022078:	1a000001 	bne	80022084 <exec+0x34>
8002207c:	e3e03000 	mvn	r3, #0
80022080:	ea000120 	b	80022508 <exec+0x4b8>
80022084:	e51b0010 	ldr	r0, [fp, #-16]
80022088:	eb000433 	bl	8002315c <ilock>
8002208c:	e24b1068 	sub	r1, fp, #104	@ 0x68
80022090:	e3a03034 	mov	r3, #52	@ 0x34
80022094:	e3a02000 	mov	r2, #0
80022098:	e51b0010 	ldr	r0, [fp, #-16]
8002209c:	eb0005da 	bl	8002380c <readi>
800220a0:	e1a03000 	mov	r3, r0
800220a4:	e3530033 	cmp	r3, #51	@ 0x33
800220a8:	9a0000f6 	bls	80022488 <exec+0x438>
800220ac:	e51b3068 	ldr	r3, [fp, #-104]	@ 0xffffff98
800220b0:	e59f245c 	ldr	r2, [pc, #1116]	@ 80022514 <exec+0x4c4>
800220b4:	e1530002 	cmp	r3, r2
800220b8:	1a0000f4 	bne	80022490 <exec+0x440>
800220bc:	e3a03000 	mov	r3, #0
800220c0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800220c4:	eb0019eb 	bl	80028878 <kpt_alloc>
800220c8:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
800220cc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800220d0:	e3530000 	cmp	r3, #0
800220d4:	0a0000ef 	beq	80022498 <exec+0x448>
800220d8:	e3a03000 	mov	r3, #0
800220dc:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
800220e0:	e3a03000 	mov	r3, #0
800220e4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
800220e8:	e51b304c 	ldr	r3, [fp, #-76]	@ 0xffffffb4
800220ec:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
800220f0:	ea00002e 	b	800221b0 <exec+0x160>
800220f4:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
800220f8:	e24b1088 	sub	r1, fp, #136	@ 0x88
800220fc:	e3a03020 	mov	r3, #32
80022100:	e51b0010 	ldr	r0, [fp, #-16]
80022104:	eb0005c0 	bl	8002380c <readi>
80022108:	e1a03000 	mov	r3, r0
8002210c:	e3530020 	cmp	r3, #32
80022110:	1a0000e2 	bne	800224a0 <exec+0x450>
80022114:	e51b3088 	ldr	r3, [fp, #-136]	@ 0xffffff78
80022118:	e3530001 	cmp	r3, #1
8002211c:	1a00001c 	bne	80022194 <exec+0x144>
80022120:	e51b2074 	ldr	r2, [fp, #-116]	@ 0xffffff8c
80022124:	e51b3078 	ldr	r3, [fp, #-120]	@ 0xffffff88
80022128:	e1520003 	cmp	r2, r3
8002212c:	3a0000dd 	bcc	800224a8 <exec+0x458>
80022130:	e51b2080 	ldr	r2, [fp, #-128]	@ 0xffffff80
80022134:	e51b3074 	ldr	r3, [fp, #-116]	@ 0xffffff8c
80022138:	e0823003 	add	r3, r2, r3
8002213c:	e1a02003 	mov	r2, r3
80022140:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
80022144:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022148:	eb001af6 	bl	80028d28 <allocuvm>
8002214c:	e1a03000 	mov	r3, r0
80022150:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80022154:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022158:	e3530000 	cmp	r3, #0
8002215c:	0a0000d3 	beq	800224b0 <exec+0x460>
80022160:	e51b3080 	ldr	r3, [fp, #-128]	@ 0xffffff80
80022164:	e1a01003 	mov	r1, r3
80022168:	e51b2084 	ldr	r2, [fp, #-132]	@ 0xffffff7c
8002216c:	e51b3078 	ldr	r3, [fp, #-120]	@ 0xffffff88
80022170:	e58d3000 	str	r3, [sp]
80022174:	e1a03002 	mov	r3, r2
80022178:	e51b2010 	ldr	r2, [fp, #-16]
8002217c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022180:	eb001a9c 	bl	80028bf8 <loaduvm>
80022184:	e1a03000 	mov	r3, r0
80022188:	e3530000 	cmp	r3, #0
8002218c:	ba0000c9 	blt	800224b8 <exec+0x468>
80022190:	ea000000 	b	80022198 <exec+0x148>
80022194:	e1a00000 	nop			@ (mov r0, r0)
80022198:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002219c:	e2833001 	add	r3, r3, #1
800221a0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
800221a4:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800221a8:	e2833020 	add	r3, r3, #32
800221ac:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
800221b0:	e15b33bc 	ldrh	r3, [fp, #-60]	@ 0xffffffc4
800221b4:	e1a02003 	mov	r2, r3
800221b8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800221bc:	e1530002 	cmp	r3, r2
800221c0:	baffffcb 	blt	800220f4 <exec+0xa4>
800221c4:	e51b0010 	ldr	r0, [fp, #-16]
800221c8:	eb0004a4 	bl	80023460 <iunlockput>
800221cc:	e3a03000 	mov	r3, #0
800221d0:	e50b3010 	str	r3, [fp, #-16]
800221d4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800221d8:	e2833eff 	add	r3, r3, #4080	@ 0xff0
800221dc:	e283300f 	add	r3, r3, #15
800221e0:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
800221e4:	e3c3300f 	bic	r3, r3, #15
800221e8:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
800221ec:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800221f0:	e2833a02 	add	r3, r3, #8192	@ 0x2000
800221f4:	e1a02003 	mov	r2, r3
800221f8:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
800221fc:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022200:	eb001ac8 	bl	80028d28 <allocuvm>
80022204:	e1a03000 	mov	r3, r0
80022208:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
8002220c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022210:	e3530000 	cmp	r3, #0
80022214:	0a0000a9 	beq	800224c0 <exec+0x470>
80022218:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
8002221c:	e2433a02 	sub	r3, r3, #8192	@ 0x2000
80022220:	e1a01003 	mov	r1, r3
80022224:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022228:	eb001b73 	bl	80028ffc <clearpteu>
8002222c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022230:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
80022234:	e3a03000 	mov	r3, #0
80022238:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
8002223c:	ea00002e 	b	800222fc <exec+0x2ac>
80022240:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022244:	e353001f 	cmp	r3, #31
80022248:	8a00009e 	bhi	800224c8 <exec+0x478>
8002224c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022250:	e1a03103 	lsl	r3, r3, #2
80022254:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
80022258:	e0823003 	add	r3, r2, r3
8002225c:	e5933000 	ldr	r3, [r3]
80022260:	e1a00003 	mov	r0, r3
80022264:	ebfff8a0 	bl	800204ec <strlen>
80022268:	e1a03000 	mov	r3, r0
8002226c:	e1a02003 	mov	r2, r3
80022270:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
80022274:	e0433002 	sub	r3, r3, r2
80022278:	e2433001 	sub	r3, r3, #1
8002227c:	e3c33003 	bic	r3, r3, #3
80022280:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
80022284:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022288:	e1a03103 	lsl	r3, r3, #2
8002228c:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
80022290:	e0823003 	add	r3, r2, r3
80022294:	e5934000 	ldr	r4, [r3]
80022298:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002229c:	e1a03103 	lsl	r3, r3, #2
800222a0:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
800222a4:	e0823003 	add	r3, r2, r3
800222a8:	e5933000 	ldr	r3, [r3]
800222ac:	e1a00003 	mov	r0, r3
800222b0:	ebfff88d 	bl	800204ec <strlen>
800222b4:	e1a03000 	mov	r3, r0
800222b8:	e2833001 	add	r3, r3, #1
800222bc:	e1a02004 	mov	r2, r4
800222c0:	e51b1030 	ldr	r1, [fp, #-48]	@ 0xffffffd0
800222c4:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800222c8:	eb001be0 	bl	80029250 <copyout>
800222cc:	e1a03000 	mov	r3, r0
800222d0:	e3530000 	cmp	r3, #0
800222d4:	ba00007d 	blt	800224d0 <exec+0x480>
800222d8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800222dc:	e1a03103 	lsl	r3, r3, #2
800222e0:	e243300c 	sub	r3, r3, #12
800222e4:	e083300b 	add	r3, r3, fp
800222e8:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
800222ec:	e503210c 	str	r2, [r3, #-268]	@ 0xfffffef4
800222f0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800222f4:	e2833001 	add	r3, r3, #1
800222f8:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
800222fc:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022300:	e1a03103 	lsl	r3, r3, #2
80022304:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
80022308:	e0823003 	add	r3, r2, r3
8002230c:	e5933000 	ldr	r3, [r3]
80022310:	e3530000 	cmp	r3, #0
80022314:	1affffc9 	bne	80022240 <exec+0x1f0>
80022318:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002231c:	e1a03103 	lsl	r3, r3, #2
80022320:	e243300c 	sub	r3, r3, #12
80022324:	e083300b 	add	r3, r3, fp
80022328:	e3a02000 	mov	r2, #0
8002232c:	e503210c 	str	r2, [r3, #-268]	@ 0xfffffef4
80022330:	e59f31e0 	ldr	r3, [pc, #480]	@ 80022518 <exec+0x4c8>
80022334:	e5933000 	ldr	r3, [r3]
80022338:	e593301c 	ldr	r3, [r3, #28]
8002233c:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80022340:	e5832010 	str	r2, [r3, #16]
80022344:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022348:	e2833001 	add	r3, r3, #1
8002234c:	e1a02103 	lsl	r2, r3, #2
80022350:	e59f31c0 	ldr	r3, [pc, #448]	@ 80022518 <exec+0x4c8>
80022354:	e5933000 	ldr	r3, [r3]
80022358:	e593301c 	ldr	r3, [r3, #28]
8002235c:	e51b1030 	ldr	r1, [fp, #-48]	@ 0xffffffd0
80022360:	e0412002 	sub	r2, r1, r2
80022364:	e5832014 	str	r2, [r3, #20]
80022368:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002236c:	e2833001 	add	r3, r3, #1
80022370:	e1a03103 	lsl	r3, r3, #2
80022374:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
80022378:	e0423003 	sub	r3, r2, r3
8002237c:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
80022380:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022384:	e2833001 	add	r3, r3, #1
80022388:	e1a03103 	lsl	r3, r3, #2
8002238c:	e24b2f46 	sub	r2, fp, #280	@ 0x118
80022390:	e51b1030 	ldr	r1, [fp, #-48]	@ 0xffffffd0
80022394:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022398:	eb001bac 	bl	80029250 <copyout>
8002239c:	e1a03000 	mov	r3, r0
800223a0:	e3530000 	cmp	r3, #0
800223a4:	ba00004b 	blt	800224d8 <exec+0x488>
800223a8:	e51b3120 	ldr	r3, [fp, #-288]	@ 0xfffffee0
800223ac:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
800223b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800223b4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800223b8:	ea000009 	b	800223e4 <exec+0x394>
800223bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800223c0:	e5d33000 	ldrb	r3, [r3]
800223c4:	e353002f 	cmp	r3, #47	@ 0x2f
800223c8:	1a000002 	bne	800223d8 <exec+0x388>
800223cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800223d0:	e2833001 	add	r3, r3, #1
800223d4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800223d8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800223dc:	e2833001 	add	r3, r3, #1
800223e0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
800223e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800223e8:	e5d33000 	ldrb	r3, [r3]
800223ec:	e3530000 	cmp	r3, #0
800223f0:	1afffff1 	bne	800223bc <exec+0x36c>
800223f4:	e59f311c 	ldr	r3, [pc, #284]	@ 80022518 <exec+0x4c8>
800223f8:	e5933000 	ldr	r3, [r3]
800223fc:	e2833070 	add	r3, r3, #112	@ 0x70
80022400:	e3a02010 	mov	r2, #16
80022404:	e51b101c 	ldr	r1, [fp, #-28]	@ 0xffffffe4
80022408:	e1a00003 	mov	r0, r3
8002240c:	ebfff80f 	bl	80020450 <safestrcpy>
80022410:	e59f3100 	ldr	r3, [pc, #256]	@ 80022518 <exec+0x4c8>
80022414:	e5933000 	ldr	r3, [r3]
80022418:	e5933004 	ldr	r3, [r3, #4]
8002241c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
80022420:	e59f30f0 	ldr	r3, [pc, #240]	@ 80022518 <exec+0x4c8>
80022424:	e5933000 	ldr	r3, [r3]
80022428:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
8002242c:	e5832004 	str	r2, [r3, #4]
80022430:	e59f30e0 	ldr	r3, [pc, #224]	@ 80022518 <exec+0x4c8>
80022434:	e5933000 	ldr	r3, [r3]
80022438:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
8002243c:	e5832000 	str	r2, [r3]
80022440:	e59f30d0 	ldr	r3, [pc, #208]	@ 80022518 <exec+0x4c8>
80022444:	e5933000 	ldr	r3, [r3]
80022448:	e593301c 	ldr	r3, [r3, #28]
8002244c:	e51b2050 	ldr	r2, [fp, #-80]	@ 0xffffffb0
80022450:	e5832044 	str	r2, [r3, #68]	@ 0x44
80022454:	e59f30bc 	ldr	r3, [pc, #188]	@ 80022518 <exec+0x4c8>
80022458:	e5933000 	ldr	r3, [r3]
8002245c:	e593301c 	ldr	r3, [r3, #28]
80022460:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
80022464:	e5832000 	str	r2, [r3]
80022468:	e59f30a8 	ldr	r3, [pc, #168]	@ 80022518 <exec+0x4c8>
8002246c:	e5933000 	ldr	r3, [r3]
80022470:	e1a00003 	mov	r0, r3
80022474:	eb0019a6 	bl	80028b14 <switchuvm>
80022478:	e51b0034 	ldr	r0, [fp, #-52]	@ 0xffffffcc
8002247c:	eb001aae 	bl	80028f3c <freevm>
80022480:	e3a03000 	mov	r3, #0
80022484:	ea00001f 	b	80022508 <exec+0x4b8>
80022488:	e1a00000 	nop			@ (mov r0, r0)
8002248c:	ea000012 	b	800224dc <exec+0x48c>
80022490:	e1a00000 	nop			@ (mov r0, r0)
80022494:	ea000010 	b	800224dc <exec+0x48c>
80022498:	e1a00000 	nop			@ (mov r0, r0)
8002249c:	ea00000e 	b	800224dc <exec+0x48c>
800224a0:	e1a00000 	nop			@ (mov r0, r0)
800224a4:	ea00000c 	b	800224dc <exec+0x48c>
800224a8:	e1a00000 	nop			@ (mov r0, r0)
800224ac:	ea00000a 	b	800224dc <exec+0x48c>
800224b0:	e1a00000 	nop			@ (mov r0, r0)
800224b4:	ea000008 	b	800224dc <exec+0x48c>
800224b8:	e1a00000 	nop			@ (mov r0, r0)
800224bc:	ea000006 	b	800224dc <exec+0x48c>
800224c0:	e1a00000 	nop			@ (mov r0, r0)
800224c4:	ea000004 	b	800224dc <exec+0x48c>
800224c8:	e1a00000 	nop			@ (mov r0, r0)
800224cc:	ea000002 	b	800224dc <exec+0x48c>
800224d0:	e1a00000 	nop			@ (mov r0, r0)
800224d4:	ea000000 	b	800224dc <exec+0x48c>
800224d8:	e1a00000 	nop			@ (mov r0, r0)
800224dc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800224e0:	e3530000 	cmp	r3, #0
800224e4:	0a000001 	beq	800224f0 <exec+0x4a0>
800224e8:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800224ec:	eb001a92 	bl	80028f3c <freevm>
800224f0:	e51b3010 	ldr	r3, [fp, #-16]
800224f4:	e3530000 	cmp	r3, #0
800224f8:	0a000001 	beq	80022504 <exec+0x4b4>
800224fc:	e51b0010 	ldr	r0, [fp, #-16]
80022500:	eb0003d6 	bl	80023460 <iunlockput>
80022504:	e3e03000 	mvn	r3, #0
80022508:	e1a00003 	mov	r0, r3
8002250c:	e24bd008 	sub	sp, fp, #8
80022510:	e8bd8810 	pop	{r4, fp, pc}
80022514:	464c457f 	.word	0x464c457f
80022518:	800b0b6c 	.word	0x800b0b6c

8002251c <fileinit>:
8002251c:	e92d4800 	push	{fp, lr}
80022520:	e28db004 	add	fp, sp, #4
80022524:	e59f100c 	ldr	r1, [pc, #12]	@ 80022538 <fileinit+0x1c>
80022528:	e59f000c 	ldr	r0, [pc, #12]	@ 8002253c <fileinit+0x20>
8002252c:	eb00102d 	bl	800265e8 <initlock>
80022530:	e1a00000 	nop			@ (mov r0, r0)
80022534:	e8bd8800 	pop	{fp, pc}
80022538:	80029d20 	.word	0x80029d20
8002253c:	800acb6c 	.word	0x800acb6c

80022540 <filealloc>:
80022540:	e92d4800 	push	{fp, lr}
80022544:	e28db004 	add	fp, sp, #4
80022548:	e24dd008 	sub	sp, sp, #8
8002254c:	e59f006c 	ldr	r0, [pc, #108]	@ 800225c0 <filealloc+0x80>
80022550:	eb001036 	bl	80026630 <acquire>
80022554:	e59f3068 	ldr	r3, [pc, #104]	@ 800225c4 <filealloc+0x84>
80022558:	e50b3008 	str	r3, [fp, #-8]
8002255c:	ea00000d 	b	80022598 <filealloc+0x58>
80022560:	e51b3008 	ldr	r3, [fp, #-8]
80022564:	e5933004 	ldr	r3, [r3, #4]
80022568:	e3530000 	cmp	r3, #0
8002256c:	1a000006 	bne	8002258c <filealloc+0x4c>
80022570:	e51b3008 	ldr	r3, [fp, #-8]
80022574:	e3a02001 	mov	r2, #1
80022578:	e5832004 	str	r2, [r3, #4]
8002257c:	e59f003c 	ldr	r0, [pc, #60]	@ 800225c0 <filealloc+0x80>
80022580:	eb001035 	bl	8002665c <release>
80022584:	e51b3008 	ldr	r3, [fp, #-8]
80022588:	ea000009 	b	800225b4 <filealloc+0x74>
8002258c:	e51b3008 	ldr	r3, [fp, #-8]
80022590:	e2833018 	add	r3, r3, #24
80022594:	e50b3008 	str	r3, [fp, #-8]
80022598:	e59f2028 	ldr	r2, [pc, #40]	@ 800225c8 <filealloc+0x88>
8002259c:	e51b3008 	ldr	r3, [fp, #-8]
800225a0:	e1530002 	cmp	r3, r2
800225a4:	3affffed 	bcc	80022560 <filealloc+0x20>
800225a8:	e59f0010 	ldr	r0, [pc, #16]	@ 800225c0 <filealloc+0x80>
800225ac:	eb00102a 	bl	8002665c <release>
800225b0:	e3a03000 	mov	r3, #0
800225b4:	e1a00003 	mov	r0, r3
800225b8:	e24bd004 	sub	sp, fp, #4
800225bc:	e8bd8800 	pop	{fp, pc}
800225c0:	800acb6c 	.word	0x800acb6c
800225c4:	800acba0 	.word	0x800acba0
800225c8:	800ad500 	.word	0x800ad500

800225cc <filedup>:
800225cc:	e92d4800 	push	{fp, lr}
800225d0:	e28db004 	add	fp, sp, #4
800225d4:	e24dd008 	sub	sp, sp, #8
800225d8:	e50b0008 	str	r0, [fp, #-8]
800225dc:	e59f0044 	ldr	r0, [pc, #68]	@ 80022628 <filedup+0x5c>
800225e0:	eb001012 	bl	80026630 <acquire>
800225e4:	e51b3008 	ldr	r3, [fp, #-8]
800225e8:	e5933004 	ldr	r3, [r3, #4]
800225ec:	e3530000 	cmp	r3, #0
800225f0:	ca000001 	bgt	800225fc <filedup+0x30>
800225f4:	e59f0030 	ldr	r0, [pc, #48]	@ 8002262c <filedup+0x60>
800225f8:	ebfffd3d 	bl	80021af4 <panic>
800225fc:	e51b3008 	ldr	r3, [fp, #-8]
80022600:	e5933004 	ldr	r3, [r3, #4]
80022604:	e2832001 	add	r2, r3, #1
80022608:	e51b3008 	ldr	r3, [fp, #-8]
8002260c:	e5832004 	str	r2, [r3, #4]
80022610:	e59f0010 	ldr	r0, [pc, #16]	@ 80022628 <filedup+0x5c>
80022614:	eb001010 	bl	8002665c <release>
80022618:	e51b3008 	ldr	r3, [fp, #-8]
8002261c:	e1a00003 	mov	r0, r3
80022620:	e24bd004 	sub	sp, fp, #4
80022624:	e8bd8800 	pop	{fp, pc}
80022628:	800acb6c 	.word	0x800acb6c
8002262c:	80029d28 	.word	0x80029d28

80022630 <fileclose>:
80022630:	e92d4800 	push	{fp, lr}
80022634:	e28db004 	add	fp, sp, #4
80022638:	e24dd020 	sub	sp, sp, #32
8002263c:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80022640:	e59f00d0 	ldr	r0, [pc, #208]	@ 80022718 <fileclose+0xe8>
80022644:	eb000ff9 	bl	80026630 <acquire>
80022648:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002264c:	e5933004 	ldr	r3, [r3, #4]
80022650:	e3530000 	cmp	r3, #0
80022654:	ca000001 	bgt	80022660 <fileclose+0x30>
80022658:	e59f00bc 	ldr	r0, [pc, #188]	@ 8002271c <fileclose+0xec>
8002265c:	ebfffd24 	bl	80021af4 <panic>
80022660:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022664:	e5933004 	ldr	r3, [r3, #4]
80022668:	e2432001 	sub	r2, r3, #1
8002266c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022670:	e5832004 	str	r2, [r3, #4]
80022674:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022678:	e5933004 	ldr	r3, [r3, #4]
8002267c:	e3530000 	cmp	r3, #0
80022680:	da000002 	ble	80022690 <fileclose+0x60>
80022684:	e59f008c 	ldr	r0, [pc, #140]	@ 80022718 <fileclose+0xe8>
80022688:	eb000ff3 	bl	8002665c <release>
8002268c:	ea00001f 	b	80022710 <fileclose+0xe0>
80022690:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022694:	e24bc01c 	sub	ip, fp, #28
80022698:	e1a0e003 	mov	lr, r3
8002269c:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
800226a0:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
800226a4:	e89e0003 	ldm	lr, {r0, r1}
800226a8:	e88c0003 	stm	ip, {r0, r1}
800226ac:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800226b0:	e3a02000 	mov	r2, #0
800226b4:	e5832004 	str	r2, [r3, #4]
800226b8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800226bc:	e3a02000 	mov	r2, #0
800226c0:	e5c32000 	strb	r2, [r3]
800226c4:	e59f004c 	ldr	r0, [pc, #76]	@ 80022718 <fileclose+0xe8>
800226c8:	eb000fe3 	bl	8002665c <release>
800226cc:	e55b301c 	ldrb	r3, [fp, #-28]	@ 0xffffffe4
800226d0:	e3530001 	cmp	r3, #1
800226d4:	1a000005 	bne	800226f0 <fileclose+0xc0>
800226d8:	e51b3010 	ldr	r3, [fp, #-16]
800226dc:	e55b2013 	ldrb	r2, [fp, #-19]	@ 0xffffffed
800226e0:	e1a01002 	mov	r1, r2
800226e4:	e1a00003 	mov	r0, r3
800226e8:	eb0008e8 	bl	80024a90 <pipeclose>
800226ec:	ea000007 	b	80022710 <fileclose+0xe0>
800226f0:	e55b301c 	ldrb	r3, [fp, #-28]	@ 0xffffffe4
800226f4:	e3530002 	cmp	r3, #2
800226f8:	1a000004 	bne	80022710 <fileclose+0xe0>
800226fc:	eb000742 	bl	8002440c <begin_trans>
80022700:	e51b300c 	ldr	r3, [fp, #-12]
80022704:	e1a00003 	mov	r0, r3
80022708:	eb000319 	bl	80023374 <iput>
8002270c:	eb000752 	bl	8002445c <commit_trans>
80022710:	e24bd004 	sub	sp, fp, #4
80022714:	e8bd8800 	pop	{fp, pc}
80022718:	800acb6c 	.word	0x800acb6c
8002271c:	80029d30 	.word	0x80029d30

80022720 <filestat>:
80022720:	e92d4800 	push	{fp, lr}
80022724:	e28db004 	add	fp, sp, #4
80022728:	e24dd008 	sub	sp, sp, #8
8002272c:	e50b0008 	str	r0, [fp, #-8]
80022730:	e50b100c 	str	r1, [fp, #-12]
80022734:	e51b3008 	ldr	r3, [fp, #-8]
80022738:	e5d33000 	ldrb	r3, [r3]
8002273c:	e3530002 	cmp	r3, #2
80022740:	1a00000e 	bne	80022780 <filestat+0x60>
80022744:	e51b3008 	ldr	r3, [fp, #-8]
80022748:	e5933010 	ldr	r3, [r3, #16]
8002274c:	e1a00003 	mov	r0, r3
80022750:	eb000281 	bl	8002315c <ilock>
80022754:	e51b3008 	ldr	r3, [fp, #-8]
80022758:	e5933010 	ldr	r3, [r3, #16]
8002275c:	e51b100c 	ldr	r1, [fp, #-12]
80022760:	e1a00003 	mov	r0, r3
80022764:	eb00040a 	bl	80023794 <stati>
80022768:	e51b3008 	ldr	r3, [fp, #-8]
8002276c:	e5933010 	ldr	r3, [r3, #16]
80022770:	e1a00003 	mov	r0, r3
80022774:	eb0002dc 	bl	800232ec <iunlock>
80022778:	e3a03000 	mov	r3, #0
8002277c:	ea000000 	b	80022784 <filestat+0x64>
80022780:	e3e03000 	mvn	r3, #0
80022784:	e1a00003 	mov	r0, r3
80022788:	e24bd004 	sub	sp, fp, #4
8002278c:	e8bd8800 	pop	{fp, pc}

80022790 <fileread>:
80022790:	e92d4800 	push	{fp, lr}
80022794:	e28db004 	add	fp, sp, #4
80022798:	e24dd018 	sub	sp, sp, #24
8002279c:	e50b0010 	str	r0, [fp, #-16]
800227a0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800227a4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800227a8:	e51b3010 	ldr	r3, [fp, #-16]
800227ac:	e5d33008 	ldrb	r3, [r3, #8]
800227b0:	e3530000 	cmp	r3, #0
800227b4:	1a000001 	bne	800227c0 <fileread+0x30>
800227b8:	e3e03000 	mvn	r3, #0
800227bc:	ea00002c 	b	80022874 <fileread+0xe4>
800227c0:	e51b3010 	ldr	r3, [fp, #-16]
800227c4:	e5d33000 	ldrb	r3, [r3]
800227c8:	e3530001 	cmp	r3, #1
800227cc:	1a000007 	bne	800227f0 <fileread+0x60>
800227d0:	e51b3010 	ldr	r3, [fp, #-16]
800227d4:	e593300c 	ldr	r3, [r3, #12]
800227d8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
800227dc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800227e0:	e1a00003 	mov	r0, r3
800227e4:	eb000923 	bl	80024c78 <piperead>
800227e8:	e1a03000 	mov	r3, r0
800227ec:	ea000020 	b	80022874 <fileread+0xe4>
800227f0:	e51b3010 	ldr	r3, [fp, #-16]
800227f4:	e5d33000 	ldrb	r3, [r3]
800227f8:	e3530002 	cmp	r3, #2
800227fc:	1a00001a 	bne	8002286c <fileread+0xdc>
80022800:	e51b3010 	ldr	r3, [fp, #-16]
80022804:	e5933010 	ldr	r3, [r3, #16]
80022808:	e1a00003 	mov	r0, r3
8002280c:	eb000252 	bl	8002315c <ilock>
80022810:	e51b3010 	ldr	r3, [fp, #-16]
80022814:	e5930010 	ldr	r0, [r3, #16]
80022818:	e51b3010 	ldr	r3, [fp, #-16]
8002281c:	e5932014 	ldr	r2, [r3, #20]
80022820:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022824:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80022828:	eb0003f7 	bl	8002380c <readi>
8002282c:	e50b0008 	str	r0, [fp, #-8]
80022830:	e51b3008 	ldr	r3, [fp, #-8]
80022834:	e3530000 	cmp	r3, #0
80022838:	da000005 	ble	80022854 <fileread+0xc4>
8002283c:	e51b3010 	ldr	r3, [fp, #-16]
80022840:	e5932014 	ldr	r2, [r3, #20]
80022844:	e51b3008 	ldr	r3, [fp, #-8]
80022848:	e0822003 	add	r2, r2, r3
8002284c:	e51b3010 	ldr	r3, [fp, #-16]
80022850:	e5832014 	str	r2, [r3, #20]
80022854:	e51b3010 	ldr	r3, [fp, #-16]
80022858:	e5933010 	ldr	r3, [r3, #16]
8002285c:	e1a00003 	mov	r0, r3
80022860:	eb0002a1 	bl	800232ec <iunlock>
80022864:	e51b3008 	ldr	r3, [fp, #-8]
80022868:	ea000001 	b	80022874 <fileread+0xe4>
8002286c:	e59f000c 	ldr	r0, [pc, #12]	@ 80022880 <fileread+0xf0>
80022870:	ebfffc9f 	bl	80021af4 <panic>
80022874:	e1a00003 	mov	r0, r3
80022878:	e24bd004 	sub	sp, fp, #4
8002287c:	e8bd8800 	pop	{fp, pc}
80022880:	80029d3c 	.word	0x80029d3c

80022884 <filewrite>:
80022884:	e92d4800 	push	{fp, lr}
80022888:	e28db004 	add	fp, sp, #4
8002288c:	e24dd020 	sub	sp, sp, #32
80022890:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80022894:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80022898:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
8002289c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800228a0:	e5d33009 	ldrb	r3, [r3, #9]
800228a4:	e3530000 	cmp	r3, #0
800228a8:	1a000001 	bne	800228b4 <filewrite+0x30>
800228ac:	e3e03000 	mvn	r3, #0
800228b0:	ea000058 	b	80022a18 <filewrite+0x194>
800228b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800228b8:	e5d33000 	ldrb	r3, [r3]
800228bc:	e3530001 	cmp	r3, #1
800228c0:	1a000007 	bne	800228e4 <filewrite+0x60>
800228c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800228c8:	e593300c 	ldr	r3, [r3, #12]
800228cc:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
800228d0:	e51b101c 	ldr	r1, [fp, #-28]	@ 0xffffffe4
800228d4:	e1a00003 	mov	r0, r3
800228d8:	eb00089f 	bl	80024b5c <pipewrite>
800228dc:	e1a03000 	mov	r3, r0
800228e0:	ea00004c 	b	80022a18 <filewrite+0x194>
800228e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800228e8:	e5d33000 	ldrb	r3, [r3]
800228ec:	e3530002 	cmp	r3, #2
800228f0:	1a000046 	bne	80022a10 <filewrite+0x18c>
800228f4:	e3a03c06 	mov	r3, #1536	@ 0x600
800228f8:	e50b3010 	str	r3, [fp, #-16]
800228fc:	e3a03000 	mov	r3, #0
80022900:	e50b3008 	str	r3, [fp, #-8]
80022904:	ea000033 	b	800229d8 <filewrite+0x154>
80022908:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
8002290c:	e51b3008 	ldr	r3, [fp, #-8]
80022910:	e0423003 	sub	r3, r2, r3
80022914:	e50b300c 	str	r3, [fp, #-12]
80022918:	e51b200c 	ldr	r2, [fp, #-12]
8002291c:	e51b3010 	ldr	r3, [fp, #-16]
80022920:	e1520003 	cmp	r2, r3
80022924:	da000001 	ble	80022930 <filewrite+0xac>
80022928:	e51b3010 	ldr	r3, [fp, #-16]
8002292c:	e50b300c 	str	r3, [fp, #-12]
80022930:	eb0006b5 	bl	8002440c <begin_trans>
80022934:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022938:	e5933010 	ldr	r3, [r3, #16]
8002293c:	e1a00003 	mov	r0, r3
80022940:	eb000205 	bl	8002315c <ilock>
80022944:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022948:	e5930010 	ldr	r0, [r3, #16]
8002294c:	e51b3008 	ldr	r3, [fp, #-8]
80022950:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80022954:	e0821003 	add	r1, r2, r3
80022958:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002295c:	e5932014 	ldr	r2, [r3, #20]
80022960:	e51b300c 	ldr	r3, [fp, #-12]
80022964:	eb000423 	bl	800239f8 <writei>
80022968:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
8002296c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022970:	e3530000 	cmp	r3, #0
80022974:	da000005 	ble	80022990 <filewrite+0x10c>
80022978:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002297c:	e5932014 	ldr	r2, [r3, #20]
80022980:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022984:	e0822003 	add	r2, r2, r3
80022988:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002298c:	e5832014 	str	r2, [r3, #20]
80022990:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022994:	e5933010 	ldr	r3, [r3, #16]
80022998:	e1a00003 	mov	r0, r3
8002299c:	eb000252 	bl	800232ec <iunlock>
800229a0:	eb0006ad 	bl	8002445c <commit_trans>
800229a4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800229a8:	e3530000 	cmp	r3, #0
800229ac:	ba00000e 	blt	800229ec <filewrite+0x168>
800229b0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800229b4:	e51b300c 	ldr	r3, [fp, #-12]
800229b8:	e1520003 	cmp	r2, r3
800229bc:	0a000001 	beq	800229c8 <filewrite+0x144>
800229c0:	e59f005c 	ldr	r0, [pc, #92]	@ 80022a24 <filewrite+0x1a0>
800229c4:	ebfffc4a 	bl	80021af4 <panic>
800229c8:	e51b2008 	ldr	r2, [fp, #-8]
800229cc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800229d0:	e0823003 	add	r3, r2, r3
800229d4:	e50b3008 	str	r3, [fp, #-8]
800229d8:	e51b2008 	ldr	r2, [fp, #-8]
800229dc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800229e0:	e1520003 	cmp	r2, r3
800229e4:	baffffc7 	blt	80022908 <filewrite+0x84>
800229e8:	ea000000 	b	800229f0 <filewrite+0x16c>
800229ec:	e1a00000 	nop			@ (mov r0, r0)
800229f0:	e51b2008 	ldr	r2, [fp, #-8]
800229f4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800229f8:	e1520003 	cmp	r2, r3
800229fc:	1a000001 	bne	80022a08 <filewrite+0x184>
80022a00:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022a04:	ea000003 	b	80022a18 <filewrite+0x194>
80022a08:	e3e03000 	mvn	r3, #0
80022a0c:	ea000001 	b	80022a18 <filewrite+0x194>
80022a10:	e59f0010 	ldr	r0, [pc, #16]	@ 80022a28 <filewrite+0x1a4>
80022a14:	ebfffc36 	bl	80021af4 <panic>
80022a18:	e1a00003 	mov	r0, r3
80022a1c:	e24bd004 	sub	sp, fp, #4
80022a20:	e8bd8800 	pop	{fp, pc}
80022a24:	80029d48 	.word	0x80029d48
80022a28:	80029d58 	.word	0x80029d58

80022a2c <readsb>:
80022a2c:	e92d4800 	push	{fp, lr}
80022a30:	e28db004 	add	fp, sp, #4
80022a34:	e24dd010 	sub	sp, sp, #16
80022a38:	e50b0010 	str	r0, [fp, #-16]
80022a3c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80022a40:	e51b3010 	ldr	r3, [fp, #-16]
80022a44:	e3a01001 	mov	r1, #1
80022a48:	e1a00003 	mov	r0, r3
80022a4c:	ebfff830 	bl	80020b14 <bread>
80022a50:	e50b0008 	str	r0, [fp, #-8]
80022a54:	e51b3008 	ldr	r3, [fp, #-8]
80022a58:	e2833018 	add	r3, r3, #24
80022a5c:	e3a02010 	mov	r2, #16
80022a60:	e1a01003 	mov	r1, r3
80022a64:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022a68:	ebfff5d6 	bl	800201c8 <memmove>
80022a6c:	e51b0008 	ldr	r0, [fp, #-8]
80022a70:	ebfff851 	bl	80020bbc <brelse>
80022a74:	e1a00000 	nop			@ (mov r0, r0)
80022a78:	e24bd004 	sub	sp, fp, #4
80022a7c:	e8bd8800 	pop	{fp, pc}

80022a80 <bzero>:
80022a80:	e92d4800 	push	{fp, lr}
80022a84:	e28db004 	add	fp, sp, #4
80022a88:	e24dd010 	sub	sp, sp, #16
80022a8c:	e50b0010 	str	r0, [fp, #-16]
80022a90:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80022a94:	e51b3010 	ldr	r3, [fp, #-16]
80022a98:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022a9c:	e1a01002 	mov	r1, r2
80022aa0:	e1a00003 	mov	r0, r3
80022aa4:	ebfff81a 	bl	80020b14 <bread>
80022aa8:	e50b0008 	str	r0, [fp, #-8]
80022aac:	e51b3008 	ldr	r3, [fp, #-8]
80022ab0:	e2833018 	add	r3, r3, #24
80022ab4:	e3a02c02 	mov	r2, #512	@ 0x200
80022ab8:	e3a01000 	mov	r1, #0
80022abc:	e1a00003 	mov	r0, r3
80022ac0:	ebfff54e 	bl	80020000 <memset>
80022ac4:	e51b0008 	ldr	r0, [fp, #-8]
80022ac8:	eb00067b 	bl	800244bc <log_write>
80022acc:	e51b0008 	ldr	r0, [fp, #-8]
80022ad0:	ebfff839 	bl	80020bbc <brelse>
80022ad4:	e1a00000 	nop			@ (mov r0, r0)
80022ad8:	e24bd004 	sub	sp, fp, #4
80022adc:	e8bd8800 	pop	{fp, pc}

80022ae0 <balloc>:
80022ae0:	e92d4800 	push	{fp, lr}
80022ae4:	e28db004 	add	fp, sp, #4
80022ae8:	e24dd028 	sub	sp, sp, #40	@ 0x28
80022aec:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80022af0:	e3a03000 	mov	r3, #0
80022af4:	e50b3010 	str	r3, [fp, #-16]
80022af8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022afc:	e24b2024 	sub	r2, fp, #36	@ 0x24
80022b00:	e1a01002 	mov	r1, r2
80022b04:	e1a00003 	mov	r0, r3
80022b08:	ebffffc7 	bl	80022a2c <readsb>
80022b0c:	e3a03000 	mov	r3, #0
80022b10:	e50b3008 	str	r3, [fp, #-8]
80022b14:	ea000059 	b	80022c80 <balloc+0x1a0>
80022b18:	e51b3008 	ldr	r3, [fp, #-8]
80022b1c:	e2832eff 	add	r2, r3, #4080	@ 0xff0
80022b20:	e282200f 	add	r2, r2, #15
80022b24:	e3530000 	cmp	r3, #0
80022b28:	b1a03002 	movlt	r3, r2
80022b2c:	a1a03003 	movge	r3, r3
80022b30:	e1a03643 	asr	r3, r3, #12
80022b34:	e1a02003 	mov	r2, r3
80022b38:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80022b3c:	e1a031a3 	lsr	r3, r3, #3
80022b40:	e0823003 	add	r3, r2, r3
80022b44:	e2833003 	add	r3, r3, #3
80022b48:	e1a01003 	mov	r1, r3
80022b4c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022b50:	ebfff7ef 	bl	80020b14 <bread>
80022b54:	e50b0010 	str	r0, [fp, #-16]
80022b58:	e3a03000 	mov	r3, #0
80022b5c:	e50b300c 	str	r3, [fp, #-12]
80022b60:	ea000037 	b	80022c44 <balloc+0x164>
80022b64:	e51b300c 	ldr	r3, [fp, #-12]
80022b68:	e2033007 	and	r3, r3, #7
80022b6c:	e3a02001 	mov	r2, #1
80022b70:	e1a03312 	lsl	r3, r2, r3
80022b74:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80022b78:	e51b300c 	ldr	r3, [fp, #-12]
80022b7c:	e2832007 	add	r2, r3, #7
80022b80:	e3530000 	cmp	r3, #0
80022b84:	b1a03002 	movlt	r3, r2
80022b88:	a1a03003 	movge	r3, r3
80022b8c:	e1a031c3 	asr	r3, r3, #3
80022b90:	e1a02003 	mov	r2, r3
80022b94:	e51b3010 	ldr	r3, [fp, #-16]
80022b98:	e0833002 	add	r3, r3, r2
80022b9c:	e5d33018 	ldrb	r3, [r3, #24]
80022ba0:	e1a02003 	mov	r2, r3
80022ba4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022ba8:	e0033002 	and	r3, r3, r2
80022bac:	e3530000 	cmp	r3, #0
80022bb0:	1a000020 	bne	80022c38 <balloc+0x158>
80022bb4:	e51b300c 	ldr	r3, [fp, #-12]
80022bb8:	e2832007 	add	r2, r3, #7
80022bbc:	e3530000 	cmp	r3, #0
80022bc0:	b1a03002 	movlt	r3, r2
80022bc4:	a1a03003 	movge	r3, r3
80022bc8:	e1a031c3 	asr	r3, r3, #3
80022bcc:	e51b2010 	ldr	r2, [fp, #-16]
80022bd0:	e0822003 	add	r2, r2, r3
80022bd4:	e5d22018 	ldrb	r2, [r2, #24]
80022bd8:	e6af1072 	sxtb	r1, r2
80022bdc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022be0:	e6af2072 	sxtb	r2, r2
80022be4:	e1812002 	orr	r2, r1, r2
80022be8:	e6af2072 	sxtb	r2, r2
80022bec:	e6ef1072 	uxtb	r1, r2
80022bf0:	e51b2010 	ldr	r2, [fp, #-16]
80022bf4:	e0823003 	add	r3, r2, r3
80022bf8:	e1a02001 	mov	r2, r1
80022bfc:	e5c32018 	strb	r2, [r3, #24]
80022c00:	e51b0010 	ldr	r0, [fp, #-16]
80022c04:	eb00062c 	bl	800244bc <log_write>
80022c08:	e51b0010 	ldr	r0, [fp, #-16]
80022c0c:	ebfff7ea 	bl	80020bbc <brelse>
80022c10:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022c14:	e51b2008 	ldr	r2, [fp, #-8]
80022c18:	e51b300c 	ldr	r3, [fp, #-12]
80022c1c:	e0823003 	add	r3, r2, r3
80022c20:	e1a01003 	mov	r1, r3
80022c24:	ebffff95 	bl	80022a80 <bzero>
80022c28:	e51b2008 	ldr	r2, [fp, #-8]
80022c2c:	e51b300c 	ldr	r3, [fp, #-12]
80022c30:	e0823003 	add	r3, r2, r3
80022c34:	ea000017 	b	80022c98 <balloc+0x1b8>
80022c38:	e51b300c 	ldr	r3, [fp, #-12]
80022c3c:	e2833001 	add	r3, r3, #1
80022c40:	e50b300c 	str	r3, [fp, #-12]
80022c44:	e51b300c 	ldr	r3, [fp, #-12]
80022c48:	e3530a01 	cmp	r3, #4096	@ 0x1000
80022c4c:	aa000006 	bge	80022c6c <balloc+0x18c>
80022c50:	e51b2008 	ldr	r2, [fp, #-8]
80022c54:	e51b300c 	ldr	r3, [fp, #-12]
80022c58:	e0823003 	add	r3, r2, r3
80022c5c:	e1a02003 	mov	r2, r3
80022c60:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80022c64:	e1520003 	cmp	r2, r3
80022c68:	3affffbd 	bcc	80022b64 <balloc+0x84>
80022c6c:	e51b0010 	ldr	r0, [fp, #-16]
80022c70:	ebfff7d1 	bl	80020bbc <brelse>
80022c74:	e51b3008 	ldr	r3, [fp, #-8]
80022c78:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80022c7c:	e50b3008 	str	r3, [fp, #-8]
80022c80:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80022c84:	e51b3008 	ldr	r3, [fp, #-8]
80022c88:	e1520003 	cmp	r2, r3
80022c8c:	8affffa1 	bhi	80022b18 <balloc+0x38>
80022c90:	e59f000c 	ldr	r0, [pc, #12]	@ 80022ca4 <balloc+0x1c4>
80022c94:	ebfffb96 	bl	80021af4 <panic>
80022c98:	e1a00003 	mov	r0, r3
80022c9c:	e24bd004 	sub	sp, fp, #4
80022ca0:	e8bd8800 	pop	{fp, pc}
80022ca4:	80029d64 	.word	0x80029d64

80022ca8 <bfree>:
80022ca8:	e92d4800 	push	{fp, lr}
80022cac:	e28db004 	add	fp, sp, #4
80022cb0:	e24dd028 	sub	sp, sp, #40	@ 0x28
80022cb4:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80022cb8:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
80022cbc:	e24b3020 	sub	r3, fp, #32
80022cc0:	e1a01003 	mov	r1, r3
80022cc4:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022cc8:	ebffff57 	bl	80022a2c <readsb>
80022ccc:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022cd0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022cd4:	e1a02623 	lsr	r2, r3, #12
80022cd8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022cdc:	e1a031a3 	lsr	r3, r3, #3
80022ce0:	e0823003 	add	r3, r2, r3
80022ce4:	e2833003 	add	r3, r3, #3
80022ce8:	e1a01003 	mov	r1, r3
80022cec:	ebfff788 	bl	80020b14 <bread>
80022cf0:	e50b0008 	str	r0, [fp, #-8]
80022cf4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022cf8:	e1a03a03 	lsl	r3, r3, #20
80022cfc:	e1a03a23 	lsr	r3, r3, #20
80022d00:	e50b300c 	str	r3, [fp, #-12]
80022d04:	e51b300c 	ldr	r3, [fp, #-12]
80022d08:	e2033007 	and	r3, r3, #7
80022d0c:	e3a02001 	mov	r2, #1
80022d10:	e1a03312 	lsl	r3, r2, r3
80022d14:	e50b3010 	str	r3, [fp, #-16]
80022d18:	e51b300c 	ldr	r3, [fp, #-12]
80022d1c:	e2832007 	add	r2, r3, #7
80022d20:	e3530000 	cmp	r3, #0
80022d24:	b1a03002 	movlt	r3, r2
80022d28:	a1a03003 	movge	r3, r3
80022d2c:	e1a031c3 	asr	r3, r3, #3
80022d30:	e1a02003 	mov	r2, r3
80022d34:	e51b3008 	ldr	r3, [fp, #-8]
80022d38:	e0833002 	add	r3, r3, r2
80022d3c:	e5d33018 	ldrb	r3, [r3, #24]
80022d40:	e1a02003 	mov	r2, r3
80022d44:	e51b3010 	ldr	r3, [fp, #-16]
80022d48:	e0033002 	and	r3, r3, r2
80022d4c:	e3530000 	cmp	r3, #0
80022d50:	1a000001 	bne	80022d5c <bfree+0xb4>
80022d54:	e59f0070 	ldr	r0, [pc, #112]	@ 80022dcc <bfree+0x124>
80022d58:	ebfffb65 	bl	80021af4 <panic>
80022d5c:	e51b300c 	ldr	r3, [fp, #-12]
80022d60:	e2832007 	add	r2, r3, #7
80022d64:	e3530000 	cmp	r3, #0
80022d68:	b1a03002 	movlt	r3, r2
80022d6c:	a1a03003 	movge	r3, r3
80022d70:	e1a031c3 	asr	r3, r3, #3
80022d74:	e51b2008 	ldr	r2, [fp, #-8]
80022d78:	e0822003 	add	r2, r2, r3
80022d7c:	e5d22018 	ldrb	r2, [r2, #24]
80022d80:	e6af1072 	sxtb	r1, r2
80022d84:	e51b2010 	ldr	r2, [fp, #-16]
80022d88:	e6af2072 	sxtb	r2, r2
80022d8c:	e1e02002 	mvn	r2, r2
80022d90:	e6af2072 	sxtb	r2, r2
80022d94:	e0022001 	and	r2, r2, r1
80022d98:	e6af2072 	sxtb	r2, r2
80022d9c:	e6ef1072 	uxtb	r1, r2
80022da0:	e51b2008 	ldr	r2, [fp, #-8]
80022da4:	e0823003 	add	r3, r2, r3
80022da8:	e1a02001 	mov	r2, r1
80022dac:	e5c32018 	strb	r2, [r3, #24]
80022db0:	e51b0008 	ldr	r0, [fp, #-8]
80022db4:	eb0005c0 	bl	800244bc <log_write>
80022db8:	e51b0008 	ldr	r0, [fp, #-8]
80022dbc:	ebfff77e 	bl	80020bbc <brelse>
80022dc0:	e1a00000 	nop			@ (mov r0, r0)
80022dc4:	e24bd004 	sub	sp, fp, #4
80022dc8:	e8bd8800 	pop	{fp, pc}
80022dcc:	80029d7c 	.word	0x80029d7c

80022dd0 <iinit>:
80022dd0:	e92d4800 	push	{fp, lr}
80022dd4:	e28db004 	add	fp, sp, #4
80022dd8:	e59f100c 	ldr	r1, [pc, #12]	@ 80022dec <iinit+0x1c>
80022ddc:	e59f000c 	ldr	r0, [pc, #12]	@ 80022df0 <iinit+0x20>
80022de0:	eb000e00 	bl	800265e8 <initlock>
80022de4:	e1a00000 	nop			@ (mov r0, r0)
80022de8:	e8bd8800 	pop	{fp, pc}
80022dec:	80029d90 	.word	0x80029d90
80022df0:	800ad500 	.word	0x800ad500

80022df4 <ialloc>:
80022df4:	e92d4800 	push	{fp, lr}
80022df8:	e28db004 	add	fp, sp, #4
80022dfc:	e24dd028 	sub	sp, sp, #40	@ 0x28
80022e00:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80022e04:	e1a03001 	mov	r3, r1
80022e08:	e14b32ba 	strh	r3, [fp, #-42]	@ 0xffffffd6
80022e0c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022e10:	e24b2020 	sub	r2, fp, #32
80022e14:	e1a01002 	mov	r1, r2
80022e18:	e1a00003 	mov	r0, r3
80022e1c:	ebffff02 	bl	80022a2c <readsb>
80022e20:	e3a03001 	mov	r3, #1
80022e24:	e50b3008 	str	r3, [fp, #-8]
80022e28:	ea000027 	b	80022ecc <ialloc+0xd8>
80022e2c:	e51b3008 	ldr	r3, [fp, #-8]
80022e30:	e1a031a3 	lsr	r3, r3, #3
80022e34:	e2833002 	add	r3, r3, #2
80022e38:	e1a01003 	mov	r1, r3
80022e3c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022e40:	ebfff733 	bl	80020b14 <bread>
80022e44:	e50b000c 	str	r0, [fp, #-12]
80022e48:	e51b300c 	ldr	r3, [fp, #-12]
80022e4c:	e2832018 	add	r2, r3, #24
80022e50:	e51b3008 	ldr	r3, [fp, #-8]
80022e54:	e2033007 	and	r3, r3, #7
80022e58:	e1a03303 	lsl	r3, r3, #6
80022e5c:	e0823003 	add	r3, r2, r3
80022e60:	e50b3010 	str	r3, [fp, #-16]
80022e64:	e51b3010 	ldr	r3, [fp, #-16]
80022e68:	e1d330f0 	ldrsh	r3, [r3]
80022e6c:	e3530000 	cmp	r3, #0
80022e70:	1a000010 	bne	80022eb8 <ialloc+0xc4>
80022e74:	e3a02040 	mov	r2, #64	@ 0x40
80022e78:	e3a01000 	mov	r1, #0
80022e7c:	e51b0010 	ldr	r0, [fp, #-16]
80022e80:	ebfff45e 	bl	80020000 <memset>
80022e84:	e51b3010 	ldr	r3, [fp, #-16]
80022e88:	e15b22ba 	ldrh	r2, [fp, #-42]	@ 0xffffffd6
80022e8c:	e1c320b0 	strh	r2, [r3]
80022e90:	e51b000c 	ldr	r0, [fp, #-12]
80022e94:	eb000588 	bl	800244bc <log_write>
80022e98:	e51b000c 	ldr	r0, [fp, #-12]
80022e9c:	ebfff746 	bl	80020bbc <brelse>
80022ea0:	e51b3008 	ldr	r3, [fp, #-8]
80022ea4:	e1a01003 	mov	r1, r3
80022ea8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022eac:	eb000048 	bl	80022fd4 <iget>
80022eb0:	e1a03000 	mov	r3, r0
80022eb4:	ea00000a 	b	80022ee4 <ialloc+0xf0>
80022eb8:	e51b000c 	ldr	r0, [fp, #-12]
80022ebc:	ebfff73e 	bl	80020bbc <brelse>
80022ec0:	e51b3008 	ldr	r3, [fp, #-8]
80022ec4:	e2833001 	add	r3, r3, #1
80022ec8:	e50b3008 	str	r3, [fp, #-8]
80022ecc:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80022ed0:	e51b3008 	ldr	r3, [fp, #-8]
80022ed4:	e1520003 	cmp	r2, r3
80022ed8:	8affffd3 	bhi	80022e2c <ialloc+0x38>
80022edc:	e59f000c 	ldr	r0, [pc, #12]	@ 80022ef0 <ialloc+0xfc>
80022ee0:	ebfffb03 	bl	80021af4 <panic>
80022ee4:	e1a00003 	mov	r0, r3
80022ee8:	e24bd004 	sub	sp, fp, #4
80022eec:	e8bd8800 	pop	{fp, pc}
80022ef0:	80029d98 	.word	0x80029d98

80022ef4 <iupdate>:
80022ef4:	e92d4800 	push	{fp, lr}
80022ef8:	e28db004 	add	fp, sp, #4
80022efc:	e24dd010 	sub	sp, sp, #16
80022f00:	e50b0010 	str	r0, [fp, #-16]
80022f04:	e51b3010 	ldr	r3, [fp, #-16]
80022f08:	e5932000 	ldr	r2, [r3]
80022f0c:	e51b3010 	ldr	r3, [fp, #-16]
80022f10:	e5933004 	ldr	r3, [r3, #4]
80022f14:	e1a031a3 	lsr	r3, r3, #3
80022f18:	e2833002 	add	r3, r3, #2
80022f1c:	e1a01003 	mov	r1, r3
80022f20:	e1a00002 	mov	r0, r2
80022f24:	ebfff6fa 	bl	80020b14 <bread>
80022f28:	e50b0008 	str	r0, [fp, #-8]
80022f2c:	e51b3008 	ldr	r3, [fp, #-8]
80022f30:	e2832018 	add	r2, r3, #24
80022f34:	e51b3010 	ldr	r3, [fp, #-16]
80022f38:	e5933004 	ldr	r3, [r3, #4]
80022f3c:	e2033007 	and	r3, r3, #7
80022f40:	e1a03303 	lsl	r3, r3, #6
80022f44:	e0823003 	add	r3, r2, r3
80022f48:	e50b300c 	str	r3, [fp, #-12]
80022f4c:	e51b3010 	ldr	r3, [fp, #-16]
80022f50:	e1d321f0 	ldrsh	r2, [r3, #16]
80022f54:	e51b300c 	ldr	r3, [fp, #-12]
80022f58:	e1c320b0 	strh	r2, [r3]
80022f5c:	e51b3010 	ldr	r3, [fp, #-16]
80022f60:	e1d321f2 	ldrsh	r2, [r3, #18]
80022f64:	e51b300c 	ldr	r3, [fp, #-12]
80022f68:	e1c320b2 	strh	r2, [r3, #2]
80022f6c:	e51b3010 	ldr	r3, [fp, #-16]
80022f70:	e1d321f4 	ldrsh	r2, [r3, #20]
80022f74:	e51b300c 	ldr	r3, [fp, #-12]
80022f78:	e1c320b4 	strh	r2, [r3, #4]
80022f7c:	e51b3010 	ldr	r3, [fp, #-16]
80022f80:	e1d321f6 	ldrsh	r2, [r3, #22]
80022f84:	e51b300c 	ldr	r3, [fp, #-12]
80022f88:	e1c320b6 	strh	r2, [r3, #6]
80022f8c:	e51b3010 	ldr	r3, [fp, #-16]
80022f90:	e5932018 	ldr	r2, [r3, #24]
80022f94:	e51b300c 	ldr	r3, [fp, #-12]
80022f98:	e5832008 	str	r2, [r3, #8]
80022f9c:	e51b300c 	ldr	r3, [fp, #-12]
80022fa0:	e283000c 	add	r0, r3, #12
80022fa4:	e51b3010 	ldr	r3, [fp, #-16]
80022fa8:	e283301c 	add	r3, r3, #28
80022fac:	e3a02034 	mov	r2, #52	@ 0x34
80022fb0:	e1a01003 	mov	r1, r3
80022fb4:	ebfff483 	bl	800201c8 <memmove>
80022fb8:	e51b0008 	ldr	r0, [fp, #-8]
80022fbc:	eb00053e 	bl	800244bc <log_write>
80022fc0:	e51b0008 	ldr	r0, [fp, #-8]
80022fc4:	ebfff6fc 	bl	80020bbc <brelse>
80022fc8:	e1a00000 	nop			@ (mov r0, r0)
80022fcc:	e24bd004 	sub	sp, fp, #4
80022fd0:	e8bd8800 	pop	{fp, pc}

80022fd4 <iget>:
80022fd4:	e92d4800 	push	{fp, lr}
80022fd8:	e28db004 	add	fp, sp, #4
80022fdc:	e24dd010 	sub	sp, sp, #16
80022fe0:	e50b0010 	str	r0, [fp, #-16]
80022fe4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80022fe8:	e59f0114 	ldr	r0, [pc, #276]	@ 80023104 <iget+0x130>
80022fec:	eb000d8f 	bl	80026630 <acquire>
80022ff0:	e3a03000 	mov	r3, #0
80022ff4:	e50b300c 	str	r3, [fp, #-12]
80022ff8:	e59f3108 	ldr	r3, [pc, #264]	@ 80023108 <iget+0x134>
80022ffc:	e50b3008 	str	r3, [fp, #-8]
80023000:	ea000022 	b	80023090 <iget+0xbc>
80023004:	e51b3008 	ldr	r3, [fp, #-8]
80023008:	e5933008 	ldr	r3, [r3, #8]
8002300c:	e3530000 	cmp	r3, #0
80023010:	da000012 	ble	80023060 <iget+0x8c>
80023014:	e51b3008 	ldr	r3, [fp, #-8]
80023018:	e5933000 	ldr	r3, [r3]
8002301c:	e51b2010 	ldr	r2, [fp, #-16]
80023020:	e1520003 	cmp	r2, r3
80023024:	1a00000d 	bne	80023060 <iget+0x8c>
80023028:	e51b3008 	ldr	r3, [fp, #-8]
8002302c:	e5933004 	ldr	r3, [r3, #4]
80023030:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80023034:	e1520003 	cmp	r2, r3
80023038:	1a000008 	bne	80023060 <iget+0x8c>
8002303c:	e51b3008 	ldr	r3, [fp, #-8]
80023040:	e5933008 	ldr	r3, [r3, #8]
80023044:	e2832001 	add	r2, r3, #1
80023048:	e51b3008 	ldr	r3, [fp, #-8]
8002304c:	e5832008 	str	r2, [r3, #8]
80023050:	e59f00ac 	ldr	r0, [pc, #172]	@ 80023104 <iget+0x130>
80023054:	eb000d80 	bl	8002665c <release>
80023058:	e51b3008 	ldr	r3, [fp, #-8]
8002305c:	ea000025 	b	800230f8 <iget+0x124>
80023060:	e51b300c 	ldr	r3, [fp, #-12]
80023064:	e3530000 	cmp	r3, #0
80023068:	1a000005 	bne	80023084 <iget+0xb0>
8002306c:	e51b3008 	ldr	r3, [fp, #-8]
80023070:	e5933008 	ldr	r3, [r3, #8]
80023074:	e3530000 	cmp	r3, #0
80023078:	1a000001 	bne	80023084 <iget+0xb0>
8002307c:	e51b3008 	ldr	r3, [fp, #-8]
80023080:	e50b300c 	str	r3, [fp, #-12]
80023084:	e51b3008 	ldr	r3, [fp, #-8]
80023088:	e2833050 	add	r3, r3, #80	@ 0x50
8002308c:	e50b3008 	str	r3, [fp, #-8]
80023090:	e51b3008 	ldr	r3, [fp, #-8]
80023094:	e59f2070 	ldr	r2, [pc, #112]	@ 8002310c <iget+0x138>
80023098:	e1530002 	cmp	r3, r2
8002309c:	3affffd8 	bcc	80023004 <iget+0x30>
800230a0:	e51b300c 	ldr	r3, [fp, #-12]
800230a4:	e3530000 	cmp	r3, #0
800230a8:	1a000001 	bne	800230b4 <iget+0xe0>
800230ac:	e59f005c 	ldr	r0, [pc, #92]	@ 80023110 <iget+0x13c>
800230b0:	ebfffa8f 	bl	80021af4 <panic>
800230b4:	e51b300c 	ldr	r3, [fp, #-12]
800230b8:	e50b3008 	str	r3, [fp, #-8]
800230bc:	e51b3008 	ldr	r3, [fp, #-8]
800230c0:	e51b2010 	ldr	r2, [fp, #-16]
800230c4:	e5832000 	str	r2, [r3]
800230c8:	e51b3008 	ldr	r3, [fp, #-8]
800230cc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800230d0:	e5832004 	str	r2, [r3, #4]
800230d4:	e51b3008 	ldr	r3, [fp, #-8]
800230d8:	e3a02001 	mov	r2, #1
800230dc:	e5832008 	str	r2, [r3, #8]
800230e0:	e51b3008 	ldr	r3, [fp, #-8]
800230e4:	e3a02000 	mov	r2, #0
800230e8:	e583200c 	str	r2, [r3, #12]
800230ec:	e59f0010 	ldr	r0, [pc, #16]	@ 80023104 <iget+0x130>
800230f0:	eb000d59 	bl	8002665c <release>
800230f4:	e51b3008 	ldr	r3, [fp, #-8]
800230f8:	e1a00003 	mov	r0, r3
800230fc:	e24bd004 	sub	sp, fp, #4
80023100:	e8bd8800 	pop	{fp, pc}
80023104:	800ad500 	.word	0x800ad500
80023108:	800ad534 	.word	0x800ad534
8002310c:	800ae4d4 	.word	0x800ae4d4
80023110:	80029dac 	.word	0x80029dac

80023114 <idup>:
80023114:	e92d4800 	push	{fp, lr}
80023118:	e28db004 	add	fp, sp, #4
8002311c:	e24dd008 	sub	sp, sp, #8
80023120:	e50b0008 	str	r0, [fp, #-8]
80023124:	e59f002c 	ldr	r0, [pc, #44]	@ 80023158 <idup+0x44>
80023128:	eb000d40 	bl	80026630 <acquire>
8002312c:	e51b3008 	ldr	r3, [fp, #-8]
80023130:	e5933008 	ldr	r3, [r3, #8]
80023134:	e2832001 	add	r2, r3, #1
80023138:	e51b3008 	ldr	r3, [fp, #-8]
8002313c:	e5832008 	str	r2, [r3, #8]
80023140:	e59f0010 	ldr	r0, [pc, #16]	@ 80023158 <idup+0x44>
80023144:	eb000d44 	bl	8002665c <release>
80023148:	e51b3008 	ldr	r3, [fp, #-8]
8002314c:	e1a00003 	mov	r0, r3
80023150:	e24bd004 	sub	sp, fp, #4
80023154:	e8bd8800 	pop	{fp, pc}
80023158:	800ad500 	.word	0x800ad500

8002315c <ilock>:
8002315c:	e92d4800 	push	{fp, lr}
80023160:	e28db004 	add	fp, sp, #4
80023164:	e24dd010 	sub	sp, sp, #16
80023168:	e50b0010 	str	r0, [fp, #-16]
8002316c:	e51b3010 	ldr	r3, [fp, #-16]
80023170:	e3530000 	cmp	r3, #0
80023174:	0a000003 	beq	80023188 <ilock+0x2c>
80023178:	e51b3010 	ldr	r3, [fp, #-16]
8002317c:	e5933008 	ldr	r3, [r3, #8]
80023180:	e3530000 	cmp	r3, #0
80023184:	ca000001 	bgt	80023190 <ilock+0x34>
80023188:	e59f0150 	ldr	r0, [pc, #336]	@ 800232e0 <ilock+0x184>
8002318c:	ebfffa58 	bl	80021af4 <panic>
80023190:	e59f014c 	ldr	r0, [pc, #332]	@ 800232e4 <ilock+0x188>
80023194:	eb000d25 	bl	80026630 <acquire>
80023198:	ea000002 	b	800231a8 <ilock+0x4c>
8002319c:	e59f1140 	ldr	r1, [pc, #320]	@ 800232e4 <ilock+0x188>
800231a0:	e51b0010 	ldr	r0, [fp, #-16]
800231a4:	eb000b5b 	bl	80025f18 <sleep>
800231a8:	e51b3010 	ldr	r3, [fp, #-16]
800231ac:	e593300c 	ldr	r3, [r3, #12]
800231b0:	e2033001 	and	r3, r3, #1
800231b4:	e3530000 	cmp	r3, #0
800231b8:	1afffff7 	bne	8002319c <ilock+0x40>
800231bc:	e51b3010 	ldr	r3, [fp, #-16]
800231c0:	e593300c 	ldr	r3, [r3, #12]
800231c4:	e3832001 	orr	r2, r3, #1
800231c8:	e51b3010 	ldr	r3, [fp, #-16]
800231cc:	e583200c 	str	r2, [r3, #12]
800231d0:	e59f010c 	ldr	r0, [pc, #268]	@ 800232e4 <ilock+0x188>
800231d4:	eb000d20 	bl	8002665c <release>
800231d8:	e51b3010 	ldr	r3, [fp, #-16]
800231dc:	e593300c 	ldr	r3, [r3, #12]
800231e0:	e2033002 	and	r3, r3, #2
800231e4:	e3530000 	cmp	r3, #0
800231e8:	1a000039 	bne	800232d4 <ilock+0x178>
800231ec:	e51b3010 	ldr	r3, [fp, #-16]
800231f0:	e5932000 	ldr	r2, [r3]
800231f4:	e51b3010 	ldr	r3, [fp, #-16]
800231f8:	e5933004 	ldr	r3, [r3, #4]
800231fc:	e1a031a3 	lsr	r3, r3, #3
80023200:	e2833002 	add	r3, r3, #2
80023204:	e1a01003 	mov	r1, r3
80023208:	e1a00002 	mov	r0, r2
8002320c:	ebfff640 	bl	80020b14 <bread>
80023210:	e50b0008 	str	r0, [fp, #-8]
80023214:	e51b3008 	ldr	r3, [fp, #-8]
80023218:	e2832018 	add	r2, r3, #24
8002321c:	e51b3010 	ldr	r3, [fp, #-16]
80023220:	e5933004 	ldr	r3, [r3, #4]
80023224:	e2033007 	and	r3, r3, #7
80023228:	e1a03303 	lsl	r3, r3, #6
8002322c:	e0823003 	add	r3, r2, r3
80023230:	e50b300c 	str	r3, [fp, #-12]
80023234:	e51b300c 	ldr	r3, [fp, #-12]
80023238:	e1d320f0 	ldrsh	r2, [r3]
8002323c:	e51b3010 	ldr	r3, [fp, #-16]
80023240:	e1c321b0 	strh	r2, [r3, #16]
80023244:	e51b300c 	ldr	r3, [fp, #-12]
80023248:	e1d320f2 	ldrsh	r2, [r3, #2]
8002324c:	e51b3010 	ldr	r3, [fp, #-16]
80023250:	e1c321b2 	strh	r2, [r3, #18]
80023254:	e51b300c 	ldr	r3, [fp, #-12]
80023258:	e1d320f4 	ldrsh	r2, [r3, #4]
8002325c:	e51b3010 	ldr	r3, [fp, #-16]
80023260:	e1c321b4 	strh	r2, [r3, #20]
80023264:	e51b300c 	ldr	r3, [fp, #-12]
80023268:	e1d320f6 	ldrsh	r2, [r3, #6]
8002326c:	e51b3010 	ldr	r3, [fp, #-16]
80023270:	e1c321b6 	strh	r2, [r3, #22]
80023274:	e51b300c 	ldr	r3, [fp, #-12]
80023278:	e5932008 	ldr	r2, [r3, #8]
8002327c:	e51b3010 	ldr	r3, [fp, #-16]
80023280:	e5832018 	str	r2, [r3, #24]
80023284:	e51b3010 	ldr	r3, [fp, #-16]
80023288:	e283001c 	add	r0, r3, #28
8002328c:	e51b300c 	ldr	r3, [fp, #-12]
80023290:	e283300c 	add	r3, r3, #12
80023294:	e3a02034 	mov	r2, #52	@ 0x34
80023298:	e1a01003 	mov	r1, r3
8002329c:	ebfff3c9 	bl	800201c8 <memmove>
800232a0:	e51b0008 	ldr	r0, [fp, #-8]
800232a4:	ebfff644 	bl	80020bbc <brelse>
800232a8:	e51b3010 	ldr	r3, [fp, #-16]
800232ac:	e593300c 	ldr	r3, [r3, #12]
800232b0:	e3832002 	orr	r2, r3, #2
800232b4:	e51b3010 	ldr	r3, [fp, #-16]
800232b8:	e583200c 	str	r2, [r3, #12]
800232bc:	e51b3010 	ldr	r3, [fp, #-16]
800232c0:	e1d331f0 	ldrsh	r3, [r3, #16]
800232c4:	e3530000 	cmp	r3, #0
800232c8:	1a000001 	bne	800232d4 <ilock+0x178>
800232cc:	e59f0014 	ldr	r0, [pc, #20]	@ 800232e8 <ilock+0x18c>
800232d0:	ebfffa07 	bl	80021af4 <panic>
800232d4:	e1a00000 	nop			@ (mov r0, r0)
800232d8:	e24bd004 	sub	sp, fp, #4
800232dc:	e8bd8800 	pop	{fp, pc}
800232e0:	80029dbc 	.word	0x80029dbc
800232e4:	800ad500 	.word	0x800ad500
800232e8:	80029dc4 	.word	0x80029dc4

800232ec <iunlock>:
800232ec:	e92d4800 	push	{fp, lr}
800232f0:	e28db004 	add	fp, sp, #4
800232f4:	e24dd008 	sub	sp, sp, #8
800232f8:	e50b0008 	str	r0, [fp, #-8]
800232fc:	e51b3008 	ldr	r3, [fp, #-8]
80023300:	e3530000 	cmp	r3, #0
80023304:	0a000008 	beq	8002332c <iunlock+0x40>
80023308:	e51b3008 	ldr	r3, [fp, #-8]
8002330c:	e593300c 	ldr	r3, [r3, #12]
80023310:	e2033001 	and	r3, r3, #1
80023314:	e3530000 	cmp	r3, #0
80023318:	0a000003 	beq	8002332c <iunlock+0x40>
8002331c:	e51b3008 	ldr	r3, [fp, #-8]
80023320:	e5933008 	ldr	r3, [r3, #8]
80023324:	e3530000 	cmp	r3, #0
80023328:	ca000001 	bgt	80023334 <iunlock+0x48>
8002332c:	e59f0038 	ldr	r0, [pc, #56]	@ 8002336c <iunlock+0x80>
80023330:	ebfff9ef 	bl	80021af4 <panic>
80023334:	e59f0034 	ldr	r0, [pc, #52]	@ 80023370 <iunlock+0x84>
80023338:	eb000cbc 	bl	80026630 <acquire>
8002333c:	e51b3008 	ldr	r3, [fp, #-8]
80023340:	e593300c 	ldr	r3, [r3, #12]
80023344:	e3c32001 	bic	r2, r3, #1
80023348:	e51b3008 	ldr	r3, [fp, #-8]
8002334c:	e583200c 	str	r2, [r3, #12]
80023350:	e51b0008 	ldr	r0, [fp, #-8]
80023354:	eb000b73 	bl	80026128 <wakeup>
80023358:	e59f0010 	ldr	r0, [pc, #16]	@ 80023370 <iunlock+0x84>
8002335c:	eb000cbe 	bl	8002665c <release>
80023360:	e1a00000 	nop			@ (mov r0, r0)
80023364:	e24bd004 	sub	sp, fp, #4
80023368:	e8bd8800 	pop	{fp, pc}
8002336c:	80029dd4 	.word	0x80029dd4
80023370:	800ad500 	.word	0x800ad500

80023374 <iput>:
80023374:	e92d4800 	push	{fp, lr}
80023378:	e28db004 	add	fp, sp, #4
8002337c:	e24dd008 	sub	sp, sp, #8
80023380:	e50b0008 	str	r0, [fp, #-8]
80023384:	e59f00cc 	ldr	r0, [pc, #204]	@ 80023458 <iput+0xe4>
80023388:	eb000ca8 	bl	80026630 <acquire>
8002338c:	e51b3008 	ldr	r3, [fp, #-8]
80023390:	e5933008 	ldr	r3, [r3, #8]
80023394:	e3530001 	cmp	r3, #1
80023398:	1a000024 	bne	80023430 <iput+0xbc>
8002339c:	e51b3008 	ldr	r3, [fp, #-8]
800233a0:	e593300c 	ldr	r3, [r3, #12]
800233a4:	e2033002 	and	r3, r3, #2
800233a8:	e3530000 	cmp	r3, #0
800233ac:	0a00001f 	beq	80023430 <iput+0xbc>
800233b0:	e51b3008 	ldr	r3, [fp, #-8]
800233b4:	e1d331f6 	ldrsh	r3, [r3, #22]
800233b8:	e3530000 	cmp	r3, #0
800233bc:	1a00001b 	bne	80023430 <iput+0xbc>
800233c0:	e51b3008 	ldr	r3, [fp, #-8]
800233c4:	e593300c 	ldr	r3, [r3, #12]
800233c8:	e2033001 	and	r3, r3, #1
800233cc:	e3530000 	cmp	r3, #0
800233d0:	0a000001 	beq	800233dc <iput+0x68>
800233d4:	e59f0080 	ldr	r0, [pc, #128]	@ 8002345c <iput+0xe8>
800233d8:	ebfff9c5 	bl	80021af4 <panic>
800233dc:	e51b3008 	ldr	r3, [fp, #-8]
800233e0:	e593300c 	ldr	r3, [r3, #12]
800233e4:	e3832001 	orr	r2, r3, #1
800233e8:	e51b3008 	ldr	r3, [fp, #-8]
800233ec:	e583200c 	str	r2, [r3, #12]
800233f0:	e59f0060 	ldr	r0, [pc, #96]	@ 80023458 <iput+0xe4>
800233f4:	eb000c98 	bl	8002665c <release>
800233f8:	e51b0008 	ldr	r0, [fp, #-8]
800233fc:	eb00007f 	bl	80023600 <itrunc>
80023400:	e51b3008 	ldr	r3, [fp, #-8]
80023404:	e3a02000 	mov	r2, #0
80023408:	e1c321b0 	strh	r2, [r3, #16]
8002340c:	e51b0008 	ldr	r0, [fp, #-8]
80023410:	ebfffeb7 	bl	80022ef4 <iupdate>
80023414:	e59f003c 	ldr	r0, [pc, #60]	@ 80023458 <iput+0xe4>
80023418:	eb000c84 	bl	80026630 <acquire>
8002341c:	e51b3008 	ldr	r3, [fp, #-8]
80023420:	e3a02000 	mov	r2, #0
80023424:	e583200c 	str	r2, [r3, #12]
80023428:	e51b0008 	ldr	r0, [fp, #-8]
8002342c:	eb000b3d 	bl	80026128 <wakeup>
80023430:	e51b3008 	ldr	r3, [fp, #-8]
80023434:	e5933008 	ldr	r3, [r3, #8]
80023438:	e2432001 	sub	r2, r3, #1
8002343c:	e51b3008 	ldr	r3, [fp, #-8]
80023440:	e5832008 	str	r2, [r3, #8]
80023444:	e59f000c 	ldr	r0, [pc, #12]	@ 80023458 <iput+0xe4>
80023448:	eb000c83 	bl	8002665c <release>
8002344c:	e1a00000 	nop			@ (mov r0, r0)
80023450:	e24bd004 	sub	sp, fp, #4
80023454:	e8bd8800 	pop	{fp, pc}
80023458:	800ad500 	.word	0x800ad500
8002345c:	80029ddc 	.word	0x80029ddc

80023460 <iunlockput>:
80023460:	e92d4800 	push	{fp, lr}
80023464:	e28db004 	add	fp, sp, #4
80023468:	e24dd008 	sub	sp, sp, #8
8002346c:	e50b0008 	str	r0, [fp, #-8]
80023470:	e51b0008 	ldr	r0, [fp, #-8]
80023474:	ebffff9c 	bl	800232ec <iunlock>
80023478:	e51b0008 	ldr	r0, [fp, #-8]
8002347c:	ebffffbc 	bl	80023374 <iput>
80023480:	e1a00000 	nop			@ (mov r0, r0)
80023484:	e24bd004 	sub	sp, fp, #4
80023488:	e8bd8800 	pop	{fp, pc}

8002348c <bmap>:
8002348c:	e92d4800 	push	{fp, lr}
80023490:	e28db004 	add	fp, sp, #4
80023494:	e24dd018 	sub	sp, sp, #24
80023498:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
8002349c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
800234a0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800234a4:	e353000b 	cmp	r3, #11
800234a8:	8a000017 	bhi	8002350c <bmap+0x80>
800234ac:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
800234b0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800234b4:	e2833006 	add	r3, r3, #6
800234b8:	e1a03103 	lsl	r3, r3, #2
800234bc:	e0823003 	add	r3, r2, r3
800234c0:	e5933004 	ldr	r3, [r3, #4]
800234c4:	e50b3008 	str	r3, [fp, #-8]
800234c8:	e51b3008 	ldr	r3, [fp, #-8]
800234cc:	e3530000 	cmp	r3, #0
800234d0:	1a00000b 	bne	80023504 <bmap+0x78>
800234d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800234d8:	e5933000 	ldr	r3, [r3]
800234dc:	e1a00003 	mov	r0, r3
800234e0:	ebfffd7e 	bl	80022ae0 <balloc>
800234e4:	e50b0008 	str	r0, [fp, #-8]
800234e8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
800234ec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800234f0:	e2833006 	add	r3, r3, #6
800234f4:	e1a03103 	lsl	r3, r3, #2
800234f8:	e0823003 	add	r3, r2, r3
800234fc:	e51b2008 	ldr	r2, [fp, #-8]
80023500:	e5832004 	str	r2, [r3, #4]
80023504:	e51b3008 	ldr	r3, [fp, #-8]
80023508:	ea000038 	b	800235f0 <bmap+0x164>
8002350c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80023510:	e243300c 	sub	r3, r3, #12
80023514:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80023518:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002351c:	e353007f 	cmp	r3, #127	@ 0x7f
80023520:	8a000030 	bhi	800235e8 <bmap+0x15c>
80023524:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023528:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
8002352c:	e50b3008 	str	r3, [fp, #-8]
80023530:	e51b3008 	ldr	r3, [fp, #-8]
80023534:	e3530000 	cmp	r3, #0
80023538:	1a000007 	bne	8002355c <bmap+0xd0>
8002353c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023540:	e5933000 	ldr	r3, [r3]
80023544:	e1a00003 	mov	r0, r3
80023548:	ebfffd64 	bl	80022ae0 <balloc>
8002354c:	e50b0008 	str	r0, [fp, #-8]
80023550:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023554:	e51b2008 	ldr	r2, [fp, #-8]
80023558:	e583204c 	str	r2, [r3, #76]	@ 0x4c
8002355c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023560:	e5933000 	ldr	r3, [r3]
80023564:	e51b1008 	ldr	r1, [fp, #-8]
80023568:	e1a00003 	mov	r0, r3
8002356c:	ebfff568 	bl	80020b14 <bread>
80023570:	e50b000c 	str	r0, [fp, #-12]
80023574:	e51b300c 	ldr	r3, [fp, #-12]
80023578:	e2833018 	add	r3, r3, #24
8002357c:	e50b3010 	str	r3, [fp, #-16]
80023580:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80023584:	e1a03103 	lsl	r3, r3, #2
80023588:	e51b2010 	ldr	r2, [fp, #-16]
8002358c:	e0823003 	add	r3, r2, r3
80023590:	e5933000 	ldr	r3, [r3]
80023594:	e50b3008 	str	r3, [fp, #-8]
80023598:	e51b3008 	ldr	r3, [fp, #-8]
8002359c:	e3530000 	cmp	r3, #0
800235a0:	1a00000c 	bne	800235d8 <bmap+0x14c>
800235a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800235a8:	e5933000 	ldr	r3, [r3]
800235ac:	e1a00003 	mov	r0, r3
800235b0:	ebfffd4a 	bl	80022ae0 <balloc>
800235b4:	e50b0008 	str	r0, [fp, #-8]
800235b8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800235bc:	e1a03103 	lsl	r3, r3, #2
800235c0:	e51b2010 	ldr	r2, [fp, #-16]
800235c4:	e0823003 	add	r3, r2, r3
800235c8:	e51b2008 	ldr	r2, [fp, #-8]
800235cc:	e5832000 	str	r2, [r3]
800235d0:	e51b000c 	ldr	r0, [fp, #-12]
800235d4:	eb0003b8 	bl	800244bc <log_write>
800235d8:	e51b000c 	ldr	r0, [fp, #-12]
800235dc:	ebfff576 	bl	80020bbc <brelse>
800235e0:	e51b3008 	ldr	r3, [fp, #-8]
800235e4:	ea000001 	b	800235f0 <bmap+0x164>
800235e8:	e59f000c 	ldr	r0, [pc, #12]	@ 800235fc <bmap+0x170>
800235ec:	ebfff940 	bl	80021af4 <panic>
800235f0:	e1a00003 	mov	r0, r3
800235f4:	e24bd004 	sub	sp, fp, #4
800235f8:	e8bd8800 	pop	{fp, pc}
800235fc:	80029de8 	.word	0x80029de8

80023600 <itrunc>:
80023600:	e92d4800 	push	{fp, lr}
80023604:	e28db004 	add	fp, sp, #4
80023608:	e24dd018 	sub	sp, sp, #24
8002360c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80023610:	e3a03000 	mov	r3, #0
80023614:	e50b3008 	str	r3, [fp, #-8]
80023618:	ea00001c 	b	80023690 <itrunc+0x90>
8002361c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023620:	e51b3008 	ldr	r3, [fp, #-8]
80023624:	e2833006 	add	r3, r3, #6
80023628:	e1a03103 	lsl	r3, r3, #2
8002362c:	e0823003 	add	r3, r2, r3
80023630:	e5933004 	ldr	r3, [r3, #4]
80023634:	e3530000 	cmp	r3, #0
80023638:	0a000011 	beq	80023684 <itrunc+0x84>
8002363c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023640:	e5933000 	ldr	r3, [r3]
80023644:	e1a00003 	mov	r0, r3
80023648:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
8002364c:	e51b3008 	ldr	r3, [fp, #-8]
80023650:	e2833006 	add	r3, r3, #6
80023654:	e1a03103 	lsl	r3, r3, #2
80023658:	e0823003 	add	r3, r2, r3
8002365c:	e5933004 	ldr	r3, [r3, #4]
80023660:	e1a01003 	mov	r1, r3
80023664:	ebfffd8f 	bl	80022ca8 <bfree>
80023668:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
8002366c:	e51b3008 	ldr	r3, [fp, #-8]
80023670:	e2833006 	add	r3, r3, #6
80023674:	e1a03103 	lsl	r3, r3, #2
80023678:	e0823003 	add	r3, r2, r3
8002367c:	e3a02000 	mov	r2, #0
80023680:	e5832004 	str	r2, [r3, #4]
80023684:	e51b3008 	ldr	r3, [fp, #-8]
80023688:	e2833001 	add	r3, r3, #1
8002368c:	e50b3008 	str	r3, [fp, #-8]
80023690:	e51b3008 	ldr	r3, [fp, #-8]
80023694:	e353000b 	cmp	r3, #11
80023698:	daffffdf 	ble	8002361c <itrunc+0x1c>
8002369c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800236a0:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
800236a4:	e3530000 	cmp	r3, #0
800236a8:	0a000031 	beq	80023774 <itrunc+0x174>
800236ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800236b0:	e5932000 	ldr	r2, [r3]
800236b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800236b8:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
800236bc:	e1a01003 	mov	r1, r3
800236c0:	e1a00002 	mov	r0, r2
800236c4:	ebfff512 	bl	80020b14 <bread>
800236c8:	e50b0010 	str	r0, [fp, #-16]
800236cc:	e51b3010 	ldr	r3, [fp, #-16]
800236d0:	e2833018 	add	r3, r3, #24
800236d4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800236d8:	e3a03000 	mov	r3, #0
800236dc:	e50b300c 	str	r3, [fp, #-12]
800236e0:	ea000013 	b	80023734 <itrunc+0x134>
800236e4:	e51b300c 	ldr	r3, [fp, #-12]
800236e8:	e1a03103 	lsl	r3, r3, #2
800236ec:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800236f0:	e0823003 	add	r3, r2, r3
800236f4:	e5933000 	ldr	r3, [r3]
800236f8:	e3530000 	cmp	r3, #0
800236fc:	0a000009 	beq	80023728 <itrunc+0x128>
80023700:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023704:	e5933000 	ldr	r3, [r3]
80023708:	e1a00003 	mov	r0, r3
8002370c:	e51b300c 	ldr	r3, [fp, #-12]
80023710:	e1a03103 	lsl	r3, r3, #2
80023714:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80023718:	e0823003 	add	r3, r2, r3
8002371c:	e5933000 	ldr	r3, [r3]
80023720:	e1a01003 	mov	r1, r3
80023724:	ebfffd5f 	bl	80022ca8 <bfree>
80023728:	e51b300c 	ldr	r3, [fp, #-12]
8002372c:	e2833001 	add	r3, r3, #1
80023730:	e50b300c 	str	r3, [fp, #-12]
80023734:	e51b300c 	ldr	r3, [fp, #-12]
80023738:	e353007f 	cmp	r3, #127	@ 0x7f
8002373c:	9affffe8 	bls	800236e4 <itrunc+0xe4>
80023740:	e51b0010 	ldr	r0, [fp, #-16]
80023744:	ebfff51c 	bl	80020bbc <brelse>
80023748:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002374c:	e5933000 	ldr	r3, [r3]
80023750:	e1a02003 	mov	r2, r3
80023754:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023758:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
8002375c:	e1a01003 	mov	r1, r3
80023760:	e1a00002 	mov	r0, r2
80023764:	ebfffd4f 	bl	80022ca8 <bfree>
80023768:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002376c:	e3a02000 	mov	r2, #0
80023770:	e583204c 	str	r2, [r3, #76]	@ 0x4c
80023774:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023778:	e3a02000 	mov	r2, #0
8002377c:	e5832018 	str	r2, [r3, #24]
80023780:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80023784:	ebfffdda 	bl	80022ef4 <iupdate>
80023788:	e1a00000 	nop			@ (mov r0, r0)
8002378c:	e24bd004 	sub	sp, fp, #4
80023790:	e8bd8800 	pop	{fp, pc}

80023794 <stati>:
80023794:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80023798:	e28db000 	add	fp, sp, #0
8002379c:	e24dd00c 	sub	sp, sp, #12
800237a0:	e50b0008 	str	r0, [fp, #-8]
800237a4:	e50b100c 	str	r1, [fp, #-12]
800237a8:	e51b3008 	ldr	r3, [fp, #-8]
800237ac:	e5933000 	ldr	r3, [r3]
800237b0:	e1a02003 	mov	r2, r3
800237b4:	e51b300c 	ldr	r3, [fp, #-12]
800237b8:	e5832004 	str	r2, [r3, #4]
800237bc:	e51b3008 	ldr	r3, [fp, #-8]
800237c0:	e5932004 	ldr	r2, [r3, #4]
800237c4:	e51b300c 	ldr	r3, [fp, #-12]
800237c8:	e5832008 	str	r2, [r3, #8]
800237cc:	e51b3008 	ldr	r3, [fp, #-8]
800237d0:	e1d321f0 	ldrsh	r2, [r3, #16]
800237d4:	e51b300c 	ldr	r3, [fp, #-12]
800237d8:	e1c320b0 	strh	r2, [r3]
800237dc:	e51b3008 	ldr	r3, [fp, #-8]
800237e0:	e1d321f6 	ldrsh	r2, [r3, #22]
800237e4:	e51b300c 	ldr	r3, [fp, #-12]
800237e8:	e1c320bc 	strh	r2, [r3, #12]
800237ec:	e51b3008 	ldr	r3, [fp, #-8]
800237f0:	e5932018 	ldr	r2, [r3, #24]
800237f4:	e51b300c 	ldr	r3, [fp, #-12]
800237f8:	e5832010 	str	r2, [r3, #16]
800237fc:	e1a00000 	nop			@ (mov r0, r0)
80023800:	e28bd000 	add	sp, fp, #0
80023804:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80023808:	e12fff1e 	bx	lr

8002380c <readi>:
8002380c:	e92d4810 	push	{r4, fp, lr}
80023810:	e28db008 	add	fp, sp, #8
80023814:	e24dd024 	sub	sp, sp, #36	@ 0x24
80023818:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
8002381c:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023820:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023824:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80023828:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002382c:	e1d331f0 	ldrsh	r3, [r3, #16]
80023830:	e3530003 	cmp	r3, #3
80023834:	1a00001b 	bne	800238a8 <readi+0x9c>
80023838:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002383c:	e1d331f2 	ldrsh	r3, [r3, #18]
80023840:	e3530000 	cmp	r3, #0
80023844:	ba00000a 	blt	80023874 <readi+0x68>
80023848:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002384c:	e1d331f2 	ldrsh	r3, [r3, #18]
80023850:	e3530009 	cmp	r3, #9
80023854:	ca000006 	bgt	80023874 <readi+0x68>
80023858:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002385c:	e1d331f2 	ldrsh	r3, [r3, #18]
80023860:	e1a02003 	mov	r2, r3
80023864:	e59f3188 	ldr	r3, [pc, #392]	@ 800239f4 <readi+0x1e8>
80023868:	e7933182 	ldr	r3, [r3, r2, lsl #3]
8002386c:	e3530000 	cmp	r3, #0
80023870:	1a000001 	bne	8002387c <readi+0x70>
80023874:	e3e03000 	mvn	r3, #0
80023878:	ea00005a 	b	800239e8 <readi+0x1dc>
8002387c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023880:	e1d331f2 	ldrsh	r3, [r3, #18]
80023884:	e1a02003 	mov	r2, r3
80023888:	e59f3164 	ldr	r3, [pc, #356]	@ 800239f4 <readi+0x1e8>
8002388c:	e7933182 	ldr	r3, [r3, r2, lsl #3]
80023890:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
80023894:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023898:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
8002389c:	e12fff33 	blx	r3
800238a0:	e1a03000 	mov	r3, r0
800238a4:	ea00004f 	b	800239e8 <readi+0x1dc>
800238a8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800238ac:	e5933018 	ldr	r3, [r3, #24]
800238b0:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
800238b4:	e1520003 	cmp	r2, r3
800238b8:	8a000005 	bhi	800238d4 <readi+0xc8>
800238bc:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
800238c0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800238c4:	e0823003 	add	r3, r2, r3
800238c8:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
800238cc:	e1520003 	cmp	r2, r3
800238d0:	9a000001 	bls	800238dc <readi+0xd0>
800238d4:	e3e03000 	mvn	r3, #0
800238d8:	ea000042 	b	800239e8 <readi+0x1dc>
800238dc:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
800238e0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800238e4:	e0822003 	add	r2, r2, r3
800238e8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800238ec:	e5933018 	ldr	r3, [r3, #24]
800238f0:	e1520003 	cmp	r2, r3
800238f4:	9a000004 	bls	8002390c <readi+0x100>
800238f8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800238fc:	e5932018 	ldr	r2, [r3, #24]
80023900:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023904:	e0423003 	sub	r3, r2, r3
80023908:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
8002390c:	e3a03000 	mov	r3, #0
80023910:	e50b3010 	str	r3, [fp, #-16]
80023914:	ea00002e 	b	800239d4 <readi+0x1c8>
80023918:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002391c:	e5934000 	ldr	r4, [r3]
80023920:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023924:	e1a034a3 	lsr	r3, r3, #9
80023928:	e1a01003 	mov	r1, r3
8002392c:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023930:	ebfffed5 	bl	8002348c <bmap>
80023934:	e1a03000 	mov	r3, r0
80023938:	e1a01003 	mov	r1, r3
8002393c:	e1a00004 	mov	r0, r4
80023940:	ebfff473 	bl	80020b14 <bread>
80023944:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80023948:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002394c:	e1a03b83 	lsl	r3, r3, #23
80023950:	e1a03ba3 	lsr	r3, r3, #23
80023954:	e2632c02 	rsb	r2, r3, #512	@ 0x200
80023958:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
8002395c:	e51b3010 	ldr	r3, [fp, #-16]
80023960:	e0413003 	sub	r3, r1, r3
80023964:	e1520003 	cmp	r2, r3
80023968:	31a03002 	movcc	r3, r2
8002396c:	21a03003 	movcs	r3, r3
80023970:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80023974:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80023978:	e2832018 	add	r2, r3, #24
8002397c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023980:	e1a03b83 	lsl	r3, r3, #23
80023984:	e1a03ba3 	lsr	r3, r3, #23
80023988:	e0823003 	add	r3, r2, r3
8002398c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023990:	e1a01003 	mov	r1, r3
80023994:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80023998:	ebfff20a 	bl	800201c8 <memmove>
8002399c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800239a0:	ebfff485 	bl	80020bbc <brelse>
800239a4:	e51b2010 	ldr	r2, [fp, #-16]
800239a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800239ac:	e0823003 	add	r3, r2, r3
800239b0:	e50b3010 	str	r3, [fp, #-16]
800239b4:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
800239b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800239bc:	e0823003 	add	r3, r2, r3
800239c0:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
800239c4:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
800239c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800239cc:	e0823003 	add	r3, r2, r3
800239d0:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
800239d4:	e51b2010 	ldr	r2, [fp, #-16]
800239d8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800239dc:	e1520003 	cmp	r2, r3
800239e0:	3affffcc 	bcc	80023918 <readi+0x10c>
800239e4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800239e8:	e1a00003 	mov	r0, r3
800239ec:	e24bd008 	sub	sp, fp, #8
800239f0:	e8bd8810 	pop	{r4, fp, pc}
800239f4:	800acb1c 	.word	0x800acb1c

800239f8 <writei>:
800239f8:	e92d4810 	push	{r4, fp, lr}
800239fc:	e28db008 	add	fp, sp, #8
80023a00:	e24dd024 	sub	sp, sp, #36	@ 0x24
80023a04:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80023a08:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023a0c:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023a10:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80023a14:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023a18:	e1d331f0 	ldrsh	r3, [r3, #16]
80023a1c:	e3530003 	cmp	r3, #3
80023a20:	1a00001d 	bne	80023a9c <writei+0xa4>
80023a24:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023a28:	e1d331f2 	ldrsh	r3, [r3, #18]
80023a2c:	e3530000 	cmp	r3, #0
80023a30:	ba00000b 	blt	80023a64 <writei+0x6c>
80023a34:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023a38:	e1d331f2 	ldrsh	r3, [r3, #18]
80023a3c:	e3530009 	cmp	r3, #9
80023a40:	ca000007 	bgt	80023a64 <writei+0x6c>
80023a44:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023a48:	e1d331f2 	ldrsh	r3, [r3, #18]
80023a4c:	e59f21bc 	ldr	r2, [pc, #444]	@ 80023c10 <writei+0x218>
80023a50:	e1a03183 	lsl	r3, r3, #3
80023a54:	e0823003 	add	r3, r2, r3
80023a58:	e5933004 	ldr	r3, [r3, #4]
80023a5c:	e3530000 	cmp	r3, #0
80023a60:	1a000001 	bne	80023a6c <writei+0x74>
80023a64:	e3e03000 	mvn	r3, #0
80023a68:	ea000065 	b	80023c04 <writei+0x20c>
80023a6c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023a70:	e1d331f2 	ldrsh	r3, [r3, #18]
80023a74:	e59f2194 	ldr	r2, [pc, #404]	@ 80023c10 <writei+0x218>
80023a78:	e1a03183 	lsl	r3, r3, #3
80023a7c:	e0823003 	add	r3, r2, r3
80023a80:	e5933004 	ldr	r3, [r3, #4]
80023a84:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
80023a88:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023a8c:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023a90:	e12fff33 	blx	r3
80023a94:	e1a03000 	mov	r3, r0
80023a98:	ea000059 	b	80023c04 <writei+0x20c>
80023a9c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023aa0:	e5933018 	ldr	r3, [r3, #24]
80023aa4:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023aa8:	e1520003 	cmp	r2, r3
80023aac:	8a000005 	bhi	80023ac8 <writei+0xd0>
80023ab0:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023ab4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023ab8:	e0823003 	add	r3, r2, r3
80023abc:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023ac0:	e1520003 	cmp	r2, r3
80023ac4:	9a000001 	bls	80023ad0 <writei+0xd8>
80023ac8:	e3e03000 	mvn	r3, #0
80023acc:	ea00004c 	b	80023c04 <writei+0x20c>
80023ad0:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023ad4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023ad8:	e0823003 	add	r3, r2, r3
80023adc:	e3530b46 	cmp	r3, #71680	@ 0x11800
80023ae0:	9a000001 	bls	80023aec <writei+0xf4>
80023ae4:	e3e03000 	mvn	r3, #0
80023ae8:	ea000045 	b	80023c04 <writei+0x20c>
80023aec:	e3a03000 	mov	r3, #0
80023af0:	e50b3010 	str	r3, [fp, #-16]
80023af4:	ea000030 	b	80023bbc <writei+0x1c4>
80023af8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023afc:	e5934000 	ldr	r4, [r3]
80023b00:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023b04:	e1a034a3 	lsr	r3, r3, #9
80023b08:	e1a01003 	mov	r1, r3
80023b0c:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023b10:	ebfffe5d 	bl	8002348c <bmap>
80023b14:	e1a03000 	mov	r3, r0
80023b18:	e1a01003 	mov	r1, r3
80023b1c:	e1a00004 	mov	r0, r4
80023b20:	ebfff3fb 	bl	80020b14 <bread>
80023b24:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80023b28:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023b2c:	e1a03b83 	lsl	r3, r3, #23
80023b30:	e1a03ba3 	lsr	r3, r3, #23
80023b34:	e2632c02 	rsb	r2, r3, #512	@ 0x200
80023b38:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
80023b3c:	e51b3010 	ldr	r3, [fp, #-16]
80023b40:	e0413003 	sub	r3, r1, r3
80023b44:	e1520003 	cmp	r2, r3
80023b48:	31a03002 	movcc	r3, r2
80023b4c:	21a03003 	movcs	r3, r3
80023b50:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80023b54:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80023b58:	e2832018 	add	r2, r3, #24
80023b5c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023b60:	e1a03b83 	lsl	r3, r3, #23
80023b64:	e1a03ba3 	lsr	r3, r3, #23
80023b68:	e0823003 	add	r3, r2, r3
80023b6c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023b70:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023b74:	e1a00003 	mov	r0, r3
80023b78:	ebfff192 	bl	800201c8 <memmove>
80023b7c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023b80:	eb00024d 	bl	800244bc <log_write>
80023b84:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023b88:	ebfff40b 	bl	80020bbc <brelse>
80023b8c:	e51b2010 	ldr	r2, [fp, #-16]
80023b90:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023b94:	e0823003 	add	r3, r2, r3
80023b98:	e50b3010 	str	r3, [fp, #-16]
80023b9c:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023ba0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023ba4:	e0823003 	add	r3, r2, r3
80023ba8:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80023bac:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80023bb0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023bb4:	e0823003 	add	r3, r2, r3
80023bb8:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80023bbc:	e51b2010 	ldr	r2, [fp, #-16]
80023bc0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023bc4:	e1520003 	cmp	r2, r3
80023bc8:	3affffca 	bcc	80023af8 <writei+0x100>
80023bcc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023bd0:	e3530000 	cmp	r3, #0
80023bd4:	0a000009 	beq	80023c00 <writei+0x208>
80023bd8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023bdc:	e5933018 	ldr	r3, [r3, #24]
80023be0:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023be4:	e1520003 	cmp	r2, r3
80023be8:	9a000004 	bls	80023c00 <writei+0x208>
80023bec:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023bf0:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023bf4:	e5832018 	str	r2, [r3, #24]
80023bf8:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023bfc:	ebfffcbc 	bl	80022ef4 <iupdate>
80023c00:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023c04:	e1a00003 	mov	r0, r3
80023c08:	e24bd008 	sub	sp, fp, #8
80023c0c:	e8bd8810 	pop	{r4, fp, pc}
80023c10:	800acb1c 	.word	0x800acb1c

80023c14 <namecmp>:
80023c14:	e92d4800 	push	{fp, lr}
80023c18:	e28db004 	add	fp, sp, #4
80023c1c:	e24dd008 	sub	sp, sp, #8
80023c20:	e50b0008 	str	r0, [fp, #-8]
80023c24:	e50b100c 	str	r1, [fp, #-12]
80023c28:	e3a0200e 	mov	r2, #14
80023c2c:	e51b100c 	ldr	r1, [fp, #-12]
80023c30:	e51b0008 	ldr	r0, [fp, #-8]
80023c34:	ebfff1b0 	bl	800202fc <strncmp>
80023c38:	e1a03000 	mov	r3, r0
80023c3c:	e1a00003 	mov	r0, r3
80023c40:	e24bd004 	sub	sp, fp, #4
80023c44:	e8bd8800 	pop	{fp, pc}

80023c48 <dirlookup>:
80023c48:	e92d4800 	push	{fp, lr}
80023c4c:	e28db004 	add	fp, sp, #4
80023c50:	e24dd028 	sub	sp, sp, #40	@ 0x28
80023c54:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80023c58:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023c5c:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023c60:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023c64:	e1d331f0 	ldrsh	r3, [r3, #16]
80023c68:	e3530001 	cmp	r3, #1
80023c6c:	0a000001 	beq	80023c78 <dirlookup+0x30>
80023c70:	e59f00d0 	ldr	r0, [pc, #208]	@ 80023d48 <dirlookup+0x100>
80023c74:	ebfff79e 	bl	80021af4 <panic>
80023c78:	e3a03000 	mov	r3, #0
80023c7c:	e50b3008 	str	r3, [fp, #-8]
80023c80:	ea000027 	b	80023d24 <dirlookup+0xdc>
80023c84:	e24b101c 	sub	r1, fp, #28
80023c88:	e3a03010 	mov	r3, #16
80023c8c:	e51b2008 	ldr	r2, [fp, #-8]
80023c90:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023c94:	ebfffedc 	bl	8002380c <readi>
80023c98:	e1a03000 	mov	r3, r0
80023c9c:	e3530010 	cmp	r3, #16
80023ca0:	0a000001 	beq	80023cac <dirlookup+0x64>
80023ca4:	e59f00a0 	ldr	r0, [pc, #160]	@ 80023d4c <dirlookup+0x104>
80023ca8:	ebfff791 	bl	80021af4 <panic>
80023cac:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
80023cb0:	e3530000 	cmp	r3, #0
80023cb4:	0a000016 	beq	80023d14 <dirlookup+0xcc>
80023cb8:	e24b301c 	sub	r3, fp, #28
80023cbc:	e2833002 	add	r3, r3, #2
80023cc0:	e1a01003 	mov	r1, r3
80023cc4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80023cc8:	ebffffd1 	bl	80023c14 <namecmp>
80023ccc:	e1a03000 	mov	r3, r0
80023cd0:	e3530000 	cmp	r3, #0
80023cd4:	1a00000f 	bne	80023d18 <dirlookup+0xd0>
80023cd8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023cdc:	e3530000 	cmp	r3, #0
80023ce0:	0a000002 	beq	80023cf0 <dirlookup+0xa8>
80023ce4:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023ce8:	e51b2008 	ldr	r2, [fp, #-8]
80023cec:	e5832000 	str	r2, [r3]
80023cf0:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
80023cf4:	e50b300c 	str	r3, [fp, #-12]
80023cf8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023cfc:	e5933000 	ldr	r3, [r3]
80023d00:	e51b100c 	ldr	r1, [fp, #-12]
80023d04:	e1a00003 	mov	r0, r3
80023d08:	ebfffcb1 	bl	80022fd4 <iget>
80023d0c:	e1a03000 	mov	r3, r0
80023d10:	ea000009 	b	80023d3c <dirlookup+0xf4>
80023d14:	e1a00000 	nop			@ (mov r0, r0)
80023d18:	e51b3008 	ldr	r3, [fp, #-8]
80023d1c:	e2833010 	add	r3, r3, #16
80023d20:	e50b3008 	str	r3, [fp, #-8]
80023d24:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023d28:	e5933018 	ldr	r3, [r3, #24]
80023d2c:	e51b2008 	ldr	r2, [fp, #-8]
80023d30:	e1520003 	cmp	r2, r3
80023d34:	3affffd2 	bcc	80023c84 <dirlookup+0x3c>
80023d38:	e3a03000 	mov	r3, #0
80023d3c:	e1a00003 	mov	r0, r3
80023d40:	e24bd004 	sub	sp, fp, #4
80023d44:	e8bd8800 	pop	{fp, pc}
80023d48:	80029dfc 	.word	0x80029dfc
80023d4c:	80029e10 	.word	0x80029e10

80023d50 <dirlink>:
80023d50:	e92d4800 	push	{fp, lr}
80023d54:	e28db004 	add	fp, sp, #4
80023d58:	e24dd028 	sub	sp, sp, #40	@ 0x28
80023d5c:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80023d60:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023d64:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023d68:	e3a02000 	mov	r2, #0
80023d6c:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023d70:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023d74:	ebffffb3 	bl	80023c48 <dirlookup>
80023d78:	e50b000c 	str	r0, [fp, #-12]
80023d7c:	e51b300c 	ldr	r3, [fp, #-12]
80023d80:	e3530000 	cmp	r3, #0
80023d84:	0a000003 	beq	80023d98 <dirlink+0x48>
80023d88:	e51b000c 	ldr	r0, [fp, #-12]
80023d8c:	ebfffd78 	bl	80023374 <iput>
80023d90:	e3e03000 	mvn	r3, #0
80023d94:	ea00002d 	b	80023e50 <dirlink+0x100>
80023d98:	e3a03000 	mov	r3, #0
80023d9c:	e50b3008 	str	r3, [fp, #-8]
80023da0:	ea00000f 	b	80023de4 <dirlink+0x94>
80023da4:	e51b2008 	ldr	r2, [fp, #-8]
80023da8:	e24b101c 	sub	r1, fp, #28
80023dac:	e3a03010 	mov	r3, #16
80023db0:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023db4:	ebfffe94 	bl	8002380c <readi>
80023db8:	e1a03000 	mov	r3, r0
80023dbc:	e3530010 	cmp	r3, #16
80023dc0:	0a000001 	beq	80023dcc <dirlink+0x7c>
80023dc4:	e59f0090 	ldr	r0, [pc, #144]	@ 80023e5c <dirlink+0x10c>
80023dc8:	ebfff749 	bl	80021af4 <panic>
80023dcc:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
80023dd0:	e3530000 	cmp	r3, #0
80023dd4:	0a000008 	beq	80023dfc <dirlink+0xac>
80023dd8:	e51b3008 	ldr	r3, [fp, #-8]
80023ddc:	e2833010 	add	r3, r3, #16
80023de0:	e50b3008 	str	r3, [fp, #-8]
80023de4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023de8:	e5932018 	ldr	r2, [r3, #24]
80023dec:	e51b3008 	ldr	r3, [fp, #-8]
80023df0:	e1520003 	cmp	r2, r3
80023df4:	8affffea 	bhi	80023da4 <dirlink+0x54>
80023df8:	ea000000 	b	80023e00 <dirlink+0xb0>
80023dfc:	e1a00000 	nop			@ (mov r0, r0)
80023e00:	e24b301c 	sub	r3, fp, #28
80023e04:	e2833002 	add	r3, r3, #2
80023e08:	e3a0200e 	mov	r2, #14
80023e0c:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023e10:	e1a00003 	mov	r0, r3
80023e14:	ebfff164 	bl	800203ac <strncpy>
80023e18:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023e1c:	e6ff3073 	uxth	r3, r3
80023e20:	e14b31bc 	strh	r3, [fp, #-28]	@ 0xffffffe4
80023e24:	e51b2008 	ldr	r2, [fp, #-8]
80023e28:	e24b101c 	sub	r1, fp, #28
80023e2c:	e3a03010 	mov	r3, #16
80023e30:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023e34:	ebfffeef 	bl	800239f8 <writei>
80023e38:	e1a03000 	mov	r3, r0
80023e3c:	e3530010 	cmp	r3, #16
80023e40:	0a000001 	beq	80023e4c <dirlink+0xfc>
80023e44:	e59f0014 	ldr	r0, [pc, #20]	@ 80023e60 <dirlink+0x110>
80023e48:	ebfff729 	bl	80021af4 <panic>
80023e4c:	e3a03000 	mov	r3, #0
80023e50:	e1a00003 	mov	r0, r3
80023e54:	e24bd004 	sub	sp, fp, #4
80023e58:	e8bd8800 	pop	{fp, pc}
80023e5c:	80029e10 	.word	0x80029e10
80023e60:	80029e20 	.word	0x80029e20

80023e64 <skipelem>:
80023e64:	e92d4800 	push	{fp, lr}
80023e68:	e28db004 	add	fp, sp, #4
80023e6c:	e24dd010 	sub	sp, sp, #16
80023e70:	e50b0010 	str	r0, [fp, #-16]
80023e74:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80023e78:	ea000002 	b	80023e88 <skipelem+0x24>
80023e7c:	e51b3010 	ldr	r3, [fp, #-16]
80023e80:	e2833001 	add	r3, r3, #1
80023e84:	e50b3010 	str	r3, [fp, #-16]
80023e88:	e51b3010 	ldr	r3, [fp, #-16]
80023e8c:	e5d33000 	ldrb	r3, [r3]
80023e90:	e353002f 	cmp	r3, #47	@ 0x2f
80023e94:	0afffff8 	beq	80023e7c <skipelem+0x18>
80023e98:	e51b3010 	ldr	r3, [fp, #-16]
80023e9c:	e5d33000 	ldrb	r3, [r3]
80023ea0:	e3530000 	cmp	r3, #0
80023ea4:	1a000001 	bne	80023eb0 <skipelem+0x4c>
80023ea8:	e3a03000 	mov	r3, #0
80023eac:	ea00002c 	b	80023f64 <skipelem+0x100>
80023eb0:	e51b3010 	ldr	r3, [fp, #-16]
80023eb4:	e50b3008 	str	r3, [fp, #-8]
80023eb8:	ea000002 	b	80023ec8 <skipelem+0x64>
80023ebc:	e51b3010 	ldr	r3, [fp, #-16]
80023ec0:	e2833001 	add	r3, r3, #1
80023ec4:	e50b3010 	str	r3, [fp, #-16]
80023ec8:	e51b3010 	ldr	r3, [fp, #-16]
80023ecc:	e5d33000 	ldrb	r3, [r3]
80023ed0:	e353002f 	cmp	r3, #47	@ 0x2f
80023ed4:	0a000003 	beq	80023ee8 <skipelem+0x84>
80023ed8:	e51b3010 	ldr	r3, [fp, #-16]
80023edc:	e5d33000 	ldrb	r3, [r3]
80023ee0:	e3530000 	cmp	r3, #0
80023ee4:	1afffff4 	bne	80023ebc <skipelem+0x58>
80023ee8:	e51b2010 	ldr	r2, [fp, #-16]
80023eec:	e51b3008 	ldr	r3, [fp, #-8]
80023ef0:	e0423003 	sub	r3, r2, r3
80023ef4:	e50b300c 	str	r3, [fp, #-12]
80023ef8:	e51b300c 	ldr	r3, [fp, #-12]
80023efc:	e353000d 	cmp	r3, #13
80023f00:	da000004 	ble	80023f18 <skipelem+0xb4>
80023f04:	e3a0200e 	mov	r2, #14
80023f08:	e51b1008 	ldr	r1, [fp, #-8]
80023f0c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023f10:	ebfff0ac 	bl	800201c8 <memmove>
80023f14:	ea00000d 	b	80023f50 <skipelem+0xec>
80023f18:	e51b300c 	ldr	r3, [fp, #-12]
80023f1c:	e1a02003 	mov	r2, r3
80023f20:	e51b1008 	ldr	r1, [fp, #-8]
80023f24:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023f28:	ebfff0a6 	bl	800201c8 <memmove>
80023f2c:	e51b300c 	ldr	r3, [fp, #-12]
80023f30:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80023f34:	e0823003 	add	r3, r2, r3
80023f38:	e3a02000 	mov	r2, #0
80023f3c:	e5c32000 	strb	r2, [r3]
80023f40:	ea000002 	b	80023f50 <skipelem+0xec>
80023f44:	e51b3010 	ldr	r3, [fp, #-16]
80023f48:	e2833001 	add	r3, r3, #1
80023f4c:	e50b3010 	str	r3, [fp, #-16]
80023f50:	e51b3010 	ldr	r3, [fp, #-16]
80023f54:	e5d33000 	ldrb	r3, [r3]
80023f58:	e353002f 	cmp	r3, #47	@ 0x2f
80023f5c:	0afffff8 	beq	80023f44 <skipelem+0xe0>
80023f60:	e51b3010 	ldr	r3, [fp, #-16]
80023f64:	e1a00003 	mov	r0, r3
80023f68:	e24bd004 	sub	sp, fp, #4
80023f6c:	e8bd8800 	pop	{fp, pc}

80023f70 <namex>:
80023f70:	e92d4800 	push	{fp, lr}
80023f74:	e28db004 	add	fp, sp, #4
80023f78:	e24dd018 	sub	sp, sp, #24
80023f7c:	e50b0010 	str	r0, [fp, #-16]
80023f80:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80023f84:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80023f88:	e51b3010 	ldr	r3, [fp, #-16]
80023f8c:	e5d33000 	ldrb	r3, [r3]
80023f90:	e353002f 	cmp	r3, #47	@ 0x2f
80023f94:	1a000004 	bne	80023fac <namex+0x3c>
80023f98:	e3a01001 	mov	r1, #1
80023f9c:	e3a00001 	mov	r0, #1
80023fa0:	ebfffc0b 	bl	80022fd4 <iget>
80023fa4:	e50b0008 	str	r0, [fp, #-8]
80023fa8:	ea00002b 	b	8002405c <namex+0xec>
80023fac:	e59f30f0 	ldr	r3, [pc, #240]	@ 800240a4 <namex+0x134>
80023fb0:	e5933000 	ldr	r3, [r3]
80023fb4:	e593306c 	ldr	r3, [r3, #108]	@ 0x6c
80023fb8:	e1a00003 	mov	r0, r3
80023fbc:	ebfffc54 	bl	80023114 <idup>
80023fc0:	e50b0008 	str	r0, [fp, #-8]
80023fc4:	ea000024 	b	8002405c <namex+0xec>
80023fc8:	e51b0008 	ldr	r0, [fp, #-8]
80023fcc:	ebfffc62 	bl	8002315c <ilock>
80023fd0:	e51b3008 	ldr	r3, [fp, #-8]
80023fd4:	e1d331f0 	ldrsh	r3, [r3, #16]
80023fd8:	e3530001 	cmp	r3, #1
80023fdc:	0a000003 	beq	80023ff0 <namex+0x80>
80023fe0:	e51b0008 	ldr	r0, [fp, #-8]
80023fe4:	ebfffd1d 	bl	80023460 <iunlockput>
80023fe8:	e3a03000 	mov	r3, #0
80023fec:	ea000029 	b	80024098 <namex+0x128>
80023ff0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80023ff4:	e3530000 	cmp	r3, #0
80023ff8:	0a000007 	beq	8002401c <namex+0xac>
80023ffc:	e51b3010 	ldr	r3, [fp, #-16]
80024000:	e5d33000 	ldrb	r3, [r3]
80024004:	e3530000 	cmp	r3, #0
80024008:	1a000003 	bne	8002401c <namex+0xac>
8002400c:	e51b0008 	ldr	r0, [fp, #-8]
80024010:	ebfffcb5 	bl	800232ec <iunlock>
80024014:	e51b3008 	ldr	r3, [fp, #-8]
80024018:	ea00001e 	b	80024098 <namex+0x128>
8002401c:	e3a02000 	mov	r2, #0
80024020:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
80024024:	e51b0008 	ldr	r0, [fp, #-8]
80024028:	ebffff06 	bl	80023c48 <dirlookup>
8002402c:	e50b000c 	str	r0, [fp, #-12]
80024030:	e51b300c 	ldr	r3, [fp, #-12]
80024034:	e3530000 	cmp	r3, #0
80024038:	1a000003 	bne	8002404c <namex+0xdc>
8002403c:	e51b0008 	ldr	r0, [fp, #-8]
80024040:	ebfffd06 	bl	80023460 <iunlockput>
80024044:	e3a03000 	mov	r3, #0
80024048:	ea000012 	b	80024098 <namex+0x128>
8002404c:	e51b0008 	ldr	r0, [fp, #-8]
80024050:	ebfffd02 	bl	80023460 <iunlockput>
80024054:	e51b300c 	ldr	r3, [fp, #-12]
80024058:	e50b3008 	str	r3, [fp, #-8]
8002405c:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
80024060:	e51b0010 	ldr	r0, [fp, #-16]
80024064:	ebffff7e 	bl	80023e64 <skipelem>
80024068:	e50b0010 	str	r0, [fp, #-16]
8002406c:	e51b3010 	ldr	r3, [fp, #-16]
80024070:	e3530000 	cmp	r3, #0
80024074:	1affffd3 	bne	80023fc8 <namex+0x58>
80024078:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002407c:	e3530000 	cmp	r3, #0
80024080:	0a000003 	beq	80024094 <namex+0x124>
80024084:	e51b0008 	ldr	r0, [fp, #-8]
80024088:	ebfffcb9 	bl	80023374 <iput>
8002408c:	e3a03000 	mov	r3, #0
80024090:	ea000000 	b	80024098 <namex+0x128>
80024094:	e51b3008 	ldr	r3, [fp, #-8]
80024098:	e1a00003 	mov	r0, r3
8002409c:	e24bd004 	sub	sp, fp, #4
800240a0:	e8bd8800 	pop	{fp, pc}
800240a4:	800b0b6c 	.word	0x800b0b6c

800240a8 <namei>:
800240a8:	e92d4800 	push	{fp, lr}
800240ac:	e28db004 	add	fp, sp, #4
800240b0:	e24dd018 	sub	sp, sp, #24
800240b4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800240b8:	e24b3014 	sub	r3, fp, #20
800240bc:	e1a02003 	mov	r2, r3
800240c0:	e3a01000 	mov	r1, #0
800240c4:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
800240c8:	ebffffa8 	bl	80023f70 <namex>
800240cc:	e1a03000 	mov	r3, r0
800240d0:	e1a00003 	mov	r0, r3
800240d4:	e24bd004 	sub	sp, fp, #4
800240d8:	e8bd8800 	pop	{fp, pc}

800240dc <nameiparent>:
800240dc:	e92d4800 	push	{fp, lr}
800240e0:	e28db004 	add	fp, sp, #4
800240e4:	e24dd008 	sub	sp, sp, #8
800240e8:	e50b0008 	str	r0, [fp, #-8]
800240ec:	e50b100c 	str	r1, [fp, #-12]
800240f0:	e51b200c 	ldr	r2, [fp, #-12]
800240f4:	e3a01001 	mov	r1, #1
800240f8:	e51b0008 	ldr	r0, [fp, #-8]
800240fc:	ebffff9b 	bl	80023f70 <namex>
80024100:	e1a03000 	mov	r3, r0
80024104:	e1a00003 	mov	r0, r3
80024108:	e24bd004 	sub	sp, fp, #4
8002410c:	e8bd8800 	pop	{fp, pc}

80024110 <initlog>:
80024110:	e92d4800 	push	{fp, lr}
80024114:	e28db004 	add	fp, sp, #4
80024118:	e24dd010 	sub	sp, sp, #16
8002411c:	e59f1058 	ldr	r1, [pc, #88]	@ 8002417c <initlog+0x6c>
80024120:	e59f0058 	ldr	r0, [pc, #88]	@ 80024180 <initlog+0x70>
80024124:	eb00092f 	bl	800265e8 <initlock>
80024128:	e24b3014 	sub	r3, fp, #20
8002412c:	e1a01003 	mov	r1, r3
80024130:	e3a00001 	mov	r0, #1
80024134:	ebfffa3c 	bl	80022a2c <readsb>
80024138:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
8002413c:	e51b3008 	ldr	r3, [fp, #-8]
80024140:	e0423003 	sub	r3, r2, r3
80024144:	e1a02003 	mov	r2, r3
80024148:	e59f3030 	ldr	r3, [pc, #48]	@ 80024180 <initlog+0x70>
8002414c:	e5832034 	str	r2, [r3, #52]	@ 0x34
80024150:	e51b3008 	ldr	r3, [fp, #-8]
80024154:	e1a02003 	mov	r2, r3
80024158:	e59f3020 	ldr	r3, [pc, #32]	@ 80024180 <initlog+0x70>
8002415c:	e5832038 	str	r2, [r3, #56]	@ 0x38
80024160:	e59f3018 	ldr	r3, [pc, #24]	@ 80024180 <initlog+0x70>
80024164:	e3a02001 	mov	r2, #1
80024168:	e5832040 	str	r2, [r3, #64]	@ 0x40
8002416c:	eb00009b 	bl	800243e0 <recover_from_log>
80024170:	e1a00000 	nop			@ (mov r0, r0)
80024174:	e24bd004 	sub	sp, fp, #4
80024178:	e8bd8800 	pop	{fp, pc}
8002417c:	80029e28 	.word	0x80029e28
80024180:	800ae4d4 	.word	0x800ae4d4

80024184 <install_trans>:
80024184:	e92d4800 	push	{fp, lr}
80024188:	e28db004 	add	fp, sp, #4
8002418c:	e24dd010 	sub	sp, sp, #16
80024190:	e3a03000 	mov	r3, #0
80024194:	e50b3008 	str	r3, [fp, #-8]
80024198:	ea000026 	b	80024238 <install_trans+0xb4>
8002419c:	e59f30b8 	ldr	r3, [pc, #184]	@ 8002425c <install_trans+0xd8>
800241a0:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
800241a4:	e1a00003 	mov	r0, r3
800241a8:	e59f30ac 	ldr	r3, [pc, #172]	@ 8002425c <install_trans+0xd8>
800241ac:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
800241b0:	e51b3008 	ldr	r3, [fp, #-8]
800241b4:	e0823003 	add	r3, r2, r3
800241b8:	e2833001 	add	r3, r3, #1
800241bc:	e1a01003 	mov	r1, r3
800241c0:	ebfff253 	bl	80020b14 <bread>
800241c4:	e50b000c 	str	r0, [fp, #-12]
800241c8:	e59f308c 	ldr	r3, [pc, #140]	@ 8002425c <install_trans+0xd8>
800241cc:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
800241d0:	e1a00003 	mov	r0, r3
800241d4:	e59f2080 	ldr	r2, [pc, #128]	@ 8002425c <install_trans+0xd8>
800241d8:	e51b3008 	ldr	r3, [fp, #-8]
800241dc:	e2833010 	add	r3, r3, #16
800241e0:	e1a03103 	lsl	r3, r3, #2
800241e4:	e0823003 	add	r3, r2, r3
800241e8:	e5933008 	ldr	r3, [r3, #8]
800241ec:	e1a01003 	mov	r1, r3
800241f0:	ebfff247 	bl	80020b14 <bread>
800241f4:	e50b0010 	str	r0, [fp, #-16]
800241f8:	e51b3010 	ldr	r3, [fp, #-16]
800241fc:	e2830018 	add	r0, r3, #24
80024200:	e51b300c 	ldr	r3, [fp, #-12]
80024204:	e2833018 	add	r3, r3, #24
80024208:	e3a02c02 	mov	r2, #512	@ 0x200
8002420c:	e1a01003 	mov	r1, r3
80024210:	ebffefec 	bl	800201c8 <memmove>
80024214:	e51b0010 	ldr	r0, [fp, #-16]
80024218:	ebfff251 	bl	80020b64 <bwrite>
8002421c:	e51b000c 	ldr	r0, [fp, #-12]
80024220:	ebfff265 	bl	80020bbc <brelse>
80024224:	e51b0010 	ldr	r0, [fp, #-16]
80024228:	ebfff263 	bl	80020bbc <brelse>
8002422c:	e51b3008 	ldr	r3, [fp, #-8]
80024230:	e2833001 	add	r3, r3, #1
80024234:	e50b3008 	str	r3, [fp, #-8]
80024238:	e59f301c 	ldr	r3, [pc, #28]	@ 8002425c <install_trans+0xd8>
8002423c:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024240:	e51b2008 	ldr	r2, [fp, #-8]
80024244:	e1520003 	cmp	r2, r3
80024248:	baffffd3 	blt	8002419c <install_trans+0x18>
8002424c:	e1a00000 	nop			@ (mov r0, r0)
80024250:	e1a00000 	nop			@ (mov r0, r0)
80024254:	e24bd004 	sub	sp, fp, #4
80024258:	e8bd8800 	pop	{fp, pc}
8002425c:	800ae4d4 	.word	0x800ae4d4

80024260 <read_head>:
80024260:	e92d4800 	push	{fp, lr}
80024264:	e28db004 	add	fp, sp, #4
80024268:	e24dd010 	sub	sp, sp, #16
8002426c:	e59f30a4 	ldr	r3, [pc, #164]	@ 80024318 <read_head+0xb8>
80024270:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
80024274:	e1a02003 	mov	r2, r3
80024278:	e59f3098 	ldr	r3, [pc, #152]	@ 80024318 <read_head+0xb8>
8002427c:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80024280:	e1a01003 	mov	r1, r3
80024284:	e1a00002 	mov	r0, r2
80024288:	ebfff221 	bl	80020b14 <bread>
8002428c:	e50b000c 	str	r0, [fp, #-12]
80024290:	e51b300c 	ldr	r3, [fp, #-12]
80024294:	e2833018 	add	r3, r3, #24
80024298:	e50b3010 	str	r3, [fp, #-16]
8002429c:	e51b3010 	ldr	r3, [fp, #-16]
800242a0:	e5933000 	ldr	r3, [r3]
800242a4:	e59f206c 	ldr	r2, [pc, #108]	@ 80024318 <read_head+0xb8>
800242a8:	e5823044 	str	r3, [r2, #68]	@ 0x44
800242ac:	e3a03000 	mov	r3, #0
800242b0:	e50b3008 	str	r3, [fp, #-8]
800242b4:	ea00000d 	b	800242f0 <read_head+0x90>
800242b8:	e51b2010 	ldr	r2, [fp, #-16]
800242bc:	e51b3008 	ldr	r3, [fp, #-8]
800242c0:	e1a03103 	lsl	r3, r3, #2
800242c4:	e0823003 	add	r3, r2, r3
800242c8:	e5932004 	ldr	r2, [r3, #4]
800242cc:	e59f1044 	ldr	r1, [pc, #68]	@ 80024318 <read_head+0xb8>
800242d0:	e51b3008 	ldr	r3, [fp, #-8]
800242d4:	e2833010 	add	r3, r3, #16
800242d8:	e1a03103 	lsl	r3, r3, #2
800242dc:	e0813003 	add	r3, r1, r3
800242e0:	e5832008 	str	r2, [r3, #8]
800242e4:	e51b3008 	ldr	r3, [fp, #-8]
800242e8:	e2833001 	add	r3, r3, #1
800242ec:	e50b3008 	str	r3, [fp, #-8]
800242f0:	e59f3020 	ldr	r3, [pc, #32]	@ 80024318 <read_head+0xb8>
800242f4:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800242f8:	e51b2008 	ldr	r2, [fp, #-8]
800242fc:	e1520003 	cmp	r2, r3
80024300:	baffffec 	blt	800242b8 <read_head+0x58>
80024304:	e51b000c 	ldr	r0, [fp, #-12]
80024308:	ebfff22b 	bl	80020bbc <brelse>
8002430c:	e1a00000 	nop			@ (mov r0, r0)
80024310:	e24bd004 	sub	sp, fp, #4
80024314:	e8bd8800 	pop	{fp, pc}
80024318:	800ae4d4 	.word	0x800ae4d4

8002431c <write_head>:
8002431c:	e92d4800 	push	{fp, lr}
80024320:	e28db004 	add	fp, sp, #4
80024324:	e24dd010 	sub	sp, sp, #16
80024328:	e59f30ac 	ldr	r3, [pc, #172]	@ 800243dc <write_head+0xc0>
8002432c:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
80024330:	e1a02003 	mov	r2, r3
80024334:	e59f30a0 	ldr	r3, [pc, #160]	@ 800243dc <write_head+0xc0>
80024338:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
8002433c:	e1a01003 	mov	r1, r3
80024340:	e1a00002 	mov	r0, r2
80024344:	ebfff1f2 	bl	80020b14 <bread>
80024348:	e50b000c 	str	r0, [fp, #-12]
8002434c:	e51b300c 	ldr	r3, [fp, #-12]
80024350:	e2833018 	add	r3, r3, #24
80024354:	e50b3010 	str	r3, [fp, #-16]
80024358:	e59f307c 	ldr	r3, [pc, #124]	@ 800243dc <write_head+0xc0>
8002435c:	e5932044 	ldr	r2, [r3, #68]	@ 0x44
80024360:	e51b3010 	ldr	r3, [fp, #-16]
80024364:	e5832000 	str	r2, [r3]
80024368:	e3a03000 	mov	r3, #0
8002436c:	e50b3008 	str	r3, [fp, #-8]
80024370:	ea00000d 	b	800243ac <write_head+0x90>
80024374:	e59f2060 	ldr	r2, [pc, #96]	@ 800243dc <write_head+0xc0>
80024378:	e51b3008 	ldr	r3, [fp, #-8]
8002437c:	e2833010 	add	r3, r3, #16
80024380:	e1a03103 	lsl	r3, r3, #2
80024384:	e0823003 	add	r3, r2, r3
80024388:	e5932008 	ldr	r2, [r3, #8]
8002438c:	e51b1010 	ldr	r1, [fp, #-16]
80024390:	e51b3008 	ldr	r3, [fp, #-8]
80024394:	e1a03103 	lsl	r3, r3, #2
80024398:	e0813003 	add	r3, r1, r3
8002439c:	e5832004 	str	r2, [r3, #4]
800243a0:	e51b3008 	ldr	r3, [fp, #-8]
800243a4:	e2833001 	add	r3, r3, #1
800243a8:	e50b3008 	str	r3, [fp, #-8]
800243ac:	e59f3028 	ldr	r3, [pc, #40]	@ 800243dc <write_head+0xc0>
800243b0:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800243b4:	e51b2008 	ldr	r2, [fp, #-8]
800243b8:	e1520003 	cmp	r2, r3
800243bc:	baffffec 	blt	80024374 <write_head+0x58>
800243c0:	e51b000c 	ldr	r0, [fp, #-12]
800243c4:	ebfff1e6 	bl	80020b64 <bwrite>
800243c8:	e51b000c 	ldr	r0, [fp, #-12]
800243cc:	ebfff1fa 	bl	80020bbc <brelse>
800243d0:	e1a00000 	nop			@ (mov r0, r0)
800243d4:	e24bd004 	sub	sp, fp, #4
800243d8:	e8bd8800 	pop	{fp, pc}
800243dc:	800ae4d4 	.word	0x800ae4d4

800243e0 <recover_from_log>:
800243e0:	e92d4800 	push	{fp, lr}
800243e4:	e28db004 	add	fp, sp, #4
800243e8:	ebffff9c 	bl	80024260 <read_head>
800243ec:	ebffff64 	bl	80024184 <install_trans>
800243f0:	e59f3010 	ldr	r3, [pc, #16]	@ 80024408 <recover_from_log+0x28>
800243f4:	e3a02000 	mov	r2, #0
800243f8:	e5832044 	str	r2, [r3, #68]	@ 0x44
800243fc:	ebffffc6 	bl	8002431c <write_head>
80024400:	e1a00000 	nop			@ (mov r0, r0)
80024404:	e8bd8800 	pop	{fp, pc}
80024408:	800ae4d4 	.word	0x800ae4d4

8002440c <begin_trans>:
8002440c:	e92d4800 	push	{fp, lr}
80024410:	e28db004 	add	fp, sp, #4
80024414:	e59f003c 	ldr	r0, [pc, #60]	@ 80024458 <begin_trans+0x4c>
80024418:	eb000884 	bl	80026630 <acquire>
8002441c:	ea000002 	b	8002442c <begin_trans+0x20>
80024420:	e59f1030 	ldr	r1, [pc, #48]	@ 80024458 <begin_trans+0x4c>
80024424:	e59f002c 	ldr	r0, [pc, #44]	@ 80024458 <begin_trans+0x4c>
80024428:	eb0006ba 	bl	80025f18 <sleep>
8002442c:	e59f3024 	ldr	r3, [pc, #36]	@ 80024458 <begin_trans+0x4c>
80024430:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
80024434:	e3530000 	cmp	r3, #0
80024438:	1afffff8 	bne	80024420 <begin_trans+0x14>
8002443c:	e59f3014 	ldr	r3, [pc, #20]	@ 80024458 <begin_trans+0x4c>
80024440:	e3a02001 	mov	r2, #1
80024444:	e583203c 	str	r2, [r3, #60]	@ 0x3c
80024448:	e59f0008 	ldr	r0, [pc, #8]	@ 80024458 <begin_trans+0x4c>
8002444c:	eb000882 	bl	8002665c <release>
80024450:	e1a00000 	nop			@ (mov r0, r0)
80024454:	e8bd8800 	pop	{fp, pc}
80024458:	800ae4d4 	.word	0x800ae4d4

8002445c <commit_trans>:
8002445c:	e92d4800 	push	{fp, lr}
80024460:	e28db004 	add	fp, sp, #4
80024464:	e59f304c 	ldr	r3, [pc, #76]	@ 800244b8 <commit_trans+0x5c>
80024468:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
8002446c:	e3530000 	cmp	r3, #0
80024470:	da000005 	ble	8002448c <commit_trans+0x30>
80024474:	ebffffa8 	bl	8002431c <write_head>
80024478:	ebffff41 	bl	80024184 <install_trans>
8002447c:	e59f3034 	ldr	r3, [pc, #52]	@ 800244b8 <commit_trans+0x5c>
80024480:	e3a02000 	mov	r2, #0
80024484:	e5832044 	str	r2, [r3, #68]	@ 0x44
80024488:	ebffffa3 	bl	8002431c <write_head>
8002448c:	e59f0024 	ldr	r0, [pc, #36]	@ 800244b8 <commit_trans+0x5c>
80024490:	eb000866 	bl	80026630 <acquire>
80024494:	e59f301c 	ldr	r3, [pc, #28]	@ 800244b8 <commit_trans+0x5c>
80024498:	e3a02000 	mov	r2, #0
8002449c:	e583203c 	str	r2, [r3, #60]	@ 0x3c
800244a0:	e59f0010 	ldr	r0, [pc, #16]	@ 800244b8 <commit_trans+0x5c>
800244a4:	eb00071f 	bl	80026128 <wakeup>
800244a8:	e59f0008 	ldr	r0, [pc, #8]	@ 800244b8 <commit_trans+0x5c>
800244ac:	eb00086a 	bl	8002665c <release>
800244b0:	e1a00000 	nop			@ (mov r0, r0)
800244b4:	e8bd8800 	pop	{fp, pc}
800244b8:	800ae4d4 	.word	0x800ae4d4

800244bc <log_write>:
800244bc:	e92d4800 	push	{fp, lr}
800244c0:	e28db004 	add	fp, sp, #4
800244c4:	e24dd010 	sub	sp, sp, #16
800244c8:	e50b0010 	str	r0, [fp, #-16]
800244cc:	e59f3164 	ldr	r3, [pc, #356]	@ 80024638 <log_write+0x17c>
800244d0:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800244d4:	e3530009 	cmp	r3, #9
800244d8:	ca000006 	bgt	800244f8 <log_write+0x3c>
800244dc:	e59f3154 	ldr	r3, [pc, #340]	@ 80024638 <log_write+0x17c>
800244e0:	e5932044 	ldr	r2, [r3, #68]	@ 0x44
800244e4:	e59f314c 	ldr	r3, [pc, #332]	@ 80024638 <log_write+0x17c>
800244e8:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
800244ec:	e2433001 	sub	r3, r3, #1
800244f0:	e1520003 	cmp	r2, r3
800244f4:	ba000001 	blt	80024500 <log_write+0x44>
800244f8:	e59f013c 	ldr	r0, [pc, #316]	@ 8002463c <log_write+0x180>
800244fc:	ebfff57c 	bl	80021af4 <panic>
80024500:	e59f3130 	ldr	r3, [pc, #304]	@ 80024638 <log_write+0x17c>
80024504:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
80024508:	e3530000 	cmp	r3, #0
8002450c:	1a000001 	bne	80024518 <log_write+0x5c>
80024510:	e59f0128 	ldr	r0, [pc, #296]	@ 80024640 <log_write+0x184>
80024514:	ebfff576 	bl	80021af4 <panic>
80024518:	e3a03000 	mov	r3, #0
8002451c:	e50b3008 	str	r3, [fp, #-8]
80024520:	ea00000d 	b	8002455c <log_write+0xa0>
80024524:	e59f210c 	ldr	r2, [pc, #268]	@ 80024638 <log_write+0x17c>
80024528:	e51b3008 	ldr	r3, [fp, #-8]
8002452c:	e2833010 	add	r3, r3, #16
80024530:	e1a03103 	lsl	r3, r3, #2
80024534:	e0823003 	add	r3, r2, r3
80024538:	e5933008 	ldr	r3, [r3, #8]
8002453c:	e1a02003 	mov	r2, r3
80024540:	e51b3010 	ldr	r3, [fp, #-16]
80024544:	e5933008 	ldr	r3, [r3, #8]
80024548:	e1520003 	cmp	r2, r3
8002454c:	0a000008 	beq	80024574 <log_write+0xb8>
80024550:	e51b3008 	ldr	r3, [fp, #-8]
80024554:	e2833001 	add	r3, r3, #1
80024558:	e50b3008 	str	r3, [fp, #-8]
8002455c:	e59f30d4 	ldr	r3, [pc, #212]	@ 80024638 <log_write+0x17c>
80024560:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024564:	e51b2008 	ldr	r2, [fp, #-8]
80024568:	e1520003 	cmp	r2, r3
8002456c:	baffffec 	blt	80024524 <log_write+0x68>
80024570:	ea000000 	b	80024578 <log_write+0xbc>
80024574:	e1a00000 	nop			@ (mov r0, r0)
80024578:	e51b3010 	ldr	r3, [fp, #-16]
8002457c:	e5933008 	ldr	r3, [r3, #8]
80024580:	e1a01003 	mov	r1, r3
80024584:	e59f20ac 	ldr	r2, [pc, #172]	@ 80024638 <log_write+0x17c>
80024588:	e51b3008 	ldr	r3, [fp, #-8]
8002458c:	e2833010 	add	r3, r3, #16
80024590:	e1a03103 	lsl	r3, r3, #2
80024594:	e0823003 	add	r3, r2, r3
80024598:	e5831008 	str	r1, [r3, #8]
8002459c:	e51b3010 	ldr	r3, [fp, #-16]
800245a0:	e5930004 	ldr	r0, [r3, #4]
800245a4:	e59f308c 	ldr	r3, [pc, #140]	@ 80024638 <log_write+0x17c>
800245a8:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
800245ac:	e51b3008 	ldr	r3, [fp, #-8]
800245b0:	e0823003 	add	r3, r2, r3
800245b4:	e2833001 	add	r3, r3, #1
800245b8:	e1a01003 	mov	r1, r3
800245bc:	ebfff154 	bl	80020b14 <bread>
800245c0:	e50b000c 	str	r0, [fp, #-12]
800245c4:	e51b300c 	ldr	r3, [fp, #-12]
800245c8:	e2830018 	add	r0, r3, #24
800245cc:	e51b3010 	ldr	r3, [fp, #-16]
800245d0:	e2833018 	add	r3, r3, #24
800245d4:	e3a02c02 	mov	r2, #512	@ 0x200
800245d8:	e1a01003 	mov	r1, r3
800245dc:	ebffeef9 	bl	800201c8 <memmove>
800245e0:	e51b000c 	ldr	r0, [fp, #-12]
800245e4:	ebfff15e 	bl	80020b64 <bwrite>
800245e8:	e51b000c 	ldr	r0, [fp, #-12]
800245ec:	ebfff172 	bl	80020bbc <brelse>
800245f0:	e59f3040 	ldr	r3, [pc, #64]	@ 80024638 <log_write+0x17c>
800245f4:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800245f8:	e51b2008 	ldr	r2, [fp, #-8]
800245fc:	e1520003 	cmp	r2, r3
80024600:	1a000004 	bne	80024618 <log_write+0x15c>
80024604:	e59f302c 	ldr	r3, [pc, #44]	@ 80024638 <log_write+0x17c>
80024608:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
8002460c:	e2833001 	add	r3, r3, #1
80024610:	e59f2020 	ldr	r2, [pc, #32]	@ 80024638 <log_write+0x17c>
80024614:	e5823044 	str	r3, [r2, #68]	@ 0x44
80024618:	e51b3010 	ldr	r3, [fp, #-16]
8002461c:	e5933000 	ldr	r3, [r3]
80024620:	e3832004 	orr	r2, r3, #4
80024624:	e51b3010 	ldr	r3, [fp, #-16]
80024628:	e5832000 	str	r2, [r3]
8002462c:	e1a00000 	nop			@ (mov r0, r0)
80024630:	e24bd004 	sub	sp, fp, #4
80024634:	e8bd8800 	pop	{fp, pc}
80024638:	800ae4d4 	.word	0x800ae4d4
8002463c:	80029e2c 	.word	0x80029e2c
80024640:	80029e44 	.word	0x80029e44

80024644 <kmain>:
80024644:	e92d4800 	push	{fp, lr}
80024648:	e28db004 	add	fp, sp, #4
8002464c:	e24dd008 	sub	sp, sp, #8
80024650:	e59f30a4 	ldr	r3, [pc, #164]	@ 800246fc <kmain+0xb8>
80024654:	e59f20a4 	ldr	r2, [pc, #164]	@ 80024700 <kmain+0xbc>
80024658:	e5832000 	str	r2, [r3]
8002465c:	e59f00a0 	ldr	r0, [pc, #160]	@ 80024704 <kmain+0xc0>
80024660:	eb00143d 	bl	8002975c <uart_init>
80024664:	e59f309c 	ldr	r3, [pc, #156]	@ 80024708 <kmain+0xc4>
80024668:	e50b3008 	str	r3, [fp, #-8]
8002466c:	eb001039 	bl	80028758 <init_vmm>
80024670:	e59f3094 	ldr	r3, [pc, #148]	@ 8002470c <kmain+0xc8>
80024674:	e2833fff 	add	r3, r3, #1020	@ 0x3fc
80024678:	e2833003 	add	r3, r3, #3
8002467c:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
80024680:	e3c33003 	bic	r3, r3, #3
80024684:	e51b1008 	ldr	r1, [fp, #-8]
80024688:	e1a00003 	mov	r0, r3
8002468c:	eb001065 	bl	80028828 <kpt_freerange>
80024690:	e51b3008 	ldr	r3, [fp, #-8]
80024694:	e2833b01 	add	r3, r3, #1024	@ 0x400
80024698:	e59f1070 	ldr	r1, [pc, #112]	@ 80024710 <kmain+0xcc>
8002469c:	e1a00003 	mov	r0, r3
800246a0:	eb001060 	bl	80028828 <kpt_freerange>
800246a4:	e3a01302 	mov	r1, #134217728	@ 0x8000000
800246a8:	e3a00601 	mov	r0, #1048576	@ 0x100000
800246ac:	eb001325 	bl	80029348 <paging_init>
800246b0:	ebfff1c0 	bl	80020db8 <kmem_init>
800246b4:	e3a01322 	mov	r1, #-2013265920	@ 0x88000000
800246b8:	e59f0050 	ldr	r0, [pc, #80]	@ 80024710 <kmain+0xcc>
800246bc:	ebfff1c6 	bl	80020ddc <kmem_init2>
800246c0:	eb000f28 	bl	80028368 <trap_init>
800246c4:	e59f0048 	ldr	r0, [pc, #72]	@ 80024714 <kmain+0xd0>
800246c8:	eb00133f 	bl	800293cc <pic_init>
800246cc:	eb001453 	bl	80029820 <uart_enable_rx>
800246d0:	ebfff644 	bl	80021fe8 <consoleinit>
800246d4:	eb0001ca 	bl	80024e04 <pinit>
800246d8:	ebfff07c 	bl	800208d0 <binit>
800246dc:	ebfff78e 	bl	8002251c <fileinit>
800246e0:	ebfff9ba 	bl	80022dd0 <iinit>
800246e4:	eb00000b 	bl	80024718 <ideinit>
800246e8:	e3a0000a 	mov	r0, #10
800246ec:	eb0013c9 	bl	80029618 <timer_init>
800246f0:	ebffefa0 	bl	80020578 <sti>
800246f4:	eb000325 	bl	80025390 <userinit>
800246f8:	eb000533 	bl	80025bcc <scheduler>
800246fc:	800ae624 	.word	0x800ae624
80024700:	800ae544 	.word	0x800ae544
80024704:	901f1000 	.word	0x901f1000
80024708:	800f0000 	.word	0x800f0000
8002470c:	800b1000 	.word	0x800b1000
80024710:	80100000 	.word	0x80100000
80024714:	90140000 	.word	0x90140000

80024718 <ideinit>:
80024718:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002471c:	e28db000 	add	fp, sp, #0
80024720:	e59f3028 	ldr	r3, [pc, #40]	@ 80024750 <ideinit+0x38>
80024724:	e59f2028 	ldr	r2, [pc, #40]	@ 80024754 <ideinit+0x3c>
80024728:	e5832000 	str	r2, [r3]
8002472c:	e59f3024 	ldr	r3, [pc, #36]	@ 80024758 <ideinit+0x40>
80024730:	e1a034a3 	lsr	r3, r3, #9
80024734:	e1a02003 	mov	r2, r3
80024738:	e59f301c 	ldr	r3, [pc, #28]	@ 8002475c <ideinit+0x44>
8002473c:	e5832000 	str	r2, [r3]
80024740:	e1a00000 	nop			@ (mov r0, r0)
80024744:	e28bd000 	add	sp, fp, #0
80024748:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002474c:	e12fff1e 	bx	lr
80024750:	800ae62c 	.word	0x800ae62c
80024754:	8002b0ec 	.word	0x8002b0ec
80024758:	00080000 	.word	0x00080000
8002475c:	800ae628 	.word	0x800ae628

80024760 <ideintr>:
80024760:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80024764:	e28db000 	add	fp, sp, #0
80024768:	e1a00000 	nop			@ (mov r0, r0)
8002476c:	e28bd000 	add	sp, fp, #0
80024770:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80024774:	e12fff1e 	bx	lr

80024778 <iderw>:
80024778:	e92d4800 	push	{fp, lr}
8002477c:	e28db004 	add	fp, sp, #4
80024780:	e24dd010 	sub	sp, sp, #16
80024784:	e50b0010 	str	r0, [fp, #-16]
80024788:	e51b3010 	ldr	r3, [fp, #-16]
8002478c:	e5933000 	ldr	r3, [r3]
80024790:	e2033001 	and	r3, r3, #1
80024794:	e3530000 	cmp	r3, #0
80024798:	1a000001 	bne	800247a4 <iderw+0x2c>
8002479c:	e59f00ec 	ldr	r0, [pc, #236]	@ 80024890 <iderw+0x118>
800247a0:	ebfff4d3 	bl	80021af4 <panic>
800247a4:	e51b3010 	ldr	r3, [fp, #-16]
800247a8:	e5933000 	ldr	r3, [r3]
800247ac:	e2033006 	and	r3, r3, #6
800247b0:	e3530002 	cmp	r3, #2
800247b4:	1a000001 	bne	800247c0 <iderw+0x48>
800247b8:	e59f00d4 	ldr	r0, [pc, #212]	@ 80024894 <iderw+0x11c>
800247bc:	ebfff4cc 	bl	80021af4 <panic>
800247c0:	e51b3010 	ldr	r3, [fp, #-16]
800247c4:	e5933004 	ldr	r3, [r3, #4]
800247c8:	e3530001 	cmp	r3, #1
800247cc:	0a000001 	beq	800247d8 <iderw+0x60>
800247d0:	e59f00c0 	ldr	r0, [pc, #192]	@ 80024898 <iderw+0x120>
800247d4:	ebfff4c6 	bl	80021af4 <panic>
800247d8:	e51b3010 	ldr	r3, [fp, #-16]
800247dc:	e5933008 	ldr	r3, [r3, #8]
800247e0:	e59f20b4 	ldr	r2, [pc, #180]	@ 8002489c <iderw+0x124>
800247e4:	e5922000 	ldr	r2, [r2]
800247e8:	e1530002 	cmp	r3, r2
800247ec:	3a000001 	bcc	800247f8 <iderw+0x80>
800247f0:	e59f00a8 	ldr	r0, [pc, #168]	@ 800248a0 <iderw+0x128>
800247f4:	ebfff4be 	bl	80021af4 <panic>
800247f8:	e59f30a4 	ldr	r3, [pc, #164]	@ 800248a4 <iderw+0x12c>
800247fc:	e5932000 	ldr	r2, [r3]
80024800:	e51b3010 	ldr	r3, [fp, #-16]
80024804:	e5933008 	ldr	r3, [r3, #8]
80024808:	e1a03483 	lsl	r3, r3, #9
8002480c:	e0823003 	add	r3, r2, r3
80024810:	e50b3008 	str	r3, [fp, #-8]
80024814:	e51b3010 	ldr	r3, [fp, #-16]
80024818:	e5933000 	ldr	r3, [r3]
8002481c:	e2033004 	and	r3, r3, #4
80024820:	e3530000 	cmp	r3, #0
80024824:	0a00000b 	beq	80024858 <iderw+0xe0>
80024828:	e51b3010 	ldr	r3, [fp, #-16]
8002482c:	e5933000 	ldr	r3, [r3]
80024830:	e3c32004 	bic	r2, r3, #4
80024834:	e51b3010 	ldr	r3, [fp, #-16]
80024838:	e5832000 	str	r2, [r3]
8002483c:	e51b3010 	ldr	r3, [fp, #-16]
80024840:	e2833018 	add	r3, r3, #24
80024844:	e3a02c02 	mov	r2, #512	@ 0x200
80024848:	e1a01003 	mov	r1, r3
8002484c:	e51b0008 	ldr	r0, [fp, #-8]
80024850:	ebffee5c 	bl	800201c8 <memmove>
80024854:	ea000005 	b	80024870 <iderw+0xf8>
80024858:	e51b3010 	ldr	r3, [fp, #-16]
8002485c:	e2833018 	add	r3, r3, #24
80024860:	e3a02c02 	mov	r2, #512	@ 0x200
80024864:	e51b1008 	ldr	r1, [fp, #-8]
80024868:	e1a00003 	mov	r0, r3
8002486c:	ebffee55 	bl	800201c8 <memmove>
80024870:	e51b3010 	ldr	r3, [fp, #-16]
80024874:	e5933000 	ldr	r3, [r3]
80024878:	e3832002 	orr	r2, r3, #2
8002487c:	e51b3010 	ldr	r3, [fp, #-16]
80024880:	e5832000 	str	r2, [r3]
80024884:	e1a00000 	nop			@ (mov r0, r0)
80024888:	e24bd004 	sub	sp, fp, #4
8002488c:	e8bd8800 	pop	{fp, pc}
80024890:	80029e5c 	.word	0x80029e5c
80024894:	80029e70 	.word	0x80029e70
80024898:	80029e88 	.word	0x80029e88
8002489c:	800ae628 	.word	0x800ae628
800248a0:	80029ea8 	.word	0x80029ea8
800248a4:	800ae62c 	.word	0x800ae62c

800248a8 <pipealloc>:
800248a8:	e92d4800 	push	{fp, lr}
800248ac:	e28db004 	add	fp, sp, #4
800248b0:	e24dd010 	sub	sp, sp, #16
800248b4:	e50b0010 	str	r0, [fp, #-16]
800248b8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800248bc:	e3a03000 	mov	r3, #0
800248c0:	e50b3008 	str	r3, [fp, #-8]
800248c4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800248c8:	e3a02000 	mov	r2, #0
800248cc:	e5832000 	str	r2, [r3]
800248d0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800248d4:	e5932000 	ldr	r2, [r3]
800248d8:	e51b3010 	ldr	r3, [fp, #-16]
800248dc:	e5832000 	str	r2, [r3]
800248e0:	ebfff716 	bl	80022540 <filealloc>
800248e4:	e1a02000 	mov	r2, r0
800248e8:	e51b3010 	ldr	r3, [fp, #-16]
800248ec:	e5832000 	str	r2, [r3]
800248f0:	e51b3010 	ldr	r3, [fp, #-16]
800248f4:	e5933000 	ldr	r3, [r3]
800248f8:	e3530000 	cmp	r3, #0
800248fc:	0a000042 	beq	80024a0c <pipealloc+0x164>
80024900:	ebfff70e 	bl	80022540 <filealloc>
80024904:	e1a02000 	mov	r2, r0
80024908:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002490c:	e5832000 	str	r2, [r3]
80024910:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024914:	e5933000 	ldr	r3, [r3]
80024918:	e3530000 	cmp	r3, #0
8002491c:	0a00003a 	beq	80024a0c <pipealloc+0x164>
80024920:	e3a00f91 	mov	r0, #580	@ 0x244
80024924:	ebfff348 	bl	8002164c <get_order>
80024928:	e1a03000 	mov	r3, r0
8002492c:	e1a00003 	mov	r0, r3
80024930:	ebfff2bb 	bl	80021424 <kmalloc>
80024934:	e50b0008 	str	r0, [fp, #-8]
80024938:	e51b3008 	ldr	r3, [fp, #-8]
8002493c:	e3530000 	cmp	r3, #0
80024940:	0a000033 	beq	80024a14 <pipealloc+0x16c>
80024944:	e51b3008 	ldr	r3, [fp, #-8]
80024948:	e3a02001 	mov	r2, #1
8002494c:	e583223c 	str	r2, [r3, #572]	@ 0x23c
80024950:	e51b3008 	ldr	r3, [fp, #-8]
80024954:	e3a02001 	mov	r2, #1
80024958:	e5832240 	str	r2, [r3, #576]	@ 0x240
8002495c:	e51b3008 	ldr	r3, [fp, #-8]
80024960:	e3a02000 	mov	r2, #0
80024964:	e5832238 	str	r2, [r3, #568]	@ 0x238
80024968:	e51b3008 	ldr	r3, [fp, #-8]
8002496c:	e3a02000 	mov	r2, #0
80024970:	e5832234 	str	r2, [r3, #564]	@ 0x234
80024974:	e51b3008 	ldr	r3, [fp, #-8]
80024978:	e59f110c 	ldr	r1, [pc, #268]	@ 80024a8c <pipealloc+0x1e4>
8002497c:	e1a00003 	mov	r0, r3
80024980:	eb000718 	bl	800265e8 <initlock>
80024984:	e51b3010 	ldr	r3, [fp, #-16]
80024988:	e5933000 	ldr	r3, [r3]
8002498c:	e3a02001 	mov	r2, #1
80024990:	e5c32000 	strb	r2, [r3]
80024994:	e51b3010 	ldr	r3, [fp, #-16]
80024998:	e5933000 	ldr	r3, [r3]
8002499c:	e3a02001 	mov	r2, #1
800249a0:	e5c32008 	strb	r2, [r3, #8]
800249a4:	e51b3010 	ldr	r3, [fp, #-16]
800249a8:	e5933000 	ldr	r3, [r3]
800249ac:	e3a02000 	mov	r2, #0
800249b0:	e5c32009 	strb	r2, [r3, #9]
800249b4:	e51b3010 	ldr	r3, [fp, #-16]
800249b8:	e5933000 	ldr	r3, [r3]
800249bc:	e51b2008 	ldr	r2, [fp, #-8]
800249c0:	e583200c 	str	r2, [r3, #12]
800249c4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800249c8:	e5933000 	ldr	r3, [r3]
800249cc:	e3a02001 	mov	r2, #1
800249d0:	e5c32000 	strb	r2, [r3]
800249d4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800249d8:	e5933000 	ldr	r3, [r3]
800249dc:	e3a02000 	mov	r2, #0
800249e0:	e5c32008 	strb	r2, [r3, #8]
800249e4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800249e8:	e5933000 	ldr	r3, [r3]
800249ec:	e3a02001 	mov	r2, #1
800249f0:	e5c32009 	strb	r2, [r3, #9]
800249f4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800249f8:	e5933000 	ldr	r3, [r3]
800249fc:	e51b2008 	ldr	r2, [fp, #-8]
80024a00:	e583200c 	str	r2, [r3, #12]
80024a04:	e3a03000 	mov	r3, #0
80024a08:	ea00001c 	b	80024a80 <pipealloc+0x1d8>
80024a0c:	e1a00000 	nop			@ (mov r0, r0)
80024a10:	ea000000 	b	80024a18 <pipealloc+0x170>
80024a14:	e1a00000 	nop			@ (mov r0, r0)
80024a18:	e51b3008 	ldr	r3, [fp, #-8]
80024a1c:	e3530000 	cmp	r3, #0
80024a20:	0a000005 	beq	80024a3c <pipealloc+0x194>
80024a24:	e3a00f91 	mov	r0, #580	@ 0x244
80024a28:	ebfff307 	bl	8002164c <get_order>
80024a2c:	e1a03000 	mov	r3, r0
80024a30:	e1a01003 	mov	r1, r3
80024a34:	e51b0008 	ldr	r0, [fp, #-8]
80024a38:	ebfff2d0 	bl	80021580 <kfree>
80024a3c:	e51b3010 	ldr	r3, [fp, #-16]
80024a40:	e5933000 	ldr	r3, [r3]
80024a44:	e3530000 	cmp	r3, #0
80024a48:	0a000003 	beq	80024a5c <pipealloc+0x1b4>
80024a4c:	e51b3010 	ldr	r3, [fp, #-16]
80024a50:	e5933000 	ldr	r3, [r3]
80024a54:	e1a00003 	mov	r0, r3
80024a58:	ebfff6f4 	bl	80022630 <fileclose>
80024a5c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024a60:	e5933000 	ldr	r3, [r3]
80024a64:	e3530000 	cmp	r3, #0
80024a68:	0a000003 	beq	80024a7c <pipealloc+0x1d4>
80024a6c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024a70:	e5933000 	ldr	r3, [r3]
80024a74:	e1a00003 	mov	r0, r3
80024a78:	ebfff6ec 	bl	80022630 <fileclose>
80024a7c:	e3e03000 	mvn	r3, #0
80024a80:	e1a00003 	mov	r0, r3
80024a84:	e24bd004 	sub	sp, fp, #4
80024a88:	e8bd8800 	pop	{fp, pc}
80024a8c:	80029ec4 	.word	0x80029ec4

80024a90 <pipeclose>:
80024a90:	e92d4800 	push	{fp, lr}
80024a94:	e28db004 	add	fp, sp, #4
80024a98:	e24dd008 	sub	sp, sp, #8
80024a9c:	e50b0008 	str	r0, [fp, #-8]
80024aa0:	e50b100c 	str	r1, [fp, #-12]
80024aa4:	e51b3008 	ldr	r3, [fp, #-8]
80024aa8:	e1a00003 	mov	r0, r3
80024aac:	eb0006df 	bl	80026630 <acquire>
80024ab0:	e51b300c 	ldr	r3, [fp, #-12]
80024ab4:	e3530000 	cmp	r3, #0
80024ab8:	0a000007 	beq	80024adc <pipeclose+0x4c>
80024abc:	e51b3008 	ldr	r3, [fp, #-8]
80024ac0:	e3a02000 	mov	r2, #0
80024ac4:	e5832240 	str	r2, [r3, #576]	@ 0x240
80024ac8:	e51b3008 	ldr	r3, [fp, #-8]
80024acc:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024ad0:	e1a00003 	mov	r0, r3
80024ad4:	eb000593 	bl	80026128 <wakeup>
80024ad8:	ea000006 	b	80024af8 <pipeclose+0x68>
80024adc:	e51b3008 	ldr	r3, [fp, #-8]
80024ae0:	e3a02000 	mov	r2, #0
80024ae4:	e583223c 	str	r2, [r3, #572]	@ 0x23c
80024ae8:	e51b3008 	ldr	r3, [fp, #-8]
80024aec:	e2833f8e 	add	r3, r3, #568	@ 0x238
80024af0:	e1a00003 	mov	r0, r3
80024af4:	eb00058b 	bl	80026128 <wakeup>
80024af8:	e51b3008 	ldr	r3, [fp, #-8]
80024afc:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80024b00:	e3530000 	cmp	r3, #0
80024b04:	1a00000d 	bne	80024b40 <pipeclose+0xb0>
80024b08:	e51b3008 	ldr	r3, [fp, #-8]
80024b0c:	e5933240 	ldr	r3, [r3, #576]	@ 0x240
80024b10:	e3530000 	cmp	r3, #0
80024b14:	1a000009 	bne	80024b40 <pipeclose+0xb0>
80024b18:	e51b3008 	ldr	r3, [fp, #-8]
80024b1c:	e1a00003 	mov	r0, r3
80024b20:	eb0006cd 	bl	8002665c <release>
80024b24:	e3a00f91 	mov	r0, #580	@ 0x244
80024b28:	ebfff2c7 	bl	8002164c <get_order>
80024b2c:	e1a03000 	mov	r3, r0
80024b30:	e1a01003 	mov	r1, r3
80024b34:	e51b0008 	ldr	r0, [fp, #-8]
80024b38:	ebfff290 	bl	80021580 <kfree>
80024b3c:	ea000003 	b	80024b50 <pipeclose+0xc0>
80024b40:	e51b3008 	ldr	r3, [fp, #-8]
80024b44:	e1a00003 	mov	r0, r3
80024b48:	eb0006c3 	bl	8002665c <release>
80024b4c:	e1a00000 	nop			@ (mov r0, r0)
80024b50:	e1a00000 	nop			@ (mov r0, r0)
80024b54:	e24bd004 	sub	sp, fp, #4
80024b58:	e8bd8800 	pop	{fp, pc}

80024b5c <pipewrite>:
80024b5c:	e92d4800 	push	{fp, lr}
80024b60:	e28db004 	add	fp, sp, #4
80024b64:	e24dd018 	sub	sp, sp, #24
80024b68:	e50b0010 	str	r0, [fp, #-16]
80024b6c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024b70:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80024b74:	e51b3010 	ldr	r3, [fp, #-16]
80024b78:	e1a00003 	mov	r0, r3
80024b7c:	eb0006ab 	bl	80026630 <acquire>
80024b80:	e3a03000 	mov	r3, #0
80024b84:	e50b3008 	str	r3, [fp, #-8]
80024b88:	ea00002b 	b	80024c3c <pipewrite+0xe0>
80024b8c:	e51b3010 	ldr	r3, [fp, #-16]
80024b90:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80024b94:	e3530000 	cmp	r3, #0
80024b98:	1a000004 	bne	80024bb0 <pipewrite+0x54>
80024b9c:	e51b3010 	ldr	r3, [fp, #-16]
80024ba0:	e1a00003 	mov	r0, r3
80024ba4:	eb0006ac 	bl	8002665c <release>
80024ba8:	e3e03000 	mvn	r3, #0
80024bac:	ea00002e 	b	80024c6c <pipewrite+0x110>
80024bb0:	e51b3010 	ldr	r3, [fp, #-16]
80024bb4:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024bb8:	e1a00003 	mov	r0, r3
80024bbc:	eb000559 	bl	80026128 <wakeup>
80024bc0:	e51b3010 	ldr	r3, [fp, #-16]
80024bc4:	e2833f8e 	add	r3, r3, #568	@ 0x238
80024bc8:	e51b2010 	ldr	r2, [fp, #-16]
80024bcc:	e1a01002 	mov	r1, r2
80024bd0:	e1a00003 	mov	r0, r3
80024bd4:	eb0004cf 	bl	80025f18 <sleep>
80024bd8:	e51b3010 	ldr	r3, [fp, #-16]
80024bdc:	e5932238 	ldr	r2, [r3, #568]	@ 0x238
80024be0:	e51b3010 	ldr	r3, [fp, #-16]
80024be4:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80024be8:	e2833c02 	add	r3, r3, #512	@ 0x200
80024bec:	e1520003 	cmp	r2, r3
80024bf0:	0affffe5 	beq	80024b8c <pipewrite+0x30>
80024bf4:	e51b3008 	ldr	r3, [fp, #-8]
80024bf8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80024bfc:	e0822003 	add	r2, r2, r3
80024c00:	e51b3010 	ldr	r3, [fp, #-16]
80024c04:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80024c08:	e2830001 	add	r0, r3, #1
80024c0c:	e51b1010 	ldr	r1, [fp, #-16]
80024c10:	e5810238 	str	r0, [r1, #568]	@ 0x238
80024c14:	e1a03b83 	lsl	r3, r3, #23
80024c18:	e1a03ba3 	lsr	r3, r3, #23
80024c1c:	e5d21000 	ldrb	r1, [r2]
80024c20:	e51b2010 	ldr	r2, [fp, #-16]
80024c24:	e0823003 	add	r3, r2, r3
80024c28:	e1a02001 	mov	r2, r1
80024c2c:	e5c32034 	strb	r2, [r3, #52]	@ 0x34
80024c30:	e51b3008 	ldr	r3, [fp, #-8]
80024c34:	e2833001 	add	r3, r3, #1
80024c38:	e50b3008 	str	r3, [fp, #-8]
80024c3c:	e51b2008 	ldr	r2, [fp, #-8]
80024c40:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80024c44:	e1520003 	cmp	r2, r3
80024c48:	baffffe2 	blt	80024bd8 <pipewrite+0x7c>
80024c4c:	e51b3010 	ldr	r3, [fp, #-16]
80024c50:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024c54:	e1a00003 	mov	r0, r3
80024c58:	eb000532 	bl	80026128 <wakeup>
80024c5c:	e51b3010 	ldr	r3, [fp, #-16]
80024c60:	e1a00003 	mov	r0, r3
80024c64:	eb00067c 	bl	8002665c <release>
80024c68:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80024c6c:	e1a00003 	mov	r0, r3
80024c70:	e24bd004 	sub	sp, fp, #4
80024c74:	e8bd8800 	pop	{fp, pc}

80024c78 <piperead>:
80024c78:	e92d4800 	push	{fp, lr}
80024c7c:	e28db004 	add	fp, sp, #4
80024c80:	e24dd018 	sub	sp, sp, #24
80024c84:	e50b0010 	str	r0, [fp, #-16]
80024c88:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024c8c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80024c90:	e51b3010 	ldr	r3, [fp, #-16]
80024c94:	e1a00003 	mov	r0, r3
80024c98:	eb000664 	bl	80026630 <acquire>
80024c9c:	ea00000f 	b	80024ce0 <piperead+0x68>
80024ca0:	e59f310c 	ldr	r3, [pc, #268]	@ 80024db4 <piperead+0x13c>
80024ca4:	e5933000 	ldr	r3, [r3]
80024ca8:	e5933028 	ldr	r3, [r3, #40]	@ 0x28
80024cac:	e3530000 	cmp	r3, #0
80024cb0:	0a000004 	beq	80024cc8 <piperead+0x50>
80024cb4:	e51b3010 	ldr	r3, [fp, #-16]
80024cb8:	e1a00003 	mov	r0, r3
80024cbc:	eb000666 	bl	8002665c <release>
80024cc0:	e3e03000 	mvn	r3, #0
80024cc4:	ea000037 	b	80024da8 <piperead+0x130>
80024cc8:	e51b3010 	ldr	r3, [fp, #-16]
80024ccc:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024cd0:	e51b2010 	ldr	r2, [fp, #-16]
80024cd4:	e1a01002 	mov	r1, r2
80024cd8:	e1a00003 	mov	r0, r3
80024cdc:	eb00048d 	bl	80025f18 <sleep>
80024ce0:	e51b3010 	ldr	r3, [fp, #-16]
80024ce4:	e5932234 	ldr	r2, [r3, #564]	@ 0x234
80024ce8:	e51b3010 	ldr	r3, [fp, #-16]
80024cec:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80024cf0:	e1520003 	cmp	r2, r3
80024cf4:	1a000003 	bne	80024d08 <piperead+0x90>
80024cf8:	e51b3010 	ldr	r3, [fp, #-16]
80024cfc:	e5933240 	ldr	r3, [r3, #576]	@ 0x240
80024d00:	e3530000 	cmp	r3, #0
80024d04:	1affffe5 	bne	80024ca0 <piperead+0x28>
80024d08:	e3a03000 	mov	r3, #0
80024d0c:	e50b3008 	str	r3, [fp, #-8]
80024d10:	ea000016 	b	80024d70 <piperead+0xf8>
80024d14:	e51b3010 	ldr	r3, [fp, #-16]
80024d18:	e5932234 	ldr	r2, [r3, #564]	@ 0x234
80024d1c:	e51b3010 	ldr	r3, [fp, #-16]
80024d20:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80024d24:	e1520003 	cmp	r2, r3
80024d28:	0a000015 	beq	80024d84 <piperead+0x10c>
80024d2c:	e51b3010 	ldr	r3, [fp, #-16]
80024d30:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80024d34:	e2831001 	add	r1, r3, #1
80024d38:	e51b2010 	ldr	r2, [fp, #-16]
80024d3c:	e5821234 	str	r1, [r2, #564]	@ 0x234
80024d40:	e1a03b83 	lsl	r3, r3, #23
80024d44:	e1a03ba3 	lsr	r3, r3, #23
80024d48:	e51b2008 	ldr	r2, [fp, #-8]
80024d4c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80024d50:	e0812002 	add	r2, r1, r2
80024d54:	e51b1010 	ldr	r1, [fp, #-16]
80024d58:	e0813003 	add	r3, r1, r3
80024d5c:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
80024d60:	e5c23000 	strb	r3, [r2]
80024d64:	e51b3008 	ldr	r3, [fp, #-8]
80024d68:	e2833001 	add	r3, r3, #1
80024d6c:	e50b3008 	str	r3, [fp, #-8]
80024d70:	e51b2008 	ldr	r2, [fp, #-8]
80024d74:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80024d78:	e1520003 	cmp	r2, r3
80024d7c:	baffffe4 	blt	80024d14 <piperead+0x9c>
80024d80:	ea000000 	b	80024d88 <piperead+0x110>
80024d84:	e1a00000 	nop			@ (mov r0, r0)
80024d88:	e51b3010 	ldr	r3, [fp, #-16]
80024d8c:	e2833f8e 	add	r3, r3, #568	@ 0x238
80024d90:	e1a00003 	mov	r0, r3
80024d94:	eb0004e3 	bl	80026128 <wakeup>
80024d98:	e51b3010 	ldr	r3, [fp, #-16]
80024d9c:	e1a00003 	mov	r0, r3
80024da0:	eb00062d 	bl	8002665c <release>
80024da4:	e51b3008 	ldr	r3, [fp, #-8]
80024da8:	e1a00003 	mov	r0, r3
80024dac:	e24bd004 	sub	sp, fp, #4
80024db0:	e8bd8800 	pop	{fp, pc}
80024db4:	800b0b6c 	.word	0x800b0b6c

80024db8 <rand>:
80024db8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80024dbc:	e28db000 	add	fp, sp, #0
80024dc0:	e59f3034 	ldr	r3, [pc, #52]	@ 80024dfc <rand+0x44>
80024dc4:	e5933000 	ldr	r3, [r3]
80024dc8:	e59f2030 	ldr	r2, [pc, #48]	@ 80024e00 <rand+0x48>
80024dcc:	e0030392 	mul	r3, r2, r3
80024dd0:	e2833a03 	add	r3, r3, #12288	@ 0x3000
80024dd4:	e2833039 	add	r3, r3, #57	@ 0x39
80024dd8:	e3c33102 	bic	r3, r3, #-2147483648	@ 0x80000000
80024ddc:	e59f2018 	ldr	r2, [pc, #24]	@ 80024dfc <rand+0x44>
80024de0:	e5823000 	str	r3, [r2]
80024de4:	e59f3010 	ldr	r3, [pc, #16]	@ 80024dfc <rand+0x44>
80024de8:	e5933000 	ldr	r3, [r3]
80024dec:	e1a00003 	mov	r0, r3
80024df0:	e28bd000 	add	sp, fp, #0
80024df4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80024df8:	e12fff1e 	bx	lr
80024dfc:	800ae630 	.word	0x800ae630
80024e00:	41c64e6d 	.word	0x41c64e6d

80024e04 <pinit>:
80024e04:	e92d4800 	push	{fp, lr}
80024e08:	e28db004 	add	fp, sp, #4
80024e0c:	e59f100c 	ldr	r1, [pc, #12]	@ 80024e20 <pinit+0x1c>
80024e10:	e59f000c 	ldr	r0, [pc, #12]	@ 80024e24 <pinit+0x20>
80024e14:	eb0005f3 	bl	800265e8 <initlock>
80024e18:	e1a00000 	nop			@ (mov r0, r0)
80024e1c:	e8bd8800 	pop	{fp, pc}
80024e20:	80029ef4 	.word	0x80029ef4
80024e24:	800ae634 	.word	0x800ae634

80024e28 <allocproc>:
80024e28:	e92d4800 	push	{fp, lr}
80024e2c:	e28db004 	add	fp, sp, #4
80024e30:	e24dd008 	sub	sp, sp, #8
80024e34:	e59f01ac 	ldr	r0, [pc, #428]	@ 80024fe8 <allocproc+0x1c0>
80024e38:	eb0005fc 	bl	80026630 <acquire>
80024e3c:	e59f31a8 	ldr	r3, [pc, #424]	@ 80024fec <allocproc+0x1c4>
80024e40:	e50b3008 	str	r3, [fp, #-8]
80024e44:	ea000006 	b	80024e64 <allocproc+0x3c>
80024e48:	e51b3008 	ldr	r3, [fp, #-8]
80024e4c:	e5d33010 	ldrb	r3, [r3, #16]
80024e50:	e3530000 	cmp	r3, #0
80024e54:	0a00000a 	beq	80024e84 <allocproc+0x5c>
80024e58:	e51b3008 	ldr	r3, [fp, #-8]
80024e5c:	e2833094 	add	r3, r3, #148	@ 0x94
80024e60:	e50b3008 	str	r3, [fp, #-8]
80024e64:	e51b3008 	ldr	r3, [fp, #-8]
80024e68:	e59f2180 	ldr	r2, [pc, #384]	@ 80024ff0 <allocproc+0x1c8>
80024e6c:	e1530002 	cmp	r3, r2
80024e70:	3afffff4 	bcc	80024e48 <allocproc+0x20>
80024e74:	e59f016c 	ldr	r0, [pc, #364]	@ 80024fe8 <allocproc+0x1c0>
80024e78:	eb0005f7 	bl	8002665c <release>
80024e7c:	e3a03000 	mov	r3, #0
80024e80:	ea000055 	b	80024fdc <allocproc+0x1b4>
80024e84:	e1a00000 	nop			@ (mov r0, r0)
80024e88:	e51b3008 	ldr	r3, [fp, #-8]
80024e8c:	e3a02001 	mov	r2, #1
80024e90:	e5c32010 	strb	r2, [r3, #16]
80024e94:	e59f3158 	ldr	r3, [pc, #344]	@ 80024ff4 <allocproc+0x1cc>
80024e98:	e5933000 	ldr	r3, [r3]
80024e9c:	e2832001 	add	r2, r3, #1
80024ea0:	e59f114c 	ldr	r1, [pc, #332]	@ 80024ff4 <allocproc+0x1cc>
80024ea4:	e5812000 	str	r2, [r1]
80024ea8:	e51b2008 	ldr	r2, [fp, #-8]
80024eac:	e5823014 	str	r3, [r2, #20]
80024eb0:	e51b3008 	ldr	r3, [fp, #-8]
80024eb4:	e3a02000 	mov	r2, #0
80024eb8:	e583200c 	str	r2, [r3, #12]
80024ebc:	e51b3008 	ldr	r3, [fp, #-8]
80024ec0:	e3a02001 	mov	r2, #1
80024ec4:	e5832080 	str	r2, [r3, #128]	@ 0x80
80024ec8:	e51b3008 	ldr	r3, [fp, #-8]
80024ecc:	e3a02000 	mov	r2, #0
80024ed0:	e5832084 	str	r2, [r3, #132]	@ 0x84
80024ed4:	e51b3008 	ldr	r3, [fp, #-8]
80024ed8:	e3a02000 	mov	r2, #0
80024edc:	e5832088 	str	r2, [r3, #136]	@ 0x88
80024ee0:	e51b3008 	ldr	r3, [fp, #-8]
80024ee4:	e3a02000 	mov	r2, #0
80024ee8:	e583208c 	str	r2, [r3, #140]	@ 0x8c
80024eec:	e51b3008 	ldr	r3, [fp, #-8]
80024ef0:	e3a02000 	mov	r2, #0
80024ef4:	e5832090 	str	r2, [r3, #144]	@ 0x90
80024ef8:	e59f00e8 	ldr	r0, [pc, #232]	@ 80024fe8 <allocproc+0x1c0>
80024efc:	eb0005d6 	bl	8002665c <release>
80024f00:	ebfff1ca 	bl	80021630 <alloc_page>
80024f04:	e1a02000 	mov	r2, r0
80024f08:	e51b3008 	ldr	r3, [fp, #-8]
80024f0c:	e5832008 	str	r2, [r3, #8]
80024f10:	e51b3008 	ldr	r3, [fp, #-8]
80024f14:	e5933008 	ldr	r3, [r3, #8]
80024f18:	e3530000 	cmp	r3, #0
80024f1c:	1a000004 	bne	80024f34 <allocproc+0x10c>
80024f20:	e51b3008 	ldr	r3, [fp, #-8]
80024f24:	e3a02000 	mov	r2, #0
80024f28:	e5c32010 	strb	r2, [r3, #16]
80024f2c:	e3a03000 	mov	r3, #0
80024f30:	ea000029 	b	80024fdc <allocproc+0x1b4>
80024f34:	e51b3008 	ldr	r3, [fp, #-8]
80024f38:	e5933008 	ldr	r3, [r3, #8]
80024f3c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80024f40:	e50b300c 	str	r3, [fp, #-12]
80024f44:	e51b300c 	ldr	r3, [fp, #-12]
80024f48:	e2433048 	sub	r3, r3, #72	@ 0x48
80024f4c:	e50b300c 	str	r3, [fp, #-12]
80024f50:	e51b3008 	ldr	r3, [fp, #-8]
80024f54:	e51b200c 	ldr	r2, [fp, #-12]
80024f58:	e583201c 	str	r2, [r3, #28]
80024f5c:	e51b300c 	ldr	r3, [fp, #-12]
80024f60:	e2433004 	sub	r3, r3, #4
80024f64:	e50b300c 	str	r3, [fp, #-12]
80024f68:	e59f2088 	ldr	r2, [pc, #136]	@ 80024ff8 <allocproc+0x1d0>
80024f6c:	e51b300c 	ldr	r3, [fp, #-12]
80024f70:	e5832000 	str	r2, [r3]
80024f74:	e51b300c 	ldr	r3, [fp, #-12]
80024f78:	e2433004 	sub	r3, r3, #4
80024f7c:	e50b300c 	str	r3, [fp, #-12]
80024f80:	e51b3008 	ldr	r3, [fp, #-8]
80024f84:	e5933008 	ldr	r3, [r3, #8]
80024f88:	e2832a01 	add	r2, r3, #4096	@ 0x1000
80024f8c:	e51b300c 	ldr	r3, [fp, #-12]
80024f90:	e5832000 	str	r2, [r3]
80024f94:	e51b300c 	ldr	r3, [fp, #-12]
80024f98:	e2433028 	sub	r3, r3, #40	@ 0x28
80024f9c:	e50b300c 	str	r3, [fp, #-12]
80024fa0:	e51b3008 	ldr	r3, [fp, #-8]
80024fa4:	e51b200c 	ldr	r2, [fp, #-12]
80024fa8:	e5832020 	str	r2, [r3, #32]
80024fac:	e51b3008 	ldr	r3, [fp, #-8]
80024fb0:	e5933020 	ldr	r3, [r3, #32]
80024fb4:	e3a02028 	mov	r2, #40	@ 0x28
80024fb8:	e3a01000 	mov	r1, #0
80024fbc:	e1a00003 	mov	r0, r3
80024fc0:	ebffec0e 	bl	80020000 <memset>
80024fc4:	e59f2030 	ldr	r2, [pc, #48]	@ 80024ffc <allocproc+0x1d4>
80024fc8:	e51b3008 	ldr	r3, [fp, #-8]
80024fcc:	e5933020 	ldr	r3, [r3, #32]
80024fd0:	e2822004 	add	r2, r2, #4
80024fd4:	e5832024 	str	r2, [r3, #36]	@ 0x24
80024fd8:	e51b3008 	ldr	r3, [fp, #-8]
80024fdc:	e1a00003 	mov	r0, r3
80024fe0:	e24bd004 	sub	sp, fp, #4
80024fe4:	e8bd8800 	pop	{fp, pc}
80024fe8:	800ae634 	.word	0x800ae634
80024fec:	800ae668 	.word	0x800ae668
80024ff0:	800b0b68 	.word	0x800b0b68
80024ff4:	8002b02c 	.word	0x8002b02c
80024ff8:	80027f2c 	.word	0x80027f2c
80024ffc:	80025ed8 	.word	0x80025ed8

80025000 <getprocs>:
80025000:	e92d4800 	push	{fp, lr}
80025004:	e28db004 	add	fp, sp, #4
80025008:	e24dd058 	sub	sp, sp, #88	@ 0x58
8002500c:	e14b05f4 	strd	r0, [fp, #-84]	@ 0xffffffac
80025010:	e50b2058 	str	r2, [fp, #-88]	@ 0xffffffa8
80025014:	e3a03000 	mov	r3, #0
80025018:	e50b300c 	str	r3, [fp, #-12]
8002501c:	e59f0174 	ldr	r0, [pc, #372]	@ 80025198 <getprocs+0x198>
80025020:	eb000582 	bl	80026630 <acquire>
80025024:	e59f3170 	ldr	r3, [pc, #368]	@ 8002519c <getprocs+0x19c>
80025028:	e50b3008 	str	r3, [fp, #-8]
8002502c:	ea00004b 	b	80025160 <getprocs+0x160>
80025030:	e51b3008 	ldr	r3, [fp, #-8]
80025034:	e5d33010 	ldrb	r3, [r3, #16]
80025038:	e3530000 	cmp	r3, #0
8002503c:	0a000044 	beq	80025154 <getprocs+0x154>
80025040:	e51b3008 	ldr	r3, [fp, #-8]
80025044:	e5933014 	ldr	r3, [r3, #20]
80025048:	e50b3048 	str	r3, [fp, #-72]	@ 0xffffffb8
8002504c:	e51b3008 	ldr	r3, [fp, #-8]
80025050:	e5933018 	ldr	r3, [r3, #24]
80025054:	e3530000 	cmp	r3, #0
80025058:	0a000003 	beq	8002506c <getprocs+0x6c>
8002505c:	e51b3008 	ldr	r3, [fp, #-8]
80025060:	e5933018 	ldr	r3, [r3, #24]
80025064:	e5933014 	ldr	r3, [r3, #20]
80025068:	ea000000 	b	80025070 <getprocs+0x70>
8002506c:	e3a03000 	mov	r3, #0
80025070:	e50b3044 	str	r3, [fp, #-68]	@ 0xffffffbc
80025074:	e51b3008 	ldr	r3, [fp, #-8]
80025078:	e5d33010 	ldrb	r3, [r3, #16]
8002507c:	e1a02003 	mov	r2, r3
80025080:	e59f3118 	ldr	r3, [pc, #280]	@ 800251a0 <getprocs+0x1a0>
80025084:	e7931102 	ldr	r1, [r3, r2, lsl #2]
80025088:	e24b3048 	sub	r3, fp, #72	@ 0x48
8002508c:	e2833008 	add	r3, r3, #8
80025090:	e3a02010 	mov	r2, #16
80025094:	e1a00003 	mov	r0, r3
80025098:	ebffecec 	bl	80020450 <safestrcpy>
8002509c:	e51b3008 	ldr	r3, [fp, #-8]
800250a0:	e593300c 	ldr	r3, [r3, #12]
800250a4:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
800250a8:	e51b3008 	ldr	r3, [fp, #-8]
800250ac:	e5933000 	ldr	r3, [r3]
800250b0:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
800250b4:	e51b3008 	ldr	r3, [fp, #-8]
800250b8:	e2831070 	add	r1, r3, #112	@ 0x70
800250bc:	e24b3048 	sub	r3, fp, #72	@ 0x48
800250c0:	e2833020 	add	r3, r3, #32
800250c4:	e3a02010 	mov	r2, #16
800250c8:	e1a00003 	mov	r0, r3
800250cc:	ebffecdf 	bl	80020450 <safestrcpy>
800250d0:	e51b3008 	ldr	r3, [fp, #-8]
800250d4:	e5933080 	ldr	r3, [r3, #128]	@ 0x80
800250d8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
800250dc:	e51b3008 	ldr	r3, [fp, #-8]
800250e0:	e5933084 	ldr	r3, [r3, #132]	@ 0x84
800250e4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800250e8:	e51b3008 	ldr	r3, [fp, #-8]
800250ec:	e5933088 	ldr	r3, [r3, #136]	@ 0x88
800250f0:	e50b3010 	str	r3, [fp, #-16]
800250f4:	e59f30a8 	ldr	r3, [pc, #168]	@ 800251a4 <getprocs+0x1a4>
800250f8:	e5933000 	ldr	r3, [r3]
800250fc:	e5930004 	ldr	r0, [r3, #4]
80025100:	e51b200c 	ldr	r2, [fp, #-12]
80025104:	e1a03002 	mov	r3, r2
80025108:	e1a03203 	lsl	r3, r3, #4
8002510c:	e0433002 	sub	r3, r3, r2
80025110:	e1a03103 	lsl	r3, r3, #2
80025114:	e1a02003 	mov	r2, r3
80025118:	e51b3054 	ldr	r3, [fp, #-84]	@ 0xffffffac
8002511c:	e0821003 	add	r1, r2, r3
80025120:	e24b2048 	sub	r2, fp, #72	@ 0x48
80025124:	e3a0303c 	mov	r3, #60	@ 0x3c
80025128:	eb001048 	bl	80029250 <copyout>
8002512c:	e1a03000 	mov	r3, r0
80025130:	e3530000 	cmp	r3, #0
80025134:	aa000003 	bge	80025148 <getprocs+0x148>
80025138:	e59f0058 	ldr	r0, [pc, #88]	@ 80025198 <getprocs+0x198>
8002513c:	eb000546 	bl	8002665c <release>
80025140:	e3e03000 	mvn	r3, #0
80025144:	ea000010 	b	8002518c <getprocs+0x18c>
80025148:	e51b300c 	ldr	r3, [fp, #-12]
8002514c:	e2833001 	add	r3, r3, #1
80025150:	e50b300c 	str	r3, [fp, #-12]
80025154:	e51b3008 	ldr	r3, [fp, #-8]
80025158:	e2833094 	add	r3, r3, #148	@ 0x94
8002515c:	e50b3008 	str	r3, [fp, #-8]
80025160:	e51b3008 	ldr	r3, [fp, #-8]
80025164:	e59f203c 	ldr	r2, [pc, #60]	@ 800251a8 <getprocs+0x1a8>
80025168:	e1530002 	cmp	r3, r2
8002516c:	2a000003 	bcs	80025180 <getprocs+0x180>
80025170:	e51b200c 	ldr	r2, [fp, #-12]
80025174:	e51b3058 	ldr	r3, [fp, #-88]	@ 0xffffffa8
80025178:	e1520003 	cmp	r2, r3
8002517c:	baffffab 	blt	80025030 <getprocs+0x30>
80025180:	e59f0010 	ldr	r0, [pc, #16]	@ 80025198 <getprocs+0x198>
80025184:	eb000534 	bl	8002665c <release>
80025188:	e51b300c 	ldr	r3, [fp, #-12]
8002518c:	e1a00003 	mov	r0, r3
80025190:	e24bd004 	sub	sp, fp, #4
80025194:	e8bd8800 	pop	{fp, pc}
80025198:	800ae634 	.word	0x800ae634
8002519c:	800ae668 	.word	0x800ae668
800251a0:	8002b014 	.word	0x8002b014
800251a4:	800b0b6c 	.word	0x800b0b6c
800251a8:	800b0b68 	.word	0x800b0b68

800251ac <sched_settickets>:
800251ac:	e92d4800 	push	{fp, lr}
800251b0:	e28db004 	add	fp, sp, #4
800251b4:	e24dd010 	sub	sp, sp, #16
800251b8:	e50b0010 	str	r0, [fp, #-16]
800251bc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800251c0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800251c4:	e3530000 	cmp	r3, #0
800251c8:	ca000001 	bgt	800251d4 <sched_settickets+0x28>
800251cc:	e3e03000 	mvn	r3, #0
800251d0:	ea00001e 	b	80025250 <sched_settickets+0xa4>
800251d4:	e59f0080 	ldr	r0, [pc, #128]	@ 8002525c <sched_settickets+0xb0>
800251d8:	eb000514 	bl	80026630 <acquire>
800251dc:	e59f307c 	ldr	r3, [pc, #124]	@ 80025260 <sched_settickets+0xb4>
800251e0:	e50b3008 	str	r3, [fp, #-8]
800251e4:	ea000012 	b	80025234 <sched_settickets+0x88>
800251e8:	e51b3008 	ldr	r3, [fp, #-8]
800251ec:	e5d33010 	ldrb	r3, [r3, #16]
800251f0:	e3530000 	cmp	r3, #0
800251f4:	0a00000b 	beq	80025228 <sched_settickets+0x7c>
800251f8:	e51b3008 	ldr	r3, [fp, #-8]
800251fc:	e5933014 	ldr	r3, [r3, #20]
80025200:	e51b2010 	ldr	r2, [fp, #-16]
80025204:	e1520003 	cmp	r2, r3
80025208:	1a000006 	bne	80025228 <sched_settickets+0x7c>
8002520c:	e51b3008 	ldr	r3, [fp, #-8]
80025210:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80025214:	e5832080 	str	r2, [r3, #128]	@ 0x80
80025218:	e59f003c 	ldr	r0, [pc, #60]	@ 8002525c <sched_settickets+0xb0>
8002521c:	eb00050e 	bl	8002665c <release>
80025220:	e3a03000 	mov	r3, #0
80025224:	ea000009 	b	80025250 <sched_settickets+0xa4>
80025228:	e51b3008 	ldr	r3, [fp, #-8]
8002522c:	e2833094 	add	r3, r3, #148	@ 0x94
80025230:	e50b3008 	str	r3, [fp, #-8]
80025234:	e51b3008 	ldr	r3, [fp, #-8]
80025238:	e59f2024 	ldr	r2, [pc, #36]	@ 80025264 <sched_settickets+0xb8>
8002523c:	e1530002 	cmp	r3, r2
80025240:	3affffe8 	bcc	800251e8 <sched_settickets+0x3c>
80025244:	e59f0010 	ldr	r0, [pc, #16]	@ 8002525c <sched_settickets+0xb0>
80025248:	eb000503 	bl	8002665c <release>
8002524c:	e3e03000 	mvn	r3, #0
80025250:	e1a00003 	mov	r0, r3
80025254:	e24bd004 	sub	sp, fp, #4
80025258:	e8bd8800 	pop	{fp, pc}
8002525c:	800ae634 	.word	0x800ae634
80025260:	800ae668 	.word	0x800ae668
80025264:	800b0b68 	.word	0x800b0b68

80025268 <sched_getpinfo>:
80025268:	e92d4800 	push	{fp, lr}
8002526c:	e28db004 	add	fp, sp, #4
80025270:	e24dd010 	sub	sp, sp, #16
80025274:	e50b0010 	str	r0, [fp, #-16]
80025278:	e51b3010 	ldr	r3, [fp, #-16]
8002527c:	e3530000 	cmp	r3, #0
80025280:	1a000001 	bne	8002528c <sched_getpinfo+0x24>
80025284:	e3e03000 	mvn	r3, #0
80025288:	ea000035 	b	80025364 <sched_getpinfo+0xfc>
8002528c:	e59f00dc 	ldr	r0, [pc, #220]	@ 80025370 <sched_getpinfo+0x108>
80025290:	eb0004e6 	bl	80026630 <acquire>
80025294:	e3a03000 	mov	r3, #0
80025298:	e50b300c 	str	r3, [fp, #-12]
8002529c:	e59f30d0 	ldr	r3, [pc, #208]	@ 80025374 <sched_getpinfo+0x10c>
800252a0:	e50b3008 	str	r3, [fp, #-8]
800252a4:	ea000027 	b	80025348 <sched_getpinfo+0xe0>
800252a8:	e51b3008 	ldr	r3, [fp, #-8]
800252ac:	e5d33010 	ldrb	r3, [r3, #16]
800252b0:	e3530000 	cmp	r3, #0
800252b4:	13a03001 	movne	r3, #1
800252b8:	03a03000 	moveq	r3, #0
800252bc:	e6ef3073 	uxtb	r3, r3
800252c0:	e1a01003 	mov	r1, r3
800252c4:	e51b3010 	ldr	r3, [fp, #-16]
800252c8:	e51b200c 	ldr	r2, [fp, #-12]
800252cc:	e7831102 	str	r1, [r3, r2, lsl #2]
800252d0:	e51b3008 	ldr	r3, [fp, #-8]
800252d4:	e5931014 	ldr	r1, [r3, #20]
800252d8:	e51b3010 	ldr	r3, [fp, #-16]
800252dc:	e51b200c 	ldr	r2, [fp, #-12]
800252e0:	e2822040 	add	r2, r2, #64	@ 0x40
800252e4:	e7831102 	str	r1, [r3, r2, lsl #2]
800252e8:	e51b3008 	ldr	r3, [fp, #-8]
800252ec:	e5931080 	ldr	r1, [r3, #128]	@ 0x80
800252f0:	e51b3010 	ldr	r3, [fp, #-16]
800252f4:	e51b200c 	ldr	r2, [fp, #-12]
800252f8:	e2822080 	add	r2, r2, #128	@ 0x80
800252fc:	e7831102 	str	r1, [r3, r2, lsl #2]
80025300:	e51b3008 	ldr	r3, [fp, #-8]
80025304:	e5931084 	ldr	r1, [r3, #132]	@ 0x84
80025308:	e51b3010 	ldr	r3, [fp, #-16]
8002530c:	e51b200c 	ldr	r2, [fp, #-12]
80025310:	e28220c0 	add	r2, r2, #192	@ 0xc0
80025314:	e7831102 	str	r1, [r3, r2, lsl #2]
80025318:	e51b3008 	ldr	r3, [fp, #-8]
8002531c:	e5931088 	ldr	r1, [r3, #136]	@ 0x88
80025320:	e51b3010 	ldr	r3, [fp, #-16]
80025324:	e51b200c 	ldr	r2, [fp, #-12]
80025328:	e2822c01 	add	r2, r2, #256	@ 0x100
8002532c:	e7831102 	str	r1, [r3, r2, lsl #2]
80025330:	e51b3008 	ldr	r3, [fp, #-8]
80025334:	e2833094 	add	r3, r3, #148	@ 0x94
80025338:	e50b3008 	str	r3, [fp, #-8]
8002533c:	e51b300c 	ldr	r3, [fp, #-12]
80025340:	e2833001 	add	r3, r3, #1
80025344:	e50b300c 	str	r3, [fp, #-12]
80025348:	e51b3008 	ldr	r3, [fp, #-8]
8002534c:	e59f2024 	ldr	r2, [pc, #36]	@ 80025378 <sched_getpinfo+0x110>
80025350:	e1530002 	cmp	r3, r2
80025354:	3affffd3 	bcc	800252a8 <sched_getpinfo+0x40>
80025358:	e59f0010 	ldr	r0, [pc, #16]	@ 80025370 <sched_getpinfo+0x108>
8002535c:	eb0004be 	bl	8002665c <release>
80025360:	e3a03000 	mov	r3, #0
80025364:	e1a00003 	mov	r0, r3
80025368:	e24bd004 	sub	sp, fp, #4
8002536c:	e8bd8800 	pop	{fp, pc}
80025370:	800ae634 	.word	0x800ae634
80025374:	800ae668 	.word	0x800ae668
80025378:	800b0b68 	.word	0x800b0b68

8002537c <error_init>:
8002537c:	e92d4800 	push	{fp, lr}
80025380:	e28db004 	add	fp, sp, #4
80025384:	e59f0000 	ldr	r0, [pc]	@ 8002538c <error_init+0x10>
80025388:	ebfff1d9 	bl	80021af4 <panic>
8002538c:	80029efc 	.word	0x80029efc

80025390 <userinit>:
80025390:	e92d4810 	push	{r4, fp, lr}
80025394:	e28db008 	add	fp, sp, #8
80025398:	e24dd00c 	sub	sp, sp, #12
8002539c:	ebfffea1 	bl	80024e28 <allocproc>
800253a0:	e50b0010 	str	r0, [fp, #-16]
800253a4:	e59f210c 	ldr	r2, [pc, #268]	@ 800254b8 <userinit+0x128>
800253a8:	e51b3010 	ldr	r3, [fp, #-16]
800253ac:	e5823000 	str	r3, [r2]
800253b0:	e51b3010 	ldr	r3, [fp, #-16]
800253b4:	e3a02001 	mov	r2, #1
800253b8:	e5832080 	str	r2, [r3, #128]	@ 0x80
800253bc:	eb000d2d 	bl	80028878 <kpt_alloc>
800253c0:	e1a02000 	mov	r2, r0
800253c4:	e51b3010 	ldr	r3, [fp, #-16]
800253c8:	e5832004 	str	r2, [r3, #4]
800253cc:	e51b3010 	ldr	r3, [fp, #-16]
800253d0:	e5933004 	ldr	r3, [r3, #4]
800253d4:	e3530000 	cmp	r3, #0
800253d8:	1a000001 	bne	800253e4 <userinit+0x54>
800253dc:	e59f00d8 	ldr	r0, [pc, #216]	@ 800254bc <userinit+0x12c>
800253e0:	ebfff1c3 	bl	80021af4 <panic>
800253e4:	e51b3010 	ldr	r3, [fp, #-16]
800253e8:	e5933004 	ldr	r3, [r3, #4]
800253ec:	e59f20cc 	ldr	r2, [pc, #204]	@ 800254c0 <userinit+0x130>
800253f0:	e59f10cc 	ldr	r1, [pc, #204]	@ 800254c4 <userinit+0x134>
800253f4:	e1a00003 	mov	r0, r3
800253f8:	eb000ddc 	bl	80028b70 <inituvm>
800253fc:	e51b3010 	ldr	r3, [fp, #-16]
80025400:	e3a02a01 	mov	r2, #4096	@ 0x1000
80025404:	e5832000 	str	r2, [r3]
80025408:	e51b3010 	ldr	r3, [fp, #-16]
8002540c:	e593301c 	ldr	r3, [r3, #28]
80025410:	e3a02048 	mov	r2, #72	@ 0x48
80025414:	e3a01000 	mov	r1, #0
80025418:	e1a00003 	mov	r0, r3
8002541c:	ebffeaf7 	bl	80020000 <memset>
80025420:	e51b3010 	ldr	r3, [fp, #-16]
80025424:	e593301c 	ldr	r3, [r3, #28]
80025428:	e59f2098 	ldr	r2, [pc, #152]	@ 800254c8 <userinit+0x138>
8002542c:	e5832008 	str	r2, [r3, #8]
80025430:	e51b3010 	ldr	r3, [fp, #-16]
80025434:	e593401c 	ldr	r4, [r3, #28]
80025438:	ebffec5c 	bl	800205b0 <spsr_usr>
8002543c:	e1a03000 	mov	r3, r0
80025440:	e584300c 	str	r3, [r4, #12]
80025444:	e51b3010 	ldr	r3, [fp, #-16]
80025448:	e593301c 	ldr	r3, [r3, #28]
8002544c:	e3a02a01 	mov	r2, #4096	@ 0x1000
80025450:	e5832000 	str	r2, [r3]
80025454:	e51b3010 	ldr	r3, [fp, #-16]
80025458:	e593301c 	ldr	r3, [r3, #28]
8002545c:	e3a02000 	mov	r2, #0
80025460:	e5832004 	str	r2, [r3, #4]
80025464:	e51b3010 	ldr	r3, [fp, #-16]
80025468:	e593301c 	ldr	r3, [r3, #28]
8002546c:	e3a02000 	mov	r2, #0
80025470:	e5832044 	str	r2, [r3, #68]	@ 0x44
80025474:	e51b3010 	ldr	r3, [fp, #-16]
80025478:	e2833070 	add	r3, r3, #112	@ 0x70
8002547c:	e3a02010 	mov	r2, #16
80025480:	e59f1044 	ldr	r1, [pc, #68]	@ 800254cc <userinit+0x13c>
80025484:	e1a00003 	mov	r0, r3
80025488:	ebffebf0 	bl	80020450 <safestrcpy>
8002548c:	e59f003c 	ldr	r0, [pc, #60]	@ 800254d0 <userinit+0x140>
80025490:	ebfffb04 	bl	800240a8 <namei>
80025494:	e1a02000 	mov	r2, r0
80025498:	e51b3010 	ldr	r3, [fp, #-16]
8002549c:	e583206c 	str	r2, [r3, #108]	@ 0x6c
800254a0:	e51b3010 	ldr	r3, [fp, #-16]
800254a4:	e3a02003 	mov	r2, #3
800254a8:	e5c32010 	strb	r2, [r3, #16]
800254ac:	e1a00000 	nop			@ (mov r0, r0)
800254b0:	e24bd008 	sub	sp, fp, #8
800254b4:	e8bd8810 	pop	{r4, fp, pc}
800254b8:	800b0b68 	.word	0x800b0b68
800254bc:	80029f1c 	.word	0x80029f1c
800254c0:	00000034 	.word	0x00000034
800254c4:	8002b0b8 	.word	0x8002b0b8
800254c8:	8002537c 	.word	0x8002537c
800254cc:	80029f38 	.word	0x80029f38
800254d0:	80029f44 	.word	0x80029f44

800254d4 <growproc>:
800254d4:	e92d4800 	push	{fp, lr}
800254d8:	e28db004 	add	fp, sp, #4
800254dc:	e24dd010 	sub	sp, sp, #16
800254e0:	e50b0010 	str	r0, [fp, #-16]
800254e4:	e59f30d0 	ldr	r3, [pc, #208]	@ 800255bc <growproc+0xe8>
800254e8:	e5933000 	ldr	r3, [r3]
800254ec:	e5933000 	ldr	r3, [r3]
800254f0:	e50b3008 	str	r3, [fp, #-8]
800254f4:	e51b3010 	ldr	r3, [fp, #-16]
800254f8:	e3530000 	cmp	r3, #0
800254fc:	da00000f 	ble	80025540 <growproc+0x6c>
80025500:	e59f30b4 	ldr	r3, [pc, #180]	@ 800255bc <growproc+0xe8>
80025504:	e5933000 	ldr	r3, [r3]
80025508:	e5930004 	ldr	r0, [r3, #4]
8002550c:	e51b2010 	ldr	r2, [fp, #-16]
80025510:	e51b3008 	ldr	r3, [fp, #-8]
80025514:	e0823003 	add	r3, r2, r3
80025518:	e1a02003 	mov	r2, r3
8002551c:	e51b1008 	ldr	r1, [fp, #-8]
80025520:	eb000e00 	bl	80028d28 <allocuvm>
80025524:	e1a03000 	mov	r3, r0
80025528:	e50b3008 	str	r3, [fp, #-8]
8002552c:	e51b3008 	ldr	r3, [fp, #-8]
80025530:	e3530000 	cmp	r3, #0
80025534:	1a000014 	bne	8002558c <growproc+0xb8>
80025538:	e3e03000 	mvn	r3, #0
8002553c:	ea00001b 	b	800255b0 <growproc+0xdc>
80025540:	e51b3010 	ldr	r3, [fp, #-16]
80025544:	e3530000 	cmp	r3, #0
80025548:	aa00000f 	bge	8002558c <growproc+0xb8>
8002554c:	e59f3068 	ldr	r3, [pc, #104]	@ 800255bc <growproc+0xe8>
80025550:	e5933000 	ldr	r3, [r3]
80025554:	e5930004 	ldr	r0, [r3, #4]
80025558:	e51b2010 	ldr	r2, [fp, #-16]
8002555c:	e51b3008 	ldr	r3, [fp, #-8]
80025560:	e0823003 	add	r3, r2, r3
80025564:	e1a02003 	mov	r2, r3
80025568:	e51b1008 	ldr	r1, [fp, #-8]
8002556c:	eb000e2c 	bl	80028e24 <deallocuvm>
80025570:	e1a03000 	mov	r3, r0
80025574:	e50b3008 	str	r3, [fp, #-8]
80025578:	e51b3008 	ldr	r3, [fp, #-8]
8002557c:	e3530000 	cmp	r3, #0
80025580:	1a000001 	bne	8002558c <growproc+0xb8>
80025584:	e3e03000 	mvn	r3, #0
80025588:	ea000008 	b	800255b0 <growproc+0xdc>
8002558c:	e59f3028 	ldr	r3, [pc, #40]	@ 800255bc <growproc+0xe8>
80025590:	e5933000 	ldr	r3, [r3]
80025594:	e51b2008 	ldr	r2, [fp, #-8]
80025598:	e5832000 	str	r2, [r3]
8002559c:	e59f3018 	ldr	r3, [pc, #24]	@ 800255bc <growproc+0xe8>
800255a0:	e5933000 	ldr	r3, [r3]
800255a4:	e1a00003 	mov	r0, r3
800255a8:	eb000d59 	bl	80028b14 <switchuvm>
800255ac:	e3a03000 	mov	r3, #0
800255b0:	e1a00003 	mov	r0, r3
800255b4:	e24bd004 	sub	sp, fp, #4
800255b8:	e8bd8800 	pop	{fp, pc}
800255bc:	800b0b6c 	.word	0x800b0b6c

800255c0 <fork>:
800255c0:	e92d4800 	push	{fp, lr}
800255c4:	e28db004 	add	fp, sp, #4
800255c8:	e24dd010 	sub	sp, sp, #16
800255cc:	ebfffe15 	bl	80024e28 <allocproc>
800255d0:	e50b000c 	str	r0, [fp, #-12]
800255d4:	e51b300c 	ldr	r3, [fp, #-12]
800255d8:	e3530000 	cmp	r3, #0
800255dc:	1a000001 	bne	800255e8 <fork+0x28>
800255e0:	e3e03000 	mvn	r3, #0
800255e4:	ea000073 	b	800257b8 <fork+0x1f8>
800255e8:	e59f31d4 	ldr	r3, [pc, #468]	@ 800257c4 <fork+0x204>
800255ec:	e5933000 	ldr	r3, [r3]
800255f0:	e5932004 	ldr	r2, [r3, #4]
800255f4:	e59f31c8 	ldr	r3, [pc, #456]	@ 800257c4 <fork+0x204>
800255f8:	e5933000 	ldr	r3, [r3]
800255fc:	e5933000 	ldr	r3, [r3]
80025600:	e1a01003 	mov	r1, r3
80025604:	e1a00002 	mov	r0, r2
80025608:	eb000e94 	bl	80029060 <copyuvm>
8002560c:	e1a02000 	mov	r2, r0
80025610:	e51b300c 	ldr	r3, [fp, #-12]
80025614:	e5832004 	str	r2, [r3, #4]
80025618:	e51b300c 	ldr	r3, [fp, #-12]
8002561c:	e5933004 	ldr	r3, [r3, #4]
80025620:	e3530000 	cmp	r3, #0
80025624:	1a00000b 	bne	80025658 <fork+0x98>
80025628:	e51b300c 	ldr	r3, [fp, #-12]
8002562c:	e5933008 	ldr	r3, [r3, #8]
80025630:	e1a00003 	mov	r0, r3
80025634:	ebffeff3 	bl	80021608 <free_page>
80025638:	e51b300c 	ldr	r3, [fp, #-12]
8002563c:	e3a02000 	mov	r2, #0
80025640:	e5832008 	str	r2, [r3, #8]
80025644:	e51b300c 	ldr	r3, [fp, #-12]
80025648:	e3a02000 	mov	r2, #0
8002564c:	e5c32010 	strb	r2, [r3, #16]
80025650:	e3e03000 	mvn	r3, #0
80025654:	ea000057 	b	800257b8 <fork+0x1f8>
80025658:	e59f3164 	ldr	r3, [pc, #356]	@ 800257c4 <fork+0x204>
8002565c:	e5933000 	ldr	r3, [r3]
80025660:	e5932000 	ldr	r2, [r3]
80025664:	e51b300c 	ldr	r3, [fp, #-12]
80025668:	e5832000 	str	r2, [r3]
8002566c:	e59f3150 	ldr	r3, [pc, #336]	@ 800257c4 <fork+0x204>
80025670:	e5932000 	ldr	r2, [r3]
80025674:	e51b300c 	ldr	r3, [fp, #-12]
80025678:	e5832018 	str	r2, [r3, #24]
8002567c:	e59f3140 	ldr	r3, [pc, #320]	@ 800257c4 <fork+0x204>
80025680:	e5933000 	ldr	r3, [r3]
80025684:	e593201c 	ldr	r2, [r3, #28]
80025688:	e51b300c 	ldr	r3, [fp, #-12]
8002568c:	e593301c 	ldr	r3, [r3, #28]
80025690:	e1a00003 	mov	r0, r3
80025694:	e1a01002 	mov	r1, r2
80025698:	e3a03048 	mov	r3, #72	@ 0x48
8002569c:	e1a02003 	mov	r2, r3
800256a0:	ebffeb07 	bl	800202c4 <memcpy>
800256a4:	e59f3118 	ldr	r3, [pc, #280]	@ 800257c4 <fork+0x204>
800256a8:	e5933000 	ldr	r3, [r3]
800256ac:	e5932080 	ldr	r2, [r3, #128]	@ 0x80
800256b0:	e51b300c 	ldr	r3, [fp, #-12]
800256b4:	e5832080 	str	r2, [r3, #128]	@ 0x80
800256b8:	e51b300c 	ldr	r3, [fp, #-12]
800256bc:	e3a02000 	mov	r2, #0
800256c0:	e5832088 	str	r2, [r3, #136]	@ 0x88
800256c4:	e51b300c 	ldr	r3, [fp, #-12]
800256c8:	e593301c 	ldr	r3, [r3, #28]
800256cc:	e3a02000 	mov	r2, #0
800256d0:	e5832010 	str	r2, [r3, #16]
800256d4:	e3a03000 	mov	r3, #0
800256d8:	e50b3008 	str	r3, [fp, #-8]
800256dc:	ea00001b 	b	80025750 <fork+0x190>
800256e0:	e59f30dc 	ldr	r3, [pc, #220]	@ 800257c4 <fork+0x204>
800256e4:	e5932000 	ldr	r2, [r3]
800256e8:	e51b3008 	ldr	r3, [fp, #-8]
800256ec:	e283300a 	add	r3, r3, #10
800256f0:	e1a03103 	lsl	r3, r3, #2
800256f4:	e0823003 	add	r3, r2, r3
800256f8:	e5933004 	ldr	r3, [r3, #4]
800256fc:	e3530000 	cmp	r3, #0
80025700:	0a00000f 	beq	80025744 <fork+0x184>
80025704:	e59f30b8 	ldr	r3, [pc, #184]	@ 800257c4 <fork+0x204>
80025708:	e5932000 	ldr	r2, [r3]
8002570c:	e51b3008 	ldr	r3, [fp, #-8]
80025710:	e283300a 	add	r3, r3, #10
80025714:	e1a03103 	lsl	r3, r3, #2
80025718:	e0823003 	add	r3, r2, r3
8002571c:	e5933004 	ldr	r3, [r3, #4]
80025720:	e1a00003 	mov	r0, r3
80025724:	ebfff3a8 	bl	800225cc <filedup>
80025728:	e1a01000 	mov	r1, r0
8002572c:	e51b200c 	ldr	r2, [fp, #-12]
80025730:	e51b3008 	ldr	r3, [fp, #-8]
80025734:	e283300a 	add	r3, r3, #10
80025738:	e1a03103 	lsl	r3, r3, #2
8002573c:	e0823003 	add	r3, r2, r3
80025740:	e5831004 	str	r1, [r3, #4]
80025744:	e51b3008 	ldr	r3, [fp, #-8]
80025748:	e2833001 	add	r3, r3, #1
8002574c:	e50b3008 	str	r3, [fp, #-8]
80025750:	e51b3008 	ldr	r3, [fp, #-8]
80025754:	e353000f 	cmp	r3, #15
80025758:	daffffe0 	ble	800256e0 <fork+0x120>
8002575c:	e59f3060 	ldr	r3, [pc, #96]	@ 800257c4 <fork+0x204>
80025760:	e5933000 	ldr	r3, [r3]
80025764:	e593306c 	ldr	r3, [r3, #108]	@ 0x6c
80025768:	e1a00003 	mov	r0, r3
8002576c:	ebfff668 	bl	80023114 <idup>
80025770:	e1a02000 	mov	r2, r0
80025774:	e51b300c 	ldr	r3, [fp, #-12]
80025778:	e583206c 	str	r2, [r3, #108]	@ 0x6c
8002577c:	e51b300c 	ldr	r3, [fp, #-12]
80025780:	e5933014 	ldr	r3, [r3, #20]
80025784:	e50b3010 	str	r3, [fp, #-16]
80025788:	e51b300c 	ldr	r3, [fp, #-12]
8002578c:	e3a02003 	mov	r2, #3
80025790:	e5c32010 	strb	r2, [r3, #16]
80025794:	e51b300c 	ldr	r3, [fp, #-12]
80025798:	e2830070 	add	r0, r3, #112	@ 0x70
8002579c:	e59f3020 	ldr	r3, [pc, #32]	@ 800257c4 <fork+0x204>
800257a0:	e5933000 	ldr	r3, [r3]
800257a4:	e2833070 	add	r3, r3, #112	@ 0x70
800257a8:	e3a02010 	mov	r2, #16
800257ac:	e1a01003 	mov	r1, r3
800257b0:	ebffeb26 	bl	80020450 <safestrcpy>
800257b4:	e51b3010 	ldr	r3, [fp, #-16]
800257b8:	e1a00003 	mov	r0, r3
800257bc:	e24bd004 	sub	sp, fp, #4
800257c0:	e8bd8800 	pop	{fp, pc}
800257c4:	800b0b6c 	.word	0x800b0b6c

800257c8 <exit>:
800257c8:	e92d4800 	push	{fp, lr}
800257cc:	e28db004 	add	fp, sp, #4
800257d0:	e24dd008 	sub	sp, sp, #8
800257d4:	e59f3170 	ldr	r3, [pc, #368]	@ 8002594c <exit+0x184>
800257d8:	e5932000 	ldr	r2, [r3]
800257dc:	e59f316c 	ldr	r3, [pc, #364]	@ 80025950 <exit+0x188>
800257e0:	e5933000 	ldr	r3, [r3]
800257e4:	e1520003 	cmp	r2, r3
800257e8:	1a000001 	bne	800257f4 <exit+0x2c>
800257ec:	e59f0160 	ldr	r0, [pc, #352]	@ 80025954 <exit+0x18c>
800257f0:	ebfff0bf 	bl	80021af4 <panic>
800257f4:	e3a03000 	mov	r3, #0
800257f8:	e50b300c 	str	r3, [fp, #-12]
800257fc:	ea00001c 	b	80025874 <exit+0xac>
80025800:	e59f3144 	ldr	r3, [pc, #324]	@ 8002594c <exit+0x184>
80025804:	e5932000 	ldr	r2, [r3]
80025808:	e51b300c 	ldr	r3, [fp, #-12]
8002580c:	e283300a 	add	r3, r3, #10
80025810:	e1a03103 	lsl	r3, r3, #2
80025814:	e0823003 	add	r3, r2, r3
80025818:	e5933004 	ldr	r3, [r3, #4]
8002581c:	e3530000 	cmp	r3, #0
80025820:	0a000010 	beq	80025868 <exit+0xa0>
80025824:	e59f3120 	ldr	r3, [pc, #288]	@ 8002594c <exit+0x184>
80025828:	e5932000 	ldr	r2, [r3]
8002582c:	e51b300c 	ldr	r3, [fp, #-12]
80025830:	e283300a 	add	r3, r3, #10
80025834:	e1a03103 	lsl	r3, r3, #2
80025838:	e0823003 	add	r3, r2, r3
8002583c:	e5933004 	ldr	r3, [r3, #4]
80025840:	e1a00003 	mov	r0, r3
80025844:	ebfff379 	bl	80022630 <fileclose>
80025848:	e59f30fc 	ldr	r3, [pc, #252]	@ 8002594c <exit+0x184>
8002584c:	e5932000 	ldr	r2, [r3]
80025850:	e51b300c 	ldr	r3, [fp, #-12]
80025854:	e283300a 	add	r3, r3, #10
80025858:	e1a03103 	lsl	r3, r3, #2
8002585c:	e0823003 	add	r3, r2, r3
80025860:	e3a02000 	mov	r2, #0
80025864:	e5832004 	str	r2, [r3, #4]
80025868:	e51b300c 	ldr	r3, [fp, #-12]
8002586c:	e2833001 	add	r3, r3, #1
80025870:	e50b300c 	str	r3, [fp, #-12]
80025874:	e51b300c 	ldr	r3, [fp, #-12]
80025878:	e353000f 	cmp	r3, #15
8002587c:	daffffdf 	ble	80025800 <exit+0x38>
80025880:	e59f30c4 	ldr	r3, [pc, #196]	@ 8002594c <exit+0x184>
80025884:	e5933000 	ldr	r3, [r3]
80025888:	e593306c 	ldr	r3, [r3, #108]	@ 0x6c
8002588c:	e1a00003 	mov	r0, r3
80025890:	ebfff6b7 	bl	80023374 <iput>
80025894:	e59f30b0 	ldr	r3, [pc, #176]	@ 8002594c <exit+0x184>
80025898:	e5933000 	ldr	r3, [r3]
8002589c:	e3a02000 	mov	r2, #0
800258a0:	e583206c 	str	r2, [r3, #108]	@ 0x6c
800258a4:	e59f00ac 	ldr	r0, [pc, #172]	@ 80025958 <exit+0x190>
800258a8:	eb000360 	bl	80026630 <acquire>
800258ac:	e59f3098 	ldr	r3, [pc, #152]	@ 8002594c <exit+0x184>
800258b0:	e5933000 	ldr	r3, [r3]
800258b4:	e5933018 	ldr	r3, [r3, #24]
800258b8:	e1a00003 	mov	r0, r3
800258bc:	eb0001e7 	bl	80026060 <wakeup1>
800258c0:	e59f3094 	ldr	r3, [pc, #148]	@ 8002595c <exit+0x194>
800258c4:	e50b3008 	str	r3, [fp, #-8]
800258c8:	ea000014 	b	80025920 <exit+0x158>
800258cc:	e51b3008 	ldr	r3, [fp, #-8]
800258d0:	e5932018 	ldr	r2, [r3, #24]
800258d4:	e59f3070 	ldr	r3, [pc, #112]	@ 8002594c <exit+0x184>
800258d8:	e5933000 	ldr	r3, [r3]
800258dc:	e1520003 	cmp	r2, r3
800258e0:	1a00000b 	bne	80025914 <exit+0x14c>
800258e4:	e59f3064 	ldr	r3, [pc, #100]	@ 80025950 <exit+0x188>
800258e8:	e5932000 	ldr	r2, [r3]
800258ec:	e51b3008 	ldr	r3, [fp, #-8]
800258f0:	e5832018 	str	r2, [r3, #24]
800258f4:	e51b3008 	ldr	r3, [fp, #-8]
800258f8:	e5d33010 	ldrb	r3, [r3, #16]
800258fc:	e3530005 	cmp	r3, #5
80025900:	1a000003 	bne	80025914 <exit+0x14c>
80025904:	e59f3044 	ldr	r3, [pc, #68]	@ 80025950 <exit+0x188>
80025908:	e5933000 	ldr	r3, [r3]
8002590c:	e1a00003 	mov	r0, r3
80025910:	eb0001d2 	bl	80026060 <wakeup1>
80025914:	e51b3008 	ldr	r3, [fp, #-8]
80025918:	e2833094 	add	r3, r3, #148	@ 0x94
8002591c:	e50b3008 	str	r3, [fp, #-8]
80025920:	e51b3008 	ldr	r3, [fp, #-8]
80025924:	e59f2034 	ldr	r2, [pc, #52]	@ 80025960 <exit+0x198>
80025928:	e1530002 	cmp	r3, r2
8002592c:	3affffe6 	bcc	800258cc <exit+0x104>
80025930:	e59f3014 	ldr	r3, [pc, #20]	@ 8002594c <exit+0x184>
80025934:	e5933000 	ldr	r3, [r3]
80025938:	e3a02005 	mov	r2, #5
8002593c:	e5c32010 	strb	r2, [r3, #16]
80025940:	eb00011c 	bl	80025db8 <sched>
80025944:	e59f0018 	ldr	r0, [pc, #24]	@ 80025964 <exit+0x19c>
80025948:	ebfff069 	bl	80021af4 <panic>
8002594c:	800b0b6c 	.word	0x800b0b6c
80025950:	800b0b68 	.word	0x800b0b68
80025954:	80029f48 	.word	0x80029f48
80025958:	800ae634 	.word	0x800ae634
8002595c:	800ae668 	.word	0x800ae668
80025960:	800b0b68 	.word	0x800b0b68
80025964:	80029f58 	.word	0x80029f58

80025968 <wait>:
80025968:	e92d4800 	push	{fp, lr}
8002596c:	e28db004 	add	fp, sp, #4
80025970:	e24dd010 	sub	sp, sp, #16
80025974:	e59f013c 	ldr	r0, [pc, #316]	@ 80025ab8 <wait+0x150>
80025978:	eb00032c 	bl	80026630 <acquire>
8002597c:	e3a03000 	mov	r3, #0
80025980:	e50b300c 	str	r3, [fp, #-12]
80025984:	e59f3130 	ldr	r3, [pc, #304]	@ 80025abc <wait+0x154>
80025988:	e50b3008 	str	r3, [fp, #-8]
8002598c:	ea000030 	b	80025a54 <wait+0xec>
80025990:	e51b3008 	ldr	r3, [fp, #-8]
80025994:	e5932018 	ldr	r2, [r3, #24]
80025998:	e59f3120 	ldr	r3, [pc, #288]	@ 80025ac0 <wait+0x158>
8002599c:	e5933000 	ldr	r3, [r3]
800259a0:	e1520003 	cmp	r2, r3
800259a4:	1a000026 	bne	80025a44 <wait+0xdc>
800259a8:	e3a03001 	mov	r3, #1
800259ac:	e50b300c 	str	r3, [fp, #-12]
800259b0:	e51b3008 	ldr	r3, [fp, #-8]
800259b4:	e5d33010 	ldrb	r3, [r3, #16]
800259b8:	e3530005 	cmp	r3, #5
800259bc:	1a000021 	bne	80025a48 <wait+0xe0>
800259c0:	e51b3008 	ldr	r3, [fp, #-8]
800259c4:	e5933014 	ldr	r3, [r3, #20]
800259c8:	e50b3010 	str	r3, [fp, #-16]
800259cc:	e51b3008 	ldr	r3, [fp, #-8]
800259d0:	e5933008 	ldr	r3, [r3, #8]
800259d4:	e1a00003 	mov	r0, r3
800259d8:	ebffef0a 	bl	80021608 <free_page>
800259dc:	e51b3008 	ldr	r3, [fp, #-8]
800259e0:	e3a02000 	mov	r2, #0
800259e4:	e5832008 	str	r2, [r3, #8]
800259e8:	e51b3008 	ldr	r3, [fp, #-8]
800259ec:	e5933004 	ldr	r3, [r3, #4]
800259f0:	e1a00003 	mov	r0, r3
800259f4:	eb000d50 	bl	80028f3c <freevm>
800259f8:	e51b3008 	ldr	r3, [fp, #-8]
800259fc:	e3a02000 	mov	r2, #0
80025a00:	e5c32010 	strb	r2, [r3, #16]
80025a04:	e51b3008 	ldr	r3, [fp, #-8]
80025a08:	e3a02000 	mov	r2, #0
80025a0c:	e5832014 	str	r2, [r3, #20]
80025a10:	e51b3008 	ldr	r3, [fp, #-8]
80025a14:	e3a02000 	mov	r2, #0
80025a18:	e5832018 	str	r2, [r3, #24]
80025a1c:	e51b3008 	ldr	r3, [fp, #-8]
80025a20:	e3a02000 	mov	r2, #0
80025a24:	e5c32070 	strb	r2, [r3, #112]	@ 0x70
80025a28:	e51b3008 	ldr	r3, [fp, #-8]
80025a2c:	e3a02000 	mov	r2, #0
80025a30:	e5832028 	str	r2, [r3, #40]	@ 0x28
80025a34:	e59f007c 	ldr	r0, [pc, #124]	@ 80025ab8 <wait+0x150>
80025a38:	eb000307 	bl	8002665c <release>
80025a3c:	e51b3010 	ldr	r3, [fp, #-16]
80025a40:	ea000019 	b	80025aac <wait+0x144>
80025a44:	e1a00000 	nop			@ (mov r0, r0)
80025a48:	e51b3008 	ldr	r3, [fp, #-8]
80025a4c:	e2833094 	add	r3, r3, #148	@ 0x94
80025a50:	e50b3008 	str	r3, [fp, #-8]
80025a54:	e51b3008 	ldr	r3, [fp, #-8]
80025a58:	e59f2064 	ldr	r2, [pc, #100]	@ 80025ac4 <wait+0x15c>
80025a5c:	e1530002 	cmp	r3, r2
80025a60:	3affffca 	bcc	80025990 <wait+0x28>
80025a64:	e51b300c 	ldr	r3, [fp, #-12]
80025a68:	e3530000 	cmp	r3, #0
80025a6c:	0a000004 	beq	80025a84 <wait+0x11c>
80025a70:	e59f3048 	ldr	r3, [pc, #72]	@ 80025ac0 <wait+0x158>
80025a74:	e5933000 	ldr	r3, [r3]
80025a78:	e5933028 	ldr	r3, [r3, #40]	@ 0x28
80025a7c:	e3530000 	cmp	r3, #0
80025a80:	0a000003 	beq	80025a94 <wait+0x12c>
80025a84:	e59f002c 	ldr	r0, [pc, #44]	@ 80025ab8 <wait+0x150>
80025a88:	eb0002f3 	bl	8002665c <release>
80025a8c:	e3e03000 	mvn	r3, #0
80025a90:	ea000005 	b	80025aac <wait+0x144>
80025a94:	e59f3024 	ldr	r3, [pc, #36]	@ 80025ac0 <wait+0x158>
80025a98:	e5933000 	ldr	r3, [r3]
80025a9c:	e59f1014 	ldr	r1, [pc, #20]	@ 80025ab8 <wait+0x150>
80025aa0:	e1a00003 	mov	r0, r3
80025aa4:	eb00011b 	bl	80025f18 <sleep>
80025aa8:	eaffffb3 	b	8002597c <wait+0x14>
80025aac:	e1a00003 	mov	r0, r3
80025ab0:	e24bd004 	sub	sp, fp, #4
80025ab4:	e8bd8800 	pop	{fp, pc}
80025ab8:	800ae634 	.word	0x800ae634
80025abc:	800ae668 	.word	0x800ae668
80025ac0:	800b0b6c 	.word	0x800b0b6c
80025ac4:	800b0b68 	.word	0x800b0b68

80025ac8 <hold_lottery_locked>:
80025ac8:	e92d4800 	push	{fp, lr}
80025acc:	e28db004 	add	fp, sp, #4
80025ad0:	e24dd020 	sub	sp, sp, #32
80025ad4:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80025ad8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80025adc:	e3530000 	cmp	r3, #0
80025ae0:	ca000003 	bgt	80025af4 <hold_lottery_locked+0x2c>
80025ae4:	e59f00d4 	ldr	r0, [pc, #212]	@ 80025bc0 <hold_lottery_locked+0xf8>
80025ae8:	ebffef69 	bl	80021894 <cprintf>
80025aec:	e3a03000 	mov	r3, #0
80025af0:	ea00002f 	b	80025bb4 <hold_lottery_locked+0xec>
80025af4:	ebfffcaf 	bl	80024db8 <rand>
80025af8:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80025afc:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80025b00:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025b04:	e1a01002 	mov	r1, r2
80025b08:	e1a00003 	mov	r0, r3
80025b0c:	eb000fcf 	bl	80029a50 <__aeabi_uidivmod>
80025b10:	e1a03001 	mov	r3, r1
80025b14:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80025b18:	e3a03000 	mov	r3, #0
80025b1c:	e50b3008 	str	r3, [fp, #-8]
80025b20:	e59f309c 	ldr	r3, [pc, #156]	@ 80025bc4 <hold_lottery_locked+0xfc>
80025b24:	e50b300c 	str	r3, [fp, #-12]
80025b28:	ea00001c 	b	80025ba0 <hold_lottery_locked+0xd8>
80025b2c:	e51b300c 	ldr	r3, [fp, #-12]
80025b30:	e5d33010 	ldrb	r3, [r3, #16]
80025b34:	e3530003 	cmp	r3, #3
80025b38:	1a000014 	bne	80025b90 <hold_lottery_locked+0xc8>
80025b3c:	e51b300c 	ldr	r3, [fp, #-12]
80025b40:	e5933080 	ldr	r3, [r3, #128]	@ 0x80
80025b44:	e1c33fc3 	bic	r3, r3, r3, asr #31
80025b48:	e50b3010 	str	r3, [fp, #-16]
80025b4c:	e51b300c 	ldr	r3, [fp, #-12]
80025b50:	e5933088 	ldr	r3, [r3, #136]	@ 0x88
80025b54:	e3530000 	cmp	r3, #0
80025b58:	da000002 	ble	80025b68 <hold_lottery_locked+0xa0>
80025b5c:	e51b3010 	ldr	r3, [fp, #-16]
80025b60:	e1a03083 	lsl	r3, r3, #1
80025b64:	e50b3010 	str	r3, [fp, #-16]
80025b68:	e51b2008 	ldr	r2, [fp, #-8]
80025b6c:	e51b3010 	ldr	r3, [fp, #-16]
80025b70:	e0823003 	add	r3, r2, r3
80025b74:	e50b3008 	str	r3, [fp, #-8]
80025b78:	e51b3008 	ldr	r3, [fp, #-8]
80025b7c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80025b80:	e1520003 	cmp	r2, r3
80025b84:	2a000002 	bcs	80025b94 <hold_lottery_locked+0xcc>
80025b88:	e51b300c 	ldr	r3, [fp, #-12]
80025b8c:	ea000008 	b	80025bb4 <hold_lottery_locked+0xec>
80025b90:	e1a00000 	nop			@ (mov r0, r0)
80025b94:	e51b300c 	ldr	r3, [fp, #-12]
80025b98:	e2833094 	add	r3, r3, #148	@ 0x94
80025b9c:	e50b300c 	str	r3, [fp, #-12]
80025ba0:	e51b300c 	ldr	r3, [fp, #-12]
80025ba4:	e59f201c 	ldr	r2, [pc, #28]	@ 80025bc8 <hold_lottery_locked+0x100>
80025ba8:	e1530002 	cmp	r3, r2
80025bac:	3affffde 	bcc	80025b2c <hold_lottery_locked+0x64>
80025bb0:	e3a03000 	mov	r3, #0
80025bb4:	e1a00003 	mov	r0, r3
80025bb8:	e24bd004 	sub	sp, fp, #4
80025bbc:	e8bd8800 	pop	{fp, pc}
80025bc0:	80029f64 	.word	0x80029f64
80025bc4:	800ae668 	.word	0x800ae668
80025bc8:	800b0b68 	.word	0x800b0b68

80025bcc <scheduler>:
80025bcc:	e92d4800 	push	{fp, lr}
80025bd0:	e28db004 	add	fp, sp, #4
80025bd4:	e24dd018 	sub	sp, sp, #24
80025bd8:	ebffea66 	bl	80020578 <sti>
80025bdc:	e59f01c0 	ldr	r0, [pc, #448]	@ 80025da4 <scheduler+0x1d8>
80025be0:	eb000292 	bl	80026630 <acquire>
80025be4:	e3a03000 	mov	r3, #0
80025be8:	e50b3008 	str	r3, [fp, #-8]
80025bec:	e59f31b4 	ldr	r3, [pc, #436]	@ 80025da8 <scheduler+0x1dc>
80025bf0:	e50b300c 	str	r3, [fp, #-12]
80025bf4:	ea000017 	b	80025c58 <scheduler+0x8c>
80025bf8:	e51b300c 	ldr	r3, [fp, #-12]
80025bfc:	e5d33010 	ldrb	r3, [r3, #16]
80025c00:	e3530003 	cmp	r3, #3
80025c04:	1a00000f 	bne	80025c48 <scheduler+0x7c>
80025c08:	e51b300c 	ldr	r3, [fp, #-12]
80025c0c:	e5933080 	ldr	r3, [r3, #128]	@ 0x80
80025c10:	e1c33fc3 	bic	r3, r3, r3, asr #31
80025c14:	e50b3010 	str	r3, [fp, #-16]
80025c18:	e51b300c 	ldr	r3, [fp, #-12]
80025c1c:	e5933088 	ldr	r3, [r3, #136]	@ 0x88
80025c20:	e3530000 	cmp	r3, #0
80025c24:	da000002 	ble	80025c34 <scheduler+0x68>
80025c28:	e51b3010 	ldr	r3, [fp, #-16]
80025c2c:	e1a03083 	lsl	r3, r3, #1
80025c30:	e50b3010 	str	r3, [fp, #-16]
80025c34:	e51b2008 	ldr	r2, [fp, #-8]
80025c38:	e51b3010 	ldr	r3, [fp, #-16]
80025c3c:	e0823003 	add	r3, r2, r3
80025c40:	e50b3008 	str	r3, [fp, #-8]
80025c44:	ea000000 	b	80025c4c <scheduler+0x80>
80025c48:	e1a00000 	nop			@ (mov r0, r0)
80025c4c:	e51b300c 	ldr	r3, [fp, #-12]
80025c50:	e2833094 	add	r3, r3, #148	@ 0x94
80025c54:	e50b300c 	str	r3, [fp, #-12]
80025c58:	e51b300c 	ldr	r3, [fp, #-12]
80025c5c:	e59f2148 	ldr	r2, [pc, #328]	@ 80025dac <scheduler+0x1e0>
80025c60:	e1530002 	cmp	r3, r2
80025c64:	3affffe3 	bcc	80025bf8 <scheduler+0x2c>
80025c68:	e51b3008 	ldr	r3, [fp, #-8]
80025c6c:	e3530000 	cmp	r3, #0
80025c70:	da000048 	ble	80025d98 <scheduler+0x1cc>
80025c74:	e51b0008 	ldr	r0, [fp, #-8]
80025c78:	ebffff92 	bl	80025ac8 <hold_lottery_locked>
80025c7c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80025c80:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025c84:	e3530000 	cmp	r3, #0
80025c88:	0a000042 	beq	80025d98 <scheduler+0x1cc>
80025c8c:	e59f211c 	ldr	r2, [pc, #284]	@ 80025db0 <scheduler+0x1e4>
80025c90:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025c94:	e5823000 	str	r3, [r2]
80025c98:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80025c9c:	eb000b9c 	bl	80028b14 <switchuvm>
80025ca0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025ca4:	e3a02004 	mov	r2, #4
80025ca8:	e5c32010 	strb	r2, [r3, #16]
80025cac:	e59f3100 	ldr	r3, [pc, #256]	@ 80025db4 <scheduler+0x1e8>
80025cb0:	e5933000 	ldr	r3, [r3]
80025cb4:	e2832004 	add	r2, r3, #4
80025cb8:	e59f30f0 	ldr	r3, [pc, #240]	@ 80025db0 <scheduler+0x1e4>
80025cbc:	e5933000 	ldr	r3, [r3]
80025cc0:	e5933020 	ldr	r3, [r3, #32]
80025cc4:	e1a01003 	mov	r1, r3
80025cc8:	e1a00002 	mov	r0, r2
80025ccc:	eb000277 	bl	800266b0 <swtch>
80025cd0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025cd4:	e5933084 	ldr	r3, [r3, #132]	@ 0x84
80025cd8:	e2832001 	add	r2, r3, #1
80025cdc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025ce0:	e5832084 	str	r2, [r3, #132]	@ 0x84
80025ce4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025ce8:	e5d33010 	ldrb	r3, [r3, #16]
80025cec:	e3530003 	cmp	r3, #3
80025cf0:	03a03001 	moveq	r3, #1
80025cf4:	13a03000 	movne	r3, #0
80025cf8:	e6ef3073 	uxtb	r3, r3
80025cfc:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80025d00:	e59f30a0 	ldr	r3, [pc, #160]	@ 80025da8 <scheduler+0x1dc>
80025d04:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80025d08:	ea00000f 	b	80025d4c <scheduler+0x180>
80025d0c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025d10:	e5d33010 	ldrb	r3, [r3, #16]
80025d14:	e3530003 	cmp	r3, #3
80025d18:	1a000008 	bne	80025d40 <scheduler+0x174>
80025d1c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025d20:	e5933088 	ldr	r3, [r3, #136]	@ 0x88
80025d24:	e3530000 	cmp	r3, #0
80025d28:	da000004 	ble	80025d40 <scheduler+0x174>
80025d2c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025d30:	e5933088 	ldr	r3, [r3, #136]	@ 0x88
80025d34:	e2432001 	sub	r2, r3, #1
80025d38:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025d3c:	e5832088 	str	r2, [r3, #136]	@ 0x88
80025d40:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025d44:	e2833094 	add	r3, r3, #148	@ 0x94
80025d48:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80025d4c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025d50:	e59f2054 	ldr	r2, [pc, #84]	@ 80025dac <scheduler+0x1e0>
80025d54:	e1530002 	cmp	r3, r2
80025d58:	3affffeb 	bcc	80025d0c <scheduler+0x140>
80025d5c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80025d60:	e3530000 	cmp	r3, #0
80025d64:	1a000008 	bne	80025d8c <scheduler+0x1c0>
80025d68:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025d6c:	e5933088 	ldr	r3, [r3, #136]	@ 0x88
80025d70:	e3530000 	cmp	r3, #0
80025d74:	da000004 	ble	80025d8c <scheduler+0x1c0>
80025d78:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025d7c:	e5933088 	ldr	r3, [r3, #136]	@ 0x88
80025d80:	e2432001 	sub	r2, r3, #1
80025d84:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025d88:	e5832088 	str	r2, [r3, #136]	@ 0x88
80025d8c:	e59f301c 	ldr	r3, [pc, #28]	@ 80025db0 <scheduler+0x1e4>
80025d90:	e3a02000 	mov	r2, #0
80025d94:	e5832000 	str	r2, [r3]
80025d98:	e59f0004 	ldr	r0, [pc, #4]	@ 80025da4 <scheduler+0x1d8>
80025d9c:	eb00022e 	bl	8002665c <release>
80025da0:	eaffff8c 	b	80025bd8 <scheduler+0xc>
80025da4:	800ae634 	.word	0x800ae634
80025da8:	800ae668 	.word	0x800ae668
80025dac:	800b0b68 	.word	0x800b0b68
80025db0:	800b0b6c 	.word	0x800b0b6c
80025db4:	800ae624 	.word	0x800ae624

80025db8 <sched>:
80025db8:	e92d4800 	push	{fp, lr}
80025dbc:	e28db004 	add	fp, sp, #4
80025dc0:	e24dd008 	sub	sp, sp, #8
80025dc4:	e59f00b4 	ldr	r0, [pc, #180]	@ 80025e80 <sched+0xc8>
80025dc8:	eb00022e 	bl	80026688 <holding>
80025dcc:	e1a03000 	mov	r3, r0
80025dd0:	e3530000 	cmp	r3, #0
80025dd4:	1a000001 	bne	80025de0 <sched+0x28>
80025dd8:	e59f00a4 	ldr	r0, [pc, #164]	@ 80025e84 <sched+0xcc>
80025ddc:	ebffef44 	bl	80021af4 <panic>
80025de0:	e59f30a0 	ldr	r3, [pc, #160]	@ 80025e88 <sched+0xd0>
80025de4:	e5933000 	ldr	r3, [r3]
80025de8:	e593300c 	ldr	r3, [r3, #12]
80025dec:	e3530001 	cmp	r3, #1
80025df0:	0a000001 	beq	80025dfc <sched+0x44>
80025df4:	e59f0090 	ldr	r0, [pc, #144]	@ 80025e8c <sched+0xd4>
80025df8:	ebffef3d 	bl	80021af4 <panic>
80025dfc:	e59f308c 	ldr	r3, [pc, #140]	@ 80025e90 <sched+0xd8>
80025e00:	e5933000 	ldr	r3, [r3]
80025e04:	e5d33010 	ldrb	r3, [r3, #16]
80025e08:	e3530004 	cmp	r3, #4
80025e0c:	1a000001 	bne	80025e18 <sched+0x60>
80025e10:	e59f007c 	ldr	r0, [pc, #124]	@ 80025e94 <sched+0xdc>
80025e14:	ebffef36 	bl	80021af4 <panic>
80025e18:	ebffe9f4 	bl	800205f0 <int_enabled>
80025e1c:	e1a03000 	mov	r3, r0
80025e20:	e3530000 	cmp	r3, #0
80025e24:	0a000001 	beq	80025e30 <sched+0x78>
80025e28:	e59f0068 	ldr	r0, [pc, #104]	@ 80025e98 <sched+0xe0>
80025e2c:	ebffef30 	bl	80021af4 <panic>
80025e30:	e59f3050 	ldr	r3, [pc, #80]	@ 80025e88 <sched+0xd0>
80025e34:	e5933000 	ldr	r3, [r3]
80025e38:	e5933010 	ldr	r3, [r3, #16]
80025e3c:	e50b3008 	str	r3, [fp, #-8]
80025e40:	e59f3048 	ldr	r3, [pc, #72]	@ 80025e90 <sched+0xd8>
80025e44:	e5933000 	ldr	r3, [r3]
80025e48:	e2832020 	add	r2, r3, #32
80025e4c:	e59f3034 	ldr	r3, [pc, #52]	@ 80025e88 <sched+0xd0>
80025e50:	e5933000 	ldr	r3, [r3]
80025e54:	e5933004 	ldr	r3, [r3, #4]
80025e58:	e1a01003 	mov	r1, r3
80025e5c:	e1a00002 	mov	r0, r2
80025e60:	eb000212 	bl	800266b0 <swtch>
80025e64:	e59f301c 	ldr	r3, [pc, #28]	@ 80025e88 <sched+0xd0>
80025e68:	e5933000 	ldr	r3, [r3]
80025e6c:	e51b2008 	ldr	r2, [fp, #-8]
80025e70:	e5832010 	str	r2, [r3, #16]
80025e74:	e1a00000 	nop			@ (mov r0, r0)
80025e78:	e24bd004 	sub	sp, fp, #4
80025e7c:	e8bd8800 	pop	{fp, pc}
80025e80:	800ae634 	.word	0x800ae634
80025e84:	80029f94 	.word	0x80029f94
80025e88:	800ae624 	.word	0x800ae624
80025e8c:	80029fa8 	.word	0x80029fa8
80025e90:	800b0b6c 	.word	0x800b0b6c
80025e94:	80029fb4 	.word	0x80029fb4
80025e98:	80029fc4 	.word	0x80029fc4

80025e9c <yield>:
80025e9c:	e92d4800 	push	{fp, lr}
80025ea0:	e28db004 	add	fp, sp, #4
80025ea4:	e59f0024 	ldr	r0, [pc, #36]	@ 80025ed0 <yield+0x34>
80025ea8:	eb0001e0 	bl	80026630 <acquire>
80025eac:	e59f3020 	ldr	r3, [pc, #32]	@ 80025ed4 <yield+0x38>
80025eb0:	e5933000 	ldr	r3, [r3]
80025eb4:	e3a02003 	mov	r2, #3
80025eb8:	e5c32010 	strb	r2, [r3, #16]
80025ebc:	ebffffbd 	bl	80025db8 <sched>
80025ec0:	e59f0008 	ldr	r0, [pc, #8]	@ 80025ed0 <yield+0x34>
80025ec4:	eb0001e4 	bl	8002665c <release>
80025ec8:	e1a00000 	nop			@ (mov r0, r0)
80025ecc:	e8bd8800 	pop	{fp, pc}
80025ed0:	800ae634 	.word	0x800ae634
80025ed4:	800b0b6c 	.word	0x800b0b6c

80025ed8 <forkret>:
80025ed8:	e92d4800 	push	{fp, lr}
80025edc:	e28db004 	add	fp, sp, #4
80025ee0:	e59f0028 	ldr	r0, [pc, #40]	@ 80025f10 <forkret+0x38>
80025ee4:	eb0001dc 	bl	8002665c <release>
80025ee8:	e59f3024 	ldr	r3, [pc, #36]	@ 80025f14 <forkret+0x3c>
80025eec:	e5933000 	ldr	r3, [r3]
80025ef0:	e3530000 	cmp	r3, #0
80025ef4:	0a000003 	beq	80025f08 <forkret+0x30>
80025ef8:	e59f3014 	ldr	r3, [pc, #20]	@ 80025f14 <forkret+0x3c>
80025efc:	e3a02000 	mov	r2, #0
80025f00:	e5832000 	str	r2, [r3]
80025f04:	ebfff881 	bl	80024110 <initlog>
80025f08:	e1a00000 	nop			@ (mov r0, r0)
80025f0c:	e8bd8800 	pop	{fp, pc}
80025f10:	800ae634 	.word	0x800ae634
80025f14:	8002b030 	.word	0x8002b030

80025f18 <sleep>:
80025f18:	e92d4800 	push	{fp, lr}
80025f1c:	e28db004 	add	fp, sp, #4
80025f20:	e24dd010 	sub	sp, sp, #16
80025f24:	e50b0010 	str	r0, [fp, #-16]
80025f28:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80025f2c:	e59f3118 	ldr	r3, [pc, #280]	@ 8002604c <sleep+0x134>
80025f30:	e5933000 	ldr	r3, [r3]
80025f34:	e3530000 	cmp	r3, #0
80025f38:	1a000001 	bne	80025f44 <sleep+0x2c>
80025f3c:	e59f010c 	ldr	r0, [pc, #268]	@ 80026050 <sleep+0x138>
80025f40:	ebffeeeb 	bl	80021af4 <panic>
80025f44:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025f48:	e3530000 	cmp	r3, #0
80025f4c:	1a000001 	bne	80025f58 <sleep+0x40>
80025f50:	e59f00fc 	ldr	r0, [pc, #252]	@ 80026054 <sleep+0x13c>
80025f54:	ebffeee6 	bl	80021af4 <panic>
80025f58:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025f5c:	e59f20f4 	ldr	r2, [pc, #244]	@ 80026058 <sleep+0x140>
80025f60:	e1530002 	cmp	r3, r2
80025f64:	0a000003 	beq	80025f78 <sleep+0x60>
80025f68:	e59f00e8 	ldr	r0, [pc, #232]	@ 80026058 <sleep+0x140>
80025f6c:	eb0001af 	bl	80026630 <acquire>
80025f70:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80025f74:	eb0001b8 	bl	8002665c <release>
80025f78:	e59f30cc 	ldr	r3, [pc, #204]	@ 8002604c <sleep+0x134>
80025f7c:	e5933000 	ldr	r3, [r3]
80025f80:	e51b2010 	ldr	r2, [fp, #-16]
80025f84:	e5832024 	str	r2, [r3, #36]	@ 0x24
80025f88:	e59f30bc 	ldr	r3, [pc, #188]	@ 8002604c <sleep+0x134>
80025f8c:	e5933000 	ldr	r3, [r3]
80025f90:	e3a02002 	mov	r2, #2
80025f94:	e5c32010 	strb	r2, [r3, #16]
80025f98:	e51b3010 	ldr	r3, [fp, #-16]
80025f9c:	e59f20b8 	ldr	r2, [pc, #184]	@ 8002605c <sleep+0x144>
80025fa0:	e1530002 	cmp	r3, r2
80025fa4:	1a000004 	bne	80025fbc <sleep+0xa4>
80025fa8:	e59f309c 	ldr	r3, [pc, #156]	@ 8002604c <sleep+0x134>
80025fac:	e5933000 	ldr	r3, [r3]
80025fb0:	e59f20a4 	ldr	r2, [pc, #164]	@ 8002605c <sleep+0x144>
80025fb4:	e5922000 	ldr	r2, [r2]
80025fb8:	e5832090 	str	r2, [r3, #144]	@ 0x90
80025fbc:	ebffff7d 	bl	80025db8 <sched>
80025fc0:	e51b3010 	ldr	r3, [fp, #-16]
80025fc4:	e59f2090 	ldr	r2, [pc, #144]	@ 8002605c <sleep+0x144>
80025fc8:	e1530002 	cmp	r3, r2
80025fcc:	1a00000f 	bne	80026010 <sleep+0xf8>
80025fd0:	e59f3084 	ldr	r3, [pc, #132]	@ 8002605c <sleep+0x144>
80025fd4:	e5932000 	ldr	r2, [r3]
80025fd8:	e59f306c 	ldr	r3, [pc, #108]	@ 8002604c <sleep+0x134>
80025fdc:	e5933000 	ldr	r3, [r3]
80025fe0:	e5933090 	ldr	r3, [r3, #144]	@ 0x90
80025fe4:	e0423003 	sub	r3, r2, r3
80025fe8:	e50b3008 	str	r3, [fp, #-8]
80025fec:	e59f3058 	ldr	r3, [pc, #88]	@ 8002604c <sleep+0x134>
80025ff0:	e5933000 	ldr	r3, [r3]
80025ff4:	e5933088 	ldr	r3, [r3, #136]	@ 0x88
80025ff8:	e1a02003 	mov	r2, r3
80025ffc:	e51b3008 	ldr	r3, [fp, #-8]
80026000:	e0822003 	add	r2, r2, r3
80026004:	e59f3040 	ldr	r3, [pc, #64]	@ 8002604c <sleep+0x134>
80026008:	e5933000 	ldr	r3, [r3]
8002600c:	e5832088 	str	r2, [r3, #136]	@ 0x88
80026010:	e59f3034 	ldr	r3, [pc, #52]	@ 8002604c <sleep+0x134>
80026014:	e5933000 	ldr	r3, [r3]
80026018:	e3a02000 	mov	r2, #0
8002601c:	e5832024 	str	r2, [r3, #36]	@ 0x24
80026020:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026024:	e59f202c 	ldr	r2, [pc, #44]	@ 80026058 <sleep+0x140>
80026028:	e1530002 	cmp	r3, r2
8002602c:	0a000003 	beq	80026040 <sleep+0x128>
80026030:	e59f0020 	ldr	r0, [pc, #32]	@ 80026058 <sleep+0x140>
80026034:	eb000188 	bl	8002665c <release>
80026038:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
8002603c:	eb00017b 	bl	80026630 <acquire>
80026040:	e1a00000 	nop			@ (mov r0, r0)
80026044:	e24bd004 	sub	sp, fp, #4
80026048:	e8bd8800 	pop	{fp, pc}
8002604c:	800b0b6c 	.word	0x800b0b6c
80026050:	80029fd8 	.word	0x80029fd8
80026054:	80029fe0 	.word	0x80029fe0
80026058:	800ae634 	.word	0x800ae634
8002605c:	800b0c64 	.word	0x800b0c64

80026060 <wakeup1>:
80026060:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80026064:	e28db000 	add	fp, sp, #0
80026068:	e24dd014 	sub	sp, sp, #20
8002606c:	e50b0010 	str	r0, [fp, #-16]
80026070:	e59f30a4 	ldr	r3, [pc, #164]	@ 8002611c <wakeup1+0xbc>
80026074:	e50b3008 	str	r3, [fp, #-8]
80026078:	ea00001e 	b	800260f8 <wakeup1+0x98>
8002607c:	e51b3008 	ldr	r3, [fp, #-8]
80026080:	e5d33010 	ldrb	r3, [r3, #16]
80026084:	e3530002 	cmp	r3, #2
80026088:	1a000016 	bne	800260e8 <wakeup1+0x88>
8002608c:	e51b3008 	ldr	r3, [fp, #-8]
80026090:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80026094:	e51b2010 	ldr	r2, [fp, #-16]
80026098:	e1520003 	cmp	r2, r3
8002609c:	1a000011 	bne	800260e8 <wakeup1+0x88>
800260a0:	e51b3010 	ldr	r3, [fp, #-16]
800260a4:	e59f2074 	ldr	r2, [pc, #116]	@ 80026120 <wakeup1+0xc0>
800260a8:	e1530002 	cmp	r3, r2
800260ac:	1a000009 	bne	800260d8 <wakeup1+0x78>
800260b0:	e51b3008 	ldr	r3, [fp, #-8]
800260b4:	e593208c 	ldr	r2, [r3, #140]	@ 0x8c
800260b8:	e59f3060 	ldr	r3, [pc, #96]	@ 80026120 <wakeup1+0xc0>
800260bc:	e5933000 	ldr	r3, [r3]
800260c0:	e1520003 	cmp	r2, r3
800260c4:	8a000008 	bhi	800260ec <wakeup1+0x8c>
800260c8:	e51b3008 	ldr	r3, [fp, #-8]
800260cc:	e3a02003 	mov	r2, #3
800260d0:	e5c32010 	strb	r2, [r3, #16]
800260d4:	ea000004 	b	800260ec <wakeup1+0x8c>
800260d8:	e51b3008 	ldr	r3, [fp, #-8]
800260dc:	e3a02003 	mov	r2, #3
800260e0:	e5c32010 	strb	r2, [r3, #16]
800260e4:	ea000000 	b	800260ec <wakeup1+0x8c>
800260e8:	e1a00000 	nop			@ (mov r0, r0)
800260ec:	e51b3008 	ldr	r3, [fp, #-8]
800260f0:	e2833094 	add	r3, r3, #148	@ 0x94
800260f4:	e50b3008 	str	r3, [fp, #-8]
800260f8:	e51b3008 	ldr	r3, [fp, #-8]
800260fc:	e59f2020 	ldr	r2, [pc, #32]	@ 80026124 <wakeup1+0xc4>
80026100:	e1530002 	cmp	r3, r2
80026104:	3affffdc 	bcc	8002607c <wakeup1+0x1c>
80026108:	e1a00000 	nop			@ (mov r0, r0)
8002610c:	e1a00000 	nop			@ (mov r0, r0)
80026110:	e28bd000 	add	sp, fp, #0
80026114:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026118:	e12fff1e 	bx	lr
8002611c:	800ae668 	.word	0x800ae668
80026120:	800b0c64 	.word	0x800b0c64
80026124:	800b0b68 	.word	0x800b0b68

80026128 <wakeup>:
80026128:	e92d4800 	push	{fp, lr}
8002612c:	e28db004 	add	fp, sp, #4
80026130:	e24dd008 	sub	sp, sp, #8
80026134:	e50b0008 	str	r0, [fp, #-8]
80026138:	e59f001c 	ldr	r0, [pc, #28]	@ 8002615c <wakeup+0x34>
8002613c:	eb00013b 	bl	80026630 <acquire>
80026140:	e51b0008 	ldr	r0, [fp, #-8]
80026144:	ebffffc5 	bl	80026060 <wakeup1>
80026148:	e59f000c 	ldr	r0, [pc, #12]	@ 8002615c <wakeup+0x34>
8002614c:	eb000142 	bl	8002665c <release>
80026150:	e1a00000 	nop			@ (mov r0, r0)
80026154:	e24bd004 	sub	sp, fp, #4
80026158:	e8bd8800 	pop	{fp, pc}
8002615c:	800ae634 	.word	0x800ae634

80026160 <kill>:
80026160:	e92d4800 	push	{fp, lr}
80026164:	e28db004 	add	fp, sp, #4
80026168:	e24dd010 	sub	sp, sp, #16
8002616c:	e50b0010 	str	r0, [fp, #-16]
80026170:	e59f008c 	ldr	r0, [pc, #140]	@ 80026204 <kill+0xa4>
80026174:	eb00012d 	bl	80026630 <acquire>
80026178:	e59f3088 	ldr	r3, [pc, #136]	@ 80026208 <kill+0xa8>
8002617c:	e50b3008 	str	r3, [fp, #-8]
80026180:	ea000015 	b	800261dc <kill+0x7c>
80026184:	e51b3008 	ldr	r3, [fp, #-8]
80026188:	e5933014 	ldr	r3, [r3, #20]
8002618c:	e51b2010 	ldr	r2, [fp, #-16]
80026190:	e1520003 	cmp	r2, r3
80026194:	1a00000d 	bne	800261d0 <kill+0x70>
80026198:	e51b3008 	ldr	r3, [fp, #-8]
8002619c:	e3a02001 	mov	r2, #1
800261a0:	e5832028 	str	r2, [r3, #40]	@ 0x28
800261a4:	e51b3008 	ldr	r3, [fp, #-8]
800261a8:	e5d33010 	ldrb	r3, [r3, #16]
800261ac:	e3530002 	cmp	r3, #2
800261b0:	1a000002 	bne	800261c0 <kill+0x60>
800261b4:	e51b3008 	ldr	r3, [fp, #-8]
800261b8:	e3a02003 	mov	r2, #3
800261bc:	e5c32010 	strb	r2, [r3, #16]
800261c0:	e59f003c 	ldr	r0, [pc, #60]	@ 80026204 <kill+0xa4>
800261c4:	eb000124 	bl	8002665c <release>
800261c8:	e3a03000 	mov	r3, #0
800261cc:	ea000009 	b	800261f8 <kill+0x98>
800261d0:	e51b3008 	ldr	r3, [fp, #-8]
800261d4:	e2833094 	add	r3, r3, #148	@ 0x94
800261d8:	e50b3008 	str	r3, [fp, #-8]
800261dc:	e51b3008 	ldr	r3, [fp, #-8]
800261e0:	e59f2024 	ldr	r2, [pc, #36]	@ 8002620c <kill+0xac>
800261e4:	e1530002 	cmp	r3, r2
800261e8:	3affffe5 	bcc	80026184 <kill+0x24>
800261ec:	e59f0010 	ldr	r0, [pc, #16]	@ 80026204 <kill+0xa4>
800261f0:	eb000119 	bl	8002665c <release>
800261f4:	e3e03000 	mvn	r3, #0
800261f8:	e1a00003 	mov	r0, r3
800261fc:	e24bd004 	sub	sp, fp, #4
80026200:	e8bd8800 	pop	{fp, pc}
80026204:	800ae634 	.word	0x800ae634
80026208:	800ae668 	.word	0x800ae668
8002620c:	800b0b68 	.word	0x800b0b68

80026210 <procdump>:
80026210:	e92d4800 	push	{fp, lr}
80026214:	e28db004 	add	fp, sp, #4
80026218:	e24dd008 	sub	sp, sp, #8
8002621c:	e59f30b8 	ldr	r3, [pc, #184]	@ 800262dc <procdump+0xcc>
80026220:	e50b3008 	str	r3, [fp, #-8]
80026224:	ea000023 	b	800262b8 <procdump+0xa8>
80026228:	e51b3008 	ldr	r3, [fp, #-8]
8002622c:	e5d33010 	ldrb	r3, [r3, #16]
80026230:	e3530000 	cmp	r3, #0
80026234:	0a00001b 	beq	800262a8 <procdump+0x98>
80026238:	e51b3008 	ldr	r3, [fp, #-8]
8002623c:	e5d33010 	ldrb	r3, [r3, #16]
80026240:	e3530005 	cmp	r3, #5
80026244:	8a00000d 	bhi	80026280 <procdump+0x70>
80026248:	e51b3008 	ldr	r3, [fp, #-8]
8002624c:	e5d33010 	ldrb	r3, [r3, #16]
80026250:	e1a02003 	mov	r2, r3
80026254:	e59f3084 	ldr	r3, [pc, #132]	@ 800262e0 <procdump+0xd0>
80026258:	e7933102 	ldr	r3, [r3, r2, lsl #2]
8002625c:	e3530000 	cmp	r3, #0
80026260:	0a000006 	beq	80026280 <procdump+0x70>
80026264:	e51b3008 	ldr	r3, [fp, #-8]
80026268:	e5d33010 	ldrb	r3, [r3, #16]
8002626c:	e1a02003 	mov	r2, r3
80026270:	e59f3068 	ldr	r3, [pc, #104]	@ 800262e0 <procdump+0xd0>
80026274:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80026278:	e50b300c 	str	r3, [fp, #-12]
8002627c:	ea000001 	b	80026288 <procdump+0x78>
80026280:	e59f305c 	ldr	r3, [pc, #92]	@ 800262e4 <procdump+0xd4>
80026284:	e50b300c 	str	r3, [fp, #-12]
80026288:	e51b3008 	ldr	r3, [fp, #-8]
8002628c:	e5931014 	ldr	r1, [r3, #20]
80026290:	e51b3008 	ldr	r3, [fp, #-8]
80026294:	e2833070 	add	r3, r3, #112	@ 0x70
80026298:	e51b200c 	ldr	r2, [fp, #-12]
8002629c:	e59f0044 	ldr	r0, [pc, #68]	@ 800262e8 <procdump+0xd8>
800262a0:	ebffed7b 	bl	80021894 <cprintf>
800262a4:	ea000000 	b	800262ac <procdump+0x9c>
800262a8:	e1a00000 	nop			@ (mov r0, r0)
800262ac:	e51b3008 	ldr	r3, [fp, #-8]
800262b0:	e2833094 	add	r3, r3, #148	@ 0x94
800262b4:	e50b3008 	str	r3, [fp, #-8]
800262b8:	e51b3008 	ldr	r3, [fp, #-8]
800262bc:	e59f2028 	ldr	r2, [pc, #40]	@ 800262ec <procdump+0xdc>
800262c0:	e1530002 	cmp	r3, r2
800262c4:	3affffd7 	bcc	80026228 <procdump+0x18>
800262c8:	e59f0020 	ldr	r0, [pc, #32]	@ 800262f0 <procdump+0xe0>
800262cc:	ebffe94e 	bl	8002080c <show_callstk>
800262d0:	e1a00000 	nop			@ (mov r0, r0)
800262d4:	e24bd004 	sub	sp, fp, #4
800262d8:	e8bd8800 	pop	{fp, pc}
800262dc:	800ae668 	.word	0x800ae668
800262e0:	8002b034 	.word	0x8002b034
800262e4:	80029ff4 	.word	0x80029ff4
800262e8:	80029ff8 	.word	0x80029ff8
800262ec:	800b0b68 	.word	0x800b0b68
800262f0:	8002a004 	.word	0x8002a004

800262f4 <sys_dumppagetable>:
800262f4:	e92d4800 	push	{fp, lr}
800262f8:	e28db004 	add	fp, sp, #4
800262fc:	e24dd040 	sub	sp, sp, #64	@ 0x40
80026300:	e59f32b4 	ldr	r3, [pc, #692]	@ 800265bc <sys_dumppagetable+0x2c8>
80026304:	e5933000 	ldr	r3, [r3]
80026308:	e50b300c 	str	r3, [fp, #-12]
8002630c:	e51b300c 	ldr	r3, [fp, #-12]
80026310:	e5933004 	ldr	r3, [r3, #4]
80026314:	e50b3010 	str	r3, [fp, #-16]
80026318:	e51b300c 	ldr	r3, [fp, #-12]
8002631c:	e5933000 	ldr	r3, [r3]
80026320:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80026324:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026328:	e2833eff 	add	r3, r3, #4080	@ 0xff0
8002632c:	e283300f 	add	r3, r3, #15
80026330:	e1a03623 	lsr	r3, r3, #12
80026334:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80026338:	e51b300c 	ldr	r3, [fp, #-12]
8002633c:	e5933014 	ldr	r3, [r3, #20]
80026340:	e1a01003 	mov	r1, r3
80026344:	e59f0274 	ldr	r0, [pc, #628]	@ 800265c0 <sys_dumppagetable+0x2cc>
80026348:	ebffed51 	bl	80021894 <cprintf>
8002634c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80026350:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80026354:	e59f0268 	ldr	r0, [pc, #616]	@ 800265c4 <sys_dumppagetable+0x2d0>
80026358:	ebffed4d 	bl	80021894 <cprintf>
8002635c:	e59f0264 	ldr	r0, [pc, #612]	@ 800265c8 <sys_dumppagetable+0x2d4>
80026360:	ebffed4b 	bl	80021894 <cprintf>
80026364:	e3a03000 	mov	r3, #0
80026368:	e50b3008 	str	r3, [fp, #-8]
8002636c:	ea000039 	b	80026458 <sys_dumppagetable+0x164>
80026370:	e51b3008 	ldr	r3, [fp, #-8]
80026374:	e1a03603 	lsl	r3, r3, #12
80026378:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
8002637c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80026380:	e3a02000 	mov	r2, #0
80026384:	e1a01003 	mov	r1, r3
80026388:	e51b0010 	ldr	r0, [fp, #-16]
8002638c:	eb00095f 	bl	80028910 <walkpgdir>
80026390:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80026394:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80026398:	e3530000 	cmp	r3, #0
8002639c:	0a000026 	beq	8002643c <sys_dumppagetable+0x148>
800263a0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800263a4:	e5933000 	ldr	r3, [r3]
800263a8:	e2033003 	and	r3, r3, #3
800263ac:	e3530002 	cmp	r3, #2
800263b0:	1a000021 	bne	8002643c <sys_dumppagetable+0x148>
800263b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800263b8:	e5933000 	ldr	r3, [r3]
800263bc:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
800263c0:	e3c3300f 	bic	r3, r3, #15
800263c4:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
800263c8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800263cc:	e5933000 	ldr	r3, [r3]
800263d0:	e58d3000 	str	r3, [sp]
800263d4:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800263d8:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
800263dc:	e51b1008 	ldr	r1, [fp, #-8]
800263e0:	e59f01e4 	ldr	r0, [pc, #484]	@ 800265cc <sys_dumppagetable+0x2d8>
800263e4:	ebffed2a 	bl	80021894 <cprintf>
800263e8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800263ec:	e5933000 	ldr	r3, [r3]
800263f0:	e1a03223 	lsr	r3, r3, #4
800263f4:	e2033003 	and	r3, r3, #3
800263f8:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
800263fc:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80026400:	e3530003 	cmp	r3, #3
80026404:	0a000002 	beq	80026414 <sys_dumppagetable+0x120>
80026408:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002640c:	e3530002 	cmp	r3, #2
80026410:	1a000001 	bne	8002641c <sys_dumppagetable+0x128>
80026414:	e59f01b4 	ldr	r0, [pc, #436]	@ 800265d0 <sys_dumppagetable+0x2dc>
80026418:	ebffed1d 	bl	80021894 <cprintf>
8002641c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80026420:	e3530003 	cmp	r3, #3
80026424:	1a000001 	bne	80026430 <sys_dumppagetable+0x13c>
80026428:	e59f01a4 	ldr	r0, [pc, #420]	@ 800265d4 <sys_dumppagetable+0x2e0>
8002642c:	ebffed18 	bl	80021894 <cprintf>
80026430:	e59f01a0 	ldr	r0, [pc, #416]	@ 800265d8 <sys_dumppagetable+0x2e4>
80026434:	ebffed16 	bl	80021894 <cprintf>
80026438:	ea000003 	b	8002644c <sys_dumppagetable+0x158>
8002643c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80026440:	e51b1008 	ldr	r1, [fp, #-8]
80026444:	e59f0190 	ldr	r0, [pc, #400]	@ 800265dc <sys_dumppagetable+0x2e8>
80026448:	ebffed11 	bl	80021894 <cprintf>
8002644c:	e51b3008 	ldr	r3, [fp, #-8]
80026450:	e2833001 	add	r3, r3, #1
80026454:	e50b3008 	str	r3, [fp, #-8]
80026458:	e51b2008 	ldr	r2, [fp, #-8]
8002645c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026460:	e1520003 	cmp	r2, r3
80026464:	2a000002 	bcs	80026474 <sys_dumppagetable+0x180>
80026468:	e51b3008 	ldr	r3, [fp, #-8]
8002646c:	e3530009 	cmp	r3, #9
80026470:	9affffbe 	bls	80026370 <sys_dumppagetable+0x7c>
80026474:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026478:	e353000a 	cmp	r3, #10
8002647c:	9a000048 	bls	800265a4 <sys_dumppagetable+0x2b0>
80026480:	e59f0158 	ldr	r0, [pc, #344]	@ 800265e0 <sys_dumppagetable+0x2ec>
80026484:	ebffed02 	bl	80021894 <cprintf>
80026488:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002648c:	e3530014 	cmp	r3, #20
80026490:	21a03003 	movcs	r3, r3
80026494:	33a03014 	movcc	r3, #20
80026498:	e243300a 	sub	r3, r3, #10
8002649c:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
800264a0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800264a4:	e50b3008 	str	r3, [fp, #-8]
800264a8:	ea000039 	b	80026594 <sys_dumppagetable+0x2a0>
800264ac:	e51b3008 	ldr	r3, [fp, #-8]
800264b0:	e1a03603 	lsl	r3, r3, #12
800264b4:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
800264b8:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
800264bc:	e3a02000 	mov	r2, #0
800264c0:	e1a01003 	mov	r1, r3
800264c4:	e51b0010 	ldr	r0, [fp, #-16]
800264c8:	eb000910 	bl	80028910 <walkpgdir>
800264cc:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
800264d0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800264d4:	e3530000 	cmp	r3, #0
800264d8:	0a000026 	beq	80026578 <sys_dumppagetable+0x284>
800264dc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800264e0:	e5933000 	ldr	r3, [r3]
800264e4:	e2033003 	and	r3, r3, #3
800264e8:	e3530002 	cmp	r3, #2
800264ec:	1a000021 	bne	80026578 <sys_dumppagetable+0x284>
800264f0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800264f4:	e5933000 	ldr	r3, [r3]
800264f8:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
800264fc:	e3c3300f 	bic	r3, r3, #15
80026500:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
80026504:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80026508:	e5933000 	ldr	r3, [r3]
8002650c:	e58d3000 	str	r3, [sp]
80026510:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
80026514:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
80026518:	e51b1008 	ldr	r1, [fp, #-8]
8002651c:	e59f00a8 	ldr	r0, [pc, #168]	@ 800265cc <sys_dumppagetable+0x2d8>
80026520:	ebffecdb 	bl	80021894 <cprintf>
80026524:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80026528:	e5933000 	ldr	r3, [r3]
8002652c:	e1a03223 	lsr	r3, r3, #4
80026530:	e2033003 	and	r3, r3, #3
80026534:	e50b3038 	str	r3, [fp, #-56]	@ 0xffffffc8
80026538:	e51b3038 	ldr	r3, [fp, #-56]	@ 0xffffffc8
8002653c:	e3530003 	cmp	r3, #3
80026540:	0a000002 	beq	80026550 <sys_dumppagetable+0x25c>
80026544:	e51b3038 	ldr	r3, [fp, #-56]	@ 0xffffffc8
80026548:	e3530002 	cmp	r3, #2
8002654c:	1a000001 	bne	80026558 <sys_dumppagetable+0x264>
80026550:	e59f0078 	ldr	r0, [pc, #120]	@ 800265d0 <sys_dumppagetable+0x2dc>
80026554:	ebffecce 	bl	80021894 <cprintf>
80026558:	e51b3038 	ldr	r3, [fp, #-56]	@ 0xffffffc8
8002655c:	e3530003 	cmp	r3, #3
80026560:	1a000001 	bne	8002656c <sys_dumppagetable+0x278>
80026564:	e59f0068 	ldr	r0, [pc, #104]	@ 800265d4 <sys_dumppagetable+0x2e0>
80026568:	ebffecc9 	bl	80021894 <cprintf>
8002656c:	e59f0064 	ldr	r0, [pc, #100]	@ 800265d8 <sys_dumppagetable+0x2e4>
80026570:	ebffecc7 	bl	80021894 <cprintf>
80026574:	ea000003 	b	80026588 <sys_dumppagetable+0x294>
80026578:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
8002657c:	e51b1008 	ldr	r1, [fp, #-8]
80026580:	e59f0054 	ldr	r0, [pc, #84]	@ 800265dc <sys_dumppagetable+0x2e8>
80026584:	ebffecc2 	bl	80021894 <cprintf>
80026588:	e51b3008 	ldr	r3, [fp, #-8]
8002658c:	e2833001 	add	r3, r3, #1
80026590:	e50b3008 	str	r3, [fp, #-8]
80026594:	e51b2008 	ldr	r2, [fp, #-8]
80026598:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002659c:	e1520003 	cmp	r2, r3
800265a0:	3affffc1 	bcc	800264ac <sys_dumppagetable+0x1b8>
800265a4:	e59f0038 	ldr	r0, [pc, #56]	@ 800265e4 <sys_dumppagetable+0x2f0>
800265a8:	ebffecb9 	bl	80021894 <cprintf>
800265ac:	e3a03000 	mov	r3, #0
800265b0:	e1a00003 	mov	r0, r3
800265b4:	e24bd004 	sub	sp, fp, #4
800265b8:	e8bd8800 	pop	{fp, pc}
800265bc:	800b0b6c 	.word	0x800b0b6c
800265c0:	8002a010 	.word	0x8002a010
800265c4:	8002a034 	.word	0x8002a034
800265c8:	8002a064 	.word	0x8002a064
800265cc:	8002a080 	.word	0x8002a080
800265d0:	8002a0b0 	.word	0x8002a0b0
800265d4:	8002a0b4 	.word	0x8002a0b4
800265d8:	8002a0b8 	.word	0x8002a0b8
800265dc:	8002a0bc 	.word	0x8002a0bc
800265e0:	8002a0dc 	.word	0x8002a0dc
800265e4:	8002a0f4 	.word	0x8002a0f4

800265e8 <initlock>:
800265e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800265ec:	e28db000 	add	fp, sp, #0
800265f0:	e24dd00c 	sub	sp, sp, #12
800265f4:	e50b0008 	str	r0, [fp, #-8]
800265f8:	e50b100c 	str	r1, [fp, #-12]
800265fc:	e51b3008 	ldr	r3, [fp, #-8]
80026600:	e51b200c 	ldr	r2, [fp, #-12]
80026604:	e5832004 	str	r2, [r3, #4]
80026608:	e51b3008 	ldr	r3, [fp, #-8]
8002660c:	e3a02000 	mov	r2, #0
80026610:	e5832000 	str	r2, [r3]
80026614:	e51b3008 	ldr	r3, [fp, #-8]
80026618:	e3a02000 	mov	r2, #0
8002661c:	e5832008 	str	r2, [r3, #8]
80026620:	e1a00000 	nop			@ (mov r0, r0)
80026624:	e28bd000 	add	sp, fp, #0
80026628:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002662c:	e12fff1e 	bx	lr

80026630 <acquire>:
80026630:	e92d4800 	push	{fp, lr}
80026634:	e28db004 	add	fp, sp, #4
80026638:	e24dd008 	sub	sp, sp, #8
8002663c:	e50b0008 	str	r0, [fp, #-8]
80026640:	ebffe7f9 	bl	8002062c <pushcli>
80026644:	e51b3008 	ldr	r3, [fp, #-8]
80026648:	e3a02001 	mov	r2, #1
8002664c:	e5832000 	str	r2, [r3]
80026650:	e1a00000 	nop			@ (mov r0, r0)
80026654:	e24bd004 	sub	sp, fp, #4
80026658:	e8bd8800 	pop	{fp, pc}

8002665c <release>:
8002665c:	e92d4800 	push	{fp, lr}
80026660:	e28db004 	add	fp, sp, #4
80026664:	e24dd008 	sub	sp, sp, #8
80026668:	e50b0008 	str	r0, [fp, #-8]
8002666c:	e51b3008 	ldr	r3, [fp, #-8]
80026670:	e3a02000 	mov	r2, #0
80026674:	e5832000 	str	r2, [r3]
80026678:	ebffe800 	bl	80020680 <popcli>
8002667c:	e1a00000 	nop			@ (mov r0, r0)
80026680:	e24bd004 	sub	sp, fp, #4
80026684:	e8bd8800 	pop	{fp, pc}

80026688 <holding>:
80026688:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002668c:	e28db000 	add	fp, sp, #0
80026690:	e24dd00c 	sub	sp, sp, #12
80026694:	e50b0008 	str	r0, [fp, #-8]
80026698:	e51b3008 	ldr	r3, [fp, #-8]
8002669c:	e5933000 	ldr	r3, [r3]
800266a0:	e1a00003 	mov	r0, r3
800266a4:	e28bd000 	add	sp, fp, #0
800266a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800266ac:	e12fff1e 	bx	lr

800266b0 <swtch>:
800266b0:	e92d5ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
800266b4:	e580d000 	str	sp, [r0]
800266b8:	e1a0d001 	mov	sp, r1
800266bc:	e8bd5ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
800266c0:	e12fff1e 	bx	lr

800266c4 <fetchint>:
800266c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800266c8:	e28db000 	add	fp, sp, #0
800266cc:	e24dd00c 	sub	sp, sp, #12
800266d0:	e50b0008 	str	r0, [fp, #-8]
800266d4:	e50b100c 	str	r1, [fp, #-12]
800266d8:	e59f3058 	ldr	r3, [pc, #88]	@ 80026738 <fetchint+0x74>
800266dc:	e5933000 	ldr	r3, [r3]
800266e0:	e5933000 	ldr	r3, [r3]
800266e4:	e51b2008 	ldr	r2, [fp, #-8]
800266e8:	e1520003 	cmp	r2, r3
800266ec:	2a000006 	bcs	8002670c <fetchint+0x48>
800266f0:	e51b3008 	ldr	r3, [fp, #-8]
800266f4:	e2832004 	add	r2, r3, #4
800266f8:	e59f3038 	ldr	r3, [pc, #56]	@ 80026738 <fetchint+0x74>
800266fc:	e5933000 	ldr	r3, [r3]
80026700:	e5933000 	ldr	r3, [r3]
80026704:	e1520003 	cmp	r2, r3
80026708:	9a000001 	bls	80026714 <fetchint+0x50>
8002670c:	e3e03000 	mvn	r3, #0
80026710:	ea000004 	b	80026728 <fetchint+0x64>
80026714:	e51b3008 	ldr	r3, [fp, #-8]
80026718:	e5932000 	ldr	r2, [r3]
8002671c:	e51b300c 	ldr	r3, [fp, #-12]
80026720:	e5832000 	str	r2, [r3]
80026724:	e3a03000 	mov	r3, #0
80026728:	e1a00003 	mov	r0, r3
8002672c:	e28bd000 	add	sp, fp, #0
80026730:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026734:	e12fff1e 	bx	lr
80026738:	800b0b6c 	.word	0x800b0b6c

8002673c <fetchstr>:
8002673c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80026740:	e28db000 	add	fp, sp, #0
80026744:	e24dd014 	sub	sp, sp, #20
80026748:	e50b0010 	str	r0, [fp, #-16]
8002674c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026750:	e59f3098 	ldr	r3, [pc, #152]	@ 800267f0 <fetchstr+0xb4>
80026754:	e5933000 	ldr	r3, [r3]
80026758:	e5933000 	ldr	r3, [r3]
8002675c:	e51b2010 	ldr	r2, [fp, #-16]
80026760:	e1520003 	cmp	r2, r3
80026764:	3a000001 	bcc	80026770 <fetchstr+0x34>
80026768:	e3e03000 	mvn	r3, #0
8002676c:	ea00001b 	b	800267e0 <fetchstr+0xa4>
80026770:	e51b2010 	ldr	r2, [fp, #-16]
80026774:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026778:	e5832000 	str	r2, [r3]
8002677c:	e59f306c 	ldr	r3, [pc, #108]	@ 800267f0 <fetchstr+0xb4>
80026780:	e5933000 	ldr	r3, [r3]
80026784:	e5933000 	ldr	r3, [r3]
80026788:	e50b300c 	str	r3, [fp, #-12]
8002678c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026790:	e5933000 	ldr	r3, [r3]
80026794:	e50b3008 	str	r3, [fp, #-8]
80026798:	ea00000b 	b	800267cc <fetchstr+0x90>
8002679c:	e51b3008 	ldr	r3, [fp, #-8]
800267a0:	e5d33000 	ldrb	r3, [r3]
800267a4:	e3530000 	cmp	r3, #0
800267a8:	1a000004 	bne	800267c0 <fetchstr+0x84>
800267ac:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800267b0:	e5933000 	ldr	r3, [r3]
800267b4:	e51b2008 	ldr	r2, [fp, #-8]
800267b8:	e0423003 	sub	r3, r2, r3
800267bc:	ea000007 	b	800267e0 <fetchstr+0xa4>
800267c0:	e51b3008 	ldr	r3, [fp, #-8]
800267c4:	e2833001 	add	r3, r3, #1
800267c8:	e50b3008 	str	r3, [fp, #-8]
800267cc:	e51b2008 	ldr	r2, [fp, #-8]
800267d0:	e51b300c 	ldr	r3, [fp, #-12]
800267d4:	e1520003 	cmp	r2, r3
800267d8:	3affffef 	bcc	8002679c <fetchstr+0x60>
800267dc:	e3e03000 	mvn	r3, #0
800267e0:	e1a00003 	mov	r0, r3
800267e4:	e28bd000 	add	sp, fp, #0
800267e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800267ec:	e12fff1e 	bx	lr
800267f0:	800b0b6c 	.word	0x800b0b6c

800267f4 <argint>:
800267f4:	e92d4800 	push	{fp, lr}
800267f8:	e28db004 	add	fp, sp, #4
800267fc:	e24dd008 	sub	sp, sp, #8
80026800:	e50b0008 	str	r0, [fp, #-8]
80026804:	e50b100c 	str	r1, [fp, #-12]
80026808:	e51b3008 	ldr	r3, [fp, #-8]
8002680c:	e3530003 	cmp	r3, #3
80026810:	da000001 	ble	8002681c <argint+0x28>
80026814:	e59f003c 	ldr	r0, [pc, #60]	@ 80026858 <argint+0x64>
80026818:	ebffecb5 	bl	80021af4 <panic>
8002681c:	e59f3038 	ldr	r3, [pc, #56]	@ 8002685c <argint+0x68>
80026820:	e5933000 	ldr	r3, [r3]
80026824:	e593301c 	ldr	r3, [r3, #28]
80026828:	e2832014 	add	r2, r3, #20
8002682c:	e51b3008 	ldr	r3, [fp, #-8]
80026830:	e1a03103 	lsl	r3, r3, #2
80026834:	e0823003 	add	r3, r2, r3
80026838:	e5933000 	ldr	r3, [r3]
8002683c:	e1a02003 	mov	r2, r3
80026840:	e51b300c 	ldr	r3, [fp, #-12]
80026844:	e5832000 	str	r2, [r3]
80026848:	e3a03000 	mov	r3, #0
8002684c:	e1a00003 	mov	r0, r3
80026850:	e24bd004 	sub	sp, fp, #4
80026854:	e8bd8800 	pop	{fp, pc}
80026858:	8002a114 	.word	0x8002a114
8002685c:	800b0b6c 	.word	0x800b0b6c

80026860 <argptr>:
80026860:	e92d4800 	push	{fp, lr}
80026864:	e28db004 	add	fp, sp, #4
80026868:	e24dd018 	sub	sp, sp, #24
8002686c:	e50b0010 	str	r0, [fp, #-16]
80026870:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026874:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80026878:	e24b3008 	sub	r3, fp, #8
8002687c:	e1a01003 	mov	r1, r3
80026880:	e51b0010 	ldr	r0, [fp, #-16]
80026884:	ebffffda 	bl	800267f4 <argint>
80026888:	e1a03000 	mov	r3, r0
8002688c:	e3530000 	cmp	r3, #0
80026890:	aa000001 	bge	8002689c <argptr+0x3c>
80026894:	e3e03000 	mvn	r3, #0
80026898:	ea000015 	b	800268f4 <argptr+0x94>
8002689c:	e59f305c 	ldr	r3, [pc, #92]	@ 80026900 <argptr+0xa0>
800268a0:	e5933000 	ldr	r3, [r3]
800268a4:	e5933000 	ldr	r3, [r3]
800268a8:	e51b2008 	ldr	r2, [fp, #-8]
800268ac:	e1530002 	cmp	r3, r2
800268b0:	9a000008 	bls	800268d8 <argptr+0x78>
800268b4:	e51b3008 	ldr	r3, [fp, #-8]
800268b8:	e1a02003 	mov	r2, r3
800268bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800268c0:	e0822003 	add	r2, r2, r3
800268c4:	e59f3034 	ldr	r3, [pc, #52]	@ 80026900 <argptr+0xa0>
800268c8:	e5933000 	ldr	r3, [r3]
800268cc:	e5933000 	ldr	r3, [r3]
800268d0:	e1520003 	cmp	r2, r3
800268d4:	9a000001 	bls	800268e0 <argptr+0x80>
800268d8:	e3e03000 	mvn	r3, #0
800268dc:	ea000004 	b	800268f4 <argptr+0x94>
800268e0:	e51b3008 	ldr	r3, [fp, #-8]
800268e4:	e1a02003 	mov	r2, r3
800268e8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800268ec:	e5832000 	str	r2, [r3]
800268f0:	e3a03000 	mov	r3, #0
800268f4:	e1a00003 	mov	r0, r3
800268f8:	e24bd004 	sub	sp, fp, #4
800268fc:	e8bd8800 	pop	{fp, pc}
80026900:	800b0b6c 	.word	0x800b0b6c

80026904 <argaddr>:
80026904:	e92d4830 	push	{r4, r5, fp, lr}
80026908:	e28db00c 	add	fp, sp, #12
8002690c:	e24dd010 	sub	sp, sp, #16
80026910:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80026914:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80026918:	e24b3010 	sub	r3, fp, #16
8002691c:	e1a01003 	mov	r1, r3
80026920:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80026924:	ebffffb2 	bl	800267f4 <argint>
80026928:	e1a03000 	mov	r3, r0
8002692c:	e3530000 	cmp	r3, #0
80026930:	aa000001 	bge	8002693c <argaddr+0x38>
80026934:	e3e03000 	mvn	r3, #0
80026938:	ea000006 	b	80026958 <argaddr+0x54>
8002693c:	e51b3010 	ldr	r3, [fp, #-16]
80026940:	e1a02fc3 	asr	r2, r3, #31
80026944:	e1a04003 	mov	r4, r3
80026948:	e1a05002 	mov	r5, r2
8002694c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80026950:	e1c340f0 	strd	r4, [r3]
80026954:	e3a03000 	mov	r3, #0
80026958:	e1a00003 	mov	r0, r3
8002695c:	e24bd00c 	sub	sp, fp, #12
80026960:	e8bd8830 	pop	{r4, r5, fp, pc}

80026964 <argstr>:
80026964:	e92d4800 	push	{fp, lr}
80026968:	e28db004 	add	fp, sp, #4
8002696c:	e24dd010 	sub	sp, sp, #16
80026970:	e50b0010 	str	r0, [fp, #-16]
80026974:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026978:	e24b3008 	sub	r3, fp, #8
8002697c:	e1a01003 	mov	r1, r3
80026980:	e51b0010 	ldr	r0, [fp, #-16]
80026984:	ebffff9a 	bl	800267f4 <argint>
80026988:	e1a03000 	mov	r3, r0
8002698c:	e3530000 	cmp	r3, #0
80026990:	aa000001 	bge	8002699c <argstr+0x38>
80026994:	e3e03000 	mvn	r3, #0
80026998:	ea000004 	b	800269b0 <argstr+0x4c>
8002699c:	e51b3008 	ldr	r3, [fp, #-8]
800269a0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800269a4:	e1a00003 	mov	r0, r3
800269a8:	ebffff63 	bl	8002673c <fetchstr>
800269ac:	e1a03000 	mov	r3, r0
800269b0:	e1a00003 	mov	r0, r3
800269b4:	e24bd004 	sub	sp, fp, #4
800269b8:	e8bd8800 	pop	{fp, pc}

800269bc <syscall>:
800269bc:	e92d4800 	push	{fp, lr}
800269c0:	e28db004 	add	fp, sp, #4
800269c4:	e24dd008 	sub	sp, sp, #8
800269c8:	e59f30cc 	ldr	r3, [pc, #204]	@ 80026a9c <syscall+0xe0>
800269cc:	e5933000 	ldr	r3, [r3]
800269d0:	e593301c 	ldr	r3, [r3, #28]
800269d4:	e5933010 	ldr	r3, [r3, #16]
800269d8:	e50b3008 	str	r3, [fp, #-8]
800269dc:	e51b3008 	ldr	r3, [fp, #-8]
800269e0:	e3530000 	cmp	r3, #0
800269e4:	da00001a 	ble	80026a54 <syscall+0x98>
800269e8:	e51b3008 	ldr	r3, [fp, #-8]
800269ec:	e353001b 	cmp	r3, #27
800269f0:	8a000017 	bhi	80026a54 <syscall+0x98>
800269f4:	e59f20a4 	ldr	r2, [pc, #164]	@ 80026aa0 <syscall+0xe4>
800269f8:	e51b3008 	ldr	r3, [fp, #-8]
800269fc:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80026a00:	e3530000 	cmp	r3, #0
80026a04:	0a000012 	beq	80026a54 <syscall+0x98>
80026a08:	e59f2090 	ldr	r2, [pc, #144]	@ 80026aa0 <syscall+0xe4>
80026a0c:	e51b3008 	ldr	r3, [fp, #-8]
80026a10:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80026a14:	e12fff33 	blx	r3
80026a18:	e50b000c 	str	r0, [fp, #-12]
80026a1c:	e59f3078 	ldr	r3, [pc, #120]	@ 80026a9c <syscall+0xe0>
80026a20:	e5933000 	ldr	r3, [r3]
80026a24:	e593200c 	ldr	r2, [r3, #12]
80026a28:	e2822001 	add	r2, r2, #1
80026a2c:	e583200c 	str	r2, [r3, #12]
80026a30:	e51b3008 	ldr	r3, [fp, #-8]
80026a34:	e3530007 	cmp	r3, #7
80026a38:	0a000014 	beq	80026a90 <syscall+0xd4>
80026a3c:	e59f3058 	ldr	r3, [pc, #88]	@ 80026a9c <syscall+0xe0>
80026a40:	e5933000 	ldr	r3, [r3]
80026a44:	e593301c 	ldr	r3, [r3, #28]
80026a48:	e51b200c 	ldr	r2, [fp, #-12]
80026a4c:	e5832010 	str	r2, [r3, #16]
80026a50:	ea00000e 	b	80026a90 <syscall+0xd4>
80026a54:	e59f3040 	ldr	r3, [pc, #64]	@ 80026a9c <syscall+0xe0>
80026a58:	e5933000 	ldr	r3, [r3]
80026a5c:	e5931014 	ldr	r1, [r3, #20]
80026a60:	e59f3034 	ldr	r3, [pc, #52]	@ 80026a9c <syscall+0xe0>
80026a64:	e5933000 	ldr	r3, [r3]
80026a68:	e2832070 	add	r2, r3, #112	@ 0x70
80026a6c:	e51b3008 	ldr	r3, [fp, #-8]
80026a70:	e59f002c 	ldr	r0, [pc, #44]	@ 80026aa4 <syscall+0xe8>
80026a74:	ebffeb86 	bl	80021894 <cprintf>
80026a78:	e59f301c 	ldr	r3, [pc, #28]	@ 80026a9c <syscall+0xe0>
80026a7c:	e5933000 	ldr	r3, [r3]
80026a80:	e593301c 	ldr	r3, [r3, #28]
80026a84:	e3e02000 	mvn	r2, #0
80026a88:	e5832010 	str	r2, [r3, #16]
80026a8c:	e1a00000 	nop			@ (mov r0, r0)
80026a90:	e1a00000 	nop			@ (mov r0, r0)
80026a94:	e24bd004 	sub	sp, fp, #4
80026a98:	e8bd8800 	pop	{fp, pc}
80026a9c:	800b0b6c 	.word	0x800b0b6c
80026aa0:	8002b04c 	.word	0x8002b04c
80026aa4:	8002a138 	.word	0x8002a138

80026aa8 <argfd>:
80026aa8:	e92d4800 	push	{fp, lr}
80026aac:	e28db004 	add	fp, sp, #4
80026ab0:	e24dd018 	sub	sp, sp, #24
80026ab4:	e50b0010 	str	r0, [fp, #-16]
80026ab8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026abc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80026ac0:	e24b300c 	sub	r3, fp, #12
80026ac4:	e1a01003 	mov	r1, r3
80026ac8:	e51b0010 	ldr	r0, [fp, #-16]
80026acc:	ebffff48 	bl	800267f4 <argint>
80026ad0:	e1a03000 	mov	r3, r0
80026ad4:	e3530000 	cmp	r3, #0
80026ad8:	aa000001 	bge	80026ae4 <argfd+0x3c>
80026adc:	e3e03000 	mvn	r3, #0
80026ae0:	ea00001f 	b	80026b64 <argfd+0xbc>
80026ae4:	e51b300c 	ldr	r3, [fp, #-12]
80026ae8:	e3530000 	cmp	r3, #0
80026aec:	ba00000d 	blt	80026b28 <argfd+0x80>
80026af0:	e51b300c 	ldr	r3, [fp, #-12]
80026af4:	e353000f 	cmp	r3, #15
80026af8:	ca00000a 	bgt	80026b28 <argfd+0x80>
80026afc:	e59f306c 	ldr	r3, [pc, #108]	@ 80026b70 <argfd+0xc8>
80026b00:	e5932000 	ldr	r2, [r3]
80026b04:	e51b300c 	ldr	r3, [fp, #-12]
80026b08:	e283300a 	add	r3, r3, #10
80026b0c:	e1a03103 	lsl	r3, r3, #2
80026b10:	e0823003 	add	r3, r2, r3
80026b14:	e5933004 	ldr	r3, [r3, #4]
80026b18:	e50b3008 	str	r3, [fp, #-8]
80026b1c:	e51b3008 	ldr	r3, [fp, #-8]
80026b20:	e3530000 	cmp	r3, #0
80026b24:	1a000001 	bne	80026b30 <argfd+0x88>
80026b28:	e3e03000 	mvn	r3, #0
80026b2c:	ea00000c 	b	80026b64 <argfd+0xbc>
80026b30:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026b34:	e3530000 	cmp	r3, #0
80026b38:	0a000002 	beq	80026b48 <argfd+0xa0>
80026b3c:	e51b200c 	ldr	r2, [fp, #-12]
80026b40:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026b44:	e5832000 	str	r2, [r3]
80026b48:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026b4c:	e3530000 	cmp	r3, #0
80026b50:	0a000002 	beq	80026b60 <argfd+0xb8>
80026b54:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026b58:	e51b2008 	ldr	r2, [fp, #-8]
80026b5c:	e5832000 	str	r2, [r3]
80026b60:	e3a03000 	mov	r3, #0
80026b64:	e1a00003 	mov	r0, r3
80026b68:	e24bd004 	sub	sp, fp, #4
80026b6c:	e8bd8800 	pop	{fp, pc}
80026b70:	800b0b6c 	.word	0x800b0b6c

80026b74 <fdalloc>:
80026b74:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80026b78:	e28db000 	add	fp, sp, #0
80026b7c:	e24dd014 	sub	sp, sp, #20
80026b80:	e50b0010 	str	r0, [fp, #-16]
80026b84:	e3a03000 	mov	r3, #0
80026b88:	e50b3008 	str	r3, [fp, #-8]
80026b8c:	ea000015 	b	80026be8 <fdalloc+0x74>
80026b90:	e59f3070 	ldr	r3, [pc, #112]	@ 80026c08 <fdalloc+0x94>
80026b94:	e5932000 	ldr	r2, [r3]
80026b98:	e51b3008 	ldr	r3, [fp, #-8]
80026b9c:	e283300a 	add	r3, r3, #10
80026ba0:	e1a03103 	lsl	r3, r3, #2
80026ba4:	e0823003 	add	r3, r2, r3
80026ba8:	e5933004 	ldr	r3, [r3, #4]
80026bac:	e3530000 	cmp	r3, #0
80026bb0:	1a000009 	bne	80026bdc <fdalloc+0x68>
80026bb4:	e59f304c 	ldr	r3, [pc, #76]	@ 80026c08 <fdalloc+0x94>
80026bb8:	e5932000 	ldr	r2, [r3]
80026bbc:	e51b3008 	ldr	r3, [fp, #-8]
80026bc0:	e283300a 	add	r3, r3, #10
80026bc4:	e1a03103 	lsl	r3, r3, #2
80026bc8:	e0823003 	add	r3, r2, r3
80026bcc:	e51b2010 	ldr	r2, [fp, #-16]
80026bd0:	e5832004 	str	r2, [r3, #4]
80026bd4:	e51b3008 	ldr	r3, [fp, #-8]
80026bd8:	ea000006 	b	80026bf8 <fdalloc+0x84>
80026bdc:	e51b3008 	ldr	r3, [fp, #-8]
80026be0:	e2833001 	add	r3, r3, #1
80026be4:	e50b3008 	str	r3, [fp, #-8]
80026be8:	e51b3008 	ldr	r3, [fp, #-8]
80026bec:	e353000f 	cmp	r3, #15
80026bf0:	daffffe6 	ble	80026b90 <fdalloc+0x1c>
80026bf4:	e3e03000 	mvn	r3, #0
80026bf8:	e1a00003 	mov	r0, r3
80026bfc:	e28bd000 	add	sp, fp, #0
80026c00:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026c04:	e12fff1e 	bx	lr
80026c08:	800b0b6c 	.word	0x800b0b6c

80026c0c <sys_dup>:
80026c0c:	e92d4800 	push	{fp, lr}
80026c10:	e28db004 	add	fp, sp, #4
80026c14:	e24dd008 	sub	sp, sp, #8
80026c18:	e24b300c 	sub	r3, fp, #12
80026c1c:	e1a02003 	mov	r2, r3
80026c20:	e3a01000 	mov	r1, #0
80026c24:	e3a00000 	mov	r0, #0
80026c28:	ebffff9e 	bl	80026aa8 <argfd>
80026c2c:	e1a03000 	mov	r3, r0
80026c30:	e3530000 	cmp	r3, #0
80026c34:	aa000001 	bge	80026c40 <sys_dup+0x34>
80026c38:	e3e03000 	mvn	r3, #0
80026c3c:	ea00000c 	b	80026c74 <sys_dup+0x68>
80026c40:	e51b300c 	ldr	r3, [fp, #-12]
80026c44:	e1a00003 	mov	r0, r3
80026c48:	ebffffc9 	bl	80026b74 <fdalloc>
80026c4c:	e50b0008 	str	r0, [fp, #-8]
80026c50:	e51b3008 	ldr	r3, [fp, #-8]
80026c54:	e3530000 	cmp	r3, #0
80026c58:	aa000001 	bge	80026c64 <sys_dup+0x58>
80026c5c:	e3e03000 	mvn	r3, #0
80026c60:	ea000003 	b	80026c74 <sys_dup+0x68>
80026c64:	e51b300c 	ldr	r3, [fp, #-12]
80026c68:	e1a00003 	mov	r0, r3
80026c6c:	ebffee56 	bl	800225cc <filedup>
80026c70:	e51b3008 	ldr	r3, [fp, #-8]
80026c74:	e1a00003 	mov	r0, r3
80026c78:	e24bd004 	sub	sp, fp, #4
80026c7c:	e8bd8800 	pop	{fp, pc}

80026c80 <sys_read>:
80026c80:	e92d4800 	push	{fp, lr}
80026c84:	e28db004 	add	fp, sp, #4
80026c88:	e24dd010 	sub	sp, sp, #16
80026c8c:	e24b3008 	sub	r3, fp, #8
80026c90:	e1a02003 	mov	r2, r3
80026c94:	e3a01000 	mov	r1, #0
80026c98:	e3a00000 	mov	r0, #0
80026c9c:	ebffff81 	bl	80026aa8 <argfd>
80026ca0:	e1a03000 	mov	r3, r0
80026ca4:	e3530000 	cmp	r3, #0
80026ca8:	ba00000e 	blt	80026ce8 <sys_read+0x68>
80026cac:	e24b300c 	sub	r3, fp, #12
80026cb0:	e1a01003 	mov	r1, r3
80026cb4:	e3a00002 	mov	r0, #2
80026cb8:	ebfffecd 	bl	800267f4 <argint>
80026cbc:	e1a03000 	mov	r3, r0
80026cc0:	e3530000 	cmp	r3, #0
80026cc4:	ba000007 	blt	80026ce8 <sys_read+0x68>
80026cc8:	e51b200c 	ldr	r2, [fp, #-12]
80026ccc:	e24b3010 	sub	r3, fp, #16
80026cd0:	e1a01003 	mov	r1, r3
80026cd4:	e3a00001 	mov	r0, #1
80026cd8:	ebfffee0 	bl	80026860 <argptr>
80026cdc:	e1a03000 	mov	r3, r0
80026ce0:	e3530000 	cmp	r3, #0
80026ce4:	aa000001 	bge	80026cf0 <sys_read+0x70>
80026ce8:	e3e03000 	mvn	r3, #0
80026cec:	ea000005 	b	80026d08 <sys_read+0x88>
80026cf0:	e51b3008 	ldr	r3, [fp, #-8]
80026cf4:	e51b1010 	ldr	r1, [fp, #-16]
80026cf8:	e51b200c 	ldr	r2, [fp, #-12]
80026cfc:	e1a00003 	mov	r0, r3
80026d00:	ebffeea2 	bl	80022790 <fileread>
80026d04:	e1a03000 	mov	r3, r0
80026d08:	e1a00003 	mov	r0, r3
80026d0c:	e24bd004 	sub	sp, fp, #4
80026d10:	e8bd8800 	pop	{fp, pc}

80026d14 <sys_write>:
80026d14:	e92d4800 	push	{fp, lr}
80026d18:	e28db004 	add	fp, sp, #4
80026d1c:	e24dd010 	sub	sp, sp, #16
80026d20:	e24b3008 	sub	r3, fp, #8
80026d24:	e1a02003 	mov	r2, r3
80026d28:	e3a01000 	mov	r1, #0
80026d2c:	e3a00000 	mov	r0, #0
80026d30:	ebffff5c 	bl	80026aa8 <argfd>
80026d34:	e1a03000 	mov	r3, r0
80026d38:	e3530000 	cmp	r3, #0
80026d3c:	ba00000e 	blt	80026d7c <sys_write+0x68>
80026d40:	e24b300c 	sub	r3, fp, #12
80026d44:	e1a01003 	mov	r1, r3
80026d48:	e3a00002 	mov	r0, #2
80026d4c:	ebfffea8 	bl	800267f4 <argint>
80026d50:	e1a03000 	mov	r3, r0
80026d54:	e3530000 	cmp	r3, #0
80026d58:	ba000007 	blt	80026d7c <sys_write+0x68>
80026d5c:	e51b200c 	ldr	r2, [fp, #-12]
80026d60:	e24b3010 	sub	r3, fp, #16
80026d64:	e1a01003 	mov	r1, r3
80026d68:	e3a00001 	mov	r0, #1
80026d6c:	ebfffebb 	bl	80026860 <argptr>
80026d70:	e1a03000 	mov	r3, r0
80026d74:	e3530000 	cmp	r3, #0
80026d78:	aa000001 	bge	80026d84 <sys_write+0x70>
80026d7c:	e3e03000 	mvn	r3, #0
80026d80:	ea000005 	b	80026d9c <sys_write+0x88>
80026d84:	e51b3008 	ldr	r3, [fp, #-8]
80026d88:	e51b1010 	ldr	r1, [fp, #-16]
80026d8c:	e51b200c 	ldr	r2, [fp, #-12]
80026d90:	e1a00003 	mov	r0, r3
80026d94:	ebffeeba 	bl	80022884 <filewrite>
80026d98:	e1a03000 	mov	r3, r0
80026d9c:	e1a00003 	mov	r0, r3
80026da0:	e24bd004 	sub	sp, fp, #4
80026da4:	e8bd8800 	pop	{fp, pc}

80026da8 <sys_close>:
80026da8:	e92d4800 	push	{fp, lr}
80026dac:	e28db004 	add	fp, sp, #4
80026db0:	e24dd008 	sub	sp, sp, #8
80026db4:	e24b200c 	sub	r2, fp, #12
80026db8:	e24b3008 	sub	r3, fp, #8
80026dbc:	e1a01003 	mov	r1, r3
80026dc0:	e3a00000 	mov	r0, #0
80026dc4:	ebffff37 	bl	80026aa8 <argfd>
80026dc8:	e1a03000 	mov	r3, r0
80026dcc:	e3530000 	cmp	r3, #0
80026dd0:	aa000001 	bge	80026ddc <sys_close+0x34>
80026dd4:	e3e03000 	mvn	r3, #0
80026dd8:	ea00000b 	b	80026e0c <sys_close+0x64>
80026ddc:	e59f3034 	ldr	r3, [pc, #52]	@ 80026e18 <sys_close+0x70>
80026de0:	e5932000 	ldr	r2, [r3]
80026de4:	e51b3008 	ldr	r3, [fp, #-8]
80026de8:	e283300a 	add	r3, r3, #10
80026dec:	e1a03103 	lsl	r3, r3, #2
80026df0:	e0823003 	add	r3, r2, r3
80026df4:	e3a02000 	mov	r2, #0
80026df8:	e5832004 	str	r2, [r3, #4]
80026dfc:	e51b300c 	ldr	r3, [fp, #-12]
80026e00:	e1a00003 	mov	r0, r3
80026e04:	ebffee09 	bl	80022630 <fileclose>
80026e08:	e3a03000 	mov	r3, #0
80026e0c:	e1a00003 	mov	r0, r3
80026e10:	e24bd004 	sub	sp, fp, #4
80026e14:	e8bd8800 	pop	{fp, pc}
80026e18:	800b0b6c 	.word	0x800b0b6c

80026e1c <sys_fstat>:
80026e1c:	e92d4800 	push	{fp, lr}
80026e20:	e28db004 	add	fp, sp, #4
80026e24:	e24dd008 	sub	sp, sp, #8
80026e28:	e24b3008 	sub	r3, fp, #8
80026e2c:	e1a02003 	mov	r2, r3
80026e30:	e3a01000 	mov	r1, #0
80026e34:	e3a00000 	mov	r0, #0
80026e38:	ebffff1a 	bl	80026aa8 <argfd>
80026e3c:	e1a03000 	mov	r3, r0
80026e40:	e3530000 	cmp	r3, #0
80026e44:	ba000007 	blt	80026e68 <sys_fstat+0x4c>
80026e48:	e24b300c 	sub	r3, fp, #12
80026e4c:	e3a02014 	mov	r2, #20
80026e50:	e1a01003 	mov	r1, r3
80026e54:	e3a00001 	mov	r0, #1
80026e58:	ebfffe80 	bl	80026860 <argptr>
80026e5c:	e1a03000 	mov	r3, r0
80026e60:	e3530000 	cmp	r3, #0
80026e64:	aa000001 	bge	80026e70 <sys_fstat+0x54>
80026e68:	e3e03000 	mvn	r3, #0
80026e6c:	ea000005 	b	80026e88 <sys_fstat+0x6c>
80026e70:	e51b3008 	ldr	r3, [fp, #-8]
80026e74:	e51b200c 	ldr	r2, [fp, #-12]
80026e78:	e1a01002 	mov	r1, r2
80026e7c:	e1a00003 	mov	r0, r3
80026e80:	ebffee26 	bl	80022720 <filestat>
80026e84:	e1a03000 	mov	r3, r0
80026e88:	e1a00003 	mov	r0, r3
80026e8c:	e24bd004 	sub	sp, fp, #4
80026e90:	e8bd8800 	pop	{fp, pc}

80026e94 <sys_link>:
80026e94:	e92d4800 	push	{fp, lr}
80026e98:	e28db004 	add	fp, sp, #4
80026e9c:	e24dd020 	sub	sp, sp, #32
80026ea0:	e24b3024 	sub	r3, fp, #36	@ 0x24
80026ea4:	e1a01003 	mov	r1, r3
80026ea8:	e3a00000 	mov	r0, #0
80026eac:	ebfffeac 	bl	80026964 <argstr>
80026eb0:	e1a03000 	mov	r3, r0
80026eb4:	e3530000 	cmp	r3, #0
80026eb8:	ba000006 	blt	80026ed8 <sys_link+0x44>
80026ebc:	e24b3020 	sub	r3, fp, #32
80026ec0:	e1a01003 	mov	r1, r3
80026ec4:	e3a00001 	mov	r0, #1
80026ec8:	ebfffea5 	bl	80026964 <argstr>
80026ecc:	e1a03000 	mov	r3, r0
80026ed0:	e3530000 	cmp	r3, #0
80026ed4:	aa000001 	bge	80026ee0 <sys_link+0x4c>
80026ed8:	e3e03000 	mvn	r3, #0
80026edc:	ea000055 	b	80027038 <sys_link+0x1a4>
80026ee0:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80026ee4:	e1a00003 	mov	r0, r3
80026ee8:	ebfff46e 	bl	800240a8 <namei>
80026eec:	e50b0008 	str	r0, [fp, #-8]
80026ef0:	e51b3008 	ldr	r3, [fp, #-8]
80026ef4:	e3530000 	cmp	r3, #0
80026ef8:	1a000001 	bne	80026f04 <sys_link+0x70>
80026efc:	e3e03000 	mvn	r3, #0
80026f00:	ea00004c 	b	80027038 <sys_link+0x1a4>
80026f04:	ebfff540 	bl	8002440c <begin_trans>
80026f08:	e51b0008 	ldr	r0, [fp, #-8]
80026f0c:	ebfff092 	bl	8002315c <ilock>
80026f10:	e51b3008 	ldr	r3, [fp, #-8]
80026f14:	e1d331f0 	ldrsh	r3, [r3, #16]
80026f18:	e3530001 	cmp	r3, #1
80026f1c:	1a000004 	bne	80026f34 <sys_link+0xa0>
80026f20:	e51b0008 	ldr	r0, [fp, #-8]
80026f24:	ebfff14d 	bl	80023460 <iunlockput>
80026f28:	ebfff54b 	bl	8002445c <commit_trans>
80026f2c:	e3e03000 	mvn	r3, #0
80026f30:	ea000040 	b	80027038 <sys_link+0x1a4>
80026f34:	e51b3008 	ldr	r3, [fp, #-8]
80026f38:	e1d331f6 	ldrsh	r3, [r3, #22]
80026f3c:	e6ff3073 	uxth	r3, r3
80026f40:	e2833001 	add	r3, r3, #1
80026f44:	e6ff3073 	uxth	r3, r3
80026f48:	e6bf2073 	sxth	r2, r3
80026f4c:	e51b3008 	ldr	r3, [fp, #-8]
80026f50:	e1c321b6 	strh	r2, [r3, #22]
80026f54:	e51b0008 	ldr	r0, [fp, #-8]
80026f58:	ebffefe5 	bl	80022ef4 <iupdate>
80026f5c:	e51b0008 	ldr	r0, [fp, #-8]
80026f60:	ebfff0e1 	bl	800232ec <iunlock>
80026f64:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80026f68:	e24b201c 	sub	r2, fp, #28
80026f6c:	e1a01002 	mov	r1, r2
80026f70:	e1a00003 	mov	r0, r3
80026f74:	ebfff458 	bl	800240dc <nameiparent>
80026f78:	e50b000c 	str	r0, [fp, #-12]
80026f7c:	e51b300c 	ldr	r3, [fp, #-12]
80026f80:	e3530000 	cmp	r3, #0
80026f84:	0a00001a 	beq	80026ff4 <sys_link+0x160>
80026f88:	e51b000c 	ldr	r0, [fp, #-12]
80026f8c:	ebfff072 	bl	8002315c <ilock>
80026f90:	e51b300c 	ldr	r3, [fp, #-12]
80026f94:	e5932000 	ldr	r2, [r3]
80026f98:	e51b3008 	ldr	r3, [fp, #-8]
80026f9c:	e5933000 	ldr	r3, [r3]
80026fa0:	e1520003 	cmp	r2, r3
80026fa4:	1a000008 	bne	80026fcc <sys_link+0x138>
80026fa8:	e51b3008 	ldr	r3, [fp, #-8]
80026fac:	e5932004 	ldr	r2, [r3, #4]
80026fb0:	e24b301c 	sub	r3, fp, #28
80026fb4:	e1a01003 	mov	r1, r3
80026fb8:	e51b000c 	ldr	r0, [fp, #-12]
80026fbc:	ebfff363 	bl	80023d50 <dirlink>
80026fc0:	e1a03000 	mov	r3, r0
80026fc4:	e3530000 	cmp	r3, #0
80026fc8:	aa000002 	bge	80026fd8 <sys_link+0x144>
80026fcc:	e51b000c 	ldr	r0, [fp, #-12]
80026fd0:	ebfff122 	bl	80023460 <iunlockput>
80026fd4:	ea000007 	b	80026ff8 <sys_link+0x164>
80026fd8:	e51b000c 	ldr	r0, [fp, #-12]
80026fdc:	ebfff11f 	bl	80023460 <iunlockput>
80026fe0:	e51b0008 	ldr	r0, [fp, #-8]
80026fe4:	ebfff0e2 	bl	80023374 <iput>
80026fe8:	ebfff51b 	bl	8002445c <commit_trans>
80026fec:	e3a03000 	mov	r3, #0
80026ff0:	ea000010 	b	80027038 <sys_link+0x1a4>
80026ff4:	e1a00000 	nop			@ (mov r0, r0)
80026ff8:	e51b0008 	ldr	r0, [fp, #-8]
80026ffc:	ebfff056 	bl	8002315c <ilock>
80027000:	e51b3008 	ldr	r3, [fp, #-8]
80027004:	e1d331f6 	ldrsh	r3, [r3, #22]
80027008:	e6ff3073 	uxth	r3, r3
8002700c:	e2433001 	sub	r3, r3, #1
80027010:	e6ff3073 	uxth	r3, r3
80027014:	e6bf2073 	sxth	r2, r3
80027018:	e51b3008 	ldr	r3, [fp, #-8]
8002701c:	e1c321b6 	strh	r2, [r3, #22]
80027020:	e51b0008 	ldr	r0, [fp, #-8]
80027024:	ebffefb2 	bl	80022ef4 <iupdate>
80027028:	e51b0008 	ldr	r0, [fp, #-8]
8002702c:	ebfff10b 	bl	80023460 <iunlockput>
80027030:	ebfff509 	bl	8002445c <commit_trans>
80027034:	e3e03000 	mvn	r3, #0
80027038:	e1a00003 	mov	r0, r3
8002703c:	e24bd004 	sub	sp, fp, #4
80027040:	e8bd8800 	pop	{fp, pc}

80027044 <isdirempty>:
80027044:	e92d4800 	push	{fp, lr}
80027048:	e28db004 	add	fp, sp, #4
8002704c:	e24dd020 	sub	sp, sp, #32
80027050:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80027054:	e3a03020 	mov	r3, #32
80027058:	e50b3008 	str	r3, [fp, #-8]
8002705c:	ea000011 	b	800270a8 <isdirempty+0x64>
80027060:	e51b2008 	ldr	r2, [fp, #-8]
80027064:	e24b1018 	sub	r1, fp, #24
80027068:	e3a03010 	mov	r3, #16
8002706c:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80027070:	ebfff1e5 	bl	8002380c <readi>
80027074:	e1a03000 	mov	r3, r0
80027078:	e3530010 	cmp	r3, #16
8002707c:	0a000001 	beq	80027088 <isdirempty+0x44>
80027080:	e59f0044 	ldr	r0, [pc, #68]	@ 800270cc <isdirempty+0x88>
80027084:	ebffea9a 	bl	80021af4 <panic>
80027088:	e15b31b8 	ldrh	r3, [fp, #-24]	@ 0xffffffe8
8002708c:	e3530000 	cmp	r3, #0
80027090:	0a000001 	beq	8002709c <isdirempty+0x58>
80027094:	e3a03000 	mov	r3, #0
80027098:	ea000008 	b	800270c0 <isdirempty+0x7c>
8002709c:	e51b3008 	ldr	r3, [fp, #-8]
800270a0:	e2833010 	add	r3, r3, #16
800270a4:	e50b3008 	str	r3, [fp, #-8]
800270a8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800270ac:	e5932018 	ldr	r2, [r3, #24]
800270b0:	e51b3008 	ldr	r3, [fp, #-8]
800270b4:	e1520003 	cmp	r2, r3
800270b8:	8affffe8 	bhi	80027060 <isdirempty+0x1c>
800270bc:	e3a03001 	mov	r3, #1
800270c0:	e1a00003 	mov	r0, r3
800270c4:	e24bd004 	sub	sp, fp, #4
800270c8:	e8bd8800 	pop	{fp, pc}
800270cc:	8002a154 	.word	0x8002a154

800270d0 <sys_unlink>:
800270d0:	e92d4800 	push	{fp, lr}
800270d4:	e28db004 	add	fp, sp, #4
800270d8:	e24dd030 	sub	sp, sp, #48	@ 0x30
800270dc:	e24b3030 	sub	r3, fp, #48	@ 0x30
800270e0:	e1a01003 	mov	r1, r3
800270e4:	e3a00000 	mov	r0, #0
800270e8:	ebfffe1d 	bl	80026964 <argstr>
800270ec:	e1a03000 	mov	r3, r0
800270f0:	e3530000 	cmp	r3, #0
800270f4:	aa000001 	bge	80027100 <sys_unlink+0x30>
800270f8:	e3e03000 	mvn	r3, #0
800270fc:	ea00006d 	b	800272b8 <sys_unlink+0x1e8>
80027100:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
80027104:	e24b202c 	sub	r2, fp, #44	@ 0x2c
80027108:	e1a01002 	mov	r1, r2
8002710c:	e1a00003 	mov	r0, r3
80027110:	ebfff3f1 	bl	800240dc <nameiparent>
80027114:	e50b0008 	str	r0, [fp, #-8]
80027118:	e51b3008 	ldr	r3, [fp, #-8]
8002711c:	e3530000 	cmp	r3, #0
80027120:	1a000001 	bne	8002712c <sys_unlink+0x5c>
80027124:	e3e03000 	mvn	r3, #0
80027128:	ea000062 	b	800272b8 <sys_unlink+0x1e8>
8002712c:	ebfff4b6 	bl	8002440c <begin_trans>
80027130:	e51b0008 	ldr	r0, [fp, #-8]
80027134:	ebfff008 	bl	8002315c <ilock>
80027138:	e24b302c 	sub	r3, fp, #44	@ 0x2c
8002713c:	e59f1180 	ldr	r1, [pc, #384]	@ 800272c4 <sys_unlink+0x1f4>
80027140:	e1a00003 	mov	r0, r3
80027144:	ebfff2b2 	bl	80023c14 <namecmp>
80027148:	e1a03000 	mov	r3, r0
8002714c:	e3530000 	cmp	r3, #0
80027150:	0a000051 	beq	8002729c <sys_unlink+0x1cc>
80027154:	e24b302c 	sub	r3, fp, #44	@ 0x2c
80027158:	e59f1168 	ldr	r1, [pc, #360]	@ 800272c8 <sys_unlink+0x1f8>
8002715c:	e1a00003 	mov	r0, r3
80027160:	ebfff2ab 	bl	80023c14 <namecmp>
80027164:	e1a03000 	mov	r3, r0
80027168:	e3530000 	cmp	r3, #0
8002716c:	0a00004a 	beq	8002729c <sys_unlink+0x1cc>
80027170:	e24b2034 	sub	r2, fp, #52	@ 0x34
80027174:	e24b302c 	sub	r3, fp, #44	@ 0x2c
80027178:	e1a01003 	mov	r1, r3
8002717c:	e51b0008 	ldr	r0, [fp, #-8]
80027180:	ebfff2b0 	bl	80023c48 <dirlookup>
80027184:	e50b000c 	str	r0, [fp, #-12]
80027188:	e51b300c 	ldr	r3, [fp, #-12]
8002718c:	e3530000 	cmp	r3, #0
80027190:	0a000043 	beq	800272a4 <sys_unlink+0x1d4>
80027194:	e51b000c 	ldr	r0, [fp, #-12]
80027198:	ebffefef 	bl	8002315c <ilock>
8002719c:	e51b300c 	ldr	r3, [fp, #-12]
800271a0:	e1d331f6 	ldrsh	r3, [r3, #22]
800271a4:	e3530000 	cmp	r3, #0
800271a8:	ca000001 	bgt	800271b4 <sys_unlink+0xe4>
800271ac:	e59f0118 	ldr	r0, [pc, #280]	@ 800272cc <sys_unlink+0x1fc>
800271b0:	ebffea4f 	bl	80021af4 <panic>
800271b4:	e51b300c 	ldr	r3, [fp, #-12]
800271b8:	e1d331f0 	ldrsh	r3, [r3, #16]
800271bc:	e3530001 	cmp	r3, #1
800271c0:	1a000007 	bne	800271e4 <sys_unlink+0x114>
800271c4:	e51b000c 	ldr	r0, [fp, #-12]
800271c8:	ebffff9d 	bl	80027044 <isdirempty>
800271cc:	e1a03000 	mov	r3, r0
800271d0:	e3530000 	cmp	r3, #0
800271d4:	1a000002 	bne	800271e4 <sys_unlink+0x114>
800271d8:	e51b000c 	ldr	r0, [fp, #-12]
800271dc:	ebfff09f 	bl	80023460 <iunlockput>
800271e0:	ea000030 	b	800272a8 <sys_unlink+0x1d8>
800271e4:	e24b301c 	sub	r3, fp, #28
800271e8:	e3a02010 	mov	r2, #16
800271ec:	e3a01000 	mov	r1, #0
800271f0:	e1a00003 	mov	r0, r3
800271f4:	ebffe381 	bl	80020000 <memset>
800271f8:	e51b2034 	ldr	r2, [fp, #-52]	@ 0xffffffcc
800271fc:	e24b101c 	sub	r1, fp, #28
80027200:	e3a03010 	mov	r3, #16
80027204:	e51b0008 	ldr	r0, [fp, #-8]
80027208:	ebfff1fa 	bl	800239f8 <writei>
8002720c:	e1a03000 	mov	r3, r0
80027210:	e3530010 	cmp	r3, #16
80027214:	0a000001 	beq	80027220 <sys_unlink+0x150>
80027218:	e59f00b0 	ldr	r0, [pc, #176]	@ 800272d0 <sys_unlink+0x200>
8002721c:	ebffea34 	bl	80021af4 <panic>
80027220:	e51b300c 	ldr	r3, [fp, #-12]
80027224:	e1d331f0 	ldrsh	r3, [r3, #16]
80027228:	e3530001 	cmp	r3, #1
8002722c:	1a000009 	bne	80027258 <sys_unlink+0x188>
80027230:	e51b3008 	ldr	r3, [fp, #-8]
80027234:	e1d331f6 	ldrsh	r3, [r3, #22]
80027238:	e6ff3073 	uxth	r3, r3
8002723c:	e2433001 	sub	r3, r3, #1
80027240:	e6ff3073 	uxth	r3, r3
80027244:	e6bf2073 	sxth	r2, r3
80027248:	e51b3008 	ldr	r3, [fp, #-8]
8002724c:	e1c321b6 	strh	r2, [r3, #22]
80027250:	e51b0008 	ldr	r0, [fp, #-8]
80027254:	ebffef26 	bl	80022ef4 <iupdate>
80027258:	e51b0008 	ldr	r0, [fp, #-8]
8002725c:	ebfff07f 	bl	80023460 <iunlockput>
80027260:	e51b300c 	ldr	r3, [fp, #-12]
80027264:	e1d331f6 	ldrsh	r3, [r3, #22]
80027268:	e6ff3073 	uxth	r3, r3
8002726c:	e2433001 	sub	r3, r3, #1
80027270:	e6ff3073 	uxth	r3, r3
80027274:	e6bf2073 	sxth	r2, r3
80027278:	e51b300c 	ldr	r3, [fp, #-12]
8002727c:	e1c321b6 	strh	r2, [r3, #22]
80027280:	e51b000c 	ldr	r0, [fp, #-12]
80027284:	ebffef1a 	bl	80022ef4 <iupdate>
80027288:	e51b000c 	ldr	r0, [fp, #-12]
8002728c:	ebfff073 	bl	80023460 <iunlockput>
80027290:	ebfff471 	bl	8002445c <commit_trans>
80027294:	e3a03000 	mov	r3, #0
80027298:	ea000006 	b	800272b8 <sys_unlink+0x1e8>
8002729c:	e1a00000 	nop			@ (mov r0, r0)
800272a0:	ea000000 	b	800272a8 <sys_unlink+0x1d8>
800272a4:	e1a00000 	nop			@ (mov r0, r0)
800272a8:	e51b0008 	ldr	r0, [fp, #-8]
800272ac:	ebfff06b 	bl	80023460 <iunlockput>
800272b0:	ebfff469 	bl	8002445c <commit_trans>
800272b4:	e3e03000 	mvn	r3, #0
800272b8:	e1a00003 	mov	r0, r3
800272bc:	e24bd004 	sub	sp, fp, #4
800272c0:	e8bd8800 	pop	{fp, pc}
800272c4:	8002a168 	.word	0x8002a168
800272c8:	8002a16c 	.word	0x8002a16c
800272cc:	8002a170 	.word	0x8002a170
800272d0:	8002a184 	.word	0x8002a184

800272d4 <create>:
800272d4:	e92d4800 	push	{fp, lr}
800272d8:	e28db004 	add	fp, sp, #4
800272dc:	e24dd030 	sub	sp, sp, #48	@ 0x30
800272e0:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
800272e4:	e1a00001 	mov	r0, r1
800272e8:	e1a01002 	mov	r1, r2
800272ec:	e1a02003 	mov	r2, r3
800272f0:	e1a03000 	mov	r3, r0
800272f4:	e14b32ba 	strh	r3, [fp, #-42]	@ 0xffffffd6
800272f8:	e1a03001 	mov	r3, r1
800272fc:	e14b32bc 	strh	r3, [fp, #-44]	@ 0xffffffd4
80027300:	e1a03002 	mov	r3, r2
80027304:	e14b32be 	strh	r3, [fp, #-46]	@ 0xffffffd2
80027308:	e24b3020 	sub	r3, fp, #32
8002730c:	e1a01003 	mov	r1, r3
80027310:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80027314:	ebfff370 	bl	800240dc <nameiparent>
80027318:	e50b0008 	str	r0, [fp, #-8]
8002731c:	e51b3008 	ldr	r3, [fp, #-8]
80027320:	e3530000 	cmp	r3, #0
80027324:	1a000001 	bne	80027330 <create+0x5c>
80027328:	e3a03000 	mov	r3, #0
8002732c:	ea000063 	b	800274c0 <create+0x1ec>
80027330:	e51b0008 	ldr	r0, [fp, #-8]
80027334:	ebffef88 	bl	8002315c <ilock>
80027338:	e24b2010 	sub	r2, fp, #16
8002733c:	e24b3020 	sub	r3, fp, #32
80027340:	e1a01003 	mov	r1, r3
80027344:	e51b0008 	ldr	r0, [fp, #-8]
80027348:	ebfff23e 	bl	80023c48 <dirlookup>
8002734c:	e50b000c 	str	r0, [fp, #-12]
80027350:	e51b300c 	ldr	r3, [fp, #-12]
80027354:	e3530000 	cmp	r3, #0
80027358:	0a000010 	beq	800273a0 <create+0xcc>
8002735c:	e51b0008 	ldr	r0, [fp, #-8]
80027360:	ebfff03e 	bl	80023460 <iunlockput>
80027364:	e51b000c 	ldr	r0, [fp, #-12]
80027368:	ebffef7b 	bl	8002315c <ilock>
8002736c:	e15b32fa 	ldrsh	r3, [fp, #-42]	@ 0xffffffd6
80027370:	e3530002 	cmp	r3, #2
80027374:	1a000005 	bne	80027390 <create+0xbc>
80027378:	e51b300c 	ldr	r3, [fp, #-12]
8002737c:	e1d331f0 	ldrsh	r3, [r3, #16]
80027380:	e3530002 	cmp	r3, #2
80027384:	1a000001 	bne	80027390 <create+0xbc>
80027388:	e51b300c 	ldr	r3, [fp, #-12]
8002738c:	ea00004b 	b	800274c0 <create+0x1ec>
80027390:	e51b000c 	ldr	r0, [fp, #-12]
80027394:	ebfff031 	bl	80023460 <iunlockput>
80027398:	e3a03000 	mov	r3, #0
8002739c:	ea000047 	b	800274c0 <create+0x1ec>
800273a0:	e51b3008 	ldr	r3, [fp, #-8]
800273a4:	e5933000 	ldr	r3, [r3]
800273a8:	e15b22fa 	ldrsh	r2, [fp, #-42]	@ 0xffffffd6
800273ac:	e1a01002 	mov	r1, r2
800273b0:	e1a00003 	mov	r0, r3
800273b4:	ebffee8e 	bl	80022df4 <ialloc>
800273b8:	e50b000c 	str	r0, [fp, #-12]
800273bc:	e51b300c 	ldr	r3, [fp, #-12]
800273c0:	e3530000 	cmp	r3, #0
800273c4:	1a000001 	bne	800273d0 <create+0xfc>
800273c8:	e59f00fc 	ldr	r0, [pc, #252]	@ 800274cc <create+0x1f8>
800273cc:	ebffe9c8 	bl	80021af4 <panic>
800273d0:	e51b000c 	ldr	r0, [fp, #-12]
800273d4:	ebffef60 	bl	8002315c <ilock>
800273d8:	e51b300c 	ldr	r3, [fp, #-12]
800273dc:	e15b22bc 	ldrh	r2, [fp, #-44]	@ 0xffffffd4
800273e0:	e1c321b2 	strh	r2, [r3, #18]
800273e4:	e51b300c 	ldr	r3, [fp, #-12]
800273e8:	e15b22be 	ldrh	r2, [fp, #-46]	@ 0xffffffd2
800273ec:	e1c321b4 	strh	r2, [r3, #20]
800273f0:	e51b300c 	ldr	r3, [fp, #-12]
800273f4:	e3a02001 	mov	r2, #1
800273f8:	e1c321b6 	strh	r2, [r3, #22]
800273fc:	e51b000c 	ldr	r0, [fp, #-12]
80027400:	ebffeebb 	bl	80022ef4 <iupdate>
80027404:	e15b32fa 	ldrsh	r3, [fp, #-42]	@ 0xffffffd6
80027408:	e3530001 	cmp	r3, #1
8002740c:	1a00001d 	bne	80027488 <create+0x1b4>
80027410:	e51b3008 	ldr	r3, [fp, #-8]
80027414:	e1d331f6 	ldrsh	r3, [r3, #22]
80027418:	e6ff3073 	uxth	r3, r3
8002741c:	e2833001 	add	r3, r3, #1
80027420:	e6ff3073 	uxth	r3, r3
80027424:	e6bf2073 	sxth	r2, r3
80027428:	e51b3008 	ldr	r3, [fp, #-8]
8002742c:	e1c321b6 	strh	r2, [r3, #22]
80027430:	e51b0008 	ldr	r0, [fp, #-8]
80027434:	ebffeeae 	bl	80022ef4 <iupdate>
80027438:	e51b300c 	ldr	r3, [fp, #-12]
8002743c:	e5933004 	ldr	r3, [r3, #4]
80027440:	e1a02003 	mov	r2, r3
80027444:	e59f1084 	ldr	r1, [pc, #132]	@ 800274d0 <create+0x1fc>
80027448:	e51b000c 	ldr	r0, [fp, #-12]
8002744c:	ebfff23f 	bl	80023d50 <dirlink>
80027450:	e1a03000 	mov	r3, r0
80027454:	e3530000 	cmp	r3, #0
80027458:	ba000008 	blt	80027480 <create+0x1ac>
8002745c:	e51b3008 	ldr	r3, [fp, #-8]
80027460:	e5933004 	ldr	r3, [r3, #4]
80027464:	e1a02003 	mov	r2, r3
80027468:	e59f1064 	ldr	r1, [pc, #100]	@ 800274d4 <create+0x200>
8002746c:	e51b000c 	ldr	r0, [fp, #-12]
80027470:	ebfff236 	bl	80023d50 <dirlink>
80027474:	e1a03000 	mov	r3, r0
80027478:	e3530000 	cmp	r3, #0
8002747c:	aa000001 	bge	80027488 <create+0x1b4>
80027480:	e59f0050 	ldr	r0, [pc, #80]	@ 800274d8 <create+0x204>
80027484:	ebffe99a 	bl	80021af4 <panic>
80027488:	e51b300c 	ldr	r3, [fp, #-12]
8002748c:	e5932004 	ldr	r2, [r3, #4]
80027490:	e24b3020 	sub	r3, fp, #32
80027494:	e1a01003 	mov	r1, r3
80027498:	e51b0008 	ldr	r0, [fp, #-8]
8002749c:	ebfff22b 	bl	80023d50 <dirlink>
800274a0:	e1a03000 	mov	r3, r0
800274a4:	e3530000 	cmp	r3, #0
800274a8:	aa000001 	bge	800274b4 <create+0x1e0>
800274ac:	e59f0028 	ldr	r0, [pc, #40]	@ 800274dc <create+0x208>
800274b0:	ebffe98f 	bl	80021af4 <panic>
800274b4:	e51b0008 	ldr	r0, [fp, #-8]
800274b8:	ebffefe8 	bl	80023460 <iunlockput>
800274bc:	e51b300c 	ldr	r3, [fp, #-12]
800274c0:	e1a00003 	mov	r0, r3
800274c4:	e24bd004 	sub	sp, fp, #4
800274c8:	e8bd8800 	pop	{fp, pc}
800274cc:	8002a194 	.word	0x8002a194
800274d0:	8002a168 	.word	0x8002a168
800274d4:	8002a16c 	.word	0x8002a16c
800274d8:	8002a1a4 	.word	0x8002a1a4
800274dc:	8002a1b0 	.word	0x8002a1b0

800274e0 <sys_open>:
800274e0:	e92d4800 	push	{fp, lr}
800274e4:	e28db004 	add	fp, sp, #4
800274e8:	e24dd018 	sub	sp, sp, #24
800274ec:	e24b3014 	sub	r3, fp, #20
800274f0:	e1a01003 	mov	r1, r3
800274f4:	e3a00000 	mov	r0, #0
800274f8:	ebfffd19 	bl	80026964 <argstr>
800274fc:	e1a03000 	mov	r3, r0
80027500:	e3530000 	cmp	r3, #0
80027504:	ba000006 	blt	80027524 <sys_open+0x44>
80027508:	e24b3018 	sub	r3, fp, #24
8002750c:	e1a01003 	mov	r1, r3
80027510:	e3a00001 	mov	r0, #1
80027514:	ebfffcb6 	bl	800267f4 <argint>
80027518:	e1a03000 	mov	r3, r0
8002751c:	e3530000 	cmp	r3, #0
80027520:	aa000001 	bge	8002752c <sys_open+0x4c>
80027524:	e3e03000 	mvn	r3, #0
80027528:	ea00005d 	b	800276a4 <sys_open+0x1c4>
8002752c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027530:	e2033c02 	and	r3, r3, #512	@ 0x200
80027534:	e3530000 	cmp	r3, #0
80027538:	0a00000c 	beq	80027570 <sys_open+0x90>
8002753c:	ebfff3b2 	bl	8002440c <begin_trans>
80027540:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80027544:	e3a03000 	mov	r3, #0
80027548:	e3a02000 	mov	r2, #0
8002754c:	e3a01002 	mov	r1, #2
80027550:	ebffff5f 	bl	800272d4 <create>
80027554:	e50b0008 	str	r0, [fp, #-8]
80027558:	ebfff3bf 	bl	8002445c <commit_trans>
8002755c:	e51b3008 	ldr	r3, [fp, #-8]
80027560:	e3530000 	cmp	r3, #0
80027564:	1a000017 	bne	800275c8 <sys_open+0xe8>
80027568:	e3e03000 	mvn	r3, #0
8002756c:	ea00004c 	b	800276a4 <sys_open+0x1c4>
80027570:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027574:	e1a00003 	mov	r0, r3
80027578:	ebfff2ca 	bl	800240a8 <namei>
8002757c:	e50b0008 	str	r0, [fp, #-8]
80027580:	e51b3008 	ldr	r3, [fp, #-8]
80027584:	e3530000 	cmp	r3, #0
80027588:	1a000001 	bne	80027594 <sys_open+0xb4>
8002758c:	e3e03000 	mvn	r3, #0
80027590:	ea000043 	b	800276a4 <sys_open+0x1c4>
80027594:	e51b0008 	ldr	r0, [fp, #-8]
80027598:	ebffeeef 	bl	8002315c <ilock>
8002759c:	e51b3008 	ldr	r3, [fp, #-8]
800275a0:	e1d331f0 	ldrsh	r3, [r3, #16]
800275a4:	e3530001 	cmp	r3, #1
800275a8:	1a000006 	bne	800275c8 <sys_open+0xe8>
800275ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800275b0:	e3530000 	cmp	r3, #0
800275b4:	0a000003 	beq	800275c8 <sys_open+0xe8>
800275b8:	e51b0008 	ldr	r0, [fp, #-8]
800275bc:	ebffefa7 	bl	80023460 <iunlockput>
800275c0:	e3e03000 	mvn	r3, #0
800275c4:	ea000036 	b	800276a4 <sys_open+0x1c4>
800275c8:	ebffebdc 	bl	80022540 <filealloc>
800275cc:	e50b000c 	str	r0, [fp, #-12]
800275d0:	e51b300c 	ldr	r3, [fp, #-12]
800275d4:	e3530000 	cmp	r3, #0
800275d8:	0a000005 	beq	800275f4 <sys_open+0x114>
800275dc:	e51b000c 	ldr	r0, [fp, #-12]
800275e0:	ebfffd63 	bl	80026b74 <fdalloc>
800275e4:	e50b0010 	str	r0, [fp, #-16]
800275e8:	e51b3010 	ldr	r3, [fp, #-16]
800275ec:	e3530000 	cmp	r3, #0
800275f0:	aa000008 	bge	80027618 <sys_open+0x138>
800275f4:	e51b300c 	ldr	r3, [fp, #-12]
800275f8:	e3530000 	cmp	r3, #0
800275fc:	0a000001 	beq	80027608 <sys_open+0x128>
80027600:	e51b000c 	ldr	r0, [fp, #-12]
80027604:	ebffec09 	bl	80022630 <fileclose>
80027608:	e51b0008 	ldr	r0, [fp, #-8]
8002760c:	ebffef93 	bl	80023460 <iunlockput>
80027610:	e3e03000 	mvn	r3, #0
80027614:	ea000022 	b	800276a4 <sys_open+0x1c4>
80027618:	e51b0008 	ldr	r0, [fp, #-8]
8002761c:	ebffef32 	bl	800232ec <iunlock>
80027620:	e51b300c 	ldr	r3, [fp, #-12]
80027624:	e3a02002 	mov	r2, #2
80027628:	e5c32000 	strb	r2, [r3]
8002762c:	e51b300c 	ldr	r3, [fp, #-12]
80027630:	e51b2008 	ldr	r2, [fp, #-8]
80027634:	e5832010 	str	r2, [r3, #16]
80027638:	e51b300c 	ldr	r3, [fp, #-12]
8002763c:	e3a02000 	mov	r2, #0
80027640:	e5832014 	str	r2, [r3, #20]
80027644:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027648:	e2033001 	and	r3, r3, #1
8002764c:	e3530000 	cmp	r3, #0
80027650:	03a03001 	moveq	r3, #1
80027654:	13a03000 	movne	r3, #0
80027658:	e6ef3073 	uxtb	r3, r3
8002765c:	e1a02003 	mov	r2, r3
80027660:	e51b300c 	ldr	r3, [fp, #-12]
80027664:	e5c32008 	strb	r2, [r3, #8]
80027668:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002766c:	e2033001 	and	r3, r3, #1
80027670:	e3530000 	cmp	r3, #0
80027674:	1a000003 	bne	80027688 <sys_open+0x1a8>
80027678:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002767c:	e2033002 	and	r3, r3, #2
80027680:	e3530000 	cmp	r3, #0
80027684:	0a000001 	beq	80027690 <sys_open+0x1b0>
80027688:	e3a03001 	mov	r3, #1
8002768c:	ea000000 	b	80027694 <sys_open+0x1b4>
80027690:	e3a03000 	mov	r3, #0
80027694:	e6ef2073 	uxtb	r2, r3
80027698:	e51b300c 	ldr	r3, [fp, #-12]
8002769c:	e5c32009 	strb	r2, [r3, #9]
800276a0:	e51b3010 	ldr	r3, [fp, #-16]
800276a4:	e1a00003 	mov	r0, r3
800276a8:	e24bd004 	sub	sp, fp, #4
800276ac:	e8bd8800 	pop	{fp, pc}

800276b0 <sys_mkdir>:
800276b0:	e92d4800 	push	{fp, lr}
800276b4:	e28db004 	add	fp, sp, #4
800276b8:	e24dd008 	sub	sp, sp, #8
800276bc:	ebfff352 	bl	8002440c <begin_trans>
800276c0:	e24b300c 	sub	r3, fp, #12
800276c4:	e1a01003 	mov	r1, r3
800276c8:	e3a00000 	mov	r0, #0
800276cc:	ebfffca4 	bl	80026964 <argstr>
800276d0:	e1a03000 	mov	r3, r0
800276d4:	e3530000 	cmp	r3, #0
800276d8:	ba000008 	blt	80027700 <sys_mkdir+0x50>
800276dc:	e51b000c 	ldr	r0, [fp, #-12]
800276e0:	e3a03000 	mov	r3, #0
800276e4:	e3a02000 	mov	r2, #0
800276e8:	e3a01001 	mov	r1, #1
800276ec:	ebfffef8 	bl	800272d4 <create>
800276f0:	e50b0008 	str	r0, [fp, #-8]
800276f4:	e51b3008 	ldr	r3, [fp, #-8]
800276f8:	e3530000 	cmp	r3, #0
800276fc:	1a000002 	bne	8002770c <sys_mkdir+0x5c>
80027700:	ebfff355 	bl	8002445c <commit_trans>
80027704:	e3e03000 	mvn	r3, #0
80027708:	ea000003 	b	8002771c <sys_mkdir+0x6c>
8002770c:	e51b0008 	ldr	r0, [fp, #-8]
80027710:	ebffef52 	bl	80023460 <iunlockput>
80027714:	ebfff350 	bl	8002445c <commit_trans>
80027718:	e3a03000 	mov	r3, #0
8002771c:	e1a00003 	mov	r0, r3
80027720:	e24bd004 	sub	sp, fp, #4
80027724:	e8bd8800 	pop	{fp, pc}

80027728 <sys_mknod>:
80027728:	e92d4800 	push	{fp, lr}
8002772c:	e28db004 	add	fp, sp, #4
80027730:	e24dd018 	sub	sp, sp, #24
80027734:	ebfff334 	bl	8002440c <begin_trans>
80027738:	e24b3010 	sub	r3, fp, #16
8002773c:	e1a01003 	mov	r1, r3
80027740:	e3a00000 	mov	r0, #0
80027744:	ebfffc86 	bl	80026964 <argstr>
80027748:	e50b0008 	str	r0, [fp, #-8]
8002774c:	e51b3008 	ldr	r3, [fp, #-8]
80027750:	e3530000 	cmp	r3, #0
80027754:	ba000018 	blt	800277bc <sys_mknod+0x94>
80027758:	e24b3014 	sub	r3, fp, #20
8002775c:	e1a01003 	mov	r1, r3
80027760:	e3a00001 	mov	r0, #1
80027764:	ebfffc22 	bl	800267f4 <argint>
80027768:	e1a03000 	mov	r3, r0
8002776c:	e3530000 	cmp	r3, #0
80027770:	ba000011 	blt	800277bc <sys_mknod+0x94>
80027774:	e24b3018 	sub	r3, fp, #24
80027778:	e1a01003 	mov	r1, r3
8002777c:	e3a00002 	mov	r0, #2
80027780:	ebfffc1b 	bl	800267f4 <argint>
80027784:	e1a03000 	mov	r3, r0
80027788:	e3530000 	cmp	r3, #0
8002778c:	ba00000a 	blt	800277bc <sys_mknod+0x94>
80027790:	e51b0010 	ldr	r0, [fp, #-16]
80027794:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027798:	e6bf2073 	sxth	r2, r3
8002779c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800277a0:	e6bf3073 	sxth	r3, r3
800277a4:	e3a01003 	mov	r1, #3
800277a8:	ebfffec9 	bl	800272d4 <create>
800277ac:	e50b000c 	str	r0, [fp, #-12]
800277b0:	e51b300c 	ldr	r3, [fp, #-12]
800277b4:	e3530000 	cmp	r3, #0
800277b8:	1a000002 	bne	800277c8 <sys_mknod+0xa0>
800277bc:	ebfff326 	bl	8002445c <commit_trans>
800277c0:	e3e03000 	mvn	r3, #0
800277c4:	ea000003 	b	800277d8 <sys_mknod+0xb0>
800277c8:	e51b000c 	ldr	r0, [fp, #-12]
800277cc:	ebffef23 	bl	80023460 <iunlockput>
800277d0:	ebfff321 	bl	8002445c <commit_trans>
800277d4:	e3a03000 	mov	r3, #0
800277d8:	e1a00003 	mov	r0, r3
800277dc:	e24bd004 	sub	sp, fp, #4
800277e0:	e8bd8800 	pop	{fp, pc}

800277e4 <sys_chdir>:
800277e4:	e92d4800 	push	{fp, lr}
800277e8:	e28db004 	add	fp, sp, #4
800277ec:	e24dd008 	sub	sp, sp, #8
800277f0:	e24b300c 	sub	r3, fp, #12
800277f4:	e1a01003 	mov	r1, r3
800277f8:	e3a00000 	mov	r0, #0
800277fc:	ebfffc58 	bl	80026964 <argstr>
80027800:	e1a03000 	mov	r3, r0
80027804:	e3530000 	cmp	r3, #0
80027808:	ba000006 	blt	80027828 <sys_chdir+0x44>
8002780c:	e51b300c 	ldr	r3, [fp, #-12]
80027810:	e1a00003 	mov	r0, r3
80027814:	ebfff223 	bl	800240a8 <namei>
80027818:	e50b0008 	str	r0, [fp, #-8]
8002781c:	e51b3008 	ldr	r3, [fp, #-8]
80027820:	e3530000 	cmp	r3, #0
80027824:	1a000001 	bne	80027830 <sys_chdir+0x4c>
80027828:	e3e03000 	mvn	r3, #0
8002782c:	ea000015 	b	80027888 <sys_chdir+0xa4>
80027830:	e51b0008 	ldr	r0, [fp, #-8]
80027834:	ebffee48 	bl	8002315c <ilock>
80027838:	e51b3008 	ldr	r3, [fp, #-8]
8002783c:	e1d331f0 	ldrsh	r3, [r3, #16]
80027840:	e3530001 	cmp	r3, #1
80027844:	0a000003 	beq	80027858 <sys_chdir+0x74>
80027848:	e51b0008 	ldr	r0, [fp, #-8]
8002784c:	ebffef03 	bl	80023460 <iunlockput>
80027850:	e3e03000 	mvn	r3, #0
80027854:	ea00000b 	b	80027888 <sys_chdir+0xa4>
80027858:	e51b0008 	ldr	r0, [fp, #-8]
8002785c:	ebffeea2 	bl	800232ec <iunlock>
80027860:	e59f302c 	ldr	r3, [pc, #44]	@ 80027894 <sys_chdir+0xb0>
80027864:	e5933000 	ldr	r3, [r3]
80027868:	e593306c 	ldr	r3, [r3, #108]	@ 0x6c
8002786c:	e1a00003 	mov	r0, r3
80027870:	ebffeebf 	bl	80023374 <iput>
80027874:	e59f3018 	ldr	r3, [pc, #24]	@ 80027894 <sys_chdir+0xb0>
80027878:	e5933000 	ldr	r3, [r3]
8002787c:	e51b2008 	ldr	r2, [fp, #-8]
80027880:	e583206c 	str	r2, [r3, #108]	@ 0x6c
80027884:	e3a03000 	mov	r3, #0
80027888:	e1a00003 	mov	r0, r3
8002788c:	e24bd004 	sub	sp, fp, #4
80027890:	e8bd8800 	pop	{fp, pc}
80027894:	800b0b6c 	.word	0x800b0b6c

80027898 <sys_exec>:
80027898:	e92d4800 	push	{fp, lr}
8002789c:	e28db004 	add	fp, sp, #4
800278a0:	e24dd090 	sub	sp, sp, #144	@ 0x90
800278a4:	e24b300c 	sub	r3, fp, #12
800278a8:	e1a01003 	mov	r1, r3
800278ac:	e3a00000 	mov	r0, #0
800278b0:	ebfffc2b 	bl	80026964 <argstr>
800278b4:	e1a03000 	mov	r3, r0
800278b8:	e3530000 	cmp	r3, #0
800278bc:	ba000006 	blt	800278dc <sys_exec+0x44>
800278c0:	e24b3090 	sub	r3, fp, #144	@ 0x90
800278c4:	e1a01003 	mov	r1, r3
800278c8:	e3a00001 	mov	r0, #1
800278cc:	ebfffbc8 	bl	800267f4 <argint>
800278d0:	e1a03000 	mov	r3, r0
800278d4:	e3530000 	cmp	r3, #0
800278d8:	aa000001 	bge	800278e4 <sys_exec+0x4c>
800278dc:	e3e03000 	mvn	r3, #0
800278e0:	ea00003a 	b	800279d0 <sys_exec+0x138>
800278e4:	e24b308c 	sub	r3, fp, #140	@ 0x8c
800278e8:	e3a02080 	mov	r2, #128	@ 0x80
800278ec:	e3a01000 	mov	r1, #0
800278f0:	e1a00003 	mov	r0, r3
800278f4:	ebffe1c1 	bl	80020000 <memset>
800278f8:	e3a03000 	mov	r3, #0
800278fc:	e50b3008 	str	r3, [fp, #-8]
80027900:	e51b3008 	ldr	r3, [fp, #-8]
80027904:	e353001f 	cmp	r3, #31
80027908:	9a000001 	bls	80027914 <sys_exec+0x7c>
8002790c:	e3e03000 	mvn	r3, #0
80027910:	ea00002e 	b	800279d0 <sys_exec+0x138>
80027914:	e51b3008 	ldr	r3, [fp, #-8]
80027918:	e1a03103 	lsl	r3, r3, #2
8002791c:	e1a02003 	mov	r2, r3
80027920:	e51b3090 	ldr	r3, [fp, #-144]	@ 0xffffff70
80027924:	e0823003 	add	r3, r2, r3
80027928:	e24b2094 	sub	r2, fp, #148	@ 0x94
8002792c:	e1a01002 	mov	r1, r2
80027930:	e1a00003 	mov	r0, r3
80027934:	ebfffb62 	bl	800266c4 <fetchint>
80027938:	e1a03000 	mov	r3, r0
8002793c:	e3530000 	cmp	r3, #0
80027940:	aa000001 	bge	8002794c <sys_exec+0xb4>
80027944:	e3e03000 	mvn	r3, #0
80027948:	ea000020 	b	800279d0 <sys_exec+0x138>
8002794c:	e51b3094 	ldr	r3, [fp, #-148]	@ 0xffffff6c
80027950:	e3530000 	cmp	r3, #0
80027954:	1a00000d 	bne	80027990 <sys_exec+0xf8>
80027958:	e51b3008 	ldr	r3, [fp, #-8]
8002795c:	e1a03103 	lsl	r3, r3, #2
80027960:	e2433004 	sub	r3, r3, #4
80027964:	e083300b 	add	r3, r3, fp
80027968:	e3a02000 	mov	r2, #0
8002796c:	e5032088 	str	r2, [r3, #-136]	@ 0xffffff78
80027970:	e1a00000 	nop			@ (mov r0, r0)
80027974:	e51b300c 	ldr	r3, [fp, #-12]
80027978:	e24b208c 	sub	r2, fp, #140	@ 0x8c
8002797c:	e1a01002 	mov	r1, r2
80027980:	e1a00003 	mov	r0, r3
80027984:	ebffe9b1 	bl	80022050 <exec>
80027988:	e1a03000 	mov	r3, r0
8002798c:	ea00000f 	b	800279d0 <sys_exec+0x138>
80027990:	e51b0094 	ldr	r0, [fp, #-148]	@ 0xffffff6c
80027994:	e24b208c 	sub	r2, fp, #140	@ 0x8c
80027998:	e51b3008 	ldr	r3, [fp, #-8]
8002799c:	e1a03103 	lsl	r3, r3, #2
800279a0:	e0823003 	add	r3, r2, r3
800279a4:	e1a01003 	mov	r1, r3
800279a8:	ebfffb63 	bl	8002673c <fetchstr>
800279ac:	e1a03000 	mov	r3, r0
800279b0:	e3530000 	cmp	r3, #0
800279b4:	aa000001 	bge	800279c0 <sys_exec+0x128>
800279b8:	e3e03000 	mvn	r3, #0
800279bc:	ea000003 	b	800279d0 <sys_exec+0x138>
800279c0:	e51b3008 	ldr	r3, [fp, #-8]
800279c4:	e2833001 	add	r3, r3, #1
800279c8:	e50b3008 	str	r3, [fp, #-8]
800279cc:	eaffffcb 	b	80027900 <sys_exec+0x68>
800279d0:	e1a00003 	mov	r0, r3
800279d4:	e24bd004 	sub	sp, fp, #4
800279d8:	e8bd8800 	pop	{fp, pc}

800279dc <sys_pipe>:
800279dc:	e92d4800 	push	{fp, lr}
800279e0:	e28db004 	add	fp, sp, #4
800279e4:	e24dd018 	sub	sp, sp, #24
800279e8:	e24b3010 	sub	r3, fp, #16
800279ec:	e3a02008 	mov	r2, #8
800279f0:	e1a01003 	mov	r1, r3
800279f4:	e3a00000 	mov	r0, #0
800279f8:	ebfffb98 	bl	80026860 <argptr>
800279fc:	e1a03000 	mov	r3, r0
80027a00:	e3530000 	cmp	r3, #0
80027a04:	aa000001 	bge	80027a10 <sys_pipe+0x34>
80027a08:	e3e03000 	mvn	r3, #0
80027a0c:	ea000034 	b	80027ae4 <sys_pipe+0x108>
80027a10:	e24b2018 	sub	r2, fp, #24
80027a14:	e24b3014 	sub	r3, fp, #20
80027a18:	e1a01002 	mov	r1, r2
80027a1c:	e1a00003 	mov	r0, r3
80027a20:	ebfff3a0 	bl	800248a8 <pipealloc>
80027a24:	e1a03000 	mov	r3, r0
80027a28:	e3530000 	cmp	r3, #0
80027a2c:	aa000001 	bge	80027a38 <sys_pipe+0x5c>
80027a30:	e3e03000 	mvn	r3, #0
80027a34:	ea00002a 	b	80027ae4 <sys_pipe+0x108>
80027a38:	e3e03000 	mvn	r3, #0
80027a3c:	e50b3008 	str	r3, [fp, #-8]
80027a40:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027a44:	e1a00003 	mov	r0, r3
80027a48:	ebfffc49 	bl	80026b74 <fdalloc>
80027a4c:	e50b0008 	str	r0, [fp, #-8]
80027a50:	e51b3008 	ldr	r3, [fp, #-8]
80027a54:	e3530000 	cmp	r3, #0
80027a58:	ba000006 	blt	80027a78 <sys_pipe+0x9c>
80027a5c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027a60:	e1a00003 	mov	r0, r3
80027a64:	ebfffc42 	bl	80026b74 <fdalloc>
80027a68:	e50b000c 	str	r0, [fp, #-12]
80027a6c:	e51b300c 	ldr	r3, [fp, #-12]
80027a70:	e3530000 	cmp	r3, #0
80027a74:	aa000012 	bge	80027ac4 <sys_pipe+0xe8>
80027a78:	e51b3008 	ldr	r3, [fp, #-8]
80027a7c:	e3530000 	cmp	r3, #0
80027a80:	ba000007 	blt	80027aa4 <sys_pipe+0xc8>
80027a84:	e59f3064 	ldr	r3, [pc, #100]	@ 80027af0 <sys_pipe+0x114>
80027a88:	e5932000 	ldr	r2, [r3]
80027a8c:	e51b3008 	ldr	r3, [fp, #-8]
80027a90:	e283300a 	add	r3, r3, #10
80027a94:	e1a03103 	lsl	r3, r3, #2
80027a98:	e0823003 	add	r3, r2, r3
80027a9c:	e3a02000 	mov	r2, #0
80027aa0:	e5832004 	str	r2, [r3, #4]
80027aa4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027aa8:	e1a00003 	mov	r0, r3
80027aac:	ebffeadf 	bl	80022630 <fileclose>
80027ab0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027ab4:	e1a00003 	mov	r0, r3
80027ab8:	ebffeadc 	bl	80022630 <fileclose>
80027abc:	e3e03000 	mvn	r3, #0
80027ac0:	ea000007 	b	80027ae4 <sys_pipe+0x108>
80027ac4:	e51b3010 	ldr	r3, [fp, #-16]
80027ac8:	e51b2008 	ldr	r2, [fp, #-8]
80027acc:	e5832000 	str	r2, [r3]
80027ad0:	e51b3010 	ldr	r3, [fp, #-16]
80027ad4:	e2833004 	add	r3, r3, #4
80027ad8:	e51b200c 	ldr	r2, [fp, #-12]
80027adc:	e5832000 	str	r2, [r3]
80027ae0:	e3a03000 	mov	r3, #0
80027ae4:	e1a00003 	mov	r0, r3
80027ae8:	e24bd004 	sub	sp, fp, #4
80027aec:	e8bd8800 	pop	{fp, pc}
80027af0:	800b0b6c 	.word	0x800b0b6c

80027af4 <sys_pgpte>:
80027af4:	e92d4800 	push	{fp, lr}
80027af8:	e28db004 	add	fp, sp, #4
80027afc:	e24dd008 	sub	sp, sp, #8
80027b00:	e24b300c 	sub	r3, fp, #12
80027b04:	e1a01003 	mov	r1, r3
80027b08:	e3a00000 	mov	r0, #0
80027b0c:	ebfffb38 	bl	800267f4 <argint>
80027b10:	e1a03000 	mov	r3, r0
80027b14:	e3530000 	cmp	r3, #0
80027b18:	aa000001 	bge	80027b24 <sys_pgpte+0x30>
80027b1c:	e3a03000 	mov	r3, #0
80027b20:	ea00000f 	b	80027b64 <sys_pgpte+0x70>
80027b24:	e59f3044 	ldr	r3, [pc, #68]	@ 80027b70 <sys_pgpte+0x7c>
80027b28:	e5933000 	ldr	r3, [r3]
80027b2c:	e5933004 	ldr	r3, [r3, #4]
80027b30:	e51b200c 	ldr	r2, [fp, #-12]
80027b34:	e1a01002 	mov	r1, r2
80027b38:	e3a02000 	mov	r2, #0
80027b3c:	e1a00003 	mov	r0, r3
80027b40:	eb000372 	bl	80028910 <walkpgdir>
80027b44:	e50b0008 	str	r0, [fp, #-8]
80027b48:	e51b3008 	ldr	r3, [fp, #-8]
80027b4c:	e3530000 	cmp	r3, #0
80027b50:	1a000001 	bne	80027b5c <sys_pgpte+0x68>
80027b54:	e3a03000 	mov	r3, #0
80027b58:	ea000001 	b	80027b64 <sys_pgpte+0x70>
80027b5c:	e51b3008 	ldr	r3, [fp, #-8]
80027b60:	e5933000 	ldr	r3, [r3]
80027b64:	e1a00003 	mov	r0, r3
80027b68:	e24bd004 	sub	sp, fp, #4
80027b6c:	e8bd8800 	pop	{fp, pc}
80027b70:	800b0b6c 	.word	0x800b0b6c

80027b74 <sys_getprocs>:
80027b74:	e92d4800 	push	{fp, lr}
80027b78:	e28db004 	add	fp, sp, #4
80027b7c:	e24dd010 	sub	sp, sp, #16
80027b80:	e24b300c 	sub	r3, fp, #12
80027b84:	e1a01003 	mov	r1, r3
80027b88:	e3a00000 	mov	r0, #0
80027b8c:	ebfffb5c 	bl	80026904 <argaddr>
80027b90:	e1a03000 	mov	r3, r0
80027b94:	e3530000 	cmp	r3, #0
80027b98:	ba000006 	blt	80027bb8 <sys_getprocs+0x44>
80027b9c:	e24b3010 	sub	r3, fp, #16
80027ba0:	e1a01003 	mov	r1, r3
80027ba4:	e3a00001 	mov	r0, #1
80027ba8:	ebfffb11 	bl	800267f4 <argint>
80027bac:	e1a03000 	mov	r3, r0
80027bb0:	e3530000 	cmp	r3, #0
80027bb4:	aa000001 	bge	80027bc0 <sys_getprocs+0x4c>
80027bb8:	e3e03000 	mvn	r3, #0
80027bbc:	ea000004 	b	80027bd4 <sys_getprocs+0x60>
80027bc0:	e14b00dc 	ldrd	r0, [fp, #-12]
80027bc4:	e51b3010 	ldr	r3, [fp, #-16]
80027bc8:	e1a02003 	mov	r2, r3
80027bcc:	ebfff50b 	bl	80025000 <getprocs>
80027bd0:	e1a03000 	mov	r3, r0
80027bd4:	e1a00003 	mov	r0, r3
80027bd8:	e24bd004 	sub	sp, fp, #4
80027bdc:	e8bd8800 	pop	{fp, pc}

80027be0 <sys_fork>:
80027be0:	e92d4800 	push	{fp, lr}
80027be4:	e28db004 	add	fp, sp, #4
80027be8:	ebfff674 	bl	800255c0 <fork>
80027bec:	e1a03000 	mov	r3, r0
80027bf0:	e1a00003 	mov	r0, r3
80027bf4:	e8bd8800 	pop	{fp, pc}

80027bf8 <sys_exit>:
80027bf8:	e92d4800 	push	{fp, lr}
80027bfc:	e28db004 	add	fp, sp, #4
80027c00:	ebfff6f0 	bl	800257c8 <exit>
80027c04:	e3a03000 	mov	r3, #0
80027c08:	e1a00003 	mov	r0, r3
80027c0c:	e8bd8800 	pop	{fp, pc}

80027c10 <sys_wait>:
80027c10:	e92d4800 	push	{fp, lr}
80027c14:	e28db004 	add	fp, sp, #4
80027c18:	ebfff752 	bl	80025968 <wait>
80027c1c:	e1a03000 	mov	r3, r0
80027c20:	e1a00003 	mov	r0, r3
80027c24:	e8bd8800 	pop	{fp, pc}

80027c28 <sys_kill>:
80027c28:	e92d4800 	push	{fp, lr}
80027c2c:	e28db004 	add	fp, sp, #4
80027c30:	e24dd008 	sub	sp, sp, #8
80027c34:	e24b3008 	sub	r3, fp, #8
80027c38:	e1a01003 	mov	r1, r3
80027c3c:	e3a00000 	mov	r0, #0
80027c40:	ebfffaeb 	bl	800267f4 <argint>
80027c44:	e1a03000 	mov	r3, r0
80027c48:	e3530000 	cmp	r3, #0
80027c4c:	aa000001 	bge	80027c58 <sys_kill+0x30>
80027c50:	e3e03000 	mvn	r3, #0
80027c54:	ea000003 	b	80027c68 <sys_kill+0x40>
80027c58:	e51b3008 	ldr	r3, [fp, #-8]
80027c5c:	e1a00003 	mov	r0, r3
80027c60:	ebfff93e 	bl	80026160 <kill>
80027c64:	e1a03000 	mov	r3, r0
80027c68:	e1a00003 	mov	r0, r3
80027c6c:	e24bd004 	sub	sp, fp, #4
80027c70:	e8bd8800 	pop	{fp, pc}

80027c74 <sys_getpid>:
80027c74:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80027c78:	e28db000 	add	fp, sp, #0
80027c7c:	e59f3014 	ldr	r3, [pc, #20]	@ 80027c98 <sys_getpid+0x24>
80027c80:	e5933000 	ldr	r3, [r3]
80027c84:	e5933014 	ldr	r3, [r3, #20]
80027c88:	e1a00003 	mov	r0, r3
80027c8c:	e28bd000 	add	sp, fp, #0
80027c90:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80027c94:	e12fff1e 	bx	lr
80027c98:	800b0b6c 	.word	0x800b0b6c

80027c9c <sys_sbrk>:
80027c9c:	e92d4800 	push	{fp, lr}
80027ca0:	e28db004 	add	fp, sp, #4
80027ca4:	e24dd008 	sub	sp, sp, #8
80027ca8:	e24b300c 	sub	r3, fp, #12
80027cac:	e1a01003 	mov	r1, r3
80027cb0:	e3a00000 	mov	r0, #0
80027cb4:	ebffface 	bl	800267f4 <argint>
80027cb8:	e1a03000 	mov	r3, r0
80027cbc:	e3530000 	cmp	r3, #0
80027cc0:	aa000001 	bge	80027ccc <sys_sbrk+0x30>
80027cc4:	e3e03000 	mvn	r3, #0
80027cc8:	ea00000c 	b	80027d00 <sys_sbrk+0x64>
80027ccc:	e59f3038 	ldr	r3, [pc, #56]	@ 80027d0c <sys_sbrk+0x70>
80027cd0:	e5933000 	ldr	r3, [r3]
80027cd4:	e5933000 	ldr	r3, [r3]
80027cd8:	e50b3008 	str	r3, [fp, #-8]
80027cdc:	e51b300c 	ldr	r3, [fp, #-12]
80027ce0:	e1a00003 	mov	r0, r3
80027ce4:	ebfff5fa 	bl	800254d4 <growproc>
80027ce8:	e1a03000 	mov	r3, r0
80027cec:	e3530000 	cmp	r3, #0
80027cf0:	aa000001 	bge	80027cfc <sys_sbrk+0x60>
80027cf4:	e3e03000 	mvn	r3, #0
80027cf8:	ea000000 	b	80027d00 <sys_sbrk+0x64>
80027cfc:	e51b3008 	ldr	r3, [fp, #-8]
80027d00:	e1a00003 	mov	r0, r3
80027d04:	e24bd004 	sub	sp, fp, #4
80027d08:	e8bd8800 	pop	{fp, pc}
80027d0c:	800b0b6c 	.word	0x800b0b6c

80027d10 <sys_sleep>:
80027d10:	e92d4800 	push	{fp, lr}
80027d14:	e28db004 	add	fp, sp, #4
80027d18:	e24dd008 	sub	sp, sp, #8
80027d1c:	e24b3008 	sub	r3, fp, #8
80027d20:	e1a01003 	mov	r1, r3
80027d24:	e3a00000 	mov	r0, #0
80027d28:	ebfffab1 	bl	800267f4 <argint>
80027d2c:	e1a03000 	mov	r3, r0
80027d30:	e3530000 	cmp	r3, #0
80027d34:	ba000002 	blt	80027d44 <sys_sleep+0x34>
80027d38:	e51b3008 	ldr	r3, [fp, #-8]
80027d3c:	e3530000 	cmp	r3, #0
80027d40:	aa000001 	bge	80027d4c <sys_sleep+0x3c>
80027d44:	e3e03000 	mvn	r3, #0
80027d48:	ea00000f 	b	80027d8c <sys_sleep+0x7c>
80027d4c:	e59f0044 	ldr	r0, [pc, #68]	@ 80027d98 <sys_sleep+0x88>
80027d50:	ebfffa36 	bl	80026630 <acquire>
80027d54:	e59f3040 	ldr	r3, [pc, #64]	@ 80027d9c <sys_sleep+0x8c>
80027d58:	e5932000 	ldr	r2, [r3]
80027d5c:	e51b3008 	ldr	r3, [fp, #-8]
80027d60:	e1a01003 	mov	r1, r3
80027d64:	e59f3034 	ldr	r3, [pc, #52]	@ 80027da0 <sys_sleep+0x90>
80027d68:	e5933000 	ldr	r3, [r3]
80027d6c:	e0822001 	add	r2, r2, r1
80027d70:	e583208c 	str	r2, [r3, #140]	@ 0x8c
80027d74:	e59f101c 	ldr	r1, [pc, #28]	@ 80027d98 <sys_sleep+0x88>
80027d78:	e59f001c 	ldr	r0, [pc, #28]	@ 80027d9c <sys_sleep+0x8c>
80027d7c:	ebfff865 	bl	80025f18 <sleep>
80027d80:	e59f0010 	ldr	r0, [pc, #16]	@ 80027d98 <sys_sleep+0x88>
80027d84:	ebfffa34 	bl	8002665c <release>
80027d88:	e3a03000 	mov	r3, #0
80027d8c:	e1a00003 	mov	r0, r3
80027d90:	e24bd004 	sub	sp, fp, #4
80027d94:	e8bd8800 	pop	{fp, pc}
80027d98:	800b0c30 	.word	0x800b0c30
80027d9c:	800b0c64 	.word	0x800b0c64
80027da0:	800b0b6c 	.word	0x800b0b6c

80027da4 <sys_uptime>:
80027da4:	e92d4800 	push	{fp, lr}
80027da8:	e28db004 	add	fp, sp, #4
80027dac:	e24dd008 	sub	sp, sp, #8
80027db0:	e59f0024 	ldr	r0, [pc, #36]	@ 80027ddc <sys_uptime+0x38>
80027db4:	ebfffa1d 	bl	80026630 <acquire>
80027db8:	e59f3020 	ldr	r3, [pc, #32]	@ 80027de0 <sys_uptime+0x3c>
80027dbc:	e5933000 	ldr	r3, [r3]
80027dc0:	e50b3008 	str	r3, [fp, #-8]
80027dc4:	e59f0010 	ldr	r0, [pc, #16]	@ 80027ddc <sys_uptime+0x38>
80027dc8:	ebfffa23 	bl	8002665c <release>
80027dcc:	e51b3008 	ldr	r3, [fp, #-8]
80027dd0:	e1a00003 	mov	r0, r3
80027dd4:	e24bd004 	sub	sp, fp, #4
80027dd8:	e8bd8800 	pop	{fp, pc}
80027ddc:	800b0c30 	.word	0x800b0c30
80027de0:	800b0c64 	.word	0x800b0c64

80027de4 <sys_settickets>:
80027de4:	e92d4800 	push	{fp, lr}
80027de8:	e28db004 	add	fp, sp, #4
80027dec:	e24dd008 	sub	sp, sp, #8
80027df0:	e24b3008 	sub	r3, fp, #8
80027df4:	e1a01003 	mov	r1, r3
80027df8:	e3a00000 	mov	r0, #0
80027dfc:	ebfffa7c 	bl	800267f4 <argint>
80027e00:	e1a03000 	mov	r3, r0
80027e04:	e3530000 	cmp	r3, #0
80027e08:	ba000006 	blt	80027e28 <sys_settickets+0x44>
80027e0c:	e24b300c 	sub	r3, fp, #12
80027e10:	e1a01003 	mov	r1, r3
80027e14:	e3a00001 	mov	r0, #1
80027e18:	ebfffa75 	bl	800267f4 <argint>
80027e1c:	e1a03000 	mov	r3, r0
80027e20:	e3530000 	cmp	r3, #0
80027e24:	aa000001 	bge	80027e30 <sys_settickets+0x4c>
80027e28:	e3e03000 	mvn	r3, #0
80027e2c:	ea00000a 	b	80027e5c <sys_settickets+0x78>
80027e30:	e51b300c 	ldr	r3, [fp, #-12]
80027e34:	e3530000 	cmp	r3, #0
80027e38:	ca000001 	bgt	80027e44 <sys_settickets+0x60>
80027e3c:	e3e03000 	mvn	r3, #0
80027e40:	ea000005 	b	80027e5c <sys_settickets+0x78>
80027e44:	e51b3008 	ldr	r3, [fp, #-8]
80027e48:	e51b200c 	ldr	r2, [fp, #-12]
80027e4c:	e1a01002 	mov	r1, r2
80027e50:	e1a00003 	mov	r0, r3
80027e54:	ebfff4d4 	bl	800251ac <sched_settickets>
80027e58:	e1a03000 	mov	r3, r0
80027e5c:	e1a00003 	mov	r0, r3
80027e60:	e24bd004 	sub	sp, fp, #4
80027e64:	e8bd8800 	pop	{fp, pc}

80027e68 <sys_srand>:
80027e68:	e92d4800 	push	{fp, lr}
80027e6c:	e28db004 	add	fp, sp, #4
80027e70:	e24dd008 	sub	sp, sp, #8
80027e74:	e24b3008 	sub	r3, fp, #8
80027e78:	e1a01003 	mov	r1, r3
80027e7c:	e3a00000 	mov	r0, #0
80027e80:	ebfffa5b 	bl	800267f4 <argint>
80027e84:	e1a03000 	mov	r3, r0
80027e88:	e3530000 	cmp	r3, #0
80027e8c:	aa000001 	bge	80027e98 <sys_srand+0x30>
80027e90:	e3e03000 	mvn	r3, #0
80027e94:	ea000004 	b	80027eac <sys_srand+0x44>
80027e98:	e51b3008 	ldr	r3, [fp, #-8]
80027e9c:	e1a02003 	mov	r2, r3
80027ea0:	e59f3010 	ldr	r3, [pc, #16]	@ 80027eb8 <sys_srand+0x50>
80027ea4:	e5832000 	str	r2, [r3]
80027ea8:	e3a03000 	mov	r3, #0
80027eac:	e1a00003 	mov	r0, r3
80027eb0:	e24bd004 	sub	sp, fp, #4
80027eb4:	e8bd8800 	pop	{fp, pc}
80027eb8:	800ae630 	.word	0x800ae630

80027ebc <sys_getpinfo>:
80027ebc:	e92d4800 	push	{fp, lr}
80027ec0:	e28db004 	add	fp, sp, #4
80027ec4:	e24dd008 	sub	sp, sp, #8
80027ec8:	e24b3008 	sub	r3, fp, #8
80027ecc:	e3a02c05 	mov	r2, #1280	@ 0x500
80027ed0:	e1a01003 	mov	r1, r3
80027ed4:	e3a00000 	mov	r0, #0
80027ed8:	ebfffa60 	bl	80026860 <argptr>
80027edc:	e1a03000 	mov	r3, r0
80027ee0:	e3530000 	cmp	r3, #0
80027ee4:	aa000001 	bge	80027ef0 <sys_getpinfo+0x34>
80027ee8:	e3e03000 	mvn	r3, #0
80027eec:	ea000003 	b	80027f00 <sys_getpinfo+0x44>
80027ef0:	e51b3008 	ldr	r3, [fp, #-8]
80027ef4:	e1a00003 	mov	r0, r3
80027ef8:	ebfff4da 	bl	80025268 <sched_getpinfo>
80027efc:	e1a03000 	mov	r3, r0
80027f00:	e1a00003 	mov	r0, r3
80027f04:	e24bd004 	sub	sp, fp, #4
80027f08:	e8bd8800 	pop	{fp, pc}

80027f0c <trap_swi>:
80027f0c:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027f10:	e14f2000 	mrs	r2, SPSR
80027f14:	e92d0004 	stmfd	sp!, {r2}
80027f18:	e92d4000 	stmfd	sp!, {lr}
80027f1c:	e94d6000 	stmdb	sp, {sp, lr}^
80027f20:	e24dd008 	sub	sp, sp, #8
80027f24:	e1a0000d 	mov	r0, sp
80027f28:	eb00005e 	bl	800280a8 <swi_handler>

80027f2c <trapret>:
80027f2c:	e8dd6000 	ldm	sp, {sp, lr}^
80027f30:	e28dd008 	add	sp, sp, #8
80027f34:	e8bd4000 	ldmfd	sp!, {lr}
80027f38:	e8bd0004 	ldmfd	sp!, {r2}
80027f3c:	e16ff002 	msr	SPSR_fsxc, r2
80027f40:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^

80027f44 <trap_irq>:
80027f44:	e24ee004 	sub	lr, lr, #4
80027f48:	e92d4007 	push	{r0, r1, r2, lr}
80027f4c:	e14f1000 	mrs	r1, SPSR
80027f50:	e1a0000d 	mov	r0, sp
80027f54:	e28dd010 	add	sp, sp, #16
80027f58:	e10f2000 	mrs	r2, CPSR
80027f5c:	e3c2201f 	bic	r2, r2, #31
80027f60:	e3822013 	orr	r2, r2, #19
80027f64:	e12ff002 	msr	CPSR_fsxc, r2
80027f68:	e590200c 	ldr	r2, [r0, #12]
80027f6c:	e92d0004 	stmfd	sp!, {r2}
80027f70:	e92d1ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
80027f74:	e8900038 	ldm	r0, {r3, r4, r5}
80027f78:	e92d0038 	push	{r3, r4, r5}
80027f7c:	e92d0002 	stmfd	sp!, {r1}
80027f80:	e92d4000 	stmfd	sp!, {lr}
80027f84:	e94d6000 	stmdb	sp, {sp, lr}^
80027f88:	e24dd008 	sub	sp, sp, #8
80027f8c:	e1a0000d 	mov	r0, sp
80027f90:	eb000051 	bl	800280dc <irq_handler>
80027f94:	eaffffe4 	b	80027f2c <trapret>

80027f98 <trap_reset>:
80027f98:	e3a0e000 	mov	lr, #0
80027f9c:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027fa0:	e14f2000 	mrs	r2, SPSR
80027fa4:	e92d0004 	stmfd	sp!, {r2}
80027fa8:	e92d4000 	stmfd	sp!, {lr}
80027fac:	e94d6000 	stmdb	sp, {sp, lr}^
80027fb0:	e24dd008 	sub	sp, sp, #8
80027fb4:	e1a0000d 	mov	r0, sp
80027fb8:	eb000059 	bl	80028124 <reset_handler>
80027fbc:	eafffffe 	b	80027fbc <trap_reset+0x24>

80027fc0 <trap_und>:
80027fc0:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027fc4:	e14f2000 	mrs	r2, SPSR
80027fc8:	e92d0004 	stmfd	sp!, {r2}
80027fcc:	e92d4000 	stmfd	sp!, {lr}
80027fd0:	e94d6000 	stmdb	sp, {sp, lr}^
80027fd4:	e24dd008 	sub	sp, sp, #8
80027fd8:	e1a0000d 	mov	r0, sp
80027fdc:	eb00005e 	bl	8002815c <und_handler>
80027fe0:	eafffffe 	b	80027fe0 <trap_und+0x20>

80027fe4 <trap_iabort>:
80027fe4:	e24ee004 	sub	lr, lr, #4
80027fe8:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027fec:	e14f2000 	mrs	r2, SPSR
80027ff0:	e92d0004 	stmfd	sp!, {r2}
80027ff4:	e92d4000 	stmfd	sp!, {lr}
80027ff8:	e94d6000 	stmdb	sp, {sp, lr}^
80027ffc:	e24dd008 	sub	sp, sp, #8
80028000:	e1a0000d 	mov	r0, sp
80028004:	eb0000a8 	bl	800282ac <iabort_handler>
80028008:	eafffffe 	b	80028008 <trap_iabort+0x24>

8002800c <trap_dabort>:
8002800c:	e24ee008 	sub	lr, lr, #8
80028010:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80028014:	e14f2000 	mrs	r2, SPSR
80028018:	e92d0004 	stmfd	sp!, {r2}
8002801c:	e92d4000 	stmfd	sp!, {lr}
80028020:	e94d6000 	stmdb	sp, {sp, lr}^
80028024:	e24dd008 	sub	sp, sp, #8
80028028:	e1a0000d 	mov	r0, sp
8002802c:	eb000058 	bl	80028194 <dabort_handler>
80028030:	eafffffe 	b	80028030 <trap_dabort+0x24>

80028034 <trap_na>:
80028034:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80028038:	e14f2000 	mrs	r2, SPSR
8002803c:	e92d0004 	stmfd	sp!, {r2}
80028040:	e92d4000 	stmfd	sp!, {lr}
80028044:	e94d6000 	stmdb	sp, {sp, lr}^
80028048:	e24dd008 	sub	sp, sp, #8
8002804c:	e1a0000d 	mov	r0, sp
80028050:	eb0000a8 	bl	800282f8 <na_handler>
80028054:	eafffffe 	b	80028054 <trap_na+0x20>

80028058 <trap_fiq>:
80028058:	e24ee004 	sub	lr, lr, #4
8002805c:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80028060:	e14f2000 	mrs	r2, SPSR
80028064:	e92d0004 	stmfd	sp!, {r2}
80028068:	e92d4000 	stmfd	sp!, {lr}
8002806c:	e94d6000 	stmdb	sp, {sp, lr}^
80028070:	e24dd008 	sub	sp, sp, #8
80028074:	e1a0000d 	mov	r0, sp
80028078:	eb0000ac 	bl	80028330 <fiq_handler>
8002807c:	eafffffe 	b	8002807c <trap_fiq+0x24>

80028080 <v2p>:
80028080:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028084:	e28db000 	add	fp, sp, #0
80028088:	e24dd00c 	sub	sp, sp, #12
8002808c:	e50b0008 	str	r0, [fp, #-8]
80028090:	e51b3008 	ldr	r3, [fp, #-8]
80028094:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80028098:	e1a00003 	mov	r0, r3
8002809c:	e28bd000 	add	sp, fp, #0
800280a0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800280a4:	e12fff1e 	bx	lr

800280a8 <swi_handler>:
800280a8:	e92d4800 	push	{fp, lr}
800280ac:	e28db004 	add	fp, sp, #4
800280b0:	e24dd008 	sub	sp, sp, #8
800280b4:	e50b0008 	str	r0, [fp, #-8]
800280b8:	e59f3018 	ldr	r3, [pc, #24]	@ 800280d8 <swi_handler+0x30>
800280bc:	e5933000 	ldr	r3, [r3]
800280c0:	e51b2008 	ldr	r2, [fp, #-8]
800280c4:	e583201c 	str	r2, [r3, #28]
800280c8:	ebfffa3b 	bl	800269bc <syscall>
800280cc:	e1a00000 	nop			@ (mov r0, r0)
800280d0:	e24bd004 	sub	sp, fp, #4
800280d4:	e8bd8800 	pop	{fp, pc}
800280d8:	800b0b6c 	.word	0x800b0b6c

800280dc <irq_handler>:
800280dc:	e92d4800 	push	{fp, lr}
800280e0:	e28db004 	add	fp, sp, #4
800280e4:	e24dd008 	sub	sp, sp, #8
800280e8:	e50b0008 	str	r0, [fp, #-8]
800280ec:	e59f302c 	ldr	r3, [pc, #44]	@ 80028120 <irq_handler+0x44>
800280f0:	e5933000 	ldr	r3, [r3]
800280f4:	e3530000 	cmp	r3, #0
800280f8:	0a000003 	beq	8002810c <irq_handler+0x30>
800280fc:	e59f301c 	ldr	r3, [pc, #28]	@ 80028120 <irq_handler+0x44>
80028100:	e5933000 	ldr	r3, [r3]
80028104:	e51b2008 	ldr	r2, [fp, #-8]
80028108:	e583201c 	str	r2, [r3, #28]
8002810c:	e51b0008 	ldr	r0, [fp, #-8]
80028110:	eb00050a 	bl	80029540 <pic_dispatch>
80028114:	e1a00000 	nop			@ (mov r0, r0)
80028118:	e24bd004 	sub	sp, fp, #4
8002811c:	e8bd8800 	pop	{fp, pc}
80028120:	800b0b6c 	.word	0x800b0b6c

80028124 <reset_handler>:
80028124:	e92d4800 	push	{fp, lr}
80028128:	e28db004 	add	fp, sp, #4
8002812c:	e24dd008 	sub	sp, sp, #8
80028130:	e50b0008 	str	r0, [fp, #-8]
80028134:	ebffe101 	bl	80020540 <cli>
80028138:	e51b3008 	ldr	r3, [fp, #-8]
8002813c:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80028140:	e1a01003 	mov	r1, r3
80028144:	e59f000c 	ldr	r0, [pc, #12]	@ 80028158 <reset_handler+0x34>
80028148:	ebffe5d1 	bl	80021894 <cprintf>
8002814c:	e1a00000 	nop			@ (mov r0, r0)
80028150:	e24bd004 	sub	sp, fp, #4
80028154:	e8bd8800 	pop	{fp, pc}
80028158:	8002a1c0 	.word	0x8002a1c0

8002815c <und_handler>:
8002815c:	e92d4800 	push	{fp, lr}
80028160:	e28db004 	add	fp, sp, #4
80028164:	e24dd008 	sub	sp, sp, #8
80028168:	e50b0008 	str	r0, [fp, #-8]
8002816c:	ebffe0f3 	bl	80020540 <cli>
80028170:	e51b3008 	ldr	r3, [fp, #-8]
80028174:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80028178:	e1a01003 	mov	r1, r3
8002817c:	e59f000c 	ldr	r0, [pc, #12]	@ 80028190 <und_handler+0x34>
80028180:	ebffe5c3 	bl	80021894 <cprintf>
80028184:	e1a00000 	nop			@ (mov r0, r0)
80028188:	e24bd004 	sub	sp, fp, #4
8002818c:	e8bd8800 	pop	{fp, pc}
80028190:	8002a1d4 	.word	0x8002a1d4

80028194 <dabort_handler>:
80028194:	e92d4800 	push	{fp, lr}
80028198:	e28db004 	add	fp, sp, #4
8002819c:	e24dd018 	sub	sp, sp, #24
800281a0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800281a4:	ebffe0e5 	bl	80020540 <cli>
800281a8:	ee153f10 	mrc	15, 0, r3, cr5, cr0, {0}
800281ac:	e50b3008 	str	r3, [fp, #-8]
800281b0:	ee163f10 	mrc	15, 0, r3, cr6, cr0, {0}
800281b4:	e50b300c 	str	r3, [fp, #-12]
800281b8:	e59f30e0 	ldr	r3, [pc, #224]	@ 800282a0 <dabort_handler+0x10c>
800281bc:	e5933000 	ldr	r3, [r3]
800281c0:	e3530000 	cmp	r3, #0
800281c4:	0a00002b 	beq	80028278 <dabort_handler+0xe4>
800281c8:	e59f30d0 	ldr	r3, [pc, #208]	@ 800282a0 <dabort_handler+0x10c>
800281cc:	e5933000 	ldr	r3, [r3]
800281d0:	e5933000 	ldr	r3, [r3]
800281d4:	e51b200c 	ldr	r2, [fp, #-12]
800281d8:	e1520003 	cmp	r2, r3
800281dc:	2a000025 	bcs	80028278 <dabort_handler+0xe4>
800281e0:	e51b300c 	ldr	r3, [fp, #-12]
800281e4:	e373021f 	cmn	r3, #-268435455	@ 0xf0000001
800281e8:	8a000022 	bhi	80028278 <dabort_handler+0xe4>
800281ec:	e59f30ac 	ldr	r3, [pc, #172]	@ 800282a0 <dabort_handler+0x10c>
800281f0:	e5933000 	ldr	r3, [r3]
800281f4:	e5933004 	ldr	r3, [r3, #4]
800281f8:	e51b100c 	ldr	r1, [fp, #-12]
800281fc:	e3a02001 	mov	r2, #1
80028200:	e1a00003 	mov	r0, r3
80028204:	eb0001c1 	bl	80028910 <walkpgdir>
80028208:	e50b0010 	str	r0, [fp, #-16]
8002820c:	e51b3010 	ldr	r3, [fp, #-16]
80028210:	e3530000 	cmp	r3, #0
80028214:	0a000017 	beq	80028278 <dabort_handler+0xe4>
80028218:	e51b3010 	ldr	r3, [fp, #-16]
8002821c:	e5933000 	ldr	r3, [r3]
80028220:	e2033003 	and	r3, r3, #3
80028224:	e3530000 	cmp	r3, #0
80028228:	1a000012 	bne	80028278 <dabort_handler+0xe4>
8002822c:	ebffe4ff 	bl	80021630 <alloc_page>
80028230:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80028234:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028238:	e3530000 	cmp	r3, #0
8002823c:	0a00000b 	beq	80028270 <dabort_handler+0xdc>
80028240:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028244:	e3a01000 	mov	r1, #0
80028248:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
8002824c:	ebffdf6b 	bl	80020000 <memset>
80028250:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028254:	ebffff89 	bl	80028080 <v2p>
80028258:	e1a03000 	mov	r3, r0
8002825c:	e383203e 	orr	r2, r3, #62	@ 0x3e
80028260:	e51b3010 	ldr	r3, [fp, #-16]
80028264:	e5832000 	str	r2, [r3]
80028268:	eb00021a 	bl	80028ad8 <flush_tlb>
8002826c:	ea000009 	b	80028298 <dabort_handler+0x104>
80028270:	e59f002c 	ldr	r0, [pc, #44]	@ 800282a4 <dabort_handler+0x110>
80028274:	ebffe586 	bl	80021894 <cprintf>
80028278:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002827c:	e5931044 	ldr	r1, [r3, #68]	@ 0x44
80028280:	e51b3008 	ldr	r3, [fp, #-8]
80028284:	e51b200c 	ldr	r2, [fp, #-12]
80028288:	e59f0018 	ldr	r0, [pc, #24]	@ 800282a8 <dabort_handler+0x114>
8002828c:	ebffe580 	bl	80021894 <cprintf>
80028290:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028294:	eb0000b4 	bl	8002856c <dump_trapframe>
80028298:	e24bd004 	sub	sp, fp, #4
8002829c:	e8bd8800 	pop	{fp, pc}
800282a0:	800b0b6c 	.word	0x800b0b6c
800282a4:	8002a1e4 	.word	0x8002a1e4
800282a8:	8002a20c 	.word	0x8002a20c

800282ac <iabort_handler>:
800282ac:	e92d4800 	push	{fp, lr}
800282b0:	e28db004 	add	fp, sp, #4
800282b4:	e24dd010 	sub	sp, sp, #16
800282b8:	e50b0010 	str	r0, [fp, #-16]
800282bc:	ee153f10 	mrc	15, 0, r3, cr5, cr0, {0}
800282c0:	e50b3008 	str	r3, [fp, #-8]
800282c4:	ebffe09d 	bl	80020540 <cli>
800282c8:	e51b3010 	ldr	r3, [fp, #-16]
800282cc:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800282d0:	e51b2008 	ldr	r2, [fp, #-8]
800282d4:	e1a01003 	mov	r1, r3
800282d8:	e59f0014 	ldr	r0, [pc, #20]	@ 800282f4 <iabort_handler+0x48>
800282dc:	ebffe56c 	bl	80021894 <cprintf>
800282e0:	e51b0010 	ldr	r0, [fp, #-16]
800282e4:	eb0000a0 	bl	8002856c <dump_trapframe>
800282e8:	e1a00000 	nop			@ (mov r0, r0)
800282ec:	e24bd004 	sub	sp, fp, #4
800282f0:	e8bd8800 	pop	{fp, pc}
800282f4:	8002a24c 	.word	0x8002a24c

800282f8 <na_handler>:
800282f8:	e92d4800 	push	{fp, lr}
800282fc:	e28db004 	add	fp, sp, #4
80028300:	e24dd008 	sub	sp, sp, #8
80028304:	e50b0008 	str	r0, [fp, #-8]
80028308:	ebffe08c 	bl	80020540 <cli>
8002830c:	e51b3008 	ldr	r3, [fp, #-8]
80028310:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80028314:	e1a01003 	mov	r1, r3
80028318:	e59f000c 	ldr	r0, [pc, #12]	@ 8002832c <na_handler+0x34>
8002831c:	ebffe55c 	bl	80021894 <cprintf>
80028320:	e1a00000 	nop			@ (mov r0, r0)
80028324:	e24bd004 	sub	sp, fp, #4
80028328:	e8bd8800 	pop	{fp, pc}
8002832c:	8002a274 	.word	0x8002a274

80028330 <fiq_handler>:
80028330:	e92d4800 	push	{fp, lr}
80028334:	e28db004 	add	fp, sp, #4
80028338:	e24dd008 	sub	sp, sp, #8
8002833c:	e50b0008 	str	r0, [fp, #-8]
80028340:	ebffe07e 	bl	80020540 <cli>
80028344:	e51b3008 	ldr	r3, [fp, #-8]
80028348:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
8002834c:	e1a01003 	mov	r1, r3
80028350:	e59f000c 	ldr	r0, [pc, #12]	@ 80028364 <fiq_handler+0x34>
80028354:	ebffe54e 	bl	80021894 <cprintf>
80028358:	e1a00000 	nop			@ (mov r0, r0)
8002835c:	e24bd004 	sub	sp, fp, #4
80028360:	e8bd8800 	pop	{fp, pc}
80028364:	8002a284 	.word	0x8002a284

80028368 <trap_init>:
80028368:	e92d4800 	push	{fp, lr}
8002836c:	e28db004 	add	fp, sp, #4
80028370:	e24dd020 	sub	sp, sp, #32
80028374:	e59f31c0 	ldr	r3, [pc, #448]	@ 8002853c <trap_init+0x1d4>
80028378:	e24bc020 	sub	ip, fp, #32
8002837c:	e893000f 	ldm	r3, {r0, r1, r2, r3}
80028380:	e88c000f 	stm	ip, {r0, r1, r2, r3}
80028384:	e59f31b4 	ldr	r3, [pc, #436]	@ 80028540 <trap_init+0x1d8>
80028388:	e50b300c 	str	r3, [fp, #-12]
8002838c:	e59f31b0 	ldr	r3, [pc, #432]	@ 80028544 <trap_init+0x1dc>
80028390:	e5933000 	ldr	r3, [r3]
80028394:	e3832018 	orr	r2, r3, #24
80028398:	e51b300c 	ldr	r3, [fp, #-12]
8002839c:	e5832000 	str	r2, [r3]
800283a0:	e59f319c 	ldr	r3, [pc, #412]	@ 80028544 <trap_init+0x1dc>
800283a4:	e5932000 	ldr	r2, [r3]
800283a8:	e51b300c 	ldr	r3, [fp, #-12]
800283ac:	e2833004 	add	r3, r3, #4
800283b0:	e3822018 	orr	r2, r2, #24
800283b4:	e5832000 	str	r2, [r3]
800283b8:	e59f3184 	ldr	r3, [pc, #388]	@ 80028544 <trap_init+0x1dc>
800283bc:	e5932000 	ldr	r2, [r3]
800283c0:	e51b300c 	ldr	r3, [fp, #-12]
800283c4:	e2833008 	add	r3, r3, #8
800283c8:	e3822018 	orr	r2, r2, #24
800283cc:	e5832000 	str	r2, [r3]
800283d0:	e59f316c 	ldr	r3, [pc, #364]	@ 80028544 <trap_init+0x1dc>
800283d4:	e5932000 	ldr	r2, [r3]
800283d8:	e51b300c 	ldr	r3, [fp, #-12]
800283dc:	e283300c 	add	r3, r3, #12
800283e0:	e3822018 	orr	r2, r2, #24
800283e4:	e5832000 	str	r2, [r3]
800283e8:	e59f3154 	ldr	r3, [pc, #340]	@ 80028544 <trap_init+0x1dc>
800283ec:	e5932000 	ldr	r2, [r3]
800283f0:	e51b300c 	ldr	r3, [fp, #-12]
800283f4:	e2833010 	add	r3, r3, #16
800283f8:	e3822018 	orr	r2, r2, #24
800283fc:	e5832000 	str	r2, [r3]
80028400:	e59f313c 	ldr	r3, [pc, #316]	@ 80028544 <trap_init+0x1dc>
80028404:	e5932000 	ldr	r2, [r3]
80028408:	e51b300c 	ldr	r3, [fp, #-12]
8002840c:	e2833014 	add	r3, r3, #20
80028410:	e3822018 	orr	r2, r2, #24
80028414:	e5832000 	str	r2, [r3]
80028418:	e59f3124 	ldr	r3, [pc, #292]	@ 80028544 <trap_init+0x1dc>
8002841c:	e5932000 	ldr	r2, [r3]
80028420:	e51b300c 	ldr	r3, [fp, #-12]
80028424:	e2833018 	add	r3, r3, #24
80028428:	e3822018 	orr	r2, r2, #24
8002842c:	e5832000 	str	r2, [r3]
80028430:	e59f310c 	ldr	r3, [pc, #268]	@ 80028544 <trap_init+0x1dc>
80028434:	e5932000 	ldr	r2, [r3]
80028438:	e51b300c 	ldr	r3, [fp, #-12]
8002843c:	e283301c 	add	r3, r3, #28
80028440:	e3822018 	orr	r2, r2, #24
80028444:	e5832000 	str	r2, [r3]
80028448:	e51b300c 	ldr	r3, [fp, #-12]
8002844c:	e2833020 	add	r3, r3, #32
80028450:	e59f20f0 	ldr	r2, [pc, #240]	@ 80028548 <trap_init+0x1e0>
80028454:	e5832000 	str	r2, [r3]
80028458:	e51b300c 	ldr	r3, [fp, #-12]
8002845c:	e2833024 	add	r3, r3, #36	@ 0x24
80028460:	e59f20e4 	ldr	r2, [pc, #228]	@ 8002854c <trap_init+0x1e4>
80028464:	e5832000 	str	r2, [r3]
80028468:	e51b300c 	ldr	r3, [fp, #-12]
8002846c:	e2833028 	add	r3, r3, #40	@ 0x28
80028470:	e59f20d8 	ldr	r2, [pc, #216]	@ 80028550 <trap_init+0x1e8>
80028474:	e5832000 	str	r2, [r3]
80028478:	e51b300c 	ldr	r3, [fp, #-12]
8002847c:	e283302c 	add	r3, r3, #44	@ 0x2c
80028480:	e59f20cc 	ldr	r2, [pc, #204]	@ 80028554 <trap_init+0x1ec>
80028484:	e5832000 	str	r2, [r3]
80028488:	e51b300c 	ldr	r3, [fp, #-12]
8002848c:	e2833030 	add	r3, r3, #48	@ 0x30
80028490:	e59f20c0 	ldr	r2, [pc, #192]	@ 80028558 <trap_init+0x1f0>
80028494:	e5832000 	str	r2, [r3]
80028498:	e51b300c 	ldr	r3, [fp, #-12]
8002849c:	e2833034 	add	r3, r3, #52	@ 0x34
800284a0:	e59f20b4 	ldr	r2, [pc, #180]	@ 8002855c <trap_init+0x1f4>
800284a4:	e5832000 	str	r2, [r3]
800284a8:	e51b300c 	ldr	r3, [fp, #-12]
800284ac:	e2833038 	add	r3, r3, #56	@ 0x38
800284b0:	e59f20a8 	ldr	r2, [pc, #168]	@ 80028560 <trap_init+0x1f8>
800284b4:	e5832000 	str	r2, [r3]
800284b8:	e51b300c 	ldr	r3, [fp, #-12]
800284bc:	e283303c 	add	r3, r3, #60	@ 0x3c
800284c0:	e59f209c 	ldr	r2, [pc, #156]	@ 80028564 <trap_init+0x1fc>
800284c4:	e5832000 	str	r2, [r3]
800284c8:	e3a03000 	mov	r3, #0
800284cc:	e50b3008 	str	r3, [fp, #-8]
800284d0:	ea000012 	b	80028520 <trap_init+0x1b8>
800284d4:	ebffe455 	bl	80021630 <alloc_page>
800284d8:	e50b0010 	str	r0, [fp, #-16]
800284dc:	e51b3010 	ldr	r3, [fp, #-16]
800284e0:	e3530000 	cmp	r3, #0
800284e4:	1a000001 	bne	800284f0 <trap_init+0x188>
800284e8:	e59f0078 	ldr	r0, [pc, #120]	@ 80028568 <trap_init+0x200>
800284ec:	ebffe580 	bl	80021af4 <panic>
800284f0:	e51b3008 	ldr	r3, [fp, #-8]
800284f4:	e1a03103 	lsl	r3, r3, #2
800284f8:	e2433004 	sub	r3, r3, #4
800284fc:	e083300b 	add	r3, r3, fp
80028500:	e513301c 	ldr	r3, [r3, #-28]	@ 0xffffffe4
80028504:	e51b2010 	ldr	r2, [fp, #-16]
80028508:	e1a01002 	mov	r1, r2
8002850c:	e1a00003 	mov	r0, r3
80028510:	ebffe0e3 	bl	800208a4 <set_stk>
80028514:	e51b3008 	ldr	r3, [fp, #-8]
80028518:	e2833001 	add	r3, r3, #1
8002851c:	e50b3008 	str	r3, [fp, #-8]
80028520:	e51b3008 	ldr	r3, [fp, #-8]
80028524:	e3530003 	cmp	r3, #3
80028528:	9affffe9 	bls	800284d4 <trap_init+0x16c>
8002852c:	e1a00000 	nop			@ (mov r0, r0)
80028530:	e1a00000 	nop			@ (mov r0, r0)
80028534:	e24bd004 	sub	sp, fp, #4
80028538:	e8bd8800 	pop	{fp, pc}
8002853c:	8002a2bc 	.word	0x8002a2bc
80028540:	ffff0000 	.word	0xffff0000
80028544:	8002a3cc 	.word	0x8002a3cc
80028548:	80027f98 	.word	0x80027f98
8002854c:	80027fc0 	.word	0x80027fc0
80028550:	80027f0c 	.word	0x80027f0c
80028554:	80027fe4 	.word	0x80027fe4
80028558:	8002800c 	.word	0x8002800c
8002855c:	80028034 	.word	0x80028034
80028560:	80027f44 	.word	0x80027f44
80028564:	80028058 	.word	0x80028058
80028568:	8002a294 	.word	0x8002a294

8002856c <dump_trapframe>:
8002856c:	e92d4800 	push	{fp, lr}
80028570:	e28db004 	add	fp, sp, #4
80028574:	e24dd008 	sub	sp, sp, #8
80028578:	e50b0008 	str	r0, [fp, #-8]
8002857c:	e51b3008 	ldr	r3, [fp, #-8]
80028580:	e5933008 	ldr	r3, [r3, #8]
80028584:	e1a01003 	mov	r1, r3
80028588:	e59f0138 	ldr	r0, [pc, #312]	@ 800286c8 <dump_trapframe+0x15c>
8002858c:	ebffe4c0 	bl	80021894 <cprintf>
80028590:	e51b3008 	ldr	r3, [fp, #-8]
80028594:	e593300c 	ldr	r3, [r3, #12]
80028598:	e1a01003 	mov	r1, r3
8002859c:	e59f0128 	ldr	r0, [pc, #296]	@ 800286cc <dump_trapframe+0x160>
800285a0:	ebffe4bb 	bl	80021894 <cprintf>
800285a4:	e51b3008 	ldr	r3, [fp, #-8]
800285a8:	e5933010 	ldr	r3, [r3, #16]
800285ac:	e1a01003 	mov	r1, r3
800285b0:	e59f0118 	ldr	r0, [pc, #280]	@ 800286d0 <dump_trapframe+0x164>
800285b4:	ebffe4b6 	bl	80021894 <cprintf>
800285b8:	e51b3008 	ldr	r3, [fp, #-8]
800285bc:	e5933014 	ldr	r3, [r3, #20]
800285c0:	e1a01003 	mov	r1, r3
800285c4:	e59f0108 	ldr	r0, [pc, #264]	@ 800286d4 <dump_trapframe+0x168>
800285c8:	ebffe4b1 	bl	80021894 <cprintf>
800285cc:	e51b3008 	ldr	r3, [fp, #-8]
800285d0:	e5933018 	ldr	r3, [r3, #24]
800285d4:	e1a01003 	mov	r1, r3
800285d8:	e59f00f8 	ldr	r0, [pc, #248]	@ 800286d8 <dump_trapframe+0x16c>
800285dc:	ebffe4ac 	bl	80021894 <cprintf>
800285e0:	e51b3008 	ldr	r3, [fp, #-8]
800285e4:	e593301c 	ldr	r3, [r3, #28]
800285e8:	e1a01003 	mov	r1, r3
800285ec:	e59f00e8 	ldr	r0, [pc, #232]	@ 800286dc <dump_trapframe+0x170>
800285f0:	ebffe4a7 	bl	80021894 <cprintf>
800285f4:	e51b3008 	ldr	r3, [fp, #-8]
800285f8:	e5933020 	ldr	r3, [r3, #32]
800285fc:	e1a01003 	mov	r1, r3
80028600:	e59f00d8 	ldr	r0, [pc, #216]	@ 800286e0 <dump_trapframe+0x174>
80028604:	ebffe4a2 	bl	80021894 <cprintf>
80028608:	e51b3008 	ldr	r3, [fp, #-8]
8002860c:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80028610:	e1a01003 	mov	r1, r3
80028614:	e59f00c8 	ldr	r0, [pc, #200]	@ 800286e4 <dump_trapframe+0x178>
80028618:	ebffe49d 	bl	80021894 <cprintf>
8002861c:	e51b3008 	ldr	r3, [fp, #-8]
80028620:	e5933028 	ldr	r3, [r3, #40]	@ 0x28
80028624:	e1a01003 	mov	r1, r3
80028628:	e59f00b8 	ldr	r0, [pc, #184]	@ 800286e8 <dump_trapframe+0x17c>
8002862c:	ebffe498 	bl	80021894 <cprintf>
80028630:	e51b3008 	ldr	r3, [fp, #-8]
80028634:	e593302c 	ldr	r3, [r3, #44]	@ 0x2c
80028638:	e1a01003 	mov	r1, r3
8002863c:	e59f00a8 	ldr	r0, [pc, #168]	@ 800286ec <dump_trapframe+0x180>
80028640:	ebffe493 	bl	80021894 <cprintf>
80028644:	e51b3008 	ldr	r3, [fp, #-8]
80028648:	e5933030 	ldr	r3, [r3, #48]	@ 0x30
8002864c:	e1a01003 	mov	r1, r3
80028650:	e59f0098 	ldr	r0, [pc, #152]	@ 800286f0 <dump_trapframe+0x184>
80028654:	ebffe48e 	bl	80021894 <cprintf>
80028658:	e51b3008 	ldr	r3, [fp, #-8]
8002865c:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80028660:	e1a01003 	mov	r1, r3
80028664:	e59f0088 	ldr	r0, [pc, #136]	@ 800286f4 <dump_trapframe+0x188>
80028668:	ebffe489 	bl	80021894 <cprintf>
8002866c:	e51b3008 	ldr	r3, [fp, #-8]
80028670:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80028674:	e1a01003 	mov	r1, r3
80028678:	e59f0078 	ldr	r0, [pc, #120]	@ 800286f8 <dump_trapframe+0x18c>
8002867c:	ebffe484 	bl	80021894 <cprintf>
80028680:	e51b3008 	ldr	r3, [fp, #-8]
80028684:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
80028688:	e1a01003 	mov	r1, r3
8002868c:	e59f0068 	ldr	r0, [pc, #104]	@ 800286fc <dump_trapframe+0x190>
80028690:	ebffe47f 	bl	80021894 <cprintf>
80028694:	e51b3008 	ldr	r3, [fp, #-8]
80028698:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
8002869c:	e1a01003 	mov	r1, r3
800286a0:	e59f0058 	ldr	r0, [pc, #88]	@ 80028700 <dump_trapframe+0x194>
800286a4:	ebffe47a 	bl	80021894 <cprintf>
800286a8:	e51b3008 	ldr	r3, [fp, #-8]
800286ac:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800286b0:	e1a01003 	mov	r1, r3
800286b4:	e59f0048 	ldr	r0, [pc, #72]	@ 80028704 <dump_trapframe+0x198>
800286b8:	ebffe475 	bl	80021894 <cprintf>
800286bc:	e1a00000 	nop			@ (mov r0, r0)
800286c0:	e24bd004 	sub	sp, fp, #4
800286c4:	e8bd8800 	pop	{fp, pc}
800286c8:	8002a2cc 	.word	0x8002a2cc
800286cc:	8002a2dc 	.word	0x8002a2dc
800286d0:	8002a2ec 	.word	0x8002a2ec
800286d4:	8002a2fc 	.word	0x8002a2fc
800286d8:	8002a30c 	.word	0x8002a30c
800286dc:	8002a31c 	.word	0x8002a31c
800286e0:	8002a32c 	.word	0x8002a32c
800286e4:	8002a33c 	.word	0x8002a33c
800286e8:	8002a34c 	.word	0x8002a34c
800286ec:	8002a35c 	.word	0x8002a35c
800286f0:	8002a36c 	.word	0x8002a36c
800286f4:	8002a37c 	.word	0x8002a37c
800286f8:	8002a38c 	.word	0x8002a38c
800286fc:	8002a39c 	.word	0x8002a39c
80028700:	8002a3ac 	.word	0x8002a3ac
80028704:	8002a3bc 	.word	0x8002a3bc

80028708 <v2p>:
80028708:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002870c:	e28db000 	add	fp, sp, #0
80028710:	e24dd00c 	sub	sp, sp, #12
80028714:	e50b0008 	str	r0, [fp, #-8]
80028718:	e51b3008 	ldr	r3, [fp, #-8]
8002871c:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80028720:	e1a00003 	mov	r0, r3
80028724:	e28bd000 	add	sp, fp, #0
80028728:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002872c:	e12fff1e 	bx	lr

80028730 <p2v>:
80028730:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028734:	e28db000 	add	fp, sp, #0
80028738:	e24dd00c 	sub	sp, sp, #12
8002873c:	e50b0008 	str	r0, [fp, #-8]
80028740:	e51b3008 	ldr	r3, [fp, #-8]
80028744:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80028748:	e1a00003 	mov	r0, r3
8002874c:	e28bd000 	add	sp, fp, #0
80028750:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028754:	e12fff1e 	bx	lr

80028758 <init_vmm>:
80028758:	e92d4800 	push	{fp, lr}
8002875c:	e28db004 	add	fp, sp, #4
80028760:	e59f1018 	ldr	r1, [pc, #24]	@ 80028780 <init_vmm+0x28>
80028764:	e59f0018 	ldr	r0, [pc, #24]	@ 80028784 <init_vmm+0x2c>
80028768:	ebfff79e 	bl	800265e8 <initlock>
8002876c:	e59f3010 	ldr	r3, [pc, #16]	@ 80028784 <init_vmm+0x2c>
80028770:	e3a02000 	mov	r2, #0
80028774:	e5832034 	str	r2, [r3, #52]	@ 0x34
80028778:	e1a00000 	nop			@ (mov r0, r0)
8002877c:	e8bd8800 	pop	{fp, pc}
80028780:	8002a3d0 	.word	0x8002a3d0
80028784:	800b0b74 	.word	0x800b0b74

80028788 <_kpt_free>:
80028788:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002878c:	e28db000 	add	fp, sp, #0
80028790:	e24dd014 	sub	sp, sp, #20
80028794:	e50b0010 	str	r0, [fp, #-16]
80028798:	e51b3010 	ldr	r3, [fp, #-16]
8002879c:	e50b3008 	str	r3, [fp, #-8]
800287a0:	e59f3024 	ldr	r3, [pc, #36]	@ 800287cc <_kpt_free+0x44>
800287a4:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
800287a8:	e51b3008 	ldr	r3, [fp, #-8]
800287ac:	e5832000 	str	r2, [r3]
800287b0:	e59f2014 	ldr	r2, [pc, #20]	@ 800287cc <_kpt_free+0x44>
800287b4:	e51b3008 	ldr	r3, [fp, #-8]
800287b8:	e5823034 	str	r3, [r2, #52]	@ 0x34
800287bc:	e1a00000 	nop			@ (mov r0, r0)
800287c0:	e28bd000 	add	sp, fp, #0
800287c4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800287c8:	e12fff1e 	bx	lr
800287cc:	800b0b74 	.word	0x800b0b74

800287d0 <kpt_free>:
800287d0:	e92d4800 	push	{fp, lr}
800287d4:	e28db004 	add	fp, sp, #4
800287d8:	e24dd008 	sub	sp, sp, #8
800287dc:	e50b0008 	str	r0, [fp, #-8]
800287e0:	e51b3008 	ldr	r3, [fp, #-8]
800287e4:	e59f2034 	ldr	r2, [pc, #52]	@ 80028820 <kpt_free+0x50>
800287e8:	e1530002 	cmp	r3, r2
800287ec:	9a000003 	bls	80028800 <kpt_free+0x30>
800287f0:	e3a0100a 	mov	r1, #10
800287f4:	e51b0008 	ldr	r0, [fp, #-8]
800287f8:	ebffe360 	bl	80021580 <kfree>
800287fc:	ea000005 	b	80028818 <kpt_free+0x48>
80028800:	e59f001c 	ldr	r0, [pc, #28]	@ 80028824 <kpt_free+0x54>
80028804:	ebfff789 	bl	80026630 <acquire>
80028808:	e51b0008 	ldr	r0, [fp, #-8]
8002880c:	ebffffdd 	bl	80028788 <_kpt_free>
80028810:	e59f000c 	ldr	r0, [pc, #12]	@ 80028824 <kpt_free+0x54>
80028814:	ebfff790 	bl	8002665c <release>
80028818:	e24bd004 	sub	sp, fp, #4
8002881c:	e8bd8800 	pop	{fp, pc}
80028820:	800fffff 	.word	0x800fffff
80028824:	800b0b74 	.word	0x800b0b74

80028828 <kpt_freerange>:
80028828:	e92d4800 	push	{fp, lr}
8002882c:	e28db004 	add	fp, sp, #4
80028830:	e24dd008 	sub	sp, sp, #8
80028834:	e50b0008 	str	r0, [fp, #-8]
80028838:	e50b100c 	str	r1, [fp, #-12]
8002883c:	ea000005 	b	80028858 <kpt_freerange+0x30>
80028840:	e51b3008 	ldr	r3, [fp, #-8]
80028844:	e1a00003 	mov	r0, r3
80028848:	ebffffce 	bl	80028788 <_kpt_free>
8002884c:	e51b3008 	ldr	r3, [fp, #-8]
80028850:	e2833b01 	add	r3, r3, #1024	@ 0x400
80028854:	e50b3008 	str	r3, [fp, #-8]
80028858:	e51b2008 	ldr	r2, [fp, #-8]
8002885c:	e51b300c 	ldr	r3, [fp, #-12]
80028860:	e1520003 	cmp	r2, r3
80028864:	3afffff5 	bcc	80028840 <kpt_freerange+0x18>
80028868:	e1a00000 	nop			@ (mov r0, r0)
8002886c:	e1a00000 	nop			@ (mov r0, r0)
80028870:	e24bd004 	sub	sp, fp, #4
80028874:	e8bd8800 	pop	{fp, pc}

80028878 <kpt_alloc>:
80028878:	e92d4800 	push	{fp, lr}
8002887c:	e28db004 	add	fp, sp, #4
80028880:	e24dd008 	sub	sp, sp, #8
80028884:	e59f007c 	ldr	r0, [pc, #124]	@ 80028908 <kpt_alloc+0x90>
80028888:	ebfff768 	bl	80026630 <acquire>
8002888c:	e59f3074 	ldr	r3, [pc, #116]	@ 80028908 <kpt_alloc+0x90>
80028890:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80028894:	e50b3008 	str	r3, [fp, #-8]
80028898:	e51b3008 	ldr	r3, [fp, #-8]
8002889c:	e3530000 	cmp	r3, #0
800288a0:	0a000003 	beq	800288b4 <kpt_alloc+0x3c>
800288a4:	e51b3008 	ldr	r3, [fp, #-8]
800288a8:	e5933000 	ldr	r3, [r3]
800288ac:	e59f2054 	ldr	r2, [pc, #84]	@ 80028908 <kpt_alloc+0x90>
800288b0:	e5823034 	str	r3, [r2, #52]	@ 0x34
800288b4:	e59f004c 	ldr	r0, [pc, #76]	@ 80028908 <kpt_alloc+0x90>
800288b8:	ebfff767 	bl	8002665c <release>
800288bc:	e51b3008 	ldr	r3, [fp, #-8]
800288c0:	e3530000 	cmp	r3, #0
800288c4:	1a000007 	bne	800288e8 <kpt_alloc+0x70>
800288c8:	e3a0000a 	mov	r0, #10
800288cc:	ebffe2d4 	bl	80021424 <kmalloc>
800288d0:	e50b0008 	str	r0, [fp, #-8]
800288d4:	e51b3008 	ldr	r3, [fp, #-8]
800288d8:	e3530000 	cmp	r3, #0
800288dc:	1a000001 	bne	800288e8 <kpt_alloc+0x70>
800288e0:	e59f0024 	ldr	r0, [pc, #36]	@ 8002890c <kpt_alloc+0x94>
800288e4:	ebffe482 	bl	80021af4 <panic>
800288e8:	e3a02b01 	mov	r2, #1024	@ 0x400
800288ec:	e3a01000 	mov	r1, #0
800288f0:	e51b0008 	ldr	r0, [fp, #-8]
800288f4:	ebffddc1 	bl	80020000 <memset>
800288f8:	e51b3008 	ldr	r3, [fp, #-8]
800288fc:	e1a00003 	mov	r0, r3
80028900:	e24bd004 	sub	sp, fp, #4
80028904:	e8bd8800 	pop	{fp, pc}
80028908:	800b0b74 	.word	0x800b0b74
8002890c:	8002a3d4 	.word	0x8002a3d4

80028910 <walkpgdir>:
80028910:	e92d4800 	push	{fp, lr}
80028914:	e28db004 	add	fp, sp, #4
80028918:	e24dd018 	sub	sp, sp, #24
8002891c:	e50b0010 	str	r0, [fp, #-16]
80028920:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80028924:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80028928:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002892c:	e1a03a23 	lsr	r3, r3, #20
80028930:	e1a03103 	lsl	r3, r3, #2
80028934:	e51b2010 	ldr	r2, [fp, #-16]
80028938:	e0823003 	add	r3, r2, r3
8002893c:	e50b300c 	str	r3, [fp, #-12]
80028940:	e51b300c 	ldr	r3, [fp, #-12]
80028944:	e5933000 	ldr	r3, [r3]
80028948:	e2033003 	and	r3, r3, #3
8002894c:	e3530000 	cmp	r3, #0
80028950:	0a000007 	beq	80028974 <walkpgdir+0x64>
80028954:	e51b300c 	ldr	r3, [fp, #-12]
80028958:	e5933000 	ldr	r3, [r3]
8002895c:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
80028960:	e3c33003 	bic	r3, r3, #3
80028964:	e1a00003 	mov	r0, r3
80028968:	ebffff70 	bl	80028730 <p2v>
8002896c:	e50b0008 	str	r0, [fp, #-8]
80028970:	ea000013 	b	800289c4 <walkpgdir+0xb4>
80028974:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028978:	e3530000 	cmp	r3, #0
8002897c:	0a000004 	beq	80028994 <walkpgdir+0x84>
80028980:	ebffffbc 	bl	80028878 <kpt_alloc>
80028984:	e50b0008 	str	r0, [fp, #-8]
80028988:	e51b3008 	ldr	r3, [fp, #-8]
8002898c:	e3530000 	cmp	r3, #0
80028990:	1a000001 	bne	8002899c <walkpgdir+0x8c>
80028994:	e3a03000 	mov	r3, #0
80028998:	ea00000f 	b	800289dc <walkpgdir+0xcc>
8002899c:	e3a02b01 	mov	r2, #1024	@ 0x400
800289a0:	e3a01000 	mov	r1, #0
800289a4:	e51b0008 	ldr	r0, [fp, #-8]
800289a8:	ebffdd94 	bl	80020000 <memset>
800289ac:	e51b0008 	ldr	r0, [fp, #-8]
800289b0:	ebffff54 	bl	80028708 <v2p>
800289b4:	e1a03000 	mov	r3, r0
800289b8:	e3832001 	orr	r2, r3, #1
800289bc:	e51b300c 	ldr	r3, [fp, #-12]
800289c0:	e5832000 	str	r2, [r3]
800289c4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800289c8:	e1a03623 	lsr	r3, r3, #12
800289cc:	e6ef3073 	uxtb	r3, r3
800289d0:	e1a03103 	lsl	r3, r3, #2
800289d4:	e51b2008 	ldr	r2, [fp, #-8]
800289d8:	e0823003 	add	r3, r2, r3
800289dc:	e1a00003 	mov	r0, r3
800289e0:	e24bd004 	sub	sp, fp, #4
800289e4:	e8bd8800 	pop	{fp, pc}

800289e8 <mappages>:
800289e8:	e92d4800 	push	{fp, lr}
800289ec:	e28db004 	add	fp, sp, #4
800289f0:	e24dd020 	sub	sp, sp, #32
800289f4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800289f8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
800289fc:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80028a00:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80028a04:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028a08:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028a0c:	e3c3300f 	bic	r3, r3, #15
80028a10:	e50b3008 	str	r3, [fp, #-8]
80028a14:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80028a18:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028a1c:	e0823003 	add	r3, r2, r3
80028a20:	e2433001 	sub	r3, r3, #1
80028a24:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028a28:	e3c3300f 	bic	r3, r3, #15
80028a2c:	e50b300c 	str	r3, [fp, #-12]
80028a30:	e3a02001 	mov	r2, #1
80028a34:	e51b1008 	ldr	r1, [fp, #-8]
80028a38:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028a3c:	ebffffb3 	bl	80028910 <walkpgdir>
80028a40:	e50b0010 	str	r0, [fp, #-16]
80028a44:	e51b3010 	ldr	r3, [fp, #-16]
80028a48:	e3530000 	cmp	r3, #0
80028a4c:	1a000001 	bne	80028a58 <mappages+0x70>
80028a50:	e3e03000 	mvn	r3, #0
80028a54:	ea00001b 	b	80028ac8 <mappages+0xe0>
80028a58:	e51b3010 	ldr	r3, [fp, #-16]
80028a5c:	e5933000 	ldr	r3, [r3]
80028a60:	e2033003 	and	r3, r3, #3
80028a64:	e3530000 	cmp	r3, #0
80028a68:	0a000001 	beq	80028a74 <mappages+0x8c>
80028a6c:	e59f0060 	ldr	r0, [pc, #96]	@ 80028ad4 <mappages+0xec>
80028a70:	ebffe41f 	bl	80021af4 <panic>
80028a74:	e59b3004 	ldr	r3, [fp, #4]
80028a78:	e1a03203 	lsl	r3, r3, #4
80028a7c:	e2032030 	and	r2, r3, #48	@ 0x30
80028a80:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80028a84:	e1823003 	orr	r3, r2, r3
80028a88:	e383200e 	orr	r2, r3, #14
80028a8c:	e51b3010 	ldr	r3, [fp, #-16]
80028a90:	e5832000 	str	r2, [r3]
80028a94:	e51b2008 	ldr	r2, [fp, #-8]
80028a98:	e51b300c 	ldr	r3, [fp, #-12]
80028a9c:	e1520003 	cmp	r2, r3
80028aa0:	0a000006 	beq	80028ac0 <mappages+0xd8>
80028aa4:	e51b3008 	ldr	r3, [fp, #-8]
80028aa8:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028aac:	e50b3008 	str	r3, [fp, #-8]
80028ab0:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80028ab4:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028ab8:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80028abc:	eaffffdb 	b	80028a30 <mappages+0x48>
80028ac0:	e1a00000 	nop			@ (mov r0, r0)
80028ac4:	e3a03000 	mov	r3, #0
80028ac8:	e1a00003 	mov	r0, r3
80028acc:	e24bd004 	sub	sp, fp, #4
80028ad0:	e8bd8800 	pop	{fp, pc}
80028ad4:	8002a3e4 	.word	0x8002a3e4

80028ad8 <flush_tlb>:
80028ad8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028adc:	e28db000 	add	fp, sp, #0
80028ae0:	e24dd00c 	sub	sp, sp, #12
80028ae4:	e3a03000 	mov	r3, #0
80028ae8:	e50b3008 	str	r3, [fp, #-8]
80028aec:	e51b3008 	ldr	r3, [fp, #-8]
80028af0:	ee083f17 	mcr	15, 0, r3, cr8, cr7, {0}
80028af4:	e51b3008 	ldr	r3, [fp, #-8]
80028af8:	ee073f1a 	mcr	15, 0, r3, cr7, cr10, {0}
80028afc:	e51b3008 	ldr	r3, [fp, #-8]
80028b00:	ee073f1b 	mcr	15, 0, r3, cr7, cr11, {0}
80028b04:	e1a00000 	nop			@ (mov r0, r0)
80028b08:	e28bd000 	add	sp, fp, #0
80028b0c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028b10:	e12fff1e 	bx	lr

80028b14 <switchuvm>:
80028b14:	e92d4800 	push	{fp, lr}
80028b18:	e28db004 	add	fp, sp, #4
80028b1c:	e24dd010 	sub	sp, sp, #16
80028b20:	e50b0010 	str	r0, [fp, #-16]
80028b24:	ebffdec0 	bl	8002062c <pushcli>
80028b28:	e51b3010 	ldr	r3, [fp, #-16]
80028b2c:	e5933004 	ldr	r3, [r3, #4]
80028b30:	e3530000 	cmp	r3, #0
80028b34:	1a000001 	bne	80028b40 <switchuvm+0x2c>
80028b38:	e59f002c 	ldr	r0, [pc, #44]	@ 80028b6c <switchuvm+0x58>
80028b3c:	ebffe3ec 	bl	80021af4 <panic>
80028b40:	e51b3010 	ldr	r3, [fp, #-16]
80028b44:	e5933004 	ldr	r3, [r3, #4]
80028b48:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80028b4c:	e50b3008 	str	r3, [fp, #-8]
80028b50:	e51b3008 	ldr	r3, [fp, #-8]
80028b54:	ee023f10 	mcr	15, 0, r3, cr2, cr0, {0}
80028b58:	ebffffde 	bl	80028ad8 <flush_tlb>
80028b5c:	ebffdec7 	bl	80020680 <popcli>
80028b60:	e1a00000 	nop			@ (mov r0, r0)
80028b64:	e24bd004 	sub	sp, fp, #4
80028b68:	e8bd8800 	pop	{fp, pc}
80028b6c:	8002a3ec 	.word	0x8002a3ec

80028b70 <inituvm>:
80028b70:	e92d4800 	push	{fp, lr}
80028b74:	e28db004 	add	fp, sp, #4
80028b78:	e24dd020 	sub	sp, sp, #32
80028b7c:	e50b0010 	str	r0, [fp, #-16]
80028b80:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80028b84:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80028b88:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028b8c:	e3530a01 	cmp	r3, #4096	@ 0x1000
80028b90:	3a000001 	bcc	80028b9c <inituvm+0x2c>
80028b94:	e59f0058 	ldr	r0, [pc, #88]	@ 80028bf4 <inituvm+0x84>
80028b98:	ebffe3d5 	bl	80021af4 <panic>
80028b9c:	ebffe2a3 	bl	80021630 <alloc_page>
80028ba0:	e50b0008 	str	r0, [fp, #-8]
80028ba4:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028ba8:	e3a01000 	mov	r1, #0
80028bac:	e51b0008 	ldr	r0, [fp, #-8]
80028bb0:	ebffdd12 	bl	80020000 <memset>
80028bb4:	e51b0008 	ldr	r0, [fp, #-8]
80028bb8:	ebfffed2 	bl	80028708 <v2p>
80028bbc:	e1a03000 	mov	r3, r0
80028bc0:	e3a02003 	mov	r2, #3
80028bc4:	e58d2000 	str	r2, [sp]
80028bc8:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028bcc:	e3a01000 	mov	r1, #0
80028bd0:	e51b0010 	ldr	r0, [fp, #-16]
80028bd4:	ebffff83 	bl	800289e8 <mappages>
80028bd8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80028bdc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80028be0:	e51b0008 	ldr	r0, [fp, #-8]
80028be4:	ebffdd77 	bl	800201c8 <memmove>
80028be8:	e1a00000 	nop			@ (mov r0, r0)
80028bec:	e24bd004 	sub	sp, fp, #4
80028bf0:	e8bd8800 	pop	{fp, pc}
80028bf4:	8002a400 	.word	0x8002a400

80028bf8 <loaduvm>:
80028bf8:	e92d4800 	push	{fp, lr}
80028bfc:	e28db004 	add	fp, sp, #4
80028c00:	e24dd020 	sub	sp, sp, #32
80028c04:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80028c08:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80028c0c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80028c10:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80028c14:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028c18:	e1a03a03 	lsl	r3, r3, #20
80028c1c:	e1a03a23 	lsr	r3, r3, #20
80028c20:	e3530000 	cmp	r3, #0
80028c24:	0a000001 	beq	80028c30 <loaduvm+0x38>
80028c28:	e59f00f0 	ldr	r0, [pc, #240]	@ 80028d20 <loaduvm+0x128>
80028c2c:	ebffe3b0 	bl	80021af4 <panic>
80028c30:	e3a03000 	mov	r3, #0
80028c34:	e50b3008 	str	r3, [fp, #-8]
80028c38:	ea000030 	b	80028d00 <loaduvm+0x108>
80028c3c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80028c40:	e51b3008 	ldr	r3, [fp, #-8]
80028c44:	e0823003 	add	r3, r2, r3
80028c48:	e3a02000 	mov	r2, #0
80028c4c:	e1a01003 	mov	r1, r3
80028c50:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028c54:	ebffff2d 	bl	80028910 <walkpgdir>
80028c58:	e50b0010 	str	r0, [fp, #-16]
80028c5c:	e51b3010 	ldr	r3, [fp, #-16]
80028c60:	e3530000 	cmp	r3, #0
80028c64:	1a000001 	bne	80028c70 <loaduvm+0x78>
80028c68:	e59f00b4 	ldr	r0, [pc, #180]	@ 80028d24 <loaduvm+0x12c>
80028c6c:	ebffe3a0 	bl	80021af4 <panic>
80028c70:	e51b3010 	ldr	r3, [fp, #-16]
80028c74:	e5933000 	ldr	r3, [r3]
80028c78:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028c7c:	e3c3300f 	bic	r3, r3, #15
80028c80:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80028c84:	e59b2004 	ldr	r2, [fp, #4]
80028c88:	e51b3008 	ldr	r3, [fp, #-8]
80028c8c:	e0423003 	sub	r3, r2, r3
80028c90:	e3530a01 	cmp	r3, #4096	@ 0x1000
80028c94:	2a000004 	bcs	80028cac <loaduvm+0xb4>
80028c98:	e59b2004 	ldr	r2, [fp, #4]
80028c9c:	e51b3008 	ldr	r3, [fp, #-8]
80028ca0:	e0423003 	sub	r3, r2, r3
80028ca4:	e50b300c 	str	r3, [fp, #-12]
80028ca8:	ea000001 	b	80028cb4 <loaduvm+0xbc>
80028cac:	e3a03a01 	mov	r3, #4096	@ 0x1000
80028cb0:	e50b300c 	str	r3, [fp, #-12]
80028cb4:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028cb8:	ebfffe9c 	bl	80028730 <p2v>
80028cbc:	e1a01000 	mov	r1, r0
80028cc0:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80028cc4:	e51b3008 	ldr	r3, [fp, #-8]
80028cc8:	e0822003 	add	r2, r2, r3
80028ccc:	e51b300c 	ldr	r3, [fp, #-12]
80028cd0:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80028cd4:	ebffeacc 	bl	8002380c <readi>
80028cd8:	e1a03000 	mov	r3, r0
80028cdc:	e1a02003 	mov	r2, r3
80028ce0:	e51b300c 	ldr	r3, [fp, #-12]
80028ce4:	e1530002 	cmp	r3, r2
80028ce8:	0a000001 	beq	80028cf4 <loaduvm+0xfc>
80028cec:	e3e03000 	mvn	r3, #0
80028cf0:	ea000007 	b	80028d14 <loaduvm+0x11c>
80028cf4:	e51b3008 	ldr	r3, [fp, #-8]
80028cf8:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028cfc:	e50b3008 	str	r3, [fp, #-8]
80028d00:	e51b2008 	ldr	r2, [fp, #-8]
80028d04:	e59b3004 	ldr	r3, [fp, #4]
80028d08:	e1520003 	cmp	r2, r3
80028d0c:	3affffca 	bcc	80028c3c <loaduvm+0x44>
80028d10:	e3a03000 	mov	r3, #0
80028d14:	e1a00003 	mov	r0, r3
80028d18:	e24bd004 	sub	sp, fp, #4
80028d1c:	e8bd8800 	pop	{fp, pc}
80028d20:	8002a41c 	.word	0x8002a41c
80028d24:	8002a440 	.word	0x8002a440

80028d28 <allocuvm>:
80028d28:	e92d4810 	push	{r4, fp, lr}
80028d2c:	e28db008 	add	fp, sp, #8
80028d30:	e24dd024 	sub	sp, sp, #36	@ 0x24
80028d34:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80028d38:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80028d3c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80028d40:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028d44:	e373021f 	cmn	r3, #-268435455	@ 0xf0000001
80028d48:	9a000001 	bls	80028d54 <allocuvm+0x2c>
80028d4c:	e3a03000 	mov	r3, #0
80028d50:	ea00002f 	b	80028e14 <allocuvm+0xec>
80028d54:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80028d58:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028d5c:	e1520003 	cmp	r2, r3
80028d60:	2a000001 	bcs	80028d6c <allocuvm+0x44>
80028d64:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028d68:	ea000029 	b	80028e14 <allocuvm+0xec>
80028d6c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028d70:	e2833eff 	add	r3, r3, #4080	@ 0xff0
80028d74:	e283300f 	add	r3, r3, #15
80028d78:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028d7c:	e3c3300f 	bic	r3, r3, #15
80028d80:	e50b3010 	str	r3, [fp, #-16]
80028d84:	ea00001d 	b	80028e00 <allocuvm+0xd8>
80028d88:	ebffe228 	bl	80021630 <alloc_page>
80028d8c:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80028d90:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028d94:	e3530000 	cmp	r3, #0
80028d98:	1a000007 	bne	80028dbc <allocuvm+0x94>
80028d9c:	e59f007c 	ldr	r0, [pc, #124]	@ 80028e20 <allocuvm+0xf8>
80028da0:	ebffe2bb 	bl	80021894 <cprintf>
80028da4:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80028da8:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
80028dac:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028db0:	eb00001b 	bl	80028e24 <deallocuvm>
80028db4:	e3a03000 	mov	r3, #0
80028db8:	ea000015 	b	80028e14 <allocuvm+0xec>
80028dbc:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028dc0:	e3a01000 	mov	r1, #0
80028dc4:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028dc8:	ebffdc8c 	bl	80020000 <memset>
80028dcc:	e51b4010 	ldr	r4, [fp, #-16]
80028dd0:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028dd4:	ebfffe4b 	bl	80028708 <v2p>
80028dd8:	e1a03000 	mov	r3, r0
80028ddc:	e3a02003 	mov	r2, #3
80028de0:	e58d2000 	str	r2, [sp]
80028de4:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028de8:	e1a01004 	mov	r1, r4
80028dec:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028df0:	ebfffefc 	bl	800289e8 <mappages>
80028df4:	e51b3010 	ldr	r3, [fp, #-16]
80028df8:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028dfc:	e50b3010 	str	r3, [fp, #-16]
80028e00:	e51b2010 	ldr	r2, [fp, #-16]
80028e04:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028e08:	e1520003 	cmp	r2, r3
80028e0c:	3affffdd 	bcc	80028d88 <allocuvm+0x60>
80028e10:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028e14:	e1a00003 	mov	r0, r3
80028e18:	e24bd008 	sub	sp, fp, #8
80028e1c:	e8bd8810 	pop	{r4, fp, pc}
80028e20:	8002a460 	.word	0x8002a460

80028e24 <deallocuvm>:
80028e24:	e92d4800 	push	{fp, lr}
80028e28:	e28db004 	add	fp, sp, #4
80028e2c:	e24dd020 	sub	sp, sp, #32
80028e30:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80028e34:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80028e38:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80028e3c:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80028e40:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028e44:	e1520003 	cmp	r2, r3
80028e48:	3a000001 	bcc	80028e54 <deallocuvm+0x30>
80028e4c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028e50:	ea000035 	b	80028f2c <deallocuvm+0x108>
80028e54:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028e58:	e2833eff 	add	r3, r3, #4080	@ 0xff0
80028e5c:	e283300f 	add	r3, r3, #15
80028e60:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028e64:	e3c3300f 	bic	r3, r3, #15
80028e68:	e50b3008 	str	r3, [fp, #-8]
80028e6c:	ea000029 	b	80028f18 <deallocuvm+0xf4>
80028e70:	e51b3008 	ldr	r3, [fp, #-8]
80028e74:	e3a02000 	mov	r2, #0
80028e78:	e1a01003 	mov	r1, r3
80028e7c:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028e80:	ebfffea2 	bl	80028910 <walkpgdir>
80028e84:	e50b000c 	str	r0, [fp, #-12]
80028e88:	e51b300c 	ldr	r3, [fp, #-12]
80028e8c:	e3530000 	cmp	r3, #0
80028e90:	1a000006 	bne	80028eb0 <deallocuvm+0x8c>
80028e94:	e51b3008 	ldr	r3, [fp, #-8]
80028e98:	e243337f 	sub	r3, r3, #-67108863	@ 0xfc000001
80028e9c:	e243363f 	sub	r3, r3, #66060288	@ 0x3f00000
80028ea0:	e1a03a23 	lsr	r3, r3, #20
80028ea4:	e1a03a03 	lsl	r3, r3, #20
80028ea8:	e50b3008 	str	r3, [fp, #-8]
80028eac:	ea000016 	b	80028f0c <deallocuvm+0xe8>
80028eb0:	e51b300c 	ldr	r3, [fp, #-12]
80028eb4:	e5933000 	ldr	r3, [r3]
80028eb8:	e2033003 	and	r3, r3, #3
80028ebc:	e3530000 	cmp	r3, #0
80028ec0:	0a000011 	beq	80028f0c <deallocuvm+0xe8>
80028ec4:	e51b300c 	ldr	r3, [fp, #-12]
80028ec8:	e5933000 	ldr	r3, [r3]
80028ecc:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028ed0:	e3c3300f 	bic	r3, r3, #15
80028ed4:	e50b3010 	str	r3, [fp, #-16]
80028ed8:	e51b3010 	ldr	r3, [fp, #-16]
80028edc:	e3530000 	cmp	r3, #0
80028ee0:	1a000001 	bne	80028eec <deallocuvm+0xc8>
80028ee4:	e59f004c 	ldr	r0, [pc, #76]	@ 80028f38 <deallocuvm+0x114>
80028ee8:	ebffe301 	bl	80021af4 <panic>
80028eec:	e51b0010 	ldr	r0, [fp, #-16]
80028ef0:	ebfffe0e 	bl	80028730 <p2v>
80028ef4:	e1a03000 	mov	r3, r0
80028ef8:	e1a00003 	mov	r0, r3
80028efc:	ebffe1c1 	bl	80021608 <free_page>
80028f00:	e51b300c 	ldr	r3, [fp, #-12]
80028f04:	e3a02000 	mov	r2, #0
80028f08:	e5832000 	str	r2, [r3]
80028f0c:	e51b3008 	ldr	r3, [fp, #-8]
80028f10:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028f14:	e50b3008 	str	r3, [fp, #-8]
80028f18:	e51b2008 	ldr	r2, [fp, #-8]
80028f1c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028f20:	e1520003 	cmp	r2, r3
80028f24:	3affffd1 	bcc	80028e70 <deallocuvm+0x4c>
80028f28:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028f2c:	e1a00003 	mov	r0, r3
80028f30:	e24bd004 	sub	sp, fp, #4
80028f34:	e8bd8800 	pop	{fp, pc}
80028f38:	8002a478 	.word	0x8002a478

80028f3c <freevm>:
80028f3c:	e92d4800 	push	{fp, lr}
80028f40:	e28db004 	add	fp, sp, #4
80028f44:	e24dd010 	sub	sp, sp, #16
80028f48:	e50b0010 	str	r0, [fp, #-16]
80028f4c:	e51b3010 	ldr	r3, [fp, #-16]
80028f50:	e3530000 	cmp	r3, #0
80028f54:	1a000001 	bne	80028f60 <freevm+0x24>
80028f58:	e59f0098 	ldr	r0, [pc, #152]	@ 80028ff8 <freevm+0xbc>
80028f5c:	ebffe2e4 	bl	80021af4 <panic>
80028f60:	e3a02000 	mov	r2, #0
80028f64:	e3a01201 	mov	r1, #268435456	@ 0x10000000
80028f68:	e51b0010 	ldr	r0, [fp, #-16]
80028f6c:	ebffffac 	bl	80028e24 <deallocuvm>
80028f70:	e3a03000 	mov	r3, #0
80028f74:	e50b3008 	str	r3, [fp, #-8]
80028f78:	ea000016 	b	80028fd8 <freevm+0x9c>
80028f7c:	e51b3008 	ldr	r3, [fp, #-8]
80028f80:	e1a03103 	lsl	r3, r3, #2
80028f84:	e51b2010 	ldr	r2, [fp, #-16]
80028f88:	e0823003 	add	r3, r2, r3
80028f8c:	e5933000 	ldr	r3, [r3]
80028f90:	e2033003 	and	r3, r3, #3
80028f94:	e3530000 	cmp	r3, #0
80028f98:	0a00000b 	beq	80028fcc <freevm+0x90>
80028f9c:	e51b3008 	ldr	r3, [fp, #-8]
80028fa0:	e1a03103 	lsl	r3, r3, #2
80028fa4:	e51b2010 	ldr	r2, [fp, #-16]
80028fa8:	e0823003 	add	r3, r2, r3
80028fac:	e5933000 	ldr	r3, [r3]
80028fb0:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
80028fb4:	e3c33003 	bic	r3, r3, #3
80028fb8:	e1a00003 	mov	r0, r3
80028fbc:	ebfffddb 	bl	80028730 <p2v>
80028fc0:	e50b000c 	str	r0, [fp, #-12]
80028fc4:	e51b000c 	ldr	r0, [fp, #-12]
80028fc8:	ebfffe00 	bl	800287d0 <kpt_free>
80028fcc:	e51b3008 	ldr	r3, [fp, #-8]
80028fd0:	e2833001 	add	r3, r3, #1
80028fd4:	e50b3008 	str	r3, [fp, #-8]
80028fd8:	e51b3008 	ldr	r3, [fp, #-8]
80028fdc:	e35300ff 	cmp	r3, #255	@ 0xff
80028fe0:	9affffe5 	bls	80028f7c <freevm+0x40>
80028fe4:	e51b0010 	ldr	r0, [fp, #-16]
80028fe8:	ebfffdf8 	bl	800287d0 <kpt_free>
80028fec:	e1a00000 	nop			@ (mov r0, r0)
80028ff0:	e24bd004 	sub	sp, fp, #4
80028ff4:	e8bd8800 	pop	{fp, pc}
80028ff8:	8002a484 	.word	0x8002a484

80028ffc <clearpteu>:
80028ffc:	e92d4800 	push	{fp, lr}
80029000:	e28db004 	add	fp, sp, #4
80029004:	e24dd010 	sub	sp, sp, #16
80029008:	e50b0010 	str	r0, [fp, #-16]
8002900c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80029010:	e3a02000 	mov	r2, #0
80029014:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80029018:	e51b0010 	ldr	r0, [fp, #-16]
8002901c:	ebfffe3b 	bl	80028910 <walkpgdir>
80029020:	e50b0008 	str	r0, [fp, #-8]
80029024:	e51b3008 	ldr	r3, [fp, #-8]
80029028:	e3530000 	cmp	r3, #0
8002902c:	1a000001 	bne	80029038 <clearpteu+0x3c>
80029030:	e59f0024 	ldr	r0, [pc, #36]	@ 8002905c <clearpteu+0x60>
80029034:	ebffe2ae 	bl	80021af4 <panic>
80029038:	e51b3008 	ldr	r3, [fp, #-8]
8002903c:	e5933000 	ldr	r3, [r3]
80029040:	e3c33030 	bic	r3, r3, #48	@ 0x30
80029044:	e3832010 	orr	r2, r3, #16
80029048:	e51b3008 	ldr	r3, [fp, #-8]
8002904c:	e5832000 	str	r2, [r3]
80029050:	e1a00000 	nop			@ (mov r0, r0)
80029054:	e24bd004 	sub	sp, fp, #4
80029058:	e8bd8800 	pop	{fp, pc}
8002905c:	8002a498 	.word	0x8002a498

80029060 <copyuvm>:
80029060:	e92d4810 	push	{r4, fp, lr}
80029064:	e28db008 	add	fp, sp, #8
80029068:	e24dd02c 	sub	sp, sp, #44	@ 0x2c
8002906c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80029070:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
80029074:	ebfffdff 	bl	80028878 <kpt_alloc>
80029078:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
8002907c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80029080:	e3530000 	cmp	r3, #0
80029084:	1a000001 	bne	80029090 <copyuvm+0x30>
80029088:	e3a03000 	mov	r3, #0
8002908c:	ea000047 	b	800291b0 <copyuvm+0x150>
80029090:	e3a03000 	mov	r3, #0
80029094:	e50b3010 	str	r3, [fp, #-16]
80029098:	ea000038 	b	80029180 <copyuvm+0x120>
8002909c:	e51b3010 	ldr	r3, [fp, #-16]
800290a0:	e3a02000 	mov	r2, #0
800290a4:	e1a01003 	mov	r1, r3
800290a8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
800290ac:	ebfffe17 	bl	80028910 <walkpgdir>
800290b0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800290b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800290b8:	e3530000 	cmp	r3, #0
800290bc:	1a000001 	bne	800290c8 <copyuvm+0x68>
800290c0:	e59f00f4 	ldr	r0, [pc, #244]	@ 800291bc <copyuvm+0x15c>
800290c4:	ebffe28a 	bl	80021af4 <panic>
800290c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800290cc:	e5933000 	ldr	r3, [r3]
800290d0:	e2033003 	and	r3, r3, #3
800290d4:	e3530000 	cmp	r3, #0
800290d8:	1a000001 	bne	800290e4 <copyuvm+0x84>
800290dc:	e59f00dc 	ldr	r0, [pc, #220]	@ 800291c0 <copyuvm+0x160>
800290e0:	ebffe283 	bl	80021af4 <panic>
800290e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800290e8:	e5933000 	ldr	r3, [r3]
800290ec:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
800290f0:	e3c3300f 	bic	r3, r3, #15
800290f4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800290f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800290fc:	e5933000 	ldr	r3, [r3]
80029100:	e1a03223 	lsr	r3, r3, #4
80029104:	e2033003 	and	r3, r3, #3
80029108:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
8002910c:	ebffe147 	bl	80021630 <alloc_page>
80029110:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
80029114:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80029118:	e3530000 	cmp	r3, #0
8002911c:	0a00001d 	beq	80029198 <copyuvm+0x138>
80029120:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
80029124:	ebfffd81 	bl	80028730 <p2v>
80029128:	e1a03000 	mov	r3, r0
8002912c:	e3a02a01 	mov	r2, #4096	@ 0x1000
80029130:	e1a01003 	mov	r1, r3
80029134:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80029138:	ebffdc22 	bl	800201c8 <memmove>
8002913c:	e51b4010 	ldr	r4, [fp, #-16]
80029140:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80029144:	ebfffd6f 	bl	80028708 <v2p>
80029148:	e1a02000 	mov	r2, r0
8002914c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80029150:	e58d3000 	str	r3, [sp]
80029154:	e1a03002 	mov	r3, r2
80029158:	e3a02a01 	mov	r2, #4096	@ 0x1000
8002915c:	e1a01004 	mov	r1, r4
80029160:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80029164:	ebfffe1f 	bl	800289e8 <mappages>
80029168:	e1a03000 	mov	r3, r0
8002916c:	e3530000 	cmp	r3, #0
80029170:	ba00000a 	blt	800291a0 <copyuvm+0x140>
80029174:	e51b3010 	ldr	r3, [fp, #-16]
80029178:	e2833a01 	add	r3, r3, #4096	@ 0x1000
8002917c:	e50b3010 	str	r3, [fp, #-16]
80029180:	e51b2010 	ldr	r2, [fp, #-16]
80029184:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80029188:	e1520003 	cmp	r2, r3
8002918c:	3affffc2 	bcc	8002909c <copyuvm+0x3c>
80029190:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80029194:	ea000005 	b	800291b0 <copyuvm+0x150>
80029198:	e1a00000 	nop			@ (mov r0, r0)
8002919c:	ea000000 	b	800291a4 <copyuvm+0x144>
800291a0:	e1a00000 	nop			@ (mov r0, r0)
800291a4:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800291a8:	ebffff63 	bl	80028f3c <freevm>
800291ac:	e3a03000 	mov	r3, #0
800291b0:	e1a00003 	mov	r0, r3
800291b4:	e24bd008 	sub	sp, fp, #8
800291b8:	e8bd8810 	pop	{r4, fp, pc}
800291bc:	8002a4a4 	.word	0x8002a4a4
800291c0:	8002a4c0 	.word	0x8002a4c0

800291c4 <uva2ka>:
800291c4:	e92d4800 	push	{fp, lr}
800291c8:	e28db004 	add	fp, sp, #4
800291cc:	e24dd010 	sub	sp, sp, #16
800291d0:	e50b0010 	str	r0, [fp, #-16]
800291d4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800291d8:	e3a02000 	mov	r2, #0
800291dc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800291e0:	e51b0010 	ldr	r0, [fp, #-16]
800291e4:	ebfffdc9 	bl	80028910 <walkpgdir>
800291e8:	e50b0008 	str	r0, [fp, #-8]
800291ec:	e51b3008 	ldr	r3, [fp, #-8]
800291f0:	e5933000 	ldr	r3, [r3]
800291f4:	e2033003 	and	r3, r3, #3
800291f8:	e3530000 	cmp	r3, #0
800291fc:	1a000001 	bne	80029208 <uva2ka+0x44>
80029200:	e3a03000 	mov	r3, #0
80029204:	ea00000e 	b	80029244 <uva2ka+0x80>
80029208:	e51b3008 	ldr	r3, [fp, #-8]
8002920c:	e5933000 	ldr	r3, [r3]
80029210:	e2033030 	and	r3, r3, #48	@ 0x30
80029214:	e3530030 	cmp	r3, #48	@ 0x30
80029218:	0a000001 	beq	80029224 <uva2ka+0x60>
8002921c:	e3a03000 	mov	r3, #0
80029220:	ea000007 	b	80029244 <uva2ka+0x80>
80029224:	e51b3008 	ldr	r3, [fp, #-8]
80029228:	e5933000 	ldr	r3, [r3]
8002922c:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80029230:	e3c3300f 	bic	r3, r3, #15
80029234:	e1a00003 	mov	r0, r3
80029238:	ebfffd3c 	bl	80028730 <p2v>
8002923c:	e1a03000 	mov	r3, r0
80029240:	e1a00000 	nop			@ (mov r0, r0)
80029244:	e1a00003 	mov	r0, r3
80029248:	e24bd004 	sub	sp, fp, #4
8002924c:	e8bd8800 	pop	{fp, pc}

80029250 <copyout>:
80029250:	e92d4800 	push	{fp, lr}
80029254:	e28db004 	add	fp, sp, #4
80029258:	e24dd020 	sub	sp, sp, #32
8002925c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80029260:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80029264:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80029268:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
8002926c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80029270:	e50b3008 	str	r3, [fp, #-8]
80029274:	ea00002c 	b	8002932c <copyout+0xdc>
80029278:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002927c:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80029280:	e3c3300f 	bic	r3, r3, #15
80029284:	e50b3010 	str	r3, [fp, #-16]
80029288:	e51b3010 	ldr	r3, [fp, #-16]
8002928c:	e1a01003 	mov	r1, r3
80029290:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80029294:	ebffffca 	bl	800291c4 <uva2ka>
80029298:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
8002929c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800292a0:	e3530000 	cmp	r3, #0
800292a4:	1a000001 	bne	800292b0 <copyout+0x60>
800292a8:	e3e03000 	mvn	r3, #0
800292ac:	ea000022 	b	8002933c <copyout+0xec>
800292b0:	e51b2010 	ldr	r2, [fp, #-16]
800292b4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800292b8:	e0423003 	sub	r3, r2, r3
800292bc:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800292c0:	e50b300c 	str	r3, [fp, #-12]
800292c4:	e51b200c 	ldr	r2, [fp, #-12]
800292c8:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800292cc:	e1520003 	cmp	r2, r3
800292d0:	9a000001 	bls	800292dc <copyout+0x8c>
800292d4:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800292d8:	e50b300c 	str	r3, [fp, #-12]
800292dc:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
800292e0:	e51b3010 	ldr	r3, [fp, #-16]
800292e4:	e0423003 	sub	r3, r2, r3
800292e8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800292ec:	e0823003 	add	r3, r2, r3
800292f0:	e51b200c 	ldr	r2, [fp, #-12]
800292f4:	e51b1008 	ldr	r1, [fp, #-8]
800292f8:	e1a00003 	mov	r0, r3
800292fc:	ebffdbb1 	bl	800201c8 <memmove>
80029300:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80029304:	e51b300c 	ldr	r3, [fp, #-12]
80029308:	e0423003 	sub	r3, r2, r3
8002930c:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80029310:	e51b2008 	ldr	r2, [fp, #-8]
80029314:	e51b300c 	ldr	r3, [fp, #-12]
80029318:	e0823003 	add	r3, r2, r3
8002931c:	e50b3008 	str	r3, [fp, #-8]
80029320:	e51b3010 	ldr	r3, [fp, #-16]
80029324:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80029328:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
8002932c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80029330:	e3530000 	cmp	r3, #0
80029334:	1affffcf 	bne	80029278 <copyout+0x28>
80029338:	e3a03000 	mov	r3, #0
8002933c:	e1a00003 	mov	r0, r3
80029340:	e24bd004 	sub	sp, fp, #4
80029344:	e8bd8800 	pop	{fp, pc}

80029348 <paging_init>:
80029348:	e92d4800 	push	{fp, lr}
8002934c:	e28db004 	add	fp, sp, #4
80029350:	e24dd010 	sub	sp, sp, #16
80029354:	e50b0008 	str	r0, [fp, #-8]
80029358:	e50b100c 	str	r1, [fp, #-12]
8002935c:	e59f0034 	ldr	r0, [pc, #52]	@ 80029398 <paging_init+0x50>
80029360:	e51b3008 	ldr	r3, [fp, #-8]
80029364:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80029368:	e1a01003 	mov	r1, r3
8002936c:	e51b200c 	ldr	r2, [fp, #-12]
80029370:	e51b3008 	ldr	r3, [fp, #-8]
80029374:	e0422003 	sub	r2, r2, r3
80029378:	e3a03003 	mov	r3, #3
8002937c:	e58d3000 	str	r3, [sp]
80029380:	e51b3008 	ldr	r3, [fp, #-8]
80029384:	ebfffd97 	bl	800289e8 <mappages>
80029388:	ebfffdd2 	bl	80028ad8 <flush_tlb>
8002938c:	e1a00000 	nop			@ (mov r0, r0)
80029390:	e24bd004 	sub	sp, fp, #4
80029394:	e8bd8800 	pop	{fp, pc}
80029398:	80014000 	.word	0x80014000

8002939c <default_isr>:
8002939c:	e92d4800 	push	{fp, lr}
800293a0:	e28db004 	add	fp, sp, #4
800293a4:	e24dd008 	sub	sp, sp, #8
800293a8:	e50b0008 	str	r0, [fp, #-8]
800293ac:	e50b100c 	str	r1, [fp, #-12]
800293b0:	e51b100c 	ldr	r1, [fp, #-12]
800293b4:	e59f000c 	ldr	r0, [pc, #12]	@ 800293c8 <default_isr+0x2c>
800293b8:	ebffe135 	bl	80021894 <cprintf>
800293bc:	e1a00000 	nop			@ (mov r0, r0)
800293c0:	e24bd004 	sub	sp, fp, #4
800293c4:	e8bd8800 	pop	{fp, pc}
800293c8:	8002a4dc 	.word	0x8002a4dc

800293cc <pic_init>:
800293cc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800293d0:	e28db000 	add	fp, sp, #0
800293d4:	e24dd014 	sub	sp, sp, #20
800293d8:	e50b0010 	str	r0, [fp, #-16]
800293dc:	e59f2060 	ldr	r2, [pc, #96]	@ 80029444 <pic_init+0x78>
800293e0:	e51b3010 	ldr	r3, [fp, #-16]
800293e4:	e5823000 	str	r3, [r2]
800293e8:	e59f3054 	ldr	r3, [pc, #84]	@ 80029444 <pic_init+0x78>
800293ec:	e5933000 	ldr	r3, [r3]
800293f0:	e2833014 	add	r3, r3, #20
800293f4:	e3e02000 	mvn	r2, #0
800293f8:	e5832000 	str	r2, [r3]
800293fc:	e3a03000 	mov	r3, #0
80029400:	e50b3008 	str	r3, [fp, #-8]
80029404:	ea000006 	b	80029424 <pic_init+0x58>
80029408:	e59f2038 	ldr	r2, [pc, #56]	@ 80029448 <pic_init+0x7c>
8002940c:	e51b3008 	ldr	r3, [fp, #-8]
80029410:	e59f1034 	ldr	r1, [pc, #52]	@ 8002944c <pic_init+0x80>
80029414:	e7821103 	str	r1, [r2, r3, lsl #2]
80029418:	e51b3008 	ldr	r3, [fp, #-8]
8002941c:	e2833001 	add	r3, r3, #1
80029420:	e50b3008 	str	r3, [fp, #-8]
80029424:	e51b3008 	ldr	r3, [fp, #-8]
80029428:	e353001f 	cmp	r3, #31
8002942c:	dafffff5 	ble	80029408 <pic_init+0x3c>
80029430:	e1a00000 	nop			@ (mov r0, r0)
80029434:	e1a00000 	nop			@ (mov r0, r0)
80029438:	e28bd000 	add	sp, fp, #0
8002943c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80029440:	e12fff1e 	bx	lr
80029444:	800b0bac 	.word	0x800b0bac
80029448:	800b0bb0 	.word	0x800b0bb0
8002944c:	8002939c 	.word	0x8002939c

80029450 <pic_enable>:
80029450:	e92d4800 	push	{fp, lr}
80029454:	e28db004 	add	fp, sp, #4
80029458:	e24dd008 	sub	sp, sp, #8
8002945c:	e50b0008 	str	r0, [fp, #-8]
80029460:	e50b100c 	str	r1, [fp, #-12]
80029464:	e51b3008 	ldr	r3, [fp, #-8]
80029468:	e3530000 	cmp	r3, #0
8002946c:	ba000002 	blt	8002947c <pic_enable+0x2c>
80029470:	e51b3008 	ldr	r3, [fp, #-8]
80029474:	e353001f 	cmp	r3, #31
80029478:	da000001 	ble	80029484 <pic_enable+0x34>
8002947c:	e59f0038 	ldr	r0, [pc, #56]	@ 800294bc <pic_enable+0x6c>
80029480:	ebffe19b 	bl	80021af4 <panic>
80029484:	e59f1034 	ldr	r1, [pc, #52]	@ 800294c0 <pic_enable+0x70>
80029488:	e51b3008 	ldr	r3, [fp, #-8]
8002948c:	e51b200c 	ldr	r2, [fp, #-12]
80029490:	e7812103 	str	r2, [r1, r3, lsl #2]
80029494:	e3a02001 	mov	r2, #1
80029498:	e51b3008 	ldr	r3, [fp, #-8]
8002949c:	e1a02312 	lsl	r2, r2, r3
800294a0:	e59f301c 	ldr	r3, [pc, #28]	@ 800294c4 <pic_enable+0x74>
800294a4:	e5933000 	ldr	r3, [r3]
800294a8:	e2833010 	add	r3, r3, #16
800294ac:	e5832000 	str	r2, [r3]
800294b0:	e1a00000 	nop			@ (mov r0, r0)
800294b4:	e24bd004 	sub	sp, fp, #4
800294b8:	e8bd8800 	pop	{fp, pc}
800294bc:	8002a4f8 	.word	0x8002a4f8
800294c0:	800b0bb0 	.word	0x800b0bb0
800294c4:	800b0bac 	.word	0x800b0bac

800294c8 <pic_disable>:
800294c8:	e92d4800 	push	{fp, lr}
800294cc:	e28db004 	add	fp, sp, #4
800294d0:	e24dd008 	sub	sp, sp, #8
800294d4:	e50b0008 	str	r0, [fp, #-8]
800294d8:	e51b3008 	ldr	r3, [fp, #-8]
800294dc:	e3530000 	cmp	r3, #0
800294e0:	ba000002 	blt	800294f0 <pic_disable+0x28>
800294e4:	e51b3008 	ldr	r3, [fp, #-8]
800294e8:	e353001f 	cmp	r3, #31
800294ec:	da000001 	ble	800294f8 <pic_disable+0x30>
800294f0:	e59f0038 	ldr	r0, [pc, #56]	@ 80029530 <pic_disable+0x68>
800294f4:	ebffe17e 	bl	80021af4 <panic>
800294f8:	e3a02001 	mov	r2, #1
800294fc:	e51b3008 	ldr	r3, [fp, #-8]
80029500:	e1a02312 	lsl	r2, r2, r3
80029504:	e59f3028 	ldr	r3, [pc, #40]	@ 80029534 <pic_disable+0x6c>
80029508:	e5933000 	ldr	r3, [r3]
8002950c:	e2833014 	add	r3, r3, #20
80029510:	e5832000 	str	r2, [r3]
80029514:	e59f201c 	ldr	r2, [pc, #28]	@ 80029538 <pic_disable+0x70>
80029518:	e51b3008 	ldr	r3, [fp, #-8]
8002951c:	e59f1018 	ldr	r1, [pc, #24]	@ 8002953c <pic_disable+0x74>
80029520:	e7821103 	str	r1, [r2, r3, lsl #2]
80029524:	e1a00000 	nop			@ (mov r0, r0)
80029528:	e24bd004 	sub	sp, fp, #4
8002952c:	e8bd8800 	pop	{fp, pc}
80029530:	8002a4f8 	.word	0x8002a4f8
80029534:	800b0bac 	.word	0x800b0bac
80029538:	800b0bb0 	.word	0x800b0bb0
8002953c:	8002939c 	.word	0x8002939c

80029540 <pic_dispatch>:
80029540:	e92d4800 	push	{fp, lr}
80029544:	e28db004 	add	fp, sp, #4
80029548:	e24dd010 	sub	sp, sp, #16
8002954c:	e50b0010 	str	r0, [fp, #-16]
80029550:	e59f3080 	ldr	r3, [pc, #128]	@ 800295d8 <pic_dispatch+0x98>
80029554:	e5933000 	ldr	r3, [r3]
80029558:	e5933000 	ldr	r3, [r3]
8002955c:	e50b300c 	str	r3, [fp, #-12]
80029560:	e3a03000 	mov	r3, #0
80029564:	e50b3008 	str	r3, [fp, #-8]
80029568:	ea000010 	b	800295b0 <pic_dispatch+0x70>
8002956c:	e3a02001 	mov	r2, #1
80029570:	e51b3008 	ldr	r3, [fp, #-8]
80029574:	e1a03312 	lsl	r3, r2, r3
80029578:	e1a02003 	mov	r2, r3
8002957c:	e51b300c 	ldr	r3, [fp, #-12]
80029580:	e0033002 	and	r3, r3, r2
80029584:	e3530000 	cmp	r3, #0
80029588:	0a000005 	beq	800295a4 <pic_dispatch+0x64>
8002958c:	e59f2048 	ldr	r2, [pc, #72]	@ 800295dc <pic_dispatch+0x9c>
80029590:	e51b3008 	ldr	r3, [fp, #-8]
80029594:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80029598:	e51b1008 	ldr	r1, [fp, #-8]
8002959c:	e51b0010 	ldr	r0, [fp, #-16]
800295a0:	e12fff33 	blx	r3
800295a4:	e51b3008 	ldr	r3, [fp, #-8]
800295a8:	e2833001 	add	r3, r3, #1
800295ac:	e50b3008 	str	r3, [fp, #-8]
800295b0:	e51b3008 	ldr	r3, [fp, #-8]
800295b4:	e353001f 	cmp	r3, #31
800295b8:	daffffeb 	ble	8002956c <pic_dispatch+0x2c>
800295bc:	e59f3014 	ldr	r3, [pc, #20]	@ 800295d8 <pic_dispatch+0x98>
800295c0:	e5933000 	ldr	r3, [r3]
800295c4:	e5933000 	ldr	r3, [r3]
800295c8:	e50b300c 	str	r3, [fp, #-12]
800295cc:	e1a00000 	nop			@ (mov r0, r0)
800295d0:	e24bd004 	sub	sp, fp, #4
800295d4:	e8bd8800 	pop	{fp, pc}
800295d8:	800b0bac 	.word	0x800b0bac
800295dc:	800b0bb0 	.word	0x800b0bb0

800295e0 <ack_timer>:
800295e0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800295e4:	e28db000 	add	fp, sp, #0
800295e8:	e24dd00c 	sub	sp, sp, #12
800295ec:	e59f3020 	ldr	r3, [pc, #32]	@ 80029614 <ack_timer+0x34>
800295f0:	e50b3008 	str	r3, [fp, #-8]
800295f4:	e51b3008 	ldr	r3, [fp, #-8]
800295f8:	e283300c 	add	r3, r3, #12
800295fc:	e3a02001 	mov	r2, #1
80029600:	e5832000 	str	r2, [r3]
80029604:	e1a00000 	nop			@ (mov r0, r0)
80029608:	e28bd000 	add	sp, fp, #0
8002960c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80029610:	e12fff1e 	bx	lr
80029614:	901e2000 	.word	0x901e2000

80029618 <timer_init>:
80029618:	e92d4800 	push	{fp, lr}
8002961c:	e28db004 	add	fp, sp, #4
80029620:	e24dd010 	sub	sp, sp, #16
80029624:	e50b0010 	str	r0, [fp, #-16]
80029628:	e59f3050 	ldr	r3, [pc, #80]	@ 80029680 <timer_init+0x68>
8002962c:	e50b3008 	str	r3, [fp, #-8]
80029630:	e59f104c 	ldr	r1, [pc, #76]	@ 80029684 <timer_init+0x6c>
80029634:	e59f004c 	ldr	r0, [pc, #76]	@ 80029688 <timer_init+0x70>
80029638:	ebfff3ea 	bl	800265e8 <initlock>
8002963c:	e51b1010 	ldr	r1, [fp, #-16]
80029640:	e59f0044 	ldr	r0, [pc, #68]	@ 8002968c <timer_init+0x74>
80029644:	eb000109 	bl	80029a70 <__divsi3>
80029648:	e1a03000 	mov	r3, r0
8002964c:	e1a02003 	mov	r2, r3
80029650:	e51b3008 	ldr	r3, [fp, #-8]
80029654:	e5832000 	str	r2, [r3]
80029658:	e51b3008 	ldr	r3, [fp, #-8]
8002965c:	e2833008 	add	r3, r3, #8
80029660:	e3a020e2 	mov	r2, #226	@ 0xe2
80029664:	e5832000 	str	r2, [r3]
80029668:	e59f1020 	ldr	r1, [pc, #32]	@ 80029690 <timer_init+0x78>
8002966c:	e3a00004 	mov	r0, #4
80029670:	ebffff76 	bl	80029450 <pic_enable>
80029674:	e1a00000 	nop			@ (mov r0, r0)
80029678:	e24bd004 	sub	sp, fp, #4
8002967c:	e8bd8800 	pop	{fp, pc}
80029680:	901e2000 	.word	0x901e2000
80029684:	8002a514 	.word	0x8002a514
80029688:	800b0c30 	.word	0x800b0c30
8002968c:	000f4240 	.word	0x000f4240
80029690:	80029694 	.word	0x80029694

80029694 <isr_timer>:
80029694:	e92d4800 	push	{fp, lr}
80029698:	e28db004 	add	fp, sp, #4
8002969c:	e24dd008 	sub	sp, sp, #8
800296a0:	e50b0008 	str	r0, [fp, #-8]
800296a4:	e50b100c 	str	r1, [fp, #-12]
800296a8:	e59f0034 	ldr	r0, [pc, #52]	@ 800296e4 <isr_timer+0x50>
800296ac:	ebfff3df 	bl	80026630 <acquire>
800296b0:	e59f3030 	ldr	r3, [pc, #48]	@ 800296e8 <isr_timer+0x54>
800296b4:	e5933000 	ldr	r3, [r3]
800296b8:	e2833001 	add	r3, r3, #1
800296bc:	e59f2024 	ldr	r2, [pc, #36]	@ 800296e8 <isr_timer+0x54>
800296c0:	e5823000 	str	r3, [r2]
800296c4:	e59f001c 	ldr	r0, [pc, #28]	@ 800296e8 <isr_timer+0x54>
800296c8:	ebfff296 	bl	80026128 <wakeup>
800296cc:	e59f0010 	ldr	r0, [pc, #16]	@ 800296e4 <isr_timer+0x50>
800296d0:	ebfff3e1 	bl	8002665c <release>
800296d4:	ebffffc1 	bl	800295e0 <ack_timer>
800296d8:	e1a00000 	nop			@ (mov r0, r0)
800296dc:	e24bd004 	sub	sp, fp, #4
800296e0:	e8bd8800 	pop	{fp, pc}
800296e4:	800b0c30 	.word	0x800b0c30
800296e8:	800b0c64 	.word	0x800b0c64

800296ec <micro_delay>:
800296ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800296f0:	e28db000 	add	fp, sp, #0
800296f4:	e24dd014 	sub	sp, sp, #20
800296f8:	e50b0010 	str	r0, [fp, #-16]
800296fc:	e59f3054 	ldr	r3, [pc, #84]	@ 80029758 <micro_delay+0x6c>
80029700:	e50b3008 	str	r3, [fp, #-8]
80029704:	e51b3008 	ldr	r3, [fp, #-8]
80029708:	e2833008 	add	r3, r3, #8
8002970c:	e3a02082 	mov	r2, #130	@ 0x82
80029710:	e5832000 	str	r2, [r3]
80029714:	e51b2010 	ldr	r2, [fp, #-16]
80029718:	e51b3008 	ldr	r3, [fp, #-8]
8002971c:	e5832000 	str	r2, [r3]
80029720:	e1a00000 	nop			@ (mov r0, r0)
80029724:	e51b3008 	ldr	r3, [fp, #-8]
80029728:	e2833004 	add	r3, r3, #4
8002972c:	e5933000 	ldr	r3, [r3]
80029730:	e3530000 	cmp	r3, #0
80029734:	cafffffa 	bgt	80029724 <micro_delay+0x38>
80029738:	e51b3008 	ldr	r3, [fp, #-8]
8002973c:	e2833008 	add	r3, r3, #8
80029740:	e3a02000 	mov	r2, #0
80029744:	e5832000 	str	r2, [r3]
80029748:	e1a00000 	nop			@ (mov r0, r0)
8002974c:	e28bd000 	add	sp, fp, #0
80029750:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80029754:	e12fff1e 	bx	lr
80029758:	901e2020 	.word	0x901e2020

8002975c <uart_init>:
8002975c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80029760:	e28db000 	add	fp, sp, #0
80029764:	e24dd014 	sub	sp, sp, #20
80029768:	e50b0010 	str	r0, [fp, #-16]
8002976c:	e59f20a4 	ldr	r2, [pc, #164]	@ 80029818 <uart_init+0xbc>
80029770:	e51b3010 	ldr	r3, [fp, #-16]
80029774:	e5823000 	str	r3, [r2]
80029778:	e59f3098 	ldr	r3, [pc, #152]	@ 80029818 <uart_init+0xbc>
8002977c:	e5933000 	ldr	r3, [r3]
80029780:	e2833024 	add	r3, r3, #36	@ 0x24
80029784:	e3a0204e 	mov	r2, #78	@ 0x4e
80029788:	e5832000 	str	r2, [r3]
8002978c:	e3a03c96 	mov	r3, #38400	@ 0x9600
80029790:	e50b3008 	str	r3, [fp, #-8]
80029794:	e51b3008 	ldr	r3, [fp, #-8]
80029798:	e2833e96 	add	r3, r3, #2400	@ 0x960
8002979c:	e1a02103 	lsl	r2, r3, #2
800297a0:	e59f3070 	ldr	r3, [pc, #112]	@ 80029818 <uart_init+0xbc>
800297a4:	e5933000 	ldr	r3, [r3]
800297a8:	e2833028 	add	r3, r3, #40	@ 0x28
800297ac:	e59f1068 	ldr	r1, [pc, #104]	@ 8002981c <uart_init+0xc0>
800297b0:	e0821291 	umull	r1, r2, r1, r2
800297b4:	e1a025a2 	lsr	r2, r2, #11
800297b8:	e5832000 	str	r2, [r3]
800297bc:	e59f3054 	ldr	r3, [pc, #84]	@ 80029818 <uart_init+0xbc>
800297c0:	e5933000 	ldr	r3, [r3]
800297c4:	e2833030 	add	r3, r3, #48	@ 0x30
800297c8:	e5933000 	ldr	r3, [r3]
800297cc:	e59f2044 	ldr	r2, [pc, #68]	@ 80029818 <uart_init+0xbc>
800297d0:	e5922000 	ldr	r2, [r2]
800297d4:	e2822030 	add	r2, r2, #48	@ 0x30
800297d8:	e3833c03 	orr	r3, r3, #768	@ 0x300
800297dc:	e3833001 	orr	r3, r3, #1
800297e0:	e5823000 	str	r3, [r2]
800297e4:	e59f302c 	ldr	r3, [pc, #44]	@ 80029818 <uart_init+0xbc>
800297e8:	e5933000 	ldr	r3, [r3]
800297ec:	e283302c 	add	r3, r3, #44	@ 0x2c
800297f0:	e5932000 	ldr	r2, [r3]
800297f4:	e59f301c 	ldr	r3, [pc, #28]	@ 80029818 <uart_init+0xbc>
800297f8:	e5933000 	ldr	r3, [r3]
800297fc:	e283302c 	add	r3, r3, #44	@ 0x2c
80029800:	e3822010 	orr	r2, r2, #16
80029804:	e5832000 	str	r2, [r3]
80029808:	e1a00000 	nop			@ (mov r0, r0)
8002980c:	e28bd000 	add	sp, fp, #0
80029810:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80029814:	e12fff1e 	bx	lr
80029818:	800b0c68 	.word	0x800b0c68
8002981c:	1b4e81b5 	.word	0x1b4e81b5

80029820 <uart_enable_rx>:
80029820:	e92d4800 	push	{fp, lr}
80029824:	e28db004 	add	fp, sp, #4
80029828:	e59f3020 	ldr	r3, [pc, #32]	@ 80029850 <uart_enable_rx+0x30>
8002982c:	e5933000 	ldr	r3, [r3]
80029830:	e2833038 	add	r3, r3, #56	@ 0x38
80029834:	e3a02010 	mov	r2, #16
80029838:	e5832000 	str	r2, [r3]
8002983c:	e59f1010 	ldr	r1, [pc, #16]	@ 80029854 <uart_enable_rx+0x34>
80029840:	e3a0000c 	mov	r0, #12
80029844:	ebffff01 	bl	80029450 <pic_enable>
80029848:	e1a00000 	nop			@ (mov r0, r0)
8002984c:	e8bd8800 	pop	{fp, pc}
80029850:	800b0c68 	.word	0x800b0c68
80029854:	800298fc 	.word	0x800298fc

80029858 <uartputc>:
80029858:	e92d4800 	push	{fp, lr}
8002985c:	e28db004 	add	fp, sp, #4
80029860:	e24dd008 	sub	sp, sp, #8
80029864:	e50b0008 	str	r0, [fp, #-8]
80029868:	ea000001 	b	80029874 <uartputc+0x1c>
8002986c:	e3a0000a 	mov	r0, #10
80029870:	ebffff9d 	bl	800296ec <micro_delay>
80029874:	e59f3030 	ldr	r3, [pc, #48]	@ 800298ac <uartputc+0x54>
80029878:	e5933000 	ldr	r3, [r3]
8002987c:	e2833018 	add	r3, r3, #24
80029880:	e5933000 	ldr	r3, [r3]
80029884:	e2033020 	and	r3, r3, #32
80029888:	e3530000 	cmp	r3, #0
8002988c:	1afffff6 	bne	8002986c <uartputc+0x14>
80029890:	e59f3014 	ldr	r3, [pc, #20]	@ 800298ac <uartputc+0x54>
80029894:	e5933000 	ldr	r3, [r3]
80029898:	e51b2008 	ldr	r2, [fp, #-8]
8002989c:	e5832000 	str	r2, [r3]
800298a0:	e1a00000 	nop			@ (mov r0, r0)
800298a4:	e24bd004 	sub	sp, fp, #4
800298a8:	e8bd8800 	pop	{fp, pc}
800298ac:	800b0c68 	.word	0x800b0c68

800298b0 <uartgetc>:
800298b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800298b4:	e28db000 	add	fp, sp, #0
800298b8:	e59f3038 	ldr	r3, [pc, #56]	@ 800298f8 <uartgetc+0x48>
800298bc:	e5933000 	ldr	r3, [r3]
800298c0:	e2833018 	add	r3, r3, #24
800298c4:	e5933000 	ldr	r3, [r3]
800298c8:	e2033010 	and	r3, r3, #16
800298cc:	e3530000 	cmp	r3, #0
800298d0:	0a000001 	beq	800298dc <uartgetc+0x2c>
800298d4:	e3e03000 	mvn	r3, #0
800298d8:	ea000002 	b	800298e8 <uartgetc+0x38>
800298dc:	e59f3014 	ldr	r3, [pc, #20]	@ 800298f8 <uartgetc+0x48>
800298e0:	e5933000 	ldr	r3, [r3]
800298e4:	e5933000 	ldr	r3, [r3]
800298e8:	e1a00003 	mov	r0, r3
800298ec:	e28bd000 	add	sp, fp, #0
800298f0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800298f4:	e12fff1e 	bx	lr
800298f8:	800b0c68 	.word	0x800b0c68

800298fc <isr_uart>:
800298fc:	e92d4800 	push	{fp, lr}
80029900:	e28db004 	add	fp, sp, #4
80029904:	e24dd008 	sub	sp, sp, #8
80029908:	e50b0008 	str	r0, [fp, #-8]
8002990c:	e50b100c 	str	r1, [fp, #-12]
80029910:	e59f303c 	ldr	r3, [pc, #60]	@ 80029954 <isr_uart+0x58>
80029914:	e5933000 	ldr	r3, [r3]
80029918:	e2833040 	add	r3, r3, #64	@ 0x40
8002991c:	e5933000 	ldr	r3, [r3]
80029920:	e2033010 	and	r3, r3, #16
80029924:	e3530000 	cmp	r3, #0
80029928:	0a000001 	beq	80029934 <isr_uart+0x38>
8002992c:	e59f0024 	ldr	r0, [pc, #36]	@ 80029958 <isr_uart+0x5c>
80029930:	ebffe0a3 	bl	80021bc4 <consoleintr>
80029934:	e59f3018 	ldr	r3, [pc, #24]	@ 80029954 <isr_uart+0x58>
80029938:	e5933000 	ldr	r3, [r3]
8002993c:	e2833044 	add	r3, r3, #68	@ 0x44
80029940:	e3a02030 	mov	r2, #48	@ 0x30
80029944:	e5832000 	str	r2, [r3]
80029948:	e1a00000 	nop			@ (mov r0, r0)
8002994c:	e24bd004 	sub	sp, fp, #4
80029950:	e8bd8800 	pop	{fp, pc}
80029954:	800b0c68 	.word	0x800b0c68
80029958:	800298b0 	.word	0x800298b0

8002995c <__udivsi3>:
8002995c:	e2512001 	subs	r2, r1, #1
80029960:	012fff1e 	bxeq	lr
80029964:	3a000036 	bcc	80029a44 <__udivsi3+0xe8>
80029968:	e1500001 	cmp	r0, r1
8002996c:	9a000022 	bls	800299fc <__udivsi3+0xa0>
80029970:	e1110002 	tst	r1, r2
80029974:	0a000023 	beq	80029a08 <__udivsi3+0xac>
80029978:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
8002997c:	01a01181 	lsleq	r1, r1, #3
80029980:	03a03008 	moveq	r3, #8
80029984:	13a03001 	movne	r3, #1
80029988:	e3510201 	cmp	r1, #268435456	@ 0x10000000
8002998c:	31510000 	cmpcc	r1, r0
80029990:	31a01201 	lslcc	r1, r1, #4
80029994:	31a03203 	lslcc	r3, r3, #4
80029998:	3afffffa 	bcc	80029988 <__udivsi3+0x2c>
8002999c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
800299a0:	31510000 	cmpcc	r1, r0
800299a4:	31a01081 	lslcc	r1, r1, #1
800299a8:	31a03083 	lslcc	r3, r3, #1
800299ac:	3afffffa 	bcc	8002999c <__udivsi3+0x40>
800299b0:	e3a02000 	mov	r2, #0
800299b4:	e1500001 	cmp	r0, r1
800299b8:	20400001 	subcs	r0, r0, r1
800299bc:	21822003 	orrcs	r2, r2, r3
800299c0:	e15000a1 	cmp	r0, r1, lsr #1
800299c4:	204000a1 	subcs	r0, r0, r1, lsr #1
800299c8:	218220a3 	orrcs	r2, r2, r3, lsr #1
800299cc:	e1500121 	cmp	r0, r1, lsr #2
800299d0:	20400121 	subcs	r0, r0, r1, lsr #2
800299d4:	21822123 	orrcs	r2, r2, r3, lsr #2
800299d8:	e15001a1 	cmp	r0, r1, lsr #3
800299dc:	204001a1 	subcs	r0, r0, r1, lsr #3
800299e0:	218221a3 	orrcs	r2, r2, r3, lsr #3
800299e4:	e3500000 	cmp	r0, #0
800299e8:	11b03223 	lsrsne	r3, r3, #4
800299ec:	11a01221 	lsrne	r1, r1, #4
800299f0:	1affffef 	bne	800299b4 <__udivsi3+0x58>
800299f4:	e1a00002 	mov	r0, r2
800299f8:	e12fff1e 	bx	lr
800299fc:	03a00001 	moveq	r0, #1
80029a00:	13a00000 	movne	r0, #0
80029a04:	e12fff1e 	bx	lr
80029a08:	e3510801 	cmp	r1, #65536	@ 0x10000
80029a0c:	21a01821 	lsrcs	r1, r1, #16
80029a10:	23a02010 	movcs	r2, #16
80029a14:	33a02000 	movcc	r2, #0
80029a18:	e3510c01 	cmp	r1, #256	@ 0x100
80029a1c:	21a01421 	lsrcs	r1, r1, #8
80029a20:	22822008 	addcs	r2, r2, #8
80029a24:	e3510010 	cmp	r1, #16
80029a28:	21a01221 	lsrcs	r1, r1, #4
80029a2c:	22822004 	addcs	r2, r2, #4
80029a30:	e3510004 	cmp	r1, #4
80029a34:	82822003 	addhi	r2, r2, #3
80029a38:	908220a1 	addls	r2, r2, r1, lsr #1
80029a3c:	e1a00230 	lsr	r0, r0, r2
80029a40:	e12fff1e 	bx	lr
80029a44:	e3500000 	cmp	r0, #0
80029a48:	13e00000 	mvnne	r0, #0
80029a4c:	ea000059 	b	80029bb8 <__aeabi_idiv0>

80029a50 <__aeabi_uidivmod>:
80029a50:	e3510000 	cmp	r1, #0
80029a54:	0afffffa 	beq	80029a44 <__udivsi3+0xe8>
80029a58:	e92d4003 	push	{r0, r1, lr}
80029a5c:	ebffffbe 	bl	8002995c <__udivsi3>
80029a60:	e8bd4006 	pop	{r1, r2, lr}
80029a64:	e0030092 	mul	r3, r2, r0
80029a68:	e0411003 	sub	r1, r1, r3
80029a6c:	e12fff1e 	bx	lr

80029a70 <__divsi3>:
80029a70:	e3510000 	cmp	r1, #0
80029a74:	0a000043 	beq	80029b88 <.divsi3_skip_div0_test+0x110>

80029a78 <.divsi3_skip_div0_test>:
80029a78:	e020c001 	eor	ip, r0, r1
80029a7c:	42611000 	rsbmi	r1, r1, #0
80029a80:	e2512001 	subs	r2, r1, #1
80029a84:	0a000027 	beq	80029b28 <.divsi3_skip_div0_test+0xb0>
80029a88:	e1b03000 	movs	r3, r0
80029a8c:	42603000 	rsbmi	r3, r0, #0
80029a90:	e1530001 	cmp	r3, r1
80029a94:	9a000026 	bls	80029b34 <.divsi3_skip_div0_test+0xbc>
80029a98:	e1110002 	tst	r1, r2
80029a9c:	0a000028 	beq	80029b44 <.divsi3_skip_div0_test+0xcc>
80029aa0:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
80029aa4:	01a01181 	lsleq	r1, r1, #3
80029aa8:	03a02008 	moveq	r2, #8
80029aac:	13a02001 	movne	r2, #1
80029ab0:	e3510201 	cmp	r1, #268435456	@ 0x10000000
80029ab4:	31510003 	cmpcc	r1, r3
80029ab8:	31a01201 	lslcc	r1, r1, #4
80029abc:	31a02202 	lslcc	r2, r2, #4
80029ac0:	3afffffa 	bcc	80029ab0 <.divsi3_skip_div0_test+0x38>
80029ac4:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
80029ac8:	31510003 	cmpcc	r1, r3
80029acc:	31a01081 	lslcc	r1, r1, #1
80029ad0:	31a02082 	lslcc	r2, r2, #1
80029ad4:	3afffffa 	bcc	80029ac4 <.divsi3_skip_div0_test+0x4c>
80029ad8:	e3a00000 	mov	r0, #0
80029adc:	e1530001 	cmp	r3, r1
80029ae0:	20433001 	subcs	r3, r3, r1
80029ae4:	21800002 	orrcs	r0, r0, r2
80029ae8:	e15300a1 	cmp	r3, r1, lsr #1
80029aec:	204330a1 	subcs	r3, r3, r1, lsr #1
80029af0:	218000a2 	orrcs	r0, r0, r2, lsr #1
80029af4:	e1530121 	cmp	r3, r1, lsr #2
80029af8:	20433121 	subcs	r3, r3, r1, lsr #2
80029afc:	21800122 	orrcs	r0, r0, r2, lsr #2
80029b00:	e15301a1 	cmp	r3, r1, lsr #3
80029b04:	204331a1 	subcs	r3, r3, r1, lsr #3
80029b08:	218001a2 	orrcs	r0, r0, r2, lsr #3
80029b0c:	e3530000 	cmp	r3, #0
80029b10:	11b02222 	lsrsne	r2, r2, #4
80029b14:	11a01221 	lsrne	r1, r1, #4
80029b18:	1affffef 	bne	80029adc <.divsi3_skip_div0_test+0x64>
80029b1c:	e35c0000 	cmp	ip, #0
80029b20:	42600000 	rsbmi	r0, r0, #0
80029b24:	e12fff1e 	bx	lr
80029b28:	e13c0000 	teq	ip, r0
80029b2c:	42600000 	rsbmi	r0, r0, #0
80029b30:	e12fff1e 	bx	lr
80029b34:	33a00000 	movcc	r0, #0
80029b38:	01a00fcc 	asreq	r0, ip, #31
80029b3c:	03800001 	orreq	r0, r0, #1
80029b40:	e12fff1e 	bx	lr
80029b44:	e3510801 	cmp	r1, #65536	@ 0x10000
80029b48:	21a01821 	lsrcs	r1, r1, #16
80029b4c:	23a02010 	movcs	r2, #16
80029b50:	33a02000 	movcc	r2, #0
80029b54:	e3510c01 	cmp	r1, #256	@ 0x100
80029b58:	21a01421 	lsrcs	r1, r1, #8
80029b5c:	22822008 	addcs	r2, r2, #8
80029b60:	e3510010 	cmp	r1, #16
80029b64:	21a01221 	lsrcs	r1, r1, #4
80029b68:	22822004 	addcs	r2, r2, #4
80029b6c:	e3510004 	cmp	r1, #4
80029b70:	82822003 	addhi	r2, r2, #3
80029b74:	908220a1 	addls	r2, r2, r1, lsr #1
80029b78:	e35c0000 	cmp	ip, #0
80029b7c:	e1a00233 	lsr	r0, r3, r2
80029b80:	42600000 	rsbmi	r0, r0, #0
80029b84:	e12fff1e 	bx	lr
80029b88:	e3500000 	cmp	r0, #0
80029b8c:	c3e00102 	mvngt	r0, #-2147483648	@ 0x80000000
80029b90:	b3a00102 	movlt	r0, #-2147483648	@ 0x80000000
80029b94:	ea000007 	b	80029bb8 <__aeabi_idiv0>

80029b98 <__aeabi_idivmod>:
80029b98:	e3510000 	cmp	r1, #0
80029b9c:	0afffff9 	beq	80029b88 <.divsi3_skip_div0_test+0x110>
80029ba0:	e92d4003 	push	{r0, r1, lr}
80029ba4:	ebffffb3 	bl	80029a78 <.divsi3_skip_div0_test>
80029ba8:	e8bd4006 	pop	{r1, r2, lr}
80029bac:	e0030092 	mul	r3, r2, r0
80029bb0:	e0411003 	sub	r1, r1, r3
80029bb4:	e12fff1e 	bx	lr

80029bb8 <__aeabi_idiv0>:
80029bb8:	e12fff1e 	bx	lr
