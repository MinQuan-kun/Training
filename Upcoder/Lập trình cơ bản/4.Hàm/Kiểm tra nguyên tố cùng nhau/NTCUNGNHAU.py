def UCLN(a, b):
    if b == 0:
        return a
    else:
        return UCLN(b, a % b)

a, b = map(int, input().split())
if UCLN(a, b) == 1:
    print("yes", end="")
else:
    print("no", end="")
