#include <bits/stdc++.h>
using namespace std;

void Daysnt(long long a, long long b)
{
    long long lmt = sqrt(b) + 1;
    vector<bool> SNT(lmt + 1, true);
    SNT[0] = SNT[1] = false;

    for (long long i = 2; i * i <= lmt; ++i) {
        if (SNT[i]) {
            for (long long j = i * i; j <= lmt; j += i)
                SNT[j] = false;
        }
    }

    vector<long long> DSSNT;
    for (long long i = 2; i <= lmt; ++i) {
        if (SNT[i])
            DSSNT.push_back(i);
    }

    vector<bool> res(b - a + 1, true);
    if (a == 1) res[0] = false;

    for (long long p : DSSNT) {
        long long start = max(p * p, ((a + p - 1) / p) * p); 
        for (long long j = start; j <= b; j += p) {
            res[j - a] = false;
        }
    }
    long long R = 0;
    for (long long i = 0; i <= b - a; ++i) {
        if (res[i]) {
            R += i + a;
        }
    }
    cout << R;
}


int main()
{

    long long a, b;
    cin >> a >> b;
    Daysnt(a, b);
    return 0;
}