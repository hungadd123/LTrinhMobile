class SinhVien {
  String _hoTen;
  int _tuoi;
  String _maSinhVien;
  double _diemTB;

  //Constructoc
  SinhVien(this._hoTen, this._tuoi, this._maSinhVien, this._diemTB);

  //Getters
  String get hoTen => _hoTen;
  int get tuoi => _tuoi;
  String get maSinhVien => _maSinhVien;
  double get diemTB => _diemTB;
  //Setters
  set hoTen(String hoTen){
    if(hoTen.isNotEmpty){
      _hoTen = hoTen;
    }
  }
  set tuoi(int tuoi){
    _tuoi = (tuoi > 0) ? tuoi : _tuoi;
  }
  set maSinhVien(String maSinhVien) {
    _maSinhVien = (maSinhVien.isNotEmpty) ? maSinhVien : _maSinhVien;
  }
  set diemTB(double diemTB){
    _diemTB = (diemTB > 0) && (diemTB < 10 )? diemTB : _diemTB ;
  }

  //methods
  void hienThiThongTin(){
    print("Họ tên: $hoTen");
    print("Tuổi: $tuoi");
    print("Mã sinh viên: $maSinhVien");
    print("Điểm trung bình: $diemTB");
  }
  String xepLoai(){
    if(diemTB >= 8.0) return 'Giỏi';
    if(diemTB >= 6.5) return 'Khá';
    if(diemTB >= 5.0) return 'Trung bình';
    return 'Yếu';
  }
}
