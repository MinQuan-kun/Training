#include <bits/stdc++.h>
using namespace std;

long long UCLN(long long a, long long b) {
    if (b == 0) return a;
    return UCLN(b, a % b);
}

int main() {

    long long t;
    cin >> t;
    while (t--) {
        long long r;
        cin >> r;
        vector<long long> a(r);
        for (int i = 0; i < r; i++)
            cin >> a[i];

        long long res = a[0];
        for (int i = 1; i < r; i++) {
            res = UCLN(res, a[i]);
        }

        if (res == 1)
            cout << "YES\n";
        else
            cout << "NO\n";
    }
}
