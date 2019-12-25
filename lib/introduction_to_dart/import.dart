import 'package:learn_dart/introduction_to_dart//functions1.dart';
import 'package:learn_dart/introduction_to_dart/functions2.dart' as myLib2;
import 'package:learn_dart/introduction_to_dart/basics1.dart' show xValue, yValue;
import 'package:learn_dart/introduction_to_dart/basics1.dart' hide xValue;
import 'package:learn_dart/advanced_dart/getter_setter.dart';

void main() {
//  String name = "introduction";
  print(name);
  print(myLib2.name);
  print(myLib2.age);
//  print(age);
  print(xValue);
  print(yValue);
//  print(zValue);


  var person = Person();
  print(person.cValue);
  person.salary = 10;
  print(person.salary);
  // _salary is private variable in class Person (Encapsulation)
//  print(person._salary);
}
