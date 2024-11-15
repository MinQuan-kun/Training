a ,b = map(float, input().split())
if a == 0:
    if b == 0:
        print("WOW", end = "")
    else:
        print("NO", end="")
else:
    print("{:.2f}".format(-b / a), end="")