#include <mips/regdef.h>
#include <sys/syscall.h>


	.text
	.abicalls
	.align 2
	.globl 	get_shades
	.ent 	get_shades

get_shades:
	.frame 	$fp, 144, ra

	.set 	noreorder
	.cpload t9
	.set 	reorder

	subu 	sp, sp, 144 				# 32(SRA) + 80 (LTA) + 32 (ABA)

	.cprestore 132						#save gp en 132 + sp
	sw 		$fp, 136(sp)				#save $fp en 136 + sp
	sw 		ra, 140(sp)					#save ra en 140 + sp

	move 	$fp, sp 					#$fp = sp (desde aca se usa $fp)


	sw 		a0, 144($fp)				#guardo el parametro(*parms) en la ABA de la funcion que me llamo
	sw 		a1, 148($fp)				#guardo el parametro fd en el lugar del fp

#
#	Guardo la data de *params en el stack local.
#

	lw 		t0, 0(a0)
	sw 		t0, 32($fp)					#UL_re: 32 + $fp

	lw 		t0, 4(a0)
	sw 		t0, 36($fp)					#UL_im: 36 + $fp

	lw 		t0, 8(a0)
	sw 		t0, 40($fp)					#LR_re: 40 + $fp

	lw 		t0, 12(a0)
	sw 		t0, 44($fp)					#LR_im: 44 + $fp

	lw 		t0, 16(a0)
	sw 		t0, 48($fp)					#d_re: 48 + $fp

	lw 		t0, 20(a0)
	sw 		t0, 52($fp)					#d_im: 52 + $fp

	lw 		t0, 24(a0)
	sw 		t0, 56($fp)					#s_re: 56 + $fp

	lw 		t0, 28(a0)
	sw 		t0, 60($fp)					#s_im: 60 + $fp

	lw 		t0, 32(a0)
	sw 		t0, 64($fp)					#x_res: 64 + $fp

	lw 		t0, 36(a0)
	sw 		t0, 68($fp)					#y_res: 68 + $fp

	lw 		t0, 40(a0)
	sw 		t0, 72($fp)					#SHADES: 72 + $fp

	lw 		t0, 44(a0)
	sw 		t0, 76($fp)					#filepointer: 76 + $fp
	sw 		a1, 76($fp)					#fd: 76 + $fp

	sw 		s0, 116($fp)				#save s0 en 116 + $fp
	sw 		s1, 120($fp)				#save s1 en 120 + $fp
	sw 		s2, 124($fp)				#save s2 en 124 + $fp
	sw 		s3, 128($fp)				#save s3 en 128 + $fp
	sw 		s3, 80($fp)					#save s4 en 80 + $fp

########################################################

	#preparo for1
	l.s		$f0, 36($fp)				#f0: ci = UL_im
	l.s		$f2, 52($fp)				#f2: d_im
	add		s0,	zero, zero				#s0: y=0
for1:
	#preparo for2
	l.s		$f4, 32($fp)				#f4: cr = UL_re
	l.s		$f6, 48($fp)				#f6: d_re
	add		s2, zero, zero				#s2: x=0
for2:
	mov.s	$f8, $f4					#f8: zr=cr
	mov.s	$f10, $f0					#f10: zi=ci

	#preparo for3
	add		s4, zero, zero				#s4: c=0
	lw		s3, 72($fp)					#s3: shades
for3:
	mul.s 	$f12, $f8, $f8	 			#f12: zr * zr
	mul.s 	$f14, $f10, $f10 			#f14: zi * zi
	add.s 	$f16, $f12, $f14 			#f16: absz = zr * zr + zi * zi
	l.s 	$f18, CTE_FOR3 				#f18 = CTE_FOR3
	c.lt.s 	$f18, $f16 					#if CTE_FOR3 < absz => code = 1
	bc1t 	breakfor3					#si code = 1 => breakfor3

	sub.s 	$f20, $f12, $f14 			#f20: zr * zr - zi * zi
	l.s		$f22, 56($fp)				#f22: s_re
	add.s 	$f20, $f22, $f20			#f20: tr = s_re +(zr * zr - zi * zi)

	mul.s 	$f24, $f8, $f10 			#f24: zr * zi
	l.s 	$f26, CTE_MULT 				#f26: CTE_MULT
	mul.s 	$f28, $f24, $f26 			#f28: 2*(zr * zi)
	l.s		$f30, 60($fp)				#f30: s_im
	add.s 	$f28, $f14, $f16 			#f28: ti = s_im+(2*(zr * zi))

	mov.s 	$f8, $f20 					#f: zr = tr
	mov.s 	$f10, $f28 					#f: zi = ti

	#vuelta for3
	addi	s4, s4, 1					#++c
	blt		s4, s3, for3

breakfor3:
	lw		a0, 76($fp) 				#a0 = fp
	#lw		a0, 56(a0)					#fd es 14 lugares(14*4) dsps del fp
	#(SUPUESTAMENTE, sobreescrbimos el fp con el fd recibido como argumento)
	move	a1, s4						#a1 = shade a imprimir
	jal		print_number				#imprime el shade
	bltz 	v0, return_error 			#if v0 < 0 : ReturnError

	lw		a0, 76($fp) 				#a0 = fp
	#lw		a0, 56(a0)					#fd es 14 lugares(14*4) dsps del fp
	#(SUPUESTAMENTE. Sobreescrbimos el fp con el fd recibido como argumento)
	jal		print_barra_n				#imprime /n
	bltz 	v0, return_error 			#if v0 < 0 : ReturnError

	#vuelta for2
	addi 	s2, s2, 1 					#++x
	add.s 	$f4, $f4, $f6				#cr += d_re
	lw		s1, 64($fp)					#s1: x_res
	blt 	s2, s1, for2

	#vuelta for1
	addi	s0, s0, 1					#++y
	sub.s 	$f0, $f0, $f2				#ci -= d_im
	lw		s1, 68($fp)					#s1: y_res
	blt 	s0, s1, for1


	#En caso de error hay que salir del programa, ya hay en v0 codigo de error negativo asi que no hace falta establecerlo
