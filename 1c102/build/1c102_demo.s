
1c102_demo.elf:     file format elf32-loongarch
1c102_demo.elf


Disassembly of section .text:

1c000000 <_start>:
_start():
1c000000:	0015000d 	move	$r13,$r0
1c000004:	50002000 	b	32(0x20) # 1c000024 <LoopCopyDataInit>

1c000008 <CopyDataInit>:
CopyDataInit():
1c000008:	143800ef 	lu12i.w	$r15,114695(0x1c007)
1c00000c:	039ed1ef 	ori	$r15,$r15,0x7b4
1c000010:	001035f0 	add.w	$r16,$r15,$r13
1c000014:	2880020f 	ld.w	$r15,$r16,0
1c000018:	00103590 	add.w	$r16,$r12,$r13
1c00001c:	2980020f 	st.w	$r15,$r16,0
1c000020:	028011ad 	addi.w	$r13,$r13,4(0x4)

1c000024 <LoopCopyDataInit>:
LoopCopyDataInit():
1c000024:	1500002c 	lu12i.w	$r12,-524287(0x80001)
1c000028:	0380018c 	ori	$r12,$r12,0x0
1c00002c:	1500002f 	lu12i.w	$r15,-524287(0x80001)
1c000030:	0380b1ef 	ori	$r15,$r15,0x2c
1c000034:	0010358e 	add.w	$r14,$r12,$r13
1c000038:	5fffd1cf 	bne	$r14,$r15,-48(0x3ffd0) # 1c000008 <CopyDataInit>
1c00003c:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c000040:	0380018c 	ori	$r12,$r12,0x0
1c000044:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c000048:	038af1ad 	ori	$r13,$r13,0x2bc
1c00004c:	580011ac 	beq	$r13,$r12,16(0x10) # 1c00005c <cpu_init_start>

1c000050 <LoopFillZerobss>:
LoopFillZerobss():
1c000050:	29800180 	st.w	$r0,$r12,0
1c000054:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000058:	5ffff9ac 	bne	$r13,$r12,-8(0x3fff8) # 1c000050 <LoopFillZerobss>

1c00005c <cpu_init_start>:
cpu_init_start():
1c00005c:	1438002c 	lu12i.w	$r12,114689(0x1c001)
1c000060:	0400302c 	csrwr	$r12,0xc
1c000064:	0015000c 	move	$r12,$r0
1c000068:	0400102c 	csrwr	$r12,0x4
1c00006c:	1400002c 	lu12i.w	$r12,1(0x1)
1c000070:	03bffd8c 	ori	$r12,$r12,0xfff
1c000074:	0400118c 	csrxchg	$r12,$r12,0x4
1c000078:	15ffe3ec 	lu12i.w	$r12,-225(0xfff1f)
1c00007c:	03bffd8c 	ori	$r12,$r12,0xfff
1c000080:	0406442c 	csrwr	$r12,0x191
1c000084:	14eca06c 	lu12i.w	$r12,484611(0x76503)
1c000088:	0388418c 	ori	$r12,$r12,0x210
1c00008c:	0406402c 	csrwr	$r12,0x190
1c000090:	0380200c 	ori	$r12,$r0,0x8
1c000094:	04000180 	csrxchg	$r0,$r12,0x0
1c000098:	15000023 	lu12i.w	$r3,-524287(0x80001)
1c00009c:	03bdf063 	ori	$r3,$r3,0xf7c
1c0000a0:	54132400 	bl	4900(0x1324) # 1c0013c4 <bsp_init>
1c0000a4:	03400000 	andi	$r0,$r0,0x0
1c0000a8:	4c000020 	jirl	$r0,$r1,0

1c0000ac <cpu_wait>:
cpu_wait():
1c0000ac:	06488000 	idle	0x0
1c0000b0:	4c000020 	jirl	$r0,$r1,0
	...

1c000800 <m4_flash_4k>:
m4_flash_4k():
1c000800:	140007ec 	lu12i.w	$r12,63(0x3f)
1c000804:	03be018c 	ori	$r12,$r12,0xf80
1c000808:	157fcc0d 	lu12i.w	$r13,-262560(0xbfe60)
1c00080c:	0014b08c 	and	$r12,$r4,$r12
1c000810:	038061af 	ori	$r15,$r13,0x18
1c000814:	02804010 	addi.w	$r16,$r0,16(0x10)
1c000818:	1540000e 	lu12i.w	$r14,-393216(0xa0000)
1c00081c:	298001f0 	st.w	$r16,$r15,0
1c000820:	0015398e 	or	$r14,$r12,$r14
1c000824:	298001ae 	st.w	$r14,$r13,0
1c000828:	1480000f 	lu12i.w	$r15,262144(0x40000)
1c00082c:	14b54aae 	lu12i.w	$r14,371285(0x5aa55)
1c000830:	0396a9ce 	ori	$r14,$r14,0x5aa
1c000834:	298001af 	st.w	$r15,$r13,0
1c000838:	15c0000f 	lu12i.w	$r15,-131072(0xe0000)
1c00083c:	2980008e 	st.w	$r14,$r4,0
1c000840:	00153d8c 	or	$r12,$r12,$r15
1c000844:	298001ac 	st.w	$r12,$r13,0
1c000848:	4c000020 	jirl	$r0,$r1,0
	...

1c001000 <DEFAULT_INT_HANDLER>:
DEFAULT_INT_HANDLER():
1c001000:	0400c435 	csrwr	$r21,0x31
1c001004:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c001008:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c00100c:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c001010:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c001014:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c001018:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c00101c:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001020:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001024:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c001028:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c00102c:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001030:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c001034:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001038:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c00103c:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001040:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c001044:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001048:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c00104c:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001050:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c001054:	0400140c 	csrrd	$r12,0x5
1c001058:	036ef18d 	andi	$r13,$r12,0xbbc
1c00105c:	400065a0 	beqz	$r13,100(0x64) # 1c0010c0 <exception_core_check>

1c001060 <exception_pmu>:
exception_pmu():
1c001060:	0340118d 	andi	$r13,$r12,0x4
1c001064:	44002da0 	bnez	$r13,44(0x2c) # 1c001090 <wake_label>
1c001068:	0340218d 	andi	$r13,$r12,0x8
1c00106c:	44002da0 	bnez	$r13,44(0x2c) # 1c001098 <touch_label>
1c001070:	0340418d 	andi	$r13,$r12,0x10
1c001074:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a0 <uart2_label>
1c001078:	0340818d 	andi	$r13,$r12,0x20
1c00107c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a8 <bcc_label>
1c001080:	0342018d 	andi	$r13,$r12,0x80
1c001084:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b0 <exint_label>
1c001088:	0360018d 	andi	$r13,$r12,0x800
1c00108c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b8 <timer_label>

1c001090 <wake_label>:
wake_label():
1c001090:	543c0000 	bl	15360(0x3c00) # 1c004c90 <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	543c5400 	bl	15444(0x3c54) # 1c004cec <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	543ce000 	bl	15584(0x3ce0) # 1c004d80 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	543d1400 	bl	15636(0x3d14) # 1c004dbc <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	543b2800 	bl	15144(0x3b28) # 1c004bd8 <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	543e8800 	bl	16008(0x3e88) # 1c004f40 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	543dcc00 	bl	15820(0x3dcc) # 1c004e94 <intc_handler>
1c0010cc:	50000400 	b	4(0x4) # 1c0010d0 <exception_exit>

1c0010d0 <exception_exit>:
exception_exit():
1c0010d0:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0010d4:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0010d8:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0010dc:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0010e0:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0010e4:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0010e8:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0010ec:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0010f0:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0010f4:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0010f8:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0010fc:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c001100:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c001104:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c001108:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c00110c:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c001110:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001114:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001118:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c00111c:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c001120:	0400c415 	csrrd	$r21,0x31
1c001124:	06483800 	ertn

1c001128 <serial_out>:
serial_out():
1c001128:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c00112c:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c001130:	03408108 	andi	$r8,$r8,0x20
1c001134:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c001128 <serial_out>
1c001138:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00113c:	29000184 	st.b	$r4,$r12,0
1c001140:	4c000020 	jirl	$r0,$r1,0

1c001144 <outputaddr>:
outputaddr():
1c001144:	02bff063 	addi.w	$r3,$r3,-4(0xffc)
1c001148:	29800061 	st.w	$r1,$r3,0
1c00114c:	1cc80006 	pcaddu12i	$r6,409600(0x64000)
1c001150:	28bae0c6 	ld.w	$r6,$r6,-328(0xeb8)
1c001154:	15e0000d 	lu12i.w	$r13,-65536(0xf0000)
1c001158:	0380200e 	ori	$r14,$r0,0x8
1c00115c:	0380700f 	ori	$r15,$r0,0x1c
1c001160:	03800085 	ori	$r5,$r4,0x0
1c001164:	58002dc0 	beq	$r14,$r0,44(0x2c) # 1c001190 <outputaddr+0x4c>
1c001168:	0014b4ac 	and	$r12,$r5,$r13
1c00116c:	0017bd8c 	srl.w	$r12,$r12,$r15
1c001170:	0010198c 	add.w	$r12,$r12,$r6
1c001174:	2a000190 	ld.bu	$r16,$r12,0
1c001178:	03800204 	ori	$r4,$r16,0x0
1c00117c:	57ffafff 	bl	-84(0xfffffac) # 1c001128 <serial_out>
1c001180:	004491ad 	srli.w	$r13,$r13,0x4
1c001184:	02bff1ef 	addi.w	$r15,$r15,-4(0xffc)
1c001188:	02bffdce 	addi.w	$r14,$r14,-1(0xfff)
1c00118c:	53ffdbff 	b	-40(0xfffffd8) # 1c001164 <outputaddr+0x20>
1c001190:	03802804 	ori	$r4,$r0,0xa
1c001194:	57ff97ff 	bl	-108(0xfffff94) # 1c001128 <serial_out>
1c001198:	28800061 	ld.w	$r1,$r3,0
1c00119c:	02801063 	addi.w	$r3,$r3,4(0x4)
1c0011a0:	4c000020 	jirl	$r0,$r1,0

1c0011a4 <outputstring>:
outputstring():
1c0011a4:	00150089 	move	$r9,$r4
1c0011a8:	2a00012c 	ld.bu	$r12,$r9,0
1c0011ac:	58002580 	beq	$r12,$r0,36(0x24) # 1c0011d0 <outputstring+0x2c>
1c0011b0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011b4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011b8:	03408108 	andi	$r8,$r8,0x20
1c0011bc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011b0 <outputstring+0xc>
1c0011c0:	157fd007 	lu12i.w	$r7,-262528(0xbfe80)
1c0011c4:	290000ec 	st.b	$r12,$r7,0
1c0011c8:	02800529 	addi.w	$r9,$r9,1(0x1)
1c0011cc:	53ffdfff 	b	-36(0xfffffdc) # 1c0011a8 <outputstring+0x4>
1c0011d0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011d4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011d8:	03410108 	andi	$r8,$r8,0x40
1c0011dc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011d0 <outputstring+0x2c>
1c0011e0:	4c000020 	jirl	$r0,$r1,0

1c0011e4 <cpu_sleep>:
cpu_sleep():
1c0011e4:	0400c435 	csrwr	$r21,0x31
1c0011e8:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0011ec:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c0011f0:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c0011f4:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c0011f8:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c0011fc:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c001200:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001204:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001208:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c00120c:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c001210:	29bf62b7 	st.w	$r23,$r21,-40(0xfd8)
1c001214:	29bf52b8 	st.w	$r24,$r21,-44(0xfd4)
1c001218:	29bf42b9 	st.w	$r25,$r21,-48(0xfd0)
1c00121c:	29bf32ba 	st.w	$r26,$r21,-52(0xfcc)
1c001220:	29bf22bb 	st.w	$r27,$r21,-56(0xfc8)
1c001224:	29bf12bc 	st.w	$r28,$r21,-60(0xfc4)
1c001228:	29bf02bd 	st.w	$r29,$r21,-64(0xfc0)
1c00122c:	29bef2be 	st.w	$r30,$r21,-68(0xfbc)
1c001230:	29bee2bf 	st.w	$r31,$r21,-72(0xfb8)
1c001234:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001238:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c00123c:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001240:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c001244:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001248:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c00124c:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001250:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c001254:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001258:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c00125c:	29be32a2 	st.w	$r2,$r21,-116(0xf8c)
1c001260:	29be22b6 	st.w	$r22,$r21,-120(0xf88)
1c001264:	028002ac 	addi.w	$r12,$r21,0
1c001268:	0400c415 	csrrd	$r21,0x31
1c00126c:	29be1195 	st.w	$r21,$r12,-124(0xf84)
1c001270:	38720000 	dbar	0x0
1c001274:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c001278:	2880f1ac 	ld.w	$r12,$r13,60(0x3c)
1c00127c:	0340058c 	andi	$r12,$r12,0x1
1c001280:	43fff99f 	beqz	$r12,-8(0x7ffff8) # 1c001278 <cpu_sleep+0x94>
1c001284:	2980f1ac 	st.w	$r12,$r13,60(0x3c)
1c001288:	06488000 	idle	0x0

1c00128c <wakeup_reset>:
wakeup_reset():
1c00128c:	1cc80004 	pcaddu12i	$r4,409600(0x64000)
1c001290:	28b66084 	ld.w	$r4,$r4,-616(0xd98)
1c001294:	57ff13ff 	bl	-240(0xfffff10) # 1c0011a4 <outputstring>
1c001298:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c00129c:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0012a0:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0012a4:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0012a8:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0012ac:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0012b0:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0012b4:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0012b8:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0012bc:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0012c0:	28bf62b7 	ld.w	$r23,$r21,-40(0xfd8)
1c0012c4:	28bf52b8 	ld.w	$r24,$r21,-44(0xfd4)
1c0012c8:	28bf42b9 	ld.w	$r25,$r21,-48(0xfd0)
1c0012cc:	28bf32ba 	ld.w	$r26,$r21,-52(0xfcc)
1c0012d0:	28bf22bb 	ld.w	$r27,$r21,-56(0xfc8)
1c0012d4:	28bf12bc 	ld.w	$r28,$r21,-60(0xfc4)
1c0012d8:	28bf02bd 	ld.w	$r29,$r21,-64(0xfc0)
1c0012dc:	28bef2be 	ld.w	$r30,$r21,-68(0xfbc)
1c0012e0:	28bee2bf 	ld.w	$r31,$r21,-72(0xfb8)
1c0012e4:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0012e8:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c0012ec:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c0012f0:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c0012f4:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c0012f8:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c0012fc:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001300:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001304:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c001308:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c00130c:	28be32a2 	ld.w	$r2,$r21,-116(0xf8c)
1c001310:	28be22b6 	ld.w	$r22,$r21,-120(0xf88)
1c001314:	28be12b5 	ld.w	$r21,$r21,-124(0xf84)
1c001318:	0400c42c 	csrwr	$r12,0x31
1c00131c:	0380100c 	ori	$r12,$r0,0x4
1c001320:	0400018c 	csrxchg	$r12,$r12,0x0
1c001324:	0400c40c 	csrrd	$r12,0x31
1c001328:	4c000020 	jirl	$r0,$r1,0

1c00132c <GPIOInit>:
GPIOInit():
1c00132c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001330:	29803061 	st.w	$r1,$r3,12(0xc)
1c001334:	29802076 	st.w	$r22,$r3,8(0x8)
1c001338:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00133c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001340:	140001ec 	lu12i.w	$r12,15(0xf)
1c001344:	03bffd85 	ori	$r5,$r12,0xfff
1c001348:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00134c:	03804184 	ori	$r4,$r12,0x10
1c001350:	54017000 	bl	368(0x170) # 1c0014c0 <AFIO_RemapConfig>
1c001354:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001358:	140001ec 	lu12i.w	$r12,15(0xf)
1c00135c:	03bffd85 	ori	$r5,$r12,0xfff
1c001360:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001364:	03805184 	ori	$r4,$r12,0x14
1c001368:	54015800 	bl	344(0x158) # 1c0014c0 <AFIO_RemapConfig>
1c00136c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001370:	140001ec 	lu12i.w	$r12,15(0xf)
1c001374:	03bcfd85 	ori	$r5,$r12,0xf3f
1c001378:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00137c:	03806184 	ori	$r4,$r12,0x18
1c001380:	54014000 	bl	320(0x140) # 1c0014c0 <AFIO_RemapConfig>
1c001384:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001388:	02830005 	addi.w	$r5,$r0,192(0xc0)
1c00138c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001390:	03806184 	ori	$r4,$r12,0x18
1c001394:	54012c00 	bl	300(0x12c) # 1c0014c0 <AFIO_RemapConfig>
1c001398:	02800406 	addi.w	$r6,$r0,1(0x1)
1c00139c:	140001ec 	lu12i.w	$r12,15(0xf)
1c0013a0:	03bffd85 	ori	$r5,$r12,0xfff
1c0013a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0013a8:	03807184 	ori	$r4,$r12,0x1c
1c0013ac:	54011400 	bl	276(0x114) # 1c0014c0 <AFIO_RemapConfig>
1c0013b0:	03400000 	andi	$r0,$r0,0x0
1c0013b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0013b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0013bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0013c0:	4c000020 	jirl	$r0,$r1,0

1c0013c4 <bsp_init>:
bsp_init():
1c0013c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0013c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0013cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0013d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0013d4:	541b7400 	bl	7028(0x1b74) # 1c002f48 <DisableInt>
1c0013d8:	541a9c00 	bl	6812(0x1a9c) # 1c002e74 <SystemClockInit>
1c0013dc:	57ff53ff 	bl	-176(0xfffff50) # 1c00132c <GPIOInit>
1c0013e0:	54243000 	bl	9264(0x2430) # 1c003810 <WdgInit>
1c0013e4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0013e8:	54237000 	bl	9072(0x2370) # 1c003758 <WDG_SetWatchDog>
1c0013ec:	1400004c 	lu12i.w	$r12,2(0x2)
1c0013f0:	03960184 	ori	$r4,$r12,0x580
1c0013f4:	5414c000 	bl	5312(0x14c0) # 1c0028b4 <Uart1_init>
1c0013f8:	541d4400 	bl	7492(0x1d44) # 1c00313c <ls1x_logo>
1c0013fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001400:	0380118c 	ori	$r12,$r12,0x4
1c001404:	2880018e 	ld.w	$r14,$r12,0
1c001408:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00140c:	0380118c 	ori	$r12,$r12,0x4
1c001410:	1404000d 	lu12i.w	$r13,8192(0x2000)
1c001414:	001535cd 	or	$r13,$r14,$r13
1c001418:	2980018d 	st.w	$r13,$r12,0
1c00141c:	541b5000 	bl	6992(0x1b50) # 1c002f6c <EnableInt>
1c001420:	541de400 	bl	7652(0x1de4) # 1c003204 <open_count>
1c001424:	02801804 	addi.w	$r4,$r0,6(0x6)
1c001428:	541bac00 	bl	7084(0x1bac) # 1c002fd4 <Wake_Set>
1c00142c:	5423b800 	bl	9144(0x23b8) # 1c0037e4 <WDG_DogFeed>
1c001430:	541c5000 	bl	7248(0x1c50) # 1c003080 <PMU_GetRstRrc>
1c001434:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001438:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00143c:	44003180 	bnez	$r12,48(0x30) # 1c00146c <bsp_init+0xa8>
1c001440:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c001444:	02817084 	addi.w	$r4,$r4,92(0x5c)
1c001448:	54062400 	bl	1572(0x624) # 1c001a6c <myprintf>
1c00144c:	541ca000 	bl	7328(0x1ca0) # 1c0030ec <PMU_GetBootSpiStatus>
1c001450:	0015008c 	move	$r12,$r4
1c001454:	40001180 	beqz	$r12,16(0x10) # 1c001464 <bsp_init+0xa0>
1c001458:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c00145c:	02815084 	addi.w	$r4,$r4,84(0x54)
1c001460:	54060c00 	bl	1548(0x60c) # 1c001a6c <myprintf>
1c001464:	543b1400 	bl	15124(0x3b14) # 1c004f78 <main>
1c001468:	50004000 	b	64(0x40) # 1c0014a8 <bsp_init+0xe4>
1c00146c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001470:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001474:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c00148c <bsp_init+0xc8>
1c001478:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c00147c:	02810084 	addi.w	$r4,$r4,64(0x40)
1c001480:	5405ec00 	bl	1516(0x5ec) # 1c001a6c <myprintf>
1c001484:	543af400 	bl	15092(0x3af4) # 1c004f78 <main>
1c001488:	50002000 	b	32(0x20) # 1c0014a8 <bsp_init+0xe4>
1c00148c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001490:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c001494:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0014a8 <bsp_init+0xe4>
1c001498:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c00149c:	0280c084 	addi.w	$r4,$r4,48(0x30)
1c0014a0:	5405cc00 	bl	1484(0x5cc) # 1c001a6c <myprintf>
1c0014a4:	57fd43ff 	bl	-704(0xffffd40) # 1c0011e4 <cpu_sleep>
1c0014a8:	0015000c 	move	$r12,$r0
1c0014ac:	00150184 	move	$r4,$r12
1c0014b0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0014b4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0014b8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0014bc:	4c000020 	jirl	$r0,$r1,0

1c0014c0 <AFIO_RemapConfig>:
AFIO_RemapConfig():
1c0014c0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0014c4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0014c8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0014cc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0014d0:	001500ac 	move	$r12,$r5
1c0014d4:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0014d8:	297f6acc 	st.h	$r12,$r22,-38(0xfda)
1c0014dc:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0014e0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0014e4:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0014e8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0014ec:	2880018c 	ld.w	$r12,$r12,0
1c0014f0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0014f4:	293faec0 	st.b	$r0,$r22,-21(0xfeb)
1c0014f8:	50006c00 	b	108(0x6c) # 1c001564 <AFIO_RemapConfig+0xa4>
1c0014fc:	2a7f6acd 	ld.hu	$r13,$r22,-38(0xfda)
1c001500:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001504:	001831ac 	sra.w	$r12,$r13,$r12
1c001508:	0340058c 	andi	$r12,$r12,0x1
1c00150c:	40004d80 	beqz	$r12,76(0x4c) # 1c001558 <AFIO_RemapConfig+0x98>
1c001510:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001514:	0040858c 	slli.w	$r12,$r12,0x1
1c001518:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00151c:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c001520:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001524:	001731ac 	sll.w	$r12,$r13,$r12
1c001528:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c00152c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001530:	0014300c 	nor	$r12,$r0,$r12
1c001534:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001538:	0014b1ac 	and	$r12,$r13,$r12
1c00153c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001540:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c001544:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001548:	001731ac 	sll.w	$r12,$r13,$r12
1c00154c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001550:	001531ac 	or	$r12,$r13,$r12
1c001554:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001558:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c00155c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001560:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c001564:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c001568:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c00156c:	6fff918d 	bgeu	$r12,$r13,-112(0x3ff90) # 1c0014fc <AFIO_RemapConfig+0x3c>
1c001570:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001574:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001578:	2980018d 	st.w	$r13,$r12,0
1c00157c:	03400000 	andi	$r0,$r0,0x0
1c001580:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001584:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001588:	4c000020 	jirl	$r0,$r1,0

1c00158c <gpio_get_pin>:
gpio_get_pin():
1c00158c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001590:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001594:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001598:	0015008c 	move	$r12,$r4
1c00159c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0015a0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0015a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0015a8:	0382018c 	ori	$r12,$r12,0x80
1c0015ac:	001031ac 	add.w	$r12,$r13,$r12
1c0015b0:	29000180 	st.b	$r0,$r12,0
1c0015b4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0015b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0015bc:	0382018c 	ori	$r12,$r12,0x80
1c0015c0:	001031ac 	add.w	$r12,$r13,$r12
1c0015c4:	2a00018c 	ld.bu	$r12,$r12,0
1c0015c8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0015cc:	00150184 	move	$r4,$r12
1c0015d0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0015d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0015d8:	4c000020 	jirl	$r0,$r1,0

1c0015dc <gpio_write_pin>:
gpio_write_pin():
1c0015dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0015e0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0015e4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0015e8:	0015008c 	move	$r12,$r4
1c0015ec:	001500ad 	move	$r13,$r5
1c0015f0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0015f4:	001501ac 	move	$r12,$r13
1c0015f8:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0015fc:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c001600:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001604:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c001628 <gpio_write_pin+0x4c>
1c001608:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00160c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001610:	0382018c 	ori	$r12,$r12,0x80
1c001614:	001031ac 	add.w	$r12,$r13,$r12
1c001618:	0015018d 	move	$r13,$r12
1c00161c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c001620:	290001ac 	st.b	$r12,$r13,0
1c001624:	50002000 	b	32(0x20) # 1c001644 <gpio_write_pin+0x68>
1c001628:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00162c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001630:	0382018c 	ori	$r12,$r12,0x80
1c001634:	001031ac 	add.w	$r12,$r13,$r12
1c001638:	0015018d 	move	$r13,$r12
1c00163c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c001640:	290001ac 	st.b	$r12,$r13,0
1c001644:	03400000 	andi	$r0,$r0,0x0
1c001648:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00164c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001650:	4c000020 	jirl	$r0,$r1,0

1c001654 <gpio_pin_remap>:
gpio_pin_remap():
1c001654:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001658:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00165c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001660:	0015008c 	move	$r12,$r4
1c001664:	001500ad 	move	$r13,$r5
1c001668:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c00166c:	001501ac 	move	$r12,$r13
1c001670:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c001674:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001678:	0044918c 	srli.w	$r12,$r12,0x4
1c00167c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001680:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001684:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001688:	03403d8c 	andi	$r12,$r12,0xf
1c00168c:	0040858c 	slli.w	$r12,$r12,0x1
1c001690:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001694:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c001698:	0280fc0c 	addi.w	$r12,$r0,63(0x3f)
1c00169c:	6801b58d 	bltu	$r12,$r13,436(0x1b4) # 1c001850 <gpio_pin_remap+0x1fc>
1c0016a0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016a4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0016a8:	580089ac 	beq	$r13,$r12,136(0x88) # 1c001730 <gpio_pin_remap+0xdc>
1c0016ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0016b0:	40002180 	beqz	$r12,32(0x20) # 1c0016d0 <gpio_pin_remap+0x7c>
1c0016b4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016b8:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0016bc:	5800d5ac 	beq	$r13,$r12,212(0xd4) # 1c001790 <gpio_pin_remap+0x13c>
1c0016c0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016c4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0016c8:	580129ac 	beq	$r13,$r12,296(0x128) # 1c0017f0 <gpio_pin_remap+0x19c>
1c0016cc:	50018800 	b	392(0x188) # 1c001854 <gpio_pin_remap+0x200>
1c0016d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016d4:	0380418c 	ori	$r12,$r12,0x10
1c0016d8:	2880018d 	ld.w	$r13,$r12,0
1c0016dc:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0016e0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0016e4:	001731cc 	sll.w	$r12,$r14,$r12
1c0016e8:	0014300c 	nor	$r12,$r0,$r12
1c0016ec:	0015018e 	move	$r14,$r12
1c0016f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016f4:	0380418c 	ori	$r12,$r12,0x10
1c0016f8:	0014b9ad 	and	$r13,$r13,$r14
1c0016fc:	2980018d 	st.w	$r13,$r12,0
1c001700:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001704:	0380418c 	ori	$r12,$r12,0x10
1c001708:	2880018d 	ld.w	$r13,$r12,0
1c00170c:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001710:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001714:	001731cc 	sll.w	$r12,$r14,$r12
1c001718:	0015018e 	move	$r14,$r12
1c00171c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001720:	0380418c 	ori	$r12,$r12,0x10
1c001724:	001539ad 	or	$r13,$r13,$r14
1c001728:	2980018d 	st.w	$r13,$r12,0
1c00172c:	50012800 	b	296(0x128) # 1c001854 <gpio_pin_remap+0x200>
1c001730:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001734:	0380518c 	ori	$r12,$r12,0x14
1c001738:	2880018d 	ld.w	$r13,$r12,0
1c00173c:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c001740:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001744:	001731cc 	sll.w	$r12,$r14,$r12
1c001748:	0014300c 	nor	$r12,$r0,$r12
1c00174c:	0015018e 	move	$r14,$r12
1c001750:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001754:	0380518c 	ori	$r12,$r12,0x14
1c001758:	0014b9ad 	and	$r13,$r13,$r14
1c00175c:	2980018d 	st.w	$r13,$r12,0
1c001760:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001764:	0380518c 	ori	$r12,$r12,0x14
1c001768:	2880018d 	ld.w	$r13,$r12,0
1c00176c:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001770:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001774:	001731cc 	sll.w	$r12,$r14,$r12
1c001778:	0015018e 	move	$r14,$r12
1c00177c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001780:	0380518c 	ori	$r12,$r12,0x14
1c001784:	001539ad 	or	$r13,$r13,$r14
1c001788:	2980018d 	st.w	$r13,$r12,0
1c00178c:	5000c800 	b	200(0xc8) # 1c001854 <gpio_pin_remap+0x200>
1c001790:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001794:	0380618c 	ori	$r12,$r12,0x18
1c001798:	2880018d 	ld.w	$r13,$r12,0
1c00179c:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0017a0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017a4:	001731cc 	sll.w	$r12,$r14,$r12
1c0017a8:	0014300c 	nor	$r12,$r0,$r12
1c0017ac:	0015018e 	move	$r14,$r12
1c0017b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017b4:	0380618c 	ori	$r12,$r12,0x18
1c0017b8:	0014b9ad 	and	$r13,$r13,$r14
1c0017bc:	2980018d 	st.w	$r13,$r12,0
1c0017c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017c4:	0380618c 	ori	$r12,$r12,0x18
1c0017c8:	2880018d 	ld.w	$r13,$r12,0
1c0017cc:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0017d0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017d4:	001731cc 	sll.w	$r12,$r14,$r12
1c0017d8:	0015018e 	move	$r14,$r12
1c0017dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017e0:	0380618c 	ori	$r12,$r12,0x18
1c0017e4:	001539ad 	or	$r13,$r13,$r14
1c0017e8:	2980018d 	st.w	$r13,$r12,0
1c0017ec:	50006800 	b	104(0x68) # 1c001854 <gpio_pin_remap+0x200>
1c0017f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017f4:	0380718c 	ori	$r12,$r12,0x1c
1c0017f8:	2880018d 	ld.w	$r13,$r12,0
1c0017fc:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c001800:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001804:	001731cc 	sll.w	$r12,$r14,$r12
1c001808:	0014300c 	nor	$r12,$r0,$r12
1c00180c:	0015018e 	move	$r14,$r12
1c001810:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001814:	0380718c 	ori	$r12,$r12,0x1c
1c001818:	0014b9ad 	and	$r13,$r13,$r14
1c00181c:	2980018d 	st.w	$r13,$r12,0
1c001820:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001824:	0380718c 	ori	$r12,$r12,0x1c
1c001828:	2880018d 	ld.w	$r13,$r12,0
1c00182c:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001830:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001834:	001731cc 	sll.w	$r12,$r14,$r12
1c001838:	0015018e 	move	$r14,$r12
1c00183c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001840:	0380718c 	ori	$r12,$r12,0x1c
1c001844:	001539ad 	or	$r13,$r13,$r14
1c001848:	2980018d 	st.w	$r13,$r12,0
1c00184c:	50000800 	b	8(0x8) # 1c001854 <gpio_pin_remap+0x200>
1c001850:	03400000 	andi	$r0,$r0,0x0
1c001854:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001858:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00185c:	4c000020 	jirl	$r0,$r1,0

1c001860 <myputchar>:
myputchar():
1c001860:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001864:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001868:	29806076 	st.w	$r22,$r3,24(0x18)
1c00186c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001870:	0015008c 	move	$r12,$r4
1c001874:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001878:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00187c:	00150185 	move	$r5,$r12
1c001880:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c001884:	540fe400 	bl	4068(0xfe4) # 1c002868 <UART_SendData>
1c001888:	03400000 	andi	$r0,$r0,0x0
1c00188c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001890:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001894:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001898:	4c000020 	jirl	$r0,$r1,0

1c00189c <printbase>:
printbase():
1c00189c:	02be4063 	addi.w	$r3,$r3,-112(0xf90)
1c0018a0:	2981b061 	st.w	$r1,$r3,108(0x6c)
1c0018a4:	2981a076 	st.w	$r22,$r3,104(0x68)
1c0018a8:	0281c076 	addi.w	$r22,$r3,112(0x70)
1c0018ac:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c0018b0:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c0018b4:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c0018b8:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c0018bc:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c0018c0:	40002580 	beqz	$r12,36(0x24) # 1c0018e4 <printbase+0x48>
1c0018c4:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c0018c8:	64001d80 	bge	$r12,$r0,28(0x1c) # 1c0018e4 <printbase+0x48>
1c0018cc:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c0018d0:	0011300c 	sub.w	$r12,$r0,$r12
1c0018d4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0018d8:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c0018dc:	57ff87ff 	bl	-124(0xfffff84) # 1c001860 <myputchar>
1c0018e0:	50000c00 	b	12(0xc) # 1c0018ec <printbase+0x50>
1c0018e4:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c0018e8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0018ec:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0018f0:	50005000 	b	80(0x50) # 1c001940 <printbase+0xa4>
1c0018f4:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c0018f8:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0018fc:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001900:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001908 <printbase+0x6c>
1c001904:	002a0007 	break	0x7
1c001908:	00005dcc 	ext.w.b	$r12,$r14
1c00190c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001910:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c001914:	001035cd 	add.w	$r13,$r14,$r13
1c001918:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c00191c:	28be52cd 	ld.w	$r13,$r22,-108(0xf94)
1c001920:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c001924:	002135cc 	div.wu	$r12,$r14,$r13
1c001928:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001930 <printbase+0x94>
1c00192c:	002a0007 	break	0x7
1c001930:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001934:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001938:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00193c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001940:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001944:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c0018f4 <printbase+0x58>
1c001948:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c00194c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001950:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c001954:	001231ad 	slt	$r13,$r13,$r12
1c001958:	0013b5ce 	masknez	$r14,$r14,$r13
1c00195c:	0013358c 	maskeqz	$r12,$r12,$r13
1c001960:	001531cc 	or	$r12,$r14,$r12
1c001964:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001968:	50007400 	b	116(0x74) # 1c0019dc <printbase+0x140>
1c00196c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c001970:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001974:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c001990 <printbase+0xf4>
1c001978:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00197c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001980:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c001984:	001031ac 	add.w	$r12,$r13,$r12
1c001988:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c00198c:	50000800 	b	8(0x8) # 1c001994 <printbase+0xf8>
1c001990:	0015000c 	move	$r12,$r0
1c001994:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001998:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c00199c:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c0019a0:	6000198d 	blt	$r12,$r13,24(0x18) # 1c0019b8 <printbase+0x11c>
1c0019a4:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0019a8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0019ac:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c0019b0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0019b4:	50001400 	b	20(0x14) # 1c0019c8 <printbase+0x12c>
1c0019b8:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0019bc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0019c0:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c0019c4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0019c8:	00150184 	move	$r4,$r12
1c0019cc:	57fe97ff 	bl	-364(0xffffe94) # 1c001860 <myputchar>
1c0019d0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0019d4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0019d8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0019dc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0019e0:	63ff8c0c 	blt	$r0,$r12,-116(0x3ff8c) # 1c00196c <printbase+0xd0>
1c0019e4:	0015000c 	move	$r12,$r0
1c0019e8:	00150184 	move	$r4,$r12
1c0019ec:	2881b061 	ld.w	$r1,$r3,108(0x6c)
1c0019f0:	2881a076 	ld.w	$r22,$r3,104(0x68)
1c0019f4:	0281c063 	addi.w	$r3,$r3,112(0x70)
1c0019f8:	4c000020 	jirl	$r0,$r1,0

1c0019fc <puts>:
puts():
1c0019fc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001a00:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001a04:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001a08:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001a0c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001a10:	50003000 	b	48(0x30) # 1c001a40 <puts+0x44>
1c001a14:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c001a18:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001a1c:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001a28 <puts+0x2c>
1c001a20:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001a24:	57fe3fff 	bl	-452(0xffffe3c) # 1c001860 <myputchar>
1c001a28:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001a2c:	00150184 	move	$r4,$r12
1c001a30:	57fe33ff 	bl	-464(0xffffe30) # 1c001860 <myputchar>
1c001a34:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001a38:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001a3c:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001a40:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001a44:	2a00018c 	ld.bu	$r12,$r12,0
1c001a48:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001a4c:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c001a50:	47ffc59f 	bnez	$r12,-60(0x7fffc4) # 1c001a14 <puts+0x18>
1c001a54:	0015000c 	move	$r12,$r0
1c001a58:	00150184 	move	$r4,$r12
1c001a5c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001a60:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001a64:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001a68:	4c000020 	jirl	$r0,$r1,0

1c001a6c <myprintf>:
myprintf():
1c001a6c:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c001a70:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c001a74:	2980e076 	st.w	$r22,$r3,56(0x38)
1c001a78:	02810076 	addi.w	$r22,$r3,64(0x40)
1c001a7c:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c001a80:	298012c5 	st.w	$r5,$r22,4(0x4)
1c001a84:	298022c6 	st.w	$r6,$r22,8(0x8)
1c001a88:	298032c7 	st.w	$r7,$r22,12(0xc)
1c001a8c:	298042c8 	st.w	$r8,$r22,16(0x10)
1c001a90:	298052c9 	st.w	$r9,$r22,20(0x14)
1c001a94:	298062ca 	st.w	$r10,$r22,24(0x18)
1c001a98:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c001a9c:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c001aa0:	02bf918c 	addi.w	$r12,$r12,-28(0xfe4)
1c001aa4:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001aa8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001aac:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001ab0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001ab4:	50033000 	b	816(0x330) # 1c001de4 <myprintf+0x378>
1c001ab8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001abc:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001ac0:	001031ac 	add.w	$r12,$r13,$r12
1c001ac4:	2a00018c 	ld.bu	$r12,$r12,0
1c001ac8:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c001acc:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001ad0:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c001ad4:	5c02e5ac 	bne	$r13,$r12,740(0x2e4) # 1c001db8 <myprintf+0x34c>
1c001ad8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001adc:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001ae0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ae4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ae8:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001aec:	001031ac 	add.w	$r12,$r13,$r12
1c001af0:	2800018c 	ld.b	$r12,$r12,0
1c001af4:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c001af8:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c001afc:	6802adac 	bltu	$r13,$r12,684(0x2ac) # 1c001da8 <myprintf+0x33c>
1c001b00:	0040898d 	slli.w	$r13,$r12,0x2
1c001b04:	1c0000ac 	pcaddu12i	$r12,5(0x5)
1c001b08:	02a7418c 	addi.w	$r12,$r12,-1584(0x9d0)
1c001b0c:	001031ac 	add.w	$r12,$r13,$r12
1c001b10:	2880018c 	ld.w	$r12,$r12,0
1c001b14:	4c000180 	jirl	$r0,$r12,0
1c001b18:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b1c:	2880018c 	ld.w	$r12,$r12,0
1c001b20:	00150184 	move	$r4,$r12
1c001b24:	57fedbff 	bl	-296(0xffffed8) # 1c0019fc <puts>
1c001b28:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b2c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001b30:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001b38:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001b3c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001b40:	50029800 	b	664(0x298) # 1c001dd8 <myprintf+0x36c>
1c001b44:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b48:	2880018c 	ld.w	$r12,$r12,0
1c001b4c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001b50:	00150184 	move	$r4,$r12
1c001b54:	57fd0fff 	bl	-756(0xffffd0c) # 1c001860 <myputchar>
1c001b58:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b5c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001b60:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b64:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001b68:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001b6c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001b70:	50026800 	b	616(0x268) # 1c001dd8 <myprintf+0x36c>
1c001b74:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b78:	2880018c 	ld.w	$r12,$r12,0
1c001b7c:	00150007 	move	$r7,$r0
1c001b80:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001b84:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001b88:	00150184 	move	$r4,$r12
1c001b8c:	57fd13ff 	bl	-752(0xffffd10) # 1c00189c <printbase>
1c001b90:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b94:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001b98:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b9c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ba0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ba4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ba8:	50023000 	b	560(0x230) # 1c001dd8 <myprintf+0x36c>
1c001bac:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001bb0:	2880018c 	ld.w	$r12,$r12,0
1c001bb4:	02800407 	addi.w	$r7,$r0,1(0x1)
1c001bb8:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001bbc:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001bc0:	00150184 	move	$r4,$r12
1c001bc4:	57fcdbff 	bl	-808(0xffffcd8) # 1c00189c <printbase>
1c001bc8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001bcc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001bd0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001bd4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001bd8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001bdc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001be0:	5001f800 	b	504(0x1f8) # 1c001dd8 <myprintf+0x36c>
1c001be4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001be8:	2880018c 	ld.w	$r12,$r12,0
1c001bec:	00150007 	move	$r7,$r0
1c001bf0:	02802006 	addi.w	$r6,$r0,8(0x8)
1c001bf4:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001bf8:	00150184 	move	$r4,$r12
1c001bfc:	57fca3ff 	bl	-864(0xffffca0) # 1c00189c <printbase>
1c001c00:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c04:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001c08:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001c0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c10:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c14:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001c18:	5001c000 	b	448(0x1c0) # 1c001dd8 <myprintf+0x36c>
1c001c1c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c20:	2880018c 	ld.w	$r12,$r12,0
1c001c24:	00150007 	move	$r7,$r0
1c001c28:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001c2c:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001c30:	00150184 	move	$r4,$r12
1c001c34:	57fc6bff 	bl	-920(0xffffc68) # 1c00189c <printbase>
1c001c38:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c3c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001c40:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001c44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c48:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c4c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001c50:	50018800 	b	392(0x188) # 1c001dd8 <myprintf+0x36c>
1c001c54:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c58:	2880018c 	ld.w	$r12,$r12,0
1c001c5c:	00150007 	move	$r7,$r0
1c001c60:	02804006 	addi.w	$r6,$r0,16(0x10)
1c001c64:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001c68:	00150184 	move	$r4,$r12
1c001c6c:	57fc33ff 	bl	-976(0xffffc30) # 1c00189c <printbase>
1c001c70:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c74:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001c78:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001c7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c80:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c84:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001c88:	50015000 	b	336(0x150) # 1c001dd8 <myprintf+0x36c>
1c001c8c:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001c90:	57fbd3ff 	bl	-1072(0xffffbd0) # 1c001860 <myputchar>
1c001c94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c98:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c9c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ca0:	50013800 	b	312(0x138) # 1c001dd8 <myprintf+0x36c>
1c001ca4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ca8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001cac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001cb0:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001cb4:	50003c00 	b	60(0x3c) # 1c001cf0 <myprintf+0x284>
1c001cb8:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001cbc:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001cc0:	001c31ad 	mul.w	$r13,$r13,$r12
1c001cc4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001cc8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ccc:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001cd0:	001031cc 	add.w	$r12,$r14,$r12
1c001cd4:	2800018c 	ld.b	$r12,$r12,0
1c001cd8:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001cdc:	001031ac 	add.w	$r12,$r13,$r12
1c001ce0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001ce4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ce8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001cec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001cf0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001cf4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001cf8:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001cfc:	001031ac 	add.w	$r12,$r13,$r12
1c001d00:	2800018d 	ld.b	$r13,$r12,0
1c001d04:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001d08:	67fdd98d 	bge	$r12,$r13,-552(0x3fdd8) # 1c001ae0 <myprintf+0x74>
1c001d0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d10:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d14:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001d18:	001031ac 	add.w	$r12,$r13,$r12
1c001d1c:	2800018d 	ld.b	$r13,$r12,0
1c001d20:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001d24:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001cb8 <myprintf+0x24c>
1c001d28:	53fdbbff 	b	-584(0xffffdb8) # 1c001ae0 <myprintf+0x74>
1c001d2c:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001d30:	50003c00 	b	60(0x3c) # 1c001d6c <myprintf+0x300>
1c001d34:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001d38:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001d3c:	001c31ad 	mul.w	$r13,$r13,$r12
1c001d40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d44:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d48:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001d4c:	001031cc 	add.w	$r12,$r14,$r12
1c001d50:	2800018c 	ld.b	$r12,$r12,0
1c001d54:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001d58:	001031ac 	add.w	$r12,$r13,$r12
1c001d5c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001d60:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d64:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d68:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d70:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d74:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001d78:	001031ac 	add.w	$r12,$r13,$r12
1c001d7c:	2800018d 	ld.b	$r13,$r12,0
1c001d80:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001d84:	67fd5d8d 	bge	$r12,$r13,-676(0x3fd5c) # 1c001ae0 <myprintf+0x74>
1c001d88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d8c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d90:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001d94:	001031ac 	add.w	$r12,$r13,$r12
1c001d98:	2800018d 	ld.b	$r13,$r12,0
1c001d9c:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001da0:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001d34 <myprintf+0x2c8>
1c001da4:	53fd3fff 	b	-708(0xffffd3c) # 1c001ae0 <myprintf+0x74>
1c001da8:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001dac:	57fab7ff 	bl	-1356(0xffffab4) # 1c001860 <myputchar>
1c001db0:	03400000 	andi	$r0,$r0,0x0
1c001db4:	50002400 	b	36(0x24) # 1c001dd8 <myprintf+0x36c>
1c001db8:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001dbc:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001dc0:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001dcc <myprintf+0x360>
1c001dc4:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001dc8:	57fa9bff 	bl	-1384(0xffffa98) # 1c001860 <myputchar>
1c001dcc:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c001dd0:	00150184 	move	$r4,$r12
1c001dd4:	57fa8fff 	bl	-1396(0xffffa8c) # 1c001860 <myputchar>
1c001dd8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ddc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001de0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001de4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001de8:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001dec:	001031ac 	add.w	$r12,$r13,$r12
1c001df0:	2800018c 	ld.b	$r12,$r12,0
1c001df4:	47fcc59f 	bnez	$r12,-828(0x7ffcc4) # 1c001ab8 <myprintf+0x4c>
1c001df8:	0015000c 	move	$r12,$r0
1c001dfc:	00150184 	move	$r4,$r12
1c001e00:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c001e04:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c001e08:	02818063 	addi.w	$r3,$r3,96(0x60)
1c001e0c:	4c000020 	jirl	$r0,$r1,0

1c001e10 <vsputs>:
vsputs():
1c001e10:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001e14:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001e18:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001e1c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001e20:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001e24:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001e28:	28bf62c4 	ld.w	$r4,$r22,-40(0xfd8)
1c001e2c:	54181c00 	bl	6172(0x181c) # 1c003648 <strlen>
1c001e30:	0015008c 	move	$r12,$r4
1c001e34:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e38:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c001e3c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c001e40:	5417ac00 	bl	6060(0x17ac) # 1c0035ec <strcpy>
1c001e44:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001e48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e4c:	001031ac 	add.w	$r12,$r13,$r12
1c001e50:	00150184 	move	$r4,$r12
1c001e54:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001e58:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001e5c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001e60:	4c000020 	jirl	$r0,$r1,0

1c001e64 <vsputchar>:
vsputchar():
1c001e64:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001e68:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001e6c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001e70:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001e74:	001500ac 	move	$r12,$r5
1c001e78:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c001e7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e80:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c001e84:	2900018d 	st.b	$r13,$r12,0
1c001e88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e8c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e90:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e98:	00150184 	move	$r4,$r12
1c001e9c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001ea0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001ea4:	4c000020 	jirl	$r0,$r1,0

1c001ea8 <vsprintbase>:
vsprintbase():
1c001ea8:	02be0063 	addi.w	$r3,$r3,-128(0xf80)
1c001eac:	2981f061 	st.w	$r1,$r3,124(0x7c)
1c001eb0:	2981e076 	st.w	$r22,$r3,120(0x78)
1c001eb4:	02820076 	addi.w	$r22,$r3,128(0x80)
1c001eb8:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c001ebc:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c001ec0:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c001ec4:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c001ec8:	29be32c8 	st.w	$r8,$r22,-116(0xf8c)
1c001ecc:	28be32cc 	ld.w	$r12,$r22,-116(0xf8c)
1c001ed0:	40002d80 	beqz	$r12,44(0x2c) # 1c001efc <vsprintbase+0x54>
1c001ed4:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001ed8:	64002580 	bge	$r12,$r0,36(0x24) # 1c001efc <vsprintbase+0x54>
1c001edc:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001ee0:	0011300c 	sub.w	$r12,$r0,$r12
1c001ee4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001ee8:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c001eec:	28be72c4 	ld.w	$r4,$r22,-100(0xf9c)
1c001ef0:	57ff77ff 	bl	-140(0xfffff74) # 1c001e64 <vsputchar>
1c001ef4:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c001ef8:	50000c00 	b	12(0xc) # 1c001f04 <vsprintbase+0x5c>
1c001efc:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001f00:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001f04:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001f08:	50005000 	b	80(0x50) # 1c001f58 <vsprintbase+0xb0>
1c001f0c:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c001f10:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001f14:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001f18:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001f20 <vsprintbase+0x78>
1c001f1c:	002a0007 	break	0x7
1c001f20:	00005dcc 	ext.w.b	$r12,$r14
1c001f24:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001f28:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c001f2c:	001035cd 	add.w	$r13,$r14,$r13
1c001f30:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c001f34:	28be42cd 	ld.w	$r13,$r22,-112(0xf90)
1c001f38:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c001f3c:	002135cc 	div.wu	$r12,$r14,$r13
1c001f40:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001f48 <vsprintbase+0xa0>
1c001f44:	002a0007 	break	0x7
1c001f48:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001f4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f50:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f54:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f58:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001f5c:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c001f0c <vsprintbase+0x64>
1c001f60:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c001f64:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001f68:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c001f6c:	001231ad 	slt	$r13,$r13,$r12
1c001f70:	0013b5ce 	masknez	$r14,$r14,$r13
1c001f74:	0013358c 	maskeqz	$r12,$r12,$r13
1c001f78:	001531cc 	or	$r12,$r14,$r12
1c001f7c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001f80:	50008400 	b	132(0x84) # 1c002004 <vsprintbase+0x15c>
1c001f84:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c001f88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f8c:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c001fa8 <vsprintbase+0x100>
1c001f90:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001f94:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001f98:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c001f9c:	001031ac 	add.w	$r12,$r13,$r12
1c001fa0:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c001fa4:	50000800 	b	8(0x8) # 1c001fac <vsprintbase+0x104>
1c001fa8:	0015000c 	move	$r12,$r0
1c001fac:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001fb0:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c001fb4:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c001fb8:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c001fd4 <vsprintbase+0x12c>
1c001fbc:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001fc0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001fc4:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c001fc8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001fcc:	00005d8c 	ext.w.b	$r12,$r12
1c001fd0:	50001800 	b	24(0x18) # 1c001fe8 <vsprintbase+0x140>
1c001fd4:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001fd8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001fdc:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c001fe0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001fe4:	00005d8c 	ext.w.b	$r12,$r12
1c001fe8:	00150185 	move	$r5,$r12
1c001fec:	28be72c4 	ld.w	$r4,$r22,-100(0xf9c)
1c001ff0:	57fe77ff 	bl	-396(0xffffe74) # 1c001e64 <vsputchar>
1c001ff4:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c001ff8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001ffc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002000:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002004:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002008:	63ff7c0c 	blt	$r0,$r12,-132(0x3ff7c) # 1c001f84 <vsprintbase+0xdc>
1c00200c:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c002010:	00150184 	move	$r4,$r12
1c002014:	2881f061 	ld.w	$r1,$r3,124(0x7c)
1c002018:	2881e076 	ld.w	$r22,$r3,120(0x78)
1c00201c:	02820063 	addi.w	$r3,$r3,128(0x80)
1c002020:	4c000020 	jirl	$r0,$r1,0

1c002024 <vsprintf>:
vsprintf():
1c002024:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002028:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00202c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002030:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002034:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002038:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00203c:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c002040:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002044:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002048:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00204c:	50036c00 	b	876(0x36c) # 1c0023b8 <vsprintf+0x394>
1c002050:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002054:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002058:	001031ac 	add.w	$r12,$r13,$r12
1c00205c:	2a00018c 	ld.bu	$r12,$r12,0
1c002060:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c002064:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c002068:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c00206c:	5c0311ac 	bne	$r13,$r12,784(0x310) # 1c00237c <vsprintf+0x358>
1c002070:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002074:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002078:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00207c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002080:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002084:	001031ac 	add.w	$r12,$r13,$r12
1c002088:	2800018c 	ld.b	$r12,$r12,0
1c00208c:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c002090:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c002094:	6802d1ac 	bltu	$r13,$r12,720(0x2d0) # 1c002364 <vsprintf+0x340>
1c002098:	0040898d 	slli.w	$r13,$r12,0x2
1c00209c:	1c00008c 	pcaddu12i	$r12,4(0x4)
1c0020a0:	0296218c 	addi.w	$r12,$r12,1416(0x588)
1c0020a4:	001031ac 	add.w	$r12,$r13,$r12
1c0020a8:	2880018c 	ld.w	$r12,$r12,0
1c0020ac:	4c000180 	jirl	$r0,$r12,0
1c0020b0:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0020b4:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c0020b8:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0020bc:	2880018c 	ld.w	$r12,$r12,0
1c0020c0:	00150185 	move	$r5,$r12
1c0020c4:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0020c8:	57fd4bff 	bl	-696(0xffffd48) # 1c001e10 <vsputs>
1c0020cc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0020d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020d4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0020d8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0020dc:	5002d000 	b	720(0x2d0) # 1c0023ac <vsprintf+0x388>
1c0020e0:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0020e4:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c0020e8:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0020ec:	2880018c 	ld.w	$r12,$r12,0
1c0020f0:	00005d8c 	ext.w.b	$r12,$r12
1c0020f4:	00150185 	move	$r5,$r12
1c0020f8:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0020fc:	57fd6bff 	bl	-664(0xffffd68) # 1c001e64 <vsputchar>
1c002100:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002104:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002108:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00210c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002110:	50029c00 	b	668(0x29c) # 1c0023ac <vsprintf+0x388>
1c002114:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002118:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c00211c:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002120:	2880018c 	ld.w	$r12,$r12,0
1c002124:	00150008 	move	$r8,$r0
1c002128:	02802807 	addi.w	$r7,$r0,10(0xa)
1c00212c:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c002130:	00150185 	move	$r5,$r12
1c002134:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002138:	57fd73ff 	bl	-656(0xffffd70) # 1c001ea8 <vsprintbase>
1c00213c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002140:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002144:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002148:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00214c:	50026000 	b	608(0x260) # 1c0023ac <vsprintf+0x388>
1c002150:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002154:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002158:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c00215c:	2880018c 	ld.w	$r12,$r12,0
1c002160:	02800408 	addi.w	$r8,$r0,1(0x1)
1c002164:	02802807 	addi.w	$r7,$r0,10(0xa)
1c002168:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c00216c:	00150185 	move	$r5,$r12
1c002170:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002174:	57fd37ff 	bl	-716(0xffffd34) # 1c001ea8 <vsprintbase>
1c002178:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00217c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002180:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002184:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002188:	50022400 	b	548(0x224) # 1c0023ac <vsprintf+0x388>
1c00218c:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002190:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002194:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002198:	2880018c 	ld.w	$r12,$r12,0
1c00219c:	00150008 	move	$r8,$r0
1c0021a0:	02802007 	addi.w	$r7,$r0,8(0x8)
1c0021a4:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c0021a8:	00150185 	move	$r5,$r12
1c0021ac:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0021b0:	57fcfbff 	bl	-776(0xffffcf8) # 1c001ea8 <vsprintbase>
1c0021b4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0021b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021bc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0021c0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0021c4:	5001e800 	b	488(0x1e8) # 1c0023ac <vsprintf+0x388>
1c0021c8:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0021cc:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c0021d0:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0021d4:	2880018c 	ld.w	$r12,$r12,0
1c0021d8:	00150008 	move	$r8,$r0
1c0021dc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0021e0:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c0021e4:	00150185 	move	$r5,$r12
1c0021e8:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0021ec:	57fcbfff 	bl	-836(0xffffcbc) # 1c001ea8 <vsprintbase>
1c0021f0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0021f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021f8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0021fc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002200:	5001ac00 	b	428(0x1ac) # 1c0023ac <vsprintf+0x388>
1c002204:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002208:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c00220c:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002210:	2880018c 	ld.w	$r12,$r12,0
1c002214:	00150008 	move	$r8,$r0
1c002218:	02804007 	addi.w	$r7,$r0,16(0x10)
1c00221c:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c002220:	00150185 	move	$r5,$r12
1c002224:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002228:	57fc83ff 	bl	-896(0xffffc80) # 1c001ea8 <vsprintbase>
1c00222c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002230:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002234:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002238:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00223c:	50017000 	b	368(0x170) # 1c0023ac <vsprintf+0x388>
1c002240:	02809405 	addi.w	$r5,$r0,37(0x25)
1c002244:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002248:	57fc1fff 	bl	-996(0xffffc1c) # 1c001e64 <vsputchar>
1c00224c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002250:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002254:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002258:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00225c:	50015000 	b	336(0x150) # 1c0023ac <vsprintf+0x388>
1c002260:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002264:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002268:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00226c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002270:	50003c00 	b	60(0x3c) # 1c0022ac <vsprintf+0x288>
1c002274:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c002278:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c00227c:	001c31ad 	mul.w	$r13,$r13,$r12
1c002280:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002284:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002288:	28bf62ce 	ld.w	$r14,$r22,-40(0xfd8)
1c00228c:	001031cc 	add.w	$r12,$r14,$r12
1c002290:	2800018c 	ld.b	$r12,$r12,0
1c002294:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c002298:	001031ac 	add.w	$r12,$r13,$r12
1c00229c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0022a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022a4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022a8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022b0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022b4:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0022b8:	001031ac 	add.w	$r12,$r13,$r12
1c0022bc:	2800018d 	ld.b	$r13,$r12,0
1c0022c0:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c0022c4:	67fdb58d 	bge	$r12,$r13,-588(0x3fdb4) # 1c002078 <vsprintf+0x54>
1c0022c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022cc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022d0:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0022d4:	001031ac 	add.w	$r12,$r13,$r12
1c0022d8:	2800018d 	ld.b	$r13,$r12,0
1c0022dc:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c0022e0:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c002274 <vsprintf+0x250>
1c0022e4:	53fd97ff 	b	-620(0xffffd94) # 1c002078 <vsprintf+0x54>
1c0022e8:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0022ec:	50003c00 	b	60(0x3c) # 1c002328 <vsprintf+0x304>
1c0022f0:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0022f4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0022f8:	001c31ad 	mul.w	$r13,$r13,$r12
1c0022fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002300:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002304:	28bf62ce 	ld.w	$r14,$r22,-40(0xfd8)
1c002308:	001031cc 	add.w	$r12,$r14,$r12
1c00230c:	2800018c 	ld.b	$r12,$r12,0
1c002310:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c002314:	001031ac 	add.w	$r12,$r13,$r12
1c002318:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00231c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002320:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002324:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002328:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00232c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002330:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002334:	001031ac 	add.w	$r12,$r13,$r12
1c002338:	2800018d 	ld.b	$r13,$r12,0
1c00233c:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c002340:	67fd398d 	bge	$r12,$r13,-712(0x3fd38) # 1c002078 <vsprintf+0x54>
1c002344:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002348:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00234c:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002350:	001031ac 	add.w	$r12,$r13,$r12
1c002354:	2800018d 	ld.b	$r13,$r12,0
1c002358:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c00235c:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c0022f0 <vsprintf+0x2cc>
1c002360:	53fd1bff 	b	-744(0xffffd18) # 1c002078 <vsprintf+0x54>
1c002364:	02809405 	addi.w	$r5,$r0,37(0x25)
1c002368:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00236c:	57fafbff 	bl	-1288(0xffffaf8) # 1c001e64 <vsputchar>
1c002370:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002374:	03400000 	andi	$r0,$r0,0x0
1c002378:	50003400 	b	52(0x34) # 1c0023ac <vsprintf+0x388>
1c00237c:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c002380:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c002384:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c002398 <vsprintf+0x374>
1c002388:	02803405 	addi.w	$r5,$r0,13(0xd)
1c00238c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002390:	57fad7ff 	bl	-1324(0xffffad4) # 1c001e64 <vsputchar>
1c002394:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002398:	283f8ecc 	ld.b	$r12,$r22,-29(0xfe3)
1c00239c:	00150185 	move	$r5,$r12
1c0023a0:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0023a4:	57fac3ff 	bl	-1344(0xffffac0) # 1c001e64 <vsputchar>
1c0023a8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0023ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023b0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023b4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0023b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023bc:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0023c0:	001031ac 	add.w	$r12,$r13,$r12
1c0023c4:	2800018c 	ld.b	$r12,$r12,0
1c0023c8:	47fc899f 	bnez	$r12,-888(0x7ffc88) # 1c002050 <vsprintf+0x2c>
1c0023cc:	00150005 	move	$r5,$r0
1c0023d0:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0023d4:	57fa93ff 	bl	-1392(0xffffa90) # 1c001e64 <vsputchar>
1c0023d8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0023dc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0023e0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0023e4:	001131ac 	sub.w	$r12,$r13,$r12
1c0023e8:	00150184 	move	$r4,$r12
1c0023ec:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0023f0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0023f4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0023f8:	4c000020 	jirl	$r0,$r1,0

1c0023fc <sprintf>:
sprintf():
1c0023fc:	02bec063 	addi.w	$r3,$r3,-80(0xfb0)
1c002400:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002404:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002408:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00240c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002410:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c002414:	298022c6 	st.w	$r6,$r22,8(0x8)
1c002418:	298032c7 	st.w	$r7,$r22,12(0xc)
1c00241c:	298042c8 	st.w	$r8,$r22,16(0x10)
1c002420:	298052c9 	st.w	$r9,$r22,20(0x14)
1c002424:	298062ca 	st.w	$r10,$r22,24(0x18)
1c002428:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c00242c:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c002430:	02bfa18c 	addi.w	$r12,$r12,-24(0xfe8)
1c002434:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002438:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00243c:	00150186 	move	$r6,$r12
1c002440:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c002444:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002448:	57fbdfff 	bl	-1060(0xffffbdc) # 1c002024 <vsprintf>
1c00244c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002450:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002454:	00150184 	move	$r4,$r12
1c002458:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00245c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002460:	02814063 	addi.w	$r3,$r3,80(0x50)
1c002464:	4c000020 	jirl	$r0,$r1,0

1c002468 <UART_Init>:
UART_Init():
1c002468:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00246c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002470:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002474:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002478:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00247c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002480:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002484:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002488:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c00248c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002490:	03403d8c 	andi	$r12,$r12,0xf
1c002494:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002498:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00249c:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0024a0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0024a4:	0044918c 	srli.w	$r12,$r12,0x4
1c0024a8:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c0024ac:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0024b0:	40000d80 	beqz	$r12,12(0xc) # 1c0024bc <UART_Init+0x54>
1c0024b4:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c0024b8:	44001980 	bnez	$r12,24(0x18) # 1c0024d0 <UART_Init+0x68>
1c0024bc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0024c0:	0280e00d 	addi.w	$r13,$r0,56(0x38)
1c0024c4:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0024c8:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c0024cc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0024d0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0024d4:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c0024d8:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0024f0 <UART_Init+0x88>
1c0024dc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0024e0:	02808c0d 	addi.w	$r13,$r0,35(0x23)
1c0024e4:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0024e8:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0024ec:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0024f0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0024f4:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c0024f8:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0024fc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002500:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002504:	580011ac 	beq	$r13,$r12,16(0x10) # 1c002514 <UART_Init+0xac>
1c002508:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00250c:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c002510:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c002570 <UART_Init+0x108>
1c002514:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002518:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c00251c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002520:	2880018c 	ld.w	$r12,$r12,0
1c002524:	002131ae 	div.wu	$r14,$r13,$r12
1c002528:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002530 <UART_Init+0xc8>
1c00252c:	002a0007 	break	0x7
1c002530:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002534:	002135cc 	div.wu	$r12,$r14,$r13
1c002538:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002540 <UART_Init+0xd8>
1c00253c:	002a0007 	break	0x7
1c002540:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002544:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002548:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c00254c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002550:	2880018e 	ld.w	$r14,$r12,0
1c002554:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002558:	001c31ce 	mul.w	$r14,$r14,$r12
1c00255c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002560:	001c31cc 	mul.w	$r12,$r14,$r12
1c002564:	001131ac 	sub.w	$r12,$r13,$r12
1c002568:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00256c:	50005400 	b	84(0x54) # 1c0025c0 <UART_Init+0x158>
1c002570:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002574:	2880018c 	ld.w	$r12,$r12,0
1c002578:	1400010d 	lu12i.w	$r13,8(0x8)
1c00257c:	002131ae 	div.wu	$r14,$r13,$r12
1c002580:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002588 <UART_Init+0x120>
1c002584:	002a0007 	break	0x7
1c002588:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00258c:	002135cc 	div.wu	$r12,$r14,$r13
1c002590:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002598 <UART_Init+0x130>
1c002594:	002a0007 	break	0x7
1c002598:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00259c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0025a0:	2880018d 	ld.w	$r13,$r12,0
1c0025a4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0025a8:	001c31ad 	mul.w	$r13,$r13,$r12
1c0025ac:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0025b0:	001c31ac 	mul.w	$r12,$r13,$r12
1c0025b4:	1400010d 	lu12i.w	$r13,8(0x8)
1c0025b8:	001131ac 	sub.w	$r12,$r13,$r12
1c0025bc:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0025c0:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0025c4:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c0025c8:	001c31ad 	mul.w	$r13,$r13,$r12
1c0025cc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0025d0:	2880018c 	ld.w	$r12,$r12,0
1c0025d4:	002131ae 	div.wu	$r14,$r13,$r12
1c0025d8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0025e0 <UART_Init+0x178>
1c0025dc:	002a0007 	break	0x7
1c0025e0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0025e4:	002135cc 	div.wu	$r12,$r14,$r13
1c0025e8:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0025f0 <UART_Init+0x188>
1c0025ec:	002a0007 	break	0x7
1c0025f0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0025f4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0025f8:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0025fc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002600:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c002604:	001531ac 	or	$r12,$r13,$r12
1c002608:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00260c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002610:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002614:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002618:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00261c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002620:	2900018d 	st.b	$r13,$r12,0
1c002624:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002628:	0044a18c 	srli.w	$r12,$r12,0x8
1c00262c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002630:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002634:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002638:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00263c:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002640:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002644:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002648:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00264c:	2900098d 	st.b	$r13,$r12,2(0x2)
1c002650:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002654:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002658:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00265c:	0341fd8c 	andi	$r12,$r12,0x7f
1c002660:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002664:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002668:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00266c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002670:	29000580 	st.b	$r0,$r12,1(0x1)
1c002674:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002678:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c00267c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002680:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002684:	2a00298c 	ld.bu	$r12,$r12,10(0xa)
1c002688:	001531ac 	or	$r12,$r13,$r12
1c00268c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002690:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002694:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002698:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00269c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0026a0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026a4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026a8:	2a00358c 	ld.bu	$r12,$r12,13(0xd)
1c0026ac:	001531ac 	or	$r12,$r13,$r12
1c0026b0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026b4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026b8:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0026bc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026c0:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0026c4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026c8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026cc:	2a00398c 	ld.bu	$r12,$r12,14(0xe)
1c0026d0:	001531ac 	or	$r12,$r13,$r12
1c0026d4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026d8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026dc:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0026e0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026e4:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0026e8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026ec:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026f0:	2a002d8c 	ld.bu	$r12,$r12,11(0xb)
1c0026f4:	001531ac 	or	$r12,$r13,$r12
1c0026f8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026fc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002700:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002704:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002708:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c00270c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002710:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002714:	2a003d8c 	ld.bu	$r12,$r12,15(0xf)
1c002718:	001531ac 	or	$r12,$r13,$r12
1c00271c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002720:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002724:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002728:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00272c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002730:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002734:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002738:	2a00318c 	ld.bu	$r12,$r12,12(0xc)
1c00273c:	001531ac 	or	$r12,$r13,$r12
1c002740:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002744:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002748:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00274c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002750:	2a00018c 	ld.bu	$r12,$r12,0
1c002754:	03400000 	andi	$r0,$r0,0x0
1c002758:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00275c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002760:	4c000020 	jirl	$r0,$r1,0

1c002764 <UART_StructInit>:
UART_StructInit():
1c002764:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002768:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00276c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002770:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002774:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002778:	1400038d 	lu12i.w	$r13,28(0x1c)
1c00277c:	038801ad 	ori	$r13,$r13,0x200
1c002780:	2980018d 	st.w	$r13,$r12,0
1c002784:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002788:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c00278c:	038801ad 	ori	$r13,$r13,0x200
1c002790:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002794:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002798:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c00279c:	2900298d 	st.b	$r13,$r12,10(0xa)
1c0027a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027a4:	29002d80 	st.b	$r0,$r12,11(0xb)
1c0027a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027ac:	29003580 	st.b	$r0,$r12,13(0xd)
1c0027b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027b4:	29003180 	st.b	$r0,$r12,12(0xc)
1c0027b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027bc:	29003d80 	st.b	$r0,$r12,15(0xf)
1c0027c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027c4:	29003980 	st.b	$r0,$r12,14(0xe)
1c0027c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027cc:	29402180 	st.h	$r0,$r12,8(0x8)
1c0027d0:	03400000 	andi	$r0,$r0,0x0
1c0027d4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0027d8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0027dc:	4c000020 	jirl	$r0,$r1,0

1c0027e0 <UART_ITConfig>:
UART_ITConfig():
1c0027e0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0027e4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0027e8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0027ec:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0027f0:	001500ac 	move	$r12,$r5
1c0027f4:	29bf92c6 	st.w	$r6,$r22,-28(0xfe4)
1c0027f8:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0027fc:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002800:	40002980 	beqz	$r12,40(0x28) # 1c002828 <UART_ITConfig+0x48>
1c002804:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002808:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c00280c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002810:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c002814:	001531ac 	or	$r12,$r13,$r12
1c002818:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00281c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002820:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002824:	50003400 	b	52(0x34) # 1c002858 <UART_ITConfig+0x78>
1c002828:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00282c:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002830:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002834:	00005d8d 	ext.w.b	$r13,$r12
1c002838:	283faecc 	ld.b	$r12,$r22,-21(0xfeb)
1c00283c:	0014300c 	nor	$r12,$r0,$r12
1c002840:	00005d8c 	ext.w.b	$r12,$r12
1c002844:	0014b1ac 	and	$r12,$r13,$r12
1c002848:	00005d8c 	ext.w.b	$r12,$r12
1c00284c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002850:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002854:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002858:	03400000 	andi	$r0,$r0,0x0
1c00285c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002860:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002864:	4c000020 	jirl	$r0,$r1,0

1c002868 <UART_SendData>:
UART_SendData():
1c002868:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00286c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002870:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002874:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002878:	001500ac 	move	$r12,$r5
1c00287c:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c002880:	03400000 	andi	$r0,$r0,0x0
1c002884:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002888:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c00288c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002890:	0340818c 	andi	$r12,$r12,0x20
1c002894:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002884 <UART_SendData+0x1c>
1c002898:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00289c:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c0028a0:	2900018d 	st.b	$r13,$r12,0
1c0028a4:	03400000 	andi	$r0,$r0,0x0
1c0028a8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0028ac:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0028b0:	4c000020 	jirl	$r0,$r1,0

1c0028b4 <Uart1_init>:
Uart1_init():
1c0028b4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0028b8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0028bc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0028c0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0028c4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0028c8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0028cc:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0028d0:	57ed87ff 	bl	-4732(0xfffed84) # 1c001654 <gpio_pin_remap>
1c0028d4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0028d8:	02802404 	addi.w	$r4,$r0,9(0x9)
1c0028dc:	57ed7bff 	bl	-4744(0xfffed78) # 1c001654 <gpio_pin_remap>
1c0028e0:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c0028e4:	00150184 	move	$r4,$r12
1c0028e8:	57fe7fff 	bl	-388(0xffffe7c) # 1c002764 <UART_StructInit>
1c0028ec:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0028f0:	289c918c 	ld.w	$r12,$r12,1828(0x724)
1c0028f4:	2880018c 	ld.w	$r12,$r12,0
1c0028f8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0028fc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002900:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002904:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002908:	00150185 	move	$r5,$r12
1c00290c:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002910:	57fb5bff 	bl	-1192(0xffffb58) # 1c002468 <UART_Init>
1c002914:	00150006 	move	$r6,$r0
1c002918:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00291c:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002920:	57fec3ff 	bl	-320(0xffffec0) # 1c0027e0 <UART_ITConfig>
1c002924:	03400000 	andi	$r0,$r0,0x0
1c002928:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00292c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002930:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002934:	4c000020 	jirl	$r0,$r1,0

1c002938 <CLOCK_WaitForHSEStartUp>:
CLOCK_WaitForHSEStartUp():
1c002938:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00293c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002940:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002944:	1400006c 	lu12i.w	$r12,3(0x3)
1c002948:	03ba018c 	ori	$r12,$r12,0xe80
1c00294c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002950:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002954:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002958:	2880018d 	ld.w	$r13,$r12,0
1c00295c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002960:	038101ad 	ori	$r13,$r13,0x40
1c002964:	2980018d 	st.w	$r13,$r12,0
1c002968:	03400000 	andi	$r0,$r0,0x0
1c00296c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002970:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002974:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002978:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c00296c <CLOCK_WaitForHSEStartUp+0x34>
1c00297c:	50001c00 	b	28(0x1c) # 1c002998 <CLOCK_WaitForHSEStartUp+0x60>
1c002980:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002984:	2880018e 	ld.w	$r14,$r12,0
1c002988:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00298c:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002990:	0014b5cd 	and	$r13,$r14,$r13
1c002994:	2980018d 	st.w	$r13,$r12,0
1c002998:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00299c:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c0029a0:	63ffe180 	blt	$r12,$r0,-32(0x3ffe0) # 1c002980 <CLOCK_WaitForHSEStartUp+0x48>
1c0029a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0029a8:	2880018d 	ld.w	$r13,$r12,0
1c0029ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0029b0:	038201ad 	ori	$r13,$r13,0x80
1c0029b4:	2980018d 	st.w	$r13,$r12,0
1c0029b8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0029bc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0029c0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0029c4:	00150184 	move	$r4,$r12
1c0029c8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0029cc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0029d0:	4c000020 	jirl	$r0,$r1,0

1c0029d4 <CLOCK_WaitForLSEStartUp>:
CLOCK_WaitForLSEStartUp():
1c0029d4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0029d8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0029dc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0029e0:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0029e4:	50008800 	b	136(0x88) # 1c002a6c <CLOCK_WaitForLSEStartUp+0x98>
1c0029e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0029ec:	2880018e 	ld.w	$r14,$r12,0
1c0029f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0029f4:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c0029f8:	0014b5cd 	and	$r13,$r14,$r13
1c0029fc:	2980018d 	st.w	$r13,$r12,0
1c002a00:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002a04:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002a08:	50001400 	b	20(0x14) # 1c002a1c <CLOCK_WaitForLSEStartUp+0x48>
1c002a0c:	03400000 	andi	$r0,$r0,0x0
1c002a10:	03400000 	andi	$r0,$r0,0x0
1c002a14:	03400000 	andi	$r0,$r0,0x0
1c002a18:	03400000 	andi	$r0,$r0,0x0
1c002a1c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002a20:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002a24:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002a28:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002a0c <CLOCK_WaitForLSEStartUp+0x38>
1c002a2c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002a30:	2880018d 	ld.w	$r13,$r12,0
1c002a34:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002a38:	038081ad 	ori	$r13,$r13,0x20
1c002a3c:	2980018d 	st.w	$r13,$r12,0
1c002a40:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002a44:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002a48:	50001400 	b	20(0x14) # 1c002a5c <CLOCK_WaitForLSEStartUp+0x88>
1c002a4c:	03400000 	andi	$r0,$r0,0x0
1c002a50:	03400000 	andi	$r0,$r0,0x0
1c002a54:	03400000 	andi	$r0,$r0,0x0
1c002a58:	03400000 	andi	$r0,$r0,0x0
1c002a5c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002a60:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002a64:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002a68:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002a4c <CLOCK_WaitForLSEStartUp+0x78>
1c002a6c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002a70:	0380118c 	ori	$r12,$r12,0x4
1c002a74:	2880018d 	ld.w	$r13,$r12,0
1c002a78:	1420000c 	lu12i.w	$r12,65536(0x10000)
1c002a7c:	0014b1ac 	and	$r12,$r13,$r12
1c002a80:	43ff699f 	beqz	$r12,-152(0x7fff68) # 1c0029e8 <CLOCK_WaitForLSEStartUp+0x14>
1c002a84:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002a88:	0380118c 	ori	$r12,$r12,0x4
1c002a8c:	2880018d 	ld.w	$r13,$r12,0
1c002a90:	1440000c 	lu12i.w	$r12,131072(0x20000)
1c002a94:	0014b1ac 	and	$r12,$r13,$r12
1c002a98:	47ff519f 	bnez	$r12,-176(0x7fff50) # 1c0029e8 <CLOCK_WaitForLSEStartUp+0x14>
1c002a9c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002aa0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002aa4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002aa8:	00150184 	move	$r4,$r12
1c002aac:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002ab0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002ab4:	4c000020 	jirl	$r0,$r1,0

1c002ab8 <CLOCK_HSEConfig>:
CLOCK_HSEConfig():
1c002ab8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002abc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002ac0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002ac4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002ac8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002acc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002ad0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ad4:	2880018e 	ld.w	$r14,$r12,0
1c002ad8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002adc:	0014300d 	nor	$r13,$r0,$r12
1c002ae0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ae4:	0014b5cd 	and	$r13,$r14,$r13
1c002ae8:	2980018d 	st.w	$r13,$r12,0
1c002aec:	1400002c 	lu12i.w	$r12,1(0x1)
1c002af0:	03b4bd8c 	ori	$r12,$r12,0xd2f
1c002af4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002af8:	50001400 	b	20(0x14) # 1c002b0c <CLOCK_HSEConfig+0x54>
1c002afc:	03400000 	andi	$r0,$r0,0x0
1c002b00:	03400000 	andi	$r0,$r0,0x0
1c002b04:	03400000 	andi	$r0,$r0,0x0
1c002b08:	03400000 	andi	$r0,$r0,0x0
1c002b0c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002b10:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002b14:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002b18:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002afc <CLOCK_HSEConfig+0x44>
1c002b1c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002b20:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002b24:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002b34 <CLOCK_HSEConfig+0x7c>
1c002b28:	57fe13ff 	bl	-496(0xffffe10) # 1c002938 <CLOCK_WaitForHSEStartUp>
1c002b2c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002b30:	50002400 	b	36(0x24) # 1c002b54 <CLOCK_HSEConfig+0x9c>
1c002b34:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b38:	2880018e 	ld.w	$r14,$r12,0
1c002b3c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b40:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002b44:	0014b5cd 	and	$r13,$r14,$r13
1c002b48:	2980018d 	st.w	$r13,$r12,0
1c002b4c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002b50:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002b54:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002b58:	00150184 	move	$r4,$r12
1c002b5c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002b60:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002b64:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002b68:	4c000020 	jirl	$r0,$r1,0

1c002b6c <CLOCK_LSEConfig>:
CLOCK_LSEConfig():
1c002b6c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002b70:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002b74:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002b78:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002b7c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002b80:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002b84:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002b88:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c002b8c:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002b9c <CLOCK_LSEConfig+0x30>
1c002b90:	57fe47ff 	bl	-444(0xffffe44) # 1c0029d4 <CLOCK_WaitForLSEStartUp>
1c002b94:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002b98:	50002400 	b	36(0x24) # 1c002bbc <CLOCK_LSEConfig+0x50>
1c002b9c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ba0:	2880018e 	ld.w	$r14,$r12,0
1c002ba4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ba8:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002bac:	0014b5cd 	and	$r13,$r14,$r13
1c002bb0:	2980018d 	st.w	$r13,$r12,0
1c002bb4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002bb8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002bbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002bc0:	00150184 	move	$r4,$r12
1c002bc4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002bc8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002bcc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002bd0:	4c000020 	jirl	$r0,$r1,0

1c002bd4 <CLOCK_StructInit>:
CLOCK_StructInit():
1c002bd4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002bd8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002bdc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002be0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002be4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002be8:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c002bec:	2980018d 	st.w	$r13,$r12,0
1c002bf0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002bf4:	0282000d 	addi.w	$r13,$r0,128(0x80)
1c002bf8:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002bfc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c00:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c002c04:	2980218d 	st.w	$r13,$r12,8(0x8)
1c002c08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c0c:	29803180 	st.w	$r0,$r12,12(0xc)
1c002c10:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c14:	29804180 	st.w	$r0,$r12,16(0x10)
1c002c18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c1c:	29805180 	st.w	$r0,$r12,20(0x14)
1c002c20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c24:	29806180 	st.w	$r0,$r12,24(0x18)
1c002c28:	03400000 	andi	$r0,$r0,0x0
1c002c2c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002c30:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002c34:	4c000020 	jirl	$r0,$r1,0

1c002c38 <CLOCK_Init>:
CLOCK_Init():
1c002c38:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002c3c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002c40:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002c44:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002c48:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002c4c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002c50:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c54:	2880018e 	ld.w	$r14,$r12,0
1c002c58:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c5c:	02b3fc0d 	addi.w	$r13,$r0,-769(0xcff)
1c002c60:	0014b5cd 	and	$r13,$r14,$r13
1c002c64:	2980018d 	st.w	$r13,$r12,0
1c002c68:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c6c:	2880018e 	ld.w	$r14,$r12,0
1c002c70:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002c74:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c002c78:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c7c:	001535cd 	or	$r13,$r14,$r13
1c002c80:	2980018d 	st.w	$r13,$r12,0
1c002c84:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c88:	2880018e 	ld.w	$r14,$r12,0
1c002c8c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c90:	02bfbc0d 	addi.w	$r13,$r0,-17(0xfef)
1c002c94:	0014b5cd 	and	$r13,$r14,$r13
1c002c98:	2980018d 	st.w	$r13,$r12,0
1c002c9c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ca0:	2880018e 	ld.w	$r14,$r12,0
1c002ca4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ca8:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c002cac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cb0:	001535cd 	or	$r13,$r14,$r13
1c002cb4:	2980018d 	st.w	$r13,$r12,0
1c002cb8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cbc:	2880018e 	ld.w	$r14,$r12,0
1c002cc0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cc4:	15ffffed 	lu12i.w	$r13,-1(0xfffff)
1c002cc8:	039ffdad 	ori	$r13,$r13,0x7ff
1c002ccc:	0014b5cd 	and	$r13,$r14,$r13
1c002cd0:	2980018d 	st.w	$r13,$r12,0
1c002cd4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cd8:	2880018e 	ld.w	$r14,$r12,0
1c002cdc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ce0:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c002ce4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ce8:	001535cd 	or	$r13,$r14,$r13
1c002cec:	2980018d 	st.w	$r13,$r12,0
1c002cf0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002cf4:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002cf8:	00150184 	move	$r4,$r12
1c002cfc:	57fdbfff 	bl	-580(0xffffdbc) # 1c002ab8 <CLOCK_HSEConfig>
1c002d00:	0015008d 	move	$r13,$r4
1c002d04:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002d08:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002d14 <CLOCK_Init+0xdc>
1c002d0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d10:	50015000 	b	336(0x150) # 1c002e60 <CLOCK_Init+0x228>
1c002d14:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002d18:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c002d1c:	00150184 	move	$r4,$r12
1c002d20:	57fe4fff 	bl	-436(0xffffe4c) # 1c002b6c <CLOCK_LSEConfig>
1c002d24:	0015008d 	move	$r13,$r4
1c002d28:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002d2c:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002d38 <CLOCK_Init+0x100>
1c002d30:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d34:	50012c00 	b	300(0x12c) # 1c002e60 <CLOCK_Init+0x228>
1c002d38:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002d3c:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002d40:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002d44:	5800fdac 	beq	$r13,$r12,252(0xfc) # 1c002e40 <CLOCK_Init+0x208>
1c002d48:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002d4c:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c002d50:	4000a180 	beqz	$r12,160(0xa0) # 1c002df0 <CLOCK_Init+0x1b8>
1c002d54:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d58:	2880018e 	ld.w	$r14,$r12,0
1c002d5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d60:	15efffed 	lu12i.w	$r13,-32769(0xf7fff)
1c002d64:	03bffdad 	ori	$r13,$r13,0xfff
1c002d68:	0014b5cd 	and	$r13,$r14,$r13
1c002d6c:	2980018d 	st.w	$r13,$r12,0
1c002d70:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d74:	2880018e 	ld.w	$r14,$r12,0
1c002d78:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002d7c:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c002d80:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d84:	001535cd 	or	$r13,$r14,$r13
1c002d88:	2980018d 	st.w	$r13,$r12,0
1c002d8c:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002d90:	0386c18c 	ori	$r12,$r12,0x1b0
1c002d94:	2880018c 	ld.w	$r12,$r12,0
1c002d98:	40004180 	beqz	$r12,64(0x40) # 1c002dd8 <CLOCK_Init+0x1a0>
1c002d9c:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002da0:	0386c18c 	ori	$r12,$r12,0x1b0
1c002da4:	2880018c 	ld.w	$r12,$r12,0
1c002da8:	0040898e 	slli.w	$r14,$r12,0x2
1c002dac:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002db0:	002031cd 	div.w	$r13,$r14,$r12
1c002db4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002dbc <CLOCK_Init+0x184>
1c002db8:	002a0007 	break	0x7
1c002dbc:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c002dc0:	001c31ac 	mul.w	$r12,$r13,$r12
1c002dc4:	0015018d 	move	$r13,$r12
1c002dc8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002dcc:	0289818c 	addi.w	$r12,$r12,608(0x260)
1c002dd0:	2980018d 	st.w	$r13,$r12,0
1c002dd4:	50008000 	b	128(0x80) # 1c002e54 <CLOCK_Init+0x21c>
1c002dd8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002ddc:	0289418c 	addi.w	$r12,$r12,592(0x250)
1c002de0:	1401458d 	lu12i.w	$r13,2604(0xa2c)
1c002de4:	038fe1ad 	ori	$r13,$r13,0x3f8
1c002de8:	2980018d 	st.w	$r13,$r12,0
1c002dec:	50006800 	b	104(0x68) # 1c002e54 <CLOCK_Init+0x21c>
1c002df0:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002df4:	0386c18c 	ori	$r12,$r12,0x1b0
1c002df8:	2880018c 	ld.w	$r12,$r12,0
1c002dfc:	40002d80 	beqz	$r12,44(0x2c) # 1c002e28 <CLOCK_Init+0x1f0>
1c002e00:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002e04:	0386c18c 	ori	$r12,$r12,0x1b0
1c002e08:	2880018d 	ld.w	$r13,$r12,0
1c002e0c:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c002e10:	001c31ac 	mul.w	$r12,$r13,$r12
1c002e14:	0015018d 	move	$r13,$r12
1c002e18:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002e1c:	0288418c 	addi.w	$r12,$r12,528(0x210)
1c002e20:	2980018d 	st.w	$r13,$r12,0
1c002e24:	50003000 	b	48(0x30) # 1c002e54 <CLOCK_Init+0x21c>
1c002e28:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002e2c:	0288018c 	addi.w	$r12,$r12,512(0x200)
1c002e30:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c002e34:	038801ad 	ori	$r13,$r13,0x200
1c002e38:	2980018d 	st.w	$r13,$r12,0
1c002e3c:	50001800 	b	24(0x18) # 1c002e54 <CLOCK_Init+0x21c>
1c002e40:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002e44:	0287a18c 	addi.w	$r12,$r12,488(0x1e8)
1c002e48:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c002e4c:	038801ad 	ori	$r13,$r13,0x200
1c002e50:	2980018d 	st.w	$r13,$r12,0
1c002e54:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002e58:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002e5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e60:	00150184 	move	$r4,$r12
1c002e64:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002e68:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002e6c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002e70:	4c000020 	jirl	$r0,$r1,0

1c002e74 <SystemClockInit>:
SystemClockInit():
1c002e74:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002e78:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002e7c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002e80:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002e84:	29bf52c0 	st.w	$r0,$r22,-44(0xfd4)
1c002e88:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c002e8c:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c002e90:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c002e94:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002e98:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002e9c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002ea0:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c002ea4:	00150184 	move	$r4,$r12
1c002ea8:	57fd2fff 	bl	-724(0xffffd2c) # 1c002bd4 <CLOCK_StructInit>
1c002eac:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c002eb0:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c002eb4:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002eb8:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c002ebc:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c002ec0:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c002ec4:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c002ec8:	0284000c 	addi.w	$r12,$r0,256(0x100)
1c002ecc:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002ed0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002ed4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002ed8:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c002edc:	00150184 	move	$r4,$r12
1c002ee0:	57fd5bff 	bl	-680(0xffffd58) # 1c002c38 <CLOCK_Init>
1c002ee4:	0015008d 	move	$r13,$r4
1c002ee8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002eec:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002ef8 <SystemClockInit+0x84>
1c002ef0:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002ef4:	50000800 	b	8(0x8) # 1c002efc <SystemClockInit+0x88>
1c002ef8:	0015000c 	move	$r12,$r0
1c002efc:	00150184 	move	$r4,$r12
1c002f00:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002f04:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002f08:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002f0c:	4c000020 	jirl	$r0,$r1,0

1c002f10 <IsGlobalIntOpen>:
IsGlobalIntOpen():
1c002f10:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002f14:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002f18:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002f1c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002f20:	0400000c 	csrrd	$r12,0x0
1c002f24:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002f28:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f2c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002f30:	0340118c 	andi	$r12,$r12,0x4
1c002f34:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002f38:	00150184 	move	$r4,$r12
1c002f3c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002f40:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002f44:	4c000020 	jirl	$r0,$r1,0

1c002f48 <DisableInt>:
DisableInt():
1c002f48:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002f4c:	29803076 	st.w	$r22,$r3,12(0xc)
1c002f50:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002f54:	0380100c 	ori	$r12,$r0,0x4
1c002f58:	04000180 	csrxchg	$r0,$r12,0x0
1c002f5c:	03400000 	andi	$r0,$r0,0x0
1c002f60:	28803076 	ld.w	$r22,$r3,12(0xc)
1c002f64:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002f68:	4c000020 	jirl	$r0,$r1,0

1c002f6c <EnableInt>:
EnableInt():
1c002f6c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002f70:	29803076 	st.w	$r22,$r3,12(0xc)
1c002f74:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002f78:	0380100c 	ori	$r12,$r0,0x4
1c002f7c:	0400018c 	csrxchg	$r12,$r12,0x0
1c002f80:	03400000 	andi	$r0,$r0,0x0
1c002f84:	28803076 	ld.w	$r22,$r3,12(0xc)
1c002f88:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002f8c:	4c000020 	jirl	$r0,$r1,0

1c002f90 <Set_Timer_stop>:
Set_Timer_stop():
1c002f90:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002f94:	29803076 	st.w	$r22,$r3,12(0xc)
1c002f98:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002f9c:	04010420 	csrwr	$r0,0x41
1c002fa0:	03400000 	andi	$r0,$r0,0x0
1c002fa4:	28803076 	ld.w	$r22,$r3,12(0xc)
1c002fa8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002fac:	4c000020 	jirl	$r0,$r1,0

1c002fb0 <Set_Timer_clear>:
Set_Timer_clear():
1c002fb0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002fb4:	29803076 	st.w	$r22,$r3,12(0xc)
1c002fb8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002fbc:	0380040c 	ori	$r12,$r0,0x1
1c002fc0:	0401102c 	csrwr	$r12,0x44
1c002fc4:	03400000 	andi	$r0,$r0,0x0
1c002fc8:	28803076 	ld.w	$r22,$r3,12(0xc)
1c002fcc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002fd0:	4c000020 	jirl	$r0,$r1,0

1c002fd4 <Wake_Set>:
Wake_Set():
1c002fd4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002fd8:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002fdc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002fe0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002fe4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002fe8:	40006980 	beqz	$r12,104(0x68) # 1c003050 <Wake_Set+0x7c>
1c002fec:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ff0:	0040a18c 	slli.w	$r12,$r12,0x8
1c002ff4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002ff8:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002ffc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003000:	0380218c 	ori	$r12,$r12,0x8
1c003004:	2880018d 	ld.w	$r13,$r12,0
1c003008:	14001fec 	lu12i.w	$r12,255(0xff)
1c00300c:	03bffd8c 	ori	$r12,$r12,0xfff
1c003010:	0014b1ac 	and	$r12,$r13,$r12
1c003014:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003018:	001031ac 	add.w	$r12,$r13,$r12
1c00301c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003020:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003024:	0380318c 	ori	$r12,$r12,0xc
1c003028:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00302c:	2980018d 	st.w	$r13,$r12,0
1c003030:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003034:	0380118c 	ori	$r12,$r12,0x4
1c003038:	2880018d 	ld.w	$r13,$r12,0
1c00303c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003040:	0380118c 	ori	$r12,$r12,0x4
1c003044:	038601ad 	ori	$r13,$r13,0x180
1c003048:	2980018d 	st.w	$r13,$r12,0
1c00304c:	50002400 	b	36(0x24) # 1c003070 <Wake_Set+0x9c>
1c003050:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003054:	0380118c 	ori	$r12,$r12,0x4
1c003058:	2880018e 	ld.w	$r14,$r12,0
1c00305c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003060:	0380118c 	ori	$r12,$r12,0x4
1c003064:	02b9fc0d 	addi.w	$r13,$r0,-385(0xe7f)
1c003068:	0014b5cd 	and	$r13,$r14,$r13
1c00306c:	2980018d 	st.w	$r13,$r12,0
1c003070:	03400000 	andi	$r0,$r0,0x0
1c003074:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003078:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00307c:	4c000020 	jirl	$r0,$r1,0

1c003080 <PMU_GetRstRrc>:
PMU_GetRstRrc():
1c003080:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003084:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003088:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00308c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003090:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003094:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003098:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c00309c:	0014b1ac 	and	$r12,$r13,$r12
1c0030a0:	44000d80 	bnez	$r12,12(0xc) # 1c0030ac <PMU_GetRstRrc+0x2c>
1c0030a4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0030a8:	50003000 	b	48(0x30) # 1c0030d8 <PMU_GetRstRrc+0x58>
1c0030ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0030b0:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0030b4:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c0030b8:	0014b1ad 	and	$r13,$r13,$r12
1c0030bc:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c0030c0:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c0030d0 <PMU_GetRstRrc+0x50>
1c0030c4:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0030c8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0030cc:	50000c00 	b	12(0xc) # 1c0030d8 <PMU_GetRstRrc+0x58>
1c0030d0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0030d4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0030d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0030dc:	00150184 	move	$r4,$r12
1c0030e0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0030e4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0030e8:	4c000020 	jirl	$r0,$r1,0

1c0030ec <PMU_GetBootSpiStatus>:
PMU_GetBootSpiStatus():
1c0030ec:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0030f0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0030f4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0030f8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0030fc:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003100:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003104:	0380198c 	ori	$r12,$r12,0x6
1c003108:	2a00018c 	ld.bu	$r12,$r12,0
1c00310c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003110:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003114:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003118:	0340058c 	andi	$r12,$r12,0x1
1c00311c:	40000d80 	beqz	$r12,12(0xc) # 1c003128 <PMU_GetBootSpiStatus+0x3c>
1c003120:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003124:	50000800 	b	8(0x8) # 1c00312c <PMU_GetBootSpiStatus+0x40>
1c003128:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00312c:	00150184 	move	$r4,$r12
1c003130:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003134:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003138:	4c000020 	jirl	$r0,$r1,0

1c00313c <ls1x_logo>:
ls1x_logo():
1c00313c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003140:	29803061 	st.w	$r1,$r3,12(0xc)
1c003144:	29802076 	st.w	$r22,$r3,8(0x8)
1c003148:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00314c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003150:	0298a084 	addi.w	$r4,$r4,1576(0x628)
1c003154:	57e91bff 	bl	-5864(0xfffe918) # 1c001a6c <myprintf>
1c003158:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00315c:	02988084 	addi.w	$r4,$r4,1568(0x620)
1c003160:	57e90fff 	bl	-5876(0xfffe90c) # 1c001a6c <myprintf>
1c003164:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003168:	0299e084 	addi.w	$r4,$r4,1656(0x678)
1c00316c:	57e903ff 	bl	-5888(0xfffe900) # 1c001a6c <myprintf>
1c003170:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003174:	029b4084 	addi.w	$r4,$r4,1744(0x6d0)
1c003178:	57e8f7ff 	bl	-5900(0xfffe8f4) # 1c001a6c <myprintf>
1c00317c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003180:	029ca084 	addi.w	$r4,$r4,1832(0x728)
1c003184:	57e8ebff 	bl	-5912(0xfffe8e8) # 1c001a6c <myprintf>
1c003188:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00318c:	029e0084 	addi.w	$r4,$r4,1920(0x780)
1c003190:	57e8dfff 	bl	-5924(0xfffe8dc) # 1c001a6c <myprintf>
1c003194:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003198:	029f6084 	addi.w	$r4,$r4,2008(0x7d8)
1c00319c:	57e8d3ff 	bl	-5936(0xfffe8d0) # 1c001a6c <myprintf>
1c0031a0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0031a4:	02a0c084 	addi.w	$r4,$r4,-2000(0x830)
1c0031a8:	57e8c7ff 	bl	-5948(0xfffe8c4) # 1c001a6c <myprintf>
1c0031ac:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0031b0:	02a22084 	addi.w	$r4,$r4,-1912(0x888)
1c0031b4:	57e8bbff 	bl	-5960(0xfffe8b8) # 1c001a6c <myprintf>
1c0031b8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0031bc:	02a38084 	addi.w	$r4,$r4,-1824(0x8e0)
1c0031c0:	57e8afff 	bl	-5972(0xfffe8ac) # 1c001a6c <myprintf>
1c0031c4:	03400000 	andi	$r0,$r0,0x0
1c0031c8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0031cc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0031d0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0031d4:	4c000020 	jirl	$r0,$r1,0

1c0031d8 <get_count>:
get_count():
1c0031d8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0031dc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0031e0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0031e4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0031e8:	0000600c 	rdtimel.w	$r12,$r0
1c0031ec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0031f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0031f4:	00150184 	move	$r4,$r12
1c0031f8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0031fc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003200:	4c000020 	jirl	$r0,$r1,0

1c003204 <open_count>:
open_count():
1c003204:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003208:	29803076 	st.w	$r22,$r3,12(0xc)
1c00320c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003210:	0380400c 	ori	$r12,$r0,0x10
1c003214:	0402bd80 	csrxchg	$r0,$r12,0xaf
1c003218:	03400000 	andi	$r0,$r0,0x0
1c00321c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003220:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003224:	4c000020 	jirl	$r0,$r1,0

1c003228 <start_count>:
start_count():
1c003228:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00322c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003230:	29806076 	st.w	$r22,$r3,24(0x18)
1c003234:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003238:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00323c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003240:	29800180 	st.w	$r0,$r12,0
1c003244:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003248:	29801180 	st.w	$r0,$r12,4(0x4)
1c00324c:	57ff8fff 	bl	-116(0xfffff8c) # 1c0031d8 <get_count>
1c003250:	0015008d 	move	$r13,$r4
1c003254:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003258:	2980018d 	st.w	$r13,$r12,0
1c00325c:	03400000 	andi	$r0,$r0,0x0
1c003260:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003264:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003268:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00326c:	4c000020 	jirl	$r0,$r1,0

1c003270 <stop_count>:
stop_count():
1c003270:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003274:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003278:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00327c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003280:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003284:	57ff57ff 	bl	-172(0xfffff54) # 1c0031d8 <get_count>
1c003288:	0015008d 	move	$r13,$r4
1c00328c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003290:	2980118d 	st.w	$r13,$r12,4(0x4)
1c003294:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003298:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c00329c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0032a0:	2880018c 	ld.w	$r12,$r12,0
1c0032a4:	68001dac 	bltu	$r13,$r12,28(0x1c) # 1c0032c0 <stop_count+0x50>
1c0032a8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0032ac:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0032b0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0032b4:	2880018c 	ld.w	$r12,$r12,0
1c0032b8:	001131ac 	sub.w	$r12,$r13,$r12
1c0032bc:	50002800 	b	40(0x28) # 1c0032e4 <stop_count+0x74>
1c0032c0:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0032c4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0032c8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0032cc:	2880018c 	ld.w	$r12,$r12,0
1c0032d0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0032d4:	001131ad 	sub.w	$r13,$r13,$r12
1c0032d8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0032dc:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c0032e0:	001031ac 	add.w	$r12,$r13,$r12
1c0032e4:	00150184 	move	$r4,$r12
1c0032e8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0032ec:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0032f0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0032f4:	4c000020 	jirl	$r0,$r1,0

1c0032f8 <delay_cycle>:
delay_cycle():
1c0032f8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0032fc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003300:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003304:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003308:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00330c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003310:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c003314:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003318:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c00331c:	00150184 	move	$r4,$r12
1c003320:	57ff0bff 	bl	-248(0xfffff08) # 1c003228 <start_count>
1c003324:	50001400 	b	20(0x14) # 1c003338 <delay_cycle+0x40>
1c003328:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c00332c:	00150184 	move	$r4,$r12
1c003330:	57ff43ff 	bl	-192(0xfffff40) # 1c003270 <stop_count>
1c003334:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003338:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00333c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003340:	6bffe9ac 	bltu	$r13,$r12,-24(0x3ffe8) # 1c003328 <delay_cycle+0x30>
1c003344:	03400000 	andi	$r0,$r0,0x0
1c003348:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00334c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003350:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003354:	4c000020 	jirl	$r0,$r1,0

1c003358 <delay_us>:
delay_us():
1c003358:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00335c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003360:	29806076 	st.w	$r22,$r3,24(0x18)
1c003364:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003368:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00336c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003370:	00408d8c 	slli.w	$r12,$r12,0x3
1c003374:	00150184 	move	$r4,$r12
1c003378:	57ff83ff 	bl	-128(0xfffff80) # 1c0032f8 <delay_cycle>
1c00337c:	03400000 	andi	$r0,$r0,0x0
1c003380:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003384:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003388:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00338c:	4c000020 	jirl	$r0,$r1,0

1c003390 <delay_ms>:
delay_ms():
1c003390:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003394:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003398:	29806076 	st.w	$r22,$r3,24(0x18)
1c00339c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0033a0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0033a4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0033a8:	1400002c 	lu12i.w	$r12,1(0x1)
1c0033ac:	03bd018c 	ori	$r12,$r12,0xf40
1c0033b0:	001c31ac 	mul.w	$r12,$r13,$r12
1c0033b4:	00150184 	move	$r4,$r12
1c0033b8:	57ff43ff 	bl	-192(0xfffff40) # 1c0032f8 <delay_cycle>
1c0033bc:	03400000 	andi	$r0,$r0,0x0
1c0033c0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0033c4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0033c8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0033cc:	4c000020 	jirl	$r0,$r1,0

1c0033d0 <itoa>:
itoa():
1c0033d0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0033d4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0033d8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0033dc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0033e0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0033e4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0033e8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0033ec:	4400a180 	bnez	$r12,160(0xa0) # 1c00348c <itoa+0xbc>
1c0033f0:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0033f4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0033f8:	0020b1ae 	mod.w	$r14,$r13,$r12
1c0033fc:	5c000980 	bne	$r12,$r0,8(0x8) # 1c003404 <itoa+0x34>
1c003400:	002a0007 	break	0x7
1c003404:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c003408:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c00340c:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c003410:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003414:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c003418:	001031ac 	add.w	$r12,$r13,$r12
1c00341c:	00005dcd 	ext.w.b	$r13,$r14
1c003420:	2900018d 	st.b	$r13,$r12,0
1c003424:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003428:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00342c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003430:	50005c00 	b	92(0x5c) # 1c00348c <itoa+0xbc>
1c003434:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c003438:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c00343c:	0020b1ae 	mod.w	$r14,$r13,$r12
1c003440:	5c000980 	bne	$r12,$r0,8(0x8) # 1c003448 <itoa+0x78>
1c003444:	002a0007 	break	0x7
1c003448:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c00344c:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c003450:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c003454:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003458:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00345c:	001031ac 	add.w	$r12,$r13,$r12
1c003460:	00005dcd 	ext.w.b	$r13,$r14
1c003464:	2900018d 	st.b	$r13,$r12,0
1c003468:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00346c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003470:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003474:	28bf62ce 	ld.w	$r14,$r22,-40(0xfd8)
1c003478:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c00347c:	002035cc 	div.w	$r12,$r14,$r13
1c003480:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c003488 <itoa+0xb8>
1c003484:	002a0007 	break	0x7
1c003488:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c00348c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003490:	47ffa59f 	bnez	$r12,-92(0x7fffa4) # 1c003434 <itoa+0x64>
1c003494:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003498:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00349c:	001031ac 	add.w	$r12,$r13,$r12
1c0034a0:	29000180 	st.b	$r0,$r12,0
1c0034a4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0034a8:	50007800 	b	120(0x78) # 1c003520 <itoa+0x150>
1c0034ac:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0034b0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0034b4:	001031ac 	add.w	$r12,$r13,$r12
1c0034b8:	2a00018c 	ld.bu	$r12,$r12,0
1c0034bc:	293f9ecc 	st.b	$r12,$r22,-25(0xfe7)
1c0034c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034c4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0034c8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0034cc:	001131ac 	sub.w	$r12,$r13,$r12
1c0034d0:	0015018d 	move	$r13,$r12
1c0034d4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034d8:	0010358d 	add.w	$r13,$r12,$r13
1c0034dc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0034e0:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c0034e4:	001031cc 	add.w	$r12,$r14,$r12
1c0034e8:	280001ad 	ld.b	$r13,$r13,0
1c0034ec:	2900018d 	st.b	$r13,$r12,0
1c0034f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034f4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0034f8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0034fc:	001131ac 	sub.w	$r12,$r13,$r12
1c003500:	0015018d 	move	$r13,$r12
1c003504:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003508:	0010358c 	add.w	$r12,$r12,$r13
1c00350c:	2a3f9ecd 	ld.bu	$r13,$r22,-25(0xfe7)
1c003510:	2900018d 	st.b	$r13,$r12,0
1c003514:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003518:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00351c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003520:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003524:	0044fd8d 	srli.w	$r13,$r12,0x1f
1c003528:	001031ac 	add.w	$r12,$r13,$r12
1c00352c:	0048858c 	srai.w	$r12,$r12,0x1
1c003530:	0015018d 	move	$r13,$r12
1c003534:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003538:	63ff758d 	blt	$r12,$r13,-140(0x3ff74) # 1c0034ac <itoa+0xdc>
1c00353c:	03400000 	andi	$r0,$r0,0x0
1c003540:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003544:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003548:	4c000020 	jirl	$r0,$r1,0

1c00354c <strcat>:
strcat():
1c00354c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003550:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003554:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003558:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00355c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c003560:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003564:	40000d80 	beqz	$r12,12(0xc) # 1c003570 <strcat+0x24>
1c003568:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00356c:	44000d80 	bnez	$r12,12(0xc) # 1c003578 <strcat+0x2c>
1c003570:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003574:	50006800 	b	104(0x68) # 1c0035dc <strcat+0x90>
1c003578:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00357c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003580:	50001000 	b	16(0x10) # 1c003590 <strcat+0x44>
1c003584:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003588:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00358c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003590:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003594:	2800018c 	ld.b	$r12,$r12,0
1c003598:	47ffed9f 	bnez	$r12,-20(0x7fffec) # 1c003584 <strcat+0x38>
1c00359c:	50002800 	b	40(0x28) # 1c0035c4 <strcat+0x78>
1c0035a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0035a4:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0035a8:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0035ac:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0035b0:	280001ad 	ld.b	$r13,$r13,0
1c0035b4:	2900018d 	st.b	$r13,$r12,0
1c0035b8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0035bc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0035c0:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0035c4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0035c8:	2800018c 	ld.b	$r12,$r12,0
1c0035cc:	47ffd59f 	bnez	$r12,-44(0x7fffd4) # 1c0035a0 <strcat+0x54>
1c0035d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0035d4:	29000180 	st.b	$r0,$r12,0
1c0035d8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0035dc:	00150184 	move	$r4,$r12
1c0035e0:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0035e4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0035e8:	4c000020 	jirl	$r0,$r1,0

1c0035ec <strcpy>:
strcpy():
1c0035ec:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0035f0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0035f4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0035f8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0035fc:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c003600:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003604:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003608:	03400000 	andi	$r0,$r0,0x0
1c00360c:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c003610:	028005ac 	addi.w	$r12,$r13,1(0x1)
1c003614:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c003618:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00361c:	0280058e 	addi.w	$r14,$r12,1(0x1)
1c003620:	29bf72ce 	st.w	$r14,$r22,-36(0xfdc)
1c003624:	280001ad 	ld.b	$r13,$r13,0
1c003628:	2900018d 	st.b	$r13,$r12,0
1c00362c:	2800018c 	ld.b	$r12,$r12,0
1c003630:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c00360c <strcpy+0x20>
1c003634:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003638:	00150184 	move	$r4,$r12
1c00363c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003640:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003644:	4c000020 	jirl	$r0,$r1,0

1c003648 <strlen>:
strlen():
1c003648:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00364c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003650:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003654:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003658:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00365c:	50001000 	b	16(0x10) # 1c00366c <strlen+0x24>
1c003660:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003664:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003668:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00366c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003670:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c003674:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c003678:	2800018c 	ld.b	$r12,$r12,0
1c00367c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003660 <strlen+0x18>
1c003680:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003684:	00150184 	move	$r4,$r12
1c003688:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00368c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003690:	4c000020 	jirl	$r0,$r1,0

1c003694 <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c003694:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003698:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00369c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0036a0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0036a4:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c0036a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036ac:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c0036b0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0036b4:	001531ad 	or	$r13,$r13,$r12
1c0036b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036bc:	2980318d 	st.w	$r13,$r12,12(0xc)
1c0036c0:	03400000 	andi	$r0,$r0,0x0
1c0036c4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0036c8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0036cc:	4c000020 	jirl	$r0,$r1,0

1c0036d0 <WDG_getOddValue>:
WDG_getOddValue():
1c0036d0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0036d4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0036d8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0036dc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0036e0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0036e4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0036e8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0036ec:	50003800 	b	56(0x38) # 1c003724 <WDG_getOddValue+0x54>
1c0036f0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0036f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036f8:	001731ac 	sll.w	$r12,$r13,$r12
1c0036fc:	0015018d 	move	$r13,$r12
1c003700:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003704:	0014b1ac 	and	$r12,$r13,$r12
1c003708:	40001180 	beqz	$r12,16(0x10) # 1c003718 <WDG_getOddValue+0x48>
1c00370c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003710:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003714:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003718:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00371c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003720:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003724:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003728:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c00372c:	67ffc58d 	bge	$r12,$r13,-60(0x3ffc4) # 1c0036f0 <WDG_getOddValue+0x20>
1c003730:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003734:	0340058c 	andi	$r12,$r12,0x1
1c003738:	44000d80 	bnez	$r12,12(0xc) # 1c003744 <WDG_getOddValue+0x74>
1c00373c:	1400010c 	lu12i.w	$r12,8(0x8)
1c003740:	50000800 	b	8(0x8) # 1c003748 <WDG_getOddValue+0x78>
1c003744:	0015000c 	move	$r12,$r0
1c003748:	00150184 	move	$r4,$r12
1c00374c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003750:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003754:	4c000020 	jirl	$r0,$r1,0

1c003758 <WDG_SetWatchDog>:
WDG_SetWatchDog():
1c003758:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00375c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003760:	29806076 	st.w	$r22,$r3,24(0x18)
1c003764:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003768:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00376c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003770:	140000ec 	lu12i.w	$r12,7(0x7)
1c003774:	03bffd8c 	ori	$r12,$r12,0xfff
1c003778:	0014b1ac 	and	$r12,$r13,$r12
1c00377c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003780:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c003784:	57ff4fff 	bl	-180(0xfffff4c) # 1c0036d0 <WDG_getOddValue>
1c003788:	0015008c 	move	$r12,$r4
1c00378c:	0015018d 	move	$r13,$r12
1c003790:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003794:	0015358c 	or	$r12,$r12,$r13
1c003798:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00379c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0037a0:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c0037a4:	0396a9ad 	ori	$r13,$r13,0x5aa
1c0037a8:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c0037ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037b0:	0014300c 	nor	$r12,$r0,$r12
1c0037b4:	0040c18c 	slli.w	$r12,$r12,0x10
1c0037b8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0037bc:	001531ac 	or	$r12,$r13,$r12
1c0037c0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0037c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0037c8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0037cc:	2980c18d 	st.w	$r13,$r12,48(0x30)
1c0037d0:	03400000 	andi	$r0,$r0,0x0
1c0037d4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0037d8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0037dc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0037e0:	4c000020 	jirl	$r0,$r1,0

1c0037e4 <WDG_DogFeed>:
WDG_DogFeed():
1c0037e4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0037e8:	29803076 	st.w	$r22,$r3,12(0xc)
1c0037ec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0037f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0037f4:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c0037f8:	0396a9ad 	ori	$r13,$r13,0x5aa
1c0037fc:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c003800:	03400000 	andi	$r0,$r0,0x0
1c003804:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003808:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00380c:	4c000020 	jirl	$r0,$r1,0

1c003810 <WdgInit>:
WdgInit():
1c003810:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003814:	29803061 	st.w	$r1,$r3,12(0xc)
1c003818:	29802076 	st.w	$r22,$r3,8(0x8)
1c00381c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003820:	150000ec 	lu12i.w	$r12,-524281(0x80007)
1c003824:	03bffd84 	ori	$r4,$r12,0xfff
1c003828:	57ff33ff 	bl	-208(0xfffff30) # 1c003758 <WDG_SetWatchDog>
1c00382c:	03400000 	andi	$r0,$r0,0x0
1c003830:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003834:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003838:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00383c:	4c000020 	jirl	$r0,$r1,0

1c003840 <I2C_Init>:
I2C_Init():
1c003840:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003844:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003848:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00384c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003850:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003854:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c003858:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00385c:	1400f42c 	lu12i.w	$r12,1953(0x7a1)
1c003860:	0388018c 	ori	$r12,$r12,0x200
1c003864:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003868:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00386c:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c003870:	2900098d 	st.b	$r13,$r12,2(0x2)
1c003874:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003878:	2880018d 	ld.w	$r13,$r12,0
1c00387c:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c003880:	002135cc 	div.wu	$r12,$r14,$r13
1c003884:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c00388c <I2C_Init+0x4c>
1c003888:	002a0007 	break	0x7
1c00388c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003890:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003894:	0044898c 	srli.w	$r12,$r12,0x2
1c003898:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00389c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0038a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038a4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0038a8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0038ac:	2900018d 	st.b	$r13,$r12,0
1c0038b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038b4:	0044a18c 	srli.w	$r12,$r12,0x8
1c0038b8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0038bc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0038c0:	2900058d 	st.b	$r13,$r12,1(0x1)
1c0038c4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0038c8:	2a00118d 	ld.bu	$r13,$r12,4(0x4)
1c0038cc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0038d0:	2a00198c 	ld.bu	$r12,$r12,6(0x6)
1c0038d4:	001531ac 	or	$r12,$r13,$r12
1c0038d8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0038dc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0038e0:	2a001d8c 	ld.bu	$r12,$r12,7(0x7)
1c0038e4:	001531ac 	or	$r12,$r13,$r12
1c0038e8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0038ec:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c0038f0:	001531ac 	or	$r12,$r13,$r12
1c0038f4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0038f8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0038fc:	2900098d 	st.b	$r13,$r12,2(0x2)
1c003900:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003904:	2a00198c 	ld.bu	$r12,$r12,6(0x6)
1c003908:	40001180 	beqz	$r12,16(0x10) # 1c003918 <I2C_Init+0xd8>
1c00390c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003910:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c003914:	2900118d 	st.b	$r13,$r12,4(0x4)
1c003918:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00391c:	2a00158d 	ld.bu	$r13,$r12,5(0x5)
1c003920:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003924:	29001d8d 	st.b	$r13,$r12,7(0x7)
1c003928:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c00392c:	5401ac00 	bl	428(0x1ac) # 1c003ad8 <I2C_wait>
1c003930:	03400000 	andi	$r0,$r0,0x0
1c003934:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003938:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00393c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003940:	4c000020 	jirl	$r0,$r1,0

1c003944 <I2C_StructInit>:
I2C_StructInit():
1c003944:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003948:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00394c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003950:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003954:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003958:	1400030d 	lu12i.w	$r13,24(0x18)
1c00395c:	039a81ad 	ori	$r13,$r13,0x6a0
1c003960:	2980018d 	st.w	$r13,$r12,0
1c003964:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003968:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c00396c:	2900118d 	st.b	$r13,$r12,4(0x4)
1c003970:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003974:	0280a80d 	addi.w	$r13,$r0,42(0x2a)
1c003978:	2900158d 	st.b	$r13,$r12,5(0x5)
1c00397c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003980:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c003984:	2900198d 	st.b	$r13,$r12,6(0x6)
1c003988:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00398c:	29001d80 	st.b	$r0,$r12,7(0x7)
1c003990:	03400000 	andi	$r0,$r0,0x0
1c003994:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003998:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00399c:	4c000020 	jirl	$r0,$r1,0

1c0039a0 <I2C_GenerateSTART>:
I2C_GenerateSTART():
1c0039a0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0039a4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0039a8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0039ac:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0039b0:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c0039b4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0039b8:	40002980 	beqz	$r12,40(0x28) # 1c0039e0 <I2C_GenerateSTART+0x40>
1c0039bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039c0:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0039c4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0039c8:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c0039cc:	001531ac 	or	$r12,$r13,$r12
1c0039d0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0039d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039d8:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0039dc:	50002000 	b	32(0x20) # 1c0039fc <I2C_GenerateSTART+0x5c>
1c0039e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039e4:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0039e8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0039ec:	0341fd8c 	andi	$r12,$r12,0x7f
1c0039f0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0039f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039f8:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0039fc:	03400000 	andi	$r0,$r0,0x0
1c003a00:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003a04:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003a08:	4c000020 	jirl	$r0,$r1,0

1c003a0c <I2C_GenerateSTOP>:
I2C_GenerateSTOP():
1c003a0c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003a10:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003a14:	29806076 	st.w	$r22,$r3,24(0x18)
1c003a18:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003a1c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003a20:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c003a24:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003a28:	40002580 	beqz	$r12,36(0x24) # 1c003a4c <I2C_GenerateSTOP+0x40>
1c003a2c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a30:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003a34:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003a38:	0381018c 	ori	$r12,$r12,0x40
1c003a3c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003a40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a44:	2900118d 	st.b	$r13,$r12,4(0x4)
1c003a48:	50002400 	b	36(0x24) # 1c003a6c <I2C_GenerateSTOP+0x60>
1c003a4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a50:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003a54:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003a58:	02befc0c 	addi.w	$r12,$r0,-65(0xfbf)
1c003a5c:	0014b1ac 	and	$r12,$r13,$r12
1c003a60:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003a64:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a68:	2900118d 	st.b	$r13,$r12,4(0x4)
1c003a6c:	02806404 	addi.w	$r4,$r0,25(0x19)
1c003a70:	57f8ebff 	bl	-1816(0xffff8e8) # 1c003358 <delay_us>
1c003a74:	03400000 	andi	$r0,$r0,0x0
1c003a78:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003a7c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003a80:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003a84:	4c000020 	jirl	$r0,$r1,0

1c003a88 <I2C_SendData>:
I2C_SendData():
1c003a88:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003a8c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003a90:	29806076 	st.w	$r22,$r3,24(0x18)
1c003a94:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003a98:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003a9c:	001500ac 	move	$r12,$r5
1c003aa0:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c003aa4:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c003aa8:	54007800 	bl	120(0x78) # 1c003b20 <I2C_Unlock>
1c003aac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ab0:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c003ab4:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c003ab8:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c003abc:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c003ac0:	2900118d 	st.b	$r13,$r12,4(0x4)
1c003ac4:	03400000 	andi	$r0,$r0,0x0
1c003ac8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003acc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003ad0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003ad4:	4c000020 	jirl	$r0,$r1,0

1c003ad8 <I2C_wait>:
I2C_wait():
1c003ad8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003adc:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003ae0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003ae4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003ae8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003aec:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003af0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003af4:	50001000 	b	16(0x10) # 1c003b04 <I2C_wait+0x2c>
1c003af8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003afc:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003b00:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003b04:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003b08:	0340098c 	andi	$r12,$r12,0x2
1c003b0c:	47ffed9f 	bnez	$r12,-20(0x7fffec) # 1c003af8 <I2C_wait+0x20>
1c003b10:	03400000 	andi	$r0,$r0,0x0
1c003b14:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003b18:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003b1c:	4c000020 	jirl	$r0,$r1,0

1c003b20 <I2C_Unlock>:
I2C_Unlock():
1c003b20:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003b24:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003b28:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003b2c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003b30:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003b34:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003b38:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003b3c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003b40:	0340118c 	andi	$r12,$r12,0x4
1c003b44:	40002180 	beqz	$r12,32(0x20) # 1c003b64 <I2C_Unlock+0x44>
1c003b48:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003b4c:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003b50:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003b54:	0380118c 	ori	$r12,$r12,0x4
1c003b58:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003b5c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003b60:	2900118d 	st.b	$r13,$r12,4(0x4)
1c003b64:	03400000 	andi	$r0,$r0,0x0
1c003b68:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003b6c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003b70:	4c000020 	jirl	$r0,$r1,0

1c003b74 <Adc_powerOn>:
Adc_powerOn():
1c003b74:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003b78:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003b7c:	29806076 	st.w	$r22,$r3,24(0x18)
1c003b80:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003b84:	57f38fff 	bl	-3188(0xffff38c) # 1c002f10 <IsGlobalIntOpen>
1c003b88:	0015008c 	move	$r12,$r4
1c003b8c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003b90:	57f3bbff 	bl	-3144(0xffff3b8) # 1c002f48 <DisableInt>
1c003b94:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c003b98:	288001ac 	ld.w	$r12,$r13,0
1c003b9c:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c003ba0:	007041cc 	bstrins.w	$r12,$r14,0x10,0x10
1c003ba4:	298001ac 	st.w	$r12,$r13,0
1c003ba8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003bac:	40000980 	beqz	$r12,8(0x8) # 1c003bb4 <Adc_powerOn+0x40>
1c003bb0:	57f3bfff 	bl	-3140(0xffff3bc) # 1c002f6c <EnableInt>
1c003bb4:	03400000 	andi	$r0,$r0,0x0
1c003bb8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003bbc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003bc0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003bc4:	4c000020 	jirl	$r0,$r1,0

1c003bc8 <Adc_open>:
Adc_open():
1c003bc8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003bcc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003bd0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003bd4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003bd8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003bdc:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003be0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003be4:	001731ac 	sll.w	$r12,$r13,$r12
1c003be8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003bec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003bf0:	0340058c 	andi	$r12,$r12,0x1
1c003bf4:	40003580 	beqz	$r12,52(0x34) # 1c003c28 <Adc_open+0x60>
1c003bf8:	57f31bff 	bl	-3304(0xffff318) # 1c002f10 <IsGlobalIntOpen>
1c003bfc:	0015008c 	move	$r12,$r4
1c003c00:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c003c04:	57f347ff 	bl	-3260(0xffff344) # 1c002f48 <DisableInt>
1c003c08:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c003c0c:	288001ac 	ld.w	$r12,$r13,0
1c003c10:	0071440c 	bstrins.w	$r12,$r0,0x11,0x11
1c003c14:	298001ac 	st.w	$r12,$r13,0
1c003c18:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c003c1c:	40004980 	beqz	$r12,72(0x48) # 1c003c64 <Adc_open+0x9c>
1c003c20:	57f34fff 	bl	-3252(0xffff34c) # 1c002f6c <EnableInt>
1c003c24:	50004000 	b	64(0x40) # 1c003c64 <Adc_open+0x9c>
1c003c28:	57f2ebff 	bl	-3352(0xffff2e8) # 1c002f10 <IsGlobalIntOpen>
1c003c2c:	0015008c 	move	$r12,$r4
1c003c30:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c003c34:	57f317ff 	bl	-3308(0xffff314) # 1c002f48 <DisableInt>
1c003c38:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c3c:	0044918c 	srli.w	$r12,$r12,0x4
1c003c40:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c003c44:	03403d8c 	andi	$r12,$r12,0xf
1c003c48:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c003c4c:	288001ac 	ld.w	$r12,$r13,0
1c003c50:	007751cc 	bstrins.w	$r12,$r14,0x17,0x14
1c003c54:	298001ac 	st.w	$r12,$r13,0
1c003c58:	2a3faacc 	ld.bu	$r12,$r22,-22(0xfea)
1c003c5c:	40000980 	beqz	$r12,8(0x8) # 1c003c64 <Adc_open+0x9c>
1c003c60:	57f30fff 	bl	-3316(0xffff30c) # 1c002f6c <EnableInt>
1c003c64:	03400000 	andi	$r0,$r0,0x0
1c003c68:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003c6c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003c70:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003c74:	4c000020 	jirl	$r0,$r1,0

1c003c78 <Adc_Measure>:
Adc_Measure():
1c003c78:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003c7c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003c80:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003c84:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003c88:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c003c8c:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c003c90:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c003c94:	50008400 	b	132(0x84) # 1c003d18 <Adc_Measure+0xa0>
1c003c98:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003c9c:	0381b18c 	ori	$r12,$r12,0x6c
1c003ca0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c003ca4:	038401ad 	ori	$r13,$r13,0x100
1c003ca8:	2980018d 	st.w	$r13,$r12,0
1c003cac:	03400000 	andi	$r0,$r0,0x0
1c003cb0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003cb4:	0381b18c 	ori	$r12,$r12,0x6c
1c003cb8:	2880018c 	ld.w	$r12,$r12,0
1c003cbc:	0344018c 	andi	$r12,$r12,0x100
1c003cc0:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c003cb0 <Adc_Measure+0x38>
1c003cc4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003cc8:	0381c18c 	ori	$r12,$r12,0x70
1c003ccc:	2880018c 	ld.w	$r12,$r12,0
1c003cd0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003cd4:	037ffd8c 	andi	$r12,$r12,0xfff
1c003cd8:	297fa2cc 	st.h	$r12,$r22,-24(0xfe8)
1c003cdc:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c003ce0:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c003ce4:	6c00298d 	bgeu	$r12,$r13,40(0x28) # 1c003d0c <Adc_Measure+0x94>
1c003ce8:	2a7faacd 	ld.hu	$r13,$r22,-22(0xfea)
1c003cec:	2a7fa2cc 	ld.hu	$r12,$r22,-24(0xfe8)
1c003cf0:	001031ac 	add.w	$r12,$r13,$r12
1c003cf4:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c003cf8:	2a7fa2cd 	ld.hu	$r13,$r22,-24(0xfe8)
1c003cfc:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c003d00:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c003d0c <Adc_Measure+0x94>
1c003d04:	2a7fa2cc 	ld.hu	$r12,$r22,-24(0xfe8)
1c003d08:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c003d0c:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003d10:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003d14:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003d18:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c003d1c:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c003d20:	6fff798d 	bgeu	$r12,$r13,-136(0x3ff78) # 1c003c98 <Adc_Measure+0x20>
1c003d24:	2a7faacd 	ld.hu	$r13,$r22,-22(0xfea)
1c003d28:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c003d2c:	001131ad 	sub.w	$r13,$r13,$r12
1c003d30:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c003d34:	002031ae 	div.w	$r14,$r13,$r12
1c003d38:	5c000980 	bne	$r12,$r0,8(0x8) # 1c003d40 <Adc_Measure+0xc8>
1c003d3c:	002a0007 	break	0x7
1c003d40:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c003d44:	00150184 	move	$r4,$r12
1c003d48:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003d4c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003d50:	4c000020 	jirl	$r0,$r1,0

1c003d54 <Adc_getVoltage>:
Adc_getVoltage():
1c003d54:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003d58:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003d5c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003d60:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003d64:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003d68:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c003d6c:	57ff0fff 	bl	-244(0xfffff0c) # 1c003c78 <Adc_Measure>
1c003d70:	0015008c 	move	$r12,$r4
1c003d74:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003d78:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c003d7c:	57feffff 	bl	-260(0xffffefc) # 1c003c78 <Adc_Measure>
1c003d80:	0015008c 	move	$r12,$r4
1c003d84:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003d88:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003d8c:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c003d90:	001c31ad 	mul.w	$r13,$r13,$r12
1c003d94:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003d98:	002131ae 	div.wu	$r14,$r13,$r12
1c003d9c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c003da4 <Adc_getVoltage+0x50>
1c003da0:	002a0007 	break	0x7
1c003da4:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c003da8:	00150184 	move	$r4,$r12
1c003dac:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003db0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003db4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003db8:	4c000020 	jirl	$r0,$r1,0

1c003dbc <TOUCH_GetBaseVal>:
TOUCH_GetBaseVal():
1c003dbc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003dc0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003dc4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003dc8:	0015008c 	move	$r12,$r4
1c003dcc:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003dd0:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003dd4:	0040898c 	slli.w	$r12,$r12,0x2
1c003dd8:	0015018d 	move	$r13,$r12
1c003ddc:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003de0:	0381018c 	ori	$r12,$r12,0x40
1c003de4:	001031ac 	add.w	$r12,$r13,$r12
1c003de8:	2880018c 	ld.w	$r12,$r12,0
1c003dec:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003df0:	037ffd8c 	andi	$r12,$r12,0xfff
1c003df4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003df8:	00150184 	move	$r4,$r12
1c003dfc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003e00:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003e04:	4c000020 	jirl	$r0,$r1,0

1c003e08 <TOUCH_GetCountValue>:
TOUCH_GetCountValue():
1c003e08:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003e0c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003e10:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003e14:	0015008c 	move	$r12,$r4
1c003e18:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003e1c:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003e20:	0040898c 	slli.w	$r12,$r12,0x2
1c003e24:	0015018d 	move	$r13,$r12
1c003e28:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003e2c:	0382018c 	ori	$r12,$r12,0x80
1c003e30:	001031ac 	add.w	$r12,$r13,$r12
1c003e34:	2880018c 	ld.w	$r12,$r12,0
1c003e38:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003e3c:	037ffd8c 	andi	$r12,$r12,0xfff
1c003e40:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003e44:	00150184 	move	$r4,$r12
1c003e48:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003e4c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003e50:	4c000020 	jirl	$r0,$r1,0

1c003e54 <Printf_KeyChannel>:
Printf_KeyChannel():
1c003e54:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003e58:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003e5c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003e60:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003e64:	0015008c 	move	$r12,$r4
1c003e68:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c003e6c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003e70:	50003400 	b	52(0x34) # 1c003ea4 <Printf_KeyChannel+0x50>
1c003e74:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c003e78:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e7c:	001831ac 	sra.w	$r12,$r13,$r12
1c003e80:	0340058c 	andi	$r12,$r12,0x1
1c003e84:	40001580 	beqz	$r12,20(0x14) # 1c003e98 <Printf_KeyChannel+0x44>
1c003e88:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c003e8c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003e90:	02b1c084 	addi.w	$r4,$r4,-912(0xc70)
1c003e94:	57dbdbff 	bl	-9256(0xfffdbd8) # 1c001a6c <myprintf>
1c003e98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e9c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003ea0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003ea4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003ea8:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003eac:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c003e74 <Printf_KeyChannel+0x20>
1c003eb0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003eb4:	02b14084 	addi.w	$r4,$r4,-944(0xc50)
1c003eb8:	57dbb7ff 	bl	-9292(0xfffdbb4) # 1c001a6c <myprintf>
1c003ebc:	03400000 	andi	$r0,$r0,0x0
1c003ec0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003ec4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003ec8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003ecc:	4c000020 	jirl	$r0,$r1,0

1c003ed0 <Printf_KeyType>:
Printf_KeyType():
1c003ed0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003ed4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003ed8:	29806076 	st.w	$r22,$r3,24(0x18)
1c003edc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003ee0:	0015008c 	move	$r12,$r4
1c003ee4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003ee8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003eec:	0340058c 	andi	$r12,$r12,0x1
1c003ef0:	40001180 	beqz	$r12,16(0x10) # 1c003f00 <Printf_KeyType+0x30>
1c003ef4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003ef8:	02b04084 	addi.w	$r4,$r4,-1008(0xc10)
1c003efc:	57db73ff 	bl	-9360(0xfffdb70) # 1c001a6c <myprintf>
1c003f00:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003f04:	0340098c 	andi	$r12,$r12,0x2
1c003f08:	40001180 	beqz	$r12,16(0x10) # 1c003f18 <Printf_KeyType+0x48>
1c003f0c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003f10:	02b00084 	addi.w	$r4,$r4,-1024(0xc00)
1c003f14:	57db5bff 	bl	-9384(0xfffdb58) # 1c001a6c <myprintf>
1c003f18:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003f1c:	0340118c 	andi	$r12,$r12,0x4
1c003f20:	40001180 	beqz	$r12,16(0x10) # 1c003f30 <Printf_KeyType+0x60>
1c003f24:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003f28:	02afc084 	addi.w	$r4,$r4,-1040(0xbf0)
1c003f2c:	57db43ff 	bl	-9408(0xfffdb40) # 1c001a6c <myprintf>
1c003f30:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003f34:	0340218c 	andi	$r12,$r12,0x8
1c003f38:	40001180 	beqz	$r12,16(0x10) # 1c003f48 <Printf_KeyType+0x78>
1c003f3c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003f40:	02af9084 	addi.w	$r4,$r4,-1052(0xbe4)
1c003f44:	57db2bff 	bl	-9432(0xfffdb28) # 1c001a6c <myprintf>
1c003f48:	03400000 	andi	$r0,$r0,0x0
1c003f4c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003f50:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003f54:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003f58:	4c000020 	jirl	$r0,$r1,0

1c003f5c <Printf_KeyVal>:
Printf_KeyVal():
1c003f5c:	02bd4063 	addi.w	$r3,$r3,-176(0xf50)
1c003f60:	2982b061 	st.w	$r1,$r3,172(0xac)
1c003f64:	2982a076 	st.w	$r22,$r3,168(0xa8)
1c003f68:	0282c076 	addi.w	$r22,$r3,176(0xb0)
1c003f6c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003f70:	5000d800 	b	216(0xd8) # 1c004048 <Printf_KeyVal+0xec>
1c003f74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f78:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003f7c:	00150184 	move	$r4,$r12
1c003f80:	57fe8bff 	bl	-376(0xffffe88) # 1c003e08 <TOUCH_GetCountValue>
1c003f84:	0015008c 	move	$r12,$r4
1c003f88:	0015018d 	move	$r13,$r12
1c003f8c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f90:	0040898c 	slli.w	$r12,$r12,0x2
1c003f94:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003f98:	001031cc 	add.w	$r12,$r14,$r12
1c003f9c:	29bdb18d 	st.w	$r13,$r12,-148(0xf6c)
1c003fa0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003fa4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003fa8:	00150184 	move	$r4,$r12
1c003fac:	57fe13ff 	bl	-496(0xffffe10) # 1c003dbc <TOUCH_GetBaseVal>
1c003fb0:	0015008c 	move	$r12,$r4
1c003fb4:	0015018d 	move	$r13,$r12
1c003fb8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003fbc:	0040898c 	slli.w	$r12,$r12,0x2
1c003fc0:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003fc4:	001031cc 	add.w	$r12,$r14,$r12
1c003fc8:	29be718d 	st.w	$r13,$r12,-100(0xf9c)
1c003fcc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003fd0:	0040898c 	slli.w	$r12,$r12,0x2
1c003fd4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003fd8:	001031ac 	add.w	$r12,$r13,$r12
1c003fdc:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003fe0:	40004980 	beqz	$r12,72(0x48) # 1c004028 <Printf_KeyVal+0xcc>
1c003fe4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003fe8:	0040898c 	slli.w	$r12,$r12,0x2
1c003fec:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003ff0:	001031ac 	add.w	$r12,$r13,$r12
1c003ff4:	28be718d 	ld.w	$r13,$r12,-100(0xf9c)
1c003ff8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ffc:	0040898c 	slli.w	$r12,$r12,0x2
1c004000:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c004004:	001031cc 	add.w	$r12,$r14,$r12
1c004008:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c00400c:	001131ad 	sub.w	$r13,$r13,$r12
1c004010:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004014:	0040898c 	slli.w	$r12,$r12,0x2
1c004018:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c00401c:	001031cc 	add.w	$r12,$r14,$r12
1c004020:	29bf318d 	st.w	$r13,$r12,-52(0xfcc)
1c004024:	50001800 	b	24(0x18) # 1c00403c <Printf_KeyVal+0xe0>
1c004028:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00402c:	0040898c 	slli.w	$r12,$r12,0x2
1c004030:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c004034:	001031ac 	add.w	$r12,$r13,$r12
1c004038:	29bf3180 	st.w	$r0,$r12,-52(0xfcc)
1c00403c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004040:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004044:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004048:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00404c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c004050:	67ff258d 	bge	$r12,$r13,-220(0x3ff24) # 1c003f74 <Printf_KeyVal+0x18>
1c004054:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004058:	02ab6084 	addi.w	$r4,$r4,-1320(0xad8)
1c00405c:	57da13ff 	bl	-9712(0xfffda10) # 1c001a6c <myprintf>
1c004060:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004064:	02abd084 	addi.w	$r4,$r4,-1292(0xaf4)
1c004068:	57da07ff 	bl	-9724(0xfffda04) # 1c001a6c <myprintf>
1c00406c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004070:	50003400 	b	52(0x34) # 1c0040a4 <Printf_KeyVal+0x148>
1c004074:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004078:	0040898c 	slli.w	$r12,$r12,0x2
1c00407c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c004080:	001031ac 	add.w	$r12,$r13,$r12
1c004084:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c004088:	00150185 	move	$r5,$r12
1c00408c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004090:	02ab4084 	addi.w	$r4,$r4,-1328(0xad0)
1c004094:	57d9dbff 	bl	-9768(0xfffd9d8) # 1c001a6c <myprintf>
1c004098:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00409c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0040a0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0040a4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0040a8:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0040ac:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c004074 <Printf_KeyVal+0x118>
1c0040b0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0040b4:	02aad084 	addi.w	$r4,$r4,-1356(0xab4)
1c0040b8:	57d9b7ff 	bl	-9804(0xfffd9b4) # 1c001a6c <myprintf>
1c0040bc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0040c0:	50003400 	b	52(0x34) # 1c0040f4 <Printf_KeyVal+0x198>
1c0040c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0040c8:	0040898c 	slli.w	$r12,$r12,0x2
1c0040cc:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0040d0:	001031ac 	add.w	$r12,$r13,$r12
1c0040d4:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c0040d8:	00150185 	move	$r5,$r12
1c0040dc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0040e0:	02aa0084 	addi.w	$r4,$r4,-1408(0xa80)
1c0040e4:	57d98bff 	bl	-9848(0xfffd988) # 1c001a6c <myprintf>
1c0040e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0040ec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0040f0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0040f4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0040f8:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0040fc:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c0040c4 <Printf_KeyVal+0x168>
1c004100:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004104:	02a9c084 	addi.w	$r4,$r4,-1424(0xa70)
1c004108:	57d967ff 	bl	-9884(0xfffd964) # 1c001a6c <myprintf>
1c00410c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004110:	50007400 	b	116(0x74) # 1c004184 <Printf_KeyVal+0x228>
1c004114:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004118:	0040898c 	slli.w	$r12,$r12,0x2
1c00411c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c004120:	001031ac 	add.w	$r12,$r13,$r12
1c004124:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c004128:	64002d80 	bge	$r12,$r0,44(0x2c) # 1c004154 <Printf_KeyVal+0x1f8>
1c00412c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004130:	0040898c 	slli.w	$r12,$r12,0x2
1c004134:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c004138:	001031ac 	add.w	$r12,$r13,$r12
1c00413c:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c004140:	00150185 	move	$r5,$r12
1c004144:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004148:	02a8e084 	addi.w	$r4,$r4,-1480(0xa38)
1c00414c:	57d923ff 	bl	-9952(0xfffd920) # 1c001a6c <myprintf>
1c004150:	50002800 	b	40(0x28) # 1c004178 <Printf_KeyVal+0x21c>
1c004154:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004158:	0040898c 	slli.w	$r12,$r12,0x2
1c00415c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c004160:	001031ac 	add.w	$r12,$r13,$r12
1c004164:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c004168:	00150185 	move	$r5,$r12
1c00416c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004170:	02a86084 	addi.w	$r4,$r4,-1512(0xa18)
1c004174:	57d8fbff 	bl	-9992(0xfffd8f8) # 1c001a6c <myprintf>
1c004178:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00417c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004180:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004184:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004188:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c00418c:	67ff898d 	bge	$r12,$r13,-120(0x3ff88) # 1c004114 <Printf_KeyVal+0x1b8>
1c004190:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004194:	02a5c084 	addi.w	$r4,$r4,-1680(0x970)
1c004198:	57d8d7ff 	bl	-10028(0xfffd8d4) # 1c001a6c <myprintf>
1c00419c:	03400000 	andi	$r0,$r0,0x0
1c0041a0:	2882b061 	ld.w	$r1,$r3,172(0xac)
1c0041a4:	2882a076 	ld.w	$r22,$r3,168(0xa8)
1c0041a8:	0282c063 	addi.w	$r3,$r3,176(0xb0)
1c0041ac:	4c000020 	jirl	$r0,$r1,0

1c0041b0 <TIM_GetITStatus>:
TIM_GetITStatus():
1c0041b0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0041b4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0041b8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0041bc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0041c0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0041c4:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0041c8:	2880018d 	ld.w	$r13,$r12,0
1c0041cc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0041d0:	0014b1ac 	and	$r12,$r13,$r12
1c0041d4:	40001180 	beqz	$r12,16(0x10) # 1c0041e4 <TIM_GetITStatus+0x34>
1c0041d8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0041dc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0041e0:	50000800 	b	8(0x8) # 1c0041e8 <TIM_GetITStatus+0x38>
1c0041e4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0041e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0041ec:	00150184 	move	$r4,$r12
1c0041f0:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0041f4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0041f8:	4c000020 	jirl	$r0,$r1,0

1c0041fc <TIM_ClearIT>:
TIM_ClearIT():
1c0041fc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004200:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004204:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004208:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00420c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004210:	2880018e 	ld.w	$r14,$r12,0
1c004214:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004218:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00421c:	001535cd 	or	$r13,$r14,$r13
1c004220:	2980018d 	st.w	$r13,$r12,0
1c004224:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004228:	03800d8c 	ori	$r12,$r12,0x3
1c00422c:	2a00018c 	ld.bu	$r12,$r12,0
1c004230:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004234:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004238:	03800d8c 	ori	$r12,$r12,0x3
1c00423c:	038005ad 	ori	$r13,$r13,0x1
1c004240:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c004244:	2900018d 	st.b	$r13,$r12,0
1c004248:	03400000 	andi	$r0,$r0,0x0
1c00424c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004250:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004254:	4c000020 	jirl	$r0,$r1,0

1c004258 <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c004258:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00425c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004260:	29802076 	st.w	$r22,$r3,8(0x8)
1c004264:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004268:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00426c:	02ab70c6 	addi.w	$r6,$r6,-1316(0xadc)
1c004270:	02804805 	addi.w	$r5,$r0,18(0x12)
1c004274:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004278:	02a46084 	addi.w	$r4,$r4,-1768(0x918)
1c00427c:	57d7f3ff 	bl	-10256(0xfffd7f0) # 1c001a6c <myprintf>
1c004280:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004284:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004288:	03808184 	ori	$r4,$r12,0x20
1c00428c:	57f40bff 	bl	-3064(0xffff408) # 1c003694 <EXTI_ClearITPendingBit>
1c004290:	03400000 	andi	$r0,$r0,0x0
1c004294:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004298:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00429c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0042a0:	4c000020 	jirl	$r0,$r1,0

1c0042a4 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c0042a4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0042a8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0042ac:	29802076 	st.w	$r22,$r3,8(0x8)
1c0042b0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0042b4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0042b8:	02aaa0c6 	addi.w	$r6,$r6,-1368(0xaa8)
1c0042bc:	02805c05 	addi.w	$r5,$r0,23(0x17)
1c0042c0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0042c4:	02a33084 	addi.w	$r4,$r4,-1844(0x8cc)
1c0042c8:	57d7a7ff 	bl	-10332(0xfffd7a4) # 1c001a6c <myprintf>
1c0042cc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0042d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0042d4:	03808184 	ori	$r4,$r12,0x20
1c0042d8:	57f3bfff 	bl	-3140(0xffff3bc) # 1c003694 <EXTI_ClearITPendingBit>
1c0042dc:	03400000 	andi	$r0,$r0,0x0
1c0042e0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0042e4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0042e8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0042ec:	4c000020 	jirl	$r0,$r1,0

1c0042f0 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c0042f0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0042f4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0042f8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0042fc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004300:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004304:	02a9d0c6 	addi.w	$r6,$r6,-1420(0xa74)
1c004308:	02807005 	addi.w	$r5,$r0,28(0x1c)
1c00430c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004310:	02a20084 	addi.w	$r4,$r4,-1920(0x880)
1c004314:	57d75bff 	bl	-10408(0xfffd758) # 1c001a6c <myprintf>
1c004318:	02801005 	addi.w	$r5,$r0,4(0x4)
1c00431c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004320:	03808184 	ori	$r4,$r12,0x20
1c004324:	57f373ff 	bl	-3216(0xffff370) # 1c003694 <EXTI_ClearITPendingBit>
1c004328:	03400000 	andi	$r0,$r0,0x0
1c00432c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004330:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004334:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004338:	4c000020 	jirl	$r0,$r1,0

1c00433c <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c00433c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004340:	29803061 	st.w	$r1,$r3,12(0xc)
1c004344:	29802076 	st.w	$r22,$r3,8(0x8)
1c004348:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00434c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004350:	02a900c6 	addi.w	$r6,$r6,-1472(0xa40)
1c004354:	02808405 	addi.w	$r5,$r0,33(0x21)
1c004358:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00435c:	02a0d084 	addi.w	$r4,$r4,-1996(0x834)
1c004360:	57d70fff 	bl	-10484(0xfffd70c) # 1c001a6c <myprintf>
1c004364:	02802005 	addi.w	$r5,$r0,8(0x8)
1c004368:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00436c:	03808184 	ori	$r4,$r12,0x20
1c004370:	57f327ff 	bl	-3292(0xffff324) # 1c003694 <EXTI_ClearITPendingBit>
1c004374:	03400000 	andi	$r0,$r0,0x0
1c004378:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00437c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004380:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004384:	4c000020 	jirl	$r0,$r1,0

1c004388 <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c004388:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00438c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004390:	29802076 	st.w	$r22,$r3,8(0x8)
1c004394:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004398:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00439c:	02a830c6 	addi.w	$r6,$r6,-1524(0xa0c)
1c0043a0:	02809805 	addi.w	$r5,$r0,38(0x26)
1c0043a4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0043a8:	029fa084 	addi.w	$r4,$r4,2024(0x7e8)
1c0043ac:	57d6c3ff 	bl	-10560(0xfffd6c0) # 1c001a6c <myprintf>
1c0043b0:	02804005 	addi.w	$r5,$r0,16(0x10)
1c0043b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0043b8:	03808184 	ori	$r4,$r12,0x20
1c0043bc:	57f2dbff 	bl	-3368(0xffff2d8) # 1c003694 <EXTI_ClearITPendingBit>
1c0043c0:	03400000 	andi	$r0,$r0,0x0
1c0043c4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0043c8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0043cc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0043d0:	4c000020 	jirl	$r0,$r1,0

1c0043d4 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c0043d4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0043d8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0043dc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0043e0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0043e4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0043e8:	02a760c6 	addi.w	$r6,$r6,-1576(0x9d8)
1c0043ec:	0280ac05 	addi.w	$r5,$r0,43(0x2b)
1c0043f0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0043f4:	029e7084 	addi.w	$r4,$r4,1948(0x79c)
1c0043f8:	57d677ff 	bl	-10636(0xfffd674) # 1c001a6c <myprintf>
1c0043fc:	02808005 	addi.w	$r5,$r0,32(0x20)
1c004400:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004404:	03808184 	ori	$r4,$r12,0x20
1c004408:	57f28fff 	bl	-3444(0xffff28c) # 1c003694 <EXTI_ClearITPendingBit>
1c00440c:	03400000 	andi	$r0,$r0,0x0
1c004410:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004414:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004418:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00441c:	4c000020 	jirl	$r0,$r1,0

1c004420 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c004420:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004424:	29803061 	st.w	$r1,$r3,12(0xc)
1c004428:	29802076 	st.w	$r22,$r3,8(0x8)
1c00442c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004430:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004434:	02a690c6 	addi.w	$r6,$r6,-1628(0x9a4)
1c004438:	0280c005 	addi.w	$r5,$r0,48(0x30)
1c00443c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004440:	029d4084 	addi.w	$r4,$r4,1872(0x750)
1c004444:	57d62bff 	bl	-10712(0xfffd628) # 1c001a6c <myprintf>
1c004448:	02810005 	addi.w	$r5,$r0,64(0x40)
1c00444c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004450:	03808184 	ori	$r4,$r12,0x20
1c004454:	57f243ff 	bl	-3520(0xffff240) # 1c003694 <EXTI_ClearITPendingBit>
1c004458:	03400000 	andi	$r0,$r0,0x0
1c00445c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004460:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004464:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004468:	4c000020 	jirl	$r0,$r1,0

1c00446c <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c00446c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004470:	29803061 	st.w	$r1,$r3,12(0xc)
1c004474:	29802076 	st.w	$r22,$r3,8(0x8)
1c004478:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00447c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004480:	02a5c0c6 	addi.w	$r6,$r6,-1680(0x970)
1c004484:	0280d405 	addi.w	$r5,$r0,53(0x35)
1c004488:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00448c:	029c1084 	addi.w	$r4,$r4,1796(0x704)
1c004490:	57d5dfff 	bl	-10788(0xfffd5dc) # 1c001a6c <myprintf>
1c004494:	02820005 	addi.w	$r5,$r0,128(0x80)
1c004498:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00449c:	03808184 	ori	$r4,$r12,0x20
1c0044a0:	57f1f7ff 	bl	-3596(0xffff1f4) # 1c003694 <EXTI_ClearITPendingBit>
1c0044a4:	03400000 	andi	$r0,$r0,0x0
1c0044a8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0044ac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0044b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0044b4:	4c000020 	jirl	$r0,$r1,0

1c0044b8 <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c0044b8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0044bc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0044c0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0044c4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0044c8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0044cc:	02a4f0c6 	addi.w	$r6,$r6,-1732(0x93c)
1c0044d0:	0280e805 	addi.w	$r5,$r0,58(0x3a)
1c0044d4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0044d8:	029ae084 	addi.w	$r4,$r4,1720(0x6b8)
1c0044dc:	57d593ff 	bl	-10864(0xfffd590) # 1c001a6c <myprintf>
1c0044e0:	02840005 	addi.w	$r5,$r0,256(0x100)
1c0044e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0044e8:	03808184 	ori	$r4,$r12,0x20
1c0044ec:	57f1abff 	bl	-3672(0xffff1a8) # 1c003694 <EXTI_ClearITPendingBit>
1c0044f0:	03400000 	andi	$r0,$r0,0x0
1c0044f4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0044f8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0044fc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004500:	4c000020 	jirl	$r0,$r1,0

1c004504 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c004504:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004508:	29803061 	st.w	$r1,$r3,12(0xc)
1c00450c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004510:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004514:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004518:	02a420c6 	addi.w	$r6,$r6,-1784(0x908)
1c00451c:	0280fc05 	addi.w	$r5,$r0,63(0x3f)
1c004520:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004524:	0299b084 	addi.w	$r4,$r4,1644(0x66c)
1c004528:	57d547ff 	bl	-10940(0xfffd544) # 1c001a6c <myprintf>
1c00452c:	02880005 	addi.w	$r5,$r0,512(0x200)
1c004530:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004534:	03808184 	ori	$r4,$r12,0x20
1c004538:	57f15fff 	bl	-3748(0xffff15c) # 1c003694 <EXTI_ClearITPendingBit>
1c00453c:	03400000 	andi	$r0,$r0,0x0
1c004540:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004544:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004548:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00454c:	4c000020 	jirl	$r0,$r1,0

1c004550 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c004550:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004554:	29803061 	st.w	$r1,$r3,12(0xc)
1c004558:	29802076 	st.w	$r22,$r3,8(0x8)
1c00455c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004560:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004564:	02a350c6 	addi.w	$r6,$r6,-1836(0x8d4)
1c004568:	02811005 	addi.w	$r5,$r0,68(0x44)
1c00456c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004570:	02988084 	addi.w	$r4,$r4,1568(0x620)
1c004574:	57d4fbff 	bl	-11016(0xfffd4f8) # 1c001a6c <myprintf>
1c004578:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c00457c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004580:	03808184 	ori	$r4,$r12,0x20
1c004584:	57f113ff 	bl	-3824(0xffff110) # 1c003694 <EXTI_ClearITPendingBit>
1c004588:	03400000 	andi	$r0,$r0,0x0
1c00458c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004590:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004594:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004598:	4c000020 	jirl	$r0,$r1,0

1c00459c <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c00459c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0045a0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045a4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0045a8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0045ac:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0045b0:	02a280c6 	addi.w	$r6,$r6,-1888(0x8a0)
1c0045b4:	02812405 	addi.w	$r5,$r0,73(0x49)
1c0045b8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0045bc:	02975084 	addi.w	$r4,$r4,1492(0x5d4)
1c0045c0:	57d4afff 	bl	-11092(0xfffd4ac) # 1c001a6c <myprintf>
1c0045c4:	03a00005 	ori	$r5,$r0,0x800
1c0045c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0045cc:	03808184 	ori	$r4,$r12,0x20
1c0045d0:	57f0c7ff 	bl	-3900(0xffff0c4) # 1c003694 <EXTI_ClearITPendingBit>
1c0045d4:	03400000 	andi	$r0,$r0,0x0
1c0045d8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0045dc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0045e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0045e4:	4c000020 	jirl	$r0,$r1,0

1c0045e8 <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c0045e8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0045ec:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045f0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0045f4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0045f8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0045fc:	02a1b0c6 	addi.w	$r6,$r6,-1940(0x86c)
1c004600:	02813805 	addi.w	$r5,$r0,78(0x4e)
1c004604:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004608:	02962084 	addi.w	$r4,$r4,1416(0x588)
1c00460c:	57d463ff 	bl	-11168(0xfffd460) # 1c001a6c <myprintf>
1c004610:	14000025 	lu12i.w	$r5,1(0x1)
1c004614:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004618:	03808184 	ori	$r4,$r12,0x20
1c00461c:	57f07bff 	bl	-3976(0xffff078) # 1c003694 <EXTI_ClearITPendingBit>
1c004620:	03400000 	andi	$r0,$r0,0x0
1c004624:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004628:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00462c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004630:	4c000020 	jirl	$r0,$r1,0

1c004634 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c004634:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004638:	29803061 	st.w	$r1,$r3,12(0xc)
1c00463c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004640:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004644:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004648:	02a0e0c6 	addi.w	$r6,$r6,-1992(0x838)
1c00464c:	02814c05 	addi.w	$r5,$r0,83(0x53)
1c004650:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004654:	0294f084 	addi.w	$r4,$r4,1340(0x53c)
1c004658:	57d417ff 	bl	-11244(0xfffd414) # 1c001a6c <myprintf>
1c00465c:	14000045 	lu12i.w	$r5,2(0x2)
1c004660:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004664:	03808184 	ori	$r4,$r12,0x20
1c004668:	57f02fff 	bl	-4052(0xffff02c) # 1c003694 <EXTI_ClearITPendingBit>
1c00466c:	03400000 	andi	$r0,$r0,0x0
1c004670:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004674:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004678:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00467c:	4c000020 	jirl	$r0,$r1,0

1c004680 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c004680:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004684:	29803061 	st.w	$r1,$r3,12(0xc)
1c004688:	29802076 	st.w	$r22,$r3,8(0x8)
1c00468c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004690:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004694:	02a010c6 	addi.w	$r6,$r6,-2044(0x804)
1c004698:	02816005 	addi.w	$r5,$r0,88(0x58)
1c00469c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0046a0:	0293c084 	addi.w	$r4,$r4,1264(0x4f0)
1c0046a4:	57d3cbff 	bl	-11320(0xfffd3c8) # 1c001a6c <myprintf>
1c0046a8:	14000085 	lu12i.w	$r5,4(0x4)
1c0046ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0046b0:	03808184 	ori	$r4,$r12,0x20
1c0046b4:	57efe3ff 	bl	-4128(0xfffefe0) # 1c003694 <EXTI_ClearITPendingBit>
1c0046b8:	03400000 	andi	$r0,$r0,0x0
1c0046bc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0046c0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0046c4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0046c8:	4c000020 	jirl	$r0,$r1,0

1c0046cc <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c0046cc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0046d0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0046d4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0046d8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0046dc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0046e0:	029f40c6 	addi.w	$r6,$r6,2000(0x7d0)
1c0046e4:	02817405 	addi.w	$r5,$r0,93(0x5d)
1c0046e8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0046ec:	02929084 	addi.w	$r4,$r4,1188(0x4a4)
1c0046f0:	57d37fff 	bl	-11396(0xfffd37c) # 1c001a6c <myprintf>
1c0046f4:	14000105 	lu12i.w	$r5,8(0x8)
1c0046f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0046fc:	03808184 	ori	$r4,$r12,0x20
1c004700:	57ef97ff 	bl	-4204(0xfffef94) # 1c003694 <EXTI_ClearITPendingBit>
1c004704:	03400000 	andi	$r0,$r0,0x0
1c004708:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00470c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004710:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004714:	4c000020 	jirl	$r0,$r1,0

1c004718 <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c004718:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00471c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004720:	29802076 	st.w	$r22,$r3,8(0x8)
1c004724:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004728:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00472c:	029e70c6 	addi.w	$r6,$r6,1948(0x79c)
1c004730:	02818c05 	addi.w	$r5,$r0,99(0x63)
1c004734:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004738:	02916084 	addi.w	$r4,$r4,1112(0x458)
1c00473c:	57d333ff 	bl	-11472(0xfffd330) # 1c001a6c <myprintf>
1c004740:	14000205 	lu12i.w	$r5,16(0x10)
1c004744:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004748:	03808184 	ori	$r4,$r12,0x20
1c00474c:	57ef4bff 	bl	-4280(0xfffef48) # 1c003694 <EXTI_ClearITPendingBit>
1c004750:	03400000 	andi	$r0,$r0,0x0
1c004754:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004758:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00475c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004760:	4c000020 	jirl	$r0,$r1,0

1c004764 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c004764:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004768:	29803061 	st.w	$r1,$r3,12(0xc)
1c00476c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004770:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004774:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004778:	029da0c6 	addi.w	$r6,$r6,1896(0x768)
1c00477c:	0281a005 	addi.w	$r5,$r0,104(0x68)
1c004780:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004784:	02903084 	addi.w	$r4,$r4,1036(0x40c)
1c004788:	57d2e7ff 	bl	-11548(0xfffd2e4) # 1c001a6c <myprintf>
1c00478c:	14000405 	lu12i.w	$r5,32(0x20)
1c004790:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004794:	03808184 	ori	$r4,$r12,0x20
1c004798:	57eeffff 	bl	-4356(0xfffeefc) # 1c003694 <EXTI_ClearITPendingBit>
1c00479c:	03400000 	andi	$r0,$r0,0x0
1c0047a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0047a4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0047a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0047ac:	4c000020 	jirl	$r0,$r1,0

1c0047b0 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c0047b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0047b4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0047b8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0047bc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0047c0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0047c4:	029cd0c6 	addi.w	$r6,$r6,1844(0x734)
1c0047c8:	0281b405 	addi.w	$r5,$r0,109(0x6d)
1c0047cc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0047d0:	028f0084 	addi.w	$r4,$r4,960(0x3c0)
1c0047d4:	57d29bff 	bl	-11624(0xfffd298) # 1c001a6c <myprintf>
1c0047d8:	14000805 	lu12i.w	$r5,64(0x40)
1c0047dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0047e0:	03808184 	ori	$r4,$r12,0x20
1c0047e4:	57eeb3ff 	bl	-4432(0xfffeeb0) # 1c003694 <EXTI_ClearITPendingBit>
1c0047e8:	03400000 	andi	$r0,$r0,0x0
1c0047ec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0047f0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0047f4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0047f8:	4c000020 	jirl	$r0,$r1,0

1c0047fc <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c0047fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004800:	29803061 	st.w	$r1,$r3,12(0xc)
1c004804:	29802076 	st.w	$r22,$r3,8(0x8)
1c004808:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00480c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004810:	029c00c6 	addi.w	$r6,$r6,1792(0x700)
1c004814:	0281c805 	addi.w	$r5,$r0,114(0x72)
1c004818:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00481c:	028dd084 	addi.w	$r4,$r4,884(0x374)
1c004820:	57d24fff 	bl	-11700(0xfffd24c) # 1c001a6c <myprintf>
1c004824:	14001005 	lu12i.w	$r5,128(0x80)
1c004828:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00482c:	03808184 	ori	$r4,$r12,0x20
1c004830:	57ee67ff 	bl	-4508(0xfffee64) # 1c003694 <EXTI_ClearITPendingBit>
1c004834:	03400000 	andi	$r0,$r0,0x0
1c004838:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00483c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004840:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004844:	4c000020 	jirl	$r0,$r1,0

1c004848 <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c004848:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00484c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004850:	29802076 	st.w	$r22,$r3,8(0x8)
1c004854:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004858:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00485c:	029b30c6 	addi.w	$r6,$r6,1740(0x6cc)
1c004860:	0281dc05 	addi.w	$r5,$r0,119(0x77)
1c004864:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004868:	028ca084 	addi.w	$r4,$r4,808(0x328)
1c00486c:	57d203ff 	bl	-11776(0xfffd200) # 1c001a6c <myprintf>
1c004870:	14002005 	lu12i.w	$r5,256(0x100)
1c004874:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004878:	03808184 	ori	$r4,$r12,0x20
1c00487c:	57ee1bff 	bl	-4584(0xfffee18) # 1c003694 <EXTI_ClearITPendingBit>
1c004880:	03400000 	andi	$r0,$r0,0x0
1c004884:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004888:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00488c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004890:	4c000020 	jirl	$r0,$r1,0

1c004894 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c004894:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004898:	29803061 	st.w	$r1,$r3,12(0xc)
1c00489c:	29802076 	st.w	$r22,$r3,8(0x8)
1c0048a0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0048a4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0048a8:	029a60c6 	addi.w	$r6,$r6,1688(0x698)
1c0048ac:	0281f005 	addi.w	$r5,$r0,124(0x7c)
1c0048b0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0048b4:	028b7084 	addi.w	$r4,$r4,732(0x2dc)
1c0048b8:	57d1b7ff 	bl	-11852(0xfffd1b4) # 1c001a6c <myprintf>
1c0048bc:	14004005 	lu12i.w	$r5,512(0x200)
1c0048c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0048c4:	03808184 	ori	$r4,$r12,0x20
1c0048c8:	57edcfff 	bl	-4660(0xfffedcc) # 1c003694 <EXTI_ClearITPendingBit>
1c0048cc:	03400000 	andi	$r0,$r0,0x0
1c0048d0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0048d4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0048d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0048dc:	4c000020 	jirl	$r0,$r1,0

1c0048e0 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c0048e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0048e4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0048e8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0048ec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0048f0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0048f4:	029990c6 	addi.w	$r6,$r6,1636(0x664)
1c0048f8:	02820405 	addi.w	$r5,$r0,129(0x81)
1c0048fc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004900:	028a4084 	addi.w	$r4,$r4,656(0x290)
1c004904:	57d16bff 	bl	-11928(0xfffd168) # 1c001a6c <myprintf>
1c004908:	14008005 	lu12i.w	$r5,1024(0x400)
1c00490c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004910:	03808184 	ori	$r4,$r12,0x20
1c004914:	57ed83ff 	bl	-4736(0xfffed80) # 1c003694 <EXTI_ClearITPendingBit>
1c004918:	03400000 	andi	$r0,$r0,0x0
1c00491c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004920:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004924:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004928:	4c000020 	jirl	$r0,$r1,0

1c00492c <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c00492c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004930:	29803061 	st.w	$r1,$r3,12(0xc)
1c004934:	29802076 	st.w	$r22,$r3,8(0x8)
1c004938:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00493c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004940:	0298c0c6 	addi.w	$r6,$r6,1584(0x630)
1c004944:	02821805 	addi.w	$r5,$r0,134(0x86)
1c004948:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00494c:	02891084 	addi.w	$r4,$r4,580(0x244)
1c004950:	57d11fff 	bl	-12004(0xfffd11c) # 1c001a6c <myprintf>
1c004954:	14010005 	lu12i.w	$r5,2048(0x800)
1c004958:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00495c:	03808184 	ori	$r4,$r12,0x20
1c004960:	57ed37ff 	bl	-4812(0xfffed34) # 1c003694 <EXTI_ClearITPendingBit>
1c004964:	03400000 	andi	$r0,$r0,0x0
1c004968:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00496c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004970:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004974:	4c000020 	jirl	$r0,$r1,0

1c004978 <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c004978:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00497c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004980:	29802076 	st.w	$r22,$r3,8(0x8)
1c004984:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004988:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00498c:	0297f0c6 	addi.w	$r6,$r6,1532(0x5fc)
1c004990:	02822c05 	addi.w	$r5,$r0,139(0x8b)
1c004994:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004998:	0287e084 	addi.w	$r4,$r4,504(0x1f8)
1c00499c:	57d0d3ff 	bl	-12080(0xfffd0d0) # 1c001a6c <myprintf>
1c0049a0:	14020005 	lu12i.w	$r5,4096(0x1000)
1c0049a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0049a8:	03808184 	ori	$r4,$r12,0x20
1c0049ac:	57ecebff 	bl	-4888(0xfffece8) # 1c003694 <EXTI_ClearITPendingBit>
1c0049b0:	03400000 	andi	$r0,$r0,0x0
1c0049b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0049b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0049bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0049c0:	4c000020 	jirl	$r0,$r1,0

1c0049c4 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c0049c4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0049c8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0049cc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0049d0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0049d4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0049d8:	029720c6 	addi.w	$r6,$r6,1480(0x5c8)
1c0049dc:	02824005 	addi.w	$r5,$r0,144(0x90)
1c0049e0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0049e4:	0286b084 	addi.w	$r4,$r4,428(0x1ac)
1c0049e8:	57d087ff 	bl	-12156(0xfffd084) # 1c001a6c <myprintf>
1c0049ec:	14040005 	lu12i.w	$r5,8192(0x2000)
1c0049f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0049f4:	03808184 	ori	$r4,$r12,0x20
1c0049f8:	57ec9fff 	bl	-4964(0xfffec9c) # 1c003694 <EXTI_ClearITPendingBit>
1c0049fc:	03400000 	andi	$r0,$r0,0x0
1c004a00:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004a04:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004a08:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004a0c:	4c000020 	jirl	$r0,$r1,0

1c004a10 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c004a10:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004a14:	29803061 	st.w	$r1,$r3,12(0xc)
1c004a18:	29802076 	st.w	$r22,$r3,8(0x8)
1c004a1c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004a20:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004a24:	029650c6 	addi.w	$r6,$r6,1428(0x594)
1c004a28:	02825405 	addi.w	$r5,$r0,149(0x95)
1c004a2c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004a30:	02858084 	addi.w	$r4,$r4,352(0x160)
1c004a34:	57d03bff 	bl	-12232(0xfffd038) # 1c001a6c <myprintf>
1c004a38:	14080005 	lu12i.w	$r5,16384(0x4000)
1c004a3c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a40:	03808184 	ori	$r4,$r12,0x20
1c004a44:	57ec53ff 	bl	-5040(0xfffec50) # 1c003694 <EXTI_ClearITPendingBit>
1c004a48:	03400000 	andi	$r0,$r0,0x0
1c004a4c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004a50:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004a54:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004a58:	4c000020 	jirl	$r0,$r1,0

1c004a5c <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c004a5c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004a60:	29803061 	st.w	$r1,$r3,12(0xc)
1c004a64:	29802076 	st.w	$r22,$r3,8(0x8)
1c004a68:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004a6c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004a70:	029580c6 	addi.w	$r6,$r6,1376(0x560)
1c004a74:	02826805 	addi.w	$r5,$r0,154(0x9a)
1c004a78:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004a7c:	02845084 	addi.w	$r4,$r4,276(0x114)
1c004a80:	57cfefff 	bl	-12308(0xfffcfec) # 1c001a6c <myprintf>
1c004a84:	14100005 	lu12i.w	$r5,32768(0x8000)
1c004a88:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a8c:	03808184 	ori	$r4,$r12,0x20
1c004a90:	57ec07ff 	bl	-5116(0xfffec04) # 1c003694 <EXTI_ClearITPendingBit>
1c004a94:	03400000 	andi	$r0,$r0,0x0
1c004a98:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004a9c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004aa0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004aa4:	4c000020 	jirl	$r0,$r1,0

1c004aa8 <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c004aa8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004aac:	29803061 	st.w	$r1,$r3,12(0xc)
1c004ab0:	29802076 	st.w	$r22,$r3,8(0x8)
1c004ab4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004ab8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004abc:	0294b0c6 	addi.w	$r6,$r6,1324(0x52c)
1c004ac0:	02827c05 	addi.w	$r5,$r0,159(0x9f)
1c004ac4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004ac8:	02832084 	addi.w	$r4,$r4,200(0xc8)
1c004acc:	57cfa3ff 	bl	-12384(0xfffcfa0) # 1c001a6c <myprintf>
1c004ad0:	14200005 	lu12i.w	$r5,65536(0x10000)
1c004ad4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004ad8:	03808184 	ori	$r4,$r12,0x20
1c004adc:	57ebbbff 	bl	-5192(0xfffebb8) # 1c003694 <EXTI_ClearITPendingBit>
1c004ae0:	03400000 	andi	$r0,$r0,0x0
1c004ae4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004ae8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004aec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004af0:	4c000020 	jirl	$r0,$r1,0

1c004af4 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c004af4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004af8:	29803061 	st.w	$r1,$r3,12(0xc)
1c004afc:	29802076 	st.w	$r22,$r3,8(0x8)
1c004b00:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004b04:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004b08:	0293e0c6 	addi.w	$r6,$r6,1272(0x4f8)
1c004b0c:	02829405 	addi.w	$r5,$r0,165(0xa5)
1c004b10:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004b14:	0281f084 	addi.w	$r4,$r4,124(0x7c)
1c004b18:	57cf57ff 	bl	-12460(0xfffcf54) # 1c001a6c <myprintf>
1c004b1c:	14400005 	lu12i.w	$r5,131072(0x20000)
1c004b20:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b24:	03808184 	ori	$r4,$r12,0x20
1c004b28:	57eb6fff 	bl	-5268(0xfffeb6c) # 1c003694 <EXTI_ClearITPendingBit>
1c004b2c:	03400000 	andi	$r0,$r0,0x0
1c004b30:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004b34:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004b38:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004b3c:	4c000020 	jirl	$r0,$r1,0

1c004b40 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c004b40:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004b44:	29803061 	st.w	$r1,$r3,12(0xc)
1c004b48:	29802076 	st.w	$r22,$r3,8(0x8)
1c004b4c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004b50:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004b54:	029310c6 	addi.w	$r6,$r6,1220(0x4c4)
1c004b58:	0282a805 	addi.w	$r5,$r0,170(0xaa)
1c004b5c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004b60:	0280c084 	addi.w	$r4,$r4,48(0x30)
1c004b64:	57cf0bff 	bl	-12536(0xfffcf08) # 1c001a6c <myprintf>
1c004b68:	14800005 	lu12i.w	$r5,262144(0x40000)
1c004b6c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b70:	03808184 	ori	$r4,$r12,0x20
1c004b74:	57eb23ff 	bl	-5344(0xfffeb20) # 1c003694 <EXTI_ClearITPendingBit>
1c004b78:	03400000 	andi	$r0,$r0,0x0
1c004b7c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004b80:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004b84:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004b88:	4c000020 	jirl	$r0,$r1,0

1c004b8c <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c004b8c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004b90:	29803061 	st.w	$r1,$r3,12(0xc)
1c004b94:	29802076 	st.w	$r22,$r3,8(0x8)
1c004b98:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004b9c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004ba0:	029240c6 	addi.w	$r6,$r6,1168(0x490)
1c004ba4:	0282bc05 	addi.w	$r5,$r0,175(0xaf)
1c004ba8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004bac:	02bf9084 	addi.w	$r4,$r4,-28(0xfe4)
1c004bb0:	57cebfff 	bl	-12612(0xfffcebc) # 1c001a6c <myprintf>
1c004bb4:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c004bb8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004bbc:	03808184 	ori	$r4,$r12,0x20
1c004bc0:	57ead7ff 	bl	-5420(0xfffead4) # 1c003694 <EXTI_ClearITPendingBit>
1c004bc4:	03400000 	andi	$r0,$r0,0x0
1c004bc8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004bcc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004bd0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004bd4:	4c000020 	jirl	$r0,$r1,0

1c004bd8 <ext_handler>:
ext_handler():
1c004bd8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004bdc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004be0:	29806076 	st.w	$r22,$r3,24(0x18)
1c004be4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004be8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004bec:	0380f18c 	ori	$r12,$r12,0x3c
1c004bf0:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c004bf4:	2980018d 	st.w	$r13,$r12,0
1c004bf8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004bfc:	0380818c 	ori	$r12,$r12,0x20
1c004c00:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c004c04:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004c08:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c0c:	0380818c 	ori	$r12,$r12,0x20
1c004c10:	2880018c 	ld.w	$r12,$r12,0
1c004c14:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004c18:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004c1c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004c20:	0014b1ac 	and	$r12,$r13,$r12
1c004c24:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004c28:	03400000 	andi	$r0,$r0,0x0
1c004c2c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004c30:	50004000 	b	64(0x40) # 1c004c70 <ext_handler+0x98>
1c004c34:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004c38:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004c3c:	0017b1ac 	srl.w	$r12,$r13,$r12
1c004c40:	0340058c 	andi	$r12,$r12,0x1
1c004c44:	40002180 	beqz	$r12,32(0x20) # 1c004c64 <ext_handler+0x8c>
1c004c48:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c004c4c:	0280e1ad 	addi.w	$r13,$r13,56(0x38)
1c004c50:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004c54:	0040898c 	slli.w	$r12,$r12,0x2
1c004c58:	001031ac 	add.w	$r12,$r13,$r12
1c004c5c:	2880018c 	ld.w	$r12,$r12,0
1c004c60:	4c000181 	jirl	$r1,$r12,0
1c004c64:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004c68:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004c6c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004c70:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004c74:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c004c78:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c004c34 <ext_handler+0x5c>
1c004c7c:	03400000 	andi	$r0,$r0,0x0
1c004c80:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004c84:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004c88:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004c8c:	4c000020 	jirl	$r0,$r1,0

1c004c90 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c004c90:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004c94:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004c98:	29806076 	st.w	$r22,$r3,24(0x18)
1c004c9c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004ca0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004ca4:	02bcc084 	addi.w	$r4,$r4,-208(0xf30)
1c004ca8:	57cdc7ff 	bl	-12860(0xfffcdc4) # 1c001a6c <myprintf>
1c004cac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004cb0:	0380f18c 	ori	$r12,$r12,0x3c
1c004cb4:	1400020d 	lu12i.w	$r13,16(0x10)
1c004cb8:	2980018d 	st.w	$r13,$r12,0
1c004cbc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004cc0:	0380118c 	ori	$r12,$r12,0x4
1c004cc4:	2880018c 	ld.w	$r12,$r12,0
1c004cc8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004ccc:	57eb1bff 	bl	-5352(0xfffeb18) # 1c0037e4 <WDG_DogFeed>
1c004cd0:	02801804 	addi.w	$r4,$r0,6(0x6)
1c004cd4:	57e303ff 	bl	-7424(0xfffe300) # 1c002fd4 <Wake_Set>
1c004cd8:	03400000 	andi	$r0,$r0,0x0
1c004cdc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004ce0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004ce4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004ce8:	4c000020 	jirl	$r0,$r1,0

1c004cec <TOUCH>:
TOUCH():
1c004cec:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004cf0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004cf4:	29806076 	st.w	$r22,$r3,24(0x18)
1c004cf8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004cfc:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004d00:	0380118c 	ori	$r12,$r12,0x4
1c004d04:	2880018c 	ld.w	$r12,$r12,0
1c004d08:	0044c18c 	srli.w	$r12,$r12,0x10
1c004d0c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004d10:	037ffd8c 	andi	$r12,$r12,0xfff
1c004d14:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c004d18:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004d1c:	0380118c 	ori	$r12,$r12,0x4
1c004d20:	2880018c 	ld.w	$r12,$r12,0
1c004d24:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004d28:	03403d8c 	andi	$r12,$r12,0xf
1c004d2c:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c004d30:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004d34:	0380f18c 	ori	$r12,$r12,0x3c
1c004d38:	1400040d 	lu12i.w	$r13,32(0x20)
1c004d3c:	2980018d 	st.w	$r13,$r12,0
1c004d40:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004d44:	0380118c 	ori	$r12,$r12,0x4
1c004d48:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c004d4c:	2980018d 	st.w	$r13,$r12,0
1c004d50:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c004d54:	00150184 	move	$r4,$r12
1c004d58:	57f17bff 	bl	-3720(0xffff178) # 1c003ed0 <Printf_KeyType>
1c004d5c:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c004d60:	00150184 	move	$r4,$r12
1c004d64:	57f0f3ff 	bl	-3856(0xffff0f0) # 1c003e54 <Printf_KeyChannel>
1c004d68:	57f1f7ff 	bl	-3596(0xffff1f4) # 1c003f5c <Printf_KeyVal>
1c004d6c:	03400000 	andi	$r0,$r0,0x0
1c004d70:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004d74:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004d78:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004d7c:	4c000020 	jirl	$r0,$r1,0

1c004d80 <UART2_INT>:
UART2_INT():
1c004d80:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004d84:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004d88:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004d8c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004d90:	0380f18c 	ori	$r12,$r12,0x3c
1c004d94:	1400080d 	lu12i.w	$r13,64(0x40)
1c004d98:	2980018d 	st.w	$r13,$r12,0
1c004d9c:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c004da0:	0380098c 	ori	$r12,$r12,0x2
1c004da4:	2a00018c 	ld.bu	$r12,$r12,0
1c004da8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004dac:	03400000 	andi	$r0,$r0,0x0
1c004db0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004db4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004db8:	4c000020 	jirl	$r0,$r1,0

1c004dbc <BAT_FAIL>:
BAT_FAIL():
1c004dbc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004dc0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004dc4:	29806076 	st.w	$r22,$r3,24(0x18)
1c004dc8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004dcc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004dd0:	0380118c 	ori	$r12,$r12,0x4
1c004dd4:	2880018c 	ld.w	$r12,$r12,0
1c004dd8:	0044cd8c 	srli.w	$r12,$r12,0x13
1c004ddc:	03407d8c 	andi	$r12,$r12,0x1f
1c004de0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004de4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004de8:	0380118c 	ori	$r12,$r12,0x4
1c004dec:	2880018e 	ld.w	$r14,$r12,0
1c004df0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004df4:	0380f18c 	ori	$r12,$r12,0x3c
1c004df8:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c004dfc:	0014b5cd 	and	$r13,$r14,$r13
1c004e00:	2980018d 	st.w	$r13,$r12,0
1c004e04:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004e08:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004e0c:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c004e7c <BAT_FAIL+0xc0>
1c004e10:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004e14:	0040898d 	slli.w	$r13,$r12,0x2
1c004e18:	1c00004c 	pcaddu12i	$r12,2(0x2)
1c004e1c:	02bba18c 	addi.w	$r12,$r12,-280(0xee8)
1c004e20:	001031ac 	add.w	$r12,$r13,$r12
1c004e24:	2880018c 	ld.w	$r12,$r12,0
1c004e28:	4c000180 	jirl	$r0,$r12,0
1c004e2c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004e30:	02b70084 	addi.w	$r4,$r4,-576(0xdc0)
1c004e34:	57cc3bff 	bl	-13256(0xfffcc38) # 1c001a6c <myprintf>
1c004e38:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004e3c:	0380118c 	ori	$r12,$r12,0x4
1c004e40:	29800180 	st.w	$r0,$r12,0
1c004e44:	50003c00 	b	60(0x3c) # 1c004e80 <BAT_FAIL+0xc4>
1c004e48:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004e4c:	02b73084 	addi.w	$r4,$r4,-564(0xdcc)
1c004e50:	57cc1fff 	bl	-13284(0xfffcc1c) # 1c001a6c <myprintf>
1c004e54:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004e58:	0380118c 	ori	$r12,$r12,0x4
1c004e5c:	2880018e 	ld.w	$r14,$r12,0
1c004e60:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004e64:	0380118c 	ori	$r12,$r12,0x4
1c004e68:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c004e6c:	03bffdad 	ori	$r13,$r13,0xfff
1c004e70:	0014b5cd 	and	$r13,$r14,$r13
1c004e74:	2980018d 	st.w	$r13,$r12,0
1c004e78:	50000800 	b	8(0x8) # 1c004e80 <BAT_FAIL+0xc4>
1c004e7c:	03400000 	andi	$r0,$r0,0x0
1c004e80:	03400000 	andi	$r0,$r0,0x0
1c004e84:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004e88:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004e8c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004e90:	4c000020 	jirl	$r0,$r1,0

1c004e94 <intc_handler>:
intc_handler():
1c004e94:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004e98:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004e9c:	29806076 	st.w	$r22,$r3,24(0x18)
1c004ea0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004ea4:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004ea8:	0380158c 	ori	$r12,$r12,0x5
1c004eac:	2a00018c 	ld.bu	$r12,$r12,0
1c004eb0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004eb4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004eb8:	0340058c 	andi	$r12,$r12,0x1
1c004ebc:	40002980 	beqz	$r12,40(0x28) # 1c004ee4 <intc_handler+0x50>
1c004ec0:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004ec4:	57f2efff 	bl	-3348(0xffff2ec) # 1c0041b0 <TIM_GetITStatus>
1c004ec8:	0015008c 	move	$r12,$r4
1c004ecc:	40001980 	beqz	$r12,24(0x18) # 1c004ee4 <intc_handler+0x50>
1c004ed0:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004ed4:	57f32bff 	bl	-3288(0xffff328) # 1c0041fc <TIM_ClearIT>
1c004ed8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004edc:	02b58084 	addi.w	$r4,$r4,-672(0xd60)
1c004ee0:	57cb8fff 	bl	-13428(0xfffcb8c) # 1c001a6c <myprintf>
1c004ee4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004ee8:	0340118c 	andi	$r12,$r12,0x4
1c004eec:	40001580 	beqz	$r12,20(0x14) # 1c004f00 <intc_handler+0x6c>
1c004ef0:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004ef4:	03800d8c 	ori	$r12,$r12,0x3
1c004ef8:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c004efc:	2900018d 	st.b	$r13,$r12,0
1c004f00:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004f04:	0340218c 	andi	$r12,$r12,0x8
1c004f08:	40001580 	beqz	$r12,20(0x14) # 1c004f1c <intc_handler+0x88>
1c004f0c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004f10:	03800d8c 	ori	$r12,$r12,0x3
1c004f14:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c004f18:	2900018d 	st.b	$r13,$r12,0
1c004f1c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004f20:	03800d8c 	ori	$r12,$r12,0x3
1c004f24:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c004f28:	2900018d 	st.b	$r13,$r12,0
1c004f2c:	03400000 	andi	$r0,$r0,0x0
1c004f30:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004f34:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004f38:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004f3c:	4c000020 	jirl	$r0,$r1,0

1c004f40 <TIMER_HANDLER>:
TIMER_HANDLER():
1c004f40:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004f44:	29803061 	st.w	$r1,$r3,12(0xc)
1c004f48:	29802076 	st.w	$r22,$r3,8(0x8)
1c004f4c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004f50:	57e063ff 	bl	-8096(0xfffe060) # 1c002fb0 <Set_Timer_clear>
1c004f54:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004f58:	02b43084 	addi.w	$r4,$r4,-756(0xd0c)
1c004f5c:	57cb13ff 	bl	-13552(0xfffcb10) # 1c001a6c <myprintf>
1c004f60:	57e033ff 	bl	-8144(0xfffe030) # 1c002f90 <Set_Timer_stop>
1c004f64:	03400000 	andi	$r0,$r0,0x0
1c004f68:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004f6c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004f70:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004f74:	4c000020 	jirl	$r0,$r1,0

1c004f78 <main>:
main():
1c004f78:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c004f7c:	29817061 	st.w	$r1,$r3,92(0x5c)
1c004f80:	29816076 	st.w	$r22,$r3,88(0x58)
1c004f84:	02818076 	addi.w	$r22,$r3,96(0x60)
1c004f88:	29beb2c4 	st.w	$r4,$r22,-84(0xfac)
1c004f8c:	29bea2c5 	st.w	$r5,$r22,-88(0xfa8)
1c004f90:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004f94:	02801004 	addi.w	$r4,$r0,4(0x4)
1c004f98:	57c6bfff 	bl	-14660(0xfffc6bc) # 1c001654 <gpio_pin_remap>
1c004f9c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004fa0:	02801404 	addi.w	$r4,$r0,5(0x5)
1c004fa4:	57c6b3ff 	bl	-14672(0xfffc6b0) # 1c001654 <gpio_pin_remap>
1c004fa8:	02bee2cc 	addi.w	$r12,$r22,-72(0xfb8)
1c004fac:	00150184 	move	$r4,$r12
1c004fb0:	57e997ff 	bl	-5740(0xfffe994) # 1c003944 <I2C_StructInit>
1c004fb4:	02bee2cc 	addi.w	$r12,$r22,-72(0xfb8)
1c004fb8:	00150185 	move	$r5,$r12
1c004fbc:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c004fc0:	57e883ff 	bl	-6016(0xfffe880) # 1c003840 <I2C_Init>
1c004fc4:	02819004 	addi.w	$r4,$r0,100(0x64)
1c004fc8:	57e3cbff 	bl	-7224(0xfffe3c8) # 1c003390 <delay_ms>
1c004fcc:	540b4000 	bl	2880(0xb40) # 1c005b0c <OLED_Init>
1c004fd0:	540e2c00 	bl	3628(0xe2c) # 1c005dfc <OLED_Full>
1c004fd4:	540d8c00 	bl	3468(0xd8c) # 1c005d60 <OLED_Clear>
1c004fd8:	57eb9fff 	bl	-5220(0xfffeb9c) # 1c003b74 <Adc_powerOn>
1c004fdc:	00150004 	move	$r4,$r0
1c004fe0:	57ebebff 	bl	-5144(0xfffebe8) # 1c003bc8 <Adc_open>
1c004fe4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004fe8:	57ebe3ff 	bl	-5152(0xfffebe0) # 1c003bc8 <Adc_open>
1c004fec:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c004ff0:	57ebdbff 	bl	-5160(0xfffebd8) # 1c003bc8 <Adc_open>
1c004ff4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004ff8:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c004ffc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005000:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c005004:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c005008:	0281580c 	addi.w	$r12,$r0,86(0x56)
1c00500c:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c005010:	00150004 	move	$r4,$r0
1c005014:	57ed43ff 	bl	-4800(0xfffed40) # 1c003d54 <Adc_getVoltage>
1c005018:	0015008c 	move	$r12,$r4
1c00501c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005020:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005024:	297f6acc 	st.h	$r12,$r22,-38(0xfda)
1c005028:	2a7f6acd 	ld.hu	$r13,$r22,-38(0xfda)
1c00502c:	1400028c 	lu12i.w	$r12,20(0x14)
1c005030:	03bbad8c 	ori	$r12,$r12,0xeeb
1c005034:	001c31ae 	mul.w	$r14,$r13,$r12
1c005038:	1400030c 	lu12i.w	$r12,24(0x18)
1c00503c:	039a818d 	ori	$r13,$r12,0x6a0
1c005040:	002035cc 	div.w	$r12,$r14,$r13
1c005044:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c00504c <main+0xd4>
1c005048:	002a0007 	break	0x7
1c00504c:	297f62cc 	st.h	$r12,$r22,-40(0xfd8)
1c005050:	2a7f6acd 	ld.hu	$r13,$r22,-38(0xfda)
1c005054:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c005058:	001c31ad 	mul.w	$r13,$r13,$r12
1c00505c:	140000cc 	lu12i.w	$r12,6(0x6)
1c005060:	038fc98c 	ori	$r12,$r12,0x3f2
1c005064:	001c31ae 	mul.w	$r14,$r13,$r12
1c005068:	140bebcc 	lu12i.w	$r12,24414(0x5f5e)
1c00506c:	0384018d 	ori	$r13,$r12,0x100
1c005070:	002035cc 	div.w	$r12,$r14,$r13
1c005074:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c00507c <main+0x104>
1c005078:	002a0007 	break	0x7
1c00507c:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c005080:	2a7f6acd 	ld.hu	$r13,$r22,-38(0xfda)
1c005084:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c005088:	001c31ad 	mul.w	$r13,$r13,$r12
1c00508c:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c005090:	001c31ae 	mul.w	$r14,$r13,$r12
1c005094:	1477358c 	lu12i.w	$r12,244140(0x3b9ac)
1c005098:	03a8018d 	ori	$r13,$r12,0xa00
1c00509c:	002035cc 	div.w	$r12,$r14,$r13
1c0050a0:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0050a8 <main+0x130>
1c0050a4:	002a0007 	break	0x7
1c0050a8:	297f52cc 	st.h	$r12,$r22,-44(0xfd4)
1c0050ac:	2a7f52cd 	ld.hu	$r13,$r22,-44(0xfd4)
1c0050b0:	1400006c 	lu12i.w	$r12,3(0x3)
1c0050b4:	0390798c 	ori	$r12,$r12,0x41e
1c0050b8:	001c31ae 	mul.w	$r14,$r13,$r12
1c0050bc:	0281900d 	addi.w	$r13,$r0,100(0x64)
1c0050c0:	002035cc 	div.w	$r12,$r14,$r13
1c0050c4:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0050cc <main+0x154>
1c0050c8:	002a0007 	break	0x7
1c0050cc:	297f52cc 	st.h	$r12,$r22,-44(0xfd4)
1c0050d0:	2a7f52cd 	ld.hu	$r13,$r22,-44(0xfd4)
1c0050d4:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c0050d8:	001131ac 	sub.w	$r12,$r13,$r12
1c0050dc:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0050e0:	2a7f62cc 	ld.hu	$r12,$r22,-40(0xfd8)
1c0050e4:	001031ac 	add.w	$r12,$r13,$r12
1c0050e8:	297f4acc 	st.h	$r12,$r22,-46(0xfd2)
1c0050ec:	2a7f4acc 	ld.hu	$r12,$r22,-46(0xfd2)
1c0050f0:	0044858c 	srli.w	$r12,$r12,0x1
1c0050f4:	297f4acc 	st.h	$r12,$r22,-46(0xfd2)
1c0050f8:	54043400 	bl	1076(0x434) # 1c00552c <zd_value>
1c0050fc:	29bf92c4 	st.w	$r4,$r22,-28(0xfe4)
1c005100:	54038000 	bl	896(0x380) # 1c005480 <PH_Value_Conversion>
1c005104:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c005108:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c00510c:	028fa00d 	addi.w	$r13,$r0,1000(0x3e8)
1c005110:	002035cc 	div.w	$r12,$r14,$r13
1c005114:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c00511c <main+0x1a4>
1c005118:	002a0007 	break	0x7
1c00511c:	29bf22cc 	st.w	$r12,$r22,-56(0xfc8)
1c005120:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c005124:	028fa00d 	addi.w	$r13,$r0,1000(0x3e8)
1c005128:	0020b5cc 	mod.w	$r12,$r14,$r13
1c00512c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c005134 <main+0x1bc>
1c005130:	002a0007 	break	0x7
1c005134:	29bf12cc 	st.w	$r12,$r22,-60(0xfc4)
1c005138:	28bf12ce 	ld.w	$r14,$r22,-60(0xfc4)
1c00513c:	0281900d 	addi.w	$r13,$r0,100(0x64)
1c005140:	002035cc 	div.w	$r12,$r14,$r13
1c005144:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c00514c <main+0x1d4>
1c005148:	002a0007 	break	0x7
1c00514c:	29bf12cc 	st.w	$r12,$r22,-60(0xfc4)
1c005150:	28bf22c5 	ld.w	$r5,$r22,-56(0xfc8)
1c005154:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005158:	28bb1084 	ld.w	$r4,$r4,-316(0xec4)
1c00515c:	57e277ff 	bl	-7564(0xfffe274) # 1c0033d0 <itoa>
1c005160:	28bfa2c5 	ld.w	$r5,$r22,-24(0xfe8)
1c005164:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005168:	28bac084 	ld.w	$r4,$r4,-336(0xeb0)
1c00516c:	57e267ff 	bl	-7580(0xfffe264) # 1c0033d0 <itoa>
1c005170:	1c000045 	pcaddu12i	$r5,2(0x2)
1c005174:	02bb50a5 	addi.w	$r5,$r5,-300(0xed4)
1c005178:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c00517c:	28ba7084 	ld.w	$r4,$r4,-356(0xe9c)
1c005180:	57e3cfff 	bl	-7220(0xfffe3cc) # 1c00354c <strcat>
1c005184:	1c000045 	pcaddu12i	$r5,2(0x2)
1c005188:	02bb10a5 	addi.w	$r5,$r5,-316(0xec4)
1c00518c:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005190:	28ba2084 	ld.w	$r4,$r4,-376(0xe88)
1c005194:	57e3bbff 	bl	-7240(0xfffe3b8) # 1c00354c <strcat>
1c005198:	28bf12c5 	ld.w	$r5,$r22,-60(0xfc4)
1c00519c:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0051a0:	28b9b084 	ld.w	$r4,$r4,-404(0xe6c)
1c0051a4:	57e22fff 	bl	-7636(0xfffe22c) # 1c0033d0 <itoa>
1c0051a8:	1c000045 	pcaddu12i	$r5,2(0x2)
1c0051ac:	02ba70a5 	addi.w	$r5,$r5,-356(0xe9c)
1c0051b0:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0051b4:	28b9a084 	ld.w	$r4,$r4,-408(0xe68)
1c0051b8:	57e397ff 	bl	-7276(0xfffe394) # 1c00354c <strcat>
1c0051bc:	1cc7ff85 	pcaddu12i	$r5,409596(0x63ffc)
1c0051c0:	28b930a5 	ld.w	$r5,$r5,-436(0xe4c)
1c0051c4:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0051c8:	28b95084 	ld.w	$r4,$r4,-428(0xe54)
1c0051cc:	57e383ff 	bl	-7296(0xfffe380) # 1c00354c <strcat>
1c0051d0:	54070800 	bl	1800(0x708) # 1c0058d8 <DS18B20_Get_Temp>
1c0051d4:	29bf82c4 	st.w	$r4,$r22,-32(0xfe0)
1c0051d8:	28bf82ce 	ld.w	$r14,$r22,-32(0xfe0)
1c0051dc:	1400004c 	lu12i.w	$r12,2(0x2)
1c0051e0:	039c418d 	ori	$r13,$r12,0x710
1c0051e4:	0020b5cc 	mod.w	$r12,$r14,$r13
1c0051e8:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0051f0 <main+0x278>
1c0051ec:	002a0007 	break	0x7
1c0051f0:	29bf02cc 	st.w	$r12,$r22,-64(0xfc0)
1c0051f4:	28bf02ce 	ld.w	$r14,$r22,-64(0xfc0)
1c0051f8:	0281900d 	addi.w	$r13,$r0,100(0x64)
1c0051fc:	002035cc 	div.w	$r12,$r14,$r13
1c005200:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c005208 <main+0x290>
1c005204:	002a0007 	break	0x7
1c005208:	29bf02cc 	st.w	$r12,$r22,-64(0xfc0)
1c00520c:	28bf82ce 	ld.w	$r14,$r22,-32(0xfe0)
1c005210:	1400004c 	lu12i.w	$r12,2(0x2)
1c005214:	039c418d 	ori	$r13,$r12,0x710
1c005218:	002035cc 	div.w	$r12,$r14,$r13
1c00521c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c005224 <main+0x2ac>
1c005220:	002a0007 	break	0x7
1c005224:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c005228:	28bf82c5 	ld.w	$r5,$r22,-32(0xfe0)
1c00522c:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005230:	28b78084 	ld.w	$r4,$r4,-544(0xde0)
1c005234:	57e19fff 	bl	-7780(0xfffe19c) # 1c0033d0 <itoa>
1c005238:	1c000045 	pcaddu12i	$r5,2(0x2)
1c00523c:	02b830a5 	addi.w	$r5,$r5,-500(0xe0c)
1c005240:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005244:	28b73084 	ld.w	$r4,$r4,-564(0xdcc)
1c005248:	57e307ff 	bl	-7420(0xfffe304) # 1c00354c <strcat>
1c00524c:	28bf02c5 	ld.w	$r5,$r22,-64(0xfc0)
1c005250:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005254:	28b74084 	ld.w	$r4,$r4,-560(0xdd0)
1c005258:	57e17bff 	bl	-7816(0xfffe178) # 1c0033d0 <itoa>
1c00525c:	1cc7ff85 	pcaddu12i	$r5,409596(0x63ffc)
1c005260:	28b710a5 	ld.w	$r5,$r5,-572(0xdc4)
1c005264:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005268:	28b6a084 	ld.w	$r4,$r4,-600(0xda8)
1c00526c:	57e2e3ff 	bl	-7456(0xfffe2e0) # 1c00354c <strcat>
1c005270:	00150006 	move	$r6,$r0
1c005274:	00150005 	move	$r5,$r0
1c005278:	00150004 	move	$r4,$r0
1c00527c:	5410a400 	bl	4260(0x10a4) # 1c006320 <OLED_ShowCHinese>
1c005280:	02800406 	addi.w	$r6,$r0,1(0x1)
1c005284:	00150005 	move	$r5,$r0
1c005288:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c00528c:	54109400 	bl	4244(0x1094) # 1c006320 <OLED_ShowCHinese>
1c005290:	1c000046 	pcaddu12i	$r6,2(0x2)
1c005294:	02b6f0c6 	addi.w	$r6,$r6,-580(0xdbc)
1c005298:	00150005 	move	$r5,$r0
1c00529c:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c0052a0:	540fb800 	bl	4024(0xfb8) # 1c006258 <OLED_ShowString>
1c0052a4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0052a8:	02b6b0c6 	addi.w	$r6,$r6,-596(0xdac)
1c0052ac:	00150005 	move	$r5,$r0
1c0052b0:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0052b4:	540fa400 	bl	4004(0xfa4) # 1c006258 <OLED_ShowString>
1c0052b8:	02801806 	addi.w	$r6,$r0,6(0x6)
1c0052bc:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0052c0:	00150004 	move	$r4,$r0
1c0052c4:	54105c00 	bl	4188(0x105c) # 1c006320 <OLED_ShowCHinese>
1c0052c8:	02801c06 	addi.w	$r6,$r0,7(0x7)
1c0052cc:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0052d0:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c0052d4:	54104c00 	bl	4172(0x104c) # 1c006320 <OLED_ShowCHinese>
1c0052d8:	02802006 	addi.w	$r6,$r0,8(0x8)
1c0052dc:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0052e0:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c0052e4:	54103c00 	bl	4156(0x103c) # 1c006320 <OLED_ShowCHinese>
1c0052e8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0052ec:	02b590c6 	addi.w	$r6,$r6,-668(0xd64)
1c0052f0:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0052f4:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c0052f8:	540f6000 	bl	3936(0xf60) # 1c006258 <OLED_ShowString>
1c0052fc:	2a7f4acc 	ld.hu	$r12,$r22,-46(0xfd2)
1c005300:	02804008 	addi.w	$r8,$r0,16(0x10)
1c005304:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c005308:	00150186 	move	$r6,$r12
1c00530c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c005310:	0280c804 	addi.w	$r4,$r0,50(0x32)
1c005314:	540dbc00 	bl	3516(0xdbc) # 1c0060d0 <OLED_ShowNum>
1c005318:	02801006 	addi.w	$r6,$r0,4(0x4)
1c00531c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c005320:	00150004 	move	$r4,$r0
1c005324:	540ffc00 	bl	4092(0xffc) # 1c006320 <OLED_ShowCHinese>
1c005328:	02801406 	addi.w	$r6,$r0,5(0x5)
1c00532c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c005330:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c005334:	540fec00 	bl	4076(0xfec) # 1c006320 <OLED_ShowCHinese>
1c005338:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00533c:	02b450c6 	addi.w	$r6,$r6,-748(0xd14)
1c005340:	02801005 	addi.w	$r5,$r0,4(0x4)
1c005344:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c005348:	540f1000 	bl	3856(0xf10) # 1c006258 <OLED_ShowString>
1c00534c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c005350:	02b430c6 	addi.w	$r6,$r6,-756(0xd0c)
1c005354:	02801005 	addi.w	$r5,$r0,4(0x4)
1c005358:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c00535c:	540efc00 	bl	3836(0xefc) # 1c006258 <OLED_ShowString>
1c005360:	1c000046 	pcaddu12i	$r6,2(0x2)
1c005364:	02b3f0c6 	addi.w	$r6,$r6,-772(0xcfc)
1c005368:	02801005 	addi.w	$r5,$r0,4(0x4)
1c00536c:	02812c04 	addi.w	$r4,$r0,75(0x4b)
1c005370:	540ee800 	bl	3816(0xee8) # 1c006258 <OLED_ShowString>
1c005374:	1c000046 	pcaddu12i	$r6,2(0x2)
1c005378:	02b3b0c6 	addi.w	$r6,$r6,-788(0xcec)
1c00537c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c005380:	00150004 	move	$r4,$r0
1c005384:	540ed400 	bl	3796(0xed4) # 1c006258 <OLED_ShowString>
1c005388:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00538c:	02b370c6 	addi.w	$r6,$r6,-804(0xcdc)
1c005390:	02800805 	addi.w	$r5,$r0,2(0x2)
1c005394:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c005398:	540ec000 	bl	3776(0xec0) # 1c006258 <OLED_ShowString>
1c00539c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0053a0:	02b2c0c6 	addi.w	$r6,$r6,-848(0xcb0)
1c0053a4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0053a8:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c0053ac:	540eac00 	bl	3756(0xeac) # 1c006258 <OLED_ShowString>
1c0053b0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0053b4:	02b2e0c6 	addi.w	$r6,$r6,-840(0xcb8)
1c0053b8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0053bc:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0053c0:	540e9800 	bl	3736(0xe98) # 1c006258 <OLED_ShowString>
1c0053c4:	02800806 	addi.w	$r6,$r0,2(0x2)
1c0053c8:	00150005 	move	$r5,$r0
1c0053cc:	02819004 	addi.w	$r4,$r0,100(0x64)
1c0053d0:	540f5000 	bl	3920(0xf50) # 1c006320 <OLED_ShowCHinese>
1c0053d4:	02800c06 	addi.w	$r6,$r0,3(0x3)
1c0053d8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0053dc:	02819004 	addi.w	$r4,$r0,100(0x64)
1c0053e0:	540f4000 	bl	3904(0xf40) # 1c006320 <OLED_ShowCHinese>
1c0053e4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0053e8:	02b220c6 	addi.w	$r6,$r6,-888(0xc88)
1c0053ec:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0053f0:	02819c04 	addi.w	$r4,$r0,103(0x67)
1c0053f4:	540e6400 	bl	3684(0xe64) # 1c006258 <OLED_ShowString>
1c0053f8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0053fc:	02804008 	addi.w	$r8,$r0,16(0x10)
1c005400:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c005404:	00150186 	move	$r6,$r12
1c005408:	02801805 	addi.w	$r5,$r0,6(0x6)
1c00540c:	02816004 	addi.w	$r4,$r0,88(0x58)
1c005410:	540cc000 	bl	3264(0xcc0) # 1c0060d0 <OLED_ShowNum>
1c005414:	1c000046 	pcaddu12i	$r6,2(0x2)
1c005418:	02b170c6 	addi.w	$r6,$r6,-932(0xc5c)
1c00541c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c005420:	0281cc04 	addi.w	$r4,$r0,115(0x73)
1c005424:	540e3400 	bl	3636(0xe34) # 1c006258 <OLED_ShowString>
1c005428:	2a7f4acc 	ld.hu	$r12,$r22,-46(0xfd2)
1c00542c:	28bf72ca 	ld.w	$r10,$r22,-36(0xfdc)
1c005430:	00150189 	move	$r9,$r12
1c005434:	1c000048 	pcaddu12i	$r8,2(0x2)
1c005438:	02b09108 	addi.w	$r8,$r8,-988(0xc24)
1c00543c:	1c000047 	pcaddu12i	$r7,2(0x2)
1c005440:	02b0b0e7 	addi.w	$r7,$r7,-980(0xc2c)
1c005444:	1c000046 	pcaddu12i	$r6,2(0x2)
1c005448:	02b030c6 	addi.w	$r6,$r6,-1012(0xc0c)
1c00544c:	1c000045 	pcaddu12i	$r5,2(0x2)
1c005450:	02b0a0a5 	addi.w	$r5,$r5,-984(0xc28)
1c005454:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005458:	28af2084 	ld.w	$r4,$r4,-1080(0xbc8)
1c00545c:	57cfa3ff 	bl	-12384(0xfffcfa0) # 1c0023fc <sprintf>
1c005460:	1cc7ff85 	pcaddu12i	$r5,409596(0x63ffc)
1c005464:	28aef0a5 	ld.w	$r5,$r5,-1092(0xbbc)
1c005468:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00546c:	02b0d084 	addi.w	$r4,$r4,-972(0xc34)
1c005470:	57c5ffff 	bl	-14852(0xfffc5fc) # 1c001a6c <myprintf>
1c005474:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c005478:	57df1bff 	bl	-8424(0xfffdf18) # 1c003390 <delay_ms>
1c00547c:	53fb7bff 	b	-1160(0xffffb78) # 1c004ff4 <main+0x7c>

1c005480 <PH_Value_Conversion>:
PH_Value_Conversion():
1c005480:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005484:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005488:	29806076 	st.w	$r22,$r3,24(0x18)
1c00548c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005490:	57e6e7ff 	bl	-6428(0xfffe6e4) # 1c003b74 <Adc_powerOn>
1c005494:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005498:	57e733ff 	bl	-6352(0xfffe730) # 1c003bc8 <Adc_open>
1c00549c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0054a0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0054a4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0054a8:	57e8afff 	bl	-5972(0xfffe8ac) # 1c003d54 <Adc_getVoltage>
1c0054ac:	0015008c 	move	$r12,$r4
1c0054b0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0054b4:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0054b8:	15fffe2c 	lu12i.w	$r12,-15(0xffff1)
1c0054bc:	03bced8c 	ori	$r12,$r12,0xf3b
1c0054c0:	001c31ad 	mul.w	$r13,$r13,$r12
1c0054c4:	1413da6c 	lu12i.w	$r12,40659(0x9ed3)
1c0054c8:	038b818c 	ori	$r12,$r12,0x2e0
1c0054cc:	001031ac 	add.w	$r12,$r13,$r12
1c0054d0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0054d4:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c0054d8:	1400004c 	lu12i.w	$r12,2(0x2)
1c0054dc:	039c418d 	ori	$r13,$r12,0x710
1c0054e0:	002035cc 	div.w	$r12,$r14,$r13
1c0054e4:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0054ec <PH_Value_Conversion+0x6c>
1c0054e8:	002a0007 	break	0x7
1c0054ec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0054f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0054f4:	6000080c 	blt	$r0,$r12,8(0x8) # 1c0054fc <PH_Value_Conversion+0x7c>
1c0054f8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0054fc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005500:	1400006c 	lu12i.w	$r12,3(0x3)
1c005504:	039abd8c 	ori	$r12,$r12,0x6af
1c005508:	64000d8d 	bge	$r12,$r13,12(0xc) # 1c005514 <PH_Value_Conversion+0x94>
1c00550c:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c005510:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005514:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005518:	00150184 	move	$r4,$r12
1c00551c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005520:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005524:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005528:	4c000020 	jirl	$r0,$r1,0

1c00552c <zd_value>:
zd_value():
1c00552c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005530:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005534:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005538:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00553c:	57e63bff 	bl	-6600(0xfffe638) # 1c003b74 <Adc_powerOn>
1c005540:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c005544:	57e687ff 	bl	-6524(0xfffe684) # 1c003bc8 <Adc_open>
1c005548:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00554c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c005550:	1400002c 	lu12i.w	$r12,1(0x1)
1c005554:	0383b18c 	ori	$r12,$r12,0xec
1c005558:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00555c:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c005560:	57e7f7ff 	bl	-6156(0xfffe7f4) # 1c003d54 <Adc_getVoltage>
1c005564:	0015008c 	move	$r12,$r4
1c005568:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00556c:	15ffddcc 	lu12i.w	$r12,-274(0xffeee)
1c005570:	039dc18c 	ori	$r12,$r12,0x770
1c005574:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c005578:	1400af2c 	lu12i.w	$r12,1401(0x579)
1c00557c:	03bb718c 	ori	$r12,$r12,0xedc
1c005580:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c005584:	15ff7b2c 	lu12i.w	$r12,-1063(0xffbd9)
1c005588:	0391f18c 	ori	$r12,$r12,0x47c
1c00558c:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c005590:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005594:	02bcac0c 	addi.w	$r12,$r0,-213(0xf2b)
1c005598:	001c31ae 	mul.w	$r14,$r13,$r12
1c00559c:	0281900d 	addi.w	$r13,$r0,100(0x64)
1c0055a0:	002035cc 	div.w	$r12,$r14,$r13
1c0055a4:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0055ac <zd_value+0x80>
1c0055a8:	002a0007 	break	0x7
1c0055ac:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0055b0:	001031ac 	add.w	$r12,$r13,$r12
1c0055b4:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c0055b8:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0055bc:	00150184 	move	$r4,$r12
1c0055c0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0055c4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0055c8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0055cc:	4c000020 	jirl	$r0,$r1,0

1c0055d0 <DS18B20_Rst>:
DS18B20_Rst():
1c0055d0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0055d4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0055d8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0055dc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0055e0:	00150005 	move	$r5,$r0
1c0055e4:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c0055e8:	57bff7ff 	bl	-16396(0xfffbff4) # 1c0015dc <gpio_write_pin>
1c0055ec:	028bb804 	addi.w	$r4,$r0,750(0x2ee)
1c0055f0:	57dd6bff 	bl	-8856(0xfffdd68) # 1c003358 <delay_us>
1c0055f4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0055f8:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c0055fc:	57bfe3ff 	bl	-16416(0xfffbfe0) # 1c0015dc <gpio_write_pin>
1c005600:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c005604:	57dd57ff 	bl	-8876(0xfffdd54) # 1c003358 <delay_us>
1c005608:	03400000 	andi	$r0,$r0,0x0
1c00560c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005610:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005614:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005618:	4c000020 	jirl	$r0,$r1,0

1c00561c <DS18B20_Check>:
DS18B20_Check():
1c00561c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005620:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005624:	29806076 	st.w	$r22,$r3,24(0x18)
1c005628:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00562c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005630:	50001800 	b	24(0x18) # 1c005648 <DS18B20_Check+0x2c>
1c005634:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005638:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00563c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005640:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005644:	57dd17ff 	bl	-8940(0xfffdd14) # 1c003358 <delay_us>
1c005648:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c00564c:	57bf43ff 	bl	-16576(0xfffbf40) # 1c00158c <gpio_get_pin>
1c005650:	0015008c 	move	$r12,$r4
1c005654:	40001180 	beqz	$r12,16(0x10) # 1c005664 <DS18B20_Check+0x48>
1c005658:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00565c:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c005660:	6fffd58d 	bgeu	$r12,$r13,-44(0x3ffd4) # 1c005634 <DS18B20_Check+0x18>
1c005664:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005668:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c00566c:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c005678 <DS18B20_Check+0x5c>
1c005670:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005674:	50005400 	b	84(0x54) # 1c0056c8 <DS18B20_Check+0xac>
1c005678:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00567c:	50001800 	b	24(0x18) # 1c005694 <DS18B20_Check+0x78>
1c005680:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005684:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005688:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00568c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005690:	57dccbff 	bl	-9016(0xfffdcc8) # 1c003358 <delay_us>
1c005694:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c005698:	57bef7ff 	bl	-16652(0xfffbef4) # 1c00158c <gpio_get_pin>
1c00569c:	0015008c 	move	$r12,$r4
1c0056a0:	44001180 	bnez	$r12,16(0x10) # 1c0056b0 <DS18B20_Check+0x94>
1c0056a4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0056a8:	02831c0c 	addi.w	$r12,$r0,199(0xc7)
1c0056ac:	6fffd58d 	bgeu	$r12,$r13,-44(0x3ffd4) # 1c005680 <DS18B20_Check+0x64>
1c0056b0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0056b4:	02831c0c 	addi.w	$r12,$r0,199(0xc7)
1c0056b8:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c0056c4 <DS18B20_Check+0xa8>
1c0056bc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0056c0:	50000800 	b	8(0x8) # 1c0056c8 <DS18B20_Check+0xac>
1c0056c4:	0015000c 	move	$r12,$r0
1c0056c8:	00150184 	move	$r4,$r12
1c0056cc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0056d0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0056d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0056d8:	4c000020 	jirl	$r0,$r1,0

1c0056dc <DS18B20_Read_Bit>:
DS18B20_Read_Bit():
1c0056dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0056e0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0056e4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0056e8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0056ec:	00150005 	move	$r5,$r0
1c0056f0:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c0056f4:	57beebff 	bl	-16664(0xfffbee8) # 1c0015dc <gpio_write_pin>
1c0056f8:	02800804 	addi.w	$r4,$r0,2(0x2)
1c0056fc:	57dc5fff 	bl	-9124(0xfffdc5c) # 1c003358 <delay_us>
1c005700:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005704:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c005708:	57bed7ff 	bl	-16684(0xfffbed4) # 1c0015dc <gpio_write_pin>
1c00570c:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c005710:	57be7fff 	bl	-16772(0xfffbe7c) # 1c00158c <gpio_get_pin>
1c005714:	0015008c 	move	$r12,$r4
1c005718:	0015018d 	move	$r13,$r12
1c00571c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005720:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c005730 <DS18B20_Read_Bit+0x54>
1c005724:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005728:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00572c:	50000800 	b	8(0x8) # 1c005734 <DS18B20_Read_Bit+0x58>
1c005730:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005734:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c005738:	57dc23ff 	bl	-9184(0xfffdc20) # 1c003358 <delay_us>
1c00573c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005740:	00150184 	move	$r4,$r12
1c005744:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005748:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00574c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005750:	4c000020 	jirl	$r0,$r1,0

1c005754 <DS18B20_Read_Byte>:
DS18B20_Read_Byte():
1c005754:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005758:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00575c:	29806076 	st.w	$r22,$r3,24(0x18)
1c005760:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005764:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005768:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00576c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005770:	50004400 	b	68(0x44) # 1c0057b4 <DS18B20_Read_Byte+0x60>
1c005774:	57ff6bff 	bl	-152(0xfffff68) # 1c0056dc <DS18B20_Read_Bit>
1c005778:	0015008c 	move	$r12,$r4
1c00577c:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c005780:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c005784:	00409d8c 	slli.w	$r12,$r12,0x7
1c005788:	00005d8d 	ext.w.b	$r13,$r12
1c00578c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005790:	0044858c 	srli.w	$r12,$r12,0x1
1c005794:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005798:	00005d8c 	ext.w.b	$r12,$r12
1c00579c:	001531ac 	or	$r12,$r13,$r12
1c0057a0:	00005d8c 	ext.w.b	$r12,$r12
1c0057a4:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0057a8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0057ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0057b0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0057b4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0057b8:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c0057bc:	6fffb98d 	bgeu	$r12,$r13,-72(0x3ffb8) # 1c005774 <DS18B20_Read_Byte+0x20>
1c0057c0:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0057c4:	00150184 	move	$r4,$r12
1c0057c8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0057cc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0057d0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0057d4:	4c000020 	jirl	$r0,$r1,0

1c0057d8 <DS18B20_Write_Byte>:
DS18B20_Write_Byte():
1c0057d8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0057dc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0057e0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0057e4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0057e8:	0015008c 	move	$r12,$r4
1c0057ec:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0057f0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0057f4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0057f8:	50008400 	b	132(0x84) # 1c00587c <DS18B20_Write_Byte+0xa4>
1c0057fc:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c005800:	0340058c 	andi	$r12,$r12,0x1
1c005804:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005808:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c00580c:	0044858c 	srli.w	$r12,$r12,0x1
1c005810:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c005814:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005818:	40003180 	beqz	$r12,48(0x30) # 1c005848 <DS18B20_Write_Byte+0x70>
1c00581c:	00150005 	move	$r5,$r0
1c005820:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c005824:	57bdbbff 	bl	-16968(0xfffbdb8) # 1c0015dc <gpio_write_pin>
1c005828:	02800804 	addi.w	$r4,$r0,2(0x2)
1c00582c:	57db2fff 	bl	-9428(0xfffdb2c) # 1c003358 <delay_us>
1c005830:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005834:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c005838:	57bda7ff 	bl	-16988(0xfffbda4) # 1c0015dc <gpio_write_pin>
1c00583c:	0280f004 	addi.w	$r4,$r0,60(0x3c)
1c005840:	57db1bff 	bl	-9448(0xfffdb18) # 1c003358 <delay_us>
1c005844:	50002c00 	b	44(0x2c) # 1c005870 <DS18B20_Write_Byte+0x98>
1c005848:	00150005 	move	$r5,$r0
1c00584c:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c005850:	57bd8fff 	bl	-17012(0xfffbd8c) # 1c0015dc <gpio_write_pin>
1c005854:	0280f004 	addi.w	$r4,$r0,60(0x3c)
1c005858:	57db03ff 	bl	-9472(0xfffdb00) # 1c003358 <delay_us>
1c00585c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005860:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c005864:	57bd7bff 	bl	-17032(0xfffbd78) # 1c0015dc <gpio_write_pin>
1c005868:	02800804 	addi.w	$r4,$r0,2(0x2)
1c00586c:	57daefff 	bl	-9492(0xfffdaec) # 1c003358 <delay_us>
1c005870:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005874:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005878:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00587c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005880:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c005884:	6fff798d 	bgeu	$r12,$r13,-136(0x3ff78) # 1c0057fc <DS18B20_Write_Byte+0x24>
1c005888:	03400000 	andi	$r0,$r0,0x0
1c00588c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005890:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005894:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005898:	4c000020 	jirl	$r0,$r1,0

1c00589c <DS18B20_Start>:
DS18B20_Start():
1c00589c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0058a0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0058a4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0058a8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0058ac:	57fd27ff 	bl	-732(0xffffd24) # 1c0055d0 <DS18B20_Rst>
1c0058b0:	57fd6fff 	bl	-660(0xffffd6c) # 1c00561c <DS18B20_Check>
1c0058b4:	02833004 	addi.w	$r4,$r0,204(0xcc)
1c0058b8:	57ff23ff 	bl	-224(0xfffff20) # 1c0057d8 <DS18B20_Write_Byte>
1c0058bc:	02811004 	addi.w	$r4,$r0,68(0x44)
1c0058c0:	57ff1bff 	bl	-232(0xfffff18) # 1c0057d8 <DS18B20_Write_Byte>
1c0058c4:	03400000 	andi	$r0,$r0,0x0
1c0058c8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0058cc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0058d0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0058d4:	4c000020 	jirl	$r0,$r1,0

1c0058d8 <DS18B20_Get_Temp>:
DS18B20_Get_Temp():
1c0058d8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0058dc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0058e0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0058e4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0058e8:	57ffb7ff 	bl	-76(0xfffffb4) # 1c00589c <DS18B20_Start>
1c0058ec:	57fce7ff 	bl	-796(0xffffce4) # 1c0055d0 <DS18B20_Rst>
1c0058f0:	57fd2fff 	bl	-724(0xffffd2c) # 1c00561c <DS18B20_Check>
1c0058f4:	02833004 	addi.w	$r4,$r0,204(0xcc)
1c0058f8:	57fee3ff 	bl	-288(0xffffee0) # 1c0057d8 <DS18B20_Write_Byte>
1c0058fc:	0282f804 	addi.w	$r4,$r0,190(0xbe)
1c005900:	57fedbff 	bl	-296(0xffffed8) # 1c0057d8 <DS18B20_Write_Byte>
1c005904:	57fe53ff 	bl	-432(0xffffe50) # 1c005754 <DS18B20_Read_Byte>
1c005908:	0015008c 	move	$r12,$r4
1c00590c:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c005910:	57fe47ff 	bl	-444(0xffffe44) # 1c005754 <DS18B20_Read_Byte>
1c005914:	0015008c 	move	$r12,$r4
1c005918:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c00591c:	2a3faacc 	ld.bu	$r12,$r22,-22(0xfea)
1c005920:	0040a18c 	slli.w	$r12,$r12,0x8
1c005924:	0000598d 	ext.w.h	$r13,$r12
1c005928:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c00592c:	0000598c 	ext.w.h	$r12,$r12
1c005930:	001531ac 	or	$r12,$r13,$r12
1c005934:	0000598c 	ext.w.h	$r12,$r12
1c005938:	297fa2cc 	st.h	$r12,$r22,-24(0xfe8)
1c00593c:	2a7fa2cd 	ld.hu	$r13,$r22,-24(0xfe8)
1c005940:	140001ec 	lu12i.w	$r12,15(0xf)
1c005944:	03a0018c 	ori	$r12,$r12,0x800
1c005948:	0014b1ad 	and	$r13,$r13,$r12
1c00594c:	140001ec 	lu12i.w	$r12,15(0xf)
1c005950:	03a0018c 	ori	$r12,$r12,0x800
1c005954:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c005978 <DS18B20_Get_Temp+0xa0>
1c005958:	2a7fa2cc 	ld.hu	$r12,$r22,-24(0xfe8)
1c00595c:	0011300c 	sub.w	$r12,$r0,$r12
1c005960:	297fa2cc 	st.h	$r12,$r22,-24(0xfe8)
1c005964:	2a7fa2cd 	ld.hu	$r13,$r22,-24(0xfe8)
1c005968:	02b63c0c 	addi.w	$r12,$r0,-625(0xd8f)
1c00596c:	001c31ac 	mul.w	$r12,$r13,$r12
1c005970:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005974:	50001400 	b	20(0x14) # 1c005988 <DS18B20_Get_Temp+0xb0>
1c005978:	2a7fa2cd 	ld.hu	$r13,$r22,-24(0xfe8)
1c00597c:	0289c40c 	addi.w	$r12,$r0,625(0x271)
1c005980:	001c31ac 	mul.w	$r12,$r13,$r12
1c005984:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005988:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00598c:	00150184 	move	$r4,$r12
1c005990:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005994:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005998:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00599c:	4c000020 	jirl	$r0,$r1,0

1c0059a0 <Write_IIC_Command>:
Write_IIC_Command():
1c0059a0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0059a4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0059a8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0059ac:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0059b0:	0015008c 	move	$r12,$r4
1c0059b4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0059b8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0059bc:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c0059c0:	57dfe3ff 	bl	-8224(0xfffdfe0) # 1c0039a0 <I2C_GenerateSTART>
1c0059c4:	0281e005 	addi.w	$r5,$r0,120(0x78)
1c0059c8:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c0059cc:	57e0bfff 	bl	-8004(0xfffe0bc) # 1c003a88 <I2C_SendData>
1c0059d0:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c0059d4:	57e107ff 	bl	-7932(0xfffe104) # 1c003ad8 <I2C_wait>
1c0059d8:	00150005 	move	$r5,$r0
1c0059dc:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c0059e0:	57e0abff 	bl	-8024(0xfffe0a8) # 1c003a88 <I2C_SendData>
1c0059e4:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c0059e8:	57e0f3ff 	bl	-7952(0xfffe0f0) # 1c003ad8 <I2C_wait>
1c0059ec:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0059f0:	00150185 	move	$r5,$r12
1c0059f4:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c0059f8:	57e093ff 	bl	-8048(0xfffe090) # 1c003a88 <I2C_SendData>
1c0059fc:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c005a00:	57e0dbff 	bl	-7976(0xfffe0d8) # 1c003ad8 <I2C_wait>
1c005a04:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005a08:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c005a0c:	57e003ff 	bl	-8192(0xfffe000) # 1c003a0c <I2C_GenerateSTOP>
1c005a10:	03400000 	andi	$r0,$r0,0x0
1c005a14:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005a18:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005a1c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005a20:	4c000020 	jirl	$r0,$r1,0

1c005a24 <Write_IIC_Data>:
Write_IIC_Data():
1c005a24:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005a28:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005a2c:	29806076 	st.w	$r22,$r3,24(0x18)
1c005a30:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005a34:	0015008c 	move	$r12,$r4
1c005a38:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005a3c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005a40:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c005a44:	57df5fff 	bl	-8356(0xfffdf5c) # 1c0039a0 <I2C_GenerateSTART>
1c005a48:	0281e005 	addi.w	$r5,$r0,120(0x78)
1c005a4c:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c005a50:	57e03bff 	bl	-8136(0xfffe038) # 1c003a88 <I2C_SendData>
1c005a54:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c005a58:	57e083ff 	bl	-8064(0xfffe080) # 1c003ad8 <I2C_wait>
1c005a5c:	02810005 	addi.w	$r5,$r0,64(0x40)
1c005a60:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c005a64:	57e027ff 	bl	-8156(0xfffe024) # 1c003a88 <I2C_SendData>
1c005a68:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c005a6c:	57e06fff 	bl	-8084(0xfffe06c) # 1c003ad8 <I2C_wait>
1c005a70:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005a74:	00150185 	move	$r5,$r12
1c005a78:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c005a7c:	57e00fff 	bl	-8180(0xfffe00c) # 1c003a88 <I2C_SendData>
1c005a80:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c005a84:	57e057ff 	bl	-8108(0xfffe054) # 1c003ad8 <I2C_wait>
1c005a88:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005a8c:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c005a90:	57df7fff 	bl	-8324(0xfffdf7c) # 1c003a0c <I2C_GenerateSTOP>
1c005a94:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c005a98:	57e043ff 	bl	-8128(0xfffe040) # 1c003ad8 <I2C_wait>
1c005a9c:	03400000 	andi	$r0,$r0,0x0
1c005aa0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005aa4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005aa8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005aac:	4c000020 	jirl	$r0,$r1,0

1c005ab0 <OLED_WR_Byte>:
OLED_WR_Byte():
1c005ab0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005ab4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005ab8:	29806076 	st.w	$r22,$r3,24(0x18)
1c005abc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005ac0:	0015008c 	move	$r12,$r4
1c005ac4:	001500ad 	move	$r13,$r5
1c005ac8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005acc:	001501ac 	move	$r12,$r13
1c005ad0:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005ad4:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005ad8:	40001580 	beqz	$r12,20(0x14) # 1c005aec <OLED_WR_Byte+0x3c>
1c005adc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005ae0:	00150184 	move	$r4,$r12
1c005ae4:	57ff43ff 	bl	-192(0xfffff40) # 1c005a24 <Write_IIC_Data>
1c005ae8:	50001000 	b	16(0x10) # 1c005af8 <OLED_WR_Byte+0x48>
1c005aec:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005af0:	00150184 	move	$r4,$r12
1c005af4:	57feafff 	bl	-340(0xffffeac) # 1c0059a0 <Write_IIC_Command>
1c005af8:	03400000 	andi	$r0,$r0,0x0
1c005afc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005b00:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005b04:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005b08:	4c000020 	jirl	$r0,$r1,0

1c005b0c <OLED_Init>:
OLED_Init():
1c005b0c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005b10:	29803061 	st.w	$r1,$r3,12(0xc)
1c005b14:	29802076 	st.w	$r22,$r3,8(0x8)
1c005b18:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005b1c:	00150005 	move	$r5,$r0
1c005b20:	0282b804 	addi.w	$r4,$r0,174(0xae)
1c005b24:	57ff8fff 	bl	-116(0xfffff8c) # 1c005ab0 <OLED_WR_Byte>
1c005b28:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005b2c:	57d867ff 	bl	-10140(0xfffd864) # 1c003390 <delay_ms>
1c005b30:	00150005 	move	$r5,$r0
1c005b34:	00150004 	move	$r4,$r0
1c005b38:	57ff7bff 	bl	-136(0xfffff78) # 1c005ab0 <OLED_WR_Byte>
1c005b3c:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005b40:	57d853ff 	bl	-10160(0xfffd850) # 1c003390 <delay_ms>
1c005b44:	00150005 	move	$r5,$r0
1c005b48:	02804004 	addi.w	$r4,$r0,16(0x10)
1c005b4c:	57ff67ff 	bl	-156(0xfffff64) # 1c005ab0 <OLED_WR_Byte>
1c005b50:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005b54:	57d83fff 	bl	-10180(0xfffd83c) # 1c003390 <delay_ms>
1c005b58:	00150005 	move	$r5,$r0
1c005b5c:	02810004 	addi.w	$r4,$r0,64(0x40)
1c005b60:	57ff53ff 	bl	-176(0xfffff50) # 1c005ab0 <OLED_WR_Byte>
1c005b64:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005b68:	57d82bff 	bl	-10200(0xfffd828) # 1c003390 <delay_ms>
1c005b6c:	00150005 	move	$r5,$r0
1c005b70:	02820404 	addi.w	$r4,$r0,129(0x81)
1c005b74:	57ff3fff 	bl	-196(0xfffff3c) # 1c005ab0 <OLED_WR_Byte>
1c005b78:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005b7c:	57d817ff 	bl	-10220(0xfffd814) # 1c003390 <delay_ms>
1c005b80:	00150005 	move	$r5,$r0
1c005b84:	02833c04 	addi.w	$r4,$r0,207(0xcf)
1c005b88:	57ff2bff 	bl	-216(0xfffff28) # 1c005ab0 <OLED_WR_Byte>
1c005b8c:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005b90:	57d803ff 	bl	-10240(0xfffd800) # 1c003390 <delay_ms>
1c005b94:	00150005 	move	$r5,$r0
1c005b98:	02828404 	addi.w	$r4,$r0,161(0xa1)
1c005b9c:	57ff17ff 	bl	-236(0xfffff14) # 1c005ab0 <OLED_WR_Byte>
1c005ba0:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005ba4:	57d7efff 	bl	-10260(0xfffd7ec) # 1c003390 <delay_ms>
1c005ba8:	00150005 	move	$r5,$r0
1c005bac:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c005bb0:	57ff03ff 	bl	-256(0xfffff00) # 1c005ab0 <OLED_WR_Byte>
1c005bb4:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005bb8:	57d7dbff 	bl	-10280(0xfffd7d8) # 1c003390 <delay_ms>
1c005bbc:	00150005 	move	$r5,$r0
1c005bc0:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c005bc4:	57feefff 	bl	-276(0xffffeec) # 1c005ab0 <OLED_WR_Byte>
1c005bc8:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005bcc:	57d7c7ff 	bl	-10300(0xfffd7c4) # 1c003390 <delay_ms>
1c005bd0:	00150005 	move	$r5,$r0
1c005bd4:	0282a004 	addi.w	$r4,$r0,168(0xa8)
1c005bd8:	57fedbff 	bl	-296(0xffffed8) # 1c005ab0 <OLED_WR_Byte>
1c005bdc:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005be0:	57d7b3ff 	bl	-10320(0xfffd7b0) # 1c003390 <delay_ms>
1c005be4:	00150005 	move	$r5,$r0
1c005be8:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c005bec:	57fec7ff 	bl	-316(0xffffec4) # 1c005ab0 <OLED_WR_Byte>
1c005bf0:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005bf4:	57d79fff 	bl	-10340(0xfffd79c) # 1c003390 <delay_ms>
1c005bf8:	00150005 	move	$r5,$r0
1c005bfc:	02834c04 	addi.w	$r4,$r0,211(0xd3)
1c005c00:	57feb3ff 	bl	-336(0xffffeb0) # 1c005ab0 <OLED_WR_Byte>
1c005c04:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005c08:	57d78bff 	bl	-10360(0xfffd788) # 1c003390 <delay_ms>
1c005c0c:	00150005 	move	$r5,$r0
1c005c10:	00150004 	move	$r4,$r0
1c005c14:	57fe9fff 	bl	-356(0xffffe9c) # 1c005ab0 <OLED_WR_Byte>
1c005c18:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005c1c:	57d777ff 	bl	-10380(0xfffd774) # 1c003390 <delay_ms>
1c005c20:	00150005 	move	$r5,$r0
1c005c24:	02835404 	addi.w	$r4,$r0,213(0xd5)
1c005c28:	57fe8bff 	bl	-376(0xffffe88) # 1c005ab0 <OLED_WR_Byte>
1c005c2c:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005c30:	57d763ff 	bl	-10400(0xfffd760) # 1c003390 <delay_ms>
1c005c34:	00150005 	move	$r5,$r0
1c005c38:	02820004 	addi.w	$r4,$r0,128(0x80)
1c005c3c:	57fe77ff 	bl	-396(0xffffe74) # 1c005ab0 <OLED_WR_Byte>
1c005c40:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005c44:	57d74fff 	bl	-10420(0xfffd74c) # 1c003390 <delay_ms>
1c005c48:	00150005 	move	$r5,$r0
1c005c4c:	02836404 	addi.w	$r4,$r0,217(0xd9)
1c005c50:	57fe63ff 	bl	-416(0xffffe60) # 1c005ab0 <OLED_WR_Byte>
1c005c54:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005c58:	57d73bff 	bl	-10440(0xfffd738) # 1c003390 <delay_ms>
1c005c5c:	00150005 	move	$r5,$r0
1c005c60:	0283c404 	addi.w	$r4,$r0,241(0xf1)
1c005c64:	57fe4fff 	bl	-436(0xffffe4c) # 1c005ab0 <OLED_WR_Byte>
1c005c68:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005c6c:	57d727ff 	bl	-10460(0xfffd724) # 1c003390 <delay_ms>
1c005c70:	00150005 	move	$r5,$r0
1c005c74:	02836804 	addi.w	$r4,$r0,218(0xda)
1c005c78:	57fe3bff 	bl	-456(0xffffe38) # 1c005ab0 <OLED_WR_Byte>
1c005c7c:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005c80:	57d713ff 	bl	-10480(0xfffd710) # 1c003390 <delay_ms>
1c005c84:	00150005 	move	$r5,$r0
1c005c88:	02804804 	addi.w	$r4,$r0,18(0x12)
1c005c8c:	57fe27ff 	bl	-476(0xffffe24) # 1c005ab0 <OLED_WR_Byte>
1c005c90:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005c94:	57d6ffff 	bl	-10500(0xfffd6fc) # 1c003390 <delay_ms>
1c005c98:	00150005 	move	$r5,$r0
1c005c9c:	02836c04 	addi.w	$r4,$r0,219(0xdb)
1c005ca0:	57fe13ff 	bl	-496(0xffffe10) # 1c005ab0 <OLED_WR_Byte>
1c005ca4:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005ca8:	57d6ebff 	bl	-10520(0xfffd6e8) # 1c003390 <delay_ms>
1c005cac:	00150005 	move	$r5,$r0
1c005cb0:	02810004 	addi.w	$r4,$r0,64(0x40)
1c005cb4:	57fdffff 	bl	-516(0xffffdfc) # 1c005ab0 <OLED_WR_Byte>
1c005cb8:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005cbc:	57d6d7ff 	bl	-10540(0xfffd6d4) # 1c003390 <delay_ms>
1c005cc0:	00150005 	move	$r5,$r0
1c005cc4:	02808004 	addi.w	$r4,$r0,32(0x20)
1c005cc8:	57fdebff 	bl	-536(0xffffde8) # 1c005ab0 <OLED_WR_Byte>
1c005ccc:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005cd0:	57d6c3ff 	bl	-10560(0xfffd6c0) # 1c003390 <delay_ms>
1c005cd4:	00150005 	move	$r5,$r0
1c005cd8:	02800804 	addi.w	$r4,$r0,2(0x2)
1c005cdc:	57fdd7ff 	bl	-556(0xffffdd4) # 1c005ab0 <OLED_WR_Byte>
1c005ce0:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005ce4:	57d6afff 	bl	-10580(0xfffd6ac) # 1c003390 <delay_ms>
1c005ce8:	00150005 	move	$r5,$r0
1c005cec:	02823404 	addi.w	$r4,$r0,141(0x8d)
1c005cf0:	57fdc3ff 	bl	-576(0xffffdc0) # 1c005ab0 <OLED_WR_Byte>
1c005cf4:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005cf8:	57d69bff 	bl	-10600(0xfffd698) # 1c003390 <delay_ms>
1c005cfc:	00150005 	move	$r5,$r0
1c005d00:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005d04:	57fdafff 	bl	-596(0xffffdac) # 1c005ab0 <OLED_WR_Byte>
1c005d08:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005d0c:	57d687ff 	bl	-10620(0xfffd684) # 1c003390 <delay_ms>
1c005d10:	00150005 	move	$r5,$r0
1c005d14:	02829004 	addi.w	$r4,$r0,164(0xa4)
1c005d18:	57fd9bff 	bl	-616(0xffffd98) # 1c005ab0 <OLED_WR_Byte>
1c005d1c:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005d20:	57d673ff 	bl	-10640(0xfffd670) # 1c003390 <delay_ms>
1c005d24:	00150005 	move	$r5,$r0
1c005d28:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c005d2c:	57fd87ff 	bl	-636(0xffffd84) # 1c005ab0 <OLED_WR_Byte>
1c005d30:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005d34:	57d65fff 	bl	-10660(0xfffd65c) # 1c003390 <delay_ms>
1c005d38:	00150005 	move	$r5,$r0
1c005d3c:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c005d40:	57fd73ff 	bl	-656(0xffffd70) # 1c005ab0 <OLED_WR_Byte>
1c005d44:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005d48:	57d64bff 	bl	-10680(0xfffd648) # 1c003390 <delay_ms>
1c005d4c:	03400000 	andi	$r0,$r0,0x0
1c005d50:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005d54:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005d58:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005d5c:	4c000020 	jirl	$r0,$r1,0

1c005d60 <OLED_Clear>:
OLED_Clear():
1c005d60:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005d64:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005d68:	29806076 	st.w	$r22,$r3,24(0x18)
1c005d6c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005d70:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005d74:	50006800 	b	104(0x68) # 1c005ddc <OLED_Clear+0x7c>
1c005d78:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005d7c:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c005d80:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005d84:	00150005 	move	$r5,$r0
1c005d88:	00150184 	move	$r4,$r12
1c005d8c:	57fd27ff 	bl	-732(0xffffd24) # 1c005ab0 <OLED_WR_Byte>
1c005d90:	00150005 	move	$r5,$r0
1c005d94:	00150004 	move	$r4,$r0
1c005d98:	57fd1bff 	bl	-744(0xffffd18) # 1c005ab0 <OLED_WR_Byte>
1c005d9c:	00150005 	move	$r5,$r0
1c005da0:	02804004 	addi.w	$r4,$r0,16(0x10)
1c005da4:	57fd0fff 	bl	-756(0xffffd0c) # 1c005ab0 <OLED_WR_Byte>
1c005da8:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005dac:	50001c00 	b	28(0x1c) # 1c005dc8 <OLED_Clear+0x68>
1c005db0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005db4:	00150004 	move	$r4,$r0
1c005db8:	57fcfbff 	bl	-776(0xffffcf8) # 1c005ab0 <OLED_WR_Byte>
1c005dbc:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005dc0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005dc4:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005dc8:	283fbacc 	ld.b	$r12,$r22,-18(0xfee)
1c005dcc:	67ffe580 	bge	$r12,$r0,-28(0x3ffe4) # 1c005db0 <OLED_Clear+0x50>
1c005dd0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005dd4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005dd8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005ddc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005de0:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005de4:	6fff958d 	bgeu	$r12,$r13,-108(0x3ff94) # 1c005d78 <OLED_Clear+0x18>
1c005de8:	03400000 	andi	$r0,$r0,0x0
1c005dec:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005df0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005df4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005df8:	4c000020 	jirl	$r0,$r1,0

1c005dfc <OLED_Full>:
OLED_Full():
1c005dfc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005e00:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005e04:	29806076 	st.w	$r22,$r3,24(0x18)
1c005e08:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005e0c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005e10:	50006800 	b	104(0x68) # 1c005e78 <OLED_Full+0x7c>
1c005e14:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005e18:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c005e1c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005e20:	00150005 	move	$r5,$r0
1c005e24:	00150184 	move	$r4,$r12
1c005e28:	57fc8bff 	bl	-888(0xffffc88) # 1c005ab0 <OLED_WR_Byte>
1c005e2c:	00150005 	move	$r5,$r0
1c005e30:	00150004 	move	$r4,$r0
1c005e34:	57fc7fff 	bl	-900(0xffffc7c) # 1c005ab0 <OLED_WR_Byte>
1c005e38:	00150005 	move	$r5,$r0
1c005e3c:	02804004 	addi.w	$r4,$r0,16(0x10)
1c005e40:	57fc73ff 	bl	-912(0xffffc70) # 1c005ab0 <OLED_WR_Byte>
1c005e44:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005e48:	50001c00 	b	28(0x1c) # 1c005e64 <OLED_Full+0x68>
1c005e4c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005e50:	0283fc04 	addi.w	$r4,$r0,255(0xff)
1c005e54:	57fc5fff 	bl	-932(0xffffc5c) # 1c005ab0 <OLED_WR_Byte>
1c005e58:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005e5c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005e60:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005e64:	283fbacc 	ld.b	$r12,$r22,-18(0xfee)
1c005e68:	67ffe580 	bge	$r12,$r0,-28(0x3ffe4) # 1c005e4c <OLED_Full+0x50>
1c005e6c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005e70:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005e74:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005e78:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005e7c:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005e80:	6fff958d 	bgeu	$r12,$r13,-108(0x3ff94) # 1c005e14 <OLED_Full+0x18>
1c005e84:	03400000 	andi	$r0,$r0,0x0
1c005e88:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005e8c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005e90:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005e94:	4c000020 	jirl	$r0,$r1,0

1c005e98 <OLED_Set_Pos>:
OLED_Set_Pos():
1c005e98:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005e9c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005ea0:	29806076 	st.w	$r22,$r3,24(0x18)
1c005ea4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005ea8:	0015008c 	move	$r12,$r4
1c005eac:	001500ad 	move	$r13,$r5
1c005eb0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005eb4:	001501ac 	move	$r12,$r13
1c005eb8:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005ebc:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005ec0:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c005ec4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005ec8:	00150005 	move	$r5,$r0
1c005ecc:	00150184 	move	$r4,$r12
1c005ed0:	57fbe3ff 	bl	-1056(0xffffbe0) # 1c005ab0 <OLED_WR_Byte>
1c005ed4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005ed8:	0044918c 	srli.w	$r12,$r12,0x4
1c005edc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005ee0:	0380418c 	ori	$r12,$r12,0x10
1c005ee4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005ee8:	00150005 	move	$r5,$r0
1c005eec:	00150184 	move	$r4,$r12
1c005ef0:	57fbc3ff 	bl	-1088(0xffffbc0) # 1c005ab0 <OLED_WR_Byte>
1c005ef4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005ef8:	03403d8c 	andi	$r12,$r12,0xf
1c005efc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005f00:	00150005 	move	$r5,$r0
1c005f04:	00150184 	move	$r4,$r12
1c005f08:	57fbabff 	bl	-1112(0xffffba8) # 1c005ab0 <OLED_WR_Byte>
1c005f0c:	03400000 	andi	$r0,$r0,0x0
1c005f10:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005f14:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005f18:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005f1c:	4c000020 	jirl	$r0,$r1,0

1c005f20 <OLED_ShowChar>:
OLED_ShowChar():
1c005f20:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005f24:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005f28:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005f2c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005f30:	0015008c 	move	$r12,$r4
1c005f34:	001500ae 	move	$r14,$r5
1c005f38:	001500cd 	move	$r13,$r6
1c005f3c:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c005f40:	001501cc 	move	$r12,$r14
1c005f44:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c005f48:	001501ac 	move	$r12,$r13
1c005f4c:	293f76cc 	st.b	$r12,$r22,-35(0xfdd)
1c005f50:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005f54:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005f58:	2a3f76cc 	ld.bu	$r12,$r22,-35(0xfdd)
1c005f5c:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c005f60:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005f64:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c005f68:	0281e00c 	addi.w	$r12,$r0,120(0x78)
1c005f6c:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c005f80 <OLED_ShowChar+0x60>
1c005f70:	293f7ec0 	st.b	$r0,$r22,-33(0xfdf)
1c005f74:	2a3f7acc 	ld.bu	$r12,$r22,-34(0xfde)
1c005f78:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c005f7c:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c005f80:	2a3f7acd 	ld.bu	$r13,$r22,-34(0xfde)
1c005f84:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c005f88:	6c00098d 	bgeu	$r12,$r13,8(0x8) # 1c005f90 <OLED_ShowChar+0x70>
1c005f8c:	293f7ac0 	st.b	$r0,$r22,-34(0xfde)
1c005f90:	2a3f7acd 	ld.bu	$r13,$r22,-34(0xfde)
1c005f94:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c005f98:	001501a5 	move	$r5,$r13
1c005f9c:	00150184 	move	$r4,$r12
1c005fa0:	57fefbff 	bl	-264(0xffffef8) # 1c005e98 <OLED_Set_Pos>
1c005fa4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005fa8:	50003c00 	b	60(0x3c) # 1c005fe4 <OLED_ShowChar+0xc4>
1c005fac:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c005fb0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005fb4:	1c00002e 	pcaddu12i	$r14,1(0x1)
1c005fb8:	0283c1ce 	addi.w	$r14,$r14,240(0xf0)
1c005fbc:	004091ad 	slli.w	$r13,$r13,0x4
1c005fc0:	001035cd 	add.w	$r13,$r14,$r13
1c005fc4:	001031ac 	add.w	$r12,$r13,$r12
1c005fc8:	2a00018c 	ld.bu	$r12,$r12,0
1c005fcc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005fd0:	00150184 	move	$r4,$r12
1c005fd4:	57fadfff 	bl	-1316(0xffffadc) # 1c005ab0 <OLED_WR_Byte>
1c005fd8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005fdc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005fe0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005fe4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005fe8:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005fec:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c005fac <OLED_ShowChar+0x8c>
1c005ff0:	2a3f7acc 	ld.bu	$r12,$r22,-34(0xfde)
1c005ff4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005ff8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005ffc:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c006000:	001501a5 	move	$r5,$r13
1c006004:	00150184 	move	$r4,$r12
1c006008:	57fe93ff 	bl	-368(0xffffe90) # 1c005e98 <OLED_Set_Pos>
1c00600c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006010:	50004000 	b	64(0x40) # 1c006050 <OLED_ShowChar+0x130>
1c006014:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c006018:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00601c:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c006020:	1c00002e 	pcaddu12i	$r14,1(0x1)
1c006024:	028211ce 	addi.w	$r14,$r14,132(0x84)
1c006028:	004091ad 	slli.w	$r13,$r13,0x4
1c00602c:	001035cd 	add.w	$r13,$r14,$r13
1c006030:	001031ac 	add.w	$r12,$r13,$r12
1c006034:	2a00018c 	ld.bu	$r12,$r12,0
1c006038:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00603c:	00150184 	move	$r4,$r12
1c006040:	57fa73ff 	bl	-1424(0xffffa70) # 1c005ab0 <OLED_WR_Byte>
1c006044:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006048:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00604c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006050:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006054:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c006058:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c006014 <OLED_ShowChar+0xf4>
1c00605c:	03400000 	andi	$r0,$r0,0x0
1c006060:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006064:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006068:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00606c:	4c000020 	jirl	$r0,$r1,0

1c006070 <oled_pow>:
oled_pow():
1c006070:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006074:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c006078:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00607c:	0015008c 	move	$r12,$r4
1c006080:	001500ad 	move	$r13,$r5
1c006084:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c006088:	001501ac 	move	$r12,$r13
1c00608c:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c006090:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006094:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006098:	50001400 	b	20(0x14) # 1c0060ac <oled_pow+0x3c>
1c00609c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0060a0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0060a4:	001c31ac 	mul.w	$r12,$r13,$r12
1c0060a8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0060ac:	2a3f7acc 	ld.bu	$r12,$r22,-34(0xfde)
1c0060b0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0060b4:	293f7acd 	st.b	$r13,$r22,-34(0xfde)
1c0060b8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00609c <oled_pow+0x2c>
1c0060bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0060c0:	00150184 	move	$r4,$r12
1c0060c4:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0060c8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0060cc:	4c000020 	jirl	$r0,$r1,0

1c0060d0 <OLED_ShowNum>:
OLED_ShowNum():
1c0060d0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0060d4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0060d8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0060dc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0060e0:	0015008c 	move	$r12,$r4
1c0060e4:	001500af 	move	$r15,$r5
1c0060e8:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c0060ec:	001500ee 	move	$r14,$r7
1c0060f0:	0015010d 	move	$r13,$r8
1c0060f4:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0060f8:	001501ec 	move	$r12,$r15
1c0060fc:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c006100:	001501cc 	move	$r12,$r14
1c006104:	293f76cc 	st.b	$r12,$r22,-35(0xfdd)
1c006108:	001501ac 	move	$r12,$r13
1c00610c:	293f72cc 	st.b	$r12,$r22,-36(0xfdc)
1c006110:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c006114:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006118:	50012000 	b	288(0x120) # 1c006238 <OLED_ShowNum+0x168>
1c00611c:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c006120:	0281e00c 	addi.w	$r12,$r0,120(0x78)
1c006124:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c006138 <OLED_ShowNum+0x68>
1c006128:	293f7ec0 	st.b	$r0,$r22,-33(0xfdf)
1c00612c:	2a3f7acc 	ld.bu	$r12,$r22,-34(0xfde)
1c006130:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c006134:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c006138:	2a3f7acd 	ld.bu	$r13,$r22,-34(0xfde)
1c00613c:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c006140:	6c00098d 	bgeu	$r12,$r13,8(0x8) # 1c006148 <OLED_ShowNum+0x78>
1c006144:	293f7ac0 	st.b	$r0,$r22,-34(0xfde)
1c006148:	2a3f76cd 	ld.bu	$r13,$r22,-35(0xfdd)
1c00614c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006150:	001131ac 	sub.w	$r12,$r13,$r12
1c006154:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006158:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00615c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006160:	00150185 	move	$r5,$r12
1c006164:	02802804 	addi.w	$r4,$r0,10(0xa)
1c006168:	57ff0bff 	bl	-248(0xfffff08) # 1c006070 <oled_pow>
1c00616c:	0015008d 	move	$r13,$r4
1c006170:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006174:	0021358e 	div.wu	$r14,$r12,$r13
1c006178:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c006180 <OLED_ShowNum+0xb0>
1c00617c:	002a0007 	break	0x7
1c006180:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c006184:	0021b5cc 	mod.wu	$r12,$r14,$r13
1c006188:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c006190 <OLED_ShowNum+0xc0>
1c00618c:	002a0007 	break	0x7
1c006190:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c006194:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006198:	44005980 	bnez	$r12,88(0x58) # 1c0061f0 <OLED_ShowNum+0x120>
1c00619c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0061a0:	2a3f76cc 	ld.bu	$r12,$r22,-35(0xfdd)
1c0061a4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0061a8:	640049ac 	bge	$r13,$r12,72(0x48) # 1c0061f0 <OLED_ShowNum+0x120>
1c0061ac:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c0061b0:	44003980 	bnez	$r12,56(0x38) # 1c0061e8 <OLED_ShowNum+0x118>
1c0061b4:	2a3f7acd 	ld.bu	$r13,$r22,-34(0xfde)
1c0061b8:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0061bc:	02808006 	addi.w	$r6,$r0,32(0x20)
1c0061c0:	001501a5 	move	$r5,$r13
1c0061c4:	00150184 	move	$r4,$r12
1c0061c8:	57fd5bff 	bl	-680(0xffffd58) # 1c005f20 <OLED_ShowChar>
1c0061cc:	2a3f72cc 	ld.bu	$r12,$r22,-36(0xfdc)
1c0061d0:	0044858c 	srli.w	$r12,$r12,0x1
1c0061d4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0061d8:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0061dc:	001031ac 	add.w	$r12,$r13,$r12
1c0061e0:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0061e4:	50004800 	b	72(0x48) # 1c00622c <OLED_ShowNum+0x15c>
1c0061e8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0061ec:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0061f0:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c0061f4:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c0061f8:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c0061fc:	2a3f7acd 	ld.bu	$r13,$r22,-34(0xfde)
1c006200:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c006204:	001501c6 	move	$r6,$r14
1c006208:	001501a5 	move	$r5,$r13
1c00620c:	00150184 	move	$r4,$r12
1c006210:	57fd13ff 	bl	-752(0xffffd10) # 1c005f20 <OLED_ShowChar>
1c006214:	2a3f72cc 	ld.bu	$r12,$r22,-36(0xfdc)
1c006218:	0044858c 	srli.w	$r12,$r12,0x1
1c00621c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c006220:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c006224:	001031ac 	add.w	$r12,$r13,$r12
1c006228:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c00622c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006230:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006234:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006238:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00623c:	2a3f76cc 	ld.bu	$r12,$r22,-35(0xfdd)
1c006240:	6bfeddac 	bltu	$r13,$r12,-292(0x3fedc) # 1c00611c <OLED_ShowNum+0x4c>
1c006244:	03400000 	andi	$r0,$r0,0x0
1c006248:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00624c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006250:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006254:	4c000020 	jirl	$r0,$r1,0

1c006258 <OLED_ShowString>:
OLED_ShowString():
1c006258:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00625c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006260:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006264:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006268:	0015008c 	move	$r12,$r4
1c00626c:	001500ad 	move	$r13,$r5
1c006270:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c006274:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c006278:	001501ac 	move	$r12,$r13
1c00627c:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c006280:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006284:	50007400 	b	116(0x74) # 1c0062f8 <OLED_ShowString+0xa0>
1c006288:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c00628c:	0281e00c 	addi.w	$r12,$r0,120(0x78)
1c006290:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c0062a4 <OLED_ShowString+0x4c>
1c006294:	293f7ec0 	st.b	$r0,$r22,-33(0xfdf)
1c006298:	2a3f7acc 	ld.bu	$r12,$r22,-34(0xfde)
1c00629c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0062a0:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c0062a4:	2a3f7acd 	ld.bu	$r13,$r22,-34(0xfde)
1c0062a8:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c0062ac:	6c00098d 	bgeu	$r12,$r13,8(0x8) # 1c0062b4 <OLED_ShowString+0x5c>
1c0062b0:	293f7ac0 	st.b	$r0,$r22,-34(0xfde)
1c0062b4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0062b8:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0062bc:	001031ac 	add.w	$r12,$r13,$r12
1c0062c0:	2800018c 	ld.b	$r12,$r12,0
1c0062c4:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c0062c8:	2a3f7acd 	ld.bu	$r13,$r22,-34(0xfde)
1c0062cc:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0062d0:	001501c6 	move	$r6,$r14
1c0062d4:	001501a5 	move	$r5,$r13
1c0062d8:	00150184 	move	$r4,$r12
1c0062dc:	57fc47ff 	bl	-956(0xffffc44) # 1c005f20 <OLED_ShowChar>
1c0062e0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0062e4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0062e8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0062ec:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0062f0:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c0062f4:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0062f8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0062fc:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c006300:	001031ac 	add.w	$r12,$r13,$r12
1c006304:	2800018c 	ld.b	$r12,$r12,0
1c006308:	47ff819f 	bnez	$r12,-128(0x7fff80) # 1c006288 <OLED_ShowString+0x30>
1c00630c:	03400000 	andi	$r0,$r0,0x0
1c006310:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006314:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006318:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00631c:	4c000020 	jirl	$r0,$r1,0

1c006320 <OLED_ShowCHinese>:
OLED_ShowCHinese():
1c006320:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006324:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006328:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00632c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006330:	0015008c 	move	$r12,$r4
1c006334:	001500ae 	move	$r14,$r5
1c006338:	001500cd 	move	$r13,$r6
1c00633c:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c006340:	001501cc 	move	$r12,$r14
1c006344:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c006348:	001501ac 	move	$r12,$r13
1c00634c:	293f76cc 	st.b	$r12,$r22,-35(0xfdd)
1c006350:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c006354:	0281e00c 	addi.w	$r12,$r0,120(0x78)
1c006358:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c00636c <OLED_ShowCHinese+0x4c>
1c00635c:	293f7ec0 	st.b	$r0,$r22,-33(0xfdf)
1c006360:	2a3f7acc 	ld.bu	$r12,$r22,-34(0xfde)
1c006364:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c006368:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c00636c:	2a3f7acd 	ld.bu	$r13,$r22,-34(0xfde)
1c006370:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c006374:	6c00098d 	bgeu	$r12,$r13,8(0x8) # 1c00637c <OLED_ShowCHinese+0x5c>
1c006378:	293f7ac0 	st.b	$r0,$r22,-34(0xfde)
1c00637c:	2a3f7acd 	ld.bu	$r13,$r22,-34(0xfde)
1c006380:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c006384:	001501a5 	move	$r5,$r13
1c006388:	00150184 	move	$r4,$r12
1c00638c:	57fb0fff 	bl	-1268(0xffffb0c) # 1c005e98 <OLED_Set_Pos>
1c006390:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006394:	50004000 	b	64(0x40) # 1c0063d4 <OLED_ShowCHinese+0xb4>
1c006398:	2a3f76cc 	ld.bu	$r12,$r22,-35(0xfdd)
1c00639c:	0040858c 	slli.w	$r12,$r12,0x1
1c0063a0:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c0063a4:	028bd1ad 	addi.w	$r13,$r13,756(0x2f4)
1c0063a8:	0040918c 	slli.w	$r12,$r12,0x4
1c0063ac:	001031ad 	add.w	$r13,$r13,$r12
1c0063b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0063b4:	001031ac 	add.w	$r12,$r13,$r12
1c0063b8:	2a00018c 	ld.bu	$r12,$r12,0
1c0063bc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0063c0:	00150184 	move	$r4,$r12
1c0063c4:	57f6efff 	bl	-2324(0xffff6ec) # 1c005ab0 <OLED_WR_Byte>
1c0063c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0063cc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0063d0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0063d4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0063d8:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0063dc:	67ffbd8d 	bge	$r12,$r13,-68(0x3ffbc) # 1c006398 <OLED_ShowCHinese+0x78>
1c0063e0:	2a3f7acc 	ld.bu	$r12,$r22,-34(0xfde)
1c0063e4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0063e8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0063ec:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0063f0:	001501a5 	move	$r5,$r13
1c0063f4:	00150184 	move	$r4,$r12
1c0063f8:	57faa3ff 	bl	-1376(0xffffaa0) # 1c005e98 <OLED_Set_Pos>
1c0063fc:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c006400:	50004400 	b	68(0x44) # 1c006444 <OLED_ShowCHinese+0x124>
1c006404:	2a3f76cc 	ld.bu	$r12,$r22,-35(0xfdd)
1c006408:	0040858c 	slli.w	$r12,$r12,0x1
1c00640c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006410:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c006414:	028a11ad 	addi.w	$r13,$r13,644(0x284)
1c006418:	0040918c 	slli.w	$r12,$r12,0x4
1c00641c:	001031ad 	add.w	$r13,$r13,$r12
1c006420:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006424:	001031ac 	add.w	$r12,$r13,$r12
1c006428:	2a00018c 	ld.bu	$r12,$r12,0
1c00642c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006430:	00150184 	move	$r4,$r12
1c006434:	57f67fff 	bl	-2436(0xffff67c) # 1c005ab0 <OLED_WR_Byte>
1c006438:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00643c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006440:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006444:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c006448:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c00644c:	67ffb98d 	bge	$r12,$r13,-72(0x3ffb8) # 1c006404 <OLED_ShowCHinese+0xe4>
1c006450:	03400000 	andi	$r0,$r0,0x0
1c006454:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006458:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00645c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006460:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c006480 <msg_wakeup>:
msg_wakeup():
1c006480:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c01cfe0 <_sidata+0x1582c>
1c006484:	0a217075 	xvfmadd.d	$xr21,$xr3,$xr28,$xr2
	...

1c006489 <hexdecarr>:
hexdecarr():
1c006489:	33323130 	xvstelm.w	$xr16,$r9,-464(0x230),0x4
1c00648d:	37363534 	0x37363534
1c006491:	62613938 	blt	$r9,$r24,-106184(0x26138) # 1bfec5c9 <_start-0x13a37>
1c006495:	66656463 	bge	$r3,$r3,-105116(0x26564) # 1bfec9f9 <_start-0x13607>
1c006499:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c00649d:	79654b0a 	0x79654b0a
1c0064a1:	73657220 	vssrani.wu.d	$vr0,$vr17,0x1c
1c0064a5:	0d217465 	xvbitsel.v	$xr5,$xr3,$xr29,$xr2
1c0064a9:	0d00000a 	fsel	$f10,$f0,$f0,$fcc0
1c0064ad:	6970730a 	bltu	$r24,$r10,94320(0x17070) # 1c01d51d <_sidata+0x15d69>
1c0064b1:	6f6f6220 	bgeu	$r17,$r0,-37024(0x36f60) # 1bffd411 <_start-0x2bef>
1c0064b5:	0d000074 	fsel	$f20,$f3,$f0,$fcc0
1c0064b9:	676f640a 	bge	$r0,$r10,-37020(0x36f64) # 1bffd41d <_start-0x2be3>
1c0064bd:	72616220 	0x72616220
1c0064c1:	0a0d216b 	0x0a0d216b
1c0064c5:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0064c9:	6b61770a 	bltu	$r24,$r10,-40588(0x36174) # 1bffc63d <_start-0x39c3>
1c0064cd:	21705565 	sc.w	$r5,$r11,28756(0x7054)
1c0064d1:	8c000a0d 	0x8c000a0d
1c0064d5:	a81c001c 	0xa81c001c
1c0064d9:	a81c001d 	0xa81c001d
1c0064dd:	a81c001d 	0xa81c001d
1c0064e1:	a81c001d 	0xa81c001d
1c0064e5:	a81c001d 	0xa81c001d
1c0064e9:	a81c001d 	0xa81c001d
1c0064ed:	a81c001d 	0xa81c001d
1c0064f1:	a81c001d 	0xa81c001d
1c0064f5:	a81c001d 	0xa81c001d
1c0064f9:	a81c001d 	0xa81c001d
1c0064fd:	a41c001d 	0xa41c001d
1c006501:	2c1c001c 	vld	$vr28,$r0,1792(0x700)
1c006505:	2c1c001d 	vld	$vr29,$r0,1792(0x700)
1c006509:	2c1c001d 	vld	$vr29,$r0,1792(0x700)
1c00650d:	2c1c001d 	vld	$vr29,$r0,1792(0x700)
1c006511:	2c1c001d 	vld	$vr29,$r0,1792(0x700)
1c006515:	2c1c001d 	vld	$vr29,$r0,1792(0x700)
1c006519:	2c1c001d 	vld	$vr29,$r0,1792(0x700)
1c00651d:	2c1c001d 	vld	$vr29,$r0,1792(0x700)
1c006521:	2c1c001d 	vld	$vr29,$r0,1792(0x700)
1c006525:	a81c001d 	0xa81c001d
1c006529:	a81c001d 	0xa81c001d
1c00652d:	a81c001d 	0xa81c001d
1c006531:	a81c001d 	0xa81c001d
1c006535:	a81c001d 	0xa81c001d
1c006539:	a81c001d 	0xa81c001d
1c00653d:	a81c001d 	0xa81c001d
1c006541:	a81c001d 	0xa81c001d
1c006545:	a81c001d 	0xa81c001d
1c006549:	a81c001d 	0xa81c001d
1c00654d:	a81c001d 	0xa81c001d
1c006551:	a81c001d 	0xa81c001d
1c006555:	a81c001d 	0xa81c001d
1c006559:	a81c001d 	0xa81c001d
1c00655d:	a81c001d 	0xa81c001d
1c006561:	a81c001d 	0xa81c001d
1c006565:	a81c001d 	0xa81c001d
1c006569:	a81c001d 	0xa81c001d
1c00656d:	a81c001d 	0xa81c001d
1c006571:	a81c001d 	0xa81c001d
1c006575:	a81c001d 	0xa81c001d
1c006579:	a81c001d 	0xa81c001d
1c00657d:	a81c001d 	0xa81c001d
1c006581:	a81c001d 	0xa81c001d
1c006585:	a81c001d 	0xa81c001d
1c006589:	a81c001d 	0xa81c001d
1c00658d:	a81c001d 	0xa81c001d
1c006591:	a81c001d 	0xa81c001d
1c006595:	a81c001d 	0xa81c001d
1c006599:	a81c001d 	0xa81c001d
1c00659d:	a81c001d 	0xa81c001d
1c0065a1:	a81c001d 	0xa81c001d
1c0065a5:	a81c001d 	0xa81c001d
1c0065a9:	a81c001d 	0xa81c001d
1c0065ad:	a81c001d 	0xa81c001d
1c0065b1:	a81c001d 	0xa81c001d
1c0065b5:	a81c001d 	0xa81c001d
1c0065b9:	a81c001d 	0xa81c001d
1c0065bd:	a81c001d 	0xa81c001d
1c0065c1:	a81c001d 	0xa81c001d
1c0065c5:	1c1c001d 	pcaddu12i	$r29,57344(0xe000)
1c0065c9:	441c001c 	bnez	$r0,-1041408(0x701c00) # 1bf081c9 <_start-0xf7e37>
1c0065cd:	ac1c001b 	0xac1c001b
1c0065d1:	a81c001b 	0xa81c001b
1c0065d5:	a81c001d 	0xa81c001d
1c0065d9:	a81c001d 	0xa81c001d
1c0065dd:	a81c001d 	0xa81c001d
1c0065e1:	a81c001d 	0xa81c001d
1c0065e5:	a81c001d 	0xa81c001d
1c0065e9:	a81c001d 	0xa81c001d
1c0065ed:	a81c001d 	0xa81c001d
1c0065f1:	a81c001d 	0xa81c001d
1c0065f5:	a81c001d 	0xa81c001d
1c0065f9:	e41c001d 	0xe41c001d
1c0065fd:	541c001b 	bl	7085056(0x6c1c00) # 1c6c81fd <_sidata+0x6c0a49>
1c006601:	a81c001c 	0xa81c001c
1c006605:	a81c001d 	0xa81c001d
1c006609:	181c001d 	pcaddi	$r29,57344(0xe000)
1c00660d:	a81c001b 	0xa81c001b
1c006611:	741c001d 	0x741c001d
1c006615:	a81c001b 	0xa81c001b
1c006619:	a81c001d 	0xa81c001d
1c00661d:	541c001d 	bl	7609344(0x741c00) # 1c74821d <_sidata+0x740a69>
1c006621:	401c001c 	beqz	$r0,-1041408(0x701c00) # 1bf08221 <_start-0xf7ddf>
1c006625:	641c0022 	bge	$r1,$r2,7168(0x1c00) # 1c008225 <_sidata+0xa71>
1c006629:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c008229 <_sidata+0xa75>
1c00662d:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c00822d <_sidata+0xa79>
1c006631:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c008231 <_sidata+0xa7d>
1c006635:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c008235 <_sidata+0xa81>
1c006639:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c008239 <_sidata+0xa85>
1c00663d:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c00823d <_sidata+0xa89>
1c006641:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c008241 <_sidata+0xa8d>
1c006645:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c008245 <_sidata+0xa91>
1c006649:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c008249 <_sidata+0xa95>
1c00664d:	601c0023 	blt	$r1,$r3,7168(0x1c00) # 1c00824d <_sidata+0xa99>
1c006651:	e81c0022 	0xe81c0022
1c006655:	e81c0022 	0xe81c0022
1c006659:	e81c0022 	0xe81c0022
1c00665d:	e81c0022 	0xe81c0022
1c006661:	e81c0022 	0xe81c0022
1c006665:	e81c0022 	0xe81c0022
1c006669:	e81c0022 	0xe81c0022
1c00666d:	e81c0022 	0xe81c0022
1c006671:	e81c0022 	0xe81c0022
1c006675:	641c0022 	bge	$r1,$r2,7168(0x1c00) # 1c008275 <_sidata+0xac1>
1c006679:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c008279 <_sidata+0xac5>
1c00667d:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c00827d <_sidata+0xac9>
1c006681:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c008281 <_sidata+0xacd>
1c006685:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c008285 <_sidata+0xad1>
1c006689:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c008289 <_sidata+0xad5>
1c00668d:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c00828d <_sidata+0xad9>
1c006691:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c008291 <_sidata+0xadd>
1c006695:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c008295 <_sidata+0xae1>
1c006699:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c008299 <_sidata+0xae5>
1c00669d:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c00829d <_sidata+0xae9>
1c0066a1:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c0082a1 <_sidata+0xaed>
1c0066a5:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c0082a5 <_sidata+0xaf1>
1c0066a9:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c0082a9 <_sidata+0xaf5>
1c0066ad:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c0082ad <_sidata+0xaf9>
1c0066b1:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c0082b1 <_sidata+0xafd>
1c0066b5:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c0082b5 <_sidata+0xb01>
1c0066b9:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c0082b9 <_sidata+0xb05>
1c0066bd:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c0082bd <_sidata+0xb09>
1c0066c1:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c0082c1 <_sidata+0xb0d>
1c0066c5:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c0082c5 <_sidata+0xb11>
1c0066c9:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c0082c9 <_sidata+0xb15>
1c0066cd:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c0082cd <_sidata+0xb19>
1c0066d1:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c0082d1 <_sidata+0xb1d>
1c0066d5:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c0082d5 <_sidata+0xb21>
1c0066d9:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c0082d9 <_sidata+0xb25>
1c0066dd:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c0082dd <_sidata+0xb29>
1c0066e1:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c0082e1 <_sidata+0xb2d>
1c0066e5:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c0082e5 <_sidata+0xb31>
1c0066e9:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c0082e9 <_sidata+0xb35>
1c0066ed:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c0082ed <_sidata+0xb39>
1c0066f1:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c0082f1 <_sidata+0xb3d>
1c0066f5:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c0082f5 <_sidata+0xb41>
1c0066f9:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c0082f9 <_sidata+0xb45>
1c0066fd:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c0082fd <_sidata+0xb49>
1c006701:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c008301 <_sidata+0xb4d>
1c006705:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c008305 <_sidata+0xb51>
1c006709:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c008309 <_sidata+0xb55>
1c00670d:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c00830d <_sidata+0xb59>
1c006711:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c008311 <_sidata+0xb5d>
1c006715:	c81c0023 	0xc81c0023
1c006719:	e01c0021 	0xe01c0021
1c00671d:	501c0020 	b	8395776(0x801c00) # 1c80831d <_sidata+0x800b69>
1c006721:	641c0021 	bge	$r1,$r1,7168(0x1c00) # 1c008321 <_sidata+0xb6d>
1c006725:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c008325 <_sidata+0xb71>
1c006729:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c008329 <_sidata+0xb75>
1c00672d:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c00832d <_sidata+0xb79>
1c006731:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c008331 <_sidata+0xb7d>
1c006735:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c008335 <_sidata+0xb81>
1c006739:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c008339 <_sidata+0xb85>
1c00673d:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c00833d <_sidata+0xb89>
1c006741:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c008341 <_sidata+0xb8d>
1c006745:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c008345 <_sidata+0xb91>
1c006749:	8c1c0023 	0x8c1c0023
1c00674d:	041c0021 	csrwr	$r1,0x700
1c006751:	641c0022 	bge	$r1,$r2,7168(0x1c00) # 1c008351 <_sidata+0xb9d>
1c006755:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c008355 <_sidata+0xba1>
1c006759:	b01c0023 	0xb01c0023
1c00675d:	641c0020 	bge	$r1,$r0,7168(0x1c00) # 1c00835d <_sidata+0xba9>
1c006761:	141c0023 	lu12i.w	$r3,57345(0xe001)
1c006765:	641c0021 	bge	$r1,$r1,7168(0x1c00) # 1c008365 <_sidata+0xbb1>
1c006769:	641c0023 	bge	$r1,$r3,7168(0x1c00) # 1c008369 <_sidata+0xbb5>
1c00676d:	041c0023 	csrwr	$r3,0x700
1c006771:	0a1c0022 	xvfmadd.s	$xr2,$xr1,$xr0,$xr24
1c006775:	7c000000 	0x7c000000
1c006779:	7c7c7c7c 	0x7c7c7c7c
1c00677d:	7c7c7c7c 	0x7c7c7c7c
1c006781:	7c7c7c7c 	0x7c7c7c7c
1c006785:	7c7c7c7c 	0x7c7c7c7c
1c006789:	7c7c7c7c 	0x7c7c7c7c
1c00678d:	7c7c7c7c 	0x7c7c7c7c
1c006791:	7c7c7c7c 	0x7c7c7c7c
1c006795:	7c7c7c7c 	0x7c7c7c7c
1c006799:	7c7c7c7c 	0x7c7c7c7c
1c00679d:	7c7c7c7c 	0x7c7c7c7c
1c0067a1:	7c7c7c7c 	0x7c7c7c7c
1c0067a5:	7c7c7c7c 	0x7c7c7c7c
1c0067a9:	7c7c7c7c 	0x7c7c7c7c
1c0067ad:	7c7c7c7c 	0x7c7c7c7c
1c0067b1:	7c7c7c7c 	0x7c7c7c7c
1c0067b5:	7c7c7c7c 	0x7c7c7c7c
1c0067b9:	7c7c7c7c 	0x7c7c7c7c
1c0067bd:	7c7c7c7c 	0x7c7c7c7c
1c0067c1:	7c7c7c7c 	0x7c7c7c7c
1c0067c5:	7c7c7c7c 	0x7c7c7c7c
1c0067c9:	7c7c7c7c 	0x7c7c7c7c
1c0067cd:	7c7c7c7c 	0x7c7c7c7c
1c0067d1:	7c7c7c7c 	0x7c7c7c7c
1c0067d5:	7c7c7c7c 	0x7c7c7c7c
1c0067d9:	7c00000a 	0x7c00000a
1c0067dd:	7c20207c 	0x7c20207c
1c0067e1:	7c7c7c7c 	0x7c7c7c7c
1c0067e5:	7c7c7c7c 	0x7c7c7c7c
1c0067e9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0067ed:	7c202020 	0x7c202020
1c0067f1:	7c7c7c7c 	0x7c7c7c7c
1c0067f5:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0067f9:	7c202020 	0x7c202020
1c0067fd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006801:	7c7c2020 	0x7c7c2020
1c006805:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006809:	7c7c7c20 	0x7c7c7c20
1c00680d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006811:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006815:	7c7c7c7c 	0x7c7c7c7c
1c006819:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00681d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006821:	7c7c7c7c 	0x7c7c7c7c
1c006825:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006829:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00682d:	7c7c7c7c 	0x7c7c7c7c
1c006831:	7c202020 	0x7c202020
1c006835:	7c7c7c7c 	0x7c7c7c7c
1c006839:	7c7c2020 	0x7c7c2020
1c00683d:	7c00000a 	0x7c00000a
1c006841:	7c20207c 	0x7c20207c
1c006845:	7c7c7c7c 	0x7c7c7c7c
1c006849:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00684d:	7c7c2020 	0x7c7c2020
1c006851:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006855:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006859:	7c7c2020 	0x7c7c2020
1c00685d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006861:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006865:	7c202020 	0x7c202020
1c006869:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00686d:	7c7c7c20 	0x7c7c7c20
1c006871:	7c20207c 	0x7c20207c
1c006875:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006879:	7c7c7c20 	0x7c7c7c20
1c00687d:	7c202020 	0x7c202020
1c006881:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006885:	7c7c7c20 	0x7c7c7c20
1c006889:	7c202020 	0x7c202020
1c00688d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006891:	7c7c7c20 	0x7c7c7c20
1c006895:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006899:	7c7c7c7c 	0x7c7c7c7c
1c00689d:	7c7c2020 	0x7c7c2020
1c0068a1:	7c00000a 	0x7c00000a
1c0068a5:	7c20207c 	0x7c20207c
1c0068a9:	7c7c7c7c 	0x7c7c7c7c
1c0068ad:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0068b1:	7c7c7c20 	0x7c7c7c20
1c0068b5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0068b9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0068bd:	7c7c7c20 	0x7c7c7c20
1c0068c1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0068c5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0068c9:	20207c20 	ll.w	$r0,$r1,8316(0x207c)
1c0068cd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0068d1:	7c7c7c20 	0x7c7c7c20
1c0068d5:	7c7c2020 	0x7c7c2020
1c0068d9:	7c7c7c7c 	0x7c7c7c7c
1c0068dd:	7c7c7c7c 	0x7c7c7c7c
1c0068e1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0068e5:	7c7c7c20 	0x7c7c7c20
1c0068e9:	7c7c7c7c 	0x7c7c7c7c
1c0068ed:	7c7c2020 	0x7c7c2020
1c0068f1:	7c7c7c7c 	0x7c7c7c7c
1c0068f5:	7c7c7c20 	0x7c7c7c20
1c0068f9:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c0068fd:	7c7c7c20 	0x7c7c7c20
1c006901:	7c7c2020 	0x7c7c2020
1c006905:	7c00000a 	0x7c00000a
1c006909:	7c20207c 	0x7c20207c
1c00690d:	7c7c7c7c 	0x7c7c7c7c
1c006911:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006915:	7c7c7c20 	0x7c7c7c20
1c006919:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00691d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006921:	7c7c7c20 	0x7c7c7c20
1c006925:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006929:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00692d:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c006931:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c006935:	7c7c7c20 	0x7c7c7c20
1c006939:	7c7c2020 	0x7c7c2020
1c00693d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006941:	7c7c7c20 	0x7c7c7c20
1c006945:	7c7c7c7c 	0x7c7c7c7c
1c006949:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00694d:	7c7c7c7c 	0x7c7c7c7c
1c006951:	7c7c2020 	0x7c7c2020
1c006955:	7c7c7c7c 	0x7c7c7c7c
1c006959:	7c7c7c20 	0x7c7c7c20
1c00695d:	7c7c2020 	0x7c7c2020
1c006961:	7c7c2020 	0x7c7c2020
1c006965:	7c7c2020 	0x7c7c2020
1c006969:	7c00000a 	0x7c00000a
1c00696d:	7c20207c 	0x7c20207c
1c006971:	7c7c7c7c 	0x7c7c7c7c
1c006975:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006979:	7c7c7c20 	0x7c7c7c20
1c00697d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006981:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006985:	7c7c7c20 	0x7c7c7c20
1c006989:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00698d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006991:	7c7c7c20 	0x7c7c7c20
1c006995:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c006999:	7c7c7c20 	0x7c7c7c20
1c00699d:	7c7c2020 	0x7c7c2020
1c0069a1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0069a5:	7c7c7c20 	0x7c7c7c20
1c0069a9:	7c7c7c7c 	0x7c7c7c7c
1c0069ad:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0069b1:	7c7c7c20 	0x7c7c7c20
1c0069b5:	7c7c2020 	0x7c7c2020
1c0069b9:	7c7c7c7c 	0x7c7c7c7c
1c0069bd:	7c7c7c20 	0x7c7c7c20
1c0069c1:	7c7c2020 	0x7c7c2020
1c0069c5:	7c20207c 	0x7c20207c
1c0069c9:	7c7c2020 	0x7c7c2020
1c0069cd:	7c00000a 	0x7c00000a
1c0069d1:	7c20207c 	0x7c20207c
1c0069d5:	7c7c7c7c 	0x7c7c7c7c
1c0069d9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0069dd:	7c7c2020 	0x7c7c2020
1c0069e1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0069e5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0069e9:	7c7c2020 	0x7c7c2020
1c0069ed:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0069f1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0069f5:	7c7c7c20 	0x7c7c7c20
1c0069f9:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0069fd:	7c7c7c20 	0x7c7c7c20
1c006a01:	7c202020 	0x7c202020
1c006a05:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006a09:	7c7c7c20 	0x7c7c7c20
1c006a0d:	7c202020 	0x7c202020
1c006a11:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006a15:	7c7c7c7c 	0x7c7c7c7c
1c006a19:	7c202020 	0x7c202020
1c006a1d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006a21:	7c7c7c20 	0x7c7c7c20
1c006a25:	7c7c2020 	0x7c7c2020
1c006a29:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006a2d:	7c7c2020 	0x7c7c2020
1c006a31:	7c00000a 	0x7c00000a
1c006a35:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006a39:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006a3d:	7c7c7c7c 	0x7c7c7c7c
1c006a41:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006a45:	7c202020 	0x7c202020
1c006a49:	7c7c7c7c 	0x7c7c7c7c
1c006a4d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006a51:	7c202020 	0x7c202020
1c006a55:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006a59:	7c7c7c20 	0x7c7c7c20
1c006a5d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006a61:	7c7c7c20 	0x7c7c7c20
1c006a65:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006a69:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006a6d:	7c7c7c7c 	0x7c7c7c7c
1c006a71:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006a75:	7c202020 	0x7c202020
1c006a79:	7c7c7c7c 	0x7c7c7c7c
1c006a7d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006a81:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006a85:	7c7c7c7c 	0x7c7c7c7c
1c006a89:	7c7c2020 	0x7c7c2020
1c006a8d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006a91:	7c7c2020 	0x7c7c2020
1c006a95:	7c00000a 	0x7c00000a
1c006a99:	7c7c7c7c 	0x7c7c7c7c
1c006a9d:	7c7c7c7c 	0x7c7c7c7c
1c006aa1:	7c7c7c7c 	0x7c7c7c7c
1c006aa5:	7c7c7c7c 	0x7c7c7c7c
1c006aa9:	7c7c7c7c 	0x7c7c7c7c
1c006aad:	7c7c7c7c 	0x7c7c7c7c
1c006ab1:	7c7c7c7c 	0x7c7c7c7c
1c006ab5:	7c7c7c7c 	0x7c7c7c7c
1c006ab9:	7c7c7c7c 	0x7c7c7c7c
1c006abd:	325b7c7c 	xvldrepl.h	$xr28,$r3,-578(0xdbe)
1c006ac1:	20303230 	ll.w	$r16,$r17,12336(0x3030)
1c006ac5:	4e4f4f4c 	jirl	$r12,$r26,-110772(0x24f4c)
1c006ac9:	4e4f5347 	jirl	$r7,$r26,-110768(0x24f50)
1c006acd:	7c7c7c5d 	0x7c7c7c5d
1c006ad1:	7c7c7c7c 	0x7c7c7c7c
1c006ad5:	7c7c7c7c 	0x7c7c7c7c
1c006ad9:	7c7c7c7c 	0x7c7c7c7c
1c006add:	7c7c7c7c 	0x7c7c7c7c
1c006ae1:	7c7c7c7c 	0x7c7c7c7c
1c006ae5:	7c7c7c7c 	0x7c7c7c7c
1c006ae9:	7c7c7c7c 	0x7c7c7c7c
1c006aed:	7c7c7c7c 	0x7c7c7c7c
1c006af1:	7c7c7c7c 	0x7c7c7c7c
1c006af5:	7c7c7c7c 	0x7c7c7c7c
1c006af9:	0900000a 	0x0900000a
1c006afd:	0a006425 	0x0a006425
1c006b01:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006b05:	776f440a 	xvssrarni.du.q	$xr10,$xr0,0x51
1c006b09:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c006b0d:	0050550a 	0x0050550a
1c006b11:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006b15:	6c754d0a 	bgeu	$r8,$r10,30028(0x754c) # 1c00e061 <_sidata+0x68ad>
1c006b19:	776f4469 	xvssrarni.du.q	$xr9,$xr3,0x51
1c006b1d:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c006b21:	756f430a 	0x756f430a
1c006b25:	4f20746e 	jirl	$r14,$r3,-57228(0x32074)
1c006b29:	0d000056 	fsel	$f22,$f2,$f0,$fcc0
1c006b2d:	3030090a 	0x3030090a
1c006b31:	09313009 	0x09313009
1c006b35:	30093230 	0x30093230
1c006b39:	34300933 	0x34300933
1c006b3d:	09353009 	0x09353009
1c006b41:	30093630 	0x30093630
1c006b45:	38300937 	fldx.s	$f23,$r9,$r2
1c006b49:	09393009 	0x09393009
1c006b4d:	31093031 	0x31093031
1c006b51:	0d000031 	fsel	$f17,$f1,$f0,$fcc0
1c006b55:	746e630a 	0x746e630a
1c006b59:	09000000 	0x09000000
1c006b5d:	00643425 	bstrins.w	$r5,$r1,0x4,0xd
1c006b61:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006b65:	7361420a 	vssrani.w.d	$vr10,$vr16,0x10
1c006b69:	6c615665 	bgeu	$r19,$r5,24916(0x6154) # 1c00ccbd <_sidata+0x5509>
1c006b6d:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006b71:	6275530a 	blt	$r24,$r10,-101040(0x27550) # 1bfee0c1 <_start-0x11f3f>
1c006b75:	006c6156 	bstrins.w	$r22,$r10,0xc,0x18
1c006b79:	09000000 	0x09000000
1c006b7d:	00643225 	bstrins.w	$r5,$r17,0x4,0xc
1c006b81:	09000000 	0x09000000
1c006b85:	00643325 	bstrins.w	$r5,$r25,0x4,0xc
1c006b89:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006b8d:	203c200a 	ll.w	$r10,$r0,15392(0x3c20)
1c006b91:	3a515249 	0x3a515249
1c006b95:	20642520 	ll.w	$r0,$r9,25636(0x6424)
1c006b99:	636e7566 	blt	$r11,$r6,-37260(0x36e74) # 1bffda0d <_start-0x25f3>
1c006b9d:	2073253a 	ll.w	$r26,$r9,29476(0x7324)
1c006ba1:	0d3e2020 	0x0d3e2020
1c006ba5:	0a00000a 	0x0a00000a
1c006ba9:	2e2e2e2e 	0x2e2e2e2e
1c006bad:	2e2e2e2e 	0x2e2e2e2e
1c006bb1:	2e2e2e2e 	0x2e2e2e2e
1c006bb5:	464f532e 	bnez	$r25,3821392(0x3a4f50) # 1c3abb05 <_sidata+0x3a4351>
1c006bb9:	4e495f54 	jirl	$r20,$r26,-112292(0x2495c)
1c006bbd:	2e2e2e54 	0x2e2e2e54
1c006bc1:	2e2e2e2e 	0x2e2e2e2e
1c006bc5:	2e2e2e2e 	0x2e2e2e2e
1c006bc9:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c006bcd:	5400000d 	bl	3407872(0x340000) # 1c346bcd <_sidata+0x33f419>
1c006bd1:	52454d49 	b	86394188(0x526454c) # 2126b11d <_sidata+0x5263969>
1c006bd5:	4b41575f 	0x4b41575f
1c006bd9:	4e495f45 	jirl	$r5,$r26,-112292(0x2495c)
1c006bdd:	65662054 	bge	$r2,$r20,91680(0x16620) # 1c01d1fd <_sidata+0x15a49>
1c006be1:	57206465 	bl	26681444(0x1972064) # 1d978c45 <_sidata+0x1971491>
1c006be5:	0a214744 	xvfmadd.d	$xr4,$xr26,$xr17,$xr2
1c006be9:	0d00000d 	fsel	$f13,$f0,$f0,$fcc0
1c006bed:	2e2e2e0a 	0x2e2e2e0a
1c006bf1:	2e2e2e2e 	0x2e2e2e2e
1c006bf5:	2e2e2e2e 	0x2e2e2e2e
1c006bf9:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39ae25 <_sidata+0x393671>
1c006bfd:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd1b259 <_start-0x2e4da7>
1c006c01:	2e2e4c49 	0x2e2e4c49
1c006c05:	2e2e2e2e 	0x2e2e2e2e
1c006c09:	2e2e2e2e 	0x2e2e2e2e
1c006c0d:	2e2e2e2e 	0x2e2e2e2e
1c006c11:	0d000a0d 	fsel	$f13,$f16,$f2,$fcc0
1c006c15:	2e2e2e0a 	0x2e2e2e0a
1c006c19:	2e2e2e2e 	0x2e2e2e2e
1c006c1d:	2e2e2e2e 	0x2e2e2e2e
1c006c21:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38ad4d <_sidata+0x383599>
1c006c25:	2e2e2e43 	0x2e2e2e43
1c006c29:	2e2e2e2e 	0x2e2e2e2e
1c006c2d:	2e2e2e2e 	0x2e2e2e2e
1c006c31:	0d2e2e2e 	xvbitsel.v	$xr14,$xr17,$xr11,$xr28
1c006c35:	5000000a 	b	2621440(0x280000) # 1c286c35 <_sidata+0x27f481>
1c006c39:	70697265 	vavgr.w	$vr5,$vr19,$vr28
1c006c3d:	61726568 	blt	$r11,$r8,94820(0x17264) # 1c01dea1 <_sidata+0x166ed>
1c006c41:	5420736c 	bl	-38789008(0xdb02070) # 19b08cb1 <_start-0x24f734f>
1c006c45:	72656d69 	0x72656d69
1c006c49:	656c6320 	bge	$r25,$r0,93280(0x16c60) # 1c01d8a9 <_sidata+0x160f5>
1c006c4d:	69207261 	bltu	$r19,$r1,73840(0x12070) # 1c018cbd <_sidata+0x11509>
1c006c51:	7265746e 	0x7265746e
1c006c55:	74707572 	xvmax.b	$xr18,$xr11,$xr29
1c006c59:	0a0d2e2e 	0x0a0d2e2e
1c006c5d:	43000000 	beqz	$r0,196608(0x30000) # 1c036c5d <_sidata+0x2f4a9>
1c006c61:	2065726f 	ll.w	$r15,$r19,25968(0x6570)
1c006c65:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c01d9cd <_sidata+0x16219>
1c006c69:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00cf89 <_sidata+0x57d5>
1c006c6d:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c006c71:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c01e0dd <_sidata+0x16929>
1c006c75:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c006c79:	0d2e2e74 	xvbitsel.v	$xr20,$xr19,$xr11,$xr28
1c006c7d:	 	beq	$r0,$r10,0 # 1c006c7d <hexdecarr+0x7f4>

1c006c80 <Ext_IrqHandle>:
1c006c80:	1c004258 	pcaddu12i	$r24,530(0x212)
1c006c84:	1c0042a4 	pcaddu12i	$r4,533(0x215)
1c006c88:	1c0042f0 	pcaddu12i	$r16,535(0x217)
1c006c8c:	1c00433c 	pcaddu12i	$r28,537(0x219)
1c006c90:	1c004388 	pcaddu12i	$r8,540(0x21c)
1c006c94:	1c0043d4 	pcaddu12i	$r20,542(0x21e)
1c006c98:	1c004420 	pcaddu12i	$r0,545(0x221)
1c006c9c:	1c00446c 	pcaddu12i	$r12,547(0x223)
1c006ca0:	1c0044b8 	pcaddu12i	$r24,549(0x225)
1c006ca4:	1c004504 	pcaddu12i	$r4,552(0x228)
1c006ca8:	1c004550 	pcaddu12i	$r16,554(0x22a)
1c006cac:	1c00459c 	pcaddu12i	$r28,556(0x22c)
1c006cb0:	1c0045e8 	pcaddu12i	$r8,559(0x22f)
1c006cb4:	1c004634 	pcaddu12i	$r20,561(0x231)
1c006cb8:	1c004680 	pcaddu12i	$r0,564(0x234)
1c006cbc:	1c0046cc 	pcaddu12i	$r12,566(0x236)
1c006cc0:	1c004718 	pcaddu12i	$r24,568(0x238)
1c006cc4:	1c004764 	pcaddu12i	$r4,571(0x23b)
1c006cc8:	1c0047b0 	pcaddu12i	$r16,573(0x23d)
1c006ccc:	1c0047fc 	pcaddu12i	$r28,575(0x23f)
1c006cd0:	1c004848 	pcaddu12i	$r8,578(0x242)
1c006cd4:	1c004894 	pcaddu12i	$r20,580(0x244)
1c006cd8:	1c0048e0 	pcaddu12i	$r0,583(0x247)
1c006cdc:	1c00492c 	pcaddu12i	$r12,585(0x249)
1c006ce0:	1c004978 	pcaddu12i	$r24,587(0x24b)
1c006ce4:	1c0049c4 	pcaddu12i	$r4,590(0x24e)
1c006ce8:	1c004a10 	pcaddu12i	$r16,592(0x250)
1c006cec:	1c004a5c 	pcaddu12i	$r28,594(0x252)
1c006cf0:	1c004aa8 	pcaddu12i	$r8,597(0x255)
1c006cf4:	1c004af4 	pcaddu12i	$r20,599(0x257)
1c006cf8:	1c004b40 	pcaddu12i	$r0,602(0x25a)
1c006cfc:	1c004b8c 	pcaddu12i	$r12,604(0x25c)
1c006d00:	1c004e7c 	pcaddu12i	$r28,627(0x273)
1c006d04:	1c004e2c 	pcaddu12i	$r12,625(0x271)
1c006d08:	1c004e7c 	pcaddu12i	$r28,627(0x273)
1c006d0c:	1c004e7c 	pcaddu12i	$r28,627(0x273)
1c006d10:	1c004e7c 	pcaddu12i	$r28,627(0x273)
1c006d14:	1c004e7c 	pcaddu12i	$r28,627(0x273)
1c006d18:	1c004e7c 	pcaddu12i	$r28,627(0x273)
1c006d1c:	1c004e7c 	pcaddu12i	$r28,627(0x273)
1c006d20:	1c004e7c 	pcaddu12i	$r28,627(0x273)
1c006d24:	1c004e7c 	pcaddu12i	$r28,627(0x273)
1c006d28:	1c004e7c 	pcaddu12i	$r28,627(0x273)
1c006d2c:	1c004e7c 	pcaddu12i	$r28,627(0x273)
1c006d30:	1c004e7c 	pcaddu12i	$r28,627(0x273)
1c006d34:	1c004e7c 	pcaddu12i	$r28,627(0x273)
1c006d38:	1c004e7c 	pcaddu12i	$r28,627(0x273)
1c006d3c:	1c004e7c 	pcaddu12i	$r28,627(0x273)
1c006d40:	1c004e48 	pcaddu12i	$r8,626(0x272)

1c006d44 <__FUNCTION__.1549>:
1c006d44:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e1bc <_sidata+0x16a08>
1c006d48:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ddac <_sidata+0x165f8>
1c006d4c:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bff9dac <_start-0x6254>
1c006d50:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdec0 <_start-0x2140>
1c006d54:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dbb4 <_sidata+0x6400>
1c006d58:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006d5c <__FUNCTION__.1553>:
1c006d5c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e1d4 <_sidata+0x16a20>
1c006d60:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ddc4 <_sidata+0x16610>
1c006d64:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bff9ec4 <_start-0x613c>
1c006d68:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffded8 <_start-0x2128>
1c006d6c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dbcc <_sidata+0x6418>
1c006d70:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006d74 <__FUNCTION__.1557>:
1c006d74:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e1ec <_sidata+0x16a38>
1c006d78:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dddc <_sidata+0x16628>
1c006d7c:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bff9fdc <_start-0x6024>
1c006d80:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdef0 <_start-0x2110>
1c006d84:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dbe4 <_sidata+0x6430>
1c006d88:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006d8c <__FUNCTION__.1561>:
1c006d8c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e204 <_sidata+0x16a50>
1c006d90:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ddf4 <_sidata+0x16640>
1c006d94:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bffa0f4 <_start-0x5f0c>
1c006d98:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdf08 <_start-0x20f8>
1c006d9c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dbfc <_sidata+0x6448>
1c006da0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006da4 <__FUNCTION__.1565>:
1c006da4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e21c <_sidata+0x16a68>
1c006da8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01de0c <_sidata+0x16658>
1c006dac:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bffa20c <_start-0x5df4>
1c006db0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdf20 <_start-0x20e0>
1c006db4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dc14 <_sidata+0x6460>
1c006db8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006dbc <__FUNCTION__.1569>:
1c006dbc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e234 <_sidata+0x16a80>
1c006dc0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01de24 <_sidata+0x16670>
1c006dc4:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bffa324 <_start-0x5cdc>
1c006dc8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdf38 <_start-0x20c8>
1c006dcc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dc2c <_sidata+0x6478>
1c006dd0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006dd4 <__FUNCTION__.1573>:
1c006dd4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e24c <_sidata+0x16a98>
1c006dd8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01de3c <_sidata+0x16688>
1c006ddc:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bffa43c <_start-0x5bc4>
1c006de0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdf50 <_start-0x20b0>
1c006de4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dc44 <_sidata+0x6490>
1c006de8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006dec <__FUNCTION__.1577>:
1c006dec:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e264 <_sidata+0x16ab0>
1c006df0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01de54 <_sidata+0x166a0>
1c006df4:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bffa554 <_start-0x5aac>
1c006df8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdf68 <_start-0x2098>
1c006dfc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dc5c <_sidata+0x64a8>
1c006e00:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006e04 <__FUNCTION__.1581>:
1c006e04:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e27c <_sidata+0x16ac8>
1c006e08:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01de6c <_sidata+0x166b8>
1c006e0c:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bff9e6c <_start-0x6194>
1c006e10:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdf80 <_start-0x2080>
1c006e14:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dc74 <_sidata+0x64c0>
1c006e18:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006e1c <__FUNCTION__.1585>:
1c006e1c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e294 <_sidata+0x16ae0>
1c006e20:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01de84 <_sidata+0x166d0>
1c006e24:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bff9f84 <_start-0x607c>
1c006e28:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdf98 <_start-0x2068>
1c006e2c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dc8c <_sidata+0x64d8>
1c006e30:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006e34 <__FUNCTION__.1589>:
1c006e34:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e2ac <_sidata+0x16af8>
1c006e38:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01de9c <_sidata+0x166e8>
1c006e3c:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bffa09c <_start-0x5f64>
1c006e40:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdfb0 <_start-0x2050>
1c006e44:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dca4 <_sidata+0x64f0>
1c006e48:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006e4c <__FUNCTION__.1593>:
1c006e4c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e2c4 <_sidata+0x16b10>
1c006e50:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01deb4 <_sidata+0x16700>
1c006e54:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bffa1b4 <_start-0x5e4c>
1c006e58:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdfc8 <_start-0x2038>
1c006e5c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dcbc <_sidata+0x6508>
1c006e60:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006e64 <__FUNCTION__.1597>:
1c006e64:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e2dc <_sidata+0x16b28>
1c006e68:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01decc <_sidata+0x16718>
1c006e6c:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bffa2cc <_start-0x5d34>
1c006e70:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdfe0 <_start-0x2020>
1c006e74:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dcd4 <_sidata+0x6520>
1c006e78:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006e7c <__FUNCTION__.1601>:
1c006e7c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e2f4 <_sidata+0x16b40>
1c006e80:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dee4 <_sidata+0x16730>
1c006e84:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bffa3e4 <_start-0x5c1c>
1c006e88:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdff8 <_start-0x2008>
1c006e8c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dcec <_sidata+0x6538>
1c006e90:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006e94 <__FUNCTION__.1605>:
1c006e94:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e30c <_sidata+0x16b58>
1c006e98:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01defc <_sidata+0x16748>
1c006e9c:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bffa4fc <_start-0x5b04>
1c006ea0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe010 <_start-0x1ff0>
1c006ea4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dd04 <_sidata+0x6550>
1c006ea8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006eac <__FUNCTION__.1609>:
1c006eac:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e324 <_sidata+0x16b70>
1c006eb0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01df14 <_sidata+0x16760>
1c006eb4:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bffa614 <_start-0x59ec>
1c006eb8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe028 <_start-0x1fd8>
1c006ebc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dd1c <_sidata+0x6568>
1c006ec0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006ec4 <__FUNCTION__.1613>:
1c006ec4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e33c <_sidata+0x16b88>
1c006ec8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01df2c <_sidata+0x16778>
1c006ecc:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bff9f2c <_start-0x60d4>
1c006ed0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe040 <_start-0x1fc0>
1c006ed4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dd34 <_sidata+0x6580>
1c006ed8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006edc <__FUNCTION__.1617>:
1c006edc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e354 <_sidata+0x16ba0>
1c006ee0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01df44 <_sidata+0x16790>
1c006ee4:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bffa044 <_start-0x5fbc>
1c006ee8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe058 <_start-0x1fa8>
1c006eec:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dd4c <_sidata+0x6598>
1c006ef0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006ef4 <__FUNCTION__.1621>:
1c006ef4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e36c <_sidata+0x16bb8>
1c006ef8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01df5c <_sidata+0x167a8>
1c006efc:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bffa15c <_start-0x5ea4>
1c006f00:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe070 <_start-0x1f90>
1c006f04:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dd64 <_sidata+0x65b0>
1c006f08:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006f0c <__FUNCTION__.1625>:
1c006f0c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e384 <_sidata+0x16bd0>
1c006f10:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01df74 <_sidata+0x167c0>
1c006f14:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bffa274 <_start-0x5d8c>
1c006f18:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe088 <_start-0x1f78>
1c006f1c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dd7c <_sidata+0x65c8>
1c006f20:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006f24 <__FUNCTION__.1629>:
1c006f24:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e39c <_sidata+0x16be8>
1c006f28:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01df8c <_sidata+0x167d8>
1c006f2c:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bffa38c <_start-0x5c74>
1c006f30:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe0a0 <_start-0x1f60>
1c006f34:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dd94 <_sidata+0x65e0>
1c006f38:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006f3c <__FUNCTION__.1633>:
1c006f3c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e3b4 <_sidata+0x16c00>
1c006f40:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dfa4 <_sidata+0x167f0>
1c006f44:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bffa4a4 <_start-0x5b5c>
1c006f48:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe0b8 <_start-0x1f48>
1c006f4c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ddac <_sidata+0x65f8>
1c006f50:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006f54 <__FUNCTION__.1637>:
1c006f54:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e3cc <_sidata+0x16c18>
1c006f58:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dfbc <_sidata+0x16808>
1c006f5c:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bffa5bc <_start-0x5a44>
1c006f60:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe0d0 <_start-0x1f30>
1c006f64:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ddc4 <_sidata+0x6610>
1c006f68:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006f6c <__FUNCTION__.1641>:
1c006f6c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e3e4 <_sidata+0x16c30>
1c006f70:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dfd4 <_sidata+0x16820>
1c006f74:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bffa6d4 <_start-0x592c>
1c006f78:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe0e8 <_start-0x1f18>
1c006f7c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dddc <_sidata+0x6628>
1c006f80:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006f84 <__FUNCTION__.1645>:
1c006f84:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e3fc <_sidata+0x16c48>
1c006f88:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dfec <_sidata+0x16838>
1c006f8c:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bff9ff0 <_start-0x6010>
1c006f90:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe100 <_start-0x1f00>
1c006f94:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ddf4 <_sidata+0x6640>
1c006f98:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006f9c <__FUNCTION__.1649>:
1c006f9c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e414 <_sidata+0x16c60>
1c006fa0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e004 <_sidata+0x16850>
1c006fa4:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bffa108 <_start-0x5ef8>
1c006fa8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe118 <_start-0x1ee8>
1c006fac:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00de0c <_sidata+0x6658>
1c006fb0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006fb4 <__FUNCTION__.1653>:
1c006fb4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e42c <_sidata+0x16c78>
1c006fb8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e01c <_sidata+0x16868>
1c006fbc:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bffa220 <_start-0x5de0>
1c006fc0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe130 <_start-0x1ed0>
1c006fc4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00de24 <_sidata+0x6670>
1c006fc8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006fcc <__FUNCTION__.1657>:
1c006fcc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e444 <_sidata+0x16c90>
1c006fd0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e034 <_sidata+0x16880>
1c006fd4:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bffa338 <_start-0x5cc8>
1c006fd8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe148 <_start-0x1eb8>
1c006fdc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00de3c <_sidata+0x6688>
1c006fe0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006fe4 <__FUNCTION__.1661>:
1c006fe4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e45c <_sidata+0x16ca8>
1c006fe8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e04c <_sidata+0x16898>
1c006fec:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bffa450 <_start-0x5bb0>
1c006ff0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe160 <_start-0x1ea0>
1c006ff4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00de54 <_sidata+0x66a0>
1c006ff8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006ffc <__FUNCTION__.1665>:
1c006ffc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e474 <_sidata+0x16cc0>
1c007000:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e064 <_sidata+0x168b0>
1c007004:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bffa568 <_start-0x5a98>
1c007008:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe178 <_start-0x1e88>
1c00700c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00de6c <_sidata+0x66b8>
1c007010:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007014 <__FUNCTION__.1669>:
1c007014:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e48c <_sidata+0x16cd8>
1c007018:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e07c <_sidata+0x168c8>
1c00701c:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bffa680 <_start-0x5980>
1c007020:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe190 <_start-0x1e70>
1c007024:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00de84 <_sidata+0x66d0>
1c007028:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00702c <__FUNCTION__.1673>:
1c00702c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e4a4 <_sidata+0x16cf0>
1c007030:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e094 <_sidata+0x168e0>
1c007034:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bffa798 <_start-0x5868>
1c007038:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe1a8 <_start-0x1e58>
1c00703c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00de9c <_sidata+0x66e8>
1c007040:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
1c007044:	0000002e 	0x0000002e
1c007048:	00000031 	0x00000031
1c00704c:	0000003a 	0x0000003a
1c007050:	332e3532 	xvstelm.w	$xr18,$r9,-460(0x234),0x3
1c007054:	00000038 	0x00000038
1c007058:	00312e30 	0x00312e30
1c00705c:	0055544e 	0x0055544e
1c007060:	00000050 	0x00000050
1c007064:	00000048 	0x00000048
1c007068:	00312e37 	0x00312e37
1c00706c:	0000007c 	0x0000007c
1c007070:	00000025 	0x00000025
1c007074:	33707445 	xvstelm.h	$xr5,$r2,58(0x3a),0xc
1c007078:	2c73253a 	vst	$vr26,$r9,-823(0xcc9)
1c00707c:	3a336870 	0x3a336870
1c007080:	7a2c7325 	0x7a2c7325
1c007084:	253a3364 	stptr.w	$r4,$r27,14896(0x3a30)
1c007088:	64642c73 	bge	$r3,$r19,25644(0x642c) # 1c00d4b4 <_sidata+0x5d00>
1c00708c:	64253a33 	bge	$r17,$r19,9528(0x2538) # 1c0095c4 <_sidata+0x1e10>
1c007090:	7463702c 	xvabsd.wu	$xr12,$xr1,$xr28
1c007094:	64253a33 	bge	$r17,$r19,9528(0x2538) # 1c0095cc <_sidata+0x1e18>
1c007098:	00000046 	0x00000046
1c00709c:	0a0d7325 	0x0a0d7325
1c0070a0:	00000000 	0x00000000

1c0070a4 <Char_Font_16x8>:
	...
1c0070b4:	f8000000 	0xf8000000
1c0070b8:	00000000 	0x00000000
1c0070bc:	33000000 	0x33000000
1c0070c0:	00000000 	0x00000000
1c0070c4:	020c1000 	slti	$r0,$r0,772(0x304)
1c0070c8:	00020c10 	0x00020c10
	...
1c0070d4:	78c04000 	0x78c04000
1c0070d8:	0078c040 	bstrpick.w	$r0,$r2,0x18,0x10
1c0070dc:	043f0400 	csrrd	$r0,0xfc1
1c0070e0:	00043f04 	alsl.w	$r4,$r24,$r15,0x1
1c0070e4:	88887000 	0x88887000
1c0070e8:	003008fc 	0x003008fc
1c0070ec:	20201800 	ll.w	$r0,$r0,8216(0x2018)
1c0070f0:	001e21ff 	mulh.d	$r31,$r15,$r8
1c0070f4:	80f008f0 	0x80f008f0
1c0070f8:	00001860 	cto.w	$r0,$r3
1c0070fc:	030c3100 	lu52i.d	$r0,$r8,780(0x30c)
1c007100:	001e211e 	mulh.d	$r30,$r8,$r8
1c007104:	8808f000 	0x8808f000
1c007108:	00000070 	0x00000070
1c00710c:	2c23211e 	vld	$vr30,$r8,-1848(0x8c8)
1c007110:	10212719 	addu16i.d	$r25,$r24,2121(0x849)
1c007114:	000e1200 	bytepick.d	$r0,$r16,$r4,0x4
	...
1c007124:	e0000000 	0xe0000000
1c007128:	00020418 	0x00020418
1c00712c:	07000000 	0x07000000
1c007130:	00402018 	0x00402018
1c007134:	18040200 	pcaddi	$r0,8208(0x2010)
1c007138:	000000e0 	0x000000e0
1c00713c:	18204000 	pcaddi	$r0,66048(0x10200)
1c007140:	00000007 	0x00000007
1c007144:	f0804040 	0xf0804040
1c007148:	00404080 	0x00404080
1c00714c:	0f010202 	0x0f010202
1c007150:	00020201 	0x00020201
1c007154:	00000000 	0x00000000
1c007158:	000000e0 	0x000000e0
1c00715c:	01010100 	fadd.d	$f0,$f8,$f0
1c007160:	0101010f 	fadd.d	$f15,$f8,$f0
	...
1c00716c:	00709000 	bstrpick.w	$r0,$r0,0x10,0x4
	...
1c00717c:	01010100 	fadd.d	$f0,$f8,$f0
1c007180:	00010101 	0x00010101
	...
1c00718c:	00303000 	0x00303000
	...
1c007198:	000438c0 	alsl.w	$r0,$r6,$r14,0x1
1c00719c:	07186000 	0x07186000
1c0071a0:	00000000 	0x00000000
1c0071a4:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c0071a8:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c0071ac:	20100f00 	ll.w	$r0,$r24,4108(0x100c)
1c0071b0:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c0071b4:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c0071b8:	000000f8 	0x000000f8
1c0071bc:	20200000 	ll.w	$r0,$r0,8192(0x2000)
1c0071c0:	0020203f 	div.w	$r31,$r1,$r8
1c0071c4:	08087000 	0x08087000
1c0071c8:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c0071cc:	24283000 	ldptr.w	$r0,$r0,10288(0x2830)
1c0071d0:	00302122 	0x00302122
1c0071d4:	08083000 	0x08083000
1c0071d8:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c0071dc:	21201800 	sc.w	$r0,$r0,8216(0x2018)
1c0071e0:	001c2221 	mul.w	$r1,$r17,$r8
1c0071e4:	40800000 	beqz	$r0,32768(0x8000) # 1c00f1e4 <_sidata+0x7a30>
1c0071e8:	0000f830 	0x0000f830
1c0071ec:	24050600 	ldptr.w	$r0,$r16,1284(0x504)
1c0071f0:	24243f24 	ldptr.w	$r4,$r25,9276(0x243c)
1c0071f4:	8888f800 	0x8888f800
1c0071f8:	00080888 	bytepick.w	$r8,$r4,$r2,0x0
1c0071fc:	20201900 	ll.w	$r0,$r8,8216(0x2018)
1c007200:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c007204:	8810e000 	0x8810e000
1c007208:	00009088 	0x00009088
1c00720c:	20110f00 	ll.w	$r0,$r24,4364(0x110c)
1c007210:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c007214:	08081800 	0x08081800
1c007218:	00186888 	sra.w	$r8,$r4,$r26
1c00721c:	3e000000 	0x3e000000
1c007220:	00000001 	0x00000001
1c007224:	08887000 	0x08887000
1c007228:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c00722c:	21221c00 	sc.w	$r0,$r0,8732(0x221c)
1c007230:	001c2221 	mul.w	$r1,$r17,$r8
1c007234:	0808f000 	0x0808f000
1c007238:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00723c:	22120100 	ll.d	$r0,$r8,4608(0x1200)
1c007240:	000f1122 	bytepick.d	$r2,$r9,$r4,0x6
1c007244:	c0000000 	0xc0000000
1c007248:	000000c0 	0x000000c0
1c00724c:	30000000 	0x30000000
1c007250:	00000030 	0x00000030
1c007254:	80000000 	0x80000000
1c007258:	00000000 	0x00000000
1c00725c:	e0000000 	0xe0000000
1c007260:	00000000 	0x00000000
1c007264:	40800000 	beqz	$r0,32768(0x8000) # 1c00f264 <_sidata+0x7ab0>
1c007268:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c00726c:	04020100 	csrxchg	$r0,$r8,0x80
1c007270:	00201008 	div.w	$r8,$r0,$r4
1c007274:	40404000 	beqz	$r0,16448(0x4040) # 1c00b2b4 <_sidata+0x3b00>
1c007278:	00404040 	0x00404040
1c00727c:	02020200 	slti	$r0,$r16,128(0x80)
1c007280:	00020202 	0x00020202
1c007284:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c007288:	00008040 	0x00008040
1c00728c:	08102000 	fmadd.s	$f0,$f0,$f8,$f0
1c007290:	00010204 	0x00010204
1c007294:	08487000 	0x08487000
1c007298:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c00729c:	30000000 	0x30000000
1c0072a0:	00000037 	0x00000037
1c0072a4:	28c830c0 	ld.d	$r0,$r6,524(0x20c)
1c0072a8:	00e010e8 	bstrpick.d	$r8,$r7,0x20,0x4
1c0072ac:	28271807 	ld.b	$r7,$r0,-1594(0x9c6)
1c0072b0:	0017282f 	sll.w	$r15,$r1,$r10
1c0072b4:	38c00000 	0x38c00000
1c0072b8:	000000e0 	0x000000e0
1c0072bc:	02233c20 	slti	$r0,$r1,-1841(0x8cf)
1c0072c0:	20382702 	ll.w	$r2,$r24,14372(0x3824)
1c0072c4:	8888f808 	0x8888f808
1c0072c8:	00007088 	0x00007088
1c0072cc:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c0072d0:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c0072d4:	080830c0 	0x080830c0
1c0072d8:	00380808 	0x00380808
1c0072dc:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c0072e0:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c0072e4:	0808f808 	0x0808f808
1c0072e8:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c0072ec:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c0072f0:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c0072f4:	8888f808 	0x8888f808
1c0072f8:	001008e8 	add.w	$r8,$r7,$r2
1c0072fc:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c007300:	00182023 	sra.w	$r3,$r1,$r8
1c007304:	8888f808 	0x8888f808
1c007308:	001008e8 	add.w	$r8,$r7,$r2
1c00730c:	00203f20 	div.w	$r0,$r25,$r15
1c007310:	00000003 	0x00000003
1c007314:	080830c0 	0x080830c0
1c007318:	00003808 	revb.2w	$r8,$r0
1c00731c:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c007320:	00021e22 	0x00021e22
1c007324:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c007328:	08f80800 	0x08f80800
1c00732c:	01213f20 	0x01213f20
1c007330:	203f2101 	ll.w	$r1,$r8,16160(0x3f20)
1c007334:	f8080800 	0xf8080800
1c007338:	00000808 	0x00000808
1c00733c:	3f202000 	0x3f202000
1c007340:	00002020 	clo.d	$r0,$r1
1c007344:	08080000 	0x08080000
1c007348:	000808f8 	bytepick.w	$r24,$r7,$r2,0x0
1c00734c:	808080c0 	0x808080c0
1c007350:	0000007f 	0x0000007f
1c007354:	c088f808 	0xc088f808
1c007358:	00081828 	bytepick.w	$r8,$r1,$r6,0x0
1c00735c:	01203f20 	0x01203f20
1c007360:	00203826 	div.w	$r6,$r1,$r14
1c007364:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c007368:	00000000 	0x00000000
1c00736c:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c007370:	00302020 	0x00302020
1c007374:	00f8f808 	bstrpick.d	$r8,$r0,0x38,0x3e
1c007378:	0008f8f8 	bytepick.w	$r24,$r7,$r30,0x1
1c00737c:	3e013f20 	0x3e013f20
1c007380:	00203f01 	div.w	$r1,$r24,$r15
1c007384:	c030f808 	0xc030f808
1c007388:	08f80800 	0x08f80800
1c00738c:	00203f20 	div.w	$r0,$r25,$r15
1c007390:	003f1807 	0x003f1807
1c007394:	080810e0 	0x080810e0
1c007398:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00739c:	2020100f 	ll.w	$r15,$r0,8208(0x2010)
1c0073a0:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c0073a4:	0808f808 	0x0808f808
1c0073a8:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c0073ac:	01213f20 	0x01213f20
1c0073b0:	00000101 	0x00000101
1c0073b4:	080810e0 	0x080810e0
1c0073b8:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c0073bc:	2828100f 	ld.b	$r15,$r0,-1532(0xa04)
1c0073c0:	004f5030 	0x004f5030
1c0073c4:	8888f808 	0x8888f808
1c0073c8:	00708888 	bstrpick.w	$r8,$r4,0x10,0x2
1c0073cc:	00203f20 	div.w	$r0,$r25,$r15
1c0073d0:	20300c03 	ll.w	$r3,$r0,12300(0x300c)
1c0073d4:	08887000 	0x08887000
1c0073d8:	00380808 	0x00380808
1c0073dc:	21203800 	sc.w	$r0,$r0,8248(0x2038)
1c0073e0:	001c2221 	mul.w	$r1,$r17,$r8
1c0073e4:	f8080818 	0xf8080818
1c0073e8:	00180808 	sra.w	$r8,$r0,$r2
1c0073ec:	3f200000 	0x3f200000
1c0073f0:	00000020 	0x00000020
1c0073f4:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c0073f8:	08f80800 	0x08f80800
1c0073fc:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c007400:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c007404:	00887808 	bstrins.d	$r8,$r0,0x8,0x1e
1c007408:	0838c800 	0x0838c800
1c00740c:	38070000 	0x38070000
1c007410:	0000010e 	0x0000010e
1c007414:	f800f808 	0xf800f808
1c007418:	0008f800 	bytepick.w	$r0,$r0,$r30,0x1
1c00741c:	013e0300 	0x013e0300
1c007420:	0000033e 	0x0000033e
1c007424:	80681808 	0x80681808
1c007428:	08186880 	fmadd.s	$f0,$f4,$f26,$f16
1c00742c:	032c3020 	lu52i.d	$r0,$r1,-1268(0xb0c)
1c007430:	20302c03 	ll.w	$r3,$r0,12332(0x302c)
1c007434:	00c83808 	bstrpick.d	$r8,$r0,0x8,0xe
1c007438:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c00743c:	3f200000 	0x3f200000
1c007440:	00000020 	0x00000020
1c007444:	08080810 	0x08080810
1c007448:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c00744c:	21263820 	sc.w	$r0,$r1,9784(0x2638)
1c007450:	00182020 	sra.w	$r0,$r1,$r8
1c007454:	fe000000 	0xfe000000
1c007458:	00020202 	0x00020202
1c00745c:	7f000000 	0x7f000000
1c007460:	00404040 	0x00404040
1c007464:	c0380400 	0xc0380400
1c007468:	00000000 	0x00000000
1c00746c:	01000000 	0x01000000
1c007470:	00c03806 	bstrpick.d	$r6,$r0,0x0,0xe
1c007474:	02020200 	slti	$r0,$r16,128(0x80)
1c007478:	000000fe 	0x000000fe
1c00747c:	40404000 	beqz	$r0,16448(0x4040) # 1c00b4bc <_sidata+0x3d08>
1c007480:	0000007f 	0x0000007f
1c007484:	02040000 	slti	$r0,$r0,256(0x100)
1c007488:	00000402 	0x00000402
	...
1c00749c:	80808080 	0x80808080
1c0074a0:	80808080 	0x80808080
1c0074a4:	04020200 	csrxchg	$r0,$r16,0x80
	...
1c0074b4:	80800000 	0x80800000
1c0074b8:	00000080 	0x00000080
1c0074bc:	24241900 	ldptr.w	$r0,$r8,9240(0x2418)
1c0074c0:	00203f12 	div.w	$r18,$r24,$r15
1c0074c4:	8000f010 	0x8000f010
1c0074c8:	00000080 	0x00000080
1c0074cc:	20113f00 	ll.w	$r0,$r24,4412(0x113c)
1c0074d0:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c0074d4:	80000000 	0x80000000
1c0074d8:	00008080 	0x00008080
1c0074dc:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c0074e0:	00112020 	sub.w	$r0,$r1,$r8
1c0074e4:	80800000 	0x80800000
1c0074e8:	00f09080 	bstrpick.d	$r0,$r4,0x30,0x24
1c0074ec:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c0074f0:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c0074f4:	80800000 	0x80800000
1c0074f8:	00008080 	0x00008080
1c0074fc:	24241f00 	ldptr.w	$r0,$r24,9244(0x241c)
1c007500:	00172424 	sll.w	$r4,$r1,$r9
1c007504:	e0808000 	0xe0808000
1c007508:	00209090 	mod.w	$r16,$r4,$r4
1c00750c:	3f202000 	0x3f202000
1c007510:	00002020 	clo.d	$r0,$r1
1c007514:	80800000 	0x80800000
1c007518:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00751c:	94946b00 	0x94946b00
1c007520:	00609394 	bstrpick.w	$r20,$r28,0x0,0x4
1c007524:	8000f010 	0x8000f010
1c007528:	00008080 	0x00008080
1c00752c:	00213f20 	div.wu	$r0,$r25,$r15
1c007530:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c007534:	98988000 	0x98988000
1c007538:	00000000 	0x00000000
1c00753c:	3f202000 	0x3f202000
1c007540:	00002020 	clo.d	$r0,$r1
1c007544:	80000000 	0x80000000
1c007548:	00009898 	0x00009898
1c00754c:	8080c000 	0x8080c000
1c007550:	00007f80 	0x00007f80
1c007554:	0000f010 	0x0000f010
1c007558:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00755c:	06243f20 	cacop	0x0,$r25,-1777(0x90f)
1c007560:	00203029 	div.w	$r9,$r1,$r12
1c007564:	f8101000 	0xf8101000
1c007568:	00000000 	0x00000000
1c00756c:	3f202000 	0x3f202000
1c007570:	00002020 	clo.d	$r0,$r1
1c007574:	80808080 	0x80808080
1c007578:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00757c:	00203f20 	div.w	$r0,$r25,$r15
1c007580:	3f00203f 	0x3f00203f
1c007584:	80008080 	0x80008080
1c007588:	00008080 	0x00008080
1c00758c:	00213f20 	div.wu	$r0,$r25,$r15
1c007590:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c007594:	80800000 	0x80800000
1c007598:	00008080 	0x00008080
1c00759c:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c0075a0:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c0075a4:	80008080 	0x80008080
1c0075a8:	00000080 	0x00000080
1c0075ac:	2091ff80 	ll.w	$r0,$r28,-28164(0x91fc)
1c0075b0:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c0075b4:	80000000 	0x80000000
1c0075b8:	00800080 	bstrins.d	$r0,$r4,0x0,0x0
1c0075bc:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c0075c0:	80ff9120 	0x80ff9120
1c0075c4:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0075c8:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0075cc:	213f2020 	sc.w	$r0,$r1,16160(0x3f20)
1c0075d0:	00010020 	asrtle.d	$r1,$r0
1c0075d4:	80800000 	0x80800000
1c0075d8:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0075dc:	24243300 	ldptr.w	$r0,$r24,9264(0x2430)
1c0075e0:	00192424 	srl.d	$r4,$r1,$r9
1c0075e4:	e0808000 	0xe0808000
1c0075e8:	00008080 	0x00008080
1c0075ec:	1f000000 	pcaddu18i	$r0,-524288(0x80000)
1c0075f0:	00102020 	add.w	$r0,$r1,$r8
1c0075f4:	00008080 	0x00008080
1c0075f8:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c0075fc:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c007600:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c007604:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007608:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00760c:	300c0300 	0x300c0300
1c007610:	0000030c 	0x0000030c
1c007614:	80008080 	0x80008080
1c007618:	80800080 	0x80800080
1c00761c:	0c300e01 	0x0c300e01
1c007620:	01063807 	0x01063807
1c007624:	80808000 	0x80808000
1c007628:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c00762c:	0e312000 	0x0e312000
1c007630:	0020312e 	div.w	$r14,$r9,$r12
1c007634:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007638:	80808000 	0x80808000
1c00763c:	78868100 	0x78868100
1c007640:	00010618 	0x00010618
1c007644:	80808000 	0x80808000
1c007648:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00764c:	2c302100 	vld	$vr0,$r8,-1016(0xc08)
1c007650:	00302122 	0x00302122
1c007654:	00000000 	0x00000000
1c007658:	0202fc00 	slti	$r0,$r0,191(0xbf)
1c00765c:	00000000 	0x00000000
1c007660:	40403e01 	beqz	$r16,278588(0x4403c) # 1c04b69c <_sidata+0x43ee8>
1c007664:	00000000 	0x00000000
1c007668:	000000ff 	0x000000ff
1c00766c:	00000000 	0x00000000
1c007670:	000000ff 	0x000000ff
1c007674:	00fc0202 	bstrpick.d	$r2,$r16,0x3c,0x0
1c007678:	00000000 	0x00000000
1c00767c:	013e4040 	0x013e4040
1c007680:	00000000 	0x00000000
1c007684:	02010200 	slti	$r0,$r16,64(0x40)
1c007688:	00020402 	0x00020402
	...

1c007694 <Chi_Cha_Font_16x16>:
1c007694:	8c026010 	0x8c026010
1c007698:	92fe0000 	0x92fe0000
1c00769c:	92929292 	0x92929292
1c0076a0:	000000fe 	0x000000fe
1c0076a4:	017e0404 	0x017e0404
1c0076a8:	42427e40 	beqz	$r18,148092(0x2427c) # 1c02b924 <_sidata+0x24170>
1c0076ac:	427e427e 	beqz	$r19,-360896(0x7a7e40) # 1bfaf4ec <_start-0x50b14>
1c0076b0:	00407e42 	0x00407e42
1c0076b4:	24fc0000 	ldptr.w	$r0,$r0,-1024(0xfc00)
1c0076b8:	25fc2424 	stptr.w	$r4,$r1,-988(0xfc24)
1c0076bc:	24fc2426 	ldptr.w	$r6,$r1,-988(0xfc24)
1c0076c0:	00042424 	alsl.w	$r4,$r1,$r9,0x1
1c0076c4:	808f3040 	0x808f3040
1c0076c8:	25554c84 	stptr.w	$r4,$r4,21836(0x554c)
1c0076cc:	4c552525 	jirl	$r5,$r9,21796(0x5524)
1c0076d0:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0076d4:	88f80000 	0x88f80000
1c0076d8:	ff888888 	0xff888888
1c0076dc:	88888888 	0x88888888
1c0076e0:	000000f8 	0x000000f8
1c0076e4:	081f0000 	fmadd.s	$f0,$f0,$f0,$f30
1c0076e8:	7f080808 	0x7f080808
1c0076ec:	88888888 	0x88888888
1c0076f0:	00f0809f 	bstrpick.d	$r31,$r4,0x30,0x20
1c0076f4:	be202020 	0xbe202020
1c0076f8:	aaaaaaaa 	0xaaaaaaaa
1c0076fc:	beaaaaaa 	0xbeaaaaaa
1c007700:	00202020 	div.w	$r0,$r1,$r8
1c007704:	af808000 	0xaf808000
1c007708:	ffaaaaaa 	0xffaaaaaa
1c00770c:	afaaaaaa 	0xafaaaaaa
1c007710:	00008080 	0x00008080
1c007714:	8c026010 	0x8c026010
1c007718:	0808f800 	0x0808f800
1c00771c:	0808ff08 	0x0808ff08
1c007720:	0000f808 	0x0000f808
1c007724:	017e0404 	0x017e0404
1c007728:	21216320 	sc.w	$r0,$r25,8544(0x2160)
1c00772c:	21213f21 	sc.w	$r1,$r25,8508(0x213c)
1c007730:	00603329 	bstrins.w	$r9,$r25,0x0,0xc
1c007734:	24fc0000 	ldptr.w	$r0,$r0,-1024(0xfc00)
1c007738:	25fc2424 	stptr.w	$r4,$r1,-988(0xfc24)
1c00773c:	24fc2426 	ldptr.w	$r6,$r1,-988(0xfc24)
1c007740:	00042424 	alsl.w	$r4,$r1,$r9,0x1
1c007744:	808f3040 	0x808f3040
1c007748:	25554c84 	stptr.w	$r4,$r4,21836(0x554c)
1c00774c:	4c552525 	jirl	$r5,$r9,21796(0x5524)
1c007750:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007754:	88f80000 	0x88f80000
1c007758:	ff888888 	0xff888888
1c00775c:	88888888 	0x88888888
1c007760:	000000f8 	0x000000f8
1c007764:	081f0000 	fmadd.s	$f0,$f0,$f0,$f30
1c007768:	7f080808 	0x7f080808
1c00776c:	88888888 	0x88888888
1c007770:	00f0809f 	bstrpick.d	$r31,$r4,0x30,0x20
1c007774:	927e0000 	0x927e0000
1c007778:	92929292 	0x92929292
1c00777c:	9e929292 	0x9e929292
1c007780:	0000e080 	0x0000e080
1c007784:	04040404 	csrrd	$r4,0x101
1c007788:	0404340c 	csrrd	$r12,0x10d
1c00778c:	047f8444 	csrxchg	$r4,$r2,0x1fe1
1c007790:	00040404 	alsl.w	$r4,$r0,$r1,0x1
1c007794:	44a41400 	bnez	$r0,42004(0xa414) # 1c011ba8 <_sidata+0xa3f4>
1c007798:	66ad3424 	bge	$r1,$r4,-86732(0x2ad34) # 1bff24cc <_start-0xdb34>
1c00779c:	44049424 	bnez	$r1,1049748(0x100494) # 1c107c30 <_sidata+0x10047c>
1c0077a0:	000014a4 	clz.w	$r4,$r5
1c0077a4:	08080908 	0x08080908
1c0077a8:	fd090909 	0xfd090909
1c0077ac:	080b0909 	0x080b0909
1c0077b0:	00080908 	bytepick.w	$r8,$r8,$r2,0x0

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	1c006489 	pcaddu12i	$r9,804(0x324)
80001008:	80000064 	0x80000064
8000100c:	800000c8 	0x800000c8
80001010:	80001028 	0x80001028
80001014:	8000012c 	0x8000012c
80001018:	80000190 	0x80000190
8000101c:	800001f4 	0x800001f4
80001020:	80000258 	0x80000258
80001024:	1c006480 	pcaddu12i	$r0,804(0x324)

80001028 <g_SystemFreq>:
80001028:	007a1200 	bstrins.w	$r0,$r16,0x1a,0x4

Disassembly of section .bss:

80000000 <buf7>:
	...

80000064 <buf3>:
	...

800000c8 <buf4>:
	...

8000012c <buf6>:
	...

80000190 <buf1>:
	...

800001f4 <buf2>:
	...

80000258 <buf5>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...
