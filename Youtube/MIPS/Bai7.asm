#Bài 7 - In chuỗi
.data
    chuoi: .asciiz "Xin chao \n"
.text
main:
    li $v0, 4
    la $a0, chuoi
    syscall

    
