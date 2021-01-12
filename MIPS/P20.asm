	.data
n:	.word 5	
	.text
	.globl main
main:
	lw $a0, n
	jal sumton
	move $a0, $v0
	li $v0, 1
	syscall
	li $v0, 10
	syscall

sumton:
	subi $sp, $sp, 8 
	sw $ra, 4($sp) 
	sw $a0, 0($sp) 
	li $v0, 0
	beq $a0,$zero, return
	subi $a0, $a0, 1
	jal sumton
	lw $a0, 0($sp) 
	add $v0, $v0, $a0 
	
	return:
	lw $ra 4($sp) 
	addi $sp, $sp, 8 
	jr $ra 
	
