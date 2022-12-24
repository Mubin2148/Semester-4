/*Write a dart code that creates a List with the following values: “Delhi”, “Mumbai”, “Bangalore”,
“Hyderabad” and “Ahmedabad”. Replace “Ahmedabad” with “Surat” in the above List.*/
void main(List<String> args) {
  List<String> list = [
    "Delhi",
    "Mumbai",
    "Banglore",
    "Hydrabad",
    "Ahmedabad",
  ];
  for (int i = 0; i < 5; i++) {
    if (list[i] == "Ahmedabad") {
      list[i] = "Surat";
    }
  }
  print("The new list is : $list");
}
