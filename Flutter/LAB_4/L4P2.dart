//Write a dart code to find the maximum number from two numbers using this method.

import 'dart:io';

void main() {
  print("Enter a :");
  double a = double.parse(stdin.readLineSync()!);
  print("Enter b :");
  double b = double.parse(stdin.readLineSync()!);
  largest(a, b);
}

void largest(double a, double b) {
  if (a >= b) {
    print("$a is largest");
  } else {
    print("$b is largest");
  }
}
