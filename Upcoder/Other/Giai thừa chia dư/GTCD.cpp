#include<bits/stdc++.h>
using namespace std;

const int MOD = 1000000007;
const int MAX_N = 1000000;

vector<int> factorials(MAX_N + 1, 1);

void precomputeFactorials() {
    for (int i = 2; i <= MAX_N; ++i) {
        factorials[i] = (1LL * factorials[i - 1] * i) % MOD;
    }
}

int main() {
    precomputeFactorials();  

    int a;
    cin >> a;
    vector<int> results;

    for (int i = 0; i < a; ++i) {
        int element;
        cin >> element;
        if (element <= MAX_N) {
            results.push_back(factorials[element]);
        }
    }

    for (int result : results) {
        cout << result << endl;
    }

    return 0;
}
