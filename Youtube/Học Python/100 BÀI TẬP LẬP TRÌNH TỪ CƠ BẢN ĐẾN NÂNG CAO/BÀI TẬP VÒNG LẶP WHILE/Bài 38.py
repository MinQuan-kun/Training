#Nhập vào số nguyên dương n, đếm xem n có bao nhiêu chữ số
#Cách 1
n = int(input("Nhập vào số nguyên dương n: "))
n = str(n)
print(len(n))

#Cách 2
n = int(input("Nhập vào số nguyên dương n: "))
count = 1
while n != 0:
    n //= 10
    count += 1
print(count - 1)