#include<bits/stdc++.h>
using namespace std;
int main()
{
    long long a, b;
    cin >> a >> b;
    if(a > b)
        swap(a, b);
    vector<int> v;
    for(int i = a + 1; i < b; i++)
        if(i % 3 == 0)
            v.push_back(i);
    sort(v.rbegin(), v.rend());
    for(int x: v)
        cout << x << " ";
    if(v.empty())
        cout << "NOT FOUND";
    return 0;
}