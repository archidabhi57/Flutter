import 'dart:io';
void main(List<String> args) {
  print("Enter number x =");
  var x = int.parse(stdin.readLineSync()!);

  // if(x > 0)
  // {
  //   print('x is Positive number');
  // }
  // else
  // {
  //   print('X is negative number');
  // }


  if(x.isNegative)
  {
    print('x is negative');
  }
  else
  {
    print('x is positve');
  }
}