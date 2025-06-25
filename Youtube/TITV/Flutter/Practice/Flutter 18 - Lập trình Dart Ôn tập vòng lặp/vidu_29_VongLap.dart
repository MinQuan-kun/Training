void main()
{
  // Vòng lặp for
  for(var i = 1; i <= 5; i++)
    print(i);

  // Iterable: List, Set
  // for-in
  var names = ['Le', 'Nhat', 'Minh'];
  for(var name in names)  
    print(name);

  // Vòng lặp while
  var i = 1;
  while(i <= 5)
  {
    print(i); 
    i++;
  }
  
  // Vòng lặp do-while
  var i2 = 1;
  do{
    print('lmao');
    i2++;
  }
  while(i2 <= 5);

  // break / continue
  
  //break: thoát khỏi vòng lặp
  var i3 = 1;
  do{
    print('Nhon');
    i3++;
    if(i3 == 3)
      break;
  }
  while(i3 <= 5);

  //continue: dùng để bỏ qua phần còn lại của vòng lặp hiện tại và tiếp tục
  var i4 = 1;
  do{
    if(i4 == 3)
      continue;
    print('Nhonn');
    i4++;
  }
  while(i4 <= 5);
  
}