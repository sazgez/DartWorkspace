import 'package:collection/collection.dart';

void main(List<String> args) {
  final names = {'Foo', 'Bar', 'Baz', 'Qux'};
  names.add('Foo');
  print(names); // {Foo, Bar, Baz, Qux}

  print('---------------');

  final names2 = ['Foo', 'Bar', 'Baz', 'Foo'];
  // final uniqueNames = {names2, names2}; // {[Foo, Bar, Baz, Foo]}
  final uniqueNames = {...names2};
  print(names2); // [Foo, Bar, Baz, Foo]
  print(uniqueNames); // {Foo, Bar, Baz}

  print('---------------');

  final foo1 = 'Foo';
  final foo2 = 'Foo';
  print(foo1.hashCode); // 21511413
  print(foo2.hashCode); // 21511413 (same as foo1)

  print('---------------');

  if (names.contains('Foo')) {
    // if block will be executed
    print('Found Foo');
  } else {
    print('Did not find Foo');
  }

  print('---------------');

  final ages1 = {20, 30, 40};
  final ages2 = {20, 30, 40};
  if (ages1 == ages2) {
    print('Ages are equal');
  } else {
    // else block will be executed
    print('Ages are not equal');
  }

  print('---------------');

  if (SetEquality().equals(ages1, ages2)) {
    // if block will be executed
    print('Ages are equal');
  } else {
    print('Ages are not equal');
  }

  print('---------------');

  /// if the contents are same,
  /// then the sets are equal.
  /// no matter what the
  /// order of the contents are.
  final ages3 = {40, 30, 20};
  if (SetEquality().equals(ages1, ages3)) {
    // if block will be executed
    print('Ages are equal');
  } else {
    print('Ages are not equal');
  }
}
