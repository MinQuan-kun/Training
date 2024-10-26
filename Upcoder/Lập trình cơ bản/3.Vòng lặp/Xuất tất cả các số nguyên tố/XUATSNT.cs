using System;

namespace SNT
{
    public class Program
    {
        // Hàm kiểm tra số nguyên tố
        static bool IsPrime(int x)
        {
            if (x < 2)
                return false;
            for (int i = 2; i <= x / 2; i++)
                if (x % i == 0)
                    return false;
            return true;
        }

        static void Main(string[] args)
        {
            int n = int.Parse(Console.ReadLine());
            if (n < 2)
            {
                Console.WriteLine("-1");
                return;
            }

            // In ra các số nguyên tố từ 2 đến n
            for (int i = 2; i <= n; i++)
            {
                if (IsPrime(i))
                {
                    Console.Write(i + " ");
                }
            }
        }
    }
}
