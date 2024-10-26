using System;

namespace TamGiacSao
{
    class Program
    {
        static void Main(string[] args)
        {
            int n = int.Parse(Console.ReadLine()); // Nhập số dòng cần in
            for (int i = 1; i <= n; i++) { // Duyệt từ 1 đến n
                for (int j = 1; j <= i; j++) // In sao từ 1 đến i
                    Console.Write("*");
                Console.WriteLine(); // Xuống dòng sau mỗi hàng
            }
        }
    }
}
