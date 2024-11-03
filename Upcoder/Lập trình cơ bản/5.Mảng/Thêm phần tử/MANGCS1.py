def main():
    # Nhập x và k
    x, k = map(int, input().split())
    
    # Nhập mảng a
    a = list(map(int, input().split()))
    n = len(a)
    
    # Xuất mảng với k được chèn vào vị trí x
    for i in range(n + 1):  # Tăng n lên 1 để xử lý trường hợp x == n
        if i == x:
            print(k, end=" ")
        if i < n:
            print(a[i], end=" ")
if __name__ == "__main__":
    main()
