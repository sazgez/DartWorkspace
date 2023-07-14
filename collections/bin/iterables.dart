void main(List<String> args) {
  final iterable = Iterable.generate(
    20,
    (index) => getName(index),
  );
  for (final name in iterable.take(2)) {
    print(name);
  }

  /// output:
  // Get name got called
  // John #0
  // Get name got called
  // John #1
}

String getName(int i) {
  print('Get name got called');
  return 'John #$i';
}
