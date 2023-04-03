import 'dart:io';

void main(List<String> args) {
  sumOddEven();
}

revInput() {
  stdout.write("Enter a integer(output shall be reversed): ");
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
  stdout.write("Enter integers: ");
  List arr = [];
  for (int i = 0; i < 6; i++) {
    arr.add(int.parse(stdin.readLineSync()!));
  }
  int i = 0;
  num dummyEven = 0, dummyOdd = 0;
  while (i < arr.length) {
    if (arr[i] > 0) {
      dummyEven += arr[i];
    } else {
      dummyOdd += arr[i];
    }
    i++;
  }
  print("sum of even integers is: $dummyEven");
  print("sum of odd integers is: $dummyOdd");
}
