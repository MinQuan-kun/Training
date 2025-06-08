#Bài 3 - Các sử dụng các phép cộng trừ nhân chia
.data

.text
    li $t1, 32
    li $t2, 5

    #Phép +
    add $t3, $t1, $t2 #t3 = t1 + t2

    #Phép -
    sub $t4, $t1, $t2 #t4 = t1 - t2

    #Phép *
    mul $t5, $t1, $t2 #t5 = t1 *

    #Phép /
    div $t1, $t2
    mflo $t6 #$t6 = thương
    mfhi $t7 #$t7 = dư
