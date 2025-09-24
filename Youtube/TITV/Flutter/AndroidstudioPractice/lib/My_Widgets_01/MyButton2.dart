import "package:flutter/material.dart";

class MyButton2 extends StatelessWidget {
  const MyButton2({super.key});

  @override
  Widget build(BuildContext context) {
    // Tra ve Scaffold - widget cung cap bo cuc Material Design co ban
    // Man hinh
    return Scaffold(
      //Tiêu đề của ứng dụng
      appBar: AppBar(
        title: Text(
          "MIKU TEST",
          style: TextStyle(
            color: Colors.white, // Màu chữ
            fontWeight: FontWeight.bold,
          ),
        ),
        //Màu nền
        backgroundColor: Colors.blue,
        // Độ bóng
        elevation: 4,
        actions: [
          IconButton(
            onPressed: () {
              print("B1");
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              print("B2");
            },
            icon: Icon(Icons.abc),
          ),
          IconButton(
            onPressed: () {
              print("B3");
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      backgroundColor: Colors.white,

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            // ElevateButton là một button nổi với hiệu ứng đổ bóng.
            // Thường được sử dụng cho các hành động chỉnh trong ứng dụng
            ElevatedButton(
              onPressed: () {
                print("Elevated Button");
              },
              child: Text("Miku", style: TextStyle(fontSize: 24)),
              style: ElevatedButton.styleFrom(
                // Màu nền
                backgroundColor: Colors.lightBlue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                //padding
                padding: EdgeInsets.symmetric(
                  horizontal: 20, // chiều ngang
                  vertical: 15    // chiều dọc
                ),
                elevation: 10, // độ bóng
                shadowColor: Colors.grey,
              ),
            ),
            SizedBox(height: 50),

            // InkWell
            // InkWell không phải là button,
            // nhưng nó cho phép tạo hiệu ứng gợn sóng (ripper effect)
            // khi nhấn vào bất kì widget nào.
            InkWell(
              onTap: (){print("KKKK");},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue)
                ),
                child: Text("Tetoooo đại ik"),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Nhấn");
        },
        child: Image.asset(
          'Img/Miku.jpg',
          // width: 30,
          // height: 30,
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('Img/homeMiku.jpg', width: 24, height: 24),
            label: "Màn hình chính",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('Img/SearchMiku.jpg', width: 24, height: 24),
            label: "Tìm kiếm",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('Img/User_Miku.jpg', width: 24, height: 24),
            label: "Cá nhân",
          ),
        ],
      ),
    );
  }
}
