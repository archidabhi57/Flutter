// Write a dart code that creates a List with the following values: “Delhi”, “Mumbai”, “Bangalore”,
// “Hyderabad” and “Ahmedabad”. Replace “Ahmedabad” with “Surat” in the above List.
// Write a dart code to create and read a phonebook dictionary.
import 'dart:io';

void main(List<String> args) {
  List<String> cities = [];

  cities.add("Delhi");
  cities.add("Mumbai");
  cities.add("Bangalore");
  cities.add("Hyderabad");
  cities.add("Ahmedabad");

  print(cities);

  for (int i = 0; i < cities.length; i++) {
    if (cities[i] == "Ahmedabad") {
      cities[i] = "Surat";
    }
  }

  print(cities);

  List<Map<String, dynamic>> contact = [];

  print("Please enter 1.for entering data and 2.for reading data 3.Quit");
  int m = int.parse(stdin.readLineSync()!);

  while (m != 3) {
    if (m == 1) {
      Map<String, dynamic> map = {};
      stdout.write("Please enter Contant name : ");
      map['Name'] = stdin.readLineSync();
      stdout.write("Please enter Contant number : ");
      map['Contact_number'] = int.parse(stdin.readLineSync()!);

      contact.add(map);
    } else {
      for (int i = 0; i < contact.length; i++) {
        Map<String, dynamic> map = contact[i];
        print("${map['Name']}  : ${map['Contact_number']}");
        print("------------------");
      }
    }

    stdout.write(
        "Please enter 1.for entering data and 2.for reading data 3.Quit \n");
    m = int.parse(stdin.readLineSync()!);
  }
}
