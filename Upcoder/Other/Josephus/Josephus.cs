using System;
using System.Collections.Generic;
namespace Josephus
{
    public class Program
    {
        static void Josephus(int N, int M)
        {
            List<int> people = new List<int>();
            for (int i = 1; i <= N; i++)
            {
                people.Add(i);  // Khởi tạo danh sách từ 1 đến N
            }

            int idx = 0;  // Vị trí bắt đầu

            while (people.Count > 0)
            {
                idx = (idx + M - 1) % people.Count;  // Tìm vị trí người bị loại
                Console.Write(people[idx] + " ");  // In ra người bị loại
                people.RemoveAt(idx);  // Loại người khỏi danh sách
            }
        }

        static void Main()
        {
            string[] inputs = Console.ReadLine().Split();
            int N = int.Parse(inputs[0]);
            int M = int.Parse(inputs[1]);

            Josephus(N, M);
        }
    }
}
