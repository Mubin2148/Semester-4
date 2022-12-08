/*Write a dart code to print numbers between two given numbers which are divisible by 2 but not 
divisible by 3.*/

import "dart:io";
void main(){
  print("enter the number 1 :");
  int? n1 = int.parse(stdin.readLineSync()!);
  print("enter the number 2 :");
  int? n2 = int.parse(stdin.readLineSync()!);  

  for(int i =n1;i<=n2;i++){
    if(i%2==0){
      if(i%3!=0){
        print("$i,");
      }
    }
  }
}