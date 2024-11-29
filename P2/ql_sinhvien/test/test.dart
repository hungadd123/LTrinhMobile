import '../models/sinhvien.dart';
import '../models/lophoc.dart';
void main(){
  var sv = SinhVien("Nguyen Van A", 20, "SV001", 8.5);
  var sv1 = SinhVien("Nguyen Van B", 20, "SV002", 7.5);
  // print(sv.hoTen);

  // sv.hoTen = 'Nguyen Van B';

  // print(sv.hoTen);

  // sv.hoTen = "";

  // print(sv.hoTen);

  // print(sv.xepLoai());
  // sv.hienThiThongTin();
  var lop1 = LopHoc('21DTHE5');
  lop1.themSinhVien(sv);
  lop1.themSinhVien(sv1);
  lop1.hienThiDSSV();


}