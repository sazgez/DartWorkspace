void main(List<String> args) {
  /// invalid code: This expression has a type of 'void' so its value can't be used
  // print(doSomething());

  print(doNothing()); // null
}

void doSomething() {}

/// acts as dynamic
doNothing() {} // considered as : dynamic doNothing() {}
