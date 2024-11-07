def main():
    n, m = map(int, input().split())
    disks = list(range(1, n + 1))  # Khởi tạo mảng đĩa nhạc từ 1 đến n

    actions = list(map(int, input().split()))  # Nhập chuỗi các số đĩa cần rút
    
    for x in actions:
        # Tìm và xóa đĩa x
        disks.remove(x)
        # Đưa đĩa x lên đầu
        disks.insert(0, x)

    # In ra thứ tự các đĩa nhạc
    print(" ".join(map(str, disks)))

if __name__ == "__main__":
    main()
