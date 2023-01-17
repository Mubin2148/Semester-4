//Write a dart code to print a given number in reverse order.

import 'dart:io';

void main() {
  print("enter the number :");
  int n = int.parse(stdin.readLineSync()!);
  int ne = 0;
  while (n > 0) {
    ne = ne * 10 + n % 10;
    n = n ~/ 10;
  }
  print(ne);
}
