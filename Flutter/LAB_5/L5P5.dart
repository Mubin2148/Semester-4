/*Create a class named Member having the following members:
1 - Name
2 - Age
3 - Phone number
4 - Address
5 - Salary
It also has a method named printSalary() which prints the salary of the members. Two classes
Employee and Manager inherit the Member class. The Employee and Manager classes have
data members specialization and department respectively. Now, assign name, age,
phone_number, address and salary to an Employee and Manager by making an object of both
of these classes and print the same along with specialization and department respectively.*/

import 'dart:io';

void main(List<String> args) {
  Employee emp = Employee();
  Manager man = Manager();
  emp.setEmployee();
  man.setManager();
  emp.getEmployee();
  man.getManager();
}

class Member {
  int? Age, Phone, Salary;
  String? Name, Address;

  void printSalary() {
    print("Salary\t\t= $Salary");
  }
}

class Employee extends Member {
  String? specialization;

  void setEmployee() {
    print("-----------------------");
    print("Enter Employee Detail");
    stdout.write("Enter Name\t\t: ");
    Name = stdin.readLineSync();
    stdout.write("Enter Age\t\t: ");
    Age = int.parse(stdin.readLineSync()!);
    stdout.write("Enter Phone\t\t: ");
    Phone = int.parse(stdin.readLineSync()!);
    stdout.write("Enter Address\t\t: ");
    Address = stdin.readLineSync();
    stdout.write("Enter Salary\t\t: ");
    Salary = int.parse(stdin.readLineSync()!);
    stdout.write("Enter Specialization\t: ");
    specialization = stdin.readLineSync();
  }

  void getEmployee() {
    print("-----------------------");
    print("Employee Detail");
    print("Name\t\t= $Name");
    print("Age\t\t= $Age");
    print("Phone\t\t= $Phone");
    print("Address\t\t= $Address");
    print("Specialization\t= $specialization");
    printSalary();
  }
}

class Manager extends Member {
  String? department;

  void setManager() {
    print("-----------------------");
    print("Enter Manager Detail");
    stdout.write("Enter Name\t\t: ");
    Name = stdin.readLineSync();
    stdout.write("Enter Age\t\t: ");
    Age = int.parse(stdin.readLineSync()!);
    stdout.write("Enter Phone\t\t: ");
    Phone = int.parse(stdin.readLineSync()!);
    stdout.write("Enter Address\t\t: ");
    Address = stdin.readLineSync();
    stdout.write("Enter Salary\t\t: ");
    Salary = int.parse(stdin.readLineSync()!);
    stdout.write("Enter Department\t: ");
    department = stdin.readLineSync();
  }

  void getManager() {
    print("-----------------------");
    print("Manager Detail");
    print("Name\t\t= $Name");
    print("Age\t\t= $Age");
    print("Phone\t\t= $Phone");
    print("Address\t\t= $Address");
    print("Department\t= $department");
    printSalary();
  }
}
