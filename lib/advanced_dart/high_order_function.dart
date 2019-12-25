/* High-order function
1. Can accept a function as a parameter.
2. Or can return a function.
3. Or can do both.
*/
import 'dart:math';

void main() {
  /*executeOperation(5, 4, multiplication);
  Function myFunc1 = calculate();
  print(myFunc1(10));*/

  var powerBy2 = (e) => pow(e, 2);
  Function myFunc2 = myExampleFunction(10, powerBy2);
  print(myFunc2());
}

// Example 1
void executeOperation(int value1, int value2, Function operationType) {
  print(operationType(value1, value2));
}

int addition(int a, int b) {
  return a + b;
}

int multiplication(int a, int b) {
  return a * b;
}

// Example 2
Function calculate() {
  var multiplyBy4 = (value) => value * 4;
  return multiplyBy4;
}

// Example 3
Function myExampleFunction(int value, Function evaluate) {
  var myFun = () => 5 * evaluate(value);
  return myFun;
}
