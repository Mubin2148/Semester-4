/*check for the given string value as per the followings :
for A I O U E Y Z = 10;
    B L Q R M S = 30;
    D G J P V C= 40;
    F H K N T W X = 20;*/

import 'dart:io';

void main() {
  print("enter the String :");
  String s = stdin.readLineSync()!;
  int value = 0;
  s.toLowerCase();
  int i = 0;
  for (i = 0; i < s.length; i++) {
    if (s[i] == "a" ||
        s[i] == "e" ||
        s[i] == "i" ||
        s[i] == "o" ||
        s[i] == "u" ||
        s[i] == "y" ||
        s[i] == "z") {
      value = value + 10;
    } else if (s[i] == "b" ||
        s[i] == "l" ||
        s[i] == "q" ||
        s[i] == "r" ||
        s[i] == "m" ||
        s[i] == "s") {
      value = value + 30;
    } else if (s[i] == "d" ||
        s[i] == "g" ||
        s[i] == "j" ||
        s[i] == "p" ||
        s[i] == "v" ||
        s[i] == "c") {
      value = value + 40;
    } else if (s[i] == "f" ||
        s[i] == "h" ||
        s[i] == "n" ||
        s[i] == "k" ||
        s[i] == "t" ||
        s[i] == "w" ||
        s[i] == "x") {
      value = value + 20;
    }
  }
  print("The value of $s is : $value");
}
