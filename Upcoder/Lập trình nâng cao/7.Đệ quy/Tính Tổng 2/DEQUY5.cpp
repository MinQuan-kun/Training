#include<bits/stdc++.h>
using namespace std;

// Hàm tính giai thừa bằng đệ quy
long long factorial(int n) {
    if (n == 0 || n == 1)
        return 1;
    return n * factorial(n - 1);
}

// Hàm tính tổng S(n) bằng đệ quy
float S(int n, int x) {
    if (n == 0) {
        return 1 + x;
    }
    // Công thức: x^(2n+1) / (2n+1)!
    return pow(x, 2 * n + 1) / factorial(2 * n + 1) + S(n - 1, x);
}

int main() {
    int n, x;
    cin >> n >> x;

    // Tính tổng S(n) và làm tròn tới 3 chữ số thập phân
    float result = roundf(S(n, x) * 1000) / 1000;

    cout << result;

    return 0;
}
