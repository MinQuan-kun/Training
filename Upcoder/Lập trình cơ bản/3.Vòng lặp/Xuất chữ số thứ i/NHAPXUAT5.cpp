#include <iostream>
#include <string>

using namespace std;

int main() {
    int position;
    string number;
    
    // Nhập vị trí cần xuất
    cin >> position;
    // Nhập số cần xử lý dưới dạng chuỗi
    cin >> number;

    // Kiểm tra xem vị trí có hợp lệ không
    if (position >= 0 && position < number.length()) {
        // Xuất ra chữ số ở vị trí i
        cout << number[position] << endl;
    } else {
        // Nếu vị trí không hợp lệ, xuất ra -1
        cout << -1 << endl;
    }
    return 0;
}
