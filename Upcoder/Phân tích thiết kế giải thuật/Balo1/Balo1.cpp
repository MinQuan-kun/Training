#include<bits/stdc++.h>
using namespace std;
int main()
{
    int n, w;
    cin >> n >> w;

    int a[n + 1];
    for(int i = 0; i < n; i++)
        cin >> a[i];
    
    int dp[n + 1][w + 1];
    memset(dp , 0, sizeof(dp));
    for(int i = 1; i <= n; i++)
    {
        for(int j = 0; j <= w; j++)
        {
            if(j >= a[i - 1])
                dp[i][j] = max(dp[i - 1][j], dp[i - 1][j - a[i - 1]] + a[i - 1]);
            else
                dp[i][j] = dp[i - 1][j];
        }
    }
    cout << dp[n][w] << endl;
    
    int j = w;
    bool check[n] = {false};
    for(int i = n; i >= 1; i--)
    {
        if(j >= a[i -1] && dp[i][j] == dp[i - 1][j - a[i - 1]] + a[i - 1])
        {
            check[i - 1] = true;
            j -= a[i - 1];
        }
    }
    
    for(int i = 0; i <= n; i++)
        if(check[i])
            cout << i << " ";
    return 0;
}