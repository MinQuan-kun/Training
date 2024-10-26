def ktsnt(n):
    if n < 2:
        return False # Các số nhỏ hơn 2 không phải là số nguyên tố
    for i in range(2, n):
        if n % i == 0: # Kiểm tra xem n có chia hết cho i không
            return False # Nếu có, n không phải là số nguyên tố
    return True # Nếu không, n là số nguyên tố

while True:
    try:
        n = int(input()) # Nhập vào số nguyên n
        snt = 0 # Khởi tạo tổng các chữ số nguyên tố
        while n != 0: # Khi n khác 0
            if ktsnt(n % 10): # Kiểm tra chữ số cuối cùng
                snt += n % 10 # Nếu là số nguyên tố, cộng vào tổng
            n //= 10 # Bỏ chữ số cuối cùng
        print(snt) # In ra tổng các chữ số nguyên tố
    except EOFError:
        break
