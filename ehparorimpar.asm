.data
	msg: .asciiz "Forneça um número:"
	par: .asciiz "O número é par."
	impar: .asciiz "O numero é impar"
.text
	#imprimindo msg para o user
	li $v0, 4
	la $a0, msg
	syscall
	
	#ler o numero
	li $v0, 5
	syscall # ordem de impressao
	
	li $t0, 2
	div $v0, $t0
	
	mfhi $t1 #possui o resto da divisao por 2
	
	beq $t1, $zero, imprimePar
	li $v0, 4
	la $a0, impar
	syscall
	
	#fim do programa
	li $v0, 10
	syscall
	
	imprimePar:
		li $v0, 4
		la $a0, msg
		syscall