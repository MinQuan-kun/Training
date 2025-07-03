import "SV.dart";

class Lophoc{
  String _tenlop;
  List<SV> _danhsachsv = [];

  Lophoc(this._tenlop);

  // Getters
  String get Tenlop => _tenlop;
  List<SV> get DSsinhvien => _danhsachsv;

  // Setters
  set tenlop(String tenlop)
  {
    if(tenlop.isNotEmpty)
      _tenlop = tenlop;
  }

  // thêm sinh viên
  void Themsinhvien(SV sv) => _danhsachsv.add(sv);

  void hienthids()
  {
    print("\n\n -----------------------");
    print("Danh sách sinh viên của lớp ${_tenlop}:");
    for(var sv in _danhsachsv)
    {
      print("\n--------------------");
      sv.hienthithongtin();
      print('Xếp loại : ${sv.Xeploai()}');
    }
  }
}