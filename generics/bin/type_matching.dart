void main(List<String> args) {
  print(doTypesMatch(1, 2)); // true
  print(doTypesMatch(1, 2.2)); // false
  print(doTypesMatch(1, 'Foo')); // false
  print(doTypesMatch('Foo', 'Bar')); // true
}

// bool doTypesMatch(Object a, Object b) {
//   return a.runtimeType == b.runtimeType;
// }

bool doTypesMatch<L, R>(L a, R b) => L == R;
