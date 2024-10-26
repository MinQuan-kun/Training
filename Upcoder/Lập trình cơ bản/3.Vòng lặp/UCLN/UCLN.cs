using System;

namespace UCLN
{
    public class Program
    {
        public static void Main(string[] args)
        {
            int a, b, c = 1;
            string[] input = Console.ReadLine().Split(' ');
            a = int.Parse(input[0]);
            b = int.Parse(input[1]);
            
            for (int i = 1; i <= Math.Max(a, b); i++)
            {
                if (a % i == 0 && b % i == 0)
                {
                    c = i;
                }
            }
            Console.Write(c);
        }
    }
}
