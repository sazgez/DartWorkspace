void main(List<String> args) {
  print(getFullName(null, null)); // Empty
  print(getFullName('Foo', null)); // Empty
  print(getFullName(null, 'Bar')); // Empty
  print(getFullName('Foo', 'Bar')); // Foo Bar
}

String getFullName(
  String? firstName,
  String? lastName,
) =>
    withAll(
      [firstName, lastName],
      (names) => names.join(' '),
    ) ??
    'Empty';

T? withAll<T>(
  List<T?> optionals,
  T Function(List<T>) callback,
) =>
    optionals.any((e) => e == null) ? null : callback(optionals.cast<T>());
