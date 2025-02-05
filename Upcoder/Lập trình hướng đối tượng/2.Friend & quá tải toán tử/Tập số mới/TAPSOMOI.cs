// Code này về mặt chạy chương trình output sẽ đúng nhưng chấm sẽ 0 điểm vì không thỏa yêu cầu 
using System;
namespace Tapsomoi
{
    public class Tapsomoi
    {
        private int x;
        private int y;
        private int z;
        private int t;
        public Tapsomoi(int a, int b, int c, int d)
        {
            x = a;
            y = b;
            z = c;
            t = d;
        }
        public Tapsomoi()
        {
            x = 0;
            y = 0;
            z = 0;
            t = 0;
        }

        public void Nhap()
        {
            string[] input = Console.ReadLine().Split();
            x = int.Parse(input[0]);
            y = int.Parse(input[1]);
            z = int.Parse(input[2]);
            t = int.Parse(input[3]);
        }
        
        // Toán tử cộng
        public static Tapsomoi operator +(Tapsomoi a, Tapsomoi b)
        {
            return new Tapsomoi(a.x + b.x, a.y + b.y, a.z + b.z, a.t + b.t);
        }

        // public static Tapsomoi operator =(Tapsomoi a, Tapsomoi b)
        // {
        //     return new Tapsomoi(a.x, a.y, a.z, a.t);
        // }

        public static bool operator <(Tapsomoi a, Tapsomoi b)
        {
            int SumA = a.x + a.y + a.z + a.t;
            int SumB = b.x + b.y + b.z + b.t;
            return SumA < SumB;
        }
        
        public static bool operator >(Tapsomoi a, Tapsomoi b)
        {
            return !(a < b);
        }

        public static Tapsomoi operator ++(Tapsomoi a)
        {
            return new Tapsomoi(a.x + 1, a.y + 1, a.z + 1, a.t + 1);
        }

        // ToString để hiển thị
        public override string ToString()
        {
            return $"[TapSoMoi] {x};{y};{z};{t}";
        }
    }
    public class Program
    {
        static void Main(string[]args)
        {
            Tapsomoi a = new Tapsomoi();
            a.Nhap();
            Tapsomoi b = new Tapsomoi();
            b.Nhap();
            Console.WriteLine(a);
            Console.WriteLine(b);
            Console.WriteLine(a < b ? "true" : "false");
            Console.WriteLine(a + b);
            Console.Write(a++);
        }
    }
}