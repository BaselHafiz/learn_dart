/*
compile time anf runtime

1. final variable : Once assigned a value, it's value cannot be changed. final should be used over const if you don't know the value at compile time,
   and it will be calculated/grabbed at runtime.
   If you want an HTTP response that can't be changed, if you want to get something from a database, or
   if you want to read from a local file, use final. Anything that isn't known at compile time should be final over const.

2. const : the variable's value is determined entirely at compile time and it will be completely immutable.
   it must be created from data that can be calculated at compile time. A const variable does not have access to anything you would need to calculate at runtime.
   1 + 2 is a valid const expression, but new DateTime.now() is not.
 */

void main() {
  // Constant Variables

  const a = 5;
//  a = 10;
//  const b = DateTime.now();

//  const var b = 6;
  const int c = 5;
//  const b;
//  b = 6;

  const myList1 = [4, 5];
//  myList1.add(6);
//  myList1 = [10, 11];

  var myList2 = const [4, 5];
//  myList2.add(6);
  myList2 = [10, 11];

  // Final Variables

  final d = 5;
//  d = 12;
  final e = DateTime.now();
//  final var f = 6;
  final int f = 6;
//  final g;
//  g = 10;

  final myList3 = [4, 5];
//  myList3 = 5;
//  myList3 = [10, 11];
  myList3.add(6);
  print(myList3);
  myList3.addAll([7, 8, 9]);
  print(myList3);

//  var myList4 = final [4, 5];
}

class A {
//  const a = 5;
  static const a = 10;
  final c = 10;
  static final b = 10;
}
