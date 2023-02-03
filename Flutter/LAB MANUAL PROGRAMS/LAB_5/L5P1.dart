/*Create a class named Candidate with Candidate_ID, Candidate_Name, Candidate_Age, 
Candidate_Weight and Candidate_Height as data members. Create a method 
GetCandidateDetails() and DisplayCandidateDetails(). Create a main method to demonstrate 
the Candidate class.*/

import 'dart:io';

class candidateDemo {
  int? Candidate_ID;
  String? Candidate_Name;
  int? Candidate_Age;
  double? Candidate_Weight;
  double? Candidate_Height;

  void GetCandidateDetails() {
    print("enter the Candidate id :");
    Candidate_ID = int.parse(stdin.readLineSync()!);
    print("enter the Candidate name :");
    Candidate_Name = stdin.readLineSync();
    print("enter the Candidate age:");
    Candidate_Age = int.parse(stdin.readLineSync()!);
    print("enter the Candidate weight :");
    Candidate_Weight = double.parse(stdin.readLineSync()!);
    print("enter the Candidate height :");
    Candidate_Height = double.parse(stdin.readLineSync()!);
  }

  void DisplayCandidateDetails() {
    print("the candidate id is : ${Candidate_ID}");
    print("the candidate name is : ${Candidate_Name}");
    print("the candidate age is : ${Candidate_Age}");
    print("the candidate weight is : ${Candidate_Weight}");
    print("the candidate height is : ${Candidate_Height}");
  }
}