#Bài 3 - Các sử dụng các phép cộng trừ nhân chia
.data
	NhapSoNguyen: .asciiz "Nhap so nguyen"
.text
main:
    #Gọi lệnh print lable
	li $v0, 4
	la $a0, NhapSoNguyen
	syscall
	
    #Gọi lệnh đọc số nguyên
	li $v0, 5
	syscall
	add $t1, $v0, $0