//Write a dart code to generate a Fibonacci series of N given numbers using this method.

import 'dart:io';

void main(List<String> args) {
  print("enter the nubmer :");
  int n = int.parse(stdin.readLineSync()!);
  int result = Fibonacci(n);
  print(result);
}

int Fibonacci(int n) {
  if (n <= 1) {
    return n;
  } else {
    return Fibonacci(n - 1) + Fibonacci(n - 2);
  }
}
