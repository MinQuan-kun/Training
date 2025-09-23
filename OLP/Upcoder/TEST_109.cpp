#include<bits/stdc++.h>
using namespace std;

const int MOD = 1e9 + 7;
const int MAX = 1e6 + 10;

vector<long long> fact(MAX);
vector<long long> inv_fact(MAX);

long long power(long long a, long long b) {
    long long result = 1;
    a %= MOD;
    while (b > 0) {
        if (b & 1) result = result * a % MOD;
        a = a * a % MOD;
        b >>= 1;
    }
    return result;
}

void Go() {
    fact[0] = 1;
    for (int i = 1; i < MAX; ++i) {
        fact[i] = fact[i - 1] * i % MOD;
    }

    inv_fact[MAX - 1] = power(fact[MAX - 1], MOD - 2);
    for (int i = MAX - 2; i >= 0; --i) {
        inv_fact[i] = inv_fact[i + 1] * (i + 1) % MOD;
    }
}

int main() {
    string s;
    cin >> s;

    Go();

    vector<int> freq(26, 0);
    for (char c : s) {
        freq[c - 'a']++;
    }

    int n = s.size();
    long long result = fact[n];
    for (int f : freq) {
        if (f > 0) {
            result = result * inv_fact[f] % MOD;
        }
    }

    cout << result;
    return 0;
}
