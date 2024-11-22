/*
Bài tập giải phương trình ax^2 + bx + c =0;
*/
//Import input và output
import 'dart:io';
//Import thư viện math
import 'dart:math';

void main() {
  double a = 0, b = 0, c = 0;
  //Input a
  do {
    stdout.write('Nhập hệ số a (a khác 0): ');
    String? inputA = stdin.readLineSync();
    if (inputA != null) {
      a = double.tryParse(inputA) ?? 0;
    }
    if (a == 0) {
      print('Vui lòng nhập lại!! ');
    }
  } while (a == 0);

  //Input b
  stdout.write('Nhập hệ số b: ');
  String? inputB = stdin.readLineSync();
  if (inputB != null) {
    b = double.tryParse(inputB) ?? 0;
  }

  //Input c
  stdout.write('Nhập hệ số c: ');
  String? inputC = stdin.readLineSync();
  if (inputC != null) {
    c = double.tryParse(inputC) ?? 0;
  }

  //Tính delta
  double delta = b*b - 4*a*c;

  //In phương trình
  print('Phương trình: ${a}x^2 + ${b}x + $c = 0');

  //GPT
  if(delta < 0 ){
    print('Phương trình vô nghiệm!');
  } else if(delta == 0){
    double x = -b/(2*a);
    //Lấy x 2 số sau dấu phẩy
    x = double.parse(x.toStringAsFixed(2));
    print('Phương trình có nghiệm kép: x = $x');
  }else{
    double x1 = (-b + sqrt(delta) / (2*a));
    double x2 = (-b - sqrt(delta) / (2*a));
    //Lấy x 2 số sau dấu phẩy
    x1 = double.parse(x1.toStringAsFixed(2));
    x2 = double.parse(x2.toStringAsFixed(2));
    print('Phương trình có 2 nghiệm là x1 = $x1 và x2 = $x2');

  }

}
