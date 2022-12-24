//Write a dart code to find the factorial of the given number.

import 'dart:io';

void main(){
print("enter the number :");
 int factorial = 1;
int? n = int.parse(stdin.readLineSync()!);
for(int i=n;i>0;i--){
 factorial = factorial*i;
}
print("factorial is : $factorial");
}