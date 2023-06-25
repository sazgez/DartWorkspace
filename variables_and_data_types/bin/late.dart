void main(List<String> args) {
  late final myValue = 10;
  print(myValue);

  late final yourValue = getValue();
  print('We are here');
  print(yourValue);

  /// initial expectations:
  /// getValue called
  /// We are here
  /// 10

  /// what will happen:
  /// We are here
  /// getValue called
  /// 10

  /// reuse
  print(yourValue); // just 10 will be printed
}

int getValue() {
  print('getValue called');
  return 10;
}
