#include <bits/stdc++.h>
using namespace std;

const long long MAXN = 1e6;
vector<long long> minPDiv;

void sieve() {
    minPDiv.resize(MAXN + 1);
    for (long long i = 2; i <= MAXN; i++) {
        if (minPDiv[i]) continue;
        minPDiv[i] = i;
        for (long long j = i + i; j <= MAXN; j += i) {
            if (minPDiv[j] == 0)
                minPDiv[j] = i;
        }
    }
}

long long solve(long long n) {
    if (n == 1) return 1;
    vector<long long> powV;
    long long lastDiv = 0;
    long long cnt = 0;
    while (n != 1) {
        if (minPDiv[n] != lastDiv) {
            if (cnt) powV.push_back(cnt);
            cnt = 0;
        }
        ++cnt;
        lastDiv = minPDiv[n];
        n /= minPDiv[n];
    }
    if (cnt) powV.push_back(cnt);
    long long ret = 1;
    for (auto i : powV) ret *= (i + 1);
    return ret;
}

int main() {
    sieve();
    long long n;
    cin >> n;
    while(n--) {
        long long x;
        cin >> x;
        cout << solve(x) << "\n";
    }
    return 0;
}