	.section .mdebug.abi32
	.previous
	.abicalls
	.file 1 "tp0.c"
	.section	.debug_abbrev,"",@progbits
$Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
$Ldebug_info0:
	.section	.debug_line,"",@progbits
$Ldebug_line0:
	.text
$Ltext0:
	.file 2 "/usr/include/mips/int_types.h"
	.file 3 "/usr/include/sys/ansi.h"
	.file 4 "/usr/include/mips/ansi.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/mips/types.h"
	.file 7 "/usr/include/sys/types.h"
	.file 8 "/usr/include/sys/endian.h"
	.file 9 "/usr/include/pthread_types.h"
	.file 10 "/usr/include/stdlib.h"
	.file 11 "/usr/include/math.h"
	.rdata
	.align	3
$LC2:
	.word	-1717986918
	.word	1069128089
	.word	0
	.word	0
	.align	2
$LC0:
	.ascii	"%Lf%Lf%c\000"
	.align	2
$LC1:
	.ascii	"Error en argumeto complejo. Usando 0.1\000"
	.text
	.align	2
	.globl	string_to_complex
$LFB29:
	.loc 1 23 0
	.ent	string_to_complex
string_to_complex:
	.frame	$fp,88,$ra		# vars= 40, regs= 3/0, args= 24, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,88
	.cprestore 24
$LCFI0:
	sw	$ra,80($sp)
$LCFI1:
	sw	$fp,76($sp)
$LCFI2:
	sw	$gp,72($sp)
$LCFI3:
	move	$fp,$sp
$LCFI4:
	sw	$a0,88($fp)
	sw	$a1,92($fp)
	.loc 1 26 0
$LBB2:
	addu	$v1,$fp,40
	addu	$v0,$fp,48
	sw	$v0,16($sp)
	lw	$a0,92($fp)
	la	$a1,$LC0
	addu	$a2,$fp,32
	move	$a3,$v1
	la	$t9,sscanf
	jal	$ra,$t9
	sw	$v0,52($fp)
	.loc 1 27 0
	lw	$v0,52($fp)
	slt	$v0,$v0,3
	beq	$v0,$zero,$L18
	.loc 1 28 0
$LBB3:
	la	$a0,__sF+176
	la	$a1,$LC1
	la	$t9,fprintf
	jal	$ra,$t9
	.loc 1 29 0
	lw	$v0,$LC2
	sw	$v0,56($fp)
	lw	$v0,$LC2+4
	sw	$v0,60($fp)
	lw	$v0,$LC2+8
	sw	$v0,64($fp)
	lw	$v0,$LC2+12
	sw	$v0,68($fp)
	.loc 1 30 0
	lw	$v0,56($fp)
	lw	$v1,88($fp)
	sw	$v0,0($v1)
	lw	$v0,60($fp)
	lw	$v1,88($fp)
	sw	$v0,4($v1)
	lw	$v0,64($fp)
	lw	$v1,88($fp)
	sw	$v0,8($v1)
	lw	$v0,68($fp)
	lw	$v1,88($fp)
	sw	$v0,12($v1)
	b	$L17
$L18:
	.loc 1 32 0
$LBE3:
	lw	$v0,32($fp)
	lw	$v1,88($fp)
	sw	$v0,0($v1)
	lw	$v0,36($fp)
	lw	$v1,88($fp)
	sw	$v0,4($v1)
	lw	$v0,40($fp)
	lw	$v1,88($fp)
	sw	$v0,8($v1)
	lw	$v0,44($fp)
	lw	$v1,88($fp)
	sw	$v0,12($v1)
	.loc 1 33 0
$L17:
$LBE2:
	lw	$v0,88($fp)
	move	$sp,$fp
	lw	$ra,80($sp)
	lw	$fp,76($sp)
	addu	$sp,$sp,88
	j	$ra
	.end	string_to_complex
$LFE29:
	.size	string_to_complex, .-string_to_complex
	.rdata
	.align	3
$LC5:
	.word	138464867
	.word	-1075363142
	.word	351303579
	.word	1070083444
	.align	2
$LC3:
	.ascii	"640x480\000"
	.align	2
$LC6:
	.ascii	"-\000"
	.align	2
$LC7:
	.ascii	"-r\000"
	.align	2
$LC8:
	.ascii	"--resolution\000"
	.align	2
$LC9:
	.ascii	"-c\000"
	.align	2
$LC10:
	.ascii	"--center\000"
	.align	2
$LC11:
	.ascii	"-w\000"
	.align	2
$LC12:
	.ascii	"--width\000"
	.align	2
$LC13:
	.ascii	"-H\000"
	.align	2
$LC14:
	.ascii	"--height\000"
	.align	2
$LC15:
	.ascii	"-s\000"
	.align	2
$LC16:
	.ascii	"--seed\000"
	.align	2
$LC17:
	.ascii	"-o\000"
	.align	2
$LC18:
	.ascii	"--output\000"
	.align	2
$LC19:
	.ascii	"%dx%d\000"
	.align	2
$LC20:
	.ascii	"Error obteniendo resolucion. Usando default\n\000"
	.align	2
$LC21:
	.ascii	"w\000"
	.align	2
$LC22:
	.ascii	"No se pudo abrir archivo de salida %s\n\000"
	.align	2
$LC23:
	.ascii	"Saliendo con error\000"
	.align	2
$LC24:
	.ascii	"P2 \n"
	.ascii	"%d %d \n"
	.ascii	"255 \n\000"
	.align	2
$LC25:
	.ascii	"Error en el output. No se pudieron imprimir las resoluci"
	.ascii	"ones.\000"
	.align	2
$LC26:
	.ascii	"%d \000"
	.align	2
$LC27:
	.ascii	"Error en el output, no se pudo imprimir el brillo.\000"
	.align	2
$LC28:
	.ascii	"\n\000"
	.align	2
$LC29:
	.ascii	"Error en el output, no se pudo imprimir el salto de line"
	.ascii	"a.\000"
	.align	2
$LC30:
	.ascii	"Archivo guardado en %s/%s\n\000"
	.align	3
$LC4:
	.word	0
	.word	1073741824
	.text
	.align	2
	.globl	main
$LFB31:
	.loc 1 35 0
	.ent	main
main:
	.frame	$fp,224,$ra		# vars= 184, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,224
	.cprestore 16
$LCFI5:
	sw	$ra,216($sp)
$LCFI6:
	sw	$fp,212($sp)
$LCFI7:
	sw	$gp,208($sp)
$LCFI8:
	move	$fp,$sp
$LCFI9:
	sw	$a0,224($fp)
	sw	$a1,228($fp)
	.loc 1 37 0
$LBB4:
	la	$v0,$LC3
	sw	$v0,24($fp)
	.loc 1 38 0
	sw	$zero,32($fp)
	sw	$zero,36($fp)
	sw	$zero,40($fp)
	sw	$zero,44($fp)
	.loc 1 39 0
	l.d	$f0,$LC4
	s.d	$f0,48($fp)
	.loc 1 40 0
	l.d	$f0,$LC4
	s.d	$f0,56($fp)
	.loc 1 41 0
	lw	$v0,$LC5
	sw	$v0,64($fp)
	lw	$v0,$LC5+4
	sw	$v0,68($fp)
	lw	$v0,$LC5+8
	sw	$v0,72($fp)
	lw	$v0,$LC5+12
	sw	$v0,76($fp)
	.loc 1 42 0
	la	$v0,$LC6
	sw	$v0,80($fp)
	.loc 1 43 0
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,84($fp)
	.loc 1 44 0
	lw	$v0,228($fp)
	lw	$v0,0($v0)
	sw	$v0,88($fp)
	.loc 1 47 0
	li	$v0,1			# 0x1
	sw	$v0,92($fp)
