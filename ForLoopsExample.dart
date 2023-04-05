import 'dart:io';
import 'print.dart';

void main(List<String> args) {
  numberPyramid2();
}

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

power() {
  print("Enter two numbers: ");
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  int dummy = 1;

  for (int i = 0; i < b; i++) {
    dummy *= a;
  }
  print("$a pow $b is: $dummy");
}

primeComposite() {
  print("Enter a positive numbers: ");
  int number = int.parse(stdin.readLineSync()!);
  bool dummy = false;
  if (number > 0) {
    for (int i = 2; i < number; i++) {
      if (number % i == 0) {
        dummy = true;
      }
    }
  } else {
    print("Please Enter a positive number");
  }
  if (!dummy) {
    print("$number is a prime number");
  } else {
    print("$number is a composite number");
  }
}

fibonacci() {
  print("Enter no to print fibonacci series upto: ");
  int input = int.parse(stdin.readLineSync()!);
  int dummy = 0;
  for (int i = 0; i <= input; i++) {
    stdout.write("${dummy += i} ");
  }
}

sumOfSeries() {
  print("Enter numbers to print series: ");
  int input = int.parse(stdin.readLineSync()!);
  double dummy = 0;
  for (int i = 1; i <= input; i++) {
    dummy += 1 / i;
  }
  print("Sum of the series upto $input is: $dummy");
}

star1() {
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 10; j++) {
      stdout.write("*");
    }
    stdout.writeln();
  }
}

starDownFlow() {
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j <= i; j++) {
      stdout.write("*");
    }
    stdout.writeln();
  }
}

oddSpacedStarFlow() {
  for (int i = 1; i <= 10; i += 2) {
    for (int j = 10; j > i; j--) {
      stdout.write(" ");
    }
    for (int k = 1; k <= i; k++) {
      stdout.write("*");
    }
    stdout.writeln();
  }
}

DoubleSpacedStarFlow() {
  for (int i = 1; i <= 5; i++) {
    for (int j = 5; j > i; j--) {
      stdout.write("  ");
    }
    for (int k = 1; k <= i; k++) {
      stdout.write("*");
    }
    stdout.writeln();
  }
}

numberPyramid() {
  int i, j, k;
  for (i = 1; i <= 5; i++) {
    for (j = 5; j > i; j--) {
      stdout.write(" ");
    }
    for (k = 0; k < i; k++) {
      stdout.write(i);
    }
    if (i > 1) {
      for (int l = 2; l <= i; l++) {
        stdout.write(i);
      }
    }
    stdout.writeln();
  }
}

numberPyramid2() {
  for (int i = 1; i < 6; i++) {
    for (int j = 5; j > i; j--) {
      write(" ");
    }
    for (int k = i; k >= 1; k--) {
      write(k);
    }
    if (i > 1) {
      for (int l = 2; l <= i; l++) {
        write(l);
      }
    }
    writeln("");
  }
}
