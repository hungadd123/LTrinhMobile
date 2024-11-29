import 'dienthoai.dart';

class HoaDon{
  String _maHoaDon;
  DateTime _ngayBan;
  DienThoai _dienThoaiBan;
  int _slMua;
  double _giaBanThuc;
  String _tenKhachHang;
  String _sdtKhach;
  //Constructor
  HoaDon(this._maHoaDon, this._ngayBan, this._dienThoaiBan,
  this._slMua, this._giaBanThuc, this._tenKhachHang, this._sdtKhach);
  //Getters
  String get maHoaDon => _maHoaDon;
  DateTime get ngayBan => _ngayBan;
  DienThoai get dienThoaiBan => _dienThoaiBan;
  int get slMua => _slMua;
  double get giaBanThuc => _giaBanThuc;
  String get tenKhachHang => _tenKhachHang;
  String get sdtKhach => _sdtKhach;

  //Setters
  set maHoaDon(String maHoaDon){
    _maHoaDon = (maHoaDon.isNotEmpty && 
    RegExp(r'^HD-\d{3}$').hasMatch(maHoaDon))? maHoaDon:_maHoaDon;

  }
  set ngayBan(DateTime ngayBan){
    _ngayBan = (ngayBan.compareTo(DateTime.now()) >=0)?
    ngayBan:_ngayBan;
  }
  set slMua(int slMua){
    _slMua = (slMua >0 && slMua <= dienThoaiBan.slTon )?
    slMua:_slMua;
  }
  set giaBanThuc(double giaBanThuc){
    _giaBanThuc = (giaBanThuc > 0 ) ? giaBanThuc : _giaBanThuc;

  }
  set tenKhachHang(String tenKhachHang){
    _tenKhachHang = (tenKhachHang.isNotEmpty)? tenKhachHang:_tenKhachHang;

  }
  set sdtKhach(String sdtKhach){
    _sdtKhach = (sdtKhach.isNotEmpty && 
    RegExp(r'^\+?[0-9\s\-\(\)]{9,15}$').hasMatch(sdtKhach))?
    sdtKhach:_sdtKhach;
  }
  //methods
  double tinhTongTien(){
    return slMua * giaBanThuc;
  }
  double loiNhuanThucTe(){
    return (giaBanThuc - dienThoaiBan.giaNhap)*slMua;
  }
  void showThongTinHoaDon(){
    print('Hóa đơn: $_maHoaDon');
    print('Ngày bán: $ngayBan');
    print('Điện thoại : ${dienThoaiBan.tenDienThoai}');
    print('Số lượng mua : $slMua');
    print('Giá bán thực: $giaBanThuc');
    print('Tên khách hàng : $tenKhachHang');
    print('Số điện thoại : $sdtKhach');
  }
}