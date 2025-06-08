#Bài 1 - Gán số nguyên vào thanh ghi
#Gán 10 cho thanh ghi $t1
#Gán 20 cho thanh ghi $t2

.data #Phần khai báo dữ liệu
    number .word 10
.text #Phần code chính
    lw $t1, number #Lấy giá trị của nhãn number cho $t1
    li $t2, 20 #Gán 20 cho thanh ghi $t2 ($t2 = 15)
    addi $t3, $zero, 15 #Gán 15 cho thanh ghi $t3 ($t3 = 0 + zero)