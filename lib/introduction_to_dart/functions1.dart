String name = "functions1";

void main() {
  /*print(sayHiToUser2("Basel"));
  showInfo1("Basel", 40, 5.254);
  showInfo2("Basel");
  showInfo2("Basel", age: 40);
  showInfo2("Basel", degree: 5.254, age: 45);
  showInfo2("Basel", age: 45, degree: 5.254);
  showInfo3("Basel", age: 40);
  showInfo3("Basel", degree: 5.254);
  showInfo4("Basel",40);*/

  showInfo3("Basel");
}

String sayHiToUser1(String name) {
  return "Hi $name ...";
}

sayHiToUser2(String name) {
  return "Hi $name ...";
}

sayHiToUser3(String name) => print("Hi $name ...");

String sayHiToUser4(String name) => "Hi $name ...";

void showInfo1(String name, int age, double degree) {
  print(name);
  print(age);
  print(degree);
}

//Optional parameters
//Should be exist at the end of arguments as below
showInfo2(String name, {int age, double degree}) {
  // 2 optional parameters
  print(name);
  print(age);
  print(degree);
}

showInfo3(String name, {int age = 15, double degree = 15.5}) {
  print(name);
  print(age);
  print(degree);
}

showInfo4(String name, [int age = 15, double degree = 15.5]) {
  print(name);
  print(age);
  print(degree);
}

int getSum(int a, int b) => a + b;  // instead of writing return a + b;