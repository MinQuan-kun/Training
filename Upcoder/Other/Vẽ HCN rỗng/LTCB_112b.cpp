#include<bits/stdc++.h>
using namespace std;
int main()
{
    int n, m;
    cin >> n >> m;
    int khoangtrang = n - 2;
    for(int i = 0;i < m; i++)
    {
        for(int j = 0; j < n; j++)
        {
            if (i == 0 || i == m - 1) 
            {
                cout << "*";
            }
            else 
            {
                if (j == 0 || j == n - 1) 
                    cout << "*";
                else
                    cout << " "; 
            }
        }
        cout << endl;
    }
}
    