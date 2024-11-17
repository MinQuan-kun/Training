using System;

class Program {
    static void Main() {
        // Nhập các giá trị trên cùng một dòng
        string[] input = Console.ReadLine().Split();
            long a1 = long.Parse(input[0]);
            long b1 = long.Parse(input[1]);
            long a2 = long.Parse(input[2]);
            long b2 = long.Parse(input[3]);

            // Kiểm tra điều kiện giao nhau
            if (Math.Max(a1, a2) <= Math.Min(b1, b2)) {
                Console.WriteLine("YES");
            } else {
                Console.WriteLine("NO");
            }
    }
}