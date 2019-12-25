// Lambda Expression = Anonymous function = Nameless Function

void main() {
  Function addNumbersVer1 = (int a, int b) {
    int sum = a + b;
    print(sum);
  };

  var addNumbersVer2 = (int a, int b) => print(a + b);

  var multiplyBy10Ver1 = (int number) {
    return number * 10;
  };

  Function multiplyBy10Ver2 = (int number) => number * 10;

  addNumbersVer2(7, 5);
  print(multiplyBy10Ver2(5));
}
