/*
Inside the static function you can't accessing the instance functions and variables,
but you can only accessing the static instance functions and variables.
*/
void main() {
  var b1 = Button();
  var b2 = Button();
  var b3 = Button();

  print(Button.counter);
//  print(b3.counter);    // The static variables can't be accessed by any object and they are associated with the class itself, rather than with any object.

  /*Teacher.gender = "male";
  Teacher teacher1 = new Teacher();
  teacher1.name = "A";
  Teacher teacher2 = new Teacher();
  teacher2.name = "B";
  print(teacher1.name + " is " + Teacher.gender);
  print(teacher2.name + " is " + Teacher.gender);*/
}

class Button {
  static int counter = 0;

  Button() {
    counter++;
  }
}

class Teacher {
  String name;

  // static instance variable
  static String gender;

  // static method
  static void getValue() {
    print("");
    // Not allowed to use 'this' keyword inside a static function
//    this.name = "Ahmed";
    // Not allowed to access the instance variable here.
//    name = "Ahmed";
    // It's allowed to access the static instance variable here.
    gender = "Male";
    // It's allowed to access the static instance function here.
    printDetails();
    // Not allowed to access the instance function here.
//    getGender();
  }

  getName() {}

  static printDetails() {}

  getGender() {
    printDetails();
    gender = "Male";
    this.name = "Ahmed";
    getName();
  }
}
