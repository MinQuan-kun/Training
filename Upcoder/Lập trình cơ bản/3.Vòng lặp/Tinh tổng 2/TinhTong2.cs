using System;

namespace TongSoNguyenTo
{
    class Program
    {
        static bool KTSNT(int n) {
            if (n < 2)
                return false; // Các số nhỏ hơn 2 không phải là số nguyên tố
            for (int i = 2; i < n; i++)
                if (n % i == 0) // Kiểm tra xem n có chia hết cho i không
                    return false; // Nếu có, n không phải là số nguyên tố
            return true; // Nếu không, n là số nguyên tố
        }

        static void Main(string[] args) {
            int n;
            while (int.TryParse(Console.ReadLine(), out n)) { // Nhập vào số nguyên n
                int snt = 0; // Khởi tạo tổng các chữ số nguyên tố
                while (n != 0) { // Khi n khác 0
                    if (KTSNT(n % 10)) // Kiểm tra chữ số cuối cùng
                        snt += n % 10; // Nếu là số nguyên tố, cộng vào tổng
                    n /= 10; // Bỏ chữ số cuối cùng
                }
                Console.WriteLine(snt); // In ra tổng các chữ số nguyên tố
            }
        }
    }
}
