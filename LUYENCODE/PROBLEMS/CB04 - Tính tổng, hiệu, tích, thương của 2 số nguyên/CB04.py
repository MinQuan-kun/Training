a ,b = map(float, input().split())
print(a+b)
print(a-b)
print(a*b)
if b == 0:
    print("ERROR", end="")
else:
    print("{:.2f}".format(a/ b), end="")