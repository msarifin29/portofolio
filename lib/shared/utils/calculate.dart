int calculate(int year, int month) {
  var currentYear = DateTime.now().year;
  var currentMonth = DateTime.now().month;
  var current = currentYear - year;
  if (currentMonth < month) {
    current--;
  }
  return current;
}

String experience = "${calculate(2021, 6)}";
