//Write a dart code to find whether the given number is prime or not.

import 'dart:io';
void main(){
  print("enter the number :");
  int n = int.parse(stdin.readLineSync()!);
  bool flag = true;
  for(int i= 2;i<=(n/2);i++){
    if(n%i==0){
      flag = false;
      break;
    }
  }
  if(flag){
    print("it is prime number");
  }
  else{
    print("it is not a prime number");
  }
}