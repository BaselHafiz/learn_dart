/*
A closure is an inner function that has access to the outer function’s variables—scope chain.
The closure has three scope chains:
1. It has access to its own scope (variables defined between its curly braces).
2. It has access to the outer function’s variables.
3. It has access to the global variables.
 */
import 'dart:math';

int y;
void main() {
  int x = 10;
  Function displayX = () {
    // Closure
    x = 20;
    print(x);
  };

  displayX();

  int z = 1;
  var displayValue = () {
    int x = 10;
    Function getPower = () {
      // Closure
      x = 20;
      y = 2;
      z = z + 2;
      print(pow(x, y));
      print(pow(x, z));
    };
    return getPower;
  };

  var myClosure = displayValue();
  myClosure();
}
