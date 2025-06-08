#Bài 5 - Nhập chuỗi
.data
    chuoi: .asciiz
.text
main:
    li $v0, 8
    la $a0,  chuoi
    li $a1, 100  #độ dài chuỗi là 99
    syscall
