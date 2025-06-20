void main()
{
  Object obj = 'Hello';
  // Kiem tra obj co phai string khong
  if(obj is String)
  {
    print('obj la 1 string');
  }
  // Kiem tra obj khong phai kieu int
  if(obj is! int)
  {
    print('obj khong phai int');
  }
  //Ep kieu
  String str = obj as String;
  print(str.toUpperCase());

}