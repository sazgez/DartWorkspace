const json = {
  'name': 'Foo Bar',
  'age': 20,
};

void main(List<String> ars) {
  final String? ageAsString = json.find(
    'age',
    (int age) => age.toString(),
  );
  print(ageAsString); // 20

  final String? helloName = json.find(
    'name',
    (String name) => 'Hello, $name!',
  )!;
  print(helloName); // Hello, Foo Bar!

  final String? address = json.find(
    'address',
    (String address) => 'You live at $address',
  );
  print(address); // null
}

extension Find<K, V, R> on Map<K, V> {
  R? find<T>(
    K key,
    R? Function(T value) cast,
  ) {
    final value = this[key];
    if (value != null && value is T) {
      return cast(value as T);
    } else {
      return null;
    }
  }
}
