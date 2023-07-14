void main(List<String> args) {
  final woof = Animal(
    name: 'Woof',
    type: AnimalType.dog,
  );

  if (woof.type == AnimalType.cat) {
    print('${woof.name} is a cat');
  } else {
    print('${woof.name} is not a cat');
  }

  switch (woof.type) {
    case AnimalType.rabbit:
      print('${woof.name} is a rabbit');
      break;
    case AnimalType.dog:
      print('${woof.name} is a dog');
      break;
    case AnimalType.cat:
      print('${woof.name} is a cat');
      break;
  }
}

enum AnimalType {
  rabbit,
  dog,
  cat,
}

class Animal {
  final String name;
  final AnimalType type;

  const Animal({
    required this.name,
    required this.type,
  });
}
