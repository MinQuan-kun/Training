n = int(input())
if n <= 0:
    print("-1", end="")
else:
    tong = 0
    for i in range(1, n + 1):
        tong += i
    print(tong, end="")