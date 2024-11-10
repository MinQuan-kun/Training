using System;
using System.Linq;

class Program
{
    static bool IsPrime(long x)
    {
        if (x < 2) return false;
        for (long i = 2; i * i <= x; i++)
        {
            if (x % i == 0) return false;
        }
        return true;
    }

    static void Main()
    {
        long N = long.Parse(Console.ReadLine());

        if (N < 2)
        {
            Console.WriteLine(0);
            return;
        }

        for (int q = 2; q <= Math.Log(N, 2); q++)
        {
            long p = (long)Math.Pow(N, 1.0 / q);

            foreach (long candidate in new long[] { p, p + 1 })
            {
                if (IsPrime(candidate) && (long)Math.Pow(candidate, q) == N)
                {
                    Console.Write($"{candidate} {q}");
                    return;
                }
            }
        }

        Console.Write(0);
    }
}
