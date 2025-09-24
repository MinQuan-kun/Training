import "package:flutter/material.dart";

class MyGesture extends StatelessWidget {
  const MyGesture({super.key});

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
            // GestureDetector - bắt được các sự kiện
            GestureDetector(
              onTap: () {
                print("Check");
              },
              onDoubleTap: () {
                print("Double tap");
              },
              onPanUpdate: (details)
              {
                print('test, kéo di chuyển: ${details.delta}');
              },
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: Center(child: Text("click me!")),
              ),
            ),
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
