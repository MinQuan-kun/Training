#include<bits/stdc++.h>
using namespace std;
int nE, nV, S, T;
vector<int> adj[1001];
bool visited[1001];
int dis[1001];
void input()
{
    cin >> nE >> nV >> S >> T;
    for(int i = 0; i < nV; i++)
    {
        int x, y;
        cin >> x >> y;
        adj[x].push_back(y);
        adj[y].push_back(x);
    }
    memset(visited, false, sizeof(visited));
    memset(dis, -1, sizeof(dis));
}
int BFS(int S, int T)
{
    queue<int> q;
    q.push(S);
    visited[S] = true;
    dis[S] = 0;
    while(!q.empty())
    {
        int v = q.front();
        q.pop();
        for(int x: adj[v])
        {
            if(!visited[x])
            {
                q.push(x);
                visited[x] = true;
                dis[x] = dis[v] + 1;
                if(x == T)
                    return dis[x];
            }
        }
    }
}
int main()
{
    input();
    cout << BFS(S, T);
}