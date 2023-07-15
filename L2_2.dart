import 'dart:io';
import 'dart:math';
void main(List<String> args) {
  print("Enter number x =");
  var x = int.parse(stdin.readLineSync()!);
  print("Enter number y =");
  var y = int.parse(stdin.readLineSync()!);

  print('1. Add');
  print('2. Sub');
  print('3. Multi');
  print('4. Divison');
  print('5. Modulo');
  print('6. Power');

  print("Enter number operation=");
  var op = int.parse(stdin.readLineSync()!);
  
  if(op==1)
  {
    var output = x+y;
    print('x+y=$output');
  }
  else if(op==2)
  {
    var output = x-y;
    print('x-y=$output');
  }
  else if(op==3)
  {
    var output = x*y;
    print('x*y=$output');
  }
  else if(op==4)
  {
    var output = x/y;
    print('x/y=$output');
  }
  else if(op==5)
  {
    var output = x%y;
    print('x%y=$output');
  }
  else if(op==6)
  {
    var output = pow(x,y);
    print('x^y=$output');
  }
  else{
    print('Invalid');
  }
}