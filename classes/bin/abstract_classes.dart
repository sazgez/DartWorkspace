void main(List<String> args) {
  const car = Car();
  print(car.kind); // VehicleKind.car
  car.accelerate(); // VehicleKind.car is accelerating
  car.decelerate(); // VehicleKind.car is decelerating

  const motorcycle = Motorcycle();
  print(motorcycle.kind); // VehicleKind.motorcycle
  motorcycle.accelerate(); // Motorcycle is accelerating
  motorcycle.decelerate(); // Motorcycle is decelerating
}

enum VehicleKind {
  car,
  trcuk,
  motorcycle,
  bicycle,
}

abstract class Vehicle {
  final VehicleKind kind;

  const Vehicle({required this.kind});

  void accelerate() => print('$kind is accelerating');
  void decelerate() => print('$kind is decelerating');
}

/// inheritance
class Car extends Vehicle {
  const Car() : super(kind: VehicleKind.car);
}

/// abstraction
class Motorcycle implements Vehicle {
  const Motorcycle();

  @override
  void accelerate() => print('Motorcycle is accelerating');

  @override
  void decelerate() => print('Motorcycle is decelerating');

  @override
  VehicleKind get kind => VehicleKind.motorcycle;
}
