void main(List<String> args) {
  String? getFullNameOptional() {
    return 'Foo Bar'; // could also return null
  }

  String? getFullName() {
    return 'Baz';
  }

  final fullName = getFullNameOptional() ?? getFullName();
  print(fullName); // Foo Bar

  final someName = getFullNameOptional();
  someName.describe(); // String: Foo Bar
}

extension Describe on Object? {
  void describe() {
    if (this == null) {
      print('This object is null');
    } else {
      print('$runtimeType: $this');
    }
  }
}
