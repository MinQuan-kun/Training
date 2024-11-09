n = int(input())
tong = 0
temp = 0
for i in range (1 , n + 1):
    temp = temp * 10 + 1
    tong = tong + temp
print(tong, end="")