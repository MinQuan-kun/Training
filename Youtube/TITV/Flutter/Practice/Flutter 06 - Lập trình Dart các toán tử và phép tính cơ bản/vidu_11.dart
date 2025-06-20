void main()
{
  int Toan = 8;
  int Van = 7;
  int sum = 0;
  //cong diem tung mon
  sum+= Toan; //sum = 8
  sum+= Van;  //sum = 15
  //tinh diem trung binh
  double diemTB = sum/2;  //diemtb = 7.5
  //Gan diem dat/ khong dat
  String ?Ketqua; //Ketqua = null
  Ketqua ??= 'Chua xet';  // Ketqua = chuaxet

  if(diemTB > 5)
  {
    Ketqua = 'Dat'; //Ketqua = dat
  }
  print('Diem TB: $diemTB');
  print('Ket qua: $Ketqua');  
}