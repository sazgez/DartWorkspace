void main(List<String> args) {
  addToArrayWrong();

  /// output:
  // [Foo 1, Bar 1, Baz 1, Foo 2, Bar 2, Baz 2]
  // [Foo 2, Bar 2, Baz 2]
  // [Foo 1, Bar 1, Baz 1, Foo 2, Bar 2, Baz 2]

  print('------------------------------------------');

  addToArrayRight();

  /// output:
  // [Foo 1, Bar 1, Baz 1]
  // [Foo 2, Bar 2, Baz 2]
  // [Foo 1, Bar 1, Baz 1, Foo 2, Bar 2, Baz 2]
  // [Foo 1, Bar 1, Baz 1, Foo 2, Bar 2, Baz 2]

  print('------------------------------------------');

  addToDictionaryWrong();

  print('------------------------------------------');

  addToDictionaryRight();
}

void addToArrayWrong() {
  final names1 = ['Foo 1', 'Bar 1', 'Baz 1'];
  final names2 = ['Foo 2', 'Bar 2', 'Baz 2'];
  // all changes of allNamesWrong will effect also names1
  final allNamesWrong = names1;
  allNamesWrong.addAll(names2);
  print(names1);
  print(names2);
  print(allNamesWrong);
}

void addToArrayRight() {
  final names1 = ['Foo 1', 'Bar 1', 'Baz 1'];
  final names2 = ['Foo 2', 'Bar 2', 'Baz 2'];
  final allNamesRight = [...names1, ...names2];
  // another way: (although, do it like the previous instance)
  final anotherWay = [...names1]..addAll(names2);
  print(names1);
  print(names2);
  print(allNamesRight);
  print(anotherWay);
}

void addToDictionaryWrong() {
  // adding to const will crash
  const info = {
    'name': 'Foo',
    'age': 20,
    'height': 1.8,
  };
  final result = info;
  try {
    result.addAll(
      {
        'weight': 80,
      },
    );
  } catch (e) {
    print(e); // Unsupported operation: Cannot modify unmodifiable map
  }
}

void addToDictionaryRight() {
  const info = {
    'name': 'Foo',
    'age': 20,
    'height': 1.8,
  };
  final result = {...info}..addAll(
      {
        'weight': 80,
      },
    );
  print(result); // {name: Foo, age: 20, height: 1.8, weight: 80}
}
