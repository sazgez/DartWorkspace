void main(List<String> args) {
  print(add()); // 3
  print(add(1, 5)); // 6
  print(add(3)); // 5
  print(add(3, 8)); // 11
}

int add([
  int a = 1,
  int b = 2,
]) {
  return a + b;
}
