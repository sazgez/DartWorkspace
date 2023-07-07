void main(List<String> args) {
  final person = Person();
  person.description = 'Description 1';
  print(person.description);
  person.description = 'Description 2';
  print(person.description);

  final woof = Dog();
  woof.description = 'Description 1';
  print(woof.description);

  /// invalid code: description has already been initialized
  // woof.description = 'Description 2';
  // print(woof.description);
}

class Person {
  late String description;
}

class Dog {
  late final String description;
}
