//Write a dart code to make a Simple Calculator using switch...case.

import 'dart:io';
void main() {
  print("Enter + for addition");
  print("Enter - for substraction");
  print("Enter * for multiplication");
  print("Enter / for division");
      
  String? str = stdin.readLineSync();
  
  switch (str) {
    case '+':
      {
        print("Enter first number = ");
        double? n1 = double.parse(stdin.readLineSync()!);
        print("Enter Second number = ");
        double? n2 = double.parse(stdin.readLineSync()!);
        var sum = (n1 + n2);
        print("Addition : $sum");
      }
      break;
    case '-':
      {
        print("Enter first number = ");
        double? n1 = double.parse(stdin.readLineSync()!);
        print("Enter Second number = ");
        double? n2 = double.parse(stdin.readLineSync()!);
        var sub = (n1 - n2);
        print("Subtraction : $sub");
      }
      break;
    case '*':
      {
        print("Enter first number = ");
        double? n1 = double.parse(stdin.readLineSync()!);
        print("Enter Second number = ");
        double? n2 = double.parse(stdin.readLineSync()!);
        var mul = (n1 * n2);
        print("Multiplication : $mul");
      }
      break;
    case '/':
      {
        print("Enter first number = ");
        double? n1 = double.parse(stdin.readLineSync()!);
        print("Enter Second number = ");
        double? n2 = double.parse(stdin.readLineSync()!);
        var div = (n1 / n2);
        print("Division : $div");
      }
      break;
    default:
      {
        print("Enter Valid Operation");
      }
  }
}