#include<bits/stdc++.h>
using namespace std;
int main()
{
    int n;
    cin >> n;
    int temp = 0;
    while(n)
    {
        temp = temp * 10 + n % 10;
        n /= 10;
    }
    cout << temp;
    return 0;
}