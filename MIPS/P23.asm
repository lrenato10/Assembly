	.data
string:	.asciiz "12345"
reposta: .asciiz "O numero de bytes é:"
	.text
	.globl main
	
main: 	
	la $a0, string
	jal string_lenght
	move $a1, $v0 
	li $v0, 4
	la $a0, reposta
	syscall
	li $v0, 1
	move $a0, $a1
	syscall
	j fim

string_lenght:
	move $a2, $a0		#char *s2 = s
	lbu $t2, 0($a2)
while:	beq $t2, $zero, return	#while(*s2++);	
	addi $a2, $a2, 1 
	lbu $t2, 0($a2)
	j while
	
return:	sub $v0, $a2, $a0 	#return s2 - s
	jr $ra
fim:				#finaliza o programa
	li $v0, 10
	syscall

	