import 'dart:io';

void main() {
  print("enter the number :");
  int sumOfSquare = 0;
  int squareOfSum = 0;
  int n = int.parse(stdin.readLineSync()!);
  for (int i = n; i > 0; i--) {
    sumOfSquare = sumOfSquare + (i * i);
    squareOfSum = squareOfSum + i;
  }
  squareOfSum = squareOfSum * squareOfSum;
  int result = sumOfSquare - squareOfSum;
  print("The result is : $result");
}
