#include <bits/stdc++.h>
using namespace std;

const int MOD = 1e9 + 7;

long long solve(vector<long long> arr) {
    int n = arr.size();
    sort(arr.begin(), arr.end());

    vector<long long> Pow(n + 1, 1);
    for (int i = 1; i <= n; ++i)
        Pow[i] = (Pow[i - 1] * 2) % MOD;

    long long res = 0;
    for (int i = 0; i < n; ++i) {
        res = (res + arr[i] * Pow[i]) % MOD;
    }
    return res;
}

int main() {
    int n;
    cin >> n;
    vector<long long> arr(n);
    for (int i = 0; i < n; ++i) cin >> arr[i];

    cout << solve(arr) ;
    return 0;
}