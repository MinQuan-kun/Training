#include<bits/stdc++.h>
using namespace std;
int main()
{
    long long n;
    cin >> n;
    long long total = (n * (n + 1)) / 2;
    if(total % 2 != 0)
    {
        cout << "NO" << endl;
    }
    else
    {
        cout << "YES" << endl;
        vector<long long> set1, set2;
        long long check = total / 2;
        for(long long i = n; i >= 1; i--)
        {
            if(i <= check)
            {
                set1.push_back(i);
                check -=i;
            }
            else
                set2.push_back(i);
        }
        cout << set1.size() << endl;
        for(auto it:set1)
            cout << it << " ";
        cout << endl;
        cout << set2.size() << endl;
        for(auto it: set2)
            cout << it << " ";
    }
}