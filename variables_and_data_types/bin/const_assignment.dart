void main(List<String> args) {
  /// invalid operation: const variables must be initialized with a constant value
  // final age = 10;
  // const age2 = age;

  const name = 'Foo';
  const name2 = name;
  print(name2);

  const number = 5;
  final number2 = number;
  print(number2);
}
