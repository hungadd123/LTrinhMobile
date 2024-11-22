//Bài tập 7
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

  //Nếu không tính 1 và chính nó
  // int Tong = 0;
  //Nếu tính cả 1 và chính nó
  int Tong= n+1;

  //Vòng lặp để tìm các ước của n
  for(int i = 2 ; i <= (n~/2);i++){
    if(n%i==0){
      Tong +=i;
    }
  }
  print('Tổng các ước của $n là: $Tong');


}
