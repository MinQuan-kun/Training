#Giải và biện luận phương trình ax^2 + bx + c = 0
a = float(input("Nhập hệ số a: "))
b = float(input("Nhập hệ số b: "))
c = float(input("Nhập hệ số c: "))
if(a == 0):
    if(b == 0):
        print("Phương trình bậc 1!")
        if(c == 0):
            print("Phương trình có vô số nghiệm.")
        else:
            print("Phương trình vô nghiệm.")
    else:
        print("Phương trình có nghiệm x =",-c//b)
else:
    delta = pow(b, 2) - 4 * a * c
    if(delta < 0):
        print("Phương trình vô nghiêm.")
    elif(delta == 0):
        x = - b //2 * a
        print("Phương trình có 2 nghiệm kép x1 = x2 =",x)
    elif(delta > 0):
        x1 = - b + delta **(1/2) // 2 * a
        x2 = - b - delta **(1/2) // 2 * a
        print("Phương trình có 2 nghiệm phân biệt x1 =",x1,"x2 =",x2)