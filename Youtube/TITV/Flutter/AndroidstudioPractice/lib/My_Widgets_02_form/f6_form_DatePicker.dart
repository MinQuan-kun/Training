import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FormBasicDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FormBasicDemoState();
}

class _FormBasicDemoState extends State<FormBasicDemo> {
  // Sử dụng Global key để truy cập form
  // Khai báo key
  final _formKey = GlobalKey<FormState>();
  final _fullnameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _phone = TextEditingController();
  final _dateofbirthController = TextEditingController();
  bool _obscurePassword = true;
  bool _confirmPassword = true;
  bool _isagree = false;
  String? _name;
  String? _selectanimal;
  String? _gender;
  DateTime? _dateofbirth;
  final List<String> _animalname = ["Tỷ", "Tín", "Bình", "Hoàng", "Kiệt"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form cơ bản")),
      body: Padding(
        padding: EdgeInsets.all(16),
        // Form: là widget chứa và quản lý các trường nhập liệu
        // Key: được sử dụng để truy cập vào trạng thái của form
        // Phương thức validate() kiểm tra tính hợp lệ của tất cả trường hợp
        // Phương thức save() gọi hàm onSaved của môi trường
        // Phương thức reset() đặt lại giá trị của tất cả trường
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // TextFormField là phiên bản mở rộng của TextField tích hợp với Form
              // Validator là hàm kiểm tra tính hợp lệ của dữ liệu
              // Controller cho phép truy cập và điều khiển giá tri bên trong TexFormField
              // obscureText cho phép ẩn văn bản
              // AutovalidateMode điều khiển thời điểm validation được kích hoạt
              TextFormField(
                controller: _fullnameController,
                decoration: InputDecoration(
                  labelText: "Họ và tên",
                  hintText: "Nhập họ và tên của bạn",
                  helperText: "Hãy nhập họ tên ở đây",
                  border: OutlineInputBorder(),
                ),
                onSaved: (value) {
                  _name = value;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Vui lòng nhập thông tin";
                  }
                  return null;
                },
              ),
              SizedBox(height:8),
              FormField<String>(
                validator: (value) {
                  if (_gender == null) return "Vui lòng chọn giới tính";
                  return null;
                },
                builder: (FormFieldState<String> state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Giới tính",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 8),
                      Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 4,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: RadioListTile<String>(
                                  title: Text("Nam"),
                                  value: 'male',
                                  groupValue: _gender,
                                  contentPadding: EdgeInsets.zero,
                                  dense: true,
                                  visualDensity: VisualDensity.compact,
                                  onChanged: (value) {
                                    setState(() {
                                      _gender = value;
                                      state.didChange(value);
                                    });
                                  },
                                ),
                              ),
                              Expanded(
                                child: RadioListTile<String>(
                                  title: Text("Nữ"),
                                  value: 'female',
                                  groupValue: _gender,
                                  contentPadding: EdgeInsets.zero,
                                  dense: true,
                                  visualDensity: VisualDensity.compact,
                                  onChanged: (value) {
                                    setState(() {
                                      _gender = value;
                                      state.didChange(value);
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      if (state.hasError)
                        Padding(
                          padding: EdgeInsets.only(left: 12, top: 4),
                          child: Text(
                            state.errorText!,
                            style: TextStyle(color: Colors.red, fontSize: 12),
                          ),
                        ),
                    ],
                  );
                },
              ),
              SizedBox(height: 8,),
              TextFormField(
                controller: _dateofbirthController,
                decoration: InputDecoration(
                  labelText: "Ngày sinh của bạn",
                  hintText: "Nhập ngày sinh của bạn",
                  helperText: "Nhập ngày sinh ở đây",
                  prefixIcon: Icon(Icons.calendar_today)
                ),
                readOnly: true,
                onTap: () async{
                  DateTime? pickedDate = await showDatePicker(
                      context: context,
                      firstDate: DateTime(1900),
                      lastDate: DateTime(2500));
                  if(pickedDate!= null)
                    {
                      String formattedDate = DateFormat("dd/MM/yyyy").format(pickedDate);
                      setState(() {
                        _dateofbirthController.text = formattedDate;
                        _dateofbirth = pickedDate;
                      });
                    }
                },
                validator: (value){
                  if(value == null || value.isEmpty)
                    return "Vui lòng chọn ngày tháng sinh";
                  return null;
                },
              ),
              SizedBox(height: 8),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: "Email của bạn",
                  hintText: "Nhập Enail của bạn",
                  helperText: "Nhập email của bạn ở đây",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Không được để trống!";
                  }
                  if (!RegExp(
                    r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                  ).hasMatch(value)) {
                    return "Email không hợp lệ";
                  }
                  return null;
                },
              ),
              SizedBox(height: 8,),
              TextFormField(
                controller: _phone,
                decoration: InputDecoration(
                  labelText: "Số điện thoại",
                  hintText: "Nhập số điện thoại",
                  helperText: "Nhập SĐT ở đây",
                  prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder()
                ),
                keyboardType: TextInputType.phone,
                validator: (value){
                  if(value == null || value.isEmpty)
                    return "Không được để trống!";
                  if(!RegExp(r'^\+?[0-9]{10,12}$').hasMatch(value))
                    return "Số điện thoại không hợp lệ";
                  return null;
                },
              ),
              SizedBox(height: 8),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: "Mật khẩu",
                  hintText: "Nhập mật khẩu",
                  helperText: "Nhập mật khẩu ở đây",
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  ),
                  border: OutlineInputBorder(),
                ),
                obscureText: _obscurePassword,
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return "Hãy nhập mật khẩu";
                  if (value.length < 6) return "Mật khẩu không hợp lệ";
                  return null;
                },
              ),
              SizedBox(height: 8,),
              TextFormField(
                controller: _confirmPasswordController,
                decoration: InputDecoration(
                  labelText: "Nhập lại mật khẩu",
                  hintText: "Vui lòng nhập lại mật khẩu",
                  helperText: "Nhập lại mật khẩu ở đây",
                  prefixIcon: IconButton(
                    icon: Icon(
                      _confirmPassword
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _confirmPassword = !_confirmPassword;
                      });
                    },
                  ),
                  border: OutlineInputBorder(),
                ),
                obscureText: _confirmPassword,
                validator: (value){
                  if(value == null || value.isEmpty)
                    return "Vui lòng nhập lại";
                  if(value != _passwordController.text)
                    return "Mật khẩu nhập lại phải giống ở trên";
                  return null;
                },
              ),

              SizedBox(height: 8),
              DropdownButtonFormField(
                decoration: InputDecoration(
                  labelText: "Con vật",
                  border: OutlineInputBorder(),
                ),
                items: _animalname.map((animal) {
                  return DropdownMenuItem(child: Text(animal), value: animal);
                }).toList(),
                onChanged: (value) {},
                value: _selectanimal,
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return "Vui lòng chọn 1 con";
                  return null;
                },
              ),
              SizedBox(height: 8),
              CheckboxListTile(
                title: Text("Đồng ý với điều khoản ?"),

                value: _isagree,
                onChanged: (value) {
                  setState(() {
                    _isagree = !_isagree;
                    print("Đồng ý $_isagree");
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Xin chào $_name")),
                        );
                      }
                    },
                    child: Text("Submit"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _formKey.currentState!.reset();
                      setState(() {
                        _name = null;
                        _dateofbirthController.text = "";
                      });
                    },
                    child: Text("Reset"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
