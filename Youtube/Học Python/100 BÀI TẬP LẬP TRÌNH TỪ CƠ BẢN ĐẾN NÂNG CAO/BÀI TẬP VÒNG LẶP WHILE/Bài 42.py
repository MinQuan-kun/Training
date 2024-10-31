#Dãy số fibonacci là dãy số được định nghĩa như sau: 1, 1, 2, 3, 5, 8, 13,... với số kế tiếp sẽ bằng tổng hai số trước đó
#Nhập vào A, hãy tìm số trong dãy số fibonacci lớn nhất nhưng không vượt quá A
A = int(input("Nhập vào A: "))
S1 = 1
S2 = 1
S = S1 + S2
while(S <= A):
    S1 = S2
    S2 = S
    S = S1 + S2
print(S2)