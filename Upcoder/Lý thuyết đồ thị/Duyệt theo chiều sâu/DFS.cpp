#include <bits/stdc++.h>
using namespace std;

int nV, nE, S;
vector<int> adj[1000];
bool visited[1000];

void input()
{
    cin >> nV >> nE >> S;
    for (int i = 0; i < nE; i++) // Lặp theo số cạnh
    {
        int x, y;
        cin >> x >> y;
        adj[x].push_back(y);
        adj[y].push_back(x);
    }
    memset(visited, false, sizeof(visited));
}

void dfs(int S)
{
    cout << S << " ";
    visited[S] = true;
    for (int v : adj[S])
    {
        if (!visited[v])
            dfs(v);
    }
}

int main()
{
    input();
    dfs(S);
    return 0;
}
