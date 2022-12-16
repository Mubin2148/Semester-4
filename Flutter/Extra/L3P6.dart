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
