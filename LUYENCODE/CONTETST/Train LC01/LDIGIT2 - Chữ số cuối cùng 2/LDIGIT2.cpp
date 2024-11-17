#include <bits/stdc++.h>
using namespace std;

// Hàm tính a^n % mod bằng phương pháp nhân bình phương
long long modularExponentiation(long long a, long long n, long long mod) {
    long long result = 1;
    a = a % mod;

    while (n > 0) {
        if (n % 2 == 1) {
            result = (result * a) % mod;
        }
        a = (a * a) % mod; 
        n /= 2; 
    }
    return result;
}

int main() {
    long long a, n;
    cin >> a >> n;

    long long lastDigit = modularExponentiation(a, n, 10);
    cout << lastDigit << endl;

    return 0;
}
