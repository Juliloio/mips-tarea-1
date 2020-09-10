.data
factorial: .asciiz "Ingrese el numero:\n"

.text
.globl main
main:
    li $v0, 4   
    la $a0, factorial
    syscall
    li $v0, 5 
    syscall
    move $t0, $v0 
    
    addi $t1, $t0, -1  

    loop: 
    beq $t1, $zero, exit 
    mul $t0, $t0, $t1  
    addi $t1, $t1, -1   
    j  loop 

exit:
li  $v0, 1
move $a0, t0 
syscall
li  $v0, 10
syscall
