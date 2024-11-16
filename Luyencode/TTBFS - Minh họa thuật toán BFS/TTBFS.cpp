#include <bits/stdc++.h>
using namespace std;
const int maxn = 1001;
int nE, nV;
vector<int> adj[maxn];
bool visited[maxn];

void BFS(int u)
{
    queue<int> q;
    q.push(u);
    visited[u] = true;
    while(!q.empty())
    {
        int x = q.front();
        q.pop();
        cout << x << endl;
        for(int v: adj[x])
        {
            if(!visited[v])
            {
                q.push(v);
                visited[v] = true;
            }
        }
    }
}

void input()
{   
    cin >> nE >> nV;
    for(int i = 0; i < nV; i++)
    {
        int x, y;
        cin >> x >> y;
        adj[x].push_back(y);
        adj[y].push_back(x);
    }
    memset(visited, false, sizeof(visited));
    for(int i = 1; i <= nE; i++)
        if(!visited[i])
            BFS(i);
}

int main() {
    input();
    return 0;
}