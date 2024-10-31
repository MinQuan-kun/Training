#Nhập vào 3 số a, b, c. Hãy sắp xếp 3 số a, b, c theo thứ tự tăng dần rồi in ra lại
import math
a = int(input("Nhập số a: "))
b = int(input("Nhập số b: "))
c = int(input("Nhập số c: "))
Max = max(a, b, c)
Min = min(a, b, c)
TB = a
if(Max > b and b > Min):
    TB = b
if(Max > c and c > Min):
    TB = c
print("Thứ tự tăng dần: ",Min,",",TB,",",Max)
print("Thứ tự giảm dần: ",Max,",",TB,",",Min)