#include <bits/stdc++.h>
using namespace std;

int main() {
    int M, N;
    cin >> M >> N;
    int a[M+1][N+1]; // +1 để tránh truy cập ngoài
    for (int i = 1; i <= M; i++)
        for (int j = 1; j <= N; j++)
            cin >> a[i][j];
    
    int dp[M+1][N+1];
    memset(dp, 0, sizeof(dp));
    
    // DP tính tổng lớn nhất
    for (int i = 1; i <= M; i++) {
        for (int j = 1; j <= N; j++) {
            dp[i][j] = a[i][j] + max(dp[i-1][j], dp[i][j-1]);
        }
    }
    
    cout << dp[M][N] << endl;
    
    // Truy vết đường đi
    vector<pair<int,int>> path;
    int i = M, j = N;
    while (!(i == 1 && j == 1)) {
        path.push_back({i, j});
        if (i > 1 && dp[i][j] == a[i][j] + dp[i-1][j]) i--;
        else j--;
    }
    path.push_back({1,1});
    
    reverse(path.begin(), path.end());
    
    for (auto x : path)
        cout << x.first << " " << x.second << endl;
    
    return 0;
}
