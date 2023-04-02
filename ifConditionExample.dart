import 'dart:ffi';
import 'dart:io';

void main(List<String> args) {}

checkSquare() {
  print("Enter Length and breath");
  int? lenght = int.parse(stdin.readLineSync()!);
  int? breath = int.parse(stdin.readLineSync()!);

  if (lenght == breath) {
    print("Its a square");
  } else {
    print("Its a rectangle");
  }
}

checkGreater() {
  print("enter two numbers: ");
  int? a = int.parse(stdin.readLineSync()!);
  int? b = int.parse(stdin.readLineSync()!);
  if (a > b) {
    print("$a is greater");
  } else {
    print("$b is greater");
  }
}

checkGrade() {
  print("Enter marks: ");
  int? number = int.parse(stdin.readLineSync()!);
  print("Grade: ");
  if (number < 25) {
    print("F");
  } else if (number >= 25 && number < 45) {
    print("E");
  } else if (number >= 45 && number < 50) {
    print("D");
  } else if (number >= 50 && number < 60) {
    print("C");
  } else if (number >= 60 && number < 80) {
    print("B");
  } else if (number >= 80 && number <= 100) {
    print("A");
  } else {
    print("invalid input");
  }
}

checkAge() {
  print("Enter age of 3 people: ");
  int? a = int.parse(stdin.readLineSync()!);
  int? b = int.parse(stdin.readLineSync()!);
  int? c = int.parse(stdin.readLineSync()!);

  if (a > b) {
    if (a < c) {
      print("$c is greatest and $b is smallest");
    } else if (b > c) {
      print("$a is greatest and $c is smallest");
    } else {
      print("$a is greatest and $b is smallest");
    }
  } else if (b > c) {
    if (b < a) {
      print("$a is greatest and $c is smallest");
    } else if (a < c) {
      print("$b is greatest and $a is smallest");
    } else {
      print("$b is greatest and $c is smallest");
    }
  } else if (c > a) {
    if (c < b) {
      print("$b is greatest and $a is smallest");
    } else if (a > b) {
      print("$c is greatest and $b is smallest");
    } else {
      print("$c is greatest and $a is smallest");
    }
  }
}

checkLowercase() {
  String? letter = stdin.readLineSync();
  if (letter != null) {
    if (letter.contains(RegExp(r'[a-z]'))) {
      print("letter is LowerCase");
    } else if (letter.contains(RegExp(r'[A-Z]'))) {
      print("Letter is UpperCase");
    } else {
      print("Invalid Input");
    }
  } else {
    print("Please Enter a value to continue!");
  }
}

checkLeapYear() {
  print("Enter year: ");
  int? year = int.parse(stdin.readLineSync()!);
  if (year % 4 == 0) {
    print("$year is a leap year");
  } else {
    print("$year is not leap year");
  }
}

checkVovel() {
  var input = stdin.readLineSync()!;
  var char = input.toLowerCase() as Char;
  if (char != Char || input.length > 1) {
    if (char == 'a' ||
        char == 'e' ||
        char == 'i' ||
        char == 'o' ||
        char == 'u') {
      print("$char is a vovel");
    } else {
      print("$char is a consonent");
    }
  } else {
    print("Please enter valid input");
  }
}

double checkAttendence() {
  print("Enter no of classes held: ");
  int? classesHeld = int.parse(stdin.readLineSync()!);

  print("Enter no of classes attended: ");
  int? classesAttend = int.parse(stdin.readLineSync()!);

  double perc = (classesAttend / classesHeld) * 100;
  print("ypur percentage is: $perc");
  return perc;
}

checkExamAttend() {
  var perc = checkAttendence();
  if (perc < 75) {
    print("your Percentage is very low, you are not allowed to sit in exam");
  } else {
    print("your Percentage is good, you are allowed to sit in exam");
  }
}

checkAttendIssue() {
  var perc = checkAttendence();
  print("did you had medical issues(y/n): ");
  Char? issues = stdin.readLineSync() as Char;

  if (perc < 75 && issues == 'n') {
    print("your Percentage is very low, you are not allowed to sit in exam");
  } else if (perc < 75 && issues == 'y') {
    print("permission granted to sit in exam, despite low attendence");
  } else {
    print("your Percentage is good, you are allowed to sit in exam");
  }
}
