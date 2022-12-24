//Write a dart code to print a given number in reverse order.

import 'dart:io';
void main(){
  print("enter the number :");
 int n =int.parse(stdin.readLineSync()!);
  int reverse = 0;
  int ne = 0;
  while(n>0){
    reverse = n%10;
    ne=ne*10+reverse;
    n=n~/10;
  }
  print(ne);
}