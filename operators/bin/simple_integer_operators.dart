void main(List<String> args) {
  const age1 = 64;
  const age2 = 30;
  print(age1 + age2);
  print(age1 + age2 + 30);
  print(age1 - age2);
  print(age1 * age2);

  /// The result of every division operation will be double
  const divided = age1 / age2;
  print(divided);

  /// ~/ : Truncating division operator
  /// Returns the result of division as integer
  const intDividied = age1 ~/ age2;
  print(intDividied);
}
