import math
n = int(input())
s = 0
for i in range(1, n + 1):
    s += pow(i, 3)
print(s, end="")