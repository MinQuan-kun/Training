#include<bits/stdc++.h>
using namespace std;
int main()
{
    long long n;
    cin >> n;
    set<int> res;
    while(n)
    {
        long long temp;
        cin >> temp;
        res.insert(temp);
        n--;
    }
    cout << res.size();
    return 0;
}