using System;

namespace SwitchNumbers
{
    class Program
    {
        static void Switch(int a, int b) {
            Console.Write($"{b} {a}"); // In ra hai số đã đổi chỗ
        }

        static void Main(string[] args) {
            int x, y;
            string[] input = Console.ReadLine().Split(); // Nhập vào hai số nguyên
            x = int.Parse(input[0]);
            y = int.Parse(input[1]);
            Switch(x, y); // Gọi hàm Switch để đổi chỗ và in ra
        }
    }
}
