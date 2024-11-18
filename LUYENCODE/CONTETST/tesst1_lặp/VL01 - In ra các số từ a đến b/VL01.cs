using System;
using System.Linq;
namespace Luythua
{
    public class Program
    {
        static void Main(string[]args)
        {
            string input = Console.ReadLine();
            string[] parts = input.Split(' '); 
            int start = int.Parse(parts[0]);
            int end = int.Parse(parts[1]);
            
             if (start > end)
            {
                int temp = start;
                start = end;
                end = temp;
            }

            // Tạo danh sách các số trong khoảng từ start đến end
            var numbers = Enumerable.Range(start, end - start + 1).ToList();
            
            // Sắp xếp danh sách từ bé đến lớn
            numbers.Sort();
            for (int i = 0; i < numbers.Count; i++)
            {
                if (i == numbers.Count - 1)
                {
                    Console.Write(numbers[i]); // Không in khoảng trắng sau số cuối cùng
                }
                else
                {
                    Console.Write(numbers[i] + " "); // In khoảng trắng giữa các số
                }
            }
        }
    }
}