import 'dart:io';

void main(List<String> args) {
  print('Enetr Number1 = ');
  var number1 = int.parse(stdin.readLineSync()!);
  print('Enetr Number2 = ');
  var number2 = int.parse(stdin.readLineSync()!);

  while (number1 <= number2) {
    if (number1 % 2 == 0 && number1 % 3 != 0) {
      print("$number1");
    }
    number1++;
  }
}
