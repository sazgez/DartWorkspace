void main(List<String> args) {
  print('late fullName is being initialized');
  late final fullName = getFullName();
  final resolvedFullName = fullName;
  print('resolvedFullName = $resolvedFullName');

  /// output:
  // late fullName is being initialized
  // getFullName() is called
  // resolvedFullName = John Doe
}

String getFullName() {
  print('getFullName() is called');
  return 'John Doe';
}
