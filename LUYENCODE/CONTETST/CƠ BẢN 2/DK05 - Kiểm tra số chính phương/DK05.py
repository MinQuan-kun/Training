import math
n = int(input())
if n < 0:
    print("NO", end="")
else:
    temp = int(math.sqrt(n))
    if temp * temp == n:
        print("YES", end="")
    else:
        print("NO", end="")