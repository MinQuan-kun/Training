/*
expr1 ? expr2 : expr3;
Nếu expr1 đúng, trả về expr2; ngược lại trả về expr3

expr1 ?? expr2;
Nếu expr1 không null, trả về giá trị của nó
ngược lại trả về expr2;

*/
void main()
{
  var Kiemtra = (100%2==0)?"100 là só chẵn" : "100 là số lẻ"; 
  print(Kiemtra);

  var x = 100;
  var y = x ?? 50;
  print(y);

  int? z;
  y = z?? 30;
  print(y);
}