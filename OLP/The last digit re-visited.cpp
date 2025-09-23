#include <bits/stdc++.h>
using namespace std;
using ll = long long;

ll POW(ll a, ll b, ll m) {
    ll r = 1; a %= m;
    while (b) {
        if (b & 1) r = r * a % m;
        a = a * a % m;
        b >>= 1;
    }
    return r;
}

ll strMod( string s, ll m) {
    ll r = 0;
    for (char c : s) r = (r * 10 + (c - '0')) % m;
    return r;
}

int main() {
    int t; cin >> t;
    while (t--) {
        string a, b; cin >> a >> b;
        int last = a.back() - '0';
        if (b == "0") cout << 1 << "\n";
        else {
            ll k = strMod(b, 4); if (k == 0) k = 4;
            cout << POW(last, k, 10) << "\n";
        }
    }
}
