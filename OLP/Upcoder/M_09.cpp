#include <bits/stdc++.h>
using namespace std;

const long long MOD = 1e9 + 7;

long long solve(long long x, long long y, long long a, long long b, long long c, long long d) {
    vector<long long> z = {a, b, c, d};

    for (long long i = 1; i <= x; i++) {
        vector<long long> row(4);
        for (long long j = 0; j < 4; j++) {
            if (j == 0)
                row[j] = z[j];
            else
                row[j] = (row[j - 1] + z[j]) % MOD;
        }
        z = row;
    }

    return z[y];
}

int main() {
    long long m, q;
    cin >> m >> q;
    while (q--) 
    {
        long long x, y;
        long long a, b, c, d;
        cin >> x >> y >> a >> b >> c >> d;
        cout << solve(x, y, a % MOD, b % MOD, c % MOD, d % MOD) << '\n';
    }
    return 0;
}