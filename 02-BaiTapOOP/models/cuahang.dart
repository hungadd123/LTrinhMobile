import 'dienthoai.dart';
import 'hoadon.dart';

class CuaHang{
  String _tenCuaHang;
  String _diaChi;
  List<DienThoai> _dsDienThoai =[];
  List<HoaDon> _dsHoaDon = [];

  //Constructor
  CuaHang(this._tenCuaHang, this._diaChi);
  //Getters
  String get tenCuaHang => _tenCuaHang;
  String get diaChi => _diaChi;
  //Setters
  set tenCuaHang(String tenCuaHang){
    _tenCuaHang = (tenCuaHang.isNotEmpty)?tenCuaHang:
    _tenCuaHang;

  }
  set diaChi(String diaChi){
    _diaChi = (diaChi.isNotEmpty) ? diaChi:_diaChi;
  }

  //methods
  //Quản lý điện thoại
  void themDienThoai(DienThoai dienThoai){
    _dsDienThoai.add(dienThoai);
  }
  
  void capNhatThongTinDienThoai(String maDienThoai , {String? tenDienThoai,String? hangSanXuan, double? giaNhap,
    double? giaBan, int? slTon , bool? trangThai }){
    for(var dt in _dsDienThoai){
      if(dt.maDienThoai == maDienThoai){
        if(tenDienThoai!=null) dt.tenDienThoai = tenDienThoai;
        if(hangSanXuan!=null) dt.hangSanXuat = hangSanXuan;
        if(giaNhap!=null) dt.giaNhap = giaNhap;
        if(giaBan!=null) dt.giaBan = giaBan;
        if(slTon!=null)  dt.slTon = slTon;
        if(trangThai!=null) dt.trangThai = trangThai;
        //print('Sucess!');
        return;
      }
    }
    print('Không tìm thấy thông tin điện thoại!!!');
  }
  void ngungKinhDoanhDT(DienThoai dienthoai){
    dienthoai.trangThai = false;
  }
  DienThoai findByMaDT(String maDienThoai){
    
    var dienthoai = _dsDienThoai.firstWhere((dt) => dt.maDienThoai == maDienThoai);
    return dienthoai;
  }
  DienThoai findByName(String tenDienThoai){
    
    var dienthoai = _dsDienThoai.firstWhere((dt) => dt.tenDienThoai == tenDienThoai);
    return dienthoai;
  }
  List<DienThoai> findByNSX(String hangSanXuat){
    List<DienThoai> dsdt = [];
    for(var dt in _dsDienThoai){
      if(dt.hangSanXuat == hangSanXuat){
        dsdt.add(dt);
      }
    }
    return dsdt;
  }
  void hienThiDsDienThoai(){
    print('\n ---------------------');
    print('Danh sách điện thoại: ');
    for(var dt in _dsDienThoai){
      dt.hienThiThongTin();
      print('--------------------');
    }
  }

  //Quản lý hóa đơn
  void createHoaDon(HoaDon newHoaDon){
    if(!newHoaDon.dienThoaiBan.trangThai){
      print('Điện thoại đã ngừng bán!!!');
      return;
    }
    for(var dt in _dsDienThoai){
      if(dt.maDienThoai == newHoaDon.dienThoaiBan.maDienThoai){
        dt.slTon -= newHoaDon.slMua;
        capNhatThongTinDienThoai(dt.maDienThoai, slTon: dt.slTon);
      }
    }  
    _dsHoaDon.add(newHoaDon);
    
    
  }
  HoaDon findByMaHD(String maHoaDon){
    var hoadon = _dsHoaDon.firstWhere((hd) => hd.maHoaDon == maHoaDon);
    return hoadon;
  }
  List<HoaDon> findByNgay(DateTime ngayBan){
    List<HoaDon> dshd = [];
    for(var hd in _dsHoaDon){
      if(hd.ngayBan == ngayBan){
        dshd.add(hd);
      }
    }
    return dshd;
  }
  List<HoaDon> findByKhachHang(String tenKhach){
    List<HoaDon> dshd = [];
    for(var hd in _dsHoaDon){
      if(hd.tenKhachHang == tenKhach){
        dshd.add(hd);
      }
    }
    return dshd;
  }
  void hienThiDsHoaDon(){
    print('\n--------------------');
    print('Danh sách hóa đơn: ');
    for(var hd in _dsHoaDon){
      hd.showThongTinHoaDon();
      print('-----------------------');
    }
  }

  //Phương thức thống kê
  double doanhThuTheoThoiGian(DateTime startDate, DateTime endDate){
    
    double result = 0;
    for(var hd in _dsHoaDon){
      if(hd.ngayBan.isAfter(startDate) && hd.ngayBan.isBefore(endDate) ){
        result += hd.tinhTongTien();
      }
      
    }
    return result;
  }

  double loiNhuanTheoThoiGian(DateTime startDate, DateTime endDate){
    
    double result = 0;
    for(var hd in _dsHoaDon){
      if(hd.ngayBan.isAfter(startDate) && hd.ngayBan.isBefore(endDate) ){
        result += hd.loiNhuanThucTe();
        //print('Im here!');
      }
    }
    return result;
  }

  void thongKeTopSeller(){
    var danhSach = <(String, int)>[];
    for(var dt in _dsDienThoai){
      int dem = 0;
      for(var hd in _dsHoaDon){
        if(hd.dienThoaiBan.maDienThoai == dt.maDienThoai){
          dem+= hd.slMua;
        }
      }
      if(dem>0){
        danhSach.add((dt.tenDienThoai , dem));
      }
    }
    danhSach.sort((a,b) => b.$2.compareTo(a.$2));
    var topSeller = danhSach.take(3);
    for(var (dt, sl) in topSeller){
      print('Điện thoại: $dt, số lượng bán: $sl');
    }

  }
  void thongKeTonKho(){
    print('\n-----------------');
    print('Thống kê tồn kho: ');
    for(var dt in _dsDienThoai){
      if(dt.slTon > 0){
        print('Điện thoại: ${dt.tenDienThoai} còn lại ${dt.slTon}');
      }
    }
  }
}