void main(List<String> args) {
  AnimalType.cat
    ..jump()
    ..run();
  AnimalType.dog
    ..run()
    ..jump();
  AnimalType.rabbit
    ..jump()
    ..jump();
}

enum AnimalType {
  cat,
  dog,
  rabbit;

  void run() {
    print('$this is running...');
  }

  @override
  String toString() => name.toUpperCase();
}

extension Jump on AnimalType {
  void jump() {
    print('$this is jumping...');
  }
}
