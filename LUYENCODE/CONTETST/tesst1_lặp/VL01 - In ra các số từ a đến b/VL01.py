import math
a, b = map(int ,input().split())
for i in range(min(a, b), max(a, b)+ 1):
    if(i != max(a, b)):
        print(i,"", end="")
    else:
        print(i, end="")