#Nhập vào số nguyên dương a và b, in toàn bộ ước chung lớn nhất của a và b
a = int(input("Nhập số nguyên dương a: "))
b = int(input("Nhập số nguyên dương b: "))
Max = max(a, b)
UCLN = 1
for i in range(1, Max + 1):
    if(a % i == 0 and b % i == 0):
        UCLN = i
print("Ước chung lớn nhất của a và b là: ", UCLN)
