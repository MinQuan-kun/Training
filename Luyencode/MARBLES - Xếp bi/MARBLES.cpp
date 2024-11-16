#include<bits/stdc++.h>
using namespace std;
int main()
{
    int n;
    cin >> n;
    int res = 0;
    for(int i = 1; i < n; i++)
    {
        res += i;
        if(res == n)
        {
            cout <<"Yes.";
            return 0;
        }
    }
    cout << "No.";
    return 0;
}
