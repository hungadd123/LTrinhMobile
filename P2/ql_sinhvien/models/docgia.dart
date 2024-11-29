import 'sach.dart';

class DocGia{
  String _maDocGia;
  String _hoTen;
  List<Sach> _dsSachMuon = [];
  //Constructor
  DocGia(this._maDocGia, this._hoTen);
  //Getters
  String get maDocGia  => _maDocGia;
  String get hoTen => _hoTen;
  List get dsSachMuon => _dsSachMuon;
  //Setters
  set maDocGia(String maDocGia){
    _maDocGia = (maDocGia.isNotEmpty)? maDocGia:_maDocGia;

  }
  set hoTen(String hoTen){
    _hoTen = (hoTen.isNotEmpty)? hoTen:_hoTen;

  }

  //Methods
  void muonSach(Sach sach){
    if(!sach.trangThai){
      _dsSachMuon.add(sach);
      sach.trangThai = true;
    }
  }
  void traSach(Sach sach){
    _dsSachMuon.remove(sach);
    sach.trangThai = false;
  }
}