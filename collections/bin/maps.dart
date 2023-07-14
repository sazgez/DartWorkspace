void main(List<String> args) {
  final info = {
    'name': 'Foo',
    'age': 10,
  };
  print(info); // {name: Foo, age: 10}
  print(info['name']); // Foo
  print(info['age']); // 10

  print('------------');

  print(info.keys); // (name, age)
  print(info.values); // (Foo, 10)

  print('------------');

  info.putIfAbsent(
    'height',
    () => 180,
  );
  print(info); // {name: Foo, age: 10, height: 180}

  print('------------');

  info.putIfAbsent(
    'height',
    () => 190,
  );
  print(info); // {name: Foo, age: 10, height: 180}

  print('------------');

  info['height'] = 190;
  print(info); // {name: Foo, age: 10, height: 190}

  print('------------');

  info['isMarried'] = false;
  print(info); // {name: Foo, age: 10, height: 190, isMarried: false}

  print('------------');

  for (final entry in info.entries) {
    print(entry.key);
    print(entry.value);
  }

  print('------------');

  if (info.containsKey('height')) {
    print('Height is ${info['height']}');
  } else {
    print('Height is not found');
  }

  print('------------');

  print(info['weight']); // null

  print('------------');

  final mapWithIntKeys = {
    10: 20,
    30: 40,
  };
  print(mapWithIntKeys); // {10: 20, 30: 40}
  print(mapWithIntKeys[10]); // 20
}
