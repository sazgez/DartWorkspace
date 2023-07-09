void main(List<String> args) {
  print(minus()); // 5
  print(minus(30, 20)); // 10
  print(minus(20, 30)); // -10

  print(performOperation(
    40,
    20,
    (a, b) => a ~/ b,
  )); // 2

  print(performOperation(
    4,
    35,
    (a, b) => a * b,
  )); // 140

  print(performOperation(
    10,
    20,
    add,
  )); // 30

  print(performOperation(
    10,
    20,
    minus,
  )); // -10
}

int performOperation(
  int a,
  int b,
  int Function(int, int) operation,
) =>
    operation(a, b);

int minus([int lhs = 10, int rhs = 5]) => lhs - rhs;
int add([int lhs = 10, int rhs = 5]) => lhs + rhs;
