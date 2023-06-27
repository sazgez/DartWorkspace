void main(List<String> args) {
  const age = 50;

  /// non of the following binary operators are modifying the value of age
  print(age + 20); // 70
  print(age - 20); // 30
  print(age * 20); // 1000
  print(age / 20); // 2.5
  print(age ~/ 20); // 2
  print(age % 20); // 10
  print(age == 20); // false
  print(age != 20); // true
  print(age > 20); // true
  print(age < 20); // false
  print(age > 20); // true
  print(age <= 20); // false

  /// bitwise infix operators
  /// AND --> 1 & 1 = 1 , 1 & 0 = 0 & 1 = 0 & 0 = 0
  /// example:
  ///   0011 0010   --> 50
  ///   0001 0100   --> 20
  /// ------------
  ///   0001 0000   --> 16
  print(age & 20); // 16

  /// OR --> 0 | 0 = 0 , 1 | 1 = 1 | 0 = 0 | 1 = 1
  /// example:
  ///   0011 0010   --> 50
  ///   0001 0100   --> 20
  /// ------------
  ///   0011 0110   --> 54
  print(age | 20); // 54

  /// XOR --> 1 ^ 1 = 0 ^ 0 = 0 , 1 ^ 0 = 0 ^ 1 = 1
  /// example:
  ///   0011 0010   --> 50
  ///   0001 0100   --> 20
  /// ------------
  ///   0010 0110   --> 38
  print(age ^ 20); // 38

  /// shifts
  /// example:
  ///   0011 0010           0011 0010
  ///   shift left by 1     shift right by 3
  ///   0110 0100           0000 0110
  print(age << 1); // left shift (age hasn't been modified)
  print(age); // 50
  print(age >> 3); // right shift (age hasn't been modified)
}
