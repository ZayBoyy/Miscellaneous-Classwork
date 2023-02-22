.data
a: .word 0
b: .word 0

str_explain: .asciiz "I will multiply two numbers that you enter\n\n"
str_first: .asciiz "Enter the first number: \n"
str_second: .asciiz "Enter the second number: \n"
str_answer: .asciiz "The answer is "

.text
main:

#Print the Explanation
li $v0, 4
la $a0, str_explain
syscall

#Print the request for first value
li $v0, 4
la $a0, str_first
syscall

#Read the value
li $v0, 7 # read float/double
syscall
mov.d $f2, $f0 # move input to $f2

#Print the request for second value
li $v0, 4
la $a0, str_second
syscall

#Read the value
li $v0, 7 # read float/double
syscall
mov.d $f4, $f0 # move input to $f4

#Multiply the values
mul.d $f12, $f4, $f2 # store the product in $f12

#Print Answer text
li $v0, 4
la $a0, str_answer
syscall

#Print answer
li $v0, 3 # print double
mov.d $f12, $f12 # move $f12 to the correct register
syscall

#End the program
li $v0, 10
syscall
