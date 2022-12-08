/*Write a dart code to perform Addition, Subtraction, Multiplication, Division based on user choice 
using if, if..else..if, & switch */

import "dart:io";
void main(){
    print("Enter the number 1 :");
    double? num1 = double.parse(stdin.readLineSync()!);
    print("Enter the number 2 :");
    double? num2 = double.parse(stdin.readLineSync()!);

    print("press + for addition");
    print("press - for substraction");
    print("press * for multiplication");
    print("press / for division");

    print("enter the operation :");
    var operation = stdin.readLineSync()!;

    if(operation=="+"){
        double? result = num1+num2;
        print("the addition is $result:");
    }
    else if(operation=="-"){
        double? result = num1-num2;
        print("the substraction is $result:");
    }
    else if(operation=="*"){
        double? result = num1*num2;
        print("the multiplication is $result:");
    }
    else if(operation=="-"){
        double? result = num1/num2;
        print("the division is $result:");
    }
    else{
        print("please enter the valid operation");
    }
}