import 'sinhvien.dart';

class LopHoc {
  String _tenLop;
  List<SinhVien> _dsSinhVien = [];
  //Constructor
  LopHoc(this._tenLop);
  //Getters
  String get tenLop => _tenLop;
  List get dsSinhVien => _dsSinhVien;
  //Setters
  set tenLop(String tenLop){
    _tenLop = (tenLop.isNotEmpty) ? tenLop : _tenLop ;
  }


  //methods
  void themSinhVien(SinhVien a ) => _dsSinhVien.add(a); 
  void hienThiDSSV(){
    print('\n \n ---------------------------------');
    print('Danh sách sinh viên: ');
    for(var sv in _dsSinhVien){
      print('---------------------------------');
      sv.hienThiThongTin();
      print('Xếp loại: ${sv.xepLoai()}');
    }
  }
}