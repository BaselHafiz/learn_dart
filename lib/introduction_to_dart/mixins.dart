void main() {
  Child()
    ..a = 1
    ..b = 2
    ..c = 3
    ..printData();

  Third obj = Third();
  obj.x = 10;
  obj.y = 20;
  obj.z = 30;
  obj.printInfo();
}

class A {
  int a;
}

class B {
  int b;
}

class C {
  int c;
}

class Child extends A with B, C {
  printData() {
    print('$a $b $c');
  }
}

class First {
  int x;
}

class Second extends First {
  int y;
//  x = 5;
}

class Third extends Second {
  int z;
  /*x = 10;
  y = 40;*/
  printInfo() {
    print('$x $y $z');
  }
}
