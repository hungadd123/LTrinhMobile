import '../models/nhanvien.dart';
import '../models/nhanvienbanhang.dart';

void main(){
  //Nhân viên thường
  var nv = NhanVien('NV001', 'Nguyen Van A', 5000000);
  print('Thông tin nhân viên: ');
  nv.hienThiThongTin();

  //Nhân viên bán hàng
  NhanVienBanHang nvbh = NhanVienBanHang('NV002', 'Nguyen Van B', 5000000, 4000000, 0.5);
  print('Thông tin nhân viên bán hàng: ');
  nvbh.hienThiThongTin();
  
  //Test setter
  nvbh.doanhSo = -100000;
  print('Sau khi tăng doanh số: ');
  nvbh.hienThiThongTin();
}