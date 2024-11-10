#include<bits/stdc++.h>
using namespace std;
bool CheckSCP(long long n)
{
    if (n < 0)
        return false;
    int ck = sqrt(n);
    return ck * ck == n;
}
int main()
{
    long long n;
    cin >> n;
    int temp = 0;
    for(long long i = 1; i < n; i++)
        if(CheckSCP(i))
        {
            cout << i << " ";
            temp++;
        }
    if(temp == 0)
        cout << -1;
    return 0;
}