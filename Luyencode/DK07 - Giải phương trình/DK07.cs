using System;

namespace PTB2
{
    public class Program
    {
        static void Main(string[] args)
        {
            // Đọc và xử lý chuỗi đầu vào
            string[] input = Console.ReadLine().Split(' ');
            double[] coefficients = new double[3];
            int currentIndex = 0;

            for (int i = 0; i < input.Length; i++)
            {
                if (input[i] == "-")
                {
                    // Gán giá trị âm cho phần tử tiếp theo
                    if (i + 1 < input.Length && double.TryParse(input[i + 1], out double nextValue))
                    {
                        coefficients[currentIndex++] = -nextValue;
                        i++; // Bỏ qua phần tử tiếp theo
                    }
                }
                else if (double.TryParse(input[i], out double number))
                {
                    coefficients[currentIndex++] = number;
                }
            }

            // Lấy các hệ số a, b, c từ mảng
            double a = coefficients[0];
            double b = coefficients[1];
            double c = coefficients[2];

            // Xử lý phương trình bậc 2
            if (a == 0)
            {
                if (b == 0)
                {
                    if (c == 0)
                        Console.Write("WOW");
                    else
                        Console.Write("NO");
                }
                else if (c == 0)
                    Console.Write("{0:0.00}", b * 0);
                else
                    Console.Write("{0:0.00}", (-c / b));
            }
            else
            {
                double Delta = Math.Pow(b, 2) - 4 * a * c;
                if (Delta < 0)
                    Console.Write("NO");
                else if (Delta == 0)
                    Console.Write("{0:0.00}", -b / (2 * a));
                else if (Delta > 0)
                {
                    double x1 = (-b - Math.Sqrt(Delta)) / (2 * a);
                    double x2 = (-b + Math.Sqrt(Delta)) / (2 * a);
                    if (x1 > x2)
                        Console.Write("{0:0.00} {1:0.00}", x2, x1);
                    else
                        Console.Write("{0:0.00} {1:0.00}", x1, x2);
                }
            }
        }
    }
}
