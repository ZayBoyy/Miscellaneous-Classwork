# Declare an array of integers with 10 elements
.data
array: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10

# Set the starting address of the array to a register
li $t0, array

# Set a register to hold the sum
li $t1, 0

# Set a register to hold the loop counter
li $t2, 10

loop:
    # Add the current array element to the sum
    lw $t3, 0($t0)
    add $t1, $t1, $t3
    
    # Move to the next array element
    addi $t0, $t0, 4

    # Decrement the loop counter
    addi $t2, $t2, -1

    # Check if the loop counter is greater than 0
    bgtz $t2, loop

# The sum is now in $t1
