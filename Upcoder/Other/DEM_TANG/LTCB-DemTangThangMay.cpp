#include<bits/stdc++.h>
using namespace std;
int main()
{
    int a , b ,c;
    cin >> a >> b >> c;
    if(b > 11 || b < 1 || a > 11 || a < 1 )
    {
        cout << 0;
        return 0;
    }
    int cnt = 0;
    if(c == -1)
    {
        while(b != a)
        {
            b++;
            cnt++;
            if(b == 11 && b != a)
            {
                while(b != a)
                {
                    b--;
                    cnt++;
                }
            }
        }
        cout << cnt;  
    }
    else
    {
        while(b != a)
        {
            b--;
            cnt++;
            if(b == 1 && b != a)
            {
                while(b != a)
                {
                    b++;
                    cnt++;
                }
            }
        }
        cout << cnt;  
    }
    return 0;
}