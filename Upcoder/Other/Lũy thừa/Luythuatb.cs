using System;
namespace Luythua
{
    public class Program
    {
        const int MOD = 1000000007;

        // Hàm lũy thừa nhanh trong C#
        static long PowerMod(long a, long b, int mod)
        {
            long result = 1;
            a = a % mod;
            while (b > 0)
            {
                if ((b & 1) == 1) // Nếu b lẻ
                {
                    result = (result * a) % mod;
                }
                a = (a * a) % mod; // Nhân đôi cơ số
                b >>= 1;           // Chia b cho 2
            }
            return result;
        }

        static void Main(string[]args)
        {
            string[] input = Console.ReadLine().Split();
            long a = long.Parse(input[0]);
            long b = long.Parse(input[1]);
            Console.Write(PowerMod(a, b, MOD));
        }
    }
}
