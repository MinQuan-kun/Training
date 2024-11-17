#include <bits/stdc++.h>
using namespace std;

long long UL(long long n) {
    long long res = 0;
    while(n)
    {
        res += n % 10;
        n /=10;
    }
    return res;
}

int main() {
    int n;
    cin >> n;
    while (n--) {
        long long a;
        cin >> a;
        cout << UL(a) << endl;
    }
    return 0;
}