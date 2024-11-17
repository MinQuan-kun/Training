
#include<bits/stdc++.h>
using namespace std;
int main()
{
    vector<int> v;
    int n;
    cin >> n;
    int temp;
    for(int i = 0; i < n; i++)
    {
        cin >> temp;
        v.push_back(temp);
    }
    int cnt[100] = 0;
    for(int x: v)
    {
        for(int i = 0; i < v.size() - 1; i++)
            if(x == v[i])
                cnt[x]++;
    }
    int max = 0;
    for(int k : v)
        if(max < cnt[k])
            max += cnt[k]
    cout << max;
    return 0;
}