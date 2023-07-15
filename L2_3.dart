import 'dart:io';
void main(List<String> args) {
  print("Enter number x =");
  var x = int.parse(stdin.readLineSync()!);
  print("Enter number y =");
  var y = int.parse(stdin.readLineSync()!);
  print("Enter number z =");
  var z = int.parse(stdin.readLineSync()!);

  if(x>y)
  {
    if(x>z)
    {
      print('x is Largest');
    }
    else
    {
      print('z is Largest');
    }
  }
  else if(y>x)
  {
    if(y>z){
    print('y is largest');
    }
    else
    {
      print('z is largest');
    }
  }
}