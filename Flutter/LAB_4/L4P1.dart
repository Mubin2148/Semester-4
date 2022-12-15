//Write a dart code to calculate simple interest using a method.

import 'dart:io';

void main() {
  print("enter the amount :");
  double p = double.parse(stdin.readLineSync()!);
  print("enter the interest rate  :");
  double r = double.parse(stdin.readLineSync()!);
  print("enter the duration :");
  double n = double.parse(stdin.readLineSync()!);
  interest(p, r, n);
}

void interest(double p, double r, double n) {
  double interest = (p * r * n) / 100;
  print("the interest is : $interest");
}
