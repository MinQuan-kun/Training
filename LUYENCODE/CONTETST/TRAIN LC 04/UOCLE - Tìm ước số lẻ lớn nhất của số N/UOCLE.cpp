// 2/3 test case
#include <bits/stdc++.h>
using namespace std;

long long UL(long long n) {
    int max = 1;
    if(n >= 2 && n <= pow(10, 6))
    {
        for(int i = 1; i < n; i++)
            if(n % i == 0 && i % 2 != 0)
                max = i;
    }
    return max;
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