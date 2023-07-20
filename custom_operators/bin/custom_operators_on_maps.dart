void main(List<String> args) {
  print({'name': 'John', 'age': 42} + {'address': '123 Main St'});
  // {name: John, age: 42, address: 123 Main St}

  print({'name': 'John', 'age': 42} - {'age': 42});
  // {name: John}

  print({'name': 'John', 'age': 42} * 2);
  // ({name: John, age: 42}, {name: John, age: 42})
}

extension MapOperations<K, V> on Map<K, V> {
  /// addition
  Map<K, V> operator +(Map<K, V> other) => {
        ...this,
        ...other,
      };

  /// subtraction
  Map<K, V> operator -(Map<K, V> other) {
    return {
      ...this
        ..removeWhere(
          (key, value) => other.containsKey(key) && other[key] == value,
        )
    };
  }

  // multiplication
  Iterable<Map<K, V>> operator *(int times) sync* {
    for (var i = 0; i < times; i++) {
      yield this;
    }
  }
}
