class Nhanvien{
  String _maNV;
  String _tenNV;
  double _LuongCB;

  //Constructor
  Nhanvien(this._maNV, this._tenNV, this._LuongCB);

  //Getters
  String get maNV => _maNV;
  String get tenNV => _tenNV;
  double get luong => _LuongCB;
  
  //Setters
  set maNV(String _maNV)
  {
    _maNV = (maNV.isNotEmpty) ? maNV: _maNV;
  }

  set tenNV(String _tenNV)
  {
    if(tenNV.isNotEmpty)
      _tenNV = tenNV;
  }

  set luong(double _LuongCB)
  {
    if(luong > 0)
      _LuongCB = luong;
  }

  // methods
  double tinhluong()
  {
    return _LuongCB * 1.2;
  }

  void hienthithongtin()
  {
    print("Mã NV : $_maNV");
    print("Tên NV: $_tenNV");
    print("Lương cơ bản: $_LuongCB");
    print("Tổng lương ${tinhluong()}");
  }
}