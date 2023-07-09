void main(List<String> args) {
  describe(); // Hello, World!
  describe(something: null); // null
  describe(something: 'Hello, Dart!'); // Hello, Dart!
}

void describe({
  String? something = 'Hello, World!',
}) {
  print(something);
}
