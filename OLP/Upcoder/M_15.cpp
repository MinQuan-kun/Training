#include <bits/stdc++.h>
using namespace std;
#define ll long long

ll Mul(ll a, ll b, ll mod) {
    ll res = 0;
    a %= mod;
    while (b) {
        if (b & 1) res = (res + a) % mod;
        a = (a << 1) % mod;
        b >>= 1;
    }
    return res;
}

ll Pow(ll a, ll b, ll mod) {
    ll res = 1;
    a %= mod;
    while (b) {
        if (b & 1) res = Mul(res, a, mod);
        a = Mul(a, a, mod);
        b >>= 1;
    }
    return res;
}

bool test(ll a, ll n, ll k, ll m) {
    ll x = Pow(a, m, n);
    if (x == 1 || x == n - 1) return true;
    for (int i = 1; i < k; ++i) {
        x = Mul(x, x, n);
        if (x == n - 1) return true;
    }
    return false;
}

bool RabinMiller(ll n) {
    if (n < 2) return false;
    if (n == 2 || n == 3 || n == 5 || n == 7) return true;
    if (n % 2 == 0) return false;

    ll m = n - 1, k = 0;
    while (m % 2 == 0) {
        m /= 2;
        ++k;
    }
    vector<ll> base = {2, 3, 5, 7, 11, 13};
    for (ll a : base) {
        if (a >= n) break;
        if (!test(a, n, k, m)) return false;
    }
    return true;
}

int main() {
    int t;
    cin >> t;
    while (t--) {
        ll n;
        cin >> n;
        ++n;
        while (!RabinMiller(n)) ++n;
        cout << n << '\n';
    }
    return 0;
}