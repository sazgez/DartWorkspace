void main(List<String> args) {
  List<String?>? names = [];
  names.add('Foo');
  names.add(null);
  print(names); // [Foo, null]

  List<int?>? numbers;
  numbers?.add(3);
  numbers?.add(null);
  final first = numbers?.first;
  print(first ?? 'No first number found'); // No first number found
  print(numbers); // null

  List<int?>? ages = [];
  ages.add(33);
  ages.add(26);
  ages.add(null);
  print(ages); // [33, 26, null]
  ages = null;

  /// invalid
  // ages.add(17);
  // ages.add(null);
  print(ages); // null
}
