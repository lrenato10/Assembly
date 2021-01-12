	.data
	.text
val:	.word 0x12345678
	.globl main
main:
	la $a1, val
	lw $t1, 0($a1)
	sgt $t3, $t0, $t1
	beq $t3, $zero, endif
	move $t2, $zero
endif:
