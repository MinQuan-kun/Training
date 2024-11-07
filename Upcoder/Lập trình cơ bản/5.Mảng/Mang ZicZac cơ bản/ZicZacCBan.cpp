#include<bits/stdc++.h>
using namespace std;
int main()
{
    int n, m;
    cin >> n >> m;
    int a[n][m];
    int temp = 1;
    for(int i = 1; i <= n; i++)
    {
        for(int j = 1; j <= m; j++)
        {
             a[i][j] = temp;
             temp++;
        }
    }
    
    int c = 1;
    for(int i = 1; i <= n; i++)
    {
        if(c % 2 != 0)
        {
            for(int j = 1; j <= m; j++)
                cout << a[i][j] << " ";
        }
        else
        {
            for(int j = m; j > 0; j--)
                cout << a[i][j] << " ";
        }
        cout << endl;
        c++;
    }
    return 0;   
}