#include <bits/stdc++.h>
using namespace std;

int main() {
    long long n;
    cin >> n;
    vector<string> v;
    v.push_back("0");
    v.push_back("1");

    while(v[0].size() < n)
    {
        vector<string> u = v;
        reverse(u.begin(), u.end());
        v.insert(v.end(), u.begin(), u.end());

        long long mid = v.size()/2;
        for(int i = 0; i < mid ;i++)
            v[i].insert(v[i].begin(), '0');
        for(int j = mid; j < v.size(); j++)
            v[j].insert(v[j].begin(), '1');
    }
    for (auto x : v)
        cout << x << endl;
    
    return 0;
}