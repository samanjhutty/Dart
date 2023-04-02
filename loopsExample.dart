import 'dart:io';

void main(List<String> args) {}

printNumber() {
  for (int i = 1; i < 11; i++) {
    print(i);
  }
}

sumNumbers() {
  int a = 0;
  for (int i = 1; i < 11; i++) {
    a += i;
  }
  print("sum of first 10 numbers is: $a");
}

printTable() {
  print("Enter a positive number: ");
  int number = int.parse(stdin.readLineSync()!);

  if (number.isNegative) {
    print("Enter a positive integer");
  } else {
    for (int i = 1; i < 11; i++) {
      print("$number * $i = ${number * i}");
    }
  }
}

factorialNumber() {
  int dummmy = 1;
  print("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);
  for (int i = number; i > 1; i--) {
    dummmy *= i;
  }
  print("Factorial of $number is: $dummmy");
}
