# Hàm kiểm tra số nguyên tố
def is_prime(x):
    if x < 2:
        return False
    for i in range(2, x // 2 + 1):
        if x % i == 0:
            return False
    return True

# Nhập giá trị n
n = int(input())
if n < 2:
    print(-1)
else:
    # In ra các số nguyên tố từ 2 đến n
    for i in range(2, n + 1):
        if is_prime(i):
            print(i, end=" ")
