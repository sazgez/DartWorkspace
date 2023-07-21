import 'dart:math' show Random;

void main(List<String> args) {
  print(add.callWithRandomValues());
  print(subtract.callWithRandomValues());
}

int add(int a, int b) => a + b;
int subtract(int a, int b) => a - b;

typedef IntFunction = int Function(int, int);

extension on IntFunction {
  int callWithRandomValues() {
    final random1 = Random().nextInt(100);
    final random2 = Random().nextInt(100);
    print('Random values = $random1, $random2');
    return call(random1, random2);
  }
}
