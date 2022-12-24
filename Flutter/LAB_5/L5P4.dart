/*Define Time class with hour and minute as data member. Also define addition() method to add 
two-time objects.*/

import 'dart:io';

void main(List<String> args) {
  Time t1 = Time();
  Time t2 = Time();
  print("Enter 1st Time hour : ");
  t1.hour = int.parse(stdin.readLineSync()!);
  print("Enter 1st Time minute : ");
  t1.min = int.parse(stdin.readLineSync()!);
  print("Enter 2st Time hour : ");
  t2.hour = int.parse(stdin.readLineSync()!);
  print("Enter 2st Time minute : ");
  t2.min = int.parse(stdin.readLineSync()!);
  Time t3 = Time();
  t3.addition(t1, t2);
}

class Time {
  int? hour, min;
  void addition(Time a, Time b) {
    min = a.min! + b.min!;

    hour = a.hour! + b.hour!;
    print("The addition of time is :");
    print("$hour : $min");
  }
}
