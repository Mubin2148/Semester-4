/*Write a dart code to find out the largest number from three numbers without using Logical 
Operator */

import "dart:io";
void main(){
    print("Enter the number 1 :");
    int? a = int.parse(stdin.readLineSync()!);
    print("Enter the number 2 :");
    int? b = int.parse(stdin.readLineSync()!);
    print("Enter the number 3 :");
    int? c = int.parse(stdin.readLineSync()!);

    if(a>=b){
        if(a>c){
            print("$a is largest ");
        }
        else{
            print("$c is largest ");
        }
    }
    else if(b>a){
            if(b>c){
                print("$b is largest ");
            }
            else{
                print("$c is largest ");
            }
        }
    }
