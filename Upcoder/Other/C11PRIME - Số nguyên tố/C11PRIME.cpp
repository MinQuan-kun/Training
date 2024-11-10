#include <bits/stdc++.h>
using namespace std;

// Hàm kiểm tra số nguyên tố
bool isPrime(long long x) {
    if (x < 2) return false;
    for (long long i = 2; i <= sqrt(x); i++) {
        if (x % i == 0) return false;
    }
    return true;
}

int main() {
    long long N;
    cin >> N;

    if (N < 2) {
        cout << 0;
        return 0;
    }

    // Duyệt qua các giá trị q từ 2 trở lên
    for (int q = 2; q <= log2(N); q++) {
        // Tính căn bậc q của N
        long long p = pow(N, 1.0 / q);
        
        // Kiểm tra cả p và p+1 vì căn bậc q có thể làm tròn xuống
        for (long long candidate : {p, p + 1}) {
            // Kiểm tra nếu candidate là số nguyên tố và candidate^q == N
            if (isPrime(candidate) && pow(candidate, q) == N) {
                cout << candidate << " " << q;
                return 0;
            }
        }
    }

    cout << 0;
    return 0;
}
