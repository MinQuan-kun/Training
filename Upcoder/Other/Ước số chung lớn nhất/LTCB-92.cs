using System;

namespace UCLN
{
    public class Program
    {
        static long UCLN(long n, long m)
        {
            if (m == 0)
                return n;
            return UCLN(m, n % m);
        }

        static void Main(string[] args)
        {
            string line;
            while ((line = Console.ReadLine()) != null)
            {
                string[] input = line.Split(' ');
                long n = long.Parse(input[0]);
                long m = long.Parse(input[1]);
                Console.WriteLine(UCLN(n, m));
            }
        }
    }
}
