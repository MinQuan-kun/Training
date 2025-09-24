import 'package:flutter/material.dart';

class MyTextField2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField2> {
  final _textController = TextEditingController();
  String _InputText = "";

  @override
  Widget build(BuildContext context) {
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

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 30),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                labelText: "Nhập thông tin",
                hintText: "Thông tin của bạn",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
                suffixIcon: IconButton(
                  onPressed: () {
                    _textController.clear();
                  },
                  icon: Icon(Icons.clear),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  _InputText = value;
                });
              },
            ),
            SizedBox(height: 30),
            Text(
              "Bạn đã nhập: $_InputText",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
