#include<bits/stdc++.h>
using namespace std;
int main()
{
    int n;
    cin >> n;
    int tong = 0;
    int temp = 0;
    while(n != 0)
    {
        temp = temp * 10 + 1;
        tong += temp;
        n --;
    }
    cout << tong;
}