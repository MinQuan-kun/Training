#include<iostream>
using namespace std;
int main()
{
    long long n;
    cin >> n;
    long long k = n;
    for(long long i = 1; i <= n; i++)
    {
        k = k - i;
        if(k <= 0)
            break;
    }
    if(k == 0)
        cout << "YES";
    else
        cout << "NO";
}