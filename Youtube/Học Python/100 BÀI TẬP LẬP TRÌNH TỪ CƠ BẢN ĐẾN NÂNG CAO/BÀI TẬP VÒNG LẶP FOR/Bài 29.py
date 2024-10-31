#Nhập vào số nguyên dương a, in toàn bộ ước của a
a = int(input("Nhập vào số nguyên dương a: "))
for i in range(1,a + 1):
    if(a % i == 0):
        print(i)

