n = int(input())
if 0 < n < 10000:
    if (n % 4 == 0 or n % 400 == 0) and n % 100 != 0:
        print("YES", end="")
    else:
        print("NO", end="")
print("INVALID", end="")