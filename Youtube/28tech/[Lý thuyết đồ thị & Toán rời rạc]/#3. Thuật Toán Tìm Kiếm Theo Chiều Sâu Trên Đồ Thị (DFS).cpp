// DFS: Depth First Search
// Thuật toán tìm kiếm theo chiều sâu: ưu tiên duyệt xuống sâu nhất 
// có thể trước khi quay lại 

//Bắt đầu từ đỉnh u
DFS(u)
{
    <Tham Dinh u>;
    visted[u] = true // Đánh dấu là u đã được thăm 
    //Duyệt các đỉnh kề với u
    for(v: adj[u])
    {
        if(!visited[v]) // Nếu v chưa được thăm 
        {
            DFS[v];
        }
    }
}

// Độ phức tạp của thuật toán DFS phụ thuộc vào cách biểu diễn ma trận.
// Đồ thị G = <V, E>
// Biểu diễn bằng ma trận kề: O(V * V)
// Biểu diễn bằng danh sách cạnh O(V * E)
// Biểu diễn bằng danh sách kề: O(V + E)

#include<bits/stdc++.h>
using namespace std;
//input
// 9 9 
// 1 2
// 1 3
// 1 5
// 2 4
// 3 6
// 3 7  
// 3 9
// 5 8
// 8 9
int nV, nE;
vector<int> adj[1001];
bool visited[1001];

void input()
{
    cin >> nV >> nE;
    for(int i = 0; i < nE; i++)
    {
        int x, y;
        cin >> x >> y;
        adj[x].push_back(y);
        adj[y].push_back(x);
    }
    memset(visited, false ,sizeof(visited));
}

void dfs(int u)
{
    cout << u << " ";
    //Đánh dấu là u đã được thăm
    visited[u] = true;
    for(int v: adj[u])
    {
        //Nếu đỉnh V chưa được thăm
        if(!visited[v])
            dfs(v);
    }
}

int main()
{
    input();
    dfs(1);
}