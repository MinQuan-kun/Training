using System;
namespace SCP
{
    public class Program
    {
        static void Main(string[]args)
        {
            long n = long.Parse(Console.ReadLine());
            if(n < 0)
                Console.Write("NO");
            else
            {
                long temp = (long)Math.Sqrt(n);
                if(temp * temp == n)
                    Console.Write("YES");
                else
                    Console.Write("NO");
            }
        }
    }
}