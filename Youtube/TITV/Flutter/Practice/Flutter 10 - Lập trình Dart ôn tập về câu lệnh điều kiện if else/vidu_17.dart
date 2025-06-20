// Giải pt bậc 2
import 'dart:io';
import 'dart:math';
void main()
{
  double a = 0, b = 0, c = 0;
  // input a
  do {
    stdout.write('Enter a: ');
    String? inputA = stdin.readLineSync();
    if(inputA != null)
    {
      a = double.tryParse(inputA) ?? 0; // có bắt lỗi
    }
  } while (a == 0);
  // input b
    stdout.write('Enter b: ');
    String? inputB = stdin.readLineSync();
    if(inputB != null)
    {
      b = double.tryParse(inputB) ?? 0;
    }
  // input c
    stdout.write('Enter c: ');
    String? inputC = stdin.readLineSync();
    if(inputC != null)
    {
      c = double.tryParse(inputC) ?? 0;
    }

    double Delta = b*b - 4*a*c;
    print("PT: ${a}x^2 + ${b}x + $c = 0");
    if (Delta < 0)
    {
      print("PT vô nghiệm!");
    } 
    else if(Delta == 0)
    {
      double x = -b/(2*a);
      print("PT có nghiệm kép là: ${x.toStringAsFixed(2)}");
    }
    else
    {
      double x1 = (-b + sqrt(Delta))/(2*a);
      double x2 = (-b - sqrt(Delta))/(2*a);
      print("PT 2 nghiệm phân biệt x1: ${x1.toStringAsFixed(2)}, x2: ${x2.toStringAsFixed(2)}");
    }
}