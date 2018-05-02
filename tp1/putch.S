#include <mips/regdef.h>
#include <sys/syscall.h>

.text
.abicalls
.align 2
.globl	putch
.ent	putch

putch:
    .frame $fp, 16, ra
    .set noreorder
    .cpload t9
    .set reorder

    subu    sp,		sp,		16                	#save SRA
    .cprestore 4
	sw		$fp, 	8(sp)
    sw      ra,		12(sp)
    move    $fp,	sp

	sw a0, 16($fp)			#fd
	sw a1, 20($fp)			#buffer
	sw a2, 24($fp)			#bytes

	li	v0, 1 				#print int
	syscall

	# Revisamos el retorno de SYS_write: si $a3 es no-nulo, quiere
	# decir que ha ocurrido un error. En caso contrario, imitamos
	# lo hecho en SYS_read, revisando el valor de la cantidad de
	# información que ha sido enviada.
	#
	bne		a3, zero, write_error
	bne		v0, s1, write_error_tam

return:

	move sp, $fp

	lw 		gp,		4(sp)
	lw 		$fp,	8(sp)
	lw 		ra,		12(sp)
	addu    sp,    	sp,    16
    jr      ra


write_error:
	li	v0, -1
	j return

write_error_tam:
	li	v0, -2
	j return


.end putch
