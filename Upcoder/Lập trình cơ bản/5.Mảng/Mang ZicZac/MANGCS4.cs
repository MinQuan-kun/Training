using System;
using System.Linq;
namespace Ziczac
{
    public class Program
    {
        static void Main(string[]args)
        {
            var dims = Console.ReadLine().Split().Select(int.Parse).ToArray();
            int n = dims[0], m = dims[1];
            
            int[,] a = new int[n, m];
            
            for (int i = 0; i < n; i++)
            {
                var row = Console.ReadLine().Split().Select(int.Parse).ToArray();
                for (int j = 0; j < m; j++)
                {
                    a[i, j] = row[j];
                }
            }

            int[] temp = new int[n * m];
            int index = 0;
            
            for (int i = 0; i < n; i++)
            {
                for (int j = 0; j < m; j++)
                {
                    temp[index++] = a[i, j];
                }
            }

            Array.Sort(temp);

            index = 0;
            for (int i = 0; i < n; i++)
            {
                for (int j = 0; j < m; j++)
                {
                    a[i, j] = temp[index++];
                }
            }

            for (int i = 0; i < n; i++)
            {
                if (i % 2 == 0)
                {
                    for (int j = 0; j < m; j++)
                    {
                        Console.Write(a[i, j] + " ");
                    }
                }
                else
                {
                    for (int j = m - 1; j >= 0; j--)
                    {
                        Console.Write(a[i, j] + " ");
                    }
                }
                Console.WriteLine();
            }
        }
    }
}
