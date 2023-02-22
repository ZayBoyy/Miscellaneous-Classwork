.data
string1: .asciiz " divided by "
string2: .asciiz " = "
string3: .asciiz " and the remainder is: "
string4: .asciiz "The average of the three numbers is: "
newLine: .asciiz "\n"
double1: .double 3.14
double2: .double 245.33

.text
#Loading the doubles into the FPR registers
l.d $f0, double1
l.d $f2, double2

add.d $f4, $f2, $f0 #Adding the two doubles together and placing it into a new register

#Loading ints into the registers
li $t0, 10 
li $t1, 5 
li $t2, 3 

li $v0, 1 #Loading int print for syscall
move $a0, $t0 #Moving a to a0 for reading
syscall
#Print the text before b
li $v0, 4 #Loading number for syscall string
la $a0, string1 #Loading string into argument register
syscall 
li $v0, 1 #Loading int print for syscall
move $a0, $t1 #Moving b to a0 for reading
syscall

li $v0, 4 #Loading number for syscall string
la $a0, string2 #Loading string into argument register
syscall 

#Using temp variable to find a/b
div $t3, $t0, $t1 #now t3 = a/b
li $v0, 1 #Loading int print for syscall
move $a0, $t3 #Moving a/b to a0 for reading
syscall

li $v0, 4 #Loading number for syscall string
la $a0, string3 #Loading string into argument register
syscall 

#Using temp variable to find a%b
mfhi $t3 #move the remainder from hi to t3
li $v0, 1 #load the syscall number for print integer into v0
move $a0, $t3 #move (a % b) from t3 to a0
syscall # nvoke the syscall to print (a % b)

li $v0, 4# load the syscall number for print string into v0
la $a0, newLine # load the address of newline into a0
syscall # invoke the syscall to print a newline

# print a, string1, c, string2, (a / c), string3, (a % c), and newline
li $v0, 1 #load syscall for integer
move $a0, $t0 #sends a to print
syscall

li $v0, 4 # load the syscall number for print string into v0
la $a0, string1 # load the address of string1 into a0
syscall # invoke the syscall to print string1

li $v0, 1 # load the syscall number for print integer into v0
move $a0, $t2 # move c from t2 to a0
syscall # invoke the syscall to print c

li $v0, 4 # load the syscall number
la $a0, string2 #print " = "
syscall

div $t3, $t0, $t2 #divide a and c
li $v0, 1 #load syscall for integers
move $a0, $t3 #move a/c to print
syscall

li $v0, 4 #load the syscall for string
la $a0, string3 #print " and the remainder is "
syscall

li $v0, 1 #load syscall for string
mfhi $t3 #move remainder from hi to $t3
move $a0, $t3
syscall

li $v0, 4 # load the syscall for string
la $a0, newLine #print a new line
syscall

li $v0, 4 #load syscall for string
la $a0, string4 #print "The average of the three numbers is "
syscall

add $t3, $t0, $t1
add $t3, $t2, $t3
div $t3, $t3, $t2

li $v0, 1 #load syscall for integer
move $a0, $t3
syscall
