void main(List<String> args) {
  /// invalid codes:
  // sayGoodbyeTo();
  // sayGoodbyeTo('Foo');

  sayGoodbyeTo('Foo', 'Bar');
  sayGoodbyeTo(null, null);
}

void sayGoodbyeTo(
  String? person,
  String? anotherPerson,
) {
  print('Goodbye, $person and $anotherPerson!');
}
