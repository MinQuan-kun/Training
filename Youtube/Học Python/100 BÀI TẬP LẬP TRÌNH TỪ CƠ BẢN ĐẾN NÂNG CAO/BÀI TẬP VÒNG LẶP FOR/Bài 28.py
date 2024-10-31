#Nhập vào n Tính S = 1 + 2 + 3 + 4 + … + n
n = int(input("Nhập só n: "))
tong = 0
for i in range(1,n + 1):
    tong +=i
print("S =", tong)