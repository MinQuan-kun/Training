#include <bits/stdc++.h>
using namespace std;
long long MOD = 1e9 + 7;

long long Pow(long long a, long long b, long long mod) {
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
        res = (res * 10 + (c - '0')) % m;
    return res;
}

long long solve(long long x, string y, long long mod) {
    long long res = 1;
    for (char c : y) {
        res = Pow(res, 10, mod);
        res = (res * Pow(x, c - '0', mod)) % mod;
    }
    return res;
}

int main() {
    long long n;
    cin >> n;
    while(n)
    {
        string a_str, b_str, c_str;
        cin >> a_str >> b_str >> c_str;

        long long a = strMod(a_str, MOD); 
        long long b_mod = strMod(b_str, MOD - 1); 
        long long t = solve(b_mod, c_str, MOD - 1); 
        cout << Pow(a, t, MOD) << endl;
        n--;
    }
    
    return 0;
}