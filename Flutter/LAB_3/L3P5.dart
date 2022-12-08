//Write a dart code to print the reverse string.

import 'dart:io';

void main() {
  print("enter the string :");
  String s = stdin.readLineSync()!;
  String re = "";
  int len = s.length;
  for (int i = len - 1; i >= 0; i--) {
    re = re + s[i].toString();
  }
  print(re);
}
