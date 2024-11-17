#include <bits/stdc++.h>
using namespace std;

// Hàm phân tích thừa số nguyên tố
void primeFactorization(long long n) {
    vector<pair<long long, long long>> factors; // Lưu thừa số nguyên tố và số mũ

    // Xử lý các thừa số nguyên tố nhỏ hơn hoặc bằng sqrt(n)
    for (long long i = 2; i * i <= n; ++i) {
        if (n % i == 0) {
            long long count = 0;
            while (n % i == 0) {
                n /= i;
                ++count;
            }
            factors.push_back({i, count}); // Lưu (thừa số, số mũ)
        }
    }

    // Nếu còn lại một số nguyên tố lớn hơn sqrt(n)
    if (n > 1) {
        factors.push_back({n, 1});
    }
    long long cnt = 0;
    // In kết quả
    for (const auto& factor : factors) 
        cnt++;
    cout << cnt << endl;
    for (const auto& factor : factors) {
        cout << factor.first << " " << factor.second << endl;
    }
}

int main() {
    long long n;
    cin >> n;
    n = abs(n); // Chỉ làm việc với giá trị dương
    primeFactorization(n);
    return 0;
}