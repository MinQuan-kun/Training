using System;
namespace ps
{
    public class PhanSo
    {
        public int Tu { get; set; }
        public int Mau { get; set; }

        // Hàm tính ước chung lớn nhất (UCLN)
        public static int UCLN(int a, int b)
        {
            if (b == 0)
                return a;
            return UCLN(b, a % b);
        }

        // Hàm rút gọn phân số
        public static PhanSo RutGon(PhanSo ps)
        {
            int ucln = UCLN(Math.Abs(ps.Tu), Math.Abs(ps.Mau));
            ps.Tu /= ucln;
            ps.Mau /= ucln;
            if (ps.Mau < 0) // Đảm bảo mẫu số luôn dương
            {
                ps.Tu = -ps.Tu;
                ps.Mau = -ps.Mau;
            }
            return ps;
        }

        // Hàm nhập phân số
        public static PhanSo Nhap()
        {
            var ps = new PhanSo();
            string[] input = Console.ReadLine().Split();
            ps.Tu = int.Parse(input[0]);
            ps.Mau = int.Parse(input[1]);
            return ps;
        }

        // Hàm xuất phân số
        public void Xuat()
        {
            if (this.Tu == 0)
                Console.WriteLine(0);
            else
                Console.WriteLine($"{this.Tu}/{this.Mau}");
        }

        // Kiểm tra phân số hợp lệ (mẫu khác 0)
        public static bool KiemTraPhanSo(PhanSo ps)
        {
            return ps.Mau != 0;
        }

        // Các phép toán phân số
        public static PhanSo operator +(PhanSo a, PhanSo b)
        {
            var c = new PhanSo();
            c.Tu = a.Tu * b.Mau + a.Mau * b.Tu;
            c.Mau = a.Mau * b.Mau;
            return RutGon(c);
        }

        public static PhanSo operator -(PhanSo a, PhanSo b)
        {
            var c = new PhanSo();
            c.Tu = a.Tu * b.Mau - a.Mau * b.Tu;
            c.Mau = a.Mau * b.Mau;
            return RutGon(c);
        }

        public static PhanSo operator *(PhanSo a, PhanSo b)
        {
            var c = new PhanSo();
            c.Tu = a.Tu * b.Tu;
            c.Mau = a.Mau * b.Mau;
            return RutGon(c);
        }

        public static PhanSo operator /(PhanSo a, PhanSo b)
        {
            var c = new PhanSo();
            c.Tu = a.Tu * b.Mau;
            c.Mau = a.Mau * b.Tu;
            return RutGon(c);
        }
    }

    public class Program
    {
        static void Main()
        {
            PhanSo A = PhanSo.Nhap();
            PhanSo B = PhanSo.Nhap();

            // Kiểm tra xem có phân số nào có mẫu bằng 0 không
            if (!PhanSo.KiemTraPhanSo(A) || !PhanSo.KiemTraPhanSo(B))
            {
                Console.WriteLine(-1);
                return;
            }

            // Tính và in kết quả các phép toán
            PhanSo tong = A + B;
            tong.Xuat();

            PhanSo hieu = A - B;
            hieu.Xuat();

            PhanSo tich = A * B;
            tich.Xuat();

            // Kiểm tra nếu phân số B có mẫu khác 0 để thực hiện phép chia
            if (B.Tu != 0)
            {
                PhanSo thuong = A / B;
                thuong.Xuat();
            }
        }
    }
}
