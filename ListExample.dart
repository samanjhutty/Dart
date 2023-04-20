///Solutions
import 'dart:io';
import 'print.dart';

void main() {
  firstLast();
}

printLessNumbers() {
  List<int> list = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  // Set set = Set();
  // Set st = {};

  for (int i in list) {
    if (i < 5) {
      write("${list[i]} ");
    }
  }
}

compareLists() {
  List a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  List c = [];

  for (int i = 0; i < a.length; i++) {
    for (int j = 0; j < b.length; j++) {
      if (a[i] == b[j]) {
        c.add(a[i]);
      }
    }
  }
  writeln(c);
  for (int k = 0; k < c.length - 1; k++) {
    if (c[k] == c[k + 1]) {
      c.remove(c[k + 1]);
    }
  }
  writeln(c);
}

evenElements() {
  List<int> list = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List dummy = [];

  for (int i in list) {
    if (i % 2 == 0) {
      dummy.add(i);
    }
  }
  write("New list is: $dummy");
}

firstLast() {
  writeln("Enter no of elements to be entered: ");
  int length = int.parse(stdin.readLineSync()!);
  write("Enter elements of list: ");

  List list = [];
  for (int i = 0; i < length; i++) {
    list.add(int.parse(stdin.readLineSync()!));
  }
  writeln("Entered list: $list");
  List? list2 = List.filled(2, null, growable: true);
  list2[0] = list.first;
  list2[1] = list.last;
  writeln("new list: $list2");
}
