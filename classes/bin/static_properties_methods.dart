void main(List<String> args) {
  final foo = Person();

  /// invalid code:
  // foo.name = 'Foo';
  // print(foo.name);

  print(Person.name); // Someone
  Person.name = 'He';
  print(Person.name); // He
  Person.name = 'She';
  print(Person.name); // She

  print('--------------');

  print(Car.carsInstantiated); // 0
  Car(name: 'BMW');
  Car(name: 'Audi');
  print(Car.carsInstantiated); // 2
}

class Person {
  static String name = 'Someone';
}

class Car {
  static int _carInstantiated = 0;

  static int get carsInstantiated => _carInstantiated;
  static void _incrementCarsInstantiated() => _carInstantiated++;

  final String name;

  Car({
    required this.name,
  }) {
    _incrementCarsInstantiated();
  }
}
