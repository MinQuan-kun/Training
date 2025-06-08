#Bài 11 - Điều khiển lặp
.data
    string: .asciiz "\nXinchao"
.text
main:
    li $t0, 10
    lap:
        slt $t1, $zero, $t0
        beq $t1, $zero, end
        li $v0 , 4
        la $a0 , string
        addi $t0, $t0, -1
        syscall
    j lap

end:
    li $v0, 10
    syscall
