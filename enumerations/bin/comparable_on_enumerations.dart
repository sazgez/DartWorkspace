void main(List<String> args) {
  print(TeslaCars.values); // [modelY, modelS, model3, modelX]
  /// sort according to the value of the motor
  print([...TeslaCars.values]..sort()); // [model3, modelS, modelY, modelX]
}

enum TeslaCars implements Comparable<TeslaCars> {
  modelY(motor: 2.2),
  modelS(motor: 2.1),
  model3(motor: 1.8),
  modelX(motor: 2.4);

  final double motor;

  const TeslaCars({
    required this.motor,
  });

  @override
  int compareTo(TeslaCars other) => motor.compareTo(
        other.motor,
      );

  @override
  String toString() => name;
}
