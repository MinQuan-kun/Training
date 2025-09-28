#include <bits/stdc++.h>
using namespace std;

int n;
int a[105][105], dp[105][105];
int best;

void backtrack(int i, int j, vector<int>& path) {
    path.push_back(a[i][j]);

    if (i == 1 && j == 1) {
        vector<int> res = path;
        reverse(res.begin(), res.end());
        for (int x : res) cout << x << " ";
        cout << "\n";
        path.pop_back();
        return;
    }

    if (j > 1 && dp[i][j] == a[i][j] + dp[i-1][j-1]) {
        backtrack(i-1, j-1, path);
    }
    if (j <= i-1 && dp[i][j] == a[i][j] + dp[i-1][j]) {
        backtrack(i-1, j, path);
    }

    path.pop_back();
}

int main() {
    cin >> n;
    for (int i = 1; i <= n; i++)
        for (int j = 1; j <= i; j++)
            cin >> a[i][j];

    memset(dp, 0, sizeof(dp));
    dp[1][1] = a[1][1];
    for (int i = 2; i <= n; i++) {
        for (int j = 1; j <= i; j++) {
            if (j == 1) dp[i][j] = a[i][j] + dp[i-1][j];
            else if (j == i) dp[i][j] = a[i][j] + dp[i-1][j-1];
            else dp[i][j] = a[i][j] + max(dp[i-1][j-1], dp[i-1][j]);
        }
    }

    best = 0;
    for (int j = 1; j <= n; j++) best = max(best, dp[n][j]);
    cout << best << "\n";

    // backtrack từ những vị trí ở đáy đạt tổng lớn nhất
    for (int j = 1; j <= n; j++) {
        if (dp[n][j] == best) {
            vector<int> path;
            backtrack(n, j, path);
        }
    }
}
