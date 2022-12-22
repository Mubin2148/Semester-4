import 'L5P3.dart';
import 'dart:io';

void main() {
  print("Enter the radius: ");
  Circle c1 = Circle();
  double r = double.parse(stdin.readLineSync()!);
  c1.area(r);
  c1.perimeter(r);
}
