void main(List<String> args) {
  final bla = Has2Feet();

  /// invalid code:
  // bla.run();

  Human().run(); // Human is running
}

class Has2Feet {
  const Has2Feet();
}

/// the mixin is available on every inherited from the Has2Feet class
mixin CanRun on Has2Feet {
  void run() {
    print('$runtimeType is running');
  }
}

class Human extends Has2Feet with CanRun {
  const Human();
}

class HasNoFeet {
  const HasNoFeet();
}

/// adding 'with CanRun' in the definition will give an error,
/// due to the Fish class isn't inherited from the Has2Feet class
class Fish extends HasNoFeet {
  const Fish();
}
