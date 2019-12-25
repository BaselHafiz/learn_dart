/*
 Steps of For loop:
 1. Initialization          2. Condition Check
 3. Code Execute            4. Increment or decrement
*/

void main() {
  /*int x = 10;
  bool result = x >= 15 ? true : false;
  print(result);

  int y = x >= 15 ? 10 : 20;
  print(y);
  x != 5 ? print("YES") : print("NO");*/

  /*for (int i = 0; i < 5; i++) {
    print("$i"); // print(i);
  }*/

  int xYz = 10;
//  print("The value of xyz is " + xyz);
  print("The value of xyz is $xYz");

  List<int> numbers = List();
  numbers.addAll([10, 20, 30, 40, 50]);
  /*for (int i = 0; i < numbers.length; i++) {
    print(numbers[i]);
  }*/

  // These built-in functions aren't allowed for fixed-length lists
  numbers.remove(30);
//  numbers[2] = null;
//  numbers.removeAt(2);
  numbers.add(60);

  print("\n");
//  for (int element in numbers) print("$element");
  numbers.forEach((ele) => print(ele));

  /*final int a = 10;
  final b = 20;
  const int c = 10;
  const d = 20;*/

  final List<int> myList = List();
  myList.add(5);  // It's accepted
//  myList = List(); // It isn't accepted

  String name;
//  String name = 'Basel';
  String nameToPrint = name ?? "Undefined User";
  print(nameToPrint);
}

class MyClass {
  final int a = 10;
  static const int b = 20;
//  const int b = 20;
}
