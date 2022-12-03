/*Body Mass Index (BMI) is a measure of health on weight. It can be calculated by taking your 
weight in kilograms and dividing by the square of your height in meters. Write a dart code that 
prompts the user to enter a weight in pounds and height in inches and display the BMI.
Note: 1 pound = .45359237 kg and 1 inch = 0.254 meters */

import "dart:io";
void main(){
    print("enter your Weight in pounds :");
    double? weight = double.parse(stdin.readLineSync()!);
    print("enter your Height in inches :");
    double? height = double.parse(stdin.readLineSync()!);

    double? kg = weight/0.45359237;
    double? met = height/0.254;

    double? bmi = kg/(met*met);

    print("Your BMI is $bmi");
}