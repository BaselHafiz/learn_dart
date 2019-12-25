void main() {
  var personOne = Person();
  String msg = personOne(40, "Ahmed");
  print(msg);
}

class Person {
  String call(int age, String name) => "Name: $name \nAge: $age";
}
