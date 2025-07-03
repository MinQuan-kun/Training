// Định nghĩa một mixin để xử lý validation dữ liệu
mixin ValidationMixin
{
  bool isEmailValid(String email)
  {
    final RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegExp.hasMatch(email);
  }

  bool isPasswordValid(String password)
  {
    // Kiểm tra mật khẩu có ít nhất 8 ký tự, chứ chữ hoa và chữ thường và số
    final RegExp passwordRegExp = 
      RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$');
    return passwordRegExp.hasMatch(password);
  }

  bool isPhoneNumberValid(String PhoneNumber)
  {
    final RegExp phoneRegExp = RegExp(r'^\+?[0-9]{10,12}$');
    return phoneRegExp.hasMatch(PhoneNumber);
  }
}

// Định nghĩa mixin để xử lý lưu trữ
mixin StorageMixin {
  Future<void> saveData(String key, dynamic value) async 
  {
    print("Lưu dữ liệu $value với key: $key");
    // Trong trường hợp thực tế sẽ sử dụng SharedPreferences hoặc Hive
  }

  Future<dynamic> getData(String key) async
  {
    print("Lấy dữ liệu với key: $key");
    // Trong trường hợp thực tế sẽ trả về dữ liệu từ SharedPreferences hoặc Hive
    return null;
  }

  Future<void> removeData(String key) async
  {
    print("Xóa dữ liệu với key $key");
  }
}

// Lớp cơ ở cho các màn hình đăng nhập/ đăng ký
class AuthScreen
{
  void ShowLoading()
  {
    print("Hiển thị loading...");
  }

  void hideLoading()
  {
    print("Ẩn loading....");
  }

  void navigateToHome()
  {
    print("Chuyển đến trang chủ");
  }
}
// Lớp màn hình đăng nhập kế thừa AuthScreen và sử dụng cả hai mixin
class LoginScreen extends AuthScreen with ValidationMixin, StorageMixin
{
  String email = '';
  String password = '';

  void login()
  {
    if(!isEmailValid(email))
    {
      print("Email không hợp lệ");
      return;
    }
    if(!isPasswordValid(password))
    {
    print("Mật khẩu không hợp lệ");
    return;
    }
     ShowLoading();

    // Giả lập đăng nhập thành công
    print("Đăng nhập thành công với email: $email");
    saveData('user_logged_in', true);
    saveData('user_email', email);

    hideLoading();
    navigateToHome();
  }
}

// Màn hình đăng ký cũng sử dụng các mixin tương tự
class SignupScreen extends AuthScreen with ValidationMixin, StorageMixin{
  String email = '';
  String password = '';
  String PhoneNumber = '';

  void signup()
  {
    // Kiểm tra tính hợp lệ của dữ liệu
    if(!isEmailValid(email))
    {
      print("email không hợp lệ!");
      return;
    }

    if(!isPasswordValid(password))
    {
      print("Mật khẩu không hợp lệ!");
      return;
    }

    if(!isPhoneNumberValid(PhoneNumber))
    {
      print("Số điện thoại không hợp lệ!");
      return;
    }

    ShowLoading();

    //Giả lập đăng ký thành công
    print("Đăng ký thành công với email: $email và số điện thoại: $PhoneNumber");

    // Lưu thông tin người dùng
    saveData('user_logged_in', true);
    saveData('user_email', email);
    saveData('user_phone_number', PhoneNumber);

    hideLoading();
    navigateToHome();
  }
}

void main()
{
  // Tạo đối tượng loginScreen và sử dụng
  final loginscreen = LoginScreen();
  loginscreen.email == 'example@gmail.com';
  loginscreen.password == '123';
  loginscreen.login();

  print("------------------------------");
  
}