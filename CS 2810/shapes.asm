.data
choice: .word 0
a: .word 0
b: .word 0

str_menu: .asciiz "welcome to the shape calculator\n please choose a shape from the menu:\n1. Square \n2.Rectangle\n"
str_side: .asciiz "Enter the side\n"
str_first: .asciiz "Enter the first side\n"
str_second: .asciiz "Enter the second side\n"
str_invalid: .asciiz "invalid choice\n"
str_area: .asciiz "The area is: "
str_perimeter: .asciiz " The perimeter is: "

.text

main:

#Print the menu
li $v0, 4
la $a0, str_menu
syscall

#Read the user's choice
li $v0, 5
syscall
move $s0, $v0

#Branch to the corresponding case based on user's choice
beq $s0, 1, square
beq $s0, 2, rectangle

#Print "invalid choice" if user's choice is not 1 or 2
li $v0, 4
la $a0, str_invalid
syscall
j end

square:

#Print "Enter the side"
li $v0, 4
la $a0, str_side
syscall

#Read the side length
li $v0, 5
syscall
move $s1, $v0

#Calculate the area
mul $t0, $s1, $s1

#Print "The area is: "
li $v0, 4
la $a0, str_area
syscall

#Print the area
li $v0, 1
move $a0, $t0
syscall

#Calculate the perimeter
add $t0, $s1, $s1
add $t1, $s1, $s1
add $t0, $t0, $t1


#Print "The perimeter is: "
li $v0, 4
la $a0, str_perimeter
syscall

#Print the perimeter
li $v0, 1
move $a0, $t0
syscall

j end

rectangle:

#Print "Enter the first side"
li $v0, 4
la $a0, str_first
syscall

#Read the first side length
li $v0, 5
syscall
move $s1, $v0

#Print "Enter the second side"
li $v0, 4
la $a0, str_second
syscall

#Read the second side length
li $v0, 5
syscall
move $s2, $v0

#Calculate the area
mul $t0, $s1, $s2

#Print "The area is: "
li $v0, 4
la $a0, str_area
syscall

#Print the area
li $v0, 1
move $a0, $t0
syscall

#Calculate the perimeter
add $t0, $s1, $s1
add $t1, $s2, $s2
add $t0, $t0, $t1


#Print "The perimeter is: "
li $v0, 4
la $a0, str_perimeter
syscall

#Print the perimeter
li $v0, 1
move $a0, $t0
syscall

j end

end:

#End the program
li $v0, 10
syscall
