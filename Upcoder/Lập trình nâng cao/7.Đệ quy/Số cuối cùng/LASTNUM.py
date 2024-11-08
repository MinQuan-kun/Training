# Hàm tính tổng các chữ số của một số
def digit_sum(num):
    return sum(int(c) for c in num)

# Hàm tính "last number" (số cuối cùng)
def last_num(num):
    while len(num) > 1:
        num = str(digit_sum(num)) # Chuyển lại số thành chuỗi để tiếp tục xử lý
    return int(num[0]) # Trả về số cuối cùng

# Đọc đầu vào và xuất kết quả
n = input()
print(last_num(n))
