import 'dart:io';
void main(List<String> args) {
  print("Enter number Subject 1 =");
  var sub1 = int.parse(stdin.readLineSync()!);
  print("Enter number Subject 2 =");
  var sub2 = int.parse(stdin.readLineSync()!);
  print("Enter number Subject 3 =");
  var sub3 = int.parse(stdin.readLineSync()!);
  print("Enter number Subject 4 =");
  var sub4 = int.parse(stdin.readLineSync()!);
  print("Enter number Subject 5 =");
  var sub5 = int.parse(stdin.readLineSync()!);

  var per = ((sub1+sub2+sub3+sub4+sub5)/500)*100;
  print('Percentage = $per');

  if(per<=35)
  {
    print('Fail');
  }
  else if(per>35 && per<45)
  {
    print('Pass Class');
  }
  else if(per>45 && per<60)
  {
    print('Second Class');
  }
  else if(per>60 && per<70)
  {
    print('First Class');
  }
  else if(per>70)
  {
    print('Distinction Class');
  }
}