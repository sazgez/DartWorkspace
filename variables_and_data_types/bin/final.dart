void main(List<String> args) {
  final age = [1, 2, 3];
  print(age);

  age.removeAt(0);
  print(age);

  /// invalid code: final variable can only set once
  // age = [1, 3, 5, 7];
}
