#include<bits/stdc++.h>
using namespace std;
int main()
{
    int n, m;
    cin >> n >> m;
    int s = 1;
    int t = 0;
    while(n!= 0){
        s = s * (n % 10);
        n /= 10;
    }
    for(int i = m; i > 0; i--){
        if(m % i == 0)
            t += i;
    }
    if(t == s)
        cout << "YES";
    else
        cout << "NO";
    return 0;
}