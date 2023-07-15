void main(List<String> args) {
  print(Vehicle()); // Vehicle of type Vehicle
  print(Vehicle.car()); // Vehicle of type Car
  print(Vehicle.truck()); // Vehicle of type Truck
}

class Vehicle {
  const Vehicle();

  factory Vehicle.car() => Car();
  factory Vehicle.truck() => Truck();

  @override
  String toString() => 'Vehicle of type $runtimeType';
}

class Car extends Vehicle {
  const Car();
}

class Truck extends Vehicle {
  const Truck();
}
