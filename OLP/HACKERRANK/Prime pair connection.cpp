#include <bits/stdc++.h>
using namespace std;

long long Mul(long long a, long long b, long long c)
{
    long long res = 0;
    a %= c;
    if (b == 0)
        return 0;
    res = Mul((a << 1) % c, (b >> 1) % c, c);
    if (b & 1)
        res = (res + a) % c;
    return res;
}

long long Pow(long long a, long long b, long long c)
{
    long long res = 1;
    a %= c;
    if (b == 0)
        return 1;
    long long aa = Mul(a, a, c);
    res = Pow(aa % c, b >> 1, c);
    if (b & 1)
        res = Mul(res, a, c);
    return res;
}

bool isPrime(long long n)
{
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

long long nextPrime(long long n)
{
    long long candidate = n + 1;
    while (!isPrime(candidate)) ++candidate;
    return candidate;
}

// Tìm số nhỏ nhất S chia hết cho p2 và tận cùng là p1
long long extendedGCD(long long a, long long b, long long &x, long long &y) {
    if (b == 0) {
        x = 1; y = 0;
        return a;
    }
    long long x1, y1;
    long long d = extendedGCD(b, a % b, x1, y1);
    x = y1;
    y = x1 - (a / b) * y1;
    return d;
}

long long modInverse(long long a, long long m) {
    long long x, y;
    long long g = extendedGCD(a, m, x, y);
    if (g != 1) return -1; // Không tồn tại
    x = (x % m + m) % m;
    return x;
}

long long findS(long long p1, long long p2) {
    long long mod = 1, tmp = p1;
    while (tmp > 0) {
        mod *= 10;
        tmp /= 10;
    }

    long long inv = modInverse(mod % p2, p2);
    if (inv == -1) return -1;

    long long k = (p2 - p1 % p2) * inv % p2;
    return p1 + k * mod;
}

int main()
{
    long long T;
    cin >> T;
    while (T--) {
        long long l, r;
        cin >> l >> r;

        long long res = 0;
        long long p1 = nextPrime(l - 1);

        while (p1 <= r) {
            long long p2 = nextPrime(p1);
            res += findS(p1, p2);
            p1 = p2;
        }

        cout << res << '\n';
    }
    return 0;
}
