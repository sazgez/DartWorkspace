void main(List<String> args) {
  final myCar = Car();
  myCar.speed = 20;
  print(myCar.speed);
  myCar.speed = 30;
  print(myCar.speed);

  myCar.drive(speed: 80);
  print(myCar.speed);

  myCar.stop();
  print(myCar.speed);
}

class Car {
  int speed = 0;

  void drive({
    required int speed,
  }) {
    this.speed = speed;
    print('Accelerating to $speed km/h');
  }

  void stop() {
    speed = 0;
    print('Stopping...');
    print('Stopped');
  }
}
