using System;
namespace HCN
{
    public class Program
    {
        static void Main(string[]args)
        {
            string []input = Console.ReadLine().Split(' ');
            int n = int.Parse(input[0]);
            int m = int.Parse(input[1]);
            for(int i = 0;i < m; i++)
            {
                for(int j = 0; j < n; j++)
                {
                    if (i == 0 || i == m - 1) 
                    {
                        Console.Write("*");
                    }
                    else 
                    {
                        if (j == 0 || j == n - 1) 
                            Console.Write("*");
                        else
                            Console.Write(" ");
                    }
                }
                Console.WriteLine("");
            }
        }
    }
}