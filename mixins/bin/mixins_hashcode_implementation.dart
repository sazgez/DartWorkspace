void main(List<String> args) {
  final cats = <Cat>{
    Cat(name: 'Kitty 1', age: 2),
    Cat(name: 'Kitty 2', age: 3),
    Cat(name: 'Kitty 1', age: 2),
  };

  cats.forEach(print);

  /// the first and the third have the same hashCode,
  /// therefore the third won't be appear in the set
  /// output:
  // Pet (Cat), name = Kitty 1, age = 2
  // Pet (Cat), name = Kitty 2, age = 3
}

enum PetType { cat, dog }

mixin Pet {
  String get name;
  int get age;
  PetType get type;

  @override
  String toString() => 'Pet ($runtimeType), name = $name, age = $age';

  @override
  int get hashCode => Object.hash(
        name,
        age,
        type,
      );

  @override
  bool operator ==(Object other) => other.hashCode == hashCode;
}

class Cat with Pet {
  @override
  final int age;

  @override
  final String name;

  @override
  final PetType type;

  Cat({
    required this.name,
    required this.age,
  }) : type = PetType.cat;
}
