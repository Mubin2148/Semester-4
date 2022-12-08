/*Write a dart code to read marks of five subjects. Calculate percentage and print class 
accordingly. Fail below 35, Pass Class between 35 to 45, Second Class between 45 to 60, First 
Class between 60 to 70, Distinction if more than 70.*/

import "dart:io";
void main(){
    print("enter the marks of subject 1 out of 100 :");
    double? s1 = double.parse(stdin.readLineSync()!);
    print("enter the marks of subject 2 out of 100 :");
    double? s2 = double.parse(stdin.readLineSync()!);
    print("enter the marks of subject 3 out of 100 :");
    double? s3 = double.parse(stdin.readLineSync()!);
    print("enter the marks of subject 4 out of 100 :");
    double? s4 = double.parse(stdin.readLineSync()!);
    print("enter the marks of subject 5 out of 100 :");
    double? s5 = double.parse(stdin.readLineSync()!);

    double? percentage = (s1+s2+s3+s4+s5)/5;

    if(percentage<35){
        print("fail");
    }
    else if(percentage>=35 && percentage<45){
        print("pass");
    }
    else if(percentage>=45 && percentage<60){
        print("second class");
    }
    else if(percentage>=60 && percentage<70){
        print("first class");
    }
    else{
        print("Distinction");
    }

}