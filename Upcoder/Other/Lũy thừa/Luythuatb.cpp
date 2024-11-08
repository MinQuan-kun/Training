#include <bits/stdc++.h>
using namespace std;

const int MOD = 1e9 + 7;

long long powerMod(long long a, long long b, int mod) {
    long long result = 1;
    a = a % mod;
    while (b > 0) {
        if (b % 2 == 1) { 
            result = (result * a) % mod;
        }
        a = (a * a) % mod;  
        b /= 2;             
    }
    return result;
}
int main() {
    long long a, b;
    cin >> a >> b;
    cout << powerMod(a, b, MOD);
    return 0;
}
