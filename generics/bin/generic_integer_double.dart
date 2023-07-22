void main(List<String> args) {
  final double doubleValue = eitherIntDouble();
  print(doubleValue);
  final int intValue = eitherIntDouble();
  print(intValue);
  final String stringValue = eitherIntDouble();
  print(stringValue);
}

T eitherIntDouble<T extends num>() {
  switch (T) {
    case int:
      return 1 as T;
    case double:
      return 1.0 as T;
    default:
      throw Exception('Not supported');
  }
}
