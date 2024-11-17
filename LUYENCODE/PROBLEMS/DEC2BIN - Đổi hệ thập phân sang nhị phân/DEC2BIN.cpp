#include<bits/stdc++.h>
using namespace std;
long long n, m;
stack<long long> v;
void print(long long x)
{
    while(x)
    {
        v.push(x % 2);
        x /= 2;
    }
    while(!v.empty())
    {
        cout << v.top();
        v.pop();
    }
    cout << endl;
}
void input()
{
    cin >> n;
    while(n)
    {
        cin >> m;
        print(m);
        n--;
    }
}
int main()
{
    input();
    return 0;
}