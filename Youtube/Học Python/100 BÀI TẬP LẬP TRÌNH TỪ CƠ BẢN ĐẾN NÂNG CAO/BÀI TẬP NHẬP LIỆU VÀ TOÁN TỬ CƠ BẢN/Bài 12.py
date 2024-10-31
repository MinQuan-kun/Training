#Nhập vào 3 số a, b, c. Tính và in ra d = (a + b)^c
#Nếu d là số trong khoảng từ 100 - 200 thì in ra True, ngược lại in ra False
a = float(input("Nhập vào số a: "))
b = float(input("Nhập vào số b: "))
c = float(input("Nhập vào số c: "))
d = pow((a+b),c)
print(100 <= d <= 200)
#C2
d2 = (a+b)**c
print(100 <= d2 <= 200)

