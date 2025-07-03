import "dart:async";

/*
Future là gì ?

Hãy tưởng tượng bạn gọi món ăn tại một nhà hàng:
+ Bạn đặt món (gọi một hàm)
+ Nhân viên phục vụ nói "Vâng, tôi sẽ mang món ăn đến sau" (Nhận về một Future)
+ Bạn có thể làm việc khác trong lúc chờ đợi (Tiếp tục chạy code)
Khi món ăn được phục vụ (Future hoàn thành), bạn có thể thưởng thức nó (Sử dụng kết quả)

Future trong Dart cũng hoạt động tương tự
Đó là một cách để làm việc với các tác vụ
mất thời gian mà không phải chờ đợi (ví dụ: tải dữ liệu từ internet, đọc tệp).

Hiểu rõ về "async/await"
async và await là hai từ khóa đặc biệt trong Dart giúp làm việc với Future dễ dàng hơn

Từ khóa async:
- Khi thêm từ khóa async vào một hàm.
bạn đang nói với Dart: "Hàm này sẽ chứa code bất đồng bộ";

- Một hàm được đánh dấu async sẽ luôn luôn trả 
vể một Future (Ngay cả khi bạn không khai báo nó)

*/

Future<String> Layten() async {
  return "Nguyen Van A";
}

/*
Từ khóa await
- await chỉ có thể được sử dụng bên trong một hàm async
Khi bạn đặt await trước một Future, Dart sẽ:
- Tạm dừng thực thi hàm tại dòng đó
- Đợi future hoàn thành
- Trả về giá trị từ Future (Không còn đóng gói trong Future nữa)
- Tiếp tục thực thi những dòng code còn lại

await biến đổi Future<T> thành giá trị T, giúp code dễ đọc hơn
*/

// Hàm trả về Future
Future<String> taiDuLieu()
{
  return Future.delayed(Duration(seconds: 2), 
    () => "Dữ liệu đã tải xong"
    );
}

// Gọi hàm cách 1
void HamChinh()
{
  print("Bắt đầu tải dữ liệu"); //1
  Future<String> f = taiDuLieu();
  f.then((ketqua){
    print("Kết quả $ketqua");//2
  });
  print("Tiếp tục công việc khác.");//3
}

// Gọi hàm cách 2
void HamChinh2 () async
{
  print("Bắt đầu tải dữ liệu");
  String ketqua = await taiDuLieu(); //1
  print("Kết quả $ketqua"); //2
  print("Tiếp tục công việc khác."); //3
}

void main()
{
  HamChinh2();
}