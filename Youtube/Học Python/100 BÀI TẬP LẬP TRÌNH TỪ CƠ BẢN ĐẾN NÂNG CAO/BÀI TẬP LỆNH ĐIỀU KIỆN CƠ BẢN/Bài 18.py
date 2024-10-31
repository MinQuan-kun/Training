#Giải và biện luận phương trình ax + b = 0
a = int(input("Nhập hệ số a: "))
b = int(input("Nhập hệ số b: "))
if(a == 0):
    if(b == 0):
        print("Phương trình có vô số nghiệm.")
    else:
        print("Phương trình vô nghiệm.")
else:
    print("Phương trình có nghiệm x =",-b//a)