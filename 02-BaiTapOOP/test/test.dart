import '../models/cuahang.dart';
import '../models/dienthoai.dart';
import '../models/hoadon.dart';

void main(){
  //Tạo cửa hàng
  CuaHang cuahang1 = CuaHang('Cellphone S', '123 Lê Văn Việt');
  //Tạo 4 điện thoại 
  DienThoai IphoneXs = DienThoai('DT-001', 'Iphone XS max', 'Apple', 5000000, 5500000, 20, true);
  DienThoai SSA53 = DienThoai('DT-002', 'Samsum A53', 'Samsum', 6000000, 7000000, 20, true);
  DienThoai Oppo = DienThoai('DT-003', 'Oppo', 'Oppo', 3000000, 3200000, 15, true);
  DienThoai Realme = DienThoai('DT-004', 'Realme', 'Realme', 4000000, 6000000, 30, true);

  //Thêm vào điện thoại cửa hàng
  cuahang1.themDienThoai(IphoneXs);
  cuahang1.themDienThoai(SSA53);
  cuahang1.themDienThoai(Oppo);
  cuahang1.themDienThoai(Realme);
  //Hiển thị danh sách điện thoại trước khi được thay đổi
  cuahang1.hienThiDsDienThoai();

  //Thay đổi thông tin 
  cuahang1.capNhatThongTinDienThoai(Realme.maDienThoai, tenDienThoai: 'newRealme');

  print('Danh sách sau khi được cập nhật!');
  cuahang1.hienThiDsDienThoai();
  // Lỗi cú pháp -> không thể lưu
  cuahang1.capNhatThongTinDienThoai(Realme.maDienThoai, slTon: -12);
  //cuahang1.hienThiDsDienThoai();

  HoaDon hoadon1 = HoaDon('HD-001', DateTime.parse("2024-05-29"), SSA53, 3, SSA53.giaBan*1, 'Nguyễn Văn A','0123456789');
  //Test tạo hóa đơn
  hoadon1.showThongTinHoaDon();
  print('Tổng tiền: ${hoadon1.tinhTongTien()}');
  print('Lợi nhuận : ${hoadon1.loiNhuanThucTe()} ');
  //Tạo thêm các hóa đơn
  HoaDon hoadon2 = HoaDon('HD-002', DateTime.parse("2024-06-29"), SSA53, 1, SSA53.giaBan*1, 'Nguyễn Văn BB','0123456789');
  HoaDon hoadon3 = HoaDon('HD-003', DateTime.parse("2024-07-29"), Oppo, 8, Oppo.giaBan*1, 'Nguyễn Văn CCC','0123456789');
  HoaDon hoadon4 = HoaDon('HD-004', DateTime.parse("2024-08-29"), IphoneXs, 2, IphoneXs.giaBan*1, 'Nguyễn Văn A','0123456789');
  HoaDon hoadon5 = HoaDon('HD-005', DateTime.parse("2024-09-29"), SSA53, 2, SSA53.giaBan*1, 'Nguyễn Văn A','0123456789');
  HoaDon hoadon6 = HoaDon('HD-006', DateTime.parse("2024-10-29"), Realme, 3, Realme.giaBan*1, 'Nguyễn Văn DD','0123456789');
  HoaDon hoadon7 = HoaDon('HD-007', DateTime.parse("2024-11-29"), IphoneXs, 2, IphoneXs.giaBan*1, 'Nguyễn Văn BB','0123456789');
  cuahang1.createHoaDon(hoadon1);
  cuahang1.createHoaDon(hoadon2);
  cuahang1.createHoaDon(hoadon3);
  cuahang1.createHoaDon(hoadon4);
  cuahang1.createHoaDon(hoadon5);
  cuahang1.createHoaDon(hoadon6);
  cuahang1.createHoaDon(hoadon7);
  //Test hiển thị danh sách hóa đơn
  cuahang1.hienThiDsHoaDon();
  // cuahang1.hienThiDsDienThoai();

  //Doanh thu từ tháng 7 -> 10
  print('Doanh thu từ tháng 7 đến đầu tháng 10: ${cuahang1.doanhThuTheoThoiGian(DateTime.parse("2024-07-01"), DateTime.parse("2024-10-01"))}');
  //Lợi nhuận từ tháng 7 -> 10
  print('Lợi nhuận từ tháng 7 đến tháng 10: ${cuahang1.loiNhuanTheoThoiGian(DateTime.parse("2024-07-01"), DateTime.parse("2024-10-01"))}');
  //Top Seller
  print('\n--------------');
  print('Danh sách Top bán chạy: ');
  cuahang1.thongKeTopSeller();
  //Thống kê tồn kho
  cuahang1.thongKeTonKho();

  

}