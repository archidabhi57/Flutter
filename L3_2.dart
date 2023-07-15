import 'dart:io';

void main(List<String> args) {
  print("Enetr number = ");
  var n = int.parse(stdin.readLineSync()!);
  int no = 1;
  for (var i = 1; i <= n; i++) {
    no = no * i;
  }
  print("Factorial : $no");
}
