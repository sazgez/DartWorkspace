void main(List<String> args) {
  /// invalid codes:
  // doSomethingWith();
  // doSomethingWith(name: null);

  doSomethingWith(name: 'Foo'); // Hello, Foo!
}

void doSomethingWith({
  required String name,
}) {
  print('Hello, $name!');
}
