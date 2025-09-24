import "package:flutter/material.dart";

class MyScaffold extends StatelessWidget {
  //constructor
  const MyScaffold({super.key});

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
        backgroundColor: Colors.white30,
      ),
      backgroundColor: Colors.cyan,

      body: Center(
        child: Text(
          "Nội dung chính",
          style: TextStyle(
            color: Colors.black, // Màu chữ
            fontWeight: FontWeight.bold,
          ),
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
