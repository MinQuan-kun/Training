//Code nay tam thoi khong dung
using System;
namespace Employee
{
    public class Employee
    {
        private int id;
        private string firstName;
        private string lastName;
        private double salary;
        public Employee()
        {
            id = 0;
            firstName = "";
            lastName = "";
            salary = 0.0;
        }
        public Employee(int _id, string _firstName, string _lastName, double _salary)
        {
            id = _id;
            firstName = _firstName;
            lastName = _lastName;
            salary = _salary;
        }
        public void Nhap()
        {
            this.id = int.Parse(Console.ReadLine());
            this.firstName = Console.ReadLine();
            this.lastName = Console.ReadLine();
            this.salary = double.Parse(Console.ReadLine());
        }
        public void Xuat()
        {
            string name = firstName + " " + lastName;
            salary = Math.Round(salary, 2);
            Console.WriteLine("Employee[id={0},name={1},salary=${2}]", id, name, salary);
        }
        public int getID()
        {
            return id;
        }
        public string getFirstName()
        {
            return firstName;
        }
        public string getLastName()
        {
            return lastName;
        }
        public string getName()
        {
            string name = firstName + " " + lastName;
            return name;
        }
        public double getSalary()
        {
            return salary;
        }
        public void setSalary(double _salary)
        {
            salary = _salary;
        }
        public double getAnnualSalary()
        {
            double luong = 12 * salary;
            return luong;
        }
        public double raiseSalary(double percent)
        {
            return salary *= (1 + percent / 100);
        }
        // public string ToString()
        // {
        //     return $"Employee[id={id}, name={firstName} {lastName}, salary=${salary:F2}]";
        // }

        public static bool operator ==(Employee a, Employee b)
        {
            return a.salary == b.salary;
        }

        public static bool operator !=(Employee a, Employee b)
        {
            return !(a == b);
        }

        public override bool Equals(object obj)
        {
            Employee other = obj as Employee;
            if (other == null)
                return false;
            return this == other;
        }

        // Ghi đè GetHashCode
        public override int GetHashCode() => id.GetHashCode() ^ firstName.GetHashCode() ^ lastName.GetHashCode() ^ salary.GetHashCode();

        public static bool operator >(Employee a, Employee b)
        {
            return a.salary > b.salary;
        }
        public static bool operator <(Employee a, Employee b)
        {
            return a.salary < b.salary;
        }
        
        public static Employee operator ++(Employee a)
        {
            a.raiseSalary(10);
            return a;
        }
        public void change(double A)
        {
            salary -= A;
        }
        public void Xuatluong()
        {
            Console.WriteLine("${0:F2}", salary);
        }
    }
    public class Program
    {
        static void Main(string[]args)
        {
            Employee a = new Employee();
            a.Nhap();
            Employee b = new Employee();
            b.Nhap();
            string[] input = Console.ReadLine().Split();
            double A = double.Parse(input[0]);
            double B = double.Parse(input[1]);
            a.Xuat();
            b.Xuat();
            if(a == b)
                Console.WriteLine("BANG NHAU");
            else if(a > b)
                Console.WriteLine("LON HON");
            else if(a < b)
                Console.WriteLine("NHO HON");
            // double x = a.getSalary();
            // x = (1 + 10 / 100) * x;
            // x -= A;
            // Console.WriteLine("${0:F2}", x);
            a.change(A);
            b.change(B);
            a.Xuatluong();
        }
    }
}