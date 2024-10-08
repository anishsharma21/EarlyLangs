.data

array: .word 5, 2, 5, 3, 1, 4
array_str: .asciiz "Array: "
newline: .asciiz "\n"
sep: .asciiz ", "

# This is a simple and arbitrary program that swaps the first and last values in an array
# I am simply following a set of beginner exercises in MIPS and this happens to be the
# next one. I also added a procedure for printing the array so we have a before and after

.text

main:
    la $a0, array_str
    li $v0, 4
    syscall

    # pre-swap print
    la $a0, array
    lw $a1, ($a0)               # length of array
    addi $a0, 4
    li $a2, 0                   # cur idx
    jal print_arr

    # swap
    la $a0, array
    lw $a1, ($a0)
    addi $a0, 4
    jal swap

    la $a0, array_str
    li $v0, 4
    syscall

    # post-swap print
    la $a0, array
    lw $a1, ($a0)
    addi $a0, 4
    li $a2, 0
    jal print_arr

    j end

swap:
    move $t0, $a0
    lw $t1, ($a0)
    sll $a1, $a1, 2
    addi $a1, -4
    add $a0, $a0, $a1
    lw $t2, ($a0)
    sw $t2, ($t0)
    sw $t1, ($a0)
    jr $ra

print_arr:
    move $t0, $a0
    lw $a0, ($a0)
    li $v0, 1
    syscall

    move $a0, $t0
    addi $a0, 4
    addi $a2, 1

    beq $a2, $a1, jump_main

    move $t0, $a0
    la $a0, sep
    li $v0, 4
    syscall
    move $a0, $t0

    j print_arr

jump_main:
    la $a0, newline
    li $v0, 4
    syscall

    jr $ra

end:
    li $v0, 10
    syscall
