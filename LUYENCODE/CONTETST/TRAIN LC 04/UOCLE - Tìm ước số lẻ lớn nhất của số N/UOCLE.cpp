#include <bits/stdc++.h>
using namespace std;

long long UL(long long n) {
    long long res = 1;
    for(long long i = 1; i * i <= n; i++)
    {
        if(n % i == 0)
        {
            if(i % 2 != 0 && i != n)
                res = max(res, i);
            if(i != n / i && (n / i) % 2 != 0 && (n / i) != n)
                res = max(res, n / i);
        }
    }
    return res;
}

int main() {
    ios::sync_with_stdio(false);
    cin.tie(0);
    int n;
    cin >> n;
    while (n--) {
        long long a;
        cin >> a;
        cout << UL(a) << endl;
    }
    return 0;
}