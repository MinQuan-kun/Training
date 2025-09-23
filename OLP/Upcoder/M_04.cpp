#include <bits/stdc++.h>
using namespace std;

const long long MOD = 1e9 + 7;
const long long MAXN = 1e5 + 5;

long long total = 0;
long long fact[MAXN], invFact[MAXN];

long long Pow(long long a, long long b) {
    long long res = 1;
    a %= MOD;
    while (b > 0) {
        if (b & 1) 
            res = res * a % MOD;
        a = a * a % MOD;
        b >>= 1;
    }
    return res;
}

void input() {
    fact[0] = invFact[0] = 1;
    for (long long i = 1; i < MAXN; ++i) {
        fact[i] = fact[i - 1] * i % MOD;
        invFact[i] = Pow(fact[i], MOD - 2);
    }
}

long long C(long long n, long long k) {
    if (k < 0 || k > n) return 0;
    return fact[n] * invFact[k] % MOD * invFact[n - k] % MOD;
}

long long solve(vector<long long>& a, long long k) {
    sort(a.begin(), a.end());
    total = 0;
    for (long long i = 0; i < a.size(); ++i) {
        long long ways = C(i, k - 1);
        total = (total + a[i] * ways % MOD) % MOD;
    }
    return total;
}

int main() {    
    input();

    long long n, k;
    cin >> n >> k;
    vector<long long> a(n);
    for (long long i = 0; i < n; ++i)
        cin >> a[i];

    cout << solve(a, k);
    return 0;
}