#Bài 2- Gán chuỗi vào thanh ghi
.data
    string: .asciiz "Xin chao"
.text
    la $t1, string
    syscall