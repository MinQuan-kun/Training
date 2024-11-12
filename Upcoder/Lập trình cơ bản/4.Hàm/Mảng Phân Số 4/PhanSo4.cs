using System;
using System.Collections.Generic;
namespace MINPS 
{
    struct PS
    {
        public int tu, mau;
        public PS(int x, int y)
        {
            tu = x;
            mau = y;
        }
        private static int UCLN(int a, int b)
        {
            if(b == 0)
                return a;
            return UCLN(b, a% b);
        }
        public PS rutgon()
        {
            int c = UCLN(tu, mau);
            return new PS(tu / c, mau / c);
        }
         public static bool operator >(PS a, PS b)
        {
        return a.tu * b.mau > a.mau * b.tu;
        }

        public static bool operator <(PS a, PS b)
        {
        return a.tu * b.mau < a.mau * b.tu;
        }
         public static PS Parse(string input)
        {
        var parts = input.Split(' ');
        int tu = int.Parse(parts[0]);
        int mau = int.Parse(parts[1]);
        return new PS(tu, mau);
        }
        public override string ToString()
        {
        PS x = rutgon();
        return $"{x.tu}/{x.mau}";
        }
    }
    public class Program
    {
        static void Main(string[]args)
        {
            List<PS> ps = new List<PS>();
            string line;
            
            while (!string.IsNullOrEmpty(line = Console.ReadLine()))
            {
                PS f = PS.Parse(line);
                ps.Add(f);
            }

            PS min = ps[0];
            foreach (PS f in ps)
            {
                if (f < min)
                    min = f;
            }
            Console.Write(min);
        }
    }
}
