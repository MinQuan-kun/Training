//Code này chỉ được 7.14
using System;
namespace DequyS
{
    public class Program
    {
        // Hàm tính giai thừa bằng vòng lặp
        static long Factorial(int n)
        {
            long result = 1;
            for (int i = 2; i <= n; i++)
            {
                result *= i;
            }
            return result;
        }
        static double Roundf(double value)
        {
            return Math.Round(value * 1000) / 1000;
        }

        // Hàm tính tổng S(n) bằng vòng lặp
        static double S(int n, int x)
        {
            double sum = 1 + x; // Bắt đầu với giá trị của S(0)
            for (int i = 1; i <= n; i++)
            {
                sum += Math.Pow(x, 2 * i + 1) / Factorial(2 * i + 1);
            }
            return sum;
        }

        static void Main(string[] args)
        {
                // Đọc dữ liệu vào
            string [] input = Console.ReadLine().Split(' ');
            
            int n = int.Parse(input[0]);
            int x = int.Parse(input[1]);

                // Tính tổng S(n) và làm tròn tới 3 chữ số thập phân
            double result = Roundf(S(n, x));

                // Xuất kết quả
            Console.WriteLine(result);
        }
    }
}
