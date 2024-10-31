#Nhập n
#Cho S(k) = 1 + 2 + 3 + … + k
#Tìm k sao cho S(k) lớn nhất nhưng nhỏ hơn n
n = int(input("Nhập vào n: "))
S = 0
k = 1
while S < n:
    S += k
    k += 1
print(k - 2)