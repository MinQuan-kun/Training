from collections import Counter

def input_data():
    n = int(input())  # Đọc số lượng phần tử
    a = list(map(int, input().split()))  # Đọc các phần tử của mảng
    return a

def print_result(a):
    # Sử dụng Counter để đếm số lần xuất hiện của mỗi phần tử
    counter = Counter(a)
    # In kết quả theo thứ tự tăng dần của phần tử
    for num in sorted(counter):
        print(num, counter[num])

def main():
    a = input_data()
    print_result(a)

if __name__ == "__main__":
    main()
