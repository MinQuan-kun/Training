//Code này 8.68
using System;
using System.Linq;

namespace Tong 
{
    public class Program
    {
        static float SumAm(float[] a, int n)
        {
            float Tong = 0.0f;
            for (int i = 0; i < n; i++)
            {
                if (a[i] < 0)
                    Tong += a[i];
            }
            return Tong;
        }

        static void Main(string[] args)
        {
            var input = Console.ReadLine().Split(' ');

            int n = int.Parse(input[0]);
            if (n <= 0)
            {
                Console.Write("-1");
                return;
            }

            float[] a = input.Skip(1).Take(n).Select(float.Parse).ToArray();

            float tong = SumAm(a, n);
            Console.Write(Math.Round(tong, 2));
        }
    }
}
