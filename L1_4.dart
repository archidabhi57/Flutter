import 'dart:io';

void main(List<String> args) {
  print('Enter Marks of MATHS = ');
  var MATHS = int.parse(stdin.readLineSync()!);

  print('Enter Marks of PHYSICS = ');
  var PHYSICS = int.parse(stdin.readLineSync()!);

  print('Enter Marks of ENGLISH = ');
  var ENGLISH = int.parse(stdin.readLineSync()!);

  print('Enter Marks of CHEMISTRY = ');
  var CHEMISTRY = int.parse(stdin.readLineSync()!);

  print('Enter Marks of HINDI = ');
  var HINDI = int.parse(stdin.readLineSync()!);

  var per = ((MATHS + PHYSICS + ENGLISH + CHEMISTRY + HINDI) / 500) * 100;
  print('PERCENTAGE = $per');
}
