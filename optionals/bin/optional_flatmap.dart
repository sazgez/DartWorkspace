void main(List<String> args) {
  String? firstName = 'Foo';
  String? lastName = 'Bar';

  final fullName = firstName.flatMap(
        (f) => lastName.flatMap((l) => '$f $l'),
      ) ??
      'Either first or last name or both are null';
  print(fullName); // Foo Bar
}

extension FlatMap<T> on T? {
  R? flatMap<R>(
    R? Function(T) callback,
  ) {
    final shadow = this;
    if (shadow == null) {
      return null;
    } else {
      return callback(shadow);
    }
  }
}
