#Nhập vào số nguyên dương a, in ra bảng cửu chương của a
a = int(input("Nhập số nguyên dương a: "))
print("Bảng cửu chưởng",a)
for i in range(1,11):
    print(a,"x",i,"=",a*i)