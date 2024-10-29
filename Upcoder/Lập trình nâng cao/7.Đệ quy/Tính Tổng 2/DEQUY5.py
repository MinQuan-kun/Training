#code này chỉ đc 7.14
import math

# Hàm tính giai thừa bằng đệ quy
def factorial(n):
    if n == 0 or n == 1:
        return 1
    return n * factorial(n - 1)

# Hàm tính tổng S(n) bằng đệ quy
def S(n, x):
    if n == 0:
        return 1 + x
    # Công thức: x^(2n+1) / (2n+1)!
    return (x ** (2 * n + 1)) / factorial(2 * n + 1) + S(n - 1, x)

# Đọc input
n, x = map(int, input().split())

# Tính tổng S(n) và làm tròn tới 3 chữ số thập phân
result = round(S(n, x), 3)

# Xuất kết quả
print(result)
