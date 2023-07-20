void main(List<String> args) {
  final meThisYear = Person(age: 30);
  print('This year = $meThisYear'); // This year = Person (age = 30)

  final meNextYear = meThisYear + 1;
  print('Next year = $meNextYear'); // Next year = Person (age = 31)

  print(
      'After five years = ${meThisYear + 5}'); // After five years = Person (age = 35)
}

class Person {
  final int age;

  Person({required this.age});

  @override
  String toString() => 'Person (age = $age)';

  Person operator +(int age) => Person(
        age: this.age + age,
      );
}
