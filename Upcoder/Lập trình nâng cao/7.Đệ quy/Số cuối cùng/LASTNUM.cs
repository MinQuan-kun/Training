using System;
namespace LastNum
{
    public class Program
    {
        // Hàm tính tổng các chữ số của một số
        static int DigitSum(string num)
        {
            int sum = 0;
            foreach (char c in num)
            {
                sum += c - '0'; // Chuyển ký tự thành số nguyên
            }
            return sum;
        }

    // Hàm tính "last number" (số cuối cùng)
        static int LastNum(string num)
        {
            while (num.Length > 1)
            {
                int sum = DigitSum(num);
                num = sum.ToString(); // Chuyển lại số thành chuỗi để tiếp tục xử lý
            }
            return num[0] - '0'; // Trả về số cuối cùng
        }

        static void Main(string[]args)
        {
            string n = Console.ReadLine();
            Console.WriteLine(LastNum(n));
        }
    }
}
