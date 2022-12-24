import 'dart:io';

import 'L5P2.dart';

void main(List<String> args) {
  Bank_Account user = Bank_Account();
  user.GetAccountDetails();
  print("==================================================");
  user.DisplayAccountDetails();
  print("==================================================");
}
