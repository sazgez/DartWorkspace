void main(List<String> args) {
  makeUpperCase(); // null  BAR
  makeUpperCase('Foo'); // FOO  BAR
  makeUpperCase(null); // null  BAR
  makeUpperCase('Foo', 'Baz'); // FOO  BAZ
  makeUpperCase(null, 'Baz'); // null BAZ

  /// invalid code:
  // makeUpperCase('Foo', null);
}

void makeUpperCase([
  String? name, // default value is null
  String lastName = 'Bar', // default value is Bar
]) {
  print(name?.toUpperCase());
  print(lastName.toUpperCase());
}
