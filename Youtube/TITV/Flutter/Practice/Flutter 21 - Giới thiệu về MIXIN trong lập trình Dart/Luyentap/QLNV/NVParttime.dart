import "NV.dart";

class NVParttime extends Nhanvien{
  double _doanhso;
  double _hoahong;

  NVParttime(String maNV,
              String hoten,
              double luongcb,
              this._doanhso,
              this._hoahong
  ): super(maNV, hoten, luongcb);

  //Getters
  double get doanhso => _doanhso;
  double get hoahong => _hoahong;

  //Setters
  set doanhso(double _doanhso)
  {
    _doanhso = (doanhso > 0)?doanhso:_doanhso;
  }

  set hoahong(double _hoahong)
  {
    _hoahong = (hoahong >= 0 && hoahong <= 1)?hoahong:_hoahong;
  }

  @override
  double tinhluong()
  {
    return super.tinhluong() + _doanhso * _hoahong;
  }
  
  @override
  void hienthithongtin()
  {
    super.hienthithongtin();
    print("Doanh dố: $doanhso");
    print("Hoa hồng: $hoahong");
  }
}