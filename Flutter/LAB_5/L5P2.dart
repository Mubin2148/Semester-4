/*Create a class named Bank_Account with Account_No, User_Name, Email, Account_Type, and 
Account_Balance as data members. Also create a method GetAccountDetails() and 
DisplayAccountDetails(). Create a main method to demonstrate the Bank_Account class.*/

import 'dart:io';

class Bank_Account {
  int? account_no;
  String? username;
  String? email;
  String? account_type;
  double? account_balance;

  void GetAccountDetails() {
    print("enter the account no :");
    account_no = int.parse(stdin.readLineSync()!);
    print("enter the username :");
    username = stdin.readLineSync();
    print("enter the email:");
    email = stdin.readLineSync()!;
    print("enter the account type :");
    account_type = stdin.readLineSync()!;
    print("enter the account balance :");
    account_balance = double.parse(stdin.readLineSync()!);
  }

  void DisplayAccountDetails() {
    print("the acoount number is : ${account_no}");
    print("the candidate name is : ${username}");
    print("the candidate age is : ${email}");
    print("the candidate weight is : ${account_type}");
    print("the candidate height is : ${account_balance}");
  }
}
