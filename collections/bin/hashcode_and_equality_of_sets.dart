void main(List<String> args) {
  final person = Person(
    name: 'Foo',
    age: 10,
  );
  final dog = Dog(
    name: 'Foo',
    age: 10,
  );
  print(person.hashCode); // 89718215
  print(dog.hashCode); // 89718215
  final set = {person, dog};
  print(set); // {Person: Foo, 10, Dog: Foo, 10}
}

class Person {
  final String name;
  final int age;

  Person({
    required this.name,
    required this.age,
  });

  @override
  String toString() => 'Person: $name, $age';

  @override
  int get hashCode => Object.hash(
        name,
        age,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person && name == other.name && age == other.age;
}

class Dog {
  final String name;
  final int age;

  Dog({
    required this.name,
    required this.age,
  });

  @override
  String toString() => 'Dog: $name, $age';

  @override
  int get hashCode => Object.hash(
        name,
        age,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Dog && name == other.name && age == other.age;
}
