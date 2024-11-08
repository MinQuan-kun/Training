using System;
using System.Collections.Generic;
namespace Luythua
{
    public class Program
    {
        const int MOD = 1000000007;
        const int MAX_N = 1000000;
        static int[] factorials = new int[MAX_N + 1];

        static void PrecomputeFactorials()
        {
            factorials[0] = 1;
            for (int i = 1; i <= MAX_N; i++)
            {
                factorials[i] = (int)((long)factorials[i - 1] * i % MOD);
            }
        }

        static void Main()
        {
            PrecomputeFactorials(); // Tiền tính giai thừa

            int a = int.Parse(Console.ReadLine());
            List<int> results = new List<int>();

            for (int i = 0; i < a; i++)
            {
                int element = int.Parse(Console.ReadLine());
                if (element <= MAX_N)
                {
                    results.Add(factorials[element]);
                }
            }

            // Xuất kết quả
            foreach (int result in results)
            {
                Console.WriteLine(result);
            }
        }
    }
}
