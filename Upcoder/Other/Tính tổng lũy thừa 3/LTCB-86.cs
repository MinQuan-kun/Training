using System;
namespace Luythua
{
    public class Program
    {
        static void Main(string[]args)
        {
            int n = int.Parse(Console.ReadLine());
            long s = 0;
            for(int i = 1; i <= n; i++)
                s += (long)Math.Pow(i, 3);
            Console.Write(s);
        }
    }
}