#Nhập vào số nguyên dương a, kiểm tra xem a có phải là số nguyên tố hay không
a = int(input("Nhập số nguyên dương a: "))
cnt = 0
if a < 2:
    print("a không phải số nguyên tố!")
else:
    for i in range(2, a + 1):
        if(a % i == 0):
            cnt += 1
if cnt == 2:
    print(a,"không phải số nguyên tố!")
else:
    print(a,"là số nguyên tố!")