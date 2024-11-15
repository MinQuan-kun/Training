#include<bits/stdc++.h>
using namespace std;
const int maxn = 1001;
int n, m;
vector<int> adj[maxn], r_adj[maxn];
bool used[maxn];
stack<int> topo;
void input()
{
    cin >> n >> m;
    for(int i = 0; i < m; i++)
    {
        int x, y;
        cin >> x >> y;
        adj[x].push_back(y);
        r_adj[y].push_back(x);
    }
}
void DFS1(int u)
{
    used[u] = true;
    for(int x: adj[u])
        if(!used[x])
            DFS1(x);
    topo.push(u);
}
void DFS2(int u)
{
    used[u] = true;
    cout << u << " ";
    for(int x: r_adj[u])
        if(!used[x])
            DFS2(x);
}
void SCC()
{    
    memset(used, false, sizeof(used));
    for(int i = 1; i <= n; i++)
        if(!used[i])
            DFS1(i);
    cout << endl;
    memset(used, false, sizeof(used));
    while(!topo.empty())
    {
        int u = topo.top();
        topo.pop();
        if(!used[u])
        {
            DFS2(u);
            cout << endl;
        }
    }
}
int main()
{
    input();
    SCC();
    return 0;
}
// input 
// 8 9
// 1 2
// 2 3
// 3 4
// 4 1
// 3 5
// 5 6
// 6 7
// 7 8
// 8 6