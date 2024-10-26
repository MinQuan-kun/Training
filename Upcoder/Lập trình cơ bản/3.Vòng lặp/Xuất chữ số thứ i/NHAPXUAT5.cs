using System;
namespace Vitrii
{
    public class Program
    {
        static void Main(string[]args)
        {
            int position = int.Parse(Console.ReadLine());
            string number = Console.ReadLine();

            // Kiểm tra xem vị trí có hợp lệ không
            if (position >= 0 && position < number.Length)
            {
                // Xuất ra chữ số ở vị trí position
                Console.Write(number[position]);
            }
            else
            {
                // Nếu vị trí không hợp lệ, xuất ra -1
                Console.Write("-1");
            }
        }
    }
}