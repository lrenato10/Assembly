	bne $t0, $zero, endif
	li $t1, 1
	sll $t1, $t1, 17
	li $t2, 1
	sll $t2, $t2, 28
	bgt $a1, $t2, endif 
	addi $a1,$t1, 4
	 
endif: