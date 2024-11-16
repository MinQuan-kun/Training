using System;

namespace PTB2
{
    public class Program
    {
        static void Main(string[] args)
        {
            // Đọc và xử lý chuỗi đầu vào
            string[] input = Console.ReadLine().Split(' ');
            // Lấy các hệ số a, b, c từ mảng
            double a = double.Parse(input[0]);
            double b = double.Parse(input[2]);
            if(input[1] == "+")
                Console.Write("{0:0.00}", a + b);
            else if(input[1] == "-")
                Console.Write("{0:0.00}", a - b);
            else if(input[1] == "*")
                Console.Write("{0:0.00}", a * b);
            else if(input[1] == "/")
            {
                if(b == 0)
                    Console.Write("Math Error");
                else
                    Console.Write("{0:0.00}", a / b); 
            }      
        }
    }
}
