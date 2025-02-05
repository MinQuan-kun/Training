using System;
namespace PhanSo
{
    public class PhanSo
    {
        private int _tuSo;
        private int _mauSo;
        private int UCLN(int a, int b)
        {
            if(b == 0)
                return a;
            return UCLN(b, a % b);
        }
        public PhanSo()
        {
        }
        public void Nhap()
        {
            string[] input = Console.ReadLine().Split();
            _tuSo = int.Parse(input[0]);
            _mauSo = int.Parse(input[1]);
        }
        public void Xuat()
        {
            Console.WriteLine("{0}/{1}", _tuSo, _mauSo);
        }
        public void XuatNguoc()
        {
            Console.WriteLine("{0}/{1}", _mauSo, _tuSo);
        }
        public void Xuattu()
        {
            Console.WriteLine("{0}", _tuSo);
        }
        public void Xuatmau()
        {
            Console.WriteLine("{0}", _mauSo);
        }
        public void Rutgon()
        {
            int c = UCLN(_tuSo, _mauSo);
            _tuSo /= c;
            _mauSo /= c;
            Console.WriteLine("{0}/{1}", _tuSo, _mauSo);
        }
        public void Xuattong()
        {
            int a = _tuSo;
            int b = _mauSo;
            int c = _mauSo;
            int d = _tuSo;
            int T = a * d + b * c;
            int M = b * d;
            int ucln = UCLN(T, M);
            T /= ucln;
            M /= ucln;
            Console.Write("{0}/{1}", T, M);
        }
    }
    public class Program
    {
        static void Main(string[]args)
        {
            PhanSo ps = new PhanSo();
            ps.Nhap();
            ps.Xuat();
            ps.Xuattu();
            ps.Xuatmau();
            ps.XuatNguoc();
            ps.Rutgon();
            ps.Xuattong();
        }
    }
}