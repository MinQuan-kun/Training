#Nhập vào số nguyên dương n, tính tổng các chữ số của n
n = int(input("Nhập vào số nguyên dương n: "))
S = 0
while n != 0:
    S += n % 10
    n //= 10
print("Tổng các chữ số của n: ", S)