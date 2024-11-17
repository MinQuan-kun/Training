#include <bits/stdc++.h>
using namespace std;

// Hàm tính giai thừa và trả về kết quả dưới dạng mảng
vector<int> Giaithua(long long n)
{
    vector<int> result(1, 1);  // Bắt đầu với mảng chứa số 1 (giai thừa của 0 hoặc 1 là 1)

    for (long long i = 2; i <= n; ++i) {
        int carry = 0;  // Biến lưu trữ phần dư (mang số) khi nhân

        for (size_t j = 0; j < result.size(); ++j) { 
            int product = result[j] * i + carry;
            result[j] = product % 10;  // Lưu lại chữ số cuối cùng
            carry = product / 10;  // Lưu lại phần dư để mang sang chữ số tiếp theo
        }

        // Nếu có mang số thì thêm các chữ số mới vào mảng
        while (carry) {
            result.push_back(carry % 10);
            carry /= 10;
        }
    }

    return result;
}

int main()
{
    int T;
    cin >> T;  // Số lượng bộ test
    while (T--) {
        long long n;
        cin >> n;
        
        // Tính giai thừa
        vector<int> result = Giaithua(n);

        // In kết quả theo thứ tự ngược lại (vì mảng lưu trữ chữ số từ cuối)
        for (int i = result.size() - 1; i >= 0; --i) {
            cout << result[i];
        }
        cout << endl;
    }
    return 0;
}
