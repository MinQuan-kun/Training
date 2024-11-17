# Đọc và xử lý chuỗi đầu vào
input_data = input().split(' ')

# Lấy các giá trị a, b và toán tử
a = float(input_data[0])
operator = input_data[1]
b = float(input_data[2])

# Xử lý toán tử và in kết quả
if operator == "+":
    print(f"{a + b:.2f}")
elif operator == "-":
    print(f"{a - b:.2f}")
elif operator == "*":
    print(f"{a * b:.2f}")
elif operator == "/":
    if b == 0:
        print("Math Error")
    else:
        print(f"{a / b:.2f}")
