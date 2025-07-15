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

int main() {
    long long n;
    cin >> n;
    while(n)
    {
        long long a, b;
        cin >> a >> b;
        cout << Pow(a, b, MOD) << endl;
        n--;
    }
    return 0;
}