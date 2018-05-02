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
	sw		gp, 20(sp)				# guardo gp
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

	lw		a0, 32($fp)				# Llamo a print x_res
	lw		a1, 36($fp)
	jal		print_x_res

	lw		a0, 32($fp)
	jal		print_barra_n

	lw		a0, 32($fp)
	lw		a1, 40($fp)
	jal		print_y_res				# Llamo a print y_res

	lw		a0, 32($fp)
	jal		print_barra_n

	lw		a0, 32($fp)
	lw		a1, 44($fp)
	jal		print_shades			# Llamo a print shades

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
	sw		gp, 4(sp)				# guardo gp
	sw		$fp, 8(sp)				# guardo fp
	sw 		ra, 12(sp)  			# guardo ra
	move	$fp, sp
	
	sw		a0, 16($fp)

	lw		a0, 16($fp)
	la		a1, p2
	li		a2, 3
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

print_x_res:

print_y_res:

print_shades:

p2: .asciiz "P2"

barran: .asciiz "\n"