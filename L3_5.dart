import 'dart:io';

void main(List<String> args) {
  stdout.write("Please enter a String : ");
  String a = (stdin.readLineSync()!);
  String new_String = "";

  for (int i = a.length - 1; i >= 0; i--) {
    new_String = new_String + a[i];
  }

  print("The reversed string is :${new_String}");
}
