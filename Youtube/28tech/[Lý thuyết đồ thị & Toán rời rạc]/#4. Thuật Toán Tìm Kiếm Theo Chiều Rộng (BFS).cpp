// BFS: Breadth First Search: Tư tưởng của thuật toán BFS là tìm kiếm ưu tiên chiều rộng hơn 
//là chiều sâu 
// Thuật toán sẽ tìm kiếm xung quanh để mở rộng trước khi đi xuống sâu hơn 

BFS(u)
{
    //Step 1: Khởi tạo 
    queue = 0; // tạo một hàng đợi rỗng
    push(queue, u); đẩy đỉnh u vào hàng đợi 
    visited[u] = true; // Đánh dấu là đỉnh u đã được thăm 
    //Step 2: Lặp lại khi nà hàng đợi vẫn còn phần tử 
    while( queue != 0)
    {
        v = queue.front(); // Lấy ra đỉnh ở đầu hàng đợi
        queue.pop();// Xóa đỉnh khỏi đùa hàng đợi
        <Thăm đỉnh v>;
        //Duyệt các đỉnh kề với v mà chưa được thăm và đẩy vào hàng đợi
        for(int x: ke[v])
        {
            if(!visited[x])
            {
                //Nếu x chưa được thăm 
                push(queue, x);
                visited[x] = true;
            }
        }
    }
}


#include<bits/stdc++.h>
using namespace std;
//input
// 10 12
// 1 2
// 1 3
// 1 5
// 1 10
// 2 4
// 3 6
// 3 7
// 3 9
// 6 7
// 5 8
// 8 9
int nE, nV;
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
    memset(visited, false ,sizeof(visited));
}
void BFS(int u)
{
    queue<int> q;
    q.push(u);
    visited[u] = true;
    while(!q.empty())
    {
        int v = q.front(); // lấy đỉnh ở đầu hàng đợi
        q.pop();
        cout << v << " ";
        for(int x : adj[v])
        {
            if(!visited[x])
            {
                q.push(x);
                visited[x] = true;  
            }
                
        }
    }
}
int main()
{
    input();
    BFS(1);
    return 0;
}
