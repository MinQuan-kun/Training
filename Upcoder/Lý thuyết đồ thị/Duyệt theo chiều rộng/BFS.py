from collections import deque

def input_data():
    nE, nV, S = map(int, input().split())
    adj = [[] for _ in range(nV + 1)]

    for _ in range(nE):
        x, y = map(int, input().split())
        adj[x].append(y)
        adj[y].append(x)
    
    return adj, S, nV

def BFS(S, adj, nV):
    visited = [False] * (nV + 1)
    queue = deque([S])
    visited[S] = True
    
    while queue:
        v = queue.popleft()
        print(v, end=" ")
        
        for x in adj[v]:
            if not visited[x]:
                queue.append(x)
                visited[x] = True

if __name__ == "__main__":
    adj, S, nV = input_data()
    BFS(S, adj, nV)
