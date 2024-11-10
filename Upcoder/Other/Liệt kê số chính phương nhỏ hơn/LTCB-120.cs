using System;
namespace SCP
{
    public class Program
    {
        static void Main(string[]args)
        {
            long n = long.Parse(Console.ReadLine());
            int count = 0;
            for(long i = 1; i < n; i++)
            {
                if(CheckSCP(i))
                {
                    Console.Write("{0} ", i);
                    count++;
                }
            }
            if(count == 0)
                Console.Write("-1");
        }
        static bool CheckSCP(long n)
        {
            if (n < 0) return false;
            long ck = (long)Math.Sqrt(n);
            return ck * ck == n;
        }
    }
}