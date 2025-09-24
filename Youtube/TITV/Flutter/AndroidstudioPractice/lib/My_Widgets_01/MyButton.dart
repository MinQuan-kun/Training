import "package:flutter/material.dart";

class MyButton extends StatelessWidget {
  const MyButton({super.key});

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

      body: Center(child: Column(
        children: [
          SizedBox(height: 50),
          // ElevateButton là một button nổi với hiệu ứng đổ bóng.
          // Thường được sử dụng cho các hành động chỉnh trong ứng dụng
          ElevatedButton(
              onPressed: (){print("Elevated Button");},
              child: Text("Miku", style: TextStyle(fontSize: 24),))
          ,SizedBox(height: 20),

          //TextButton là một button phẳng
          // ,không có độ bóng,
          // thường dùng cho các hành động thứ yếu
          // hoặc trong các thành phần như dialog, card
          TextButton(
              onPressed: (){print("Teto");},
              child: Text("Teto", style: TextStyle(fontSize: 24),))

          ,SizedBox(height: 20),
          //Outline Button là button có viền bao quanh
          // không có màu nền,
          // Phù hợp cho các thay thế
          OutlinedButton(
              onPressed: (){print("OutlineButton");},
              child: Text("Outline", style: TextStyle(fontSize: 24),))

          ,SizedBox(height: 20),
          // IconButton là button chỉ gồm icon,
          // không có văn bản
          // thường dùng trong Appbar, toolbar
          IconButton(
              onPressed: (){print("icon");},
              icon: Icon(Icons.favorite)
          )


          ,SizedBox(height: 20),
          // FloatingActionButton là button hình tròn,
          // nổi trên giao diện
          // thường dùng cho hành động chính của màn hình
          FloatingActionButton(
              onPressed: (){print("icon");},
              child: Icon(Icons.add)
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
