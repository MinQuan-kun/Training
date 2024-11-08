#include <bits/stdc++.h>
using namespace std;

// Hàm tính tổng các chữ số của một số
int digitSum(string num) {
    int sum = 0;
    for (char c : num) {
        sum += c - '0'; // Chuyển ký tự thành số nguyên
    }
    return sum;
}

// Hàm tính "last number" (số cuối cùng) theo phương pháp số học
int LastNum(string num) {
    while (num.length() > 1) {
        int sum = digitSum(num);
        num = to_string(sum); // Chuyển lại số thành chuỗi để tiếp tục xử lý
    }
    return num[0] - '0'; // Trả về số cuối cùng
}

int main() {
    string n;
    cin >> n;
    cout << LastNum(n) << endl;
    return 0;
}
