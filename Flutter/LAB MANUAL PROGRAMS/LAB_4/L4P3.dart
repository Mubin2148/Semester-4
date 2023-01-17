//Write a dart code to generate a Fibonacci series of N given numbers using this method.

import 'dart:io';

void main(List<String> args) {
  print("enter the number of elements :");
  int n = int.parse(stdin.readLineSync()!);
  fibonacci(n);
}

void fibonacci(n) {
  List<int> list = [];
  list.add(0);
  list.add(1);

  for (int i = 2; i < n; i++) {
    int value = list[i - 1] + list[i - 2];
    list.add(value);
  }

  for (int i = 0; i < n; i++) {
    stdout.write("${list[i]} ");
  }
}
