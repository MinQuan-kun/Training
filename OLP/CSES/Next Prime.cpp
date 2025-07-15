#include <bits/stdc++.h>
using namespace std;
 
long long Mul(long long a, long long b, long long c)
{
    long long res = 0;
    a %= c;
    if(b == 0)
        return 0;
    res = Mul((a << 1) % c, (b >> 1) % c, c);
    if(b & 1)
        res = (res + a) % c;
    return res;
}
 
long long Pow(long long a, long long b, long long c)
{
    long long res = 1;
    a %= c;
    if(b == 0)
        return 1;
    long long aa = Mul(a, a, c);
    res = Pow(aa % c, b >> 1, c);
    if(b & 1)
        res = Mul(res, a, c);
    return res;
}
 
bool isPrime(long long n) {
    if (n < 2) return false;
    if (n < 4) return true;
    if (n % 2 == 0) return false;
 
    long long d = n - 1;
    int s = 0;
    while (d % 2 == 0) {
        d /= 2;
        ++s;
    }
 
    vector<long long> bases = {2, 3, 5, 7, 11, 13, 17, 19, 23};
 
    for (long long a : bases) {
        if (a >= n) continue;
        long long x = Pow(a, d, n);
        if (x == 1 || x == n - 1) continue;
 
        bool maybePrime = false;
        for (int r = 1; r < s; ++r) {
            x = Mul(x, x, n);
            if (x == n - 1) {
                maybePrime = true;
                break;
            }
        }
 
        if (!maybePrime) return false;
    }
 
    return true;
}
 
long long nextPrime(long long n) {
    long long candidate = n + 1;
    while (!isPrime(candidate)) ++candidate;
    return candidate;
}
int main() {
    long long n;
    cin >> n;
    while(n)
    {
        long long x;
        cin >> x;
        cout << nextPrime(x) << endl;
        n--;
    }
    return 0;
}