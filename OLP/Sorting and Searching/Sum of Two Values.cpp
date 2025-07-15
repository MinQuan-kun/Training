#include <bits/stdc++.h>
using namespace std;

const int MAXN = 1e6 + 5;

int main()
{
    int n;
    long long s;
    cin >> n >> s;

    long long a[MAXN];
    map<long long, int> seen;

    for (int i = 0; i < n; i++)
        cin >> a[i];

    for (int i = 0; i < n; i++)
    {
        long long need = s - a[i];

        if (seen.count(need))
        {
            cout << seen[need] << " " << i + 1;
            return 0;
        }

        seen[a[i]] = i + 1;
    }

    cout << "IMPOSSIBLE";
    return 0;
}
