//Write a dart code to check whether the given number is positive or negative.

import "dart:io";
void main(){
    print("Enter the number :");
    int? number = int.parse(stdin.readLineSync()!);
    if(number>0){
        print("it is positive number");
    }
    else if(number==0){
        print("it is zero");
    }
    else{
        print("it is negative number");
    }
}