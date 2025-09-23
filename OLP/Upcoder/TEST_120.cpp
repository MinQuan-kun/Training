#include <bits/stdc++.h>
using namespace std;

int main() {
    string s;
    cin >> s;
    int n = s.size();

    vector<long long> freq(26, 0);
    for (char c : s) freq[c - 'a']++;

    long long total_pairs = 1LL * n * (n - 1) / 2;
    long long same_pairs = 0;
    for (int i = 0; i < 26; ++i) {
        same_pairs += freq[i] * (freq[i] - 1) / 2;
    }

    long long different_pairs = total_pairs - same_pairs;
    cout << 1 + different_pairs;

    return 0;
}
// n = 4

// Total pairs = 4 * 3 / 2 = 6

// Ký tự a xuất hiện 2 lần → same_pairs = 2 * (2 - 1) / 2 = 1

// different_pairs = 6 - 1 = 5

// Output = 1 + 5 = 6 ✅ khớp đề bài