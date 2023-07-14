import 'dart:collection';

void main(List<String> args) {
  final foo = Person(
    name: 'Foo',
    siblings: [
      Person(name: 'Bar'),
    ],
  );
  foo._siblings?.add(Person(
    name: 'Baz',
  ));

  try {
    foo.siblings?.add(
      Person(
        name: 'Baz',
      ),
    );
  } catch (e) {
    print(e); // Unsupported operation: Cannot add to an unmodifiable list
  }
}

class Person {
  final String name;
  final List<Person>? _siblings;

  const Person({
    required this.name,
    List<Person>? siblings,
  }) : _siblings = siblings;

  UnmodifiableListView<Person>? get siblings =>
      _siblings == null ? null : UnmodifiableListView(_siblings!);
}
