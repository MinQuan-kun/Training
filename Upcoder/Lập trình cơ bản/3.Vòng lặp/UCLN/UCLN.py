# Nhập hai số a và b
a, b = map(int, input().split())
c = 1

for i in range(1, max(a, b) + 1):
    if a % i == 0 and b % i == 0:
        c = i

print(c, end="")
