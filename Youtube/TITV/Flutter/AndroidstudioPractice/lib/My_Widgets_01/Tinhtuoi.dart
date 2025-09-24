import 'package:flutter/material.dart';

class tinhtuoi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Tinhtuoi();
}

class _Tinhtuoi extends State<tinhtuoi> {
  final _textController = TextEditingController();
  String _InputText = "";
  var tuoi = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tính tuổi",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 30),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                labelText: "Nhập Năm sinh",
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
                  try {
                    tuoi = int.parse(_InputText);
                  } catch (e) {
                    tuoi = 0; // hoặc -1 nếu muốn đánh dấu lỗi
                  }
                });
              },
            ),
            SizedBox(height: 30),
            Text(
              _InputText.isEmpty || tuoi <= 0 || tuoi > DateTime.now().year
                  ? "Vui lòng nhập năm sinh hợp lệ"
                  : "Tuổi của bạn là: ${DateTime.now().year - tuoi}",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
