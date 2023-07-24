void main(List<String> args) {
  try {
    print('Dog aged 11 is going to run...');
    Dog(isTired: false, age: 11).run();
  } catch (e) {
    print(e);
  }

  print('------------------------------');

  try {
    print('A tired dog is going to run...');
    Dog(isTired: true, age: 2).run();
  } catch (e) {
    print(e);
  }
  print('------------------------------');

  try {
    print('Dog aged 7 is going to run...');
    Dog(isTired: false, age: 7).run();
  } catch (e) {
    print(e);
  }
}

class Throws<T> {
  final List<T> exceptions;

  const Throws(this.exceptions);
}

class DogIsTooOldException implements Exception {
  const DogIsTooOldException();
}

class DogIsTiredException implements Exception {
  const DogIsTiredException();
}

class Animal {
  final int age;

  const Animal({required this.age});

  @Throws([UnimplementedError])
  void run() => throw UnimplementedError();
}

class Dog extends Animal {
  final bool isTired;

  const Dog({required this.isTired, required super.age});

  @Throws([DogIsTiredException, DogIsTooOldException])
  @override
  void run() {
    if (age > 10) {
      throw const DogIsTooOldException();
    } else if (isTired) {
      throw const DogIsTiredException();
    } else {
      print('Dog is running');
    }
  }
}
