void main()
{
  var a = 2;
  print(a);

  // ??= : se gan gia tri neu bien null

  int? b;
  // Nếu b đang null thì gán b = 5
  b ??= 5;
  print('b = $b');

  // Nếu b đang null thì gán b = 10, lúc này b đã gán = 5 nên ko gán 10
  b ??= 10;
  print('b = $b');
}