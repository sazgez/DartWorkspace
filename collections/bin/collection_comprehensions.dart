void main(List<String> args) {
  /// Problem: Extract the characters that aren't a, b, or c.
  final string = 'abracadabra';

  /// Solution 1:
  var excpetABC = '';
  for (final char in string.split('')) {
    if (char == 'a' || char == 'b' || char == 'c') {
    } else {
      if (!excpetABC.contains(char)) {
        excpetABC += char;
      }
    }
  }
  print(excpetABC); // rd

  /// Solution 2:
  /// Set Comprehension
  var allExceptABC = {
    for (final char in string.split('')) 'abc'.contains(char) ? null : char
  }
    ..removeAll({null})
    ..cast<String>();
  print(allExceptABC); // {r, d}

  print('------------------------');

  /// Problem: Extract all even/odd numbers
  final allNumbers = Iterable.generate(15);

  /// Solution with List Comprehension:
  final evenNumbers = [
    for (final number in allNumbers)
      if (number % 2 == 0) number
  ];
  final oddNumbers = [
    for (final number in allNumbers)
      if (number % 2 != 0) number
  ];

  /// Solution with Function:
  final evenNumbersFunctional = allNumbers.where(
    (number) => number % 2 == 0,
  );
  final oddNumbersFunctional = allNumbers.where(
    (number) => number % 2 != 0,
  );

  print(allNumbers); // (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14)
  print(evenNumbers); // [0, 2, 4, 6, 8, 10, 12, 14]
  print(oddNumbers); // [1, 3, 5, 7, 9, 11, 13]
  print(evenNumbersFunctional); // (0, 2, 4, 6, 8, 10, 12, 14)
  print(oddNumbersFunctional); // (1, 3, 5, 7, 9, 11, 13)

  print('------------------------');

  /// Problem: Create a map with so that,
  /// the keys of the map should be the names instances,
  /// whereas the values should be the length of the instances.

  final names = [
    'John Doe',
    'James Smith',
    'Alice Jones',
  ];

  /// Solution with Map Comprehension
  final namesAndLengths = {
    for (final name in names) name: name.length,
  };

  print(namesAndLengths); // {John Doe: 8, James Smith: 11, Alice Jones: 11}
}
