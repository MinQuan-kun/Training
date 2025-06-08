#Bài 9 - Các thao tác so sánh >, < , >=, <=
.data
.text
    li $s1, 10
    li $s2, 20

    seq $t1, $s1, $s2 # ($s1 = $s2) đúng => $t1 = 1, sai $t1 = 0
    slt $t2, $s1, $s2 # ($s1 < $s2) đúng => $t2 = 1, sai $t2 = 0
    sle $t3, $s1, $s2 # ($s1 <= $s2) đúng => $t3 = 1, sai $t3 = 0
    sgt $t4, $s1, $s2 # ($s1 > $s2) đúng => $t4 = 1, sai $t4 = 0
    sge $t5, $s1, $s2 # ($s1 >= $s2) đúng => $t5 = 1, sai $t5 = 0
    
