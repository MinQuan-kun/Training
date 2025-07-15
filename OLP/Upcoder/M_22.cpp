#include <bits/stdc++.h>
using namespace std;
long long MOD = 1e9 + 7;

long long UCLN(long long a, long long b) {
    if (b == 0) return a;
    return UCLN(b, a % b);
}

long long BCNN(long long a, long long b) {
    long long g = UCLN(a, b);
    a /= g;
    return (a % MOD) * (b % MOD) % MOD;
}

int main() {
    int n;
    cin >> n;

    vector<long long> fib = {1, 1};
    while (true) {
        long long next = fib[fib.size() - 1] + fib[fib.size() - 2];
        if (next > 1e18) break;
        fib.push_back(next);
    }

    long long res = 1;
    for (int i = 0; i < n; ++i) {
        long long a;
        cin >> a;
        auto it = upper_bound(fib.begin(), fib.end(), a);
        long long f = *(--it);
        res = BCNN(res, f);
    }

    for (long long f : fib) {
        if (f % res == 0) {
            cout << f;
            return 0;
        }
    }
    return 0;
}
