import 'dart:io';

import 'L5P1.dart';

void main(List<String> args) {
  candidateDemo candidate = candidateDemo();
  candidate.GetCandidateDetails();
  print("==================================================");
  candidate.DisplayCandidateDetails();
  print("==================================================");
}
