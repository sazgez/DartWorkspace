void main(List<String> args) {
  doSomethingWith(); // Hello, Bar!
  doSomethingWith(name: 'Foo'); // Hello, Foo!

  /// invalid:
  // doSomethingWith(name: null);
}

void doSomethingWith({String name = 'Bar'}) {
  print('Hello, $name!');
}
