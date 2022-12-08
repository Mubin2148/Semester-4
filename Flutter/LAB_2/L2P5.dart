/*Write a dart code to find out the largest number from the given 3 numbers using the conditional
operator*/

import "dart:io";
void main(){
    print("enter the number 1 :");
    int? n1 = int.parse(stdin.readLineSync()!);
    print("enter the number 2 :");
    int? n2 = int.parse(stdin.readLineSync()!);
    print("enter the number 3 :");
    int? n3 = int.parse(stdin.readLineSync()!);

    (n1>=n2)?:((n1>n3)?:(print("$n1 is largest")):(print("$n3 is largest")))
    :((n2>n1)?:(n2>n3)?:(print("$n2 is largest")):(print("$n3 is largest")));

}