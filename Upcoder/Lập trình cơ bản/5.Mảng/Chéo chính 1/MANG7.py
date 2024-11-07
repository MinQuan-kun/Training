def main():
    n = int(input())
    a = [list(map(int, input().split())) for _ in range(n)]

    # In các phần tử trên đường chéo chính
    for i in range(n):
        print(a[i][i], end=" ")

if __name__ == "__main__":
    main()
