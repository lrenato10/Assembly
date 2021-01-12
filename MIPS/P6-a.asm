	.data
	.text
	.globl main
main:	
	sle $t0, $t3, $t5
	bne $t0, $zero, L
L: