import 'dart:io';

void main(List<String> args) {
  compareLists();
}

printLessNumbers() {
  List<int> list = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];

  for (int i in list) {
    if (i < 5) {
      stdout.write("${list[i]} ");
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
  stdout.writeln(c);
  for (int k = 0; k < c.length - 1; k++) {
    if (c[k] == c[k + 1]) {
      c.remove(c[k + 1]);
    }
  }
  stdout.writeln(c);
}
