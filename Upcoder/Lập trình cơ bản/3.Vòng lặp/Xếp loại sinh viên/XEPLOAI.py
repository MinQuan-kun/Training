s = 0.0
dem = 0
while True:
    x = float(input())
    if x == -1:
        break
    s += x
    dem += 1

DTB = s / dem
if DTB < 4:
    print("F")
elif 4 <= DTB < 5.5:
    print("D")
elif 5.5 <= DTB < 7.0:
    print("C")
elif 7.0 <= DTB < 8.5:
    print("B")
else:  # 8.5 <= DTB
    print("A")

