import java.io.*;
import java.util.Scanner;
class Tong
{
    public static void main(String[]args throws IOException)
    {
        Scanner in = new Scanner(System.in);
        PrintStream out = System.out ;
        int a = in.nextInt();
        int b = in.nextInt();
        out.print(a+b);
    }
}