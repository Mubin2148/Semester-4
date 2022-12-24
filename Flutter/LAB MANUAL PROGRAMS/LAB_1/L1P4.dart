//Write a dart code to find the percentage of 5 subjects.

import 'dart:io';

void main(){
    print("enter the marks of Subject1 :");
    double? s1 = double.parse(stdin.readLineSync()!);
    print("enter the marks of Subject2 :");
    double? s2 = double.parse(stdin.readLineSync()!);
    print("enter the marks of Subject3 :");
    double? s3 = double.parse(stdin.readLineSync()!);
    print("enter the marks of Subject4 :");
    double? s4 = double.parse(stdin.readLineSync()!);
    print("enter the marks of Subject5 :");
    double? s5 = double.parse(stdin.readLineSync()!);

    double? percentage = ((s1+s2+s3+s4+s5)/5);

    print("You Gained $percentage %");

}