$L20:
	lw	$v0,92($fp)
	lw	$v1,224($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L23
	b	$L21
$L23:
	.loc 1 49 0
	lw	$v0,92($fp)
	sll	$v1,$v0,2
	lw	$v0,228($fp)
	addu	$v0,$v1,$v0
	lw	$a0,0($v0)
	la	$a1,$LC7
	la	$t9,strcmp
	jal	$ra,$t9
	beq	$v0,$zero,$L25
	lw	$v0,92($fp)
	sll	$v1,$v0,2
	lw	$v0,228($fp)
	addu	$v0,$v1,$v0
	lw	$a0,0($v0)
	la	$a1,$LC8
	la	$t9,strcmp
	jal	$ra,$t9
	bne	$v0,$zero,$L24
$L25:
	.loc 1 50 0
	lw	$v0,92($fp)
	sll	$v1,$v0,2
	lw	$v0,228($fp)
	addu	$v0,$v1,$v0
	addu	$v0,$v0,4
	lw	$v0,0($v0)
	sw	$v0,24($fp)
$L24:
	.loc 1 52 0
	lw	$v0,92($fp)
	sll	$v1,$v0,2
	lw	$v0,228($fp)
	addu	$v0,$v1,$v0
	lw	$a0,0($v0)
	la	$a1,$LC9
	la	$t9,strcmp
	jal	$ra,$t9
	beq	$v0,$zero,$L27
	lw	$v0,92($fp)
	sll	$v1,$v0,2
	lw	$v0,228($fp)
	addu	$v0,$v1,$v0
	lw	$a0,0($v0)
	la	$a1,$LC10
	la	$t9,strcmp
	jal	$ra,$t9
	bne	$v0,$zero,$L26
$L27:
	.loc 1 53 0
	addu	$a0,$fp,32
	lw	$v0,92($fp)
	sll	$v1,$v0,2
	lw	$v0,228($fp)
	addu	$v0,$v1,$v0
	addu	$v0,$v0,4
	lw	$a1,0($v0)
	la	$t9,string_to_complex
	jal	$ra,$t9
$L26:
	.loc 1 55 0
	lw	$v0,92($fp)
	sll	$v1,$v0,2
	lw	$v0,228($fp)
	addu	$v0,$v1,$v0
	lw	$a0,0($v0)
	la	$a1,$LC11
	la	$t9,strcmp
	jal	$ra,$t9
	beq	$v0,$zero,$L29
	lw	$v0,92($fp)
	sll	$v1,$v0,2
	lw	$v0,228($fp)
	addu	$v0,$v1,$v0
	lw	$a0,0($v0)
	la	$a1,$LC12
	la	$t9,strcmp
	jal	$ra,$t9
	bne	$v0,$zero,$L28
$L29:
	.loc 1 56 0
	lw	$v0,92($fp)
	sll	$v1,$v0,2
	lw	$v0,228($fp)
	addu	$v0,$v1,$v0
	addu	$v0,$v0,4
	lw	$a0,0($v0)
	la	$t9,atof
	jal	$ra,$t9
	s.d	$f0,48($fp)
$L28:
	.loc 1 58 0
	lw	$v0,92($fp)
	sll	$v1,$v0,2
	lw	$v0,228($fp)
	addu	$v0,$v1,$v0
	lw	$a0,0($v0)
	la	$a1,$LC13
	la	$t9,strcmp
	jal	$ra,$t9
	beq	$v0,$zero,$L31
	lw	$v0,92($fp)
	sll	$v1,$v0,2
	lw	$v0,228($fp)
	addu	$v0,$v1,$v0
	lw	$a0,0($v0)
	la	$a1,$LC14
	la	$t9,strcmp
	jal	$ra,$t9
	bne	$v0,$zero,$L30
$L31:
	.loc 1 59 0
	lw	$v0,92($fp)
	sll	$v1,$v0,2
	lw	$v0,228($fp)
	addu	$v0,$v1,$v0
	addu	$v0,$v0,4
	lw	$a0,0($v0)
	la	$t9,atof
	jal	$ra,$t9
	s.d	$f0,56($fp)
$L30:
	.loc 1 61 0
	lw	$v0,92($fp)
	sll	$v1,$v0,2
	lw	$v0,228($fp)
	addu	$v0,$v1,$v0
	lw	$a0,0($v0)
	la	$a1,$LC15
	la	$t9,strcmp
	jal	$ra,$t9
	beq	$v0,$zero,$L33
	lw	$v0,92($fp)
	sll	$v1,$v0,2
	lw	$v0,228($fp)
	addu	$v0,$v1,$v0
	lw	$a0,0($v0)
	la	$a1,$LC16
	la	$t9,strcmp
	jal	$ra,$t9
	bne	$v0,$zero,$L32
$L33:
	.loc 1 62 0
	addu	$a0,$fp,64
	lw	$v0,92($fp)
	sll	$v1,$v0,2
	lw	$v0,228($fp)
	addu	$v0,$v1,$v0
	addu	$v0,$v0,4
	lw	$a1,0($v0)
	la	$t9,string_to_complex
	jal	$ra,$t9
$L32:
	.loc 1 64 0
	lw	$v0,92($fp)
	sll	$v1,$v0,2
	lw	$v0,228($fp)
	addu	$v0,$v1,$v0
	lw	$a0,0($v0)
	la	$a1,$LC17
	la	$t9,strcmp
	jal	$ra,$t9
	beq	$v0,$zero,$L35
	lw	$v0,92($fp)
	sll	$v1,$v0,2
	lw	$v0,228($fp)
	addu	$v0,$v1,$v0
	lw	$a0,0($v0)
	la	$a1,$LC18
	la	$t9,strcmp
	jal	$ra,$t9
	bne	$v0,$zero,$L22
$L35:
	.loc 1 65 0
	lw	$v0,92($fp)
	sll	$v1,$v0,2
	lw	$v0,228($fp)
	addu	$v0,$v1,$v0
	addu	$v0,$v0,4
	lw	$v0,0($v0)
	sw	$v0,80($fp)
	.loc 1 47 0
$L22:
	lw	$v0,92($fp)
	addu	$v0,$v0,1
	sw	$v0,92($fp)
	b	$L20
$L21:
	.loc 1 70 0
	addu	$v0,$fp,100
	addu	$v1,$fp,104
	lw	$a0,24($fp)
	la	$a1,$LC19
	move	$a2,$v0
	move	$a3,$v1
	la	$t9,sscanf
	jal	$ra,$t9
	sw	$v0,96($fp)
	.loc 1 71 0
	lw	$v0,96($fp)
	slt	$v0,$v0,2
	beq	$v0,$zero,$L36
	.loc 1 72 0
	la	$a0,__sF+176
	la	$a1,$LC20
	la	$t9,fprintf
	jal	$ra,$t9
	.loc 1 73 0
	addu	$v0,$fp,100
	addu	$v1,$fp,104
	la	$a0,$LC3
	la	$a1,$LC19
	move	$a2,$v0
	move	$a3,$v1
	la	$t9,sscanf
	jal	$ra,$t9
$L36:
	.loc 1 77 0
	l.s	$f0,100($fp)
	cvt.d.w	$f2,$f0
	l.d	$f0,48($fp)
	div.d	$f2,$f0,$f2
	l.d	$f0,$LC4
	div.d	$f0,$f2,$f0
	s.d	$f0,112($fp)
	.loc 1 78 0
	l.s	$f0,104($fp)
	cvt.d.w	$f2,$f0
	l.d	$f0,56($fp)
	div.d	$f2,$f0,$f2
	l.d	$f0,$LC4
	div.d	$f0,$f2,$f0
	s.d	$f0,120($fp)
	.loc 1 84 0
	lw	$a0,80($fp)
	la	$a1,$LC6
	la	$t9,strcmp
	jal	$ra,$t9
	beq	$v0,$zero,$L37
	.loc 1 85 0
	lw	$a0,80($fp)
	la	$a1,$LC21
	la	$t9,fopen
	jal	$ra,$t9
	sw	$v0,168($fp)
	.loc 1 86 0
	lw	$v0,168($fp)
	bne	$v0,$zero,$L39
	.loc 1 87 0
	la	$a0,__sF+176
	la	$a1,$LC22
	lw	$a2,80($fp)
	la	$t9,fprintf
	jal	$ra,$t9
	.loc 1 88 0
	la	$a0,$LC23
	la	$t9,perror
	jal	$ra,$t9
	.loc 1 89 0
	li	$a0,-1			# 0xffffffffffffffff
	la	$t9,exit
	jal	$ra,$t9
$L37:
	.loc 1 91 0
	la	$v0,__sF+88
	sw	$v0,168($fp)
$L39:
	.loc 1 95 0
	lw	$a0,168($fp)
	la	$a1,$LC24
	lw	$a2,100($fp)
	lw	$a3,104($fp)
	la	$t9,fprintf
	jal	$ra,$t9
	sw	$v0,192($fp)
	.loc 1 96 0
	lw	$v0,192($fp)
	bgez	$v0,$L40
	la	$a0,__sF+176
	la	$a1,$LC25
	la	$t9,fprintf
	jal	$ra,$t9
$L40:
	.loc 1 98 0
$LBB5:
	sw	$zero,196($fp)
$L41:
	lw	$v0,196($fp)
	lw	$v1,104($fp)
	slt	$v0,$v1,$v0
	beq	$v0,$zero,$L44
	b	$L42
$L44:
	.loc 1 99 0
$LBB6:
	li	$v0,1			# 0x1
	sw	$v0,200($fp)
$L45:
	lw	$v0,200($fp)
	lw	$v1,100($fp)
	slt	$v0,$v1,$v0
	beq	$v0,$zero,$L48
	b	$L46
$L48:
	.loc 1 100 0
	lw	$v0,200($fp)
	sll	$v0,$v0,1
	addu	$v0,$v0,-1
	mtc1	$v0,$f0
	cvt.d.w	$f2,$f0
	l.d	$f0,112($fp)
	mul.d	$f4,$f2,$f0
	l.d	$f2,48($fp)
	l.d	$f0,$LC4
	div.d	$f0,$f2,$f0
	sub.d	$f2,$f4,$f0
	l.d	$f0,32($fp)
	add.d	$f0,$f2,$f0
	s.d	$f0,176($fp)
	.loc 1 101 0
	l.d	$f0,120($fp)
	neg.d	$f2,$f0
	lw	$v0,196($fp)
	sll	$v0,$v0,1
	addu	$v0,$v0,-1
	mtc1	$v0,$f0
	cvt.d.w	$f0,$f0
	mul.d	$f4,$f2,$f0
	l.d	$f2,56($fp)
	l.d	$f0,$LC4
	div.d	$f0,$f2,$f0
	add.d	$f2,$f4,$f0
	l.d	$f0,40($fp)
	add.d	$f0,$f2,$f0
	s.d	$f0,184($fp)
	.loc 1 102 0
	l.d	$f0,176($fp)
	s.d	$f0,152($fp)
	.loc 1 103 0
	l.d	$f0,184($fp)
	s.d	$f0,160($fp)
	.loc 1 104 0
	sw	$zero,128($fp)
$L49:
	lw	$v0,128($fp)
	slt	$v0,$v0,256
	bne	$v0,$zero,$L52
	b	$L50
$L52:
	.loc 1 105 0
	l.d	$f2,152($fp)
	l.d	$f0,152($fp)
	mul.d	$f4,$f2,$f0
	l.d	$f2,160($fp)
	l.d	$f0,160($fp)
	mul.d	$f0,$f2,$f0
	add.d	$f0,$f4,$f0
	cvt.s.d	$f0,$f0
	mov.s	$f12,$f0
	la	$t9,sqrtf
	jal	$ra,$t9
	cvt.d.s	$f0,$f0
	s.d	$f0,144($fp)
	.loc 1 106 0
	l.d	$f2,144($fp)
	l.d	$f0,$LC4
	c.lt.d	$f0,$f2
	bc1t	$L50
	.loc 1 107 0
	l.d	$f2,152($fp)
	l.d	$f0,152($fp)
	mul.d	$f4,$f2,$f0
	l.d	$f2,160($fp)
	l.d	$f0,160($fp)
	mul.d	$f0,$f2,$f0
	sub.d	$f2,$f4,$f0
	l.d	$f0,64($fp)
	add.d	$f0,$f2,$f0
	s.d	$f0,136($fp)
	.loc 1 108 0
	l.d	$f2,160($fp)
	l.d	$f0,152($fp)
	mul.d	$f4,$f2,$f0
	l.d	$f2,152($fp)
	l.d	$f0,160($fp)
	mul.d	$f0,$f2,$f0
	add.d	$f2,$f4,$f0
	l.d	$f0,72($fp)
	add.d	$f0,$f2,$f0
	s.d	$f0,184($fp)
	.loc 1 109 0
	l.d	$f0,136($fp)
	s.d	$f0,152($fp)
	.loc 1 110 0
	l.d	$f0,184($fp)
	s.d	$f0,160($fp)
	.loc 1 104 0
	lw	$v0,128($fp)
	addu	$v0,$v0,1
	sw	$v0,128($fp)
	b	$L49
$L50:
	.loc 1 112 0
	lw	$a0,168($fp)
	la	$a1,$LC26
	lw	$a2,128($fp)
	la	$t9,fprintf
	jal	$ra,$t9
	sw	$v0,192($fp)
	.loc 1 113 0
	lw	$v0,192($fp)
	bgez	$v0,$L47
	la	$a0,__sF+176
	la	$a1,$LC27
	la	$t9,fprintf
	jal	$ra,$t9
	.loc 1 99 0
$L47:
	lw	$v0,200($fp)
	addu	$v0,$v0,1
	sw	$v0,200($fp)
	b	$L45
$L46:
	.loc 1 115 0
$LBE6:
	lw	$a0,168($fp)
	la	$a1,$LC28
	la	$t9,fprintf
	jal	$ra,$t9
	sw	$v0,192($fp)
	.loc 1 116 0
	lw	$v0,192($fp)
	bgez	$v0,$L43
	la	$a0,__sF+176
	la	$a1,$LC29
	la	$t9,fprintf
	jal	$ra,$t9
	.loc 1 98 0
$L43:
	lw	$v0,196($fp)
	addu	$v0,$v0,1
	sw	$v0,196($fp)
	b	$L41
$L42:
	.loc 1 118 0
$LBE5:
	lw	$v1,84($fp)
	li	$v0,1			# 0x1
	beq	$v1,$v0,$L57
	.loc 1 119 0
	lw	$a0,168($fp)
	la	$t9,rewind
	jal	$ra,$t9
	.loc 1 120 0
	lw	$a0,168($fp)
	la	$t9,fclose
	jal	$ra,$t9
	.loc 1 121 0
	la	$a0,$LC30
	lw	$a1,88($fp)
	lw	$a2,80($fp)
	la	$t9,printf
	jal	$ra,$t9
$L57:
	.loc 1 128 0
	move	$v0,$zero
	.loc 1 129 0
	move	$sp,$fp
	lw	$ra,216($sp)
	lw	$fp,212($sp)
	addu	$sp,$sp,224
	j	$ra
$LBE4:
	.end	main
$LFE31:
	.size	main, .-main
	.section	.debug_frame,"",@progbits
$Lframe0:
	.4byte	$LECIE0-$LSCIE0
$LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 4
	.byte	0x40
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x0
	.align	2
$LECIE0:
$LSFDE0:
	.4byte	$LEFDE0-$LASFDE0
$LASFDE0:
	.4byte	$Lframe0
	.4byte	$LFB29
	.4byte	$LFE29-$LFB29
	.byte	0x4
	.4byte	$LCFI0-$LFB29
	.byte	0xe
	.uleb128 0x58
	.byte	0x4
	.4byte	$LCFI3-$LCFI0
	.byte	0x11
	.uleb128 0x1c
	.sleb128 -4
	.byte	0x11
	.uleb128 0x1e
	.sleb128 -3
	.byte	0x11
	.uleb128 0x40
	.sleb128 -2
	.byte	0x4
	.4byte	$LCFI4-$LCFI3
	.byte	0xc
	.uleb128 0x1e
	.uleb128 0x58
	.align	2
$LEFDE0:
$LSFDE2:
	.4byte	$LEFDE2-$LASFDE2
$LASFDE2:
	.4byte	$Lframe0
	.4byte	$LFB31
	.4byte	$LFE31-$LFB31
	.byte	0x4
	.4byte	$LCFI5-$LFB31
	.byte	0xe
	.uleb128 0xe0
	.byte	0x4
	.4byte	$LCFI8-$LCFI5
	.byte	0x11
	.uleb128 0x1c
	.sleb128 -4
	.byte	0x11
	.uleb128 0x1e
	.sleb128 -3
	.byte	0x11
	.uleb128 0x40
	.sleb128 -2
	.byte	0x4
	.4byte	$LCFI9-$LCFI8
	.byte	0xc
	.uleb128 0x1e
	.uleb128 0xe0
	.align	2
$LEFDE2:
	.align	0
	.text
$Letext0:
	.section	.debug_info
	.4byte	0xf02
	.2byte	0x2
	.4byte	$Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	$Ldebug_line0
	.4byte	$Letext0
	.4byte	$Ltext0
	.4byte	$LC280
	.4byte	$LC281
	.4byte	$LC282
	.byte	0x1
	.uleb128 0x2
	.4byte	$LC31
	.byte	0x2
	.byte	0x30
	.4byte	0x30
	.uleb128 0x3
	.4byte	$LC33
	.byte	0x1
	.byte	0x6
	.uleb128 0x2
	.4byte	$LC32
	.byte	0x2
	.byte	0x31
	.4byte	0x42
	.uleb128 0x3
	.4byte	$LC34
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.4byte	$LC35
	.byte	0x2
	.byte	0x32
	.4byte	0x54
	.uleb128 0x3
	.4byte	$LC36
	.byte	0x2
	.byte	0x5
	.uleb128 0x2
	.4byte	$LC37
	.byte	0x2
	.byte	0x33
	.4byte	0x66
	.uleb128 0x3
	.4byte	$LC38
	.byte	0x2
	.byte	0x7
	.uleb128 0x2
	.4byte	$LC39
	.byte	0x2
	.byte	0x34
	.4byte	0x78
	.uleb128 0x4
	.ascii	"int\000"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	$LC40
	.byte	0x2
	.byte	0x35
	.4byte	0x8a
	.uleb128 0x3
	.4byte	$LC41
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	$LC42
	.byte	0x2
	.byte	0x3e
	.4byte	0x9c
	.uleb128 0x3
	.4byte	$LC43
	.byte	0x8
	.byte	0x5
	.uleb128 0x2
	.4byte	$LC44
	.byte	0x2
	.byte	0x40
	.4byte	0xae
	.uleb128 0x3
	.4byte	$LC45
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.4byte	$LC46
	.byte	0x2
	.byte	0x4b
	.4byte	0x78
	.uleb128 0x2
	.4byte	$LC47
	.byte	0x2
	.byte	0x4c
	.4byte	0x8a
	.uleb128 0x2
	.4byte	$LC48
	.byte	0x3
	.byte	0x2c
	.4byte	0xd6
	.uleb128 0x5
	.byte	0x4
	.4byte	0xdc
	.uleb128 0x3
	.4byte	$LC49
	.byte	0x1
	.byte	0x6
	.uleb128 0x2
	.4byte	$LC50
	.byte	0x3
	.byte	0x2d
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC51
	.byte	0x3
	.byte	0x2e
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC52
	.byte	0x3
	.byte	0x2f
	.4byte	0x5b
	.uleb128 0x2
	.4byte	$LC53
	.byte	0x3
	.byte	0x30
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC54
	.byte	0x3
	.byte	0x31
	.4byte	0x91
	.uleb128 0x2
	.4byte	$LC55
	.byte	0x3
	.byte	0x32
	.4byte	0x6d
	.uleb128 0x2
	.4byte	$LC56
	.byte	0x3
	.byte	0x33
	.4byte	0x37
	.uleb128 0x2
	.4byte	$LC57
	.byte	0x3
	.byte	0x34
	.4byte	0x8a
	.uleb128 0x2
	.4byte	$LC58
	.byte	0x3
	.byte	0x35
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC59
	.byte	0x3
	.byte	0x36
	.4byte	0xa3
	.uleb128 0x2
	.4byte	$LC60
	.byte	0x3
	.byte	0x37
	.4byte	0xa3
	.uleb128 0x6
	.4byte	0x17b
	.byte	0x80
	.byte	0x4
	.byte	0x65
	.uleb128 0x7
	.4byte	$LC61
	.byte	0x4
	.byte	0x63
	.4byte	0x17b
	.uleb128 0x7
	.4byte	$LC62
	.byte	0x4
	.byte	0x64
	.4byte	0x91
	.byte	0x0
	.uleb128 0x8
	.4byte	0x18b
	.4byte	0xdc
	.uleb128 0x9
	.4byte	0x18b
	.byte	0x7f
	.byte	0x0
	.uleb128 0x3
	.4byte	$LC41
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	$LC63
	.byte	0x4
	.byte	0x65
	.4byte	0x15c
	.uleb128 0x2
	.4byte	$LC64
	.byte	0x5
	.byte	0x2e
	.4byte	0x8a
	.uleb128 0xa
	.4byte	0x1c3
	.4byte	$LC67
	.byte	0x8
	.byte	0x5
	.byte	0x3c
	.uleb128 0xb
	.4byte	$LC65
	.byte	0x5
	.byte	0x3d
	.4byte	0x10f
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC66
	.byte	0x5
	.byte	0x3e
	.4byte	0x1a8
	.uleb128 0xa
	.4byte	0x1f7
	.4byte	$LC68
	.byte	0x8
	.byte	0x5
	.byte	0x4a
	.uleb128 0xb
	.4byte	$LC69
	.byte	0x5
	.byte	0x4b
	.4byte	0x1f7
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC70
	.byte	0x5
	.byte	0x4c
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x42
	.uleb128 0xa
	.4byte	0x31f
	.4byte	$LC71
	.byte	0x58
	.byte	0x5
	.byte	0x69
	.uleb128 0xc
	.ascii	"_p\000"
	.byte	0x5
	.byte	0x6a
	.4byte	0x1f7
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xc
	.ascii	"_r\000"
	.byte	0x5
	.byte	0x6b
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.uleb128 0xc
	.ascii	"_w\000"
	.byte	0x5
	.byte	0x6c
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.uleb128 0xb
	.4byte	$LC72
	.byte	0x5
	.byte	0x6d
	.4byte	0x54
	.byte	0x2
	.byte	0x10
	.uleb128 0xc
	.uleb128 0xb
	.4byte	$LC73
	.byte	0x5
	.byte	0x6e
	.4byte	0x54
	.byte	0x2
	.byte	0x10
	.uleb128 0xe
	.uleb128 0xc
	.ascii	"_bf\000"
	.byte	0x5
	.byte	0x6f
	.4byte	0x1ce
	.byte	0x2
	.byte	0x10
	.uleb128 0x10
	.uleb128 0xb
	.4byte	$LC74
	.byte	0x5
	.byte	0x70
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x18
	.uleb128 0xb
	.4byte	$LC75
	.byte	0x5
	.byte	0x73
	.4byte	0x31f
	.byte	0x2
	.byte	0x10
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	$LC76
	.byte	0x5
	.byte	0x74
	.4byte	0x331
	.byte	0x2
	.byte	0x10
	.uleb128 0x20
	.uleb128 0xb
	.4byte	$LC77
	.byte	0x5
	.byte	0x75
	.4byte	0x351
	.byte	0x2
	.byte	0x10
	.uleb128 0x24
	.uleb128 0xb
	.4byte	$LC78
	.byte	0x5
	.byte	0x76
	.4byte	0x371
	.byte	0x2
	.byte	0x10
	.uleb128 0x28
	.uleb128 0xb
	.4byte	$LC79
	.byte	0x5
	.byte	0x77
	.4byte	0x39c
	.byte	0x2
	.byte	0x10
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	$LC80
	.byte	0x5
	.byte	0x7a
	.4byte	0x1ce
	.byte	0x2
	.byte	0x10
	.uleb128 0x30
	.uleb128 0xc
	.ascii	"_up\000"
	.byte	0x5
	.byte	0x7d
	.4byte	0x1f7
	.byte	0x2
	.byte	0x10
	.uleb128 0x38
	.uleb128 0xc
	.ascii	"_ur\000"
	.byte	0x5
	.byte	0x7e
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x3c
	.uleb128 0xb
	.4byte	$LC81
	.byte	0x5
	.byte	0x81
	.4byte	0x3a2
	.byte	0x2
	.byte	0x10
	.uleb128 0x40
	.uleb128 0xb
	.4byte	$LC82
	.byte	0x5
	.byte	0x82
	.4byte	0x3b2
	.byte	0x2
	.byte	0x10
	.uleb128 0x43
	.uleb128 0xc
	.ascii	"_lb\000"
	.byte	0x5
	.byte	0x85
	.4byte	0x1ce
	.byte	0x2
	.byte	0x10
	.uleb128 0x44
	.uleb128 0xb
	.4byte	$LC83
	.byte	0x5
	.byte	0x88
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x4c
	.uleb128 0xb
	.4byte	$LC84
	.byte	0x5
	.byte	0x89
	.4byte	0x1c3
	.byte	0x2
	.byte	0x10
	.uleb128 0x50
	.byte	0x0
	.uleb128 0xd
	.byte	0x4
	.uleb128 0xe
	.4byte	0x331
	.byte	0x1
	.4byte	0x78
	.uleb128 0xf
	.4byte	0x31f
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x321
	.uleb128 0xe
	.4byte	0x351
	.byte	0x1
	.4byte	0x78
	.uleb128 0xf
	.4byte	0x31f
	.uleb128 0xf
	.4byte	0xd6
	.uleb128 0xf
	.4byte	0x78
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x337
	.uleb128 0xe
	.4byte	0x371
	.byte	0x1
	.4byte	0x1c3
	.uleb128 0xf
	.4byte	0x31f
	.uleb128 0xf
	.4byte	0x1c3
	.uleb128 0xf
	.4byte	0x78
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x357
	.uleb128 0xe
	.4byte	0x391
	.byte	0x1
	.4byte	0x78
	.uleb128 0xf
	.4byte	0x31f
	.uleb128 0xf
	.4byte	0x391
	.uleb128 0xf
	.4byte	0x78
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x397
	.uleb128 0x10
	.4byte	0xdc
	.uleb128 0x5
	.byte	0x4
	.4byte	0x377
	.uleb128 0x8
	.4byte	0x3b2
	.4byte	0x42
	.uleb128 0x9
	.4byte	0x18b
	.byte	0x2
	.byte	0x0
	.uleb128 0x8
	.4byte	0x3c2
	.4byte	0x42
	.uleb128 0x9
	.4byte	0x18b
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC85
	.byte	0x5
	.byte	0x8a
	.4byte	0x1fd
	.uleb128 0x11
	.4byte	$LC86
	.byte	0x5
	.2byte	0x160
	.4byte	0x10f
	.uleb128 0x2
	.4byte	$LC87
	.byte	0x6
	.byte	0x3b
	.4byte	0x3e4
	.uleb128 0x3
	.4byte	$LC88
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	$LC89
	.byte	0x6
	.byte	0x3c
	.4byte	0x3f6
	.uleb128 0x3
	.4byte	$LC90
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	$LC91
	.byte	0x6
	.byte	0x3d
	.4byte	0x3e4
	.uleb128 0x2
	.4byte	$LC92
	.byte	0x6
	.byte	0x46
	.4byte	0x3f6
	.uleb128 0x2
	.4byte	$LC93
	.byte	0x6
	.byte	0x47
	.4byte	0x3f6
	.uleb128 0x2
	.4byte	$LC94
	.byte	0x6
	.byte	0x49
	.4byte	0x3f6
	.uleb128 0x2
	.4byte	$LC95
	.byte	0x6
	.byte	0x4a
	.4byte	0x3f6
	.uleb128 0x2
	.4byte	$LC96
	.byte	0x6
	.byte	0x51
	.4byte	0x3e4
	.uleb128 0x2
	.4byte	$LC97
	.byte	0x6
	.byte	0x5a
	.4byte	0x44a
	.uleb128 0x12
	.4byte	0x78
	.uleb128 0x2
	.4byte	$LC98
	.byte	0x7
	.byte	0x36
	.4byte	0x25
	.uleb128 0x2
	.4byte	$LC99
	.byte	0x7
	.byte	0x3b
	.4byte	0x37
	.uleb128 0x2
	.4byte	$LC100
	.byte	0x7
	.byte	0x40
	.4byte	0x49
	.uleb128 0x2
	.4byte	$LC101
	.byte	0x7
	.byte	0x45
	.4byte	0x5b
	.uleb128 0x2
	.4byte	$LC102
	.byte	0x7
	.byte	0x4a
	.4byte	0x6d
	.uleb128 0x2
	.4byte	$LC103
	.byte	0x7
	.byte	0x4f
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC104
	.byte	0x7
	.byte	0x54
	.4byte	0x91
	.uleb128 0x2
	.4byte	$LC105
	.byte	0x7
	.byte	0x59
	.4byte	0xa3
	.uleb128 0x2
	.4byte	$LC106
	.byte	0x7
	.byte	0x5d
	.4byte	0x37
	.uleb128 0x2
	.4byte	$LC107
	.byte	0x7
	.byte	0x5e
	.4byte	0x5b
	.uleb128 0x2
	.4byte	$LC108
	.byte	0x7
	.byte	0x5f
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC109
	.byte	0x7
	.byte	0x60
	.4byte	0xa3
	.uleb128 0x2
	.4byte	$LC110
	.byte	0x8
	.byte	0x3a
	.4byte	0xee
	.uleb128 0x2
	.4byte	$LC111
	.byte	0x8
	.byte	0x3f
	.4byte	0xf9
	.uleb128 0x2
	.4byte	$LC112
	.byte	0x7
	.byte	0x65
	.4byte	0x42
	.uleb128 0x2
	.4byte	$LC113
	.byte	0x7
	.byte	0x66
	.4byte	0x66
	.uleb128 0x2
	.4byte	$LC114
	.byte	0x7
	.byte	0x67
	.4byte	0x8a
	.uleb128 0x2
	.4byte	$LC115
	.byte	0x7
	.byte	0x68
	.4byte	0x3f6
	.uleb128 0x2
	.4byte	$LC116
	.byte	0x7
	.byte	0x6a
	.4byte	0x42
	.uleb128 0x2
	.4byte	$LC117
	.byte	0x7
	.byte	0x6b
	.4byte	0x66
	.uleb128 0x2
	.4byte	$LC118
	.byte	0x7
	.byte	0x6c
	.4byte	0x8a
	.uleb128 0x2
	.4byte	$LC119
	.byte	0x7
	.byte	0x6d
	.4byte	0x3f6
	.uleb128 0x2
	.4byte	$LC120
	.byte	0x7
	.byte	0x6f
	.4byte	0x50a
	.uleb128 0x2
	.4byte	$LC121
	.byte	0x7
	.byte	0x72
	.4byte	0xa3
	.uleb128 0x2
	.4byte	$LC122
	.byte	0x7
	.byte	0x73
	.4byte	0x91
	.uleb128 0x2
	.4byte	$LC123
	.byte	0x7
	.byte	0x74
	.4byte	0x56d
	.uleb128 0x5
	.byte	0x4
	.4byte	0x557
	.uleb128 0x2
	.4byte	$LC124
	.byte	0x7
	.byte	0x80
	.4byte	0x91
	.uleb128 0x2
	.4byte	$LC125
	.byte	0x7
	.byte	0x81
	.4byte	0xa3
	.uleb128 0x2
	.4byte	$LC126
	.byte	0x7
	.byte	0x83
	.4byte	0x91
	.uleb128 0x2
	.4byte	$LC127
	.byte	0x7
	.byte	0x84
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC128
	.byte	0x7
	.byte	0x87
	.4byte	0x146
	.uleb128 0x2
	.4byte	$LC129
	.byte	0x7
	.byte	0x8c
	.4byte	0x151
	.uleb128 0x2
	.4byte	$LC130
	.byte	0x7
	.byte	0x91
	.4byte	0xcb
	.uleb128 0x2
	.4byte	$LC131
	.byte	0x7
	.byte	0x99
	.4byte	0x91
	.uleb128 0x2
	.4byte	$LC132
	.byte	0x7
	.byte	0x9c
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC133
	.byte	0x7
	.byte	0x9d
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC134
	.byte	0x7
	.byte	0xa0
	.4byte	0xe3
	.uleb128 0x2
	.4byte	$LC135
	.byte	0x7
	.byte	0xa4
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC136
	.byte	0x7
	.byte	0xa5
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC137
	.byte	0x7
	.byte	0xa6
	.4byte	0x3e4
	.uleb128 0x2
	.4byte	$LC138
	.byte	0x7
	.byte	0xa9
	.4byte	0x104
	.uleb128 0x2
	.4byte	$LC139
	.byte	0x7
	.byte	0xad
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC140
	.byte	0x7
	.byte	0xb5
	.4byte	0x11a
	.uleb128 0x2
	.4byte	$LC141
	.byte	0x7
	.byte	0xb8
	.4byte	0x6d
	.uleb128 0x2
	.4byte	$LC142
	.byte	0x7
	.byte	0xb9
	.4byte	0x557
	.uleb128 0x2
	.4byte	$LC143
	.byte	0x7
	.byte	0xba
	.4byte	0x6d
	.uleb128 0x2
	.4byte	$LC144
	.byte	0x7
	.byte	0xbb
	.4byte	0x6d
	.uleb128 0x2
	.4byte	$LC145
	.byte	0x7
	.byte	0xbe
	.4byte	0x13b
	.uleb128 0x2
	.4byte	$LC146
	.byte	0x7
	.byte	0xc2
	.4byte	0x6d
	.uleb128 0x2
	.4byte	$LC147
	.byte	0x7
	.byte	0xfc
	.4byte	0x3f6
	.uleb128 0x11
	.4byte	$LC148
	.byte	0x7
	.2byte	0x107
	.4byte	0x78
	.uleb128 0x11
	.4byte	$LC149
	.byte	0x7
	.2byte	0x10c
	.4byte	0x3e4
	.uleb128 0x11
	.4byte	$LC150
	.byte	0x7
	.2byte	0x111
	.4byte	0x78
	.uleb128 0x11
	.4byte	$LC151
	.byte	0x7
	.2byte	0x116
	.4byte	0x78
	.uleb128 0x11
	.4byte	$LC152
	.byte	0x7
	.2byte	0x11b
	.4byte	0x78
	.uleb128 0x11
	.4byte	$LC153
	.byte	0x7
	.2byte	0x120
	.4byte	0x8a
	.uleb128 0x11
	.4byte	$LC154
	.byte	0x7
	.2byte	0x12d
	.4byte	0x6d
	.uleb128 0x13
	.4byte	0x6ec
	.4byte	$LC155
	.byte	0x20
	.byte	0x7
	.2byte	0x142
	.uleb128 0x14
	.4byte	$LC156
	.byte	0x7
	.2byte	0x143
	.4byte	0x6ec
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.4byte	0x6fc
	.4byte	0x6c3
	.uleb128 0x9
	.4byte	0x18b
	.byte	0x7
	.byte	0x0
	.uleb128 0x11
	.4byte	$LC155
	.byte	0x7
	.2byte	0x144
	.4byte	0x6cf
	.uleb128 0x2
	.4byte	$LC157
	.byte	0x9
	.byte	0x2e
	.4byte	0x44a
	.uleb128 0xa
	.4byte	0x73c
	.4byte	$LC158
	.byte	0x8
	.byte	0x9
	.byte	0x39
	.uleb128 0xb
	.4byte	$LC159
	.byte	0x9
	.byte	0x39
	.4byte	0x742
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC160
	.byte	0x9
	.byte	0x39
	.4byte	0x748
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x15
	.4byte	$LC278
	.byte	0x1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x73c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x742
	.uleb128 0x2
	.4byte	$LC161
	.byte	0x9
	.byte	0x47
	.4byte	0x742
	.uleb128 0x2
	.4byte	$LC162
	.byte	0x9
	.byte	0x48
	.4byte	0x764
	.uleb128 0xa
	.4byte	0x79b
	.4byte	$LC163
	.byte	0xc
	.byte	0x9
	.byte	0x3c
	.uleb128 0xb
	.4byte	$LC164
	.byte	0x9
	.byte	0x56
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC165
	.byte	0x9
	.byte	0x58
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.uleb128 0xb
	.4byte	$LC166
	.byte	0x9
	.byte	0x59
	.4byte	0x31f
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC167
	.byte	0x9
	.byte	0x49
	.4byte	0x7a6
	.uleb128 0xa
	.4byte	0x807
	.4byte	$LC168
	.byte	0x1c
	.byte	0x9
	.byte	0x3d
	.uleb128 0xb
	.4byte	$LC169
	.byte	0x9
	.byte	0x5d
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC170
	.byte	0x9
	.byte	0x66
	.4byte	0x44a
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.uleb128 0xb
	.4byte	$LC171
	.byte	0x9
	.byte	0x69
	.4byte	0x44a
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.uleb128 0xb
	.4byte	$LC172
	.byte	0x9
	.byte	0x6a
	.4byte	0x74e
	.byte	0x2
	.byte	0x10
	.uleb128 0xc
	.uleb128 0xb
	.4byte	$LC173
	.byte	0x9
	.byte	0x6b
	.4byte	0x713
	.byte	0x2
	.byte	0x10
	.uleb128 0x10
	.uleb128 0xb
	.4byte	$LC174
	.byte	0x9
	.byte	0x6c
	.4byte	0x31f
	.byte	0x2
	.byte	0x10
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC175
	.byte	0x9
	.byte	0x4a
	.4byte	0x812
	.uleb128 0xa
	.4byte	0x83b
	.4byte	$LC176
	.byte	0x8
	.byte	0x9
	.byte	0x3e
	.uleb128 0xb
	.4byte	$LC177
	.byte	0x9
	.byte	0x7c
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC178
	.byte	0x9
	.byte	0x7d
	.4byte	0x31f
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC179
	.byte	0x9
	.byte	0x4b
	.4byte	0x846
	.uleb128 0xa
	.4byte	0x899
	.4byte	$LC180
	.byte	0x18
	.byte	0x9
	.byte	0x3f
	.uleb128 0xb
	.4byte	$LC181
	.byte	0x9
	.byte	0x85
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC182
	.byte	0x9
	.byte	0x88
	.4byte	0x44a
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.uleb128 0xb
	.4byte	$LC183
	.byte	0x9
	.byte	0x89
	.4byte	0x713
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.uleb128 0xb
	.4byte	$LC184
	.byte	0x9
	.byte	0x8b
	.4byte	0xaaa
	.byte	0x2
	.byte	0x10
	.uleb128 0x10
	.uleb128 0xb
	.4byte	$LC185
	.byte	0x9
	.byte	0x8c
	.4byte	0x31f
	.byte	0x2
	.byte	0x10
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC186
	.byte	0x9
	.byte	0x4c
	.4byte	0x8a4
	.uleb128 0xa
	.4byte	0x8cd
	.4byte	$LC187
	.byte	0x8
	.byte	0x9
	.byte	0x40
	.uleb128 0xb
	.4byte	$LC188
	.byte	0x9
	.byte	0x9a
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC189
	.byte	0x9
	.byte	0x9b
	.4byte	0x31f
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC190
	.byte	0x9
	.byte	0x4d
	.4byte	0x8d8
	.uleb128 0xa
	.4byte	0x901
	.4byte	$LC191
	.byte	0x20
	.byte	0x9
	.byte	0x4d
	.uleb128 0xb
	.4byte	$LC192
	.byte	0x9
	.byte	0xa2
	.4byte	0x79b
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC193
	.byte	0x9
	.byte	0xa3
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC194
	.byte	0x9
	.byte	0x4e
	.4byte	0x90c
	.uleb128 0xa
	.4byte	0x943
	.4byte	$LC195
	.byte	0xc
	.byte	0x9
	.byte	0x4e
	.uleb128 0xb
	.4byte	$LC196
	.byte	0x9
	.byte	0xa9
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC197
	.byte	0x9
	.byte	0xaa
	.4byte	0x44a
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.uleb128 0xb
	.4byte	$LC198
	.byte	0x9
	.byte	0xab
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC199
	.byte	0x9
	.byte	0x4f
	.4byte	0x94e
	.uleb128 0xa
	.4byte	0x9bd
	.4byte	$LC200
	.byte	0x24
	.byte	0x9
	.byte	0x42
	.uleb128 0xb
	.4byte	$LC201
	.byte	0x9
	.byte	0xb9
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC202
	.byte	0x9
	.byte	0xbc
	.4byte	0x44a
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.uleb128 0xb
	.4byte	$LC203
	.byte	0x9
	.byte	0xbe
	.4byte	0x713
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.uleb128 0xb
	.4byte	$LC204
	.byte	0x9
	.byte	0xbf
	.4byte	0x713
	.byte	0x2
	.byte	0x10
	.uleb128 0x10
	.uleb128 0xb
	.4byte	$LC205
	.byte	0x9
	.byte	0xc0
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x18
	.uleb128 0xb
	.4byte	$LC206
	.byte	0x9
	.byte	0xc1
	.4byte	0x74e
	.byte	0x2
	.byte	0x10
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	$LC207
	.byte	0x9
	.byte	0xc2
	.4byte	0x31f
	.byte	0x2
	.byte	0x10
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC208
	.byte	0x9
	.byte	0x50
	.4byte	0x9c8
	.uleb128 0xa
	.4byte	0x9f1
	.4byte	$LC209
	.byte	0x8
	.byte	0x9
	.byte	0x43
	.uleb128 0xb
	.4byte	$LC210
	.byte	0x9
	.byte	0xd2
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC211
	.byte	0x9
	.byte	0xd3
	.4byte	0x31f
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC212
	.byte	0x9
	.byte	0x51
	.4byte	0x9fc
	.uleb128 0xa
	.4byte	0xa6b
	.4byte	$LC213
	.byte	0x20
	.byte	0x9
	.byte	0x44
	.uleb128 0xb
	.4byte	$LC214
	.byte	0x9
	.byte	0xda
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC215
	.byte	0x9
	.byte	0xdd
	.4byte	0x44a
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.uleb128 0xb
	.4byte	$LC216
	.byte	0x9
	.byte	0xdf
	.4byte	0x713
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.uleb128 0xb
	.4byte	$LC217
	.byte	0x9
	.byte	0xe0
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x10
	.uleb128 0xb
	.4byte	$LC218
	.byte	0x9
	.byte	0xe1
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x14
	.uleb128 0xb
	.4byte	$LC219
	.byte	0x9
	.byte	0xe2
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x18
	.uleb128 0xb
	.4byte	$LC220
	.byte	0x9
	.byte	0xe4
	.4byte	0x31f
	.byte	0x2
	.byte	0x10
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC221
	.byte	0x9
	.byte	0x52
	.4byte	0xa76
	.uleb128 0xa
	.4byte	0xa9f
	.4byte	$LC222
	.byte	0x8
	.byte	0x9
	.byte	0x45
	.uleb128 0xb
	.4byte	$LC223
	.byte	0x9
	.byte	0xeb
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC224
	.byte	0x9
	.byte	0xec
	.4byte	0x31f
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC225
	.byte	0x9
	.byte	0x53
	.4byte	0x78
	.uleb128 0x5
	.byte	0x4
	.4byte	0x79b
	.uleb128 0x2
	.4byte	$LC226
	.byte	0xa
	.byte	0x34
	.4byte	0x78
	.uleb128 0x16
	.4byte	0xae0
	.byte	0x8
	.byte	0xa
	.byte	0x3b
	.uleb128 0xb
	.4byte	$LC227
	.byte	0xa
	.byte	0x39
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xc
	.ascii	"rem\000"
	.byte	0xa
	.byte	0x3a
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC228
	.byte	0xa
	.byte	0x3b
	.4byte	0xabb
	.uleb128 0x16
	.4byte	0xb10
	.byte	0x8
	.byte	0xa
	.byte	0x40
	.uleb128 0xb
	.4byte	$LC227
	.byte	0xa
	.byte	0x3e
	.4byte	0x3e4
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xc
	.ascii	"rem\000"
	.byte	0xa
	.byte	0x3f
	.4byte	0x3e4
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC229
	.byte	0xa
	.byte	0x40
	.4byte	0xaeb
	.uleb128 0x16
	.4byte	0xb40
	.byte	0x10
	.byte	0xa
	.byte	0x4a
	.uleb128 0xb
	.4byte	$LC227
	.byte	0xa
	.byte	0x47
	.4byte	0x9c
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xc
	.ascii	"rem\000"
	.byte	0xa
	.byte	0x49
	.4byte	0x9c
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC230
	.byte	0xa
	.byte	0x4a
	.4byte	0xb1b
	.uleb128 0x16
	.4byte	0xb70
	.byte	0x10
	.byte	0xa
	.byte	0x51
	.uleb128 0xb
	.4byte	$LC227
	.byte	0xa
	.byte	0x4f
	.4byte	0x557
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xc
	.ascii	"rem\000"
	.byte	0xa
	.byte	0x50
	.4byte	0x557
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC231
	.byte	0xa
	.byte	0x51
	.4byte	0xb4b
	.uleb128 0x17
	.4byte	0xb9e
	.4byte	$LC235
	.byte	0x4
	.byte	0xb
	.byte	0x18
	.uleb128 0x7
	.4byte	$LC232
	.byte	0xb
	.byte	0x19
	.4byte	0xb9e
	.uleb128 0x7
	.4byte	$LC233
	.byte	0xb
	.byte	0x1a
	.4byte	0xbae
	.byte	0x0
	.uleb128 0x8
	.4byte	0xbae
	.4byte	0x42
	.uleb128 0x9
	.4byte	0x18b
	.byte	0x3
	.byte	0x0
	.uleb128 0x3
	.4byte	$LC234
	.byte	0x4
	.byte	0x4
	.uleb128 0x17
	.4byte	0xbd8
	.4byte	$LC236
	.byte	0x8
	.byte	0xb
	.byte	0x1d
	.uleb128 0x7
	.4byte	$LC232
	.byte	0xb
	.byte	0x1e
	.4byte	0xbd8
	.uleb128 0x7
	.4byte	$LC233
	.byte	0xb
	.byte	0x1f
	.4byte	0xbe8
	.byte	0x0
	.uleb128 0x8
	.4byte	0xbe8
	.4byte	0x42
	.uleb128 0x9
	.4byte	0x18b
	.byte	0x7
	.byte	0x0
	.uleb128 0x3
	.4byte	$LC237
	.byte	0x8
	.byte	0x4
	.uleb128 0x17
	.4byte	0xc12
	.4byte	$LC238
	.byte	0x8
	.byte	0xb
	.byte	0x22
	.uleb128 0x7
	.4byte	$LC232
	.byte	0xb
	.byte	0x23
	.4byte	0xbd8
	.uleb128 0x7
	.4byte	$LC233
	.byte	0xb
	.byte	0x24
	.4byte	0xc12
	.byte	0x0
	.uleb128 0x3
	.4byte	$LC239
	.byte	0x8
	.byte	0x4
	.uleb128 0x18
	.4byte	0xc3e
	.4byte	$LC283
	.byte	0x4
	.byte	0xb
	.byte	0x81
	.uleb128 0x19
	.4byte	$LC240
	.sleb128 -1
	.uleb128 0x1a
	.4byte	$LC241
	.byte	0x0
	.uleb128 0x1a
	.4byte	$LC242
	.byte	0x1
	.uleb128 0x1a
	.4byte	$LC243
	.byte	0x2
	.byte	0x0
	.uleb128 0xa
	.4byte	0xc91
	.4byte	$LC244
	.byte	0x20
	.byte	0xb
	.byte	0x95
	.uleb128 0xb
	.4byte	$LC245
	.byte	0xb
	.byte	0x96
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC246
	.byte	0xb
	.byte	0x97
	.4byte	0xd6
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.uleb128 0xb
	.4byte	$LC247
	.byte	0xb
	.byte	0x98
	.4byte	0xbe8
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.uleb128 0xb
	.4byte	$LC248
	.byte	0xb
	.byte	0x99
	.4byte	0xbe8
	.byte	0x2
	.byte	0x10
	.uleb128 0x10
	.uleb128 0xb
	.4byte	$LC249
	.byte	0xb
	.byte	0x9a
	.4byte	0xbe8
	.byte	0x2
	.byte	0x10
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xa
	.4byte	0xcba
	.4byte	$LC250
	.byte	0x10
	.byte	0x1
	.byte	0x12
	.uleb128 0xb
	.4byte	$LC251
	.byte	0x1
	.byte	0x13
	.4byte	0xc12
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC252
	.byte	0x1
	.byte	0x14
	.4byte	0xc12
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC250
	.byte	0x1
	.byte	0x15
	.4byte	0xc91
	.uleb128 0x1b
	.4byte	0xd30
	.byte	0x1
	.4byte	$LC254
	.byte	0x1
	.byte	0x17
	.byte	0x1
	.4byte	0xcba
	.4byte	$LFB29
	.4byte	$LFE29
	.4byte	$LSFDE0
	.byte	0x1
	.byte	0x6e
	.uleb128 0x1c
	.4byte	$LC256
	.byte	0x1
	.byte	0x17
	.4byte	0xd6
	.byte	0x3
	.byte	0x91
	.sleb128 92
	.uleb128 0x1d
	.ascii	"z\000"
	.byte	0x1
	.byte	0x18
	.4byte	0xcba
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x1d
	.ascii	"i\000"
	.byte	0x1
	.byte	0x19
	.4byte	0xdc
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x1e
	.4byte	$LC253
	.byte	0x1
	.byte	0x1a
	.4byte	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x1f
	.4byte	$LBB3
	.4byte	$LBE3
	.uleb128 0x1d
	.ascii	"x\000"
	.byte	0x1
	.byte	0x1d
	.4byte	0xcba
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.4byte	0xee0
	.byte	0x1
	.4byte	$LC255
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.4byte	0x78
	.4byte	$LFB31
	.4byte	$LFE31
	.4byte	$LSFDE2
	.byte	0x1
	.byte	0x6e
	.uleb128 0x1c
	.4byte	$LC257
	.byte	0x1
	.byte	0x23
	.4byte	0x78
	.byte	0x3
	.byte	0x91
	.sleb128 224
	.uleb128 0x1c
	.4byte	$LC258
	.byte	0x1
	.byte	0x23
	.4byte	0xee0
	.byte	0x3
	.byte	0x91
	.sleb128 228
	.uleb128 0x1e
	.4byte	$LC259
	.byte	0x1
	.byte	0x25
	.4byte	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x1e
	.4byte	$LC260
	.byte	0x1
	.byte	0x26
	.4byte	0xcba
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x1e
	.4byte	$LC261
	.byte	0x1
	.byte	0x27
	.4byte	0xbe8
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x1e
	.4byte	$LC262
	.byte	0x1
	.byte	0x28
	.4byte	0xbe8
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x1e
	.4byte	$LC263
	.byte	0x1
	.byte	0x29
	.4byte	0xcba
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x1e
	.4byte	$LC264
	.byte	0x1
	.byte	0x2a
	.4byte	0xd6
	.byte	0x3
	.byte	0x91
	.sleb128 80
	.uleb128 0x1e
	.4byte	$LC265
	.byte	0x1
	.byte	0x2b
	.4byte	0x78
	.byte	0x3
	.byte	0x91
	.sleb128 84
	.uleb128 0x1e
	.4byte	$LC266
	.byte	0x1
	.byte	0x2c
	.4byte	0xd6
	.byte	0x3
	.byte	0x91
	.sleb128 88
	.uleb128 0x1d
	.ascii	"i\000"
	.byte	0x1
	.byte	0x2e
	.4byte	0x78
	.byte	0x3
	.byte	0x91
	.sleb128 92
	.uleb128 0x1e
	.4byte	$LC253
	.byte	0x1
	.byte	0x45
	.4byte	0x78
	.byte	0x3
	.byte	0x91
	.sleb128 96
	.uleb128 0x1e
	.4byte	$LC267
	.byte	0x1
	.byte	0x45
	.4byte	0x78
	.byte	0x3
	.byte	0x91
	.sleb128 100
	.uleb128 0x1e
	.4byte	$LC268
	.byte	0x1
	.byte	0x45
	.4byte	0x78
	.byte	0x3
	.byte	0x91
	.sleb128 104
	.uleb128 0x1e
	.4byte	$LC269
	.byte	0x1
	.byte	0x4d
	.4byte	0xc12
	.byte	0x3
	.byte	0x91
	.sleb128 112
	.uleb128 0x1e
	.4byte	$LC270
	.byte	0x1
	.byte	0x4e
	.4byte	0xc12
	.byte	0x3
	.byte	0x91
	.sleb128 120
	.uleb128 0x1e
	.4byte	$LC271
	.byte	0x1
	.byte	0x4f
	.4byte	0x78
	.byte	0x3
	.byte	0x91
	.sleb128 128
	.uleb128 0x1e
	.4byte	$LC272
	.byte	0x1
	.byte	0x50
	.4byte	0xc12
	.byte	0x3
	.byte	0x91
	.sleb128 136
	.uleb128 0x1e
	.4byte	$LC273
	.byte	0x1
	.byte	0x50
	.4byte	0xc12
	.byte	0x3
	.byte	0x91
	.sleb128 144
	.uleb128 0x1e
	.4byte	$LC274
	.byte	0x1
	.byte	0x51
	.4byte	0xcba
	.byte	0x3
	.byte	0x91
	.sleb128 152
	.uleb128 0x1e
	.4byte	$LC275
	.byte	0x1
	.byte	0x53
	.4byte	0xee6
	.byte	0x3
	.byte	0x91
	.sleb128 168
	.uleb128 0x1e
	.4byte	$LC251
	.byte	0x1
	.byte	0x5d
	.4byte	0xc12
	.byte	0x3
	.byte	0x91
	.sleb128 176
	.uleb128 0x1e
	.4byte	$LC252
	.byte	0x1
	.byte	0x5d
	.4byte	0xc12
	.byte	0x3
	.byte	0x91
	.sleb128 184
	.uleb128 0x1e
	.4byte	$LC276
	.byte	0x1
	.byte	0x5f
	.4byte	0x78
	.byte	0x3
	.byte	0x91
	.sleb128 192
	.uleb128 0x1f
	.4byte	$LBB5
	.4byte	$LBE5
	.uleb128 0x1d
	.ascii	"y\000"
	.byte	0x1
	.byte	0x62
	.4byte	0x78
	.byte	0x3
	.byte	0x91
	.sleb128 196
	.uleb128 0x1f
	.4byte	$LBB6
	.4byte	$LBE6
	.uleb128 0x1d
	.ascii	"x\000"
	.byte	0x1
	.byte	0x63
	.4byte	0x78
	.byte	0x3
	.byte	0x91
	.sleb128 200
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xd6
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3c2
	.uleb128 0x20
	.byte	0x1
	.4byte	0x3c2
	.uleb128 0x21
	.4byte	$LC277
	.byte	0x5
	.byte	0x8d
	.4byte	0xeec
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.4byte	$LC279
	.byte	0x1
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x10
	.uleb128 0x6
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x2001
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x3c
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x2d
	.2byte	0x2
	.4byte	$Ldebug_info0
	.4byte	0xf06
	.4byte	0xcc5
	.ascii	"string_to_complex\000"
	.4byte	0xd30
	.ascii	"main\000"
	.4byte	0x0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	$Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	$Ltext0
	.4byte	$Letext0-$Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",@progbits,1
$LC80:
	.ascii	"_ext\000"
$LC70:
	.ascii	"_size\000"
$LC151:
	.ascii	"timer_t\000"
$LC263:
	.ascii	"seed\000"
$LC167:
	.ascii	"pthread_mutex_t\000"
$LC209:
	.ascii	"__pthread_rwlockattr_st\000"
$LC163:
	.ascii	"__pthread_attr_st\000"
$LC264:
	.ascii	"output_filename\000"
$LC103:
	.ascii	"uint32_t\000"
$LC171:
	.ascii	"ptm_interlock\000"
$LC251:
	.ascii	"real\000"
$LC170:
	.ascii	"ptm_lock\000"
$LC38:
	.ascii	"short unsigned int\000"
$LC234:
	.ascii	"float\000"
$LC74:
	.ascii	"_lbfsize\000"
$LC158:
	.ascii	"pthread_queue_t\000"
$LC34:
	.ascii	"unsigned char\000"
$LC191:
	.ascii	"__pthread_once_st\000"
$LC138:
	.ascii	"mode_t\000"
$LC153:
	.ascii	"useconds_t\000"
$LC216:
	.ascii	"ptb_waiters\000"
$LC211:
	.ascii	"ptra_private\000"
$LC178:
	.ascii	"ptma_private\000"
$LC86:
	.ascii	"off_t\000"
$LC233:
	.ascii	"__val\000"
$LC205:
	.ascii	"ptr_nreaders\000"
$LC207:
	.ascii	"ptr_private\000"
$LC68:
	.ascii	"__sbuf\000"
$LC78:
	.ascii	"_seek\000"
$LC52:
	.ascii	"__in_port_t\000"
$LC64:
	.ascii	"size_t\000"
$LC124:
	.ascii	"longlong_t\000"
$LC135:
	.ascii	"id_t\000"
$LC77:
	.ascii	"_read\000"
$LC125:
	.ascii	"u_longlong_t\000"
$LC54:
	.ascii	"__off_t\000"
$LC201:
	.ascii	"ptr_magic\000"
$LC210:
	.ascii	"ptra_magic\000"
$LC193:
	.ascii	"pto_done\000"
$LC91:
	.ascii	"mips_fpreg_t\000"
$LC60:
	.ascii	"__fsfilcnt_t\000"
$LC152:
	.ascii	"suseconds_t\000"
$LC129:
	.ascii	"fsfilcnt_t\000"
$LC120:
	.ascii	"cpuid_t\000"
$LC268:
	.ascii	"res_vertical\000"
$LC71:
	.ascii	"__sFILE\000"
$LC61:
	.ascii	"__mbstate8\000"
$LC89:
	.ascii	"mips_ureg_t\000"
$LC159:
	.ascii	"ptqh_first\000"
$LC114:
	.ascii	"u_int\000"
$LC98:
	.ascii	"int8_t\000"
$LC154:
	.ascii	"__fd_mask\000"
$LC62:
	.ascii	"__mbstateL\000"
$LC197:
	.ascii	"pts_spin\000"
$LC116:
	.ascii	"unchar\000"
$LC127:
	.ascii	"blksize_t\000"
$LC271:
	.ascii	"contadorBrillo\000"
$LC179:
	.ascii	"pthread_cond_t\000"
$LC174:
	.ascii	"ptm_private\000"
$LC247:
	.ascii	"arg1\000"
$LC248:
	.ascii	"arg2\000"
$LC177:
	.ascii	"ptma_magic\000"
$LC228:
	.ascii	"div_t\000"
$LC231:
	.ascii	"qdiv_t\000"
$LC272:
	.ascii	"temp\000"
$LC93:
	.ascii	"psize_t\000"
$LC215:
	.ascii	"ptb_lock\000"
$LC76:
	.ascii	"_close\000"
$LC204:
	.ascii	"ptr_wblocked\000"
$LC136:
	.ascii	"ino_t\000"
$LC66:
	.ascii	"fpos_t\000"
$LC44:
	.ascii	"__uint64_t\000"
$LC275:
	.ascii	"outf\000"
$LC257:
	.ascii	"argc\000"
$LC140:
	.ascii	"pid_t\000"
$LC95:
	.ascii	"vsize_t\000"
$LC105:
	.ascii	"uint64_t\000"
$LC155:
	.ascii	"fd_set\000"
$LC258:
	.ascii	"argv\000"
$LC75:
	.ascii	"_cookie\000"
$LC230:
	.ascii	"lldiv_t\000"
$LC90:
	.ascii	"long unsigned int\000"
$LC189:
	.ascii	"ptca_private\000"
$LC232:
	.ascii	"__dummy\000"
$LC277:
	.ascii	"__sF\000"
$LC67:
	.ascii	"__sfpos\000"
$LC55:
	.ascii	"__pid_t\000"
$LC83:
	.ascii	"_blksize\000"
$LC240:
	.ascii	"fdlibm_ieee\000"
$LC269:
	.ascii	"pasoH\000"
$LC69:
	.ascii	"_base\000"
$LC236:
	.ascii	"__double_u\000"
$LC267:
	.ascii	"res_horizontal\000"
$LC137:
	.ascii	"key_t\000"
$LC123:
	.ascii	"qaddr_t\000"
$LC274:
	.ascii	"pixel\000"
$LC270:
	.ascii	"pasoV\000"
$LC40:
	.ascii	"__uint32_t\000"
$LC212:
	.ascii	"pthread_barrier_t\000"
$LC185:
	.ascii	"ptc_private\000"
$LC227:
	.ascii	"quot\000"
$LC261:
	.ascii	"width\000"
$LC132:
	.ascii	"dev_t\000"
$LC238:
	.ascii	"__long_double_u\000"
$LC147:
	.ascii	"clock_t\000"
$LC141:
	.ascii	"lwpid_t\000"
$LC244:
	.ascii	"exception\000"
$LC81:
	.ascii	"_ubuf\000"
$LC82:
	.ascii	"_nbuf\000"
$LC280:
	.ascii	"tp0.c\000"
$LC273:
	.ascii	"valorAbsoluto\000"
$LC36:
	.ascii	"short int\000"
$LC106:
	.ascii	"u_int8_t\000"
$LC186:
	.ascii	"pthread_condattr_t\000"
$LC104:
	.ascii	"int64_t\000"
$LC145:
	.ascii	"uid_t\000"
$LC223:
	.ascii	"ptba_magic\000"
$LC235:
	.ascii	"__float_u\000"
$LC239:
	.ascii	"long double\000"
$LC243:
	.ascii	"fdlibm_posix\000"
$LC43:
	.ascii	"long long int\000"
$LC250:
	.ascii	"complex\000"
$LC222:
	.ascii	"__pthread_barrierattr_st\000"
$LC208:
	.ascii	"pthread_rwlockattr_t\000"
$LC133:
	.ascii	"fixpt_t\000"
$LC131:
	.ascii	"daddr_t\000"
$LC255:
	.ascii	"main\000"
$LC45:
	.ascii	"long long unsigned int\000"
$LC282:
	.ascii	"GNU C 3.3.3 (NetBSD nb3 20040520) -g\000"
$LC58:
	.ascii	"__uid_t\000"
$LC85:
	.ascii	"FILE\000"
$LC37:
	.ascii	"__uint16_t\000"
$LC139:
	.ascii	"nlink_t\000"
$LC144:
	.ascii	"swblk_t\000"
$LC157:
	.ascii	"pthread_spin_t\000"
$LC143:
	.ascii	"segsz_t\000"
$LC221:
	.ascii	"pthread_barrierattr_t\000"
$LC146:
	.ascii	"dtime_t\000"
$LC49:
	.ascii	"char\000"
$LC229:
	.ascii	"ldiv_t\000"
$LC188:
	.ascii	"ptca_magic\000"
$LC92:
	.ascii	"paddr_t\000"
$LC214:
	.ascii	"ptb_magic\000"
$LC218:
	.ascii	"ptb_curcount\000"
$LC102:
	.ascii	"int32_t\000"
$LC254:
	.ascii	"string_to_complex\000"
$LC190:
	.ascii	"pthread_once_t\000"
$LC94:
	.ascii	"vaddr_t\000"
$LC224:
	.ascii	"ptba_private\000"
$LC165:
	.ascii	"pta_flags\000"
$LC281:
	.ascii	"/home/tp0\000"
$LC99:
	.ascii	"uint8_t\000"
$LC256:
	.ascii	"zstring\000"
$LC182:
	.ascii	"ptc_lock\000"
$LC87:
	.ascii	"mips_reg_t\000"
$LC245:
	.ascii	"type\000"
$LC203:
	.ascii	"ptr_rblocked\000"
$LC266:
	.ascii	"pathToExe\000"
$LC130:
	.ascii	"caddr_t\000"
$LC260:
	.ascii	"center\000"
$LC195:
	.ascii	"__pthread_spinlock_st\000"
$LC220:
	.ascii	"ptb_private\000"
$LC200:
	.ascii	"__pthread_rwlock_st\000"
$LC181:
	.ascii	"ptc_magic\000"
$LC118:
	.ascii	"uint\000"
$LC187:
	.ascii	"__pthread_condattr_st\000"
$LC249:
	.ascii	"retval\000"
$LC198:
	.ascii	"pts_flags\000"
$LC184:
	.ascii	"ptc_mutex\000"
$LC278:
	.ascii	"__pthread_st\000"
$LC72:
	.ascii	"_flags\000"
$LC199:
	.ascii	"pthread_rwlock_t\000"
$LC46:
	.ascii	"__intptr_t\000"
$LC65:
	.ascii	"_pos\000"
$LC100:
	.ascii	"int16_t\000"
$LC126:
	.ascii	"blkcnt_t\000"
$LC226:
	.ascii	"wchar_t\000"
$LC192:
	.ascii	"pto_mutex\000"
$LC242:
	.ascii	"fdlibm_xopen\000"
$LC194:
	.ascii	"pthread_spinlock_t\000"
$LC166:
	.ascii	"pta_private\000"
$LC33:
	.ascii	"signed char\000"
$LC246:
	.ascii	"name\000"
$LC168:
	.ascii	"__pthread_mutex_st\000"
$LC252:
	.ascii	"imag\000"
$LC53:
	.ascii	"__mode_t\000"
$LC96:
	.ascii	"register_t\000"
$LC173:
	.ascii	"ptm_blocked\000"
$LC283:
	.ascii	"fdversion\000"
$LC150:
	.ascii	"clockid_t\000"
$LC219:
	.ascii	"ptb_generation\000"
$LC41:
	.ascii	"unsigned int\000"
$LC122:
	.ascii	"quad_t\000"
$LC115:
	.ascii	"u_long\000"
$LC206:
	.ascii	"ptr_writer\000"
$LC276:
	.ascii	"valido\000"
$LC202:
	.ascii	"ptr_interlock\000"
$LC109:
	.ascii	"u_int64_t\000"
$LC175:
	.ascii	"pthread_mutexattr_t\000"
$LC172:
	.ascii	"ptm_owner\000"
$LC225:
	.ascii	"pthread_key_t\000"
$LC119:
	.ascii	"ulong\000"
$LC112:
	.ascii	"u_char\000"
$LC57:
	.ascii	"__socklen_t\000"
$LC148:
	.ascii	"ssize_t\000"
$LC180:
	.ascii	"__pthread_cond_st\000"
$LC42:
	.ascii	"__int64_t\000"
$LC161:
	.ascii	"pthread_t\000"
$LC253:
	.ascii	"scanresult\000"
$LC73:
	.ascii	"_file\000"
$LC110:
	.ascii	"in_addr_t\000"
$LC31:
	.ascii	"__int8_t\000"
$LC59:
	.ascii	"__fsblkcnt_t\000"
$LC134:
	.ascii	"gid_t\000"
$LC128:
	.ascii	"fsblkcnt_t\000"
$LC97:
	.ascii	"__cpu_simple_lock_t\000"
$LC108:
	.ascii	"u_int32_t\000"
$LC265:
	.ascii	"salidaConsola\000"
$LC84:
	.ascii	"_offset\000"
$LC63:
	.ascii	"__mbstate_t\000"
$LC160:
	.ascii	"ptqh_last\000"
$LC117:
	.ascii	"ushort\000"
$LC47:
	.ascii	"__uintptr_t\000"
$LC50:
	.ascii	"__gid_t\000"
$LC259:
	.ascii	"resolution\000"
$LC241:
	.ascii	"fdlibm_svid\000"
$LC39:
	.ascii	"__int32_t\000"
$LC217:
	.ascii	"ptb_initcount\000"
$LC176:
	.ascii	"__pthread_mutexattr_st\000"
$LC79:
	.ascii	"_write\000"
$LC32:
	.ascii	"__uint8_t\000"
$LC156:
	.ascii	"fds_bits\000"
$LC164:
	.ascii	"pta_magic\000"
$LC279:
	.ascii	"__pthread_spin_st\000"
$LC101:
	.ascii	"uint16_t\000"
$LC88:
	.ascii	"long int\000"
$LC162:
	.ascii	"pthread_attr_t\000"
$LC48:
	.ascii	"__caddr_t\000"
$LC111:
	.ascii	"in_port_t\000"
$LC213:
	.ascii	"__pthread_barrier_st\000"
$LC107:
	.ascii	"u_int16_t\000"
$LC237:
	.ascii	"double\000"
$LC149:
	.ascii	"time_t\000"
$LC169:
	.ascii	"ptm_magic\000"
$LC121:
	.ascii	"u_quad_t\000"
$LC262:
	.ascii	"height\000"
$LC196:
	.ascii	"pts_magic\000"
$LC51:
	.ascii	"__in_addr_t\000"
$LC142:
	.ascii	"rlim_t\000"
$LC56:
	.ascii	"__sa_family_t\000"
$LC113:
	.ascii	"u_short\000"
$LC35:
	.ascii	"__int16_t\000"
$LC183:
	.ascii	"ptc_waiters\000"
	.ident	"GCC: (GNU) 3.3.3 (NetBSD nb3 20040520)"
