.data
multiplo: .asciiz "\n"

.text
.globl main
main:
  li $t0, 1
  li $t1, 101

loop:
beq   $t0, $t1, exit

rem   $t2, $t0, 3
beq   $t2, $zero, print
j endprint

rem   $t2, $t0, 5
beq   $t2, $zero, print
j endprint


print:
li   $v0, 1
move $a0, $t0
syscall

li $v0, 4
lw $a0, multiplo
syscall


endprint:
addi $t0, $t0, 1
j loop

exit:
li $v0, 10
syscall
