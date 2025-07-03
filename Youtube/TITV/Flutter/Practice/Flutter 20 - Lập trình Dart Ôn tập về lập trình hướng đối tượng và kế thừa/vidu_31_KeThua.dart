class Product{
  double price;
  int quantity;
  String name;

  Product(this.price, this. quantity, this. name);

  void showTotal()
  {
    print("Total price is :${price * quantity}");
  }
}

class Tablet extends Product 
{
  double width = 0;
  double height = 0;

  Tablet(this.width, this. height, double price, int quantity, String name) 
    : super(price, quantity, name);

  @override
  void showTotal() {
    print("Name of Tablet: $name");
    super.showTotal();
  }
}

void main()
{
  Product p = new Product(6000000, 1, "Laptop");

  Product p1 = new Tablet(7, 6, 2000000, 10, "Ipad Pro");

  p.showTotal();

  p1.showTotal();


  // Tablet tablet = Tablet(10, 20, 100, 2, "Samsung");
  // tablet.showTotal();
}