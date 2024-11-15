#include <iostream>
#include <string>
using namespace std;

// Hàm chuyển đổi từ hệ cơ số 2 sang cơ số 10
long long change(string& input) {
    long long decimal = 0;
    long long base = 1;

    for (int i = input.length() - 1; i >= 0; --i) {
        if (input[i] == '1') {
            decimal += base;  // Nếu là '1', cộng giá trị vào kết quả
        }
        base *= 2;  // Tăng bậc của cơ số (2^i)
    }
    return decimal;
}

int main() {
    int N;  // Số lượng test case
    cin >> N;
    
    // Duyệt qua từng test case
    for (int i = 0; i < N; ++i) {
        string input;
        cin >> input;
        
        // Chuyển đổi nhị phân sang thập phân và in kết quả
        cout << change(input) << endl;
    }
    
    return 0;
}
