#Code này chưa được chấm trên upcoder

def xuat_da_thuc(a, n, k):
    da_thuc = []
    for i in range(k):
        if a[i] != 0:  # Không xuất hằng số 0
            if n[i] == 0:
                da_thuc.append(f"{a[i]}")
            elif n[i] == 1:
                if a[i] == 1:
                    da_thuc.append("x")
                else:
                    da_thuc.append(f"{a[i]}x")
            else:
                if a[i] == 1:
                    da_thuc.append(f"x^{n[i]}")
                else:
                    da_thuc.append(f"{a[i]}x^{n[i]}")
    return " + ".join(da_thuc)

def tinh_gia_tri_da_thuc(a, n, k, x):
    S = 0
    for i in range(k):
        S += a[i] * (x ** n[i])
    return S

def dao_ham_da_thuc(a, n, k):
    da_ham = []
    for i in range(k):
        if n[i] > 0 and a[i] != 0:  # Chỉ tính đạo hàm nếu bậc lớn hơn 0
            he_so_dao_ham = a[i] * n[i]
            bac_dao_ham = n[i] - 1

            if bac_dao_ham == 0:
                da_ham.append(f"{he_so_dao_ham}")
            elif bac_dao_ham == 1:
                da_ham.append(f"{he_so_dao_ham}x")
            else:
                da_ham.append(f"{he_so_dao_ham}x^{bac_dao_ham}")

    if not da_ham:  # Nếu không có đơn thức nào
        return "0"
    return " + ".join(da_ham)

def main():
    k = int(input())
    a = list(map(float, input().split()))
    n = list(map(int, input().split()))
    x = float(input())

    da_thuc = xuat_da_thuc(a, n, k)
    gia_tri = tinh_gia_tri_da_thuc(a, n, k, x)
    da_ham = dao_ham_da_thuc(a, n, k)

    print(da_thuc)
    print(gia_tri)
    print(da_ham)

if __name__ == "__main__":
    main()
