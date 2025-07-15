#include <bits/stdc++.h>
#include <cstdint>
using namespace std;

#define int int64_t

int32_t main()
{
    int n, m;
    int s = 0;
    int t = 1;
    cin >> n >> m;
    int x;
    while (n--)
    {
        cin >> x;
        s = (s + x) % m;
        t = (t * x) % m;
    }
    cout << t << " " << s;
    return 0;
}
