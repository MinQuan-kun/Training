#include <bits/stdc++.h>
using namespace std;
using ll = long long;

// Nhân không tràn: (a * b) % mod
ll mulmod(ll a, ll b, ll mod) {
    ll res = 0;
    a %= mod;
    b %= mod;
    while (b > 0) {
        if (b & 1)
            res = (res + a) % mod;
        a = (a + a) % mod;
        b >>= 1;
    }
    return res;
}

// Lũy thừa nhị phân có bảo vệ tràn
ll Pow(ll a, ll b, ll mod) {
    ll res = 1;
    a %= mod;
    while (b > 0) {
        if (b & 1)
            res = mulmod(res, a, mod);
        a = mulmod(a, a, mod);
        b >>= 1;
    }
    return res;
}

// Tính (a^b) % mod với b là chuỗi
ll modPowString(const string& b_str, ll a, ll mod) {
    ll res = 1;
    a %= mod;
    for (char ch : b_str) {
        int digit = ch - '0';
        res = Pow(res, 10, mod);              
        res = mulmod(res, Pow(a, digit, mod), mod);
    }
    return res;
}

// Tính a mod c, với a là chuỗi
ll strMod(const string& a_str, ll mod) {
    ll res = 0;
    for (char ch : a_str) {
        res = (res * 10 + (ch - '0')) % mod;
    }
    return res;
}

int main() {
    string a_str, b_str;
    ll c;
    cin >> a_str >> b_str >> c;

    ll a_mod = strMod(a_str, c);
    ll result = modPowString(b_str, a_mod, c);
    cout << result << "\n";
    return 0;
}
