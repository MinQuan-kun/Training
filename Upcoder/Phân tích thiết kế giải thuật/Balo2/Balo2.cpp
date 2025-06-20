#include<bits/stdc++.h>
using namespace std;
int main()
{
    int n, w;
    cin >> n >> w;
    int a[n + 1] , c[n + 1];
    for(int i = 1; i <= n; i++)
        cin >> a[i] >> c[i];
    int dp[n + 1][w + 1];
    memset(dp, 0, sizeof(dp));
    for(int i = 1; i <= n; i++)
    {
        for(int j = 1; j <= w; j++)
        {
            dp[i][j] = dp[i - 1][j];
            if(j >= a[i])
                dp[i][j] = max(dp[i][j], dp[i - 1][j - a[i]] + c[i]);
        }
    }
    cout << dp[n][w] << endl;
    
    bool check[n + 1] = {false};
    int j = w;
    for(int i = n; i >= 1; i--)
    {
        if(j >= a[i] && dp[i][j] == dp[i - 1][j - a[i]] + c[i])
        {
            check[i] = true;
            j -= a[i];
        }
    }
    for(int i = 1; i <= n; i++)
        cout << check[i]  << " ";
    return 0;
}