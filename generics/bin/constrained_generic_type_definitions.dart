void main(List<String> args) {
  const momDad = {
    'mom': Person(),
    'dad': Person(),
  };
  const brotherSisterFish = {
    'brother': Person(),
    'sister': Person(),
    'fish': Fish(),
  };

  final allValues = [
    momDad,
    brotherSisterFish,
  ];

  describe(allValues);
}

typedef BreathingThings<T extends CanBreathe> = Map<String, T>;

void describe(Iterable<BreathingThings> values) {
  for (final map in values) {
    for (final keyValue in map.entries) {
      print('Will call breathe() on ${keyValue.key}');
      keyValue.value.breathe();
    }
  }
}

mixin CanBreathe {
  void breathe();
}

class Person with CanBreathe {
  const Person();

  @override
  void breathe() {
    print('Person is breathing...');
  }
}

class Fish with CanBreathe {
  const Fish();

  @override
  void breathe() {
    print('Fish is breathing...');
  }
}
