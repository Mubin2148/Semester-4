//Write a dart code to count the number of even or odd numbers from an array of n numbers.
import 'dart:io';

void main() {
  List<int> array_list = [];
  print("enter the number of elements in list :");
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; i++) {
    print("enter the number :");
    int element = int.parse(stdin.readLineSync()!);
    array_list.add(element);
  }
  int odd = 0;
  int even = 0;
  for (int i = 0; i < array_list.length; i++) {
    if (array_list[i].isEven) {
      even++;
    } else {
      odd++;
    }
  }
  print("there are $odd odd numbers and $even even numbers");
}
