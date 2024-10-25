#include <iostream>
#include <iomanip>
using namespace std;

double tinhKetQua(int n) {
    double ketQua = 1.0; // Khởi tạo kết quả ban đầu là 1 (cho phần tử đầu tiên)

    // Tính tổng các phần tử từ 2 đến n
    for (int i = 2; i <= n; ++i) {
        ketQua += 1.0 / (i * i * i); // Cộng thêm 1/i^3 vào kết quả
    }

    return ketQua;
}

int main() {
    int n;
 
    cin >> n;

    // Tính và in kết quả với độ chính xác 3 chữ số thập phân
    cout  << fixed << setprecision(3) << tinhKetQua(n) << endl;

    return 0;
}
