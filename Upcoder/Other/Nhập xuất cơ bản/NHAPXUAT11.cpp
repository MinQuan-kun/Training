#include<bits/stdc++.h>
using namespace std;
int main()
{
    int n;
    vector<int> v;
    while (cin >> n)
    {
        v.push_back(n);
    }
    for(int i = 0; i <= v.size()- 1; i++)
    {
        if(i != v.size() - 1)
            cout << v[i] << endl;
        else
            cout << v[i];
    }
    return 0;
}