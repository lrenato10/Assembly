	.data
a1:	.word 0, 0, 0, 0, 0, 0
a0:  	.word 3, 2, 8, 7, 5, 0
        .text
        .globl main

main:   
	la      $a1,a1 
	la      $a0,a0	 	
	move 	$v0, $zero
	
loop:   

	lw      $v1, 0($a0)     
	addiu   $v0, $v0, 1     
	sw      $v1, 0($a1)     
	addiu   $a0, $a0, 4     
	addiu   $a1, $a1, 4     
	bne     $v1, $zero, loop