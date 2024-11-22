void main(){
  Object obj ='Hello';

  if(obj is String){
    print("object la String");
  }
  if((obj is! int)){
    print('object khong phai kieu int');
  }

  int a;
  a = true ? 5 : 10;

  
  String str = obj as String;
  print(str.toUpperCase());
}