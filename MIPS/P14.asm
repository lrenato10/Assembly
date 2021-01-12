	.data
n: 	.word 5
a:	.word 1,2,3,4,5
b:	.word 11,12,13,14,15
	.text
	.globl main
	
main:	
	la $a0, a	#armazena o ponteiro de a em $a0
	la $a1, b	#armazena o ponteiro de b em $a1
	la $a2, n 	
	lw $a2, 0($a2)	#armazena o valor de n em $a2
	move $t1, $zero	#contador i=0
for:	
	bge $t1, $a2, endfor	#teste do for
	sll $t8,$t1,2		#$t8=4*i
	add $t2, $a0, $t8	#$t2= ponteiro a[i]
	add $t3, $a1, $t8 	#$t3= ponteiro b[i]
	lw $t4, 0($t2)		#$t4=a[i]
	lw $t5, -8($t2)		#$t5=a[i-2]
	lw $t6, -4($t2)		#$t6=a[i-1]
	lw $t7, 0($t3)		#$t7=b[i]
	
	ble $t1, 2, else 	#teste do if else
	add $t4, $t5, $t6
	add $t4, $t4, $t7
	sw $t4, 0($t2)		#atualiza o valor de a[i] na memoria
	j endelse
else:			
	move $t4, $t7
	sw $t4, 0($t2)		#atualiza o valor de a[i] na memoria
endelse:	
	addi $t1, $t1, 1
endfor:	j for