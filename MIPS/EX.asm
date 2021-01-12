	.data
pi: 	.double	3.141592653589793
str0:	.asciiz	"raio ? "
str1:	.asciiz	"area = "
	.text
	.globl	main
main: 	
	ble $t3, $t5, L

L: