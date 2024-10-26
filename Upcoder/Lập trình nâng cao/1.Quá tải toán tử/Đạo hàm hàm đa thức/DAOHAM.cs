using System;
using System.Collections.Generic;
namespace DaoHam
{
    class DaThuc {
        public int n;
        public List<int> A;

        public DaThuc() {
            n = 0;
            A = new List<int>();
        }

        // Hàm nhập
        public static DaThuc FromInput() {
            DaThuc dt = new DaThuc();
            dt.n = int.Parse(Console.ReadLine());
            string[] input = Console.ReadLine().Split();
            dt.A = new List<int>(Array.ConvertAll(input, int.Parse));
            return dt;
        }

        // Hàm xuất
        public override string ToString() {
            bool isFirst = true;
            string result = "";
            for (int i = 0; i <= n; i++) {
                int coef = A[i];
                int exp = n - i;
                if (coef == 0) continue;
                if (!isFirst) {
                    result += coef > 0 ? "+" : "";
                } else {
                    isFirst = false;
                }
                if (Math.Abs(coef) != 1 || exp == 0) result += coef;
                else if (coef == -1) result += "-";
                if (exp > 0) result += "x";
                if (exp > 1) result += "^" + exp;
            }
            return isFirst ? "0" : result;
        }

        // Hàm tính đạo hàm
        public DaThuc DaoHam() {
            DaThuc res = new DaThuc();
            if (n == 0) {
                res.n = 0;
                res.A.Add(0);
                return res;
            }
            res.n = n - 1;
            for (int i = 0; i < n; i++) {
                res.A.Add(A[i] * (n - i));
            }
            return res;
        }
    }

    class Program {
        static void Main() {
            DaThuc p = DaThuc.FromInput();
            Console.WriteLine(p);
            DaThuc p1 = p.DaoHam();
            Console.WriteLine(p1);
            DaThuc p2 = p1.DaoHam();
            Console.Write(p2);
        }
    }
}