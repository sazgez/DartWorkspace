void main(List<String> args) {
  print(add(1, null)); // 1
  print(add(null, 22)); // 22
  print(add(3, 4)); // 7
  print(add()); // 0
  print(add(null, null)); // 0
}

int? add([int? a, int? b]) {
  return a + b;
}

extension NullableAdd<T extends num> on T? {
  T? operator +(T? other) {
    final thisShadow = this;
    // if this != null && other == null, return this
    if (this != null && other == null) {
      return this as T;
    }
    // if this == null && other != null, return other
    else if (this == null && other != null) {
      return other;
    }
    // if this != null && other != null, return this + other
    else if (thisShadow != null && other != null) {
      return thisShadow + other as T;
    }
    // if this == null && other == null, return 0
    else {
      return 0 as T;
    }
  }
}
