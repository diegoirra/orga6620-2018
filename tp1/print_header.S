#include <mips/regdef.h>
#include <sys/syscall.h>
	

#ifndef BUF_SZ
#define BUF_SZ 8192
#endif


	.text
	.abicalls
	.align 	2
	.globl 	print_header
	.ent	print_header

print_header:
	
	.frame	$fp,  32, ra
	
	.set 	noreorder
	.cpload t9
	.set reorder

	# Salvo los registros del sra
	subu 	sp, sp, 32 				# 16(SRA) + 16 (ABA)
	.cprestore 20					# guardo gp
	sw		$fp, 24(sp)				# guardo fp
	sw 		ra, 28(sp)  			# guardo ra
	move	$fp, sp					

	sw		a0, 32($fp)				# fd
	sw		a1, 36($fp)				# x_res
	sw		a2, 40($fp)				# y_res
	sw		a3, 44($fp)				# shades		

	lw		a0, 32($fp)				# Cargo en a0 el fd
	jal		print_p2				# Llamo a print p2
	bltz	v0, return

	lw		a0, 32($fp)
	jal 	print_barra_n
	bltz	v0, return

	lw		a0, 32($fp)				# Llamo a print number para x_res
	lw		a1, 36($fp)
	jal		print_number
	bltz	v0, return

	lw		a0, 32($fp)
	jal		print_barra_n
	bltz	v0, return

	lw		a0, 32($fp)
	lw		a1, 40($fp)
	jal		print_number			# Llamo a print number para y_res
	bltz	v0, return

	lw		a0, 32($fp)
	jal		print_barra_n
	bltz	v0, return

	lw		a0, 32($fp)
	lw		a1, 44($fp)
	jal		print_number			# Llamo a print number para shades
	bltz	v0, return

	lw		a0, 32($fp)
	jal		print_barra_n

return:
	move	sp, $fp 			

	lw 		gp, 20(sp)			
	lw 		ra, 28(sp)			
	lw 		$fp, 24(sp)			

	addu 	sp, sp, 32				#restauro stack pointer

	jr 		ra 						#vuelvo a la direccion de retorno


print_p2:
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
	la		a1, p2
	li		a2, 2
	li 		v0, SYS_write
	syscall

	bne		a3, zero, write_errorp2
	bne		v0, 2, write_error_tamp2

returnp2:
	# Restauro registros del sra
	move	sp, $fp 			

	lw 		gp, 4(sp)			
	lw 		ra, 12(sp)			
	lw 		$fp, 8(sp)			

	addu 	sp, sp, 16				#restauro stack pointer

	jr 		ra 						#vuelvo a la direccion de retorno

write_errorp2:
	li	v0, -1
	j returnp2

write_error_tamp2:
	li	v0, -2
	j returnp2

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
	
	sw		a0, 32($fp)
	sw		a1, 36($fp)

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
    #sll 	t1, t1, 2			#t5= cant_digits * 4bytes

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


	.end print_header


	.data
	.align 2
p2: .asciiz "P2"

barran: .asciiz "\n"
stringbuffer: .space 32
