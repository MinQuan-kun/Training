import math

def scp(x):
    return int(math.sqrt(x))

n = int(input())
for i in range (1, n + 1):
    m = int(input())
    if i != n:
        print(scp(m))
    else:
        print(scp(m), end="")