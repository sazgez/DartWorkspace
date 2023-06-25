void main(List<String> args) {
  const name = 'Foo';
  print(name);

  /// invalid code: const variables can't be assigned a value
  // name = 'Hello';

  const numbers = [1, 2, 3];
  print(numbers);

  /// exception will occur: Cannot remove from an unmodifiable list
  // numbers.removeAt(0);
}
