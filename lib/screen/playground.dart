
import 'dart:io';

void main(){
  stdout.write("what is your name?");
  String name = stdin.readLineSync()!;

  print("hi,$name! what is your age?");
  int age = int.parse(stdin.readLineSync()!);

  int yearsToHunderd = 100 - age;
  print("$name, You have $yearsToHunderd years to be 100");
}