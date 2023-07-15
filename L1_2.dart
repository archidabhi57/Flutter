import 'dart:io';

void main(List<String> args) {
  print('Enter number a=');
  var a = int.parse(stdin.readLineSync()!);
  print('Enter number b=');
  var b = int.parse(stdin.readLineSync()!);

  var sum = a + b;
  print('Addition = $sum');
}
