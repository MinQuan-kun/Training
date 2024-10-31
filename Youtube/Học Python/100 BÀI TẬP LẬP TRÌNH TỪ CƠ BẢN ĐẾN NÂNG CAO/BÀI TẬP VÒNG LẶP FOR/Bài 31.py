#Nhập vào số nguyên dương a và b, in toàn bộ ước chung của a và b
a = int(input("Nhập số nguyên dương a: "))
b = int(input("Nhập số nguyên dương b: "))
print("Ước chung của ",a,"và",b,":")
Max = max(a,b)
for i in range(1, Max+ 1):
    if(a % i == 0 and b % i == 0):
        print(i)