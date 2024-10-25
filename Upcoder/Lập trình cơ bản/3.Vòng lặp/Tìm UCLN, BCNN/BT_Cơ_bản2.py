a, b = map(int, input().split())

# Tìm Ước số chung lớn nhất (GCD)
for i in range(a, 0, -1):
    if a % i == 0 and b % i == 0:
        print(i, end=" ")
        break

# Tìm Bội số chung nhỏ nhất (LCM)
for k in range(a, a * b + 1):
    if k % a == 0 and k % b == 0:
        print(k)
        break
