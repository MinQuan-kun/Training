import math
x ,n = map(int, input().split())
tong = 0
for i in range(1, n + 1):
    tong = tong + math.pow(x, i)
tong = int(tong)
print(tong, end="")
