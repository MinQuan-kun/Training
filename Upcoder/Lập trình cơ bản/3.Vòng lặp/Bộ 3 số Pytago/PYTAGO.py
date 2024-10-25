import math

n = int(input())
if n <= 4:
    print(-1)
else:
    for i in range(1, n + 1):
        for k in range(1, n + 1):
            c = int(math.sqrt(i * i + k * k))
            if c <= n and c * c == i * i + k * k and k > i:
                print(i, k, c)
