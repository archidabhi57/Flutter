// Write a dart code to read 2 lists and return a list that contains only the elements that are
// common between them.

import 'dart:io';

void main(List<String> args) {
  stdout.write("Please enter no of elements in List 1 : ");
  int n1 = int.parse(stdin.readLineSync()!);

  List<int> list1 = [];

  for (int i = 0; i < n1; i++) {
    stdout.write("Please enter number${i + 1} : ");
    list1.add(int.parse(stdin.readLineSync()!));
  }

  stdout.write("Please enter no of elements in List 2 : ");
  int n2 = int.parse(stdin.readLineSync()!);

  List<int> list2 = [];

  for (int i = 0; i < n2; i++) {
    stdout.write("Please enter number${i + 1} : ");
    list2.add(int.parse(stdin.readLineSync()!));
  }
  print("Common elements in both the list : \n");
  for (int i = 0; i < n1; i++) {
    for (int j = 0; j < n2; j++) {
      if (list1[i] == list2[j]) print(list1[i]);
    }
  }
}
