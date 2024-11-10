using System;
using System.Collections.Generic;
namespace Timduong
{
    public class Program
    {
        static int nE, nV, S, T;
        static List<int>[] adj;
        static bool[] visited;
        static int[] dist;

        static void Main(string[]args)
        {
            input();
            Console.Write(BFS(S, T));
        }
        static void input()
        {
            string []input = Console.ReadLine().Split(' ');
            nE = int.Parse(input[0]);
            nV = int.Parse(input[1]);
            S = int.Parse(input[2]);
            T = int.Parse(input[3]);

            adj = new List<int>[nE + 1];
            for (int i = 1; i <= nV; i++)
            {
                adj[i] = new List<int>();
            }
            
            for(int i = 0; i < nV; i++)
            {
                string [] line = Console.ReadLine().Split(' ');
                int x = int.Parse(line[0]);
                int y = int.Parse(line[1]);
                adj[x].Add(y);
                adj[y].Add(x);
            }
            visited = new bool[nV + 1];
            dist = new int[nV + 1];
        }
        static int BFS(int S, int T)
        {
            Queue<int> q = new Queue<int>();
            q.Enqueue(S);
            visited[S] = true;
            dist[S] = 0;
            while(q.Count > 0)
            {
                int v = q.Dequeue();
                foreach (int x in adj[v])
                {
                    if (!visited[x])
                    {
                        q.Enqueue(x);
                        visited[x] = true;
                        dist[x] = dist[v] + 1;
                        if(x == T)
                            return dist[x];
                    }
                }
            }
            return -1;
        }
    }
}