//Write a dart code that reads a number in meters, converts it to feet, and displays the result.

import "dart:io";

void main(){
    print("enter the height in meters :");
    double? meters = double.parse(stdin.readLineSync()!);

    double? foot = meters*0.3048;

    print("the $meters meters= $foot foots");

}