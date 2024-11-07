def main():
    n, m = map(int, input().split())

    a = [[0] * m for _ in range(n)]
    index = 1
    for i in range(n):
        for j in range(m):
            a[i][j] = index
            index += 1

    top, bottom, left, right = 0, n - 1, 0, m - 1
    result = [[0] * m for _ in range(n)]
    count = 0

    while top <= bottom and left <= right:
        # Duyệt từ trái sang phải trên hàng top
        for i in range(left, right + 1):
            result[top][i] = a[count // m][count % m]
            count += 1
        top += 1

        # Duyệt từ trên xuống dưới ở cột right
        for i in range(top, bottom + 1):
            result[i][right] = a[count // m][count % m]
            count += 1
        right -= 1

        # Duyệt từ phải sang trái trên hàng bottom
        if top <= bottom:
            for i in range(right, left - 1, -1):
                result[bottom][i] = a[count // m][count % m]
                count += 1
            bottom -= 1

        # Duyệt từ dưới lên trên ở cột left
        if left <= right:
            for i in range(bottom, top - 1, -1):
                result[i][left] = a[count // m][count % m]
                count += 1
            left += 1

    # In ma trận xoắn ốc
    for row in result:
        print(' '.join(map(str, row)))

if __name__ == "__main__":
    main()
