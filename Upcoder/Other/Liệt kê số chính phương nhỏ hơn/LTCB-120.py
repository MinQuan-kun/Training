import math

def check_scp(n):
    if n < 0:
        return False
    ck = int(math.sqrt(n))
    return ck * ck == n

n = int(input())
found = False

for i in range(1, n):
    if check_scp(i):
        print(i, end=" ")
        found = True

if not found:
    print(-1, end="")
