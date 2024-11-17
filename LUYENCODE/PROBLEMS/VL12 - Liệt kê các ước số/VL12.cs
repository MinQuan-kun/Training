using System;
namespace UOC
{
    public class Program
    {
        static void Main(string[]args)
        {
            int n = int.Parse(Console.ReadLine());
            if(n == 0)
                Console.Write("INF");
            else
                for(int i = Math.Abs(n); i > 0; i--)
                    if(n % i == 0)
                        Console.Write("{0} ", i);
        }
    }
}