#Nhập vào số nguyên dương a, đếm số ước của a
a = int(input("Nhập số nguyên dương a: "))
count = 0
for i in range(1,a + 1):
    if(a % i == 0):
        count +=1
print("Số ước của a: ",count)