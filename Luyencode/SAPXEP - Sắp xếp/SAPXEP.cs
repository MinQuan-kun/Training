using System;
using System.Collections.Generic;
namespace Xapsep
{
    public class Program
    {
        static void Main(string[]args)
        {
            // Đọc số lượng phần tử
            int n = int.Parse(Console.ReadLine());
            int[] a = new int[n];
            
            // Đọc các phần tử của mảng
            string[] input = Console.ReadLine().Split();
            for (int i = 0; i < n; i++)
            {
                a[i] = int.Parse(input[i]);
            }
            
            // Sắp xếp mảng theo thứ tự tăng dần
            Array.Sort(a);
            
            // Sử dụng Dictionary để đếm số lần xuất hiện của các phần tử
            Dictionary<int, int> count = new Dictionary<int, int>();
            
            foreach (int num in a)
            {
                if (count.ContainsKey(num))
                    count[num]++;
                else
                    count[num] = 1;
            }
            
            // In kết quả
            foreach (var kvp in count)
                Console.WriteLine($"{kvp.Key} {kvp.Value}");
        }
    }
}
