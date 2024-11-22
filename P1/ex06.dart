//Bài tập 6
//Import input và output
import 'dart:io';

void main() {
  int n = 0;
  do {
    stdout.write('Nhập n (n>=1): ');
    String? inputN = stdin.readLineSync();
    if (inputN != null) {
      n = int.tryParse(inputN) ?? 0;
    }
    if (n < 1) {
      print('Vui lòng nhập lại!! ');
    }
  } while (n < 1);

  List result1 = [];
  while(n > 0){
    int k = n % 2;
    n = n~/2;
    String x = k.toString();
    result1.add(x);
  }
  stdout.write('Hệ nhị phân: ');
  for(int i = result1.length-1;i>=0; i--){
    stdout.write('${result1[i]}');
  }

}
