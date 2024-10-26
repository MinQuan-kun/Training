import math

def check_snt(a):
    if a < 2:
        return False # Số nguyên tố phải lớn hơn 1
    for i in range(2, int(math.sqrt(a)) + 1):
        if a % i == 0:
            return False # Nếu chia hết cho i thì không phải số nguyên tố
    return True # Nếu không chia hết cho bất kỳ số nào thì là số nguyên tố

s = input() # Nhập chuỗi số
tong = 0 # Khởi tạo tổng
for c in s:
    digit = int(c) # Chuyển ký tự thành số
    if not check_snt(digit): # Kiểm tra nếu chữ số không phải là số nguyên tố
        print("YESNOT")
        break # Kết thúc vòng lặp
    tong += digit # Cộng chữ số vào tổng
else:
    # Kiểm tra tổng có phải là số nguyên tố không
    if check_snt(tong):
        print("YES")
    else:
        print("YESNOT")
