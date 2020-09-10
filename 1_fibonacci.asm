.data
fibonacci: .asciiz "\n"

.text
.globl main
main:
    li  $t0, 1
    li  $t1, 1
   
    li  $v0, 1
    move $a0, $t0
syscall    

   li $v0, 4
   la $a0, fibonacci
syscall

    li  $v0, 1
    move $a0, $t1
syscall   

   li $v0, 4
   la $a0, fibonacci
syscall

li $t3, 18

loop:
beq $t3, $zero, exit
add $t2, $t0, $t1

li  $v0, 1
move $a0, $t2
syscall   

move $t0, $t1
move $t1, $t2

li $v0, 4
la $a0, fibonacci
syscall

addi $t3, $t3, -1

j loop

exit:
li   $v0, 10
syscall
