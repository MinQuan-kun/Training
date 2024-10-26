def ucln(a, b):
    if b == 0:
        return a
    return ucln(b, a % b)

# Nhập số a và b
a, b = map(int, input().split())

print(ucln(a, b), end="")
