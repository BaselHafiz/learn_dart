String name = "functions2";
int age = 45;

void main() {
  /*sayHi("Basel");
  sayHi(15);*/

  List<String> names = ['Ahmed', 'Gaber', 'Amgad', 'Bodeee', 'Amera'];

//Use the anonymous functions
  names
      .where((element) => element.startsWith('A'))
      .map((ele) => ele.toUpperCase())
      .forEach((e) => print(e));

  print(names);

  /*for (int i = 0; i < names.length; i++) {
    if (names[i].startsWith('a')) {
      names[i] = names[i].toUpperCase();
      print(names[i]);
    }
  }*/
}

sayHi(name) => print("Hi $name");
