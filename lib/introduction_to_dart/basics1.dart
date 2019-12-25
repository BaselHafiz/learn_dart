import 'dart:io';

int xValue = 10, yValue = 20, zValue = 30;

void main() {
  /*print("I love Dart");
  print(5.613);
  print(true);

  var myName = "Ahmed",
  myNum = 14.56;
  print(myName);
  print(myNum);*/

  /*int x = 10;
  String str1 = "My age is 20";
  String str2 = "'Ahmed'";
  String str3 = 'It\'s easy';
  double y = 5.34;
  bool z = false;

  print(x + y);
// String Interpolation
  print("My name is $str2");
  print(str1.length);
  print("My name is " + str2);
  print("The number of characters: " + str2.length.toString());
  print("The number of characters: ${str2.length}");
  print("My name is ${str2 + "and " + str1}");*/

  // Fixed_length list
  List<int> numbers = new List(5);
  print(numbers);
  // Variable_length List
  List<String> names = List();
  names.addAll(["A", "B", "C"]); // List names = ["A", "B", "C"];
  names.add("D");
  print(names);
  print(names.length);

  /*int x = 10, y = 15;
  bool isGood = x!=y || x-y == 5;
  print(isGood);
  print('The result: ${x + y}');*/

//  print("Enter your name");

  int hexValue = 0xABC;
  double exponents = 1.5e2;
  print(hexValue);
  print(exponents);

  String str4 =
      "PrinterDriver?  HP LaserJet P1008 ?= Microsoft enhanced Point and Print compatibility driver " // concatenation
      "Foxit Reader PDF Printer Driver "
      "Microsoft enhanced Point and Print compatibility driver";
  print(str4);

  /*stdout.writeln("Enter your age");
  String strAge = stdin.readLineSync();
  int intAge = int.parse(strAge);
  print("Your age is $intAge ...");*/
}
