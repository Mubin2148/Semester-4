/*Write a dart code program to calculate the sum of all positive even numbers and the sum of all 
negative odd numbers from a set of numbers. You can enter 0 (zero) to quit the program and 
thus it displays the result.*/

import 'dart:io';

void main(List<String> args) {
  int? temp;
  int evenSum = 0;
  int oddSum = 0;
  while (temp != 0) {
    print("Enter a number : ");
    int? n = int.parse(stdin.readLineSync()!);
    if (n == 0) {
      break;
    } else {
      if (n > 0 && n.isEven) {
        evenSum = evenSum + n;
      } else if (n < 0 && n.isOdd) {
        oddSum = oddSum + n;
      }
    }
  }
  print("Sum OF Even Positive number is $evenSum");
  print("Sum OF Odd Negative number is $oddSum");
}
