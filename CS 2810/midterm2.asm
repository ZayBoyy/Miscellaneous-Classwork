.data
a: .word 0

str_explain: .asciiz "I will check to see if a number is prime\n\n"
str_first: .asciiz "Enter the number: \n"

str_answer1: .asciiz "The answer is not prime "
str_answer2: .asciiz "The answer is prime "

.text
main:

#Print explanation
li $v0, 4
la $a0, str_explain
syscall

#Print request for number
li $v0, 4
la $a0, str_first
syscall

#Read the number
li $v0, 5
syscall
move $s2, $v0

#prepare loop
addi $t0, $zero, 2
addi $t1, $zero, 0
j loop

loop:
div $t2, $s2, $t0
mfhi $t3
beq $t3, $zero, not_prime
addi $t0, $t0, 1
bge  $t0, $t2, prime
j loop

not_prime:
#Print not prime message
li $v0, 4
la $a0, str_answer1
syscall
j end

prime:
#Print prime message
li $v0, 4
la $a0, str_answer2
syscall
j end

end:

#End the program
li $v0, 10
syscall

