void main(List<String> args) {
  print([1, 2, 3, 1].containsDuplicateValues); // true
  print([1, 2, 3].containsDuplicateValues); // false
  print(['Foo', 'Bar', 'foo'].containsDuplicateValues); // false
  print(['Foo', 'Bar', 'Foo'].containsDuplicateValues); // true
}

extension on Iterable {
  bool get containsDuplicateValues => toSet().length != length;
}
