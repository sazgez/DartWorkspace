late String name;
void main(List<String> args) {
  /// invalid code: name hasn't been initialized
  /// late variables have to be initialized before
  /// the usage as garantied in the beginning
  // print(name);

  name = 'Foo Bar';
  print(name);
}
