	.data
var1:	.word 0x55555555
var2:	.word 0x12345678
	.text
	.globl main
main:	
	la $a0, var1
	la $a1, var2
	lw $t0, 0($a0)
	lw $t1, 0($a1)
	sll $t2, $t0, 4
	or $t2, $t2, $t1
	syscall