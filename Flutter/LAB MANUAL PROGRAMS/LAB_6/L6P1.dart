/*Write a dart code that prompts the user to enter 5 numbers, stores them in a List, and displays
them in increasing order.*/

import 'dart:io';

void main(List<String> args) {
  List<int> list = [];
  for (int i = 0; i < 5; i++) {
    print("Enter the number :");
    int n = int.parse(stdin.readLineSync()!);
    list.add(n);
  }
  list.sort();
  print("The sorted list is : $list");
}
