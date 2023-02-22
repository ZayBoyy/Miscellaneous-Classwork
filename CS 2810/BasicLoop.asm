.data
array: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10

li $t0, array

li $t1, 0

li $t2, 10

loop:

    lw $t3, 0($t0)
    add $t1, $t1, $t3
    
    addi $t0, $t0, 4

    addi $t2, $t2, -1
    bgtz $t2, loop