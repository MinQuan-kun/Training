using System;
using System.Collections.Generic;
namespace Hinhhoc
{
    public class HinhChuNhat
    {
        protected double _chieudai;
        protected double _chieurong;

        public HinhChuNhat(double dai, double rong)
        {
            _chieudai = dai;
            _chieurong = rong;
        }

        public virtual double ChuVi()
        {
            return 2 * (_chieudai + _chieurong);
        }

        public double DienTichHCN()
        {
            return  _chieudai * _chieurong;
        }
    }

    public class HinhVuong:HinhChuNhat
    {
        public HinhVuong(double canh) : base(canh, canh) { }
        public override double ChuVi()
        {
            return 4 * _chieudai;
        }
    }
    public class Program
    {
        public static void Main(string[] args)
        {
            List<HinhChuNhat> danhSachHinh = new List<HinhChuNhat>();
            double maxchuvi = 0;
            
            string input = Console.ReadLine();;
            while(true)
            {
                string line = Console.ReadLine();
                if (string.IsNullOrEmpty(line)) break;  // Dừng khi gặp dòng trống

                string[] parts = line.Split();

                if(input == "HCN")
                {
                    double dai = double.Parse(parts[0]);
                    double rong = double.Parse(parts[1]);
                    danhSachHinh.Add(new HinhChuNhat(dai, rong));
                }
                else if(input == "HV")
                {
                    double canh = double.Parse(parts[0]);
                    danhSachHinh.Add(new HinhVuong(canh));
                }
            }
            // Tìm chu vi lớn nhất
            foreach (var hinh in danhSachHinh)
            {
                double chuVi = hinh.ChuVi();
                if (chuVi > maxchuvi)
                    maxchuvi = chuVi;
            }
            Console.Write(maxchuvi);
        }
    }
}