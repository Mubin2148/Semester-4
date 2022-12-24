//Write a dart code that calculates area of circle, triangle and square using method overloading.

import 'dart:io';

void main(List<String> args) {
  print("Which are you want to find out :?");
  String area = stdin.readLineSync()!;
  switch (area) {
    case 'circle':
      circle();
      break;
    case 'triangle':
      triangle();
      break;
    case 'square':
      square();
      break;
    default:
      print("Enter Valid String");
  }
}

void circle() {
  print("Enter Radius of circle : ");
  int r = int.parse(stdin.readLineSync()!);
  print("Area of Circle : ${3.14 * r * r}");
}

void triangle() {
  print("Enter Height of Triangle: ");
  int h = int.parse(stdin.readLineSync()!);
  print("Enter Bridth of Triangle : ");
  int b = int.parse(stdin.readLineSync()!);
  print("Area of Triangle : ${0.5 * h * b}");
}

void square() {
  print("Enter side of Square : ");
  int l = int.parse(stdin.readLineSync()!);
  print("Area of Square : ${l * l}");
}
