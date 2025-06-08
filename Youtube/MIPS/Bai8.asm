#BT: Viết chương trình nhập tên và tuổi sau đó xuất ra màn hình
.data
    chuoi1: .asciiz "Nhap ten: "
    chuoi2: .asciiz "Nhap tuoi: "
    ten: .asciiz
.text
main:
    li $v0, 4
    la $a0, chuoi1
    syscall

    li $v0, 8
    la $a0, ten
    li $a1, 100
    syscall
    add $t0, $a0, $zero

    li $v0, 4
    la $a0, chuoi2
    syscall

    li $v0, 5
    syscall
    add $t1 , $v0, $zero

    li $v0, 4
    add $a0, $t0, $zero
    syscall
    
    li $v0, 1
    add $a0, $t1, $zero
    syscall
