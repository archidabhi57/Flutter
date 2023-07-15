// Write a dart code to find friends’ details by their name using a dictionary. (Create a local
// dictionary and search from it using Map<String, Object?> & Model Class).

import 'dart:io';

class Contact {
  String? Name;
  String? Contant_number;
  int? Age;
  String? College;
  String? Strem;
  int? Sem;
  String? City;

  List<Map<String, dynamic>> contact = [];
}

void main(List<String> args) {
  List<Map<String, dynamic>> contact = [];

  print(
      "Please enter 1.for entering data and 2.for reading data 3.for searching data 4.Quit");
  int m = int.parse(stdin.readLineSync()!);

  while (m != 4) {
    if (m == 1) {
      Map<String, dynamic> map = {};

      stdout.write("Please enter Name : ");
      map['Name'] = stdin.readLineSync()!;
      stdout.write("Please enter Contact number : ");
      map['Contant_number'] = stdin.readLineSync()!;
      stdout.write("Please enter Age : ");
      map['Age'] = int.parse(stdin.readLineSync()!);
      stdout.write("Please enter College : ");
      map['College'] = stdin.readLineSync()!;
      stdout.write("Please enter Strem : ");
      map['Strem'] = stdin.readLineSync()!;
      stdout.write("Please enter Sem : ");
      map['Sem'] = int.parse(stdin.readLineSync()!);
      stdout.write("Please enter City : ");
      map['City'] = stdin.readLineSync()!;

      contact.add(map);
      print("==============");
    } else if (m == 2) {
      for (int i = 0; i < contact.length; i++) {
        Map<String, dynamic> map = contact[i];
        print("Name : ${map['Name']}");
        print("Contact number : ${map['Contant_number']}");
        print("Age : ${map['Age']}");
        print("College : ${map['College']}");
        print("Strem : ${map['Strem']}");
        print("City : ${map['City']}");
        print("--------------");
      }
    } else if (m == 3) {
      stdout.write("Please enter name : ");
      String Name = stdin.readLineSync()!;
      bool found = false;
      for (int i = 0; i < contact.length; i++) {
        Map<String, dynamic> map = contact[i];
        if (map['Name'] == Name) {
          found = true;
          print("Name : ${map['Name']}");
          print("Contact number : ${map['Contant_number']}");
          print("Age : ${map['Age']}");
          print("College : ${map['College']}");
          print("Strem : ${map['Strem']}");
          print("City : ${map['City']}");
        }
      }
      if (found == false) print("Sorry, not found");
    } else
      break;

    print(
        "Please enter 1.for entering data and 2.for reading data 3..for searching data 4.Quit");
    m = int.parse(stdin.readLineSync()!);
  }
}
