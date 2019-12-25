void main() {
  /*try {
//    double result = 12 / 4;
    int result = 12 ~/ 0;
    print("The result is $result");
  } on IntegerDivisionByZeroException {
    print("Can't divide by zero");
  }*/

  /*try {
    int result = 12 ~/ 0;
    print("The result is $result");
  } catch (e) {
    print("The exception thrown is $e");
  }*/

  /*try {
//    int result = 12 ~/ 2;
    int result = 12 ~/ 0;
    print("The result is $result");
  } catch (e) {
    print("The exception thrown is $e");
  } finally {
    print("This is FINALLY clause and is always executed");
  }*/

  // My custom Exception
  try {
    depositMoney(100);
    depositMoney(-50);
  } catch (e) {
    print(e.displayErrorMessage());
  }

  /*try {
    depositMoney(-100);
  } on DepositException {
    print("You can't do that");
  }*/
}

class DepositException implements Exception {
  String displayErrorMessage() {
    return "You can't deposit a MINUS value";
  }
}

void depositMoney(int amount) {
  // MY CODE
  if (amount <= 0) throw new DepositException();
}
