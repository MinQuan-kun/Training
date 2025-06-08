#Bài 10 - Thao tác điều khiển rẽ nhánh
.data
    chuoi1: .asciiz "Lon hon"
    chuoi2: .asciiz "Be hon"
    chuoi3: .asciiz "Nhap 1 so: "
.text
main:
    li $v0, 4
    la $a0 , chuoi3
    syscall

    li $v0, 5
    syscall
    add $t0, $v0, $zero


    li $v0, 4
    la $a0, chuoi3
    syscall

    li $v0, 5
    syscall
    add $t1, $v0, $zero

    slt $t2, $t1, $t0
    beq $t2, $zero, else
    
    li $v0, 4
    la $a0, chuoi1
    syscall
    #ket thuc lun
    li $v0, 10
    syscall
    
    else:
    	li $v0, 4
    	la $a0, chuoi2
    	syscall