class SV{
  String _hoten;
  int _tuoi;
  String _maSV;
  double _diemTB;

  //Constructor
  SV(
    this._hoten,
    this._tuoi,
    this._maSV,
    this._diemTB
  );

  // Getters
  String get hoten => _hoten;
  int get tuoi => _tuoi;
  String get maSV => _maSV;
  double get diemTB => _diemTB;

  // Setters
  set hoten(String _hoten)
  {
    if(hoten.isNotEmpty)
      _hoten = hoten;
  }

  set tuoi(int tuoi)
  {
    _tuoi = (tuoi >0) ? tuoi: _tuoi;
  }

  set MaSV(String _maSV)
  {
    _maSV = (maSV.isNotEmpty)? maSV : _maSV;
  }

  set diemTB(double _diemTB)
  {
    if(diemTB >= 0 && diemTB <= 10)
      _diemTB = diemTB;
  }

  // Methds
  void hienthithongtin()
  {
    print("Họ tên: $_hoten");
    print("Tuổi: $_tuoi");
    print("Mã sinh viên: $_maSV");
    print("Điểm trung bình: $_diemTB");

  }

  String Xeploai()
  {
    if(_diemTB >= 8.0) return 'Giỏi';
    else if(_diemTB >= 6.5) return 'Khá';
    else if(_diemTB >= 5.0) return 'Trung bình';
    else return 'Yếu';
  }
}