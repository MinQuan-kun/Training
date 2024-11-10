// Đếm số thành phần liên thông trên đồ thị vô hướng 
// input
// 10 10
// 1 2
// 2 3
// 2 4
// 3 6
// 3 8
// 6 7
// 3 7
// 5 8
// 5 10
// 8 9

#include<bits/stdc++.h>
using namespace std;
int nE, nV, S;
vector<int> adj[1001];
bool visited[1001];

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
}

void DFS(int u)
{
    visited[u] = true;
    cout << u << " ";
    for(int v: adj[u])
        if(!visited[v])
            DFS(v);
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
        cout << v << " ";
        for(int x: adj[v])
        {
            if(!visited[x])
            {
                q.push(x);
                visited[x] = true;
            }
        }
    }
}
void ConnectedComponent()
{
    memset(visited, false, sizeof(visited));
    //Khởi tạo số thành phần liên thông ban đầu 
    int cnt = 0;
    //Lặp
    for(int i = 1; i <= nE; i++)
    {
        if(!visited[i])
        {
            cnt++;
            cout << "Các đỉnh thuộc thành phần liên thông thứ " << cnt << ":\n";
            // DFS(i); 
            BFS(i);
            cout << endl;
        }
    }
    if(cnt == 1)
        cout << "Đồ thị liên thông!";
    else
        cout << "Đồ thị không liên thông!" << endl <<"Số thành phần liên thông của đồ thị: " << cnt << endl;
}
int main()
{
    input();
    ConnectedComponent();
    return 0;
}