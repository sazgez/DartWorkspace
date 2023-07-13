void main(List<String> args) {
  const names = ['Foo', 'Bar', 'Baz', 'Qux'];

  for (var name in names) {
    print(name);
  }

  print('-----------');

  for (final name in names) {
    if (name.startsWith('B')) {
      continue;
    }
    print(name);
  }

  print('-----------');

  for (final name in names) {
    if (name == 'Baz') {
      break;
    }
    print(name);
  }

  print('-----------');

  for (final name in names) {
    if (name == 'Qux') {
      continue;
    }
    print(name);
  }

  print('-----------');

  for (final name in names.reversed) {
    print(name);
  }

  print('-----------');

  for (int value in Iterable.generate(10)) {
    print(value);
  }
}
