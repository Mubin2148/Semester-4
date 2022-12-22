/*Define Time class with hour and minute as data member. Also define addition() method to add 
two-time objects.*/

class Time {
  int? hour;
  int? minute;
  void addition(Time t1, Time t2) {
    if (minute > 59) {
      hour++;
    }
  }
}
