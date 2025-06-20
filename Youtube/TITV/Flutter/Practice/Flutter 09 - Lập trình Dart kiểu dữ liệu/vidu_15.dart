/*
  chuỗi là tập hợp các kí tự UTF-16.
*/

void main()
{
  var s1 = 'Nguyen Huu Minh Quan';
  var s2 = "Nhon.vn";

  //Chen giá trị của 1 biến vào trong chuỗi : ${....}

  double diemtoan = 9.5;
  double diemvan = 7.5;
  var s3 = 'Xin chào $s1, bạn đã tổng điểm là: ${diemvan + diemtoan} ';
  print(s3);

  // Tạo chuỗi nhiều dòng
  var s4 = '''
    Dòng 1
    Dòng 2
    Dòng 3
  ''';

  var s5 = """""
    Dòng 1
    Dòng 2
    Dòng 3
  """;

  var s6 = "Đây là 1 đoạn văn bản \n ok!";
  print(s6);

  var s7 = r"Đây là 1 đoạn văn bản \n ok!"; // raw
  print(s7);

  var s8 = "Chuôi8 " + "Chuỗi9";
  print(s8);

  var s9 = 'Chuỗi '
            "này "
            "là "
            "chuỗi";
  print(s9);
}