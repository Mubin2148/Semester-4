//Write a dart code to generate a Fibonacci series of N given numbers using this method.

import 'dart:io';

void main(List<String> args) {
<<<<<<< HEAD
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
=======
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
>>>>>>> be645da84fb3869f0082cfec6ad90f9ae796060e
  }
}
