void main(List<String> args) {
  const names = ['Foo', 'Bar', 'Baz', 'Qux'];

  for (final name in names) {
    print(name);
  }

  print('-----------');

  for (final name in names.reversed) {
    print(name);
  }

  print('-----------');

  if (names.contains('Bar')) {
    print('Bar is in the list');
  }

  print('-----------');

  for (final name in names.where((e) => e.startsWith('B'))) {
    print(name);
  }

  print('-----------');

  print(names[0]); // names.elementAt(0);
  print(names[1]);
  print(names[2]);
  print(names[3]);

  print('-----------');

  /// starting index is inclusive
  /// ending index is exclusive
  names.sublist(1).forEach(print); // Bar Baz Qux
  names.sublist(1, 3).forEach(print); // Bar Baz
  names.sublist(2, 3).forEach(print); // Baz

  print('-----------');

  final ages = [20, 30, 40];
  // ages = [1, 2, 3]; // invalid
  ages.add(50);
  ages.add(60);
  print(ages); // [20, 30, 40, 50, 60]

  print('-----------');

  /// as long as the ordering and the contents are exactly same,
  /// the lists have been considered as equal
  const names1 = ['Foo', 'Bar', 'Baz', 'Qux'];
  const names2 = ['Foo', 'Bar', 'Baz', 'Qux'];
  if (names1 == names2) {
    print('they are equal');
  } else {
    print('they are not equal');
  }

  print('-----------');

  ['Foo', 'Bar', 'Baz']
      .map((e) => e.toUpperCase())
      .forEach(print); // FOO BAR BAZ

  ['John', 'Jane', 'Joe'].map((e) => e.length).forEach(print); // 4 4 3

  print('-----------');

  final numbers = [1, 2, 3, 4, 5];
  final sum = numbers.fold(
    0,
    (previousValue, element) => previousValue + element,
  );
  print(sum); // 15

  print('-----------');

  final totalLength = names.fold(
    0,
    (totalLength, str) => totalLength + str.length,
  );
  print(totalLength); // 12

  print('-----------');

  final result = names.fold(
    '',
    (result, str) => '$result ${str.toUpperCase()}',
  );
  print(result); //  FOO BAR BAZ QUX
}
