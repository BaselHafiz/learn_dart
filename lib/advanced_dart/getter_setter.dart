void main() {
  var person = Person();

  person.name = "Basel"; // Calling default setter(person.name) to set  value
  print(person.name);    // Calling default getter(person.name) to get  value

  person.salary = 10;        // Calling custom setter(person.personSalary) to set  value
  print(person.salary);      // Calling custom getter(person.personSalary) to get  value
}

class Person {
  String name;
  int cValue = 12345;
  int _salary;          // Private instance variable for its own library

  // custom setter
  set salary(int value) => _salary = value * 100 + 150;

  // custom getter
  int get salary => _salary;
}
