/*
 class Parent
 class Child extends Parent

 Parent = Superclass = Base
 Child = Subclass = Derived
*/

void main() {
  /*Person p1 = Person();
  // Create an object using Person(); and assign it to the reference variable p1.
  Person p2 = Person.constructorNo1(15);  // p2 is a reference variable
  var p3 = Person.constructorNo2(10, 'Basel');

  p1.personId = 3;
  p1.personName = 'Ahmed';

  // Cascade operator
  Person p4 = Person()
    ..personId = 4
    ..personName = 'Boda';

  p1.printInfo();
  p2.printInfo();
  p3.printInfo();
  p4.printInfo();*/

//  Employee emp1 = new Employee();
  Employee emp2 = new Employee.employeeConstructorNo1(10, 'Mona', 10.6);
  emp2.printInfo();

  Employee emp3 = new Employee.employeeConstructorNo2(20, 'Bodeee', 5.6);
  emp3.printInfo();

  print(emp2.gender);
}

class Person {
  int personId = 111; // Instance or field variable and default value is 111
  String personName = "unknown";

  String gender = 'Male';

  // Default constructor
  /*Person() {
    print("No-Parameterized Person Constructor");
  }*/

  // Default constructor
  Person(this.personId, this.personName) {
    print("Parameterized Person Constructor");
  }

  // Named constructors
  Person.personConstructorNo1(this.personId);

  Person.personConstructorNo2(this.personId, this.personName);

  printInfo() => print('$personId ... $personName');
}

class Employee extends Person {
  double salary;

  @override
  String gender = 'Female';

  // Default constructor
  /*Employee() {    // its identical to Employee() : super() {
    print("No-Parameterized Employee Constructor");
  }*/

  // Parameterized constructor
//  Employee({this.salary = 15.154});  // Here is an important error.

  Employee.employeeConstructorNo1(int id, String name, double salary)
      : super(id, name) {
//    this.personId = id;
//    this.personName = name;
    this.salary = salary;
  }

  Employee.employeeConstructorNo2(int id, String name, double salary)
      : super.personConstructorNo1(id) {
    this.personName = name;
    this.salary = salary;
  }

  @override
  printInfo() {
    print('$personId ... $personName ... $salary');
    super.printInfo();
  }
}
