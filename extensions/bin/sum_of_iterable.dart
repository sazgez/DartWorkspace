void main(List<String> args) {
  print([1, 2, 3].sum); // 6
  print([1.3, 3.6, 79.3].sum); // 84.2
}

extension SumOfIterable<T extends num> on Iterable<T> {
  T get sum => reduce((a, b) => a + b as T);
}
