/*
Polymorphism could be static and dynamic both. Method Overloading is static polymorphism while, Method overriding is dynamic polymorphism.

1. Overloading means more than one method having the same method name that behaves differently based on the arguments passed while calling the method.
This called static because, which method to be invoked is decided at the time of compilation

2. Overriding means a derived class is implementing a method of its super class. The call to overriden method is resolved at runtime,
thus called runtime polymorphism. For this type, See package:learn_dart/introduction_to_dart/inheritance_and_overriding.dart
*/

void main() {
  print(getSum(10, 20));
}

int getSum(int a, int b) => a + b;

//  Function overloading (static polymorphism) isn't supported in Dart at all

//  double getSum(double a, double b) => a + b;
//  int getSum(int a, int b, int c) => a + b + c;






