void main(List<String> args) {
  String name = 'Foo';
  var address = '';

  address = name;

  /// invalid operation: A value type int can't be assigned to a variable of type String
  // const age = 20;
  // address = age;
  print(address);
}
