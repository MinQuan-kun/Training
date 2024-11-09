using System;
namespace Vehcn
{
    public class Program
    {
        static void Main(string[]args)
        {
            string []input = Console.ReadLine().Split(' ');
            int n = int.Parse(input[0]);
            int m = int.Parse(input[1]);
            for(int i = 0; i < m; i++)
            {
                for(int j = 0; j < n; j++)
                    Console.Write("* ");
                Console.WriteLine();
            }
        }
    }
}