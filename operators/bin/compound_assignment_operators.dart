void main(List<String> args) {
  var myAge = 20;

  /// in the following assignments;
  /// the operations have been considered first,
  /// then the result has been assigned to the varibale,
  /// eventually the final value of the varibale has been printed.
  print(myAge = 30); // 30
  print(myAge ~/= 2); // 15
  print(myAge *= 2); // 30
  print(myAge += 4); // 34
  print(myAge -= 2); // 32
  print(myAge &= 2); // 0 (0010 0000 & 0000 0010 = 0000 0000)
  print(myAge |= 2); // 2 (0000 0000 | 0000 0010 = 0000 0010)
  print(myAge ^= 7); // 5 (0000 0010 ^ 0000 0111 = 0000 0101)
}
