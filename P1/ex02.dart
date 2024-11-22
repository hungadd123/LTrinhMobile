void main(){
  int a;
  int b;

  a = 0;
  b = ++a;

  //Kiem tra neu khong thoa man dieu dien thi tra ve true/false
  assert(a != b);

  print('a: $a');
  print('b: $b');

}