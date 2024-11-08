using System;
using System.Globalization;
namespace Diem
{
    class Diem
    {
        public int X { get; set; }
        public int Y { get; set; }

        public Diem(int x = 0, int y = 0)
        {
            X = x;
            Y = y;
        }

        public double DoDai(Diem other)
        {
            return Math.Sqrt(Math.Pow(other.X - X, 2) + Math.Pow(other.Y - Y, 2));
        }
    }

    public class Program
    {
        static bool Thanghang(Diem A, Diem B, Diem C)
        {
            double Chuvi = A.DoDai(B) + C.DoDai(A) + B.DoDai(C);
            double p = Chuvi / 2;
            double s = Math.Sqrt(p * (p - A.DoDai(B)) * (p - C.DoDai(A)) * (p - B.DoDai(C)));
            return s == 0;
        }

        static void Main(string[]args)
        {
            var coordsA = Array.ConvertAll(Console.ReadLine().Split(), int.Parse);
            var A = new Diem(coordsA[0], coordsA[1]);

            var coordsB = Array.ConvertAll(Console.ReadLine().Split(), int.Parse);
            var B = new Diem(coordsB[0], coordsB[1]);

            var coordsC = Array.ConvertAll(Console.ReadLine().Split(), int.Parse);
            var C = new Diem(coordsC[0], coordsC[1]);

            Console.WriteLine($"({A.X},{A.Y}) ({B.X},{B.Y}) ({C.X},{C.Y})");
            Console.WriteLine(A.DoDai(B).ToString("F3", CultureInfo.InvariantCulture));
            Console.WriteLine(C.DoDai(A).ToString("F3", CultureInfo.InvariantCulture));
            Console.WriteLine(B.DoDai(C).ToString("F3", CultureInfo.InvariantCulture));

            if (Thanghang(A, B, C))
            {
                Console.WriteLine(-1);
            }
            else
            {
                double Chuvi = A.DoDai(B) + C.DoDai(A) + B.DoDai(C);
                double p = Chuvi / 2;
                double s = Math.Sqrt(p * (p - A.DoDai(B)) * (p - C.DoDai(A)) * (p - B.DoDai(C)));
                Console.WriteLine($"{s:F3} {Chuvi:F3}");
            }
        }
    }
}
