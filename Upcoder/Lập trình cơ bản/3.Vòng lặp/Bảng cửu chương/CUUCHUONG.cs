using System;
namespace bangcuuchuong
public class Program {
    static void Main(string[]args) {
        int N = int.Parse(Console.ReadLine());
        int S = 0;

        for (int i = 1; i <= 10; i++) {
            S = i * N;
            Console.WriteLine(N + " x " + i + " = " + S);
        }
    }
}
