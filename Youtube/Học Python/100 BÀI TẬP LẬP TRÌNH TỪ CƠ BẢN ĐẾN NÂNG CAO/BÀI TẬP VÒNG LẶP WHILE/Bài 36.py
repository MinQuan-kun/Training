#Nhập vào A, tìm n nhỏ nhất sao cho
#1 + 1/2 + 1/3 + 1/4 + ... + 1/n > A
A = int(input("Nhập vào A: "))
n = 1
S = 0
while(S < A):
    S += 1 / n
    n += 1
print(n - 1)