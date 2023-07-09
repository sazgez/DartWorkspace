void main(List<String> args) {
  sayHelloTo(); // Hello, Foo!
  sayHelloTo(name: 'Bar'); // Hello, Bar!
  /// invalid code
  // sayHelloTo(name: null);

  helloTo(); // Hello, null!
  helloTo(name: null); // Hello, null!
  helloTo(name: 'Baz'); // Hello, Baz!
}

/// specifying with a default value
void sayHelloTo({String name = 'Foo'}) {
  print('Hello, $name!');
}

/// optional
void helloTo({String? name}) {
  print('Hello, $name!');
}
