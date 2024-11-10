#include<bits/stdc++.h>
using namespace std;
int nE, nV, S;
vector<int> adj[1001];
bool visited[1001];
void input()
{
    cin >> nE >> nV >> S;
    for(int i = 0; i < nV; i++)
    {
        int x, y;
        cin >> x >> y;
        adj[x].push_back(y);
        adj[y].push_back(x);
    }
    memset(visited, false, sizeof(visited));
}
void BFS(int S)
{
    queue<int> p;
    p.push(S);
    visited[S] = true;
    
    while(!p.empty())
    {
        int v = p.front();
        p.pop();
        cout << v << " ";
        for(int x : adj[v])
        {
            if(!visited[x])
            {
                p.push(x);
                visited[x] = true;
            }
        }
        
    }
}
int main()
{
    input();
    BFS(S);
    return 0;
}