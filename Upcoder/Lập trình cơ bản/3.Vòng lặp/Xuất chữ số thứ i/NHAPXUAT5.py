# Nhập vị trí cần xuất
position = int(input())
# Nhập số cần xử lý dưới dạng chuỗi
number = input()

# Kiểm tra xem vị trí có hợp lệ không
if 0 <= position < len(number):
    # Xuất ra chữ số ở vị trí position
    print(number[position], end="")
else:
    # Nếu vị trí không hợp lệ, xuất ra -1
    print(-1, end="")
