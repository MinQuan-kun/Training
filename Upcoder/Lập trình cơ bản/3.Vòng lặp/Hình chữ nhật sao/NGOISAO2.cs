using System;

namespace HCN
{
    public class Program
    {
        public static void Main(string[] args)
        {
            string []input = Console.ReadLine().Split(' ');
            int a = int.Parse(input[0]);
            int b = int.Parse(input[1]);

            for (int i = 1; i <= a; i++)
            {
                for (int j = 1; j <= b; j++)
                {
                    Console.Write("*");
                }
                if (i < a)
                    Console.WriteLine();
            }
        }
    }
}
