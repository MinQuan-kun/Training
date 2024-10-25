using System;
namespace Pytago
{
    public class Program
    {
        static void Main(string[]args)
        {
            int n = int.Parse(Console.ReadLine());
            if (n <= 4)
            {
                Console.WriteLine(-1);
                return;
            }

            for (int i = 1; i <= n; i++)
            {
                for (int k = 1; k <= n; k++)
                {
                    int c = (int)Math.Sqrt(i * i + k * k);
                    if (c <= n && c * c == i * i + k * k && k > i)
                    {
                        Console.Write($"{i} {k} {c}");
                    }
                }
            }
        }
    }
}

