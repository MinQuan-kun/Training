#include <bits/stdc++.h>
using namespace std;

// Hàm so sánh 2 chuỗi để xem ghép chúng lại theo thứ tự nào cho ra số lớn hơn
bool compare(string a, string b) {
    return a + b > b + a;
}

int main() {
    int n;
    cin >> n; // Nhập số lượng phần tử
    cin.ignore();  // Loại bỏ ký tự newline sau khi nhập n

    vector<string> numbers(n);
    // Nhập các số
    for (int i = 0; i < n; i++) {
        cin >> numbers[i];
    }

    // Sắp xếp các số theo cách ghép chúng lại để tạo ra số lớn nhất
    sort(numbers.begin(), numbers.end(), compare);

    // In kết quả là số lớn nhất
    for (string num : numbers) {
        cout << num;
    }

    return 0;
}
