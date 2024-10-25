n = int(input())
temp = 1
S = 1

for j in range(n + 1):
    temp *= (2.0 * (j + 1)) / (2.0 * j + 3)
    S += temp

print(round(S, 2), end="")
