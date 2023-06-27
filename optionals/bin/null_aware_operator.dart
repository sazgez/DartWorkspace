void main(List<String> args) {
  String? lastName;
  print(lastName?.length);

  /// invalid
  // print(lastName.length);

  String? nullName;

  /// ?? operator
  /// if the variable of the left hand side isn't null, take its value
  /// otherwise take the value of the right hand side
  final name = nullName ?? 'Foo';
  print(name); // Foo
  print(nullName ?? 'Bar'); // Bar
  print(lastName ?? nullName); // null
  print(lastName ?? nullName ?? 'Baz'); // Baz
}
