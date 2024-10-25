s = 0
while True:
    x = int(input())
    s += x
    if x == 0:
        break

if s % 10 == 0:
    print("DEP")
elif s % 10 == 5:
    print("TRUNGBINH")
else:
    print("XAU")