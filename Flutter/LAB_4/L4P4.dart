/*Write a dart code to accept a number and check whether the number is prime or not. Use 
method name check (int n). The method returns 1, if the number is prime otherwise, it returns 
0*/

import 'dart:io';

void main() {
  print("Enter the number :");
  int n = int.parse(stdin.readLineSync()!);
  check(n);
}

void check(int n) {
  bool flag = true;
  for (int i = 2; i < (n / 2); i++) {
    if (n % i == 0) {
      flag = false;
      break;
    }
  }
  if (flag) {
    print("$n is prime number ");
  } else {
    print("$n is not a prime number ");
  }
}
