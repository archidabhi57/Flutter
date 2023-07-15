import 'dart:io';

void main(List<String> args) {
  print('Enter number of Fahrenhiet=');
  var f = int.parse(stdin.readLineSync()!);

  var c = ((f - 32) * 5) / 9;
  print('Celsius = $c');
}
