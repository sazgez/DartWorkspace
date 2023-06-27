void main(List<String> args) {
  final String? firstName = null;
  // final length = firstName?.length; // here, the ? mark is essential
  if (firstName == null) {
    print('firstName is null');
  } else {
    // inhere, the ? mark isn't essential because the firstName cannot be null in the else block
    final length = firstName.length;
    print(length);
  }
}
