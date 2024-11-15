using System;
namespace CS10
{
    public class Program
    {
        // Hàm chuyển đổi từ hệ cơ số 2 sang cơ số 10
        static long Change(string input)
        {
            long decimalValue = 0;
            long baseValue = 1;

            // Duyệt ngược qua từng ký tự trong chuỗi nhị phân
            for (int i = input.Length - 1; i >= 0; --i)
            {
                if (input[i] == '1') 
                {
                    decimalValue += baseValue;  // Nếu là '1', cộng vào kết quả
                }
                baseValue *= 2;  // Tăng bậc của cơ số (2^i)
            }

            return decimalValue;
        }

        static void Main(string[]args)
        {
            int N;  // Số lượng test case
            N = int.Parse(Console.ReadLine());
            
            // Duyệt qua từng test case
            for (int i = 0; i < N; ++i)
            {
                string input = Console.ReadLine();
                
                // Chuyển đổi nhị phân sang thập phân và in kết quả
                Console.WriteLine(Change(input));
            }
        }
    }
}