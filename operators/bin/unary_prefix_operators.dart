void main(List<String> args) {
  var age = 30;
  print(--age); // 29 (age has been also mutated)
  print(++age); // 30 (age has been also mutated)

  bool value = true;
  print(!value); // false (value hasn't been mutated, only the result itself)

  /// ~ : unary bitwise completement prefix operator
  /// example:
  /// (0000 0000) (0000 0000) (0000 0000) (0000 0001)
  /// (1111 1111) (1111 1111) (1111 1111) (1111 1110)
  print(~1);

  /// - : negate operator
  print(
      -age); // -30 (age hasn't been mutated, only the result has been negated)
  print(age); // 30
  print(-(-age)); // 30
}
