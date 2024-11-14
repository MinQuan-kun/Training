//Xác định chu trình trên đồ thị vô hướng
#include<bits/stdc++.h>
using namespace std;
int n, m, S, E;
vector<int> adj[100];
bool visited[100];
int parent[1001];

void input()
{
    cin >> n >> m;
    for(int i = 0; i < m; i++)
    {
        int x, y;
        cin >> x >> y;
        adj[x].push_back(y);
        adj[y].push_back(x);
    }
    memset(visited, false, sizeof(visited));
    
}
bool DFS(int u)
// bool DFS(int u, int pair)
{
    visited[u] = true;
    for(int v: adj[u])
    {
        if(!visited[v])
        {
            parent[v] = u;
            if(DFS(v))
                return true;
        }
            
        else
            if(v != parent[u])
            {
                S = v;
                E = u;
                return true;

            }
    }
    return false;
}
bool BFS(int u)
{
    queue<pair< int, int>> q;
    q.push(u);
    visited[u] = true;
    while(!q.empty())
    {
        int v = q.front();
        q.pop();
        for(int x : adj[v])
        {
            if(!visited[x])
            {
                q.push(x);
                parent[x] = v;
                return true;
            }
            else if(x ! parent[v])
            {
                S = V;
                E = x;
                return true;
            }
        }
    }
    return false;
}

int main()
{
    input();
    for(int i = 1; i <= n; i++)
    {
        if(!visited[i])
        {
            //if(DFS(i , 0))
            if(DFS(i))
            {
                cout << "YES\n";
                vector<int> cycle;
                cycle.push_back(S);
                while(E != S)
                {
                    cycle.push_back(E);
                    E = parent[E];
                }
                cycle.push_back(S);
                reverse(cycle.begin(), cycle.end());
                    for(int x : cycle)
                        cout << x << " ";
                return 0;
            }
        }   
    }
}
// input1
// 7 6
// 1 2
// 2 3
// 2 4
// 3 6
// 6 7
// 7 3

// input2
// 8 6
// 1 2
// 2 3
// 4 5
// 4 6
// 5 6
// 5 7

//Xác định chu trình trên đồ thị có hướng
#include<bits/stdc++.h>
using namespace std;
int n, m;
vector<int> adj[100];
bool visited[100];
string color[100];

void input()
{
    cin >> n >> m;
    for(int i = 0; i < m; i++)
    {
        int x, y;
        cin >> x >> y;
        adj[x].push_back(y);
    }
    for(int i = 0; i < n; i++)
        color[i] = "white";//Trắng đại diện cho chưa duyệt
     
}

bool DFS(int u)
{
    color[u] = "gray"; //Xám đại diện cho đang duyệt 
    for(int x: adj[u])
    {
        if(color[x] == "white")
            if(DFS(x)) 
                return true;
        else if(color[x] == "gray") 
            return true;
    }
    color[u] = "black"; // Đen đại diện cho đã duyệt xong
    return false;
}
int main()
{
    input();
    for(int i = 1; i <= n; i++)
    {
        if(color[i] == "white")
        {
            if(DFS(i))
            {
                cout << "YES";
                return 0;
            }
        }   
    }
    cout << "NO";
    return 0;
}

//input 
// 7 7
// 1 2
// 1 5
// 2 3
// 4 2
// 3 6
// 6 7
// 7 3

//Xác định chu trình trên đồ thị có hướng bằng BFS
#include<bits/stdc++.h>
using namespace std;
int n, m;
vector<int> adj[100];
int in[100];
void input()
{
    cin >> n >> m;
    for(int i = 0; i < m; i++)
    {
        int x, y;
        cin >> x >> y;
        adj[x].push_back(y);
        in[y]++;
    }
}
bool kahn()
{
    queue<int> q;
    for(int i = 1; i <= n; i++)
        if(in[i] == 0)
            q.push(i);
    int cnt = 0;
    while(!q.empty())
    {
        int v = q.front();
        q.pop();
        cnt++;
        for(int x: adj[v])
        {
            in[x]--;
            if(in[x] == 0)
                q.push(x);
        }
    }
    cout << cnt << endl;
    if(cnt == n)
        return false; // Không có chu trình
    return true;
}
int main()
{
    input();
    if(kahn())
        cout << "YES";
    else 
        cout << "NO";
    return 0;
}
