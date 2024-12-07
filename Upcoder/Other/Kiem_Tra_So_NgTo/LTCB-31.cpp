#include <bits/stdc++.h>
using namespace std;

bool CheckSNT(long long n) {
    if (n < 2)
        return false;
    if (n == 2 || n == 3)
        return true;
    for (long long i = 5; i * i <= n; i += 6) {
        if (n % i == 0 || n % (i + 2) == 0)
            return false;
    }
    return true;
}

int main() {
    long long n;
    while (cin >> n) {
        if (CheckSNT(n))
            cout << "Yes" << endl;
        else
            cout << "No" << endl;
    }
    return 0;
}
