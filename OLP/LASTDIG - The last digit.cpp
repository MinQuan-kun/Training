#include<bits/stdc++.h>
using namespace std;
#define ll long long

long long POW(long long a, long long b, long long mod) {
    long long res = 1;
    a %= mod;
    while (b > 0) {
        if (b & 1)
            res = (res * a) % mod;
        a = (a * a) % mod;
        b >>= 1;
    }
    return res;
}

long long strMod(string s, long long m) {
    long long res = 0;
    for (auto c : s) 
        res = (res * 10 + (c - '0'));
    return res;
}

long long solve(long long a, string b) {
    long long b_mod = strMod(b, 10);
    long long res = POW(a, b_mod, 10);
    return res;
}


int solve(int a, int p, int M) {
    a %= M;
    long long res = 1;
    while (p) {
        if (p & 1) {
            res *= a;
            res %= M;
        }
        p >>= 1;
        a *= a;
        a %= M;
    }
    return res;
}

int main() {
    int t;
    cin >> t;
    while (t--) {
        ll n;
        cin >> n;
        ll a,b;
        cout << solve(a, b, 10) << endl;
    }
    return 0;
}