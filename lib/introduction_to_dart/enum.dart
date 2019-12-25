enum Gender { male, female }

void main() {
  Person p1 = Person("Ahmed", Gender.male);
  Person p2 = Person("Mona", Gender.female);

  print("${p1.name}, ${p1.type}");
  print("${p2.name}, ${p2.type}");
  print('\n');

  print(Gender.values);

  Gender.values
      .forEach((element) => print('index: ${element.index}, value: $element'));
}

class Person {
  String name;
  Gender type;

  Person(this.name, this.type);
}
