using System;
using System.Collections.Generic;

namespace BFS
{
    public class Program
    {
        static int nE, nV, S;
        static List<int>[] adj;
        static bool[] visited;

        public static void Main(string[] args)
        {
            Input();
            BFS(S);
        }

        static void Input()
        {
            string[] input = Console.ReadLine().Split(' ');
            nE = int.Parse(input[0]);
            nV = int.Parse(input[1]);
            S = int.Parse(input[2]);

            adj = new List<int>[nE + 1];
            for (int i = 1; i <= nE; i++)
            {
                adj[i] = new List<int>();
            }

            for (int i = 0; i < nV; i++)
            {
                string[] edge = Console.ReadLine().Split(' ');
                int x = int.Parse(edge[0]);
                int y = int.Parse(edge[1]);
                adj[x].Add(y);
                adj[y].Add(x);
            }

            visited = new bool[nE + 1];
        }

        static void BFS(int S)
        {
            Queue<int> queue = new Queue<int>();
            queue.Enqueue(S);
            visited[S] = true;

            while (queue.Count > 0)
            {
                int v = queue.Dequeue();
                Console.Write(v + " ");

                foreach (int x in adj[v])
                {
                    if (!visited[x])
                    {
                        queue.Enqueue(x);
                        visited[x] = true;
                    }
                }
            }
        }
    }
}
