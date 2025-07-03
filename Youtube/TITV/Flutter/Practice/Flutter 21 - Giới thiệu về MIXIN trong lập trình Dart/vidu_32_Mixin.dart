/*
Tham khảo bài này: 

Mixin là một lớp có chứa các phương thức và thuộc tính dùng để gộp vào một lớp
khác. Mixin không thể đuợc sử dụng để tạo đối tượng trực tiếp. Để sử dụng mixin, sử 
dụng từ khóa with.
*/

mixin M{
  int ?a;
  void showSomething()
  {
    print("Print message ....");
  }
}

class B{
  String name = "Class B";
  void displayInformation(){
    print("Information from B");
  }
}

class C extends B with M
{
  @override
  void displayInformation()
  {
    showSomething();
    a = 100;
  }
}
void main()
{
  var c = C();
  c.displayInformation();
  

}