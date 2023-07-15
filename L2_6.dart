import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print("Enter number  =");
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

  switch (op) {
    case 1:
      print('object');

      break;

    case 2:
      var output = x - y;
      print('x-y=$output');
      break;

    case 3:
      var output = x * y;
      print('x*y=$output');
      break;

    case 4:
      var output = x / y;
      print('x/y=$output');
      break;

    case 5:
      var output = x % y;
      print('x%y=$output');
      break;

    case 6:
      var output = pow(x, y);
      print('x^y=$output');
      break;

    default:
      print('Invalid');
  }
}
