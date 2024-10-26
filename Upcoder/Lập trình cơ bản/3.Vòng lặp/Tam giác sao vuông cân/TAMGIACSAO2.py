# Nhập số n
n = int(input())
k = n

for i in range(1, n + 1):
    k -= i
    if k <= 0:
        break

if k == 0:
    print("YES", end="")
else:
    print("NO", end= "")
