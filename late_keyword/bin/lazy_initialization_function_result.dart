void main(List<String> args) {
  print('Before');
  late String name = provideName();
  print('After');
  print(name);

  /// expected output:
  /// Before
  /// Function is called
  /// After
  /// Foo Bar

  /// occured:
  /// Before
  /// After
  /// Function is called
  /// Foo Bar
}

String provideName() {
  print('Function is called');
  return 'Foo Bar';
}
