/*write a dart code to calculate resistance value using given color codes 
"black" = 0,"brown" =1,"violet" = 2,"red" = 3,"orange" = 4,"yellow" = 5,"green" = 6,"blue" = 7,"grey" = 8,"white" = 9*/

import 'dart:io';

void main() {
  int resistance = 0;
  int power = 0;
  print("enter the first color :");
  String color1 = stdin.readLineSync()!;
  print("enter the second color :");
  String color2 = stdin.readLineSync()!;
  print("enter the third color :");
  String color3 = stdin.readLineSync()!;
  print("enter the fourth color :");
  String color4 = stdin.readLineSync()!;
  switch (color1) {
    case "black":
      resistance = 0;
      break;
    case "brown":
      resistance = 1;
      break;
    case "violet":
      resistance = 2;
      break;
    case "red":
      resistance = 3;
      break;
    case "orange":
      resistance = 4;
      break;
    case "yellow":
      resistance = 5;
      break;
    case "green":
      resistance = 6;
      break;
    case "blue":
      resistance = 7;
      break;
    case "grey":
      resistance = 8;
      break;
    case "white":
      resistance = 9;
      break;
  }
  switch (color2) {
    case "black":
      resistance = (resistance * 10) + 0;
      break;
    case "brown":
      resistance = (resistance * 10) + 1;
      break;
    case "violet":
      resistance = (resistance * 10) + 2;
      break;
    case "red":
      resistance = (resistance * 10) + 3;
      break;
    case "orange":
      resistance = (resistance * 10) + 4;
      break;
    case "yellow":
      resistance = (resistance * 10) + 5;
      break;
    case "green":
      resistance = (resistance * 10) + 6;
      break;
    case "blue":
      resistance = (resistance * 10) + 7;
      break;
    case "grey":
      resistance = (resistance * 10) + 8;
      break;
    case "white":
      resistance = (resistance * 10) + 9;
      break;
  }
  switch (color3) {
    case "black":
      resistance = (resistance * 100) + 0;
      break;
    case "brown":
      resistance = (resistance * 100) + 1;
      break;
    case "violet":
      resistance = (resistance * 100) + 2;
      break;
    case "red":
      resistance = (resistance * 100) + 3;
      break;
    case "orange":
      resistance = (resistance * 100) + 4;
      break;
    case "yellow":
      resistance = (resistance * 100) + 5;
      break;
    case "green":
      resistance = (resistance * 100) + 6;
      break;
    case "blue":
      resistance = (resistance * 100) + 7;
      break;
    case "grey":
      resistance = (resistance * 100) + 8;
      break;
    case "white":
      resistance = (resistance * 100) + 9;
      break;
  }
  switch (color4) {
    case "black":
      power = 0;
      break;
    case "brown":
      power = 1;
      break;
    case "violet":
      power = 2;
      break;
    case "red":
      power = 3;
      break;
    case "orange":
      power = 4;
      break;
    case "yellow":
      power = 5;
      break;
    case "green":
      power = 6;
      break;
    case "blue":
      power = 7;
      break;
    case "grey":
      power = 8;
      break;
    case "white":
      power = 9;
      break;
  }

  print("the resistace is $resistance * 10^$power");
}
