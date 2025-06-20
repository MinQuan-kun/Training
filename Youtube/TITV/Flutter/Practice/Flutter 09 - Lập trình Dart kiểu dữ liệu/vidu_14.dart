void main()
{
  //int kiểu số nguyên
  int x = 100;

  //double kiểu số thực
  double y = 100.5;

  // num: có thể là số nguyên và số thực
  num z = 10;
  num t = 10.75;

  // Chuyển chuỗi sang số nguyên
  var one = int.parse('1');
  print(one==1? 'TRUE':'FALSE'); 

  // Chuyển chuỗi sang số thực
  var onePointone = double.parse('1.1');
  print(onePointone==1.1);

  // Số nguyên => chuỗi
  String oneAsstring = 1.toString();
  print(oneAsstring);

  // Số thực -> chuỗi
  String PiassString = 3.14159.toStringAsFixed(2); 
  print(PiassString);
}