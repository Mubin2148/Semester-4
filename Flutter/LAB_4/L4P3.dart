//Write a dart code to generate a Fibonacci series of N given numbers using this method.

import 'dart:io';

void main(List<String> args) {
  print("enter the number of elements : ");
  int? n = int.parse(stdin.readLineSync()!);
  int n1 = 0, n2 = 1, n3;
  print("$n1,");
  print('$n2,');

  for (int i = 2; i < n; i++) {
    n3 = n1 + n2;
    print('$n3,');
    n1 = n2;
    n2 = n3;
  }
}
