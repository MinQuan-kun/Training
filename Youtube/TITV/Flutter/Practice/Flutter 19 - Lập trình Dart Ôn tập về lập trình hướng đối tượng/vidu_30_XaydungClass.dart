/*
Dart là một ngôn ngữ lập trình hướng đối tượng, nơi mọi thứ đều là đối tượng và
các đối tượng này được tạo ra từ các lớp (class).

Mỗi đối tượng trong Dart có thể có các thuộc tính (biển) và phương thức (hàm).
Thuộc tính lưu trữ dữ liệu và phương thức thực hiện các hành động.

Sử dụng dấu chấm (.) để tham chiếu đến một thuộc tính hoặc phương thức:

*/

import 'dart:math';
import 'dart:io';
class Point{
  double x, y;

  Point(this.x, this.y);

  double distanceTo(Point other)
  {
    var dx = x - other.x;
    var dy = y - other.y;
    return sqrt(dx * dx + dy * dy);
  }
}

class Point2{
  double? x; // Thuoc tinh instance x, ban dau mac dinh la null
  double z = 0; // Thuoc tính instance z, ban đầu có giá trị là 0
}

//=====
double X_ = 1.5;

class Point3
{
  double? x = X_; // Có thể truy cập khai báo không phụ thuộc vào this

  double? y;
  late double? z = this.x;

  Point3(this.x, this.y, this.z);
}
/*
Phương thức khởi tạo
Ta có thể tạo đố tượng bằng cách sử dụng phương thức khởi tạo (constructor).
Tên constructor có thể là ClassName hoặc ClassName.identifer.
*/

//=========
/*
Phương thức getters, setter
Trong Dart, getters và setters là các phương thức đặc biệt cung cấp quyền truy cập
đọc và ghi vào các thuộc tính của một đối tượng. Ta có thể tạo thêm các thuộc tính
bằng cách triển khai getters và setters thông qua các từ khóa get và set.
*/

class Rectangle{
  double? left, top, width, height;
  late double _z;

  Rectangle(this.left,  this.top, this.width, this.height);

  double get z => _z;
  set z(double value) => _z = value;

  @override
  String toString()
  {
    return left.toString() +"," +top.toString() + "     " + width.toString() + "," + height.toString();
  }

  @override
  bool operator ==(Object other) {
    if(identical(this, other)) return true;
    if(other is! Rectangle) return false;

    return  left == other.left &&
            top == other.top &&
            width == other.width &&
            height == other.height;
  }
}
//=============
/*
Thuộc tính và phương thức static
Trong Dart, thuộc tính và phương tính (static) được sử dụng để chia sẻ dữ
liệu và chức năng giữa các đối tượng của một lớp. Điều này có nghĩa là ta không
cần phải tạo ra một đối tượng để truy cập vào các thuộc tính hoặc phương thức này
*/
class MyMath{
  static const double PI = 3.14159;

  static double sqr(double x)
  {
    return x * x;
  }
}




void main()
{
  stdout.write("Nhập điểm p1: ");
  var p1 = stdin.readLineSync();
  if(p1 == null)
    return;
  var p1data = p1.split(' ').map(double.parse).toList();
  var p1x = Point(p1data[0], p1data[1]);

  stdout.write("Nhập điểm p2: ");
  var p2 = stdin.readLineSync();
  if(p2 == null)
    return;
  var p2data = p2.split(' ').map(double.parse).toList();
  var p2x = Point(p2data[0], p2data[1]);
  double distance = p1x.distanceTo(p2x);
  print("Khoảng cách giữa p1 và p2 là: ${distance.toStringAsFixed(2)}");


  //====
  Point2 p2_1 = Point2();
  print(p2_1.x);

  //====
  print(MyMath.PI);
  print(MyMath.sqr(5));

  //====
  Rectangle r1 = Rectangle(0 , 0, 15, 10);
  r1.z = 100;
  print(r1.z);

  //====
  Rectangle r2 = Rectangle(0 , 0, 15, 10);
  print(r1 == r2);
}