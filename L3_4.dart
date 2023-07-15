import 'dart:io';

void main(List<String> args) {
  stdout.write("Please enter a number : ");
  int a = int.parse(stdin.readLineSync()!);
  int remainder, reversed_Number = 0;

  for (int i = 0; a > 0; i++) {
    remainder = a.remainder(10);
    a = a ~/ 10;
    reversed_Number = reversed_Number * 10 + remainder;
  }

  print("The reversed number is :${reversed_Number}");
}
