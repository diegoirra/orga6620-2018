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

	lw		a0, 32($fp)
	jal 	print_barra_n

	lw		a0, 32($fp)				# Llamo a print number para x_res
	lw		a1, 36($fp)
	jal		print_number

	lw		a0, 32($fp)
	jal		print_barra_n

	lw		a0, 32($fp)
	lw		a1, 40($fp)
	jal		print_number			# Llamo a print number para y_res

	lw		a0, 32($fp)
	jal		print_barra_n

	lw		a0, 32($fp)
	lw		a1, 44($fp)
	jal		print_number			# Llamo a print number para shades

	lw		a0, 32($fp)
	jal		print_barra_n

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

	# Restauro registros del sra
	move	sp, $fp 			

	lw 		gp, 4(sp)			
	lw 		ra, 12(sp)			
	lw 		$fp, 8(sp)			

	addu 	sp, sp, 16				#restauro stack pointer

	jr 		ra 						#vuelvo a la direccion de retorno


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

	# Restauro registros del sra
	move	sp, $fp 			

	lw 		gp, 4(sp)			
	lw 		ra, 12(sp)			
	lw 		$fp, 8(sp)			

	addu 	sp, sp, 16				#restauro stack pointer

	jr 		ra 						#vuelvo a la direccion de retorno


print_number:
	.frame	$fp,  40, ra 			# 16 SRA + 8 LTA + 16 ABA
	
	.set 	noreorder
	.cpload t9
	.set reorder

	# Salvo los registros del sra
	subu 	sp, sp, 40 				# 16(SRA)
	.cprestore 28					# guardo gp
	sw		$fp, 32(sp)				# guardo fp
	sw 		ra, 36(sp)  			# guardo ra
	move	$fp, sp
	
	sw		a0, 40($fp)
	sw		a1, 44($fp)

	lw		a0, 44($fp)
	jal		inttostr
	move	t0, v0

	lw		a0, 40($fp)
	la		a1, stringbuffer
	lw		a2, t0   			#VER SI HAY QUE SUMARLE UNO POR EL BARRA 0
	li 		v0, 1
	syscall

	# Restauro registros del sra
	move	sp, $fp 			

	lw 		gp, 28(sp)			
	lw 		ra, 36(sp)			
	lw 		$fp, 32(sp)			

	addu 	sp, sp, 40			#restauro stack pointer

	jr 		ra 					#vuelvo a la direccion de retorno


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

	addi 	t0, zero, 10		#establezco divisor base 10
	move 	t1, zero			#t1=0
	la 		t2, stringbuffer		#t2=stringbufferadress
	add 	t3, a0, zero		#t3=a0 (int a imprimir)

# Cuento cantidad de digitos
loop1:	
	div 	t3, t0				#t3/10 division:t4 resto:t5
	addi 	t1, t1, 1			#aumento contador de caracteres
	bne  	t3, 0, loop1		#cuando la division sea 0 ya termino el loop
	add 	t3, a0, zero		#t3=a0 (int a imprimir)
	move 	v0, t1				#v0=cant chars guardados

    sll 	t1, t1, 2
    add 	t2, t2, t1
loop2:
    div 	t4, t3, 10
    mfhi 	t4 					
    sw 		t4, 0(t2)
    subi 	t2, t2, 4
    div 	t3, t3, 10
    beqz 	t3, fin
    b 		loop2

fin:	
	#Restauro saved registers
	
	move 	sp, $fp 			#restauro valor de sp

	lw 		gp, 20(sp)			#restauro valor de gp
	lw 		ra, 28(sp)			#restauro valor de ra
	lw 		$fp, 24(sp)			#restauro valor de $fp

	addu 	sp, sp, 32			#subo stack pointer

	jr 		ra 					#vuelvo a la funcion caller


	.end print_header

p2: .asciiz "P2"

barran: .asciiz "\n"
stringbuffer:   .space 32