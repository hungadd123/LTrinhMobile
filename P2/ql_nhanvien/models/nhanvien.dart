class NhanVien{
  String _maNhanVien;
  String _hoTen;
  double _luongCoBan;
  NhanVien(this._maNhanVien, 
          this._hoTen, 
          this._luongCoBan);
  //Getters
  String get maNhanVien => _maNhanVien;
  String get hoTen => _hoTen;
  double get luongCoBan => _luongCoBan;
  //Setters
  set maNhanVien(String maNhanVien){
    _maNhanVien = (maNhanVien.isNotEmpty)? maNhanVien : _maNhanVien;

  }
  set hoTen(String hoTen){
    _hoTen = (hoTen.isNotEmpty)? hoTen:_hoTen;

  }
  set luongCoBan(double luongCoBan){
    _luongCoBan = (luongCoBan > 0)? luongCoBan:_luongCoBan;

  }

  //methods
  double tinhLuong(){
    return luongCoBan;
  }
  void hienThiThongTin(){
    print('Mã nhân viên: $maNhanVien');
    print('Họ tên nhân viên: $hoTen');
    print('Lương cơ bản: $luongCoBan');
    print('Tổng lương: ${tinhLuong()}');
  }

}