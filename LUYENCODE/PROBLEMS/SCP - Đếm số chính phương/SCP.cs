using System;
namespace SCP
{
    public class Program
    {
        static void Main(string[]args)
        {
            int n = int.Parse(Console.ReadLine());
            long m;
            for(long i = 1; i <= n; i++)
            {
                m = long.Parse(Console.ReadLine());
                if(i != n)
                    Console.WriteLine(SCP(m));
                else
                    Console.Write(SCP(m));
            }
        }
        static long SCP(long x)
        {
        return (long)Math.Sqrt(x);
        }
    }
}