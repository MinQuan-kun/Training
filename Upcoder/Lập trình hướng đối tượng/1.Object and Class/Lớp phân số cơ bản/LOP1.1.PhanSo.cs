using System;
namespace PSo
{
    public class PhanSo
    {
        private int tuSo;
        private int mauSo;

        public void Nhap()
        {
            string[] input = Console.ReadLine().Split();
            tuSo = int.Parse(input[0]);
            mauSo = int.Parse(input[1]);
        }

        public void Xuat()
        {
            Console.WriteLine($"{tuSo}/{mauSo}");
        }
    }
    public class Program
    {
        static void Main(string[] args)
        {
            PhanSo ps = new PhanSo();
            ps.Nhap();
            ps.Xuat();
        }
    }
}