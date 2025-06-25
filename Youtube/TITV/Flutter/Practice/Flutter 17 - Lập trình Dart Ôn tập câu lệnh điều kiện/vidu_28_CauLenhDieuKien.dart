import 'dart:io';
void main()
{
  stdout.write( 'Enter number: ');
  int x = int.parse(stdin.readLineSync()!);
  if(x %2 == 0){
    print("Đây là số chẵn");
  }else {
    print("Đây là số lẻ");
  }
  
  stdout.write( 'Enter thang: ');
  int thang = int.parse(stdin.readLineSync()!);
  switch(thang)
  {
    case 1 || 3 || 5 || 7 || 8 || 10 || 12: 
      print("Tháng $thang có 31 ngày");
      break;
    case 2: 
      print("Tháng $thang có 28 ngày");
      break;
    case 4 || 6 || 9 || 11: 
      print("Tháng $thang có 30 ngày");
      break;
    default: 
      print("Tháng $thang không có trong năm");
      break;
  }
}