#Bài 6 - In số nguyên ra màn hình
#Gán giá trị muốn in ra màn hình vào thanh ghi a0
#Gán giá trị 1 vào thanh ghi v0
.data
    Nhapso: .asciiz"Nhapso: "
    Ketqua: .asciiz"Ketqua: "
.text
main:
    li $v0, 4
    la $a0, Nhapso
    syscall

    li $v0, 5
    syscall
    add $t0, $v0, $zero

    li $v0, 4
    la $a0, Ketqua
    syscall

    li $v0, 1
    add $a0, $t0, $zero
    syscall
