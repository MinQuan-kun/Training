# Hàm chuyển đổi từ hệ cơ số 2 sang cơ số 10
def change(input):
    decimal_value = 0
    base_value = 1

    # Duyệt ngược qua từng ký tự trong chuỗi nhị phân
    for i in range(len(input) - 1, -1, -1):
        if input[i] == '1':
            decimal_value += base_value  # Nếu là '1', cộng vào kết quả
        base_value *= 2  # Tăng bậc của cơ số (2^i)

    return decimal_value

# Nhập số lượng test case
N = int(input())

# Duyệt qua từng test case
for _ in range(N):
    input_str = input().strip()  # Đọc chuỗi nhị phân
    print(change(input_str))  # Chuyển đổi nhị phân sang thập phân và in kết quả
