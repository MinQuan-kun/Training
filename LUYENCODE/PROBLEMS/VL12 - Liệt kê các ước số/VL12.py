n = int(input())
if n == 0:
    print("INF", end="")
else:
    res = []
    for i in range (1, abs(n) + 1):
        if n % i == 0:
            res.append(i)
    res.sort(reverse=True)
    print(" ".join(map(str, res)))
