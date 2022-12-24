/*Write a dart code to accept n numbers in an array. Display the sum of all the numbers which are
divisible by either 3 or 5*/

import 'dart:io';

void main(List<String> args) {
  List<int> array_list = [];
  int sum = 0;
  print("enter the number of elements in list :");
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; i++) {
    print("enter the number :");
    int element = int.parse(stdin.readLineSync()!);
    array_list.add(element);
    if (element % 3 == 0 || element % 5 == 0) {
      sum = sum + element;
    }
  }
  print("The sum is : $sum");
}
