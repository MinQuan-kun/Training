#Từ bài số 15, nếu a, b, c cấu tạo thành được một tam giác, kiểm tra xem đó là tam giác gì (tam giác đều, tam giác vuông cân, tam giác vuông, tam giác cân hay tam giác thường)
a = float(input("Nhập số thực dương a: "))
b = float(input("Nhập số thực dương b: "))
c = float(input("Nhập số thực dương c: "))
if(a + b > c or a + c > b or b + c > a) :
    print("a, b, c tạo thành tam giác.")
    if(pow(a, 2) + pow(b, 2) == pow(c, 2) or pow(b, 2) + pow(c, 2) == pow(a, 2) or pow(a, 2) + pow(c, 2) == pow(c, 2)) :
        print("a, b, c tạo thành tam giác vuông")
    elif(a == b and a == c) :
        print("a, b, c tạo thành tam giác đều")
    elif(a == b or b == c or c == a) :
        print("a, b, c tạo thành tam giác cân")
else :
    print("a, b, c không tạo thành tam giác")
    