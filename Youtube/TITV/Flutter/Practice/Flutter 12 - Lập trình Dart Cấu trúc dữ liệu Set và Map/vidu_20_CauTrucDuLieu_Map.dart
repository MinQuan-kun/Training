void main()
{
  // ĐỊNH NGHĨA:
  // - Map là cấu trúc dữ liệu lưu trữ dạng key-value
  // - Mỗi key là duy nhất
  // - Value có thể trùng lặp
  // - Key và value vó thể là bất kỳ kiểu dữ liệu nào
  
  // Cách khai báo:

  // cách 1: Khai báo trực tiếp
  Map<String, dynamic> user1 = {
    'name' : 'Nam',
    'age' : 20,
    'isStudent': true
  };

  // Cách 2: Sử dụng var
  var user2 = <String, dynamic>{
    'name' : 'Hoa',
    'age' : 25
  };

  // Cách 3: Khởi tạo Map rỗng
  Map<int, String> numbers = {};
  var emptyMap = Map<String, int>();

  // Các phương thức:

  // 1. thêm và cập nhật:
  user1['email'] = 'nam@gmail.com';    // thêm entry mới
  user1['age'] = 21;                   // Cập nhật value
  user1.putIfAbsent('phone', () => '0123456789'); // thêm entry mới nếu key chưa tồn tại
  user1.addAll({
    'address' : 'Hà Nội',
    'gender' : 'male'
  });

  // 2. Xóa
  user1.remove('age');                                // Xóa theo key
  user1.removeWhere((key, value) =>  value == null);  // Xóa theo điều kiện
  user1.clear();                                      // Xóa hết
  
  // 3. Truy cập:
  print(user1['name']); // truy cập theo key
  print(user1.length); // Lấy số lượng entry

  // lấy value an toàn với giá trị mặc định
  String phone = user1['phone'] ?? 'Số điện thoại không có'; // Nếu key không tồn tại thì lấy giá trị mặc

  // 4. Kiểm tra:
  print(user1.isEmpty);               // Kiểm tra Map rỗng hay không
  print(user1.isNotEmpty);            // Kiểm tra Map không rỗng hay không
  print(user1.containsKey('name'));   // Kiểm tra key có tồn tại hay không
  print(user1.containsValue('Nam'));  // Kiểm tra value có tồn tại hay không

  // 5. Lấy danh sách:
  print(user1.keys); // Lấy danh sách key
  print(user1.values); // Lấy danh sách value
  print(user1.entries); // Lấy danh sách entry

  // 6. Duyệt Map:
  // duyệt theo key-value
  user1.forEach((key, value){
    print('$key: $value');
  });

  // Duyệt qua entries
  for(var entry in user1.entries)
  {
    print('${entry.key}: ${entry.value}');
  }

  // 7. Biến đổi:
  // Map key thành chữ hoa
  var upperMap = user1.map((key, value) => 
  MapEntry(key.toUpperCase(), value));

  // Lọc Map
  var filteredMap = user1.entries
      .where((entry) => entry.value is String)
      .toList();
  
  // Ví dụ thực tế

  // 1. Lưu trữ thông tin sản phẩm trong giỏ hàng
  Map<String, int> cart = {
    'SP001' : 2,
    'SP002' : 1,
    'SP003' : 3
  };

  // Thêm sản phầm vào giỏ 
  void addToCarrt(String productID){
    cart.update(
      productID,
       (quantity) => quantity + 1,
       ifAbsent: () => 1
    );
  }

  // 2. Lưu cài đặt ứng dụng
  Map<String, dynamic> settings = {
    'darkMode' : false,
    'fontSize' : 14,
    'language' : 'vi',
    'notifications' : true
  };

  // Cập nhật cài đặt
  void updateSetting(String key, dynamic value)
  {
    settings[key] = value;
  }
  // 3. Cache dữ liệu
  Map<String, String> cache = {};

  void cacheData(String key, String data){
    cache[key] = data;
  }

  String getData(String key){
    return cache[key] ?? 'No data';
  }

  // 4. Quản lý trạng thái form
  Map<String, String> formErrors = {};

  void setError(String filled, String error){
    formErrors[filled] = error;
  }

  void clearError(String field)
  {
    formErrors.remove(field);
  }

  bool hasErrors(){
    return formErrors.isNotEmpty;
  }
}