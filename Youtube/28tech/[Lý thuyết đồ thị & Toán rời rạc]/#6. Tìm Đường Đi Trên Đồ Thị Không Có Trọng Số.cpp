// Tìm đường đi giữa 2 đỉnh trên đồ thị: (có hướng và vô hướng)
//input
// 10 8 1 7
// 1 2
// 2 3
// 2 4
// 3 6
// 3 7
// 6 7
// 5 8
// 8 9

#include<bits/stdc++.h>
using namespace std;

int nE, nV, S, T;
vector<int> adj[1001];
bool visited[1001];
int parent[1001];

void DFS(int u)
{
    visited[u] = true;
    for(int x: adj[u])
    {
        if (!visited[x])
        {
            //Ghi nhận cha của v là u
            parent[x] = u;
            DFS(x);
        }
    }
}
void BFS(int u)
{
    queue<int> q;
    q.push(u);
    visited[u] = true;
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
                parent[x] = v;
            }
        }
    }
}
void input()
{
    cin >> nE >> nV >> S >> T;
    for(int i = 0; i < nV; i++)
    {
        int x, y;
        cin >> x >> y;
        adj[x].push_back(y);
        // adj[y].push_back(x); // dùng trong đồ thị vô hướng
    }
}

void Path(int s, int t)
{
    memset(visited, false, sizeof(visited));
    memset(parent, 0, sizeof(parent));
    DFS(s);
    //BFS(s);
    if(!visited[t])
    {
        cout << "Không có đường đi!" << endl;
    }
    else
    {
        //Truy vết đường đi
        vector<int> path;
        //Bắt đầu từ đỉnh t
        while(t != s)
        {
            path.push_back(t);
            t = parent[t];
        }
        path.push_back(s);
        reverse(path.begin(), path.end());
        for(int x: path)
            cout << x << " ";
    }
}
int main()
{
    input();
    Path(S , T);
}