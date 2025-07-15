// Apple Division
#include<bits/stdc++.h>
using namespace std;

long long Min = 1e20;
int n;
vector<long long> w;

void backtrack(long long index, long long group1, long long group2)
{
    if(index == n)
    {
        Min = min(Min, abs(group1 - group2));
        return;
    }
    backtrack(index + 1, group1 + w[index], group2);
    backtrack(index + 1, group1, group2 + w[index]);
}
int main()
{
    cin >> n;
    w.resize(n);
    for (int i = 0; i < n; i++) 
        cin >> w[i];

    backtrack(0, 0, 0);

    cout << Min << endl;
    return 0;

}