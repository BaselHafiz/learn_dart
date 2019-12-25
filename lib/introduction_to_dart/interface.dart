void main() {
  var interfaceNo1 = InterfaceNoOne();
  var interfaceNo2 = InterfaceNoTwo();
}

class InterfaceNoOne {
  int b;

  getValue1() {
    print("1");
  }
}

class InterfaceNoTwo {
  int c;

  getValue2() {
    print("2");
  }
}

class Square implements InterfaceNoOne, InterfaceNoTwo {
  double a;

  Square(this.a);

  // Its mandatory to override all of the interface's methods and instance variables
  // Mandatory Implementation
  @override
  double getValue1() {
//    super.getValue1();  // its prevented to call the methods of interface
    return 10;
  }

  // Mandatory Implementation
  @override
  double getValue2() {
//    super.b = 10;    // its prevented to access the variables of interface
    return 20;
  }

  @override
  int b;

  @override
  int c;
}
