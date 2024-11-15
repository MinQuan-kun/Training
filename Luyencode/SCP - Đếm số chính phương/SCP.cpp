#include <bits/stdc++.h>
using namespace std;

long long SCP(long long n) {
    return (long long)sqrt(n);
}

int main() {
    long long n, m;
    cin >> n;
    for (int i = 1; i <= n; ++i) {
        cin >> m;
        if (i != n)
            cout << SCP(m) << endl;
        else
            cout << SCP(m);
    }
    return 0;
}