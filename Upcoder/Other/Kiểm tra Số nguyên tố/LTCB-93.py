def check_snt(n):
    if n < 2:
        return False
    if n == 2 or n == 3:
        return True
    if n % 2 == 0 or n % 3 == 0:
        return False
    
    i = 5
    while i * i <= n:
        if n % i == 0 or n % (i + 2) == 0:
            return False
        i += 6
    return True

def main():
    while True:
        try:
            n = int(input())
            if check_snt(n):
                print("Yes")
            else:
                print("No")
        except EOFError:
            break  # Dừng lại khi không còn dữ liệu đầu vào

if __name__ == "__main__":
    main()
