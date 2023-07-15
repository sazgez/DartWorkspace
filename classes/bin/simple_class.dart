void main(List<String> args) {
  const person = Person(
    name: 'Joe',
    age: 30,
  );

  print(person.name);
  print(person.age);
}

class Person {
  final String name;
  final int age;

  const Person({
    required this.name,
    required this.age,
  });
}
