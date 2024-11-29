#include<bits/stdc++.h>
using namespace std;
int nE, nV, S;
vector<int> adj[1001];
bool visited[1001];

void input(ifstream& fin)
{
    fin >> nE >> nV >> S;
    for(int i = 0; i < nV; i++)
    {
        int x, y;
        fin >> x >> y;
        adj[x].push_back(y);
        adj[y].push_back(x);
    }
    memset(visited, false, sizeof(visited));
}

void DFS(int s,ofstream& fout)
{
    fout << s <<  " ";
    visited[s] = true;
    for(int x: adj[s])
        if(!visited[x])
            DFS(x, fout);
}

int main()
{
    ifstream fin("dothi.inp");
    ofstream fout("dothi.out");
    input(fin);
    DFS(S, fout);
    fin.close();
    fout.close();
}