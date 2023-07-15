import 'dart:io';
void main(List<String> args) {
  print("Enter number x =");
  var x = int.parse(stdin.readLineSync()!);
  print("Enter number y =");
  var y = int.parse(stdin.readLineSync()!);
  print("Enter number z =");
  var z = int.parse(stdin.readLineSync()!);

  x>y ? x>z ? print('X is Largest Number'): print('Y is Largest Number'): print('Z is Largest Number');
  
}