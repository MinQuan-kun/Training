#include<bits/stdc++.h>
using namespace std;
int main()
{
    int n;
    cin >> n;
    int Left = 0;
    int Right = 7;
    int cnt = 1;
    for(int i = 1; i <= n; i++)    
    {
        if(cnt % 2 != 0)
        {
            Left++;
            Right--;
        }
        if(cnt % 2 == 0)
        {
            Left--;
            Right++;
        }
        if((i % 7) == 0)
            cnt ++;
    }
    cout << Right << " " << Left;
    return 0;
}
