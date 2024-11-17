using System;
namespace Chuoi
{
    public class Program
    {
        static void Main(string[]args)
        {
            string s = Console.ReadLine();  // Đọc chuỗi từ người dùng
        
            // Thay thế tất cả dấu phẩy bằng dấu cách
            s = s.Replace(',', ' ');

            // In chuỗi sau khi thay thế
            Console.Write(s);
        }
    }
}