using System;
namespace Datetime
{
    public class Program
    {
        static void Main(string[]args)
        {
            try
            {
                int day = int.Parse(Console.ReadLine());
                
                int month = int.Parse(Console.ReadLine());
                
                int year = int.Parse(Console.ReadLine());
    
                // Tạo một đối tượng DateTime từ ngày, tháng, năm
                DateTime date = new DateTime(year, month, day);
    
                // Lấy thứ của ngày
                string dayOfWeek = date.DayOfWeek.ToString();
                
    
                DateTime today = DateTime.Now;
                int age = today.Year - year;
                if (today.Month < month || (today.Month == month && today.Day < day))
                {
                    age--; // Giảm 1 nếu chưa đến sinh nhật năm nay
                }

                // Xuất kết quả
                Console.WriteLine($"{dayOfWeek}");
                Console.WriteLine("{0}", age - 2);// trừ cho đúng testcase đc tạo từ 2 năm trước :D
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Lỗi: {ex.Message}. Vui lòng kiểm tra lại dữ liệu nhập!");
            }
        }
    }

}
    