//Thuật toán Topo dựa trên DFS
#include<bits/stdc++.h>
using namespace std;
int n, m;
vector<int> adj[1001];
bool vistited[1001];
vector<int> topo;

void input()
{
    cin >> n >> m;
    for(int i = 0; i < m; i++)
    {
        int x, y;
        cin >> x >> y;
        adj[x].push_back(y);
    }
    memset(vistited, false, sizeof(vistited));
}
void DFS(int u)
{
    vistited[u] = true;
    for(int x: adj[u])
    {
        if(!vistited[x])
            DFS(x);
    }
    topo.push_back(u);
}
int main()
{
    input();
    for(int i = 1; i <= n; i++)
        if(!vistited[i])
            DFS(i);
    reverse(topo.begin(), topo.end());
    for(int x : topo)
        cout << x << " ";
    return 0;
}
//input 
// 7 7
// 1 2
// 2 3
// 2 4
// 3 5
// 4 5
// 1 6
// 7 6
//output
//7 1 6 2 4 3 5 

//Thuật toán Kahn (Xóa dần đỉnh)
#include<bits/stdc++.h>
using namespace std;
int n, m;
vector<int> adj[1001];
vector<int> topo;
int in[1001]; // tạo mảng lưu bán bậc vào

void input()
{
    cin >> n >> m; 
    for(int i = 0; i < m; i++)
    {
        int x, y;
        cin >> x >> y;
        adj[x].push_back(y);
        in[y]++;
        //Mô phỏng đây là đồ thị có hướng
        //1 2 ở đây 2 sẽ được nhận thêm 1 và vị trí 2 được đại diện bới y(bán bậc vào)
        //3 2 ở đây 2 sẽ được nhận thêm 1 và vị trí 2 được đại diện bới y(bán bậc vào)
    }
}
void kahn()
{
    queue<int> q;
    for(int i = 1; i <= n; i++)
    {
        if(in[i] == 0)
            q.push(i);
        //Kiểm tra nếu bán bậc vào bằng 0 thì đẩy vô hàng đợi
    }
    while(!q.empty())
    {
        int u = q.front();
        q.pop();
        topo.push_back(u);
        for(int v: adj[u])
        {
            in[v]--;
            //Mỗi lần đẩy 1 đỉnh vào topo đồng nghĩa cắt đi 1 đỉnh => giảm bán bậc vào của các đỉnh kề
            if(in[v] == 0)
            {
                q.push(v);
            }
        }
    }
    for(int x : topo)
        cout << x << " ";
}
int main()
{
    input();
    kahn();
    return 0;
}
//input 
// 7 7
// 1 2
// 2 3
// 2 4
// 3 5
// 4 5
// 1 6
// 7 6
//output
// 1 7 2 6 3 4 5 