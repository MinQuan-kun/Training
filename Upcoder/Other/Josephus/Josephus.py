def josephus(N, M):
    people = list(range(1, N + 1))  # Khởi tạo danh sách từ 1 đến N
    idx = 0  # Vị trí bắt đầu

    while people:
        idx = (idx + M - 1) % len(people)  # Tìm vị trí người bị loại
        print(people[idx], end=" ")  # In ra người bị loại
        people.pop(idx)  # Loại người khỏi danh sách

# Nhập N và M
N, M = map(int, input().split())
josephus(N, M)
