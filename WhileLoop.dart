import 'dart:io';
import 'dart:math';
import 'print.dart';

void main(List<String> args) {
  randomNumber();
}

revInput() {
  write("Enter a integer(output shall be reversed): ");
  int input = int.parse(stdin.readLineSync()!);
  String sInput = input.toString();
  String revInput = "";
  int i = sInput.length - 1;
  while (i >= 0) {
    revInput += sInput[i];
    i--;
  }
  print("reversed input is: $revInput");
}

sumOddEven() {
  write("Enter integers: ");
  List arr = [];
  for (int i = 0; i < 6; i++) {
    arr.add(int.parse(stdin.readLineSync()!));
  }
  int i = 0;
  num dummyEven = 0, dummyOdd = 0;
  while (i < arr.length) {
    if (arr[i] % 2 == 0) {
      dummyEven += arr[i];
    } else {
      dummyOdd += arr[i];
    }
    i++;
  }
  print("sum of even integers is: $dummyEven");
  print("sum of odd integers is: $dummyOdd");
}

hfcNumber() {
  write("Enter two numbers: ");
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);

  List hfcList = [];

  int maxNumber = a > b ? a : b;
  int hfc = 0;
  int i = 2;
  while (i < maxNumber) {
    if (a % i == 0 && b % i == 0) {
      hfcList.add(i);
    }
    i++;
  }
  for (int k in hfcList) {
    hfc = hfc < k ? k : hfc;
  }
  writeln("HFC of given nymbers is: $hfc");
}

dowhile() {
  bool loopAgain = false;
  do {
    write("Enter two numbers: ");
    int a = int.parse(stdin.readLineSync()!);
    int b = int.parse(stdin.readLineSync()!);
    writeln("Sum of these two is: ${a + b}");

    write("Do you want to try again (y/n): ");
    var input = stdin.readLineSync()!;
    if (input.length == 1) {
      loopAgain = input == 'y' ? true : false;
    } else {
      print("Invalid Input");
    }
  } while (loopAgain == true);
}

countNumbers() {
  write("Enter integers (^z to exit): ");
  List<int> arr = [];
  do {
    try {
      arr.add(int.parse(stdin.readLineSync()!));
    } catch (on) {
      break;
    }
  } while (true);
  print(arr.length);
  int pos = 0, neg = 0, zero = 0;
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] > 0) {
      pos++;
    } else if (arr[i] < 0) {
      neg++;
    } else if (arr[i] == 0) {
      zero++;
    }
  }
  writeln("Positive integers: $pos, negetive: $neg, zeroes: $zero");
}

largestSmallest() {
  write("Enter integers (^z to exit): ");
  List<int> arr = [];
  do {
    try {
      arr.add(int.parse(stdin.readLineSync()!));
    } catch (on) {
      break;
    }
  } while (true);
  int largest = arr[0];
  int smallest = arr[0];
  for (int i in arr) {
    largest = i > largest ? i : largest;
    smallest = i < smallest ? i : smallest;
  }
  writeln("Largest number is: $largest, smallest: $smallest");
}

randomNumber() {
  Random random = Random();
  int rNumber = random.nextInt(1000);
  int gNumber;
  do {
    write("guess the number(1-999): ");
    gNumber = int.parse(stdin.readLineSync()!);
    if (gNumber < rNumber) {
      print("Too low try Heigher");
    } else if (gNumber > rNumber) {
      print("Too high try Lower");
    } else {
      print("Correct!");
    }
  } while (gNumber != rNumber);
}
