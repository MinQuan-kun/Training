using System;
namespace DaoHamDaThuc
{
    public class Program
    {
        static void XuatDaThuc(double[] a, int[] n, int k)
        {
            bool first = true;
            for (int i = 0; i < k; i++)
            {
                if (a[i] != 0)
                {
                    if (!first) Console.Write(" + ");
                    first = false;

                    if (n[i] == 0)
                        Console.Write(a[i]);
                    else if (n[i] == 1)
                    {
                        if (a[i] == 1) Console.Write("x");
                        else Console.Write(a[i] + "x");
                    }
                    else
                    {
                        if (a[i] == 1) Console.Write("x^" + n[i]);
                        else Console.Write(a[i] + "x^" + n[i]);
                    }
                }
            }
            Console.WriteLine();
        }

        static double TinhGiaTriDaThuc(double[] a, int[] n, int k, double x)
        {
            double S = 0;
            for (int i = 0; i < k; i++)
            {
                S += a[i] * Math.Pow(x, n[i]);
            }
            return S;
        }

        static void DaoHamDaThuc(double[] a, int[] n, int k)
        {
            bool first = true;
            int cnt = 0;
            for (int i = 0; i < k; i++)
                if (n[i] == 0)
                    cnt++;
            
            if (cnt == k)
            {
                Console.WriteLine(0);
                return;
            }

            for (int i = 0; i < k; i++)
            {
                if (n[i] > 0 && a[i] != 0)
                {
                    if (!first) Console.Write(" + ");
                    first = false;

                    double heSoDaoHam = a[i] * n[i];
                    int bacDaoHam = n[i] - 1;

                    if (bacDaoHam == 0)
                        Console.Write(heSoDaoHam);
                    else if (bacDaoHam == 1)
                        Console.Write(heSoDaoHam + "x");
                    else
                        Console.Write(heSoDaoHam + "x^" + bacDaoHam);
                }
            }
        }

        static void Main()
        {
            int k = int.Parse(Console.ReadLine());
            string []input1 = Console.ReadLine().Split(' ');
            string []input2 = Console.ReadLine().Split(' ');
            double[] a = new double[k];
            int[] n = new int[k];

            for (int i = 0; i < k; i++)
                a[i] = double.Parse(input1[i]);

            for (int i = 0; i < k; i++)
                n[i] = int.Parse(input2[i]);

            double x = double.Parse(Console.ReadLine());
            if (TinhGiaTriDaThuc(a, n, k, x) == 0)
            {
                Console.WriteLine(0);
                Console.WriteLine(0);
                Console.Write(0);
                return;
            }

            XuatDaThuc(a, n, k);
            double ketQua = TinhGiaTriDaThuc(a, n, k, x);
            Console.WriteLine(ketQua);
            DaoHamDaThuc(a, n, k);
        }
    }
}
