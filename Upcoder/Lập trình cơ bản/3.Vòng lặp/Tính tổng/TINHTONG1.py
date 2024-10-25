def tinh_ket_qua(n):
    # Sử dụng sum và generator expression để tính tổng từ 2 đến n
    return 1.0 + sum(1.0 / (i ** 3) for i in range(2, n + 1))

n = int(input())

# Tính và in kết quả với độ chính xác 3 chữ số thập phân
result = tinh_ket_qua(n)
print("{:.3f}".format(result), end="")
