n = int(input())
a1 = list(map(int , input().split()))
a2 = list(map(int , input().split()))
res = a1 + a2
res.sort()
print(" ".join(map(str, res)), end="")
