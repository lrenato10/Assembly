begin: addi $t0, $zero, 0 	#$t0=0
 addi $t1, $zero, 1		#$t1=1	
loop: slt $t2, $a0, $t1		#Se $a0<$t1 entao $t2=1, caso contrario $t2=0
 bne $t2, $zero, finish		#Se $t2 for diferente de zero (ou seja, $a<$t1), goto finish
 add $t0, $t0, $t1		#$t0=$t0+$t1
 addi $t1, $t1, 2		#$t1=$t1+2
 j loop				#recomeça o loop
finish: add $v0, $t0, $zero	#$v0=$t0

#Esse programa inicializa uma variavel que vale 1 e um somatório que vale 0 e um valor n a ser comparado,
# a cada laço do loop ele compara os valores da variavel com  o valor n, caso a variavel seja menor que n
#ele entra em um loop que soma essa variavel em um somatorio e atribui mais 2 a essa variavel, o loop só acaba 
#quando essa variavel for maior ou igual ao n, e assim o programa retorna o valor desse somatório que pode 
#ser expresso por soma=1+3+5+...+(1+2*N), em que N é um valor imediatamente menor que n e impar.
