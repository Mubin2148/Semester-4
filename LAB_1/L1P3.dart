//Write a dart code to convert temperature from Fahrenheit to Celsius.[°C = [(°F-32)×5]/9, °F = °C * 1.8000]
import 'dart:io';
void main(){
    print("Enter the temperature in Fahrenheit :");
    int? F = int.parse(stdin.readLineSync()!);
    double? c = ((F-32)*5)/9;
    print("So Celsius is : $c");
}