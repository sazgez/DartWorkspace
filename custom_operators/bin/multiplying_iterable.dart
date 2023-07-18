void main(List<String> args) {
  const names = ['Seth', 'Kathy', 'Ethan', 'Megan'];
  print(names * 2); // (Seth, Kathy, Ethan, Megan, Seth, Kathy, Ethan, Megan)
}

extension Times<T> on Iterable<T> {
  Iterable<T> operator *(int times) sync* {
    for (var i = 0; i < times; i++) {
      yield* this;
    }
  }
}
