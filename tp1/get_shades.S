#include <mips/regdef.h>
#include <sys/syscall.h>

#ifndef BUF_SZ
#define BUF_SZ 8192
#endif

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

	subu sp, sp, 144 				# 32(SRA) + 80 (LTA) + 32 (ABA)

	.cprestore 132					#guardo gp en 132 + sp
	sw 		$fp, 136(sp)			#guardo $fp en 136 + sp
	sw 		ra, 140(sp)				#guardo ra en 140 + sp

	move 	$fp, sp 				#$fp = sp (desde aca se usa $fp)

	sw 		a0, 144($fp)			#guardo el parametro(*parms) en la ABA de la funcion que me llamo

#
#	Guardo la data de *params en el stack local.
#

	lw 		t0, 0(a0)
	sw 		t0, 32($fp)				#guardo UL_Re en 32 + $fp

	lw 		t0, 4(a0)
	sw 		t0, 36($fp)				#guardo UL_Im en 36 + $fp

	lw 		t0, 8(a0)
	sw 		t0, 40($fp)				#guardo LR_Re en 40 + $fp

	lw 		t0, 12(a0)
	sw 		t0, 44($fp)				#guardo LR_Im en 44 + $fp

	lw 		t0, 16(a0)
	sw 		t0, 48($fp)				#guardo D_Re en 48 + $fp

	lw 		t0, 20(a0)
	sw 		t0, 52($fp)				#guardo D_Im en 52 + $fp

	lw 		t0, 24(a0)
	sw 		t0, 56($fp)				#guardo CP_Re en 56 + $fp

	lw 		t0, 28(a0)
	sw 		t0, 60($fp)				#guardo CP_Im en 60 + $fp

	lw 		t0, 32(a0)
	sw 		t0, 64($fp)				#guardo X_RES en 64 + $fp

	lw 		t0, 36(a0)
	sw 		t0, 68($fp)				#guardo Y_RES en 68 + $fp

	lw 		t0, 40(a0)
	sw 		t0, 72($fp)				#guardo SHADES en 72 + $fp

	lw 		t0, 44(a0)
	sw 		t0, 76($fp)				#guardo FILEDESCRIPTOR en 76 + $fp

	sw 		s1, 116($fp)			#guardo s1 en 116 + $fp
	sw 		s2, 120($fp)			#guardo s1 en 120 + $fp
	sw 		s3, 124($fp)			#guardo s1 en 124 + $fp

#
#	Guardo los registros flotantes y caller saved registers que voy a usar para luego reestablecerlos.
#

	l.s 	$f6, 56($fp) 			#f6: cpr = parms->cp_re
	l.s 	$f7, 60($fp) 			#f7: cpi = parms->cp_im

	addu	s1, zero, zero 			#s1: y = 0
	l.s 	$f0, 36($fp) 			#f0: ci = parms->UL_Im
	lw 		t1, 68($fp) 			#t1: parms-> y_res

	lw 		a0, 76($fp)
	lw		a1, 68($fp)
	jal		print_number

	lw		a0, 76($fp) 			#a0 = fd
	jal		print_barra_n			#imprime /n	

for1:		
	b 		return
	bge 	s1, t1, return 			#si y >= y_res => return

	#Inicializaciones para el segundo for

	addu 	s2, zero, zero 			#s2: x = 0
	l.s 	$f1, 32($fp)			#f1: cr = parms->UL_Re
	lw 		t2, 64($fp)				#t2: parms-> x_res

for2:
	bge 	s2, t2, next_for1 		#si x >= x_res => next_for1
	mov.s 	$f2, $f1 				#f2: zr = cr
	mov.s 	$f3, $f0 				#f3: zi = ci

	#Inicializaciones para el tercer for

	addu 	s3, zero, zero 			#s3: c = 0
	lw 		t3, 72($fp) 			#t3: parms->shades

for3:
	bge 	s3, t3, next_for2 		#si c >= shades => next_for2
	mul.s 	$f4, $f2, $f2 			#f4: zr * zr
	mul.s 	$f5, $f3, $f3 			#f5: zi * zi
	add.s 	$f4, $f4, $f5 			#f4: absz = zr * zr + zi * zi
	l.s 	$f5, CTE_FOR3 			#f5 = CTE_FOR3
	c.lt.s 	$f5, $f4  				#si CTE_FOR3 < absz => code = 1
	bc1t 	next_for2 				#si code = 1 => next_for2
	mul.s 	$f4, $f2, $f2 			#f4: zr * zr
	mul.s 	$f5, $f3, $f3 			#f5: zi * zi
	sub.s 	$f4, $f4, $f5 			#f4: zr * zr - zi * zi
	add.s 	$f4, $f4, $f6 			#f4: sr = zr * zr - zi * zi + cpr
	mul.s 	$f5, $f2, $f3 			#f5: zr * zi
	l.s 	$f8, CTE_MULT 			#f8: CTE_MULT
	mul.s 	$f5, $f5, $f8 			#f5: 2 * zr * zi
	add.s 	$f5, $f5, $f7 			#f5: si = 2 * zr * zi + cpi
	mov.s 	$f2, $f4 				#f2: zr = sr
	mov.s 	$f3, $f5 				#f3: zi = si
	addi 	s3, s3, 1 				#s3: ++c
	b 		for3

next_for2:
### ESTOS SON LOS REGISTROS QUE USA EL CICLO
	sw t1, 	92($fp) 				###tienen lugares especiales en el stack si necesitas guardar otro hay que hacer mas lugar y cambiar el excel y los defines
	sw t2, 	96($fp)
	sw t3, 	100($fp)

	lw		a0, 76($fp) 			#a0 = fd
	move	a1, s3 					#a1 = shade a imprimir
	jal		print_number			#imprime el shade

	lw		a0, 76($fp) 			#a0 = fd
	jal		print_barra_n			#imprime /n

	lw t1, 92($fp)
	lw t2, 96($fp)
	lw t3, 100($fp)

	bltz v0, return_error 			#Si v0 < 0 -> Return Error


	addi s2, s2, 1 					#s2: ++x
	l.s $f8, 48($fp)				#f8: parms->d_re
	add.s $f1, $f1, $f8 			#f1: cr += parms->d_re
	b for2 							#vuelve a for2

next_for1:
	addi 	s1, s1, 1 				#s1: ++y
	l.s 	$f8, 52($fp) 			#f8: parms->d_im
	sub.s 	$f0, $f0, $f8 			#f0: ci -= parms->d_im
	b 		for1 					#vuelve a for1

	#En caso de error hay que salir del programa, ya hay en v0 codigo de error negativo asi que no hace falta establecerlo
return_error:
	#PRINT IO ERROR
	li a0, 2						#file descriptor stderror
	la a1, fraseError				#imprimo "IO ERROR"
	li a2, 9						#"IO ERROR\0" pesa 9 bytes

	syscall


return:
	#Reestablezco caller saved registers a sus valores originales

	lw s1, 116($fp)
	lw s2, 120($fp)
	lw s3, 124($fp)

	move sp, $fp 					#restauro valor de sp
	lw ra, 140(sp)					#restauro valor de ra
	lw gp, 132(sp)					#restauro valor de gp
	lw $fp, 136(sp)					#restauro valor de $fp

	addu sp, sp, 144				#subo stack pointer

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