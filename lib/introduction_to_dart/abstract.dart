/*
The abstract class doesn't support multiple inheritances, while the interface support multiple implementations.
*/

import 'dart:math';

void main() {
//  var shape = Shape();    // Can't instantiate the abstract class

  Square s = Square()
    ..a = 10
    ..name = "Abc";
  print(s.getArea1());
}

abstract class Shape {
  String name;

  double getArea1() {
    return 123.456;
  }

  // Abstract Method is existed only in the abstract class
  double getArea2();
}

class Square extends Shape {
  double a;

  // Optional Implementation
  @override
  double getArea1() {
    return pow(a, 2);
  }

  // Mandatory Implementation
  @override
  double getArea2() {
    return null;
  }
}
