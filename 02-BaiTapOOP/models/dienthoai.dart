class DienThoai{
  String _maDienThoai;
  String _tenDienThoai;
  String _hangSanXuat;
  double _giaNhap;
  double _giaBan;
  int _slTon;
  bool _trangThai;
  //Constructor
  DienThoai(this._maDienThoai, this._tenDienThoai,
  this._hangSanXuat, this._giaNhap, this._giaBan
  , this._slTon, this._trangThai);
  //Getters
  String get maDienThoai => _maDienThoai;
  String get tenDienThoai => _tenDienThoai;
  String get hangSanXuat => _hangSanXuat;
  double get giaNhap => _giaNhap;
  double get giaBan => _giaBan;
  int get slTon => _slTon;
  bool get trangThai => _trangThai;
  //Setters
  set maDienThoai(String maDienThoai){
    _maDienThoai = (maDienThoai.isNotEmpty
    && RegExp(r'^DT-\d{3}$').hasMatch(maDienThoai) )?
    maDienThoai: _maDienThoai;
  } 
  set tenDienThoai(String tenDienThoai){
    _tenDienThoai = (tenDienThoai.isNotEmpty)?tenDienThoai:_tenDienThoai;
  }
  set hangSanXuat(String hangSanXuan){
    _hangSanXuat = (hangSanXuan.isNotEmpty)?hangSanXuan:_hangSanXuat;
  }
  set giaNhap(double giaNhap){
    _giaNhap = (giaNhap>0)?giaNhap:_giaNhap;
  }
  set giaBan(double giaBan){
    _giaBan = (giaBan>0 && giaBan > giaNhap)? giaBan:_giaBan;
  }
  set slTon(int slTon){
    _slTon=(slTon>=0)?slTon:_slTon;
  }
  set trangThai(bool trangThai){
    _trangThai = trangThai;
  }


  //methods
  double tinhLoiNhuan(){
    return (giaBan-giaNhap) * slTon;
  }
  void hienThiThongTin(){
    print('Mã điện thoại: $maDienThoai');
    print('Tên điện thoại: $tenDienThoai');
    print('Hãng sản xuất: $hangSanXuat');
    print('Giá nhập: $giaNhap');
    print('Giá bán: $giaBan');
    print('Số lượng tồn kho: $slTon');
    print('Trạng thái: ${trangThai?'Đang kinh doanh' : 'Đã nghỉ'}');
  }
  bool kiemTraCoTheBanKhong(){
    return (slTon>0 &&trangThai);
  }
}