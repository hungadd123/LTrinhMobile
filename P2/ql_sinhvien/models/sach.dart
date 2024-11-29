class Sach {
  String _maSach;
  String _tenSach;
  String _tacGia;
  bool _trangThai;

  //Constructor
  Sach(this._maSach,
      this._tenSach, 
      this._tacGia , 
      this._trangThai);
  //Getters
  String get maSach => _maSach;
  String get tenSach => _tenSach;
  String get tacGia => _tacGia;
  bool get trangThai => _trangThai;

  //Setters
  set maSach(String maSach ){
    _maSach = (maSach.isNotEmpty)? maSach : _maSach; 
  }
  set tenSach(String tenSach){
    _tenSach = (tenSach.isNotEmpty) ? tenSach : _tenSach;
  }
  set tacGia(String tacGia){
    _tacGia = (tacGia.isNotEmpty)?tacGia : _tacGia;
  }
  set trangThai(bool trangThai){
    _trangThai = trangThai;
  }


  //methods
  void showThongTin(){
    print('Mã sách: $maSach');
    print('Tên sách: $tenSach');
    print('Tác giả: $tacGia');
    print('Mã sách: ${trangThai?'Đã mượn' : 'Chưa mượn'}');
  }  

}