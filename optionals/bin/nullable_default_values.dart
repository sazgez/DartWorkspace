void main(List<String> args) {
  String? lastname; // null

  /// ??= : compound assignment operator
  /// if the variable of the left hand side is null,
  /// the assign the value of the right hand side
  /// to the variable.
  lastname ??= 'Bar';
  print(lastname); // Bar

  /// invalid
  // int a;
  // print(a);
}
