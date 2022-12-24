/*Write a dart code to read 2 lists and return a list that contains only the elements that are
common between them.*/
import 'dart:io';

void main(List<String> args) {
  List<int> list1 = [];
  List<int> list2 = [];

  print("enter the number of elements in list 1 :");
  int n1 = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n1; i++) {
    print("enter the list member :");
    int temp1 = int.parse(stdin.readLineSync()!);
    list1.add(temp1);
  }
  print("enter the number of elements in list 2 :");
  int n2 = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n1; i++) {
    print("enter the list member :");
    int temp2 = int.parse(stdin.readLineSync()!);
    list2.add(temp2);
  }
  List<dynamic> list3 = [];
  for (var n in list1) {
    if (list2.contains(n)) {
      list3.add(n);
    }
  }
  print("Common in both list is : $list3");
}
