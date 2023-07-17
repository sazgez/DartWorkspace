void main(List<String> args) {
  final whiskers = Cat(age: 2);
  print(whiskers.age); // 2
  whiskers.incrementAge();
  print(whiskers.age); // 3
}

mixin HasAge {
  abstract int age;
  void incrementAge() => age++;
}

class Cat with HasAge {
  @override
  int age = 0;

  /// in this case the constructor cannot be const,
  /// due to the incrementAge() function that is
  /// able to modify the age variable
  Cat({required this.age});
}
