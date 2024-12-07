#include<bits/stdc++.h>
using namespace std;
int main()
{
    int n;
    cin >> n;
    int uoc = -1;
    for(int i = n/2; i >= 1 ; i--)
        if(n % i == 0 && i % 2 != 0)
        {
            uoc = i;
            break;
        }
            
    cout << uoc;
    return 0;
}

