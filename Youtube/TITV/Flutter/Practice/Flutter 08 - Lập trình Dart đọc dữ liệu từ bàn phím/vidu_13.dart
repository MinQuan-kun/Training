//Gọi thư viện nhập dữ liệu từ bàn phím
import 'dart:io';

void main()
{
  // Nhập tên người dùng
  stdout.write( 'Enter your name: ');
  String name = stdin.readLineSync()!; // Cam kết không Null

  //Nhập tuổi
  stdout.write( 'Enter age: ');
  int age = int.parse(stdin.readLineSync()!);

  print("Xin chao $name, tuoi cua ban la $age");

}