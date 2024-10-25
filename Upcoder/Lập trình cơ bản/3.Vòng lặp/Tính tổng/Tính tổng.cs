using System;
namespace Tinhtong
{
    public class Program
    {
        static void Main(string[] args)
        {
            int n = int.Parse(Console.ReadLine());
            double temp = 1;
            double S = 1;

            for (int j = 0; j <= n; j++)
            {
                temp *= (2.0 * (j + 1)) / (2.0 * j + 3);
                S += temp;
            }

            Console.Write($"{S:F2}");
        }
    }
}

