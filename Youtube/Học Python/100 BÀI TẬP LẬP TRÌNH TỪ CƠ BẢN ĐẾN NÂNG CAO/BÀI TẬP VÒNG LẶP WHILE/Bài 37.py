#Nhập vào một dãy số nguyên, ngưng nhập khi người dùng nhập -1.
#Sau khi nhập xong, in số lớn nhất, số nhỏ nhất trong những số vừa nhập
a = int(input("Nhập 1 số nguyên: "))
Min = a
Max = a
while a != -1 :
    a = int(input("Nhập 1 số nguyên: "))
    if(Max < a):
        Max = a
    if(Min > a and a!= -1):
        Min = a
print("Số lớn nhất: ", Max)
print("Số nhỏ nhất: ", Min)