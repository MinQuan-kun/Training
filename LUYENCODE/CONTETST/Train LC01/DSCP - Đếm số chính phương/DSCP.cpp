#include <bits/stdc++.h>
using namespace std;

bool SCP(long long n) {
    long long temp = sqrt(n);
    return temp * temp == n;
}

int main() {
    long long n, m;
    cin >> n >> m;

    // Tìm khoảng giá trị của căn bậc hai
    long long sqrt_n = ceil(sqrt(n)); // Làm tròn lên
    long long sqrt_m = floor(sqrt(m)); // Làm tròn xuống

    // Đếm số lượng số chính phương
    long long cnt = max(0LL, sqrt_m - sqrt_n + 1); // Đảm bảo không bị âm
    cout << cnt;

    return 0;
}
