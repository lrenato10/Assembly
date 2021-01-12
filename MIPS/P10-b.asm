	.data
imm32:	.word 1234
	.text
	.globl main
main:	
	la $a0, imm32
	lw $t1, 0($a0) 
	sge $t0, $s1, $t1
	bne $t0, $zero, Label
Label: 
