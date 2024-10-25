#include<bits/stdc++.h>
using namespace std;
int main ()
{
    int n, m;
    cin >> n >> m;
    int s1, s2 = 0;
    for(int i = 1; i < n; i++)
        if(n % i == 0)
            s1 += i;
    for(int i = 1; i < m; i++)
        if(m % i == 0)
            s2 += i;
    if(s1 == m && n == s2)
        cout<< "YES";
    else
        cout<< "NO";
}