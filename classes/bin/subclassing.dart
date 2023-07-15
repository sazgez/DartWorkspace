void main(List<String> args) {
  print(Vehicle(4)); // Vehicle with 4 wheels
  print(Car()); // Car with 4 wheels
  print(Bicycle()); // Bicycle with 2 wheels
}

class Vehicle {
  final int wheelCount;

  const Vehicle(this.wheelCount);

  @override
  String toString() => '$runtimeType with $wheelCount wheels';
}

class Car extends Vehicle {
  const Car() : super(4);
  // const Car(super.wheelCount);
}

class Bicycle extends Vehicle {
  const Bicycle() : super(2);
}
