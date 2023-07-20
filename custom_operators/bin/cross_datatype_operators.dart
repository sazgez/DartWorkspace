void main(List<String> args) {
  final mom = Person(name: 'Jane');
  final dad = Person(name: 'John');
  final son = Person(name: 'Jack');
  final daughter = Person(name: 'Jill');

  final whiskers = Pet(name: 'Whiskers');

  final family = mom + dad;
  print(family);
  // Family (members = [Person (name = Jane), Person (name = John)], pets = [])

  final withWhiskers = family & whiskers;
  print(withWhiskers);
  // Family (members = [Person (name = Jane), Person (name = John)], pets = [Pet (name = Whiskers)])

  final withSon = family + son;
  print(withSon);
  // Family (members = [Person (name = Jane), Person (name = John), Person (name = Jack)], pets = [])

  final withDaughter = family + daughter;
  print(withDaughter);
  // Family (members = [Person (name = Jane), Person (name = John), Person (name = Jill)], pets = [])

  final family2 = son + daughter & whiskers;
  final bigFamily = family ^ family2;
  print(bigFamily);
  // Family (members = [Person (name = Jane), Person (name = John), Person (name = Jack), Person (name = Jill)], pets = [Pet (name = Whiskers)])

  final sonWithWhiskers = son & whiskers;
  print(sonWithWhiskers);
  // Family (members = [Person (name = Jack)], pets = [Pet (name = Whiskers)])
}

class Person {
  final String name;

  const Person({required this.name});

  @override
  String toString() => 'Person (name = $name)';
}

class Pet {
  final String name;

  const Pet({required this.name});

  @override
  String toString() => 'Pet (name = $name)';
}

class Family {
  final List<Person> members;
  final List<Pet> pets;

  Family({
    required this.members,
    required this.pets,
  });

  @override
  String toString() => 'Family (members = $members, pets = $pets)';
}

extension on Person {
  Family operator +(Person other) => Family(
        members: [this, other],
        pets: [],
      );
  Family operator &(Pet other) => Family(
        members: [this],
        pets: [other],
      );
}

extension on Family {
  Family operator +(Person other) => Family(
        members: [
          ...members,
          other,
        ],
        pets: pets,
      );
}

extension on Family {
  Family operator &(Pet other) => Family(
        members: members,
        pets: [
          ...pets,
          other,
        ],
      );
}

extension on Family {
  Family operator ^(Family other) => Family(
        members: [
          ...members,
          ...other.members,
        ],
        pets: [
          ...pets,
          ...other.pets,
        ],
      );
}
