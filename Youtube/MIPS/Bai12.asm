#Bài 12 - Hàm thủ tục
.data
    chuoi: .asciiz"\nXinchao"
.text
main:
    jal in_ra_manhinh

    li $v0, 10
    syscall

in_ra_manhinh:
    li $v0, 4
    la $a0, chuoi
    syscall
    jr $ra