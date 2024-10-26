#include <iostream>
#include <cmath>
#include <string>
using namespace std;

bool checkSNT(int a) {
    if (a < 2)
        return false; // Số nguyên tố phải lớn hơn 1
    for (int i = 2; i <= sqrt(a); i++)
        if (a % i == 0)
            return false; // Nếu chia hết cho i thì không phải số nguyên tố
    return true; // Nếu không chia hết cho bất kỳ số nào thì là số nguyên tố
}

int main() {
    string s;
    cin >> s; // Nhập chuỗi số
    int tong = 0; // Khởi tạo tổng
    for (char c : s) {
        int digit = c - '0'; // Chuyển ký tự thành số
        if (!checkSNT(digit)) { // Kiểm tra nếu chữ số không phải là số nguyên tố
            cout << "YESNOT";  
            return 0; // Kết thúc chương trình
        }
        tong += digit; // Cộng chữ số vào tổng
    }
    if (checkSNT(tong)) // Kiểm tra tổng có phải là số nguyên tố không
        cout << "YES";
    else
        cout << "YESNOT";
    return 0;
}
