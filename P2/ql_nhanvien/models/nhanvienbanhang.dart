import 'nhanvien.dart';

class NhanVienBanHang extends NhanVien {
  double _doanhSo;
  double _hoaHong;
  NhanVienBanHang(String maNhanVien, String hoTen,
  double luongCoBan, this._doanhSo, this._hoaHong)
  : super(maNhanVien,hoTen,luongCoBan);
  //Getters
  double get doanhSo => _doanhSo;
  double get hoaHong => _hoaHong;
  //Setters
  set doanhSo(double doanhSo){
    _doanhSo = (doanhSo >=0)?doanhSo : _doanhSo;

  }
  set hoaHong(double hoaHong){
    _hoaHong = (hoaHong>=0 && hoaHong <=1) ? hoaHong:_hoaHong;

  }

  @override
  double tinhLuong() {
    return luongCoBan + (doanhSo* hoaHong); // Sử dụng công thức tính lương mới 
  }
  
  @override
  void hienThiThongTin() {
    super.hienThiThongTin(); // Gọi lại từ cha
    print('Doanh số: $doanhSo');
    print('Hoa hồng: $hoaHong');
  }

}