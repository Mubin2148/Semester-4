/*Write a dart code to create a Circle class with area() and perimeter() function to find area and 
perimeter of the circle.*/

import 'dart:io';

class Circle {
  void area(double r) {
    double area = (3.14) * r * r;
    print("the area of circle is : $area");
  }

  void perimeter(double r) {
    double perimeter = 2 * (3.14) * r;
    print("The perimeter of circle is : $perimeter");
  }
}
