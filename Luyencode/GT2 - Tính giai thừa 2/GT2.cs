using System;
namespace Giaithua
{
    public class Program
    {
        // Hàm tính giai thừa của một số nguyên không âm
        static string Factorial(int n)
        {
            // Mảng dùng để lưu trữ kết quả giai thừa (mỗi phần tử là một chữ số)
            int[] result = new int[5000]; // Giả sử kết quả sẽ có tối đa 5000 chữ số
            result[0] = 1;  // Giai thừa của 0 và 1 là 1
            
            int resultSize = 1;  // Kích thước của kết quả tính đến lúc này

            // Tính giai thừa từ 2 đến n
            for (int x = 2; x <= n; x++)
            {
                int carry = 0;  // Biến carry để lưu giá trị dư khi nhân
                for (int i = 0; i < resultSize; i++)
                {
                    int prod = result[i] * x + carry;  // Tính tích và cộng với dư
                    result[i] = prod % 10;  // Lưu chữ số cuối cùng vào mảng
                    carry = prod / 10;  // Lưu phần dư vào carry
                }

                // Xử lý phần dư còn lại (nếu có)
                while (carry != 0)
                {
                    result[resultSize] = carry % 10;
                    carry = carry / 10;
                    resultSize++;
                }
            }

            // Chuyển mảng result thành chuỗi để hiển thị kết quả
            string factorialResult = "";
            for (int i = resultSize - 1; i >= 0; i--)
            {
                factorialResult += result[i].ToString();
            }

            return factorialResult;
        }

        static void Main(string[]args)
        {
            // Đọc số bộ test
            int t = int.Parse(Console.ReadLine());
            if(t > 0)
            {
                // Đọc một dòng chứa các số cần tính giai thừa
                string[] numbers = Console.ReadLine().Split(); // Tách chuỗi theo khoảng trắng
        
                // Xử lý từng số trong mảng numbers
                foreach (string number in numbers)
                {
                    if (int.TryParse(number, out int n)) // Kiểm tra xem chuỗi có thể chuyển thành int không
                        Console.WriteLine(Factorial(n));  // Tính và in kết quả giai thừa
                }
            }
        }
    }
}
