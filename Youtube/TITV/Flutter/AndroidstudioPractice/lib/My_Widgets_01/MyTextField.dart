import "package:flutter/material.dart";

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

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

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              /*
              TextFiled là widget cho phép người dùng
              nhập văn bản thông qua bàn phím.
              Đây là thành phần thiết yếu trong hầu hết các ứng dụng
              từ biểu mẫu đăng nhập.tìm kiếm,
              đến nhập liệu trong các ứng dụng phức tạp
               */
              TextField(
                decoration: InputDecoration(
                  labelText: "Họ và tên",
                  hintText: "Nhập vào họ và tên của bạn",
                  suffixIcon: Icon(Icons.clear),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 30),

              TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Nhập email của bạn",
                  helperText: "Hãy điền thông tin email",
                  prefixIcon: Icon(Icons.mail),
                  suffixIcon: Icon(Icons.clear),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  filled: true,
                  fillColor: Colors.greenAccent,
                ),
                keyboardType: TextInputType.emailAddress,
              ),

              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  labelText: "Số điện thoại",
                  hintText: "Nhập số điện thoại của bạn",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  labelText: "Ngày sinh",
                  hintText: "Nhập ngày sinh của bạn",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.datetime,
              ),

              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  labelText: "Mật khẩu",
                  hintText: "Nhập mật khẩu",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.datetime,
                obscureText: true,
                obscuringCharacter: '*',
              ),
              SizedBox(height: 30),
              TextField(
                textInputAction: TextInputAction.done,
                onChanged: (value) {
                  print("Đang nhập: $value");
                },
                onSubmitted: (value){
                  print("Hoàn thành nội dung: $value");
                },
                decoration: InputDecoration(
                  labelText: "Bí mật",
                  hintText: "Nhập bí mật của bạn",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                  )
                ),
              ),
            ],
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