return_error:
	#PRINT IO ERROR
	li a0, 2						#file descriptor stderror
	la a1, fraseError				#imprimo "IO ERROR"
	li a2, 9						#"IO ERROR\0" pesa 9 bytes

	syscall

return:
	#Reestablezco caller saved registers a sus valores originales

	lw 		s0, 116($fp)
	lw 		s1, 120($fp)
	lw 		s2, 124($fp)
	lw 		s3, 128($fp)
	lw 		s4, 80($fp)

	move sp, $fp
	lw ra, 140(sp)
	lw gp, 132(sp)
	lw $fp, 136(sp)

	addu sp, sp, 144

	jr ra




print_barra_n:
	.frame	$fp,  16, ra
	
	.set 	noreorder
	.cpload t9
	.set reorder

	# Salvo los registros del sra
	subu 	sp, sp, 16 				# 16(SRA)
	.cprestore 4					# guardo gp
	sw		$fp, 8(sp)				# guardo fp
	sw 		ra, 12(sp)  			# guardo ra
	move	$fp, sp
	
	sw		a0, 16($fp)

	lw		a0, 16($fp)
	la		a1, barran
	li		a2, 1
	li 		v0, SYS_write
	syscall

	bne		a3, zero, write_errorn
	bne		v0, 1, write_error_tamn

	# Restauro registros del sra
returnn:
	move	sp, $fp 			

	lw 		gp, 4(sp)
	lw 		ra, 12(sp)
	lw 		$fp, 8(sp)

	addu 	sp, sp, 16				#restauro stack pointer

	jr 		ra 						#vuelvo a la direccion de retorno

write_errorn:
	li	v0, -1
	j returnn

write_error_tamn:
	li	v0, -3
	j returnn




print_number:
	.frame	$fp,  32, ra 			# 16 SRA + 16 ABA
	
	.set 	noreorder
	.cpload t9
	.set reorder

	# Salvo los registros del sra
	subu 	sp, sp, 32				# 16(SRA)
	.cprestore 20					# guardo gp
	sw		$fp, 24(sp)				# guardo fp
	sw 		ra, 28(sp)  			# guardo ra
	move	$fp, sp
	
	sw		a0, 32($fp)				#fd en 32($fp)
	sw		a1, 36($fp)				#number en 36($fp)

	lw		a0, 36($fp)
	jal		inttostr

	lw		a0, 32($fp)
	la		a1, stringbuffer
	move	a2, v0   			#return de intostr= cant chars. VER SI HAY QUE SUMARLE UNO POR EL \0
	li 		v0, SYS_write
	syscall

	bne		a3, zero, write_errornum
	bne		v0, a2, write_error_tamnum

	# Restauro registros del sra
returnnum:
	move	sp, $fp 			

	lw 		gp, 20(sp)
	lw 		ra, 28(sp)
	lw 		$fp, 24(sp)

	addu 	sp, sp, 32			#restauro stack pointer

	jr 		ra 					#vuelvo a la direccion de retorno

write_errornum:
	li	v0, -1
	j returnnum

write_error_tamnum:
	li	v0, -4
	j returnnum




#Int to String: el int va en a0, cantidad de chars guardados en v0
inttostr:

	.frame 	$fp, 16, ra
	
	.set 	noreorder
	.cpload t9
	.set 	reorder

	subu 	sp, sp, 32 			# 16(SRA) + 16(LTA)
	
	.cprestore 20				#guardo gp en 4 + sp
	sw 		$fp, 24(sp)			#guardo $fp en 8 + sp
	sw 		ra, 28(sp)			#guardo ra en 12 + sp

	move 	$fp, sp 			#$fp = sp (desde aca se usa $fp)

	sw 		a0, 16($fp)			#int = 16 + $fp
	sw 		a1, 20($fp)			#buffer

	addi 	t0, zero, 10		#establezco divisor base 10
	move 	t1, zero			#t1=0
	la 		t2, stringbuffer	#t2=stringbuffer
	add 	t3, a0, zero		#t3=a0 (int a imprimir)

# Cuento cantidad de digitos
loop1:	
	div 	t3, t0				#t3/10
	addi 	t1, t1, 1			#aumento contador de caracteres
	bnez  	t3, loop1			#cuando la division sea 0 ya termino el loop

exitloop1:
	add 	t3, a0, zero		#t3=a0 (int a imprimir)
    move	v0, t1				#cant de chars guardados

loop2:
    div 	t3, t0
    mfhi	t4					#t4 = t3%10
    addi	t1, t1, -1
    add 	t5, t2, t1			#t5 = buffer(t2)+offset(t1)
    addi	t4, t4, 48
    sb 		t4, 0(t5)
    bgez	t1, loop2

exitloop2:
	#Restauro saved registers
	
	move 	sp, $fp 			#restauro valor de sp

	lw 		gp, 20(sp)			#restauro valor de gp
	lw 		ra, 28(sp)			#restauro valor de ra
	lw 		$fp, 24(sp)			#restauro valor de $fp

	addu 	sp, sp, 32			#subo stack pointer

	jr 		ra 					#vuelvo a la funcion caller


	.end get_shades		

.data
stringbuffer:   .space 32
CTE_FOR3: .float 4.0
CTE_MULT: .float 2
fraseError: .asciiz "I/O ERROR"
barran: .asciiz "\n"
