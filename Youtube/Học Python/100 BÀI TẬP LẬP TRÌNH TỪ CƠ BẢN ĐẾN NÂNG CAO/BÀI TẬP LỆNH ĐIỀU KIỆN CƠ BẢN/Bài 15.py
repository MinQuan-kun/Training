#Nhập vào 3 số thực dương a, b, c. Kiểm tra xem a, b, c có cấu thành độ dài của 1 tam giác được không
a = float(input("Nhập số thực dương a: "))
b = float(input("Nhập số thực dương b: "))
c = float(input("Nhập số thực dương c: "))
if(a + b > c or a + c > b or b + c > a) :
    print("a, b, c tạo thành tam giác.")
else :
    print("a, b, c không tạo thành tam giác")
    