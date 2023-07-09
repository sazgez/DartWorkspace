void main(List<String> args) {
  print(doSomething(45, 55)()); // 100

  final bar = doSomething(3, 7)();
  print(bar); // 10

  final foo = doSomething(10, 20);
  print(foo()); // 30
}

int Function() doSomething(
  int lhs,
  int rhs,
) =>
    () => lhs + rhs;
