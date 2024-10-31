#Nhập vào số nguyên dương n, đếm xem n có bao nhiêu chữ số chẵn, bao nhiêu chữ số lẻ
n = int(input("Nhập vào số nguyên dương n: "))
temp = 0
Chan = 0
Le = 0
while n != 0:
    temp = n % 10
    n //= 10
    if(temp % 2 == 0):
        Chan += 1
    else:
        Le += 1
print("Có", Chan, "số chẵn trong n")
print("Có", Le, "số lẻ trong n")