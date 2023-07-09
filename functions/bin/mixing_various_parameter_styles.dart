void main(List<String> args) {
  describeFully('Foo'); // Hello Foo Bar
  describeFully('Foo', lastName: null); // Hello Foo null
  describeFully('Foo', lastName: 'Baz'); // Hello Foo Baz
}

void describeFully(
  String firstName, {
  String? lastName = 'Bar',
}) {
  print('Hello $firstName $lastName');
}
