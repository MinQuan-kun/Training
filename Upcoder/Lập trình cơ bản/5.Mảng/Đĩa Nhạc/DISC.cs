using System;
using System.Collections.Generic;
namespace Dianhac
{
    public class Program {
        static void Main() {
            var inputs = Console.ReadLine().Split();
            int n = int.Parse(inputs[0]); // số lượng đĩa

            List<int> disks = new List<int>();
            for (int i = 1; i <= n; i++) {
                disks.Add(i);
            }

            // Nhập chuỗi các số đĩa cần rút
            var actions = Array.ConvertAll(Console.ReadLine().Split(), int.Parse);

            foreach (var x in actions) {
                // Tìm và xóa đĩa x
                disks.Remove(x);
                // Đưa đĩa x lên trên cùng
                disks.Insert(0, x);
            }

            // In ra thứ tự các đĩa nhạc
            Console.WriteLine(string.Join(" ", disks));
        }
    }
}
