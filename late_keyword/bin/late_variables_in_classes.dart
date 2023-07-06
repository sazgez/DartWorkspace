void main(List<String> args) {
  final person = Person();
  print(person.age);
  print(person.description);

  /// output:
  // Constructor is called
  // 18
  // Function "heavyFunctionOfCalculation" is called
  // Foo Bar
}

class Person {
  late String description = heavyCalculationOfDescription();
  final int age;

  Person({this.age = 18}) {
    print('Constructor is called');
  }

  String heavyCalculationOfDescription() {
    print('Function "heavyFunctionOfCalculation" is called');
    return 'Foo Bar';
  }
}
