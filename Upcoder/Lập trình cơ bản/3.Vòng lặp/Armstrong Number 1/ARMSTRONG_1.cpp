#include<bits/stdc++.h>
using namespace std;
int main()
{
    int n;
    while(cin >> n)
    {
        int temp = n;
        int cnt = 0;
        while(temp != 0)
        {
            cnt++;
            temp /=10;
        }
        temp = n;
        int S = 0;
        while(temp != 0)
        {
            S += pow(temp % 10,cnt);
            temp /=10;
        }
        if(S == n)
            cout << "YES" << endl;
        else
            cout << "NO" << endl;
    }
    return 0;
}