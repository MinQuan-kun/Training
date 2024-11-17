import math
T = int(input())
numbers = list(map(int, input().split()))
for n in numbers:
    print(math.factorial(n))