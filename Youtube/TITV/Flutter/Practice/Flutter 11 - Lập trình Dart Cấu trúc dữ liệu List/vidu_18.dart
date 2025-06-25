void main()
{
  // ĐỊNH NGHĨA:
  // - List là tập hợp các phần tử có thứ tự và có thể trùng lặp
  // - các phần tử được truy cập bằng chỉ số (index) từ 0
  // - Kích thước có thể thay đổi được

  List<String> list1 = ['A', 'B', 'C']; // Trực tiếp
  var list2 = [1, 2, 3];
  List<String> list3 = []; // list rống
  var list4 = List<int>.filled(3, 0); // Tạo list (list có kích thước cố định) có 3 phần tử toàn bộ là số 0
  print(list4);

  // 1. Thêm phần tử:
  list1.add('D'); // Thêm 1 phần tử vào cuối list
  list1.addAll(['A', 'C']);
  list1.insert(0, 'Z'); //Chèn vào vị trí 1 kí tự
  list1.insertAll(1, ['1', '0']);
  print(list1);

  // 2. Xóa phần tử bên trong list:
  list1.remove('Z'); // Xóa phần tử theo giá trị
  list1.removeAt(0); // xóa phần tử tại ví trí index
  list1.removeLast(); // xóa phần tử tại ví trí cuối
  list1.removeWhere((e)=> e == 'B'); // xóa phần tử theo điều kiện
  list1.clear(); // xóa sạch
  print(list1);

  // 3. Truy cập phần tử:
  print(list2[0]); // Lấy phần tử tại vị trí index
  print(list2.first); // Lấy phần tử đầu tiên
  print(list2.last); // Lấy phần tử cuối cùng
  print(list2.length); // Lấy độ dài của list

  // 4. Kiểm tra
  print(list2.isEmpty); // Kiểm tra rỗng
  print('List 3: ${list3.isNotEmpty?'Không rỗng':'rỗng'}');
  print(list4.contains(0)); // Kiếm tra có chứa giá trị x không ?
  print(list4.indexOf(0)); // Lấy vị trí đầu tiên thấy giá trị x
  print(list4.lastIndexOf(0)); // Lẫy vị trí cuối cùng thấy giá trị x

  // 5. Biến đổi
  list4 = [2, 1, 3, 9, 0, 10];
  print(list4);
  list4.sort(); // Sắp xếp tăng dần
  print(list4);
  print(list4.reversed); // Đảo ngược
  list4 = list4.reversed.toList();
  print(list4);

  // 7. Cắt và nối
  var subList = list4.sublist(1, 3); // Cắt một sublist từ 1 đến < 3
  print(subList);
  var str_joined = list4.join(",");
  print(str_joined);

  // 8. Duyệt các phần tử bên trong List
  list4.forEach((element){
    print(element);
  });
  
}